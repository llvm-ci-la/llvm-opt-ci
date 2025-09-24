	.file	"newmdct.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mdct_sub48
.LCPI0_0:
	.dword	0x3ff921fb54442d18              # double 1.5707963267948966
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.dword	5                               # 0x5
	.dword	4                               # 0x4
	.text
	.globl	mdct_sub48
	.p2align	5
	.type	mdct_sub48,@function
mdct_sub48:                             # @mdct_sub48
# %bb.0:
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 328                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 320                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 312                  # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(mdct_sub48.init)
	ld.w	$a5, $fp, %pc_lo12(mdct_sub48.init)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s3, $a1
	move	$s2, $a0
	bnez	$a5, .LBB0_2
# %bb.1:
	pcaddu18i	$ra, %call36(mdct_init48)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(mdct_sub48.init)
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, %pc_lo12(mdct_sub48.init)
.LBB0_2:
	ld.w	$a0, $s2, 204
	blez	$a0, .LBB0_35
# %bb.3:                                # %.preheader219.lr.ph
	pcalau12i	$a0, %pc_hi20(sb_sample)
	addi.d	$a1, $a0, %pc_lo12(sb_sample)
	move	$fp, $zero
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	add.d	$s0, $a1, $a0
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3584
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %._crit_edge.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $s2, 204
	addi.d	$fp, $fp, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s0, $s0, $a1
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	bge	$fp, $a0, .LBB0_35
.LBB0_5:                                # %.preheader219
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_9 Depth 3
                                        #       Child Loop BB0_14 Depth 3
                                        #       Child Loop BB0_22 Depth 3
                                        #         Child Loop BB0_31 Depth 4
                                        #         Child Loop BB0_26 Depth 4
	ld.w	$a0, $s2, 200
	blez	$a0, .LBB0_4
# %bb.6:                                # %.lr.ph263
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s7, $zero
	alsl.d	$a0, $fp, $fp, 3
	slli.d	$a1, $a0, 9
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 120
	mul.d	$a1, $fp, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 10
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s6, $a1, $a0
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=2
	ld.w	$a0, $s2, 200
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s7, $s7, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	bge	$s7, $a0, .LBB0_33
.LBB0_8:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
                                        #       Child Loop BB0_14 Depth 3
                                        #       Child Loop BB0_22 Depth 3
                                        #         Child Loop BB0_31 Depth 4
                                        #         Child Loop BB0_26 Depth 4
	ori	$a0, $zero, 1
	sub.d	$a0, $a0, $s7
	alsl.d	$a0, $a0, $a0, 3
	slli.d	$a0, $a0, 9
	add.d	$s8, $s6, $a0
	ori	$fp, $zero, 9
	move	$s5, $s8
	.p2align	4, , 16
.LBB0_9:                                #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(window_subband)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 64
	addi.d	$a1, $s5, 256
	pcaddu18i	$ra, %call36(window_subband)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s5, 264
	fld.d	$fa1, $s5, 280
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s5, 264
	fld.d	$fa0, $s5, 296
	fneg.d	$fa1, $fa1
	fst.d	$fa1, $s5, 280
	fld.d	$fa1, $s5, 312
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s5, 296
	fld.d	$fa0, $s5, 328
	fneg.d	$fa1, $fa1
	fst.d	$fa1, $s5, 312
	fld.d	$fa1, $s5, 344
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s5, 328
	fld.d	$fa0, $s5, 360
	fneg.d	$fa1, $fa1
	fst.d	$fa1, $s5, 344
	fld.d	$fa1, $s5, 376
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s5, 360
	fld.d	$fa0, $s5, 392
	fneg.d	$fa1, $fa1
	fst.d	$fa1, $s5, 376
	fld.d	$fa1, $s5, 408
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s5, 392
	fld.d	$fa0, $s5, 424
	fneg.d	$fa1, $fa1
	fst.d	$fa1, $s5, 408
	fld.d	$fa1, $s5, 440
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s5, 424
	fld.d	$fa0, $s5, 456
	fneg.d	$fa1, $fa1
	fst.d	$fa1, $s5, 440
	fld.d	$fa1, $s5, 472
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s5, 456
	fld.d	$fa0, $s5, 488
	fneg.d	$fa1, $fa1
	fld.d	$fa2, $s5, 504
	fst.d	$fa1, $s5, 472
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s5, 488
	fneg.d	$fa0, $fa2
	fst.d	$fa0, $s5, 504
	addi.d	$s3, $s3, 128
	addi.w	$fp, $fp, -1
	addi.d	$s5, $s5, 512
	bnez	$fp, .LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=2
	ld.w	$a0, $s2, 256
	lu12i.w	$a1, 1
	ori	$s1, $a1, 256
	bnez	$a0, .LBB0_20
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=2
	ld.w	$a0, $s2, 252
	ld.w	$a1, $s2, 248
	addi.d	$fp, $a0, 1
	addi.w	$a2, $fp, 0
	bge	$a2, $a1, .LBB0_20
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB0_8 Depth=2
	fld.s	$fs0, $s2, 232
	fld.s	$fs1, $s2, 240
	fcvt.d.s	$fs2, $fs0
	fcvt.d.s	$fs3, $fs1
	addi.w	$s0, $a0, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$s4, $a0, $a1, 3
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %.loopexit216
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.w	$a0, $s2, 248
	addi.d	$fp, $fp, 1
	addi.w	$s0, $s0, 1
	addi.d	$s4, $s4, 8
	bge	$fp, $a0, .LBB0_20
.LBB0_14:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -961
	fdiv.d	$fs4, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fs4, $fs2
	bcnez	$fcc0, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=3
	fld.s	$fa0, $s2, 236
	fcvt.d.s	$fa1, $fa0
	fcmp.cule.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB0_17
# %bb.16:                               # %.loopexit217.loopexit
                                        #   in Loop: Header=BB0_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	fsub.d	$fa2, $fs2, $fs4
	fmul.d	$fa1, $fa2, $fa1
	fsub.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s4, 0
	fld.d	$fa2, $s4, 256
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s4, 0
	fld.d	$fa1, $s4, 512
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s4, 256
	fld.d	$fa2, $s4, 768
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s4, 512
	fld.d	$fa1, $s4, 1024
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s4, 768
	fld.d	$fa2, $s4, 1280
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s4, 1024
	fld.d	$fa1, $s4, 1536
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s4, 1280
	fld.d	$fa2, $s4, 1792
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s4, 1536
	ori	$a0, $zero, 2048
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s4, 1792
	ori	$a1, $zero, 2304
	fldx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	ori	$a0, $zero, 2560
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fstx.d	$fa2, $s4, $a1
	ori	$a1, $zero, 2816
	fldx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	ori	$a0, $zero, 3072
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fstx.d	$fa2, $s4, $a1
	ori	$a1, $zero, 3328
	fldx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	ori	$a0, $zero, 3584
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fstx.d	$fa2, $s4, $a1
	ori	$a1, $zero, 3840
	fldx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	lu12i.w	$a0, 1
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fldx.d	$fa3, $s4, $s1
	fstx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	fmul.d	$fa0, $fa0, $fa3
	fstx.d	$fa0, $s4, $s1
.LBB0_17:                               # %.loopexit217
                                        #   in Loop: Header=BB0_14 Depth=3
	fcmp.cule.d	$fcc0, $fs4, $fs3
	bcnez	$fcc0, .LBB0_13
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=3
	fld.s	$fa0, $s2, 244
	fcvt.d.s	$fa1, $fa0
	fcmp.cule.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB0_13
# %bb.19:                               # %.loopexit216.loopexit
                                        #   in Loop: Header=BB0_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_0)
	fsub.d	$fa1, $fa1, $fs4
	fmul.d	$fa1, $fa1, $fa2
	fsub.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s4, 0
	fld.d	$fa2, $s4, 256
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s4, 0
	fld.d	$fa1, $s4, 512
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s4, 256
	fld.d	$fa2, $s4, 768
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s4, 512
	fld.d	$fa1, $s4, 1024
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s4, 768
	fld.d	$fa2, $s4, 1280
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s4, 1024
	fld.d	$fa1, $s4, 1536
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s4, 1280
	fld.d	$fa2, $s4, 1792
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s4, 1536
	ori	$a0, $zero, 2048
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s4, 1792
	ori	$a1, $zero, 2304
	fldx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	ori	$a0, $zero, 2560
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fstx.d	$fa2, $s4, $a1
	ori	$a1, $zero, 2816
	fldx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	ori	$a0, $zero, 3072
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fstx.d	$fa2, $s4, $a1
	ori	$a1, $zero, 3328
	fldx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	ori	$a0, $zero, 3584
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fstx.d	$fa2, $s4, $a1
	ori	$a1, $zero, 3840
	fldx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	lu12i.w	$a0, 1
	fldx.d	$fa1, $s4, $a0
	fmul.d	$fa2, $fa0, $fa2
	fldx.d	$fa3, $s4, $s1
	fstx.d	$fa2, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s4, $a0
	fmul.d	$fa0, $fa0, $fa3
	fstx.d	$fa0, $s4, $s1
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_20:                               # %.loopexit218
                                        #   in Loop: Header=BB0_8 Depth=2
	alsl.d	$a0, $s7, $s7, 3
	slli.d	$a1, $a0, 10
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$s5, $a2, $a1
	ori	$a1, $zero, 240
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	mul.d	$a1, $s7, $a1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$fp, $a2, $a1
	slli.d	$a0, $a0, 9
	pcalau12i	$a1, %pc_hi20(ca.7)
	fld.d	$fa0, $a1, %pc_lo12(ca.7)
	add.d	$s7, $s6, $a0
	pcalau12i	$a0, %pc_hi20(cs.7)
	fld.d	$fa1, $a0, %pc_lo12(cs.7)
	fst.d	$fa1, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 304                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 288                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ca.6)
	fld.d	$fa0, $a0, %pc_lo12(ca.6)
	pcalau12i	$a0, %pc_hi20(cs.6)
	fld.d	$fa1, $a0, %pc_lo12(cs.6)
	fst.d	$fa1, $sp, 272                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ca.5)
	fld.d	$fa1, $a0, %pc_lo12(ca.5)
	fst.d	$fa0, $sp, 280                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 256                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(cs.5)
	fld.d	$fa0, $a0, %pc_lo12(cs.5)
	fst.d	$fa0, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 264                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa1
	fst.d	$fa0, $sp, 240                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ca.4)
	fld.d	$fa0, $a0, %pc_lo12(ca.4)
	pcalau12i	$a0, %pc_hi20(cs.4)
	fld.d	$fa1, $a0, %pc_lo12(cs.4)
	fst.d	$fa1, $sp, 224                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ca.3)
	fld.d	$fa1, $a0, %pc_lo12(ca.3)
	fst.d	$fa0, $sp, 232                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(cs.3)
	fld.d	$fa0, $a0, %pc_lo12(cs.3)
	fst.d	$fa0, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 216                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa1
	fst.d	$fa0, $sp, 192                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ca.2)
	fld.d	$fa0, $a0, %pc_lo12(ca.2)
	pcalau12i	$a0, %pc_hi20(cs.2)
	fld.d	$fs6, $a0, %pc_lo12(cs.2)
	pcalau12i	$a0, %pc_hi20(ca.1)
	fld.d	$fa1, $a0, %pc_lo12(ca.1)
	pcalau12i	$a0, %pc_hi20(cs.1)
	fld.d	$fs5, $a0, %pc_lo12(cs.1)
	pcalau12i	$a0, %pc_hi20(ca.0)
	fld.d	$fa2, $a0, %pc_lo12(ca.0)
	pcalau12i	$a0, %pc_hi20(cs.0)
	fld.d	$fs0, $a0, %pc_lo12(cs.0)
	fst.d	$fa0, $sp, 184                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 176                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa1
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fa2, $sp, 168                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa2
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(win)
	addi.d	$s6, $a0, %pc_lo12(win)
	fld.d	$fa0, $s6, 592
	fst.d	$fa0, $sp, 136                  # 8-byte Folded Spill
	fld.d	$fa0, $s6, 584
	fst.d	$fa0, $sp, 128                  # 8-byte Folded Spill
	fld.d	$fa0, $s6, 576
	fst.d	$fa0, $sp, 120                  # 8-byte Folded Spill
	move	$s0, $zero
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %.loopexit
                                        #   in Loop: Header=BB0_22 Depth=3
	addi.d	$s0, $s0, 1
	addi.d	$s5, $s5, 144
	ori	$a0, $zero, 32
	beq	$s0, $a0, .LBB0_7
.LBB0_22:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_31 Depth 4
                                        #         Child Loop BB0_26 Depth 4
	ld.w	$a0, $s2, 248
	ld.w	$s4, $fp, 72
	bge	$s0, $a0, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=3
	ld.w	$a0, $s2, 252
	bge	$a0, $s0, .LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=3
	alsl.d	$a2, $s0, $s7, 3
	slli.d	$a1, $s0, 3
	alsl.d	$a0, $s0, $s8, 3
	ori	$a3, $zero, 2
	bne	$s4, $a3, .LBB0_30
