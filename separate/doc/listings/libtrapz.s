	.file	"libtrapz.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__adddf3
	.globl	__subdf3
	.globl	__muldf3
	.align	2
	.globl	trapz
	.type	trapz, @function
trapz:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	li	a5,1
	beq	a2,a5,.L4 # __EXIT_LOOP_CONDITION__
	mv	s1,a0
	addi	s0,a1,8
	slli	a2,a2,3
	add	s7,a1,a2
	li	s3,0
	li	s2,0
	lui	a5,%hi(.LC0)
	lw	s4,%lo(.LC0)(a5)
	lw	s5,%lo(.LC0+4)(a5)
.L3: # __COMPUTING_EXPRESSION__
	lw	a2,-8(s0)
	lw	a3,-4(s0)
	lw	a0,0(s0)
	lw	a1,4(s0)
	call	__adddf3
	mv	s8,a0
	mv	s6,a1
	lw	a2,0(s1)
	lw	a3,4(s1)
	lw	a0,8(s1)
	lw	a1,12(s1)
	call	__subdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s8
	mv	a1,s6
	call	__muldf3
	mv	a2,s4
	mv	a3,s5
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	call	__adddf3
	mv	s3,a0
	mv	s2,a1
	addi	s1,s1,8
	addi	s0,s0,8
	bne	s0,s7,.L3
.L1: # __RETURN__SUM__
	mv	a0,s3
	mv	a1,s2
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	lw	s8,8(sp)
	addi	sp,sp,48
	jr	ra
.L4: # __EXIT_LOOP__
	li	s3,0
	li	s2,0
	j	.L1
	.size	trapz, .-trapz
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	0
	.word	1071644672
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
