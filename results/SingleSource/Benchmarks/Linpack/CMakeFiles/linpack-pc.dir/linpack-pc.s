	.file	"linpack-pc.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function second
.LCPI0_0:
	.word	0x49742400                      # float 1.0E+6
	.text
	.globl	second
	.p2align	5
	.type	second,@function
second:                                 # @second
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI0_0)
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	second, .Lfunc_end0-second
                                        # -- End function
	.globl	what_date                       # -- Begin function what_date
	.p2align	5
	.type	what_date,@function
what_date:                              # @what_date
# %bb.0:
	ret
.Lfunc_end1:
	.size	what_date, .Lfunc_end1-what_date
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	0x3f10000000000000              # double 6.103515625E-5
.LCPI2_4:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI2_5:
	.dword	0x4124f49560000000              # double 686666.6875
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_1:
	.word	0x49742400                      # float 1.0E+6
.LCPI2_2:
	.word	0x42c80000                      # float 100
.LCPI2_3:
	.word	0x34000000                      # float 1.1920929E-7
.LCPI2_6:
	.word	0x3d656042                      # float 0.0560000017
.LCPI2_7:
	.word	0x43c80000                      # float 400
	.section	.text.unlikely.,"ax",@progbits
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 232                  # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1325
	pcalau12i	$a1, %pc_hi20(main.a)
	addi.d	$a1, $a1, %pc_lo12(main.a)
	move	$a2, $zero
	ori	$a3, $zero, 3125
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	fld.d	$fs0, $a4, %pc_lo12(.LCPI2_0)
	lu12i.w	$s5, -8
	ori	$a4, $zero, 400
	ori	$a5, $zero, 100
	.p2align	4, , 16
.LBB2_1:                                # %.preheader52.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	move	$a6, $zero
	.p2align	4, , 16
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 15, 0
	add.d	$a7, $a0, $s5
	movgr2fr.d	$fa0, $a7
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a1, $a6
	addi.d	$a6, $a6, 4
	bne	$a6, $a4, .LBB2_2
# %bb.3:                                # %._crit_edge.us.i
                                        #   in Loop: Header=BB2_1 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 804
	bne	$a2, $a5, .LBB2_1
# %bb.4:                                # %.preheader51.i
	pcalau12i	$a0, %pc_hi20(main.b)
	addi.d	$s1, $a0, %pc_lo12(main.b)
	ori	$a2, $zero, 400
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr27, $s1, 0
	vld	$vr26, $s1, 16
	vld	$vr25, $s1, 32
	vld	$vr23, $s1, 48
	vld	$vr22, $s1, 64
	vld	$vr21, $s1, 80
	vld	$vr20, $s1, 96
	vld	$vr19, $s1, 112
	vld	$vr18, $s1, 128
	vld	$vr17, $s1, 144
	vld	$vr16, $s1, 160
	vld	$vr15, $s1, 176
	vld	$vr14, $s1, 192
	vld	$vr13, $s1, 208
	vld	$vr12, $s1, 224
	vld	$vr11, $s1, 240
	vld	$vr10, $s1, 256
	vld	$vr9, $s1, 272
	vld	$vr8, $s1, 288
	vld	$vr7, $s1, 304
	vld	$vr6, $s1, 320
	vld	$vr5, $s1, 336
	vld	$vr4, $s1, 352
	vld	$vr3, $s1, 368
	fld.s	$fa2, $s1, 384
	fld.s	$fa1, $s1, 388
	fld.s	$fa0, $s1, 392
	pcalau12i	$a0, %pc_hi20(main.a)
	addi.d	$s2, $a0, %pc_lo12(main.a)
	fld.s	$fs4, $s1, 396
	addi.d	$a0, $s2, 208
	ori	$a1, $zero, 100
	.p2align	4, , 16
.LBB2_5:                                # %.preheader.us.i
                                        # =>This Inner Loop Header: Depth=1
	fst.s	$fa0, $sp, 224                  # 4-byte Folded Spill
	vld	$vr29, $a0, -208
	vld	$vr30, $a0, -192
	vld	$vr31, $a0, -176
	vld	$vr0, $a0, -160
	vfadd.s	$vr27, $vr27, $vr29
	vfadd.s	$vr26, $vr26, $vr30
	vfadd.s	$vr25, $vr25, $vr31
	vfadd.s	$vr23, $vr23, $vr0
	vld	$vr0, $a0, -144
	vld	$vr29, $a0, -128
	vld	$vr30, $a0, -112
	vld	$vr31, $a0, -96
	vfadd.s	$vr22, $vr22, $vr0
	vfadd.s	$vr21, $vr21, $vr29
	vfadd.s	$vr20, $vr20, $vr30
	vfadd.s	$vr19, $vr19, $vr31
	vld	$vr0, $a0, -80
	vld	$vr29, $a0, -64
	vld	$vr30, $a0, -48
	vld	$vr31, $a0, -32
	vfadd.s	$vr18, $vr18, $vr0
	vfadd.s	$vr17, $vr17, $vr29
	vfadd.s	$vr16, $vr16, $vr30
	vfadd.s	$vr15, $vr15, $vr31
	vld	$vr0, $a0, -16
	vld	$vr29, $a0, 0
	vld	$vr30, $a0, 16
	vld	$vr31, $a0, 32
	vfadd.s	$vr14, $vr14, $vr0
	vfadd.s	$vr13, $vr13, $vr29
	vfadd.s	$vr12, $vr12, $vr30
	vfadd.s	$vr11, $vr11, $vr31
	vld	$vr0, $a0, 48
	vld	$vr29, $a0, 64
	vld	$vr30, $a0, 80
	vld	$vr31, $a0, 96
	vfadd.s	$vr10, $vr10, $vr0
	vfadd.s	$vr9, $vr9, $vr29
	vfadd.s	$vr8, $vr8, $vr30
	vfadd.s	$vr7, $vr7, $vr31
	vld	$vr0, $a0, 112
	vld	$vr29, $a0, 128
	vld	$vr30, $a0, 144
	vld	$vr31, $a0, 160
	vfadd.s	$vr6, $vr6, $vr0
	vfadd.s	$vr5, $vr5, $vr29
	vfadd.s	$vr4, $vr4, $vr30
	vfadd.s	$vr3, $vr3, $vr31
	fld.s	$fa0, $a0, 176
	fld.s	$fs5, $a0, 180
	fld.s	$fs6, $a0, 184
	fld.s	$fs7, $a0, 188
	fadd.s	$fa2, $fa2, $fa0
	fld.s	$fa0, $sp, 224                  # 4-byte Folded Reload
	fadd.s	$fa1, $fa1, $fs5
	fadd.s	$fa0, $fa0, $fs6
	fadd.s	$fs4, $fs4, $fs7
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 804
	bnez	$a1, .LBB2_5
# %bb.6:                                # %matgen.exit
	vst	$vr27, $s1, 0
	vst	$vr26, $s1, 16
	vst	$vr25, $s1, 32
	vst	$vr23, $s1, 48
	vst	$vr22, $s1, 64
	vst	$vr21, $s1, 80
	vst	$vr20, $s1, 96
	vst	$vr19, $s1, 112
	vst	$vr18, $s1, 128
	vst	$vr17, $s1, 144
	vst	$vr16, $s1, 160
	vst	$vr15, $s1, 176
	vst	$vr14, $s1, 192
	vst	$vr13, $s1, 208
	vst	$vr12, $s1, 224
	vst	$vr11, $s1, 240
	vst	$vr10, $s1, 256
	vst	$vr9, $s1, 272
	vst	$vr8, $s1, 288
	vst	$vr7, $s1, 304
	vst	$vr6, $s1, 320
	vst	$vr5, $s1, 336
	vst	$vr4, $s1, 352
	vst	$vr3, $s1, 368
	fst.s	$fa2, $s1, 384
	fst.s	$fa1, $s1, 388
	fst.s	$fa0, $s1, 392
	fst.s	$fs4, $s1, 396
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	fld.s	$fs1, $a1, %pc_lo12(.LCPI2_1)
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fs2, $fa0, $fs1
	pcalau12i	$a0, %pc_hi20(main.ipvt)
	addi.d	$a3, $a0, %pc_lo12(main.ipvt)
	pcalau12i	$a0, %pc_hi20(main.info)
	addi.d	$a4, $a0, %pc_lo12(main.info)
	ori	$a1, $zero, 201
	ori	$a2, $zero, 100
	move	$a0, $s2
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(dgefa)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fst.s	$fs1, $sp, 100                  # 4-byte Folded Spill
	fdiv.s	$fa0, $fa0, $fs1
	fsub.s	$fa0, $fa0, $fs2
	pcalau12i	$a0, %pc_hi20(atime)
	addi.d	$a0, $a0, %pc_lo12(atime)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	addi.d	$s0, $s2, 20
	addi.d	$s3, $s1, 20
	addi.d	$s4, $s2, 4
	addi.d	$s6, $s1, 4
	ori	$s7, $zero, 99
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	movgr2fr.w	$fs2, $zero
	ori	$a2, $zero, 8
	ori	$a3, $zero, 99
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_7:                                #   in Loop: Header=BB2_9 Depth=1
	fcmp.ceq.s	$fcc0, $fa0, $fs2
	bceqz	$fcc0, .LBB2_11
.LBB2_8:                                # %daxpy.exit.i
                                        #   in Loop: Header=BB2_9 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$s0, $s0, 808
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 808
	addi.d	$s6, $s6, 4
	beq	$a1, $s7, .LBB2_18
.LBB2_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_17 Depth 2
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ldx.wu	$a6, $a5, $a4
	addi.w	$a5, $a6, 0
	slli.d	$a7, $a5, 2
	fldx.s	$fa0, $s1, $a7
	beq	$a1, $a6, .LBB2_7
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	fldx.s	$fa1, $s1, $a4
	alsl.d	$a5, $a5, $s1, 2
	fst.s	$fa1, $a5, 0
	fstx.s	$fa0, $s1, $a4
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_11:                               #   in Loop: Header=BB2_9 Depth=1
	sub.d	$a5, $s7, $a1
	bgeu	$a5, $a2, .LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_9 Depth=1
	move	$a4, $zero
	b	.LBB2_16
.LBB2_13:                               # %vector.ph530
                                        #   in Loop: Header=BB2_9 Depth=1
	move	$a6, $a3
	bstrins.d	$a6, $zero, 2, 0
	move	$a4, $a5
	bstrins.d	$a4, $zero, 2, 0
	vreplvei.w	$vr1, $vr0, 0
	move	$a7, $s3
	move	$t0, $s0
	.p2align	4, , 16
.LBB2_14:                               # %vector.body531
                                        #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t0, -16
	vld	$vr3, $t0, 0
	vld	$vr4, $a7, -16
	vld	$vr5, $a7, 0
	vfmul.s	$vr2, $vr1, $vr2
	vfmul.s	$vr3, $vr1, $vr3
	vfadd.s	$vr2, $vr4, $vr2
	vfadd.s	$vr3, $vr5, $vr3
	vst	$vr2, $a7, -16
	vst	$vr3, $a7, 0
	addi.d	$a6, $a6, -8
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	bnez	$a6, .LBB2_14
# %bb.15:                               # %middle.block538
                                        #   in Loop: Header=BB2_9 Depth=1
	beq	$a5, $a4, .LBB2_8
.LBB2_16:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB2_9 Depth=1
	alsl.d	$a5, $a4, $s4, 2
	alsl.d	$a6, $a4, $s6, 2
	.p2align	4, , 16
.LBB2_17:                               # %.lr.ph.i.i
                                        #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a5, 0
	fld.s	$fa2, $a6, 0
	fmul.s	$fa1, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a6, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	bne	$a3, $a4, .LBB2_17
	b	.LBB2_8
.LBB2_18:                               # %.lr.ph136.i.preheader
	move	$a1, $zero
	lu12i.w	$a3, 19
	ori	$t7, $a3, 1788
	add.d	$a2, $s2, $t7
	ori	$a3, $a3, 1772
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	add.d	$a3, $s2, $a3
	ori	$a4, $zero, 99
	ori	$a5, $zero, 804
	ori	$a6, $zero, 98
	ori	$a7, $zero, 100
	ori	$t0, $zero, 8
	ori	$t1, $zero, 99
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               # %daxpy.exit110.i
                                        #   in Loop: Header=BB2_20 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$t1, $t1, -1
	addi.d	$a2, $a2, -804
	addi.d	$a3, $a3, -804
	beq	$a1, $a7, .LBB2_29
.LBB2_20:                               # %.lr.ph136.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_25 Depth 2
                                        #     Child Loop BB2_28 Depth 2
	sub.d	$t3, $a4, $a1
	slli.d	$t2, $t3, 2
	fldx.s	$fa0, $s1, $t2
	alsl.d	$t4, $t3, $s2, 2
	mul.d	$t5, $t3, $a5
	fldx.s	$fa1, $t4, $t5
	fdiv.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $s1, $t2
	bltu	$a6, $a1, .LBB2_19
# %bb.21:                               # %.lr.ph136.i
                                        #   in Loop: Header=BB2_20 Depth=1
	fcmp.ceq.s	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB2_19
# %bb.22:                               # %.lr.ph.i106.i.preheader
                                        #   in Loop: Header=BB2_20 Depth=1
	bgeu	$t3, $t0, .LBB2_24
# %bb.23:                               #   in Loop: Header=BB2_20 Depth=1
	move	$t2, $zero
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_24:                               # %vector.ph542
                                        #   in Loop: Header=BB2_20 Depth=1
	move	$t4, $t1
	bstrins.d	$t4, $zero, 2, 0
	move	$t2, $t3
	bstrins.d	$t2, $zero, 2, 0
	addi.d	$t5, $s1, 16
	vreplvei.w	$vr1, $vr0, 0
	move	$t6, $a2
	.p2align	4, , 16
.LBB2_25:                               # %vector.body547
                                        #   Parent Loop BB2_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t6, -16
	vld	$vr3, $t6, 0
	vld	$vr4, $t5, -16
	vld	$vr5, $t5, 0
	vfmul.s	$vr2, $vr1, $vr2
	vfmul.s	$vr3, $vr1, $vr3
	vfsub.s	$vr2, $vr4, $vr2
	vfsub.s	$vr3, $vr5, $vr3
	vst	$vr2, $t5, -16
	vst	$vr3, $t5, 0
	addi.d	$t4, $t4, -8
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	bnez	$t4, .LBB2_25
# %bb.26:                               # %middle.block554
                                        #   in Loop: Header=BB2_20 Depth=1
	beq	$t3, $t2, .LBB2_19
.LBB2_27:                               # %.lr.ph.i106.i.preheader835
                                        #   in Loop: Header=BB2_20 Depth=1
	alsl.d	$t3, $t2, $a3, 2
	alsl.d	$t4, $t2, $s1, 2
	.p2align	4, , 16
.LBB2_28:                               # %.lr.ph.i106.i
                                        #   Parent Loop BB2_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t3, 0
	fld.s	$fa2, $t4, 0
	fmul.s	$fa1, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $t4, 0
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	bne	$t1, $t2, .LBB2_28
	b	.LBB2_19
.LBB2_29:                               # %dgesl.exit
	st.d	$t7, $sp, 40                    # 8-byte Folded Spill
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fld.s	$fs1, $sp, 100                  # 4-byte Folded Reload
	fdiv.s	$fs3, $fa0, $fs1
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fld.s	$fa1, $a0, 0
	fst.s	$fa1, $sp, 192                  # 4-byte Folded Spill
	fdiv.s	$fa0, $fa0, $fs1
	fsub.s	$fa0, $fa0, $fs3
	fst.s	$fa0, $sp, 184                  # 4-byte Folded Spill
	fst.s	$fa0, $a0, 60
	pcalau12i	$a0, %pc_hi20(main.x)
	addi.d	$s3, $a0, %pc_lo12(main.x)
	pcalau12i	$a0, %pc_hi20(main.b)
	addi.d	$a1, $a0, %pc_lo12(main.b)
	ori	$a2, $zero, 400
	ori	$fp, $zero, 400
	move	$a0, $s3
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a2, $zero, 1325
	ori	$a1, $zero, 3125
	ori	$a3, $zero, 100
	.p2align	4, , 16
.LBB2_30:                               # %.preheader52.us.i88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
	move	$a4, $zero
	.p2align	4, , 16
.LBB2_31:                               #   Parent Loop BB2_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a5, $a2, $s5
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $s2, $a4
	fcmp.clt.s	$fcc0, $fs2, $fa0
	addi.d	$a4, $a4, 4
	fsel	$fs2, $fs2, $fa0, $fcc0
	bne	$a4, $fp, .LBB2_31
# %bb.32:                               # %._crit_edge.us.i98
                                        #   in Loop: Header=BB2_30 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 804
	bne	$a0, $a3, .LBB2_30
# %bb.33:                               # %.preheader51.i101
	ori	$a2, $zero, 400
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr27, $fp, 0
	vld	$vr31, $fp, 16
	vld	$vr30, $fp, 32
	vld	$vr29, $fp, 48
	vld	$vr23, $fp, 64
	vld	$vr22, $fp, 80
	vld	$vr21, $fp, 96
	vld	$vr20, $fp, 112
	vld	$vr19, $fp, 128
	vld	$vr18, $fp, 144
	vld	$vr17, $fp, 160
	vld	$vr16, $fp, 176
	vld	$vr15, $fp, 192
	vld	$vr14, $fp, 208
	vld	$vr13, $fp, 224
	vld	$vr12, $fp, 240
	vld	$vr11, $fp, 256
	vld	$vr10, $fp, 272
	vld	$vr9, $fp, 288
	vld	$vr8, $fp, 304
	vld	$vr7, $fp, 320
	vld	$vr6, $fp, 336
	vld	$vr5, $fp, 352
	vld	$vr4, $fp, 368
	fld.s	$fa3, $fp, 384
	fld.s	$fa0, $fp, 388
	fld.s	$fs1, $fp, 392
	pcalau12i	$a0, %pc_hi20(main.a+208)
	addi.d	$a0, $a0, %pc_lo12(main.a+208)
	fld.s	$fa2, $fp, 396
	ori	$a2, $zero, 100
	.p2align	4, , 16
.LBB2_34:                               # %.preheader.us.i102
                                        # =>This Inner Loop Header: Depth=1
	fst.s	$fa0, $sp, 200                  # 4-byte Folded Spill
	fst.s	$fa2, $sp, 216                  # 4-byte Folded Spill
	vld	$vr28, $a0, -208
	fmov.s	$fa2, $fs1
	vld	$vr25, $a0, -192
	vld	$vr0, $a0, -176
	vld	$vr1, $a0, -160
	vfadd.s	$vr27, $vr27, $vr28
	vfadd.s	$vr31, $vr31, $vr25
	vfadd.s	$vr30, $vr30, $vr0
	vfadd.s	$vr29, $vr29, $vr1
	vld	$vr0, $a0, -144
	vld	$vr1, $a0, -128
	vld	$vr25, $a0, -112
	vld	$vr28, $a0, -96
	vfadd.s	$vr23, $vr23, $vr0
	vfadd.s	$vr22, $vr22, $vr1
	vfadd.s	$vr21, $vr21, $vr25
	vfadd.s	$vr20, $vr20, $vr28
	vld	$vr0, $a0, -80
	vld	$vr1, $a0, -64
	vld	$vr25, $a0, -48
	vld	$vr28, $a0, -32
	vfadd.s	$vr19, $vr19, $vr0
	vfadd.s	$vr18, $vr18, $vr1
	vfadd.s	$vr17, $vr17, $vr25
	vfadd.s	$vr16, $vr16, $vr28
	vld	$vr0, $a0, -16
	vld	$vr1, $a0, 0
	vld	$vr25, $a0, 16
	vld	$vr28, $a0, 32
	vfadd.s	$vr15, $vr15, $vr0
	vfadd.s	$vr14, $vr14, $vr1
	vfadd.s	$vr13, $vr13, $vr25
	vfadd.s	$vr12, $vr12, $vr28
	vld	$vr0, $a0, 48
	vld	$vr1, $a0, 64
	vld	$vr25, $a0, 80
	vld	$vr28, $a0, 96
	vfadd.s	$vr11, $vr11, $vr0
	vfadd.s	$vr10, $vr10, $vr1
	vfadd.s	$vr9, $vr9, $vr25
	vfadd.s	$vr8, $vr8, $vr28
	vld	$vr0, $a0, 112
	vld	$vr1, $a0, 128
	vld	$vr25, $a0, 144
	vld	$vr28, $a0, 160
	vfadd.s	$vr7, $vr7, $vr0
	vfadd.s	$vr6, $vr6, $vr1
	vfadd.s	$vr5, $vr5, $vr25
	vfadd.s	$vr4, $vr4, $vr28
	fld.s	$fa0, $a0, 176
	fld.s	$fa1, $a0, 180
	fld.s	$fs1, $a0, 184
	fld.s	$fs4, $a0, 188
	fadd.s	$fa3, $fa3, $fa0
	fld.s	$fa0, $sp, 200                  # 4-byte Folded Reload
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs1, $fa2, $fs1
	fld.s	$fa2, $sp, 216                  # 4-byte Folded Reload
	fadd.s	$fa2, $fa2, $fs4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 804
	bnez	$a2, .LBB2_34
# %bb.35:                               # %vector.body570.preheader
	vst	$vr27, $fp, 0
	vst	$vr31, $fp, 16
	vst	$vr30, $fp, 32
	vst	$vr29, $fp, 48
	vst	$vr23, $fp, 64
	vst	$vr22, $fp, 80
	vst	$vr21, $fp, 96
	vst	$vr20, $fp, 112
	vst	$vr19, $fp, 128
	vst	$vr18, $fp, 144
	vst	$vr17, $fp, 160
	vst	$vr16, $fp, 176
	vst	$vr15, $fp, 192
	vst	$vr14, $fp, 208
	vst	$vr13, $fp, 224
	vst	$vr12, $fp, 240
	vst	$vr11, $fp, 256
	vst	$vr10, $fp, 272
	vst	$vr9, $fp, 288
	vst	$vr8, $fp, 304
	vst	$vr7, $fp, 320
	vst	$vr6, $fp, 336
	vst	$vr5, $fp, 352
	vst	$vr4, $fp, 368
	fst.s	$fa3, $fp, 384
	fst.s	$fa0, $fp, 388
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	fst.s	$fs1, $fp, 392
	fst.s	$fa2, $fp, 396
	vbitrevi.w	$vr0, $vr0, 31
	vbitrevi.w	$vr1, $vr1, 31
	vld	$vr2, $fp, 32
	vld	$vr3, $fp, 48
	vst	$vr0, $fp, 0
	vst	$vr1, $fp, 16
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 64
	vld	$vr3, $fp, 80
	vst	$vr0, $fp, 32
	vst	$vr1, $fp, 48
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 96
	vld	$vr3, $fp, 112
	vst	$vr0, $fp, 64
	vst	$vr1, $fp, 80
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 128
	vld	$vr3, $fp, 144
	vst	$vr0, $fp, 96
	vst	$vr1, $fp, 112
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 160
	vld	$vr3, $fp, 176
	vst	$vr0, $fp, 128
	vst	$vr1, $fp, 144
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 192
	vld	$vr3, $fp, 208
	vst	$vr0, $fp, 160
	vst	$vr1, $fp, 176
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 224
	vld	$vr3, $fp, 240
	vst	$vr0, $fp, 192
	vst	$vr1, $fp, 208
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 256
	vld	$vr3, $fp, 272
	vst	$vr0, $fp, 224
	vst	$vr1, $fp, 240
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 288
	vld	$vr3, $fp, 304
	vst	$vr0, $fp, 256
	vst	$vr1, $fp, 272
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 320
	vld	$vr3, $fp, 336
	vst	$vr0, $fp, 288
	vst	$vr1, $fp, 304
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	vld	$vr2, $fp, 352
	vld	$vr3, $fp, 368
	vst	$vr0, $fp, 320
	vst	$vr1, $fp, 336
	vbitrevi.w	$vr0, $vr2, 31
	vbitrevi.w	$vr1, $vr3, 31
	fld.s	$fa2, $fp, 384
	vst	$vr0, $fp, 352
	vst	$vr1, $fp, 368
	fld.s	$fa0, $fp, 388
	fneg.s	$fa1, $fa2
	fst.s	$fa1, $fp, 384
	fld.s	$fa1, $fp, 392
	fneg.s	$fa0, $fa0
	fld.s	$fa2, $fp, 396
	fst.s	$fa0, $fp, 388
	fneg.s	$fa0, $fa1
	fst.s	$fa0, $fp, 392
	fneg.s	$fa0, $fa2
	fst.s	$fa0, $fp, 396
	pcalau12i	$a0, %pc_hi20(main.a)
	addi.d	$s2, $a0, %pc_lo12(main.a)
	ori	$a0, $zero, 100
	ori	$a2, $zero, 100
	ori	$a3, $zero, 201
	move	$a1, $fp
	move	$a4, $s3
	move	$a5, $s2
	pcaddu18i	$ra, %call36(dmxpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $zero
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 400
	fmov.s	$fs5, $fa0
	.p2align	4, , 16
.LBB2_36:                               # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a2, $a0
	fldx.s	$fa2, $s3, $a0
	fabs.s	$fa1, $fa1
	fcmp.clt.s	$fcc0, $fa1, $fs5
	fsel	$fs5, $fa1, $fs5, $fcc0
	fabs.s	$fa1, $fa2
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 4
	fsel	$fa0, $fa1, $fa0, $fcc0
	bne	$a0, $a1, .LBB2_36
# %bb.37:
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI2_3)
	fld.s	$fa3, $sp, 192                  # 4-byte Folded Reload
	fld.s	$fa4, $sp, 184                  # 4-byte Folded Reload
	fadd.s	$fs3, $fa3, $fa4
	fmul.s	$fa1, $fs2, $fa1
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fs1, $fs5, $fa0
	fld.s	$fa0, $s3, 0
	fld.s	$fa1, $s3, 396
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $fp, 0
	vldi	$vr2, -1040
	fadd.s	$fs2, $fa0, $fa2
	fadd.s	$fs4, $fa1, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	fcvt.d.s	$fa0, $fs1
	fcvt.d.s	$fa1, $fs5
	fcvt.d.s	$fa2, $fs2
	fcvt.d.s	$fa3, $fs4
	movfr2gr.d	$a5, $fa2
	movfr2gr.d	$a6, $fa3
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	lu52i.d	$a4, $zero, 1000
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 100
	ori	$s0, $zero, 100
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 201
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 55
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fst.s	$fs3, $a0, 120
	movgr2fr.w	$fa0, $zero
	fcmp.cule.s	$fcc0, $fs3, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	fmov.s	$fa1, $fa0
	bcnez	$fcc0, .LBB2_39
