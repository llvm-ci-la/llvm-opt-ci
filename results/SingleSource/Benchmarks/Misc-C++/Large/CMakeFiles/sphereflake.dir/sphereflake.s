	.file	"sphereflake.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0xc080040000000000              # double -512.5
	.dword	0xc080015555555555              # double -512.16666666666663
.LCPI0_1:
	.dword	0x0000000000000000              # double 0
	.dword	0xc07ffd5555555555              # double -511.83333333333331
.LCPI0_2:
	.dword	0xc080040000000000              # double -512.5
	.dword	0x0000000000000000              # double 0
.LCPI0_3:
	.dword	0xc080015555555555              # double -512.16666666666663
	.dword	0xc07ff80000000000              # double -511.5
.LCPI0_4:
	.dword	0x0000000000000000              # double 0
	.dword	0xc07ff80000000000              # double -511.5
.LCPI0_5:
	.dword	0xc07ffd5555555555              # double -511.83333333333331
	.dword	0x0000000000000000              # double 0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 168                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	ori	$s0, $zero, 2
	ori	$s1, $zero, 6
	bne	$a0, $s0, .LBB0_3
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	ori	$fp, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB0_6
# %bb.2:
	slt	$a1, $s0, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$s1, $a0, $a1
.LBB0_3:                                # %.lr.ph.preheader
	addi.d	$a0, $s1, 1
	ori	$a3, $zero, 9
	ori	$a1, $zero, 3
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	alsl.d	$a3, $a3, $a3, 3
	addi.w	$a0, $a0, -1
	addi.w	$a3, $a3, 9
	bltu	$a1, $a0, .LBB0_4
# %bb.5:                                # %._crit_edge.loopexit
	alsl.w	$a0, $a2, $a2, 3
	addi.w	$fp, $a0, 10
	b	.LBB0_7
.LBB0_6:
	ori	$s1, $zero, 2
.LBB0_7:                                # %._crit_edge
	ori	$a0, $zero, 72
	mulh.du	$a1, $fp, $a0
	sltu	$a1, $zero, $a1
	mul.d	$s2, $fp, $a0
	masknez	$a0, $s2, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	add.d	$s3, $a0, $s2
	st.d	$zero, $sp, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48
	addi.w	$a0, $zero, -99
	vldi	$vr1, -912
	vldi	$vr0, -907
	vldi	$vr2, -928
	lu12i.w	$a1, -519458
	ori	$a1, $a1, 2577
	lu32i.d	$a1, 104345
	lu52i.d	$a1, $a1, 983
	movgr2fr.d	$fs0, $a1
	.p2align	4, , 16
.LBB0_8:                                # %.preheader.i.i
                                        # =>This Inner Loop Header: Depth=1
	fmov.d	$fa3, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa3, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fsub.d	$fa3, $fa1, $fa3
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB0_10
# %bb.9:                                # %.preheader.i.i
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$a1, $a0
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB0_8
.LBB0_10:                               # %_ZNK3v_t4normEv.exit
	frecip.d	$fa0, $fa1
	vldi	$vr1, -944
	fmul.d	$fa1, $fa0, $fa1
	vldi	$vr2, -800
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa1, $sp, 16
	fst.d	$fa0, $sp, 24
	fst.d	$fa2, $sp, 32
	addi.d	$a3, $sp, 40
	addi.d	$a4, $sp, 16
	vldi	$vr0, -912
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL6createP6node_tii3v_tS1_d)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1024
	ori	$s4, $zero, 1024
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1024
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_1)
	vst	$vr0, $sp, 64
	vst	$vr1, $sp, 80
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_4)
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_5)
	vst	$vr0, $sp, 96
	vst	$vr1, $sp, 112
	vst	$vr2, $sp, 128
	vst	$vr3, $sp, 144
	ori	$a0, $zero, 0
	lu32i.d	$a0, -2048
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs1, $a0
	movgr2fr.d	$fs2, $zero
	pcalau12i	$a0, %pc_hi20(_ZL5light)
	addi.d	$s2, $a0, %pc_lo12(_ZL5light)
	addi.d	$s5, $sp, 64
	lu52i.d	$a0, $zero, 1033
	movgr2fr.d	$fs3, $a0
	lu52i.d	$s6, $zero, 2047
	movgr2fr.d	$fs4, $s6
	vldi	$vr23, -1006
	addi.w	$s7, $zero, -99
	vldi	$vr31, -928
	ori	$s8, $zero, 4
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	addi.w	$s4, $s4, -1
	vldi	$vr0, -784
	fadd.d	$fs1, $fs1, $fa0
	beqz	$s4, .LBB0_64
.LBB0_12:                               # %.preheader80.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #         Child Loop BB0_25 Depth 4
                                        #           Child Loop BB0_28 Depth 5
                                        #           Child Loop BB0_35 Depth 5
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_48 Depth 5
                                        #           Child Loop BB0_56 Depth 5
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ori	$s4, $zero, 1024
	fmov.d	$fs5, $fs2
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_13:                               # %.split.us.loopexit.i
                                        #   in Loop: Header=BB0_15 Depth=2
	lu52i.d	$a0, $zero, 1029
	movgr2fr.d	$fa0, $a0
	fmul.d	$fa0, $fa3, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
.LBB0_14:                               # %.split.us.i
                                        #   in Loop: Header=BB0_15 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	vldi	$vr0, -912
	fadd.d	$fs5, $fs5, $fa0
	vldi	$vr23, -1006
	vldi	$vr31, -928
	beqz	$s4, .LBB0_11
.LBB0_15:                               # %.preheader.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #         Child Loop BB0_25 Depth 4
                                        #           Child Loop BB0_28 Depth 5
                                        #           Child Loop BB0_35 Depth 5
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_48 Depth 5
                                        #           Child Loop BB0_56 Depth 5
	blez	$fp, .LBB0_63
# %bb.16:                               # %.preheader.split.us.i.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	fld.d	$fa0, $s2, 0
	fld.d	$fa1, $s2, 8
	fld.d	$fa2, $s2, 16
	move	$a0, $zero
	fneg.d	$fa4, $fa1
	fmov.d	$fa3, $fs2
	vldi	$vr30, -878
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=3
	movgr2fr.d	$ft4, $zero
.LBB0_18:                               # %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i
                                        #   in Loop: Header=BB0_19 Depth=3
	addi.d	$a0, $a0, 1
	fadd.d	$fa3, $fa3, $ft4
	beq	$a0, $s8, .LBB0_13
