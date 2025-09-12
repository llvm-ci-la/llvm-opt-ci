	.file	"btHeightfieldTerrainShape.cpp"
	.text
	.globl	_ZN25btHeightfieldTerrainShapeC2EiiPvfffi14PHY_ScalarTypeb # -- Begin function _ZN25btHeightfieldTerrainShapeC2EiiPvfffi14PHY_ScalarTypeb
	.p2align	5
	.type	_ZN25btHeightfieldTerrainShapeC2EiiPvfffi14PHY_ScalarTypeb,@function
_ZN25btHeightfieldTerrainShapeC2EiiPvfffi14PHY_ScalarTypeb: # @_ZN25btHeightfieldTerrainShapeC2EiiPvfffi14PHY_ScalarTypeb
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	.cfi_offset 58, -88
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a4
	fmov.s	$fs0, $fa2
	fmov.s	$fs1, $fa1
	fmov.s	$fs2, $fa0
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV25btHeightfieldTerrainShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV25btHeightfieldTerrainShape+16)
	st.d	$a0, $s5, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s2
	fmov.s	$fa0, $fs2
	fmov.s	$fa1, $fs1
	fmov.s	$fa2, $fs0
	move	$a4, $s1
	move	$a5, $s0
	move	$a6, $fp
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(_ZN25btHeightfieldTerrainShape10initializeEiiPvfffi14PHY_ScalarTypeb)
	jr	$t8
.Lfunc_end0:
	.size	_ZN25btHeightfieldTerrainShapeC2EiiPvfffi14PHY_ScalarTypeb, .Lfunc_end0-_ZN25btHeightfieldTerrainShapeC2EiiPvfffi14PHY_ScalarTypeb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN25btHeightfieldTerrainShape10initializeEiiPvfffi14PHY_ScalarTypeb
.LCPI1_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN25btHeightfieldTerrainShape10initializeEiiPvfffi14PHY_ScalarTypeb
	.p2align	5
	.type	_ZN25btHeightfieldTerrainShape10initializeEiiPvfffi14PHY_ScalarTypeb,@function
_ZN25btHeightfieldTerrainShape10initializeEiiPvfffi14PHY_ScalarTypeb: # @_ZN25btHeightfieldTerrainShape10initializeEiiPvfffi14PHY_ScalarTypeb
# %bb.0:
	ori	$a7, $zero, 24
	st.w	$a7, $a0, 8
	st.w	$a1, $a0, 76
	st.w	$a2, $a0, 80
	fst.s	$fa1, $a0, 84
	fst.s	$fa2, $a0, 88
	addi.d	$a1, $a1, -1
	movgr2fr.w	$fa3, $a1
	ffint.s.w	$fa4, $fa3
	fst.s	$fa4, $a0, 92
	addi.d	$a1, $a2, -1
	movgr2fr.w	$fa3, $a1
	ffint.s.w	$fa3, $fa3
	fst.s	$fa3, $a0, 96
	fst.s	$fa0, $a0, 100
	st.d	$a3, $a0, 104
	st.w	$a5, $a0, 112
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	st.b	$a6, $a0, 116
	st.b	$zero, $a0, 117
	st.w	$a4, $a0, 120
	vst	$vr0, $a0, 124
	beqz	$a4, .LBB1_5
# %bb.1:
	ori	$a1, $zero, 1
	beq	$a4, $a1, .LBB1_4
# %bb.2:
	ori	$a1, $zero, 2
	bne	$a4, $a1, .LBB1_6
# %bb.3:
	st.d	$zero, $a0, 28
	fst.s	$fa1, $a0, 36
	st.w	$zero, $a0, 40
	fst.s	$fa4, $a0, 44
	fst.s	$fa3, $a0, 48
	fst.s	$fa2, $a0, 52
	movgr2fr.w	$fa6, $zero
	st.w	$zero, $a0, 56
	fmov.s	$fa5, $fa2
	fmov.s	$fa0, $fa1
	fmov.s	$fa2, $fa4
	fmov.s	$fa1, $fa6
	b	.LBB1_7
.LBB1_4:
	st.w	$zero, $a0, 28
	fst.s	$fa1, $a0, 32
	st.d	$zero, $a0, 36
	fst.s	$fa4, $a0, 44
	fst.s	$fa2, $a0, 48
	fst.s	$fa3, $a0, 52
	movgr2fr.w	$fa0, $zero
	st.w	$zero, $a0, 56
	fmov.s	$fa5, $fa3
	fmov.s	$fa3, $fa2
	fmov.s	$fa6, $fa1
	fmov.s	$fa2, $fa4
	fmov.s	$fa1, $fa0
	b	.LBB1_7
.LBB1_5:
	fst.s	$fa1, $a0, 28
	st.d	$zero, $a0, 32
	st.w	$zero, $a0, 40
	fst.s	$fa2, $a0, 44
	fst.s	$fa4, $a0, 48
	fst.s	$fa3, $a0, 52
	movgr2fr.w	$fa0, $zero
	st.w	$zero, $a0, 56
	fmov.s	$fa5, $fa3
	fmov.s	$fa3, $fa4
	fmov.s	$fa6, $fa0
	b	.LBB1_7
.LBB1_6:                                # %._crit_edge
	fld.s	$fa1, $a0, 28
	fld.s	$fa2, $a0, 44
	fld.s	$fa6, $a0, 32
	fld.s	$fa3, $a0, 48
	fld.s	$fa0, $a0, 36
	fld.s	$fa5, $a0, 52
