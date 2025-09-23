	.file	"hotspotKernel.c"
	.text
	.globl	hotspotKernel                   # -- Begin function hotspotKernel
	.p2align	5
	.type	hotspotKernel,@function
hotspotKernel:                          # @hotspotKernel
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
                                        # kill: def $f5_64 killed $f5_64 def $xr5
                                        # kill: def $f3_64 killed $f3_64 def $xr3
                                        # kill: def $f2_64 killed $f2_64 def $xr2
                                        # kill: def $f1_64 killed $f1_64 def $xr1
	move	$s3, $a2
	move	$s2, $zero
	lu12i.w	$s4, 511
	add.d	$s1, $a0, $s4
	lu12i.w	$t4, 510
	add.d	$a2, $a1, $t4
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	add.d	$fp, $s3, $s4
	fdiv.d	$fa0, $fa4, $fa0
	sub.d	$t1, $a1, $a0
	lu12i.w	$t2, 1
	add.d	$a2, $a0, $t2
	add.d	$a3, $s3, $t2
	addu16i.d	$a4, $a1, 32
	addi.d	$a5, $a0, 8
	addu16i.d	$a6, $a0, 32
	addi.d	$a6, $a6, -8
	addi.d	$a7, $s3, 8
	addu16i.d	$t0, $s3, 32
	addi.d	$t0, $t0, -8
	ori	$t3, $t2, 8
	add.d	$s0, $a0, $t3
	ori	$t4, $t4, 4088
	add.d	$t5, $a0, $t4
	add.d	$t8, $s3, $t3
	add.d	$t4, $s3, $t4
	addi.d	$t6, $a1, 8
	addi.d	$t7, $a4, -8
	sltu	$t4, $s0, $t4
	st.d	$t8, $sp, 72                    # 8-byte Folded Spill
	sltu	$t8, $t8, $t5
	and	$t4, $t4, $t8
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	sltu	$t7, $s0, $t7
	sltu	$t5, $t6, $t5
	and	$t5, $t7, $t5
	or	$t6, $t4, $t5
	xvreplve0.d	$xr4, $xr2
	xvreplve0.d	$xr6, $xr1
	xvreplve0.d	$xr7, $xr5
	xvreplve0.d	$xr8, $xr3
	xvreplve0.d	$xr9, $xr0
	sltu	$t0, $a5, $t0
	sltu	$a7, $a7, $a6
	and	$a7, $t0, $a7
	sltu	$a5, $a5, $a4
	sltu	$a6, $a1, $a6
	and	$a5, $a5, $a6
	or	$a5, $a7, $a5
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	sltu	$a5, $a2, $fp
	sltu	$a3, $a3, $s1
	and	$a3, $a5, $a3
	sltu	$a2, $a2, $a4
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	sltu	$a4, $a1, $s1
	and	$a2, $a2, $a4
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	add.d	$a2, $a1, $t3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a2, $a1, -8
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$s1, 2
	ori	$a2, $s1, 4088
	add.d	$a3, $a0, $a2
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a2, 3
	add.d	$a2, $a1, $a2
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	vldi	$vr10, -896
	ori	$s6, $zero, 4088
	ori	$s7, $zero, 511
	ori	$s8, $zero, 4080
	lu52i.d	$a2, $zero, -1024
	xvreplgr2vr.d	$xr11, $a2
	lu12i.w	$ra, -1
	lu12i.w	$s5, -3
	lu12i.w	$t7, -2
	lu12i.w	$t8, 4
	ori	$t5, $zero, 4064
	ori	$fp, $zero, 4072
	ori	$s0, $zero, 4056
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$s2, $s2, 1
	ori	$a2, $zero, 200
	beq	$s2, $a2, .LBB0_27
.LBB0_2:                                # %.preheader224
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_8 Depth 3
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	move	$a3, $zero
	ori	$a4, $zero, 1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_3:                                # %.preheader221
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	ori	$t0, $zero, 1
	bnez	$t6, .LBB0_7
# %bb.4:                                # %vector.body338.preheader
                                        #   in Loop: Header=BB0_3 Depth=2
	ori	$a2, $ra, 32
	.p2align	4, , 16