# %bb.38:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_4)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_5)
	fcvt.d.s	$fa2, $fs3
	fmul.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	vldi	$vr1, -1280
	fdiv.s	$fa1, $fa1, $fa0
.LBB2_39:                               # %.preheader52.us.i113.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI2_6)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 180
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	fst.s	$fa1, $a1, 240
	fst.s	$fa2, $sp, 84                   # 4-byte Folded Spill
	fdiv.s	$fa0, $fs3, $fa2
	fst.s	$fa0, $a1, 300
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	ori	$s4, $zero, 3125
	ori	$s6, $zero, 400
	addi.d	$s7, $s2, 208
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_40:                               # %.preheader52.us.i113.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_41 Depth 2
                                        #       Child Loop BB2_42 Depth 3
                                        #     Child Loop BB2_45 Depth 2
	move	$a5, $zero
	ori	$a2, $zero, 1325
	move	$a1, $s2
	.p2align	4, , 16
.LBB2_41:                               # %.preheader52.us.i113
                                        #   Parent Loop BB2_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_42 Depth 3
	move	$a3, $zero
	.p2align	4, , 16
.LBB2_42:                               #   Parent Loop BB2_40 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mul.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a4, $a2, $s5
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a1, $a3
	addi.d	$a3, $a3, 4
	bne	$a3, $s6, .LBB2_42
# %bb.43:                               # %._crit_edge.us.i123
                                        #   in Loop: Header=BB2_41 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 804
	bne	$a5, $s0, .LBB2_41
# %bb.44:                               # %.preheader51.i126
                                        #   in Loop: Header=BB2_40 Depth=1
	ori	$a2, $zero, 400
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	vld	$vr29, $a0, 0
	vld	$vr28, $a0, 16
	vld	$vr27, $a0, 32
	vld	$vr26, $a0, 48
	vld	$vr23, $a0, 64
	vld	$vr22, $a0, 80
	vld	$vr21, $a0, 96
	vld	$vr20, $a0, 112
	vld	$vr19, $a0, 128
	vld	$vr18, $a0, 144
	vld	$vr17, $a0, 160
	vld	$vr16, $a0, 176
	vld	$vr15, $a0, 192
	vld	$vr14, $a0, 208
	vld	$vr13, $a0, 224
	vld	$vr12, $a0, 240
	vld	$vr11, $a0, 256
	vld	$vr10, $a0, 272
	vld	$vr9, $a0, 288
	vld	$vr8, $a0, 304
	vld	$vr7, $a0, 320
	vld	$vr6, $a0, 336
	vld	$vr5, $a0, 352
	vld	$vr4, $a0, 368
	fld.s	$fa3, $a0, 384
	fld.s	$fa2, $a0, 388
	fld.s	$fa1, $a0, 392
	fld.s	$fa0, $a0, 396
	ori	$a2, $zero, 100
	move	$a1, $s7
	.p2align	4, , 16
.LBB2_45:                               # %.preheader.us.i127
                                        #   Parent Loop BB2_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa0, $sp, 216                  # 4-byte Folded Spill
	vld	$vr25, $a1, -208
	vld	$vr30, $a1, -192
	vld	$vr31, $a1, -176
	vld	$vr0, $a1, -160
	vfadd.s	$vr29, $vr29, $vr25
	vfadd.s	$vr28, $vr28, $vr30
	vfadd.s	$vr27, $vr27, $vr31
	vfadd.s	$vr26, $vr26, $vr0
	vld	$vr0, $a1, -144
	vld	$vr25, $a1, -128
	vld	$vr30, $a1, -112
	vld	$vr31, $a1, -96
	vfadd.s	$vr23, $vr23, $vr0
	vfadd.s	$vr22, $vr22, $vr25
	vfadd.s	$vr21, $vr21, $vr30
	vfadd.s	$vr20, $vr20, $vr31
	vld	$vr0, $a1, -80
	vld	$vr25, $a1, -64
	vld	$vr30, $a1, -48
	vld	$vr31, $a1, -32
	vfadd.s	$vr19, $vr19, $vr0
	vfadd.s	$vr18, $vr18, $vr25
	vfadd.s	$vr17, $vr17, $vr30
	vfadd.s	$vr16, $vr16, $vr31
	vld	$vr0, $a1, -16
	vld	$vr25, $a1, 0
	vld	$vr30, $a1, 16
	vld	$vr31, $a1, 32
	vfadd.s	$vr15, $vr15, $vr0
	vfadd.s	$vr14, $vr14, $vr25
	vfadd.s	$vr13, $vr13, $vr30
	vfadd.s	$vr12, $vr12, $vr31
	vld	$vr0, $a1, 48
	vld	$vr25, $a1, 64
	vld	$vr30, $a1, 80
	vld	$vr31, $a1, 96
	vfadd.s	$vr11, $vr11, $vr0
	vfadd.s	$vr10, $vr10, $vr25
	vfadd.s	$vr9, $vr9, $vr30
	vfadd.s	$vr8, $vr8, $vr31
	vld	$vr0, $a1, 112
	vld	$vr25, $a1, 128
	vld	$vr30, $a1, 144
	vld	$vr31, $a1, 160
	vfadd.s	$vr7, $vr7, $vr0
	vfadd.s	$vr6, $vr6, $vr25
	vfadd.s	$vr5, $vr5, $vr30
	vfadd.s	$vr4, $vr4, $vr31
	fld.s	$fa0, $a1, 176
	fld.s	$fs1, $a1, 180
	fld.s	$fs6, $a1, 184
	fld.s	$fs7, $a1, 188
	fadd.s	$fa3, $fa3, $fa0
	fld.s	$fa0, $sp, 216                  # 4-byte Folded Reload
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa1, $fa1, $fs6
	fadd.s	$fa0, $fa0, $fs7
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 804
	bnez	$a2, .LBB2_45
# %bb.46:                               # %matgen.exit137
                                        #   in Loop: Header=BB2_40 Depth=1
	vst	$vr29, $a0, 0
	vst	$vr28, $a0, 16
	vst	$vr27, $a0, 32
	vst	$vr26, $a0, 48
	vst	$vr23, $a0, 64
	vst	$vr22, $a0, 80
	vst	$vr21, $a0, 96
	vst	$vr20, $a0, 112
	vst	$vr19, $a0, 128
	vst	$vr18, $a0, 144
	vst	$vr17, $a0, 160
	vst	$vr16, $a0, 176
	vst	$vr15, $a0, 192
	vst	$vr14, $a0, 208
	vst	$vr13, $a0, 224
	vst	$vr12, $a0, 240
	vst	$vr11, $a0, 256
	vst	$vr10, $a0, 272
	vst	$vr9, $a0, 288
	vst	$vr8, $a0, 304
	vst	$vr7, $a0, 320
	vst	$vr6, $a0, 336
	vst	$vr5, $a0, 352
	vst	$vr4, $a0, 368
	fst.s	$fa3, $a0, 384
	fst.s	$fa2, $a0, 388
	fst.s	$fa1, $a0, 392
	addi.w	$s3, $s3, 1
	fst.s	$fa0, $a0, 396
	bne	$s3, $s0, .LBB2_40
# %bb.47:                               # %.preheader52.us.i113.preheader.preheader.1
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 100
	ori	$s0, $zero, 100
	move	$a3, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(main.a)
	addi.d	$s2, $a1, %pc_lo12(main.a)
	move	$s3, $zero
	ori	$s4, $zero, 3125
	ori	$s6, $zero, 400
	addi.d	$s7, $s2, 208
	ori	$s8, $zero, 200
	.p2align	4, , 16
.LBB2_48:                               # %.preheader52.us.i113.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_49 Depth 2
                                        #       Child Loop BB2_50 Depth 3
                                        #     Child Loop BB2_53 Depth 2
	move	$a5, $zero
	ori	$a2, $zero, 1325
	move	$a1, $s2
	.p2align	4, , 16
.LBB2_49:                               # %.preheader52.us.i113.1
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_50 Depth 3
	move	$a3, $zero
	.p2align	4, , 16
.LBB2_50:                               #   Parent Loop BB2_48 Depth=1
                                        #     Parent Loop BB2_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mul.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a4, $a2, $s5
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a1, $a3
	addi.d	$a3, $a3, 4
	bne	$a3, $s6, .LBB2_50
# %bb.51:                               # %._crit_edge.us.i123.1
                                        #   in Loop: Header=BB2_49 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 804
	bne	$a5, $s0, .LBB2_49
# %bb.52:                               # %.preheader51.i126.1
                                        #   in Loop: Header=BB2_48 Depth=1
	ori	$a2, $zero, 400
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	vld	$vr29, $a0, 0
	vld	$vr28, $a0, 16
	vld	$vr27, $a0, 32
	vld	$vr26, $a0, 48
	vld	$vr23, $a0, 64
	vld	$vr22, $a0, 80
	vld	$vr21, $a0, 96
	vld	$vr20, $a0, 112
	vld	$vr19, $a0, 128
	vld	$vr18, $a0, 144
	vld	$vr17, $a0, 160
	vld	$vr16, $a0, 176
	vld	$vr15, $a0, 192
	vld	$vr14, $a0, 208
	vld	$vr13, $a0, 224
	vld	$vr12, $a0, 240
	vld	$vr11, $a0, 256
	vld	$vr10, $a0, 272
	vld	$vr9, $a0, 288
	vld	$vr8, $a0, 304
	vld	$vr7, $a0, 320
	vld	$vr6, $a0, 336
	vld	$vr5, $a0, 352
	vld	$vr4, $a0, 368
	fld.s	$fa3, $a0, 384
	fld.s	$fa2, $a0, 388
	fld.s	$fa1, $a0, 392
	fld.s	$fa0, $a0, 396
	ori	$a2, $zero, 100
	move	$a1, $s7
	.p2align	4, , 16
.LBB2_53:                               # %.preheader.us.i127.1
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa0, $sp, 216                  # 4-byte Folded Spill
	vld	$vr25, $a1, -208
	vld	$vr30, $a1, -192
	vld	$vr31, $a1, -176
	vld	$vr0, $a1, -160
	vfadd.s	$vr29, $vr29, $vr25
	vfadd.s	$vr28, $vr28, $vr30
	vfadd.s	$vr27, $vr27, $vr31
	vfadd.s	$vr26, $vr26, $vr0
	vld	$vr0, $a1, -144
	vld	$vr25, $a1, -128
	vld	$vr30, $a1, -112
	vld	$vr31, $a1, -96
	vfadd.s	$vr23, $vr23, $vr0
	vfadd.s	$vr22, $vr22, $vr25
	vfadd.s	$vr21, $vr21, $vr30
	vfadd.s	$vr20, $vr20, $vr31
	vld	$vr0, $a1, -80
	vld	$vr25, $a1, -64
	vld	$vr30, $a1, -48
	vld	$vr31, $a1, -32
	vfadd.s	$vr19, $vr19, $vr0
	vfadd.s	$vr18, $vr18, $vr25
	vfadd.s	$vr17, $vr17, $vr30
	vfadd.s	$vr16, $vr16, $vr31
	vld	$vr0, $a1, -16
	vld	$vr25, $a1, 0
	vld	$vr30, $a1, 16
	vld	$vr31, $a1, 32
	vfadd.s	$vr15, $vr15, $vr0
	vfadd.s	$vr14, $vr14, $vr25
	vfadd.s	$vr13, $vr13, $vr30
	vfadd.s	$vr12, $vr12, $vr31
	vld	$vr0, $a1, 48
	vld	$vr25, $a1, 64
	vld	$vr30, $a1, 80
	vld	$vr31, $a1, 96
	vfadd.s	$vr11, $vr11, $vr0
	vfadd.s	$vr10, $vr10, $vr25
	vfadd.s	$vr9, $vr9, $vr30
	vfadd.s	$vr8, $vr8, $vr31
	vld	$vr0, $a1, 112
	vld	$vr25, $a1, 128
	vld	$vr30, $a1, 144
	vld	$vr31, $a1, 160
	vfadd.s	$vr7, $vr7, $vr0
	vfadd.s	$vr6, $vr6, $vr25
	vfadd.s	$vr5, $vr5, $vr30
	vfadd.s	$vr4, $vr4, $vr31
	fld.s	$fa0, $a1, 176
	fld.s	$fs1, $a1, 180
	fld.s	$fs6, $a1, 184
	fld.s	$fs7, $a1, 188
	fadd.s	$fa3, $fa3, $fa0
	fld.s	$fa0, $sp, 216                  # 4-byte Folded Reload
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa1, $fa1, $fs6
	fadd.s	$fa0, $fa0, $fs7
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 804
	bnez	$a2, .LBB2_53
# %bb.54:                               # %matgen.exit137.1
                                        #   in Loop: Header=BB2_48 Depth=1
	vst	$vr29, $a0, 0
	vst	$vr28, $a0, 16
	vst	$vr27, $a0, 32
	vst	$vr26, $a0, 48
	vst	$vr23, $a0, 64
	vst	$vr22, $a0, 80
	vst	$vr21, $a0, 96
	vst	$vr20, $a0, 112
	vst	$vr19, $a0, 128
	vst	$vr18, $a0, 144
	vst	$vr17, $a0, 160
	vst	$vr16, $a0, 176
	vst	$vr15, $a0, 192
	vst	$vr14, $a0, 208
	vst	$vr13, $a0, 224
	vst	$vr12, $a0, 240
	vst	$vr11, $a0, 256
	vst	$vr10, $a0, 272
	vst	$vr9, $a0, 288
	vst	$vr8, $a0, 304
	vst	$vr7, $a0, 320
	vst	$vr6, $a0, 336
	vst	$vr5, $a0, 352
	vst	$vr4, $a0, 368
	fst.s	$fa3, $a0, 384
	fst.s	$fa2, $a0, 388
	fst.s	$fa1, $a0, 392
	addi.w	$s3, $s3, 1
	fst.s	$fa0, $a0, 396
	bne	$s3, $s8, .LBB2_48
# %bb.55:                               # %.preheader52.us.i113.preheader.preheader.2
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 200
	move	$a3, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(main.a)
	addi.d	$s0, $a0, %pc_lo12(main.a)
	move	$s2, $zero
	ori	$s3, $zero, 3125
	ori	$s4, $zero, 400
	ori	$s6, $zero, 100
	addi.d	$s7, $s0, 208
	.p2align	4, , 16
.LBB2_56:                               # %.preheader52.us.i113.preheader.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_57 Depth 2
                                        #       Child Loop BB2_58 Depth 3
                                        #     Child Loop BB2_61 Depth 2
	move	$a0, $zero
	ori	$a2, $zero, 1325
	move	$a1, $s0
	.p2align	4, , 16
.LBB2_57:                               # %.preheader52.us.i113.2
                                        #   Parent Loop BB2_56 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_58 Depth 3
	move	$a3, $zero
	.p2align	4, , 16
.LBB2_58:                               #   Parent Loop BB2_56 Depth=1
                                        #     Parent Loop BB2_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mul.d	$a2, $a2, $s3
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a4, $a2, $s5
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a1, $a3
	addi.d	$a3, $a3, 4
	bne	$a3, $s4, .LBB2_58
# %bb.59:                               # %._crit_edge.us.i123.2
                                        #   in Loop: Header=BB2_57 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 804
	bne	$a0, $s6, .LBB2_57
# %bb.60:                               # %.preheader51.i126.2
                                        #   in Loop: Header=BB2_56 Depth=1
	ori	$a2, $zero, 400
	move	$a0, $a5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	vld	$vr29, $a5, 0
	vld	$vr28, $a5, 16
	vld	$vr27, $a5, 32
	vld	$vr26, $a5, 48
	vld	$vr23, $a5, 64
	vld	$vr22, $a5, 80
	vld	$vr21, $a5, 96
	vld	$vr20, $a5, 112
	vld	$vr19, $a5, 128
	vld	$vr18, $a5, 144
	vld	$vr17, $a5, 160
	vld	$vr16, $a5, 176
	vld	$vr15, $a5, 192
	vld	$vr14, $a5, 208
	vld	$vr13, $a5, 224
	vld	$vr12, $a5, 240
	vld	$vr11, $a5, 256
	vld	$vr10, $a5, 272
	vld	$vr9, $a5, 288
	vld	$vr8, $a5, 304
	vld	$vr7, $a5, 320
	vld	$vr6, $a5, 336
	vld	$vr5, $a5, 352
	vld	$vr4, $a5, 368
	fld.s	$fa3, $a5, 384
	fld.s	$fa2, $a5, 388
	fld.s	$fa1, $a5, 392
	fld.s	$fa0, $a5, 396
	ori	$a0, $zero, 100
	move	$a1, $s7
	.p2align	4, , 16
.LBB2_61:                               # %.preheader.us.i127.2
                                        #   Parent Loop BB2_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa0, $sp, 216                  # 4-byte Folded Spill
	vld	$vr25, $a1, -208
	vld	$vr30, $a1, -192
	vld	$vr31, $a1, -176
	vld	$vr0, $a1, -160
	vfadd.s	$vr29, $vr29, $vr25
	vfadd.s	$vr28, $vr28, $vr30
	vfadd.s	$vr27, $vr27, $vr31
	vfadd.s	$vr26, $vr26, $vr0
	vld	$vr0, $a1, -144
	vld	$vr25, $a1, -128
	vld	$vr30, $a1, -112
	vld	$vr31, $a1, -96
	vfadd.s	$vr23, $vr23, $vr0
	vfadd.s	$vr22, $vr22, $vr25
	vfadd.s	$vr21, $vr21, $vr30
	vfadd.s	$vr20, $vr20, $vr31
	vld	$vr0, $a1, -80
	vld	$vr25, $a1, -64
	vld	$vr30, $a1, -48
	vld	$vr31, $a1, -32
	vfadd.s	$vr19, $vr19, $vr0
	vfadd.s	$vr18, $vr18, $vr25
	vfadd.s	$vr17, $vr17, $vr30
	vfadd.s	$vr16, $vr16, $vr31
	vld	$vr0, $a1, -16
	vld	$vr25, $a1, 0
	vld	$vr30, $a1, 16
	vld	$vr31, $a1, 32
	vfadd.s	$vr15, $vr15, $vr0
	vfadd.s	$vr14, $vr14, $vr25
	vfadd.s	$vr13, $vr13, $vr30
	vfadd.s	$vr12, $vr12, $vr31
	vld	$vr0, $a1, 48
	vld	$vr25, $a1, 64
	vld	$vr30, $a1, 80
	vld	$vr31, $a1, 96
	vfadd.s	$vr11, $vr11, $vr0
	vfadd.s	$vr10, $vr10, $vr25
	vfadd.s	$vr9, $vr9, $vr30
	vfadd.s	$vr8, $vr8, $vr31
	vld	$vr0, $a1, 112
	vld	$vr25, $a1, 128
	vld	$vr30, $a1, 144
	vld	$vr31, $a1, 160
	vfadd.s	$vr7, $vr7, $vr0
	vfadd.s	$vr6, $vr6, $vr25
	vfadd.s	$vr5, $vr5, $vr30
	vfadd.s	$vr4, $vr4, $vr31
	fld.s	$fa0, $a1, 176
	fld.s	$fs1, $a1, 180
	fld.s	$fs6, $a1, 184
	fld.s	$fs7, $a1, 188
	fadd.s	$fa3, $fa3, $fa0
	fld.s	$fa0, $sp, 216                  # 4-byte Folded Reload
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa1, $fa1, $fs6
	fadd.s	$fa0, $fa0, $fs7
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 804
	bnez	$a0, .LBB2_61
# %bb.62:                               # %matgen.exit137.2
                                        #   in Loop: Header=BB2_56 Depth=1
	vst	$vr29, $a5, 0
	vst	$vr28, $a5, 16
	vst	$vr27, $a5, 32
	vst	$vr26, $a5, 48
	vst	$vr23, $a5, 64
	vst	$vr22, $a5, 80
	vst	$vr21, $a5, 96
	vst	$vr20, $a5, 112
	vst	$vr19, $a5, 128
	vst	$vr18, $a5, 144
	vst	$vr17, $a5, 160
	vst	$vr16, $a5, 176
	vst	$vr15, $a5, 192
	vst	$vr14, $a5, 208
	vst	$vr13, $a5, 224
	vst	$vr12, $a5, 240
	vst	$vr11, $a5, 256
	vst	$vr10, $a5, 272
	vst	$vr9, $a5, 288
	vst	$vr8, $a5, 304
	vst	$vr7, $a5, 320
	vst	$vr6, $a5, 336
	vst	$vr5, $a5, 352
	vst	$vr4, $a5, 368
	fst.s	$fa3, $a5, 384
	fst.s	$fa2, $a5, 388
	fst.s	$fa1, $a5, 392
	addi.w	$s2, $s2, 1
	fst.s	$fa0, $a5, 396
	bne	$s2, $s4, .LBB2_56
# %bb.63:                               # %._crit_edge.2
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $fp, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 400
	ori	$s0, $zero, 400
	move	$a0, $a3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$s3, $zero, 100
	pcalau12i	$s1, %pc_hi20(main.ntimes)
	pcalau12i	$a0, %pc_hi20(main.a)
	addi.d	$fp, $a0, %pc_lo12(main.a)
	ori	$s7, $zero, 3125
	addi.d	$a0, $fp, 208
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 4
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$s2, $zero, 8
	ori	$s6, $zero, 201
	lu12i.w	$a0, 19
	ori	$a0, $a0, 2168
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 100
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$fp, $sp, 184                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_64:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_67 Depth 2
                                        #       Child Loop BB2_68 Depth 3
                                        #         Child Loop BB2_69 Depth 4
                                        #       Child Loop BB2_72 Depth 3
                                        #       Child Loop BB2_76 Depth 3
                                        #         Child Loop BB2_77 Depth 4
                                        #         Child Loop BB2_85 Depth 4
                                        #         Child Loop BB2_88 Depth 4
                                        #         Child Loop BB2_91 Depth 4
                                        #           Child Loop BB2_97 Depth 5
                                        #           Child Loop BB2_100 Depth 5
	st.w	$a0, $s1, %pc_lo12(main.ntimes)
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(main.ntimes)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	blez	$a0, .LBB2_102
# %bb.65:                               # %.preheader52.us.i138.preheader.preheader
                                        #   in Loop: Header=BB2_64 Depth=1
	move	$a1, $zero
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_66:                               # %.loopexit100.i
                                        #   in Loop: Header=BB2_67 Depth=2
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.w	$s1, $a0, 396
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_101
.LBB2_67:                               # %.preheader52.us.i138.preheader
                                        #   Parent Loop BB2_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_68 Depth 3
                                        #         Child Loop BB2_69 Depth 4
                                        #       Child Loop BB2_72 Depth 3
                                        #       Child Loop BB2_76 Depth 3
                                        #         Child Loop BB2_77 Depth 4
                                        #         Child Loop BB2_85 Depth 4
                                        #         Child Loop BB2_88 Depth 4
                                        #         Child Loop BB2_91 Depth 4
                                        #           Child Loop BB2_97 Depth 5
                                        #           Child Loop BB2_100 Depth 5
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	move	$a5, $zero
	ori	$a2, $zero, 1325
	move	$a1, $fp
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_68:                               # %.preheader52.us.i138
                                        #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_69 Depth 4
	move	$a3, $zero
	.p2align	4, , 16
.LBB2_69:                               #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        #       Parent Loop BB2_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mul.d	$a2, $a2, $s7
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a4, $a2, $s5
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a1, $a3
	addi.d	$a3, $a3, 4
	bne	$a3, $s0, .LBB2_69
# %bb.70:                               # %._crit_edge.us.i148
                                        #   in Loop: Header=BB2_68 Depth=3
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 804
	bne	$a5, $s3, .LBB2_68
