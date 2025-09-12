	.file	"Crystal_pow.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Crystal_pow
.LCPI0_0:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI0_1:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
.LCPI0_2:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI0_3:
	.dword	0x3f847ae147ae147b              # double 0.01
.LCPI0_4:
	.dword	0x3ff3333333333333              # double 1.2
	.text
	.globl	Crystal_pow
	.p2align	5
	.type	Crystal_pow,@function
Crystal_pow:                            # @Crystal_pow
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 208                  # 8-byte Folded Spill
	blez	$a0, .LBB0_10
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 4
	bgeu	$s0, $a0, .LBB0_3
# %bb.2:
	move	$a0, $zero
	b	.LBB0_6
.LBB0_3:                                # %vector.ph
	bstrpick.d	$a0, $s0, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a1, $sp, 128
	ori	$a3, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	vreplgr2vr.d	$vr0, $a2
	addi.d	$a2, $sp, 32
	lu52i.d	$a4, $zero, 1023
	vreplgr2vr.d	$vr1, $a4
	lu12i.w	$a4, -419431
	ori	$a4, $a4, 2458
	lu32i.d	$a4, -419431
	lu52i.d	$a4, $a4, 1020
	vreplgr2vr.d	$vr2, $a4
	lu12i.w	$a4, -209716
	ori	$a4, $a4, 3277
	lu32i.d	$a4, -209716
	lu52i.d	$a4, $a4, 1022
	vreplgr2vr.d	$vr3, $a4
	lu32i.d	$a3, -524288
	lu52i.d	$a3, $a3, 1026
	vreplgr2vr.d	$vr4, $a3
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr5, $vr0, 2
	vst	$vr1, $a2, -16
	vst	$vr1, $a2, 0
	vpickve2gr.w	$a4, $vr0, 1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa6, $a4
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$a4, $vr0, 0
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa7, $a4
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vpickve2gr.w	$a4, $vr5, 1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa6, $a4
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$a4, $vr5, 0
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa5, $a4
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	vfmul.d	$vr6, $vr7, $vr2
	vfmul.d	$vr5, $vr5, $vr2
	vfmul.d	$vr6, $vr6, $vr3
	vfmul.d	$vr5, $vr5, $vr3
	vfdiv.d	$vr6, $vr6, $vr4
	vfdiv.d	$vr5, $vr5, $vr4
	vst	$vr6, $a1, -16
	vst	$vr5, $a1, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB0_4
# %bb.5:                                # %middle.block
	beq	$a0, $s0, .LBB0_8
.LBB0_6:                                # %.lr.ph.preheader26
	addi.d	$a1, $sp, 112
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a2, $sp, 16
	alsl.d	$a2, $a0, $a2, 3
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI0_1)
	sub.d	$a3, $s0, $a0
	lu52i.d	$a4, $zero, 1023
	vldi	$vr2, -984
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a4, $a2, 0
	bstrpick.d	$a5, $a0, 31, 0
	movgr2fr.d	$fa3, $a5
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa0
	fmul.d	$fa3, $fa3, $fa1
	fdiv.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.w	$a0, $a0, 1
	bnez	$a3, .LBB0_7
.LBB0_8:                                # %.lr.ph21.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI0_4)
	addi.d	$s1, $sp, 112
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB0_9:                                # %.lr.ph21
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $fp, 0
	fld.d	$fa1, $s2, 0
	fmadd.d	$fa0, $fa0, $fa1, $fs1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs2
	fst.d	$fa0, $s1, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB0_9
.LBB0_10:                               # %._crit_edge
	fld.d	$fa0, $sp, 136
	fld.d	$fs2, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end0:
	.size	Crystal_pow, .Lfunc_end0-Crystal_pow
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
