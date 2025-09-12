	.file	"btQuickprof.cpp"
	.text
	.globl	_ZN12CProfileNodeC2EPKcPS_      # -- Begin function _ZN12CProfileNodeC2EPKcPS_
	.p2align	5
	.type	_ZN12CProfileNodeC2EPKcPS_,@function
_ZN12CProfileNodeC2EPKcPS_:             # @_ZN12CProfileNodeC2EPKcPS_
# %bb.0:
	st.d	$a1, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.w	$zero, $a0, 24
	st.d	$a2, $a0, 32
	vst	$vr0, $a0, 40
	pcaddu18i	$t8, %call36(_ZN12CProfileNode5ResetEv)
	jr	$t8
.Lfunc_end0:
	.size	_ZN12CProfileNodeC2EPKcPS_, .Lfunc_end0-_ZN12CProfileNodeC2EPKcPS_
                                        # -- End function
	.globl	_ZN12CProfileNode5ResetEv       # -- Begin function _ZN12CProfileNode5ResetEv
	.p2align	5
	.type	_ZN12CProfileNode5ResetEv,@function
_ZN12CProfileNode5ResetEv:              # @_ZN12CProfileNode5ResetEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	ld.d	$fp, $fp, 48
	beqz	$fp, .LBB1_4
.LBB1_2:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	st.d	$zero, $fp, 8
	beqz	$a0, .LBB1_1
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	pcaddu18i	$ra, %call36(_ZN12CProfileNode5ResetEv)
	jirl	$ra, $ra, 0
	b	.LBB1_1
.LBB1_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN12CProfileNode5ResetEv, .Lfunc_end1-_ZN12CProfileNode5ResetEv
                                        # -- End function
	.globl	_ZN12CProfileNode13CleanupMemoryEv # -- Begin function _ZN12CProfileNode13CleanupMemoryEv
	.p2align	5
	.type	_ZN12CProfileNode13CleanupMemoryEv,@function
_ZN12CProfileNode13CleanupMemoryEv:     # @_ZN12CProfileNode13CleanupMemoryEv
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
	move	$s0, $a0
	ld.d	$fp, $a0, 40
	beqz	$fp, .LBB2_3
# %bb.1:
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12CProfileNodeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_3:
	ld.d	$fp, $s0, 48
	st.d	$zero, $s0, 40
	beqz	$fp, .LBB2_6
# %bb.4:
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12CProfileNodeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_6:
	st.d	$zero, $s0, 48
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_7:
.Ltmp5:                                 # EH_LABEL
	b	.LBB2_9
.LBB2_8:
.Ltmp2:                                 # EH_LABEL
.LBB2_9:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN12CProfileNode13CleanupMemoryEv, .Lfunc_end2-_ZN12CProfileNode13CleanupMemoryEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN12CProfileNodeD2Ev           # -- Begin function _ZN12CProfileNodeD2Ev
	.p2align	5
	.type	_ZN12CProfileNodeD2Ev,@function
_ZN12CProfileNodeD2Ev:                  # @_ZN12CProfileNodeD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a0
	ld.d	$fp, $a0, 40
	beqz	$fp, .LBB3_3
# %bb.1:
.Ltmp6:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12CProfileNodeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_3:
	ld.d	$fp, $s0, 48
	beqz	$fp, .LBB3_6
# %bb.4:
.Ltmp9:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12CProfileNodeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.5:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB3_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_7:
.Ltmp11:                                # EH_LABEL
	b	.LBB3_9
.LBB3_8:
.Ltmp8:                                 # EH_LABEL
.LBB3_9:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN12CProfileNodeD2Ev, .Lfunc_end3-_ZN12CProfileNodeD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN12CProfileNode12Get_Sub_NodeEPKc # -- Begin function _ZN12CProfileNode12Get_Sub_NodeEPKc
	.p2align	5
	.type	_ZN12CProfileNode12Get_Sub_NodeEPKc,@function
_ZN12CProfileNode12Get_Sub_NodeEPKc:    # @_ZN12CProfileNode12Get_Sub_NodeEPKc
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
	ld.d	$a0, $a0, 40
	move	$s0, $a1
	beqz	$a0, .LBB4_3
	.p2align	4, , 16
.LBB4_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	beq	$a1, $s0, .LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a0, $a0, 48
	bnez	$a0, .LBB4_1
