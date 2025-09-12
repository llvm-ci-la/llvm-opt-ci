	.file	"crux.cpp"
	.text
	.globl	_ZN4CruxC2Eiib                  # -- Begin function _ZN4CruxC2Eiib
	.p2align	5
	.type	_ZN4CruxC2Eiib,@function
_ZN4CruxC2Eiib:                         # @_ZN4CruxC2Eiib
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$a2, $a0, 0
	st.w	$a1, $a0, 4
	st.w	$zero, $a0, 8
	pcalau12i	$s1, %pc_hi20(do_crux_timing)
	bnez	$a1, .LBB0_2
# %bb.1:
	move	$s0, $a2
	beqz	$a3, .LBB0_5
.LBB0_2:
	ori	$a0, $zero, 1
	st.b	$a0, $s1, %pc_lo12(do_crux_timing)
	pcalau12i	$a0, %pc_hi20(checkpoint_directory)
	addi.d	$a0, $a0, %pc_lo12(checkpoint_directory)
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB0_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(checkpoint_directory)
	addi.d	$a0, $a0, %pc_lo12(checkpoint_directory)
	ori	$a1, $zero, 511
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
.LBB0_4:
	ld.w	$s0, $fp, 0
.LBB0_5:
	slli.d	$fp, $s0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(crux_data)
	st.d	$a0, $a1, %pc_lo12(crux_data)
	blez	$s0, .LBB0_8
# %bb.6:                                # %.lr.ph.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, %pc_lo12(crux_data)
	stx.d	$zero, $a2, $a0
	addi.d	$a0, $a0, 8
	bne	$fp, $a0, .LBB0_7
.LBB0_8:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, %pc_lo12(do_crux_timing)
	pcalau12i	$a2, %pc_hi20(crux_data_size)
	st.d	$a0, $a2, %pc_lo12(crux_data_size)
	beqz	$a1, .LBB0_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(checkpoint_directory)
	addi.d	$a2, $a0, %pc_lo12(checkpoint_directory)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(crux_time_fp)
	st.d	$a0, $a1, %pc_lo12(crux_time_fp)
.LBB0_10:
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end0:
	.size	_ZN4CruxC2Eiib, .Lfunc_end0-_ZN4CruxC2Eiib
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4CruxD2Ev
.LCPI1_0:
	.dword	0x408f400000000000              # double 1000
.LCPI1_1:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	_ZN4CruxD2Ev
	.p2align	5
	.type	_ZN4CruxD2Ev,@function
_ZN4CruxD2Ev:                           # @_ZN4CruxD2Ev
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
	ld.w	$a0, $a0, 0
	pcalau12i	$s0, %pc_hi20(crux_data)
	blez	$a0, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, %pc_lo12(crux_data)
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB1_2
.LBB1_3:                                # %._crit_edge
	ld.d	$a0, $s0, %pc_lo12(crux_data)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(crux_data_size)
	ld.d	$a0, $a0, %pc_lo12(crux_data_size)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(do_crux_timing)
	ld.bu	$a0, $a0, %pc_lo12(do_crux_timing)
	beqz	$a0, .LBB1_6
# %bb.4:                                # %._crit_edge
	pcalau12i	$s0, %pc_hi20(checkpoint_timing_count)
	ld.w	$a0, $s0, %pc_lo12(checkpoint_timing_count)
	blez	$a0, .LBB1_6
# %bb.5:
	pcalau12i	$s1, %pc_hi20(checkpoint_timing_sum)
	fld.s	$fa0, $s1, %pc_lo12(checkpoint_timing_sum)
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	pcalau12i	$s2, %pc_hi20(checkpoint_timing_size)
	fld.s	$fa2, $s2, %pc_lo12(checkpoint_timing_size)
	fdiv.s	$fa1, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_0)
	fdiv.s	$fa0, $fa2, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_1)
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fs0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a1, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(checkpoint_timing_count)
	fld.s	$fa0, $s1, %pc_lo12(checkpoint_timing_sum)
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa0, $fa1
	fcvt.d.s	$fa1, $fa1
	fld.s	$fa2, $s2, %pc_lo12(checkpoint_timing_size)
	fmul.d	$fa1, $fa1, $fs0
	pcalau12i	$s0, %pc_hi20(crux_time_fp)
	ld.d	$a0, $s0, %pc_lo12(crux_time_fp)
	fdiv.s	$fa0, $fa2, $fa0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(crux_time_fp)
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.LBB1_6:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	_ZN4CruxD2Ev, .Lfunc_end1-_ZN4CruxD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Crux16store_MallocPlusE10MallocPlus # -- Begin function _ZN4Crux16store_MallocPlusE10MallocPlus
	.p2align	5
	.type	_ZN4Crux16store_MallocPlusE10MallocPlus,@function
_ZN4Crux16store_MallocPlusE10MallocPlus: # @_ZN4Crux16store_MallocPlusE10MallocPlus
	.cfi_startproc
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
	move	$fp, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus26memory_entry_by_name_beginEv)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus24memory_entry_by_name_endEv)
	jirl	$ra, $ra, 0
	beq	$s0, $a0, .LBB2_16
# %bb.1:                                # %.lr.ph30.preheader
	pcalau12i	$s3, %pc_hi20(store_fp)
	ori	$s4, $zero, 8
	ori	$s5, $zero, 4
	ori	$s6, $zero, 6
	addi.w	$s7, $zero, -1
	lu32i.d	$s7, 0
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB2_5
.LBB2_2:                                #   in Loop: Header=BB2_5 Depth=1
	ori	$s1, $zero, 1
