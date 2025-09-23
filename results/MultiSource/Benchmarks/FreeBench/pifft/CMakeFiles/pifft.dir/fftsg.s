	.file	"fftsg.c"
	.text
	.globl	cdft                            # -- Begin function cdft
	.p2align	5
	.type	cdft,@function
cdft:                                   # @cdft
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a3
	ld.w	$s1, $a3, 0
	slli.w	$a3, $s1, 2
	move	$fp, $a2
	move	$s2, $a1
	bge	$a3, $a0, .LBB0_2
# %bb.1:
	srai.d	$s1, $a0, 2
	move	$s3, $a0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $a4
	move	$s4, $a4
	pcaddu18i	$ra, %call36(makewt)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a4, $s4
.LBB0_2:
	addi.d	$a2, $s0, 8
	addi.w	$a3, $s1, 0
	move	$a1, $fp
	bltz	$s2, .LBB0_4
# %bb.3:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(cftfsub)
	jr	$t8
.LBB0_4:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(cftbsub)
	jr	$t8
.Lfunc_end0:
	.size	cdft, .Lfunc_end0-cdft
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function makewt
.LCPI1_0:
	.dword	0x3fe921fb54442d18              # double 0.78539816339744828
	.text
	.globl	makewt
	.p2align	5
	.type	makewt,@function
makewt:                                 # @makewt
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	ori	$a2, $zero, 3
	st.w	$a0, $a1, 4
	blt	$s0, $a2, .LBB1_12
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	bstrpick.d	$s1, $s0, 31, 1
	movgr2fr.d	$fa1, $s1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fs2, $fa0, $fa1
	fmul.d	$fa0, $fs2, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	lu52i.d	$s2, $zero, 1023
	st.d	$s2, $fp, 0
	ori	$a0, $zero, 8
	fst.d	$fa0, $fp, 8
	bltu	$s0, $a0, .LBB1_5
# %bb.2:
	fadd.d	$fa0, $fs2, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fa0, $fs2, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	lu52i.d	$a0, $zero, 1022
	vreplgr2vr.d	$vr0, $a0
	vfdiv.d	$vr0, $vr0, $vr1
	ori	$a0, $zero, 10
	vst	$vr0, $fp, 16
	bltu	$s0, $a0, .LBB1_6
# %bb.3:                                # %.lr.ph
	vldi	$vr0, -1016
	fmul.d	$fs3, $fs2, $fa0
	addi.w	$s0, $s1, 0
	addi.d	$s3, $fp, 56
	ori	$s4, $zero, 4
	ori	$s5, $zero, 4
	.p2align	4, , 16
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs4, $fa0
	fmul.d	$fs1, $fs2, $fs4
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s3, -24
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s3, -16
	fmul.d	$fs1, $fs3, $fs4
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s3, -8
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s3, 0
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 4
	addi.d	$s3, $s3, 32
	bltu	$s5, $s0, .LBB1_4
	b	.LBB1_6
.LBB1_5:                                # %.preheader
	ori	$a0, $zero, 5
	bgeu	$a0, $s0, .LBB1_12
.LBB1_6:                                # %.lr.ph97.preheader
	move	$a7, $zero
	addi.d	$a0, $fp, 48
	addi.d	$a1, $fp, 80
	ori	$a2, $zero, 8
	lu52i.d	$a3, $zero, 1022
	vreplgr2vr.d	$vr0, $a3
	ori	$a3, $zero, 10
	ori	$a4, $zero, 6
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$a7, $a5
	bltu	$a6, $a4, .LBB1_12
.LBB1_8:                                # %.lr.ph97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	add.w	$a5, $s1, $a7
	addi.w	$a6, $s1, 0
	bstrpick.d	$s1, $s1, 31, 1
	alsl.d	$t0, $a5, $fp, 3
	slli.d	$t1, $a5, 3
	stx.d	$s2, $fp, $t1
	fst.d	$fs0, $t0, 8
	bltu	$a6, $a2, .LBB1_7
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$t1, $a7, $fp, 3
	fld.d	$fa1, $t1, 32
	fld.d	$fa2, $t1, 48
	vextrins.d	$vr1, $vr2, 16
	vfdiv.d	$vr1, $vr0, $vr1
	vst	$vr1, $t0, 16
	bltu	$a6, $a3, .LBB1_7
# %bb.10:                               # %.lr.ph94.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.w	$t0, $s1, 0
	alsl.d	$t1, $a5, $a0, 3
	alsl.d	$a7, $a7, $a1, 3
	ori	$t2, $zero, 4
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph94
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a7, -16
	vld	$vr2, $a7, 0
	vst	$vr1, $t1, -16
	vst	$vr2, $t1, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 32
	addi.d	$a7, $a7, 64
	bltu	$t2, $t0, .LBB1_11
	b	.LBB1_7
.LBB1_12:                               # %.loopexit91
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end1:
	.size	makewt, .Lfunc_end1-makewt
                                        # -- End function
	.globl	cftfsub                         # -- Begin function cftfsub
	.p2align	5
	.type	cftfsub,@function
cftfsub:                                # @cftfsub
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ori	$a5, $zero, 33
	move	$s1, $a4
	move	$s3, $a3
	move	$fp, $a1
	move	$s0, $a0
	blt	$a0, $a5, .LBB2_3
# %bb.1:
	move	$s2, $a2
	bstrpick.d	$s5, $s0, 31, 2
	sub.w	$a0, $s3, $s5
	alsl.d	$a2, $a0, $s1, 3
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cftf1st)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 513
	bltu	$s0, $a0, .LBB2_6
# %bb.2:
	addi.w	$s4, $s5, 0
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s4, $fp, 3
	move	$a0, $s4
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftrec2)
	jirl	$ra, $ra, 0
	slli.w	$a0, $s5, 1
	alsl.d	$a1, $a0, $fp, 3
	move	$a0, $s4
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	alsl.w	$a0, $s5, $s5, 1
	alsl.d	$a1, $a0, $fp, 3
	move	$a0, $s4
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	b	.LBB2_13
.LBB2_3:
	ori	$a0, $zero, 9
	blt	$s0, $a0, .LBB2_8
# %bb.4:
	ori	$a0, $zero, 32
	bne	$s0, $a0, .LBB2_11
# %bb.5:
	alsl.d	$a0, $s3, $s1, 3
	addi.d	$a1, $a0, -64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 64
	vld	$vr1, $fp, 32
	vld	$vr2, $fp, 128
	vld	$vr3, $fp, 192
	vst	$vr0, $fp, 32
	vst	$vr1, $fp, 64
	vld	$vr0, $fp, 160
	vld	$vr1, $fp, 16
	vst	$vr2, $fp, 16
	vld	$vr2, $fp, 80
	vld	$vr4, $fp, 224
	vst	$vr1, $fp, 128
	vst	$vr0, $fp, 80
	vst	$vr2, $fp, 160
	vld	$vr0, $fp, 48
	vld	$vr1, $fp, 208
	vst	$vr3, $fp, 48
	vld	$vr2, $fp, 176
	vst	$vr0, $fp, 192
	vld	$vr0, $fp, 112
	vst	$vr1, $fp, 176
	vst	$vr2, $fp, 208
	vst	$vr4, $fp, 112
	vst	$vr0, $fp, 224
	b	.LBB2_15
.LBB2_6:
	ori	$a0, $zero, 132
	bltu	$s0, $a0, .LBB2_12
# %bb.7:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftexp1)
	jirl	$ra, $ra, 0
	b	.LBB2_13
.LBB2_8:
	ori	$a0, $zero, 4
	beq	$s0, $a0, .LBB2_14
# %bb.9:
	ori	$a0, $zero, 8
	bne	$s0, $a0, .LBB2_15
# %bb.10:
	fld.d	$fa0, $fp, 0
	fld.d	$fa1, $fp, 32
	fld.d	$fa2, $fp, 8
	fld.d	$fa3, $fp, 40
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	fld.d	$fa6, $fp, 16
	fld.d	$fa7, $fp, 48
	fld.d	$ft0, $fp, 24
	fld.d	$ft1, $fp, 56
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $fp, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $fp, 8
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $fp, 32
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $fp, 40
	fsub.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $fp, 16
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $fp, 24
	fadd.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $fp, 48
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $fp, 56
	b	.LBB2_15
.LBB2_11:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cftf081)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 64
	vld	$vr1, $fp, 16
	vld	$vr2, $fp, 96
	vld	$vr3, $fp, 48
	vst	$vr0, $fp, 16
	vst	$vr1, $fp, 64
	vst	$vr2, $fp, 48
	vst	$vr3, $fp, 96
	b	.LBB2_15
.LBB2_12:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftfx41)
	jirl	$ra, $ra, 0
.LBB2_13:
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(bitrv2)
	jr	$t8
.LBB2_14:
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $fp, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 16
.LBB2_15:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	cftfsub, .Lfunc_end2-cftfsub
                                        # -- End function
	.globl	cftbsub                         # -- Begin function cftbsub
	.p2align	5
	.type	cftbsub,@function
cftbsub:                                # @cftbsub
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ori	$a5, $zero, 33
	move	$s1, $a4
	move	$s3, $a3
	move	$fp, $a1
	move	$s0, $a0
	blt	$a0, $a5, .LBB3_3
# %bb.1:
	move	$s2, $a2
	bstrpick.d	$s5, $s0, 31, 2
	sub.w	$a0, $s3, $s5
	alsl.d	$a2, $a0, $s1, 3
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cftb1st)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 513
	bltu	$s0, $a0, .LBB3_6
# %bb.2:
	addi.w	$s4, $s5, 0
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s4, $fp, 3
	move	$a0, $s4
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftrec2)
	jirl	$ra, $ra, 0
	slli.w	$a0, $s5, 1
	alsl.d	$a1, $a0, $fp, 3
	move	$a0, $s4
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	alsl.w	$a0, $s5, $s5, 1
	alsl.d	$a1, $a0, $fp, 3
	move	$a0, $s4
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	b	.LBB3_13
.LBB3_3:
	ori	$a0, $zero, 9
	blt	$s0, $a0, .LBB3_8
# %bb.4:
	ori	$a0, $zero, 32
	bne	$s0, $a0, .LBB3_11
# %bb.5:
	alsl.d	$a0, $s3, $s1, 3
	addi.d	$a1, $a0, -64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 240
	vld	$vr1, $fp, 112
	vld	$vr2, $fp, 176
	vld	$vr3, $fp, 48
	vld	$vr4, $fp, 208
	vld	$vr5, $fp, 144
	vst	$vr2, $fp, 48
	vld	$vr2, $fp, 80
	vst	$vr4, $fp, 80
	vst	$vr5, $fp, 112
	vld	$vr4, $fp, 224
	vld	$vr5, $fp, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $fp, 96
	vst	$vr4, $fp, 144
	vld	$vr4, $fp, 160
	vst	$vr2, $fp, 96
	vst	$vr0, $fp, 160
	vld	$vr0, $fp, 32
	vst	$vr4, $fp, 176
	vld	$vr2, $fp, 192
	vst	$vr1, $fp, 32
	vst	$vr0, $fp, 192
	vld	$vr0, $fp, 64
	vst	$vr2, $fp, 208
	vld	$vr1, $fp, 128
	vst	$vr3, $fp, 64
	vst	$vr0, $fp, 224
	vst	$vr5, $fp, 128
	vst	$vr1, $fp, 240
	b	.LBB3_15
.LBB3_6:
	ori	$a0, $zero, 132
	bltu	$s0, $a0, .LBB3_12
# %bb.7:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftexp1)
	jirl	$ra, $ra, 0
	b	.LBB3_13
.LBB3_8:
	ori	$a0, $zero, 4
	beq	$s0, $a0, .LBB3_14
# %bb.9:
	ori	$a0, $zero, 8
	bne	$s0, $a0, .LBB3_15
# %bb.10:
	fld.d	$fa0, $fp, 0
	fld.d	$fa1, $fp, 32
	fld.d	$fa2, $fp, 8
	fld.d	$fa3, $fp, 40
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	fld.d	$fa6, $fp, 16
	fld.d	$fa7, $fp, 48
	fld.d	$ft0, $fp, 24
	fld.d	$ft1, $fp, 56
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $fp, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $fp, 8
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $fp, 32
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $fp, 40
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $fp, 16
	fsub.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $fp, 24
	fsub.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $fp, 48
	fadd.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $fp, 56
	b	.LBB3_15
.LBB3_11:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cftf081)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 80
	vld	$vr1, $fp, 112
	vld	$vr2, $fp, 48
	vst	$vr0, $fp, 48
	vld	$vr0, $fp, 96
	vld	$vr3, $fp, 16
	vst	$vr1, $fp, 16
	vld	$vr1, $fp, 32
	vst	$vr0, $fp, 80
	vld	$vr0, $fp, 64
	vst	$vr2, $fp, 32
	vst	$vr1, $fp, 96
	vst	$vr3, $fp, 64
	vst	$vr0, $fp, 112
	b	.LBB3_15
.LBB3_12:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftfx41)
	jirl	$ra, $ra, 0
.LBB3_13:
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(bitrv2conj)
	jr	$t8
.LBB3_14:
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $fp, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 16
.LBB3_15:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	cftbsub, .Lfunc_end3-cftbsub
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rdft
.LCPI4_0:
	.dword	0x3fe921fb54442d18              # double 0.78539816339744828
	.text
	.globl	rdft
	.p2align	5
	.type	rdft,@function
rdft:                                   # @rdft
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	move	$s2, $a3
	ld.w	$s3, $a3, 0
	slli.w	$a3, $s3, 2
	move	$s7, $a4
	move	$fp, $a2
	move	$s4, $a1
	move	$s0, $a0
	bge	$a3, $a0, .LBB4_2
# %bb.1:
	srai.d	$s3, $s0, 2
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(makewt)
	jirl	$ra, $ra, 0
.LBB4_2:
	ld.w	$s5, $s2, 4
	slli.w	$a0, $s5, 2
	bge	$a0, $s0, .LBB4_8
# %bb.3:
	srai.d	$s5, $s0, 2
	ori	$a0, $zero, 2
	st.w	$s5, $s2, 4
	blt	$s5, $a0, .LBB4_8
# %bb.4:
	addi.w	$a0, $s3, 0
	alsl.d	$s1, $a0, $s7, 3
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_0)
	bstrpick.d	$s6, $s5, 31, 1
	movgr2fr.d	$fa1, $s6
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	fmul.d	$fa0, $fs1, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s1, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	slli.d	$a0, $s6, 3
	ori	$a1, $zero, 4
	fstx.d	$fa0, $s1, $a0
	bltu	$s5, $a1, .LBB4_8
# %bb.5:                                # %.lr.ph.preheader.i
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s6, -1
	alsl.d	$a0, $s5, $s1, 3
	addi.d	$s7, $a0, -8
	addi.d	$s8, $s1, 8
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_6:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s8, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s7, 0
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, -8
	addi.d	$s8, $s8, 8
	addi.w	$s1, $s1, 1
	bnez	$s6, .LBB4_6
# %bb.7:
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
.LBB4_8:                                # %makect.exit
	bltz	$s4, .LBB4_13
# %bb.9:
	ori	$s1, $zero, 5
	blt	$s0, $s1, .LBB4_18
# %bb.10:
	addi.d	$a2, $s2, 8
	addi.w	$s2, $s3, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a3, $s2
	move	$a4, $s7
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	beq	$s0, $s1, .LBB4_20
# %bb.11:                               # %.lr.ph.preheader.i62
	bstrpick.d	$a0, $s0, 31, 1
	slli.w	$a1, $s5, 1
	div.w	$a2, $a1, $a0
	addi.w	$a3, $s5, 0
	slli.d	$a4, $s2, 3
	slli.d	$a1, $a2, 3
	alsl.d	$a2, $a2, $a4, 3
	add.d	$a2, $s7, $a2
	alsl.d	$a3, $a3, $a4, 3
	sub.d	$a3, $a3, $a1
	add.d	$a3, $s7, $a3
	sub.d	$a4, $zero, $a1
	alsl.d	$a5, $s0, $fp, 3
	addi.d	$a5, $a5, -8
	addi.d	$a6, $fp, 24
	ori	$a7, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB4_12:                               # %.lr.ph.i63
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a6, -8
	fld.d	$fa3, $a5, -8
	fld.d	$fa4, $a6, 0
	fld.d	$fa5, $a5, 0
	fsub.d	$fa1, $fa0, $fa1
	fld.d	$fa6, $a2, 0
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fneg.d	$fa7, $fa5
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a6, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a6, 0
	fld.d	$fa2, $a5, -8
	fld.d	$fa3, $a5, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a5, 0
	addi.d	$a7, $a7, 2
	add.d	$a2, $a2, $a1
	add.d	$a3, $a3, $a4
	addi.d	$a5, $a5, -16
	addi.d	$a6, $a6, 16
	bltu	$a7, $a0, .LBB4_12
	b	.LBB4_20
.LBB4_13:
	fld.d	$fa1, $fp, 0
	fld.d	$fa0, $fp, 8
	fsub.d	$fa0, $fa1, $fa0
	vldi	$vr2, -928
	fmul.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $fp, 8
	fsub.d	$fa1, $fa1, $fa0
	ori	$a0, $zero, 5
	fst.d	$fa1, $fp, 0
	blt	$s0, $a0, .LBB4_22
# %bb.14:
	addi.w	$a3, $s3, 0
	beq	$s0, $a0, .LBB4_17
# %bb.15:                               # %.lr.ph.preheader.i66
	bstrpick.d	$a0, $s0, 31, 1
	slli.w	$a1, $s5, 1
	div.w	$a2, $a1, $a0
	addi.w	$a4, $s5, 0
	slli.d	$a5, $a3, 3
	slli.d	$a1, $a2, 3
	alsl.d	$a2, $a2, $a5, 3
	add.d	$a2, $s7, $a2
	alsl.d	$a4, $a4, $a5, 3
	sub.d	$a4, $a4, $a1
	add.d	$a4, $s7, $a4
	sub.d	$a5, $zero, $a1
	alsl.d	$a6, $s0, $fp, 3
	addi.d	$a6, $a6, -8
	addi.d	$a7, $fp, 24
	ori	$t0, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB4_16:                               # %.lr.ph.i67
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a7, -8
	fld.d	$fa3, $a6, -8
	fld.d	$fa4, $a7, 0
	fld.d	$fa5, $a6, 0
	fld.d	$fa6, $a2, 0
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fmul.d	$fa7, $fa6, $fa5
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a7, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a7, 0
	fld.d	$fa2, $a6, -8
	fld.d	$fa3, $a6, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a6, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a6, 0
	addi.d	$t0, $t0, 2
	add.d	$a2, $a2, $a1
	add.d	$a4, $a4, $a5
	addi.d	$a6, $a6, -16
	addi.d	$a7, $a7, 16
	bltu	$t0, $a0, .LBB4_16
.LBB4_17:                               # %rftbsub.exit
	addi.d	$a2, $s2, 8
	move	$a0, $s0
	move	$a1, $fp
	move	$a4, $s7
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(cftbsub)
	jr	$t8
.LBB4_18:
	ori	$a0, $zero, 4
	bne	$s0, $a0, .LBB4_20
# %bb.19:
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $fp, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 16
.LBB4_20:                               # %rftfsub.exit
	fld.d	$fa0, $fp, 0
	fld.d	$fa1, $fp, 8
	fsub.d	$fa2, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 8
.LBB4_21:
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB4_22:
	ori	$a0, $zero, 4
	bne	$s0, $a0, .LBB4_21
# %bb.23:
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
	fsub.d	$fa4, $fa1, $fa2
	fsub.d	$fa5, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $fp, 8
	fst.d	$fa4, $fp, 16
	fst.d	$fa5, $fp, 24
	b	.LBB4_21
.Lfunc_end4:
	.size	rdft, .Lfunc_end4-rdft
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function makect
.LCPI5_0:
	.dword	0x3fe921fb54442d18              # double 0.78539816339744828
	.text
	.globl	makect
	.p2align	5
	.type	makect,@function
makect:                                 # @makect
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a0, $zero, 2
	st.w	$s0, $a1, 4
	blt	$s0, $a0, .LBB5_4
# %bb.1:
	move	$fp, $a2
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI5_0)
	bstrpick.d	$s1, $s0, 31, 1
	movgr2fr.d	$fa1, $s1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	fmul.d	$fa0, $fs1, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $fp, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	slli.d	$a0, $s1, 3
	ori	$a1, $zero, 4
	fstx.d	$fa0, $fp, $a0
	bltu	$s0, $a1, .LBB5_4
# %bb.2:                                # %.lr.ph.preheader
	alsl.d	$a0, $s0, $fp, 3
	addi.d	$s0, $a0, -8
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 0
	addi.d	$s0, $s0, -8
	addi.w	$s2, $s2, 1
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB5_3
.LBB5_4:                                # %.loopexit
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	makect, .Lfunc_end5-makect
                                        # -- End function
	.globl	rftfsub                         # -- Begin function rftfsub
	.p2align	5
	.type	rftfsub,@function
rftfsub:                                # @rftfsub
# %bb.0:
	srai.d	$a4, $a0, 1
	ori	$a5, $zero, 3
	blt	$a4, $a5, .LBB6_3
# %bb.1:                                # %.lr.ph.preheader
	slli.w	$a5, $a2, 1
	div.w	$a6, $a5, $a4
	slli.d	$a5, $a6, 3
	alsl.d	$a6, $a6, $a3, 3
	slli.d	$a2, $a2, 3
	sub.d	$a2, $a2, $a5
	add.d	$a2, $a3, $a2
	sub.d	$a3, $zero, $a5
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 24
	ori	$a7, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a0, -8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a0, 0
	fsub.d	$fa1, $fa0, $fa1
	fld.d	$fa6, $a6, 0
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fneg.d	$fa7, $fa5
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a1, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a1, 0
	fld.d	$fa2, $a0, -8
	fld.d	$fa3, $a0, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a0, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a0, 0
	addi.d	$a7, $a7, 2
	add.d	$a6, $a6, $a5
	add.d	$a2, $a2, $a3
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 16
	bltu	$a7, $a4, .LBB6_2
.LBB6_3:                                # %._crit_edge
	ret
.Lfunc_end6:
	.size	rftfsub, .Lfunc_end6-rftfsub
                                        # -- End function
	.globl	rftbsub                         # -- Begin function rftbsub
	.p2align	5
	.type	rftbsub,@function
rftbsub:                                # @rftbsub
# %bb.0:
	srai.d	$a4, $a0, 1
	ori	$a5, $zero, 3
	blt	$a4, $a5, .LBB7_3
# %bb.1:                                # %.lr.ph.preheader
	slli.w	$a5, $a2, 1
	div.w	$a6, $a5, $a4
	slli.d	$a5, $a6, 3
	alsl.d	$a6, $a6, $a3, 3
	slli.d	$a2, $a2, 3
	sub.d	$a2, $a2, $a5
	add.d	$a2, $a3, $a2
	sub.d	$a3, $zero, $a5
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 24
	ori	$a7, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a0, -8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a0, 0
	fld.d	$fa6, $a6, 0
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fmul.d	$fa7, $fa6, $fa5
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a1, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a1, 0
	fld.d	$fa2, $a0, -8
	fld.d	$fa3, $a0, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a0, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a0, 0
	addi.d	$a7, $a7, 2
	add.d	$a6, $a6, $a5
	add.d	$a2, $a2, $a3
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 16
	bltu	$a7, $a4, .LBB7_2
.LBB7_3:                                # %._crit_edge
	ret
.Lfunc_end7:
	.size	rftbsub, .Lfunc_end7-rftbsub
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ddct
.LCPI8_0:
	.dword	0x3fe921fb54442d18              # double 0.78539816339744828
	.text
	.globl	ddct
	.p2align	5
	.type	ddct,@function
ddct:                                   # @ddct
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
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$s1, $a3
	ld.w	$s4, $a3, 0
	slli.w	$a3, $s4, 2
	move	$s2, $a4
	move	$s0, $a2
	move	$s3, $a1
	move	$fp, $a0
	bge	$a3, $a0, .LBB8_2
# %bb.1:
	srai.d	$s4, $fp, 2
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(makewt)
	jirl	$ra, $ra, 0
.LBB8_2:
	ld.w	$s6, $s1, 4
	addi.w	$s4, $s4, 0
	bge	$s6, $fp, .LBB8_8
# %bb.3:
	ori	$a0, $zero, 2
	st.w	$fp, $s1, 4
	move	$s6, $fp
	blt	$fp, $a0, .LBB8_8
# %bb.4:
	alsl.d	$s7, $s4, $s2, 3
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI8_0)
	bstrpick.d	$s5, $fp, 31, 1
	movgr2fr.d	$fa1, $s5
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	fmul.d	$fa0, $fs1, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s7, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	slli.d	$a0, $s5, 3
	ori	$a1, $zero, 4
	fstx.d	$fa0, $s7, $a0
	move	$s6, $fp
	bltu	$fp, $a1, .LBB8_8
# %bb.5:                                # %.lr.ph.preheader.i
	addi.d	$s5, $s5, -1
	alsl.d	$a0, $fp, $s7, 3
	addi.d	$s6, $a0, -8
	addi.d	$s7, $s7, 8
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB8_6:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s8, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s7, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s6, 0
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, -8
	addi.d	$s7, $s7, 8
	addi.w	$s8, $s8, 1
	bnez	$s5, .LBB8_6
# %bb.7:
	move	$s6, $fp
.LBB8_8:                                # %makect.exit
	alsl.d	$s5, $fp, $s0, 3
	bgez	$s3, .LBB8_15
# %bb.9:
	fld.d	$fa0, $s5, -8
	ori	$a0, $zero, 4
	blt	$fp, $a0, .LBB8_14
# %bb.10:                               # %.lr.ph.preheader
	addi.d	$a0, $fp, 2
	addi.d	$a2, $s5, -8
	ori	$a1, $zero, 5
	.p2align	4, , 16
.LBB8_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, -8
	fld.d	$fa2, $a2, -16
	fsub.d	$fa3, $fa1, $fa2
	fst.d	$fa3, $a2, 0
	addi.d	$a3, $a2, -16
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a0, $a0, -2
	fst.d	$fa1, $a2, -8
	move	$a2, $a3
	bltu	$a1, $a0, .LBB8_11
# %bb.12:                               # %._crit_edge
	fld.d	$fa2, $s0, 0
	fsub.d	$fa1, $fa2, $fa0
	fst.d	$fa1, $s0, 8
	fadd.d	$fa0, $fa0, $fa2
	ori	$a0, $zero, 4
	fst.d	$fa0, $s0, 0
	bne	$fp, $a0, .LBB8_31
# %bb.13:                               # %.thread
	fld.d	$fa2, $s0, 16
	fld.d	$fa3, $s0, 24
	fsub.d	$fa4, $fa0, $fa2
	fsub.d	$fa5, $fa1, $fa3
	fadd.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $s0, 0
	fadd.d	$fa0, $fa1, $fa3
	fst.d	$fa0, $s0, 8
	fst.d	$fa4, $s0, 16
	fst.d	$fa5, $s0, 24
	alsl.d	$s8, $s4, $s2, 3
	ori	$s7, $zero, 2
	b	.LBB8_16
.LBB8_14:
	fld.d	$fa1, $s0, 0
	fsub.d	$fa2, $fa1, $fa0
	fst.d	$fa2, $s0, 8
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 0
.LBB8_15:
	srai.d	$s7, $fp, 1
	ori	$a0, $zero, 2
	alsl.d	$s8, $s4, $s2, 3
	blt	$s7, $a0, .LBB8_18
.LBB8_16:                               # %.lr.ph.preheader.i104
	div.w	$a0, $s6, $fp
	slli.d	$a1, $s6, 3
	slli.d	$a0, $a0, 3
	sub.d	$a1, $a1, $a0
	addi.d	$a2, $s7, -1
	addi.d	$a3, $s0, 8
	addi.d	$a4, $s5, -8
	move	$a5, $a0
	.p2align	4, , 16
.LBB8_17:                               # %.lr.ph.i105
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s8, $a5
	fldx.d	$fa1, $s8, $a1
	fld.d	$fa2, $a4, 0
	fsub.d	$fa3, $fa0, $fa1
	fld.d	$fa4, $a3, 0
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa2
	fmul.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa0, $fa4, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fst.d	$fa0, $a3, 0
	fst.d	$fa1, $a4, 0
	sub.d	$a1, $a1, $a0
	add.d	$a5, $a5, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, -8
	bnez	$a2, .LBB8_17
.LBB8_18:                               # %dctsub.exit
	fld.d	$fa0, $s8, 0
	slli.d	$a0, $s7, 3
	fldx.d	$fa1, $s0, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $a0
	bltz	$s3, .LBB8_29
# %bb.19:
	ori	$a0, $zero, 5
	blt	$fp, $a0, .LBB8_23
# %bb.20:
	addi.d	$a2, $s1, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $s4
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	blt	$s7, $a0, .LBB8_25
# %bb.21:                               # %.lr.ph.preheader.i109
	slli.w	$a0, $s6, 1
	div.w	$a1, $a0, $s7
	slli.d	$a0, $a1, 3
	alsl.d	$a1, $a1, $s8, 3
	slli.d	$a2, $s6, 3
	sub.d	$a2, $a2, $a0
	add.d	$a2, $s8, $a2
	sub.d	$a3, $zero, $a0
	addi.d	$a4, $s5, -8
	addi.d	$a5, $s0, 24
	ori	$a6, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB8_22:                               # %.lr.ph.i110
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a5, -8
	fld.d	$fa3, $a4, -8
	fld.d	$fa4, $a5, 0
	fld.d	$fa5, $a4, 0
	fsub.d	$fa1, $fa0, $fa1
	fld.d	$fa6, $a1, 0
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fneg.d	$fa7, $fa5
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a5, 0
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a4, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a4, 0
	addi.d	$a6, $a6, 2
	add.d	$a1, $a1, $a0
	add.d	$a2, $a2, $a3
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, 16
	bltu	$a6, $s7, .LBB8_22
	b	.LBB8_25
.LBB8_23:
	fld.d	$fa1, $s0, 0
	ori	$a0, $zero, 4
	bne	$fp, $a0, .LBB8_30
# %bb.24:
	fld.d	$fa0, $s0, 16
	fld.d	$fa2, $s0, 8
	fld.d	$fa3, $s0, 24
	fsub.d	$fa4, $fa1, $fa0
	fsub.d	$fa5, $fa2, $fa3
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s0, 0
	fadd.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $s0, 8
	fst.d	$fa4, $s0, 16
	fst.d	$fa5, $s0, 24
.LBB8_25:                               # %rftfsub.exit.thread
	fld.d	$fa1, $s0, 0
	fld.d	$fa2, $s0, 8
	fsub.d	$fa0, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $s0, 0
.LBB8_26:                               # %.lr.ph117.preheader
	addi.d	$a0, $s0, 16
	ori	$a1, $zero, 2
	.p2align	4, , 16
.LBB8_27:                               # %.lr.ph117
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a0, 8
	fsub.d	$fa3, $fa1, $fa2
	fst.d	$fa3, $a0, -8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a0, 0
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, 16
	bltu	$a1, $fp, .LBB8_27
.LBB8_28:                               # %._crit_edge118
	fst.d	$fa0, $s5, -8
.LBB8_29:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
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
.LBB8_30:                               # %rftfsub.exit
	fld.d	$fa2, $s0, 8
	fsub.d	$fa0, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa2
	ori	$a0, $zero, 2
	fst.d	$fa1, $s0, 0
	blt	$a0, $fp, .LBB8_26
	b	.LBB8_28
.LBB8_31:
	ori	$a0, $zero, 5
	beq	$fp, $a0, .LBB8_34
# %bb.32:                               # %.lr.ph.preheader.i100
	bstrpick.d	$a0, $fp, 31, 1
	slli.w	$a1, $s6, 1
	div.w	$a2, $a1, $a0
	slli.d	$a3, $s4, 3
	slli.d	$a1, $a2, 3
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $s2, $a2
	alsl.d	$a3, $s6, $a3, 3
	sub.d	$a3, $a3, $a1
	add.d	$a3, $s2, $a3
	sub.d	$a4, $zero, $a1
	alsl.d	$a5, $fp, $s0, 3
	addi.d	$a5, $a5, -8
	addi.d	$a6, $s0, 24
	ori	$a7, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB8_33:                               # %.lr.ph.i101
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a6, -8
	fld.d	$fa3, $a5, -8
	fld.d	$fa4, $a6, 0
	fld.d	$fa5, $a5, 0
	fld.d	$fa6, $a2, 0
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fmul.d	$fa7, $fa6, $fa5
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a6, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a6, 0
	fld.d	$fa2, $a5, -8
	fld.d	$fa3, $a5, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a5, 0
	addi.d	$a7, $a7, 2
	add.d	$a2, $a2, $a1
	add.d	$a3, $a3, $a4
	addi.d	$a5, $a5, -16
	addi.d	$a6, $a6, 16
	bltu	$a7, $a0, .LBB8_33
.LBB8_34:                               # %rftbsub.exit
	addi.d	$a2, $s1, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $s4
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cftbsub)
	jirl	$ra, $ra, 0
	srai.d	$s7, $fp, 1
	ori	$a0, $zero, 2
	alsl.d	$s8, $s4, $s2, 3
	bge	$s7, $a0, .LBB8_16
	b	.LBB8_18
.Lfunc_end8:
	.size	ddct, .Lfunc_end8-ddct
                                        # -- End function
	.globl	dctsub                          # -- Begin function dctsub
	.p2align	5
	.type	dctsub,@function
dctsub:                                 # @dctsub
# %bb.0:
	srai.d	$a4, $a0, 1
	ori	$a5, $zero, 2
	blt	$a4, $a5, .LBB9_3
# %bb.1:                                # %.lr.ph.preheader
	div.w	$a7, $a2, $a0
	slli.d	$a5, $a2, 3
	slli.d	$a2, $a7, 3
	sub.d	$a5, $a5, $a2
	add.d	$a5, $a3, $a5
	sub.d	$a6, $zero, $a2
	alsl.d	$a7, $a7, $a3, 3
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, -8
	addi.d	$t0, $a1, 8
	addi.d	$t1, $a4, -1
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a7, 0
	fld.d	$fa1, $a5, 0
	fld.d	$fa2, $a0, 0
	fsub.d	$fa3, $fa0, $fa1
	fld.d	$fa4, $t0, 0
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa2
	fmul.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa0, $fa4, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fst.d	$fa0, $t0, 0
	fst.d	$fa1, $a0, 0
	add.d	$a5, $a5, $a6
	add.d	$a7, $a7, $a2
	addi.d	$a0, $a0, -8
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB9_2
.LBB9_3:                                # %._crit_edge
	fld.d	$fa0, $a3, 0
	slli.d	$a0, $a4, 3
	fldx.d	$fa1, $a1, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a1, $a0
	ret
