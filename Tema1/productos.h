#ifndef PRODUCTOS_H
#define PRODUCTOS_H

#include <stdbool.h>
#include <time.h> // Necesario para la fecha de venta en Main.c

// 1. Estructura de Producto (Inventario)
typedef struct {
    char codigo[10];
    char nombre[50];
    int cantidad_disponible;
    float costo;
    float precio_venta;
} Producto;

// 2. Estructura para el detalle de la venta (transacción)
typedef struct {
    char codigo_producto[10];
    char nombre_producto[50];
    int cantidad_vendida;
    float precio_unitario;
    float subtotal;
} ItemVenta;

// 3. Prototipo de funciones
int cargar_productos(Producto **productos);
Producto *buscar_producto(Producto *productos, int num_productos, const char *codigo);
void actualizar_inventario(Producto *productos, int num_productos);
int obtener_ultimo_num_factura();
void registrar_venta(int num_factura, const char *fecha, const ItemVenta *items, int num_items);

#endif