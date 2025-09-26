	.file	"Time.cpp"
	.text
	.globl	_ZN8NWindows5NTime17DosTimeToFileTimeEjR9_FILETIME # -- Begin function _ZN8NWindows5NTime17DosTimeToFileTimeEjR9_FILETIME
	.p2align	5
	.type	_ZN8NWindows5NTime17DosTimeToFileTimeEjR9_FILETIME,@function
_ZN8NWindows5NTime17DosTimeToFileTimeEjR9_FILETIME: # @_ZN8NWindows5NTime17DosTimeToFileTimeEjR9_FILETIME
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a2, $a1
	bstrpick.d	$a3, $a0, 31, 16
	bstrpick.d	$a1, $a0, 15, 0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(DosDateTimeToFileTime)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN8NWindows5NTime17DosTimeToFileTimeEjR9_FILETIME, .Lfunc_end0-_ZN8NWindows5NTime17DosTimeToFileTimeEjR9_FILETIME
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NWindows5NTime17FileTimeToDosTimeERK9_FILETIMERj # -- Begin function _ZN8NWindows5NTime17FileTimeToDosTimeERK9_FILETIMERj
	.p2align	5
	.type	_ZN8NWindows5NTime17FileTimeToDosTimeERK9_FILETIMERj,@function
_ZN8NWindows5NTime17FileTimeToDosTimeERK9_FILETIMERj: # @_ZN8NWindows5NTime17FileTimeToDosTimeERK9_FILETIMERj
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
	addi.d	$a1, $sp, 6
	addi.d	$a2, $sp, 4
	pcaddu18i	$ra, %call36(FileTimeToDosDateTime)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.h	$a1, $sp, 6
	ld.hu	$a2, $sp, 4
	slli.d	$a1, $a1, 16
	b	.LBB1_3
.LBB1_2:
	ld.wu	$a1, $s0, 4
	srli.d	$a1, $a1, 22
	ori	$a2, $zero, 6
	sltu	$a1, $a2, $a1
	lu12i.w	$a2, 528
	masknez	$a2, $a2, $a1
	lu12i.w	$a3, -1541
	ori	$a3, $a3, 3965
	maskeqz	$a1, $a3, $a1
.LBB1_3:
	or	$a1, $a1, $a2
	sltu	$a0, $zero, $a0
	st.w	$a1, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	_ZN8NWindows5NTime17FileTimeToDosTimeERK9_FILETIMERj, .Lfunc_end1-_ZN8NWindows5NTime17FileTimeToDosTimeERK9_FILETIMERj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NWindows5NTime18UnixTimeToFileTimeEjR9_FILETIME # -- Begin function _ZN8NWindows5NTime18UnixTimeToFileTimeEjR9_FILETIME
	.p2align	5
	.type	_ZN8NWindows5NTime18UnixTimeToFileTimeEjR9_FILETIME,@function
_ZN8NWindows5NTime18UnixTimeToFileTimeEjR9_FILETIME: # @_ZN8NWindows5NTime18UnixTimeToFileTimeEjR9_FILETIME
# %bb.0:
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a2, 2441
	ori	$a2, $a2, 1664
	mul.d	$a0, $a0, $a2
	lu12i.w	$a2, -175128
	lu32i.d	$a2, -151074
	lu52i.d	$a2, $a2, 25
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 0
	ret
.Lfunc_end2:
	.size	_ZN8NWindows5NTime18UnixTimeToFileTimeEjR9_FILETIME, .Lfunc_end2-_ZN8NWindows5NTime18UnixTimeToFileTimeEjR9_FILETIME
                                        # -- End function
	.globl	_ZN8NWindows5NTime18FileTimeToUnixTimeERK9_FILETIMERj # -- Begin function _ZN8NWindows5NTime18FileTimeToUnixTimeERK9_FILETIMERj
	.p2align	5
	.type	_ZN8NWindows5NTime18FileTimeToUnixTimeERK9_FILETIMERj,@function
