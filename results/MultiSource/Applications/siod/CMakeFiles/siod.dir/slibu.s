	.file	"slibu.c"
	.section	.text.unlikely.,"ax",@progbits
	.globl	lsystem                         # -- Begin function lsystem
	.p2align	5
	.type	lsystem,@function
lsystem:                                # @lsystem
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	lsystem, .Lfunc_end0-lsystem
                                        # -- End function
	.text
	.globl	lgetuid                         # -- Begin function lgetuid
	.p2align	5
	.type	lgetuid,@function
lgetuid:                                # @lgetuid
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getuid)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end1:
	.size	lgetuid, .Lfunc_end1-lgetuid
                                        # -- End function
	.globl	lgetgid                         # -- Begin function lgetgid
	.p2align	5
	.type	lgetgid,@function
lgetgid:                                # @lgetgid
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getgid)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end2:
	.size	lgetgid, .Lfunc_end2-lgetgid
                                        # -- End function
	.globl	lgetcwd                         # -- Begin function lgetcwd
	.p2align	5
	.type	lgetcwd,@function
lgetcwd:                                # @lgetcwd
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -48
	lu12i.w	$a0, 1
	ori	$a1, $a0, 1
	addi.d	$a0, $sp, 23
	pcaddu18i	$ra, %call36(getcwd)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_2
# %bb.1:
	addi.d	$a0, $sp, 23
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 23
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	b	.LBB3_3
.LBB3_2:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB3_3:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 64
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end3:
	.size	lgetcwd, .Lfunc_end3-lgetcwd
                                        # -- End function
	.globl	ldecode_pwent                   # -- Begin function ldecode_pwent
	.p2align	5
	.type	ldecode_pwent,@function
ldecode_pwent:                          # @ldecode_pwent
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
	move	$s2, $a0
	ld.d	$fp, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s2, 8
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s2, 16
	move	$s0, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s2, 20
	move	$s1, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s2, 32
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s2, 24
	move	$s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 40
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 48
	st.d	$a0, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 32
	st.d	$s4, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 16
	st.d	$s5, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a2, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a4, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a6, $a1, %pc_lo12(.L.str.6)
	move	$a1, $fp
	move	$a3, $s0
	move	$a5, $s1
	move	$a7, $s3
	pcaddu18i	$ra, %call36(symalist)
	jirl	$ra, $ra, 0
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
.Lfunc_end4:
	.size	ldecode_pwent, .Lfunc_end4-ldecode_pwent
                                        # -- End function
	.globl	symalist                        # -- Begin function symalist
	.p2align	5
	.type	symalist,@function
symalist:                               # @symalist
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104
	st.d	$a6, $sp, 96
	st.d	$a5, $sp, 88
	st.d	$a4, $sp, 80
	st.d	$a3, $sp, 72
	st.d	$a2, $sp, 64
	st.d	$a1, $sp, 56
	beqz	$a0, .LBB5_4
# %bb.1:
	addi.d	$a1, $sp, 64
	st.d	$a1, $sp, 8
	ld.d	$fp, $sp, 56
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 8
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 8
	ld.d	$a1, $a2, 0
	move	$fp, $a0
	beqz	$a1, .LBB5_5
# %bb.2:                                # %.lr.ph.preheader
	move	$a0, $a1
	move	$s1, $fp
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a2, 8
	addi.d	$a1, $a2, 16
	st.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 8
	move	$a1, $a0
	st.d	$a0, $s1, 16
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 8
	ld.d	$a0, $a2, 0
	move	$s1, $a1
	bnez	$a0, .LBB5_3
	b	.LBB5_5
.LBB5_4:
	move	$fp, $zero
.LBB5_5:
	move	$a0, $fp
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end5:
	.size	symalist, .Lfunc_end5-symalist
                                        # -- End function
	.globl	lencode_pwent                   # -- Begin function lencode_pwent
	.p2align	5
	.type	lencode_pwent,@function
lencode_pwent:                          # @lencode_pwent
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(rintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$s1, $a1, %pc_lo12(.L.str.115)
	move	$a1, $s1
	beqz	$a0, .LBB6_2
# %bb.1:
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB6_2:                                # %strfield.exit
	st.d	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(rintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_4
# %bb.3:
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB6_4:                                # %strfield.exit15
	st.d	$s1, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(rintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_6
# %bb.5:
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB6_7
.LBB6_6:
	move	$a0, $zero
.LBB6_7:                                # %longfield.exit
	st.w	$a0, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(rintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_9
# %bb.8:
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB6_10
.LBB6_9:
	move	$a0, $zero
.LBB6_10:                               # %longfield.exit18
	st.w	$a0, $fp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(rintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$s1, $a1, %pc_lo12(.L.str.115)
	move	$a1, $s1
	beqz	$a0, .LBB6_12
# %bb.11:
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB6_12:                               # %strfield.exit20
	st.d	$a1, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(rintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	beqz	$a1, .LBB6_14
# %bb.13:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
.LBB6_14:                               # %strfield.exit22
	st.d	$a0, $fp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(rintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_16
# %bb.15:
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB6_16:                               # %strfield.exit24
	st.d	$s1, $fp, 40
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	lencode_pwent, .Lfunc_end6-lencode_pwent
                                        # -- End function
	.globl	lgetpwuid                       # -- Begin function lgetpwuid
	.p2align	5
	.type	lgetpwuid,@function
lgetpwuid:                              # @lgetpwuid
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getpwuid)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_2
# %bb.1:
	pcaddu18i	$ra, %call36(ldecode_pwent)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB7_3
.LBB7_2:
	move	$s0, $zero
.LBB7_3:
	addi.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	lgetpwuid, .Lfunc_end7-lgetpwuid
                                        # -- End function
	.globl	lgetpwnam                       # -- Begin function lgetpwnam
	.p2align	5
	.type	lgetpwnam,@function
lgetpwnam:                              # @lgetpwnam
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getpwnam)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_2
# %bb.1:
	pcaddu18i	$ra, %call36(ldecode_pwent)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB8_3
.LBB8_2:
	move	$s0, $zero
.LBB8_3:
	addi.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	lgetpwnam, .Lfunc_end8-lgetpwnam
                                        # -- End function
	.globl	lgetpwent                       # -- Begin function lgetpwent
	.p2align	5
	.type	lgetpwent,@function
lgetpwent:                              # @lgetpwent
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(getpwent)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_2
# %bb.1:
	pcaddu18i	$ra, %call36(ldecode_pwent)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB9_3
.LBB9_2:
	move	$s0, $zero
.LBB9_3:
	addi.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	lgetpwent, .Lfunc_end9-lgetpwent
                                        # -- End function
	.globl	lsetpwent                       # -- Begin function lsetpwent
	.p2align	5
	.type	lsetpwent,@function
lsetpwent:                              # @lsetpwent
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(setpwent)
	jirl	$ra, $ra, 0
	addi.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	lsetpwent, .Lfunc_end10-lsetpwent
                                        # -- End function
	.globl	lendpwent                       # -- Begin function lendpwent
	.p2align	5
	.type	lendpwent,@function
lendpwent:                              # @lendpwent
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(endpwent)
	jirl	$ra, $ra, 0
	addi.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	lendpwent, .Lfunc_end11-lendpwent
                                        # -- End function
	.globl	lsetuid                         # -- Begin function lsetuid
	.p2align	5
	.type	lsetuid,@function
lsetuid:                                # @lsetuid
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(setuid)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB12_2:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end12:
	.size	lsetuid, .Lfunc_end12-lsetuid
                                        # -- End function
	.globl	lseteuid                        # -- Begin function lseteuid
	.p2align	5
	.type	lseteuid,@function
lseteuid:                               # @lseteuid
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(seteuid)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB13_2:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	lseteuid, .Lfunc_end13-lseteuid
                                        # -- End function
	.globl	lgeteuid                        # -- Begin function lgeteuid
	.p2align	5
	.type	lgeteuid,@function
lgeteuid:                               # @lgeteuid
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(geteuid)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end14:
	.size	lgeteuid, .Lfunc_end14-lgeteuid
                                        # -- End function
	.globl	laccess_problem                 # -- Begin function laccess_problem
	.p2align	5
	.type	laccess_problem,@function
laccess_problem:                        # @laccess_problem
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$s5, $zero, 18
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s4, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.LJTI15_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI15_0)
	move	$s3, $zero
	b	.LBB15_3
.LBB15_1:                               #   in Loop: Header=BB15_3 Depth=1
	ori	$s3, $s3, 1
.LBB15_2:                               #   in Loop: Header=BB15_3 Depth=1
	addi.d	$s2, $s2, 1
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	addi.d	$a1, $a0, -102
	bltu	$s5, $a1, .LBB15_7
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	slli.d	$a0, $a1, 2
	ldx.w	$a0, $s6, $a0
	add.d	$a0, $s6, $a0
	jr	$a0
.LBB15_5:                               #   in Loop: Header=BB15_3 Depth=1
	ori	$s3, $s3, 4
	addi.d	$s2, $s2, 1
	b	.LBB15_3
.LBB15_6:                               #   in Loop: Header=BB15_3 Depth=1
	ori	$s3, $s3, 2
	addi.d	$s2, $s2, 1
	b	.LBB15_3
.LBB15_7:                               #   in Loop: Header=BB15_3 Depth=1
	beqz	$a0, .LBB15_9
.LBB15_8:                               #   in Loop: Header=BB15_3 Depth=1
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	b	.LBB15_3
.LBB15_9:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	bltz	$fp, .LBB15_11
# %bb.10:
	move	$a0, $zero
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
.LBB15_11:
	addi.w	$a0, $zero, -1
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
	pcaddu18i	$t8, %call36(llast_c_errmsg)
	jr	$t8
.Lfunc_end15:
	.size	laccess_problem, .Lfunc_end15-laccess_problem
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI15_0:
	.word	.LBB15_2-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_5-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_8-.LJTI15_0
	.word	.LBB15_6-.LJTI15_0
	.word	.LBB15_1-.LJTI15_0
                                        # -- End function
	.text
	.globl	lsymlink                        # -- Begin function lsymlink
	.p2align	5
	.type	lsymlink,@function
lsymlink:                               # @lsymlink
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(symlink)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB16_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	lsymlink, .Lfunc_end16-lsymlink
                                        # -- End function
	.globl	llink                           # -- Begin function llink
	.p2align	5
	.type	llink,@function
llink:                                  # @llink
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(link)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB17_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end17:
	.size	llink, .Lfunc_end17-llink
                                        # -- End function
	.globl	lunlink                         # -- Begin function lunlink
	.p2align	5
	.type	lunlink,@function
lunlink:                                # @lunlink
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB18_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	lunlink, .Lfunc_end18-lunlink
                                        # -- End function
	.globl	lrmdir                          # -- Begin function lrmdir
	.p2align	5
	.type	lrmdir,@function
lrmdir:                                 # @lrmdir
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(rmdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB19_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end19:
	.size	lrmdir, .Lfunc_end19-lrmdir
                                        # -- End function
	.globl	lmkdir                          # -- Begin function lmkdir
	.p2align	5
	.type	lmkdir,@function
lmkdir:                                 # @lmkdir
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB20_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end20:
	.size	lmkdir, .Lfunc_end20-lmkdir
                                        # -- End function
	.globl	lreadlink                       # -- Begin function lreadlink
	.p2align	5
	.type	lreadlink,@function
lreadlink:                              # @lreadlink
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -64
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1
	addi.d	$a1, $sp, 23
	pcaddu18i	$ra, %call36(readlink)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	slli.d	$a0, $a0, 32
	bltz	$a0, .LBB21_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s0, 30, 0
	addi.d	$a1, $sp, 23
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 80
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB21_2:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 80
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end21:
	.size	lreadlink, .Lfunc_end21-lreadlink
                                        # -- End function
	.globl	lrename                         # -- Begin function lrename
	.p2align	5
	.type	lrename,@function
lrename:                                # @lrename
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(rename)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB22_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	lrename, .Lfunc_end22-lrename
                                        # -- End function
	.globl	lrandom                         # -- Begin function lrandom
	.p2align	5
	.type	lrandom,@function
lrandom:                                # @lrandom
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	addi.w	$fp, $a1, 0
	beqz	$a0, .LBB23_2
# %bb.1:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	mod.d	$fp, $fp, $a0
.LBB23_2:
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end23:
	.size	lrandom, .Lfunc_end23-lrandom
                                        # -- End function
	.globl	lsrandom                        # -- Begin function lsrandom
	.p2align	5
	.type	lsrandom,@function
lsrandom:                               # @lsrandom
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(srandom)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end24:
	.size	lsrandom, .Lfunc_end24-lsrandom
                                        # -- End function
	.globl	lfork                           # -- Begin function lfork
	.p2align	5
	.type	lfork,@function
lfork:                                  # @lfork
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fork)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB25_3
# %bb.1:
	bnez	$a0, .LBB25_4
# %bb.2:
	addi.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB25_3:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB25_4:
	addi.w	$a1, $fp, 0
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end25:
	.size	lfork, .Lfunc_end25-lfork
                                        # -- End function
	.globl	list2char                       # -- Begin function list2char
	.p2align	5
	.type	list2char,@function
list2char:                              # @list2char
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
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(llength)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	slli.d	$s4, $a0, 3
	addi.d	$a1, $s4, 8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(mallocl)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	blez	$s0, .LBB26_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB26_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$s2, $a0
	add.d	$s3, $a1, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(mallocl)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	ldx.d	$a1, $a1, $s5
	st.d	$a0, $fp, 0
	move	$a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$s0, $s0, -1
	addi.d	$s5, $s5, 8
	bnez	$s0, .LBB26_2
.LBB26_3:                               # %._crit_edge
	ld.d	$a0, $sp, 8
	stx.d	$zero, $a0, $s4
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
	.size	list2char, .Lfunc_end26-list2char
                                        # -- End function
	.globl	lexec                           # -- Begin function lexec
	.p2align	5
	.type	lexec,@function
lexec:                                  # @lexec
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a2
	move	$s1, $a1
	move	$s0, $a0
	st.d	$zero, $sp, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list2char)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s2, .LBB27_3
# %bb.1:
	addi.d	$a0, $sp, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(list2char)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_3
# %bb.2:
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(execve)
	jirl	$ra, $ra, 0
	b	.LBB27_4
.LBB27_3:                               # %.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(execv)
	jirl	$ra, $ra, 0
.LBB27_4:
	addi.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end27:
	.size	lexec, .Lfunc_end27-lexec
                                        # -- End function
	.globl	lnice                           # -- Begin function lnice
	.p2align	5
	.type	lnice,@function
lnice:                                  # @lnice
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(nice)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$s0, $a0
	bne	$a0, $a1, .LBB28_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB28_2:
	addi.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa0, $fa0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end28:
	.size	lnice, .Lfunc_end28-lnice
                                        # -- End function
	.globl	assemble_options                # -- Begin function assemble_options
	.p2align	5
	.type	assemble_options,@function
assemble_options:                       # @assemble_options
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a7, $sp, 136
	st.d	$a6, $sp, 128
	st.d	$a5, $sp, 120
	st.d	$a4, $sp, 112
	st.d	$a3, $sp, 104
	st.d	$a2, $sp, 96
	st.d	$a1, $sp, 88
	beqz	$a0, .LBB29_12
# %bb.1:
	move	$fp, $a0
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB29_13
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(llength)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 96
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB29_14
.LBB29_3:                               # %.lr.ph.preheader
	move	$s2, $zero
	move	$s1, $zero
	move	$s3, $zero
	addi.d	$a1, $sp, 88
	ori	$s4, $zero, 1
	b	.LBB29_7
	.p2align	4, , 16
.LBB29_4:                               #   in Loop: Header=BB29_7 Depth=1
	addi.w	$a0, $s0, 0
	or	$s1, $s5, $s1
	blez	$a0, .LBB29_11
# %bb.5:                                #   in Loop: Header=BB29_7 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(llength)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s0, $a0
	sll.w	$a0, $s4, $a0
	or	$s3, $a0, $s3
.LBB29_6:                               #   in Loop: Header=BB29_7 Depth=1
	ld.d	$a1, $sp, 8
	addi.d	$a0, $a1, 8
	st.d	$a0, $sp, 8
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB29_15
.LBB29_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s5, $a1, 8
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	beq	$fp, $a0, .LBB29_4
# %bb.8:                                #   in Loop: Header=BB29_7 Depth=1
	ld.hu	$a1, $fp, 2
	bne	$a1, $s4, .LBB29_6
# %bb.9:                                #   in Loop: Header=BB29_7 Depth=1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memq)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB29_4
# %bb.10:                               #   in Loop: Header=BB29_7 Depth=1
	move	$s2, $zero
	b	.LBB29_6
	.p2align	4, , 16
.LBB29_11:                              #   in Loop: Header=BB29_7 Depth=1
	addi.d	$s0, $zero, -2
	b	.LBB29_6
.LBB29_12:
	move	$s1, $zero
	b	.LBB29_19
.LBB29_13:
	addi.d	$s0, $zero, -1
	addi.d	$a0, $sp, 96
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 88
	bnez	$a0, .LBB29_3
.LBB29_14:
	move	$s3, $zero
	move	$s1, $zero
.LBB29_15:                              # %._crit_edge
	addi.w	$a1, $s0, 0
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB29_18
# %bb.16:
	blez	$a1, .LBB29_19
# %bb.17:
	sll.w	$a1, $a0, $s0
	xor	$a1, $a1, $s3
	beq	$a1, $a0, .LBB29_19
.LBB29_18:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB29_19:
	move	$a0, $s1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end29:
	.size	assemble_options, .Lfunc_end29-assemble_options
                                        # -- End function
	.globl	lwait                           # -- Begin function lwait
	.p2align	5
	.type	lwait,@function
lwait:                                  # @lwait
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $a1
	st.w	$zero, $sp, 28
	beqz	$a0, .LBB30_2
# %bb.1:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB30_3
.LBB30_2:
	addi.d	$fp, $zero, -1
.LBB30_3:
	st.d	$zero, $sp, 8
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a3, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a7, $a0, %pc_lo12(.L.str.27)
	lu12i.w	$a4, 4096
	ori	$a2, $zero, 8
	ori	$a6, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(assemble_options)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a0, $fp, 0
	addi.d	$a1, $sp, 28
	move	$a2, $s0
	pcaddu18i	$ra, %call36(waitpid)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB30_6
# %bb.4:
	addi.w	$a0, $zero, -1
	bne	$fp, $a0, .LBB30_7
# %bb.5:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB30_8
.LBB30_6:
	move	$a0, $zero
	b	.LBB30_8
.LBB30_7:
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 28
	move	$fp, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
.LBB30_8:
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end30:
	.size	lwait, .Lfunc_end30-lwait
                                        # -- End function
	.globl	lkill                           # -- Begin function lkill
	.p2align	5
	.type	lkill,@function
lkill:                                  # @lkill
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$s1, .LBB31_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB31_3
.LBB31_2:
	ori	$a0, $zero, 9
.LBB31_3:
	addi.w	$a2, $s0, 0
	addi.w	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(kill)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_5
# %bb.4:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB31_6
.LBB31_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
.LBB31_6:
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end31:
	.size	lkill, .Lfunc_end31-lkill
                                        # -- End function
	.globl	lgetpid                         # -- Begin function lgetpid
	.p2align	5
	.type	lgetpid,@function
lgetpid:                                # @lgetpid
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getpid)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end32:
	.size	lgetpid, .Lfunc_end32-lgetpid
                                        # -- End function
	.globl	lgetpgrp                        # -- Begin function lgetpgrp
	.p2align	5
	.type	lgetpgrp,@function
lgetpgrp:                               # @lgetpgrp
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getpgrp)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end33:
	.size	lgetpgrp, .Lfunc_end33-lgetpgrp
                                        # -- End function
	.globl	lsetpgid                        # -- Begin function lsetpgid
	.p2align	5
	.type	lsetpgid,@function
lsetpgid:                               # @lsetpgid
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a2, $s0, 0
	addi.w	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(setpgid)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB34_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB34_2:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end34:
	.size	lsetpgid, .Lfunc_end34-lsetpgid
                                        # -- End function
	.globl	lgetgrgid                       # -- Begin function lgetgrgid
	.p2align	5
	.type	lgetgrgid,@function
lgetgrgid:                              # @lgetgrgid
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getgrgid)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB35_5
# %bb.1:
	move	$s0, $a0
	ld.d	$s1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.d	$s2, $a1, 0
	move	$s1, $a0
	beqz	$s2, .LBB35_4
