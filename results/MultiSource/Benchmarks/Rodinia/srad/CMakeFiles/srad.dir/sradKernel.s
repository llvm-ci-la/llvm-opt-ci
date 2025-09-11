	.file	"sradKernel.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function srad_kernel
.LCPI0_0:
	.dword	4                               # 0x4
	.dword	4100                            # 0x1004
.LCPI0_1:
	.dword	8388604                         # 0x7ffffc
	.dword	8384508                         # 0x7feffc
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_2:
	.word	0x38800000                      # float 6.10351563E-5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_3:
	.dword	0xbfb0000000000000              # double -0.0625
.LCPI0_4:
	.dword	0xb690000000000000              # double -7.0064923216240854E-46
.LCPI0_5:
	.dword	0x3ff0000010000000              # double 1.0000000596046448
	.text
	.globl	srad_kernel
	.p2align	5
	.type	srad_kernel,@function
srad_kernel:                            # @srad_kernel
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$s3, $a6
	move	$s4, $a5
	move	$s6, $a1
	move	$s8, $a0
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	lu12i.w	$a0, 2047
	lu12i.w	$s0, 2046
	ori	$fp, $s0, 4092
	add.d	$a4, $a1, $fp
	add.d	$a1, $a3, $fp
	lu12i.w	$a7, 1
	ori	$s1, $a7, 4
	add.d	$a6, $s6, $s1
	add.d	$t3, $a2, $s1
	add.d	$t8, $a3, $s1
	vinsgr2vr.d	$vr0, $s6, 0
	add.d	$t4, $s3, $s1
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.d	$vr0, $s3, 1
	vinsgr2vr.d	$vr2, $a5, 0
	vinsgr2vr.d	$vr2, $a2, 1
	pcalau12i	$a5, %pc_hi20(.LCPI0_0)
	vld	$vr3, $a5, %pc_lo12(.LCPI0_0)
	pcalau12i	$a5, %pc_hi20(.LCPI0_1)
	vld	$vr4, $a5, %pc_lo12(.LCPI0_1)
	addi.d	$t5, $s4, 4
	vreplgr2vr.d	$vr5, $fp
	vadd.d	$vr6, $vr0, $vr5
	vadd.d	$vr4, $vr2, $vr4
	vpickve2gr.d	$t6, $vr4, 0
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	sltu	$a5, $a6, $t6
	sltu	$a6, $t5, $a4
	and	$a5, $a5, $a6
	sltu	$a6, $t3, $a1
	vpickve2gr.d	$t1, $vr4, 1
	sltu	$t0, $t8, $t1
	and	$a6, $a6, $t0
	vpickve2gr.d	$t7, $vr6, 1
	sltu	$t0, $t3, $t7
	sltu	$t2, $t4, $t1
	and	$t0, $t0, $t2
	st.d	$t3, $sp, 96                    # 8-byte Folded Spill
	sltu	$t2, $t3, $t6
	sltu	$t1, $t5, $t1
	and	$t1, $t2, $t1
	sltu	$t2, $t8, $t7
	sltu	$t3, $t4, $a1
	and	$t2, $t2, $t3
	st.d	$t8, $sp, 88                    # 8-byte Folded Spill
	sltu	$t3, $t8, $t6
	sltu	$t8, $t5, $a1
	and	$t3, $t3, $t8
	add.d	$t8, $s3, $a0
	sltu	$t4, $t4, $t6
	add.d	$t6, $a2, $a0
	vinsgr2vr.d	$vr7, $s8, 0
	sltu	$t5, $t5, $t7
	add.d	$t7, $s6, $a0
	vori.b	$vr8, $vr7, 0
	vinsgr2vr.d	$vr8, $a2, 1
	vori.b	$vr9, $vr7, 0
	vinsgr2vr.d	$vr9, $s3, 1
	vinsgr2vr.d	$vr10, $a3, 0
	vinsgr2vr.d	$vr7, $s6, 1
	vori.b	$vr11, $vr10, 0
	vinsgr2vr.d	$vr11, $s6, 1
	vreplgr2vr.d	$vr12, $s1
	vadd.d	$vr11, $vr11, $vr12
	vadd.d	$vr7, $vr7, $vr12
	vadd.d	$vr9, $vr9, $vr12
	vadd.d	$vr8, $vr8, $vr12
	vinsgr2vr.d	$vr1, $s8, 1
	vinsgr2vr.d	$vr10, $s8, 1
	vadd.d	$vr0, $vr0, $vr12
	vadd.d	$vr2, $vr2, $vr3
	vadd.d	$vr3, $vr10, $vr12
	vadd.d	$vr12, $vr1, $vr12
	vadd.d	$vr10, $vr10, $vr5
	vadd.d	$vr1, $vr1, $vr5
	vslt.du	$vr5, $vr8, $vr1
	vslt.du	$vr8, $vr9, $vr10
	vpickev.w	$vr5, $vr8, $vr5
	vslt.du	$vr7, $vr7, $vr4
	vslt.du	$vr8, $vr11, $vr6
	vpickev.w	$vr7, $vr8, $vr7
	vpickev.h	$vr5, $vr7, $vr5
	vpackev.d	$vr7, $vr1, $vr10
	vpackod.d	$vr6, $vr6, $vr1
	vpackod.d	$vr4, $vr4, $vr1
	vshuf4i.d	$vr1, $vr0, 1
	vslt.du	$vr4, $vr12, $vr4
	vslt.du	$vr3, $vr3, $vr6
	vpickev.w	$vr3, $vr3, $vr4
	vslt.du	$vr1, $vr2, $vr1
	vslt.du	$vr0, $vr0, $vr7
	vpickev.w	$vr0, $vr0, $vr1
	vpickev.h	$vr0, $vr0, $vr3
	vand.v	$vr0, $vr5, $vr0
	and	$t4, $t4, $t5
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$t5, $vr0, 0
	sltu	$t5, $zero, $t5
	or	$a5, $t5, $a5
	add.d	$t5, $s8, $a0
	or	$a6, $a6, $t0
	add.d	$s2, $s4, $a0
	or	$t0, $t1, $t2
	addu16i.d	$t1, $s3, 128
	or	$t2, $t3, $t4
	addu16i.d	$t3, $s4, 128
	addi.d	$t3, $t3, -4
	or	$a5, $a5, $a6
	addu16i.d	$a6, $s8, 128
	addi.d	$a6, $a6, -4
	or	$t0, $t0, $t2
	or	$a5, $a5, $t0
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	sltu	$a5, $s2, $t1
	st.d	$t8, $sp, 168                   # 8-byte Folded Spill
	sltu	$t0, $t8, $t3
	and	$a5, $a5, $t0
	sltu	$a6, $s2, $a6
	st.d	$t5, $sp, 232                   # 8-byte Folded Spill
	sltu	$t0, $t5, $t3
	and	$a6, $a6, $t0
	addu16i.d	$t0, $s6, 128
	addi.d	$t0, $t0, -4
	or	$a5, $a5, $a6
	sltu	$a6, $s2, $t0
	sltu	$t0, $t7, $t3
	and	$a6, $a6, $t0
	addu16i.d	$t0, $a2, 128
	addi.d	$t0, $t0, -4
	or	$a5, $a5, $a6
	sltu	$a6, $s2, $t0
	sltu	$t0, $t6, $t3
	and	$a6, $a6, $t0
	add.d	$t0, $a3, $a0
	addi.d	$t1, $t1, -4
	or	$a5, $a5, $a6
	addu16i.d	$a6, $a3, 128
	addi.d	$a6, $a6, -4
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	sltu	$a6, $s2, $a6
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	sltu	$t0, $t0, $t3
	and	$a6, $a6, $t0
	add.d	$t0, $s4, $fp
	or	$a5, $a5, $a6
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	sltu	$a5, $s4, $t1
	sltu	$a6, $s3, $t0
	and	$a5, $a5, $a6
	add.d	$a6, $s8, $fp
	sltu	$a6, $s4, $a6
	sltu	$t1, $s8, $t0
	and	$a6, $a6, $t1
	or	$a5, $a5, $a6
	sltu	$a4, $s4, $a4
	sltu	$a6, $s6, $t0
	and	$a4, $a4, $a6
	add.d	$a6, $s4, $s0
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	add.d	$a6, $a2, $fp
	or	$a5, $a5, $a4
	sltu	$a6, $s4, $a6
	sltu	$a4, $a2, $t0
	and	$a4, $a6, $a4
	or	$a5, $a5, $a4
	sltu	$a1, $s4, $a1
	sltu	$a4, $a3, $t0
	and	$a1, $a1, $a4
	or	$a1, $a5, $a1
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 4
	add.d	$a1, $s4, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $a0, 4
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -928
	vldi	$vr2, -944
	vldi	$vr3, -912
	vldi	$vr4, -1168
	vldi	$vr5, -960
	lu12i.w	$a0, -2
	ori	$a0, $a0, 4080
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	lu12i.w	$a0, 65536
	lu52i.d	$a0, $a0, 1023
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $s8, $s1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.d	$a0, $s3, $a7
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	add.d	$a0, $a3, $a7
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s8, $a7
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s4, $a7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $s6, $a7
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $a2, $a7
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$t2, $zero, 512
	ori	$t1, $zero, 128
	lu12i.w	$s7, -1
	ori	$t0, $zero, 4080
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 192                   # 8-byte Folded Spill
	st.d	$t7, $sp, 184                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_1:                                # %.preheader624
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
                                        #     Child Loop BB0_26 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_59 Depth 3
	move	$a0, $zero
	move	$a1, $s4
	fmov.s	$fa7, $fa0
	fmov.s	$fa6, $fa0
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_2:                                # %.preheader622
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	move	$a4, $zero
	.p2align	4, , 16
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.s	$ft0, $a1, $a4
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft0, $ft0
	addi.d	$a4, $a4, 4
	fadd.s	$fa6, $fa6, $ft0
	bne	$a4, $t2, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=2
	addi.d	$a0, $a0, 1
	add.d	$a1, $a1, $a7
	bne	$a0, $t1, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	fld.s	$ft0, $s4, 0
	fsub.s	$ft1, $ft0, $ft0
	fst.s	$ft1, $s8, 0
	fldx.s	$ft1, $s4, $a7
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.s	$ft2, $a0, %pc_lo12(.LCPI0_2)
	fsub.s	$ft1, $ft1, $ft0
	fst.s	$ft1, $s6, 0
	fld.s	$ft1, $s4, 0
	fmul.s	$fa7, $fa7, $ft2
	fsub.s	$ft1, $ft1, $ft0
	fst.s	$ft1, $a2, 0
	fld.s	$ft1, $s4, 4
	fmul.s	$fa6, $fa6, $ft2
	fmul.s	$fa7, $fa7, $fa7
	fsub.s	$fa6, $fa6, $fa7
	fsub.s	$ft1, $ft1, $ft0
	fst.s	$ft1, $a3, 0
	fld.s	$ft2, $s8, 0
	fld.s	$ft3, $s6, 0
	fdiv.s	$fa6, $fa6, $fa7
	fld.s	$fa7, $a2, 0
	fmul.s	$ft4, $ft2, $ft2
	fmul.s	$ft5, $ft3, $ft3
	fadd.s	$ft4, $ft4, $ft5
	fmul.s	$ft5, $fa7, $fa7
	fadd.s	$ft4, $ft4, $ft5
	fmul.s	$ft5, $ft1, $ft1
	fadd.s	$ft4, $ft5, $ft4
	fmul.s	$ft5, $ft0, $ft0
	fdiv.s	$ft4, $ft4, $ft5
	fadd.s	$ft2, $ft2, $ft3
	fadd.s	$fa7, $ft2, $fa7
	fadd.s	$fa7, $ft1, $fa7
	fdiv.s	$ft0, $fa7, $ft0
	fcvt.d.s	$ft1, $ft4
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa7, $a0, %pc_lo12(.LCPI0_3)
	fmul.d	$ft1, $ft1, $fa1
	fmul.s	$ft2, $ft0, $ft0
	fcvt.d.s	$ft2, $ft2
	fmul.d	$ft2, $ft2, $fa7
	fadd.d	$ft1, $ft1, $ft2
	fcvt.s.d	$ft1, $ft1
	fcvt.d.s	$ft0, $ft0
	fmul.d	$ft0, $ft0, $fa2
	fadd.d	$ft0, $ft0, $fa3
	fcvt.s.d	$ft0, $ft0
	fmul.s	$ft0, $ft0, $ft0
	fdiv.s	$ft0, $ft1, $ft0
	fsub.s	$ft1, $ft0, $fa6
	fadd.s	$ft0, $fa6, $fa4
	fmul.s	$ft0, $fa6, $ft0
	fdiv.s	$ft1, $ft1, $ft0
	fcvt.d.s	$ft1, $ft1
	fadd.d	$ft2, $ft1, $fa3
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$ft1, $a0, %pc_lo12(.LCPI0_4)
	frecip.d	$ft2, $ft2
	fcvt.s.d	$ft3, $ft2
	fst.s	$ft3, $s3, 0
	fcmp.clt.d	$fcc0, $ft2, $ft1
	pcalau12i	$s2, %pc_hi20(.LCPI0_5)
	fmov.s	$ft3, $fa0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $s2, %pc_lo12(.LCPI0_5)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr11, -1168
