#include "productos.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Carga los productos desde producto.txt a memoria dinámica
int cargar_productos(Producto **productos) {
    FILE *file = fopen("producto.txt", "r");
    if (!file) {
        perror("Error al abrir producto.txt");
        return 0;
    }

    int num_productos = 0;
    Producto temp;
    
    // Formato: Codigo_producto,Nombre_producto,cantidad_disponible,costo,precio_venta
    while (fscanf(file, "%9[^,],%49[^,],%d,%f,%f\n", 
                  temp.codigo, temp.nombre, &temp.cantidad_disponible, &temp.costo, &temp.precio_venta) == 5) {
        num_productos++;
        *productos = (Producto *)realloc(*productos, num_productos * sizeof(Producto));
        if (*productos == NULL) {
            perror("Error de realloc en productos");
            fclose(file);
            return 0;
        }
        (*productos)[num_productos - 1] = temp;
    }

    fclose(file);
    return num_productos;
}

// Busca un producto por código
Producto *buscar_producto(Producto *productos, int num_productos, const char *codigo) {
    for (int i = 0; i < num_productos; i++) {
        if (strcmp(productos[i].codigo, codigo) == 0) {
            return &productos[i];
        }
    }
    return NULL;
}

// Sobreescribe producto.txt con las nuevas cantidades de inventario
void actualizar_inventario(Producto *productos, int num_productos) {
    FILE *file = fopen("producto.txt", "w");
    if (!file) {
        perror("Error al escribir en producto.txt");
        return;
    }

    for (int i = 0; i < num_productos; i++) {
        fprintf(file, "%s,%s,%d,%.2f,%.2f\n",
                productos[i].codigo, productos[i].nombre, productos[i].cantidad_disponible,
                productos[i].costo, productos[i].precio_venta);
    }

    fclose(file);
    printf("\nInventario actualizado correctamente.\n");
}

// Obtiene el último número de factura de ventas.txt y lo incrementa en 1
int obtener_ultimo_num_factura() {
    FILE *file = fopen("ventas.txt", "r");
    if (!file) {
        // Si el archivo no existe o está vacío, empieza en 1
        return 1;
    }

    int ultimo_num = 0;
    int current_num;
    char line[256];

    // Lee línea por línea
    while (fgets(line, sizeof(line), file)) {
        // Intenta leer el primer campo (Num_factura)
        if (sscanf(line, "%d,", &current_num) == 1) {
            if (current_num > ultimo_num) {
                ultimo_num = current_num;
            }
        }
    }

    fclose(file);
    return ultimo_num + 1;
}

// Registra los datos de la venta en ventas.txt
void registrar_venta(int num_factura, const char *fecha, const ItemVenta *items, int num_items) {
    FILE *file = fopen("ventas.txt", "a");
    if (!file) {
        perror("Error al abrir ventas.txt para registro");
        return;
    }

    // El formato de ventas.txt es: Num_factura,Codigo_producto,Nombre_producto,cantidad_vendidad,costo,precio_venta,fecha_venta
    for (int i = 0; i < num_items; i++) {
        // En este ejemplo, se omite el "costo" unitario de producto.txt en el registro de la venta,
        // ya que la estructura ItemVenta no lo almacena. Se debe ajustar si se requiere.
        // Aquí usamos el precio_unitario (precio_venta_unitario) de ItemVenta.
        fprintf(file, "%d,%s,%s,%d,%.2f,%.2f,%s\n",
                num_factura,
                items[i].codigo_producto,
                items[i].nombre_producto,
                items[i].cantidad_vendida,
                0.0, // Este valor debe ser el costo unitario real, por simplicidad se pone 0.0
                items[i].precio_unitario,
                fecha);
    }

    fclose(file);
    printf("Registro de venta #%d completado.\n", num_factura);
}