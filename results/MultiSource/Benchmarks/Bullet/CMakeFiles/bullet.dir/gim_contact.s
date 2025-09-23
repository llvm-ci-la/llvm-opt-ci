	.file	"gim_contact.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN17gim_contact_array14merge_contactsERKS_b
.LCPI0_0:
	.word	0x447a0000                      # float 1000
.LCPI0_1:
	.word	0x44a6a000                      # float 1333
.LCPI0_2:
	.word	0x45055000                      # float 2133
.LCPI0_3:
	.word	0x3727c5ac                      # float 9.99999974E-6
.LCPI0_4:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI0_5:
	.word	0x33d6bf95                      # float 1.00000001E-7
.LCPI0_6:
	.word	0xb727c5ac                      # float -9.99999974E-6
	.text
	.globl	_ZN17gim_contact_array14merge_contactsERKS_b
	.p2align	5
	.type	_ZN17gim_contact_array14merge_contactsERKS_b,@function
_ZN17gim_contact_array14merge_contactsERKS_b: # @_ZN17gim_contact_array14merge_contactsERKS_b
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
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
	fst.d	$fs3, $sp, 152                  # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.w	$a0, $a0, 8
	move	$s1, $a2
	move	$s0, $a1
	beqz	$a0, .LBB0_2
# %bb.1:                                # %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i
	st.w	$zero, $fp, 8
.LBB0_2:                                # %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit
	ld.w	$s5, $s0, 8
	beqz	$s5, .LBB0_6
# %bb.3:                                # %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB0_7
# %bb.4:
	ld.w	$a0, $fp, 12
	ld.d	$s0, $s0, 0
	beqz	$a0, .LBB0_11
# %bb.5:                                # %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	b	.LBB0_12
.LBB0_6:
	move	$s2, $zero
	b	.LBB0_23
.LBB0_7:                                # %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit
	bstrpick.d	$a0, $s5, 31, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(_Z9gim_allocm)
	jirl	$ra, $ra, 0
	ld.wu	$s3, $s0, 8
	addi.w	$a1, $s3, 0
	move	$s2, $a0
	beqz	$a1, .LBB0_13
# %bb.8:
	bgeu	$s5, $a1, .LBB0_14
# %bb.9:
	slli.d	$a0, $s3, 3
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z9gim_allocm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.10:                               # %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjb.exit
	ld.w	$a1, $s0, 8
	bnez	$a1, .LBB0_15
	b	.LBB0_22
.LBB0_11:
	st.w	$zero, $fp, 8
	ori	$a0, $zero, 192
	pcaddu18i	$ra, %call36(_Z9gim_allocm)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 8
	st.d	$a0, $fp, 0
	ori	$a2, $zero, 4
	st.w	$a2, $fp, 12
.LBB0_12:                               # %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit
	xvld	$xr0, $s0, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 4
	xvstx	$xr0, $a0, $a1
	vld	$vr0, $s0, 32
	add.d	$a0, $a0, $a1
	vst	$vr0, $a0, 32
	ld.w	$a0, $fp, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	fld.d	$fs3, $sp, 152                  # 8-byte Folded Reload
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
.LBB0_13:
	move	$s5, $zero
	b	.LBB0_23
.LBB0_14:
	move	$a0, $s2
	move	$a1, $s3
.LBB0_15:                               # %.lr.ph
	ld.d	$a2, $s0, 0
	addi.w	$a4, $a1, 0
	ori	$a5, $zero, 8
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a4, $a5, .LBB0_17
# %bb.16:
	move	$a1, $zero
	b	.LBB0_20
.LBB0_17:                               # %vector.ph
	bstrpick.d	$a1, $a3, 31, 3
	slli.d	$a1, $a1, 3
	addi.d	$a4, $a0, 32
	addi.d	$a5, $a2, 192
	ori	$a6, $zero, 7
	lu12i.w	$a7, 280480
	xvreplgr2vr.w	$xr0, $a7
	xvldi	$xr1, -1424
	lu12i.w	$a7, 281194
	xvreplgr2vr.w	$xr2, $a7
	lu12i.w	$a7, 282709
	xvreplgr2vr.w	$xr3, $a7
	xvldi	$xr4, -1528
	move	$a7, $a1
	.p2align	4, , 16
