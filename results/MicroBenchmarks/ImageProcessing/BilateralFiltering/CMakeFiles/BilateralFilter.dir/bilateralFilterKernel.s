	.file	"bilateralFilterKernel.c"
	.text
	.globl	bilateralFilterKernel           # -- Begin function bilateralFilterKernel
	.p2align	5
	.type	bilateralFilterKernel,@function
bilateralFilterKernel:                  # @bilateralFilterKernel
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 88                   # 8-byte Folded Spill
	move	$s8, $a4
	bstrpick.d	$a4, $a4, 31, 31
	add.w	$a4, $s8, $a4
	srai.d	$s0, $a4, 1
	sub.w	$a0, $a0, $s0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bge	$s0, $a0, .LBB0_11
# %bb.1:                                # %.preheader77.lr.ph
	sub.w	$a0, $a1, $s0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bge	$s0, $a0, .LBB0_11
# %bb.2:                                # %.preheader77.lr.ph
	blez	$s8, .LBB0_11
# %bb.3:                                # %.preheader77.us.us.preheader
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, 131072
	lu52i.d	$a0, $a0, 1031
	movgr2fr.d	$fs1, $a0
	lu12i.w	$a0, -267061
	ori	$a0, $a0, 699
	lu32i.d	$a0, -244166
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs2, $a0
	lu52i.d	$a0, $zero, -1034
	movgr2fr.d	$fs3, $a0
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1033
	movgr2fr.d	$fs4, $a0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s0
	.p2align	4, , 16
.LBB0_4:                                # %.preheader77.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_6 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	slli.d	$a0, $a3, 9
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	mul.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $s0
	.p2align	4, , 16
.LBB0_5:                                # %.preheader76.us.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	move	$s3, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$s1, $s5, $a0, 2
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	fmov.d	$fs5, $fs0
	fmov.d	$fs6, $fs0
	.p2align	4, , 16
.LBB0_6:                                # %.preheader.us.us.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_7 Depth 4
	sub.d	$a0, $s0, $s3
	mul.d	$s4, $a0, $a0
	move	$fp, $s8
	move	$s6, $s7
	move	$s2, $s0
	.p2align	4, , 16
.LBB0_7:                                #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_6 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s6, 0
	addi.d	$a2, $a0, -1
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fs7, $fa0, $fs2
	mul.d	$a0, $s2, $s2
	add.d	$a0, $a0, $s4
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fsqrt.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	fdiv.d	$fa0, $fa0, $fs4
	fmul.d	$fa0, $fs7, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fs6, $fs6, $fa1
	fadd.d	$fs5, $fs5, $fa0
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, -1
	addi.d	$s6, $s6, 4
	bnez	$fp, .LBB0_7
# %bb.8:                                # %._crit_edge.us.us.us.us
                                        #   in Loop: Header=BB0_6 Depth=3
	addi.d	$s3, $s3, 1
	addi.d	$s7, $s7, 512
	bne	$s3, $s8, .LBB0_6
# %bb.9:                                # %._crit_edge85.split.us.us.us.us
                                        #   in Loop: Header=BB0_5 Depth=2
	fdiv.d	$fa0, $fs6, $fs5
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slli.d	$a1, $s5, 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	addi.d	$s5, $s5, 1
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s7, $s7, 4
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bne	$s5, $a0, .LBB0_5
# %bb.10:                               # %._crit_edge.split.us.us.us
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s7, $s7, 512
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bne	$a3, $a0, .LBB0_4
.LBB0_11:                               # %._crit_edge92
	fld.d	$fs7, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end0:
	.size	bilateralFilterKernel, .Lfunc_end0-bilateralFilterKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