.Lfunc_end9:
	.size	dctsub, .Lfunc_end9-dctsub
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ddst
.LCPI10_0:
	.dword	0x3fe921fb54442d18              # double 0.78539816339744828
	.text
	.globl	ddst
	.p2align	5
	.type	ddst,@function
ddst:                                   # @ddst
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
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$s1, $a3
	ld.w	$s4, $a3, 0
	slli.w	$a3, $s4, 2
	move	$s2, $a4
	move	$s0, $a2
	move	$s3, $a1
	move	$fp, $a0
	bge	$a3, $a0, .LBB10_2
# %bb.1:
	srai.d	$s4, $fp, 2
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(makewt)
	jirl	$ra, $ra, 0
.LBB10_2:
	ld.w	$s6, $s1, 4
	addi.w	$s4, $s4, 0
	bge	$s6, $fp, .LBB10_8
# %bb.3:
	ori	$a0, $zero, 2
	st.w	$fp, $s1, 4
	move	$s6, $fp
	blt	$fp, $a0, .LBB10_8
# %bb.4:
	alsl.d	$s7, $s4, $s2, 3
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI10_0)
	bstrpick.d	$s5, $fp, 31, 1
	movgr2fr.d	$fa1, $s5
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	fmul.d	$fa0, $fs1, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s7, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	slli.d	$a0, $s5, 3
	ori	$a1, $zero, 4
	fstx.d	$fa0, $s7, $a0
	move	$s6, $fp
	bltu	$fp, $a1, .LBB10_8
# %bb.5:                                # %.lr.ph.preheader.i
	addi.d	$s5, $s5, -1
	alsl.d	$a0, $fp, $s7, 3
	addi.d	$s6, $a0, -8
	addi.d	$s7, $s7, 8
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB10_6:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s8, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s7, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s6, 0
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, -8
	addi.d	$s7, $s7, 8
	addi.w	$s8, $s8, 1
	bnez	$s5, .LBB10_6
# %bb.7:
	move	$s6, $fp
.LBB10_8:                               # %makect.exit
	alsl.d	$s5, $fp, $s0, 3
	bgez	$s3, .LBB10_15
# %bb.9:
	fld.d	$fa0, $s5, -8
	ori	$a0, $zero, 4
	blt	$fp, $a0, .LBB10_14
# %bb.10:                               # %.lr.ph.preheader
	addi.d	$a0, $fp, 2
	addi.d	$a2, $s5, -8
	ori	$a1, $zero, 5
	.p2align	4, , 16
.LBB10_11:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, -8
	fld.d	$fa2, $a2, -16
	fneg.d	$fa3, $fa1
	fsub.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $a2, 0
	addi.d	$a3, $a2, -16
	fsub.d	$fa1, $fa1, $fa2
	addi.d	$a0, $a0, -2
	fst.d	$fa1, $a2, -8
	move	$a2, $a3
	bltu	$a1, $a0, .LBB10_11
# %bb.12:                               # %._crit_edge
	fld.d	$fa2, $s0, 0
	fadd.d	$fa1, $fa0, $fa2
	fst.d	$fa1, $s0, 8
	fsub.d	$fa0, $fa2, $fa0
	ori	$a0, $zero, 4
	fst.d	$fa0, $s0, 0
	bne	$fp, $a0, .LBB10_31
# %bb.13:                               # %.thread
	fld.d	$fa2, $s0, 16
	fld.d	$fa3, $s0, 24
	fsub.d	$fa4, $fa0, $fa2
	fsub.d	$fa5, $fa1, $fa3
	fadd.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $s0, 0
	fadd.d	$fa0, $fa1, $fa3
	fst.d	$fa0, $s0, 8
	fst.d	$fa4, $s0, 16
	fst.d	$fa5, $s0, 24
	alsl.d	$s8, $s4, $s2, 3
	ori	$s7, $zero, 2
	b	.LBB10_16
.LBB10_14:
	fld.d	$fa1, $s0, 0
	fadd.d	$fa2, $fa0, $fa1
	fst.d	$fa2, $s0, 8
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s0, 0
.LBB10_15:
	srai.d	$s7, $fp, 1
	ori	$a0, $zero, 2
	alsl.d	$s8, $s4, $s2, 3
	blt	$s7, $a0, .LBB10_18
.LBB10_16:                              # %.lr.ph.preheader.i104
	div.w	$a0, $s6, $fp
	slli.d	$a1, $s6, 3
	slli.d	$a0, $a0, 3
	sub.d	$a1, $a1, $a0
	addi.d	$a2, $s7, -1
	addi.d	$a3, $s0, 8
	addi.d	$a4, $s5, -8
	move	$a5, $a0
	.p2align	4, , 16
.LBB10_17:                              # %.lr.ph.i105
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s8, $a5
	fldx.d	$fa1, $s8, $a1
	fld.d	$fa2, $a3, 0
	fsub.d	$fa3, $fa0, $fa1
	fld.d	$fa4, $a4, 0
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa2
	fmul.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa0, $fa4, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fst.d	$fa0, $a4, 0
	fst.d	$fa1, $a3, 0
	sub.d	$a1, $a1, $a0
	add.d	$a5, $a5, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, -8
	bnez	$a2, .LBB10_17
.LBB10_18:                              # %dstsub.exit
	fld.d	$fa0, $s8, 0
	slli.d	$a0, $s7, 3
	fldx.d	$fa1, $s0, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $a0
	bltz	$s3, .LBB10_29
# %bb.19:
	ori	$a0, $zero, 5
	blt	$fp, $a0, .LBB10_23
# %bb.20:
	addi.d	$a2, $s1, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $s4
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	blt	$s7, $a0, .LBB10_25
# %bb.21:                               # %.lr.ph.preheader.i109
	slli.w	$a0, $s6, 1
	div.w	$a1, $a0, $s7
	slli.d	$a0, $a1, 3
	alsl.d	$a1, $a1, $s8, 3
	slli.d	$a2, $s6, 3
	sub.d	$a2, $a2, $a0
	add.d	$a2, $s8, $a2
	sub.d	$a3, $zero, $a0
	addi.d	$a4, $s5, -8
	addi.d	$a5, $s0, 24
	ori	$a6, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB10_22:                              # %.lr.ph.i110
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a5, -8
	fld.d	$fa3, $a4, -8
	fld.d	$fa4, $a5, 0
	fld.d	$fa5, $a4, 0
	fsub.d	$fa1, $fa0, $fa1
	fld.d	$fa6, $a1, 0
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fneg.d	$fa7, $fa5
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a5, 0
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a4, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a4, 0
	addi.d	$a6, $a6, 2
	add.d	$a1, $a1, $a0
	add.d	$a2, $a2, $a3
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, 16
	bltu	$a6, $s7, .LBB10_22
	b	.LBB10_25
.LBB10_23:
	fld.d	$fa1, $s0, 0
	ori	$a0, $zero, 4
	bne	$fp, $a0, .LBB10_30
# %bb.24:
	fld.d	$fa0, $s0, 16
	fld.d	$fa2, $s0, 8
	fld.d	$fa3, $s0, 24
	fsub.d	$fa4, $fa1, $fa0
	fsub.d	$fa5, $fa2, $fa3
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s0, 0
	fadd.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $s0, 8
	fst.d	$fa4, $s0, 16
	fst.d	$fa5, $s0, 24
.LBB10_25:                              # %rftfsub.exit.thread
	fld.d	$fa1, $s0, 0
	fld.d	$fa2, $s0, 8
	fsub.d	$fa0, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $s0, 0
.LBB10_26:                              # %.lr.ph117.preheader
	addi.d	$a0, $s0, 16
	ori	$a1, $zero, 2
	.p2align	4, , 16
.LBB10_27:                              # %.lr.ph117
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a0, 8
	fneg.d	$fa3, $fa1
	fsub.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $a0, -8
	fsub.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a0, 0
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, 16
	bltu	$a1, $fp, .LBB10_27
.LBB10_28:                              # %._crit_edge118
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s5, -8
.LBB10_29:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
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
.LBB10_30:                              # %rftfsub.exit
	fld.d	$fa2, $s0, 8
	fsub.d	$fa0, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa2
	ori	$a0, $zero, 2
	fst.d	$fa1, $s0, 0
	blt	$a0, $fp, .LBB10_26
	b	.LBB10_28
.LBB10_31:
	ori	$a0, $zero, 5
	beq	$fp, $a0, .LBB10_34
# %bb.32:                               # %.lr.ph.preheader.i100
	bstrpick.d	$a0, $fp, 31, 1
	slli.w	$a1, $s6, 1
	div.w	$a2, $a1, $a0
	slli.d	$a3, $s4, 3
	slli.d	$a1, $a2, 3
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $s2, $a2
	alsl.d	$a3, $s6, $a3, 3
	sub.d	$a3, $a3, $a1
	add.d	$a3, $s2, $a3
	sub.d	$a4, $zero, $a1
	alsl.d	$a5, $fp, $s0, 3
	addi.d	$a5, $a5, -8
	addi.d	$a6, $s0, 24
	ori	$a7, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB10_33:                              # %.lr.ph.i101
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a6, -8
	fld.d	$fa3, $a5, -8
	fld.d	$fa4, $a6, 0
	fld.d	$fa5, $a5, 0
	fld.d	$fa6, $a2, 0
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fmul.d	$fa7, $fa6, $fa5
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a6, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a6, 0
	fld.d	$fa2, $a5, -8
	fld.d	$fa3, $a5, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a5, 0
	addi.d	$a7, $a7, 2
	add.d	$a2, $a2, $a1
	add.d	$a3, $a3, $a4
	addi.d	$a5, $a5, -16
	addi.d	$a6, $a6, 16
	bltu	$a7, $a0, .LBB10_33
.LBB10_34:                              # %rftbsub.exit
	addi.d	$a2, $s1, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $s4
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cftbsub)
	jirl	$ra, $ra, 0
	srai.d	$s7, $fp, 1
	ori	$a0, $zero, 2
	alsl.d	$s8, $s4, $s2, 3
	bge	$s7, $a0, .LBB10_16
	b	.LBB10_18
.Lfunc_end10:
	.size	ddst, .Lfunc_end10-ddst
                                        # -- End function
	.globl	dstsub                          # -- Begin function dstsub
	.p2align	5
	.type	dstsub,@function
dstsub:                                 # @dstsub
# %bb.0:
	srai.d	$a4, $a0, 1
	ori	$a5, $zero, 2
	blt	$a4, $a5, .LBB11_3
# %bb.1:                                # %.lr.ph.preheader
	div.w	$a7, $a2, $a0
	slli.d	$a5, $a2, 3
	slli.d	$a2, $a7, 3
	sub.d	$a5, $a5, $a2
	add.d	$a5, $a3, $a5
	sub.d	$a6, $zero, $a2
	alsl.d	$a7, $a7, $a3, 3
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, -8
	addi.d	$t0, $a1, 8
	addi.d	$t1, $a4, -1
	.p2align	4, , 16
.LBB11_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a7, 0
	fld.d	$fa1, $a5, 0
	fld.d	$fa2, $t0, 0
	fsub.d	$fa3, $fa0, $fa1
	fld.d	$fa4, $a0, 0
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa2
	fmul.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa0, $fa4, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fst.d	$fa0, $a0, 0
	fst.d	$fa1, $t0, 0
	add.d	$a5, $a5, $a6
	add.d	$a7, $a7, $a2
	addi.d	$a0, $a0, -8
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB11_2
.LBB11_3:                               # %._crit_edge
	fld.d	$fa0, $a3, 0
	slli.d	$a0, $a4, 3
	fldx.d	$fa1, $a1, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a1, $a0
	ret
.Lfunc_end11:
	.size	dstsub, .Lfunc_end11-dstsub
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dfct
.LCPI12_0:
	.dword	0x3fe921fb54442d18              # double 0.78539816339744828
	.text
	.globl	dfct
	.p2align	5
	.type	dfct,@function
dfct:                                   # @dfct
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	move	$s8, $a3
	ld.w	$s3, $a3, 0
	slli.w	$a3, $s3, 3
	move	$s1, $a4
	move	$s0, $a2
	move	$fp, $a1
	move	$ra, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB12_2
# %bb.1:
	srai.d	$s3, $ra, 3
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(makewt)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
.LBB12_2:
	ld.w	$s4, $s8, 4
	slli.w	$a0, $s4, 1
	srai.d	$s5, $ra, 1
	addi.w	$s7, $s3, 0
	bge	$a0, $ra, .LBB12_8
# %bb.3:
	ori	$a0, $zero, 2
	st.w	$s5, $s8, 4
	move	$s4, $s5
	blt	$s5, $a0, .LBB12_8
# %bb.4:
	alsl.d	$s6, $s7, $s1, 3
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI12_0)
	bstrpick.d	$s2, $s5, 31, 1
	movgr2fr.d	$fa1, $s2
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	fmul.d	$fa0, $fs1, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	fst.d	$fa0, $s6, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	slli.d	$a0, $s2, 3
	ori	$a1, $zero, 4
	fstx.d	$fa0, $s6, $a0
	move	$s4, $s5
	bltu	$s5, $a1, .LBB12_8
# %bb.5:                                # %.lr.ph.preheader.i
	addi.d	$s2, $s2, -1
	alsl.d	$a0, $s5, $s6, 3
	addi.d	$s3, $a0, -8
	addi.d	$s4, $s6, 8
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB12_6:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s6, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s3, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -8
	addi.d	$s4, $s4, 8
	addi.w	$s6, $s6, 1
	bnez	$s2, .LBB12_6
# %bb.7:
	move	$s4, $s5
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
.LBB12_8:                               # %makect.exit
	fld.d	$fa0, $fp, 0
	slli.d	$a0, $ra, 3
	fldx.d	$fa1, $fp, $a0
	slli.d	$a2, $s5, 3
	fldx.d	$fa2, $fp, $a2
	fadd.d	$fa3, $fa0, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 0
	fsub.d	$fa0, $fa3, $fa2
	fst.d	$fa0, $s0, 0
	fadd.d	$fa0, $fa2, $fa3
	ori	$a0, $zero, 3
	fstx.d	$fa0, $s0, $a2
	blt	$ra, $a0, .LBB12_20
# %bb.9:
	bstrpick.d	$s2, $s5, 31, 1
	ori	$a3, $zero, 4
	slli.d	$a1, $s2, 3
	alsl.d	$a0, $s2, $fp, 3
	bltu	$s5, $a3, .LBB12_13
# %bb.10:                               # %.lr.ph.preheader
	addi.d	$a5, $s2, -1
	ori	$a3, $zero, 1
	ori	$a6, $zero, 26
	slli.d	$a4, $ra, 3
	bgeu	$a5, $a6, .LBB12_63
.LBB12_11:                              # %.lr.ph.preheader446
	slli.d	$a5, $a3, 3
	sub.d	$a4, $a4, $a5
	add.d	$a6, $a3, $ra
	sub.d	$a6, $a6, $s5
	slli.d	$a6, $a6, 3
	sub.d	$a7, $a2, $a5
	sub.d	$a3, $s2, $a3
	.p2align	4, , 16
.LBB12_12:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $fp, $a5
	fldx.d	$fa1, $fp, $a4
	fldx.d	$fa2, $fp, $a7
	fldx.d	$fa3, $fp, $a6
	fsub.d	$fa4, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa3
	fstx.d	$fa4, $fp, $a5
	fstx.d	$fa1, $fp, $a7
	fsub.d	$fa1, $fa0, $fa2
	fstx.d	$fa1, $s0, $a5
	fadd.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $s0, $a7
	addi.d	$a4, $a4, -8
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -8
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	bnez	$a3, .LBB12_12
.LBB12_13:                              # %._crit_edge
	fldx.d	$fa0, $fp, $a1
	sub.w	$a3, $ra, $s2
	slli.d	$a3, $a3, 3
	fldx.d	$fa1, $fp, $a3
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $a1
	fldx.d	$fa0, $fp, $a3
	fldx.d	$fa1, $fp, $a1
	alsl.d	$s6, $ra, $fp, 3
	fsub.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $fp, $a1
	alsl.d	$t3, $s7, $s1, 3
	ori	$a3, $zero, 3
	addi.w	$t4, $s4, 0
	st.d	$t3, $sp, 80                    # 8-byte Folded Spill
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	bgeu	$a3, $s5, .LBB12_21
# %bb.14:                               # %.lr.ph.preheader.i236
	div.w	$a3, $t4, $s5
	slli.d	$a4, $t4, 3
	alsl.d	$a4, $s7, $a4, 3
	slli.d	$a3, $a3, 3
	sub.d	$a4, $a4, $a3
	alsl.d	$a5, $s7, $a3, 3
	addi.d	$a2, $a2, -8
	ori	$a6, $zero, 8
	.p2align	4, , 16
.LBB12_15:                              # %.lr.ph.i237
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s1, $a5
	fldx.d	$fa1, $s1, $a4
	fldx.d	$fa2, $fp, $a2
	fsub.d	$fa3, $fa0, $fa1
	fldx.d	$fa4, $fp, $a6
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa2
	fmul.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa0, $fa4, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fstx.d	$fa0, $fp, $a6
	fstx.d	$fa1, $fp, $a2
	sub.d	$a4, $a4, $a3
	add.d	$a5, $a5, $a3
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, -8
	bne	$a1, $a6, .LBB12_15
# %bb.16:                               # %dctsub.exit
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $t3, 0
	fmul.d	$fa0, $fa1, $fa0
	ori	$s3, $zero, 5
	fst.d	$fa0, $a0, 0
	blt	$s5, $s3, .LBB12_73
# %bb.17:
	addi.d	$a2, $s8, 8
	move	$a0, $s5
	move	$a1, $fp
	move	$a3, $s7
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	beq	$s5, $s3, .LBB12_22
# %bb.18:                               # %.lr.ph.preheader.i241
	slli.w	$a0, $s4, 1
	addi.w	$a1, $s2, 0
	div.w	$a1, $a0, $a1
	slli.d	$a2, $s7, 3
	slli.d	$a0, $a1, 3
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $s1, $a1
	alsl.d	$a2, $t4, $a2, 3
	sub.d	$a2, $a2, $a0
	add.d	$a2, $s1, $a2
	sub.d	$a3, $zero, $a0
	alsl.d	$a4, $s5, $fp, 3
	addi.d	$a4, $a4, -8
	addi.d	$a5, $fp, 24
	ori	$a6, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB12_19:                              # %.lr.ph.i242
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a5, -8
	fld.d	$fa3, $a4, -8
	fld.d	$fa4, $a5, 0
	fld.d	$fa5, $a4, 0
	fsub.d	$fa1, $fa0, $fa1
	fld.d	$fa6, $a1, 0
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fneg.d	$fa7, $fa5
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a5, 0
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a4, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a4, 0
	addi.d	$a6, $a6, 2
	add.d	$a1, $a1, $a0
	add.d	$a2, $a2, $a3
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, 16
	bltu	$a6, $s2, .LBB12_19
	b	.LBB12_22
.LBB12_20:
	fld.d	$fa0, $fp, 0
	fst.d	$fa0, $fp, 8
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $fp, 16
	fld.d	$fa0, $s0, 8
	b	.LBB12_62
.LBB12_21:                              # %.thread
	fld.d	$fa1, $t3, 0
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
.LBB12_22:                              # %rftfsub.exit
	fld.d	$fa0, $fp, 0
	fld.d	$fa1, $fp, 8
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s6, -8
	fld.d	$fa0, $fp, 0
	fld.d	$fa1, $fp, 8
	fadd.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 4
	fst.d	$fa0, $fp, 8
	blt	$s5, $a0, .LBB12_25
# %bb.23:                               # %.lr.ph264.preheader
	addi.d	$a0, $s5, 2
	alsl.d	$a1, $s5, $fp, 3
	addi.d	$a1, $a1, -8
	alsl.d	$a2, $s5, $fp, 4
	addi.d	$a2, $a2, -40
	ori	$a3, $zero, 5
	.p2align	4, , 16
.LBB12_24:                              # %.lr.ph264
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a1, 0
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a2, 16
	fld.d	$fa1, $a1, 0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, -2
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a2, -32
	bltu	$a3, $a0, .LBB12_24
	b	.LBB12_26
.LBB12_25:                              # %.preheader
	ori	$s3, $zero, 2
	bltu	$s5, $a0, .LBB12_61
.LBB12_26:                              # %.lr.ph275
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.w	$a0, $s4, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$t5, $s0, 8
	slli.d	$a0, $t4, 3
	slli.d	$t6, $s7, 3
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$t7, $s7, $a0, 3
	add.d	$a0, $s1, $t7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, -8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$t8, $s0, 24
	ori	$t1, $zero, 4
	ori	$s4, $zero, 3
	ori	$s3, $zero, 2
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	st.d	$t7, $sp, 40                    # 8-byte Folded Spill
	b	.LBB12_28
	.p2align	4, , 16
.LBB12_27:                              # %._crit_edge272
                                        #   in Loop: Header=BB12_28 Depth=1
	add.w	$a0, $s6, $s2
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s0, $a0
	fst.d	$fa0, $t2, 0
	move	$s2, $s6
	bgeu	$s4, $s5, .LBB12_60
.LBB12_28:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_30 Depth 2
                                        #     Child Loop BB12_37 Depth 2
                                        #     Child Loop BB12_42 Depth 2
                                        #     Child Loop BB12_55 Depth 2
                                        #     Child Loop BB12_48 Depth 2
	addi.w	$s5, $s2, 0
	bstrpick.d	$s6, $s2, 31, 1
	bltu	$s5, $t1, .LBB12_33
# %bb.29:                               # %.lr.ph.preheader.i245
                                        #   in Loop: Header=BB12_28 Depth=1
	div.w	$a0, $t4, $s5
	addi.w	$s8, $s6, 0
	slli.d	$a1, $a0, 3
	sub.d	$a2, $t7, $a1
	alsl.d	$a3, $a0, $t6, 3
	slli.d	$a0, $s8, 3
	slli.d	$s4, $s5, 3
	addi.d	$a4, $s4, -8
	ori	$a5, $zero, 8
	.p2align	4, , 16
.LBB12_30:                              # %.lr.ph.i247
                                        #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $s1, $a3
	fldx.d	$fa1, $s1, $a2
	fldx.d	$fa2, $s0, $a4
	fsub.d	$fa3, $fa0, $fa1
	fldx.d	$fa4, $s0, $a5
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa2
	fmul.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa0, $fa4, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fstx.d	$fa0, $s0, $a5
	fstx.d	$fa1, $s0, $a4
	sub.d	$a2, $a2, $a1
	add.d	$a3, $a3, $a1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, -8
	bne	$a0, $a5, .LBB12_30
# %bb.31:                               # %dctsub.exit253
                                        #   in Loop: Header=BB12_28 Depth=1
	fld.d	$fa0, $t3, 0
	fldx.d	$fa1, $s0, $a0
	alsl.d	$t2, $s8, $s0, 3
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $a0
	bne	$s5, $t1, .LBB12_34
# %bb.32:                               #   in Loop: Header=BB12_28 Depth=1
	vld	$vr0, $s0, 0
	vld	$vr1, $s0, 16
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $s0, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $s0, 16
	ori	$s4, $zero, 3
	b	.LBB12_40
	.p2align	4, , 16
.LBB12_33:                              #   in Loop: Header=BB12_28 Depth=1
	addi.w	$s8, $s6, 0
	fld.d	$fa0, $t3, 0
	slli.d	$a0, $s8, 3
	fldx.d	$fa1, $s0, $a0
	alsl.d	$t2, $s8, $s0, 3
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $a0
	b	.LBB12_40
	.p2align	4, , 16
.LBB12_34:                              #   in Loop: Header=BB12_28 Depth=1
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	move	$s2, $t8
	move	$s7, $t5
	move	$a0, $s5
	move	$a1, $s0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	bne	$s5, $a0, .LBB12_36
# %bb.35:                               #   in Loop: Header=BB12_28 Depth=1
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	move	$t5, $s7
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
	move	$t8, $s2
	b	.LBB12_39
.LBB12_36:                              # %.lr.ph.preheader.i254
                                        #   in Loop: Header=BB12_28 Depth=1
	addi.w	$a0, $s6, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	div.w	$a1, $a1, $a0
	slli.d	$a0, $a1, 3
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $t3, 3
	sub.d	$a2, $zero, $a0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a3, $a3, $a0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	add.d	$a4, $a4, $s4
	ori	$a5, $zero, 2
	move	$t8, $s2
	move	$a6, $s2
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	move	$t5, $s7
	vldi	$vr7, -928
	.p2align	4, , 16
.LBB12_37:                              # %.lr.ph.i255
                                        #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a6, -8
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a6, 0
	fld.d	$fa4, $a4, 0
	fsub.d	$fa0, $fa7, $fa0
	fld.d	$fa5, $a1, 0
	fsub.d	$fa2, $fa1, $fa2
	fadd.d	$fa4, $fa3, $fa4
	fneg.d	$fa6, $fa4
	fmul.d	$fa6, $fa5, $fa6
	fmadd.d	$fa6, $fa0, $fa2, $fa6
	fmul.d	$fa2, $fa5, $fa2
	fmadd.d	$fa0, $fa0, $fa4, $fa2
	fsub.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $a6, -8
	fsub.d	$fa1, $fa3, $fa0
	fst.d	$fa1, $a6, 0
	fld.d	$fa1, $a4, -8
	fld.d	$fa2, $a4, 0
	fadd.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $a4, -8
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a4, 0
	addi.d	$a5, $a5, 2
	add.d	$a1, $a1, $a0
	add.d	$a3, $a3, $a2
	addi.d	$a4, $a4, -16
	addi.d	$a6, $a6, 16
	bltu	$a5, $s8, .LBB12_37
# %bb.38:                               #   in Loop: Header=BB12_28 Depth=1
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
.LBB12_39:                              # %rftfsub.exit260
                                        #   in Loop: Header=BB12_28 Depth=1
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ori	$t1, $zero, 4
	ori	$s4, $zero, 3
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
.LBB12_40:                              # %rftfsub.exit260
                                        #   in Loop: Header=BB12_28 Depth=1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s0, 8
	fsub.d	$fa0, $fa0, $fa1
	sub.w	$a0, $ra, $s3
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $fp, $a0
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s0, 8
	fadd.d	$fa0, $fa0, $fa1
	slli.d	$a0, $s3, 3
	fstx.d	$fa0, $fp, $a0
	bltu	$s5, $s4, .LBB12_44
# %bb.41:                               # %.lr.ph267
                                        #   in Loop: Header=BB12_28 Depth=1
	slli.w	$a2, $s3, 2
	slli.d	$a1, $a2, 3
	alsl.d	$a2, $a2, $fp, 3
	sub.d	$a3, $zero, $a0
	ori	$a4, $zero, 2
	move	$a5, $t8
	.p2align	4, , 16
.LBB12_42:                              #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a5, -8
	fld.d	$fa1, $a5, 0
	fsub.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $a3
	fld.d	$fa0, $a5, -8
	fld.d	$fa1, $a5, 0
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $a0
	addi.d	$a4, $a4, 2
	add.d	$a2, $a2, $a1
	addi.d	$a5, $a5, 16
	bltu	$a4, $s5, .LBB12_42
# %bb.43:                               # %._crit_edge268.thread
                                        #   in Loop: Header=BB12_28 Depth=1
	slli.w	$s3, $s3, 1
	b	.LBB12_45
	.p2align	4, , 16
.LBB12_44:                              # %._crit_edge268
                                        #   in Loop: Header=BB12_28 Depth=1
	slli.w	$s3, $s3, 1
	ori	$a0, $zero, 2
	bne	$s5, $a0, .LBB12_59
.LBB12_45:                              # %.lr.ph271.preheader
                                        #   in Loop: Header=BB12_28 Depth=1
	bstrpick.d	$a5, $s2, 31, 0
	slli.d	$a0, $a5, 3
	slli.d	$a1, $a5, 4
	ori	$a2, $zero, 10
	bgeu	$s8, $a2, .LBB12_49
# %bb.46:                               #   in Loop: Header=BB12_28 Depth=1
	move	$a2, $zero
.LBB12_47:                              # %.lr.ph271.preheader439
                                        #   in Loop: Header=BB12_28 Depth=1
	slli.d	$a4, $a2, 3
	alsl.d	$a3, $a2, $s0, 3
	sub.d	$a4, $s0, $a4
	sub.d	$a2, $s8, $a2
	.p2align	4, , 16
.LBB12_48:                              # %.lr.ph271
                                        #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $a4, $a1
	fldx.d	$fa1, $a3, $a0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	fldx.d	$fa0, $a4, $a1
	fadd.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $a4, $a0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -8
	bnez	$a2, .LBB12_48
	b	.LBB12_27
	.p2align	4, , 16
.LBB12_49:                              # %vector.memcheck387
                                        #   in Loop: Header=BB12_28 Depth=1
	slli.d	$a7, $s8, 3
	alsl.d	$a6, $s8, $s0, 3
	sub.d	$a2, $a0, $a7
	add.d	$a3, $t5, $a2
	alsl.d	$a4, $a5, $t5, 3
	sltu	$a2, $s0, $a4
	sltu	$t0, $a3, $a6
	and	$t0, $a2, $t0
	move	$a2, $zero
	bnez	$t0, .LBB12_47
# %bb.50:                               # %vector.memcheck387
                                        #   in Loop: Header=BB12_28 Depth=1
	move	$s7, $t4
	move	$t4, $t2
	sub.d	$a7, $a1, $a7
	add.d	$a7, $t5, $a7
	alsl.d	$t1, $a5, $t5, 4
	sltu	$t0, $s0, $t1
	sltu	$t2, $a7, $a6
	and	$t0, $t0, $t2
	bnez	$t0, .LBB12_58
# %bb.51:                               # %vector.memcheck387
                                        #   in Loop: Header=BB12_28 Depth=1
	alsl.d	$t0, $a5, $s0, 3
	alsl.d	$a5, $a5, $a6, 3
	sltu	$t2, $s0, $a5
	sltu	$a6, $t0, $a6
	and	$a6, $t2, $a6
	bnez	$a6, .LBB12_58
# %bb.52:                               # %vector.memcheck387
                                        #   in Loop: Header=BB12_28 Depth=1
	sltu	$a6, $a3, $t1
	sltu	$a7, $a7, $a4
	and	$a6, $a6, $a7
	move	$t2, $t4
	bnez	$a6, .LBB12_57
# %bb.53:                               # %vector.memcheck387
                                        #   in Loop: Header=BB12_28 Depth=1
	sltu	$a3, $a3, $a5
	sltu	$a4, $t0, $a4
	and	$a3, $a3, $a4
	ori	$t1, $zero, 4
	move	$t4, $s7
	bnez	$a3, .LBB12_47
# %bb.54:                               # %vector.ph419
                                        #   in Loop: Header=BB12_28 Depth=1
	bstrpick.d	$a2, $s8, 30, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $a2
	.p2align	4, , 16
.LBB12_55:                              # %vector.body422
                                        #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $a3, $a1
	vldx	$vr1, $a4, $a0
	vori.b	$vr2, $vr0, 0
	vshuf4i.d	$vr2, $vr0, 1
	vfsub.d	$vr2, $vr2, $vr1
	vst	$vr2, $a4, 0
	vshuf4i.d	$vr1, $vr0, 1
	vfadd.d	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, -16
	bnez	$a5, .LBB12_55
# %bb.56:                               # %middle.block431
                                        #   in Loop: Header=BB12_28 Depth=1
	beq	$s8, $a2, .LBB12_27
	b	.LBB12_47
.LBB12_57:                              #   in Loop: Header=BB12_28 Depth=1
	ori	$t1, $zero, 4
	move	$t4, $s7
	b	.LBB12_47
.LBB12_58:                              #   in Loop: Header=BB12_28 Depth=1
	ori	$t1, $zero, 4
	move	$t2, $t4
	move	$t4, $s7
	b	.LBB12_47
.LBB12_59:                              # %._crit_edge272.thread
	add.w	$a0, $s6, $s2
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s0, $a0
	fst.d	$fa0, $t2, 0
.LBB12_60:                              # %._crit_edge276.loopexit
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB12_61:                              # %._crit_edge276
	fld.d	$fa0, $s0, 0
	slli.d	$a0, $s3, 3
	fstx.d	$fa0, $fp, $a0
	fld.d	$fa0, $s0, 16
	fld.d	$fa1, $s0, 8
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s6, 0
	fld.d	$fa0, $s0, 16
	fld.d	$fa1, $s0, 8
	fadd.d	$fa0, $fa0, $fa1
.LBB12_62:
	fst.d	$fa0, $fp, 0
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB12_63:                              # %vector.memcheck
	addi.d	$t8, $fp, 8
	sub.d	$a6, $a2, $a1
	addi.d	$a6, $a6, 8
	add.d	$t6, $fp, $a6
	alsl.d	$t7, $s5, $fp, 3
	addi.d	$t1, $s0, 8
	alsl.d	$t2, $s2, $s0, 3
	add.d	$a6, $s0, $a6
	alsl.d	$a7, $s5, $s0, 3
	addi.d	$t0, $a4, 8
	sub.d	$t3, $t0, $a1
	add.d	$t3, $fp, $t3
	alsl.d	$t4, $ra, $fp, 3
	sub.d	$t0, $t0, $a2
	add.d	$t0, $fp, $t0
	alsl.d	$t5, $ra, $a1, 3
	sub.d	$t5, $t5, $a2
	vinsgr2vr.d	$vr0, $t8, 0
	add.d	$t5, $fp, $t5
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.d	$vr2, $a6, 0
	vinsgr2vr.d	$vr1, $t3, 1
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.d	$vr3, $t6, 1
	vori.b	$vr4, $vr0, 0
	vinsgr2vr.d	$vr4, $t6, 1
	vinsgr2vr.d	$vr5, $t7, 0
	vinsgr2vr.d	$vr0, $t1, 1
	vori.b	$vr6, $vr5, 0
	vinsgr2vr.d	$vr7, $a7, 0
	vinsgr2vr.d	$vr6, $a0, 1
	vori.b	$vr8, $vr7, 0
	vinsgr2vr.d	$vr8, $a0, 1
	vinsgr2vr.d	$vr5, $t4, 1
	vinsgr2vr.d	$vr9, $t5, 0
	vinsgr2vr.d	$vr9, $t2, 1
	vslt.du	$vr4, $vr4, $vr9
	vslt.du	$vr3, $vr3, $vr5
	vpickev.w	$vr3, $vr3, $vr4
	vslt.du	$vr1, $vr1, $vr8
	vslt.du	$vr0, $vr0, $vr6
	vpickev.w	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr1, $t6, 0
	vpickev.h	$vr0, $vr3, $vr0
	vori.b	$vr3, $vr1, 0
	vinsgr2vr.d	$vr3, $t3, 1
	vinsgr2vr.d	$vr2, $t8, 1
	vinsgr2vr.d	$vr1, $t8, 1
	vinsgr2vr.d	$vr4, $t0, 0
	vinsgr2vr.d	$vr5, $a0, 0
	vinsgr2vr.d	$vr4, $t1, 1
	vori.b	$vr6, $vr5, 0
	vinsgr2vr.d	$vr6, $t7, 1
	vinsgr2vr.d	$vr7, $t7, 1
	vori.b	$vr8, $vr5, 0
	vinsgr2vr.d	$vr8, $t4, 1
	vinsgr2vr.d	$vr5, $t2, 1
	vslt.du	$vr1, $vr1, $vr5
	vslt.du	$vr2, $vr2, $vr8
	vpickev.w	$vr1, $vr2, $vr1
	vslt.du	$vr2, $vr3, $vr7
	vslt.du	$vr3, $vr4, $vr6
	vpickev.w	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr2, $vr1
	vand.v	$vr0, $vr0, $vr1
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$t8, $vr0, 0
	bnez	$t8, .LBB12_11