.LBB4_3:                                # %._crit_edge
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s0, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.w	$zero, $a0, 24
	st.d	$fp, $a0, 32
	vst	$vr0, $a0, 40
	pcaddu18i	$ra, %call36(_ZN12CProfileNode5ResetEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$a1, $fp, 40
	st.d	$a1, $s1, 48
	st.d	$s1, $fp, 40
.LBB4_4:                                # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZN12CProfileNode12Get_Sub_NodeEPKc, .Lfunc_end4-_ZN12CProfileNode12Get_Sub_NodeEPKc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12CProfileNode4CallEv        # -- Begin function _ZN12CProfileNode4CallEv
	.p2align	5
	.type	_ZN12CProfileNode4CallEv,@function
_ZN12CProfileNode4CallEv:               # @_ZN12CProfileNode4CallEv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 8
	ld.w	$a1, $fp, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 24
	beqz	$a1, .LBB5_2
# %bb.1:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB5_2:
	addi.d	$a0, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0
	pcalau12i	$a0, %pc_hi20(_ZL13gProfileClock)
	vld	$vr1, $a0, %pc_lo12(_ZL13gProfileClock)
	vsub.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a0, $vr0, 0
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	mul.d	$a0, $a0, $a1
	vpickve2gr.d	$a1, $vr0, 1
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, 16
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZN12CProfileNode4CallEv, .Lfunc_end5-_ZN12CProfileNode4CallEv
                                        # -- End function
	.globl	_ZN12CProfileNode6ReturnEv      # -- Begin function _ZN12CProfileNode6ReturnEv
	.p2align	5
	.type	_ZN12CProfileNode6ReturnEv,@function
_ZN12CProfileNode6ReturnEv:             # @_ZN12CProfileNode6ReturnEv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 24
	bnez	$a0, .LBB6_3
# %bb.1:
	ld.w	$a1, $fp, 8
	beqz	$a1, .LBB6_3
# %bb.2:
	addi.d	$a0, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	pcalau12i	$a1, %pc_hi20(_ZL13gProfileClock)
	addi.d	$a1, $a1, %pc_lo12(_ZL13gProfileClock)
	ld.d	$a2, $a1, 0
	sub.d	$a0, $a0, $a2
	lu12i.w	$a2, 244
	ld.d	$a3, $sp, 8
	ld.d	$a1, $a1, 8
	ld.d	$a4, $fp, 16
	ori	$a2, $a2, 576
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a4
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a1, $a0, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	lu12i.w	$a0, 280480
	fld.s	$fa1, $fp, 12
	movgr2fr.w	$fa2, $a0
	ld.w	$a0, $fp, 24
	fdiv.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $fp, 12
.LBB6_3:
	sltui	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	_ZN12CProfileNode6ReturnEv, .Lfunc_end6-_ZN12CProfileNode6ReturnEv
                                        # -- End function
	.globl	_ZN16CProfileIteratorC2EP12CProfileNode # -- Begin function _ZN16CProfileIteratorC2EP12CProfileNode
	.p2align	5
	.type	_ZN16CProfileIteratorC2EP12CProfileNode,@function
_ZN16CProfileIteratorC2EP12CProfileNode: # @_ZN16CProfileIteratorC2EP12CProfileNode
# %bb.0:
	ld.d	$a2, $a1, 40
	st.d	$a1, $a0, 0
	st.d	$a2, $a0, 8
	ret
.Lfunc_end7:
	.size	_ZN16CProfileIteratorC2EP12CProfileNode, .Lfunc_end7-_ZN16CProfileIteratorC2EP12CProfileNode
                                        # -- End function
	.globl	_ZN16CProfileIterator5FirstEv   # -- Begin function _ZN16CProfileIterator5FirstEv
	.p2align	5
	.type	_ZN16CProfileIterator5FirstEv,@function
_ZN16CProfileIterator5FirstEv:          # @_ZN16CProfileIterator5FirstEv
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 40
	st.d	$a1, $a0, 8
	ret
.Lfunc_end8:
	.size	_ZN16CProfileIterator5FirstEv, .Lfunc_end8-_ZN16CProfileIterator5FirstEv
                                        # -- End function
	.globl	_ZN16CProfileIterator4NextEv    # -- Begin function _ZN16CProfileIterator4NextEv
	.p2align	5
	.type	_ZN16CProfileIterator4NextEv,@function
_ZN16CProfileIterator4NextEv:           # @_ZN16CProfileIterator4NextEv
# %bb.0:
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 48
	st.d	$a1, $a0, 8
	ret
.Lfunc_end9:
	.size	_ZN16CProfileIterator4NextEv, .Lfunc_end9-_ZN16CProfileIterator4NextEv
                                        # -- End function
	.globl	_ZN16CProfileIterator7Is_DoneEv # -- Begin function _ZN16CProfileIterator7Is_DoneEv
	.p2align	5
	.type	_ZN16CProfileIterator7Is_DoneEv,@function
_ZN16CProfileIterator7Is_DoneEv:        # @_ZN16CProfileIterator7Is_DoneEv
# %bb.0:
	ld.d	$a0, $a0, 8
	sltui	$a0, $a0, 1
	ret
.Lfunc_end10:
	.size	_ZN16CProfileIterator7Is_DoneEv, .Lfunc_end10-_ZN16CProfileIterator7Is_DoneEv
                                        # -- End function
	.globl	_ZN16CProfileIterator11Enter_ChildEi # -- Begin function _ZN16CProfileIterator11Enter_ChildEi
	.p2align	5
	.type	_ZN16CProfileIterator11Enter_ChildEi,@function
_ZN16CProfileIterator11Enter_ChildEi:   # @_ZN16CProfileIterator11Enter_ChildEi
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 40
	st.d	$a2, $a0, 8
	sltu	$a3, $zero, $a2
	beqz	$a2, .LBB11_5
# %bb.1:
	beqz	$a1, .LBB11_5
# %bb.2:                                # %.lr.ph.preheader
	addi.w	$a4, $a1, -1
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	.p2align	4, , 16
.LBB11_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 48
	st.d	$a2, $a0, 8
	sltu	$a3, $zero, $a2
	beqz	$a2, .LBB11_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB11_3 Depth=1
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a4, $a4, $a1
	srli.d	$a5, $a4, 32
	andi	$a5, $a5, 1
	bnez	$a5, .LBB11_3
.LBB11_5:                               # %._crit_edge
	beqz	$a3, .LBB11_7
# %bb.6:
	ld.d	$a1, $a2, 40
	st.d	$a2, $a0, 0
	st.d	$a1, $a0, 8
.LBB11_7:
	ret
.Lfunc_end11:
	.size	_ZN16CProfileIterator11Enter_ChildEi, .Lfunc_end11-_ZN16CProfileIterator11Enter_ChildEi
                                        # -- End function
	.globl	_ZN16CProfileIterator12Enter_ParentEv # -- Begin function _ZN16CProfileIterator12Enter_ParentEv
	.p2align	5
	.type	_ZN16CProfileIterator12Enter_ParentEv,@function
_ZN16CProfileIterator12Enter_ParentEv:  # @_ZN16CProfileIterator12Enter_ParentEv
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 32
	beqz	$a2, .LBB12_2
# %bb.1:
	st.d	$a2, $a0, 0
	move	$a1, $a2
.LBB12_2:
	ld.d	$a1, $a1, 40
	st.d	$a1, $a0, 8
	ret
.Lfunc_end12:
	.size	_ZN16CProfileIterator12Enter_ParentEv, .Lfunc_end12-_ZN16CProfileIterator12Enter_ParentEv
                                        # -- End function
	.globl	_ZN15CProfileManager13Start_ProfileEPKc # -- Begin function _ZN15CProfileManager13Start_ProfileEPKc
	.p2align	5
	.type	_ZN15CProfileManager13Start_ProfileEPKc,@function
_ZN15CProfileManager13Start_ProfileEPKc: # @_ZN15CProfileManager13Start_ProfileEPKc
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
	pcalau12i	$s2, %pc_hi20(_ZN15CProfileManager11CurrentNodeE)
	ld.d	$s1, $s2, %pc_lo12(_ZN15CProfileManager11CurrentNodeE)
	ld.d	$a1, $s1, 0
	beq	$a0, $a1, .LBB13_6
# %bb.1:
	move	$s0, $a0
	ld.d	$fp, $s1, 40
	beqz	$fp, .LBB13_4
	.p2align	4, , 16
.LBB13_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	beq	$a0, $s0, .LBB13_5
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	ld.d	$fp, $fp, 48
	bnez	$fp, .LBB13_2
.LBB13_4:                               # %._crit_edge.i
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s0, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.w	$zero, $a0, 24
	st.d	$s1, $a0, 32
	vst	$vr0, $a0, 40
	pcaddu18i	$ra, %call36(_ZN12CProfileNode5ResetEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	st.d	$a0, $fp, 48
	st.d	$fp, $s1, 40
.LBB13_5:                               # %_ZN12CProfileNode12Get_Sub_NodeEPKc.exit
	st.d	$fp, $s2, %pc_lo12(_ZN15CProfileManager11CurrentNodeE)
	move	$s1, $fp
.LBB13_6:
	ld.w	$a0, $s1, 8
	ld.w	$a1, $s1, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 8
	addi.d	$a0, $a1, 1
	st.w	$a0, $s1, 24
	bnez	$a1, .LBB13_8
# %bb.7:
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	pcalau12i	$a0, %pc_hi20(_ZL13gProfileClock)
	vld	$vr1, $a0, %pc_lo12(_ZL13gProfileClock)
	vsub.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a0, $vr0, 0
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	mul.d	$a0, $a0, $a1
	vpickve2gr.d	$a1, $vr0, 1
	add.d	$a0, $a1, $a0
	st.d	$a0, $s1, 16
.LBB13_8:                               # %_ZN12CProfileNode4CallEv.exit
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end13:
	.size	_ZN15CProfileManager13Start_ProfileEPKc, .Lfunc_end13-_ZN15CProfileManager13Start_ProfileEPKc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN15CProfileManager12Stop_ProfileEv # -- Begin function _ZN15CProfileManager12Stop_ProfileEv
	.p2align	5
	.type	_ZN15CProfileManager12Stop_ProfileEv,@function
_ZN15CProfileManager12Stop_ProfileEv:   # @_ZN15CProfileManager12Stop_ProfileEv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(_ZN15CProfileManager11CurrentNodeE)
	ld.d	$s0, $fp, %pc_lo12(_ZN15CProfileManager11CurrentNodeE)
	ld.w	$a0, $s0, 24
	addi.w	$a0, $a0, -1
	st.w	$a0, $s0, 24
	bnez	$a0, .LBB14_3
# %bb.1:
	ld.w	$a1, $s0, 8
	beqz	$a1, .LBB14_3
# %bb.2:
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	pcalau12i	$a1, %pc_hi20(_ZL13gProfileClock)
	addi.d	$a1, $a1, %pc_lo12(_ZL13gProfileClock)
	ld.d	$a2, $a1, 0
	sub.d	$a0, $a0, $a2
	lu12i.w	$a2, 244
	ld.d	$a3, $sp, 16
	ld.d	$a1, $a1, 8
	ld.d	$a4, $s0, 16
	ori	$a2, $a2, 576
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a4
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a1, $a0, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	lu12i.w	$a0, 280480
	fld.s	$fa1, $s0, 12
	movgr2fr.w	$fa2, $a0
	ld.w	$a0, $s0, 24
	fdiv.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s0, 12
.LBB14_3:                               # %_ZN12CProfileNode6ReturnEv.exit
	bnez	$a0, .LBB14_5
# %bb.4:
	ld.d	$a0, $fp, %pc_lo12(_ZN15CProfileManager11CurrentNodeE)
	ld.d	$a0, $a0, 32
	st.d	$a0, $fp, %pc_lo12(_ZN15CProfileManager11CurrentNodeE)
.LBB14_5:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	_ZN15CProfileManager12Stop_ProfileEv, .Lfunc_end14-_ZN15CProfileManager12Stop_ProfileEv
                                        # -- End function
	.globl	_ZN15CProfileManager5ResetEv    # -- Begin function _ZN15CProfileManager5ResetEv
	.p2align	5
	.type	_ZN15CProfileManager5ResetEv,@function
_ZN15CProfileManager5ResetEv:           # @_ZN15CProfileManager5ResetEv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL13gProfileClock)
	addi.d	$fp, $a0, %pc_lo12(_ZL13gProfileClock)
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN15CProfileManager4RootE)
	addi.d	$s0, $a0, %pc_lo12(_ZN15CProfileManager4RootE)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12CProfileNode5ResetEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 8
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 24
	lu12i.w	$s1, 244
	bnez	$a1, .LBB15_2
# %bb.1:
	addi.d	$a0, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0
	vld	$vr1, $fp, 0
	vsub.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a0, $vr0, 0
	ori	$a1, $s1, 576
	mul.d	$a0, $a0, $a1
	vpickve2gr.d	$a1, $vr0, 1
	add.d	$a0, $a1, $a0
	st.d	$a0, $s0, 16
.LBB15_2:                               # %_ZN12CProfileNode4CallEv.exit
	pcalau12i	$a0, %pc_hi20(_ZN15CProfileManager12FrameCounterE)
	st.w	$zero, $a0, %pc_lo12(_ZN15CProfileManager12FrameCounterE)
	addi.d	$a0, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0
	vld	$vr1, $fp, 0
	vsub.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a0, $vr0, 0
	ori	$a1, $s1, 576
	mul.d	$a0, $a0, $a1
	vpickve2gr.d	$a1, $vr0, 1
	add.d	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(_ZN15CProfileManager9ResetTimeE)
	st.d	$a0, $a1, %pc_lo12(_ZN15CProfileManager9ResetTimeE)
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	_ZN15CProfileManager5ResetEv, .Lfunc_end15-_ZN15CProfileManager5ResetEv
                                        # -- End function
	.globl	_ZN15CProfileManager23Increment_Frame_CounterEv # -- Begin function _ZN15CProfileManager23Increment_Frame_CounterEv
	.p2align	5
	.type	_ZN15CProfileManager23Increment_Frame_CounterEv,@function
_ZN15CProfileManager23Increment_Frame_CounterEv: # @_ZN15CProfileManager23Increment_Frame_CounterEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZN15CProfileManager12FrameCounterE)
	ld.w	$a1, $a0, %pc_lo12(_ZN15CProfileManager12FrameCounterE)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(_ZN15CProfileManager12FrameCounterE)
	ret
.Lfunc_end16:
	.size	_ZN15CProfileManager23Increment_Frame_CounterEv, .Lfunc_end16-_ZN15CProfileManager23Increment_Frame_CounterEv
                                        # -- End function
	.globl	_ZN15CProfileManager20Get_Time_Since_ResetEv # -- Begin function _ZN15CProfileManager20Get_Time_Since_ResetEv
	.p2align	5
	.type	_ZN15CProfileManager20Get_Time_Since_ResetEv,@function
_ZN15CProfileManager20Get_Time_Since_ResetEv: # @_ZN15CProfileManager20Get_Time_Since_ResetEv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	pcalau12i	$a1, %pc_hi20(_ZL13gProfileClock)
	addi.d	$a1, $a1, %pc_lo12(_ZL13gProfileClock)
	ld.d	$a2, $a1, 0
	sub.d	$a0, $a0, $a2
	lu12i.w	$a2, 244
	ld.d	$a3, $sp, 16
	ld.d	$a1, $a1, 8
	pcalau12i	$a4, %pc_hi20(_ZN15CProfileManager9ResetTimeE)
	ld.d	$a4, $a4, %pc_lo12(_ZN15CProfileManager9ResetTimeE)
	ori	$a2, $a2, 576
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a4
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a1, $a0, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	lu12i.w	$a0, 280480
	movgr2fr.w	$fa1, $a0
	fdiv.s	$fa0, $fa0, $fa1
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end17:
	.size	_ZN15CProfileManager20Get_Time_Since_ResetEv, .Lfunc_end17-_ZN15CProfileManager20Get_Time_Since_ResetEv
                                        # -- End function
	.globl	_ZN15CProfileManager13dumpRecursiveEP16CProfileIteratori # -- Begin function _ZN15CProfileManager13dumpRecursiveEP16CProfileIteratori
	.p2align	5
	.type	_ZN15CProfileManager13dumpRecursiveEP16CProfileIteratori,@function
_ZN15CProfileManager13dumpRecursiveEP16CProfileIteratori: # @_ZN15CProfileManager13dumpRecursiveEP16CProfileIteratori
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 40                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 40
	st.d	$a2, $fp, 8
	beqz	$a2, .LBB18_39
# %bb.1:
	move	$s0, $a1
	ld.d	$a1, $a0, 32
	beqz	$a1, .LBB18_7
# %bb.2:
	fld.s	$fs0, $a0, 12
	pcalau12i	$a0, %pc_hi20(_ZN15CProfileManager12FrameCounterE)
	ld.w	$s1, $a0, %pc_lo12(_ZN15CProfileManager12FrameCounterE)
	blez	$s0, .LBB18_8
.LBB18_3:                               # %.lr.ph.preheader
	move	$s2, $s0
	.p2align	4, , 16
.LBB18_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 46
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB18_4
# %bb.5:                                # %.lr.ph67.preheader
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$s2, $s0
	.p2align	4, , 16
.LBB18_6:                               # %.lr.ph67
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 46
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB18_6
	b	.LBB18_9
.LBB18_7:
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	pcalau12i	$a1, %pc_hi20(_ZL13gProfileClock)
	addi.d	$a1, $a1, %pc_lo12(_ZL13gProfileClock)
	ld.d	$a2, $a1, 0
	sub.d	$a0, $a0, $a2
	lu12i.w	$a2, 244
	ld.d	$a3, $sp, 32
	ld.d	$a1, $a1, 8
	pcalau12i	$a4, %pc_hi20(_ZN15CProfileManager9ResetTimeE)
	ld.d	$a4, $a4, %pc_lo12(_ZN15CProfileManager9ResetTimeE)
	ori	$a2, $a2, 576
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a4
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a1, $a0, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	lu12i.w	$a0, 280480
	movgr2fr.w	$fa1, $a0
	fdiv.s	$fs0, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(_ZN15CProfileManager12FrameCounterE)
	ld.w	$s1, $a0, %pc_lo12(_ZN15CProfileManager12FrameCounterE)
	bgtz	$s0, .LBB18_3
.LBB18_8:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB18_9:                               # %._crit_edge68
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	lu12i.w	$s5, 212992
	lu12i.w	$s4, 273536
	beqz	$a0, .LBB18_18
# %bb.10:                               # %.lr.ph77
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fs2, $fa0
	movgr2fr.w	$fs1, $zero
	movgr2fr.d	$fs3, $zero
	movgr2fr.w	$fa0, $s5
	fcmp.cule.s	$fcc0, $fs0, $fa0
	movcf2gr	$a1, $fcc0
	st.d	$a1, $sp, 16
	movgr2fr.w	$fs4, $s4
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s1, $a1, %pc_lo12(.L.str.5)
	move	$s2, $zero
	b	.LBB18_12
	.p2align	4, , 16
.LBB18_11:                              # %._crit_edge72
                                        #   in Loop: Header=BB18_12 Depth=1
	addi.w	$s3, $s2, 1
	fadd.s	$fs1, $fs1, $fs5
	ld.d	$a2, $a0, 0
	ld.w	$a5, $a0, 8
	fcvt.d.s	$fa0, $fs5
	fdiv.d	$fa0, $fa0, $fs2
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a3, $fs6
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 48
	st.d	$a0, $fp, 8
	move	$s2, $s3
	beqz	$a0, .LBB18_19
.LBB18_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_16 Depth 2
	fld.s	$fs5, $a0, 12
	fmov.d	$fs6, $fs3
	ld.d	$a1, $sp, 16
	movgr2cf	$fcc0, $a1
	bcnez	$fcc0, .LBB18_14
# %bb.13:                               #   in Loop: Header=BB18_12 Depth=1
	fdiv.s	$fa0, $fs5, $fs0
	fmul.s	$fa0, $fa0, $fs4
	fcvt.d.s	$fs6, $fa0
.LBB18_14:                              #   in Loop: Header=BB18_12 Depth=1
	blez	$s0, .LBB18_11
# %bb.15:                               # %.lr.ph71.preheader
                                        #   in Loop: Header=BB18_12 Depth=1
	move	$s3, $s0
	.p2align	4, , 16
.LBB18_16:                              # %.lr.ph71
                                        #   Parent Loop BB18_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 46
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	bnez	$s3, .LBB18_16
# %bb.17:                               # %._crit_edge72.loopexit
                                        #   in Loop: Header=BB18_12 Depth=1
	ld.d	$a0, $fp, 8
	b	.LBB18_11
.LBB18_18:
	move	$s3, $zero
	movgr2fr.w	$fs1, $zero
.LBB18_19:                              # %._crit_edge78
	fcmp.cule.s	$fcc0, $fs1, $fs0
	bcnez	$fcc0, .LBB18_21
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB18_21:
	blez	$s0, .LBB18_24
# %bb.22:                               # %.lr.ph82.preheader
	move	$s1, $s0
	.p2align	4, , 16
.LBB18_23:                              # %.lr.ph82
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 46
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB18_23
.LBB18_24:                              # %._crit_edge83
	movgr2fr.w	$fa0, $s5
	fcmp.cule.s	$fcc0, $fs0, $fa0
	fsub.s	$fa0, $fs0, $fs1
	bcnez	$fcc0, .LBB18_26
# %bb.25:
	fdiv.s	$fa1, $fa0, $fs0
	movgr2fr.w	$fa2, $s4
	fmul.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	b	.LBB18_27
.LBB18_26:
	movgr2fr.d	$fa1, $zero
.LBB18_27:                              # %._crit_edge83._crit_edge
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB18_39
# %bb.28:                               # %.lr.ph86
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 40
	move	$s1, $zero
	addi.w	$s0, $s0, 3
	ori	$s2, $zero, 1
	b	.LBB18_30
	.p2align	4, , 16
.LBB18_29:                              # %_ZN16CProfileIterator12Enter_ParentEv.exit
                                        #   in Loop: Header=BB18_30 Depth=1
	ld.d	$a0, $a0, 40
	st.d	$a0, $fp, 8
	addi.w	$s1, $s1, 1
	addi.w	$s2, $s2, -1
	beq	$s1, $s3, .LBB18_39
.LBB18_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_33 Depth 2
	st.d	$a0, $fp, 8
	sltu	$a1, $zero, $a0
	beqz	$s1, .LBB18_35
# %bb.31:                               #   in Loop: Header=BB18_30 Depth=1
	beqz	$a0, .LBB18_35
# %bb.32:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB18_30 Depth=1
	move	$a2, $s2
	.p2align	4, , 16
.LBB18_33:                              # %.lr.ph.i
                                        #   Parent Loop BB18_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 48
	st.d	$a0, $fp, 8
	sltu	$a1, $zero, $a0
	beqz	$a0, .LBB18_35
# %bb.34:                               # %.lr.ph.i
                                        #   in Loop: Header=BB18_33 Depth=2
	move	$a3, $a2
	addi.w	$a2, $a2, 1
	bnez	$a3, .LBB18_33
.LBB18_35:                              # %._crit_edge.i
                                        #   in Loop: Header=BB18_30 Depth=1
	beqz	$a1, .LBB18_37
# %bb.36:                               #   in Loop: Header=BB18_30 Depth=1
	ld.d	$a1, $a0, 40
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
.LBB18_37:                              # %_ZN16CProfileIterator11Enter_ChildEi.exit
                                        #   in Loop: Header=BB18_30 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13dumpRecursiveEP16CProfileIteratori)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
	beqz	$a1, .LBB18_29
# %bb.38:                               #   in Loop: Header=BB18_30 Depth=1
	st.d	$a1, $fp, 0
	move	$a0, $a1
	b	.LBB18_29
.LBB18_39:                              # %.loopexit
	fld.d	$fs6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
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
.Lfunc_end18:
	.size	_ZN15CProfileManager13dumpRecursiveEP16CProfileIteratori, .Lfunc_end18-_ZN15CProfileManager13dumpRecursiveEP16CProfileIteratori
                                        # -- End function
	.globl	_ZN15CProfileManager7dumpAllEv  # -- Begin function _ZN15CProfileManager7dumpAllEv
	.p2align	5
	.type	_ZN15CProfileManager7dumpAllEv,@function
_ZN15CProfileManager7dumpAllEv:         # @_ZN15CProfileManager7dumpAllEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZN15CProfileManager4RootE)
	addi.d	$a0, $a0, %pc_lo12(_ZN15CProfileManager4RootE)
	ld.d	$a1, $a0, 40
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13dumpRecursiveEP16CProfileIteratori)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end19:
	.size	_ZN15CProfileManager7dumpAllEv, .Lfunc_end19-_ZN15CProfileManager7dumpAllEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_btQuickprof.cpp
	.type	_GLOBAL__sub_I_btQuickprof.cpp,@function
