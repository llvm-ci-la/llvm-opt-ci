	.file	"state.cpp"
	.text
	.globl	_ZN5StateC2EP4Mesh              # -- Begin function _ZN5StateC2EP4Mesh
	.p2align	5
	.type	_ZN5StateC2EP4Mesh,@function
_ZN5StateC2EP4Mesh:                     # @_ZN5StateC2EP4Mesh
	.cfi_startproc
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $a0, 8
	st.w	$zero, $s0, 8
	st.d	$zero, $s0, 16
	st.d	$a0, $s0, 24
	st.d	$a0, $s0, 32
	st.d	$zero, $s0, 40
	addi.d	$a0, $s0, 56
	st.w	$zero, $s0, 56
	st.d	$zero, $s0, 64
	st.d	$a0, $s0, 72
	st.d	$a0, $s0, 80
	st.d	$zero, $s0, 88
	addi.d	$a0, $s0, 104
	st.w	$zero, $s0, 104
	st.d	$zero, $s0, 112
	st.d	$a0, $s0, 120
	st.d	$a0, $s0, 128
	st.d	$zero, $s0, 136
	addi.d	$a0, $s0, 152
	st.w	$zero, $s0, 152
	st.d	$zero, $s0, 160
	st.d	$a0, $s0, 168
	st.d	$a0, $s0, 176
	st.d	$zero, $s0, 184
	addi.d	$a0, $s0, 224
	ori	$a2, $zero, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $s0, 192
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN5StateC2EP4Mesh, .Lfunc_end0-_ZN5StateC2EP4Mesh
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State4initEi                # -- Begin function _ZN5State4initEi
	.p2align	5
	.type	_ZN5State4initEi,@function
_ZN5State4initEi:                       # @_ZN5State4initEi
	.cfi_startproc
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
	ld.d	$a0, $a0, 192
	ld.d	$s0, $a0, 1160
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a3, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 208
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 216
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	_ZN5State4initEi, .Lfunc_end1-_ZN5State4initEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State8allocateEm            # -- Begin function _ZN5State8allocateEm
	.p2align	5
	.type	_ZN5State8allocateEm,@function
_ZN5State8allocateEm:                   # @_ZN5State8allocateEm
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 200
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a3, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 208
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 216
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	_ZN5State8allocateEm, .Lfunc_end2-_ZN5State8allocateEm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State6resizeEm              # -- Begin function _ZN5State6resizeEm
	.p2align	5
	.type	_ZN5State6resizeEm,@function
_ZN5State6resizeEm:                     # @_ZN5State6resizeEm
	.cfi_startproc
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
	ld.d	$a2, $a0, 200
	move	$s0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	bgeu	$a0, $s0, .LBB3_2
# %bb.1:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN10MallocPlus18memory_realloc_allEm)
	jr	$t8
.LBB3_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZN5State6resizeEm, .Lfunc_end3-_ZN5State6resizeEm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State17memory_reset_ptrsEv  # -- Begin function _ZN5State17memory_reset_ptrsEv
	.p2align	5
	.type	_ZN5State17memory_reset_ptrsEv,@function
_ZN5State17memory_reset_ptrsEv:         # @_ZN5State17memory_reset_ptrsEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 208
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 216
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN5State17memory_reset_ptrsEv, .Lfunc_end4-_ZN5State17memory_reset_ptrsEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State9terminateEv           # -- Begin function _ZN5State9terminateEv
	.p2align	5
	.type	_ZN5State9terminateEv,@function
_ZN5State9terminateEv:                  # @_ZN5State9terminateEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 200
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 208
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 216
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jr	$t8
.Lfunc_end5:
	.size	_ZN5State9terminateEv, .Lfunc_end5-_ZN5State9terminateEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State18add_boundary_cellsEv # -- Begin function _ZN5State18add_boundary_cellsEv
	.p2align	5
	.type	_ZN5State18add_boundary_cellsEv,@function
_ZN5State18add_boundary_cellsEv:        # @_ZN5State18add_boundary_cellsEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
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
	move	$fp, $a0
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 192
	ld.d	$s8, $a4, 1328
	ld.d	$s7, $a4, 1336
	ld.d	$s6, $a4, 1352
	ld.d	$s5, $a4, 1360
	ld.d	$s4, $a4, 1368
	ld.d	$s3, $a4, 1376
	ld.d	$s2, $a4, 1384
	ld.d	$a0, $a4, 1160
	ld.d	$s1, $a4, 1392
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	beqz	$a0, .LBB6_5
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a4, 880
	ld.d	$a2, $a4, 904
	ld.d	$a3, $a4, 928
	ld.d	$a4, $a4, 952
	ori	$a5, $zero, 8
	bgeu	$a0, $a5, .LBB6_80
# %bb.2:
	move	$a5, $zero
	move	$a6, $zero
.LBB6_3:                                # %scalar.ph.preheader
	addi.w	$a7, $a5, 1
	.p2align	4, , 16
.LBB6_4:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a5, 2
	ldx.w	$t0, $s6, $a5
	ldx.w	$t1, $s8, $a5
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $a1, $t0
	ldx.w	$t3, $a2, $t0
	xor	$t2, $t1, $t2
	sltui	$t2, $t2, 1
	add.d	$a6, $a6, $t2
	xor	$t1, $t1, $t3
	ldx.w	$a5, $s7, $a5
	ldx.w	$t2, $a3, $t0
	sltui	$t1, $t1, 1
	add.d	$a6, $a6, $t1
	ldx.w	$t0, $a4, $t0
	xor	$t1, $a5, $t2
	sltui	$t1, $t1, 1
	add.d	$a6, $a6, $t1
	xor	$a5, $a5, $t0
	sltui	$a5, $a5, 1
	add.d	$a6, $a6, $a5
	bstrpick.d	$a5, $a7, 31, 0
	addi.w	$a7, $a7, 1
	bltu	$a5, $a0, .LBB6_4
	b	.LBB6_6
.LBB6_5:
	move	$a6, $zero
.LBB6_6:                                # %._crit_edge
	ld.d	$a2, $fp, 200
	add.w	$s0, $a6, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 208
	st.d	$a0, $fp, 200
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 216
	st.d	$a0, $fp, 208
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	st.d	$a0, $fp, 216
	addi.d	$a0, $a1, 8
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	st.d	$a0, $a1, 1328
	addi.d	$a0, $a1, 8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	st.d	$a0, $a1, 1336
	addi.d	$a0, $a1, 8
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	st.d	$a0, $a1, 1352
	addi.d	$a0, $a1, 8
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	st.d	$a0, $a1, 1360
	addi.d	$a0, $a1, 8
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	st.d	$a0, $a1, 1368
	addi.d	$a0, $a1, 8
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	st.d	$a0, $a1, 1376
	addi.d	$a0, $a1, 8
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	st.d	$a0, $a1, 1384
	addi.d	$a0, $a1, 8
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 192
	ld.d	$s5, $a3, 1328
	ld.d	$s4, $a3, 1336
	ld.d	$s6, $a3, 1352
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $fp, 1312
	ld.d	$a1, $fp, 1304
	ld.d	$a2, $a3, 1368
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s7, $a3, 1376
	ld.d	$s2, $a3, 1384
	sub.d	$a2, $a4, $a1
	srai.d	$a2, $a2, 2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $a3, 1392
	bgeu	$a2, $s0, .LBB6_8
# %bb.7:
	addi.d	$a0, $fp, 1304
	sub.d	$a1, $s0, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB6_11
.LBB6_8:
	bgeu	$s0, $a2, .LBB6_11
# %bb.9:
	alsl.d	$a1, $s0, $a1, 2
	beq	$a4, $a1, .LBB6_11
# %bb.10:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $fp, 1312
.LBB6_11:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a3, $fp, 1424
	ld.d	$a1, $fp, 1416
	sub.d	$a2, $a3, $a1
	srai.d	$a2, $a2, 3
	addi.d	$a0, $fp, 1416
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a2, $s0, .LBB6_13
# %bb.12:
	sub.d	$a1, $s0, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB6_16
.LBB6_13:
	bgeu	$s0, $a2, .LBB6_16
# %bb.14:
	alsl.d	$a1, $s0, $a1, 3
	beq	$a3, $a1, .LBB6_16
# %bb.15:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $fp, 1424
.LBB6_16:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$a3, $fp, 1448
	ld.d	$a1, $fp, 1440
	sub.d	$a2, $a3, $a1
	srai.d	$a2, $a2, 3
	addi.d	$a0, $fp, 1440
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bgeu	$a2, $s0, .LBB6_18
# %bb.17:
	sub.d	$a1, $s0, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB6_21
.LBB6_18:
	bgeu	$s0, $a2, .LBB6_21
# %bb.19:
	alsl.d	$a1, $s0, $a1, 3
	beq	$a3, $a1, .LBB6_21
# %bb.20:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i480
	st.d	$a1, $fp, 1448
.LBB6_21:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit481
	ld.d	$a3, $fp, 1472
	ld.d	$a1, $fp, 1464
	sub.d	$a2, $a3, $a1
	srai.d	$a2, $a2, 3
	addi.d	$a0, $fp, 1464
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bgeu	$a2, $s0, .LBB6_23
# %bb.22:
	sub.d	$a1, $s0, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB6_26
.LBB6_23:
	bgeu	$s0, $a2, .LBB6_26
# %bb.24:
	alsl.d	$a1, $s0, $a1, 3
	beq	$a3, $a1, .LBB6_26
# %bb.25:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i483
	st.d	$a1, $fp, 1472
.LBB6_26:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit484
	ld.d	$a3, $fp, 1496
	ld.d	$a1, $fp, 1488
	sub.d	$a2, $a3, $a1
	srai.d	$a2, $a2, 3
	addi.d	$a0, $fp, 1488
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bgeu	$a2, $s0, .LBB6_28
# %bb.27:
	sub.d	$a1, $s0, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB6_31
.LBB6_28:
	bgeu	$s0, $a2, .LBB6_31
# %bb.29:
	alsl.d	$a1, $s0, $a1, 3
	beq	$a3, $a1, .LBB6_31
# %bb.30:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i486
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $a0, 1496
.LBB6_31:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit487
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a0, 1160
	addi.w	$t0, $s3, 0
	bge	$t0, $s0, .LBB6_35
# %bb.32:                               # %.lr.ph493.preheader
	sub.d	$a1, $s0, $t0
	ori	$a2, $zero, 24
	move	$a0, $t0
	bgeu	$a1, $a2, .LBB6_85
.LBB6_33:                               # %.lr.ph493.preheader569
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	alsl.d	$a2, $a0, $s7, 2
	alsl.d	$a3, $a0, $s2, 2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	sub.d	$a0, $s0, $a0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB6_34:                               # %.lr.ph493
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a1, 0
	st.w	$a5, $a2, 0
	st.w	$a5, $a3, 0
	st.w	$a5, $a4, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB6_34
.LBB6_35:                               # %.preheader488
	st.d	$t0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beqz	$s3, .LBB6_46
# %bb.36:                               # %.lr.ph496
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $a2, 880
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 200
	ld.d	$a4, $a0, 208
	ld.d	$a5, $a0, 216
	ld.d	$a6, $a2, 904
	ld.d	$a7, $a2, 928
	ld.d	$t0, $a2, 952
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $s5
	move	$t4, $s6
	ld.d	$t5, $sp, 96                    # 8-byte Folded Reload
	move	$t6, $s7
	move	$t7, $s4
	move	$t8, $s2
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s3
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB6_38
	.p2align	4, , 16
.LBB6_37:                               #   in Loop: Header=BB6_38 Depth=1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	bstrpick.d	$a0, $t2, 31, 0
	addi.d	$t1, $t1, 8
	addi.d	$ra, $ra, 4
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t7, 4
	addi.d	$t6, $t6, 4
	addi.d	$t5, $t5, 4
	addi.d	$t4, $t4, 4
	addi.d	$t3, $t3, 4
	bgeu	$a0, $s3, .LBB6_46
.LBB6_38:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $t4, 0
	ld.w	$fp, $t3, 0
	slli.d	$s8, $a0, 2
	ldx.w	$s8, $s0, $s8
	bne	$fp, $s8, .LBB6_40
# %bb.39:                               #   in Loop: Header=BB6_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.w	$a2, $t5, 0
	fldx.d	$fa0, $a0, $t1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $fp, 0
	bstrpick.d	$s8, $a2, 31, 0
	slli.d	$s1, $s8, 3
	fstx.d	$fa0, $a0, $s1
	fldx.d	$fa0, $fp, $t1
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	move	$ra, $t8
	move	$t8, $t6
	move	$t6, $t5
	move	$t5, $a5
	move	$a5, $a4
	move	$a4, $a3
	move	$a3, $t0
	move	$t0, $a7
	move	$a7, $a6
	move	$a6, $s0
	ld.d	$s0, $a1, 0
	slli.d	$s8, $s8, 2
	move	$a1, $s5
	move	$s5, $s4
	move	$s4, $s3
	move	$s3, $s2
	move	$s2, $s6
	move	$s6, $s7
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	stx.w	$a2, $s7, $s8
	move	$s7, $s6
	move	$s6, $s2
	move	$s2, $s3
	move	$s3, $s4
	move	$s4, $s5
	move	$s5, $a1
	fstx.d	$fa0, $fp, $s1
	fldx.d	$fa0, $s0, $t1
	fldx.d	$fa1, $a0, $t1
	stx.w	$t2, $s7, $s8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$fp, $t4, 0
	fsub.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $s1
	fldx.d	$fa0, $a0, $t1
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a6, $fp
	move	$a6, $a7
	move	$a7, $t0
	move	$t0, $a3
	move	$a3, $a4
	move	$a4, $a5
	move	$a5, $t5
	move	$t5, $t6
	move	$t6, $t8
	move	$t8, $ra
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s1
	fldx.d	$fa0, $a3, $t1
	addi.d	$a0, $fp, -1
	stx.w	$a0, $a1, $s8
	ld.w	$a0, $t7, 0
	fstx.d	$fa0, $a3, $s1
	fldx.d	$fa0, $a4, $t1
	stx.w	$a0, $s4, $s8
	ld.w	$a0, $t4, 0
	fneg.d	$fa0, $fa0
	fstx.d	$fa0, $a4, $s1
	fldx.d	$fa0, $a5, $t1
	stx.w	$a0, $s6, $s8
	ld.w	$fp, $t3, 0
	fstx.d	$fa0, $a5, $s1
	addi.w	$a2, $a2, 1
.LBB6_40:                               #   in Loop: Header=BB6_38 Depth=1
	slli.d	$s0, $a0, 2
	ldx.w	$s0, $a6, $s0
	bne	$fp, $s0, .LBB6_45
# %bb.41:                               #   in Loop: Header=BB6_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.w	$a2, $t6, 0
	fldx.d	$fa0, $a0, $t1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $a1, 0
	bstrpick.d	$s0, $a2, 31, 0
	slli.d	$s1, $s0, 3
	fstx.d	$fa0, $a0, $s1
	fldx.d	$fa0, $fp, $t1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $a1, 0
	slli.d	$s0, $s0, 2
	stx.w	$a2, $s7, $s0
	fstx.d	$fa0, $fp, $s1
	fldx.d	$fa0, $s8, $t1
	fldx.d	$fa1, $a0, $t1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	stx.w	$t2, $a0, $s0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$fp, $t4, 0
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s8, $s1
	fldx.d	$fa0, $a0, $t1
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a6, $fp
	fstx.d	$fa0, $a0, $s1
	fldx.d	$fa0, $a3, $t1
	addi.d	$a0, $fp, 1
	stx.w	$a0, $s5, $s0
	ld.w	$a0, $t7, 0
	fstx.d	$fa0, $a3, $s1
	fldx.d	$fa0, $a4, $t1
	stx.w	$a0, $s4, $s0
	ld.w	$a0, $t4, 0
	fneg.d	$fa0, $fa0
	fstx.d	$fa0, $a4, $s1
	fldx.d	$fa0, $a5, $t1
	stx.w	$a0, $s6, $s0
	fstx.d	$fa0, $a5, $s1
	addi.w	$a2, $a2, 1
	ld.w	$fp, $t7, 0
	slli.d	$s0, $a0, 2
	ldx.w	$s0, $a7, $s0
	bne	$fp, $s0, .LBB6_43
.LBB6_42:                               #   in Loop: Header=BB6_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	fldx.d	$fa0, $a0, $t1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $fp, 0
	bstrpick.d	$s0, $a2, 31, 0
	slli.d	$s1, $s0, 3
	fstx.d	$fa0, $a0, $s1
	fldx.d	$fa0, $fp, $t1
	ld.d	$a0, $a1, 0
	st.w	$a2, $t8, 0
	slli.d	$s0, $s0, 2
	fstx.d	$fa0, $fp, $s1
	fldx.d	$fa0, $a0, $t1
	stx.w	$a2, $s2, $s0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	stx.w	$t2, $s8, $s0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $s8, 0
	fstx.d	$fa0, $a0, $s1
	ld.w	$a0, $t3, 0
	fldx.d	$fa0, $fp, $t1
	fldx.d	$fa1, $s8, $t1
	stx.w	$a0, $s5, $s0
	ld.w	$a0, $t4, 0
	fsub.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $s8, $s1
	fldx.d	$fa0, $a3, $t1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a7, $a0
	fstx.d	$fa0, $a3, $s1
	fldx.d	$fa0, $a4, $t1
	addi.d	$a0, $a0, -1
	stx.w	$a0, $s4, $s0
	ld.w	$a0, $t4, 0
	fstx.d	$fa0, $a4, $s1
	fldx.d	$fa0, $a5, $t1
	stx.w	$a0, $s6, $s0
	ld.w	$fp, $t7, 0
	fneg.d	$fa0, $fa0
	fstx.d	$fa0, $a5, $s1
	addi.w	$a2, $a2, 1
.LBB6_43:                               #   in Loop: Header=BB6_38 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $t0, $a0
	bne	$fp, $a0, .LBB6_37
# %bb.44:                               #   in Loop: Header=BB6_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	fldx.d	$fa0, $a0, $t1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $fp, 0
	bstrpick.d	$s0, $a2, 31, 0
	slli.d	$s1, $s0, 3
	fstx.d	$fa0, $a0, $s1
	fldx.d	$fa0, $fp, $t1
	ld.d	$a0, $a1, 0
	st.w	$a2, $ra, 0
	slli.d	$s0, $s0, 2
	fstx.d	$fa0, $fp, $s1
	fldx.d	$fa0, $a0, $t1
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	stx.w	$a2, $s8, $s0
	stx.w	$t2, $s2, $s0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $s8, 0
	fstx.d	$fa0, $a0, $s1
	ld.w	$a0, $t3, 0
	fldx.d	$fa0, $fp, $t1
	fldx.d	$fa1, $s8, $t1
	stx.w	$a0, $s5, $s0
	ld.w	$a0, $t4, 0
	fadd.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $s8, $s1
	fldx.d	$fa0, $a3, $t1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $t0, $a0
	fstx.d	$fa0, $a3, $s1
	fldx.d	$fa0, $a4, $t1
	addi.d	$a0, $a0, 1
	stx.w	$a0, $s4, $s0
	ld.w	$a0, $t4, 0
	fstx.d	$fa0, $a4, $s1
	fldx.d	$fa0, $a5, $t1
	stx.w	$a0, $s6, $s0
	fneg.d	$fa0, $fa0
	fstx.d	$fa0, $a5, $s1
	addi.w	$a2, $a2, 1
	b	.LBB6_37
	.p2align	4, , 16
.LBB6_45:                               #   in Loop: Header=BB6_38 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$fp, $t7, 0
	slli.d	$s0, $a0, 2
	ldx.w	$s0, $a7, $s0
	beq	$fp, $s0, .LBB6_42
	b	.LBB6_43
.LBB6_46:                               # %.preheader
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 8                     # 8-byte Folded Reload
	bge	$t4, $a0, .LBB6_79
# %bb.47:                               # %.lr.ph498
	ld.d	$a1, $s0, 880
	ld.d	$a2, $s0, 904
	ld.d	$a3, $s0, 928
	ld.d	$a4, $s0, 952
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a5, $t4, $a0, 2
	alsl.d	$a6, $t4, $s2, 2
	alsl.d	$a7, $t4, $s5, 2
	alsl.d	$t0, $t4, $s6, 2
	alsl.d	$t1, $t4, $s4, 2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$t2, $t4, $a0, 2
	alsl.d	$t3, $t4, $s7, 2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $t4
	move	$t4, $s3
	b	.LBB6_51
	.p2align	4, , 16
.LBB6_48:                               #   in Loop: Header=BB6_51 Depth=1
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$t5, $t6, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $t6, $t5
	st.w	$t5, $a5, 0
	ld.w	$t5, $a6, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $t6, $t5
	slli.d	$t5, $t5, 2
.LBB6_49:                               #   in Loop: Header=BB6_51 Depth=1
	ldx.w	$t5, $t6, $t5
	st.w	$t5, $t3, 0
.LBB6_50:                               #   in Loop: Header=BB6_51 Depth=1
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.d	$t4, $t4, 1
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	addi.d	$a0, $a0, -1
	addi.d	$t3, $t3, 4
	beqz	$a0, .LBB6_79
.LBB6_51:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $t0, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t6, $a1, $t5
	ld.w	$t7, $a7, 0
	addi.w	$t6, $t6, -1
	bne	$t7, $t6, .LBB6_57
# %bb.52:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t6, $t1, 0
	ldx.w	$t7, $a3, $t5
	move	$t5, $t4
	beq	$t6, $t7, .LBB6_54
# %bb.53:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t5, $t3, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s2, $t5
	slli.d	$t5, $t5, 2
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$t5, $t6, $t5
.LBB6_54:                               #   in Loop: Header=BB6_51 Depth=1
	st.w	$t5, $a6, 0
	ld.w	$t5, $t0, 0
	ld.w	$t6, $t1, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a4, $t5
	bne	$t6, $t5, .LBB6_56
# %bb.55:                               #   in Loop: Header=BB6_51 Depth=1
	st.w	$t4, $t2, 0
	b	.LBB6_57
	.p2align	4, , 16
.LBB6_56:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t5, $t3, 0
	slli.d	$t5, $t5, 2
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$t5, $t6, $t5
	slli.d	$t5, $t5, 2
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$t5, $t6, $t5
	st.w	$t5, $t2, 0
.LBB6_57:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t6, $t0, 0
	slli.d	$t5, $t6, 2
	ldx.w	$t7, $a2, $t5
	ld.w	$t8, $a7, 0
	addi.w	$t7, $t7, 1
	bne	$t8, $t7, .LBB6_66
# %bb.58:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t7, $a5, 0
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $s2, $t7
	slli.d	$t7, $t7, 2
	ldx.w	$t8, $s6, $t7
	bge	$t8, $t6, .LBB6_60
# %bb.59:                               #   in Loop: Header=BB6_51 Depth=1
	ldx.w	$t5, $s7, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s7, $t5
	st.w	$t5, $a6, 0
	ld.w	$t5, $a5, 0
	slli.d	$t5, $t5, 2
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$t5, $t6, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s7, $t5
	b	.LBB6_65
	.p2align	4, , 16
.LBB6_60:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t6, $t1, 0
	ldx.w	$t8, $a3, $t5
	move	$t5, $t4
	beq	$t6, $t8, .LBB6_62
# %bb.61:                               #   in Loop: Header=BB6_51 Depth=1
	ldx.w	$t5, $s7, $t7
.LBB6_62:                               #   in Loop: Header=BB6_51 Depth=1
	st.w	$t5, $a6, 0
	ld.w	$t5, $t0, 0
	ld.w	$t6, $t1, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a4, $t5
	bne	$t6, $t5, .LBB6_64
# %bb.63:                               #   in Loop: Header=BB6_51 Depth=1
	st.w	$t4, $t2, 0
	b	.LBB6_66
.LBB6_64:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t5, $a5, 0
	slli.d	$t5, $t5, 2
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$t5, $t6, $t5
.LBB6_65:                               #   in Loop: Header=BB6_51 Depth=1
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s7, $t5
	st.w	$t5, $t2, 0
.LBB6_66:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t5, $t0, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t6, $a3, $t5
	ld.w	$t7, $t1, 0
	addi.w	$t6, $t6, -1
	bne	$t7, $t6, .LBB6_72
# %bb.67:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t6, $a7, 0
	ldx.w	$t7, $a1, $t5
	move	$t5, $t4
	beq	$t6, $t7, .LBB6_69
# %bb.68:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t5, $t2, 0
	slli.d	$t5, $t5, 2
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$t5, $t6, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s2, $t5
.LBB6_69:                               #   in Loop: Header=BB6_51 Depth=1
	st.w	$t5, $a5, 0
	ld.w	$t5, $t0, 0
	ld.w	$t6, $a7, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a2, $t5
	bne	$t6, $t5, .LBB6_71
# %bb.70:                               #   in Loop: Header=BB6_51 Depth=1
	st.w	$t4, $t3, 0
	b	.LBB6_72
	.p2align	4, , 16
.LBB6_71:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t5, $t2, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s2, $t5
	st.w	$t5, $t3, 0
.LBB6_72:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t6, $t0, 0
	slli.d	$t5, $t6, 2
	ldx.w	$t7, $a4, $t5
	ld.w	$t8, $t1, 0
	addi.w	$t7, $t7, 1
	bne	$t8, $t7, .LBB6_50
# %bb.73:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t7, $a6, 0
	slli.d	$t7, $t7, 2
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$t7, $t8, $t7
	slli.d	$t7, $t7, 2
	ldx.w	$t8, $s6, $t7
	blt	$t8, $t6, .LBB6_48
# %bb.74:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t6, $a7, 0
	ldx.w	$t8, $a1, $t5
	move	$t5, $t4
	beq	$t6, $t8, .LBB6_76
# %bb.75:                               #   in Loop: Header=BB6_51 Depth=1
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$t5, $t5, $t7
.LBB6_76:                               #   in Loop: Header=BB6_51 Depth=1
	st.w	$t5, $a5, 0
	ld.w	$t5, $t0, 0
	ld.w	$t6, $a7, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a2, $t5
	bne	$t6, $t5, .LBB6_78
# %bb.77:                               #   in Loop: Header=BB6_51 Depth=1
	st.w	$t4, $t3, 0
	b	.LBB6_50
.LBB6_78:                               #   in Loop: Header=BB6_51 Depth=1
	ld.w	$t5, $a6, 0
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s7, $t5
	slli.d	$t5, $t5, 2
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_49
.LBB6_79:                               # %._crit_edge499
	ld.d	$a0, $sp, 104
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %pc_hi20(save_ncells)
	st.w	$s3, $a2, %pc_lo12(save_ncells)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$a2, $s0, 1160
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 224
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 224
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
.LBB6_80:                               # %vector.scevcheck
	addi.d	$a6, $a0, -1
	bstrpick.d	$a7, $a6, 31, 0
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	move	$a5, $zero
	beq	$a7, $t0, .LBB6_94
# %bb.81:                               # %vector.scevcheck
	srli.d	$a7, $a6, 32
	move	$a6, $a5
	bnez	$a7, .LBB6_3
# %bb.82:                               # %vector.ph
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a5, $a0, 32, 3
	slli.d	$a5, $a5, 3
	addi.d	$a6, $s7, 16
	addi.d	$a7, $s6, 16
	vrepli.b	$vr0, 0
	addi.d	$t0, $s8, 16
	move	$t1, $a5
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB6_83:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a7, -16
	vld	$vr2, $t0, -16
	vld	$vr3, $t0, 0
	vld	$vr5, $a7, 0
	vshuf4i.w	$vr6, $vr4, 50
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vshuf4i.w	$vr4, $vr4, 16
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr7, $vr5, 50
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vshuf4i.w	$vr5, $vr5, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vpickve2gr.d	$t2, $vr4, 0
	slli.d	$t5, $t2, 2
	vpickve2gr.d	$t2, $vr4, 1
	slli.d	$t7, $t2, 2
	vpickve2gr.d	$t2, $vr6, 0
	slli.d	$t8, $t2, 2
	vpickve2gr.d	$t2, $vr6, 1
	slli.d	$fp, $t2, 2
	vpickve2gr.d	$t2, $vr5, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr5, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr7, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t6, $vr7, 1
	slli.d	$t6, $t6, 2
	ldx.w	$s0, $a1, $t5
	ldx.w	$ra, $a1, $t7
	ldx.w	$s1, $a1, $t8
	ldx.w	$s2, $a1, $fp
	vinsgr2vr.w	$vr4, $s0, 0
	vinsgr2vr.w	$vr4, $ra, 1
	vinsgr2vr.w	$vr4, $s1, 2
	vinsgr2vr.w	$vr4, $s2, 3
	ldx.w	$s0, $a1, $t2
	ldx.w	$s1, $a1, $t3
	ldx.w	$s2, $a1, $t4
	ldx.w	$ra, $a1, $t6
	vinsgr2vr.w	$vr5, $s0, 0
	vinsgr2vr.w	$vr5, $s1, 1
	vinsgr2vr.w	$vr5, $s2, 2
	vinsgr2vr.w	$vr5, $ra, 3
	vseq.w	$vr4, $vr2, $vr4
	vseq.w	$vr5, $vr3, $vr5
	vsub.w	$vr0, $vr0, $vr4
	vsub.w	$vr1, $vr1, $vr5
	ldx.w	$s0, $a2, $t5
	ldx.w	$s1, $a2, $t7
	ldx.w	$s2, $a2, $t8
	ldx.w	$ra, $a2, $fp
	vinsgr2vr.w	$vr4, $s0, 0
	vinsgr2vr.w	$vr4, $s1, 1
	vinsgr2vr.w	$vr4, $s2, 2
	vinsgr2vr.w	$vr4, $ra, 3
	ldx.w	$s0, $a2, $t2
	ldx.w	$s1, $a2, $t3
	ldx.w	$s2, $a2, $t4
	ldx.w	$ra, $a2, $t6
	vinsgr2vr.w	$vr5, $s0, 0
	vinsgr2vr.w	$vr5, $s1, 1
	vinsgr2vr.w	$vr5, $s2, 2
	vinsgr2vr.w	$vr5, $ra, 3
	vseq.w	$vr2, $vr2, $vr4
	vseq.w	$vr3, $vr3, $vr5
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	ldx.w	$s0, $a3, $t5
	ldx.w	$s1, $a3, $t7
	ldx.w	$s2, $a3, $t8
	ldx.w	$ra, $a3, $fp
	vinsgr2vr.w	$vr4, $s0, 0
	vinsgr2vr.w	$vr4, $s1, 1
	vinsgr2vr.w	$vr4, $s2, 2
	vinsgr2vr.w	$vr4, $ra, 3
	ldx.w	$s0, $a3, $t2
	ldx.w	$s1, $a3, $t3
	ldx.w	$s2, $a3, $t4
	ldx.w	$ra, $a3, $t6
	vinsgr2vr.w	$vr5, $s0, 0
	vinsgr2vr.w	$vr5, $s1, 1
	vinsgr2vr.w	$vr5, $s2, 2
	vinsgr2vr.w	$vr5, $ra, 3
	vseq.w	$vr4, $vr2, $vr4
	vseq.w	$vr5, $vr3, $vr5
	vsub.w	$vr0, $vr0, $vr4
	vsub.w	$vr1, $vr1, $vr5
	ldx.w	$t5, $a4, $t5
	ldx.w	$t7, $a4, $t7
	ldx.w	$t8, $a4, $t8
	ldx.w	$fp, $a4, $fp
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr4, $t7, 1
	vinsgr2vr.w	$vr4, $t8, 2
	vinsgr2vr.w	$vr4, $fp, 3
	ldx.w	$t2, $a4, $t2
	ldx.w	$t3, $a4, $t3
	ldx.w	$t4, $a4, $t4
	ldx.w	$t5, $a4, $t6
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr5, $t3, 1
	vinsgr2vr.w	$vr5, $t4, 2
	vinsgr2vr.w	$vr5, $t5, 3
	vseq.w	$vr2, $vr2, $vr4
	vseq.w	$vr3, $vr3, $vr5
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	addi.d	$t1, $t1, -8
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB6_83
# %bb.84:                               # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a6, $vr0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $a5, .LBB6_3
	b	.LBB6_6
.LBB6_85:                               # %vector.memcheck
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a3, $s7, $a0
	ori	$a2, $zero, 32
	move	$a0, $t0
	bltu	$a3, $a2, .LBB6_33
# %bb.86:                               # %vector.memcheck
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a3, $s2, $a0
	move	$a0, $t0
	bltu	$a3, $a2, .LBB6_33
# %bb.87:                               # %vector.memcheck
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a3, $a0, $a2
	ori	$a2, $zero, 32
	move	$a0, $t0
	bltu	$a3, $a2, .LBB6_33
# %bb.88:                               # %vector.memcheck
	sub.d	$a3, $s2, $s7
	move	$a0, $t0
	bltu	$a3, $a2, .LBB6_33
# %bb.89:                               # %vector.memcheck
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a3, $a0, $s7
	ori	$a2, $zero, 32
	move	$a0, $t0
	bltu	$a3, $a2, .LBB6_33
# %bb.90:                               # %vector.memcheck
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a3, $a0, $s2
	move	$a0, $t0
	bltu	$a3, $a2, .LBB6_33
# %bb.91:                               # %vector.ph560
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	add.d	$a0, $t0, $a2
	slli.d	$a3, $t0, 2
	addi.d	$a6, $a3, 16
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a6
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a6
	add.d	$a5, $s7, $a6
	add.d	$a6, $s2, $a6
	vrepli.b	$vr0, -1
	move	$a7, $a2
	.p2align	4, , 16
.LBB6_92:                               # %vector.body563
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr0, $a6, 0
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a7, $a7, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_92
# %bb.93:                               # %middle.block566
	bne	$a1, $a2, .LBB6_33
	b	.LBB6_35
.LBB6_94:
	move	$a6, $a5
	b	.LBB6_3
.Lfunc_end6:
	.size	_ZN5State18add_boundary_cellsEv, .Lfunc_end6-_ZN5State18add_boundary_cellsEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State31apply_boundary_conditions_localEv # -- Begin function _ZN5State31apply_boundary_conditions_localEv
	.p2align	5
	.type	_ZN5State31apply_boundary_conditions_localEv,@function
_ZN5State31apply_boundary_conditions_localEv: # @_ZN5State31apply_boundary_conditions_localEv
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
	move	$s0, $a0
	ld.d	$fp, $a0, 192
	ld.d	$a0, $fp, 1368
	pcalau12i	$s1, %pc_hi20(_ZZN5State31apply_boundary_conditions_localEvE4nlft)
	ld.d	$a1, $fp, 1376
	st.d	$a0, $s1, %pc_lo12(_ZZN5State31apply_boundary_conditions_localEvE4nlft)
	pcalau12i	$s3, %pc_hi20(_ZZN5State31apply_boundary_conditions_localEvE4nrht)
	ld.d	$a0, $fp, 1384
	st.d	$a1, $s3, %pc_lo12(_ZZN5State31apply_boundary_conditions_localEvE4nrht)
	ld.d	$a1, $fp, 1392
	pcalau12i	$s2, %pc_hi20(_ZZN5State31apply_boundary_conditions_localEvE4nbot)
	st.d	$a0, $s2, %pc_lo12(_ZZN5State31apply_boundary_conditions_localEvE4nbot)
	pcalau12i	$s4, %pc_hi20(_ZZN5State31apply_boundary_conditions_localEvE4ntop)
	st.d	$a1, $s4, %pc_lo12(_ZZN5State31apply_boundary_conditions_localEvE4ntop)
	addi.d	$a1, $sp, 12
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh10get_boundsERiS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.w	$a1, $sp, 8
	bgeu	$a0, $a1, .LBB7_15
# %bb.1:                                # %.lr.ph
	ld.d	$t6, $s0, 192
	bstrpick.d	$s5, $a0, 31, 0
	ld.d	$a2, $t6, 1328
	ld.d	$a3, $t6, 1352
	ld.d	$a4, $t6, 880
	ld.d	$a5, $s3, %pc_lo12(_ZZN5State31apply_boundary_conditions_localEvE4nrht)
	ld.d	$a6, $s0, 200
	ld.d	$a7, $s0, 208
	ld.d	$t0, $s0, 216
	ld.d	$t1, $t6, 904
	ld.d	$t2, $s1, %pc_lo12(_ZZN5State31apply_boundary_conditions_localEvE4nlft)
	ld.d	$t3, $t6, 1336
	ld.d	$t4, $t6, 928
	ld.d	$t5, $s4, %pc_lo12(_ZZN5State31apply_boundary_conditions_localEvE4ntop)
	ld.d	$t6, $t6, 952
	ld.d	$t7, $s2, %pc_lo12(_ZZN5State31apply_boundary_conditions_localEvE4nbot)
	alsl.d	$t8, $s5, $t0, 3
	alsl.d	$s0, $s5, $a7, 3
	alsl.d	$s1, $s5, $a6, 3
	slli.d	$s2, $s5, 2
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_3 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$t8, $t8, 8
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 8
	addi.d	$t7, $t7, 4
	addi.d	$t5, $t5, 4
	addi.d	$t2, $t2, 4
	addi.d	$a5, $a5, 4
	beq	$a1, $a0, .LBB7_15
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	slli.d	$s4, $a0, 2
	ldx.w	$s3, $a3, $s4
	ldx.w	$s5, $a2, $s4
	slli.d	$s3, $s3, 2
	ldx.w	$s6, $a4, $s3
	bge	$s5, $s6, .LBB7_6
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$s6, $a5, $s2
	ld.w	$s7, $fp, 1160
	bge	$s6, $s7, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	slli.d	$s6, $s6, 3
	fldx.d	$fa0, $a6, $s6
	fst.d	$fa0, $s1, 0
	fldx.d	$fa0, $a7, $s6
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s0, 0
	fldx.d	$fa0, $t0, $s6
	fst.d	$fa0, $t8, 0
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$s6, $t1, $s3
	bge	$s6, $s5, .LBB7_9
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$s5, $t2, $s2
	ld.w	$s6, $fp, 1160
	bge	$s5, $s6, .LBB7_9
# %bb.8:                                #   in Loop: Header=BB7_3 Depth=1
	slli.d	$s5, $s5, 3
	fldx.d	$fa0, $a6, $s5
	fst.d	$fa0, $s1, 0
	fldx.d	$fa0, $a7, $s5
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s0, 0
	fldx.d	$fa0, $t0, $s5
	fst.d	$fa0, $t8, 0
.LBB7_9:                                #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$s4, $t3, $s4
	ldx.w	$s5, $t4, $s3
	bge	$s4, $s5, .LBB7_12
