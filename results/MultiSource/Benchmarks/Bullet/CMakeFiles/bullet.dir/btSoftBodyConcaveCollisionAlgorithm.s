	.file	"btSoftBodyConcaveCollisionAlgorithm.cpp"
	.text
	.globl	_ZN35btSoftBodyConcaveCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b # -- Begin function _ZN35btSoftBodyConcaveCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b
	.p2align	5
	.type	_ZN35btSoftBodyConcaveCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b,@function
_ZN35btSoftBodyConcaveCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b: # @_ZN35btSoftBodyConcaveCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$fp, $a1
	move	$s4, $a0
	pcaddu18i	$ra, %call36(_ZN20btCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfo)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV35btSoftBodyConcaveCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV35btSoftBodyConcaveCollisionAlgorithm+16)
	ld.d	$a1, $fp, 0
	st.d	$a0, $s4, 0
	st.b	$s1, $s4, 16
	addi.d	$fp, $s4, 24
	pcalau12i	$a0, %pc_hi20(_ZTV26btSoftBodyTriangleCallback+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV26btSoftBodyTriangleCallback+16)
	st.d	$a0, $s4, 24
	st.d	$a1, $s4, 88
	st.d	$zero, $s4, 96
	addi.d	$s0, $s4, 112
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 136
	st.d	$zero, $s4, 128
	st.d	$zero, $s4, 116
	st.b	$a0, $s4, 168
	st.d	$zero, $s4, 160
	st.d	$zero, $s4, 148
	st.b	$a0, $s4, 200
	st.d	$zero, $s4, 192
	st.d	$zero, $s4, 180
	st.b	$a0, $s4, 232
	st.d	$zero, $s4, 224
	st.d	$zero, $s4, 212
	masknez	$a0, $s3, $s1
	maskeqz	$a1, $s2, $s1
	or	$a0, $a1, $a0
	st.d	$a0, $s4, 32
	masknez	$a0, $s2, $s1
	maskeqz	$a1, $s3, $s1
	or	$a0, $a1, $a0
	st.d	$a0, $s4, 40
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN26btSoftBodyTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_2:
.Ltmp2:                                 # EH_LABEL
	move	$s1, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.4:                                # %.body
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_5:
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN35btSoftBodyConcaveCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b, .Lfunc_end0-_ZN35btSoftBodyConcaveCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end0-.Ltmp6             #   Call between .Ltmp6 and .Lfunc_end0
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
.Lfunc_end1:
	.size	__clang_call_terminate, .Lfunc_end1-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev # -- Begin function _ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev
	.p2align	5
	.type	_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev,@function
_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev: # @_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev
	.cfi_startproc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV35btSoftBodyConcaveCollisionAlgorithm+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV35btSoftBodyConcaveCollisionAlgorithm+16)
	addi.d	$a1, $a0, 24
	st.d	$a2, $a0, 0
	move	$a0, $a1
	pcaddu18i	$t8, %call36(_ZN26btSoftBodyTriangleCallbackD2Ev)
	jr	$t8
.Lfunc_end2:
	.size	_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev, .Lfunc_end2-_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN35btSoftBodyConcaveCollisionAlgorithmD0Ev # -- Begin function _ZN35btSoftBodyConcaveCollisionAlgorithmD0Ev
	.p2align	5
	.type	_ZN35btSoftBodyConcaveCollisionAlgorithmD0Ev,@function
_ZN35btSoftBodyConcaveCollisionAlgorithmD0Ev: # @_ZN35btSoftBodyConcaveCollisionAlgorithmD0Ev
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV35btSoftBodyConcaveCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV35btSoftBodyConcaveCollisionAlgorithm+16)
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 24
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN26btSoftBodyTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.1:                                # %_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB3_2:
.Ltmp10:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN35btSoftBodyConcaveCollisionAlgorithmD0Ev, .Lfunc_end3-_ZN35btSoftBodyConcaveCollisionAlgorithmD0Ev
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
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN26btSoftBodyTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b # -- Begin function _ZN26btSoftBodyTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b
	.p2align	5
	.type	_ZN26btSoftBodyTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b,@function
_ZN26btSoftBodyTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b: # @_ZN26btSoftBodyTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %._crit_edge.i
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
	pcalau12i	$a0, %pc_hi20(_ZTV26btSoftBodyTriangleCallback+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV26btSoftBodyTriangleCallback+16)
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 64
	st.d	$zero, $fp, 72
	addi.d	$s0, $fp, 88
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 112
	st.d	$zero, $fp, 104
	st.d	$zero, $fp, 92
	st.b	$a0, $fp, 144
	st.d	$zero, $fp, 136
	st.d	$zero, $fp, 124
	st.b	$a0, $fp, 176
	st.d	$zero, $fp, 168
	st.d	$zero, $fp, 156
	st.b	$a0, $fp, 208
	st.d	$zero, $fp, 200
	st.d	$zero, $fp, 188
	masknez	$a0, $a2, $a4
	maskeqz	$a1, $a3, $a4
	or	$a0, $a1, $a0
	st.d	$a0, $fp, 8
	masknez	$a0, $a3, $a4
	maskeqz	$a1, $a2, $a4
	or	$a0, $a1, $a0
	st.d	$a0, $fp, 16
.Ltmp11:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.1:                                # %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_2:
.Ltmp13:                                # EH_LABEL
	move	$s1, $a0
.Ltmp14:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.3:
.Ltmp16:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.4:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_5:
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN26btSoftBodyTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b, .Lfunc_end4-_ZN26btSoftBodyTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp11-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin2          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp17-.Ltmp14                #   Call between .Ltmp14 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin2          #     jumps to .Ltmp18
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp17            #   Call between .Ltmp17 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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
	.globl	_ZN26btSoftBodyTriangleCallback10clearCacheEv # -- Begin function _ZN26btSoftBodyTriangleCallback10clearCacheEv
	.p2align	5
	.type	_ZN26btSoftBodyTriangleCallback10clearCacheEv,@function
_ZN26btSoftBodyTriangleCallback10clearCacheEv: # @_ZN26btSoftBodyTriangleCallback10clearCacheEv
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
	ld.w	$a0, $a0, 156
	blez	$a0, .LBB5_17
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $fp, 156
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_17
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_10 Depth 3
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 168
	ld.d	$s2, $a0, 776
	alsl.d	$a0, $s1, $a1, 4
	ld.w	$a1, $s2, 68
	ld.d	$s0, $a0, 8
	blez	$a1, .LBB5_15
# %bb.4:                                # %.lr.ph31.i
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$s4, $zero
	addi.d	$s3, $a0, 8
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_5:                                # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.w	$a1, $s2, 68
.LBB5_6:                                # %._crit_edge.i
                                        #   in Loop: Header=BB5_7 Depth=2
	addi.d	$s4, $s4, 1
	bge	$s4, $a1, .LBB5_14
.LBB5_7:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_10 Depth 3
	ld.d	$a2, $s2, 80
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $a2, $a0
	beqz	$a0, .LBB5_6
# %bb.8:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB5_7 Depth=2
	move	$s6, $zero
	alsl.d	$s5, $s4, $a2, 3
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_10 Depth=3
	move	$s6, $a0
	move	$a0, $s7
	beqz	$s7, .LBB5_5
.LBB5_10:                               # %.lr.ph.i
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 280
	ld.d	$s7, $a0, 288
	bne	$a1, $s0, .LBB5_9
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=3
	beqz	$s6, .LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_10 Depth=3
	st.d	$s7, $s6, 288
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	bnez	$s7, .LBB5_10
	b	.LBB5_5
.LBB5_13:                               #   in Loop: Header=BB5_10 Depth=3
	st.d	$s7, $s5, 0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	bnez	$s7, .LBB5_10
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_14:                               # %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$s0, $s3, 0
.LBB5_15:                               # %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	beqz	$s0, .LBB5_2
# %bb.16:                               #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
	b	.LBB5_2
.LBB5_17:                               # %._crit_edge
	addi.d	$a0, $fp, 88
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
	pcaddu18i	$t8, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv)
	jr	$t8
.Lfunc_end5:
	.size	_ZN26btSoftBodyTriangleCallback10clearCacheEv, .Lfunc_end5-_ZN26btSoftBodyTriangleCallback10clearCacheEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev,"axG",@progbits,_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev,comdat
	.weak	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev # -- Begin function _ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev
	.p2align	5
	.type	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev,@function
_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev: # @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	ld.d	$a0, $a0, 112
	beqz	$a0, .LBB6_3
# %bb.1:
	ld.b	$a1, $fp, 120
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_3
# %bb.2:
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
.LBB6_3:
	ld.d	$a0, $fp, 80
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 120
	st.d	$zero, $fp, 112
	st.d	$zero, $fp, 100
	beqz	$a0, .LBB6_6
# %bb.4:
	ld.b	$a1, $fp, 88
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_6
# %bb.5:
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
.LBB6_6:
	ld.d	$a0, $fp, 48
	st.b	$s0, $fp, 88
	st.d	$zero, $fp, 80
	st.d	$zero, $fp, 68
	beqz	$a0, .LBB6_9
# %bb.7:
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_9
# %bb.8:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
.LBB6_9:
	ld.d	$a0, $fp, 16
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
	beqz	$a0, .LBB6_12
# %bb.10:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_12
# %bb.11:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB6_12:                               # %_ZN20btAlignedObjectArrayIiED2Ev.exit15
	st.b	$s0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_13:
.Ltmp31:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_17
.LBB6_14:
.Ltmp26:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_16
.LBB6_15:
.Ltmp21:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 64
.Ltmp22:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI10btTriIndexED2Ev)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
.LBB6_16:
	addi.d	$a0, $fp, 32
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIiED2Ev)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
.LBB6_17:
.Ltmp32:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIiED2Ev)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.18:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_19:
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev, .Lfunc_end6-_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev,"aG",@progbits,_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp19-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin3          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin3          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin3          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp22-.Ltmp30                #   Call between .Ltmp30 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp33-.Ltmp22                #   Call between .Ltmp22 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin3          #     jumps to .Ltmp34
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp33-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Lfunc_end6-.Ltmp33            #   Call between .Ltmp33 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
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
	.globl	_ZN26btSoftBodyTriangleCallbackD2Ev # -- Begin function _ZN26btSoftBodyTriangleCallbackD2Ev
	.p2align	5
	.type	_ZN26btSoftBodyTriangleCallbackD2Ev,@function
_ZN26btSoftBodyTriangleCallbackD2Ev:    # @_ZN26btSoftBodyTriangleCallbackD2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
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
	pcalau12i	$a0, %pc_hi20(_ZTV26btSoftBodyTriangleCallback+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV26btSoftBodyTriangleCallback+16)
	ld.w	$a1, $fp, 156
	st.d	$a0, $fp, 0
	addi.d	$s0, $fp, 88
	blez	$a1, .LBB7_17
# %bb.1:                                # %.lr.ph.i
	move	$s2, $zero
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %.noexc4
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a0, $fp, 156
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB7_17
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #       Child Loop BB7_10 Depth 3
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 168
	ld.d	$s3, $a0, 776
	alsl.d	$a0, $s2, $a1, 4
	ld.w	$a1, $s3, 68
	ld.d	$s1, $a0, 8
	blez	$a1, .LBB7_15
# %bb.4:                                # %.lr.ph31.i.i
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$s5, $zero
	addi.d	$s4, $a0, 8
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_5:                                # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB7_7 Depth=2
	ld.w	$a1, $s3, 68
.LBB7_6:                                # %._crit_edge.i.i
                                        #   in Loop: Header=BB7_7 Depth=2
	addi.d	$s5, $s5, 1
	bge	$s5, $a1, .LBB7_14
.LBB7_7:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_10 Depth 3
	ld.d	$a2, $s3, 80
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $a2, $a0
	beqz	$a0, .LBB7_6
# %bb.8:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB7_7 Depth=2
	move	$s7, $zero
	alsl.d	$s6, $s5, $a2, 3
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                #   in Loop: Header=BB7_10 Depth=3
	move	$s7, $a0
	move	$a0, $s8
	beqz	$s8, .LBB7_5
.LBB7_10:                               # %.lr.ph.i.i
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 280
	ld.d	$s8, $a0, 288
	bne	$a1, $s1, .LBB7_9
# %bb.11:                               #   in Loop: Header=BB7_10 Depth=3
	beqz	$s7, .LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_10 Depth=3
	st.d	$s8, $s7, 288
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	bnez	$s8, .LBB7_10
	b	.LBB7_5
.LBB7_13:                               #   in Loop: Header=BB7_10 Depth=3
	st.d	$s8, $s6, 0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	bnez	$s8, .LBB7_10
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_14:                               # %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$s1, $s4, 0
.LBB7_15:                               # %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i
                                        #   in Loop: Header=BB7_3 Depth=1
	beqz	$s1, .LBB7_2