.LBB1_7:
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fa6, $fa3
	fadd.s	$fa0, $fa0, $fa5
	vldi	$vr3, -1184
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 60
	st.d	$a2, $a0, 68
	ret
.Lfunc_end1:
	.size	_ZN25btHeightfieldTerrainShape10initializeEiiPvfffi14PHY_ScalarTypeb, .Lfunc_end1-_ZN25btHeightfieldTerrainShape10initializeEiiPvfffi14PHY_ScalarTypeb
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN25btHeightfieldTerrainShapeC2EiiPvfibb
.LCPI2_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	_ZN25btHeightfieldTerrainShapeC2EiiPvfibb
	.p2align	5
	.type	_ZN25btHeightfieldTerrainShapeC2EiiPvfibb,@function
_ZN25btHeightfieldTerrainShapeC2EiiPvfibb: # @_ZN25btHeightfieldTerrainShapeC2EiiPvfibb
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a4
	fmov.s	$fs0, $fa0
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV25btHeightfieldTerrainShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV25btHeightfieldTerrainShape+16)
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI2_0)
	ori	$a1, $zero, 5
	masknez	$a5, $a1, $s0
	fdiv.s	$fa0, $fs0, $fa0
	movgr2fr.w	$fa1, $zero
	st.d	$a0, $s5, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s2
	fmov.s	$fa2, $fs0
	move	$a4, $s1
	move	$a6, $fp
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN25btHeightfieldTerrainShape10initializeEiiPvfffi14PHY_ScalarTypeb)
	jr	$t8
.Lfunc_end2:
	.size	_ZN25btHeightfieldTerrainShapeC2EiiPvfibb, .Lfunc_end2-_ZN25btHeightfieldTerrainShapeC2EiiPvfibb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN25btHeightfieldTerrainShapeD2Ev # -- Begin function _ZN25btHeightfieldTerrainShapeD2Ev
	.p2align	5
	.type	_ZN25btHeightfieldTerrainShapeD2Ev,@function
_ZN25btHeightfieldTerrainShapeD2Ev:     # @_ZN25btHeightfieldTerrainShapeD2Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN14btConcaveShapeD2Ev)
	jr	$t8
.Lfunc_end3:
	.size	_ZN25btHeightfieldTerrainShapeD2Ev, .Lfunc_end3-_ZN25btHeightfieldTerrainShapeD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN25btHeightfieldTerrainShapeD0Ev # -- Begin function _ZN25btHeightfieldTerrainShapeD0Ev
	.p2align	5
	.type	_ZN25btHeightfieldTerrainShapeD0Ev,@function
_ZN25btHeightfieldTerrainShapeD0Ev:     # @_ZN25btHeightfieldTerrainShapeD0Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN25btHeightfieldTerrainShapeD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB4_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN25btHeightfieldTerrainShapeD0Ev, .Lfunc_end4-_ZN25btHeightfieldTerrainShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZNK25btHeightfieldTerrainShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK25btHeightfieldTerrainShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK25btHeightfieldTerrainShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK25btHeightfieldTerrainShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK25btHeightfieldTerrainShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	.cfi_offset 57, -48
	.cfi_offset 58, -56
	.cfi_offset 59, -64
	.cfi_offset 60, -72
	.cfi_offset 61, -80
	.cfi_offset 62, -88
	.cfi_offset 63, -96
	move	$s1, $a0
	fld.s	$fa0, $a0, 44
	fld.s	$fa1, $a0, 28
	fld.s	$fa2, $a0, 48
	fld.s	$fa3, $a0, 32
	move	$fp, $a3
	move	$s0, $a2
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fld.s	$fa2, $a0, 52
	fld.s	$fa3, $a0, 36
	fld.s	$fa4, $a0, 124
	fld.s	$fa5, $a0, 128
	fld.s	$fa6, $a0, 132
	fsub.s	$fa2, $fa2, $fa3
	fmul.s	$fa0, $fa0, $fa4
	fmul.s	$fa1, $fa1, $fa5
	fmul.s	$fa2, $fa2, $fa6
	vldi	$vr3, -1184
	fld.s	$fa4, $a1, 0
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fabs.s	$fa3, $fa4
	fld.s	$fa4, $a1, 4
	fld.s	$fa5, $a1, 8
	fld.s	$fa6, $a1, 16
	fld.s	$fa7, $a1, 20
	fabs.s	$fa4, $fa4
	fabs.s	$fa5, $fa5
	fabs.s	$fa6, $fa6
	fabs.s	$fa7, $fa7
	fld.s	$ft0, $a1, 24
	fld.s	$ft1, $a1, 32
	fld.s	$ft2, $a1, 36
	fld.s	$ft3, $a1, 40
	fabs.s	$ft0, $ft0
	fabs.s	$ft1, $ft1
	fabs.s	$ft2, $ft2
	fabs.s	$ft3, $ft3
	fld.s	$fs2, $a1, 48
	fld.s	$fs3, $a1, 52
	fld.s	$fs4, $a1, 56
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fa3, $fa3, $fa0, $fa4
	fmadd.s	$fs5, $fa5, $fa2, $fa3
	ld.d	$a0, $a0, 0
	fmul.s	$fa3, $fa1, $fa7
	fmadd.s	$fa3, $fa6, $fa0, $fa3
	fmadd.s	$fs6, $ft0, $fa2, $fa3
	ld.d	$a1, $a0, 88
	fmul.s	$fa1, $fa1, $ft2
	fmadd.s	$fa0, $ft1, $fa0, $fa1
	fmadd.s	$fs7, $ft3, $fa2, $fa0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fadd.s	$fa1, $fs5, $fs0
	fadd.s	$fa2, $fs6, $fs1
	fadd.s	$fa0, $fs7, $fa0
	fsub.s	$fa3, $fs2, $fa1
	fsub.s	$fa4, $fs3, $fa2
	fsub.s	$fa5, $fs4, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $fs3, $fa2
	fadd.s	$fa0, $fs4, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	fld.d	$fs7, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end5:
	.size	_ZNK25btHeightfieldTerrainShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end5-_ZNK25btHeightfieldTerrainShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK25btHeightfieldTerrainShape22getRawHeightFieldValueEii # -- Begin function _ZNK25btHeightfieldTerrainShape22getRawHeightFieldValueEii
	.p2align	5
	.type	_ZNK25btHeightfieldTerrainShape22getRawHeightFieldValueEii,@function