.LBB0_18:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t0, $a6, -7
	addi.d	$t1, $a6, -6
	addi.d	$t2, $a6, -5
	addi.d	$t3, $a6, -4
	addi.d	$t4, $a6, -3
	addi.d	$t5, $a6, -2
	addi.d	$t6, $a6, -1
	fld.s	$fa5, $a5, -192
	fld.s	$fa6, $a5, -144
	fld.s	$fa7, $a5, -96
	fld.s	$ft0, $a5, -48
	fld.s	$ft1, $a5, 0
	fld.s	$ft2, $a5, 48
	fld.s	$ft3, $a5, 96
	fld.s	$ft4, $a5, 144
	xvinsve0.w	$xr5, $xr6, 1
	xvinsve0.w	$xr5, $xr7, 2
	xvinsve0.w	$xr5, $xr8, 3
	xvinsve0.w	$xr5, $xr9, 4
	xvinsve0.w	$xr5, $xr10, 5
	xvinsve0.w	$xr5, $xr11, 6
	xvinsve0.w	$xr5, $xr12, 7
	xvfmadd.s	$xr5, $xr5, $xr0, $xr1
	xvftintrz.w.s	$xr5, $xr5
	fld.s	$fa6, $a5, -188
	fld.s	$fa7, $a5, -140
	fld.s	$ft0, $a5, -92
	fld.s	$ft1, $a5, -44
	fld.s	$ft2, $a5, 4
	fld.s	$ft3, $a5, 52
	fld.s	$ft4, $a5, 100
	fld.s	$ft5, $a5, 148
	xvinsve0.w	$xr6, $xr7, 1
	xvinsve0.w	$xr6, $xr8, 2
	xvinsve0.w	$xr6, $xr9, 3
	xvinsve0.w	$xr6, $xr10, 4
	xvinsve0.w	$xr6, $xr11, 5
	xvinsve0.w	$xr6, $xr12, 6
	xvinsve0.w	$xr6, $xr13, 7
	xvfmul.s	$xr6, $xr6, $xr2
	xvftintrz.w.s	$xr6, $xr6
	fld.s	$fa7, $a5, -184
	fld.s	$ft0, $a5, -136
	fld.s	$ft1, $a5, -88
	fld.s	$ft2, $a5, -40
	fld.s	$ft3, $a5, 8
	fld.s	$ft4, $a5, 56
	fld.s	$ft5, $a5, 104
	fld.s	$ft6, $a5, 152
	xvinsve0.w	$xr7, $xr8, 1
	xvinsve0.w	$xr7, $xr9, 2
	xvinsve0.w	$xr7, $xr10, 3
	xvinsve0.w	$xr7, $xr11, 4
	xvinsve0.w	$xr7, $xr12, 5
	xvinsve0.w	$xr7, $xr13, 6
	xvinsve0.w	$xr7, $xr14, 7
	xvfmadd.s	$xr7, $xr7, $xr3, $xr4
	xvftintrz.w.s	$xr7, $xr7
	xvslli.w	$xr6, $xr6, 4
	xvadd.w	$xr5, $xr6, $xr5
	xvslli.w	$xr6, $xr7, 8
	xvadd.w	$xr5, $xr5, $xr6
	xvstelm.w	$xr5, $a4, -32, 0
	xvstelm.w	$xr5, $a4, -24, 1
	xvstelm.w	$xr5, $a4, -16, 2
	xvstelm.w	$xr5, $a4, -8, 3
	xvstelm.w	$xr5, $a4, 0, 4
	xvstelm.w	$xr5, $a4, 8, 5
	xvstelm.w	$xr5, $a4, 16, 6
	xvstelm.w	$xr5, $a4, 24, 7
	st.w	$t0, $a4, -28
	st.w	$t1, $a4, -20
	st.w	$t2, $a4, -12
	st.w	$t3, $a4, -4
	st.w	$t4, $a4, 4
	st.w	$t5, $a4, 12
	st.w	$t6, $a4, 20
	st.w	$a6, $a4, 28
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 384
	bnez	$a7, .LBB0_18
# %bb.19:                               # %middle.block
	beq	$a1, $a3, .LBB0_22
