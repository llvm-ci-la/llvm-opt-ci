	.file	"ocean.cpp"
	.text
	.globl	_ZN4Cell9getCellAtE10Coordinate # -- Begin function _ZN4Cell9getCellAtE10Coordinate
	.p2align	5
	.type	_ZN4Cell9getCellAtE10Coordinate,@function
_ZN4Cell9getCellAtE10Coordinate:        # @_ZN4Cell9getCellAtE10Coordinate
# %bb.0:
	ld.wu	$a0, $a1, 4
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3904
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(cells)
	addi.d	$a2, $a2, %pc_lo12(cells)
	ld.wu	$a1, $a1, 0
	add.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ret
.Lfunc_end0:
	.size	_ZN4Cell9getCellAtE10Coordinate, .Lfunc_end0-_ZN4Cell9getCellAtE10Coordinate
                                        # -- End function
	.globl	_ZN4Cell12assignCellAtE10CoordinatePS_ # -- Begin function _ZN4Cell12assignCellAtE10CoordinatePS_
	.p2align	5
	.type	_ZN4Cell12assignCellAtE10CoordinatePS_,@function
_ZN4Cell12assignCellAtE10CoordinatePS_: # @_ZN4Cell12assignCellAtE10CoordinatePS_
# %bb.0:
	ld.wu	$a0, $a1, 4
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3904
	mul.d	$a0, $a0, $a3
	pcalau12i	$a3, %pc_hi20(cells)
	addi.d	$a3, $a3, %pc_lo12(cells)
	ld.wu	$a1, $a1, 0
	add.d	$a0, $a3, $a0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
	ret
.Lfunc_end1:
	.size	_ZN4Cell12assignCellAtE10CoordinatePS_, .Lfunc_end1-_ZN4Cell12assignCellAtE10CoordinatePS_
                                        # -- End function
	.globl	_ZN4Cell20getNeighborWithImageEc # -- Begin function _ZN4Cell20getNeighborWithImageEc
	.p2align	5
	.type	_ZN4Cell20getNeighborWithImageEc,@function
_ZN4Cell20getNeighborWithImageEc:       # @_ZN4Cell20getNeighborWithImageEc
# %bb.0:
	ld.d	$a2, $a0, 8
	ld.w	$a5, $a2, 4
	andi	$a1, $a1, 255
	pcalau12i	$a7, %pc_hi20(Ocean1)
	move	$a3, $a5
	bnez	$a5, .LBB2_2
# %bb.1:
	ld.d	$a3, $a7, %pc_lo12(Ocean1)
	ld.w	$a3, $a3, 0
.LBB2_2:                                # %_ZN4Cell5northEv.exit
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3904
	mul.d	$a3, $a3, $a4
	pcalau12i	$a6, %pc_hi20(cells)
	addi.d	$a6, $a6, %pc_lo12(cells)
	ld.wu	$a2, $a2, 0
	add.d	$a3, $a6, $a3
	slli.d	$t0, $a2, 3
	ldx.d	$a3, $a3, $t0
	ld.bu	$a3, $a3, 16
	bne	$a3, $a1, .LBB2_6
# %bb.3:
	move	$a3, $a5
	bnez	$a5, .LBB2_5
# %bb.4:
	ld.d	$a3, $a7, %pc_lo12(Ocean1)
	ld.w	$a3, $a3, 0
.LBB2_5:                                # %_ZN4Cell5northEv.exit14
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a6, $a3
	ldx.d	$a3, $a3, $t0
	st.d	$a3, $sp, 0
	ori	$a3, $zero, 1
	b	.LBB2_7
.LBB2_6:
	move	$a3, $zero
.LBB2_7:
	ld.d	$a7, $a7, %pc_lo12(Ocean1)
	ld.w	$t1, $a7, 0
	addi.w	$t2, $a5, 1
	mod.wu	$t1, $t2, $t1
	bstrpick.d	$t1, $t1, 31, 0
	mul.d	$t1, $t1, $a4
	add.d	$t1, $a6, $t1
	ldx.d	$t1, $t1, $t0
	ld.bu	$t2, $t1, 16
	bstrpick.d	$t0, $a5, 31, 0
	bne	$t2, $a1, .LBB2_9
# %bb.8:
	slli.d	$a5, $a3, 3
	addi.d	$a3, $a3, 1
	addi.d	$t2, $sp, 0
	stx.d	$t1, $a5, $t2
.LBB2_9:
	ld.w	$a5, $a7, 4
	addi.w	$a7, $a2, 1
	mod.wu	$a7, $a7, $a5
	mul.d	$a4, $t0, $a4
	add.d	$a4, $a6, $a4
	bstrpick.d	$a6, $a7, 31, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a4, $a6
	ld.bu	$a7, $a6, 16
	bne	$a7, $a1, .LBB2_11
# %bb.10:
	slli.d	$a7, $a3, 3
	addi.d	$a3, $a3, 1
	addi.d	$t0, $sp, 0
	stx.d	$a6, $a7, $t0
.LBB2_11:
	beqz	$a2, .LBB2_13
# %bb.12:                               # %_ZN4Cell4westEv.exit.thread
	addi.d	$a2, $a2, -1
	b	.LBB2_14
.LBB2_13:                               # %_ZN4Cell4westEv.exit
	addi.d	$a2, $a5, -1
.LBB2_14:                               # %_ZN4Cell4westEv.exit.thread
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a4, $a2
	ld.bu	$a4, $a2, 16
	bne	$a4, $a1, .LBB2_16
# %bb.15:                               # %.thread21
	slli.d	$a0, $a3, 3
	addi.d	$a3, $a3, 1
	addi.d	$a1, $sp, 0
	stx.d	$a2, $a0, $a1
	b	.LBB2_17
.LBB2_16:
	beqz	$a3, .LBB2_18
.LBB2_17:
	addi.d	$fp, $a3, -1
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $fp
	ori	$a1, $zero, 3
	lu32i.d	$a1, 1
	lu52i.d	$a1, $a1, -2048
	mulh.d	$a1, $a0, $a1
	add.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 30
	add.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 0
	ldx.d	$a0, $a0, $a1
.LBB2_18:
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	_ZN4Cell20getNeighborWithImageEc, .Lfunc_end2-_ZN4Cell20getNeighborWithImageEc
                                        # -- End function
	.globl	_ZN4Cell5northEv                # -- Begin function _ZN4Cell5northEv
	.p2align	5
	.type	_ZN4Cell5northEv,@function
