	.file	"complexity_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_Z16BM_Complexity_O1RN9benchmark5StateE # -- Begin function _Z16BM_Complexity_O1RN9benchmark5StateE
	.globl	_Z16BM_Complexity_O1RN9benchmark5StateE
	.p2align	5
	.type	_Z16BM_Complexity_O1RN9benchmark5StateE,@function
_Z16BM_Complexity_O1RN9benchmark5StateE: # @_Z16BM_Complexity_O1RN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_16
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB0_16
# %bb.2:
	addi.d	$s1, $sp, 24
	movgr2fr.d	$fs1, $zero
	addi.w	$s2, $zero, -1
	addi.d	$s3, $sp, 16
	lu12i.w	$a0, -390353
	ori	$a0, $a0, 2468
	lu32i.d	$a0, 429167
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fs0, $a0
	.p2align	4, , 16
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB0_15
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
.LBB0_5:                                # %_ZNK9benchmark5State10iterationsEv.exit28
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$a0, $sp, 24
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	fmov.d	$fa0, $fs1
	beqz	$a0, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB0_7:                                # %_ZNK9benchmark5State10iterationsEv.exit26
                                        #   in Loop: Header=BB0_3 Depth=1
	fst.d	$fa0, $sp, 24
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB0_13
# %bb.8:                                # %_ZNK9benchmark5State10iterationsEv.exit24.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $s2
	.p2align	4, , 16
.LBB0_9:                                # %_ZNK9benchmark5State10iterationsEv.exit24
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB0_13
# %bb.10:                               # %_ZNK9benchmark5State10iterationsEv.exit22
                                        #   in Loop: Header=BB0_9 Depth=2
	st.d	$a1, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	fmov.d	$fa0, $fs1
	beqz	$a1, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
.LBB0_12:                               # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	fld.d	$fa1, $sp, 24
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 24
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB0_9
	.p2align	4, , 16
.LBB0_13:                               # %_ZNK9benchmark5State10iterationsEv.exit24.thread
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB0_3
	b	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $zero
	b	.LBB0_5
.LBB0_16:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB0_19
# %bb.17:                               # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 56
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB0_18:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB0_19:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z16BM_Complexity_O1RN9benchmark5StateE, .Lfunc_end0-_Z16BM_Complexity_O1RN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i
	.type	_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i,@function
_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i: # @_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
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
	addi.d	$sp, $sp, -1440
	.cfi_def_cfa_offset 3472
	move	$s0, $a4
	move	$s2, $a3
	move	$fp, $a2
	move	$s3, $a1
	move	$a2, $a0
	addi.d	$s1, $sp, 1048
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	addi.d	$s1, $sp, 1112
.Ltmp2:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:
	addi.d	$s1, $sp, 1176
.Ltmp4:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.3:
	addi.d	$s1, $sp, 1240
	ld.d	$s3, $s2, 0
	ld.d	$s4, $s2, 8
	ori	$a0, $zero, 3360
	add.d	$s5, $sp, $a0
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	st.d	$s5, $a0, 0
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 3360
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	addi.d	$a1, $s4, 12
.Ltmp7:                                 # EH_LABEL
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.4:
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 12
	lu52i.d	$a2, $a1, -1024
	add.d	$a0, $a0, $a2
	bltu	$a0, $a1, .LBB1_266
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp9:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	lu52i.d	$a1, $a1, 1023
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s4, .LBB1_266
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp11:                                # EH_LABEL
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.8:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
	addi.d	$fp, $sp, 1256
	st.d	$fp, $sp, 1240
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 1256
	st.b	$a0, $sp, 1264
	ori	$a1, $zero, 9
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 1248
	st.b	$zero, $sp, 1265
	addi.d	$s3, $sp, 1288
	st.d	$s3, $sp, 1272
	beq	$a0, $s5, .LBB1_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 3352
	add.d	$a2, $sp, $a2
	ld.d	$s1, $a2, 0
	st.d	$a0, $sp, 1272
	st.d	$a1, $sp, 1288
	b	.LBB1_11
.LBB1_10:
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	ld.d	$s1, $a0, 0
	addi.d	$a2, $s1, 1
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_11:
	st.d	$s1, $sp, 1280
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	st.d	$s5, $a0, 0
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 3360
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	addi.d	$s1, $sp, 1304
.Ltmp13:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.12:
	addi.d	$s1, $sp, 1368
.Ltmp15:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a2, $a0, %pc_lo12(.L.str.51)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.13:
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 1048
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(_Z16SetSubstitutionsSt16initializer_listISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.14:
	ld.d	$a0, $sp, 1400
	addi.d	$a1, $sp, 1416
	beq	$a0, $a1, .LBB1_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 1416
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 1368
	addi.d	$a1, $sp, 1384
	beq	$a0, $a1, .LBB1_18
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
	ld.d	$a1, $sp, 1384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_18:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
	ld.d	$a0, $sp, 1336
	addi.d	$a1, $sp, 1352
	beq	$a0, $a1, .LBB1_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
	ld.d	$a1, $sp, 1352
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1
	ld.d	$a0, $sp, 1304
	addi.d	$a1, $sp, 1320
	beq	$a0, $a1, .LBB1_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1
	ld.d	$a1, $sp, 1320
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.1
	ld.d	$a0, $sp, 1272
	beq	$a0, $s3, .LBB1_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
	ld.d	$a1, $sp, 1288
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2
	ld.d	$a0, $sp, 1240
	beq	$a0, $fp, .LBB1_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2
	ld.d	$a1, $sp, 1256
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_26:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.2
	ld.d	$a0, $sp, 1208
	addi.d	$s1, $sp, 1224
	beq	$a0, $s1, .LBB1_28
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
	ld.d	$a1, $sp, 1224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_28:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3
	ld.d	$a0, $sp, 1176
	addi.d	$s6, $sp, 1192
	beq	$a0, $s6, .LBB1_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3
	ld.d	$a1, $sp, 1192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_30:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.3
	ld.d	$a0, $sp, 1144
	addi.d	$a1, $sp, 1160
	beq	$a0, $a1, .LBB1_32
# %bb.31:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
	ld.d	$a1, $sp, 1160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_32:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.4
	ld.d	$a0, $sp, 1112
	addi.d	$a1, $sp, 1128
	beq	$a0, $a1, .LBB1_34
# %bb.33:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.4
	ld.d	$a1, $sp, 1128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_34:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.4
	ld.d	$a0, $sp, 1080
	addi.d	$a1, $sp, 1096
	beq	$a0, $a1, .LBB1_36
# %bb.35:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
	ld.d	$a1, $sp, 1096
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_36:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.5
	ld.d	$a0, $sp, 1048
	addi.d	$s4, $sp, 1064
	beq	$a0, $s4, .LBB1_38
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.5
	ld.d	$a1, $sp, 1064
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_38:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.5
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s5, .LBB1_40
# %bb.39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_40:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ori	$a0, $zero, 3328
	add.d	$fp, $sp, $a0
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 36
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp21:                                # EH_LABEL
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.41:                               # %.noexc308
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 3312
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 3328
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.52)
	addi.d	$a2, $a2, %pc_lo12(.L.str.52)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 32
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 32
	ori	$a2, $zero, 3320
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 1048
	ori	$a1, $zero, 3312
	add.d	$a1, $sp, $a1
	addi.d	$s3, $sp, 1048
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.42:                               # %._crit_edge.i.i309
	addi.d	$s3, $sp, 1136
	ori	$a0, $zero, 3296
	add.d	$s2, $sp, $a0
	ori	$a0, $zero, 3280
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 7
	ori	$a2, $zero, 3296
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	ori	$a1, $zero, 3303
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 11
	ori	$a1, $zero, 3288
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 3307
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
.Ltmp27:                                # EH_LABEL
	ori	$a0, $zero, 3280
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.43:                               # %.noexc.i314
	ori	$a0, $zero, 3264
	add.d	$s3, $sp, $a0
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	ori	$a0, $zero, 25
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp30:                                # EH_LABEL
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.44:                               # %.noexc315
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 3248
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 3264
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	vld	$vr0, $a2, 0
	ld.b	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 3256
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp33:                                # EH_LABEL
	ori	$a0, $zero, 3248
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.45:
.Ltmp36:                                # EH_LABEL
	addi.d	$a1, $sp, 1048
	ori	$a2, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.46:
	ld.d	$s1, $sp, 1304
	beqz	$s1, .LBB1_51
# %bb.47:
	ld.d	$a0, $s1, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_49
# %bb.48:
	ld.d	$a0, $s1, 0
	st.d	$zero, $s1, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1264
	addi.d	$a1, $sp, 1280
	bne	$a0, $a1, .LBB1_52
	b	.LBB1_53
.LBB1_49:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_254
# %bb.50:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s1, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_255
.LBB1_51:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
	ld.d	$a0, $sp, 1264
	addi.d	$a1, $sp, 1280
	beq	$a0, $a1, .LBB1_53
.LBB1_52:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317
	ld.d	$a1, $sp, 1280
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_53:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i318
	ld.d	$a0, $sp, 1224
	addi.d	$a1, $sp, 1240
	beq	$a0, $a1, .LBB1_55
# %bb.54:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i319
	ld.d	$a1, $sp, 1240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_55:                               # %_ZN8TestCaseD2Ev.exit
	ld.d	$s1, $sp, 1216
	beqz	$s1, .LBB1_60
# %bb.56:
	ld.d	$a0, $s1, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_58
# %bb.57:
	ld.d	$a0, $s1, 0
	st.d	$zero, $s1, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1176
	bne	$a0, $s6, .LBB1_61
	b	.LBB1_62
.LBB1_58:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_256
# %bb.59:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s1, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_257
.LBB1_60:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1
	ld.d	$a0, $sp, 1176
	beq	$a0, $s6, .LBB1_62
.LBB1_61:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.1
	ld.d	$a1, $sp, 1192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i318.1
	ld.d	$a0, $sp, 1136
	addi.d	$a1, $sp, 1152
	beq	$a0, $a1, .LBB1_64
# %bb.63:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i319.1
	ld.d	$a1, $sp, 1152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_64:                               # %_ZN8TestCaseD2Ev.exit.1
	ld.d	$s1, $sp, 1128
	beqz	$s1, .LBB1_69
# %bb.65:
	ld.d	$a0, $s1, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_67
# %bb.66:
	ld.d	$a0, $s1, 0
	st.d	$zero, $s1, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1088
	addi.d	$a1, $sp, 1104
	bne	$a0, $a1, .LBB1_70
	b	.LBB1_71
.LBB1_67:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_258
# %bb.68:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s1, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_259
.LBB1_69:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2
	ld.d	$a0, $sp, 1088
	addi.d	$a1, $sp, 1104
	beq	$a0, $a1, .LBB1_71
.LBB1_70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.2
	ld.d	$a1, $sp, 1104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_71:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i318.2
	ld.d	$a0, $sp, 1048
	beq	$a0, $s4, .LBB1_73
# %bb.72:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i319.2
	ld.d	$a1, $sp, 1064
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_73:                               # %_ZN8TestCaseD2Ev.exit.2
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s3, .LBB1_75
# %bb.74:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
	ori	$a1, $zero, 3264
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_75:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
	ori	$a0, $zero, 3280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s2, .LBB1_77
# %bb.76:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
	ori	$a1, $zero, 3296
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_77:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_79
# %bb.78:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
	ori	$a1, $zero, 3328
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_79:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
	addi.d	$a0, $sp, 1032
	st.d	$a0, $sp, 1016
	ori	$a0, $zero, 22
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 1016
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.80:                               # %.noexc333
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 1016
	st.d	$a1, $sp, 1032
	pcalau12i	$a2, %pc_hi20(.L.str.55)
	addi.d	$a2, $a2, %pc_lo12(.L.str.55)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 14
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 14
	ld.d	$a0, $sp, 1016
	st.d	$a1, $sp, 1024
	stx.b	$zero, $a0, $a1
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 1048
	addi.d	$a1, $sp, 1016
	addi.d	$s1, $sp, 1048
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.81:                               # %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
	addi.d	$a0, $sp, 968
	st.d	$a0, $sp, 952
	st.d	$zero, $sp, 960
	st.b	$zero, $sp, 968
.Ltmp45:                                # EH_LABEL
	addi.d	$a0, $sp, 952
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.82:                               # %.noexc.i335
	ld.d	$a0, $sp, 952
	ori	$s7, $s0, 48
	st.b	$s7, $a0, 0
	ld.d	$a0, $sp, 952
	addi.d	$s1, $sp, 1136
	st.d	$fp, $sp, 960
	st.b	$zero, $a0, 1
.Ltmp48:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a3, $a0, %pc_lo12(.L.str.56)
	addi.d	$a0, $sp, 952
	ori	$a4, $zero, 16
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.83:                               # %.noexc337
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$s5, $a1, 0
	ld.d	$a1, $a0, 0
	addi.d	$s0, $a0, 16
	beq	$a1, $s0, .LBB1_85
# %bb.84:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
	ld.d	$a2, $a0, 16
	ori	$a3, $zero, 3360
	add.d	$a3, $sp, $a3
	st.d	$a2, $a3, 0
	ld.d	$fp, $a0, 8
	ori	$a2, $zero, 3344
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	b	.LBB1_86
.LBB1_85:
	ld.d	$fp, $a0, 8
	addi.d	$a2, $fp, 1
	move	$s2, $a0
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB1_86:
	ori	$a1, $zero, 3352
	add.d	$a1, $sp, $a1
	st.d	$fp, $a1, 0
	st.d	$s0, $a0, 0
	st.d	$zero, $a0, 8
	ori	$a1, $zero, 3352
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	srli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	lu52i.d	$s0, $a2, 511
	st.b	$zero, $a0, 16
	beq	$a1, $s0, .LBB1_268
# %bb.87:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp51:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.88:                               # %.noexc342
	addi.d	$a3, $sp, 1000
	st.d	$a3, $sp, 984
	ld.d	$a1, $a0, 0
	addi.d	$s2, $a0, 16
	beq	$a1, $s2, .LBB1_90
# %bb.89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 1000
	ld.d	$fp, $a0, 8
	st.d	$a1, $sp, 984
	b	.LBB1_91
.LBB1_90:
	ld.d	$fp, $a0, 8
	addi.d	$a2, $fp, 1
	move	$s3, $s0
	move	$s0, $a0
	move	$a0, $a3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$s0, $s3
.LBB1_91:
	st.d	$fp, $sp, 992
	st.d	$s2, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
.Ltmp53:                                # EH_LABEL
	addi.d	$a1, $sp, 984
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.92:                               # %.noexc.i344
	addi.d	$s1, $sp, 1224
	addi.d	$a0, $sp, 936
	st.d	$a0, $sp, 920
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 472
.Ltmp56:                                # EH_LABEL
	addi.d	$a0, $sp, 920
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.93:                               # %.noexc345
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 920
	st.d	$a1, $sp, 936
	pcalau12i	$a2, %pc_hi20(.L.str.58)
	addi.d	$s6, $a2, %pc_lo12(.L.str.58)
	vld	$vr0, $s6, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $s6, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 920
	st.d	$a1, $sp, 928
	stx.b	$zero, $a0, $a1
.Ltmp59:                                # EH_LABEL
	addi.d	$a1, $sp, 920
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.94:                               # %.noexc.i348
	addi.d	$s1, $sp, 1312
	addi.d	$a0, $sp, 904
	st.d	$a0, $sp, 888
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 472
.Ltmp62:                                # EH_LABEL
	addi.d	$a0, $sp, 888
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.95:                               # %.noexc349
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 888
	st.d	$a1, $sp, 904
	pcalau12i	$a2, %pc_hi20(.L.str.59)
	addi.d	$fp, $a2, %pc_lo12(.L.str.59)
	vld	$vr0, $fp, 0
	ld.d	$s8, $fp, 13
	vst	$vr0, $a0, 0
	st.d	$s8, $a0, 13
	ld.d	$a0, $sp, 888
	st.d	$a1, $sp, 896
	stx.b	$zero, $a0, $a1
.Ltmp65:                                # EH_LABEL
	addi.d	$a1, $sp, 888
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.96:                               # %.noexc.i352
	addi.d	$s1, $sp, 1400
	addi.d	$a0, $sp, 872
	st.d	$a0, $sp, 856
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 472
.Ltmp68:                                # EH_LABEL
	addi.d	$a0, $sp, 856
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.97:                               # %.noexc353
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 856
	st.d	$a1, $sp, 872
	pcalau12i	$a2, %pc_hi20(.L.str.60)
	addi.d	$s4, $a2, %pc_lo12(.L.str.60)
	vld	$vr0, $s4, 0
	ld.b	$s5, $s4, 24
	ld.d	$s3, $s4, 16
	vst	$vr0, $a0, 0
	st.b	$s5, $a0, 24
	st.d	$s3, $a0, 16
	ld.d	$a0, $sp, 856
	st.d	$a1, $sp, 864
	stx.b	$zero, $a0, $a1
.Ltmp71:                                # EH_LABEL
	addi.d	$a1, $sp, 856
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.98:                               # %.noexc.i356
	addi.d	$s1, $sp, 1488
	addi.d	$a0, $sp, 840
	st.d	$a0, $sp, 824
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 472
.Ltmp74:                                # EH_LABEL
	addi.d	$a0, $sp, 824
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.99:                               # %.noexc357
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 824
	st.d	$a1, $sp, 840
	pcalau12i	$a2, %pc_hi20(.L.str.61)
	addi.d	$a2, $a2, %pc_lo12(.L.str.61)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$s2, $a0, 13
	ld.d	$a0, $sp, 824
	st.d	$a1, $sp, 832
	stx.b	$zero, $a0, $a1
.Ltmp77:                                # EH_LABEL
	addi.d	$a1, $sp, 824
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.100:                              # %._crit_edge.i.i359
	addi.d	$s1, $sp, 1576
	addi.d	$a0, $sp, 808
	st.d	$a0, $sp, 792
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 808
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 814
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 800
	st.b	$zero, $sp, 822
.Ltmp80:                                # EH_LABEL
	addi.d	$a1, $sp, 792
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.101:                              # %.noexc.i364
	addi.d	$s1, $sp, 1664
	addi.d	$a0, $sp, 776
	st.d	$a0, $sp, 760
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp83:                                # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.102:                              # %.noexc365
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 760
	st.d	$a1, $sp, 776
	pcalau12i	$a2, %pc_hi20(.L.str.63)
	addi.d	$a2, $a2, %pc_lo12(.L.str.63)
	vld	$vr0, $a2, 0
	ld.h	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 760
	st.d	$a1, $sp, 768
	stx.b	$zero, $a0, $a1