# %bb.64:                               # %vector.memcheck
	sltu	$t6, $t6, $t5
	sltu	$t7, $t0, $t7
	and	$t6, $t6, $t7
	bnez	$t6, .LBB12_11
# %bb.65:                               # %vector.memcheck
	sltu	$t6, $t1, $a7
	sltu	$t7, $a6, $t2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB12_11
# %bb.66:                               # %vector.memcheck
	sltu	$t6, $t1, $t4
	sltu	$t7, $t3, $t2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB12_11
# %bb.67:                               # %vector.memcheck
	sltu	$t1, $t1, $t5
	sltu	$t2, $t0, $t2
	and	$t1, $t1, $t2
	bnez	$t1, .LBB12_11
# %bb.68:                               # %vector.memcheck
	sltu	$t1, $a6, $t4
	sltu	$t2, $t3, $a7
	and	$t1, $t1, $t2
	bnez	$t1, .LBB12_11
# %bb.69:                               # %vector.memcheck
	sltu	$a6, $a6, $t5
	sltu	$a7, $t0, $a7
	and	$a6, $a6, $a7
	bnez	$a6, .LBB12_11
# %bb.70:                               # %vector.ph
	move	$a6, $a5
	bstrins.d	$a6, $zero, 0, 0
	ori	$a3, $a5, 1
	addi.d	$a7, $a2, -16
	sub.d	$t0, $a4, $a2
	add.d	$t0, $fp, $t0
	addi.d	$t1, $a4, -16
	ori	$t2, $zero, 8
	move	$t3, $a6
	.p2align	4, , 16
.LBB12_71:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $t1
	vldx	$vr1, $fp, $t2
	vshuf4i.d	$vr0, $vr0, 1
	vldx	$vr2, $fp, $a7
	vldx	$vr3, $t0, $t2
	vfsub.d	$vr4, $vr1, $vr0
	vfadd.d	$vr0, $vr1, $vr0
	vshuf4i.d	$vr2, $vr0, 1
	vfsub.d	$vr1, $vr2, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	vstx	$vr4, $fp, $t2
	vshuf4i.d	$vr1, $vr0, 1
	vstx	$vr1, $fp, $a7
	vfsub.d	$vr1, $vr0, $vr2
	vstx	$vr1, $s0, $t2
	vfadd.d	$vr0, $vr0, $vr2
	vshuf4i.d	$vr0, $vr0, 1
	vstx	$vr0, $s0, $a7
	addi.d	$a7, $a7, -16
	addi.d	$t2, $t2, 16
	addi.d	$t3, $t3, -2
	addi.d	$t1, $t1, -16
	bnez	$t3, .LBB12_71
# %bb.72:                               # %middle.block
	bne	$a5, $a6, .LBB12_11
	b	.LBB12_13
.LBB12_73:
	ori	$a0, $zero, 4
	bne	$s5, $a0, .LBB12_22
# %bb.74:
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $fp, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 16
	b	.LBB12_22
.Lfunc_end12:
	.size	dfct, .Lfunc_end12-dfct
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dfst
.LCPI13_0:
	.dword	0x3fe921fb54442d18              # double 0.78539816339744828
	.text
	.globl	dfst
	.p2align	5
	.type	dfst,@function
dfst:                                   # @dfst
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	move	$s8, $a3
	ld.w	$s3, $a3, 0
	slli.w	$a3, $s3, 3
	move	$s1, $a4
	move	$s0, $a2
	move	$fp, $a1
	move	$ra, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB13_2
# %bb.1:
	srai.d	$s3, $ra, 3
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(makewt)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
.LBB13_2:
	ld.w	$s7, $s8, 4
	slli.w	$a0, $s7, 1
	addi.w	$s6, $s3, 0
	bge	$a0, $ra, .LBB13_8
# %bb.3:
	srai.d	$s7, $ra, 1
	ori	$a0, $zero, 2
	st.w	$s7, $s8, 4
	blt	$s7, $a0, .LBB13_8
# %bb.4:
	alsl.d	$s4, $s6, $s1, 3
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI13_0)
	bstrpick.d	$s2, $s7, 31, 1
	movgr2fr.d	$fa1, $s2
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	fmul.d	$fa0, $fs1, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s4, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	slli.d	$a0, $s2, 3
	ori	$a1, $zero, 4
	fstx.d	$fa0, $s4, $a0
	bltu	$s7, $a1, .LBB13_7
# %bb.5:                                # %.lr.ph.preheader.i
	addi.d	$s2, $s2, -1
	alsl.d	$a0, $s7, $s4, 3
	addi.d	$s3, $a0, -8
	addi.d	$s4, $s4, 8
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB13_6:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s5, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s3, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -8
	addi.d	$s4, $s4, 8
	addi.w	$s5, $s5, 1
	bnez	$s2, .LBB13_6
.LBB13_7:
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	b	.LBB13_9
.LBB13_8:                               # %makect.exit
	ori	$a0, $zero, 3
	blt	$ra, $a0, .LBB13_72
.LBB13_9:                               # %makect.exit.thread
	bstrpick.d	$a0, $ra, 31, 1
	bstrpick.d	$a1, $ra, 31, 2
	ori	$a2, $zero, 7
	bstrpick.d	$t4, $a1, 61, 0
	bgeu	$a2, $ra, .LBB13_21
# %bb.10:                               # %.lr.ph.preheader
	bstrpick.d	$a1, $a0, 31, 0
	addi.w	$s3, $t4, 0
	addi.d	$a5, $s3, -1
	ori	$a2, $zero, 1
	ori	$a6, $zero, 26
	slli.d	$a4, $ra, 3
	slli.d	$a3, $a1, 3
	bltu	$a5, $a6, .LBB13_23
# %bb.11:                               # %vector.memcheck
	move	$s2, $t4
	addi.d	$s4, $fp, 8
	slli.d	$t5, $s3, 3
	alsl.d	$t8, $s3, $fp, 3
	sub.d	$a6, $a3, $t5
	addi.d	$a6, $a6, 8
	add.d	$t6, $fp, $a6
	alsl.d	$t7, $a1, $fp, 3
	addi.d	$t1, $s0, 8
	alsl.d	$t2, $s3, $s0, 3
	add.d	$a6, $s0, $a6
	alsl.d	$a7, $a1, $s0, 3
	addi.d	$t0, $a4, 8
	sub.d	$t3, $t0, $t5
	add.d	$t3, $fp, $t3
	alsl.d	$t4, $ra, $fp, 3
	sub.d	$t0, $t0, $a3
	add.d	$t0, $fp, $t0
	alsl.d	$t5, $ra, $t5, 3
	sub.d	$t5, $t5, $a3
	vinsgr2vr.d	$vr0, $s4, 0
	add.d	$t5, $fp, $t5
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.d	$vr2, $a6, 0
	vinsgr2vr.d	$vr1, $t3, 1
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.d	$vr3, $t6, 1
	vori.b	$vr4, $vr0, 0
	vinsgr2vr.d	$vr4, $t6, 1
	vinsgr2vr.d	$vr5, $t7, 0
	vinsgr2vr.d	$vr0, $t1, 1
	vori.b	$vr6, $vr5, 0
	vinsgr2vr.d	$vr7, $a7, 0
	vinsgr2vr.d	$vr6, $t8, 1
	vori.b	$vr8, $vr7, 0
	vinsgr2vr.d	$vr8, $t8, 1
	vinsgr2vr.d	$vr5, $t4, 1
	vinsgr2vr.d	$vr9, $t5, 0
	vinsgr2vr.d	$vr9, $t2, 1
	vslt.du	$vr4, $vr4, $vr9
	vslt.du	$vr3, $vr3, $vr5
	vpickev.w	$vr3, $vr3, $vr4
	vslt.du	$vr1, $vr1, $vr8
	vslt.du	$vr0, $vr0, $vr6
	vpickev.w	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr1, $t6, 0
	vpickev.h	$vr0, $vr3, $vr0
	vori.b	$vr3, $vr1, 0
	vinsgr2vr.d	$vr3, $t3, 1
	vinsgr2vr.d	$vr2, $s4, 1
	vinsgr2vr.d	$vr1, $s4, 1
	vinsgr2vr.d	$vr4, $t0, 0
	vinsgr2vr.d	$vr5, $t8, 0
	vinsgr2vr.d	$vr4, $t1, 1
	vori.b	$vr6, $vr5, 0
	vinsgr2vr.d	$vr6, $t7, 1
	vinsgr2vr.d	$vr7, $t7, 1
	vori.b	$vr8, $vr5, 0
	vinsgr2vr.d	$vr8, $t4, 1
	vinsgr2vr.d	$vr5, $t2, 1
	vslt.du	$vr1, $vr1, $vr5
	vslt.du	$vr2, $vr2, $vr8
	vpickev.w	$vr1, $vr2, $vr1
	vslt.du	$vr2, $vr3, $vr7
	vslt.du	$vr3, $vr4, $vr6
	vpickev.w	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr2, $vr1
	vand.v	$vr0, $vr0, $vr1
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$t8, $vr0, 0
	bnez	$t8, .LBB13_22
# %bb.12:                               # %vector.memcheck
	sltu	$t6, $t6, $t5
	sltu	$t7, $t0, $t7
	and	$t6, $t6, $t7
	bnez	$t6, .LBB13_22
# %bb.13:                               # %vector.memcheck
	sltu	$t6, $t1, $a7
	sltu	$t7, $a6, $t2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB13_22
# %bb.14:                               # %vector.memcheck
	sltu	$t6, $t1, $t4
	sltu	$t7, $t3, $t2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB13_22
# %bb.15:                               # %vector.memcheck
	sltu	$t1, $t1, $t5
	sltu	$t2, $t0, $t2
	and	$t1, $t1, $t2
	bnez	$t1, .LBB13_22
# %bb.16:                               # %vector.memcheck
	sltu	$t1, $a6, $t4
	sltu	$t2, $t3, $a7
	and	$t1, $t1, $t2
	bnez	$t1, .LBB13_22
# %bb.17:                               # %vector.memcheck
	sltu	$a6, $a6, $t5
	sltu	$a7, $t0, $a7
	and	$a6, $a6, $a7
	move	$t4, $s2
	bnez	$a6, .LBB13_23
# %bb.18:                               # %vector.ph
	move	$a6, $a5
	bstrins.d	$a6, $zero, 0, 0
	ori	$a2, $a5, 1
	addi.d	$a7, $a3, -16
	sub.d	$t0, $a4, $a3
	add.d	$t0, $fp, $t0
	addi.d	$t1, $a4, -16
	ori	$t2, $zero, 8
	move	$t3, $a6
	.p2align	4, , 16
.LBB13_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $t1
	vldx	$vr1, $fp, $t2
	vshuf4i.d	$vr0, $vr0, 1
	vldx	$vr2, $fp, $a7
	vldx	$vr3, $t0, $t2
	vfadd.d	$vr4, $vr1, $vr0
	vfsub.d	$vr0, $vr1, $vr0
	vshuf4i.d	$vr2, $vr0, 1
	vfadd.d	$vr1, $vr2, $vr3
	vfsub.d	$vr2, $vr2, $vr3
	vstx	$vr4, $fp, $t2
	vshuf4i.d	$vr1, $vr0, 1
	vstx	$vr1, $fp, $a7
	vfadd.d	$vr1, $vr0, $vr2
	vstx	$vr1, $s0, $t2
	vfsub.d	$vr0, $vr0, $vr2
	vshuf4i.d	$vr0, $vr0, 1
	vstx	$vr0, $s0, $a7
	addi.d	$a7, $a7, -16
	addi.d	$t2, $t2, 16
	addi.d	$t3, $t3, -2
	addi.d	$t1, $t1, -16
	bnez	$t3, .LBB13_19
# %bb.20:                               # %middle.block
	bne	$a5, $a6, .LBB13_23
	b	.LBB13_25
.LBB13_21:                              # %makect.exit.thread.._crit_edge_crit_edge
	addi.w	$s3, $t4, 0
	b	.LBB13_25
.LBB13_22:
	move	$t4, $s2
.LBB13_23:                              # %.lr.ph.preheader414
	slli.d	$a5, $a2, 3
	sub.d	$a4, $a4, $a5
	add.d	$a6, $a2, $ra
	sub.d	$a1, $a6, $a1
	slli.d	$a1, $a1, 3
	sub.d	$a3, $a3, $a5
	sub.d	$a2, $s3, $a2
	.p2align	4, , 16
.LBB13_24:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $fp, $a5
	fldx.d	$fa1, $fp, $a4
	fldx.d	$fa2, $fp, $a3
	fldx.d	$fa3, $fp, $a1
	fadd.d	$fa4, $fa0, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa3
	fsub.d	$fa2, $fa2, $fa3
	fstx.d	$fa4, $fp, $a5
	fstx.d	$fa1, $fp, $a3
	fadd.d	$fa1, $fa0, $fa2
	fstx.d	$fa1, $s0, $a5
	fsub.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $s0, $a3
	addi.d	$a4, $a4, -8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 8
	bnez	$a2, .LBB13_24
.LBB13_25:                              # %._crit_edge
	slli.d	$a1, $s3, 3
	fldx.d	$fa0, $fp, $a1
	sub.w	$a2, $ra, $t4
	slli.d	$a2, $a2, 3
	fldx.d	$fa1, $fp, $a2
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 0
	fldx.d	$fa0, $fp, $a2
	fldx.d	$fa1, $fp, $a1
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $fp, $a1
	addi.w	$s5, $a0, 0
	slli.d	$a4, $s5, 3
	fldx.d	$fa0, $fp, $a4
	alsl.d	$a0, $s3, $fp, 3
	fst.d	$fa0, $fp, 0
	ori	$a1, $zero, 7
	alsl.d	$t5, $s6, $s1, 3
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	bgeu	$a1, $ra, .LBB13_32
# %bb.26:                               # %.lr.ph.preheader.i210
	addi.w	$s4, $s7, 0
	div.w	$a1, $s4, $s5
	slli.d	$a2, $s4, 3
	alsl.d	$a2, $s6, $a2, 3
	slli.d	$a1, $a1, 3
	sub.d	$a2, $a2, $a1
	alsl.d	$a3, $s6, $a1, 3
	addi.d	$a4, $a4, -8
	ori	$a5, $zero, 1
	ori	$a6, $zero, 8
	.p2align	4, , 16
.LBB13_27:                              # %.lr.ph.i211
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s1, $a3
	fldx.d	$fa1, $s1, $a2
	fldx.d	$fa2, $fp, $a6
	fsub.d	$fa3, $fa0, $fa1
	fldx.d	$fa4, $fp, $a4
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa2
	fmul.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa0, $fa4, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fstx.d	$fa0, $fp, $a4
	fstx.d	$fa1, $fp, $a6
	addi.d	$a5, $a5, 1
	sub.d	$a2, $a2, $a1
	add.d	$a3, $a3, $a1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -8
	bne	$s3, $a5, .LBB13_27
# %bb.28:                               # %dstsub.exit
	fld.d	$fa0, $t5, 0
	fld.d	$fa1, $a0, 0
	fmul.d	$fa0, $fa0, $fa1
	ori	$a1, $zero, 10
	fst.d	$fa0, $a0, 0
	bltu	$ra, $a1, .LBB13_33
# %bb.29:
	addi.d	$a2, $s8, 8
	move	$a0, $s5
	move	$a1, $fp
	move	$a3, $s6
	move	$a4, $s1
	move	$s2, $t4
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	move	$t4, $s2
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	ori	$a0, $zero, 12
	bltu	$ra, $a0, .LBB13_35
# %bb.30:                               # %.lr.ph.preheader.i215
	slli.w	$a0, $s7, 1
	addi.w	$a1, $t4, 0
	div.w	$a1, $a0, $a1
	slli.d	$a2, $s6, 3
	slli.d	$a0, $a1, 3
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $s1, $a1
	alsl.d	$a2, $s4, $a2, 3
	sub.d	$a2, $a2, $a0
	add.d	$a2, $s1, $a2
	sub.d	$a3, $zero, $a0
	alsl.d	$a4, $s5, $fp, 3
	addi.d	$a4, $a4, -8
	addi.d	$a5, $fp, 24
	ori	$a6, $zero, 2
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB13_31:                              # %.lr.ph.i216
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a5, -8
	fld.d	$fa3, $a4, -8
	fld.d	$fa4, $a5, 0
	fld.d	$fa5, $a4, 0
	fsub.d	$fa1, $fa0, $fa1
	fld.d	$fa6, $a1, 0
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa5, $fa4, $fa5
	fneg.d	$fa7, $fa5
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa1, $fa3, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa1, $fa1, $fa5, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa2, $fa4, $fa1
	fst.d	$fa2, $a5, 0
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fadd.d	$fa2, $fa2, $fa7
	fst.d	$fa2, $a4, -8
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $a4, 0
	addi.d	$a6, $a6, 2
	add.d	$a1, $a1, $a0
	add.d	$a2, $a2, $a3
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, 16
	bltu	$a6, $s3, .LBB13_31
	b	.LBB13_35
.LBB13_32:                              # %dstsub.exit.thread
	fld.d	$fa0, $t5, 0
	fld.d	$fa1, $a0, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, 0
.LBB13_33:
	ori	$a0, $zero, 4
	bne	$s5, $a0, .LBB13_35
# %bb.34:
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $fp, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 16
.LBB13_35:                              # %rftfsub.exit
	fld.d	$fa0, $fp, 8
	fld.d	$fa1, $fp, 0
	fsub.d	$fa0, $fa0, $fa1
	alsl.d	$a0, $ra, $fp, 3
	fst.d	$fa0, $a0, -8
	fld.d	$fa0, $fp, 0
	fld.d	$fa1, $fp, 8
	fadd.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 8
	fst.d	$fa0, $fp, 8
	bltu	$ra, $a0, .LBB13_68
# %bb.36:                               # %.lr.ph240.preheader
	addi.d	$a0, $s5, 2
	alsl.d	$a1, $s5, $fp, 3
	addi.d	$a1, $a1, -8
	alsl.d	$a2, $s5, $fp, 4
	addi.d	$a2, $a2, -40
	ori	$a3, $zero, 5
	.p2align	4, , 16
.LBB13_37:                              # %.lr.ph240
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a1, 0
	fsub.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a2, 16
	fld.d	$fa1, $a1, 0
	fneg.d	$fa0, $fa0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, -2
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a2, -32
	bltu	$a3, $a0, .LBB13_37
# %bb.38:                               # %.lr.ph251
	addi.w	$t6, $s7, 0
	move	$a0, $s7
	addi.d	$s7, $s0, 8
	addi.d	$a1, $s8, 8
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	slli.w	$a0, $a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a0, $t6, 3
	slli.d	$t7, $s6, 3
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$t8, $s6, $a0, 3
	add.d	$a0, $s1, $t8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s0, -8
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s8, $s0, 24
	addi.d	$a0, $s0, -16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s2, $zero, 2
	ori	$t3, $zero, 4
	ori	$s3, $zero, 2
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	st.d	$t7, $sp, 56                    # 8-byte Folded Spill
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	b	.LBB13_40
	.p2align	4, , 16
.LBB13_39:                              # %._crit_edge248
                                        #   in Loop: Header=BB13_40 Depth=1
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s0, $a0
	fst.d	$fa0, $s0, 0
	move	$t4, $s6
.LBB13_40:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_42 Depth 2
                                        #     Child Loop BB13_49 Depth 2
                                        #     Child Loop BB13_54 Depth 2
                                        #     Child Loop BB13_65 Depth 2
                                        #     Child Loop BB13_58 Depth 2
	addi.w	$s5, $t4, 0
	bstrpick.d	$s6, $t4, 31, 1
	bltu	$s5, $t3, .LBB13_45
# %bb.41:                               # %.lr.ph.preheader.i219
                                        #   in Loop: Header=BB13_40 Depth=1
	move	$s2, $s8
	div.w	$a0, $t6, $s5
	addi.w	$s4, $s6, 0
	slli.d	$a1, $a0, 3
	sub.d	$a2, $t8, $a1
	alsl.d	$a3, $a0, $t7, 3
	slli.d	$a0, $s4, 3
	slli.d	$s8, $s5, 3
	addi.d	$a4, $s8, -8
	ori	$a5, $zero, 8
	.p2align	4, , 16
.LBB13_42:                              # %.lr.ph.i221
                                        #   Parent Loop BB13_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $s1, $a3
	fldx.d	$fa1, $s1, $a2
	fldx.d	$fa2, $s0, $a5
	fsub.d	$fa3, $fa0, $fa1
	fldx.d	$fa4, $s0, $a4
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa2
	fmul.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa0, $fa4, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fstx.d	$fa0, $s0, $a4
	fstx.d	$fa1, $s0, $a5
	sub.d	$a2, $a2, $a1
	add.d	$a3, $a3, $a1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, -8
	bne	$a0, $a5, .LBB13_42
# %bb.43:                               # %dstsub.exit227
                                        #   in Loop: Header=BB13_40 Depth=1
	fld.d	$fa0, $t5, 0
	fldx.d	$fa1, $s0, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $a0
	bne	$s5, $t3, .LBB13_46
# %bb.44:                               #   in Loop: Header=BB13_40 Depth=1
	vld	$vr0, $s0, 0
	vld	$vr1, $s0, 16
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $s0, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $s0, 16
	move	$s8, $s2
	ori	$s2, $zero, 2
	b	.LBB13_52
	.p2align	4, , 16
.LBB13_45:                              #   in Loop: Header=BB13_40 Depth=1
	addi.w	$s4, $s6, 0
	fld.d	$fa0, $t5, 0
	slli.d	$a0, $s4, 3
	fldx.d	$fa1, $s0, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $a0
	b	.LBB13_52
	.p2align	4, , 16
.LBB13_46:                              #   in Loop: Header=BB13_40 Depth=1
	move	$s7, $t4
	move	$a0, $s5
	move	$a1, $s0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	bne	$s5, $a0, .LBB13_48
# %bb.47:                               #   in Loop: Header=BB13_40 Depth=1
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	move	$s8, $s2
	move	$t4, $s7
	b	.LBB13_51
.LBB13_48:                              # %.lr.ph.preheader.i228
                                        #   in Loop: Header=BB13_40 Depth=1
	addi.w	$a0, $s6, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	div.w	$a1, $a1, $a0
	slli.d	$a0, $a1, 3
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $t5, 3
	sub.d	$a2, $zero, $a0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a3, $a3, $a0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	add.d	$a4, $a4, $s8
	ori	$a5, $zero, 2
	move	$s8, $s2
	move	$a6, $s2
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	move	$t4, $s7
	vldi	$vr7, -928
	.p2align	4, , 16
.LBB13_49:                              # %.lr.ph.i229
                                        #   Parent Loop BB13_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a6, -8
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a6, 0
	fld.d	$fa4, $a4, 0
	fsub.d	$fa0, $fa7, $fa0
	fld.d	$fa5, $a1, 0
	fsub.d	$fa2, $fa1, $fa2
	fadd.d	$fa4, $fa3, $fa4
	fneg.d	$fa6, $fa4
	fmul.d	$fa6, $fa5, $fa6
	fmadd.d	$fa6, $fa0, $fa2, $fa6
	fmul.d	$fa2, $fa5, $fa2
	fmadd.d	$fa0, $fa0, $fa4, $fa2
	fsub.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $a6, -8
	fsub.d	$fa1, $fa3, $fa0
	fst.d	$fa1, $a6, 0
	fld.d	$fa1, $a4, -8
	fld.d	$fa2, $a4, 0
	fadd.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $a4, -8
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a4, 0
	addi.d	$a5, $a5, 2
	add.d	$a1, $a1, $a0
	add.d	$a3, $a3, $a2
	addi.d	$a4, $a4, -16
	addi.d	$a6, $a6, 16
	bltu	$a5, $s4, .LBB13_49
# %bb.50:                               #   in Loop: Header=BB13_40 Depth=1
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
.LBB13_51:                              # %rftfsub.exit234
                                        #   in Loop: Header=BB13_40 Depth=1
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ori	$s2, $zero, 2
	ori	$t3, $zero, 4
.LBB13_52:                              # %rftfsub.exit234
                                        #   in Loop: Header=BB13_40 Depth=1
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $s0, 0
	fsub.d	$fa0, $fa0, $fa1
	sub.w	$a0, $ra, $s3
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $fp, $a0
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s0, 8
	fadd.d	$fa0, $fa0, $fa1
	slli.d	$a1, $s3, 3
	fstx.d	$fa0, $fp, $a1
	add.w	$a0, $s6, $t4
	bgeu	$s2, $s5, .LBB13_69
# %bb.53:                               # %.lr.ph243
                                        #   in Loop: Header=BB13_40 Depth=1
	slli.w	$a3, $s3, 2
	slli.d	$a2, $a3, 3
	alsl.d	$a3, $a3, $fp, 3
	sub.d	$a4, $zero, $a1
	ori	$a5, $zero, 2
	move	$a6, $s8
	.p2align	4, , 16
.LBB13_54:                              #   Parent Loop BB13_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a6, -8
	fld.d	$fa1, $a6, 0
	fneg.d	$fa0, $fa0
	fsub.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a3, $a4
	fld.d	$fa0, $a6, -8
	fld.d	$fa1, $a6, 0
	fsub.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a3, $a1
	addi.d	$a5, $a5, 2
	add.d	$a3, $a3, $a2
	addi.d	$a6, $a6, 16
	bltu	$a5, $s5, .LBB13_54
# %bb.55:                               # %._crit_edge244
                                        #   in Loop: Header=BB13_40 Depth=1
	slli.w	$s3, $s3, 1
	bltu	$s5, $t3, .LBB13_70
# %bb.56:                               # %.lr.ph247.preheader
                                        #   in Loop: Header=BB13_40 Depth=1
	addi.d	$a4, $s4, -1
	ori	$a3, $zero, 1
	slli.d	$a1, $s5, 3
	slli.d	$a2, $s5, 4
	ori	$a5, $zero, 10
	bgeu	$a4, $a5, .LBB13_59
.LBB13_57:                              # %.lr.ph247.preheader408
                                        #   in Loop: Header=BB13_40 Depth=1
	slli.d	$a5, $a3, 3
	alsl.d	$a4, $a3, $s0, 3
	sub.d	$a5, $s0, $a5
	sub.d	$a3, $s4, $a3
	.p2align	4, , 16
.LBB13_58:                              # %.lr.ph247
                                        #   Parent Loop BB13_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $a5, $a2
	fldx.d	$fa1, $a4, $a1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a4, 0
	fldx.d	$fa0, $a5, $a2
	fsub.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a5, $a1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -8
	bnez	$a3, .LBB13_58
	b	.LBB13_39
	.p2align	4, , 16
.LBB13_59:                              # %vector.memcheck356
                                        #   in Loop: Header=BB13_40 Depth=1
	alsl.d	$a5, $s5, $s0, 3
	slli.d	$t0, $s4, 3
	alsl.d	$a7, $s4, $s0, 3
	sub.d	$a6, $a1, $t0
	add.d	$a6, $s7, $a6
	sltu	$t1, $s7, $a5
	sltu	$t2, $a6, $a7
	and	$t1, $t1, $t2
	bnez	$t1, .LBB13_57
# %bb.60:                               # %vector.memcheck356
                                        #   in Loop: Header=BB13_40 Depth=1
	sub.d	$t0, $a2, $t0
	add.d	$t0, $s7, $t0
	alsl.d	$t1, $s5, $s0, 4
	sltu	$t2, $s7, $t1
	sltu	$t3, $t0, $a7
	and	$t2, $t2, $t3
	bnez	$t2, .LBB13_67
# %bb.61:                               # %vector.memcheck356
                                        #   in Loop: Header=BB13_40 Depth=1
	alsl.d	$t2, $s5, $s7, 3
	alsl.d	$t3, $s5, $a7, 3
	sltu	$t4, $s7, $t3
	sltu	$a7, $t2, $a7
	and	$a7, $t4, $a7
	bnez	$a7, .LBB13_67
# %bb.62:                               # %vector.memcheck356
                                        #   in Loop: Header=BB13_40 Depth=1
	sltu	$a7, $a6, $t1
	sltu	$t0, $t0, $a5
	and	$a7, $a7, $t0
	bnez	$a7, .LBB13_67
# %bb.63:                               # %vector.memcheck356
                                        #   in Loop: Header=BB13_40 Depth=1
	sltu	$a6, $a6, $t3
	sltu	$a5, $t2, $a5
	and	$a5, $a6, $a5
	ori	$t3, $zero, 4
	bnez	$a5, .LBB13_57
# %bb.64:                               # %vector.ph387
                                        #   in Loop: Header=BB13_40 Depth=1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	ori	$a3, $a4, 1
	move	$a6, $a5
	move	$a7, $s7
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_65:                              # %vector.body390
                                        #   Parent Loop BB13_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $t0, $a2
	vldx	$vr1, $a7, $a1
	vori.b	$vr2, $vr0, 0
	vshuf4i.d	$vr2, $vr0, 1
	vfadd.d	$vr2, $vr2, $vr1
	vst	$vr2, $a7, 0
	vshuf4i.d	$vr1, $vr0, 1
	vfsub.d	$vr0, $vr0, $vr1
	vstx	$vr0, $t0, $a1
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, -2
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB13_65
# %bb.66:                               # %middle.block400
                                        #   in Loop: Header=BB13_40 Depth=1
	beq	$a4, $a5, .LBB13_39
	b	.LBB13_57
.LBB13_67:                              #   in Loop: Header=BB13_40 Depth=1
	ori	$t3, $zero, 4
	b	.LBB13_57
.LBB13_68:                              # %.preheader.._crit_edge252_crit_edge
	fld.d	$fa0, $s0, 0
	ori	$s3, $zero, 2
	b	.LBB13_71
.LBB13_69:                              # %._crit_edge244.thread
	slli.w	$s3, $s3, 1
.LBB13_70:                              # %._crit_edge252.loopexit
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s0, $a0
	fst.d	$fa0, $s0, 0
.LBB13_71:                              # %._crit_edge252
	slli.d	$a0, $s3, 3
	fstx.d	$fa0, $fp, $a0
.LBB13_72:
	st.d	$zero, $fp, 0
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end13:
	.size	dfst, .Lfunc_end13-dfst
                                        # -- End function
	.globl	cftf1st                         # -- Begin function cftf1st
	.p2align	5
	.type	cftf1st,@function
cftf1st:                                # @cftf1st
# %bb.0:
	srai.d	$a0, $a0, 3
	fld.d	$fa0, $a1, 0
	slli.d	$a3, $a0, 5
	add.d	$a4, $a1, $a3
	fldx.d	$fa1, $a1, $a3
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $a4, 8
	slli.d	$a5, $a0, 2
	alsl.d	$a5, $a0, $a5, 1
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	alsl.d	$a6, $a0, $a1, 4
	slli.d	$a7, $a0, 4
	fldx.d	$fa6, $a1, $a7
	alsl.d	$t0, $a5, $a1, 3
	slli.d	$a5, $a5, 3
	fldx.d	$fa7, $a1, $a5
	fld.d	$ft0, $a6, 8
	fld.d	$ft1, $t0, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a1, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a1, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $a1, $a7
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a6, 8
	fsub.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $a1, $a3
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a4, 8
	fadd.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $a1, $a5
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $t0, 8
	fld.d	$fa0, $a2, 8
	fld.d	$fa2, $a2, 16
	fld.d	$fa1, $a2, 24
	ori	$a4, $zero, 4
	addi.d	$a3, $a0, -2
	bge	$a4, $a0, .LBB14_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -48
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs5, $sp, 0                    # 8-byte Folded Spill
	move	$a4, $zero
	slli.d	$t2, $a0, 1
	slli.d	$t3, $t2, 4
	addi.d	$a5, $t3, 40
	addi.d	$a2, $a2, 32
	alsl.d	$t0, $t2, $t3, 3
	addi.d	$a6, $t0, 40
	slli.d	$t1, $t2, 3
	addi.d	$a7, $t1, 40
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -16
	slli.d	$t2, $t2, 5
	addi.d	$t2, $t2, -32
	addi.d	$t3, $t3, -16
	movgr2fr.d	$fa3, $zero
	ori	$t4, $zero, 2
	vldi	$vr7, -912
	fmov.d	$ft1, $fa3
	vldi	$vr8, -912
	.p2align	4, , 16