_ZN4Cell5northEv:                       # @_ZN4Cell5northEv
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 4
	bnez	$a1, .LBB3_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(Ocean1)
	ld.d	$a1, $a1, %pc_lo12(Ocean1)
	ld.w	$a1, $a1, 0
.LBB3_2:
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3904
	mul.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(cells)
	addi.d	$a2, $a2, %pc_lo12(cells)
	ld.wu	$a0, $a0, 0
	add.d	$a1, $a2, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ret
.Lfunc_end3:
	.size	_ZN4Cell5northEv, .Lfunc_end3-_ZN4Cell5northEv
                                        # -- End function
	.globl	_ZN4Cell5southEv                # -- Begin function _ZN4Cell5southEv
	.p2align	5
	.type	_ZN4Cell5southEv,@function
_ZN4Cell5southEv:                       # @_ZN4Cell5southEv
# %bb.0:
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(Ocean1)
	ld.d	$a1, $a1, %pc_lo12(Ocean1)
	ld.w	$a2, $a0, 4
	ld.w	$a1, $a1, 0
	addi.w	$a2, $a2, 1
	mod.wu	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3904
	mul.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(cells)
	addi.d	$a2, $a2, %pc_lo12(cells)
	ld.wu	$a0, $a0, 0
	add.d	$a1, $a2, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ret
.Lfunc_end4:
	.size	_ZN4Cell5southEv, .Lfunc_end4-_ZN4Cell5southEv
                                        # -- End function
	.globl	_ZN4Cell4eastEv                 # -- Begin function _ZN4Cell4eastEv
	.p2align	5
	.type	_ZN4Cell4eastEv,@function
_ZN4Cell4eastEv:                        # @_ZN4Cell4eastEv
# %bb.0:
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(Ocean1)
	ld.d	$a1, $a1, %pc_lo12(Ocean1)
	ld.w	$a2, $a0, 0
	ld.w	$a1, $a1, 4
	addi.w	$a2, $a2, 1
	ld.wu	$a0, $a0, 4
	mod.wu	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3904
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(cells)
	addi.d	$a2, $a2, %pc_lo12(cells)
	add.d	$a0, $a2, $a0
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ret
.Lfunc_end5:
	.size	_ZN4Cell4eastEv, .Lfunc_end5-_ZN4Cell4eastEv
                                        # -- End function
	.globl	_ZN4Cell4westEv                 # -- Begin function _ZN4Cell4westEv
	.p2align	5
	.type	_ZN4Cell4westEv,@function
_ZN4Cell4westEv:                        # @_ZN4Cell4westEv
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	bnez	$a1, .LBB6_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(Ocean1)
	ld.d	$a1, $a1, %pc_lo12(Ocean1)
	ld.w	$a1, $a1, 4
.LBB6_2:
	ld.wu	$a0, $a0, 4
	addi.d	$a1, $a1, -1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3904
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(cells)
	addi.d	$a2, $a2, %pc_lo12(cells)
	add.d	$a0, $a2, $a0
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ret
.Lfunc_end6:
	.size	_ZN4Cell4westEv, .Lfunc_end6-_ZN4Cell4westEv
                                        # -- End function
	.globl	_ZN6Random14nextIntBetweenEii   # -- Begin function _ZN6Random14nextIntBetweenEii
	.p2align	5
	.type	_ZN6Random14nextIntBetweenEii,@function
_ZN6Random14nextIntBetweenEii:          # @_ZN6Random14nextIntBetweenEii
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $fp
	ori	$a1, $zero, 3
	lu32i.d	$a1, 1
	lu52i.d	$a1, $a1, -2048
	mulh.d	$a1, $a0, $a1
	add.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 30
	add.w	$a0, $a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	_ZN6Random14nextIntBetweenEii, .Lfunc_end7-_ZN6Random14nextIntBetweenEii
                                        # -- End function
	.globl	_ZN4Cell21getEmptyNeighborCoordEv # -- Begin function _ZN4Cell21getEmptyNeighborCoordEv
	.p2align	5
	.type	_ZN4Cell21getEmptyNeighborCoordEv,@function
_ZN4Cell21getEmptyNeighborCoordEv:      # @_ZN4Cell21getEmptyNeighborCoordEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$fp, $a0
	ori	$a1, $zero, 45
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN4Cell20getNeighborWithImageEc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	_ZN4Cell21getEmptyNeighborCoordEv, .Lfunc_end8-_ZN4Cell21getEmptyNeighborCoordEv
                                        # -- End function
	.globl	_ZN4Cell20getPreyNeighborCoordEv # -- Begin function _ZN4Cell20getPreyNeighborCoordEv
	.p2align	5
	.type	_ZN4Cell20getPreyNeighborCoordEv,@function
_ZN4Cell20getPreyNeighborCoordEv:       # @_ZN4Cell20getPreyNeighborCoordEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$fp, $a0
	ori	$a1, $zero, 102
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN4Cell20getNeighborWithImageEc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	_ZN4Cell20getPreyNeighborCoordEv, .Lfunc_end9-_ZN4Cell20getPreyNeighborCoordEv
                                        # -- End function
	.globl	_ZN4Cell9reproduceE10Coordinate # -- Begin function _ZN4Cell9reproduceE10Coordinate
	.p2align	5
	.type	_ZN4Cell9reproduceE10Coordinate,@function
_ZN4Cell9reproduceE10Coordinate:        # @_ZN4Cell9reproduceE10Coordinate
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
	move	$s0, $a1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Cell+16)
	st.d	$a0, $fp, 0
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 45
	st.b	$a0, $fp, 16
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN4Cell9reproduceE10Coordinate, .Lfunc_end10-_ZN4Cell9reproduceE10Coordinate
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
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
	.uleb128 .Lfunc_end10-.Ltmp1            #   Call between .Ltmp1 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Cell7displayEv              # -- Begin function _ZN4Cell7displayEv
	.p2align	5
	.type	_ZN4Cell7displayEv,@function
_ZN4Cell7displayEv:                     # @_ZN4Cell7displayEv
# %bb.0:
	ret
.Lfunc_end11:
	.size	_ZN4Cell7displayEv, .Lfunc_end11-_ZN4Cell7displayEv
                                        # -- End function
	.globl	_ZN4Prey8moveFromE10CoordinateS0_ # -- Begin function _ZN4Prey8moveFromE10CoordinateS0_
	.p2align	5
	.type	_ZN4Prey8moveFromE10CoordinateS0_,@function