_ZNK25btHeightfieldTerrainShape22getRawHeightFieldValueEii: # @_ZNK25btHeightfieldTerrainShape22getRawHeightFieldValueEii
# %bb.0:
	ld.w	$a3, $a0, 112
	ori	$a4, $zero, 5
	beq	$a3, $a4, .LBB6_5
# %bb.1:
	ori	$a4, $zero, 3
	beq	$a3, $a4, .LBB6_4
# %bb.2:
	bnez	$a3, .LBB6_7
# %bb.3:
	ld.w	$a3, $a0, 76
	ld.d	$a0, $a0, 104
	mul.d	$a2, $a3, $a2
	add.w	$a1, $a2, $a1
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.LBB6_4:
	ld.w	$a3, $a0, 76
	ld.d	$a4, $a0, 104
	mul.d	$a2, $a3, $a2
	add.w	$a1, $a2, $a1
	slli.d	$a1, $a1, 1
	ldx.h	$a1, $a4, $a1
	b	.LBB6_6
.LBB6_5:
	ld.w	$a3, $a0, 76
	ld.d	$a4, $a0, 104
	mul.d	$a2, $a3, $a2
	add.w	$a1, $a2, $a1
	ldx.bu	$a1, $a4, $a1
.LBB6_6:
	fld.s	$fa0, $a0, 100
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	ret
.LBB6_7:
	movgr2fr.w	$fa0, $zero
	ret
.Lfunc_end6:
	.size	_ZNK25btHeightfieldTerrainShape22getRawHeightFieldValueEii, .Lfunc_end6-_ZNK25btHeightfieldTerrainShape22getRawHeightFieldValueEii
                                        # -- End function
	.globl	_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3 # -- Begin function _ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3
	.p2align	5
	.type	_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3,@function
_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3: # @_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 104
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.w	$a0, $fp, 120
	beqz	$a0, .LBB7_5
# %bb.1:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB7_4
# %bb.2:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB7_8
# %bb.3:
	fld.s	$fa1, $fp, 92
	vldi	$vr2, -1184
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa3, $fp, 96
	movgr2fr.w	$fa4, $s2
	ffint.s.w	$fa4, $fa4
	fsub.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fa3, $fa2
	fld.s	$fa3, $fp, 68
	movgr2fr.w	$fa4, $s1
	ffint.s.w	$fa4, $fa4
	fsub.s	$fa2, $fa4, $fa2
	fsub.s	$fa0, $fa0, $fa3
	b	.LBB7_7
.LBB7_4:
	fld.s	$fa1, $fp, 92
	vldi	$vr3, -1184
	fmul.s	$fa1, $fa1, $fa3
	movgr2fr.w	$fa2, $s2
	fld.s	$fa4, $fp, 64
	fld.s	$fa5, $fp, 96
	ffint.s.w	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa4
	fmul.s	$fa0, $fa5, $fa3
	b	.LBB7_6
.LBB7_5:
	fld.s	$fa1, $fp, 60
	fld.s	$fa2, $fp, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr0, -1184
	fmul.s	$fa2, $fa2, $fa0
	fld.s	$fa3, $fp, 96
	movgr2fr.w	$fa4, $s2
	ffint.s.w	$fa4, $fa4
	fsub.s	$fa2, $fa4, $fa2
	fmul.s	$fa0, $fa3, $fa0
.LBB7_6:
	movgr2fr.w	$fa3, $s1
	ffint.s.w	$fa3, $fa3
	fsub.s	$fa0, $fa3, $fa0
.LBB7_7:
	fst.s	$fa1, $s0, 0
	fst.s	$fa2, $s0, 4
	fst.s	$fa0, $s0, 8
	st.w	$zero, $s0, 12
	b	.LBB7_9
.LBB7_8:                                # %._crit_edge
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s0, 4
	fld.s	$fa0, $s0, 8