# %bb.71:                               # %.preheader51.i151
                                        #   in Loop: Header=BB2_67 Depth=2
	ori	$a2, $zero, 400
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr30, $a2, 0
	vld	$vr29, $a2, 16
	vld	$vr28, $a2, 32
	vld	$vr27, $a2, 48
	vld	$vr23, $a2, 64
	vld	$vr22, $a2, 80
	vld	$vr21, $a2, 96
	vld	$vr20, $a2, 112
	vld	$vr19, $a2, 128
	vld	$vr18, $a2, 144
	vld	$vr17, $a2, 160
	vld	$vr16, $a2, 176
	vld	$vr15, $a2, 192
	vld	$vr14, $a2, 208
	vld	$vr13, $a2, 224
	vld	$vr12, $a2, 240
	vld	$vr11, $a2, 256
	vld	$vr10, $a2, 272
	vld	$vr9, $a2, 288
	vld	$vr8, $a2, 304
	vld	$vr7, $a2, 320
	vld	$vr6, $a2, 336
	vld	$vr5, $a2, 352
	vld	$vr4, $a2, 368
	fld.s	$fa3, $a2, 384
	fld.s	$fa2, $a2, 388
	fld.s	$fa1, $a2, 392
	fld.s	$fa0, $a2, 396
	ori	$a0, $zero, 100
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_72:                               # %.preheader.us.i152
                                        #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fst.s	$fa2, $sp, 216                  # 4-byte Folded Spill
	vld	$vr25, $a1, -208
	vld	$vr26, $a1, -192
	vld	$vr31, $a1, -176
	fmov.s	$fa2, $fa1
	fmov.s	$fa1, $fa0
	vld	$vr0, $a1, -160
	vfadd.s	$vr30, $vr30, $vr25
	vfadd.s	$vr29, $vr29, $vr26
	vfadd.s	$vr28, $vr28, $vr31
	vfadd.s	$vr27, $vr27, $vr0
	vld	$vr0, $a1, -144
	vld	$vr25, $a1, -128
	vld	$vr26, $a1, -112
	vld	$vr31, $a1, -96
	vfadd.s	$vr23, $vr23, $vr0
	vfadd.s	$vr22, $vr22, $vr25
	vfadd.s	$vr21, $vr21, $vr26
	vfadd.s	$vr20, $vr20, $vr31
	vld	$vr0, $a1, -80
	vld	$vr25, $a1, -64
	vld	$vr26, $a1, -48
	vld	$vr31, $a1, -32
	vfadd.s	$vr19, $vr19, $vr0
	vfadd.s	$vr18, $vr18, $vr25
	vfadd.s	$vr17, $vr17, $vr26
	vfadd.s	$vr16, $vr16, $vr31
	vld	$vr0, $a1, -16
	vld	$vr25, $a1, 0
	vld	$vr26, $a1, 16
	vld	$vr31, $a1, 32
	vfadd.s	$vr15, $vr15, $vr0
	vfadd.s	$vr14, $vr14, $vr25
	vfadd.s	$vr13, $vr13, $vr26
	vfadd.s	$vr12, $vr12, $vr31
	vld	$vr0, $a1, 48
	vld	$vr25, $a1, 64
	vld	$vr26, $a1, 80
	vld	$vr31, $a1, 96
	vfadd.s	$vr11, $vr11, $vr0
	vfadd.s	$vr10, $vr10, $vr25
	vfadd.s	$vr9, $vr9, $vr26
	vfadd.s	$vr8, $vr8, $vr31
	vld	$vr0, $a1, 112
	vld	$vr25, $a1, 128
	vld	$vr26, $a1, 144
	vld	$vr31, $a1, 160
	vfadd.s	$vr7, $vr7, $vr0
	vfadd.s	$vr6, $vr6, $vr25
	vfadd.s	$vr5, $vr5, $vr26
	vfadd.s	$vr4, $vr4, $vr31
	fld.s	$fa0, $a1, 176
	fld.s	$fs1, $a1, 180
	fld.s	$fs2, $a1, 184
	fld.s	$fs7, $a1, 188
	fadd.s	$fa3, $fa3, $fa0
	fmov.s	$fa0, $fa1
	fmov.s	$fa1, $fa2
	fld.s	$fa2, $sp, 216                  # 4-byte Folded Reload
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa1, $fa1, $fs2
	fadd.s	$fa0, $fa0, $fs7
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 804
	bnez	$a0, .LBB2_72
# %bb.73:                               # %.lr.ph103.i.preheader.preheader
                                        #   in Loop: Header=BB2_67 Depth=2
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	move	$a1, $zero
	vst	$vr30, $a2, 0
	vst	$vr29, $a2, 16
	vst	$vr28, $a2, 32
	vst	$vr27, $a2, 48
	vst	$vr23, $a2, 64
	vst	$vr22, $a2, 80
	vst	$vr21, $a2, 96
	vst	$vr20, $a2, 112
	vst	$vr19, $a2, 128
	vst	$vr18, $a2, 144
	vst	$vr17, $a2, 160
	vst	$vr16, $a2, 176
	vst	$vr15, $a2, 192
	vst	$vr14, $a2, 208
	vst	$vr13, $a2, 224
	vst	$vr12, $a2, 240
	vst	$vr11, $a2, 256
	vst	$vr10, $a2, 272
	vst	$vr9, $a2, 288
	vst	$vr8, $a2, 304
	vst	$vr7, $a2, 320
	vst	$vr6, $a2, 336
	vst	$vr5, $a2, 352
	vst	$vr4, $a2, 368
	fst.s	$fa3, $a2, 384
	fst.s	$fa2, $a2, 388
	fst.s	$fa1, $a2, 392
	fst.s	$fa0, $a2, 396
	addi.d	$a2, $fp, 20
	addi.d	$a3, $fp, 824
	addi.d	$a4, $fp, 808
	ori	$s8, $zero, 1
	ori	$a0, $zero, 99
	addi.w	$a7, $zero, -396
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ori	$s1, $zero, 99
	vldi	$vr7, -1040
	b	.LBB2_76
	.p2align	4, , 16
.LBB2_74:                               #   in Loop: Header=BB2_76 Depth=3
	ori	$s1, $zero, 99
.LBB2_75:                               # %.loopexit.i
                                        #   in Loop: Header=BB2_76 Depth=3
	addi.d	$s8, $s8, 1
	addi.d	$a0, $a0, -1
	addi.d	$t0, $t0, 808
	addi.d	$a2, $a2, 808
	addi.d	$a7, $a7, 4
	addi.d	$a3, $a3, 808
	addi.d	$a4, $a4, 808
	beq	$a1, $s1, .LBB2_66
.LBB2_76:                               # %.lr.ph103.i.preheader
                                        #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_77 Depth 4
                                        #         Child Loop BB2_85 Depth 4
                                        #         Child Loop BB2_88 Depth 4
                                        #         Child Loop BB2_91 Depth 4
                                        #           Child Loop BB2_97 Depth 5
                                        #           Child Loop BB2_100 Depth 5
	move	$t2, $a1
	move	$a6, $a0
	bstrins.d	$a6, $zero, 2, 0
	sub.d	$t4, $s1, $a1
	addi.d	$a1, $a1, 1
	pcalau12i	$a5, %pc_hi20(main.a)
	addi.d	$t1, $a5, %pc_lo12(main.a)
	alsl.d	$t6, $t2, $t1, 2
	ori	$a5, $zero, 804
	mul.d	$t7, $t2, $a5
	fldx.s	$fa0, $t6, $t7
	move	$t5, $zero
	fabs.s	$fa0, $fa0
	move	$a5, $t0
	ori	$t8, $zero, 1
	move	$fp, $a0
	.p2align	4, , 16
.LBB2_77:                               # %.lr.ph48.i.i
                                        #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        #       Parent Loop BB2_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa1, $a5, 0
	fabs.s	$fa1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$t3, $fcc0
	masknez	$t5, $t5, $t3
	maskeqz	$t3, $t8, $t3
	or	$t5, $t3, $t5
	addi.d	$fp, $fp, -1
	addi.w	$t8, $t8, 1
	addi.d	$a5, $a5, 4
	bnez	$fp, .LBB2_77
# %bb.78:                               # %idamax.exit.i
                                        #   in Loop: Header=BB2_76 Depth=3
	add.w	$a5, $t5, $t2
	add.d	$t3, $t1, $t7
	slli.d	$t8, $a5, 2
	fldx.s	$fa1, $t3, $t8
	slli.d	$t8, $t2, 2
	movgr2fr.w	$fa0, $zero
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	stx.w	$a5, $fp, $t8
	bcnez	$fcc0, .LBB2_82
# %bb.79:                               #   in Loop: Header=BB2_76 Depth=3
	fldx.s	$fa2, $t6, $t7
	beqz	$t5, .LBB2_83
# %bb.80:                               #   in Loop: Header=BB2_76 Depth=3
	alsl.d	$t3, $a5, $t3, 2
	fst.s	$fa2, $t3, 0
	fstx.s	$fa1, $t6, $t7
	fdiv.s	$fa1, $fa7, $fa1
	bgeu	$t4, $s2, .LBB2_84
.LBB2_81:                               #   in Loop: Header=BB2_76 Depth=3
	move	$t6, $zero
	b	.LBB2_87
	.p2align	4, , 16
.LBB2_82:                               #   in Loop: Header=BB2_76 Depth=3
	st.d	$t2, $sp, 216                   # 8-byte Folded Spill
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_83:                               #   in Loop: Header=BB2_76 Depth=3
	fmov.s	$fa1, $fa2
	fdiv.s	$fa1, $fa7, $fa1
	bltu	$t4, $s2, .LBB2_81
.LBB2_84:                               # %vector.ph629
                                        #   in Loop: Header=BB2_76 Depth=3
	move	$t6, $t4
	bstrins.d	$t6, $zero, 2, 0
	vreplvei.w	$vr2, $vr1, 0
	move	$t3, $a2
	move	$t7, $a6
	.p2align	4, , 16
.LBB2_85:                               # %vector.body634
                                        #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        #       Parent Loop BB2_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr3, $t3, -16
	vld	$vr4, $t3, 0
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vst	$vr3, $t3, -16
	vst	$vr4, $t3, 0
	addi.d	$t7, $t7, -8
	addi.d	$t3, $t3, 32
	bnez	$t7, .LBB2_85
# %bb.86:                               # %middle.block639
                                        #   in Loop: Header=BB2_76 Depth=3
	beq	$t4, $t6, .LBB2_89
.LBB2_87:                               # %.lr.ph25.i.i.preheader
                                        #   in Loop: Header=BB2_76 Depth=3
	slli.d	$t3, $t6, 2
	.p2align	4, , 16
.LBB2_88:                               # %.lr.ph25.i.i
                                        #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        #       Parent Loop BB2_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.s	$fa2, $t0, $t3
	fmul.s	$fa2, $fa1, $fa2
	fstx.s	$fa2, $t0, $t3
	addi.d	$t3, $t3, 4
	add.d	$t6, $a7, $t3
	bnez	$t6, .LBB2_88
.LBB2_89:                               # %.lr.ph.i
                                        #   in Loop: Header=BB2_76 Depth=3
	alsl.d	$t6, $a5, $t1, 2
	move	$t7, $t4
	bstrins.d	$t7, $zero, 2, 0
	move	$t8, $a4
	move	$ra, $a3
	move	$a5, $s8
	b	.LBB2_91
	.p2align	4, , 16
.LBB2_90:                               # %daxpy.exit.i171
                                        #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a5, $a5, 1
	addi.d	$ra, $ra, 804
	addi.d	$t8, $t8, 804
	beq	$a5, $s3, .LBB2_74
.LBB2_91:                               #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        #       Parent Loop BB2_76 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_97 Depth 5
                                        #           Child Loop BB2_100 Depth 5
	mul.d	$t3, $a5, $s6
	slli.d	$fp, $t3, 2
	fldx.s	$fa1, $t6, $fp
	beqz	$t5, .LBB2_93
# %bb.92:                               #   in Loop: Header=BB2_91 Depth=4
	add.d	$fp, $t3, $t2
	slli.d	$fp, $fp, 2
	fldx.s	$fa2, $t1, $fp
	alsl.d	$t3, $t3, $t6, 2
	fst.s	$fa2, $t3, 0
	fstx.s	$fa1, $t1, $fp
.LBB2_93:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_91 Depth=4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_90
# %bb.94:                               # %.lr.ph.i.i168.preheader
                                        #   in Loop: Header=BB2_91 Depth=4
	bgeu	$t4, $s2, .LBB2_96
# %bb.95:                               #   in Loop: Header=BB2_91 Depth=4
	move	$t3, $zero
	b	.LBB2_99
.LBB2_96:                               # %vector.ph612
                                        #   in Loop: Header=BB2_91 Depth=4
	move	$fp, $zero
	vreplvei.w	$vr2, $vr1, 0
	move	$t3, $a6
	.p2align	4, , 16
.LBB2_97:                               # %vector.body617
                                        #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        #       Parent Loop BB2_76 Depth=3
                                        #         Parent Loop BB2_91 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.d	$s4, $ra, $fp
	add.d	$s1, $a2, $fp
	vld	$vr3, $s1, -16
	vldx	$vr4, $a2, $fp
	vld	$vr5, $s4, -16
	vldx	$vr6, $ra, $fp
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vfadd.s	$vr3, $vr5, $vr3
	vfadd.s	$vr4, $vr6, $vr4
	vst	$vr3, $s4, -16
	vstx	$vr4, $ra, $fp
	addi.d	$t3, $t3, -8
	addi.d	$fp, $fp, 32
	bnez	$t3, .LBB2_97
# %bb.98:                               # %middle.block624
                                        #   in Loop: Header=BB2_91 Depth=4
	move	$t3, $t7
	beq	$t4, $t7, .LBB2_90
.LBB2_99:                               # %.lr.ph.i.i168.preheader828
                                        #   in Loop: Header=BB2_91 Depth=4
	slli.d	$t3, $t3, 2
	.p2align	4, , 16
.LBB2_100:                              # %.lr.ph.i.i168
                                        #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        #       Parent Loop BB2_76 Depth=3
                                        #         Parent Loop BB2_91 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.s	$fa2, $t0, $t3
	fldx.s	$fa3, $t8, $t3
	fmul.s	$fa2, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa2
	fstx.s	$fa2, $t8, $t3
	addi.d	$t3, $t3, 4
	add.d	$fp, $a7, $t3
	bnez	$fp, .LBB2_100
	b	.LBB2_90
	.p2align	4, , 16
.LBB2_101:                              # %._crit_edge409
                                        #   in Loop: Header=BB2_64 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	fldx.s	$fa1, $t1, $a0
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB2_102:                              #   in Loop: Header=BB2_64 Depth=1
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a2, $s1, %pc_lo12(main.ntimes)
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	move	$a3, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $a0, 1
	slli.d	$a0, $a1, 31
	bltz	$a0, .LBB2_104
# %bb.103:                              #   in Loop: Header=BB2_64 Depth=1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a0, $s1, %pc_lo12(main.ntimes)
	slli.d	$a0, $a0, 1
	b	.LBB2_64
.LBB2_104:                              # %.critedge
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fld.s	$fa2, $sp, 100                  # 4-byte Folded Reload
	fdiv.s	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI2_7)
	fdiv.s	$fa1, $fa1, $fa2
	fsub.s	$fa0, $fa1, $fa0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	fst.s	$fa3, $sp, 12                   # 4-byte Folded Spill
	fdiv.s	$fs1, $fa0, $fa3
	ori	$a1, $zero, 1000
	st.w	$a1, $s1, %pc_lo12(main.ntimes)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 201
	ori	$s6, $zero, 201
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 55
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(main.ntimes)
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fs1, $fa0
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$zero, $a0, 204
	pcalau12i	$a0, %pc_hi20(main.j)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.w	$fp, $a0, %pc_lo12(main.j)
	pcalau12i	$a0, %pc_hi20(main.a)
	addi.d	$a0, $a0, %pc_lo12(main.a)
	ori	$s3, $zero, 3125
	ori	$s2, $zero, 400
	ori	$s7, $zero, 100
	addi.d	$a1, $a0, 208
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 4
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 20
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 824
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 808
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -396
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$s0, $zero, 8
	fst.d	$fs0, $sp, 200                  # 8-byte Folded Spill
	b	.LBB2_106
	.p2align	4, , 16
.LBB2_105:                              # %._crit_edge419
                                        #   in Loop: Header=BB2_106 Depth=1
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fld.s	$fs1, $sp, 100                  # 4-byte Folded Reload
	fdiv.s	$fs0, $fa0, $fs1
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $s1, %pc_lo12(main.ntimes)
	fdiv.s	$fa0, $fa0, $fs1
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a4, %pc_lo12(main.j)
	fsub.s	$fa0, $fa0, $fs0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	slli.d	$a0, $a1, 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	fldx.s	$fa2, $a2, $a0
	fdiv.s	$fa0, $fa0, $fa1
	alsl.d	$a0, $a1, $a2, 2
	fst.s	$fa0, $a0, 60
	fadd.s	$fa0, $fa2, $fa0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa3, $a3, %pc_lo12(.LCPI2_4)
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa4, $a3, %pc_lo12(.LCPI2_5)
	fst.s	$fa0, $a0, 120
	fcvt.d.s	$fa1, $fa0
	fmul.d	$fa1, $fa1, $fa3
	fdiv.d	$fa1, $fa4, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, 180
	vldi	$vr2, -1280
	fdiv.s	$fa2, $fa2, $fa1
	fst.s	$fa2, $a0, 240
	fld.s	$fa2, $sp, 84                   # 4-byte Folded Reload
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a0, 300
	fld.s	$fa0, $a2, 204
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 204
	addi.d	$a0, $a1, 1
	st.w	$a0, $a4, %pc_lo12(main.j)
	fld.d	$fs0, $sp, 200                  # 8-byte Folded Reload
	ori	$a0, $zero, 5
	bge	$a1, $a0, .LBB2_169
.LBB2_106:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_109 Depth 2
                                        #       Child Loop BB2_110 Depth 3
                                        #         Child Loop BB2_111 Depth 4
                                        #       Child Loop BB2_114 Depth 3
                                        #       Child Loop BB2_118 Depth 3
                                        #         Child Loop BB2_119 Depth 4
                                        #         Child Loop BB2_126 Depth 4
                                        #         Child Loop BB2_129 Depth 4
                                        #         Child Loop BB2_132 Depth 4
                                        #           Child Loop BB2_138 Depth 5
                                        #           Child Loop BB2_141 Depth 5
                                        #     Child Loop BB2_146 Depth 2
                                        #       Child Loop BB2_149 Depth 3
                                        #         Child Loop BB2_154 Depth 4
                                        #         Child Loop BB2_157 Depth 4
                                        #       Child Loop BB2_160 Depth 3
                                        #         Child Loop BB2_165 Depth 4
                                        #         Child Loop BB2_168 Depth 4
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(main.ntimes)
	ori	$s1, $zero, 99
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	blez	$a1, .LBB2_143
# %bb.107:                              # %.preheader52.us.i173.preheader.preheader
                                        #   in Loop: Header=BB2_106 Depth=1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB2_109
	.p2align	4, , 16
.LBB2_108:                              # %.loopexit100.i216
                                        #   in Loop: Header=BB2_109 Depth=2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.w	$s1, $a0, 396
	fld.d	$fs0, $sp, 200                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_142
.LBB2_109:                              # %.preheader52.us.i173.preheader
                                        #   Parent Loop BB2_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_110 Depth 3
                                        #         Child Loop BB2_111 Depth 4
                                        #       Child Loop BB2_114 Depth 3
                                        #       Child Loop BB2_118 Depth 3
                                        #         Child Loop BB2_119 Depth 4
                                        #         Child Loop BB2_126 Depth 4
                                        #         Child Loop BB2_129 Depth 4
                                        #         Child Loop BB2_132 Depth 4
                                        #           Child Loop BB2_138 Depth 5
                                        #           Child Loop BB2_141 Depth 5
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	move	$a5, $zero
	ori	$a2, $zero, 1325
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_110:                              # %.preheader52.us.i173
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_111 Depth 4
	move	$a3, $zero
	.p2align	4, , 16
.LBB2_111:                              #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        #       Parent Loop BB2_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mul.d	$a2, $a2, $s3
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a4, $a2, $s5
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a1, $a3
	addi.d	$a3, $a3, 4
	bne	$a3, $s2, .LBB2_111
# %bb.112:                              # %._crit_edge.us.i183
                                        #   in Loop: Header=BB2_110 Depth=3
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 804
	bne	$a5, $s7, .LBB2_110
# %bb.113:                              # %.preheader51.i186
                                        #   in Loop: Header=BB2_109 Depth=2
	ori	$a2, $zero, 400
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr29, $a2, 0
	vld	$vr31, $a2, 16
	vld	$vr28, $a2, 32
	vld	$vr27, $a2, 48
	vld	$vr23, $a2, 64
	vld	$vr22, $a2, 80
	vld	$vr21, $a2, 96
	vld	$vr20, $a2, 112
	vld	$vr19, $a2, 128
	vld	$vr18, $a2, 144
	vld	$vr17, $a2, 160
	vld	$vr16, $a2, 176
	vld	$vr15, $a2, 192
	vld	$vr14, $a2, 208
	vld	$vr13, $a2, 224
	vld	$vr12, $a2, 240
	vld	$vr11, $a2, 256
	vld	$vr10, $a2, 272
	vld	$vr9, $a2, 288
	vld	$vr8, $a2, 304
	vld	$vr7, $a2, 320
	vld	$vr6, $a2, 336
	vld	$vr5, $a2, 352
	vld	$vr4, $a2, 368
	fld.s	$fa3, $a2, 384
	fld.s	$fa2, $a2, 388
	fld.s	$fa1, $a2, 392
	fld.s	$fa0, $a2, 396
	ori	$a0, $zero, 100
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_114:                              # %.preheader.us.i187
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr25, $a1, -208
	vld	$vr26, $a1, -192
	vld	$vr30, $a1, -176
	vld	$vr24, $a1, -160
	vfadd.s	$vr29, $vr29, $vr25
	vfadd.s	$vr31, $vr31, $vr26
	vfadd.s	$vr28, $vr28, $vr30
	vfadd.s	$vr27, $vr27, $vr24
	vld	$vr24, $a1, -144
	vld	$vr25, $a1, -128
	vld	$vr26, $a1, -112
	vld	$vr30, $a1, -96
	vfadd.s	$vr23, $vr23, $vr24
	vfadd.s	$vr22, $vr22, $vr25
	vfadd.s	$vr21, $vr21, $vr26
	vfadd.s	$vr20, $vr20, $vr30
	vld	$vr24, $a1, -80
	vld	$vr25, $a1, -64
	vld	$vr26, $a1, -48
	vld	$vr30, $a1, -32
	vfadd.s	$vr19, $vr19, $vr24
	vfadd.s	$vr18, $vr18, $vr25
	vfadd.s	$vr17, $vr17, $vr26
	vfadd.s	$vr16, $vr16, $vr30
	vld	$vr24, $a1, -16
	vld	$vr25, $a1, 0
	vld	$vr26, $a1, 16
	vld	$vr30, $a1, 32
	vfadd.s	$vr15, $vr15, $vr24
	vfadd.s	$vr14, $vr14, $vr25
	vfadd.s	$vr13, $vr13, $vr26
	vfadd.s	$vr12, $vr12, $vr30
	vld	$vr24, $a1, 48
	vld	$vr25, $a1, 64
	vld	$vr26, $a1, 80
	vld	$vr30, $a1, 96
	vfadd.s	$vr11, $vr11, $vr24
	vfadd.s	$vr10, $vr10, $vr25
	vfadd.s	$vr9, $vr9, $vr26
	vfadd.s	$vr8, $vr8, $vr30
	vld	$vr24, $a1, 112
	vld	$vr25, $a1, 128
	vld	$vr26, $a1, 144
	vld	$vr30, $a1, 160
	vfadd.s	$vr7, $vr7, $vr24
	vfadd.s	$vr6, $vr6, $vr25
	vfadd.s	$vr5, $vr5, $vr26
	vfadd.s	$vr4, $vr4, $vr30
	fld.s	$fs0, $a1, 176
	fld.s	$fs1, $a1, 180
	fld.s	$fs2, $a1, 184
	fld.s	$fs6, $a1, 188
	fadd.s	$fa3, $fa3, $fs0
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa1, $fa1, $fs2
	fadd.s	$fa0, $fa0, $fs6
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 804
	bnez	$a0, .LBB2_114
# %bb.115:                              # %.lr.ph103.i198.preheader.preheader
                                        #   in Loop: Header=BB2_109 Depth=2
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	move	$a1, $zero
	vst	$vr29, $a2, 0
	vst	$vr31, $a2, 16
	vst	$vr28, $a2, 32
	vst	$vr27, $a2, 48
	vst	$vr23, $a2, 64
	vst	$vr22, $a2, 80
	vst	$vr21, $a2, 96
	vst	$vr20, $a2, 112
	vst	$vr19, $a2, 128
	vst	$vr18, $a2, 144
	vst	$vr17, $a2, 160
	vst	$vr16, $a2, 176
	vst	$vr15, $a2, 192
	vst	$vr14, $a2, 208
	vst	$vr13, $a2, 224
	vst	$vr12, $a2, 240
	vst	$vr11, $a2, 256
	vst	$vr10, $a2, 272
	vst	$vr9, $a2, 288
	vst	$vr8, $a2, 304
	vst	$vr7, $a2, 320
	vst	$vr6, $a2, 336
	vst	$vr5, $a2, 352
	vst	$vr4, $a2, 368
	fst.s	$fa3, $a2, 384
	fst.s	$fa2, $a2, 388
	fst.s	$fa1, $a2, 392
	fst.s	$fa0, $a2, 396
	ori	$fp, $zero, 1
	ori	$a0, $zero, 99
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	vldi	$vr7, -1040
	b	.LBB2_118
	.p2align	4, , 16
.LBB2_116:                              #   in Loop: Header=BB2_118 Depth=3
	st.d	$t2, $sp, 216                   # 8-byte Folded Spill
.LBB2_117:                              # %.loopexit.i213
                                        #   in Loop: Header=BB2_118 Depth=3
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, -1
	addi.d	$t0, $t0, 808
	addi.d	$a7, $a7, 808
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 808
	addi.d	$a4, $a4, 808
	ori	$s1, $zero, 99
	beq	$a1, $s1, .LBB2_108
.LBB2_118:                              # %.lr.ph103.i198.preheader
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_119 Depth 4
                                        #         Child Loop BB2_126 Depth 4
                                        #         Child Loop BB2_129 Depth 4
                                        #         Child Loop BB2_132 Depth 4
                                        #           Child Loop BB2_138 Depth 5
                                        #           Child Loop BB2_141 Depth 5
	move	$t2, $a1
	move	$a3, $a0
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$t4, $s1, $a1
	addi.d	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(main.a)
	addi.d	$t1, $a2, %pc_lo12(main.a)
	alsl.d	$t6, $t2, $t1, 2
	ori	$a2, $zero, 804
	mul.d	$t7, $t2, $a2
	fldx.s	$fa0, $t6, $t7
	move	$t5, $zero
	fabs.s	$fa0, $fa0
	move	$a2, $t0
	ori	$t8, $zero, 1
	move	$ra, $a0
	.p2align	4, , 16
.LBB2_119:                              # %.lr.ph48.i.i203
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        #       Parent Loop BB2_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa1, $a2, 0
	fabs.s	$fa1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$t3, $fcc0
	masknez	$t5, $t5, $t3
	maskeqz	$t3, $t8, $t3
	or	$t5, $t3, $t5
	addi.d	$ra, $ra, -1
	addi.w	$t8, $t8, 1
	addi.d	$a2, $a2, 4
	bnez	$ra, .LBB2_119
# %bb.120:                              # %idamax.exit.i211
                                        #   in Loop: Header=BB2_118 Depth=3
	add.w	$a2, $t5, $t2
	add.d	$t3, $t1, $t7
	slli.d	$t8, $a2, 2
	fldx.s	$fa1, $t3, $t8
	slli.d	$t8, $t2, 2
	movgr2fr.w	$fa0, $zero
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	stx.w	$a2, $s1, $t8
	bcnez	$fcc0, .LBB2_116