# %bb.16:                               #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 8
.Ltmp35:                                # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp36:                                # EH_LABEL
	b	.LBB7_2
.LBB7_17:                               # %._crit_edge.i
.Ltmp38:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.18:                               # %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit
.Ltmp43:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.19:
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZN18btTriangleCallbackD2Ev)
	jr	$t8
.LBB7_20:
.Ltmp45:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB7_24
.LBB7_21:                               # %.loopexit.split-lp
.Ltmp40:                                # EH_LABEL
	b	.LBB7_23
.LBB7_22:                               # %.loopexit
.Ltmp37:                                # EH_LABEL
.LBB7_23:
	move	$s1, $a0
.Ltmp41:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
.LBB7_24:
.Ltmp46:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.25:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_26:
.Ltmp48:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN26btSoftBodyTriangleCallbackD2Ev, .Lfunc_end7-_ZN26btSoftBodyTriangleCallbackD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin4          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin4          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin4          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp41-.Ltmp44                #   Call between .Ltmp44 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp47-.Ltmp41                #   Call between .Ltmp41 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin4          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp47-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Lfunc_end7-.Ltmp47            #   Call between .Ltmp47 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN26btSoftBodyTriangleCallbackD0Ev # -- Begin function _ZN26btSoftBodyTriangleCallbackD0Ev
	.p2align	5
	.type	_ZN26btSoftBodyTriangleCallbackD0Ev,@function
_ZN26btSoftBodyTriangleCallbackD0Ev:    # @_ZN26btSoftBodyTriangleCallbackD0Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
.Ltmp49:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN26btSoftBodyTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB8_2:
.Ltmp51:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN26btSoftBodyTriangleCallbackD0Ev, .Lfunc_end8-_ZN26btSoftBodyTriangleCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp49-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin5          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Lfunc_end8-.Ltmp50            #   Call between .Ltmp50 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv,"axG",@progbits,_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv,comdat
	.weak	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv # -- Begin function _ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv
	.p2align	5
	.type	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv,@function
_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv: # @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv
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
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB9_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB9_3:                                # %_ZN20btAlignedObjectArrayIiE5clearEv.exit
	ld.d	$a0, $fp, 48
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	beqz	$a0, .LBB9_6
# %bb.4:                                # %_ZN20btAlignedObjectArrayIiE5clearEv.exit
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_6
# %bb.5:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB9_6:                                # %_ZN20btAlignedObjectArrayIiE5clearEv.exit3
	ld.d	$a0, $fp, 80
	st.b	$s0, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
	beqz	$a0, .LBB9_9
# %bb.7:                                # %_ZN20btAlignedObjectArrayIiE5clearEv.exit3
	ld.b	$a1, $fp, 88
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_9
# %bb.8:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB9_9:                                # %_ZN20btAlignedObjectArrayI10btTriIndexE5clearEv.exit
	ld.d	$a0, $fp, 112
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 88
	st.d	$zero, $fp, 80
	st.d	$zero, $fp, 68
	beqz	$a0, .LBB9_12
# %bb.10:                               # %_ZN20btAlignedObjectArrayI10btTriIndexE5clearEv.exit
	ld.b	$a1, $fp, 120
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_12
# %bb.11:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB9_12:                               # %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE5clearEv.exit
	st.b	$s0, $fp, 120
	st.d	$zero, $fp, 112
	st.d	$zero, $fp, 100
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv, .Lfunc_end9-_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii
.LCPI10_0:
	.word	0x437f0000                      # float 255
	.word	0x437f0000                      # float 255
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI10_1:
	.word	0x3d75c28f                      # float 0.0599999987
	.text
	.globl	_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii
	.p2align	5
	.type	_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii,@function
_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii: # @_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a0
	ld.d	$s4, $a0, 16
	ld.d	$a0, $a0, 72
	ld.d	$fp, $s0, 64
	move	$s2, $a3
	move	$s3, $a2
	move	$s1, $a1
	beqz	$a0, .LBB10_4
# %bb.1:
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB10_4
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
	jirl	$ra, $a1, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI10_0)
	vst	$vr0, $sp, 16
	ld.d	$a0, $s0, 72
	fld.s	$fa0, $s4, 8
	fld.s	$fa1, $s4, 12
	fld.s	$fa2, $s1, 4
	fld.s	$fa3, $s1, 0
	fld.s	$fa4, $s4, 16
	fld.s	$fa5, $s1, 8
	fmul.s	$fa6, $fa1, $fa2
	fmadd.s	$fa6, $fa0, $fa3, $fa6
	fld.s	$fa7, $s4, 28
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fld.s	$ft0, $s4, 24
	fld.s	$ft1, $s4, 56
	fmul.s	$ft2, $fa2, $fa7
	fld.s	$ft3, $s4, 32
	fmadd.s	$ft2, $ft0, $fa3, $ft2
	fld.s	$ft4, $s4, 44
	fld.s	$ft5, $s4, 40
	fmadd.s	$ft2, $ft3, $fa5, $ft2
	fld.s	$ft6, $s4, 48
	fmul.s	$fa2, $fa2, $ft4
	fmadd.s	$fa2, $ft5, $fa3, $fa2
	fld.s	$fa3, $s4, 60
	fmadd.s	$fa2, $ft6, $fa5, $fa2
	fld.s	$fa5, $s4, 64
	ld.d	$a0, $a0, 24
	fadd.s	$fa6, $fa6, $ft1
	fadd.s	$ft2, $fa3, $ft2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a1, $fa6
	movfr2gr.s	$a2, $ft2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 128
	fld.s	$fa2, $s1, 20
	fld.s	$fa6, $s1, 16
	fld.s	$ft2, $s1, 24
	st.d	$a2, $sp, 136
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa6, $fa1
	fmadd.s	$fa0, $fa4, $ft2, $fa0
	fadd.s	$fa0, $ft1, $fa0
	fmul.s	$fa1, $fa7, $fa2
	fmadd.s	$fa1, $ft0, $fa6, $fa1
	fmadd.s	$fa1, $ft3, $ft2, $fa1
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa2, $ft4, $fa2
	fmadd.s	$fa2, $ft5, $fa6, $fa2
	fmadd.s	$fa2, $ft6, $ft2, $fa2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 112
	st.d	$a2, $sp, 120
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 16
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 72
	fld.s	$fa0, $s4, 8
	fld.s	$fa1, $s4, 12
	fld.s	$fa2, $s1, 20
	fld.s	$fa3, $s1, 16
	fld.s	$fa4, $s4, 16
	fld.s	$fa5, $s1, 24
	fmul.s	$fa6, $fa1, $fa2
	fmadd.s	$fa6, $fa0, $fa3, $fa6
	fld.s	$fa7, $s4, 28
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fld.s	$ft0, $s4, 24
	fld.s	$ft1, $s4, 56
	fmul.s	$ft2, $fa2, $fa7
	fld.s	$ft3, $s4, 32
	fmadd.s	$ft2, $ft0, $fa3, $ft2
	fld.s	$ft4, $s4, 44
	fld.s	$ft5, $s4, 40
	fmadd.s	$ft2, $ft3, $fa5, $ft2
	fld.s	$ft6, $s4, 48
	fmul.s	$fa2, $fa2, $ft4
	fmadd.s	$fa2, $ft5, $fa3, $fa2
	fld.s	$fa3, $s4, 60
	fmadd.s	$fa2, $ft6, $fa5, $fa2
	fld.s	$fa5, $s4, 64
	ld.d	$a0, $a0, 24
	fadd.s	$fa6, $fa6, $ft1
	fadd.s	$ft2, $fa3, $ft2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a1, $fa6
	movfr2gr.s	$a2, $ft2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 128
	fld.s	$fa2, $s1, 36
	fld.s	$fa6, $s1, 32
	fld.s	$ft2, $s1, 40
	st.d	$a2, $sp, 136
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa6, $fa1
	fmadd.s	$fa0, $fa4, $ft2, $fa0
	fadd.s	$fa0, $ft1, $fa0
	fmul.s	$fa1, $fa7, $fa2
	fmadd.s	$fa1, $ft0, $fa6, $fa1
	fmadd.s	$fa1, $ft3, $ft2, $fa1
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa2, $ft4, $fa2
	fmadd.s	$fa2, $ft5, $fa6, $fa2
	fmadd.s	$fa2, $ft6, $ft2, $fa2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 112
	st.d	$a2, $sp, 120
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 16
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 72
	fld.s	$fa0, $s4, 8
	fld.s	$fa1, $s4, 12
	fld.s	$fa2, $s1, 36
	fld.s	$fa3, $s1, 32
	fld.s	$fa4, $s4, 16
	fld.s	$fa5, $s1, 40
	fmul.s	$fa6, $fa1, $fa2
	fmadd.s	$fa6, $fa0, $fa3, $fa6
	fld.s	$fa7, $s4, 28
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fld.s	$ft0, $s4, 24
	fld.s	$ft1, $s4, 56
	fmul.s	$ft2, $fa2, $fa7
	fld.s	$ft3, $s4, 32
	fmadd.s	$ft2, $ft0, $fa3, $ft2
	fld.s	$ft4, $s4, 44
	fld.s	$ft5, $s4, 40
	fmadd.s	$ft2, $ft3, $fa5, $ft2
	fld.s	$ft6, $s4, 48
	fmul.s	$fa2, $fa2, $ft4
	fmadd.s	$fa2, $ft5, $fa3, $fa2
	fld.s	$fa3, $s4, 60
	fmadd.s	$fa2, $ft6, $fa5, $fa2
	fld.s	$fa5, $s4, 64
	ld.d	$a0, $a0, 24
	fadd.s	$fa6, $fa6, $ft1
	fadd.s	$ft2, $fa3, $ft2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a1, $fa6
	movfr2gr.s	$a2, $ft2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 128
	fld.s	$fa2, $s1, 4
	fld.s	$fa6, $s1, 0
	fld.s	$ft2, $s1, 8
	st.d	$a2, $sp, 136
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa6, $fa1
	fmadd.s	$fa0, $fa4, $ft2, $fa0
	fadd.s	$fa0, $ft1, $fa0
	fmul.s	$fa1, $fa7, $fa2
	fmadd.s	$fa1, $ft0, $fa6, $fa1
	fmadd.s	$fa1, $ft3, $ft2, $fa1
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa2, $ft4, $fa2
	fmadd.s	$fa2, $ft5, $fa6, $fa2
	fmadd.s	$fa2, $ft6, $ft2, $fa2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 112
	st.d	$a2, $sp, 120
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 16
	jirl	$ra, $a4, 0
.LBB10_4:
	slli.w	$a0, $s3, 21
	or	$a0, $a0, $s2
	slli.d	$a1, $s2, 15
	nor	$a1, $a1, $zero
	add.w	$a1, $a0, $a1
	bstrpick.d	$a2, $a1, 31, 10
	xor	$a1, $a2, $a1
	alsl.w	$a1, $a1, $a1, 3
	bstrpick.d	$a2, $a1, 31, 6
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 11
	nor	$a2, $a2, $zero
	add.w	$a1, $a1, $a2
	ld.w	$a2, $s0, 160
	bstrpick.d	$a3, $a1, 31, 16
	xor	$a1, $a3, $a1
	ld.w	$a3, $s0, 92
	addi.w	$a2, $a2, -1
	and	$a1, $a2, $a1
	st.w	$a0, $sp, 128
	st.w	$a0, $sp, 112
	bgeu	$a1, $a3, .LBB10_11
# %bb.5:
	ld.d	$a2, $s0, 104
	addi.w	$a1, $a1, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB10_11
# %bb.6:                                # %.lr.ph.i.i.i
	ld.d	$a3, $s0, 200
	ld.d	$a4, $s0, 136
	.p2align	4, , 16
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a1, 2
	ldx.w	$a6, $a3, $a5
	beq	$a0, $a6, .LBB10_9
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=1
	ldx.w	$a1, $a4, $a5
	bne	$a1, $a2, .LBB10_7
	b	.LBB10_11
.LBB10_9:                               # %_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit
	ld.d	$a0, $s0, 168
	beqz	$a0, .LBB10_11
# %bb.10:
	ld.d	$a2, $s4, 208
	alsl.d	$a0, $a1, $a0, 4
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a2, 16
	st.d	$a1, $a0, 16
	ld.d	$s2, $s4, 200
	st.d	$a0, $s4, 200
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 16
	ld.d	$a4, $a0, 16
	move	$a0, $fp
	move	$a3, $zero
	jirl	$ra, $a4, 0
	move	$s1, $a0
	ld.d	$a1, $s0, 8
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 16
	ld.d	$a3, $s0, 72
	ld.d	$a4, $s0, 56
	ld.d	$a5, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a5, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 104
	move	$a0, $fp
	move	$a1, $s1
	jirl	$ra, $a2, 0
	st.d	$s2, $s4, 200
	b	.LBB10_13
