	.file	"Solver.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6SolverC2Ev
.LCPI0_0:
	.dword	0x3ff0d79435e50d79              # double 1.0526315789473684
	.dword	0x3ff00419a0290042              # double 1.0010010010010011
.LCPI0_1:
	.dword	0x3ff8000000000000              # double 1.5
	.dword	0x3fd5555555555555              # double 0.33333333333333331
.LCPI0_2:
	.dword	0x4195d9c3f4000000              # double 91648253
	.dword	0x0000000000000000              # double 0
	.text
	.globl	_ZN6SolverC2Ev
	.p2align	5
	.type	_ZN6SolverC2Ev,@function
_ZN6SolverC2Ev:                         # @_ZN6SolverC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 0                    # 16-byte Folded Spill
	vst	$vr1, $fp, 16
	vst	$vr1, $fp, 0
	vst	$vr0, $fp, 32
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$a0, $a0, 1017
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_1)
	st.d	$a0, $fp, 48
	ori	$a0, $zero, 100
	st.w	$a0, $fp, 56
	vst	$vr0, $fp, 64
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, 104857
	lu52i.d	$a0, $a0, 1023
	st.d	$a0, $fp, 80
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 88
	st.d	$s0, $fp, 92
	addi.d	$a0, $fp, 104
	ori	$a2, $zero, 72
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.b	$s0, $fp, 176
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 184
	vst	$vr0, $fp, 200
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, 216
	addi.d	$s1, $fp, 224
	vst	$vr0, $fp, 224
	st.d	$a0, $fp, 240
	addi.d	$a0, $fp, 248
	ori	$a2, $zero, 132
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 380
	st.d	$zero, $fp, 384
	vld	$vr1, $sp, 0                    # 16-byte Folded Reload
	vst	$vr1, $fp, 392
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	st.d	$s1, $fp, 408
	vst	$vr1, $fp, 416
	vst	$vr1, $fp, 432
	vst	$vr0, $fp, 448
	st.b	$s0, $fp, 464
	vst	$vr1, $fp, 472
	vst	$vr1, $fp, 488
	vst	$vr1, $fp, 504
	vst	$vr1, $fp, 520
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	_ZN6SolverC2Ev, .Lfunc_end0-_ZN6SolverC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6SolverD2Ev                  # -- Begin function _ZN6SolverD2Ev
	.p2align	5
	.type	_ZN6SolverD2Ev,@function
_ZN6SolverD2Ev:                         # @_ZN6SolverD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	ld.w	$a0, $a0, 208
	blez	$a0, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 200
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 208
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB1_2
.LBB1_3:                                # %.preheader
	ld.w	$a0, $fp, 192
	blez	$a0, .LBB1_6
# %bb.4:                                # %.lr.ph57.preheader
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph57
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 184
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 192
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB1_5
.LBB1_6:                                # %._crit_edge
	ld.d	$a0, $fp, 520
	beqz	$a0, .LBB1_8
# %bb.7:                                # %.preheader.i.i
	st.w	$zero, $fp, 528
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 520
	st.w	$zero, $fp, 532
.LBB1_8:                                # %_ZN3vecI3LitED2Ev.exit
	ld.d	$a0, $fp, 504
	beqz	$a0, .LBB1_10
# %bb.9:                                # %.preheader.i.i8
	st.w	$zero, $fp, 512
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 504
	st.w	$zero, $fp, 516
.LBB1_10:                               # %_ZN3vecI3LitED2Ev.exit9
	ld.d	$a0, $fp, 488
	beqz	$a0, .LBB1_12
# %bb.11:                               # %.preheader.i.i11
	st.w	$zero, $fp, 496
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 488
	st.w	$zero, $fp, 500
.LBB1_12:                               # %_ZN3vecI3LitED2Ev.exit12
	ld.d	$a0, $fp, 472
	beqz	$a0, .LBB1_14
# %bb.13:                               # %.preheader.i.i14
	st.w	$zero, $fp, 480
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 472
	st.w	$zero, $fp, 484
.LBB1_14:                               # %_ZN3vecIcED2Ev.exit
	ld.d	$a0, $fp, 432
	beqz	$a0, .LBB1_16
# %bb.15:                               # %.preheader.i.i.i
	st.w	$zero, $fp, 440
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 432
	st.w	$zero, $fp, 444
.LBB1_16:                               # %_ZN3vecIiED2Ev.exit.i
	ld.d	$a0, $fp, 416
	beqz	$a0, .LBB1_18
# %bb.17:                               # %.preheader.i.i2.i
	st.w	$zero, $fp, 424
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 416
	st.w	$zero, $fp, 428
.LBB1_18:                               # %_ZN4HeapIN6Solver10VarOrderLtEED2Ev.exit
	ld.d	$a0, $fp, 392
	beqz	$a0, .LBB1_20
# %bb.19:                               # %.preheader.i.i16
	st.w	$zero, $fp, 400
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 392
	st.w	$zero, $fp, 404
.LBB1_20:                               # %_ZN3vecI3LitED2Ev.exit17
	ld.d	$a0, $fp, 360
	beqz	$a0, .LBB1_22
# %bb.21:                               # %.preheader.i.i19
	st.w	$zero, $fp, 368
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 360
	st.w	$zero, $fp, 372
.LBB1_22:                               # %_ZN3vecIiED2Ev.exit
	ld.d	$a0, $fp, 344
	beqz	$a0, .LBB1_24
# %bb.23:                               # %.preheader.i.i21
	st.w	$zero, $fp, 352
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 344
	st.w	$zero, $fp, 356
.LBB1_24:                               # %_ZN3vecIP6ClauseED2Ev.exit
	ld.d	$a0, $fp, 328
	beqz	$a0, .LBB1_26
# %bb.25:                               # %.preheader.i.i23
	st.w	$zero, $fp, 336
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 328
	st.w	$zero, $fp, 340
.LBB1_26:                               # %_ZN3vecIiED2Ev.exit24
	ld.d	$a0, $fp, 312
	beqz	$a0, .LBB1_28
# %bb.27:                               # %.preheader.i.i26
	st.w	$zero, $fp, 320
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 312
	st.w	$zero, $fp, 324
.LBB1_28:                               # %_ZN3vecI3LitED2Ev.exit27
	ld.d	$a0, $fp, 296
	beqz	$a0, .LBB1_30
# %bb.29:                               # %.preheader.i.i29
	st.w	$zero, $fp, 304
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 296
	st.w	$zero, $fp, 308
.LBB1_30:                               # %_ZN3vecIcED2Ev.exit30
	ld.d	$a0, $fp, 280
	beqz	$a0, .LBB1_32
# %bb.31:                               # %.preheader.i.i32
	st.w	$zero, $fp, 288
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 280
	st.w	$zero, $fp, 292
.LBB1_32:                               # %_ZN3vecIcED2Ev.exit33
	ld.d	$a0, $fp, 264
	beqz	$a0, .LBB1_34
# %bb.33:                               # %.preheader.i.i35
	st.w	$zero, $fp, 272
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 264
	st.w	$zero, $fp, 276
.LBB1_34:                               # %_ZN3vecIcED2Ev.exit36
	ld.d	$a0, $fp, 248
	beqz	$a0, .LBB1_42
# %bb.35:                               # %.preheader.i.i38
	ld.w	$a1, $fp, 256
	blez	$a1, .LBB1_41
# %bb.36:                               # %.lr.ph.i.i.preheader
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB1_38
	.p2align	4, , 16
.LBB1_37:                               # %_ZN3vecIP6ClauseED2Ev.exit.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 16
	bge	$s1, $a1, .LBB1_40
.LBB1_38:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $fp, 248
	ldx.d	$a0, $s2, $s0
	beqz	$a0, .LBB1_37
# %bb.39:                               # %.preheader.i.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	add.d	$s3, $s2, $s0
	st.w	$zero, $s3, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 256
	stx.d	$zero, $s2, $s0
	st.w	$zero, $s3, 12
	b	.LBB1_37
.LBB1_40:                               # %._crit_edge.i.loopexit.i
	ld.d	$a0, $fp, 248
.LBB1_41:                               # %._crit_edge.i.i
	st.w	$zero, $fp, 256
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 248
	st.w	$zero, $fp, 260
.LBB1_42:                               # %_ZN3vecIS_IP6ClauseEED2Ev.exit
	ld.d	$a0, $fp, 224
	beqz	$a0, .LBB1_44
# %bb.43:                               # %.preheader.i.i40
	st.w	$zero, $fp, 232
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 224
	st.w	$zero, $fp, 236
.LBB1_44:                               # %_ZN3vecIdED2Ev.exit
	ld.d	$a0, $fp, 200
	beqz	$a0, .LBB1_46
# %bb.45:                               # %.preheader.i.i42
	st.w	$zero, $fp, 208
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 200
	st.w	$zero, $fp, 212
.LBB1_46:                               # %_ZN3vecIP6ClauseED2Ev.exit43
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB1_48
# %bb.47:                               # %.preheader.i.i45
	st.w	$zero, $fp, 192
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 184
	st.w	$zero, $fp, 196
.LBB1_48:                               # %_ZN3vecIP6ClauseED2Ev.exit46
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB1_50
# %bb.49:                               # %.preheader.i.i48
	st.w	$zero, $fp, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
	st.w	$zero, $fp, 28
.LBB1_50:                               # %_ZN3vecI3LitED2Ev.exit49
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB1_52
# %bb.51:                               # %.preheader.i.i51
	st.w	$zero, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	st.w	$zero, $fp, 12
.LBB1_52:                               # %_ZN3vecI5lboolED2Ev.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	_ZN6SolverD2Ev, .Lfunc_end1-_ZN6SolverD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6Solver6newVarEbb            # -- Begin function _ZN6Solver6newVarEbb
	.p2align	5
	.type	_ZN6Solver6newVarEbb,@function
_ZN6Solver6newVarEbb:                   # @_ZN6Solver6newVarEbb
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s0, $a0
	ld.w	$fp, $a0, 272
	ld.w	$a3, $a0, 256
	ld.w	$a4, $a0, 260
	ld.d	$a0, $a0, 248
	move	$s1, $a2
	move	$s2, $a1
	bne	$a3, $a4, .LBB2_2
# %bb.1:
	alsl.d	$a1, $a3, $a3, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s0, 260
	slli.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 256
	st.d	$a0, $s0, 248
.LBB2_2:                                # %_ZN3vecIS_IP6ClauseEE4pushEv.exit
	slli.d	$a1, $a3, 4
	vrepli.b	$vr0, 0
	vstx	$vr0, $a0, $a1
	ld.w	$a1, $s0, 256
	ld.w	$a2, $s0, 260
	ld.d	$a0, $s0, 248
	addi.w	$a1, $a1, 1
	st.w	$a1, $s0, 256
	bne	$a1, $a2, .LBB2_4
# %bb.3:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s0, 260
	slli.d	$a1, $a1, 4
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	ld.w	$a1, $s0, 256
	st.d	$a0, $s0, 248
.LBB2_4:                                # %_ZN3vecIS_IP6ClauseEE4pushEv.exit6
	slli.d	$a1, $a1, 4
	vstx	$vr0, $a0, $a1
	ld.w	$a2, $s0, 256
	ld.w	$a1, $s0, 352
	ld.w	$a3, $s0, 356
	ld.d	$a0, $s0, 344
	addi.d	$a2, $a2, 1
	st.w	$a2, $s0, 256
	bne	$a1, $a3, .LBB2_6
# %bb.5:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s0, 356
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 352
	st.d	$a0, $s0, 344
.LBB2_6:                                # %_ZN3vecIP6ClauseE4pushERKS1_.exit
	addi.d	$a4, $a1, 1
	ld.w	$a3, $s0, 272
	ld.w	$a5, $s0, 276
	ld.d	$a2, $s0, 264
	st.w	$a4, $s0, 352
	slli.d	$a1, $a1, 3
	stx.d	$zero, $a0, $a1
	bne	$a3, $a5, .LBB2_8
# %bb.7:
	alsl.d	$a0, $a3, $a3, 1
	addi.w	$a0, $a0, 1
	srai.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a1, $a0, $a1
	st.w	$a1, $s0, 276
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 272
	move	$a2, $a0
	st.d	$a0, $s0, 264
.LBB2_8:                                # %_ZN3vecIcE4pushERKc.exit
	addi.d	$a0, $a3, 1
	st.w	$a0, $s0, 272
	stx.b	$zero, $a2, $a3
	ld.w	$a1, $s0, 368
	ld.w	$a2, $s0, 372
	ld.d	$a0, $s0, 360
	bne	$a1, $a2, .LBB2_10
# %bb.9:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s0, 372
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 368
	st.d	$a0, $s0, 360
.LBB2_10:                               # %_ZN3vecIiE4pushERKi.exit
	addi.d	$a2, $a1, 1
	st.w	$a2, $s0, 368
	slli.d	$a1, $a1, 2
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $s0, 232
	ld.w	$a2, $s0, 236
	ld.d	$a0, $s0, 224
	bne	$a1, $a2, .LBB2_12
# %bb.11:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s0, 236
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 232
	st.d	$a0, $s0, 224
.LBB2_12:                               # %_ZN3vecIdE4pushERKd.exit
	addi.d	$a4, $a1, 1
	ld.w	$a3, $s0, 480
	ld.w	$a5, $s0, 484
	ld.d	$a2, $s0, 472
	st.w	$a4, $s0, 232
	slli.d	$a1, $a1, 3
	stx.d	$zero, $a0, $a1
	bne	$a3, $a5, .LBB2_14
# %bb.13:
	alsl.d	$a0, $a3, $a3, 1
	addi.w	$a0, $a0, 1
	srai.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a1, $a0, $a1
	st.w	$a1, $s0, 484
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 480
	move	$a2, $a0
	st.d	$a0, $s0, 472
.LBB2_14:                               # %_ZN3vecIcE4pushERKc.exit16
	addi.d	$a0, $a3, 1
	st.w	$a0, $s0, 480
	stx.b	$zero, $a2, $a3
	ld.w	$a1, $s0, 288
	ld.w	$a2, $s0, 292
	ld.d	$a0, $s0, 280
	bne	$a1, $a2, .LBB2_16
# %bb.15:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s0, 292
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 288
	st.d	$a0, $s0, 280
.LBB2_16:                               # %_ZN3vecIcE4pushERKc.exit19
	addi.d	$a2, $a1, 1
	st.w	$a2, $s0, 288
	stx.b	$s2, $a0, $a1
	ld.w	$a1, $s0, 304
	ld.w	$a2, $s0, 308
	ld.d	$a0, $s0, 296
	bne	$a1, $a2, .LBB2_18
# %bb.17:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s0, 308
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 304
	st.d	$a0, $s0, 296
.LBB2_18:                               # %_ZN3vecIcE4pushERKc.exit22
	addi.d	$a2, $a1, 1
	st.w	$a2, $s0, 304
	stx.b	$s1, $a0, $a1
	ld.w	$a0, $s0, 440
	bge	$fp, $a0, .LBB2_20
# %bb.19:                               # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i
	ld.d	$a0, $s0, 432
	slli.d	$a1, $fp, 2
	ldx.w	$a0, $a0, $a1
	bgez	$a0, .LBB2_22
.LBB2_20:                               # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i
	ld.d	$a0, $s0, 296
	ldx.bu	$a0, $a0, $fp
	beqz	$a0, .LBB2_22
# %bb.21:
	addi.d	$a0, $s0, 408
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN4HeapIN6Solver10VarOrderLtEE6insertEi)
	jirl	$ra, $ra, 0
.LBB2_22:                               # %_ZN6Solver14insertVarOrderEi.exit
	move	$a0, $fp
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	_ZN6Solver6newVarEbb, .Lfunc_end2-_ZN6Solver6newVarEbb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6Solver9addClauseER3vecI3LitE # -- Begin function _ZN6Solver9addClauseER3vecI3LitE
	.p2align	5
	.type	_ZN6Solver9addClauseER3vecI3LitE,@function
_ZN6Solver9addClauseER3vecI3LitE:       # @_ZN6Solver9addClauseER3vecI3LitE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.bu	$a0, $a0, 176
	beqz	$a0, .LBB3_10
# %bb.1:
	move	$s1, $a1
	ld.d	$a0, $a1, 0
	ld.w	$a1, $a1, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s1, 8
	blez	$s3, .LBB3_14
# %bb.2:                                # %.lr.ph
	move	$a1, $zero
	move	$a3, $zero
	move	$a2, $zero
	ld.d	$a4, $s1, 0
	ld.d	$a5, $fp, 264
	addi.w	$t1, $zero, -2
	ori	$a0, $zero, 1
	ori	$a6, $zero, 255
	move	$a7, $a4
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_5 Depth=1
	move	$t0, $t1
.LBB3_4:                                # %.critedge2
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, 4
	addi.d	$a1, $a1, 1
	move	$t1, $t0
	bge	$a3, $s3, .LBB3_12
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a7, 0
	srai.d	$t2, $t0, 1
	ldx.b	$t2, $a5, $t2
	andi	$t3, $t0, 1
	sltui	$t3, $t3, 1
	sub.d	$t4, $zero, $t2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $t4, $t3
	or	$t2, $t2, $t3
	andi	$t2, $t2, 255
	beq	$t2, $a0, .LBB3_11
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	xor	$t3, $t0, $t1
	beq	$t3, $a0, .LBB3_11
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	beq	$t2, $a6, .LBB3_3
# %bb.8:                                #   in Loop: Header=BB3_5 Depth=1
	beq	$t0, $t1, .LBB3_3
# %bb.9:                                #   in Loop: Header=BB3_5 Depth=1
	slli.d	$t1, $a2, 2
	stx.w	$t0, $a4, $t1
	ld.w	$s3, $s1, 8
	addi.w	$a2, $a2, 1
	b	.LBB3_4
.LBB3_10:
	move	$a0, $zero
.LBB3_11:                               # %.critedge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB3_12:                               # %._crit_edge
	sub.w	$a0, $a1, $a2
	blez	$a0, .LBB3_14
# %bb.13:                               # %.lr.ph.i
	add.d	$a0, $s3, $a2
	sub.w	$s3, $a0, $a1
	st.w	$s3, $s1, 8
.LBB3_14:                               # %._crit_edge.thread
	ori	$a0, $zero, 1
	beq	$s3, $a0, .LBB3_17
# %bb.15:                               # %._crit_edge.thread
	bnez	$s3, .LBB3_20
# %bb.16:
	move	$a0, $zero
	st.b	$zero, $fp, 176
	b	.LBB3_11
.LBB3_17:
	ld.d	$a0, $s1, 0
	ld.w	$s0, $a0, 0
	andi	$a0, $s0, 1
	ld.d	$a1, $fp, 264
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	srai.d	$a2, $s0, 1
	stx.b	$a0, $a1, $a2
	ld.w	$a0, $fp, 336
	ld.d	$a1, $fp, 360
	slli.d	$a3, $a2, 2
	stx.w	$a0, $a1, $a3
	ld.d	$a3, $fp, 344
	ld.w	$a1, $fp, 320
	ld.w	$a4, $fp, 324
	ld.d	$a0, $fp, 312
	slli.d	$a2, $a2, 3
	stx.d	$zero, $a3, $a2
	bne	$a1, $a4, .LBB3_19
# %bb.18:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $fp, 324
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 320
	st.d	$a0, $fp, 312
.LBB3_19:                               # %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 320
	slli.d	$a1, $a1, 2
	stx.w	$s0, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver9propagateEv)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	st.b	$a0, $fp, 176
	b	.LBB3_11
.LBB3_20:
	slli.d	$s2, $s3, 2
	addi.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	slli.w	$s4, $s3, 3
	st.w	$s4, $a0, 0
	blez	$s3, .LBB3_22
# %bb.21:                               # %.lr.ph.i.i
	ld.d	$a1, $s1, 0
	addi.d	$a0, $s0, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_22:                               # %._crit_edge.i.i
	beqz	$s4, .LBB3_25
# %bb.23:                               # %.lr.ph.i.i.i
	bstrpick.d	$a0, $s3, 28, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB3_26
# %bb.24:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB3_29
.LBB3_25:
	move	$a2, $zero
	b	.LBB3_31
