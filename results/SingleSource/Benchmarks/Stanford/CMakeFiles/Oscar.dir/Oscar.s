	.file	"Oscar.c"
	.text
	.globl	Initrand                        # -- Begin function Initrand
	.p2align	5
	.type	Initrand,@function
Initrand:                               # @Initrand
# %bb.0:
	pcalau12i	$a0, %pc_hi20(seed)
	lu12i.w	$a1, 18
	ori	$a1, $a1, 1027
	st.d	$a1, $a0, %pc_lo12(seed)
	ret
.Lfunc_end0:
	.size	Initrand, .Lfunc_end0-Initrand
                                        # -- End function
	.globl	Rand                            # -- Begin function Rand
	.p2align	5
	.type	Rand,@function
Rand:                                   # @Rand
# %bb.0:
	pcalau12i	$a1, %pc_hi20(seed)
	ld.d	$a0, $a1, %pc_lo12(seed)
	ori	$a2, $zero, 1309
	mul.d	$a0, $a0, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 1561
	add.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $a1, %pc_lo12(seed)
	ret
.Lfunc_end1:
	.size	Rand, .Lfunc_end1-Rand
                                        # -- End function
	.globl	Cos                             # -- Begin function Cos
	.p2align	5
	.type	Cos,@function
Cos:                                    # @Cos
# %bb.0:
	fmul.s	$fa1, $fa0, $fa0
	vldi	$vr2, -1056
	fmul.s	$fa2, $fa1, $fa2
	vldi	$vr3, -1168
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa1, $fa0, $fa1
	vldi	$vr3, -1224
	fdiv.s	$fa3, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa1, $fa0, $fa1
	lu12i.w	$a0, -244928
	lu32i.d	$a0, 0
	movgr2fr.w	$fa3, $a0
	fdiv.s	$fa3, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa1, $fa0, $fa1
	lu12i.w	$a0, 291288
	movgr2fr.w	$fa3, $a0
	fdiv.s	$fa3, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa0, $fa0, $fa1
	lu12i.w	$a0, -219689
	ori	$a0, $a0, 3072
	lu32i.d	$a0, 0
	movgr2fr.w	$fa1, $a0
	fdiv.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	ret
.Lfunc_end2:
	.size	Cos, .Lfunc_end2-Cos
                                        # -- End function
	.globl	Min0                            # -- Begin function Min0
	.p2align	5
	.type	Min0,@function
Min0:                                   # @Min0
# %bb.0:
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ret
.Lfunc_end3:
	.size	Min0, .Lfunc_end3-Min0
                                        # -- End function
	.globl	Printcomplex                    # -- Begin function Printcomplex
	.p2align	5
	.type	Printcomplex,@function
Printcomplex:                           # @Printcomplex
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s3, $a1
	move	$s1, $a0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	alsl.d	$a0, $s3, $s1, 3
	slli.d	$a1, $s3, 3
	fldx.s	$fa0, $s1, $a1
	fld.s	$fa1, $a0, 4
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	add.w	$s3, $s3, $fp
	alsl.d	$a0, $s3, $s1, 3
	slli.d	$a1, $s3, 3
	fldx.s	$fa0, $s1, $a1
	fld.s	$fa1, $a0, 4
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	add.w	$s3, $s3, $fp
	bge	$s0, $s3, .LBB4_1
# %bb.2:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	Printcomplex, .Lfunc_end4-Printcomplex
                                        # -- End function
	.globl	Uniform11                       # -- Begin function Uniform11
	.p2align	5
	.type	Uniform11,@function
Uniform11:                              # @Uniform11
# %bb.0:
	ld.w	$a2, $a0, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 759
	mul.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 1731
	bstrpick.d	$a2, $a2, 12, 0
	st.w	$a2, $a0, 0
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	lu12i.w	$a0, 233472
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	ret
.Lfunc_end5:
	.size	Uniform11, .Lfunc_end5-Uniform11
                                        # -- End function
	.globl	Exptab                          # -- Begin function Exptab
	.p2align	5
	.type	Exptab,@function