# %bb.25:                               # %.preheader213
                                        #   in Loop: Header=BB0_22 Depth=3
	ori	$a3, $zero, 2048
	fldx.d	$fa0, $a2, $a3
	ori	$a4, $zero, 2304
	fldx.d	$fa1, $a2, $a4
	ori	$a5, $zero, 3584
	fldx.d	$fa2, $a2, $a5
	ori	$a5, $zero, 3840
	fldx.d	$fa3, $a2, $a5
	fld.d	$fa5, $sp, 136                  # 8-byte Folded Reload
	fmsub.d	$fa0, $fa0, $fa5, $fa1
	fst.d	$fa0, $s6, 624
	fmadd.d	$fa0, $fa3, $fa5, $fa2
	fld.d	$fa1, $a0, 512
	fld.d	$fa4, $a0, 768
	fst.d	$fa0, $s6, 648
	fmsub.d	$fa0, $fa2, $fa5, $fa3
	fst.d	$fa0, $s6, 672
	fmadd.d	$fa0, $fa4, $fa5, $fa1
	fldx.d	$fa2, $a0, $a3
	fldx.d	$fa3, $a0, $a4
	fst.d	$fa0, $s6, 696
	fmsub.d	$fa0, $fa1, $fa5, $fa4
	fst.d	$fa0, $s6, 720
	fmadd.d	$fa0, $fa3, $fa5, $fa2
	fld.d	$fa1, $a2, 1792
	ori	$a4, $zero, 2560
	fldx.d	$fa2, $a2, $a4
	ori	$a3, $zero, 3328
	fldx.d	$fa3, $a2, $a3
	lu12i.w	$a3, 1
	fldx.d	$fa4, $a2, $a3
	fst.d	$fa0, $s6, 744
	fld.d	$fa5, $sp, 128                  # 8-byte Folded Reload
	fmsub.d	$fa0, $fa1, $fa5, $fa2
	fst.d	$fa0, $s6, 616
	fmadd.d	$fa0, $fa4, $fa5, $fa3
	fld.d	$fa1, $a0, 256
	fld.d	$fa2, $a0, 1024
	fst.d	$fa0, $s6, 640
	fmsub.d	$fa0, $fa3, $fa5, $fa4
	fst.d	$fa0, $s6, 664
	fmadd.d	$fa0, $fa2, $fa5, $fa1
	fld.d	$fa3, $a0, 1792
	fldx.d	$fa4, $a0, $a4
	fst.d	$fa0, $s6, 688
	fmsub.d	$fa0, $fa1, $fa5, $fa2
	fst.d	$fa0, $s6, 712
	fmadd.d	$fa0, $fa4, $fa5, $fa3
	fld.d	$fa1, $a2, 1536
	ori	$a3, $zero, 2816
	fldx.d	$fa2, $a2, $a3
	ori	$a4, $zero, 3072
	fldx.d	$fa3, $a2, $a4
	fldx.d	$fa4, $a2, $s1
	fst.d	$fa0, $s6, 736
	fld.d	$fa5, $sp, 120                  # 8-byte Folded Reload
	fmsub.d	$fa0, $fa1, $fa5, $fa2
	fst.d	$fa0, $s6, 608
	fmadd.d	$fa0, $fa4, $fa5, $fa3
	fldx.d	$fa1, $s8, $a1
	fld.d	$fa2, $a0, 1280
	fst.d	$fa0, $s6, 632
	fmsub.d	$fa0, $fa3, $fa5, $fa4
	fst.d	$fa0, $s6, 656
	fmadd.d	$fa0, $fa2, $fa5, $fa1
	fld.d	$fa3, $a0, 1536
	fldx.d	$fa4, $a0, $a3
	fst.d	$fa0, $s6, 680
	fmsub.d	$fa0, $fa1, $fa5, $fa2
	fst.d	$fa0, $s6, 704
	fmadd.d	$fa0, $fa4, $fa5, $fa3
	fst.d	$fa0, $s6, 728
	vld	$vr0, $s6, 704
	vld	$vr1, $s6, 712
	vld	$vr2, $s6, 720
	vld	$vr3, $s6, 728
	vreplvei.d	$vr0, $vr0, 0
	vreplvei.d	$vr1, $vr1, 0
	vreplvei.d	$vr2, $vr2, 0
	vreplvei.d	$vr3, $vr3, 0
	vld	$vr4, $s6, 736
	vld	$vr5, $s6, 744
	vld	$vr6, $s6, 656
	vld	$vr7, $s6, 664
	vreplvei.d	$vr4, $vr4, 0
	vreplvei.d	$vr5, $vr5, 0
	vreplvei.d	$vr6, $vr6, 0
	vreplvei.d	$vr7, $vr7, 0
	vld	$vr8, $s6, 672
	vld	$vr9, $s6, 680
	vld	$vr10, $s6, 688
	vld	$vr11, $s6, 696
	vreplvei.d	$vr8, $vr8, 0
	vreplvei.d	$vr9, $vr9, 0
	vreplvei.d	$vr10, $vr10, 0
	vreplvei.d	$vr11, $vr11, 0
	vld	$vr12, $s6, 608
	vld	$vr13, $s6, 616
	vld	$vr14, $s6, 624
	vld	$vr15, $s6, 632
	vreplvei.d	$vr12, $vr12, 0
	vreplvei.d	$vr13, $vr13, 0
	vreplvei.d	$vr14, $vr14, 0
	vreplvei.d	$vr15, $vr15, 0
	vld	$vr17, $s6, 640
	vld	$vr18, $s6, 648
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr16, $a0, %pc_lo12(.LCPI0_1)
	vreplvei.d	$vr17, $vr17, 0
	vreplvei.d	$vr18, $vr18, 0
	ori	$a0, $zero, 192
	.p2align	4, , 16
.LBB0_26:                               # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a1, %pc_hi20(cos_s)
	addi.d	$a1, $a1, %pc_lo12(cos_s)
	add.d	$a2, $a1, $a0
	fld.d	$ft11, $a2, 48
	fldx.d	$ft12, $a1, $a0
	fld.d	$ft13, $a2, 56
	fld.d	$ft14, $a2, 8
	vextrins.d	$vr19, $vr20, 16
	vextrins.d	$vr21, $vr22, 16
	fld.d	$ft12, $a2, 64
	fld.d	$ft14, $a2, 16
	fld.d	$ft15, $a2, 72
	fld.d	$fs1, $a2, 24
	fld.d	$fs4, $a2, 80
	fld.d	$fs7, $a2, 32
	fld.d	$fs2, $a2, 88
	fld.d	$fs3, $a2, 40
	vextrins.d	$vr20, $vr22, 16
	vextrins.d	$vr23, $vr25, 16
	vextrins.d	$vr28, $vr31, 16
	vextrins.d	$vr26, $vr27, 16
	vfmul.d	$vr22, $vr21, $vr1
	vfmadd.d	$vr22, $vr19, $vr0, $vr22
	vfmadd.d	$vr22, $vr20, $vr2, $vr22
	vfmadd.d	$vr22, $vr23, $vr3, $vr22
	vfmadd.d	$vr22, $vr28, $vr4, $vr22
	vfmadd.d	$vr22, $vr26, $vr5, $vr22
	vrepli.d	$vr25, 24
	vmul.d	$vr25, $vr16, $vr25
	vpickve2gr.d	$a1, $vr25, 0
	add.d	$a1, $s5, $a1
	vpickve2gr.d	$a2, $vr25, 1
	add.d	$a2, $s5, $a2
	vstelm.d	$vr22, $a1, 16, 0
	vstelm.d	$vr22, $a2, 16, 1
	vfmul.d	$vr22, $vr21, $vr7
	vfmadd.d	$vr22, $vr19, $vr6, $vr22
	vfmadd.d	$vr22, $vr20, $vr8, $vr22
	vfmadd.d	$vr22, $vr23, $vr9, $vr22
	vfmadd.d	$vr22, $vr28, $vr10, $vr22
	vfmadd.d	$vr22, $vr26, $vr11, $vr22
	vstelm.d	$vr22, $a1, 8, 0
	vstelm.d	$vr22, $a2, 8, 1
	vfmul.d	$vr21, $vr21, $vr13
	vfmadd.d	$vr19, $vr19, $vr12, $vr21
	vfmadd.d	$vr19, $vr20, $vr14, $vr19
	vfmadd.d	$vr19, $vr23, $vr15, $vr19
	vfmadd.d	$vr19, $vr28, $vr17, $vr19
	vfmadd.d	$vr19, $vr26, $vr18, $vr19
	vstelm.d	$vr19, $a1, 0, 0
	vstelm.d	$vr19, $a2, 0, 1
	vrepli.d	$vr19, -2
	addi.d	$a0, $a0, -96
	addi.w	$a1, $zero, -96
	vadd.d	$vr16, $vr16, $vr19
	bne	$a0, $a1, .LBB0_26
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_27:                               #   in Loop: Header=BB0_22 Depth=3
	ori	$a2, $zero, 144
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_21
.LBB0_28:                               # %mdct_short.exit
                                        #   in Loop: Header=BB0_22 Depth=3
	ori	$a0, $zero, 2
	beq	$s4, $a0, .LBB0_21
# %bb.29:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_22 Depth=3
	fld.d	$fa0, $s5, -64
	fld.d	$fa1, $s5, 56
	fld.d	$fa4, $sp, 296                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa0, $fa4
	fld.d	$fa3, $sp, 304                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa1, $fa3, $fa2
	fld.d	$fa3, $sp, 288                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fld.d	$fa1, $s5, -56
	fld.d	$fa3, $s5, 48
	fst.d	$fa2, $s5, -64
	fst.d	$fa0, $s5, 56
	fld.d	$fa4, $sp, 272                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa4
	fld.d	$fa2, $sp, 280                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	fld.d	$fa2, $sp, 256                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa1, $fa3, $fa4, $fa1
	fld.d	$fa2, $s5, -48
	fld.d	$fa3, $s5, 40
	fst.d	$fa0, $s5, -56
	fst.d	$fa1, $s5, 48
	fld.d	$fa4, $sp, 248                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa4
	fld.d	$fa1, $sp, 264                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 240                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa4, $fa1
	fld.d	$fa2, $s5, -40
	fld.d	$fa3, $s5, 32
	fst.d	$fa0, $s5, -48
	fst.d	$fa1, $s5, 40
	fld.d	$fa4, $sp, 224                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa4
	fld.d	$fa1, $sp, 232                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa4, $fa1
	fld.d	$fa2, $s5, -32
	fld.d	$fa3, $s5, 24
	fst.d	$fa0, $s5, -40
	fst.d	$fa1, $s5, 32
	fld.d	$fa4, $sp, 200                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa4
	fld.d	$fa1, $sp, 216                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa4, $fa1
	fld.d	$fa2, $s5, -24
	fld.d	$fa3, $s5, 16
	fst.d	$fa0, $s5, -32
	fst.d	$fa1, $s5, 24
	fmul.d	$fa0, $fa2, $fs6
	fld.d	$fa1, $sp, 184                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fs6, $fa1
	fld.d	$fa2, $s5, -16
	fld.d	$fa3, $s5, 8
	fst.d	$fa0, $s5, -24
	fst.d	$fa1, $s5, 16
	fmul.d	$fa0, $fa2, $fs5
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 152                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fs5, $fa1
	fld.d	$fa2, $s5, -8
	fld.d	$fa3, $s5, 0
	fst.d	$fa0, $s5, -16
	fst.d	$fa1, $s5, 8
	fmul.d	$fa0, $fa2, $fs0
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 144                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fs0, $fa1
	fst.d	$fa0, $s5, -8
	fst.d	$fa1, $s5, 0
	b	.LBB0_21
