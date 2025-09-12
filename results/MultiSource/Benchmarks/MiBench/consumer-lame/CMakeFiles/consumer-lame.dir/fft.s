	.file	"fft.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function fft_short
.LCPI0_0:
	.word	0x3f3504f3                      # float 0.707106769
	.text
	.globl	fft_short
	.p2align	5
	.type	fft_short,@function
fft_short:                              # @fft_short
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	move	$s0, $a2
	move	$fp, $a0
	blt	$a3, $a1, .LBB0_8
# %bb.1:                                # %.preheader.us.preheader
	alsl.d	$s2, $a1, $s0, 3
	pcalau12i	$a0, %pc_hi20(rv_tbl)
	addi.d	$s0, $a0, %pc_lo12(rv_tbl)
	ld.d	$a0, $s2, 0
	addi.d	$a1, $s0, 248
	pcalau12i	$a2, %pc_hi20(window_s)
	addi.d	$s1, $a2, %pc_lo12(window_s)
	move	$a2, $zero
	ori	$a3, $zero, 127
	ori	$a4, $zero, 63
	ori	$a5, $zero, 126
	ori	$a6, $zero, 62
	addi.w	$a7, $zero, -512
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.h	$t0, $a1, 0
	alsl.d	$t1, $t0, $a0, 1
	ld.h	$t3, $t1, 384
	alsl.d	$t2, $t0, $s1, 2
	slli.d	$t4, $t0, 2
	fldx.s	$fa0, $s1, $t4
	movgr2fr.w	$fa1, $t3
	ffint.s.w	$fa1, $fa1
	sub.d	$t3, $a3, $t0
	ld.h	$t4, $t1, 640
	slli.d	$t3, $t3, 2
	fldx.s	$fa2, $s1, $t3
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $t4
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ld.h	$t3, $t1, 512
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $t2, 256
	movgr2fr.w	$fa3, $t3
	ffint.s.w	$fa3, $fa3
	sub.d	$t3, $a4, $t0
	ld.h	$t4, $t1, 768
	slli.d	$t3, $t3, 2
	fldx.s	$fa4, $s1, $t3
	fmul.s	$fa1, $fa1, $fa3
	movgr2fr.w	$fa3, $t4
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	add.d	$t3, $fp, $a2
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $t3, 496
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t3, 504
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $t3, 500
	ld.h	$t4, $t1, 386
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $t3, 508
	fld.s	$fa0, $t2, 4
	movgr2fr.w	$fa1, $t4
	sub.d	$t4, $a5, $t0
	slli.d	$t4, $t4, 2
	ld.h	$t5, $t1, 642
	fldx.s	$fa2, $s1, $t4
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $t5
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ld.h	$t4, $t1, 514
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $t2, 260
	movgr2fr.w	$fa3, $t4
	ffint.s.w	$fa3, $fa3
	sub.d	$t0, $a6, $t0
	ld.h	$t1, $t1, 770
	slli.d	$t0, $t0, 2
	fldx.s	$fa4, $s1, $t0
	fmul.s	$fa1, $fa1, $fa3
	movgr2fr.w	$fa3, $t1
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $t3, 1008
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t3, 1016
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $t3, 1012
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $t3, 1020
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, -8
	bne	$a2, $a7, .LBB0_2
# %bb.3:                                # %.loopexit.us
	ori	$a1, $zero, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fht)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	addi.d	$a0, $fp, 2044
	ori	$a2, $zero, 248
	ori	$a3, $zero, 127
	ori	$a4, $zero, 63
	ori	$a5, $zero, 126
	ori	$a6, $zero, 62
	addi.w	$s3, $zero, -8
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ldx.h	$a7, $s0, $a2
	alsl.d	$t0, $a7, $a1, 1
	ld.h	$t2, $t0, 768
	alsl.d	$t1, $a7, $s1, 2
	slli.d	$t3, $a7, 2
	fldx.s	$fa0, $s1, $t3
	movgr2fr.w	$fa1, $t2
	ffint.s.w	$fa1, $fa1
	sub.d	$t2, $a3, $a7
	ld.h	$t3, $t0, 1024
	slli.d	$t2, $t2, 2
	fldx.s	$fa2, $s1, $t2
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $t3
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ld.h	$t2, $t0, 896
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $t1, 256
	movgr2fr.w	$fa3, $t2
	ffint.s.w	$fa3, $fa3
	sub.d	$t2, $a4, $a7
	ld.h	$t3, $t0, 1152
	slli.d	$t2, $t2, 2
	fldx.s	$fa4, $s1, $t2
	fmul.s	$fa1, $fa1, $fa3
	movgr2fr.w	$fa3, $t3
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a0, -524
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, -516
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, -520
	ld.h	$t2, $t0, 770
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, -512
	fld.s	$fa0, $t1, 4
	movgr2fr.w	$fa1, $t2
	sub.d	$t2, $a5, $a7
	slli.d	$t2, $t2, 2
	ld.h	$t3, $t0, 1026
	fldx.s	$fa2, $s1, $t2
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $t3
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ld.h	$t2, $t0, 898
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $t1, 260
	movgr2fr.w	$fa3, $t2
	ffint.s.w	$fa3, $fa3
	sub.d	$a7, $a6, $a7
	ld.h	$t0, $t0, 1154
	slli.d	$a7, $a7, 2
	fldx.s	$fa4, $s1, $a7
	fmul.s	$fa1, $fa1, $fa3
	movgr2fr.w	$fa3, $t0
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a0, -12
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, -4
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, -8
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, -16
	bne	$a2, $s3, .LBB0_4