.LBB7_9:
	fld.s	$fa3, $fp, 124
	fmul.s	$fa1, $fa3, $fa1
	fst.s	$fa1, $s0, 0
	fld.s	$fa1, $fp, 128
	fmul.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $s0, 4
	fld.s	$fa1, $fp, 132
	fmul.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s0, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3, .Lfunc_end7-_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK25btHeightfieldTerrainShape17quantizeWithClampEPiRK9btVector3i # -- Begin function _ZNK25btHeightfieldTerrainShape17quantizeWithClampEPiRK9btVector3i
	.p2align	5
	.type	_ZNK25btHeightfieldTerrainShape17quantizeWithClampEPiRK9btVector3i,@function
_ZNK25btHeightfieldTerrainShape17quantizeWithClampEPiRK9btVector3i: # @_ZNK25btHeightfieldTerrainShape17quantizeWithClampEPiRK9btVector3i
# %bb.0:                                # %_Z8btSetMaxIfEvRT_RKS0_.exit.i
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 28
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a2, 8
	fld.s	$fa4, $a0, 32
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fld.s	$fa1, $a0, 36
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fsel	$fa2, $fa2, $fa4, $fcc0
	fld.s	$fa4, $a0, 44
	fcmp.clt.s	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa3, $fa1, $fcc0
	fld.s	$fa3, $a0, 48
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fld.s	$fa5, $a0, 52
	fsel	$fa0, $fa0, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa1
	fsel	$fa1, $fa1, $fa5, $fcc0
	fcvt.d.s	$fa3, $fa0
	movgr2fr.w	$fa4, $zero
	fcmp.clt.s	$fcc0, $fa0, $fa4
	vldi	$vr0, -800
	vldi	$vr5, -928
	fsel	$fa6, $fa5, $fa0, $fcc0
	fadd.d	$fa3, $fa6, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a0, $fa3
	st.w	$a0, $a1, 0
	fcvt.d.s	$fa3, $fa2
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fsel	$fa2, $fa5, $fa0, $fcc0
	fadd.d	$fa2, $fa2, $fa3
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a0, $fa2
	st.w	$a0, $a1, 4
	fcvt.d.s	$fa2, $fa1
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fsel	$fa0, $fa5, $fa0, $fcc0
	fadd.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $a1, 8
	ret
.Lfunc_end8:
	.size	_ZNK25btHeightfieldTerrainShape17quantizeWithClampEPiRK9btVector3i, .Lfunc_end8-_ZNK25btHeightfieldTerrainShape17quantizeWithClampEPiRK9btVector3i
                                        # -- End function
	.globl	_ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_ # -- Begin function _ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_,@function
_ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_: # @_ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
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
	move	$fp, $a1
	move	$s0, $a0
	fld.s	$fa0, $a0, 124
	fld.s	$fa1, $a0, 128
	fld.s	$fa2, $a2, 0
	fld.s	$fa3, $a2, 4
	frecip.s	$fa0, $fa0
	frecip.s	$fa1, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa1, $fa3
	fld.s	$fa4, $a3, 0
	fld.s	$fa5, $a3, 4
	fld.s	$fa6, $a0, 60
	fld.s	$fa7, $a0, 64
	fmul.s	$fa0, $fa0, $fa4
	fmul.s	$fa1, $fa1, $fa5
	fadd.s	$fa2, $fa2, $fa6
	fadd.s	$fa3, $fa3, $fa7
	fld.s	$fa4, $a0, 28
	fadd.s	$fa5, $fa0, $fa6
	fadd.s	$fa6, $fa1, $fa7
	fld.s	$fa7, $a0, 32
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fsel	$fa0, $fa2, $fa4, $fcc0
	fld.s	$ft0, $a0, 44
	fcmp.clt.s	$fcc0, $fa3, $fa7
	fld.s	$ft1, $a0, 48
	fsel	$fa1, $fa3, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa0
	fsel	$fa2, $fa0, $ft0, $fcc0
	fcmp.clt.s	$fcc0, $ft1, $fa1
	fsel	$fa3, $fa1, $ft1, $fcc0
	fcvt.d.s	$ft2, $fa2
	movgr2fr.w	$fa0, $zero
	fcmp.clt.s	$fcc0, $fa2, $fa0
	vldi	$vr1, -800
	vldi	$vr2, -928
	fsel	$ft3, $fa2, $fa1, $fcc0
	fadd.d	$ft2, $ft3, $ft2
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a0, $ft2
	fcvt.d.s	$ft2, $fa3
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fsel	$fa3, $fa2, $fa1, $fcc0
	fadd.d	$fa3, $fa3, $ft2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	fcmp.clt.s	$fcc0, $fa5, $fa4
	fsel	$fa3, $fa5, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $fa7
	fsel	$fa4, $fa6, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa3
	fsel	$fa3, $fa3, $ft0, $fcc0
	fcmp.clt.s	$fcc0, $ft1, $fa4
	fsel	$fa4, $fa4, $ft1, $fcc0
	fcvt.d.s	$fa5, $fa3
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fsel	$fa3, $fa2, $fa1, $fcc0
	fadd.d	$fa3, $fa3, $fa5
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a1, $fa3
	fcvt.d.s	$fa3, $fa4
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fsel	$fa4, $fa2, $fa1, $fcc0
	fadd.d	$fa3, $fa4, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a7, $fa3
	addi.w	$a5, $a0, -1
	addi.w	$a1, $a1, 1
	addi.w	$a0, $a4, -1
	ld.w	$t0, $s0, 76
	ld.w	$t1, $s0, 80
	ld.w	$a6, $s0, 120
	addi.w	$a4, $a7, 1
	addi.w	$s5, $t0, -1
	ori	$a7, $zero, 2
	addi.w	$s6, $t1, -1
	beq	$a6, $a7, .LBB9_6