.LBB0_8:                                # %.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	fst.s	$ft3, $s3, 0
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	ori	$a4, $zero, 4092
	fldx.s	$ft2, $s4, $a4
	fsub.s	$ft3, $ft2, $ft2
	fstx.s	$ft3, $s8, $a4
	ori	$a0, $a7, 4092
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	fldx.s	$ft3, $s4, $a0
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $s6, $a4
	ori	$a0, $zero, 4088
	fldx.s	$ft3, $s4, $a0
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $a2, $a4
	fldx.s	$ft3, $s4, $a4
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $a3, $a4
	fldx.s	$ft4, $s8, $a4
	fldx.s	$ft5, $s6, $a4
	fldx.s	$ft6, $a2, $a4
	fmul.s	$ft7, $ft4, $ft4
	fmul.s	$ft8, $ft5, $ft5
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft6, $ft6
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft3, $ft3
	fadd.s	$ft7, $ft8, $ft7
	fmul.s	$ft8, $ft2, $ft2
	fdiv.s	$ft7, $ft7, $ft8
	fadd.s	$ft4, $ft4, $ft5
	fadd.s	$ft4, $ft4, $ft6
	fadd.s	$ft3, $ft3, $ft4
	fdiv.s	$ft2, $ft3, $ft2
	fcvt.d.s	$ft3, $ft7
	fmul.d	$ft3, $ft3, $fa1
	fmul.s	$ft4, $ft2, $ft2
	fcvt.d.s	$ft4, $ft4
	fmul.d	$ft4, $ft4, $fa7
	fadd.d	$ft3, $ft3, $ft4
	fcvt.s.d	$ft3, $ft3
	fcvt.d.s	$ft2, $ft2
	fmul.d	$ft2, $ft2, $fa2
	fadd.d	$ft2, $ft2, $fa3
	fcvt.s.d	$ft2, $ft2
	fmul.s	$ft2, $ft2, $ft2
	fdiv.s	$ft2, $ft3, $ft2
	fsub.s	$ft2, $ft2, $fa6
	fdiv.s	$ft2, $ft2, $ft0
	fcvt.d.s	$ft2, $ft2
	fadd.d	$ft2, $ft2, $fa3
	frecip.d	$ft2, $ft2
	fcvt.s.d	$ft3, $ft2
	fcmp.clt.d	$fcc0, $ft2, $ft1
	ori	$a0, $zero, 4092
	fstx.s	$ft3, $s3, $a4
	bceqz	$fcc0, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movgr2fr.w	$ft2, $zero
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $s2, %pc_lo12(.LCPI0_5)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr10, -1168
.LBB0_13:                               # %.sink.split663
                                        #   in Loop: Header=BB0_1 Depth=1
	fstx.s	$ft2, $s3, $a0
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	fldx.s	$ft2, $a4, $a7
	fld.s	$ft3, $a4, 0
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $a5, 0
	fldx.s	$ft3, $a4, $a7
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $t7, 0
	fldx.s	$ft3, $a4, $a7
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $t6, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	fldx.s	$ft3, $a4, $a0
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $a6, 0
	fld.s	$ft4, $a5, 0
	fld.s	$ft5, $t7, 0
	fld.s	$ft6, $t6, 0
	fmul.s	$ft7, $ft4, $ft4
	fmul.s	$ft8, $ft5, $ft5
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft6, $ft6
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft3, $ft3
	fadd.s	$ft7, $ft8, $ft7
	fmul.s	$ft8, $ft2, $ft2
	fdiv.s	$ft7, $ft7, $ft8
	fadd.s	$ft4, $ft4, $ft5
	fadd.s	$ft4, $ft4, $ft6
	fadd.s	$ft3, $ft3, $ft4
	fdiv.s	$ft2, $ft3, $ft2
	fcvt.d.s	$ft3, $ft7
	fmul.d	$ft3, $ft3, $fa1
	fmul.s	$ft4, $ft2, $ft2
	fcvt.d.s	$ft4, $ft4
	fmul.d	$ft4, $ft4, $fa7
	fadd.d	$ft3, $ft3, $ft4
	fcvt.s.d	$ft3, $ft3
	fcvt.d.s	$ft2, $ft2
	fmul.d	$ft2, $ft2, $fa2
	fadd.d	$ft2, $ft2, $fa3
	fcvt.s.d	$ft2, $ft2
	fmul.s	$ft2, $ft2, $ft2
	fdiv.s	$ft2, $ft3, $ft2
	fsub.s	$ft2, $ft2, $fa6
	fdiv.s	$ft2, $ft2, $ft0
	fcvt.d.s	$ft2, $ft2
	fadd.d	$ft2, $ft2, $fa3
	frecip.d	$ft2, $ft2
	fcvt.s.d	$ft3, $ft2
	fcmp.clt.d	$fcc0, $ft2, $ft1
	fst.s	$ft3, $a1, 0
	bceqz	$fcc0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movgr2fr.w	$ft2, $zero
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $s2, %pc_lo12(.LCPI0_5)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr10, -1168
.LBB0_18:                               # %.sink.split665
                                        #   in Loop: Header=BB0_1 Depth=1
	fst.s	$ft2, $a1, 0
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	fldx.s	$ft2, $a0, $a2
	ori	$a1, $zero, 4092
	fldx.s	$ft3, $a0, $a1
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $a5, $a1
	fldx.s	$ft3, $a0, $a2
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $t7, $a1
	ori	$s6, $a7, 4088
	fldx.s	$ft3, $a0, $s6
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $t6, $a1
	fldx.s	$ft3, $a0, $a2
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $a6, $a1
	fldx.s	$ft4, $a5, $a1
	fldx.s	$ft5, $t7, $a1
	fldx.s	$ft6, $t6, $a1
	fmul.s	$ft7, $ft4, $ft4
	fmul.s	$ft8, $ft5, $ft5
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft6, $ft6
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft3, $ft3
	fadd.s	$ft7, $ft8, $ft7
	fmul.s	$ft8, $ft2, $ft2
	fdiv.s	$ft7, $ft7, $ft8
	fadd.s	$ft4, $ft4, $ft5
	fadd.s	$ft4, $ft4, $ft6
	fadd.s	$ft3, $ft3, $ft4
	fdiv.s	$ft2, $ft3, $ft2
	fcvt.d.s	$ft3, $ft7
	fmul.d	$ft3, $ft3, $fa1
	fmul.s	$ft4, $ft2, $ft2
	fcvt.d.s	$ft4, $ft4
	fmul.d	$ft4, $ft4, $fa7
	fadd.d	$ft3, $ft3, $ft4
	fcvt.s.d	$ft3, $ft3
	fcvt.d.s	$ft2, $ft2
	fmul.d	$ft2, $ft2, $fa2
	fadd.d	$ft2, $ft2, $fa3
	fcvt.s.d	$ft2, $ft2
	fmul.s	$ft2, $ft2, $ft2
	fdiv.s	$ft2, $ft3, $ft2
	fsub.s	$ft2, $ft2, $fa6
	fdiv.s	$ft2, $ft2, $ft0
	fcvt.d.s	$ft2, $ft2
	fadd.d	$ft2, $ft2, $fa3
	frecip.d	$ft2, $ft2
	fcvt.s.d	$ft3, $ft2
	fcmp.clt.d	$fcc0, $ft2, $ft1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	fst.s	$ft3, $a0, 0
	bceqz	$fcc0, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	movgr2fr.w	$ft2, $zero
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $s2, %pc_lo12(.LCPI0_5)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr10, -1168
.LBB0_23:                               # %.sink.split667
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	fst.s	$ft2, $a0, 0
.LBB0_24:                               # %.preheader621.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	vreplvei.w	$vr10, $vr6, 0
	vreplvei.w	$vr11, $vr8, 0
	ori	$a5, $zero, 1
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	move	$s5, $s3
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=2
	addi.d	$a5, $a5, 1
	add.d	$s5, $s5, $a7
	add.d	$t1, $t1, $a7
	add.d	$s4, $s4, $a7
	add.d	$fp, $fp, $a7
	add.d	$t7, $t7, $a7
	add.d	$t6, $t6, $a7
	add.d	$s8, $s8, $a7
	add.d	$a6, $a6, $a7
	add.d	$a0, $a0, $a7
	add.d	$a1, $a1, $a7
	add.d	$a2, $a2, $a7
	add.d	$a4, $a4, $a7
	ori	$a3, $zero, 2047
	beq	$a5, $a3, .LBB0_45