# %bb.5:                                # %.loopexit.us.1
	addi.d	$a0, $a0, -508
	ori	$a1, $zero, 256
	pcaddu18i	$ra, %call36(fht)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$a1, $fp, 2047
	addi.d	$a1, $a1, 1021
	ori	$a2, $zero, 248
	ori	$a3, $zero, 127
	ori	$a4, $zero, 63
	ori	$a5, $zero, 126
	ori	$a6, $zero, 62
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ldx.h	$a7, $s0, $a2
	alsl.d	$t0, $a7, $a0, 1
	ld.h	$t2, $t0, 1152
	alsl.d	$t1, $a7, $s1, 2
	slli.d	$t3, $a7, 2
	fldx.s	$fa0, $s1, $t3
	movgr2fr.w	$fa1, $t2
	ffint.s.w	$fa1, $fa1
	sub.d	$t2, $a3, $a7
	ld.h	$t3, $t0, 1408
	slli.d	$t2, $t2, 2
	fldx.s	$fa2, $s1, $t2
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $t3
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ld.h	$t2, $t0, 1280
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $t1, 256
	movgr2fr.w	$fa3, $t2
	ffint.s.w	$fa3, $fa3
	sub.d	$t2, $a4, $a7
	ld.h	$t3, $t0, 1536
	slli.d	$t2, $t2, 2
	fldx.s	$fa4, $s1, $t2
	fmul.s	$fa1, $fa1, $fa3
	movgr2fr.w	$fa3, $t3
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a1, -524
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, -516
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a1, -520
	ld.h	$t2, $t0, 1154
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a1, -512
	fld.s	$fa0, $t1, 4
	movgr2fr.w	$fa1, $t2
	sub.d	$t2, $a5, $a7
	slli.d	$t2, $t2, 2
	ld.h	$t3, $t0, 1410
	fldx.s	$fa2, $s1, $t2
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $t3
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ld.h	$t2, $t0, 1282
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $t1, 260
	movgr2fr.w	$fa3, $t2
	ffint.s.w	$fa3, $fa3
	sub.d	$a7, $a6, $a7
	ld.h	$t0, $t0, 1538
	slli.d	$a7, $a7, 2
	fldx.s	$fa4, $s1, $a7
	fmul.s	$fa1, $fa1, $fa3
	movgr2fr.w	$fa3, $t0
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a1, -12
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, -4
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a1, -8
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, -16
	bne	$a2, $s3, .LBB0_6
# %bb.7:                                # %.loopexit.us.2
	addi.d	$a0, $a1, -508
	ori	$a1, $zero, 256
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(fht)
	jr	$t8
.LBB0_8:                                # %.split
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_13
# %bb.9:                                # %.preheader298.us.preheader
	pcalau12i	$a0, %pc_hi20(rv_tbl)
	addi.d	$s1, $a0, %pc_lo12(rv_tbl)
	pcalau12i	$a0, %pc_hi20(window_s)
	addi.d	$s2, $a0, %pc_lo12(window_s)
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI0_0)
	ori	$s4, $zero, 127
	ori	$s5, $zero, 63
	ori	$s6, $zero, 126
	ori	$s7, $zero, 62
	addi.w	$s8, $zero, -8
	.p2align	4, , 16
.LBB0_10:                               # %.preheader298.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	slli.d	$a0, $s3, 10
	add.d	$a0, $fp, $a0
	addi.d	$a0, $a0, 512
	ld.d	$a1, $s0, 0
	alsl.d	$a3, $s3, $s3, 1
	ld.d	$a2, $s0, 8
	slli.d	$a3, $a3, 6
	addi.d	$a3, $a3, 192
	ori	$a4, $zero, 248
	.p2align	4, , 16
.LBB0_11:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a5, $s1, $a4
	add.w	$a6, $a3, $a5
	slli.d	$a6, $a6, 1
	ldx.h	$t0, $a1, $a6
	ldx.h	$t1, $a2, $a6
	alsl.d	$a7, $a5, $s2, 2
	slli.d	$t2, $a5, 2
	fldx.s	$fa0, $s2, $t2
	add.d	$t0, $t1, $t0
	movgr2fr.w	$fa1, $t0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa1, $fs0
	fmul.s	$fa0, $fa0, $fa1
	addi.d	$t0, $a6, 256
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	sub.d	$t2, $s4, $a5
	slli.d	$t2, $t2, 2
	fldx.s	$fa1, $s2, $t2
	add.d	$t0, $t0, $t1
	movgr2fr.w	$fa2, $t0
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fs0
	fmul.s	$fa1, $fa1, $fa2
	addi.d	$t0, $a6, 128
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a7, 256
	add.d	$t0, $t0, $t1
	movgr2fr.w	$fa3, $t0
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa3, $fs0
	fmul.s	$fa1, $fa1, $fa3
	addi.d	$t0, $a6, 384
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	sub.d	$t2, $s5, $a5
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $s2, $t2
	add.d	$t0, $t0, $t1
	movgr2fr.w	$fa4, $t0
	ffint.s.w	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fs0
	fmul.s	$fa3, $fa3, $fa4
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a0, -16
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, -8
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, -12
	addi.d	$t0, $a6, 2
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, -4
	fld.s	$fa0, $a7, 4
	add.d	$t0, $t0, $t1
	movgr2fr.w	$fa1, $t0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa1, $fs0
	fmul.s	$fa0, $fa0, $fa1
	addi.d	$t0, $a6, 258
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	sub.d	$t2, $s6, $a5
	slli.d	$t2, $t2, 2
	fldx.s	$fa1, $s2, $t2
	add.d	$t0, $t0, $t1
	movgr2fr.w	$fa2, $t0
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fs0
	fmul.s	$fa1, $fa1, $fa2
	addi.d	$t0, $a6, 130
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a7, 260
	add.d	$a7, $t0, $t1
	movgr2fr.w	$fa3, $a7
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa3, $fs0
	fmul.s	$fa1, $fa1, $fa3
	addi.d	$a6, $a6, 386
	ldx.h	$a7, $a1, $a6
	ldx.h	$a6, $a2, $a6
	sub.d	$a5, $s7, $a5
	slli.d	$a5, $a5, 2
	fldx.s	$fa3, $s2, $a5
	add.d	$a5, $a6, $a7
	movgr2fr.w	$fa4, $a5
	ffint.s.w	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fs0
	fmul.s	$fa3, $fa3, $fa4
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a0, 496
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 504
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, 500
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, 508
	addi.d	$a4, $a4, -8
	addi.d	$a0, $a0, -16
	bne	$a4, $s8, .LBB0_11
