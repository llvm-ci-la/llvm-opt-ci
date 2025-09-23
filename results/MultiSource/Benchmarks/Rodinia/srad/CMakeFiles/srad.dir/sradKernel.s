	.file	"sradKernel.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function srad_kernel
.LCPI0_0:
	.word	0x38800000                      # float 6.10351563E-5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0xbfb0000000000000              # double -0.0625
.LCPI0_2:
	.dword	0xb690000000000000              # double -7.0064923216240854E-46
.LCPI0_3:
	.dword	0x3ff0000010000000              # double 1.0000000596046448
	.text
	.globl	srad_kernel
	.p2align	5
	.type	srad_kernel,@function
srad_kernel:                            # @srad_kernel
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	move	$s4, $a3
	move	$ra, $a2
	move	$s6, $a1
	move	$s8, $a0
	move	$s0, $zero
	lu12i.w	$a0, 2047
	add.d	$s1, $a6, $a0
	lu12i.w	$a1, 2046
	ori	$t7, $a1, 4092
	add.d	$t8, $s8, $t7
	add.d	$a4, $s6, $t7
	add.d	$a3, $a2, $t7
	add.d	$fp, $s4, $t7
	addu16i.d	$a7, $a5, 128
	addi.d	$a7, $a7, -4
	lu12i.w	$t0, 1
	ori	$s2, $t0, 4
	add.d	$s3, $s8, $s2
	add.d	$s5, $s6, $s2
	add.d	$s7, $a2, $s2
	add.d	$a2, $s4, $s2
	add.d	$t1, $a6, $s2
	add.d	$t2, $a6, $t7
	addi.d	$t3, $a5, 4
	sltu	$t4, $s3, $a4
	sltu	$t5, $s5, $t8
	and	$t4, $t4, $t5
	sltu	$t5, $s3, $a3
	sltu	$t6, $s7, $t8
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s3, $fp
	sltu	$t6, $a2, $t8
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s3, $t2
	sltu	$t6, $t1, $t8
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	sltu	$t5, $s3, $a7
	sltu	$t6, $t3, $t8
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s5, $a3
	sltu	$t6, $s7, $a4
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s5, $fp
	sltu	$t6, $a2, $a4
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s5, $t2
	sltu	$t6, $t1, $a4
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	sltu	$t5, $s5, $a7
	sltu	$t6, $t3, $a4
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s7, $fp
	sltu	$t6, $a2, $a3
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s7, $t2
	sltu	$t6, $t1, $a3
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	sltu	$t5, $s7, $a7
	sltu	$t6, $t3, $a3
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $a2, $t2
	sltu	$t6, $t1, $fp
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	sltu	$t5, $a2, $a7
	sltu	$t6, $t3, $fp
	and	$t5, $t5, $t6
	add.d	$t6, $s8, $a0
	or	$t4, $t4, $t5
	add.d	$s7, $a5, $a0
	sltu	$t2, $t3, $t2
	addu16i.d	$t3, $a6, 128
	sltu	$t1, $t1, $a7
	and	$t1, $t1, $t2
	or	$t1, $t4, $t1
	sltu	$t2, $s7, $t3
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	sltu	$t4, $s1, $a7
	and	$t2, $t2, $t4
	addu16i.d	$t4, $s8, 128
	addi.d	$t4, $t4, -4
	sltu	$t4, $s7, $t4
	st.d	$t6, $sp, 216                   # 8-byte Folded Spill
	sltu	$t5, $t6, $a7
	and	$t4, $t4, $t5
	or	$t2, $t2, $t4
	addu16i.d	$t4, $s6, 128
	addi.d	$t4, $t4, -4
	sltu	$t4, $s7, $t4
	add.d	$t5, $s6, $a0
	st.d	$t5, $sp, 208                   # 8-byte Folded Spill
	sltu	$t5, $t5, $a7
	and	$t4, $t4, $t5
	or	$t2, $t2, $t4
	addu16i.d	$t4, $ra, 128
	addi.d	$t4, $t4, -4
	sltu	$t4, $s7, $t4
	add.d	$t5, $ra, $a0
	st.d	$t5, $sp, 200                   # 8-byte Folded Spill
	sltu	$t5, $t5, $a7
	and	$t4, $t4, $t5
	or	$t2, $t2, $t4
	addu16i.d	$t4, $s4, 128
	addi.d	$t4, $t4, -4
	sltu	$t4, $s7, $t4
	add.d	$t5, $s4, $a0
	st.d	$t5, $sp, 192                   # 8-byte Folded Spill
	sltu	$a7, $t5, $a7
	and	$a7, $t4, $a7
	or	$a7, $t2, $a7
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a7, $t3, -4
	add.d	$t3, $a5, $t7
	st.d	$a7, $sp, 224                   # 8-byte Folded Spill
	sltu	$a7, $a5, $a7
	sltu	$t2, $a6, $t3
	and	$a7, $a7, $t2
	sltu	$t4, $a5, $t8
	sltu	$t2, $s8, $t3
	and	$t2, $t4, $t2
	or	$t2, $a7, $t2
	sltu	$a4, $a5, $a4
	sltu	$a7, $s6, $t3
	and	$a4, $a4, $a7
	or	$a4, $t2, $a4
	sltu	$a3, $a5, $a3
	sltu	$a7, $ra, $t3
	and	$a3, $a3, $a7
	add.d	$a1, $a5, $a1
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	or	$a1, $a4, $a3
	sltu	$a4, $a5, $fp
	sltu	$a3, $s4, $t3
	and	$a3, $a4, $a3
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	add.d	$a1, $a5, $s2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	add.d	$a1, $a6, $t0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ori	$a0, $a0, 4
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -928
	vldi	$vr2, -944
	vldi	$vr3, -912
	vldi	$vr4, -1168
	andi	$a0, $t1, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	vldi	$vr5, -960
	lu12i.w	$a0, 65536
	lu52i.d	$s1, $a0, 1023
	add.d	$a0, $s4, $t0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s8, $t0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $a5, $t0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $s6, $t0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $ra, $t0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 512
	ori	$t5, $zero, 128
	ori	$t6, $zero, 4092
	lu12i.w	$t2, -1
	ori	$t4, $zero, 4064
	ori	$s3, $zero, 4060
	lu52i.d	$s5, $zero, -1029
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$ra, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_1:                                # %.preheader624
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_48 Depth 3
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_59 Depth 2
                                        #       Child Loop BB0_62 Depth 3
                                        #       Child Loop BB0_65 Depth 3
	move	$a0, $zero
	move	$a1, $a5
	fmov.s	$fa7, $fa0
	fmov.s	$fa6, $fa0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_2:                                # %.preheader622
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	move	$a3, $zero
	.p2align	4, , 16
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.s	$ft0, $a1, $a3
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft0, $ft0
	addi.d	$a3, $a3, 4
	fadd.s	$fa6, $fa6, $ft0
	bne	$a3, $a2, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=2
	addi.d	$a0, $a0, 1
	add.d	$a1, $a1, $t0
	bne	$a0, $t5, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	fld.s	$ft0, $a5, 0
	fsub.s	$ft1, $ft0, $ft0
	fst.s	$ft1, $s8, 0
	fldx.s	$ft1, $a5, $t0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$ft2, $a0, %pc_lo12(.LCPI0_0)
	fsub.s	$ft1, $ft1, $ft0
	fst.s	$ft1, $s6, 0
	fld.s	$ft1, $a5, 0
	fmul.s	$fa7, $fa7, $ft2
	fsub.s	$ft1, $ft1, $ft0
	fst.s	$ft1, $ra, 0
	fld.s	$ft1, $a5, 4
	fmul.s	$fa6, $fa6, $ft2
	fmul.s	$fa7, $fa7, $fa7
	fsub.s	$fa6, $fa6, $fa7
	fsub.s	$ft1, $ft1, $ft0
	fst.s	$ft1, $s4, 0
	fld.s	$ft2, $s8, 0
	fld.s	$ft3, $s6, 0
	fdiv.s	$fa6, $fa6, $fa7
	fld.s	$fa7, $ra, 0
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
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa7, $a0, %pc_lo12(.LCPI0_1)
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
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$ft1, $a0, %pc_lo12(.LCPI0_2)
	frecip.d	$ft2, $ft2
	fcvt.s.d	$ft3, $ft2
	fst.s	$ft3, $a6, 0
	fcmp.clt.d	$fcc0, $ft2, $ft1
	pcalau12i	$s7, %pc_hi20(.LCPI0_3)
	fmov.s	$ft3, $fa0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $s7, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr11, -1168