.LBB0_20:                               # %scalar.ph.preheader
	sub.d	$a3, $a3, $a1
	slli.d	$a4, $a1, 5
	alsl.d	$a4, $a1, $a4, 4
	add.d	$a2, $a4, $a2
	addi.d	$a2, $a2, 8
	alsl.d	$a4, $a1, $a0, 3
	pcalau12i	$a5, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $a5, %pc_lo12(.LCPI0_0)
	pcalau12i	$a5, %pc_hi20(.LCPI0_1)
	fld.s	$fa1, $a5, %pc_lo12(.LCPI0_1)
	pcalau12i	$a5, %pc_hi20(.LCPI0_2)
	fld.s	$fa2, $a5, %pc_lo12(.LCPI0_2)
	addi.d	$a4, $a4, 4
	vldi	$vr3, -1168
	vldi	$vr4, -1272
	.p2align	4, , 16
.LBB0_21:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $a2, -8
	fmadd.s	$fa5, $fa5, $fa0, $fa3
	fld.s	$fa6, $a2, -4
	ftintrz.w.s	$fa5, $fa5
	movfr2gr.s	$a5, $fa5
	fld.s	$fa5, $a2, 0
	fmul.s	$fa6, $fa6, $fa1
	ftintrz.w.s	$fa6, $fa6
	movfr2gr.s	$a6, $fa6
	fmadd.s	$fa5, $fa5, $fa2, $fa4
	ftintrz.w.s	$fa5, $fa5
	movfr2gr.s	$a7, $fa5
	alsl.d	$a5, $a6, $a5, 4
	slli.d	$a6, $a7, 8
	add.d	$a5, $a5, $a6
	st.w	$a5, $a4, -4
	st.w	$a1, $a4, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 48
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB0_21
.LBB0_22:
	move	$s5, $s3
	move	$s2, $a0
.LBB0_23:                               # %._crit_edge
.Ltmp3:                                 # EH_LABEL
	addi.w	$s3, $s5, 0
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.24:
	ld.w	$s4, $s2, 0
	ld.wu	$s6, $s2, 4
	ld.w	$a0, $fp, 12
	ld.w	$a1, $fp, 8
	ld.d	$s7, $s0, 0
	bgeu	$a1, $a0, .LBB0_26
# %bb.25:                               # %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67
	ld.d	$a0, $fp, 0
	b	.LBB0_31
.LBB0_26:
	ori	$a2, $zero, 4
	alsl.w	$s8, $a1, $a2, 1
	st.w	$a0, $fp, 8
	beqz	$s8, .LBB0_61
# %bb.27:
	bstrpick.d	$a2, $s8, 31, 0
	beqz	$a0, .LBB0_29
# %bb.28:
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $fp, 0
	ori	$a3, $zero, 48
	mul.d	$a1, $a1, $a3
	mul.d	$a2, $a2, $a3
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11gim_reallocPvmm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
	b	.LBB0_30
.LBB0_29:
	slli.d	$a0, $a2, 5
	alsl.d	$a0, $a2, $a0, 4
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z9gim_allocm)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
.LBB0_30:                               # %.noexc70
	ld.w	$a1, $fp, 8
	st.d	$a0, $fp, 0
	st.w	$s8, $fp, 12
.LBB0_31:
	slli.d	$a2, $s6, 5
	alsl.d	$a2, $s6, $a2, 4
	add.d	$a2, $s7, $a2
	xvld	$xr0, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a3, $a1, 5
	alsl.d	$a1, $a1, $a3, 4
	xvstx	$xr0, $a0, $a1
	vld	$vr0, $a2, 32
	add.d	$a0, $a0, $a1
	vst	$vr0, $a0, 32
	ld.wu	$a0, $fp, 8
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 2
	st.w	$a1, $fp, 8
	bltu	$s3, $a2, .LBB0_58
# %bb.32:                               # %.lr.ph120.preheader
	ld.d	$a1, $fp, 0
	move	$s6, $zero
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $a1, $a0
	bstrpick.d	$s3, $s5, 31, 0
	ori	$s5, $zero, 1
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI0_6)
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	fld.s	$fs1, $a1, %pc_lo12(.LCPI0_3)
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	fld.s	$fs2, $a1, %pc_lo12(.LCPI0_4)
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	fld.s	$fs3, $a1, %pc_lo12(.LCPI0_5)
	lu12i.w	$a1, 390005
	ori	$a1, $a1, 2527
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a5, $zero, 48
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_33:                               #   in Loop: Header=BB0_35 Depth=1
	vld	$vr0, $s8, 32
	vst	$vr0, $a0, 32
	xvld	$xr0, $s8, 0
	move	$s6, $zero
	xvst	$xr0, $a0, 0