# %bb.2:                                # %.lr.ph.preheader
	ori	$s3, $zero, 8
	.p2align	4, , 16
.LBB35_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ldx.d	$s2, $a1, $s3
	move	$s1, $a0
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB35_3
.LBB35_4:                               # %._crit_edge
	move	$a0, $s1
	pcaddu18i	$ra, %call36(nreverse)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB35_6
.LBB35_5:
	move	$s0, $zero
.LBB35_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end35:
	.size	lgetgrgid, .Lfunc_end35-lgetgrgid
                                        # -- End function
	.globl	lgetppid                        # -- Begin function lgetppid
	.p2align	5
	.type	lgetppid,@function
lgetppid:                               # @lgetppid
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getppid)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end36:
	.size	lgetppid, .Lfunc_end36-lgetppid
                                        # -- End function
	.globl	lmemref_byte                    # -- Begin function lmemref_byte
	.p2align	5
	.type	lmemref_byte,@function
lmemref_byte:                           # @lmemref_byte
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $a0, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end37:
	.size	lmemref_byte, .Lfunc_end37-lmemref_byte
                                        # -- End function
	.globl	lexit                           # -- Begin function lexit
	.p2align	5
	.type	lexit,@function
lexit:                                  # @lexit
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	lexit, .Lfunc_end38-lexit
                                        # -- End function
	.globl	ltrunc                          # -- Begin function ltrunc
	.p2align	5
	.type	ltrunc,@function
ltrunc:                                 # @ltrunc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB39_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB39_3
.LBB39_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB39_3:
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end39:
	.size	ltrunc, .Lfunc_end39-ltrunc
                                        # -- End function
	.globl	lputenv                         # -- Begin function lputenv
	.p2align	5
	.type	lputenv,@function
lputenv:                                # @lputenv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(putenv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB40_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB40_2:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end40:
	.size	lputenv, .Lfunc_end40-lputenv
                                        # -- End function
	.globl	handle_sigalrm                  # -- Begin function handle_sigalrm
	.p2align	5
	.type	handle_sigalrm,@function
handle_sigalrm:                         # @handle_sigalrm
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(nointerrupt)
	ld.d	$a0, $a0, %got_pc_lo12(nointerrupt)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB41_4
# %bb.1:
	pcalau12i	$a0, %pc_hi20(handle_sigalrm_flag)
	ld.w	$a0, $a0, %pc_lo12(handle_sigalrm_flag)
	beqz	$a0, .LBB41_3
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(interrupt_differed)
	ld.d	$a0, $a0, %got_pc_lo12(interrupt_differed)
	ori	$a1, $zero, 1
	st.d	$a1, $a0, 0
.LBB41_3:
	ret
.LBB41_4:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a1, $zero
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end41:
	.size	handle_sigalrm, .Lfunc_end41-handle_sigalrm
                                        # -- End function
	.globl	lalarm                          # -- Begin function lalarm
	.p2align	5
	.type	lalarm,@function
lalarm:                                 # @lalarm
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(handle_sigalrm)
	addi.d	$a1, $a0, %pc_lo12(handle_sigalrm)
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $fp
	pcalau12i	$a1, %pc_hi20(handle_sigalrm_flag)
	st.w	$a0, $a1, %pc_lo12(handle_sigalrm_flag)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(alarm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end42:
	.size	lalarm, .Lfunc_end42-lalarm
                                        # -- End function
	.globl	l_opendir                       # -- Begin function l_opendir
	.p2align	5
	.type	l_opendir,@function
l_opendir:                              # @l_opendir
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(opendir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB43_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	st.h	$a1, $s0, 2
	st.d	$a0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB43_2:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end43:
	.size	l_opendir, .Lfunc_end43-l_opendir
                                        # -- End function
	.globl	get_opendir                     # -- Begin function get_opendir
	.p2align	5
	.type	get_opendir,@function
get_opendir:                            # @get_opendir
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a0, .LBB44_7
# %bb.1:
	ld.h	$a0, $fp, 2
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	beq	$a0, $a1, .LBB44_3
.LBB44_2:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB44_3:
	ld.d	$s1, $fp, 8
	beqz	$s0, .LBB44_6
# %bb.4:
	bnez	$s1, .LBB44_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB44_6:
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB44_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	bne	$a0, $a1, .LBB44_2
	b	.LBB44_3
.Lfunc_end44:
	.size	get_opendir, .Lfunc_end44-get_opendir
                                        # -- End function
	.globl	l_closedir                      # -- Begin function l_closedir
	.p2align	5
	.type	l_closedir,@function
l_closedir:                             # @l_closedir
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s0, .LBB45_7
# %bb.1:
	ld.h	$a0, $s0, 2
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	beq	$a0, $a1, .LBB45_3
.LBB45_2:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB45_3:
	ld.d	$s1, $s0, 8
	bnez	$s1, .LBB45_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB45_5:                               # %get_opendir.exit
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$s2, $a0, 0
	st.d	$zero, $s0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB45_8
# %bb.6:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB45_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	bne	$a0, $a1, .LBB45_2
	b	.LBB45_3
.LBB45_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end45:
	.size	l_closedir, .Lfunc_end45-l_closedir
                                        # -- End function
	.globl	opendir_gc_free                 # -- Begin function opendir_gc_free
	.p2align	5
	.type	opendir_gc_free,@function
opendir_gc_free:                        # @opendir_gc_free
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB46_5
# %bb.1:
	ld.h	$a0, $fp, 2
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	beq	$a0, $a1, .LBB46_3
.LBB46_2:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB46_3:                               # %get_opendir.exit
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB46_6
# %bb.4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(closedir)
	jr	$t8
.LBB46_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	bne	$a0, $a1, .LBB46_2
	b	.LBB46_3
.LBB46_6:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end46:
	.size	opendir_gc_free, .Lfunc_end46-opendir_gc_free
                                        # -- End function
	.globl	l_readdir                       # -- Begin function l_readdir
	.p2align	5
	.type	l_readdir,@function
l_readdir:                              # @l_readdir
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB47_7
# %bb.1:
	ld.h	$a0, $fp, 2
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	beq	$a0, $a1, .LBB47_3
.LBB47_2:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB47_3:
	ld.d	$s0, $fp, 8
	bnez	$s0, .LBB47_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB47_5:                               # %get_opendir.exit
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB47_8
# %bb.6:
	ld.hu	$a1, $fp, 16
	addi.d	$fp, $fp, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(safe_strlen)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcons)
	jr	$t8
.LBB47_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	bne	$a0, $a1, .LBB47_2
	b	.LBB47_3
.LBB47_8:
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end47:
	.size	l_readdir, .Lfunc_end47-l_readdir
                                        # -- End function
	.globl	opendir_prin1                   # -- Begin function opendir_prin1
	.p2align	5
	.type	opendir_prin1,@function
opendir_prin1:                          # @opendir_prin1
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB48_4
# %bb.1:
	ld.h	$a0, $s0, 2
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	beq	$a0, $a1, .LBB48_3
.LBB48_2:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB48_3:                               # %get_opendir.exit
	ld.d	$a2, $s0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB48_4:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(tc_opendir)
	ld.d	$a1, $a1, %pc_lo12(tc_opendir)
	bne	$a0, $a1, .LBB48_2
	b	.LBB48_3
.Lfunc_end48:
	.size	opendir_prin1, .Lfunc_end48-opendir_prin1
                                        # -- End function
	.globl	file_times                      # -- Begin function file_times
	.p2align	5
	.type	file_times,@function
file_times:                             # @file_times
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB49_2
# %bb.1:
	move	$a0, $zero
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB49_2:
	ld.d	$a0, $sp, 112
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	move	$fp, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	pcaddu18i	$t8, %call36(cons)
	jr	$t8
.Lfunc_end49:
	.size	file_times, .Lfunc_end49-file_times
                                        # -- End function
	.globl	decode_st_moden                 # -- Begin function decode_st_moden
	.p2align	5
	.type	decode_st_moden,@function
decode_st_moden:                        # @decode_st_moden
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB50_2
# %bb.1:
	move	$s0, $zero
	andi	$a0, $fp, 1024
	bnez	$a0, .LBB50_3
	b	.LBB50_4
.LBB50_2:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	andi	$a0, $fp, 1024
	beqz	$a0, .LBB50_4
.LBB50_3:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB50_4:
	andi	$a0, $fp, 256
	bnez	$a0, .LBB50_18
# %bb.5:
	andi	$a0, $fp, 128
	bnez	$a0, .LBB50_19
.LBB50_6:
	andi	$a0, $fp, 64
	bnez	$a0, .LBB50_20
.LBB50_7:
	andi	$a0, $fp, 32
	bnez	$a0, .LBB50_21
.LBB50_8:
	andi	$a0, $fp, 16
	bnez	$a0, .LBB50_22
.LBB50_9:
	andi	$a0, $fp, 8
	bnez	$a0, .LBB50_23
.LBB50_10:
	andi	$a0, $fp, 4
	bnez	$a0, .LBB50_24
.LBB50_11:
	andi	$a0, $fp, 2
	bnez	$a0, .LBB50_25
.LBB50_12:
	andi	$a0, $fp, 1
	beqz	$a0, .LBB50_14
.LBB50_13:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB50_14:
	lu12i.w	$a0, 15
	and	$a0, $fp, $a0
	addi.d	$a0, $a0, -2048
	addi.d	$a0, $a0, -2048
	bstrpick.d	$a1, $a0, 31, 14
	ori	$a2, $zero, 2
	bltu	$a2, $a1, .LBB50_17
# %bb.15:
	lu12i.w	$a1, -1
	lu32i.d	$a1, 0
	and	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 27, 12
	ori	$a2, $zero, 2731
	srl.d	$a1, $a2, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB50_17
# %bb.16:                               # %switch.lookup
	bstrpick.d	$a0, $a0, 31, 12
	addi.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.decode_st_moden)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.decode_st_moden)
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(cons)
	jr	$t8
.LBB50_17:                              # %.thread59
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB50_18:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	andi	$a0, $fp, 128
	beqz	$a0, .LBB50_6
.LBB50_19:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	andi	$a0, $fp, 64
	beqz	$a0, .LBB50_7
.LBB50_20:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	andi	$a0, $fp, 32
	beqz	$a0, .LBB50_8
.LBB50_21:
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	andi	$a0, $fp, 16
	beqz	$a0, .LBB50_9
.LBB50_22:
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	andi	$a0, $fp, 8
	beqz	$a0, .LBB50_10
.LBB50_23:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	andi	$a0, $fp, 4
	beqz	$a0, .LBB50_11
.LBB50_24:
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	andi	$a0, $fp, 2
	beqz	$a0, .LBB50_12
.LBB50_25:
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	andi	$a0, $fp, 1
	bnez	$a0, .LBB50_13
	b	.LBB50_14
.Lfunc_end50:
	.size	decode_st_moden, .Lfunc_end50-decode_st_moden
                                        # -- End function
	.globl	encode_st_mode                  # -- Begin function encode_st_mode
	.p2align	5
	.type	encode_st_mode,@function
encode_st_mode:                         # @encode_st_mode
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$zero, $sp, 120
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 112
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	st.d	$a1, $sp, 104
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 96
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	st.d	$a1, $sp, 88
	ori	$a1, $zero, 4
	st.d	$a1, $sp, 80
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	st.d	$a1, $sp, 72
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 64
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	st.d	$a1, $sp, 56
	ori	$a1, $zero, 16
	st.d	$a1, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	st.d	$a1, $sp, 40
	ori	$a1, $zero, 32
	st.d	$a1, $sp, 32
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	st.d	$a1, $sp, 24
	ori	$a1, $zero, 64
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	st.d	$a1, $sp, 8
	ori	$a1, $zero, 128
	st.d	$a1, $sp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	pcalau12i	$a2, %pc_hi20(.L.str.40)
	addi.d	$a3, $a2, %pc_lo12(.L.str.40)
	pcalau12i	$a2, %pc_hi20(.L.str.41)
	addi.d	$a5, $a2, %pc_lo12(.L.str.41)
	pcalau12i	$a2, %pc_hi20(.L.str.42)
	addi.d	$a7, $a2, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 2048
	ori	$a4, $zero, 1024
	ori	$a6, $zero, 256
	pcaddu18i	$ra, %call36(assemble_options)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end51:
	.size	encode_st_mode, .Lfunc_end51-encode_st_mode
                                        # -- End function
	.globl	decode_st_mode                  # -- Begin function decode_st_mode
	.p2align	5
	.type	decode_st_mode,@function
decode_st_mode:                         # @decode_st_mode
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(decode_st_moden)
	jr	$t8
.Lfunc_end52:
	.size	decode_st_mode, .Lfunc_end52-decode_st_mode
                                        # -- End function
	.globl	decode_stat                     # -- Begin function decode_stat
	.p2align	5
	.type	decode_stat,@function
decode_stat:                            # @decode_stat
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	srli.d	$a1, $a0, 32
	lu52i.d	$fp, $zero, 1107
	or	$a1, $a1, $fp
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fs0, $a1
	fsub.d	$fa0, $fa0, $fs0
	lu12i.w	$s0, 275200
	bstrins.d	$a0, $s0, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 8
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $fp
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s0, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 16
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(decode_st_moden)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s3, 20
	move	$s1, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s3, 24
	move	$s2, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s3, 28
	move	$s4, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 32
	move	$s5, $a0
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $fp
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s0, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 48
	move	$s6, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 72
	move	$s7, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
	move	$s8, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 104
	move	$fp, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 56
	move	$s0, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 64
	move	$s3, $a0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 144
	st.d	$a0, $sp, 136
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 128
	st.d	$s3, $sp, 120
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 112
	st.d	$s0, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	st.d	$a0, $sp, 96
	st.d	$fp, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 80
	st.d	$s8, $sp, 72
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	st.d	$a0, $sp, 64
	st.d	$s7, $sp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	st.d	$a0, $sp, 48
	st.d	$s6, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 32
	st.d	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 16
	st.d	$s4, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a2, $a1, %pc_lo12(.L.str.58)
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a4, $a1, %pc_lo12(.L.str.59)
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a6, $a1, %pc_lo12(.L.str.60)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(symalist)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end53:
	.size	decode_stat, .Lfunc_end53-decode_stat
                                        # -- End function
	.globl	g_stat                          # -- Begin function g_stat
	.p2align	5
	.type	g_stat,@function