# %bb.12:                               # %.loopexit299.us
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a1, $zero, 256
	pcaddu18i	$ra, %call36(fht)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	ori	$a0, $zero, 3
	bne	$s3, $a0, .LBB0_10
	b	.LBB0_17
.LBB0_13:                               # %.preheader300.preheader
	pcalau12i	$a0, %pc_hi20(rv_tbl)
	addi.d	$s1, $a0, %pc_lo12(rv_tbl)
	pcalau12i	$a0, %pc_hi20(window_s)
	addi.d	$s2, $a0, %pc_lo12(window_s)
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI0_0)
	ori	$s4, $zero, 127
	ori	$s5, $zero, 63
	ori	$s6, $zero, 126
	ori	$s7, $zero, 62
	addi.w	$s8, $zero, -8
	.p2align	4, , 16
.LBB0_14:                               # %.preheader300
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	slli.d	$a0, $s3, 10
	add.d	$a0, $fp, $a0
	addi.d	$a0, $a0, 512
	ld.d	$a1, $s0, 0
	alsl.d	$a3, $s3, $s3, 1
	ld.d	$a2, $s0, 8
	slli.d	$a3, $a3, 6
	addi.d	$a3, $a3, 192
	ori	$a4, $zero, 248
	.p2align	4, , 16
.LBB0_15:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a5, $s1, $a4
	add.w	$a6, $a3, $a5
	slli.d	$a6, $a6, 1
	ldx.h	$t0, $a1, $a6
	ldx.h	$t1, $a2, $a6
	alsl.d	$a7, $a5, $s2, 2
	slli.d	$t2, $a5, 2
	fldx.s	$fa0, $s2, $t2
	sub.d	$t0, $t0, $t1
	movgr2fr.w	$fa1, $t0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa1, $fs0
	fmul.s	$fa0, $fa0, $fa1
	addi.d	$t0, $a6, 256
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	sub.d	$t2, $s4, $a5
	slli.d	$t2, $t2, 2
	fldx.s	$fa1, $s2, $t2
	sub.d	$t0, $t1, $t0
	movgr2fr.w	$fa2, $t0
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fs0
	fmul.s	$fa1, $fa1, $fa2
	addi.d	$t0, $a6, 128
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a7, 256
	sub.d	$t0, $t1, $t0
	movgr2fr.w	$fa3, $t0
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa3, $fs0
	fmul.s	$fa1, $fa1, $fa3
	addi.d	$t0, $a6, 384
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	sub.d	$t2, $s5, $a5
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $s2, $t2
	sub.d	$t0, $t1, $t0
	movgr2fr.w	$fa4, $t0
	ffint.s.w	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fs0
	fmul.s	$fa3, $fa3, $fa4
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a0, -16
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, -8
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, -12
	addi.d	$t0, $a6, 2
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, -4
	fld.s	$fa0, $a7, 4
	sub.d	$t0, $t1, $t0
	movgr2fr.w	$fa1, $t0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa1, $fs0
	fmul.s	$fa0, $fa0, $fa1
	addi.d	$t0, $a6, 258
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	sub.d	$t2, $s6, $a5
	slli.d	$t2, $t2, 2
	fldx.s	$fa1, $s2, $t2
	sub.d	$t0, $t1, $t0
	movgr2fr.w	$fa2, $t0
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fs0
	fmul.s	$fa1, $fa1, $fa2
	addi.d	$t0, $a6, 130
	ldx.h	$t1, $a1, $t0
	ldx.h	$t0, $a2, $t0
	fsub.s	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a7, 260
	sub.d	$a7, $t1, $t0
	movgr2fr.w	$fa3, $a7
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa3, $fs0
	fmul.s	$fa1, $fa1, $fa3
	addi.d	$a6, $a6, 386
	ldx.h	$a7, $a1, $a6
	ldx.h	$a6, $a2, $a6
	sub.d	$a5, $s7, $a5
	slli.d	$a5, $a5, 2
	fldx.s	$fa3, $s2, $a5
	sub.d	$a5, $a7, $a6
	movgr2fr.w	$fa4, $a5
	ffint.s.w	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fs0
	fmul.s	$fa3, $fa3, $fa4
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a0, 496
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 504
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, 500
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, 508
	addi.d	$a4, $a4, -8
	addi.d	$a0, $a0, -16
	bne	$a4, $s8, .LBB0_15
# %bb.16:                               # %.loopexit301
                                        #   in Loop: Header=BB0_14 Depth=1
	ori	$a1, $zero, 256
	pcaddu18i	$ra, %call36(fht)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	ori	$a0, $zero, 3
	bne	$s3, $a0, .LBB0_14
.LBB0_17:                               # %.split306.us
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end0:
	.size	fft_short, .Lfunc_end0-fft_short
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fht
.LCPI1_0:
	.dword	0x3ff6a09e667f3bcd              # double 1.4142135623730951
	.text
	.p2align	5
	.type	fht,@function