.LBB2_3:                                # %._crit_edge
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s2, $s0, 0
	ld.d	$a0, $s0, 48
	ld.d	$a3, $s3, %pc_lo12(store_fp)
	ori	$a1, $zero, 1
	ori	$a2, $zero, 30
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	addi.d	$a0, $a0, -4
	sltui	$a0, $a0, 1
	ld.d	$a3, $s3, %pc_lo12(store_fp)
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a1, $a0, $a1
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus25memory_entry_by_name_nextEv)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus24memory_entry_by_name_endEv)
	jirl	$ra, $ra, 0
	beq	$s0, $a0, .LBB2_16
.LBB2_5:                                # %.lr.ph30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_10 Depth 2
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 16
	beqz	$a0, .LBB2_4
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB2_2
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $s0, 16
	ori	$s1, $zero, 1
	bgeu	$a0, $s6, .LBB2_11
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	move	$a2, $zero
.LBB2_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$a3, $a2, 1
	.p2align	4, , 16
.LBB2_10:                               # %scalar.ph
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $a1, $a2
	mul.w	$s1, $s1, $a2
	bstrpick.d	$a2, $a3, 31, 0
	addi.w	$a3, $a3, 1
	bltu	$a2, $a0, .LBB2_10
	b	.LBB2_3
.LBB2_11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a3, $a0, -1
	bstrpick.d	$a4, $a3, 31, 0
	move	$a2, $zero
	beq	$a4, $s7, .LBB2_9
# %bb.12:                               # %vector.scevcheck
                                        #   in Loop: Header=BB2_5 Depth=1
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB2_9
# %bb.13:                               # %vector.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	bstrpick.d	$a2, $a0, 32, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a1, 16
	move	$a4, $a2
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB2_14:                               # %vector.body
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vshuf4i.w	$vr2, $vr2, 8
	vshuf4i.w	$vr3, $vr3, 8
	vmul.w	$vr0, $vr0, $vr2
	vmul.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB2_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB2_5 Depth=1
	vmul.w	$vr0, $vr1, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s1, $vr0, 0
	beq	$a0, $a2, .LBB2_3
	b	.LBB2_9
.LBB2_16:                               # %._crit_edge31
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
.Lfunc_end2:
	.size	_ZN4Crux16store_MallocPlusE10MallocPlus, .Lfunc_end2-_ZN4Crux16store_MallocPlusE10MallocPlus
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Crux18store_field_headerEPKci # -- Begin function _ZN4Crux18store_field_headerEPKci
	.p2align	5
	.type	_ZN4Crux18store_field_headerEPKci,@function
_ZN4Crux18store_field_headerEPKci:      # @_ZN4Crux18store_field_headerEPKci
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end3:
	.size	_ZN4Crux18store_field_headerEPKci, .Lfunc_end3-_ZN4Crux18store_field_headerEPKci
                                        # -- End function
	.globl	_ZN4Crux26store_replicated_int_arrayEPim # -- Begin function _ZN4Crux26store_replicated_int_arrayEPim
	.p2align	5
	.type	_ZN4Crux26store_replicated_int_arrayEPim,@function
_ZN4Crux26store_replicated_int_arrayEPim: # @_ZN4Crux26store_replicated_int_arrayEPim
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 4
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end4:
	.size	_ZN4Crux26store_replicated_int_arrayEPim, .Lfunc_end4-_ZN4Crux26store_replicated_int_arrayEPim
                                        # -- End function
	.globl	_ZN4Crux29store_replicated_double_arrayEPdm # -- Begin function _ZN4Crux29store_replicated_double_arrayEPdm
	.p2align	5
	.type	_ZN4Crux29store_replicated_double_arrayEPdm,@function
_ZN4Crux29store_replicated_double_arrayEPdm: # @_ZN4Crux29store_replicated_double_arrayEPdm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 8
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end5:
	.size	_ZN4Crux29store_replicated_double_arrayEPdm, .Lfunc_end5-_ZN4Crux29store_replicated_double_arrayEPdm
                                        # -- End function
	.globl	_ZN4Crux15store_int_arrayEPim   # -- Begin function _ZN4Crux15store_int_arrayEPim
	.p2align	5
	.type	_ZN4Crux15store_int_arrayEPim,@function
_ZN4Crux15store_int_arrayEPim:          # @_ZN4Crux15store_int_arrayEPim
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 4
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end6:
	.size	_ZN4Crux15store_int_arrayEPim, .Lfunc_end6-_ZN4Crux15store_int_arrayEPim
                                        # -- End function
	.globl	_ZN4Crux18store_double_arrayEPdm # -- Begin function _ZN4Crux18store_double_arrayEPdm
	.p2align	5
	.type	_ZN4Crux18store_double_arrayEPdm,@function
_ZN4Crux18store_double_arrayEPdm:       # @_ZN4Crux18store_double_arrayEPdm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 8
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end7:
	.size	_ZN4Crux18store_double_arrayEPdm, .Lfunc_end7-_ZN4Crux18store_double_arrayEPdm
                                        # -- End function
	.globl	_ZN4Crux11store_beginEmi        # -- Begin function _ZN4Crux11store_beginEmi
	.p2align	5
	.type	_ZN4Crux11store_beginEmi,@function