.LBB3_26:                               # %vector.ph
	bstrpick.d	$a1, $a0, 28, 3
	slli.d	$a1, $a1, 3
	vrepli.b	$vr0, 0
	addi.d	$a2, $s0, 24
	move	$a3, $a1
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB3_27:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a2, -16
	vld	$vr3, $a2, 0
	vsrli.w	$vr2, $vr2, 1
	vsrli.w	$vr3, $vr3, 1
	vbitset.w	$vr0, $vr0, $vr2
	vbitset.w	$vr1, $vr1, $vr3
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB3_27
# %bb.28:                               # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a1, $a0, .LBB3_31
.LBB3_29:                               # %scalar.ph.preheader
	sub.d	$a0, $a0, $a1
	alsl.d	$a1, $a1, $s0, 2
	addi.d	$a1, $a1, 8
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB3_30:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a4, $a1, 0
	bstrpick.d	$a4, $a4, 5, 1
	sll.w	$a4, $a3, $a4
	or	$a2, $a4, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB3_30
.LBB3_31:                               # %_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b.exit
	ld.w	$a1, $fp, 192
	ld.w	$a3, $fp, 196
	ld.d	$a0, $fp, 184
	st.w	$a2, $s0, 4
	bne	$a1, $a3, .LBB3_33
# %bb.32:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $fp, 196
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 192
	st.d	$a0, $fp, 184
.LBB3_33:                               # %_ZN3vecIP6ClauseE4pushERKS1_.exit
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 192
	slli.d	$a1, $a1, 3
	stx.d	$s0, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6Solver12attachClauseER6Clause)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB3_11
.Lfunc_end3:
	.size	_ZN6Solver9addClauseER3vecI3LitE, .Lfunc_end3-_ZN6Solver9addClauseER3vecI3LitE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6Solver16uncheckedEnqueueE3LitP6Clause # -- Begin function _ZN6Solver16uncheckedEnqueueE3LitP6Clause
	.p2align	5
	.type	_ZN6Solver16uncheckedEnqueueE3LitP6Clause,@function
_ZN6Solver16uncheckedEnqueueE3LitP6Clause: # @_ZN6Solver16uncheckedEnqueueE3LitP6Clause
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.w	$a0, $a1, 0
	andi	$a1, $a1, 1
	ld.d	$a3, $s0, 264
	sub.d	$a1, $zero, $a1
	ori	$a1, $a1, 1
	srai.d	$a4, $a0, 1
	stx.b	$a1, $a3, $a4
	ld.w	$a0, $s0, 336
	ld.d	$a1, $s0, 360
	slli.d	$a3, $a4, 2
	stx.w	$a0, $a1, $a3
	ld.d	$a3, $s0, 344
	ld.w	$a1, $s0, 320
	ld.w	$a5, $s0, 324
	ld.d	$a0, $s0, 312
	slli.d	$a4, $a4, 3
	stx.d	$a2, $a3, $a4
	bne	$a1, $a5, .LBB4_2
# %bb.1:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s0, 324
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 320
	st.d	$a0, $s0, 312
.LBB4_2:                                # %_ZN3vecI3LitE4pushERKS0_.exit
	addi.d	$a2, $a1, 1
	st.w	$a2, $s0, 320
	slli.d	$a1, $a1, 2
	stx.w	$fp, $a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZN6Solver16uncheckedEnqueueE3LitP6Clause, .Lfunc_end4-_ZN6Solver16uncheckedEnqueueE3LitP6Clause
                                        # -- End function
	.globl	_ZN6Solver9propagateEv          # -- Begin function _ZN6Solver9propagateEv
	.p2align	5
	.type	_ZN6Solver9propagateEv,@function
_ZN6Solver9propagateEv:                 # @_ZN6Solver9propagateEv
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
	move	$fp, $a0
	ld.w	$a0, $a0, 376
	ld.w	$a1, $fp, 320
	bge	$a0, $a1, .LBB5_34
# %bb.1:                                # %.lr.ph99
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$a4, $zero
	ori	$s2, $zero, 1
	ori	$t4, $zero, 24
	ori	$s4, $zero, 255
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %_ZN3vecIP6ClauseE6shrinkEi.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $fp, 376
	ld.w	$a1, $fp, 320
	addi.w	$a4, $a4, 1
	bge	$a0, $a1, .LBB5_35
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_12 Depth 3
                                        #       Child Loop BB5_22 Depth 3
                                        #       Child Loop BB5_29 Depth 3
	ld.d	$a1, $fp, 312
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 376
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $a1, $a0
	ld.d	$a0, $fp, 248
	alsl.d	$a5, $a1, $a0, 4
	slli.d	$a3, $a1, 4
	ld.w	$a2, $a5, 8
	ldx.d	$a0, $a0, $a3
	beqz	$a2, .LBB5_32
# %bb.4:                                # %.lr.ph91
                                        #   in Loop: Header=BB5_3 Depth=1
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a3, $a2, 3
	alsl.d	$s8, $a2, $a0, 3
	xori	$s6, $a1, 1
	add.d	$a1, $a3, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s7, $a0
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_7 Depth=2
	addi.d	$a0, $s7, 8
	st.d	$s5, $s7, 0
	move	$s7, $a0
.LBB5_6:                                # %.loopexit
                                        #   in Loop: Header=BB5_7 Depth=2
	move	$a0, $s0
	beq	$s0, $s8, .LBB5_31
.LBB5_7:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_12 Depth 3
                                        #       Child Loop BB5_22 Depth 3
                                        #       Child Loop BB5_29 Depth 3
	ld.d	$s5, $a0, 0
	ld.w	$s3, $s5, 8
	bne	$s3, $s6, .LBB5_9
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=2
	ld.w	$s3, $s5, 12
	st.w	$s3, $s5, 8
	st.w	$s6, $s5, 12
.LBB5_9:                                #   in Loop: Header=BB5_7 Depth=2
	ld.d	$a2, $fp, 264
	srai.d	$a1, $s3, 1
	ldx.b	$a5, $a2, $a1
	andi	$a3, $s3, 1
	sltui	$a4, $a3, 1
	sub.d	$a6, $zero, $a5
	maskeqz	$a5, $a5, $a4
	masknez	$a6, $a6, $a4
	or	$a5, $a5, $a6
	andi	$a5, $a5, 255
	addi.d	$s0, $a0, 8
	beq	$a5, $s2, .LBB5_5
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.w	$a6, $s5, 0
	bltu	$a6, $t4, .LBB5_14
# %bb.11:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_7 Depth=2
	move	$a5, $zero
	bstrpick.d	$a6, $a6, 31, 3
	slli.d	$a6, $a6, 2
	bstrpick.d	$a6, $a6, 62, 2
	slli.d	$a6, $a6, 2
	addi.d	$a6, $a6, -8
	.p2align	4, , 16
.LBB5_12:                               # %.lr.ph
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t0, $s5, $a5
	ld.w	$a7, $t0, 16
	srai.d	$t1, $a7, 1
	ldx.b	$t1, $a2, $t1
	andi	$t2, $a7, 1
	sltui	$t2, $t2, 1
	sub.d	$t3, $zero, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $t3, $t2
	or	$t1, $t1, $t2
	andi	$t1, $t1, 255
	bne	$t1, $s4, .LBB5_25
# %bb.13:                               #   in Loop: Header=BB5_12 Depth=3
	addi.d	$a5, $a5, 4
	bne	$a6, $a5, .LBB5_12
.LBB5_14:                               # %._crit_edge
                                        #   in Loop: Header=BB5_7 Depth=2
	st.d	$s5, $s7, 0
	ldx.b	$a5, $a2, $a1
	sub.d	$a6, $zero, $a5
	maskeqz	$a5, $a5, $a4
	masknez	$a4, $a6, $a4
	or	$a4, $a5, $a4
	andi	$a4, $a4, 255
	addi.d	$s1, $s7, 8
	beq	$a4, $s4, .LBB5_18
# %bb.15:                               #   in Loop: Header=BB5_7 Depth=2
	sub.d	$a0, $zero, $a3
	ori	$a0, $a0, 1
	stx.b	$a0, $a2, $a1
	ld.w	$a0, $fp, 336
	ld.d	$a2, $fp, 360
	slli.d	$a3, $a1, 2
	stx.w	$a0, $a2, $a3
	ld.d	$a3, $fp, 344
	ld.w	$a2, $fp, 320
	ld.w	$a4, $fp, 324
	ld.d	$a0, $fp, 312
	slli.d	$a1, $a1, 3
	stx.d	$s5, $a3, $a1
	bne	$a2, $a4, .LBB5_17
# %bb.16:                               #   in Loop: Header=BB5_7 Depth=2
	alsl.d	$a1, $a2, $a2, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a3, $zero, 2
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 324
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 24
	ld.w	$a2, $fp, 320
	st.d	$a0, $fp, 312
.LBB5_17:                               # %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit
                                        #   in Loop: Header=BB5_7 Depth=2
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 320
	slli.d	$a1, $a2, 2
	stx.w	$s3, $a0, $a1
	move	$s7, $s1
	b	.LBB5_6
.LBB5_18:                               #   in Loop: Header=BB5_7 Depth=2
	ld.w	$a1, $fp, 320
	st.w	$a1, $fp, 376
	bgeu	$s0, $s8, .LBB5_24
# %bb.19:                               # %.lr.ph84.preheader
                                        #   in Loop: Header=BB5_7 Depth=2
	addi.d	$a1, $a0, 16
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	sltu	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	sub.d	$a1, $a1, $a0
	addi.d	$a1, $a1, -9
	bltu	$a1, $t4, .LBB5_28
# %bb.20:                               # %.lr.ph84.preheader
                                        #   in Loop: Header=BB5_7 Depth=2
	sub.d	$a2, $s7, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB5_28
# %bb.21:                               # %vector.ph
                                        #   in Loop: Header=BB5_7 Depth=2
	srli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 1
	bstrpick.d	$a3, $a1, 61, 2
	slli.d	$a2, $a3, 2
	slli.d	$a3, $a3, 5
	add.d	$s0, $s0, $a3
	add.d	$s1, $s1, $a3
	addi.d	$a3, $s7, 24
	addi.d	$a0, $a0, 24
	move	$a4, $a2
	.p2align	4, , 16
.LBB5_22:                               # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, -16
	vld	$vr1, $a0, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, -4
	addi.d	$a0, $a0, 32
	bnez	$a4, .LBB5_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB5_7 Depth=2
	bne	$a1, $a2, .LBB5_28
.LBB5_24:                               #   in Loop: Header=BB5_7 Depth=2
	move	$s7, $s1
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB5_6
.LBB5_25:                               #   in Loop: Header=BB5_7 Depth=2
	ld.d	$a0, $fp, 248
	st.w	$a7, $s5, 12
	st.w	$s6, $t0, 16
	xori	$a1, $a7, 1
	alsl.d	$s1, $a1, $a0, 4
	slli.d	$a2, $a1, 4
	ld.w	$a1, $s1, 8
	ld.w	$a3, $s1, 12
	ldx.d	$a0, $a0, $a2
	bne	$a1, $a3, .LBB5_27
# %bb.26:                               #   in Loop: Header=BB5_7 Depth=2
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a3, $zero, 2
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $s1, 12
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 24
	ld.w	$a1, $s1, 8
	st.d	$a0, $s1, 0
.LBB5_27:                               #   in Loop: Header=BB5_7 Depth=2
	addi.d	$a2, $a1, 1
	st.w	$a2, $s1, 8
	slli.d	$a1, $a1, 3
	stx.d	$s5, $a0, $a1
	b	.LBB5_6
.LBB5_28:                               # %.lr.ph84.preheader138
                                        #   in Loop: Header=BB5_7 Depth=2
	move	$s7, $s1
	.p2align	4, , 16
.LBB5_29:                               # %.lr.ph84
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 0
	addi.d	$s0, $s0, 8
	st.d	$a0, $s7, 0
	addi.d	$s7, $s7, 8
	bltu	$s0, $s8, .LBB5_29
# %bb.30:                               #   in Loop: Header=BB5_7 Depth=2
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_31:                               #   in Loop: Header=BB5_3 Depth=1
	move	$a0, $s7
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $s8, $a0
	srli.d	$a0, $a0, 3
	addi.w	$a1, $a0, 0
	bgtz	$a1, .LBB5_33
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_32:                               #   in Loop: Header=BB5_3 Depth=1
	move	$s8, $a0
	sub.d	$a0, $s8, $a0
	srli.d	$a0, $a0, 3
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB5_2
.LBB5_33:                               # %.lr.ph.i
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a1, $a5, 8
	sub.d	$a0, $a1, $a0
	st.w	$a0, $a5, 8
	b	.LBB5_2
.LBB5_34:
	move	$a4, $zero
	move	$a0, $zero
	b	.LBB5_36
.LBB5_35:                               # %._crit_edge100.loopexit
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
.LBB5_36:                               # %._crit_edge100
	ld.d	$a2, $fp, 128
	ld.d	$a1, $fp, 384
	add.d	$a2, $a2, $a4
	st.d	$a2, $fp, 128
	sub.d	$a1, $a1, $a4
	st.d	$a1, $fp, 384
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
.Lfunc_end5:
	.size	_ZN6Solver9propagateEv, .Lfunc_end5-_ZN6Solver9propagateEv
                                        # -- End function
	.globl	_ZN6Solver12attachClauseER6Clause # -- Begin function _ZN6Solver12attachClauseER6Clause
	.p2align	5
	.type	_ZN6Solver12attachClauseER6Clause,@function
_ZN6Solver12attachClauseER6Clause:      # @_ZN6Solver12attachClauseER6Clause
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$a0, $a1, 8
	ld.d	$a2, $fp, 248
	xori	$a0, $a0, 1
	alsl.d	$s1, $a0, $a2, 4
	slli.d	$a0, $a0, 4
	ld.w	$a3, $s1, 8
	ld.w	$a1, $s1, 12
	ldx.d	$a0, $a2, $a0
	bne	$a3, $a1, .LBB6_2
# %bb.1:
	alsl.d	$a1, $a3, $a3, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 12
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s1, 8
	ld.d	$a2, $fp, 248
	st.d	$a0, $s1, 0
.LBB6_2:                                # %_ZN3vecIP6ClauseE4pushERKS1_.exit
	addi.d	$a1, $a3, 1
	st.w	$a1, $s1, 8
	ld.w	$a1, $s0, 12
	xori	$a1, $a1, 1
	alsl.d	$s1, $a1, $a2, 4
	slli.d	$a4, $a1, 4
	ld.w	$a1, $s1, 8
	ld.w	$a5, $s1, 12
	ldx.d	$a2, $a2, $a4
	slli.d	$a3, $a3, 3
	stx.d	$s0, $a0, $a3
	bne	$a1, $a5, .LBB6_4
# %bb.3:
	alsl.d	$a0, $a1, $a1, 1
	addi.w	$a0, $a0, 1
	srai.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	st.w	$a0, $s1, 12
	slli.d	$a1, $a0, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	move	$a2, $a0
	st.d	$a0, $s1, 0
.LBB6_4:                                # %_ZN3vecIP6ClauseE4pushERKS1_.exit13
	ld.wu	$a0, $s0, 0
	slli.d	$a3, $a1, 3
	stx.d	$s0, $a2, $a3
	andi	$a2, $a0, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 152
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 144
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	ldx.d	$a3, $fp, $a2
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 8
	srli.d	$a0, $a0, 3
	add.d	$a0, $a3, $a0
	stx.d	$a0, $fp, $a2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	_ZN6Solver12attachClauseER6Clause, .Lfunc_end6-_ZN6Solver12attachClauseER6Clause
                                        # -- End function
	.globl	_ZN6Solver12detachClauseER6Clause # -- Begin function _ZN6Solver12detachClauseER6Clause
	.p2align	5
	.type	_ZN6Solver12detachClauseER6Clause,@function
_ZN6Solver12detachClauseER6Clause:      # @_ZN6Solver12detachClauseER6Clause
# %bb.0:
	ld.w	$a3, $a1, 8
	ld.d	$a2, $a0, 248
	xori	$a3, $a3, 1
	alsl.d	$a3, $a3, $a2, 4
	ld.w	$a4, $a3, 8
	blez	$a4, .LBB7_5
# %bb.1:                                # %.lr.ph.i
	ld.d	$a5, $a3, 0
	move	$a6, $zero
	move	$a7, $a4
	.p2align	4, , 16
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	beq	$t0, $a1, .LBB7_6
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	addi.w	$a6, $a6, 1
	addi.d	$a7, $a7, -1
	addi.d	$a5, $a5, 8
	bnez	$a7, .LBB7_2
# %bb.4:                                # %.critedge.thread.i
	addi.d	$a4, $a4, -1
	b	.LBB7_14
.LBB7_5:
	move	$a6, $zero
.LBB7_6:                                # %.critedge.i
	addi.w	$a4, $a4, -1
	bge	$a6, $a4, .LBB7_14
# %bb.7:                                # %.lr.ph9.i
	ld.d	$a5, $a3, 0
	bstrpick.d	$t2, $a6, 31, 0
	bstrpick.d	$a6, $a4, 31, 0
	sub.d	$t0, $a6, $t2
	ori	$a7, $zero, 4
	bgeu	$t0, $a7, .LBB7_9
# %bb.8:
	move	$a7, $t2
	b	.LBB7_12
.LBB7_9:                                # %vector.ph
	move	$t1, $t0
	bstrins.d	$t1, $zero, 1, 0
	add.d	$a7, $t1, $t2
	alsl.d	$t2, $t2, $a5, 3
	addi.d	$t2, $t2, 16
	move	$t3, $t1
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t2, -8
	vld	$vr1, $t2, 8
	vst	$vr0, $t2, -16
	vst	$vr1, $t2, 0
	addi.d	$t3, $t3, -4
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB7_10
# %bb.11:                               # %middle.block
	beq	$t0, $t1, .LBB7_14
.LBB7_12:                               # %scalar.ph.preheader
	alsl.d	$a5, $a7, $a5, 3
	addi.d	$a5, $a5, 8
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB7_13:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, 0
	st.d	$a7, $a5, -8
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB7_13
.LBB7_14:                               # %_ZL6removeI3vecIP6ClauseES2_EvRT_RKT0_.exit
	st.w	$a4, $a3, 8
	ld.w	$a3, $a1, 12
	xori	$a3, $a3, 1
	alsl.d	$a2, $a3, $a2, 4
	ld.w	$a3, $a2, 8
	blez	$a3, .LBB7_19
# %bb.15:                               # %.lr.ph.i17
	ld.d	$a4, $a2, 0
	move	$a5, $zero
	move	$a6, $a3
	.p2align	4, , 16
.LBB7_16:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	beq	$a7, $a1, .LBB7_20
# %bb.17:                               #   in Loop: Header=BB7_16 Depth=1
	addi.w	$a5, $a5, 1
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB7_16
# %bb.18:                               # %.critedge.thread.i23
	addi.d	$a3, $a3, -1
	b	.LBB7_28
.LBB7_19:
	move	$a5, $zero
.LBB7_20:                               # %.critedge.i12
	addi.w	$a3, $a3, -1
	bge	$a5, $a3, .LBB7_28
# %bb.21:                               # %.lr.ph9.i14
	ld.d	$a4, $a2, 0
	bstrpick.d	$t1, $a5, 31, 0
	bstrpick.d	$a5, $a3, 31, 0
	sub.d	$a7, $a5, $t1
	ori	$a6, $zero, 4
	bgeu	$a7, $a6, .LBB7_23
# %bb.22:
	move	$a6, $t1
	b	.LBB7_26
.LBB7_23:                               # %vector.ph48
	move	$t0, $a7
	bstrins.d	$t0, $zero, 1, 0
	add.d	$a6, $t0, $t1
	alsl.d	$t1, $t1, $a4, 3
	addi.d	$t1, $t1, 16
	move	$t2, $t0
	.p2align	4, , 16
.LBB7_24:                               # %vector.body51
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t1, -8
	vld	$vr1, $t1, 8
	vst	$vr0, $t1, -16
	vst	$vr1, $t1, 0
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB7_24
# %bb.25:                               # %middle.block57
	beq	$a7, $t0, .LBB7_28
.LBB7_26:                               # %scalar.ph46.preheader
	alsl.d	$a4, $a6, $a4, 3
	addi.d	$a4, $a4, 8
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB7_27:                               # %scalar.ph46
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	st.d	$a6, $a4, -8
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB7_27
.LBB7_28:                               # %_ZL6removeI3vecIP6ClauseES2_EvRT_RKT0_.exit25
	ld.wu	$a1, $a1, 0
	andi	$a4, $a1, 1
	sltui	$a4, $a4, 1
	ori	$a5, $zero, 152
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 144
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	ldx.d	$a5, $a0, $a4
	st.w	$a3, $a2, 8
	srli.d	$a1, $a1, 3
	sub.d	$a1, $a5, $a1
	stx.d	$a1, $a0, $a4
	ret