# %bb.1:
	fld.s	$fa3, $s0, 132
	fld.s	$fa4, $a2, 8
	fld.s	$fa5, $a3, 8
	frecip.s	$fa3, $fa3
	fld.s	$fa6, $s0, 68
	fmul.s	$fa4, $fa3, $fa4
	fmul.s	$fa3, $fa3, $fa5
	fld.s	$fa5, $s0, 36
	fadd.s	$fa4, $fa4, $fa6
	fld.s	$fa7, $s0, 52
	fadd.s	$fa3, $fa3, $fa6
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa4, $fa4, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa4
	fsel	$fa4, $fa4, $fa7, $fcc0
	fcvt.d.s	$fa6, $fa4
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fsel	$fa4, $fa2, $fa1, $fcc0
	fadd.d	$fa4, $fa4, $fa6
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a2, $fa4
	fcmp.clt.s	$fcc0, $fa3, $fa5
	fsel	$fa3, $fa3, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa3
	fsel	$fa3, $fa3, $fa7, $fcc0
	fcvt.d.s	$fa4, $fa3
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa2, $fa1, $fcc0
	fadd.d	$fa0, $fa0, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a7, $fa0
	addi.w	$a3, $a2, -1
	ori	$t0, $zero, 1
	addi.w	$a2, $a7, 1
	beq	$a6, $t0, .LBB9_4
# %bb.2:
	bnez	$a6, .LBB9_7
# %bb.3:
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slt	$a0, $a4, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $a4, $a0
	or	$s5, $a0, $a1
	b	.LBB9_5
.LBB9_4:
	srai.d	$a0, $a5, 63
	andn	$a0, $a5, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slt	$a0, $a1, $s5
	masknez	$a4, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$s5, $a0, $a4
.LBB9_5:
	srai.d	$a0, $a3, 63
	andn	$s1, $a3, $a0
	slt	$a0, $a2, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $a2, $a0
	or	$s6, $a0, $a1
	blt	$s1, $s6, .LBB9_8
	b	.LBB9_114
.LBB9_6:
	srai.d	$a2, $a5, 63
	andn	$a2, $a5, $a2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	slt	$a2, $a1, $s5
	masknez	$a3, $s5, $a2
	maskeqz	$a1, $a1, $a2
	or	$s5, $a1, $a3
	srai.d	$a1, $a0, 63
	andn	$s1, $a0, $a1
	slt	$a0, $a4, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $a4, $a0
	or	$s6, $a0, $a1
	blt	$s1, $s6, .LBB9_8
	b	.LBB9_114
.LBB9_7:
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s1, $zero
	bge	$s1, $s6, .LBB9_114
.LBB9_8:                                # %.preheader.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bge	$a0, $s5, .LBB9_114
# %bb.9:                                # %.preheader.us.preheader
	ori	$s8, $zero, 1
	ori	$s7, $zero, 2
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB9_11 Depth=1
	move	$s1, $s2
	beq	$s2, $s6, .LBB9_114
.LBB9_11:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_17 Depth 2
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fs0, $fa0
	addi.w	$s2, $s1, 1
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fs1, $fa0
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB9_17
.LBB9_12:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
.LBB9_13:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit207.us
                                        #   in Loop: Header=BB9_17 Depth=2
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
.LBB9_14:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit207.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs1, $fa0
.LBB9_15:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit207.us
                                        #   in Loop: Header=BB9_17 Depth=2
	st.w	$zero, $sp, 68
.LBB9_16:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit207.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fld.s	$fa4, $s0, 128
	fmul.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $sp, 56
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa4
	ld.d	$a0, $fp, 0
	fst.s	$fa2, $sp, 60
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 64
	ld.d	$a4, $a0, 16
	addi.d	$a1, $sp, 24
	move	$a0, $fp
	move	$a2, $s4
	move	$a3, $s1
	jirl	$ra, $a4, 0
	beq	$s5, $s3, .LBB9_10
.LBB9_17:                               #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s0, 116
	move	$s4, $s3
	addi.w	$s3, $s3, 1
	beqz	$a0, .LBB9_22
.LBB9_18:                               #   in Loop: Header=BB9_17 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 104
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_29
# %bb.19:                               #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_28
# %bb.20:                               #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_31
# %bb.21:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs0, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 36
	b	.LBB9_32
	.p2align	4, , 16
.LBB9_22:                               #   in Loop: Header=BB9_17 Depth=2
	ld.bu	$a0, $s0, 117
	beqz	$a0, .LBB9_24
# %bb.23:                               #   in Loop: Header=BB9_17 Depth=2
	add.d	$a0, $s1, $s4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB9_18
.LBB9_24:                               #   in Loop: Header=BB9_17 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 104
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_70
# %bb.25:                               #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_69
# %bb.26:                               #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_72
# %bb.27:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs0, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 36
	b	.LBB9_73
.LBB9_28:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_30
.LBB9_29:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s4, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_30:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs0, $fa0
	st.w	$zero, $sp, 36
	b	.LBB9_32
.LBB9_31:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 24
	fld.s	$fa2, $sp, 28
	fld.s	$fa0, $sp, 32
