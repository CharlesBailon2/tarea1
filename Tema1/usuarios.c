#include "usuarios.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Carga los datos de vendedores.txt a memoria dinámica
int cargar_vendedores(Vendedor **vendedores) {
    FILE *file = fopen("vendedores.txt", "r");
    if (!file) {
        perror("Error al abrir vendedores.txt");
        return 0;
    }

    int num_vendedores = 0;
    Vendedor temp;

    while (fscanf(file, "%19[^,],%19[^,],%49[^\n]\n", temp.usuario, temp.clave, temp.nombre) == 3) {
        num_vendedores++;
        *vendedores = (Vendedor *)realloc(*vendedores, num_vendedores * sizeof(Vendedor));
        if (*vendedores == NULL) {
            perror("Error de realloc en vendedores");
            fclose(file);
            return 0;
        }
        (*vendedores)[num_vendedores - 1] = temp;
    }

    fclose(file);
    return num_vendedores;
}

// Verifica si el usuario y clave son correctos
bool autenticar_usuario(const Vendedor *vendedores, int num_vendedores, const char *usuario, const char *clave) {
    for (int i = 0; i < num_vendedores; i++) {
        if (strcmp(vendedores[i].usuario, usuario) == 0 && strcmp(vendedores[i].clave, clave) == 0) {
            return true;
        }
    }
    return false;
}