_ZN4Prey8moveFromE10CoordinateS0_:      # @_ZN4Prey8moveFromE10CoordinateS0_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$a1, $a0, 20
	ld.wu	$a0, $a2, 0
	ld.w	$a2, $s0, 0
	addi.w	$s4, $a1, -1
	addi.w	$a1, $a0, 0
	st.w	$s4, $fp, 20
	beq	$a1, $a2, .LBB12_9
# %bb.1:
	ld.wu	$a1, $s1, 4
	ld.w	$a2, $s0, 4
	addi.w	$a3, $a1, 0
	beq	$a3, $a2, .LBB12_9
# %bb.2:
	lu12i.w	$a2, 1
	ori	$s2, $a2, 3904
	mul.d	$a1, $a1, $s2
	pcalau12i	$a2, %pc_hi20(cells)
	addi.d	$s3, $a2, %pc_lo12(cells)
	add.d	$a1, $s3, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB12_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	ld.w	$s4, $fp, 20
.LBB12_4:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s1, 0
	ld.wu	$a2, $s1, 4
	st.w	$a1, $a0, 0
	st.w	$a2, $a0, 4
	st.d	$a0, $fp, 8
	mul.d	$a0, $a2, $s2
	add.d	$a0, $s3, $a0
	slli.d	$a1, $a1, 3
	stx.d	$fp, $a0, $a1
	blez	$s4, .LBB12_7
# %bb.5:
	ld.w	$s1, $s0, 0
	ld.w	$s0, $s0, 4
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Cell+16)
	st.d	$a0, $fp, 0
.Ltmp3:                                 # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.6:
	st.w	$s1, $a0, 0
	st.w	$s0, $a0, 4
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 45
	st.b	$a0, $fp, 16
	b	.LBB12_8
.LBB12_7:
	ori	$a0, $zero, 6
	ld.w	$s1, $s0, 0
	ld.w	$s0, $s0, 4
	ld.d	$a1, $fp, 0
	st.w	$a0, $fp, 20
	st.w	$s1, $sp, 16
	st.w	$s0, $sp, 20
	ld.d	$a2, $a1, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$fp, $a0
.LBB12_8:                               # %.sink.split
	bstrpick.d	$a0, $s0, 31, 0
	mul.d	$a0, $a0, $s2
	add.d	$a0, $s3, $a0
	bstrpick.d	$a1, $s1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$fp, $a0, $a1
.LBB12_9:
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB12_10:
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN4Prey8moveFromE10CoordinateS0_, .Lfunc_end12-_ZN4Prey8moveFromE10CoordinateS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp4            #   Call between .Ltmp4 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Prey9reproduceE10Coordinate # -- Begin function _ZN4Prey9reproduceE10Coordinate
	.p2align	5
	.type	_ZN4Prey9reproduceE10Coordinate,@function
_ZN4Prey9reproduceE10Coordinate:        # @_ZN4Prey9reproduceE10Coordinate
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Cell+16)
	st.d	$a0, $fp, 0
.Ltmp6:                                 # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.1:
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	st.d	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(_ZTV4Prey+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Prey+16)
	pcalau12i	$a1, %pc_hi20(Ocean1)
	ld.d	$a1, $a1, %pc_lo12(Ocean1)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 6
	ld.w	$a2, $a1, 8
	st.w	$a0, $fp, 20
	ori	$a0, $zero, 102
	st.b	$a0, $fp, 16
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, 8
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB13_2:
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN4Prey9reproduceE10Coordinate, .Lfunc_end13-_ZN4Prey9reproduceE10Coordinate
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin2           #   Call between .Lfunc_begin2 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin2           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin2           # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp7            #   Call between .Ltmp7 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8Predator7processEv          # -- Begin function _ZN8Predator7processEv
	.p2align	5
	.type	_ZN8Predator7processEv,@function
_ZN8Predator7processEv:                 # @_ZN8Predator7processEv
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 24
	beqz	$a0, .LBB14_4
# %bb.1:
	ori	$a1, $zero, 102
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Cell20getNeighborWithImageEc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 8
	ld.d	$a3, $fp, 8
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a3, 0
	beq	$a0, $a1, .LBB14_6
# %bb.2:
	ld.w	$a2, $a2, 4
	ld.w	$a3, $a3, 4
	beq	$a2, $a3, .LBB14_6
# %bb.3:
	pcalau12i	$a4, %pc_hi20(Ocean1)
	ld.d	$a4, $a4, %pc_lo12(Ocean1)
	ld.w	$a5, $a4, 8
	addi.d	$a5, $a5, -1
	st.w	$a5, $a4, 8
	ori	$a4, $zero, 6
	st.w	$a4, $fp, 24
	st.w	$a1, $sp, 16
	st.w	$a3, $sp, 20
	st.w	$a0, $sp, 8
	st.w	$a2, $sp, 12
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
	b	.LBB14_7
.LBB14_4:
	ld.d	$a0, $fp, 8
	ld.wu	$s1, $a0, 0
	ld.wu	$s2, $a0, 4
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Cell+16)
	st.d	$a0, $s0, 0
.Ltmp9:                                 # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.5:
	st.w	$s1, $a0, 0
	st.w	$s2, $a0, 4
	st.d	$a0, $s0, 8
	ori	$a0, $zero, 45
	st.b	$a0, $s0, 16
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3904
	mul.d	$a0, $s2, $a0
	pcalau12i	$a1, %pc_hi20(cells)
	addi.d	$a1, $a1, %pc_lo12(cells)
	pcalau12i	$a2, %pc_hi20(Ocean1)
	ld.d	$a2, $a2, %pc_lo12(Ocean1)
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a2, 12
	slli.d	$a3, $s1, 3
	ld.d	$a4, $fp, 0
	stx.d	$s0, $a0, $a3
	addi.d	$a0, $a1, -1
	st.w	$a0, $a2, 12
	ld.d	$a1, $a4, 16
	move	$a0, $fp
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	jr	$a1
.LBB14_6:                               # %_ZN4Prey7processEv.exit
	ori	$a1, $zero, 45
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Cell20getNeighborWithImageEc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
.LBB14_7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Prey8moveFromE10CoordinateS0_)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB14_8:
.Ltmp11:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN8Predator7processEv, .Lfunc_end14-_ZN8Predator7processEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Lfunc_begin3           #   Call between .Lfunc_begin3 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin3           # >> Call Site 2 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin3          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp10           #   Call between .Ltmp10 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN4Prey7processEv,"axG",@progbits,_ZN4Prey7processEv,comdat
	.weak	_ZN4Prey7processEv              # -- Begin function _ZN4Prey7processEv
	.p2align	5
	.type	_ZN4Prey7processEv,@function