.LBB0_30:                               # %.preheader215
                                        #   in Loop: Header=BB0_22 Depth=3
	alsl.d	$a3, $s4, $s4, 3
	slli.d	$a4, $a3, 5
	add.d	$a3, $s6, $a4
	ori	$a6, $zero, 2304
	fldx.d	$fa0, $a2, $a6
	fld.d	$fa1, $a3, 136
	fld.d	$fa2, $a3, 64
	ori	$a5, $zero, 2048
	fldx.d	$fa3, $a2, $a5
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $a3, 208
	fld.d	$fa4, $a3, 280
	fldx.d	$fa5, $a0, $a6
	fldx.d	$fa6, $a0, $a5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fst.d	$fa0, $s6, 672
	fmul.d	$fa0, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fst.d	$fa0, $s6, 744
	fld.d	$fa0, $a2, 1792
	ori	$a5, $zero, 2560
	fldx.d	$fa1, $a2, $a5
	fld.d	$fa2, $a0, 1792
	fldx.d	$fa3, $a0, $a5
	ori	$a5, $zero, 2816
	fldx.d	$fa4, $a2, $a5
	fld.d	$fa5, $a2, 1536
	vld	$vr6, $a3, 120
	vld	$vr7, $a3, 48
	vextrins.d	$vr4, $vr1, 16
	vbitrevi.d	$vr1, $vr4, 63
	vfmul.d	$vr1, $vr6, $vr1
	vextrins.d	$vr5, $vr0, 16
	vfmadd.d	$vr0, $vr7, $vr5, $vr1
	vst	$vr0, $s6, 656
	fldx.d	$fa0, $a0, $a5
	vld	$vr1, $a3, 264
	fld.d	$fa4, $a0, 1536
	vld	$vr5, $a3, 192
	vextrins.d	$vr0, $vr3, 16
	vfmul.d	$vr0, $vr1, $vr0
	vextrins.d	$vr4, $vr2, 16
	vfmadd.d	$vr0, $vr5, $vr4, $vr0
	vst	$vr0, $s6, 728
	fld.d	$fa0, $a2, 1280
	ori	$a5, $zero, 3072
	fldx.d	$fa1, $a2, $a5
	fld.d	$fa2, $a0, 1280
	fldx.d	$fa3, $a0, $a5
	ori	$a5, $zero, 3328
	fldx.d	$fa4, $a2, $a5
	fld.d	$fa5, $a2, 1024
	vld	$vr6, $a3, 104
	vld	$vr7, $a3, 32
	vextrins.d	$vr4, $vr1, 16
	vbitrevi.d	$vr1, $vr4, 63
	vfmul.d	$vr1, $vr6, $vr1
	vextrins.d	$vr5, $vr0, 16
	vfmadd.d	$vr0, $vr7, $vr5, $vr1
	vst	$vr0, $s6, 640
	fldx.d	$fa0, $a0, $a5
	vld	$vr1, $a3, 248
	fld.d	$fa4, $a0, 1024
	vld	$vr5, $a3, 176
	vextrins.d	$vr0, $vr3, 16
	vfmul.d	$vr0, $vr1, $vr0
	vextrins.d	$vr4, $vr2, 16
	vfmadd.d	$vr0, $vr5, $vr4, $vr0
	vst	$vr0, $s6, 712
	fld.d	$fa0, $a2, 768
	ori	$a5, $zero, 3584
	fldx.d	$fa1, $a2, $a5
	fld.d	$fa2, $a0, 768
	fldx.d	$fa3, $a0, $a5
	ori	$a5, $zero, 3840
	fldx.d	$fa4, $a2, $a5
	fld.d	$fa5, $a2, 512
	vld	$vr6, $a3, 88
	vld	$vr7, $a3, 16
	vextrins.d	$vr4, $vr1, 16
	vbitrevi.d	$vr1, $vr4, 63
	vfmul.d	$vr1, $vr6, $vr1
	vextrins.d	$vr5, $vr0, 16
	vfmadd.d	$vr0, $vr7, $vr5, $vr1
	vst	$vr0, $s6, 624
	fldx.d	$fa0, $a0, $a5
	vld	$vr1, $a3, 232
	fld.d	$fa4, $a0, 512
	vld	$vr5, $a3, 160
	vextrins.d	$vr0, $vr3, 16
	vfmul.d	$vr0, $vr1, $vr0
	vextrins.d	$vr4, $vr2, 16
	vfmadd.d	$vr0, $vr5, $vr4, $vr0
	vst	$vr0, $s6, 696
	fld.d	$fa0, $a2, 256
	lu12i.w	$a5, 1
	fldx.d	$fa1, $a2, $a5
	fld.d	$fa2, $a0, 256
	fldx.d	$fa3, $a0, $a5
	fldx.d	$fa4, $a2, $s1
	fldx.d	$fa5, $s7, $a1
	vld	$vr6, $a3, 72
	vldx	$vr7, $s6, $a4
	vextrins.d	$vr4, $vr1, 16
	vbitrevi.d	$vr1, $vr4, 63
	vfmul.d	$vr1, $vr6, $vr1
	vextrins.d	$vr5, $vr0, 16
	vfmadd.d	$vr0, $vr7, $vr5, $vr1
	vst	$vr0, $s6, 608
	fldx.d	$fa0, $a0, $s1
	vld	$vr1, $a3, 216
	fldx.d	$fa4, $s8, $a1
	vld	$vr5, $a3, 144
	vextrins.d	$vr0, $vr3, 16
	vfmul.d	$vr0, $vr1, $vr0
	vextrins.d	$vr4, $vr2, 16
	vfmadd.d	$vr0, $vr5, $vr4, $vr0
	vst	$vr0, $s6, 680
	fld.d	$fa0, $s6, 608
	fld.d	$fa1, $s6, 616
	fld.d	$fa2, $s6, 624
	fld.d	$fa3, $s6, 632
	fld.d	$fa4, $s6, 640
	fld.d	$fa5, $s6, 648
	fld.d	$fa6, $s6, 656
	fld.d	$fa7, $s6, 664
	fld.d	$ft0, $s6, 672
	fld.d	$ft1, $s6, 680
	fld.d	$ft2, $s6, 688
	fld.d	$ft3, $s6, 696
	fld.d	$ft4, $s6, 704
	fld.d	$ft5, $s6, 712
	fld.d	$ft6, $s6, 720
	fld.d	$ft7, $s6, 728
	fld.d	$ft8, $s6, 736
	pcalau12i	$a0, %pc_hi20(cos_l+112)
	addi.d	$a0, $a0, %pc_lo12(cos_l+112)
	fld.d	$ft9, $s6, 744
	ori	$a1, $zero, 44
	.p2align	4, , 16
.LBB0_31:                               # %.preheader214
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$ft10, $a0, -104
	fld.d	$ft11, $a0, -112
	fmul.d	$ft10, $fa1, $ft10
	fmadd.d	$ft10, $fa0, $ft11, $ft10
	fld.d	$ft11, $a0, -96
	fld.d	$ft12, $a0, -88
	fld.d	$ft13, $a0, -80
	fld.d	$ft14, $a0, -72
	fmadd.d	$ft10, $fa2, $ft11, $ft10
	fmadd.d	$ft10, $fa3, $ft12, $ft10
	fmadd.d	$ft10, $fa4, $ft13, $ft10
	fmadd.d	$ft10, $fa5, $ft14, $ft10
	fld.d	$ft11, $a0, -64
	fld.d	$ft12, $a0, -56
	fld.d	$ft13, $a0, -48
	fld.d	$ft14, $a0, -40
	fmadd.d	$ft10, $fa6, $ft11, $ft10
	fmadd.d	$ft10, $fa7, $ft12, $ft10
	fmadd.d	$ft10, $ft0, $ft13, $ft10
	fmadd.d	$ft10, $ft1, $ft14, $ft10
	fld.d	$ft11, $a0, -32
	fld.d	$ft12, $a0, -24
	fld.d	$ft13, $a0, -16
	fld.d	$ft14, $a0, -8
	fmadd.d	$ft10, $ft2, $ft11, $ft10
	fmadd.d	$ft10, $ft3, $ft12, $ft10
	fmadd.d	$ft10, $ft4, $ft13, $ft10
	fmadd.d	$ft10, $ft5, $ft14, $ft10
	fld.d	$ft11, $a0, 0
	fld.d	$ft12, $a0, 8
	fld.d	$ft13, $a0, 16
	fld.d	$ft14, $a0, 24
	fmadd.d	$ft10, $ft6, $ft11, $ft10
	fmadd.d	$ft10, $ft7, $ft12, $ft10
	fmadd.d	$ft10, $ft8, $ft13, $ft10
	fmadd.d	$ft10, $ft9, $ft14, $ft10
	pcalau12i	$a2, %pc_hi20(all)
	addi.d	$a2, $a2, %pc_lo12(all)
	ldx.w	$a2, $a2, $a1
	slli.d	$a2, $a2, 3
	fstx.d	$ft10, $s5, $a2
	addi.d	$a1, $a1, -4
	addi.w	$a2, $zero, -4
	addi.d	$a0, $a0, 144
	bne	$a1, $a2, .LBB0_31
# %bb.32:                               # %mdct_long.exit
                                        #   in Loop: Header=BB0_22 Depth=3
	fld.d	$fa0, $s6, 608
	fld.d	$fa1, $s6, 648
	fld.d	$fa2, $s6, 728
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa2
	fld.d	$fa1, $s6, 616
	fld.d	$fa2, $s6, 640
	fld.d	$fa3, $s6, 736
	fld.d	$fa4, $s6, 624
	fld.d	$fa5, $s6, 632
	fld.d	$fa6, $s6, 744
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $fa1, $fa3
	fadd.d	$fa1, $fa4, $fa5
	fadd.d	$fa1, $fa1, $fa6
	fld.d	$fa3, $s6, 656
	fld.d	$fa4, $s6, 680
	fld.d	$fa5, $s6, 720
	fld.d	$fa6, $s6, 664
	fld.d	$fa7, $s6, 688
	fld.d	$ft0, $s6, 712
	fsub.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa5
	fsub.d	$fa4, $fa6, $fa7
	fadd.d	$fa4, $fa4, $ft0
	fld.d	$fa5, $s6, 672
	fld.d	$fa6, $s6, 696
	fld.d	$fa7, $s6, 704
	fld.d	$ft0, $a0, -104
	fld.d	$ft1, $a0, -112
	fsub.d	$fa5, $fa5, $fa6
	fadd.d	$fa5, $fa5, $fa7
	fmul.d	$fa6, $fa2, $ft0
	fmadd.d	$fa6, $fa0, $ft1, $fa6
	fld.d	$fa7, $a0, -96
	fld.d	$ft0, $a0, -88
	fld.d	$ft1, $a0, -80
	fld.d	$ft2, $a0, -72
	fmadd.d	$fa6, $fa1, $fa7, $fa6
	fmadd.d	$fa6, $fa3, $ft0, $fa6
	fmadd.d	$fa6, $fa4, $ft1, $fa6
	fmadd.d	$fa6, $fa5, $ft2, $fa6
	fst.d	$fa6, $s5, 128
	fld.d	$fa6, $a0, -56
	fld.d	$fa7, $a0, -64
	fmul.d	$fa6, $fa2, $fa6
	fmadd.d	$fa6, $fa0, $fa7, $fa6
	fld.d	$fa7, $a0, -48
	fld.d	$ft0, $a0, -40
	fld.d	$ft1, $a0, -32
	fld.d	$ft2, $a0, -24
	fmadd.d	$fa6, $fa1, $fa7, $fa6
	fmadd.d	$fa6, $fa3, $ft0, $fa6
	fmadd.d	$fa6, $fa4, $ft1, $fa6
	fmadd.d	$fa6, $fa5, $ft2, $fa6
	fst.d	$fa6, $s5, 80
	fld.d	$fa6, $a0, -8
	fld.d	$fa7, $a0, -16
	fmul.d	$fa6, $fa2, $fa6
	fmadd.d	$fa6, $fa0, $fa7, $fa6
	fld.d	$fa7, $a0, 0
	fld.d	$ft0, $a0, 8
	fld.d	$ft1, $a0, 16
	fld.d	$ft2, $a0, 24
	fmadd.d	$fa6, $fa1, $fa7, $fa6
	fmadd.d	$fa6, $fa3, $ft0, $fa6
	fmadd.d	$fa6, $fa4, $ft1, $fa6
	fmadd.d	$fa6, $fa5, $ft2, $fa6
	fst.d	$fa6, $s5, 56
	fld.d	$fa6, $a0, 40
	fld.d	$fa7, $a0, 32
	fmul.d	$fa6, $fa2, $fa6
	fmadd.d	$fa6, $fa0, $fa7, $fa6
	fld.d	$fa7, $a0, 48
	fld.d	$ft0, $a0, 56
	fld.d	$ft1, $a0, 64
	fld.d	$ft2, $a0, 72
	fmadd.d	$fa6, $fa1, $fa7, $fa6
	fmadd.d	$fa6, $fa3, $ft0, $fa6
	fmadd.d	$fa6, $fa4, $ft1, $fa6
	fmadd.d	$fa6, $fa5, $ft2, $fa6
	fst.d	$fa6, $s5, 8
	fsub.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa5
	fld.d	$fa2, $a0, 88
	fld.d	$fa5, $a0, 80
	fsub.d	$fa1, $fa1, $fa3
	fsub.d	$fa1, $fa1, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fa0, $fa5, $fa2
	fst.d	$fa2, $s5, 104
	fld.d	$fa2, $a0, 104
	fld.d	$fa3, $a0, 96
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fst.d	$fa0, $s5, 32
	bnez	$s0, .LBB0_28
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_33:                               # %._crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_4
# %bb.34:                               #   in Loop: Header=BB0_5 Depth=1
	lu12i.w	$a0, 1
	ori	$a2, $a0, 512
	add.d	$a1, $s6, $a2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB0_4
.LBB0_35:                               # %._crit_edge270
	fld.d	$fs7, $sp, 312                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 320                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 328                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 352                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 368                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end0:
	.size	mdct_sub48, .Lfunc_end0-mdct_sub48
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mdct_init48
.LCPI1_0:
	.dword	0x3fb657184ae74487              # double 0.087266462599716474
.LCPI1_4:
	.dword	0x3f9657184ae74487              # double 0.021816615649929118
.LCPI1_5:
	.dword	0x4043000000000000              # double 38
.LCPI1_6:
	.dword	0x4045000000000000              # double 42
.LCPI1_7:
	.dword	0x4047000000000000              # double 46
.LCPI1_8:
	.dword	0x4049000000000000              # double 50
.LCPI1_9:
	.dword	0x404b000000000000              # double 54
.LCPI1_10:
	.dword	0x404d000000000000              # double 58
.LCPI1_11:
	.dword	0x404f000000000000              # double 62
.LCPI1_12:
	.dword	0x4050800000000000              # double 66
.LCPI1_13:
	.dword	0x4051800000000000              # double 70
.LCPI1_14:
	.dword	0x405b800000000000              # double 110
.LCPI1_15:
	.dword	0x405c800000000000              # double 114
.LCPI1_16:
	.dword	0x405d800000000000              # double 118
.LCPI1_17:
	.dword	0x405e800000000000              # double 122
.LCPI1_18:
	.dword	0x405f800000000000              # double 126
.LCPI1_19:
	.dword	0x4060400000000000              # double 130
.LCPI1_20:
	.dword	0x4060c00000000000              # double 134
.LCPI1_21:
	.dword	0x4061400000000000              # double 138
.LCPI1_22:
	.dword	0x4061c00000000000              # double 142
.LCPI1_37:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI1_38:
	.dword	0x3f90000000000000              # double 0.015625
.LCPI1_39:
	.dword	0x3f00000000000000              # double 3.0517578125E-5
.LCPI1_42:
	.dword	0x3fefb9ea92ec689c              # double 0.99144486137381049
.LCPI1_54:
	.dword	0x3fe963268b572493              # double 0.79335334029123528
.LCPI1_55:
	.dword	0x3fd5555555555555              # double 0.33333333333333331
.LCPI1_56:
	.dword	0x3fc0b5150f6da2d5              # double 0.13052619222005171
.LCPI1_57:
	.dword	0xbfefb9ea92ec689b              # double -0.99144486137381038
.LCPI1_58:
	.dword	0xbfd87de2a6aea96d              # double -0.38268343236509034
.LCPI1_59:
	.dword	0xbfed906bcf328d43              # double -0.92387953251128641