# %bb.121:                              #   in Loop: Header=BB2_118 Depth=3
	fldx.s	$fa2, $t6, $t7
	beqz	$t5, .LBB2_124
# %bb.122:                              #   in Loop: Header=BB2_118 Depth=3
	alsl.d	$t3, $a2, $t3, 2
	fst.s	$fa2, $t3, 0
	fstx.s	$fa1, $t6, $t7
	fdiv.s	$fa1, $fa7, $fa1
	bgeu	$t4, $s0, .LBB2_125
.LBB2_123:                              #   in Loop: Header=BB2_118 Depth=3
	move	$t6, $zero
	b	.LBB2_128
	.p2align	4, , 16
.LBB2_124:                              #   in Loop: Header=BB2_118 Depth=3
	fmov.s	$fa1, $fa2
	fdiv.s	$fa1, $fa7, $fa1
	bltu	$t4, $s0, .LBB2_123
.LBB2_125:                              # %vector.ph706
                                        #   in Loop: Header=BB2_118 Depth=3
	move	$t6, $t4
	bstrins.d	$t6, $zero, 2, 0
	vreplvei.w	$vr2, $vr1, 0
	move	$t3, $a7
	move	$t7, $a3
	.p2align	4, , 16
.LBB2_126:                              # %vector.body711
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        #       Parent Loop BB2_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr3, $t3, -16
	vld	$vr4, $t3, 0
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vst	$vr3, $t3, -16
	vst	$vr4, $t3, 0
	addi.d	$t7, $t7, -8
	addi.d	$t3, $t3, 32
	bnez	$t7, .LBB2_126
# %bb.127:                              # %middle.block716
                                        #   in Loop: Header=BB2_118 Depth=3
	beq	$t4, $t6, .LBB2_130
.LBB2_128:                              # %.lr.ph25.i.i219.preheader
                                        #   in Loop: Header=BB2_118 Depth=3
	slli.d	$t3, $t6, 2
	.p2align	4, , 16
.LBB2_129:                              # %.lr.ph25.i.i219
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        #       Parent Loop BB2_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.s	$fa2, $t0, $t3
	fmul.s	$fa2, $fa1, $fa2
	fstx.s	$fa2, $t0, $t3
	addi.d	$t3, $t3, 4
	add.d	$t6, $a6, $t3
	bnez	$t6, .LBB2_129
.LBB2_130:                              # %.lr.ph.i223
                                        #   in Loop: Header=BB2_118 Depth=3
	alsl.d	$t6, $a2, $t1, 2
	move	$t7, $t4
	bstrins.d	$t7, $zero, 2, 0
	move	$t8, $a4
	move	$ra, $a5
	move	$a2, $fp
	b	.LBB2_132
	.p2align	4, , 16
.LBB2_131:                              # %daxpy.exit.i233
                                        #   in Loop: Header=BB2_132 Depth=4
	addi.d	$a2, $a2, 1
	addi.d	$ra, $ra, 804
	addi.d	$t8, $t8, 804
	beq	$a2, $s7, .LBB2_117
.LBB2_132:                              #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        #       Parent Loop BB2_118 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_138 Depth 5
                                        #           Child Loop BB2_141 Depth 5
	mul.d	$t3, $a2, $s6
	slli.d	$s1, $t3, 2
	fldx.s	$fa1, $t6, $s1
	beqz	$t5, .LBB2_134
# %bb.133:                              #   in Loop: Header=BB2_132 Depth=4
	add.d	$s1, $t3, $t2
	slli.d	$s1, $s1, 2
	fldx.s	$fa2, $t1, $s1
	alsl.d	$t3, $t3, $t6, 2
	fst.s	$fa2, $t3, 0
	fstx.s	$fa1, $t1, $s1
.LBB2_134:                              # %._crit_edge.i228
                                        #   in Loop: Header=BB2_132 Depth=4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_131
# %bb.135:                              # %.lr.ph.i.i229.preheader
                                        #   in Loop: Header=BB2_132 Depth=4
	bgeu	$t4, $s0, .LBB2_137
# %bb.136:                              #   in Loop: Header=BB2_132 Depth=4
	move	$t3, $zero
	b	.LBB2_140
.LBB2_137:                              # %vector.ph689
                                        #   in Loop: Header=BB2_132 Depth=4
	move	$s4, $zero
	vreplvei.w	$vr2, $vr1, 0
	move	$t3, $a3
	.p2align	4, , 16
.LBB2_138:                              # %vector.body694
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        #       Parent Loop BB2_118 Depth=3
                                        #         Parent Loop BB2_132 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.d	$s1, $ra, $s4
	add.d	$s8, $a7, $s4
	vld	$vr3, $s8, -16
	vldx	$vr4, $a7, $s4
	vld	$vr5, $s1, -16
	vldx	$vr6, $ra, $s4
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vfadd.s	$vr3, $vr5, $vr3
	vfadd.s	$vr4, $vr6, $vr4
	vst	$vr3, $s1, -16
	vstx	$vr4, $ra, $s4
	addi.d	$t3, $t3, -8
	addi.d	$s4, $s4, 32
	bnez	$t3, .LBB2_138
# %bb.139:                              # %middle.block701
                                        #   in Loop: Header=BB2_132 Depth=4
	move	$t3, $t7
	beq	$t4, $t7, .LBB2_131
.LBB2_140:                              # %.lr.ph.i.i229.preheader823
                                        #   in Loop: Header=BB2_132 Depth=4
	slli.d	$t3, $t3, 2
	.p2align	4, , 16
.LBB2_141:                              # %.lr.ph.i.i229
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        #       Parent Loop BB2_118 Depth=3
                                        #         Parent Loop BB2_132 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.s	$fa2, $t0, $t3
	fldx.s	$fa3, $t8, $t3
	fmul.s	$fa2, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa2
	fstx.s	$fa2, $t8, $t3
	addi.d	$t3, $t3, 4
	add.d	$s1, $a6, $t3
	bnez	$s1, .LBB2_141
	b	.LBB2_131
	.p2align	4, , 16
.LBB2_142:                              # %._crit_edge414
                                        #   in Loop: Header=BB2_106 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	fldx.s	$fa1, $t1, $a0
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
.LBB2_143:                              #   in Loop: Header=BB2_106 Depth=1
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fld.s	$fs1, $sp, 100                  # 4-byte Folded Reload
	fdiv.s	$fs0, $fa0, $fs1
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs1
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $fp, %pc_lo12(main.ntimes)
	fsub.s	$fa0, $fa0, $fs0
	fld.s	$fa1, $sp, 36                   # 4-byte Folded Reload
	fsub.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(main.j)
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	slli.d	$a0, $a1, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(main.ntimes)
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
	ori	$t8, $zero, 98
	blez	$a1, .LBB2_105
# %bb.144:                              # %.preheader388.preheader
                                        #   in Loop: Header=BB2_106 Depth=1
	move	$a2, $zero
	b	.LBB2_146
	.p2align	4, , 16
.LBB2_145:                              # %dgesl.exit259
                                        #   in Loop: Header=BB2_146 Depth=2
	addi.w	$a2, $a2, 1
	beq	$a2, $a1, .LBB2_105
.LBB2_146:                              # %.preheader388
                                        #   Parent Loop BB2_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_149 Depth 3
                                        #         Child Loop BB2_154 Depth 4
                                        #         Child Loop BB2_157 Depth 4
                                        #       Child Loop BB2_160 Depth 3
                                        #         Child Loop BB2_165 Depth 4
                                        #         Child Loop BB2_168 Depth 4
	pcalau12i	$a3, %pc_hi20(main.a)
	addi.d	$a3, $a3, %pc_lo12(main.a)
	move	$a4, $zero
	addi.d	$a5, $a3, 20
	addi.d	$a6, $t6, 20
	addi.d	$a7, $a3, 4
	addi.d	$t0, $t6, 4
	ori	$t1, $zero, 99
	b	.LBB2_149
	.p2align	4, , 16
.LBB2_147:                              #   in Loop: Header=BB2_149 Depth=3
	movgr2fr.w	$fa0, $zero
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB2_151
.LBB2_148:                              # %daxpy.exit.i244
                                        #   in Loop: Header=BB2_149 Depth=3
	addi.d	$a4, $a4, 1
	addi.d	$t1, $t1, -1
	addi.d	$a5, $a5, 808
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 808
	addi.d	$t0, $t0, 4
	beq	$a4, $s1, .LBB2_158
.LBB2_149:                              #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_146 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_154 Depth 4
                                        #         Child Loop BB2_157 Depth 4
	slli.d	$t2, $a4, 2
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	ldx.wu	$t4, $t3, $t2
	addi.w	$t3, $t4, 0
	slli.d	$t5, $t3, 2
	fldx.s	$fa1, $t6, $t5
	beq	$a4, $t4, .LBB2_147
# %bb.150:                              #   in Loop: Header=BB2_149 Depth=3
	fldx.s	$fa0, $t6, $t2
	alsl.d	$t3, $t3, $t6, 2
	fst.s	$fa0, $t3, 0
	fstx.s	$fa1, $t6, $t2
	b	.LBB2_147
	.p2align	4, , 16
.LBB2_151:                              #   in Loop: Header=BB2_149 Depth=3
	sub.d	$t3, $s1, $a4
	bgeu	$t3, $s0, .LBB2_153
# %bb.152:                              #   in Loop: Header=BB2_149 Depth=3
	move	$t2, $zero
	b	.LBB2_156
.LBB2_153:                              # %vector.ph672
                                        #   in Loop: Header=BB2_149 Depth=3
	move	$t4, $t1
	bstrins.d	$t4, $zero, 2, 0
	move	$t2, $t3
	bstrins.d	$t2, $zero, 2, 0
	vreplvei.w	$vr2, $vr1, 0
	move	$t5, $a6
	move	$t6, $a5
	.p2align	4, , 16
.LBB2_154:                              # %vector.body677
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_146 Depth=2
                                        #       Parent Loop BB2_149 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr3, $t6, -16
	vld	$vr4, $t6, 0
	vld	$vr5, $t5, -16
	vld	$vr6, $t5, 0
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vfadd.s	$vr3, $vr5, $vr3
	vfadd.s	$vr4, $vr6, $vr4
	vst	$vr3, $t5, -16
	vst	$vr4, $t5, 0
	addi.d	$t4, $t4, -8
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	bnez	$t4, .LBB2_154
# %bb.155:                              # %middle.block684
                                        #   in Loop: Header=BB2_149 Depth=3
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	beq	$t3, $t2, .LBB2_148
.LBB2_156:                              # %.lr.ph.i.i240.preheader
                                        #   in Loop: Header=BB2_149 Depth=3
	alsl.d	$t3, $t2, $a7, 2
	alsl.d	$t4, $t2, $t0, 2
	.p2align	4, , 16
.LBB2_157:                              # %.lr.ph.i.i240
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_146 Depth=2
                                        #       Parent Loop BB2_149 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa2, $t3, 0
	fld.s	$fa3, $t4, 0
	fmul.s	$fa2, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $t4, 0
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	bne	$t1, $t2, .LBB2_157
	b	.LBB2_148
	.p2align	4, , 16
.LBB2_158:                              # %.lr.ph136.i247.preheader
                                        #   in Loop: Header=BB2_146 Depth=2
	move	$a4, $zero
	add.d	$a5, $a3, $t7
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	add.d	$a6, $a3, $a6
	ori	$a7, $zero, 99
	b	.LBB2_160
	.p2align	4, , 16
.LBB2_159:                              # %daxpy.exit110.i256
                                        #   in Loop: Header=BB2_160 Depth=3
	addi.d	$a4, $a4, 1
	addi.d	$a7, $a7, -1
	addi.d	$a5, $a5, -804
	addi.d	$a6, $a6, -804
	beq	$a4, $s7, .LBB2_145
.LBB2_160:                              # %.lr.ph136.i247
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_146 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_165 Depth 4
                                        #         Child Loop BB2_168 Depth 4
	sub.d	$t1, $s1, $a4
	slli.d	$t0, $t1, 2
	fldx.s	$fa1, $t6, $t0
	alsl.d	$t2, $t1, $a3, 2
	ori	$t3, $zero, 804
	mul.d	$t3, $t1, $t3
	fldx.s	$fa2, $t2, $t3
	fdiv.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $t6, $t0
	bltu	$t8, $a4, .LBB2_159
# %bb.161:                              # %.lr.ph136.i247
                                        #   in Loop: Header=BB2_160 Depth=3
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_159
# %bb.162:                              # %.lr.ph.i106.i252.preheader
                                        #   in Loop: Header=BB2_160 Depth=3
	bgeu	$t1, $s0, .LBB2_164
# %bb.163:                              #   in Loop: Header=BB2_160 Depth=3
	move	$t0, $zero
	b	.LBB2_167
	.p2align	4, , 16
.LBB2_164:                              # %vector.ph655
                                        #   in Loop: Header=BB2_160 Depth=3
	move	$t2, $a7
	bstrins.d	$t2, $zero, 2, 0
	move	$t0, $t1
	bstrins.d	$t0, $zero, 2, 0
	addi.d	$t3, $t6, 16
	vreplvei.w	$vr2, $vr1, 0
	move	$t4, $a5
	.p2align	4, , 16
.LBB2_165:                              # %vector.body660
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_146 Depth=2
                                        #       Parent Loop BB2_160 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr3, $t4, -16
	vld	$vr4, $t4, 0
	vld	$vr5, $t3, -16
	vld	$vr6, $t3, 0
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vfsub.s	$vr3, $vr5, $vr3
	vfsub.s	$vr4, $vr6, $vr4
	vst	$vr3, $t3, -16
	vst	$vr4, $t3, 0
	addi.d	$t2, $t2, -8
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$t2, .LBB2_165
# %bb.166:                              # %middle.block667
                                        #   in Loop: Header=BB2_160 Depth=3
	beq	$t1, $t0, .LBB2_159
.LBB2_167:                              # %.lr.ph.i106.i252.preheader824
                                        #   in Loop: Header=BB2_160 Depth=3
	alsl.d	$t1, $t0, $a6, 2
	alsl.d	$t2, $t0, $t6, 2
	.p2align	4, , 16
.LBB2_168:                              # %.lr.ph.i106.i252
                                        #   Parent Loop BB2_106 Depth=1
                                        #     Parent Loop BB2_146 Depth=2
                                        #       Parent Loop BB2_160 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa2, $t1, 0
	fld.s	$fa3, $t2, 0
	fmul.s	$fa2, $fa1, $fa2
	fsub.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $t2, 0
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	bne	$a7, $t0, .LBB2_168
	b	.LBB2_159
.LBB2_169:                              # %.preheader52.us.i260.preheader.preheader
	fst.d	$fa4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fa3, $sp, 56                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	vldi	$vr1, -1260
	fdiv.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 204
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fld.s	$fa1, $sp, 100                  # 4-byte Folded Reload
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 216                  # 4-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(main.aa)
	addi.d	$s0, $a0, %pc_lo12(main.aa)
	move	$s2, $zero
	ori	$s3, $zero, 3125
	ori	$s4, $zero, 400
	ori	$s6, $zero, 100
	addi.d	$s7, $s0, 208
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_170:                              # %.preheader52.us.i260.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_171 Depth 2
                                        #       Child Loop BB2_172 Depth 3
                                        #     Child Loop BB2_175 Depth 2
	move	$a5, $zero
	ori	$a2, $zero, 1325
	move	$a1, $s0
	fld.d	$fa1, $sp, 200                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_171:                              # %.preheader52.us.i260
                                        #   Parent Loop BB2_170 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_172 Depth 3
	move	$a3, $zero
	.p2align	4, , 16
.LBB2_172:                              #   Parent Loop BB2_170 Depth=1
                                        #     Parent Loop BB2_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mul.d	$a2, $a2, $s3
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a4, $a2, $s5
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a1, $a3
	addi.d	$a3, $a3, 4
	bne	$a3, $s4, .LBB2_172
# %bb.173:                              # %._crit_edge.us.i270
                                        #   in Loop: Header=BB2_171 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 800
	bne	$a5, $s6, .LBB2_171
# %bb.174:                              # %.preheader51.i273
                                        #   in Loop: Header=BB2_170 Depth=1
	ori	$a2, $zero, 400
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	vld	$vr30, $a0, 0
	vld	$vr31, $a0, 16
	vld	$vr29, $a0, 32
	vld	$vr26, $a0, 48
	vld	$vr23, $a0, 64
	vld	$vr22, $a0, 80
	vld	$vr21, $a0, 96
	vld	$vr20, $a0, 112
	vld	$vr19, $a0, 128
	vld	$vr18, $a0, 144
	vld	$vr17, $a0, 160
	vld	$vr16, $a0, 176
	vld	$vr15, $a0, 192
	vld	$vr14, $a0, 208
	vld	$vr13, $a0, 224
	vld	$vr12, $a0, 240
	vld	$vr11, $a0, 256
	vld	$vr10, $a0, 272
	vld	$vr9, $a0, 288
	vld	$vr8, $a0, 304
	vld	$vr7, $a0, 320
	vld	$vr6, $a0, 336
	vld	$vr5, $a0, 352
	vld	$vr4, $a0, 368
	fld.s	$fa3, $a0, 384
	fld.s	$fa2, $a0, 388
	fld.s	$fa1, $a0, 392
	fld.s	$fa0, $a0, 396
	ori	$a2, $zero, 100
	move	$a1, $s7
	.p2align	4, , 16
.LBB2_175:                              # %.preheader.us.i274
                                        #   Parent Loop BB2_170 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr24, $a1, -208
	vld	$vr25, $a1, -192
	vld	$vr27, $a1, -176
	vld	$vr28, $a1, -160
	vfadd.s	$vr30, $vr30, $vr24
	vfadd.s	$vr31, $vr31, $vr25
	vfadd.s	$vr29, $vr29, $vr27
	vfadd.s	$vr26, $vr26, $vr28
	vld	$vr24, $a1, -144
	vld	$vr25, $a1, -128
	vld	$vr27, $a1, -112
	vld	$vr28, $a1, -96
	vfadd.s	$vr23, $vr23, $vr24
	vfadd.s	$vr22, $vr22, $vr25
	vfadd.s	$vr21, $vr21, $vr27
	vfadd.s	$vr20, $vr20, $vr28
	vld	$vr24, $a1, -80
	vld	$vr25, $a1, -64
	vld	$vr27, $a1, -48
	vld	$vr28, $a1, -32
	vfadd.s	$vr19, $vr19, $vr24
	vfadd.s	$vr18, $vr18, $vr25
	vfadd.s	$vr17, $vr17, $vr27
	vfadd.s	$vr16, $vr16, $vr28
	vld	$vr24, $a1, -16
	vld	$vr25, $a1, 0
	vld	$vr27, $a1, 16
	vld	$vr28, $a1, 32
	vfadd.s	$vr15, $vr15, $vr24
	vfadd.s	$vr14, $vr14, $vr25
	vfadd.s	$vr13, $vr13, $vr27
	vfadd.s	$vr12, $vr12, $vr28
	vld	$vr24, $a1, 48
	vld	$vr25, $a1, 64
	vld	$vr27, $a1, 80
	vld	$vr28, $a1, 96
	vfadd.s	$vr11, $vr11, $vr24
	vfadd.s	$vr10, $vr10, $vr25
	vfadd.s	$vr9, $vr9, $vr27
	vfadd.s	$vr8, $vr8, $vr28
	vld	$vr24, $a1, 112
	vld	$vr25, $a1, 128
	vld	$vr27, $a1, 144
	vld	$vr28, $a1, 160
	vfadd.s	$vr7, $vr7, $vr24
	vfadd.s	$vr6, $vr6, $vr25
	vfadd.s	$vr5, $vr5, $vr27
	vfadd.s	$vr4, $vr4, $vr28
	fld.s	$fs0, $a1, 176
	fld.s	$fs1, $a1, 180
	fld.s	$fs3, $a1, 184
	fld.s	$fs4, $a1, 188
	fadd.s	$fa3, $fa3, $fs0
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa1, $fa1, $fs3
	fadd.s	$fa0, $fa0, $fs4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 800
	bnez	$a2, .LBB2_175
# %bb.176:                              # %matgen.exit284
                                        #   in Loop: Header=BB2_170 Depth=1
	vst	$vr30, $a0, 0
	vst	$vr31, $a0, 16
	vst	$vr29, $a0, 32
	vst	$vr26, $a0, 48
	vst	$vr23, $a0, 64
	vst	$vr22, $a0, 80
	vst	$vr21, $a0, 96
	vst	$vr20, $a0, 112
	vst	$vr19, $a0, 128
	vst	$vr18, $a0, 144
	vst	$vr17, $a0, 160
	vst	$vr16, $a0, 176
	vst	$vr15, $a0, 192
	vst	$vr14, $a0, 208
	vst	$vr13, $a0, 224
	vst	$vr12, $a0, 240
	vst	$vr11, $a0, 256
	vst	$vr10, $a0, 272
	vst	$vr9, $a0, 288
	vst	$vr8, $a0, 304
	vst	$vr7, $a0, 320
	vst	$vr6, $a0, 336
	vst	$vr5, $a0, 352
	vst	$vr4, $a0, 368
	fst.s	$fa3, $a0, 384
	fst.s	$fa2, $a0, 388
	fst.s	$fa1, $a0, 392
	addi.w	$s2, $s2, 1
	fst.s	$fa0, $a0, 396
	bne	$s2, $s4, .LBB2_170
# %bb.177:                              # %._crit_edge422
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	fld.s	$fa1, $sp, 100                  # 4-byte Folded Reload
	fdiv.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $sp, 216                  # 4-byte Folded Reload
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $sp, 12                   # 4-byte Folded Reload
	fdiv.s	$fs0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 200
	ori	$s4, $zero, 200
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 55
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $fp, %pc_lo12(main.ntimes)
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$zero, $a0, 228
	ori	$a0, $zero, 7
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(main.j)
	pcalau12i	$a0, %pc_hi20(main.aa)
	addi.d	$a0, $a0, %pc_lo12(main.aa)
	ori	$s3, $zero, 3125
	ori	$s6, $zero, 400
	ori	$s7, $zero, 100
	addi.d	$a1, $a0, 208
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 4
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 20
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 820
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 804
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -396
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$s1, $zero, 99
	ori	$s0, $zero, 8
	b	.LBB2_179
	.p2align	4, , 16
.LBB2_178:                              # %._crit_edge430
                                        #   in Loop: Header=BB2_179 Depth=1
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fld.s	$fs1, $sp, 100                  # 4-byte Folded Reload
	fdiv.s	$fs0, $fa0, $fs1
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $fp, %pc_lo12(main.ntimes)
	fdiv.s	$fa0, $fa0, $fs1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a3, %pc_lo12(main.j)
	fsub.s	$fa0, $fa0, $fs0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	slli.d	$a0, $a1, 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	fldx.s	$fa2, $a2, $a0
	fdiv.s	$fa0, $fa0, $fa1
	alsl.d	$a0, $a1, $a2, 2
	fst.s	$fa0, $a0, 60
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a0, 120
	fcvt.d.s	$fa1, $fa0
	fld.d	$fa2, $sp, 56                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $sp, 48                   # 8-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, 180
	vldi	$vr2, -1280
	fdiv.s	$fa2, $fa2, $fa1
	fst.s	$fa2, $a0, 240
	fld.s	$fa2, $sp, 84                   # 4-byte Folded Reload
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a0, 300
	fld.s	$fa0, $a2, 228
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 228
	addi.d	$a0, $a1, 1
	st.w	$a0, $a3, %pc_lo12(main.j)
	ori	$a0, $zero, 11
	bge	$a1, $a0, .LBB2_242
.LBB2_179:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_182 Depth 2
                                        #       Child Loop BB2_183 Depth 3
                                        #         Child Loop BB2_184 Depth 4
                                        #       Child Loop BB2_187 Depth 3
                                        #       Child Loop BB2_191 Depth 3
                                        #         Child Loop BB2_192 Depth 4
                                        #         Child Loop BB2_199 Depth 4
                                        #         Child Loop BB2_202 Depth 4
                                        #         Child Loop BB2_205 Depth 4
                                        #           Child Loop BB2_211 Depth 5
                                        #           Child Loop BB2_214 Depth 5
                                        #     Child Loop BB2_219 Depth 2
                                        #       Child Loop BB2_222 Depth 3
                                        #         Child Loop BB2_227 Depth 4
                                        #         Child Loop BB2_230 Depth 4
                                        #       Child Loop BB2_233 Depth 3
                                        #         Child Loop BB2_238 Depth 4
                                        #         Child Loop BB2_241 Depth 4
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(main.ntimes)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	blez	$a1, .LBB2_216
# %bb.180:                              # %.preheader52.us.i285.preheader.preheader
                                        #   in Loop: Header=BB2_179 Depth=1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $zero
	fld.d	$fa1, $sp, 200                  # 8-byte Folded Reload
	b	.LBB2_182
	.p2align	4, , 16
.LBB2_181:                              # %.loopexit100.i328
                                        #   in Loop: Header=BB2_182 Depth=2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.w	$s1, $a0, 396
	fld.d	$fa1, $sp, 200                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_215
.LBB2_182:                              # %.preheader52.us.i285.preheader
                                        #   Parent Loop BB2_179 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_183 Depth 3
                                        #         Child Loop BB2_184 Depth 4
                                        #       Child Loop BB2_187 Depth 3
                                        #       Child Loop BB2_191 Depth 3
                                        #         Child Loop BB2_192 Depth 4
                                        #         Child Loop BB2_199 Depth 4
                                        #         Child Loop BB2_202 Depth 4
                                        #         Child Loop BB2_205 Depth 4
                                        #           Child Loop BB2_211 Depth 5
                                        #           Child Loop BB2_214 Depth 5
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	move	$a5, $zero
	ori	$a2, $zero, 1325
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_183:                              # %.preheader52.us.i285
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_184 Depth 4
	move	$a3, $zero
	.p2align	4, , 16
