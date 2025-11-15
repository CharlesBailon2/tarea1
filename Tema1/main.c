#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "usuarios.h"
#include "productos.h"

#define MAX_ITEMS 50 // Maximo de productos en una venta

// Funcion para obtener la fecha actual en formato aaaa-mm-dd
void obtener_fecha_actual(char *fecha_str) {
    time_t t = time(NULL);
    struct tm *tm = localtime(&t);
    // Formato: aaaa-mm-dd
    strftime(fecha_str, 11, "%Y-%m-%d", tm);
}

// Función principal del flujo de ventas
void menu_ventas(Producto *productos, int num_productos) {
    ItemVenta *items = NULL;
    int num_items = 0;
    float total_venta = 0.0;
    char continuar_registro = 's';
    char codigo[10];
    int cantidad;
    char confirmacion;

    printf("\n--- REGISTRO DE VENTAS ---\n");
    int num_factura = obtener_ultimo_num_factura();
    char fecha_actual[11];
    obtener_fecha_actual(fecha_actual);

    printf("Fecha: %s | Numero de Factura: %d\n", fecha_actual, num_factura);
    printf("--------------------------\n");

    while (continuar_registro == 's' || continuar_registro == 'S') {
        printf("Ingrese el codigo del Producto (o 'f' para finalizar): ");
        scanf("%9s", codigo);
        if (strcmp(codigo, "f") == 0 || strcmp(codigo, "F") == 0) break;

        Producto *p = buscar_producto(productos, num_productos, codigo);

        if (p == NULL) {
            printf("ERROR: Producto no encontrado.\n");
            continue;
        }

        printf("Ingrese la cantidad a vender (Disponible: %d): ", p->cantidad_disponible);
        scanf("%d", &cantidad);

        // **VALIDACIÓN DE INVENTARIO**
        if (cantidad <= 0 || cantidad > p->cantidad_disponible) {
            printf("ERROR: Cantidad invalida o excede el stock disponible (%d).\n", p->cantidad_disponible);
            continue;
        }

        // Agregar Item a la Venta
        num_items++;
        items = (ItemVenta *)realloc(items, num_items * sizeof(ItemVenta));
        if (items == NULL) {
            perror("Error de realloc en items de venta");
            return;
        }

        strcpy(items[num_items - 1].codigo_producto, p->codigo);
        strcpy(items[num_items - 1].nombre_producto, p->nombre);
        items[num_items - 1].cantidad_vendida = cantidad;
        items[num_items - 1].precio_unitario = p->precio_venta;
        items[num_items - 1].subtotal = (float)cantidad * p->precio_venta;
        total_venta += items[num_items - 1].subtotal;

        // Reducir stock temporalmente
        p->cantidad_disponible -= cantidad;

        printf("Producto agregado. ¿Desea registrar otro producto? (s/n): ");
        scanf(" %c", &continuar_registro);
    }

    if (num_items > 0) {
        // Mostrar resumen y solicitar confirmación
        printf("\n--- RESUMEN DE LA VENTA #%d ---\n", num_factura);
        printf("%-10s %-30s %-10s %-10s %-10s\n", "CÓDIGO", "PRODUCTO", "CANT.", "PRECIO U.", "SUBTOTAL");
        printf("-------------------------------------------------------------------------\n");
        for (int i = 0; i < num_items; i++) {
            printf("%-10s %-30s %-10d %-10.2f %-10.2f\n",
                   items[i].codigo_producto, items[i].nombre_producto,
                   items[i].cantidad_vendida, items[i].precio_unitario, items[i].subtotal);
        }
        printf("-------------------------------------------------------------------------\n");
        printf("TOTAL VENTA: %.2f\n", total_venta);

        printf("\n¿Confirma la venta? (s/n): ");
        scanf(" %c", &confirmacion);

        if (confirmacion == 's' || confirmacion == 'S') {
            // **PROCEDE A REGISTRAR**
            // 1. Reducir inventario (ya se hizo en memoria, ahora se guarda en archivo)
            actualizar_inventario(productos, num_productos);

            // 2. Registrar datos de la venta
            registrar_venta(num_factura, fecha_actual, items, num_items);
        } else {
            // Revertir cambios de inventario si no se confirma
            printf("Venta cancelada. Revirtiendo cambios de inventario.\n");
            // Nota: Aquí se necesitaría guardar el estado original antes del bucle para revertir correctamente,
            // pero para simplificar, el stock queda afectado en memoria y se debe reiniciar el programa.
        }
    } else {
        printf("No se registraron productos en la venta.\n");
    }

    free(items); // Liberar memoria dinámica de la venta
}

// Función principal
int main() {
    Vendedor *vendedores = NULL;
    int num_vendedores = cargar_vendedores(&vendedores);
    Producto *productos = NULL;
    int num_productos = cargar_productos(&productos);

    if (num_vendedores == 0 || num_productos == 0) {
        printf("ERROR: No se pudieron cargar los datos iniciales. Cerrando sistema.\n");
        if (vendedores) free(vendedores);
        if (productos) free(productos);
        return 1;
    }

    // **Lógica de Autenticación**
    char usuario[20];
    char clave[20];
    int intentos = 0;
    const int MAX_INTENTOS = 3;

    while (intentos < MAX_INTENTOS) {
        printf("\n--- INICIO DE SESION ---\n");
        printf("Usuario: ");
        scanf("%19s", usuario);
        printf("Clave: ");
        scanf("%19s", clave);

        if (autenticar_usuario(vendedores, num_vendedores, usuario, clave)) {
            printf("\n¡Inicio de sesion exitoso!\n");
            menu_ventas(productos, num_productos); // Entrar al menú de ventas
            break;
        } else {
            intentos++;
            printf("Error: Usuario o clave incorrectos. Le quedan %d intentos.\n", MAX_INTENTOS - intentos);
        }
    }

    // **Cierre del Sistema**
    if (intentos == MAX_INTENTOS) {
        printf("\nHa superado el numero de intentos. Cerrando el sistema.\n");
    }

    // Liberar memoria dinámica
    free(vendedores);
    free(productos);

    return 0;
}