fht:                                    # @fht
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
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$a2, $a1, $a0, 2
	ori	$a3, $zero, 4
	pcalau12i	$a4, %pc_hi20(costab)
	addi.d	$a4, $a4, %pc_lo12(costab)
	pcalau12i	$a5, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a5, %pc_lo12(.LCPI1_0)
	ori	$a5, $zero, 2
	vldi	$vr1, -1168
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %._crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a4, $a4, 8
	bge	$a3, $a1, .LBB1_9
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_7 Depth 3
	ext.w.h	$t3, $a3
	srai.d	$a6, $t3, 1
	slli.d	$a7, $a3, 1
	alsl.d	$t0, $a3, $a3, 1
	slli.d	$a3, $a3, 2
	ext.w.h	$a3, $a3
	ext.w.h	$t1, $a7
	ext.w.h	$t2, $t0
	slli.d	$t0, $a6, 2
	slli.d	$a7, $a3, 2
	slli.d	$t4, $t1, 2
	alsl.d	$t7, $t1, $t0, 2
	slli.d	$t5, $t2, 2
	alsl.d	$t8, $t2, $t0, 2
	slli.d	$t6, $t3, 2
	alsl.d	$fp, $t3, $t0, 2
	move	$s0, $a0
	.p2align	4, , 16
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $s0, 0
	fldx.s	$fa3, $s0, $t6
	fldx.s	$fa4, $s0, $t4
	fldx.s	$fa5, $s0, $t5
	fsub.s	$fa6, $fa2, $fa3
	fadd.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa4, $fa5
	fadd.s	$fa4, $fa4, $fa5
	fsub.s	$fa5, $fa2, $fa4
	fstx.s	$fa5, $s0, $t4
	fadd.s	$fa2, $fa2, $fa4
	fst.s	$fa2, $s0, 0
	fsub.s	$fa2, $fa6, $fa3
	fstx.s	$fa2, $s0, $t5
	fadd.s	$fa2, $fa6, $fa3
	fstx.s	$fa2, $s0, $t6
	fldx.s	$fa2, $s0, $t0
	fldx.s	$fa3, $s0, $fp
	fldx.s	$fa4, $s0, $t8
	fsub.s	$fa5, $fa2, $fa3
	fadd.s	$fa2, $fa2, $fa3
	fldx.s	$fa3, $s0, $t7
	fcvt.d.s	$fa4, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fcvt.d.s	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fsub.s	$fa6, $fa2, $fa3
	fstx.s	$fa6, $s0, $t7
	fadd.s	$fa2, $fa2, $fa3
	fstx.s	$fa2, $s0, $t0
	fsub.s	$fa2, $fa5, $fa4
	fstx.s	$fa2, $s0, $t8
	fadd.s	$fa2, $fa5, $fa4
	fstx.s	$fa2, $s0, $fp
	add.d	$s0, $s0, $a7
	bltu	$s0, $a2, .LBB1_3
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	blt	$a6, $a5, .LBB1_1
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB1_2 Depth=1
	fld.s	$fa2, $a4, 4
	fld.s	$fa3, $a4, 0
	addi.d	$t0, $t6, -4
	alsl.d	$t1, $t1, $t0, 2
	alsl.d	$t2, $t2, $t0, 2
	slli.d	$t3, $t3, 3
	addi.d	$t3, $t3, -4
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 4
	ori	$t7, $zero, 1
	ori	$t8, $zero, 4
	.p2align	4, , 16
.LBB1_6:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
	fadd.s	$fa5, $fa2, $fa2
	fneg.s	$fa4, $fa5
	fmadd.s	$fa4, $fa4, $fa2, $fa1
	fmul.s	$fa5, $fa3, $fa5
	move	$fp, $t6
	move	$s0, $t5
	move	$s1, $t4
	move	$s2, $t8
	move	$s3, $t3
	move	$s4, $t2
	move	$s5, $t1
	move	$s6, $t0
	.p2align	4, , 16
.LBB1_7:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.s	$fa6, $a0, $s3
	fldx.s	$fa7, $a0, $fp
	fneg.s	$ft0, $fa6
	fmul.s	$ft0, $fa4, $ft0
	fmadd.s	$ft0, $fa5, $fa7, $ft0
	fldx.s	$ft1, $a0, $s2
	fmul.s	$fa6, $fa5, $fa6
	fmadd.s	$fa6, $fa4, $fa7, $fa6
	fldx.s	$fa7, $a0, $s6
	fsub.s	$ft2, $ft1, $fa6
	fadd.s	$fa6, $ft1, $fa6
	fldx.s	$ft1, $a0, $s4
	fsub.s	$ft3, $fa7, $ft0
	fldx.s	$ft4, $a0, $s0
	fadd.s	$fa7, $fa7, $ft0
	fneg.s	$ft0, $ft1
	fmul.s	$ft0, $fa4, $ft0
	fmadd.s	$ft0, $fa5, $ft4, $ft0
	fldx.s	$ft5, $a0, $s1
	fmul.s	$ft1, $fa5, $ft1
	fldx.s	$ft6, $a0, $s5
	fmadd.s	$ft1, $fa4, $ft4, $ft1
	fsub.s	$ft4, $ft5, $ft1
	fadd.s	$ft1, $ft5, $ft1
	fsub.s	$ft5, $ft6, $ft0
	fadd.s	$ft0, $ft6, $ft0
	fneg.s	$ft6, $ft5
	fmul.s	$ft6, $fa3, $ft6
	fmadd.s	$ft6, $fa2, $ft1, $ft6
	fmul.s	$ft5, $fa2, $ft5
	fmadd.s	$ft1, $fa3, $ft1, $ft5
	fsub.s	$ft5, $fa6, $ft1
	fstx.s	$ft5, $a0, $s1
	fadd.s	$fa6, $fa6, $ft1
	fstx.s	$fa6, $a0, $s2
	fsub.s	$fa6, $ft3, $ft6
	fstx.s	$fa6, $a0, $s4
	fadd.s	$fa6, $ft3, $ft6
	fstx.s	$fa6, $a0, $s3
	fneg.s	$fa6, $ft4
	fmul.s	$fa6, $fa2, $fa6
	fmadd.s	$fa6, $fa3, $ft0, $fa6
	fmul.s	$ft1, $fa3, $ft4
	fmadd.s	$ft0, $fa2, $ft0, $ft1
	fsub.s	$ft1, $fa7, $ft0
	fstx.s	$ft1, $a0, $s5
	fadd.s	$fa7, $fa7, $ft0
	fstx.s	$fa7, $a0, $s6
	fsub.s	$fa7, $ft2, $fa6
	fstx.s	$fa7, $a0, $s0
	fadd.s	$fa6, $ft2, $fa6
	fstx.s	$fa6, $a0, $fp
	add.d	$s6, $s6, $a7
	add.d	$s5, $s5, $a7
	add.d	$s4, $s4, $a7
	add.d	$s3, $s3, $a7
	add.d	$s2, $s2, $a7
	add.d	$s7, $a0, $s2
	add.d	$s1, $s1, $a7
	add.d	$s0, $s0, $a7
	add.d	$fp, $fp, $a7
	bltu	$s7, $a2, .LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=2
	fld.s	$fa4, $a4, 4
	fld.s	$fa5, $a4, 0
	fneg.s	$fa6, $fa4
	fmul.s	$fa6, $fa2, $fa6
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fmadd.s	$fa3, $fa3, $fa5, $fa6
	addi.d	$t7, $t7, 1
	addi.d	$t0, $t0, -4
	addi.d	$t1, $t1, -4
	addi.d	$t2, $t2, -4
	addi.d	$t3, $t3, -4
	addi.d	$t8, $t8, 4
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 4
	bne	$t7, $a6, .LBB1_6
	b	.LBB1_1