_ZN4Crux11store_beginEmi:               # @_ZN4Crux11store_beginEmi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s1, $a0
	ld.w	$a0, $a0, 8
	ld.w	$a3, $s1, 0
	move	$s0, $a2
	move	$fp, $a1
	mod.w	$a0, $a0, $a3
	pcalau12i	$s2, %pc_hi20(cp_num)
	st.w	$a0, $s2, %pc_lo12(cp_num)
	pcalau12i	$a0, %pc_hi20(tcheckpoint_time)
	addi.d	$a0, $a0, %pc_lo12(tcheckpoint_time)
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 4
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB8_8
# %bb.1:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB8_5
# %bb.2:
	pcalau12i	$s0, %pc_hi20(crux_data)
	ld.w	$s3, $s2, %pc_lo12(cp_num)
	ld.d	$s1, $s0, %pc_lo12(crux_data)
	slli.d	$a0, $s3, 3
	ldx.d	$a0, $s1, $a0
	beqz	$a0, .LBB8_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, %pc_lo12(crux_data)
	ld.w	$s3, $s2, %pc_lo12(cp_num)
.LBB8_4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s3, 3
	stx.d	$a0, $s1, $a1
	ld.d	$a0, $s0, %pc_lo12(crux_data)
	pcalau12i	$a2, %pc_hi20(crux_data_size)
	ld.d	$a2, $a2, %pc_lo12(crux_data_size)
	ldx.d	$a0, $a0, $a1
	stx.d	$fp, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fmemopen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(store_fp)
	st.d	$a0, $a1, %pc_lo12(store_fp)
.LBB8_5:
	pcalau12i	$a0, %pc_hi20(do_crux_timing)
	ld.bu	$a0, $a0, %pc_lo12(do_crux_timing)
	beqz	$a0, .LBB8_7
.LBB8_6:
	srli.d	$a0, $fp, 1
	andi	$a1, $fp, 1
	or	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(checkpoint_timing_size)
	fld.s	$fa1, $a1, %pc_lo12(checkpoint_timing_size)
	movgr2fr.d	$fa2, $fp
	ffint.s.l	$fa2, $fa2
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa2, $fa0, $fcc0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a1, %pc_lo12(checkpoint_timing_size)
.LBB8_7:
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB8_8:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(checkpoint_directory)
	addi.d	$a2, $a0, %pc_lo12(checkpoint_directory)
	addi.d	$a0, $sp, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 76
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 116
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(store_fp)
	st.d	$a0, $a1, %pc_lo12(store_fp)
	bnez	$a0, .LBB8_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a1, $sp, 116
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB8_10:
	ld.w	$a3, $s2, %pc_lo12(cp_num)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(checkpoint_directory)
	addi.d	$a2, $a0, %pc_lo12(checkpoint_directory)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(symlink)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(do_crux_timing)
	ld.bu	$a0, $a0, %pc_lo12(do_crux_timing)
	bnez	$a0, .LBB8_6
	b	.LBB8_7
.Lfunc_end8:
	.size	_ZN4Crux11store_beginEmi, .Lfunc_end8-_ZN4Crux11store_beginEmi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Crux16store_named_intsEPKciPim # -- Begin function _ZN4Crux16store_named_intsEPKciPim
	.p2align	5
	.type	_ZN4Crux16store_named_intsEPKciPim,@function
_ZN4Crux16store_named_intsEPKciPim:     # @_ZN4Crux16store_named_intsEPKciPim
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(store_fp)
	ld.d	$a5, $s1, %pc_lo12(store_fp)
	move	$fp, $a4
	move	$s0, $a3
	move	$a0, $a1
	ori	$a1, $zero, 1
	move	$a3, $a5
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, %pc_lo12(store_fp)
	ori	$a1, $zero, 4
	move	$a0, $s0
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end9:
	.size	_ZN4Crux16store_named_intsEPKciPim, .Lfunc_end9-_ZN4Crux16store_named_intsEPKciPim
                                        # -- End function
	.globl	_ZN4Crux18restore_named_intsEPKciPim # -- Begin function _ZN4Crux18restore_named_intsEPKciPim
	.p2align	5
	.type	_ZN4Crux18restore_named_intsEPKciPim,@function
_ZN4Crux18restore_named_intsEPKciPim:   # @_ZN4Crux18restore_named_intsEPKciPim
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(restore_fp)
	ld.d	$a5, $s2, %pc_lo12(restore_fp)
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1
	move	$a3, $a5
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	beq	$s1, $a1, .LBB10_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_2:                               # %_ZN4Crux20restore_field_headerEPci.exit
	ld.d	$a3, $s2, %pc_lo12(restore_fp)
	ori	$a1, $zero, 4
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB10_4
# %bb.3:                                # %_ZN4Crux17restore_int_arrayEPim.exit
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB10_4:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $fp
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end10:
	.size	_ZN4Crux18restore_named_intsEPKciPim, .Lfunc_end10-_ZN4Crux18restore_named_intsEPKciPim
                                        # -- End function
	.globl	_ZN4Crux20restore_field_headerEPci # -- Begin function _ZN4Crux20restore_field_headerEPci
	.p2align	5
	.type	_ZN4Crux20restore_field_headerEPci,@function
_ZN4Crux20restore_field_headerEPci:     # @_ZN4Crux20restore_field_headerEPci
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$fp, $a2
	move	$a0, $a1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bne	$fp, $a1, .LBB11_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB11_2:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a2, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end11:
	.size	_ZN4Crux20restore_field_headerEPci, .Lfunc_end11-_ZN4Crux20restore_field_headerEPci
                                        # -- End function
	.globl	_ZN4Crux17restore_int_arrayEPim # -- Begin function _ZN4Crux17restore_int_arrayEPim
	.p2align	5
	.type	_ZN4Crux17restore_int_arrayEPim,@function
