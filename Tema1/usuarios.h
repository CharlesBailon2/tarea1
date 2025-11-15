#ifndef USUARIOS_H
#define USUARIOS_H

#include <stdbool.h>

// 1. Estructura de Vendedor (Usuario)
typedef struct {
    char usuario[20];
    char clave[20];
    char nombre[50];
} Vendedor;

// 2. Prototipo de funciones
int cargar_vendedores(Vendedor **vendedores);
bool autenticar_usuario(const Vendedor *vendedores, int num_vendedores, const char *usuario, const char *clave);

#endif