.LBB1_9:
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	fht, .Lfunc_end1-fht
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function fft_long
.LCPI2_0:
	.word	0x3f3504f3                      # float 0.707106769
	.text
	.globl	fft_long
	.p2align	5
	.type	fft_long,@function
fft_long:                               # @fft_long
# %bb.0:
	ori	$a3, $zero, 1
	blt	$a3, $a1, .LBB2_3
# %bb.1:                                # %.preheader
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	addi.d	$a2, $a0, 2047
	addi.d	$a2, $a2, 2033
	ori	$a3, $zero, 254
	pcalau12i	$a4, %pc_hi20(rv_tbl)
	addi.d	$a4, $a4, %pc_lo12(rv_tbl)
	pcalau12i	$a5, %pc_hi20(window)
	addi.d	$a5, $a5, %pc_lo12(window)
	ori	$a6, $zero, 511
	ori	$a7, $zero, 255
	ori	$t0, $zero, 510
	addi.w	$t1, $zero, -2
	ori	$t2, $zero, 254
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ldx.h	$t3, $a4, $t2
	slli.d	$t4, $t3, 1
	ldx.h	$t5, $a1, $t4
	slli.d	$t4, $t3, 2
	fldx.s	$fa0, $a5, $t4
	alsl.d	$t4, $t3, $a1, 1
	movgr2fr.w	$fa1, $t5
	ffint.s.w	$fa1, $fa1
	sub.d	$t5, $a6, $t3
	ld.h	$t6, $t4, 1024
	slli.d	$t5, $t5, 2
	fldx.s	$fa2, $a5, $t5
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $t6
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa1
	addi.d	$t5, $t3, 256
	slli.d	$t6, $t5, 1
	ldx.h	$t6, $a1, $t6
	fadd.s	$fa0, $fa0, $fa1
	slli.d	$t5, $t5, 2
	fldx.s	$fa1, $a5, $t5
	movgr2fr.w	$fa3, $t6
	ffint.s.w	$fa3, $fa3
	sub.d	$t5, $a7, $t3
	ld.h	$t6, $t4, 1536
	slli.d	$t5, $t5, 2
	fldx.s	$fa4, $a5, $t5
	fmul.s	$fa1, $fa1, $fa3
	movgr2fr.w	$fa3, $t6
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a2, -2048
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, -2040
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a2, -2044
	fsub.s	$fa0, $fa2, $fa4
	addi.d	$t5, $t3, 1
	slli.d	$t6, $t5, 1
	ldx.h	$t6, $a1, $t6
	fst.s	$fa0, $a2, -2036
	slli.d	$t5, $t5, 2
	fldx.s	$fa0, $a5, $t5
	movgr2fr.w	$fa1, $t6
	ffint.s.w	$fa1, $fa1
	sub.d	$t5, $t0, $t3
	ld.h	$t6, $t4, 1026
	slli.d	$t5, $t5, 2
	fldx.s	$fa2, $a5, $t5
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $t6
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa1
	addi.d	$t5, $t3, 257
	slli.d	$t6, $t5, 1
	ldx.h	$t6, $a1, $t6
	fadd.s	$fa0, $fa0, $fa1
	slli.d	$t5, $t5, 2
	fldx.s	$fa1, $a5, $t5
	movgr2fr.w	$fa3, $t6
	ffint.s.w	$fa3, $fa3
	sub.d	$t3, $a3, $t3
	ld.h	$t4, $t4, 1538
	slli.d	$t3, $t3, 2
	fldx.s	$fa4, $a5, $t3
	fmul.s	$fa1, $fa1, $fa3
	movgr2fr.w	$fa3, $t4
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fsub.s	$fa4, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa3, $fa0, $fa1
	fst.s	$fa3, $a2, 0
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 8
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a2, 4
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a2, 12
	addi.d	$t2, $t2, -2
	addi.d	$a2, $a2, -16
	bne	$t2, $t1, .LBB2_2
	b	.LBB2_8
.LBB2_3:
	ld.d	$a3, $a2, 0
	ld.d	$a2, $a2, 8
	ori	$a4, $zero, 2
	bne	$a1, $a4, .LBB2_6
# %bb.4:                                # %.preheader250.preheader
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 2033
	ori	$a4, $zero, 254
	pcalau12i	$a5, %pc_hi20(rv_tbl)
	addi.d	$a5, $a5, %pc_lo12(rv_tbl)
	pcalau12i	$a6, %pc_hi20(window)
	addi.d	$a6, $a6, %pc_lo12(window)
	pcalau12i	$a7, %pc_hi20(.LCPI2_0)
	fld.s	$fa0, $a7, %pc_lo12(.LCPI2_0)
	ori	$a7, $zero, 511
	ori	$t0, $zero, 255
	ori	$t1, $zero, 510
	addi.w	$t2, $zero, -2
	ori	$t3, $zero, 254
	.p2align	4, , 16