# %bb.10:                               #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$s5, $t5, $s2
	ld.w	$s6, $fp, 1160
	bge	$s5, $s6, .LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_3 Depth=1
	slli.d	$s5, $s5, 3
	fldx.d	$fa0, $a6, $s5
	fst.d	$fa0, $s1, 0
	fldx.d	$fa0, $a7, $s5
	fst.d	$fa0, $s0, 0
	fldx.d	$fa0, $t0, $s5
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $t8, 0
.LBB7_12:                               #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$s3, $t6, $s3
	bge	$s3, $s4, .LBB7_2
# %bb.13:                               #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$s3, $t7, $s2
	ld.w	$s4, $fp, 1160
	bge	$s3, $s4, .LBB7_2
# %bb.14:                               #   in Loop: Header=BB7_3 Depth=1
	slli.d	$s3, $s3, 3
	fldx.d	$fa0, $a6, $s3
	fst.d	$fa0, $s1, 0
	fldx.d	$fa0, $a7, $s3
	fst.d	$fa0, $s0, 0
	fldx.d	$fa0, $t0, $s3
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $t8, 0
	b	.LBB7_2
.LBB7_15:                               # %._crit_edge
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
.Lfunc_end7:
	.size	_ZN5State31apply_boundary_conditions_localEv, .Lfunc_end7-_ZN5State31apply_boundary_conditions_localEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State31apply_boundary_conditions_ghostEv # -- Begin function _ZN5State31apply_boundary_conditions_ghostEv
	.p2align	5
	.type	_ZN5State31apply_boundary_conditions_ghostEv,@function
_ZN5State31apply_boundary_conditions_ghostEv: # @_ZN5State31apply_boundary_conditions_ghostEv
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
	move	$s0, $a0
	ld.d	$fp, $a0, 192
	ld.d	$a0, $fp, 1368
	pcalau12i	$s1, %pc_hi20(_ZZN5State31apply_boundary_conditions_ghostEvE4nlft)
	ld.d	$a1, $fp, 1376
	st.d	$a0, $s1, %pc_lo12(_ZZN5State31apply_boundary_conditions_ghostEvE4nlft)
	pcalau12i	$s3, %pc_hi20(_ZZN5State31apply_boundary_conditions_ghostEvE4nrht)
	ld.d	$a0, $fp, 1384
	st.d	$a1, $s3, %pc_lo12(_ZZN5State31apply_boundary_conditions_ghostEvE4nrht)
	ld.d	$a1, $fp, 1392
	pcalau12i	$s2, %pc_hi20(_ZZN5State31apply_boundary_conditions_ghostEvE4nbot)
	st.d	$a0, $s2, %pc_lo12(_ZZN5State31apply_boundary_conditions_ghostEvE4nbot)
	pcalau12i	$s4, %pc_hi20(_ZZN5State31apply_boundary_conditions_ghostEvE4ntop)
	st.d	$a1, $s4, %pc_lo12(_ZZN5State31apply_boundary_conditions_ghostEvE4ntop)
	addi.d	$a1, $sp, 12
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh10get_boundsERiS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.w	$a1, $sp, 8
	bgeu	$a0, $a1, .LBB8_15
# %bb.1:                                # %.lr.ph
	ld.d	$t6, $s0, 192
	bstrpick.d	$s5, $a0, 31, 0
	ld.d	$a2, $t6, 1328
	ld.d	$a3, $t6, 1352
	ld.d	$a4, $t6, 880
	ld.d	$a5, $s3, %pc_lo12(_ZZN5State31apply_boundary_conditions_ghostEvE4nrht)
	ld.d	$a6, $s0, 200
	ld.d	$a7, $s0, 208
	ld.d	$t0, $s0, 216
	ld.d	$t1, $t6, 904
	ld.d	$t2, $s1, %pc_lo12(_ZZN5State31apply_boundary_conditions_ghostEvE4nlft)
	ld.d	$t3, $t6, 1336
	ld.d	$t4, $t6, 928
	ld.d	$t5, $s4, %pc_lo12(_ZZN5State31apply_boundary_conditions_ghostEvE4ntop)
	ld.d	$t6, $t6, 952
	ld.d	$t7, $s2, %pc_lo12(_ZZN5State31apply_boundary_conditions_ghostEvE4nbot)
	alsl.d	$t8, $s5, $t0, 3
	alsl.d	$s0, $s5, $a7, 3
	alsl.d	$s1, $s5, $a6, 3
	slli.d	$s2, $s5, 2
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$t8, $t8, 8
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 8
	addi.d	$t7, $t7, 4
	addi.d	$t5, $t5, 4
	addi.d	$t2, $t2, 4
	addi.d	$a5, $a5, 4
	beq	$a1, $a0, .LBB8_15
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	slli.d	$s4, $a0, 2
	ldx.w	$s3, $a3, $s4
	ldx.w	$s5, $a2, $s4
	slli.d	$s3, $s3, 2
	ldx.w	$s6, $a4, $s3
	bge	$s5, $s6, .LBB8_6
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	ldx.w	$s6, $a5, $s2
	ld.w	$s7, $fp, 1160
	blt	$s6, $s7, .LBB8_6
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	slli.d	$s6, $s6, 3
	fldx.d	$fa0, $a6, $s6
	fst.d	$fa0, $s1, 0
	fldx.d	$fa0, $a7, $s6
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s0, 0
	fldx.d	$fa0, $t0, $s6
	fst.d	$fa0, $t8, 0
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	ldx.w	$s6, $t1, $s3
	bge	$s6, $s5, .LBB8_9
# %bb.7:                                #   in Loop: Header=BB8_3 Depth=1
	ldx.w	$s5, $t2, $s2
	ld.w	$s6, $fp, 1160
	blt	$s5, $s6, .LBB8_9
# %bb.8:                                #   in Loop: Header=BB8_3 Depth=1
	slli.d	$s5, $s5, 3
	fldx.d	$fa0, $a6, $s5
	fst.d	$fa0, $s1, 0
	fldx.d	$fa0, $a7, $s5
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s0, 0
	fldx.d	$fa0, $t0, $s5
	fst.d	$fa0, $t8, 0
.LBB8_9:                                #   in Loop: Header=BB8_3 Depth=1
	ldx.w	$s4, $t3, $s4
	ldx.w	$s5, $t4, $s3
	bge	$s4, $s5, .LBB8_12
# %bb.10:                               #   in Loop: Header=BB8_3 Depth=1
	ldx.w	$s5, $t5, $s2
	ld.w	$s6, $fp, 1160
	blt	$s5, $s6, .LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_3 Depth=1
	slli.d	$s5, $s5, 3
	fldx.d	$fa0, $a6, $s5
	fst.d	$fa0, $s1, 0
	fldx.d	$fa0, $a7, $s5
	fst.d	$fa0, $s0, 0
	fldx.d	$fa0, $t0, $s5
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $t8, 0
.LBB8_12:                               #   in Loop: Header=BB8_3 Depth=1
	ldx.w	$s3, $t6, $s3
	bge	$s3, $s4, .LBB8_2
# %bb.13:                               #   in Loop: Header=BB8_3 Depth=1
	ldx.w	$s3, $t7, $s2
	ld.w	$s4, $fp, 1160
	blt	$s3, $s4, .LBB8_2
# %bb.14:                               #   in Loop: Header=BB8_3 Depth=1
	slli.d	$s3, $s3, 3
	fldx.d	$fa0, $a6, $s3
	fst.d	$fa0, $s1, 0
	fldx.d	$fa0, $a7, $s3
	fst.d	$fa0, $s0, 0
	fldx.d	$fa0, $t0, $s3
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $t8, 0
	b	.LBB8_2
.LBB8_15:                               # %._crit_edge
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
.Lfunc_end8:
	.size	_ZN5State31apply_boundary_conditions_ghostEv, .Lfunc_end8-_ZN5State31apply_boundary_conditions_ghostEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State25apply_boundary_conditionsEv # -- Begin function _ZN5State25apply_boundary_conditionsEv
	.p2align	5
	.type	_ZN5State25apply_boundary_conditionsEv,@function
_ZN5State25apply_boundary_conditionsEv: # @_ZN5State25apply_boundary_conditionsEv
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
	move	$fp, $a0
	ld.d	$a0, $a0, 192
	ld.d	$s0, $a0, 1368
	ld.d	$s1, $a0, 1376
	ld.d	$s2, $a0, 1384
	ld.d	$s3, $a0, 1392
	addi.d	$a1, $sp, 12
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(_ZN4Mesh10get_boundsERiS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.w	$a1, $sp, 8
	bgeu	$a0, $a1, .LBB9_11
# %bb.1:                                # %.lr.ph
	ld.d	$t3, $fp, 192
	bstrpick.d	$t7, $a0, 31, 0
	ld.d	$a2, $t3, 1328
	ld.d	$a3, $t3, 1352
	ld.d	$a4, $t3, 880
	ld.d	$a5, $fp, 200
	ld.d	$a6, $fp, 208
	ld.d	$a7, $fp, 216
	ld.d	$t0, $t3, 904
	ld.d	$t1, $t3, 1336
	ld.d	$t2, $t3, 928
	ld.d	$t3, $t3, 952
	alsl.d	$t4, $t7, $a7, 3
	alsl.d	$t5, $t7, $a6, 3
	alsl.d	$t6, $t7, $a5, 3
	slli.d	$t7, $t7, 2
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_3 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 8
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 4
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, 4
	beq	$a1, $a0, .LBB9_11
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	slli.d	$fp, $a0, 2
	ldx.w	$t8, $a3, $fp
	ldx.w	$s4, $a2, $fp
	slli.d	$t8, $t8, 2
	ldx.w	$s5, $a4, $t8
	blt	$s4, $s5, .LBB9_7
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	ldx.w	$s5, $t0, $t8
	blt	$s5, $s4, .LBB9_8
.LBB9_5:                                #   in Loop: Header=BB9_3 Depth=1
	ldx.w	$fp, $t1, $fp
	ldx.w	$s4, $t2, $t8
	blt	$fp, $s4, .LBB9_9
.LBB9_6:                                #   in Loop: Header=BB9_3 Depth=1
	ldx.w	$t8, $t3, $t8
	bge	$t8, $fp, .LBB9_2
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_7:                                #   in Loop: Header=BB9_3 Depth=1
	ldx.w	$s5, $s1, $t7
	slli.d	$s5, $s5, 3
	fldx.d	$fa0, $a5, $s5
	fst.d	$fa0, $t6, 0
	fldx.d	$fa0, $a6, $s5
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $t5, 0
	fldx.d	$fa0, $a7, $s5
	fst.d	$fa0, $t4, 0
	ldx.w	$s5, $t0, $t8
	bge	$s5, $s4, .LBB9_5
.LBB9_8:                                #   in Loop: Header=BB9_3 Depth=1
	ldx.w	$s4, $s0, $t7
	slli.d	$s4, $s4, 3
	fldx.d	$fa0, $a5, $s4
	fst.d	$fa0, $t6, 0
	fldx.d	$fa0, $a6, $s4
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $t5, 0
	fldx.d	$fa0, $a7, $s4
	fst.d	$fa0, $t4, 0
	ldx.w	$fp, $t1, $fp
	ldx.w	$s4, $t2, $t8
	bge	$fp, $s4, .LBB9_6
.LBB9_9:                                #   in Loop: Header=BB9_3 Depth=1
	ldx.w	$s4, $s3, $t7
	slli.d	$s4, $s4, 3
	fldx.d	$fa0, $a5, $s4
	fst.d	$fa0, $t6, 0
	fldx.d	$fa0, $a6, $s4
	fst.d	$fa0, $t5, 0
	fldx.d	$fa0, $a7, $s4
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $t4, 0
	ldx.w	$t8, $t3, $t8
	bge	$t8, $fp, .LBB9_2
.LBB9_10:                               #   in Loop: Header=BB9_3 Depth=1
	ldx.w	$t8, $s2, $t7
	slli.d	$t8, $t8, 3
	fldx.d	$fa0, $a5, $t8
	fst.d	$fa0, $t6, 0
	fldx.d	$fa0, $a6, $t8
	fst.d	$fa0, $t5, 0
	fldx.d	$fa0, $a7, $t8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $t4, 0
	b	.LBB9_2
.LBB9_11:                               # %._crit_edge
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
.Lfunc_end9:
	.size	_ZN5State25apply_boundary_conditionsEv, .Lfunc_end9-_ZN5State25apply_boundary_conditionsEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State21remove_boundary_cellsEv # -- Begin function _ZN5State21remove_boundary_cellsEv
	.p2align	5
	.type	_ZN5State21remove_boundary_cellsEv,@function
_ZN5State21remove_boundary_cellsEv:     # @_ZN5State21remove_boundary_cellsEv
	.cfi_startproc
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
	ld.d	$a0, $a0, 192
	ld.w	$a1, $a0, 1124
	bnez	$a1, .LBB10_37
# %bb.1:
	pcalau12i	$s0, %pc_hi20(save_ncells)
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $fp, 200
	st.d	$a1, $a0, 1160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $fp, 208
	st.d	$a0, $fp, 200
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $fp, 216
	st.d	$a0, $fp, 208
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $a3, 1328
	st.d	$a0, $fp, 216
	addi.d	$a0, $a3, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $a3, 1336
	st.d	$a0, $a3, 1328
	addi.d	$a0, $a3, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $a3, 1352
	st.d	$a0, $a3, 1336
	addi.d	$a0, $a3, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $a3, 1360
	st.d	$a0, $a3, 1352
	addi.d	$a0, $a3, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $a3, 1368
	st.d	$a0, $a3, 1360
	addi.d	$a0, $a3, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $a3, 1376
	st.d	$a0, $a3, 1368
	addi.d	$a0, $a3, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $a3, 1384
	st.d	$a0, $a3, 1376
	addi.d	$a0, $a3, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	ld.d	$a2, $a3, 1392
	st.d	$a0, $a3, 1384
	addi.d	$a0, $a3, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reallocEmPv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 192
	ld.d	$a3, $a2, 1312
	ld.d	$a4, $a2, 1304
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	sub.d	$a5, $a3, $a4
	srai.d	$a5, $a5, 2
	st.d	$a0, $a2, 1392
	bgeu	$a5, $a1, .LBB10_3
# %bb.2:
	addi.d	$a0, $a2, 1304
	sub.d	$a1, $a1, $a5
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	b	.LBB10_6
.LBB10_3:
	bgeu	$a1, $a5, .LBB10_6
# %bb.4:
	alsl.d	$a0, $a1, $a4, 2
	beq	$a3, $a0, .LBB10_6
# %bb.5:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $a2, 1312
.LBB10_6:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $a2, 1424
	ld.d	$a3, $a2, 1416
	sub.d	$a4, $a0, $a3
	srai.d	$a4, $a4, 3
	bgeu	$a4, $a1, .LBB10_8
# %bb.7:
	addi.d	$a0, $a2, 1416
	sub.d	$a1, $a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	b	.LBB10_11
.LBB10_8:
	bgeu	$a1, $a4, .LBB10_11
# %bb.9:
	alsl.d	$a3, $a1, $a3, 3
	beq	$a0, $a3, .LBB10_11
# %bb.10:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a3, $a2, 1424
.LBB10_11:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$a0, $a2, 1448
	ld.d	$a3, $a2, 1440
	sub.d	$a4, $a0, $a3
	srai.d	$a4, $a4, 3
	bgeu	$a4, $a1, .LBB10_13
# %bb.12:
	addi.d	$a0, $a2, 1440
	sub.d	$a1, $a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	b	.LBB10_16
.LBB10_13:
	bgeu	$a1, $a4, .LBB10_16
# %bb.14:
	alsl.d	$a3, $a1, $a3, 3
	beq	$a0, $a3, .LBB10_16
# %bb.15:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i21
	st.d	$a3, $a2, 1448
.LBB10_16:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit22
	ld.d	$a0, $a2, 1472
	ld.d	$a3, $a2, 1464
	sub.d	$a4, $a0, $a3
	srai.d	$a4, $a4, 3
	bgeu	$a4, $a1, .LBB10_18
# %bb.17:
	addi.d	$a0, $a2, 1464
	sub.d	$a1, $a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 192
	ld.w	$a1, $s0, %pc_lo12(save_ncells)
	b	.LBB10_21
.LBB10_18:
	bgeu	$a1, $a4, .LBB10_21
# %bb.19:
	alsl.d	$a3, $a1, $a3, 3
	beq	$a0, $a3, .LBB10_21
# %bb.20:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i24
	st.d	$a3, $a2, 1472
.LBB10_21:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit25
	ld.d	$a0, $a2, 1496
	ld.d	$a3, $a2, 1488
	sub.d	$a4, $a0, $a3
	srai.d	$a4, $a4, 3
	bgeu	$a4, $a1, .LBB10_23
# %bb.22:
	addi.d	$a0, $a2, 1488
	sub.d	$a1, $a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 192
	b	.LBB10_26
.LBB10_23:
	bgeu	$a1, $a4, .LBB10_26
# %bb.24:
	alsl.d	$a1, $a1, $a3, 3
	beq	$a0, $a1, .LBB10_26
# %bb.25:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i27
	st.d	$a1, $a2, 1496
.LBB10_26:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit28
	ld.w	$a1, $a2, 1160
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN4Mesh10set_boundsEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	addi.d	$a1, $sp, 4
	addi.d	$a2, $sp, 0
	pcaddu18i	$ra, %call36(_ZN4Mesh10get_boundsERiS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	ld.w	$a1, $sp, 0
	bgeu	$a0, $a1, .LBB10_37
# %bb.27:                               # %.lr.ph
	ld.d	$a1, $fp, 192
	ld.d	$a2, $a1, 1328
	ld.d	$a3, $a1, 1352
	ld.d	$a4, $a1, 880
	ld.d	$a5, $a1, 904
	ld.d	$a6, $a1, 1336
	ld.d	$a7, $a1, 928
	ld.d	$t0, $a1, 952
	bstrpick.d	$t1, $a0, 31, 0
	slli.d	$t2, $t1, 2
	b	.LBB10_29
	.p2align	4, , 16
.LBB10_28:                              #   in Loop: Header=BB10_29 Depth=1
	ld.wu	$t3, $sp, 0
	addi.d	$t1, $t1, 1
	addi.d	$a0, $a0, 1
	addi.d	$t2, $t2, 4
	bgeu	$t1, $t3, .LBB10_37
.LBB10_29:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$t3, $a3, $t2
	ldx.w	$t4, $a2, $t2
	slli.d	$t5, $t3, 2
	ldx.w	$t5, $a4, $t5
	beq	$t4, $t5, .LBB10_33
# %bb.30:                               #   in Loop: Header=BB10_29 Depth=1
	slli.d	$t5, $t3, 2
	ldx.w	$t5, $a5, $t5
	beq	$t4, $t5, .LBB10_34
.LBB10_31:                              #   in Loop: Header=BB10_29 Depth=1
	ldx.w	$t4, $a6, $t2
	slli.d	$t5, $t3, 2
	ldx.w	$t5, $a7, $t5
	beq	$t4, $t5, .LBB10_35
.LBB10_32:                              #   in Loop: Header=BB10_29 Depth=1
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $t0, $t3
	bne	$t4, $t3, .LBB10_28
	b	.LBB10_36
	.p2align	4, , 16
.LBB10_33:                              #   in Loop: Header=BB10_29 Depth=1
	ld.d	$t3, $a1, 1368
	stx.w	$a0, $t3, $t2
	ldx.w	$t4, $a2, $t2
	ldx.w	$t3, $a3, $t2
	slli.d	$t5, $t3, 2
	ldx.w	$t5, $a5, $t5
	bne	$t4, $t5, .LBB10_31
.LBB10_34:                              #   in Loop: Header=BB10_29 Depth=1
	ld.d	$t3, $a1, 1376
	stx.w	$a0, $t3, $t2
	ldx.w	$t3, $a3, $t2
	ldx.w	$t4, $a6, $t2
	slli.d	$t5, $t3, 2
	ldx.w	$t5, $a7, $t5
	bne	$t4, $t5, .LBB10_32
.LBB10_35:                              #   in Loop: Header=BB10_29 Depth=1
	ld.d	$t3, $a1, 1384
	stx.w	$a0, $t3, $t2
	ldx.w	$t4, $a6, $t2
	ldx.w	$t3, $a3, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $t0, $t3
	bne	$t4, $t3, .LBB10_28
.LBB10_36:                              #   in Loop: Header=BB10_29 Depth=1
	ld.d	$t3, $a1, 1392
	stx.w	$a0, $t3, $t2
	b	.LBB10_28
.LBB10_37:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	_ZN5State21remove_boundary_cellsEv, .Lfunc_end10-_ZN5State21remove_boundary_cellsEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State12set_timestepEdd      # -- Begin function _ZN5State12set_timestepEdd
	.p2align	5
	.type	_ZN5State12set_timestepEdd,@function
_ZN5State12set_timestepEdd:             # @_ZN5State12set_timestepEdd
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
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
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.w	$a1, $a0, 1160
	pcaddu18i	$ra, %call36(_ZN4Mesh10set_boundsEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	addi.d	$a1, $sp, 12
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(_ZN4Mesh10get_boundsERiS0_)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 12
	ld.w	$a0, $sp, 8
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1032
	bge	$s0, $a0, .LBB11_7
# %bb.1:                                # %.lr.ph
	ld.d	$s1, $fp, 192
	ld.d	$s2, $s1, 1360
	ld.d	$a2, $fp, 200
	ld.d	$a3, $fp, 208
	ld.d	$a4, $fp, 216
	slli.d	$s3, $s0, 2
	alsl.d	$s4, $s0, $a2, 3
	alsl.d	$s5, $s0, $a3, 3
	alsl.d	$s6, $s0, $a4, 3
	movgr2fr.d	$fs2, $a1
	ori	$s7, $zero, 1
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_2:                               # %.split
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $s1, 1048
	fld.d	$fa1, $s5, 0
	slli.d	$a1, $s8, 3
	fldx.d	$fa2, $a0, $a1
	ld.d	$a0, $s1, 1072
	fabs.d	$fa1, $fa1
	fld.d	$fa3, $s6, 0
	fadd.d	$fa1, $fa0, $fa1
	fldx.d	$fa4, $a0, $a1
	fdiv.d	$fa1, $fa1, $fa2
	fabs.d	$fa2, $fa3
	fadd.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa4
	fadd.d	$fa0, $fa1, $fa0
	ld.w	$a0, $sp, 8
	fdiv.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fsel	$fs2, $fs2, $fa0, $fcc0
.LBB11_3:                               #   in Loop: Header=BB11_4 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, 8
	addi.d	$s6, $s6, 8
	bge	$s0, $a0, .LBB11_8
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s2, $s3
	bne	$a1, $s7, .LBB11_3
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $s1, 1352
	fld.d	$fa0, $s4, 0
	ldx.w	$s8, $a0, $s3
	fmul.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB11_2
# %bb.6:                                # %call.sqrt
                                        #   in Loop: Header=BB11_4 Depth=1
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB11_2
.LBB11_7:
	movgr2fr.d	$fs0, $a1
	b	.LBB11_10
.LBB11_8:                               # %._crit_edge
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs0, $a0
	fcmp.clt.d	$fcc0, $fs2, $fs0
	bceqz	$fcc0, .LBB11_10
# %bb.9:
	fmov.d	$fs0, $fs2
.LBB11_10:                              # %._crit_edge.thread
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 232
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 232
	fmov.d	$fa0, $fs0
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end11:
	.size	_ZN5State12set_timestepEdd, .Lfunc_end11-_ZN5State12set_timestepEdd
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State11fill_circleEddd      # -- Begin function _ZN5State11fill_circleEddd
	.p2align	5
	.type	_ZN5State11fill_circleEddd,@function
_ZN5State11fill_circleEddd:             # @_ZN5State11fill_circleEddd
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	.cfi_offset 57, -88
	move	$fp, $a0
	ld.d	$s0, $a0, 192
	ld.d	$a0, $s0, 1160
                                        # kill: def $f2_64 killed $f2_64 def $vr2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	beqz	$a0, .LBB12_5
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 200
	ld.d	$a2, $fp, 216
	ld.d	$a3, $fp, 208
	ori	$a4, $zero, 16
	bgeu	$a0, $a4, .LBB12_17
# %bb.2:
	move	$a4, $zero
.LBB12_3:                               # %scalar.ph.preheader
	addi.w	$a5, $a4, 1
	.p2align	4, , 16
.LBB12_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a4, 3
	fstx.d	$fa2, $a1, $a4
	stx.d	$zero, $a2, $a4
	stx.d	$zero, $a3, $a4
	bstrpick.d	$a4, $a5, 31, 0
	addi.w	$a5, $a5, 1
	bltu	$a4, $a0, .LBB12_4
.LBB12_5:                               # %._crit_edge
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN4Mesh12kdtree_setupEv)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s0, 1160
	srli.d	$a0, $s5, 61
	bnez	$a0, .LBB12_36
# %bb.6:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	beqz	$s5, .LBB12_12
# %bb.7:                                # %.noexc42
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	alsl.d	$s3, $s5, $a0, 2
	addi.d	$s6, $s5, -1
	st.w	$zero, $a0, 0
	beqz	$s6, .LBB12_9
# %bb.8:                                # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
	addi.d	$a0, $s1, 4
	slli.d	$a2, $s6, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	srli.d	$a0, $s5, 60
	bnez	$a0, .LBB12_37
.LBB12_9:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
	slli.d	$a0, $s5, 3
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.10:                               # %.noexc47
	move	$s2, $a0
	alsl.d	$s4, $s5, $a0, 3
	st.d	$zero, $a0, 0
	beqz	$s6, .LBB12_13
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $s2, 8
	slli.d	$a2, $s6, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB12_13
.LBB12_12:
	move	$s3, $zero
	move	$s1, $zero
	move	$s2, $zero
	move	$s4, $zero
.LBB12_13:                              # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
	ld.d	$a0, $fp, 192
	ld.d	$a4, $s0, 1416
	ld.d	$a5, $s0, 1440
	ld.d	$a6, $s0, 1464
	ld.d	$a7, $s0, 1488
	addi.d	$a0, $a0, 784
.Ltmp5:                                 # EH_LABEL
	addi.w	$a3, $s5, 0
	addi.d	$a1, $sp, 36
	move	$a2, $s1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(KDTree_QueryCircleInterior_Double)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.14:                               # %.preheader91
	ld.w	$a1, $sp, 36
	blez	$a1, .LBB12_30
# %bb.15:                               # %.lr.ph94
	ld.d	$a0, $fp, 200
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB12_25
# %bb.16:
	move	$a2, $zero
	b	.LBB12_28
.LBB12_17:                              # %vector.scevcheck
	addi.d	$a5, $a0, -1
	bstrpick.d	$a6, $a5, 31, 0
	addi.w	$a7, $zero, -1
	lu32i.d	$a7, 0
	move	$a4, $zero
	beq	$a6, $a7, .LBB12_3
# %bb.18:                               # %vector.scevcheck
	srli.d	$a5, $a5, 32
	bnez	$a5, .LBB12_3
# %bb.19:                               # %vector.memcheck
	sub.d	$a6, $a2, $a1
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB12_3
# %bb.20:                               # %vector.memcheck
	sub.d	$a6, $a3, $a1
	bltu	$a6, $a5, .LBB12_3
# %bb.21:                               # %vector.memcheck
	sub.d	$a5, $a3, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB12_3
# %bb.22:                               # %vector.ph
	bstrpick.d	$a4, $a0, 32, 2
	slli.d	$a4, $a4, 2
	vreplvei.d	$vr0, $vr2, 0
	addi.d	$a5, $a3, 16
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a1, 16
	vrepli.b	$vr1, 0
	move	$t0, $a4
	.p2align	4, , 16
.LBB12_23:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a7, -16
	vst	$vr0, $a7, 0
	vst	$vr1, $a6, -16
	vst	$vr1, $a6, 0
	vst	$vr1, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB12_23
# %bb.24:                               # %middle.block
	bne	$a0, $a4, .LBB12_3
	b	.LBB12_5
.LBB12_25:                              # %vector.ph113
	bstrpick.d	$a2, $a1, 30, 1
	slli.d	$a2, $a2, 1
	addi.d	$a3, $s1, 4
	move	$a4, $a2
	.p2align	4, , 16
.LBB12_26:                              # %vector.body116
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -4
	ld.w	$a6, $a3, 0
	slli.d	$a5, $a5, 3
	slli.d	$a6, $a6, 3
	fstx.d	$fs0, $a0, $a5
	fstx.d	$fs0, $a0, $a6
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB12_26
# %bb.27:                               # %middle.block119
	beq	$a2, $a1, .LBB12_30
.LBB12_28:                              # %scalar.ph111.preheader
	alsl.d	$a3, $a2, $s1, 2
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB12_29:                              # %scalar.ph111
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	fstx.d	$fs0, $a0, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB12_29
.LBB12_30:                              # %._crit_edge95
	ld.d	$a0, $fp, 192
	ld.w	$a4, $s0, 1160
	ld.d	$a5, $s0, 1416
	ld.d	$a6, $s0, 1440
	ld.d	$a7, $s0, 1464
	ld.d	$a2, $s0, 1488
	addi.d	$a0, $a0, 784
.Ltmp8:                                 # EH_LABEL
	addi.d	$a1, $sp, 36
	st.d	$a2, $sp, 0
	move	$a2, $s1
	move	$a3, $s2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(KDTree_QueryCircleIntersectWeighted_Double)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.31:                               # %.preheader
	ld.w	$a0, $sp, 36
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	blez	$a0, .LBB12_34
# %bb.32:                               # %.lr.ph97
	ld.d	$a1, $fp, 200
	fsub.d	$fa0, $fs0, $fa2
	move	$a2, $s1
	move	$a3, $s2
	.p2align	4, , 16
.LBB12_33:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a3, 0
	ld.w	$a4, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $a1, $a4
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB12_33
.LBB12_34:                              # %._crit_edge98
	ld.d	$a0, $fp, 192
	addi.d	$a0, $a0, 784
.Ltmp10:                                # EH_LABEL
	pcaddu18i	$ra, %call36(KDTree_Destroy)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.35:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	sub.d	$a1, $s4, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	sub.d	$a1, $s3, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.LBB12_36:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB12_37:
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.38:                               # %.noexc46
.LBB12_39:
.Ltmp7:                                 # EH_LABEL
	move	$fp, $a0
	bnez	$s2, .LBB12_42
	b	.LBB12_43
.LBB12_40:
.Ltmp4:                                 # EH_LABEL
	move	$fp, $a0
	b	.LBB12_43
.LBB12_41:                              # %.thread
.Ltmp12:                                # EH_LABEL
	move	$fp, $a0
.LBB12_42:
	sub.d	$a1, $s4, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_43:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit52
	sub.d	$a1, $s3, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN5State11fill_circleEddd, .Lfunc_end12-_ZN5State11fill_circleEddd
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp2-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp5-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp11-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp0-.Ltmp11                 #   Call between .Ltmp11 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Lfunc_end12-.Ltmp1            #   Call between .Ltmp1 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED2Ev,comdat
	.weak	_ZNSt6vectorIdSaIdEED2Ev        # -- Begin function _ZNSt6vectorIdSaIdEED2Ev
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEED2Ev,@function
_ZNSt6vectorIdSaIdEED2Ev:               # @_ZNSt6vectorIdSaIdEED2Ev
	.cfi_startproc
# %bb.0:
	move	$a1, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB13_2
# %bb.1:
	ld.d	$a1, $a1, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB13_2:                               # %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit
	ret
.Lfunc_end13:
	.size	_ZNSt6vectorIdSaIdEED2Ev, .Lfunc_end13-_ZNSt6vectorIdSaIdEED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN5State13state_reorderESt6vectorIiSaIiEE # -- Begin function _ZN5State13state_reorderESt6vectorIiSaIiEE
	.p2align	5
	.type	_ZN5State13state_reorderESt6vectorIiSaIiEE,@function
_ZN5State13state_reorderESt6vectorIiSaIiEE: # @_ZN5State13state_reorderESt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a1, $a0, 200
	ld.d	$a2, $fp, 0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reorderEPdPi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 208
	ld.d	$a2, $fp, 0
	st.d	$a0, $s0, 200
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reorderEPdPi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 216
	ld.d	$a2, $fp, 0
	st.d	$a0, $s0, 208
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_reorderEPdPi)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 216
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	_ZN5State13state_reorderESt6vectorIiSaIiEE, .Lfunc_end14-_ZN5State13state_reorderESt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State10rezone_allEiiSt6vectorIiSaIiEE # -- Begin function _ZN5State10rezone_allEiiSt6vectorIiSaIiEE
	.p2align	5
	.type	_ZN5State10rezone_allEiiSt6vectorIiSaIiEE,@function
_ZN5State10rezone_allEiiSt6vectorIiSaIiEE: # @_ZN5State10rezone_allEiiSt6vectorIiSaIiEE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s2, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	ld.d	$s4, $s2, 0
	ld.d	$s2, $fp, 192
	sub.d	$s3, $a0, $s4
	st.d	$zero, $sp, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
	beq	$a0, $s4, .LBB15_4
# %bb.1:
	addi.w	$a0, $zero, -3
	lu52i.d	$a0, $a0, 2047
	bgeu	$s3, $a0, .LBB15_9
# %bb.2:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	st.d	$a0, $sp, 16
	add.d	$s5, $a0, $s3
	ori	$a1, $zero, 5
	st.d	$s5, $sp, 24
	bltu	$s3, $a1, .LBB15_10
# %bb.3:
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB15_5
.LBB15_4:                               # %.thread6
	vst	$vr0, $sp, 8
	st.d	$s3, $sp, 24
	move	$s5, $s3
.LBB15_5:                               # %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
	st.d	$s5, $sp, 16
.Ltmp13:                                # EH_LABEL
	addi.d	$a3, $sp, 8
	ori	$a4, $zero, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.6:
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB15_8
# %bb.7:
	ld.d	$a1, $sp, 24
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_8:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 208
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 32
	ld.d	$a1, $sp, 40
	st.d	$a0, $fp, 216
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 264
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 264
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
.LBB15_9:                               # %.noexc.i.i
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.LBB15_10:
	ori	$a1, $zero, 4
	bne	$s3, $a1, .LBB15_5
# %bb.11:
	ld.w	$a1, $s4, 0
	st.w	$a1, $a0, 0
	b	.LBB15_5
.LBB15_12:
.Ltmp15:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beqz	$a2, .LBB15_14
# %bb.13:
	ld.d	$a0, $sp, 24
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_14:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN5State10rezone_allEiiSt6vectorIiSaIiEE, .Lfunc_end15-_ZN5State10rezone_allEiiSt6vectorIiSaIiEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end15-.Ltmp14           #   Call between .Ltmp14 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN5State22calc_finite_differenceEd # -- Begin function _ZN5State22calc_finite_differenceEd
	.p2align	5
	.type	_ZN5State22calc_finite_differenceEd,@function
_ZN5State22calc_finite_differenceEd:    # @_ZN5State22calc_finite_differenceEd
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -1040
	.cfi_def_cfa_offset 1040
	st.d	$ra, $sp, 1032                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1000                  # 8-byte Folded Spill
	st.d	$s3, $sp, 992                   # 8-byte Folded Spill
	st.d	$s4, $sp, 984                   # 8-byte Folded Spill
	st.d	$s5, $sp, 976                   # 8-byte Folded Spill
	st.d	$s6, $sp, 968                   # 8-byte Folded Spill
	st.d	$s7, $sp, 960                   # 8-byte Folded Spill
	st.d	$s8, $sp, 952                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 944                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 936                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 928                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 920                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 912                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 904                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 896                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 888                  # 8-byte Folded Spill
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
	fst.d	$fa0, $sp, 224                  # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 872
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s0, $fp, 192
	ld.d	$a0, $s0, 1160
	ld.d	$a1, $s0, 1176
	bgeu	$a1, $a0, .LBB16_2
# %bb.1:
	st.d	$a0, $s0, 1176
.LBB16_2:
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN5State25apply_boundary_conditionsEv)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, 192
	ld.d	$a0, $fp, 1368
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$s3, $fp, 1376
	ld.d	$a0, $fp, 1384
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$s6, $fp, 1392
	ld.d	$s4, $fp, 1352
	ld.d	$a1, $s0, 1176
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a3, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 1176
	pcalau12i	$a2, %pc_hi20(_ZZN5State22calc_finite_differenceEdE5H_new)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(_ZZN5State22calc_finite_differenceEdE5H_new)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a3, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 1176
	pcalau12i	$a2, %pc_hi20(_ZZN5State22calc_finite_differenceEdE5U_new)
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(_ZZN5State22calc_finite_differenceEdE5U_new)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a3, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 192
	pcalau12i	$a1, %pc_hi20(_ZZN5State22calc_finite_differenceEdE5V_new)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(_ZZN5State22calc_finite_differenceEdE5V_new)
	addi.d	$a1, $sp, 868
	addi.d	$a2, $sp, 864
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZN4Mesh10get_boundsERiS0_)
	jirl	$ra, $ra, 0
	ld.w	$t6, $sp, 868
	ld.w	$a0, $sp, 864
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	bge	$t6, $a0, .LBB16_114
# %bb.3:                                # %.lr.ph
	move	$t4, $s6
	move	$t2, $s3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $a0, 200
	ld.d	$t7, $a0, 208
	ld.d	$t8, $a0, 216
	ld.d	$a0, $fp, 1048
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	ld.d	$s6, $fp, 1072
	vldi	$vr22, -928
	fmul.d	$fs2, $fa5, $ft14
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(_ZZN5State22calc_finite_differenceEdE5H_new)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(_ZZN5State22calc_finite_differenceEdE5U_new)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(_ZZN5State22calc_finite_differenceEdE5V_new)
	alsl.d	$a4, $t6, $s4, 2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a5, $t6, $a0, 2
	alsl.d	$a6, $t6, $s3, 2
	alsl.d	$s8, $t6, $t4, 2
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$s2, $t6, $a0, 2
	slli.d	$s7, $t6, 3
	movgr2fr.d	$fa1, $zero
	vldi	$vr16, -912
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, 235929
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	lu52i.d	$a0, $a0, 1025
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$a0, -4420
	ori	$a0, $a0, 672
	lu32i.d	$a0, 280651
	lu52i.d	$a0, $a0, 923
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$a7, $t8
	move	$t5, $t7
	move	$t1, $s5
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 200                  # 8-byte Folded Spill
	st.d	$s7, $sp, 216                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 736                  # 8-byte Folded Spill
	b	.LBB16_6
	.p2align	4, , 16