.Ltmp86:                                # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.103:                              # %.noexc.i368
	addi.d	$s1, $sp, 1752
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp89:                                # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.104:                              # %.noexc369
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	pcalau12i	$a2, %pc_hi20(.L.str.64)
	addi.d	$a2, $a2, %pc_lo12(.L.str.64)
	vld	$vr0, $a2, 0
	ld.h	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp92:                                # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.105:                              # %.noexc.i372
	addi.d	$s1, $sp, 1840
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 472
.Ltmp95:                                # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.106:                              # %.noexc373
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.65)
	addi.d	$a2, $a2, %pc_lo12(.L.str.65)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp98:                                # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.107:                              # %.noexc.i376
	addi.d	$s1, $sp, 1928
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 472
.Ltmp101:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.108:                              # %.noexc377
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	pcalau12i	$a2, %pc_hi20(.L.str.66)
	addi.d	$a2, $a2, %pc_lo12(.L.str.66)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 664
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp104:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.109:                              # %.noexc.i380
	addi.d	$s1, $sp, 2016
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 472
.Ltmp107:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.110:                              # %.noexc381
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp110:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.111:                              # %.noexc.i384
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 2104
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 472
.Ltmp113:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.112:                              # %.noexc385
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	pcalau12i	$a2, %pc_hi20(.L.str.68)
	addi.d	$a2, $a2, %pc_lo12(.L.str.68)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp116:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.113:                              # %._crit_edge.i.i387
	ori	$a0, $zero, 2192
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 584
	st.d	$s2, $sp, 576
.Ltmp119:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.114:                              # %.noexc.i392
	ori	$a0, $zero, 2280
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 472
.Ltmp122:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.115:                              # %.noexc393
	ld.d	$a1, $sp, 472
	st.d	$a0, $sp, 536
	st.d	$a1, $sp, 552
	pcalau12i	$a2, %pc_hi20(.L.str.70)
	addi.d	$a2, $a2, %pc_lo12(.L.str.70)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 536
	st.d	$a1, $sp, 544
	stx.b	$zero, $a0, $a1
.Ltmp125:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.116:                              # %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i400
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	st.d	$zero, $sp, 448
	st.b	$zero, $sp, 456
.Ltmp128:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	ori	$a1, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.117:                              # %.noexc.i402
	ld.d	$a0, $sp, 440
	st.b	$s7, $a0, 0
	ld.d	$a0, $sp, 440
	ori	$a1, $zero, 2368
	add.d	$s1, $sp, $a1
	st.d	$s2, $sp, 448
	st.b	$zero, $a0, 1
.Ltmp131:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a3, $a0, %pc_lo12(.L.str.56)
	addi.d	$a0, $sp, 440
	ori	$a4, $zero, 16
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.118:                              # %.noexc414
	addi.d	$a3, $sp, 488
	st.d	$a3, $sp, 472
	ld.d	$a1, $a0, 0
	addi.d	$s2, $a0, 16
	beq	$a1, $s2, .LBB1_120
# %bb.119:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 488
	ld.d	$s7, $a0, 8
	st.d	$a1, $sp, 472
	b	.LBB1_121
.LBB1_120:
	ld.d	$s7, $a0, 8
	addi.d	$a2, $s7, 1
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $s6
	move	$s6, $s3
	move	$s3, $fp
	move	$fp, $s5
	move	$s5, $s8
	move	$s8, $a0
	move	$a0, $a3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$s8, $s5
	move	$s5, $fp
	move	$fp, $s3
	move	$s3, $s6
	move	$s6, $s4
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
.LBB1_121:
	st.d	$s7, $sp, 480
	st.d	$s2, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 480
	srli.d	$a1, $a1, 1
	st.b	$zero, $a0, 16
	beq	$a1, $s0, .LBB1_270
# %bb.122:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i416
.Ltmp134:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	addi.d	$a0, $sp, 472
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.123:                              # %.noexc421
	addi.d	$a1, $sp, 520
	st.d	$a1, $sp, 504
	ld.d	$a1, $a0, 0
	addi.d	$s2, $a0, 16
	beq	$a1, $s2, .LBB1_125
# %bb.124:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 520
	ld.d	$s7, $a0, 8
	st.d	$a1, $sp, 504
	b	.LBB1_126
.LBB1_125:
	ld.d	$s7, $a0, 8
	addi.d	$a2, $s7, 1
	move	$s0, $a0
	addi.d	$a0, $sp, 520
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB1_126:
	st.d	$s7, $sp, 512
	st.d	$s2, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
.Ltmp136:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.127:                              # %.noexc.i424
	ori	$a0, $zero, 2456
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 32
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp139:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
# %bb.128:                              # %.noexc425
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	vld	$vr0, $s6, 16
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 16
	vld	$vr0, $s6, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp142:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.129:                              # %.noexc.i428
	ori	$a0, $zero, 2544
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 21
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp145:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.130:                              # %.noexc429
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	vld	$vr0, $fp, 0
	st.d	$a0, $sp, 376
	st.d	$a1, $sp, 392
	vst	$vr0, $a0, 0
	st.d	$s8, $a0, 13
	ld.d	$a0, $sp, 376
	st.d	$a1, $sp, 384
	stx.b	$zero, $a0, $a1
.Ltmp148:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.131:                              # %.noexc.i432
	ori	$a0, $zero, 2632
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 25
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp151:                               # EH_LABEL
	addi.d	$a0, $sp, 344
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.132:                              # %.noexc433
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 344
	st.d	$a1, $sp, 360
	vst	$vr0, $a0, 0
	st.b	$s5, $a0, 24
	st.d	$s3, $a0, 16
	ld.d	$a0, $sp, 344
	st.d	$a1, $sp, 352
	stx.b	$zero, $a0, $a1
.Ltmp154:                               # EH_LABEL
	addi.d	$a1, $sp, 344
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.133:                              # %.noexc.i436
	ori	$a0, $zero, 2720
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 328
	st.d	$a0, $sp, 312
	ori	$a0, $zero, 21
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp157:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.134:                              # %.noexc437
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 312
	st.d	$a1, $sp, 328
	vst	$vr0, $a0, 0
	st.d	$s0, $a0, 13
	ld.d	$a0, $sp, 312
	st.d	$a1, $sp, 320
	stx.b	$zero, $a0, $a1
.Ltmp160:                               # EH_LABEL
	addi.d	$a1, $sp, 312
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.135:                              # %._crit_edge.i.i439
	ori	$a0, $zero, 2808
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 296
	st.d	$a0, $sp, 280
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 296
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 302
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 288
	st.b	$zero, $sp, 310
.Ltmp163:                               # EH_LABEL
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.136:                              # %.noexc.i444
	ori	$a0, $zero, 2896
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 264
	st.d	$a0, $sp, 248
	ori	$a0, $zero, 25
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp166:                               # EH_LABEL
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.137:                              # %.noexc445
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 248
	st.d	$a1, $sp, 264
	pcalau12i	$a2, %pc_hi20(.L.str.71)
	addi.d	$a2, $a2, %pc_lo12(.L.str.71)
	vld	$vr0, $a2, 0
	ld.b	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 248
	st.d	$a1, $sp, 256
	stx.b	$zero, $a0, $a1
.Ltmp169:                               # EH_LABEL
	addi.d	$a1, $sp, 248
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.138:                              # %.noexc.i448
	ori	$a0, $zero, 2984
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 232
	st.d	$a0, $sp, 216
	ori	$a0, $zero, 32
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp172:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.139:                              # %.noexc449
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 216
	st.d	$a1, $sp, 232
	pcalau12i	$a2, %pc_hi20(.L.str.72)
	addi.d	$a2, $a2, %pc_lo12(.L.str.72)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 216
	st.d	$a1, $sp, 224
	stx.b	$zero, $a0, $a1
.Ltmp175:                               # EH_LABEL
	addi.d	$a1, $sp, 216
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.140:                              # %._crit_edge.i.i451
	ori	$a0, $zero, 3072
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 200
	st.d	$a0, $sp, 184
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 200
	st.d	$a0, $sp, 206
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 192
	st.b	$zero, $sp, 214
.Ltmp178:                               # EH_LABEL
	addi.d	$a1, $sp, 184
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.141:                              # %._crit_edge.i.i455
	addi.d	$a0, $sp, 1048
	addi.d	$a0, $a0, 2047
	addi.d	$s1, $a0, 65
	addi.d	$s0, $sp, 168
	st.d	$s0, $sp, 152
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 168
	st.d	$fp, $sp, 160
.Ltmp181:                               # EH_LABEL
	addi.d	$a1, $sp, 152
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.142:
.Ltmp184:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 1048
	ori	$a2, $zero, 25
	addi.d	$s2, $sp, 1048
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.143:
	move	$s6, $zero
	addi.d	$a0, $s2, 2047
	addi.d	$fp, $a0, 81
	addi.d	$s4, $a0, 121
	lu12i.w	$a0, -1
	ori	$s3, $a0, 1896
	ori	$s5, $zero, 1
	ori	$s8, $zero, 1
	lu32i.d	$s8, 1
	b	.LBB1_145
	.p2align	4, , 16
.LBB1_144:                              # %_ZN8TestCaseD2Ev.exit469
                                        #   in Loop: Header=BB1_145 Depth=1
	addi.d	$s6, $s6, -88
	beq	$s6, $s3, .LBB1_156
.LBB1_145:                              # =>This Inner Loop Header: Depth=1
	add.d	$s7, $s2, $s6
	ldptr.d	$s1, $s7, 2192
	beqz	$s1, .LBB1_150
# %bb.146:                              #   in Loop: Header=BB1_145 Depth=1
	ld.d	$a0, $s1, 8
	dbar	20
	bne	$a0, $s8, .LBB1_148
# %bb.147:                              #   in Loop: Header=BB1_145 Depth=1
	ld.d	$a0, $s1, 0
	st.d	$zero, $s1, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ldptr.d	$a0, $s7, 2152
	add.d	$a1, $s4, $s6
	bne	$a1, $a0, .LBB1_151
	b	.LBB1_152
	.p2align	4, , 16
.LBB1_148:                              #   in Loop: Header=BB1_145 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_154
# %bb.149:                              #   in Loop: Header=BB1_145 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s1, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s5, .LBB1_155
	.p2align	4, , 16
.LBB1_150:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i463
                                        #   in Loop: Header=BB1_145 Depth=1
	ldptr.d	$a0, $s7, 2152
	add.d	$a1, $s4, $s6
	beq	$a1, $a0, .LBB1_152
.LBB1_151:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i464
                                        #   in Loop: Header=BB1_145 Depth=1
	ldptr.d	$a1, $s7, 2168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_152:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i465
                                        #   in Loop: Header=BB1_145 Depth=1
	ldptr.d	$a0, $s7, 2112
	add.d	$a1, $fp, $s6
	beq	$a1, $a0, .LBB1_144
# %bb.153:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i466
                                        #   in Loop: Header=BB1_145 Depth=1
	ldptr.d	$a1, $s7, 2128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_144
.LBB1_154:                              #   in Loop: Header=BB1_145 Depth=1
	addi.d	$a1, $s1, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s5, .LBB1_150
.LBB1_155:                              #   in Loop: Header=BB1_145 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $s7, 2152
	add.d	$a1, $s4, $s6
	bne	$a1, $a0, .LBB1_151
	b	.LBB1_152
.LBB1_156:
	ld.d	$a0, $sp, 152
	beq	$a0, $s0, .LBB1_158
# %bb.157:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_158:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472
	ld.d	$a0, $sp, 184
	ori	$a1, $zero, 3360
	add.d	$fp, $sp, $a1
	addi.d	$s0, $sp, 1032
	addi.d	$s1, $sp, 968
	addi.d	$s2, $sp, 1000
	addi.d	$s3, $sp, 936
	addi.d	$s4, $sp, 1064
	addi.d	$s5, $sp, 1192
	addi.d	$s6, $sp, 904
	addi.d	$s7, $sp, 872
	addi.d	$s8, $sp, 488
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB1_160
# %bb.159:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_160:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB1_162
# %bb.161:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476
	ld.d	$a1, $sp, 232
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_162:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB1_164
# %bb.163:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_164:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB1_166
# %bb.165:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_166:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB1_168
# %bb.167:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485
	ld.d	$a1, $sp, 328
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_168:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB1_170
# %bb.169:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_170:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB1_172
# %bb.171:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_172:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB1_174
# %bb.173:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_174:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB1_176
# %bb.175:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_176:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499
	ld.d	$a0, $sp, 472
	beq	$a0, $s8, .LBB1_178
# %bb.177:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_178:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB1_180
# %bb.179:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_180:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB1_182
# %bb.181:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_182:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB1_184
# %bb.183:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_184:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB1_186
# %bb.185:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_186:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB1_188
# %bb.187:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_188:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB1_190
# %bb.189:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_190:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB1_192
# %bb.191:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_192:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB1_194
# %bb.193:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_194:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB1_196
# %bb.195:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_196:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529
	ld.d	$a0, $sp, 792
	addi.d	$a1, $sp, 808
	beq	$a0, $a1, .LBB1_198
# %bb.197:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530
	ld.d	$a1, $sp, 808
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_198:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532
	ld.d	$a0, $sp, 824
	addi.d	$a1, $sp, 840
	beq	$a0, $a1, .LBB1_200
# %bb.199:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533
	ld.d	$a1, $sp, 840
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_200:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535
	ld.d	$a0, $sp, 856
	beq	$a0, $s7, .LBB1_202
# %bb.201:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536
	ld.d	$a1, $sp, 872
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_202:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538
	ld.d	$a0, $sp, 888
	beq	$a0, $s6, .LBB1_204
# %bb.203:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539
	ld.d	$a1, $sp, 904
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_204:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541
	ld.d	$a0, $sp, 920
	addi.d	$s6, $sp, 1280
	addi.d	$s7, $sp, 1240
	beq	$a0, $s3, .LBB1_206
# %bb.205:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542
	ld.d	$a1, $sp, 936
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_206:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544
	ld.d	$a0, $sp, 984
	beq	$a0, $s2, .LBB1_208
# %bb.207:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545
	ld.d	$a1, $sp, 1000
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_208:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_210
# %bb.209:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_210:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550
	ld.d	$a0, $sp, 952
	beq	$a0, $s1, .LBB1_212
# %bb.211:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551
	ld.d	$a1, $sp, 968
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_212:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553
	ld.d	$a0, $sp, 1016
	beq	$a0, $s0, .LBB1_214
# %bb.213:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554
	ld.d	$a1, $sp, 1032
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_214:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556
	addi.d	$s0, $sp, 136
	st.d	$s0, $sp, 120
	ori	$a0, $zero, 40
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp187:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp188:                               # EH_LABEL
# %bb.215:                              # %.noexc559
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	pcalau12i	$a2, %pc_hi20(.L.str.74)
	addi.d	$a2, $a2, %pc_lo12(.L.str.74)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 32
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
.Ltmp190:                               # EH_LABEL
	addi.d	$a0, $sp, 1048
	addi.d	$a1, $sp, 120
	addi.d	$fp, $sp, 1048
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.216:                              # %._crit_edge.i.i561
	addi.d	$fp, $sp, 1136
	addi.d	$s1, $sp, 104
	st.d	$s1, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$a1, $sp, 104
	st.d	$a0, $sp, 109
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 117
.Ltmp193:                               # EH_LABEL
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp194:                               # EH_LABEL
# %bb.217:                              # %.noexc.i566
	addi.d	$fp, $sp, 1224
	addi.d	$s2, $sp, 72
	st.d	$s2, $sp, 56
	ori	$a0, $zero, 34
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp196:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.218:                              # %.noexc567
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
	pcalau12i	$a2, %pc_hi20(.L.str.76)
	addi.d	$a2, $a2, %pc_lo12(.L.str.76)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 32
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 32
	st.d	$a1, $sp, 64
	stx.b	$zero, $a0, $a1
.Ltmp199:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
# %bb.219:
.Ltmp202:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 1048
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.220:
	ld.d	$fp, $sp, 1304
	beqz	$fp, .LBB1_225
# %bb.221:
	ld.d	$a0, $fp, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_223
# %bb.222:
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1264
	bne	$a0, $s6, .LBB1_226
	b	.LBB1_227
.LBB1_223:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_260
# %bb.224:
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_261
.LBB1_225:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i573
	ld.d	$a0, $sp, 1264
	beq	$a0, $s6, .LBB1_227
.LBB1_226:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i574
	ld.d	$a1, $sp, 1280
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_227:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i575
	ld.d	$a0, $sp, 1224
	beq	$a0, $s7, .LBB1_229
# %bb.228:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i576
	ld.d	$a1, $sp, 1240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_229:                              # %_ZN8TestCaseD2Ev.exit579
	ld.d	$fp, $sp, 1216
	addi.d	$s3, $sp, 1152
	addi.d	$s6, $sp, 1104
	beqz	$fp, .LBB1_234
# %bb.230:
	ld.d	$a0, $fp, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_232
# %bb.231:
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1176
	bne	$a0, $s5, .LBB1_235
	b	.LBB1_236
.LBB1_232:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_262
# %bb.233:
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_263
.LBB1_234:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i573.1
	ld.d	$a0, $sp, 1176
	beq	$a0, $s5, .LBB1_236
.LBB1_235:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i574.1
	ld.d	$a1, $sp, 1192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_236:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i575.1
	ld.d	$a0, $sp, 1136
	beq	$a0, $s3, .LBB1_238
# %bb.237:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i576.1
	ld.d	$a1, $sp, 1152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_238:                              # %_ZN8TestCaseD2Ev.exit579.1
	ld.d	$fp, $sp, 1128
	beqz	$fp, .LBB1_243
# %bb.239:
	ld.d	$a0, $fp, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_241
# %bb.240:
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1088
	bne	$a0, $s6, .LBB1_244
	b	.LBB1_245
.LBB1_241:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_264
# %bb.242:
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_265
.LBB1_243:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i573.2
	ld.d	$a0, $sp, 1088
	beq	$a0, $s6, .LBB1_245
.LBB1_244:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i574.2
	ld.d	$a1, $sp, 1104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_245:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i575.2
	ld.d	$a0, $sp, 1048
	beq	$a0, $s4, .LBB1_247
# %bb.246:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i576.2
	ld.d	$a1, $sp, 1064
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_247:                              # %_ZN8TestCaseD2Ev.exit579.2
	ld.d	$a0, $sp, 56
	beq	$a0, $s2, .LBB1_249
# %bb.248:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_249:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582
	ld.d	$a0, $sp, 88
	beq	$a0, $s1, .LBB1_251
# %bb.250:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_251:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585
	ld.d	$a0, $sp, 120
	beq	$a0, $s0, .LBB1_253
# %bb.252:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_253:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588
	addi.d	$sp, $sp, 1440
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB1_254:
	addi.d	$a1, $s1, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_51
.LBB1_255:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1264
	addi.d	$a1, $sp, 1280
	bne	$a0, $a1, .LBB1_52
	b	.LBB1_53
.LBB1_256:
	addi.d	$a1, $s1, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_60
.LBB1_257:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1176
	bne	$a0, $s6, .LBB1_61
	b	.LBB1_62
.LBB1_258:
	addi.d	$a1, $s1, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_69
.LBB1_259:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1088
	addi.d	$a1, $sp, 1104
	bne	$a0, $a1, .LBB1_70
	b	.LBB1_71
.LBB1_260:
	addi.d	$a1, $fp, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_225
.LBB1_261:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1264
	bne	$a0, $s6, .LBB1_226
	b	.LBB1_227
.LBB1_262:
	addi.d	$a1, $fp, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_234
.LBB1_263:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1176
	bne	$a0, $s5, .LBB1_235
	b	.LBB1_236
.LBB1_264:
	addi.d	$a1, $fp, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_243
.LBB1_265:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1088
	bne	$a0, $s6, .LBB1_244
	b	.LBB1_245