.LBB0_8:                                # %.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	fst.s	$ft3, $a6, 0
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	fldx.s	$ft2, $a5, $t6
	fsub.s	$ft3, $ft2, $ft2
	fstx.s	$ft3, $s8, $t6
	ori	$a1, $t0, 4092
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	fldx.s	$ft3, $a5, $a1
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $s6, $t6
	ori	$a1, $zero, 4088
	fldx.s	$ft3, $a5, $a1
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $ra, $t6
	fldx.s	$ft3, $a5, $t6
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $s4, $t6
	fldx.s	$ft4, $s8, $t6
	fldx.s	$ft5, $s6, $t6
	fldx.s	$ft6, $ra, $t6
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
	fstx.s	$ft3, $a6, $t6
	fmov.s	$ft3, $fa0
	bcnez	$fcc0, .LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $s7, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr11, -1168
.LBB0_12:                               # %.sink.split663
                                        #   in Loop: Header=BB0_1 Depth=1
	fstx.s	$ft3, $a6, $t6
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	fldx.s	$ft2, $a3, $t0
	fld.s	$ft3, $a3, 0
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $a4, 0
	fldx.s	$ft3, $a3, $t0
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $a7, 0
	fldx.s	$ft3, $a3, $t0
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $t1, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	fldx.s	$ft3, $a3, $a1
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $t3, 0
	fld.s	$ft4, $a4, 0
	fld.s	$ft5, $a7, 0
	fld.s	$ft6, $t1, 0
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
	fst.s	$ft3, $a0, 0
	fmov.s	$ft3, $fa0
	bcnez	$fcc0, .LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $s7, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr11, -1168