.LCPI1_60:
	.dword	0x3fe37af93f9513f3              # double 0.60876142900872166
.LCPI1_61:
	.dword	0xbfe963268b572484              # double -0.79335334029123361
.LCPI1_62:
	.dword	0xbfe963268b572493              # double -0.79335334029123528
.LCPI1_63:
	.dword	0xbfe37af93f9513d8              # double -0.60876142900871866
.LCPI1_64:
	.dword	0x3fed906bcf328d46              # double 0.92387953251128674
.LCPI1_65:
	.dword	0xbfd87de2a6aea959              # double -0.38268343236508923
.LCPI1_66:
	.dword	0xbfefb9ea92ec689d              # double -0.9914448613738106
.LCPI1_67:
	.dword	0xbfc0b5150f6da27e              # double -0.1305261922200493
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.dword	0x3fefb9ea92ec689c              # double 0.99144486137381049
	.dword	0x3fed906bcf328d49              # double 0.92387953251128707
.LCPI1_2:
	.dword	0x3fe963268b572498              # double 0.79335334029123583
	.dword	0x3fe37af93f9513ed              # double 0.60876142900872099
.LCPI1_3:
	.dword	0x3fd87de2a6aea96f              # double 0.38268343236509045
	.dword	0x3fc0b5150f6da2f6              # double 0.13052619222005263
.LCPI1_23:
	.dword	0xbfb150dd8dd9d8bf              # double -0.067640158778746504
	.dword	0x3fa5c53b3ed42489              # double 0.042520381373898415
.LCPI1_24:
	.dword	0xbf8db3b3a9a67635              # double -0.014502910246672144
	.dword	0x3fb69105d1310418              # double 0.088150371143470685
.LCPI1_25:
	.dword	0xbfba477c4665d2fd              # double -0.10265328139014325
	.dword	0x3fbc337b2d43eb39              # double 0.11016054015264566
.LCPI1_26:
	.dword	0x3f8db3b3a9a6765a              # double 0.014502910246672208
	.dword	0x3fba477c4665d2ef              # double 0.10265328139014306
.LCPI1_27:
	.dword	0xbfb150dd8dd9d8c0              # double -0.067640158778746517
	.dword	0xbfbc337b2d43eb38              # double -0.11016054015264565
.LCPI1_28:
	.dword	0x3fa5c53b3ed424bf              # double 0.04252038137389879
	.dword	0x3fb69105d1310415              # double 0.088150371143470643
.LCPI1_29:
	.dword	0x3fbc337b2d43eb35              # double 0.11016054015264561
	.dword	0x3fa5c53b3ed424be              # double 0.042520381373898783
.LCPI1_30:
	.dword	0xbfb69105d1310415              # double -0.088150371143470643
	.dword	0x3f8db3b3a9a676b8              # double 0.014502910246672371
.LCPI1_31:
	.dword	0xbfba477c4665d2ea              # double -0.10265328139014299
	.dword	0xbfb150dd8dd9d8cb              # double -0.06764015877874667
.LCPI1_32:
	.dword	0xbfb69105d131040f              # double -0.08815037114347056
	.dword	0xbfba477c4665d2e8              # double -0.10265328139014296
.LCPI1_33:
	.dword	0xbfbc337b2d43eb34              # double -0.11016054015264559
	.dword	0xbfb150dd8dd9d8d2              # double -0.067640158778746767
.LCPI1_34:
	.dword	0xbfa5c53b3ed424d2              # double -0.042520381373898922
	.dword	0xbf8db3b3a9a67701              # double -0.014502910246672497
.LCPI1_35:
	.dword	0xbfba477c4665d2f0              # double -0.10265328139014307
	.dword	0xbfa5c53b3ed424c1              # double -0.042520381373898804
.LCPI1_36:
	.dword	0x3fa5c53b3ed424d4              # double 0.042520381373898936
	.dword	0xbfba477c4665d2e6              # double -0.10265328139014293
.LCPI1_40:
	.dword	0x3fefb9ea92ec689b              # double 0.99144486137381038
	.dword	0x3fed906bcf328d46              # double 0.92387953251128674
.LCPI1_41:
	.dword	0x3fc0d9fd31c98bf8              # double 0.13165249758739583
	.dword	0x3fda827999fcef32              # double 0.41421356237309503
.LCPI1_43:
	.dword	0x3fe37af93f9513ea              # double 0.60876142900872066
	.dword	0x3fd87de2a6aea964              # double 0.38268343236508984
.LCPI1_44:
	.dword	0xbfe963268b572491              # double -0.79335334029123505
	.dword	0xbfed906bcf328d46              # double -0.92387953251128674
.LCPI1_45:
	.dword	0xbfed906bcf328d46              # double -0.92387953251128674
	.dword	0xbfed906bcf328d47              # double -0.92387953251128685
.LCPI1_46:
	.dword	0x3fd87de2a6aea96f              # double 0.38268343236509045
	.dword	0xbfd87de2a6aea965              # double -0.38268343236508989
.LCPI1_47:
	.dword	0xbfc0b5150f6da2f1              # double -0.13052619222005249
	.dword	0x3fed906bcf328d44              # double 0.92387953251128651
.LCPI1_48:
	.dword	0x3fefb9ea92ec689a              # double 0.99144486137381027
	.dword	0x3fd87de2a6aea991              # double 0.38268343236509234
.LCPI1_49:
	.dword	0x3fc0b5150f6da293              # double 0.13052619222004988
	.dword	0x3fed906bcf328d4d              # double 0.92387953251128752
.LCPI1_50:
	.dword	0xbfd87de2a6aea965              # double -0.38268343236508989
	.dword	0xbfd87de2a6aea971              # double -0.38268343236509056
.LCPI1_51:
	.dword	0xbfed906bcf328d4e              # double -0.92387953251128763
	.dword	0x3fed906bcf328d47              # double 0.92387953251128685
.LCPI1_52:
	.dword	0xbfe963268b572493              # double -0.79335334029123528
	.dword	0x3fed906bcf328d4c              # double 0.9238795325112874
.LCPI1_53:
	.dword	0xbfe37af93f9513d7              # double -0.60876142900871855
	.dword	0x3fd87de2a6aea91b              # double 0.38268343236508578
	.text
	.globl	mdct_init48
	.p2align	5
	.type	mdct_init48,@function
mdct_init48:                            # @mdct_init48
# %bb.0:                                # %.preheader209.preheader
	addi.d	$sp, $sp, -528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 440                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 432                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 424                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 392                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ca.0)
	lu12i.w	$a1, -207109
	ori	$a1, $a1, 3789
	lu32i.d	$a1, 30399
	lu52i.d	$a1, $a1, -1026
	st.d	$a1, $a0, %pc_lo12(ca.0)
	pcalau12i	$a0, %pc_hi20(cs.0)
	lu12i.w	$a1, 4345
	ori	$a1, $a1, 854
	lu32i.d	$a1, -298859
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, %pc_lo12(cs.0)
	pcalau12i	$a0, %pc_hi20(ca.1)
	lu12i.w	$a1, 296411
	ori	$a1, $a1, 1632
	lu32i.d	$a1, -118565
	lu52i.d	$a1, $a1, -1027
	st.d	$a1, $a0, %pc_lo12(ca.1)
	pcalau12i	$a0, %pc_hi20(cs.1)
	lu12i.w	$a1, -7174
	ori	$a1, $a1, 2060
	lu32i.d	$a1, -248006
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, %pc_lo12(cs.1)
	pcalau12i	$a0, %pc_hi20(ca.2)
	lu12i.w	$a1, 324720
	ori	$a1, $a1, 508
	lu32i.d	$a1, 265824
	lu52i.d	$a1, $a1, -1027
	st.d	$a1, $a0, %pc_lo12(ca.2)
	pcalau12i	$a0, %pc_hi20(cs.2)
	lu12i.w	$a1, -397701
	ori	$a1, $a1, 1390
	lu32i.d	$a1, -105637
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, %pc_lo12(cs.2)
	pcalau12i	$a0, %pc_hi20(ca.3)
	lu12i.w	$a1, -501679
	ori	$a1, $a1, 2796
	lu32i.d	$a1, 477422
	lu52i.d	$a1, $a1, -1028
	st.d	$a1, $a0, %pc_lo12(ca.3)
	pcalau12i	$a0, %pc_hi20(cs.3)
	lu12i.w	$a1, 172253
	ori	$a1, $a1, 347
	lu32i.d	$a1, -34992
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, %pc_lo12(cs.3)
	pcalau12i	$a0, %pc_hi20(ca.4)
	lu12i.w	$a1, -360667
	ori	$a1, $a1, 858
	lu32i.d	$a1, -510461
	lu52i.d	$a1, $a1, -1029
	st.d	$a1, $a0, %pc_lo12(ca.4)
	pcalau12i	$a0, %pc_hi20(cs.4)
	lu12i.w	$a1, 187696
	ori	$a1, $a1, 3931
	lu32i.d	$a1, -9400
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, %pc_lo12(cs.4)
	pcalau12i	$a0, %pc_hi20(ca.5)
	lu12i.w	$a1, -141280
	ori	$a1, $a1, 1744
	lu32i.d	$a1, 326000
	lu52i.d	$a1, $a1, -1030
	st.d	$a1, $a0, %pc_lo12(ca.5)
	pcalau12i	$a0, %pc_hi20(cs.5)
	lu12i.w	$a1, -458328
	ori	$a1, $a1, 260
	lu32i.d	$a1, -1761
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, %pc_lo12(cs.5)
	pcalau12i	$a0, %pc_hi20(ca.6)
	lu12i.w	$a1, -404070
	ori	$a1, $a1, 1985
	lu32i.d	$a1, -191453
	lu52i.d	$a1, $a1, -1032
	st.d	$a1, $a0, %pc_lo12(ca.6)
	pcalau12i	$a0, %pc_hi20(cs.6)
	lu12i.w	$a1, -422466
	ori	$a1, $a1, 1102
	lu32i.d	$a1, -212
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, %pc_lo12(cs.6)
	pcalau12i	$a0, %pc_hi20(ca.7)
	lu12i.w	$a1, -233331
	ori	$a1, $a1, 1012
	lu32i.d	$a1, -110744
	lu52i.d	$a1, $a1, -1034
	st.d	$a1, $a0, %pc_lo12(ca.7)
	pcalau12i	$a0, %pc_hi20(cs.7)
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI1_0)
	lu12i.w	$a1, -372096
	ori	$a1, $a1, 1490
	lu32i.d	$a1, -15
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, %pc_lo12(cs.7)
	pcalau12i	$a0, %pc_hi20(win)
	addi.d	$fp, $a0, %pc_lo12(win)
	move	$s0, $zero
	move	$s1, $zero
	ori	$s2, $zero, 288
	.p2align	4, , 16
.LBB1_1:                                # %.preheader209
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fstx.d	$fa0, $fp, $s0
	addi.d	$s0, $s0, 8
	addi.w	$s1, $s1, 1
	bne	$s0, $s2, .LBB1_1
# %bb.2:                                # %.preheader204
	vld	$vr0, $fp, 0
	vst	$vr0, $fp, 288
	vld	$vr0, $fp, 16
	vld	$vr1, $fp, 32
	vld	$vr2, $fp, 48
	vld	$vr3, $fp, 64
	vst	$vr0, $fp, 304
	vst	$vr1, $fp, 320
	vst	$vr2, $fp, 336
	vst	$vr3, $fp, 352
	vld	$vr0, $fp, 80
	vld	$vr1, $fp, 96
	vld	$vr2, $fp, 112
	vld	$vr3, $fp, 128
	vst	$vr0, $fp, 368
	vst	$vr1, $fp, 384
	vst	$vr2, $fp, 400
	vst	$vr3, $fp, 416
	lu52i.d	$a0, $zero, 1023
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, 432
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_2)
	vst	$vr0, $fp, 448
	vst	$vr0, $fp, 464
	vst	$vr1, $fp, 480
	vst	$vr2, $fp, 496
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 560
	vld	$vr3, $fp, 560
	vld	$vr4, $a0, %pc_lo12(.LCPI1_3)
	vst	$vr0, $fp, 544
	vst	$vr0, $fp, 528
	vshuf4i.d	$vr3, $vr0, 1
	vld	$vr0, $fp, 544
	vst	$vr3, $fp, 864
	vld	$vr3, $fp, 528
	vst	$vr4, $fp, 512
	vshuf4i.d	$vr0, $vr0, 1
	vst	$vr0, $fp, 880
	vshuf4i.d	$vr3, $vr0, 1
	vshuf4i.d	$vr4, $vr0, 1
	vst	$vr3, $fp, 896
	vst	$vr4, $fp, 912
	vshuf4i.d	$vr2, $vr0, 1
	vshuf4i.d	$vr1, $vr0, 1
	vld	$vr0, $fp, 464
	vld	$vr3, $fp, 448
	vst	$vr2, $fp, 928
	vst	$vr1, $fp, 944
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.d	$vr3, $vr0, 1
	vld	$vr1, $fp, 432
	vld	$vr2, $fp, 416
	vst	$vr0, $fp, 960
	vst	$vr3, $fp, 976
	vshuf4i.d	$vr1, $vr0, 1
	vshuf4i.d	$vr2, $vr0, 1
	vld	$vr0, $fp, 400
	vld	$vr3, $fp, 384
	vst	$vr1, $fp, 992
	vst	$vr2, $fp, 1008
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.d	$vr3, $vr0, 1
	vld	$vr1, $fp, 368
	vld	$vr2, $fp, 352
	vst	$vr0, $fp, 1024
	vst	$vr3, $fp, 1040
	vshuf4i.d	$vr1, $vr0, 1
	vshuf4i.d	$vr2, $vr0, 1
	vld	$vr0, $fp, 336
	vld	$vr3, $fp, 320
	vst	$vr1, $fp, 1056
	vst	$vr2, $fp, 1072
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.d	$vr3, $vr0, 1
	vld	$vr1, $fp, 304
	vld	$vr2, $fp, 288
	vst	$vr0, $fp, 1088
	vst	$vr3, $fp, 1104
	vshuf4i.d	$vr1, $vr0, 1
	vshuf4i.d	$vr2, $vr0, 1
	vst	$vr1, $fp, 1120
	vst	$vr2, $fp, 1136
	pcalau12i	$a0, %pc_hi20(cos_l+112)
	addi.d	$s0, $a0, %pc_lo12(cos_l+112)
	ori	$s1, $zero, 44
	pcalau12i	$a0, %pc_hi20(all)
	addi.d	$s2, $a0, %pc_lo12(all)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_4)
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_5)
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_6)
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_7)
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_8)
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_9)
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_10)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_10)
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_11)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_11)
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_12)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_12)
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_13)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_13)
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_14)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_14)
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_15)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_15)
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_16)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_16)
	pcalau12i	$a0, %pc_hi20(.LCPI1_17)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI1_17)
	pcalau12i	$a0, %pc_hi20(.LCPI1_18)
	fld.d	$fs6, $a0, %pc_lo12(.LCPI1_18)
	pcalau12i	$a0, %pc_hi20(.LCPI1_19)
	fld.d	$fs7, $a0, %pc_lo12(.LCPI1_19)
	pcalau12i	$a0, %pc_hi20(.LCPI1_20)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_20)
	pcalau12i	$a0, %pc_hi20(.LCPI1_21)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_21)
	pcalau12i	$a0, %pc_hi20(.LCPI1_22)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_22)
	lu12i.w	$a0, 116508
	ori	$a0, $a0, 1820
	lu32i.d	$a0, -233017
	lu52i.d	$a0, $a0, 1019
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	addi.w	$s3, $zero, -4
	.p2align	4, , 16