.LBB10_11:                              # %_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit.thread
	fld.s	$fa1, $s1, 16
	fld.s	$fa6, $s1, 0
	fld.s	$fa4, $s1, 20
	fld.s	$fa7, $s1, 4
	fsub.s	$ft1, $fa1, $fa6
	fsub.s	$ft2, $fa4, $fa7
	fld.s	$fa5, $s1, 24
	fld.s	$ft0, $s1, 8
	fld.s	$fa0, $s1, 32
	fld.s	$fa2, $s1, 36
	fld.s	$fa3, $s1, 40
	fsub.s	$ft3, $fa5, $ft0
	fsub.s	$ft4, $fa0, $fa6
	fsub.s	$ft5, $fa2, $fa7
	fsub.s	$ft6, $fa3, $ft0
	fneg.s	$ft7, $ft5
	fmul.s	$ft7, $ft3, $ft7
	fmadd.s	$ft7, $ft2, $ft6, $ft7
	fneg.s	$ft6, $ft6
	fmul.s	$ft6, $ft1, $ft6
	fmadd.s	$ft3, $ft3, $ft4, $ft6
	fneg.s	$ft4, $ft4
	fmul.s	$ft2, $ft2, $ft4
	fmadd.s	$ft1, $ft1, $ft5, $ft2
	fmul.s	$ft2, $ft3, $ft3
	fmadd.s	$ft2, $ft7, $ft7, $ft2
	fmadd.s	$ft2, $ft1, $ft1, $ft2
	frsqrt.s	$ft2, $ft2
	pcalau12i	$a0, %pc_hi20(.LCPI10_1)
	fld.s	$ft4, $a0, %pc_lo12(.LCPI10_1)
	fmul.s	$ft5, $ft7, $ft2
	fmul.s	$ft3, $ft3, $ft2
	fmul.s	$ft1, $ft1, $ft2
	fmul.s	$ft2, $ft5, $ft4
	fmul.s	$ft3, $ft3, $ft4
	fmul.s	$ft1, $ft1, $ft4
	fadd.s	$ft4, $fa6, $ft2
	fadd.s	$ft5, $fa7, $ft3
	fadd.s	$ft6, $ft0, $ft1
	movfr2gr.s	$a0, $ft4
	movfr2gr.s	$a1, $ft5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft6
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	fadd.s	$ft4, $fa1, $ft2
	fadd.s	$ft5, $fa4, $ft3
	fadd.s	$ft6, $fa5, $ft1
	movfr2gr.s	$a0, $ft4
	movfr2gr.s	$a1, $ft5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft6
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fadd.s	$ft4, $fa0, $ft2
	fadd.s	$ft5, $fa2, $ft3
	fadd.s	$ft6, $fa3, $ft1
	movfr2gr.s	$a0, $ft4
	movfr2gr.s	$a1, $ft5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft6
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	fsub.s	$fa6, $fa6, $ft2
	fsub.s	$fa7, $fa7, $ft3
	fsub.s	$ft0, $ft0, $ft1
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	fsub.s	$fa1, $fa1, $ft2
	fsub.s	$fa4, $fa4, $ft3
	fsub.s	$fa5, $fa5, $ft1
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	fsub.s	$fa0, $fa0, $ft2
	fsub.s	$fa1, $fa2, $ft3
	fsub.s	$fa2, $fa3, $ft1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	ori	$a0, $zero, 136
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.Ltmp52:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 6
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(_ZN17btConvexHullShapeC1EPKfii)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.12:
	ld.d	$a0, $s4, 208
	ld.d	$a0, $a0, 16
	st.d	$a0, $s1, 16
	ld.d	$s5, $s4, 200
	st.d	$s1, $s4, 200
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 16
	ld.d	$a4, $a0, 16
	addi.d	$s2, $s0, 88
	move	$a0, $fp
	move	$a3, $zero
	jirl	$ra, $a4, 0
	move	$s3, $a0
	ld.d	$a1, $s0, 8
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 16
	ld.d	$a3, $s0, 72
	ld.d	$a4, $s0, 56
	ld.d	$a5, $a0, 16
	move	$a0, $s3
	jirl	$ra, $a5, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 104
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a2, 0
	st.d	$s5, $s4, 200
	st.d	$s1, $sp, 136
	addi.d	$a1, $sp, 112
	addi.d	$a2, $sp, 128
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_)
	jirl	$ra, $ra, 0
.LBB10_13:
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
.LBB10_14:
.Ltmp54:                                # EH_LABEL
	move	$fp, $a0
.Ltmp55:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.15:                               # %_ZN17btConvexHullShapedlEPv.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_16:
.Ltmp57:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii, .Lfunc_end10-_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp52-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin6          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp55-.Ltmp53                #   Call between .Ltmp53 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin6          #     jumps to .Ltmp57
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp56-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Lfunc_end10-.Ltmp56           #   Call between .Ltmp56 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_,"axG",@progbits,_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_,comdat
	.weak	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_ # -- Begin function _ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_
	.p2align	5
	.type	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_,@function
_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_: # @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_
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
	ld.w	$a1, $a1, 0
	move	$fp, $a0
	slli.d	$a0, $a1, 15
	nor	$a0, $a0, $zero
	add.w	$a0, $a1, $a0
	bstrpick.d	$a3, $a0, 31, 10
	xor	$a0, $a3, $a0
	alsl.w	$a0, $a0, $a0, 3
	bstrpick.d	$a3, $a0, 31, 6
	xor	$a0, $a3, $a0
	slli.d	$a3, $a0, 11
	nor	$a3, $a3, $zero
	add.w	$a0, $a0, $a3
	ld.w	$s3, $fp, 72
	bstrpick.d	$a3, $a0, 31, 16
	ld.w	$a4, $fp, 4
	xor	$a0, $a3, $a0
	addi.w	$a3, $s3, -1
	and	$s4, $a0, $a3
	bgeu	$s4, $a4, .LBB11_5
# %bb.1:
	ld.d	$a0, $fp, 16
	addi.w	$a3, $s4, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a0, $a0, $a3
	addi.w	$a3, $zero, -1
	beq	$a0, $a3, .LBB11_5
# %bb.2:                                # %.lr.ph.i
	ld.d	$a4, $fp, 112
	ld.d	$a5, $fp, 48
	.p2align	4, , 16
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a6, $a0, 2
	ldx.w	$a7, $a4, $a6
	beq	$a1, $a7, .LBB11_9
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	ldx.w	$a0, $a5, $a6
	bne	$a0, $a3, .LBB11_3
.LBB11_5:                               # %.loopexit
	ld.w	$s2, $fp, 68
	move	$a0, $s2
	bne	$s2, $s3, .LBB11_17
# %bb.6:
	sltui	$a0, $s3, 1
	slli.w	$a1, $s3, 1
	masknez	$a1, $a1, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s5, $a0, $a1
	move	$a0, $s3
	bge	$s3, $s5, .LBB11_17
# %bb.7:
	move	$s6, $a2
	beqz	$s5, .LBB11_10
# %bb.8:
	slli.d	$a0, $s5, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 68
	move	$s1, $a0
	bgtz	$a1, .LBB11_11
	b	.LBB11_13
.LBB11_9:                               # %_ZNK9btHashMapI9btHashKeyI10btTriIndexES1_E9findIndexERKS2_.exit
	ld.d	$a1, $fp, 80
	vld	$vr0, $a2, 0
	slli.d	$a0, $a0, 4
	vstx	$vr0, $a1, $a0
	b	.LBB11_37
.LBB11_10:
	move	$s1, $zero
	move	$a1, $s3
	blez	$a1, .LBB11_13
.LBB11_11:                              # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB11_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 80
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB11_12
.LBB11_13:                              # %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB11_16
# %bb.14:                               # %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 88
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_16
# %bb.15:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB11_16:                              # %_ZN20btAlignedObjectArrayI10btTriIndexE10deallocateEv.exit.i.i
	ori	$a1, $zero, 1
	ld.w	$a0, $fp, 68
	st.b	$a1, $fp, 88
	st.d	$s1, $fp, 80
	st.w	$s5, $fp, 72
	move	$a2, $s6
.LBB11_17:                              # %_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit
	ld.d	$a1, $fp, 80
	vld	$vr0, $a2, 0
	slli.d	$a0, $a0, 4
	vstx	$vr0, $a1, $a0
	ld.w	$a0, $fp, 68
	ld.w	$a1, $fp, 100
	ld.w	$a2, $fp, 104
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 68
	bne	$a1, $a2, .LBB11_34
# %bb.18:
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s5, $a0, $a2
	bge	$a1, $s5, .LBB11_34
# %bb.19:
	beqz	$s5, .LBB11_28
# %bb.20:
	slli.d	$a0, $s5, 2
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 100
	move	$s1, $a0
	ld.d	$a0, $fp, 112
	blez	$a1, .LBB11_29
.LBB11_21:                              # %.lr.ph.i.i.i22
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a1, $a3, .LBB11_26
# %bb.22:                               # %.lr.ph.i.i.i22
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_26
# %bb.23:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_24:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_24
# %bb.25:                               # %middle.block
	beq	$a2, $a1, .LBB11_30
.LBB11_26:                              # %scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s1, 2
	.p2align	4, , 16
.LBB11_27:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB11_27
	b	.LBB11_30
.LBB11_28:
	move	$s1, $zero
	ld.d	$a0, $fp, 112
	bgtz	$a1, .LBB11_21
.LBB11_29:                              # %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.i.i
	beqz	$a0, .LBB11_33
.LBB11_30:                              # %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i
	ld.bu	$a1, $fp, 120
	beqz	$a1, .LBB11_32
# %bb.31:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB11_32:
	ld.w	$a1, $fp, 100
.LBB11_33:                              # %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 120
	st.d	$s1, $fp, 112
	st.w	$s5, $fp, 104
.LBB11_34:                              # %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit
	ld.d	$a0, $fp, 112
	ld.w	$a2, $s0, 0
	slli.d	$a1, $a1, 2
	stx.w	$a2, $a0, $a1
	ld.w	$a0, $fp, 100
	ld.w	$a1, $fp, 72
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 100
	bge	$s3, $a1, .LBB11_36
# %bb.35:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	slli.d	$a1, $a0, 15
	nor	$a1, $a1, $zero
	add.w	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 10
	xor	$a0, $a1, $a0
	alsl.w	$a0, $a0, $a0, 3
	bstrpick.d	$a1, $a0, 31, 6
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 11
	nor	$a1, $a1, $zero
	ld.w	$a2, $fp, 72
	add.w	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 16
	xor	$a0, $a1, $a0
	addi.d	$a1, $a2, -1
	and	$s4, $a0, $a1
.LBB11_36:
	ld.d	$a0, $fp, 16
	addi.w	$a1, $s4, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a0, $a1
	ld.d	$a3, $fp, 48
	slli.d	$a4, $s2, 2
	stx.w	$a2, $a3, $a4
	stx.w	$s2, $a0, $a1
.LBB11_37:                              # %_ZNK9btHashMapI9btHashKeyI10btTriIndexES1_E9findIndexERKS2_.exit
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
.Lfunc_end11:
	.size	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_, .Lfunc_end11-_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult
.LCPI12_0:
	.word	0x3d75c28f                      # float 0.0599999987
	.text
	.globl	_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult,@function