.LBB0_16:                               # %.sink.split665
                                        #   in Loop: Header=BB0_1 Depth=1
	fst.s	$ft3, $a0, 0
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	fldx.s	$ft2, $a0, $a2
	fldx.s	$ft3, $a0, $t6
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $a4, $t6
	fldx.s	$ft3, $a0, $a2
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $a7, $t6
	ori	$a1, $t0, 4088
	fldx.s	$ft3, $a0, $a1
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $t1, $t6
	fldx.s	$ft3, $a0, $a2
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $t3, $t6
	fldx.s	$ft4, $a4, $t6
	fldx.s	$ft5, $a7, $t6
	fldx.s	$ft6, $t1, $t6
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
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	fst.s	$ft3, $a0, 0
	bceqz	$fcc0, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movgr2fr.w	$ft2, $zero
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $s7, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr10, -1168
.LBB0_21:                               # %.sink.split667
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	fst.s	$ft2, $a0, 0
.LBB0_22:                               # %.preheader621.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	xvreplve0.w	$xr10, $xr6
	xvreplve0.w	$xr11, $xr8
	ori	$a0, $zero, 1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	move	$s4, $a6
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a0, $a0, 1
	add.d	$s4, $s4, $t0
	add.d	$fp, $fp, $t0
	add.d	$t8, $t8, $t0
	add.d	$t6, $t6, $t0
	add.d	$s0, $s0, $t0
	add.d	$t7, $t7, $t0
	add.d	$a4, $a4, $t0
	add.d	$t5, $t5, $t0
	add.d	$s2, $s2, $t0
	add.d	$s6, $s6, $t0
	add.d	$t1, $t1, $t0
	add.d	$a3, $a3, $t0
	move	$s1, $a2
	ori	$a5, $zero, 2047
	ori	$s3, $zero, 4060
	lu52i.d	$s5, $zero, -1029
	beq	$a0, $a5, .LBB0_51
.LBB0_24:                               # %.preheader621
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	ori	$a5, $zero, 1
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	bnez	$a6, .LBB0_44
# %bb.25:                               # %vector.body814.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	ori	$s8, $t2, 32
	ori	$a2, $zero, 4068
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %pred.store.continue837
                                        #   in Loop: Header=BB0_27 Depth=3
	addi.d	$s8, $s8, 32
	beqz	$s8, .LBB0_43