.LBB1_3:                                # %.preheader203
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a0, $s2, $s1
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fld.d	$fa1, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fs3, $fa0, $fa1
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fld.d	$fa0, $sp, 88                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $s0, -112
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fld.d	$fa0, $sp, 72                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $s0, -96
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fld.d	$fa0, $sp, 56                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $s0, -80
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fld.d	$fa0, $sp, 40                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $s0, -64
	fld.d	$fa0, $sp, 32                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fld.d	$fa0, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $s0, -48
	fld.d	$fa0, $sp, 16                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fmul.d	$fa0, $fs3, $fs4
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $s0, -32
	fmul.d	$fa0, $fs3, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fmul.d	$fa0, $fs3, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $s0, -16
	fmul.d	$fa0, $fs3, $fs7
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fmul.d	$fa0, $fs3, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $s0, 0
	fmul.d	$fa0, $fs3, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fmul.d	$fa0, $fs3, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $s0, 16
	addi.d	$s1, $s1, -4
	addi.d	$s0, $s0, 144
	bne	$s1, $s3, .LBB1_3
# %bb.4:                                # %.preheader201.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_23)
	pcalau12i	$a0, %pc_hi20(.LCPI1_24)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_24)
	vst	$vr0, $s0, -112
	vst	$vr1, $s0, -96
	pcalau12i	$a0, %pc_hi20(.LCPI1_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_25)
	pcalau12i	$a0, %pc_hi20(.LCPI1_26)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_26)
	pcalau12i	$a0, %pc_hi20(.LCPI1_27)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_27)
	pcalau12i	$a0, %pc_hi20(.LCPI1_28)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_28)
	vst	$vr0, $s0, -80
	vst	$vr1, $s0, -64
	vst	$vr2, $s0, -48
	vst	$vr3, $s0, -32
	pcalau12i	$a0, %pc_hi20(.LCPI1_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_29)
	pcalau12i	$a0, %pc_hi20(.LCPI1_30)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_30)
	pcalau12i	$a0, %pc_hi20(.LCPI1_31)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_31)
	pcalau12i	$a0, %pc_hi20(.LCPI1_32)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_32)
	vst	$vr0, $s0, -16
	vst	$vr1, $s0, 0
	vst	$vr2, $s0, 16
	vst	$vr3, $s0, 32
	pcalau12i	$a0, %pc_hi20(.LCPI1_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_33)
	pcalau12i	$a0, %pc_hi20(.LCPI1_34)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_34)
	pcalau12i	$a0, %pc_hi20(.LCPI1_35)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_35)
	pcalau12i	$a0, %pc_hi20(.LCPI1_36)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_36)
	vst	$vr0, $s0, 48
	vst	$vr1, $s0, 64
	vst	$vr2, $s0, 80
	vst	$vr3, $s0, 96
	pcalau12i	$a0, %pc_hi20(enwindow)
	addi.d	$a1, $a0, %pc_lo12(enwindow)
	fld.d	$fa4, $a1, 1984
	fld.d	$fa0, $a1, 0
	move	$a0, $zero
	fdiv.d	$fa1, $fa0, $fa4
	vld	$vr2, $a1, 8
	vld	$vr3, $a1, 24
	fst.d	$fa1, $sp, 264
	vreplvei.d	$vr1, $vr0, 0
	vfdiv.d	$vr2, $vr2, $vr1
	vfdiv.d	$vr1, $vr3, $vr1
	fld.d	$fa3, $a1, 40
	vst	$vr1, $a1, 16
	vst	$vr2, $a1, 0
	fld.d	$fa1, $a1, 48
	fdiv.d	$fa2, $fa3, $fa0
	fst.d	$fa2, $a1, 32
	fld.d	$fa2, $a1, 56
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a1, 40
	addi.d	$a6, $a1, 56
	fdiv.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a1, 48
	addi.d	$a3, $sp, 256
	addi.d	$a1, $a1, 120
	addi.d	$a4, $sp, 272
	ori	$a5, $zero, 120
	.p2align	4, , 16
.LBB1_5:                                # %.preheader198
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, -56
	fld.d	$fa1, $a1, -48
	move	$a2, $a6
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 0
	fld.d	$fa1, $a1, -40
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 8
	fld.d	$fa1, $a1, -32
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 16
	fld.d	$fa1, $a1, -24
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 24
	fld.d	$fa1, $a1, -16
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 32
	fld.d	$fa1, $a1, -8
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 40
	fld.d	$fa1, $a1, 0
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 48
	fld.d	$fa1, $a1, 8
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 56
	fld.d	$fa1, $a1, 16
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 64
	fld.d	$fa1, $a1, 24
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 72
	fld.d	$fa1, $a1, 32
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 80
	fld.d	$fa1, $a1, 40
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 88
	fld.d	$fa1, $a1, 48
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 96
	fld.d	$fa1, $a1, 56
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a6, 104
	fld.d	$fa1, $a1, 64
	fdiv.d	$fa2, $fa0, $fa4
	fstx.d	$fa2, $a4, $a0
	fst.d	$fa2, $a3, 0
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a6, 112
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 128
	addi.d	$a6, $a6, 120
	bne	$a0, $a5, .LBB1_5
# %bb.6:                                # %.preheader197.preheader
	fld.d	$fa0, $a1, -48
	fdiv.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 120
	fld.d	$fa0, $a1, -40
	fdiv.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 128
	fld.d	$fa0, $a1, -32
	fdiv.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 136
	fld.d	$fa0, $a1, -24
	fdiv.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 144
	fld.d	$fa0, $a1, -16
	fdiv.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 152
	fld.d	$fa0, $a1, -8
	fdiv.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 160
	fld.d	$fa0, $a1, 0
	vst	$vr4, $sp, 128                  # 16-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 168
	pcalau12i	$a0, %pc_hi20(mm)
	addi.d	$s0, $a0, %pc_lo12(mm)
	ori	$a0, $zero, 15
	pcalau12i	$a1, %pc_hi20(.LCPI1_37)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI1_37)
	pcalau12i	$a1, %pc_hi20(.LCPI1_38)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI1_38)
	ori	$s1, $zero, 31
	addi.d	$s2, $sp, 144
	ori	$s3, $zero, 248
	.p2align	4, , 16
.LBB1_7:                                # %.preheader195
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	move	$s5, $zero
	move	$s4, $a0
	move	$s6, $s1
	.p2align	4, , 16
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s6, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s5, $s2
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $s5
	addi.d	$s5, $s5, 8
	add.w	$s6, $s6, $s1
	bne	$s5, $s3, .LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $s4, -1
	addi.w	$s1, $s1, -2
	add.d	$s0, $s0, $s5
	bnez	$s4, .LBB1_7
# %bb.10:                               # %.preheader194
	fld.d	$fa0, $fp, 72
	move	$a0, $zero
	fld.d	$fa1, $fp, 136
	fst.d	$fa0, $fp, 136
	fld.d	$fa0, $fp, 216
	fld.d	$fa2, $fp, 280
	fst.d	$fa1, $fp, 72
	fld.d	$fa1, $fp, 360
	fst.d	$fa0, $fp, 280
	fst.d	$fa2, $fp, 216
	fld.d	$fa0, $fp, 424
	fst.d	$fa1, $fp, 424
	fld.d	$fa1, $fp, 504
	fld.d	$fa2, $fp, 568
	fst.d	$fa0, $fp, 360
	fld.d	$fa0, $fp, 936
	fst.d	$fa1, $fp, 568
	fst.d	$fa2, $fp, 504
	fld.d	$fa1, $fp, 1000
	fst.d	$fa0, $fp, 1000
	fld.d	$fa0, $fp, 1080
	fld.d	$fa2, $fp, 1144
	fst.d	$fa1, $fp, 936
	fld.d	$fa1, $fp, 80
	fst.d	$fa0, $fp, 1144
	fst.d	$fa2, $fp, 1080
	fld.d	$fa0, $fp, 128
	fst.d	$fa1, $fp, 128
	fld.d	$fa1, $fp, 224
	fld.d	$fa2, $fp, 272
	fst.d	$fa0, $fp, 80
	fld.d	$fa0, $fp, 368
	fst.d	$fa1, $fp, 272
	fst.d	$fa2, $fp, 224
	fld.d	$fa1, $fp, 416
	fst.d	$fa0, $fp, 416
	fld.d	$fa0, $fp, 512
	fld.d	$fa2, $fp, 560
	fst.d	$fa1, $fp, 368
	fld.d	$fa1, $fp, 944
	fst.d	$fa0, $fp, 560
	fst.d	$fa2, $fp, 512
	fld.d	$fa0, $fp, 992
	fst.d	$fa1, $fp, 992
	fld.d	$fa1, $fp, 1088
	fld.d	$fa2, $fp, 1136
	fst.d	$fa0, $fp, 944
	fld.d	$fa0, $fp, 88
	fst.d	$fa1, $fp, 1136
	fst.d	$fa2, $fp, 1088
	fld.d	$fa1, $fp, 120
	fst.d	$fa0, $fp, 120
	fld.d	$fa0, $fp, 232
	fld.d	$fa2, $fp, 264
	fst.d	$fa1, $fp, 88
	fld.d	$fa1, $fp, 376
	fst.d	$fa0, $fp, 264
	fst.d	$fa2, $fp, 232
	fld.d	$fa0, $fp, 408
	fst.d	$fa1, $fp, 408
	fld.d	$fa1, $fp, 520
	fld.d	$fa2, $fp, 552
	fst.d	$fa0, $fp, 376
	fld.d	$fa0, $fp, 952
	fst.d	$fa1, $fp, 552
	fst.d	$fa2, $fp, 520
	fld.d	$fa1, $fp, 984
	fst.d	$fa0, $fp, 984
	fld.d	$fa0, $fp, 1096
	fld.d	$fa2, $fp, 1128
	fst.d	$fa1, $fp, 952
	fld.d	$fa1, $fp, 96
	fst.d	$fa0, $fp, 1128
	fst.d	$fa2, $fp, 1096
	fld.d	$fa0, $fp, 112
	fst.d	$fa1, $fp, 112
	fld.d	$fa1, $fp, 240
	fld.d	$fa2, $fp, 256
	fst.d	$fa0, $fp, 96
	fld.d	$fa0, $fp, 384
	fst.d	$fa1, $fp, 256
	fst.d	$fa2, $fp, 240
	fld.d	$fa1, $fp, 400
	fst.d	$fa0, $fp, 400
	fld.d	$fa0, $fp, 528
	fld.d	$fa2, $fp, 544
	fst.d	$fa1, $fp, 384
	fld.d	$fa1, $fp, 960
	fst.d	$fa0, $fp, 544
	fst.d	$fa2, $fp, 528
	fld.d	$fa2, $fp, 976
	fst.d	$fa1, $fp, 976
	fld.d	$fa1, $fp, 1120
	fld.d	$fa3, $fp, 1104
	pcalau12i	$a1, %pc_hi20(.LCPI1_39)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI1_39)
	fst.d	$fa2, $fp, 960
	fst.d	$fa3, $fp, 1120
	fst.d	$fa1, $fp, 1104
	vld	$vr5, $sp, 128                  # 16-byte Folded Reload
	fmul.d	$fa1, $fa5, $fa0
	vreplvei.d	$vr1, $vr1, 0
	ori	$a1, $zero, 288
	.p2align	4, , 16
.LBB1_11:                               # %vector.body315
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr2, $fp, $a0
	add.d	$a2, $fp, $a0
	vld	$vr3, $a2, 288
	vfmul.d	$vr2, $vr1, $vr2
	vld	$vr4, $a2, 864
	vstx	$vr2, $fp, $a0
	vfmul.d	$vr2, $vr1, $vr3
	vst	$vr2, $a2, 288
	vfmul.d	$vr2, $vr1, $vr4
	addi.d	$a0, $a0, 16
	vst	$vr2, $a2, 864
	bne	$a0, $a1, .LBB1_11
