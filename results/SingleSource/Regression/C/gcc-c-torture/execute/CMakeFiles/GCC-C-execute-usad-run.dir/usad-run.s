	.file	"usad-run.c"
	.text
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	move	$a4, $zero
	ori	$a5, $zero, 16
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_1:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, 0
	vabsd.bu	$vr1, $vr1, $vr2
	vilvh.b	$vr2, $vr0, $vr1
	vilvl.h	$vr3, $vr0, $vr2
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr4, $vr0, $vr1
	vilvh.h	$vr2, $vr0, $vr2
	vilvh.h	$vr1, $vr0, $vr1
	vadd.w	$vr1, $vr1, $vr2
	vadd.w	$vr2, $vr4, $vr3
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$a6, $vr1, 0
	add.d	$a4, $a6, $a4
	addi.d	$a0, $a0, 16
	addi.w	$a5, $a5, -1
	add.d	$a1, $a1, $a2
	bnez	$a5, .LBB0_1
# %bb.2:                                # %foo.exit
	st.w	$a4, $a3, 0
	ret
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI1_1:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
.LCPI1_2:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI1_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI1_4:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_1)
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI1_2)
	pcalau12i	$a1, %pc_hi20(.LCPI1_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_3)
	pcalau12i	$a1, %pc_hi20(.LCPI1_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI1_4)
	vrepli.w	$vr5, 1
	vrepli.w	$vr6, 7
	addi.d	$a1, $sp, 280
	addi.d	$a2, $sp, 24
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vand.v	$vr7, $vr0, $vr5
	vand.v	$vr8, $vr1, $vr5
	vand.v	$vr9, $vr2, $vr5
	vand.v	$vr10, $vr3, $vr5
	vseqi.w	$vr10, $vr10, 0
	vseqi.w	$vr9, $vr9, 0
	vpickev.h	$vr9, $vr9, $vr10
	vseqi.w	$vr8, $vr8, 0
	vseqi.w	$vr7, $vr7, 0
	vpickev.h	$vr7, $vr7, $vr8
	vpickev.b	$vr7, $vr7, $vr9
	vand.v	$vr8, $vr1, $vr6
	vand.v	$vr9, $vr0, $vr6
	vand.v	$vr10, $vr3, $vr6
	vand.v	$vr11, $vr2, $vr6
	vpickev.h	$vr12, $vr11, $vr10
	vpickev.h	$vr13, $vr9, $vr8
	vpickev.b	$vr12, $vr13, $vr12
	vxori.b	$vr12, $vr12, 255
	vslli.b	$vr12, $vr12, 1
	vsrli.w	$vr8, $vr8, 1
	vsrli.w	$vr9, $vr9, 1
	vsrli.w	$vr10, $vr10, 1
	vsrli.w	$vr11, $vr11, 1
	vpickev.h	$vr10, $vr11, $vr10
	vpickev.h	$vr8, $vr9, $vr8
	vpickev.b	$vr8, $vr8, $vr10
	vandi.b	$vr9, $vr4, 6
	vslli.b	$vr10, $vr9, 1
	vbitseti.b	$vr10, $vr10, 0
	vbitsel.v	$vr10, $vr12, $vr10, $vr7
	vbitsel.v	$vr7, $vr8, $vr9, $vr7
	vneg.b	$vr7, $vr7
	vstx	$vr10, $a0, $a1
	vstx	$vr7, $a0, $a2
	addi.d	$a0, $a0, 16
	vaddi.wu	$vr3, $vr3, 16
	vaddi.wu	$vr2, $vr2, 16
	vaddi.wu	$vr1, $vr1, 16
	vaddi.wu	$vr0, $vr0, 16
	vaddi.bu	$vr4, $vr4, 16
	bne	$a0, $a3, .LBB1_1
# %bb.2:                                # %middle.block
	addi.d	$a0, $sp, 280
	addi.d	$a1, $sp, 24
	ori	$a2, $zero, 16
	addi.d	$a3, $sp, 20
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3712
	bne	$a0, $a1, .LBB1_4
# %bb.3:
	move	$a0, $zero
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB1_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