.LBB14_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa4, $a2, $a4
	add.d	$t5, $a2, $a4
	fld.d	$fa5, $t5, 8
	fadd.d	$fa6, $ft0, $fa4
	fmul.d	$ft0, $fa2, $fa6
	fld.d	$fa6, $t5, 16
	fadd.d	$ft1, $ft1, $fa5
	fld.d	$ft3, $t5, 24
	fmul.d	$ft2, $fa2, $ft1
	fadd.d	$fa7, $fa7, $fa6
	fmul.d	$fa7, $fa1, $fa7
	fsub.d	$fa3, $fa3, $ft3
	add.d	$t7, $a1, $a4
	fld.d	$ft4, $t7, 16
	add.d	$t5, $a1, $a5
	fld.d	$ft5, $t5, -24
	fld.d	$ft6, $t7, 24
	fld.d	$ft7, $t5, -16
	fmul.d	$ft1, $fa1, $fa3
	fneg.d	$fa3, $ft3
	fadd.d	$ft8, $ft4, $ft5
	fadd.d	$ft9, $ft6, $ft7
	fld.d	$ft10, $t7, 32
	fld.d	$ft11, $t5, -8
	fld.d	$ft12, $t7, 40
	fldx.d	$ft13, $a1, $a5
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft10, $ft11
	fadd.d	$ft7, $ft12, $ft13
	add.d	$t8, $a1, $a7
	fld.d	$ft14, $t8, -24
	add.d	$t6, $a1, $a6
	fld.d	$ft15, $t6, -24
	fld.d	$fs0, $t8, -16
	fld.d	$fs1, $t6, -16
	fsub.d	$ft10, $ft10, $ft11
	fsub.d	$ft11, $ft12, $ft13
	fadd.d	$ft12, $ft14, $ft15
	fadd.d	$ft13, $fs0, $fs1
	fld.d	$fs2, $t8, -8
	fld.d	$fs3, $t6, -8
	fldx.d	$fs4, $a1, $a7
	fldx.d	$fs5, $a1, $a6
	fsub.d	$ft14, $ft14, $ft15
	fsub.d	$ft15, $fs0, $fs1
	fadd.d	$fs0, $fs2, $fs3
	fadd.d	$fs1, $fs4, $fs5
	fsub.d	$fs2, $fs2, $fs3
	fsub.d	$fs3, $fs4, $fs5
	fadd.d	$fs4, $ft8, $ft12
	fst.d	$fs4, $t7, 16
	fadd.d	$fs4, $ft9, $ft13
	fst.d	$fs4, $t7, 24
	fadd.d	$fs4, $ft6, $fs0
	fst.d	$fs4, $t7, 32
	fadd.d	$fs4, $ft7, $fs1
	fst.d	$fs4, $t7, 40
	fsub.d	$ft8, $ft8, $ft12
	fst.d	$ft8, $t8, -24
	fsub.d	$ft8, $ft9, $ft13
	fst.d	$ft8, $t8, -16
	fsub.d	$ft6, $ft6, $fs0
	fst.d	$ft6, $t8, -8
	fsub.d	$ft6, $ft7, $fs1
	fstx.d	$ft6, $a1, $a7
	fsub.d	$ft6, $ft4, $ft15
	fadd.d	$ft7, $ft5, $ft14
	fneg.d	$ft8, $ft7
	fmul.d	$ft8, $ft2, $ft8
	fmadd.d	$ft8, $ft0, $ft6, $ft8
	fst.d	$ft8, $t5, -24
	fmul.d	$ft6, $ft2, $ft6
	fmadd.d	$ft6, $ft0, $ft7, $ft6
	fst.d	$ft6, $t5, -16
	fsub.d	$ft6, $ft10, $fs3
	fadd.d	$ft7, $ft11, $fs2
	fneg.d	$ft8, $ft7
	fmul.d	$ft8, $fa5, $ft8
	fmadd.d	$ft8, $fa4, $ft6, $ft8
	fst.d	$ft8, $t5, -8
	fmul.d	$ft6, $fa5, $ft6
	fmadd.d	$ft6, $fa4, $ft7, $ft6
	fstx.d	$ft6, $a1, $a5
	fadd.d	$ft4, $ft4, $ft15
	fsub.d	$ft5, $ft5, $ft14
	fmul.d	$ft6, $ft1, $ft5
	fmadd.d	$ft6, $fa7, $ft4, $ft6
	fst.d	$ft6, $t6, -24
	fneg.d	$ft4, $ft4
	fmul.d	$ft4, $ft1, $ft4
	fmadd.d	$ft4, $fa7, $ft5, $ft4
	fst.d	$ft4, $t6, -16
	fadd.d	$ft4, $ft10, $fs3
	fsub.d	$ft5, $ft11, $fs2
	fmul.d	$ft6, $ft5, $fa3
	fmadd.d	$ft6, $fa6, $ft4, $ft6
	fst.d	$ft6, $t6, -8
	fmul.d	$ft3, $ft3, $ft4
	fmadd.d	$ft3, $fa6, $ft5, $ft3
	fstx.d	$ft3, $a1, $a6
	add.d	$t7, $a1, $t1
	fldx.d	$ft3, $a1, $t1
	add.d	$t5, $a1, $t0
	fld.d	$ft4, $t5, 16
	fld.d	$ft5, $t7, 8
	fld.d	$ft6, $t5, 24
	fadd.d	$ft7, $ft3, $ft4
	fadd.d	$ft8, $ft5, $ft6
	fld.d	$ft9, $t7, -16
	fldx.d	$ft10, $a1, $t0
	fld.d	$ft11, $t7, -8
	fld.d	$ft12, $t5, 8
	fsub.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft9, $ft10
	fadd.d	$ft6, $ft11, $ft12
	add.d	$t8, $a1, $t3
	fldx.d	$ft13, $a1, $t3
	add.d	$t6, $a1, $t2
	fld.d	$ft14, $t6, 16
	fld.d	$ft15, $t8, 8
	fld.d	$fs0, $t6, 24
	fsub.d	$ft9, $ft9, $ft10
	fsub.d	$ft10, $ft11, $ft12
	fadd.d	$ft11, $ft13, $ft14
	fadd.d	$ft12, $ft15, $fs0
	fld.d	$fs1, $t8, -16
	fldx.d	$fs2, $a1, $t2
	fld.d	$fs3, $t8, -8
	fld.d	$fs4, $t6, 8
	fsub.d	$ft13, $ft13, $ft14
	fsub.d	$ft14, $ft15, $fs0
	fadd.d	$ft15, $fs1, $fs2
	fadd.d	$fs0, $fs3, $fs4
	fsub.d	$fs1, $fs1, $fs2
	fsub.d	$fs2, $fs3, $fs4
	fadd.d	$fs3, $ft7, $ft11
	fstx.d	$fs3, $a1, $t1
	fadd.d	$fs3, $ft8, $ft12
	fst.d	$fs3, $t7, 8
	fadd.d	$fs3, $ft5, $ft15
	fst.d	$fs3, $t7, -16
	fadd.d	$fs3, $ft6, $fs0
	fst.d	$fs3, $t7, -8
	fsub.d	$ft7, $ft7, $ft11
	fstx.d	$ft7, $a1, $t3
	fsub.d	$ft7, $ft8, $ft12
	fst.d	$ft7, $t8, 8
	fsub.d	$ft5, $ft5, $ft15
	fst.d	$ft5, $t8, -16
	fsub.d	$ft5, $ft6, $fs0
	fst.d	$ft5, $t8, -8
	fsub.d	$ft5, $ft3, $ft14
	fadd.d	$ft6, $ft4, $ft13
	fneg.d	$ft7, $ft6
	fmul.d	$ft7, $ft0, $ft7
	fmadd.d	$ft7, $ft2, $ft5, $ft7
	fst.d	$ft7, $t5, 16
	fmul.d	$ft0, $ft0, $ft5
	fmadd.d	$ft0, $ft2, $ft6, $ft0
	fst.d	$ft0, $t5, 24
	fsub.d	$ft0, $ft9, $fs2
	fadd.d	$ft2, $ft10, $fs1
	fneg.d	$ft5, $ft2
	fmul.d	$ft5, $fa4, $ft5
	fmadd.d	$ft5, $fa5, $ft0, $ft5
	fstx.d	$ft5, $a1, $t0
	fmul.d	$ft0, $fa4, $ft0
	fmadd.d	$ft0, $fa5, $ft2, $ft0
	fst.d	$ft0, $t5, 8
	fadd.d	$ft0, $ft3, $ft14
	fsub.d	$ft2, $ft4, $ft13
	fmul.d	$ft3, $fa7, $ft2
	fmadd.d	$ft3, $ft1, $ft0, $ft3
	fst.d	$ft3, $t6, 16
	fneg.d	$ft0, $ft0
	fmul.d	$fa7, $fa7, $ft0
	fmadd.d	$fa7, $ft1, $ft2, $fa7
	fst.d	$fa7, $t6, 24
	fadd.d	$fa7, $ft9, $fs2
	fsub.d	$ft0, $ft10, $fs1
	fmul.d	$ft1, $fa6, $ft0
	fmadd.d	$ft1, $fa3, $fa7, $ft1
	fstx.d	$ft1, $a1, $t2
	fneg.d	$fa7, $fa7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa3, $ft0, $fa7
	fst.d	$fa7, $t6, 8
	addi.d	$t4, $t4, 4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	addi.d	$t2, $t2, -32
	addi.d	$t3, $t3, -32
	fmov.d	$fa7, $fa6
	fmov.d	$ft1, $fa5
	fmov.d	$ft0, $fa4
	bltu	$t4, $a3, .LBB14_2
# %bb.3:
	fld.d	$fs5, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	b	.LBB14_5
.LBB14_4:                               # %.._crit_edge_crit_edge
	movgr2fr.d	$fa5, $zero
	vldi	$vr4, -912
	vldi	$vr6, -912
	fmov.d	$fa3, $fa5
.LBB14_5:                               # %._crit_edge
	fadd.d	$fa4, $fa0, $fa4
	fmul.d	$fa4, $fa2, $fa4
	fadd.d	$fa5, $fa0, $fa5
	fmul.d	$fa5, $fa2, $fa5
	fsub.d	$fa2, $fa6, $fa0
	fmul.d	$fa2, $fa1, $fa2
	fsub.d	$fa3, $fa3, $fa0
	fmul.d	$fa1, $fa1, $fa3
	alsl.d	$a7, $a0, $a0, 1
	alsl.d	$a4, $a0, $a0, 2
	slli.d	$a5, $a0, 3
	slli.d	$t0, $a3, 3
	fldx.d	$fa3, $a1, $t0
	alsl.d	$a2, $a4, $a1, 3
	fld.d	$fa6, $a2, -16
	alsl.d	$a3, $a0, $a1, 3
	fld.d	$fa7, $a3, -8
	fld.d	$ft0, $a2, -8
	sub.w	$t1, $a5, $a0
	slli.d	$a6, $a4, 3
	fadd.d	$ft1, $fa3, $fa6
	fadd.d	$ft2, $fa7, $ft0
	alsl.d	$a4, $a7, $a1, 3
	fld.d	$ft3, $a4, -16
	alsl.d	$a0, $t1, $a1, 3
	fld.d	$ft4, $a0, -16
	fld.d	$ft5, $a4, -8
	fld.d	$ft6, $a0, -8
	fsub.d	$fa3, $fa3, $fa6
	fsub.d	$fa6, $fa7, $ft0
	fadd.d	$fa7, $ft3, $ft4
	fadd.d	$ft0, $ft5, $ft6
	fsub.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft1, $fa7
	fstx.d	$ft5, $a1, $t0
	fadd.d	$ft5, $ft2, $ft0
	fst.d	$ft5, $a3, -8
	fsub.d	$fa7, $ft1, $fa7
	fst.d	$fa7, $a4, -16
	fsub.d	$fa7, $ft2, $ft0
	fst.d	$fa7, $a4, -8
	fsub.d	$fa7, $fa3, $ft4
	fadd.d	$ft0, $fa6, $ft3
	fneg.d	$ft1, $ft0
	fmul.d	$ft1, $fa5, $ft1
	fmadd.d	$ft1, $fa4, $fa7, $ft1
	fst.d	$ft1, $a2, -16
	fmul.d	$fa7, $fa5, $fa7
	fmadd.d	$fa7, $fa4, $ft0, $fa7
	fst.d	$fa7, $a2, -8
	fadd.d	$fa3, $fa3, $ft4
	fsub.d	$fa6, $fa6, $ft3
	fmul.d	$fa7, $fa1, $fa6
	fmadd.d	$fa7, $fa2, $fa3, $fa7
	fst.d	$fa7, $a0, -16
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $fa1, $fa3
	fmadd.d	$fa3, $fa2, $fa6, $fa3
	fst.d	$fa3, $a0, -8
	fldx.d	$fa3, $a1, $a5
	fldx.d	$fa6, $a1, $a6
	fld.d	$fa7, $a3, 8
	fld.d	$ft0, $a2, 8
	slli.d	$a7, $a7, 3
	slli.d	$t0, $t1, 3
	fadd.d	$ft1, $fa3, $fa6
	fadd.d	$ft2, $fa7, $ft0
	fldx.d	$ft3, $a1, $a7
	fldx.d	$ft4, $a1, $t0
	fld.d	$ft5, $a4, 8
	fld.d	$ft6, $a0, 8
	fsub.d	$fa3, $fa3, $fa6
	fsub.d	$fa6, $fa7, $ft0
	fadd.d	$fa7, $ft3, $ft4
	fadd.d	$ft0, $ft5, $ft6
	fsub.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft1, $fa7
	fstx.d	$ft5, $a1, $a5
	fadd.d	$ft5, $ft2, $ft0
	fst.d	$ft5, $a3, 8
	fsub.d	$fa7, $ft1, $fa7
	fstx.d	$fa7, $a1, $a7
	fsub.d	$fa7, $ft2, $ft0
	fst.d	$fa7, $a4, 8
	fsub.d	$fa7, $fa3, $ft4
	fadd.d	$ft0, $fa6, $ft3
	fsub.d	$ft1, $fa7, $ft0
	fmul.d	$ft1, $fa0, $ft1
	fstx.d	$ft1, $a1, $a6
	fadd.d	$fa7, $ft0, $fa7
	fmul.d	$fa7, $fa0, $fa7
	fst.d	$fa7, $a2, 8
	fadd.d	$fa3, $fa3, $ft4
	fsub.d	$fa6, $fa6, $ft3
	fneg.d	$fa0, $fa0
	fadd.d	$fa7, $fa6, $fa3
	fmul.d	$fa7, $fa7, $fa0
	fstx.d	$fa7, $a1, $t0
	fsub.d	$fa3, $fa6, $fa3
	fmul.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a0, 8
	fld.d	$fa0, $a3, 16
	fld.d	$fa3, $a2, 16
	fld.d	$fa6, $a3, 24
	fld.d	$fa7, $a2, 24
	fadd.d	$ft0, $fa0, $fa3
	fadd.d	$ft1, $fa6, $fa7
	fld.d	$ft2, $a4, 16
	fld.d	$ft3, $a0, 16
	fld.d	$ft4, $a4, 24
	fld.d	$ft5, $a0, 24
	fsub.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $fa6, $fa7
	fadd.d	$fa6, $ft2, $ft3
	fadd.d	$fa7, $ft4, $ft5
	fsub.d	$ft2, $ft2, $ft3
	fsub.d	$ft3, $ft4, $ft5
	fadd.d	$ft4, $ft0, $fa6
	fst.d	$ft4, $a3, 16
	fadd.d	$ft4, $ft1, $fa7
	fst.d	$ft4, $a3, 24
	fsub.d	$fa6, $ft0, $fa6
	fst.d	$fa6, $a4, 16
	fsub.d	$fa6, $ft1, $fa7
	fst.d	$fa6, $a4, 24
	fsub.d	$fa6, $fa0, $ft3
	fadd.d	$fa7, $fa3, $ft2
	fneg.d	$ft0, $fa7
	fmul.d	$ft0, $fa4, $ft0
	fmadd.d	$ft0, $fa5, $fa6, $ft0
	fst.d	$ft0, $a2, 16
	fmul.d	$fa4, $fa4, $fa6
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	fst.d	$fa4, $a2, 24
	fadd.d	$fa0, $fa0, $ft3
	fsub.d	$fa3, $fa3, $ft2
	fmul.d	$fa4, $fa2, $fa3
	fmadd.d	$fa4, $fa1, $fa0, $fa4
	fst.d	$fa4, $a0, 16
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fst.d	$fa0, $a0, 24
	ret
.Lfunc_end14:
	.size	cftf1st, .Lfunc_end14-cftf1st
                                        # -- End function
	.globl	cftrec1                         # -- Begin function cftrec1
	.p2align	5
	.type	cftrec1,@function
cftrec1:                                # @cftrec1
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	srai.d	$s6, $a0, 2
	slli.w	$s4, $s6, 1
	sub.w	$a0, $a2, $s4
	alsl.d	$a2, $a0, $a3, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 513
	blt	$s2, $a0, .LBB15_3
# %bb.1:                                # %tailrecurse.preheader
	ori	$s5, $zero, 512
	.p2align	4, , 16
.LBB15_2:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $s6
	addi.w	$s3, $s6, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s3, $s1, 3
	move	$a0, $s3
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(cftrec2)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s4, $s1, 3
	move	$a0, $s3
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	alsl.w	$a0, $s6, $s6, 1
	alsl.d	$s1, $a0, $s1, 3
	bstrpick.d	$s6, $s6, 31, 2
	slli.w	$s4, $s6, 1
	sub.w	$a0, $s0, $s4
	alsl.d	$a2, $a0, $fp, 3
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	blt	$s5, $s3, .LBB15_2
.LBB15_3:                               # %tailrecurse._crit_edge
	addi.w	$a0, $s2, 0
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(cftexp1)
	jr	$t8
.Lfunc_end15:
	.size	cftrec1, .Lfunc_end15-cftrec1
                                        # -- End function
	.globl	cftrec2                         # -- Begin function cftrec2
	.p2align	5
	.type	cftrec2,@function
cftrec2:                                # @cftrec2
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
	move	$s1, $a1
	move	$s2, $a0
	sub.w	$a0, $a2, $a0
	alsl.d	$a2, $a0, $a3, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 513
	blt	$s2, $a0, .LBB16_3
# %bb.1:                                # %tailrecurse.preheader
	ori	$s3, $zero, 512
	.p2align	4, , 16
.LBB16_2:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$s2, $s2, 31, 2
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s2, $s1, 3
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(cftrec2)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s2, $s1, 4
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(cftrec1)
	jirl	$ra, $ra, 0
	alsl.w	$a0, $s2, $s2, 1
	alsl.d	$s1, $a0, $s1, 3
	sub.w	$a0, $s0, $s2
	alsl.d	$a2, $a0, $fp, 3
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	bltu	$s3, $s2, .LBB16_2
.LBB16_3:                               # %tailrecurse._crit_edge
	addi.w	$a0, $s2, 0
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(cftexp2)
	jr	$t8
.Lfunc_end16:
	.size	cftrec2, .Lfunc_end16-cftrec2
                                        # -- End function
	.globl	cftexp1                         # -- Begin function cftexp1
	.p2align	5
	.type	cftexp1,@function
cftexp1:                                # @cftexp1
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$s1, $a0
	srai.d	$fp, $a0, 2
	ori	$a0, $zero, 129
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	bge	$fp, $a0, .LBB17_4
.LBB17_1:                               # %.preheader
	addi.w	$s3, $fp, 0
	srli.d	$a0, $s3, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s7, $a0, $a1, 3
	bge	$s3, $s1, .LBB17_18
# %bb.2:                                # %.lr.ph116
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s0, $a0, $a1, 3
	addi.d	$s5, $s0, -64
	addi.d	$a2, $s0, -256
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	sub.w	$a0, $a0, $fp
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	sub.w	$a0, $zero, $fp
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $fp
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	b	.LBB17_12
	.p2align	4, , 16
.LBB17_3:                               # %._crit_edge109
                                        #   in Loop: Header=BB17_4 Depth=1
	sub.w	$a0, $s1, $fp
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	move	$a0, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	bstrpick.d	$fp, $fp, 31, 2
	ori	$a0, $zero, 515
	bgeu	$a0, $s3, .LBB17_1
.LBB17_4:                               # %.preheader105
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
                                        #       Child Loop BB17_9 Depth 3
	addi.w	$s3, $fp, 0
	bstrpick.d	$a0, $fp, 31, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s4, $a0, $a1, 3
	bge	$s3, $s1, .LBB17_3
# %bb.5:                                # %.lr.ph108
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.w	$a0, $a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s6, $a0, $a1, 3
	sub.w	$a0, $zero, $fp
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $fp
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_6:                               # %.._crit_edge_crit_edge
                                        #   in Loop: Header=BB17_7 Depth=2
	slli.w	$a3, $a0, 2
	move	$a0, $a3
	bge	$a3, $s1, .LBB17_3
.LBB17_7:                               #   Parent Loop BB17_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_9 Depth 3
	sub.w	$a1, $a0, $fp
	bge	$a1, $s1, .LBB17_6
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB17_7 Depth=2
	slli.w	$a1, $a0, 1
	slli.w	$a3, $a0, 2
	addi.w	$a0, $a0, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$s7, $a2, $a0
	slli.d	$s8, $a0, 3
	alsl.d	$a1, $a1, $s8, 3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	slli.d	$s0, $a3, 3
	slli.d	$s2, $a0, 4
	move	$s5, $s1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_9:                               #   Parent Loop BB17_4 Depth=1
                                        #     Parent Loop BB17_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s1, $s8
	move	$a0, $s3
	move	$a2, $s4
	move	$fp, $a3
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	add.d	$a1, $s1, $s2
	move	$a0, $s3
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $s1, $a0
	move	$a0, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	move	$a3, $fp
	add.d	$s7, $s7, $fp
	add.d	$s1, $s1, $s0
	blt	$s7, $s5, .LBB17_9
# %bb.10:                               #   in Loop: Header=BB17_7 Depth=2
	move	$s1, $s5
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a0, $a3
	blt	$a3, $s1, .LBB17_7
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_11:                              # %.._crit_edge114_crit_edge
                                        #   in Loop: Header=BB17_12 Depth=1
	slli.w	$a3, $a0, 2
	move	$a0, $a3
	bge	$a3, $s1, .LBB17_18
.LBB17_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_15 Depth 2
	sub.w	$a1, $a0, $fp
	bge	$a1, $s1, .LBB17_11
# %bb.13:                               # %.lr.ph113
                                        #   in Loop: Header=BB17_12 Depth=1
	slli.w	$a1, $a0, 1
	slli.w	$a3, $a0, 2
	addi.w	$a0, $a0, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$s2, $a2, $a0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$fp, $a1, $a2, 3
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	b	.LBB17_15
	.p2align	4, , 16
.LBB17_14:                              #   in Loop: Header=BB17_15 Depth=2
	fld.d	$fa0, $s8, 0
	fld.d	$fa1, $s8, 64
	fld.d	$fa2, $s8, 8
	fld.d	$fa3, $s8, 72
	fld.d	$fa4, $s0, -120
	fadd.d	$fa5, $fa0, $fa1
	fadd.d	$fa6, $fa2, $fa3
	fld.d	$fa7, $s8, 32
	fld.d	$ft0, $s8, 96
	fld.d	$ft1, $s8, 40
	fld.d	$ft2, $s8, 104
	fsub.d	$ft3, $fa0, $fa1
	fsub.d	$ft4, $fa2, $fa3
	fadd.d	$fa0, $fa7, $ft0
	fadd.d	$ft5, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa5, $fa0
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa1, $fa5, $fa0
	fsub.d	$fa0, $fa6, $ft5
	fsub.d	$fa5, $ft3, $ft0
	fadd.d	$fa6, $ft4, $fa7
	fld.d	$ft1, $s8, 16
	fld.d	$ft2, $s8, 80
	fld.d	$ft5, $s8, 24
	fld.d	$ft6, $s8, 88
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa7, $ft4, $fa7
	fadd.d	$ft3, $ft1, $ft2
	fadd.d	$ft4, $ft5, $ft6
	fld.d	$ft7, $s8, 48
	fld.d	$ft8, $s8, 112
	fld.d	$ft9, $s8, 56
	fld.d	$ft10, $s8, 120
	fsub.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $ft3, $ft5
	fadd.d	$ft10, $ft4, $ft6
	fsub.d	$ft3, $ft3, $ft5
	fsub.d	$ft4, $ft4, $ft6
	fsub.d	$ft5, $ft1, $ft8
	fadd.d	$ft6, $ft2, $ft7
	fadd.d	$ft1, $ft1, $ft8
	fsub.d	$ft2, $ft2, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa4, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa4, $ft5
	fsub.d	$ft6, $ft1, $ft2
	fmul.d	$ft6, $fa4, $ft6
	fadd.d	$ft1, $ft2, $ft1
	fmul.d	$fa4, $fa4, $ft1
	fadd.d	$ft1, $fa5, $ft7
	fst.d	$ft1, $s8, 64
	fadd.d	$ft1, $fa6, $ft5
	fst.d	$ft1, $s8, 72
	fsub.d	$fa5, $fa5, $ft7
	fst.d	$fa5, $s8, 80
	fsub.d	$fa5, $fa6, $ft5
	fst.d	$fa5, $s8, 88
	fsub.d	$fa5, $ft0, $fa4
	fst.d	$fa5, $s8, 96
	fadd.d	$fa5, $fa7, $ft6
	fst.d	$fa5, $s8, 104
	fadd.d	$fa4, $ft0, $fa4
	fst.d	$fa4, $s8, 112
	fsub.d	$fa4, $fa7, $ft6
	fst.d	$fa4, $s8, 120
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s8, 0
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s8, 8
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s8, 16
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s8, 24
	fsub.d	$fa2, $fa1, $ft4
	fst.d	$fa2, $s8, 32
	fadd.d	$fa2, $fa0, $ft3
	fst.d	$fa2, $s8, 40
	fadd.d	$fa1, $fa1, $ft4
	fst.d	$fa1, $s8, 48
	fsub.d	$fa0, $fa0, $ft3
	fst.d	$fa0, $s8, 56
	fld.d	$fa5, $s0, -120
	fld.d	$fa0, $s8, 128
	fld.d	$fa1, $s8, 200
	fld.d	$fa2, $s8, 136
	fld.d	$fa7, $s8, 192
	fld.d	$fa6, $s0, -96
	fld.d	$ft0, $s0, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s8, 160
	fld.d	$ft2, $s8, 232
	fld.d	$ft3, $s8, 168
	fld.d	$ft4, $s8, 224
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s8, 144
	fld.d	$ft4, $s8, 216
	fld.d	$ft6, $s8, 152
	fld.d	$ft7, $s8, 208
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s8, 176
	fld.d	$ft7, $s8, 248
	fld.d	$ft9, $s8, 184
	fld.d	$ft10, $s8, 240
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s8, 128
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s8, 136
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s8, 144
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s8, 152
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s8, 160
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s8, 168
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s8, 176
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s8, 184
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s8, 192
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s8, 200
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s8, 208
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s8, 216
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s8, 224
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s8, 232
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s8, 240
	fsub.d	$fa0, $fa1, $fa2
	fld.d	$fa1, $s8, 256
	fld.d	$fa2, $s8, 320
	fld.d	$fa3, $s8, 264
	fld.d	$fa4, $s8, 328
	fst.d	$fa0, $s8, 248
	fld.d	$fa5, $s0, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s8, 288
	fld.d	$ft0, $s8, 352
	fld.d	$ft1, $s8, 296
	fld.d	$ft2, $s8, 360
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s8, 272
	fld.d	$ft4, $s8, 336
	fld.d	$ft5, $s8, 280
	fld.d	$ft6, $s8, 344
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s8, 304
	fld.d	$ft8, $s8, 368
	fld.d	$ft9, $s8, 312
	fld.d	$ft10, $s8, 376
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s8, 320
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s8, 328
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s8, 336
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s8, 344
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s8, 352
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s8, 360
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s8, 368
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s8, 376
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s8, 256
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s8, 264
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s8, 272
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s8, 280
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s8, 288
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s8, 296
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s8, 304
	fsub.d	$fa0, $fa0, $fa7
	fld.d	$fa1, $s8, 384
	fld.d	$fa2, $s8, 448
	fld.d	$fa3, $s8, 392
	fld.d	$fa4, $s8, 456
	fst.d	$fa0, $s8, 312
	fld.d	$fa5, $s0, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s8, 416
	fld.d	$ft0, $s8, 480
	fld.d	$ft1, $s8, 424
	fld.d	$ft2, $s8, 488
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s8, 400
	fld.d	$ft4, $s8, 464
	fld.d	$ft5, $s8, 408
	fld.d	$ft6, $s8, 472
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s8, 432
	fld.d	$ft8, $s8, 496
	fld.d	$ft9, $s8, 440
	fld.d	$ft10, $s8, 504
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s8, 448
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s8, 456
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s8, 464
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s8, 472
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s8, 480
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s8, 488
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s8, 496
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s8, 504
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s8, 384
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s8, 392
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s8, 400
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s8, 408
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s8, 416
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s8, 424
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s8, 432
	fsub.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $s8, 440
	move	$s6, $fp
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$s8, $s2, $fp, 3
	slli.d	$s4, $s2, 3
	move	$a0, $s3
	move	$a1, $s8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	fldx.d	$fa0, $fp, $s4
	fld.d	$fa1, $s8, 64
	fld.d	$fa2, $s8, 8
	fld.d	$fa3, $s8, 72
	fld.d	$fa4, $s0, -120
	fadd.d	$fa5, $fa0, $fa1
	fadd.d	$fa6, $fa2, $fa3
	fld.d	$fa7, $s8, 32
	fld.d	$ft0, $s8, 96
	fld.d	$ft1, $s8, 40
	fld.d	$ft2, $s8, 104
	fsub.d	$ft3, $fa0, $fa1
	fsub.d	$ft4, $fa2, $fa3
	fadd.d	$fa0, $fa7, $ft0
	fadd.d	$ft5, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa5, $fa0
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa1, $fa5, $fa0
	fsub.d	$fa0, $fa6, $ft5
	fsub.d	$fa5, $ft3, $ft0
	fadd.d	$fa6, $ft4, $fa7
	fld.d	$ft1, $s8, 16
	fld.d	$ft2, $s8, 80
	fld.d	$ft5, $s8, 24
	fld.d	$ft6, $s8, 88
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa7, $ft4, $fa7
	fadd.d	$ft3, $ft1, $ft2
	fadd.d	$ft4, $ft5, $ft6
	fld.d	$ft7, $s8, 48
	fld.d	$ft8, $s8, 112
	fld.d	$ft9, $s8, 56
	fld.d	$ft10, $s8, 120
	fsub.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $ft3, $ft5
	fadd.d	$ft10, $ft4, $ft6
	fsub.d	$ft3, $ft3, $ft5
	fsub.d	$ft4, $ft4, $ft6
	fsub.d	$ft5, $ft1, $ft8
	fadd.d	$ft6, $ft2, $ft7
	fadd.d	$ft1, $ft1, $ft8
	fsub.d	$ft2, $ft2, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa4, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa4, $ft5
	fsub.d	$ft6, $ft1, $ft2
	fmul.d	$ft6, $fa4, $ft6
	fadd.d	$ft1, $ft2, $ft1
	fmul.d	$fa4, $fa4, $ft1
	fadd.d	$ft1, $fa5, $ft7
	fst.d	$ft1, $s8, 64
	fadd.d	$ft1, $fa6, $ft5
	fst.d	$ft1, $s8, 72
	fsub.d	$fa5, $fa5, $ft7
	fst.d	$fa5, $s8, 80
	fsub.d	$fa5, $fa6, $ft5
	fst.d	$fa5, $s8, 88
	fsub.d	$fa5, $ft0, $fa4
	fst.d	$fa5, $s8, 96
	fadd.d	$fa5, $fa7, $ft6
	fst.d	$fa5, $s8, 104
	fadd.d	$fa4, $ft0, $fa4
	fst.d	$fa4, $s8, 112
	fsub.d	$fa4, $fa7, $ft6
	fst.d	$fa4, $s8, 120
	fadd.d	$fa4, $fa3, $ft9
	fstx.d	$fa4, $fp, $s4
	move	$fp, $s6
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s8, 8
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s8, 16
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s8, 24
	fsub.d	$fa2, $fa1, $ft4
	fst.d	$fa2, $s8, 32
	fadd.d	$fa2, $fa0, $ft3
	fst.d	$fa2, $s8, 40
	fadd.d	$fa1, $fa1, $ft4
	fst.d	$fa1, $s8, 48
	fsub.d	$fa0, $fa0, $ft3
	fst.d	$fa0, $s8, 56
	fld.d	$fa5, $s0, -120
	fld.d	$fa0, $s8, 128
	fld.d	$fa1, $s8, 200
	fld.d	$fa2, $s8, 136
	fld.d	$fa7, $s8, 192
	fld.d	$fa6, $s0, -96
	fld.d	$ft0, $s0, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s8, 160
	fld.d	$ft2, $s8, 232
	fld.d	$ft3, $s8, 168
	fld.d	$ft4, $s8, 224
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s8, 144
	fld.d	$ft4, $s8, 216
	fld.d	$ft6, $s8, 152
	fld.d	$ft7, $s8, 208
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s8, 176
	fld.d	$ft7, $s8, 248
	fld.d	$ft9, $s8, 184
	fld.d	$ft10, $s8, 240
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s8, 128
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s8, 136
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s8, 144
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s8, 152
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s8, 160
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s8, 168
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s8, 176
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s8, 184
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s8, 192
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s8, 200
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s8, 208
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s8, 216
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s8, 224
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s8, 232
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s8, 240
	fsub.d	$fa0, $fa1, $fa2
	fld.d	$fa1, $s8, 256
	fld.d	$fa2, $s8, 320
	fld.d	$fa3, $s8, 264
	fld.d	$fa4, $s8, 328
	fst.d	$fa0, $s8, 248
	fld.d	$fa5, $s0, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s8, 288
	fld.d	$ft0, $s8, 352
	fld.d	$ft1, $s8, 296
	fld.d	$ft2, $s8, 360
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s8, 272
	fld.d	$ft4, $s8, 336
	fld.d	$ft5, $s8, 280
	fld.d	$ft6, $s8, 344
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s8, 304
	fld.d	$ft8, $s8, 368
	fld.d	$ft9, $s8, 312
	fld.d	$ft10, $s8, 376
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s8, 320
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s8, 328
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s8, 336
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s8, 344
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s8, 352
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s8, 360
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s8, 368
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s8, 376
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s8, 256
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s8, 264
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s8, 272
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s8, 280
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s8, 288
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s8, 296
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s8, 304
	fsub.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $s8, 312
	fld.d	$fa5, $s0, -120
	fld.d	$fa0, $s8, 384
	fld.d	$fa1, $s8, 456
	fld.d	$fa2, $s8, 392
	fld.d	$fa7, $s8, 448
	fld.d	$fa6, $s0, -96
	fld.d	$ft0, $s0, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s8, 416
	fld.d	$ft2, $s8, 488
	fld.d	$ft3, $s8, 424
	fld.d	$ft4, $s8, 480
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s8, 400
	fld.d	$ft4, $s8, 472
	fld.d	$ft6, $s8, 408
	fld.d	$ft7, $s8, 464
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s8, 432
	fld.d	$ft7, $s8, 504
	fld.d	$ft9, $s8, 440
	fld.d	$ft10, $s8, 496
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s8, 384
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s8, 392
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s8, 400
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s8, 408
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s8, 416
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s8, 424
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s8, 432
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s8, 440
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s8, 448
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s8, 456
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s8, 464
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s8, 472
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s8, 480
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s8, 488
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s8, 496
	fsub.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $s8, 504
	alsl.d	$s8, $s2, $s6, 3
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	fldx.d	$fa0, $s6, $s4
	fld.d	$fa1, $s8, 64
	fld.d	$fa2, $s8, 8
	fld.d	$fa3, $s8, 72
	fld.d	$fa4, $s0, -120
	fadd.d	$fa5, $fa0, $fa1
	fadd.d	$fa6, $fa2, $fa3
	fld.d	$fa7, $s8, 32
	fld.d	$ft0, $s8, 96
	fld.d	$ft1, $s8, 40
	fld.d	$ft2, $s8, 104
	fsub.d	$ft3, $fa0, $fa1
	fsub.d	$ft4, $fa2, $fa3
	fadd.d	$fa0, $fa7, $ft0
	fadd.d	$ft5, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa5, $fa0
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa1, $fa5, $fa0
	fsub.d	$fa0, $fa6, $ft5
	fsub.d	$fa5, $ft3, $ft0
	fadd.d	$fa6, $ft4, $fa7
	fld.d	$ft1, $s8, 16
	fld.d	$ft2, $s8, 80
	fld.d	$ft5, $s8, 24
	fld.d	$ft6, $s8, 88
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa7, $ft4, $fa7
	fadd.d	$ft3, $ft1, $ft2
	fadd.d	$ft4, $ft5, $ft6
	fld.d	$ft7, $s8, 48
	fld.d	$ft8, $s8, 112
	fld.d	$ft9, $s8, 56
	fld.d	$ft10, $s8, 120
	fsub.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $ft3, $ft5
	fadd.d	$ft10, $ft4, $ft6
	fsub.d	$ft3, $ft3, $ft5
	fsub.d	$ft4, $ft4, $ft6
	fsub.d	$ft5, $ft1, $ft8
	fadd.d	$ft6, $ft2, $ft7
	fadd.d	$ft1, $ft1, $ft8
	fsub.d	$ft2, $ft2, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa4, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa4, $ft5
	fsub.d	$ft6, $ft1, $ft2
	fmul.d	$ft6, $fa4, $ft6
	fadd.d	$ft1, $ft2, $ft1
	fmul.d	$fa4, $fa4, $ft1
	fadd.d	$ft1, $fa5, $ft7
	fst.d	$ft1, $s8, 64
	fadd.d	$ft1, $fa6, $ft5
	fst.d	$ft1, $s8, 72
	fsub.d	$fa5, $fa5, $ft7
	fst.d	$fa5, $s8, 80
	fsub.d	$fa5, $fa6, $ft5
	fst.d	$fa5, $s8, 88
	fsub.d	$fa5, $ft0, $fa4
	fst.d	$fa5, $s8, 96
	fadd.d	$fa5, $fa7, $ft6
	fst.d	$fa5, $s8, 104
	fadd.d	$fa4, $ft0, $fa4
	fst.d	$fa4, $s8, 112
	fsub.d	$fa4, $fa7, $ft6
	fst.d	$fa4, $s8, 120
	fadd.d	$fa4, $fa3, $ft9
	fstx.d	$fa4, $s6, $s4
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s8, 8
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s8, 16
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s8, 24
	fsub.d	$fa2, $fa1, $ft4
	fst.d	$fa2, $s8, 32
	fadd.d	$fa2, $fa0, $ft3
	fst.d	$fa2, $s8, 40
	fadd.d	$fa1, $fa1, $ft4
	fst.d	$fa1, $s8, 48
	fsub.d	$fa0, $fa0, $ft3
	fst.d	$fa0, $s8, 56
	fld.d	$fa5, $s0, -120
	fld.d	$fa0, $s8, 128
	fld.d	$fa1, $s8, 200
	fld.d	$fa2, $s8, 136
	fld.d	$fa7, $s8, 192
	fld.d	$fa6, $s0, -96
	fld.d	$ft0, $s0, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s8, 160
	fld.d	$ft2, $s8, 232
	fld.d	$ft3, $s8, 168
	fld.d	$ft4, $s8, 224
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s8, 144
	fld.d	$ft4, $s8, 216
	fld.d	$ft6, $s8, 152
	fld.d	$ft7, $s8, 208
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s8, 176
	fld.d	$ft7, $s8, 248
	fld.d	$ft9, $s8, 184
	fld.d	$ft10, $s8, 240
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s8, 128
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s8, 136
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s8, 144
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s8, 152
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s8, 160
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s8, 168
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s8, 176
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s8, 184
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s8, 192
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s8, 200
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s8, 208
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s8, 216
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s8, 224
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s8, 232
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s8, 240
	fsub.d	$fa0, $fa1, $fa2
	fld.d	$fa1, $s8, 256
	fld.d	$fa2, $s8, 320
	fld.d	$fa3, $s8, 264
	fld.d	$fa4, $s8, 328
	fst.d	$fa0, $s8, 248
	fld.d	$fa5, $s0, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s8, 288
	fld.d	$ft0, $s8, 352
	fld.d	$ft1, $s8, 296
	fld.d	$ft2, $s8, 360
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s8, 272
	fld.d	$ft4, $s8, 336
	fld.d	$ft5, $s8, 280
	fld.d	$ft6, $s8, 344
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s8, 304
	fld.d	$ft8, $s8, 368
	fld.d	$ft9, $s8, 312
	fld.d	$ft10, $s8, 376
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s8, 320
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s8, 328
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s8, 336
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s8, 344
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s8, 352
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s8, 360
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s8, 368
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s8, 376
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s8, 256
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s8, 264
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s8, 272
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s8, 280
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s8, 288
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s8, 296
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s8, 304
	fsub.d	$fa0, $fa0, $fa7
	fld.d	$fa1, $s8, 384
	fld.d	$fa2, $s8, 448
	fld.d	$fa3, $s8, 392
	fld.d	$fa4, $s8, 456
	fst.d	$fa0, $s8, 312
	fld.d	$fa5, $s0, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s8, 416
	fld.d	$ft0, $s8, 480
	fld.d	$ft1, $s8, 424
	fld.d	$ft2, $s8, 488
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s8, 400
	fld.d	$ft4, $s8, 464
	fld.d	$ft5, $s8, 408
	fld.d	$ft6, $s8, 472
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s8, 432
	fld.d	$ft8, $s8, 496
	fld.d	$ft9, $s8, 440
	fld.d	$ft10, $s8, 504
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s8, 448
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s8, 456
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s8, 464
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s8, 472
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s8, 480
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s8, 488
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s8, 496
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s8, 504
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s8, 384
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s8, 392
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s8, 400
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s8, 408
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s8, 416
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s8, 424
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s8, 432
	fsub.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $s8, 440
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$s2, $s2, $a3
	bge	$s2, $s1, .LBB17_17