.LBB16_4:                               #   in Loop: Header=BB16_6 Depth=1
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 536                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 480                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 448                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 808                  # 8-byte Folded Reload
.LBB16_5:                               #   in Loop: Header=BB16_6 Depth=1
	fdiv.d	$fa0, $fa5, $fs0
	fld.d	$fa1, $sp, 488                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 464                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa3, $fa1
	fadd.d	$fa1, $fa1, $ft1
	fld.d	$fa3, $sp, 432                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa1, $fa3
	fmul.d	$fa1, $fa0, $fa1
	fsub.d	$fa1, $fs7, $fa1
	fsub.d	$fa1, $fa1, $ft4
	fld.d	$fa3, $sp, 792                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $sp, 784                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $sp, 824                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $a1, $s7
	fld.d	$fa1, $sp, 496                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 472                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa3, $fa1
	fadd.d	$fa1, $fa1, $ft11
	fsub.d	$fa1, $fa1, $fa4
	fmul.d	$fa1, $fa0, $fa1
	fsub.d	$fa1, $ft7, $fa1
	fld.d	$fa3, $sp, 800                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa7
	fstx.d	$fa1, $a2, $s7
	fld.d	$fa1, $sp, 840                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $fa1
	fadd.d	$fa1, $fa1, $ft10
	fsub.d	$fa1, $fa1, $fa6
	fmul.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $ft13, $fa0
	fsub.d	$fa0, $fa0, $fs3
	fadd.d	$fa0, $fa0, $fs1
	fstx.d	$fa0, $a3, $s7
	addi.d	$t6, $t6, 1
	ld.w	$a0, $sp, 864
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.d	$s8, $s8, 4
	addi.d	$s2, $s2, 4
	addi.d	$t1, $t1, 8
	addi.d	$t5, $t5, 8
	addi.d	$a7, $a7, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	fld.d	$fs2, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 736                  # 8-byte Folded Reload
	bge	$t6, $a0, .LBB16_114
.LBB16_6:                               # =>This Inner Loop Header: Depth=1
	st.d	$a3, $sp, 536                   # 8-byte Folded Spill
	st.d	$a2, $sp, 544                   # 8-byte Folded Spill
	st.d	$a1, $sp, 552                   # 8-byte Folded Spill
	st.d	$a5, $sp, 520                   # 8-byte Folded Spill
	ld.w	$s1, $a5, 0
	st.d	$a4, $sp, 528                   # 8-byte Folded Spill
	ld.w	$fp, $a4, 0
	slli.d	$a1, $s1, 2
	ldx.w	$a0, $s4, $a1
	ldx.w	$a3, $t4, $a1
	st.d	$a3, $sp, 656                   # 8-byte Folded Spill
	bge	$fp, $a0, .LBB16_8
# %bb.7:                                #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a2, $a3, 3
	slli.d	$a3, $a3, 2
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a3
	fldx.d	$fa0, $s5, $a2
	fst.d	$fa0, $sp, 792                  # 8-byte Folded Spill
	fldx.d	$fa0, $t7, $a2
	fst.d	$fa0, $sp, 808                  # 8-byte Folded Spill
	fldx.d	$ft0, $t8, $a2
	st.d	$a3, $sp, 560                   # 8-byte Folded Spill
	slli.d	$a2, $a3, 3
	fldx.d	$fa2, $s5, $a2
	fldx.d	$fa0, $t7, $a2
	b	.LBB16_9
	.p2align	4, , 16
.LBB16_8:                               #   in Loop: Header=BB16_6 Depth=1
	st.d	$zero, $sp, 560                 # 8-byte Folded Spill
	fmov.d	$fa0, $fa1
	fmov.d	$fa2, $fa1
	fmov.d	$ft0, $fa1
	fst.d	$fa1, $sp, 808                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 792                  # 8-byte Folded Spill
.LBB16_9:                               #   in Loop: Header=BB16_6 Depth=1
	fst.d	$fa2, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 256                  # 8-byte Folded Spill
	st.d	$a6, $sp, 512                   # 8-byte Folded Spill
	ld.w	$s0, $a6, 0
	slli.d	$a2, $s0, 2
	ldx.w	$s3, $s4, $a2
	ldx.w	$a4, $t4, $a2
	st.d	$a4, $sp, 664                   # 8-byte Folded Spill
	bge	$fp, $s3, .LBB16_11
# %bb.10:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a3, $a4, 3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $t2, $a4
	fldx.d	$fa0, $s5, $a3
	fst.d	$fa0, $sp, 800                  # 8-byte Folded Spill
	fldx.d	$fa0, $t7, $a3
	fst.d	$fa0, $sp, 816                  # 8-byte Folded Spill
	fldx.d	$fa5, $t8, $a3
	st.d	$a4, $sp, 424                   # 8-byte Folded Spill
	slli.d	$a3, $a4, 3
	fldx.d	$fa0, $s5, $a3
	fst.d	$fa0, $sp, 248                  # 8-byte Folded Spill
	fldx.d	$fa3, $t7, $a3
	b	.LBB16_12
	.p2align	4, , 16
.LBB16_11:                              #   in Loop: Header=BB16_6 Depth=1
	st.d	$zero, $sp, 424                 # 8-byte Folded Spill
	fst.d	$fa1, $sp, 800                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 816                  # 8-byte Folded Spill
	fmov.d	$fa5, $fa1
	fst.d	$fa1, $sp, 248                  # 8-byte Folded Spill
	fmov.d	$fa3, $fa1
.LBB16_12:                              #   in Loop: Header=BB16_6 Depth=1
	ld.w	$t3, $s2, 0
	slli.d	$a3, $t3, 2
	ldx.w	$a6, $s4, $a3
	ldx.w	$a5, $t2, $a3
	st.d	$a5, $sp, 704                   # 8-byte Folded Spill
	bge	$fp, $a6, .LBB16_14
# %bb.13:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a4, $a5, 3
	slli.d	$a5, $a5, 2
	ld.d	$t0, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a5, $t0, $a5
	fldx.d	$fa0, $s5, $a4
	fst.d	$fa0, $sp, 824                  # 8-byte Folded Spill
	fldx.d	$fa4, $t7, $a4
	fldx.d	$fa0, $t8, $a4
	fst.d	$fa0, $sp, 832                  # 8-byte Folded Spill
	st.d	$a5, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a4, $a5, 3
	fldx.d	$fa2, $s5, $a4
	fldx.d	$fa0, $t8, $a4
	b	.LBB16_15
	.p2align	4, , 16
.LBB16_14:                              #   in Loop: Header=BB16_6 Depth=1
	st.d	$zero, $sp, 440                 # 8-byte Folded Spill
	fst.d	$fa1, $sp, 824                  # 8-byte Folded Spill
	fmov.d	$fa4, $fa1
	fst.d	$fa1, $sp, 832                  # 8-byte Folded Spill
	fmov.d	$fa2, $fa1
	fmov.d	$fa0, $fa1
.LBB16_15:                              #   in Loop: Header=BB16_6 Depth=1
	ld.w	$a4, $s8, 0
	st.d	$a4, $sp, 680                   # 8-byte Folded Spill
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s4, $a4
	ldx.w	$t0, $t2, $a4
	st.d	$t3, $sp, 688                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fa2, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fa3, $sp, 264                  # 8-byte Folded Spill
	bge	$fp, $a5, .LBB16_17
# %bb.16:                               #   in Loop: Header=BB16_6 Depth=1
	move	$t3, $t1
	move	$t1, $t5
	move	$t5, $a7
	slli.d	$a7, $t0, 3
	move	$ra, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $t4, $t0
	fldx.d	$fa0, $s5, $a7
	fst.d	$fa0, $sp, 696                  # 8-byte Folded Spill
	fldx.d	$fa0, $t7, $a7
	fst.d	$fa0, $sp, 640                  # 8-byte Folded Spill
	fldx.d	$fa0, $t8, $a7
	fst.d	$fa0, $sp, 720                  # 8-byte Folded Spill
	st.d	$t0, $sp, 456                   # 8-byte Folded Spill
	slli.d	$a7, $t0, 3
	fldx.d	$fa0, $s5, $a7
	fst.d	$fa0, $sp, 272                  # 8-byte Folded Spill
	fldx.d	$fa0, $t8, $a7
	fst.d	$fa0, $sp, 288                  # 8-byte Folded Spill
	move	$a7, $t5
	move	$t5, $t1
	move	$t1, $t3
	b	.LBB16_18
	.p2align	4, , 16
.LBB16_17:                              #   in Loop: Header=BB16_6 Depth=1
	move	$ra, $t0
	st.d	$zero, $sp, 456                 # 8-byte Folded Spill
	fst.d	$fa1, $sp, 696                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 640                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 720                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 288                  # 8-byte Folded Spill
.LBB16_18:                              #   in Loop: Header=BB16_6 Depth=1
	fldx.d	$fs7, $t1, $s7
	fldx.d	$ft13, $t5, $s7
	st.d	$a7, $sp, 728                   # 8-byte Folded Spill
	fldx.d	$fa0, $a7, $s7
	slli.d	$t0, $s1, 3
	fldx.d	$fs4, $s5, $t0
	slli.d	$a7, $a0, 3
	ld.d	$t3, $sp, 744                   # 8-byte Folded Reload
	fldx.d	$ft3, $t3, $a7
	slli.d	$a7, $fp, 3
	fldx.d	$fs0, $t3, $a7
	fldx.d	$ft12, $t7, $t0
	fldx.d	$fa3, $t8, $t0
	fmul.d	$fa1, $ft3, $ft3
	fmul.d	$fa2, $fs0, $fs0
	fmul.d	$ft6, $fs7, $ft3
	fmul.d	$fa6, $fs4, $fs0
	fadd.d	$fa6, $fa6, $ft6
	fadd.d	$fs3, $fs0, $ft3
	fdiv.d	$fa6, $fa6, $fs3
	fmul.d	$ft1, $ft13, $fs0
	fdiv.d	$fa7, $ft3, $fs0
	fmin.d	$ft11, $fa7, $ft8
	fmul.d	$ft7, $ft1, $ft11
	fmul.d	$fa7, $ft12, $ft3
	fdiv.d	$ft2, $fs0, $ft3
	fmin.d	$ft4, $ft2, $ft8
	fmul.d	$fa7, $fa7, $ft4
	fsub.d	$fa7, $ft7, $fa7
	fdiv.d	$ft2, $fa1, $fa2
	fmin.d	$ft2, $ft2, $ft14
	fmul.d	$ft2, $fa2, $ft2
	fdiv.d	$ft5, $fa2, $fa1
	fmin.d	$ft5, $ft5, $ft14
	fmul.d	$fa1, $fa1, $ft5
	fadd.d	$ft5, $ft2, $fa1
	fdiv.d	$fa1, $fa7, $ft5
	fmul.d	$fa1, $fs2, $fa1
	fsub.d	$ft15, $fa6, $fa1
	fmul.d	$fa1, $ft12, $ft12
	fdiv.d	$fa6, $fa1, $fs4
	fmul.d	$fa7, $fs4, $fs4
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	movgr2fr.d	$fa1, $t0
	fmul.d	$fa7, $fa7, $fa1
	fadd.d	$fa7, $fa7, $fa6
	fmul.d	$fa6, $ft13, $ft13
	fdiv.d	$ft2, $fa6, $fs7
	fmul.d	$fa6, $fs7, $fs7
	fmul.d	$fa6, $fa6, $fa1
	fadd.d	$ft2, $fa6, $ft2
	fmul.d	$ft8, $ft13, $ft3
	fmul.d	$ft9, $ft12, $fs0
	fadd.d	$ft9, $ft9, $ft8
	fdiv.d	$ft10, $ft9, $fs3
	fmul.d	$ft2, $ft2, $fs0
	fmul.d	$ft9, $ft2, $ft11
	fmul.d	$fa7, $fa7, $ft3
	fmul.d	$fa7, $fa7, $ft4
	fsub.d	$fa7, $ft9, $fa7
	fdiv.d	$fa7, $fa7, $ft5
	fmul.d	$fa7, $fs2, $fa7
	fsub.d	$fs5, $ft10, $fa7
	fst.d	$ft12, $sp, 648                 # 8-byte Folded Spill
	fmul.d	$fa7, $ft12, $fa3
	fdiv.d	$ft12, $fa7, $fs4
	fst.d	$ft13, $sp, 856                 # 8-byte Folded Spill
	fmul.d	$fa7, $ft13, $fa0
	fdiv.d	$fa7, $fa7, $fs7
	fst.d	$fa0, $sp, 848                  # 8-byte Folded Spill
	fmul.d	$ft10, $fa0, $ft3
	fmul.d	$fa3, $fa3, $fs0
	fadd.d	$fa3, $fa3, $ft10
	fdiv.d	$ft13, $fa3, $fs3
	fmul.d	$fa0, $fa7, $fs0
	fst.d	$fa0, $sp, 760                  # 8-byte Folded Spill
	fmul.d	$ft11, $fa0, $ft11
	fmul.d	$ft12, $ft12, $ft3
	fmul.d	$ft12, $ft12, $ft4
	fsub.d	$ft12, $ft11, $ft12
	fdiv.d	$ft12, $ft12, $ft5
	fmul.d	$ft12, $fs2, $ft12
	fsub.d	$ft12, $ft13, $ft12
	fmul.d	$ft13, $fs5, $fs5
	fdiv.d	$ft13, $ft13, $ft15
	vldi	$vr25, -928
	fmul.d	$ft14, $ft15, $ft15
	fmul.d	$ft14, $ft14, $fa1
	fadd.d	$fa0, $ft13, $ft14
	fmul.d	$ft12, $fs5, $ft12
	fst.d	$ft15, $sp, 352                 # 8-byte Folded Spill
	fdiv.d	$fa3, $ft12, $ft15
	fst.d	$fa3, $sp, 840                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 752                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 336                  # 8-byte Folded Spill
	bge	$fp, $a0, .LBB16_20
# %bb.19:                               #   in Loop: Header=BB16_6 Depth=1
	fld.d	$ft13, $sp, 792                 # 8-byte Folded Reload
	fmul.d	$ft12, $fs0, $ft13
	fadd.d	$ft6, $ft6, $ft12
	fdiv.d	$ft6, $ft6, $fs3
	fld.d	$fa3, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$ft12, $ft3, $fa3
	fmul.d	$ft12, $ft4, $ft12
	fsub.d	$ft7, $ft7, $ft12
	fdiv.d	$ft7, $ft7, $ft5
	fmul.d	$ft7, $fs2, $ft7
	fsub.d	$ft12, $ft6, $ft7
	fmul.d	$ft6, $fa3, $fa3
	fdiv.d	$ft6, $ft6, $ft13
	fmul.d	$ft7, $ft13, $ft13
	fmul.d	$ft7, $ft7, $fa1
	fadd.d	$ft6, $ft6, $ft7
	fmul.d	$ft7, $fs0, $fa3
	fadd.d	$ft7, $ft8, $ft7
	fdiv.d	$ft7, $ft7, $fs3
	fmul.d	$ft6, $ft3, $ft6
	fmul.d	$ft6, $ft4, $ft6
	fsub.d	$ft6, $ft9, $ft6
	fdiv.d	$ft6, $ft6, $ft5
	fmul.d	$ft6, $fs2, $ft6
	fsub.d	$ft7, $ft7, $ft6
	fmul.d	$ft6, $ft0, $fa3
	fdiv.d	$ft6, $ft6, $ft13
	fmul.d	$ft0, $fs0, $ft0
	fadd.d	$ft0, $ft10, $ft0
	fdiv.d	$ft0, $ft0, $fs3
	fmul.d	$ft3, $ft3, $ft6
	fmul.d	$ft3, $ft4, $ft3
	fsub.d	$ft3, $ft11, $ft3
	fdiv.d	$ft3, $ft3, $ft5
	fmul.d	$ft3, $fs2, $ft3
	fsub.d	$ft0, $ft0, $ft3
	fadd.d	$ft3, $fs5, $ft7
	fmul.d	$fa3, $ft3, $fs1
	fst.d	$fa3, $sp, 488                  # 8-byte Folded Spill
	fmul.d	$ft3, $ft7, $ft7
	fdiv.d	$ft3, $ft3, $ft12
	fmul.d	$ft4, $ft12, $ft12
	fmul.d	$ft4, $ft4, $fa1
	fadd.d	$ft3, $ft4, $ft3
	fadd.d	$ft3, $fa0, $ft3
	fmul.d	$fa0, $ft3, $fs1
	fst.d	$fa0, $sp, 496                  # 8-byte Folded Spill
	fst.d	$ft7, $sp, 320                  # 8-byte Folded Spill
	fmul.d	$ft0, $ft0, $ft7
	fst.d	$ft12, $sp, 776                 # 8-byte Folded Spill
	fdiv.d	$ft0, $ft0, $ft12
	fld.d	$fa0, $sp, 840                  # 8-byte Folded Reload
	fadd.d	$ft0, $fa0, $ft0
	fmul.d	$fa0, $ft0, $fs1
	fst.d	$fa0, $sp, 840                  # 8-byte Folded Spill
	vldi	$vr22, -928
	fld.d	$fs1, $sp, 736                  # 8-byte Folded Reload
	b	.LBB16_21
	.p2align	4, , 16
.LBB16_20:                              #   in Loop: Header=BB16_6 Depth=1
	fst.d	$fa0, $sp, 496                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 488                  # 8-byte Folded Spill
	fld.d	$fs1, $sp, 736                  # 8-byte Folded Reload
	fst.d	$fs1, $sp, 776                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 320                  # 8-byte Folded Spill
	vldi	$vr22, -928
.LBB16_21:                              #   in Loop: Header=BB16_6 Depth=1
	slli.d	$t0, $s3, 3
	ld.d	$t3, $sp, 744                   # 8-byte Folded Reload
	fldx.d	$ft0, $t3, $t0
	slli.d	$t0, $s0, 3
	fldx.d	$fs3, $s5, $t0
	fldx.d	$fa3, $t7, $t0
	fldx.d	$ft7, $t8, $t0
	fmul.d	$ft6, $ft0, $ft0
	fmul.d	$ft3, $fs3, $fs0
	fmul.d	$ft4, $fs7, $ft0
	fadd.d	$ft3, $ft3, $ft4
	fadd.d	$fs5, $fs0, $ft0
	fdiv.d	$ft8, $ft3, $fs5
	fmul.d	$ft5, $fa3, $ft0
	fdiv.d	$ft3, $fs0, $ft0
	vldi	$vr20, -912
	fmin.d	$ft3, $ft3, $ft12
	fmul.d	$ft9, $ft5, $ft3
	fdiv.d	$ft5, $ft0, $fs0
	fmin.d	$ft10, $ft5, $ft12
	fmul.d	$ft5, $ft1, $ft10
	fsub.d	$ft9, $ft9, $ft5
	fdiv.d	$ft1, $fa2, $ft6
	fmin.d	$ft1, $ft1, $ft14
	fmul.d	$ft1, $ft6, $ft1
	fdiv.d	$ft6, $ft6, $fa2
	fmin.d	$ft6, $ft6, $ft14
	fmul.d	$ft6, $fa2, $ft6
	fadd.d	$ft1, $ft1, $ft6
	fdiv.d	$ft6, $ft9, $ft1
	fmul.d	$ft6, $fs2, $ft6
	fsub.d	$ft13, $ft8, $ft6
	fmul.d	$ft6, $fa3, $fa3
	fdiv.d	$ft6, $ft6, $fs3
	fmul.d	$ft8, $fs3, $fs3
	fmul.d	$ft8, $ft8, $fa1
	fadd.d	$ft8, $ft8, $ft6
	fmul.d	$ft9, $fa3, $fs0
	fld.d	$fa0, $sp, 856                  # 8-byte Folded Reload
	fmul.d	$ft6, $fa0, $ft0
	fadd.d	$ft9, $ft9, $ft6
	fdiv.d	$ft9, $ft9, $fs5
	fmul.d	$ft8, $ft8, $ft0
	fmul.d	$ft8, $ft8, $ft3
	fmul.d	$ft2, $ft2, $ft10
	fsub.d	$ft8, $ft8, $ft2
	fdiv.d	$ft8, $ft8, $ft1
	fmul.d	$ft8, $fs2, $ft8
	fsub.d	$fs6, $ft9, $ft8
	fst.d	$fa3, $sp, 784                  # 8-byte Folded Spill
	fmul.d	$ft8, $fa3, $ft7
	fdiv.d	$ft8, $ft8, $fs3
	fmul.d	$ft9, $ft7, $fs0
	fld.d	$fa0, $sp, 848                  # 8-byte Folded Reload
	fmul.d	$ft7, $fa0, $ft0
	fadd.d	$ft9, $ft9, $ft7
	fdiv.d	$ft9, $ft9, $fs5
	fmul.d	$ft8, $ft8, $ft0
	fmul.d	$ft11, $ft8, $ft3
	fld.d	$fa3, $sp, 760                  # 8-byte Folded Reload
	fmul.d	$ft8, $fa3, $ft10
	fsub.d	$ft10, $ft11, $ft8
	fdiv.d	$ft10, $ft10, $ft1
	fmul.d	$ft10, $fs2, $ft10
	fsub.d	$ft9, $ft9, $ft10
	fmul.d	$ft10, $fs6, $fs6
	fdiv.d	$ft10, $ft10, $ft13
	fmul.d	$ft11, $ft13, $ft13
	fmul.d	$ft11, $ft11, $fa1
	fadd.d	$ft10, $ft10, $ft11
	fmul.d	$ft9, $fs6, $ft9
	fst.d	$ft13, $sp, 576                 # 8-byte Folded Spill
	fdiv.d	$fa3, $ft9, $ft13
	fst.d	$fs5, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 344                  # 8-byte Folded Spill
	bge	$fp, $s3, .LBB16_23
# %bb.22:                               #   in Loop: Header=BB16_6 Depth=1
	fld.d	$ft13, $sp, 800                 # 8-byte Folded Reload
	fmul.d	$ft9, $fs0, $ft13
	fadd.d	$ft4, $ft4, $ft9
	fdiv.d	$ft4, $ft4, $fs5
	fld.d	$ft11, $sp, 816                 # 8-byte Folded Reload
	fmul.d	$ft9, $ft0, $ft11
	fmul.d	$ft9, $ft3, $ft9
	fsub.d	$ft5, $ft9, $ft5
	fdiv.d	$ft5, $ft5, $ft1
	fmul.d	$ft5, $fs2, $ft5
	fsub.d	$ft9, $ft4, $ft5
	fmul.d	$ft4, $ft11, $ft11
	fdiv.d	$ft4, $ft4, $ft13
	fmul.d	$ft5, $ft13, $ft13
	fmul.d	$ft5, $ft5, $fa1
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft5, $fs0, $ft11
	fadd.d	$ft5, $ft6, $ft5
	fdiv.d	$ft5, $ft5, $fs5
	fmul.d	$ft4, $ft0, $ft4
	fmul.d	$ft4, $ft3, $ft4
	fsub.d	$ft2, $ft4, $ft2
	fdiv.d	$ft2, $ft2, $ft1
	fmul.d	$ft2, $fs2, $ft2
	fsub.d	$ft4, $ft5, $ft2
	fmul.d	$ft2, $ft11, $fa5
	fdiv.d	$ft2, $ft2, $ft13
	fmul.d	$fa5, $fs0, $fa5
	fadd.d	$fa5, $ft7, $fa5
	fdiv.d	$fa5, $fa5, $fs5
	fmul.d	$ft0, $ft0, $ft2
	fmul.d	$ft0, $ft3, $ft0
	fsub.d	$ft0, $ft0, $ft8
	fdiv.d	$ft0, $ft0, $ft1
	fmul.d	$ft0, $fs2, $ft0
	fsub.d	$fa5, $fa5, $ft0
	fadd.d	$ft0, $fs6, $ft4
	fmul.d	$ft0, $ft0, $ft14
	fst.d	$ft0, $sp, 464                  # 8-byte Folded Spill
	fmul.d	$ft0, $ft4, $ft4
	fdiv.d	$ft0, $ft0, $ft9
	fmul.d	$ft1, $ft9, $ft9
	fmul.d	$ft1, $ft1, $fa1
	fadd.d	$ft0, $ft1, $ft0
	fadd.d	$ft0, $ft10, $ft0
	fmul.d	$ft0, $ft0, $ft14
	fst.d	$ft0, $sp, 472                  # 8-byte Folded Spill
	fst.d	$ft4, $sp, 328                  # 8-byte Folded Spill
	fmul.d	$fa5, $ft4, $fa5
	fst.d	$ft9, $sp, 768                  # 8-byte Folded Spill
	fdiv.d	$fa5, $fa5, $ft9
	fadd.d	$fa5, $fa3, $fa5
	fmul.d	$fa3, $fa5, $ft14
	b	.LBB16_24
	.p2align	4, , 16
.LBB16_23:                              #   in Loop: Header=BB16_6 Depth=1
	fst.d	$ft10, $sp, 472                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 464                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 768                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 328                  # 8-byte Folded Spill
.LBB16_24:                              #   in Loop: Header=BB16_6 Depth=1
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	slli.d	$t0, $a6, 3
	fldx.d	$ft4, $s6, $t0
	slli.d	$t0, $t3, 3
	fldx.d	$fs5, $s5, $t0
	fldx.d	$fa5, $s6, $a7
	fldx.d	$ft2, $t7, $t0
	fldx.d	$ft13, $t8, $t0
	fmul.d	$ft5, $ft4, $ft4
	fmul.d	$ft0, $fa5, $fa5
	fmul.d	$ft6, $fs7, $ft4
	fmul.d	$ft1, $fs5, $fa5
	fadd.d	$ft1, $ft1, $ft6
	fadd.d	$ft3, $fa5, $ft4
	fdiv.d	$ft7, $ft1, $ft3
	fmul.d	$ft1, $fa0, $fa5
	fdiv.d	$ft8, $ft4, $fa5
	fmin.d	$ft9, $ft8, $ft12
	fmul.d	$ft8, $ft1, $ft9
	fmul.d	$ft10, $ft13, $ft4
	fdiv.d	$ft11, $fa5, $ft4
	fmin.d	$ft11, $ft11, $ft12
	fmul.d	$ft10, $ft10, $ft11
	fsub.d	$ft8, $ft8, $ft10
	fdiv.d	$ft10, $ft5, $ft0
	fmin.d	$ft10, $ft10, $ft14
	fmul.d	$ft10, $ft0, $ft10
	fdiv.d	$ft12, $ft0, $ft5
	fmin.d	$ft12, $ft12, $ft14
	fmul.d	$ft12, $ft5, $ft12
	fadd.d	$ft10, $ft10, $ft12
	fdiv.d	$ft8, $ft8, $ft10
	fmul.d	$ft8, $fs2, $ft8
	fsub.d	$fs6, $ft7, $ft8
	fmul.d	$ft7, $ft2, $ft13
	fdiv.d	$ft8, $ft7, $fs5
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fmul.d	$ft7, $ft7, $ft4
	fmul.d	$ft2, $ft2, $fa5
	fadd.d	$ft2, $ft2, $ft7
	fdiv.d	$ft12, $ft2, $ft3
	fmul.d	$ft2, $fa7, $fa5
	fmul.d	$fa7, $ft2, $ft9
	fmul.d	$ft8, $ft8, $ft4
	fmul.d	$ft8, $ft8, $ft11
	fsub.d	$fa7, $fa7, $ft8
	fdiv.d	$fa7, $fa7, $ft10
	fmul.d	$fa7, $fs2, $fa7
	fsub.d	$fa7, $ft12, $fa7
	fmul.d	$ft8, $ft13, $ft13
	fdiv.d	$ft8, $ft8, $fs5
	fst.d	$fs5, $sp, 624                  # 8-byte Folded Spill
	fmul.d	$ft12, $fs5, $fs5
	fmul.d	$ft12, $ft12, $fa1
	fadd.d	$ft12, $ft12, $ft8
	fmul.d	$ft8, $fa0, $fa0
	fdiv.d	$ft8, $ft8, $fs7
	fadd.d	$fa6, $fa6, $ft8
	fmul.d	$ft8, $fa0, $ft4
	vldi	$vr0, -912
	fst.d	$ft13, $sp, 632                 # 8-byte Folded Spill
	fmul.d	$ft13, $ft13, $fa5
	fadd.d	$ft13, $ft13, $ft8
	fdiv.d	$ft13, $ft13, $ft3
	fmul.d	$ft3, $fa6, $fa5
	fmul.d	$ft9, $ft3, $ft9
	fmul.d	$ft12, $ft12, $ft4
	fmul.d	$ft11, $ft12, $ft11
	fsub.d	$ft9, $ft9, $ft11
	fdiv.d	$ft9, $ft9, $ft10
	fmul.d	$ft9, $fs2, $ft9
	fsub.d	$ft10, $ft13, $ft9
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	fmul.d	$fa7, $ft10, $fa7
	fdiv.d	$fs5, $fa7, $fs6
	fmul.d	$fa7, $ft10, $ft10
	fdiv.d	$fa7, $fa7, $fs6
	fst.d	$fs6, $sp, 592                  # 8-byte Folded Spill
	fmul.d	$ft9, $fs6, $fs6
	fmul.d	$ft9, $ft9, $fa1
	fadd.d	$fs6, $fa7, $ft9
	fadd.d	$fa7, $fs0, $ft4
	fmul.d	$ft11, $ft13, $fs0
	fmul.d	$ft15, $fa6, $fs0
	fst.d	$fa3, $sp, 480                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 416                 # 8-byte Folded Spill
	fst.d	$fa7, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 384                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 616                 # 8-byte Folded Spill
	bge	$fp, $a6, .LBB16_26
# %bb.25:                               #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa6, $sp, 824                  # 8-byte Folded Reload
	fmov.d	$fa3, $ft15
	fmul.d	$ft9, $fs0, $fa6
	fadd.d	$ft6, $ft6, $ft9
	fdiv.d	$ft6, $ft6, $fa7
	fdiv.d	$ft9, $ft4, $fs0
	fmin.d	$ft9, $ft9, $fa0
	fmov.d	$fs4, $ft10
	fmul.d	$ft10, $ft11, $ft9
	fld.d	$ft15, $sp, 832                 # 8-byte Folded Reload
	fmul.d	$ft11, $ft4, $ft15
	fdiv.d	$ft12, $fs0, $ft4
	fmin.d	$ft12, $ft12, $fa0
	fmul.d	$ft11, $ft12, $ft11
	fsub.d	$ft10, $ft10, $ft11
	fdiv.d	$ft11, $ft5, $fa2
	fmin.d	$ft11, $ft11, $ft14
	fmul.d	$ft11, $fa2, $ft11
	fdiv.d	$ft13, $fa2, $ft5
	fmin.d	$ft13, $ft13, $ft14
	fmul.d	$ft5, $ft5, $ft13
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	fadd.d	$ft5, $ft11, $ft5
	fdiv.d	$ft10, $ft10, $ft5
	fmul.d	$ft10, $fs2, $ft10
	fsub.d	$ft10, $ft6, $ft10
	fmul.d	$ft6, $fa4, $ft15
	fdiv.d	$ft6, $ft6, $fa6
	fmul.d	$fa4, $fs0, $fa4
	fadd.d	$fa4, $ft7, $fa4
	fdiv.d	$fa4, $fa4, $fa7
	fld.d	$ft7, $sp, 760                  # 8-byte Folded Reload
	fmul.d	$ft7, $ft7, $ft9
	fmul.d	$ft6, $ft4, $ft6
	fmul.d	$ft6, $ft12, $ft6
	fsub.d	$ft6, $ft7, $ft6
	fdiv.d	$ft6, $ft6, $ft5
	fmul.d	$ft6, $fs2, $ft6
	fsub.d	$fa4, $fa4, $ft6
	fmul.d	$ft6, $ft15, $ft15
	fdiv.d	$ft6, $ft6, $fa6
	fmul.d	$ft7, $fa6, $fa6
	fmul.d	$ft7, $ft7, $fa1
	fadd.d	$ft6, $ft7, $ft6
	fmul.d	$ft7, $fs0, $ft15
	fadd.d	$ft7, $ft8, $ft7
	fdiv.d	$ft7, $ft7, $fa7
	fmov.d	$ft15, $fa3
	fmul.d	$ft8, $fa3, $ft9
	fmul.d	$ft4, $ft4, $ft6
	fmul.d	$ft4, $ft12, $ft4
	fsub.d	$ft4, $ft8, $ft4
	fdiv.d	$ft4, $ft4, $ft5
	fmul.d	$ft4, $fs2, $ft4
	fsub.d	$fa6, $ft7, $ft4
	fadd.d	$ft4, $fs4, $fa6
	fmul.d	$fa3, $ft4, $ft14
	fst.d	$fa3, $sp, 432                  # 8-byte Folded Spill
	fmul.d	$fa4, $fa4, $fa6
	fdiv.d	$fa4, $fa4, $ft10
	fadd.d	$fa4, $fs5, $fa4
	fmul.d	$fa3, $fa4, $ft14
	fst.d	$fa3, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 368                  # 8-byte Folded Spill
	fmul.d	$fa4, $fa6, $fa6
	fdiv.d	$fa4, $fa4, $ft10
	fst.d	$ft10, $sp, 712                 # 8-byte Folded Spill
	fmul.d	$ft4, $ft10, $ft10
	fmul.d	$ft4, $ft4, $fa1
	fadd.d	$fa4, $ft4, $fa4
	fadd.d	$fa4, $fs6, $fa4
	fmul.d	$fa6, $fa4, $ft14
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	move	$t0, $ra
	b	.LBB16_27
	.p2align	4, , 16
.LBB16_26:                              #   in Loop: Header=BB16_6 Depth=1
	fst.d	$fs5, $sp, 448                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 432                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 712                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 368                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	move	$t0, $ra
	fmov.d	$fa6, $fs6
.LBB16_27:                              #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a6, $a5, 3
	fldx.d	$fa4, $s6, $a6
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	slli.d	$a6, $ra, 3
	fldx.d	$fs5, $s5, $a6
	fldx.d	$ft6, $t7, $a6
	fldx.d	$fa3, $t8, $a6
	fmul.d	$ft4, $fa4, $fa4
	fmul.d	$ft7, $fs5, $fa5
	fmul.d	$ft5, $fs7, $fa4
	fadd.d	$ft7, $ft7, $ft5
	fadd.d	$ft8, $fa5, $fa4
	fdiv.d	$ft7, $ft7, $ft8
	fmul.d	$ft9, $fa3, $fa4
	fdiv.d	$ft10, $fa5, $fa4
	fmin.d	$ft10, $ft10, $fa0
	fmul.d	$ft9, $ft9, $ft10
	fdiv.d	$ft11, $fa4, $fa5
	fmin.d	$ft11, $ft11, $fa0
	fmul.d	$ft1, $ft1, $ft11
	fsub.d	$ft1, $ft9, $ft1
	fdiv.d	$ft9, $ft0, $ft4
	fmin.d	$ft9, $ft9, $ft14
	fmul.d	$ft9, $ft4, $ft9
	fdiv.d	$ft12, $ft4, $ft0
	fmin.d	$ft12, $ft12, $ft14
	fmul.d	$ft0, $ft0, $ft12
	fmov.d	$ft12, $fa3
	fadd.d	$ft9, $ft9, $ft0
	fdiv.d	$ft0, $ft1, $ft9
	fmul.d	$ft0, $fs2, $ft0
	fsub.d	$fa0, $ft7, $ft0
	fmul.d	$ft0, $ft6, $fa3
	fdiv.d	$ft1, $ft0, $fs5
	fmul.d	$ft6, $ft6, $fa5
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fmul.d	$ft0, $ft7, $fa4
	fadd.d	$ft6, $ft6, $ft0
	fdiv.d	$ft6, $ft6, $ft8
	fmul.d	$ft1, $ft1, $fa4
	fmul.d	$ft1, $ft1, $ft10
	fmul.d	$ft2, $ft2, $ft11
	fsub.d	$ft1, $ft1, $ft2
	fdiv.d	$ft1, $ft1, $ft9
	fmul.d	$ft1, $fs2, $ft1
	fsub.d	$ft1, $ft6, $ft1
	fmul.d	$ft2, $fa3, $fa3
	fdiv.d	$ft2, $ft2, $fs5
	fst.d	$fs5, $sp, 672                  # 8-byte Folded Spill
	fmul.d	$ft6, $fs5, $fs5
	fmul.d	$ft6, $ft6, $fa1
	fadd.d	$ft2, $ft6, $ft2
	fmul.d	$ft6, $fa3, $fa5
	fmul.d	$fa5, $ft13, $fa4
	fadd.d	$ft6, $ft6, $fa5
	fdiv.d	$ft6, $ft6, $ft8
	fmul.d	$ft2, $ft2, $fa4
	fmul.d	$ft2, $ft2, $ft10
	fmul.d	$ft3, $ft3, $ft11
	fsub.d	$ft2, $ft2, $ft3
	fdiv.d	$ft2, $ft2, $ft9
	fmul.d	$ft2, $fs2, $ft2
	fsub.d	$fs5, $ft6, $ft2
	fmul.d	$ft1, $fs5, $ft1
	fdiv.d	$ft11, $ft1, $fa0
	fmul.d	$ft1, $fs5, $fs5
	fdiv.d	$ft1, $ft1, $fa0
	fst.d	$fa0, $sp, 584                  # 8-byte Folded Spill
	fmul.d	$ft2, $fa0, $fa0
	fmul.d	$ft2, $ft2, $fa1
	fadd.d	$ft10, $ft1, $ft2
	fadd.d	$fs4, $fs0, $fa4
	vldi	$vr16, -912
	bge	$fp, $a5, .LBB16_29
