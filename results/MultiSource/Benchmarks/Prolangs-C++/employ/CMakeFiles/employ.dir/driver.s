	.file	"driver.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN8EmployeeC2EPKcS1_           # -- Begin function _ZN8EmployeeC2EPKcS1_
	.p2align	5
	.type	_ZN8EmployeeC2EPKcS1_,@function
_ZN8EmployeeC2EPKcS1_:                  # @_ZN8EmployeeC2EPKcS1_
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Employee+16)
	st.d	$a0, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcpy)
	jr	$t8
.Lfunc_end0:
	.size	_ZN8EmployeeC2EPKcS1_, .Lfunc_end0-_ZN8EmployeeC2EPKcS1_
	.cfi_endproc
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	_ZN8EmployeeD0Ev                # -- Begin function _ZN8EmployeeD0Ev
	.p2align	5
	.type	_ZN8EmployeeD0Ev,@function
_ZN8EmployeeD0Ev:                       # @_ZN8EmployeeD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end1:
	.size	_ZN8EmployeeD0Ev, .Lfunc_end1-_ZN8EmployeeD0Ev
                                        # -- End function
	.text
	.globl	_ZN8Employee9FirstNameEv        # -- Begin function _ZN8Employee9FirstNameEv
	.p2align	5
	.type	_ZN8Employee9FirstNameEv,@function
_ZN8Employee9FirstNameEv:               # @_ZN8Employee9FirstNameEv
# %bb.0:
	ld.d	$a0, $a0, 8
	ret
.Lfunc_end2:
	.size	_ZN8Employee9FirstNameEv, .Lfunc_end2-_ZN8Employee9FirstNameEv
                                        # -- End function
	.globl	_ZN8Employee8LastNameEv         # -- Begin function _ZN8Employee8LastNameEv
	.p2align	5
	.type	_ZN8Employee8LastNameEv,@function
_ZN8Employee8LastNameEv:                # @_ZN8Employee8LastNameEv
# %bb.0:
	ld.d	$a0, $a0, 16
	ret
.Lfunc_end3:
	.size	_ZN8Employee8LastNameEv, .Lfunc_end3-_ZN8Employee8LastNameEv
                                        # -- End function
	.globl	_ZN8Employee17PrintWithEarningsEi # -- Begin function _ZN8Employee17PrintWithEarningsEi
	.p2align	5
	.type	_ZN8Employee17PrintWithEarningsEi,@function
_ZN8Employee17PrintWithEarningsEi:      # @_ZN8Employee17PrintWithEarningsEi
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
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 24
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fcvt.d.s	$fa0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$a1, $a1, 16
	ori	$a2, $zero, 10
	st.b	$a2, $sp, 15
	beqz	$a1, .LBB4_2
# %bb.1:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
	addi.d	$a1, $sp, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_2:
	ori	$a1, $zero, 10
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZNSo3putEc)
	jr	$t8
.Lfunc_end4:
	.size	_ZN8Employee17PrintWithEarningsEi, .Lfunc_end4-_ZN8Employee17PrintWithEarningsEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12EmployeeNodeC2EP8EmployeePS_ # -- Begin function _ZN12EmployeeNodeC2EP8EmployeePS_
	.p2align	5
	.type	_ZN12EmployeeNodeC2EP8EmployeePS_,@function
_ZN12EmployeeNodeC2EP8EmployeePS_:      # @_ZN12EmployeeNodeC2EP8EmployeePS_
# %bb.0:
	st.d	$a1, $a0, 0
	st.d	$a2, $a0, 8
	ret
.Lfunc_end5:
	.size	_ZN12EmployeeNodeC2EP8EmployeePS_, .Lfunc_end5-_ZN12EmployeeNodeC2EP8EmployeePS_
                                        # -- End function
	.globl	_ZN12EmployeeNode4NextEv        # -- Begin function _ZN12EmployeeNode4NextEv
	.p2align	5
	.type	_ZN12EmployeeNode4NextEv,@function
_ZN12EmployeeNode4NextEv:               # @_ZN12EmployeeNode4NextEv
# %bb.0:
	ld.d	$a0, $a0, 8
	ret
.Lfunc_end6:
	.size	_ZN12EmployeeNode4NextEv, .Lfunc_end6-_ZN12EmployeeNode4NextEv
                                        # -- End function
	.globl	_ZN7CompanyC2Ev                 # -- Begin function _ZN7CompanyC2Ev
	.p2align	5
	.type	_ZN7CompanyC2Ev,@function
_ZN7CompanyC2Ev:                        # @_ZN7CompanyC2Ev
# %bb.0:
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	ret
.Lfunc_end7:
	.size	_ZN7CompanyC2Ev, .Lfunc_end7-_ZN7CompanyC2Ev
                                        # -- End function
	.globl	_ZN7Company13EmployeeCountEv    # -- Begin function _ZN7Company13EmployeeCountEv
	.p2align	5
	.type	_ZN7Company13EmployeeCountEv,@function
_ZN7Company13EmployeeCountEv:           # @_ZN7Company13EmployeeCountEv
# %bb.0:
	ld.w	$a0, $a0, 8
	ret
.Lfunc_end8:
	.size	_ZN7Company13EmployeeCountEv, .Lfunc_end8-_ZN7Company13EmployeeCountEv
                                        # -- End function
	.globl	_ZN7Company11AddEmployeeEP8Employee # -- Begin function _ZN7Company11AddEmployeeEP8Employee
	.p2align	5
	.type	_ZN7Company11AddEmployeeEP8Employee,@function
_ZN7Company11AddEmployeeEP8Employee:    # @_ZN7Company11AddEmployeeEP8Employee
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
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$fp, $a0, 0
	st.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	_ZN7Company11AddEmployeeEP8Employee, .Lfunc_end9-_ZN7Company11AddEmployeeEP8Employee
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7Company17PrintWithEarningsEv # -- Begin function _ZN7Company17PrintWithEarningsEv
	.p2align	5
	.type	_ZN7Company17PrintWithEarningsEv,@function
_ZN7Company17PrintWithEarningsEv:       # @_ZN7Company17PrintWithEarningsEv
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
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB10_3
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	.p2align	4, , 16
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.w	$a1, $fp, 12
	pcaddu18i	$ra, %call36(_ZN8Employee17PrintWithEarningsEi)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB10_2
.LBB10_3:                               # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	_ZN7Company17PrintWithEarningsEv, .Lfunc_end10-_ZN7Company17PrintWithEarningsEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7Company7NewWeekEv           # -- Begin function _ZN7Company7NewWeekEv
	.p2align	5
	.type	_ZN7Company7NewWeekEv,@function
_ZN7Company7NewWeekEv:                  # @_ZN7Company7NewWeekEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 12
	ld.d	$fp, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	beqz	$fp, .LBB11_2
	.p2align	4, , 16
.LBB11_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 40
	jirl	$ra, $a1, 0
	ld.d	$fp, $fp, 8
	bnez	$fp, .LBB11_1
.LBB11_2:                               # %._crit_edge
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	_ZN7Company7NewWeekEv, .Lfunc_end11-_ZN7Company7NewWeekEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7Company19AcrossTheBoardRaiseEi # -- Begin function _ZN7Company19AcrossTheBoardRaiseEi
	.p2align	5
	.type	_ZN7Company19AcrossTheBoardRaiseEi,@function
_ZN7Company19AcrossTheBoardRaiseEi:     # @_ZN7Company19AcrossTheBoardRaiseEi
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
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB12_3
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	.p2align	4, , 16
.LBB12_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 32
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB12_2
.LBB12_3:                               # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	_ZN7Company19AcrossTheBoardRaiseEi, .Lfunc_end12-_ZN7Company19AcrossTheBoardRaiseEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4BossC2EPKcS1_f              # -- Begin function _ZN4BossC2EPKcS1_f
	.p2align	5
	.type	_ZN4BossC2EPKcS1_f,@function
