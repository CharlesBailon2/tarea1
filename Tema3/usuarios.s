	.file	"usuarios.c"
	.section .rdata,"dr"
LC0:
	.ascii "r\0"
LC1:
	.ascii "vendedores.txt\0"
LC2:
	.ascii "Error al abrir vendedores.txt\0"
	.align 4
LC3:
	.ascii "Error de realloc en vendedores\0"
LC4:
	.ascii "%19[^,],%19[^,],%49[^\12]\12\0"
	.text
	.globl	_cargar_vendedores
	.def	_cargar_vendedores;	.scl	2;	.type	32;	.endef
_cargar_vendedores:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
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
	movl	-28(%ebp), %eax
	imull	$90, %eax, %edx
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
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	imull	$90, %edx, %edx
	subl	$90, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	leal	-122(%ebp), %eax
	movl	$90, %ecx
	movl	(%eax), %ebx
	movl	%ebx, (%edx)
	movl	-4(%eax,%ecx), %ebx
	movl	%ebx, -4(%edx,%ecx)
	leal	4(%edx), %ebx
	andl	$-4, %ebx
	subl	%ebx, %edx
	subl	%edx, %eax
	addl	%edx, %ecx
	andl	$-4, %ecx
	shrl	$2, %ecx
	movl	%ecx, %edx
	movl	%ebx, %edi
	movl	%eax, %esi
	movl	%edx, %ecx
	rep movsl
L4:
	leal	-122(%ebp), %eax
	addl	$40, %eax
	movl	%eax, 16(%esp)
	leal	-122(%ebp), %eax
	addl	$20, %eax
	movl	%eax, 12(%esp)
	leal	-122(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_fscanf
	cmpl	$3, %eax
	je	L6
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-28(%ebp), %eax
L7:
	addl	$156, %esp
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
LFE17:
	.globl	_autenticar_usuario
	.def	_autenticar_usuario;	.scl	2;	.type	32;	.endef
_autenticar_usuario:
LFB18:
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
	movl	-12(%ebp), %eax
	imull	$90, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L10
	movl	-12(%ebp), %eax
	imull	$90, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	leal	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L10
	movl	$1, %eax
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
LFE18:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
