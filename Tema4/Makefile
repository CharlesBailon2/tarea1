#Makefile 

# Compilador y Opciones
CC = gcc
CFLAGS = -Wall -g -std=c99 # -Wall: Advertencias; -g: Debugging; -std=c99: Estándar C
TARGET = tienda
OBJS = main.o usuarios.o productos.o

# 1. Compila el ejecutable 'tienda'
# Depende de todos los archivos objeto.
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# 2. Reglas de Dependencia (para generar los .o)

main.o: main.c usuarios.h productos.h
	$(CC) $(CFLAGS) -c main.c

usuarios.o: usuarios.c usuarios.h
	$(CC) $(CFLAGS) -c usuarios.c

productos.o: productos.c productos.h
	$(CC) $(CFLAGS) -c productos.c

# 3. Regla para Generar Archivos Ensamblador (*.s) 
# Usa la opción -S para generar el código ensamblador sin enlazar.
%.s: %.c
	$(CC) $(CFLAGS) -S $<

# 4. Regla para Usar objdump                            
# Desmonta los archivos objeto (.o) en archivos .s.
objdump_s: $(OBJS)
	objdump -d main.o > main_dump.s
	objdump -d usuarios.o > usuarios_dump.s
	objdump -d productos.o > productos_dump.s
	@echo "Archivos objdump_s generados: main_dump.s, usuarios_dump.s, productos_dump.s"

# 5. Regla para limpiar archivos generados
clean:
	rm -f $(TARGET) $(OBJS) *.s *~ main_dump.s usuarios_dump.s productos_dump.s
	@echo "Archivos temporales y binarios eliminados."

# Declara objetivos que no son archivos reales (limpieza, etc.)
.PHONY: all clean objdump_s