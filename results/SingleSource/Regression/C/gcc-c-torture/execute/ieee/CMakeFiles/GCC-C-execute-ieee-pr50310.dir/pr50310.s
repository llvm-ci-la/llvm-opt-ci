	.file	"pr50310.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %.preheader93.preheader
	pcalau12i	$a0, %pc_hi20(s1)
	xvld	$xr0, $a0, %pc_lo12(s1)
	pcalau12i	$a0, %pc_hi20(s2)
	xvld	$xr1, $a0, %pc_lo12(s2)
	xvfcmp.clt.d	$xr2, $xr1, $xr0
	xvldi	$xr3, -784
	xvand.v	$xr2, $xr2, $xr3
	pcalau12i	$a0, %pc_hi20(s3)
	addi.d	$a0, $a0, %pc_lo12(s3)
	xvst	$xr2, $a0, 0
	xvfcmp.cule.d	$xr4, $xr0, $xr1
	xvand.v	$xr4, $xr4, $xr3
	xvst	$xr4, $a0, 32
	xvfcmp.cle.d	$xr4, $xr1, $xr0
	xvand.v	$xr4, $xr4, $xr3
	xvst	$xr4, $a0, 64
	xvfcmp.cult.d	$xr5, $xr0, $xr1
	xvand.v	$xr5, $xr5, $xr3
	xvst	$xr5, $a0, 96
	xvfcmp.clt.d	$xr5, $xr0, $xr1
	xvand.v	$xr5, $xr5, $xr3
	xvst	$xr5, $a0, 128
	xvfcmp.cule.d	$xr6, $xr1, $xr0
	xvand.v	$xr6, $xr6, $xr3
	xvst	$xr6, $a0, 160
	xvfcmp.cle.d	$xr6, $xr0, $xr1
	xvand.v	$xr6, $xr6, $xr3
	xvst	$xr6, $a0, 192
	xvfcmp.cult.d	$xr7, $xr1, $xr0
	xvand.v	$xr7, $xr7, $xr3
	xvst	$xr7, $a0, 224
	xvfcmp.cne.d	$xr7, $xr0, $xr1
	xvand.v	$xr7, $xr7, $xr3
	xvst	$xr7, $a0, 256
	xvfcmp.cueq.d	$xr7, $xr0, $xr1
	xvand.v	$xr7, $xr7, $xr3
	xvst	$xr7, $a0, 288
	xvfcmp.cun.d	$xr7, $xr0, $xr1
	xvand.v	$xr7, $xr7, $xr3
	xvst	$xr7, $a0, 320
	xvfcmp.cor.d	$xr0, $xr0, $xr1
	xvand.v	$xr0, $xr0, $xr3
	xvst	$xr0, $a0, 352
	xvst	$xr2, $a0, 384
	xvst	$xr6, $a0, 416
	xvst	$xr5, $a0, 448
	xvst	$xr4, $a0, 480
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0x4014000000000000              # double 5
	.dword	0x4018000000000000              # double 6
	.dword	0x4014000000000000              # double 5
	.dword	0x7ff8000000000000              # double NaN
.LCPI1_1:
	.dword	0x4018000000000000              # double 6
	.dword	0x4014000000000000              # double 5
	.dword	0x4014000000000000              # double 5
	.dword	0x4014000000000000              # double 5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(s1)
	xvst	$xr0, $a0, %pc_lo12(s1)
	pcalau12i	$a0, %pc_hi20(s2)
	xvst	$xr1, $a0, %pc_lo12(s2)
	#APP
	#NO_APP
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	pcalau12i	$a0, %pc_hi20(s3)
	addi.d	$a0, $a0, %pc_lo12(s3)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 3
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 64
	lu12i.w	$a4, 524287
	ori	$a4, $a4, 4092
	pcalau12i	$a5, %pc_hi20(main.masks)
	addi.d	$a5, $a5, %pc_lo12(main.masks)
	move	$a6, $zero
	move	$a7, $zero
	move	$t0, $zero
	vldi	$vr1, -784
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_3 Depth=1
	srli.d	$t2, $t0, 1
	and	$t2, $t2, $a4
	ldx.w	$t2, $a5, $t2
	srai.d	$t3, $a7, 31
	xor	$t2, $t2, $t3
	srl.w	$t1, $t2, $t1
	andi	$t1, $t1, 1
	sltui	$t1, $t1, 1
	movgr2cf	$fcc0, $t1
	fsel	$fa3, $fa1, $fa0, $fcc0
	fcmp.ceq.d	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB1_6
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$a0, $a0, 8
	addu16i.d	$a7, $a7, 8192
	addi.w	$a7, $a7, 0
	addi.d	$a6, $a6, 1
	beq	$t0, $a3, .LBB1_7
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $a0, 0
	andi	$t1, $a6, 3
	bltu	$t0, $a1, .LBB1_1
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	bne	$t1, $a2, .LBB1_1
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_2
.LBB1_6:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB1_7:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	s1,@object                      # @s1
	.bss
	.globl	s1
	.p2align	5, 0x0
s1:
	.space	32
	.size	s1, 32

	.type	s2,@object                      # @s2
	.globl	s2
	.p2align	5, 0x0
s2:
	.space	32
	.size	s2, 32

	.type	s3,@object                      # @s3
	.globl	s3
	.p2align	5, 0x0
s3:
	.space	512
	.size	s3, 512

	.type	main.masks,@object              # @main.masks
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
main.masks:
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	8                               # 0x8
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	main.masks, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
