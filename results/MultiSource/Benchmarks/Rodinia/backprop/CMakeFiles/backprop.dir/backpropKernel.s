	.file	"backpropKernel.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function bpnn_train_kernel
.LCPI0_0:
	.dword	0x3fd3333333333333              # double 0.29999999999999999
	.text
	.globl	bpnn_train_kernel
	.p2align	5
	.type	bpnn_train_kernel,@function
bpnn_train_kernel:                      # @bpnn_train_kernel
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 160                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 312
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	blez	$t0, .LBB0_29
# %bb.1:                                # %.lr.ph178
	move	$s2, $a4
	move	$s3, $a3
	move	$t1, $zero
	ld.d	$a3, $sp, 304
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 296
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$t2, $sp, 288
	ld.d	$t3, $sp, 280
	ld.d	$t0, $sp, 272
	addi.d	$a3, $a1, 1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 1
	bstrpick.d	$s7, $a3, 31, 0
	bstrpick.d	$s4, $a2, 31, 0
	slti	$a4, $a1, 1
	slti	$a2, $a0, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a3, $a0, 1
	bstrpick.d	$s8, $a3, 31, 0
	or	$a0, $a4, $a2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $t3, 4
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$s0, $s7, 2
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $t2, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$fp, $s4, 2
	addi.d	$a0, $a7, 4
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $t0, 4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $a5, 4
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s4, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	lu12i.w	$t2, 260096
	movgr2fr.w	$fs1, $zero
	movgr2fr.d	$fs2, $zero
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %._crit_edge164.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$t2, $s3, 0
.LBB0_3:                                # %._crit_edge175
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$t1, $t1, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB0_30
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_9 Depth 3
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #     Child Loop BB0_26 Depth 2
                                        #       Child Loop BB0_27 Depth 3
	st.d	$t1, $sp, 136                   # 8-byte Folded Spill
	st.w	$t2, $s3, 0
	move	$s5, $a1
	blez	$a1, .LBB0_10
# %bb.5:                                # %.preheader130.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$s1, $zero, 1
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %._crit_edge
                                        #   in Loop: Header=BB0_7 Depth=2
	fneg.d	$fa0, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	slli.d	$a0, $s1, 2
	fstx.s	$fa0, $s2, $a0
	addi.d	$s1, $s1, 1
	addi.d	$s6, $s6, 4
	beq	$s1, $s7, .LBB0_10
.LBB0_7:                                # %.preheader130
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
	fmov.d	$fa0, $fs2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bltz	$a0, .LBB0_6
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$a0, $s8
	move	$a1, $s6
	move	$a2, $s3
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	fmul.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	add.d	$a1, $a1, $s0
	bnez	$a0, .LBB0_9
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_10:                               # %._crit_edge137
                                        #   in Loop: Header=BB0_4 Depth=1
	lu12i.w	$t2, 260096
	st.w	$t2, $s2, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blez	$a0, .LBB0_24
# %bb.11:                               # %.preheader129.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$s1, $zero, 1
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               # %._crit_edge142
                                        #   in Loop: Header=BB0_13 Depth=2
	fneg.d	$fa0, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr5, -912
	fadd.d	$fa0, $fa0, $fa5
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	addi.d	$s1, $s1, 1
	addi.d	$s6, $s6, 4
	beq	$s1, $s4, .LBB0_16
.LBB0_13:                               # %.preheader129
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
	fmov.d	$fa0, $fs2
	bltz	$s5, .LBB0_12
# %bb.14:                               # %.lr.ph141
                                        #   in Loop: Header=BB0_13 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s2
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_15:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	fmul.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	add.d	$a1, $a1, $fp
	bnez	$a0, .LBB0_15
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_16:                               # %.lr.ph151.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	fmov.s	$fa0, $fs1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_17:                               # %.lr.ph151
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a2, 0
	fcvt.d.s	$fa3, $fa1
	fsub.d	$fa4, $fa5, $fa3
	fmul.d	$fa3, $fa4, $fa3
	fsub.s	$fa1, $fa2, $fa1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a3, 0
	fabs.s	$fa1, $fa1
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB0_17
# %bb.18:                               # %.preheader128.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	lu12i.w	$t2, 260096
	st.w	$t2, $s2, 0
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	bltz	$a1, .LBB0_2
# %bb.19:                               # %.preheader128.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a0, $zero, 1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_20:                               # %.preheader128
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
	slli.d	$a3, $a0, 2
	fldx.s	$fa1, $a7, $a3
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fs0
	ori	$a3, $zero, 4
	move	$a4, $s7
	move	$a5, $s2
	.p2align	4, , 16
.LBB0_21:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa2, $a5, 0
	fldx.s	$fa3, $t0, $a3
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa3, $fa3
	fldx.s	$fa4, $a2, $a3
	fmul.d	$fa3, $fa3, $fs0
	fmadd.d	$fa2, $fa1, $fa2, $fa3
	fcvt.s.d	$fa2, $fa2
	fadd.s	$fa3, $fa4, $fa2
	fstx.s	$fa3, $a2, $a3
	fstx.s	$fa2, $t0, $a3
	add.d	$a3, $a3, $fp
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB0_21
# %bb.22:                               # %._crit_edge157
                                        #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$t0, $t0, 4
	bne	$a0, $s4, .LBB0_20
# %bb.23:                               # %._crit_edge164
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$t2, $s3, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_3
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %._crit_edge152.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$t2, $s2, 0
	fmov.s	$fa0, $fs1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	st.w	$t2, $s3, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_3
.LBB0_25:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a0, $zero, 1
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
	slli.d	$a3, $a0, 2
	fldx.s	$fa1, $a6, $a3
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fs0
	ori	$a3, $zero, 4
	move	$a4, $s8
	move	$a5, $s3
	.p2align	4, , 16
.LBB0_27:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa2, $a5, 0
	fldx.s	$fa3, $t0, $a3
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa3, $fa3
	fldx.s	$fa4, $a2, $a3
	fmul.d	$fa3, $fa3, $fs0
	fmadd.d	$fa2, $fa1, $fa2, $fa3
	fcvt.s.d	$fa2, $fa2
	fadd.s	$fa3, $fa4, $fa2
	fstx.s	$fa3, $a2, $a3
	fstx.s	$fa2, $t0, $a3
	add.d	$a3, $a3, $s0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB0_27
# %bb.28:                               # %._crit_edge168
                                        #   in Loop: Header=BB0_26 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$t0, $t0, 4
	bne	$a0, $s7, .LBB0_26
	b	.LBB0_3
.LBB0_29:
	movgr2fr.w	$fa0, $zero
.LBB0_30:                               # %._crit_edge179
	fld.d	$fs2, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end0:
	.size	bpnn_train_kernel, .Lfunc_end0-bpnn_train_kernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