_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult: # @_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	.cfi_offset 57, -32
	.cfi_offset 58, -40
	.cfi_offset 59, -48
	move	$fp, $a0
	pcalau12i	$a3, %pc_hi20(.LCPI12_0)
	ld.d	$a0, $a0, 8
	fld.s	$fa1, $a3, %pc_lo12(.LCPI12_0)
	st.d	$a1, $fp, 72
	ld.d	$a1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 80
	st.d	$a2, $fp, 56
	ld.d	$a3, $a1, 32
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	jirl	$ra, $a3, 0
	fld.s	$fa3, $sp, 16
	fld.s	$fa4, $sp, 32
	fld.s	$fa5, $sp, 20
	fld.s	$fa6, $sp, 36
	fld.s	$fa7, $sp, 24
	fld.s	$ft0, $sp, 40
	fsub.s	$fa0, $fa3, $fa4
	fsub.s	$fa1, $fa5, $fa6
	fsub.s	$fa2, $fa7, $ft0
	vldi	$vr9, -1184
	fmul.s	$fa0, $fa0, $ft1
	fmul.s	$fa1, $fa1, $ft1
	fmul.s	$fa2, $fa2, $ft1
	fadd.s	$fa3, $fa3, $fa4
	fadd.s	$fa4, $fa5, $fa6
	fadd.s	$fa5, $fa7, $ft0
	ld.d	$a0, $fp, 16
	fmul.s	$fa3, $fa3, $ft1
	fmul.s	$fa4, $fa4, $ft1
	fmul.s	$fa5, $fa5, $ft1
	fld.s	$fa6, $a0, 8
	fld.s	$fa7, $a0, 24
	fld.s	$ft0, $a0, 40
	fld.s	$ft1, $a0, 12
	fld.s	$ft2, $a0, 28
	fld.s	$ft3, $a0, 44
	fld.s	$ft4, $a0, 16
	fld.s	$ft5, $a0, 32
	fld.s	$ft6, $a0, 56
	fld.s	$ft7, $a0, 60
	fld.s	$ft8, $a0, 64
	fld.s	$ft9, $a0, 48
	fneg.s	$ft6, $ft6
	fneg.s	$ft7, $ft7
	fneg.s	$ft8, $ft8
	fmul.s	$ft10, $fa7, $ft7
	fmadd.s	$ft10, $fa6, $ft6, $ft10
	fmadd.s	$ft10, $ft0, $ft8, $ft10
	fmul.s	$ft11, $ft2, $ft7
	fmadd.s	$ft11, $ft1, $ft6, $ft11
	fmadd.s	$ft11, $ft3, $ft8, $ft11
	fmul.s	$ft7, $ft5, $ft7
	fmadd.s	$ft6, $ft4, $ft6, $ft7
	fmadd.s	$ft6, $ft9, $ft8, $ft6
	movgr2fr.w	$ft7, $zero
	fmul.s	$ft8, $fa7, $ft7
	fadd.s	$ft12, $fa6, $ft8
	fmadd.s	$ft12, $ft0, $ft7, $ft12
	fmadd.s	$ft13, $fa6, $ft7, $fa7
	fmadd.s	$ft13, $ft0, $ft7, $ft13
	fmadd.s	$ft8, $fa6, $ft7, $ft8
	fadd.s	$ft8, $ft0, $ft8
	fmul.s	$ft14, $ft2, $ft7
	fadd.s	$ft15, $ft1, $ft14
	fmadd.s	$ft15, $ft3, $ft7, $ft15
	fmadd.s	$fs0, $ft1, $ft7, $ft2
	fmadd.s	$fs0, $ft3, $ft7, $fs0
	fmadd.s	$ft14, $ft1, $ft7, $ft14
	fadd.s	$ft14, $ft3, $ft14
	fmul.s	$fs1, $ft5, $ft7
	fadd.s	$fs2, $ft4, $fs1
	fmadd.s	$fs2, $ft9, $ft7, $fs2
	fmadd.s	$fs3, $ft4, $ft7, $ft5
	fmadd.s	$fs3, $ft9, $ft7, $fs3
	fmadd.s	$ft7, $ft4, $ft7, $fs1
	fadd.s	$ft7, $ft9, $ft7
	fmul.s	$fa7, $fa4, $fa7
	fmadd.s	$fa6, $fa6, $fa3, $fa7
	fmadd.s	$fa6, $ft0, $fa5, $fa6
	fadd.s	$fa6, $fa6, $ft10
	fmul.s	$fa7, $fa4, $ft2
	fmadd.s	$fa7, $ft1, $fa3, $fa7
	fmadd.s	$fa7, $ft3, $fa5, $fa7
	fadd.s	$fa7, $fa7, $ft11
	fmul.s	$fa4, $fa4, $ft5
	fld.s	$ft0, $fp, 80
	fmadd.s	$fa3, $ft4, $fa3, $fa4
	fmadd.s	$fa3, $ft9, $fa5, $fa3
	fadd.s	$fa3, $fa3, $ft6
	fadd.s	$fa0, $fa0, $ft0
	fadd.s	$fa1, $fa1, $ft0
	fadd.s	$fa2, $fa2, $ft0
	fabs.s	$fa4, $ft12
	fabs.s	$fa5, $ft13
	fabs.s	$ft0, $ft8
	fabs.s	$ft1, $ft15
	fabs.s	$ft2, $fs0
	fabs.s	$ft3, $ft14
	fabs.s	$ft4, $fs2
	fabs.s	$ft5, $fs3
	fabs.s	$ft6, $ft7
	fmul.s	$fa5, $fa5, $fa1
	fmadd.s	$fa4, $fa4, $fa0, $fa5
	fmadd.s	$fa4, $ft0, $fa2, $fa4
	fmul.s	$fa5, $ft2, $fa1
	fmadd.s	$fa5, $ft1, $fa0, $fa5
	fmadd.s	$fa5, $ft3, $fa2, $fa5
	fmul.s	$fa1, $ft5, $fa1
	fmadd.s	$fa0, $ft4, $fa0, $fa1
	fmadd.s	$fa0, $ft6, $fa2, $fa0
	fsub.s	$fa1, $fa6, $fa4
	fsub.s	$fa2, $fa7, $fa5
	fsub.s	$ft0, $fa3, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 24
	st.d	$a1, $fp, 32
	fadd.s	$fa1, $fa6, $fa4
	fadd.s	$fa2, $fa7, $fa5
	fadd.s	$fa0, $fa3, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 40
	st.d	$a1, $fp, 48
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end12:
	.size	_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult, .Lfunc_end12-_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.globl	_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv # -- Begin function _ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv
	.p2align	5
	.type	_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv,@function
_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv: # @_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv
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
	ld.w	$a0, $a0, 180
	blez	$a0, .LBB13_17
# %bb.1:                                # %.lr.ph.i
	move	$s1, $zero
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	ld.w	$a0, $fp, 180
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB13_17
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
                                        #       Child Loop BB13_10 Depth 3
	ld.d	$a0, $fp, 32
	ld.d	$a1, $fp, 192
	ld.d	$s2, $a0, 776
	alsl.d	$a0, $s1, $a1, 4
	ld.w	$a1, $s2, 68
	ld.d	$s0, $a0, 8
	blez	$a1, .LBB13_15
# %bb.4:                                # %.lr.ph31.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$s4, $zero
	addi.d	$s3, $a0, 8
	b	.LBB13_7
	.p2align	4, , 16
.LBB13_5:                               # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.w	$a1, $s2, 68
.LBB13_6:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB13_7 Depth=2
	addi.d	$s4, $s4, 1
	bge	$s4, $a1, .LBB13_14
.LBB13_7:                               #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_10 Depth 3
	ld.d	$a2, $s2, 80
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $a2, $a0
	beqz	$a0, .LBB13_6
# %bb.8:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB13_7 Depth=2
	move	$s6, $zero
	alsl.d	$s5, $s4, $a2, 3
	b	.LBB13_10
	.p2align	4, , 16
.LBB13_9:                               #   in Loop: Header=BB13_10 Depth=3
	move	$s6, $a0
	move	$a0, $s7
	beqz	$s7, .LBB13_5
.LBB13_10:                              # %.lr.ph.i.i
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 280
	ld.d	$s7, $a0, 288
	bne	$a1, $s0, .LBB13_9
# %bb.11:                               #   in Loop: Header=BB13_10 Depth=3
	beqz	$s6, .LBB13_13
# %bb.12:                               #   in Loop: Header=BB13_10 Depth=3
	st.d	$s7, $s6, 288
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	bnez	$s7, .LBB13_10
	b	.LBB13_5
.LBB13_13:                              #   in Loop: Header=BB13_10 Depth=3
	st.d	$s7, $s5, 0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	bnez	$s7, .LBB13_10
	b	.LBB13_5
	.p2align	4, , 16
.LBB13_14:                              # %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$s0, $s3, 0
.LBB13_15:                              # %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i
                                        #   in Loop: Header=BB13_3 Depth=1
	beqz	$s0, .LBB13_2
# %bb.16:                               #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
	b	.LBB13_2
.LBB13_17:                              # %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit
	addi.d	$a0, $fp, 112
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
	pcaddu18i	$t8, %call36(_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv)
	jr	$t8
.Lfunc_end13:
	.size	_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv, .Lfunc_end13-_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
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
	ld.bu	$a0, $a0, 16
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ld.d	$s0, $a0, 200
	ld.w	$a0, $s0, 8
	addi.w	$a0, $a0, -21
	ori	$a1, $zero, 8
	bltu	$a1, $a0, .LBB14_2
# %bb.1:
	move	$s1, $a4
	move	$s2, $a3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 88
	move	$a0, $s0
	jirl	$ra, $a1, 0
	addi.d	$s3, $fp, 24
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 96
	addi.d	$a2, $fp, 48
	addi.d	$a3, $fp, 64
	move	$a0, $s0
	move	$a1, $s3
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	jr	$a4
.LBB14_2:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end14-_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.globl	_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -384
	.cfi_def_cfa_offset 384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 328                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 320                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 312                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 304                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	.cfi_offset 57, -32
	.cfi_offset 58, -40
	.cfi_offset 59, -48
	.cfi_offset 60, -56
	.cfi_offset 61, -64
	.cfi_offset 62, -72
	.cfi_offset 63, -80
	ld.bu	$a0, $a0, 16
	masknez	$a3, $a1, $a0
	maskeqz	$a4, $a2, $a0
	or	$fp, $a4, $a3
	fld.s	$fa1, $fp, 120
	fld.s	$ft12, $fp, 56
	fld.s	$fa0, $fp, 124
	fld.s	$ft13, $fp, 60
	fsub.s	$fa2, $fa1, $ft12
	fsub.s	$fa3, $fa0, $ft13
	fld.s	$fa4, $fp, 128
	fld.s	$fa0, $fp, 64
	fmul.s	$fa3, $fa3, $fa3
	fld.s	$fa5, $fp, 268
	fmadd.s	$fa2, $fa2, $fa2, $fa3
	fsub.s	$fa3, $fa4, $fa0
	fmadd.s	$fa2, $fa3, $fa3, $fa2
	fmul.s	$fa3, $fa5, $fa5
	fcmp.clt.s	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB15_9
# %bb.1:
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a1, $a0, $a2
	ld.d	$a0, $a1, 200
	ld.w	$a2, $a0, 8
	addi.w	$a2, $a2, -21
	ori	$a3, $zero, 8
	bltu	$a3, $a2, .LBB15_9