.LBB1_266:                              # %.invoke.i.i
.Ltmp211:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.267:                              # %.cont.i.i
.LBB1_268:
.Ltmp208:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.269:                              # %.noexc341
.LBB1_270:
.Ltmp205:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
# %bb.271:                              # %.noexc420
.LBB1_272:                              # %.loopexit748.loopexit
.Ltmp204:                               # EH_LABEL
	move	$s4, $a0
	addi.d	$a0, $sp, 1224
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1136
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	b	.LBB1_274
.LBB1_273:
.Ltmp201:                               # EH_LABEL
	move	$s4, $a0
	move	$s3, $zero
.LBB1_274:                              # %.loopexit748
	ld.d	$a0, $sp, 56
	bne	$a0, $s2, .LBB1_280
# %bb.275:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690
	ld.d	$a0, $sp, 88
	bne	$a0, $s1, .LBB1_284
.LBB1_276:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit693
	ld.d	$a0, $sp, 120
	beq	$a0, $s0, .LBB1_278
.LBB1_277:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_278:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696
	addi.d	$s0, $sp, 1048
	xor	$a0, $s0, $fp
	sltui	$a0, $a0, 1
	or	$a0, $s3, $a0
	bnez	$a0, .LBB1_352
	.p2align	4, , 16
.LBB1_279:                              # %.preheader746
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$fp, $fp, -88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$fp, $s0, .LBB1_279
	b	.LBB1_352
.LBB1_280:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	beq	$a0, $s1, .LBB1_276
	b	.LBB1_284
.LBB1_281:
.Ltmp198:                               # EH_LABEL
	b	.LBB1_283
.LBB1_282:
.Ltmp195:                               # EH_LABEL
.LBB1_283:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690
	move	$s4, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 88
	beq	$a0, $s1, .LBB1_276
.LBB1_284:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i691
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	bne	$a0, $s0, .LBB1_277
	b	.LBB1_278
.LBB1_285:
.Ltmp192:                               # EH_LABEL
	move	$s4, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 120
	bne	$a0, $s0, .LBB1_277
	b	.LBB1_278
.LBB1_286:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696.thread
.Ltmp189:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_287:                              # %.loopexit749.loopexit
.Ltmp186:                               # EH_LABEL
	move	$s4, $a0
	addi.d	$a0, $s2, 2047
	addi.d	$a0, $a0, 65
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3072
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2984
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2896
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2808
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2632
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2280
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2192
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2104
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 2016
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1928
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1840
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1752
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1664
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1576
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1488
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1400
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1312
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1224
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1136
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB1_289
.LBB1_288:
.Ltmp183:                               # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
.LBB1_289:                              # %.loopexit749
	ld.d	$a0, $sp, 152
	bne	$a0, $s0, .LBB1_315
# %bb.290:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	bne	$a0, $a1, .LBB1_317
.LBB1_291:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	bne	$a0, $a1, .LBB1_318
.LBB1_292:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	bne	$a0, $a1, .LBB1_323
.LBB1_293:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	bne	$a0, $a1, .LBB1_324
.LBB1_294:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	bne	$a0, $a1, .LBB1_325
.LBB1_295:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	bne	$a0, $a1, .LBB1_326
.LBB1_296:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	bne	$a0, $a1, .LBB1_327
.LBB1_297:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	bne	$a0, $a1, .LBB1_328
.LBB1_298:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB1_329
.LBB1_299:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB1_330
.LBB1_300:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB1_331
.LBB1_301:
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB1_332
.LBB1_302:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB1_333
.LBB1_303:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB1_334
.LBB1_304:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB1_335
.LBB1_305:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB1_336
.LBB1_306:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB1_337
.LBB1_307:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB1_338
.LBB1_308:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	bne	$a0, $a1, .LBB1_339
.LBB1_309:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660
	ld.d	$a0, $sp, 792
	addi.d	$a1, $sp, 808
	bne	$a0, $a1, .LBB1_340
.LBB1_310:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663
	ld.d	$a0, $sp, 824
	addi.d	$a1, $sp, 840
	bne	$a0, $a1, .LBB1_341
.LBB1_311:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	bne	$a0, $a1, .LBB1_342
.LBB1_312:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	bne	$a0, $a1, .LBB1_343
.LBB1_313:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672
	ld.d	$a0, $sp, 920
	addi.d	$a1, $sp, 936
	bne	$a0, $a1, .LBB1_344
.LBB1_314:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB1_345
	b	.LBB1_346
.LBB1_315:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB1_291
	b	.LBB1_317
.LBB1_316:
.Ltmp180:                               # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB1_291
.LBB1_317:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB1_292
.LBB1_318:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607
	ld.d	$a1, $sp, 232
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB1_293
	b	.LBB1_323
.LBB1_319:
.Ltmp177:                               # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB1_292
	b	.LBB1_318
.LBB1_320:
.Ltmp174:                               # EH_LABEL
	b	.LBB1_322
.LBB1_321:
.Ltmp171:                               # EH_LABEL
.LBB1_322:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB1_293
.LBB1_323:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB1_294
.LBB1_324:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB1_295
.LBB1_325:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616
	ld.d	$a1, $sp, 328
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB1_296
.LBB1_326:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB1_297
.LBB1_327:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB1_298
.LBB1_328:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB1_299
.LBB1_329:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB1_300
.LBB1_330:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB1_301
.LBB1_331:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB1_302
.LBB1_332:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB1_303
.LBB1_333:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB1_304
.LBB1_334:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB1_305
.LBB1_335:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB1_306
.LBB1_336:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB1_307
.LBB1_337:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB1_308
.LBB1_338:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB1_309
.LBB1_339:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 792
	addi.d	$a1, $sp, 808
	beq	$a0, $a1, .LBB1_310
.LBB1_340:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661
	ld.d	$a1, $sp, 808
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 824
	addi.d	$a1, $sp, 840
	beq	$a0, $a1, .LBB1_311
.LBB1_341:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664
	ld.d	$a1, $sp, 840
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	beq	$a0, $a1, .LBB1_312
.LBB1_342:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667
	ld.d	$a1, $sp, 872
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	beq	$a0, $a1, .LBB1_313
.LBB1_343:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i670
	ld.d	$a1, $sp, 904
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 920
	addi.d	$a1, $sp, 936
	beq	$a0, $a1, .LBB1_314
.LBB1_344:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673
	ld.d	$a1, $sp, 936
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	beq	$a0, $a1, .LBB1_346
.LBB1_345:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676
	ld.d	$a1, $sp, 1000
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_346:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	bne	$a0, $a1, .LBB1_353
# %bb.347:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681
	ld.d	$a0, $sp, 952
	addi.d	$a1, $sp, 968
	bne	$a0, $a1, .LBB1_354
.LBB1_348:
	ld.d	$a0, $sp, 1016
	addi.d	$a1, $sp, 1032
	beq	$a0, $a1, .LBB1_350
.LBB1_349:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i685
	ld.d	$a1, $sp, 1032
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_350:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687
	addi.d	$fp, $sp, 1048
	xor	$a0, $fp, $s1
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB1_352
	.p2align	4, , 16
.LBB1_351:                              # %.preheader744
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s1, $s1, -88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s1, $fp, .LBB1_351
.LBB1_352:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_353:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 952
	addi.d	$a1, $sp, 968
	beq	$a0, $a1, .LBB1_348
.LBB1_354:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i682
	ld.d	$a1, $sp, 968
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1016
	addi.d	$a1, $sp, 1032
	bne	$a0, $a1, .LBB1_349
	b	.LBB1_350
.LBB1_355:
.Ltmp168:                               # EH_LABEL
	b	.LBB1_357
.LBB1_356:
.Ltmp165:                               # EH_LABEL
.LBB1_357:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB1_294
	b	.LBB1_324
.LBB1_358:
.Ltmp162:                               # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB1_295
	b	.LBB1_325
.LBB1_359:
.Ltmp159:                               # EH_LABEL
	b	.LBB1_361
.LBB1_360:
.Ltmp156:                               # EH_LABEL
.LBB1_361:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB1_296
	b	.LBB1_326
.LBB1_362:
.Ltmp153:                               # EH_LABEL
	b	.LBB1_364
.LBB1_363:
.Ltmp150:                               # EH_LABEL
.LBB1_364:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB1_297
	b	.LBB1_327
.LBB1_365:
.Ltmp147:                               # EH_LABEL
	b	.LBB1_367
.LBB1_366:
.Ltmp144:                               # EH_LABEL
.LBB1_367:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB1_298
	b	.LBB1_328
.LBB1_368:
.Ltmp141:                               # EH_LABEL
	b	.LBB1_370
.LBB1_369:
.Ltmp138:                               # EH_LABEL
.LBB1_370:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB1_299
	b	.LBB1_329
.LBB1_371:
.Ltmp133:                               # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB1_301
	b	.LBB1_331
.LBB1_372:
.Ltmp130:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_373:
.Ltmp127:                               # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB1_302
	b	.LBB1_332
.LBB1_374:
.Ltmp124:                               # EH_LABEL
	b	.LBB1_376
.LBB1_375:
.Ltmp121:                               # EH_LABEL
.LBB1_376:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB1_303
	b	.LBB1_333
.LBB1_377:
.Ltmp118:                               # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB1_304
	b	.LBB1_334
.LBB1_378:
.Ltmp115:                               # EH_LABEL
	b	.LBB1_380
.LBB1_379:
.Ltmp112:                               # EH_LABEL
.LBB1_380:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB1_305
	b	.LBB1_335
.LBB1_381:
.Ltmp109:                               # EH_LABEL
	b	.LBB1_383
.LBB1_382:
.Ltmp106:                               # EH_LABEL
.LBB1_383:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB1_306
	b	.LBB1_336
.LBB1_384:
.Ltmp103:                               # EH_LABEL
	b	.LBB1_386
.LBB1_385:
.Ltmp100:                               # EH_LABEL
.LBB1_386:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB1_307
	b	.LBB1_337
.LBB1_387:
.Ltmp97:                                # EH_LABEL
	b	.LBB1_389
.LBB1_388:
.Ltmp94:                                # EH_LABEL
.LBB1_389:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB1_308
	b	.LBB1_338
.LBB1_390:
.Ltmp91:                                # EH_LABEL
	b	.LBB1_392
.LBB1_391:
.Ltmp88:                                # EH_LABEL
.LBB1_392:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB1_309
	b	.LBB1_339
.LBB1_393:
.Ltmp85:                                # EH_LABEL
	b	.LBB1_395
.LBB1_394:
.Ltmp82:                                # EH_LABEL
.LBB1_395:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 792
	addi.d	$a1, $sp, 808
	beq	$a0, $a1, .LBB1_310
	b	.LBB1_340
.LBB1_396:
.Ltmp79:                                # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 824
	addi.d	$a1, $sp, 840
	beq	$a0, $a1, .LBB1_311
	b	.LBB1_341
.LBB1_397:
.Ltmp76:                                # EH_LABEL
	b	.LBB1_399
.LBB1_398:
.Ltmp73:                                # EH_LABEL
.LBB1_399:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	beq	$a0, $a1, .LBB1_312
	b	.LBB1_342
.LBB1_400:
.Ltmp70:                                # EH_LABEL
	b	.LBB1_402
.LBB1_401:
.Ltmp67:                                # EH_LABEL
.LBB1_402:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	beq	$a0, $a1, .LBB1_313
	b	.LBB1_343
.LBB1_403:
.Ltmp64:                                # EH_LABEL
	b	.LBB1_405
.LBB1_404:
.Ltmp61:                                # EH_LABEL
.LBB1_405:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 920
	addi.d	$a1, $sp, 936
	beq	$a0, $a1, .LBB1_314
	b	.LBB1_344
.LBB1_406:
.Ltmp58:                                # EH_LABEL
	b	.LBB1_408
.LBB1_407:
.Ltmp55:                                # EH_LABEL
.LBB1_408:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB1_345
	b	.LBB1_346
.LBB1_409:
.Ltmp50:                                # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 952
	addi.d	$a1, $sp, 968
	beq	$a0, $a1, .LBB1_348
	b	.LBB1_354
.LBB1_410:
.Ltmp47:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_411:
.Ltmp44:                                # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 1016
	addi.d	$a1, $sp, 1032
	bne	$a0, $a1, .LBB1_349
	b	.LBB1_350
.LBB1_412:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687.thread
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_413:                              # %.loopexit752.loopexit
.Ltmp38:                                # EH_LABEL
	move	$s4, $a0
	addi.d	$a0, $sp, 1224
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1136
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	b	.LBB1_415
.LBB1_414:
.Ltmp35:                                # EH_LABEL
	move	$s4, $a0
	move	$s0, $zero
.LBB1_415:                              # %.loopexit752
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s3, .LBB1_418
# %bb.416:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592
	ori	$a1, $zero, 3264
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_418
.LBB1_417:
.Ltmp32:                                # EH_LABEL
	move	$s4, $a0
	move	$s0, $zero
.LBB1_418:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594
	move	$s3, $s1
	b	.LBB1_420
.LBB1_419:
.Ltmp29:                                # EH_LABEL
	move	$s4, $a0
	move	$s0, $zero
.LBB1_420:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594
	ori	$a0, $zero, 3280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s2, .LBB1_423
# %bb.421:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595
	ori	$a1, $zero, 3296
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_423
.LBB1_422:
.Ltmp26:                                # EH_LABEL
	move	$s4, $a0
	move	$s0, $zero
.LBB1_423:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_425
# %bb.424:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598
	ori	$a1, $zero, 3328
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_425:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
	addi.d	$fp, $sp, 1048
	xor	$a0, $fp, $s3
	sltui	$a0, $a0, 1
	or	$a0, $s0, $a0
	bnez	$a0, .LBB1_352
	.p2align	4, , 16
.LBB1_426:                              # %.preheader750
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s3, $s3, -88
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s3, $fp, .LBB1_426
	b	.LBB1_352
.LBB1_427:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600.thread
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_428:                              # %.loopexit753.loopexit
.Ltmp20:                                # EH_LABEL
	move	$s4, $a0
	addi.d	$a0, $sp, 1368
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1304
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1240
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1176
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB1_432
.LBB1_429:
.Ltmp207:                               # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB1_300
	b	.LBB1_330
.LBB1_430:
.Ltmp210:                               # EH_LABEL
	move	$s4, $a0
	move	$s2, $zero
	b	.LBB1_346
.LBB1_431:
.Ltmp17:                                # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB1_432:                              # %.loopexit753
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s5, .LBB1_438
# %bb.433:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_438
.LBB1_434:
.Ltmp6:                                 # EH_LABEL
	move	$s4, $a0
	b	.LBB1_437
.LBB1_435:
.Ltmp213:                               # EH_LABEL
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a2, $a1, 0
	move	$s4, $a0
	beq	$a2, $s5, .LBB1_437
# %bb.436:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ori	$a0, $zero, 3360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_437:
	move	$fp, $zero
.LBB1_438:
	bnez	$fp, .LBB1_352
# %bb.439:
	addi.d	$a0, $sp, 1048
	xor	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	bnez	$a0, .LBB1_352
# %bb.440:                              # %.preheader.preheader
	addi.d	$fp, $sp, 1048
	.p2align	4, , 16
.LBB1_441:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s1, $s1, -64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	bne	$s1, $fp, .LBB1_441
	b	.LBB1_352
.Lfunc_end1:
	.size	_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i, .Lfunc_end1-_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp5-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp12-.Ltmp7                 #   Call between .Ltmp7 and .Ltmp12
	.uleb128 .Ltmp213-.Lfunc_begin0         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp13                #   Call between .Ltmp13 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp39-.Ltmp37                #   Call between .Ltmp37 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp51-.Ltmp49                #   Call between .Ltmp49 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp210-.Lfunc_begin0         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin0          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin0          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin0          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin0          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin0          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin0         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin0         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin0         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin0         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin0         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin0         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin0         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin0         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin0         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin0         #     jumps to .Ltmp130
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp131-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin0         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp134-.Ltmp132              #   Call between .Ltmp132 and .Ltmp134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp207-.Lfunc_begin0         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin0         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin0         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin0         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin0         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin0         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin0         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin0         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin0         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin0         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin0         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin0         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin0         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin0         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin0         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin0         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin0         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin0         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin0         # >> Call Site 68 <<
	.uleb128 .Ltmp187-.Ltmp185              #   Call between .Ltmp185 and .Ltmp187
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin0         # >> Call Site 69 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin0         #     jumps to .Ltmp189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin0         # >> Call Site 70 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin0         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin0         # >> Call Site 71 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin0         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin0         # >> Call Site 72 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin0         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin0         # >> Call Site 73 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin0         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 74 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin0         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp211-.Ltmp203              #   Call between .Ltmp203 and .Ltmp211
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin0         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin0         # >> Call Site 77 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin0         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin0         # >> Call Site 78 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin0         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin0         # >> Call Site 79 <<
	.uleb128 .Lfunc_end1-.Ltmp206           #   Call between .Ltmp206 and .Lfunc_end1
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
	.text
	.hidden	_Z17BM_Complexity_O_NRN9benchmark5StateE # -- Begin function _Z17BM_Complexity_O_NRN9benchmark5StateE
	.globl	_Z17BM_Complexity_O_NRN9benchmark5StateE
	.p2align	5
	.type	_Z17BM_Complexity_O_NRN9benchmark5StateE,@function
_Z17BM_Complexity_O_NRN9benchmark5StateE: # @_Z17BM_Complexity_O_NRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	.cfi_offset 58, -72
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB2_17
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB2_17
# %bb.2:
	addi.d	$s1, $sp, 16
	movgr2fr.d	$fs0, $zero
	addi.w	$s2, $zero, -1
	addi.d	$s3, $sp, 8
	ori	$a0, $zero, 0
	lu32i.d	$a0, 327680
	lu52i.d	$a0, $a0, 1028
	movgr2fr.d	$fs1, $a0
	lu12i.w	$a0, -97683
	ori	$a0, $a0, 1685
	lu32i.d	$a0, 77323
	lu52i.d	$a0, $a0, 993
	movgr2fr.d	$fs2, $a0
	.p2align	4, , 16
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB2_16
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
.LBB2_5:                                # %_ZNK9benchmark5State10iterationsEv.exit29
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$a0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	fmov.d	$fa0, $fs0
	beqz	$a0, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB2_7:                                # %_ZNK9benchmark5State10iterationsEv.exit27
                                        #   in Loop: Header=BB2_3 Depth=1
	fst.d	$fa0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB2_13
# %bb.8:                                # %_ZNK9benchmark5State10iterationsEv.exit25.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$a0, $s2
	.p2align	4, , 16
.LBB2_9:                                # %_ZNK9benchmark5State10iterationsEv.exit25
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB2_13
# %bb.10:                               # %_ZNK9benchmark5State10iterationsEv.exit23
                                        #   in Loop: Header=BB2_9 Depth=2
	st.d	$a1, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	fmov.d	$fa0, $fs0
	beqz	$a1, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
.LBB2_12:                               # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB2_9 Depth=2
	fld.d	$fa1, $sp, 16
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB2_9
	.p2align	4, , 16
.LBB2_13:                               # %_ZNK9benchmark5State10iterationsEv.exit25.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB2_19
# %bb.14:                               # %_ZNK9benchmark5State5rangeEm.exit30
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $a0, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs1
	fmul.d	$fa0, $fa0, $fs2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB2_20
# %bb.15:                               #   in Loop: Header=BB2_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB2_3
	b	.LBB2_17