.LBB2_5:                                # %.preheader250
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$t4, $a5, $t3
	slli.d	$t5, $t4, 1
	ldx.h	$t6, $a3, $t5
	ldx.h	$t7, $a2, $t5
	slli.d	$t8, $t4, 2
	fldx.s	$fa1, $a6, $t8
	add.d	$t6, $t7, $t6
	movgr2fr.w	$fa2, $t6
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fa1, $fa1, $fa2
	addi.d	$t6, $t5, 1024
	ldx.h	$t7, $a3, $t6
	ldx.h	$t6, $a2, $t6
	sub.d	$t8, $a7, $t4
	slli.d	$t8, $t8, 2
	fldx.s	$fa2, $a6, $t8
	add.d	$t6, $t6, $t7
	movgr2fr.w	$fa3, $t6
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa3, $fa0
	fmul.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa1, $fa2
	addi.d	$t6, $t4, 256
	slli.d	$t7, $t6, 1
	ldx.h	$t8, $a3, $t7
	ldx.h	$t7, $a2, $t7
	fadd.s	$fa1, $fa1, $fa2
	slli.d	$t6, $t6, 2
	fldx.s	$fa2, $a6, $t6
	add.d	$t6, $t7, $t8
	movgr2fr.w	$fa4, $t6
	ffint.s.w	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fa0
	fmul.s	$fa2, $fa2, $fa4
	addi.d	$t6, $t5, 1536
	ldx.h	$t7, $a3, $t6
	ldx.h	$t6, $a2, $t6
	sub.d	$t8, $t0, $t4
	slli.d	$t8, $t8, 2
	fldx.s	$fa4, $a6, $t8
	add.d	$t6, $t6, $t7
	movgr2fr.w	$fa5, $t6
	ffint.s.w	$fa5, $fa5
	fmul.s	$fa5, $fa5, $fa0
	fmul.s	$fa4, $fa4, $fa5
	fsub.s	$fa5, $fa2, $fa4
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa4, $fa1, $fa2
	fst.s	$fa4, $a1, -2048
	fsub.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a1, -2040
	fadd.s	$fa1, $fa3, $fa5
	fst.s	$fa1, $a1, -2044
	fsub.s	$fa1, $fa3, $fa5
	addi.d	$t6, $t4, 1
	slli.d	$t7, $t6, 1
	ldx.h	$t8, $a3, $t7
	ldx.h	$t7, $a2, $t7
	fst.s	$fa1, $a1, -2036
	slli.d	$t6, $t6, 2
	fldx.s	$fa1, $a6, $t6
	add.d	$t6, $t7, $t8
	movgr2fr.w	$fa2, $t6
	sub.d	$t6, $t1, $t4
	slli.d	$t6, $t6, 2
	fldx.s	$fa3, $a6, $t6
	addi.d	$t6, $t5, 1026
	ldx.h	$t7, $a3, $t6
	ldx.h	$t6, $a2, $t6
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fa1, $fa1, $fa2
	add.d	$t6, $t6, $t7
	movgr2fr.w	$fa2, $t6
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa0
	addi.d	$t6, $t4, 257
	slli.d	$t7, $t6, 2
	fldx.s	$fa4, $a6, $t7
	slli.d	$t6, $t6, 1
	ldx.h	$t7, $a3, $t6
	ldx.h	$t6, $a2, $t6
	fmul.s	$fa2, $fa3, $fa2
	fsub.s	$fa3, $fa1, $fa2
	fadd.s	$fa1, $fa1, $fa2
	add.d	$t6, $t6, $t7
	movgr2fr.w	$fa2, $t6
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fa2, $fa4, $fa2
	addi.d	$t5, $t5, 1538
	ldx.h	$t6, $a3, $t5
	ldx.h	$t5, $a2, $t5
	sub.d	$t4, $a4, $t4
	slli.d	$t4, $t4, 2
	fldx.s	$fa4, $a6, $t4
	add.d	$t4, $t5, $t6
	movgr2fr.w	$fa5, $t4
	ffint.s.w	$fa5, $fa5
	fmul.s	$fa5, $fa5, $fa0
	fmul.s	$fa4, $fa4, $fa5
	fsub.s	$fa5, $fa2, $fa4
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa4, $fa1, $fa2
	fst.s	$fa4, $a1, 0
	fsub.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a1, 8
	fadd.s	$fa1, $fa3, $fa5
	fst.s	$fa1, $a1, 4
	fsub.s	$fa1, $fa3, $fa5
	fst.s	$fa1, $a1, 12
	addi.d	$t3, $t3, -2
	addi.d	$a1, $a1, -16
	bne	$t3, $t2, .LBB2_5
	b	.LBB2_8
.LBB2_6:                                # %.preheader252.preheader
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 2033
	ori	$a4, $zero, 254
	pcalau12i	$a5, %pc_hi20(rv_tbl)
	addi.d	$a5, $a5, %pc_lo12(rv_tbl)
	pcalau12i	$a6, %pc_hi20(window)
	addi.d	$a6, $a6, %pc_lo12(window)
	pcalau12i	$a7, %pc_hi20(.LCPI2_0)
	fld.s	$fa0, $a7, %pc_lo12(.LCPI2_0)
	ori	$a7, $zero, 511
	ori	$t0, $zero, 255
	ori	$t1, $zero, 510
	addi.w	$t2, $zero, -2
	ori	$t3, $zero, 254
	.p2align	4, , 16