.LBB0_34:                               #   in Loop: Header=BB0_35 Depth=1
	addi.d	$s5, $s5, 1
	beq	$s5, $s3, .LBB0_58
.LBB0_35:                               # %.lr.ph120
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
	move	$a1, $s4
	alsl.d	$a2, $s5, $s2, 3
	slli.d	$a3, $s5, 3
	ld.wu	$a2, $a2, 4
	ldx.w	$s4, $s2, $a3
	ld.d	$a3, $s0, 0
	slli.d	$a4, $a2, 5
	alsl.d	$a2, $a2, $a4, 4
	add.d	$s8, $a3, $a2
	bne	$a1, $s4, .LBB0_41
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=1
	fld.s	$fa0, $a0, 32
	fld.s	$fa1, $s8, 32
	fadd.s	$fa2, $fa0, $fs0
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB0_33
# %bb.37:                               #   in Loop: Header=BB0_35 Depth=1
	beqz	$s1, .LBB0_34
# %bb.38:                               #   in Loop: Header=BB0_35 Depth=1
	fsub.s	$fa0, $fa0, $fa1
	fabs.s	$fa0, $fa0
	fcmp.cule.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB0_34
# %bb.39:                               #   in Loop: Header=BB0_35 Depth=1
	ori	$a1, $zero, 7
	bltu	$a1, $s6, .LBB0_34
# %bb.40:                               #   in Loop: Header=BB0_35 Depth=1
	vld	$vr0, $s8, 16
	slli.d	$a1, $s6, 4
	addi.d	$a2, $sp, 24
	vstx	$vr0, $a1, $a2
	addi.d	$s6, $s6, 1
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_41:                               #   in Loop: Header=BB0_35 Depth=1
	beqz	$s1, .LBB0_47
# %bb.42:                               #   in Loop: Header=BB0_35 Depth=1
	beqz	$s6, .LBB0_47
# %bb.43:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_35 Depth=1
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a0, 20
	fld.s	$fa2, $a0, 24
	addi.d	$a1, $sp, 32
	.p2align	4, , 16
.LBB0_44:                               # %.lr.ph.i
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a1, -8
	fld.s	$fa4, $a1, -4
	fld.s	$fa5, $a1, 0
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	addi.d	$s6, $s6, -1
	addi.d	$a1, $a1, 16
	bnez	$s6, .LBB0_44
# %bb.45:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_35 Depth=1
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa4, $fa2, $fa2, $fa3
	fcmp.clt.s	$fcc0, $fa4, $fs1
	bceqz	$fcc0, .LBB0_49
# %bb.46:                               #   in Loop: Header=BB0_35 Depth=1
	move	$s6, $zero
.LBB0_47:                               # %_ZN11GIM_CONTACT19interpolate_normalsEP9btVector3j.exit
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.w	$a0, $fp, 12
	ld.w	$a1, $fp, 8
	bgeu	$a1, $a0, .LBB0_52
.LBB0_48:                               # %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i76
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.d	$a0, $fp, 0
	b	.LBB0_57
.LBB0_49:                               #   in Loop: Header=BB0_35 Depth=1
	fcmp.cle.s	$fcc0, $fa4, $fs3
	fmov.s	$fa3, $fs2
	bcnez	$fcc0, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_35 Depth=1
	vldi	$vr3, -1056
	fmul.s	$fa3, $fa4, $fa3
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sub.w	$a1, $a2, $a1
	movgr2fr.w	$fa4, $a1
	fmul.s	$fa3, $fa3, $fa4
	vldi	$vr5, -1160
	fmadd.s	$fa3, $fa3, $fa4, $fa5
	fmul.s	$fa3, $fa3, $fa4
.LBB0_51:                               #   in Loop: Header=BB0_35 Depth=1
	move	$s6, $zero
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 16
	st.d	$a2, $a0, 24
	ld.w	$a0, $fp, 12
	ld.w	$a1, $fp, 8
	bltu	$a1, $a0, .LBB0_48
.LBB0_52:                               #   in Loop: Header=BB0_35 Depth=1
	move	$s7, $s0
	move	$s0, $s1
	ori	$a2, $zero, 4
	alsl.w	$s1, $a1, $a2, 1
	st.w	$a0, $fp, 8
	beqz	$s1, .LBB0_59