# %bb.12:                               # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_40)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_40)
	pcalau12i	$a0, %pc_hi20(.LCPI1_41)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_41)
	vreplvei.d	$vr3, $vr5, 0
	vfmul.d	$vr1, $vr3, $vr1
	vst	$vr2, $fp, 576
	lu52i.d	$a0, $zero, 1008
	vreplgr2vr.d	$vr2, $a0
	vfmul.d	$vr1, $vr1, $vr2
	pcalau12i	$a0, %pc_hi20(.LCPI1_42)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_42)
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1021
	vreplgr2vr.d	$vr3, $a0
	vfmul.d	$vr1, $vr1, $vr3
	vreplvei.d	$vr3, $vr1, 0
	fmul.d	$fa2, $fa3, $fa2
	pcalau12i	$a0, %pc_hi20(cos_s)
	addi.d	$a0, $a0, %pc_lo12(cos_s)
	pcalau12i	$a1, %pc_hi20(.LCPI1_43)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_43)
	fst.d	$fa2, $a0, 144
	vfmul.d	$vr2, $vr1, $vr3
	pcalau12i	$a1, %pc_hi20(.LCPI1_44)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_44)
	pcalau12i	$a1, %pc_hi20(.LCPI1_45)
	vld	$vr4, $a1, %pc_lo12(.LCPI1_45)
	vst	$vr2, $a0, 0
	vfmul.d	$vr2, $vr1, $vr3
	vst	$vr2, $a0, 24
	vfmul.d	$vr2, $vr1, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI1_46)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_46)
	pcalau12i	$a1, %pc_hi20(.LCPI1_47)
	vld	$vr4, $a1, %pc_lo12(.LCPI1_47)
	vst	$vr2, $a0, 48
	vfmul.d	$vr2, $vr1, $vr3
	vst	$vr2, $a0, 72
	vfmul.d	$vr3, $vr1, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI1_48)
	vld	$vr4, $a1, %pc_lo12(.LCPI1_48)
	vst	$vr3, $a0, 96
	pcalau12i	$a1, %pc_hi20(.LCPI1_49)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_49)
	vfmul.d	$vr4, $vr1, $vr4
	vst	$vr4, $a0, 120
	vstelm.d	$vr2, $a0, 152, 1
	vfmul.d	$vr2, $vr1, $vr3
	pcalau12i	$a1, %pc_hi20(.LCPI1_50)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_50)
	pcalau12i	$a1, %pc_hi20(.LCPI1_51)
	vld	$vr4, $a1, %pc_lo12(.LCPI1_51)
	vst	$vr2, $a0, 168
	vfmul.d	$vr2, $vr1, $vr3
	vst	$vr2, $a0, 192
	vfmul.d	$vr2, $vr1, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI1_52)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_52)
	pcalau12i	$a1, %pc_hi20(.LCPI1_53)
	vld	$vr4, $a1, %pc_lo12(.LCPI1_53)
	vst	$vr2, $a0, 216
	vfmul.d	$vr2, $vr1, $vr3
	vst	$vr2, $a0, 240
	vfmul.d	$vr1, $vr1, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI1_54)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_54)
	pcalau12i	$a1, %pc_hi20(.LCPI1_55)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI1_55)
	vst	$vr1, $a0, 264
	fmul.d	$fa1, $fa5, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fa3
	pcalau12i	$a1, %pc_hi20(.LCPI1_56)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI1_56)
	pcalau12i	$a1, %pc_hi20(.LCPI1_57)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_57)
	lu12i.w	$a1, 343402
	ori	$a1, $a1, 1652
	lu32i.d	$a1, -487951
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $fp, 592
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 16
	fmul.d	$fa1, $fa0, $fa2
	pcalau12i	$a1, %pc_hi20(.LCPI1_58)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_58)
	pcalau12i	$a1, %pc_hi20(.LCPI1_59)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI1_59)
	fst.d	$fa1, $a0, 40
	fmul.d	$fa1, $fa0, $fa2
	fst.d	$fa1, $a0, 64
	fmul.d	$fa1, $fa0, $fa3
	pcalau12i	$a1, %pc_hi20(.LCPI1_60)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_60)
	pcalau12i	$a1, %pc_hi20(.LCPI1_61)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI1_61)
	fst.d	$fa1, $a0, 88
	fmul.d	$fa1, $fa0, $fa2
	fst.d	$fa1, $a0, 112
	fmul.d	$fa1, $fa0, $fa3
	pcalau12i	$a1, %pc_hi20(.LCPI1_62)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_62)
	pcalau12i	$a1, %pc_hi20(.LCPI1_63)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI1_63)
	fst.d	$fa1, $a0, 136
	fmul.d	$fa1, $fa0, $fa2
	fst.d	$fa1, $a0, 160
	fmul.d	$fa1, $fa0, $fa3
	pcalau12i	$a1, %pc_hi20(.LCPI1_64)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_64)
	pcalau12i	$a1, %pc_hi20(.LCPI1_65)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI1_65)
	fst.d	$fa1, $a0, 184
	fmul.d	$fa1, $fa0, $fa2
	fst.d	$fa1, $a0, 208
	fmul.d	$fa1, $fa0, $fa3
	pcalau12i	$a1, %pc_hi20(.LCPI1_66)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_66)
	pcalau12i	$a1, %pc_hi20(.LCPI1_67)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI1_67)
	fst.d	$fa1, $a0, 232
	fmul.d	$fa1, $fa0, $fa2
	fst.d	$fa1, $a0, 256
	fmul.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a0, 280
	fld.d	$fs7, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 416                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 424                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 432                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 440                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	ret
.Lfunc_end1:
	.size	mdct_init48, .Lfunc_end1-mdct_init48
                                        # -- End function
	.p2align	5                               # -- Begin function window_subband
	.type	window_subband,@function
window_subband:                         # @window_subband
# %bb.0:
	addi.d	$sp, $sp, -128
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 64                   # 8-byte Folded Spill
	ld.h	$a2, $a0, 510
	ld.h	$a3, $a0, 446
	ld.h	$a4, $a0, 574
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	sub.d	$a2, $a3, $a4
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	pcalau12i	$a2, %pc_hi20(enwindow)
	addi.d	$a3, $a2, %pc_lo12(enwindow)
	fld.d	$fa2, $a3, 0
	ld.h	$a2, $a0, 382
	ld.h	$a4, $a0, 638
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	add.d	$a2, $a4, $a2
	fld.d	$fa1, $a3, 8
	ld.h	$a4, $a0, 318
	ld.h	$a5, $a0, 702
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	sub.d	$a2, $a4, $a5
	fld.d	$fa1, $a3, 16
	ld.h	$a4, $a0, 254
	ld.h	$a5, $a0, 766
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	add.d	$a2, $a5, $a4
	fld.d	$fa1, $a3, 24
	ld.h	$a4, $a0, 190
	ld.h	$a5, $a0, 830
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	sub.d	$a2, $a4, $a5
	fld.d	$fa1, $a3, 32
	ld.h	$a4, $a0, 126
	ld.h	$a5, $a0, 894
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	add.d	$a2, $a5, $a4
	movgr2fr.w	$fa1, $a2
	fld.d	$fa2, $a3, 40
	ld.h	$a2, $a0, 62
	ld.h	$a4, $a0, 958
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $a3, 48
	sub.d	$a2, $a2, $a4
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	pcalau12i	$a2, %pc_hi20(win)
	addi.d	$a2, $a2, %pc_lo12(win)
	move	$a4, $zero
	fst.d	$fa0, $a2, 728
	addi.d	$a5, $a0, 512
	addi.d	$t1, $a3, 56
	addi.d	$a6, $a2, 736
	addi.d	$a7, $a0, 572
	addi.w	$t0, $zero, -120
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld.h	$t2, $a5, 0
	ld.h	$t3, $a7, -64
	move	$a3, $t1
	movgr2fr.w	$fa0, $t2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $t3
	ld.h	$t1, $a5, 128
	ffint.d.w	$fa1, $fa1
	fld.d	$fa2, $a3, 0
	ld.h	$t2, $a7, -192
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	ld.h	$t1, $a5, 256
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 8
	ld.h	$t2, $a7, -320
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	ld.h	$t1, $a5, 384
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 16
	ld.h	$t2, $a7, -448
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	ld.h	$t1, $a5, -512
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 24
	ld.h	$t2, $a7, 448
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	ld.h	$t1, $a5, -384
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 32
	ld.h	$t2, $a7, 320
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	ld.h	$t1, $a5, -256
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 40
	ld.h	$t2, $a7, 192
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	ld.h	$t1, $a5, -128
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 48
	ld.h	$t2, $a7, 64
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	ld.h	$t1, $a7, -512
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 56
	ld.h	$t2, $a5, 448
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	fneg.d	$fa3, $fa3
	ld.h	$t1, $a7, -384
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 64
	ld.h	$t2, $a5, 320
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	fneg.d	$fa3, $fa3
	ld.h	$t1, $a7, -256
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 72
	ld.h	$t2, $a5, 192
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	fneg.d	$fa3, $fa3
	ld.h	$t1, $a7, -128
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 80
	ld.h	$t2, $a5, 64
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	ld.h	$t1, $a7, 0
	fneg.d	$fa3, $fa3
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 88
	movgr2fr.w	$fa3, $t1
	ld.h	$t1, $a5, -64
	ffint.d.w	$fa3, $fa3
	fneg.d	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t1
	ld.h	$t1, $a7, 128
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 96
	movgr2fr.w	$fa3, $t1
	ld.h	$t1, $a5, -192
	ffint.d.w	$fa3, $fa3
	fneg.d	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t1
	ld.h	$t1, $a7, 256
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 104
	movgr2fr.w	$fa3, $t1
	ld.h	$t1, $a5, -320
	ffint.d.w	$fa3, $fa3
	fneg.d	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $t1
	ld.h	$t1, $a7, 384
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fld.d	$fa2, $a3, 112
	movgr2fr.w	$fa3, $t1
	ld.h	$t1, $a5, -448
	ffint.d.w	$fa3, $fa3
	fneg.d	$fa3, $fa3
	fmadd.d	$fa3, $fa3, $fa2, $fa0
	movgr2fr.w	$fa0, $t1
	ffint.d.w	$fa0, $fa0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fst.d	$fa3, $a6, 0
	add.d	$t1, $a2, $a4
	fst.d	$fa0, $t1, 720
	addi.d	$a4, $a4, -8
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -2
	addi.d	$t1, $a3, 120
	bne	$a4, $t0, .LBB2_1