.LBB0_27:                               # %vector.body814
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $t7, $s8
	xvldx	$xr12, $a5, $t4
	xvld	$xr13, $a5, -32
	ori	$a6, $t0, 4064
	xvldx	$xr14, $a5, $a6
	xvfsub.s	$xr13, $xr13, $xr12
	add.d	$a6, $s0, $s8
	xvstx	$xr13, $a6, $t4
	xvfsub.s	$xr14, $xr14, $xr12
	xvldx	$xr15, $a5, $s3
	add.d	$a6, $t6, $s8
	xvstx	$xr14, $a6, $t4
	xvldx	$xr16, $a5, $a2
	xvfsub.s	$xr15, $xr15, $xr12
	add.d	$a5, $t8, $s8
	xvstx	$xr15, $a5, $t4
	xvfsub.s	$xr16, $xr16, $xr12
	add.d	$a5, $fp, $s8
	xvstx	$xr16, $a5, $t4
	xvfmul.s	$xr17, $xr13, $xr13
	xvfmul.s	$xr18, $xr14, $xr14
	xvfadd.s	$xr17, $xr17, $xr18
	xvfmul.s	$xr18, $xr15, $xr15
	xvfadd.s	$xr17, $xr17, $xr18
	xvfmul.s	$xr18, $xr16, $xr16
	xvfadd.s	$xr17, $xr18, $xr17
	xvfmul.s	$xr18, $xr12, $xr12
	xvfdiv.s	$xr17, $xr17, $xr18
	xvfadd.s	$xr13, $xr13, $xr14
	xvfadd.s	$xr13, $xr13, $xr15
	xvfadd.s	$xr13, $xr16, $xr13
	xvfdiv.s	$xr12, $xr13, $xr12
	xvpermi.q	$xr13, $xr17, 1
	vreplvei.w	$vr14, $vr13, 1
	fcvt.d.s	$ft6, $ft6
	vreplvei.w	$vr15, $vr13, 0
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr15, $xr14, 1
	vreplvei.w	$vr14, $vr13, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr15, $xr14, 2
	vreplvei.w	$vr13, $vr13, 3
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr15, $xr13, 3
	vreplvei.w	$vr13, $vr17, 1
	fcvt.d.s	$ft5, $ft5
	vreplvei.w	$vr14, $vr17, 0
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr14, $xr13, 1
	vreplvei.w	$vr13, $vr17, 2
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr14, $xr13, 2
	vreplvei.w	$vr13, $vr17, 3
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr14, $xr13, 3
	xvldi	$xr13, -928
	xvfmul.d	$xr14, $xr14, $xr13
	xvfmul.d	$xr13, $xr15, $xr13
	xvfmul.s	$xr15, $xr12, $xr12
	xvpermi.q	$xr16, $xr15, 1
	vreplvei.w	$vr17, $vr16, 1
	fcvt.d.s	$ft9, $ft9
	vreplvei.w	$vr18, $vr16, 0
	fcvt.d.s	$ft10, $ft10
	xvinsve0.d	$xr18, $xr17, 1
	vreplvei.w	$vr17, $vr16, 2
	fcvt.d.s	$ft9, $ft9
	xvinsve0.d	$xr18, $xr17, 2
	vreplvei.w	$vr16, $vr16, 3
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr18, $xr16, 3
	vreplvei.w	$vr16, $vr15, 1
	fcvt.d.s	$ft8, $ft8
	vreplvei.w	$vr17, $vr15, 0
	fcvt.d.s	$ft9, $ft9
	xvinsve0.d	$xr17, $xr16, 1
	vreplvei.w	$vr16, $vr15, 2
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr17, $xr16, 2
	vreplvei.w	$vr15, $vr15, 3
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr17, $xr15, 3
	xvreplgr2vr.d	$xr15, $s5
	xvfmul.d	$xr16, $xr17, $xr15
	xvfmul.d	$xr15, $xr18, $xr15
	xvfadd.d	$xr15, $xr13, $xr15
	xvfadd.d	$xr14, $xr14, $xr16
	xvpickve.d	$xr13, $xr14, 1
	fcvt.s.d	$ft8, $ft5
	xvpickve.d	$xr13, $xr14, 0
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr13, $xr16, 1
	xvpickve.d	$xr16, $xr14, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr13, $xr16, 2
	xvpickve.d	$xr14, $xr14, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 3
	xvpickve.d	$xr14, $xr15, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 4
	xvpickve.d	$xr14, $xr15, 1
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 5
	xvpickve.d	$xr14, $xr15, 2
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 6
	xvpickve.d	$xr14, $xr15, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 7
	xvpermi.q	$xr14, $xr12, 1
	vreplvei.w	$vr15, $vr14, 1
	fcvt.d.s	$ft7, $ft7
	vreplvei.w	$vr16, $vr14, 0
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr16, $xr15, 1
	vreplvei.w	$vr15, $vr14, 2
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr16, $xr15, 2
	vreplvei.w	$vr14, $vr14, 3
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr16, $xr14, 3
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft6, $ft6
	vreplvei.w	$vr15, $vr12, 0
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr15, $xr14, 1
	vreplvei.w	$vr14, $vr12, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr15, $xr14, 2
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr15, $xr12, 3
	xvldi	$xr12, -944
	xvfmul.d	$xr14, $xr15, $xr12
	xvfmul.d	$xr15, $xr16, $xr12
	xvldi	$xr12, -912
	xvfadd.d	$xr15, $xr15, $xr12
	xvfadd.d	$xr14, $xr14, $xr12
	xvpickve.d	$xr16, $xr14, 1
	fcvt.s.d	$ft8, $ft8
	xvpickve.d	$xr17, $xr14, 0
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr17, $xr16, 1
	xvpickve.d	$xr16, $xr14, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr17, $xr16, 2
	xvpickve.d	$xr14, $xr14, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 3
	xvpickve.d	$xr14, $xr15, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 4
	xvpickve.d	$xr14, $xr15, 1
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 5
	xvpickve.d	$xr14, $xr15, 2
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 6
	xvpickve.d	$xr14, $xr15, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 7
	xvfmul.s	$xr14, $xr17, $xr17
	xvfdiv.s	$xr13, $xr13, $xr14
	xvfsub.s	$xr13, $xr13, $xr10
	xvfdiv.s	$xr13, $xr13, $xr11
	xvpermi.q	$xr14, $xr13, 1
	vreplvei.w	$vr15, $vr14, 1
	fcvt.d.s	$ft7, $ft7
	vreplvei.w	$vr16, $vr14, 0
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr16, $xr15, 1
	vreplvei.w	$vr15, $vr14, 2
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr16, $xr15, 2
	vreplvei.w	$vr14, $vr14, 3
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr16, $xr14, 3
	vreplvei.w	$vr14, $vr13, 1
	fcvt.d.s	$ft6, $ft6
	vreplvei.w	$vr15, $vr13, 0
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr15, $xr14, 1
	vreplvei.w	$vr14, $vr13, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr15, $xr14, 2
	vreplvei.w	$vr13, $vr13, 3
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr15, $xr13, 3
	xvfadd.d	$xr13, $xr15, $xr12
	xvfadd.d	$xr12, $xr16, $xr12
	xvfrecip.d	$xr12, $xr12
	xvfrecip.d	$xr13, $xr13
	xvpickve.d	$xr14, $xr13, 1
	fcvt.s.d	$ft6, $ft6
	xvpickve.d	$xr15, $xr13, 0
	fcvt.s.d	$ft7, $ft7
	xvinsve0.w	$xr15, $xr14, 1
	xvpickve.d	$xr14, $xr13, 2
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 2
	xvpickve.d	$xr14, $xr13, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 3
	xvpickve.d	$xr14, $xr12, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 4
	xvpickve.d	$xr14, $xr12, 1
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 5
	xvpickve.d	$xr14, $xr12, 2
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 6
	xvpickve.d	$xr14, $xr12, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 7
	add.d	$t3, $s4, $s8
	ori	$a5, $t0, 4068
	xvstx	$xr15, $t3, $a5
	lu52i.d	$a6, $zero, -1175
	xvreplgr2vr.d	$xr14, $a6
	xvfcmp.clt.d	$xr15, $xr13, $xr14
	xvpickve2gr.d	$a6, $xr15, 0
	xvinsgr2vr.w	$xr16, $a6, 0
	xvpickve2gr.d	$a6, $xr15, 1
	xvinsgr2vr.w	$xr16, $a6, 1
	xvpickve2gr.d	$a6, $xr15, 2
	xvinsgr2vr.w	$xr16, $a6, 2
	xvpickve2gr.d	$a6, $xr15, 3
	xvinsgr2vr.w	$xr16, $a6, 3
	xvfcmp.clt.d	$xr14, $xr12, $xr14
	xvpickve2gr.d	$a6, $xr14, 0
	xvinsgr2vr.w	$xr16, $a6, 4
	xvpickve2gr.d	$a6, $xr14, 1
	xvinsgr2vr.w	$xr16, $a6, 5
	xvpickve2gr.d	$a6, $xr14, 2
	xvinsgr2vr.w	$xr16, $a6, 6
	xvpickve2gr.d	$a6, $xr14, 3
	xvinsgr2vr.w	$xr16, $a6, 7
	xvreplgr2vr.d	$xr14, $s1
	xvfcmp.clt.d	$xr13, $xr14, $xr13
	xvpickve2gr.d	$a6, $xr13, 0
	xvinsgr2vr.w	$xr15, $a6, 0
	xvpickve2gr.d	$a6, $xr13, 1
	xvinsgr2vr.w	$xr15, $a6, 1
	xvpickve2gr.d	$a6, $xr13, 2
	xvinsgr2vr.w	$xr15, $a6, 2
	xvpickve2gr.d	$a6, $xr13, 3
	xvinsgr2vr.w	$xr15, $a6, 3
	xvfcmp.clt.d	$xr12, $xr14, $xr12
	xvpickve2gr.d	$a6, $xr12, 0
	xvinsgr2vr.w	$xr15, $a6, 4
	xvpickve2gr.d	$a6, $xr12, 1
	xvinsgr2vr.w	$xr15, $a6, 5
	xvpickve2gr.d	$a6, $xr12, 2
	xvinsgr2vr.w	$xr15, $a6, 6
	xvpickve2gr.d	$a6, $xr12, 3
	xvinsgr2vr.w	$xr15, $a6, 7
	xvor.v	$xr14, $xr15, $xr16
	xvpickve2gr.w	$a6, $xr14, 0
	xvrepli.b	$xr12, 0
	xvldi	$xr13, -1424
	andi	$a7, $a6, 1
	xvbitsel.v	$xr12, $xr13, $xr12, $xr16
	beqz	$a7, .LBB0_29