.LBB0_19:                               # %.preheader.split.us.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_21 Depth 4
                                        #         Child Loop BB0_25 Depth 4
                                        #           Child Loop BB0_28 Depth 5
                                        #           Child Loop BB0_35 Depth 5
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_48 Depth 5
                                        #           Child Loop BB0_56 Depth 5
	slli.d	$a1, $a0, 4
	alsl.d	$a1, $a0, $a1, 3
	add.d	$a2, $s5, $a1
	fldx.d	$fa5, $a1, $s5
	fld.d	$fa6, $a2, 8
	fld.d	$fa7, $a2, 16
	fadd.d	$fa5, $fs5, $fa5
	fadd.d	$fa6, $fs1, $fa6
	fadd.d	$fa7, $fa7, $fs3
	fmul.d	$ft0, $fa5, $fa5
	fmul.d	$ft1, $fa6, $fa6
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $fa7, $fa7
	fadd.d	$ft0, $ft0, $ft1
	fclass.d	$ft1, $ft0
	movfr2gr.d	$a1, $ft1
	andi	$a1, $a1, 64
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	fmov.d	$ft1, $fs4
	bnez	$a1, .LBB0_23
# %bb.20:                               # %.preheader.i.i.us.i.preheader
                                        #   in Loop: Header=BB0_19 Depth=3
	addi.w	$a1, $zero, -99
	vldi	$vr9, -912
	.p2align	4, , 16
.LBB0_21:                               # %.preheader.i.i.us.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fmov.d	$ft2, $ft1
	fdiv.d	$ft1, $ft0, $ft1
	fadd.d	$ft1, $ft2, $ft1
	fmul.d	$ft1, $ft1, $fs7
	fsub.d	$ft2, $ft1, $ft2
	fabs.d	$ft2, $ft2
	fcmp.cule.d	$fcc0, $ft2, $fs0
	bcnez	$fcc0, .LBB0_23
# %bb.22:                               # %.preheader.i.i.us.i
                                        #   in Loop: Header=BB0_21 Depth=4
	move	$a2, $a1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB0_21
	.p2align	4, , 16
.LBB0_23:                               # %_ZNK3v_t4normEv.exit.us.i
                                        #   in Loop: Header=BB0_19 Depth=3
	frecip.d	$ft0, $ft1
	fmul.d	$fa5, $fa5, $ft0
	fmul.d	$fa6, $fa6, $ft0
	fmul.d	$fa7, $fa7, $ft0
	fmov.d	$ft0, $fs2
	fmov.d	$ft3, $fs4
	fmov.d	$ft1, $fs2
	fmov.d	$ft2, $fs2
	fmov.d	$ft4, $fs4
	move	$a1, $s0
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %_ZNK8sphere_t9intersectERK5ray_t.exit28.thread.i.us.i
                                        #   in Loop: Header=BB0_25 Depth=4
	addi.d	$a1, $a1, 72
	bgeu	$a1, $s3, .LBB0_40
.LBB0_25:                               # %.lr.ph.i25.us.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_28 Depth 5
                                        #           Child Loop BB0_35 Depth 5
	fld.d	$ft5, $a1, 16
	fld.d	$ft6, $a1, 0
	fld.d	$ft7, $a1, 8
	fadd.d	$ft8, $ft5, $ft15
	fmul.d	$ft5, $fa5, $ft6
	fmul.d	$ft9, $fa6, $ft7
	fadd.d	$ft5, $ft5, $ft9
	fmul.d	$ft9, $fa7, $ft8
	fadd.d	$ft5, $ft5, $ft9
	fmul.d	$ft9, $ft5, $ft5
	fmul.d	$ft6, $ft6, $ft6
	fmul.d	$ft7, $ft7, $ft7
	fadd.d	$ft6, $ft6, $ft7
	fld.d	$ft7, $a1, 24
	fmul.d	$ft8, $ft8, $ft8
	fadd.d	$ft6, $ft6, $ft8
	fsub.d	$ft6, $ft9, $ft6
	fmul.d	$ft7, $ft7, $ft7
	fadd.d	$ft7, $ft7, $ft6
	fcmp.clt.d	$fcc0, $ft7, $fs2
	fmov.d	$ft6, $fs4
	bcnez	$fcc0, .LBB0_31
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=4
	fclass.d	$ft6, $ft7
	movfr2gr.d	$a2, $ft6
	andi	$a2, $a2, 64
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	movgr2fr.d	$ft6, $s6
	fmov.d	$ft8, $ft6
	bnez	$a2, .LBB0_30
# %bb.27:                               # %.preheader.i.i.i27.us.i.preheader
                                        #   in Loop: Header=BB0_25 Depth=4
	addi.w	$a2, $zero, -99
	vldi	$vr16, -912
	.p2align	4, , 16
.LBB0_28:                               # %.preheader.i.i.i27.us.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_25 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fmov.d	$ft9, $ft8
	fdiv.d	$ft8, $ft7, $ft8
	fadd.d	$ft8, $ft9, $ft8
	fmul.d	$ft8, $ft8, $fs7
	fsub.d	$ft9, $ft8, $ft9
	fabs.d	$ft9, $ft9
	fcmp.cule.d	$fcc0, $ft9, $fs0
	bcnez	$fcc0, .LBB0_30
# %bb.29:                               # %.preheader.i.i.i27.us.i
                                        #   in Loop: Header=BB0_28 Depth=5
	move	$a3, $a2
	addi.w	$a2, $a2, 1
	bnez	$a3, .LBB0_28
	.p2align	4, , 16
.LBB0_30:                               # %_ZL8LLVMsqrtd.exit.i.i32.us.i
                                        #   in Loop: Header=BB0_25 Depth=4
	fadd.d	$ft7, $ft5, $ft8
	fsub.d	$ft5, $ft5, $ft8
	movgr2fr.d	$ft8, $zero
	fcmp.clt.d	$fcc0, $ft8, $ft5
	fsel	$ft5, $ft7, $ft5, $fcc0
	fcmp.clt.d	$fcc0, $ft7, $ft8
	fsel	$ft6, $ft5, $ft6, $fcc0
.LBB0_31:                               # %_ZNK8sphere_t9intersectERK5ray_t.exit.i35.us.i
                                        #   in Loop: Header=BB0_25 Depth=4
	fcmp.cult.d	$fcc0, $ft6, $ft4
	bceqz	$fcc0, .LBB0_39
# %bb.32:                               #   in Loop: Header=BB0_25 Depth=4
	fld.d	$ft5, $a1, 48
	fld.d	$ft6, $a1, 32
	fld.d	$ft7, $a1, 40
	fadd.d	$ft9, $ft5, $ft15
	fmul.d	$ft8, $fa5, $ft6
	fmul.d	$ft10, $fa6, $ft7
	fadd.d	$ft8, $ft8, $ft10
	fmul.d	$ft10, $fa7, $ft9
	fadd.d	$ft10, $ft8, $ft10
	fmul.d	$ft11, $ft10, $ft10
	fmul.d	$ft8, $ft6, $ft6
	fmul.d	$ft12, $ft7, $ft7
	fadd.d	$ft12, $ft8, $ft12
	fld.d	$ft8, $a1, 56
	fmul.d	$ft9, $ft9, $ft9
	fadd.d	$ft9, $ft12, $ft9
	fsub.d	$ft9, $ft11, $ft9
	fmul.d	$ft11, $ft8, $ft8
	fadd.d	$ft12, $ft11, $ft9
	movgr2fr.d	$ft9, $zero
	fcmp.clt.d	$fcc0, $ft12, $ft9
	bcnez	$fcc0, .LBB0_24