# %bb.28:                               #   in Loop: Header=BB16_6 Depth=1
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	fmul.d	$ft1, $fs0, $ft9
	fadd.d	$ft1, $ft5, $ft1
	fdiv.d	$ft1, $ft1, $fs4
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fmul.d	$ft2, $fa4, $ft6
	fdiv.d	$ft3, $fs0, $fa4
	fmin.d	$ft3, $ft3, $ft8
	fmul.d	$ft2, $ft3, $ft2
	fdiv.d	$ft5, $fa4, $fs0
	fmin.d	$ft5, $ft5, $ft8
	fld.d	$fa0, $sp, 616                  # 8-byte Folded Reload
	fmul.d	$fa7, $fa0, $ft5
	fsub.d	$fa7, $ft2, $fa7
	fdiv.d	$ft2, $fa2, $ft4
	fmin.d	$ft2, $ft2, $ft14
	fmul.d	$ft2, $ft4, $ft2
	fdiv.d	$ft4, $ft4, $fa2
	fmin.d	$ft4, $ft4, $ft14
	fmul.d	$fa2, $fa2, $ft4
	fadd.d	$fa2, $ft2, $fa2
	fdiv.d	$fa7, $fa7, $fa2
	fmul.d	$fa7, $fs2, $fa7
	fsub.d	$ft2, $ft1, $fa7
	fld.d	$fa0, $sp, 640                  # 8-byte Folded Reload
	fmul.d	$fa7, $fa0, $ft6
	fdiv.d	$fa7, $fa7, $ft9
	fmul.d	$fa0, $fs0, $fa0
	fadd.d	$fa0, $ft0, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fmul.d	$fa7, $fa4, $fa7
	fmul.d	$fa7, $ft3, $fa7
	fld.d	$fa3, $sp, 760                  # 8-byte Folded Reload
	fmul.d	$fa3, $fa3, $ft5
	fsub.d	$fa3, $fa7, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fs2, $fa3
	fsub.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $ft6, $ft6
	fdiv.d	$fa3, $fa3, $ft9
	fmul.d	$fa7, $ft9, $ft9
	fmul.d	$fa7, $fa7, $fa1
	fadd.d	$fa3, $fa7, $fa3
	fmul.d	$fa7, $fs0, $ft6
	fadd.d	$fa5, $fa5, $fa7
	fdiv.d	$fa5, $fa5, $fs4
	fmul.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $ft3, $fa3
	fmul.d	$fa4, $ft15, $ft5
	fsub.d	$fa3, $fa3, $fa4
	fdiv.d	$fa2, $fa3, $fa2
	fmul.d	$fa2, $fs2, $fa2
	fsub.d	$fa3, $fa5, $fa2
	fadd.d	$fa2, $fs5, $fa3
	fmul.d	$ft1, $fa2, $ft14
	fmul.d	$fa0, $fa0, $fa3
	fdiv.d	$fa0, $fa0, $ft2
	fadd.d	$fa0, $ft11, $fa0
	fmul.d	$ft11, $fa0, $ft14
	fst.d	$fa3, $sp, 376                  # 8-byte Folded Spill
	fmul.d	$fa0, $fa3, $fa3
	fdiv.d	$fa0, $fa0, $ft2
	fmul.d	$fa2, $ft2, $ft2
	fmul.d	$fa1, $fa2, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $ft10, $fa0
	fmul.d	$ft10, $fa0, $ft14
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_30
	.p2align	4, , 16
.LBB16_29:                              #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$ft1, $fs5
	fmov.d	$ft2, $fs1
	fst.d	$fs1, $sp, 376                  # 8-byte Folded Spill
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
.LBB16_30:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	ldx.w	$a1, $a5, $a1
	slli.d	$a5, $a1, 3
	fldx.d	$fs1, $s5, $a5
	slli.d	$a1, $a1, 2
	ldx.w	$a6, $s4, $a1
	fldx.d	$fa2, $t7, $a5
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	bge	$a0, $a6, .LBB16_32
# %bb.31:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t4, $a1
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s5, $a0
	fldx.d	$fa1, $t7, $a0
	fadd.d	$fa0, $fs1, $fa0
	fmul.d	$fs1, $fa0, $ft14
	fadd.d	$fa0, $fa2, $fa1
	fmul.d	$fa2, $fa0, $ft14
.LBB16_32:                              #   in Loop: Header=BB16_6 Depth=1
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	fst.d	$fa2, $sp, 312                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 408                  # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	ldx.w	$s6, $t2, $a2
	ldx.w	$a6, $t4, $a4
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$s8, $a0, $a3
	slli.d	$a0, $s6, 3
	fldx.d	$fs2, $s5, $a0
	fldx.d	$fa7, $t7, $a0
	slli.d	$a0, $a6, 3
	fldx.d	$fa0, $s5, $a0
	fst.d	$fa0, $sp, 608                  # 8-byte Folded Spill
	fldx.d	$ft5, $t8, $a0
	slli.d	$a0, $s8, 3
	fldx.d	$fa0, $s5, $a0
	fst.d	$fa0, $sp, 600                  # 8-byte Folded Spill
	fldx.d	$fa0, $t8, $a0
	fst.d	$fa0, $sp, 760                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	lu52i.d	$a0, $a0, 1026
	movgr2fr.d	$ft3, $a0
	fld.d	$fs4, $sp, 352                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs4, $ft3
	fst.d	$fa0, $sp, 568                  # 8-byte Folded Spill
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_98
.LBB16_33:                              # %.split
                                        #   in Loop: Header=BB16_6 Depth=1
	alsl.d	$s1, $s1, $s4, 2
	slt	$s2, $fp, $s3
	fld.d	$fa1, $sp, 800                  # 8-byte Folded Reload
	fadd.d	$fa1, $fs3, $fa1
	fmul.d	$fa1, $fa1, $ft14
	movgr2cf	$fcc0, $s2
	fsel	$fa1, $fs3, $fa1, $fcc0
	fld.d	$fa2, $sp, 752                  # 8-byte Folded Reload
	fmul.d	$fa4, $fa2, $ft14
	fld.d	$fa2, $sp, 336                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa2, $fs4
	fabs.d	$fa2, $fa2
	fst.d	$fa2, $sp, 352                  # 8-byte Folded Spill
	fadd.d	$fa0, $fa2, $fa0
	fld.d	$fs4, $sp, 384                  # 8-byte Folded Reload
	fsub.d	$fa2, $fs7, $fs4
	fsub.d	$fa3, $fs4, $fs1
	fsub.d	$fs1, $fa1, $fs7
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fst.d	$fa4, $sp, 752                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fa4
	fsub.d	$fa1, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	movgr2fr.d	$fs6, $a0
	fcmp.clt.d	$fcc0, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc0
	frecip.d	$fa1, $fa1
	fmul.d	$fa4, $fa2, $fs1
	fmul.d	$fa4, $fa1, $fa4
	fmul.d	$fa3, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa3, $fa4, $ft8
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa3, $fa1, $fcc0
	movgr2fr.d	$fs5, $zero
	fcmp.clt.d	$fcc0, $fa1, $fs5
	fsel	$fa1, $fa1, $fs5, $fcc0
	fsub.d	$fa1, $ft8, $fa1
	ld.w	$a0, $s1, 0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$ft4, $fa2, $fa0
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	slli.d	$s3, $a1, 2
	fld.d	$fa0, $sp, 776                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 320                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa1, $fa0
	ld.d	$a3, $sp, 664                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 656                   # 8-byte Folded Reload
	fst.d	$fa2, $sp, 336                  # 8-byte Folded Spill
	bge	$fp, $a0, .LBB16_39
# %bb.34:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a0, $a4, 2
	ldx.w	$a0, $s4, $a0
	ldx.w	$a1, $s4, $s3
	bge	$a0, $a1, .LBB16_36
# %bb.35:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t4, $s3
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s5, $a0
	fld.d	$fa1, $sp, 240                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft14
	b	.LBB16_37
	.p2align	4, , 16
.LBB16_36:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa3, $sp, 240                  # 8-byte Folded Reload
.LBB16_37:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa0, $sp, 776                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $ft3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_106
.LBB16_38:                              # %.split1369
                                        #   in Loop: Header=BB16_6 Depth=1
	fabs.d	$fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 792                  # 8-byte Folded Reload
	fsub.d	$fa1, $fs7, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fld.d	$fa3, $sp, 752                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa4, $fa1, $fs1
	fmul.d	$fa4, $fa3, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa3, $fa4, $ft8
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs5
	fsel	$fa2, $fa2, $fs5, $fcc0
	fsub.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $ft4, $fa0
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$ft4, $fa0, $ft14
.LBB16_39:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa3, $sp, 576                  # 8-byte Folded Reload
	alsl.d	$s0, $s0, $s4, 2
	ld.w	$a1, $s0, 0
	slli.d	$a0, $s6, 2
	ldx.w	$a2, $s4, $a0
	bge	$a1, $a2, .LBB16_41
# %bb.40:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t4, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s5, $a0
	fldx.d	$fa1, $t7, $a0
	fadd.d	$fa0, $fs2, $fa0
	fmul.d	$fs2, $fa0, $ft14
	fadd.d	$fa0, $fa7, $fa1
	fmul.d	$fa7, $fa0, $ft14
.LBB16_41:                              #   in Loop: Header=BB16_6 Depth=1
	fst.d	$fa7, $sp, 640                  # 8-byte Folded Spill
	ld.w	$s6, $s1, 0
	fmul.d	$fa0, $fa3, $ft3
	fst.d	$fa0, $sp, 560                  # 8-byte Folded Spill
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_99
.LBB16_42:                              # %.split1371
                                        #   in Loop: Header=BB16_6 Depth=1
	slt	$s7, $fp, $s6
	fld.d	$fa1, $sp, 792                  # 8-byte Folded Reload
	fadd.d	$fa1, $fs4, $fa1
	fmul.d	$fa1, $fa1, $ft14
	movgr2cf	$fcc0, $s7
	fsel	$fa1, $fs4, $fa1, $fcc0
	fld.d	$fa2, $sp, 360                  # 8-byte Folded Reload
	fmul.d	$fs4, $fa2, $ft14
	fld.d	$fa2, $sp, 344                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa2, $fa3
	fabs.d	$fa2, $fa2
	fst.d	$fa2, $sp, 576                  # 8-byte Folded Spill
	fadd.d	$fa0, $fa2, $fa0
	fsub.d	$fa2, $fs3, $fs7
	fsub.d	$fs1, $fs7, $fa1
	fsub.d	$fa1, $fs2, $fs3
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fmul.d	$fa4, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa1, $fa1, $ft8
	fcmp.clt.d	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs5
	fsel	$fa1, $fa1, $fs5, $fcc0
	fsub.d	$fa1, $ft8, $fa1
	ld.w	$a0, $s0, 0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 792                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	slli.d	$s6, $a1, 2
	fld.d	$fa0, $sp, 768                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 328                  # 8-byte Folded Reload
	fdiv.d	$fs3, $fa1, $fa0
	bge	$fp, $a0, .LBB16_45
# %bb.43:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a0, $a3, 2
	ldx.w	$a0, $s4, $a0
	ldx.w	$a1, $s4, $s6
	fld.d	$fa7, $sp, 648                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	bge	$a0, $a1, .LBB16_46
# %bb.44:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t4, $s6
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s5, $a0
	fld.d	$fa1, $sp, 248                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft14
	b	.LBB16_47
	.p2align	4, , 16
.LBB16_45:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa7, $sp, 648                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	b	.LBB16_49
	.p2align	4, , 16
.LBB16_46:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa3, $sp, 248                  # 8-byte Folded Reload
.LBB16_47:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa0, $sp, 768                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $ft3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_107
.LBB16_48:                              # %.split1373
                                        #   in Loop: Header=BB16_6 Depth=1
	fabs.d	$fa1, $fs3
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 800                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $fs7
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa1, $fs1
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa2, $fa2, $ft8
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs5
	fsel	$fa2, $fa2, $fs5, $fcc0
	fsub.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $sp, 792                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa0, $ft14
	fst.d	$fa0, $sp, 792                  # 8-byte Folded Spill
.LBB16_49:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $sp, 568                  # 8-byte Folded Reload
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_100
.LBB16_50:                              # %.split1375
                                        #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $sp, 816                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 784                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa1, $ft14
	movgr2cf	$fcc0, $s2
	fsel	$fa1, $fa2, $fa1, $fcc0
	fld.d	$fa2, $sp, 352                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fsub.d	$fa2, $ft7, $fa7
	fld.d	$fa3, $sp, 312                  # 8-byte Folded Reload
	fsub.d	$fa3, $fa7, $fa3
	fsub.d	$fs1, $fa1, $ft7
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fld.d	$fa1, $sp, 752                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc0
	frecip.d	$fa1, $fa1
	fmul.d	$fa4, $fa2, $fs1
	fmul.d	$fa4, $fa1, $fa4
	fmul.d	$fa3, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa3, $fa4, $ft8
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa3, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs5
	ld.w	$a0, $s1, 0
	fsel	$fa1, $fa1, $fs5, $fcc0
	fsub.d	$fa1, $ft8, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 800                  # 8-byte Folded Spill
	bge	$fp, $a0, .LBB16_56
# %bb.51:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a0, $a4, 2
	ldx.w	$a0, $s4, $a0
	ldx.w	$a1, $s4, $s3
	bge	$a0, $a1, .LBB16_53
# %bb.52:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t4, $s3
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $t7, $a0
	fld.d	$fa1, $sp, 256                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft14
	b	.LBB16_54
	.p2align	4, , 16
.LBB16_53:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa3, $sp, 256                  # 8-byte Folded Reload
.LBB16_54:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa2, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fa0, $sp, 776                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $ft3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_108
.LBB16_55:                              # %.split1377
                                        #   in Loop: Header=BB16_6 Depth=1
	fabs.d	$fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 808                  # 8-byte Folded Reload
	fsub.d	$fa1, $ft7, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fld.d	$fa3, $sp, 752                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa4, $fa1, $fs1
	fmul.d	$fa4, $fa3, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa3, $fa4, $ft8
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs5
	fsel	$fa2, $fa2, $fs5, $fcc0
	fsub.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $sp, 800                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa0, $ft14
	fst.d	$fa0, $sp, 800                  # 8-byte Folded Spill
.LBB16_56:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $sp, 560                  # 8-byte Folded Reload
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_101
.LBB16_57:                              # %.split1379
                                        #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $sp, 808                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa7, $fa1
	fmul.d	$fa1, $fa1, $ft14
	movgr2cf	$fcc0, $s7
	fsel	$fa1, $fa7, $fa1, $fcc0
	fld.d	$fa2, $sp, 576                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fld.d	$fa3, $sp, 784                  # 8-byte Folded Reload
	fsub.d	$fa2, $fa3, $ft7
	fsub.d	$fs1, $ft7, $fa1
	fld.d	$fa1, $sp, 640                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fmul.d	$fa4, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa1, $fa1, $ft8
	fcmp.clt.d	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs5
	ld.w	$a0, $s0, 0
	fsel	$fa1, $fa1, $fs5, $fcc0
	fsub.d	$fa1, $ft8, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fa7, $fa2, $fa0
	bge	$fp, $a0, .LBB16_60
# %bb.58:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a0, $a3, 2
	ldx.w	$a0, $s4, $a0
	ldx.w	$a1, $s4, $s6
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB16_61
# %bb.59:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t4, $s6
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $t7, $a0
	fld.d	$fa1, $sp, 264                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft14
	b	.LBB16_62
	.p2align	4, , 16
.LBB16_60:                              #   in Loop: Header=BB16_6 Depth=1
	fst.d	$fa7, $sp, 808                  # 8-byte Folded Spill
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	b	.LBB16_64
	.p2align	4, , 16
.LBB16_61:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa3, $sp, 264                  # 8-byte Folded Reload
.LBB16_62:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa0, $sp, 768                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $ft3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_109
.LBB16_63:                              # %.split1381
                                        #   in Loop: Header=BB16_6 Depth=1
	fabs.d	$fa1, $fs3
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 816                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $ft7
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa1, $fs1
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa2, $fa2, $ft8
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs5
	fsel	$fa2, $fa2, $fs5, $fcc0
	fsub.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa0, $ft14
	fst.d	$fa0, $sp, 808                  # 8-byte Folded Spill
.LBB16_64:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa2, $sp, 592                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 600                  # 8-byte Folded Reload
	alsl.d	$s1, $t3, $s4, 2
	ld.w	$a1, $s1, 0
	slli.d	$a0, $s8, 2
	ldx.w	$a2, $s4, $a0
	fld.d	$fa7, $sp, 624                  # 8-byte Folded Reload
	bge	$a1, $a2, .LBB16_66
# %bb.65:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t2, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s5, $a0
	fldx.d	$fa1, $t8, $a0
	fadd.d	$fa0, $fa4, $fa0
	fmul.d	$fa4, $fa0, $ft14
	fld.d	$fa0, $sp, 760                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $ft14
	fst.d	$fa0, $sp, 760                  # 8-byte Folded Spill
.LBB16_66:                              #   in Loop: Header=BB16_6 Depth=1
	alsl.d	$s0, $ra, $s4, 2
	ld.w	$s2, $s0, 0
	fmul.d	$fa0, $fa2, $ft3
	fst.d	$fa0, $sp, 776                  # 8-byte Folded Spill
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_102
.LBB16_67:                              # %.split1383
                                        #   in Loop: Header=BB16_6 Depth=1
	slt	$s3, $fp, $s2
	fadd.d	$fa1, $fs2, $ft9
	fmul.d	$fa1, $fa1, $ft14
	movgr2cf	$fcc0, $s3
	fsel	$fa1, $fs2, $fa1, $fcc0
	fld.d	$fa3, $sp, 400                  # 8-byte Folded Reload
	fmul.d	$fs3, $fa3, $ft14
	fld.d	$fa3, $sp, 416                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa3, $fa2
	fabs.d	$fa2, $fa2
	fst.d	$fa2, $sp, 752                  # 8-byte Folded Spill
	fadd.d	$fa0, $fa2, $fa0
	fsub.d	$fa2, $fs7, $fa7
	fsub.d	$fa3, $fa7, $fa4
	fsub.d	$fs1, $fa1, $fs7
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fst.d	$fs3, $sp, 816                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fs3
	fsub.d	$fa1, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc0
	frecip.d	$fa1, $fa1
	fmul.d	$fa4, $fa2, $fs1
	fmul.d	$fa4, $fa1, $fa4
	fmul.d	$fa3, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa3, $fa4, $ft8
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa3, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs5
	fsel	$fa1, $fa1, $fs5, $fcc0
	fsub.d	$fa1, $ft8, $fa1
	ld.w	$a0, $s1, 0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fs3, $fa2, $fa0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	slli.d	$s2, $a1, 2
	fld.d	$fa0, $sp, 368                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa0, $ft0
	fst.d	$fa2, $sp, 688                  # 8-byte Folded Spill
	bge	$fp, $a0, .LBB16_73
# %bb.68:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a0, $a5, 2
	ldx.w	$a0, $s4, $a0
	ldx.w	$a1, $s4, $s2
	bge	$a0, $a1, .LBB16_70
# %bb.69:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t2, $s2
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s5, $a0
	fld.d	$fa1, $sp, 232                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft14
	b	.LBB16_71
	.p2align	4, , 16
.LBB16_70:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa3, $sp, 232                  # 8-byte Folded Reload
.LBB16_71:                              #   in Loop: Header=BB16_6 Depth=1
	fmul.d	$fa1, $ft0, $ft3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_110
.LBB16_72:                              # %.split1385
                                        #   in Loop: Header=BB16_6 Depth=1
	fabs.d	$fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 824                  # 8-byte Folded Reload
	fsub.d	$fa1, $fs7, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fld.d	$fa3, $sp, 816                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa4, $fa1, $fs1
	fmul.d	$fa4, $fa3, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa3, $fa4, $ft8
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs5
	fsel	$fa2, $fa2, $fs5, $fcc0
	fsub.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs3, $fa0
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fs3, $fa0, $ft14
.LBB16_73:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa2, $sp, 584                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 608                  # 8-byte Folded Reload
	ld.w	$a1, $s0, 0
	slli.d	$a0, $a6, 2
	ldx.w	$a2, $s4, $a0
	bge	$a1, $a2, .LBB16_75
# %bb.74:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t2, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s5, $a0
	fldx.d	$fa1, $t8, $a0
	fadd.d	$fa0, $fa4, $fa0
	fmul.d	$fa4, $fa0, $ft14
	fadd.d	$fa0, $ft5, $fa1
	fmul.d	$ft5, $fa0, $ft14
.LBB16_75:                              #   in Loop: Header=BB16_6 Depth=1
	fst.d	$fs3, $sp, 784                  # 8-byte Folded Spill
	ld.w	$s6, $s1, 0
	fmul.d	$fa0, $fa2, $ft3
	fst.d	$fa0, $sp, 768                  # 8-byte Folded Spill
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_103
.LBB16_76:                              # %.split1387
                                        #   in Loop: Header=BB16_6 Depth=1
	slt	$s6, $fp, $s6
	fld.d	$fa1, $sp, 824                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa7, $fa1
	fmul.d	$fa1, $fa1, $ft14
	movgr2cf	$fcc0, $s6
	fsel	$fa1, $fa7, $fa1, $fcc0
	fld.d	$fa3, $sp, 392                  # 8-byte Folded Reload
	fmul.d	$fs4, $fa3, $ft14
	fld.d	$fa3, $sp, 408                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa3, $fa2
	fabs.d	$fs1, $fa2
	fadd.d	$fa0, $fs1, $fa0
	fsub.d	$fa2, $fs2, $fs7
	fsub.d	$fs3, $fs7, $fa1
	fsub.d	$fa1, $fa4, $fs2
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fmul.d	$fa4, $fa2, $fs3
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa1, $fa1, $ft8
	fcmp.clt.d	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs5
	fsel	$fa1, $fa1, $fs5, $fcc0
	fsub.d	$fa1, $ft8, $fa1
	ld.w	$a0, $s0, 0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa7, $fa2, $fa0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	slli.d	$s8, $a1, 2
	fld.d	$fa0, $sp, 376                  # 8-byte Folded Reload
	fdiv.d	$fa3, $fa0, $ft2
	fst.d	$fa3, $sp, 680                  # 8-byte Folded Spill
	bge	$fp, $a0, .LBB16_79
# %bb.77:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a0, $t0, 2
	ldx.w	$a0, $s4, $a0
	ldx.w	$a1, $s4, $s8
	bge	$a0, $a1, .LBB16_80
# %bb.78:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t2, $s8
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $s5, $a0
	fld.d	$fa1, $sp, 272                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa2, $fa0, $ft14
	b	.LBB16_81
	.p2align	4, , 16
.LBB16_79:                              #   in Loop: Header=BB16_6 Depth=1
	fst.d	$fa7, $sp, 824                  # 8-byte Folded Spill
	b	.LBB16_83
	.p2align	4, , 16
.LBB16_80:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa2, $sp, 272                  # 8-byte Folded Reload
.LBB16_81:                              #   in Loop: Header=BB16_6 Depth=1
	fmul.d	$fa1, $ft2, $ft3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_111
.LBB16_82:                              # %.split1389
                                        #   in Loop: Header=BB16_6 Depth=1
	fabs.d	$fa1, $fa3
	fadd.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $ft9, $fs7
	fsub.d	$fa2, $fa2, $ft9
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa1, $fs3
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa2, $fa2, $ft8
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs5
	fsel	$fa2, $fa2, $fs5, $fcc0
	fsub.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa0, $ft14
	fst.d	$fa0, $sp, 824                  # 8-byte Folded Spill
.LBB16_83:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $sp, 776                  # 8-byte Folded Reload
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fld.d	$fa7, $sp, 632                  # 8-byte Folded Reload
	bceqz	$fcc0, .LBB16_104
.LBB16_84:                              # %.split1391
                                        #   in Loop: Header=BB16_6 Depth=1
	fadd.d	$fa1, $ft12, $ft6
	fmul.d	$fa1, $fa1, $ft14
	movgr2cf	$fcc0, $s3
	fsel	$fa1, $ft12, $fa1, $fcc0
	fld.d	$fa2, $sp, 752                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fsub.d	$fa2, $ft13, $fa7
	fld.d	$fa3, $sp, 760                  # 8-byte Folded Reload
	fsub.d	$fa3, $fa7, $fa3
	fsub.d	$fs2, $fa1, $ft13
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fld.d	$fa1, $sp, 816                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc0
	frecip.d	$fa1, $fa1
	fmul.d	$fa4, $fa2, $fs2
	fmul.d	$fa4, $fa1, $fa4
	fmul.d	$fa3, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa3, $fa4, $ft8
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa3, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs5
	ld.w	$a0, $s1, 0
	fsel	$fa1, $fa1, $fs5, $fcc0
	fsub.d	$fa1, $ft8, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fs3, $fa2, $fa0
	bge	$fp, $a0, .LBB16_87
# %bb.85:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a0, $a5, 2
	ldx.w	$a0, $s4, $a0
	ldx.w	$a1, $s4, $s2
	bge	$a0, $a1, .LBB16_88
# %bb.86:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t2, $s2
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $t8, $a0
	fld.d	$fa1, $sp, 280                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft14
	b	.LBB16_89
	.p2align	4, , 16
.LBB16_87:                              #   in Loop: Header=BB16_6 Depth=1
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	b	.LBB16_91
	.p2align	4, , 16
.LBB16_88:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa3, $sp, 280                  # 8-byte Folded Reload
.LBB16_89:                              #   in Loop: Header=BB16_6 Depth=1
	fmul.d	$fa1, $ft0, $ft3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB16_112
.LBB16_90:                              # %.split1393
                                        #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $sp, 688                  # 8-byte Folded Reload
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 832                  # 8-byte Folded Reload
	fsub.d	$fa1, $ft13, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fld.d	$fa3, $sp, 816                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa4, $fa1, $fs2
	fmul.d	$fa4, $fa3, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa3, $fa4, $ft8
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs5
	fsel	$fa2, $fa2, $fs5, $fcc0
	fsub.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs3, $fa0
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fs3, $fa0, $ft14
.LBB16_91:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $sp, 768                  # 8-byte Folded Reload
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_105
.LBB16_92:                              # %.split1395
                                        #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $sp, 832                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa7, $fa1
	fmul.d	$fa1, $fa1, $ft14
	movgr2cf	$fcc0, $s6
	fsel	$fa1, $fa7, $fa1, $fcc0
	fadd.d	$fa0, $fs1, $fa0
	fsub.d	$fa2, $ft12, $ft13
	fsub.d	$fs2, $ft13, $fa1
	fsub.d	$fa1, $ft5, $ft12
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fmul.d	$fa4, $fa2, $fs2
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa1, $fa1, $ft8
	fcmp.clt.d	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs5
	ld.w	$a0, $s0, 0
	fsel	$fa1, $fa1, $fs5, $fcc0
	fsub.d	$fa1, $ft8, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fs1, $fa2, $fa0
	bge	$fp, $a0, .LBB16_4
# %bb.93:                               #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a0, $t0, 2
	ldx.w	$a0, $s4, $a0
	ldx.w	$a1, $s4, $s8
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	fld.d	$fa7, $sp, 808                  # 8-byte Folded Reload
	bge	$a0, $a1, .LBB16_95
# %bb.94:                               #   in Loop: Header=BB16_6 Depth=1
	ldx.w	$a0, $t2, $s8
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $t8, $a0
	fld.d	$fa1, $sp, 288                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa2, $fa0, $ft14
	b	.LBB16_96
	.p2align	4, , 16
.LBB16_95:                              #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa2, $sp, 288                  # 8-byte Folded Reload
.LBB16_96:                              #   in Loop: Header=BB16_6 Depth=1
	fmul.d	$fa1, $ft2, $ft3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 536                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB16_113
.LBB16_97:                              # %.split1397
                                        #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $sp, 680                  # 8-byte Folded Reload
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $ft6, $ft13
	fsub.d	$fa2, $fa2, $ft6
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fa0, $fa5, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fsub.d	$fa3, $ft8, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa1, $fs2
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft14
	fmin.d	$fa2, $fa2, $ft8
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs5
	fsel	$fa2, $fa2, $fs5, $fcc0
	fsub.d	$fa2, $ft8, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $ft14
	fmul.d	$fs1, $fa0, $ft14
	fld.d	$fa2, $sp, 480                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 448                  # 8-byte Folded Reload
	b	.LBB16_5
.LBB16_98:                              # %call.sqrt
                                        #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa0, $sp, 568                  # 8-byte Folded Reload
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s2, $t5
	move	$s7, $t1
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	fld.d	$fa1, $sp, 840                  # 8-byte Folded Reload
	fst.d	$fa1, $sp, 840                  # 8-byte Folded Spill
	fmov.d	$fs6, $fa6
	fmov.d	$fs5, $ft10
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fa7, $sp, 640                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa7, $sp, 640                  # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fmov.d	$ft10, $fs5
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	fmov.d	$fa6, $fs6
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s7
	move	$t5, $s2
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_33
.LBB16_99:                              # %call.sqrt1372
                                        #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa0, $sp, 560                  # 8-byte Folded Reload
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s7, $t5
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa3, $sp, 576                  # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	ld.d	$a4, $sp, 656                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	ld.d	$a3, $sp, 664                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	move	$t5, $s7
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_42
.LBB16_100:                             # %call.sqrt1376
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	st.d	$t5, $sp, 424                   # 8-byte Folded Spill
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	fmov.d	$fs2, $fa6
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	ld.d	$a4, $sp, 656                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	ld.d	$a3, $sp, 664                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	fmov.d	$fa6, $fs2
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 648                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_50
.LBB16_101:                             # %call.sqrt1380
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s1, $t5
	move	$s2, $t1
	move	$s3, $t0
	fmov.d	$fs2, $fa6
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	ld.d	$a3, $sp, 664                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	fmov.d	$fa6, $fs2
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 648                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	move	$t0, $s3
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s2
	move	$t5, $s1
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_57
.LBB16_102:                             # %call.sqrt1384
                                        #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa0, $sp, 776                  # 8-byte Folded Reload
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	move	$s8, $t7
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s3, $t5
	move	$s6, $t1
	move	$s7, $t0
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fs3, $ft10
	fmov.d	$fs4, $ft11
	fmov.d	$fs2, $ft12
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fa4, $sp, 600                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 600                  # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$fa2, $sp, 592                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fmov.d	$ft12, $fs2
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	fmov.d	$ft11, $fs4
	fmov.d	$ft10, $fs3
	fld.d	$fa7, $sp, 624                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	move	$t0, $s7
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s6
	move	$t5, $s3
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	move	$t7, $s8
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_67
.LBB16_103:                             # %call.sqrt1388
                                        #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa0, $sp, 768                  # 8-byte Folded Reload
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s7, $t5
	move	$s8, $t1
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fs3, $ft10
	fmov.d	$fs4, $ft11
	fmov.d	$fs2, $ft12
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fa4, $sp, 608                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 608                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 584                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fmov.d	$ft12, $fs2
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	fmov.d	$ft11, $fs4
	fmov.d	$ft10, $fs3
	fld.d	$fa7, $sp, 624                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s8
	move	$t5, $s7
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_76
.LBB16_104:                             # %call.sqrt1392
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s7, $t5
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	fmov.d	$fs3, $fa6
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 632                  # 8-byte Folded Reload
	fmov.d	$fa6, $fs3
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	move	$t5, $s7
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_84
.LBB16_105:                             # %call.sqrt1396
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	move	$s7, $t7
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s1, $t5
	move	$s2, $t1
	move	$s3, $t0
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 632                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	move	$t0, $s3
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s2
	move	$t5, $s1
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	move	$t7, $s7
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_92
.LBB16_106:                             # %call.sqrt1370
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s7, $t5
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	fld.d	$fa1, $sp, 840                  # 8-byte Folded Reload
	fst.d	$fa1, $sp, 840                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fa3, $sp, 240                  # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fa7, $sp, 640                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 640                  # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$fa3, $sp, 240                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	ld.d	$a4, $sp, 656                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	ld.d	$a3, $sp, 664                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	move	$t5, $s7
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_38
.LBB16_107:                             # %call.sqrt1374
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	st.d	$t5, $sp, 424                   # 8-byte Folded Spill
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$fa3, $sp, 248                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fa3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	ld.d	$a4, $sp, 656                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	ld.d	$a3, $sp, 664                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 648                  # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_48
.LBB16_108:                             # %call.sqrt1378
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s1, $t5
	move	$s2, $t1
	move	$s3, $t0
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$fa3, $sp, 256                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 336                  # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 256                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	ld.d	$a3, $sp, 664                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 648                  # 8-byte Folded Reload
	move	$t0, $s3
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s2
	move	$t5, $s1
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_55
.LBB16_109:                             # %call.sqrt1382
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	move	$s7, $t6
	move	$s1, $t7
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s0, $t5
	move	$s2, $t1
	move	$s3, $t0
	move	$s6, $a5
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fa3, $sp, 264                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fa7, $sp, 808                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa7, $sp, 808                  # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 264                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	move	$a5, $s6
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	move	$t0, $s3
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s2
	move	$t5, $s0
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	move	$t7, $s1
	move	$t6, $s7
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_63
.LBB16_110:                             # %call.sqrt1386
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s6, $t5
	move	$s7, $t1
	move	$s8, $t0
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fs4, $fa3
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 784                  # 8-byte Folded Spill
	fmov.d	$fs3, $ft11
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fmov.d	$ft11, $fs3
	fld.d	$fs3, $sp, 784                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 624                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	fmov.d	$fa3, $fs4
	fld.d	$fa2, $sp, 688                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	move	$t0, $s8
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s7
	move	$t5, $s6
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_72
.LBB16_111:                             # %call.sqrt1390
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s7, $t5
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fa2, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fa7, $sp, 824                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa7, $sp, 824                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 272                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 696                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	fld.d	$fa3, $sp, 680                  # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	move	$t5, $s7
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_82
.LBB16_112:                             # %call.sqrt1394
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	move	$s7, $t7
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	move	$s1, $t5
	move	$s2, $t1
	move	$s3, $t0
	fld.d	$fa1, $sp, 840                  # 8-byte Folded Reload
	fst.d	$fa1, $sp, 840                  # 8-byte Folded Spill
	fst.d	$fa3, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 64                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 88                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$ft5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 64                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 632                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fa3, $sp, 280                  # 8-byte Folded Reload
	move	$t0, $s3
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s2
	move	$t5, $s1
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	move	$t7, $s7
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_90
.LBB16_113:                             # %call.sqrt1398
                                        #   in Loop: Header=BB16_6 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	move	$s2, $t4
	move	$s6, $t6
	move	$s7, $t7
	move	$s8, $t8
	move	$fp, $t5
	move	$s1, $t1
	fst.d	$fa2, $sp, 288                  # 8-byte Folded Spill
	fld.d	$fa1, $sp, 840                  # 8-byte Folded Reload
	fst.d	$fa1, $sp, 840                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 56                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 72                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft4, $sp, 320                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa7, $sp, 808                  # 8-byte Folded Reload
	fld.d	$ft4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 72                  # 8-byte Folded Reload
	fld.d	$ft10, $sp, 56                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 288                  # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 848                 # 8-byte Folded Reload
	move	$t1, $s1
	move	$t5, $fp
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	vldi	$vr16, -912
	vldi	$vr22, -928
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	move	$t8, $s8
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	move	$t7, $s7
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	move	$t6, $s6
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	move	$t4, $s2
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 536                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	b	.LBB16_97
.LBB16_114:                             # %._crit_edge
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $fp, 200
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(_ZZN5State22calc_finite_differenceEdE5H_new)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 208
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(_ZZN5State22calc_finite_differenceEdE5U_new)
	st.d	$a0, $fp, 200
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 216
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(_ZZN5State22calc_finite_differenceEdE5V_new)
	st.d	$a0, $fp, 208
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 872
	ld.d	$a1, $sp, 880
	st.d	$a0, $fp, 216
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 240
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 240
	fld.d	$fs7, $sp, 888                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 896                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 904                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 912                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 920                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 928                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 936                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 944                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 968                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 976                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 992                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1040
	ret
.Lfunc_end16:
	.size	_ZN5State22calc_finite_differenceEd, .Lfunc_end16-_ZN5State22calc_finite_differenceEd
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State32calc_finite_difference_via_facesEd # -- Begin function _ZN5State32calc_finite_difference_via_facesEd
	.p2align	5
	.type	_ZN5State32calc_finite_difference_via_facesEd,@function
_ZN5State32calc_finite_difference_via_facesEd: # @_ZN5State32calc_finite_difference_via_facesEd
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -992
	.cfi_def_cfa_offset 992
	st.d	$ra, $sp, 984                   # 8-byte Folded Spill
	st.d	$fp, $sp, 976                   # 8-byte Folded Spill
	st.d	$s0, $sp, 968                   # 8-byte Folded Spill
	st.d	$s1, $sp, 960                   # 8-byte Folded Spill
	st.d	$s2, $sp, 952                   # 8-byte Folded Spill
	st.d	$s3, $sp, 944                   # 8-byte Folded Spill
	st.d	$s4, $sp, 936                   # 8-byte Folded Spill
	st.d	$s5, $sp, 928                   # 8-byte Folded Spill
	st.d	$s6, $sp, 920                   # 8-byte Folded Spill
	st.d	$s7, $sp, 912                   # 8-byte Folded Spill
	st.d	$s8, $sp, 904                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 896                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 888                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 880                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 872                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 864                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 856                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 848                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 840                  # 8-byte Folded Spill
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
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	move	$s0, $a0
	addi.d	$a0, $sp, 824
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 192
	ld.d	$a1, $a0, 1160
	ld.d	$a2, $a0, 1176
	bgeu	$a2, $a1, .LBB17_2
# %bb.1:
	st.d	$a1, $a0, 1176
.LBB17_2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN5State25apply_boundary_conditionsEv)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s0, 192
	ld.d	$a0, $s5, 1368
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 1376
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 1384
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 1392
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$s3, $s5, 1352
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_face_list_wbidirmapEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Hx)
	addi.d	$s2, $a1, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Hx)
	beqz	$a0, .LBB17_182
.LBB17_3:
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Ux)
	addi.d	$fp, $a1, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Ux)
	beqz	$a0, .LBB17_184
.LBB17_4:
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Vx)
	addi.d	$s4, $a1, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Vx)
	beqz	$a0, .LBB17_186
.LBB17_5:
	ld.d	$t1, $s0, 192
	ld.d	$a1, $s2, 8
	ld.d	$a2, $s2, 0
	ld.w	$a0, $t1, 1560
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 3
	bgeu	$a3, $a0, .LBB17_7
# %bb.6:
	sub.d	$a1, $a0, $a3
	pcalau12i	$a0, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Hx)
	addi.d	$a0, $a0, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Hx)
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$t1, $s0, 192
	ld.w	$a0, $t1, 1560
	b	.LBB17_10
.LBB17_7:
	bgeu	$a0, $a3, .LBB17_10
# %bb.8:
	alsl.d	$a2, $a0, $a2, 3
	beq	$a1, $a2, .LBB17_10
# %bb.9:                                # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a2, $s2, 8
.LBB17_10:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 0
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 3
	bgeu	$a3, $a0, .LBB17_12
# %bb.11:
	sub.d	$a1, $a0, $a3
	pcalau12i	$a0, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Ux)
	addi.d	$a0, $a0, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Ux)
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$t1, $s0, 192
	ld.w	$a0, $t1, 1560
	b	.LBB17_15
.LBB17_12:
	bgeu	$a0, $a3, .LBB17_15
# %bb.13:
	alsl.d	$a2, $a0, $a2, 3
	beq	$a1, $a2, .LBB17_15
# %bb.14:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1064
	st.d	$a2, $fp, 8
.LBB17_15:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit1065
	ld.d	$a1, $s4, 8
	ld.d	$a2, $s4, 0
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 3
	bgeu	$a3, $a0, .LBB17_17