.LBB2_184:                              #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        #       Parent Loop BB2_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mul.d	$a2, $a2, $s3
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a4, $a2, $s5
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a1, $a3
	addi.d	$a3, $a3, 4
	bne	$a3, $s6, .LBB2_184
# %bb.185:                              # %._crit_edge.us.i295
                                        #   in Loop: Header=BB2_183 Depth=3
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 800
	bne	$a5, $s7, .LBB2_183
# %bb.186:                              # %.preheader51.i298
                                        #   in Loop: Header=BB2_182 Depth=2
	ori	$a2, $zero, 400
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr29, $a2, 0
	vld	$vr26, $a2, 16
	vld	$vr31, $a2, 32
	vld	$vr30, $a2, 48
	vld	$vr23, $a2, 64
	vld	$vr22, $a2, 80
	vld	$vr21, $a2, 96
	vld	$vr20, $a2, 112
	vld	$vr19, $a2, 128
	vld	$vr18, $a2, 144
	vld	$vr17, $a2, 160
	vld	$vr16, $a2, 176
	vld	$vr15, $a2, 192
	vld	$vr14, $a2, 208
	vld	$vr13, $a2, 224
	vld	$vr12, $a2, 240
	vld	$vr11, $a2, 256
	vld	$vr10, $a2, 272
	vld	$vr9, $a2, 288
	vld	$vr8, $a2, 304
	vld	$vr7, $a2, 320
	vld	$vr6, $a2, 336
	vld	$vr5, $a2, 352
	vld	$vr4, $a2, 368
	fld.s	$fa3, $a2, 384
	fld.s	$fa2, $a2, 388
	fld.s	$fa1, $a2, 392
	fld.s	$fa0, $a2, 396
	ori	$a0, $zero, 100
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_187:                              # %.preheader.us.i299
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr24, $a1, -208
	vld	$vr25, $a1, -192
	vld	$vr27, $a1, -176
	vld	$vr28, $a1, -160
	vfadd.s	$vr29, $vr29, $vr24
	vfadd.s	$vr26, $vr26, $vr25
	vfadd.s	$vr31, $vr31, $vr27
	vfadd.s	$vr30, $vr30, $vr28
	vld	$vr24, $a1, -144
	vld	$vr25, $a1, -128
	vld	$vr27, $a1, -112
	vld	$vr28, $a1, -96
	vfadd.s	$vr23, $vr23, $vr24
	vfadd.s	$vr22, $vr22, $vr25
	vfadd.s	$vr21, $vr21, $vr27
	vfadd.s	$vr20, $vr20, $vr28
	vld	$vr24, $a1, -80
	vld	$vr25, $a1, -64
	vld	$vr27, $a1, -48
	vld	$vr28, $a1, -32
	vfadd.s	$vr19, $vr19, $vr24
	vfadd.s	$vr18, $vr18, $vr25
	vfadd.s	$vr17, $vr17, $vr27
	vfadd.s	$vr16, $vr16, $vr28
	vld	$vr24, $a1, -16
	vld	$vr25, $a1, 0
	vld	$vr27, $a1, 16
	vld	$vr28, $a1, 32
	vfadd.s	$vr15, $vr15, $vr24
	vfadd.s	$vr14, $vr14, $vr25
	vfadd.s	$vr13, $vr13, $vr27
	vfadd.s	$vr12, $vr12, $vr28
	vld	$vr24, $a1, 48
	vld	$vr25, $a1, 64
	vld	$vr27, $a1, 80
	vld	$vr28, $a1, 96
	vfadd.s	$vr11, $vr11, $vr24
	vfadd.s	$vr10, $vr10, $vr25
	vfadd.s	$vr9, $vr9, $vr27
	vfadd.s	$vr8, $vr8, $vr28
	vld	$vr24, $a1, 112
	vld	$vr25, $a1, 128
	vld	$vr27, $a1, 144
	vld	$vr28, $a1, 160
	vfadd.s	$vr7, $vr7, $vr24
	vfadd.s	$vr6, $vr6, $vr25
	vfadd.s	$vr5, $vr5, $vr27
	vfadd.s	$vr4, $vr4, $vr28
	fld.s	$fs0, $a1, 176
	fld.s	$fs1, $a1, 180
	fld.s	$fs3, $a1, 184
	fld.s	$fs4, $a1, 188
	fadd.s	$fa3, $fa3, $fs0
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa1, $fa1, $fs3
	fadd.s	$fa0, $fa0, $fs4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 800
	bnez	$a0, .LBB2_187
# %bb.188:                              # %.lr.ph103.i310.preheader.preheader
                                        #   in Loop: Header=BB2_182 Depth=2
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	move	$a1, $zero
	vst	$vr29, $a2, 0
	vst	$vr26, $a2, 16
	vst	$vr31, $a2, 32
	vst	$vr30, $a2, 48
	vst	$vr23, $a2, 64
	vst	$vr22, $a2, 80
	vst	$vr21, $a2, 96
	vst	$vr20, $a2, 112
	vst	$vr19, $a2, 128
	vst	$vr18, $a2, 144
	vst	$vr17, $a2, 160
	vst	$vr16, $a2, 176
	vst	$vr15, $a2, 192
	vst	$vr14, $a2, 208
	vst	$vr13, $a2, 224
	vst	$vr12, $a2, 240
	vst	$vr11, $a2, 256
	vst	$vr10, $a2, 272
	vst	$vr9, $a2, 288
	vst	$vr8, $a2, 304
	vst	$vr7, $a2, 320
	vst	$vr6, $a2, 336
	vst	$vr5, $a2, 352
	vst	$vr4, $a2, 368
	fst.s	$fa3, $a2, 384
	fst.s	$fa2, $a2, 388
	fst.s	$fa1, $a2, 392
	fst.s	$fa0, $a2, 396
	ori	$a2, $zero, 1
	ori	$a0, $zero, 99
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	vldi	$vr7, -1040
	b	.LBB2_191
	.p2align	4, , 16
.LBB2_189:                              #   in Loop: Header=BB2_191 Depth=3
	st.d	$t2, $sp, 216                   # 8-byte Folded Spill
.LBB2_190:                              # %.loopexit.i325
                                        #   in Loop: Header=BB2_191 Depth=3
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$t0, $t0, 804
	addi.d	$a7, $a7, 804
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 804
	addi.d	$a4, $a4, 804
	ori	$s1, $zero, 99
	beq	$a1, $s1, .LBB2_181
.LBB2_191:                              # %.lr.ph103.i310.preheader
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_192 Depth 4
                                        #         Child Loop BB2_199 Depth 4
                                        #         Child Loop BB2_202 Depth 4
                                        #         Child Loop BB2_205 Depth 4
                                        #           Child Loop BB2_211 Depth 5
                                        #           Child Loop BB2_214 Depth 5
	move	$t2, $a1
	move	$a3, $a0
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$t4, $s1, $a1
	addi.d	$a1, $a1, 1
	pcalau12i	$t1, %pc_hi20(main.aa)
	addi.d	$t1, $t1, %pc_lo12(main.aa)
	alsl.d	$t7, $t2, $t1, 2
	ori	$t3, $zero, 800
	mul.d	$t8, $t2, $t3
	fldx.s	$fa0, $t7, $t8
	move	$t5, $zero
	fabs.s	$fa0, $fa0
	move	$t6, $t0
	ori	$fp, $zero, 1
	move	$ra, $a0
	.p2align	4, , 16
.LBB2_192:                              # %.lr.ph48.i.i315
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        #       Parent Loop BB2_191 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa1, $t6, 0
	fabs.s	$fa1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$t3, $fcc0
	masknez	$t5, $t5, $t3
	maskeqz	$t3, $fp, $t3
	or	$t5, $t3, $t5
	addi.d	$ra, $ra, -1
	addi.w	$fp, $fp, 1
	addi.d	$t6, $t6, 4
	bnez	$ra, .LBB2_192
# %bb.193:                              # %idamax.exit.i323
                                        #   in Loop: Header=BB2_191 Depth=3
	add.w	$t6, $t5, $t2
	add.d	$t3, $t1, $t8
	slli.d	$fp, $t6, 2
	fldx.s	$fa1, $t3, $fp
	slli.d	$fp, $t2, 2
	movgr2fr.w	$fa0, $zero
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	stx.w	$t6, $s1, $fp
	bcnez	$fcc0, .LBB2_189
# %bb.194:                              #   in Loop: Header=BB2_191 Depth=3
	fldx.s	$fa2, $t7, $t8
	beqz	$t5, .LBB2_197
# %bb.195:                              #   in Loop: Header=BB2_191 Depth=3
	alsl.d	$t3, $t6, $t3, 2
	fst.s	$fa2, $t3, 0
	fstx.s	$fa1, $t7, $t8
	fdiv.s	$fa1, $fa7, $fa1
	bgeu	$t4, $s0, .LBB2_198
.LBB2_196:                              #   in Loop: Header=BB2_191 Depth=3
	move	$t7, $zero
	b	.LBB2_201
	.p2align	4, , 16
.LBB2_197:                              #   in Loop: Header=BB2_191 Depth=3
	fmov.s	$fa1, $fa2
	fdiv.s	$fa1, $fa7, $fa1
	bltu	$t4, $s0, .LBB2_196
.LBB2_198:                              # %vector.ph794
                                        #   in Loop: Header=BB2_191 Depth=3
	move	$t7, $t4
	bstrins.d	$t7, $zero, 2, 0
	vreplvei.w	$vr2, $vr1, 0
	move	$t3, $a7
	move	$t8, $a3
	.p2align	4, , 16
.LBB2_199:                              # %vector.body799
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        #       Parent Loop BB2_191 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr3, $t3, -16
	vld	$vr4, $t3, 0
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vst	$vr3, $t3, -16
	vst	$vr4, $t3, 0
	addi.d	$t8, $t8, -8
	addi.d	$t3, $t3, 32
	bnez	$t8, .LBB2_199
# %bb.200:                              # %middle.block804
                                        #   in Loop: Header=BB2_191 Depth=3
	beq	$t4, $t7, .LBB2_203
.LBB2_201:                              # %.lr.ph25.i.i331.preheader
                                        #   in Loop: Header=BB2_191 Depth=3
	slli.d	$t3, $t7, 2
	.p2align	4, , 16
.LBB2_202:                              # %.lr.ph25.i.i331
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        #       Parent Loop BB2_191 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.s	$fa2, $t0, $t3
	fmul.s	$fa2, $fa1, $fa2
	fstx.s	$fa2, $t0, $t3
	addi.d	$t3, $t3, 4
	add.d	$t7, $a6, $t3
	bnez	$t7, .LBB2_202
.LBB2_203:                              # %.lr.ph.i335
                                        #   in Loop: Header=BB2_191 Depth=3
	alsl.d	$t6, $t6, $t1, 2
	move	$t7, $t4
	bstrins.d	$t7, $zero, 2, 0
	move	$t8, $a4
	move	$ra, $a5
	move	$fp, $a2
	b	.LBB2_205
	.p2align	4, , 16
.LBB2_204:                              # %daxpy.exit.i345
                                        #   in Loop: Header=BB2_205 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$ra, $ra, 800
	addi.d	$t8, $t8, 800
	beq	$fp, $s7, .LBB2_190
.LBB2_205:                              #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        #       Parent Loop BB2_191 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_211 Depth 5
                                        #           Child Loop BB2_214 Depth 5
	mul.d	$t3, $fp, $s4
	slli.d	$s1, $t3, 2
	fldx.s	$fa1, $t6, $s1
	beqz	$t5, .LBB2_207
# %bb.206:                              #   in Loop: Header=BB2_205 Depth=4
	add.d	$s1, $t3, $t2
	slli.d	$s1, $s1, 2
	fldx.s	$fa2, $t1, $s1
	alsl.d	$t3, $t3, $t6, 2
	fst.s	$fa2, $t3, 0
	fstx.s	$fa1, $t1, $s1
.LBB2_207:                              # %._crit_edge.i340
                                        #   in Loop: Header=BB2_205 Depth=4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_204
# %bb.208:                              # %.lr.ph.i.i341.preheader
                                        #   in Loop: Header=BB2_205 Depth=4
	bgeu	$t4, $s0, .LBB2_210
# %bb.209:                              #   in Loop: Header=BB2_205 Depth=4
	move	$t3, $zero
	b	.LBB2_213
.LBB2_210:                              # %vector.ph777
                                        #   in Loop: Header=BB2_205 Depth=4
	move	$s2, $zero
	vreplvei.w	$vr2, $vr1, 0
	move	$t3, $a3
	.p2align	4, , 16
.LBB2_211:                              # %vector.body782
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        #       Parent Loop BB2_191 Depth=3
                                        #         Parent Loop BB2_205 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.d	$s1, $ra, $s2
	add.d	$s8, $a7, $s2
	vld	$vr3, $s8, -16
	vldx	$vr4, $a7, $s2
	vld	$vr5, $s1, -16
	vldx	$vr6, $ra, $s2
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vfadd.s	$vr3, $vr5, $vr3
	vfadd.s	$vr4, $vr6, $vr4
	vst	$vr3, $s1, -16
	vstx	$vr4, $ra, $s2
	addi.d	$t3, $t3, -8
	addi.d	$s2, $s2, 32
	bnez	$t3, .LBB2_211
# %bb.212:                              # %middle.block789
                                        #   in Loop: Header=BB2_205 Depth=4
	move	$t3, $t7
	beq	$t4, $t7, .LBB2_204
.LBB2_213:                              # %.lr.ph.i.i341.preheader818
                                        #   in Loop: Header=BB2_205 Depth=4
	slli.d	$t3, $t3, 2
	.p2align	4, , 16
.LBB2_214:                              # %.lr.ph.i.i341
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_182 Depth=2
                                        #       Parent Loop BB2_191 Depth=3
                                        #         Parent Loop BB2_205 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.s	$fa2, $t0, $t3
	fldx.s	$fa3, $t8, $t3
	fmul.s	$fa2, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa2
	fstx.s	$fa2, $t8, $t3
	addi.d	$t3, $t3, 4
	add.d	$s1, $a6, $t3
	bnez	$s1, .LBB2_214
	b	.LBB2_204
	.p2align	4, , 16
.LBB2_215:                              # %._crit_edge425
                                        #   in Loop: Header=BB2_179 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fldx.s	$fa1, $t1, $a0
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
.LBB2_216:                              #   in Loop: Header=BB2_179 Depth=1
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fld.s	$fs1, $sp, 100                  # 4-byte Folded Reload
	fdiv.s	$fs0, $fa0, $fs1
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs1
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $fp, %pc_lo12(main.ntimes)
	fsub.s	$fa0, $fa0, $fs0
	fld.s	$fa1, $sp, 40                   # 4-byte Folded Reload
	fsub.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(main.j)
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	slli.d	$a0, $a1, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(main.ntimes)
	lu12i.w	$t7, 19
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	ori	$t8, $zero, 98
	blez	$a1, .LBB2_178
# %bb.217:                              # %.preheader.preheader
                                        #   in Loop: Header=BB2_179 Depth=1
	move	$a2, $zero
	b	.LBB2_219
	.p2align	4, , 16
.LBB2_218:                              # %dgesl.exit371
                                        #   in Loop: Header=BB2_219 Depth=2
	addi.w	$a2, $a2, 1
	beq	$a2, $a1, .LBB2_178
.LBB2_219:                              # %.preheader
                                        #   Parent Loop BB2_179 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_222 Depth 3
                                        #         Child Loop BB2_227 Depth 4
                                        #         Child Loop BB2_230 Depth 4
                                        #       Child Loop BB2_233 Depth 3
                                        #         Child Loop BB2_238 Depth 4
                                        #         Child Loop BB2_241 Depth 4
	pcalau12i	$a3, %pc_hi20(main.aa)
	addi.d	$a3, $a3, %pc_lo12(main.aa)
	move	$a4, $zero
	addi.d	$a5, $a3, 20
	addi.d	$a6, $t6, 20
	addi.d	$a7, $a3, 4
	addi.d	$t0, $t6, 4
	ori	$t1, $zero, 99
	b	.LBB2_222
	.p2align	4, , 16
.LBB2_220:                              #   in Loop: Header=BB2_222 Depth=3
	movgr2fr.w	$fa0, $zero
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB2_224
.LBB2_221:                              # %daxpy.exit.i356
                                        #   in Loop: Header=BB2_222 Depth=3
	addi.d	$a4, $a4, 1
	addi.d	$t1, $t1, -1
	addi.d	$a5, $a5, 804
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 804
	addi.d	$t0, $t0, 4
	beq	$a4, $s1, .LBB2_231
.LBB2_222:                              #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_219 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_227 Depth 4
                                        #         Child Loop BB2_230 Depth 4
	slli.d	$t2, $a4, 2
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	ldx.wu	$t4, $t3, $t2
	addi.w	$t3, $t4, 0
	slli.d	$t5, $t3, 2
	fldx.s	$fa1, $t6, $t5
	beq	$a4, $t4, .LBB2_220
# %bb.223:                              #   in Loop: Header=BB2_222 Depth=3
	fldx.s	$fa0, $t6, $t2
	alsl.d	$t3, $t3, $t6, 2
	fst.s	$fa0, $t3, 0
	fstx.s	$fa1, $t6, $t2
	b	.LBB2_220
	.p2align	4, , 16
.LBB2_224:                              #   in Loop: Header=BB2_222 Depth=3
	sub.d	$t3, $s1, $a4
	bgeu	$t3, $s0, .LBB2_226
# %bb.225:                              #   in Loop: Header=BB2_222 Depth=3
	move	$t2, $zero
	b	.LBB2_229
.LBB2_226:                              # %vector.ph760
                                        #   in Loop: Header=BB2_222 Depth=3
	move	$t4, $t1
	bstrins.d	$t4, $zero, 2, 0
	move	$t2, $t3
	bstrins.d	$t2, $zero, 2, 0
	vreplvei.w	$vr2, $vr1, 0
	move	$t5, $a6
	move	$t6, $a5
	.p2align	4, , 16
.LBB2_227:                              # %vector.body765
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_219 Depth=2
                                        #       Parent Loop BB2_222 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr3, $t6, -16
	vld	$vr4, $t6, 0
	vld	$vr5, $t5, -16
	vld	$vr6, $t5, 0
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vfadd.s	$vr3, $vr5, $vr3
	vfadd.s	$vr4, $vr6, $vr4
	vst	$vr3, $t5, -16
	vst	$vr4, $t5, 0
	addi.d	$t4, $t4, -8
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	bnez	$t4, .LBB2_227
# %bb.228:                              # %middle.block772
                                        #   in Loop: Header=BB2_222 Depth=3
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	beq	$t3, $t2, .LBB2_221
.LBB2_229:                              # %.lr.ph.i.i352.preheader
                                        #   in Loop: Header=BB2_222 Depth=3
	alsl.d	$t3, $t2, $a7, 2
	alsl.d	$t4, $t2, $t0, 2
	.p2align	4, , 16
.LBB2_230:                              # %.lr.ph.i.i352
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_219 Depth=2
                                        #       Parent Loop BB2_222 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa2, $t3, 0
	fld.s	$fa3, $t4, 0
	fmul.s	$fa2, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $t4, 0
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	bne	$t1, $t2, .LBB2_230
	b	.LBB2_221
	.p2align	4, , 16
.LBB2_231:                              # %.lr.ph136.i359.preheader
                                        #   in Loop: Header=BB2_219 Depth=2
	move	$a4, $zero
	ori	$a5, $t7, 1392
	add.d	$a5, $a3, $a5
	ori	$a6, $t7, 1376
	add.d	$a6, $a3, $a6
	ori	$a7, $zero, 99
	b	.LBB2_233
	.p2align	4, , 16
.LBB2_232:                              # %daxpy.exit110.i368
                                        #   in Loop: Header=BB2_233 Depth=3
	addi.d	$a4, $a4, 1
	addi.d	$a7, $a7, -1
	addi.d	$a5, $a5, -800
	addi.d	$a6, $a6, -800
	beq	$a4, $s7, .LBB2_218
.LBB2_233:                              # %.lr.ph136.i359
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_219 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_238 Depth 4
                                        #         Child Loop BB2_241 Depth 4
	sub.d	$t1, $s1, $a4
	slli.d	$t0, $t1, 2
	fldx.s	$fa1, $t6, $t0
	alsl.d	$t2, $t1, $a3, 2
	ori	$t3, $zero, 800
	mul.d	$t3, $t1, $t3
	fldx.s	$fa2, $t2, $t3
	fdiv.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $t6, $t0
	bltu	$t8, $a4, .LBB2_232
# %bb.234:                              # %.lr.ph136.i359
                                        #   in Loop: Header=BB2_233 Depth=3
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_232
# %bb.235:                              # %.lr.ph.i106.i364.preheader
                                        #   in Loop: Header=BB2_233 Depth=3
	bgeu	$t1, $s0, .LBB2_237
# %bb.236:                              #   in Loop: Header=BB2_233 Depth=3
	move	$t0, $zero
	b	.LBB2_240
	.p2align	4, , 16
.LBB2_237:                              # %vector.ph743
                                        #   in Loop: Header=BB2_233 Depth=3
	move	$t2, $a7
	bstrins.d	$t2, $zero, 2, 0
	move	$t0, $t1
	bstrins.d	$t0, $zero, 2, 0
	addi.d	$t3, $t6, 16
	vreplvei.w	$vr2, $vr1, 0
	move	$t4, $a5
	.p2align	4, , 16
.LBB2_238:                              # %vector.body748
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_219 Depth=2
                                        #       Parent Loop BB2_233 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr3, $t4, -16
	vld	$vr4, $t4, 0
	vld	$vr5, $t3, -16
	vld	$vr6, $t3, 0
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vfsub.s	$vr3, $vr5, $vr3
	vfsub.s	$vr4, $vr6, $vr4
	vst	$vr3, $t3, -16
	vst	$vr4, $t3, 0
	addi.d	$t2, $t2, -8
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$t2, .LBB2_238
# %bb.239:                              # %middle.block755
                                        #   in Loop: Header=BB2_233 Depth=3
	beq	$t1, $t0, .LBB2_232
.LBB2_240:                              # %.lr.ph.i106.i364.preheader819
                                        #   in Loop: Header=BB2_233 Depth=3
	alsl.d	$t1, $t0, $a6, 2
	alsl.d	$t2, $t0, $t6, 2
	.p2align	4, , 16
.LBB2_241:                              # %.lr.ph.i106.i364
                                        #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_219 Depth=2
                                        #       Parent Loop BB2_233 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa2, $t1, 0
	fld.s	$fa3, $t2, 0
	fmul.s	$fa2, $fa1, $fa2
	fsub.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $t2, 0
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	bne	$a7, $t0, .LBB2_241
	b	.LBB2_232
.LBB2_242:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	vldi	$vr1, -1260
	fdiv.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 228
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs7, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function matgen
.LCPI3_0:
	.dword	0x3f10000000000000              # double 6.103515625E-5
	.text
	.globl	matgen
	.p2align	5
	.type	matgen,@function
matgen:                                 # @matgen
# %bb.0:
	st.w	$zero, $a4, 0
	blez	$a2, .LBB3_15
# %bb.1:                                # %.preheader52.us.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	move	$a0, $zero
	slli.d	$s3, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI3_0)
	ori	$a2, $zero, 1325
	ori	$a1, $zero, 3125
	lu12i.w	$a3, -8
	move	$a5, $s1
	.p2align	4, , 16
.LBB3_2:                                # %.preheader52.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	move	$a6, $s0
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_3:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$t0, $a2, $a3
	movgr2fr.d	$fa1, $t0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a7, 0
	fld.s	$fa2, $a4, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fst.s	$fa1, $a4, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB3_3
# %bb.4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a5, $a5, $s3
	bne	$a0, $s0, .LBB3_2
# %bb.5:                                # %.preheader.us.preheader
	slli.d	$a2, $s0, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	alsl.d	$a1, $s0, $fp, 2
	addi.d	$a2, $s0, -1
	mul.d	$a2, $a2, $s2
	add.d	$a2, $a2, $s0
	alsl.d	$a2, $a2, $s1, 2
	sltu	$a2, $fp, $a2
	sltu	$a1, $s1, $a1
	and	$a1, $a2, $a1
	slti	$a2, $s2, 0
	or	$a3, $a1, $a2
	bstrpick.d	$a1, $s0, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $s1, 16
	sltui	$a4, $s0, 8
	or	$a4, $a4, $a3
	addi.d	$a3, $fp, 16
	andi	$a4, $a4, 1
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %._crit_edge.us62
                                        #   in Loop: Header=BB3_7 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $s3
	add.d	$s1, $s1, $s3
	beq	$a0, $s0, .LBB3_14
.LBB3_7:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #     Child Loop BB3_13 Depth 2
	beqz	$a4, .LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
	move	$a7, $zero
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_9:                                # %vector.body.preheader
                                        #   in Loop: Header=BB3_7 Depth=1
	move	$a5, $a3
	move	$a6, $a2
	move	$a7, $a1
	.p2align	4, , 16
.LBB3_10:                               # %vector.body
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB3_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB3_7 Depth=1
	move	$a7, $a1
	beq	$a1, $s0, .LBB3_6
.LBB3_12:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_7 Depth=1
	alsl.d	$a5, $a7, $s1, 2
	alsl.d	$a6, $a7, $fp, 2
	sub.d	$a7, $s0, $a7
	.p2align	4, , 16
.LBB3_13:                               # %scalar.ph
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a6, 0
	fld.s	$fa1, $a5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	bnez	$a7, .LBB3_13
	b	.LBB3_6
.LBB3_14:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB3_15:                               # %._crit_edge61
	ret
.Lfunc_end3:
	.size	matgen, .Lfunc_end3-matgen
                                        # -- End function
	.globl	dgefa                           # -- Begin function dgefa
	.p2align	5
	.type	dgefa,@function
dgefa:                                  # @dgefa
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
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.w	$zero, $a4, 0
	addi.d	$a6, $a2, -1
	ori	$a3, $zero, 2
	addi.w	$a5, $a6, 0
	blt	$a2, $a3, .LBB4_31