.LBB9_32:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s0, 128
	ld.d	$a0, $s0, 0
	fst.s	$fa1, $sp, 24
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$a3, $a0, 104
	fst.s	$fa2, $sp, 28
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 32
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_37
# %bb.33:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_36
# %bb.34:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_39
# %bb.35:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs0, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 52
	b	.LBB9_40
.LBB9_36:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_38
.LBB9_37:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s3, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_38:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit137.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs0, $fa0
	st.w	$zero, $sp, 52
	b	.LBB9_40
.LBB9_39:                               # %._crit_edge.i131.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 40
	fld.s	$fa2, $sp, 44
	fld.s	$fa0, $sp, 48
.LBB9_40:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit137.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s0, 128
	ld.d	$a0, $s0, 0
	fst.s	$fa1, $sp, 40
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$a3, $a0, 104
	fst.s	$fa2, $sp, 44
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 48
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_45
# %bb.41:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit137.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_44
# %bb.42:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit137.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_47
# %bb.43:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs1, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 68
	b	.LBB9_48
.LBB9_44:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_46
.LBB9_45:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s3, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_46:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit144.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs1, $fa0
	st.w	$zero, $sp, 68
	b	.LBB9_48
.LBB9_47:                               # %._crit_edge.i138.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 56
	fld.s	$fa2, $sp, 60
	fld.s	$fa0, $sp, 64
.LBB9_48:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit144.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fld.s	$fa4, $s0, 128
	fmul.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $sp, 56
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa4
	ld.d	$a0, $fp, 0
	fst.s	$fa2, $sp, 60
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 64
	ld.d	$a4, $a0, 16
	addi.d	$a1, $sp, 24
	move	$a0, $fp
	move	$a2, $s4
	move	$a3, $s1
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 104
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_53
# %bb.49:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit144.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_52
# %bb.50:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit144.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_55
# %bb.51:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs0, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 36
	b	.LBB9_56
.LBB9_52:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_54
.LBB9_53:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s4, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_54:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit151.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs0, $fa0
	st.w	$zero, $sp, 36
	b	.LBB9_56
.LBB9_55:                               # %._crit_edge.i145.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 24
	fld.s	$fa2, $sp, 28
	fld.s	$fa0, $sp, 32
.LBB9_56:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit151.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s0, 128
	ld.d	$a0, $s0, 0
	fst.s	$fa1, $sp, 24
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$a3, $a0, 104
	fst.s	$fa2, $sp, 28
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 32
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_61
# %bb.57:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit151.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_60
# %bb.58:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit151.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_63
# %bb.59:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs1, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 52
	b	.LBB9_64
.LBB9_60:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_62
.LBB9_61:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s3, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_62:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit158.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs1, $fa0
	st.w	$zero, $sp, 52
	b	.LBB9_64
.LBB9_63:                               # %._crit_edge.i152.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 40
	fld.s	$fa2, $sp, 44
	fld.s	$fa0, $sp, 48
.LBB9_64:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit158.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s0, 128
	ld.d	$a0, $s0, 0
	fst.s	$fa1, $sp, 40
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$a3, $a0, 104
	fst.s	$fa2, $sp, 44
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 48
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_68
# %bb.65:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit158.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_12
# %bb.66:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit158.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_110
# %bb.67:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	b	.LBB9_109
.LBB9_68:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s4, 31, 0
	b	.LBB9_113
.LBB9_69:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_71
.LBB9_70:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s4, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_71:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit172.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs0, $fa0
	st.w	$zero, $sp, 36
	b	.LBB9_73
.LBB9_72:                               # %._crit_edge.i166.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 24
	fld.s	$fa2, $sp, 28
	fld.s	$fa0, $sp, 32
.LBB9_73:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit172.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s0, 128
	ld.d	$a0, $s0, 0
	fst.s	$fa1, $sp, 24
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$a3, $a0, 104
	fst.s	$fa2, $sp, 28
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 32
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_78
# %bb.74:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit172.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_77
# %bb.75:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit172.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_80
# %bb.76:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs1, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 52
	b	.LBB9_81
.LBB9_77:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_79
.LBB9_78:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s4, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_79:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit179.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs1, $fa0
	st.w	$zero, $sp, 52
	b	.LBB9_81
.LBB9_80:                               # %._crit_edge.i173.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 40
	fld.s	$fa2, $sp, 44
	fld.s	$fa0, $sp, 48
.LBB9_81:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit179.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s0, 128
	ld.d	$a0, $s0, 0
	fst.s	$fa1, $sp, 40
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$a3, $a0, 104
	fst.s	$fa2, $sp, 44
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 48
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_86
# %bb.82:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit179.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_85
# %bb.83:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit179.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_88
# %bb.84:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs0, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 68
	b	.LBB9_89
.LBB9_85:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_87
.LBB9_86:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s3, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_87:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit186.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs0, $fa0
	st.w	$zero, $sp, 68
	b	.LBB9_89
.LBB9_88:                               # %._crit_edge.i180.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 56
	fld.s	$fa2, $sp, 60
	fld.s	$fa0, $sp, 64
.LBB9_89:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit186.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fld.s	$fa4, $s0, 128
	fmul.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $sp, 56
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa4
	ld.d	$a0, $fp, 0
	fst.s	$fa2, $sp, 60
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 64
	ld.d	$a4, $a0, 16
	addi.d	$a1, $sp, 24
	move	$a0, $fp
	move	$a2, $s4
	move	$a3, $s1
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 104
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_94
# %bb.90:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit186.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_93
# %bb.91:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit186.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_96
# %bb.92:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs0, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 36
	b	.LBB9_97