# %bb.2:
	ld.h	$a4, $a0, 478
	ld.h	$a5, $a0, 350
	movgr2fr.w	$fa1, $a4
	movgr2fr.w	$fa2, $a5
	ld.h	$a4, $a0, 222
	ffint.d.w	$fa1, $fa1
	fld.d	$fa3, $a3, 120
	ffint.d.w	$fa2, $fa2
	movgr2fr.w	$fa4, $a4
	ld.h	$a4, $a0, 94
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	ffint.d.w	$fa2, $fa4
	fld.d	$fa3, $a3, 128
	movgr2fr.w	$fa4, $a4
	fld.d	$fa5, $a3, 136
	ld.h	$a4, $a0, 606
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	ffint.d.w	$fa2, $fa4
	fmadd.d	$fa1, $fa2, $fa5, $fa1
	movgr2fr.w	$fa2, $a4
	fld.d	$fa3, $a3, 144
	ld.h	$a4, $a0, 734
	ffint.d.w	$fa2, $fa2
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	movgr2fr.w	$fa2, $a4
	fld.d	$fa3, $a3, 152
	ld.h	$a4, $a0, 862
	ffint.d.w	$fa2, $fa2
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	movgr2fr.w	$fa2, $a4
	fld.d	$fa3, $a3, 160
	ld.h	$a0, $a0, 990
	ffint.d.w	$fa2, $fa2
	fneg.d	$fa2, $fa2
	fmadd.d	$fa2, $fa2, $fa3, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fld.d	$fa3, $a3, 168
	fneg.d	$fs7, $fa1
	fld.d	$fa1, $a2, 616
	fst.d	$fa1, $sp, 56                   # 8-byte Folded Spill
	fld.d	$fa1, $a2, 624
	fst.d	$fa1, $sp, 48                   # 8-byte Folded Spill
	fld.d	$fa1, $a2, 632
	fst.d	$fa1, $sp, 40                   # 8-byte Folded Spill
	fld.d	$fa1, $a2, 640
	fst.d	$fa1, $sp, 32                   # 8-byte Folded Spill
	fld.d	$fa1, $a2, 648
	fst.d	$fa1, $sp, 24                   # 8-byte Folded Spill
	fld.d	$fa1, $a2, 656
	fst.d	$fa1, $sp, 16                   # 8-byte Folded Spill
	fld.d	$fa1, $a2, 664
	fst.d	$fa1, $sp, 8                    # 8-byte Folded Spill
	fld.d	$ft0, $a2, 672
	fld.d	$ft1, $a2, 680
	fld.d	$ft2, $a2, 688
	fld.d	$ft3, $a2, 696
	fld.d	$ft4, $a2, 704
	fld.d	$ft5, $a2, 712
	fld.d	$ft6, $a2, 720
	fld.d	$ft7, $a2, 728
	fld.d	$ft8, $a2, 736
	fld.d	$ft9, $a2, 744
	fld.d	$ft10, $a2, 752
	fld.d	$ft11, $a2, 760
	fld.d	$ft12, $a2, 768
	fld.d	$ft13, $a2, 776
	fld.d	$ft14, $a2, 784
	fld.d	$ft15, $a2, 792
	fld.d	$fs0, $a2, 800
	fld.d	$fs1, $a2, 808
	fld.d	$fs2, $a2, 816
	fld.d	$fs3, $a2, 824
	fld.d	$fs4, $a2, 832
	fld.d	$fs5, $a2, 840
	fld.d	$fs6, $a2, 848
	fmadd.d	$fs7, $fs7, $fa3, $fa2
	addi.d	$a0, $a1, 120
	addi.d	$a1, $a1, 128
	pcalau12i	$a2, %pc_hi20(mm)
	addi.d	$a2, $a2, %pc_lo12(mm)
	move	$a3, $zero
	ori	$a4, $zero, 128
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a2, 8
	fld.d	$fa3, $a2, 16
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa4, $sp, 56                   # 8-byte Folded Reload
	fmadd.d	$fa2, $fa2, $fa4, $fs7
	fld.d	$fa4, $sp, 48                   # 8-byte Folded Reload
	fmadd.d	$fa1, $fa3, $fa4, $fa1
	fld.d	$fa3, $a2, 24
	fld.d	$fa4, $a2, 32
	fld.d	$fa5, $a2, 40
	fld.d	$fa6, $a2, 48
	fld.d	$fa7, $sp, 40                   # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa7, $fa2
	fld.d	$fa3, $sp, 32                   # 8-byte Folded Reload
	fmadd.d	$fa1, $fa4, $fa3, $fa1
	fld.d	$fa3, $sp, 24                   # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $fa3, $fa2
	fld.d	$fa3, $sp, 16                   # 8-byte Folded Reload
	fmadd.d	$fa1, $fa6, $fa3, $fa1
	fld.d	$fa3, $a2, 56
	fld.d	$fa4, $a2, 64
	fld.d	$fa5, $a2, 72
	fld.d	$fa6, $a2, 80
	fld.d	$fa7, $sp, 8                    # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa7, $fa2
	fmadd.d	$fa1, $fa4, $ft0, $fa1
	fmadd.d	$fa2, $fa5, $ft1, $fa2
	fmadd.d	$fa1, $fa6, $ft2, $fa1
	fld.d	$fa3, $a2, 88
	fld.d	$fa4, $a2, 96
	fld.d	$fa5, $a2, 104
	fld.d	$fa6, $a2, 112
	fmadd.d	$fa2, $fa3, $ft3, $fa2
	fmadd.d	$fa1, $fa4, $ft4, $fa1
	fmadd.d	$fa2, $fa5, $ft5, $fa2
	fmadd.d	$fa1, $fa6, $ft6, $fa1
	fld.d	$fa3, $a2, 120
	fld.d	$fa4, $a2, 128
	fld.d	$fa5, $a2, 136
	fld.d	$fa6, $a2, 144
	fmadd.d	$fa2, $fa3, $ft7, $fa2
	fmadd.d	$fa1, $fa4, $ft8, $fa1
	fmadd.d	$fa2, $fa5, $ft9, $fa2
	fmadd.d	$fa1, $fa6, $ft10, $fa1
	fld.d	$fa3, $a2, 152
	fld.d	$fa4, $a2, 160
	fld.d	$fa5, $a2, 168
	fld.d	$fa6, $a2, 176
	fmadd.d	$fa2, $fa3, $ft11, $fa2
	fmadd.d	$fa1, $fa4, $ft12, $fa1
	fmadd.d	$fa2, $fa5, $ft13, $fa2
	fmadd.d	$fa1, $fa6, $ft14, $fa1
	fld.d	$fa3, $a2, 184
	fld.d	$fa4, $a2, 192
	fld.d	$fa5, $a2, 200
	fld.d	$fa6, $a2, 208
	fmadd.d	$fa2, $fa3, $ft15, $fa2
	fmadd.d	$fa1, $fa4, $fs0, $fa1
	fmadd.d	$fa2, $fa5, $fs1, $fa2
	fmadd.d	$fa1, $fa6, $fs2, $fa1
	fld.d	$fa3, $a2, 216
	fld.d	$fa4, $a2, 224
	fld.d	$fa5, $a2, 232
	fld.d	$fa6, $a2, 240
	fmadd.d	$fa2, $fa3, $fs3, $fa2
	fmadd.d	$fa1, $fa4, $fs4, $fa1
	fmadd.d	$fa2, $fa5, $fs5, $fa2
	fmadd.d	$fa1, $fa6, $fs6, $fa1
	fadd.d	$fa3, $fa2, $fa1
	fst.d	$fa3, $a0, 0
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $a1, $a3
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -8
	addi.d	$a2, $a2, 248
	bne	$a3, $a4, .LBB2_3
# %bb.4:
	fld.d	$fs7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end2:
	.size	window_subband, .Lfunc_end2-window_subband
                                        # -- End function
	.type	mdct_sub48.init,@object         # @mdct_sub48.init
	.local	mdct_sub48.init
	.comm	mdct_sub48.init,4,4
	.type	sb_sample,@object               # @sb_sample
	.local	sb_sample
	.comm	sb_sample,18432,8
	.type	win,@object                     # @win
	.local	win
	.comm	win,1152,16
	.type	ca.0,@object                    # @ca.0
	.local	ca.0
	.comm	ca.0,8,8
	.type	ca.1,@object                    # @ca.1
	.local	ca.1
	.comm	ca.1,8,8
	.type	ca.2,@object                    # @ca.2
	.local	ca.2
	.comm	ca.2,8,8
	.type	ca.3,@object                    # @ca.3
	.local	ca.3
	.comm	ca.3,8,8
	.type	ca.4,@object                    # @ca.4
	.local	ca.4
	.comm	ca.4,8,8
	.type	ca.5,@object                    # @ca.5
	.local	ca.5
	.comm	ca.5,8,8
	.type	ca.6,@object                    # @ca.6
	.local	ca.6
	.comm	ca.6,8,8
	.type	ca.7,@object                    # @ca.7
	.local	ca.7
	.comm	ca.7,8,8
	.type	cs.0,@object                    # @cs.0
	.local	cs.0
	.comm	cs.0,8,8
	.type	cs.1,@object                    # @cs.1
	.local	cs.1
	.comm	cs.1,8,8
	.type	cs.2,@object                    # @cs.2
	.local	cs.2
	.comm	cs.2,8,8
	.type	cs.3,@object                    # @cs.3
	.local	cs.3
	.comm	cs.3,8,8
	.type	cs.4,@object                    # @cs.4
	.local	cs.4
	.comm	cs.4,8,8
	.type	cs.5,@object                    # @cs.5
	.local	cs.5
	.comm	cs.5,8,8
	.type	cs.6,@object                    # @cs.6
	.local	cs.6
	.comm	cs.6,8,8
	.type	cs.7,@object                    # @cs.7
	.local	cs.7
	.comm	cs.7,8,8
	.type	cos_l,@object                   # @cos_l
	.local	cos_l
	.comm	cos_l,1952,8
	.type	all,@object                     # @all
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
all:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	17                              # 0x11
	.size	all, 48

	.type	enwindow,@object                # @enwindow
	.data
	.p2align	5, 0x0