.LBB0_5:                                # %vector.body338
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t0, $a5, $a2
	ori	$t4, $t2, 4064
	xvldx	$xr12, $t0, $t4
	xvld	$xr13, $t0, -32
	add.d	$t4, $a7, $a2
	xvldx	$xr14, $t4, $t5
	xvldx	$xr15, $t0, $t5
	xvfadd.d	$xr12, $xr12, $xr13
	xvldx	$xr13, $t0, $fp
	xvldx	$xr16, $t0, $s0
	xvfmadd.d	$xr12, $xr15, $xr11, $xr12
	xvfdiv.d	$xr12, $xr12, $xr4
	xvfadd.d	$xr12, $xr14, $xr12
	xvfadd.d	$xr13, $xr13, $xr16
	xvfmadd.d	$xr13, $xr15, $xr11, $xr13
	xvfdiv.d	$xr13, $xr13, $xr6
	xvfadd.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr13, $xr7, $xr15
	xvfdiv.d	$xr13, $xr13, $xr8
	xvfadd.d	$xr12, $xr13, $xr12
	xvfmul.d	$xr12, $xr9, $xr12
	xvfadd.d	$xr12, $xr15, $xr12
	add.d	$t0, $a6, $a2
	addi.d	$a2, $a2, 32
	xvstx	$xr12, $t0, $t5
	bnez	$a2, .LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=2
	ori	$t0, $zero, 509
.LBB0_7:                                # %scalar.ph326.preheader
                                        #   in Loop: Header=BB0_3 Depth=2
	alsl.d	$a2, $t0, $a3, 3
	addi.d	$t0, $t0, -511
	.p2align	4, , 16
.LBB0_8:                                # %scalar.ph326
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $a1, $a2
	fldx.d	$ft4, $t4, $s1
	fldx.d	$ft5, $a1, $a2
	add.d	$s2, $s3, $a2
	fldx.d	$ft6, $s2, $t2
	fldx.d	$ft7, $t4, $t2
	fadd.d	$ft4, $ft4, $ft5
	fldx.d	$ft5, $t4, $t3
	fldx.d	$ft8, $t4, $s6
	fmadd.d	$ft4, $ft7, $ft2, $ft4
	fdiv.d	$ft4, $ft4, $fa2
	fadd.d	$ft4, $ft6, $ft4
	fadd.d	$ft5, $ft5, $ft8
	fmadd.d	$ft5, $ft7, $ft2, $ft5
	fdiv.d	$ft5, $ft5, $fa1
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft7
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft7, $ft4
	add.d	$t4, $a0, $a2
	fstx.d	$ft4, $t4, $t2
	addi.d	$t0, $t0, 1
	addi.d	$a2, $a2, 8
	bnez	$t0, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
	addi.d	$a4, $a4, 1
	add.d	$a7, $a7, $t2
	add.d	$a6, $a6, $t2
	add.d	$a5, $a5, $t2
	add.d	$a3, $a3, $t2
	bne	$a4, $s7, .LBB0_3
# %bb.10:                               # %vector.memcheck272
                                        #   in Loop: Header=BB0_2 Depth=1
	fld.d	$ft4, $a1, 8
	fld.d	$ft5, $a1, 0
	fld.d	$ft6, $s3, 0
	fldx.d	$ft7, $a1, $t2
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft6, $ft4
	fsub.d	$ft6, $ft7, $ft5
	fdiv.d	$ft6, $ft6, $fa2
	fadd.d	$ft4, $ft4, $ft6
	fsub.d	$ft6, $fa5, $ft5
	fdiv.d	$ft6, $ft6, $fa3
	fadd.d	$ft4, $ft6, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft5, $ft4
	fst.d	$ft4, $a0, 0
	fldx.d	$ft4, $a1, $s8
	fldx.d	$ft5, $a1, $s6
	fldx.d	$ft6, $s3, $s6
	ori	$t4, $t2, 4088
	fldx.d	$ft7, $a1, $t4
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft6, $ft4
	fsub.d	$ft6, $ft7, $ft5
	fdiv.d	$ft6, $ft6, $fa2
	fadd.d	$ft4, $ft4, $ft6
	fsub.d	$ft6, $fa5, $ft5
	fdiv.d	$ft6, $ft6, $fa3
	fadd.d	$ft4, $ft6, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft5, $ft4
	fstx.d	$ft4, $a0, $s6
	ori	$t0, $t2, 4080
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	fldx.d	$ft4, $a2, $t0
	fldx.d	$ft5, $a2, $t4
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	fldx.d	$ft6, $a3, $s6
	fldx.d	$ft7, $a2, $s6
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft6, $ft4
	fsub.d	$ft6, $ft7, $ft5
	fdiv.d	$ft6, $ft6, $fa2
	fadd.d	$ft4, $ft4, $ft6
	fsub.d	$ft6, $fa5, $ft5
	fdiv.d	$ft6, $ft6, $fa3
	fadd.d	$ft4, $ft6, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft5, $ft4
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	fstx.d	$ft4, $a4, $s6
	fldx.d	$ft4, $a2, $t3
	fldx.d	$ft5, $a2, $t2
	fld.d	$ft6, $a3, 0
	fld.d	$ft7, $a2, 0
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft6, $ft4
	fsub.d	$ft6, $ft7, $ft5
	fdiv.d	$ft6, $ft6, $fa2
	fadd.d	$ft4, $ft4, $ft6
	fsub.d	$ft6, $fa5, $ft5
	fdiv.d	$ft6, $ft6, $fa3
	fadd.d	$ft4, $ft6, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft5, $ft4
	fst.d	$ft4, $a4, 0
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	bnez	$a3, .LBB0_14
# %bb.11:                               # %vector.body296.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a2, $zero, 508
	move	$a3, $s3
	move	$a4, $a0
	move	$a5, $a1
	lu12i.w	$s7, 510
	.p2align	4, , 16