_ZN4BossC2EPKcS1_f:                     # @_ZN4BossC2EPKcS1_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	fmov.s	$fs0, $fa0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Employee+16)
	st.d	$a0, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV4Boss+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Boss+16)
	st.d	$a0, $s1, 0
	movgr2fr.w	$fa0, $zero
	fmax.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s1, 28
	lu12i.w	$a0, 273536
	st.w	$a0, $s1, 24
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	_ZN4BossC2EPKcS1_f, .Lfunc_end13-_ZN4BossC2EPKcS1_f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Boss15SetWeeklySalaryEf     # -- Begin function _ZN4Boss15SetWeeklySalaryEf
	.p2align	5
	.type	_ZN4Boss15SetWeeklySalaryEf,@function
_ZN4Boss15SetWeeklySalaryEf:            # @_ZN4Boss15SetWeeklySalaryEf
# %bb.0:
	movgr2fr.w	$fa1, $zero
	fmax.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 28
	ret
.Lfunc_end14:
	.size	_ZN4Boss15SetWeeklySalaryEf, .Lfunc_end14-_ZN4Boss15SetWeeklySalaryEf
                                        # -- End function
	.globl	_ZN4Boss8EarningsEv             # -- Begin function _ZN4Boss8EarningsEv
	.p2align	5
	.type	_ZN4Boss8EarningsEv,@function
_ZN4Boss8EarningsEv:                    # @_ZN4Boss8EarningsEv
# %bb.0:
	fld.s	$fa0, $a0, 28
	ret
.Lfunc_end15:
	.size	_ZN4Boss8EarningsEv, .Lfunc_end15-_ZN4Boss8EarningsEv
                                        # -- End function
	.globl	_ZN4Boss5PrintEv                # -- Begin function _ZN4Boss5PrintEv
	.p2align	5
	.type	_ZN4Boss5PrintEv,@function
_ZN4Boss5PrintEv:                       # @_ZN4Boss5PrintEv
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
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 21
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB16_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB16_3
.LBB16_2:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB16_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$a0, $a0, 16
	ori	$a1, $zero, 32
	st.b	$a1, $sp, 15
	beqz	$a0, .LBB16_6
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	addi.d	$a1, $sp, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB16_7
.LBB16_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB16_8
.LBB16_6:
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB16_5
.LBB16_7:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB16_8:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	_ZN4Boss5PrintEv, .Lfunc_end16-_ZN4Boss5PrintEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Boss5RaiseEi                # -- Begin function _ZN4Boss5RaiseEi
	.p2align	5
	.type	_ZN4Boss5RaiseEi,@function
_ZN4Boss5RaiseEi:                       # @_ZN4Boss5RaiseEi
# %bb.0:
	blez	$a1, .LBB17_2
# %bb.1:
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $a0, 28
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa2, $a1
	ffint.s.l	$fa2, $fa2
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fst.s	$fa0, $a0, 28
.LBB17_2:
	ret
.Lfunc_end17:
	.size	_ZN4Boss5RaiseEi, .Lfunc_end17-_ZN4Boss5RaiseEi
                                        # -- End function
	.globl	_ZN4Boss7NewWeekEv              # -- Begin function _ZN4Boss7NewWeekEv
	.p2align	5
	.type	_ZN4Boss7NewWeekEv,@function
_ZN4Boss7NewWeekEv:                     # @_ZN4Boss7NewWeekEv
# %bb.0:
	ret
.Lfunc_end18:
	.size	_ZN4Boss7NewWeekEv, .Lfunc_end18-_ZN4Boss7NewWeekEv
                                        # -- End function
	.globl	_ZN18CommissionedWorkerC2EPKcS1_ff # -- Begin function _ZN18CommissionedWorkerC2EPKcS1_ff
	.p2align	5
	.type	_ZN18CommissionedWorkerC2EPKcS1_ff,@function
_ZN18CommissionedWorkerC2EPKcS1_ff:     # @_ZN18CommissionedWorkerC2EPKcS1_ff
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	.cfi_offset 57, -48
	fmov.s	$fs0, $fa1
	fmov.s	$fs1, $fa0
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Employee+16)
	st.d	$a0, $fp, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV18CommissionedWorker+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18CommissionedWorker+16)
	st.d	$a0, $fp, 0
	st.w	$zero, $fp, 36
	movgr2fr.w	$fa0, $zero
	fmax.s	$fa1, $fs1, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	fst.s	$fa1, $fp, 28
	bcnez	$fcc0, .LBB19_2
# %bb.1:
	st.w	$zero, $fp, 32
	b	.LBB19_5
.LBB19_2:
	lu12i.w	$a0, 272128
	movgr2fr.w	$fa0, $a0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB19_4
# %bb.3:
	st.w	$a0, $fp, 32
	b	.LBB19_5
.LBB19_4:
	fst.s	$fs0, $fp, 32
.LBB19_5:                               # %_ZN18CommissionedWorker17SetCommissionRateEf.exit
	lu12i.w	$a0, 266752
	st.w	$a0, $fp, 24
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	_ZN18CommissionedWorkerC2EPKcS1_ff, .Lfunc_end19-_ZN18CommissionedWorkerC2EPKcS1_ff
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18CommissionedWorker15SetWeeklySalaryEf # -- Begin function _ZN18CommissionedWorker15SetWeeklySalaryEf
	.p2align	5
	.type	_ZN18CommissionedWorker15SetWeeklySalaryEf,@function
_ZN18CommissionedWorker15SetWeeklySalaryEf: # @_ZN18CommissionedWorker15SetWeeklySalaryEf
# %bb.0:
	movgr2fr.w	$fa1, $zero
	fmax.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 28
	ret
.Lfunc_end20:
	.size	_ZN18CommissionedWorker15SetWeeklySalaryEf, .Lfunc_end20-_ZN18CommissionedWorker15SetWeeklySalaryEf
                                        # -- End function
	.globl	_ZN18CommissionedWorker17SetCommissionRateEf # -- Begin function _ZN18CommissionedWorker17SetCommissionRateEf
	.p2align	5
	.type	_ZN18CommissionedWorker17SetCommissionRateEf,@function
_ZN18CommissionedWorker17SetCommissionRateEf: # @_ZN18CommissionedWorker17SetCommissionRateEf
# %bb.0:
	movgr2fr.w	$fa1, $zero
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB21_2
# %bb.1:
	st.w	$zero, $a0, 32
	ret
.LBB21_2:
	lu12i.w	$a1, 272128
	movgr2fr.w	$fa1, $a1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_4
# %bb.3:
	st.w	$a1, $a0, 32
	ret
.LBB21_4:
	fst.s	$fa0, $a0, 32
	ret
.Lfunc_end21:
	.size	_ZN18CommissionedWorker17SetCommissionRateEf, .Lfunc_end21-_ZN18CommissionedWorker17SetCommissionRateEf
                                        # -- End function
	.globl	_ZN18CommissionedWorker13SalesThisWeekEf # -- Begin function _ZN18CommissionedWorker13SalesThisWeekEf
	.p2align	5
	.type	_ZN18CommissionedWorker13SalesThisWeekEf,@function
_ZN18CommissionedWorker13SalesThisWeekEf: # @_ZN18CommissionedWorker13SalesThisWeekEf
# %bb.0:
	fst.s	$fa0, $a0, 36
	ret