.LBB2_16:                               #   in Loop: Header=BB2_3 Depth=1
	move	$a0, $zero
	b	.LBB2_5
.LBB2_17:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB2_19
# %bb.18:                               # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 56
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB2_19:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB2_20:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z17BM_Complexity_O_NRN9benchmark5StateE, .Lfunc_end2-_Z17BM_Complexity_O_NRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE
	.type	_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE,@function
_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE: # @_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB3_17
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB3_17
# %bb.2:
	addi.d	$s1, $sp, 16
	movgr2fr.d	$fs0, $zero
	addi.w	$s2, $zero, -1
	addi.d	$s3, $sp, 8
	lu12i.w	$a0, 414392
	ori	$a0, $a0, 766
	lu32i.d	$a0, 464199
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fs1, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 327680
	lu52i.d	$a0, $a0, 1028
	movgr2fr.d	$fs2, $a0
	lu12i.w	$a0, -97683
	ori	$a0, $a0, 1685
	lu32i.d	$a0, 77323
	lu52i.d	$a0, $a0, 993
	movgr2fr.d	$fs3, $a0
	.p2align	4, , 16
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB3_16
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
.LBB3_5:                                # %_ZNK9benchmark5State10iterationsEv.exit30
                                        #   in Loop: Header=BB3_3 Depth=1
	st.d	$a0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	fmov.d	$fa0, $fs0
	beqz	$a0, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB3_7:                                # %_ZNK9benchmark5State10iterationsEv.exit28
                                        #   in Loop: Header=BB3_3 Depth=1
	fst.d	$fa0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB3_13
# %bb.8:                                # %_ZNK9benchmark5State10iterationsEv.exit26.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	move	$a0, $s2
	.p2align	4, , 16
.LBB3_9:                                # %_ZNK9benchmark5State10iterationsEv.exit26
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB3_13
# %bb.10:                               # %_ZNK9benchmark5State10iterationsEv.exit24
                                        #   in Loop: Header=BB3_9 Depth=2
	st.d	$a1, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	fmov.d	$fa0, $fs0
	beqz	$a1, .LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_9 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
.LBB3_12:                               # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB3_9 Depth=2
	fld.d	$fa1, $sp, 16
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB3_9
	.p2align	4, , 16
.LBB3_13:                               # %_ZNK9benchmark5State10iterationsEv.exit26.thread
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB3_19
# %bb.14:                               # %_ZNK9benchmark5State5rangeEm.exit31
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $a0, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs4, $fa0, $fs1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs4
	fmul.d	$fa0, $fa0, $fs2
	fmul.d	$fa0, $fa0, $fs3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB3_20
# %bb.15:                               #   in Loop: Header=BB3_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB3_3
	b	.LBB3_17
.LBB3_16:                               #   in Loop: Header=BB3_3 Depth=1
	move	$a0, $zero
	b	.LBB3_5
.LBB3_17:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB3_19
# %bb.18:                               # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 56
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB3_19:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB3_20:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE, .Lfunc_end3-_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.hidden	_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi # -- Begin function _Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi
	.globl	_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi
	.p2align	5
	.type	_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi,@function
_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi: # @_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
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
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	.cfi_offset 58, -80
	move	$fp, $a0
	ld.w	$s2, $a0, 28
	ld.d	$s1, $a0, 16
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB4_17
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB4_17
# %bb.2:
	addi.d	$s2, $sp, 24
	movgr2fr.d	$fs0, $zero
	addi.w	$s3, $zero, -1
	addi.d	$s4, $sp, 16
	ori	$a0, $zero, 0
	lu32i.d	$a0, 327680
	lu52i.d	$a0, $a0, 1028
	movgr2fr.d	$fs1, $a0
	lu12i.w	$a0, -97683
	ori	$a0, $a0, 1685
	lu32i.d	$a0, 77323
	lu52i.d	$a0, $a0, 993
	movgr2fr.d	$fs2, $a0
	.p2align	4, , 16
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB4_16
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
.LBB4_5:                                # %_ZNK9benchmark5State10iterationsEv.exit29
                                        #   in Loop: Header=BB4_3 Depth=1
	st.d	$a0, $sp, 24
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	fmov.d	$fa0, $fs0
	beqz	$a0, .LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB4_7:                                # %_ZNK9benchmark5State10iterationsEv.exit27
                                        #   in Loop: Header=BB4_3 Depth=1
	fst.d	$fa0, $sp, 24
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB4_13
# %bb.8:                                # %_ZNK9benchmark5State10iterationsEv.exit25.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB4_9:                                # %_ZNK9benchmark5State10iterationsEv.exit25
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB4_13
# %bb.10:                               # %_ZNK9benchmark5State10iterationsEv.exit23
                                        #   in Loop: Header=BB4_9 Depth=2
	st.d	$a1, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	fmov.d	$fa0, $fs0
	beqz	$a1, .LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
.LBB4_12:                               # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB4_9 Depth=2
	fld.d	$fa1, $sp, 24
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 24
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB4_9
	.p2align	4, , 16
.LBB4_13:                               # %_ZNK9benchmark5State10iterationsEv.exit25.thread
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB4_18
# %bb.14:                               # %_ZNK9benchmark5State5rangeEm.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $a0, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs1
	fmul.d	$fa0, $fa0, $fs2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB4_19
# %bb.15:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s1, $s1, -1
	bnez	$s1, .LBB4_3
	b	.LBB4_17
.LBB4_16:                               #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $zero
	b	.LBB4_5
.LBB4_17:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 56
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB4_18:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB4_19:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi, .Lfunc_end4-_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi
	.cfi_endproc
                                        # -- End function
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_Z14RunOutputTestsiPPc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_08__invokeEl
	.type	_ZN3$_08__invokeEl,@function
_ZN3$_08__invokeEl:                     # @"_ZN3$_08__invokeEl"
# %bb.0:
	vldi	$vr0, -912
	ret
.Lfunc_end6:
	.size	_ZN3$_08__invokeEl, .Lfunc_end6-_ZN3$_08__invokeEl
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
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
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s4, $a0, 16
	st.d	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s2, $a1, .LBB7_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB7_2:                                # %._crit_edge.i.i
	beqz	$s2, .LBB7_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB7_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB7_6
.LBB7_5:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_6:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 32
	ld.d	$s2, $s0, 8
	ld.d	$s0, $s0, 0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 16
	bltu	$s2, $a0, .LBB7_9
# %bb.7:                                # %.noexc.i7
.Ltmp214:                               # EH_LABEL
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.8:                                # %.noexc8
	ld.d	$a1, $sp, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB7_9:                                # %._crit_edge.i.i6
	beqz	$s2, .LBB7_13
# %bb.10:                               # %._crit_edge.i.i6
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB7_12
# %bb.11:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s1, 0
	b	.LBB7_13
.LBB7_12:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_13:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB7_14:
.Ltmp216:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s4, .LBB7_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s4, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_, .Lfunc_end7-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"aG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp214-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp214
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin1         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp215           #   Call between .Ltmp215 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s4, $a0, 16
	st.d	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s2, $a1, .LBB8_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB8_2:                                # %._crit_edge.i.i
	beqz	$s2, .LBB8_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB8_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB8_6
.LBB8_5:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB8_6:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 32
	ld.d	$s2, $s0, 8
	ld.d	$s0, $s0, 0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 16
	bltu	$s2, $a0, .LBB8_9
# %bb.7:                                # %.noexc.i7
.Ltmp217:                               # EH_LABEL
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.8:                                # %.noexc8
	ld.d	$a1, $sp, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB8_9:                                # %._crit_edge.i.i6
	beqz	$s2, .LBB8_13
# %bb.10:                               # %._crit_edge.i.i6
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB8_12
# %bb.11:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s1, 0
	b	.LBB8_13
.LBB8_12:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB8_13:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB8_14:
.Ltmp219:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s4, .LBB8_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s4, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_, .Lfunc_end8-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"aG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp217-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp217
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin2         #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp218           #   Call between .Ltmp218 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
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
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s4, $a0, 16
	st.d	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s2, $a1, .LBB9_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB9_2:                                # %._crit_edge.i.i
	beqz	$s2, .LBB9_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB9_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB9_6
.LBB9_5:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_6:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 32
	ld.d	$s2, $s0, 8
	ld.d	$s0, $s0, 0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 16
	bltu	$s2, $a0, .LBB9_9
# %bb.7:                                # %.noexc.i7
.Ltmp220:                               # EH_LABEL
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
# %bb.8:                                # %.noexc8
	ld.d	$a1, $sp, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB9_9:                                # %._crit_edge.i.i6
	beqz	$s2, .LBB9_13
# %bb.10:                               # %._crit_edge.i.i6
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB9_12
# %bb.11:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s1, 0
	b	.LBB9_13
.LBB9_12:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_13:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB9_14:
.Ltmp222:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s4, .LBB9_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s4, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_, .Lfunc_end9-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"aG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp220-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp220
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin3         #     jumps to .Ltmp222
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp221           #   Call between .Ltmp221 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s4, $a0, 16
	st.d	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s2, $a1, .LBB10_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB10_2:                               # %._crit_edge.i.i
	beqz	$s2, .LBB10_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB10_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB10_6
.LBB10_5:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_6:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 16
	bltu	$s2, $a0, .LBB10_9
# %bb.7:                                # %.noexc.i7
.Ltmp223:                               # EH_LABEL
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp224:                               # EH_LABEL
# %bb.8:                                # %.noexc8
	ld.d	$a1, $sp, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB10_9:                               # %._crit_edge.i.i6
	beqz	$s2, .LBB10_13
# %bb.10:                               # %._crit_edge.i.i6
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB10_12
# %bb.11:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s1, 0
	b	.LBB10_13
.LBB10_12:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_13:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB10_14:
.Ltmp225:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s4, .LBB10_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s4, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_16:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_, .Lfunc_end10-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"aG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp223-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp223
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin4         #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp224          #   Call between .Ltmp224 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB11_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_2:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB11_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB11_4:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, .Lfunc_end11-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8TestCaseD2Ev,"axG",@progbits,_ZN8TestCaseD2Ev,comdat
	.hidden	_ZN8TestCaseD2Ev                # -- Begin function _ZN8TestCaseD2Ev
	.weak	_ZN8TestCaseD2Ev
	.p2align	5
	.type	_ZN8TestCaseD2Ev,@function
_ZN8TestCaseD2Ev:                       # @_ZN8TestCaseD2Ev
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
	ld.d	$s0, $a0, 80
	beqz	$s0, .LBB12_5
# %bb.1:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB12_3
# %bb.2:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB12_6
	b	.LBB12_7
.LBB12_3:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB12_10
# %bb.4:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB12_11
.LBB12_5:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	beq	$a0, $a1, .LBB12_7
.LBB12_6:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_7:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB12_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB12_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_10:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_5
.LBB12_11:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB12_6
	b	.LBB12_7
.Lfunc_end12:
	.size	_ZN8TestCaseD2Ev, .Lfunc_end12-_ZN8TestCaseD2Ev
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
.Lfunc_end13:
	.size	__clang_call_terminate, .Lfunc_end13-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,comdat
	.hidden	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.p2align	5
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a0, $a0, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB14_3
# %bb.1:
	ld.w	$a0, $fp, 12
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB14_4
.LBB14_2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.LBB14_3:
	addi.d	$a1, $fp, 12
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB14_2
.LBB14_4:                               # %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv, .Lfunc_end14-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN3$_18__invokeEl
	.type	_ZN3$_18__invokeEl,@function
_ZN3$_18__invokeEl:                     # @"_ZN3$_18__invokeEl"
# %bb.0:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ret
.Lfunc_end15:
	.size	_ZN3$_18__invokeEl, .Lfunc_end15-_ZN3$_18__invokeEl
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_28__invokeEl
	.type	_ZN3$_28__invokeEl,@function
_ZN3$_28__invokeEl:                     # @"_ZN3$_28__invokeEl"
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	lu12i.w	$a0, 414392
	ori	$a0, $a0, 766
	lu32i.d	$a0, 464199
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa1, $a0
	fmul.d	$fs0, $fa0, $fa1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end16:
	.size	_ZN3$_28__invokeEl, .Lfunc_end16-_ZN3$_28__invokeEl
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_38__invokeERN9benchmark5StateE
	.type	_ZN3$_38__invokeERN9benchmark5StateE,@function
_ZN3$_38__invokeERN9benchmark5StateE:   # @"_ZN3$_38__invokeERN9benchmark5StateE"
	.cfi_startproc
# %bb.0:
	ori	$a1, $zero, 100
	pcaddu18i	$t8, %call36(_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi)
	jr	$t8
.Lfunc_end17:
	.size	_ZN3$_38__invokeERN9benchmark5StateE, .Lfunc_end17-_ZN3$_38__invokeERN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _GLOBAL__sub_I_complexity_test.cc
.LCPI18_0:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI18_1:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.section	.text.startup,"ax",@progbits
	.p2align	5
	.type	_GLOBAL__sub_I_complexity_test.cc,@function
_GLOBAL__sub_I_complexity_test.cc:      # @_GLOBAL__sub_I_complexity_test.cc
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
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
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 88
.Ltmp226:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.1:                                # %.noexc.i
	ld.d	$a1, $sp, 88
	pcalau12i	$s3, %pc_hi20(.L.str)
	vld	$vr0, $s3, %pc_lo12(.L.str)
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp229:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s6, $a0, 16
	st.d	$s6, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z16BM_Complexity_O1RN9benchmark5StateE)
	addi.d	$s4, $a0, %pc_lo12(_Z16BM_Complexity_O1RN9benchmark5StateE)
	st.d	$s4, $s0, 224
.Ltmp231:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.3:
.Ltmp233:                               # EH_LABEL
	lu12i.w	$a2, 64
	ori	$a1, $zero, 1
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.4:
.Ltmp235:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.5:
.Ltmp237:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.6:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_8:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 88
.Ltmp240:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.9:                                # %.noexc.i4
	ld.d	$a1, $sp, 88
	vld	$vr0, $s3, %pc_lo12(.L.str)
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp243:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.10:
	st.d	$s6, $s0, 0
	st.d	$s4, $s0, 224
.Ltmp245:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.11:
.Ltmp247:                               # EH_LABEL
	lu12i.w	$a2, 64
	ori	$a1, $zero, 1
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.12:
.Ltmp249:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.13:
.Ltmp251:                               # EH_LABEL
	ori	$a1, $zero, 7
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.14:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_16:                              # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 88
.Ltmp254:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp255:                               # EH_LABEL
# %bb.17:                               # %.noexc.i10
	ld.d	$a1, $sp, 88
	vld	$vr0, $s3, %pc_lo12(.L.str)
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp257:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp258:                               # EH_LABEL
# %bb.18:
	st.d	$s6, $s0, 0
	st.d	$s4, $s0, 224
.Ltmp259:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.19:
.Ltmp261:                               # EH_LABEL
	lu12i.w	$a2, 64
	ori	$a1, $zero, 1
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.20:
.Ltmp263:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp264:                               # EH_LABEL
# %bb.21:
.Ltmp266:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZN3$_08__invokeEl)
	addi.d	$a1, $a1, %pc_lo12(_ZN3$_08__invokeEl)
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityEPFdlE)
	jirl	$ra, $ra, 0
.Ltmp267:                               # EH_LABEL
# %bb.22:
	move	$s0, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_24:                              # %__cxx_global_var_init.3.exit
	pcalau12i	$s3, %pc_hi20(one_test_name)
	ld.d	$fp, $s3, %pc_lo12(one_test_name)
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB18_467
# %bb.25:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB18_27
# %bb.26:                               # %.noexc.i.i
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB18_27:                              # %._crit_edge.i.i.i
	beqz	$s0, .LBB18_31
# %bb.28:                               # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_30
# %bb.29:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_31
.LBB18_30:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_31:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	pcalau12i	$s4, %pc_hi20(big_o_1_test_name)
	ld.d	$fp, $s4, %pc_lo12(big_o_1_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB18_472
# %bb.32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB18_35
# %bb.33:                               # %.noexc.i11.i
.Ltmp269:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp270:                               # EH_LABEL
# %bb.34:                               # %.noexc13.i
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB18_35:                              # %._crit_edge.i.i10.i
	beqz	$s0, .LBB18_39
# %bb.36:                               # %._crit_edge.i.i10.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_38
# %bb.37:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_39
.LBB18_38:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_39:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	pcalau12i	$s5, %pc_hi20(rms_o_1_test_name)
	ld.d	$fp, $s5, %pc_lo12(rms_o_1_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB18_474
# %bb.40:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB18_43
# %bb.41:                               # %.noexc.i16.i
.Ltmp271:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
# %bb.42:                               # %.noexc18.i
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB18_43:                              # %._crit_edge.i.i15.i
	beqz	$s0, .LBB18_47
# %bb.44:                               # %._crit_edge.i.i15.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_46
# %bb.45:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_47
.LBB18_46:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_47:
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$s6, %pc_hi20(enum_auto_big_o_1)
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_1)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB18_476
# %bb.48:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB18_51
# %bb.49:                               # %.noexc.i21.i
.Ltmp273:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.50:                               # %.noexc23.i
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB18_51:                              # %._crit_edge.i.i20.i
	beqz	$s0, .LBB18_55
# %bb.52:                               # %._crit_edge.i.i20.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_54
# %bb.53:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_55
.LBB18_54:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_55:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp275:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp276:                               # EH_LABEL
# %bb.56:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB18_58
# %bb.57:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_58:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB18_60
# %bb.59:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_60:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB18_62
# %bb.61:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_62:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_64
# %bb.63:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_64:                              # %__cxx_global_var_init.9.exit
	ld.d	$fp, $s3, %pc_lo12(one_test_name)
	pcalau12i	$a0, %pc_hi20(dummy105)
	st.w	$zero, $a0, %pc_lo12(dummy105)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB18_467
# %bb.65:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB18_67
# %bb.66:                               # %.noexc.i.i56
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB18_67:                              # %._crit_edge.i.i.i17
	beqz	$s0, .LBB18_71
# %bb.68:                               # %._crit_edge.i.i.i17
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_70
# %bb.69:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_71
.LBB18_70:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_71:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_1_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB18_478
# %bb.72:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB18_75
# %bb.73:                               # %.noexc.i11.i53
.Ltmp278:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp279:                               # EH_LABEL
# %bb.74:                               # %.noexc13.i54
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB18_75:                              # %._crit_edge.i.i10.i18
	beqz	$s0, .LBB18_79
# %bb.76:                               # %._crit_edge.i.i10.i18
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_78
# %bb.77:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_79
.LBB18_78:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_79:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_1_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB18_480
# %bb.80:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB18_83
# %bb.81:                               # %.noexc.i16.i50
.Ltmp280:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.82:                               # %.noexc18.i51
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB18_83:                              # %._crit_edge.i.i15.i19
	beqz	$s0, .LBB18_87
# %bb.84:                               # %._crit_edge.i.i15.i19
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_86
# %bb.85:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_87
.LBB18_86:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_87:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_1)
	addi.d	$s6, $sp, 32
	st.d	$s6, $sp, 16
	beqz	$fp, .LBB18_482
# %bb.88:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s6
	bltu	$s0, $a1, .LBB18_91
# %bb.89:                               # %.noexc.i21.i47
.Ltmp282:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.90:                               # %.noexc23.i48
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB18_91:                              # %._crit_edge.i.i20.i20
	beqz	$s0, .LBB18_95