.LBB17_15:                              #   Parent Loop BB17_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$s8, $s2, $a0, 3
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 128
	bne	$s3, $a0, .LBB17_14
# %bb.16:                               #   in Loop: Header=BB17_15 Depth=2
	move	$a0, $s8
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 256
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 512
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 768
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$s8, $s2, $a0, 3
	move	$a0, $s3
	move	$a1, $s8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 256
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 512
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 768
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	alsl.d	$s8, $s2, $fp, 3
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 256
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 512
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 768
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$s2, $s2, $a3
	blt	$s2, $s1, .LBB17_15
.LBB17_17:                              #   in Loop: Header=BB17_12 Depth=1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a0, $a3
	blt	$a3, $s1, .LBB17_12
.LBB17_18:                              # %._crit_edge117
	sub.w	$a0, $s1, $fp
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$s1, $a0, $a1, 3
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(cftfx41)
	jr	$t8
.Lfunc_end17:
	.size	cftexp1, .Lfunc_end17-cftexp1
                                        # -- End function
	.globl	cftfx41                         # -- Begin function cftfx41
	.p2align	5
	.type	cftfx41,@function
cftfx41:                                # @cftfx41
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ori	$a1, $zero, 128
	alsl.d	$s1, $a2, $a3, 3
	bne	$a0, $a1, .LBB18_2
# %bb.1:
	addi.d	$s0, $s1, -64
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 256
	addi.d	$a1, $s1, -256
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 512
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 768
	move	$a1, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(cftf161)
	jr	$t8
.LBB18_2:
	addi.d	$s0, $s1, -128
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf081)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 128
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf082)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 256
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf081)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 384
	move	$a1, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(cftf081)
	jr	$t8
.Lfunc_end18:
	.size	cftfx41, .Lfunc_end18-cftfx41
                                        # -- End function
	.globl	bitrv2                          # -- Begin function bitrv2
	.p2align	5
	.type	bitrv2,@function
bitrv2:                                 # @bitrv2
# %bb.0:
	ori	$a3, $zero, 9
	st.w	$zero, $a1, 0
	blt	$a0, $a3, .LBB19_11
# %bb.1:                                # %.lr.ph216.preheader
	ori	$a3, $zero, 1
	ori	$a4, $zero, 8
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               # %._crit_edge
                                        #   in Loop: Header=BB19_3 Depth=1
	slli.w	$a6, $a5, 4
	addi.w	$a7, $a0, 0
	slli.w	$a3, $a5, 1
	bge	$a6, $a7, .LBB19_13
.LBB19_3:                               # %.lr.ph216
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_7 Depth 2
                                        #     Child Loop BB19_10 Depth 2
	move	$a5, $a3
	bstrpick.d	$a0, $a0, 31, 1
	blez	$a3, .LBB19_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	slli.d	$a3, $a5, 2
	bgeu	$a5, $a4, .LBB19_6
# %bb.5:                                #   in Loop: Header=BB19_3 Depth=1
	move	$a6, $zero
	b	.LBB19_9
	.p2align	4, , 16
.LBB19_6:                               # %vector.ph
                                        #   in Loop: Header=BB19_3 Depth=1
	bstrpick.d	$a6, $a5, 30, 3
	slli.d	$a6, $a6, 3
	vreplgr2vr.w	$vr0, $a0
	move	$a7, $a1
	move	$t0, $a6
	.p2align	4, , 16
.LBB19_7:                               # %vector.body
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a7, 0
	vld	$vr2, $a7, 16
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	add.d	$t1, $a7, $a3
	vstx	$vr1, $a7, $a3
	vst	$vr2, $t1, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB19_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB19_3 Depth=1
	beq	$a6, $a5, .LBB19_2
.LBB19_9:                               # %.lr.ph.preheader269
                                        #   in Loop: Header=BB19_3 Depth=1
	alsl.d	$a7, $a6, $a1, 2
	sub.d	$a6, $a5, $a6
	.p2align	4, , 16
.LBB19_10:                              # %.lr.ph
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	add.d	$t0, $t0, $a0
	stx.w	$t0, $a7, $a3
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB19_10
	b	.LBB19_2
.LBB19_11:                              # %._crit_edge217.thread
	ori	$a3, $zero, 8
	bne	$a0, $a3, .LBB19_26
# %bb.12:
	ori	$a0, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB19_15
.LBB19_13:                              # %._crit_edge217
	slli.d	$a0, $a5, 2
	bne	$a6, $a7, .LBB19_21
# %bb.14:                               # %.preheader208
	blez	$a3, .LBB19_26
.LBB19_15:                              # %.preheader.lr.ph
	move	$a4, $zero
	slli.d	$a5, $a3, 2
	bstrpick.d	$a6, $a0, 31, 0
	slli.d	$a7, $a6, 4
	alsl.d	$t0, $a6, $a7, 3
	b	.LBB19_18
	.p2align	4, , 16
.LBB19_16:                              #   in Loop: Header=BB19_18 Depth=1
	move	$t1, $zero
.LBB19_17:                              # %._crit_edge224
                                        #   in Loop: Header=BB19_18 Depth=1
	add.d	$t2, $a3, $a4
	alsl.w	$t3, $t2, $t1, 1
	alsl.d	$t1, $t2, $t1, 1
	add.w	$t1, $t1, $a0
	slli.d	$t1, $t1, 3
	vldx	$vr0, $a2, $t1
	slli.d	$t2, $t3, 3
	vldx	$vr1, $a2, $t2
	vstx	$vr0, $a2, $t2
	addi.d	$a4, $a4, 1
	vstx	$vr1, $a2, $t1
	beq	$a4, $a3, .LBB19_26
.LBB19_18:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_20 Depth 2
	beqz	$a4, .LBB19_16
# %bb.19:                               # %.lr.ph223
                                        #   in Loop: Header=BB19_18 Depth=1
	slli.d	$t1, $a4, 2
	ldx.w	$t1, $a1, $t1
	slli.d	$t2, $a4, 1
	alsl.d	$t3, $t1, $a2, 3
	add.d	$t4, $a6, $t1
	alsl.d	$t4, $t4, $a2, 3
	move	$t5, $a4
	move	$t6, $a1
	.p2align	4, , 16
.LBB19_20:                              #   Parent Loop BB19_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	add.w	$t7, $t7, $t2
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vld	$vr1, $t3, 0
	vst	$vr0, $t3, 0
	vstx	$vr1, $a2, $t8
	add.w	$t7, $t7, $a5
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vld	$vr1, $t4, 0
	vst	$vr0, $t4, 0
	vstx	$vr1, $a2, $t8
	sub.w	$t7, $t7, $a0
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vldx	$vr1, $t3, $a7
	vstx	$vr0, $t3, $a7
	vstx	$vr1, $a2, $t8
	add.w	$t7, $t7, $a5
	slli.d	$t7, $t7, 3
	vldx	$vr0, $a2, $t7
	vldx	$vr1, $t3, $t0
	vstx	$vr0, $t3, $t0
	vstx	$vr1, $a2, $t7
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 4
	bnez	$t5, .LBB19_20
	b	.LBB19_17
.LBB19_21:                              # %.preheader210
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB19_26
# %bb.22:                               # %.preheader209.preheader
	addi.w	$a4, $a0, 0
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB19_23:                              # %.preheader209
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_24 Depth 2
	slli.d	$a6, $a5, 2
	ldx.w	$a7, $a1, $a6
	slli.d	$a6, $a5, 1
	alsl.d	$a7, $a7, $a2, 3
	move	$t0, $a5
	move	$t1, $a1
	.p2align	4, , 16
.LBB19_24:                              #   Parent Loop BB19_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	add.w	$t2, $t2, $a6
	slli.d	$t3, $t2, 3
	vldx	$vr0, $a2, $t3
	vld	$vr1, $a7, 0
	vst	$vr0, $a7, 0
	vstx	$vr1, $a2, $t3
	add.w	$t2, $t2, $a0
	slli.d	$t2, $t2, 3
	vldx	$vr0, $a2, $t2
	vldx	$vr1, $a7, $a4
	vstx	$vr0, $a7, $a4
	vstx	$vr1, $a2, $t2
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB19_24
# %bb.25:                               #   in Loop: Header=BB19_23 Depth=1
	addi.d	$a5, $a5, 1
	bne	$a5, $a3, .LBB19_23
.LBB19_26:                              # %.loopexit
	ret
.Lfunc_end19:
	.size	bitrv2, .Lfunc_end19-bitrv2
                                        # -- End function
	.globl	cftf161                         # -- Begin function cftf161
	.p2align	5
	.type	cftf161,@function
cftf161:                                # @cftf161
# %bb.0:
	addi.d	$sp, $sp, -144
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 80                   # 8-byte Folded Spill
	fld.d	$ft8, $a1, 8
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a0, 0
	fld.d	$fa3, $a0, 128
	fld.d	$fa4, $a0, 8
	fld.d	$fa5, $a0, 136
	fmul.d	$ft5, $ft8, $fa1
	fadd.d	$ft6, $fa1, $ft5
	fadd.d	$fa6, $fa2, $fa3
	fadd.d	$fa7, $fa4, $fa5
	fld.d	$fa1, $a0, 64
	fld.d	$ft0, $a0, 192
	fld.d	$ft1, $a0, 72
	fld.d	$ft2, $a0, 200
	fsub.d	$ft3, $fa2, $fa3
	fsub.d	$fa5, $fa4, $fa5
	fadd.d	$fa3, $fa1, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$ft7, $fa1, $ft0
	fsub.d	$ft1, $ft1, $ft2
	fadd.d	$fa0, $fa6, $fa3
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	fadd.d	$fa0, $fa7, $ft4
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fsub.d	$fa0, $fa6, $fa3
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fsub.d	$fa0, $fa7, $ft4
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	fsub.d	$fa0, $ft3, $ft1
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fadd.d	$fa0, $fa5, $ft7
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fld.d	$fa6, $a0, 16
	fld.d	$ft2, $a0, 144
	fld.d	$ft9, $a0, 24
	fld.d	$ft10, $a0, 152
	fadd.d	$ft4, $ft3, $ft1
	fsub.d	$ft3, $fa5, $ft7
	fadd.d	$ft1, $fa6, $ft2
	fadd.d	$fa3, $ft9, $ft10
	fld.d	$fa5, $a0, 80
	fld.d	$ft7, $a0, 208
	fld.d	$ft11, $a0, 88
	fld.d	$ft12, $a0, 216
	fsub.d	$ft13, $fa6, $ft2
	fsub.d	$ft10, $ft9, $ft10
	fadd.d	$fa6, $fa5, $ft7
	fadd.d	$ft9, $ft11, $ft12
	fsub.d	$ft7, $fa5, $ft7
	fsub.d	$ft11, $ft11, $ft12
	fadd.d	$fa0, $ft1, $fa6
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fsub.d	$fa0, $ft1, $fa6
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fsub.d	$ft2, $ft13, $ft11
	fadd.d	$ft12, $ft10, $ft7
	fneg.d	$ft1, $ft12
	fmul.d	$ft1, $ft5, $ft1
	fmadd.d	$ft1, $ft6, $ft2, $ft1
	fmul.d	$ft2, $ft5, $ft2
	fmadd.d	$ft2, $ft6, $ft12, $ft2
	fadd.d	$ft11, $ft13, $ft11
	fsub.d	$ft12, $ft10, $ft7
	fneg.d	$ft7, $ft12
	fmul.d	$ft7, $ft6, $ft7
	fmadd.d	$ft7, $ft5, $ft11, $ft7
	fmul.d	$ft11, $ft6, $ft11
	fld.d	$ft10, $a0, 48
	fld.d	$fs1, $a0, 176
	fmadd.d	$ft14, $ft5, $ft12, $ft11
	fld.d	$fs2, $a0, 56
	fld.d	$fs3, $a0, 184
	fsub.d	$ft11, $ft10, $fs1
	fld.d	$fs4, $a0, 112
	fld.d	$fs5, $a0, 240
	fsub.d	$ft12, $fs2, $fs3
	fld.d	$fs6, $a0, 120
	fld.d	$fs7, $a0, 248
	fsub.d	$ft13, $fs4, $fs5
	fadd.d	$fs0, $ft12, $ft13
	fneg.d	$ft15, $fs0
	fmul.d	$ft15, $ft6, $ft15
	fsub.d	$fa1, $fs6, $fs7
	fsub.d	$fa0, $ft11, $fa1
	fmadd.d	$ft15, $ft5, $fa0, $ft15
	fmul.d	$fa0, $ft6, $fa0
	fmadd.d	$fs0, $ft5, $fs0, $fa0
	fadd.d	$fa0, $ft11, $fa1
	fsub.d	$fa1, $ft12, $ft13
	fneg.d	$ft11, $fa1
	fmul.d	$ft11, $ft5, $ft11
	fmadd.d	$fa6, $ft6, $fa0, $ft11
	fmul.d	$fa0, $ft5, $fa0
	fadd.d	$ft5, $fa3, $ft9
	fmadd.d	$fa5, $ft6, $fa1, $fa0
	fld.d	$fa0, $a0, 32
	fld.d	$ft6, $a0, 160
	fld.d	$ft12, $a0, 40
	fld.d	$ft13, $a0, 168
	fsub.d	$ft11, $fa3, $ft9
	fadd.d	$fa3, $fa0, $ft6
	fsub.d	$ft9, $fa0, $ft6
	fadd.d	$fa4, $ft12, $ft13
	fld.d	$ft6, $a0, 96
	fld.d	$fa0, $a0, 224
	fld.d	$fa2, $a0, 104
	fld.d	$fa1, $a0, 232
	fsub.d	$ft12, $ft12, $ft13
	fadd.d	$ft13, $ft6, $fa0
	fsub.d	$ft6, $ft6, $fa0
	fadd.d	$fa0, $fa2, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fadd.d	$fa7, $fa3, $ft13
	fsub.d	$fa3, $fa3, $ft13
	fadd.d	$ft0, $fa4, $fa0
	fsub.d	$ft13, $fa4, $fa0
	fsub.d	$fa0, $ft9, $fa1
	fadd.d	$fa4, $ft12, $ft6
	fsub.d	$fa2, $fa0, $fa4
	fadd.d	$fa0, $fa4, $fa0
	fadd.d	$fa1, $ft9, $fa1
	fsub.d	$fa4, $ft12, $ft6
	fadd.d	$ft6, $fa4, $fa1
	fsub.d	$fa1, $fa4, $fa1
	fadd.d	$fa4, $ft10, $fs1
	fadd.d	$ft12, $fs2, $fs3
	fadd.d	$ft10, $fs4, $fs5
	fadd.d	$fs2, $fs6, $fs7
	fadd.d	$ft9, $fa4, $ft10
	fsub.d	$fs1, $fa4, $ft10
	fadd.d	$ft10, $ft12, $fs2
	fsub.d	$fa4, $ft12, $fs2
	fmul.d	$ft6, $ft8, $ft6
	fsub.d	$ft12, $ft4, $ft6
	fadd.d	$ft4, $ft4, $ft6
	fmul.d	$fa1, $ft8, $fa1
	fsub.d	$ft6, $ft3, $fa1
	fadd.d	$fa1, $ft3, $fa1
	fsub.d	$ft3, $ft7, $fa6
	fadd.d	$fa6, $ft7, $fa6
	fsub.d	$ft7, $ft14, $fa5
	fadd.d	$fa5, $ft14, $fa5
	fadd.d	$ft14, $ft12, $ft3
	fst.d	$ft14, $a0, 192
	fadd.d	$ft14, $ft6, $ft7
	fst.d	$ft14, $a0, 200
	fsub.d	$ft3, $ft12, $ft3
	fst.d	$ft3, $a0, 208
	fsub.d	$ft3, $ft6, $ft7
	fst.d	$ft3, $a0, 216
	fsub.d	$ft3, $ft4, $fa5
	fst.d	$ft3, $a0, 224
	fadd.d	$ft3, $fa1, $fa6
	fst.d	$ft3, $a0, 232
	fadd.d	$fa5, $ft4, $fa5
	fst.d	$fa5, $a0, 240
	fsub.d	$fa1, $fa1, $fa6
	fmul.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $ft8, $fa0
	fst.d	$fa1, $a0, 248
	fld.d	$fa5, $sp, 24                   # 8-byte Folded Reload
	fadd.d	$fa1, $fa5, $fa2
	fsub.d	$fa2, $fa5, $fa2
	fld.d	$fa6, $sp, 32                   # 8-byte Folded Reload
	fadd.d	$fa5, $fa6, $fa0
	fsub.d	$fa0, $fa6, $fa0
	fadd.d	$fa6, $ft1, $ft15
	fsub.d	$ft1, $ft1, $ft15
	fadd.d	$ft3, $ft2, $fs0
	fsub.d	$ft2, $ft2, $fs0
	fadd.d	$ft4, $fa1, $fa6
	fst.d	$ft4, $a0, 128
	fadd.d	$ft4, $fa5, $ft3
	fst.d	$ft4, $a0, 136
	fsub.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $a0, 144
	fsub.d	$fa1, $fa5, $ft3
	fst.d	$fa1, $a0, 152
	fsub.d	$fa1, $fa2, $ft2
	fst.d	$fa1, $a0, 160
	fadd.d	$fa1, $fa0, $ft1
	fst.d	$fa1, $a0, 168
	fadd.d	$fa1, $fa2, $ft2
	fst.d	$fa1, $a0, 176
	fsub.d	$fa0, $fa0, $ft1
	fst.d	$fa0, $a0, 184
	fld.d	$fa5, $sp, 16                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa5, $fa4
	fadd.d	$fa1, $ft11, $fs1
	fsub.d	$fa2, $fa0, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa1, $fa5, $fa4
	fsub.d	$fa4, $ft11, $fs1
	fsub.d	$fa5, $fa1, $fa4
	fadd.d	$fa1, $fa4, $fa1
	fmul.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $ft8, $fa0
	fmul.d	$fa4, $ft8, $fa5
	fmul.d	$fa1, $ft8, $fa1
	fld.d	$fa6, $sp, 48                   # 8-byte Folded Reload
	fsub.d	$fa5, $fa6, $ft13
	fadd.d	$fa6, $fa6, $ft13
	fld.d	$ft2, $sp, 56                   # 8-byte Folded Reload
	fadd.d	$ft1, $ft2, $fa3
	fsub.d	$fa3, $ft2, $fa3
	fadd.d	$ft2, $fa5, $fa2
	fst.d	$ft2, $a0, 64
	fadd.d	$ft2, $ft1, $fa0
	fst.d	$ft2, $a0, 72
	fsub.d	$fa2, $fa5, $fa2
	fst.d	$fa2, $a0, 80
	fsub.d	$fa0, $ft1, $fa0
	fst.d	$fa0, $a0, 88
	fsub.d	$fa0, $fa6, $fa1
	fst.d	$fa0, $a0, 96
	fadd.d	$fa0, $fa3, $fa4
	fst.d	$fa0, $a0, 104
	fadd.d	$fa0, $fa6, $fa1
	fst.d	$fa0, $a0, 112
	fsub.d	$fa0, $fa3, $fa4
	fst.d	$fa0, $a0, 120
	fld.d	$fa1, $sp, 64                   # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa7
	fsub.d	$fa1, $fa1, $fa7
	fld.d	$fa3, $sp, 72                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa3, $ft0
	fsub.d	$fa3, $fa3, $ft0
	fld.d	$fa5, $sp, 40                   # 8-byte Folded Reload
	fadd.d	$fa4, $fa5, $ft9
	fsub.d	$fa5, $fa5, $ft9
	fadd.d	$fa6, $ft5, $ft10
	fsub.d	$fa7, $ft5, $ft10
	fadd.d	$ft0, $fa0, $fa4
	fst.d	$ft0, $a0, 0
	fadd.d	$ft0, $fa2, $fa6
	fst.d	$ft0, $a0, 8
	fsub.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a0, 16
	fsub.d	$fa0, $fa2, $fa6
	fst.d	$fa0, $a0, 24
	fsub.d	$fa0, $fa1, $fa7
	fst.d	$fa0, $a0, 32
	fadd.d	$fa0, $fa3, $fa5
	fst.d	$fa0, $a0, 40
	fadd.d	$fa0, $fa1, $fa7
	fst.d	$fa0, $a0, 48
	fsub.d	$fa0, $fa3, $fa5
	fst.d	$fa0, $a0, 56
	fld.d	$fs7, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end20:
	.size	cftf161, .Lfunc_end20-cftf161
                                        # -- End function
	.globl	bitrv216                        # -- Begin function bitrv216
	.p2align	5
	.type	bitrv216,@function
bitrv216:                               # @bitrv216
# %bb.0:
	vld	$vr0, $a0, 64
	vld	$vr1, $a0, 32
	vld	$vr2, $a0, 128
	vld	$vr3, $a0, 192
	vst	$vr0, $a0, 32
	vst	$vr1, $a0, 64
	vld	$vr0, $a0, 160
	vld	$vr1, $a0, 16
	vst	$vr2, $a0, 16
	vld	$vr2, $a0, 80
	vld	$vr4, $a0, 224
	vst	$vr1, $a0, 128
	vst	$vr0, $a0, 80
	vst	$vr2, $a0, 160
	vld	$vr0, $a0, 48
	vld	$vr1, $a0, 208
	vst	$vr3, $a0, 48
	vld	$vr2, $a0, 176
	vst	$vr0, $a0, 192
	vld	$vr0, $a0, 112
	vst	$vr1, $a0, 176
	vst	$vr2, $a0, 208
	vst	$vr4, $a0, 112
	vst	$vr0, $a0, 224
	ret
.Lfunc_end21:
	.size	bitrv216, .Lfunc_end21-bitrv216
                                        # -- End function
	.globl	cftf081                         # -- Begin function cftf081
	.p2align	5
	.type	cftf081,@function
cftf081:                                # @cftf081
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, 64
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a0, 72
	fld.d	$fa4, $a1, 8
	fadd.d	$fa5, $fa0, $fa1
	fadd.d	$fa6, $fa2, $fa3
	fld.d	$fa7, $a0, 32
	fld.d	$ft0, $a0, 96
	fld.d	$ft1, $a0, 40
	fld.d	$ft2, $a0, 104
	fsub.d	$ft3, $fa0, $fa1
	fsub.d	$ft4, $fa2, $fa3
	fadd.d	$fa0, $fa7, $ft0
	fadd.d	$ft5, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa5, $fa0
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa1, $fa5, $fa0
	fsub.d	$fa0, $fa6, $ft5
	fsub.d	$fa5, $ft3, $ft0
	fadd.d	$fa6, $ft4, $fa7
	fld.d	$ft1, $a0, 16
	fld.d	$ft2, $a0, 80
	fld.d	$ft5, $a0, 24
	fld.d	$ft6, $a0, 88
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa7, $ft4, $fa7
	fadd.d	$ft3, $ft1, $ft2
	fadd.d	$ft4, $ft5, $ft6
	fld.d	$ft7, $a0, 48
	fld.d	$ft8, $a0, 112
	fld.d	$ft9, $a0, 56
	fld.d	$ft10, $a0, 120
	fsub.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $ft3, $ft5
	fadd.d	$ft10, $ft4, $ft6
	fsub.d	$ft3, $ft3, $ft5
	fsub.d	$ft4, $ft4, $ft6
	fsub.d	$ft5, $ft1, $ft8
	fadd.d	$ft6, $ft2, $ft7
	fadd.d	$ft1, $ft1, $ft8
	fsub.d	$ft2, $ft2, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa4, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa4, $ft5
	fsub.d	$ft6, $ft1, $ft2
	fmul.d	$ft6, $fa4, $ft6
	fadd.d	$ft1, $ft2, $ft1
	fmul.d	$fa4, $fa4, $ft1
	fadd.d	$ft1, $fa5, $ft7
	fst.d	$ft1, $a0, 64
	fadd.d	$ft1, $fa6, $ft5
	fst.d	$ft1, $a0, 72
	fsub.d	$fa5, $fa5, $ft7
	fst.d	$fa5, $a0, 80
	fsub.d	$fa5, $fa6, $ft5
	fst.d	$fa5, $a0, 88
	fsub.d	$fa5, $ft0, $fa4
	fst.d	$fa5, $a0, 96
	fadd.d	$fa5, $fa7, $ft6
	fst.d	$fa5, $a0, 104
	fadd.d	$fa4, $ft0, $fa4
	fst.d	$fa4, $a0, 112
	fsub.d	$fa4, $fa7, $ft6
	fst.d	$fa4, $a0, 120
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $a0, 0
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $a0, 8
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $a0, 16
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $a0, 24
	fsub.d	$fa2, $fa1, $ft4
	fst.d	$fa2, $a0, 32
	fadd.d	$fa2, $fa0, $ft3
	fst.d	$fa2, $a0, 40
	fadd.d	$fa1, $fa1, $ft4
	fst.d	$fa1, $a0, 48
	fsub.d	$fa0, $fa0, $ft3
	fst.d	$fa0, $a0, 56
	ret
.Lfunc_end22:
	.size	cftf081, .Lfunc_end22-cftf081
                                        # -- End function
	.globl	bitrv208                        # -- Begin function bitrv208
	.p2align	5
	.type	bitrv208,@function
bitrv208:                               # @bitrv208
# %bb.0:
	vld	$vr0, $a0, 64
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 96
	vld	$vr3, $a0, 48
	vst	$vr0, $a0, 16
	vst	$vr1, $a0, 64
	vst	$vr2, $a0, 48
	vst	$vr3, $a0, 96
	ret
.Lfunc_end23:
	.size	bitrv208, .Lfunc_end23-bitrv208
                                        # -- End function
	.globl	cftf040                         # -- Begin function cftf040
	.p2align	5
	.type	cftf040,@function
cftf040:                                # @cftf040
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, 32
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a0, 40
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	fld.d	$fa6, $a0, 16
	fld.d	$fa7, $a0, 48
	fld.d	$ft0, $a0, 24
	fld.d	$ft1, $a0, 56
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a0, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a0, 8
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $a0, 32
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a0, 40
	fsub.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $a0, 16
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a0, 24
	fadd.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $a0, 48
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $a0, 56
	ret
.Lfunc_end24:
	.size	cftf040, .Lfunc_end24-cftf040
                                        # -- End function
	.globl	cftx020                         # -- Begin function cftx020
	.p2align	5
	.type	cftx020,@function
cftx020:                                # @cftx020
# %bb.0:
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $a0, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 16
	ret
.Lfunc_end25:
	.size	cftx020, .Lfunc_end25-cftx020
                                        # -- End function
	.globl	cftb1st                         # -- Begin function cftb1st
	.p2align	5
	.type	cftb1st,@function
cftb1st:                                # @cftb1st
# %bb.0:
	srai.d	$a0, $a0, 3
	slli.d	$a3, $a0, 2
	fld.d	$fa0, $a1, 0
	slli.d	$a4, $a0, 5
	add.d	$a5, $a1, $a4
	fldx.d	$fa1, $a1, $a4
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $a5, 8
	alsl.d	$a3, $a0, $a3, 1
	fadd.d	$fa4, $fa0, $fa1
	fneg.d	$fa5, $fa2
	fsub.d	$fa5, $fa5, $fa3
	alsl.d	$a6, $a0, $a1, 4
	slli.d	$a7, $a0, 4
	fldx.d	$fa6, $a1, $a7
	alsl.d	$t0, $a3, $a1, 3
	slli.d	$a3, $a3, 3
	fldx.d	$fa7, $a1, $a3
	fld.d	$ft0, $a6, 8
	fld.d	$ft1, $t0, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa3, $fa2
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a1, 0
	fsub.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a1, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $a1, $a7
	fadd.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a6, 8
	fadd.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $a1, $a4
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a5, 8
	fsub.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $a1, $a3
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $t0, 8
	fld.d	$fa0, $a2, 8
	fld.d	$fa2, $a2, 16
	fld.d	$fa1, $a2, 24
	ori	$a4, $zero, 4
	addi.d	$a3, $a0, -2
	bge	$a4, $a0, .LBB26_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -48
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs5, $sp, 0                    # 8-byte Folded Spill
	move	$a4, $zero
	slli.d	$t2, $a0, 1
	slli.d	$t3, $t2, 4
	addi.d	$a5, $t3, 40
	addi.d	$a2, $a2, 32
	alsl.d	$t0, $t2, $t3, 3
	addi.d	$a6, $t0, 40
	slli.d	$t1, $t2, 3
	addi.d	$a7, $t1, 40
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -16
	slli.d	$t2, $t2, 5
	addi.d	$t2, $t2, -32
	addi.d	$t3, $t3, -16
	movgr2fr.d	$fa3, $zero
	ori	$t4, $zero, 2
	vldi	$vr7, -912
	fmov.d	$ft0, $fa3
	vldi	$vr9, -912
	.p2align	4, , 16