.LBB0_12:                               # %vector.body296
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr12, $a5, 16
	xvld	$xr13, $a5, 0
	xvld	$xr14, $a5, 8
	xvld	$xr15, $a3, 8
	xvfadd.d	$xr12, $xr12, $xr13
	xvldx	$xr13, $a5, $t3
	xvfmadd.d	$xr12, $xr14, $xr11, $xr12
	xvfdiv.d	$xr12, $xr12, $xr6
	xvfadd.d	$xr12, $xr15, $xr12
	xvfsub.d	$xr13, $xr13, $xr14
	xvfdiv.d	$xr13, $xr13, $xr4
	xvfadd.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr13, $xr7, $xr14
	xvfdiv.d	$xr13, $xr13, $xr8
	xvfadd.d	$xr12, $xr13, $xr12
	xvfmul.d	$xr12, $xr9, $xr12
	xvfadd.d	$xr12, $xr14, $xr12
	xvst	$xr12, $a4, 8
	ori	$a6, $s7, 8
	add.d	$a7, $a5, $a6
	xvldx	$xr12, $a7, $t3
	xvldx	$xr13, $a7, $s6
	ori	$s2, $s4, 8
	xvldx	$xr14, $a7, $t2
	xvldx	$xr15, $a3, $s2
	xvfadd.d	$xr12, $xr12, $xr13
	xvldx	$xr13, $a5, $a6
	xvfmadd.d	$xr12, $xr14, $xr11, $xr12
	xvfdiv.d	$xr12, $xr12, $xr6
	xvfadd.d	$xr12, $xr15, $xr12
	xvfsub.d	$xr13, $xr13, $xr14
	xvfdiv.d	$xr13, $xr13, $xr4
	xvfadd.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr13, $xr7, $xr14
	xvfdiv.d	$xr13, $xr13, $xr8
	xvfadd.d	$xr12, $xr13, $xr12
	xvfmul.d	$xr12, $xr9, $xr12
	xvfadd.d	$xr12, $xr14, $xr12
	xvstx	$xr12, $a4, $s2
	addi.d	$a2, $a2, -4
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a2, .LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_2 Depth=1
	ori	$a2, $zero, 509
.LBB0_14:                               # %scalar.ph284.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	slli.d	$a3, $a2, 3
	ori	$a4, $zero, 4088
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	move	$s2, $a0
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB0_15:                               # %scalar.ph284
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s4, $s7, $a3
	fld.d	$ft4, $s4, 16
	fldx.d	$ft5, $s7, $a3
	fld.d	$ft6, $s4, 8
	fldx.d	$ft7, $a2, $a3
	fadd.d	$ft4, $ft4, $ft5
	fldx.d	$ft5, $s4, $t3
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft7, $ft4
	fsub.d	$ft5, $ft5, $ft6
	fdiv.d	$ft5, $ft5, $fa2
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft6
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft6, $ft4
	fstx.d	$ft4, $s2, $a3
	add.d	$s4, $a5, $a3
	fldx.d	$ft4, $s4, $t3
	fldx.d	$ft5, $s4, $s6
	fldx.d	$ft6, $s4, $t2
	fldx.d	$ft7, $a7, $a3
	fadd.d	$ft4, $ft4, $ft5
	fldx.d	$ft5, $a5, $a3
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft7, $ft4
	fsub.d	$ft5, $ft5, $ft6
	fdiv.d	$ft5, $ft5, $fa2
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft6
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft6, $ft4
	fstx.d	$ft4, $a6, $a3
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -8
	addi.d	$s7, $s7, 8
	addi.d	$s2, $s2, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB0_15