.Lfunc_end7:
	.size	_ZN6Solver12detachClauseER6Clause, .Lfunc_end7-_ZN6Solver12detachClauseER6Clause
                                        # -- End function
	.globl	_ZN6Solver12removeClauseER6Clause # -- Begin function _ZN6Solver12removeClauseER6Clause
	.p2align	5
	.type	_ZN6Solver12removeClauseER6Clause,@function
_ZN6Solver12removeClauseER6Clause:      # @_ZN6Solver12removeClauseER6Clause
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(_ZN6Solver12detachClauseER6Clause)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end8:
	.size	_ZN6Solver12removeClauseER6Clause, .Lfunc_end8-_ZN6Solver12removeClauseER6Clause
                                        # -- End function
	.globl	_ZNK6Solver9satisfiedERK6Clause # -- Begin function _ZNK6Solver9satisfiedERK6Clause
	.p2align	5
	.type	_ZNK6Solver9satisfiedERK6Clause,@function
_ZNK6Solver9satisfiedERK6Clause:        # @_ZNK6Solver9satisfiedERK6Clause
# %bb.0:
	ld.w	$a3, $a1, 0
	ori	$a2, $zero, 8
	bltu	$a3, $a2, .LBB9_5
# %bb.1:                                # %.lr.ph
	addi.d	$a1, $a1, 8
	ld.d	$a2, $a0, 264
	bstrpick.d	$a0, $a3, 31, 3
	addi.d	$a4, $a0, -1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a1, 0
	srai.d	$a5, $a0, 1
	ldx.b	$a6, $a2, $a5
	move	$a5, $a4
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	sub.d	$a4, $zero, $a6
	maskeqz	$a6, $a6, $a0
	masknez	$a0, $a4, $a0
	or	$a0, $a6, $a0
	andi	$a4, $a0, 255
	addi.d	$a0, $a4, -1
	sltui	$a0, $a0, 1
	beq	$a4, $a3, .LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	addi.d	$a4, $a5, -1
	addi.d	$a1, $a1, 4
	bnez	$a5, .LBB9_2
.LBB9_4:                                # %._crit_edge
	ret
.LBB9_5:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	_ZNK6Solver9satisfiedERK6Clause, .Lfunc_end9-_ZNK6Solver9satisfiedERK6Clause
                                        # -- End function
	.globl	_ZN6Solver11cancelUntilEi       # -- Begin function _ZN6Solver11cancelUntilEi
	.p2align	5
	.type	_ZN6Solver11cancelUntilEi,@function
_ZN6Solver11cancelUntilEi:              # @_ZN6Solver11cancelUntilEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 336
	bge	$a1, $a0, .LBB10_5
# %bb.1:
	move	$s0, $a1
	ld.d	$a1, $fp, 328
	ld.w	$s2, $fp, 320
	slli.d	$a0, $s0, 2
	ldx.w	$a0, $a1, $a0
	blt	$a0, $s2, .LBB10_6
# %bb.2:                                # %._crit_edge
	alsl.d	$a1, $s0, $a1, 2
	st.w	$a0, $fp, 376
	ld.w	$a0, $a1, 0
	blt	$a0, $s2, .LBB10_13
.LBB10_3:                               # %_ZN3vecI3LitE6shrinkEi.exit
	ld.w	$a0, $fp, 336
	bge	$s0, $a0, .LBB10_5
.LBB10_4:                               # %.lr.ph.i12
	st.w	$s0, $fp, 336
.LBB10_5:                               # %_ZN3vecIiE6shrinkEi.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB10_6:                               # %.lr.ph
	addi.d	$s1, $fp, 408
	slli.d	$a0, $s2, 2
	addi.d	$s3, $a0, -4
	slli.d	$s4, $s0, 2
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_7:                               # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i
                                        #   in Loop: Header=BB10_9 Depth=1
	ld.d	$a0, $fp, 432
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	bltz	$a0, .LBB10_10
.LBB10_8:                               # %_ZN6Solver14insertVarOrderEi.exit
                                        #   in Loop: Header=BB10_9 Depth=1
	ld.d	$a1, $fp, 328
	ldx.w	$a0, $a1, $s4
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -4
	bge	$a0, $s2, .LBB10_12
.LBB10_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 312
	ldx.w	$a0, $a0, $s3
	ld.d	$a2, $fp, 264
	srai.d	$a1, $a0, 1
	stx.b	$zero, $a2, $a1
	ld.w	$a0, $fp, 440
	blt	$a1, $a0, .LBB10_7
.LBB10_10:                              # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i
                                        #   in Loop: Header=BB10_9 Depth=1
	ld.d	$a0, $fp, 296
	ldx.bu	$a0, $a0, $a1
	beqz	$a0, .LBB10_8
# %bb.11:                               #   in Loop: Header=BB10_9 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN4HeapIN6Solver10VarOrderLtEE6insertEi)
	jirl	$ra, $ra, 0
	b	.LBB10_8
.LBB10_12:                              # %._crit_edge.loopexit
	ld.w	$s2, $fp, 320
	alsl.d	$a1, $s0, $a1, 2
	st.w	$a0, $fp, 376
	ld.w	$a0, $a1, 0
	bge	$a0, $s2, .LBB10_3
.LBB10_13:                              # %.lr.ph.i
	st.w	$a0, $fp, 320
	ld.w	$a0, $fp, 336
	blt	$s0, $a0, .LBB10_4
	b	.LBB10_5
.Lfunc_end10:
	.size	_ZN6Solver11cancelUntilEi, .Lfunc_end10-_ZN6Solver11cancelUntilEi
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6Solver13pickBranchLitEid
.LCPI11_0:
	.dword	0x413534e400000000              # double 1389796
.LCPI11_1:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	_ZN6Solver13pickBranchLitEid
	.p2align	5
	.type	_ZN6Solver13pickBranchLitEid,@function
_ZN6Solver13pickBranchLitEid:           # @_ZN6Solver13pickBranchLitEid
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	move	$fp, $a0
	fld.d	$fa1, $a0, 448
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI11_0)
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI11_1)
	move	$s0, $a1
	fmul.d	$fa1, $fa1, $fs1
	fdiv.d	$fa2, $fa1, $fs0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a0, $fa2
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fs0, $fa1
	fdiv.d	$fa2, $fa1, $fs0
	addi.w	$s2, $zero, -1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	fst.d	$fa1, $fp, 448
	move	$a0, $s2
	bcnez	$fcc0, .LBB11_5
# %bb.1:
	ld.w	$a1, $fp, 424
	move	$a0, $s2
	beqz	$a1, .LBB11_5
# %bb.2:
	fmul.d	$fa0, $fa1, $fs1
	fdiv.d	$fa1, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fdiv.d	$fa1, $fa0, $fs0
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	ld.d	$a0, $fp, 416
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ld.d	$a1, $fp, 264
	fst.d	$fa0, $fp, 448
	ldx.bu	$a1, $a1, $a0
	bnez	$a1, .LBB11_5
# %bb.3:
	ld.d	$a1, $fp, 296
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB11_5
# %bb.4:
	ld.d	$a1, $fp, 120
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 120
.LBB11_5:                               # %.critedge
	addi.d	$s1, $fp, 408
	beq	$a0, $s2, .LBB11_8
	.p2align	4, , 16
.LBB11_6:
	ld.d	$a1, $fp, 264
	ldx.bu	$a1, $a1, $a0
	bnez	$a1, .LBB11_8
# %bb.7:
	ld.d	$a1, $fp, 296
	ldx.bu	$a1, $a1, $a0
	bnez	$a1, .LBB11_11
.LBB11_8:                               # %.critedge2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 424
	beqz	$a0, .LBB11_10
# %bb.9:                                #   in Loop: Header=BB11_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB11_6
	b	.LBB11_8
.LBB11_10:
	move	$a0, $s2
.LBB11_11:
	ori	$a1, $zero, 3
	beq	$s0, $a1, .LBB11_16
# %bb.12:
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB11_15
# %bb.13:
	ori	$a1, $zero, 1
	beq	$s0, $a1, .LBB11_18
# %bb.14:
	move	$a1, $zero
	b	.LBB11_18
.LBB11_15:
	ld.d	$a1, $fp, 280
	ldx.bu	$a1, $a1, $a0
	b	.LBB11_17
.LBB11_16:
	fld.d	$fa0, $fp, 448
	fmul.d	$fa0, $fa0, $fs1
	fdiv.d	$fa1, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fst.d	$fa0, $fp, 448
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
.LBB11_17:
	sltu	$a1, $zero, $a1
.LBB11_18:
	addi.d	$a2, $a0, 1
	sltui	$a2, $a2, 1
	slli.d	$a0, $a0, 1
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a2
	addi.w	$a1, $zero, -2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end11:
	.size	_ZN6Solver13pickBranchLitEid, .Lfunc_end11-_ZN6Solver13pickBranchLitEid
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv,"axG",@progbits,_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv,comdat
	.weak	_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv # -- Begin function _ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv
	.p2align	5
	.type	_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv,@function
_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv: # @_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv
	.cfi_startproc
# %bb.0:
	move	$a1, $a0
	ld.d	$a2, $a0, 8
	ld.w	$a0, $a0, 16
	alsl.d	$a0, $a0, $a2, 2
	ld.w	$a3, $a0, -4
	ld.d	$a4, $a1, 24
	ld.w	$a0, $a2, 0
	st.w	$a3, $a2, 0
	slli.d	$a3, $a3, 2
	stx.w	$zero, $a4, $a3
	slli.d	$a3, $a0, 2
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	stx.w	$a5, $a4, $a3
	ld.w	$a3, $a1, 16
	addi.w	$t1, $a3, -1
	ori	$a4, $zero, 3
	st.w	$t1, $a1, 16
	blt	$a3, $a4, .LBB12_11
# %bb.1:                                # %.lr.ph.i
	ld.d	$a4, $a1, 0
	ld.w	$a3, $a2, 0
	ld.d	$a5, $a4, 0
	slli.d	$a4, $a3, 3
	fldx.d	$fa0, $a5, $a4
	ld.d	$a4, $a1, 24
	move	$t2, $zero
	move	$a6, $zero
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	addi.w	$a7, $t2, 2
	bge	$a7, $t1, .LBB12_5
# %bb.3:                                #   in Loop: Header=BB12_2 Depth=1
	slli.d	$t1, $a7, 2
	ldx.w	$t1, $a2, $t1
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a2, $t2
	slli.d	$t3, $t1, 3
	fldx.d	$fa1, $a5, $t3
	slli.d	$t3, $t2, 3
	fldx.d	$fa2, $a5, $t3
	fcmp.clt.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB12_7
# %bb.4:                                #   in Loop: Header=BB12_2 Depth=1
	move	$t1, $t2
	fmov.d	$fa1, $fa2
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_5:                               # %._crit_edge.i
                                        #   in Loop: Header=BB12_2 Depth=1
	slli.d	$a7, $t0, 2
	ldx.w	$t1, $a2, $a7
	slli.d	$a7, $t1, 3
	fldx.d	$fa1, $a5, $a7
.LBB12_6:                               #   in Loop: Header=BB12_2 Depth=1
	move	$a7, $t0
.LBB12_7:                               #   in Loop: Header=BB12_2 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_9
# %bb.8:                                #   in Loop: Header=BB12_2 Depth=1
	slli.d	$t0, $a6, 2
	stx.w	$t1, $a2, $t0
	slli.d	$t0, $t1, 2
	stx.w	$a6, $a4, $t0
	ld.w	$t1, $a1, 16
	slli.d	$t2, $a7, 1
	addi.w	$t0, $t2, 1
	move	$a6, $a7
	blt	$t0, $t1, .LBB12_2
	b	.LBB12_10
.LBB12_9:
	move	$a7, $a6
.LBB12_10:                              # %_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi.exit
	slli.d	$a1, $a7, 2
	stx.w	$a3, $a2, $a1
	slli.d	$a1, $a3, 2
	stx.w	$a7, $a4, $a1
.LBB12_11:
	ret
.Lfunc_end12:
	.size	_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv, .Lfunc_end12-_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6Solver7analyzeEP6ClauseR3vecI3LitERi
.LCPI13_0:
	.dword	0x4415af1d78b58c40              # double 1.0E+20
.LCPI13_1:
	.dword	0x3bc79ca10c924223              # double 9.9999999999999995E-21
.LCPI13_2:
	.dword	0x54b249ad2594c37d              # double 1.0E+100
.LCPI13_3:
	.dword	0x2b2bff2ee48e0530              # double 1.0E-100
	.text
	.globl	_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi
	.p2align	5
	.type	_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi,@function
_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi: # @_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	move	$s1, $a2
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a2, 12
	ld.d	$a2, $a2, 0
	move	$s2, $a1
	move	$fp, $a0
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	bne	$a4, $a5, .LBB13_2
# %bb.1:
	alsl.d	$a0, $a4, $a4, 1
	addi.w	$a0, $a0, 1
	srai.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	st.w	$a0, $s1, 12
	slli.d	$a1, $a0, 2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a4, $s1, 8
	move	$a2, $a0
	st.d	$a0, $s1, 0
	b	.LBB13_3
.LBB13_2:
	move	$t8, $a3
.LBB13_3:                               # %_ZN3vecI3LitE4pushEv.exit
	move	$a1, $zero
	addi.w	$a0, $zero, -2
	addi.d	$a3, $a4, 1
	st.w	$a3, $s1, 8
	ld.w	$a3, $fp, 320
	slli.d	$a4, $a4, 2
	move	$a5, $a0
	lu32i.d	$a5, 0
	stx.w	$a5, $a2, $a4
	addi.w	$s3, $a3, -1
	st.w	$zero, $t8, 0
	pcalau12i	$a2, %pc_hi20(.LCPI13_2)
	fld.d	$fs0, $a2, %pc_lo12(.LCPI13_2)
	pcalau12i	$a2, %pc_hi20(.LCPI13_3)
	fld.d	$fs1, $a2, %pc_lo12(.LCPI13_3)
	lu12i.w	$a2, -112416
	ori	$a2, $a2, 1328
	lu32i.d	$a2, -262354
	lu52i.d	$a2, $a2, 690
	vreplgr2vr.d	$vr4, $a2
	ori	$s5, $zero, 1
	vst	$vr4, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB13_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_8 Depth 2
                                        #     Child Loop BB13_14 Depth 2
                                        #       Child Loop BB13_21 Depth 3
                                        #       Child Loop BB13_24 Depth 3
                                        #       Child Loop BB13_30 Depth 3
                                        #     Child Loop BB13_43 Depth 2
	ld.wu	$a2, $s2, 0
	andi	$a3, $a2, 1
	beqz	$a3, .LBB13_10
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	fld.s	$fa1, $s2, 4
	fld.d	$fa0, $fp, 216
	fcvt.d.s	$fa1, $fa1
	pcalau12i	$a3, %pc_hi20(.LCPI13_0)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI13_0)
	fadd.d	$fa1, $fa0, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa3, $fa1
	fcmp.cule.d	$fcc0, $fa3, $fa2
	fst.s	$fa1, $s2, 4
	bcnez	$fcc0, .LBB13_10
# %bb.6:                                # %.preheader.i
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.w	$a3, $fp, 208
	pcalau12i	$a4, %pc_hi20(.LCPI13_1)
	blez	$a3, .LBB13_9
# %bb.7:                                # %.lr.ph.i
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a5, $fp, 200
	.p2align	4, , 16
.LBB13_8:                               #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	fld.s	$fa1, $a6, 4
	fld.d	$fa2, $a4, %pc_lo12(.LCPI13_1)
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a6, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	bnez	$a3, .LBB13_8
.LBB13_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB13_4 Depth=1
	fld.d	$fa1, $a4, %pc_lo12(.LCPI13_1)
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 216
.LBB13_10:                              # %_ZN6Solver15claBumpActivityER6Clause.exit
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a0, 2
	sltu	$s8, $zero, $a0
	srli.d	$a0, $a2, 3
	bgeu	$s8, $a0, .LBB13_41
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$s4, $s2, 8
	move	$s7, $a1
	b	.LBB13_14
.LBB13_12:                              #   in Loop: Header=BB13_14 Depth=2
	addi.w	$s7, $s7, 1
	.p2align	4, , 16
.LBB13_13:                              #   in Loop: Header=BB13_14 Depth=2
	ld.wu	$a0, $s2, 0
	addi.d	$s8, $s8, 1
	srli.d	$a0, $a0, 3
	bgeu	$s8, $a0, .LBB13_42
.LBB13_14:                              #   Parent Loop BB13_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_21 Depth 3
                                        #       Child Loop BB13_24 Depth 3
                                        #       Child Loop BB13_30 Depth 3
	slli.d	$a0, $s8, 2
	ldx.w	$s0, $s4, $a0
	ld.d	$a0, $fp, 472
	srai.d	$a1, $s0, 1
	ldx.bu	$a2, $a0, $a1
	bnez	$a2, .LBB13_13
# %bb.15:                               #   in Loop: Header=BB13_14 Depth=2
	ld.d	$a2, $fp, 360
	slli.d	$s6, $a1, 2
	ldx.w	$a2, $a2, $s6
	blez	$a2, .LBB13_13
# %bb.16:                               #   in Loop: Header=BB13_14 Depth=2
	ld.d	$a2, $fp, 224
	fld.d	$fa0, $fp, 240
	slli.d	$a3, $a1, 3
	fldx.d	$fa1, $a2, $a3
	fadd.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fs0
	fstx.d	$fa0, $a2, $a3
	bcnez	$fcc0, .LBB13_26
# %bb.17:                               # %.preheader.i125
                                        #   in Loop: Header=BB13_14 Depth=2
	ld.w	$a3, $fp, 272
	blez	$a3, .LBB13_25
# %bb.18:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB13_14 Depth=2
	ori	$a4, $zero, 4
	bgeu	$a3, $a4, .LBB13_20
# %bb.19:                               #   in Loop: Header=BB13_14 Depth=2
	move	$a4, $zero
	b	.LBB13_23
.LBB13_20:                              # %vector.ph
                                        #   in Loop: Header=BB13_14 Depth=2
	bstrpick.d	$a4, $a3, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a2, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB13_21:                              # %vector.body
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vfmul.d	$vr0, $vr0, $vr4
	vfmul.d	$vr1, $vr1, $vr4
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB13_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB13_14 Depth=2
	beq	$a4, $a3, .LBB13_25
.LBB13_23:                              # %.lr.ph.i128.preheader
                                        #   in Loop: Header=BB13_14 Depth=2
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 3
	.p2align	4, , 16
.LBB13_24:                              # %.lr.ph.i128
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a2, 0
	fmul.d	$fa0, $fa0, $fs1
	fst.d	$fa0, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB13_24
.LBB13_25:                              # %._crit_edge.i126
                                        #   in Loop: Header=BB13_14 Depth=2
	fld.d	$fa0, $fp, 240
	fmul.d	$fa0, $fa0, $fs1
	fst.d	$fa0, $fp, 240
.LBB13_26:                              #   in Loop: Header=BB13_14 Depth=2
	ld.w	$a2, $fp, 440
	bge	$a1, $a2, .LBB13_36
# %bb.27:                               # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i
                                        #   in Loop: Header=BB13_14 Depth=2
	ld.d	$a2, $fp, 432
	ldx.w	$a3, $a2, $s6
	bltz	$a3, .LBB13_36
# %bb.28:                               #   in Loop: Header=BB13_14 Depth=2
	ld.d	$a5, $fp, 416
	slli.d	$a4, $a3, 2
	ldx.w	$a4, $a5, $a4
	beqz	$a3, .LBB13_33
# %bb.29:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB13_14 Depth=2
	ld.d	$a6, $fp, 408
	ld.d	$a6, $a6, 0
	slli.d	$a7, $a4, 3
	fldx.d	$fa0, $a6, $a7
	.p2align	4, , 16
.LBB13_30:                              #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$t0, $a3, -1
	srai.d	$a7, $t0, 1
	slli.d	$t1, $a7, 2
	ldx.w	$t1, $a5, $t1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $a6, $t2
	addi.w	$t2, $a3, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	alsl.d	$t2, $t2, $a5, 2
	bcnez	$fcc0, .LBB13_34
# %bb.31:                               #   in Loop: Header=BB13_30 Depth=3
	st.w	$t1, $t2, 0
	slli.d	$t1, $t1, 2
	stx.w	$a3, $a2, $t1
	move	$a3, $a7
	bltu	$s5, $t0, .LBB13_30
# %bb.32:                               #   in Loop: Header=BB13_14 Depth=2
	move	$a3, $a7
	b	.LBB13_35