_ZN4Prey7processEv:                     # @_ZN4Prey7processEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a1, $zero, 45
	pcaddu18i	$ra, %call36(_ZN4Cell20getNeighborWithImageEc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Prey8moveFromE10CoordinateS0_)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	_ZN4Prey7processEv, .Lfunc_end15-_ZN4Prey7processEv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN8Predator9reproduceE10Coordinate # -- Begin function _ZN8Predator9reproduceE10Coordinate
	.p2align	5
	.type	_ZN8Predator9reproduceE10Coordinate,@function
_ZN8Predator9reproduceE10Coordinate:    # @_ZN8Predator9reproduceE10Coordinate
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	move	$fp, $a1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 0
	ld.w	$s1, $fp, 4
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Cell+16)
	st.d	$a0, $fp, 0
.Ltmp12:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.1:
	st.w	$s0, $a0, 0
	st.w	$s1, $a0, 4
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 6
	lu32i.d	$a0, 6
	st.d	$a0, $fp, 20
	pcalau12i	$a0, %pc_hi20(_ZTV8Predator+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Predator+16)
	pcalau12i	$a1, %pc_hi20(Ocean1)
	ld.d	$a1, $a1, %pc_lo12(Ocean1)
	ld.w	$a2, $a1, 12
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 83
	st.b	$a0, $fp, 16
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, 12
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB16_2:
.Ltmp14:                                # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN8Predator9reproduceE10Coordinate, .Lfunc_end16-_ZN8Predator9reproduceE10Coordinate
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin4          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Lfunc_end16-.Ltmp13           #   Call between .Ltmp13 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN6Random8randRealEv           # -- Begin function _ZN6Random8randRealEv
	.p2align	5
	.type	_ZN6Random8randRealEv,@function
_ZN6Random8randRealEv:                  # @_ZN6Random8randRealEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	lu12i.w	$a0, 196608
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end17:
	.size	_ZN6Random8randRealEv, .Lfunc_end17-_ZN6Random8randRealEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN5Ocean10initializeEv
.LCPI18_0:
	.word	500                             # 0x1f4
	.word	1000                            # 0x3e8
	.word	1000                            # 0x3e8
	.word	200                             # 0xc8
	.text
	.globl	_ZN5Ocean10initializeEv
	.p2align	5
	.type	_ZN5Ocean10initializeEv,@function
_ZN5Ocean10initializeEv:                # @_ZN5Ocean10initializeEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3797
	lu32i.d	$a1, 2117
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI18_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI18_0)
	st.d	$a0, $fp, 24
	ori	$a0, $zero, 750
	st.w	$a0, $fp, 16
	vst	$vr0, $fp, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN5Ocean9initCellsEv)
	jr	$t8
.Lfunc_end18:
	.size	_ZN5Ocean10initializeEv, .Lfunc_end18-_ZN5Ocean10initializeEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Ocean9initCellsEv           # -- Begin function _ZN5Ocean9initCellsEv
	.p2align	5
	.type	_ZN5Ocean9initCellsEv,@function
_ZN5Ocean9initCellsEv:                  # @_ZN5Ocean9initCellsEv
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.wu	$s1, $a0, 0
	beqz	$s1, .LBB19_7
# %bb.1:                                # %.preheader.lr.ph.i
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.wu	$a0, $a0, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB19_7
# %bb.2:                                # %.preheader.us.preheader.i
	pcalau12i	$a0, %pc_hi20(cells)
	addi.d	$fp, $a0, %pc_lo12(cells)
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV4Cell+16)
	move	$s5, $zero
	ori	$s6, $zero, 45
	lu12i.w	$a0, 1
	ori	$s7, $a0, 3904
	.p2align	4, , 16
.LBB19_3:                               # %.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_4 Depth 2
	move	$s8, $zero
	move	$s3, $fp
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB19_4:                               #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s4, $a0, 0
.Ltmp15:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=2
	st.w	$s8, $a0, 0
	st.w	$s5, $a0, 4
	st.d	$a0, $s0, 8
	st.b	$s6, $s0, 16
	st.d	$s0, $s3, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	addi.d	$s8, $s8, 1
	bnez	$s2, .LBB19_4
# %bb.6:                                # %._crit_edge.us.i
                                        #   in Loop: Header=BB19_3 Depth=1
	addi.d	$s5, $s5, 1
	add.d	$fp, $fp, $s7
	bne	$s5, $s1, .LBB19_3
.LBB19_7:                               # %_ZN5Ocean13addEmptyCellsEv.exit
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN5Ocean12addObstaclesEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN5Ocean12addPredatorsEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN5Ocean7addPreyEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Ocean1)
	st.d	$fp, $a0, %pc_lo12(Ocean1)
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
.LBB19_8:                               # %.split.us.i
.Ltmp17:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN5Ocean9initCellsEv, .Lfunc_end19-_ZN5Ocean9initCellsEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin5          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Lfunc_end19-.Ltmp16           #   Call between .Ltmp16 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN5Ocean13addEmptyCellsEv      # -- Begin function _ZN5Ocean13addEmptyCellsEv
	.p2align	5
	.type	_ZN5Ocean13addEmptyCellsEv,@function
_ZN5Ocean13addEmptyCellsEv:             # @_ZN5Ocean13addEmptyCellsEv
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	ld.wu	$s0, $a0, 0
	beqz	$s0, .LBB20_7
# %bb.1:                                # %.preheader.lr.ph
	ld.wu	$a0, $a0, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB20_7
# %bb.2:                                # %.preheader.us.preheader
	pcalau12i	$a0, %pc_hi20(cells)
	addi.d	$s1, $a0, %pc_lo12(cells)
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$s3, $a0, %pc_lo12(_ZTV4Cell+16)
	move	$s4, $zero
	ori	$s5, $zero, 45
	lu12i.w	$a0, 1
	ori	$s6, $a0, 3904
	.p2align	4, , 16
.LBB20_3:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_4 Depth 2
	move	$s7, $zero
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	move	$s2, $s1
	.p2align	4, , 16
.LBB20_4:                               #   Parent Loop BB20_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $a0, 0
.Ltmp18:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=2
	st.w	$s7, $a0, 0
	st.w	$s4, $a0, 4
	st.d	$a0, $fp, 8
	st.b	$s5, $fp, 16
	st.d	$fp, $s2, 0
	addi.d	$s2, $s2, 8
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 1
	bnez	$s8, .LBB20_4
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB20_3 Depth=1
	addi.d	$s4, $s4, 1
	add.d	$s1, $s1, $s6
	bne	$s4, $s0, .LBB20_3
