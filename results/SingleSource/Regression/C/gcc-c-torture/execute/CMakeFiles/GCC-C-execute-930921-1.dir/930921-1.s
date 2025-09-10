	.file	"930921-1.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, 0
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 33
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
.LCPI1_1:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
.LCPI1_2:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI1_3:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI1_4:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI1_5:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI1_6:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI1_7:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI1_8:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI1_9:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr4, $a0, %pc_lo12(.LCPI1_4)
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	vld	$vr5, $a0, %pc_lo12(.LCPI1_5)
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr6, $a0, %pc_lo12(.LCPI1_6)
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	vld	$vr7, $a0, %pc_lo12(.LCPI1_7)
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	vld	$vr8, $a0, %pc_lo12(.LCPI1_8)
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	vld	$vr9, $a0, %pc_lo12(.LCPI1_9)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1792
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, 0
	vreplgr2vr.d	$vr10, $a1
	vrepli.h	$vr11, 3
	vrepli.b	$vr12, 0
	vrepli.b	$vr13, -1
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmul.d	$vr16, $vr9, $vr10
	vmul.d	$vr17, $vr8, $vr10
	vmul.d	$vr18, $vr7, $vr10
	vmul.d	$vr19, $vr6, $vr10
	vmul.d	$vr20, $vr5, $vr10
	vmul.d	$vr21, $vr4, $vr10
	vmul.d	$vr15, $vr3, $vr10
	vmul.d	$vr14, $vr2, $vr10
	vsrli.d	$vr14, $vr14, 33
	vsrli.d	$vr15, $vr15, 33
	vsrli.d	$vr21, $vr21, 33
	vsrli.d	$vr20, $vr20, 33
	vsrli.d	$vr19, $vr19, 33
	vsrli.d	$vr18, $vr18, 33
	vsrli.d	$vr17, $vr17, 33
	vsrli.d	$vr16, $vr16, 33
	vdiv.hu	$vr22, $vr1, $vr11
	vdiv.hu	$vr23, $vr0, $vr11
	vilvh.h	$vr24, $vr12, $vr23
	vilvh.w	$vr25, $vr12, $vr24
	vilvl.w	$vr24, $vr12, $vr24
	vilvl.h	$vr23, $vr12, $vr23
	vilvh.w	$vr26, $vr12, $vr23
	vilvl.w	$vr23, $vr12, $vr23
	vilvh.h	$vr27, $vr12, $vr22
	vilvh.w	$vr28, $vr12, $vr27
	vilvl.w	$vr27, $vr12, $vr27
	vilvl.h	$vr22, $vr12, $vr22
	vilvh.w	$vr29, $vr12, $vr22
	vilvl.w	$vr22, $vr12, $vr22
	vseq.d	$vr16, $vr16, $vr22
	vxor.v	$vr16, $vr16, $vr13
	vseq.d	$vr17, $vr17, $vr29
	vxor.v	$vr17, $vr17, $vr13
	vpickev.w	$vr17, $vr17, $vr16
	vseq.d	$vr18, $vr18, $vr27
	vxor.v	$vr18, $vr18, $vr13
	vseq.d	$vr19, $vr19, $vr28
	vxor.v	$vr19, $vr19, $vr13
	vpickev.w	$vr18, $vr19, $vr18
	vpickev.h	$vr17, $vr18, $vr17
	vpickve2gr.b	$a1, $vr17, 2
	andi	$a1, $a1, 1
	vpickve2gr.b	$a2, $vr16, 0
	bstrins.d	$a2, $a1, 63, 1
	vpickve2gr.b	$a1, $vr17, 4
	bstrins.d	$a2, $a1, 2, 2
	vpickve2gr.b	$a1, $vr17, 6
	bstrins.d	$a2, $a1, 3, 3
	vpickve2gr.b	$a1, $vr17, 8
	bstrins.d	$a2, $a1, 4, 4
	vpickve2gr.b	$a1, $vr17, 10
	bstrins.d	$a2, $a1, 5, 5
	vpickve2gr.b	$a1, $vr17, 12
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a2, $a1
	vpickve2gr.b	$a2, $vr17, 14
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	vseq.d	$vr16, $vr20, $vr23
	vxor.v	$vr16, $vr16, $vr13
	vpickve2gr.b	$a2, $vr16, 0
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 8
	or	$a1, $a1, $a2
	vseq.d	$vr17, $vr21, $vr26
	vxor.v	$vr17, $vr17, $vr13
	vpickev.w	$vr16, $vr17, $vr16
	vseq.d	$vr15, $vr15, $vr24
	vxor.v	$vr15, $vr15, $vr13
	vseq.d	$vr14, $vr14, $vr25
	vxor.v	$vr14, $vr14, $vr13
	vpickev.w	$vr14, $vr14, $vr15
	vpickev.h	$vr14, $vr14, $vr16
	vpickve2gr.b	$a2, $vr14, 2
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 9
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 4
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 10
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 11
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 8
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 12
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 10
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 13
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 14
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 14
	slli.d	$a2, $a2, 15
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bnez	$a1, .LBB1_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$a2, $a0
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.hu	$vr1, $vr1, 16
	vaddi.hu	$vr0, $vr0, 16
	addi.d	$a0, $a0, -16
	bnez	$a2, .LBB1_1
.LBB1_3:                                # %middle.split
	slli.d	$a0, $a1, 48
	beqz	$a0, .LBB1_5
# %bb.4:                                # %vector.early.exit
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB1_5:                                # %middle.block
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