# %bb.28:                               # %pred.store.if
                                        #   in Loop: Header=BB0_27 Depth=3
	add.d	$a5, $t3, $a5
	xvstelm.w	$xr12, $a5, 0, 0
.LBB0_29:                               # %pred.store.continue
                                        #   in Loop: Header=BB0_27 Depth=3
	vinsgr2vr.h	$vr13, $a6, 0
	xvpickve2gr.w	$a5, $xr14, 1
	vinsgr2vr.h	$vr13, $a5, 1
	xvpickve2gr.w	$a5, $xr14, 2
	vinsgr2vr.h	$vr13, $a5, 2
	xvpickve2gr.w	$a5, $xr14, 3
	vinsgr2vr.h	$vr13, $a5, 3
	xvpickve2gr.w	$a5, $xr14, 4
	vinsgr2vr.h	$vr13, $a5, 4
	xvpickve2gr.w	$a5, $xr14, 5
	vinsgr2vr.h	$vr13, $a5, 5
	xvpickve2gr.w	$a5, $xr14, 6
	vinsgr2vr.h	$vr13, $a5, 6
	xvpickve2gr.w	$a5, $xr14, 7
	vinsgr2vr.h	$vr13, $a5, 7
	vpickve2gr.h	$a5, $vr13, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB0_36
# %bb.30:                               # %pred.store.continue825
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a5, $vr13, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB0_37
.LBB0_31:                               # %pred.store.continue827
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a5, $vr13, 3
	andi	$a5, $a5, 1
	bnez	$a5, .LBB0_38
.LBB0_32:                               # %pred.store.continue829
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a5, $vr13, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB0_39
.LBB0_33:                               # %pred.store.continue831
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a5, $vr13, 5
	andi	$a5, $a5, 1
	bnez	$a5, .LBB0_40
.LBB0_34:                               # %pred.store.continue833
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a5, $vr13, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB0_41
.LBB0_35:                               # %pred.store.continue835
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a5, $vr13, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_26
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_36:                               # %pred.store.if824
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a5, $t0, 4072
	add.d	$a5, $t3, $a5
	xvstelm.w	$xr12, $a5, 0, 1
	vpickve2gr.h	$a5, $vr13, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_31