# %bb.16:
	sub.d	$a1, $a0, $a3
	pcalau12i	$a0, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Vx)
	addi.d	$a0, $a0, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Vx)
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$t1, $s0, 192
	ld.w	$a0, $t1, 1560
	b	.LBB17_20
.LBB17_17:
	bgeu	$a0, $a3, .LBB17_20
# %bb.18:
	alsl.d	$a2, $a0, $a2, 3
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	beq	$a1, $a2, .LBB17_21
# %bb.19:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1067
	st.d	$a2, $s4, 8
	b	.LBB17_21
.LBB17_20:
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
.LBB17_21:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit1068
	lu12i.w	$s7, -419431
	blez	$a0, .LBB17_27
# %bb.22:                               # %.lr.ph
	ld.d	$a1, $t1, 1640
	ld.d	$a2, $t1, 1664
	ld.d	$a3, $s0, 200
	vldi	$vr0, -928
	fmul.d	$fa1, $fa1, $fa0
	ld.d	$a4, $s0, 208
	ld.d	$a5, $s2, 0
	ld.d	$a6, $fp, 0
	ld.d	$a7, $s0, 216
	ld.d	$t0, $s4, 0
	ld.d	$t1, $t1, 1048
	ori	$t2, $s7, 2458
	lu32i.d	$t2, 235929
	lu52i.d	$t2, $t2, 1025
	movgr2fr.d	$fa2, $t2
	vldi	$vr3, -912
	b	.LBB17_25
	.p2align	4, , 16
.LBB17_23:                              #   in Loop: Header=BB17_25 Depth=1
	fldx.d	$fa4, $a3, $t3
	fldx.d	$fa6, $a3, $t2
	fldx.d	$fa7, $a4, $t3
	fldx.d	$ft0, $a4, $t2
	fdiv.d	$fa5, $fa1, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fmul.d	$fa4, $fa4, $fa0
	fsub.d	$fa6, $fa7, $ft0
	fmul.d	$fa6, $fa5, $fa6
	fsub.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $a5, 0
	fldx.d	$fa4, $a4, $t3
	fldx.d	$fa6, $a4, $t2
	fldx.d	$fa7, $a3, $t3
	fadd.d	$ft0, $fa4, $fa6
	fmul.d	$ft0, $ft0, $fa0
	fmul.d	$fa4, $fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa7
	fmul.d	$fa7, $fa7, $fa7
	fldx.d	$ft1, $a3, $t2
	fmul.d	$fa7, $fa7, $fa2
	fadd.d	$fa4, $fa4, $fa7
	fmul.d	$fa6, $fa6, $fa6
	fdiv.d	$fa6, $fa6, $ft1
	fmul.d	$fa7, $ft1, $ft1
	fmul.d	$fa7, $fa7, $fa2
	fadd.d	$fa6, $fa6, $fa7
	fsub.d	$fa4, $fa4, $fa6
	fmul.d	$fa4, $fa5, $fa4
	fsub.d	$fa4, $ft0, $fa4
	fst.d	$fa4, $a6, 0
	fldx.d	$fa4, $a7, $t3
	fldx.d	$fa6, $a4, $t3
	fldx.d	$fa7, $a3, $t3
	fldx.d	$ft0, $a7, $t2
	fmul.d	$fa6, $fa4, $fa6
	fldx.d	$ft1, $a4, $t2
	fdiv.d	$fa6, $fa6, $fa7
	fldx.d	$fa7, $a3, $t2
	fadd.d	$fa4, $fa4, $ft0
	fmul.d	$ft0, $ft0, $ft1
	fmul.d	$fa4, $fa4, $fa0
	fdiv.d	$fa7, $ft0, $fa7
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa5, $fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
.LBB17_24:                              #   in Loop: Header=BB17_25 Depth=1
	fst.d	$fa4, $t0, 0
	addi.d	$t0, $t0, 8
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, -1
	addi.d	$a6, $a6, 8
	beqz	$a0, .LBB17_27
.LBB17_25:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $a1, 0
	ld.w	$t3, $a2, 0
	slli.d	$t4, $t2, 2
	ldx.w	$t5, $s3, $t4
	slli.d	$t4, $t3, 2
	ldx.w	$t4, $s3, $t4
	slli.d	$t6, $t5, 3
	fldx.d	$fa5, $t1, $t6
	slli.d	$t3, $t3, 3
	slli.d	$t2, $t2, 3
	beq	$t5, $t4, .LBB17_23
# %bb.26:                               #   in Loop: Header=BB17_25 Depth=1
	slli.d	$t4, $t4, 3
	fldx.d	$fa7, $t1, $t4
	fdiv.d	$fa4, $fa7, $fa5
	fmin.d	$fa4, $fa4, $fa3
	fmul.d	$fa4, $fa5, $fa4
	fdiv.d	$fa6, $fa5, $fa7
	fmin.d	$fa6, $fa6, $fa3
	fmul.d	$fa6, $fa7, $fa6
	fmul.d	$ft0, $fa5, $fa5
	fmul.d	$ft1, $fa7, $fa7
	fdiv.d	$ft2, $ft1, $ft0
	fmin.d	$ft2, $ft2, $fa0
	fmul.d	$ft2, $ft0, $ft2
	fdiv.d	$ft0, $ft0, $ft1
	fldx.d	$ft3, $a3, $t3
	fldx.d	$ft4, $a3, $t2
	fmin.d	$ft0, $ft0, $fa0
	fmul.d	$ft0, $ft1, $ft0
	fmul.d	$ft1, $fa5, $ft3
	fmul.d	$ft3, $fa7, $ft4
	fadd.d	$ft1, $ft1, $ft3
	fldx.d	$ft3, $a4, $t3
	fldx.d	$ft4, $a4, $t2
	fadd.d	$ft5, $fa5, $fa7
	fdiv.d	$ft1, $ft1, $ft5
	fmul.d	$ft3, $fa6, $ft3
	fmul.d	$ft4, $fa4, $ft4
	fsub.d	$ft3, $ft3, $ft4
	fmul.d	$ft3, $fa1, $ft3
	fadd.d	$ft0, $ft0, $ft2
	fdiv.d	$ft2, $ft3, $ft0
	fsub.d	$ft1, $ft1, $ft2
	fst.d	$ft1, $a5, 0
	fldx.d	$ft1, $a4, $t3
	fldx.d	$ft2, $a4, $t2
	fmul.d	$ft3, $fa5, $ft1
	fldx.d	$ft4, $a3, $t3
	fmul.d	$ft6, $fa7, $ft2
	fadd.d	$ft3, $ft3, $ft6
	fmul.d	$ft1, $ft1, $ft1
	fdiv.d	$ft1, $ft1, $ft4
	fmul.d	$ft4, $ft4, $ft4
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft1, $ft1, $ft4
	fldx.d	$ft4, $a3, $t2
	fdiv.d	$ft3, $ft3, $ft5
	fmul.d	$ft1, $fa6, $ft1
	fmul.d	$ft2, $ft2, $ft2
	fdiv.d	$ft2, $ft2, $ft4
	fmul.d	$ft4, $ft4, $ft4
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft2, $ft2, $ft4
	fmul.d	$ft2, $fa4, $ft2
	fsub.d	$ft1, $ft1, $ft2
	fmul.d	$ft1, $fa1, $ft1
	fdiv.d	$ft1, $ft1, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fst.d	$ft1, $a6, 0
	fldx.d	$ft1, $a7, $t3
	fldx.d	$ft2, $a7, $t2
	fmul.d	$fa5, $fa5, $ft1
	fmul.d	$fa7, $fa7, $ft2
	fldx.d	$ft3, $a4, $t3
	fadd.d	$fa5, $fa5, $fa7
	fdiv.d	$fa5, $fa5, $ft5
	fldx.d	$fa7, $a3, $t3
	fmul.d	$ft1, $ft1, $ft3
	fldx.d	$ft3, $a4, $t2
	fldx.d	$ft4, $a3, $t2
	fdiv.d	$fa7, $ft1, $fa7
	fmul.d	$fa6, $fa6, $fa7
	fmul.d	$fa7, $ft2, $ft3
	fdiv.d	$fa7, $fa7, $ft4
	fmul.d	$fa4, $fa4, $fa7
	fsub.d	$fa4, $fa6, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fdiv.d	$fa4, $fa4, $ft0
	fsub.d	$fa4, $fa5, $fa4
	b	.LBB17_24
.LBB17_27:                              # %._crit_edge
	st.d	$s2, $sp, 800                   # 8-byte Folded Spill
	st.d	$fp, $sp, 808                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Hy)
	addi.d	$fp, $a1, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Hy)
	beqz	$a0, .LBB17_188
.LBB17_28:
	st.d	$s4, $sp, 792                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Uy)
	addi.d	$s6, $a1, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Uy)
	beqz	$a0, .LBB17_190
.LBB17_29:
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Vy)
	addi.d	$s8, $a1, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Vy)
	beqz	$a0, .LBB17_192
.LBB17_30:
	ld.d	$a0, $s0, 192
	ld.d	$a2, $fp, 8
	ld.d	$a3, $fp, 0
	ld.w	$a1, $a0, 1564
	sub.d	$a4, $a2, $a3
	srai.d	$a4, $a4, 3
	bgeu	$a4, $a1, .LBB17_32
# %bb.31:
	sub.d	$a1, $a1, $a4
	pcalau12i	$a0, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Hy)
	addi.d	$a0, $a0, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Hy)
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 192
	ld.w	$a1, $a0, 1564
	b	.LBB17_35
.LBB17_32:
	bgeu	$a1, $a4, .LBB17_35
# %bb.33:
	alsl.d	$a3, $a1, $a3, 3
	beq	$a2, $a3, .LBB17_35
# %bb.34:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1073
	st.d	$a3, $fp, 8
.LBB17_35:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit1074
	ld.d	$a2, $s6, 8
	ld.d	$a3, $s6, 0
	sub.d	$a4, $a2, $a3
	srai.d	$a4, $a4, 3
	bgeu	$a4, $a1, .LBB17_37
# %bb.36:
	sub.d	$a1, $a1, $a4
	pcalau12i	$a0, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Uy)
	addi.d	$a0, $a0, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Uy)
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 192
	ld.w	$a1, $a0, 1564
	b	.LBB17_40
.LBB17_37:
	bgeu	$a1, $a4, .LBB17_40
# %bb.38:
	alsl.d	$a3, $a1, $a3, 3
	beq	$a2, $a3, .LBB17_40
# %bb.39:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1076
	st.d	$a3, $s6, 8
.LBB17_40:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit1077
	ld.d	$a2, $s8, 8
	ld.d	$a3, $s8, 0
	sub.d	$a4, $a2, $a3
	srai.d	$a4, $a4, 3
	bgeu	$a4, $a1, .LBB17_42
# %bb.41:
	sub.d	$a1, $a1, $a4
	pcalau12i	$a0, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE2Vy)
	addi.d	$a0, $a0, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE2Vy)
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 192
	ld.w	$a1, $a0, 1564
	b	.LBB17_45
.LBB17_42:
	bgeu	$a1, $a4, .LBB17_45
# %bb.43:
	alsl.d	$a3, $a1, $a3, 3
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	beq	$a2, $a3, .LBB17_46
# %bb.44:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1079
	st.d	$a3, $s8, 8
	b	.LBB17_46
.LBB17_45:
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
.LBB17_46:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit1080
	blez	$a1, .LBB17_52
# %bb.47:                               # %.lr.ph1185
	ld.d	$a2, $a0, 2000
	ld.d	$a3, $a0, 2024
	ld.d	$a4, $s0, 200
	vldi	$vr0, -928
	fmul.d	$fa1, $fa1, $fa0
	ld.d	$a5, $s0, 216
	ld.d	$a6, $fp, 0
	ld.d	$a7, $s0, 208
	ld.d	$t0, $s6, 0
	ld.d	$t1, $s8, 0
	ld.d	$t2, $a0, 1072
	ori	$t3, $s7, 2458
	lu32i.d	$t3, 235929
	lu52i.d	$t3, $t3, 1025
	movgr2fr.d	$fa2, $t3
	vldi	$vr3, -912
	b	.LBB17_50
	.p2align	4, , 16
.LBB17_48:                              #   in Loop: Header=BB17_50 Depth=1
	fldx.d	$fa4, $a4, $t4
	fldx.d	$fa6, $a4, $t3
	fldx.d	$fa7, $a5, $t4
	fldx.d	$ft0, $a5, $t3
	fdiv.d	$fa5, $fa1, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fmul.d	$fa4, $fa4, $fa0
	fsub.d	$fa6, $fa7, $ft0
	fmul.d	$fa6, $fa5, $fa6
	fsub.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $a6, 0
	fldx.d	$fa4, $a7, $t4
	fldx.d	$fa6, $a5, $t4
	fldx.d	$fa7, $a4, $t4
	fldx.d	$ft0, $a7, $t3
	fmul.d	$fa6, $fa4, $fa6
	fldx.d	$ft1, $a5, $t3
	fdiv.d	$fa6, $fa6, $fa7
	fldx.d	$fa7, $a4, $t3
	fadd.d	$fa4, $fa4, $ft0
	fmul.d	$ft0, $ft0, $ft1
	fmul.d	$fa4, $fa4, $fa0
	fdiv.d	$fa7, $ft0, $fa7
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa6, $fa5, $fa6
	fsub.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $t0, 0
	fldx.d	$fa4, $a5, $t4
	fldx.d	$fa6, $a4, $t4
	fldx.d	$fa7, $a5, $t3
	fmul.d	$ft0, $fa4, $fa4
	fdiv.d	$ft0, $ft0, $fa6
	fmul.d	$fa6, $fa6, $fa6
	fmul.d	$fa6, $fa6, $fa2
	fadd.d	$fa6, $ft0, $fa6
	fldx.d	$ft0, $a4, $t3
	fadd.d	$fa4, $fa4, $fa7
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa7, $fa7, $fa7
	fdiv.d	$fa7, $fa7, $ft0
	fmul.d	$ft0, $ft0, $ft0
	fmul.d	$ft0, $ft0, $fa2
	fadd.d	$fa7, $fa7, $ft0
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa5, $fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
.LBB17_49:                              #   in Loop: Header=BB17_50 Depth=1
	fst.d	$fa4, $t1, 0
	addi.d	$t1, $t1, 8
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 8
	addi.d	$a1, $a1, -1
	addi.d	$t0, $t0, 8
	beqz	$a1, .LBB17_52
.LBB17_50:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $a2, 0
	ld.w	$t4, $a3, 0
	slli.d	$t5, $t3, 2
	ldx.w	$t6, $s3, $t5
	slli.d	$t5, $t4, 2
	ldx.w	$t5, $s3, $t5
	slli.d	$t7, $t6, 3
	fldx.d	$fa5, $t2, $t7
	slli.d	$t4, $t4, 3
	slli.d	$t3, $t3, 3
	beq	$t6, $t5, .LBB17_48
# %bb.51:                               #   in Loop: Header=BB17_50 Depth=1
	slli.d	$t5, $t5, 3
	fldx.d	$fa7, $t2, $t5
	fdiv.d	$fa4, $fa7, $fa5
	fmin.d	$fa4, $fa4, $fa3
	fmul.d	$fa4, $fa5, $fa4
	fdiv.d	$fa6, $fa5, $fa7
	fmin.d	$fa6, $fa6, $fa3
	fmul.d	$fa6, $fa7, $fa6
	fmul.d	$ft0, $fa5, $fa5
	fmul.d	$ft1, $fa7, $fa7
	fdiv.d	$ft2, $ft1, $ft0
	fmin.d	$ft2, $ft2, $fa0
	fmul.d	$ft2, $ft0, $ft2
	fdiv.d	$ft0, $ft0, $ft1
	fldx.d	$ft3, $a4, $t4
	fldx.d	$ft4, $a4, $t3
	fmin.d	$ft0, $ft0, $fa0
	fmul.d	$ft0, $ft1, $ft0
	fmul.d	$ft1, $fa5, $ft3
	fmul.d	$ft3, $fa7, $ft4
	fadd.d	$ft1, $ft1, $ft3
	fldx.d	$ft3, $a5, $t4
	fldx.d	$ft4, $a5, $t3
	fadd.d	$ft5, $fa5, $fa7
	fdiv.d	$ft1, $ft1, $ft5
	fmul.d	$ft3, $fa6, $ft3
	fmul.d	$ft4, $fa4, $ft4
	fsub.d	$ft3, $ft3, $ft4
	fmul.d	$ft3, $fa1, $ft3
	fadd.d	$ft0, $ft0, $ft2
	fdiv.d	$ft2, $ft3, $ft0
	fsub.d	$ft1, $ft1, $ft2
	fst.d	$ft1, $a6, 0
	fldx.d	$ft1, $a7, $t4
	fldx.d	$ft2, $a7, $t3
	fmul.d	$ft3, $fa5, $ft1
	fmul.d	$ft4, $fa7, $ft2
	fldx.d	$ft6, $a5, $t4
	fldx.d	$ft7, $a4, $t4
	fadd.d	$ft3, $ft3, $ft4
	fldx.d	$ft4, $a5, $t3
	fmul.d	$ft1, $ft1, $ft6
	fdiv.d	$ft1, $ft1, $ft7
	fldx.d	$ft6, $a4, $t3
	fmul.d	$ft2, $ft2, $ft4
	fdiv.d	$ft3, $ft3, $ft5
	fmul.d	$ft1, $fa6, $ft1
	fdiv.d	$ft2, $ft2, $ft6
	fmul.d	$ft2, $fa4, $ft2
	fsub.d	$ft1, $ft1, $ft2
	fmul.d	$ft1, $fa1, $ft1
	fdiv.d	$ft1, $ft1, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fst.d	$ft1, $t0, 0
	fldx.d	$ft1, $a5, $t4
	fldx.d	$ft2, $a5, $t3
	fmul.d	$fa5, $fa5, $ft1
	fmul.d	$fa7, $fa7, $ft2
	fldx.d	$ft3, $a4, $t4
	fadd.d	$fa5, $fa5, $fa7
	fdiv.d	$fa5, $fa5, $ft5
	fmul.d	$fa7, $ft1, $ft1
	fdiv.d	$fa7, $fa7, $ft3
	fmul.d	$ft1, $ft3, $ft3
	fmul.d	$ft1, $ft1, $fa2
	fldx.d	$ft3, $a4, $t3
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$fa6, $fa6, $fa7
	fmul.d	$fa7, $ft2, $ft2
	fdiv.d	$fa7, $fa7, $ft3
	fmul.d	$ft1, $ft3, $ft3
	fmul.d	$ft1, $ft1, $fa2
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$fa4, $fa4, $fa7
	fsub.d	$fa4, $fa6, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fdiv.d	$fa4, $fa4, $ft0
	fsub.d	$fa4, $fa5, $fa4
	b	.LBB17_49
.LBB17_52:                              # %._crit_edge1186
	move	$s1, $fp
	ld.d	$a1, $a0, 1176
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a3, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 192
	ld.d	$a1, $a1, 1176
	pcalau12i	$fp, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE5H_new)
	st.d	$a0, $fp, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE5H_new)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a3, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 192
	ld.d	$a1, $a1, 1176
	pcalau12i	$s2, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE5U_new)
	st.d	$a0, $s2, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE5U_new)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a3, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 192
	pcalau12i	$s4, %pc_hi20(_ZZN5State32calc_finite_difference_via_facesEdE5V_new)
	st.d	$a0, $s4, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE5V_new)
	addi.d	$a1, $sp, 820
	addi.d	$a2, $sp, 816
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZN4Mesh10get_boundsERiS0_)
	jirl	$ra, $ra, 0
	ld.w	$t8, $sp, 820
	ld.w	$a0, $sp, 816
	ld.d	$a1, $s0, 200
	bge	$t8, $a0, .LBB17_179
# %bb.53:                               # %.lr.ph1189
	ld.d	$ra, $s0, 208
	ld.d	$a0, $s0, 192
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$t3, $s0, 216
	ld.d	$a2, $s5, 1048
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a2, $s5, 1072
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a3, $a0, 1688
	ld.d	$a2, $sp, 800                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 808                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a2, $sp, 696                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 792                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a2, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 1712
	st.d	$a2, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 1736
	st.d	$a2, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 1760
	st.d	$a2, $sp, 776                   # 8-byte Folded Spill
	ldptr.d	$a5, $a0, 2048
	ld.d	$a2, $s1, 0
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a2, $s6, 0
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a2, $s8, 0
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	ldptr.d	$t1, $a0, 2072
	ldptr.d	$t2, $a0, 2096
	ldptr.d	$s5, $a0, 2120
	ld.d	$a0, $fp, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE5H_new)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $s2, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE5U_new)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $s4, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE5V_new)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	slli.d	$fp, $t8, 2
	slli.d	$s6, $t8, 3
	movgr2fr.d	$ft4, $zero
	vldi	$vr13, -928
	ori	$a0, $s7, 2458
	move	$s1, $a3
	lu32i.d	$a0, 235929
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	lu52i.d	$a0, $a0, 1026
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	vldi	$vr14, -912
	lu12i.w	$a0, -4420
	ori	$a0, $a0, 672
	lu32i.d	$a0, 280651
	lu52i.d	$a0, $a0, 923
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	move	$s2, $t7
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
	move	$s4, $t5
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	move	$a6, $s3
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	st.d	$t3, $sp, 304                   # 8-byte Folded Spill
	b	.LBB17_55
	.p2align	4, , 16
.LBB17_54:                              #   in Loop: Header=BB17_55 Depth=1
	ld.d	$t0, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 496                   # 8-byte Folded Reload
	fdiv.d	$fa2, $ft3, $ft11
	fsub.d	$ft1, $ft8, $ft7
	fadd.d	$ft1, $ft1, $ft12
	fsub.d	$ft1, $ft1, $fs1
	fmul.d	$ft1, $fa2, $ft1
	fsub.d	$ft1, $fs4, $ft1
	fld.d	$ft2, $sp, 472                  # 8-byte Folded Reload
	fsub.d	$ft1, $ft1, $ft2
	fadd.d	$ft1, $fs0, $ft1
	fld.d	$ft2, $sp, 568                  # 8-byte Folded Reload
	fsub.d	$ft1, $ft1, $ft2
	fld.d	$ft2, $sp, 728                  # 8-byte Folded Reload
	fadd.d	$ft1, $ft2, $ft1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	fstx.d	$ft1, $a0, $s6
	fsub.d	$fa1, $fa4, $fa1
	fadd.d	$fa1, $fa1, $fa7
	fsub.d	$fa1, $fa1, $fa5
	fmul.d	$fa1, $fa2, $fa1
	fsub.d	$fa1, $ft10, $fa1
	fsub.d	$fa1, $fa1, $fs3
	fld.d	$fa4, $sp, 552                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa4, $fa1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	fstx.d	$fa1, $a0, $s6
	fsub.d	$fa0, $fa3, $fa0
	fadd.d	$fa0, $fa0, $ft0
	fsub.d	$fa0, $fa0, $fa6
	fmul.d	$fa0, $fa2, $fa0
	fsub.d	$fa0, $ft9, $fa0
	fld.d	$fa1, $sp, 736                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fs2, $fa0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s6
	addi.d	$t8, $t8, 1
	ld.w	$a0, $sp, 816
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	addi.d	$s4, $s4, 4
	addi.d	$s2, $s2, 4
	addi.d	$t0, $t0, 4
	addi.d	$s6, $s6, 8
	addi.d	$s1, $s1, 4
	ld.d	$a3, $sp, 792                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 4
	st.d	$a3, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 4
	st.d	$a3, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 776                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 4
	st.d	$a3, $sp, 776                   # 8-byte Folded Spill
	addi.d	$a5, $a5, 4
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	addi.d	$s5, $s5, 4
	bge	$t8, $a0, .LBB17_180
.LBB17_55:                              # =>This Inner Loop Header: Depth=1
	st.d	$s5, $sp, 616                   # 8-byte Folded Spill
	st.d	$t2, $sp, 624                   # 8-byte Folded Spill
	st.d	$a4, $sp, 488                   # 8-byte Folded Spill
	ldx.w	$s5, $a4, $fp
	st.d	$a6, $sp, 480                   # 8-byte Folded Spill
	ldx.w	$s8, $a6, $fp
	slli.d	$a4, $s5, 2
	ldx.w	$a0, $s3, $a4
	ldx.w	$a6, $t7, $a4
	move	$s7, $a5
	bge	$s8, $a0, .LBB17_57
# %bb.56:                               #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a3, $a6, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a3
	slli.d	$a3, $a6, 3
	fldx.d	$fa0, $a1, $a3
	fst.d	$fa0, $sp, 640                  # 8-byte Folded Spill
	fldx.d	$fa0, $ra, $a3
	fst.d	$fa0, $sp, 648                  # 8-byte Folded Spill
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	slli.d	$a3, $a2, 3
	fldx.d	$fa2, $a1, $a3
	fldx.d	$fa1, $ra, $a3
	b	.LBB17_58
	.p2align	4, , 16
.LBB17_57:                              #   in Loop: Header=BB17_55 Depth=1
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
	fst.d	$ft4, $sp, 640                  # 8-byte Folded Spill
	fst.d	$ft4, $sp, 648                  # 8-byte Folded Spill
	fmov.d	$fa2, $ft4
	fmov.d	$fa1, $ft4
.LBB17_58:                              #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$s0, $s4, $fp
	slli.d	$a5, $s0, 2
	ldx.w	$a3, $s3, $a5
	ldx.w	$a2, $t7, $a5
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	st.d	$a6, $sp, 440                   # 8-byte Folded Spill
	bge	$s8, $a3, .LBB17_60
# %bb.59:                               #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a6, $a2, 2
	ldx.w	$a7, $t5, $a6
	slli.d	$a6, $a2, 3
	fldx.d	$fs1, $a1, $a6
	fldx.d	$fa0, $ra, $a6
	fst.d	$fa0, $sp, 656                  # 8-byte Folded Spill
	st.d	$a7, $sp, 528                   # 8-byte Folded Spill
	slli.d	$a6, $a7, 3
	fldx.d	$fa4, $a1, $a6
	fldx.d	$fa0, $ra, $a6
	b	.LBB17_61
	.p2align	4, , 16
.LBB17_60:                              #   in Loop: Header=BB17_55 Depth=1
	st.d	$zero, $sp, 528                 # 8-byte Folded Spill
	fmov.d	$fs1, $ft4
	fst.d	$ft4, $sp, 656                  # 8-byte Folded Spill
	fmov.d	$fa4, $ft4
	fmov.d	$fa0, $ft4
.LBB17_61:                              #   in Loop: Header=BB17_55 Depth=1
	fst.d	$fa2, $sp, 592                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 344                  # 8-byte Folded Spill
	ldx.w	$a2, $t0, $fp
	st.d	$a2, $sp, 800                   # 8-byte Folded Spill
	slli.d	$a7, $a2, 2
	ldx.w	$a6, $s3, $a7
	ldx.w	$t4, $t5, $a7
	st.d	$t1, $sp, 632                   # 8-byte Folded Spill
	st.d	$t0, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 496                   # 8-byte Folded Spill
	bge	$s8, $a6, .LBB17_63
# %bb.62:                               #   in Loop: Header=BB17_55 Depth=1
	slli.d	$t0, $t4, 2
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $t0
	slli.d	$t0, $t4, 3
	fldx.d	$fa1, $a1, $t0
	fldx.d	$fa0, $t3, $t0
	fst.d	$fa0, $sp, 672                  # 8-byte Folded Spill
	slli.d	$t0, $a2, 3
	fldx.d	$fa0, $a1, $t0
	fst.d	$fa0, $sp, 352                  # 8-byte Folded Spill
	fldx.d	$fa3, $t3, $t0
	b	.LBB17_64
	.p2align	4, , 16
.LBB17_63:                              #   in Loop: Header=BB17_55 Depth=1
	move	$a2, $zero
	fmov.d	$fa1, $ft4
	fst.d	$ft4, $sp, 672                  # 8-byte Folded Spill
	fst.d	$ft4, $sp, 352                  # 8-byte Folded Spill
	fmov.d	$fa3, $ft4
.LBB17_64:                              #   in Loop: Header=BB17_55 Depth=1
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	ldx.w	$s4, $s2, $fp
	slli.d	$t1, $s4, 2
	ldx.w	$t0, $s3, $t1
	ldx.w	$s2, $t5, $t1
	st.d	$s2, $sp, 608                   # 8-byte Folded Spill
	bge	$s8, $t0, .LBB17_66
# %bb.65:                               #   in Loop: Header=BB17_55 Depth=1
	slli.d	$t2, $s2, 2
	move	$t6, $a2
	move	$a2, $t4
	ldx.w	$t4, $t7, $t2
	slli.d	$t2, $s2, 3
	fldx.d	$fa0, $a1, $t2
	fst.d	$fa0, $sp, 664                  # 8-byte Folded Spill
	fldx.d	$fa0, $t3, $t2
	fst.d	$fa0, $sp, 680                  # 8-byte Folded Spill
	st.d	$t4, $sp, 464                   # 8-byte Folded Spill
	slli.d	$t2, $t4, 3
	move	$t4, $a2
	move	$a2, $t6
	fldx.d	$fa0, $a1, $t2
	fst.d	$fa0, $sp, 360                  # 8-byte Folded Spill
	fldx.d	$fa2, $t3, $t2
	b	.LBB17_67
	.p2align	4, , 16
.LBB17_66:                              #   in Loop: Header=BB17_55 Depth=1
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	fst.d	$ft4, $sp, 664                  # 8-byte Folded Spill
	fst.d	$ft4, $sp, 680                  # 8-byte Folded Spill
	fst.d	$ft4, $sp, 360                  # 8-byte Folded Spill
	fmov.d	$fa2, $ft4
.LBB17_67:                              #   in Loop: Header=BB17_55 Depth=1
	ld.d	$t3, $sp, 256                   # 8-byte Folded Reload
	fldx.d	$fs4, $a1, $s6
	ldx.w	$t2, $s1, $fp
	fmov.d	$fa5, $fs4
	fmov.d	$ft7, $ft4
	fmov.d	$fa7, $ft4
	bltz	$t2, .LBB17_69
# %bb.68:                               #   in Loop: Header=BB17_55 Depth=1
	slli.d	$t2, $t2, 3
	fldx.d	$fa5, $t3, $t2
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	fldx.d	$ft7, $s2, $t2
	ld.d	$s2, $sp, 688                   # 8-byte Folded Reload
	fldx.d	$fa7, $s2, $t2
.LBB17_69:                              #   in Loop: Header=BB17_55 Depth=1
	ld.d	$t2, $sp, 792                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $fp
	bltz	$t2, .LBB17_71
# %bb.70:                               #   in Loop: Header=BB17_55 Depth=1
	slli.d	$t2, $t2, 3
	fldx.d	$ft1, $t3, $t2
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	fldx.d	$ft12, $s2, $t2
	ld.d	$s2, $sp, 688                   # 8-byte Folded Reload
	fldx.d	$ft14, $s2, $t2
	b	.LBB17_72
	.p2align	4, , 16
.LBB17_71:                              #   in Loop: Header=BB17_55 Depth=1
	slt	$t2, $s8, $a0
	movgr2cf	$fcc0, $t2
	fsel	$ft1, $ft4, $fs4, $fcc0
	fmov.d	$ft12, $ft4
	fmov.d	$ft14, $ft4
.LBB17_72:                              #   in Loop: Header=BB17_55 Depth=1
	ld.d	$t2, $sp, 784                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $fp
	fmov.d	$fa6, $fs4
	fmov.d	$ft8, $ft4
	fmov.d	$ft0, $ft4
	bltz	$t2, .LBB17_74
# %bb.73:                               #   in Loop: Header=BB17_55 Depth=1
	slli.d	$t2, $t2, 3
	fldx.d	$fa6, $t3, $t2
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	fldx.d	$ft8, $s2, $t2
	ld.d	$s2, $sp, 688                   # 8-byte Folded Reload
	fldx.d	$ft0, $s2, $t2
.LBB17_74:                              #   in Loop: Header=BB17_55 Depth=1
	ld.d	$t2, $sp, 776                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $fp
	slt	$s2, $s8, $a3
	bltz	$t2, .LBB17_76
# %bb.75:                               #   in Loop: Header=BB17_55 Depth=1
	slli.d	$t2, $t2, 3
	fldx.d	$ft2, $t3, $t2
	ld.d	$t3, $sp, 696                   # 8-byte Folded Reload
	fldx.d	$ft13, $t3, $t2
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	fldx.d	$ft15, $t3, $t2
	b	.LBB17_77
	.p2align	4, , 16
.LBB17_76:                              #   in Loop: Header=BB17_55 Depth=1
	movgr2cf	$fcc0, $s2
	fsel	$ft2, $ft4, $fs4, $fcc0
	fmov.d	$ft13, $ft4
	fmov.d	$ft15, $ft4
.LBB17_77:                              #   in Loop: Header=BB17_55 Depth=1
	ld.d	$t2, $sp, 392                   # 8-byte Folded Reload
	ldx.w	$a4, $t2, $a4
	slli.d	$t2, $a4, 3
	fldx.d	$fs6, $a1, $t2
	slli.d	$a4, $a4, 2
	ldx.w	$t3, $s3, $a4
	fldx.d	$ft9, $ra, $t2
	fst.d	$fa1, $sp, 600                  # 8-byte Folded Spill
	st.d	$s1, $sp, 520                   # 8-byte Folded Spill
	fst.d	$fa4, $sp, 328                  # 8-byte Folded Spill
	bge	$a0, $t3, .LBB17_79
# %bb.78:                               #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a4, $t7, $a4
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a1, $a4
	fldx.d	$fa1, $ra, $a4
	fadd.d	$fa0, $fs6, $fa0
	fmul.d	$fs6, $fa0, $ft5
	fadd.d	$fa0, $ft9, $fa1
	fmul.d	$fa0, $fa0, $ft5
	fst.d	$fa0, $sp, 408                  # 8-byte Folded Spill
	b	.LBB17_80
	.p2align	4, , 16
.LBB17_79:                              #   in Loop: Header=BB17_55 Depth=1
	fst.d	$ft9, $sp, 408                  # 8-byte Folded Spill
.LBB17_80:                              #   in Loop: Header=BB17_55 Depth=1
	fst.d	$fa3, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fa2, $sp, 376                  # 8-byte Folded Spill
	fldx.d	$ft10, $ra, $s6
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	fldx.d	$ft9, $t3, $s6
	slli.d	$a4, $s5, 3
	fldx.d	$fs0, $a1, $a4
	fldx.d	$fa0, $ra, $a4
	fst.d	$fa0, $sp, 768                  # 8-byte Folded Spill
	move	$t6, $t5
	ldx.w	$s1, $t5, $a5
	slli.d	$a4, $s0, 3
	fldx.d	$fs5, $a1, $a4
	fldx.d	$fa0, $ra, $a4
	fst.d	$fa0, $sp, 720                  # 8-byte Folded Spill
	ldx.w	$a5, $t7, $t1
	slli.d	$a4, $s4, 3
	fldx.d	$fa0, $a1, $a4
	fst.d	$fa0, $sp, 728                  # 8-byte Folded Spill
	fldx.d	$fa0, $t3, $a4
	fst.d	$fa0, $sp, 760                  # 8-byte Folded Spill
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	ldx.w	$a7, $a4, $a7
	ld.d	$a4, $sp, 800                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a1, $a4
	fst.d	$fa0, $sp, 584                  # 8-byte Folded Spill
	fldx.d	$fa0, $t3, $a4
	fst.d	$fa0, $sp, 752                  # 8-byte Folded Spill
	slli.d	$a4, $s1, 3
	fldx.d	$fs3, $a1, $a4
	fldx.d	$fa0, $ra, $a4
	fst.d	$fa0, $sp, 712                  # 8-byte Folded Spill
	st.d	$a5, $sp, 448                   # 8-byte Folded Spill
	slli.d	$a4, $a5, 3
	fldx.d	$fa0, $a1, $a4
	fst.d	$fa0, $sp, 576                  # 8-byte Folded Spill
	fldx.d	$fa0, $t3, $a4
	fst.d	$fa0, $sp, 744                  # 8-byte Folded Spill
	st.d	$a7, $sp, 416                   # 8-byte Folded Spill
	slli.d	$a4, $a7, 3
	fldx.d	$fa0, $a1, $a4
	fst.d	$fa0, $sp, 568                  # 8-byte Folded Spill
	fldx.d	$fa0, $t3, $a4
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
	slli.d	$a4, $s8, 3
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	fldx.d	$ft11, $a5, $a4
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $a5, $a0
	slli.d	$a0, $a3, 3
	fldx.d	$fa0, $a5, $a0
	fst.d	$fa0, $sp, 560                  # 8-byte Folded Spill
	slli.d	$a0, $t0, 3
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	fldx.d	$fa0, $a3, $a0
	fst.d	$fa0, $sp, 456                  # 8-byte Folded Spill
	slli.d	$a0, $a6, 3
	fldx.d	$fa0, $a3, $a0
	fst.d	$fa0, $sp, 424                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	movgr2fr.d	$fa0, $a0
	fst.d	$fa0, $sp, 808                  # 8-byte Folded Spill
	fmul.d	$fa0, $fa5, $fa0
	fst.d	$fa0, $sp, 552                  # 8-byte Folded Spill
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_163
.LBB17_81:                              # %.split
                                        #   in Loop: Header=BB17_55 Depth=1
	alsl.d	$t5, $s5, $s3, 2
	fst.d	$fs1, $sp, 320                  # 8-byte Folded Spill
	fadd.d	$fa1, $fs5, $fs1
	fmul.d	$fa1, $fa1, $ft5
	movgr2cf	$fcc0, $s2
	fsel	$fa1, $fs5, $fa1, $fcc0
	fadd.d	$fa2, $ft11, $fs2
	fmul.d	$fa4, $fa2, $ft5
	fdiv.d	$fa2, $ft7, $fa5
	fabs.d	$fa2, $fa2
	fst.d	$fa2, $sp, 400                  # 8-byte Folded Spill
	fadd.d	$fa0, $fa2, $fa0
	fsub.d	$fa2, $fs4, $fs0
	fsub.d	$fa3, $fs0, $fs6
	fsub.d	$fs2, $fa1, $fs4
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fst.d	$fa4, $sp, 704                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fa4
	fsub.d	$fa1, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	movgr2fr.d	$fs6, $a0
	fcmp.clt.d	$fcc0, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc0
	frecip.d	$fa1, $fa1
	fmul.d	$fa4, $fa2, $fs2
	fmul.d	$fa4, $fa1, $fa4
	fmul.d	$fa3, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa3, $fa4, $ft6
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa3, $fa1, $fcc0
	movgr2fr.d	$fs7, $zero
	fcmp.clt.d	$fcc0, $fa1, $fs7
	ld.w	$a0, $t5, 0
	fsel	$fa1, $fa1, $fs7, $fcc0
	fsub.d	$fa1, $ft6, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fs1, $fa2, $fa0
	move	$a5, $s7
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	bge	$s8, $a0, .LBB17_84
# %bb.82:                               #   in Loop: Header=BB17_55 Depth=1
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a3, $s3, $a0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $s3, $a0
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	bge	$a3, $a4, .LBB17_85
# %bb.83:                               #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t7, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	fld.d	$fa1, $sp, 592                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft5
	b	.LBB17_86
	.p2align	4, , 16