# %bb.33:                               #   in Loop: Header=BB0_25 Depth=4
	fclass.d	$ft11, $ft12
	movfr2gr.d	$a2, $ft11
	andi	$a2, $a2, 64
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	movgr2fr.d	$ft11, $s6
	fmov.d	$ft13, $ft11
	bnez	$a2, .LBB0_37
# %bb.34:                               # %.preheader.i.i19.i.us.i.preheader
                                        #   in Loop: Header=BB0_25 Depth=4
	vldi	$vr21, -912
	move	$a2, $s7
	.p2align	4, , 16
.LBB0_35:                               # %.preheader.i.i19.i.us.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_25 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fmov.d	$ft14, $ft13
	fdiv.d	$ft13, $ft12, $ft13
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fs7
	fsub.d	$ft14, $ft13, $ft14
	fabs.d	$ft14, $ft14
	fcmp.cule.d	$fcc0, $ft14, $fs0
	bcnez	$fcc0, .LBB0_37
# %bb.36:                               # %.preheader.i.i19.i.us.i
                                        #   in Loop: Header=BB0_35 Depth=5
	move	$a3, $a2
	addi.w	$a2, $a2, 1
	bnez	$a3, .LBB0_35
	.p2align	4, , 16
.LBB0_37:                               # %_ZNK8sphere_t9intersectERK5ray_t.exit28.i.us.i
                                        #   in Loop: Header=BB0_25 Depth=4
	fadd.d	$ft12, $ft10, $ft13
	fsub.d	$ft10, $ft10, $ft13
	fcmp.clt.d	$fcc0, $ft9, $ft10
	fsel	$ft10, $ft12, $ft10, $fcc0
	fcmp.clt.d	$fcc0, $ft12, $ft9
	fsel	$ft10, $ft10, $ft11, $fcc0
	fcmp.cule.d	$fcc0, $ft4, $ft10
	bcnez	$fcc0, .LBB0_24
# %bb.38:                               #   in Loop: Header=BB0_25 Depth=4
	fmul.d	$ft0, $fa5, $ft10
	fmul.d	$ft1, $fa6, $ft10
	fmul.d	$ft2, $fa7, $ft10
	fadd.d	$ft0, $ft0, $ft9
	fadd.d	$ft1, $ft1, $ft9
	fadd.d	$ft2, $ft2, $fs6
	fsub.d	$ft0, $ft0, $ft6
	fsub.d	$ft1, $ft1, $ft7
	fsub.d	$ft3, $ft2, $ft5
	frecip.d	$ft4, $ft8
	fmul.d	$ft2, $ft4, $ft0
	fmul.d	$ft1, $ft4, $ft1
	fmul.d	$ft0, $ft4, $ft3
	fmov.d	$ft3, $ft10
	fmov.d	$ft4, $ft10
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_39:                               #   in Loop: Header=BB0_25 Depth=4
	ld.d	$a2, $a1, 64
	slli.d	$a3, $a2, 6
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a1, $a1, $a2
	bltu	$a1, $s3, .LBB0_25
.LBB0_40:                               # %_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i
                                        #   in Loop: Header=BB0_19 Depth=3
	fclass.d	$ft4, $ft3
	movfr2gr.d	$a1, $ft4
	andi	$a1, $a1, 64
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_17
# %bb.41:                               #   in Loop: Header=BB0_19 Depth=3
	fmul.d	$ft4, $fa0, $ft2
	fmul.d	$ft5, $fa1, $ft1
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft5, $fa2, $ft0
	fadd.d	$ft5, $ft5, $ft4
	movgr2fr.d	$ft4, $zero
	fcmp.cle.d	$fcc0, $ft4, $ft5
	bcnez	$fcc0, .LBB0_18
# %bb.42:                               #   in Loop: Header=BB0_19 Depth=3
	fneg.d	$ft4, $ft5
	fmul.d	$ft5, $fa5, $ft3
	fmul.d	$fa6, $fa6, $ft3
	fmul.d	$fa7, $fa7, $ft3
	movgr2fr.d	$fa5, $zero
	fadd.d	$ft3, $ft5, $fa5
	fadd.d	$ft5, $fa6, $fa5
	fadd.d	$ft6, $fa7, $fs6
	fmul.d	$fa6, $ft2, $fs0
	fmul.d	$fa7, $ft1, $fs0
	fmul.d	$ft0, $ft0, $fs0
	fadd.d	$fa6, $ft3, $fa6
	fadd.d	$fa7, $ft5, $fa7
	fadd.d	$ft0, $ft0, $ft6
	move	$a1, $s0
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_43:                               # %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i
                                        #   in Loop: Header=BB0_44 Depth=4
	ld.d	$a2, $a1, 64
	slli.d	$a3, $a2, 6
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a1, $a1, $a2
	bgeu	$a1, $s3, .LBB0_61
.LBB0_44:                               # %.lr.ph.i.us.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_48 Depth 5
                                        #           Child Loop BB0_56 Depth 5
	fld.d	$ft1, $a1, 0
	fld.d	$ft2, $a1, 8
	fld.d	$ft3, $a1, 16
	fsub.d	$ft5, $ft1, $fa6
	fsub.d	$ft2, $ft2, $fa7
	fsub.d	$ft3, $ft3, $ft0
	fmul.d	$ft1, $ft2, $fa4
	fmul.d	$ft6, $fa0, $ft5
	fsub.d	$ft1, $ft1, $ft6
	fmul.d	$ft6, $fa2, $ft3
	fsub.d	$ft1, $ft1, $ft6
	fmul.d	$ft6, $ft1, $ft1
	fmul.d	$ft5, $ft5, $ft5
	fmul.d	$ft2, $ft2, $ft2
	fadd.d	$ft2, $ft5, $ft2
	fld.d	$ft5, $a1, 24
	fmul.d	$ft3, $ft3, $ft3
	fadd.d	$ft2, $ft2, $ft3
	fsub.d	$ft2, $ft6, $ft2
	fmul.d	$ft3, $ft5, $ft5
	fadd.d	$ft2, $ft3, $ft2
	fcmp.clt.d	$fcc0, $ft2, $fa5
	bcnez	$fcc0, .LBB0_43
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=4
	fclass.d	$ft3, $ft2
	movfr2gr.d	$a2, $ft3
	andi	$a2, $a2, 64
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_44 Depth=4
	movgr2fr.d	$ft3, $s6
	b	.LBB0_50
.LBB0_47:                               # %.preheader.i.i.i.us.i.preheader
                                        #   in Loop: Header=BB0_44 Depth=4
	addi.w	$a2, $zero, -99
	vldi	$vr11, -912
	.p2align	4, , 16