_ZN4Crux17restore_int_arrayEPim:        # @_ZN4Crux17restore_int_arrayEPim
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$s0, $a2
	move	$fp, $a1
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB12_2
# %bb.1:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB12_2:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	_ZN4Crux17restore_int_arrayEPim, .Lfunc_end12-_ZN4Crux17restore_int_arrayEPim
                                        # -- End function
	.globl	_ZN4Crux11store_boolsEPbm       # -- Begin function _ZN4Crux11store_boolsEPbm
	.p2align	5
	.type	_ZN4Crux11store_boolsEPbm,@function
_ZN4Crux11store_boolsEPbm:              # @_ZN4Crux11store_boolsEPbm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end13:
	.size	_ZN4Crux11store_boolsEPbm, .Lfunc_end13-_ZN4Crux11store_boolsEPbm
                                        # -- End function
	.globl	_ZN4Crux10store_intsEPim        # -- Begin function _ZN4Crux10store_intsEPim
	.p2align	5
	.type	_ZN4Crux10store_intsEPim,@function
_ZN4Crux10store_intsEPim:               # @_ZN4Crux10store_intsEPim
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 4
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end14:
	.size	_ZN4Crux10store_intsEPim, .Lfunc_end14-_ZN4Crux10store_intsEPim
                                        # -- End function
	.globl	_ZN4Crux11store_longsEPxm       # -- Begin function _ZN4Crux11store_longsEPxm
	.p2align	5
	.type	_ZN4Crux11store_longsEPxm,@function
_ZN4Crux11store_longsEPxm:              # @_ZN4Crux11store_longsEPxm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 8
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end15:
	.size	_ZN4Crux11store_longsEPxm, .Lfunc_end15-_ZN4Crux11store_longsEPxm
                                        # -- End function
	.globl	_ZN4Crux12store_sizetsEPmm      # -- Begin function _ZN4Crux12store_sizetsEPmm
	.p2align	5
	.type	_ZN4Crux12store_sizetsEPmm,@function
_ZN4Crux12store_sizetsEPmm:             # @_ZN4Crux12store_sizetsEPmm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 8
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end16:
	.size	_ZN4Crux12store_sizetsEPmm, .Lfunc_end16-_ZN4Crux12store_sizetsEPmm
                                        # -- End function
	.globl	_ZN4Crux13store_doublesEPdm     # -- Begin function _ZN4Crux13store_doublesEPdm
	.p2align	5
	.type	_ZN4Crux13store_doublesEPdm,@function
_ZN4Crux13store_doublesEPdm:            # @_ZN4Crux13store_doublesEPdm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 8
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end17:
	.size	_ZN4Crux13store_doublesEPdm, .Lfunc_end17-_ZN4Crux13store_doublesEPdm
                                        # -- End function
	.globl	_ZN4Crux16store_long_arrayEPxm  # -- Begin function _ZN4Crux16store_long_arrayEPxm
	.p2align	5
	.type	_ZN4Crux16store_long_arrayEPxm,@function
_ZN4Crux16store_long_arrayEPxm:         # @_ZN4Crux16store_long_arrayEPxm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 8
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end18:
	.size	_ZN4Crux16store_long_arrayEPxm, .Lfunc_end18-_ZN4Crux16store_long_arrayEPxm
                                        # -- End function
	.globl	_ZN4Crux17store_float_arrayEPfm # -- Begin function _ZN4Crux17store_float_arrayEPfm
	.p2align	5
	.type	_ZN4Crux17store_float_arrayEPfm,@function
_ZN4Crux17store_float_arrayEPfm:        # @_ZN4Crux17store_float_arrayEPfm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(store_fp)
	ld.d	$a3, $a0, %pc_lo12(store_fp)
	move	$a0, $a1
	ori	$a1, $zero, 4
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end19:
	.size	_ZN4Crux17store_float_arrayEPfm, .Lfunc_end19-_ZN4Crux17store_float_arrayEPfm
                                        # -- End function
	.globl	_ZN4Crux9store_endEv            # -- Begin function _ZN4Crux9store_endEv
	.p2align	5
	.type	_ZN4Crux9store_endEv,@function
_ZN4Crux9store_endEv:                   # @_ZN4Crux9store_endEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	pcalau12i	$a1, %pc_hi20(store_fp)
	ld.d	$a1, $a1, %pc_lo12(store_fp)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(tcheckpoint_time)
	addi.d	$a1, $a0, %pc_lo12(tcheckpoint_time)
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(do_crux_timing)
	ld.bu	$a0, $a0, %pc_lo12(do_crux_timing)
	beqz	$a0, .LBB20_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(crux_time_fp)
	ld.d	$a0, $a0, %pc_lo12(crux_time_fp)
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(checkpoint_timing_count)
	ld.w	$a1, $a0, %pc_lo12(checkpoint_timing_count)
	pcalau12i	$a2, %pc_hi20(checkpoint_timing_sum)
	fld.s	$fa0, $a2, %pc_lo12(checkpoint_timing_sum)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(checkpoint_timing_count)
	fcvt.d.s	$fa0, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, %pc_lo12(checkpoint_timing_sum)
.LBB20_2:
	ld.w	$a0, $fp, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end20:
	.size	_ZN4Crux9store_endEv, .Lfunc_end20-_ZN4Crux9store_endEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Crux18restore_MallocPlusE10MallocPlus # -- Begin function _ZN4Crux18restore_MallocPlusE10MallocPlus
	.p2align	5
	.type	_ZN4Crux18restore_MallocPlusE10MallocPlus,@function