Exptab:                                 # @Exptab
# %bb.0:
	addi.d	$sp, $sp, -112
	ori	$a2, $zero, 4
	vldi	$vr0, -1264
	lu12i.w	$a3, 263312
	ori	$a3, $a3, 4059
	movgr2fr.w	$fa1, $a3
	vldi	$vr2, -1056
	vldi	$vr3, -1168
	vldi	$vr4, -1224
	lu12i.w	$a3, -244928
	lu32i.d	$a3, 0
	movgr2fr.w	$fa5, $a3
	lu12i.w	$a3, 291288
	movgr2fr.w	$fa6, $a3
	lu12i.w	$a3, -219689
	ori	$a3, $a3, 3072
	lu32i.d	$a3, 0
	movgr2fr.w	$fa7, $a3
	addi.d	$a3, $sp, 8
	ori	$a4, $zero, 104
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	fdiv.s	$ft0, $fa1, $fa0
	fmul.s	$ft1, $ft0, $ft0
	fmul.s	$ft2, $ft1, $fa2
	fadd.s	$ft2, $ft2, $fa3
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft1, $ft0, $ft1
	fdiv.s	$ft3, $ft1, $fa4
	fadd.s	$ft2, $ft2, $ft3
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft1, $ft0, $ft1
	fdiv.s	$ft3, $ft1, $fa5
	fadd.s	$ft2, $ft2, $ft3
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft1, $ft0, $ft1
	fdiv.s	$ft3, $ft1, $fa6
	fadd.s	$ft2, $ft2, $ft3
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft0, $ft0, $ft1
	fdiv.s	$ft0, $ft0, $fa7
	fadd.s	$ft0, $ft2, $ft0
	fadd.s	$ft0, $ft0, $ft0
	frecip.s	$ft0, $ft0
	fstx.s	$ft0, $a2, $a3
	addi.d	$a2, $a2, 4
	fadd.s	$fa0, $fa0, $fa0
	bne	$a2, $a4, .LBB6_1
# %bb.2:
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	bstrpick.d	$a3, $a0, 62, 61
	add.w	$a0, $a0, $a3
	srai.d	$a3, $a0, 2
	addi.d	$a0, $a1, 8
	lu12i.w	$a4, 260096
	st.d	$a4, $a1, 8
	alsl.d	$a4, $a3, $a1, 3
	lu52i.d	$a5, $zero, 1016
	st.d	$a5, $a4, 8
	alsl.d	$a1, $a2, $a1, 3
	lu12i.w	$a4, -264192
	lu32i.d	$a4, 0
	st.d	$a4, $a1, 8
	ori	$a5, $zero, 1
	addi.d	$a1, $sp, 8
	ori	$a4, $zero, 24
	ori	$a6, $zero, 3
	.p2align	4, , 16
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	bstrpick.d	$a7, $a3, 31, 31
	add.w	$t0, $a3, $a7
	addi.w	$a7, $a3, 0
	srai.d	$a3, $t0, 1
	slli.d	$t0, $a5, 2
	fldx.s	$fa0, $t0, $a1
	slli.d	$t0, $a3, 4
	slli.d	$t1, $a7, 3
	slli.d	$t2, $a3, 3
	move	$t3, $a0
	move	$t4, $a3
	.p2align	4, , 16
.LBB6_4:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $t3, $t0
	fld.s	$fa2, $t3, 0
	add.d	$t5, $t3, $t0
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $t5, 4
	fld.s	$fa3, $t3, 4
	fmul.s	$fa1, $fa0, $fa1
	add.d	$t5, $t3, $t2
	fstx.s	$fa1, $t3, $t2
	fadd.s	$fa1, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $t5, 4
	add.d	$t4, $t4, $a7
	add.d	$t3, $t3, $t1
	bge	$a2, $t4, .LBB6_4
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	slti	$t0, $a5, 24
	masknez	$t1, $a4, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	addi.w	$a5, $a5, 1
	blt	$a6, $a7, .LBB6_3
# %bb.6:
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end6:
	.size	Exptab, .Lfunc_end6-Exptab
                                        # -- End function
	.globl	Fft                             # -- Begin function Fft
	.p2align	5
	.type	Fft,@function