# %bb.1:                                # %.lr.ph103.preheader
	move	$a7, $zero
	move	$s0, $zero
	move	$t0, $zero
	slli.d	$t1, $a1, 2
	addi.d	$t2, $t1, 4
	slli.d	$a3, $a2, 2
	addi.d	$a3, $a3, -4
	mul.d	$a3, $a3, $a1
	alsl.d	$a4, $a2, $a0, 2
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	add.d	$a3, $a4, $a3
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	addi.d	$t5, $a0, 4
	addi.d	$t6, $a0, 20
	alsl.d	$a4, $a1, $t6, 2
	add.d	$fp, $a0, $t2
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1040
	ori	$t4, $zero, 1
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.w	$s0, $a3, 0
.LBB4_3:                                # %.loopexit
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$t4, $t4, 1
	addi.d	$t5, $t5, 4
	add.w	$a7, $a7, $a1
	addi.d	$a6, $a6, -1
	addi.d	$t6, $t6, 4
	add.d	$a4, $a4, $t2
	add.d	$fp, $fp, $t2
	move	$s0, $s4
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	beq	$s4, $a5, .LBB4_31
.LBB4_4:                                # %.lr.ph103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #     Child Loop BB4_15 Depth 2
                                        #     Child Loop BB4_18 Depth 2
                                        #     Child Loop BB4_21 Depth 2
                                        #       Child Loop BB4_27 Depth 3
                                        #       Child Loop BB4_30 Depth 3
	alsl.d	$s8, $s0, $a0, 2
	sub.d	$a3, $a2, $s0
	mul.w	$a5, $t0, $a1
	alsl.d	$t8, $a5, $s8, 2
	ori	$a5, $zero, 1
	bne	$a3, $a5, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	move	$s3, $zero
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=1
	fld.s	$fa2, $t8, 0
	move	$s3, $zero
	alsl.d	$t7, $a7, $t5, 2
	fabs.s	$fa2, $fa2
	ori	$t3, $zero, 1
	move	$s1, $a2
	.p2align	4, , 16
.LBB4_7:                                # %.lr.ph48.i
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $t7, 0
	fabs.s	$fa3, $fa3
	fcmp.clt.s	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	movcf2gr	$a3, $fcc0
	masknez	$a5, $s3, $a3
	maskeqz	$a3, $t3, $a3
	or	$s3, $a3, $a5
	addi.d	$s1, $s1, -1
	addi.w	$t3, $t3, 1
	addi.d	$t7, $t7, 4
	bne	$t4, $s1, .LBB4_7
.LBB4_8:                                # %idamax.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	mul.d	$a3, $s0, $a1
	add.w	$t7, $s3, $s0
	alsl.d	$a3, $a3, $a0, 2
	slli.d	$a5, $t7, 2
	fldx.s	$fa2, $a3, $a5
	addi.d	$s4, $s0, 1
	slli.d	$a5, $s0, 2
	fcmp.ceq.s	$fcc0, $fa2, $fa0
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	stx.w	$t7, $t3, $a5
	bcnez	$fcc0, .LBB4_2
# %bb.9:                                #   in Loop: Header=BB4_4 Depth=1
	fld.s	$fa3, $t8, 0
	beqz	$s3, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$a3, $t7, $a3, 2
	fst.s	$fa3, $a3, 0
	fst.s	$fa2, $t8, 0
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_4 Depth=1
	fmov.s	$fa2, $fa3
.LBB4_12:                               #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a5, $a7, 2
	move	$a3, $a6
	bstrins.d	$a3, $zero, 2, 0
	nor	$t3, $s0, $zero
	add.d	$t3, $t3, $a2
	fdiv.s	$fa2, $fa1, $fa2
	ori	$t8, $zero, 8
	bgeu	$t3, $t8, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_4 Depth=1
	move	$t8, $zero
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_14:                               # %vector.ph125
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$t8, $t3
	bstrins.d	$t8, $zero, 2, 0
	vreplvei.w	$vr3, $vr2, 0
	move	$s1, $a5
	move	$s2, $a3
	.p2align	4, , 16
.LBB4_15:                               # %vector.body130
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr4, $t5, $s1
	vldx	$vr5, $t6, $s1
	vfmul.s	$vr4, $vr3, $vr4
	vfmul.s	$vr5, $vr3, $vr5
	vstx	$vr4, $t5, $s1
	vstx	$vr5, $t6, $s1
	addi.d	$s2, $s2, -8
	addi.d	$s1, $s1, 32
	bnez	$s2, .LBB4_15
# %bb.16:                               # %middle.block135
                                        #   in Loop: Header=BB4_4 Depth=1
	beq	$t3, $t8, .LBB4_19
.LBB4_17:                               # %.lr.ph25.i.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$s1, $t8, $a5, 2
	.p2align	4, , 16
.LBB4_18:                               # %.lr.ph25.i
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa3, $t5, $s1
	fmul.s	$fa3, $fa2, $fa3
	fstx.s	$fa3, $t5, $s1
	addi.d	$t8, $t8, 1
	addi.d	$s1, $s1, 4
	bne	$a6, $t8, .LBB4_18
.LBB4_19:                               # %.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	mul.d	$t8, $t2, $s4
	add.d	$t8, $a0, $t8
	mul.w	$s1, $a1, $s0
	alsl.d	$s2, $s1, $s8, 2
	addi.d	$s2, $s2, 4
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s1, $s1, $s5, 2
	slti	$s5, $a1, 0
	alsl.d	$s8, $t7, $a0, 2
	sltu	$t7, $t8, $s1
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	sltu	$t8, $s2, $t8
	and	$t7, $t7, $t8
	or	$ra, $t7, $s5
	move	$s1, $t3
	bstrins.d	$s1, $zero, 2, 0
	move	$t8, $fp
	move	$t7, $a4
	move	$s2, $t4
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_20:                               # %daxpy.exit
                                        #   in Loop: Header=BB4_21 Depth=2
	addi.d	$s2, $s2, 1
	add.d	$t7, $t7, $t1
	add.d	$t8, $t8, $t1
	beq	$s2, $a2, .LBB4_3
.LBB4_21:                               #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_27 Depth 3
                                        #       Child Loop BB4_30 Depth 3
	mul.d	$s5, $s2, $a1
	slli.d	$s6, $s5, 2
	fldx.s	$fa2, $s8, $s6
	beqz	$s3, .LBB4_23
# %bb.22:                               #   in Loop: Header=BB4_21 Depth=2
	add.d	$s6, $s5, $s0
	slli.d	$s6, $s6, 2
	fldx.s	$fa3, $a0, $s6
	alsl.d	$s5, $s5, $s8, 2
	fst.s	$fa3, $s5, 0
	fstx.s	$fa2, $a0, $s6
.LBB4_23:                               # %._crit_edge
                                        #   in Loop: Header=BB4_21 Depth=2
	fcmp.ceq.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB4_20
# %bb.24:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_21 Depth=2
	sltui	$s5, $t3, 8
	or	$s5, $s5, $ra
	andi	$s5, $s5, 1
	beqz	$s5, .LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_21 Depth=2
	move	$s7, $zero
	b	.LBB4_29
.LBB4_26:                               # %vector.ph
                                        #   in Loop: Header=BB4_21 Depth=2
	vreplvei.w	$vr3, $vr2, 0
	move	$s7, $t7
	move	$s5, $a5
	move	$s6, $a3
	.p2align	4, , 16
.LBB4_27:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr4, $t5, $s5
	vldx	$vr5, $t6, $s5
	vld	$vr6, $s7, -16
	vld	$vr7, $s7, 0
	vfmul.s	$vr4, $vr3, $vr4
	vfmul.s	$vr5, $vr3, $vr5
	vfadd.s	$vr4, $vr6, $vr4
	vfadd.s	$vr5, $vr7, $vr5
	vst	$vr4, $s7, -16
	vst	$vr5, $s7, 0
	addi.d	$s6, $s6, -8
	addi.d	$s5, $s5, 32
	addi.d	$s7, $s7, 32
	bnez	$s6, .LBB4_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB4_21 Depth=2
	move	$s7, $s1
	beq	$t3, $s1, .LBB4_20
.LBB4_29:                               # %.lr.ph.i.preheader138
                                        #   in Loop: Header=BB4_21 Depth=2
	alsl.d	$s5, $s7, $a5, 2
	alsl.d	$s6, $s7, $t8, 2
	.p2align	4, , 16
.LBB4_30:                               # %.lr.ph.i
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.s	$fa3, $t5, $s5
	fld.s	$fa4, $s6, 0
	fmul.s	$fa3, $fa2, $fa3
	fadd.s	$fa3, $fa4, $fa3
	fst.s	$fa3, $s6, 0
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	bne	$a6, $s7, .LBB4_30
	b	.LBB4_20
.LBB4_31:                               # %.loopexit100
	addi.d	$a1, $a1, 1
	mul.w	$a1, $a5, $a1
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	slli.d	$a0, $a5, 2
	movgr2fr.w	$fa1, $zero
	fcmp.cune.s	$fcc0, $fa0, $fa1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	stx.w	$a5, $a1, $a0
	bcnez	$fcc0, .LBB4_33
# %bb.32:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a5, $a0, 0
.LBB4_33:
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	dgefa, .Lfunc_end4-dgefa
                                        # -- End function
	.globl	dgesl                           # -- Begin function dgesl
	.p2align	5
	.type	dgesl,@function
dgesl:                                  # @dgesl
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a6, $a2, -1
	addi.w	$a7, $a6, 0
	beqz	$a5, .LBB5_14
# %bb.1:                                # %.preheader127
	blez	$a2, .LBB5_43
# %bb.2:                                # %.lr.ph.preheader
	move	$a5, $zero
	move	$a6, $zero
	slli.d	$t0, $a1, 2
	movgr2fr.w	$fa0, $zero
	move	$t1, $a0
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %ddot.exit
                                        #   in Loop: Header=BB5_4 Depth=1
	mul.w	$t2, $a6, $a1
	slli.d	$t3, $a5, 2
	fldx.s	$fa2, $a4, $t3
	alsl.d	$t4, $a5, $a0, 2
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $t4, $t2
	fsub.s	$fa1, $fa2, $fa1
	fdiv.s	$fa1, $fa1, $fa3
	fstx.s	$fa1, $a4, $t3
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 1
	add.d	$t1, $t1, $t0
	beq	$a5, $a2, .LBB5_7
.LBB5_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	fmov.s	$fa1, $fa0
	beqz	$a5, .LBB5_3
# %bb.5:                                # %.lr.ph.i112.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$t2, $t1
	move	$t3, $a4
	move	$t4, $a5
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB5_6:                                # %.lr.ph.i112
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t2, 0
	fld.s	$fa3, $t3, 0
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, 4
	bnez	$t4, .LBB5_6
	b	.LBB5_3
.LBB5_7:                                # %._crit_edge
	ori	$a5, $zero, 3
	blt	$a2, $a5, .LBB5_43
# %bb.8:                                # %.lr.ph131
	addi.d	$a6, $a1, 1
	alsl.d	$a5, $a2, $a4, 2
	addi.d	$a0, $a0, 4
	addi.d	$t0, $a2, -2
	mulw.d.w	$a6, $t0, $a6
	nor	$a1, $a1, $zero
	ori	$t0, $zero, 1
	addi.w	$t1, $zero, -4
	movgr2fr.w	$fa0, $zero
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_10 Depth=1
	addi.d	$t1, $t1, -4
	add.d	$a6, $a6, $a1
	beq	$t0, $a7, .LBB5_43
.LBB5_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
	addi.d	$t0, $t0, 1
	sub.d	$t3, $a2, $t0
	slli.d	$t4, $t3, 2
	fldx.s	$fa1, $a4, $t4
	addi.w	$t2, $a6, 0
	alsl.d	$t5, $t2, $a0, 2
	alsl.d	$t2, $t3, $a4, 2
	move	$t6, $t1
	fmov.s	$fa2, $fa0
	.p2align	4, , 16
.LBB5_11:                               # %.lr.ph.i117
                                        #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $t5, 0
	fldx.s	$fa4, $a5, $t6
	fmul.s	$fa3, $fa3, $fa4
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$t6, $t6, 4
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB5_11
# %bb.12:                               # %ddot.exit123
                                        #   in Loop: Header=BB5_10 Depth=1
	ldx.w	$t4, $a3, $t4
	addi.w	$t3, $t3, 0
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $t2, 0
	beq	$t4, $t3, .LBB5_9
# %bb.13:                               #   in Loop: Header=BB5_10 Depth=1
	slli.d	$t3, $t4, 2
	fldx.s	$fa2, $a4, $t3
	fstx.s	$fa1, $a4, $t3
	fst.s	$fa2, $t2, 0
	b	.LBB5_9
.LBB5_14:
	ori	$a5, $zero, 2
	blt	$a2, $a5, .LBB5_29
# %bb.15:                               # %.lr.ph133
	move	$a5, $zero
	move	$t0, $zero
	addi.d	$t1, $a1, 1
	alsl.d	$t2, $a2, $a4, 2
	addi.d	$t3, $a0, 4
	addi.d	$t4, $a2, -1
	addi.d	$t5, $a0, 20
	addi.d	$t6, $a4, 20
	addi.d	$t7, $a4, 4
	movgr2fr.w	$fa0, $zero
	ori	$t8, $zero, 8
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_16:                               #   in Loop: Header=BB5_18 Depth=1
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB5_20
.LBB5_17:                               # %daxpy.exit
                                        #   in Loop: Header=BB5_18 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$t4, $t4, -1
	add.w	$a5, $a5, $t1
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, 4
	beq	$t0, $a7, .LBB5_29
.LBB5_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
                                        #     Child Loop BB5_25 Depth 2
	slli.d	$fp, $t0, 2
	ldx.wu	$s1, $a3, $fp
	addi.w	$s0, $s1, 0
	slli.d	$s2, $s0, 2
	fldx.s	$fa1, $a4, $s2
	beq	$t0, $s1, .LBB5_16
# %bb.19:                               #   in Loop: Header=BB5_18 Depth=1
	fldx.s	$fa2, $a4, $fp
	alsl.d	$s0, $s0, $a4, 2
	fst.s	$fa2, $s0, 0
	fstx.s	$fa1, $a4, $fp
	b	.LBB5_16
	.p2align	4, , 16
.LBB5_20:                               #   in Loop: Header=BB5_18 Depth=1
	nor	$fp, $t0, $zero
	add.d	$s0, $fp, $a2
	bltu	$s0, $t8, .LBB5_23
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_18 Depth=1
	alsl.d	$fp, $t0, $a4, 2
	addi.d	$s1, $fp, 4
	mul.w	$fp, $t1, $t0
	sub.d	$s2, $a2, $t0
	alsl.d	$s2, $s2, $a0, 2
	alsl.d	$s2, $fp, $s2, 2
	bgeu	$s1, $s2, .LBB5_26
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_18 Depth=1
	alsl.d	$fp, $fp, $t3, 2
	bgeu	$fp, $t2, .LBB5_26
.LBB5_23:                               #   in Loop: Header=BB5_18 Depth=1
	move	$fp, $zero
.LBB5_24:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB5_18 Depth=1
	slli.d	$s0, $a5, 2
	alsl.d	$s0, $fp, $s0, 2
	add.d	$s0, $t3, $s0
	alsl.d	$s1, $fp, $t7, 2
	.p2align	4, , 16
.LBB5_25:                               # %.lr.ph.i
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $s0, 0
	fld.s	$fa3, $s1, 0
	fmul.s	$fa2, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $s1, 0
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, 4
	bne	$t4, $fp, .LBB5_25
	b	.LBB5_17
.LBB5_26:                               # %vector.ph
                                        #   in Loop: Header=BB5_18 Depth=1
	move	$s1, $t4
	bstrins.d	$s1, $zero, 2, 0
	alsl.d	$s2, $a5, $t5, 2
	move	$fp, $s0
	bstrins.d	$fp, $zero, 2, 0
	vreplvei.w	$vr2, $vr1, 0
	move	$s3, $t6
	.p2align	4, , 16
.LBB5_27:                               # %vector.body
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $s2, -16
	vld	$vr4, $s2, 0
	vld	$vr5, $s3, -16
	vld	$vr6, $s3, 0
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vfadd.s	$vr3, $vr5, $vr3
	vfadd.s	$vr4, $vr6, $vr4
	vst	$vr3, $s3, -16
	vst	$vr4, $s3, 0
	addi.d	$s1, $s1, -8
	addi.d	$s2, $s2, 32
	addi.d	$s3, $s3, 32
	bnez	$s1, .LBB5_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB5_18 Depth=1
	beq	$s0, $fp, .LBB5_17
	b	.LBB5_24
.LBB5_29:                               # %.loopexit124
	blez	$a2, .LBB5_43
# %bb.30:                               # %.lr.ph136.preheader
	move	$a7, $zero
	move	$a3, $zero
	slli.d	$a5, $a2, 2
	addi.d	$a5, $a5, -4
	slli.d	$t0, $a1, 2
	sub.d	$t0, $zero, $t0
	nor	$t1, $a1, $zero
	slli.d	$t1, $t1, 2
	mul.d	$t2, $a6, $a1
	alsl.d	$t2, $t2, $a0, 2
	add.d	$t3, $a5, $t2
	addi.d	$t4, $t2, 16
	addi.d	$t5, $a4, 16
	movgr2fr.w	$fa0, $zero
	ori	$t6, $zero, 8
	move	$t7, $t2
	b	.LBB5_32
	.p2align	4, , 16
.LBB5_31:                               # %daxpy.exit110
                                        #   in Loop: Header=BB5_32 Depth=1
	addi.d	$a6, $a6, -1
	add.d	$t4, $t4, $t0
	add.d	$t7, $t7, $t0
	beq	$a7, $a2, .LBB5_43
.LBB5_32:                               # %.lr.ph136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_41 Depth 2
                                        #     Child Loop BB5_39 Depth 2
	move	$t8, $a7
	addi.d	$a7, $a7, 1
	addi.d	$a3, $a3, 1
	sub.d	$fp, $a2, $a7
	sub.d	$s0, $a2, $a3
	slli.d	$s1, $fp, 2
	fldx.s	$fa1, $a4, $s1
	mul.w	$s0, $s0, $a1
	alsl.d	$s2, $fp, $a0, 2
	slli.d	$s0, $s0, 2
	fldx.s	$fa2, $s2, $s0
	fdiv.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a4, $s1
	blez	$fp, .LBB5_31
# %bb.33:                               # %.lr.ph136
                                        #   in Loop: Header=BB5_32 Depth=1
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_31
# %bb.34:                               # %.lr.ph.i106.preheader
                                        #   in Loop: Header=BB5_32 Depth=1
	nor	$fp, $t8, $zero
	add.d	$fp, $fp, $a2
	bltu	$fp, $t6, .LBB5_37
# %bb.35:                               # %vector.memcheck168
                                        #   in Loop: Header=BB5_32 Depth=1
	mul.d	$s0, $t1, $t8
	add.d	$s0, $t3, $s0
	bgeu	$a4, $s0, .LBB5_40
# %bb.36:                               # %vector.memcheck168
                                        #   in Loop: Header=BB5_32 Depth=1
	slli.d	$s0, $t8, 2
	sub.d	$s0, $a5, $s0
	add.d	$s0, $a4, $s0
	mul.d	$t8, $t0, $t8
	add.d	$t8, $t2, $t8
	bgeu	$t8, $s0, .LBB5_40
.LBB5_37:                               #   in Loop: Header=BB5_32 Depth=1
	move	$t8, $zero
.LBB5_38:                               # %.lr.ph.i106.preheader192
                                        #   in Loop: Header=BB5_32 Depth=1
	alsl.d	$fp, $t8, $t7, 2
	alsl.d	$s0, $t8, $a4, 2
	.p2align	4, , 16
.LBB5_39:                               # %.lr.ph.i106
                                        #   Parent Loop BB5_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $fp, 0
	fld.s	$fa3, $s0, 0
	fmul.s	$fa2, $fa1, $fa2
	fsub.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $s0, 0
	addi.d	$t8, $t8, 1
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 4
	bne	$a6, $t8, .LBB5_39
	b	.LBB5_31
.LBB5_40:                               # %vector.ph177
                                        #   in Loop: Header=BB5_32 Depth=1
	move	$s0, $a6
	bstrins.d	$s0, $zero, 2, 0
	move	$t8, $fp
	bstrins.d	$t8, $zero, 2, 0
	vreplvei.w	$vr2, $vr1, 0
	move	$s1, $t5
	move	$s2, $t4
	.p2align	4, , 16
.LBB5_41:                               # %vector.body182
                                        #   Parent Loop BB5_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $s2, -16
	vld	$vr4, $s2, 0
	vld	$vr5, $s1, -16
	vld	$vr6, $s1, 0
	vfmul.s	$vr3, $vr2, $vr3
	vfmul.s	$vr4, $vr2, $vr4
	vfsub.s	$vr3, $vr5, $vr3
	vfsub.s	$vr4, $vr6, $vr4
	vst	$vr3, $s1, -16
	vst	$vr4, $s1, 0
	addi.d	$s0, $s0, -8
	addi.d	$s2, $s2, 32
	addi.d	$s1, $s1, 32
	bnez	$s0, .LBB5_41
# %bb.42:                               # %middle.block189
                                        #   in Loop: Header=BB5_32 Depth=1
	beq	$fp, $t8, .LBB5_31
	b	.LBB5_38
.LBB5_43:                               # %.loopexit
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	dgesl, .Lfunc_end5-dgesl
                                        # -- End function
	.globl	dmxpy                           # -- Begin function dmxpy
	.p2align	5
	.type	dmxpy,@function
dmxpy:                                  # @dmxpy
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	move	$a6, $a2
	bstrins.d	$a6, $zero, 30, 1
	ori	$a7, $zero, 1
	move	$s8, $a4
	move	$s6, $a0
	bne	$a6, $a7, .LBB6_6
# %bb.1:
	blez	$s6, .LBB6_6
# %bb.2:                                # %.lr.ph.preheader
	ori	$a0, $zero, 8
	bgeu	$s6, $a0, .LBB6_39
# %bb.3:
	move	$a0, $zero
.LBB6_4:                                # %.lr.ph.preheader758
	alsl.d	$a6, $a0, $a1, 2
	alsl.d	$a4, $a0, $a5, 2
	sub.d	$a0, $s6, $a0
	.p2align	4, , 16
.LBB6_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s8, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a6, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a6, 0
	addi.d	$a6, $a6, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB6_5
.LBB6_6:                                # %.loopexit245
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 62, 61
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 2
	slli.d	$a0, $a0, 2
	sub.w	$a0, $a2, $a0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB6_13
# %bb.7:
	blez	$s6, .LBB6_19
# %bb.8:                                # %.lr.ph248
	addi.w	$a6, $a0, -1
	addi.w	$a1, $a0, -2
	alsl.d	$a0, $a1, $s8, 2
	mul.w	$a4, $a1, $a3
	alsl.d	$a1, $a6, $s8, 2
	ori	$a7, $zero, 16
	mul.w	$a6, $a6, $a3
	bgeu	$s6, $a7, .LBB6_55
# %bb.9:
	move	$a7, $zero
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
.LBB6_10:                               # %scalar.ph375.preheader
	slli.d	$t0, $a7, 2
	alsl.d	$a6, $a6, $t0, 2
	add.d	$a6, $a5, $a6
	alsl.d	$a4, $a4, $t0, 2
	add.d	$a4, $a5, $a4
	alsl.d	$t0, $a7, $t4, 2
	sub.d	$a7, $s6, $a7
	.p2align	4, , 16
.LBB6_11:                               # %scalar.ph375
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t0, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a4, 0
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a6, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa3, $fa4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t0, 0
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	bnez	$a7, .LBB6_11
.LBB6_12:                               # %.loopexit243.thread280
	bstrpick.d	$a0, $a2, 62, 60
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a0, $a0, 3
	sub.w	$a4, $a2, $a0
	ori	$a0, $zero, 4
	bge	$a4, $a0, .LBB6_15
	b	.LBB6_19
.LBB6_13:                               # %.loopexit243
	bstrpick.d	$a0, $a2, 62, 60
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a0, $a0, 3
	sub.w	$a4, $a2, $a0
	ori	$a0, $zero, 4
	blt	$a4, $a0, .LBB6_19
# %bb.14:                               # %.loopexit243
	blez	$s6, .LBB6_19
.LBB6_15:                               # %.lr.ph250
	addi.d	$t1, $a4, -1
	addi.d	$a1, $a4, -4
	bstrpick.d	$a0, $a1, 31, 0
	alsl.d	$a0, $a0, $s8, 2
	mul.w	$a7, $a1, $a3
	addi.d	$a6, $a4, -3
	bstrpick.d	$a1, $a6, 31, 0
	alsl.d	$a1, $a1, $s8, 2
	mul.w	$t0, $a6, $a3
	addi.d	$a6, $a4, -2
	bstrpick.d	$a4, $a6, 31, 0
	alsl.d	$a4, $a4, $s8, 2
	mul.w	$t2, $a6, $a3
	bstrpick.d	$a6, $t1, 31, 0
	alsl.d	$a6, $a6, $s8, 2
	mul.w	$t3, $t1, $a3
	ori	$t4, $zero, 16
	bstrpick.d	$t1, $s6, 31, 0
	bgeu	$s6, $t4, .LBB6_44
# %bb.16:
	move	$t4, $zero
.LBB6_17:                               # %scalar.ph437.preheader
	slli.d	$t5, $t4, 2
	alsl.d	$t3, $t3, $t5, 2
	add.d	$t3, $a5, $t3
	alsl.d	$t2, $t2, $t5, 2
	add.d	$t2, $a5, $t2
	alsl.d	$t0, $t0, $t5, 2
	add.d	$t0, $a5, $t0
	alsl.d	$a7, $a7, $t5, 2
	add.d	$a7, $a5, $a7
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$t5, $t4, $t5, 2
	sub.d	$t1, $t1, $t4
	.p2align	4, , 16
.LBB6_18:                               # %scalar.ph437
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t5, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a7, 0
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $t0, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa3, $fa4
	fld.s	$fa2, $a4, 0
	fld.s	$fa3, $t2, 0
	fld.s	$fa4, $a6, 0
	fld.s	$fa5, $t3, 0
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t5, 0
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$t1, $t1, -1
	addi.d	$t5, $t5, 4
	bnez	$t1, .LBB6_18