.LBB9_93:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_95
.LBB9_94:                               #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s3, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_95:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit193.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs0, $fa0
	st.w	$zero, $sp, 36
	b	.LBB9_97
.LBB9_96:                               # %._crit_edge.i187.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 24
	fld.s	$fa2, $sp, 28
	fld.s	$fa0, $sp, 32
.LBB9_97:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit193.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s0, 128
	ld.d	$a0, $s0, 0
	fst.s	$fa1, $sp, 24
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$a3, $a0, 104
	fst.s	$fa2, $sp, 28
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 32
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_102
# %bb.98:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit193.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_101
# %bb.99:                               # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit193.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_104
# %bb.100:                              #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs1, $fa2
	fsub.s	$fa0, $fa0, $fa4
	st.w	$zero, $sp, 52
	b	.LBB9_105
.LBB9_101:                              #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 64
	fld.s	$fa4, $s0, 96
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa4, $fa5
	b	.LBB9_103
.LBB9_102:                              #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s4, 31, 0
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
.LBB9_103:                              # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit200.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fsub.s	$fa0, $fs1, $fa0
	st.w	$zero, $sp, 52
	b	.LBB9_105
.LBB9_104:                              # %._crit_edge.i194.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 40
	fld.s	$fa2, $sp, 44
	fld.s	$fa0, $sp, 48
.LBB9_105:                              # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit200.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 124
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s0, 128
	ld.d	$a0, $s0, 0
	fst.s	$fa1, $sp, 40
	fld.s	$fa1, $s0, 132
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$a3, $a0, 104
	fst.s	$fa2, $sp, 44
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 48
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 120
	beqz	$a0, .LBB9_112
# %bb.106:                              # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit200.us
                                        #   in Loop: Header=BB9_17 Depth=2
	beq	$a0, $s8, .LBB9_111
# %bb.107:                              # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit200.us
                                        #   in Loop: Header=BB9_17 Depth=2
	bne	$a0, $s7, .LBB9_110
# %bb.108:                              #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
.LBB9_109:                              # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit207.us
                                        #   in Loop: Header=BB9_17 Depth=2
	movgr2fr.d	$fa2, $a0
	fld.s	$fa3, $s0, 96
	ffint.s.l	$fa2, $fa2
	fld.s	$fa4, $s0, 68
	fsub.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fsub.s	$fa2, $fs1, $fa2
	fsub.s	$fa0, $fa0, $fa4
	b	.LBB9_15
	.p2align	4, , 16
.LBB9_110:                              # %._crit_edge.i159.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $sp, 56
	fld.s	$fa2, $sp, 60
	fld.s	$fa0, $sp, 64
	b	.LBB9_16
.LBB9_111:                              #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 92
	vldi	$vr5, -1184
	fmul.s	$fa1, $fa1, $fa5
	bstrpick.d	$a0, $s3, 31, 0
	b	.LBB9_13
.LBB9_112:                              #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa1, $s0, 60
	fld.s	$fa2, $s0, 92
	fsub.s	$fa1, $fa0, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa2, $fa4
	bstrpick.d	$a0, $s3, 31, 0
.LBB9_113:                              # %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit207.us
                                        #   in Loop: Header=BB9_17 Depth=2
	fld.s	$fa3, $s0, 96
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa4
	b	.LBB9_14
.LBB9_114:                              # %._crit_edge229
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
	ret
.Lfunc_end9:
	.size	_ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_, .Lfunc_end9-_ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK25btHeightfieldTerrainShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK25btHeightfieldTerrainShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK25btHeightfieldTerrainShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK25btHeightfieldTerrainShape21calculateLocalInertiaEfR9btVector3: # @_ZNK25btHeightfieldTerrainShape21calculateLocalInertiaEfR9btVector3
# %bb.0:
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 0
	ret
.Lfunc_end10:
	.size	_ZNK25btHeightfieldTerrainShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end10-_ZNK25btHeightfieldTerrainShape21calculateLocalInertiaEfR9btVector3
                                        # -- End function
	.globl	_ZN25btHeightfieldTerrainShape15setLocalScalingERK9btVector3 # -- Begin function _ZN25btHeightfieldTerrainShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN25btHeightfieldTerrainShape15setLocalScalingERK9btVector3,@function
_ZN25btHeightfieldTerrainShape15setLocalScalingERK9btVector3: # @_ZN25btHeightfieldTerrainShape15setLocalScalingERK9btVector3
# %bb.0:
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 124
	ret
.Lfunc_end11:
	.size	_ZN25btHeightfieldTerrainShape15setLocalScalingERK9btVector3, .Lfunc_end11-_ZN25btHeightfieldTerrainShape15setLocalScalingERK9btVector3
                                        # -- End function
	.globl	_ZNK25btHeightfieldTerrainShape15getLocalScalingEv # -- Begin function _ZNK25btHeightfieldTerrainShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK25btHeightfieldTerrainShape15getLocalScalingEv,@function
_ZNK25btHeightfieldTerrainShape15getLocalScalingEv: # @_ZNK25btHeightfieldTerrainShape15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 124
	ret