# %bb.53:                               #   in Loop: Header=BB0_35 Depth=1
	beqz	$a0, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_35 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $fp, 0
	mul.d	$a1, $a1, $a5
	bstrpick.d	$a2, $s1, 31, 0
	mul.d	$a2, $a2, $a5
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11gim_reallocPvmm)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
	b	.LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_35 Depth=1
	bstrpick.d	$a0, $s1, 31, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 4
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z9gim_allocm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
.LBB0_56:                               # %.noexc79
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.w	$a1, $fp, 8
	st.d	$a0, $fp, 0
	st.w	$s1, $fp, 12
	move	$s1, $s0
	move	$s0, $s7
	ori	$a5, $zero, 48
.LBB0_57:                               #   in Loop: Header=BB0_35 Depth=1
	xvld	$xr0, $s8, 0
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a1, $a5
	xvstx	$xr0, $a0, $a1
	vld	$vr0, $s8, 32
	add.d	$a0, $a0, $a1
	vst	$vr0, $a0, 32
	ld.wu	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 8
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a1, $a0
	b	.LBB0_34
.LBB0_58:                               # %_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev.exit
	move	$a0, $s2
	fld.d	$fs3, $sp, 152                  # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_Z8gim_freePv)
	jr	$t8
.LBB0_59:
	ld.d	$a0, $fp, 0
	st.w	$zero, $fp, 12
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z8gim_freePv)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.60:                               # %.noexc78
.LBB0_61:
	ld.d	$a0, $fp, 0
	st.w	$zero, $fp, 12
.Ltmp10:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z8gim_freePv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.62:                               # %.noexc69
.LBB0_63:                               # %.thread
.Ltmp2:                                 # EH_LABEL
	b	.LBB0_66
.LBB0_64:
.Ltmp12:                                # EH_LABEL
	b	.LBB0_69
.LBB0_65:
.Ltmp5:                                 # EH_LABEL
.LBB0_66:                               # %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i.i83
	move	$fp, $a0
	bnez	$s2, .LBB0_70
	b	.LBB0_71
.LBB0_67:                               # %.loopexit.split-lp
.Ltmp20:                                # EH_LABEL
	b	.LBB0_69
.LBB0_68:                               # %.loopexit
.Ltmp17:                                # EH_LABEL
.LBB0_69:
	move	$fp, $a0
.LBB0_70:
.Ltmp21:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z8gim_freePv)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
.LBB0_71:                               # %_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev.exit85
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_72:
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN17gim_contact_array14merge_contactsERKS_b, .Lfunc_end0-_ZN17gim_contact_array14merge_contactsERKS_b
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp13                #   Call between .Ltmp13 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Lfunc_end0-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_,"axG",@progbits,_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_,comdat
	.weak	_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_ # -- Begin function _Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_
	.p2align	5
	.type	_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_,@function
_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_: # @_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_
	.cfi_startproc
# %bb.0:
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB1_19
# %bb.1:
	bstrpick.d	$a3, $a1, 31, 1
	addi.w	$a2, $a3, 0
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	move	$a6, $a5
.LBB1_3:                                # %.thread.loopexit.i
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a5, $a6, -1
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a0, $a5
	beqz	$a3, .LBB1_9
.LBB1_4:                                # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	move	$a5, $a3
	addi.w	$a3, $a3, -1
	bstrpick.d	$a4, $a3, 31, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.w	$a6, $a5, 1
	bge	$a6, $a1, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	alsl.d	$a7, $a6, $a0, 3
	slli.d	$t0, $a6, 3
	ld.w	$a7, $a7, -8
	ldx.w	$t0, $a0, $t0
	sub.d	$a7, $a7, $t0
	bstrpick.d	$a7, $a7, 31, 31
	or	$a6, $a7, $a6
.LBB1_7:                                #   in Loop: Header=BB1_5 Depth=2
	addi.w	$a7, $a6, 0
	alsl.d	$t0, $a7, $a0, 3
	ld.w	$t1, $t0, -8
	sub.w	$t1, $a4, $t1
	bgez	$t1, .LBB1_2
# %bb.8:                                #   in Loop: Header=BB1_5 Depth=2
	ld.d	$t0, $t0, -8
	addi.d	$a5, $a5, -1
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 3
	stx.d	$t0, $a0, $a5
	move	$a5, $a6
	bgeu	$a2, $a7, .LBB1_5
	b	.LBB1_3