_ZN4Crux18restore_MallocPlusE10MallocPlus: # @_ZN4Crux18restore_MallocPlusE10MallocPlus
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
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	move	$fp, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus26memory_entry_by_name_beginEv)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus24memory_entry_by_name_endEv)
	jirl	$ra, $ra, 0
	beq	$s2, $a0, .LBB21_23
# %bb.1:                                # %.lr.ph36.preheader
	pcalau12i	$s6, %pc_hi20(restore_fp)
	ori	$s7, $zero, 30
	ori	$s8, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s0, $a0, %pc_lo12(.L.str.19)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$s1, $a0, %pc_lo12(.L.str.18)
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_2:                               #   in Loop: Header=BB21_4 Depth=1
	move	$a1, $a0
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB21_3:                               # %_ZN4Crux28restore_replicated_int_arrayEPim.exit
                                        #   in Loop: Header=BB21_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus25memory_entry_by_name_nextEv)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus24memory_entry_by_name_endEv)
	jirl	$ra, $ra, 0
	beq	$s2, $a0, .LBB21_23
.LBB21_4:                               # %.lr.ph36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_21 Depth 2
                                        #     Child Loop BB21_9 Depth 2
	ld.bu	$a0, $s2, 40
	andi	$a0, $a0, 16
	beqz	$a0, .LBB21_3
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB21_4 Depth=1
	ld.d	$a0, $s2, 24
	beqz	$a0, .LBB21_10
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB21_4 Depth=1
	ld.d	$a1, $s2, 16
	ori	$s3, $zero, 1
	ori	$a2, $zero, 6
	bgeu	$a0, $a2, .LBB21_18
# %bb.7:                                #   in Loop: Header=BB21_4 Depth=1
	move	$a2, $zero
.LBB21_8:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB21_4 Depth=1
	addi.w	$a3, $a2, 1
	.p2align	4, , 16
.LBB21_9:                               # %scalar.ph
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $a1, $a2
	mul.w	$s3, $s3, $a2
	bstrpick.d	$a2, $a3, 31, 0
	addi.w	$a3, $a3, 1
	bltu	$a2, $a0, .LBB21_9
	b	.LBB21_11
.LBB21_10:                              #   in Loop: Header=BB21_4 Depth=1
	ori	$s3, $zero, 1
.LBB21_11:                              # %._crit_edge
                                        #   in Loop: Header=BB21_4 Depth=1
	ld.d	$s4, $s2, 0
	ld.d	$a3, $s6, %pc_lo12(restore_fp)
	addi.d	$a0, $sp, 38
	ori	$a1, $zero, 1
	ori	$a2, $zero, 30
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	beq	$a1, $s7, .LBB21_13
# %bb.12:                               #   in Loop: Header=BB21_4 Depth=1
	ori	$a2, $zero, 30
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB21_13:                              # %_ZN4Crux20restore_field_headerEPci.exit
                                        #   in Loop: Header=BB21_4 Depth=1
	ld.d	$s5, $s2, 48
	addi.d	$a0, $sp, 38
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_24
# %bb.14:                               #   in Loop: Header=BB21_4 Depth=1
	ld.bu	$a1, $s2, 40
	ld.d	$a0, $s2, 32
	ld.d	$a3, $s6, %pc_lo12(restore_fp)
	andi	$a1, $a1, 32
# %bb.15:                               #   in Loop: Header=BB21_4 Depth=1
	bne	$a0, $s8, .LBB21_17
# %bb.16:                               #   in Loop: Header=BB21_4 Depth=1
	ori	$a1, $zero, 4
	move	$a0, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB21_3
	b	.LBB21_2
	.p2align	4, , 16
.LBB21_17:                              #   in Loop: Header=BB21_4 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB21_3
	b	.LBB21_2
.LBB21_18:                              # %vector.scevcheck
                                        #   in Loop: Header=BB21_4 Depth=1
	addi.d	$a3, $a0, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a2, $zero
	beq	$a4, $a5, .LBB21_8
# %bb.19:                               # %vector.scevcheck
                                        #   in Loop: Header=BB21_4 Depth=1
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB21_8
# %bb.20:                               # %vector.ph
                                        #   in Loop: Header=BB21_4 Depth=1
	bstrpick.d	$a2, $a0, 32, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a1, 16
	move	$a4, $a2
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB21_21:                              # %vector.body
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vshuf4i.w	$vr2, $vr2, 8
	vshuf4i.w	$vr3, $vr3, 8
	vmul.w	$vr0, $vr0, $vr2
	vmul.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB21_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB21_4 Depth=1
	vmul.w	$vr0, $vr1, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s3, $vr0, 0
	bne	$a0, $a2, .LBB21_8
	b	.LBB21_11
.LBB21_23:                              # %._crit_edge37
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
.LBB21_24:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	addi.d	$a1, $sp, 38
	move	$a2, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN4Crux18restore_MallocPlusE10MallocPlus, .Lfunc_end21-_ZN4Crux18restore_MallocPlusE10MallocPlus
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Crux28restore_replicated_int_arrayEPim # -- Begin function _ZN4Crux28restore_replicated_int_arrayEPim
	.p2align	5
	.type	_ZN4Crux28restore_replicated_int_arrayEPim,@function
_ZN4Crux28restore_replicated_int_arrayEPim: # @_ZN4Crux28restore_replicated_int_arrayEPim
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$s0, $a2
	move	$fp, $a1
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB22_2
# %bb.1:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB22_2:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	_ZN4Crux28restore_replicated_int_arrayEPim, .Lfunc_end22-_ZN4Crux28restore_replicated_int_arrayEPim
                                        # -- End function
	.globl	_ZN4Crux31restore_replicated_double_arrayEPdm # -- Begin function _ZN4Crux31restore_replicated_double_arrayEPdm
	.p2align	5
	.type	_ZN4Crux31restore_replicated_double_arrayEPdm,@function