.LBB13_33:                              #   in Loop: Header=BB13_14 Depth=2
	move	$a3, $zero
	b	.LBB13_35
.LBB13_34:                              #   in Loop: Header=BB13_14 Depth=2
	move	$a5, $t2
.LBB13_35:                              # %_ZN4HeapIN6Solver10VarOrderLtEE8decreaseEi.exit.i
                                        #   in Loop: Header=BB13_14 Depth=2
	st.w	$a4, $a5, 0
	slli.d	$a4, $a4, 2
	stx.w	$a3, $a2, $a4
.LBB13_36:                              # %_ZN6Solver15varBumpActivityEi.exit
                                        #   in Loop: Header=BB13_14 Depth=2
	stx.b	$s5, $a0, $a1
	ld.d	$a1, $fp, 360
	ldx.w	$a0, $a1, $s6
	ld.w	$a2, $fp, 336
	bge	$a0, $a2, .LBB13_12
# %bb.37:                               #   in Loop: Header=BB13_14 Depth=2
	ld.w	$a2, $s1, 8
	ld.w	$a3, $s1, 12
	ld.d	$a0, $s1, 0
	bne	$a2, $a3, .LBB13_39
# %bb.38:                               #   in Loop: Header=BB13_14 Depth=2
	alsl.d	$a1, $a2, $a2, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a3, $zero, 2
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $s1, 12
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $s1, 8
	ld.d	$a1, $fp, 360
	st.d	$a0, $s1, 0
.LBB13_39:                              # %_ZN3vecI3LitE4pushERKS0_.exit
                                        #   in Loop: Header=BB13_14 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $s1, 8
	slli.d	$a2, $a2, 2
	stx.w	$s0, $a0, $a2
	ldx.w	$a0, $a1, $s6
	ld.w	$a1, $t8, 0
	bge	$a1, $a0, .LBB13_13
# %bb.40:                               #   in Loop: Header=BB13_14 Depth=2
	st.w	$a0, $t8, 0
	b	.LBB13_13
	.p2align	4, , 16
.LBB13_41:                              #   in Loop: Header=BB13_4 Depth=1
	move	$s7, $a1
.LBB13_42:                              # %.preheader179
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $fp, 312
	ld.d	$a1, $fp, 472
	alsl.d	$a2, $s3, $a0, 2
	.p2align	4, , 16
.LBB13_43:                              #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $a2, 0
	srai.d	$a3, $a0, 1
	ldx.bu	$a4, $a1, $a3
	addi.d	$a2, $a2, -4
	addi.w	$s3, $s3, -1
	beqz	$a4, .LBB13_43
# %bb.44:                               #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a2, $fp, 344
	slli.d	$a4, $a3, 3
	ldx.d	$s2, $a2, $a4
	stx.b	$zero, $a1, $a3
	addi.w	$a1, $s7, -1
	blt	$s5, $s7, .LBB13_4
# %bb.45:
	ld.d	$a2, $s1, 0
	ld.bu	$a1, $fp, 88
	xori	$a0, $a0, 1
	st.w	$a0, $a2, 0
	beqz	$a1, .LBB13_49
# %bb.46:                               # %.preheader176
	ld.w	$s3, $s1, 8
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB13_54
# %bb.47:                               # %.lr.ph201
	ld.d	$a0, $fp, 360
	ori	$a3, $zero, 9
	ori	$a1, $zero, 1
	bgeu	$s3, $a3, .LBB13_57
# %bb.48:
	move	$s2, $zero
	ori	$a3, $zero, 1
	b	.LBB13_60
.LBB13_49:
	ld.d	$a0, $fp, 504
	beqz	$a0, .LBB13_55
# %bb.50:                               # %.preheader.i.i141
	move	$a1, $zero
	st.w	$zero, $fp, 512
	ld.w	$s3, $s1, 8
	bge	$a1, $s3, .LBB13_56
.LBB13_51:
	ld.w	$a2, $fp, 516
	bge	$a2, $s3, .LBB13_71
# %bb.52:
	beqz	$a2, .LBB13_69
	.p2align	4, , 16
.LBB13_53:                              # %.preheader.i.i.i158
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a1, $a2, $a2, 1
	addi.w	$a1, $a1, 1
	srai.d	$a2, $a1, 1
	blt	$a2, $s3, .LBB13_53
	b	.LBB13_70
.LBB13_54:
	move	$s2, $zero
	b	.LBB13_62
.LBB13_55:                              # %._ZN3vecI3LitE5clearEb.exit_crit_edge.i162
	ld.w	$a1, $fp, 512
	ld.w	$s3, $s1, 8
	blt	$a1, $s3, .LBB13_51
.LBB13_56:                              # %_ZN3vecI3LitE6growToEi.exit.i144
	ori	$s4, $zero, 1
	bgtz	$s3, .LBB13_80
	b	.LBB13_112
.LBB13_57:                              # %vector.ph316
	addi.d	$a4, $s3, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a4
	bstrins.d	$a3, $a6, 2, 0
	vrepli.b	$vr0, 0
	addi.d	$a6, $a2, 20
	move	$a7, $a5
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB13_58:                              # %vector.body319
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vsrai.w	$vr2, $vr2, 1
	vsrai.w	$vr3, $vr3, 1
	vshuf4i.w	$vr4, $vr2, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr5, $vr3, 50
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$t0, $vr2, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr2, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr4, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr4, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr3, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr3, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr5, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$t7, $vr5, 1
	slli.d	$t7, $t7, 2
	ldx.w	$t0, $a0, $t0
	ldx.w	$t1, $a0, $t1
	ldx.w	$t2, $a0, $t2
	ldx.w	$t3, $a0, $t3
	vinsgr2vr.w	$vr2, $t0, 0
	vinsgr2vr.w	$vr2, $t1, 1
	vinsgr2vr.w	$vr2, $t2, 2
	vinsgr2vr.w	$vr2, $t3, 3
	ldx.w	$t0, $a0, $t4
	ldx.w	$t1, $a0, $t5
	ldx.w	$t2, $a0, $t6
	ldx.w	$t3, $a0, $t7
	vinsgr2vr.w	$vr3, $t0, 0
	vinsgr2vr.w	$vr3, $t1, 1
	vinsgr2vr.w	$vr3, $t2, 2
	vinsgr2vr.w	$vr3, $t3, 3
	vbitset.w	$vr0, $vr0, $vr2
	vbitset.w	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB13_58
# %bb.59:                               # %middle.block326
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$s2, $vr0, 0
	beq	$a4, $a5, .LBB13_62
.LBB13_60:                              # %scalar.ph314.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a3, $s3, $a3
	.p2align	4, , 16
.LBB13_61:                              # %scalar.ph314
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a4, $a4, 1
	bstrins.d	$a4, $zero, 1, 0
	ldx.wu	$a4, $a0, $a4
	sll.w	$a4, $a1, $a4
	or	$s2, $a4, $s2
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB13_61
.LBB13_62:                              # %._crit_edge
	ld.d	$a0, $fp, 504
	beqz	$a0, .LBB13_67
# %bb.63:                               # %.preheader.i.i
	st.w	$zero, $fp, 512
	ld.w	$s3, $s1, 8
	move	$a1, $zero
	bge	$a1, $s3, .LBB13_68
.LBB13_64:
	ld.w	$a2, $fp, 516
	bge	$a2, $s3, .LBB13_93
# %bb.65:
	beqz	$a2, .LBB13_91
	.p2align	4, , 16
.LBB13_66:                              # %.preheader.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a1, $a2, $a2, 1
	addi.w	$a1, $a1, 1
	srai.d	$a2, $a1, 1
	blt	$a2, $s3, .LBB13_66
	b	.LBB13_92
.LBB13_67:                              # %._ZN3vecI3LitE5clearEb.exit_crit_edge.i
	ld.w	$a1, $fp, 512
	blt	$a1, $s3, .LBB13_64
.LBB13_68:                              # %_ZN3vecI3LitE6growToEi.exit.i
	ori	$s4, $zero, 1
	bgtz	$s3, .LBB13_102
	b	.LBB13_112
.LBB13_69:
	ori	$a1, $zero, 2
	slt	$a2, $a1, $s3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a1
.LBB13_70:                              # %.loopexit.i.i.i159
	st.w	$a2, $fp, 516
	slli.d	$a1, $a2, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 512
	st.d	$a0, $fp, 504
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
.LBB13_71:                              # %_ZN3vecI3LitE4growEi.exit.i.i150
	bge	$a1, $s3, .LBB13_79
# %bb.72:                               # %.lr.ph.i.i153
	sub.d	$a3, $s3, $a1
	ori	$a2, $zero, 8
	bgeu	$a3, $a2, .LBB13_74
# %bb.73:
	move	$a2, $a1
	b	.LBB13_77
.LBB13_74:                              # %vector.ph305
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	add.d	$a2, $a4, $a1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, 16
	vrepli.w	$vr0, -2
	move	$a5, $a4
	.p2align	4, , 16
.LBB13_75:                              # %vector.body308
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 32
	bnez	$a5, .LBB13_75
# %bb.76:                               # %middle.block311
	beq	$a3, $a4, .LBB13_79
.LBB13_77:                              # %scalar.ph303.preheader
	sub.d	$a1, $s3, $a2
	alsl.d	$a2, $a2, $a0, 2
	addi.w	$a3, $zero, -2
	lu32i.d	$a3, 0
	.p2align	4, , 16
.LBB13_78:                              # %scalar.ph303
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB13_78
.LBB13_79:                              # %._crit_edge.i.i151
	st.w	$s3, $fp, 512
	ld.w	$s3, $s1, 8
	ori	$s4, $zero, 1
	blez	$s3, .LBB13_112
.LBB13_80:                              # %.lr.ph.i146
	ld.d	$a1, $s1, 0
	move	$a2, $zero
	.p2align	4, , 16
.LBB13_81:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	st.w	$a3, $a0, 0
	ld.w	$s3, $s1, 8
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	blt	$a2, $s3, .LBB13_81
# %bb.82:                               # %_ZNK3vecI3LitE6copyToERS1_.exit164
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB13_112
# %bb.83:                               # %.lr.ph196
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 344
	ld.d	$a2, $fp, 472
	ori	$s0, $zero, 1
	ori	$a3, $zero, 16
	ori	$s4, $zero, 1
	b	.LBB13_85
	.p2align	4, , 16
.LBB13_84:                              # %.loopexit177
                                        #   in Loop: Header=BB13_85 Depth=1
	addi.d	$s0, $s0, 1
	bge	$s0, $s3, .LBB13_113
.LBB13_85:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_88 Depth 2
	slli.d	$a4, $s0, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$a5, $a4, 2
	bstrins.d	$a5, $zero, 2, 0
	ldx.d	$a6, $a1, $a5
	ld.w	$a7, $a6, 0
	bltu	$a7, $a3, .LBB13_84
# %bb.86:                               # %.lr.ph193
                                        #   in Loop: Header=BB13_85 Depth=1
	ld.d	$a5, $fp, 360
	bstrpick.d	$a7, $a7, 31, 3
	addi.d	$a6, $a6, 12
	addi.d	$a7, $a7, -1
	b	.LBB13_88
	.p2align	4, , 16
.LBB13_87:                              #   in Loop: Header=BB13_88 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	beqz	$a7, .LBB13_84
.LBB13_88:                              #   Parent Loop BB13_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a6, 0
	srai.d	$t0, $t0, 1
	ldx.bu	$t1, $a2, $t0
	bnez	$t1, .LBB13_87
# %bb.89:                               #   in Loop: Header=BB13_88 Depth=2
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a5, $t0
	blez	$t0, .LBB13_87
# %bb.90:                               #   in Loop: Header=BB13_85 Depth=1
	slli.d	$a5, $s4, 2
	stx.w	$a4, $a0, $a5
	ld.w	$s3, $s1, 8
	addi.w	$s4, $s4, 1
	b	.LBB13_84
.LBB13_91:
	ori	$a1, $zero, 2
	slt	$a2, $a1, $s3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a1
.LBB13_92:                              # %.loopexit.i.i.i
	st.w	$a2, $fp, 516
	slli.d	$a1, $a2, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 512
	st.d	$a0, $fp, 504
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
.LBB13_93:                              # %_ZN3vecI3LitE4growEi.exit.i.i
	bge	$a1, $s3, .LBB13_101
# %bb.94:                               # %.lr.ph.i.i
	sub.d	$a3, $s3, $a1
	ori	$a2, $zero, 8
	bgeu	$a3, $a2, .LBB13_96
# %bb.95:
	move	$a2, $a1
	b	.LBB13_99
.LBB13_96:                              # %vector.ph331
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	add.d	$a2, $a4, $a1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, 16
	vrepli.w	$vr0, -2
	move	$a5, $a4
	.p2align	4, , 16
.LBB13_97:                              # %vector.body334
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 32
	bnez	$a5, .LBB13_97
# %bb.98:                               # %middle.block338
	beq	$a3, $a4, .LBB13_101
.LBB13_99:                              # %scalar.ph329.preheader
	sub.d	$a1, $s3, $a2
	alsl.d	$a2, $a2, $a0, 2
	addi.w	$a3, $zero, -2
	lu32i.d	$a3, 0
	.p2align	4, , 16
.LBB13_100:                             # %scalar.ph329
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB13_100
.LBB13_101:                             # %._crit_edge.i.i
	st.w	$s3, $fp, 512
	ld.w	$s3, $s1, 8
	ori	$s4, $zero, 1
	blez	$s3, .LBB13_112
.LBB13_102:                             # %.lr.ph.i134
	ld.d	$a1, $s1, 0
	move	$a2, $zero
	.p2align	4, , 16
.LBB13_103:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	st.w	$a3, $a0, 0
	ld.w	$s3, $s1, 8
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	blt	$a2, $s3, .LBB13_103
# %bb.104:                              # %_ZNK3vecI3LitE6copyToERS1_.exit
	ori	$a0, $zero, 2
	ori	$s0, $zero, 1
	blt	$s3, $a0, .LBB13_113
# %bb.105:                              # %.lr.ph205.preheader
	ori	$s0, $zero, 1
	ori	$s5, $zero, 4
	ori	$s6, $zero, 1
	ori	$s4, $zero, 1
	b	.LBB13_109
	.p2align	4, , 16
.LBB13_106:                             # %._crit_edge247
                                        #   in Loop: Header=BB13_109 Depth=1
	ld.d	$a0, $s1, 0
	ldx.w	$a1, $a0, $s5
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
.LBB13_107:                             #   in Loop: Header=BB13_109 Depth=1
	slli.d	$a2, $s4, 2
	addi.w	$s4, $s4, 1
	stx.w	$a1, $a0, $a2
.LBB13_108:                             #   in Loop: Header=BB13_109 Depth=1
	ld.w	$s3, $s1, 8
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 1
	bge	$s6, $s3, .LBB13_113
.LBB13_109:                             # %.lr.ph205
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ldx.w	$a1, $a0, $s5
	ld.d	$a2, $fp, 344
	slli.d	$a3, $a1, 2
	bstrins.d	$a3, $zero, 2, 0
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB13_107
# %bb.110:                              #   in Loop: Header=BB13_109 Depth=1
	bstrpick.d	$a1, $a1, 31, 0
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN6Solver12litRedundantE3Litj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_106
# %bb.111:                              #   in Loop: Header=BB13_109 Depth=1
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	b	.LBB13_108
.LBB13_112:
	ori	$s0, $zero, 1
.LBB13_113:                             # %.loopexit
	ld.d	$a0, $fp, 160
	add.d	$a1, $a0, $s3
	sub.w	$a0, $s0, $s4
	st.d	$a1, $fp, 160
	blez	$a0, .LBB13_115
# %bb.114:                              # %.lr.ph.i165
	sub.w	$s3, $s3, $a0
	st.w	$s3, $s1, 8
.LBB13_115:                             # %_ZN3vecI3LitE6shrinkEi.exit
	ld.d	$a0, $fp, 168
	add.d	$a0, $a0, $s3
	ori	$a2, $zero, 1
	st.d	$a0, $fp, 168
	bne	$s3, $a2, .LBB13_117
# %bb.116:
	move	$a0, $zero
	st.w	$a0, $t8, 0
	ld.w	$a0, $fp, 512
	bgtz	$a0, .LBB13_121
	b	.LBB13_123
.LBB13_117:                             # %.preheader
	ld.d	$a1, $s1, 0
	ld.d	$a0, $fp, 360
	ori	$a3, $zero, 3
	blt	$s3, $a3, .LBB13_120
# %bb.118:                              # %.lr.ph210
	addi.d	$a3, $a1, 8
	ori	$a4, $zero, 2
	sub.d	$a5, $a4, $s3
	ori	$a2, $zero, 1
	addi.w	$a6, $zero, -4
	.p2align	4, , 16
.LBB13_119:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a3, 0
	slli.d	$t0, $a2, 2
	ldx.w	$t0, $a1, $t0
	slli.d	$a7, $a7, 1
	and	$a7, $a7, $a6
	ldx.w	$a7, $a0, $a7
	slli.d	$t0, $t0, 1
	and	$t0, $t0, $a6
	ldx.w	$t0, $a0, $t0
	slt	$a7, $t0, $a7
	masknez	$a2, $a2, $a7
	maskeqz	$a7, $a4, $a7
	or	$a2, $a7, $a2
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB13_119
.LBB13_120:                             # %._crit_edge211
	slli.d	$a2, $a2, 2
	ld.w	$a3, $a1, 4
	ldx.w	$a4, $a1, $a2
	stx.w	$a3, $a1, $a2
	st.w	$a4, $a1, 4
	slli.d	$a1, $a4, 1
	bstrins.d	$a1, $zero, 1, 0
	ldx.w	$a0, $a0, $a1
	st.w	$a0, $t8, 0
	ld.w	$a0, $fp, 512
	blez	$a0, .LBB13_123
.LBB13_121:                             # %.lr.ph215
	move	$a0, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB13_122:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 504
	ldx.w	$a2, $a2, $a0
	ld.d	$a3, $fp, 472
	srai.d	$a2, $a2, 1
	stx.b	$zero, $a3, $a2
	ld.w	$a2, $fp, 512
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	blt	$a1, $a2, .LBB13_122
.LBB13_123:                             # %._crit_edge216
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end13:
	.size	_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi, .Lfunc_end13-_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi
                                        # -- End function
	.globl	_ZN6Solver12litRedundantE3Litj  # -- Begin function _ZN6Solver12litRedundantE3Litj
	.p2align	5
	.type	_ZN6Solver12litRedundantE3Litj,@function
_ZN6Solver12litRedundantE3Litj:         # @_ZN6Solver12litRedundantE3Litj
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 488
	move	$s0, $a2
	move	$s1, $a1
	beqz	$a0, .LBB14_25
# %bb.1:                                # %.preheader.i
	move	$a1, $zero
	st.w	$zero, $fp, 496
	ld.w	$a2, $fp, 500
	bne	$a1, $a2, .LBB14_3
.LBB14_2:
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $fp, 500
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 496
	st.d	$a0, $fp, 488
.LBB14_3:                               # %_ZN3vecI3LitE4pushERKS0_.exit
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 496
	slli.d	$a1, $a1, 2
	stx.w	$s1, $a0, $a1
	ld.w	$a1, $fp, 496
	blez	$a1, .LBB14_24
# %bb.4:
	ld.w	$s1, $fp, 512
	ori	$s2, $zero, 16
	ori	$s3, $zero, 1
	ori	$s4, $zero, 2
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_5:                               # %.critedge31.loopexit.loopexit
                                        #   in Loop: Header=BB14_7 Depth=1
	ld.w	$a1, $fp, 496
.LBB14_6:                               # %.critedge31.loopexit
                                        #   in Loop: Header=BB14_7 Depth=1
	blez	$a1, .LBB14_24
.LBB14_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_11 Depth 2
	ld.d	$a0, $fp, 488
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$a0, $a0, -4
	ld.d	$a2, $fp, 344
	slli.d	$a0, $a0, 2
	bstrins.d	$a0, $zero, 2, 0
	ldx.d	$s5, $a2, $a0
	ld.w	$a0, $s5, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $fp, 496
	bltu	$a0, $s2, .LBB14_6
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB14_7 Depth=1
	ori	$s6, $zero, 1
	ori	$s7, $zero, 12
	b	.LBB14_11
	.p2align	4, , 16
.LBB14_9:                               # %_ZN3vecI3LitE4pushERKS0_.exit37
                                        #   in Loop: Header=BB14_11 Depth=2
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 512
	slli.d	$a1, $a1, 2
	stx.w	$s8, $a0, $a1
	ld.w	$a0, $s5, 0