.LBB26_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa4, $a2, $a4
	add.d	$t5, $a2, $a4
	fld.d	$fa5, $t5, 8
	fadd.d	$fa6, $ft1, $fa4
	fmul.d	$ft1, $fa2, $fa6
	fld.d	$fa6, $t5, 16
	fadd.d	$ft0, $ft0, $fa5
	fld.d	$ft3, $t5, 24
	fmul.d	$ft2, $fa2, $ft0
	fadd.d	$fa7, $fa7, $fa6
	fmul.d	$fa7, $fa1, $fa7
	fsub.d	$fa3, $fa3, $ft3
	fmul.d	$ft0, $fa1, $fa3
	add.d	$t7, $a1, $a4
	fld.d	$ft4, $t7, 16
	add.d	$t5, $a1, $a5
	fld.d	$ft5, $t5, -24
	fld.d	$ft6, $t7, 24
	fld.d	$ft7, $t5, -16
	fneg.d	$fa3, $ft3
	fadd.d	$ft8, $ft4, $ft5
	fneg.d	$ft9, $ft6
	fsub.d	$ft9, $ft9, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fld.d	$ft10, $t7, 32
	fld.d	$ft11, $t5, -8
	fld.d	$ft12, $t7, 40
	fldx.d	$ft13, $a1, $a5
	fsub.d	$ft5, $ft7, $ft6
	fadd.d	$ft6, $ft10, $ft11
	fneg.d	$ft7, $ft12
	fsub.d	$ft7, $ft7, $ft13
	add.d	$t8, $a1, $a7
	fld.d	$ft14, $t8, -24
	add.d	$t6, $a1, $a6
	fld.d	$ft15, $t6, -24
	fld.d	$fs0, $t8, -16
	fld.d	$fs1, $t6, -16
	fsub.d	$ft10, $ft10, $ft11
	fsub.d	$ft11, $ft13, $ft12
	fadd.d	$ft12, $ft14, $ft15
	fadd.d	$ft13, $fs0, $fs1
	fld.d	$fs2, $t8, -8
	fld.d	$fs3, $t6, -8
	fldx.d	$fs4, $a1, $a7
	fldx.d	$fs5, $a1, $a6
	fsub.d	$ft14, $ft14, $ft15
	fsub.d	$ft15, $fs0, $fs1
	fadd.d	$fs0, $fs2, $fs3
	fadd.d	$fs1, $fs4, $fs5
	fsub.d	$fs2, $fs2, $fs3
	fsub.d	$fs3, $fs4, $fs5
	fadd.d	$fs4, $ft8, $ft12
	fst.d	$fs4, $t7, 16
	fsub.d	$fs4, $ft9, $ft13
	fst.d	$fs4, $t7, 24
	fadd.d	$fs4, $ft6, $fs0
	fst.d	$fs4, $t7, 32
	fsub.d	$fs4, $ft7, $fs1
	fst.d	$fs4, $t7, 40
	fsub.d	$ft8, $ft8, $ft12
	fst.d	$ft8, $t8, -24
	fadd.d	$ft8, $ft9, $ft13
	fst.d	$ft8, $t8, -16
	fsub.d	$ft6, $ft6, $fs0
	fst.d	$ft6, $t8, -8
	fadd.d	$ft6, $ft7, $fs1
	fstx.d	$ft6, $a1, $a7
	fadd.d	$ft6, $ft4, $ft15
	fadd.d	$ft7, $ft5, $ft14
	fneg.d	$ft8, $ft7
	fmul.d	$ft8, $ft2, $ft8
	fmadd.d	$ft8, $ft1, $ft6, $ft8
	fst.d	$ft8, $t5, -24
	fmul.d	$ft6, $ft2, $ft6
	fmadd.d	$ft6, $ft1, $ft7, $ft6
	fst.d	$ft6, $t5, -16
	fadd.d	$ft6, $ft10, $fs3
	fadd.d	$ft7, $ft11, $fs2
	fneg.d	$ft8, $ft7
	fmul.d	$ft8, $fa5, $ft8
	fmadd.d	$ft8, $fa4, $ft6, $ft8
	fst.d	$ft8, $t5, -8
	fmul.d	$ft6, $fa5, $ft6
	fmadd.d	$ft6, $fa4, $ft7, $ft6
	fstx.d	$ft6, $a1, $a5
	fsub.d	$ft4, $ft4, $ft15
	fsub.d	$ft5, $ft5, $ft14
	fmul.d	$ft6, $ft0, $ft5
	fmadd.d	$ft6, $fa7, $ft4, $ft6
	fst.d	$ft6, $t6, -24
	fneg.d	$ft4, $ft4
	fmul.d	$ft4, $ft0, $ft4
	fmadd.d	$ft4, $fa7, $ft5, $ft4
	fst.d	$ft4, $t6, -16
	fsub.d	$ft4, $ft10, $fs3
	fsub.d	$ft5, $ft11, $fs2
	fmul.d	$ft6, $ft5, $fa3
	fmadd.d	$ft6, $fa6, $ft4, $ft6
	fst.d	$ft6, $t6, -8
	fmul.d	$ft3, $ft3, $ft4
	fmadd.d	$ft3, $fa6, $ft5, $ft3
	fstx.d	$ft3, $a1, $a6
	add.d	$t7, $a1, $t1
	fldx.d	$ft3, $a1, $t1
	add.d	$t5, $a1, $t0
	fld.d	$ft4, $t5, 16
	fld.d	$ft5, $t7, 8
	fld.d	$ft6, $t5, 24
	fadd.d	$ft7, $ft3, $ft4
	fneg.d	$ft8, $ft5
	fsub.d	$ft8, $ft8, $ft6
	fsub.d	$ft3, $ft3, $ft4
	fld.d	$ft9, $t7, -16
	fldx.d	$ft10, $a1, $t0
	fld.d	$ft11, $t7, -8
	fld.d	$ft12, $t5, 8
	fsub.d	$ft4, $ft6, $ft5
	fadd.d	$ft5, $ft9, $ft10
	fneg.d	$ft6, $ft11
	fsub.d	$ft6, $ft6, $ft12
	add.d	$t8, $a1, $t3
	fldx.d	$ft13, $a1, $t3
	add.d	$t6, $a1, $t2
	fld.d	$ft14, $t6, 16
	fld.d	$ft15, $t8, 8
	fld.d	$fs0, $t6, 24
	fsub.d	$ft9, $ft9, $ft10
	fsub.d	$ft10, $ft12, $ft11
	fadd.d	$ft11, $ft13, $ft14
	fadd.d	$ft12, $ft15, $fs0
	fld.d	$fs1, $t8, -16
	fldx.d	$fs2, $a1, $t2
	fld.d	$fs3, $t8, -8
	fld.d	$fs4, $t6, 8
	fsub.d	$ft13, $ft13, $ft14
	fsub.d	$ft14, $ft15, $fs0
	fadd.d	$ft15, $fs1, $fs2
	fadd.d	$fs0, $fs3, $fs4
	fsub.d	$fs1, $fs1, $fs2
	fsub.d	$fs2, $fs3, $fs4
	fadd.d	$fs3, $ft7, $ft11
	fstx.d	$fs3, $a1, $t1
	fsub.d	$fs3, $ft8, $ft12
	fst.d	$fs3, $t7, 8
	fadd.d	$fs3, $ft5, $ft15
	fst.d	$fs3, $t7, -16
	fsub.d	$fs3, $ft6, $fs0
	fst.d	$fs3, $t7, -8
	fsub.d	$ft7, $ft7, $ft11
	fstx.d	$ft7, $a1, $t3
	fadd.d	$ft7, $ft8, $ft12
	fst.d	$ft7, $t8, 8
	fsub.d	$ft5, $ft5, $ft15
	fst.d	$ft5, $t8, -16
	fadd.d	$ft5, $ft6, $fs0
	fst.d	$ft5, $t8, -8
	fadd.d	$ft5, $ft3, $ft14
	fadd.d	$ft6, $ft4, $ft13
	fneg.d	$ft7, $ft6
	fmul.d	$ft7, $ft1, $ft7
	fmadd.d	$ft7, $ft2, $ft5, $ft7
	fst.d	$ft7, $t5, 16
	fmul.d	$ft1, $ft1, $ft5
	fmadd.d	$ft1, $ft2, $ft6, $ft1
	fst.d	$ft1, $t5, 24
	fadd.d	$ft1, $ft9, $fs2
	fadd.d	$ft2, $ft10, $fs1
	fneg.d	$ft5, $ft2
	fmul.d	$ft5, $fa4, $ft5
	fmadd.d	$ft5, $fa5, $ft1, $ft5
	fstx.d	$ft5, $a1, $t0
	fmul.d	$ft1, $fa4, $ft1
	fmadd.d	$ft1, $fa5, $ft2, $ft1
	fst.d	$ft1, $t5, 8
	fsub.d	$ft1, $ft3, $ft14
	fsub.d	$ft2, $ft4, $ft13
	fmul.d	$ft3, $fa7, $ft2
	fmadd.d	$ft3, $ft0, $ft1, $ft3
	fst.d	$ft3, $t6, 16
	fneg.d	$ft1, $ft1
	fmul.d	$fa7, $fa7, $ft1
	fmadd.d	$fa7, $ft0, $ft2, $fa7
	fst.d	$fa7, $t6, 24
	fsub.d	$fa7, $ft9, $fs2
	fsub.d	$ft0, $ft10, $fs1
	fmul.d	$ft1, $fa6, $ft0
	fmadd.d	$ft1, $fa3, $fa7, $ft1
	fstx.d	$ft1, $a1, $t2
	fneg.d	$fa7, $fa7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa3, $ft0, $fa7
	fst.d	$fa7, $t6, 8
	addi.d	$t4, $t4, 4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	addi.d	$t2, $t2, -32
	addi.d	$t3, $t3, -32
	fmov.d	$fa7, $fa6
	fmov.d	$ft0, $fa5
	fmov.d	$ft1, $fa4
	bltu	$t4, $a3, .LBB26_2
# %bb.3:
	fld.d	$fs5, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	b	.LBB26_5
.LBB26_4:                               # %.._crit_edge_crit_edge
	movgr2fr.d	$fa5, $zero
	vldi	$vr4, -912
	vldi	$vr6, -912
	fmov.d	$fa3, $fa5
.LBB26_5:                               # %._crit_edge
	fadd.d	$fa4, $fa0, $fa4
	fmul.d	$fa4, $fa2, $fa4
	fadd.d	$fa5, $fa0, $fa5
	fmul.d	$fa5, $fa2, $fa5
	fsub.d	$fa2, $fa6, $fa0
	fmul.d	$fa2, $fa1, $fa2
	fsub.d	$fa3, $fa3, $fa0
	fmul.d	$fa1, $fa1, $fa3
	alsl.d	$t0, $a0, $a0, 1
	alsl.d	$a4, $a0, $a0, 2
	slli.d	$a5, $a0, 3
	sub.w	$a7, $a5, $a0
	slli.d	$t1, $a3, 3
	fldx.d	$fa3, $a1, $t1
	alsl.d	$a2, $a4, $a1, 3
	fld.d	$fa6, $a2, -16
	alsl.d	$a3, $a0, $a1, 3
	fld.d	$fa7, $a3, -8
	fld.d	$ft0, $a2, -8
	slli.d	$a6, $a4, 3
	fadd.d	$ft1, $fa3, $fa6
	fneg.d	$ft2, $fa7
	fsub.d	$ft2, $ft2, $ft0
	fsub.d	$fa3, $fa3, $fa6
	alsl.d	$a4, $t0, $a1, 3
	fld.d	$fa6, $a4, -16
	alsl.d	$a0, $a7, $a1, 3
	fld.d	$ft3, $a0, -16
	fld.d	$ft4, $a4, -8
	fld.d	$ft5, $a0, -8
	fsub.d	$fa7, $ft0, $fa7
	slli.d	$t0, $t0, 3
	fadd.d	$ft0, $fa6, $ft3
	fadd.d	$ft6, $ft4, $ft5
	fsub.d	$fa6, $fa6, $ft3
	fsub.d	$ft3, $ft4, $ft5
	fadd.d	$ft4, $ft1, $ft0
	fstx.d	$ft4, $a1, $t1
	fsub.d	$ft4, $ft2, $ft6
	fst.d	$ft4, $a3, -8
	fsub.d	$ft0, $ft1, $ft0
	fst.d	$ft0, $a4, -16
	fadd.d	$ft0, $ft2, $ft6
	fst.d	$ft0, $a4, -8
	fadd.d	$ft0, $fa3, $ft3
	fadd.d	$ft1, $fa7, $fa6
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa5, $ft2
	fmadd.d	$ft2, $fa4, $ft0, $ft2
	fst.d	$ft2, $a2, -16
	fmul.d	$ft0, $fa5, $ft0
	fmadd.d	$ft0, $fa4, $ft1, $ft0
	fst.d	$ft0, $a2, -8
	fsub.d	$fa3, $fa3, $ft3
	fsub.d	$fa6, $fa7, $fa6
	fmul.d	$fa7, $fa1, $fa6
	fmadd.d	$fa7, $fa2, $fa3, $fa7
	fst.d	$fa7, $a0, -16
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $fa1, $fa3
	fmadd.d	$fa3, $fa2, $fa6, $fa3
	fst.d	$fa3, $a0, -8
	fldx.d	$fa3, $a1, $a5
	fldx.d	$fa6, $a1, $a6
	fld.d	$fa7, $a3, 8
	fld.d	$ft0, $a2, 8
	slli.d	$a7, $a7, 3
	fadd.d	$ft1, $fa3, $fa6
	fneg.d	$ft2, $fa7
	fsub.d	$ft2, $ft2, $ft0
	fldx.d	$ft3, $a1, $t0
	fldx.d	$ft4, $a1, $a7
	fld.d	$ft5, $a4, 8
	fld.d	$ft6, $a0, 8
	fsub.d	$fa3, $fa3, $fa6
	fsub.d	$fa6, $ft0, $fa7
	fadd.d	$fa7, $ft3, $ft4
	fadd.d	$ft0, $ft5, $ft6
	fsub.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft1, $fa7
	fstx.d	$ft5, $a1, $a5
	fsub.d	$ft5, $ft2, $ft0
	fst.d	$ft5, $a3, 8
	fsub.d	$fa7, $ft1, $fa7
	fstx.d	$fa7, $a1, $t0
	fadd.d	$fa7, $ft2, $ft0
	fst.d	$fa7, $a4, 8
	fadd.d	$fa7, $fa3, $ft4
	fadd.d	$ft0, $fa6, $ft3
	fsub.d	$ft1, $fa7, $ft0
	fmul.d	$ft1, $fa0, $ft1
	fstx.d	$ft1, $a1, $a6
	fadd.d	$fa7, $ft0, $fa7
	fmul.d	$fa7, $fa0, $fa7
	fst.d	$fa7, $a2, 8
	fsub.d	$fa3, $fa3, $ft4
	fsub.d	$fa6, $fa6, $ft3
	fneg.d	$fa0, $fa0
	fadd.d	$fa7, $fa6, $fa3
	fmul.d	$fa7, $fa7, $fa0
	fstx.d	$fa7, $a1, $a7
	fsub.d	$fa3, $fa6, $fa3
	fmul.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a0, 8
	fld.d	$fa0, $a3, 16
	fld.d	$fa3, $a2, 16
	fld.d	$fa6, $a3, 24
	fld.d	$fa7, $a2, 24
	fadd.d	$ft0, $fa0, $fa3
	fneg.d	$ft1, $fa6
	fsub.d	$ft1, $ft1, $fa7
	fld.d	$ft2, $a4, 16
	fld.d	$ft3, $a0, 16
	fld.d	$ft4, $a4, 24
	fld.d	$ft5, $a0, 24
	fsub.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $fa7, $fa6
	fadd.d	$fa6, $ft2, $ft3
	fadd.d	$fa7, $ft4, $ft5
	fsub.d	$ft2, $ft2, $ft3
	fsub.d	$ft3, $ft4, $ft5
	fadd.d	$ft4, $ft0, $fa6
	fst.d	$ft4, $a3, 16
	fsub.d	$ft4, $ft1, $fa7
	fst.d	$ft4, $a3, 24
	fsub.d	$fa6, $ft0, $fa6
	fst.d	$fa6, $a4, 16
	fadd.d	$fa6, $ft1, $fa7
	fst.d	$fa6, $a4, 24
	fadd.d	$fa6, $fa0, $ft3
	fadd.d	$fa7, $fa3, $ft2
	fneg.d	$ft0, $fa7
	fmul.d	$ft0, $fa4, $ft0
	fmadd.d	$ft0, $fa5, $fa6, $ft0
	fst.d	$ft0, $a2, 16
	fmul.d	$fa4, $fa4, $fa6
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	fst.d	$fa4, $a2, 24
	fsub.d	$fa0, $fa0, $ft3
	fsub.d	$fa3, $fa3, $ft2
	fmul.d	$fa4, $fa2, $fa3
	fmadd.d	$fa4, $fa1, $fa0, $fa4
	fst.d	$fa4, $a0, 16
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fst.d	$fa0, $a0, 24
	ret
.Lfunc_end26:
	.size	cftb1st, .Lfunc_end26-cftb1st
                                        # -- End function
	.globl	bitrv2conj                      # -- Begin function bitrv2conj
	.p2align	5
	.type	bitrv2conj,@function
bitrv2conj:                             # @bitrv2conj
# %bb.0:
	ori	$a3, $zero, 9
	st.w	$zero, $a1, 0
	blt	$a0, $a3, .LBB27_11
# %bb.1:                                # %.lr.ph245.preheader
	ori	$a3, $zero, 1
	ori	$a4, $zero, 8
	b	.LBB27_3
	.p2align	4, , 16
.LBB27_2:                               # %._crit_edge
                                        #   in Loop: Header=BB27_3 Depth=1
	slli.w	$a6, $a5, 4
	addi.w	$a7, $a0, 0
	slli.w	$a3, $a5, 1
	bge	$a6, $a7, .LBB27_12
.LBB27_3:                               # %.lr.ph245
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_7 Depth 2
                                        #     Child Loop BB27_10 Depth 2
	move	$a5, $a3
	bstrpick.d	$a0, $a0, 31, 1
	blez	$a3, .LBB27_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB27_3 Depth=1
	slli.d	$a3, $a5, 2
	bgeu	$a5, $a4, .LBB27_6
# %bb.5:                                #   in Loop: Header=BB27_3 Depth=1
	move	$a6, $zero
	b	.LBB27_9
	.p2align	4, , 16
.LBB27_6:                               # %vector.ph
                                        #   in Loop: Header=BB27_3 Depth=1
	bstrpick.d	$a6, $a5, 30, 3
	slli.d	$a6, $a6, 3
	vreplgr2vr.w	$vr0, $a0
	move	$a7, $a1
	move	$t0, $a6
	.p2align	4, , 16
.LBB27_7:                               # %vector.body
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a7, 0
	vld	$vr2, $a7, 16
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	add.d	$t1, $a7, $a3
	vstx	$vr1, $a7, $a3
	vst	$vr2, $t1, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB27_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB27_3 Depth=1
	beq	$a6, $a5, .LBB27_2
.LBB27_9:                               # %.lr.ph.preheader301
                                        #   in Loop: Header=BB27_3 Depth=1
	alsl.d	$a7, $a6, $a1, 2
	sub.d	$a6, $a5, $a6
	.p2align	4, , 16
.LBB27_10:                              # %.lr.ph
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	add.d	$t0, $t0, $a0
	stx.w	$t0, $a7, $a3
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB27_10
	b	.LBB27_2
.LBB27_11:                              # %._crit_edge246.thread
	ori	$a4, $zero, 2
	ori	$a5, $zero, 8
	ori	$a3, $zero, 1
	beq	$a0, $a5, .LBB27_14
	b	.LBB27_21
.LBB27_12:                              # %._crit_edge246
	slli.d	$a4, $a5, 2
	bne	$a6, $a7, .LBB27_21
# %bb.13:                               # %.preheader238
	blez	$a3, .LBB27_26
.LBB27_14:                              # %.preheader.lr.ph
	move	$a0, $zero
	slli.d	$a5, $a3, 2
	bstrpick.d	$a6, $a4, 31, 0
	slli.d	$a6, $a6, 3
	b	.LBB27_17
	.p2align	4, , 16
.LBB27_15:                              #   in Loop: Header=BB27_17 Depth=1
	move	$a7, $zero
.LBB27_16:                              # %._crit_edge253
                                        #   in Loop: Header=BB27_17 Depth=1
	alsl.d	$t0, $a7, $a2, 3
	fld.d	$fa0, $t0, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $t0, 8
	add.w	$a7, $a7, $a4
	add.w	$t0, $a7, $a4
	alsl.d	$t1, $a7, $a2, 3
	slli.d	$a7, $a7, 3
	fld.d	$fa0, $t1, 8
	alsl.d	$t2, $t0, $a2, 3
	slli.d	$t3, $t0, 3
	fld.d	$fa1, $t2, 8
	fldx.d	$fa2, $a2, $t3
	fldx.d	$fa3, $a2, $a7
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $a2, $a7
	fst.d	$fa1, $t1, 8
	fstx.d	$fa3, $a2, $t3
	fst.d	$fa0, $t2, 8
	add.w	$a7, $t0, $a4
	alsl.d	$a7, $a7, $a2, 3
	fld.d	$fa0, $a7, 8
	fneg.d	$fa0, $fa0
	addi.d	$a0, $a0, 1
	fst.d	$fa0, $a7, 8
	beq	$a0, $a3, .LBB27_26
.LBB27_17:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_19 Depth 2
	beqz	$a0, .LBB27_15
# %bb.18:                               # %.lr.ph252
                                        #   in Loop: Header=BB27_17 Depth=1
	slli.d	$a7, $a0, 2
	ldx.w	$a7, $a1, $a7
	slli.d	$t0, $a0, 1
	alsl.d	$t1, $a7, $a2, 3
	move	$t2, $a0
	move	$t3, $a1
	.p2align	4, , 16
.LBB27_19:                              #   Parent Loop BB27_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 0
	add.w	$t4, $t4, $t0
	fld.d	$fa0, $t1, 8
	alsl.d	$t5, $t4, $a2, 3
	slli.d	$t6, $t4, 3
	fld.d	$fa1, $t5, 8
	fldx.d	$fa2, $a2, $t6
	fld.d	$fa3, $t1, 0
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t1, 0
	fst.d	$fa1, $t1, 8
	fstx.d	$fa3, $a2, $t6
	fst.d	$fa0, $t5, 8
	add.w	$t4, $t4, $a5
	add.d	$t5, $t1, $a6
	fld.d	$fa0, $t5, 8
	alsl.d	$t6, $t4, $a2, 3
	slli.d	$t7, $t4, 3
	fld.d	$fa1, $t6, 8
	fldx.d	$fa2, $a2, $t7
	fldx.d	$fa3, $t1, $a6
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t1, $a6
	fst.d	$fa1, $t5, 8
	fstx.d	$fa3, $a2, $t7
	fst.d	$fa0, $t6, 8
	sub.w	$t4, $t4, $a4
	add.d	$t6, $t5, $a6
	fld.d	$fa0, $t6, 8
	alsl.d	$t7, $t4, $a2, 3
	slli.d	$t8, $t4, 3
	fld.d	$fa1, $t7, 8
	fldx.d	$fa2, $a2, $t8
	fldx.d	$fa3, $t5, $a6
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t5, $a6
	fst.d	$fa1, $t6, 8
	fstx.d	$fa3, $a2, $t8
	fst.d	$fa0, $t7, 8
	add.w	$t4, $t4, $a5
	add.d	$t5, $t6, $a6
	fld.d	$fa0, $t5, 8
	alsl.d	$t7, $t4, $a2, 3
	slli.d	$t4, $t4, 3
	fld.d	$fa1, $t7, 8
	fldx.d	$fa2, $a2, $t4
	fldx.d	$fa3, $t6, $a6
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t6, $a6
	fst.d	$fa1, $t5, 8
	fstx.d	$fa3, $a2, $t4
	fst.d	$fa0, $t7, 8
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 4
	bnez	$t2, .LBB27_19
# %bb.20:                               # %._crit_edge253.loopexit
                                        #   in Loop: Header=BB27_17 Depth=1
	add.w	$a7, $a7, $t0
	b	.LBB27_16
.LBB27_21:
	fld.d	$fa0, $a2, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $a2, 8
	addi.w	$a0, $a4, 0
	alsl.d	$a5, $a0, $a2, 3
	fld.d	$fa0, $a5, 8
	fneg.d	$fa0, $fa0
	ori	$a6, $zero, 2
	fst.d	$fa0, $a5, 8
	blt	$a3, $a6, .LBB27_26
# %bb.22:                               # %.preheader239.preheader
	slli.d	$a0, $a0, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB27_23:                              # %.preheader239
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_24 Depth 2
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a1, $a6
	slli.d	$a7, $a5, 1
	alsl.d	$t0, $a6, $a2, 3
	move	$t1, $a1
	move	$t2, $a5
	.p2align	4, , 16
.LBB27_24:                              #   Parent Loop BB27_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	add.w	$t3, $t3, $a7
	fld.d	$fa0, $t0, 8
	alsl.d	$t4, $t3, $a2, 3
	slli.d	$t5, $t3, 3
	fld.d	$fa1, $t4, 8
	fldx.d	$fa2, $a2, $t5
	fld.d	$fa3, $t0, 0
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t0, 0
	fst.d	$fa1, $t0, 8
	fstx.d	$fa3, $a2, $t5
	fst.d	$fa0, $t4, 8
	add.w	$t3, $t3, $a4
	add.d	$t4, $t0, $a0
	fld.d	$fa0, $t4, 8
	alsl.d	$t5, $t3, $a2, 3
	slli.d	$t3, $t3, 3
	fld.d	$fa1, $t5, 8
	fldx.d	$fa2, $a2, $t3
	fldx.d	$fa3, $t0, $a0
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t0, $a0
	fst.d	$fa1, $t4, 8
	fstx.d	$fa3, $a2, $t3
	fst.d	$fa0, $t5, 8
	addi.d	$t2, $t2, -1
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 4
	bnez	$t2, .LBB27_24
# %bb.25:                               #   in Loop: Header=BB27_23 Depth=1
	add.w	$a6, $a6, $a7
	alsl.d	$a7, $a6, $a2, 3
	fld.d	$fa0, $a7, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $a7, 8
	add.w	$a6, $a6, $a4
	alsl.d	$a6, $a6, $a2, 3
	fld.d	$fa0, $a6, 8
	fneg.d	$fa0, $fa0
	addi.d	$a5, $a5, 1
	fst.d	$fa0, $a6, 8
	bne	$a5, $a3, .LBB27_23
.LBB27_26:                              # %.loopexit
	ret
.Lfunc_end27:
	.size	bitrv2conj, .Lfunc_end27-bitrv2conj
                                        # -- End function
	.globl	bitrv216neg                     # -- Begin function bitrv216neg
	.p2align	5
	.type	bitrv216neg,@function
bitrv216neg:                            # @bitrv216neg
# %bb.0:
	vld	$vr0, $a0, 240
	vld	$vr1, $a0, 112
	vld	$vr2, $a0, 176
	vld	$vr3, $a0, 48
	vld	$vr4, $a0, 208
	vld	$vr5, $a0, 144
	vst	$vr2, $a0, 48
	vld	$vr2, $a0, 80
	vst	$vr4, $a0, 80
	vst	$vr5, $a0, 112
	vld	$vr4, $a0, 224
	vld	$vr5, $a0, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a0, 96
	vst	$vr4, $a0, 144
	vld	$vr4, $a0, 160
	vst	$vr2, $a0, 96
	vst	$vr0, $a0, 160
	vld	$vr0, $a0, 32
	vst	$vr4, $a0, 176
	vld	$vr2, $a0, 192
	vst	$vr1, $a0, 32
	vst	$vr0, $a0, 192
	vld	$vr0, $a0, 64
	vst	$vr2, $a0, 208
	vld	$vr1, $a0, 128
	vst	$vr3, $a0, 64
	vst	$vr0, $a0, 224
	vst	$vr5, $a0, 128
	vst	$vr1, $a0, 240
	ret
.Lfunc_end28:
	.size	bitrv216neg, .Lfunc_end28-bitrv216neg
                                        # -- End function
	.globl	bitrv208neg                     # -- Begin function bitrv208neg
	.p2align	5
	.type	bitrv208neg,@function
bitrv208neg:                            # @bitrv208neg
# %bb.0:
	vld	$vr0, $a0, 80
	vld	$vr1, $a0, 112
	vld	$vr2, $a0, 48
	vst	$vr0, $a0, 48
	vld	$vr0, $a0, 96
	vld	$vr3, $a0, 16
	vst	$vr1, $a0, 16
	vld	$vr1, $a0, 32
	vst	$vr0, $a0, 80
	vld	$vr0, $a0, 64
	vst	$vr2, $a0, 32
	vst	$vr1, $a0, 96
	vst	$vr3, $a0, 64
	vst	$vr0, $a0, 112
	ret
.Lfunc_end29:
	.size	bitrv208neg, .Lfunc_end29-bitrv208neg
                                        # -- End function
	.globl	cftb040                         # -- Begin function cftb040
	.p2align	5
	.type	cftb040,@function
cftb040:                                # @cftb040
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, 32
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a0, 40
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	fld.d	$fa6, $a0, 16
	fld.d	$fa7, $a0, 48
	fld.d	$ft0, $a0, 24
	fld.d	$ft1, $a0, 56
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a0, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a0, 8
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $a0, 32
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a0, 40
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $a0, 16
	fsub.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a0, 24
	fsub.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $a0, 48
	fadd.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $a0, 56
	ret
.Lfunc_end30:
	.size	cftb040, .Lfunc_end30-cftb040
                                        # -- End function
	.globl	cftmdl1                         # -- Begin function cftmdl1
	.p2align	5
	.type	cftmdl1,@function
cftmdl1:                                # @cftmdl1
# %bb.0:
	srai.d	$a0, $a0, 3
	fld.d	$fa0, $a1, 0
	slli.d	$a3, $a0, 5
	add.d	$a4, $a1, $a3
	fldx.d	$fa1, $a1, $a3
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $a4, 8
	slli.d	$a5, $a0, 2
	alsl.d	$a5, $a0, $a5, 1
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	alsl.d	$a6, $a0, $a1, 4
	slli.d	$a7, $a0, 4
	fldx.d	$fa6, $a1, $a7
	alsl.d	$t0, $a5, $a1, 3
	slli.d	$a5, $a5, 3
	fldx.d	$fa7, $a1, $a5
	fld.d	$ft0, $a6, 8
	fld.d	$ft1, $t0, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a1, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a1, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $a1, $a7
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a6, 8
	fsub.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $a1, $a3
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a4, 8
	fadd.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $a1, $a5
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $t0, 8
	fld.d	$fa0, $a2, 8
	ori	$a3, $zero, 2
	bge	$a3, $a0, .LBB31_3
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$t3, $a0, 1
	slli.d	$t1, $t3, 4
	addi.d	$a4, $t1, 24
	addi.d	$a2, $a2, 56
	ori	$a5, $zero, 24
	mul.d	$t2, $t3, $a5
	addi.d	$a6, $t2, 24
	slli.d	$t0, $t3, 3
	addi.d	$a7, $t0, -16
	addi.d	$t0, $t0, 24
	addi.d	$t1, $t1, -16
	addi.d	$t2, $t2, -8
	slli.d	$t3, $t3, 5
	addi.d	$t3, $t3, -16
	.p2align	4, , 16
.LBB31_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, -24
	fld.d	$fa2, $a2, -16
	fld.d	$fa5, $a2, 0
	add.d	$t4, $a1, $a5
	fld.d	$fa6, $t4, -8
	add.d	$t5, $a1, $a4
	fld.d	$fa7, $t5, -8
	fldx.d	$ft0, $a1, $a5
	fldx.d	$ft1, $a1, $a4
	fld.d	$fa3, $a2, -8
	fneg.d	$fa4, $fa5
	fadd.d	$ft2, $fa6, $fa7
	fadd.d	$ft3, $ft0, $ft1
	add.d	$t6, $a1, $t0
	fld.d	$ft4, $t6, -8
	add.d	$t7, $a1, $a6
	fld.d	$ft5, $t7, -8
	fldx.d	$ft6, $a1, $t0
	fldx.d	$ft7, $a1, $a6
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $ft4, $ft5
	fadd.d	$ft1, $ft6, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft2, $ft0
	fst.d	$ft6, $t4, -8
	fadd.d	$ft6, $ft3, $ft1
	fstx.d	$ft6, $a1, $a5
	fsub.d	$ft0, $ft2, $ft0
	fst.d	$ft0, $t6, -8
	fsub.d	$ft0, $ft3, $ft1
	fstx.d	$ft0, $a1, $t0
	fsub.d	$ft0, $fa6, $ft5
	fadd.d	$ft1, $fa7, $ft4
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa2, $ft2
	fmadd.d	$ft2, $fa1, $ft0, $ft2
	fst.d	$ft2, $t5, -8
	fmul.d	$ft0, $fa2, $ft0
	fmadd.d	$ft0, $fa1, $ft1, $ft0
	fstx.d	$ft0, $a1, $a4
	fadd.d	$fa6, $fa6, $ft5
	fsub.d	$fa7, $fa7, $ft4
	fmul.d	$ft0, $fa7, $fa4
	fmadd.d	$ft0, $fa3, $fa6, $ft0
	fst.d	$ft0, $t7, -8
	fmul.d	$fa5, $fa5, $fa6
	fmadd.d	$fa5, $fa3, $fa7, $fa5
	fstx.d	$fa5, $a1, $a6
	add.d	$t4, $a1, $a7
	fldx.d	$fa5, $a1, $a7
	add.d	$t5, $a1, $t2
	fld.d	$fa6, $t5, -8
	fld.d	$fa7, $t4, 8
	fldx.d	$ft0, $a1, $t2
	fadd.d	$ft1, $fa5, $fa6
	fadd.d	$ft2, $fa7, $ft0
	add.d	$t6, $a1, $t1
	fldx.d	$ft3, $a1, $t1
	add.d	$t7, $a1, $t3
	fldx.d	$ft4, $a1, $t3
	fld.d	$ft5, $t6, 8
	fld.d	$ft6, $t7, 8
	fsub.d	$fa5, $fa5, $fa6
	fsub.d	$fa6, $fa7, $ft0
	fadd.d	$fa7, $ft3, $ft4
	fadd.d	$ft0, $ft5, $ft6
	fsub.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft1, $fa7
	fstx.d	$ft5, $a1, $a7
	fadd.d	$ft5, $ft2, $ft0
	fst.d	$ft5, $t4, 8
	fsub.d	$fa7, $ft1, $fa7
	fstx.d	$fa7, $a1, $t1
	fsub.d	$fa7, $ft2, $ft0
	fst.d	$fa7, $t6, 8
	fsub.d	$fa7, $fa5, $ft4
	fadd.d	$ft0, $fa6, $ft3
	fneg.d	$ft1, $ft0
	fmul.d	$ft1, $fa1, $ft1
	fmadd.d	$ft1, $fa2, $fa7, $ft1
	fst.d	$ft1, $t5, -8
	fmul.d	$fa1, $fa1, $fa7
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fstx.d	$fa1, $a1, $t2
	fadd.d	$fa1, $fa5, $ft4
	fsub.d	$fa2, $fa6, $ft3
	fmul.d	$fa5, $fa3, $fa2
	fmadd.d	$fa5, $fa4, $fa1, $fa5
	fstx.d	$fa5, $a1, $t3
	fneg.d	$fa1, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	fst.d	$fa1, $t7, 8
	addi.d	$a3, $a3, 2
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	addi.d	$a2, $a2, 32
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, -16
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, -16
	addi.d	$t2, $t2, -16
	addi.d	$t3, $t3, -16
	bltu	$a3, $a0, .LBB31_2
