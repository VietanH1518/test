	.file	"test.c"
	.section .rdata,"dr"
LC0:
	.ascii "hello\0"
	.text
.globl _maint
	.def	_maint;	.scl	2;	.type	32;	.endef
_maint:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	ret
	.def	_printf;	.scl	2;	.type	32;	.endef