.LBB0_26:                               # %.preheader621
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	ori	$a3, $zero, 1
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	bnez	$t3, .LBB0_38
# %bb.27:                               # %vector.body814.preheader
                                        #   in Loop: Header=BB0_26 Depth=2
	ori	$s1, $s7, 16
	lu12i.w	$t5, 2
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	lu52i.d	$s3, $zero, 1022
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               # %pred.store.continue829
                                        #   in Loop: Header=BB0_29 Depth=3
	addi.d	$s1, $s1, 16
	beqz	$s1, .LBB0_37
.LBB0_29:                               # %vector.body814
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a3, $t7, $s1
	vld	$vr12, $a3, -16
	vldx	$vr13, $a3, $t8
	vldx	$vr14, $a3, $t0
	vfsub.s	$vr13, $vr13, $vr12
	add.d	$t3, $t6, $s1
	vstx	$vr13, $t3, $t0
	vfsub.s	$vr14, $vr14, $vr12
	vld	$vr15, $a3, -20
	add.d	$t3, $fp, $s1
	vstx	$vr14, $t3, $t0
	vld	$vr16, $a3, -12
	vfsub.s	$vr15, $vr15, $vr12
	add.d	$a3, $s4, $s1
	vstx	$vr15, $a3, $t0
	vfsub.s	$vr16, $vr16, $vr12
	add.d	$a3, $t1, $s1
	vstx	$vr16, $a3, $t0
	vfmul.s	$vr17, $vr13, $vr13
	vfmul.s	$vr18, $vr14, $vr14
	vfadd.s	$vr17, $vr17, $vr18
	vfmul.s	$vr18, $vr15, $vr15
	vfadd.s	$vr17, $vr17, $vr18
	vfmul.s	$vr18, $vr16, $vr16
	vfadd.s	$vr17, $vr18, $vr17
	vfmul.s	$vr18, $vr12, $vr12
	vfdiv.s	$vr17, $vr17, $vr18
	vfadd.s	$vr13, $vr13, $vr14
	vfadd.s	$vr13, $vr13, $vr15
	vfadd.s	$vr13, $vr16, $vr13
	vfdiv.s	$vr12, $vr13, $vr12
	vreplvei.w	$vr13, $vr17, 3
	fcvt.d.s	$ft5, $ft5
	vreplvei.w	$vr14, $vr17, 2
	fcvt.d.s	$ft6, $ft6
	vextrins.d	$vr14, $vr13, 16
	vreplvei.w	$vr13, $vr17, 1
	fcvt.d.s	$ft5, $ft5
	vreplvei.w	$vr15, $vr17, 0
	fcvt.d.s	$ft7, $ft7
	vextrins.d	$vr15, $vr13, 16
	vreplgr2vr.d	$vr13, $s3
	vfmul.d	$vr15, $vr15, $vr13
	vfmul.d	$vr13, $vr14, $vr13
	vfmul.s	$vr14, $vr12, $vr12
	vreplvei.w	$vr16, $vr14, 3
	fcvt.d.s	$ft8, $ft8
	vreplvei.w	$vr17, $vr14, 2
	fcvt.d.s	$ft9, $ft9
	vextrins.d	$vr17, $vr16, 16
	vreplvei.w	$vr16, $vr14, 1
	fcvt.d.s	$ft8, $ft8
	vreplvei.w	$vr14, $vr14, 0
	fcvt.d.s	$ft6, $ft6
	vextrins.d	$vr14, $vr16, 16
	lu52i.d	$a3, $zero, -1029
	vreplgr2vr.d	$vr16, $a3
	vfmul.d	$vr14, $vr14, $vr16
	vfmul.d	$vr16, $vr17, $vr16
	vfadd.d	$vr16, $vr13, $vr16
	vfadd.d	$vr13, $vr15, $vr14
	vreplvei.d	$vr14, $vr13, 1
	fcvt.s.d	$ft6, $ft6
	vreplvei.d	$vr13, $vr13, 0
	fcvt.s.d	$ft5, $ft5
	vextrins.w	$vr13, $vr14, 16
	vreplvei.d	$vr14, $vr16, 0
	fcvt.s.d	$ft6, $ft6
	vextrins.w	$vr13, $vr14, 32
	vreplvei.d	$vr14, $vr16, 1
	fcvt.s.d	$ft6, $ft6
	vextrins.w	$vr13, $vr14, 48
	vreplvei.w	$vr14, $vr12, 3
	fcvt.d.s	$ft6, $ft6
	vreplvei.w	$vr15, $vr12, 2
	fcvt.d.s	$ft7, $ft7
	vextrins.d	$vr15, $vr14, 16
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft6, $ft6
	vreplvei.w	$vr12, $vr12, 0
	fcvt.d.s	$ft4, $ft4
	vextrins.d	$vr12, $vr14, 16
	lu52i.d	$a3, $zero, 1021
	vreplgr2vr.d	$vr14, $a3
	vfmul.d	$vr12, $vr12, $vr14
	vfmul.d	$vr14, $vr15, $vr14
	lu52i.d	$a3, $zero, 1023
	vreplgr2vr.d	$vr15, $a3
	vfadd.d	$vr14, $vr14, $vr15
	vfadd.d	$vr12, $vr12, $vr15
	vreplvei.d	$vr16, $vr12, 1
	fcvt.s.d	$ft8, $ft8
	vreplvei.d	$vr12, $vr12, 0
	fcvt.s.d	$ft4, $ft4
	vextrins.w	$vr12, $vr16, 16
	vreplvei.d	$vr16, $vr14, 0
	fcvt.s.d	$ft8, $ft8
	vextrins.w	$vr12, $vr16, 32
	vreplvei.d	$vr14, $vr14, 1
	fcvt.s.d	$ft6, $ft6
	vextrins.w	$vr12, $vr14, 48
	vfmul.s	$vr12, $vr12, $vr12
	vfdiv.s	$vr12, $vr13, $vr12
	vfsub.s	$vr12, $vr12, $vr10
	vfdiv.s	$vr12, $vr12, $vr11
	vreplvei.w	$vr13, $vr12, 3
	fcvt.d.s	$ft5, $ft5
	vreplvei.w	$vr14, $vr12, 2
	fcvt.d.s	$ft6, $ft6
	vextrins.d	$vr14, $vr13, 16
	vreplvei.w	$vr13, $vr12, 1
	fcvt.d.s	$ft5, $ft5
	vreplvei.w	$vr12, $vr12, 0
	fcvt.d.s	$ft4, $ft4
	vextrins.d	$vr12, $vr13, 16
	vfadd.d	$vr12, $vr12, $vr15
	vfadd.d	$vr13, $vr14, $vr15
	vfrecip.d	$vr13, $vr13
	vfrecip.d	$vr12, $vr12
	vreplvei.d	$vr14, $vr12, 1
	fcvt.s.d	$ft6, $ft6
	vreplvei.d	$vr15, $vr12, 0
	fcvt.s.d	$ft7, $ft7
	vextrins.w	$vr15, $vr14, 16
	vreplvei.d	$vr14, $vr13, 0
	fcvt.s.d	$ft6, $ft6
	vextrins.w	$vr15, $vr14, 32
	vreplvei.d	$vr14, $vr13, 1
	fcvt.s.d	$ft6, $ft6
	vextrins.w	$vr15, $vr14, 48
	add.d	$a3, $s5, $s1
	ori	$t3, $a7, 4084
	vstx	$vr15, $a3, $t3
	lu52i.d	$t4, $zero, -1175
	vreplgr2vr.d	$vr14, $t4
	vfcmp.clt.d	$vr15, $vr12, $vr14
	vfcmp.clt.d	$vr14, $vr13, $vr14
	vpickev.w	$vr14, $vr14, $vr15
	vreplgr2vr.d	$vr15, $s0
	vfcmp.clt.d	$vr12, $vr15, $vr12
	vfcmp.clt.d	$vr13, $vr15, $vr13
	vpickev.w	$vr12, $vr13, $vr12
	vor.v	$vr12, $vr12, $vr14
	lu12i.w	$t4, 260096
	vreplgr2vr.w	$vr13, $t4
	vrepli.b	$vr15, 0
	vpickve2gr.w	$t4, $vr12, 0
	andi	$t4, $t4, 1
	vbitsel.v	$vr13, $vr13, $vr15, $vr14
	bnez	$t4, .LBB0_33