.LBB20_7:                               # %._crit_edge14
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
.LBB20_8:                               # %.split.us
.Ltmp20:                                # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN5Ocean13addEmptyCellsEv, .Lfunc_end20-_ZN5Ocean13addEmptyCellsEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin6          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Lfunc_end20-.Ltmp19           #   Call between .Ltmp19 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN5Ocean12addObstaclesEv       # -- Begin function _ZN5Ocean12addObstaclesEv
	.p2align	5
	.type	_ZN5Ocean12addObstaclesEv,@function
_ZN5Ocean12addObstaclesEv:              # @_ZN5Ocean12addObstaclesEv
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB21_5
# %bb.1:                                # %.lr.ph
	ori	$a0, $zero, 3
	lu32i.d	$a0, 1
	lu52i.d	$s1, $a0, -2048
	lu12i.w	$a0, 1
	ori	$s2, $a0, 3904
	pcalau12i	$a0, %pc_hi20(cells)
	addi.d	$s3, $a0, %pc_lo12(cells)
	ori	$s4, $zero, 45
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Cell+16)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV8Obstacle+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTV8Obstacle+16)
	move	$s7, $zero
	.p2align	4, , 16
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 4
	addi.w	$s0, $a0, -1
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s0
	mulh.d	$a1, $a0, $s1
	add.d	$a0, $a1, $a0
	ld.w	$a1, $fp, 0
	srli.d	$a2, $a0, 63
	srli.d	$a0, $a0, 30
	add.d	$s0, $a0, $a2
	addi.w	$s5, $a1, -1
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s5
	mulh.d	$a1, $a0, $s1
	add.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 30
	add.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s2
	add.d	$a0, $s3, $a0
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, 16
	bne	$a1, $s4, .LBB21_2
# %bb.3:                                #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 0
	ld.wu	$s8, $a1, 0
	ld.wu	$s5, $a1, 4
	ld.d	$a1, $a2, 16
	jirl	$ra, $a1, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $s0, 0
.Ltmp21:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.4:                                #   in Loop: Header=BB21_2 Depth=1
	st.w	$s8, $a0, 0
	st.w	$s5, $a0, 4
	st.d	$a0, $s0, 8
	st.d	$s6, $s0, 0
	ori	$a0, $zero, 35
	st.b	$a0, $s0, 16
	mul.d	$a0, $s5, $s2
	ld.w	$a1, $fp, 16
	add.d	$a0, $s3, $a0
	slli.d	$a2, $s8, 3
	addi.w	$s7, $s7, 1
	stx.d	$s0, $a0, $a2
	bltu	$s7, $a1, .LBB21_2
.LBB21_5:                               # %._crit_edge
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
.LBB21_6:
.Ltmp23:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN5Ocean12addObstaclesEv, .Lfunc_end21-_ZN5Ocean12addObstaclesEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp21-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin7          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp22           #   Call between .Ltmp22 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN5Ocean12addPredatorsEv       # -- Begin function _ZN5Ocean12addPredatorsEv
	.p2align	5
	.type	_ZN5Ocean12addPredatorsEv,@function
_ZN5Ocean12addPredatorsEv:              # @_ZN5Ocean12addPredatorsEv
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	ld.w	$a0, $a0, 12
	beqz	$a0, .LBB22_5
# %bb.1:                                # %.lr.ph
	ori	$a0, $zero, 3
	lu32i.d	$a0, 1
	lu52i.d	$s1, $a0, -2048
	lu12i.w	$a0, 1
	ori	$s2, $a0, 3904
	pcalau12i	$a0, %pc_hi20(cells)
	addi.d	$s3, $a0, %pc_lo12(cells)
	ori	$s4, $zero, 45
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Cell+16)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s6, $zero, 6
	lu32i.d	$s6, 6
	pcalau12i	$a0, %pc_hi20(_ZTV8Predator+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Predator+16)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $zero
	.p2align	4, , 16
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 4
	addi.w	$s0, $a0, -1
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s0
	mulh.d	$a1, $a0, $s1
	add.d	$a0, $a1, $a0
	ld.w	$a1, $fp, 0
	srli.d	$a2, $a0, 63
	srli.d	$a0, $a0, 30
	add.d	$s0, $a0, $a2
	addi.w	$s5, $a1, -1
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s5
	mulh.d	$a1, $a0, $s1
	add.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 30
	add.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s2
	add.d	$a0, $s3, $a0
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, 16
	bne	$a1, $s4, .LBB22_2
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 0
	ld.wu	$s5, $a1, 0
	ld.wu	$s7, $a1, 4
	ld.d	$a1, $a2, 16
	jirl	$ra, $a1, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $s0, 0
.Ltmp24:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.4:                                #   in Loop: Header=BB22_2 Depth=1
	st.w	$s5, $a0, 0
	st.w	$s7, $a0, 4
	st.d	$a0, $s0, 8
	st.d	$s6, $s0, 20
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 83
	st.b	$a0, $s0, 16
	mul.d	$a0, $s7, $s2
	ld.w	$a1, $fp, 12
	add.d	$a0, $s3, $a0
	slli.d	$a2, $s5, 3
	addi.w	$s8, $s8, 1
	stx.d	$s0, $a0, $a2
	bltu	$s8, $a1, .LBB22_2
.LBB22_5:                               # %._crit_edge
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
.LBB22_6:
.Ltmp26:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN5Ocean12addPredatorsEv, .Lfunc_end22-_ZN5Ocean12addPredatorsEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table22:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Lfunc_begin8          #   Call between .Lfunc_begin8 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin8          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Lfunc_end22-.Ltmp25           #   Call between .Ltmp25 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN5Ocean7addPreyEv             # -- Begin function _ZN5Ocean7addPreyEv
	.p2align	5
	.type	_ZN5Ocean7addPreyEv,@function
_ZN5Ocean7addPreyEv:                    # @_ZN5Ocean7addPreyEv
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	ld.w	$a0, $a0, 12
	beqz	$a0, .LBB23_5
