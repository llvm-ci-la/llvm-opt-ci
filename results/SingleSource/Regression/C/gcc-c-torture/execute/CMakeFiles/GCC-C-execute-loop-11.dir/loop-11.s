	.file	"loop-11.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	198                             # 0xc6
	.word	197                             # 0xc5
	.word	196                             # 0xc4
	.word	195                             # 0xc3
.LCPI0_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	vrepli.w	$vr1, -4
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$a0, $a0, %pc_lo12(a)
	move	$a1, $zero
	vrepli.w	$vr2, -8
	addi.w	$a2, $zero, -768
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr3, $vr0, $vr1
	add.d	$a3, $a0, $a1
	vshuf4i.w	$vr4, $vr0, 27
	vst	$vr4, $a3, 780
	vshuf4i.w	$vr3, $vr3, 27
	vst	$vr3, $a3, 764
	addi.d	$a1, $a1, -32
	vadd.w	$vr0, $vr0, $vr2
	bne	$a1, $a2, .LBB0_1
# %bb.2:                                # %scalar.ph
	move	$a1, $zero
	ori	$a2, $zero, 6
	st.w	$a2, $a0, 24
	ori	$a2, $zero, 4
	lu32i.d	$a2, 5
	st.d	$a2, $a0, 16
	ori	$a2, $zero, 2
	lu32i.d	$a2, 3
	st.d	$a2, $a0, 8
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	st.d	$a2, $a0, 0
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_1)
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr1, $a2, %pc_lo12(.LCPI0_2)
	vrepli.b	$vr2, 0
	vrepli.b	$vr3, -1
	ori	$a2, $zero, 768
	.p2align	4, , 16
.LBB0_3:                                # %vector.body8
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr4, $a0, $a1
	vilvh.w	$vr5, $vr2, $vr4
	vilvl.w	$vr4, $vr2, $vr4
	vseq.d	$vr4, $vr1, $vr4
	vxor.v	$vr4, $vr4, $vr3
	vseq.d	$vr5, $vr0, $vr5
	vxor.v	$vr5, $vr5, $vr3
	vpickev.w	$vr4, $vr5, $vr4
	vmskltz.w	$vr4, $vr4
	vpickve2gr.hu	$a4, $vr4, 0
	bnez	$a4, .LBB0_5
# %bb.4:                                # %vector.body8
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a3, $a1
	vaddi.du	$vr1, $vr1, 4
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, 16
	bne	$a3, $a2, .LBB0_3
.LBB0_5:                                # %middle.split
	andi	$a1, $a4, 15
	bnez	$a1, .LBB0_10
# %bb.6:                                # %foo.exit.preheader
	ld.w	$a1, $a0, 784
	ori	$a2, $zero, 196
	bne	$a1, $a2, .LBB0_10
# %bb.7:                                # %foo.exit.preheader
	ld.w	$a1, $a0, 788
	ori	$a2, $zero, 197
	bne	$a1, $a2, .LBB0_10
# %bb.8:                                # %foo.exit.preheader
	ld.w	$a0, $a0, 792
	ori	$a1, $zero, 198
	bne	$a0, $a1, .LBB0_10
# %bb.9:                                # %foo.exit.2
	move	$a0, $zero
	ret
.LBB0_10:                               # %vector.early.exit
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	a,@object                       # @a
	.local	a
	.comm	a,796,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