# %bb.30:                               # %pred.store.continue
                                        #   in Loop: Header=BB0_29 Depth=3
	vpickve2gr.w	$t3, $vr12, 1
	andi	$t3, $t3, 1
	bnez	$t3, .LBB0_34
.LBB0_31:                               # %pred.store.continue825
                                        #   in Loop: Header=BB0_29 Depth=3
	vpickve2gr.w	$t3, $vr12, 2
	andi	$t3, $t3, 1
	bnez	$t3, .LBB0_35
.LBB0_32:                               # %pred.store.continue827
                                        #   in Loop: Header=BB0_29 Depth=3
	vpickve2gr.w	$t3, $vr12, 3
	andi	$t3, $t3, 1
	beqz	$t3, .LBB0_28
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_33:                               # %pred.store.if
                                        #   in Loop: Header=BB0_29 Depth=3
	add.d	$t3, $a3, $t3
	vstelm.w	$vr13, $t3, 0, 0
	vpickve2gr.w	$t3, $vr12, 1
	andi	$t3, $t3, 1
	beqz	$t3, .LBB0_31
.LBB0_34:                               # %pred.store.if824
                                        #   in Loop: Header=BB0_29 Depth=3
	add.d	$t3, $a3, $s6
	vstelm.w	$vr13, $t3, 0, 1
	vpickve2gr.w	$t3, $vr12, 2
	andi	$t3, $t3, 1
	beqz	$t3, .LBB0_32