.LBB14_10:                              #   in Loop: Header=BB14_11 Depth=2
	addi.d	$s6, $s6, 1
	bstrpick.d	$a1, $a0, 31, 3
	addi.d	$s7, $s7, 4
	bgeu	$s6, $a1, .LBB14_5
.LBB14_11:                              #   Parent Loop BB14_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s8, $s5, $s7
	ld.d	$a1, $fp, 472
	srai.d	$a2, $s8, 1
	ldx.bu	$a3, $a1, $a2
	bnez	$a3, .LBB14_10
# %bb.12:                               #   in Loop: Header=BB14_11 Depth=2
	ld.d	$a3, $fp, 360
	slli.d	$a4, $a2, 2
	ldx.w	$a3, $a3, $a4
	blez	$a3, .LBB14_10
# %bb.13:                               #   in Loop: Header=BB14_11 Depth=2
	ld.d	$a0, $fp, 344
	slli.d	$a4, $a2, 3
	ldx.d	$a0, $a0, $a4
	beqz	$a0, .LBB14_19
# %bb.14:                               #   in Loop: Header=BB14_11 Depth=2
	srl.w	$a0, $s0, $a3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB14_19
# %bb.15:                               #   in Loop: Header=BB14_11 Depth=2
	stx.b	$s3, $a1, $a2
	ld.w	$a1, $fp, 496
	ld.w	$a2, $fp, 500
	ld.d	$a0, $fp, 488
	bne	$a1, $a2, .LBB14_17
# %bb.16:                               #   in Loop: Header=BB14_11 Depth=2
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	slt	$a2, $s4, $a1
	masknez	$a3, $s4, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 500
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 496
	st.d	$a0, $fp, 488
.LBB14_17:                              # %_ZN3vecI3LitE4pushERKS0_.exit34
                                        #   in Loop: Header=BB14_11 Depth=2
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 496
	slli.d	$a1, $a1, 2
	stx.w	$s8, $a0, $a1
	ld.w	$a1, $fp, 512
	ld.w	$a2, $fp, 516
	ld.d	$a0, $fp, 504
	bne	$a1, $a2, .LBB14_9
# %bb.18:                               #   in Loop: Header=BB14_11 Depth=2
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	slt	$a2, $s4, $a1
	masknez	$a3, $s4, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 516
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 512
	st.d	$a0, $fp, 504
	b	.LBB14_9
.LBB14_19:
	ld.w	$a0, $fp, 512
	bge	$s1, $a0, .LBB14_26
# %bb.20:                               # %.lr.ph51.preheader
	slli.d	$a0, $s1, 2
	move	$a1, $s1
	.p2align	4, , 16
.LBB14_21:                              # %.lr.ph51
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 504
	ldx.w	$a2, $a2, $a0
	ld.d	$a3, $fp, 472
	srai.d	$a2, $a2, 1
	stx.b	$zero, $a3, $a2
	ld.w	$a2, $fp, 512
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	blt	$a1, $a2, .LBB14_21
# %bb.22:                               # %.critedge
	move	$a0, $zero
	bge	$s1, $a2, .LBB14_27
# %bb.23:                               # %.lr.ph.i
	st.w	$s1, $fp, 512
	b	.LBB14_27
.LBB14_24:
	ori	$a0, $zero, 1
	b	.LBB14_27
.LBB14_25:                              # %._ZN3vecI3LitE5clearEb.exit_crit_edge
	ld.w	$a1, $fp, 496
	ld.w	$a2, $fp, 500
	beq	$a1, $a2, .LBB14_2
	b	.LBB14_3
.LBB14_26:
	move	$a0, $zero
.LBB14_27:                              # %_ZN3vecI3LitE6shrinkEi.exit
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end14:
	.size	_ZN6Solver12litRedundantE3Litj, .Lfunc_end14-_ZN6Solver12litRedundantE3Litj
                                        # -- End function
	.globl	_ZN6Solver12analyzeFinalE3LitR3vecIS0_E # -- Begin function _ZN6Solver12analyzeFinalE3LitR3vecIS0_E
	.p2align	5
	.type	_ZN6Solver12analyzeFinalE3LitR3vecIS0_E,@function
_ZN6Solver12analyzeFinalE3LitR3vecIS0_E: # @_ZN6Solver12analyzeFinalE3LitR3vecIS0_E
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a2
	ld.d	$a2, $a2, 0
	move	$s1, $a1
	move	$s0, $a0
	beqz	$a2, .LBB15_20
# %bb.1:                                # %.preheader.i
	move	$a1, $zero
	st.w	$zero, $fp, 8
	ld.w	$a0, $fp, 12
	bne	$a1, $a0, .LBB15_3
.LBB15_2:
	alsl.d	$a0, $a1, $a1, 1
	addi.w	$a0, $a0, 1
	srai.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 12
	slli.d	$a1, $a0, 2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$a2, $a0
	st.d	$a0, $fp, 0
.LBB15_3:                               # %_ZN3vecI3LitE4pushERKS0_.exit
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 8
	slli.d	$a0, $a1, 2
	stx.w	$s1, $a2, $a0
	ld.w	$a0, $s0, 336
	beqz	$a0, .LBB15_19
# %bb.4:
	ld.d	$a0, $s0, 472
	addi.w	$a1, $s1, 0
	srai.d	$s1, $a1, 1
	ori	$s2, $zero, 1
	stx.b	$s2, $a0, $s1
	ld.d	$a0, $s0, 328
	ld.w	$s3, $s0, 320
	ld.w	$a0, $a0, 0
	bge	$a0, $s3, .LBB15_18
# %bb.5:
	ori	$s4, $zero, 2
	ori	$s5, $zero, 16
	b	.LBB15_9
	.p2align	4, , 16
.LBB15_6:                               # %_ZN3vecI3LitE4pushERKS0_.exit26
                                        #   in Loop: Header=BB15_9 Depth=1
	xori	$a2, $s7, 1
	addi.d	$a3, $a1, 1
	st.w	$a3, $fp, 8
	slli.d	$a1, $a1, 2
	stx.w	$a2, $a0, $a1
.LBB15_7:                               # %.loopexit
                                        #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $s0, 472
	stx.b	$zero, $a0, $s6
	ld.d	$a0, $s0, 328
	ld.w	$a0, $a0, 0
.LBB15_8:                               #   in Loop: Header=BB15_9 Depth=1
	bge	$a0, $s3, .LBB15_18
.LBB15_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_14 Depth 2
	ld.d	$a1, $s0, 312
	addi.d	$s3, $s3, -1
	slli.d	$a2, $s3, 2
	ldx.w	$s7, $a1, $a2
	ld.d	$a1, $s0, 472
	srai.d	$s6, $s7, 1
	ldx.bu	$a1, $a1, $s6
	beqz	$a1, .LBB15_8
# %bb.10:                               #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $s0, 344
	slli.d	$a1, $s6, 3
	ldx.d	$a0, $a0, $a1
	beqz	$a0, .LBB15_16
# %bb.11:                               # %.preheader
                                        #   in Loop: Header=BB15_9 Depth=1
	ld.w	$a1, $a0, 0
	bltu	$a1, $s5, .LBB15_7
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB15_9 Depth=1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 12
	b	.LBB15_14
	.p2align	4, , 16
.LBB15_13:                              #   in Loop: Header=BB15_14 Depth=2
	addi.d	$a2, $a2, 1
	bstrpick.d	$a4, $a1, 31, 3
	addi.d	$a3, $a3, 4
	bgeu	$a2, $a4, .LBB15_7
.LBB15_14:                              #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a4, $a0, $a3
	ld.d	$a5, $s0, 360
	srai.d	$a4, $a4, 1
	slli.d	$a6, $a4, 2
	ldx.w	$a5, $a5, $a6
	blez	$a5, .LBB15_13
# %bb.15:                               #   in Loop: Header=BB15_14 Depth=2
	ld.d	$a1, $s0, 472
	stx.b	$s2, $a1, $a4
	ld.w	$a1, $a0, 0
	b	.LBB15_13
	.p2align	4, , 16
.LBB15_16:                              #   in Loop: Header=BB15_9 Depth=1
	ld.w	$a1, $fp, 8
	ld.w	$a2, $fp, 12
	ld.d	$a0, $fp, 0
	bne	$a1, $a2, .LBB15_6
# %bb.17:                               #   in Loop: Header=BB15_9 Depth=1
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	slt	$a2, $s4, $a1
	masknez	$a3, $s4, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 12
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	st.d	$a0, $fp, 0
	b	.LBB15_6
.LBB15_18:                              # %._crit_edge
	ld.d	$a0, $s0, 472
	stx.b	$zero, $a0, $s1
.LBB15_19:
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB15_20:                              # %._ZN3vecI3LitE5clearEb.exit_crit_edge
	ld.w	$a1, $fp, 8
	ld.w	$a0, $fp, 12
	beq	$a1, $a0, .LBB15_2
	b	.LBB15_3
.Lfunc_end15:
	.size	_ZN6Solver12analyzeFinalE3LitR3vecIS0_E, .Lfunc_end15-_ZN6Solver12analyzeFinalE3LitR3vecIS0_E
                                        # -- End function
	.globl	_ZN6Solver8reduceDBEv           # -- Begin function _ZN6Solver8reduceDBEv
	.p2align	5
	.type	_ZN6Solver8reduceDBEv,@function
_ZN6Solver8reduceDBEv:                  # @_ZN6Solver8reduceDBEv
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	move	$fp, $a0
	fld.d	$fs0, $a0, 216
	ld.w	$s0, $a0, 208
	ld.d	$a0, $a0, 200
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 208
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB16_8
# %bb.1:                                # %.lr.ph
	move	$s2, $zero
	move	$s4, $zero
	move	$s5, $zero
	move	$s3, $zero
	ori	$s6, $zero, 24
	ori	$s7, $zero, 1
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_2:                               #   in Loop: Header=BB16_4 Depth=1
	slli.d	$a2, $s3, 3
	addi.w	$s3, $s3, 1
	stx.d	$s1, $a1, $a2
.LBB16_3:                               #   in Loop: Header=BB16_4 Depth=1
	addi.d	$s5, $s5, 1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	srai.d	$a1, $a1, 1
	addi.d	$s4, $s4, 8
	addi.w	$s2, $s2, 1
	bge	$s5, $a1, .LBB16_9
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 200
	ldx.d	$s1, $a1, $s4
	ld.w	$a2, $s1, 0
	bltu	$a2, $s6, .LBB16_2
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	ld.w	$a2, $s1, 8
	ld.d	$a4, $fp, 344
	srai.d	$a3, $a2, 1
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	bne	$a4, $s1, .LBB16_7
# %bb.6:                                # %_ZNK6Solver6lockedERK6Clause.exit
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.d	$a4, $fp, 264
	ldx.b	$a3, $a4, $a3
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	sub.d	$a4, $zero, $a3
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $a4, $a2
	or	$a2, $a3, $a2
	andi	$a2, $a2, 255
	beq	$a2, $s7, .LBB16_2
.LBB16_7:                               # %_ZNK6Solver6lockedERK6Clause.exit.thread
                                        #   in Loop: Header=BB16_4 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN6Solver12detachClauseER6Clause)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 208
	b	.LBB16_3
.LBB16_8:
	move	$s3, $zero
	move	$s2, $zero
.LBB16_9:                               # %.preheader
	bge	$s2, $a0, .LBB16_17
# %bb.10:                               # %.lr.ph29
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs0, $fs0, $fa0
	bstrpick.d	$a1, $s2, 31, 0
	slli.d	$s1, $a1, 3
	ori	$s4, $zero, 24
	ori	$s5, $zero, 1
	b	.LBB16_12
	.p2align	4, , 16
.LBB16_11:                              #   in Loop: Header=BB16_12 Depth=1
	slli.d	$a2, $s3, 3
	addi.w	$s3, $s3, 1
	stx.d	$s0, $a1, $a2
	addi.w	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a0, .LBB16_17
.LBB16_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 200
	ldx.d	$s0, $a1, $s1
	ld.w	$a2, $s0, 0
	bltu	$a2, $s4, .LBB16_11
# %bb.13:                               #   in Loop: Header=BB16_12 Depth=1
	ld.w	$a2, $s0, 8
	ld.d	$a4, $fp, 344
	srai.d	$a3, $a2, 1
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	bne	$a4, $s0, .LBB16_15
# %bb.14:                               # %_ZNK6Solver6lockedERK6Clause.exit23
                                        #   in Loop: Header=BB16_12 Depth=1
	ld.d	$a4, $fp, 264
	ldx.b	$a3, $a4, $a3
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	sub.d	$a4, $zero, $a3
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $a4, $a2
	or	$a2, $a3, $a2
	andi	$a2, $a2, 255
	beq	$a2, $s5, .LBB16_11
.LBB16_15:                              # %_ZNK6Solver6lockedERK6Clause.exit23.thread
                                        #   in Loop: Header=BB16_12 Depth=1
	fld.s	$fa0, $s0, 4
	fcvt.d.s	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB16_11
# %bb.16:                               #   in Loop: Header=BB16_12 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6Solver12detachClauseER6Clause)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 208
	addi.w	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB16_12
.LBB16_17:                              # %._crit_edge
	sub.w	$a1, $s2, $s3
	blez	$a1, .LBB16_19
# %bb.18:                               # %.lr.ph.i
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 208
.LBB16_19:                              # %_ZN3vecIP6ClauseE6shrinkEi.exit
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end16:
	.size	_ZN6Solver8reduceDBEv, .Lfunc_end16-_ZN6Solver8reduceDBEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6Solver15removeSatisfiedER3vecIP6ClauseE # -- Begin function _ZN6Solver15removeSatisfiedER3vecIP6ClauseE
	.p2align	5
	.type	_ZN6Solver15removeSatisfiedER3vecIP6ClauseE,@function
_ZN6Solver15removeSatisfiedER3vecIP6ClauseE: # @_ZN6Solver15removeSatisfiedER3vecIP6ClauseE
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
	move	$fp, $a1
	ld.w	$a1, $a1, 8
	blez	$a1, .LBB17_10
# %bb.1:                                # %.lr.ph
	move	$s0, $a0
	move	$s2, $zero
	move	$s4, $zero
	ori	$s3, $zero, 8
	ori	$s5, $zero, 1
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %.loopexit
                                        #   in Loop: Header=BB17_3 Depth=1
	slli.d	$a2, $s4, 3
	addi.w	$s4, $s4, 1
	stx.d	$s1, $a0, $a2
	addi.d	$s2, $s2, 1
	bge	$s2, $a1, .LBB17_8
.LBB17_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	ld.d	$a0, $fp, 0
	slli.d	$a2, $s2, 3
	ldx.d	$s1, $a0, $a2
	ld.w	$a3, $s1, 0
	bltu	$a3, $s3, .LBB17_2
# %bb.4:                                # %.lr.ph.i
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a2, $zero
	bstrpick.d	$a4, $a3, 31, 3
	ld.d	$a3, $s0, 264
	slli.d	$a4, $a4, 2
	bstrpick.d	$a4, $a4, 62, 2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB17_5:                               #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $s1, $a2
	ld.w	$a5, $a5, 8
	srai.d	$a6, $a5, 1
	ldx.b	$a6, $a3, $a6
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	sub.d	$a7, $zero, $a6
	maskeqz	$a6, $a6, $a5
	masknez	$a5, $a7, $a5
	or	$a5, $a6, $a5
	andi	$a5, $a5, 255
	beq	$a5, $s5, .LBB17_7
# %bb.6:                                #   in Loop: Header=BB17_5 Depth=2
	addi.d	$a2, $a2, 4
	bne	$a4, $a2, .LBB17_5
	b	.LBB17_2
	.p2align	4, , 16
.LBB17_7:                               # %_ZNK6Solver9satisfiedERK6Clause.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN6Solver12detachClauseER6Clause)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	addi.d	$s2, $s2, 1
	blt	$s2, $a1, .LBB17_3
.LBB17_8:                               # %._crit_edge
	sub.w	$a0, $s2, $s4
	blez	$a0, .LBB17_10
# %bb.9:                                # %.lr.ph.i15
	sub.d	$a0, $a1, $a0
	st.w	$a0, $fp, 8
.LBB17_10:                              # %_ZN3vecIP6ClauseE6shrinkEi.exit
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
.Lfunc_end17:
	.size	_ZN6Solver15removeSatisfiedER3vecIP6ClauseE, .Lfunc_end17-_ZN6Solver15removeSatisfiedER3vecIP6ClauseE
                                        # -- End function
	.globl	_ZN6Solver8simplifyEv           # -- Begin function _ZN6Solver8simplifyEv
	.p2align	5
	.type	_ZN6Solver8simplifyEv,@function
_ZN6Solver8simplifyEv:                  # @_ZN6Solver8simplifyEv
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.bu	$a0, $a0, 176
	beqz	$a0, .LBB18_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver9propagateEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_4
.LBB18_2:
	move	$a0, $zero
	st.b	$zero, $fp, 176
.LBB18_3:
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB18_4:
	ld.w	$a1, $fp, 320
	ld.w	$a2, $fp, 380
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB18_3
# %bb.5:
	ld.d	$a1, $fp, 384
	bgtz	$a1, .LBB18_3
# %bb.6:
	ld.w	$a0, $fp, 208
	blez	$a0, .LBB18_16
# %bb.7:                                # %.lr.ph.i
	move	$s1, $zero
	move	$s3, $zero
	ori	$s2, $zero, 8
	ori	$s4, $zero, 1
	b	.LBB18_9
	.p2align	4, , 16
.LBB18_8:                               # %.loopexit.i
                                        #   in Loop: Header=BB18_9 Depth=1
	slli.d	$a2, $s3, 3
	addi.w	$s3, $s3, 1
	stx.d	$s0, $a1, $a2
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB18_14
.LBB18_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_11 Depth 2
	ld.d	$a1, $fp, 200
	slli.d	$a2, $s1, 3
	ldx.d	$s0, $a1, $a2
	ld.w	$a3, $s0, 0
	bltu	$a3, $s2, .LBB18_8
# %bb.10:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB18_9 Depth=1
	move	$a2, $zero
	bstrpick.d	$a4, $a3, 31, 3
	ld.d	$a3, $fp, 264
	slli.d	$a4, $a4, 2
	bstrpick.d	$a4, $a4, 62, 2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB18_11:                              #   Parent Loop BB18_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $s0, $a2
	ld.w	$a5, $a5, 8
	srai.d	$a6, $a5, 1
	ldx.b	$a6, $a3, $a6
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	sub.d	$a7, $zero, $a6
	maskeqz	$a6, $a6, $a5
	masknez	$a5, $a7, $a5
	or	$a5, $a6, $a5
	andi	$a5, $a5, 255
	beq	$a5, $s4, .LBB18_13
# %bb.12:                               #   in Loop: Header=BB18_11 Depth=2
	addi.d	$a2, $a2, 4
	bne	$a4, $a2, .LBB18_11
	b	.LBB18_8
.LBB18_13:                              # %_ZNK6Solver9satisfiedERK6Clause.exit.i
                                        #   in Loop: Header=BB18_9 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6Solver12detachClauseER6Clause)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 208
	addi.d	$s1, $s1, 1
	blt	$s1, $a0, .LBB18_9
.LBB18_14:                              # %._crit_edge.i
	sub.w	$a1, $s1, $s3
	blez	$a1, .LBB18_16
# %bb.15:                               # %.lr.ph.i15.i
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 208
.LBB18_16:                              # %_ZN6Solver15removeSatisfiedER3vecIP6ClauseE.exit
	ld.bu	$a0, $fp, 464
	beqz	$a0, .LBB18_18
# %bb.17:
	addi.d	$a1, $fp, 184
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver15removeSatisfiedER3vecIP6ClauseE)
	jirl	$ra, $ra, 0
.LBB18_18:
	addi.d	$a0, $fp, 408
	st.d	$fp, $sp, 16
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 320
	ld.d	$a1, $fp, 144
	ld.d	$a2, $fp, 152
	st.w	$a0, $fp, 380
	add.d	$a0, $a2, $a1
	st.d	$a0, $fp, 384
	ori	$a0, $zero, 1
	b	.LBB18_3
.Lfunc_end18:
	.size	_ZN6Solver8simplifyEv, .Lfunc_end18-_ZN6Solver8simplifyEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_,"axG",@progbits,_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_,comdat
	.weak	_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_ # -- Begin function _ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_
	.p2align	5
	.type	_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_,@function
_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_: # @_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_
	.cfi_startproc