# %bb.16:                               # %vector.memcheck250
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bnez	$a2, .LBB0_20
# %bb.17:                               # %vector.body267.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a5, $zero, 508
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_18:                               # %vector.body267
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$ft4, $a7, $ra
	fld.d	$ft5, $a7, 0
	fldx.d	$ft6, $a7, $t2
	fldx.d	$ft7, $a7, $s1
	xvinsve0.d	$xr12, $xr13, 1
	xvinsve0.d	$xr12, $xr14, 2
	xvinsve0.d	$xr12, $xr15, 3
	fld.d	$ft5, $a3, -8
	ori	$a2, $s5, 4088
	fldx.d	$ft6, $a3, $a2
	ori	$a2, $t7, 4088
	fldx.d	$ft7, $a3, $a2
	fldx.d	$ft8, $a3, $s6
	fldx.d	$ft9, $a3, $t4
	fldx.d	$ft10, $a3, $s4
	xvinsve0.d	$xr14, $xr15, 1
	xvinsve0.d	$xr14, $xr13, 2
	xvinsve0.d	$xr15, $xr13, 1
	xvinsve0.d	$xr13, $xr16, 1
	xvinsve0.d	$xr13, $xr17, 2
	xvinsve0.d	$xr13, $xr18, 3
	xvinsve0.d	$xr14, $xr16, 3
	xvfadd.d	$xr13, $xr13, $xr14
	xvinsve0.d	$xr15, $xr16, 2
	xvinsve0.d	$xr15, $xr17, 3
	xvfmadd.d	$xr13, $xr15, $xr11, $xr13
	xvfdiv.d	$xr13, $xr13, $xr4
	ori	$a2, $t7, 4080
	fldx.d	$ft6, $a3, $a2
	fld.d	$ft8, $a3, -16
	fldx.d	$ft9, $a3, $s8
	fldx.d	$ft10, $a3, $t0
	xvfadd.d	$xr12, $xr12, $xr13
	xvinsve0.d	$xr14, $xr16, 1
	xvinsve0.d	$xr14, $xr17, 2
	xvinsve0.d	$xr14, $xr18, 3
	xvfsub.d	$xr13, $xr14, $xr15
	xvfdiv.d	$xr13, $xr13, $xr6
	xvfadd.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr13, $xr7, $xr15
	xvfdiv.d	$xr13, $xr13, $xr8
	xvfadd.d	$xr12, $xr13, $xr12
	xvfmul.d	$xr12, $xr9, $xr12
	xvfadd.d	$xr12, $xr15, $xr12
	ori	$a2, $t7, 8
	add.d	$a6, $a4, $a2
	fldx.d	$ft5, $a7, $a2
	ori	$s7, $ra, 8
	fldx.d	$ft6, $a7, $s7
	fld.d	$ft7, $a7, 8
	fldx.d	$ft8, $a7, $t3
	add.d	$s2, $a4, $s1
	xvinsve0.d	$xr13, $xr14, 1
	xvinsve0.d	$xr13, $xr15, 2
	xvinsve0.d	$xr13, $xr16, 3
	fldx.d	$ft6, $a3, $ra
	fldx.d	$ft7, $a3, $s5
	fldx.d	$ft8, $a3, $t7
	fld.d	$ft9, $a3, 0
	fldx.d	$ft10, $a3, $t2
	fldx.d	$ft11, $a3, $s1
	xvinsve0.d	$xr15, $xr16, 1
	xvinsve0.d	$xr15, $xr14, 2
	xvinsve0.d	$xr16, $xr14, 1
	xvinsve0.d	$xr14, $xr17, 1
	xvinsve0.d	$xr14, $xr18, 2
	xvinsve0.d	$xr14, $xr19, 3
	xvinsve0.d	$xr15, $xr17, 3
	xvfadd.d	$xr14, $xr14, $xr15
	xvinsve0.d	$xr16, $xr17, 2
	xvinsve0.d	$xr16, $xr18, 3
	xvfmadd.d	$xr14, $xr16, $xr11, $xr14
	xvfdiv.d	$xr14, $xr14, $xr4
	fldx.d	$ft7, $a3, $a2
	fldx.d	$ft9, $a3, $s7
	fld.d	$ft10, $a3, 8
	fldx.d	$ft11, $a3, $t3
	xvfadd.d	$xr13, $xr13, $xr14
	xvinsve0.d	$xr15, $xr17, 1
	xvinsve0.d	$xr15, $xr18, 2
	xvinsve0.d	$xr15, $xr19, 3
	xvfsub.d	$xr14, $xr15, $xr16
	xvfdiv.d	$xr14, $xr14, $xr6
	xvfadd.d	$xr13, $xr13, $xr14
	xvfsub.d	$xr14, $xr7, $xr16
	xvfdiv.d	$xr14, $xr14, $xr8
	xvfadd.d	$xr13, $xr14, $xr13
	xvfmul.d	$xr13, $xr9, $xr13
	xvfadd.d	$xr13, $xr16, $xr13
	xvpickve.d	$xr14, $xr13, 1
	xvpermi.d	$xr15, $xr12, 68
	xvpermi.d	$xr16, $xr12, 78
	xvstelm.d	$xr12, $s2, 0, 3
                                        # kill: def $vr12 killed $vr12 killed $xr12
	vextrins.d	$vr12, $vr14, 16
	vstx	$vr12, $a4, $ra
	xvpickve.d	$xr12, $xr13, 2
	xvrepl128vei.d	$xr14, $xr15, 1
	vextrins.d	$vr14, $vr12, 16
	vst	$vr14, $a4, 0
	xvpickve.d	$xr12, $xr13, 3
	xvrepl128vei.d	$xr14, $xr16, 0
	vextrins.d	$vr14, $vr12, 16
	vstx	$vr14, $a4, $t2
	xvstelm.d	$xr13, $a6, 0, 0
	addi.d	$a5, $a5, -4
	add.d	$a4, $a4, $t8
	add.d	$a7, $a7, $t8
	add.d	$a3, $a3, $t8
	bnez	$a5, .LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_2 Depth=1
	ori	$a3, $zero, 509