.Lfunc_end22:
	.size	_ZN18CommissionedWorker13SalesThisWeekEf, .Lfunc_end22-_ZN18CommissionedWorker13SalesThisWeekEf
                                        # -- End function
	.globl	_ZN18CommissionedWorker8EarningsEv # -- Begin function _ZN18CommissionedWorker8EarningsEv
	.p2align	5
	.type	_ZN18CommissionedWorker8EarningsEv,@function
_ZN18CommissionedWorker8EarningsEv:     # @_ZN18CommissionedWorker8EarningsEv
# %bb.0:
	fld.s	$fa0, $a0, 32
	fld.s	$fa1, $a0, 28
	fcvt.d.s	$fa0, $fa0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	fld.s	$fa2, $a0, 36
	movgr2fr.d	$fa3, $a1
	fdiv.d	$fa0, $fa0, $fa3
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fcvt.s.d	$fa0, $fa0
	ret
.Lfunc_end23:
	.size	_ZN18CommissionedWorker8EarningsEv, .Lfunc_end23-_ZN18CommissionedWorker8EarningsEv
                                        # -- End function
	.globl	_ZN18CommissionedWorker5PrintEv # -- Begin function _ZN18CommissionedWorker5PrintEv
	.p2align	5
	.type	_ZN18CommissionedWorker5PrintEv,@function
_ZN18CommissionedWorker5PrintEv:        # @_ZN18CommissionedWorker5PrintEv
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
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 21
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB24_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB24_3
.LBB24_2:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB24_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$a0, $a0, 16
	ori	$a1, $zero, 32
	st.b	$a1, $sp, 15
	beqz	$a0, .LBB24_6
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	addi.d	$a1, $sp, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB24_7
.LBB24_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB24_8
.LBB24_6:
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB24_5
.LBB24_7:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB24_8:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	_ZN18CommissionedWorker5PrintEv, .Lfunc_end24-_ZN18CommissionedWorker5PrintEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18CommissionedWorker5RaiseEi # -- Begin function _ZN18CommissionedWorker5RaiseEi
	.p2align	5
	.type	_ZN18CommissionedWorker5RaiseEi,@function
_ZN18CommissionedWorker5RaiseEi:        # @_ZN18CommissionedWorker5RaiseEi
# %bb.0:
	blez	$a1, .LBB25_2
# %bb.1:                                # %_ZN18CommissionedWorker17SetCommissionRateEf.exit
	fld.s	$fa0, $a0, 32
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fadd.s	$fa0, $fa0, $fa1
	lu12i.w	$a1, 272128
	movgr2fr.w	$fa2, $a1
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa2, $fa0, $fa2, $fcc0
	movgr2fr.w	$fa3, $zero
	fld.s	$fa4, $a0, 24
	fld.s	$fa5, $a0, 28
	fcmp.clt.s	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa2, $fa3, $fcc0
	fst.s	$fa0, $a0, 32
	fmadd.s	$fa0, $fa1, $fa4, $fa5
	fst.s	$fa0, $a0, 28
.LBB25_2:
	ret
.Lfunc_end25:
	.size	_ZN18CommissionedWorker5RaiseEi, .Lfunc_end25-_ZN18CommissionedWorker5RaiseEi
                                        # -- End function
	.globl	_ZN18CommissionedWorker7NewWeekEv # -- Begin function _ZN18CommissionedWorker7NewWeekEv
	.p2align	5
	.type	_ZN18CommissionedWorker7NewWeekEv,@function
_ZN18CommissionedWorker7NewWeekEv:      # @_ZN18CommissionedWorker7NewWeekEv
# %bb.0:
	lu12i.w	$a1, 289845
	st.w	$a1, $a0, 36
	ret
.Lfunc_end26:
	.size	_ZN18CommissionedWorker7NewWeekEv, .Lfunc_end26-_ZN18CommissionedWorker7NewWeekEv
                                        # -- End function
	.globl	_ZN10WageWorkerC2EPKcS1_f       # -- Begin function _ZN10WageWorkerC2EPKcS1_f
	.p2align	5
	.type	_ZN10WageWorkerC2EPKcS1_f,@function
_ZN10WageWorkerC2EPKcS1_f:              # @_ZN10WageWorkerC2EPKcS1_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	fmov.s	$fs0, $fa0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Employee+16)
	st.d	$a0, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV10WageWorker+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV10WageWorker+16)
	st.d	$a0, $s1, 0
	movgr2fr.w	$fa0, $zero
	fmax.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s1, 28
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end27:
	.size	_ZN10WageWorkerC2EPKcS1_f, .Lfunc_end27-_ZN10WageWorkerC2EPKcS1_f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10WageWorker7SetWageEf       # -- Begin function _ZN10WageWorker7SetWageEf
	.p2align	5
	.type	_ZN10WageWorker7SetWageEf,@function
_ZN10WageWorker7SetWageEf:              # @_ZN10WageWorker7SetWageEf
# %bb.0:
	movgr2fr.w	$fa1, $zero
	fmax.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 28
	ret
.Lfunc_end28:
	.size	_ZN10WageWorker7SetWageEf, .Lfunc_end28-_ZN10WageWorker7SetWageEf
                                        # -- End function
	.globl	_ZN10WageWorker4WageEv          # -- Begin function _ZN10WageWorker4WageEv
	.p2align	5
	.type	_ZN10WageWorker4WageEv,@function
_ZN10WageWorker4WageEv:                 # @_ZN10WageWorker4WageEv
# %bb.0:
	fld.s	$fa0, $a0, 28
	ret
.Lfunc_end29:
	.size	_ZN10WageWorker4WageEv, .Lfunc_end29-_ZN10WageWorker4WageEv
                                        # -- End function
	.globl	_ZN10WageWorker5RaiseEi         # -- Begin function _ZN10WageWorker5RaiseEi
	.p2align	5
	.type	_ZN10WageWorker5RaiseEi,@function
_ZN10WageWorker5RaiseEi:                # @_ZN10WageWorker5RaiseEi
# %bb.0:
	blez	$a1, .LBB30_2
# %bb.1:
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $a0, 28
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa2, $a1
	ffint.s.l	$fa2, $fa2
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fst.s	$fa0, $a0, 28
.LBB30_2:
	ret
.Lfunc_end30:
	.size	_ZN10WageWorker5RaiseEi, .Lfunc_end30-_ZN10WageWorker5RaiseEi
                                        # -- End function
	.globl	_ZN11PieceWorkerC2EPKcS1_f      # -- Begin function _ZN11PieceWorkerC2EPKcS1_f
	.p2align	5
	.type	_ZN11PieceWorkerC2EPKcS1_f,@function
_ZN11PieceWorkerC2EPKcS1_f:             # @_ZN11PieceWorkerC2EPKcS1_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	fmov.s	$fs0, $fa0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Employee+16)
	st.d	$a0, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	fmax.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s1, 28
	pcalau12i	$a0, %pc_hi20(_ZTV11PieceWorker+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV11PieceWorker+16)
	st.d	$a0, $s1, 0
	lu12i.w	$a0, 268032
	st.w	$a0, $s1, 24
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end31:
	.size	_ZN11PieceWorkerC2EPKcS1_f, .Lfunc_end31-_ZN11PieceWorkerC2EPKcS1_f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11PieceWorker16ProducedThisWeekEi # -- Begin function _ZN11PieceWorker16ProducedThisWeekEi
	.p2align	5
	.type	_ZN11PieceWorker16ProducedThisWeekEi,@function
_ZN11PieceWorker16ProducedThisWeekEi:   # @_ZN11PieceWorker16ProducedThisWeekEi
# %bb.0:
	st.w	$a1, $a0, 32
	ret
.Lfunc_end32:
	.size	_ZN11PieceWorker16ProducedThisWeekEi, .Lfunc_end32-_ZN11PieceWorker16ProducedThisWeekEi
                                        # -- End function
	.globl	_ZN11PieceWorker8EarningsEv     # -- Begin function _ZN11PieceWorker8EarningsEv
	.p2align	5
	.type	_ZN11PieceWorker8EarningsEv,@function