Fft:                                    # @Fft
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a4, $a0, 31, 31
	add.w	$a4, $a0, $a4
	srai.d	$a4, $a4, 1
	ori	$a5, $zero, 1
	slt	$a6, $a5, $a0
	masknez	$a7, $a5, $a6
	maskeqz	$a6, $a0, $a6
	or	$a6, $a6, $a7
	sub.d	$a7, $a1, $a2
	slti	$t0, $a0, 4
	sltui	$a7, $a7, 32
	or	$a7, $t0, $a7
	bstrpick.d	$t0, $a6, 30, 2
	slli.d	$t0, $t0, 2
	srli.d	$t2, $a6, 2
	ori	$t1, $zero, 1
	bstrins.d	$t1, $t2, 30, 2
	addi.d	$t2, $a2, 4
	slli.d	$t3, $a4, 3
	addi.d	$t4, $a1, 24
	addi.d	$t5, $a2, 24
	addi.d	$t6, $a6, 1
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_1:                                # %.loopexit
                                        #   in Loop: Header=BB7_2 Depth=1
	slli.w	$a5, $a5, 1
	blt	$a4, $a5, .LBB7_12
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
                                        #       Child Loop BB7_4 Depth 3
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_11 Depth 2
	move	$t7, $zero
	move	$s0, $zero
	slli.d	$t8, $a5, 3
	alsl.d	$fp, $a5, $a2, 3
	move	$s2, $a5
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB7_3:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_4 Depth 3
	addi.w	$s3, $s0, 0
	move	$s0, $s2
	slli.d	$s4, $t7, 3
	alsl.d	$s2, $s3, $a3, 3
	addi.w	$s1, $s1, 0
	alsl.d	$s3, $s1, $fp, 3
	alsl.d	$s4, $s1, $s4, 3
	add.d	$s4, $t2, $s4
	alsl.d	$s5, $s1, $a1, 3
	.p2align	4, , 16
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $s5, 0
	add.d	$s6, $s5, $t3
	fldx.s	$fa2, $s5, $t3
	fld.s	$fa3, $s5, 4
	fld.s	$fa4, $s6, 4
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $s4, -4
	fadd.s	$fa1, $fa3, $fa4
	fld.s	$fa2, $s5, 0
	fldx.s	$fa3, $s5, $t3
	fst.s	$fa1, $s4, 0
	fld.s	$fa1, $s5, 4
	fld.s	$fa4, $s6, 4
	fsub.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $s2, 12
	fld.s	$fa5, $s2, 8
	fsub.s	$fa1, $fa1, $fa4
	fneg.s	$fa4, $fa1
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa2, $fa5, $fa2, $fa4
	fst.s	$fa2, $s3, 0
	fld.s	$fa2, $s5, 0
	fldx.s	$fa4, $s5, $t3
	fld.s	$fa5, $s2, 8
	move	$s6, $s1
	fsub.s	$fa2, $fa2, $fa4
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa1, $fa5, $fa1, $fa2
	fst.s	$fa1, $s3, 4
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, 8
	blt	$s6, $s0, .LBB7_4
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=2
	add.d	$s2, $s0, $a5
	add.d	$fp, $fp, $t8
	add.w	$t7, $t7, $a5
	bge	$a4, $s2, .LBB7_3
# %bb.6:                                # %.preheader95.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	ori	$fp, $zero, 1
	bnez	$a7, .LBB7_10
# %bb.7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	move	$t7, $t0
	move	$t8, $t5
	move	$fp, $t4
	.p2align	4, , 16
.LBB7_8:                                # %vector.body
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t8, -16
	vld	$vr2, $t8, 0
	vst	$vr1, $fp, -16
	vst	$vr2, $fp, 0
	addi.d	$fp, $fp, 32
	addi.d	$t7, $t7, -4
	addi.d	$t8, $t8, 32
	bnez	$t7, .LBB7_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB7_2 Depth=1
	move	$fp, $t1
	beq	$t0, $a6, .LBB7_1
.LBB7_10:                               # %.preheader95.preheader114
                                        #   in Loop: Header=BB7_2 Depth=1
	alsl.d	$t7, $fp, $a2, 3
	alsl.d	$t8, $fp, $a1, 3
	sub.d	$fp, $t6, $fp
	.p2align	4, , 16
.LBB7_11:                               # %.preheader95
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $t7, 0
	st.d	$s0, $t8, 0
	addi.d	$t7, $t7, 8
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB7_11
	b	.LBB7_1
.LBB7_12:                               # %.preheader
	blez	$a0, .LBB7_15
# %bb.13:                               # %.lr.ph
	fneg.s	$fa1, $fa0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 12
	addi.d	$a1, $a2, -1
	.p2align	4, , 16
.LBB7_14:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a0, -4
	fld.s	$fa3, $a0, 0
	fmul.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $a0, -4
	fmul.s	$fa2, $fa3, $fa1
	fst.s	$fa2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB7_14
