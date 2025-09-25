	.arch armv8-a
	.file	"test.c"
	.text
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	adrp	x0, .LANCHOR0
	add	x1, x0, :lo12:.LANCHOR0
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	ldp	w0, w4, [x1]
	ldp	w3, w2, [x1, 8]
	add	w0, w0, w4
	ldr	w1, [x1, 16]
	add	w0, w0, w3
	add	w0, w0, w2
	add	w0, w0, w1
	cmp	w0, 20
	ble	.L2
	lsl	w0, w0, 1
	bl	putint
	mov	w0, 10
	bl	putch
.L3:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L2:
	.cfi_restore_state
	mov	w1, 3
	sdiv	w1, w0, w1
	add	w1, w1, w1, lsl 1
	sub	w0, w0, w1
	bl	putint
	mov	w0, 10
	bl	putch
	b	.L3
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.text
	.align	2
	.p2align 4,,11
	.global	calculate
	.type	calculate, %function
calculate:
.LFB1:
	.cfi_startproc
	mul	w0, w1, w0
	cmp	w1, 0
	csel	w0, w0, wzr, gt
	ret
	.cfi_endproc
.LFE1:
	.size	calculate, .-calculate
	.global	global_array
	.global	N
	.section	.rodata
	.align	2
	.type	N, %object
	.size	N, 4
N:
	.word	5
	.data
	.align	4
	.set	.LANCHOR0,. + 0
	.type	global_array, %object
	.size	global_array, 20
global_array:
	.word	2
	.word	2
	.word	3
	.word	4
	.word	5
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