g_stat:                                 # @g_stat
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	jirl	$ra, $fp, 0
	move	$fp, $a0
	addi.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	bnez	$fp, .LBB54_2
# %bb.1:
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(decode_stat)
	jirl	$ra, $ra, 0
.LBB54_2:
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end54:
	.size	g_stat, .Lfunc_end54-g_stat
                                        # -- End function
	.globl	l_stat                          # -- Begin function l_stat
	.p2align	5
	.type	l_stat,@function
l_stat:                                 # @l_stat
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	bnez	$fp, .LBB55_2
# %bb.1:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(decode_stat)
	jirl	$ra, $ra, 0
.LBB55_2:                               # %g_stat.exit
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end55:
	.size	l_stat, .Lfunc_end55-l_stat
                                        # -- End function
	.globl	l_fstat                         # -- Begin function l_fstat
	.p2align	5
	.type	l_fstat,@function
l_fstat:                                # @l_fstat
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	bnez	$fp, .LBB56_2
# %bb.1:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(decode_stat)
	jirl	$ra, $ra, 0
.LBB56_2:
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end56:
	.size	l_fstat, .Lfunc_end56-l_fstat
                                        # -- End function
	.globl	l_lstat                         # -- Begin function l_lstat
	.p2align	5
	.type	l_lstat,@function
l_lstat:                                # @l_lstat
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(lstat)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	bnez	$fp, .LBB57_2
# %bb.1:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(decode_stat)
	jirl	$ra, $ra, 0
.LBB57_2:                               # %g_stat.exit
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end57:
	.size	l_lstat, .Lfunc_end57-l_lstat
                                        # -- End function
	.globl	l_chmod                         # -- Begin function l_chmod
	.p2align	5
	.type	l_chmod,@function
l_chmod:                                # @l_chmod
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(chmod)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB58_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB58_2:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end58:
	.size	l_chmod, .Lfunc_end58-l_chmod
                                        # -- End function
	.globl	lutime                          # -- Begin function lutime
	.p2align	5
	.type	lutime,@function
lutime:                                 # @lutime
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	beqz	$s0, .LBB59_2
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB59_3
.LBB59_2:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
.LBB59_3:
	st.d	$a0, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(utime)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB59_5
# %bb.4:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB59_5:
	move	$a0, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end59:
	.size	lutime, .Lfunc_end59-lutime
                                        # -- End function
	.globl	lfchmod                         # -- Begin function lfchmod
	.p2align	5
	.type	lfchmod,@function
lfchmod:                                # @lfchmod
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fchmod)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB60_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB60_2:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end60:
	.size	lfchmod, .Lfunc_end60-lfchmod
                                        # -- End function
	.globl	encode_open_flags               # -- Begin function encode_open_flags
	.p2align	5
	.type	encode_open_flags,@function
encode_open_flags:                      # @encode_open_flags
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $sp, 72
	ori	$a1, $zero, 128
	st.d	$a1, $sp, 64
	pcalau12i	$a1, %pc_hi20(.L.str.78)
	addi.d	$a1, $a1, %pc_lo12(.L.str.78)
	st.d	$a1, $sp, 56
	ori	$a1, $zero, 512
	st.d	$a1, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.77)
	addi.d	$a1, $a1, %pc_lo12(.L.str.77)
	st.d	$a1, $sp, 40
	ori	$a1, $zero, 64
	st.d	$a1, $sp, 32
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	st.d	$a1, $sp, 24
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.75)
	addi.d	$a1, $a1, %pc_lo12(.L.str.75)
	st.d	$a1, $sp, 8
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	pcalau12i	$a2, %pc_hi20(.L.str.72)
	addi.d	$a3, $a2, %pc_lo12(.L.str.72)
	pcalau12i	$a2, %pc_hi20(.L.str.73)
	addi.d	$a5, $a2, %pc_lo12(.L.str.73)
	pcalau12i	$a2, %pc_hi20(.L.str.74)
	addi.d	$a7, $a2, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 2048
	ori	$a4, $zero, 1024
	move	$a6, $zero
	pcaddu18i	$ra, %call36(assemble_options)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end61:
	.size	encode_open_flags, .Lfunc_end61-encode_open_flags
                                        # -- End function
	.globl	get_fd                          # -- Begin function get_fd
	.p2align	5
	.type	get_fd,@function
get_fd:                                 # @get_fd
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB62_3
# %bb.1:
	ld.hu	$a1, $a0, 2
	ori	$a2, $zero, 17
	bne	$a1, $a2, .LBB62_3
# %bb.2:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fileno)
	jr	$t8
.LBB62_3:                               # %.critedge
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end62:
	.size	get_fd, .Lfunc_end62-get_fd
                                        # -- End function
	.globl	gsetlk                          # -- Begin function gsetlk
	.p2align	5
	.type	gsetlk,@function
gsetlk:                                 # @gsetlk
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a2
	move	$fp, $a0
	beqz	$a1, .LBB63_3
# %bb.1:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 17
	bne	$a0, $a2, .LBB63_3
# %bb.2:
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
	b	.LBB63_4
.LBB63_3:                               # %.critedge.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
.LBB63_4:                               # %get_fd.exit
	move	$s1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	st.h	$a0, $sp, 8
	beqz	$s3, .LBB63_8
# %bb.5:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	st.h	$a0, $sp, 10
	beqz	$s2, .LBB63_9
.LBB63_6:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	beqz	$s0, .LBB63_10
.LBB63_7:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB63_11
.LBB63_8:
	move	$a0, $zero
	st.h	$a0, $sp, 10
	bnez	$s2, .LBB63_6
.LBB63_9:
	move	$a0, $zero
	st.d	$a0, $sp, 16
	bnez	$s0, .LBB63_7
.LBB63_10:
	move	$a0, $zero
.LBB63_11:
	st.d	$a0, $sp, 24
	st.w	$zero, $sp, 32
	addi.w	$a0, $s1, 0
	addi.d	$a2, $sp, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fcntl)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB63_15
# %bb.12:
	ori	$a0, $zero, 5
	bne	$fp, $a0, .LBB63_14
# %bb.13:
	ld.hu	$a0, $sp, 8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB63_16
.LBB63_14:
	move	$a0, $zero
	b	.LBB63_17
.LBB63_15:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB63_17
.LBB63_16:
	ext.w.h	$a0, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 32
	move	$fp, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	ori	$a0, $zero, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(listn)
	jirl	$ra, $ra, 0
.LBB63_17:
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end63:
	.size	gsetlk, .Lfunc_end63-gsetlk
                                        # -- End function
	.globl	lF_SETLK                        # -- Begin function lF_SETLK
	.p2align	5
	.type	lF_SETLK,@function
lF_SETLK:                               # @lF_SETLK
# %bb.0:
	move	$a5, $a0
	ori	$a0, $zero, 6
	move	$a6, $a4
	move	$a4, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$a1, $a5
	move	$a5, $a6
	pcaddu18i	$t8, %call36(gsetlk)
	jr	$t8
.Lfunc_end64:
	.size	lF_SETLK, .Lfunc_end64-lF_SETLK
                                        # -- End function
	.globl	lF_SETLKW                       # -- Begin function lF_SETLKW
	.p2align	5
	.type	lF_SETLKW,@function
lF_SETLKW:                              # @lF_SETLKW
# %bb.0:
	move	$a5, $a0
	ori	$a0, $zero, 7
	move	$a6, $a4
	move	$a4, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$a1, $a5
	move	$a5, $a6
	pcaddu18i	$t8, %call36(gsetlk)
	jr	$t8
.Lfunc_end65:
	.size	lF_SETLKW, .Lfunc_end65-lF_SETLKW
                                        # -- End function
	.globl	lF_GETLK                        # -- Begin function lF_GETLK
	.p2align	5
	.type	lF_GETLK,@function
lF_GETLK:                               # @lF_GETLK
# %bb.0:
	move	$a5, $a0
	ori	$a0, $zero, 5
	move	$a6, $a4
	move	$a4, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$a1, $a5
	move	$a5, $a6
	pcaddu18i	$t8, %call36(gsetlk)
	jr	$t8
.Lfunc_end66:
	.size	lF_GETLK, .Lfunc_end66-lF_GETLK
                                        # -- End function
	.globl	delete_file                     # -- Begin function delete_file
	.p2align	5
	.type	delete_file,@function
delete_file:                            # @delete_file
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB67_2
# %bb.1:
	addi.w	$fp, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(last_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcons)
	jr	$t8
.LBB67_2:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end67:
	.size	delete_file, .Lfunc_end67-delete_file
                                        # -- End function
	.globl	utime2str                       # -- Begin function utime2str
	.p2align	5
	.type	utime2str,@function
utime2str:                              # @utime2str
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB68_2
# %bb.1:
	ld.w	$a1, $a0, 20
	ld.w	$a3, $a0, 16
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a0, 8
	ld.w	$a6, $a0, 4
	ld.w	$a7, $a0, 0
	addi.w	$a2, $a1, 1900
	addi.w	$a3, $a3, 1
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	addi.d	$a0, $sp, 28
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 28
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 28
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB68_2:
	move	$a0, $zero
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end68:
	.size	utime2str, .Lfunc_end68-utime2str
                                        # -- End function
	.globl	lgetenv                         # -- Begin function lgetenv
	.p2align	5
	.type	lgetenv,@function
lgetenv:                                # @lgetenv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB69_2
# %bb.1:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(strcons)
	jr	$t8
.LBB69_2:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end69:
	.size	lgetenv, .Lfunc_end69-lgetenv
                                        # -- End function
	.globl	unix_time                       # -- Begin function unix_time
	.p2align	5
	.type	unix_time,@function
unix_time:                              # @unix_time
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end70:
	.size	unix_time, .Lfunc_end70-unix_time
                                        # -- End function
	.globl	unix_ctime                      # -- Begin function unix_ctime
	.p2align	5
	.type	unix_ctime,@function
unix_ctime:                             # @unix_ctime
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB71_5
# %bb.1:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(ctime)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB71_6
.LBB71_2:
	move	$fp, $a0
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB71_4
# %bb.3:
	st.b	$zero, $a0, 0
.LBB71_4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB71_5:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(ctime)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB71_2
.LBB71_6:
	move	$a0, $zero
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end71:
	.size	unix_ctime, .Lfunc_end71-unix_ctime
                                        # -- End function
	.globl	http_date                       # -- Begin function http_date
	.p2align	5
	.type	http_date,@function
http_date:                              # @http_date
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	beqz	$a0, .LBB72_3
# %bb.1:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(gmtime)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB72_4
.LBB72_2:
	ld.w	$a1, $a0, 24
	slli.w	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.L.str.81)
	addi.d	$a2, $a2, %pc_lo12(.L.str.81)
	ld.w	$a4, $a0, 16
	ld.w	$a3, $a0, 12
	add.d	$a2, $a2, $a1
	slli.w	$a1, $a4, 2
	pcalau12i	$a4, %pc_hi20(.L.str.82)
	addi.d	$a4, $a4, %pc_lo12(.L.str.82)
	ld.w	$a5, $a0, 20
	ld.w	$a6, $a0, 8
	ld.w	$a7, $a0, 4
	ld.w	$a0, $a0, 0
	add.d	$a4, $a4, $a1
	addi.w	$a5, $a5, 1900
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB72_3:
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(gmtime)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB72_2
.LBB72_4:
	move	$a0, $zero
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end72:
	.size	http_date, .Lfunc_end72-http_date
                                        # -- End function
	.globl	lsleep                          # -- Begin function lsleep
	.p2align	5
	.type	lsleep,@function
lsleep:                                 # @lsleep
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_double)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -97152
	lu52i.d	$a0, $a0, 1042
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(usleep)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end73:
	.size	lsleep, .Lfunc_end73-lsleep
                                        # -- End function
	.globl	url_encode                      # -- Begin function url_encode
	.p2align	5
	.type	url_encode,@function
url_encode:                             # @url_encode
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$s6, $zero, 32
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$s1, $a0, %pc_lo12(.L.str.83)
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	move	$s7, $s0
	b	.LBB74_2
	.p2align	4, , 16
.LBB74_1:                               #   in Loop: Header=BB74_2 Depth=1
	addi.w	$s5, $s5, 1
	addi.d	$s7, $s7, 1
.LBB74_2:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s7, 0
	beq	$a0, $s6, .LBB74_1
# %bb.3:                                #   in Loop: Header=BB74_2 Depth=1
	beqz	$a0, .LBB74_8
# %bb.4:                                #   in Loop: Header=BB74_2 Depth=1
	ext.w.b	$s2, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 8
	addi.d	$s7, $s7, 1
	bnez	$a0, .LBB74_6
# %bb.5:                                #   in Loop: Header=BB74_2 Depth=1
	ori	$a2, $zero, 6
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB74_7
.LBB74_6:                               #   in Loop: Header=BB74_2 Depth=1
	addi.d	$s4, $s4, 1
	b	.LBB74_2
.LBB74_7:                               #   in Loop: Header=BB74_2 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB74_2
.LBB74_8:
	or	$a0, $s5, $s3
	beqz	$a0, .LBB74_18
# %bb.9:
	alsl.d	$a0, $s3, $s3, 1
	add.d	$a0, $a0, $s4
	add.w	$a0, $a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$s6, $zero, 32
	ori	$s7, $zero, 43
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$s2, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$s3, $a0, %pc_lo12(.L.str.84)
	b	.LBB74_11
	.p2align	4, , 16
.LBB74_10:                              #   in Loop: Header=BB74_11 Depth=1
	st.b	$s7, $s1, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 1
.LBB74_11:                              # =>This Inner Loop Header: Depth=1
	ld.b	$s5, $s0, 0
	andi	$s4, $s5, 255
	beq	$s4, $s6, .LBB74_10
# %bb.12:                               #   in Loop: Header=BB74_11 Depth=1
	beqz	$s4, .LBB74_17
# %bb.13:                               #   in Loop: Header=BB74_11 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 8
	addi.d	$s0, $s0, 1
	bnez	$a0, .LBB74_15
# %bb.14:                               #   in Loop: Header=BB74_11 Depth=1
	ori	$a2, $zero, 6
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB74_16
.LBB74_15:                              #   in Loop: Header=BB74_11 Depth=1
	addi.d	$a0, $s1, 1
	st.b	$s4, $s1, 0
	move	$s1, $a0
	b	.LBB74_11
.LBB74_16:                              #   in Loop: Header=BB74_11 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 3
	b	.LBB74_11
.LBB74_17:
	st.b	$zero, $s1, 0
.LBB74_18:
	move	$a0, $fp
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
.Lfunc_end74:
	.size	url_encode, .Lfunc_end74-url_encode
                                        # -- End function
	.globl	url_decode                      # -- Begin function url_decode
	.p2align	5
	.type	url_decode,@function
url_decode:                             # @url_decode
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	addi.d	$s4, $a0, 2
	ori	$s5, $zero, 37
	ori	$s6, $zero, 43
	b	.LBB75_2
	.p2align	4, , 16
.LBB75_1:                               #   in Loop: Header=BB75_2 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s4, $s4, 1
.LBB75_2:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, -2
	beq	$a0, $s5, .LBB75_6
# %bb.3:                                #   in Loop: Header=BB75_2 Depth=1
	beq	$a0, $s6, .LBB75_1
# %bb.4:                                #   in Loop: Header=BB75_2 Depth=1
	beqz	$a0, .LBB75_10
# %bb.5:                                #   in Loop: Header=BB75_2 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s4, $s4, 1
	b	.LBB75_2
	.p2align	4, , 16
.LBB75_6:                               #   in Loop: Header=BB75_2 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s4, -1
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 51
	bgez	$a1, .LBB75_9
# %bb.7:                                #   in Loop: Header=BB75_2 Depth=1
	ld.b	$a1, $s4, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 51
	bgez	$a0, .LBB75_9
# %bb.8:                                #   in Loop: Header=BB75_2 Depth=1
	addi.w	$s2, $s2, 1
	addi.d	$s4, $s4, 1
	b	.LBB75_2
.LBB75_9:
	move	$fp, $zero
	b	.LBB75_25
.LBB75_10:
	or	$a0, $s3, $s2
	beqz	$a0, .LBB75_25
# %bb.11:
	add.d	$a0, $s2, $s1
	add.w	$a0, $a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$s3, $zero, 37
	ori	$s4, $zero, 43
	b	.LBB75_14
	.p2align	4, , 16
