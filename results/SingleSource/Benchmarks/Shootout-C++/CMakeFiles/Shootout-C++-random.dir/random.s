	.file	"random.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_3
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bnez	$a1, .LBB0_4
# %bb.2:
	movgr2fr.d	$fa0, $zero
	b	.LBB0_7
.LBB0_3:
	lu12i.w	$a0, 97656
	ori	$a0, $a0, 1024
.LBB0_4:                                # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(_ZZ10gen_randomdE4last)
	ld.d	$a4, $a1, %pc_lo12(_ZZ10gen_randomdE4last)
	ori	$a2, $zero, 3877
	lu12i.w	$a3, 7
	ori	$a3, $a3, 901
	lu12i.w	$a5, -10549
	ori	$a5, $a5, 3729
	lu32i.d	$a5, -86783
	lu52i.d	$a5, $a5, 958
	lu12i.w	$a6, 34
	ori	$a6, $a6, 704
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, -1
	mul.d	$a4, $a4, $a2
	add.d	$a4, $a4, $a3
	mulh.d	$a7, $a4, $a5
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 15
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a6
	sub.d	$a4, $a4, $a7
	bnez	$a0, .LBB0_5
# %bb.6:                                # %._crit_edge
	st.d	$a4, $a1, %pc_lo12(_ZZ10gen_randomdE4last)
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa1, $a1
	fmul.d	$fa0, $fa0, $fa1
	lu32i.d	$a0, 71168
	lu52i.d	$a0, $a0, 1040
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
.LBB0_7:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, -24
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 9
	st.d	$a3, $a2, 8
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 24
	ori	$a2, $a2, 4
	st.w	$a2, $a1, 24
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB0_12
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB0_10
# %bb.9:
	ld.bu	$a1, $fp, 67
	b	.LBB0_11
.LBB0_10:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB0_11:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_12:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	_ZZ10gen_randomdE4last,@object  # @_ZZ10gen_randomdE4last
	.section	.data._ZZ10gen_randomdE4last,"awG",@progbits,_ZZ10gen_randomdE4last,comdat
	.weak	_ZZ10gen_randomdE4last
	.p2align	3, 0x0
_ZZ10gen_randomdE4last:
	.dword	42                              # 0x2a
	.size	_ZZ10gen_randomdE4last, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZSt4cout