.LBB0_35:                               # %pred.store.if826
                                        #   in Loop: Header=BB0_29 Depth=3
	ld.d	$t3, $sp, 272                   # 8-byte Folded Reload
	add.d	$t3, $a3, $t3
	vstelm.w	$vr13, $t3, 0, 2
	vpickve2gr.w	$t3, $vr12, 3
	andi	$t3, $t3, 1
	beqz	$t3, .LBB0_28
.LBB0_36:                               # %pred.store.if828
                                        #   in Loop: Header=BB0_29 Depth=3
	add.d	$a3, $a3, $t5
	vstelm.w	$vr13, $a3, 0, 3
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_37:                               #   in Loop: Header=BB0_26 Depth=2
	ori	$a3, $zero, 1021
.LBB0_38:                               # %scalar.ph810.preheader
                                        #   in Loop: Header=BB0_26 Depth=2
	slli.d	$s1, $a3, 2
	ori	$a3, $zero, 4092
	move	$s3, $a4
	move	$t3, $a2
	move	$t4, $a1
	move	$t8, $a0
	move	$s0, $a6
	move	$t5, $s8
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_39:                               #   in Loop: Header=BB0_42 Depth=3
	movgr2fr.w	$ft4, $zero
.LBB0_40:                               # %.sink.split669
                                        #   in Loop: Header=BB0_42 Depth=3
	fstx.s	$ft4, $t5, $s1