.LBB0_48:                               # %.preheader.i.i.i.us.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_44 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fmov.d	$ft5, $ft3
	fdiv.d	$ft3, $ft2, $ft3
	fadd.d	$ft3, $ft5, $ft3
	fmul.d	$ft3, $ft3, $fs7
	fsub.d	$ft5, $ft3, $ft5
	fabs.d	$ft5, $ft5
	fcmp.cule.d	$fcc0, $ft5, $fs0
	bcnez	$fcc0, .LBB0_50
# %bb.49:                               # %.preheader.i.i.i.us.i
                                        #   in Loop: Header=BB0_48 Depth=5
	move	$a3, $a2
	addi.w	$a2, $a2, 1
	bnez	$a3, .LBB0_48
	.p2align	4, , 16
.LBB0_50:                               # %_ZL8LLVMsqrtd.exit.i.i.us.i
                                        #   in Loop: Header=BB0_44 Depth=4
	fadd.d	$ft2, $ft1, $ft3
	fcmp.clt.d	$fcc0, $ft2, $fa5
	bcnez	$fcc0, .LBB0_43
# %bb.51:                               # %_ZL8LLVMsqrtd.exit.i.i.us.i
                                        #   in Loop: Header=BB0_44 Depth=4
	fsub.d	$ft1, $ft1, $ft3
	fcmp.clt.d	$fcc0, $fa5, $ft1
	fsel	$ft1, $ft2, $ft1, $fcc0
	fclass.d	$ft1, $ft1
	movfr2gr.d	$a2, $ft1
	andi	$a2, $a2, 64
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_43
# %bb.52:                               #   in Loop: Header=BB0_44 Depth=4
	fld.d	$ft1, $a1, 32
	fld.d	$ft2, $a1, 40
	fld.d	$ft3, $a1, 48
	fsub.d	$ft5, $ft1, $fa6
	fsub.d	$ft2, $ft2, $fa7
	fsub.d	$ft3, $ft3, $ft0
	fmul.d	$ft1, $ft2, $fa4
	fmul.d	$ft6, $fa0, $ft5
	fsub.d	$ft1, $ft1, $ft6
	fmul.d	$ft6, $fa2, $ft3
	fsub.d	$ft1, $ft1, $ft6
	fmul.d	$ft6, $ft1, $ft1
	fmul.d	$ft5, $ft5, $ft5
	fmul.d	$ft2, $ft2, $ft2
	fadd.d	$ft2, $ft5, $ft2
	fld.d	$ft5, $a1, 56
	fmul.d	$ft3, $ft3, $ft3
	fadd.d	$ft2, $ft2, $ft3
	fsub.d	$ft2, $ft6, $ft2
	fmul.d	$ft3, $ft5, $ft5
	fadd.d	$ft2, $ft3, $ft2
	fcmp.clt.d	$fcc0, $ft2, $fa5
	bcnez	$fcc0, .LBB0_60
# %bb.53:                               #   in Loop: Header=BB0_44 Depth=4
	fclass.d	$ft3, $ft2
	movfr2gr.d	$a2, $ft3
	andi	$a2, $a2, 64
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_44 Depth=4
	movgr2fr.d	$ft3, $s6
	b	.LBB0_58
.LBB0_55:                               # %.preheader.i.i15.i.us.i.preheader
                                        #   in Loop: Header=BB0_44 Depth=4
	vldi	$vr11, -912
	move	$a2, $s7
	.p2align	4, , 16
.LBB0_56:                               # %.preheader.i.i15.i.us.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_44 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fmov.d	$ft5, $ft3
	fdiv.d	$ft3, $ft2, $ft3
	fadd.d	$ft3, $ft5, $ft3
	fmul.d	$ft3, $ft3, $fs7
	fsub.d	$ft5, $ft3, $ft5
	fabs.d	$ft5, $ft5
	fcmp.cule.d	$fcc0, $ft5, $fs0
	bcnez	$fcc0, .LBB0_58
# %bb.57:                               # %.preheader.i.i15.i.us.i
                                        #   in Loop: Header=BB0_56 Depth=5
	move	$a3, $a2
	addi.w	$a2, $a2, 1
	bnez	$a3, .LBB0_56
.LBB0_58:                               # %_ZL8LLVMsqrtd.exit.i20.i.us.i
                                        #   in Loop: Header=BB0_44 Depth=4
	fadd.d	$ft2, $ft1, $ft3
	fcmp.clt.d	$fcc0, $ft2, $fa5
	bcnez	$fcc0, .LBB0_60
# %bb.59:                               # %_ZL8LLVMsqrtd.exit.i20.i.us.i
                                        #   in Loop: Header=BB0_44 Depth=4
	fsub.d	$ft1, $ft1, $ft3
	fcmp.clt.d	$fcc0, $fa5, $ft1
	fsel	$ft1, $ft2, $ft1, $fcc0
	movgr2fr.d	$ft2, $s6
	fcmp.cne.d	$fcc0, $ft1, $ft2
	bcnez	$fcc0, .LBB0_62
.LBB0_60:                               # %.thread.i.us.i
                                        #   in Loop: Header=BB0_44 Depth=4
	addi.d	$a1, $a1, 72
	bltu	$a1, $s3, .LBB0_44
.LBB0_61:                               #   in Loop: Header=BB0_19 Depth=3
	movgr2fr.d	$ft1, $s6
.LBB0_62:                               # %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i
                                        #   in Loop: Header=BB0_19 Depth=3
	fclass.d	$fa6, $ft1
	movfr2gr.d	$a1, $fa6
	andi	$a1, $a1, 64
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	movgr2cf	$fcc0, $a1
	fsel	$ft4, $fa5, $ft4, $fcc0
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_63:                               #   in Loop: Header=BB0_15 Depth=2
	move	$a1, $zero
	b	.LBB0_14
.LBB0_64:
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB0_69
# %bb.65:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB0_67
# %bb.66:
	ld.bu	$a0, $fp, 67
	b	.LBB0_68
.LBB0_67:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB0_68:                               # %_ZL10trace_rgssii.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs7, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB0_69:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL6createP6node_tii3v_tS1_d
	.type	_ZL6createP6node_tii3v_tS1_d,@function
_ZL6createP6node_tii3v_tS1_d:           # @_ZL6createP6node_tii3v_tS1_d
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -480
	.cfi_def_cfa_offset 480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 328                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	fmov.d	$fs1, $fa0
	move	$fp, $a4
	move	$s0, $a3
	move	$s2, $a1
	fadd.d	$fa0, $fa0, $fa0
	ld.d	$a3, $a3, 16
	ori	$a1, $zero, 1
	slt	$a4, $a1, $s2
	masknez	$a5, $a1, $a4
	vld	$vr1, $s0, 0
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a5
	st.d	$a3, $a0, 16
	vst	$vr1, $a0, 0
	fst.d	$fa0, $a0, 24
	st.d	$a3, $a0, 48
	vst	$vr1, $a0, 32
	fst.d	$fs1, $a0, 56
	st.d	$a4, $a0, 64
	ori	$a3, $zero, 2
	addi.d	$a0, $a0, 72
	bge	$s2, $a3, .LBB1_2