.LBB0_20:                               # %.preheader223.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a2, $a3, -511
	slli.d	$a4, $a3, 12
	add.d	$a3, $a0, $a4
	add.d	$a5, $a1, $a4
	add.d	$a4, $s3, $a4
	lu12i.w	$s4, 511
	.p2align	4, , 16
.LBB0_21:                               # %.preheader223
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$ft4, $a5, $t4
	fld.d	$ft5, $a5, -8
	fldx.d	$ft6, $a5, $s6
	fldx.d	$ft7, $a4, $s6
	fadd.d	$ft4, $ft4, $ft5
	fldx.d	$ft5, $a5, $s8
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	fdiv.d	$ft4, $ft4, $fa2
	fadd.d	$ft4, $ft7, $ft4
	fsub.d	$ft5, $ft5, $ft6
	fdiv.d	$ft5, $ft5, $fa1
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft6
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft6, $ft4
	fstx.d	$ft4, $a3, $s6
	fldx.d	$ft4, $a5, $t2
	fldx.d	$ft5, $a5, $ra
	fld.d	$ft6, $a5, 0
	fld.d	$ft7, $a4, 0
	fadd.d	$ft4, $ft4, $ft5
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	fld.d	$ft5, $a5, 8
	fdiv.d	$ft4, $ft4, $fa2
	fadd.d	$ft4, $ft7, $ft4
	add.d	$a5, $a5, $t2
	fsub.d	$ft5, $ft5, $ft6
	fdiv.d	$ft5, $ft5, $fa1
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft6
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft6, $ft4
	fst.d	$ft4, $a3, 0
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $t2
	add.d	$a4, $a4, $t2
	bnez	$a2, .LBB0_21
# %bb.22:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a2, $zero
	move	$a3, $a0
	move	$a4, $a1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ori	$s7, $zero, 511
	ori	$t0, $zero, 64
	ori	$t4, $zero, 512
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %middle.block
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a2, $a2, 1
	add.d	$a4, $a4, $t2
	add.d	$a3, $a3, $t2
	beq	$a2, $t4, .LBB0_1
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	move	$a5, $ra
	bgeu	$t1, $t0, .LBB0_26
	.p2align	4, , 16
.LBB0_25:                               # %scalar.ph
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a3, $a5
	fldx.d	$ft4, $a6, $t2
	add.d	$a6, $a4, $a5
	addi.d	$a5, $a5, 8
	fstx.d	$ft4, $a6, $t2
	bnez	$a5, .LBB0_25
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_26:                               # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a3, $a5
	xvldx	$xr12, $a6, $t2
	ori	$a7, $t2, 32
	xvldx	$xr13, $a6, $a7
	add.d	$a6, $a4, $a5
	xvstx	$xr12, $a6, $t2
	addi.d	$a5, $a5, 64
	xvstx	$xr13, $a6, $a7
	bnez	$a5, .LBB0_26
	b	.LBB0_23
.LBB0_27:
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
.Lfunc_end0:
	.size	hotspotKernel, .Lfunc_end0-hotspotKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