.LBB75_12:                              #   in Loop: Header=BB75_14 Depth=1
	ori	$a0, $zero, 32
.LBB75_13:                              #   in Loop: Header=BB75_14 Depth=1
	st.b	$a0, $s1, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 1
.LBB75_14:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 0
	beq	$a0, $s3, .LBB75_17
# %bb.15:                               #   in Loop: Header=BB75_14 Depth=1
	beq	$a0, $s4, .LBB75_12
# %bb.16:                               #   in Loop: Header=BB75_14 Depth=1
	bnez	$a0, .LBB75_13
	b	.LBB75_24
	.p2align	4, , 16
.LBB75_17:                              #   in Loop: Header=BB75_14 Depth=1
	st.b	$zero, $s1, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 1
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ext.w.b	$s5, $a1
	slli.d	$a2, $s5, 1
	ldx.hu	$a0, $a0, $a2
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB75_19
# %bb.18:                               #   in Loop: Header=BB75_14 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$s5, $a0, -55
	b	.LBB75_20
.LBB75_19:                              #   in Loop: Header=BB75_14 Depth=1
	addi.d	$s5, $a1, -48
.LBB75_20:                              #   in Loop: Header=BB75_14 Depth=1
	st.b	$s5, $s1, 0
	ld.b	$s6, $s0, 2
	ld.d	$a0, $s2, 0
	slli.d	$a1, $s6, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB75_22
# %bb.21:                               #   in Loop: Header=BB75_14 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$a0, $a0, -55
	b	.LBB75_23
.LBB75_22:                              #   in Loop: Header=BB75_14 Depth=1
	andi	$a0, $s6, 255
	addi.d	$a0, $a0, -48
.LBB75_23:                              #   in Loop: Header=BB75_14 Depth=1
	slli.d	$a1, $s5, 4
	addi.d	$s0, $s0, 2
	add.d	$a0, $a0, $a1
	b	.LBB75_13
.LBB75_24:
	st.b	$zero, $s1, 0
.LBB75_25:                              # %.loopexit
	move	$a0, $fp
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
.Lfunc_end75:
	.size	url_decode, .Lfunc_end75-url_decode
                                        # -- End function
	.globl	html_encode                     # -- Begin function html_encode
	.p2align	5
	.type	html_encode,@function
html_encode:                            # @html_encode
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
	beqz	$a0, .LBB76_6
# %bb.1:
	move	$fp, $a0
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB76_3
# %bb.2:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB76_23
.LBB76_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$a0, .LBB76_7
# %bb.4:                                # %.lr.ph.preheader
	ori	$a0, $zero, 4
	bgeu	$s1, $a0, .LBB76_8
# %bb.5:
	move	$a1, $zero
	move	$a0, $zero
	b	.LBB76_24
.LBB76_6:
	move	$fp, $zero
	b	.LBB76_23
.LBB76_7:
	move	$a0, $zero
	b	.LBB76_11
.LBB76_8:                               # %vector.ph
	bstrpick.d	$a0, $s1, 62, 2
	slli.d	$a1, $a0, 2
	addi.d	$a0, $s0, 2
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 38
	vrepli.b	$vr2, 34
	vrepli.b	$vr3, 60
	vrepli.d	$vr4, 4
	vrepli.d	$vr5, 1
	vrepli.d	$vr6, 5
	vrepli.d	$vr7, 6
	move	$a2, $a1
	vori.b	$vr8, $vr0, 0
	.p2align	4, , 16
.LBB76_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a0, -2
	ld.h	$a4, $a0, 0
	vinsgr2vr.h	$vr9, $a3, 0
	vinsgr2vr.h	$vr10, $a4, 0
	vseq.b	$vr11, $vr9, $vr1
	vilvl.b	$vr11, $vr11, $vr11
	vilvl.h	$vr11, $vr11, $vr11
	vilvl.w	$vr11, $vr11, $vr11
	vslli.d	$vr11, $vr11, 56
	vsrai.d	$vr11, $vr11, 56
	vseq.b	$vr12, $vr10, $vr1
	vilvl.b	$vr12, $vr12, $vr12
	vilvl.h	$vr12, $vr12, $vr12
	vilvl.w	$vr12, $vr12, $vr12
	vslli.d	$vr12, $vr12, 56
	vsrai.d	$vr12, $vr12, 56
	vseq.b	$vr13, $vr9, $vr2
	vilvl.b	$vr13, $vr13, $vr13
	vilvl.h	$vr13, $vr13, $vr13
	vilvl.w	$vr13, $vr13, $vr13
	vslli.d	$vr13, $vr13, 56
	vsrai.d	$vr13, $vr13, 56
	vseq.b	$vr14, $vr10, $vr2
	vilvl.b	$vr14, $vr14, $vr14
	vilvl.h	$vr14, $vr14, $vr14
	vilvl.w	$vr14, $vr14, $vr14
	vslli.d	$vr14, $vr14, 56
	vsrai.d	$vr14, $vr14, 56
	vbitclri.b	$vr9, $vr9, 1
	vseq.b	$vr9, $vr9, $vr3
	vilvl.b	$vr9, $vr9, $vr9
	vilvl.h	$vr9, $vr9, $vr9
	vilvl.w	$vr9, $vr9, $vr9
	vslli.d	$vr9, $vr9, 56
	vsrai.d	$vr9, $vr9, 56
	vbitclri.b	$vr10, $vr10, 1
	vseq.b	$vr10, $vr10, $vr3
	vilvl.b	$vr10, $vr10, $vr10
	vilvl.h	$vr10, $vr10, $vr10
	vilvl.w	$vr10, $vr10, $vr10
	vslli.d	$vr10, $vr10, 56
	vsrai.d	$vr10, $vr10, 56
	vbitsel.v	$vr9, $vr5, $vr4, $vr9
	vbitsel.v	$vr9, $vr9, $vr6, $vr11
	vbitsel.v	$vr9, $vr9, $vr7, $vr13
	vbitsel.v	$vr10, $vr5, $vr4, $vr10
	vbitsel.v	$vr10, $vr10, $vr6, $vr12
	vbitsel.v	$vr10, $vr10, $vr7, $vr14
	vadd.d	$vr0, $vr0, $vr9
	vadd.d	$vr8, $vr8, $vr10
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB76_9
# %bb.10:                               # %middle.block
	vadd.d	$vr0, $vr8, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	bne	$s1, $a1, .LBB76_24
.LBB76_11:                              # %._crit_edge
	beq	$s1, $a0, .LBB76_23
# %bb.12:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB76_23
# %bb.13:                               # %.lr.ph52.preheader
	move	$s2, $a0
	ori	$s3, $zero, 28
	pcalau12i	$a0, %pc_hi20(.LJTI76_1)
	addi.d	$s4, $a0, %pc_lo12(.LJTI76_1)
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$s5, $a0, %pc_lo12(.L.str.88)
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$s6, $a0, %pc_lo12(.L.str.87)
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$s7, $a0, %pc_lo12(.L.str.86)
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$s8, $a0, %pc_lo12(.L.str.85)
	b	.LBB76_16
.LBB76_14:                              #   in Loop: Header=BB76_16 Depth=1
	ld.w	$a0, $s5, 3
	ld.w	$a1, $s5, 0
	st.w	$a0, $s2, 3
.LBB76_15:                              #   in Loop: Header=BB76_16 Depth=1
	st.w	$a1, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s2, $s2, $a0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 1
	beqz	$s1, .LBB76_23
.LBB76_16:                              # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 0
	addi.d	$a1, $a0, -34
	bltu	$s3, $a1, .LBB76_22
# %bb.17:                               # %.lr.ph52
                                        #   in Loop: Header=BB76_16 Depth=1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s4, $a1
	add.d	$a1, $s4, $a1
	jr	$a1
.LBB76_18:                              #   in Loop: Header=BB76_16 Depth=1
	ld.h	$a0, $s6, 4
	ld.w	$a1, $s6, 0
	st.h	$a0, $s2, 4
	b	.LBB76_15
	.p2align	4, , 16
.LBB76_19:                              #   in Loop: Header=BB76_16 Depth=1
	ld.b	$a0, $s7, 4
	ld.w	$a1, $s7, 0
	b	.LBB76_21
.LBB76_20:                              #   in Loop: Header=BB76_16 Depth=1
	ld.b	$a0, $s8, 4
	ld.w	$a1, $s8, 0
.LBB76_21:                              #   in Loop: Header=BB76_16 Depth=1
	st.b	$a0, $s2, 4
	b	.LBB76_15
.LBB76_22:                              #   in Loop: Header=BB76_16 Depth=1
	addi.d	$a1, $s2, 1
	st.b	$a0, $s2, 0
	move	$s2, $a1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 1
	bnez	$s1, .LBB76_16
.LBB76_23:                              # %.thread
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
	ret
.LBB76_24:                              # %.lr.ph.preheader65
	sub.d	$a2, $s1, $a1
	add.d	$a1, $s0, $a1
	ori	$a3, $zero, 28
	pcalau12i	$a4, %pc_hi20(.LJTI76_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI76_0)
	b	.LBB76_27
	.p2align	4, , 16
.LBB76_25:                              #   in Loop: Header=BB76_27 Depth=1
	ori	$a5, $zero, 5
.LBB76_26:                              #   in Loop: Header=BB76_27 Depth=1
	add.d	$a0, $a0, $a5
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	beqz	$a2, .LBB76_11
.LBB76_27:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a1, 0
	addi.d	$a5, $a5, -34
	bltu	$a3, $a5, .LBB76_30
# %bb.28:                               # %.lr.ph
                                        #   in Loop: Header=BB76_27 Depth=1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a4, $a5
	add.d	$a6, $a4, $a5
	ori	$a5, $zero, 4
	jr	$a6
.LBB76_29:                              #   in Loop: Header=BB76_27 Depth=1
	ori	$a5, $zero, 6
	b	.LBB76_26
.LBB76_30:                              #   in Loop: Header=BB76_27 Depth=1
	ori	$a5, $zero, 1
	b	.LBB76_26
.Lfunc_end76:
	.size	html_encode, .Lfunc_end76-html_encode
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI76_0:
	.word	.LBB76_29-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_25-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_26-.LJTI76_0
	.word	.LBB76_30-.LJTI76_0
	.word	.LBB76_26-.LJTI76_0
.LJTI76_1:
	.word	.LBB76_14-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_18-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_19-.LJTI76_1
	.word	.LBB76_22-.LJTI76_1
	.word	.LBB76_20-.LJTI76_1
                                        # -- End function
	.text
	.globl	html_decode                     # -- Begin function html_decode
	.p2align	5
	.type	html_decode,@function
html_decode:                            # @html_decode
# %bb.0:
	ret
.Lfunc_end77:
	.size	html_decode, .Lfunc_end77-html_decode
                                        # -- End function
	.globl	lgets                           # -- Begin function lgets
	.p2align	5
	.type	lgets,@function
lgets:                                  # @lgets
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -64
	move	$s1, $a1
	pcalau12i	$a1, %got_pc_hi20(stdin)
	ld.d	$a1, $a1, %got_pc_lo12(stdin)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s1, .LBB78_4
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bltz	$a0, .LBB78_5
# %bb.2:
	ori	$a0, $zero, 2049
	bltu	$s0, $a0, .LBB78_7
# %bb.3:
	lu52i.d	$a0, $zero, 1034
	movgr2fr.d	$fa0, $a0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	ori	$a0, $zero, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(listn)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	b	.LBB78_6
.LBB78_4:
	ori	$s0, $zero, 2048
	b	.LBB78_7
.LBB78_5:
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s1
.LBB78_6:
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB78_7:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB78_9
# %bb.8:
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	b	.LBB78_10
.LBB78_9:
	move	$a0, $zero
.LBB78_10:
	addi.d	$sp, $sp, 64
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end78:
	.size	lgets, .Lfunc_end78-lgets
                                        # -- End function
	.globl	readline                        # -- Begin function readline
	.p2align	5
	.type	readline,@function
readline:                               # @readline
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -48
	pcalau12i	$a1, %got_pc_hi20(stdin)
	ld.d	$a1, $a1, %got_pc_lo12(stdin)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 2048
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB79_4
# %bb.1:                                # %lgets.exit
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB79_4
# %bb.2:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB79_6
# %bb.3:
	st.b	$zero, $a0, 0
	sub.d	$a1, $a0, $fp
	move	$a0, $s0
	st.d	$a1, $s0, 8
	b	.LBB79_5
.LBB79_4:
	move	$a0, $zero
.LBB79_5:
	addi.d	$sp, $sp, 48
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB79_6:
	move	$a0, $s0
	b	.LBB79_5
.Lfunc_end79:
	.size	readline, .Lfunc_end79-readline
                                        # -- End function
	.globl	l_chown                         # -- Begin function l_chown
	.p2align	5
	.type	l_chown,@function
l_chown:                                # @l_chown
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s2, 0
	addi.w	$a2, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(chown)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB80_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB80_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end80:
	.size	l_chown, .Lfunc_end80-l_chown
                                        # -- End function
	.globl	popen_l                         # -- Begin function popen_l
	.p2align	5
	.type	popen_l,@function
popen_l:                                # @popen_l
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s0, .LBB81_2
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	b	.LBB81_3
.LBB81_2:
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a2, $a0, %pc_lo12(.L.str.92)
.LBB81_3:
	pcalau12i	$a0, %got_pc_hi20(popen)
	ld.d	$a0, $a0, %got_pc_lo12(popen)
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fopen_cg)
	jr	$t8
.Lfunc_end81:
	.size	popen_l, .Lfunc_end81-popen_l
                                        # -- End function
	.globl	pclose_l                        # -- Begin function pclose_l
	.p2align	5
	.type	pclose_l,@function
pclose_l:                               # @pclose_l
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pclose)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$s0, $a0, 0
	ld.d	$a0, $s1, 16
	st.d	$zero, $s1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	bgez	$fp, .LBB82_2
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB82_2:
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end82:
	.size	pclose_l, .Lfunc_end82-pclose_l
                                        # -- End function
	.globl	so_init_name                    # -- Begin function so_init_name
	.p2align	5
	.type	so_init_name,@function
so_init_name:                           # @so_init_name
# %bb.0:
	beqz	$a1, .LBB83_2
# %bb.1:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(intern)
	jr	$t8
.LBB83_2:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.94)
	addi.d	$a1, $a1, %pc_lo12(.L.str.94)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lstrbreakup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(last)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$s0, $a0, %pc_lo12(.L.str.95)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lstrbreakup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(butlast)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lstrunbreakup)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(listn)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(string_append)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	move	$a0, $a1
	pcaddu18i	$t8, %call36(intern)
	jr	$t8
.Lfunc_end83:
	.size	so_init_name, .Lfunc_end83-so_init_name
                                        # -- End function
	.globl	so_ext                          # -- Begin function so_ext
	.p2align	5
	.type	so_ext,@function
so_ext:                                 # @so_ext
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	beqz	$fp, .LBB84_2
# %bb.1:
	ori	$a0, $zero, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(listn)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(string_append)
	jr	$t8
.LBB84_2:
	move	$a0, $a2
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end84:
	.size	so_ext, .Lfunc_end84-so_ext
                                        # -- End function
	.globl	load_so                         # -- Begin function load_so
	.p2align	5
	.type	load_so,@function