_ZN4Crux31restore_replicated_double_arrayEPdm: # @_ZN4Crux31restore_replicated_double_arrayEPdm
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$s0, $a2
	move	$fp, $a1
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB23_2
# %bb.1:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB23_2:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	_ZN4Crux31restore_replicated_double_arrayEPdm, .Lfunc_end23-_ZN4Crux31restore_replicated_double_arrayEPdm
                                        # -- End function
	.globl	_ZN4Crux20restore_double_arrayEPdm # -- Begin function _ZN4Crux20restore_double_arrayEPdm
	.p2align	5
	.type	_ZN4Crux20restore_double_arrayEPdm,@function
_ZN4Crux20restore_double_arrayEPdm:     # @_ZN4Crux20restore_double_arrayEPdm
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$s0, $a2
	move	$fp, $a1
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB24_2
# %bb.1:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB24_2:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end24:
	.size	_ZN4Crux20restore_double_arrayEPdm, .Lfunc_end24-_ZN4Crux20restore_double_arrayEPdm
                                        # -- End function
	.globl	_ZN4Crux13restore_beginEPci     # -- Begin function _ZN4Crux13restore_beginEPci
	.p2align	5
	.type	_ZN4Crux13restore_beginEPci,@function
_ZN4Crux13restore_beginEPci:            # @_ZN4Crux13restore_beginEPci
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s1, $a0
	ld.w	$a0, $a0, 0
	move	$fp, $a2
	move	$s0, $a1
	mod.w	$a0, $a2, $a0
	pcalau12i	$s2, %pc_hi20(rs_num)
	st.w	$a0, $s2, %pc_lo12(rs_num)
	pcalau12i	$a0, %pc_hi20(trestore_time)
	addi.d	$a0, $a0, %pc_lo12(trestore_time)
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB25_6
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(restore_fp)
	st.d	$a0, $a1, %pc_lo12(restore_fp)
	bnez	$a0, .LBB25_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB25_3:
	pcalau12i	$a0, %pc_hi20(restore_type)
	ori	$a1, $zero, 1
.LBB25_4:
	st.w	$a1, $a0, %pc_lo12(restore_type)
.LBB25_5:
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB25_6:
	ld.w	$a0, $s1, 4
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB25_9
# %bb.7:
	ori	$s0, $zero, 2
	bne	$a0, $s0, .LBB25_5