.LBB1_1:
	fld.d	$fs7, $sp, 328                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 352                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 384                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.LBB1_2:
	addi.w	$a2, $a2, -9
	lu12i.w	$a3, 233016
	ori	$a3, $a3, 3641
	mul.d	$a2, $a2, $a3
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 33
	add.d	$a2, $a2, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a1, $a1, $a3
	or	$s1, $a2, $a1
	move	$s3, $a0
	addi.d	$a0, $sp, 232
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN7basis_tC2ERK3v_t)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$s7, $zero
	vldi	$vr0, -1016
	fdiv.d	$fa0, $fs1, $fa0
	addi.w	$s2, $s2, -1
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	fadd.d	$fa0, $fs1, $fa0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	movgr2fr.d	$fs6, $zero
	lu12i.w	$a1, -419431
	ori	$a1, $a1, 2458
	lu32i.d	$a1, -419431
	lu52i.d	$a1, $a1, 1020
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	movgr2fr.d	$fa0, $a1
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	lu12i.w	$a1, 345105
	ori	$a1, $a1, 1860
	lu32i.d	$a1, -450053
	lu52i.d	$a2, $a1, 1025
	movgr2fr.d	$fs1, $a2
	lu52i.d	$a1, $a1, -1023
	movgr2fr.d	$fs2, $a1
	lu12i.w	$a1, 522003
	ori	$a1, $a1, 3616
	lu32i.d	$a1, 186748
	lu52i.d	$a1, $a1, 1025
	movgr2fr.d	$fs3, $a1
	ori	$a1, $zero, 0
	lu32i.d	$a1, -131072
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fs7, $a1
	lu12i.w	$a1, 345380
	ori	$a1, $a1, 1360
	lu32i.d	$a1, -450053
	lu52i.d	$a1, $a1, 1023
	movgr2fr.d	$fs4, $a1
	lu52i.d	$a1, $zero, 2047
	movgr2fr.d	$fa0, $a1
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	lu12i.w	$a1, 230103
	ori	$a1, $a1, 869
	lu32i.d	$a1, 49490
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	lu52i.d	$s8, $a1, 1023
	ori	$s6, $zero, 6
	addi.w	$a1, $zero, -99
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	vldi	$vr11, -928
	lu12i.w	$a1, -519458
	ori	$a1, $a1, 2577
	lu32i.d	$a1, 104345
	lu52i.d	$s4, $a1, 983
	lu12i.w	$a1, 346479
	ori	$a1, $a1, 3455
	lu32i.d	$a1, -450053
	lu52i.d	$s3, $a1, 1024
	lu52i.d	$s5, $a1, -1024
	fmov.d	$fs0, $fs6
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %_ZNK3v_t4normEv.exit
                                        #   in Loop: Header=BB1_4 Depth=1
	fld.d	$fa2, $s0, 16
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa1, $fa3
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	fmul.d	$fa4, $fa4, $fa1
	fadd.d	$fa2, $fa4, $fa2
	vld	$vr4, $s0, 0
	vreplvei.d	$vr3, $vr3, 0
	vfmul.d	$vr0, $vr0, $vr3
	vld	$vr3, $sp, 64                   # 16-byte Folded Reload
	vfmul.d	$vr3, $vr3, $vr0
	vfadd.d	$vr3, $vr4, $vr3
	vst	$vr3, $sp, 208
	fst.d	$fa2, $sp, 224
	vst	$vr0, $sp, 176
	fst.d	$fa1, $sp, 192
	addi.d	$a3, $sp, 208
	addi.d	$a4, $sp, 176
	move	$a1, $s2
	move	$a2, $s1
	fld.d	$fa0, $sp, 104                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL6createP6node_tii3v_tS1_d)
	jirl	$ra, $ra, 0
	vldi	$vr11, -928
	movgr2fr.d	$fa0, $s8
	addi.w	$s7, $s7, 1
	fadd.d	$fs0, $fs0, $fa0
	beq	$s7, $s6, .LBB1_29
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_15 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_27 Depth 2
	fcmp.cule.d	$fcc0, $fs6, $fs0
	fmov.d	$fa0, $fs0
	bcnez	$fcc0, .LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa0, $fa0, $fs1
	fcmp.clt.d	$fcc0, $fa0, $fs6
	bcnez	$fcc0, .LBB1_5
.LBB1_6:                                # %.preheader.i
                                        #   in Loop: Header=BB1_4 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph28.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa0, $fa0, $fs2
	fcmp.clt.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB1_7
.LBB1_8:                                # %._crit_edge.i
                                        #   in Loop: Header=BB1_4 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs3
	movgr2fr.d	$fs5, $s3
	bcnez	$fcc0, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	fsub.d	$fa0, $fs1, $fa0
	vldi	$vr2, -784
	fadd.d	$fa1, $fs0, $fs4
	fcmp.cule.d	$fcc0, $fs6, $fa1
	bceqz	$fcc0, .LBB1_15
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	movgr2fr.d	$fa1, $s5
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr2, -784
	fadd.d	$fa1, $fs0, $fs4
	fcmp.cule.d	$fcc0, $fs6, $fa1
	bceqz	$fcc0, .LBB1_15
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_4 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_4 Depth=1
	fsub.d	$fa0, $fs5, $fa0
.LBB1_14:                               # %_ZL7LLVMsind.exit
                                        #   in Loop: Header=BB1_4 Depth=1
	vldi	$vr2, -912
	fadd.d	$fa1, $fs0, $fs4
	fcmp.cule.d	$fcc0, $fs6, $fa1
	bcnez	$fcc0, .LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %.lr.ph.i.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa1, $fa1, $fs1
	fcmp.clt.d	$fcc0, $fa1, $fs6
	bcnez	$fcc0, .LBB1_15
.LBB1_16:                               # %.preheader.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB1_18
	.p2align	4, , 16
.LBB1_17:                               # %.lr.ph28.i.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa1, $fa1, $fs2
	fcmp.clt.d	$fcc0, $fs1, $fa1
	bcnez	$fcc0, .LBB1_17
.LBB1_18:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_4 Depth=1
	fsub.d	$fa1, $fs1, $fa1
	vldi	$vr3, -784
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_20:                               #   in Loop: Header=BB1_4 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fs5
	bcnez	$fcc0, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_4 Depth=1
	movgr2fr.d	$fa3, $s5
	fadd.d	$fa1, $fa1, $fa3
	vldi	$vr3, -784
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_22:                               #   in Loop: Header=BB1_4 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_4 Depth=1
	fsub.d	$fa1, $fs5, $fa1
.LBB1_24:                               # %_ZL7LLVMcosd.exit
                                        #   in Loop: Header=BB1_4 Depth=1
	vldi	$vr3, -912
