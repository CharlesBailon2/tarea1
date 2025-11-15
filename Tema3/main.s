	.file	"main.c"
	.section .rdata,"dr"
LC0:
	.ascii "%Y-%m-%d\0"
	.text
	.globl	_obtener_fecha_actual
	.def	_obtener_fecha_actual;	.scl	2;	.type	32;	.endef
_obtener_fecha_actual:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, (%esp)
	call	_time
	movl	%eax, -16(%ebp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_localtime
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$LC0, 8(%esp)
	movl	$11, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strftime
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC2:
	.ascii "\12--- REGISTRO DE VENTAS ---\0"
	.align 4
LC3:
	.ascii "Fecha: %s | Numero de Factura: %d\12\0"
LC4:
	.ascii "--------------------------\0"
	.align 4
LC5:
	.ascii "Ingrese el codigo del Producto (o 'f' para finalizar): \0"
LC6:
	.ascii "%9s\0"
LC7:
	.ascii "f\0"
LC8:
	.ascii "F\0"
	.align 4
LC9:
	.ascii "ERROR: Producto no encontrado.\0"
	.align 4
LC10:
	.ascii "Ingrese la cantidad a vender (Disponible: %d): \0"
LC11:
	.ascii "%d\0"
	.align 4
LC12:
	.ascii "ERROR: Cantidad invalida o excede el stock disponible (%d).\12\0"
	.align 4
LC13:
	.ascii "Error de realloc en items de venta\0"
	.align 4
LC14:
	.ascii "Producto agregado. \302\277Desea registrar otro producto? (s/n): \0"
LC15:
	.ascii " %c\0"
	.align 4
LC16:
	.ascii "\12--- RESUMEN DE LA VENTA #%d ---\12\0"
LC17:
	.ascii "SUBTOTAL\0"
LC18:
	.ascii "PRECIO U.\0"
LC19:
	.ascii "CANT.\0"
LC20:
	.ascii "PRODUCTO\0"
LC21:
	.ascii "C\303\223DIGO\0"
	.align 4
LC22:
	.ascii "%-10s %-30s %-10s %-10s %-10s\12\0"
	.align 4
LC23:
	.ascii "-------------------------------------------------------------------------\0"
	.align 4
LC24:
	.ascii "%-10s %-30s %-10d %-10.2f %-10.2f\12\0"
LC25:
	.ascii "TOTAL VENTA: %.2f\12\0"
LC26:
	.ascii "\12\302\277Confirma la venta? (s/n): \0"
	.align 4
LC27:
	.ascii "Venta cancelada. Revirtiendo cambios de inventario.\0"
	.align 4
LC28:
	.ascii "No se registraron productos en la venta.\0"
	.text
	.globl	_menu_ventas
	.def	_menu_ventas;	.scl	2;	.type	32;	.endef
_menu_ventas:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$116, %esp
	.cfi_offset 3, -12
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	fldz
	fstps	-20(%ebp)
	movb	$115, -33(%ebp)
	movl	$LC2, (%esp)
	call	_puts
	call	_obtener_ultimo_num_factura
	movl	%eax, -28(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtener_fecha_actual
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$LC4, (%esp)
	call	_puts
	jmp	L3
L10:
	movl	$LC5, (%esp)
	call	_printf
	leal	-43(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_scanf
	movl	$LC7, 4(%esp)
	leal	-43(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L4
	movl	$LC8, 4(%esp)
	leal	-43(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L4
	leal	-43(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_buscar_producto
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	L5
	movl	$LC9, (%esp)
	call	_puts
	jmp	L3
L5:
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_printf
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_scanf
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	jle	L6
	movl	-32(%ebp), %eax
	movl	60(%eax), %edx
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	jge	L7
L6:
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	jmp	L3
L7:
	addl	$1, -16(%ebp)
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L8
	movl	$LC13, (%esp)
	call	_perror
	jmp	L2
L8:
	movl	-32(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	-72(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-32(%ebp), %eax
	leal	10(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	-72(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	addl	$10, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	-72(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 60(%edx)
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	-72(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	flds	68(%eax)
	fstps	64(%edx)
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	-72(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, -76(%ebp)
	fildl	-76(%ebp)
	movl	-32(%ebp), %eax
	flds	68(%eax)
	fmulp	%st, %st(1)
	fstps	68(%edx)
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	-72(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	flds	68(%eax)
	flds	-20(%ebp)
	faddp	%st, %st(1)
	fstps	-20(%ebp)
	movl	-32(%ebp), %eax
	movl	60(%eax), %edx
	movl	-48(%ebp), %eax
	subl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 60(%eax)
	movl	$LC14, (%esp)
	call	_printf
	leal	-33(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_scanf
L3:
	movzbl	-33(%ebp), %eax
	cmpb	$115, %al
	je	L10
	movzbl	-33(%ebp), %eax
	cmpb	$83, %al
	je	L10
L4:
	cmpl	$0, -16(%ebp)
	jle	L11
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_printf
	movl	$LC17, 20(%esp)
	movl	$LC18, 16(%esp)
	movl	$LC19, 12(%esp)
	movl	$LC20, 8(%esp)
	movl	$LC21, 4(%esp)
	movl	$LC22, (%esp)
	call	_printf
	movl	$LC23, (%esp)
	call	_puts
	movl	$0, -24(%ebp)
	jmp	L12
L13:
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	flds	68(%eax)
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	flds	64(%eax)
	fxch	%st(1)
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	60(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	leal	10(%eax), %ebx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	fstpl	24(%esp)
	fstpl	16(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC24, (%esp)
	call	_printf
	addl	$1, -24(%ebp)
L12:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L13
	movl	$LC23, (%esp)
	call	_puts
	flds	-20(%ebp)
	fstpl	4(%esp)
	movl	$LC25, (%esp)
	call	_printf
	movl	$LC26, (%esp)
	call	_printf
	leal	-49(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_scanf
	movzbl	-49(%ebp), %eax
	cmpb	$115, %al
	je	L14
	movzbl	-49(%ebp), %eax
	cmpb	$83, %al
	jne	L15
L14:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_actualizar_inventario
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_registrar_venta
	jmp	L17
L15:
	movl	$LC27, (%esp)
	call	_puts
	jmp	L17
L11:
	movl	$LC28, (%esp)
	call	_puts
L17:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L2:
	addl	$116, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC30:
	.ascii "ERROR: No se pudieron cargar los datos iniciales. Cerrando sistema.\0"
LC31:
	.ascii "\12--- INICIO DE SESION ---\0"
LC32:
	.ascii "Usuario: \0"
LC33:
	.ascii "%19s\0"
LC34:
	.ascii "Clave: \0"
LC35:
	.ascii "\12\302\241Inicio de sesion exitoso!\0"
	.align 4
LC36:
	.ascii "Error: Usuario o clave incorrectos. Le quedan %d intentos.\12\0"
	.align 4
LC37:
	.ascii "\12Ha superado el numero de intentos. Cerrando el sistema.\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$80, %esp
	call	___main
	movl	$0, 60(%esp)
	leal	60(%esp), %eax
	movl	%eax, (%esp)
	call	_cargar_vendedores
	movl	%eax, 72(%esp)
	movl	$0, 56(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_cargar_productos
	movl	%eax, 68(%esp)
	cmpl	$0, 72(%esp)
	je	L20
	cmpl	$0, 68(%esp)
	jne	L21
L20:
	movl	$LC30, (%esp)
	call	_puts
	movl	60(%esp), %eax
	testl	%eax, %eax
	je	L22
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	_free
L22:
	movl	56(%esp), %eax
	testl	%eax, %eax
	je	L23
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	_free
L23:
	movl	$1, %eax
	jmp	L30
L21:
	movl	$0, 76(%esp)
	movl	$3, 64(%esp)
	jmp	L25
L28:
	movl	$LC31, (%esp)
	call	_puts
	movl	$LC32, (%esp)
	call	_printf
	leal	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC33, (%esp)
	call	_scanf
	movl	$LC34, (%esp)
	call	_printf
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC33, (%esp)
	call	_scanf
	movl	60(%esp), %eax
	leal	16(%esp), %edx
	movl	%edx, 12(%esp)
	leal	36(%esp), %edx
	movl	%edx, 8(%esp)
	movl	72(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_autenticar_usuario
	testb	%al, %al
	je	L26
	movl	$LC35, (%esp)
	call	_puts
	movl	56(%esp), %eax
	movl	68(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_menu_ventas
	jmp	L27
L26:
	addl	$1, 76(%esp)
	movl	64(%esp), %eax
	subl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC36, (%esp)
	call	_printf
L25:
	movl	76(%esp), %eax
	cmpl	64(%esp), %eax
	jl	L28
L27:
	movl	76(%esp), %eax
	cmpl	64(%esp), %eax
	jne	L29
	movl	$LC37, (%esp)
	call	_puts
L29:
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
L30:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_localtime;	.scl	2;	.type	32;	.endef
	.def	_strftime;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_obtener_ultimo_num_factura;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_buscar_producto;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_actualizar_inventario;	.scl	2;	.type	32;	.endef
	.def	_registrar_venta;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_cargar_vendedores;	.scl	2;	.type	32;	.endef
	.def	_cargar_productos;	.scl	2;	.type	32;	.endef
	.def	_autenticar_usuario;	.scl	2;	.type	32;	.endef