.LBB2_7:                                # %.preheader252
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$t4, $a5, $t3
	slli.d	$t5, $t4, 1
	ldx.h	$t6, $a3, $t5
	ldx.h	$t7, $a2, $t5
	slli.d	$t8, $t4, 2
	fldx.s	$fa1, $a6, $t8
	sub.d	$t6, $t6, $t7
	movgr2fr.w	$fa2, $t6
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fa1, $fa1, $fa2
	addi.d	$t6, $t5, 1024
	ldx.h	$t7, $a3, $t6
	ldx.h	$t6, $a2, $t6
	sub.d	$t8, $a7, $t4
	slli.d	$t8, $t8, 2
	fldx.s	$fa2, $a6, $t8
	sub.d	$t6, $t7, $t6
	movgr2fr.w	$fa3, $t6
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa3, $fa0
	fmul.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa1, $fa2
	addi.d	$t6, $t4, 256
	slli.d	$t7, $t6, 1
	ldx.h	$t8, $a3, $t7
	ldx.h	$t7, $a2, $t7
	fadd.s	$fa1, $fa1, $fa2
	slli.d	$t6, $t6, 2
	fldx.s	$fa2, $a6, $t6
	sub.d	$t6, $t8, $t7
	movgr2fr.w	$fa4, $t6
	ffint.s.w	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fa0
	fmul.s	$fa2, $fa2, $fa4
	addi.d	$t6, $t5, 1536
	ldx.h	$t7, $a3, $t6
	ldx.h	$t6, $a2, $t6
	sub.d	$t8, $t0, $t4
	slli.d	$t8, $t8, 2
	fldx.s	$fa4, $a6, $t8
	sub.d	$t6, $t7, $t6
	movgr2fr.w	$fa5, $t6
	ffint.s.w	$fa5, $fa5
	fmul.s	$fa5, $fa5, $fa0
	fmul.s	$fa4, $fa4, $fa5
	fsub.s	$fa5, $fa2, $fa4
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa4, $fa1, $fa2
	fst.s	$fa4, $a1, -2048
	fsub.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a1, -2040
	fadd.s	$fa1, $fa3, $fa5
	fst.s	$fa1, $a1, -2044
	fsub.s	$fa1, $fa3, $fa5
	addi.d	$t6, $t4, 1
	slli.d	$t7, $t6, 1
	ldx.h	$t8, $a3, $t7
	ldx.h	$t7, $a2, $t7
	fst.s	$fa1, $a1, -2036
	slli.d	$t6, $t6, 2
	fldx.s	$fa1, $a6, $t6
	sub.d	$t6, $t8, $t7
	movgr2fr.w	$fa2, $t6
	sub.d	$t6, $t1, $t4
	slli.d	$t6, $t6, 2
	fldx.s	$fa3, $a6, $t6
	addi.d	$t6, $t5, 1026
	ldx.h	$t7, $a3, $t6
	ldx.h	$t6, $a2, $t6
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fa1, $fa1, $fa2
	sub.d	$t6, $t7, $t6
	movgr2fr.w	$fa2, $t6
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa0
	addi.d	$t6, $t4, 257
	slli.d	$t7, $t6, 2
	fldx.s	$fa4, $a6, $t7
	slli.d	$t6, $t6, 1
	ldx.h	$t7, $a3, $t6
	ldx.h	$t6, $a2, $t6
	fmul.s	$fa2, $fa3, $fa2
	fsub.s	$fa3, $fa1, $fa2
	fadd.s	$fa1, $fa1, $fa2
	sub.d	$t6, $t7, $t6
	movgr2fr.w	$fa2, $t6
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fa2, $fa4, $fa2
	addi.d	$t5, $t5, 1538
	ldx.h	$t6, $a3, $t5
	ldx.h	$t5, $a2, $t5
	sub.d	$t4, $a4, $t4
	slli.d	$t4, $t4, 2
	fldx.s	$fa4, $a6, $t4
	sub.d	$t4, $t6, $t5
	movgr2fr.w	$fa5, $t4
	ffint.s.w	$fa5, $fa5
	fmul.s	$fa5, $fa5, $fa0
	fmul.s	$fa4, $fa4, $fa5
	fsub.s	$fa5, $fa2, $fa4
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa4, $fa1, $fa2
	fst.s	$fa4, $a1, 0
	fsub.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a1, 8
	fadd.s	$fa1, $fa3, $fa5
	fst.s	$fa1, $a1, 4
	fsub.s	$fa1, $fa3, $fa5
	fst.s	$fa1, $a1, 12
	addi.d	$t3, $t3, -2
	addi.d	$a1, $a1, -16
	bne	$t3, $t2, .LBB2_7
.LBB2_8:                                # %.loopexit
	ori	$a1, $zero, 1024
	pcaddu18i	$t8, %call36(fht)
	jr	$t8
.Lfunc_end2:
	.size	fft_long, .Lfunc_end2-fft_long
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init_fft
.LCPI3_0:
	.word	0x3f6c835e                      # float 0.923879504
	.word	0x3ec3ef16                      # float 0.382683456
	.word	0x3f7ec46d                      # float 0.995184719
	.word	0x3dc8bd36                      # float 0.0980171412
.LCPI3_1:
	.word	0x3f7fec43                      # float 0.999698817
	.word	0x3cc90ab0                      # float 0.024541229
	.word	0x3f7ffec4                      # float 0.999981164
	.word	0x3bc90f88                      # float 0.00613588467
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_2:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
.LCPI3_3:
	.dword	0x3f50000000000000              # double 9.765625E-4
.LCPI3_4:
	.dword	0x3f70000000000000              # double 0.00390625
	.text
	.globl	init_fft
	.p2align	5
	.type	init_fft,@function
init_fft:                               # @init_fft
# %bb.0:                                # %.preheader15.preheader
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
	pcalau12i	$a0, %pc_hi20(costab)
	addi.d	$a0, $a0, %pc_lo12(costab)
	vst	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_1)
	pcalau12i	$a1, %pc_hi20(.LCPI3_2)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI3_2)
	pcalau12i	$a1, %pc_hi20(.LCPI3_3)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI3_3)
	vst	$vr0, $a0, 16
	pcalau12i	$a0, %pc_hi20(window)
	addi.d	$fp, $a0, %pc_lo12(window)
	move	$s0, $zero
	move	$s1, $zero
	ori	$s2, $zero, 2048
	.p2align	4, , 16