_ZN11PieceWorker8EarningsEv:            # @_ZN11PieceWorker8EarningsEv
# %bb.0:
	ld.w	$a1, $a0, 32
	fld.s	$fa0, $a0, 28
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end33:
	.size	_ZN11PieceWorker8EarningsEv, .Lfunc_end33-_ZN11PieceWorker8EarningsEv
                                        # -- End function
	.globl	_ZN11PieceWorker5PrintEv        # -- Begin function _ZN11PieceWorker5PrintEv
	.p2align	5
	.type	_ZN11PieceWorker5PrintEv,@function
_ZN11PieceWorker5PrintEv:               # @_ZN11PieceWorker5PrintEv
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
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 21
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB34_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB34_3
.LBB34_2:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB34_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$a0, $a0, 16
	ori	$a1, $zero, 32
	st.b	$a1, $sp, 15
	beqz	$a0, .LBB34_6
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	addi.d	$a1, $sp, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB34_7
.LBB34_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB34_8
.LBB34_6:
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB34_5
.LBB34_7:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB34_8:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end34:
	.size	_ZN11PieceWorker5PrintEv, .Lfunc_end34-_ZN11PieceWorker5PrintEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11PieceWorker7NewWeekEv      # -- Begin function _ZN11PieceWorker7NewWeekEv
	.p2align	5
	.type	_ZN11PieceWorker7NewWeekEv,@function
_ZN11PieceWorker7NewWeekEv:             # @_ZN11PieceWorker7NewWeekEv
# %bb.0:
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 32
	ret
.Lfunc_end35:
	.size	_ZN11PieceWorker7NewWeekEv, .Lfunc_end35-_ZN11PieceWorker7NewWeekEv
                                        # -- End function
	.globl	_ZN12HourlyWorkerC2EPKcS1_f     # -- Begin function _ZN12HourlyWorkerC2EPKcS1_f
	.p2align	5
	.type	_ZN12HourlyWorkerC2EPKcS1_f,@function
_ZN12HourlyWorkerC2EPKcS1_f:            # @_ZN12HourlyWorkerC2EPKcS1_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	fmov.s	$fs0, $fa0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Employee+16)
	st.d	$a0, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	fmax.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s1, 28
	pcalau12i	$a0, %pc_hi20(_ZTV12HourlyWorker+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV12HourlyWorker+16)
	st.d	$a0, $s1, 0
	lu12i.w	$a0, 258048
	st.w	$a0, $s1, 24
	st.w	$zero, $s1, 32
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end36:
	.size	_ZN12HourlyWorkerC2EPKcS1_f, .Lfunc_end36-_ZN12HourlyWorkerC2EPKcS1_f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12HourlyWorker16SetThisWeekHoursEf # -- Begin function _ZN12HourlyWorker16SetThisWeekHoursEf
	.p2align	5
	.type	_ZN12HourlyWorker16SetThisWeekHoursEf,@function
_ZN12HourlyWorker16SetThisWeekHoursEf:  # @_ZN12HourlyWorker16SetThisWeekHoursEf
# %bb.0:
	fst.s	$fa0, $a0, 32
	ret
.Lfunc_end37:
	.size	_ZN12HourlyWorker16SetThisWeekHoursEf, .Lfunc_end37-_ZN12HourlyWorker16SetThisWeekHoursEf
                                        # -- End function
	.globl	_ZN12HourlyWorker5PrintEv       # -- Begin function _ZN12HourlyWorker5PrintEv
	.p2align	5
	.type	_ZN12HourlyWorker5PrintEv,@function
_ZN12HourlyWorker5PrintEv:              # @_ZN12HourlyWorker5PrintEv
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
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 21
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB38_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB38_3
.LBB38_2:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB38_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$a0, $a0, 16
	ori	$a1, $zero, 32
	st.b	$a1, $sp, 15
	beqz	$a0, .LBB38_6
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	addi.d	$a1, $sp, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB38_7
.LBB38_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB38_8
.LBB38_6:
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB38_5
.LBB38_7:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB38_8:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end38:
	.size	_ZN12HourlyWorker5PrintEv, .Lfunc_end38-_ZN12HourlyWorker5PrintEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12HourlyWorker5RaiseEi       # -- Begin function _ZN12HourlyWorker5RaiseEi
	.p2align	5
	.type	_ZN12HourlyWorker5RaiseEi,@function
_ZN12HourlyWorker5RaiseEi:              # @_ZN12HourlyWorker5RaiseEi
# %bb.0:
	blez	$a1, .LBB39_2
# %bb.1:
	fld.s	$fa0, $a0, 28
	fld.s	$fa1, $a0, 24
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa2, $a1
	ffint.s.l	$fa2, $fa2
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	movgr2fr.w	$fa1, $zero
	fmax.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 28
.LBB39_2:
	ret
.Lfunc_end39:
	.size	_ZN12HourlyWorker5RaiseEi, .Lfunc_end39-_ZN12HourlyWorker5RaiseEi
                                        # -- End function
	.globl	_ZN12HourlyWorker7NewWeekEv     # -- Begin function _ZN12HourlyWorker7NewWeekEv
	.p2align	5
	.type	_ZN12HourlyWorker7NewWeekEv,@function
_ZN12HourlyWorker7NewWeekEv:            # @_ZN12HourlyWorker7NewWeekEv
# %bb.0:
	lu12i.w	$a1, 271104
	st.w	$a1, $a0, 32
	ret
.Lfunc_end40:
	.size	_ZN12HourlyWorker7NewWeekEv, .Lfunc_end40-_ZN12HourlyWorker7NewWeekEv
                                        # -- End function
	.globl	_ZN22HourlyWorkerNoOvertimeC2EPKcS1_f # -- Begin function _ZN22HourlyWorkerNoOvertimeC2EPKcS1_f
	.p2align	5
	.type	_ZN22HourlyWorkerNoOvertimeC2EPKcS1_f,@function
_ZN22HourlyWorkerNoOvertimeC2EPKcS1_f:  # @_ZN22HourlyWorkerNoOvertimeC2EPKcS1_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	fmov.s	$fs0, $fa0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Employee+16)
	st.d	$a0, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	fmax.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s1, 28
	lu12i.w	$a0, 258048
	st.w	$a0, $s1, 24
	st.w	$zero, $s1, 32
	pcalau12i	$a0, %pc_hi20(_ZTV22HourlyWorkerNoOvertime+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV22HourlyWorkerNoOvertime+16)
	st.d	$a0, $s1, 0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end41:
	.size	_ZN22HourlyWorkerNoOvertimeC2EPKcS1_f, .Lfunc_end41-_ZN22HourlyWorkerNoOvertimeC2EPKcS1_f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN22HourlyWorkerNoOvertime8EarningsEv # -- Begin function _ZN22HourlyWorkerNoOvertime8EarningsEv
	.p2align	5
	.type	_ZN22HourlyWorkerNoOvertime8EarningsEv,@function
_ZN22HourlyWorkerNoOvertime8EarningsEv: # @_ZN22HourlyWorkerNoOvertime8EarningsEv
# %bb.0:
	fld.s	$fa0, $a0, 28
	fld.s	$fa1, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end42:
	.size	_ZN22HourlyWorkerNoOvertime8EarningsEv, .Lfunc_end42-_ZN22HourlyWorkerNoOvertime8EarningsEv
                                        # -- End function
	.globl	_ZN20HourlyWorkerOvertimeC2EPKcS1_f # -- Begin function _ZN20HourlyWorkerOvertimeC2EPKcS1_f
	.p2align	5
	.type	_ZN20HourlyWorkerOvertimeC2EPKcS1_f,@function