load_so:                                # @load_so
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a0
	pcaddu18i	$ra, %call36(so_init_name)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(siod_verbose_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB85_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
.LBB85_2:
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(siod_verbose_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB85_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
.LBB85_4:
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end85:
	.size	load_so, .Lfunc_end85-load_so
                                        # -- End function
	.globl	require_so                      # -- Begin function require_so
	.p2align	5
	.type	require_so,@function
require_so:                             # @require_so
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(so_init_name)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(symbol_boundp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB86_3
# %bb.1:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(symbol_value)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB86_3
# %bb.2:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB86_3:
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(load_so)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(a_true_value)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(setvar)
	jr	$t8
.Lfunc_end86:
	.size	require_so, .Lfunc_end86-require_so
                                        # -- End function
	.globl	siod_lib_l                      # -- Begin function siod_lib_l
	.p2align	5
	.type	siod_lib_l,@function
siod_lib_l:                             # @siod_lib_l
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(siod_lib)
	ld.d	$a0, $a0, %got_pc_lo12(siod_lib)
	ld.d	$a0, $a0, 0
	pcaddu18i	$t8, %call36(rintern)
	jr	$t8
.Lfunc_end87:
	.size	siod_lib_l, .Lfunc_end87-siod_lib_l
                                        # -- End function
	.globl	ccall_catch_1                   # -- Begin function ccall_catch_1
	.p2align	5
	.type	ccall_catch_1,@function
ccall_catch_1:                          # @ccall_catch_1
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(catch_framep)
	ld.d	$a1, $a1, %got_pc_lo12(catch_framep)
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 320
	st.d	$a2, $a1, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end88:
	.size	ccall_catch_1, .Lfunc_end88-ccall_catch_1
                                        # -- End function
	.globl	ccall_catch                     # -- Begin function ccall_catch
	.p2align	5
	.type	ccall_catch,@function
ccall_catch:                            # @ccall_catch
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	st.d	$a0, $sp, 8
	pcalau12i	$a0, %got_pc_hi20(catch_framep)
	ld.d	$s1, $a0, %got_pc_lo12(catch_framep)
	ld.d	$a0, $s1, 0
	st.d	$a0, $sp, 328
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_setjmp)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 2
	st.d	$a1, $s1, 0
	bne	$a0, $a2, .LBB89_2
# %bb.1:
	ld.d	$a1, $sp, 328
	ld.d	$a0, $sp, 16
	b	.LBB89_3
.LBB89_2:
	move	$a0, $s0
	jirl	$ra, $fp, 0
	ld.d	$a1, $s1, 0
	ld.d	$a1, $a1, 320
.LBB89_3:
	st.d	$a1, $s1, 0
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end89:
	.size	ccall_catch, .Lfunc_end89-ccall_catch
                                        # -- End function
	.globl	decode_tm                       # -- Begin function decode_tm
	.p2align	5
	.type	decode_tm,@function
decode_tm:                              # @decode_tm
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	move	$s3, $a0
	ld.w	$a0, $a0, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 4
	move	$fp, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 8
	move	$s0, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 12
	move	$s1, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 16
	move	$s2, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 20
	move	$s4, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 24
	move	$s5, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 28
	move	$s6, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 32
	move	$s3, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 80
	st.d	$a0, $sp, 72
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	st.d	$a0, $sp, 64
	st.d	$s3, $sp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	st.d	$a0, $sp, 48
	st.d	$s6, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	st.d	$a0, $sp, 32
	st.d	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	st.d	$a0, $sp, 16
	st.d	$s4, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	pcalau12i	$a1, %pc_hi20(.L.str.103)
	addi.d	$a2, $a1, %pc_lo12(.L.str.103)
	pcalau12i	$a1, %pc_hi20(.L.str.104)
	addi.d	$a4, $a1, %pc_lo12(.L.str.104)
	pcalau12i	$a1, %pc_hi20(.L.str.105)
	addi.d	$a6, $a1, %pc_lo12(.L.str.105)
	move	$a1, $fp
	move	$a3, $s0
	move	$a5, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(symalist)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end90:
	.size	decode_tm, .Lfunc_end90-decode_tm
                                        # -- End function
	.globl	encode_tm                       # -- Begin function encode_tm
	.p2align	5
	.type	encode_tm,@function
encode_tm:                              # @encode_tm
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_2
# %bb.1:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB91_3
.LBB91_2:
	move	$a0, $zero
.LBB91_3:
	st.w	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_5
# %bb.4:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB91_6
.LBB91_5:
	move	$a0, $zero
.LBB91_6:
	st.w	$a0, $fp, 4
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_8
# %bb.7:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB91_9
.LBB91_8:
	move	$a0, $zero
.LBB91_9:
	st.w	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_11
# %bb.10:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB91_12
.LBB91_11:
	move	$a0, $zero
.LBB91_12:
	st.w	$a0, $fp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_14
# %bb.13:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB91_15
.LBB91_14:
	move	$a0, $zero
.LBB91_15:
	st.w	$a0, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_17
# %bb.16:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB91_18
.LBB91_17:
	move	$a0, $zero
.LBB91_18:
	st.w	$a0, $fp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_20
# %bb.19:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB91_21
.LBB91_20:
	move	$a0, $zero
.LBB91_21:
	st.w	$a0, $fp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_23
# %bb.22:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB91_24
.LBB91_23:
	move	$a0, $zero
.LBB91_24:
	st.w	$a0, $fp, 28
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(assq)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_26
# %bb.25:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	b	.LBB91_27
.LBB91_26:
	addi.d	$a0, $zero, -1
.LBB91_27:
	st.w	$a0, $fp, 32
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end91:
	.size	encode_tm, .Lfunc_end91-encode_tm
                                        # -- End function
	.globl	llocaltime                      # -- Begin function llocaltime
	.p2align	5
	.type	llocaltime,@function
llocaltime:                             # @llocaltime
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB92_3
# %bb.1:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB92_4
.LBB92_2:
	pcaddu18i	$ra, %call36(decode_tm)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB92_3:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB92_2
.LBB92_4:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end92:
	.size	llocaltime, .Lfunc_end92-llocaltime
                                        # -- End function
	.globl	lgmtime                         # -- Begin function lgmtime
	.p2align	5
	.type	lgmtime,@function
lgmtime:                                # @lgmtime
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB93_3
# %bb.1:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(gmtime)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB93_4
.LBB93_2:
	pcaddu18i	$ra, %call36(decode_tm)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB93_3:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(gmtime)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB93_2
.LBB93_4:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end93:
	.size	lgmtime, .Lfunc_end93-lgmtime
                                        # -- End function
	.globl	ltzset                          # -- Begin function ltzset
	.p2align	5
	.type	ltzset,@function
ltzset:                                 # @ltzset
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(tzset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end94:
	.size	ltzset, .Lfunc_end94-ltzset
                                        # -- End function
	.globl	lmktime                         # -- Begin function lmktime
	.p2align	5
	.type	lmktime,@function
lmktime:                                # @lmktime
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(encode_tm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(mktime)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end95:
	.size	lmktime, .Lfunc_end95-lmktime
                                        # -- End function
	.globl	lstrptime                       # -- Begin function lstrptime
	.p2align	5
	.type	lstrptime,@function
lstrptime:                              # @lstrptime
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a1, $sp, 16
	move	$a0, $a2
	pcaddu18i	$ra, %call36(encode_tm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strptime)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB96_2
# %bb.1:
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(decode_tm)
	jirl	$ra, $ra, 0
	b	.LBB96_3
.LBB96_2:
	move	$a0, $zero
.LBB96_3:
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end96:
	.size	lstrptime, .Lfunc_end96-lstrptime
                                        # -- End function
	.globl	lstrftime                       # -- Begin function lstrftime
	.p2align	5
	.type	lstrftime,@function
lstrftime:                              # @lstrftime
# %bb.0:
	addi.d	$sp, $sp, -1120
	st.d	$ra, $sp, 1112                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1096                  # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB97_2
# %bb.1:
	move	$a2, $a1
	addi.d	$a1, $sp, 1040
	addi.d	$s0, $sp, 1040
	move	$a0, $a2
	pcaddu18i	$ra, %call36(encode_tm)
	jirl	$ra, $ra, 0
	b	.LBB97_3
.LBB97_2:
	addi.d	$a0, $sp, 1040
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1040
	pcaddu18i	$ra, %call36(gmtime)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB97_5
.LBB97_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1024
	move	$a3, $s0
	pcaddu18i	$ra, %call36(strftime)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB97_5
# %bb.4:
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	b	.LBB97_6
.LBB97_5:
	move	$a0, $zero
.LBB97_6:
	ld.d	$s0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1120
	ret
.Lfunc_end97:
	.size	lstrftime, .Lfunc_end97-lstrftime
                                        # -- End function
	.globl	lchdir                          # -- Begin function lchdir
	.p2align	5
	.type	lchdir,@function
lchdir:                                 # @lchdir
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB98_4
# %bb.1:
	ld.hu	$a1, $a0, 2
	ori	$a2, $zero, 17
	bne	$a1, $a2, .LBB98_4
# %bb.2:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fchdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB98_7
# %bb.3:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	b	.LBB98_6
.LBB98_4:                               # %.critedge
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(chdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB98_7
# %bb.5:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
.LBB98_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB98_7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end98:
	.size	lchdir, .Lfunc_end98-lchdir
                                        # -- End function
	.globl	lgetpass                        # -- Begin function lgetpass
	.p2align	5
	.type	lgetpass,@function
lgetpass:                               # @lgetpass
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s0, .LBB99_2
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	b	.LBB99_3
.LBB99_2:
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
.LBB99_3:
	pcaddu18i	$ra, %call36(getpass)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB99_5
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcons)
	jr	$t8
.LBB99_5:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end99:
	.size	lgetpass, .Lfunc_end99-lgetpass
                                        # -- End function
	.globl	lpipe                           # -- Begin function lpipe
	.p2align	5
	.type	lpipe,@function
lpipe:                                  # @lpipe
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(pipe)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB100_2
# %bb.1:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB100_3
.LBB100_2:
	ld.w	$a0, $sp, 0
	ori	$s2, $zero, 17
	st.h	$s2, $fp, 2
	pcalau12i	$a1, %pc_hi20(.L.str.92)
	addi.d	$a1, $a1, %pc_lo12(.L.str.92)
	pcaddu18i	$ra, %call36(fdopen)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 4
	st.d	$a0, $fp, 8
	st.h	$s2, $s0, 2
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(fdopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(listn)
	jirl	$ra, $ra, 0
.LBB100_3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end100:
	.size	lpipe, .Lfunc_end100-lpipe
                                        # -- End function
	.globl	err_large_index                 # -- Begin function err_large_index
	.p2align	5
	.type	err_large_index,@function
err_large_index:                        # @err_large_index
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end101:
	.size	err_large_index, .Lfunc_end101-err_large_index
                                        # -- End function
	.globl	datref                          # -- Begin function datref
	.p2align	5
	.type	datref,@function
datref:                                 # @datref
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s2, $a1
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bgez	$a0, .LBB102_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_2:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB102_32
# %bb.3:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI102_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI102_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB102_4:
	ld.d	$a0, $sp, 0
	slli.d	$s1, $s1, 2
	addi.d	$a1, $s1, 4
	bge	$a0, $a1, .LBB102_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_6:
	fldx.s	$fa0, $fp, $s1
	fcvt.d.s	$fa0, $fa0
	b	.LBB102_37
.LBB102_7:
	ld.d	$a0, $sp, 0
	slli.d	$s1, $s1, 1
	addi.d	$a1, $s1, 2
	bge	$a0, $a1, .LBB102_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_9:
	ldx.h	$a0, $fp, $s1
	b	.LBB102_31
.LBB102_10:
	ld.d	$a0, $sp, 0
	slli.d	$s1, $s1, 3
	addi.d	$a1, $s1, 8
	bge	$a0, $a1, .LBB102_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_12:
	ldx.d	$a0, $fp, $s1
	srli.d	$a1, $a0, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	b	.LBB102_37
.LBB102_13:
	ld.d	$a0, $sp, 0
	blt	$s1, $a0, .LBB102_15
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_15:
	ldx.b	$a0, $fp, $s1
	b	.LBB102_31
.LBB102_16:
	ld.d	$a0, $sp, 0
	blt	$s1, $a0, .LBB102_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_18:
	ldx.bu	$a0, $fp, $s1
	b	.LBB102_31
.LBB102_19:
	ld.d	$a0, $sp, 0
	slli.d	$s1, $s1, 2
	addi.d	$a1, $s1, 4
	bge	$a0, $a1, .LBB102_21
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_21:
	ldx.wu	$a0, $fp, $s1
	b	.LBB102_36
.LBB102_22:
	ld.d	$a0, $sp, 0
	slli.d	$s1, $s1, 3
	addi.d	$a1, $s1, 8
	bge	$a0, $a1, .LBB102_24
# %bb.23:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_24:
	fldx.d	$fa0, $fp, $s1
	b	.LBB102_37
.LBB102_25:
	ld.d	$a0, $sp, 0
	slli.d	$s1, $s1, 1
	addi.d	$a1, $s1, 2
	bge	$a0, $a1, .LBB102_27
# %bb.26:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_27:
	ldx.hu	$a0, $fp, $s1
	b	.LBB102_31
.LBB102_28:
	ld.d	$a0, $sp, 0
	slli.d	$s1, $s1, 2
	addi.d	$a1, $s1, 4
	bge	$a0, $a1, .LBB102_30
# %bb.29:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_30:
	ldx.w	$a0, $fp, $s1
.LBB102_31:
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	b	.LBB102_37
.LBB102_32:
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB102_38
.LBB102_33:
	ld.d	$a0, $sp, 0
	slli.d	$s1, $s1, 3
	addi.d	$a1, $s1, 8
	bge	$a0, $a1, .LBB102_35
# %bb.34:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_35:
	ldx.d	$a0, $fp, $s1
.LBB102_36:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB102_37:
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
.LBB102_38:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end102:
	.size	datref, .Lfunc_end102-datref
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI102_0:
	.word	.LBB102_4-.LJTI102_0
	.word	.LBB102_22-.LJTI102_0
	.word	.LBB102_13-.LJTI102_0
	.word	.LBB102_16-.LJTI102_0
	.word	.LBB102_7-.LJTI102_0
	.word	.LBB102_25-.LJTI102_0
	.word	.LBB102_28-.LJTI102_0
	.word	.LBB102_19-.LJTI102_0
	.word	.LBB102_33-.LJTI102_0
	.word	.LBB102_10-.LJTI102_0
                                        # -- End function
	.text
	.globl	sdatref                         # -- Begin function sdatref
	.p2align	5
	.type	sdatref,@function
sdatref:                                # @sdatref
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(datref)
	jr	$t8
.Lfunc_end103:
	.size	sdatref, .Lfunc_end103-sdatref
                                        # -- End function
	.globl	mkdatref                        # -- Begin function mkdatref
	.p2align	5
	.type	mkdatref,@function
mkdatref:                               # @mkdatref
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(closure)
	jr	$t8
.Lfunc_end104:
	.size	mkdatref, .Lfunc_end104-mkdatref
                                        # -- End function
	.globl	datlength                       # -- Begin function datlength
	.p2align	5
	.type	datlength,@function
datlength:                              # @datlength
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a1
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB105_8
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI105_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI105_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB105_2:
	ld.d	$a0, $sp, 8
	srli.d	$a0, $a0, 2
	b	.LBB105_5
.LBB105_3:
	ld.d	$a0, $sp, 8
	srli.d	$a0, $a0, 3
	b	.LBB105_5
.LBB105_4:
	ld.d	$a0, $sp, 8
	srli.d	$a0, $a0, 1
.LBB105_5:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB105_6:
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB105_7:
	ld.d	$a0, $sp, 8
	srli.d	$a1, $a0, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	b	.LBB105_6
.LBB105_8:
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end105:
	.size	datlength, .Lfunc_end105-datlength
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI105_0:
	.word	.LBB105_2-.LJTI105_0
	.word	.LBB105_3-.LJTI105_0
	.word	.LBB105_7-.LJTI105_0
	.word	.LBB105_7-.LJTI105_0
	.word	.LBB105_4-.LJTI105_0
	.word	.LBB105_4-.LJTI105_0
	.word	.LBB105_2-.LJTI105_0
	.word	.LBB105_2-.LJTI105_0
	.word	.LBB105_3-.LJTI105_0
	.word	.LBB105_3-.LJTI105_0
                                        # -- End function
	.text
	.globl	siod_main                       # -- Begin function siod_main
	.p2align	5
	.type	siod_main,@function
siod_main:                              # @siod_main
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
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a2, $a1, %pc_lo12(.L.str.115)
	ori	$a1, $zero, 2
	st.d	$a2, $sp, 56
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blt	$a0, $a1, .LBB106_19
# %bb.1:                                # %.lr.ph
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ori	$fp, $zero, 45
	pcalau12i	$a1, %pc_hi20(.L.str.122)
	addi.d	$s3, $a1, %pc_lo12(.L.str.122)
	ori	$s0, $zero, 118
	pcalau12i	$a1, %pc_hi20(.Lstr.1)
	addi.d	$a1, $a1, %pc_lo12(.Lstr.1)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$s1, $zero
	move	$a3, $zero
	ori	$s4, $zero, 109
	b	.LBB106_3
	.p2align	4, , 16
.LBB106_2:                              #   in Loop: Header=BB106_3 Depth=1
	addi.w	$a3, $a3, 1
	addi.d	$s2, $s2, 1
	beq	$s2, $a0, .LBB106_18
.LBB106_3:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB106_7 Depth 2
	slli.d	$a2, $s2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a2
	ld.bu	$a1, $s6, 0
	bne	$a1, $fp, .LBB106_2
# %bb.4:                                # %.preheader93.preheader
                                        #   in Loop: Header=BB106_3 Depth=1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	b	.LBB106_7
	.p2align	4, , 16
.LBB106_5:                              # %.tail89.thread
                                        #   in Loop: Header=BB106_7 Depth=2
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(process_cla)
	jirl	$ra, $ra, 0
.LBB106_6:                              #   in Loop: Header=BB106_7 Depth=2
	ld.bu	$a0, $s5, 0
	sltu	$a0, $zero, $a0
	ldx.bu	$a1, $s5, $a0
	add.d	$s6, $s5, $a0
	beqz	$a1, .LBB106_17
.LBB106_7:                              # %.preheader93
                                        #   Parent Loop BB106_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bnez	$a0, .LBB106_9
# %bb.8:                                #   in Loop: Header=BB106_7 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s5, $s6, $a0
.LBB106_9:                              # %sub_0
                                        #   in Loop: Header=BB106_7 Depth=2
	sub.d	$s8, $s5, $s6
	addi.d	$a0, $s8, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $sp, 64
	move	$a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s7, $s8
	ld.bu	$a0, $s7, 0
	bne	$a0, $fp, .LBB106_14
# %bb.10:                               # %.tail
                                        #   in Loop: Header=BB106_7 Depth=2
	ld.bu	$a0, $s7, 1
	bne	$a0, $s0, .LBB106_14
# %bb.11:                               #   in Loop: Header=BB106_7 Depth=2
	addi.d	$s6, $s7, 2
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB106_14
# %bb.12:                               #   in Loop: Header=BB106_7 Depth=2
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 48
	beq	$a0, $a1, .LBB106_14
# %bb.13:                               #   in Loop: Header=BB106_7 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB106_14:                             # %sub_090
                                        #   in Loop: Header=BB106_7 Depth=2
	ld.d	$a0, $sp, 64
	ld.bu	$a1, $a0, 0
	bne	$a1, $fp, .LBB106_5
# %bb.15:                               # %.tail89
                                        #   in Loop: Header=BB106_7 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB106_5
# %bb.16:                               #   in Loop: Header=BB106_7 Depth=2
	addi.d	$a0, $a0, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB106_6
	.p2align	4, , 16
.LBB106_17:                             #   in Loop: Header=BB106_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s2, $s2, 1
	bne	$s2, $a0, .LBB106_3
.LBB106_18:                             # %._crit_edge.loopexit
	sltui	$s6, $a3, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sltui	$s5, $a0, 1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	b	.LBB106_20
.LBB106_19:
	move	$s1, $zero
	ori	$s6, $zero, 1
	ori	$s5, $zero, 1
.LBB106_20:                             # %._crit_edge
	pcaddu18i	$ra, %call36(print_welcome)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(print_hs_1)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_storage)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	blez	$fp, .LBB106_23
# %bb.21:                               # %.lr.ph106.preheader
	move	$s3, $zero
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB106_22:                             # %.lr.ph106
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB106_22
	b	.LBB106_24
.LBB106_23:
	move	$s3, $zero
.LBB106_24:                             # %._crit_edge107
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(nreverse)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB106_28
# %bb.25:                               # %.lr.ph112.split
	ld.d	$s4, $s2, 0
	beqz	$s4, .LBB106_28
# %bb.26:                               # %.lr.ph120.preheader
	move	$s3, $zero
	addi.d	$fp, $s2, 8
	.p2align	4, , 16
.LBB106_27:                             # %.lr.ph120
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 0
	move	$s3, $a0
	addi.d	$fp, $fp, 8
	bnez	$s4, .LBB106_27
	b	.LBB106_29
.LBB106_28:
	move	$s3, $zero
.LBB106_29:                             # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(nreverse)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_subrs)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_trace)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_slibu)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	pcalau12i	$a1, %pc_hi20(cgi_main)
	addi.d	$a1, $a1, %pc_lo12(cgi_main)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB106_31
# %bb.30:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(repl_driver)
	jirl	$ra, $ra, 0
	b	.LBB106_38
.LBB106_31:                             # %.preheader
	addi.w	$fp, $s1, 0
	ori	$a0, $zero, 1
	slt	$a0, $a0, $fp
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	slti	$a1, $a3, 3
	ori	$a2, $zero, 3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$a0, $a1, $a0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB106_41
# %bb.32:                               # %.lr.ph123.preheader
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s0, $a1, 8
	addi.d	$s1, $a0, -1
	ori	$s2, $zero, 45
	b	.LBB106_34
	.p2align	4, , 16
.LBB106_33:                             #   in Loop: Header=BB106_34 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	beqz	$s1, .LBB106_41
.LBB106_34:                             # %.lr.ph123
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.bu	$a1, $a0, 0
	beq	$a1, $s2, .LBB106_33
# %bb.35:                               #   in Loop: Header=BB106_34 Depth=1
	pcaddu18i	$ra, %call36(htqs_arg)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB106_33
# %bb.36:                               # %._crit_edge124
	beqz	$fp, .LBB106_38
.LBB106_37:
	ori	$a0, $zero, 2
	slt	$a0, $a0, $fp
	andi	$a1, $s5, 1
	pcalau12i	$a2, %pc_hi20(.L.str.130)
	addi.d	$a2, $a2, %pc_lo12(.L.str.130)
	masknez	$a3, $a2, $a1
	pcalau12i	$a4, %pc_hi20(.L.str.129)
	addi.d	$a4, $a4, %pc_lo12(.L.str.129)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(htqs_arg)
	jirl	$ra, $ra, 0
.LBB106_38:
	move	$fp, $a0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(siod_verbose_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB106_40
# %bb.39:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB106_40:
	addi.w	$a0, $fp, 0
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
.LBB106_41:
	move	$a0, $zero
	bnez	$fp, .LBB106_37
	b	.LBB106_38
.Lfunc_end106:
	.size	siod_main, .Lfunc_end106-siod_main
                                        # -- End function
	.globl	init_slibu                      # -- Begin function init_slibu
	.p2align	5
	.type	init_slibu,@function
init_slibu:                             # @init_slibu
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(allocate_user_tc)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(tc_opendir)
	st.d	$a0, $fp, %pc_lo12(tc_opendir)
	pcalau12i	$a1, %pc_hi20(opendir_gc_free)
	addi.d	$a4, $a1, %pc_lo12(opendir_gc_free)
	addi.d	$a5, $sp, 8
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(set_gc_hooks)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(tc_opendir)
	pcalau12i	$a1, %pc_hi20(opendir_prin1)
	addi.d	$a1, $a1, %pc_lo12(opendir_prin1)
	pcaddu18i	$ra, %call36(set_print_hooks)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcalau12i	$a1, %pc_hi20(l_chmod)
	addi.d	$a1, $a1, %pc_lo12(l_chmod)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(sym_channels)
	addi.d	$fp, $a0, %pc_lo12(sym_channels)
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a1, $a0, %pc_lo12(.L.str.137)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gc_protect_sym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcalau12i	$a1, %pc_hi20(lsystem)
	addi.d	$a1, $a1, %pc_lo12(lsystem)
	pcaddu18i	$ra, %call36(init_lsubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	pcalau12i	$a1, %pc_hi20(lgetgid)
	addi.d	$a1, $a1, %pc_lo12(lgetgid)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	pcalau12i	$a1, %pc_hi20(lgetuid)
	addi.d	$a1, $a1, %pc_lo12(lgetuid)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(lgetcwd)
	addi.d	$a1, $a1, %pc_lo12(lgetcwd)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	pcalau12i	$a1, %pc_hi20(lgetpwuid)
	addi.d	$a1, $a1, %pc_lo12(lgetpwuid)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcalau12i	$a1, %pc_hi20(lgetpwnam)
	addi.d	$a1, $a1, %pc_lo12(lgetpwnam)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcalau12i	$a1, %pc_hi20(lgetpwent)
	addi.d	$a1, $a1, %pc_lo12(lgetpwent)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a0, $a0, %pc_lo12(.L.str.144)
	pcalau12i	$a1, %pc_hi20(lsetpwent)
	addi.d	$a1, $a1, %pc_lo12(lsetpwent)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	pcalau12i	$a1, %pc_hi20(lendpwent)
	addi.d	$a1, $a1, %pc_lo12(lendpwent)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a1, %pc_hi20(lsetuid)
	addi.d	$a1, $a1, %pc_lo12(lsetuid)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a1, %pc_hi20(lseteuid)
	addi.d	$a1, $a1, %pc_lo12(lseteuid)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	pcalau12i	$a1, %pc_hi20(lgeteuid)
	addi.d	$a1, $a1, %pc_lo12(lgeteuid)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
	pcalau12i	$a1, %pc_hi20(laccess_problem)
	addi.d	$a1, $a1, %pc_lo12(laccess_problem)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcalau12i	$a1, %pc_hi20(lutime)
	addi.d	$a1, $a1, %pc_lo12(lutime)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	pcalau12i	$a1, %pc_hi20(lfchmod)
	addi.d	$a1, $a1, %pc_lo12(lfchmod)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	pcalau12i	$a1, %pc_hi20(lrandom)
	addi.d	$a1, $a1, %pc_lo12(lrandom)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a0, $a0, %pc_lo12(.L.str.149)
	pcalau12i	$a1, %pc_hi20(lsrandom)
	addi.d	$a1, $a1, %pc_lo12(lsrandom)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	pcalau12i	$a1, %got_pc_hi20(car)
	ld.d	$a1, $a1, %got_pc_lo12(car)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	pcalau12i	$a1, %got_pc_hi20(cdr)
	ld.d	$a1, $a1, %got_pc_lo12(cdr)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a1, %pc_hi20(lfork)
	addi.d	$a1, $a1, %pc_lo12(lfork)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(lexec)
	addi.d	$a1, $a1, %pc_lo12(lexec)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a1, %pc_hi20(lnice)
	addi.d	$a1, $a1, %pc_lo12(lnice)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a1, %pc_hi20(lwait)
	addi.d	$a1, $a1, %pc_lo12(lwait)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	pcalau12i	$a1, %pc_hi20(lgetpgrp)
	addi.d	$a1, $a1, %pc_lo12(lgetpgrp)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a0, $a0, %pc_lo12(.L.str.153)
	pcalau12i	$a1, %pc_hi20(lgetgrgid)
	addi.d	$a1, $a1, %pc_lo12(lgetgrgid)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a1, %pc_hi20(lsetpgid)
	addi.d	$a1, $a1, %pc_lo12(lsetpgid)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcalau12i	$a1, %pc_hi20(lkill)
	addi.d	$a1, $a1, %pc_lo12(lkill)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$a0, $a0, %pc_lo12(.L.str.154)
	pcalau12i	$a1, %pc_hi20(lmemref_byte)
	addi.d	$a1, $a1, %pc_lo12(lmemref_byte)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	pcalau12i	$a1, %pc_hi20(lgetpid)
	addi.d	$a1, $a1, %pc_lo12(lgetpid)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	pcalau12i	$a1, %pc_hi20(lgetppid)
	addi.d	$a1, $a1, %pc_lo12(lgetppid)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
	pcalau12i	$a1, %pc_hi20(lexit)
	addi.d	$a1, $a1, %pc_lo12(lexit)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	pcalau12i	$a1, %pc_hi20(ltrunc)
	addi.d	$a1, $a1, %pc_lo12(ltrunc)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcalau12i	$a1, %pc_hi20(lputenv)
	addi.d	$a1, $a1, %pc_lo12(lputenv)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a1, %pc_hi20(l_opendir)
	addi.d	$a1, $a1, %pc_lo12(l_opendir)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a1, %pc_hi20(l_closedir)
	addi.d	$a1, $a1, %pc_lo12(l_closedir)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a0, $a0, %pc_lo12(.L.str.159)
	pcalau12i	$a1, %pc_hi20(l_readdir)
	addi.d	$a1, $a1, %pc_lo12(l_readdir)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	pcalau12i	$a1, %pc_hi20(delete_file)
	addi.d	$a1, $a1, %pc_lo12(delete_file)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
	pcalau12i	$a1, %pc_hi20(file_times)
	addi.d	$a1, $a1, %pc_lo12(file_times)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	pcalau12i	$a1, %pc_hi20(utime2str)
	addi.d	$a1, $a1, %pc_lo12(utime2str)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	pcalau12i	$a1, %pc_hi20(unix_time)
	addi.d	$a1, $a1, %pc_lo12(unix_time)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	pcalau12i	$a1, %pc_hi20(unix_ctime)
	addi.d	$a1, $a1, %pc_lo12(unix_ctime)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	pcalau12i	$a1, %pc_hi20(lgetenv)
	addi.d	$a1, $a1, %pc_lo12(lgetenv)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	pcalau12i	$a1, %pc_hi20(lsleep)
	addi.d	$a1, $a1, %pc_lo12(lsleep)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcalau12i	$a1, %pc_hi20(url_encode)
	addi.d	$a1, $a1, %pc_lo12(url_encode)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcalau12i	$a1, %pc_hi20(url_decode)
	addi.d	$a1, $a1, %pc_lo12(url_decode)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a0, $a0, %pc_lo12(.L.str.169)
	pcalau12i	$a1, %pc_hi20(lgets)
	addi.d	$a1, $a1, %pc_lo12(lgets)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	pcalau12i	$a1, %pc_hi20(readline)
	addi.d	$a1, $a1, %pc_lo12(readline)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(html_encode)
	addi.d	$a1, $a1, %pc_lo12(html_encode)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$a0, $a0, %pc_lo12(.L.str.172)
	pcalau12i	$a1, %pc_hi20(html_decode)
	addi.d	$a1, $a1, %pc_lo12(html_decode)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a0, $a0, %pc_lo12(.L.str.173)
	pcalau12i	$a1, %pc_hi20(decode_st_mode)
	addi.d	$a1, $a1, %pc_lo12(decode_st_mode)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(encode_st_mode)
	addi.d	$a1, $a1, %pc_lo12(encode_st_mode)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$a0, $a0, %pc_lo12(.L.str.175)
	pcalau12i	$a1, %pc_hi20(l_stat)
	addi.d	$a1, $a1, %pc_lo12(l_stat)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.176)
	addi.d	$a0, $a0, %pc_lo12(.L.str.176)
	pcalau12i	$a1, %pc_hi20(l_fstat)
	addi.d	$a1, $a1, %pc_lo12(l_fstat)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.177)
	addi.d	$a0, $a0, %pc_lo12(.L.str.177)
	pcalau12i	$a1, %pc_hi20(encode_open_flags)
	addi.d	$a1, $a1, %pc_lo12(encode_open_flags)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.178)
	addi.d	$a0, $a0, %pc_lo12(.L.str.178)
	pcalau12i	$a1, %pc_hi20(l_lstat)
	addi.d	$a1, $a1, %pc_lo12(l_lstat)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcalau12i	$a1, %pc_hi20(lsymlink)
	addi.d	$a1, $a1, %pc_lo12(lsymlink)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a1, %pc_hi20(llink)
	addi.d	$a1, $a1, %pc_lo12(llink)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a1, %pc_hi20(lunlink)
	addi.d	$a1, $a1, %pc_lo12(lunlink)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a1, %pc_hi20(lrmdir)
	addi.d	$a1, $a1, %pc_lo12(lrmdir)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(lmkdir)
	addi.d	$a1, $a1, %pc_lo12(lmkdir)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcalau12i	$a1, %pc_hi20(lrename)
	addi.d	$a1, $a1, %pc_lo12(lrename)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a1, %pc_hi20(lreadlink)
	addi.d	$a1, $a1, %pc_lo12(lreadlink)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	pcalau12i	$a1, %pc_hi20(l_chown)
	addi.d	$a1, $a1, %pc_lo12(l_chown)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$a0, $a0, %pc_lo12(.L.str.179)
	pcalau12i	$a1, %pc_hi20(http_date)
	addi.d	$a1, $a1, %pc_lo12(http_date)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.180)
	addi.d	$a0, $a0, %pc_lo12(.L.str.180)
	pcalau12i	$a1, %pc_hi20(popen_l)
	addi.d	$a1, $a1, %pc_lo12(popen_l)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	pcalau12i	$a1, %pc_hi20(pclose_l)
	addi.d	$a1, $a1, %pc_lo12(pclose_l)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$a0, $a0, %pc_lo12(.L.str.181)
	pcalau12i	$a1, %pc_hi20(load_so)
	addi.d	$a1, $a1, %pc_lo12(load_so)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.182)
	addi.d	$a0, $a0, %pc_lo12(.L.str.182)
	pcalau12i	$a1, %pc_hi20(require_so)
	addi.d	$a1, $a1, %pc_lo12(require_so)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$a0, $a0, %pc_lo12(.L.str.183)
	pcalau12i	$a1, %pc_hi20(so_ext)
	addi.d	$a1, $a1, %pc_lo12(so_ext)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.184)
	addi.d	$a0, $a0, %pc_lo12(.L.str.184)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	movgr2fr.d	$fs0, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.185)
	addi.d	$a0, $a0, %pc_lo12(.L.str.185)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.186)
	addi.d	$a0, $a0, %pc_lo12(.L.str.186)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -1024
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.187)
	addi.d	$a0, $a0, %pc_lo12(.L.str.187)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.188)
	addi.d	$a0, $a0, %pc_lo12(.L.str.188)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.189)
	addi.d	$a0, $a0, %pc_lo12(.L.str.189)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -1024
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.190)
	addi.d	$a0, $a0, %pc_lo12(.L.str.190)
	pcalau12i	$a1, %pc_hi20(lF_SETLK)
	addi.d	$a1, $a1, %pc_lo12(lF_SETLK)
	pcaddu18i	$ra, %call36(init_subr_5)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.191)
	addi.d	$a0, $a0, %pc_lo12(.L.str.191)
	pcalau12i	$a1, %pc_hi20(lF_SETLKW)
	addi.d	$a1, $a1, %pc_lo12(lF_SETLKW)
	pcaddu18i	$ra, %call36(init_subr_5)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.192)
	addi.d	$a0, $a0, %pc_lo12(.L.str.192)
	pcalau12i	$a1, %pc_hi20(lF_GETLK)
	addi.d	$a1, $a1, %pc_lo12(lF_GETLK)
	pcaddu18i	$ra, %call36(init_subr_5)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.193)
	addi.d	$a0, $a0, %pc_lo12(.L.str.193)
	pcalau12i	$a1, %pc_hi20(siod_lib_l)
	addi.d	$a1, $a1, %pc_lo12(siod_lib_l)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(ld_library_path_env)
	ld.d	$s1, $s3, %pc_lo12(ld_library_path_env)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB107_3