.LBB7_15:                               # %._crit_edge
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end7:
	.size	Fft, .Lfunc_end7-Fft
                                        # -- End function
	.globl	Oscar                           # -- Begin function Oscar
	.p2align	5
	.type	Oscar,@function
Oscar:                                  # @Oscar
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(e)
	addi.d	$a1, $a0, %pc_lo12(e)
	ori	$a0, $zero, 256
	pcaddu18i	$ra, %call36(Exptab)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a1, $a0, 1671
	ori	$a0, $a0, 759
	lu12i.w	$a2, 233472
	movgr2fr.w	$fa0, $a2
	vldi	$vr1, -1116
	vldi	$vr2, -1228
	pcalau12i	$a2, %pc_hi20(z)
	addi.d	$fp, $a2, %pc_lo12(z)
	move	$a2, $zero
	ori	$a3, $zero, 2048
	.p2align	4, , 16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 1731
	bstrpick.d	$a4, $a1, 12, 0
	movgr2fr.w	$fa3, $a4
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa3, $fa0
	mul.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 1731
	bstrpick.d	$a1, $a1, 12, 0
	movgr2fr.w	$fa4, $a1
	ffint.s.w	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fa0
	fmadd.s	$fa5, $fa3, $fa2, $fa1
	add.d	$a4, $fp, $a2
	fst.s	$fa5, $a4, 8
	fmadd.s	$fa5, $fa4, $fa2, $fa1
	addi.d	$a2, $a2, 8
	fst.s	$fa5, $a4, 12
	bne	$a2, $a3, .LBB8_1
# %bb.2:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(seed)
	st.d	$a1, $a0, %pc_lo12(seed)
	pcalau12i	$a0, %pc_hi20(zr)
	fst.s	$fa3, $a0, %pc_lo12(zr)
	pcalau12i	$a0, %pc_hi20(zi)
	fst.s	$fa4, $a0, %pc_lo12(zi)
	pcalau12i	$a0, %pc_hi20(w)
	addi.d	$s0, $a0, %pc_lo12(w)
	pcalau12i	$a0, %pc_hi20(e)
	addi.d	$s1, $a0, %pc_lo12(e)
	lu12i.w	$a0, 251904
	movgr2fr.w	$fs0, $a0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 8
	fld.s	$fa1, $fp, 12
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 144
	fld.s	$fa1, $fp, 148
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 280
	fld.s	$fa1, $fp, 284
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 416
	fld.s	$fa1, $fp, 420
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 552
	fld.s	$fa1, $fp, 556
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 688
	fld.s	$fa1, $fp, 692
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 824
	fld.s	$fa1, $fp, 828
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 960
	fld.s	$fa1, $fp, 964
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1096
	fld.s	$fa1, $fp, 1100
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1232
	fld.s	$fa1, $fp, 1236
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1368
	fld.s	$fa1, $fp, 1372
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1504
	fld.s	$fa1, $fp, 1508
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1640
	fld.s	$fa1, $fp, 1644
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1776
	fld.s	$fa1, $fp, 1780
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1912
	fld.s	$fa1, $fp, 1916
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	fldx.s	$fa0, $fp, $a0
	ori	$a0, $zero, 2052
	fldx.s	$fa1, $fp, $a0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end8:
	.size	Oscar, .Lfunc_end8-Oscar
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
                                        # -- End function
	.type	seed,@object                    # @seed
	.bss
	.globl	seed
	.p2align	3, 0x0
seed:
	.dword	0                               # 0x0
	.size	seed, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"  %15.3f%15.3f"
	.size	.L.str.1, 15

	.type	e,@object                       # @e
	.bss
	.globl	e
	.p2align	2, 0x0
e:
	.space	1040
	.size	e, 1040

	.type	zr,@object                      # @zr
	.globl	zr
	.p2align	2, 0x0
zr:
	.word	0x00000000                      # float 0
	.size	zr, 4

	.type	zi,@object                      # @zi
	.globl	zi
	.p2align	2, 0x0
zi:
	.word	0x00000000                      # float 0
	.size	zi, 4

	.type	z,@object                       # @z
	.globl	z
	.p2align	2, 0x0
z:
	.space	2056
	.size	z, 2056

	.type	w,@object                       # @w
	.globl	w
	.p2align	2, 0x0