_ZN8NWindows5NTime18FileTimeToUnixTimeERK9_FILETIMERj: # @_ZN8NWindows5NTime18FileTimeToUnixTimeERK9_FILETIMERj
# %bb.0:
	ld.d	$a0, $a0, 0
	lu12i.w	$a2, -175128
	lu32i.d	$a2, -151074
	lu52i.d	$a2, $a2, 25
	bgeu	$a0, $a2, .LBB3_2
# %bb.1:
	move	$a0, $zero
	st.w	$zero, $a1, 0
	ret
.LBB3_2:
	lu12i.w	$a2, 175128
	lu32i.d	$a2, 151073
	lu52i.d	$a3, $a2, -26
	addi.w	$a2, $zero, -1
	add.d	$a0, $a0, $a3
	move	$a3, $a2
	lu32i.d	$a3, -485761
	lu52i.d	$a3, $a3, 9
	bgeu	$a3, $a0, .LBB3_4
# %bb.3:
	move	$a0, $zero
	st.w	$a2, $a1, 0
	ret
.LBB3_4:
	lu12i.w	$a2, -108636
	ori	$a2, $a2, 701
	lu32i.d	$a2, -27435
	lu52i.d	$a2, $a2, -661
	mulh.du	$a0, $a0, $a2
	srli.d	$a2, $a0, 23
	ori	$a0, $zero, 1
	st.w	$a2, $a1, 0
	ret
.Lfunc_end3:
	.size	_ZN8NWindows5NTime18FileTimeToUnixTimeERK9_FILETIMERj, .Lfunc_end3-_ZN8NWindows5NTime18FileTimeToUnixTimeERK9_FILETIMERj
                                        # -- End function
	.globl	_ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy # -- Begin function _ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy
	.p2align	5
	.type	_ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy,@function
_ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy: # @_ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy
# %bb.0:
	move	$a7, $a0
	addi.w	$t1, $a0, -1601
	lu12i.w	$a0, 2
	ori	$a0, $a0, 207
	sltu	$a0, $t1, $a0
	addi.w	$t0, $a1, -1
	sltui	$a1, $t0, 12
	and	$a0, $a0, $a1
	addi.w	$a1, $a2, -1
	sltui	$a2, $a1, 31
	and	$a0, $a0, $a2
	sltui	$a2, $a3, 24
	and	$a0, $a2, $a0
	sltui	$a2, $a4, 60
	and	$a0, $a2, $a0
	sltui	$a2, $a5, 60
	and	$a0, $a2, $a0
	st.d	$zero, $a6, 0
	beqz	$a0, .LBB4_14
# %bb.1:
	addi.d	$sp, $sp, -16
	ori	$a2, $zero, 365
	mul.d	$a2, $t1, $a2
	bstrpick.d	$t2, $t1, 31, 2
	add.d	$a2, $a2, $t2
	bstrpick.d	$t2, $t1, 15, 2
	bstrpick.d	$t2, $t2, 61, 0
	lu12i.w	$t3, 1
	ori	$t3, $t3, 1147
	mul.d	$t2, $t2, $t3
	srli.d	$t2, $t2, 17
	sub.d	$a2, $a2, $t2
	bstrpick.d	$t1, $t1, 15, 4
	ori	$t2, $zero, 2622
	mul.d	$t1, $t1, $t2
	srli.d	$t1, $t1, 16
	add.w	$a2, $a2, $t1
	pcalau12i	$t1, %pc_hi20(.L__const._ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy.ms)
	addi.d	$t1, $t1, %pc_lo12(.L__const._ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy.ms)
	ld.w	$t2, $t1, 8
	ld.d	$t1, $t1, 0
	st.w	$t2, $sp, 8
	andi	$t2, $a7, 3
	st.d	$t1, $sp, 0
	bnez	$t2, .LBB4_5