.LBB17_84:                              #   in Loop: Header=BB17_55 Depth=1
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	b	.LBB17_88
	.p2align	4, , 16
.LBB17_85:                              #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa3, $sp, 592                  # 8-byte Folded Reload
.LBB17_86:                              #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa1, $ft1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_171
.LBB17_87:                              # %.split1333
                                        #   in Loop: Header=BB17_55 Depth=1
	fdiv.d	$fa1, $ft12, $ft1
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 640                  # 8-byte Folded Reload
	fsub.d	$fa1, $fs4, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fld.d	$fa3, $sp, 704                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa4, $fa1, $fs2
	fmul.d	$fa4, $fa3, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa3, $fa4, $ft6
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	movgr2fr.d	$fa3, $zero
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	fsub.d	$fa2, $ft6, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fs1, $fa0, $ft5
.LBB17_88:                              #   in Loop: Header=BB17_55 Depth=1
	alsl.d	$s7, $s0, $s3, 2
	ld.w	$a3, $s7, 0
	slli.d	$a0, $s1, 2
	ldx.w	$a4, $s3, $a0
	fst.d	$fs1, $sp, 472                  # 8-byte Folded Spill
	bge	$a3, $a4, .LBB17_90
# %bb.89:                               #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t7, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	fldx.d	$fa1, $ra, $a0
	fadd.d	$fa0, $fs3, $fa0
	fmul.d	$fs3, $fa0, $ft5
	fld.d	$fa0, $sp, 712                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $ft5
	fst.d	$fa0, $sp, 712                  # 8-byte Folded Spill
.LBB17_90:                              #   in Loop: Header=BB17_55 Depth=1
	ld.w	$s0, $t5, 0
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa6, $fa0
	fst.d	$fa0, $sp, 544                  # 8-byte Folded Spill
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	st.d	$s7, $sp, 592                   # 8-byte Folded Spill
	bceqz	$fcc0, .LBB17_164
.LBB17_91:                              # %.split1335
                                        #   in Loop: Header=BB17_55 Depth=1
	slt	$s0, $s8, $s0
	fld.d	$fa1, $sp, 640                  # 8-byte Folded Reload
	fadd.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fa1, $ft5
	movgr2cf	$fcc0, $s0
	fsel	$fa1, $fs0, $fa1, $fcc0
	fld.d	$fa2, $sp, 560                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft11, $fa2
	fmul.d	$fs1, $fa2, $ft5
	fdiv.d	$fa2, $ft8, $fa6
	fabs.d	$fs0, $fa2
	fadd.d	$fa0, $fs0, $fa0
	fsub.d	$fa2, $fs5, $fs4
	fsub.d	$fs2, $fs4, $fa1
	fsub.d	$fa1, $fs3, $fs5
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fmul.d	$fa4, $fa2, $fs2
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa1, $fa1, $ft6
	fcmp.clt.d	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs7
	ld.w	$a0, $s7, 0
	fsel	$fa1, $fa1, $fs7, $fcc0
	fsub.d	$fa1, $ft6, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fs5, $fa2, $fa0
	bge	$s8, $a0, .LBB17_97
# %bb.92:                               #   in Loop: Header=BB17_55 Depth=1
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a3, $s3, $a0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $s3, $a0
	bge	$a3, $a4, .LBB17_94
# %bb.93:                               #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t7, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	fld.d	$fa1, $sp, 328                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft5
	b	.LBB17_95
	.p2align	4, , 16
.LBB17_94:                              #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa3, $sp, 328                  # 8-byte Folded Reload
.LBB17_95:                              #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa1, $ft2, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_172
.LBB17_96:                              # %.split1337
                                        #   in Loop: Header=BB17_55 Depth=1
	fdiv.d	$fa1, $ft13, $ft2
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 320                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $fs4
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa1, $fs2
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa2, $fa2, $ft6
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	movgr2fr.d	$fa3, $zero
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	fsub.d	$fa2, $ft6, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs5, $fa0
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fs5, $fa0, $ft5
.LBB17_97:                              #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 552                  # 8-byte Folded Reload
	fst.d	$fs5, $sp, 560                  # 8-byte Folded Spill
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_165
.LBB17_98:                              # %.split1339
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 656                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 720                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa1, $ft5
	movgr2cf	$fcc0, $s2
	fsel	$fa1, $fa2, $fa1, $fcc0
	fld.d	$fa2, $sp, 400                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fld.d	$fa3, $sp, 768                  # 8-byte Folded Reload
	fsub.d	$fa2, $ft10, $fa3
	fld.d	$fa4, $sp, 408                  # 8-byte Folded Reload
	fsub.d	$fa3, $fa3, $fa4
	fsub.d	$fs2, $fa1, $ft10
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fld.d	$fa1, $sp, 704                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc0
	frecip.d	$fa1, $fa1
	fmul.d	$fa4, $fa2, $fs2
	fmul.d	$fa4, $fa1, $fa4
	fmul.d	$fa3, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa3, $fa4, $ft6
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa3, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs7
	ld.w	$a0, $t5, 0
	fsel	$fa1, $fa1, $fs7, $fcc0
	fsub.d	$fa1, $ft6, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fs3, $fa2, $fa0
	fld.d	$fs5, $sp, 600                  # 8-byte Folded Reload
	bge	$s8, $a0, .LBB17_101
# %bb.99:                               #   in Loop: Header=BB17_55 Depth=1
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a3, $s3, $a0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $s3, $a0
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	bge	$a3, $a4, .LBB17_102
# %bb.100:                              #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t7, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $ra, $a0
	fld.d	$fa1, $sp, 336                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft5
	b	.LBB17_103
	.p2align	4, , 16
.LBB17_101:                             #   in Loop: Header=BB17_55 Depth=1
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	b	.LBB17_105
	.p2align	4, , 16
.LBB17_102:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa3, $sp, 336                  # 8-byte Folded Reload
.LBB17_103:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa1, $ft1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_173
.LBB17_104:                             # %.split1341
                                        #   in Loop: Header=BB17_55 Depth=1
	fdiv.d	$fa1, $ft12, $ft1
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 648                  # 8-byte Folded Reload
	fsub.d	$fa1, $ft10, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fld.d	$fa3, $sp, 704                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa4, $fa1, $fs2
	fmul.d	$fa4, $fa3, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa3, $fa4, $ft6
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	movgr2fr.d	$fa3, $zero
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	fsub.d	$fa2, $ft6, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs3, $fa0
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fs3, $fa0, $ft5
.LBB17_105:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 544                  # 8-byte Folded Reload
	fst.d	$fs3, $sp, 640                  # 8-byte Folded Spill
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_166
.LBB17_106:                             # %.split1343
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 648                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 768                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa1, $ft5
	movgr2cf	$fcc0, $s0
	fsel	$fa1, $fa2, $fa1, $fcc0
	fadd.d	$fa0, $fs0, $fa0
	fld.d	$fa3, $sp, 720                  # 8-byte Folded Reload
	fsub.d	$fa2, $fa3, $ft10
	fsub.d	$fs0, $ft10, $fa1
	fld.d	$fa1, $sp, 712                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fmul.d	$fa4, $fa2, $fs0
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa1, $fa1, $ft6
	fcmp.clt.d	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs7
	ld.w	$a0, $s7, 0
	fsel	$fa1, $fa1, $fs7, $fcc0
	fsub.d	$fa1, $ft6, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fs2, $fa2, $fa0
	fld.d	$fs3, $sp, 584                  # 8-byte Folded Reload
	bge	$s8, $a0, .LBB17_112
# %bb.107:                              #   in Loop: Header=BB17_55 Depth=1
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a3, $s3, $a0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $s3, $a0
	bge	$a3, $a4, .LBB17_109
# %bb.108:                              #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t7, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $ra, $a0
	fld.d	$fa1, $sp, 344                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft5
	b	.LBB17_110
	.p2align	4, , 16
.LBB17_109:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa3, $sp, 344                  # 8-byte Folded Reload
.LBB17_110:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa1, $ft2, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_174
.LBB17_111:                             # %.split1345
                                        #   in Loop: Header=BB17_55 Depth=1
	fdiv.d	$fa1, $ft13, $ft2
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 656                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $ft10
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa1, $fs0
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa2, $fa2, $ft6
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	movgr2fr.d	$fa3, $zero
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	fsub.d	$fa2, $ft6, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs2, $fa0
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fs2, $fa0, $ft5
.LBB17_112:                             #   in Loop: Header=BB17_55 Depth=1
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$s7, $a0, $s3, 2
	ld.w	$a3, $s7, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $s3, $a0
	fld.d	$fs0, $sp, 568                  # 8-byte Folded Reload
	bge	$a3, $a4, .LBB17_114
# %bb.113:                              #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t6, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	fldx.d	$fa1, $t3, $a0
	fadd.d	$fa0, $fs0, $fa0
	fmul.d	$fs0, $fa0, $ft5
	fld.d	$fa0, $sp, 736                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $ft5
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
.LBB17_114:                             #   in Loop: Header=BB17_55 Depth=1
	alsl.d	$s4, $s4, $s3, 2
	ldx.w	$a4, $a5, $fp
	ld.w	$a0, $s4, 0
	fmov.d	$fa4, $fs4
	fmov.d	$fa0, $fs7
	fmov.d	$fa3, $fs7
	bltz	$a4, .LBB17_116
# %bb.115:                              #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a4, $a4, 3
	fldx.d	$fa4, $a6, $a4
	fldx.d	$fa0, $a7, $a4
	fldx.d	$fa3, $t0, $a4
.LBB17_116:                             #   in Loop: Header=BB17_55 Depth=1
	fst.d	$fa0, $sp, 440                  # 8-byte Folded Spill
	ldx.w	$a4, $t1, $fp
	bltz	$a4, .LBB17_118
# %bb.117:                              #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a3, $a4, 3
	fldx.d	$fa0, $a6, $a3
	fst.d	$fa0, $sp, 712                  # 8-byte Folded Spill
	fldx.d	$fa0, $a7, $a3
	fst.d	$fa0, $sp, 416                  # 8-byte Folded Spill
	fldx.d	$fa0, $t0, $a3
	fst.d	$fa0, $sp, 656                  # 8-byte Folded Spill
	b	.LBB17_119
	.p2align	4, , 16
.LBB17_118:                             #   in Loop: Header=BB17_55 Depth=1
	slt	$a3, $s8, $a3
	movgr2cf	$fcc0, $a3
	fsel	$fa0, $fs7, $fs4, $fcc0
	fst.d	$fa0, $sp, 712                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 656                  # 8-byte Folded Spill
.LBB17_119:                             #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a3, $t2, $fp
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $fs7
	fst.d	$fs7, $sp, 800                  # 8-byte Folded Spill
	bltz	$a3, .LBB17_121
# %bb.120:                              #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a3, $a3, 3
	fldx.d	$fa1, $a6, $a3
	fldx.d	$fa2, $a7, $a3
	fldx.d	$fa0, $t0, $a3
	fst.d	$fa0, $sp, 800                  # 8-byte Folded Spill
.LBB17_121:                             #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a3, $s5, $fp
	slt	$s0, $s8, $a0
	bltz	$a3, .LBB17_123
# %bb.122:                              #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a0, $a3, 3
	fldx.d	$fa0, $a6, $a0
	fldx.d	$fs7, $a7, $a0
	fldx.d	$fs1, $t0, $a0
	fst.d	$fs1, $sp, 648                  # 8-byte Folded Spill
	b	.LBB17_124
	.p2align	4, , 16
.LBB17_123:                             #   in Loop: Header=BB17_55 Depth=1
	movgr2cf	$fcc0, $s0
	fsel	$fa0, $fs7, $fs4, $fcc0
	fst.d	$fs7, $sp, 648                  # 8-byte Folded Spill
.LBB17_124:                             #   in Loop: Header=BB17_55 Depth=1
	fst.d	$fa2, $sp, 432                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 704                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 768                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa4, $fa0
	fst.d	$fa0, $sp, 528                  # 8-byte Folded Spill
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fst.d	$fs2, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fa3, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fa4, $sp, 536                  # 8-byte Folded Spill
	bceqz	$fcc0, .LBB17_167
.LBB17_125:                             # %.split1347
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 664                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 728                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa1, $ft5
	movgr2cf	$fcc0, $s0
	fsel	$fa1, $fa2, $fa1, $fcc0
	fld.d	$fa2, $sp, 424                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft11, $fa2
	fmul.d	$fs2, $fa2, $ft5
	fdiv.d	$fa2, $fa3, $fa4
	fabs.d	$fa2, $fa2
	fst.d	$fa2, $sp, 424                  # 8-byte Folded Spill
	fadd.d	$fa0, $fa2, $fa0
	fsub.d	$fa2, $fs4, $fs3
	fsub.d	$fa3, $fs3, $fs0
	fsub.d	$fs1, $fa1, $fs4
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fst.d	$fs2, $sp, 720                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fs2
	fsub.d	$fa1, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc0
	frecip.d	$fa1, $fa1
	fmul.d	$fa4, $fa2, $fs1
	fmul.d	$fa4, $fa1, $fa4
	fmul.d	$fa3, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa3, $fa4, $ft6
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa3, $fa1, $fcc0
	movgr2fr.d	$fs0, $zero
	fcmp.clt.d	$fcc0, $fa1, $fs0
	ld.w	$a0, $s7, 0
	fsel	$fa1, $fa1, $fs0, $fcc0
	fsub.d	$fa1, $ft6, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fs2, $fa2, $fa0
	bge	$s8, $a0, .LBB17_131
# %bb.126:                              #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a0, $t4, 2
	ldx.w	$a3, $s3, $a0
	slli.d	$a0, $a2, 2
	ldx.w	$a4, $s3, $a0
	bge	$a3, $a4, .LBB17_128
# %bb.127:                              #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t6, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	fld.d	$fa1, $sp, 352                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa2, $fa0, $ft5
	b	.LBB17_129
	.p2align	4, , 16
.LBB17_128:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa2, $sp, 352                  # 8-byte Folded Reload
.LBB17_129:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa3, $sp, 712                  # 8-byte Folded Reload
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa3, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_175
.LBB17_130:                             # %.split1349
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 656                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa3
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $fs4, $fs5
	fsub.d	$fa2, $fs5, $fa2
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fld.d	$fa3, $sp, 720                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa4, $fa1, $fs1
	fmul.d	$fa4, $fa3, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa3, $fa4, $ft6
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs0
	fsel	$fa2, $fa2, $fs0, $fcc0
	fsub.d	$fa2, $ft6, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs2, $fa0
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fs2, $fa0, $ft5
.LBB17_131:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa4, $sp, 576                  # 8-byte Folded Reload
	ld.w	$a3, $s4, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $s3, $a0
	fld.d	$fa3, $sp, 768                  # 8-byte Folded Reload
	fst.d	$fs2, $sp, 568                  # 8-byte Folded Spill
	bge	$a3, $a4, .LBB17_133
# %bb.132:                              #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t6, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	fldx.d	$fa1, $t3, $a0
	fadd.d	$fa0, $fa4, $fa0
	fmul.d	$fa4, $fa0, $ft5
	fld.d	$fa0, $sp, 744                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $ft5
	fst.d	$fa0, $sp, 744                  # 8-byte Folded Spill
.LBB17_133:                             #   in Loop: Header=BB17_55 Depth=1
	ld.w	$s1, $s7, 0
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fs2, $fa3, $fa0
	fsqrt.d	$fa0, $fs2
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_168
.LBB17_134:                             # %.split1351
                                        #   in Loop: Header=BB17_55 Depth=1
	slt	$s1, $s8, $s1
	fadd.d	$fa1, $fs3, $fs5
	fmul.d	$fa1, $fa1, $ft5
	movgr2cf	$fcc0, $s1
	fsel	$fa1, $fs3, $fa1, $fcc0
	fld.d	$fa2, $sp, 456                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft11, $fa2
	fmul.d	$fs5, $fa2, $ft5
	fld.d	$fa2, $sp, 800                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa2, $fa3
	fabs.d	$fs1, $fa2
	fadd.d	$fa0, $fs1, $fa0
	fld.d	$fa3, $sp, 728                  # 8-byte Folded Reload
	fsub.d	$fa2, $fa3, $fs4
	fsub.d	$fs3, $fs4, $fa1
	fsub.d	$fa1, $fa4, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fdiv.d	$fa0, $fa0, $fs5
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fmul.d	$fa4, $fa2, $fs3
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa1, $fa1, $ft6
	fcmp.clt.d	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs0
	ld.w	$a0, $s4, 0
	fsel	$fa1, $fa1, $fs0, $fcc0
	fsub.d	$fa1, $ft6, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 728                  # 8-byte Folded Spill
	bge	$s8, $a0, .LBB17_140
# %bb.135:                              #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a0, $s2, 2
	ldx.w	$a3, $s3, $a0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $s3, $a0
	bge	$a3, $a4, .LBB17_137
# %bb.136:                              #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t6, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	fld.d	$fa1, $sp, 360                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft5
	b	.LBB17_138
	.p2align	4, , 16
.LBB17_137:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa3, $sp, 360                  # 8-byte Folded Reload
.LBB17_138:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa2, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_176
.LBB17_139:                             # %.split1353
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 648                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 664                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $fs4
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fdiv.d	$fa0, $fa0, $fs5
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa1, $fs3
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa2, $fa2, $ft6
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs0
	fsel	$fa2, $fa2, $fs0, $fcc0
	fsub.d	$fa2, $ft6, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $sp, 728                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $fa0, $ft5
	fst.d	$fa0, $sp, 728                  # 8-byte Folded Spill
.LBB17_140:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 528                  # 8-byte Folded Reload
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_169
.LBB17_141:                             # %.split1355
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 680                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 760                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa1, $ft5
	movgr2cf	$fcc0, $s0
	fsel	$fa1, $fa2, $fa1, $fcc0
	fld.d	$fa2, $sp, 424                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fld.d	$fa3, $sp, 752                  # 8-byte Folded Reload
	fsub.d	$fa2, $ft9, $fa3
	fld.d	$fa4, $sp, 736                  # 8-byte Folded Reload
	fsub.d	$fa3, $fa3, $fa4
	fsub.d	$fs3, $fa1, $ft9
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fld.d	$fa1, $sp, 720                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc0
	frecip.d	$fa1, $fa1
	fmul.d	$fa4, $fa2, $fs3
	fmul.d	$fa4, $fa1, $fa4
	fmul.d	$fa3, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa3, $fa4, $ft6
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa3, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs0
	ld.w	$a0, $s7, 0
	fsel	$fa1, $fa1, $fs0, $fcc0
	fsub.d	$fa1, $ft6, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
	bge	$s8, $a0, .LBB17_147
# %bb.142:                              #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a0, $t4, 2
	ldx.w	$a3, $s3, $a0
	slli.d	$a0, $a2, 2
	ldx.w	$a4, $s3, $a0
	bge	$a3, $a4, .LBB17_144
# %bb.143:                              #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t6, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $t3, $a0
	fld.d	$fa1, $sp, 368                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft5
	b	.LBB17_145
	.p2align	4, , 16
.LBB17_144:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa3, $sp, 368                  # 8-byte Folded Reload
.LBB17_145:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa2, $sp, 712                  # 8-byte Folded Reload
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_177
.LBB17_146:                             # %.split1357
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 656                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 672                  # 8-byte Folded Reload
	fsub.d	$fa1, $ft9, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fld.d	$fa3, $sp, 720                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa3
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa4, $fa1, $fs3
	fmul.d	$fa4, $fa3, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa3, $fa4, $ft6
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs0
	fsel	$fa2, $fa2, $fs0, $fcc0
	fsub.d	$fa2, $ft6, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $sp, 736                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $fa0, $ft5
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
.LBB17_147:                             #   in Loop: Header=BB17_55 Depth=1
	fsqrt.d	$fa0, $fs2
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fld.d	$fs3, $sp, 640                  # 8-byte Folded Reload
	bceqz	$fcc0, .LBB17_170
.LBB17_148:                             # %.split1359
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 752                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa1, $ft5
	movgr2cf	$fcc0, $s1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fadd.d	$fa0, $fs1, $fa0
	fld.d	$fa3, $sp, 760                  # 8-byte Folded Reload
	fsub.d	$fa2, $fa3, $ft9
	fsub.d	$fs1, $ft9, $fa1
	fld.d	$fa1, $sp, 744                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fdiv.d	$fa0, $fa0, $fs5
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa2, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa3, $fa1
	fmul.d	$fa4, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa1, $fa1, $ft6
	fcmp.clt.d	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs0
	ld.w	$a0, $s4, 0
	fsel	$fa1, $fa1, $fs0, $fcc0
	fsub.d	$fa1, $ft6, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fs2, $fa2, $fa0
	bge	$s8, $a0, .LBB17_151
# %bb.149:                              #   in Loop: Header=BB17_55 Depth=1
	slli.d	$a0, $s2, 2
	ldx.w	$a3, $s3, $a0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $s3, $a0
	ld.d	$s1, $sp, 520                   # 8-byte Folded Reload
	bge	$a3, $a4, .LBB17_152
# %bb.150:                              #   in Loop: Header=BB17_55 Depth=1
	ldx.w	$a0, $t6, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $t3, $a0
	fld.d	$fa1, $sp, 376                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa3, $fa0, $ft5
	b	.LBB17_153
	.p2align	4, , 16
.LBB17_151:                             #   in Loop: Header=BB17_55 Depth=1
	ld.d	$s1, $sp, 520                   # 8-byte Folded Reload
	b	.LBB17_155
	.p2align	4, , 16
.LBB17_152:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa3, $sp, 376                  # 8-byte Folded Reload
.LBB17_153:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa2, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_178
.LBB17_154:                             # %.split1361
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa1, $sp, 648                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	fabs.d	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 680                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $ft9
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fa0, $ft3, $fa0
	fdiv.d	$fa0, $fa0, $fs5
	fsub.d	$fa3, $ft6, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	frecip.d	$fa3, $fa3
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa1, $fs1
	fmul.d	$fa3, $fa3, $fa4
	fmul.d	$fa0, $fa0, $ft5
	fmin.d	$fa2, $fa2, $ft6
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fs0
	fsel	$fa2, $fa2, $fs0, $fcc0
	fsub.d	$fa2, $ft6, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs2, $fa0
	fmul.d	$fa0, $fa0, $ft5
	fmul.d	$fs2, $fa0, $ft5
.LBB17_155:                             #   in Loop: Header=BB17_55 Depth=1
	fmul.d	$fa0, $ft7, $ft7
	fdiv.d	$fa0, $fa0, $fa5
	fmul.d	$fa1, $fa5, $fa5
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	lu52i.d	$a0, $a0, 1025
	movgr2fr.d	$fa2, $a0
	ld.w	$a0, $t5, 0
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa0
	fmul.d	$fa0, $ft7, $fa7
	fdiv.d	$fa0, $fa0, $fa5
	fld.d	$fs0, $sp, 560                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 544                  # 8-byte Folded Reload
	bge	$s8, $a0, .LBB17_157
# %bb.156:                              #   in Loop: Header=BB17_55 Depth=1
	fadd.d	$fa3, $ft7, $ft12
	fmul.d	$ft7, $fa3, $ft5
	fmul.d	$fa3, $ft12, $ft12
	fdiv.d	$fa3, $fa3, $ft1
	fmul.d	$fa4, $ft1, $ft1
	fmul.d	$fa4, $fa4, $fa2
	fadd.d	$fa3, $fa4, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fmul.d	$fa1, $fa1, $ft5
	fmul.d	$fa3, $ft12, $ft14
	fdiv.d	$fa3, $fa3, $ft1
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa0, $fa0, $ft5
.LBB17_157:                             #   in Loop: Header=BB17_55 Depth=1
	move	$t5, $t6
	fld.d	$ft12, $sp, 800                 # 8-byte Folded Reload
	fmul.d	$fa3, $ft8, $ft8
	fdiv.d	$fa3, $fa3, $fa6
	fmul.d	$fa4, $fa6, $fa6
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	fmul.d	$fa4, $fa4, $fa2
	fadd.d	$fa4, $fa4, $fa3
	fmul.d	$fa3, $ft8, $ft0
	fdiv.d	$fa3, $fa3, $fa6
	bge	$s8, $a0, .LBB17_159
# %bb.158:                              #   in Loop: Header=BB17_55 Depth=1
	fadd.d	$fa5, $ft8, $ft13
	fmul.d	$ft8, $fa5, $ft5
	fmul.d	$fa5, $ft13, $ft13
	fdiv.d	$fa5, $fa5, $ft2
	fmul.d	$fa6, $ft2, $ft2
	fmul.d	$fa6, $fa6, $fa2
	fadd.d	$fa5, $fa6, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $ft5
	fmul.d	$fa5, $ft13, $ft15
	fdiv.d	$fa5, $fa5, $ft2
	fadd.d	$fa3, $fa3, $fa5
	fmul.d	$fa3, $fa3, $ft5
.LBB17_159:                             #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa5, $sp, 440                  # 8-byte Folded Reload
	fmul.d	$fa5, $fa5, $fs1
	fld.d	$fa7, $sp, 536                  # 8-byte Folded Reload
	fdiv.d	$fa5, $fa5, $fa7
	fmul.d	$fa6, $fs1, $fs1
	ld.w	$a0, $s7, 0
	fdiv.d	$fa6, $fa6, $fa7
	fmul.d	$fa7, $fa7, $fa7
	fmul.d	$fa7, $fa7, $fa2
	fadd.d	$fa6, $fa7, $fa6
	bge	$s8, $a0, .LBB17_161
# %bb.160:                              #   in Loop: Header=BB17_55 Depth=1
	fld.d	$ft1, $sp, 656                  # 8-byte Folded Reload
	fadd.d	$fa7, $fs1, $ft1
	fmul.d	$fs1, $fa7, $ft5
	fld.d	$fa7, $sp, 416                  # 8-byte Folded Reload
	fmul.d	$fa7, $fa7, $ft1
	fld.d	$ft0, $sp, 712                  # 8-byte Folded Reload
	fdiv.d	$fa7, $fa7, $ft0
	fadd.d	$fa5, $fa5, $fa7
	fmul.d	$fa5, $fa5, $ft5
	fmul.d	$fa7, $ft1, $ft1
	fdiv.d	$fa7, $fa7, $ft0
	fmul.d	$ft0, $ft0, $ft0
	fmul.d	$ft0, $ft0, $fa2
	fadd.d	$fa7, $ft0, $fa7
	fadd.d	$fa6, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft5
.LBB17_161:                             #   in Loop: Header=BB17_55 Depth=1
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 480                   # 8-byte Folded Reload
	fld.d	$fa7, $sp, 432                  # 8-byte Folded Reload
	fmul.d	$fa7, $fa7, $ft12
	fld.d	$ft1, $sp, 768                  # 8-byte Folded Reload
	fdiv.d	$fa7, $fa7, $ft1
	fmul.d	$ft0, $ft12, $ft12
	ld.w	$a0, $s4, 0
	fdiv.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft1, $ft1
	fmul.d	$ft1, $ft1, $fa2
	fadd.d	$ft0, $ft1, $ft0
	bge	$s8, $a0, .LBB17_54
# %bb.162:                              #   in Loop: Header=BB17_55 Depth=1
	fld.d	$ft13, $sp, 648                 # 8-byte Folded Reload
	fadd.d	$ft1, $ft12, $ft13
	fmul.d	$ft12, $ft1, $ft5
	fmul.d	$ft1, $fs7, $ft13
	fld.d	$ft2, $sp, 704                  # 8-byte Folded Reload
	fdiv.d	$ft1, $ft1, $ft2
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$fa7, $fa7, $ft5
	fmul.d	$ft1, $ft13, $ft13
	fdiv.d	$ft1, $ft1, $ft2
	fmul.d	$ft2, $ft2, $ft2
	fmul.d	$fa2, $ft2, $fa2
	fadd.d	$fa2, $fa2, $ft1
	fadd.d	$fa2, $ft0, $fa2
	fmul.d	$ft0, $fa2, $ft5
	b	.LBB17_54
.LBB17_163:                             # %call.sqrt
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa0, $sp, 552                  # 8-byte Folded Reload
	st.d	$a1, $sp, 544                   # 8-byte Folded Spill
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	fmov.d	$fs7, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fst.d	$ft8, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	st.d	$t4, $sp, 400                   # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 400                   # 8-byte Folded Reload
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fld.d	$ft8, $sp, 16                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs7
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	b	.LBB17_81
.LBB17_164:                             # %call.sqrt1336
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa0, $sp, 544                  # 8-byte Folded Reload
	move	$s1, $a1
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	move	$s7, $a5
	fmov.d	$fs2, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fst.d	$ft8, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s5, $t4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$t4, $s5
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fld.d	$ft8, $sp, 16                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs2
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	move	$a1, $s1
	b	.LBB17_91
.LBB17_165:                             # %call.sqrt1340
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s1, $a1
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	move	$s7, $a5
	fmov.d	$fs2, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft8
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fmov.d	$fs3, $ft10
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s5, $t4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$t4, $s5
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fmov.d	$ft10, $fs3
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$ft8, $fs5
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs2
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	move	$a1, $s1
	b	.LBB17_98
.LBB17_166:                             # %call.sqrt1344
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s1, $a1
	move	$s5, $t8
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	move	$s7, $a5
	fmov.d	$fs2, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft8
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fmov.d	$fs3, $ft10
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	st.d	$t4, $sp, 400                   # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s2, $t5
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$t5, $s2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 400                   # 8-byte Folded Reload
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fmov.d	$ft10, $fs3
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$ft8, $fs5
	fld.d	$fs5, $sp, 600                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs2
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	move	$t8, $s5
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	move	$a1, $s1
	b	.LBB17_106
.LBB17_167:                             # %call.sqrt1348
                                        #   in Loop: Header=BB17_55 Depth=1
	fld.d	$fa0, $sp, 528                  # 8-byte Folded Reload
	move	$s1, $a1
	move	$s5, $t8
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 568                  # 8-byte Folded Spill
	fmov.d	$fs0, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fmov.d	$fs2, $ft8
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft10
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fmov.d	$fs1, $fa5
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fmov.d	$fs3, $fa7
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s2, $t4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 536                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$t4, $s2
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fmov.d	$fa7, $fs3
	fld.d	$fs3, $sp, 584                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fmov.d	$fa5, $fs1
	fld.d	$fa3, $sp, 544                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fmov.d	$ft10, $fs5
	fld.d	$fs5, $sp, 600                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$ft8, $fs2
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs0
	fld.d	$fs0, $sp, 568                  # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	move	$t8, $s5
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	move	$a1, $s1
	b	.LBB17_125
.LBB17_168:                             # %call.sqrt1352
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fs2
	move	$s2, $a1
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	fmov.d	$fs1, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft8
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fmov.d	$fs3, $ft10
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s5, $t4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fa4, $sp, 576                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 576                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$t4, $s5
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fmov.d	$ft10, $fs3
	fld.d	$fs3, $sp, 584                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$ft8, $fs5
	fld.d	$fs5, $sp, 600                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs1
	fld.d	$fa3, $sp, 768                  # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	b	.LBB17_134
.LBB17_169:                             # %call.sqrt1356
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s2, $a1
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	fmov.d	$fs3, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fst.d	$ft8, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s5, $t4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$t4, $s5
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fld.d	$ft8, $sp, 16                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs3
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	b	.LBB17_141
.LBB17_170:                             # %call.sqrt1360
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fs2
	move	$s0, $a1
	move	$s5, $t8
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	fmov.d	$fs2, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fmov.d	$fs3, $ft8
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s2, $t5
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$t5, $s2
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$ft8, $fs3
	fld.d	$fs3, $sp, 640                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs2
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	move	$t8, $s5
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	move	$a1, $s0
	b	.LBB17_148
.LBB17_171:                             # %call.sqrt1334
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$a1, $sp, 544                   # 8-byte Folded Spill
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	move	$s7, $a5
	fst.d	$ft4, $sp, 8                    # 8-byte Folded Spill
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fst.d	$ft8, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s5, $t4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fa3, $sp, 592                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa3, $sp, 592                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$t4, $s5
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fld.d	$ft8, $sp, 16                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fld.d	$ft4, $sp, 8                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	b	.LBB17_87
.LBB17_172:                             # %call.sqrt1338
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s1, $a1
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	move	$s7, $a5
	fst.d	$fa3, $sp, 328                  # 8-byte Folded Spill
	fmov.d	$fs3, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 560                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft8
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s5, $t4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$t4, $s5
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$ft8, $fs5
	fld.d	$fs5, $sp, 560                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs3
	fld.d	$fa3, $sp, 328                  # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	move	$a1, $s1
	b	.LBB17_96
.LBB17_173:                             # %call.sqrt1342
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s1, $a1
	move	$s5, $t8
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	move	$s7, $a5
	fst.d	$fs3, $sp, 640                  # 8-byte Folded Spill
	fmov.d	$fs3, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft8
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	st.d	$t4, $sp, 400                   # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s2, $t5
	fst.d	$fa3, $sp, 336                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa3, $sp, 336                  # 8-byte Folded Reload
	move	$t5, $s2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 400                   # 8-byte Folded Reload
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$ft8, $fs5
	fld.d	$fs5, $sp, 600                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs3
	fld.d	$fs3, $sp, 640                  # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	move	$t8, $s5
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	move	$a1, $s1
	b	.LBB17_104
.LBB17_174:                             # %call.sqrt1346
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s0, $a1
	move	$s2, $t8
	move	$s5, $ra
	move	$s7, $a5
	fst.d	$fs2, $sp, 552                  # 8-byte Folded Spill
	fmov.d	$fs2, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft8
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fmov.d	$fs3, $ft10
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	st.d	$t4, $sp, 400                   # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s1, $t5
	fst.d	$fa3, $sp, 344                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa3, $sp, 344                  # 8-byte Folded Reload
	move	$t5, $s1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 400                   # 8-byte Folded Reload
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fmov.d	$ft10, $fs3
	fld.d	$fs3, $sp, 584                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$ft8, $fs5
	fld.d	$fs5, $sp, 600                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs2
	fld.d	$fs2, $sp, 552                  # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	move	$ra, $s5
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	move	$t8, $s2
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	move	$a1, $s0
	b	.LBB17_111
.LBB17_175:                             # %call.sqrt1350
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s1, $a1
	move	$s5, $t8
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 568                  # 8-byte Folded Spill
	fmov.d	$fs2, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft8
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fmov.d	$fs3, $ft10
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s2, $t4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fa2, $sp, 352                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa3, $sp, 712                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 352                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$t4, $s2
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fmov.d	$ft10, $fs3
	fld.d	$fs3, $sp, 584                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$ft8, $fs5
	fld.d	$fs5, $sp, 600                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs2
	fld.d	$fs2, $sp, 568                  # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	move	$t8, $s5
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	move	$a1, $s1
	b	.LBB17_130
.LBB17_176:                             # %call.sqrt1354
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s2, $a1
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 8                    # 8-byte Folded Spill
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fst.d	$ft8, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	move	$s5, $t4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fa3, $sp, 360                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 360                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$t4, $s5
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fld.d	$ft8, $sp, 16                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fld.d	$ft4, $sp, 8                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	b	.LBB17_139
.LBB17_177:                             # %call.sqrt1358
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s0, $a1
	move	$s5, $t8
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 8                    # 8-byte Folded Spill
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fst.d	$ft8, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	fst.d	$fa3, $sp, 368                  # 8-byte Folded Spill
	move	$s2, $t5
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 712                  # 8-byte Folded Reload
	move	$t5, $s2
	fld.d	$fa3, $sp, 368                  # 8-byte Folded Reload
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fld.d	$ft8, $sp, 16                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fld.d	$ft4, $sp, 8                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	move	$t8, $s5
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	move	$a1, $s0
	b	.LBB17_146
.LBB17_178:                             # %call.sqrt1362
                                        #   in Loop: Header=BB17_55 Depth=1
	fmov.d	$fa0, $fa1
	move	$s0, $a1
	move	$s2, $t8
	move	$s5, $ra
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	fmov.d	$fs3, $ft4
	fst.d	$ft7, $sp, 160                  # 8-byte Folded Spill
	fst.d	$ft8, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft9, $sp, 152                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 144                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft12, $sp, 104                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 96                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 88                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 80                  # 8-byte Folded Spill
	fst.d	$fa3, $sp, 376                  # 8-byte Folded Spill
	move	$s1, $t5
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 704                  # 8-byte Folded Reload
	move	$t5, $s1
	fld.d	$fa3, $sp, 376                  # 8-byte Folded Reload
	fld.d	$ft15, $sp, 80                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 88                  # 8-byte Folded Reload
	fld.d	$ft13, $sp, 96                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 104                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft11, $sp, 144                 # 8-byte Folded Reload
	fld.d	$ft10, $sp, 40                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 152                  # 8-byte Folded Reload
	fld.d	$ft8, $sp, 16                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 160                  # 8-byte Folded Reload
	vldi	$vr14, -912
	vldi	$vr13, -928
	fmov.d	$ft4, $fs3
	fld.d	$fs3, $sp, 640                  # 8-byte Folded Reload
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	move	$ra, $s5
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 624                   # 8-byte Folded Reload
	move	$t8, $s2
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 520                   # 8-byte Folded Reload
	move	$a1, $s0
	b	.LBB17_154
.LBB17_179:                             # %._crit_edge1186.._crit_edge1190_crit_edge
	ld.d	$a0, $fp, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE5H_new)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	b	.LBB17_181
.LBB17_180:
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
.LBB17_181:                             # %._crit_edge1190
	move	$a0, $s0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 208
	ld.d	$a2, $s2, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE5U_new)
	st.d	$a0, $s0, 200
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 216
	ld.d	$a2, $s4, %pc_lo12(_ZZN5State32calc_finite_difference_via_facesEdE5V_new)
	st.d	$a0, $s0, 208
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 824
	ld.d	$a1, $sp, 832
	st.d	$a0, $s0, 216
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, 240
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 240
	fld.d	$fs7, $sp, 840                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 848                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 856                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 864                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 872                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 880                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 888                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 896                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 968                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 984                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 992
	ret