# %bb.2:
	fld.s	$ft4, $a1, 8
	fld.s	$ft7, $a1, 24
	fld.s	$ft1, $a1, 12
	fld.s	$ft5, $a1, 28
	fld.s	$fa2, $a1, 56
	fld.s	$fa3, $a1, 60
	fld.s	$ft6, $a1, 16
	fld.s	$ft8, $a1, 32
	fneg.s	$fa2, $fa2
	fneg.s	$fa3, $fa3
	fmul.s	$fa4, $ft7, $fa3
	fmadd.s	$ft9, $ft4, $fa2, $fa4
	fmul.s	$fa4, $ft5, $fa3
	fmadd.s	$ft10, $ft1, $fa2, $fa4
	fld.s	$fa4, $fp, 24
	fld.s	$fa5, $fp, 8
	fmul.s	$fa3, $ft8, $fa3
	fmadd.s	$ft11, $ft6, $fa2, $fa3
	fmul.s	$fa2, $ft7, $fa4
	fmadd.s	$fa2, $fa5, $ft4, $fa2
	fst.s	$fa2, $sp, 48                   # 4-byte Folded Spill
	fld.s	$fa2, $fp, 28
	fld.s	$fa3, $fp, 12
	fld.s	$fa6, $fp, 32
	fld.s	$fa7, $fp, 16
	fmul.s	$ft0, $ft7, $fa2
	fmadd.s	$ft0, $fa3, $ft4, $ft0
	fst.s	$ft0, $sp, 44                   # 4-byte Folded Spill
	fmul.s	$ft0, $ft7, $fa6
	fmadd.s	$ft0, $fa7, $ft4, $ft0
	fst.s	$ft0, $sp, 40                   # 4-byte Folded Spill
	fmul.s	$ft0, $ft5, $fa4
	fmadd.s	$ft0, $fa5, $ft1, $ft0
	fst.s	$ft0, $sp, 36                   # 4-byte Folded Spill
	fmul.s	$ft0, $ft5, $fa2
	fmadd.s	$ft0, $fa3, $ft1, $ft0
	fst.s	$ft0, $sp, 32                   # 4-byte Folded Spill
	fmul.s	$ft0, $ft5, $fa6
	fmadd.s	$ft0, $fa7, $ft1, $ft0
	fst.s	$ft0, $sp, 28                   # 4-byte Folded Spill
	fmul.s	$fa4, $ft8, $fa4
	fmadd.s	$fa4, $fa5, $ft6, $fa4
	fst.s	$fa4, $sp, 24                   # 4-byte Folded Spill
	fmul.s	$fa2, $ft8, $fa2
	fmadd.s	$fa2, $fa3, $ft6, $fa2
	fst.s	$fa2, $sp, 20                   # 4-byte Folded Spill
	fmul.s	$fa2, $ft8, $fa6
	fmadd.s	$fa2, $fa7, $ft6, $fa2
	fst.s	$fa2, $sp, 16                   # 4-byte Folded Spill
	fmul.s	$fa2, $ft7, $ft13
	fmadd.s	$fs2, $ft4, $ft12, $fa2
	fmul.s	$fa2, $ft5, $ft13
	fmadd.s	$fs3, $ft1, $ft12, $fa2
	fmul.s	$fa2, $ft8, $ft13
	fmadd.s	$fs6, $ft6, $ft12, $fa2
	fld.s	$fa2, $fp, 88
	fld.s	$fa3, $fp, 72
	fld.s	$fa4, $fp, 92
	fld.s	$fa5, $fp, 76
	fmul.s	$fa6, $ft7, $fa2
	fmadd.s	$ft2, $fa3, $ft4, $fa6
	fmul.s	$fa6, $ft7, $fa4
	fmadd.s	$ft3, $fa5, $ft4, $fa6
	fld.s	$ft0, $fp, 80
	fld.s	$ft12, $fp, 96
	fmul.s	$fa6, $ft5, $fa2
	fmadd.s	$fa6, $fa3, $ft1, $fa6
	fmul.s	$fa2, $ft8, $fa2
	fmadd.s	$fa3, $fa3, $ft6, $fa2
	fmul.s	$fa2, $ft5, $fa4
	fmadd.s	$fa7, $fa5, $ft1, $fa2
	fmul.s	$fa2, $ft8, $fa4
	fmadd.s	$fa2, $fa5, $ft6, $fa2
	fst.s	$fa2, $sp, 12                   # 4-byte Folded Spill
	fmul.s	$fa2, $ft7, $ft12
	fmadd.s	$fs4, $ft0, $ft4, $fa2
	fmul.s	$fa2, $ft5, $ft12
	fld.s	$fa4, $fp, 124
	fmadd.s	$fs7, $ft0, $ft1, $fa2
	fmul.s	$fa2, $ft8, $ft12
	fmadd.s	$fs5, $ft0, $ft6, $fa2
	fmul.s	$fa2, $ft7, $fa4
	fmadd.s	$ft7, $ft4, $fa1, $fa2
	fmul.s	$fa2, $ft5, $fa4
	fmadd.s	$ft5, $ft1, $fa1, $fa2
	fld.s	$fa2, $a1, 40
	fmul.s	$fa4, $ft8, $fa4
	fld.s	$ft1, $a1, 64
	fmadd.s	$fa4, $ft6, $fa1, $fa4
	fld.s	$ft0, $a1, 44
	fld.s	$fa5, $a1, 48
	fneg.s	$fa1, $ft1
	fmadd.s	$ft1, $fa2, $fa1, $ft9
	fmadd.s	$ft9, $ft0, $fa1, $ft10
	fmadd.s	$ft13, $fa5, $fa1, $ft11
	fmadd.s	$fa1, $fa2, $fa0, $fs2
	fmadd.s	$ft10, $ft0, $fa0, $fs3
	fld.s	$ft11, $fp, 128
	fmadd.s	$ft12, $fa5, $fa0, $fs6
	fld.s	$ft6, $fp, 40
	fadd.s	$ft4, $ft1, $fa1
	fmadd.s	$fa0, $fa2, $ft11, $ft7
	fadd.s	$fa0, $ft1, $fa0
	fld.s	$ft8, $fp, 44
	fadd.s	$ft1, $ft9, $ft10
	fmadd.s	$fa1, $ft0, $ft11, $ft5
	fadd.s	$fa1, $ft9, $fa1
	fld.s	$ft9, $fp, 48
	fadd.s	$ft5, $ft13, $ft12
	movfr2gr.s	$a2, $ft4
	movfr2gr.s	$a1, $ft1
	bstrins.d	$a2, $a1, 63, 32
	movfr2gr.s	$a1, $ft5
	bstrpick.d	$a1, $a1, 31, 0
	fmadd.s	$ft15, $fa5, $ft11, $fa4
	fld.s	$fa4, $fp, 104
	fld.s	$fs0, $fp, 108
	fld.s	$fs1, $fp, 112
	st.d	$a2, $sp, 288
	fcmp.cule.s	$fcc0, $ft4, $fa0
	st.d	$a1, $sp, 296
	fmov.s	$ft14, $ft4
	bcnez	$fcc0, .LBB15_4
# %bb.3:
	fst.s	$fa0, $sp, 288
	fmov.s	$ft14, $fa0
.LBB15_4:                               # %_Z8btSetMinIfEvRT_RKS0_.exit.i
	fld.s	$ft7, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fs3, $ft6, $fa2, $ft7
	fld.s	$ft7, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fs6, $ft8, $fa2, $ft7
	fld.s	$ft7, $sp, 40                   # 4-byte Folded Reload
	fmadd.s	$ft12, $ft9, $fa2, $ft7
	fld.s	$ft7, $sp, 36                   # 4-byte Folded Reload
	fmadd.s	$ft10, $ft6, $ft0, $ft7
	fld.s	$ft7, $sp, 32                   # 4-byte Folded Reload
	fmadd.s	$ft11, $ft8, $ft0, $ft7
	fld.s	$ft7, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fs2, $ft9, $ft0, $ft7
	fld.s	$ft7, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$ft7, $ft6, $fa5, $ft7
	fld.s	$ft6, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$ft8, $ft8, $fa5, $ft6
	fld.s	$ft6, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$ft9, $ft9, $fa5, $ft6
	fmadd.s	$ft2, $fa4, $fa2, $ft2
	fmadd.s	$ft3, $fs0, $fa2, $ft3
	fmadd.s	$ft6, $fs1, $fa2, $fs4
	fmadd.s	$fa6, $fa4, $ft0, $fa6
	fmadd.s	$fa7, $fs0, $ft0, $fa7
	fmadd.s	$ft0, $fs1, $ft0, $fs7
	fmadd.s	$fa3, $fa4, $fa5, $fa3
	fld.s	$fa2, $sp, 12                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fs0, $fa5, $fa2
	fmadd.s	$fa5, $fs1, $fa5, $fs5
	fcmp.cule.s	$fcc0, $ft1, $fa1
	fadd.s	$fa2, $ft13, $ft15
	fmov.s	$ft13, $ft1
	bcnez	$fcc0, .LBB15_6
# %bb.5:
	fst.s	$fa1, $sp, 292
	fmov.s	$ft13, $fa1
.LBB15_6:                               # %_Z8btSetMinIfEvRT_RKS0_.exit5.i
	fcmp.clt.s	$fcc0, $fa2, $ft5
	fsel	$ft15, $ft5, $fa2, $fcc0
	st.d	$a1, $sp, 280
	fcmp.clt.s	$fcc0, $ft4, $fa0
	fsel	$ft4, $ft4, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $ft1, $fa1
	fld.s	$fs0, $fp, 264
	fsel	$ft1, $ft1, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $ft5, $fa2
	fsel	$ft5, $ft5, $fa2, $fcc0
	fsub.s	$ft14, $ft14, $fs0
	fst.s	$ft14, $sp, 288
	fsub.s	$ft13, $ft13, $fs0
	fst.s	$ft13, $sp, 292
	fsub.s	$ft13, $ft15, $fs0
	fst.s	$ft13, $sp, 296
	fadd.s	$ft4, $fs0, $ft4
	fst.s	$ft4, $sp, 272
	fadd.s	$ft1, $fs0, $ft1
	fst.s	$ft1, $sp, 276
	fadd.s	$ft1, $fs0, $ft5
	fst.s	$ft1, $sp, 280
	pcalau12i	$a3, %pc_hi20(_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback+16)
	st.d	$a3, $sp, 64
	fst.s	$fs3, $sp, 72
	fst.s	$fs6, $sp, 76
	fst.s	$ft12, $sp, 80
	st.w	$zero, $sp, 84
	fst.s	$ft10, $sp, 88
	fst.s	$ft11, $sp, 92
	fst.s	$fs2, $sp, 96
	st.w	$zero, $sp, 100
	fst.s	$ft7, $sp, 104
	fst.s	$ft8, $sp, 108
	fst.s	$ft9, $sp, 112
	st.d	$a2, $sp, 120
	fst.s	$ft2, $sp, 136
	fst.s	$ft3, $sp, 140
	fst.s	$ft6, $sp, 144
	fst.s	$fa6, $sp, 152
	fst.s	$fa7, $sp, 156
	fst.s	$ft0, $sp, 160
	st.w	$zero, $sp, 164
	fst.s	$fa3, $sp, 168
	fst.s	$fa4, $sp, 172
	fst.s	$fa5, $sp, 176
	st.w	$zero, $sp, 180
	fst.s	$fa0, $sp, 184
	fst.s	$fa1, $sp, 188
	fst.s	$fa2, $sp, 192
	fld.s	$fa0, $fp, 260
	ld.d	$a2, $a0, 0
	st.w	$zero, $sp, 196
	fst.s	$fs0, $sp, 264
	fst.s	$fa0, $sp, 268
	ld.d	$a4, $a2, 96
	st.w	$zero, $sp, 116
	st.d	$a1, $sp, 128
	st.w	$zero, $sp, 148
.Ltmp58:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 288
	addi.d	$a3, $sp, 272
	jirl	$ra, $a4, 0
.Ltmp59:                                # EH_LABEL
# %bb.7:
	fld.s	$fa1, $sp, 268
	fld.s	$fa0, $fp, 260
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB15_10
# %bb.8:
	vldi	$vr0, -1168
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	b	.LBB15_11
.LBB15_9:
	vldi	$vr0, -1168
	b	.LBB15_12
.LBB15_10:
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	fst.s	$fa1, $fp, 260
.LBB15_11:                              # %.sink.split
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
.LBB15_12:
                                        # kill: def $f0 killed $f0 killed $vr0
	fld.d	$fs7, $sp, 304                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 312                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 320                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 328                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 352                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 360                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB15_13:
.Ltmp60:                                # EH_LABEL
	move	$fp, $a0
.Ltmp61:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_15:
.Ltmp63:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end15-_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp58-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin7          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp61-.Ltmp59                #   Call between .Ltmp59 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin7          #     jumps to .Ltmp63
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp62-.Lfunc_begin7          # >> Call Site 4 <<
	.uleb128 .Lfunc_end15-.Ltmp62           #   Call between .Ltmp62 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,"axG",@progbits,_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,comdat
	.weak	_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE # -- Begin function _ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.p2align	5
	.type	_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,@function
_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE: # @_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
# %bb.0:
	ret
.Lfunc_end16:
	.size	_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE, .Lfunc_end16-_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI10btTriIndexED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI10btTriIndexED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI10btTriIndexED2Ev # -- Begin function _ZN20btAlignedObjectArrayI10btTriIndexED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI10btTriIndexED2Ev,@function
_ZN20btAlignedObjectArrayI10btTriIndexED2Ev: # @_ZN20btAlignedObjectArrayI10btTriIndexED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB17_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB17_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB17_3:                               # %_ZN20btAlignedObjectArrayI10btTriIndexE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end17:
	.size	_ZN20btAlignedObjectArrayI10btTriIndexED2Ev, .Lfunc_end17-_ZN20btAlignedObjectArrayI10btTriIndexED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIiED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIiED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIiED2Ev # -- Begin function _ZN20btAlignedObjectArrayIiED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIiED2Ev,@function
_ZN20btAlignedObjectArrayIiED2Ev:       # @_ZN20btAlignedObjectArrayIiED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB18_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB18_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB18_3:                               # %_ZN20btAlignedObjectArrayIiE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end18:
	.size	_ZN20btAlignedObjectArrayIiED2Ev, .Lfunc_end18-_ZN20btAlignedObjectArrayIiED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev
	.type	_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev,@function
_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev: # @_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB19_2:
.Ltmp66:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev, .Lfunc_end19-_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp64-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin8          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Lfunc_end19-.Ltmp65           #   Call between .Ltmp65 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii
	.type	_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii,@function
_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii: # @_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -864
	.cfi_def_cfa_offset 864
	st.d	$ra, $sp, 856                   # 8-byte Folded Spill
	st.d	$fp, $sp, 848                   # 8-byte Folded Spill
	st.d	$s0, $sp, 840                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 832                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	move	$s0, $a1
	move	$fp, $a0
	lu12i.w	$a0, 260096
	st.w	$a0, $sp, 768
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 772
	st.w	$a0, $sp, 788
	vst	$vr0, $sp, 792
	st.w	$a0, $sp, 808
	vst	$vr0, $sp, 812
	st.w	$zero, $sp, 828
	pcalau12i	$a0, %pc_hi20(_ZTVN12btConvexCast10CastResultE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN12btConvexCast10CastResultE+16)
	st.d	$a0, $sp, 576
	fld.s	$fa0, $fp, 204
	fld.s	$fs0, $fp, 200
	st.d	$zero, $sp, 752
	st.w	$zero, $sp, 760
	fst.s	$fa0, $sp, 744
	addi.d	$a0, $sp, 512
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTV13btSphereShape)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV13btSphereShape)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 520
	fst.s	$fs0, $sp, 552
	fst.s	$fs0, $sp, 568