# %bb.1:                                # %.lr.ph
	ori	$a0, $zero, 3
	lu32i.d	$a0, 1
	lu52i.d	$s1, $a0, -2048
	lu12i.w	$a0, 1
	ori	$s2, $a0, 3904
	pcalau12i	$a0, %pc_hi20(cells)
	addi.d	$s3, $a0, %pc_lo12(cells)
	ori	$s4, $zero, 45
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Cell+16)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV4Prey+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTV4Prey+16)
	move	$s7, $zero
	.p2align	4, , 16
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 4
	addi.w	$s0, $a0, -1
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s0
	mulh.d	$a1, $a0, $s1
	add.d	$a0, $a1, $a0
	ld.w	$a1, $fp, 0
	srli.d	$a2, $a0, 63
	srli.d	$a0, $a0, 30
	add.d	$s0, $a0, $a2
	addi.w	$s5, $a1, -1
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s5
	mulh.d	$a1, $a0, $s1
	add.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 30
	add.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s2
	add.d	$a0, $s3, $a0
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, 16
	bne	$a1, $s4, .LBB23_2
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 0
	ld.wu	$s8, $a1, 0
	ld.wu	$s5, $a1, 4
	ld.d	$a1, $a2, 16
	jirl	$ra, $a1, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $s0, 0
.Ltmp27:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.4:                                #   in Loop: Header=BB23_2 Depth=1
	st.w	$s8, $a0, 0
	st.w	$s5, $a0, 4
	st.d	$a0, $s0, 8
	st.d	$s6, $s0, 0
	ori	$a0, $zero, 6
	st.w	$a0, $s0, 20
	ori	$a0, $zero, 102
	st.b	$a0, $s0, 16
	mul.d	$a0, $s5, $s2
	ld.w	$a1, $fp, 12
	add.d	$a0, $s3, $a0
	slli.d	$a2, $s8, 3
	addi.w	$s7, $s7, 1
	stx.d	$s0, $a0, $a2
	bltu	$s7, $a1, .LBB23_2
.LBB23_5:                               # %._crit_edge
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
.LBB23_6:
.Ltmp29:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN5Ocean7addPreyEv, .Lfunc_end23-_ZN5Ocean7addPreyEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp27-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin9          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Lfunc_end23-.Ltmp28           #   Call between .Ltmp28 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN5Ocean12displayStatsEi       # -- Begin function _ZN5Ocean12displayStatsEi
	.p2align	5
	.type	_ZN5Ocean12displayStatsEi,@function
_ZN5Ocean12displayStatsEi:              # @_ZN5Ocean12displayStatsEi
# %bb.0:
	ret
.Lfunc_end24:
	.size	_ZN5Ocean12displayStatsEi, .Lfunc_end24-_ZN5Ocean12displayStatsEi
                                        # -- End function
	.globl	_ZN5Ocean13displayBorderEv      # -- Begin function _ZN5Ocean13displayBorderEv
	.p2align	5
	.type	_ZN5Ocean13displayBorderEv,@function
_ZN5Ocean13displayBorderEv:             # @_ZN5Ocean13displayBorderEv
# %bb.0:
	ret
.Lfunc_end25:
	.size	_ZN5Ocean13displayBorderEv, .Lfunc_end25-_ZN5Ocean13displayBorderEv
                                        # -- End function
	.globl	_ZN5Ocean17getEmptyCellCoordEv  # -- Begin function _ZN5Ocean17getEmptyCellCoordEv
	.p2align	5
	.type	_ZN5Ocean17getEmptyCellCoordEv,@function
_ZN5Ocean17getEmptyCellCoordEv:         # @_ZN5Ocean17getEmptyCellCoordEv
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
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 3
	lu32i.d	$a0, 1
	lu52i.d	$s1, $a0, -2048
	lu12i.w	$a0, 1
	ori	$s2, $a0, 3904
	pcalau12i	$a0, %pc_hi20(cells)
	addi.d	$s3, $a0, %pc_lo12(cells)
	ori	$s4, $zero, 45
	.p2align	4, , 16
.LBB26_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 4
	addi.w	$s5, $a0, -1
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s5
	mulh.d	$a1, $a0, $s1
	add.d	$a0, $a1, $a0
	ld.w	$a1, $s0, 0
	srli.d	$a2, $a0, 63
	srli.d	$a0, $a0, 30
	add.d	$s5, $a0, $a2
	addi.w	$s6, $a1, -1
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s6
	mulh.d	$a1, $a0, $s1
	add.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 30
	add.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s2
	add.d	$a0, $s3, $a0
	bstrpick.d	$a1, $s5, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, 16
	bne	$a1, $s4, .LBB26_1
# %bb.2:
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 16
	st.d	$a1, $fp, 0
	jirl	$ra, $a2, 0
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
.Lfunc_end26:
	.size	_ZN5Ocean17getEmptyCellCoordEv, .Lfunc_end26-_ZN5Ocean17getEmptyCellCoordEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Ocean12displayCellsEv       # -- Begin function _ZN5Ocean12displayCellsEv
	.p2align	5
	.type	_ZN5Ocean12displayCellsEv,@function
_ZN5Ocean12displayCellsEv:              # @_ZN5Ocean12displayCellsEv
# %bb.0:                                # %._crit_edge
	ret
.Lfunc_end27:
	.size	_ZN5Ocean12displayCellsEv, .Lfunc_end27-_ZN5Ocean12displayCellsEv
                                        # -- End function
	.globl	_ZN5Ocean3runEv                 # -- Begin function _ZN5Ocean3runEv
	.p2align	5
	.type	_ZN5Ocean3runEv,@function
_ZN5Ocean3runEv:                        # @_ZN5Ocean3runEv
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
	move	$fp, $a0
	ld.wu	$a0, $a0, 0
	ori	$s0, $zero, 1000
	pcalau12i	$a1, %pc_hi20(cells)
	addi.d	$s1, $a1, %pc_lo12(cells)
	move	$s2, $zero
	lu12i.w	$a1, 1
	ori	$s3, $a1, 3904
	b	.LBB28_2
	.p2align	4, , 16
.LBB28_1:                               # %.loopexit
                                        #   in Loop: Header=BB28_2 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $s0, .LBB28_12
.LBB28_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_8 Depth 2
                                        #       Child Loop BB28_10 Depth 3
	ld.w	$a1, $fp, 12
	beqz	$a1, .LBB28_1
# %bb.3:                                #   in Loop: Header=BB28_2 Depth=1
	ld.w	$a1, $fp, 8
	beqz	$a1, .LBB28_1
# %bb.4:                                #   in Loop: Header=BB28_2 Depth=1
	beqz	$a0, .LBB28_1
# %bb.5:                                #   in Loop: Header=BB28_2 Depth=1
	ld.w	$a1, $fp, 4
	beqz	$a1, .LBB28_1
# %bb.6:                                # %.preheader.preheader
                                        #   in Loop: Header=BB28_2 Depth=1
	move	$s4, $zero
	ori	$a1, $zero, 1
	move	$s5, $s1
	b	.LBB28_8
	.p2align	4, , 16