.LBB1_25:                               # %_ZL7LLVMcosd.exit
                                        #   in Loop: Header=BB1_4 Depth=1
	vld	$vr4, $fp, 0
	fld.d	$fa5, $fp, 16
	vld	$vr6, $sp, 48                   # 16-byte Folded Reload
	vfmul.d	$vr4, $vr4, $vr6
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa6, $fa0, $fa0
	fmul.d	$fa6, $fa0, $fa6
	fmul.d	$fa7, $fa0, $fa6
	fmul.d	$fa7, $fa0, $fa7
	vldi	$vr8, -872
	fdiv.d	$fa6, $fa6, $ft0
	fdiv.d	$fa7, $fa7, $fs7
	fadd.d	$fa0, $fa0, $fa6
	fadd.d	$fa0, $fa0, $fa7
	fmul.d	$fa0, $fa2, $fa0
	vldi	$vr9, -912
	fcmp.clt.d	$fcc0, $ft1, $fa0
	fsel	$fa0, $fa0, $ft1, $fcc0
	vldi	$vr10, -784
	fcmp.clt.d	$fcc0, $fa0, $ft2
	vld	$vr2, $sp, 256
	fld.d	$fa6, $sp, 272
	fsel	$fa0, $fa0, $ft2, $fcc0
	vreplvei.d	$vr7, $vr0, 0
	vfmul.d	$vr2, $vr2, $vr7
	fmul.d	$fa0, $fa6, $fa0
	vfsub.d	$vr2, $vr2, $vr4
	fsub.d	$fa4, $fa0, $fa5
	fmul.d	$fa0, $fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fa5, $fa1, $fa0
	fmul.d	$fa5, $fa1, $fa5
	fdiv.d	$fa0, $fa0, $ft0
	fdiv.d	$fa5, $fa5, $fs7
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $fa5
	fmul.d	$fa0, $fa3, $fa0
	fcmp.clt.d	$fcc0, $ft1, $fa0
	fsel	$fa0, $fa0, $ft1, $fcc0
	fld.d	$fa1, $sp, 296
	fcmp.clt.d	$fcc0, $fa0, $ft2
	vld	$vr3, $sp, 280
	fsel	$fa0, $fa0, $ft2, $fcc0
	fmul.d	$fa1, $fa1, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmul.d	$vr0, $vr3, $vr0
	vfadd.d	$vr0, $vr2, $vr0
	fadd.d	$fa1, $fa4, $fa1
	vfmul.d	$vr2, $vr0, $vr0
	vreplvei.d	$vr3, $vr2, 0
	vreplvei.d	$vr2, $vr2, 1
	fadd.d	$fa2, $fa3, $fa2
	fmul.d	$fa3, $fa1, $fa1
	fadd.d	$fa2, $fa3, $fa2
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a1, $fa3
	andi	$a1, $a1, 64
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	fld.d	$fa3, $sp, 32                   # 8-byte Folded Reload
                                        # kill: def $f3_64 killed $f3_64 def $vr3
	bnez	$a1, .LBB1_3
# %bb.26:                               # %.preheader.i.i39.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	vldi	$vr3, -912
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_27:                               # %.preheader.i.i39
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.d	$fa4, $fa3
	fdiv.d	$fa3, $fa2, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa3, $ft3
	fsub.d	$fa4, $fa3, $fa4
	fabs.d	$fa4, $fa4
	movgr2fr.d	$fa5, $s4
	fcmp.cule.d	$fcc0, $fa4, $fa5
	bcnez	$fcc0, .LBB1_3
# %bb.28:                               # %.preheader.i.i39
                                        #   in Loop: Header=BB1_27 Depth=2
	move	$a2, $a1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB1_27
	b	.LBB1_3
.LBB1_29:
	move	$s7, $zero
	lu12i.w	$a1, 306804
	ori	$a1, $a1, 1159
	lu32i.d	$a1, 415512
	lu52i.d	$a1, $a1, -1027
	movgr2fr.d	$fa0, $a1
	fadd.d	$fs0, $fs0, $fa0
	lu12i.w	$a1, 209715
	ori	$a1, $a1, 819
	lu32i.d	$a1, 209715
	lu52i.d	$a1, $a1, 1022
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	movgr2fr.d	$fa0, $a1
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	movgr2fr.d	$fs7, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, -131072
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fs6, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	lu52i.d	$s3, $a1, 1024
	ori	$s6, $zero, 3
	addi.w	$s8, $zero, -99
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_30:                               #   in Loop: Header=BB1_32 Depth=1
	lu52i.d	$a1, $zero, 2047
	movgr2fr.d	$fa3, $a1
.LBB1_31:                               # %_ZNK3v_t4normEv.exit72
                                        #   in Loop: Header=BB1_32 Depth=1
	fld.d	$fa2, $s0, 16
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa1, $fa3
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	fmul.d	$fa4, $fa4, $fa1
	fadd.d	$fa2, $fa4, $fa2
	vld	$vr4, $s0, 0
	vreplvei.d	$vr3, $vr3, 0
	vfmul.d	$vr0, $vr0, $vr3
	vld	$vr3, $sp, 64                   # 16-byte Folded Reload
	vfmul.d	$vr3, $vr3, $vr0
	vfadd.d	$vr3, $vr4, $vr3
	vst	$vr3, $sp, 144
	fst.d	$fa2, $sp, 160
	vst	$vr0, $sp, 112
	fst.d	$fa1, $sp, 128
	addi.d	$a3, $sp, 144
	addi.d	$a4, $sp, 112
	move	$a1, $s2
	move	$a2, $s1
	fld.d	$fa0, $sp, 104                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL6createP6node_tii3v_tS1_d)
	jirl	$ra, $ra, 0
	vldi	$vr11, -928
	movgr2fr.d	$fa0, $s3
	addi.w	$s7, $s7, 1
	fadd.d	$fs0, $fs0, $fa0
	beq	$s7, $s6, .LBB1_1
.LBB1_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_43 Depth 2
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_55 Depth 2
	fcmp.cule.d	$fcc0, $fs7, $fs0
	fmov.d	$fa0, $fs0
	bcnez	$fcc0, .LBB1_34
	.p2align	4, , 16
.LBB1_33:                               # %.lr.ph.i50
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa0, $fa0, $fs1
	fcmp.clt.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB1_33
.LBB1_34:                               # %.preheader.i40
                                        #   in Loop: Header=BB1_32 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB1_36
	.p2align	4, , 16
.LBB1_35:                               # %.lr.ph28.i48
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa0, $fa0, $fs2
	fcmp.clt.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB1_35
.LBB1_36:                               # %._crit_edge.i42
                                        #   in Loop: Header=BB1_32 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs3
	bcnez	$fcc0, .LBB1_38
# %bb.37:                               #   in Loop: Header=BB1_32 Depth=1
	fsub.d	$fa0, $fs1, $fa0
	vldi	$vr2, -784
	fadd.d	$fa1, $fs0, $fs4
	fcmp.cule.d	$fcc0, $fs7, $fa1
	bceqz	$fcc0, .LBB1_43
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_38:                               #   in Loop: Header=BB1_32 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB1_40
# %bb.39:                               #   in Loop: Header=BB1_32 Depth=1
	movgr2fr.d	$fa1, $s5
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr2, -784
	fadd.d	$fa1, $fs0, $fs4
	fcmp.cule.d	$fcc0, $fs7, $fa1
	bceqz	$fcc0, .LBB1_43
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_40:                               #   in Loop: Header=BB1_32 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB1_42
# %bb.41:                               #   in Loop: Header=BB1_32 Depth=1
	fsub.d	$fa0, $fs5, $fa0