# %bb.0:
	ld.w	$a2, $a0, 16
	blez	$a2, .LBB19_24
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a0, 8
	ld.d	$a4, $a1, 264
	ld.d	$a5, $a0, 24
	move	$a2, $zero
	move	$a7, $zero
	move	$a6, $zero
	move	$t0, $a3
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_2:                               #   in Loop: Header=BB19_4 Depth=1
	addi.d	$t2, $zero, -1
.LBB19_3:                               # %_ZNK6Solver9VarFilterclEi.exit.thread
                                        #   in Loop: Header=BB19_4 Depth=1
	slli.d	$t1, $t1, 2
	stx.w	$t2, $a5, $t1
	ld.w	$t1, $a0, 16
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 4
	addi.d	$a2, $a2, 1
	bge	$a7, $t1, .LBB19_7
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $t0, 0
	ldx.bu	$t2, $a4, $t1
	bnez	$t2, .LBB19_2
# %bb.5:                                # %_ZNK6Solver9VarFilterclEi.exit
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.d	$t2, $a1, 296
	ldx.bu	$t2, $t2, $t1
	beqz	$t2, .LBB19_2
# %bb.6:                                #   in Loop: Header=BB19_4 Depth=1
	slli.d	$t2, $a6, 2
	stx.w	$t1, $a3, $t2
	ld.w	$t1, $t0, 0
	addi.w	$t3, $a6, 1
	move	$t2, $a6
	move	$a6, $t3
	b	.LBB19_3
.LBB19_7:                               # %._crit_edge
	sub.w	$a1, $a2, $a6
	blez	$a1, .LBB19_9
# %bb.8:                                # %.lr.ph.i
	add.d	$a1, $a6, $t1
	sub.w	$t1, $a1, $a2
	st.w	$t1, $a0, 16
.LBB19_9:                               # %_ZN3vecIiE6shrinkEi.exit
	ori	$a1, $zero, 2
	blt	$t1, $a1, .LBB19_24
# %bb.10:                               # %.lr.ph25
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 24
	bstrpick.d	$a4, $t1, 31, 1
	ori	$a3, $zero, 1
	b	.LBB19_13
	.p2align	4, , 16
.LBB19_11:                              #   in Loop: Header=BB19_13 Depth=1
	move	$t0, $a4
	move	$a7, $a2
	move	$t1, $a4
.LBB19_12:                              # %_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi.exit
                                        #   in Loop: Header=BB19_13 Depth=1
	slli.d	$t0, $t0, 2
	stx.w	$a6, $a1, $t0
	slli.d	$a6, $a6, 2
	stx.w	$t1, $a7, $a6
	bge	$a3, $a5, .LBB19_24
.LBB19_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_15 Depth 2
	move	$a5, $a4
	addi.d	$a4, $a4, -1
	slli.d	$a6, $a4, 2
	ld.w	$t4, $a0, 16
	ldx.w	$a6, $a1, $a6
	slli.d	$t5, $a4, 1
	addi.d	$t2, $t5, 1
	bge	$t2, $t4, .LBB19_11
# %bb.14:                               # %.lr.ph.i16
                                        #   in Loop: Header=BB19_13 Depth=1
	ld.d	$a7, $a0, 0
	ld.d	$t0, $a7, 0
	slli.d	$a7, $a6, 3
	fldx.d	$fa0, $t0, $a7
	ld.d	$a7, $a0, 24
	move	$t3, $a4
	.p2align	4, , 16
.LBB19_15:                              #   Parent Loop BB19_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t5, 2
	addi.w	$t5, $t2, 0
	bge	$t1, $t4, .LBB19_18
# %bb.16:                               #   in Loop: Header=BB19_15 Depth=2
	slli.d	$t4, $t1, 2
	ldx.w	$t4, $a1, $t4
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a1, $t5
	slli.d	$t6, $t4, 3
	fldx.d	$fa1, $t0, $t6
	slli.d	$t6, $t5, 3
	fldx.d	$fa2, $t0, $t6
	fcmp.clt.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB19_20
# %bb.17:                               #   in Loop: Header=BB19_15 Depth=2
	move	$t4, $t5
	fmov.d	$fa1, $fa2
	b	.LBB19_19
	.p2align	4, , 16
.LBB19_18:                              # %._crit_edge.i
                                        #   in Loop: Header=BB19_15 Depth=2
	slli.d	$t1, $t5, 2
	ldx.w	$t4, $a1, $t1
	slli.d	$t1, $t4, 3
	fldx.d	$fa1, $t0, $t1
.LBB19_19:                              #   in Loop: Header=BB19_15 Depth=2
	move	$t1, $t2
.LBB19_20:                              #   in Loop: Header=BB19_15 Depth=2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_22
# %bb.21:                               #   in Loop: Header=BB19_15 Depth=2
	addi.w	$t2, $t3, 0
	slli.d	$t2, $t2, 2
	stx.w	$t4, $a1, $t2
	slli.d	$t2, $t4, 2
	stx.w	$t3, $a7, $t2
	ld.w	$t4, $a0, 16
	slli.d	$t5, $t1, 1
	addi.w	$t2, $t5, 1
	move	$t3, $t1
	blt	$t2, $t4, .LBB19_15
	b	.LBB19_23
	.p2align	4, , 16
.LBB19_22:                              #   in Loop: Header=BB19_13 Depth=1
	move	$t1, $t3
.LBB19_23:                              # %.thread.loopexit.i
                                        #   in Loop: Header=BB19_13 Depth=1
	addi.w	$t0, $t1, 0
	b	.LBB19_12
.LBB19_24:                              # %._crit_edge26
	ret
.Lfunc_end19:
	.size	_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_, .Lfunc_end19-_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6Solver6searchEii
.LCPI20_0:
	.dword	0x4415af1d78b58c40              # double 1.0E+20
.LCPI20_1:
	.dword	0x3bc79ca10c924223              # double 9.9999999999999995E-21
	.text
	.globl	_ZN6Solver6searchEii
	.p2align	5
	.type	_ZN6Solver6searchEii,@function
_ZN6Solver6searchEii:                   # @_ZN6Solver6searchEii
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$a0, $a0, 104
	move	$s2, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $zero
	move	$s6, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 104
	addi.d	$a0, $fp, 320
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s0, $fp, 408
	ori	$s7, $zero, 1
	ori	$s8, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver9propagateEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_24
.LBB20_1:                               # %.lr.ph156
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bltz	$a0, .LBB20_4
# %bb.2:                                # %.lr.ph156
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	blt	$s6, $a0, .LBB20_4
	b	.LBB20_60
	.p2align	4, , 16
.LBB20_3:                               # %_ZN6Solver11cancelUntilEi.exit91
                                        #   in Loop: Header=BB20_4 Depth=1
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 320
	slli.d	$a1, $a1, 2
	stx.w	$s4, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver9propagateEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_24
.LBB20_4:                               # %.lr.ph156.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_11 Depth 2
	ld.w	$a0, $fp, 336
	bnez	$a0, .LBB20_7
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver8simplifyEv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB20_4 Depth=1
	beqz	$a0, .LBB20_55
.LBB20_7:                               #   in Loop: Header=BB20_4 Depth=1
	bltz	$s2, .LBB20_11
# %bb.8:                                #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a0, $fp, 208
	ld.w	$a1, $fp, 320
	sub.w	$a0, $a0, $a1
	blt	$a0, $s2, .LBB20_11
# %bb.9:                                #   in Loop: Header=BB20_4 Depth=1
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver8reduceDBEv)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
	b	.LBB20_11
	.p2align	4, , 16
.LBB20_10:                              #   in Loop: Header=BB20_11 Depth=2
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 336
	slli.d	$a1, $a1, 2
	stx.w	$s3, $a0, $a1
.LBB20_11:                              #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $fp, 336
	ld.w	$a0, $fp, 400
	bge	$a1, $a0, .LBB20_17
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB20_11 Depth=2
	ld.d	$a0, $fp, 392
	slli.d	$a2, $a1, 2
	ldx.w	$s4, $a0, $a2
	ld.d	$a0, $fp, 264
	srai.d	$a2, $s4, 1
	ldx.b	$a0, $a0, $a2
	andi	$a2, $s4, 1
	sltui	$a2, $a2, 1
	sub.d	$a3, $zero, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	andi	$a0, $a0, 255
	bne	$a0, $s7, .LBB20_15
# %bb.13:                               #   in Loop: Header=BB20_11 Depth=2
	ld.w	$s3, $fp, 320
	ld.w	$a2, $fp, 340
	ld.d	$a0, $fp, 328
	bne	$a1, $a2, .LBB20_10
# %bb.14:                               #   in Loop: Header=BB20_11 Depth=2
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	slt	$a2, $s8, $a1
	masknez	$a3, $s8, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 340
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 336
	st.d	$a0, $fp, 328
	b	.LBB20_10
	.p2align	4, , 16
.LBB20_15:                              # %.lr.ph
                                        #   in Loop: Header=BB20_4 Depth=1
	ori	$a2, $zero, 255
	beq	$a0, $a2, .LBB20_54
# %bb.16:                               #   in Loop: Header=BB20_4 Depth=1
	addi.w	$a0, $zero, -2
	bne	$s4, $a0, .LBB20_20
	.p2align	4, , 16
.LBB20_17:                              # %.thread125
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a0, $fp, 112
	ld.w	$a1, $fp, 92
	fld.d	$fa0, $fp, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 112
.Ltmp8:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver13pickBranchLitEid)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.18:                               #   in Loop: Header=BB20_4 Depth=1
	move	$s4, $a0
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	beq	$s4, $a0, .LBB20_59
# %bb.19:                               # %._crit_edge170
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a1, $fp, 336
.LBB20_20:                              #   in Loop: Header=BB20_4 Depth=1
	ld.w	$s3, $fp, 320
	ld.w	$a2, $fp, 340
	ld.d	$a0, $fp, 328
	bne	$a1, $a2, .LBB20_22
# %bb.21:                               #   in Loop: Header=BB20_4 Depth=1
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	slt	$a2, $s8, $a1
	masknez	$a3, $s8, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 340
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 336
	st.d	$a0, $fp, 328
.LBB20_22:                              #   in Loop: Header=BB20_4 Depth=1
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 336
	slli.d	$a1, $a1, 2
	stx.w	$s3, $a0, $a1
	addi.w	$a0, $s4, 0
	andi	$a1, $s4, 1
	ld.d	$a2, $fp, 264
	sub.d	$a1, $zero, $a1
	ori	$a1, $a1, 1
	srai.d	$a3, $a0, 1
	stx.b	$a1, $a2, $a3
	ld.w	$a0, $fp, 336
	ld.d	$a1, $fp, 360
	slli.d	$a2, $a3, 2
	stx.w	$a0, $a1, $a2
	ld.d	$a2, $fp, 344
	ld.w	$a1, $fp, 320
	ld.w	$a4, $fp, 324
	ld.d	$a0, $fp, 312
	slli.d	$a3, $a3, 3
	stx.d	$zero, $a2, $a3
	bne	$a1, $a4, .LBB20_3
# %bb.23:                               #   in Loop: Header=BB20_4 Depth=1
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	slt	$a2, $s8, $a1
	masknez	$a3, $s8, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 324
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 320
	st.d	$a0, $fp, 312
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_32 Depth 2
                                        #     Child Loop BB20_49 Depth 2
	move	$a1, $a0
	ld.d	$a0, $fp, 136
	ld.w	$a2, $fp, 336
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 136
	beqz	$a2, .LBB20_55
# %bb.25:                               #   in Loop: Header=BB20_24 Depth=1
	beqz	$s1, .LBB20_27
# %bb.26:                               # %.preheader.i
                                        #   in Loop: Header=BB20_24 Depth=1
	st.w	$zero, $sp, 40
.LBB20_27:                              # %_ZN3vecI3LitE5clearEb.exit
                                        #   in Loop: Header=BB20_24 Depth=1
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 52
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 52
	ld.w	$a0, $fp, 336
	bge	$s1, $a0, .LBB20_40
# %bb.28:                               #   in Loop: Header=BB20_24 Depth=1
	ld.d	$a1, $fp, 328
	ld.w	$s4, $fp, 320
	slli.d	$s5, $s1, 2
	ldx.w	$a0, $a1, $s5
	bge	$a0, $s4, .LBB20_36
# %bb.29:                               # %.lr.ph.i
                                        #   in Loop: Header=BB20_24 Depth=1
	slli.d	$a0, $s4, 2
	addi.d	$s3, $a0, -4
	b	.LBB20_32
	.p2align	4, , 16
.LBB20_30:                              # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i.i
                                        #   in Loop: Header=BB20_32 Depth=2
	ld.d	$a0, $fp, 432
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	bltz	$a0, .LBB20_33
.LBB20_31:                              # %_ZN6Solver14insertVarOrderEi.exit.i
                                        #   in Loop: Header=BB20_32 Depth=2
	ld.d	$a1, $fp, 328
	ldx.w	$a0, $a1, $s5
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, -4
	bge	$a0, $s4, .LBB20_35
.LBB20_32:                              #   Parent Loop BB20_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 312
	ldx.w	$a0, $a0, $s3
	ld.d	$a2, $fp, 264
	srai.d	$a1, $a0, 1
	stx.b	$zero, $a2, $a1
	ld.w	$a0, $fp, 440
	blt	$a1, $a0, .LBB20_30
.LBB20_33:                              # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i
                                        #   in Loop: Header=BB20_32 Depth=2
	ld.d	$a0, $fp, 296
	ldx.bu	$a0, $a0, $a1
	beqz	$a0, .LBB20_31
# %bb.34:                               #   in Loop: Header=BB20_32 Depth=2
.Ltmp11:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN4HeapIN6Solver10VarOrderLtEE6insertEi)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
	b	.LBB20_31
	.p2align	4, , 16
.LBB20_35:                              # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB20_24 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s4, $a2, 0
.LBB20_36:                              # %._crit_edge.i
                                        #   in Loop: Header=BB20_24 Depth=1
	alsl.d	$a1, $s1, $a1, 2
	st.w	$a0, $fp, 376
	ld.w	$a0, $a1, 0
	bge	$a0, $s4, .LBB20_38
# %bb.37:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB20_24 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB20_38:                              # %_ZN3vecI3LitE6shrinkEi.exit.i
                                        #   in Loop: Header=BB20_24 Depth=1
	ld.w	$a0, $fp, 336
	bge	$s1, $a0, .LBB20_40
# %bb.39:                               # %.lr.ph.i12.i
                                        #   in Loop: Header=BB20_24 Depth=1
	st.w	$s1, $fp, 336
.LBB20_40:                              # %_ZN6Solver11cancelUntilEi.exit
                                        #   in Loop: Header=BB20_24 Depth=1
	ld.w	$s3, $sp, 40
	bne	$s3, $s7, .LBB20_42
# %bb.41:                               #   in Loop: Header=BB20_24 Depth=1
	ld.d	$s1, $sp, 32
	ld.w	$s5, $s1, 0
	andi	$a0, $s5, 1
	ld.d	$a1, $fp, 264
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	srai.d	$a2, $s5, 1
	stx.b	$a0, $a1, $a2
	ld.w	$a0, $fp, 336
	ld.d	$a1, $fp, 360
	slli.d	$a3, $a2, 2
	stx.w	$a0, $a1, $a3
	ld.d	$a3, $fp, 344
	ld.w	$a1, $fp, 320
	ld.w	$a4, $fp, 324
	ld.d	$a0, $fp, 312
	slli.d	$a2, $a2, 3
	stx.d	$zero, $a3, $a2
	beq	$a1, $a4, .LBB20_52
	b	.LBB20_53
	.p2align	4, , 16
.LBB20_42:                              #   in Loop: Header=BB20_24 Depth=1
	slli.d	$s1, $s3, 2
	addi.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	slli.d	$a0, $s3, 3
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	blez	$s3, .LBB20_44
# %bb.43:                               # %.lr.ph.i.i54
                                        #   in Loop: Header=BB20_24 Depth=1
	ld.d	$a1, $sp, 32
	addi.d	$a0, $s4, 8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB20_44:                              #   in Loop: Header=BB20_24 Depth=1
	ld.w	$a1, $fp, 208
	ld.w	$a2, $fp, 212
	ld.d	$a0, $fp, 200
	st.w	$zero, $s4, 4
	bne	$a1, $a2, .LBB20_46
# %bb.45:                               #   in Loop: Header=BB20_24 Depth=1
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	slt	$a2, $s8, $a1
	masknez	$a3, $s8, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 212
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 208
	st.d	$a0, $fp, 200
.LBB20_46:                              #   in Loop: Header=BB20_24 Depth=1
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 208
	slli.d	$a1, $a1, 3
	stx.d	$s4, $a0, $a1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN6Solver12attachClauseER6Clause)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s4, 4
	fld.d	$fa0, $fp, 216
	fcvt.d.s	$fa1, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI20_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI20_0)
	fadd.d	$fa1, $fa0, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa3, $fa1
	fcmp.cule.d	$fcc0, $fa3, $fa2
	fst.s	$fa1, $s4, 4
	bcnez	$fcc0, .LBB20_51
# %bb.47:                               # %.preheader.i56
                                        #   in Loop: Header=BB20_24 Depth=1
	ld.w	$a0, $fp, 208
	pcalau12i	$a1, %pc_hi20(.LCPI20_1)
	blez	$a0, .LBB20_50
# %bb.48:                               # %.lr.ph.i58
                                        #   in Loop: Header=BB20_24 Depth=1
	ld.d	$a2, $fp, 200
	.p2align	4, , 16
.LBB20_49:                              #   Parent Loop BB20_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	fld.s	$fa1, $a3, 4
	fld.d	$fa2, $a1, %pc_lo12(.LCPI20_1)
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB20_49
.LBB20_50:                              # %._crit_edge.i57
                                        #   in Loop: Header=BB20_24 Depth=1
	fld.d	$fa1, $a1, %pc_lo12(.LCPI20_1)
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 216
.LBB20_51:                              # %_ZN6Solver15claBumpActivityER6Clause.exit
                                        #   in Loop: Header=BB20_24 Depth=1
	ld.d	$s1, $sp, 32
	ld.w	$s5, $s1, 0
	andi	$a0, $s5, 1
	ld.d	$a1, $fp, 264
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	srai.d	$a2, $s5, 1
	stx.b	$a0, $a1, $a2
	ld.w	$a0, $fp, 336
	ld.d	$a1, $fp, 360
	slli.d	$a3, $a2, 2
	stx.w	$a0, $a1, $a3
	ld.d	$a3, $fp, 344
	ld.w	$a1, $fp, 320
	ld.w	$a4, $fp, 324
	ld.d	$a0, $fp, 312
	slli.d	$a2, $a2, 3
	stx.d	$s4, $a3, $a2
	bne	$a1, $a4, .LBB20_53
.LBB20_52:                              # %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit.sink.split
                                        #   in Loop: Header=BB20_24 Depth=1
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	slt	$a2, $s8, $a1
	masknez	$a3, $s8, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 324
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 320
	st.d	$a0, $fp, 312
.LBB20_53:                              # %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit
                                        #   in Loop: Header=BB20_24 Depth=1
	addi.w	$s6, $s6, 1
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 320
	slli.d	$a1, $a1, 2
	fld.d	$fa0, $fp, 32
	fld.d	$fa1, $fp, 240
	fld.d	$fa2, $fp, 40
	fld.d	$fa3, $fp, 216
	stx.w	$s5, $a0, $a1
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 240
	fmul.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $fp, 216
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver9propagateEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_24
	b	.LBB20_1
.LBB20_54:
	bstrpick.d	$a0, $s4, 31, 0
	xori	$a1, $a0, 1
	addi.d	$a2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver12analyzeFinalE3LitR3vecIS0_E)
	jirl	$ra, $ra, 0
.LBB20_55:                              # %_ZN6Solver11cancelUntilEi.exit91.thread
	ori	$s0, $zero, 255
.LBB20_56:                              # %_ZN6Solver11cancelUntilEi.exit91.thread
	beqz	$s1, .LBB20_58
# %bb.57:                               # %.preheader.i.i106
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB20_58:                              # %_ZN3vecI3LitED2Ev.exit107
	move	$a0, $s0
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.LBB20_59:
	ori	$s0, $zero, 1
	b	.LBB20_56
.LBB20_60:
	ld.w	$a1, $fp, 272
	ld.w	$a0, $fp, 336
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	bltz	$a0, .LBB20_72
# %bb.61:
	ld.d	$s3, $fp, 328
	sltui	$a1, $a0, 1
	masknez	$a2, $s3, $a1
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fs1, $fa1
	beqz	$a0, .LBB20_73