.LBB31_3:                               # %._crit_edge
	alsl.d	$a2, $a0, $a0, 2
	slli.d	$a3, $a0, 3
	alsl.d	$a4, $a0, $a1, 3
	fldx.d	$fa1, $a1, $a3
	alsl.d	$a5, $a2, $a1, 3
	slli.d	$a2, $a2, 3
	fldx.d	$fa2, $a1, $a2
	fld.d	$fa3, $a4, 8
	fld.d	$fa4, $a5, 8
	alsl.d	$a6, $a0, $a0, 1
	sub.w	$a0, $a3, $a0
	fadd.d	$fa5, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	alsl.d	$a7, $a6, $a1, 3
	slli.d	$a6, $a6, 3
	fldx.d	$fa7, $a1, $a6
	alsl.d	$t0, $a0, $a1, 3
	slli.d	$a0, $a0, 3
	fldx.d	$ft0, $a1, $a0
	fld.d	$ft1, $a7, 8
	fld.d	$ft2, $t0, 8
	fsub.d	$fa1, $fa1, $fa2
	fsub.d	$fa2, $fa3, $fa4
	fadd.d	$fa3, $fa7, $ft0
	fadd.d	$fa4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$ft1, $fa5, $fa3
	fstx.d	$ft1, $a1, $a3
	fadd.d	$ft1, $fa6, $fa4
	fst.d	$ft1, $a4, 8
	fsub.d	$fa3, $fa5, $fa3
	fstx.d	$fa3, $a1, $a6
	fsub.d	$fa3, $fa6, $fa4
	fst.d	$fa3, $a7, 8
	fsub.d	$fa3, $fa1, $ft0
	fadd.d	$fa4, $fa2, $fa7
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa0, $fa5
	fstx.d	$fa5, $a1, $a2
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $a5, 8
	fadd.d	$fa1, $fa1, $ft0
	fsub.d	$fa2, $fa2, $fa7
	fneg.d	$fa0, $fa0
	fadd.d	$fa3, $fa2, $fa1
	fmul.d	$fa3, $fa3, $fa0
	fstx.d	$fa3, $a1, $a0
	fsub.d	$fa1, $fa2, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $t0, 8
	ret
.Lfunc_end31:
	.size	cftmdl1, .Lfunc_end31-cftmdl1
                                        # -- End function
	.globl	cftmdl2                         # -- Begin function cftmdl2
	.p2align	5
	.type	cftmdl2,@function
cftmdl2:                                # @cftmdl2
# %bb.0:
	srai.d	$a0, $a0, 3
	slli.d	$t5, $a0, 1
	fld.d	$fa0, $a2, 8
	fld.d	$fa1, $a1, 0
	slli.d	$a4, $a0, 5
	add.d	$a5, $a1, $a4
	fld.d	$fa2, $a5, 8
	fld.d	$fa3, $a1, 8
	fldx.d	$fa4, $a1, $a4
	slli.d	$a7, $a0, 2
	alsl.d	$a3, $a0, $a7, 1
	fsub.d	$fa5, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	slli.d	$a6, $a0, 4
	fldx.d	$fa7, $a1, $a6
	slli.d	$t0, $a3, 3
	alsl.d	$t1, $a3, $a1, 3
	fld.d	$ft0, $t1, 8
	addi.d	$a3, $t5, 1
	slli.d	$a3, $a3, 3
	fldx.d	$ft1, $a1, $a3
	fldx.d	$ft2, $a1, $t0
	fadd.d	$fa1, $fa1, $fa2
	fsub.d	$fa2, $fa3, $fa4
	fsub.d	$fa3, $fa7, $ft0
	fadd.d	$fa4, $ft1, $ft2
	fadd.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fsub.d	$ft1, $fa3, $fa4
	fmul.d	$ft1, $fa0, $ft1
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa0, $fa3
	fadd.d	$fa4, $fa5, $ft1
	fst.d	$fa4, $a1, 0
	fadd.d	$fa4, $fa6, $fa3
	fst.d	$fa4, $a1, 8
	fsub.d	$fa4, $fa5, $ft1
	fstx.d	$fa4, $a1, $a6
	fsub.d	$fa3, $fa6, $fa3
	fstx.d	$fa3, $a1, $a3
	fsub.d	$fa3, $fa7, $ft0
	fmul.d	$fa3, $fa0, $fa3
	fadd.d	$fa4, $fa7, $ft0
	fmul.d	$fa0, $fa0, $fa4
	fsub.d	$fa4, $fa1, $fa0
	fstx.d	$fa4, $a1, $a4
	fadd.d	$fa4, $fa2, $fa3
	fst.d	$fa4, $a5, 8
	fadd.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $a1, $t0
	fsub.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $t1, 8
	ori	$a5, $zero, 2
	slli.d	$a4, $t5, 3
	bge	$a5, $a0, .LBB32_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	slli.d	$t7, $t5, 4
	addi.d	$a6, $t7, 16
	alsl.d	$a7, $a7, $a2, 3
	addi.d	$a7, $a7, -16
	ori	$t0, $zero, 24
	mul.d	$t3, $t5, $t0
	addi.d	$t1, $t3, 16
	addi.d	$t2, $a4, 24
	addi.d	$t3, $t3, -16
	addi.d	$t4, $a2, 56
	slli.d	$t5, $t5, 5
	addi.d	$t5, $t5, -16
	addi.d	$t6, $a4, -16
	addi.d	$t7, $t7, -16
	.p2align	4, , 16
.LBB32_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$ft1, $t4, 0
	fld.d	$fa3, $t4, -24
	fld.d	$fa4, $t4, -16
	fld.d	$fa0, $t4, -8
	fneg.d	$fa1, $ft1
	fld.d	$fa7, $a7, -16
	fld.d	$ft0, $a7, -8
	fld.d	$fa2, $a7, 8
	add.d	$t8, $a1, $t0
	fld.d	$ft2, $t8, -8
	add.d	$fp, $a1, $a6
	fld.d	$ft3, $fp, 8
	fldx.d	$ft4, $a1, $t0
	fldx.d	$ft5, $a1, $a6
	fld.d	$fa5, $a7, 0
	fneg.d	$fa6, $fa2
	fsub.d	$ft6, $ft2, $ft3
	fadd.d	$ft7, $ft4, $ft5
	add.d	$s0, $a1, $t2
	fld.d	$ft8, $s0, -8
	add.d	$s1, $a1, $t1
	fld.d	$ft9, $s1, 8
	fldx.d	$ft10, $a1, $t2
	fldx.d	$ft11, $a1, $t1
	fadd.d	$ft2, $ft2, $ft3
	fsub.d	$ft3, $ft4, $ft5
	fsub.d	$ft4, $ft8, $ft9
	fadd.d	$ft5, $ft10, $ft11
	fadd.d	$ft8, $ft8, $ft9
	fsub.d	$ft9, $ft10, $ft11
	fneg.d	$ft10, $ft7
	fmul.d	$ft10, $fa4, $ft10
	fmadd.d	$ft10, $fa3, $ft6, $ft10
	fmul.d	$ft6, $fa4, $ft6
	fmadd.d	$ft6, $fa3, $ft7, $ft6
	fneg.d	$ft7, $ft5
	fmul.d	$ft7, $fa7, $ft7
	fmadd.d	$ft7, $ft0, $ft4, $ft7
	fmul.d	$ft4, $fa7, $ft4
	fmadd.d	$ft4, $ft0, $ft5, $ft4
	fadd.d	$ft5, $ft10, $ft7
	fst.d	$ft5, $t8, -8
	fadd.d	$ft5, $ft6, $ft4
	fstx.d	$ft5, $a1, $t0
	fsub.d	$ft5, $ft10, $ft7
	fst.d	$ft5, $s0, -8
	fsub.d	$ft4, $ft6, $ft4
	fstx.d	$ft4, $a1, $t2
	fmul.d	$ft4, $ft3, $fa1
	fmadd.d	$ft4, $fa0, $ft2, $ft4
	fmul.d	$ft1, $ft1, $ft2
	fmadd.d	$ft1, $fa0, $ft3, $ft1
	fmul.d	$ft2, $fa5, $ft9
	fmadd.d	$ft2, $fa6, $ft8, $ft2
	fneg.d	$ft3, $ft8
	fmul.d	$ft3, $fa5, $ft3
	fmadd.d	$ft3, $fa6, $ft9, $ft3
	fadd.d	$ft5, $ft4, $ft2
	fstx.d	$ft5, $a1, $a6
	fadd.d	$ft5, $ft1, $ft3
	fst.d	$ft5, $fp, 8
	fsub.d	$ft2, $ft4, $ft2
	fstx.d	$ft2, $a1, $t1
	fsub.d	$ft1, $ft1, $ft3
	fst.d	$ft1, $s1, 8
	add.d	$t8, $a1, $t6
	fldx.d	$ft1, $a1, $t6
	add.d	$fp, $a1, $t3
	fld.d	$ft2, $fp, 8
	fld.d	$ft3, $t8, 8
	fldx.d	$ft4, $a1, $t3
	fsub.d	$ft5, $ft1, $ft2
	fadd.d	$ft6, $ft3, $ft4
	add.d	$s0, $a1, $t7
	fldx.d	$ft7, $a1, $t7
	add.d	$s1, $a1, $t5
	fld.d	$ft8, $s1, 8
	fld.d	$ft9, $s0, 8
	fldx.d	$ft10, $a1, $t5
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft7, $ft8
	fadd.d	$ft4, $ft9, $ft10
	fadd.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fneg.d	$ft9, $ft6
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa7, $ft5, $ft9
	fmul.d	$ft0, $ft0, $ft5
	fmadd.d	$fa7, $fa7, $ft6, $ft0
	fneg.d	$ft0, $ft4
	fmul.d	$ft0, $fa3, $ft0
	fmadd.d	$ft0, $fa4, $ft3, $ft0
	fmul.d	$fa3, $fa3, $ft3
	fmadd.d	$fa3, $fa4, $ft4, $fa3
	fadd.d	$fa4, $ft9, $ft0
	fstx.d	$fa4, $a1, $t6
	fadd.d	$fa4, $fa7, $fa3
	fst.d	$fa4, $t8, 8
	fsub.d	$fa4, $ft9, $ft0
	fstx.d	$fa4, $a1, $t7
	fsub.d	$fa3, $fa7, $fa3
	fst.d	$fa3, $s0, 8
	fmul.d	$fa3, $ft2, $fa6
	fmadd.d	$fa3, $fa5, $ft1, $fa3
	fmul.d	$fa2, $fa2, $ft1
	fmadd.d	$fa2, $fa5, $ft2, $fa2
	fmul.d	$fa4, $fa0, $ft8
	fmadd.d	$fa4, $fa1, $ft7, $fa4
	fneg.d	$fa5, $ft7
	fmul.d	$fa0, $fa0, $fa5
	fmadd.d	$fa0, $fa1, $ft8, $fa0
	fadd.d	$fa1, $fa3, $fa4
	fstx.d	$fa1, $a1, $t3
	fadd.d	$fa1, $fa2, $fa0
	fst.d	$fa1, $fp, 8
	fsub.d	$fa1, $fa3, $fa4
	fstx.d	$fa1, $a1, $t5
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s1, 8
	addi.d	$a5, $a5, 2
	addi.d	$t0, $t0, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, -32
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	addi.d	$t3, $t3, -16
	addi.d	$t4, $t4, 32
	addi.d	$t5, $t5, -16
	addi.d	$t6, $t6, -16
	addi.d	$t7, $t7, -16
	bltu	$a5, $a0, .LBB32_2
# %bb.3:
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB32_4:                               # %._crit_edge
	fldx.d	$fa0, $a2, $a4
	fldx.d	$fa1, $a2, $a3
	alsl.d	$a3, $a0, $a0, 2
	slli.d	$a4, $a0, 3
	alsl.d	$a5, $a0, $a1, 3
	fldx.d	$fa2, $a1, $a4
	alsl.d	$a2, $a3, $a1, 3
	slli.d	$a3, $a3, 3
	fld.d	$fa3, $a2, 8
	fld.d	$fa4, $a5, 8
	fldx.d	$fa5, $a1, $a3
	alsl.d	$a6, $a0, $a0, 1
	sub.w	$a0, $a4, $a0
	fsub.d	$fa6, $fa2, $fa3
	fadd.d	$fa7, $fa4, $fa5
	alsl.d	$a7, $a6, $a1, 3
	slli.d	$a6, $a6, 3
	fldx.d	$ft0, $a1, $a6
	slli.d	$t0, $a0, 3
	alsl.d	$a0, $a0, $a1, 3
	fld.d	$ft1, $a0, 8
	fld.d	$ft2, $a7, 8
	fldx.d	$ft3, $a1, $t0
	fadd.d	$fa2, $fa2, $fa3
	fsub.d	$fa3, $fa4, $fa5
	fsub.d	$fa4, $ft0, $ft1
	fadd.d	$fa5, $ft2, $ft3
	fadd.d	$ft0, $ft0, $ft1
	fsub.d	$ft1, $ft2, $ft3
	fneg.d	$ft2, $fa7
	fmul.d	$ft2, $fa1, $ft2
	fmadd.d	$ft2, $fa0, $fa6, $ft2
	fmul.d	$fa6, $fa1, $fa6
	fmadd.d	$fa6, $fa0, $fa7, $fa6
	fneg.d	$fa7, $fa5
	fmul.d	$fa7, $fa0, $fa7
	fmadd.d	$fa7, $fa1, $fa4, $fa7
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa5, $fa4
	fadd.d	$fa5, $ft2, $fa7
	fstx.d	$fa5, $a1, $a4
	fadd.d	$fa5, $fa6, $fa4
	fst.d	$fa5, $a5, 8
	fsub.d	$fa5, $ft2, $fa7
	fstx.d	$fa5, $a1, $a6
	fsub.d	$fa4, $fa6, $fa4
	fst.d	$fa4, $a7, 8
	fneg.d	$fa4, $fa3
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa2, $fa4
	fmul.d	$fa2, $fa0, $fa2
	fmadd.d	$fa2, $fa1, $fa3, $fa2
	fneg.d	$fa3, $ft1
	fmul.d	$fa3, $fa1, $fa3
	fmadd.d	$fa3, $fa0, $ft0, $fa3
	fmul.d	$fa1, $fa1, $ft0
	fmadd.d	$fa0, $fa0, $ft1, $fa1
	fsub.d	$fa1, $fa4, $fa3
	fstx.d	$fa1, $a1, $a3
	fsub.d	$fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 8
	fadd.d	$fa1, $fa4, $fa3
	fstx.d	$fa1, $a1, $t0
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a0, 8
	ret
.Lfunc_end32:
	.size	cftmdl2, .Lfunc_end32-cftmdl2
                                        # -- End function
	.globl	cftexp2                         # -- Begin function cftexp2
	.p2align	5
	.type	cftexp2,@function
cftexp2:                                # @cftexp2
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	srai.d	$a2, $a0, 2
	ori	$a1, $zero, 129
	srai.d	$s7, $a0, 1
	blt	$a2, $a1, .LBB33_12
# %bb.1:                                # %.preheader115.preheader
	slli.d	$fp, $s7, 3
	b	.LBB33_3
	.p2align	4, , 16
.LBB33_2:                               # %._crit_edge123
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 2
	ori	$a0, $zero, 515
	bgeu	$a0, $s0, .LBB33_12
.LBB33_3:                               # %.preheader115
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_6 Depth 2
                                        #       Child Loop BB33_8 Depth 3
                                        #       Child Loop BB33_11 Depth 3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s0, $a2, 0
	bge	$s0, $s7, .LBB33_2
# %bb.4:                                # %.lr.ph122
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a0, $s5, 31, 1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sub.w	$a0, $a2, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s1, $a0, $a1, 3
	sub.w	$a0, $a2, $s5
	alsl.d	$s2, $a0, $a1, 3
	sub.w	$a0, $zero, $s5
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	add.w	$a0, $s5, $s7
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB33_6
	.p2align	4, , 16
.LBB33_5:                               # %._crit_edge120
                                        #   in Loop: Header=BB33_6 Depth=2
	bge	$s5, $s7, .LBB33_2
.LBB33_6:                               #   Parent Loop BB33_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_8 Depth 3
                                        #       Child Loop BB33_11 Depth 3
	addi.w	$a0, $s5, 0
	slli.w	$s8, $s5, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB33_9
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB33_6 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$s6, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s3, $a0, $a1, 3
	slli.d	$s4, $s8, 3
	.p2align	4, , 16
.LBB33_8:                               #   Parent Loop BB33_3 Depth=1
                                        #     Parent Loop BB33_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	add.d	$a1, $s3, $fp
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	add.d	$s6, $s6, $s8
	add.d	$s3, $s3, $s4
	blt	$s6, $s7, .LBB33_8
.LBB33_9:                               # %._crit_edge
                                        #   in Loop: Header=BB33_6 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.w	$s6, $s8, $a0
	slli.w	$s5, $s5, 2
	bge	$s6, $s7, .LBB33_5
# %bb.10:                               # %.lr.ph119
                                        #   in Loop: Header=BB33_6 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s3, $s8, $a0, 3
	slli.d	$s4, $s5, 3
	.p2align	4, , 16
.LBB33_11:                              #   Parent Loop BB33_3 Depth=1
                                        #     Parent Loop BB33_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	add.d	$a1, $s3, $fp
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	add.d	$s6, $s6, $s5
	add.d	$s3, $s3, $s4
	blt	$s6, $s7, .LBB33_11
	b	.LBB33_5
.LBB33_12:                              # %.preheader
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s0, $a2, 0
	bge	$s0, $s7, .LBB33_25
# %bb.13:                               # %.lr.ph134
	srli.d	$a0, $s0, 1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.w	$a0, $a3, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$fp, $a0, $a2, 3
	alsl.d	$s8, $a3, $a2, 3
	addi.d	$s2, $s8, -64
	addi.d	$a0, $s8, -256
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.w	$a0, $a3, $a1
	alsl.d	$s1, $a0, $a2, 3
	sub.w	$a0, $zero, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.w	$a0, $a1, $s7
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s6, $s7, $a0, 3
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB33_15
	.p2align	4, , 16
.LBB33_14:                              # %._crit_edge132
                                        #   in Loop: Header=BB33_15 Depth=1
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	bge	$a1, $s7, .LBB33_25
.LBB33_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_18 Depth 2
                                        #     Child Loop BB33_23 Depth 2
	addi.w	$a0, $a1, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.w	$s3, $a1, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB33_20
# %bb.16:                               # %.lr.ph127
                                        #   in Loop: Header=BB33_15 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	b	.LBB33_18
	.p2align	4, , 16
.LBB33_17:                              #   in Loop: Header=BB33_18 Depth=2
	fld.d	$fa0, $s5, 0
	fld.d	$fa1, $s5, 64
	fld.d	$fa2, $s5, 8
	fld.d	$fa3, $s5, 72
	fld.d	$fa4, $s8, -120
	fadd.d	$fa5, $fa0, $fa1
	fadd.d	$fa6, $fa2, $fa3
	fld.d	$fa7, $s5, 32
	fld.d	$ft0, $s5, 96
	fld.d	$ft1, $s5, 40
	fld.d	$ft2, $s5, 104
	fsub.d	$ft3, $fa0, $fa1
	fsub.d	$ft4, $fa2, $fa3
	fadd.d	$fa0, $fa7, $ft0
	fadd.d	$ft5, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa5, $fa0
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa1, $fa5, $fa0
	fsub.d	$fa0, $fa6, $ft5
	fsub.d	$fa5, $ft3, $ft0
	fadd.d	$fa6, $ft4, $fa7
	fld.d	$ft1, $s5, 16
	fld.d	$ft2, $s5, 80
	fld.d	$ft5, $s5, 24
	fld.d	$ft6, $s5, 88
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa7, $ft4, $fa7
	fadd.d	$ft3, $ft1, $ft2
	fadd.d	$ft4, $ft5, $ft6
	fld.d	$ft7, $s5, 48
	fld.d	$ft8, $s5, 112
	fld.d	$ft9, $s5, 56
	fld.d	$ft10, $s5, 120
	fsub.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $ft3, $ft5
	fadd.d	$ft10, $ft4, $ft6
	fsub.d	$ft3, $ft3, $ft5
	fsub.d	$ft4, $ft4, $ft6
	fsub.d	$ft5, $ft1, $ft8
	fadd.d	$ft6, $ft2, $ft7
	fadd.d	$ft1, $ft1, $ft8
	fsub.d	$ft2, $ft2, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa4, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa4, $ft5
	fsub.d	$ft6, $ft1, $ft2
	fmul.d	$ft6, $fa4, $ft6
	fadd.d	$ft1, $ft2, $ft1
	fmul.d	$fa4, $fa4, $ft1
	fadd.d	$ft1, $fa5, $ft7
	fst.d	$ft1, $s5, 64
	fadd.d	$ft1, $fa6, $ft5
	fst.d	$ft1, $s5, 72
	fsub.d	$fa5, $fa5, $ft7
	fst.d	$fa5, $s5, 80
	fsub.d	$fa5, $fa6, $ft5
	fst.d	$fa5, $s5, 88
	fsub.d	$fa5, $ft0, $fa4
	fst.d	$fa5, $s5, 96
	fadd.d	$fa5, $fa7, $ft6
	fst.d	$fa5, $s5, 104
	fadd.d	$fa4, $ft0, $fa4
	fst.d	$fa4, $s5, 112
	fsub.d	$fa4, $fa7, $ft6
	fst.d	$fa4, $s5, 120
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s5, 0
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 8
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 16
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 24
	fsub.d	$fa2, $fa1, $ft4
	fst.d	$fa2, $s5, 32
	fadd.d	$fa2, $fa0, $ft3
	fst.d	$fa2, $s5, 40
	fadd.d	$fa1, $fa1, $ft4
	fst.d	$fa1, $s5, 48
	fsub.d	$fa0, $fa0, $ft3
	fst.d	$fa0, $s5, 56
	fld.d	$fa5, $s8, -120
	fld.d	$fa0, $s5, 128
	fld.d	$fa1, $s5, 200
	fld.d	$fa2, $s5, 136
	fld.d	$fa7, $s5, 192
	fld.d	$fa6, $s8, -96
	fld.d	$ft0, $s8, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s5, 160
	fld.d	$ft2, $s5, 232
	fld.d	$ft3, $s5, 168
	fld.d	$ft4, $s5, 224
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s5, 144
	fld.d	$ft4, $s5, 216
	fld.d	$ft6, $s5, 152
	fld.d	$ft7, $s5, 208
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s5, 176
	fld.d	$ft7, $s5, 248
	fld.d	$ft9, $s5, 184
	fld.d	$ft10, $s5, 240
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s5, 128
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s5, 136
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s5, 144
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s5, 152
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s5, 160
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s5, 168
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s5, 176
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s5, 184
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s5, 192
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s5, 200
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s5, 208
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s5, 216
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s5, 224
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s5, 232
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s5, 240
	fsub.d	$fa0, $fa1, $fa2
	fld.d	$fa1, $s5, 256
	fld.d	$fa2, $s5, 320
	fld.d	$fa3, $s5, 264
	fld.d	$fa4, $s5, 328
	fst.d	$fa0, $s5, 248
	fld.d	$fa5, $s8, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s5, 288
	fld.d	$ft0, $s5, 352
	fld.d	$ft1, $s5, 296
	fld.d	$ft2, $s5, 360
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s5, 272
	fld.d	$ft4, $s5, 336
	fld.d	$ft5, $s5, 280
	fld.d	$ft6, $s5, 344
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s5, 304
	fld.d	$ft8, $s5, 368
	fld.d	$ft9, $s5, 312
	fld.d	$ft10, $s5, 376
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s5, 320
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s5, 328
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s5, 336
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s5, 344
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s5, 352
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s5, 360
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s5, 368
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s5, 376
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s5, 256
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 264
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 272
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 280
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s5, 288
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s5, 296
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s5, 304
	fsub.d	$fa0, $fa0, $fa7
	fld.d	$fa1, $s5, 384
	fld.d	$fa2, $s5, 448
	fld.d	$fa3, $s5, 392
	fld.d	$fa4, $s5, 456
	fst.d	$fa0, $s5, 312
	fld.d	$fa5, $s8, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s5, 416
	fld.d	$ft0, $s5, 480
	fld.d	$ft1, $s5, 424
	fld.d	$ft2, $s5, 488
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s5, 400
	fld.d	$ft4, $s5, 464
	fld.d	$ft5, $s5, 408
	fld.d	$ft6, $s5, 472
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s5, 432
	fld.d	$ft8, $s5, 496
	fld.d	$ft9, $s5, 440
	fld.d	$ft10, $s5, 504
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s5, 448
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s5, 456
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s5, 464
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s5, 472
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s5, 480
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s5, 488
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s5, 496
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s5, 504
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s5, 384
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 392
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 400
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 408
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s5, 416
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s5, 424
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s5, 432
	fsub.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $s5, 440
	alsl.d	$s5, $s1, $s6, 3
	slli.d	$s4, $s1, 3
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	fldx.d	$fa0, $s6, $s4
	fld.d	$fa1, $s5, 64
	fld.d	$fa2, $s5, 8
	fld.d	$fa3, $s5, 72
	fld.d	$fa4, $s8, -120
	fadd.d	$fa5, $fa0, $fa1
	fadd.d	$fa6, $fa2, $fa3
	fld.d	$fa7, $s5, 32
	fld.d	$ft0, $s5, 96
	fld.d	$ft1, $s5, 40
	fld.d	$ft2, $s5, 104
	fsub.d	$ft3, $fa0, $fa1
	fsub.d	$ft4, $fa2, $fa3
	fadd.d	$fa0, $fa7, $ft0
	fadd.d	$ft5, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa5, $fa0
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa1, $fa5, $fa0
	fsub.d	$fa0, $fa6, $ft5
	fsub.d	$fa5, $ft3, $ft0
	fadd.d	$fa6, $ft4, $fa7
	fld.d	$ft1, $s5, 16
	fld.d	$ft2, $s5, 80
	fld.d	$ft5, $s5, 24
	fld.d	$ft6, $s5, 88
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa7, $ft4, $fa7
	fadd.d	$ft3, $ft1, $ft2
	fadd.d	$ft4, $ft5, $ft6
	fld.d	$ft7, $s5, 48
	fld.d	$ft8, $s5, 112
	fld.d	$ft9, $s5, 56
	fld.d	$ft10, $s5, 120
	fsub.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $ft3, $ft5
	fadd.d	$ft10, $ft4, $ft6
	fsub.d	$ft3, $ft3, $ft5
	fsub.d	$ft4, $ft4, $ft6
	fsub.d	$ft5, $ft1, $ft8
	fadd.d	$ft6, $ft2, $ft7
	fadd.d	$ft1, $ft1, $ft8
	fsub.d	$ft2, $ft2, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa4, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa4, $ft5
	fsub.d	$ft6, $ft1, $ft2
	fmul.d	$ft6, $fa4, $ft6
	fadd.d	$ft1, $ft2, $ft1
	fmul.d	$fa4, $fa4, $ft1
	fadd.d	$ft1, $fa5, $ft7
	fst.d	$ft1, $s5, 64
	fadd.d	$ft1, $fa6, $ft5
	fst.d	$ft1, $s5, 72
	fsub.d	$fa5, $fa5, $ft7
	fst.d	$fa5, $s5, 80
	fsub.d	$fa5, $fa6, $ft5
	fst.d	$fa5, $s5, 88
	fsub.d	$fa5, $ft0, $fa4
	fst.d	$fa5, $s5, 96
	fadd.d	$fa5, $fa7, $ft6
	fst.d	$fa5, $s5, 104
	fadd.d	$fa4, $ft0, $fa4
	fst.d	$fa4, $s5, 112
	fsub.d	$fa4, $fa7, $ft6
	fst.d	$fa4, $s5, 120
	fadd.d	$fa4, $fa3, $ft9
	fstx.d	$fa4, $s6, $s4
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 8
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 16
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 24
	fsub.d	$fa2, $fa1, $ft4
	fst.d	$fa2, $s5, 32
	fadd.d	$fa2, $fa0, $ft3
	fst.d	$fa2, $s5, 40
	fadd.d	$fa1, $fa1, $ft4
	fst.d	$fa1, $s5, 48
	fsub.d	$fa0, $fa0, $ft3
	fst.d	$fa0, $s5, 56
	fld.d	$fa5, $s8, -120
	fld.d	$fa0, $s5, 128
	fld.d	$fa1, $s5, 200
	fld.d	$fa2, $s5, 136
	fld.d	$fa7, $s5, 192
	fld.d	$fa6, $s8, -96
	fld.d	$ft0, $s8, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s5, 160
	fld.d	$ft2, $s5, 232
	fld.d	$ft3, $s5, 168
	fld.d	$ft4, $s5, 224
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s5, 144
	fld.d	$ft4, $s5, 216
	fld.d	$ft6, $s5, 152
	fld.d	$ft7, $s5, 208
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s5, 176
	fld.d	$ft7, $s5, 248
	fld.d	$ft9, $s5, 184
	fld.d	$ft10, $s5, 240
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s5, 128
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s5, 136
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s5, 144
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s5, 152
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s5, 160
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s5, 168
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s5, 176
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s5, 184
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s5, 192
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s5, 200
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s5, 208
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s5, 216
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s5, 224
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s5, 232
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s5, 240
	fsub.d	$fa0, $fa1, $fa2
	fld.d	$fa1, $s5, 256
	fld.d	$fa2, $s5, 320
	fld.d	$fa3, $s5, 264
	fld.d	$fa4, $s5, 328
	fst.d	$fa0, $s5, 248
	fld.d	$fa5, $s8, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s5, 288
	fld.d	$ft0, $s5, 352
	fld.d	$ft1, $s5, 296
	fld.d	$ft2, $s5, 360
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s5, 272
	fld.d	$ft4, $s5, 336
	fld.d	$ft5, $s5, 280
	fld.d	$ft6, $s5, 344
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s5, 304
	fld.d	$ft8, $s5, 368
	fld.d	$ft9, $s5, 312
	fld.d	$ft10, $s5, 376
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s5, 320
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s5, 328
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s5, 336
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s5, 344
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s5, 352
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s5, 360
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s5, 368
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s5, 376
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s5, 256
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 264
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 272
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 280
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s5, 288
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s5, 296
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s5, 304
	fsub.d	$fa0, $fa0, $fa7
	fld.d	$fa1, $s5, 384
	fld.d	$fa2, $s5, 448
	fld.d	$fa3, $s5, 392
	fld.d	$fa4, $s5, 456
	fst.d	$fa0, $s5, 312
	fld.d	$fa5, $s8, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s5, 416
	fld.d	$ft0, $s5, 480
	fld.d	$ft1, $s5, 424
	fld.d	$ft2, $s5, 488
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s5, 400
	fld.d	$ft4, $s5, 464
	fld.d	$ft5, $s5, 408
	fld.d	$ft6, $s5, 472
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s5, 432
	fld.d	$ft8, $s5, 496
	fld.d	$ft9, $s5, 440
	fld.d	$ft10, $s5, 504
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s5, 448
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s5, 456
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s5, 464
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s5, 472
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s5, 480
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s5, 488
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s5, 496
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s5, 504
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s5, 384
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 392
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 400
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 408
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s5, 416
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s5, 424
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s5, 432
	fsub.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $s5, 440
	add.d	$s1, $s1, $s3
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	bge	$s1, $s7, .LBB33_20
.LBB33_18:                              #   Parent Loop BB33_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s5, $s1, $a0, 3
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 128
	bne	$s0, $a0, .LBB33_17
# %bb.19:                               #   in Loop: Header=BB33_18 Depth=2
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 256
	move	$s4, $s3
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 512
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 768
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	alsl.d	$s5, $s1, $s6, 3
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cftmdl1)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 256
	move	$a1, $s3
	move	$s3, $s4
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 512
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 768
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s3
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	blt	$s1, $s7, .LBB33_18
.LBB33_20:                              # %._crit_edge128
                                        #   in Loop: Header=BB33_15 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.w	$fp, $s3, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	slli.w	$a1, $a1, 2
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	bge	$fp, $s7, .LBB33_14
# %bb.21:                               # %.lr.ph131
                                        #   in Loop: Header=BB33_15 Depth=1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	b	.LBB33_23
	.p2align	4, , 16