_GLOBAL__sub_I_btQuickprof.cpp:         # @_GLOBAL__sub_I_btQuickprof.cpp
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL13gProfileClock)
	addi.d	$a0, $a0, %pc_lo12(_ZL13gProfileClock)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN15CProfileManager4RootE)
	addi.d	$fp, $a0, %pc_lo12(_ZN15CProfileManager4RootE)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $fp, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 8
	st.w	$zero, $fp, 24
	st.d	$zero, $fp, 32
	vst	$vr0, $fp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12CProfileNode5ResetEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN12CProfileNodeD2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZN12CProfileNodeD2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(__cxa_atexit)
	jr	$t8
.Lfunc_end20:
	.size	_GLOBAL__sub_I_btQuickprof.cpp, .Lfunc_end20-_GLOBAL__sub_I_btQuickprof.cpp
                                        # -- End function
	.type	_ZL13gProfileClock,@object      # @_ZL13gProfileClock
	.local	_ZL13gProfileClock
	.comm	_ZL13gProfileClock,16,16
	.hidden	__dso_handle
	.type	_ZN15CProfileManager4RootE,@object # @_ZN15CProfileManager4RootE
	.bss
	.globl	_ZN15CProfileManager4RootE
	.p2align	3, 0x0
_ZN15CProfileManager4RootE:
	.space	56
	.size	_ZN15CProfileManager4RootE, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Root"
	.size	.L.str, 5

	.type	_ZN15CProfileManager11CurrentNodeE,@object # @_ZN15CProfileManager11CurrentNodeE
	.data
	.globl	_ZN15CProfileManager11CurrentNodeE
	.p2align	3, 0x0