_ZN20HourlyWorkerOvertimeC2EPKcS1_f:    # @_ZN20HourlyWorkerOvertimeC2EPKcS1_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	fmov.s	$fs0, $fa0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8Employee+16)
	st.d	$a0, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	fmax.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s1, 28
	lu12i.w	$a0, 258048
	st.w	$a0, $s1, 24
	st.w	$zero, $s1, 32
	pcalau12i	$a0, %pc_hi20(_ZTV20HourlyWorkerOvertime+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV20HourlyWorkerOvertime+16)
	st.d	$a0, $s1, 0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end43:
	.size	_ZN20HourlyWorkerOvertimeC2EPKcS1_f, .Lfunc_end43-_ZN20HourlyWorkerOvertimeC2EPKcS1_f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN20HourlyWorkerOvertime8EarningsEv # -- Begin function _ZN20HourlyWorkerOvertime8EarningsEv
	.p2align	5
	.type	_ZN20HourlyWorkerOvertime8EarningsEv,@function
_ZN20HourlyWorkerOvertime8EarningsEv:   # @_ZN20HourlyWorkerOvertime8EarningsEv
# %bb.0:
	fld.s	$fa0, $a0, 32
	lu12i.w	$a1, 270848
	movgr2fr.w	$fa1, $a1
	fcmp.clt.s	$fcc0, $fa1, $fa0
	lu12i.w	$a1, -253440
	lu32i.d	$a1, 0
	movgr2fr.w	$fa1, $a1
	fadd.s	$fa1, $fa0, $fa1
	fld.s	$fa2, $a0, 28
	fcvt.d.s	$fa1, $fa1
	movgr2fr.d	$fa3, $zero
	fsel	$fa1, $fa3, $fa1, $fcc0
	fmul.s	$fa0, $fa0, $fa2
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa2, $fa2
	vldi	$vr3, -928
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	ret
.Lfunc_end44:
	.size	_ZN20HourlyWorkerOvertime8EarningsEv, .Lfunc_end44-_ZN20HourlyWorkerOvertime8EarningsEv
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB45_34
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a3, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a0, -24
	add.d	$a4, $a3, $a4
	ld.w	$a5, $a4, 24
	ori	$a5, $a5, 1028
	st.w	$a5, $a4, 24
	ld.d	$a4, $a0, -24
	ld.d	$a0, $a1, 8
	add.d	$a1, $a3, $a4
	st.d	$a2, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	addi.d	$a1, $sp, 208
	addi.d	$a2, $sp, 128
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 44
	pcaddu18i	$ra, %call36(__isoc23_scanf)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 4
	bne	$a0, $s4, .LBB45_32
# %bb.2:                                # %.lr.ph.preheader
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ori	$s5, $zero, 6
	pcalau12i	$a0, %pc_hi20(.LJTI45_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI45_0)
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$s3, $a0, %pc_lo12(_ZTV8Employee+16)
	pcalau12i	$a0, %pc_hi20(_ZTV4Boss+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4Boss+16)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV11PieceWorker+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV11PieceWorker+16)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV20HourlyWorkerOvertime+16)
	addi.d	$s8, $a0, %pc_lo12(_ZTV20HourlyWorkerOvertime+16)
	pcalau12i	$a0, %pc_hi20(_ZTV22HourlyWorkerNoOvertime+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV22HourlyWorkerNoOvertime+16)
	move	$s7, $zero
	b	.LBB45_5
.LBB45_3:                               #   in Loop: Header=BB45_5 Depth=1
	addi.d	$a1, $sp, 40
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc23_scanf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 44
	fld.s	$fa1, $sp, 40
	move	$s2, $a0
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 48
	pcaddu18i	$ra, %call36(_ZN18CommissionedWorkerC2EPKcS1_ff)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB45_4:                               #   in Loop: Header=BB45_5 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s2, $a0, 0
	st.d	$fp, $a0, 8
	addi.d	$a1, $sp, 208
	addi.d	$a2, $sp, 128
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__isoc23_scanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB45_20
.LBB45_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $sp, 208
	addi.d	$a0, $a2, -1
	bltu	$s5, $a0, .LBB45_35
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB45_5 Depth=1
	move	$fp, $s7
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s6, $a0
	add.d	$a0, $s6, $a0
	jr	$a0
.LBB45_7:                               #   in Loop: Header=BB45_5 Depth=1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	fld.s	$fs1, $sp, 44
	move	$s2, $a0
	st.d	$s3, $a0, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB45_5 Depth=1
	st.d	$a0, $s2, 8
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.9:                                # %_ZN4BossC2EPKcS1_f.exit
                                        #   in Loop: Header=BB45_5 Depth=1
	st.d	$a0, $s2, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s2, 0
	fmax.s	$fa0, $fs1, $fs0
	fst.s	$fa0, $s2, 28
	lu12i.w	$a0, 273536
	b	.LBB45_19
.LBB45_10:                              #   in Loop: Header=BB45_5 Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	fld.s	$fs1, $sp, 44
	move	$s2, $a0
	st.d	$s3, $a0, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.11:                               # %.noexc20
                                        #   in Loop: Header=BB45_5 Depth=1
	st.d	$a0, $s2, 8
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.12:                               # %_ZN22HourlyWorkerNoOvertimeC2EPKcS1_f.exit
                                        #   in Loop: Header=BB45_5 Depth=1
	st.d	$a0, $s2, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	fmax.s	$fa0, $fs1, $fs0
	fst.s	$fa0, $s2, 28
	lu12i.w	$a0, 258048
	st.w	$a0, $s2, 24
	st.w	$zero, $s2, 32
	st.d	$s1, $s2, 0
	b	.LBB45_4
.LBB45_13:                              #   in Loop: Header=BB45_5 Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	fld.s	$fs1, $sp, 44
	move	$s2, $a0
	st.d	$s3, $a0, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.14:                               # %.noexc23
                                        #   in Loop: Header=BB45_5 Depth=1
	st.d	$a0, $s2, 8
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
.Ltmp10:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.15:                               # %_ZN20HourlyWorkerOvertimeC2EPKcS1_f.exit
                                        #   in Loop: Header=BB45_5 Depth=1
	st.d	$a0, $s2, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	fmax.s	$fa0, $fs1, $fs0
	fst.s	$fa0, $s2, 28
	lu12i.w	$a0, 258048
	st.w	$a0, $s2, 24
	st.w	$zero, $s2, 32
	st.d	$s8, $s2, 0
	b	.LBB45_4
.LBB45_16:                              #   in Loop: Header=BB45_5 Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	fld.s	$fs1, $sp, 44
	move	$s2, $a0
	st.d	$s3, $a0, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.17:                               # %.noexc25
                                        #   in Loop: Header=BB45_5 Depth=1
	st.d	$a0, $s2, 8
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.18:                               # %_ZN11PieceWorkerC2EPKcS1_f.exit
                                        #   in Loop: Header=BB45_5 Depth=1
	st.d	$a0, $s2, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	fmax.s	$fa0, $fs1, $fs0
	fst.s	$fa0, $s2, 28
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $s2, 0
	lu12i.w	$a0, 268032
.LBB45_19:                              #   in Loop: Header=BB45_5 Depth=1
	st.w	$a0, $s2, 24
	b	.LBB45_4
.LBB45_20:                              # %.preheader
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blez	$a0, .LBB45_32
# %bb.21:                               # %.lr.ph.i.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	move	$s2, $zero
	ori	$s6, $zero, 10
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$s8, $a0, 2457
	b	.LBB45_23
	.p2align	4, , 16