# %bb.92:                               # %._crit_edge.i.i20.i20
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_94
# %bb.93:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_95
.LBB18_94:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_95:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp284:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 1
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.96:
	ld.d	$a0, $sp, 16
	beq	$a0, $s6, .LBB18_98
# %bb.97:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_98:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i37
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB18_100
# %bb.99:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i38
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_100:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i39
	ld.d	$a0, $sp, 88
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $s7, .LBB18_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i40
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_102:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i41
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_104
# %bb.103:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i42
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_104:                             # %__cxx_global_var_init.10.exit
	ld.d	$fp, $s3, %pc_lo12(one_test_name)
	pcalau12i	$a0, %pc_hi20(dummy109)
	st.w	$zero, $a0, %pc_lo12(dummy109)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB18_467
# %bb.105:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB18_107
# %bb.106:                              # %.noexc.i.i97
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB18_107:                             # %._crit_edge.i.i.i58
	beqz	$s0, .LBB18_111
# %bb.108:                              # %._crit_edge.i.i.i58
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_110
# %bb.109:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_111
.LBB18_110:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_111:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_1_test_name)
	addi.d	$s3, $sp, 104
	st.d	$s3, $sp, 88
	beqz	$fp, .LBB18_484
# %bb.112:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s3
	bltu	$s0, $a1, .LBB18_115
# %bb.113:                              # %.noexc.i11.i94
.Ltmp287:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
# %bb.114:                              # %.noexc13.i95
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB18_115:                             # %._crit_edge.i.i10.i59
	beqz	$s0, .LBB18_119
# %bb.116:                              # %._crit_edge.i.i10.i59
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_118
# %bb.117:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_119
.LBB18_118:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_119:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_1_test_name)
	addi.d	$s4, $sp, 72
	st.d	$s4, $sp, 56
	beqz	$fp, .LBB18_486
# %bb.120:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s0, $a1, .LBB18_123
# %bb.121:                              # %.noexc.i16.i91
.Ltmp289:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.122:                              # %.noexc18.i92
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB18_123:                             # %._crit_edge.i.i15.i60
	beqz	$s0, .LBB18_127
# %bb.124:                              # %._crit_edge.i.i15.i60
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_126
# %bb.125:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_127
.LBB18_126:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_127:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %pc_hi20(lambda_big_o_1)
	ld.d	$fp, $a0, %pc_lo12(lambda_big_o_1)
	addi.d	$s5, $sp, 32
	st.d	$s5, $sp, 16
	beqz	$fp, .LBB18_488
# %bb.128:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s5
	bltu	$s0, $a1, .LBB18_131
# %bb.129:                              # %.noexc.i21.i88
.Ltmp291:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp292:                               # EH_LABEL
# %bb.130:                              # %.noexc23.i89
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB18_131:                             # %._crit_edge.i.i20.i61
	beqz	$s0, .LBB18_135
# %bb.132:                              # %._crit_edge.i.i20.i61
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_134
# %bb.133:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_135
.LBB18_134:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_135:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp293:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 2
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.136:
	ld.d	$a0, $sp, 16
	beq	$a0, $s5, .LBB18_138
# %bb.137:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_138:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
	ld.d	$a0, $sp, 56
	beq	$a0, $s4, .LBB18_140
# %bb.139:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i79
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_140:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i80
	ld.d	$a0, $sp, 88
	beq	$a0, $s3, .LBB18_142
# %bb.141:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i81
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_142:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i82
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_144
# %bb.143:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i83
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_144:                             # %__cxx_global_var_init.11.exit
	pcalau12i	$a0, %pc_hi20(dummy113)
	st.w	$zero, $a0, %pc_lo12(dummy113)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 88
.Ltmp296:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.145:                              # %.noexc.i103
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$s4, $a2, %pc_lo12(.L.str.13)
	vld	$vr0, $s4, 0
	ld.b	$s3, $s4, 16
	vst	$vr0, $a0, 0
	st.b	$s3, $a0, 16
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp299:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp300:                               # EH_LABEL
# %bb.146:
	st.d	$s6, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z17BM_Complexity_O_NRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_Z17BM_Complexity_O_NRN9benchmark5StateE)
	st.d	$s5, $s0, 224
.Ltmp301:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.147:
.Ltmp303:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
# %bb.148:
.Ltmp305:                               # EH_LABEL
	lu12i.w	$a2, 256
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp306:                               # EH_LABEL
# %bb.149:
.Ltmp307:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp308:                               # EH_LABEL
# %bb.150:
.Ltmp309:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.151:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_153
# %bb.152:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_153:                             # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 88
.Ltmp312:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp313:                               # EH_LABEL
# %bb.154:                              # %.noexc.i114
	ld.d	$a1, $sp, 88
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.b	$s3, $a0, 16
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp315:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.155:
	st.d	$s6, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp317:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.156:
.Ltmp319:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.157:
.Ltmp321:                               # EH_LABEL
	lu12i.w	$a2, 256
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.158:
.Ltmp323:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp324:                               # EH_LABEL
# %bb.159:
.Ltmp325:                               # EH_LABEL
	ori	$a1, $zero, 7
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.160:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_162
# %bb.161:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_162:                             # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 88
.Ltmp328:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.163:                              # %.noexc.i125
	ld.d	$a1, $sp, 88
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.b	$s3, $a0, 16
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp331:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.164:
	st.d	$s6, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp333:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.165:
.Ltmp335:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.166:
.Ltmp337:                               # EH_LABEL
	lu12i.w	$a2, 256
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.167:
.Ltmp339:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.168:
.Ltmp342:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZN3$_18__invokeEl)
	addi.d	$a1, $a1, %pc_lo12(_ZN3$_18__invokeEl)
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityEPFdlE)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
# %bb.169:
	move	$s0, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_171
# %bb.170:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_171:                             # %__cxx_global_var_init.15.exit
	pcalau12i	$s3, %pc_hi20(n_test_name)
	ld.d	$fp, $s3, %pc_lo12(n_test_name)
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB18_467
# %bb.172:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB18_174
# %bb.173:                              # %.noexc.i.i174
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB18_174:                             # %._crit_edge.i.i.i135
	beqz	$s0, .LBB18_178
# %bb.175:                              # %._crit_edge.i.i.i135
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_177
# %bb.176:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_178
.LBB18_177:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_178:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	pcalau12i	$s4, %pc_hi20(big_o_n_test_name)
	ld.d	$fp, $s4, %pc_lo12(big_o_n_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB18_490
# %bb.179:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB18_182
# %bb.180:                              # %.noexc.i11.i171
.Ltmp345:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.181:                              # %.noexc13.i172
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB18_182:                             # %._crit_edge.i.i10.i136
	beqz	$s0, .LBB18_186
# %bb.183:                              # %._crit_edge.i.i10.i136
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_185
# %bb.184:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_186
.LBB18_185:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_186:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	pcalau12i	$s5, %pc_hi20(rms_o_n_test_name)
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB18_492
# %bb.187:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB18_190
# %bb.188:                              # %.noexc.i16.i168
.Ltmp347:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.189:                              # %.noexc18.i169
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB18_190:                             # %._crit_edge.i.i15.i137
	beqz	$s0, .LBB18_194
# %bb.191:                              # %._crit_edge.i.i15.i137
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_193
# %bb.192:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_194
.LBB18_193:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_194:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$s6, %pc_hi20(enum_auto_big_o_n)
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB18_494
# %bb.195:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB18_198
# %bb.196:                              # %.noexc.i21.i165
.Ltmp349:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.197:                              # %.noexc23.i166
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB18_198:                             # %._crit_edge.i.i20.i138
	beqz	$s0, .LBB18_202
# %bb.199:                              # %._crit_edge.i.i20.i138
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_201
# %bb.200:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_202
.LBB18_201:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_202:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp351:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 3
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.203:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB18_205
# %bb.204:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_205:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i155
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB18_207
# %bb.206:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i156
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_207:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i157
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB18_209
# %bb.208:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i158
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_209:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i159
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_211
# %bb.210:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i160
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_211:                             # %__cxx_global_var_init.20.exit
	ld.d	$fp, $s3, %pc_lo12(n_test_name)
	pcalau12i	$a0, %pc_hi20(dummy162)
	st.w	$zero, $a0, %pc_lo12(dummy162)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB18_467
# %bb.212:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB18_214
# %bb.213:                              # %.noexc.i.i215
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB18_214:                             # %._crit_edge.i.i.i176
	beqz	$s0, .LBB18_218
# %bb.215:                              # %._crit_edge.i.i.i176
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_217
# %bb.216:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_218
.LBB18_217:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_218:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_n_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB18_496
# %bb.219:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB18_222
# %bb.220:                              # %.noexc.i11.i212
.Ltmp354:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.221:                              # %.noexc13.i213
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB18_222:                             # %._crit_edge.i.i10.i177
	beqz	$s0, .LBB18_226
# %bb.223:                              # %._crit_edge.i.i10.i177
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_225
# %bb.224:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_226
.LBB18_225:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_226:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB18_498
# %bb.227:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB18_230
# %bb.228:                              # %.noexc.i16.i209
.Ltmp356:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp357:                               # EH_LABEL
# %bb.229:                              # %.noexc18.i210
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB18_230:                             # %._crit_edge.i.i15.i178
	beqz	$s0, .LBB18_234
# %bb.231:                              # %._crit_edge.i.i15.i178
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_233
# %bb.232:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_234
.LBB18_233:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_234:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB18_500
# %bb.235:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	bltu	$s0, $a1, .LBB18_238
# %bb.236:                              # %.noexc.i21.i206
.Ltmp358:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp359:                               # EH_LABEL
# %bb.237:                              # %.noexc23.i207
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB18_238:                             # %._crit_edge.i.i20.i179
	beqz	$s0, .LBB18_242
# %bb.239:                              # %._crit_edge.i.i20.i179
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_241
# %bb.240:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_242
.LBB18_241:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_242:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp360:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 4
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp361:                               # EH_LABEL
# %bb.243:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB18_245
# %bb.244:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i195
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_245:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i196
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB18_247
# %bb.246:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i197
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_247:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i198
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB18_249
# %bb.248:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i199
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_249:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i200
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_251
# %bb.250:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i201
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_251:                             # %__cxx_global_var_init.21.exit
	ld.d	$fp, $s3, %pc_lo12(n_test_name)
	pcalau12i	$a0, %pc_hi20(dummy166)
	st.w	$zero, $a0, %pc_lo12(dummy166)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB18_467
# %bb.252:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB18_254
# %bb.253:                              # %.noexc.i.i256
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB18_254:                             # %._crit_edge.i.i.i217
	beqz	$s0, .LBB18_258
# %bb.255:                              # %._crit_edge.i.i.i217
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_257
# %bb.256:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_258
.LBB18_257:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_258:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_n_test_name)
	addi.d	$s3, $sp, 104
	st.d	$s3, $sp, 88
	beqz	$fp, .LBB18_502
# %bb.259:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s3
	bltu	$s0, $a1, .LBB18_262
# %bb.260:                              # %.noexc.i11.i253
.Ltmp363:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
# %bb.261:                              # %.noexc13.i254
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB18_262:                             # %._crit_edge.i.i10.i218
	beqz	$s0, .LBB18_266
# %bb.263:                              # %._crit_edge.i.i10.i218
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_265
# %bb.264:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_266
.LBB18_265:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_266:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_test_name)
	addi.d	$s4, $sp, 72
	st.d	$s4, $sp, 56
	beqz	$fp, .LBB18_504
# %bb.267:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s0, $a1, .LBB18_270
# %bb.268:                              # %.noexc.i16.i250
.Ltmp365:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.269:                              # %.noexc18.i251
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB18_270:                             # %._crit_edge.i.i15.i219
	beqz	$s0, .LBB18_274
# %bb.271:                              # %._crit_edge.i.i15.i219
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_273
# %bb.272:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_274
.LBB18_273:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_274:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %pc_hi20(lambda_big_o_n)
	ld.d	$fp, $a0, %pc_lo12(lambda_big_o_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB18_506
# %bb.275:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB18_278
# %bb.276:                              # %.noexc.i21.i247
.Ltmp367:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.277:                              # %.noexc23.i248
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB18_278:                             # %._crit_edge.i.i20.i220
	beqz	$s0, .LBB18_282
# %bb.279:                              # %._crit_edge.i.i20.i220
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_281
# %bb.280:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_282
.LBB18_281:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_282:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp369:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.283:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB18_285
# %bb.284:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i236
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_285:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i237
	ld.d	$a0, $sp, 56
	beq	$a0, $s4, .LBB18_287
# %bb.286:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i238
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_287:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i239
	ld.d	$a0, $sp, 88
	beq	$a0, $s3, .LBB18_289
# %bb.288:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i240
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_289:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i241
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_291
# %bb.290:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i242
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_291:                             # %__cxx_global_var_init.22.exit
	pcalau12i	$a0, %pc_hi20(dummy170)
	st.w	$zero, $a0, %pc_lo12(dummy170)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 88
.Ltmp372:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp373:                               # EH_LABEL
# %bb.292:                              # %.noexc.i262
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	pcalau12i	$a2, %pc_hi20(.L.str.24)
	addi.d	$s4, $a2, %pc_lo12(.L.str.24)
	vld	$vr0, $s4, 0
	ld.d	$s3, $s4, 15
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 15
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp375:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.293:
	st.d	$s6, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE)
	st.d	$s5, $s0, 224
.Ltmp377:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.294:
.Ltmp379:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.295:
.Ltmp381:                               # EH_LABEL
	lu12i.w	$a2, 4096
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.296:
.Ltmp383:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp384:                               # EH_LABEL
# %bb.297:
.Ltmp385:                               # EH_LABEL
	ori	$a1, $zero, 6
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.298:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_300
# %bb.299:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_300:                             # %__cxx_global_var_init.23.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_8_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 88
.Ltmp388:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp389:                               # EH_LABEL
# %bb.301:                              # %.noexc.i273
	ld.d	$a1, $sp, 88
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 15
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp391:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.302:
	st.d	$s6, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp393:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp394:                               # EH_LABEL
# %bb.303:
.Ltmp395:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp396:                               # EH_LABEL
# %bb.304:
.Ltmp397:                               # EH_LABEL
	lu12i.w	$a2, 4096
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.305:
.Ltmp399:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp400:                               # EH_LABEL
# %bb.306:
.Ltmp401:                               # EH_LABEL
	ori	$a1, $zero, 7
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp402:                               # EH_LABEL
# %bb.307:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_309
# %bb.308:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i277
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_309:                             # %__cxx_global_var_init.25.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_9_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_9_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 88
.Ltmp404:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp405:                               # EH_LABEL
# %bb.310:                              # %.noexc.i284
	ld.d	$a1, $sp, 88
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 15
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp407:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp408:                               # EH_LABEL
# %bb.311:
	st.d	$s6, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp409:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
# %bb.312:
.Ltmp411:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.313:
.Ltmp413:                               # EH_LABEL
	lu12i.w	$a2, 4096
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp414:                               # EH_LABEL
# %bb.314:
.Ltmp415:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp416:                               # EH_LABEL
# %bb.315:
.Ltmp418:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZN3$_28__invokeEl)
	addi.d	$a1, $a1, %pc_lo12(_ZN3$_28__invokeEl)
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityEPFdlE)
	jirl	$ra, $ra, 0
.Ltmp419:                               # EH_LABEL
# %bb.316:
	move	$s0, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_318
# %bb.317:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i291
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_318:                             # %__cxx_global_var_init.26.exit
	pcalau12i	$s3, %pc_hi20(n_lg_n_test_name)
	ld.d	$fp, $s3, %pc_lo12(n_lg_n_test_name)
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_10_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_10_benchmark_)
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB18_467
# %bb.319:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB18_321
# %bb.320:                              # %.noexc.i.i333
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB18_321:                             # %._crit_edge.i.i.i294
	beqz	$s0, .LBB18_325
# %bb.322:                              # %._crit_edge.i.i.i294
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_324
# %bb.323:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_325
.LBB18_324:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_325:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	pcalau12i	$s4, %pc_hi20(big_o_n_lg_n_test_name)
	ld.d	$fp, $s4, %pc_lo12(big_o_n_lg_n_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB18_508
# %bb.326:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB18_329
# %bb.327:                              # %.noexc.i11.i330
.Ltmp421:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp422:                               # EH_LABEL
# %bb.328:                              # %.noexc13.i331
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB18_329:                             # %._crit_edge.i.i10.i295
	beqz	$s0, .LBB18_333
# %bb.330:                              # %._crit_edge.i.i10.i295
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_332
# %bb.331:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_333
.LBB18_332:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_333:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	pcalau12i	$s5, %pc_hi20(rms_o_n_lg_n_test_name)
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_lg_n_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB18_510
# %bb.334:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB18_337
# %bb.335:                              # %.noexc.i16.i327
.Ltmp423:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp424:                               # EH_LABEL
# %bb.336:                              # %.noexc18.i328
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB18_337:                             # %._crit_edge.i.i15.i296
	beqz	$s0, .LBB18_341
# %bb.338:                              # %._crit_edge.i.i15.i296
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_340
# %bb.339:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_341
.LBB18_340:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_341:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$s6, %pc_hi20(enum_auto_big_o_n_lg_n)
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_n_lg_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB18_512
# %bb.342:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB18_345
# %bb.343:                              # %.noexc.i21.i324
.Ltmp425:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp426:                               # EH_LABEL
# %bb.344:                              # %.noexc23.i325
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB18_345:                             # %._crit_edge.i.i20.i297
	beqz	$s0, .LBB18_349
# %bb.346:                              # %._crit_edge.i.i20.i297
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_348
# %bb.347:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_349
.LBB18_348:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_349:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp427:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 6
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp428:                               # EH_LABEL
# %bb.350:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB18_352
# %bb.351:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_352:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i314
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB18_354
# %bb.353:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i315
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_354:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i316
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB18_356
# %bb.355:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i317
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_356:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i318
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_358
# %bb.357:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i319
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_358:                             # %__cxx_global_var_init.31.exit
	ld.d	$fp, $s3, %pc_lo12(n_lg_n_test_name)
	pcalau12i	$a0, %pc_hi20(dummy221)
	st.w	$zero, $a0, %pc_lo12(dummy221)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB18_467
# %bb.359:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB18_361
# %bb.360:                              # %.noexc.i.i374
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB18_361:                             # %._crit_edge.i.i.i335
	beqz	$s0, .LBB18_365
# %bb.362:                              # %._crit_edge.i.i.i335
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_364
# %bb.363:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_365
.LBB18_364:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_365:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_n_lg_n_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB18_514
# %bb.366:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB18_369
# %bb.367:                              # %.noexc.i11.i371
.Ltmp430:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
# %bb.368:                              # %.noexc13.i372
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB18_369:                             # %._crit_edge.i.i10.i336
	beqz	$s0, .LBB18_373
# %bb.370:                              # %._crit_edge.i.i10.i336
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_372
# %bb.371:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_373
.LBB18_372:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_373:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_lg_n_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB18_516
# %bb.374:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB18_377
# %bb.375:                              # %.noexc.i16.i368
.Ltmp432:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp433:                               # EH_LABEL
# %bb.376:                              # %.noexc18.i369
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB18_377:                             # %._crit_edge.i.i15.i337
	beqz	$s0, .LBB18_381
# %bb.378:                              # %._crit_edge.i.i15.i337
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_380
# %bb.379:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_381
.LBB18_380:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_381:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_n_lg_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB18_518
# %bb.382:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	bltu	$s0, $a1, .LBB18_385
# %bb.383:                              # %.noexc.i21.i365
.Ltmp434:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp435:                               # EH_LABEL
# %bb.384:                              # %.noexc23.i366
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB18_385:                             # %._crit_edge.i.i20.i338
	beqz	$s0, .LBB18_389
# %bb.386:                              # %._crit_edge.i.i20.i338
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_388
# %bb.387:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_389
.LBB18_388:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_389:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp436:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 7
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp437:                               # EH_LABEL
# %bb.390:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB18_392
# %bb.391:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i354
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_392:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i355
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB18_394
# %bb.393:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i356
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_394:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i357
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB18_396
# %bb.395:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i358
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_396:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i359
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_398
# %bb.397:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i360
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_398:                             # %__cxx_global_var_init.32.exit
	ld.d	$fp, $s3, %pc_lo12(n_lg_n_test_name)
	pcalau12i	$a0, %pc_hi20(dummy226)
	st.w	$zero, $a0, %pc_lo12(dummy226)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB18_467
# %bb.399:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB18_401
# %bb.400:                              # %.noexc.i.i415
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB18_401:                             # %._crit_edge.i.i.i376
	beqz	$s0, .LBB18_405
# %bb.402:                              # %._crit_edge.i.i.i376
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_404
# %bb.403:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_405
.LBB18_404:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_405:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_n_lg_n_test_name)
	addi.d	$s3, $sp, 104
	st.d	$s3, $sp, 88
	beqz	$fp, .LBB18_520