.LBB17_182:
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB17_3
# %bb.183:
	st.d	$zero, $s2, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIdSaIdEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIdSaIdEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB17_3
.LBB17_184:
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB17_4
# %bb.185:
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIdSaIdEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIdSaIdEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB17_4
.LBB17_186:
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB17_5
# %bb.187:
	st.d	$zero, $s4, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $s4, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIdSaIdEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIdSaIdEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB17_5
.LBB17_188:
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB17_28
# %bb.189:
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIdSaIdEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIdSaIdEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB17_28
.LBB17_190:
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB17_29
# %bb.191:
	st.d	$zero, $s6, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $s6, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIdSaIdEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIdSaIdEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB17_29
.LBB17_192:
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB17_30
# %bb.193:
	st.d	$zero, $s8, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $s8, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIdSaIdEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIdSaIdEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB17_30
.Lfunc_end17:
	.size	_ZN5State32calc_finite_difference_via_facesEd, .Lfunc_end17-_ZN5State32calc_finite_difference_via_facesEd
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State14symmetry_checkEPKcSt6vectorIiSaIiEEd9SIGN_RULERi # -- Begin function _ZN5State14symmetry_checkEPKcSt6vectorIiSaIiEEd9SIGN_RULERi
	.p2align	5
	.type	_ZN5State14symmetry_checkEPKcSt6vectorIiSaIiEEd9SIGN_RULERi,@function
_ZN5State14symmetry_checkEPKcSt6vectorIiSaIiEEd9SIGN_RULERi: # @_ZN5State14symmetry_checkEPKcSt6vectorIiSaIiEEd9SIGN_RULERi
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
	move	$fp, $a0
	ld.d	$s7, $a0, 192
	ld.d	$a0, $s7, 1160
	beqz	$a0, .LBB18_9
# %bb.1:                                # %.lr.ph
	move	$s0, $a4
	fmov.d	$fs0, $fa0
	move	$s1, $a2
	move	$s2, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	sltui	$a0, $a3, 2
	bstrins.d	$a3, $zero, 1, 1
	movgr2cf	$fcc0, $a0
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s4, $a0, %pc_lo12(.L.str.7)
	sltui	$a0, $a3, 1
	movgr2cf	$fcc0, $a0
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s5, $a0, %pc_lo12(.L.str.8)
	move	$a0, $zero
	move	$s6, $zero
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_2:                               #   in Loop: Header=BB18_3 Depth=1
	ld.d	$a1, $s7, 1160
	addi.w	$s6, $s6, 1
	bstrpick.d	$a0, $s6, 31, 0
	bgeu	$a0, $a1, .LBB18_9
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ld.d	$a2, $fp, 200
	slli.d	$s3, $a0, 2
	ldx.w	$a3, $a1, $s3
	slli.d	$s8, $a0, 3
	fldx.d	$fa0, $a2, $s8
	slli.d	$a0, $a3, 3
	fldx.d	$fa1, $a2, $a0
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB18_5
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fa1
	movfr2gr.d	$a6, $fa2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
	ldx.w	$a3, $a1, $s3
.LBB18_5:                               #   in Loop: Header=BB18_3 Depth=1
	ld.d	$a0, $fp, 208
	slli.d	$a1, $a3, 3
	fldx.d	$fa0, $a0, $a1
	fldx.d	$fa1, $a0, $s8
	fneg.d	$fa2, $fa0
	ld.d	$a0, $sp, 40
	movgr2cf	$fcc0, $a0
	fsel	$fa2, $fa0, $fa2, $fcc0
	fsub.d	$fa2, $fa1, $fa2
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_3 Depth=1
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
	ldx.w	$a3, $a1, $s3
.LBB18_7:                               #   in Loop: Header=BB18_3 Depth=1
	ld.d	$a0, $fp, 216
	slli.d	$a1, $a3, 3
	fldx.d	$fa0, $a0, $a1
	fldx.d	$fa1, $a0, $s8
	fneg.d	$fa2, $fa0
	ld.d	$a0, $sp, 32
	movgr2cf	$fcc0, $a0
	fsel	$fa2, $fa0, $fa2, $fcc0
	fsub.d	$fa2, $fa1, $fa2
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB18_2
# %bb.8:                                #   in Loop: Header=BB18_3 Depth=1
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
	b	.LBB18_2
.LBB18_9:                               # %._crit_edge
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
.Lfunc_end18:
	.size	_ZN5State14symmetry_checkEPKcSt6vectorIiSaIiEEd9SIGN_RULERi, .Lfunc_end18-_ZN5State14symmetry_checkEPKcSt6vectorIiSaIiEEd9SIGN_RULERi
                                        # -- End function
	.globl	_ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_ # -- Begin function _ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_
	.p2align	5
	.type	_ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_,@function
_ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_: # @_ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
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
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$s7, $a0, 1368
	ld.d	$s3, $a0, 1376
	ld.d	$s6, $a0, 1384
	ld.d	$s4, $a0, 1392
	ld.d	$s5, $a0, 1352
	st.w	$zero, $s1, 0
	st.w	$zero, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN5State25apply_boundary_conditionsEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	addi.d	$a1, $sp, 12
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(_ZN4Mesh10get_boundsERiS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.w	$a1, $sp, 8
	bge	$a0, $a1, .LBB19_18
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 192
	ld.d	$a3, $a1, 1360
	ld.d	$a2, $fp, 200
	ld.d	$t2, $s2, 0
	alsl.d	$a3, $a0, $a3, 2
	alsl.d	$a4, $a0, $a2, 3
	alsl.d	$a5, $a0, $s7, 2
	alsl.d	$a6, $a0, $s5, 2
	alsl.d	$a7, $a0, $s3, 2
	alsl.d	$t0, $a0, $s6, 2
	alsl.d	$t1, $a0, $s4, 2
	alsl.d	$t2, $a0, $t2, 2
	ori	$t3, $zero, 1
	vldi	$vr0, -928
	ori	$t4, $zero, 0
	lu32i.d	$t4, -49152
	lu52i.d	$t4, $t4, -1016
	movgr2fr.d	$fa1, $t4
	lu12i.w	$t4, -419431
	ori	$t4, $t4, 2458
	lu32i.d	$t4, -419431
	lu52i.d	$t5, $t4, 1019
	movgr2fr.d	$fa2, $t5
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_2:                               # %.sink.split
                                        #   in Loop: Header=BB19_4 Depth=1
	st.w	$t5, $t2, 0
.LBB19_3:                               #   in Loop: Header=BB19_4 Depth=1
	addi.d	$a0, $a0, 1
	ld.w	$t5, $sp, 8
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	bge	$a0, $t5, .LBB19_18
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $a3, 0
	bne	$t5, $t3, .LBB19_3
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=1
	ld.w	$t5, $a5, 0
	slli.d	$t7, $t5, 3
	slli.d	$t6, $t5, 2
	ldx.w	$t8, $s5, $t6
	ld.w	$t5, $a6, 0
	fldx.d	$fa3, $a2, $t7
	bge	$t5, $t8, .LBB19_7
# %bb.6:                                #   in Loop: Header=BB19_4 Depth=1
	ldx.w	$t6, $s4, $t6
	slli.d	$t6, $t6, 3
	fldx.d	$fa4, $a2, $t6
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa3, $fa0
.LBB19_7:                               #   in Loop: Header=BB19_4 Depth=1
	ld.w	$t6, $a7, 0
	slli.d	$t7, $t6, 3
	slli.d	$t6, $t6, 2
	ldx.w	$t8, $s5, $t6
	fldx.d	$fa4, $a2, $t7
	bge	$t5, $t8, .LBB19_9
# %bb.8:                                #   in Loop: Header=BB19_4 Depth=1
	ldx.w	$t6, $s4, $t6
	slli.d	$t6, $t6, 3
	fldx.d	$fa5, $a2, $t6
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
.LBB19_9:                               #   in Loop: Header=BB19_4 Depth=1
	ld.w	$t6, $t0, 0
	slli.d	$t7, $t6, 3
	slli.d	$t6, $t6, 2
	ldx.w	$t8, $s5, $t6
	fldx.d	$fa5, $a2, $t7
	bge	$t5, $t8, .LBB19_11
# %bb.10:                               #   in Loop: Header=BB19_4 Depth=1
	ldx.w	$t6, $s3, $t6
	slli.d	$t6, $t6, 3
	fldx.d	$fa6, $a2, $t6
	fadd.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa0
.LBB19_11:                              #   in Loop: Header=BB19_4 Depth=1
	ld.w	$t6, $t1, 0
	slli.d	$t7, $t6, 3
	slli.d	$t6, $t6, 2
	ldx.w	$t8, $s5, $t6
	fldx.d	$fa6, $a2, $t7
	bge	$t5, $t8, .LBB19_13
# %bb.12:                               #   in Loop: Header=BB19_4 Depth=1
	ldx.w	$t5, $s3, $t6
	slli.d	$t5, $t5, 3
	fldx.d	$fa7, $a2, $t5
	fadd.d	$fa6, $fa6, $fa7
	fmul.d	$fa6, $fa6, $fa0
.LBB19_13:                              #   in Loop: Header=BB19_4 Depth=1
	fld.d	$fa7, $a4, 0
	fsub.d	$fa4, $fa4, $fa7
	fsub.d	$fa3, $fa7, $fa3
	fdiv.d	$fa4, $fa4, $fa7
	fabs.d	$fa4, $fa4
	fdiv.d	$fa3, $fa3, $fa7
	fabs.d	$fa3, $fa3
	fcmp.clt.d	$fcc0, $fa4, $fa3
	fsel	$ft0, $fa4, $fa3, $fcc0
	fmax.d	$ft0, $ft0, $fa1
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
	fcmp.clt.d	$fcc0, $ft0, $fa3
	fsel	$fa3, $ft0, $fa3, $fcc0
	fsub.d	$fa4, $fa6, $fa7
	fsub.d	$fa5, $fa7, $fa5
	fdiv.d	$fa4, $fa4, $fa7
	fabs.d	$fa4, $fa4
	fdiv.d	$fa5, $fa5, $fa7
	fabs.d	$fa5, $fa5
	fcmp.clt.d	$fcc0, $fa4, $fa5
	fsel	$fa6, $fa4, $fa5, $fcc0
	fcmp.clt.d	$fcc0, $fa3, $fa6
	fsel	$fa3, $fa3, $fa6, $fcc0
	fcmp.clt.d	$fcc0, $fa5, $fa4
	fsel	$fa4, $fa5, $fa4, $fcc0
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
	fcmp.cule.d	$fcc0, $fa3, $fa2
	st.w	$zero, $t2, 0
	bcnez	$fcc0, .LBB19_15
# %bb.14:                               #   in Loop: Header=BB19_4 Depth=1
	ld.w	$t6, $a6, 0
	ld.w	$t7, $a1, 1120
	ori	$t5, $zero, 1
	blt	$t6, $t7, .LBB19_2
.LBB19_15:                              #   in Loop: Header=BB19_4 Depth=1
	lu52i.d	$t5, $t4, 1018
	movgr2fr.d	$fa4, $t5
	fcmp.cule.d	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB19_3
# %bb.16:                               #   in Loop: Header=BB19_4 Depth=1
	ld.w	$t5, $a6, 0
	blez	$t5, .LBB19_3
# %bb.17:                               #   in Loop: Header=BB19_4 Depth=1
	addi.d	$t5, $zero, -1
	b	.LBB19_2
.LBB19_18:                              # %._crit_edge
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 256
	ld.d	$a0, $fp, 192
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 256
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 32
	ld.d	$a1, $sp, 40
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 248
	fadd.d	$fa0, $fa0, $fa1
	addi.w	$a0, $s0, 0
	fst.d	$fa0, $fp, 248
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
.Lfunc_end19:
	.size	_ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_, .Lfunc_end19-_ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State8mass_sumEi            # -- Begin function _ZN5State8mass_sumEi
	.p2align	5
	.type	_ZN5State8mass_sumEi,@function
_ZN5State8mass_sumEi:                   # @_ZN5State8mass_sumEi
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	move	$fp, $a0
	ld.d	$s3, $a0, 192
	ld.d	$s1, $s3, 1360
	ld.d	$s2, $s3, 1352
	move	$s0, $a1
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	movgr2fr.d	$fs0, $zero
	beq	$s0, $a0, .LBB20_7
# %bb.1:
	bnez	$s0, .LBB20_13
# %bb.2:                                # %.preheader38
	ld.d	$a0, $s3, 1160
	beqz	$a0, .LBB20_13
# %bb.3:                                # %.lr.ph
	ld.d	$a1, $fp, 200
	ld.d	$a2, $fp, 192
	movgr2fr.d	$fs0, $zero
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB20_5
	.p2align	4, , 16
.LBB20_4:                               #   in Loop: Header=BB20_5 Depth=1
	bstrpick.d	$a5, $a4, 31, 0
	addi.d	$s2, $s2, 4
	addi.d	$a1, $a1, 8
	addi.d	$s1, $s1, 4
	addi.w	$a4, $a4, 1
	bgeu	$a5, $a0, .LBB20_13
.LBB20_5:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $s1, 0
	bne	$a5, $a3, .LBB20_4
# %bb.6:                                #   in Loop: Header=BB20_5 Depth=1
	ld.w	$a5, $s2, 0
	ld.d	$a6, $a2, 1048
	ld.d	$a7, $a2, 1072
	fld.d	$fa0, $a1, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa1, $a6, $a5
	fldx.d	$fa2, $a7, $a5
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fs0, $fs0, $fa0
	b	.LBB20_4
.LBB20_7:                               # %.preheader
	ld.d	$a2, $s3, 1160
	addi.w	$a0, $a2, 0
	blez	$a0, .LBB20_13
# %bb.8:                                # %.lr.ph44
	ld.d	$a0, $fp, 200
	ld.d	$a1, $fp, 192
	bstrpick.d	$a2, $a2, 30, 0
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 1
	fmov.d	$fa1, $fa0
	b	.LBB20_10
	.p2align	4, , 16
.LBB20_9:                               #   in Loop: Header=BB20_10 Depth=1
	addi.d	$s2, $s2, 4
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$s1, $s1, 4
	beqz	$a2, .LBB20_12
.LBB20_10:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $s1, 0
	bne	$a4, $a3, .LBB20_9
# %bb.11:                               #   in Loop: Header=BB20_10 Depth=1
	ld.w	$a4, $s2, 0
	ld.d	$a5, $a1, 1048
	ld.d	$a6, $a1, 1072
	fld.d	$fa2, $a0, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $a5, $a4
	fldx.d	$fa4, $a6, $a4
	fmul.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa4
	fadd.d	$fa2, $fa1, $fa2
	fadd.d	$fa3, $fa1, $fa0
	fsub.d	$fa0, $fa3, $fa0
	fsub.d	$fa1, $fa2, $fa0
	fmov.d	$fa0, $fa3
	b	.LBB20_9
.LBB20_12:                              # %._crit_edge.loopexit
	fadd.d	$fs0, $fa1, $fa0
.LBB20_13:                              # %.loopexit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 272
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 272
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end20:
	.size	_ZN5State8mass_sumEi, .Lfunc_end20-_ZN5State8mass_sumEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State24resize_old_device_memoryEm # -- Begin function _ZN5State24resize_old_device_memoryEm
	.p2align	5
	.type	_ZN5State24resize_old_device_memoryEm,@function
_ZN5State24resize_old_device_memoryEm:  # @_ZN5State24resize_old_device_memoryEm
# %bb.0:
	ret
.Lfunc_end21:
	.size	_ZN5State24resize_old_device_memoryEm, .Lfunc_end21-_ZN5State24resize_old_device_memoryEm
                                        # -- End function
	.globl	_ZN5State18output_timing_infoEiid # -- Begin function _ZN5State18output_timing_infoEiid
	.p2align	5
	.type	_ZN5State18output_timing_infoEiid,@function
_ZN5State18output_timing_infoEiid:      # @_ZN5State18output_timing_infoEiid
# %bb.0:                                # %thread-pre-split
	ret
.Lfunc_end22:
	.size	_ZN5State18output_timing_infoEiid, .Lfunc_end22-_ZN5State18output_timing_infoEiid
                                        # -- End function
	.globl	_ZN5State18output_timer_blockE17mesh_device_typesddddd # -- Begin function _ZN5State18output_timer_blockE17mesh_device_typesddddd
	.p2align	5
	.type	_ZN5State18output_timer_blockE17mesh_device_typesddddd,@function
_ZN5State18output_timer_blockE17mesh_device_typesddddd: # @_ZN5State18output_timer_blockE17mesh_device_typesddddd
# %bb.0:
	ret
.Lfunc_end23:
	.size	_ZN5State18output_timer_blockE17mesh_device_typesddddd, .Lfunc_end23-_ZN5State18output_timer_blockE17mesh_device_typesddddd
                                        # -- End function
	.globl	_ZN5State12timer_outputE12state_timers17mesh_device_typesi # -- Begin function _ZN5State12timer_outputE12state_timers17mesh_device_typesi
	.p2align	5
	.type	_ZN5State12timer_outputE12state_timers17mesh_device_typesi,@function
_ZN5State12timer_outputE12state_timers17mesh_device_typesi: # @_ZN5State12timer_outputE12state_timers17mesh_device_typesi
	.cfi_startproc
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	move	$s0, $a0
	ld.d	$s1, $a0, 192
	ld.w	$s4, $s1, 620
	move	$fp, $a3
	move	$s2, $a2
	bstrpick.d	$s3, $a1, 31, 0
	alsl.d	$a0, $s3, $a0, 3
	beqz	$a2, .LBB24_2
# %bb.1:
	ld.d	$a0, $a0, 296
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	lu12i.w	$a0, -97683
	ori	$a0, $a0, 1685
	lu32i.d	$a0, 77323
	lu52i.d	$a0, $a0, 993
	movgr2fr.d	$fa1, $a0
	fmul.d	$fs0, $fa0, $fa1
	b	.LBB24_3
.LBB24_2:
	fld.d	$fs0, $a0, 224
.LBB24_3:
	addi.d	$a0, $sp, 18
	ori	$a2, $zero, 78
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 47
	st.h	$a0, $sp, 16
	bnez	$s4, .LBB24_5
# %bb.4:
	bstrpick.d	$a0, $s2, 31, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.L__const._ZN5State12timer_outputE12state_timers17mesh_device_typesi.device_string)
	addi.d	$a1, $a1, %pc_lo12(.L__const._ZN5State12timer_outputE12state_timers17mesh_device_typesi.device_string)
	ldx.d	$a2, $a1, $a0
	slli.w	$a3, $fp, 1
	slli.d	$a0, $s3, 3
	pcalau12i	$a1, %pc_hi20(_ZL22state_timer_descriptor)
	addi.d	$a1, $a1, %pc_lo12(_ZL22state_timer_descriptor)
	ldx.d	$a5, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a4, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 192
.LBB24_5:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a3, $a0, %pc_lo12(.L.str.13)
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh15parallel_outputEPKcdiS1_)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end24:
	.size	_ZN5State12timer_outputE12state_timers17mesh_device_typesi, .Lfunc_end24-_ZN5State12timer_outputE12state_timers17mesh_device_typesi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State37compare_state_cpu_local_to_cpu_globalEPS_PKcijjPiS3_ # -- Begin function _ZN5State37compare_state_cpu_local_to_cpu_globalEPS_PKcijjPiS3_
	.p2align	5
	.type	_ZN5State37compare_state_cpu_local_to_cpu_globalEPS_PKcijjPiS3_,@function
_ZN5State37compare_state_cpu_local_to_cpu_globalEPS_PKcijjPiS3_: # @_ZN5State37compare_state_cpu_local_to_cpu_globalEPS_PKcijjPiS3_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	beqz	$a5, .LBB25_18
# %bb.1:                                # %.noexc
	move	$s1, $a3
	move	$s2, $a2
	ld.d	$a0, $a1, 200
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s5, $a1, 208
	ld.d	$s6, $a1, 216
	bstrpick.d	$s7, $a5, 31, 0
	slli.d	$s4, $s7, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$zero, $a0, 0
	addi.d	$s0, $s7, -1
	slli.d	$s8, $s0, 3
	beqz	$s0, .LBB25_3
# %bb.2:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $fp, 8
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_3:
.Ltmp16:                                # EH_LABEL
	move	$a0, $s4
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.4:                                # %.noexc48
	move	$s3, $a0
	st.d	$zero, $a0, 0
	beqz	$s0, .LBB25_6
# %bb.5:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44
	addi.d	$a0, $s3, 8
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_6:
.Ltmp19:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.7:                                # %.noexc55
	move	$s4, $a0
	st.d	$zero, $a0, 0
	beqz	$s0, .LBB25_9
# %bb.8:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51
	addi.d	$a0, $s4, 8
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_9:                               # %.lr.ph.preheader
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fs0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	move	$s8, $zero
	b	.LBB25_11
	.p2align	4, , 16
.LBB25_10:                              #   in Loop: Header=BB25_11 Depth=1
	addi.w	$s8, $s8, 1
	addi.d	$s7, $s7, -1
	addi.d	$s0, $s0, 8
	beqz	$s7, .LBB25_17
.LBB25_11:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $s0
	fldx.d	$fa1, $fp, $s0
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB25_13
# %bb.12:                               #   in Loop: Header=BB25_11 Depth=1
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fa1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB25_13:                              #   in Loop: Header=BB25_11 Depth=1
	fldx.d	$fa0, $s5, $s0
	fldx.d	$fa1, $s3, $s0
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB25_15
# %bb.14:                               #   in Loop: Header=BB25_11 Depth=1
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fa1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB25_15:                              #   in Loop: Header=BB25_11 Depth=1
	fldx.d	$fa0, $s6, $s0
	fldx.d	$fa1, $s4, $s0
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB25_10
# %bb.16:                               #   in Loop: Header=BB25_11 Depth=1
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fa1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB25_10
.LBB25_17:
	move	$a0, $s4
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB25_18:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit60
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
.LBB25_19:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit62
.Ltmp21:                                # EH_LABEL
	move	$s1, $a0
	move	$a0, $s3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB25_21
.LBB25_20:
.Ltmp18:                                # EH_LABEL
	move	$s1, $a0
.LBB25_21:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit64
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN5State37compare_state_cpu_local_to_cpu_globalEPS_PKcijjPiS3_, .Lfunc_end25-_ZN5State37compare_state_cpu_local_to_cpu_globalEPS_PKcijjPiS3_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table25:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin2          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp19-.Ltmp17                #   Call between .Ltmp17 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin2          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Lfunc_end25-.Ltmp20           #   Call between .Ltmp20 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN5State17print_object_infoEv  # -- Begin function _ZN5State17print_object_infoEv
	.p2align	5
	.type	_ZN5State17print_object_infoEv,@function
_ZN5State17print_object_infoEv:         # @_ZN5State17print_object_infoEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN10MallocPlus13memory_reportEv)
	jr	$t8
.Lfunc_end26:
	.size	_ZN5State17print_object_infoEv, .Lfunc_end26-_ZN5State17print_object_infoEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State5printEv               # -- Begin function _ZN5State5printEv
	.p2align	5
	.type	_ZN5State5printEv,@function
_ZN5State5printEv:                      # @_ZN5State5printEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a2, $a0, 192
	ld.d	$a0, $a2, 776
	bnez	$a0, .LBB27_2
# %bb.1:
	ld.w	$a2, $a2, 620
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 54
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 54
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 192
	st.d	$a0, $a2, 776
.LBB27_2:
	ld.d	$a1, $a2, 1368
	addi.d	$a0, $a2, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a4, $a1, 1176
	ld.d	$a3, $a1, 776
	ld.w	$a2, $a1, 620
	bgeu	$a0, $a4, .LBB27_6
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	beqz	$a0, .LBB27_13
# %bb.4:                                # %.lr.ph44
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s0, $a0, %pc_lo12(.L.str.23)
	move	$a3, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB27_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.d	$a4, $fp, 200
	slli.d	$t0, $a3, 3
	ld.d	$a5, $fp, 208
	ld.d	$a6, $fp, 216
	ld.d	$a7, $a1, 1328
	ld.d	$t1, $a1, 1336
	ld.d	$a1, $a1, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a7, $a7, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$a1, $a1, $a3
	ldx.d	$a6, $a6, $t0
	ldx.d	$a5, $a5, $t0
	ldx.d	$a4, $a4, $t0
	st.d	$a1, $sp, 8
	st.d	$t1, $sp, 0
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 0
	bltu	$a3, $a0, .LBB27_5
	b	.LBB27_13
.LBB27_6:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1160
	beqz	$a0, .LBB27_10
# %bb.7:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	move	$a4, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB27_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.w	$a3, $a1, 636
	ld.d	$a5, $a1, 1328
	ld.d	$a6, $a1, 1336
	ld.d	$a7, $a1, 1352
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a5, $a4
	ldx.w	$a6, $a6, $a4
	ldx.w	$a7, $a7, $a4
	ld.d	$t0, $a1, 1368
	ld.d	$t1, $a1, 1376
	ld.d	$t2, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$t0, $t0, $a4
	ldx.w	$t1, $t1, $a4
	ldx.w	$t2, $t2, $a4
	ldx.w	$a1, $a1, $a4
	add.w	$a4, $s1, $a3
	st.d	$a1, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a3, $a1, 1160
	addi.w	$s1, $s1, 1
	bstrpick.d	$a4, $s1, 31, 0
	bltu	$a4, $a3, .LBB27_8
# %bb.9:                                # %._crit_edge
	ld.d	$a0, $a1, 1176
	bltu	$a3, $a0, .LBB27_11
	b	.LBB27_13
.LBB27_10:
	move	$a3, $zero
	ld.d	$a0, $a1, 1176
	bgeu	$a3, $a0, .LBB27_13
.LBB27_11:                              # %.lr.ph41.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	move	$s1, $a3
	.p2align	4, , 16
.LBB27_12:                              # %.lr.ph41
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.w	$a4, $a1, 636
	ld.d	$a5, $a1, 1328
	ld.d	$a6, $a1, 1336
	ld.d	$a7, $a1, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a5, $a3
	ldx.w	$a6, $a6, $a3
	ldx.w	$a7, $a7, $a3
	ld.d	$t0, $a1, 1368
	ld.d	$t1, $a1, 1376
	ld.d	$t2, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$t0, $t0, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$t2, $t2, $a3
	ldx.w	$a1, $a1, $a3
	add.w	$a4, $s1, $a4
	st.d	$a1, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	addi.w	$a3, $s1, 0
	st.d	$t0, $sp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 0
	bltu	$a3, $a0, .LBB27_12
.LBB27_13:                              # %.loopexit
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end27:
	.size	_ZN5State5printEv, .Lfunc_end27-_ZN5State5printEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State19get_checkpoint_sizeEv # -- Begin function _ZN5State19get_checkpoint_sizeEv
	.p2align	5
	.type	_ZN5State19get_checkpoint_sizeEv,@function
_ZN5State19get_checkpoint_sizeEv:       # @_ZN5State19get_checkpoint_sizeEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$a0, $a0, 192
	ld.d	$a1, $a0, 1160
	slli.d	$a2, $a1, 4
	alsl.d	$fp, $a1, $a2, 3
	pcaddu18i	$ra, %call36(_ZN4Mesh19get_checkpoint_sizeEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $fp
	addi.d	$a0, $a0, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end28:
	.size	_ZN5State19get_checkpoint_sizeEv, .Lfunc_end28-_ZN5State19get_checkpoint_sizeEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State16store_checkpointEP4Crux # -- Begin function _ZN5State16store_checkpointEP4Crux
	.p2align	5
	.type	_ZN5State16store_checkpointEP4Crux,@function
_ZN5State16store_checkpointEP4Crux:     # @_ZN5State16store_checkpointEP4Crux
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 192
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_ZN4Mesh16store_checkpointEP4Crux)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 102
	st.w	$a0, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a4, $a0, %pc_lo12(.L.str.24)
	addi.d	$a1, $sp, 108
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	ori	$a5, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 224
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a4, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 9
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 296
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a4, $a0, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 9
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 16
	st.w	$zero, $sp, 16
	ld.d	$a1, $fp, 16
	st.d	$zero, $sp, 24
	st.d	$a2, $sp, 32
	st.d	$a2, $sp, 40
	st.d	$zero, $sp, 48
	beqz	$a1, .LBB29_6
# %bb.1:
	addi.d	$a0, $sp, 8
	st.d	$a0, $sp, 112
	addi.d	$a3, $sp, 112
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB29_2:                               # %.noexc.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB29_2
# %bb.3:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 32
	move	$a2, $a0
	.p2align	4, , 16
.LBB29_4:                               # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB29_4
# %bb.5:
	ld.d	$a2, $fp, 40
	st.d	$a1, $sp, 40
	st.d	$a2, $sp, 48
	st.d	$a0, $sp, 24
.LBB29_6:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit.i
	addi.d	$a2, $sp, 64
	st.w	$zero, $sp, 64
	ld.d	$a1, $fp, 64
	st.d	$zero, $sp, 72
	st.d	$a2, $sp, 80
	st.d	$a2, $sp, 88
	st.d	$zero, $sp, 96
	beqz	$a1, .LBB29_13
# %bb.7:
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 112
.Ltmp22:                                # EH_LABEL
	addi.d	$a3, $sp, 112
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.8:                                # %.noexc.i.i5.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB29_9:                               # %.noexc.i.i5.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB29_9
# %bb.10:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 80
	move	$a2, $a0
	.p2align	4, , 16
.LBB29_11:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB29_11
# %bb.12:
	ld.d	$a2, $fp, 88
	st.d	$a1, $sp, 88
	st.d	$a2, $sp, 96
	st.d	$a0, $sp, 72
.LBB29_13:                              # %_ZN10MallocPlusC2ERKS_.exit
.Ltmp25:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN4Crux16store_MallocPlusE10MallocPlus)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.14:
	ld.d	$a1, $sp, 72
	addi.d	$a0, $sp, 56
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.15:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $sp, 24
.Ltmp31:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.16:                               # %_ZN10MallocPlusD2Ev.exit
	addi.d	$a1, $sp, 108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB29_17:
.Ltmp24:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB29_18:
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB29_19:
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB29_20:
.Ltmp27:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZN5State16store_checkpointEP4Crux, .Lfunc_end29-_ZN5State16store_checkpointEP4Crux
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table29:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin3          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin3          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin3          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin3          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp32-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Lfunc_end29-.Ltmp32           #   Call between .Ltmp32 and .Lfunc_end29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN10MallocPlusD2Ev,"axG",@progbits,_ZN10MallocPlusD2Ev,comdat
	.weak	_ZN10MallocPlusD2Ev             # -- Begin function _ZN10MallocPlusD2Ev
	.p2align	5
	.type	_ZN10MallocPlusD2Ev,@function
_ZN10MallocPlusD2Ev:                    # @_ZN10MallocPlusD2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 64
	addi.d	$a0, $a0, 48
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.1:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit
	ld.d	$a1, $fp, 16
.Ltmp37:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.2:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB30_3:
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB30_4:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN10MallocPlusD2Ev, .Lfunc_end30-_ZN10MallocPlusD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN10MallocPlusD2Ev,"aG",@progbits,_ZN10MallocPlusD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp34-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin4          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin4          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp38-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Lfunc_end30-.Ltmp38           #   Call between .Ltmp38 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN5State18restore_checkpointEP4Crux # -- Begin function _ZN5State18restore_checkpointEP4Crux
	.p2align	5
	.type	_ZN5State18restore_checkpointEP4Crux,@function
_ZN5State18restore_checkpointEP4Crux:   # @_ZN5State18restore_checkpointEP4Crux
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	ld.d	$a0, $a0, 192
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_ZN4Mesh18restore_checkpointEP4Crux)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 116
	ori	$a4, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN4Crux18restore_named_intsEPKciPim)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 116
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a3, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 208
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 216
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a4, $a0, %pc_lo12(.L.str.24)
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	ori	$a5, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 224
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a4, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 9
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 296
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a4, $a0, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 9
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 24
	st.w	$zero, $sp, 24
	ld.d	$a1, $fp, 16
	st.d	$zero, $sp, 32
	st.d	$a2, $sp, 40
	st.d	$a2, $sp, 48
	st.d	$zero, $sp, 56
	beqz	$a1, .LBB31_6
# %bb.1:
	addi.d	$a0, $sp, 16
	st.d	$a0, $sp, 120
	addi.d	$a3, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB31_2:                               # %.noexc.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB31_2
# %bb.3:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 40
	move	$a2, $a0
	.p2align	4, , 16
.LBB31_4:                               # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB31_4
# %bb.5:
	ld.d	$a2, $fp, 40
	st.d	$a1, $sp, 48
	st.d	$a2, $sp, 56
	st.d	$a0, $sp, 32
.LBB31_6:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit.i
	addi.d	$a2, $sp, 72
	st.w	$zero, $sp, 72
	ld.d	$a1, $fp, 64
	st.d	$zero, $sp, 80
	st.d	$a2, $sp, 88
	st.d	$a2, $sp, 96
	st.d	$zero, $sp, 104
	beqz	$a1, .LBB31_13
# %bb.7:
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 120
.Ltmp40:                                # EH_LABEL
	addi.d	$a3, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.8:                                # %.noexc.i.i5.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB31_9:                               # %.noexc.i.i5.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB31_9
# %bb.10:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 88
	move	$a2, $a0
	.p2align	4, , 16
.LBB31_11:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB31_11
# %bb.12:
	ld.d	$a2, $fp, 88
	st.d	$a1, $sp, 96
	st.d	$a2, $sp, 104
	st.d	$a0, $sp, 80
.LBB31_13:                              # %_ZN10MallocPlusC2ERKS_.exit
.Ltmp43:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN4Crux18restore_MallocPlusE10MallocPlus)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.14:
	ld.d	$a1, $sp, 80
	addi.d	$a0, $sp, 64
.Ltmp46:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.15:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $sp, 32
.Ltmp49:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.16:                               # %_ZN10MallocPlusD2Ev.exit
	ld.w	$a1, $sp, 112
	ori	$a0, $zero, 102
	bne	$a1, $a0, .LBB31_18
# %bb.17:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$s2, $a0, %pc_lo12(.Lstr.2)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 224
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s3, $a0, %pc_lo12(.L.str.31)
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 232
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 240
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 248
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 256
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 264
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 272
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 280
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 288
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 208
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 216
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB31_18:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 102
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB31_19:
.Ltmp42:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB31_20:
.Ltmp51:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB31_21:
.Ltmp48:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB31_22:
.Ltmp45:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN5State18restore_checkpointEP4Crux, .Lfunc_end31-_ZN5State18restore_checkpointEP4Crux
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table31:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin5          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin5          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin5          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp49-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin5          #     jumps to .Ltmp51
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp50-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Lfunc_end31-.Ltmp50           #   Call between .Ltmp50 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN5State5printEidddd           # -- Begin function _ZN5State5printEidddd
	.p2align	5
	.type	_ZN5State5printEidddd,@function
_ZN5State5printEidddd:                  # @_ZN5State5printEidddd
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 88                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	.cfi_offset 57, -48
	.cfi_offset 58, -56
	.cfi_offset 59, -64
	.cfi_offset 60, -72
	fmov.d	$fs1, $fa3
	fmov.d	$fs2, $fa2
	fmov.d	$fs0, $fa1
	fmov.d	$fs3, $fa0
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	addi.d	$a0, $sp, 48
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	movgr2fr.d	$fa0, $zero
	fcmp.cune.d	$fcc0, $fs2, $fa0
	st.d	$a0, $a1, 776
	bcnez	$fcc0, .LBB32_2
# %bb.1:
	movfr2gr.d	$s1, $fs3
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 776
	ld.d	$a2, $a1, 1160
	ld.d	$a3, $a1, 1176
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	move	$a3, $s1
	b	.LBB32_3
.LBB32_2:
	fsub.d	$fs4, $fs2, $fs0
	movfr2gr.d	$a3, $fs3
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 776
	ld.d	$a2, $a1, 1160
	ld.d	$a3, $a1, 1176
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	movfr2gr.d	$a2, $fs0
	movfr2gr.d	$a3, $fs2
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	movfr2gr.d	$a2, $fs4
	movfr2gr.d	$a3, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
.LBB32_3:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a1, $a0, 1368
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a4, $a1, 1176
	ld.d	$a3, $a1, 776
	ld.w	$a2, $a1, 620
	bgeu	$a0, $a4, .LBB32_7
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	beqz	$a0, .LBB32_14
# %bb.5:                                # %.lr.ph59
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s0, $a0, %pc_lo12(.L.str.23)
	move	$a3, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB32_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.d	$a4, $fp, 200
	slli.d	$t0, $a3, 3
	ld.d	$a5, $fp, 208
	ld.d	$a6, $fp, 216
	ld.d	$a7, $a1, 1328
	ld.d	$t1, $a1, 1336
	ld.d	$a1, $a1, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a7, $a7, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$a1, $a1, $a3
	ldx.d	$a6, $a6, $t0
	ldx.d	$a5, $a5, $t0
	ldx.d	$a4, $a4, $t0
	st.d	$a1, $sp, 8
	st.d	$t1, $sp, 0
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 0
	bltu	$a3, $a0, .LBB32_6
	b	.LBB32_14
.LBB32_7:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1160
	beqz	$a0, .LBB32_11
# %bb.8:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	move	$a4, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB32_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.w	$a3, $a1, 636
	ld.d	$a5, $a1, 1328
	ld.d	$a6, $a1, 1336
	ld.d	$a7, $a1, 1352
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a5, $a4
	ldx.w	$a6, $a6, $a4
	ldx.w	$a7, $a7, $a4
	ld.d	$t0, $a1, 1368
	ld.d	$t1, $a1, 1376
	ld.d	$t2, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$t0, $t0, $a4
	ldx.w	$t1, $t1, $a4
	ldx.w	$t2, $t2, $a4
	ldx.w	$a1, $a1, $a4
	add.w	$a4, $s1, $a3
	st.d	$a1, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a3, $a1, 1160
	addi.w	$s1, $s1, 1
	bstrpick.d	$a4, $s1, 31, 0
	bltu	$a4, $a3, .LBB32_9
# %bb.10:                               # %._crit_edge
	ld.d	$a0, $a1, 1176
	bltu	$a3, $a0, .LBB32_12
	b	.LBB32_14
.LBB32_11:
	move	$a3, $zero
	ld.d	$a0, $a1, 1176
	bgeu	$a3, $a0, .LBB32_14
.LBB32_12:                              # %.lr.ph56.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	move	$s1, $a3
	.p2align	4, , 16