.LBB6_19:                               # %.loopexit242
	bstrpick.d	$a0, $a2, 62, 59
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 4
	slli.d	$a0, $a0, 4
	sub.w	$a6, $a2, $a0
	ori	$a0, $zero, 8
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	blt	$a6, $a0, .LBB6_27
# %bb.20:
	blez	$s6, .LBB6_38
# %bb.21:                               # %.lr.ph252
	addi.d	$a0, $a6, -1
	addi.d	$a1, $a6, -8
	bstrpick.d	$a4, $a1, 31, 0
	alsl.d	$a7, $a4, $s8, 2
	mul.w	$t7, $a1, $a3
	addi.d	$a1, $a6, -7
	bstrpick.d	$a4, $a1, 31, 0
	alsl.d	$t0, $a4, $s8, 2
	mul.w	$ra, $a1, $a3
	addi.d	$a1, $a6, -6
	bstrpick.d	$a4, $a1, 31, 0
	alsl.d	$t1, $a4, $s8, 2
	mul.w	$t8, $a1, $a3
	addi.d	$a1, $a6, -5
	bstrpick.d	$a4, $a1, 31, 0
	alsl.d	$t2, $a4, $s8, 2
	mul.w	$s3, $a1, $a3
	addi.d	$a1, $a6, -4
	bstrpick.d	$a4, $a1, 31, 0
	alsl.d	$t3, $a4, $s8, 2
	mul.w	$s4, $a1, $a3
	addi.d	$a1, $a6, -3
	bstrpick.d	$a4, $a1, 31, 0
	alsl.d	$t4, $a4, $s8, 2
	mul.w	$s7, $a1, $a3
	addi.d	$a1, $a6, -2
	bstrpick.d	$a4, $a1, 31, 0
	alsl.d	$t5, $a4, $s8, 2
	mul.w	$s5, $a1, $a3
	bstrpick.d	$a1, $a0, 31, 0
	alsl.d	$t6, $a1, $s8, 2
	mul.w	$s8, $a0, $a3
	st.d	$t7, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$t7, $t7, $a5, 2
	alsl.d	$a0, $ra, $a5, 2
	st.d	$t8, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$a1, $t8, $a5, 2
	alsl.d	$t8, $s3, $a5, 2
	alsl.d	$a4, $s4, $a5, 2
	alsl.d	$fp, $s7, $a5, 2
	alsl.d	$s0, $s5, $a5, 2
	ori	$s2, $zero, 20
	alsl.d	$s1, $s8, $a5, 2
	bltu	$s6, $s2, .LBB6_23
# %bb.22:                               # %vector.memcheck461
	add.d	$s2, $ra, $s6
	alsl.d	$s2, $s2, $a5, 2
	vinsgr2vr.d	$vr0, $s2, 0
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	add.d	$s2, $s2, $s6
	alsl.d	$s2, $s2, $a5, 2
	vinsgr2vr.d	$vr0, $s2, 1
	add.d	$s2, $s3, $s6
	alsl.d	$s2, $s2, $a5, 2
	vinsgr2vr.d	$vr1, $s2, 0
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	add.d	$s2, $s2, $s6
	alsl.d	$s2, $s2, $a5, 2
	vinsgr2vr.d	$vr1, $s2, 1
	add.d	$s2, $s7, $s6
	alsl.d	$s2, $s2, $a5, 2
	vinsgr2vr.d	$vr2, $s2, 0
	add.d	$s2, $s4, $s6
	alsl.d	$s2, $s2, $a5, 2
	vinsgr2vr.d	$vr2, $s2, 1
	add.d	$s2, $s8, $s6
	alsl.d	$s2, $s2, $a5, 2
	vinsgr2vr.d	$vr3, $s2, 0
	add.d	$s2, $s5, $s6
	alsl.d	$s2, $s2, $a5, 2
	vinsgr2vr.d	$vr3, $s2, 1
	addi.d	$s2, $t0, 4
	vinsgr2vr.d	$vr4, $s2, 0
	addi.d	$s2, $a7, 4
	vinsgr2vr.d	$vr4, $s2, 1
	addi.d	$s2, $t2, 4
	vinsgr2vr.d	$vr5, $s2, 0
	addi.d	$s2, $t1, 4
	vinsgr2vr.d	$vr5, $s2, 1
	addi.d	$s2, $t4, 4
	vinsgr2vr.d	$vr6, $s2, 0
	addi.d	$s2, $t3, 4
	vinsgr2vr.d	$vr6, $s2, 1
	addi.d	$s2, $t6, 4
	vinsgr2vr.d	$vr7, $s2, 0
	addi.d	$s2, $t5, 4
	vinsgr2vr.d	$vr7, $s2, 1
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$s2, $s6, $s3, 2
	vreplgr2vr.d	$vr8, $s3
	vslt.du	$vr7, $vr8, $vr7
	vslt.du	$vr6, $vr8, $vr6
	vpickev.w	$vr6, $vr6, $vr7
	vslt.du	$vr5, $vr8, $vr5
	vslt.du	$vr4, $vr8, $vr4
	vpickev.w	$vr4, $vr4, $vr5
	vpickev.h	$vr4, $vr4, $vr6
	vslt.du	$vr3, $vr8, $vr3
	vslt.du	$vr2, $vr8, $vr2
	vpickev.w	$vr2, $vr2, $vr3
	vslt.du	$vr1, $vr8, $vr1
	vslt.du	$vr0, $vr8, $vr0
	vpickev.w	$vr0, $vr0, $vr1
	vpickev.h	$vr0, $vr0, $vr2
	vpickev.b	$vr0, $vr0, $vr4
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr1, $t7, 1
	vinsgr2vr.d	$vr2, $t8, 0
	vinsgr2vr.d	$vr2, $a1, 1
	vinsgr2vr.d	$vr3, $fp, 0
	vinsgr2vr.d	$vr3, $a4, 1
	vinsgr2vr.d	$vr4, $s1, 0
	vinsgr2vr.d	$vr4, $s0, 1
	vinsgr2vr.d	$vr5, $t0, 0
	vinsgr2vr.d	$vr5, $a7, 1
	vinsgr2vr.d	$vr6, $t2, 0
	vinsgr2vr.d	$vr6, $t1, 1
	vinsgr2vr.d	$vr7, $t4, 0
	vinsgr2vr.d	$vr7, $t3, 1
	vinsgr2vr.d	$vr8, $t6, 0
	vinsgr2vr.d	$vr8, $t5, 1
	vreplgr2vr.d	$vr9, $s2
	vslt.du	$vr8, $vr8, $vr9
	vslt.du	$vr7, $vr7, $vr9
	vpickev.w	$vr7, $vr7, $vr8
	vslt.du	$vr6, $vr6, $vr9
	vslt.du	$vr5, $vr5, $vr9
	vpickev.w	$vr5, $vr5, $vr6
	vpickev.h	$vr5, $vr5, $vr7
	vslt.du	$vr4, $vr4, $vr9
	vslt.du	$vr3, $vr3, $vr9
	vpickev.w	$vr3, $vr3, $vr4
	vslt.du	$vr2, $vr2, $vr9
	vslt.du	$vr1, $vr1, $vr9
	vpickev.w	$vr1, $vr1, $vr2
	vpickev.h	$vr1, $vr1, $vr3
	vpickev.b	$vr1, $vr1, $vr5
	vand.v	$vr0, $vr0, $vr1
	vslli.b	$vr0, $vr0, 7
	vmskltz.b	$vr0, $vr0
	vpickve2gr.hu	$s2, $vr0, 0
	beqz	$s2, .LBB6_62
.LBB6_23:
	move	$s3, $zero
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
.LBB6_24:                               # %scalar.ph542.preheader
	slli.d	$s2, $s3, 2
	sub.d	$s3, $s6, $s3
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_25:                               # %scalar.ph542
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s4, $s2
	fld.s	$fa1, $a7, 0
	fldx.s	$fa2, $t7, $s2
	fld.s	$fa3, $t0, 0
	fldx.s	$fa4, $a0, $s2
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa3, $fa4
	fld.s	$fa2, $t1, 0
	fldx.s	$fa3, $a1, $s2
	fld.s	$fa4, $t2, 0
	fldx.s	$fa5, $t8, $s2
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	fld.s	$fa2, $t3, 0
	fldx.s	$fa3, $a4, $s2
	fld.s	$fa4, $t4, 0
	fldx.s	$fa5, $fp, $s2
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	fld.s	$fa2, $t5, 0
	fldx.s	$fa3, $s0, $s2
	fld.s	$fa4, $t6, 0
	fldx.s	$fa5, $s1, $s2
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	fadd.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $s4, $s2
	addi.d	$s1, $s1, 4
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 4
	addi.d	$a4, $a4, 4
	addi.d	$t8, $t8, 4
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	addi.d	$t7, $t7, 4
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 4
	bnez	$s3, .LBB6_25
.LBB6_26:                               # %.loopexit.thread282
	addi.w	$a0, $a6, 15
	blt	$a0, $a2, .LBB6_29
	b	.LBB6_38
.LBB6_27:                               # %.loopexit
	addi.w	$a0, $a6, 15
	bge	$a0, $a2, .LBB6_38
# %bb.28:                               # %.loopexit
	blez	$s6, .LBB6_38
.LBB6_29:                               # %.preheader.us.preheader
	addi.d	$a0, $a6, 15
	bstrpick.d	$s2, $a0, 31, 0
	bstrpick.d	$a6, $a2, 31, 0
	bstrpick.d	$s3, $s6, 31, 0
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a0, $s3, $s1, 2
	alsl.d	$a1, $s2, $s8, 2
	addi.d	$a1, $a1, -60
	addi.d	$a2, $s2, 16
	sltu	$a4, $a6, $a2
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	masknez	$a6, $a6, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a6
	nor	$a4, $s2, $zero
	add.d	$a2, $a2, $a4
	slli.d	$a2, $a2, 2
	bstrins.d	$a2, $zero, 5, 0
	alsl.d	$a4, $s2, $a2, 2
	add.d	$a2, $s8, $a4
	addi.d	$a7, $a2, 4
	mul.d	$a2, $a3, $s2
	alsl.d	$s4, $a2, $a5, 2
	mul.d	$a2, $a4, $a3
	add.d	$a2, $a5, $a2
	alsl.d	$t1, $s3, $a2, 2
	addi.d	$a2, $a4, -4
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a5, $a2
	alsl.d	$t4, $s3, $a2, 2
	addi.w	$a2, $zero, -2
	lu52i.d	$a2, $a2, 1023
	add.d	$a2, $s2, $a2
	mul.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a5, 2
	addi.d	$a6, $a4, -8
	mul.d	$a6, $a6, $a3
	add.d	$a6, $a5, $a6
	alsl.d	$t5, $s3, $a6, 2
	addi.w	$a6, $zero, -3
	lu52i.d	$a6, $a6, 1023
	add.d	$a6, $s2, $a6
	mul.d	$a6, $a6, $a3
	alsl.d	$a6, $a6, $a5, 2
	addi.d	$t0, $a4, -12
	mul.d	$t0, $t0, $a3
	add.d	$t0, $a5, $t0
	alsl.d	$t6, $s3, $t0, 2
	addi.w	$t0, $zero, -4
	lu52i.d	$t0, $t0, 1023
	add.d	$t0, $s2, $t0
	mul.d	$t0, $t0, $a3
	alsl.d	$t0, $t0, $a5, 2
	addi.d	$t2, $a4, -16
	mul.d	$t2, $t2, $a3
	add.d	$t2, $a5, $t2
	alsl.d	$t7, $s3, $t2, 2
	addi.w	$t2, $zero, -5
	lu52i.d	$t2, $t2, 1023
	add.d	$t2, $s2, $t2
	mul.d	$t2, $t2, $a3
	alsl.d	$t2, $t2, $a5, 2
	addi.d	$t3, $a4, -20
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a5, $t3
	alsl.d	$t8, $s3, $t3, 2
	addi.w	$t3, $zero, -6
	lu52i.d	$t3, $t3, 1023
	add.d	$t3, $s2, $t3
	mul.d	$t3, $t3, $a3
	alsl.d	$t3, $t3, $a5, 2
	addi.d	$fp, $a4, -24
	mul.d	$fp, $fp, $a3
	add.d	$fp, $a5, $fp
	alsl.d	$fp, $s3, $fp, 2
	addi.d	$s0, $a4, -52
	mul.d	$s0, $s0, $a3
	add.d	$s0, $a5, $s0
	alsl.d	$s0, $s3, $s0, 2
	vinsgr2vr.d	$vr0, $s0, 0
	addi.d	$s0, $a4, -56
	mul.d	$s0, $s0, $a3
	add.d	$s0, $a5, $s0
	alsl.d	$s0, $s3, $s0, 2
	vinsgr2vr.d	$vr0, $s0, 1
	addi.d	$s0, $a4, -44
	mul.d	$s0, $s0, $a3
	add.d	$s0, $a5, $s0
	alsl.d	$s0, $s3, $s0, 2
	vinsgr2vr.d	$vr1, $s0, 0
	addi.d	$s0, $a4, -48
	mul.d	$s0, $s0, $a3
	add.d	$s0, $a5, $s0
	alsl.d	$s0, $s3, $s0, 2
	vinsgr2vr.d	$vr1, $s0, 1
	addi.d	$s0, $a4, -36
	mul.d	$s0, $s0, $a3
	add.d	$s0, $a5, $s0
	alsl.d	$s0, $s3, $s0, 2
	vinsgr2vr.d	$vr2, $s0, 0
	addi.d	$s0, $a4, -40
	mul.d	$s0, $s0, $a3
	add.d	$s0, $a5, $s0
	alsl.d	$s0, $s3, $s0, 2
	vinsgr2vr.d	$vr2, $s0, 1
	addi.d	$s0, $a4, -28
	mul.d	$s0, $s0, $a3
	add.d	$s0, $a5, $s0
	alsl.d	$s0, $s3, $s0, 2
	vinsgr2vr.d	$vr3, $s0, 0
	addi.d	$s0, $a4, -32
	mul.d	$s0, $s0, $a3
	add.d	$s0, $a5, $s0
	alsl.d	$s0, $s3, $s0, 2
	vinsgr2vr.d	$vr3, $s0, 1
	addi.w	$s0, $zero, -7
	lu52i.d	$s0, $s0, 1023
	add.d	$s0, $s2, $s0
	mul.d	$s0, $s0, $a3
	alsl.d	$s0, $s0, $a5, 2
	vinsgr2vr.d	$vr4, $t8, 0
	addi.w	$t8, $zero, -8
	lu52i.d	$t8, $t8, 1023
	add.d	$t8, $s2, $t8
	mul.d	$t8, $t8, $a3
	alsl.d	$t8, $t8, $a5, 2
	vinsgr2vr.d	$vr4, $fp, 1
	addi.w	$fp, $zero, -9
	lu52i.d	$fp, $fp, 1023
	add.d	$fp, $s2, $fp
	mul.d	$fp, $fp, $a3
	alsl.d	$fp, $fp, $a5, 2
	vinsgr2vr.d	$vr5, $t6, 0
	addi.w	$t6, $zero, -10
	lu52i.d	$t6, $t6, 1023
	add.d	$t6, $s2, $t6
	mul.d	$t6, $t6, $a3
	alsl.d	$t6, $t6, $a5, 2
	vinsgr2vr.d	$vr5, $t7, 1
	addi.w	$t7, $zero, -11
	lu52i.d	$t7, $t7, 1023
	add.d	$t7, $s2, $t7
	mul.d	$t7, $t7, $a3
	alsl.d	$t7, $t7, $a5, 2
	vinsgr2vr.d	$vr6, $t4, 0
	addi.w	$t4, $zero, -12
	lu52i.d	$t4, $t4, 1023
	add.d	$t4, $s2, $t4
	mul.d	$t4, $t4, $a3
	alsl.d	$t4, $t4, $a5, 2
	vinsgr2vr.d	$vr6, $t5, 1
	addi.w	$t5, $zero, -13
	lu52i.d	$t5, $t5, 1023
	add.d	$t5, $s2, $t5
	mul.d	$t5, $t5, $a3
	alsl.d	$t5, $t5, $a5, 2
	vinsgr2vr.d	$vr7, $t1, 0
	addi.w	$t1, $zero, -14
	lu52i.d	$t1, $t1, 1023
	add.d	$t1, $s2, $t1
	mul.d	$t1, $t1, $a3
	alsl.d	$t1, $t1, $a5, 2
	vinsgr2vr.d	$vr7, $a7, 1
	addi.w	$a7, $zero, -15
	lu52i.d	$a7, $a7, 1023
	add.d	$a7, $s2, $a7
	mul.d	$a7, $a7, $a3
	alsl.d	$a7, $a7, $a5, 2
	addi.d	$a4, $a4, -60
	mul.d	$a4, $a4, $a3
	add.d	$a4, $a5, $a4
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$a4, $s3, $a4, 2
	vreplgr2vr.d	$vr8, $s1
	vinsgr2vr.d	$vr9, $t5, 0
	vinsgr2vr.d	$vr9, $t1, 1
	vinsgr2vr.d	$vr10, $t7, 0
	vinsgr2vr.d	$vr10, $t4, 1
	vinsgr2vr.d	$vr11, $fp, 0
	vinsgr2vr.d	$vr11, $t6, 1
	vinsgr2vr.d	$vr12, $s0, 0
	vinsgr2vr.d	$vr12, $t8, 1
	vinsgr2vr.d	$vr13, $t2, 0
	vinsgr2vr.d	$vr13, $t3, 1
	vinsgr2vr.d	$vr14, $a6, 0
	vinsgr2vr.d	$vr14, $t0, 1
	addi.d	$a6, $s2, -1
	mul.d	$a6, $a6, $a3
	alsl.d	$a6, $a6, $a5, 2
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr15, $a6, 0
	vinsgr2vr.d	$vr15, $a2, 1
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr16, $s4, 0
	vinsgr2vr.d	$vr16, $a1, 1
	vreplgr2vr.d	$vr17, $a0
	vslt.du	$vr7, $vr8, $vr7
	vslt.du	$vr6, $vr8, $vr6
	vpickev.w	$vr6, $vr6, $vr7
	vslt.du	$vr5, $vr8, $vr5
	vslt.du	$vr4, $vr8, $vr4
	vpickev.w	$vr4, $vr4, $vr5
	vpickev.h	$vr4, $vr4, $vr6
	vslt.du	$vr3, $vr8, $vr3
	vslt.du	$vr2, $vr8, $vr2
	vpickev.w	$vr2, $vr2, $vr3
	vslt.du	$vr1, $vr8, $vr1
	vslt.du	$vr0, $vr8, $vr0
	vpickev.w	$vr0, $vr0, $vr1
	vpickev.h	$vr0, $vr0, $vr2
	vpickev.b	$vr0, $vr0, $vr4
	vslt.du	$vr1, $vr16, $vr17
	vslt.du	$vr2, $vr15, $vr17
	vpickev.w	$vr1, $vr2, $vr1
	vslt.du	$vr2, $vr14, $vr17
	vslt.du	$vr3, $vr13, $vr17
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vslt.du	$vr2, $vr12, $vr17
	vslt.du	$vr3, $vr11, $vr17
	vpickev.w	$vr2, $vr3, $vr2
	vslt.du	$vr3, $vr10, $vr17
	vslt.du	$vr4, $vr9, $vr17
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.h	$vr2, $vr3, $vr2
	vpickev.b	$vr1, $vr2, $vr1
	slti	$a1, $a3, 0
	vand.v	$vr0, $vr0, $vr1
	sltu	$a2, $s1, $a4
	sltu	$a0, $a7, $a0
	and	$a0, $a2, $a0
	vslli.b	$vr0, $vr0, 7
	vmskltz.b	$vr0, $vr0
	vpickve2gr.hu	$a2, $vr0, 0
	sltu	$a2, $zero, $a2
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 31, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, -15
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -2
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -3
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -4
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -5
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -6
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -7
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -8
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -9
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -10
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -11
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -12
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -13
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s2, -14
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a5, 2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a3, 6
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a3, $a3, 2
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	b	.LBB6_31
	.p2align	4, , 16
.LBB6_30:                               # %._crit_edge.us
                                        #   in Loop: Header=BB6_31 Depth=1
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s2, $s2, 16
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB6_38
.LBB6_31:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_34 Depth 2
                                        #     Child Loop BB6_37 Depth 2
	sltui	$a0, $s6, 8
	alsl.d	$s0, $s2, $s8, 2
	addi.d	$a2, $s0, -60
	addi.d	$a4, $s0, -56
	addi.d	$a5, $s0, -52
	addi.d	$a7, $s0, -48
	addi.d	$t2, $s0, -44
	addi.d	$t3, $s0, -40
	addi.d	$t4, $s0, -36
	addi.d	$fp, $s0, -32
	addi.d	$s1, $s0, -28
	addi.d	$s3, $s0, -24
	addi.d	$s4, $s0, -20
	addi.d	$s5, $s0, -16
	addi.d	$s6, $s0, -12
	addi.d	$s7, $s0, -8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	andi	$a0, $a0, 1
	addi.d	$a1, $s0, -4
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	st.d	$a5, $sp, 272                   # 8-byte Folded Spill
	st.d	$a7, $sp, 264                   # 8-byte Folded Spill
	st.d	$t2, $sp, 256                   # 8-byte Folded Spill
	st.d	$t3, $sp, 248                   # 8-byte Folded Spill
	st.d	$t4, $sp, 240                   # 8-byte Folded Spill
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	beqz	$a0, .LBB6_33
# %bb.32:                               #   in Loop: Header=BB6_31 Depth=1
	move	$a0, $zero
	move	$t0, $s0
	move	$a6, $s1
	move	$t1, $s3
	move	$t5, $s4
	move	$t6, $s5
	move	$t7, $s6
	move	$t8, $s7
	b	.LBB6_36
	.p2align	4, , 16
.LBB6_33:                               # %vector.ph698
                                        #   in Loop: Header=BB6_31 Depth=1
	vldrepl.w	$vr0, $a2, 0
	vldrepl.w	$vr1, $a4, 0
	vldrepl.w	$vr2, $a5, 0
	vldrepl.w	$vr3, $a7, 0
	vldrepl.w	$vr4, $t2, 0
	vldrepl.w	$vr5, $t3, 0
	vldrepl.w	$vr6, $t4, 0
	vldrepl.w	$vr7, $fp, 0
	move	$a7, $s1
	vldrepl.w	$vr8, $s1, 0
	move	$t2, $s3
	vldrepl.w	$vr9, $s3, 0
	move	$t3, $s4
	vldrepl.w	$vr10, $s4, 0
	move	$t4, $s5
	vldrepl.w	$vr11, $s5, 0
	move	$fp, $s6
	vldrepl.w	$vr12, $s6, 0
	move	$s1, $s7
	vldrepl.w	$vr13, $s7, 0
	vldrepl.w	$vr14, $a1, 0
	move	$a5, $s0
	vldrepl.w	$vr15, $s0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_34:                               # %vector.body701
                                        #   Parent Loop BB6_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr16, $a1, 0
	vld	$vr17, $a0, 0
	vldx	$vr18, $a1, $a3
	vfmul.s	$vr16, $vr0, $vr16
	vfadd.s	$vr16, $vr17, $vr16
	add.d	$a4, $a1, $a3
	vfmul.s	$vr17, $vr1, $vr18
	vldx	$vr18, $a4, $a3
	vfadd.s	$vr16, $vr16, $vr17
	add.d	$a4, $a4, $a3
	vldx	$vr17, $a4, $a3
	vfmul.s	$vr18, $vr2, $vr18
	vfadd.s	$vr16, $vr16, $vr18
	add.d	$a4, $a4, $a3
	vfmul.s	$vr17, $vr3, $vr17
	vldx	$vr18, $a4, $a3
	vfadd.s	$vr16, $vr16, $vr17
	add.d	$a4, $a4, $a3
	vldx	$vr17, $a4, $a3
	vfmul.s	$vr18, $vr4, $vr18
	vfadd.s	$vr16, $vr16, $vr18
	add.d	$a4, $a4, $a3
	vfmul.s	$vr17, $vr5, $vr17
	vldx	$vr18, $a4, $a3
	vfadd.s	$vr16, $vr16, $vr17
	add.d	$a4, $a4, $a3
	vldx	$vr17, $a4, $a3
	vfmul.s	$vr18, $vr6, $vr18
	vfadd.s	$vr16, $vr16, $vr18
	add.d	$a4, $a4, $a3
	vfmul.s	$vr17, $vr7, $vr17
	vldx	$vr18, $a4, $a3
	vfadd.s	$vr16, $vr16, $vr17
	add.d	$a4, $a4, $a3
	vldx	$vr17, $a4, $a3
	vfmul.s	$vr18, $vr8, $vr18
	vfadd.s	$vr16, $vr16, $vr18
	add.d	$a4, $a4, $a3
	vfmul.s	$vr17, $vr9, $vr17
	vldx	$vr18, $a4, $a3
	vfadd.s	$vr16, $vr16, $vr17
	add.d	$a4, $a4, $a3
	vldx	$vr17, $a4, $a3
	vfmul.s	$vr18, $vr10, $vr18
	vfadd.s	$vr16, $vr16, $vr18
	add.d	$a4, $a4, $a3
	vfmul.s	$vr17, $vr11, $vr17
	vldx	$vr18, $a4, $a3
	vfadd.s	$vr16, $vr16, $vr17
	add.d	$a4, $a4, $a3
	vldx	$vr17, $a4, $a3
	vfmul.s	$vr18, $vr12, $vr18
	vfadd.s	$vr16, $vr16, $vr18
	add.d	$a4, $a4, $a3
	vfmul.s	$vr17, $vr13, $vr17
	vldx	$vr18, $a4, $a3
	add.d	$a4, $a4, $a3
	vldx	$vr19, $a4, $a3
	vfadd.s	$vr16, $vr16, $vr17
	vfmul.s	$vr17, $vr14, $vr18
	vfadd.s	$vr16, $vr16, $vr17
	vfmul.s	$vr17, $vr15, $vr19
	vfadd.s	$vr16, $vr16, $vr17
	vst	$vr16, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bnez	$a2, .LBB6_34