# %bb.2:
	bstrpick.d	$a7, $a7, 15, 0
	lu12i.w	$t1, -251659
	ori	$t1, $t1, 3113
	lu32i.d	$t1, -251659
	lu52i.d	$t1, $t1, -1803
	mul.d	$t1, $a7, $t1
	rotri.d	$t1, $t1, 2
	lu12i.w	$t2, -41944
	ori	$t2, $t2, 3932
	lu32i.d	$t2, -41944
	lu52i.d	$t2, $t2, 40
	bltu	$t2, $t1, .LBB4_4
# %bb.3:
	lu12i.w	$t1, 251658
	ori	$t1, $t1, 984
	lu32i.d	$t1, 251658
	lu52i.d	$t1, $t1, 10
	mulh.du	$t1, $a7, $t1
	ori	$t2, $zero, 400
	mul.d	$t1, $t1, $t2
	sub.d	$a7, $a7, $t1
	bnez	$a7, .LBB4_5
.LBB4_4:
	ori	$a7, $zero, 29
	st.b	$a7, $sp, 1
.LBB4_5:
	beqz	$t0, .LBB4_13
# %bb.6:                                # %.lr.ph.preheader
	ori	$t1, $zero, 8
	bstrpick.d	$a7, $t0, 31, 0
	bgeu	$t0, $t1, .LBB4_8
# %bb.7:
	move	$t0, $zero
	b	.LBB4_11
.LBB4_8:                                # %vector.ph
	bstrpick.d	$t0, $a7, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$t0, $t0, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a2, 0
	addi.d	$a2, $sp, 4
	move	$t1, $t0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB4_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $a2, -4
	ld.w	$t3, $a2, 0
	vinsgr2vr.w	$vr3, $t2, 0
	vinsgr2vr.w	$vr4, $t3, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t1, $t1, -8
	addi.d	$a2, $a2, 8
	bnez	$t1, .LBB4_9
# %bb.10:                               # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$t0, $a7, .LBB4_13
.LBB4_11:                               # %.lr.ph.preheader73
	addi.d	$t1, $sp, 0
	add.d	$t1, $t1, $t0
	sub.d	$a7, $a7, $t0
	.p2align	4, , 16
.LBB4_12:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $t1, 0
	add.w	$a2, $a2, $t0
	addi.d	$a7, $a7, -1
	addi.d	$t1, $t1, 1
	bnez	$a7, .LBB4_12
.LBB4_13:                               # %._crit_edge
	add.d	$a1, $a2, $a1
	slli.d	$a2, $a1, 4
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 60
	mul.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a4
	mul.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a5
	st.d	$a1, $a6, 0
	addi.d	$sp, $sp, 16
.LBB4_14:
	ret
.Lfunc_end4:
	.size	_ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy, .Lfunc_end4-_ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy
                                        # -- End function
	.globl	_ZN8NWindows5NTime17GetCurUtcFileTimeER9_FILETIME # -- Begin function _ZN8NWindows5NTime17GetCurUtcFileTimeER9_FILETIME
	.p2align	5
	.type	_ZN8NWindows5NTime17GetCurUtcFileTimeER9_FILETIME,@function
_ZN8NWindows5NTime17GetCurUtcFileTimeER9_FILETIME: # @_ZN8NWindows5NTime17GetCurUtcFileTimeER9_FILETIME
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(GetSystemTime)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(SystemTimeToFileTime)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZN8NWindows5NTime17GetCurUtcFileTimeER9_FILETIME, .Lfunc_end5-_ZN8NWindows5NTime17GetCurUtcFileTimeER9_FILETIME
	.cfi_endproc
                                        # -- End function
	.type	.L__const._ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy.ms,@object # @__const._ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy.ms
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const._ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy.ms:
	.ascii	"\037\034\037\036\037\036\037\037\036\037\036\037"
	.size	.L__const._ZN8NWindows5NTime19GetSecondsSince1601EjjjjjjRy.ms, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