.LBB45_22:                              # %_ZN7Company19AcrossTheBoardRaiseEi.exit
                                        #   in Loop: Header=BB45_23 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB45_32
.LBB45_23:                              # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_24 Depth 2
                                        #     Child Loop BB45_27 Depth 2
                                        #     Child Loop BB45_31 Depth 2
	move	$s5, $s2
	move	$s2, $s7
	.p2align	4, , 16
.LBB45_24:                              # %.lr.ph.i
                                        #   Parent Loop BB45_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 40
	jirl	$ra, $a1, 0
	ld.d	$s2, $s2, 8
	bnez	$s2, .LBB45_24
# %bb.25:                               # %.lr.ph.i29.preheader
                                        #   in Loop: Header=BB45_23 Depth=1
	addi.w	$s2, $s5, 1
	move	$s3, $s7
	b	.LBB45_27
	.p2align	4, , 16
.LBB45_26:                              #   in Loop: Header=BB45_27 Depth=2
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 8
	beqz	$s3, .LBB45_29
.LBB45_27:                              # %.lr.ph.i29
                                        #   Parent Loop BB45_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s3, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s4
	jirl	$ra, $a1, 0
	ori	$a2, $zero, 9
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s4
	jirl	$ra, $a1, 0
	fcvt.d.s	$fa0, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a2, $zero, 9
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$a1, $a1, 16
	st.b	$s6, $sp, 215
	beqz	$a1, .LBB45_26
# %bb.28:                               #   in Loop: Header=BB45_27 Depth=2
	addi.d	$a1, $sp, 215
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 8
	bnez	$s3, .LBB45_27
.LBB45_29:                              # %_ZN7Company17PrintWithEarningsEv.exit
                                        #   in Loop: Header=BB45_23 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a0, $s5, $a0
	rotri.w	$a0, $a0, 1
	bltu	$s8, $a0, .LBB45_22
# %bb.30:                               # %.lr.ph.i35.preheader
                                        #   in Loop: Header=BB45_23 Depth=1
	move	$s3, $s7
	.p2align	4, , 16
.LBB45_31:                              # %.lr.ph.i35
                                        #   Parent Loop BB45_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 32
	ori	$a1, $zero, 1
	jirl	$ra, $a2, 0
	ld.d	$s3, $s3, 8
	bnez	$s3, .LBB45_31
	b	.LBB45_22
.LBB45_32:
	move	$a0, $zero
.LBB45_33:                              # %.loopexit
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
.LBB45_34:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB45_33
.LBB45_35:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB45_33
.LBB45_36:
.Ltmp2:                                 # EH_LABEL
	b	.LBB45_41
.LBB45_37:
.Ltmp22:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB45_38:
.Ltmp17:                                # EH_LABEL
	b	.LBB45_41
.LBB45_39:
.Ltmp7:                                 # EH_LABEL
	b	.LBB45_41
.LBB45_40:
.Ltmp12:                                # EH_LABEL
.LBB45_41:
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end45:
	.size	main, .Lfunc_end45-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI45_0:
	.word	.LBB45_7-.LJTI45_0
	.word	.LBB45_3-.LJTI45_0
	.word	.LBB45_35-.LJTI45_0
	.word	.LBB45_16-.LJTI45_0
	.word	.LBB45_35-.LJTI45_0
	.word	.LBB45_13-.LJTI45_0
	.word	.LBB45_10-.LJTI45_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table45:
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
	.uleb128 .Ltmp18-.Ltmp1                 #   Call between .Ltmp1 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp13-.Ltmp21                #   Call between .Ltmp21 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp8-.Ltmp16                 #   Call between .Ltmp16 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 12 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 13 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp3-.Ltmp11                 #   Call between .Ltmp11 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 16 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 17 <<
	.uleb128 .Ltmp5-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 18 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 19 <<
	.uleb128 .Lfunc_end45-.Ltmp6            #   Call between .Ltmp6 and .Lfunc_end45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN4BossD0Ev,"axG",@progbits,_ZN4BossD0Ev,comdat
	.weak	_ZN4BossD0Ev                    # -- Begin function _ZN4BossD0Ev
	.p2align	5
	.type	_ZN4BossD0Ev,@function
_ZN4BossD0Ev:                           # @_ZN4BossD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV8Employee+16)
	ld.d	$a0, $fp, 8
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB46_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB46_2:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB46_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB46_4:                               # %_ZN8EmployeeD2Ev.exit
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end46:
	.size	_ZN4BossD0Ev, .Lfunc_end46-_ZN4BossD0Ev
                                        # -- End function
	.section	.text._ZN18CommissionedWorkerD0Ev,"axG",@progbits,_ZN18CommissionedWorkerD0Ev,comdat
	.weak	_ZN18CommissionedWorkerD0Ev     # -- Begin function _ZN18CommissionedWorkerD0Ev
	.p2align	5
	.type	_ZN18CommissionedWorkerD0Ev,@function
_ZN18CommissionedWorkerD0Ev:            # @_ZN18CommissionedWorkerD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV8Employee+16)
	ld.d	$a0, $fp, 8
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB47_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB47_2:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB47_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB47_4:                               # %_ZN8EmployeeD2Ev.exit
	ori	$a1, $zero, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end47:
	.size	_ZN18CommissionedWorkerD0Ev, .Lfunc_end47-_ZN18CommissionedWorkerD0Ev
                                        # -- End function
	.section	.text._ZN10WageWorkerD0Ev,"axG",@progbits,_ZN10WageWorkerD0Ev,comdat
	.weak	_ZN10WageWorkerD0Ev             # -- Begin function _ZN10WageWorkerD0Ev
	.p2align	5
	.type	_ZN10WageWorkerD0Ev,@function
_ZN10WageWorkerD0Ev:                    # @_ZN10WageWorkerD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end48:
	.size	_ZN10WageWorkerD0Ev, .Lfunc_end48-_ZN10WageWorkerD0Ev
                                        # -- End function
	.section	.text._ZN11PieceWorkerD0Ev,"axG",@progbits,_ZN11PieceWorkerD0Ev,comdat
	.weak	_ZN11PieceWorkerD0Ev            # -- Begin function _ZN11PieceWorkerD0Ev
	.p2align	5
	.type	_ZN11PieceWorkerD0Ev,@function
_ZN11PieceWorkerD0Ev:                   # @_ZN11PieceWorkerD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV8Employee+16)
	ld.d	$a0, $fp, 8
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB49_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB49_2:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB49_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB49_4:                               # %_ZN8EmployeeD2Ev.exit
	ori	$a1, $zero, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end49:
	.size	_ZN11PieceWorkerD0Ev, .Lfunc_end49-_ZN11PieceWorkerD0Ev
                                        # -- End function
	.section	.text._ZN12HourlyWorkerD0Ev,"axG",@progbits,_ZN12HourlyWorkerD0Ev,comdat
	.weak	_ZN12HourlyWorkerD0Ev           # -- Begin function _ZN12HourlyWorkerD0Ev
	.p2align	5
	.type	_ZN12HourlyWorkerD0Ev,@function
_ZN12HourlyWorkerD0Ev:                  # @_ZN12HourlyWorkerD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end50:
	.size	_ZN12HourlyWorkerD0Ev, .Lfunc_end50-_ZN12HourlyWorkerD0Ev
                                        # -- End function
	.section	.text._ZN22HourlyWorkerNoOvertimeD0Ev,"axG",@progbits,_ZN22HourlyWorkerNoOvertimeD0Ev,comdat
	.weak	_ZN22HourlyWorkerNoOvertimeD0Ev # -- Begin function _ZN22HourlyWorkerNoOvertimeD0Ev
	.p2align	5
	.type	_ZN22HourlyWorkerNoOvertimeD0Ev,@function