.Ltmp67:                                # EH_LABEL
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN23btPolyhedralConvexShapeC2Ev)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZTV15btTriangleShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV15btTriangleShape+16)
	st.d	$a0, $sp, 400
	ori	$a0, $zero, 1
	vld	$vr0, $s0, 0
	vld	$vr1, $s0, 16
	vld	$vr2, $s0, 32
	st.w	$a0, $sp, 408
	vst	$vr0, $sp, 464
	vst	$vr1, $sp, 480
	vst	$vr2, $sp, 496
	st.b	$zero, $sp, 372
.Ltmp69:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 512
	addi.d	$a2, $sp, 400
	addi.d	$a3, $sp, 44
	pcaddu18i	$ra, %call36(_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.2:
	addi.d	$a1, $fp, 8
	addi.d	$a2, $fp, 72
.Ltmp71:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a3, $sp, 768
	addi.d	$a4, $sp, 768
	addi.d	$a5, $sp, 576
	pcaddu18i	$ra, %call36(_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.3:
	beqz	$a0, .LBB20_6
# %bb.4:
	fld.s	$fa1, $fp, 204
	fld.s	$fa0, $sp, 744
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB20_6
# %bb.5:
	fst.s	$fa0, $fp, 204
.LBB20_6:
.Ltmp76:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.7:
.Ltmp81:                                # EH_LABEL
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.8:
	addi.d	$a0, $sp, 512
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 832                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 840                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 848                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 856                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 864
	ret
.LBB20_9:
.Ltmp73:                                # EH_LABEL
	move	$fp, $a0
.Ltmp74:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
	b	.LBB20_12
.LBB20_10:
.Ltmp83:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB20_13
.LBB20_11:
.Ltmp78:                                # EH_LABEL
	move	$fp, $a0
.LBB20_12:
.Ltmp79:                                # EH_LABEL
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
.LBB20_13:
.Ltmp84:                                # EH_LABEL
	addi.d	$a0, $sp, 512
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_15:
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii, .Lfunc_end20-_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp67-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp67
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp83-.Lfunc_begin9          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp78-.Lfunc_begin9          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin9          # >> Call Site 4 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin9          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin9          # >> Call Site 5 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin9          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin9          # >> Call Site 6 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin9          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin9          # >> Call Site 7 <<
	.uleb128 .Ltmp74-.Ltmp82                #   Call between .Ltmp82 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin9          # >> Call Site 8 <<
	.uleb128 .Ltmp85-.Ltmp74                #   Call between .Ltmp74 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin9          #     jumps to .Ltmp86
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp85-.Lfunc_begin9          # >> Call Site 9 <<
	.uleb128 .Lfunc_end20-.Ltmp85           #   Call between .Ltmp85 and .Lfunc_end20
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
	.section	.text._ZN12btConvexCast10CastResultD2Ev,"axG",@progbits,_ZN12btConvexCast10CastResultD2Ev,comdat
	.weak	_ZN12btConvexCast10CastResultD2Ev # -- Begin function _ZN12btConvexCast10CastResultD2Ev
	.p2align	5
	.type	_ZN12btConvexCast10CastResultD2Ev,@function
_ZN12btConvexCast10CastResultD2Ev:      # @_ZN12btConvexCast10CastResultD2Ev
# %bb.0:
	ret
.Lfunc_end21:
	.size	_ZN12btConvexCast10CastResultD2Ev, .Lfunc_end21-_ZN12btConvexCast10CastResultD2Ev
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult9DebugDrawEf,"axG",@progbits,_ZN12btConvexCast10CastResult9DebugDrawEf,comdat
	.weak	_ZN12btConvexCast10CastResult9DebugDrawEf # -- Begin function _ZN12btConvexCast10CastResult9DebugDrawEf
	.p2align	5
	.type	_ZN12btConvexCast10CastResult9DebugDrawEf,@function
_ZN12btConvexCast10CastResult9DebugDrawEf: # @_ZN12btConvexCast10CastResult9DebugDrawEf
# %bb.0:
	ret
.Lfunc_end22:
	.size	_ZN12btConvexCast10CastResult9DebugDrawEf, .Lfunc_end22-_ZN12btConvexCast10CastResult9DebugDrawEf
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,"axG",@progbits,_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,comdat
	.weak	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform # -- Begin function _ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
	.p2align	5
	.type	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,@function
_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform: # @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
# %bb.0:
	ret
.Lfunc_end23:
	.size	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform, .Lfunc_end23-_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResultD0Ev,"axG",@progbits,_ZN12btConvexCast10CastResultD0Ev,comdat
	.weak	_ZN12btConvexCast10CastResultD0Ev # -- Begin function _ZN12btConvexCast10CastResultD0Ev
	.p2align	5
	.type	_ZN12btConvexCast10CastResultD0Ev,@function
_ZN12btConvexCast10CastResultD0Ev:      # @_ZN12btConvexCast10CastResultD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end24:
	.size	_ZN12btConvexCast10CastResultD0Ev, .Lfunc_end24-_ZN12btConvexCast10CastResultD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN15btTriangleShapeD0Ev,"axG",@progbits,_ZN15btTriangleShapeD0Ev,comdat
	.weak	_ZN15btTriangleShapeD0Ev        # -- Begin function _ZN15btTriangleShapeD0Ev
	.p2align	5
	.type	_ZN15btTriangleShapeD0Ev,@function
_ZN15btTriangleShapeD0Ev:               # @_ZN15btTriangleShapeD0Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
.Ltmp87:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB25_2:
.Ltmp89:                                # EH_LABEL
	move	$s0, $a0
.Ltmp90:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.3:                                # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB25_4:
.Ltmp92:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN15btTriangleShapeD0Ev, .Lfunc_end25-_ZN15btTriangleShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN15btTriangleShapeD0Ev,"aG",@progbits,_ZN15btTriangleShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp87-.Lfunc_begin10         # >> Call Site 1 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin10         #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin10         # >> Call Site 2 <<
	.uleb128 .Ltmp90-.Ltmp88                #   Call between .Ltmp88 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin10         # >> Call Site 3 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin10         #     jumps to .Ltmp92
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp91-.Lfunc_begin10         # >> Call Site 4 <<
	.uleb128 .Lfunc_end25-.Ltmp91           #   Call between .Ltmp91 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_,"axG",@progbits,_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_,comdat
	.weak	_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 120
	jr	$a4
.Lfunc_end26:
	.size	_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end26-_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape15getLocalScalingEv,"axG",@progbits,_ZNK21btConvexInternalShape15getLocalScalingEv,comdat
	.weak	_ZNK21btConvexInternalShape15getLocalScalingEv # -- Begin function _ZNK21btConvexInternalShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape15getLocalScalingEv,@function
_ZNK21btConvexInternalShape15getLocalScalingEv: # @_ZNK21btConvexInternalShape15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 24
	ret
.Lfunc_end27:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end27-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3,"axG",@progbits,_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3,comdat
	.weak	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3: # @_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
# %bb.0:
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 0
	ret
.Lfunc_end28:
	.size	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end28-_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
                                        # -- End function
	.section	.text._ZNK15btTriangleShape7getNameEv,"axG",@progbits,_ZNK15btTriangleShape7getNameEv,comdat
	.weak	_ZNK15btTriangleShape7getNameEv # -- Begin function _ZNK15btTriangleShape7getNameEv
	.p2align	5
	.type	_ZNK15btTriangleShape7getNameEv,@function
_ZNK15btTriangleShape7getNameEv:        # @_ZNK15btTriangleShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end29:
	.size	_ZNK15btTriangleShape7getNameEv, .Lfunc_end29-_ZNK15btTriangleShape7getNameEv
                                        # -- End function
	.section	.text._ZN21btConvexInternalShape9setMarginEf,"axG",@progbits,_ZN21btConvexInternalShape9setMarginEf,comdat
	.weak	_ZN21btConvexInternalShape9setMarginEf # -- Begin function _ZN21btConvexInternalShape9setMarginEf
	.p2align	5
	.type	_ZN21btConvexInternalShape9setMarginEf,@function
_ZN21btConvexInternalShape9setMarginEf: # @_ZN21btConvexInternalShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end30:
	.size	_ZN21btConvexInternalShape9setMarginEf, .Lfunc_end30-_ZN21btConvexInternalShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end31:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end31-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3,"axG",@progbits,_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3,comdat
	.weak	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a0, 68
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a0, 64
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a0, 72
	fld.s	$fa6, $a0, 84
	fld.s	$fa7, $a0, 80
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa5, $fa1
	fmul.s	$fa3, $fa0, $fa6
	fmadd.s	$fa3, $fa2, $fa7, $fa3
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 100
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 104
	fmadd.s	$fa3, $fa4, $fa5, $fa3
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa2, $fa7, $fa0
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.s	$fcc1, $fa1, $fa0
	addi.d	$a0, $a0, 64
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a1, $a0, 4
	slli.d	$a1, $a1, 4
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a2, 8
	ret
.Lfunc_end32:
	.size	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end32-_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,"axG",@progbits,_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,comdat
	.weak	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_startproc
# %bb.0:
	blez	$a3, .LBB33_3
# %bb.1:                                # %.lr.ph
	addi.d	$a4, $a0, 64
	addi.d	$a1, $a1, 8
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, -4
	fld.s	$fa1, $a0, 68
	fld.s	$fa2, $a1, -8
	fld.s	$fa3, $a0, 64
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a0, 72
	fld.s	$fa6, $a0, 84
	fld.s	$fa7, $a0, 80
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa5, $fa1
	fmul.s	$fa3, $fa0, $fa6
	fmadd.s	$fa3, $fa2, $fa7, $fa3
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 100
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 104
	fmadd.s	$fa3, $fa4, $fa5, $fa3
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa2, $fa7, $fa0
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.s	$fcc1, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	movcf2gr	$a7, $fcc1
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a5, $a7
	or	$a6, $a7, $a6
	slli.d	$a6, $a6, 4
	vldx	$vr0, $a4, $a6
	vst	$vr0, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 16
	bnez	$a3, .LBB33_2
.LBB33_3:                               # %._crit_edge
	ret
.Lfunc_end33:
	.size	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end33-_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	ori	$a0, $zero, 2
	ret
.Lfunc_end34:
	.size	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end34-_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 80
	fld.s	$fa1, $a0, 64
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $a0, 84
	fld.s	$fa3, $a0, 68
	fld.s	$fa4, $a0, 96
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 100
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a0, 104
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa7, $fa3
	fsub.s	$fa5, $fa5, $fa6
	fsub.s	$fa4, $fa4, $fa6
	fneg.s	$fa6, $fa3
	fmul.s	$fa6, $fa5, $fa6
	fmadd.s	$fa6, $fa2, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa2, $fa0, $fa3, $fa1
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $a2, 8
	fmul.s	$fa0, $fa4, $fa4
	fmadd.s	$fa0, $fa6, $fa6, $fa0
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	frsqrt.s	$fa3, $fa0
	fmul.s	$fa0, $fa6, $fa3
	fst.s	$fa0, $a2, 0
	fmul.s	$fa1, $fa4, $fa3
	fst.s	$fa1, $a2, 4
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $a2, 8
	beqz	$a1, .LBB35_2
# %bb.1:
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a2, 0
	fneg.s	$fa0, $fa1
	fst.s	$fa0, $a2, 4
	fneg.s	$fa0, $fa2
	fst.s	$fa0, $a2, 8
.LBB35_2:
	ret
.Lfunc_end35:
	.size	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end35-_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape14getNumVerticesEv,"axG",@progbits,_ZNK15btTriangleShape14getNumVerticesEv,comdat
	.weak	_ZNK15btTriangleShape14getNumVerticesEv # -- Begin function _ZNK15btTriangleShape14getNumVerticesEv
	.p2align	5
	.type	_ZNK15btTriangleShape14getNumVerticesEv,@function
_ZNK15btTriangleShape14getNumVerticesEv: # @_ZNK15btTriangleShape14getNumVerticesEv
# %bb.0:
	ori	$a0, $zero, 3
	ret
.Lfunc_end36:
	.size	_ZNK15btTriangleShape14getNumVerticesEv, .Lfunc_end36-_ZNK15btTriangleShape14getNumVerticesEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape11getNumEdgesEv,"axG",@progbits,_ZNK15btTriangleShape11getNumEdgesEv,comdat
	.weak	_ZNK15btTriangleShape11getNumEdgesEv # -- Begin function _ZNK15btTriangleShape11getNumEdgesEv
	.p2align	5
	.type	_ZNK15btTriangleShape11getNumEdgesEv,@function
_ZNK15btTriangleShape11getNumEdgesEv:   # @_ZNK15btTriangleShape11getNumEdgesEv
# %bb.0:
	ori	$a0, $zero, 3
	ret
.Lfunc_end37:
	.size	_ZNK15btTriangleShape11getNumEdgesEv, .Lfunc_end37-_ZNK15btTriangleShape11getNumEdgesEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape7getEdgeEiR9btVector3S1_,"axG",@progbits,_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_,comdat
	.weak	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_ # -- Begin function _ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.p2align	5
	.type	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_,@function
_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_: # @_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
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
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 168
	move	$s0, $a3
	move	$s1, $a1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	addi.w	$a0, $s1, 1
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1366
	ld.d	$a2, $fp, 0
	mul.d	$a1, $a0, $a1
	srli.d	$a3, $a1, 63
	srli.d	$a1, $a1, 32
	ld.d	$a4, $a2, 168
	add.d	$a1, $a1, $a3
	alsl.d	$a1, $a1, $a1, 1
	sub.w	$a1, $a0, $a1
	move	$a0, $fp
	move	$a2, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a4
.Lfunc_end38:
	.size	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_, .Lfunc_end38-_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape9getVertexEiR9btVector3,"axG",@progbits,_ZNK15btTriangleShape9getVertexEiR9btVector3,comdat
	.weak	_ZNK15btTriangleShape9getVertexEiR9btVector3 # -- Begin function _ZNK15btTriangleShape9getVertexEiR9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape9getVertexEiR9btVector3,@function
_ZNK15btTriangleShape9getVertexEiR9btVector3: # @_ZNK15btTriangleShape9getVertexEiR9btVector3
# %bb.0:
	alsl.d	$a0, $a1, $a0, 4
	vld	$vr0, $a0, 64
	vst	$vr0, $a2, 0
	ret
.Lfunc_end39:
	.size	_ZNK15btTriangleShape9getVertexEiR9btVector3, .Lfunc_end39-_ZNK15btTriangleShape9getVertexEiR9btVector3
                                        # -- End function
	.section	.text._ZNK15btTriangleShape12getNumPlanesEv,"axG",@progbits,_ZNK15btTriangleShape12getNumPlanesEv,comdat
	.weak	_ZNK15btTriangleShape12getNumPlanesEv # -- Begin function _ZNK15btTriangleShape12getNumPlanesEv
	.p2align	5
	.type	_ZNK15btTriangleShape12getNumPlanesEv,@function
_ZNK15btTriangleShape12getNumPlanesEv:  # @_ZNK15btTriangleShape12getNumPlanesEv
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end40:
	.size	_ZNK15btTriangleShape12getNumPlanesEv, .Lfunc_end40-_ZNK15btTriangleShape12getNumPlanesEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape8getPlaneER9btVector3S1_i,"axG",@progbits,_ZNK15btTriangleShape8getPlaneER9btVector3S1_i,comdat
	.weak	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i # -- Begin function _ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.p2align	5
	.type	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i,@function
_ZNK15btTriangleShape8getPlaneER9btVector3S1_i: # @_ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a4, 200
	move	$a4, $a2
	move	$a2, $a1
	move	$a1, $a3
	move	$a3, $a4
	jr	$a5
.Lfunc_end41:
	.size	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i, .Lfunc_end41-_ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape8isInsideERK9btVector3f,"axG",@progbits,_ZNK15btTriangleShape8isInsideERK9btVector3f,comdat
	.weak	_ZNK15btTriangleShape8isInsideERK9btVector3f # -- Begin function _ZNK15btTriangleShape8isInsideERK9btVector3f
	.p2align	5
	.type	_ZNK15btTriangleShape8isInsideERK9btVector3f,@function
_ZNK15btTriangleShape8isInsideERK9btVector3f: # @_ZNK15btTriangleShape8isInsideERK9btVector3f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	.cfi_offset 61, -72
	.cfi_offset 62, -80
	move	$s0, $a0
	fld.s	$fa1, $a0, 80
	fld.s	$fa2, $a0, 64
	fld.s	$fa3, $a0, 84
	fld.s	$fa4, $a0, 68
	fsub.s	$fa1, $fa1, $fa2
	fsub.s	$fa3, $fa3, $fa4
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 100
	fld.s	$ft1, $a0, 104
	fsub.s	$fa5, $fa5, $fa6
	fsub.s	$fa7, $fa7, $fa2
	fsub.s	$ft0, $ft0, $fa4
	fsub.s	$ft1, $ft1, $fa6
	fneg.s	$ft2, $ft0
	fmul.s	$ft2, $fa5, $ft2
	fmadd.s	$ft2, $fa3, $ft1, $ft2
	fneg.s	$ft1, $ft1
	fmul.s	$ft1, $fa1, $ft1
	fmadd.s	$fa5, $fa5, $fa7, $ft1
	fneg.s	$fa7, $fa7
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa1, $fa1, $ft0, $fa3
	fmul.s	$fa3, $fa5, $fa5
	fmadd.s	$fa3, $ft2, $ft2, $fa3
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fs2, $ft2, $fa3
	fmul.s	$fs1, $fa5, $fa3
	fld.s	$fa5, $a1, 4
	fld.s	$fa7, $a1, 0
	fld.s	$ft0, $a1, 8
	fmul.s	$fs3, $fa1, $fa3
	fmul.s	$fa1, $fa5, $fs1
	fmadd.s	$fa1, $fa7, $fs2, $fa1
	fmadd.s	$fa1, $ft0, $fs3, $fa1
	fmul.s	$fa3, $fa4, $fs1
	fmadd.s	$fa2, $fa2, $fs2, $fa3
	fmadd.s	$fa2, $fa6, $fs3, $fa2
	fsub.s	$fa1, $fa1, $fa2
	fneg.s	$fs0, $fa0
	fcmp.cult.s	$fcc0, $fa1, $fs0
	move	$a0, $zero
	bcnez	$fcc0, .LBB42_7
# %bb.1:
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB42_7
# %bb.2:                                # %.preheader
	move	$fp, $a1
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 160
	fneg.s	$fs6, $fs1
	fneg.s	$fs5, $fs3
	fneg.s	$fs4, $fs2
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	move	$a1, $zero
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 40
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa4, $fs6
	fmadd.s	$fa6, $fa2, $fs3, $fa6
	fmul.s	$fa7, $fa0, $fs5
	fmadd.s	$fa4, $fa4, $fs2, $fa7
	fmul.s	$fa2, $fa2, $fs4
	fmadd.s	$fa0, $fa0, $fs1, $fa2
	fmul.s	$fa2, $fa4, $fa4
	fmadd.s	$fa2, $fa6, $fa6, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa7, $fp, 4
	fld.s	$ft0, $fp, 0
	fld.s	$ft1, $fp, 8
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa7, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fmadd.s	$fa2, $ft1, $fa0, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB42_6
# %bb.3:
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 160
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 40
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa4, $fs6
	fmadd.s	$fa6, $fa2, $fs3, $fa6
	fmul.s	$fa7, $fa0, $fs5
	fmadd.s	$fa4, $fa4, $fs2, $fa7
	fmul.s	$fa2, $fa2, $fs4
	fmadd.s	$fa0, $fa0, $fs1, $fa2
	fmul.s	$fa2, $fa4, $fa4
	fmadd.s	$fa2, $fa6, $fa6, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa7, $fp, 4
	fld.s	$ft0, $fp, 0
	fld.s	$ft1, $fp, 8
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa7, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fmadd.s	$fa2, $ft1, $fa0, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB42_6
# %bb.4:
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 160
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 40
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa4, $fs6
	fmadd.s	$fa6, $fa2, $fs3, $fa6
	fmul.s	$fa7, $fa0, $fs5
	fmadd.s	$fa4, $fa4, $fs2, $fa7
	fmul.s	$fa2, $fa2, $fs4
	fmadd.s	$fa0, $fa0, $fs1, $fa2
	fmul.s	$fa2, $fa4, $fa4
	fmadd.s	$fa2, $fa6, $fa6, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa7, $fp, 4
	fld.s	$ft0, $fp, 0
	fld.s	$ft1, $fp, 8
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa7, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fmadd.s	$fa2, $ft1, $fa0, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB42_6
# %bb.5:
	ori	$a0, $zero, 1
	b	.LBB42_7
.LBB42_6:
	move	$a0, $zero
.LBB42_7:                               # %.loopexit
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end42:
	.size	_ZNK15btTriangleShape8isInsideERK9btVector3f, .Lfunc_end42-_ZNK15btTriangleShape8isInsideERK9btVector3f
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_,"axG",@progbits,_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_,comdat
	.weak	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_ # -- Begin function _ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.p2align	5
	.type	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_,@function
_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_: # @_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 80
	fld.s	$fa1, $a0, 64
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $a0, 84
	fld.s	$fa3, $a0, 68
	fld.s	$fa4, $a0, 96
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 100
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a0, 104
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa7, $fa3
	fsub.s	$fa5, $fa5, $fa6
	fsub.s	$fa4, $fa4, $fa6
	fneg.s	$fa6, $fa3
	fmul.s	$fa6, $fa5, $fa6
	fmadd.s	$fa6, $fa2, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $a2, 8
	fmul.s	$fa1, $fa4, $fa4
	fmadd.s	$fa1, $fa6, $fa6, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fa6, $fa1
	fst.s	$fa2, $a2, 0
	fmul.s	$fa2, $fa4, $fa1
	fst.s	$fa2, $a2, 4
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 8
	vld	$vr0, $a0, 64
	vst	$vr0, $a3, 0
	ret
.Lfunc_end43:
	.size	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_, .Lfunc_end43-_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_,"axG",@progbits,_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_,comdat
	.weak	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_ # -- Begin function _ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_
	.p2align	5
	.type	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_,@function
_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_: # @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_
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
	ld.w	$s3, $a0, 72
	ld.w	$s2, $a0, 4
	bge	$s2, $s3, .LBB44_42
# %bb.1:
	move	$fp, $a0
	ld.w	$a0, $a0, 8
	bge	$a0, $s3, .LBB44_12
# %bb.2:
	beqz	$s3, .LBB44_13
# %bb.3:
	slli.d	$a0, $s3, 2
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$s0, $a0
	ld.d	$a0, $fp, 16
	blez	$a1, .LBB44_14
.LBB44_4:                               # %.lr.ph.i.i.i
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a1, $a3, .LBB44_9
# %bb.5:                                # %.lr.ph.i.i.i
	sub.d	$a3, $s0, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB44_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB44_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB44_7
# %bb.8:                                # %middle.block
	beq	$a2, $a1, .LBB44_11
.LBB44_9:                               # %scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s0, 2
	.p2align	4, , 16
.LBB44_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB44_10
.LBB44_11:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB44_16
	b	.LBB44_17
.LBB44_12:                              # %..lr.ph.i_crit_edge
	ld.d	$s0, $fp, 16
	b	.LBB44_18
.LBB44_13:
	move	$s0, $zero
	move	$a1, $s2
	ld.d	$a0, $fp, 16
	bgtz	$a1, .LBB44_4
.LBB44_14:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
	beqz	$a0, .LBB44_17
# %bb.15:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB44_17
.LBB44_16:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB44_17:                              # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$s0, $fp, 16
	st.w	$s3, $fp, 8
.LBB44_18:                              # %.lr.ph.i
	slli.d	$a1, $s2, 2
	alsl.d	$a0, $s2, $s0, 2
	slli.d	$s0, $s3, 2
	sub.d	$a2, $s0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$s4, $fp, 36
	st.w	$s3, $fp, 4
	bge	$s4, $s3, .LBB44_37
# %bb.19:
	ld.w	$a0, $fp, 40
	bge	$a0, $s3, .LBB44_30
# %bb.20:
	beqz	$s3, .LBB44_31
# %bb.21:
	ori	$a1, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	move	$s1, $a0
	ld.d	$a0, $fp, 48
	blez	$a1, .LBB44_32
.LBB44_22:                              # %.lr.ph.i.i.i34
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a1, $a3, .LBB44_27
# %bb.23:                               # %.lr.ph.i.i.i34
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB44_27
# %bb.24:                               # %vector.ph65
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB44_25:                              # %vector.body68
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB44_25
# %bb.26:                               # %middle.block73
	beq	$a2, $a1, .LBB44_29
.LBB44_27:                              # %scalar.ph63.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s1, 2
	.p2align	4, , 16
.LBB44_28:                              # %scalar.ph63
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB44_28
.LBB44_29:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i39
	ld.bu	$a1, $fp, 56
	bnez	$a1, .LBB44_34
	b	.LBB44_35
.LBB44_30:                              # %..lr.ph.i20_crit_edge
	ld.d	$s1, $fp, 48
	b	.LBB44_36
.LBB44_31:
	move	$s1, $zero
	move	$a1, $s4
	ld.d	$a0, $fp, 48
	bgtz	$a1, .LBB44_22
.LBB44_32:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30
	beqz	$a0, .LBB44_35
# %bb.33:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB44_35
.LBB44_34:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB44_35:                              # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 56
	st.d	$s1, $fp, 48
	st.w	$s3, $fp, 40
.LBB44_36:                              # %.lr.ph.i20
	slli.d	$a1, $s4, 2
	alsl.d	$a0, $s4, $s1, 2
	sub.d	$a2, $s0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB44_37:                              # %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit43
	st.w	$s3, $fp, 36
	blez	$s3, .LBB44_39
# %bb.38:                               # %.lr.ph48
	ld.d	$a0, $fp, 16
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB44_39:                              # %.preheader
	blez	$s2, .LBB44_42
# %bb.40:                               # %.lr.ph50
	ld.d	$a0, $fp, 112
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 48
	move	$a3, $zero
	.p2align	4, , 16
.LBB44_41:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	slli.d	$a5, $a4, 15
	nor	$a5, $a5, $zero
	add.w	$a4, $a4, $a5
	bstrpick.d	$a5, $a4, 31, 10
	xor	$a4, $a5, $a4
	alsl.w	$a4, $a4, $a4, 3
	bstrpick.d	$a5, $a4, 31, 6
	xor	$a4, $a5, $a4
	slli.d	$a5, $a4, 11
	nor	$a5, $a5, $zero
	ld.w	$a6, $fp, 72
	add.w	$a4, $a4, $a5
	bstrpick.d	$a5, $a4, 31, 16
	xor	$a4, $a5, $a4
	addi.w	$a5, $a6, -1
	and	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a1, $a4
	st.w	$a5, $a2, 0
	stx.w	$a3, $a1, $a4
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	addi.d	$s2, $s2, -1
	addi.d	$a0, $a0, 4
	bnez	$s2, .LBB44_41
.LBB44_42:                              # %.loopexit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end44:
	.size	_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_, .Lfunc_end44-_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_
	.cfi_endproc
                                        # -- End function
	.type	_ZTV35btSoftBodyConcaveCollisionAlgorithm,@object # @_ZTV35btSoftBodyConcaveCollisionAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV35btSoftBodyConcaveCollisionAlgorithm
	.p2align	3, 0x0
_ZTV35btSoftBodyConcaveCollisionAlgorithm:
	.dword	0
	.dword	_ZTI35btSoftBodyConcaveCollisionAlgorithm
	.dword	_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev
	.dword	_ZN35btSoftBodyConcaveCollisionAlgorithmD0Ev
	.dword	_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.size	_ZTV35btSoftBodyConcaveCollisionAlgorithm, 56

	.type	_ZTV26btSoftBodyTriangleCallback,@object # @_ZTV26btSoftBodyTriangleCallback
	.globl	_ZTV26btSoftBodyTriangleCallback
	.p2align	3, 0x0
_ZTV26btSoftBodyTriangleCallback:
	.dword	0
	.dword	_ZTI26btSoftBodyTriangleCallback
	.dword	_ZN26btSoftBodyTriangleCallbackD2Ev
	.dword	_ZN26btSoftBodyTriangleCallbackD0Ev
	.dword	_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii
	.size	_ZTV26btSoftBodyTriangleCallback, 40

	.type	_ZTI35btSoftBodyConcaveCollisionAlgorithm,@object # @_ZTI35btSoftBodyConcaveCollisionAlgorithm
	.globl	_ZTI35btSoftBodyConcaveCollisionAlgorithm
	.p2align	3, 0x0
_ZTI35btSoftBodyConcaveCollisionAlgorithm:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS35btSoftBodyConcaveCollisionAlgorithm
	.dword	_ZTI20btCollisionAlgorithm
	.size	_ZTI35btSoftBodyConcaveCollisionAlgorithm, 24

	.type	_ZTS35btSoftBodyConcaveCollisionAlgorithm,@object # @_ZTS35btSoftBodyConcaveCollisionAlgorithm
	.section	.rodata,"a",@progbits
	.globl	_ZTS35btSoftBodyConcaveCollisionAlgorithm
_ZTS35btSoftBodyConcaveCollisionAlgorithm:
	.asciz	"35btSoftBodyConcaveCollisionAlgorithm"
	.size	_ZTS35btSoftBodyConcaveCollisionAlgorithm, 38

	.type	_ZTI20btCollisionAlgorithm,@object # @_ZTI20btCollisionAlgorithm
	.section	.data.rel.ro._ZTI20btCollisionAlgorithm,"awG",@progbits,_ZTI20btCollisionAlgorithm,comdat
	.weak	_ZTI20btCollisionAlgorithm
	.p2align	3, 0x0
_ZTI20btCollisionAlgorithm:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS20btCollisionAlgorithm
	.size	_ZTI20btCollisionAlgorithm, 16

	.type	_ZTS20btCollisionAlgorithm,@object # @_ZTS20btCollisionAlgorithm
	.section	.rodata._ZTS20btCollisionAlgorithm,"aG",@progbits,_ZTS20btCollisionAlgorithm,comdat
	.weak	_ZTS20btCollisionAlgorithm
_ZTS20btCollisionAlgorithm:
	.asciz	"20btCollisionAlgorithm"
	.size	_ZTS20btCollisionAlgorithm, 23

	.type	_ZTI26btSoftBodyTriangleCallback,@object # @_ZTI26btSoftBodyTriangleCallback
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI26btSoftBodyTriangleCallback
	.p2align	3, 0x0
_ZTI26btSoftBodyTriangleCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS26btSoftBodyTriangleCallback
	.dword	_ZTI18btTriangleCallback
	.size	_ZTI26btSoftBodyTriangleCallback, 24

	.type	_ZTS26btSoftBodyTriangleCallback,@object # @_ZTS26btSoftBodyTriangleCallback
	.section	.rodata,"a",@progbits
	.globl	_ZTS26btSoftBodyTriangleCallback
_ZTS26btSoftBodyTriangleCallback:
	.asciz	"26btSoftBodyTriangleCallback"
	.size	_ZTS26btSoftBodyTriangleCallback, 29

	.type	_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback,@object # @_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback:
	.dword	0
	.dword	_ZTIZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback
	.dword	_ZN18btTriangleCallbackD2Ev
	.dword	_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev
	.dword	_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii
	.size	_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, 40

	.type	_ZTIZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback,@object # @_ZTIZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback
	.p2align	3, 0x0
_ZTIZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback
	.dword	_ZTI18btTriangleCallback
	.size	_ZTIZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, 24

	.type	_ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback,@object # @_ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback
	.section	.rodata,"a",@progbits
_ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback:
	.asciz	"ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback"
	.size	_ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, 160

	.type	_ZTVN12btConvexCast10CastResultE,@object # @_ZTVN12btConvexCast10CastResultE
	.section	.data.rel.ro._ZTVN12btConvexCast10CastResultE,"awG",@progbits,_ZTVN12btConvexCast10CastResultE,comdat
	.weak	_ZTVN12btConvexCast10CastResultE
	.p2align	3, 0x0
_ZTVN12btConvexCast10CastResultE:
	.dword	0
	.dword	_ZTIN12btConvexCast10CastResultE
	.dword	_ZN12btConvexCast10CastResult9DebugDrawEf
	.dword	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
	.dword	_ZN12btConvexCast10CastResultD2Ev
	.dword	_ZN12btConvexCast10CastResultD0Ev
	.size	_ZTVN12btConvexCast10CastResultE, 48

	.type	_ZTIN12btConvexCast10CastResultE,@object # @_ZTIN12btConvexCast10CastResultE
	.section	.data.rel.ro._ZTIN12btConvexCast10CastResultE,"awG",@progbits,_ZTIN12btConvexCast10CastResultE,comdat
	.weak	_ZTIN12btConvexCast10CastResultE
	.p2align	3, 0x0
_ZTIN12btConvexCast10CastResultE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN12btConvexCast10CastResultE
	.size	_ZTIN12btConvexCast10CastResultE, 16

	.type	_ZTSN12btConvexCast10CastResultE,@object # @_ZTSN12btConvexCast10CastResultE
	.section	.rodata._ZTSN12btConvexCast10CastResultE,"aG",@progbits,_ZTSN12btConvexCast10CastResultE,comdat
	.weak	_ZTSN12btConvexCast10CastResultE
_ZTSN12btConvexCast10CastResultE:
	.asciz	"N12btConvexCast10CastResultE"
	.size	_ZTSN12btConvexCast10CastResultE, 29

	.type	_ZTV15btTriangleShape,@object   # @_ZTV15btTriangleShape
	.section	.data.rel.ro._ZTV15btTriangleShape,"awG",@progbits,_ZTV15btTriangleShape,comdat
	.weak	_ZTV15btTriangleShape
	.p2align	3, 0x0
_ZTV15btTriangleShape:
	.dword	0
	.dword	_ZTI15btTriangleShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN15btTriangleShapeD0Ev
	.dword	_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK15btTriangleShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK15btTriangleShape14getNumVerticesEv
	.dword	_ZNK15btTriangleShape11getNumEdgesEv
	.dword	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.dword	_ZNK15btTriangleShape9getVertexEiR9btVector3
	.dword	_ZNK15btTriangleShape12getNumPlanesEv
	.dword	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.dword	_ZNK15btTriangleShape8isInsideERK9btVector3f
	.dword	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.size	_ZTV15btTriangleShape, 224

	.type	_ZTI15btTriangleShape,@object   # @_ZTI15btTriangleShape
	.section	.data.rel.ro._ZTI15btTriangleShape,"awG",@progbits,_ZTI15btTriangleShape,comdat
	.weak	_ZTI15btTriangleShape
	.p2align	3, 0x0
_ZTI15btTriangleShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15btTriangleShape
	.dword	_ZTI23btPolyhedralConvexShape
	.size	_ZTI15btTriangleShape, 24

	.type	_ZTS15btTriangleShape,@object   # @_ZTS15btTriangleShape
	.section	.rodata._ZTS15btTriangleShape,"aG",@progbits,_ZTS15btTriangleShape,comdat
	.weak	_ZTS15btTriangleShape
_ZTS15btTriangleShape:
	.asciz	"15btTriangleShape"
	.size	_ZTS15btTriangleShape, 18

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Triangle"
	.size	.L.str, 9

	.globl	_ZN35btSoftBodyConcaveCollisionAlgorithmC1ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b
	.type	_ZN35btSoftBodyConcaveCollisionAlgorithmC1ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b,@function
_ZN35btSoftBodyConcaveCollisionAlgorithmC1ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b = _ZN35btSoftBodyConcaveCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b
	.globl	_ZN35btSoftBodyConcaveCollisionAlgorithmD1Ev
	.type	_ZN35btSoftBodyConcaveCollisionAlgorithmD1Ev,@function
_ZN35btSoftBodyConcaveCollisionAlgorithmD1Ev = _ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev
	.globl	_ZN26btSoftBodyTriangleCallbackC1EP12btDispatcherP17btCollisionObjectS3_b
	.type	_ZN26btSoftBodyTriangleCallbackC1EP12btDispatcherP17btCollisionObjectS3_b,@function
_ZN26btSoftBodyTriangleCallbackC1EP12btDispatcherP17btCollisionObjectS3_b = _ZN26btSoftBodyTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b
	.globl	_ZN26btSoftBodyTriangleCallbackD1Ev
	.type	_ZN26btSoftBodyTriangleCallbackD1Ev,@function
_ZN26btSoftBodyTriangleCallbackD1Ev = _ZN26btSoftBodyTriangleCallbackD2Ev
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
	.addrsig_sym _ZTI35btSoftBodyConcaveCollisionAlgorithm
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS35btSoftBodyConcaveCollisionAlgorithm
	.addrsig_sym _ZTI20btCollisionAlgorithm
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS20btCollisionAlgorithm
	.addrsig_sym _ZTI26btSoftBodyTriangleCallback
	.addrsig_sym _ZTS26btSoftBodyTriangleCallback
	.addrsig_sym _ZTI18btTriangleCallback
	.addrsig_sym _ZTIZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback
	.addrsig_sym _ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback
	.addrsig_sym _ZTIN12btConvexCast10CastResultE
	.addrsig_sym _ZTSN12btConvexCast10CastResultE
	.addrsig_sym _ZTI15btTriangleShape
	.addrsig_sym _ZTS15btTriangleShape
	.addrsig_sym _ZTI23btPolyhedralConvexShape