enwindow:
	.dword	0x3fa251e002c5be4c              # double 0.035780907000000001
	.dword	0x3f924e1ffc2760f6              # double 0.017876148000000001
	.dword	0x3f69adffbe4ce877              # double 0.0031347269999999999
	.dword	0x3f642100110318ca              # double 0.0024571419999999998
	.dword	0x3f4fd3ff5fe0d506              # double 9.7131699999999997E-4
	.dword	0x3f2caffdcde56a6c              # double 2.1886799999999999E-4
	.dword	0x3f1a9ffa97f260c1              # double 1.01566E-4
	.dword	0x3eecffd9d93e8ef6              # double 1.3828E-5
	.dword	0x3fa24efffe8ea200              # double 0.035758972
	.dword	0x3f6bddffd89b6ab3              # double 0.0034017560000000001
	.dword	0x3f501dfff03abb12              # double 9.8371500000000002E-4
	.dword	0x3f19fffdc9107713              # double 9.9182E-5
	.dword	0xbea0016617c82eea              # double -4.7700000000000005E-7
	.dword	0x3f1b400894e03296              # double 1.0395099999999999E-4
	.dword	0x3f4f3fff520dc771              # double 9.5367399999999994E-4
	.dword	0x3f67470033705ea7              # double 0.0028414730000000002
	.dword	0x3eea002025284761              # double 1.2398000000000001E-5
	.dword	0x3f29100292bd988e              # double 1.9121200000000001E-4
	.dword	0x3f62b3ffd4ea8624              # double 0.0022830960000000001
	.dword	0x3f9166fffa87d736              # double 0.016994476000000001
	.dword	0x3f9334fff82e8b95              # double 0.018756866000000001
	.dword	0x3f658d0036ba2eee              # double 0.002630711
	.dword	0x3f3037fdea9e6654              # double 2.4747799999999998E-4
	.dword	0x3eef00069c3794d3              # double 1.4782E-5
	.dword	0x3fa2467ffd4c82a1              # double 0.035694122000000002
	.dword	0x3f6dd8000f4d029b              # double 0.0036430360000000001
	.dword	0x3f503fffb08b08ee              # double 9.9182099999999994E-4
	.dword	0x3f193ffe2dfefd07              # double 9.6321000000000002E-5
	.dword	0xbea0016617c82eea              # double -4.7700000000000005E-7
	.dword	0x3f1bc00297928be7              # double 1.05858E-4
	.dword	0x3f4e7fffb6fc4d65              # double 9.3078599999999996E-4
	.dword	0x3f64a8000ec3923c              # double 0.0025215150000000002
	.dword	0x3ee7fff3622f4183              # double 1.1443999999999999E-5
	.dword	0x3f25affbc1e8ff44              # double 1.6546200000000001E-4
	.dword	0x3f6148ffc594ec83              # double 0.002110004
	.dword	0x3f907fdff8e84d76              # double 0.016112804000000001
	.dword	0x3f941b0002fc8112              # double 0.019634247000000001
	.dword	0x3f66f7002fae4c0c              # double 0.0028033260000000001
	.dword	0x3f3227fe5461dfa2              # double 2.7704200000000002E-4
	.dword	0x3ef17feb58e52fab              # double 1.6688999999999999E-5
	.dword	0x3fa2385ffeff602e              # double 0.035586356999999999
	.dword	0x3f6f9bffd8f150ee              # double 0.0038585659999999999
	.dword	0x3f504dffd6ff1995              # double 9.9515900000000002E-4
	.dword	0x3f187ffe92ed82fb              # double 9.3460000000000003E-5
	.dword	0xbea0016617c82eea              # double -4.7700000000000005E-7
	.dword	0x3f1c1ff9ce1554d9              # double 1.0728799999999999E-4
	.dword	0x3f4d94008eac66e2              # double 9.0265300000000001E-4
	.dword	0x3f61d0ffd9b6e277              # double 0.0021748539999999999
	.dword	0x3ee50039ae18f9ee              # double 1.0013999999999999E-5
	.dword	0x3f225ffeee32223c              # double 1.4019E-4
	.dword	0x3f5fbdff99419ecb              # double 0.0019373890000000001
	.dword	0x3f8f32c00a8b630f              # double 0.015233517
	.dword	0x3f94ffc002fea6d3              # double 0.020506858999999999
	.dword	0x3f685cffcf1c771e              # double 0.0029740330000000001
	.dword	0x3f342800243d211e              # double 3.0756000000000002E-4
	.dword	0x3ef3000ceb1ff411              # double 1.8119999999999999E-5
	.dword	0x3fa22490024122e0              # double 0.0354352
	.dword	0x3f7095fff5ddd6fa              # double 0.0040493009999999999
	.dword	0x3f5049ff7d792789              # double 9.9420499999999996E-4
	.dword	0x3f17bffef7dc08ef              # double 9.0599000000000005E-5
	.dword	0xbea0016617c82eea              # double -4.7700000000000005E-7
	.dword	0x3f1c5fff66747595              # double 1.08242E-4
	.dword	0x3f4c77ff59d6a4d7              # double 8.6879700000000003E-4
	.dword	0x3f5d7fffe1ef6b2a              # double 0.0018005370000000001
	.dword	0x3ee3000ceb1ff411              # double 9.0599999999999997E-6
	.dword	0x3f1e7ffb6b79535c              # double 1.16348E-4
	.dword	0x3f5cf2005a6548a7              # double 0.0017666820000000001
	.dword	0x3f8d680010e953b9              # double 0.014358521000000001
	.dword	0x3f95e29ffb661af0              # double 0.021372318000000001
	.dword	0x3f69bcfffb2275a1              # double 0.0031418800000000001
	.dword	0x3f3637ff0ead30bf              # double 3.39031E-4
	.dword	0x3ef47fe9c52b17dc              # double 1.9550000000000001E-5
	.dword	0x3fa20b4002ad0c1b              # double 0.035242081000000001
	.dword	0x3f7143ffdf1ddd36              # double 0.0042152400000000003
	.dword	0x3f5035ffe39cea53              # double 9.8943699999999991E-4
	.dword	0x3f16dffc909afe85              # double 8.7261000000000004E-5
	.dword	0xbea0016617c82eea              # double -4.7700000000000005E-7
	.dword	0x3f1c800232a405f3              # double 1.08719E-4
	.dword	0x3f4b2c0063fe014d              # double 8.2921999999999997E-4
	.dword	0x3f56edffefb14ab3              # double 0.0013995170000000001
	.dword	0x3ee0ffe02826ee34              # double 8.106E-6
	.dword	0x3f18a0015f1d1359              # double 9.3937000000000005E-5
	.dword	0x3f5a2dffa8d35995              # double 0.001597881
	.dword	0x3f8ba03ff357727a              # double 0.013489246
	.dword	0x3f96c320035e36f6              # double 0.022228718000000001
	.dword	0x3f6b17002a4fe853              # double 0.0033068659999999999
	.dword	0x3f3857ff5f35088f              # double 3.7145599999999999E-4
	.dword	0x3ef6801688241db9              # double 2.1458E-5
	.dword	0x3fa1ec7000431bdf              # double 0.035007000000000003
	.dword	0x3f71d9800e83258f              # double 0.0043578150000000001
	.dword	0x3f5011fff689a371              # double 9.8085399999999997E-4
	.dword	0x3f15fffa2959f41b              # double 8.3923000000000003E-5
	.dword	0xbea0016617c82eea              # double -4.7700000000000005E-7
	.dword	0x3f1c800232a405f3              # double 1.08719E-4
	.dword	0x3f49afff619f823c              # double 7.8392000000000002E-4
	.dword	0x3f4fd3ff5fe0d506              # double 9.7131699999999997E-4
	.dword	0x3edfff938d54d68b              # double 7.6290000000000001E-6
	.dword	0x3f131ffe89439c48              # double 7.2955999999999997E-5
	.dword	0x3f577800309639ad              # double 0.0014324190000000001
	.dword	0x3f89dc800cef6b77              # double 0.012627602
	.dword	0x3f97a0bffe8830bc              # double 0.023074150000000002
	.dword	0x3f6c6700031edd2a              # double 0.0034670830000000001
	.dword	0x3f3a800062c8c477              # double 4.0435800000000001E-4
	.dword	0x3ef87ffe92ed82fb              # double 2.3365000000000001E-5
	.dword	0x3fa1c82ffc6969f3              # double 0.034730433999999998
	.dword	0x3f72567ffa9d50c4              # double 0.0044770239999999996
	.dword	0x3f4fbfffc60497d0              # double 9.6893299999999995E-4
	.dword	0x3f151ff7c218e9b1              # double 8.0585000000000002E-5
	.dword	0xbeb0016617c82eea              # double -9.540000000000001E-7
	.dword	0x3f1c5fff66747595              # double 1.08242E-4
	.dword	0x3f47fbffeb323d95              # double 7.3194500000000001E-4
	.dword	0x3f40e8006b1b123b              # double 5.1593799999999997E-4
	.dword	0x3edc004ce8214d3e              # double 6.6760000000000001E-6
	.dword	0x3f0bc00297928be7              # double 5.2929000000000001E-5
	.dword	0x3f54cdff9f2972e2              # double 0.0012698169999999999
	.dword	0x3f881d80076614a1              # double 0.011775017
	.dword	0x3f987b2006db9161              # double 0.023907185000000001
	.dword	0x3f6dad000effb365              # double 0.0036225319999999999
	.dword	0x3f3cb7fe80f14e84              # double 4.3821300000000001E-4
	.dword	0x3efa7fe69db6e83d              # double 2.5272000000000001E-5
	.dword	0x3fa19e90011d1416              # double 0.034412861000000003
	.dword	0x3f72bbfffe860afa              # double 0.004573822
	.dword	0x3f4f43ffab93b97d              # double 9.5415099999999997E-4
	.dword	0x3f142003bcb43710              # double 7.6771000000000001E-5
	.dword	0xbeb0016617c82eea              # double -9.540000000000001E-7
	.dword	0x3f1c00082ff1aca3              # double 1.0681200000000001E-4
	.dword	0x3f4618008e009a6b              # double 6.7424800000000001E-4
	.dword	0x3f01800db4fcfff9              # double 3.3379E-5
	.dword	0x3eda002025284761              # double 6.1990000000000003E-6
	.dword	0x3f01fff689a37123              # double 3.4332000000000003E-5
	.dword	0x3f52340073d47447              # double 0.001111031
	.dword	0x3f86643ff91cea7a              # double 0.010933399
	.dword	0x3f99519ffd2d5f2b              # double 0.024725436999999999
	.dword	0x3f6ee6000acdf57d              # double 0.003771782
	.dword	0x3f3ef8019da8b6b2              # double 4.7254600000000001E-4
	.dword	0x3efd001e916e2f91              # double 2.7657E-5
	.dword	0x3fa16fc0016255b6              # double 0.034055710000000003
	.dword	0x3f730affebe6a112              # double 0.0046491620000000001
	.dword	0x3f4ea801107644d6              # double 9.3555500000000002E-4
	.dword	0x3f13400155732ca6              # double 7.3433E-5
	.dword	0xbeb0016617c82eea              # double -9.540000000000001E-7
	.dword	0x3f1b9fffcb62fb89              # double 1.05381E-4
	.dword	0x3f440000f084a6b2              # double 6.1035199999999999E-4
	.dword	0xbf3f2ffdebf5ff43              # double -4.7588300000000002E-4
	.dword	0x3ed5ffc69f363ba6              # double 5.2449999999999998E-6
	.dword	0x3ef1fff689a37123              # double 1.7166000000000001E-5
	.dword	0x3f4f57ff456ff6b3              # double 9.56535E-4
	.dword	0x3f84b1400fa0c315              # double 0.010103703
	.dword	0x3f9a23bff8a8f3aa              # double 0.025527000000000001
	.dword	0x3f70087ff0141377              # double 0.0039143559999999999
	.dword	0x3f40a00090f48477              # double 5.0735500000000002E-4
	.dword	0x3eff8011ccf5d64a              # double 3.0040999999999999E-5
	.dword	0x3fa13be000055e64              # double 0.033659935000000002
	.dword	0x3f734380077742ad              # double 0.0047030450000000003
	.dword	0x3f4dfc010f4107ff              # double 9.1505099999999995E-4
	.dword	0x3f125ffeee32223c              # double 7.0094999999999999E-5
	.dword	0xbeb0016617c82eea              # double -9.540000000000001E-7
	.dword	0x3f1ae0003051817d              # double 1.0252E-4
	.dword	0x3f41ac005fb27e53              # double 5.3930299999999998E-4
	.dword	0xbf5093ff8462ae54              # double -0.0010118480000000001
	.dword	0x3ed3ff99dc3d35c9              # double 4.7679999999999999E-6
	.dword	0x3eb0016617c82eea              # double 9.540000000000001E-7
	.dword	0x3f4a6ffefcb0fc48              # double 8.06808E-4
	.dword	0x3f83057ffa3ed383              # double 0.009287834
	.dword	0x3f9af14004e3fba4              # double 0.026310921000000001
	.dword	0x3f70957feaad18b9              # double 0.0040488240000000003
	.dword	0x3f41c4005314ad95              # double 5.4216400000000004E-4
	.dword	0x3f010002843ebe82              # double 3.2425000000000002E-5
	.dword	0x3fa102effd062e20              # double 0.033225536
	.dword	0x3f73677ff48a898f              # double 0.0047373770000000001
	.dword	0x3f4d37fef4e81ee3              # double 8.9168500000000002E-4
	.dword	0x3f115ff9bac18774              # double 6.6279999999999996E-5
	.dword	0xbeb8021923ac465e              # double -1.4309999999999999E-6
	.dword	0x3f19fffdc9107713              # double 9.9182E-5
	.dword	0x3f3e4fffd037eee2              # double 4.6253199999999998E-4
	.dword	0xbf59c80067e27000              # double -0.001573563
	.dword	0x3ed2007ffa02b259              # double 4.2919999999999997E-6
	.dword	0xbeecffd9d93e8ef6              # double -1.3828E-5
	.dword	0x3f45b0000d6bf94d              # double 6.6184999999999996E-4
	.dword	0x3f8161c00e7868c7              # double 0.0084872249999999992
	.dword	0x3f9bb93ffd1b1e3f              # double 0.027073860000000002
	.dword	0x3f71197fea014c42              # double 0.0041747090000000004
	.dword	0x3f42e8001534d6b3              # double 5.7697300000000005E-4
	.dword	0x3f023ffc220291de              # double 3.4808999999999998E-5
	.dword	0x3fa0c53fff633bd3              # double 0.032754897999999998
	.dword	0x3f7376fff7d8a559              # double 0.0047521589999999997
	.dword	0x3f4c63ffbffa67a1              # double 8.6641300000000001E-4
	.dword	0x3f108008818c6531              # double 6.2942999999999997E-5
	.dword	0xbeb8021923ac465e              # double -1.4309999999999999E-6
	.dword	0x3f18fff8959fdc4b              # double 9.5366999999999997E-5
	.dword	0x3f38d00145e171dc              # double 3.7860900000000002E-4
	.dword	0xbf61b500163f206b              # double -0.0021615029999999999
	.dword	0x3ed000533709ac7c              # double 3.8149999999999999E-6
	.dword	0xbefc801360afee1a              # double -2.7180000000000001E-5
	.dword	0x3f411c00ab6562ca              # double 5.2213699999999999E-4
	.dword	0x3f7f8d7fec04b1a7              # double 0.0077033040000000002
	.dword	0x3f9c7ba000de43ba              # double 0.027815342
	.dword	0x3f7193001136a2ee              # double 0.0042905809999999999
	.dword	0x3f440bffd754ffd0              # double 6.1178199999999995E-4
	.dword	0x3f03bffb582585f6              # double 3.7669999999999997E-5
	.dword	0x3fa082cffe85818a              # double 0.032248020000000002
	.dword	0x3f73737fee3ba130              # double 0.0047488210000000003
	.dword	0x3f4b7c00f1307329              # double 8.3875699999999997E-4
	.dword	0x3f0f400c3496b58f              # double 5.9605000000000003E-5
	.dword	0xbebffe80ac96541d              # double -1.9069999999999999E-6
	.dword	0x3f179ffc2bac7891              # double 9.0122000000000002E-5
	.dword	0x3f32e7fdef7359ae              # double 2.8848600000000002E-4
	.dword	0xbf66ba0038d75965              # double -0.002774239
	.dword	0x3ecc004ce8214d3e              # double 3.3380000000000001E-6
	.dword	0xbf04bfef5d8a3897              # double -3.9576999999999997E-5
	.dword	0x3f396ffe14c35b8a              # double 3.88145E-4
	.dword	0x3f7c6a00018b2312              # double 0.0069370270000000001
	.dword	0x3f9d37c002307e44              # double 0.028532981999999998
	.dword	0x3f72018010642edc              # double 0.0043959619999999998
	.dword	0x3f452fff997528ee              # double 6.4659099999999996E-4
	.dword	0x3f053ffa8e487a0f              # double 4.0531000000000002E-5
	.dword	0x3fa03be000055e64              # double 0.031706810000000002
	.dword	0x3f735dffee14f995              # double 0.0047283170000000001
	.dword	0x3f4a87fef0132b89              # double 8.0966899999999994E-4
	.dword	0x3f0d4001cdb57fff              # double 5.5789999999999999E-5
	.dword	0xbebffe80ac96541d              # double -1.9069999999999999E-6
	.dword	0x3f161ffcf5898479              # double 8.4400000000000005E-5
	.dword	0x3f292003f8d560bc              # double 1.9168899999999999E-4
	.dword	0xbf6bf1fffbe8072a              # double -0.0034112930000000001
	.dword	0x3ecc004ce8214d3e              # double 3.3380000000000001E-6
	.dword	0xbf0a8008f9ceb88a              # double -5.0544999999999998E-5
	.dword	0x3f3107feebc7a88f              # double 2.5987599999999998E-4
	.dword	0x3f7959ffea754312              # double 0.0061893460000000001
	.dword	0x3f9ded20070f1b84              # double 0.029224872999999998
	.dword	0x3f72640015e0a32a              # double 0.0044898990000000003
	.dword	0x3f464fff020f6001              # double 6.8092300000000005E-4
	.dword	0x3f06bff9c46b6e27              # double 4.3392000000000001E-5
	.dword	0x3f9fe13ffefc278c              # double 0.031132698
	.dword	0x3f73370002956cca              # double 0.0046911239999999996
	.dword	0x3f4988002de707d0              # double 7.7915199999999997E-4
	.dword	0x3f0bc00297928be7              # double 5.2929000000000001E-5
	.dword	0xbec3ff99dc3d35c9              # double -2.384E-6
	.dword	0x3f145ff827076fa5              # double 7.7724000000000003E-5
	.dword	0x3f17200228fa1f40              # double 8.8214999999999995E-5
	.dword	0xbf70adffe940063c              # double -0.0040721890000000004
	.dword	0x3ec7fff3622f4183              # double 2.8609999999999998E-6
	.dword	0xbf0fbff5093d26b8              # double -6.0557999999999999E-5
	.dword	0x3f21ffff20a96536              # double 1.37329E-4
	.dword	0x3f765f80183e3a4d              # double 0.0054621699999999997
	.dword	0x3f9e9b7ff8b3b071              # double 0.02989006
	.dword	0x3f72b87ff4e906d0              # double 0.0045704839999999997
	.dword	0x3f4767ffdd5f3000              # double 7.1430199999999999E-4
	.dword	0x3f083ff8fa8e623f              # double 4.6252999999999999E-5
	.dword	0x3f9f425fff77a281              # double 0.030526637999999998
	.dword	0x3f72ff7ffd6647b3              # double 0.0046381950000000003
	.dword	0x3f487c005f290df4              # double 7.4720400000000001E-4
	.dword	0x3f09fffdc9107713              # double 4.9591E-5
	.dword	0x3f737b8017d72606              # double 0.0047564510000000001
	.dword	0x3ef6801688241db9              # double 2.1458E-5
	.dword	0xbf123ffc220291de              # double -6.9617999999999997E-5
	.dword	0x3ec3ff99dc3d35c9              # double 2.384E-6
	.size	enwindow, 2048

	.type	mm,@object                      # @mm
	.local	mm
	.comm	mm,3968,8
	.type	cos_s,@object                   # @cos_s
	.local	cos_s
	.comm	cos_s,288,16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sb_sample