.LBB28_7:                               #   in Loop: Header=BB28_8 Depth=2
	move	$a1, $zero
	addi.d	$s4, $s4, 1
	add.d	$s5, $s5, $s3
	bgeu	$s4, $a0, .LBB28_1
.LBB28_8:                               # %.preheader
                                        #   Parent Loop BB28_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_10 Depth 3
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB28_7
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB28_8 Depth=2
	move	$s6, $zero
	move	$s7, $s5
	.p2align	4, , 16
.LBB28_10:                              #   Parent Loop BB28_2 Depth=1
                                        #     Parent Loop BB28_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s7, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 24
	jirl	$ra, $a1, 0
	ld.wu	$a1, $fp, 4
	addi.d	$s6, $s6, 1
	addi.d	$s7, $s7, 8
	bltu	$s6, $a1, .LBB28_10
# %bb.11:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB28_8 Depth=2
	ld.wu	$a0, $fp, 0
	addi.d	$s4, $s4, 1
	add.d	$s5, $s5, $s3
	bltu	$s4, $a0, .LBB28_8
	b	.LBB28_1
.LBB28_12:
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
.Lfunc_end28:
	.size	_ZN5Ocean3runEv, .Lfunc_end28-_ZN5Ocean3runEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI29_0:
	.word	500                             # 0x1f4
	.word	1000                            # 0x3e8
	.word	1000                            # 0x3e8
	.word	200                             # 0xc8
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3797
	lu32i.d	$a1, 2117
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI29_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI29_0)
	st.d	$a0, $fp, 24
	ori	$a0, $zero, 750
	st.w	$a0, $fp, 16
	vst	$vr0, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN5Ocean9initCellsEv)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 0
	ld.w	$a0, $fp, 4
	ori	$s0, $zero, 1000
	pcalau12i	$a2, %pc_hi20(cells)
	addi.d	$s1, $a2, %pc_lo12(cells)
	move	$s2, $zero
	lu12i.w	$a2, 1
	ori	$s3, $a2, 3904
	b	.LBB29_2
	.p2align	4, , 16
.LBB29_1:                               # %.loopexit.i
                                        #   in Loop: Header=BB29_2 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $s0, .LBB29_12
.LBB29_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_8 Depth 2
                                        #       Child Loop BB29_10 Depth 3
	ld.w	$a2, $fp, 12
	beqz	$a2, .LBB29_1
# %bb.3:                                #   in Loop: Header=BB29_2 Depth=1
	ld.w	$a2, $fp, 8
	beqz	$a2, .LBB29_1
# %bb.4:                                #   in Loop: Header=BB29_2 Depth=1
	beqz	$a1, .LBB29_1
# %bb.5:                                #   in Loop: Header=BB29_2 Depth=1
	addi.w	$a2, $a0, 0
	beqz	$a2, .LBB29_1
# %bb.6:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB29_2 Depth=1
	move	$s4, $zero
	ori	$a2, $zero, 1
	move	$s5, $s1
	b	.LBB29_8
	.p2align	4, , 16
.LBB29_7:                               #   in Loop: Header=BB29_8 Depth=2
	move	$a2, $zero
	addi.d	$s4, $s4, 1
	add.d	$s5, $s5, $s3
	bgeu	$s4, $a1, .LBB29_1
.LBB29_8:                               # %.preheader.i
                                        #   Parent Loop BB29_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_10 Depth 3
	addi.w	$a2, $a2, 0
	beqz	$a2, .LBB29_7
# %bb.9:                                # %.lr.ph.i
                                        #   in Loop: Header=BB29_8 Depth=2
	move	$s6, $zero
	move	$s7, $s5
	.p2align	4, , 16
.LBB29_10:                              #   Parent Loop BB29_2 Depth=1
                                        #     Parent Loop BB29_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s7, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 24
	jirl	$ra, $a1, 0
	ld.wu	$a0, $fp, 4
	addi.d	$s6, $s6, 1
	addi.d	$s7, $s7, 8
	bltu	$s6, $a0, .LBB29_10
# %bb.11:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB29_8 Depth=2
	ld.wu	$a1, $fp, 0
	move	$a2, $a0
	addi.d	$s4, $s4, 1
	add.d	$s5, $s5, $s3
	bltu	$s4, $a1, .LBB29_8
	b	.LBB29_1
.LBB29_12:                              # %_ZN5Ocean3runEv.exit
	move	$a0, $zero
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
.Lfunc_end29:
	.size	main, .Lfunc_end29-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4CellD0Ev,"axG",@progbits,_ZN4CellD0Ev,comdat
	.weak	_ZN4CellD0Ev                    # -- Begin function _ZN4CellD0Ev
	.p2align	5
	.type	_ZN4CellD0Ev,@function
_ZN4CellD0Ev:                           # @_ZN4CellD0Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV4Cell+16)
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 0
	beqz	$a2, .LBB30_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB30_2:                               # %_ZN4CellD2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end30:
	.size	_ZN4CellD0Ev, .Lfunc_end30-_ZN4CellD0Ev
                                        # -- End function
	.section	.text._ZN4Cell7processEv,"axG",@progbits,_ZN4Cell7processEv,comdat
	.weak	_ZN4Cell7processEv              # -- Begin function _ZN4Cell7processEv
	.p2align	5
	.type	_ZN4Cell7processEv,@function
_ZN4Cell7processEv:                     # @_ZN4Cell7processEv
# %bb.0:
	ret
.Lfunc_end31:
	.size	_ZN4Cell7processEv, .Lfunc_end31-_ZN4Cell7processEv
                                        # -- End function
	.section	.text._ZN4PreyD0Ev,"axG",@progbits,_ZN4PreyD0Ev,comdat
	.weak	_ZN4PreyD0Ev                    # -- Begin function _ZN4PreyD0Ev
	.p2align	5
	.type	_ZN4PreyD0Ev,@function
_ZN4PreyD0Ev:                           # @_ZN4PreyD0Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV4Cell+16)
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 0
	beqz	$a2, .LBB32_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB32_2:                               # %_ZN4CellD2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end32:
	.size	_ZN4PreyD0Ev, .Lfunc_end32-_ZN4PreyD0Ev
                                        # -- End function
	.section	.text._ZN4CellD2Ev,"axG",@progbits,_ZN4CellD2Ev,comdat
	.weak	_ZN4CellD2Ev                    # -- Begin function _ZN4CellD2Ev
	.p2align	5
	.type	_ZN4CellD2Ev,@function
_ZN4CellD2Ev:                           # @_ZN4CellD2Ev
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV4Cell+16)
	ld.d	$a0, $a1, 8
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB33_2
# %bb.1:
	ori	$a1, $zero, 8
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB33_2:
	ret