# %bb.406:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s3
	bltu	$s0, $a1, .LBB18_409
# %bb.407:                              # %.noexc.i11.i412
.Ltmp439:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp440:                               # EH_LABEL
# %bb.408:                              # %.noexc13.i413
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB18_409:                             # %._crit_edge.i.i10.i377
	beqz	$s0, .LBB18_413
# %bb.410:                              # %._crit_edge.i.i10.i377
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_412
# %bb.411:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_413
.LBB18_412:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_413:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_lg_n_test_name)
	addi.d	$s4, $sp, 72
	st.d	$s4, $sp, 56
	beqz	$fp, .LBB18_522
# %bb.414:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s0, $a1, .LBB18_417
# %bb.415:                              # %.noexc.i16.i409
.Ltmp441:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp442:                               # EH_LABEL
# %bb.416:                              # %.noexc18.i410
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB18_417:                             # %._crit_edge.i.i15.i378
	beqz	$s0, .LBB18_421
# %bb.418:                              # %._crit_edge.i.i15.i378
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_420
# %bb.419:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_421
.LBB18_420:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_421:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %pc_hi20(lambda_big_o_n_lg_n)
	ld.d	$fp, $a0, %pc_lo12(lambda_big_o_n_lg_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB18_524
# %bb.422:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB18_425
# %bb.423:                              # %.noexc.i21.i406
.Ltmp443:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp444:                               # EH_LABEL
# %bb.424:                              # %.noexc23.i407
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB18_425:                             # %._crit_edge.i.i20.i379
	beqz	$s0, .LBB18_429
# %bb.426:                              # %._crit_edge.i.i20.i379
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB18_428
# %bb.427:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB18_429
.LBB18_428:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_429:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp445:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 8
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp446:                               # EH_LABEL
# %bb.430:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB18_432
# %bb.431:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i395
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_432:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i396
	ld.d	$a0, $sp, 56
	beq	$a0, $s4, .LBB18_434
# %bb.433:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i397
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_434:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i398
	ld.d	$a0, $sp, 88
	beq	$a0, $s3, .LBB18_436
# %bb.435:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i399
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_436:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i400
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_438
# %bb.437:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i401
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_438:                             # %__cxx_global_var_init.33.exit
	pcalau12i	$a0, %pc_hi20(dummy231)
	st.w	$zero, $a0, %pc_lo12(dummy231)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 37
	st.d	$a0, $sp, 88
.Ltmp448:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp449:                               # EH_LABEL
# %bb.439:                              # %.noexc.i418
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a2, $a2, %pc_lo12(.L.str.35)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 29
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 29
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp451:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp452:                               # EH_LABEL
# %bb.440:
	st.d	$s6, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZN3$_38__invokeERN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN3$_38__invokeERN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp453:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.441:
.Ltmp455:                               # EH_LABEL
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp456:                               # EH_LABEL
# %bb.442:
.Ltmp457:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp458:                               # EH_LABEL
# %bb.443:
.Ltmp460:                               # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp461:                               # EH_LABEL
# %bb.444:
	st.d	$a0, $sp, 88
	pcalau12i	$a1, %pc_hi20(.LCPI18_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI18_0)
	pcalau12i	$a1, %pc_hi20(.LCPI18_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI18_1)
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 104
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 96
.Ltmp463:                               # EH_LABEL
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp464:                               # EH_LABEL
# %bb.445:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB18_447
# %bb.446:
	ld.d	$a1, $sp, 104
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_447:                             # %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_449
# %bb.448:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i421
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_449:                             # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_11_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_11_benchmark_)
	pcalau12i	$a0, %pc_hi20(_ZL23complexity_capture_nameB5cxx11)
	addi.d	$fp, $a0, %pc_lo12(_ZL23complexity_capture_nameB5cxx11)
	addi.d	$a0, $fp, 16
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 49
	st.d	$a0, $sp, 120
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 32
	ld.b	$a2, $a2, 48
	vst	$vr0, $a0, 32
	st.b	$a2, $a0, 48
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ld.d	$s1, $fp, 8
	st.d	$s2, $sp, 120
	st.d	$zero, $sp, 128
	st.b	$zero, $sp, 136
	addi.d	$a1, $s1, 5
.Ltmp466:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp467:                               # EH_LABEL
# %bb.450:
	ld.d	$a0, $sp, 128
	addi.w	$s3, $zero, -1
	lu52i.d	$s4, $s3, 1023
	sub.d	$a0, $s4, $a0
	bltu	$a0, $s1, .LBB18_468
# %bb.451:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
.Ltmp468:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.452:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
	ld.d	$a0, $sp, 128
	ori	$a1, $zero, 5
	lu52i.d	$a1, $a1, -1024
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	bgeu	$a1, $a0, .LBB18_468
# %bb.453:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
.Ltmp470:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	addi.d	$a0, $sp, 120
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
# %bb.454:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
	ld.d	$s0, $fp, 0
	ld.d	$fp, $fp, 8
	addi.d	$s1, $sp, 104
	st.d	$s1, $sp, 88
	st.d	$zero, $sp, 96
	st.b	$zero, $sp, 104
	addi.d	$a1, $fp, 4
.Ltmp472:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp473:                               # EH_LABEL
# %bb.455:
	ld.d	$a0, $sp, 96
	sub.d	$a0, $s4, $a0
	bltu	$a0, $fp, .LBB18_470
# %bb.456:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i8.i
.Ltmp474:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp475:                               # EH_LABEL
# %bb.457:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i9.i
	ld.d	$a0, $sp, 96
	srli.d	$a0, $a0, 2
	lu52i.d	$a1, $s3, 255
	beq	$a0, $a1, .LBB18_470
# %bb.458:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i10.i
.Ltmp476:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp477:                               # EH_LABEL
# %bb.459:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit13.i
	addi.d	$s0, $sp, 72
	st.d	$s0, $sp, 56
	ori	$a0, $zero, 78
	st.h	$a0, $sp, 72
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 64
.Ltmp478:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZL23complexity_capture_nameB5cxx11)
	addi.d	$a0, $a0, %pc_lo12(_ZL23complexity_capture_nameB5cxx11)
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 56
	ori	$a4, $zero, 9
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp479:                               # EH_LABEL
# %bb.460:
	ld.d	$a0, $sp, 56
	beq	$a0, $s0, .LBB18_462
# %bb.461:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i426
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_462:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i427
	ld.d	$a0, $sp, 88
	beq	$a0, $s1, .LBB18_464
# %bb.463:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_464:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_466
# %bb.465:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_466:                             # %__cxx_global_var_init.38.exit
	pcalau12i	$a0, %pc_hi20(dummy264)
	st.w	$zero, $a0, %pc_lo12(dummy264)
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB18_467:                             # %.noexc.i16
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB18_468:                             # %.invoke.i.i.i
.Ltmp484:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp485:                               # EH_LABEL
# %bb.469:                              # %.cont.i.i.i
.LBB18_470:                             # %.invoke.i.i11.i
.Ltmp481:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp482:                               # EH_LABEL
# %bb.471:                              # %.cont.i.i12.i
.LBB18_472:
.Ltmp565:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp566:                               # EH_LABEL
# %bb.473:                              # %.noexc12.i
.LBB18_474:
.Ltmp562:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp563:                               # EH_LABEL
# %bb.475:                              # %.noexc17.i
.LBB18_476:
.Ltmp559:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp560:                               # EH_LABEL
# %bb.477:                              # %.noexc22.i
.LBB18_478:
.Ltmp556:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp557:                               # EH_LABEL
# %bb.479:                              # %.noexc12.i55
.LBB18_480:
.Ltmp553:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp554:                               # EH_LABEL
# %bb.481:                              # %.noexc17.i52
.LBB18_482:
.Ltmp550:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp551:                               # EH_LABEL
# %bb.483:                              # %.noexc22.i49
.LBB18_484:
.Ltmp547:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp548:                               # EH_LABEL
# %bb.485:                              # %.noexc12.i96
.LBB18_486:
.Ltmp544:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp545:                               # EH_LABEL
# %bb.487:                              # %.noexc17.i93
.LBB18_488:
.Ltmp541:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp542:                               # EH_LABEL
# %bb.489:                              # %.noexc22.i90
.LBB18_490:
.Ltmp538:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp539:                               # EH_LABEL
# %bb.491:                              # %.noexc12.i173
.LBB18_492:
.Ltmp535:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp536:                               # EH_LABEL
# %bb.493:                              # %.noexc17.i170
.LBB18_494:
.Ltmp532:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp533:                               # EH_LABEL
# %bb.495:                              # %.noexc22.i167
.LBB18_496:
.Ltmp529:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp530:                               # EH_LABEL
# %bb.497:                              # %.noexc12.i214
.LBB18_498:
.Ltmp526:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp527:                               # EH_LABEL
# %bb.499:                              # %.noexc17.i211
.LBB18_500:
.Ltmp523:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp524:                               # EH_LABEL
# %bb.501:                              # %.noexc22.i208
.LBB18_502:
.Ltmp520:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp521:                               # EH_LABEL
# %bb.503:                              # %.noexc12.i255
.LBB18_504:
.Ltmp517:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp518:                               # EH_LABEL
# %bb.505:                              # %.noexc17.i252
.LBB18_506:
.Ltmp514:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp515:                               # EH_LABEL
# %bb.507:                              # %.noexc22.i249
.LBB18_508:
.Ltmp511:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp512:                               # EH_LABEL
# %bb.509:                              # %.noexc12.i332
.LBB18_510:
.Ltmp508:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp509:                               # EH_LABEL
# %bb.511:                              # %.noexc17.i329
.LBB18_512:
.Ltmp505:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp506:                               # EH_LABEL
# %bb.513:                              # %.noexc22.i326
.LBB18_514:
.Ltmp502:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp503:                               # EH_LABEL
# %bb.515:                              # %.noexc12.i373
.LBB18_516:
.Ltmp499:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp500:                               # EH_LABEL
# %bb.517:                              # %.noexc17.i370
.LBB18_518:
.Ltmp496:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp497:                               # EH_LABEL
# %bb.519:                              # %.noexc22.i367
.LBB18_520:
.Ltmp493:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp494:                               # EH_LABEL
# %bb.521:                              # %.noexc12.i414
.LBB18_522:
.Ltmp490:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp491:                               # EH_LABEL
# %bb.523:                              # %.noexc17.i411
.LBB18_524:
.Ltmp487:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp488:                               # EH_LABEL
# %bb.525:                              # %.noexc22.i408
.LBB18_526:
.Ltmp480:                               # EH_LABEL
	ld.d	$a2, $sp, 56
	move	$fp, $a0
	beq	$a2, $s0, .LBB18_528
# %bb.527:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i
	ld.d	$a0, $sp, 72
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_528:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i
	ld.d	$a0, $sp, 88
	bne	$a0, $s1, .LBB18_592
	b	.LBB18_594
.LBB18_529:
.Ltmp465:                               # EH_LABEL
	ld.d	$a2, $sp, 88
	move	$fp, $a0
	beqz	$a2, .LBB18_594
# %bb.530:
	ld.d	$a0, $sp, 104
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	b	.LBB18_593
.LBB18_531:
.Ltmp462:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_532:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread.i
.Ltmp450:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_533:
.Ltmp447:                               # EH_LABEL
	b	.LBB18_541
.LBB18_534:
.Ltmp438:                               # EH_LABEL
	b	.LBB18_552
.LBB18_535:
.Ltmp429:                               # EH_LABEL
	b	.LBB18_552
.LBB18_536:                             # %.thread.i288
.Ltmp420:                               # EH_LABEL
	b	.LBB18_603
.LBB18_537:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread.i281
.Ltmp406:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_538:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i270
.Ltmp390:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_539:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i259
.Ltmp374:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_540:
.Ltmp371:                               # EH_LABEL
.LBB18_541:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s1, .LBB18_549
	b	.LBB18_578
.LBB18_542:
.Ltmp362:                               # EH_LABEL
	b	.LBB18_552
.LBB18_543:
.Ltmp353:                               # EH_LABEL
	b	.LBB18_552
.LBB18_544:                             # %.thread.i129
.Ltmp344:                               # EH_LABEL
	b	.LBB18_603
.LBB18_545:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread.i122
.Ltmp330:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_546:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i111
.Ltmp314:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_547:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i100
.Ltmp298:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_548:
.Ltmp295:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s5, .LBB18_578
.LBB18_549:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i62
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB18_578
.LBB18_550:
.Ltmp286:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s6, .LBB18_553
	b	.LBB18_589
.LBB18_551:
.Ltmp277:                               # EH_LABEL
.LBB18_552:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s1, .LBB18_589
.LBB18_553:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB18_589
.LBB18_554:                             # %.thread.i
.Ltmp268:                               # EH_LABEL
	b	.LBB18_603
.LBB18_555:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread.i
.Ltmp256:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_556:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1
.Ltmp242:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_557:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp228:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_615
.LBB18_558:
.Ltmp489:                               # EH_LABEL
	b	.LBB18_577
.LBB18_559:
.Ltmp492:                               # EH_LABEL
	b	.LBB18_581
.LBB18_560:
.Ltmp495:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_561:
.Ltmp498:                               # EH_LABEL
	b	.LBB18_588
.LBB18_562:
.Ltmp501:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB18_592
	b	.LBB18_594
.LBB18_563:
.Ltmp504:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_564:
.Ltmp507:                               # EH_LABEL
	b	.LBB18_588
.LBB18_565:
.Ltmp510:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB18_592
	b	.LBB18_594
.LBB18_566:
.Ltmp513:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_567:
.Ltmp516:                               # EH_LABEL
	b	.LBB18_577
.LBB18_568:
.Ltmp519:                               # EH_LABEL
	b	.LBB18_581
.LBB18_569:
.Ltmp522:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_570:
.Ltmp525:                               # EH_LABEL
	b	.LBB18_588
.LBB18_571:
.Ltmp528:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB18_592
	b	.LBB18_594
.LBB18_572:
.Ltmp531:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_573:
.Ltmp534:                               # EH_LABEL
	b	.LBB18_588
.LBB18_574:
.Ltmp537:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB18_592
	b	.LBB18_594
.LBB18_575:
.Ltmp540:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_576:
.Ltmp543:                               # EH_LABEL
.LBB18_577:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i63
	move	$fp, $a0
.LBB18_578:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i63
	ld.d	$a0, $sp, 56
	beq	$a0, $s4, .LBB18_582
# %bb.579:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i65
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB18_582
.LBB18_580:
.Ltmp546:                               # EH_LABEL
.LBB18_581:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i66
	move	$fp, $a0
.LBB18_582:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i66
	ld.d	$a0, $sp, 88
	bne	$a0, $s3, .LBB18_592
	b	.LBB18_594
.LBB18_583:
.Ltmp549:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_584:
.Ltmp552:                               # EH_LABEL
	b	.LBB18_588
.LBB18_585:
.Ltmp555:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB18_592
	b	.LBB18_594
.LBB18_586:
.Ltmp558:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_587:
.Ltmp561:                               # EH_LABEL
.LBB18_588:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i
	move	$fp, $a0
.LBB18_589:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB18_591
# %bb.590:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_591:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB18_594
.LBB18_592:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
.LBB18_593:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_594:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB18_617
# %bb.595:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	b	.LBB18_616
.LBB18_596:
.Ltmp564:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB18_592
	b	.LBB18_594
.LBB18_597:
.Ltmp567:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB18_594
.LBB18_598:
.Ltmp459:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB18_614
	b	.LBB18_612
.LBB18_599:
.Ltmp265:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB18_614
	b	.LBB18_612
.LBB18_600:
.Ltmp483:                               # EH_LABEL
	ld.d	$a2, $sp, 88
	move	$fp, $a0
	beq	$a2, $s1, .LBB18_594
# %bb.601:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5.i
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB18_593
.LBB18_602:
.Ltmp486:                               # EH_LABEL
.LBB18_603:                             # %.thread.i
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB18_617
# %bb.604:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread25.i
	ld.d	$a0, $sp, 136
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB18_616
.LBB18_605:
.Ltmp417:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB18_614
	b	.LBB18_612
.LBB18_606:
.Ltmp341:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB18_614
	b	.LBB18_612
.LBB18_607:
.Ltmp253:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB18_614
	b	.LBB18_612
.LBB18_608:
.Ltmp239:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	bne	$a2, $s2, .LBB18_612
	b	.LBB18_614
.LBB18_609:
.Ltmp403:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB18_614
	b	.LBB18_612
.LBB18_610:
.Ltmp387:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB18_614
	b	.LBB18_612
.LBB18_611:
.Ltmp327:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB18_614
.LBB18_612:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 136
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB18_617
	b	.LBB18_615
.LBB18_613:
.Ltmp311:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	bne	$a2, $s2, .LBB18_612
.LBB18_614:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s1, .LBB18_617
.LBB18_615:
	ori	$a1, $zero, 232
	move	$a0, $s0