.LBB1_9:                                # %.lr.ph.preheader
	bstrpick.d	$a2, $a1, 31, 0
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=1
	move	$a6, $zero
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a0, $a6
	bgeu	$a3, $a4, .LBB1_19
.LBB1_11:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	move	$a6, $a2
	addi.d	$a2, $a2, -1
	addi.w	$a4, $a2, 0
	bstrpick.d	$a5, $a4, 31, 0
	slli.d	$a5, $a5, 3
	ldx.d	$a7, $a0, $a5
	ld.d	$t0, $a0, 0
	st.d	$a7, $a0, 0
	stx.d	$t0, $a0, $a5
	ld.d	$a5, $a0, 0
	beq	$a6, $a1, .LBB1_10
# %bb.12:                               # %.lr.ph.i16.preheader
                                        #   in Loop: Header=BB1_11 Depth=1
	bstrpick.d	$a6, $a4, 31, 1
	ori	$t0, $zero, 1
	addi.w	$a6, $a6, 0
	.p2align	4, , 16
.LBB1_13:                               # %.lr.ph.i16
                                        #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.w	$a7, $t0, 1
	bge	$a7, $a4, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=2
	alsl.d	$t1, $a7, $a0, 3
	slli.d	$t2, $a7, 3
	ld.w	$t1, $t1, -8
	ldx.w	$t2, $a0, $t2
	sub.d	$t1, $t1, $t2
	bstrpick.d	$t1, $t1, 31, 31
	or	$a7, $t1, $a7
.LBB1_15:                               #   in Loop: Header=BB1_13 Depth=2
	addi.w	$t1, $a7, 0
	alsl.d	$t2, $t1, $a0, 3
	ld.w	$t3, $t2, -8
	sub.w	$t3, $a5, $t3
	bgez	$t3, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_13 Depth=2
	ld.d	$t2, $t2, -8
	addi.d	$t0, $t0, -1
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 3
	stx.d	$t2, $a0, $t0
	move	$t0, $a7
	bgeu	$a6, $t1, .LBB1_13
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_17:                               #   in Loop: Header=BB1_11 Depth=1
	move	$a7, $t0
.LBB1_18:                               # %.thread.loopexit.i19
                                        #   in Loop: Header=BB1_11 Depth=1
	addi.d	$a6, $a7, -1
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a0, $a6
	bltu	$a3, $a4, .LBB1_11
.LBB1_19:                               # %._crit_edge
	ret
.Lfunc_end1:
	.size	_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_, .Lfunc_end1-_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN17gim_contact_array21merge_contacts_uniqueERKS_ # -- Begin function _ZN17gim_contact_array21merge_contacts_uniqueERKS_
	.p2align	5
	.type	_ZN17gim_contact_array21merge_contacts_uniqueERKS_,@function
_ZN17gim_contact_array21merge_contacts_uniqueERKS_: # @_ZN17gim_contact_array21merge_contacts_uniqueERKS_
	.cfi_startproc
# %bb.0:
	ld.w	$a2, $a0, 8
	beqz	$a2, .LBB3_2
# %bb.1:                                # %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i
	st.w	$zero, $a0, 8
.LBB3_2:                                # %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit
	ld.w	$a2, $a1, 8
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_7
# %bb.3:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ld.w	$a2, $a0, 12
	ld.d	$fp, $a1, 0
	beqz	$a2, .LBB3_5
# %bb.4:                                # %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	b	.LBB3_6
.LBB3_5:
	st.w	$zero, $a0, 8
	move	$s0, $a0
	ori	$a0, $zero, 192
	pcaddu18i	$ra, %call36(_Z9gim_allocm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	ld.wu	$a2, $s0, 8
	st.d	$a1, $s0, 0
	ori	$a3, $zero, 4
	st.w	$a3, $s0, 12
.LBB3_6:                                # %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit
	xvld	$xr0, $fp, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 4
	xvstx	$xr0, $a1, $a2
	vld	$vr0, $fp, 32
	add.d	$a1, $a1, $a2
	vst	$vr0, $a1, 32
	ld.w	$a1, $a0, 8
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_7:                                # %.loopexit
	ret
.Lfunc_end3:
	.size	_ZN17gim_contact_array21merge_contacts_uniqueERKS_, .Lfunc_end3-_ZN17gim_contact_array21merge_contacts_uniqueERKS_
	.cfi_endproc
                                        # -- End function
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