# %bb.1:
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(siod_lib)
	ld.d	$a0, $a0, %got_pc_lo12(siod_lib)
	ld.d	$s0, $a0, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB107_5
# %bb.2:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s4, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$s1, $a0, %pc_lo12(.L.str.195)
	b	.LBB107_4
.LBB107_3:                              # %.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(siod_lib)
	ld.d	$a0, $a0, %got_pc_lo12(siod_lib)
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$s1, $a0, %pc_lo12(.L.str.115)
	move	$s4, $zero
	move	$fp, $s1
.LBB107_4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $s4
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, %pc_lo12(ld_library_path_env)
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(siod_lib)
	ld.d	$a0, $a0, %got_pc_lo12(siod_lib)
	ld.d	$a5, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$a1, $a0, %pc_lo12(.L.str.194)
	move	$a0, $s0
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(putenv)
	jirl	$ra, $ra, 0
.LBB107_5:
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	pcalau12i	$a1, %pc_hi20(llocaltime)
	addi.d	$a1, $a1, %pc_lo12(llocaltime)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	pcalau12i	$a1, %pc_hi20(lgmtime)
	addi.d	$a1, $a1, %pc_lo12(lgmtime)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a0, $a0, %pc_lo12(.L.str.196)
	pcalau12i	$a1, %pc_hi20(ltzset)
	addi.d	$a1, $a1, %pc_lo12(ltzset)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a0, $a0, %pc_lo12(.L.str.197)
	pcalau12i	$a1, %pc_hi20(lmktime)
	addi.d	$a1, $a1, %pc_lo12(lmktime)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	pcalau12i	$a1, %pc_hi20(lchdir)
	addi.d	$a1, $a1, %pc_lo12(lchdir)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$a0, $a0, %pc_lo12(.L.str.198)
	pcalau12i	$a1, %pc_hi20(lstrptime)
	addi.d	$a1, $a1, %pc_lo12(lstrptime)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$a0, $a0, %pc_lo12(.L.str.199)
	pcalau12i	$a1, %pc_hi20(lstrftime)
	addi.d	$a1, $a1, %pc_lo12(lstrftime)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a0, $a0, %pc_lo12(.L.str.200)
	pcalau12i	$a1, %pc_hi20(lgetpass)
	addi.d	$a1, $a1, %pc_lo12(lgetpass)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	pcalau12i	$a1, %pc_hi20(lpipe)
	addi.d	$a1, $a1, %pc_lo12(lpipe)
	pcaddu18i	$ra, %call36(init_subr_0)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$a0, $a0, %pc_lo12(.L.str.201)
	pcalau12i	$a1, %pc_hi20(lalarm)
	addi.d	$a1, $a1, %pc_lo12(lalarm)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.202)
	addi.d	$a0, $a0, %pc_lo12(.L.str.202)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$a0, $a0, %pc_lo12(.L.str.203)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -1024
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -990
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -1004
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -1016
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$a0, $a0, %pc_lo12(.L.str.207)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -996
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.208)
	addi.d	$a0, $a0, %pc_lo12(.L.str.208)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$a0, $a0, %pc_lo12(.L.str.209)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -1000
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.210)
	addi.d	$a0, $a0, %pc_lo12(.L.str.210)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -1008
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$a0, $a0, %pc_lo12(.L.str.211)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vldi	$vr0, -992
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$a0, $a0, %pc_lo12(.L.str.212)
	pcalau12i	$a1, %pc_hi20(datref)
	addi.d	$a1, $a1, %pc_lo12(datref)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	pcalau12i	$a1, %pc_hi20(sdatref)
	addi.d	$a1, $a1, %pc_lo12(sdatref)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.213)
	addi.d	$a0, $a0, %pc_lo12(.L.str.213)
	pcalau12i	$a1, %pc_hi20(mkdatref)
	addi.d	$a1, $a1, %pc_lo12(mkdatref)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.214)
	addi.d	$a0, $a0, %pc_lo12(.L.str.214)
	pcalau12i	$a1, %pc_hi20(datlength)
	addi.d	$a1, $a1, %pc_lo12(datlength)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.215)
	addi.d	$a0, $a0, %pc_lo12(.L.str.215)
	pcalau12i	$a1, %pc_hi20(lposition_script)
	addi.d	$a1, $a1, %pc_lo12(lposition_script)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.230)
	addi.d	$a0, $a0, %pc_lo12(.L.str.230)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.231)
	addi.d	$a0, $a0, %pc_lo12(.L.str.231)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end107:
	.size	init_slibu, .Lfunc_end107-init_slibu
                                        # -- End function
	.p2align	5                               # -- Begin function cgi_main
	.type	cgi_main,@function