# %bb.62:                               # %.peel.next.i.preheader
	move	$s4, $zero
	move	$s5, $zero
	frecip.d	$fs0, $fa0
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB20_63:                              # %.peel.next.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s5, $s5, 1
	ldx.w	$s7, $s3, $s4
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$s2, $fp, 328
	xor	$a0, $s5, $a0
	sltui	$a0, $a0, 1
	addi.d	$s4, $s4, 4
	add.d	$a1, $s4, $s2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	ld.w	$s8, $a0, 0
	bstrpick.d	$a0, $s6, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	sub.d	$a1, $s8, $s7
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 336
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fs1, $fa0, $fa1, $fs1
	addi.w	$s6, $s6, 1
	blt	$s5, $a0, .LBB20_63
# %bb.64:                               # %.loopexit136
	ld.w	$a1, $fp, 272
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fst.d	$fa0, $fp, 456
	blez	$a0, .LBB20_80
# %bb.65:
	ld.w	$s3, $s8, 0
	ld.w	$a0, $s2, 0
	bge	$a0, $s3, .LBB20_76
# %bb.66:                               # %.lr.ph.i79
	slli.d	$a0, $s3, 2
	addi.d	$s4, $a0, -4
	b	.LBB20_69
.LBB20_67:                              # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i.i89
                                        #   in Loop: Header=BB20_69 Depth=1
	ld.d	$a0, $fp, 432
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	bltz	$a0, .LBB20_70
.LBB20_68:                              # %_ZN6Solver14insertVarOrderEi.exit.i85
                                        #   in Loop: Header=BB20_69 Depth=1
	ld.d	$s2, $fp, 328
	ld.w	$a0, $s2, 0
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, -4
	bge	$a0, $s3, .LBB20_75
.LBB20_69:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 312
	ldx.w	$a0, $a0, $s4
	ld.d	$a2, $fp, 264
	srai.d	$a1, $a0, 1
	stx.b	$zero, $a2, $a1
	ld.w	$a0, $fp, 440
	blt	$a1, $a0, .LBB20_67
.LBB20_70:                              # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i83
                                        #   in Loop: Header=BB20_69 Depth=1
	ld.d	$a0, $fp, 296
	ldx.bu	$a0, $a0, $a1
	beqz	$a0, .LBB20_68
# %bb.71:                               #   in Loop: Header=BB20_69 Depth=1
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN4HeapIN6Solver10VarOrderLtEE6insertEi)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
	b	.LBB20_68
.LBB20_72:                              # %.thread
	move	$s0, $zero
	movgr2fr.d	$fa1, $zero
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB20_74
.LBB20_73:                              # %.loopexit136.thread
	move	$s0, $zero
	fdiv.d	$fa0, $fs1, $fa0
.LBB20_74:                              # %_ZN6Solver11cancelUntilEi.exit91.thread
	fst.d	$fa0, $fp, 456
	b	.LBB20_56
.LBB20_75:                              # %._crit_edge.loopexit.i87
	ld.w	$s3, $s8, 0
.LBB20_76:                              # %._crit_edge.i73
	st.w	$a0, $fp, 376
	ld.w	$a0, $s2, 0
	bge	$a0, $s3, .LBB20_78
# %bb.77:                               # %.lr.ph.i.i78
	st.w	$a0, $s8, 0
.LBB20_78:                              # %_ZN3vecI3LitE6shrinkEi.exit.i76
	ld.w	$a0, $fp, 336
	blez	$a0, .LBB20_80
# %bb.79:                               # %.lr.ph.i12.i77
	move	$s0, $zero
	st.w	$zero, $fp, 336
	b	.LBB20_56
.LBB20_80:
	move	$s0, $zero
	b	.LBB20_56
.LBB20_81:                              # %.loopexit
.Ltmp2:                                 # EH_LABEL
	b	.LBB20_85
.LBB20_82:                              # %.loopexit.split-lp.loopexit.split-lp
.Ltmp7:                                 # EH_LABEL
	b	.LBB20_85
.LBB20_83:
.Ltmp10:                                # EH_LABEL
	b	.LBB20_85
.LBB20_84:                              # %.loopexit.split-lp.loopexit
.Ltmp13:                                # EH_LABEL
	ld.d	$s1, $sp, 32
.LBB20_85:                              # %.loopexit.split-lp
	move	$fp, $a0
	beqz	$s1, .LBB20_87
# %bb.86:                               # %.preheader.i.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB20_87:                              # %_ZN3vecI3LitED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN6Solver6searchEii, .Lfunc_end20-_ZN6Solver6searchEii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp8-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp0-.Ltmp12                 #   Call between .Ltmp12 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 9 <<
	.uleb128 .Lfunc_end20-.Ltmp1            #   Call between .Ltmp1 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZNK6Solver16progressEstimateEv # -- Begin function _ZNK6Solver16progressEstimateEv
	.p2align	5
	.type	_ZNK6Solver16progressEstimateEv,@function
_ZNK6Solver16progressEstimateEv:        # @_ZNK6Solver16progressEstimateEv
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a1, $a0, 272
	ld.w	$a0, $a0, 336
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	bltz	$a0, .LBB21_5
# %bb.1:
	ld.d	$s0, $fp, 328
	addi.d	$s1, $fp, 320
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a0, $fp, 336
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fs1, $fa1
	blez	$a0, .LBB21_4
# %bb.2:                                # %.peel.next.preheader
	move	$s2, $zero
	move	$s3, $zero
	frecip.d	$fs0, $fa0
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB21_3:                               # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s3, $s3, 1
	ldx.w	$s5, $s0, $s2
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $fp, 328
	xor	$a0, $s3, $a0
	sltui	$a0, $a0, 1
	addi.d	$s2, $s2, 4
	add.d	$a1, $s2, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	ld.w	$s6, $a0, 0
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	sub.d	$a1, $s6, $s5
	ld.w	$a0, $fp, 336
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fs1, $fa0, $fa1, $fs1
	addi.w	$s4, $s4, 1
	blt	$s3, $a0, .LBB21_3
.LBB21_4:                               # %._crit_edge.loopexit
	ld.w	$a0, $fp, 272
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	b	.LBB21_6
.LBB21_5:
	movgr2fr.d	$fs1, $zero
.LBB21_6:                               # %._crit_edge
	fdiv.d	$fa0, $fs1, $fa0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end21:
	.size	_ZNK6Solver16progressEstimateEv, .Lfunc_end21-_ZNK6Solver16progressEstimateEv
                                        # -- End function
	.globl	_ZN6Solver5solveERK3vecI3LitE   # -- Begin function _ZN6Solver5solveERK3vecI3LitE
	.p2align	5
	.type	_ZN6Solver5solveERK3vecI3LitE,@function
_ZN6Solver5solveERK3vecI3LitE:          # @_ZN6Solver5solveERK3vecI3LitE
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB22_2
# %bb.1:                                # %.preheader.i
	st.w	$zero, $fp, 8
.LBB22_2:                               # %_ZN3vecI5lboolE5clearEb.exit
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB22_4
# %bb.3:                                # %.preheader.i18
	st.w	$zero, $fp, 24
.LBB22_4:                               # %_ZN3vecI3LitE5clearEb.exit
	ld.bu	$a0, $fp, 176
	beqz	$a0, .LBB22_7
# %bb.5:
	ld.d	$a0, $fp, 392
	beqz	$a0, .LBB22_8
# %bb.6:                                # %.preheader.i.i
	move	$a2, $zero
	st.w	$zero, $fp, 400
	ld.w	$s0, $a1, 8
	blt	$a2, $s0, .LBB22_9
	b	.LBB22_23
.LBB22_7:
	move	$s0, $zero
	b	.LBB22_48
.LBB22_8:                               # %._ZN3vecI3LitE5clearEb.exit_crit_edge.i
	ld.w	$a2, $fp, 400
	ld.w	$s0, $a1, 8
	bge	$a2, $s0, .LBB22_23
.LBB22_9:
	ld.w	$a3, $fp, 404
	bge	$a3, $s0, .LBB22_14
# %bb.10:
	move	$s1, $a1
	beqz	$a3, .LBB22_12
	.p2align	4, , 16
.LBB22_11:                              # %.preheader.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a1, $a3, $a3, 1
	addi.w	$a1, $a1, 1
	srai.d	$a3, $a1, 1
	blt	$a3, $s0, .LBB22_11
	b	.LBB22_13
.LBB22_12:
	ori	$a1, $zero, 2
	slt	$a2, $a1, $s0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s0, $a2
	or	$a3, $a2, $a1
.LBB22_13:                              # %.loopexit.i.i.i
	st.w	$a3, $fp, 404
	slli.d	$a1, $a3, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 400
	st.d	$a0, $fp, 392
	move	$a1, $s1
.LBB22_14:                              # %_ZN3vecI3LitE4growEi.exit.i.i
	bge	$a2, $s0, .LBB22_22
# %bb.15:                               # %.lr.ph.i.i
	sub.d	$a4, $s0, $a2
	ori	$a3, $zero, 8
	bgeu	$a4, $a3, .LBB22_17
# %bb.16:
	move	$a3, $a2
	b	.LBB22_20
.LBB22_17:                              # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	add.d	$a3, $a5, $a2
	alsl.d	$a2, $a2, $a0, 2
	addi.d	$a2, $a2, 16
	vrepli.w	$vr0, -2
	move	$a6, $a5
	.p2align	4, , 16
.LBB22_18:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	addi.d	$a6, $a6, -8
	addi.d	$a2, $a2, 32
	bnez	$a6, .LBB22_18
# %bb.19:                               # %middle.block
	beq	$a4, $a5, .LBB22_22
.LBB22_20:                              # %scalar.ph.preheader
	sub.d	$a2, $s0, $a3
	alsl.d	$a3, $a3, $a0, 2
	addi.w	$a4, $zero, -2
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB22_21:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB22_21
.LBB22_22:                              # %._crit_edge.i.i
	st.w	$s0, $fp, 400
	ld.w	$s0, $a1, 8
.LBB22_23:                              # %_ZN3vecI3LitE6growToEi.exit.i
	blez	$s0, .LBB22_26
# %bb.24:                               # %.lr.ph.i
	ld.d	$a2, $a1, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB22_25:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	st.w	$a4, $a0, 0
	ld.w	$a4, $a1, 8
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	blt	$a3, $a4, .LBB22_25
.LBB22_26:                              # %_ZNK3vecI3LitE6copyToERS1_.exit
	ld.w	$a0, $fp, 56
	ld.w	$a1, $fp, 192
	movgr2fr.w	$fa0, $a0
	fld.d	$fa1, $fp, 72
	ffint.d.w	$fs0, $fa0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs1, $fa1, $fa0
	.p2align	4, , 16
.LBB22_27:                              # =>This Inner Loop Header: Depth=1
	ftintrz.w.d	$fa0, $fs0
	movfr2gr.s	$a1, $fa0
	ftintrz.w.d	$fa0, $fs1
	movfr2gr.s	$a2, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Solver6searchEii)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 64
	fld.d	$fa1, $fp, 80
	fmul.d	$fs0, $fs0, $fa0
	fmul.d	$fs1, $fs1, $fa1
	beqz	$a0, .LBB22_27
# %bb.28:
	ori	$a1, $zero, 1
	addi.d	$s0, $a0, -1
	bne	$a0, $a1, .LBB22_33
# %bb.29:
	ld.w	$s1, $fp, 272
	ld.w	$a2, $fp, 8
	bge	$a2, $s1, .LBB22_40
# %bb.30:
	ld.w	$a1, $fp, 12
	bge	$a1, $s1, .LBB22_37
# %bb.31:
	beqz	$a1, .LBB22_35
	.p2align	4, , 16
.LBB22_32:                              # %.preheader.i.i22
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a0, $a1, $a1, 1
	addi.w	$a0, $a0, 1
	srai.d	$a1, $a0, 1
	blt	$a1, $s1, .LBB22_32
	b	.LBB22_36
.LBB22_33:
	ld.w	$a0, $fp, 24
	bnez	$a0, .LBB22_43
# %bb.34:
	st.b	$zero, $fp, 176
	b	.LBB22_43
.LBB22_35:
	ori	$a0, $zero, 2
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a0
.LBB22_36:                              # %.loopexit.i.i
	ld.d	$a0, $fp, 0
	st.w	$a1, $fp, 12
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 8
	st.d	$a0, $fp, 0
.LBB22_37:                              # %_ZN3vecI5lboolE4growEi.exit.i
	bge	$a2, $s1, .LBB22_39
# %bb.38:                               # %.lr.ph.i21
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $a2
	sub.d	$a1, $a2, $s1
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB22_39:                              # %._crit_edge.i
	st.w	$s1, $fp, 8
	ld.w	$s1, $fp, 272
.LBB22_40:                              # %_ZN3vecI5lboolE6growToEi.exit
	blez	$s1, .LBB22_43
# %bb.41:                               # %.lr.ph
	move	$a0, $zero
	.p2align	4, , 16
.LBB22_42:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 264
	ldx.b	$a1, $a1, $a0
	ld.d	$a2, $fp, 0
	stx.b	$a1, $a2, $a0
	ld.w	$a1, $fp, 272
	addi.d	$a0, $a0, 1
	blt	$a0, $a1, .LBB22_42
.LBB22_43:                              # %.loopexit
	ld.w	$a0, $fp, 336
	sltui	$s0, $s0, 1
	blez	$a0, .LBB22_48
# %bb.44:
	ld.d	$a0, $fp, 328
	ld.w	$s2, $fp, 320
	ld.w	$a1, $a0, 0
	blt	$a1, $s2, .LBB22_49
# %bb.45:                               # %._crit_edge.i24
	st.w	$a1, $fp, 376
	ld.w	$a0, $a0, 0
	blt	$a0, $s2, .LBB22_56
.LBB22_46:                              # %_ZN3vecI3LitE6shrinkEi.exit.i
	ld.w	$a0, $fp, 336
	blez	$a0, .LBB22_48
.LBB22_47:                              # %.lr.ph.i12.i
	st.w	$zero, $fp, 336
.LBB22_48:                              # %_ZN6Solver11cancelUntilEi.exit
	move	$a0, $s0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB22_49:                              # %.lr.ph.i26
	addi.d	$s1, $fp, 408
	slli.d	$a0, $s2, 2
	addi.d	$s3, $a0, -4
	b	.LBB22_52
	.p2align	4, , 16
.LBB22_50:                              # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.i.i
                                        #   in Loop: Header=BB22_52 Depth=1
	ld.d	$a0, $fp, 432
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	bltz	$a0, .LBB22_53
.LBB22_51:                              # %_ZN6Solver14insertVarOrderEi.exit.i
                                        #   in Loop: Header=BB22_52 Depth=1
	ld.d	$a0, $fp, 328
	ld.w	$a1, $a0, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -4
	bge	$a1, $s2, .LBB22_55
.LBB22_52:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 312
	ldx.w	$a0, $a0, $s3
	ld.d	$a2, $fp, 264
	srai.d	$a1, $a0, 1
	stx.b	$zero, $a2, $a1
	ld.w	$a0, $fp, 440
	blt	$a1, $a0, .LBB22_50
.LBB22_53:                              # %_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i
                                        #   in Loop: Header=BB22_52 Depth=1
	ld.d	$a0, $fp, 296
	ldx.bu	$a0, $a0, $a1
	beqz	$a0, .LBB22_51
# %bb.54:                               #   in Loop: Header=BB22_52 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN4HeapIN6Solver10VarOrderLtEE6insertEi)
	jirl	$ra, $ra, 0
	b	.LBB22_51
.LBB22_55:                              # %._crit_edge.loopexit.i
	ld.w	$s2, $fp, 320
	st.w	$a1, $fp, 376
	ld.w	$a0, $a0, 0
	bge	$a0, $s2, .LBB22_46
.LBB22_56:                              # %.lr.ph.i.i25
	st.w	$a0, $fp, 320
	ld.w	$a0, $fp, 336
	bgtz	$a0, .LBB22_47
	b	.LBB22_48
.Lfunc_end22:
	.size	_ZN6Solver5solveERK3vecI3LitE, .Lfunc_end22-_ZN6Solver5solveERK3vecI3LitE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6Solver11verifyModelEv       # -- Begin function _ZN6Solver11verifyModelEv
	.p2align	5
	.type	_ZN6Solver11verifyModelEv,@function
_ZN6Solver11verifyModelEv:              # @_ZN6Solver11verifyModelEv
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
	move	$fp, $a0
	ld.w	$a0, $a0, 192
	blez	$a0, .LBB23_11
# %bb.1:                                # %.lr.ph20
	ori	$s2, $zero, 8
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$s3, $a1, %got_pc_lo12(stdout)
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$s4, $a1, %got_pc_lo12(stderr)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$s5, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	b	.LBB23_4
.LBB23_2:                               # %_ZN6Solver11printClauseI6ClauseEEvRKT_.exit
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 192
	.p2align	4, , 16
.LBB23_3:                               # %.loopexit
                                        #   in Loop: Header=BB23_4 Depth=1
	addi.d	$s8, $s8, 1
	bge	$s8, $a0, .LBB23_11
.LBB23_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_6 Depth 2
                                        #     Child Loop BB23_10 Depth 2
	ld.d	$a1, $fp, 184
	slli.d	$s0, $s8, 3
	ldx.d	$a3, $a1, $s0
	ld.w	$a2, $a3, 0
	bltu	$a2, $s2, .LBB23_8
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a1, $fp, 0
	bstrpick.d	$a2, $a2, 31, 3
	addi.d	$a3, $a3, 8
	.p2align	4, , 16
.LBB23_6:                               #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	srai.d	$a5, $a4, 1
	ldx.b	$a5, $a1, $a5
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	sub.d	$a6, $zero, $a5
	maskeqz	$a5, $a5, $a4
	masknez	$a4, $a6, $a4
	or	$a4, $a5, $a4
	andi	$a4, $a4, 255
	beq	$a4, $s5, .LBB23_3
# %bb.7:                                #   in Loop: Header=BB23_6 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB23_6
.LBB23_8:                               # %._crit_edge
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 184
	ldx.d	$s0, $a0, $s0
	ld.w	$a0, $s0, 0
	bltu	$a0, $s2, .LBB23_2
# %bb.9:                                # %.lr.ph.i
                                        #   in Loop: Header=BB23_4 Depth=1
	move	$s6, $zero
	ori	$s7, $zero, 8
.LBB23_10:                              #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s1, $s0, $s7
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 264
	srai.d	$a1, $s1, 1
	ldx.b	$a2, $a0, $a1
	ld.d	$a0, $s4, 0
	andi	$a3, $s1, 1
	sltui	$a5, $a3, 1
	sub.d	$a3, $zero, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a3, $a3, $a5
	or	$a2, $a2, $a3
	andi	$a2, $a2, 255
	addi.d	$a3, $a2, -1
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, -255
	sltui	$a2, $a2, 1
	ori	$a4, $zero, 88
	masknez	$a4, $a4, $a2
	ori	$a6, $zero, 48
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 49
	maskeqz	$a3, $a4, $a3
	or	$a4, $a3, $a2
	addi.d	$a3, $a1, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a5
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 0
	addi.d	$s6, $s6, 1
	srli.d	$a0, $a0, 3
	addi.d	$s7, $s7, 4
	bltu	$s6, $a0, .LBB23_10
	b	.LBB23_2
.LBB23_11:                              # %._crit_edge21
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	ld.w	$a2, $fp, 192
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
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
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end23:
	.size	_ZN6Solver11verifyModelEv, .Lfunc_end23-_ZN6Solver11verifyModelEv
                                        # -- End function
	.globl	_ZN6Solver17checkLiteralCountEv # -- Begin function _ZN6Solver17checkLiteralCountEv
	.p2align	5
	.type	_ZN6Solver17checkLiteralCountEv,@function
_ZN6Solver17checkLiteralCountEv:        # @_ZN6Solver17checkLiteralCountEv
# %bb.0:
	ld.w	$a1, $a0, 192
	blez	$a1, .LBB24_3
# %bb.1:                                # %.lr.ph
	ld.d	$a2, $a0, 184
	ori	$a3, $zero, 4
	bgeu	$a1, $a3, .LBB24_4
# %bb.2:
	move	$a4, $zero
	move	$a3, $zero
	b	.LBB24_7
.LBB24_3:
	move	$a3, $zero
	b	.LBB24_9