.LBB0_37:                               # %pred.store.if826
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a5, $t0, 4076
	add.d	$a5, $t3, $a5
	xvstelm.w	$xr12, $a5, 0, 2
	vpickve2gr.h	$a5, $vr13, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_32
.LBB0_38:                               # %pred.store.if828
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a5, $t0, 4080
	add.d	$a5, $t3, $a5
	xvstelm.w	$xr12, $a5, 0, 3
	vpickve2gr.h	$a5, $vr13, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_33
.LBB0_39:                               # %pred.store.if830
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a5, $t0, 4084
	add.d	$a5, $t3, $a5
	xvstelm.w	$xr12, $a5, 0, 4
	vpickve2gr.h	$a5, $vr13, 5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_34
.LBB0_40:                               # %pred.store.if832
                                        #   in Loop: Header=BB0_27 Depth=3
	add.d	$a5, $t3, $a1
	xvstelm.w	$xr12, $a5, 0, 5
	vpickve2gr.h	$a5, $vr13, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_35
.LBB0_41:                               # %pred.store.if834
                                        #   in Loop: Header=BB0_27 Depth=3
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	add.d	$a5, $t3, $a5
	xvstelm.w	$xr12, $a5, 0, 6
	vpickve2gr.h	$a5, $vr13, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_26
.LBB0_42:                               # %pred.store.if836
                                        #   in Loop: Header=BB0_27 Depth=3
	lu12i.w	$a5, 2
	add.d	$a5, $t3, $a5
	xvstelm.w	$xr12, $a5, 0, 7
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_43:                               #   in Loop: Header=BB0_24 Depth=2
	ori	$a5, $zero, 1017
.LBB0_44:                               # %scalar.ph810.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	move	$a2, $s1
	slli.d	$t3, $a5, 2
	ori	$s8, $zero, 4092
	move	$a6, $a3
	move	$s5, $t1
	move	$a5, $s6
	move	$s3, $s2
	move	$s1, $t5
	move	$a7, $a4
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_45:                               #   in Loop: Header=BB0_48 Depth=3
	movgr2fr.w	$ft4, $zero
.LBB0_46:                               # %.sink.split669
                                        #   in Loop: Header=BB0_48 Depth=3
	fstx.s	$ft4, $a7, $t3
.LBB0_47:                               #   in Loop: Header=BB0_48 Depth=3
	addi.d	$s8, $s8, -4
	addi.d	$a7, $a7, 4
	addi.d	$s1, $s1, 4
	addi.d	$s3, $s3, 4
	addi.d	$a5, $a5, 4
	addi.d	$s5, $s5, 4
	addi.d	$a6, $a6, 4
	beq	$t3, $s8, .LBB0_23
.LBB0_48:                               # %scalar.ph810
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$ra, $a5, $t3
	fldx.s	$ft4, $a5, $t3
	fldx.s	$ft5, $ra, $t2
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $s3, $t3
	fldx.s	$ft5, $ra, $t0
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $s5, $t3
	fld.s	$ft5, $ra, -4
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $a6, $t3
	fld.s	$ft5, $ra, 4
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $s1, $t3
	fldx.s	$ft6, $s3, $t3
	fldx.s	$ft7, $s5, $t3
	fldx.s	$ft8, $a6, $t3
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
	fstx.s	$ft5, $a7, $t3
	bcnez	$fcc0, .LBB0_45
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=3
	fld.d	$ft5, $s7, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft4, $ft5
	bcnez	$fcc0, .LBB0_47
# %bb.50:                               #   in Loop: Header=BB0_48 Depth=3
	vldi	$vr12, -1168
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_51:                               # %vector.memcheck698
                                        #   in Loop: Header=BB0_1 Depth=1
	xvldi	$xr6, -960
	ld.d	$t7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_53:                               # %vector.body726.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $t2, 32
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ori	$a4, $zero, 4068
	.p2align	4, , 16