# %bb.35:                               # %middle.block753
                                        #   in Loop: Header=BB6_31 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $a2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$t0, $a5
	move	$a6, $a7
	move	$t1, $t2
	move	$t5, $t3
	move	$t6, $t4
	move	$t7, $fp
	move	$t8, $s1
	beq	$a2, $a1, .LBB6_30
.LBB6_36:                               # %scalar.ph696.preheader
                                        #   in Loop: Header=BB6_31 Depth=1
	slli.d	$fp, $a0, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$s0, $a1, $a0
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 200                   # 8-byte Folded Reload
	st.d	$t8, $sp, 216                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_37:                               # %scalar.ph696
                                        #   Parent Loop BB6_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa0, $s1, $fp
	move	$t8, $t7
	move	$t7, $t6
	move	$t6, $t5
	move	$t5, $t1
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	fld.s	$fa1, $s8, 0
	fldx.s	$fa2, $t4, $fp
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	fld.s	$fa3, $s8, 0
	fldx.s	$fa4, $a5, $fp
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa3, $fa4
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	fld.s	$fa2, $s8, 0
	fldx.s	$fa3, $s6, $fp
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa4, $s8, 0
	fldx.s	$fa5, $s5, $fp
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	fld.s	$fa2, $s8, 0
	fldx.s	$fa3, $s2, $fp
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	fld.s	$fa4, $s8, 0
	fldx.s	$fa5, $s4, $fp
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	fld.s	$fa2, $s8, 0
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	move	$t1, $t5
	move	$t5, $t6
	move	$t6, $t7
	move	$t7, $t8
	ld.d	$t8, $sp, 216                   # 8-byte Folded Reload
	fldx.s	$fa3, $s3, $fp
	fld.s	$fa4, $s8, 0
	fldx.s	$fa5, $s7, $fp
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	fld.s	$fa2, $a6, 0
	fldx.s	$fa3, $ra, $fp
	fld.s	$fa4, $t1, 0
	fldx.s	$fa5, $a2, $fp
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	fld.s	$fa2, $t5, 0
	fldx.s	$fa3, $a0, $fp
	fld.s	$fa4, $t6, 0
	fldx.s	$fa5, $a1, $fp
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	fld.s	$fa2, $t7, 0
	fldx.s	$fa3, $t2, $fp
	fld.s	$fa4, $t8, 0
	fldx.s	$fa5, $a4, $fp
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	fld.s	$fa2, $s8, 0
	fldx.s	$fa3, $a7, $fp
	fld.s	$fa4, $t0, 0
	fldx.s	$fa5, $t3, $fp
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa4, $fa5
	fadd.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $s1, $fp
	addi.d	$t3, $t3, 4
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, 4
	addi.d	$t2, $t2, 4
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$ra, $ra, 4
	addi.d	$s7, $s7, 4
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 4
	addi.d	$s2, $s2, 4
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	addi.d	$a5, $a5, 4
	addi.d	$t4, $t4, 4
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 4
	bnez	$s0, .LBB6_37
	b	.LBB6_30
.LBB6_38:                               # %._crit_edge256
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB6_39:                               # %vector.memcheck
	alsl.d	$a6, $s6, $a1, 2
	addi.d	$a0, $s8, 4
	sltu	$a0, $a1, $a0
	sltu	$a4, $s8, $a6
	and	$a4, $a0, $a4
	move	$a0, $zero
	bnez	$a4, .LBB6_4
# %bb.40:                               # %vector.memcheck
	alsl.d	$a4, $s6, $a5, 2
	sltu	$a4, $a1, $a4
	sltu	$a6, $a5, $a6
	and	$a4, $a4, $a6
	bnez	$a4, .LBB6_4
# %bb.41:                               # %vector.ph
	bstrpick.d	$a0, $s6, 30, 3
	vldrepl.w	$vr0, $s8, 0
	slli.d	$a0, $a0, 3
	addi.d	$a7, $a5, 16
	addi.d	$a4, $a1, 16
	move	$a6, $a0
	.p2align	4, , 16
.LBB6_42:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, -16
	vld	$vr2, $a7, 0
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vfmul.s	$vr1, $vr0, $vr1
	vfmul.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a7, $a7, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB6_42
# %bb.43:                               # %middle.block
	bne	$a0, $s6, .LBB6_4
	b	.LBB6_6
.LBB6_44:                               # %vector.memcheck396
	ld.d	$t8, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$fp, $t1, $t8, 2
	addi.d	$t4, $a6, 4
	sltu	$t4, $t8, $t4
	sltu	$t5, $a6, $fp
	and	$t5, $t4, $t5
	move	$t4, $zero
	bnez	$t5, .LBB6_17
# %bb.45:                               # %vector.memcheck396
	addi.d	$t5, $a4, 4
	sltu	$t5, $t8, $t5
	sltu	$t6, $a4, $fp
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_17
# %bb.46:                               # %vector.memcheck396
	addi.d	$t5, $a1, 4
	sltu	$t5, $t8, $t5
	sltu	$t6, $a1, $fp
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_17
# %bb.47:                               # %vector.memcheck396
	addi.d	$t5, $a0, 4
	sltu	$t5, $t8, $t5
	sltu	$t6, $a0, $fp
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_17
# %bb.48:                               # %vector.memcheck396
	alsl.d	$t5, $t3, $a5, 2
	add.d	$t6, $t3, $t1
	alsl.d	$t6, $t6, $a5, 2
	sltu	$t6, $t8, $t6
	sltu	$t7, $t5, $fp
	and	$t6, $t6, $t7
	bnez	$t6, .LBB6_17
# %bb.49:                               # %vector.memcheck396
	alsl.d	$t6, $t2, $a5, 2
	add.d	$t7, $t2, $t1
	alsl.d	$t7, $t7, $a5, 2
	sltu	$t7, $t8, $t7
	move	$s1, $t8
	sltu	$t8, $t6, $fp
	and	$t7, $t7, $t8
	bnez	$t7, .LBB6_17
# %bb.50:                               # %vector.memcheck396
	alsl.d	$t7, $t0, $a5, 2
	add.d	$t8, $t0, $t1
	alsl.d	$t8, $t8, $a5, 2
	sltu	$t8, $s1, $t8
	sltu	$s0, $t7, $fp
	and	$t8, $t8, $s0
	bnez	$t8, .LBB6_17
# %bb.51:                               # %vector.memcheck396
	alsl.d	$t8, $a7, $a5, 2
	add.d	$s0, $a7, $t1
	alsl.d	$s0, $s0, $a5, 2
	sltu	$s0, $s1, $s0
	sltu	$fp, $t8, $fp
	and	$fp, $s0, $fp
	bnez	$fp, .LBB6_17
# %bb.52:                               # %vector.ph439
	vldrepl.w	$vr0, $a0, 0
	vldrepl.w	$vr1, $a1, 0
	vldrepl.w	$vr2, $a4, 0
	vldrepl.w	$vr3, $a6, 0
	bstrpick.d	$t4, $t1, 31, 2
	slli.d	$t4, $t4, 2
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	move	$s0, $t4
	.p2align	4, , 16
.LBB6_53:                               # %vector.body442
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $t8, 0
	vld	$vr5, $fp, 0
	vld	$vr6, $t7, 0
	vfmul.s	$vr4, $vr0, $vr4
	vfadd.s	$vr4, $vr5, $vr4
	vld	$vr5, $t6, 0
	vfmul.s	$vr6, $vr1, $vr6
	vld	$vr7, $t5, 0
	vfadd.s	$vr4, $vr4, $vr6
	vfmul.s	$vr5, $vr2, $vr5
	vfadd.s	$vr4, $vr4, $vr5
	vfmul.s	$vr5, $vr3, $vr7
	vfadd.s	$vr4, $vr4, $vr5
	vst	$vr4, $fp, 0
	addi.d	$s0, $s0, -4
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, 16
	addi.d	$fp, $fp, 16
	bnez	$s0, .LBB6_53
# %bb.54:                               # %middle.block458
	bne	$t4, $t1, .LBB6_17
	b	.LBB6_19
.LBB6_55:                               # %vector.memcheck354
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$t0, $s6, $t4, 2
	addi.d	$a7, $a1, 4
	sltu	$a7, $t4, $a7
	sltu	$t1, $a1, $t0
	and	$t1, $a7, $t1
	move	$a7, $zero
	bnez	$t1, .LBB6_10
# %bb.56:                               # %vector.memcheck354
	addi.d	$t1, $a0, 4
	sltu	$t1, $t4, $t1
	sltu	$t2, $a0, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB6_10
# %bb.57:                               # %vector.memcheck354
	alsl.d	$t1, $a6, $a5, 2
	add.d	$t2, $a6, $s6
	alsl.d	$t2, $t2, $a5, 2
	sltu	$t2, $t4, $t2
	sltu	$t3, $t1, $t0
	and	$t2, $t2, $t3
	bnez	$t2, .LBB6_10
# %bb.58:                               # %vector.memcheck354
	alsl.d	$t2, $a4, $a5, 2
	add.d	$t3, $a4, $s6
	alsl.d	$t3, $t3, $a5, 2
	sltu	$t3, $t4, $t3
	sltu	$t0, $t2, $t0
	and	$t0, $t3, $t0
	bnez	$t0, .LBB6_10
# %bb.59:                               # %vector.ph377
	bstrpick.d	$a7, $s6, 30, 3
	slli.d	$a7, $a7, 3
	vldrepl.w	$vr0, $a0, 0
	vldrepl.w	$vr1, $a1, 0
	addi.d	$t0, $t4, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	move	$t3, $a7
	.p2align	4, , 16
.LBB6_60:                               # %vector.body380
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t2, -16
	vld	$vr3, $t0, -16
	vld	$vr4, $t0, 0
	vld	$vr5, $t2, 0
	vfmul.s	$vr2, $vr0, $vr2
	vfadd.s	$vr2, $vr3, $vr2
	vld	$vr3, $t1, -16
	vld	$vr6, $t1, 0
	vfmul.s	$vr5, $vr0, $vr5
	vfadd.s	$vr4, $vr4, $vr5
	vfmul.s	$vr3, $vr1, $vr3
	vfmul.s	$vr5, $vr1, $vr6
	vfadd.s	$vr2, $vr2, $vr3
	vfadd.s	$vr3, $vr4, $vr5
	vst	$vr2, $t0, -16
	vst	$vr3, $t0, 0
	addi.d	$t3, $t3, -8
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB6_60
# %bb.61:                               # %middle.block393
	bne	$a7, $s6, .LBB6_10
	b	.LBB6_12
.LBB6_62:                               # %vector.ph544
	move	$s2, $zero
	bstrpick.d	$s3, $s6, 30, 2
	slli.d	$s3, $s3, 2
	vldrepl.w	$vr0, $a7, 0
	vldrepl.w	$vr1, $t0, 0
	vldrepl.w	$vr2, $t1, 0
	vldrepl.w	$vr3, $t2, 0
	vldrepl.w	$vr4, $t3, 0
	vldrepl.w	$vr5, $t4, 0
	vldrepl.w	$vr6, $t5, 0
	vldrepl.w	$vr7, $t6, 0
	slli.d	$s4, $s6, 2
	bstrpick.d	$s4, $s4, 32, 4
	slli.d	$s4, $s4, 4
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_63:                               # %vector.body547
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr8, $t7, $s2
	vldx	$vr9, $s5, $s2
	vldx	$vr10, $a0, $s2
	vfmul.s	$vr8, $vr0, $vr8
	vfadd.s	$vr8, $vr9, $vr8
	vldx	$vr9, $a1, $s2
	vfmul.s	$vr10, $vr1, $vr10
	vfadd.s	$vr8, $vr8, $vr10
	vldx	$vr10, $t8, $s2
	vfmul.s	$vr9, $vr2, $vr9
	vfadd.s	$vr8, $vr8, $vr9
	vldx	$vr9, $a4, $s2
	vfmul.s	$vr10, $vr3, $vr10
	vfadd.s	$vr8, $vr8, $vr10
	vldx	$vr10, $fp, $s2
	vfmul.s	$vr9, $vr4, $vr9
	vfadd.s	$vr8, $vr8, $vr9
	vldx	$vr9, $s0, $s2
	vfmul.s	$vr10, $vr5, $vr10
	vldx	$vr11, $s1, $s2
	vfadd.s	$vr8, $vr8, $vr10
	vfmul.s	$vr9, $vr6, $vr9
	vfadd.s	$vr8, $vr8, $vr9
	vfmul.s	$vr9, $vr7, $vr11
	vfadd.s	$vr8, $vr8, $vr9
	vstx	$vr8, $s5, $s2
	addi.d	$s2, $s2, 16
	bne	$s4, $s2, .LBB6_63
# %bb.64:                               # %middle.block575
	bne	$s3, $s6, .LBB6_24
	b	.LBB6_26
.Lfunc_end6:
	.size	dmxpy, .Lfunc_end6-dmxpy
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function epslon
.LCPI7_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	epslon
	.p2align	5
	.type	epslon,@function
epslon:                                 # @epslon
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI7_0)
	fabs.s	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end7:
	.size	epslon, .Lfunc_end7-epslon
                                        # -- End function
	.globl	print_time                      # -- Begin function print_time
	.p2align	5
	.type	print_time,@function
print_time:                             # @print_time
# %bb.0:
	ret
.Lfunc_end8:
	.size	print_time, .Lfunc_end8-print_time
                                        # -- End function
	.globl	idamax                          # -- Begin function idamax
	.p2align	5
	.type	idamax,@function
idamax:                                 # @idamax
# %bb.0:
	blez	$a0, .LBB9_3
# %bb.1:
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB9_4
# %bb.2:
	addi.w	$a0, $zero, 0
	ret
.LBB9_3:
	addi.d	$a2, $zero, -1
	addi.w	$a0, $a2, 0
	ret
.LBB9_4:
	bne	$a2, $a3, .LBB9_8
# %bb.5:                                # %.lr.ph48.preheader
	fld.s	$fa0, $a1, 0
	move	$a2, $zero
	fabs.s	$fa0, $fa0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph48
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fabs.s	$fa1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a4, $fcc0
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a3, $a4
	or	$a2, $a4, $a2
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB9_6
.LBB9_7:                                # %.loopexit
	addi.w	$a0, $a2, 0
	ret
.LBB9_8:                                # %.lr.ph.preheader
	fld.s	$fa0, $a1, 0
	addi.w	$a3, $a2, 1
	fabs.s	$fa0, $fa0
	alsl.d	$a1, $a3, $a1, 2
	slli.d	$a3, $a2, 2
	ori	$a4, $zero, 1
                                        # implicit-def: $r6
	.p2align	4, , 16
.LBB9_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fabs.s	$fa1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a5, $fcc0
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $a4, $a5
	or	$a2, $a5, $a2
	addi.w	$a4, $a4, 1
	add.d	$a1, $a1, $a3
	bne	$a0, $a4, .LBB9_9
	b	.LBB9_7
.Lfunc_end9:
	.size	idamax, .Lfunc_end9-idamax
                                        # -- End function
	.globl	dscal                           # -- Begin function dscal
	.p2align	5
	.type	dscal,@function
dscal:                                  # @dscal
# %bb.0:
                                        # kill: def $f0 killed $f0 def $vr0
	blez	$a0, .LBB10_12
# %bb.1:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB10_4
# %bb.2:                                # %.lr.ph25.preheader
	ori	$a3, $zero, 8
	bstrpick.d	$a2, $a0, 31, 0
	bgeu	$a0, $a3, .LBB10_7
# %bb.3:
	move	$a0, $zero
	b	.LBB10_10
.LBB10_4:
	mul.w	$a0, $a2, $a0
	blez	$a0, .LBB10_12
# %bb.5:                                # %.lr.ph.preheader
	move	$a3, $zero
	slli.d	$a4, $a2, 2
	.p2align	4, , 16
.LBB10_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a1, 0
	add.d	$a3, $a3, $a2
	add.d	$a1, $a1, $a4
	blt	$a3, $a0, .LBB10_6
	b	.LBB10_12
.LBB10_7:                               # %vector.ph36
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$a0, $a0, 3
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$a3, $a1, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB10_8:                               # %vector.body41
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vfmul.s	$vr2, $vr1, $vr2
	vfmul.s	$vr3, $vr1, $vr3
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB10_8
# %bb.9:                                # %middle.block46
	beq	$a0, $a2, .LBB10_12
.LBB10_10:                              # %.lr.ph25.preheader49
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB10_11:                              # %.lr.ph25
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB10_11
.LBB10_12:                              # %.loopexit
	ret
.Lfunc_end10:
	.size	dscal, .Lfunc_end10-dscal
                                        # -- End function
	.globl	daxpy                           # -- Begin function daxpy
	.p2align	5
	.type	daxpy,@function
daxpy:                                  # @daxpy
# %bb.0:
                                        # kill: def $f0 killed $f0 def $vr0
	blez	$a0, .LBB11_14
# %bb.1:
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB11_14
# %bb.2:
	ori	$a5, $zero, 1
	bne	$a2, $a5, .LBB11_10
# %bb.3:
	bne	$a4, $a5, .LBB11_10
# %bb.4:                                # %.lr.ph.preheader
	ori	$a4, $zero, 8
	bstrpick.d	$a2, $a0, 31, 0
	bltu	$a0, $a4, .LBB11_7
# %bb.5:                                # %vector.memcheck
	alsl.d	$a0, $a2, $a1, 2
	bgeu	$a3, $a0, .LBB11_22
# %bb.6:                                # %vector.memcheck
	alsl.d	$a0, $a2, $a3, 2
	bgeu	$a1, $a0, .LBB11_22
.LBB11_7:
	move	$a0, $zero
.LBB11_8:                               # %.lr.ph.preheader91
	alsl.d	$a1, $a0, $a1, 2
	alsl.d	$a3, $a0, $a3, 2
	sub.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB11_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB11_9
	b	.LBB11_14
.LBB11_10:                              # %.lr.ph47.preheader
	sub.d	$a5, $a5, $a0
	mul.d	$a6, $a4, $a5
	srli.d	$a7, $a4, 31
	and	$a6, $a7, $a6
	mul.d	$a5, $a2, $a5
	srli.d	$a7, $a2, 31
	and	$a5, $a7, $a5
	addi.w	$a5, $a5, 0
	ori	$a7, $zero, 12
	addi.w	$a6, $a6, 0
	bgeu	$a0, $a7, .LBB11_15
.LBB11_11:
	move	$a7, $zero
.LBB11_12:                              # %.lr.ph47.preheader90
	alsl.d	$a3, $a6, $a3, 2
	slli.d	$a4, $a4, 2
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a2, 2
	sub.d	$a0, $a0, $a7
	.p2align	4, , 16
.LBB11_13:                              # %.lr.ph47
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a3, 0
	add.d	$a3, $a3, $a4
	addi.w	$a0, $a0, -1
	add.d	$a1, $a1, $a2
	bnez	$a0, .LBB11_13
.LBB11_14:                              # %.loopexit
	ret
.LBB11_15:                              # %vector.scevcheck
	ori	$t0, $zero, 1
	move	$a7, $zero
	bne	$a4, $t0, .LBB11_12
# %bb.16:                               # %vector.scevcheck
	bne	$a2, $t0, .LBB11_12
# %bb.17:                               # %vector.memcheck62
	alsl.d	$a7, $a6, $a3, 2
	addi.d	$t0, $a0, -1
	bstrpick.d	$t1, $t0, 31, 0
	alsl.d	$t0, $a5, $a1, 2
	alsl.d	$t2, $t1, $t0, 2
	addi.d	$t2, $t2, 4
	bgeu	$a7, $t2, .LBB11_19
# %bb.18:                               # %vector.memcheck62
	alsl.d	$a7, $t1, $a7, 2
	addi.d	$a7, $a7, 4
	bltu	$t0, $a7, .LBB11_11
.LBB11_19:                              # %vector.ph72
	slli.d	$t2, $a6, 2
	slli.d	$t0, $a5, 2
	bstrpick.d	$a7, $a0, 30, 3
	slli.d	$a7, $a7, 3
	mul.d	$t1, $a7, $a4
	add.d	$a6, $t1, $a6
	mul.d	$t1, $a7, $a2
	add.d	$a5, $t1, $a5
	vreplvei.w	$vr1, $vr0, 0
	add.d	$t0, $t0, $a1
	addi.d	$t0, $t0, 16
	slli.d	$t1, $a2, 5
	add.d	$t2, $t2, $a3
	addi.d	$t2, $t2, 16
	slli.d	$t3, $a4, 5
	move	$t4, $a7
	.p2align	4, , 16
.LBB11_20:                              # %vector.body77
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, -16
	vld	$vr3, $t0, 0
	vld	$vr4, $t2, -16
	vld	$vr5, $t2, 0
	vfmul.s	$vr2, $vr1, $vr2
	vfmul.s	$vr3, $vr1, $vr3
	vfadd.s	$vr2, $vr4, $vr2
	vfadd.s	$vr3, $vr5, $vr3
	vst	$vr2, $t2, -16
	vst	$vr3, $t2, 0
	addi.d	$t4, $t4, -8
	add.d	$t0, $t0, $t1
	add.d	$t2, $t2, $t3
	bnez	$t4, .LBB11_20
# %bb.21:                               # %middle.block85
	bne	$a7, $a0, .LBB11_12
	b	.LBB11_14
.LBB11_22:                              # %vector.ph
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$a0, $a0, 3
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$a4, $a1, 16
	addi.d	$a5, $a3, 16
	move	$a6, $a0
	.p2align	4, , 16
.LBB11_23:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vld	$vr4, $a5, -16
	vld	$vr5, $a5, 0
	vfmul.s	$vr2, $vr1, $vr2
	vfmul.s	$vr3, $vr1, $vr3
	vfadd.s	$vr2, $vr4, $vr2
	vfadd.s	$vr3, $vr5, $vr3
	vst	$vr2, $a5, -16
	vst	$vr3, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB11_23
# %bb.24:                               # %middle.block
	beq	$a0, $a2, .LBB11_14
	b	.LBB11_8
.Lfunc_end11:
	.size	daxpy, .Lfunc_end11-daxpy
                                        # -- End function
	.globl	ddot                            # -- Begin function ddot
	.p2align	5
	.type	ddot,@function
ddot:                                   # @ddot
# %bb.0:
	blez	$a0, .LBB12_6
# %bb.1:
	ori	$a5, $zero, 1
	bne	$a2, $a5, .LBB12_7
# %bb.2:
	bne	$a4, $a5, .LBB12_7
# %bb.3:                                # %.lr.ph.preheader
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB12_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB12_4
.LBB12_5:                               # %.loopexit
	ret
.LBB12_6:
	movgr2fr.w	$fa0, $zero
	ret
.LBB12_7:                               # %.lr.ph49.preheader
	sub.d	$a5, $a5, $a0
	mul.d	$a6, $a4, $a5
	srli.d	$a7, $a4, 31
	and	$a6, $a7, $a6
	mul.d	$a5, $a2, $a5
	srli.d	$a7, $a2, 31
	and	$a5, $a7, $a5
	addi.w	$a6, $a6, 0
	addi.w	$a5, $a5, 0
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a2, 2
	alsl.d	$a3, $a6, $a3, 2
	slli.d	$a4, $a4, 2
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB12_8:                               # %.lr.ph49
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	add.d	$a1, $a1, $a2
	addi.w	$a0, $a0, -1
	add.d	$a3, $a3, $a4
	bnez	$a0, .LBB12_8
	b	.LBB12_5
.Lfunc_end12:
	.size	ddot, .Lfunc_end12-ddot
                                        # -- End function
	.type	main.aa,@object                 # @main.aa
	.local	main.aa
	.comm	main.aa,160000,4
	.type	main.a,@object                  # @main.a
	.local	main.a
	.comm	main.a,160800,4
	.type	main.b,@object                  # @main.b
	.local	main.b
	.comm	main.b,800,16
	.type	main.x,@object                  # @main.x
	.local	main.x
	.comm	main.x,800,8
	.type	main.ipvt,@object               # @main.ipvt
	.local	main.ipvt
	.comm	main.ipvt,800,4
	.type	main.j,@object                  # @main.j
	.local	main.j
	.comm	main.j,4,4
	.type	main.ntimes,@object             # @main.ntimes
	.local	main.ntimes
	.comm	main.ntimes,4,4
	.type	main.info,@object               # @main.info
	.local	main.info
	.comm	main.info,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"INSERT COMPILER NAME HERE"
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"INSERT OPTIMISATION OPTIONS HERE"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Rolled "
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Single "
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Precision Linpack Benchmark - PC Version in 'C/C++'\n\n"
	.size	.L.str.4, 54

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Compiler     %s\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Optimisation %s\n\n"
	.size	.L.str.6, 18

	.type	atime,@object                   # @atime
	.local	atime
	.comm	atime,540,4
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"norm resid      resid           machep"
	.size	.L.str.7, 39

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"         x[0]-1          x[n-1]-1\n"
	.size	.L.str.8, 35

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%6.1f %17.8e%17.8e%17.8e%17.8e\n\n"
	.size	.L.str.9, 33

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Times are reported for matrices of order        %5d\n"
	.size	.L.str.10, 53

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"1 pass times for array with leading dimension of%5d\n\n"
	.size	.L.str.11, 54

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"      dgefa      dgesl      total     Mflops       unit"
	.size	.L.str.12, 56

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"      ratio\n"
	.size	.L.str.13, 13

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\nCalculating matgen overhead\n"
	.size	.L.str.14, 30

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%10d times %6.2f seconds\n"
	.size	.L.str.15, 26

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Overhead for 1 matgen %12.5f seconds\n\n"
	.size	.L.str.16, 39

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Calculating matgen/dgefa passes for 5 seconds\n"
	.size	.L.str.17, 47

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Passes used %10d \n\n"
	.size	.L.str.18, 20

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Times for array with leading dimension of%4d\n\n"
	.size	.L.str.19, 47

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Average                          %11.2f\n"
	.size	.L.str.20, 41

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\nCalculating matgen2 overhead\n"
	.size	.L.str.21, 31

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym main.a
	.addrsig_sym main.b
	.addrsig_sym main.x
	.addrsig_sym main.ipvt
	.addrsig_sym main.info