.LBB24_4:                               # %vector.ph
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a4, $a3, 2
	addi.d	$a3, $a2, 16
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 6
	move	$a5, $a4
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB24_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, -16
	ld.d	$a7, $a3, -8
	ld.d	$t0, $a3, 0
	ld.d	$t1, $a3, 8
	ld.w	$a6, $a6, 0
	ld.w	$a7, $a7, 0
	ld.w	$t0, $t0, 0
	ld.w	$t1, $t1, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr4, $t0, 0
	vinsgr2vr.w	$vr4, $t1, 1
	vand.v	$vr5, $vr3, $vr1
	vand.v	$vr6, $vr4, $vr1
	vseqi.w	$vr5, $vr5, 0
	vseqi.w	$vr6, $vr6, 0
	vsrli.w	$vr3, $vr3, 3
	vsrli.w	$vr4, $vr4, 3
	vand.v	$vr3, $vr5, $vr3
	vand.v	$vr4, $vr6, $vr4
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr2, $vr4, $vr2
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB24_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a4, $a1, .LBB24_9
.LBB24_7:                               # %scalar.ph.preheader
	alsl.d	$a2, $a4, $a2, 3
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB24_8:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.wu	$a4, $a4, 0
	andi	$a5, $a4, 6
	sltui	$a5, $a5, 1
	srli.d	$a4, $a4, 3
	maskeqz	$a4, $a4, $a5
	add.w	$a3, $a4, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB24_8
.LBB24_9:                               # %._crit_edge
	ld.w	$a2, $a0, 144
	bne	$a3, $a2, .LBB24_11
# %bb.10:
	ret
.LBB24_11:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end24:
	.size	_ZN6Solver17checkLiteralCountEv, .Lfunc_end24-_ZN6Solver17checkLiteralCountEv
                                        # -- End function
	.section	.text._ZN4HeapIN6Solver10VarOrderLtEE6insertEi,"axG",@progbits,_ZN4HeapIN6Solver10VarOrderLtEE6insertEi,comdat
	.weak	_ZN4HeapIN6Solver10VarOrderLtEE6insertEi # -- Begin function _ZN4HeapIN6Solver10VarOrderLtEE6insertEi
	.p2align	5
	.type	_ZN4HeapIN6Solver10VarOrderLtEE6insertEi,@function
_ZN4HeapIN6Solver10VarOrderLtEE6insertEi: # @_ZN4HeapIN6Solver10VarOrderLtEE6insertEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.w	$a2, $a0, 32
	move	$s0, $a1
	blt	$a1, $a2, .LBB25_9
# %bb.1:
	ld.w	$a1, $fp, 36
	addi.w	$s1, $s0, 1
	blt	$s0, $a1, .LBB25_6
# %bb.2:
	beqz	$a1, .LBB25_4
	.p2align	4, , 16
.LBB25_3:                               # %.preheader.i.i
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a0, $a1, $a1, 1
	addi.w	$a0, $a0, 1
	srai.d	$a1, $a0, 1
	bge	$s0, $a1, .LBB25_3
	b	.LBB25_5
.LBB25_4:
	ori	$a0, $zero, 2
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a0
.LBB25_5:                               # %.loopexit.i.i
	ld.d	$a0, $fp, 24
	st.w	$a1, $fp, 36
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 32
	st.d	$a0, $fp, 24
.LBB25_6:                               # %_ZN3vecIiE4growEi.exit.i
	blt	$s0, $a2, .LBB25_8
# %bb.7:                                # %.lr.ph.i
	ld.d	$a0, $fp, 24
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a1, $s1, $a2
	slli.d	$a2, $a1, 2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_8:                               # %._crit_edge.i
	st.w	$s1, $fp, 32
.LBB25_9:                               # %_ZN3vecIiE6growToEiRKi.exit
	ld.w	$a2, $fp, 16
	ld.d	$a1, $fp, 24
	slli.d	$a0, $s0, 2
	stx.w	$a2, $a1, $a0
	ld.w	$a3, $fp, 20
	ld.d	$a0, $fp, 8
	bne	$a2, $a3, .LBB25_11
# %bb.10:
	alsl.d	$a1, $a2, $a2, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $fp, 20
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 16
	ld.d	$a1, $fp, 24
	st.d	$a0, $fp, 8
.LBB25_11:                              # %_ZN3vecIiE4pushERKi.exit
	addi.d	$a3, $a2, 1
	st.w	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	stx.w	$s0, $a0, $a2
	slli.d	$a2, $s0, 2
	ldx.w	$a3, $a1, $a2
	slli.d	$a2, $a3, 2
	ldx.w	$a2, $a0, $a2
	beqz	$a3, .LBB25_16
# %bb.12:                               # %.lr.ph.i2
	ld.d	$a4, $fp, 0
	ld.d	$a4, $a4, 0
	slli.d	$a5, $a2, 3
	fldx.d	$fa0, $a4, $a5
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB25_13:                              # =>This Inner Loop Header: Depth=1
	addi.w	$a7, $a3, -1
	srai.d	$a6, $a7, 1
	slli.d	$t0, $a6, 2
	ldx.w	$t0, $a0, $t0
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a4, $t1
	addi.w	$t1, $a3, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	alsl.d	$t1, $t1, $a0, 2
	bcnez	$fcc0, .LBB25_17
# %bb.14:                               #   in Loop: Header=BB25_13 Depth=1
	st.w	$t0, $t1, 0
	slli.d	$t0, $t0, 2
	stx.w	$a3, $a1, $t0
	move	$a3, $a6
	bltu	$a5, $a7, .LBB25_13
# %bb.15:
	move	$a3, $a6
	b	.LBB25_18
.LBB25_16:
	move	$a3, $zero
	b	.LBB25_18
.LBB25_17:
	move	$a0, $t1
.LBB25_18:                              # %_ZN4HeapIN6Solver10VarOrderLtEE11percolateUpEi.exit
	st.w	$a2, $a0, 0
	slli.d	$a0, $a2, 2
	stx.w	$a3, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end25:
	.size	_ZN4HeapIN6Solver10VarOrderLtEE6insertEi, .Lfunc_end25-_ZN4HeapIN6Solver10VarOrderLtEE6insertEi
	.cfi_endproc
                                        # -- End function
	.section	.text._Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_,"axG",@progbits,_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_,comdat
	.weak	_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_ # -- Begin function _Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_
	.p2align	5
	.type	_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_,@function
_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_: # @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_
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
	ori	$s2, $zero, 16
	move	$fp, $a1
	bge	$a1, $s2, .LBB26_9
# %bb.1:
	move	$s1, $a0
.LBB26_2:                               # %tailrecurse._crit_edge
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB26_7
# %bb.3:                                # %.lr.ph28.preheader.i
	move	$a4, $zero
	addi.w	$a0, $fp, -1
	addi.d	$a1, $s1, 4
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB26_4:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_5 Depth 2
	move	$a5, $a1
	move	$a7, $a2
	move	$t0, $fp
	move	$a6, $a4
	.p2align	4, , 16
.LBB26_5:                               # %.lr.ph.i
                                        #   Parent Loop BB26_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a5, 0
	addi.w	$t2, $a6, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s1, $t2
	slt	$t1, $t1, $t2
	masknez	$a6, $a6, $t1
	maskeqz	$t1, $a7, $t1
	or	$a6, $t1, $a6
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 4
	bne	$a3, $t0, .LBB26_5
# %bb.6:                                # %._crit_edge.i
                                        #   in Loop: Header=BB26_4 Depth=1
	slli.d	$a5, $a4, 2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $s1, $a6
	ldx.w	$t0, $s1, $a5
	addi.d	$t1, $a4, 1
	stx.w	$a7, $s1, $a5
	stx.w	$t0, $s1, $a6
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	move	$a4, $t1
	bne	$t1, $a0, .LBB26_4
.LBB26_7:                               # %_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
	.p2align	4, , 16
.LBB26_8:                               # %tailrecurse
                                        #   in Loop: Header=BB26_9 Depth=1
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_)
	jirl	$ra, $ra, 0
	sub.w	$fp, $fp, $s0
	move	$a0, $s1
	blt	$fp, $s2, .LBB26_2
.LBB26_9:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_10 Depth 2
                                        #       Child Loop BB26_11 Depth 3
                                        #       Child Loop BB26_13 Depth 3
	bstrpick.d	$a1, $fp, 31, 1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	move	$a2, $fp
	addi.d	$a3, $zero, -1
	.p2align	4, , 16
.LBB26_10:                              #   Parent Loop BB26_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_11 Depth 3
                                        #       Child Loop BB26_13 Depth 3
	move	$s0, $a3
	addi.w	$a3, $a3, 0
	alsl.d	$s1, $a3, $a0, 2
	.p2align	4, , 16
.LBB26_11:                              #   Parent Loop BB26_9 Depth=1
                                        #     Parent Loop BB26_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $s1, 4
	addi.d	$a3, $a3, 1
	addi.d	$s1, $s1, 4
	addi.w	$s0, $s0, 1
	blt	$a4, $a1, .LBB26_11
# %bb.12:                               # %.preheader
                                        #   in Loop: Header=BB26_10 Depth=2
	alsl.d	$a5, $a2, $a0, 2
	move	$a6, $a2
	.p2align	4, , 16
.LBB26_13:                              #   Parent Loop BB26_9 Depth=1
                                        #     Parent Loop BB26_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a5, -4
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, -4
	addi.w	$a2, $a2, -1
	blt	$a1, $a7, .LBB26_13
# %bb.14:                               #   in Loop: Header=BB26_10 Depth=2
	bge	$a3, $a6, .LBB26_8
# %bb.15:                               #   in Loop: Header=BB26_10 Depth=2
	st.w	$a7, $s1, 0
	st.w	$a4, $a5, 0
	b	.LBB26_10
.Lfunc_end26:
	.size	_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_, .Lfunc_end26-_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z4sortIP6Clause11reduceDB_ltEvPT_iT0_,"axG",@progbits,_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_,comdat
	.weak	_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_ # -- Begin function _Z4sortIP6Clause11reduceDB_ltEvPT_iT0_
	.p2align	5
	.type	_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_,@function
_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_: # @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	ori	$s1, $zero, 16
	move	$fp, $a1
	bge	$a1, $s1, .LBB27_12
# %bb.1:
	move	$s2, $a0
.LBB27_2:                               # %tailrecurse._crit_edge
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB27_11
# %bb.3:                                # %.lr.ph31.preheader.i
	move	$a6, $zero
	addi.w	$a0, $fp, -1
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	ori	$a3, $zero, 24
	ori	$a4, $zero, 16
	ori	$a5, $zero, 1
	b	.LBB27_5
	.p2align	4, , 16
.LBB27_4:                               # %._crit_edge.i
                                        #   in Loop: Header=BB27_5 Depth=1
	slli.d	$a7, $a6, 3
	addi.w	$t0, $t0, 0
	slli.d	$t0, $t0, 3
	ldx.d	$t1, $s2, $t0
	ldx.d	$t2, $s2, $a7
	addi.d	$t3, $a6, 1
	stx.d	$t1, $s2, $a7
	stx.d	$t2, $s2, $t0
	addi.d	$a5, $a5, 1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	move	$a6, $t3
	beq	$t3, $a0, .LBB27_11
.LBB27_5:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_8 Depth 2
	move	$a7, $a1
	move	$t1, $fp
	move	$t2, $a2
	move	$t0, $a6
	b	.LBB27_8
	.p2align	4, , 16
.LBB27_6:                               # %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread.i
                                        #   in Loop: Header=BB27_8 Depth=2
	move	$t0, $t2
.LBB27_7:                               # %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread24.i
                                        #   in Loop: Header=BB27_8 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, -1
	addi.d	$a7, $a7, 8
	beq	$a5, $t1, .LBB27_4
.LBB27_8:                               # %.lr.ph.i
                                        #   Parent Loop BB27_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $a7, 0
	ld.w	$t4, $t3, 0
	bltu	$t4, $a3, .LBB27_7
# %bb.9:                                #   in Loop: Header=BB27_8 Depth=2
	addi.w	$t4, $t0, 0
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $s2, $t4
	ld.wu	$t5, $t4, 0
	bstrpick.d	$t5, $t5, 31, 3
	slli.w	$t5, $t5, 3
	beq	$t5, $a4, .LBB27_6
# %bb.10:                               # %_ZN11reduceDB_ltclEP6ClauseS1_.exit.i
                                        #   in Loop: Header=BB27_8 Depth=2
	fld.s	$fa0, $t3, 4
	fld.s	$fa1, $t4, 4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB27_6
	b	.LBB27_7
.LBB27_11:                              # %_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_.exit
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
.LBB27_12:
	ori	$s3, $zero, 24
	addi.w	$s4, $zero, -1
	ori	$s5, $zero, 23
	b	.LBB27_14
	.p2align	4, , 16
.LBB27_13:                              # %tailrecurse
                                        #   in Loop: Header=BB27_14 Depth=1
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_)
	jirl	$ra, $ra, 0
	sub.w	$fp, $fp, $s0
	move	$a0, $s2
	blt	$fp, $s1, .LBB27_2
.LBB27_14:                              # %.lr.ph85
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_29 Depth 2
                                        #       Child Loop BB27_35 Depth 3
                                        #       Child Loop BB27_32 Depth 3
                                        #     Child Loop BB27_16 Depth 2
                                        #       Child Loop BB27_19 Depth 3
                                        #       Child Loop BB27_24 Depth 3
	bstrpick.d	$a1, $fp, 31, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	ld.w	$a3, $a1, 0
	addi.d	$a2, $a0, 16
	bltu	$a3, $s3, .LBB27_28
# %bb.15:                               # %.split.us.preheader
                                        #   in Loop: Header=BB27_14 Depth=1
	addi.d	$a3, $a0, -8
	move	$a4, $fp
	move	$a6, $s4
	.p2align	4, , 16
.LBB27_16:                              # %.split.us
                                        #   Parent Loop BB27_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_19 Depth 3
                                        #       Child Loop BB27_24 Depth 3
	addi.w	$s0, $a6, 1
	slli.d	$a5, $s0, 3
	ldx.d	$a5, $a0, $a5
	ld.w	$a7, $a5, 0
	alsl.d	$s2, $s0, $a0, 3
	bgeu	$s5, $a7, .LBB27_22
# %bb.17:                               # %.lr.ph.split.us75
                                        #   in Loop: Header=BB27_16 Depth=2
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a5, 4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB27_22
# %bb.18:                               # %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us70.preheader
                                        #   in Loop: Header=BB27_16 Depth=2
	addi.w	$a7, $a6, 2
	alsl.d	$a6, $a6, $a2, 3
	.p2align	4, , 16
.LBB27_19:                              # %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us70
                                        #   Parent Loop BB27_14 Depth=1
                                        #     Parent Loop BB27_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a6, 0
	ld.w	$t0, $a5, 0
	bgeu	$s5, $t0, .LBB27_21
# %bb.20:                               #   in Loop: Header=BB27_19 Depth=3
	fld.s	$fa1, $a5, 4
	addi.w	$t0, $a7, 1
	addi.d	$t1, $a6, 8
	fcmp.clt.s	$fcc0, $fa1, $fa0
	move	$s0, $a7
	move	$s2, $a6
	move	$a6, $t1
	move	$a7, $t0
	bcnez	$fcc0, .LBB27_19
	b	.LBB27_22
.LBB27_21:                              #   in Loop: Header=BB27_16 Depth=2
	move	$s0, $a7
	move	$s2, $a6
	.p2align	4, , 16
.LBB27_22:                              # %_ZN11reduceDB_ltclEP6ClauseS1_.exit40.preheader.us
                                        #   in Loop: Header=BB27_16 Depth=2
	fld.s	$fa0, $a1, 4
	addi.w	$a7, $a4, -1
	alsl.d	$a6, $a4, $a3, 3
	move	$a4, $a7
	b	.LBB27_24
	.p2align	4, , 16
.LBB27_23:                              # %_ZN11reduceDB_ltclEP6ClauseS1_.exit40.backedge.us.us.backedge
                                        #   in Loop: Header=BB27_24 Depth=3
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, -8
.LBB27_24:                              # %_ZN11reduceDB_ltclEP6ClauseS1_.exit40.backedge.us.us
                                        #   Parent Loop BB27_14 Depth=1
                                        #     Parent Loop BB27_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a6, 0
	ld.wu	$t0, $a7, 0
	bstrpick.d	$t0, $t0, 31, 3
	slli.w	$t0, $t0, 3
	beq	$t0, $s1, .LBB27_23
# %bb.25:                               #   in Loop: Header=BB27_24 Depth=3
	fld.s	$fa1, $a7, 4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB27_23
# %bb.26:                               # %._ZN11reduceDB_ltclEP6ClauseS1_.exit40.thread_crit_edge.split.us.us
                                        #   in Loop: Header=BB27_16 Depth=2
	bge	$s0, $a4, .LBB27_13
# %bb.27:                               #   in Loop: Header=BB27_16 Depth=2
	st.d	$a7, $s2, 0
	st.d	$a5, $a6, 0
	move	$a6, $s0
	b	.LBB27_16
	.p2align	4, , 16
.LBB27_28:                              # %.split.preheader
                                        #   in Loop: Header=BB27_14 Depth=1
	andi	$a3, $a3, 24
	addi.d	$a4, $a0, 8
	addi.w	$a7, $zero, -1
	move	$a5, $fp
	.p2align	4, , 16
.LBB27_29:                              # %.split
                                        #   Parent Loop BB27_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_35 Depth 3
                                        #       Child Loop BB27_32 Depth 3
	addi.w	$s0, $a7, 1
	slli.d	$a6, $s0, 3
	ldx.d	$a6, $a0, $a6
	ld.w	$t0, $a6, 0
	alsl.d	$s2, $s0, $a0, 3
	bltu	$t0, $s3, .LBB27_37
# %bb.30:                               # %.lr.ph
                                        #   in Loop: Header=BB27_29 Depth=2
	bne	$a3, $s1, .LBB27_33
# %bb.31:                               # %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us.preheader
                                        #   in Loop: Header=BB27_29 Depth=2
	alsl.d	$a7, $a7, $a4, 3
	.p2align	4, , 16
.LBB27_32:                              # %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us
                                        #   Parent Loop BB27_14 Depth=1
                                        #     Parent Loop BB27_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a7, 8
	ld.w	$t0, $a6, 0
	addi.d	$s2, $a7, 8
	addi.w	$s0, $s0, 1
	move	$a7, $s2
	bltu	$s5, $t0, .LBB27_32
	b	.LBB27_37
	.p2align	4, , 16
.LBB27_33:                              # %.lr.ph.split
                                        #   in Loop: Header=BB27_29 Depth=2
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a6, 4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB27_37
# %bb.34:                               # %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.preheader
                                        #   in Loop: Header=BB27_29 Depth=2
	addi.w	$t0, $a7, 2
	alsl.d	$a7, $a7, $a2, 3
	.p2align	4, , 16
.LBB27_35:                              # %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge
                                        #   Parent Loop BB27_14 Depth=1
                                        #     Parent Loop BB27_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $a7
	ld.d	$a6, $a7, 0
	ld.w	$a7, $a6, 0
	move	$s0, $t0
	bgeu	$s5, $a7, .LBB27_37
# %bb.36:                               #   in Loop: Header=BB27_35 Depth=3
	fld.s	$fa1, $a6, 4
	addi.w	$t0, $s0, 1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	addi.d	$a7, $s2, 8
	bceqz	$fcc0, .LBB27_35
	.p2align	4, , 16
.LBB27_37:                              # %_ZN11reduceDB_ltclEP6ClauseS1_.exit40.preheader
                                        #   in Loop: Header=BB27_29 Depth=2
	addi.d	$a5, $a5, -1
	bge	$s0, $a5, .LBB27_13
# %bb.38:                               #   in Loop: Header=BB27_29 Depth=2
	slli.d	$a7, $a5, 3
	ldx.d	$t0, $a0, $a7
	st.d	$t0, $s2, 0
	stx.d	$a6, $a0, $a7
	move	$a7, $s0
	b	.LBB27_29
.Lfunc_end27:
	.size	_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_, .Lfunc_end27-_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unsatisfied clause: "
	.size	.L.str, 21

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Verified %d original clauses.\n"
	.size	.L.str.6, 31

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"literal count: %d, real value = %d\n"
	.size	.L.str.7, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s%d:%c"
	.size	.L.str.9, 8

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"-"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.space	1
	.size	.L.str.11, 1

	.globl	_ZN6SolverC1Ev
	.type	_ZN6SolverC1Ev,@function
_ZN6SolverC1Ev = _ZN6SolverC2Ev
	.globl	_ZN6SolverD1Ev
	.type	_ZN6SolverD1Ev,@function
_ZN6SolverD1Ev = _ZN6SolverD2Ev
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