.LBB0_54:                               # %vector.body726
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a3, $a0
	xvldx	$xr7, $a1, $t4
	xvldx	$xr8, $a1, $a4
	add.d	$a1, $t7, $a0
	xvldx	$xr9, $a1, $t4
	add.d	$a1, $t8, $a0
	xvldx	$xr10, $a1, $t4
	add.d	$a1, $fp, $a0
	xvldx	$xr11, $a1, $t4
	xvfmul.s	$xr9, $xr7, $xr9
	xvfmul.s	$xr10, $xr7, $xr10
	xvfadd.s	$xr9, $xr9, $xr10
	xvfmul.s	$xr7, $xr7, $xr11
	add.d	$a1, $s0, $a0
	xvldx	$xr10, $a1, $t4
	add.d	$a1, $s7, $a0
	xvldx	$xr11, $a1, $t4
	xvfadd.s	$xr7, $xr9, $xr7
	xvfmul.s	$xr8, $xr8, $xr10
	xvfadd.s	$xr8, $xr7, $xr8
	vreplvei.w	$vr7, $vr11, 1
	fcvt.d.s	$ft1, $fa7
	vreplvei.w	$vr7, $vr11, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr9, 1
	vreplvei.w	$vr9, $vr11, 2
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr7, $xr9, 2
	vreplvei.w	$vr9, $vr11, 3
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr7, $xr9, 3
	xvpermi.q	$xr10, $xr11, 1
	vreplvei.w	$vr9, $vr10, 1
	fcvt.d.s	$ft3, $ft1
	vreplvei.w	$vr9, $vr10, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr9, $xr11, 2
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr9, $xr10, 3
	xvpermi.q	$xr10, $xr8, 1
	vreplvei.w	$vr11, $vr10, 1
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr12, $vr10, 0
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr12, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr12, $xr11, 2
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr12, $xr10, 3
	vreplvei.w	$vr10, $vr8, 1
	fcvt.d.s	$ft2, $ft2
	vreplvei.w	$vr11, $vr8, 0
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr11, $xr10, 1
	vreplvei.w	$vr10, $vr8, 2
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr11, $xr10, 2
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr11, $xr8, 3
	xvfmul.d	$xr8, $xr11, $xr6
	xvfmul.d	$xr10, $xr12, $xr6
	xvfadd.d	$xr9, $xr10, $xr9
	xvfadd.d	$xr7, $xr8, $xr7
	xvpickve.d	$xr8, $xr7, 1
	fcvt.s.d	$ft0, $ft0
	xvpickve.d	$xr10, $xr7, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr10, $xr8, 1
	xvpickve.d	$xr8, $xr7, 2
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr10, $xr8, 2
	xvpickve.d	$xr7, $xr7, 3
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 3
	xvpickve.d	$xr7, $xr9, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 4
	xvpickve.d	$xr7, $xr9, 1
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 5
	xvpickve.d	$xr7, $xr9, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 6
	xvpickve.d	$xr7, $xr9, 3
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 7
	addi.d	$a0, $a0, 32
	xvstx	$xr10, $a1, $t4
	bnez	$a0, .LBB0_54
# %bb.55:                               #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 1016
.LBB0_56:                               # %.preheader623.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	slli.d	$a0, $a1, 2
	addi.d	$a1, $a1, -1023
	move	$t6, $s7
	move	$a3, $s0
	move	$a4, $fp
	move	$t5, $t8
	move	$t3, $t7
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_57:                               # %.preheader623
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a7, $a0
	fld.s	$fa7, $t1, -4
	fldx.s	$ft0, $t3, $a0
	fldx.s	$ft1, $t5, $a0
	fldx.s	$ft2, $a7, $a0
	fmul.s	$ft0, $fa7, $ft0
	fldx.s	$ft3, $a4, $a0
	fmul.s	$ft1, $fa7, $ft1
	fadd.s	$ft0, $ft0, $ft1
	fldx.s	$ft1, $a3, $a0
	fmul.s	$fa7, $fa7, $ft3
	fldx.s	$ft3, $t6, $a0
	fadd.s	$fa7, $ft0, $fa7
	fmul.s	$ft0, $ft2, $ft1
	fadd.s	$fa7, $fa7, $ft0
	fcvt.d.s	$ft0, $ft3
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $t6, $a0
	addi.d	$a7, $a7, 4
	addi.d	$t3, $t3, 4
	addi.d	$t5, $t5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 1
	addi.d	$t6, $t6, 4
	bnez	$a1, .LBB0_57
# %bb.58:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	fld.s	$fa7, $a0, 0
	ori	$a1, $zero, 4092
	fldx.s	$ft0, $t7, $a1
	fldx.s	$ft1, $t8, $a1
	move	$a0, $zero
	fmul.s	$ft0, $fa7, $ft0
	fldx.s	$ft2, $fp, $a1
	fmul.s	$ft1, $fa7, $ft1
	fadd.s	$ft0, $ft0, $ft1
	fldx.s	$ft1, $s0, $a1
	fmul.s	$ft2, $fa7, $ft2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	fldx.s	$ft3, $a1, $a3
	fadd.s	$ft0, $ft0, $ft2
	fmul.s	$fa7, $fa7, $ft1
	fadd.s	$fa7, $ft0, $fa7
	fcvt.d.s	$ft0, $ft3
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $a1, $a3
	move	$a1, $a6
	move	$s5, $s8
	move	$a4, $s6
	move	$s3, $ra
	move	$s2, $s4
	move	$a7, $a5
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_59:                               # %.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_62 Depth 3
                                        #       Child Loop BB0_65 Depth 3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	beqz	$a3, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=2
	move	$t1, $zero
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_61:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	ori	$t7, $t2, 32
	.p2align	4, , 16