.LBB18_616:                             # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_617:                             # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_GLOBAL__sub_I_complexity_test.cc, .Lfunc_end18-_GLOBAL__sub_I_complexity_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp226-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp226
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin5         #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp238-.Ltmp229              #   Call between .Ltmp229 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin5         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp240-.Ltmp238              #   Call between .Ltmp238 and .Ltmp240
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin5         #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp252-.Ltmp243              #   Call between .Ltmp243 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin5         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp254-.Ltmp252              #   Call between .Ltmp252 and .Ltmp254
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp255-.Ltmp254              #   Call between .Ltmp254 and .Ltmp255
	.uleb128 .Ltmp256-.Lfunc_begin5         #     jumps to .Ltmp256
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp264-.Ltmp257              #   Call between .Ltmp257 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin5         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin5         #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp269-.Ltmp267              #   Call between .Ltmp267 and .Ltmp269
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp567-.Lfunc_begin5         #     jumps to .Ltmp567
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp564-.Lfunc_begin5         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp561-.Lfunc_begin5         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Ltmp275-.Ltmp274              #   Call between .Ltmp274 and .Ltmp275
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin5         # >> Call Site 18 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin5         #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin5         # >> Call Site 19 <<
	.uleb128 .Ltmp278-.Ltmp276              #   Call between .Ltmp276 and .Ltmp278
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin5         # >> Call Site 20 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp558-.Lfunc_begin5         #     jumps to .Ltmp558
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin5         # >> Call Site 21 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin5         # >> Call Site 22 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp555-.Lfunc_begin5         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin5         # >> Call Site 23 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin5         # >> Call Site 24 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp552-.Lfunc_begin5         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin5         # >> Call Site 25 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin5         # >> Call Site 26 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin5         #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin5         # >> Call Site 27 <<
	.uleb128 .Ltmp287-.Ltmp285              #   Call between .Ltmp285 and .Ltmp287
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin5         # >> Call Site 28 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp549-.Lfunc_begin5         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin5         # >> Call Site 29 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin5         # >> Call Site 30 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp546-.Lfunc_begin5         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin5         # >> Call Site 31 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin5         # >> Call Site 32 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp543-.Lfunc_begin5         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin5         # >> Call Site 33 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin5         # >> Call Site 34 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin5         #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin5         # >> Call Site 35 <<
	.uleb128 .Ltmp296-.Ltmp294              #   Call between .Ltmp294 and .Ltmp296
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin5         # >> Call Site 36 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin5         #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin5         # >> Call Site 37 <<
	.uleb128 .Ltmp310-.Ltmp299              #   Call between .Ltmp299 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin5         #     jumps to .Ltmp311
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin5         # >> Call Site 38 <<
	.uleb128 .Ltmp312-.Ltmp310              #   Call between .Ltmp310 and .Ltmp312
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin5         # >> Call Site 39 <<
	.uleb128 .Ltmp313-.Ltmp312              #   Call between .Ltmp312 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin5         #     jumps to .Ltmp314
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin5         # >> Call Site 40 <<
	.uleb128 .Ltmp326-.Ltmp315              #   Call between .Ltmp315 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin5         #     jumps to .Ltmp327
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin5         # >> Call Site 41 <<
	.uleb128 .Ltmp328-.Ltmp326              #   Call between .Ltmp326 and .Ltmp328
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin5         # >> Call Site 42 <<
	.uleb128 .Ltmp329-.Ltmp328              #   Call between .Ltmp328 and .Ltmp329
	.uleb128 .Ltmp330-.Lfunc_begin5         #     jumps to .Ltmp330
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin5         # >> Call Site 43 <<
	.uleb128 .Ltmp340-.Ltmp331              #   Call between .Ltmp331 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin5         #     jumps to .Ltmp341
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin5         # >> Call Site 44 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin5         #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp343-.Lfunc_begin5         # >> Call Site 45 <<
	.uleb128 .Ltmp345-.Ltmp343              #   Call between .Ltmp343 and .Ltmp345
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin5         # >> Call Site 46 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp540-.Lfunc_begin5         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin5         # >> Call Site 47 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin5         # >> Call Site 48 <<
	.uleb128 .Ltmp348-.Ltmp347              #   Call between .Ltmp347 and .Ltmp348
	.uleb128 .Ltmp537-.Lfunc_begin5         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin5         # >> Call Site 49 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp349-.Lfunc_begin5         # >> Call Site 50 <<
	.uleb128 .Ltmp350-.Ltmp349              #   Call between .Ltmp349 and .Ltmp350
	.uleb128 .Ltmp534-.Lfunc_begin5         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin5         # >> Call Site 51 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin5         # >> Call Site 52 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin5         #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp352-.Lfunc_begin5         # >> Call Site 53 <<
	.uleb128 .Ltmp354-.Ltmp352              #   Call between .Ltmp352 and .Ltmp354
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin5         # >> Call Site 54 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp531-.Lfunc_begin5         #     jumps to .Ltmp531
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp355-.Lfunc_begin5         # >> Call Site 55 <<
	.uleb128 .Ltmp356-.Ltmp355              #   Call between .Ltmp355 and .Ltmp356
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp356-.Lfunc_begin5         # >> Call Site 56 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.uleb128 .Ltmp528-.Lfunc_begin5         #     jumps to .Ltmp528
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin5         # >> Call Site 57 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp358-.Lfunc_begin5         # >> Call Site 58 <<
	.uleb128 .Ltmp359-.Ltmp358              #   Call between .Ltmp358 and .Ltmp359
	.uleb128 .Ltmp525-.Lfunc_begin5         #     jumps to .Ltmp525
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin5         # >> Call Site 59 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin5         # >> Call Site 60 <<
	.uleb128 .Ltmp361-.Ltmp360              #   Call between .Ltmp360 and .Ltmp361
	.uleb128 .Ltmp362-.Lfunc_begin5         #     jumps to .Ltmp362
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp361-.Lfunc_begin5         # >> Call Site 61 <<
	.uleb128 .Ltmp363-.Ltmp361              #   Call between .Ltmp361 and .Ltmp363
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp363-.Lfunc_begin5         # >> Call Site 62 <<
	.uleb128 .Ltmp364-.Ltmp363              #   Call between .Ltmp363 and .Ltmp364
	.uleb128 .Ltmp522-.Lfunc_begin5         #     jumps to .Ltmp522
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp364-.Lfunc_begin5         # >> Call Site 63 <<
	.uleb128 .Ltmp365-.Ltmp364              #   Call between .Ltmp364 and .Ltmp365
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp365-.Lfunc_begin5         # >> Call Site 64 <<
	.uleb128 .Ltmp366-.Ltmp365              #   Call between .Ltmp365 and .Ltmp366
	.uleb128 .Ltmp519-.Lfunc_begin5         #     jumps to .Ltmp519
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp366-.Lfunc_begin5         # >> Call Site 65 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp367-.Lfunc_begin5         # >> Call Site 66 <<
	.uleb128 .Ltmp368-.Ltmp367              #   Call between .Ltmp367 and .Ltmp368
	.uleb128 .Ltmp516-.Lfunc_begin5         #     jumps to .Ltmp516
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin5         # >> Call Site 67 <<
	.uleb128 .Ltmp369-.Ltmp368              #   Call between .Ltmp368 and .Ltmp369
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin5         # >> Call Site 68 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin5         #     jumps to .Ltmp371
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp370-.Lfunc_begin5         # >> Call Site 69 <<
	.uleb128 .Ltmp372-.Ltmp370              #   Call between .Ltmp370 and .Ltmp372
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp372-.Lfunc_begin5         # >> Call Site 70 <<
	.uleb128 .Ltmp373-.Ltmp372              #   Call between .Ltmp372 and .Ltmp373
	.uleb128 .Ltmp374-.Lfunc_begin5         #     jumps to .Ltmp374
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp375-.Lfunc_begin5         # >> Call Site 71 <<
	.uleb128 .Ltmp386-.Ltmp375              #   Call between .Ltmp375 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin5         #     jumps to .Ltmp387
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp386-.Lfunc_begin5         # >> Call Site 72 <<
	.uleb128 .Ltmp388-.Ltmp386              #   Call between .Ltmp386 and .Ltmp388
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin5         # >> Call Site 73 <<
	.uleb128 .Ltmp389-.Ltmp388              #   Call between .Ltmp388 and .Ltmp389
	.uleb128 .Ltmp390-.Lfunc_begin5         #     jumps to .Ltmp390
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin5         # >> Call Site 74 <<
	.uleb128 .Ltmp402-.Ltmp391              #   Call between .Ltmp391 and .Ltmp402
	.uleb128 .Ltmp403-.Lfunc_begin5         #     jumps to .Ltmp403
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp402-.Lfunc_begin5         # >> Call Site 75 <<
	.uleb128 .Ltmp404-.Ltmp402              #   Call between .Ltmp402 and .Ltmp404
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp404-.Lfunc_begin5         # >> Call Site 76 <<
	.uleb128 .Ltmp405-.Ltmp404              #   Call between .Ltmp404 and .Ltmp405
	.uleb128 .Ltmp406-.Lfunc_begin5         #     jumps to .Ltmp406
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin5         # >> Call Site 77 <<
	.uleb128 .Ltmp416-.Ltmp407              #   Call between .Ltmp407 and .Ltmp416
	.uleb128 .Ltmp417-.Lfunc_begin5         #     jumps to .Ltmp417
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin5         # >> Call Site 78 <<
	.uleb128 .Ltmp419-.Ltmp418              #   Call between .Ltmp418 and .Ltmp419
	.uleb128 .Ltmp420-.Lfunc_begin5         #     jumps to .Ltmp420
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp419-.Lfunc_begin5         # >> Call Site 79 <<
	.uleb128 .Ltmp421-.Ltmp419              #   Call between .Ltmp419 and .Ltmp421
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp421-.Lfunc_begin5         # >> Call Site 80 <<
	.uleb128 .Ltmp422-.Ltmp421              #   Call between .Ltmp421 and .Ltmp422
	.uleb128 .Ltmp513-.Lfunc_begin5         #     jumps to .Ltmp513
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin5         # >> Call Site 81 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin5         # >> Call Site 82 <<
	.uleb128 .Ltmp424-.Ltmp423              #   Call between .Ltmp423 and .Ltmp424
	.uleb128 .Ltmp510-.Lfunc_begin5         #     jumps to .Ltmp510
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin5         # >> Call Site 83 <<
	.uleb128 .Ltmp425-.Ltmp424              #   Call between .Ltmp424 and .Ltmp425
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin5         # >> Call Site 84 <<
	.uleb128 .Ltmp426-.Ltmp425              #   Call between .Ltmp425 and .Ltmp426
	.uleb128 .Ltmp507-.Lfunc_begin5         #     jumps to .Ltmp507
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin5         # >> Call Site 85 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin5         # >> Call Site 86 <<
	.uleb128 .Ltmp428-.Ltmp427              #   Call between .Ltmp427 and .Ltmp428
	.uleb128 .Ltmp429-.Lfunc_begin5         #     jumps to .Ltmp429
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin5         # >> Call Site 87 <<
	.uleb128 .Ltmp430-.Ltmp428              #   Call between .Ltmp428 and .Ltmp430
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp430-.Lfunc_begin5         # >> Call Site 88 <<
	.uleb128 .Ltmp431-.Ltmp430              #   Call between .Ltmp430 and .Ltmp431
	.uleb128 .Ltmp504-.Lfunc_begin5         #     jumps to .Ltmp504
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp431-.Lfunc_begin5         # >> Call Site 89 <<
	.uleb128 .Ltmp432-.Ltmp431              #   Call between .Ltmp431 and .Ltmp432
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin5         # >> Call Site 90 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp501-.Lfunc_begin5         #     jumps to .Ltmp501
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin5         # >> Call Site 91 <<
	.uleb128 .Ltmp434-.Ltmp433              #   Call between .Ltmp433 and .Ltmp434
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin5         # >> Call Site 92 <<
	.uleb128 .Ltmp435-.Ltmp434              #   Call between .Ltmp434 and .Ltmp435
	.uleb128 .Ltmp498-.Lfunc_begin5         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin5         # >> Call Site 93 <<
	.uleb128 .Ltmp436-.Ltmp435              #   Call between .Ltmp435 and .Ltmp436
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp436-.Lfunc_begin5         # >> Call Site 94 <<
	.uleb128 .Ltmp437-.Ltmp436              #   Call between .Ltmp436 and .Ltmp437
	.uleb128 .Ltmp438-.Lfunc_begin5         #     jumps to .Ltmp438
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp437-.Lfunc_begin5         # >> Call Site 95 <<
	.uleb128 .Ltmp439-.Ltmp437              #   Call between .Ltmp437 and .Ltmp439
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp439-.Lfunc_begin5         # >> Call Site 96 <<
	.uleb128 .Ltmp440-.Ltmp439              #   Call between .Ltmp439 and .Ltmp440
	.uleb128 .Ltmp495-.Lfunc_begin5         #     jumps to .Ltmp495
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin5         # >> Call Site 97 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp441-.Lfunc_begin5         # >> Call Site 98 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.uleb128 .Ltmp492-.Lfunc_begin5         #     jumps to .Ltmp492
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp442-.Lfunc_begin5         # >> Call Site 99 <<
	.uleb128 .Ltmp443-.Ltmp442              #   Call between .Ltmp442 and .Ltmp443
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp443-.Lfunc_begin5         # >> Call Site 100 <<
	.uleb128 .Ltmp444-.Ltmp443              #   Call between .Ltmp443 and .Ltmp444
	.uleb128 .Ltmp489-.Lfunc_begin5         #     jumps to .Ltmp489
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin5         # >> Call Site 101 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp445-.Lfunc_begin5         # >> Call Site 102 <<
	.uleb128 .Ltmp446-.Ltmp445              #   Call between .Ltmp445 and .Ltmp446
	.uleb128 .Ltmp447-.Lfunc_begin5         #     jumps to .Ltmp447
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin5         # >> Call Site 103 <<
	.uleb128 .Ltmp448-.Ltmp446              #   Call between .Ltmp446 and .Ltmp448
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin5         # >> Call Site 104 <<
	.uleb128 .Ltmp449-.Ltmp448              #   Call between .Ltmp448 and .Ltmp449
	.uleb128 .Ltmp450-.Lfunc_begin5         #     jumps to .Ltmp450
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp451-.Lfunc_begin5         # >> Call Site 105 <<
	.uleb128 .Ltmp458-.Ltmp451              #   Call between .Ltmp451 and .Ltmp458
	.uleb128 .Ltmp459-.Lfunc_begin5         #     jumps to .Ltmp459
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp460-.Lfunc_begin5         # >> Call Site 106 <<
	.uleb128 .Ltmp461-.Ltmp460              #   Call between .Ltmp460 and .Ltmp461
	.uleb128 .Ltmp462-.Lfunc_begin5         #     jumps to .Ltmp462
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin5         # >> Call Site 107 <<
	.uleb128 .Ltmp464-.Ltmp463              #   Call between .Ltmp463 and .Ltmp464
	.uleb128 .Ltmp465-.Lfunc_begin5         #     jumps to .Ltmp465
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp464-.Lfunc_begin5         # >> Call Site 108 <<
	.uleb128 .Ltmp466-.Ltmp464              #   Call between .Ltmp464 and .Ltmp466
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp466-.Lfunc_begin5         # >> Call Site 109 <<
	.uleb128 .Ltmp471-.Ltmp466              #   Call between .Ltmp466 and .Ltmp471
	.uleb128 .Ltmp486-.Lfunc_begin5         #     jumps to .Ltmp486
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp472-.Lfunc_begin5         # >> Call Site 110 <<
	.uleb128 .Ltmp477-.Ltmp472              #   Call between .Ltmp472 and .Ltmp477
	.uleb128 .Ltmp483-.Lfunc_begin5         #     jumps to .Ltmp483
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin5         # >> Call Site 111 <<
	.uleb128 .Ltmp479-.Ltmp478              #   Call between .Ltmp478 and .Ltmp479
	.uleb128 .Ltmp480-.Lfunc_begin5         #     jumps to .Ltmp480
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp479-.Lfunc_begin5         # >> Call Site 112 <<
	.uleb128 .Ltmp484-.Ltmp479              #   Call between .Ltmp479 and .Ltmp484
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp484-.Lfunc_begin5         # >> Call Site 113 <<
	.uleb128 .Ltmp485-.Ltmp484              #   Call between .Ltmp484 and .Ltmp485
	.uleb128 .Ltmp486-.Lfunc_begin5         #     jumps to .Ltmp486
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp481-.Lfunc_begin5         # >> Call Site 114 <<
	.uleb128 .Ltmp482-.Ltmp481              #   Call between .Ltmp481 and .Ltmp482
	.uleb128 .Ltmp483-.Lfunc_begin5         #     jumps to .Ltmp483
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp565-.Lfunc_begin5         # >> Call Site 115 <<
	.uleb128 .Ltmp566-.Ltmp565              #   Call between .Ltmp565 and .Ltmp566
	.uleb128 .Ltmp567-.Lfunc_begin5         #     jumps to .Ltmp567
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp562-.Lfunc_begin5         # >> Call Site 116 <<
	.uleb128 .Ltmp563-.Ltmp562              #   Call between .Ltmp562 and .Ltmp563
	.uleb128 .Ltmp564-.Lfunc_begin5         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp559-.Lfunc_begin5         # >> Call Site 117 <<
	.uleb128 .Ltmp560-.Ltmp559              #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp561-.Lfunc_begin5         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp556-.Lfunc_begin5         # >> Call Site 118 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin5         #     jumps to .Ltmp558
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp553-.Lfunc_begin5         # >> Call Site 119 <<
	.uleb128 .Ltmp554-.Ltmp553              #   Call between .Ltmp553 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin5         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp550-.Lfunc_begin5         # >> Call Site 120 <<
	.uleb128 .Ltmp551-.Ltmp550              #   Call between .Ltmp550 and .Ltmp551
	.uleb128 .Ltmp552-.Lfunc_begin5         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin5         # >> Call Site 121 <<
	.uleb128 .Ltmp548-.Ltmp547              #   Call between .Ltmp547 and .Ltmp548
	.uleb128 .Ltmp549-.Lfunc_begin5         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp544-.Lfunc_begin5         # >> Call Site 122 <<
	.uleb128 .Ltmp545-.Ltmp544              #   Call between .Ltmp544 and .Ltmp545
	.uleb128 .Ltmp546-.Lfunc_begin5         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin5         # >> Call Site 123 <<
	.uleb128 .Ltmp542-.Ltmp541              #   Call between .Ltmp541 and .Ltmp542
	.uleb128 .Ltmp543-.Lfunc_begin5         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp538-.Lfunc_begin5         # >> Call Site 124 <<
	.uleb128 .Ltmp539-.Ltmp538              #   Call between .Ltmp538 and .Ltmp539
	.uleb128 .Ltmp540-.Lfunc_begin5         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp535-.Lfunc_begin5         # >> Call Site 125 <<
	.uleb128 .Ltmp536-.Ltmp535              #   Call between .Ltmp535 and .Ltmp536
	.uleb128 .Ltmp537-.Lfunc_begin5         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp532-.Lfunc_begin5         # >> Call Site 126 <<
	.uleb128 .Ltmp533-.Ltmp532              #   Call between .Ltmp532 and .Ltmp533
	.uleb128 .Ltmp534-.Lfunc_begin5         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp529-.Lfunc_begin5         # >> Call Site 127 <<
	.uleb128 .Ltmp530-.Ltmp529              #   Call between .Ltmp529 and .Ltmp530
	.uleb128 .Ltmp531-.Lfunc_begin5         #     jumps to .Ltmp531
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp526-.Lfunc_begin5         # >> Call Site 128 <<
	.uleb128 .Ltmp527-.Ltmp526              #   Call between .Ltmp526 and .Ltmp527
	.uleb128 .Ltmp528-.Lfunc_begin5         #     jumps to .Ltmp528
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp523-.Lfunc_begin5         # >> Call Site 129 <<
	.uleb128 .Ltmp524-.Ltmp523              #   Call between .Ltmp523 and .Ltmp524
	.uleb128 .Ltmp525-.Lfunc_begin5         #     jumps to .Ltmp525
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp520-.Lfunc_begin5         # >> Call Site 130 <<
	.uleb128 .Ltmp521-.Ltmp520              #   Call between .Ltmp520 and .Ltmp521
	.uleb128 .Ltmp522-.Lfunc_begin5         #     jumps to .Ltmp522
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp517-.Lfunc_begin5         # >> Call Site 131 <<
	.uleb128 .Ltmp518-.Ltmp517              #   Call between .Ltmp517 and .Ltmp518
	.uleb128 .Ltmp519-.Lfunc_begin5         #     jumps to .Ltmp519
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp514-.Lfunc_begin5         # >> Call Site 132 <<
	.uleb128 .Ltmp515-.Ltmp514              #   Call between .Ltmp514 and .Ltmp515
	.uleb128 .Ltmp516-.Lfunc_begin5         #     jumps to .Ltmp516
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp511-.Lfunc_begin5         # >> Call Site 133 <<
	.uleb128 .Ltmp512-.Ltmp511              #   Call between .Ltmp511 and .Ltmp512
	.uleb128 .Ltmp513-.Lfunc_begin5         #     jumps to .Ltmp513
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp508-.Lfunc_begin5         # >> Call Site 134 <<
	.uleb128 .Ltmp509-.Ltmp508              #   Call between .Ltmp508 and .Ltmp509
	.uleb128 .Ltmp510-.Lfunc_begin5         #     jumps to .Ltmp510
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp505-.Lfunc_begin5         # >> Call Site 135 <<
	.uleb128 .Ltmp506-.Ltmp505              #   Call between .Ltmp505 and .Ltmp506
	.uleb128 .Ltmp507-.Lfunc_begin5         #     jumps to .Ltmp507
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp502-.Lfunc_begin5         # >> Call Site 136 <<
	.uleb128 .Ltmp503-.Ltmp502              #   Call between .Ltmp502 and .Ltmp503
	.uleb128 .Ltmp504-.Lfunc_begin5         #     jumps to .Ltmp504
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp499-.Lfunc_begin5         # >> Call Site 137 <<
	.uleb128 .Ltmp500-.Ltmp499              #   Call between .Ltmp499 and .Ltmp500
	.uleb128 .Ltmp501-.Lfunc_begin5         #     jumps to .Ltmp501
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin5         # >> Call Site 138 <<
	.uleb128 .Ltmp497-.Ltmp496              #   Call between .Ltmp496 and .Ltmp497
	.uleb128 .Ltmp498-.Lfunc_begin5         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp493-.Lfunc_begin5         # >> Call Site 139 <<
	.uleb128 .Ltmp494-.Ltmp493              #   Call between .Ltmp493 and .Ltmp494
	.uleb128 .Ltmp495-.Lfunc_begin5         #     jumps to .Ltmp495
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp490-.Lfunc_begin5         # >> Call Site 140 <<
	.uleb128 .Ltmp491-.Ltmp490              #   Call between .Ltmp490 and .Ltmp491
	.uleb128 .Ltmp492-.Lfunc_begin5         #     jumps to .Ltmp492
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp487-.Lfunc_begin5         # >> Call Site 141 <<
	.uleb128 .Ltmp488-.Ltmp487              #   Call between .Ltmp487 and .Ltmp488
	.uleb128 .Ltmp489-.Lfunc_begin5         #     jumps to .Ltmp489
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin5         # >> Call Site 142 <<
	.uleb128 .Lfunc_end18-.Ltmp488          #   Call between .Ltmp488 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_Complexity_O1"
	.size	.L.str, 17

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"BM_Complexity_O1/manual_time"
	.size	.L.str.4, 29

	.hidden	one_test_name                   # @one_test_name
	.type	one_test_name,@object
	.data
	.globl	one_test_name
	.p2align	3, 0x0