.LBB1_42:                               # %_ZL7LLVMsind.exit52
                                        #   in Loop: Header=BB1_32 Depth=1
	vldi	$vr2, -912
	fadd.d	$fa1, $fs0, $fs4
	fcmp.cule.d	$fcc0, $fs7, $fa1
	bcnez	$fcc0, .LBB1_44
	.p2align	4, , 16
.LBB1_43:                               # %.lr.ph.i.i63
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa1, $fa1, $fs1
	fcmp.clt.d	$fcc0, $fa1, $fs7
	bcnez	$fcc0, .LBB1_43
.LBB1_44:                               # %.preheader.i.i53
                                        #   in Loop: Header=BB1_32 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB1_46
	.p2align	4, , 16
.LBB1_45:                               # %.lr.ph28.i.i61
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa1, $fa1, $fs2
	fcmp.clt.d	$fcc0, $fs1, $fa1
	bcnez	$fcc0, .LBB1_45
.LBB1_46:                               # %._crit_edge.i.i55
                                        #   in Loop: Header=BB1_32 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB1_48
# %bb.47:                               #   in Loop: Header=BB1_32 Depth=1
	fsub.d	$fa1, $fs1, $fa1
	vldi	$vr3, -784
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_48:                               #   in Loop: Header=BB1_32 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fs5
	bcnez	$fcc0, .LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_32 Depth=1
	movgr2fr.d	$fa3, $s5
	fadd.d	$fa1, $fa1, $fa3
	vldi	$vr3, -784
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_50:                               #   in Loop: Header=BB1_32 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB1_52
# %bb.51:                               #   in Loop: Header=BB1_32 Depth=1
	fsub.d	$fa1, $fs5, $fa1
.LBB1_52:                               # %_ZL7LLVMcosd.exit65
                                        #   in Loop: Header=BB1_32 Depth=1
	vldi	$vr3, -912
.LBB1_53:                               # %_ZL7LLVMcosd.exit65
                                        #   in Loop: Header=BB1_32 Depth=1
	vld	$vr4, $fp, 0
	fld.d	$fa5, $fp, 16
	vld	$vr6, $sp, 48                   # 16-byte Folded Reload
	vfmul.d	$vr4, $vr4, $vr6
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa6, $fa0, $fa0
	fmul.d	$fa6, $fa0, $fa6
	fmul.d	$fa7, $fa0, $fa6
	fmul.d	$fa7, $fa0, $fa7
	vldi	$vr8, -872
	fdiv.d	$fa6, $fa6, $ft0
	fdiv.d	$fa7, $fa7, $fs6
	fadd.d	$fa0, $fa0, $fa6
	fadd.d	$fa0, $fa0, $fa7
	fmul.d	$fa0, $fa2, $fa0
	vldi	$vr9, -912
	fcmp.clt.d	$fcc0, $ft1, $fa0
	fsel	$fa0, $fa0, $ft1, $fcc0
	vldi	$vr10, -784
	fcmp.clt.d	$fcc0, $fa0, $ft2
	vld	$vr2, $sp, 256
	fld.d	$fa6, $sp, 272
	fsel	$fa0, $fa0, $ft2, $fcc0
	vreplvei.d	$vr7, $vr0, 0
	vfmul.d	$vr2, $vr2, $vr7
	fmul.d	$fa0, $fa6, $fa0
	vfadd.d	$vr2, $vr4, $vr2
	fadd.d	$fa4, $fa5, $fa0
	fmul.d	$fa0, $fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fa5, $fa1, $fa0
	fmul.d	$fa5, $fa1, $fa5
	fdiv.d	$fa0, $fa0, $ft0
	fdiv.d	$fa5, $fa5, $fs6
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $fa5
	fmul.d	$fa0, $fa3, $fa0
	fcmp.clt.d	$fcc0, $ft1, $fa0
	fsel	$fa0, $fa0, $ft1, $fcc0
	fld.d	$fa1, $sp, 296
	fcmp.clt.d	$fcc0, $fa0, $ft2
	vld	$vr3, $sp, 280
	fsel	$fa0, $fa0, $ft2, $fcc0
	fmul.d	$fa1, $fa1, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmul.d	$vr0, $vr3, $vr0
	vfadd.d	$vr0, $vr2, $vr0
	fadd.d	$fa1, $fa4, $fa1
	vfmul.d	$vr2, $vr0, $vr0
	vreplvei.d	$vr3, $vr2, 0
	vreplvei.d	$vr2, $vr2, 1
	fadd.d	$fa2, $fa3, $fa2
	fmul.d	$fa3, $fa1, $fa1
	fadd.d	$fa2, $fa3, $fa2
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a1, $fa3
	andi	$a1, $a1, 64
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB1_30
# %bb.54:                               # %.preheader.i.i66.preheader
                                        #   in Loop: Header=BB1_32 Depth=1
	vldi	$vr3, -912
	move	$a1, $s8
	.p2align	4, , 16
.LBB1_55:                               # %.preheader.i.i66
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.d	$fa4, $fa3
	fdiv.d	$fa3, $fa2, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa3, $ft3
	fsub.d	$fa4, $fa3, $fa4
	fabs.d	$fa4, $fa4
	movgr2fr.d	$fa5, $s4
	fcmp.cule.d	$fcc0, $fa4, $fa5
	bcnez	$fcc0, .LBB1_31
# %bb.56:                               # %.preheader.i.i66
                                        #   in Loop: Header=BB1_55 Depth=2
	move	$a2, $a1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB1_55
	b	.LBB1_31
.Lfunc_end1:
	.size	_ZL6createP6node_tii3v_tS1_d, .Lfunc_end1-_ZL6createP6node_tii3v_tS1_d
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7basis_tC2ERK3v_t,"axG",@progbits,_ZN7basis_tC2ERK3v_t,comdat
	.weak	_ZN7basis_tC2ERK3v_t            # -- Begin function _ZN7basis_tC2ERK3v_t
	.p2align	5
	.type	_ZN7basis_tC2ERK3v_t,@function
_ZN7basis_tC2ERK3v_t:                   # @_ZN7basis_tC2ERK3v_t
	.cfi_startproc
# %bb.0:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a1, 16
	fmul.d	$fa3, $fa0, $fa0
	fmul.d	$fa4, $fa1, $fa1
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa2, $fa2
	fadd.d	$fa3, $fa3, $fa4
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 64
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_2
# %bb.1:
	lu52i.d	$a1, $zero, 2047
	movgr2fr.d	$fa4, $a1
	b	.LBB2_5