_ZN15CProfileManager11CurrentNodeE:
	.dword	_ZN15CProfileManager4RootE
	.size	_ZN15CProfileManager11CurrentNodeE, 8

	.type	_ZN15CProfileManager12FrameCounterE,@object # @_ZN15CProfileManager12FrameCounterE
	.bss
	.globl	_ZN15CProfileManager12FrameCounterE
	.p2align	2, 0x0
_ZN15CProfileManager12FrameCounterE:
	.word	0                               # 0x0
	.size	_ZN15CProfileManager12FrameCounterE, 4

	.type	_ZN15CProfileManager9ResetTimeE,@object # @_ZN15CProfileManager9ResetTimeE
	.globl	_ZN15CProfileManager9ResetTimeE
	.p2align	3, 0x0
_ZN15CProfileManager9ResetTimeE:
	.dword	0                               # 0x0
	.size	_ZN15CProfileManager9ResetTimeE, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Profiling: %s (total running time: %.3f ms) ---\n"
	.size	.L.str.4, 49

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%d -- %s (%.2f %%) :: %.3f ms / frame (%d calls)\n"
	.size	.L.str.5, 50

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s (%.3f %%) :: %.3f ms\n"
	.size	.L.str.7, 25

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Unaccounted:"
	.size	.L.str.8, 13

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_btQuickprof.cpp
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"----------------------------------"
	.size	.Lstr, 35

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"what's wrong"
	.size	.Lstr.1, 13

	.globl	_ZN12CProfileNodeC1EPKcPS_
	.type	_ZN12CProfileNodeC1EPKcPS_,@function
_ZN12CProfileNodeC1EPKcPS_ = _ZN12CProfileNodeC2EPKcPS_
	.globl	_ZN12CProfileNodeD1Ev
	.type	_ZN12CProfileNodeD1Ev,@function
_ZN12CProfileNodeD1Ev = _ZN12CProfileNodeD2Ev
	.globl	_ZN16CProfileIteratorC1EP12CProfileNode
	.type	_ZN16CProfileIteratorC1EP12CProfileNode,@function
_ZN16CProfileIteratorC1EP12CProfileNode = _ZN16CProfileIteratorC2EP12CProfileNode
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
	.addrsig_sym _GLOBAL__sub_I_btQuickprof.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL13gProfileClock
	.addrsig_sym __dso_handle
	.addrsig_sym _ZN15CProfileManager4RootE