cgi_main:                               # @cgi_main
# %bb.0:
	beqz	$a0, .LBB108_8
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB108_7
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_7
# %bb.3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB108_7
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.216)
	addi.d	$a0, $a0, %pc_lo12(.L.str.216)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.217)
	addi.d	$a0, $a0, %pc_lo12(.L.str.217)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.218)
	addi.d	$a0, $a0, %pc_lo12(.L.str.218)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.219)
	addi.d	$a0, $a0, %pc_lo12(.L.str.219)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.220)
	addi.d	$a0, $a0, %pc_lo12(.L.str.220)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.221)
	addi.d	$a0, $a0, %pc_lo12(.L.str.221)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.222)
	addi.d	$a0, $a0, %pc_lo12(.L.str.222)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lprint)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lprint)
	jirl	$ra, $ra, 0
.LBB108_6:
	pcalau12i	$a0, %pc_hi20(.L.str.223)
	addi.d	$a0, $a0, %pc_lo12(.L.str.223)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.224)
	addi.d	$a0, $a0, %pc_lo12(.L.str.224)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB108_7:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB108_8:                              # %.critedge
	move	$a0, $zero
	ret
.Lfunc_end108:
	.size	cgi_main, .Lfunc_end108-cgi_main
                                        # -- End function
	.p2align	5                               # -- Begin function htqs_arg
	.type	htqs_arg,@function
htqs_arg:                               # @htqs_arg
# %bb.0:
	addi.d	$sp, $sp, -1056
	st.d	$ra, $sp, 1048                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1032                  # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.225)
	addi.d	$a1, $a0, %pc_lo12(.L.str.225)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB109_4
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.226)
	addi.d	$a1, $a0, %pc_lo12(.L.str.226)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB109_4
# %bb.2:
	ori	$a1, $zero, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB109_5
# %bb.3:
	move	$a0, $fp
	b	.LBB109_13
.LBB109_4:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(repl_driver)
	jirl	$ra, $ra, 0
	b	.LBB109_14
.LBB109_5:
	pcalau12i	$a0, %pc_hi20(.L.str.227)
	addi.d	$a0, $a0, %pc_lo12(.L.str.227)
	ld.w	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.w	$a1, $sp, 15
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 8
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	add.d	$a3, $s0, $a0
	beqz	$a1, .LBB109_11
# %bb.6:                                # %.lr.ph.preheader
	addi.d	$a0, $fp, 1
	ori	$a2, $zero, 92
	ori	$a4, $zero, 34
	b	.LBB109_9
	.p2align	4, , 16
.LBB109_7:                              # %.split
                                        #   in Loop: Header=BB109_9 Depth=1
	st.b	$a2, $a3, 0
	ld.bu	$a1, $a0, -1
	addi.d	$a3, $a3, 1
.LBB109_8:                              # %.split.thread
                                        #   in Loop: Header=BB109_9 Depth=1
	st.b	$a1, $a3, 0
	ld.bu	$a1, $a0, 0
	addi.d	$a5, $a3, 1
	addi.d	$a0, $a0, 1
	move	$a3, $a5
	beqz	$a1, .LBB109_12
.LBB109_9:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beq	$a1, $a2, .LBB109_7
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB109_9 Depth=1
	beq	$a1, $a4, .LBB109_7
	b	.LBB109_8
.LBB109_11:
	move	$a5, $a3
.LBB109_12:                             # %._crit_edge
	st.b	$zero, $a5, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.229)
	addi.d	$a2, $a2, %pc_lo12(.L.str.229)
	ld.h	$a3, $a2, 0
	ld.b	$a2, $a2, 2
	stx.h	$a3, $a0, $s0
	st.b	$a2, $a1, 2
	addi.d	$a0, $sp, 8
.LBB109_13:
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(repl_c_string)
	jirl	$ra, $ra, 0
.LBB109_14:
	addi.w	$a0, $a0, 0
	ld.d	$s0, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1048                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1056
	ret
.Lfunc_end109:
	.size	htqs_arg, .Lfunc_end109-htqs_arg
                                        # -- End function
	.globl	position_script                 # -- Begin function position_script
	.p2align	5
	.type	position_script,@function
position_script:                        # @position_script
# %bb.0:
	addi.d	$sp, $sp, -112
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
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	move	$s3, $zero
	move	$fp, $zero
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.b	$zero, $a1, 0
	addi.w	$s4, $zero, -1
	ori	$s5, $zero, 34
	ori	$s6, $zero, 33
	lu12i.w	$a0, 61
	ori	$s7, $a0, 144
	ori	$s8, $zero, 47
	ori	$s0, $zero, 35
	move	$s2, $s4
	b	.LBB110_5
	.p2align	4, , 16
.LBB110_1:                              #   in Loop: Header=BB110_5 Depth=1
	beq	$fp, $s6, .LBB110_12
.LBB110_2:                              #   in Loop: Header=BB110_5 Depth=1
	move	$fp, $zero
.LBB110_3:                              #   in Loop: Header=BB110_5 Depth=1
	move	$a1, $s2
.LBB110_4:                              #   in Loop: Header=BB110_5 Depth=1
	addi.d	$s3, $s3, 1
	move	$s2, $a1
	beq	$s3, $s7, .LBB110_11
.LBB110_5:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bge	$s5, $a0, .LBB110_8
# %bb.6:                                #   in Loop: Header=BB110_5 Depth=1
	beq	$a0, $s8, .LBB110_1
# %bb.7:                                #   in Loop: Header=BB110_5 Depth=1
	move	$fp, $a0
	move	$a1, $s3
	beq	$a0, $s0, .LBB110_4
	b	.LBB110_2
	.p2align	4, , 16
.LBB110_8:                              #   in Loop: Header=BB110_5 Depth=1
	bne	$a0, $s6, .LBB110_10
# %bb.9:                                #   in Loop: Header=BB110_5 Depth=1
	addi.d	$a0, $fp, -35
	sltui	$a0, $a0, 1
	maskeqz	$fp, $s6, $a0
	b	.LBB110_3
.LBB110_10:                             #   in Loop: Header=BB110_5 Depth=1
	bne	$a0, $s4, .LBB110_2
	b	.LBB110_22
.LBB110_11:
	move	$a0, $s4
	b	.LBB110_22
.LBB110_12:                             # %.preheader.preheader
	ori	$s0, $zero, 32
	addi.w	$fp, $zero, -1
	.p2align	4, , 16
.LBB110_13:                             # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB110_15
# %bb.14:                               # %.preheader
                                        #   in Loop: Header=BB110_13 Depth=1
	bne	$a0, $fp, .LBB110_13
.LBB110_15:                             # %.preheader43
	move	$s3, $zero
	ori	$s0, $zero, 10
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $fp, .LBB110_19
	.p2align	4, , 16
.LBB110_16:                             # =>This Inner Loop Header: Depth=1
	beq	$a0, $s0, .LBB110_19
# %bb.17:                               #   in Loop: Header=BB110_16 Depth=1
	addi.d	$a1, $s3, 1
	bltu	$s5, $a1, .LBB110_19
# %bb.18:                               #   in Loop: Header=BB110_16 Depth=1
	add.d	$a2, $s4, $s3
	stx.b	$a0, $s4, $s3
	st.b	$zero, $a2, 1
	move	$s3, $a1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB110_16
.LBB110_19:                             # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strspn)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$s0, $a0, .LBB110_21
# %bb.20:
	st.b	$zero, $s4, 0
.LBB110_21:                             # %.loopexit
	move	$a0, $s2
.LBB110_22:                             # %.loopexit
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
.Lfunc_end110:
	.size	position_script, .Lfunc_end110-position_script
                                        # -- End function
	.globl	siod_shuffle_args               # -- Begin function siod_shuffle_args
	.p2align	5
	.type	siod_shuffle_args,@function
siod_shuffle_args:                      # @siod_shuffle_args
# %bb.0:
	addi.d	$sp, $sp, -208
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
	move	$fp, $a1
	ld.d	$s4, $a1, 0
	move	$s0, $a0
	ld.w	$s7, $a0, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.133)
	addi.d	$a1, $a1, %pc_lo12(.L.str.133)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB111_14
# %bb.1:
	addi.d	$a1, $sp, 28
	ori	$a2, $zero, 100
	move	$s1, $a0
	pcaddu18i	$ra, %call36(position_script)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	bltz	$s2, .LBB111_14
# %bb.2:
	ld.bu	$s3, $sp, 28
	sltui	$a0, $s3, 1
	sub.d	$a0, $s7, $a0
	addi.w	$s5, $a0, 2
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	st.d	$a0, $s1, 0
	beqz	$s3, .LBB111_4
# %bb.3:
	addi.d	$a0, $sp, 28
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	ori	$s6, $zero, 2
	b	.LBB111_5
.LBB111_4:
	ori	$s6, $zero, 1
.LBB111_5:
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	addi.d	$a0, $sp, 18
	move	$a2, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 18
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$s3, $s6, 3
	stx.d	$a0, $s1, $s3
	pcalau12i	$a1, %pc_hi20(.L.str.136)
	addi.d	$a1, $a1, %pc_lo12(.L.str.136)
	addi.d	$a2, $sp, 18
	ori	$a3, $zero, 124
	move	$a4, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	blt	$s7, $a0, .LBB111_13
# %bb.6:                                # %.lr.ph.preheader
	add.d	$a0, $s6, $s7
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	sub.d	$a2, $a0, $s6
	ori	$a3, $zero, 6
	ori	$a1, $zero, 1
	bltu	$a2, $a3, .LBB111_11
# %bb.7:                                # %vector.memcheck
	alsl.d	$a3, $s6, $s1, 3
	sub.d	$a3, $a3, $s4
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB111_11
# %bb.8:                                # %vector.ph
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	srli.d	$a1, $a2, 2
	bstrins.d	$s6, $a1, 63, 2
	ori	$a4, $zero, 1
	move	$a1, $a2
	bstrins.d	$a1, $a4, 1, 0
	add.d	$a4, $s3, $s1
	addi.d	$a4, $a4, 24
	addi.d	$a5, $s4, 24
	move	$a6, $a3
	.p2align	4, , 16
.LBB111_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB111_9
# %bb.10:                               # %middle.block
	beq	$a2, $a3, .LBB111_13
.LBB111_11:                             # %.lr.ph.preheader45
	sub.d	$a0, $a0, $s6
	alsl.d	$a2, $s6, $s1, 3
	addi.d	$a2, $a2, 8
	alsl.d	$a1, $a1, $s4, 3
	.p2align	4, , 16
.LBB111_12:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB111_12
.LBB111_13:                             # %._crit_edge
	st.w	$s5, $s0, 0
	st.d	$s1, $fp, 0
.LBB111_14:
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
.Lfunc_end111:
	.size	siod_shuffle_args, .Lfunc_end111-siod_shuffle_args
                                        # -- End function
	.globl	lposition_script                # -- Begin function lposition_script
	.p2align	5
	.type	lposition_script,@function
lposition_script:                       # @lposition_script
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stdin)
	ld.d	$a1, $a1, %got_pc_lo12(stdin)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a1, $sp, 20
	ori	$a2, $zero, 100
	move	$a0, $fp
	pcaddu18i	$ra, %call36(position_script)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	bltz	$fp, .LBB112_2
# %bb.1:
	movgr2fr.d	$fa0, $fp
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $zero, -1
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	b	.LBB112_3
.LBB112_2:
	move	$a0, $zero
.LBB112_3:
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end112:
	.size	lposition_script, .Lfunc_end112-lposition_script
                                        # -- End function
	.globl	siod_init                       # -- Begin function siod_init
	.p2align	5
	.type	siod_init,@function
siod_init:                              # @siod_init
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $zero
	pcaddu18i	$ra, %call36(process_cla)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_storage)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_subrs)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_trace)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(init_slibu)
	jr	$t8
.Lfunc_end113:
	.size	siod_init, .Lfunc_end113-siod_init
                                        # -- End function
	.type	sym_channels,@object            # @sym_channels
	.bss
	.globl	sym_channels
	.p2align	3, 0x0
sym_channels:
	.dword	0
	.size	sym_channels, 8

	.type	tc_opendir,@object              # @tc_opendir
	.globl	tc_opendir
	.p2align	3, 0x0