_ZN22HourlyWorkerNoOvertimeD0Ev:        # @_ZN22HourlyWorkerNoOvertimeD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV8Employee+16)
	ld.d	$a0, $fp, 8
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB51_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB51_2:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB51_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB51_4:                               # %_ZN8EmployeeD2Ev.exit
	ori	$a1, $zero, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end51:
	.size	_ZN22HourlyWorkerNoOvertimeD0Ev, .Lfunc_end51-_ZN22HourlyWorkerNoOvertimeD0Ev
                                        # -- End function
	.text
	.globl	_ZN8EmployeeD2Ev                # -- Begin function _ZN8EmployeeD2Ev
	.p2align	5
	.type	_ZN8EmployeeD2Ev,@function
_ZN8EmployeeD2Ev:                       # @_ZN8EmployeeD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV8Employee+16)
	ld.d	$a0, $fp, 8
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB52_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB52_2:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB52_4
# %bb.3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB52_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end52:
	.size	_ZN8EmployeeD2Ev, .Lfunc_end52-_ZN8EmployeeD2Ev
                                        # -- End function
	.section	.text._ZN20HourlyWorkerOvertimeD0Ev,"axG",@progbits,_ZN20HourlyWorkerOvertimeD0Ev,comdat
	.weak	_ZN20HourlyWorkerOvertimeD0Ev   # -- Begin function _ZN20HourlyWorkerOvertimeD0Ev
	.p2align	5
	.type	_ZN20HourlyWorkerOvertimeD0Ev,@function
_ZN20HourlyWorkerOvertimeD0Ev:          # @_ZN20HourlyWorkerOvertimeD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8Employee+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV8Employee+16)
	ld.d	$a0, $fp, 8
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB53_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB53_2:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB53_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB53_4:                               # %_ZN8EmployeeD2Ev.exit
	ori	$a1, $zero, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end53:
	.size	_ZN20HourlyWorkerOvertimeD0Ev, .Lfunc_end53-_ZN20HourlyWorkerOvertimeD0Ev
                                        # -- End function
	.type	_ZTV8Employee,@object           # @_ZTV8Employee
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV8Employee
	.p2align	3, 0x0
_ZTV8Employee:
	.dword	0
	.dword	_ZTI8Employee
	.dword	_ZN8EmployeeD2Ev
	.dword	_ZN8EmployeeD0Ev
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.size	_ZTV8Employee, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" earned $"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" in week "
	.size	.L.str.1, 10

	.type	_ZTV4Boss,@object               # @_ZTV4Boss
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV4Boss
	.p2align	3, 0x0
_ZTV4Boss:
	.dword	0
	.dword	_ZTI4Boss
	.dword	_ZN8EmployeeD2Ev
	.dword	_ZN4BossD0Ev
	.dword	_ZN4Boss8EarningsEv
	.dword	_ZN4Boss5PrintEv
	.dword	_ZN4Boss5RaiseEi
	.dword	_ZN4Boss7NewWeekEv
	.size	_ZTV4Boss, 64

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"               Boss: "
	.size	.L.str.2, 22

	.type	_ZTV18CommissionedWorker,@object # @_ZTV18CommissionedWorker
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV18CommissionedWorker
	.p2align	3, 0x0
_ZTV18CommissionedWorker:
	.dword	0
	.dword	_ZTI18CommissionedWorker
	.dword	_ZN8EmployeeD2Ev
	.dword	_ZN18CommissionedWorkerD0Ev
	.dword	_ZN18CommissionedWorker8EarningsEv
	.dword	_ZN18CommissionedWorker5PrintEv
	.dword	_ZN18CommissionedWorker5RaiseEi
	.dword	_ZN18CommissionedWorker7NewWeekEv
	.size	_ZTV18CommissionedWorker, 64

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Commissioned Worker: "
	.size	.L.str.3, 22

	.type	_ZTV10WageWorker,@object        # @_ZTV10WageWorker
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV10WageWorker
	.p2align	3, 0x0
_ZTV10WageWorker:
	.dword	0
	.dword	_ZTI10WageWorker
	.dword	_ZN8EmployeeD2Ev
	.dword	_ZN10WageWorkerD0Ev
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZN10WageWorker5RaiseEi
	.dword	__cxa_pure_virtual
	.size	_ZTV10WageWorker, 64

	.type	_ZTV11PieceWorker,@object       # @_ZTV11PieceWorker
	.globl	_ZTV11PieceWorker
	.p2align	3, 0x0
_ZTV11PieceWorker:
	.dword	0
	.dword	_ZTI11PieceWorker
	.dword	_ZN8EmployeeD2Ev
	.dword	_ZN11PieceWorkerD0Ev
	.dword	_ZN11PieceWorker8EarningsEv
	.dword	_ZN11PieceWorker5PrintEv
	.dword	_ZN10WageWorker5RaiseEi
	.dword	_ZN11PieceWorker7NewWeekEv
	.size	_ZTV11PieceWorker, 64

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"       Piece Worker: "
	.size	.L.str.4, 22

	.type	_ZTV12HourlyWorker,@object      # @_ZTV12HourlyWorker
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV12HourlyWorker
	.p2align	3, 0x0
_ZTV12HourlyWorker:
	.dword	0
	.dword	_ZTI12HourlyWorker
	.dword	_ZN8EmployeeD2Ev
	.dword	_ZN12HourlyWorkerD0Ev
	.dword	__cxa_pure_virtual
	.dword	_ZN12HourlyWorker5PrintEv
	.dword	_ZN12HourlyWorker5RaiseEi
	.dword	_ZN12HourlyWorker7NewWeekEv
	.size	_ZTV12HourlyWorker, 64

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"      Hourly Worker: "
	.size	.L.str.5, 22

	.type	_ZTV22HourlyWorkerNoOvertime,@object # @_ZTV22HourlyWorkerNoOvertime
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV22HourlyWorkerNoOvertime
	.p2align	3, 0x0
_ZTV22HourlyWorkerNoOvertime:
	.dword	0
	.dword	_ZTI22HourlyWorkerNoOvertime
	.dword	_ZN8EmployeeD2Ev
	.dword	_ZN22HourlyWorkerNoOvertimeD0Ev
	.dword	_ZN22HourlyWorkerNoOvertime8EarningsEv
	.dword	_ZN12HourlyWorker5PrintEv
	.dword	_ZN12HourlyWorker5RaiseEi
	.dword	_ZN12HourlyWorker7NewWeekEv
	.size	_ZTV22HourlyWorkerNoOvertime, 64

	.type	_ZTV20HourlyWorkerOvertime,@object # @_ZTV20HourlyWorkerOvertime
	.globl	_ZTV20HourlyWorkerOvertime
	.p2align	3, 0x0
_ZTV20HourlyWorkerOvertime:
	.dword	0
	.dword	_ZTI20HourlyWorkerOvertime
	.dword	_ZN8EmployeeD2Ev
	.dword	_ZN20HourlyWorkerOvertimeD0Ev
	.dword	_ZN20HourlyWorkerOvertime8EarningsEv
	.dword	_ZN12HourlyWorker5PrintEv
	.dword	_ZN12HourlyWorker5RaiseEi
	.dword	_ZN12HourlyWorker7NewWeekEv
	.size	_ZTV20HourlyWorkerOvertime, 64

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"usage: %s <number_of_weeks>\n"
	.size	.L.str.6, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"employ"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%d%s%s%f"
	.size	.L.str.8, 9

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%f"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"INVALID EMPLOYEE CODE(%d)\n"
	.size	.L.str.10, 27

	.type	_ZTI8Employee,@object           # @_ZTI8Employee
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI8Employee
	.p2align	3, 0x0