w:
	.space	2056
	.size	w, 2056

	.type	value,@object                   # @value
	.globl	value
	.p2align	2, 0x0
value:
	.word	0x00000000                      # float 0
	.size	value, 4

	.type	fixed,@object                   # @fixed
	.globl	fixed
	.p2align	2, 0x0
fixed:
	.word	0x00000000                      # float 0
	.size	fixed, 4

	.type	floated,@object                 # @floated
	.globl	floated
	.p2align	2, 0x0
floated:
	.word	0x00000000                      # float 0
	.size	floated, 4

	.type	permarray,@object               # @permarray
	.globl	permarray
	.p2align	2, 0x0
permarray:
	.space	44
	.size	permarray, 44

	.type	pctr,@object                    # @pctr
	.globl	pctr
	.p2align	2, 0x0
pctr:
	.word	0                               # 0x0
	.size	pctr, 4

	.type	tree,@object                    # @tree
	.globl	tree
	.p2align	3, 0x0
tree:
	.dword	0
	.size	tree, 8

	.type	stack,@object                   # @stack
	.globl	stack
	.p2align	2, 0x0
stack:
	.space	16
	.size	stack, 16

	.type	cellspace,@object               # @cellspace
	.globl	cellspace
	.p2align	2, 0x0
cellspace:
	.space	152
	.size	cellspace, 152

	.type	freelist,@object                # @freelist
	.globl	freelist
	.p2align	2, 0x0
freelist:
	.word	0                               # 0x0
	.size	freelist, 4

	.type	movesdone,@object               # @movesdone
	.globl	movesdone
	.p2align	2, 0x0
movesdone:
	.word	0                               # 0x0
	.size	movesdone, 4

	.type	ima,@object                     # @ima
	.globl	ima
	.p2align	2, 0x0
ima:
	.space	6724
	.size	ima, 6724

	.type	imb,@object                     # @imb
	.globl	imb
	.p2align	2, 0x0
imb:
	.space	6724
	.size	imb, 6724

	.type	imr,@object                     # @imr
	.globl	imr
	.p2align	2, 0x0
imr:
	.space	6724
	.size	imr, 6724

	.type	rma,@object                     # @rma
	.globl	rma
	.p2align	2, 0x0
rma:
	.space	6724
	.size	rma, 6724

	.type	rmb,@object                     # @rmb
	.globl	rmb
	.p2align	2, 0x0
rmb:
	.space	6724
	.size	rmb, 6724

	.type	rmr,@object                     # @rmr
	.globl	rmr
	.p2align	2, 0x0
rmr:
	.space	6724
	.size	rmr, 6724

	.type	piececount,@object              # @piececount
	.globl	piececount
	.p2align	2, 0x0
piececount:
	.space	16
	.size	piececount, 16

	.type	class,@object                   # @class
	.globl	class
	.p2align	2, 0x0
class:
	.space	52
	.size	class, 52

	.type	piecemax,@object                # @piecemax
	.globl	piecemax
	.p2align	2, 0x0
piecemax:
	.space	52
	.size	piecemax, 52

	.type	puzzl,@object                   # @puzzl
	.globl	puzzl
	.p2align	2, 0x0
puzzl:
	.space	2048
	.size	puzzl, 2048

	.type	p,@object                       # @p
	.globl	p
	.p2align	2, 0x0
p:
	.space	26624
	.size	p, 26624

	.type	n,@object                       # @n
	.globl	n
	.p2align	2, 0x0
n:
	.word	0                               # 0x0
	.size	n, 4

	.type	kount,@object                   # @kount
	.globl	kount
	.p2align	2, 0x0
kount:
	.word	0                               # 0x0
	.size	kount, 4

	.type	sortlist,@object                # @sortlist
	.globl	sortlist
	.p2align	2, 0x0
sortlist:
	.space	20004
	.size	sortlist, 20004

	.type	biggest,@object                 # @biggest
	.globl	biggest
	.p2align	2, 0x0
biggest:
	.word	0                               # 0x0
	.size	biggest, 4

	.type	littlest,@object                # @littlest
	.globl	littlest
	.p2align	2, 0x0
littlest:
	.word	0                               # 0x0
	.size	littlest, 4

	.type	top,@object                     # @top
	.globl	top
	.p2align	2, 0x0
top:
	.word	0                               # 0x0
	.size	top, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym e
	.addrsig_sym z
	.addrsig_sym w