.LBB0_41:                               #   in Loop: Header=BB0_42 Depth=3
	addi.d	$a3, $a3, -4
	addi.d	$t5, $t5, 4
	addi.d	$s0, $s0, 4
	addi.d	$t8, $t8, 4
	addi.d	$t4, $t4, 4
	addi.d	$t3, $t3, 4
	addi.d	$s3, $s3, 4
	beq	$s1, $a3, .LBB0_25
.LBB0_42:                               # %scalar.ph810
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$ra, $t4, $s1
	fldx.s	$ft4, $t4, $s1
	fldx.s	$ft5, $ra, $s7
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $t8, $s1
	fldx.s	$ft5, $ra, $a7
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $t3, $s1
	fld.s	$ft5, $ra, -4
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $s3, $s1
	fld.s	$ft5, $ra, 4
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $s0, $s1
	fldx.s	$ft6, $t8, $s1
	fldx.s	$ft7, $t3, $s1
	fldx.s	$ft8, $s3, $s1
	fmul.s	$ft9, $ft6, $ft6
	fmul.s	$ft10, $ft7, $ft7
	fadd.s	$ft9, $ft9, $ft10
	fmul.s	$ft10, $ft8, $ft8
	fadd.s	$ft9, $ft9, $ft10
	fmul.s	$ft10, $ft5, $ft5
	fadd.s	$ft9, $ft10, $ft9
	fmul.s	$ft10, $ft4, $ft4
	fdiv.s	$ft9, $ft9, $ft10
	fadd.s	$ft6, $ft6, $ft7
	fadd.s	$ft6, $ft6, $ft8
	fadd.s	$ft5, $ft5, $ft6
	fdiv.s	$ft4, $ft5, $ft4
	fcvt.d.s	$ft5, $ft9
	fmul.d	$ft5, $ft5, $fa1
	fmul.s	$ft6, $ft4, $ft4
	fcvt.d.s	$ft6, $ft6
	fmul.d	$ft6, $ft6, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fcvt.s.d	$ft5, $ft5
	fcvt.d.s	$ft4, $ft4
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft4, $ft4, $fa3
	fcvt.s.d	$ft4, $ft4
	fmul.s	$ft4, $ft4, $ft4
	fdiv.s	$ft4, $ft5, $ft4
	fsub.s	$ft4, $ft4, $fa6
	fdiv.s	$ft4, $ft4, $ft0
	fcvt.d.s	$ft4, $ft4
	fadd.d	$ft4, $ft4, $fa3
	frecip.d	$ft4, $ft4
	fcvt.s.d	$ft5, $ft4
	fcmp.clt.d	$fcc0, $ft4, $ft1
	fstx.s	$ft5, $t5, $s1
	bcnez	$fcc0, .LBB0_39
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=3
	fld.d	$ft5, $s2, %pc_lo12(.LCPI0_5)
	fcmp.cule.d	$fcc0, $ft4, $ft5
	bcnez	$fcc0, .LBB0_41