.LBB32_13:                              # %.lr.ph56
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.w	$a4, $a1, 636
	ld.d	$a5, $a1, 1328
	ld.d	$a6, $a1, 1336
	ld.d	$a7, $a1, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a5, $a3
	ldx.w	$a6, $a6, $a3
	ldx.w	$a7, $a7, $a3
	ld.d	$t0, $a1, 1368
	ld.d	$t1, $a1, 1376
	ld.d	$t2, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$t0, $t0, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$t2, $t2, $a3
	ldx.w	$a1, $a1, $a3
	add.w	$a4, $s1, $a4
	st.d	$a1, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	addi.w	$a3, $s1, 0
	st.d	$t0, $sp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 0
	bltu	$a3, $a0, .LBB32_13
.LBB32_14:                              # %.loopexit
	fld.d	$fs4, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end32:
	.size	_ZN5State5printEidddd, .Lfunc_end32-_ZN5State5printEidddd
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State11print_localEi        # -- Begin function _ZN5State11print_localEi
	.p2align	5
	.type	_ZN5State11print_localEi,@function
_ZN5State11print_localEi:               # @_ZN5State11print_localEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	ld.d	$a2, $a0, 192
	ld.d	$a0, $a2, 776
	move	$s0, $a1
	bnez	$a0, .LBB33_2
# %bb.1:
	ld.w	$a2, $a2, 620
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 70
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 70
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	st.d	$a0, $a1, 776
.LBB33_2:
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a3, $a1, 1368
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	beqz	$a3, .LBB33_9
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 200
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a2, $a1, 1176
	beqz	$a2, .LBB33_12
# %bb.4:                                # %.lr.ph
	addi.w	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$s0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$s1, $a0, %pc_lo12(.L.str.40)
	move	$a4, $zero
	move	$s2, $zero
	b	.LBB33_7
	.p2align	4, , 16
.LBB33_5:                               #   in Loop: Header=BB33_7 Depth=1
	ld.d	$t0, $fp, 200
	slli.d	$a4, $a4, 3
	ld.d	$a5, $fp, 208
	ld.d	$a6, $a1, 1328
	ld.d	$t1, $a1, 1336
	ld.d	$t2, $a1, 1352
	ld.d	$t3, $fp, 216
	ldx.w	$a7, $a6, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$t2, $t2, $a3
	ld.d	$a6, $a1, 1368
	ld.d	$t4, $a1, 1376
	ld.d	$t5, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$t6, $a6, $a3
	ldx.w	$t4, $t4, $a3
	ldx.w	$t5, $t5, $a3
	ldx.w	$a1, $a1, $a3
	ldx.d	$a6, $t3, $a4
	ldx.d	$a5, $a5, $a4
	ldx.d	$a4, $t0, $a4
	st.d	$a1, $sp, 40
	st.d	$t5, $sp, 32
	st.d	$t4, $sp, 24
	st.d	$t6, $sp, 16
	st.d	$t2, $sp, 8
	st.d	$t1, $sp, 0
	move	$a1, $s0
.LBB33_6:                               #   in Loop: Header=BB33_7 Depth=1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s2, $s2, 1
	bstrpick.d	$a4, $s2, 31, 0
	bgeu	$a4, $a0, .LBB33_12
.LBB33_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	slli.d	$a3, $a4, 2
	bltu	$s2, $s3, .LBB33_5
# %bb.8:                                #   in Loop: Header=BB33_7 Depth=1
	ld.d	$a4, $a1, 1328
	ld.d	$a5, $a1, 1336
	ld.d	$a6, $a1, 1352
	ldx.w	$a4, $a4, $a3
	ldx.w	$a5, $a5, $a3
	ldx.w	$a6, $a6, $a3
	ld.d	$a7, $a1, 1368
	ld.d	$t0, $a1, 1376
	ld.d	$t1, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$a7, $a7, $a3
	ldx.w	$t0, $t0, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$a1, $a1, $a3
	st.d	$a1, $sp, 16
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	move	$a1, $s1
	b	.LBB33_6
.LBB33_9:
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	beqz	$a0, .LBB33_12
# %bb.10:                               # %.lr.ph40
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s0, $a0, %pc_lo12(.L.str.42)
	move	$a3, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB33_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.d	$a4, $fp, 200
	slli.d	$t0, $a3, 3
	ld.d	$a5, $fp, 208
	ld.d	$a6, $fp, 216
	ld.d	$a7, $a1, 1328
	ld.d	$t1, $a1, 1336
	ld.d	$a1, $a1, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a7, $a7, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$a1, $a1, $a3
	ldx.d	$a6, $a6, $t0
	ldx.d	$a5, $a5, $t0
	ldx.d	$a4, $a4, $t0
	st.d	$a1, $sp, 8
	st.d	$t1, $sp, 0
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 0
	bltu	$a3, $a0, .LBB33_11
.LBB33_12:                              # %.loopexit
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end33:
	.size	_ZN5State11print_localEi, .Lfunc_end33-_ZN5State11print_localEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State17print_failure_logEiddddb # -- Begin function _ZN5State17print_failure_logEiddddb
	.p2align	5
	.type	_ZN5State17print_failure_logEiddddb,@function
_ZN5State17print_failure_logEiddddb:    # @_ZN5State17print_failure_logEiddddb
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	.cfi_offset 57, -48
	.cfi_offset 58, -56
	.cfi_offset 59, -64
	.cfi_offset 60, -72
	move	$s1, $a2
	fmov.d	$fs0, $fa3
	fmov.d	$fs1, $fa2
	fmov.d	$fs2, $fa1
	fmov.d	$fs3, $fa0
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L__const._ZN5State17print_failure_logEiddddb.filename)
	addi.d	$a0, $a0, %pc_lo12(.L__const._ZN5State17print_failure_logEiddddb.filename)
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	move	$a3, $a0
	st.d	$a0, $a1, 776
	fsub.d	$fs4, $fs1, $fs2
	beqz	$s1, .LBB34_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 49
	b	.LBB34_3
.LBB34_2:
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	ori	$a1, $zero, 65
.LBB34_3:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	movfr2gr.d	$a3, $fs3
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 776
	ld.d	$a2, $a1, 1160
	ld.d	$a3, $a1, 1176
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	movfr2gr.d	$a2, $fs2
	movfr2gr.d	$a3, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	movfr2gr.d	$a2, $fs4
	movfr2gr.d	$a3, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a1, $a0, 1368
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a4, $a1, 1176
	ld.d	$a3, $a1, 776
	ld.w	$a2, $a1, 620
	bgeu	$a0, $a4, .LBB34_7
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	beqz	$a0, .LBB34_14
# %bb.5:                                # %.lr.ph53
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s0, $a0, %pc_lo12(.L.str.23)
	move	$a3, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB34_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.d	$a4, $fp, 200
	slli.d	$t0, $a3, 3
	ld.d	$a5, $fp, 208
	ld.d	$a6, $fp, 216
	ld.d	$a7, $a1, 1328
	ld.d	$t1, $a1, 1336
	ld.d	$a1, $a1, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a7, $a7, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$a1, $a1, $a3
	ldx.d	$a6, $a6, $t0
	ldx.d	$a5, $a5, $t0
	ldx.d	$a4, $a4, $t0
	st.d	$a1, $sp, 8
	st.d	$t1, $sp, 0
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 0
	bltu	$a3, $a0, .LBB34_6
	b	.LBB34_14
.LBB34_7:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1160
	beqz	$a0, .LBB34_11
# %bb.8:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	move	$a4, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB34_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.w	$a3, $a1, 636
	ld.d	$a5, $a1, 1328
	ld.d	$a6, $a1, 1336
	ld.d	$a7, $a1, 1352
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a5, $a4
	ldx.w	$a6, $a6, $a4
	ldx.w	$a7, $a7, $a4
	ld.d	$t0, $a1, 1368
	ld.d	$t1, $a1, 1376
	ld.d	$t2, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$t0, $t0, $a4
	ldx.w	$t1, $t1, $a4
	ldx.w	$t2, $t2, $a4
	ldx.w	$a1, $a1, $a4
	add.w	$a4, $s1, $a3
	st.d	$a1, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a3, $a1, 1160
	addi.w	$s1, $s1, 1
	bstrpick.d	$a4, $s1, 31, 0
	bltu	$a4, $a3, .LBB34_9
# %bb.10:                               # %._crit_edge
	ld.d	$a0, $a1, 1176
	bltu	$a3, $a0, .LBB34_12
	b	.LBB34_14
.LBB34_11:
	move	$a3, $zero
	ld.d	$a0, $a1, 1176
	bgeu	$a3, $a0, .LBB34_14
.LBB34_12:                              # %.lr.ph50.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	move	$s1, $a3
	.p2align	4, , 16
.LBB34_13:                              # %.lr.ph50
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.w	$a4, $a1, 636
	ld.d	$a5, $a1, 1328
	ld.d	$a6, $a1, 1336
	ld.d	$a7, $a1, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a5, $a3
	ldx.w	$a6, $a6, $a3
	ldx.w	$a7, $a7, $a3
	ld.d	$t0, $a1, 1368
	ld.d	$t1, $a1, 1376
	ld.d	$t2, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$t0, $t0, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$t2, $t2, $a3
	ldx.w	$a1, $a1, $a3
	add.w	$a4, $s1, $a4
	st.d	$a1, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	addi.w	$a3, $s1, 0
	st.d	$t0, $sp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 0
	bltu	$a3, $a0, .LBB34_13
.LBB34_14:                              # %.loopexit
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
.Lfunc_end34:
	.size	_ZN5State17print_failure_logEiddddb, .Lfunc_end34-_ZN5State17print_failure_logEiddddb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5State18print_rollback_logEiddddiii # -- Begin function _ZN5State18print_rollback_logEiddddiii
	.p2align	5
	.type	_ZN5State18print_rollback_logEiddddiii,@function
_ZN5State18print_rollback_logEiddddiii: # @_ZN5State18print_rollback_logEiddddiii
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
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 88                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	.cfi_offset 58, -72
	.cfi_offset 59, -80
	.cfi_offset 60, -88
	move	$s3, $a4
	move	$s1, $a3
	move	$s2, $a2
	fmov.d	$fs0, $fa3
	fmov.d	$fs1, $fa2
	fmov.d	$fs2, $fa1
	fmov.d	$fs3, $fa0
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	move	$a3, $a0
	st.d	$a0, $a1, 776
	ori	$a0, $zero, 1
	fsub.d	$fs4, $fs1, $fs2
	bne	$s3, $a0, .LBB35_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	ori	$a1, $zero, 55
	b	.LBB35_3
.LBB35_2:
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	ori	$a1, $zero, 71
.LBB35_3:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	sub.w	$a4, $s1, $s2
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	movfr2gr.d	$a3, $fs3
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 776
	ld.d	$a2, $a1, 1160
	ld.d	$a3, $a1, 1176
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	movfr2gr.d	$a2, $fs2
	movfr2gr.d	$a3, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a0, $a0, 776
	movfr2gr.d	$a2, $fs4
	movfr2gr.d	$a3, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a1, $a0, 1368
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a4, $a1, 1176
	ld.d	$a3, $a1, 776
	ld.w	$a2, $a1, 620
	bgeu	$a0, $a4, .LBB35_7
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	beqz	$a0, .LBB35_14
# %bb.5:                                # %.lr.ph58
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s0, $a0, %pc_lo12(.L.str.23)
	move	$a3, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB35_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.d	$a4, $fp, 200
	slli.d	$t0, $a3, 3
	ld.d	$a5, $fp, 208
	ld.d	$a6, $fp, 216
	ld.d	$a7, $a1, 1328
	ld.d	$t1, $a1, 1336
	ld.d	$a1, $a1, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a7, $a7, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$a1, $a1, $a3
	ldx.d	$a6, $a6, $t0
	ldx.d	$a5, $a5, $t0
	ldx.d	$a4, $a4, $t0
	st.d	$a1, $sp, 8
	st.d	$t1, $sp, 0
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 0
	bltu	$a3, $a0, .LBB35_6
	b	.LBB35_14
.LBB35_7:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1160
	beqz	$a0, .LBB35_11
# %bb.8:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	move	$a4, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB35_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.w	$a3, $a1, 636
	ld.d	$a5, $a1, 1328
	ld.d	$a6, $a1, 1336
	ld.d	$a7, $a1, 1352
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a5, $a4
	ldx.w	$a6, $a6, $a4
	ldx.w	$a7, $a7, $a4
	ld.d	$t0, $a1, 1368
	ld.d	$t1, $a1, 1376
	ld.d	$t2, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$t0, $t0, $a4
	ldx.w	$t1, $t1, $a4
	ldx.w	$t2, $t2, $a4
	ldx.w	$a1, $a1, $a4
	add.w	$a4, $s1, $a3
	st.d	$a1, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a3, $a1, 1160
	addi.w	$s1, $s1, 1
	bstrpick.d	$a4, $s1, 31, 0
	bltu	$a4, $a3, .LBB35_9
# %bb.10:                               # %._crit_edge
	ld.d	$a0, $a1, 1176
	bltu	$a3, $a0, .LBB35_12
	b	.LBB35_14
.LBB35_11:
	move	$a3, $zero
	ld.d	$a0, $a1, 1176
	bgeu	$a3, $a0, .LBB35_14
.LBB35_12:                              # %.lr.ph55.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	move	$s1, $a3
	.p2align	4, , 16
.LBB35_13:                              # %.lr.ph55
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 776
	ld.w	$a2, $a1, 620
	ld.w	$a4, $a1, 636
	ld.d	$a5, $a1, 1328
	ld.d	$a6, $a1, 1336
	ld.d	$a7, $a1, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a5, $a3
	ldx.w	$a6, $a6, $a3
	ldx.w	$a7, $a7, $a3
	ld.d	$t0, $a1, 1368
	ld.d	$t1, $a1, 1376
	ld.d	$t2, $a1, 1384
	ld.d	$a1, $a1, 1392
	ldx.w	$t0, $t0, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$t2, $t2, $a3
	ldx.w	$a1, $a1, $a3
	add.w	$a4, $s1, $a4
	st.d	$a1, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	addi.w	$a3, $s1, 0
	st.d	$t0, $sp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 192
	ld.d	$a0, $a1, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 0
	bltu	$a3, $a0, .LBB35_13
.LBB35_14:                              # %.loopexit
	fld.d	$fs4, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end35:
	.size	_ZN5State18print_rollback_logEiddddiii, .Lfunc_end35-_ZN5State18print_rollback_logEiddddiii
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
.Lfunc_end36:
	.size	__clang_call_terminate, .Lfunc_end36-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp52:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB37_2:
.Ltmp54:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev, .Lfunc_end37-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"aG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table37:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp52-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin6          #     jumps to .Ltmp54
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp53-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Lfunc_end37-.Ltmp53           #   Call between .Ltmp53 and .Lfunc_end37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a3
	ld.d	$s3, $a3, 0
	move	$s4, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$s5, $a1, 32
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s2, 24
	st.w	$a0, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s0, 16
	st.d	$s4, $s0, 8
	beqz	$a1, .LBB38_3
# %bb.1:
.Ltmp55:                                # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.2:
	st.d	$a0, $s0, 24
.LBB38_3:
	ld.d	$s4, $s2, 16
	beqz	$s4, .LBB38_11
# %bb.4:                                # %.lr.ph.preheader
	move	$s5, $s0
	b	.LBB38_6
	.p2align	4, , 16
.LBB38_5:                               #   in Loop: Header=BB38_6 Depth=1
	ld.d	$s4, $s4, 16
	move	$s5, $s2
	beqz	$s4, .LBB38_11
.LBB38_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s1, 0
.Ltmp58:                                # EH_LABEL
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.7:                                # %.noexc
                                        #   in Loop: Header=BB38_6 Depth=1
	move	$s2, $a0
	addi.d	$a2, $s4, 32
.Ltmp60:                                # EH_LABEL
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB38_6 Depth=1
	ld.w	$a0, $s4, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s4, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s5, 16
	st.d	$s5, $s2, 8
	beqz	$a1, .LBB38_5
# %bb.9:                                #   in Loop: Header=BB38_6 Depth=1
.Ltmp62:                                # EH_LABEL
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.10:                               #   in Loop: Header=BB38_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB38_5
.LBB38_11:                              # %._crit_edge
	move	$a0, $s0
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
.LBB38_12:
.Ltmp57:                                # EH_LABEL
	b	.LBB38_14
.LBB38_13:
.Ltmp64:                                # EH_LABEL
.LBB38_14:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.15:
.Ltmp67:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.16:
.LBB38_17:
.Ltmp69:                                # EH_LABEL
	move	$fp, $a0
.Ltmp70:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB38_19:
.Ltmp72:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_, .Lfunc_end38-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.p2align	2, 0x0
GCC_except_table38:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp55-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin7          #     jumps to .Ltmp57
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp58-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Ltmp63-.Ltmp58                #   Call between .Ltmp58 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin7          #     jumps to .Ltmp64
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp63-.Lfunc_begin7          # >> Call Site 4 <<
	.uleb128 .Ltmp65-.Ltmp63                #   Call between .Ltmp63 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin7          # >> Call Site 5 <<
	.uleb128 .Ltmp68-.Ltmp65                #   Call between .Ltmp65 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin7          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin7          # >> Call Site 6 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin7          #     jumps to .Ltmp72
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp71-.Lfunc_begin7          # >> Call Site 7 <<
	.uleb128 .Lfunc_end38-.Ltmp71           #   Call between .Ltmp71 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB39_6
# %bb.1:                                # %.lr.ph.preheader
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
	move	$s0, $a1
	move	$fp, $a0
	b	.LBB39_3
	.p2align	4, , 16
.LBB39_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB39_3 Depth=1
	ori	$a1, $zero, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB39_5
.LBB39_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB39_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB39_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB39_2
.LBB39_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB39_6:                               # %._crit_edge
	ret
.Lfunc_end39:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end39-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	move	$s0, $a2
	move	$fp, $a1
	addi.d	$s1, $a1, 48
	st.d	$s1, $a1, 32
	ld.d	$s2, $a2, 8
	ld.d	$s3, $a2, 0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 16
	bltu	$s2, $a0, .LBB40_3
# %bb.1:                                # %.noexc.i.i
.Ltmp73:                                # EH_LABEL
	addi.d	$s4, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s4, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB40_3:                               # %._crit_edge.i.i.i
	beqz	$s2, .LBB40_7
# %bb.4:                                # %._crit_edge.i.i.i
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB40_6
# %bb.5:
	ld.b	$a0, $s3, 0
	st.b	$a0, $s1, 0
	b	.LBB40_7
.LBB40_6:
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB40_7:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 32
	st.d	$a0, $fp, 64
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB40_8:
.Ltmp75:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.9:
.LBB40_10:
.Ltmp78:                                # EH_LABEL
	move	$fp, $a0
.Ltmp79:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB40_12:
.Ltmp81:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end40:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end40-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table40:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp73-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin8          #     jumps to .Ltmp75
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp74-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin8          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin8          # >> Call Site 4 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin8          #     jumps to .Ltmp81
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp80-.Lfunc_begin8          # >> Call Site 5 <<
	.uleb128 .Lfunc_end40-.Ltmp80           #   Call between .Ltmp80 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,"axG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,comdat
	.weak	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_ # -- Begin function _ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,@function
_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_: # @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s1, $a3
	move	$s3, $a2
	move	$s2, $a1
	move	$fp, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	vld	$vr0, $s2, 32
	ld.w	$a2, $s2, 0
	move	$s0, $a0
	vst	$vr0, $a0, 32
	ld.d	$a1, $s2, 24
	st.w	$a2, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 16
	st.d	$s3, $a0, 8
	beqz	$a1, .LBB41_3
# %bb.1:
.Ltmp82:                                # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.2:
	st.d	$a0, $s0, 24
.LBB41_3:
	ld.d	$s3, $s2, 16
	beqz	$s3, .LBB41_10
# %bb.4:                                # %.lr.ph.preheader
	move	$s4, $s0
	b	.LBB41_6
	.p2align	4, , 16
.LBB41_5:                               #   in Loop: Header=BB41_6 Depth=1
	ld.d	$s3, $s3, 16
	move	$s4, $s2
	beqz	$s3, .LBB41_10
.LBB41_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
.Ltmp85:                                # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB41_6 Depth=1
	move	$s2, $a0
	vld	$vr0, $s3, 32
	vst	$vr0, $a0, 32
	ld.w	$a0, $s3, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s3, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s4, 16
	st.d	$s4, $s2, 8
	beqz	$a1, .LBB41_5
# %bb.8:                                #   in Loop: Header=BB41_6 Depth=1
.Ltmp87:                                # EH_LABEL
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB41_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB41_5
.LBB41_10:                              # %._crit_edge
	move	$a0, $s0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB41_11:
.Ltmp84:                                # EH_LABEL
	b	.LBB41_13
.LBB41_12:
.Ltmp89:                                # EH_LABEL
.LBB41_13:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.14:
.Ltmp92:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.15:
.LBB41_16:
.Ltmp94:                                # EH_LABEL
	move	$fp, $a0
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.17:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB41_18:
.Ltmp97:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end41:
	.size	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_, .Lfunc_end41-_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,"aG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,comdat
	.p2align	2, 0x0
GCC_except_table41:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp82-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin9          #     jumps to .Ltmp84
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp85-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Ltmp88-.Ltmp85                #   Call between .Ltmp85 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin9          #     jumps to .Ltmp89
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp88-.Lfunc_begin9          # >> Call Site 4 <<
	.uleb128 .Ltmp90-.Ltmp88                #   Call between .Ltmp88 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin9          # >> Call Site 5 <<
	.uleb128 .Ltmp93-.Ltmp90                #   Call between .Ltmp90 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin9          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin9          # >> Call Site 6 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin9          #     jumps to .Ltmp97
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp96-.Lfunc_begin9          # >> Call Site 7 <<
	.uleb128 .Lfunc_end41-.Ltmp96           #   Call between .Ltmp96 and .Lfunc_end41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,"axG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E # -- Begin function _ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.p2align	5
	.type	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,@function
_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E: # @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB42_4
# %bb.1:                                # %.lr.ph.preheader
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
	move	$s0, $a1
	move	$fp, $a0
	.p2align	4, , 16
.LBB42_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB42_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB42_4:                               # %._crit_edge
	ret
.Lfunc_end42:
	.size	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .Lfunc_end42-_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEE17_M_default_appendEm,@function
_ZNSt6vectorIiSaIiEE17_M_default_appendEm: # @_ZNSt6vectorIiSaIiEE17_M_default_appendEm
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	beqz	$a1, .LBB43_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s4, $fp, 16
	sub.d	$a1, $s4, $a0
	srai.d	$a1, $a1, 2
	bgeu	$a1, $s0, .LBB43_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB43_14
# %bb.3:                                # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	addi.d	$a1, $s0, -1
	stx.w	$zero, $a0, $s2
	beqz	$a1, .LBB43_5
# %bb.4:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 4
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB43_5:                               # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit32
	blez	$s2, .LBB43_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB43_7:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB43_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB43_9:                               # %_ZZNSt6vectorIiSaIiEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB43_13
.LBB43_10:
	st.w	$zero, $a0, 0
	addi.d	$s1, $s0, -1
	addi.d	$s0, $a0, 4
	beqz	$s1, .LBB43_12
# %bb.11:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a2, $s1, 2
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s0, $s1, $s0, 2
.LBB43_12:                              # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB43_13:
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
	ret
.LBB43_14:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end43-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEE17_M_default_appendEm,@function
_ZNSt6vectorIdSaIdEE17_M_default_appendEm: # @_ZNSt6vectorIdSaIdEE17_M_default_appendEm
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	beqz	$a1, .LBB44_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s4, $fp, 16
	sub.d	$a1, $s4, $a0
	srai.d	$a1, $a1, 3
	bgeu	$a1, $s0, .LBB44_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB44_14
# %bb.3:                                # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	addi.d	$a1, $s0, -1
	stx.d	$zero, $a0, $s2
	beqz	$a1, .LBB44_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 8
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB44_5:                               # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit32
	blez	$s2, .LBB44_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB44_7:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB44_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB44_9:                               # %_ZZNSt6vectorIdSaIdEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB44_13
.LBB44_10:
	st.d	$zero, $a0, 0
	addi.d	$s1, $s0, -1
	addi.d	$s0, $a0, 8
	beqz	$s1, .LBB44_12
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a2, $s1, 3
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s0, $s1, $s0, 3
.LBB44_12:                              # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB44_13:
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
	ret
.LBB44_14:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end44:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end44-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.type	save_ncells,@object             # @save_ncells
	.bss
	.globl	save_ncells
	.p2align	2, 0x0
save_ncells:
	.word	0                               # 0x0
	.size	save_ncells, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"H"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"U"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"V"
	.size	.L.str.2, 2

	.type	_ZZN5State31apply_boundary_conditions_localEvE4nlft,@object # @_ZZN5State31apply_boundary_conditions_localEvE4nlft
	.local	_ZZN5State31apply_boundary_conditions_localEvE4nlft
	.comm	_ZZN5State31apply_boundary_conditions_localEvE4nlft,8,8
	.type	_ZZN5State31apply_boundary_conditions_localEvE4nrht,@object # @_ZZN5State31apply_boundary_conditions_localEvE4nrht
	.local	_ZZN5State31apply_boundary_conditions_localEvE4nrht
	.comm	_ZZN5State31apply_boundary_conditions_localEvE4nrht,8,8
	.type	_ZZN5State31apply_boundary_conditions_localEvE4nbot,@object # @_ZZN5State31apply_boundary_conditions_localEvE4nbot
	.local	_ZZN5State31apply_boundary_conditions_localEvE4nbot
	.comm	_ZZN5State31apply_boundary_conditions_localEvE4nbot,8,8
	.type	_ZZN5State31apply_boundary_conditions_localEvE4ntop,@object # @_ZZN5State31apply_boundary_conditions_localEvE4ntop
	.local	_ZZN5State31apply_boundary_conditions_localEvE4ntop
	.comm	_ZZN5State31apply_boundary_conditions_localEvE4ntop,8,8
	.type	_ZZN5State31apply_boundary_conditions_ghostEvE4nlft,@object # @_ZZN5State31apply_boundary_conditions_ghostEvE4nlft
	.local	_ZZN5State31apply_boundary_conditions_ghostEvE4nlft
	.comm	_ZZN5State31apply_boundary_conditions_ghostEvE4nlft,8,8
	.type	_ZZN5State31apply_boundary_conditions_ghostEvE4nrht,@object # @_ZZN5State31apply_boundary_conditions_ghostEvE4nrht
	.local	_ZZN5State31apply_boundary_conditions_ghostEvE4nrht
	.comm	_ZZN5State31apply_boundary_conditions_ghostEvE4nrht,8,8
	.type	_ZZN5State31apply_boundary_conditions_ghostEvE4nbot,@object # @_ZZN5State31apply_boundary_conditions_ghostEvE4nbot
	.local	_ZZN5State31apply_boundary_conditions_ghostEvE4nbot
	.comm	_ZZN5State31apply_boundary_conditions_ghostEvE4nbot,8,8
	.type	_ZZN5State31apply_boundary_conditions_ghostEvE4ntop,@object # @_ZZN5State31apply_boundary_conditions_ghostEvE4ntop
	.local	_ZZN5State31apply_boundary_conditions_ghostEvE4ntop
	.comm	_ZZN5State31apply_boundary_conditions_ghostEvE4ntop,8,8
	.type	_ZZN5State22calc_finite_differenceEdE5H_new,@object # @_ZZN5State22calc_finite_differenceEdE5H_new
	.local	_ZZN5State22calc_finite_differenceEdE5H_new
	.comm	_ZZN5State22calc_finite_differenceEdE5H_new,8,8
	.type	_ZZN5State22calc_finite_differenceEdE5U_new,@object # @_ZZN5State22calc_finite_differenceEdE5U_new
	.local	_ZZN5State22calc_finite_differenceEdE5U_new
	.comm	_ZZN5State22calc_finite_differenceEdE5U_new,8,8
	.type	_ZZN5State22calc_finite_differenceEdE5V_new,@object # @_ZZN5State22calc_finite_differenceEdE5V_new
	.local	_ZZN5State22calc_finite_differenceEdE5V_new
	.comm	_ZZN5State22calc_finite_differenceEdE5V_new,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"H_new"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"U_new"
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"V_new"
	.size	.L.str.5, 6

	.type	_ZZN5State32calc_finite_difference_via_facesEdE2Hx,@object # @_ZZN5State32calc_finite_difference_via_facesEdE2Hx
	.local	_ZZN5State32calc_finite_difference_via_facesEdE2Hx
	.comm	_ZZN5State32calc_finite_difference_via_facesEdE2Hx,24,8
	.type	_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx,@object # @_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx
	.local	_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx
	.comm	_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx,8,8
	.hidden	__dso_handle
	.type	_ZZN5State32calc_finite_difference_via_facesEdE2Ux,@object # @_ZZN5State32calc_finite_difference_via_facesEdE2Ux
	.local	_ZZN5State32calc_finite_difference_via_facesEdE2Ux
	.comm	_ZZN5State32calc_finite_difference_via_facesEdE2Ux,24,8
	.type	_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux,@object # @_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux
	.local	_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux
	.comm	_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux,8,8
	.type	_ZZN5State32calc_finite_difference_via_facesEdE2Vx,@object # @_ZZN5State32calc_finite_difference_via_facesEdE2Vx
	.local	_ZZN5State32calc_finite_difference_via_facesEdE2Vx
	.comm	_ZZN5State32calc_finite_difference_via_facesEdE2Vx,24,8
	.type	_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx,@object # @_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx
	.local	_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx
	.comm	_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx,8,8
	.type	_ZZN5State32calc_finite_difference_via_facesEdE2Hy,@object # @_ZZN5State32calc_finite_difference_via_facesEdE2Hy
	.local	_ZZN5State32calc_finite_difference_via_facesEdE2Hy
	.comm	_ZZN5State32calc_finite_difference_via_facesEdE2Hy,24,8
	.type	_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy,@object # @_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy
	.local	_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy
	.comm	_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy,8,8
	.type	_ZZN5State32calc_finite_difference_via_facesEdE2Uy,@object # @_ZZN5State32calc_finite_difference_via_facesEdE2Uy
	.local	_ZZN5State32calc_finite_difference_via_facesEdE2Uy
	.comm	_ZZN5State32calc_finite_difference_via_facesEdE2Uy,24,8
	.type	_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy,@object # @_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy
	.local	_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy
	.comm	_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy,8,8
	.type	_ZZN5State32calc_finite_difference_via_facesEdE2Vy,@object # @_ZZN5State32calc_finite_difference_via_facesEdE2Vy
	.local	_ZZN5State32calc_finite_difference_via_facesEdE2Vy
	.comm	_ZZN5State32calc_finite_difference_via_facesEdE2Vy,24,8
	.type	_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy,@object # @_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy
	.local	_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy
	.comm	_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy,8,8
	.type	_ZZN5State32calc_finite_difference_via_facesEdE5H_new,@object # @_ZZN5State32calc_finite_difference_via_facesEdE5H_new
	.local	_ZZN5State32calc_finite_difference_via_facesEdE5H_new
	.comm	_ZZN5State32calc_finite_difference_via_facesEdE5H_new,8,8
	.type	_ZZN5State32calc_finite_difference_via_facesEdE5U_new,@object # @_ZZN5State32calc_finite_difference_via_facesEdE5U_new
	.local	_ZZN5State32calc_finite_difference_via_facesEdE5U_new
	.comm	_ZZN5State32calc_finite_difference_via_facesEdE5U_new,8,8
	.type	_ZZN5State32calc_finite_difference_via_facesEdE5V_new,@object # @_ZZN5State32calc_finite_difference_via_facesEdE5V_new
	.local	_ZZN5State32calc_finite_difference_via_facesEdE5V_new
	.comm	_ZZN5State32calc_finite_difference_via_facesEdE5V_new,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s ic %d sym %d H[ic] %lf Hsym %lf diff %lf\n"
	.size	.L.str.6, 45

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s ic %d sym %d U[ic] %lf Usym %lf diff %lf\n"
	.size	.L.str.7, 45

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s ic %d sym %d V[ic] %lf Vsym %lf diff %lf\n"
	.size	.L.str.8, 45

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"CPU"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"GPU"
	.size	.L.str.10, 4

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"          "
	.size	.L.str.11, 11

	.type	.L__const._ZN5State12timer_outputE12state_timers17mesh_device_typesi.device_string,@object # @__const._ZN5State12timer_outputE12state_timers17mesh_device_typesi.device_string
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L__const._ZN5State12timer_outputE12state_timers17mesh_device_typesi.device_string:
	.dword	.L.str.9
	.dword	.L.str.10
	.size	.L__const._ZN5State12timer_outputE12state_timers17mesh_device_typesi.device_string, 16

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"%3s: %.*s%-30.30s\t"
	.size	.L.str.12, 19

	.type	_ZL22state_timer_descriptor,@object # @_ZL22state_timer_descriptor
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZL22state_timer_descriptor:
	.dword	.L.str.49
	.dword	.L.str.50
	.dword	.L.str.51
	.dword	.L.str.52
	.dword	.L.str.53
	.dword	.L.str.54
	.dword	.L.str.55
	.dword	.L.str.56
	.dword	.L.str.57
	.size	_ZL22state_timer_descriptor, 72

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"s"
	.size	.L.str.13, 2

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"DEBUG %s at cycle %d H & H_check %d %lf %lf\n"
	.size	.L.str.14, 45

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"DEBUG %s at cycle %d U & U_check %d %lf %lf\n"
	.size	.L.str.15, 45

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"DEBUG %s at cycle %d V & V_check %d %lf %lf\n"
	.size	.L.str.16, 45

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"out%1d"
	.size	.L.str.18, 7

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"w"
	.size	.L.str.19, 2

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%d:   index global  i     j     lev   nlft  nrht  nbot  ntop \n"
	.size	.L.str.20, 63

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%d: %6d  %6d %4d  %4d   %4d  %4d  %4d  %4d  %4d \n"
	.size	.L.str.21, 50

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%d:  index     H        U         V      i     j     lev\n"
	.size	.L.str.22, 58

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"%d: %6d %lf %lf %lf %4d  %4d   %4d  \n"
	.size	.L.str.23, 38

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"state_int_vals"
	.size	.L.str.24, 15

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"state_cpu_timers"
	.size	.L.str.25, 17

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"state_gpu_timers"
	.size	.L.str.26, 17

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"storage"
	.size	.L.str.27, 8

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"CRUX version mismatch for state data, version on file is %d, version in code is %d\n"
	.size	.L.str.28, 84

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"       %-30s %lg\n"
	.size	.L.str.31, 18

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"iteration%d"
	.size	.L.str.32, 12

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Iteration = %d\t\tSimuation Time = %lf\n"
	.size	.L.str.33, 38

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"mesh->ncells = %lu\t\tmesh->ncells_ghost = %lu\n"
	.size	.L.str.34, 46

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Initial Mass: %14.12lg\t\tSimulation Time: %lf\n"
	.size	.L.str.35, 46

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Initial Mass: %14.12lg\t\tIteration Mass: %14.12lg\n"
	.size	.L.str.36, 50

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Mass Difference: %12.6lg\t\tMass Difference Percentage: %12.6lg%%\n"
	.size	.L.str.37, 65

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"DEBUG in print_local ncycle is %d\n"
	.size	.L.str.38, 35

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"%d:  index     H        U         V      i     j     lev   nlft   nrht   nbot   ntop\n"
	.size	.L.str.39, 86

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"%d: %6d                              %4d  %4d   %4d  %4d  %4d  %4d  %4d\n"
	.size	.L.str.40, 73

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"%d: %6d %lf %lf %lf %4d  %4d   %4d  %4d  %4d  %4d  %4d\n"
	.size	.L.str.41, 56

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"%d: %6d %lf %lf %lf %4d  %4d   %4d\n"
	.size	.L.str.42, 36

	.type	.L__const._ZN5State17print_failure_logEiddddb.filename,@object # @__const._ZN5State17print_failure_logEiddddb.filename
.L__const._ZN5State17print_failure_logEiddddb.filename:
	.asciz	"failure.log"
	.size	.L__const._ZN5State17print_failure_logEiddddb.filename, 12

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Failed because of nan for H_sum was equal to NAN\n"
	.size	.L.str.43, 50

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Failed because mass difference is outside of accepted percentage\n"
	.size	.L.str.44, 66

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"rollback%d.log"
	.size	.L.str.45, 15

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Rolling back because of nan for H_sum was equal to NAN\n"
	.size	.L.str.46, 56

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Rolling back because mass difference is outside of accepted percentage\n"
	.size	.L.str.47, 72

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Rollback attempt %d of %d ---> Number of attempts left:%d\n"
	.size	.L.str.48, 59

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"state_timer_apply_BCs"
	.size	.L.str.49, 22

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"state_timer_set_timestep"
	.size	.L.str.50, 25

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"state_timer_finite_difference"
	.size	.L.str.51, 30

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"state_timer_refine_potential"
	.size	.L.str.52, 29

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"state_timer_calc_mpot"
	.size	.L.str.53, 22

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"state_timer_rezone_all"
	.size	.L.str.54, 23

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"state_timer_mass_sum"
	.size	.L.str.55, 21

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"state_timer_read"
	.size	.L.str.56, 17

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"state_timer_write"
	.size	.L.str.57, 18

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"vector::_M_default_append"
	.size	.L.str.58, 26

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.59, 49

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" ---- State object info -----"
	.size	.Lstr, 30

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"       === Restored state cpu timers ==="
	.size	.Lstr.2, 41

	.globl	_ZN5StateC1EP4Mesh
	.type	_ZN5StateC1EP4Mesh,@function
_ZN5StateC1EP4Mesh = _ZN5StateC2EP4Mesh
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
	.addrsig_sym _ZZN5State32calc_finite_difference_via_facesEdE2Hx
	.addrsig_sym _ZGVZN5State32calc_finite_difference_via_facesEdE2Hx
	.addrsig_sym __dso_handle
	.addrsig_sym _ZZN5State32calc_finite_difference_via_facesEdE2Ux
	.addrsig_sym _ZGVZN5State32calc_finite_difference_via_facesEdE2Ux
	.addrsig_sym _ZZN5State32calc_finite_difference_via_facesEdE2Vx
	.addrsig_sym _ZGVZN5State32calc_finite_difference_via_facesEdE2Vx
	.addrsig_sym _ZZN5State32calc_finite_difference_via_facesEdE2Hy
	.addrsig_sym _ZGVZN5State32calc_finite_difference_via_facesEdE2Hy
	.addrsig_sym _ZZN5State32calc_finite_difference_via_facesEdE2Uy
	.addrsig_sym _ZGVZN5State32calc_finite_difference_via_facesEdE2Uy
	.addrsig_sym _ZZN5State32calc_finite_difference_via_facesEdE2Vy
	.addrsig_sym _ZGVZN5State32calc_finite_difference_via_facesEdE2Vy