.LBB3_1:                                # %.preheader15
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fsub.d	$fa0, $fa1, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $fp, $s0
	addi.d	$s0, $s0, 4
	addi.w	$s1, $s1, 1
	bne	$s0, $s2, .LBB3_1
# %bb.2:                                # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI3_4)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI3_4)
	pcalau12i	$a0, %pc_hi20(window_s)
	addi.d	$fp, $a0, %pc_lo12(window_s)
	move	$s0, $zero
	move	$s1, $zero
	ori	$s2, $zero, 512
	.p2align	4, , 16
.LBB3_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fsub.d	$fa0, $fa1, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $fp, $s0
	addi.d	$s0, $s0, 4
	addi.w	$s1, $s1, 1
	bne	$s0, $s2, .LBB3_3
# %bb.4:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	init_fft, .Lfunc_end3-init_fft
                                        # -- End function
	.type	rv_tbl,@object                  # @rv_tbl
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
rv_tbl:
	.half	0                               # 0x0
	.half	128                             # 0x80
	.half	64                              # 0x40
	.half	192                             # 0xc0
	.half	32                              # 0x20
	.half	160                             # 0xa0
	.half	96                              # 0x60
	.half	224                             # 0xe0
	.half	16                              # 0x10
	.half	144                             # 0x90
	.half	80                              # 0x50
	.half	208                             # 0xd0
	.half	48                              # 0x30
	.half	176                             # 0xb0
	.half	112                             # 0x70
	.half	240                             # 0xf0
	.half	8                               # 0x8
	.half	136                             # 0x88
	.half	72                              # 0x48
	.half	200                             # 0xc8
	.half	40                              # 0x28
	.half	168                             # 0xa8
	.half	104                             # 0x68
	.half	232                             # 0xe8
	.half	24                              # 0x18
	.half	152                             # 0x98
	.half	88                              # 0x58
	.half	216                             # 0xd8
	.half	56                              # 0x38
	.half	184                             # 0xb8
	.half	120                             # 0x78
	.half	248                             # 0xf8
	.half	4                               # 0x4
	.half	132                             # 0x84
	.half	68                              # 0x44
	.half	196                             # 0xc4
	.half	36                              # 0x24
	.half	164                             # 0xa4
	.half	100                             # 0x64
	.half	228                             # 0xe4
	.half	20                              # 0x14
	.half	148                             # 0x94
	.half	84                              # 0x54
	.half	212                             # 0xd4
	.half	52                              # 0x34
	.half	180                             # 0xb4
	.half	116                             # 0x74
	.half	244                             # 0xf4
	.half	12                              # 0xc
	.half	140                             # 0x8c
	.half	76                              # 0x4c
	.half	204                             # 0xcc
	.half	44                              # 0x2c
	.half	172                             # 0xac
	.half	108                             # 0x6c
	.half	236                             # 0xec
	.half	28                              # 0x1c
	.half	156                             # 0x9c
	.half	92                              # 0x5c
	.half	220                             # 0xdc
	.half	60                              # 0x3c
	.half	188                             # 0xbc
	.half	124                             # 0x7c
	.half	252                             # 0xfc
	.half	2                               # 0x2
	.half	130                             # 0x82
	.half	66                              # 0x42
	.half	194                             # 0xc2
	.half	34                              # 0x22
	.half	162                             # 0xa2
	.half	98                              # 0x62
	.half	226                             # 0xe2
	.half	18                              # 0x12
	.half	146                             # 0x92
	.half	82                              # 0x52
	.half	210                             # 0xd2
	.half	50                              # 0x32
	.half	178                             # 0xb2
	.half	114                             # 0x72
	.half	242                             # 0xf2
	.half	10                              # 0xa
	.half	138                             # 0x8a
	.half	74                              # 0x4a
	.half	202                             # 0xca
	.half	42                              # 0x2a
	.half	170                             # 0xaa
	.half	106                             # 0x6a
	.half	234                             # 0xea
	.half	26                              # 0x1a
	.half	154                             # 0x9a
	.half	90                              # 0x5a
	.half	218                             # 0xda
	.half	58                              # 0x3a
	.half	186                             # 0xba
	.half	122                             # 0x7a
	.half	250                             # 0xfa
	.half	6                               # 0x6
	.half	134                             # 0x86
	.half	70                              # 0x46
	.half	198                             # 0xc6
	.half	38                              # 0x26
	.half	166                             # 0xa6
	.half	102                             # 0x66
	.half	230                             # 0xe6
	.half	22                              # 0x16
	.half	150                             # 0x96
	.half	86                              # 0x56
	.half	214                             # 0xd6
	.half	54                              # 0x36
	.half	182                             # 0xb6
	.half	118                             # 0x76
	.half	246                             # 0xf6
	.half	14                              # 0xe
	.half	142                             # 0x8e
	.half	78                              # 0x4e
	.half	206                             # 0xce
	.half	46                              # 0x2e
	.half	174                             # 0xae
	.half	110                             # 0x6e
	.half	238                             # 0xee
	.half	30                              # 0x1e
	.half	158                             # 0x9e
	.half	94                              # 0x5e
	.half	222                             # 0xde
	.half	62                              # 0x3e
	.half	190                             # 0xbe
	.half	126                             # 0x7e
	.half	254                             # 0xfe
	.size	rv_tbl, 256

	.type	window_s,@object                # @window_s
	.local	window_s
	.comm	window_s,512,4
	.type	window,@object                  # @window
	.local	window
	.comm	window,2048,4
	.type	costab,@object                  # @costab
	.local	costab
	.comm	costab,32,16
	.section	".note.GNU-stack","",@progbits
	.addrsig