tc_opendir:
	.dword	0                               # 0x0
	.size	tc_opendir, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LD_LIBRARY_PATH"
	.size	.L.str, 16

	.type	ld_library_path_env,@object     # @ld_library_path_env
	.data
	.globl	ld_library_path_env
	.p2align	3, 0x0
ld_library_path_env:
	.dword	.L.str
	.size	ld_library_path_env, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Cannot execute system calls!\n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"getcwd"
	.size	.L.str.2, 7

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"passwd"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"uid"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"gid"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"dir"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"gecos"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"shell"
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"setuid"
	.size	.L.str.10, 7

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"seteuid"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"bad access mode"
	.size	.L.str.12, 16

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"symlink"
	.size	.L.str.13, 8

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"link"
	.size	.L.str.14, 5

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"unlink"
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"rmdir"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"mkdir"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"readlink"
	.size	.L.str.18, 9

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"rename"
	.size	.L.str.19, 7

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"fork"
	.size	.L.str.20, 5

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"exec"
	.size	.L.str.21, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"nice"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"contains undefined options"
	.size	.L.str.23, 27

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"WCONTINUED"
	.size	.L.str.24, 11

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"WNOWAIT"
	.size	.L.str.25, 8

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"WNOHANG"
	.size	.L.str.26, 8

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"WUNTRACED"
	.size	.L.str.27, 10

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"wait"
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"kill"
	.size	.L.str.29, 5

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"setpgid"
	.size	.L.str.30, 8

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"wta to trunc"
	.size	.L.str.31, 13

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"putenv"
	.size	.L.str.32, 7

	.type	handle_sigalrm_flag,@object     # @handle_sigalrm_flag
	.local	handle_sigalrm_flag
	.comm	handle_sigalrm_flag,4,4
	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"alarm signal"
	.size	.L.str.33, 13

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"opendir"
	.size	.L.str.34, 8

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"not an opendir"
	.size	.L.str.35, 15

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"opendir not open"
	.size	.L.str.36, 17

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"closedir"
	.size	.L.str.37, 9

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"#<OPENDIR %p>"
	.size	.L.str.38, 14

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"SUID"
	.size	.L.str.39, 5

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"SGID"
	.size	.L.str.40, 5

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"RUSR"
	.size	.L.str.41, 5

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"WUSR"
	.size	.L.str.42, 5

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"XUSR"
	.size	.L.str.43, 5

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"RGRP"
	.size	.L.str.44, 5

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"WGRP"
	.size	.L.str.45, 5

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"XGRP"
	.size	.L.str.46, 5

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"ROTH"
	.size	.L.str.47, 5

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"WOTH"
	.size	.L.str.48, 5

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"XOTH"
	.size	.L.str.49, 5

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"FIFO"
	.size	.L.str.50, 5

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"DIR"
	.size	.L.str.51, 4

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"CHR"
	.size	.L.str.52, 4

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"BLK"
	.size	.L.str.53, 4

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"REG"
	.size	.L.str.54, 4

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"LNK"
	.size	.L.str.55, 4

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"SOCK"
	.size	.L.str.56, 5

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"dev"
	.size	.L.str.57, 4

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"ino"
	.size	.L.str.58, 4

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"mode"
	.size	.L.str.59, 5

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"nlink"
	.size	.L.str.60, 6

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"rdev"
	.size	.L.str.61, 5

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"size"
	.size	.L.str.62, 5

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"atime"
	.size	.L.str.63, 6

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"mtime"
	.size	.L.str.64, 6

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"ctime"
	.size	.L.str.65, 6

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"blksize"
	.size	.L.str.66, 8

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"blocks"
	.size	.L.str.67, 7

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"chmod"
	.size	.L.str.68, 6

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"utime"
	.size	.L.str.69, 6

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"fchmod"
	.size	.L.str.70, 7

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"NONBLOCK"
	.size	.L.str.71, 9

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"APPEND"
	.size	.L.str.72, 7

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"RDONLY"
	.size	.L.str.73, 7

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"WRONLY"
	.size	.L.str.74, 7

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"RDWR"
	.size	.L.str.75, 5

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"CREAT"
	.size	.L.str.76, 6

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"TRUNC"
	.size	.L.str.77, 6

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"EXCL"
	.size	.L.str.78, 5

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"%04d%02d%02d%02d%02d%02d%02d"
	.size	.L.str.79, 29

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"%s, %02d %s %04d %02d:%02d:%02d GMT"
	.size	.L.str.80, 36

	.type	.L.str.81,@object               # @.str.81
	.section	.rodata,"a",@progbits
.L.str.81:
	.asciz	"Sun\000Mon\000Tue\000Wed\000Thu\000Fri\000Sat"
	.size	.L.str.81, 28

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"Jan\000Feb\000Mar\000Apr\000May\000Jun\000Jul\000Aug\000Sep\000Oct\000Nov\000Dec"
	.size	.L.str.82, 48

	.type	.L.str.83,@object               # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"*-._@"
	.size	.L.str.83, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"%%%02X"
	.size	.L.str.84, 7

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"&gt;"
	.size	.L.str.85, 5

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"&lt;"
	.size	.L.str.86, 5

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"&amp;"
	.size	.L.str.87, 6

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"&quot;"
	.size	.L.str.88, 7

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"size must be >= 0"
	.size	.L.str.89, 18

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"not handling buffer of size"
	.size	.L.str.90, 28

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"chown"
	.size	.L.str.91, 6

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"r"
	.size	.L.str.92, 2

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"pclose"
	.size	.L.str.93, 7

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"/"
	.size	.L.str.94, 2

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"."
	.size	.L.str.95, 2

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"init_"
	.size	.L.str.96, 6

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	".so"
	.size	.L.str.97, 4

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"so-loading "
	.size	.L.str.98, 12

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"\n"
	.size	.L.str.99, 2

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"did not load function"
	.size	.L.str.100, 22

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"done.\n"
	.size	.L.str.101, 7

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"sec"
	.size	.L.str.102, 4

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"min"
	.size	.L.str.103, 4

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"hour"
	.size	.L.str.104, 5

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"mday"
	.size	.L.str.105, 5

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"mon"
	.size	.L.str.106, 4

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"year"
	.size	.L.str.107, 5

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"wday"
	.size	.L.str.108, 5

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"yday"
	.size	.L.str.109, 5

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"isdst"
	.size	.L.str.110, 6

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"localtime"
	.size	.L.str.111, 10

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"gmtime"
	.size	.L.str.112, 7

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"fchdir"
	.size	.L.str.113, 7

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"chdir"
	.size	.L.str.114, 6

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.space	1
	.size	.L.str.115, 1

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"w"
	.size	.L.str.116, 2

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"pipe"
	.size	.L.str.117, 5

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"index too large"
	.size	.L.str.118, 16

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"negative index"
	.size	.L.str.119, 15

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"unknown CTYPE"
	.size	.L.str.120, 14

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"sdatref"
	.size	.L.str.121, 8

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	",-"
	.size	.L.str.122, 3

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"*args*"
	.size	.L.str.126, 7

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"*env*"
	.size	.L.str.127, 6

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"__cgi-main"
	.size	.L.str.128, 11

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"(__cgi-main (*catch 'errobj (main))))"
	.size	.L.str.129, 38

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"(main)"
	.size	.L.str.130, 7

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	" \t\r"
	.size	.L.str.132, 4

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"rb"
	.size	.L.str.133, 3

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"siod.exe"
	.size	.L.str.134, 9

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"%ld"
	.size	.L.str.135, 4

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"%s%c%s"
	.size	.L.str.136, 7

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"*channels*"
	.size	.L.str.137, 11

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"system"
	.size	.L.str.138, 7

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"getgid"
	.size	.L.str.139, 7

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"getuid"
	.size	.L.str.140, 7

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"getpwuid"
	.size	.L.str.141, 9

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"getpwnam"
	.size	.L.str.142, 9

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"getpwent"
	.size	.L.str.143, 9

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"setpwent"
	.size	.L.str.144, 9

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"endpwent"
	.size	.L.str.145, 9

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"geteuid"
	.size	.L.str.146, 8

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"access-problem?"
	.size	.L.str.147, 16

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"random"
	.size	.L.str.148, 7

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"srandom"
	.size	.L.str.149, 8

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"first"
	.size	.L.str.150, 6

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"rest"
	.size	.L.str.151, 5

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"getpgrp"
	.size	.L.str.152, 8

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"getgrgid"
	.size	.L.str.153, 9

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"%%%memref"
	.size	.L.str.154, 10

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"getpid"
	.size	.L.str.155, 7

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"getppid"
	.size	.L.str.156, 8

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"exit"
	.size	.L.str.157, 5

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"trunc"
	.size	.L.str.158, 6

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"readdir"
	.size	.L.str.159, 8

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"delete-file"
	.size	.L.str.160, 12

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"file-times"
	.size	.L.str.161, 11

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"unix-time->strtime"
	.size	.L.str.162, 19

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"unix-time"
	.size	.L.str.163, 10

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"unix-ctime"
	.size	.L.str.164, 11

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"getenv"
	.size	.L.str.165, 7

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"sleep"
	.size	.L.str.166, 6

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"url-encode"
	.size	.L.str.167, 11

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"url-decode"
	.size	.L.str.168, 11

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"gets"
	.size	.L.str.169, 5

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"readline"
	.size	.L.str.170, 9

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"html-encode"
	.size	.L.str.171, 12

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"html-decode"
	.size	.L.str.172, 12

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"decode-file-mode"
	.size	.L.str.173, 17

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"encode-file-mode"
	.size	.L.str.174, 17

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"stat"
	.size	.L.str.175, 5

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"fstat"
	.size	.L.str.176, 6

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"encode-open-flags"
	.size	.L.str.177, 18

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"lstat"
	.size	.L.str.178, 6

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"http-date"
	.size	.L.str.179, 10

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"popen"
	.size	.L.str.180, 6

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"load-so"
	.size	.L.str.181, 8

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"require-so"
	.size	.L.str.182, 11

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"so-ext"
	.size	.L.str.183, 7

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"SEEK_SET"
	.size	.L.str.184, 9

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"SEEK_CUR"
	.size	.L.str.185, 9

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"SEEK_END"
	.size	.L.str.186, 9

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"F_RDLCK"
	.size	.L.str.187, 8

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"F_WRLCK"
	.size	.L.str.188, 8

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"F_UNLCK"
	.size	.L.str.189, 8

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"F_SETLK"
	.size	.L.str.190, 8

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"F_SETLKW"
	.size	.L.str.191, 9

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"F_GETLK"
	.size	.L.str.192, 8

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"siod-lib"
	.size	.L.str.193, 9

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"%s=%s%s%s"
	.size	.L.str.194, 10

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	":"
	.size	.L.str.195, 2

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"tzset"
	.size	.L.str.196, 6

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"mktime"
	.size	.L.str.197, 7

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"strptime"
	.size	.L.str.198, 9

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"strftime"
	.size	.L.str.199, 9

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"getpass"
	.size	.L.str.200, 8

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"alarm"
	.size	.L.str.201, 6

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"CTYPE_FLOAT"
	.size	.L.str.202, 12

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"CTYPE_DOUBLE"
	.size	.L.str.203, 13

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"CTYPE_LONG"
	.size	.L.str.204, 11

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"CTYPE_SHORT"
	.size	.L.str.205, 12

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"CTYPE_CHAR"
	.size	.L.str.206, 11

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"CTYPE_INT"
	.size	.L.str.207, 10

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"CTYPE_ULONG"
	.size	.L.str.208, 12

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"CTYPE_USHORT"
	.size	.L.str.209, 13

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"CTYPE_UCHAR"
	.size	.L.str.210, 12

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"CTYPE_UINT"
	.size	.L.str.211, 11

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"datref"
	.size	.L.str.212, 7

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"mkdatref"
	.size	.L.str.213, 9

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"datlength"
	.size	.L.str.214, 10

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"position-script"
	.size	.L.str.215, 16

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"Status: 500 Server Error (Application)\n"
	.size	.L.str.216, 40

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"Content-type: text/html\n\n"
	.size	.L.str.217, 26

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"<HTML><HEAD><TITLE>Server Error (Application)</TITLE></HEAD>\n"
	.size	.L.str.218, 62

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"<BODY><H1>Server Error (Application)</H1>\n"
	.size	.L.str.219, 43

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"An application on this server has encountered an error\n"
	.size	.L.str.220, 56

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"which prevents it from fulfilling your request."
	.size	.L.str.221, 48

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"<P><PRE><B>Error Message:</B> "
	.size	.L.str.222, 31

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"</PRE></BODY></HTML>\n"
	.size	.L.str.223, 22

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"cgi-main"
	.size	.L.str.224, 9

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"(repl)"
	.size	.L.str.225, 7

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"repl"
	.size	.L.str.226, 5

	.type	.L.str.227,@object              # @.str.227
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.227:
	.asciz	"(require \""
	.size	.L.str.227, 11

	.type	.L.str.229,@object              # @.str.229
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.229:
	.asciz	"\")"
	.size	.L.str.229, 3

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"*slibu-version*"
	.size	.L.str.230, 16

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"$Id$"
	.size	.L.str.231, 5

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"EXIT"
	.size	.Lstr, 5

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Content-type: text/plain\r\n\r"
	.size	.Lstr.1, 28

	.type	.Lswitch.table.decode_st_moden,@object # @switch.table.decode_st_moden
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.decode_st_moden:
	.dword	.L.str.50
	.dword	.L.str.52
	.space	8
	.dword	.L.str.51
	.space	8
	.dword	.L.str.53
	.space	8
	.dword	.L.str.54
	.space	8
	.dword	.L.str.55
	.space	8
	.dword	.L.str.56
	.size	.Lswitch.table.decode_st_moden, 96

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lsystem
	.addrsig_sym lgetuid
	.addrsig_sym lgetgid
	.addrsig_sym lgetcwd
	.addrsig_sym lgetpwuid
	.addrsig_sym lgetpwnam
	.addrsig_sym lgetpwent
	.addrsig_sym lsetpwent
	.addrsig_sym lendpwent
	.addrsig_sym lsetuid
	.addrsig_sym lseteuid
	.addrsig_sym lgeteuid
	.addrsig_sym laccess_problem
	.addrsig_sym lsymlink
	.addrsig_sym llink
	.addrsig_sym lunlink
	.addrsig_sym lrmdir
	.addrsig_sym lmkdir
	.addrsig_sym lreadlink
	.addrsig_sym lrename
	.addrsig_sym lrandom
	.addrsig_sym lsrandom
	.addrsig_sym lfork
	.addrsig_sym car
	.addrsig_sym cdr
	.addrsig_sym lexec
	.addrsig_sym lnice
	.addrsig_sym lwait
	.addrsig_sym lkill
	.addrsig_sym lgetpid
	.addrsig_sym lgetpgrp
	.addrsig_sym lsetpgid
	.addrsig_sym lgetgrgid
	.addrsig_sym lgetppid
	.addrsig_sym lmemref_byte
	.addrsig_sym lexit
	.addrsig_sym ltrunc
	.addrsig_sym lputenv
	.addrsig_sym handle_sigalrm
	.addrsig_sym lalarm
	.addrsig_sym l_opendir
	.addrsig_sym l_closedir
	.addrsig_sym opendir_gc_free
	.addrsig_sym l_readdir
	.addrsig_sym opendir_prin1
	.addrsig_sym file_times
	.addrsig_sym encode_st_mode
	.addrsig_sym decode_st_mode
	.addrsig_sym l_stat
	.addrsig_sym l_fstat
	.addrsig_sym l_lstat
	.addrsig_sym l_chmod
	.addrsig_sym lutime
	.addrsig_sym lfchmod
	.addrsig_sym encode_open_flags
	.addrsig_sym lF_SETLK
	.addrsig_sym lF_SETLKW
	.addrsig_sym lF_GETLK
	.addrsig_sym delete_file
	.addrsig_sym utime2str
	.addrsig_sym lgetenv
	.addrsig_sym unix_time
	.addrsig_sym unix_ctime
	.addrsig_sym http_date
	.addrsig_sym lsleep
	.addrsig_sym url_encode
	.addrsig_sym url_decode
	.addrsig_sym html_encode
	.addrsig_sym html_decode
	.addrsig_sym lgets
	.addrsig_sym readline
	.addrsig_sym l_chown
	.addrsig_sym popen_l
	.addrsig_sym popen
	.addrsig_sym pclose_l
	.addrsig_sym so_ext
	.addrsig_sym load_so
	.addrsig_sym require_so
	.addrsig_sym siod_lib_l
	.addrsig_sym llocaltime
	.addrsig_sym lgmtime
	.addrsig_sym ltzset
	.addrsig_sym lmktime
	.addrsig_sym lstrptime
	.addrsig_sym lstrftime
	.addrsig_sym lchdir
	.addrsig_sym lgetpass
	.addrsig_sym lpipe
	.addrsig_sym datref
	.addrsig_sym sdatref
	.addrsig_sym mkdatref
	.addrsig_sym datlength
	.addrsig_sym cgi_main
	.addrsig_sym lposition_script
	.addrsig_sym sym_channels