# %bb.44:                               #   in Loop: Header=BB0_42 Depth=3
	vldi	$vr12, -1168
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_45:                               # %vector.memcheck698
                                        #   in Loop: Header=BB0_1 Depth=1
	lu52i.d	$a0, $zero, 1020
	vreplgr2vr.d	$vr6, $a0
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_47:                               # %vector.body726.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $s7, 16
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	ori	$a5, $zero, 4084
	.p2align	4, , 16
.LBB0_48:                               # %vector.body726
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a4, $a0
	vldx	$vr7, $a1, $t0
	vldx	$vr8, $a1, $a5
	add.d	$a1, $a6, $a0
	vldx	$vr9, $a1, $t0
	add.d	$a1, $t7, $a0
	vldx	$vr10, $a1, $t0
	add.d	$a1, $t6, $a0
	vldx	$vr11, $a1, $t0
	vfmul.s	$vr9, $vr7, $vr9
	vfmul.s	$vr10, $vr7, $vr10
	vfadd.s	$vr9, $vr9, $vr10
	vfmul.s	$vr7, $vr7, $vr11
	add.d	$a1, $t4, $a0
	vldx	$vr10, $a1, $t0
	add.d	$a1, $t5, $a0
	vldx	$vr11, $a1, $t0
	vfadd.s	$vr7, $vr9, $vr7
	vfmul.s	$vr8, $vr8, $vr10
	vfadd.s	$vr7, $vr7, $vr8
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr9, $vr11, 0
	fcvt.d.s	$ft1, $ft1
	vextrins.d	$vr9, $vr8, 16
	vreplvei.w	$vr8, $vr11, 3
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr10, $vr11, 2
	fcvt.d.s	$ft2, $ft2
	vextrins.d	$vr10, $vr8, 16
	vreplvei.w	$vr8, $vr7, 3
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr11, $vr7, 2
	fcvt.d.s	$ft3, $ft3
	vextrins.d	$vr11, $vr8, 16
	vreplvei.w	$vr8, $vr7, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr7, $vr7, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr8, 16
	vfmul.d	$vr7, $vr7, $vr6
	vfmul.d	$vr8, $vr11, $vr6
	vfadd.d	$vr8, $vr8, $vr10
	vfadd.d	$vr7, $vr7, $vr9
	vreplvei.d	$vr9, $vr7, 1
	fcvt.s.d	$ft1, $ft1
	vreplvei.d	$vr7, $vr7, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr7, $vr9, 16
	vreplvei.d	$vr9, $vr8, 0
	fcvt.s.d	$ft1, $ft1
	vextrins.w	$vr7, $vr9, 32
	vreplvei.d	$vr8, $vr8, 1
	fcvt.s.d	$ft0, $ft0
	vextrins.w	$vr7, $vr8, 48
	addi.d	$a0, $a0, 16
	vstx	$vr7, $a1, $t0
	bnez	$a0, .LBB0_48
# %bb.49:                               #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 1020
.LBB0_50:                               # %.preheader623.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	slli.d	$a0, $a1, 2
	addi.d	$a1, $a1, -1023
	move	$a4, $t6
	move	$a5, $t7
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_51:                               # %.preheader623
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $t1, $a0
	fld.s	$fa7, $t3, -4
	fldx.s	$ft0, $a6, $a0
	fldx.s	$ft1, $a5, $a0
	fldx.s	$ft2, $t1, $a0
	fmul.s	$ft0, $fa7, $ft0
	fldx.s	$ft3, $a4, $a0
	fmul.s	$ft1, $fa7, $ft1
	fadd.s	$ft0, $ft0, $ft1
	fldx.s	$ft1, $t4, $a0
	fmul.s	$fa7, $fa7, $ft3
	fldx.s	$ft3, $t5, $a0
	fadd.s	$fa7, $ft0, $fa7
	fmul.s	$ft0, $ft2, $ft1
	fadd.s	$fa7, $fa7, $ft0
	fcvt.d.s	$ft0, $ft3
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $t5, $a0
	addi.d	$t1, $t1, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$t4, $t4, 4
	addi.d	$a1, $a1, 1
	addi.d	$t5, $t5, 4
	bnez	$a1, .LBB0_51