.Lfunc_end33:
	.size	_ZN4CellD2Ev, .Lfunc_end33-_ZN4CellD2Ev
                                        # -- End function
	.section	.text._ZN8PredatorD0Ev,"axG",@progbits,_ZN8PredatorD0Ev,comdat
	.weak	_ZN8PredatorD0Ev                # -- Begin function _ZN8PredatorD0Ev
	.p2align	5
	.type	_ZN8PredatorD0Ev,@function
_ZN8PredatorD0Ev:                       # @_ZN8PredatorD0Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV4Cell+16)
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 0
	beqz	$a2, .LBB34_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB34_2:                               # %_ZN4CellD2Ev.exit
	ori	$a1, $zero, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end34:
	.size	_ZN8PredatorD0Ev, .Lfunc_end34-_ZN8PredatorD0Ev
                                        # -- End function
	.section	.text._ZN8ObstacleD0Ev,"axG",@progbits,_ZN8ObstacleD0Ev,comdat
	.weak	_ZN8ObstacleD0Ev                # -- Begin function _ZN8ObstacleD0Ev
	.p2align	5
	.type	_ZN8ObstacleD0Ev,@function
_ZN8ObstacleD0Ev:                       # @_ZN8ObstacleD0Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV4Cell+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV4Cell+16)
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 0
	beqz	$a2, .LBB35_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB35_2:                               # %_ZN4CellD2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end35:
	.size	_ZN8ObstacleD0Ev, .Lfunc_end35-_ZN8ObstacleD0Ev
                                        # -- End function
	.type	cells,@object                   # @cells
	.bss
	.globl	cells
	.p2align	3, 0x0
cells:
	.space	4000000
	.size	cells, 4000000

	.type	Ocean1,@object                  # @Ocean1
	.globl	Ocean1
	.p2align	3, 0x0
Ocean1:
	.dword	0
	.size	Ocean1, 8

	.type	_ZTV4Cell,@object               # @_ZTV4Cell
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV4Cell
	.p2align	3, 0x0
_ZTV4Cell:
	.dword	0
	.dword	_ZTI4Cell
	.dword	_ZN4Cell9reproduceE10Coordinate
	.dword	_ZN4CellD2Ev
	.dword	_ZN4CellD0Ev
	.dword	_ZN4Cell7processEv
	.size	_ZTV4Cell, 48

	.type	_ZTI4Cell,@object               # @_ZTI4Cell
	.globl	_ZTI4Cell
	.p2align	3, 0x0
_ZTI4Cell:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS4Cell
	.size	_ZTI4Cell, 16

	.type	_ZTS4Cell,@object               # @_ZTS4Cell
	.section	.rodata,"a",@progbits
	.globl	_ZTS4Cell
_ZTS4Cell:
	.asciz	"4Cell"
	.size	_ZTS4Cell, 6

	.type	_ZTV4Prey,@object               # @_ZTV4Prey
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV4Prey
	.p2align	3, 0x0
_ZTV4Prey:
	.dword	0
	.dword	_ZTI4Prey
	.dword	_ZN4Prey9reproduceE10Coordinate
	.dword	_ZN4CellD2Ev
	.dword	_ZN4PreyD0Ev
	.dword	_ZN4Prey7processEv
	.size	_ZTV4Prey, 48

	.type	_ZTI4Prey,@object               # @_ZTI4Prey
	.globl	_ZTI4Prey
	.p2align	3, 0x0
_ZTI4Prey:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS4Prey
	.dword	_ZTI4Cell
	.size	_ZTI4Prey, 24

	.type	_ZTS4Prey,@object               # @_ZTS4Prey
	.section	.rodata,"a",@progbits
	.globl	_ZTS4Prey
_ZTS4Prey:
	.asciz	"4Prey"
	.size	_ZTS4Prey, 6

	.type	_ZTV8Predator,@object           # @_ZTV8Predator
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV8Predator
	.p2align	3, 0x0
_ZTV8Predator:
	.dword	0
	.dword	_ZTI8Predator
	.dword	_ZN8Predator9reproduceE10Coordinate
	.dword	_ZN4CellD2Ev
	.dword	_ZN8PredatorD0Ev
	.dword	_ZN8Predator7processEv
	.size	_ZTV8Predator, 48

	.type	_ZTI8Predator,@object           # @_ZTI8Predator
	.globl	_ZTI8Predator
	.p2align	3, 0x0
_ZTI8Predator:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS8Predator
	.dword	_ZTI4Prey
	.size	_ZTI8Predator, 24

	.type	_ZTS8Predator,@object           # @_ZTS8Predator
	.section	.rodata,"a",@progbits
	.globl	_ZTS8Predator
_ZTS8Predator:
	.asciz	"8Predator"
	.size	_ZTS8Predator, 10

	.type	_ZTV8Obstacle,@object           # @_ZTV8Obstacle
	.section	.data.rel.ro._ZTV8Obstacle,"awG",@progbits,_ZTV8Obstacle,comdat
	.weak	_ZTV8Obstacle
	.p2align	3, 0x0
_ZTV8Obstacle:
	.dword	0
	.dword	_ZTI8Obstacle
	.dword	_ZN4Cell9reproduceE10Coordinate
	.dword	_ZN4CellD2Ev
	.dword	_ZN8ObstacleD0Ev
	.dword	_ZN4Cell7processEv
	.size	_ZTV8Obstacle, 48

	.type	_ZTI8Obstacle,@object           # @_ZTI8Obstacle
	.section	.data.rel.ro._ZTI8Obstacle,"awG",@progbits,_ZTI8Obstacle,comdat
	.weak	_ZTI8Obstacle
	.p2align	3, 0x0
_ZTI8Obstacle:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS8Obstacle
	.dword	_ZTI4Cell
	.size	_ZTI8Obstacle, 24

	.type	_ZTS8Obstacle,@object           # @_ZTS8Obstacle
	.section	.rodata._ZTS8Obstacle,"aG",@progbits,_ZTS8Obstacle,comdat
	.weak	_ZTS8Obstacle
_ZTS8Obstacle:
	.asciz	"8Obstacle"
	.size	_ZTS8Obstacle, 10

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
	.addrsig_sym _ZTI4Cell
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS4Cell
	.addrsig_sym _ZTI4Prey
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS4Prey
	.addrsig_sym _ZTI8Predator
	.addrsig_sym _ZTS8Predator
	.addrsig_sym _ZTI8Obstacle
	.addrsig_sym _ZTS8Obstacle