.LBB33_22:                              #   in Loop: Header=BB33_23 Depth=2
	fld.d	$fa0, $s5, 0
	fld.d	$fa1, $s5, 64
	fld.d	$fa2, $s5, 8
	fld.d	$fa3, $s5, 72
	fld.d	$fa4, $s8, -120
	fadd.d	$fa5, $fa0, $fa1
	fadd.d	$fa6, $fa2, $fa3
	fld.d	$fa7, $s5, 32
	fld.d	$ft0, $s5, 96
	fld.d	$ft1, $s5, 40
	fld.d	$ft2, $s5, 104
	fsub.d	$ft3, $fa0, $fa1
	fsub.d	$ft4, $fa2, $fa3
	fadd.d	$fa0, $fa7, $ft0
	fadd.d	$ft5, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa5, $fa0
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa1, $fa5, $fa0
	fsub.d	$fa0, $fa6, $ft5
	fsub.d	$fa5, $ft3, $ft0
	fadd.d	$fa6, $ft4, $fa7
	fld.d	$ft1, $s5, 16
	fld.d	$ft2, $s5, 80
	fld.d	$ft5, $s5, 24
	fld.d	$ft6, $s5, 88
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa7, $ft4, $fa7
	fadd.d	$ft3, $ft1, $ft2
	fadd.d	$ft4, $ft5, $ft6
	fld.d	$ft7, $s5, 48
	fld.d	$ft8, $s5, 112
	fld.d	$ft9, $s5, 56
	fld.d	$ft10, $s5, 120
	fsub.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $ft3, $ft5
	fadd.d	$ft10, $ft4, $ft6
	fsub.d	$ft3, $ft3, $ft5
	fsub.d	$ft4, $ft4, $ft6
	fsub.d	$ft5, $ft1, $ft8
	fadd.d	$ft6, $ft2, $ft7
	fadd.d	$ft1, $ft1, $ft8
	fsub.d	$ft2, $ft2, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa4, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa4, $ft5
	fsub.d	$ft6, $ft1, $ft2
	fmul.d	$ft6, $fa4, $ft6
	fadd.d	$ft1, $ft2, $ft1
	fmul.d	$fa4, $fa4, $ft1
	fadd.d	$ft1, $fa5, $ft7
	fst.d	$ft1, $s5, 64
	fadd.d	$ft1, $fa6, $ft5
	fst.d	$ft1, $s5, 72
	fsub.d	$fa5, $fa5, $ft7
	fst.d	$fa5, $s5, 80
	fsub.d	$fa5, $fa6, $ft5
	fst.d	$fa5, $s5, 88
	fsub.d	$fa5, $ft0, $fa4
	fst.d	$fa5, $s5, 96
	fadd.d	$fa5, $fa7, $ft6
	fst.d	$fa5, $s5, 104
	fadd.d	$fa4, $ft0, $fa4
	fst.d	$fa4, $s5, 112
	fsub.d	$fa4, $fa7, $ft6
	fst.d	$fa4, $s5, 120
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s5, 0
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 8
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 16
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 24
	fsub.d	$fa2, $fa1, $ft4
	fst.d	$fa2, $s5, 32
	fadd.d	$fa2, $fa0, $ft3
	fst.d	$fa2, $s5, 40
	fadd.d	$fa1, $fa1, $ft4
	fst.d	$fa1, $s5, 48
	fsub.d	$fa0, $fa0, $ft3
	fst.d	$fa0, $s5, 56
	fld.d	$fa5, $s8, -120
	fld.d	$fa0, $s5, 128
	fld.d	$fa1, $s5, 200
	fld.d	$fa2, $s5, 136
	fld.d	$fa7, $s5, 192
	fld.d	$fa6, $s8, -96
	fld.d	$ft0, $s8, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s5, 160
	fld.d	$ft2, $s5, 232
	fld.d	$ft3, $s5, 168
	fld.d	$ft4, $s5, 224
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s5, 144
	fld.d	$ft4, $s5, 216
	fld.d	$ft6, $s5, 152
	fld.d	$ft7, $s5, 208
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s5, 176
	fld.d	$ft7, $s5, 248
	fld.d	$ft9, $s5, 184
	fld.d	$ft10, $s5, 240
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s5, 128
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s5, 136
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s5, 144
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s5, 152
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s5, 160
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s5, 168
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s5, 176
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s5, 184
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s5, 192
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s5, 200
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s5, 208
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s5, 216
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s5, 224
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s5, 232
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s5, 240
	fsub.d	$fa0, $fa1, $fa2
	fld.d	$fa1, $s5, 256
	fld.d	$fa2, $s5, 320
	fld.d	$fa3, $s5, 264
	fld.d	$fa4, $s5, 328
	fst.d	$fa0, $s5, 248
	fld.d	$fa5, $s8, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s5, 288
	fld.d	$ft0, $s5, 352
	fld.d	$ft1, $s5, 296
	fld.d	$ft2, $s5, 360
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s5, 272
	fld.d	$ft4, $s5, 336
	fld.d	$ft5, $s5, 280
	fld.d	$ft6, $s5, 344
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s5, 304
	fld.d	$ft8, $s5, 368
	fld.d	$ft9, $s5, 312
	fld.d	$ft10, $s5, 376
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s5, 320
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s5, 328
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s5, 336
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s5, 344
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s5, 352
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s5, 360
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s5, 368
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s5, 376
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s5, 256
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 264
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 272
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 280
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s5, 288
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s5, 296
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s5, 304
	fsub.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $s5, 312
	fld.d	$fa5, $s8, -120
	fld.d	$fa0, $s5, 384
	fld.d	$fa1, $s5, 456
	fld.d	$fa2, $s5, 392
	fld.d	$fa7, $s5, 448
	fld.d	$fa6, $s8, -96
	fld.d	$ft0, $s8, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s5, 416
	fld.d	$ft2, $s5, 488
	fld.d	$ft3, $s5, 424
	fld.d	$ft4, $s5, 480
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s5, 400
	fld.d	$ft4, $s5, 472
	fld.d	$ft6, $s5, 408
	fld.d	$ft7, $s5, 464
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s5, 432
	fld.d	$ft7, $s5, 504
	fld.d	$ft9, $s5, 440
	fld.d	$ft10, $s5, 496
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s5, 384
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s5, 392
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s5, 400
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s5, 408
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s5, 416
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s5, 424
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s5, 432
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s5, 440
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s5, 448
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s5, 456
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s5, 464
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s5, 472
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s5, 480
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s5, 488
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s5, 496
	fsub.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $s5, 504
	alsl.d	$s5, $fp, $s6, 3
	slli.d	$s1, $fp, 3
	move	$a0, $s0
	move	$a1, $s5
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	fldx.d	$fa0, $s6, $s1
	fld.d	$fa1, $s5, 64
	fld.d	$fa2, $s5, 8
	fld.d	$fa3, $s5, 72
	fld.d	$fa4, $s8, -120
	fadd.d	$fa5, $fa0, $fa1
	fadd.d	$fa6, $fa2, $fa3
	fld.d	$fa7, $s5, 32
	fld.d	$ft0, $s5, 96
	fld.d	$ft1, $s5, 40
	fld.d	$ft2, $s5, 104
	fsub.d	$ft3, $fa0, $fa1
	fsub.d	$ft4, $fa2, $fa3
	fadd.d	$fa0, $fa7, $ft0
	fadd.d	$ft5, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa5, $fa0
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa1, $fa5, $fa0
	fsub.d	$fa0, $fa6, $ft5
	fsub.d	$fa5, $ft3, $ft0
	fadd.d	$fa6, $ft4, $fa7
	fld.d	$ft1, $s5, 16
	fld.d	$ft2, $s5, 80
	fld.d	$ft5, $s5, 24
	fld.d	$ft6, $s5, 88
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa7, $ft4, $fa7
	fadd.d	$ft3, $ft1, $ft2
	fadd.d	$ft4, $ft5, $ft6
	fld.d	$ft7, $s5, 48
	fld.d	$ft8, $s5, 112
	fld.d	$ft9, $s5, 56
	fld.d	$ft10, $s5, 120
	fsub.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $ft3, $ft5
	fadd.d	$ft10, $ft4, $ft6
	fsub.d	$ft3, $ft3, $ft5
	fsub.d	$ft4, $ft4, $ft6
	fsub.d	$ft5, $ft1, $ft8
	fadd.d	$ft6, $ft2, $ft7
	fadd.d	$ft1, $ft1, $ft8
	fsub.d	$ft2, $ft2, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa4, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa4, $ft5
	fsub.d	$ft6, $ft1, $ft2
	fmul.d	$ft6, $fa4, $ft6
	fadd.d	$ft1, $ft2, $ft1
	fmul.d	$fa4, $fa4, $ft1
	fadd.d	$ft1, $fa5, $ft7
	fst.d	$ft1, $s5, 64
	fadd.d	$ft1, $fa6, $ft5
	fst.d	$ft1, $s5, 72
	fsub.d	$fa5, $fa5, $ft7
	fst.d	$fa5, $s5, 80
	fsub.d	$fa5, $fa6, $ft5
	fst.d	$fa5, $s5, 88
	fsub.d	$fa5, $ft0, $fa4
	fst.d	$fa5, $s5, 96
	fadd.d	$fa5, $fa7, $ft6
	fst.d	$fa5, $s5, 104
	fadd.d	$fa4, $ft0, $fa4
	fst.d	$fa4, $s5, 112
	fsub.d	$fa4, $fa7, $ft6
	fst.d	$fa4, $s5, 120
	fadd.d	$fa4, $fa3, $ft9
	fstx.d	$fa4, $s6, $s1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 8
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 16
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 24
	fsub.d	$fa2, $fa1, $ft4
	fst.d	$fa2, $s5, 32
	fadd.d	$fa2, $fa0, $ft3
	fst.d	$fa2, $s5, 40
	fadd.d	$fa1, $fa1, $ft4
	fst.d	$fa1, $s5, 48
	fsub.d	$fa0, $fa0, $ft3
	fst.d	$fa0, $s5, 56
	fld.d	$fa5, $s8, -120
	fld.d	$fa0, $s5, 128
	fld.d	$fa1, $s5, 200
	fld.d	$fa2, $s5, 136
	fld.d	$fa7, $s5, 192
	fld.d	$fa6, $s8, -96
	fld.d	$ft0, $s8, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s5, 160
	fld.d	$ft2, $s5, 232
	fld.d	$ft3, $s5, 168
	fld.d	$ft4, $s5, 224
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s5, 144
	fld.d	$ft4, $s5, 216
	fld.d	$ft6, $s5, 152
	fld.d	$ft7, $s5, 208
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s5, 176
	fld.d	$ft7, $s5, 248
	fld.d	$ft9, $s5, 184
	fld.d	$ft10, $s5, 240
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s5, 128
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s5, 136
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s5, 144
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s5, 152
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s5, 160
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s5, 168
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s5, 176
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s5, 184
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s5, 192
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s5, 200
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s5, 208
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s5, 216
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s5, 224
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s5, 232
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s5, 240
	fsub.d	$fa0, $fa1, $fa2
	fld.d	$fa1, $s5, 256
	fld.d	$fa2, $s5, 320
	fld.d	$fa3, $s5, 264
	fld.d	$fa4, $s5, 328
	fst.d	$fa0, $s5, 248
	fld.d	$fa5, $s8, -120
	fadd.d	$fa0, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $s5, 288
	fld.d	$ft0, $s5, 352
	fld.d	$ft1, $s5, 296
	fld.d	$ft2, $s5, 360
	fsub.d	$ft3, $fa1, $fa2
	fsub.d	$fa4, $fa3, $fa4
	fadd.d	$fa1, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa2, $fa6, $ft4
	fsub.d	$fa1, $fa0, $fa1
	fsub.d	$fa0, $fa6, $ft4
	fsub.d	$fa6, $ft3, $ft0
	fadd.d	$ft1, $fa4, $fa7
	fld.d	$ft2, $s5, 272
	fld.d	$ft4, $s5, 336
	fld.d	$ft5, $s5, 280
	fld.d	$ft6, $s5, 344
	fadd.d	$ft0, $ft3, $ft0
	fsub.d	$fa4, $fa4, $fa7
	fadd.d	$fa7, $ft2, $ft4
	fadd.d	$ft3, $ft5, $ft6
	fld.d	$ft7, $s5, 304
	fld.d	$ft8, $s5, 368
	fld.d	$ft9, $s5, 312
	fld.d	$ft10, $s5, 376
	fsub.d	$ft2, $ft2, $ft4
	fsub.d	$ft4, $ft5, $ft6
	fadd.d	$ft5, $ft7, $ft8
	fadd.d	$ft6, $ft9, $ft10
	fsub.d	$ft7, $ft7, $ft8
	fsub.d	$ft8, $ft9, $ft10
	fadd.d	$ft9, $fa7, $ft5
	fadd.d	$ft10, $ft3, $ft6
	fsub.d	$fa7, $fa7, $ft5
	fsub.d	$ft3, $ft3, $ft6
	fsub.d	$ft5, $ft2, $ft8
	fadd.d	$ft6, $ft4, $ft7
	fadd.d	$ft2, $ft2, $ft8
	fsub.d	$ft4, $ft4, $ft7
	fsub.d	$ft7, $ft5, $ft6
	fmul.d	$ft7, $fa5, $ft7
	fadd.d	$ft5, $ft6, $ft5
	fmul.d	$ft5, $fa5, $ft5
	fsub.d	$ft6, $ft2, $ft4
	fmul.d	$ft6, $fa5, $ft6
	fadd.d	$ft2, $ft4, $ft2
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$ft2, $fa6, $ft7
	fst.d	$ft2, $s5, 320
	fadd.d	$ft2, $ft1, $ft5
	fst.d	$ft2, $s5, 328
	fsub.d	$fa6, $fa6, $ft7
	fst.d	$fa6, $s5, 336
	fsub.d	$fa6, $ft1, $ft5
	fst.d	$fa6, $s5, 344
	fsub.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s5, 352
	fadd.d	$fa6, $fa4, $ft6
	fst.d	$fa6, $s5, 360
	fadd.d	$fa5, $ft0, $fa5
	fst.d	$fa5, $s5, 368
	fsub.d	$fa4, $fa4, $ft6
	fst.d	$fa4, $s5, 376
	fadd.d	$fa4, $fa3, $ft9
	fst.d	$fa4, $s5, 256
	fadd.d	$fa4, $fa2, $ft10
	fst.d	$fa4, $s5, 264
	fsub.d	$fa3, $fa3, $ft9
	fst.d	$fa3, $s5, 272
	fsub.d	$fa2, $fa2, $ft10
	fst.d	$fa2, $s5, 280
	fsub.d	$fa2, $fa1, $ft3
	fst.d	$fa2, $s5, 288
	fadd.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $s5, 296
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s5, 304
	fsub.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $s5, 312
	fld.d	$fa5, $s8, -120
	fld.d	$fa0, $s5, 384
	fld.d	$fa1, $s5, 456
	fld.d	$fa2, $s5, 392
	fld.d	$fa7, $s5, 448
	fld.d	$fa6, $s8, -96
	fld.d	$ft0, $s8, -88
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $s5, 416
	fld.d	$ft2, $s5, 488
	fld.d	$ft3, $s5, 424
	fld.d	$ft4, $s5, 480
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $s5, 400
	fld.d	$ft4, $s5, 472
	fld.d	$ft6, $s5, 408
	fld.d	$ft7, $s5, 464
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $s5, 432
	fld.d	$ft7, $s5, 504
	fld.d	$ft9, $s5, 440
	fld.d	$ft10, $s5, 496
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $s5, 384
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $s5, 392
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $s5, 400
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $s5, 408
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $s5, 416
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $s5, 424
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $s5, 432
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $s5, 440
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $s5, 448
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $s5, 456
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $s5, 464
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $s5, 472
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $s5, 480
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $s5, 488
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s5, 496
	fsub.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $s5, 504
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a1
	bge	$fp, $s7, .LBB33_14
.LBB33_23:                              #   Parent Loop BB33_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s5, $fp, $a0, 3
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 128
	bne	$s0, $a0, .LBB33_22
# %bb.24:                               #   in Loop: Header=BB33_23 Depth=2
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 256
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 512
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 768
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	alsl.d	$s5, $fp, $s6, 3
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cftmdl2)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 256
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 512
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 768
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a1
	blt	$fp, $s7, .LBB33_23
	b	.LBB33_14
.LBB33_25:                              # %._crit_edge135
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end33:
	.size	cftexp2, .Lfunc_end33-cftexp2
                                        # -- End function
	.globl	cftfx42                         # -- Begin function cftfx42
	.p2align	5
	.type	cftfx42,@function
cftfx42:                                # @cftfx42
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ori	$a1, $zero, 128
	alsl.d	$s1, $a2, $a3, 3
	bne	$a0, $a1, .LBB34_2
# %bb.1:
	addi.d	$s0, $s1, -64
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 256
	addi.d	$s1, $s1, -256
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cftf162)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 512
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf161)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 768
	move	$a1, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(cftf162)
	jr	$t8
.LBB34_2:
	addi.d	$s0, $s1, -128
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf081)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 128
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf082)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 256
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cftf081)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 384
	move	$a1, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(cftf082)
	jr	$t8
.Lfunc_end34:
	.size	cftfx42, .Lfunc_end34-cftfx42
                                        # -- End function
	.globl	cftf162                         # -- Begin function cftf162
	.p2align	5
	.type	cftf162,@function
cftf162:                                # @cftf162
# %bb.0:
	addi.d	$sp, $sp, -176
	fst.d	$fs0, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 112                  # 8-byte Folded Spill
	fld.d	$fa1, $a1, 32
	fld.d	$fa7, $a1, 40
	fld.d	$fa0, $a0, 16
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	fld.d	$ft0, $a0, 152
	fld.d	$ft1, $a0, 24
	fld.d	$ft2, $a0, 144
	fld.d	$ft13, $a1, 64
	fld.d	$ft14, $a1, 72
	fsub.d	$fa2, $fa0, $ft0
	fadd.d	$fa4, $ft1, $ft2
	fneg.d	$fa0, $fa4
	fmul.d	$fa0, $fa7, $fa0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	fld.d	$ft8, $a0, 80
	fld.d	$ft10, $a0, 216
	fld.d	$ft9, $a0, 88
	fld.d	$ft11, $a0, 208
	fmul.d	$fa2, $fa7, $fa2
	fmadd.d	$fa0, $fa1, $fa4, $fa2
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fadd.d	$fa5, $ft8, $ft10
	fsub.d	$fa6, $ft9, $ft11
	fmul.d	$fa4, $fa7, $fa6
	fmadd.d	$fa0, $fa1, $fa5, $fa4
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fneg.d	$fa5, $fa5
	fld.d	$ft6, $a0, 32
	fld.d	$ft7, $a0, 168
	fld.d	$ft12, $a0, 40
	fld.d	$ft15, $a0, 160
	fmul.d	$fa5, $fa7, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa5
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft4, $ft12, $ft15
	fneg.d	$fa6, $ft4
	fmul.d	$fa6, $ft14, $fa6
	fmadd.d	$fa0, $ft13, $ft3, $fa6
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fld.d	$fs0, $a0, 96
	fld.d	$fs1, $a0, 232
	fld.d	$fs2, $a0, 104
	fld.d	$fs3, $a0, 224
	fmul.d	$ft3, $ft14, $ft3
	fmadd.d	$fa0, $ft13, $ft4, $ft3
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	fsub.d	$ft5, $fs0, $fs1
	fadd.d	$fs4, $fs2, $fs3
	fneg.d	$ft4, $fs4
	fmul.d	$ft4, $ft13, $ft4
	fmadd.d	$fa0, $ft14, $ft5, $ft4
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fmul.d	$ft5, $ft13, $ft5
	fmadd.d	$fa0, $ft14, $fs4, $ft5
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fadd.d	$ft7, $ft6, $ft7
	fsub.d	$ft12, $ft12, $ft15
	fneg.d	$ft6, $ft12
	fmul.d	$ft6, $ft13, $ft6
	fmadd.d	$ft6, $ft14, $ft7, $ft6
	fmul.d	$ft7, $ft13, $ft7
	fmadd.d	$fa0, $ft14, $ft12, $ft7
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fadd.d	$ft15, $fs0, $fs1
	fsub.d	$fs0, $fs2, $fs3
	fneg.d	$ft12, $fs0
	fmul.d	$ft12, $ft14, $ft12
	fmadd.d	$ft12, $ft13, $ft15, $ft12
	fmul.d	$ft14, $ft14, $ft15
	fmadd.d	$ft13, $ft13, $fs0, $ft14
	fld.d	$fs2, $a0, 48
	fld.d	$fs3, $a0, 112
	fld.d	$fs4, $a0, 248
	fld.d	$fs5, $a0, 120
	fld.d	$fs6, $a0, 240
	fld.d	$fs7, $a0, 184
	fld.d	$fa3, $a0, 56
	fsub.d	$ft15, $fs3, $fs4
	fadd.d	$fs0, $fs5, $fs6
	fneg.d	$ft14, $fs0
	fmul.d	$ft14, $fa1, $ft14
	fmadd.d	$ft14, $fa7, $ft15, $ft14
	fld.d	$fa2, $a0, 176
	fmul.d	$ft15, $fa1, $ft15
	fmadd.d	$ft15, $fa7, $fs0, $ft15
	fadd.d	$fs1, $fs2, $fs7
	fsub.d	$fa0, $fa3, $fa2
	fmul.d	$fs0, $fa1, $fa0
	fmadd.d	$fs0, $fa7, $fs1, $fs0
	fneg.d	$fs1, $fs1
	fmul.d	$fa1, $fa1, $fs1
	fmadd.d	$fs1, $fa7, $fa0, $fa1
	fsub.d	$fa0, $ft8, $ft10
	fld.d	$fa7, $a1, 48
	fld.d	$ft8, $a1, 56
	fadd.d	$fa1, $ft9, $ft11
	fneg.d	$ft9, $fa1
	fmul.d	$ft9, $fa7, $ft9
	fmadd.d	$ft9, $ft8, $fa0, $ft9
	fmul.d	$fa0, $fa7, $fa0
	fmadd.d	$ft5, $ft8, $fa1, $fa0
	fld.d	$fa0, $sp, 56                   # 8-byte Folded Reload
	fadd.d	$ft0, $fa0, $ft0
	fld.d	$fa1, $a1, 8
	fsub.d	$ft1, $ft1, $ft2
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $ft8, $ft2
	fmadd.d	$ft2, $fa7, $ft0, $ft2
	fmul.d	$ft0, $ft8, $ft0
	fmadd.d	$ft0, $fa7, $ft1, $ft0
	fld.d	$ft1, $a0, 0
	fsub.d	$ft10, $fs2, $fs7
	fld.d	$fs2, $a0, 64
	fadd.d	$fa2, $fa3, $fa2
	fneg.d	$fa3, $fa2
	fmul.d	$fa3, $ft8, $fa3
	fmadd.d	$fs7, $fa7, $ft10, $fa3
	fmul.d	$fa3, $ft8, $ft10
	fmadd.d	$ft4, $fa7, $fa2, $fa3
	fld.d	$fa2, $a0, 200
	fadd.d	$ft10, $fs3, $fs4
	fld.d	$fs3, $a0, 72
	fsub.d	$ft11, $fs5, $fs6
	fneg.d	$fs4, $ft11
	fmul.d	$fs4, $fa7, $fs4
	fmadd.d	$fs6, $ft8, $ft10, $fs4
	fmul.d	$fa7, $fa7, $ft10
	fld.d	$fs4, $a0, 192
	fmadd.d	$fa5, $ft8, $ft11, $fa7
	fld.d	$fa7, $a0, 136
	fsub.d	$ft8, $fs2, $fa2
	fadd.d	$ft10, $fs3, $fs4
	fsub.d	$ft11, $ft8, $ft10
	fadd.d	$ft8, $ft8, $ft10
	fmul.d	$ft10, $fa1, $ft11
	fsub.d	$ft11, $ft1, $fa7
	fld.d	$fs5, $a0, 8
	fld.d	$fa0, $a0, 128
	fadd.d	$ft3, $ft11, $ft10
	fsub.d	$ft10, $ft11, $ft10
	fmul.d	$ft8, $fa1, $ft8
	fadd.d	$ft11, $fs5, $fa0
	fadd.d	$fa6, $ft11, $ft8
	fsub.d	$ft11, $ft11, $ft8
	fadd.d	$fa7, $ft1, $fa7
	fsub.d	$fa0, $fs5, $fa0
	fadd.d	$fa2, $fs2, $fa2
	fsub.d	$ft1, $fs3, $fs4
	fsub.d	$ft8, $fa2, $ft1
	fadd.d	$fa2, $fa2, $ft1
	fmul.d	$fa2, $fa1, $fa2
	fsub.d	$fa3, $fa7, $fa2
	fst.d	$fa3, $sp, 16                   # 8-byte Folded Spill
	fadd.d	$fa2, $fa7, $fa2
	fst.d	$fa2, $sp, 56                   # 8-byte Folded Spill
	fmul.d	$fa2, $fa1, $ft8
	fadd.d	$fs4, $fa0, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fld.d	$fa0, $sp, 104                  # 8-byte Folded Reload
	fadd.d	$fa4, $fa0, $ft9
	fsub.d	$fs2, $fa0, $ft9
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fadd.d	$fa3, $fa0, $ft5
	fsub.d	$fs3, $fa0, $ft5
	fld.d	$fa0, $sp, 88                   # 8-byte Folded Reload
	fsub.d	$ft8, $ft2, $fa0
	fadd.d	$fa0, $ft2, $fa0
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fsub.d	$ft9, $ft0, $fa0
	fadd.d	$fa0, $ft0, $fa0
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fld.d	$fa0, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 48                   # 8-byte Folded Reload
	fadd.d	$ft0, $fa0, $fa2
	fsub.d	$ft1, $fa0, $fa2
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fa7, $sp, 40                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa0, $fa7
	fsub.d	$fa7, $fa0, $fa7
	fsub.d	$ft7, $ft6, $ft12
	fadd.d	$fa0, $ft6, $ft12
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fld.d	$fa0, $sp, 32                   # 8-byte Folded Reload
	fsub.d	$ft2, $fa0, $ft13
	fadd.d	$fs5, $fa0, $ft13
	fadd.d	$ft13, $fs7, $ft14
	fsub.d	$fs7, $fs7, $ft14
	fadd.d	$ft14, $ft4, $ft15
	fsub.d	$ft15, $ft4, $ft15
	fadd.d	$ft5, $fs0, $fs6
	fsub.d	$ft12, $fs0, $fs6
	fadd.d	$ft6, $fs1, $fa5
	fsub.d	$ft4, $fs1, $fa5
	fadd.d	$fs0, $ft3, $ft0
	fadd.d	$fs1, $fa4, $ft13
	fadd.d	$fs6, $fs0, $fs1
	fst.d	$fs6, $a0, 0
	fadd.d	$fs6, $fa6, $fa2
	fadd.d	$fa0, $fa3, $ft14
	fadd.d	$fa5, $fs6, $fa0
	fst.d	$fa5, $a0, 8
	fsub.d	$fa5, $fs0, $fs1
	fst.d	$fa5, $a0, 16
	fsub.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $a0, 24
	fsub.d	$fa0, $ft3, $ft0
	fsub.d	$fa2, $fa6, $fa2
	fsub.d	$fa4, $fa4, $ft13
	fsub.d	$fa3, $fa3, $ft14
	fsub.d	$fa5, $fa0, $fa3
	fst.d	$fa5, $a0, 32
	fadd.d	$fa5, $fa2, $fa4
	fst.d	$fa5, $a0, 40
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a0, 48
	fsub.d	$fa0, $fa2, $fa4
	fst.d	$fa0, $a0, 56
	fsub.d	$fa0, $ft10, $fa7
	fadd.d	$fa2, $ft11, $ft1
	fsub.d	$fa3, $fs2, $ft15
	fadd.d	$fa4, $fs3, $fs7
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa1, $fa5
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa1, $fa3
	fadd.d	$fa4, $fa0, $fa5
	fst.d	$fa4, $a0, 64
	fadd.d	$fa4, $fa2, $fa3
	fst.d	$fa4, $a0, 72
	fsub.d	$fa0, $fa0, $fa5
	fst.d	$fa0, $a0, 80
	fsub.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $a0, 88
	fadd.d	$fa0, $ft10, $fa7
	fsub.d	$fa2, $ft11, $ft1
	fadd.d	$fa3, $fs2, $ft15
	fsub.d	$fa4, $fs3, $fs7
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa1, $fa5
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa1, $fa3
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $a0, 96
	fadd.d	$fa4, $fa2, $fa5
	fst.d	$fa4, $a0, 104
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a0, 112
	fsub.d	$fa0, $fa2, $fa5
	fst.d	$fa0, $a0, 120
	fld.d	$fa6, $sp, 16                   # 8-byte Folded Reload
	fadd.d	$fa0, $fa6, $ft7
	fadd.d	$fa2, $fs4, $ft2
	fsub.d	$fa3, $ft8, $ft5
	fsub.d	$fa4, $ft9, $ft6
	fadd.d	$fa5, $fa0, $fa3
	fst.d	$fa5, $a0, 128
	fadd.d	$fa5, $fa2, $fa4
	fst.d	$fa5, $a0, 136
	fsub.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a0, 144
	fsub.d	$fa0, $fa2, $fa4
	fst.d	$fa0, $a0, 152
	fsub.d	$fa0, $fa6, $ft7
	fsub.d	$fa2, $fs4, $ft2
	fadd.d	$fa3, $ft8, $ft5
	fadd.d	$fa4, $ft9, $ft6
	fsub.d	$fa5, $fa0, $fa4
	fst.d	$fa5, $a0, 160
	fadd.d	$fa5, $fa2, $fa3
	fst.d	$fa5, $a0, 168
	fadd.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a0, 176
	fsub.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $a0, 184
	fld.d	$fa6, $sp, 56                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa6, $fs5
	fld.d	$fa7, $sp, 24                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 88                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa7, $ft2
	fld.d	$ft0, $sp, 104                  # 8-byte Folded Reload
	fadd.d	$fa3, $ft0, $ft4
	fld.d	$ft1, $sp, 96                   # 8-byte Folded Reload
	fsub.d	$fa4, $ft1, $ft12
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa1, $fa5
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa1, $fa3
	fadd.d	$fa4, $fa0, $fa5
	fst.d	$fa4, $a0, 192
	fadd.d	$fa4, $fa2, $fa3
	fst.d	$fa4, $a0, 200
	fsub.d	$fa0, $fa0, $fa5
	fst.d	$fa0, $a0, 208
	fsub.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $a0, 216
	fadd.d	$fa0, $fa6, $fs5
	fsub.d	$fa2, $fa7, $ft2
	fsub.d	$fa3, $ft0, $ft4
	fadd.d	$fa4, $ft1, $ft12
	fsub.d	$fa5, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa1, $fa5
	fmul.d	$fa1, $fa1, $fa3
	fsub.d	$fa3, $fa0, $fa1
	fst.d	$fa3, $a0, 224
	fadd.d	$fa3, $fa2, $fa4
	fst.d	$fa3, $a0, 232
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, 240
	fsub.d	$fa0, $fa2, $fa4
	fst.d	$fa0, $a0, 248
	fld.d	$fs7, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 168                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end35:
	.size	cftf162, .Lfunc_end35-cftf162
                                        # -- End function
	.globl	cftf082                         # -- Begin function cftf082
	.p2align	5
	.type	cftf082,@function
cftf082:                                # @cftf082
# %bb.0:
	fld.d	$fa5, $a1, 8
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, 72
	fld.d	$fa2, $a0, 8
	fld.d	$fa7, $a0, 64
	fld.d	$fa6, $a1, 32
	fld.d	$ft0, $a1, 40
	fsub.d	$fa3, $fa0, $fa1
	fadd.d	$fa4, $fa2, $fa7
	fld.d	$ft1, $a0, 32
	fld.d	$ft2, $a0, 104
	fld.d	$ft3, $a0, 40
	fld.d	$ft4, $a0, 96
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa7
	fsub.d	$fa2, $ft1, $ft2
	fadd.d	$fa7, $ft3, $ft4
	fsub.d	$ft5, $fa2, $fa7
	fmul.d	$ft5, $fa5, $ft5
	fadd.d	$fa2, $fa2, $fa7
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$ft1, $ft1, $ft2
	fsub.d	$ft2, $ft3, $ft4
	fsub.d	$fa2, $ft1, $ft2
	fmul.d	$fa2, $fa5, $fa2
	fld.d	$ft3, $a0, 16
	fld.d	$ft4, $a0, 88
	fld.d	$ft6, $a0, 24
	fld.d	$ft7, $a0, 80
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$fa5, $fa5, $ft1
	fsub.d	$ft1, $ft3, $ft4
	fadd.d	$ft2, $ft6, $ft7
	fneg.d	$ft8, $ft2
	fmul.d	$ft8, $ft0, $ft8
	fmadd.d	$ft8, $fa6, $ft1, $ft8
	fmul.d	$ft1, $ft0, $ft1
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fadd.d	$ft2, $ft3, $ft4
	fsub.d	$ft3, $ft6, $ft7
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa6, $ft4
	fmadd.d	$ft4, $ft0, $ft2, $ft4
	fld.d	$ft6, $a0, 48
	fld.d	$ft7, $a0, 120
	fld.d	$ft9, $a0, 56
	fld.d	$ft10, $a0, 112
	fmul.d	$ft2, $fa6, $ft2
	fmadd.d	$ft2, $ft0, $ft3, $ft2
	fsub.d	$ft3, $ft6, $ft7
	fadd.d	$ft11, $ft9, $ft10
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $fa6, $ft12
	fmadd.d	$ft12, $ft0, $ft3, $ft12
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft3, $ft0, $ft11, $ft3
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft9, $ft10
	fneg.d	$ft9, $ft7
	fmul.d	$ft9, $ft0, $ft9
	fmadd.d	$ft9, $fa6, $ft6, $ft9
	fmul.d	$ft0, $ft0, $ft6
	fmadd.d	$fa6, $fa6, $ft7, $ft0
	fadd.d	$ft0, $fa3, $ft5
	fadd.d	$ft6, $fa4, $fa7
	fadd.d	$ft7, $ft8, $ft12
	fadd.d	$ft10, $ft1, $ft3
	fadd.d	$ft11, $ft0, $ft7
	fst.d	$ft11, $a0, 0
	fadd.d	$ft11, $ft6, $ft10
	fst.d	$ft11, $a0, 8
	fsub.d	$ft0, $ft0, $ft7
	fst.d	$ft0, $a0, 16
	fsub.d	$ft0, $ft6, $ft10
	fst.d	$ft0, $a0, 24
	fsub.d	$fa3, $fa3, $ft5
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa7, $ft8, $ft12
	fsub.d	$ft0, $ft1, $ft3
	fsub.d	$ft1, $fa3, $ft0
	fst.d	$ft1, $a0, 32
	fadd.d	$ft1, $fa4, $fa7
	fst.d	$ft1, $a0, 40
	fadd.d	$fa3, $fa3, $ft0
	fst.d	$fa3, $a0, 48
	fsub.d	$fa3, $fa4, $fa7
	fst.d	$fa3, $a0, 56
	fsub.d	$fa3, $fa0, $fa5
	fadd.d	$fa4, $fa1, $fa2
	fsub.d	$fa7, $ft4, $ft9
	fsub.d	$ft0, $ft2, $fa6
	fadd.d	$ft1, $fa3, $fa7
	fst.d	$ft1, $a0, 64
	fadd.d	$ft1, $fa4, $ft0
	fst.d	$ft1, $a0, 72
	fsub.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $a0, 80
	fsub.d	$fa3, $fa4, $ft0
	fst.d	$fa3, $a0, 88
	fadd.d	$fa0, $fa0, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $ft4, $ft9
	fadd.d	$fa3, $ft2, $fa6
	fsub.d	$fa4, $fa0, $fa3
	fst.d	$fa4, $a0, 96
	fadd.d	$fa4, $fa1, $fa2
	fst.d	$fa4, $a0, 104
	fadd.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a0, 112
	fsub.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $a0, 120
	ret
.Lfunc_end36:
	.size	cftf082, .Lfunc_end36-cftf082
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