# %bb.52:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	fld.s	$fa7, $a0, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ori	$a1, $zero, 4092
	fldx.s	$ft0, $a0, $a1
	fldx.s	$ft1, $t7, $a1
	move	$a5, $zero
	fmul.s	$ft0, $fa7, $ft0
	fldx.s	$ft2, $t6, $a1
	fmul.s	$ft1, $fa7, $ft1
	fadd.s	$ft0, $ft0, $ft1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	fldx.s	$ft1, $a0, $a1
	fmul.s	$ft2, $fa7, $ft2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	fldx.s	$ft3, $a0, $a1
	fadd.s	$ft0, $ft0, $ft2
	fmul.s	$fa7, $fa7, $ft1
	fadd.s	$fa7, $ft0, $fa7
	fcvt.d.s	$ft0, $ft3
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $a0, $a1
	move	$a6, $s3
	move	$t1, $s8
	move	$t3, $s6
	move	$t4, $a2
	move	$t5, $a3
	move	$t6, $s4
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_53:                               # %.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_59 Depth 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_53 Depth=2
	move	$a1, $zero
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_55:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_53 Depth=2
	ori	$a4, $s7, 16
	.p2align	4, , 16
.LBB0_56:                               # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $t7, $a4
	vld	$vr7, $a0, -16
	vldx	$vr8, $a0, $t0
	add.d	$a1, $t3, $a4
	vldx	$vr9, $a1, $t0
	add.d	$a1, $t1, $a4
	vldx	$vr10, $a1, $t0
	add.d	$a1, $t4, $a4
	vldx	$vr11, $a1, $t0
	vfmul.s	$vr8, $vr8, $vr9
	vld	$vr9, $a0, -12
	vfmul.s	$vr10, $vr7, $vr10
	vfadd.s	$vr8, $vr10, $vr8
	vfmul.s	$vr7, $vr7, $vr11
	add.d	$a0, $t5, $a4
	vldx	$vr10, $a0, $t0
	add.d	$a0, $t6, $a4
	vldx	$vr11, $a0, $t0
	vfadd.s	$vr7, $vr8, $vr7
	vfmul.s	$vr8, $vr9, $vr10
	vfadd.s	$vr7, $vr7, $vr8
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr9, $vr11, 0
	fcvt.d.s	$ft1, $ft1
	vextrins.d	$vr9, $vr8, 16
	vreplvei.w	$vr8, $vr11, 3
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr10, $vr11, 2
	fcvt.d.s	$ft2, $ft2
	vextrins.d	$vr10, $vr8, 16
	vreplvei.w	$vr8, $vr7, 3
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr11, $vr7, 2
	fcvt.d.s	$ft3, $ft3
	vextrins.d	$vr11, $vr8, 16
	vreplvei.w	$vr8, $vr7, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr7, $vr7, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr8, 16
	vfmul.d	$vr7, $vr7, $vr6
	vfmul.d	$vr8, $vr11, $vr6
	vfadd.d	$vr8, $vr8, $vr10
	vfadd.d	$vr7, $vr7, $vr9
	vreplvei.d	$vr9, $vr7, 1
	fcvt.s.d	$ft1, $ft1
	vreplvei.d	$vr7, $vr7, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr7, $vr9, 16
	vreplvei.d	$vr9, $vr8, 0
	fcvt.s.d	$ft1, $ft1
	vextrins.w	$vr7, $vr9, 32
	vreplvei.d	$vr8, $vr8, 1
	fcvt.s.d	$ft0, $ft0
	vextrins.w	$vr7, $vr8, 48
	addi.d	$a4, $a4, 16
	vstx	$vr7, $a0, $t0
	bnez	$a4, .LBB0_56
# %bb.57:                               #   in Loop: Header=BB0_53 Depth=2
	ori	$a1, $zero, 1020
.LBB0_58:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_53 Depth=2
	slli.d	$a0, $a1, 2
	addi.d	$a1, $a1, -1023
	move	$s5, $t6
	move	$s2, $t5
	move	$a4, $t4
	move	$t8, $t3
	move	$fp, $t1
	move	$s0, $a6
	.p2align	4, , 16
.LBB0_59:                               # %scalar.ph
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s1, $s0, $a0
	fldx.s	$fa7, $s1, $a7
	fldx.s	$ft0, $t8, $a0
	fldx.s	$ft1, $s0, $a0
	fldx.s	$ft2, $fp, $a0
	fld.s	$ft3, $s1, 4
	fmul.s	$fa7, $fa7, $ft0
	fldx.s	$ft0, $a4, $a0
	fmul.s	$ft2, $ft1, $ft2
	fadd.s	$fa7, $ft2, $fa7
	fldx.s	$ft2, $s2, $a0
	fmul.s	$ft0, $ft1, $ft0
	fldx.s	$ft1, $s5, $a0
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $ft2
	fadd.s	$fa7, $fa7, $ft0
	fcvt.d.s	$ft0, $ft1
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $s5, $a0
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 4
	addi.d	$t8, $t8, 4
	addi.d	$a4, $a4, 4
	addi.d	$s2, $s2, 4
	addi.d	$a1, $a1, 1
	addi.d	$s5, $s5, 4
	bnez	$a1, .LBB0_59
# %bb.60:                               #   in Loop: Header=BB0_53 Depth=2
	addi.d	$a5, $a5, 1
	add.d	$t7, $t7, $a7
	add.d	$t6, $t6, $a7
	add.d	$t5, $t5, $a7
	add.d	$t4, $t4, $a7
	add.d	$t3, $t3, $a7
	add.d	$t1, $t1, $a7
	add.d	$a6, $a6, $a7
	ori	$a0, $zero, 2047
	bne	$a5, $a0, .LBB0_53
# %bb.61:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	ori	$t1, $zero, 128
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB0_1
# %bb.62:
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end0:
	.size	srad_kernel, .Lfunc_end0-srad_kernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