# %bb.8:
	ld.w	$a1, $s2, %pc_lo12(rs_num)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(crux_data)
	ld.d	$a0, $a0, %pc_lo12(crux_data)
	ld.w	$a1, $s2, %pc_lo12(rs_num)
	pcalau12i	$a2, %pc_hi20(crux_data_size)
	ld.d	$a2, $a2, %pc_lo12(crux_data_size)
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ldx.d	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.12)
	addi.d	$a2, $a2, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(fmemopen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(restore_fp)
	st.d	$a0, $a1, %pc_lo12(restore_fp)
	pcalau12i	$a0, %pc_hi20(restore_type)
	st.w	$s0, $a0, %pc_lo12(restore_type)
	b	.LBB25_5
.LBB25_9:
	ld.w	$a3, $s2, %pc_lo12(rs_num)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(checkpoint_directory)
	addi.d	$a2, $a0, %pc_lo12(checkpoint_directory)
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	addi.d	$a1, $sp, 12
	move	$a2, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(restore_fp)
	st.d	$a0, $a1, %pc_lo12(restore_fp)
	bnez	$a0, .LBB25_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB25_11:
	pcalau12i	$a0, %pc_hi20(restore_type)
	ori	$a1, $zero, 2
	b	.LBB25_4
.Lfunc_end25:
	.size	_ZN4Crux13restore_beginEPci, .Lfunc_end25-_ZN4Crux13restore_beginEPci
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Crux13restore_boolsEPbm     # -- Begin function _ZN4Crux13restore_boolsEPbm
	.p2align	5
	.type	_ZN4Crux13restore_boolsEPbm,@function
_ZN4Crux13restore_boolsEPbm:            # @_ZN4Crux13restore_boolsEPbm
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$fp, $a2
	move	$a0, $a1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB26_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB26_2:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end26:
	.size	_ZN4Crux13restore_boolsEPbm, .Lfunc_end26-_ZN4Crux13restore_boolsEPbm
                                        # -- End function
	.globl	_ZN4Crux12restore_intsEPim      # -- Begin function _ZN4Crux12restore_intsEPim
	.p2align	5
	.type	_ZN4Crux12restore_intsEPim,@function
_ZN4Crux12restore_intsEPim:             # @_ZN4Crux12restore_intsEPim
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$fp, $a2
	move	$a0, $a1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB27_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB27_2:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end27:
	.size	_ZN4Crux12restore_intsEPim, .Lfunc_end27-_ZN4Crux12restore_intsEPim
                                        # -- End function
	.globl	_ZN4Crux13restore_longsEPxm     # -- Begin function _ZN4Crux13restore_longsEPxm
	.p2align	5
	.type	_ZN4Crux13restore_longsEPxm,@function
_ZN4Crux13restore_longsEPxm:            # @_ZN4Crux13restore_longsEPxm
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$fp, $a2
	move	$a0, $a1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB28_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB28_2:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end28:
	.size	_ZN4Crux13restore_longsEPxm, .Lfunc_end28-_ZN4Crux13restore_longsEPxm
                                        # -- End function
	.globl	_ZN4Crux14restore_sizetsEPmm    # -- Begin function _ZN4Crux14restore_sizetsEPmm
	.p2align	5
	.type	_ZN4Crux14restore_sizetsEPmm,@function
_ZN4Crux14restore_sizetsEPmm:           # @_ZN4Crux14restore_sizetsEPmm
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$fp, $a2
	move	$a0, $a1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB29_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB29_2:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end29:
	.size	_ZN4Crux14restore_sizetsEPmm, .Lfunc_end29-_ZN4Crux14restore_sizetsEPmm
                                        # -- End function
	.globl	_ZN4Crux15restore_doublesEPdm   # -- Begin function _ZN4Crux15restore_doublesEPdm
	.p2align	5
	.type	_ZN4Crux15restore_doublesEPdm,@function
_ZN4Crux15restore_doublesEPdm:          # @_ZN4Crux15restore_doublesEPdm
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$fp, $a2
	move	$a0, $a1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB30_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB30_2:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end30:
	.size	_ZN4Crux15restore_doublesEPdm, .Lfunc_end30-_ZN4Crux15restore_doublesEPdm
                                        # -- End function
	.globl	_ZN4Crux18restore_long_arrayEPxm # -- Begin function _ZN4Crux18restore_long_arrayEPxm
	.p2align	5
	.type	_ZN4Crux18restore_long_arrayEPxm,@function
_ZN4Crux18restore_long_arrayEPxm:       # @_ZN4Crux18restore_long_arrayEPxm
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$s0, $a2
	move	$fp, $a1
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB31_2
# %bb.1:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB31_2:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end31:
	.size	_ZN4Crux18restore_long_arrayEPxm, .Lfunc_end31-_ZN4Crux18restore_long_arrayEPxm
                                        # -- End function
	.globl	_ZN4Crux19restore_float_arrayEPfm # -- Begin function _ZN4Crux19restore_float_arrayEPfm
	.p2align	5
	.type	_ZN4Crux19restore_float_arrayEPfm,@function
_ZN4Crux19restore_float_arrayEPfm:      # @_ZN4Crux19restore_float_arrayEPfm
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a3, $a0, %pc_lo12(restore_fp)
	move	$s0, $a2
	move	$fp, $a1
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB32_2
# %bb.1:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB32_2:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end32:
	.size	_ZN4Crux19restore_float_arrayEPfm, .Lfunc_end32-_ZN4Crux19restore_float_arrayEPfm
                                        # -- End function
	.globl	_ZN4Crux11restore_endEv         # -- Begin function _ZN4Crux11restore_endEv
	.p2align	5
	.type	_ZN4Crux11restore_endEv,@function
_ZN4Crux11restore_endEv:                # @_ZN4Crux11restore_endEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a0, %pc_hi20(trestore_time)
	addi.d	$a1, $a0, %pc_lo12(trestore_time)
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(do_crux_timing)
	ld.bu	$a0, $a0, %pc_lo12(do_crux_timing)
	beqz	$a0, .LBB33_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(restore_type)
	ld.w	$a0, $a0, %pc_lo12(restore_type)
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB33_4
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB33_5
# %bb.3:
	pcalau12i	$a0, %pc_hi20(crux_time_fp)
	ld.d	$a0, $a0, %pc_lo12(crux_time_fp)
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB33_5
.LBB33_4:
	pcalau12i	$a0, %pc_hi20(crux_time_fp)
	ld.d	$a0, $a0, %pc_lo12(crux_time_fp)
	pcalau12i	$a1, %pc_hi20(rollback_attempt)
	ld.w	$a2, $a1, %pc_lo12(rollback_attempt)
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB33_5:
	pcalau12i	$a0, %pc_hi20(restore_fp)
	ld.d	$a0, $a0, %pc_lo12(restore_fp)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.Lfunc_end33:
	.size	_ZN4Crux11restore_endEv, .Lfunc_end33-_ZN4Crux11restore_endEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Crux19get_rollback_numberEv # -- Begin function _ZN4Crux19get_rollback_numberEv
	.p2align	5
	.type	_ZN4Crux19get_rollback_numberEv,@function
_ZN4Crux19get_rollback_numberEv:        # @_ZN4Crux19get_rollback_numberEv
# %bb.0:
	pcalau12i	$a1, %pc_hi20(rollback_attempt)
	ld.w	$a2, $a1, %pc_lo12(rollback_attempt)
	ld.w	$a3, $a0, 8
	ld.w	$a0, $a0, 0
	addi.d	$a2, $a2, 1
	mod.w	$a0, $a3, $a0
	st.w	$a2, $a1, %pc_lo12(rollback_attempt)
	ret
.Lfunc_end34:
	.size	_ZN4Crux19get_rollback_numberEv, .Lfunc_end34-_ZN4Crux19get_rollback_numberEv
                                        # -- End function
	.globl	_ZN4Crux13set_crux_typeEi       # -- Begin function _ZN4Crux13set_crux_typeEi
	.p2align	5
	.type	_ZN4Crux13set_crux_typeEi,@function
_ZN4Crux13set_crux_typeEi:              # @_ZN4Crux13set_crux_typeEi
# %bb.0:
	st.w	$a1, $a0, 4
	ret
.Lfunc_end35:
	.size	_ZN4Crux13set_crux_typeEi, .Lfunc_end35-_ZN4Crux13set_crux_typeEi
                                        # -- End function
	.type	do_crux_timing,@object          # @do_crux_timing
	.bss
	.globl	do_crux_timing
do_crux_timing:
	.byte	0                               # 0x0
	.size	do_crux_timing, 1

	.type	parse,@object                   # @parse
	.globl	parse
	.p2align	3, 0x0
parse:
	.dword	0
	.size	parse, 8

	.type	checkpoint_directory,@object    # @checkpoint_directory
	.data
	.globl	checkpoint_directory
checkpoint_directory:
	.asciz	"checkpoint_output"
	.size	checkpoint_directory, 18

	.type	cp_num,@object                  # @cp_num
	.bss
	.globl	cp_num
	.p2align	2, 0x0
cp_num:
	.word	0                               # 0x0
	.size	cp_num, 4

	.type	rs_num,@object                  # @rs_num
	.globl	rs_num
	.p2align	2, 0x0
rs_num:
	.word	0                               # 0x0
	.size	rs_num, 4

	.type	backup,@object                  # @backup
	.globl	backup
	.p2align	3, 0x0
backup:
	.dword	0
	.size	backup, 8

	.type	crux_data,@object               # @crux_data
	.globl	crux_data
	.p2align	3, 0x0
crux_data:
	.dword	0
	.size	crux_data, 8

	.type	crux_data_size,@object          # @crux_data_size
	.globl	crux_data_size
	.p2align	3, 0x0
crux_data_size:
	.dword	0
	.size	crux_data_size, 8

	.type	crux_time_fp,@object            # @crux_time_fp
	.globl	crux_time_fp
	.p2align	3, 0x0
crux_time_fp:
	.dword	0
	.size	crux_time_fp, 8

	.type	tcheckpoint_time,@object        # @tcheckpoint_time
	.globl	tcheckpoint_time
	.p2align	3, 0x0
tcheckpoint_time:
	.space	16
	.size	tcheckpoint_time, 16

	.type	trestore_time,@object           # @trestore_time
	.globl	trestore_time
	.p2align	3, 0x0
trestore_time:
	.space	16
	.size	trestore_time, 16

	.type	checkpoint_timing_count,@object # @checkpoint_timing_count
	.globl	checkpoint_timing_count
	.p2align	2, 0x0
checkpoint_timing_count:
	.word	0                               # 0x0
	.size	checkpoint_timing_count, 4

	.type	checkpoint_timing_sum,@object   # @checkpoint_timing_sum
	.globl	checkpoint_timing_sum
	.p2align	2, 0x0
checkpoint_timing_sum:
	.word	0x00000000                      # float 0
	.size	checkpoint_timing_sum, 4

	.type	checkpoint_timing_size,@object  # @checkpoint_timing_size
	.globl	checkpoint_timing_size
	.p2align	2, 0x0
checkpoint_timing_size:
	.word	0x00000000                      # float 0
	.size	checkpoint_timing_size, 4

	.type	rollback_attempt,@object        # @rollback_attempt
	.globl	rollback_attempt
	.p2align	2, 0x0
rollback_attempt:
	.word	0                               # 0x0
	.size	rollback_attempt, 4

	.type	store_fp,@object                # @store_fp
	.globl	store_fp
	.p2align	3, 0x0
store_fp:
	.dword	0
	.size	store_fp, 8

	.type	restore_fp,@object              # @restore_fp
	.globl	restore_fp
	.p2align	3, 0x0
restore_fp:
	.dword	0
	.size	restore_fp, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/crux_timing.log"
	.size	.L.str, 19

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"CRUX checkpointing time averaged %f msec, bandwidth %f Mbytes/sec\n"
	.size	.L.str.2, 67

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s/backup%05d.crx"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"backup%05d.crx"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Could not write %s at iteration %d\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s/backup%1d.crx"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Total time for checkpointing was %g seconds\n"
	.size	.L.str.7, 45

	.type	restore_type,@object            # @restore_type
	.bss
	.globl	restore_type
	.p2align	2, 0x0
restore_type:
	.word	0                               # 0x0
	.size	restore_type, 4

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"ERROR in restore checkpoint for %s %s\n"
	.size	.L.str.8, 39

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"  Restoring state from disk file %s\n"
	.size	.L.str.10, 37

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"r"
	.size	.L.str.12, 2

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Could not open restart file %s\n"
	.size	.L.str.13, 32

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Restoring state from memory rollback number %d rollback_counter %d\n"
	.size	.L.str.14, 68

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%s/backup%d.crx"
	.size	.L.str.15, 16

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Restoring state from disk file %s rollback_counter %d\n"
	.size	.L.str.16, 55

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Could not open restore file %s\n"
	.size	.L.str.17, 32

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Warning: number of elements read %d is not equal to request %d\n"
	.size	.L.str.18, 64

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Warning: number of elements read %lu is not equal to request %lu\n"
	.size	.L.str.19, 66

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Total time for restore was %g seconds\n"
	.size	.L.str.20, 39

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Total time for rollback %d was %g seconds\n"
	.size	.L.str.21, 43

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\n  ================================================================"
	.size	.Lstr, 68

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"  ================================================================\n"
	.size	.Lstr.1, 68

	.globl	_ZN4CruxC1Eiib
	.type	_ZN4CruxC1Eiib,@function
_ZN4CruxC1Eiib = _ZN4CruxC2Eiib
	.globl	_ZN4CruxD1Ev
	.type	_ZN4CruxD1Ev,@function
_ZN4CruxD1Ev = _ZN4CruxD2Ev
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym checkpoint_directory
	.addrsig_sym tcheckpoint_time
	.addrsig_sym trestore_time