.LBB2_2:                                # %.preheader.i.i.preheader
	addi.w	$a1, $zero, -99
	vldi	$vr4, -912
	vldi	$vr5, -928
	lu12i.w	$a2, -519458
	ori	$a2, $a2, 2577
	lu32i.d	$a2, 104345
	lu52i.d	$a2, $a2, 983
	movgr2fr.d	$fa6, $a2
	.p2align	4, , 16
.LBB2_3:                                # %.preheader.i.i
                                        # =>This Inner Loop Header: Depth=1
	fmov.d	$fa7, $fa4
	fdiv.d	$fa4, $fa3, $fa4
	fadd.d	$fa4, $fa7, $fa4
	fmul.d	$fa4, $fa4, $fa5
	fsub.d	$fa7, $fa4, $fa7
	fabs.d	$fa7, $fa7
	fcmp.cule.d	$fcc0, $fa7, $fa6
	bcnez	$fcc0, .LBB2_5
# %bb.4:                                # %.preheader.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$a2, $a1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB2_3
.LBB2_5:                                # %_ZNK3v_t4normEv.exit
	frecip.d	$fa3, $fa4
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa2, $fa2, $fa3
	fmul.d	$fa5, $fa2, $fa2
	vldi	$vr3, -912
	fcmp.ceq.d	$fcc0, $fa5, $fa3
	fmov.d	$fa3, $fa2
	fmov.d	$fa4, $fa0
	fmov.d	$fa6, $fa1
	bcnez	$fcc0, .LBB2_15
# %bb.6:                                # %_ZNK3v_t4normEv.exit
	fmul.d	$fa7, $fa0, $fa0
	vldi	$vr3, -912
	fcmp.ceq.d	$fcc0, $fa7, $fa3
	fmov.d	$fa3, $fa2
	fmov.d	$fa4, $fa0
	fmov.d	$fa6, $fa1
	bcnez	$fcc0, .LBB2_15
# %bb.7:                                # %_ZNK3v_t4normEv.exit
	fmul.d	$ft0, $fa1, $fa1
	vldi	$vr3, -912
	fcmp.ceq.d	$fcc0, $ft0, $fa3
	fmov.d	$fa3, $fa2
	fmov.d	$fa4, $fa0
	fmov.d	$fa6, $fa1
	bcnez	$fcc0, .LBB2_15
# %bb.8:
	fcmp.cule.d	$fcc0, $ft0, $fa7
	bcnez	$fcc0, .LBB2_11
# %bb.9:
	fcmp.cule.d	$fcc0, $ft0, $fa5
	bcnez	$fcc0, .LBB2_12
# %bb.10:
	fneg.d	$fa4, $fa1
	fmov.d	$fa3, $fa0
	b	.LBB2_14
.LBB2_11:
	fcmp.cule.d	$fcc0, $fa5, $fa7
	bcnez	$fcc0, .LBB2_13
.LBB2_12:
	fneg.d	$fa6, $fa2
	fmov.d	$fa3, $fa0
	fmov.d	$fa4, $fa1
	b	.LBB2_15
.LBB2_13:
	fneg.d	$fa3, $fa0
	fmov.d	$fa4, $fa1
.LBB2_14:
	fmov.d	$fa6, $fa2
.LBB2_15:
	fst.d	$fa0, $a0, 0
	fst.d	$fa1, $a0, 8
	fst.d	$fa2, $a0, 16
	fmul.d	$fa5, $fa1, $fa6
	fmul.d	$fa7, $fa2, $fa4
	fsub.d	$fa5, $fa5, $fa7
	fmul.d	$fa7, $fa2, $fa3
	fmul.d	$fa6, $fa0, $fa6
	fsub.d	$fa6, $fa7, $fa6
	fmul.d	$fa4, $fa0, $fa4
	fmul.d	$fa3, $fa1, $fa3
	fsub.d	$fa3, $fa4, $fa3
	fst.d	$fa5, $a0, 48
	fst.d	$fa6, $a0, 56
	fst.d	$fa3, $a0, 64
	fmul.d	$fa4, $fa1, $fa3
	fmul.d	$fa7, $fa2, $fa6
	fsub.d	$fa4, $fa4, $fa7
	fmul.d	$fa2, $fa2, $fa5
	fmul.d	$fa3, $fa0, $fa3
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $fa6
	fmul.d	$fa1, $fa1, $fa5
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa4, $a0, 24
	fst.d	$fa2, $a0, 32
	fst.d	$fa0, $a0, 40
	ret
.Lfunc_end2:
	.size	_ZN7basis_tC2ERK3v_t, .Lfunc_end2-_ZN7basis_tC2ERK3v_t
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_sphereflake.cpp
	.type	_GLOBAL__sub_I_sphereflake.cpp,@function
_GLOBAL__sub_I_sphereflake.cpp:         # @_GLOBAL__sub_I_sphereflake.cpp
# %bb.0:
	addi.w	$a0, $zero, -99
	vldi	$vr0, -912
	lu12i.w	$a1, -83887
	ori	$a1, $a1, 3769
	lu32i.d	$a1, 505937
	lu52i.d	$a1, $a1, 1023
	movgr2fr.d	$fa1, $a1
	vldi	$vr2, -928
	lu12i.w	$a1, -519458
	ori	$a1, $a1, 2577
	lu32i.d	$a1, 104345
	lu52i.d	$a1, $a1, 983
	movgr2fr.d	$fa3, $a1
	.p2align	4, , 16
.LBB3_1:                                # %.preheader.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fmov.d	$fa4, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa4, $fa0
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa4, $fa0, $fa4
	fabs.d	$fa4, $fa4
	fcmp.cule.d	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB3_3
# %bb.2:                                # %.preheader.i.i.i
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$a1, $a0
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB3_1
.LBB3_3:                                # %__cxx_global_var_init.exit
	frecip.d	$fa0, $fa0
	vldi	$vr1, -800
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	fmul.d	$fa1, $fa0, $fa1
	move	$a1, $a0
	lu32i.d	$a1, 314572
	lu52i.d	$a1, $a1, -1026
	movgr2fr.d	$fa2, $a1
	fmul.d	$fa2, $fa0, $fa2
	lu32i.d	$a0, -209716
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa3, $a0
	fmul.d	$fa0, $fa0, $fa3
	pcalau12i	$a0, %pc_hi20(_ZL5light)
	addi.d	$a0, $a0, %pc_lo12(_ZL5light)
	fst.d	$fa1, $a0, 0
	fst.d	$fa2, $a0, 8
	fst.d	$fa0, $a0, 16
	ret
.Lfunc_end3:
	.size	_GLOBAL__sub_I_sphereflake.cpp, .Lfunc_end3-_GLOBAL__sub_I_sphereflake.cpp
                                        # -- End function
	.type	_ZL5light,@object               # @_ZL5light
	.local	_ZL5light
	.comm	_ZL5light,24,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"P2\n"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" "
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n256\n"
	.size	.L.str.2, 6

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_sphereflake.cpp
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_sphereflake.cpp
	.addrsig_sym _ZL5light
	.addrsig_sym _ZSt4cout