_ZTI8Employee:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS8Employee
	.size	_ZTI8Employee, 16

	.type	_ZTS8Employee,@object           # @_ZTS8Employee
	.section	.rodata,"a",@progbits
	.globl	_ZTS8Employee
_ZTS8Employee:
	.asciz	"8Employee"
	.size	_ZTS8Employee, 10

	.type	_ZTI4Boss,@object               # @_ZTI4Boss
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI4Boss
	.p2align	3, 0x0
_ZTI4Boss:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS4Boss
	.dword	_ZTI8Employee
	.size	_ZTI4Boss, 24

	.type	_ZTS4Boss,@object               # @_ZTS4Boss
	.section	.rodata,"a",@progbits
	.globl	_ZTS4Boss
_ZTS4Boss:
	.asciz	"4Boss"
	.size	_ZTS4Boss, 6

	.type	_ZTI18CommissionedWorker,@object # @_ZTI18CommissionedWorker
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI18CommissionedWorker
	.p2align	3, 0x0
_ZTI18CommissionedWorker:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18CommissionedWorker
	.dword	_ZTI8Employee
	.size	_ZTI18CommissionedWorker, 24

	.type	_ZTS18CommissionedWorker,@object # @_ZTS18CommissionedWorker
	.section	.rodata,"a",@progbits
	.globl	_ZTS18CommissionedWorker
_ZTS18CommissionedWorker:
	.asciz	"18CommissionedWorker"
	.size	_ZTS18CommissionedWorker, 21

	.type	_ZTI10WageWorker,@object        # @_ZTI10WageWorker
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI10WageWorker
	.p2align	3, 0x0
_ZTI10WageWorker:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS10WageWorker
	.dword	_ZTI8Employee
	.size	_ZTI10WageWorker, 24

	.type	_ZTS10WageWorker,@object        # @_ZTS10WageWorker
	.section	.rodata,"a",@progbits
	.globl	_ZTS10WageWorker
_ZTS10WageWorker:
	.asciz	"10WageWorker"
	.size	_ZTS10WageWorker, 13

	.type	_ZTI11PieceWorker,@object       # @_ZTI11PieceWorker
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI11PieceWorker
	.p2align	3, 0x0
_ZTI11PieceWorker:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS11PieceWorker
	.dword	_ZTI10WageWorker
	.size	_ZTI11PieceWorker, 24

	.type	_ZTS11PieceWorker,@object       # @_ZTS11PieceWorker
	.section	.rodata,"a",@progbits
	.globl	_ZTS11PieceWorker
_ZTS11PieceWorker:
	.asciz	"11PieceWorker"
	.size	_ZTS11PieceWorker, 14

	.type	_ZTI12HourlyWorker,@object      # @_ZTI12HourlyWorker
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI12HourlyWorker
	.p2align	3, 0x0
_ZTI12HourlyWorker:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS12HourlyWorker
	.dword	_ZTI10WageWorker
	.size	_ZTI12HourlyWorker, 24

	.type	_ZTS12HourlyWorker,@object      # @_ZTS12HourlyWorker
	.section	.rodata,"a",@progbits
	.globl	_ZTS12HourlyWorker
_ZTS12HourlyWorker:
	.asciz	"12HourlyWorker"
	.size	_ZTS12HourlyWorker, 15

	.type	_ZTI22HourlyWorkerNoOvertime,@object # @_ZTI22HourlyWorkerNoOvertime
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI22HourlyWorkerNoOvertime
	.p2align	3, 0x0
_ZTI22HourlyWorkerNoOvertime:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS22HourlyWorkerNoOvertime
	.dword	_ZTI12HourlyWorker
	.size	_ZTI22HourlyWorkerNoOvertime, 24

	.type	_ZTS22HourlyWorkerNoOvertime,@object # @_ZTS22HourlyWorkerNoOvertime
	.section	.rodata,"a",@progbits
	.globl	_ZTS22HourlyWorkerNoOvertime
_ZTS22HourlyWorkerNoOvertime:
	.asciz	"22HourlyWorkerNoOvertime"
	.size	_ZTS22HourlyWorkerNoOvertime, 25

	.type	_ZTI20HourlyWorkerOvertime,@object # @_ZTI20HourlyWorkerOvertime
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI20HourlyWorkerOvertime
	.p2align	3, 0x0
_ZTI20HourlyWorkerOvertime:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS20HourlyWorkerOvertime
	.dword	_ZTI12HourlyWorker
	.size	_ZTI20HourlyWorkerOvertime, 24

	.type	_ZTS20HourlyWorkerOvertime,@object # @_ZTS20HourlyWorkerOvertime
	.section	.rodata,"a",@progbits
	.globl	_ZTS20HourlyWorkerOvertime
_ZTS20HourlyWorkerOvertime:
	.asciz	"20HourlyWorkerOvertime"
	.size	_ZTS20HourlyWorkerOvertime, 23

	.globl	_ZN8EmployeeD1Ev
	.type	_ZN8EmployeeD1Ev,@function
_ZN8EmployeeD1Ev = _ZN8EmployeeD2Ev
	.globl	_ZN12EmployeeNodeC1EP8EmployeePS_
	.type	_ZN12EmployeeNodeC1EP8EmployeePS_,@function
_ZN12EmployeeNodeC1EP8EmployeePS_ = _ZN12EmployeeNodeC2EP8EmployeePS_
	.globl	_ZN7CompanyC1Ev
	.type	_ZN7CompanyC1Ev,@function
_ZN7CompanyC1Ev = _ZN7CompanyC2Ev
	.globl	_ZN4BossC1EPKcS1_f
	.type	_ZN4BossC1EPKcS1_f,@function
_ZN4BossC1EPKcS1_f = _ZN4BossC2EPKcS1_f
	.globl	_ZN18CommissionedWorkerC1EPKcS1_ff
	.type	_ZN18CommissionedWorkerC1EPKcS1_ff,@function
_ZN18CommissionedWorkerC1EPKcS1_ff = _ZN18CommissionedWorkerC2EPKcS1_ff
	.globl	_ZN11PieceWorkerC1EPKcS1_f
	.type	_ZN11PieceWorkerC1EPKcS1_f,@function
_ZN11PieceWorkerC1EPKcS1_f = _ZN11PieceWorkerC2EPKcS1_f
	.globl	_ZN22HourlyWorkerNoOvertimeC1EPKcS1_f
	.type	_ZN22HourlyWorkerNoOvertimeC1EPKcS1_f,@function
_ZN22HourlyWorkerNoOvertimeC1EPKcS1_f = _ZN22HourlyWorkerNoOvertimeC2EPKcS1_f
	.globl	_ZN20HourlyWorkerOvertimeC1EPKcS1_f
	.type	_ZN20HourlyWorkerOvertimeC1EPKcS1_f,@function
_ZN20HourlyWorkerOvertimeC1EPKcS1_f = _ZN20HourlyWorkerOvertimeC2EPKcS1_f
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
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTI8Employee
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8Employee
	.addrsig_sym _ZTI4Boss
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS4Boss
	.addrsig_sym _ZTI18CommissionedWorker
	.addrsig_sym _ZTS18CommissionedWorker
	.addrsig_sym _ZTI10WageWorker
	.addrsig_sym _ZTS10WageWorker
	.addrsig_sym _ZTI11PieceWorker
	.addrsig_sym _ZTS11PieceWorker
	.addrsig_sym _ZTI12HourlyWorker
	.addrsig_sym _ZTS12HourlyWorker
	.addrsig_sym _ZTI22HourlyWorkerNoOvertime
	.addrsig_sym _ZTS22HourlyWorkerNoOvertime
	.addrsig_sym _ZTI20HourlyWorkerOvertime
	.addrsig_sym _ZTS20HourlyWorkerOvertime