one_test_name:
	.dword	.L.str.4
	.size	one_test_name, 8

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"BM_Complexity_O1/manual_time_BigO"
	.size	.L.str.5, 34

	.hidden	big_o_1_test_name               # @big_o_1_test_name
	.type	big_o_1_test_name,@object
	.data
	.globl	big_o_1_test_name
	.p2align	3, 0x0
big_o_1_test_name:
	.dword	.L.str.5
	.size	big_o_1_test_name, 8

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"BM_Complexity_O1/manual_time_RMS"
	.size	.L.str.6, 33

	.hidden	rms_o_1_test_name               # @rms_o_1_test_name
	.type	rms_o_1_test_name,@object
	.data
	.globl	rms_o_1_test_name
	.p2align	3, 0x0
rms_o_1_test_name:
	.dword	.L.str.6
	.size	rms_o_1_test_name, 8

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"\\([0-9]+\\)"
	.size	.L.str.7, 11

	.hidden	enum_auto_big_o_1               # @enum_auto_big_o_1
	.type	enum_auto_big_o_1,@object
	.data
	.globl	enum_auto_big_o_1
	.p2align	3, 0x0
enum_auto_big_o_1:
	.dword	.L.str.7
	.size	enum_auto_big_o_1, 8

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"f\\(N\\)"
	.size	.L.str.8, 7

	.hidden	lambda_big_o_1                  # @lambda_big_o_1
	.type	lambda_big_o_1,@object
	.data
	.globl	lambda_big_o_1
	.p2align	3, 0x0
lambda_big_o_1:
	.dword	.L.str.8
	.size	lambda_big_o_1, 8

	.hidden	dummy105                        # @dummy105
	.type	dummy105,@object
	.bss
	.globl	dummy105
	.p2align	2, 0x0
dummy105:
	.word	0                               # 0x0
	.size	dummy105, 4

	.hidden	dummy109                        # @dummy109
	.type	dummy109,@object
	.globl	dummy109
	.p2align	2, 0x0
dummy109:
	.word	0                               # 0x0
	.size	dummy109, 4

	.hidden	dummy113                        # @dummy113
	.type	dummy113,@object
	.globl	dummy113
	.p2align	2, 0x0
dummy113:
	.word	0                               # 0x0
	.size	dummy113, 4

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.13:
	.asciz	"BM_Complexity_O_N"
	.size	.L.str.13, 18

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"BM_Complexity_O_N/manual_time"
	.size	.L.str.16, 30

	.hidden	n_test_name                     # @n_test_name
	.type	n_test_name,@object
	.data
	.globl	n_test_name
	.p2align	3, 0x0
n_test_name:
	.dword	.L.str.16
	.size	n_test_name, 8

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"BM_Complexity_O_N/manual_time_BigO"
	.size	.L.str.17, 35

	.hidden	big_o_n_test_name               # @big_o_n_test_name
	.type	big_o_n_test_name,@object
	.data
	.globl	big_o_n_test_name
	.p2align	3, 0x0
big_o_n_test_name:
	.dword	.L.str.17
	.size	big_o_n_test_name, 8

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"BM_Complexity_O_N/manual_time_RMS"
	.size	.L.str.18, 34

	.hidden	rms_o_n_test_name               # @rms_o_n_test_name
	.type	rms_o_n_test_name,@object
	.data
	.globl	rms_o_n_test_name
	.p2align	3, 0x0
rms_o_n_test_name:
	.dword	.L.str.18
	.size	rms_o_n_test_name, 8

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"N"
	.size	.L.str.19, 2

	.hidden	enum_auto_big_o_n               # @enum_auto_big_o_n
	.type	enum_auto_big_o_n,@object
	.data
	.globl	enum_auto_big_o_n
	.p2align	3, 0x0
enum_auto_big_o_n:
	.dword	.L.str.19
	.size	enum_auto_big_o_n, 8

	.hidden	lambda_big_o_n                  # @lambda_big_o_n
	.type	lambda_big_o_n,@object
	.globl	lambda_big_o_n
	.p2align	3, 0x0
lambda_big_o_n:
	.dword	.L.str.8
	.size	lambda_big_o_n, 8

	.hidden	dummy162                        # @dummy162
	.type	dummy162,@object
	.bss
	.globl	dummy162
	.p2align	2, 0x0
dummy162:
	.word	0                               # 0x0
	.size	dummy162, 4

	.hidden	dummy166                        # @dummy166
	.type	dummy166,@object
	.globl	dummy166
	.p2align	2, 0x0
dummy166:
	.word	0                               # 0x0
	.size	dummy166, 4

	.hidden	dummy170                        # @dummy170
	.type	dummy170,@object
	.globl	dummy170
	.p2align	2, 0x0
dummy170:
	.word	0                               # 0x0
	.size	dummy170, 4

	.type	_ZL27benchmark_uniq_8_benchmark_,@object # @_ZL27benchmark_uniq_8_benchmark_
	.local	_ZL27benchmark_uniq_8_benchmark_
	.comm	_ZL27benchmark_uniq_8_benchmark_,8,8
	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.24:
	.asciz	"BM_Complexity_O_N_log_N"
	.size	.L.str.24, 24

	.type	_ZL27benchmark_uniq_9_benchmark_,@object # @_ZL27benchmark_uniq_9_benchmark_
	.local	_ZL27benchmark_uniq_9_benchmark_
	.comm	_ZL27benchmark_uniq_9_benchmark_,8,8
	.type	_ZL28benchmark_uniq_10_benchmark_,@object # @_ZL28benchmark_uniq_10_benchmark_
	.local	_ZL28benchmark_uniq_10_benchmark_
	.comm	_ZL28benchmark_uniq_10_benchmark_,8,8
	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"BM_Complexity_O_N_log_N/manual_time"
	.size	.L.str.27, 36

	.hidden	n_lg_n_test_name                # @n_lg_n_test_name
	.type	n_lg_n_test_name,@object
	.data
	.globl	n_lg_n_test_name
	.p2align	3, 0x0
n_lg_n_test_name:
	.dword	.L.str.27
	.size	n_lg_n_test_name, 8

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"BM_Complexity_O_N_log_N/manual_time_BigO"
	.size	.L.str.28, 41

	.hidden	big_o_n_lg_n_test_name          # @big_o_n_lg_n_test_name
	.type	big_o_n_lg_n_test_name,@object
	.data
	.globl	big_o_n_lg_n_test_name
	.p2align	3, 0x0
big_o_n_lg_n_test_name:
	.dword	.L.str.28
	.size	big_o_n_lg_n_test_name, 8

	.type	.L.str.29,@object               # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"BM_Complexity_O_N_log_N/manual_time_RMS"
	.size	.L.str.29, 40

	.hidden	rms_o_n_lg_n_test_name          # @rms_o_n_lg_n_test_name
	.type	rms_o_n_lg_n_test_name,@object
	.data
	.globl	rms_o_n_lg_n_test_name
	.p2align	3, 0x0
rms_o_n_lg_n_test_name:
	.dword	.L.str.29
	.size	rms_o_n_lg_n_test_name, 8

	.type	.L.str.30,@object               # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"NlgN"
	.size	.L.str.30, 5

	.hidden	enum_auto_big_o_n_lg_n          # @enum_auto_big_o_n_lg_n
	.type	enum_auto_big_o_n_lg_n,@object
	.data
	.globl	enum_auto_big_o_n_lg_n
	.p2align	3, 0x0
enum_auto_big_o_n_lg_n:
	.dword	.L.str.30
	.size	enum_auto_big_o_n_lg_n, 8

	.hidden	lambda_big_o_n_lg_n             # @lambda_big_o_n_lg_n
	.type	lambda_big_o_n_lg_n,@object
	.globl	lambda_big_o_n_lg_n
	.p2align	3, 0x0
lambda_big_o_n_lg_n:
	.dword	.L.str.8
	.size	lambda_big_o_n_lg_n, 8

	.hidden	dummy221                        # @dummy221
	.type	dummy221,@object
	.bss
	.globl	dummy221
	.p2align	2, 0x0
dummy221:
	.word	0                               # 0x0
	.size	dummy221, 4

	.hidden	dummy226                        # @dummy226
	.type	dummy226,@object
	.globl	dummy226
	.p2align	2, 0x0
dummy226:
	.word	0                               # 0x0
	.size	dummy226, 4

	.hidden	dummy231                        # @dummy231
	.type	dummy231,@object
	.globl	dummy231
	.p2align	2, 0x0
dummy231:
	.word	0                               # 0x0
	.size	dummy231, 4

	.type	_ZL28benchmark_uniq_11_benchmark_,@object # @_ZL28benchmark_uniq_11_benchmark_
	.local	_ZL28benchmark_uniq_11_benchmark_
	.comm	_ZL28benchmark_uniq_11_benchmark_,8,8
	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.35:
	.asciz	"BM_ComplexityCaptureArgs/capture_test"
	.size	.L.str.35, 38

	.type	_ZL23complexity_capture_nameB5cxx11,@object # @_ZL23complexity_capture_nameB5cxx11
	.local	_ZL23complexity_capture_nameB5cxx11
	.comm	_ZL23complexity_capture_nameB5cxx11,32,8
	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"BM_ComplexityCaptureArgs/capture_test/manual_time"
	.size	.L.str.37, 50

	.hidden	__dso_handle
	.hidden	dummy264                        # @dummy264
	.type	dummy264,@object
	.bss
	.globl	dummy264
	.p2align	2, 0x0
dummy264:
	.word	0                               # 0x0
	.size	dummy264, 4

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"_BigO"
	.size	.L.str.39, 6

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"_RMS"
	.size	.L.str.40, 5

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"cached_ > 0"
	.size	.L.str.41, 12

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.42, 144

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"range_.size() > pos"
	.size	.L.str.43, 20

	.type	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm,@object # @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm
.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm:
	.asciz	"int64_t benchmark::State::range(std::size_t) const"
	.size	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm, 51

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"%name"
	.size	.L.str.44, 6

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"%bigo_name"
	.size	.L.str.45, 11

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"%rms_name"
	.size	.L.str.46, 10

	.type	.L.str.47,@object               # @.str.47
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.47:
	.asciz	"%bigo_str"
	.size	.L.str.47, 10

	.type	.L.str.48,@object               # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"[ ]* %float "
	.size	.L.str.48, 13

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"%bigo"
	.size	.L.str.49, 6

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"%rms"
	.size	.L.str.50, 5

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"[ ]*[0-9]+ %"
	.size	.L.str.51, 13

	.type	.L.str.52,@object               # @.str.52
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.52:
	.asciz	"^%bigo_name %bigo_str %bigo_str[ ]*$"
	.size	.L.str.52, 37

	.type	.L.str.53,@object               # @.str.53
	.p2align	3, 0x0
.L.str.53:
	.asciz	"^%bigo_name"
	.size	.L.str.53, 12

	.type	.L.str.54,@object               # @.str.54
	.p2align	3, 0x0
.L.str.54:
	.asciz	"^%rms_name %rms %rms[ ]*$"
	.size	.L.str.54, 26

	.type	.L.str.55,@object               # @.str.55
	.p2align	3, 0x0
.L.str.55:
	.asciz	"\"name\": \"%bigo_name\",$"
	.size	.L.str.55, 23

	.type	.L.str.56,@object               # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"\"family_index\": "
	.size	.L.str.56, 17

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	",$"
	.size	.L.str.57, 3

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.58:
	.asciz	"\"per_family_instance_index\": 0,$"
	.size	.L.str.58, 33

	.type	.L.str.59,@object               # @.str.59
	.p2align	3, 0x0
.L.str.59:
	.asciz	"\"run_name\": \"%name\",$"
	.size	.L.str.59, 22

	.type	.L.str.60,@object               # @.str.60
	.p2align	3, 0x0
.L.str.60:
	.asciz	"\"run_type\": \"aggregate\",$"
	.size	.L.str.60, 26

	.type	.L.str.61,@object               # @.str.61
	.p2align	3, 0x0
.L.str.61:
	.asciz	"\"repetitions\": %int,$"
	.size	.L.str.61, 22

	.type	.L.str.62,@object               # @.str.62
	.p2align	3, 0x0
.L.str.62:
	.asciz	"\"threads\": 1,$"
	.size	.L.str.62, 15

	.type	.L.str.63,@object               # @.str.63
	.p2align	3, 0x0
.L.str.63:
	.asciz	"\"aggregate_name\": \"BigO\",$"
	.size	.L.str.63, 27

	.type	.L.str.64,@object               # @.str.64
	.p2align	3, 0x0
.L.str.64:
	.asciz	"\"aggregate_unit\": \"time\",$"
	.size	.L.str.64, 27

	.type	.L.str.65,@object               # @.str.65
	.p2align	3, 0x0
.L.str.65:
	.asciz	"\"cpu_coefficient\": %float,$"
	.size	.L.str.65, 28

	.type	.L.str.66,@object               # @.str.66
	.p2align	3, 0x0
.L.str.66:
	.asciz	"\"real_coefficient\": %float,$"
	.size	.L.str.66, 29

	.type	.L.str.67,@object               # @.str.67
	.p2align	3, 0x0
.L.str.67:
	.asciz	"\"big_o\": \"%bigo\",$"
	.size	.L.str.67, 19

	.type	.L.str.68,@object               # @.str.68
	.p2align	3, 0x0
.L.str.68:
	.asciz	"\"time_unit\": \"ns\"$"
	.size	.L.str.68, 19

	.type	.L.str.70,@object               # @.str.70
	.p2align	3, 0x0
.L.str.70:
	.asciz	"\"name\": \"%rms_name\",$"
	.size	.L.str.70, 22

	.type	.L.str.71,@object               # @.str.71
	.p2align	3, 0x0
.L.str.71:
	.asciz	"\"aggregate_name\": \"RMS\",$"
	.size	.L.str.71, 26

	.type	.L.str.72,@object               # @.str.72
	.p2align	3, 0x0
.L.str.72:
	.asciz	"\"aggregate_unit\": \"percentage\",$"
	.size	.L.str.72, 33

	.type	.L.str.73,@object               # @.str.73
	.p2align	3, 0x0
.L.str.73:
	.asciz	"\"rms\": %float$"
	.size	.L.str.73, 15

	.type	.L.str.74,@object               # @.str.74
	.p2align	3, 0x0
.L.str.74:
	.asciz	"^\"%bigo_name\",,%float,%float,%bigo,,,,,$"
	.size	.L.str.74, 41

	.type	.L.str.75,@object               # @.str.75
	.p2align	3, 0x0
.L.str.75:
	.asciz	"^\"%bigo_name\""
	.size	.L.str.75, 14

	.type	.L.str.76,@object               # @.str.76
	.p2align	3, 0x0
.L.str.76:
	.asciz	"^\"%rms_name\",,%float,%float,,,,,,$"
	.size	.L.str.76, 35

	.type	.L.str.77,@object               # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"basic_string::append"
	.size	.L.str.77, 21

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"basic_string: construction from null is not valid"
	.size	.L.str.80, 50

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_complexity_test.cc
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
	.addrsig_sym _Z16BM_Complexity_O1RN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z17BM_Complexity_O_NRN9benchmark5StateE
	.addrsig_sym _ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE
	.addrsig_sym _ZN3$_08__invokeEl
	.addrsig_sym _ZN3$_18__invokeEl
	.addrsig_sym _ZN3$_28__invokeEl
	.addrsig_sym _ZN3$_38__invokeERN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_complexity_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL23complexity_capture_nameB5cxx11
	.addrsig_sym __dso_handle