.Lfunc_end12:
	.size	_ZNK25btHeightfieldTerrainShape15getLocalScalingEv, .Lfunc_end12-_ZNK25btHeightfieldTerrainShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK25btHeightfieldTerrainShape7getNameEv,"axG",@progbits,_ZNK25btHeightfieldTerrainShape7getNameEv,comdat
	.weak	_ZNK25btHeightfieldTerrainShape7getNameEv # -- Begin function _ZNK25btHeightfieldTerrainShape7getNameEv
	.p2align	5
	.type	_ZNK25btHeightfieldTerrainShape7getNameEv,@function
_ZNK25btHeightfieldTerrainShape7getNameEv: # @_ZNK25btHeightfieldTerrainShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end13:
	.size	_ZNK25btHeightfieldTerrainShape7getNameEv, .Lfunc_end13-_ZNK25btHeightfieldTerrainShape7getNameEv
                                        # -- End function
	.section	.text._ZN14btConcaveShape9setMarginEf,"axG",@progbits,_ZN14btConcaveShape9setMarginEf,comdat
	.weak	_ZN14btConcaveShape9setMarginEf # -- Begin function _ZN14btConcaveShape9setMarginEf
	.p2align	5
	.type	_ZN14btConcaveShape9setMarginEf,@function
_ZN14btConcaveShape9setMarginEf:        # @_ZN14btConcaveShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 24
	ret
.Lfunc_end14:
	.size	_ZN14btConcaveShape9setMarginEf, .Lfunc_end14-_ZN14btConcaveShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK14btConcaveShape9getMarginEv,"axG",@progbits,_ZNK14btConcaveShape9getMarginEv,comdat
	.weak	_ZNK14btConcaveShape9getMarginEv # -- Begin function _ZNK14btConcaveShape9getMarginEv
	.p2align	5
	.type	_ZNK14btConcaveShape9getMarginEv,@function
_ZNK14btConcaveShape9getMarginEv:       # @_ZNK14btConcaveShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 24
	ret
.Lfunc_end15:
	.size	_ZNK14btConcaveShape9getMarginEv, .Lfunc_end15-_ZNK14btConcaveShape9getMarginEv
                                        # -- End function
	.type	_ZTV25btHeightfieldTerrainShape,@object # @_ZTV25btHeightfieldTerrainShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV25btHeightfieldTerrainShape
	.p2align	3, 0x0
_ZTV25btHeightfieldTerrainShape:
	.dword	0
	.dword	_ZTI25btHeightfieldTerrainShape
	.dword	_ZN25btHeightfieldTerrainShapeD2Ev
	.dword	_ZN25btHeightfieldTerrainShapeD0Ev
	.dword	_ZNK25btHeightfieldTerrainShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN25btHeightfieldTerrainShape15setLocalScalingERK9btVector3
	.dword	_ZNK25btHeightfieldTerrainShape15getLocalScalingEv
	.dword	_ZNK25btHeightfieldTerrainShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK25btHeightfieldTerrainShape7getNameEv
	.dword	_ZN14btConcaveShape9setMarginEf
	.dword	_ZNK14btConcaveShape9getMarginEv
	.dword	_ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.dword	_ZNK25btHeightfieldTerrainShape22getRawHeightFieldValueEii
	.size	_ZTV25btHeightfieldTerrainShape, 128

	.type	_ZTI25btHeightfieldTerrainShape,@object # @_ZTI25btHeightfieldTerrainShape
	.globl	_ZTI25btHeightfieldTerrainShape
	.p2align	3, 0x0
_ZTI25btHeightfieldTerrainShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS25btHeightfieldTerrainShape
	.dword	_ZTI14btConcaveShape
	.size	_ZTI25btHeightfieldTerrainShape, 24

	.type	_ZTS25btHeightfieldTerrainShape,@object # @_ZTS25btHeightfieldTerrainShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS25btHeightfieldTerrainShape
_ZTS25btHeightfieldTerrainShape:
	.asciz	"25btHeightfieldTerrainShape"
	.size	_ZTS25btHeightfieldTerrainShape, 28

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HEIGHTFIELD"
	.size	.L.str, 12

	.globl	_ZN25btHeightfieldTerrainShapeC1EiiPvfffi14PHY_ScalarTypeb
	.type	_ZN25btHeightfieldTerrainShapeC1EiiPvfffi14PHY_ScalarTypeb,@function
_ZN25btHeightfieldTerrainShapeC1EiiPvfffi14PHY_ScalarTypeb = _ZN25btHeightfieldTerrainShapeC2EiiPvfffi14PHY_ScalarTypeb
	.globl	_ZN25btHeightfieldTerrainShapeC1EiiPvfibb
	.type	_ZN25btHeightfieldTerrainShapeC1EiiPvfibb,@function
_ZN25btHeightfieldTerrainShapeC1EiiPvfibb = _ZN25btHeightfieldTerrainShapeC2EiiPvfibb
	.globl	_ZN25btHeightfieldTerrainShapeD1Ev
	.type	_ZN25btHeightfieldTerrainShapeD1Ev,@function
_ZN25btHeightfieldTerrainShapeD1Ev = _ZN25btHeightfieldTerrainShapeD2Ev
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
	.addrsig_sym _ZTI25btHeightfieldTerrainShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS25btHeightfieldTerrainShape
	.addrsig_sym _ZTI14btConcaveShape