.LBB0_62:                               # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a3, $t6, $t7
	xvld	$xr7, $a3, -32
	xvldx	$xr8, $a3, $t4
	xvld	$xr9, $a3, -28
	add.d	$a3, $s5, $t7
	xvldx	$xr10, $a3, $t4
	add.d	$a3, $a4, $t7
	xvldx	$xr11, $a3, $t4
	add.d	$a3, $s3, $t7
	xvldx	$xr12, $a3, $t4
	xvfmul.s	$xr10, $xr7, $xr10
	xvfmul.s	$xr8, $xr8, $xr11
	xvfadd.s	$xr8, $xr10, $xr8
	xvfmul.s	$xr7, $xr7, $xr12
	add.d	$a3, $s2, $t7
	xvldx	$xr10, $a3, $t4
	add.d	$t8, $a7, $t7
	xvldx	$xr11, $t8, $t4
	xvfadd.s	$xr7, $xr8, $xr7
	xvfmul.s	$xr8, $xr9, $xr10
	xvfadd.s	$xr8, $xr7, $xr8
	vreplvei.w	$vr7, $vr11, 1
	fcvt.d.s	$ft1, $fa7
	vreplvei.w	$vr7, $vr11, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr9, 1
	vreplvei.w	$vr9, $vr11, 2
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr7, $xr9, 2
	vreplvei.w	$vr9, $vr11, 3
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr7, $xr9, 3
	xvpermi.q	$xr10, $xr11, 1
	vreplvei.w	$vr9, $vr10, 1
	fcvt.d.s	$ft3, $ft1
	vreplvei.w	$vr9, $vr10, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr9, $xr11, 2
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr9, $xr10, 3
	xvpermi.q	$xr10, $xr8, 1
	vreplvei.w	$vr11, $vr10, 1
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr12, $vr10, 0
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr12, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr12, $xr11, 2
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr12, $xr10, 3
	vreplvei.w	$vr10, $vr8, 1
	fcvt.d.s	$ft2, $ft2
	vreplvei.w	$vr11, $vr8, 0
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr11, $xr10, 1
	vreplvei.w	$vr10, $vr8, 2
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr11, $xr10, 2
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr11, $xr8, 3
	xvfmul.d	$xr8, $xr11, $xr6
	xvfmul.d	$xr10, $xr12, $xr6
	xvfadd.d	$xr9, $xr10, $xr9
	xvfadd.d	$xr7, $xr8, $xr7
	xvpickve.d	$xr8, $xr7, 1
	fcvt.s.d	$ft0, $ft0
	xvpickve.d	$xr10, $xr7, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr10, $xr8, 1
	xvpickve.d	$xr8, $xr7, 2
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr10, $xr8, 2
	xvpickve.d	$xr7, $xr7, 3
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 3
	xvpickve.d	$xr7, $xr9, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 4
	xvpickve.d	$xr7, $xr9, 1
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 5
	xvpickve.d	$xr7, $xr9, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 6
	xvpickve.d	$xr7, $xr9, 3
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 7
	addi.d	$t7, $t7, 32
	xvstx	$xr10, $t8, $t4
	bnez	$t7, .LBB0_62
# %bb.63:                               #   in Loop: Header=BB0_59 Depth=2
	ori	$t1, $zero, 1016
.LBB0_64:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	slli.d	$a3, $t1, 2
	addi.d	$t1, $t1, -1023
	move	$t3, $a7
	move	$t5, $s2
	move	$t7, $s3
	move	$t8, $a4
	move	$fp, $s5
	move	$s0, $a1
	.p2align	4, , 16
.LBB0_65:                               # %scalar.ph
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s1, $s0, $a3
	fldx.s	$fa7, $s1, $t0
	fldx.s	$ft0, $t8, $a3
	fldx.s	$ft1, $s0, $a3
	fldx.s	$ft2, $fp, $a3
	fld.s	$ft3, $s1, 4
	fmul.s	$fa7, $fa7, $ft0
	fldx.s	$ft0, $t7, $a3
	fmul.s	$ft2, $ft1, $ft2
	fadd.s	$fa7, $ft2, $fa7
	fldx.s	$ft2, $t5, $a3
	fmul.s	$ft0, $ft1, $ft0
	fldx.s	$ft1, $t3, $a3
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $ft2
	fadd.s	$fa7, $fa7, $ft0
	fcvt.d.s	$ft0, $ft1
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $t3, $a3
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 4
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t7, 4
	addi.d	$t5, $t5, 4
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 4
	bnez	$t1, .LBB0_65
# %bb.66:                               #   in Loop: Header=BB0_59 Depth=2
	addi.d	$a0, $a0, 1
	add.d	$t6, $t6, $t0
	add.d	$a7, $a7, $t0
	add.d	$s2, $s2, $t0
	add.d	$s3, $s3, $t0
	add.d	$a4, $a4, $t0
	add.d	$s5, $s5, $t0
	add.d	$a1, $a1, $t0
	ori	$a3, $zero, 2047
	bne	$a0, $a3, .LBB0_59
# %bb.67:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$s0, $s0, 1
	move	$s1, $a2
	ori	$a2, $zero, 512
	ori	$t5, $zero, 128
	ori	$t6, $zero, 4092
	ori	$a0, $zero, 10
	ori	$s3, $zero, 4060
	lu52i.d	$s5, $zero, -1029
	bne	$s0, $a0, .LBB0_1
# %bb.68:
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end0:
	.size	srad_kernel, .Lfunc_end0-srad_kernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
