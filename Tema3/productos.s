	.file	"productos.c"
	.section .rdata,"dr"
LC0:
	.ascii "r\0"
LC1:
	.ascii "producto.txt\0"
LC2:
	.ascii "Error al abrir producto.txt\0"
LC3:
	.ascii "Error de realloc en productos\0"
LC4:
	.ascii "%9[^,],%49[^,],%d,%f,%f\12\0"
	.text
	.globl	_cargar_productos
	.def	_cargar_productos;	.scl	2;	.type	32;	.endef
_cargar_productos:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_fopen
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	L2
	movl	$LC2, (%esp)
	call	_perror
	movl	$0, %eax
	jmp	L7
L2:
	movl	$0, -28(%ebp)
	jmp	L4
L6:
	addl	$1, -28(%ebp)
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L5
	movl	$LC3, (%esp)
	call	_perror
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, %eax
	jmp	L7
L5:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	$72, %eax
	addl	%ecx, %eax
	movl	%eax, %ebx
	leal	-104(%ebp), %eax
	movl	$18, %edx
	movl	%ebx, %edi
	movl	%eax, %esi
	movl	%edx, %ecx
	rep movsl
L4:
	leal	-104(%ebp), %eax
	addl	$68, %eax
	movl	%eax, 24(%esp)
	leal	-104(%ebp), %eax
	addl	$64, %eax
	movl	%eax, 20(%esp)
	leal	-104(%ebp), %eax
	addl	$60, %eax
	movl	%eax, 16(%esp)
	leal	-104(%ebp), %eax
	addl	$10, %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_fscanf
	cmpl	$5, %eax
	je	L6
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-28(%ebp), %eax
L7:
	addl	$124, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_buscar_producto
	.def	_buscar_producto;	.scl	2;	.type	32;	.endef
_buscar_producto:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L9
L12:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L10
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	jmp	L11
L10:
	addl	$1, -12(%ebp)
L9:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L12
	movl	$0, %eax
L11:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
LC5:
	.ascii "w\0"
	.align 4
LC6:
	.ascii "Error al escribir en producto.txt\0"
LC7:
	.ascii "%s,%s,%d,%.2f,%.2f\12\0"
	.align 4
LC8:
	.ascii "\12Inventario actualizado correctamente.\0"
	.text
	.globl	_actualizar_inventario
	.def	_actualizar_inventario;	.scl	2;	.type	32;	.endef
_actualizar_inventario:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.cfi_offset 3, -12
	movl	$LC5, 4(%esp)
	movl	$LC1, (%esp)
	call	_fopen
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L14
	movl	$LC6, (%esp)
	call	_perror
	jmp	L13
L14:
	movl	$0, -12(%ebp)
	jmp	L16
L17:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	flds	68(%eax)
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	flds	64(%eax)
	fxch	%st(1)
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	60(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	leal	10(%eax), %ebx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	fstpl	28(%esp)
	fstpl	20(%esp)
	movl	%ecx, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	addl	$1, -12(%ebp)
L16:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L17
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$LC8, (%esp)
	call	_puts
L13:
	addl	$68, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.section .rdata,"dr"
LC10:
	.ascii "ventas.txt\0"
LC11:
	.ascii "%d,\0"
	.text
	.globl	_obtener_ultimo_num_factura
	.def	_obtener_ultimo_num_factura;	.scl	2;	.type	32;	.endef
_obtener_ultimo_num_factura:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$296, %esp
	movl	$LC0, 4(%esp)
	movl	$LC10, (%esp)
	call	_fopen
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L19
	movl	$1, %eax
	jmp	L23
L19:
	movl	$0, -12(%ebp)
	jmp	L21
L22:
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC11, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	_sscanf
	cmpl	$1, %eax
	jne	L21
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jle	L21
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
L21:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	_fgets
	testl	%eax, %eax
	jne	L22
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-12(%ebp), %eax
	addl	$1, %eax
L23:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.section .rdata,"dr"
LC12:
	.ascii "a\0"
	.align 4
LC13:
	.ascii "Error al abrir ventas.txt para registro\0"
LC15:
	.ascii "%d,%s,%s,%d,%.2f,%.2f,%s\12\0"
	.align 4
LC16:
	.ascii "Registro de venta #%d completado.\12\0"
	.text
	.globl	_registrar_venta
	.def	_registrar_venta;	.scl	2;	.type	32;	.endef
_registrar_venta:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.cfi_offset 3, -12
	movl	$LC12, 4(%esp)
	movl	$LC10, (%esp)
	call	_fopen
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L25
	movl	$LC13, (%esp)
	call	_perror
	jmp	L24
L25:
	movl	$0, -12(%ebp)
	jmp	L27
L28:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	flds	64(%eax)
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	60(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	leal	10(%eax), %ebx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 40(%esp)
	fstpl	32(%esp)
	fldz
	fstpl	24(%esp)
	movl	%ecx, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	addl	$1, -12(%ebp)
L27:
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	L28
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_printf
L24:
	addl	$68, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
