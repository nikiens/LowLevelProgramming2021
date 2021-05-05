	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"%f"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96
	sw	ra,92(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	t4,0(a5)
	lw	t3,4(a5)
	lw	t1,8(a5)
	lw	a7,12(a5)
	lw	a6,16(a5)
	lw	a0,20(a5)
	lw	a1,24(a5)
	lw	a2,28(a5)
	lw	a3,32(a5)
	lw	a4,36(a5)
	sw	t4,40(sp)
	sw	t3,44(sp)
	sw	t1,48(sp)
	sw	a7,52(sp)
	sw	a6,56(sp)
	sw	a0,60(sp)
	sw	a1,64(sp)
	sw	a2,68(sp)
	sw	a3,72(sp)
	sw	a4,76(sp)
	lw	t3,40(a5)
	lw	t1,44(a5)
	lw	a7,48(a5)
	lw	a6,52(a5)
	lw	a0,56(a5)
	lw	a1,60(a5)
	lw	a2,64(a5)
	lw	a3,68(a5)
	lw	a4,72(a5)
	lw	a5,76(a5)
	sw	t3,0(sp)
	sw	t1,4(sp)
	sw	a7,8(sp)
	sw	a6,12(sp)
	sw	a0,16(sp)
	sw	a1,20(sp)
	sw	a2,24(sp)
	sw	a3,28(sp)
	sw	a4,32(sp)
	sw	a5,36(sp)
	li	a2,5
	mv	a1,sp
	addi	a0,sp,40
	call	trapz
	mv	a2,a0
	mv	a3,a1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
	li	a0,0
	lw	ra,92(sp)
	addi	sp,sp,96
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	-1717986918
	.word	1072798105
	.word	-1546188227
	.word	1073888624
	.word	1717986918
	.word	1074947686
	.word	0
	.word	1075052544
	.word	309237645
	.word	1076101251
.LC1:
	.word	-1717986918
	.word	1072273817
	.word	1202590843
	.word	1069841121
	.word	-1717986918
	.word	1072273817
	.word	1202590843
	.word	1069841121
	.word	-1717986918
	.word	1072273817
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
