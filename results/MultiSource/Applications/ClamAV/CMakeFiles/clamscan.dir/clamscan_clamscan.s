	.file	"clamscan_clamscan.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI0_1:
	.dword	0x3f50000000000000              # double 9.765625E-4
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(clamscan_shortopt)
	ld.d	$a2, $a2, %pc_lo12(clamscan_shortopt)
	pcalau12i	$a3, %pc_hi20(clamscan_longopt)
	addi.d	$a3, $a3, %pc_lo12(clamscan_longopt)
	move	$a4, $zero
	pcaddu18i	$ra, %call36(opt_parse)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.1:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_3
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(mprintf_verbose)
	ld.d	$a0, $a0, %got_pc_lo12(mprintf_verbose)
	ori	$a1, $zero, 1
	st.h	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(logg_verbose)
	ld.d	$a0, $a0, %got_pc_lo12(logg_verbose)
	st.h	$a1, $a0, 0
.LBB0_3:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(mprintf_quiet)
	ld.d	$a0, $a0, %got_pc_lo12(mprintf_quiet)
	ori	$a1, $zero, 1
	st.h	$a1, $a0, 0
.LBB0_5:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_7
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(mprintf_stdout)
	ld.d	$a0, $a0, %got_pc_lo12(mprintf_stdout)
	ori	$a1, $zero, 1
	st.h	$a1, $a0, 0
.LBB0_7:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_9
# %bb.8:
	pcaddu18i	$ra, %call36(cl_debug)
	jirl	$ra, $ra, 0
.LBB0_9:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(print_version)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_15
.LBB0_11:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
.LBB0_12:
	ori	$a0, $zero, 40
	b	.LBB0_15
.LBB0_13:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_16
# %bb.14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(help)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB0_15:
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB0_16:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(recursion)
	ori	$a1, $zero, 1
	st.h	$a1, $a0, %pc_lo12(recursion)
.LBB0_18:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(printinfected)
	ori	$a1, $zero, 1
	st.h	$a1, $a0, %pc_lo12(printinfected)
.LBB0_20:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_22
# %bb.21:
	pcalau12i	$a0, %pc_hi20(bell)
	ori	$a1, $zero, 1
	st.h	$a1, $a0, %pc_lo12(bell)
.LBB0_22:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_24
# %bb.23:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_arg)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cl_settempdir)
	jirl	$ra, $ra, 0
.LBB0_24:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_26
# %bb.25:
	ori	$a1, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cl_settempdir)
	jirl	$ra, $ra, 0
.LBB0_26:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_29
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_arg)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(logg_file)
	ld.d	$a1, $a1, %got_pc_lo12(logg_file)
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_30
# %bb.28:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 62
	b	.LBB0_15
.LBB0_29:
	pcalau12i	$a0, %got_pc_hi20(logg_file)
	ld.d	$a0, $a0, %got_pc_lo12(logg_file)
	st.d	$zero, $a0, 0
.LBB0_30:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_34
# %bb.31:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_arg)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 77
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_34
# %bb.32:
	ori	$a1, $zero, 109
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_34
# %bb.33:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(isnumb)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_57
.LBB0_34:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_36
# %bb.35:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_arg)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(isnumb)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_52
.LBB0_36:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_38
# %bb.37:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_arg)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(isnumb)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_53
.LBB0_38:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_40
# %bb.39:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_arg)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(isnumb)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_54
.LBB0_40:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_42
# %bb.41:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_arg)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(isnumb)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_55
.LBB0_42:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_44
# %bb.43:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_arg)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(isnumb)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_56
.LBB0_44:
	pcalau12i	$a0, %pc_hi20(info)
	addi.d	$s1, $a0, %pc_lo12(info)
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 16
	vst	$vr0, $s1, 0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(scanmanager)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_51
# %bb.45:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_51
# %bb.46:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cl_retver)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 16
	beqz	$a1, .LBB0_48
# %bb.47:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
.LBB0_48:
	ld.w	$a0, $s1, 20
	beqz	$a0, .LBB0_50
# %bb.49:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_check)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.40)
	addi.d	$a3, $a2, %pc_lo12(.L.str.40)
	ld.w	$a2, $s1, 20
	maskeqz	$a0, $a3, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
.LBB0_50:
	ld.d	$a0, $s1, 24
	slli.d	$a0, $a0, 2
	srli.d	$a1, $a0, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa1, $fa0
	bstrpick.d	$a0, $a0, 31, 2
	slli.d	$a0, $a0, 2
	lu52i.d	$a1, $zero, 1075
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_1)
	or	$a0, $a0, $a1
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
.LBB0_51:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_15
.LBB0_52:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	b	.LBB0_58
.LBB0_53:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB0_58
.LBB0_54:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB0_58
.LBB0_55:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	b	.LBB0_58
.LBB0_56:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB0_58
.LBB0_57:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
.LBB0_58:
	pcaddu18i	$ra, %call36(logg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opt_free)
	jirl	$ra, $ra, 0
	b	.LBB0_12
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	help                            # -- Begin function help
	.p2align	5
	.type	help,@function
help:                                   # @help
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(mprintf_stdout)
	ld.d	$a0, $a0, %got_pc_lo12(mprintf_stdout)
	ori	$a1, $zero, 1
	st.h	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$fp, $a0, %pc_lo12(.L.str.42)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	pcaddu18i	$ra, %call36(mprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(mprintf)
	jr	$t8
.Lfunc_end1:
	.size	help, .Lfunc_end1-help
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hvd:wriVl:m"
	.size	.L.str, 12

	.type	clamscan_shortopt,@object       # @clamscan_shortopt
	.data
	.globl	clamscan_shortopt
	.p2align	3, 0x0
clamscan_shortopt:
	.dword	.L.str
	.size	clamscan_shortopt, 8

	.type	recursion,@object               # @recursion
	.bss
	.globl	recursion
	.p2align	1, 0x0
recursion:
	.half	0                               # 0x0
	.size	recursion, 2

	.type	printinfected,@object           # @printinfected
	.globl	printinfected
	.p2align	1, 0x0
printinfected:
	.half	0                               # 0x0
	.size	printinfected, 2

	.type	bell,@object                    # @bell
	.globl	bell
	.p2align	1, 0x0
bell:
	.half	0                               # 0x0
	.size	bell, 2

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"!Can't parse the command line\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"verbose"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"quiet"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"stdout"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"debug"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"version"
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"help"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"recursive"
	.size	.L.str.8, 10

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"infected"
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"bell"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"tempdir"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"leave-temps"
	.size	.L.str.12, 12

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"log"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"#\n-------------------------------------------------------------------------------\n\n"
	.size	.L.str.14, 84

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"!Problem with internal logger.\n"
	.size	.L.str.15, 32

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"max-space"
	.size	.L.str.16, 10

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"!--max-space requires a natural number\n"
	.size	.L.str.17, 40

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"max-files"
	.size	.L.str.18, 10

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"!--max-files requires a natural number\n"
	.size	.L.str.19, 40

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"max-recursion"
	.size	.L.str.20, 14

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"!--max-recursion requires a natural number\n"
	.size	.L.str.21, 44

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"max-mail-recursion"
	.size	.L.str.22, 19

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"!--max-mail-recursion requires a natural number\n"
	.size	.L.str.23, 49

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"max-dir-recursion"
	.size	.L.str.24, 18

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"!--max-dir-recursion requires a natural number\n"
	.size	.L.str.25, 48

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"max-ratio"
	.size	.L.str.26, 10

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"!--max-ratio requires a natural number\n"
	.size	.L.str.27, 40

	.type	info,@object                    # @info
	.bss
	.globl	info
	.p2align	3, 0x0
info:
	.space	32
	.size	info, 32

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"disable-summary"
	.size	.L.str.28, 16

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"no-summary"
	.size	.L.str.29, 11

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"\n----------- SCAN SUMMARY -----------\n"
	.size	.L.str.30, 39

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Known viruses: %u\n"
	.size	.L.str.31, 19

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Engine version: %s\n"
	.size	.L.str.32, 20

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Scanned directories: %u\n"
	.size	.L.str.33, 25

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Scanned files: %u\n"
	.size	.L.str.34, 19

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Infected files: %u\n"
	.size	.L.str.35, 20

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Not removed: %u\n"
	.size	.L.str.36, 17

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Not %s: %u\n"
	.size	.L.str.37, 12

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"copy"
	.size	.L.str.38, 5

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"moved"
	.size	.L.str.39, 6

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"copied"
	.size	.L.str.40, 7

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Data scanned: %2.2lf MB\n"
	.size	.L.str.41, 25

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"\n"
	.size	.L.str.42, 2

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"                       Clam AntiVirus Scanner devel-20071218\n"
	.size	.L.str.43, 62

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"      (C) 2002 - 2007 ClamAV Team - http://www.clamav.net/team\n\n"
	.size	.L.str.44, 65

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"    --help                -h             Print this help screen\n"
	.size	.L.str.45, 65

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"    --version             -V             Print version number\n"
	.size	.L.str.46, 63

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"    --verbose             -v             Be verbose\n"
	.size	.L.str.47, 53

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"    --debug                              Enable libclamav's debug messages\n"
	.size	.L.str.48, 76

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"    --quiet                              Only output error messages\n"
	.size	.L.str.49, 69

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"    --stdout                             Write to stdout instead of stderr\n"
	.size	.L.str.50, 76

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"    --no-summary                         Disable summary at end of scanning\n"
	.size	.L.str.51, 77

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"    --infected            -i             Only print infected files\n"
	.size	.L.str.52, 68

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"    --bell                               Sound bell on virus detection\n"
	.size	.L.str.53, 72

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"    --tempdir=DIRECTORY                  Create temporary files in DIRECTORY\n"
	.size	.L.str.54, 78

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"    --leave-temps                        Do not remove temporary files\n"
	.size	.L.str.55, 72

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"    --database=FILE/DIR   -d FILE/DIR    Load virus database from FILE or load\n"
	.size	.L.str.56, 80

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"                                         all .cvd and .db[2] files from DIR\n"
	.size	.L.str.57, 77

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"    --log=FILE            -l FILE        Save scan report to FILE\n"
	.size	.L.str.58, 67

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"    --recursive           -r             Scan subdirectories recursively\n"
	.size	.L.str.59, 74

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"    --remove                             Remove infected files. Be careful!\n"
	.size	.L.str.60, 77

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"    --move=DIRECTORY                     Move infected files into DIRECTORY\n"
	.size	.L.str.61, 77

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"    --copy=DIRECTORY                     Copy infected files into DIRECTORY\n"
	.size	.L.str.62, 77

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"    --exclude=PATT                       Don't scan file names containing PATT\n"
	.size	.L.str.63, 80

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"    --exclude-dir=PATT                   Don't scan directories containing PATT\n"
	.size	.L.str.64, 81

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"    --include=PATT                       Only scan file names containing PATT\n"
	.size	.L.str.65, 79

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"    --include-dir=PATT                   Only scan directories containing PATT\n"
	.size	.L.str.66, 80

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"    --detect-pua                         Detect Possibly Unwanted Applications\n"
	.size	.L.str.67, 80

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"    --no-mail                            Disable mail file support\n"
	.size	.L.str.68, 68

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"    --no-phishing-sigs                   Disable signature-based phishing detection\n"
	.size	.L.str.69, 85

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"    --no-phishing-scan-urls              Disable url-based phishing detection\n"
	.size	.L.str.70, 79

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"    --no-phishing-restrictedscan         Enable phishing detection for all domains (might lead to false positives!)\n"
	.size	.L.str.71, 117

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"    --phishing-ssl                       Always block SSL mismatches in URLs (phishing module)\n"
	.size	.L.str.72, 96

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"    --phishing-cloak                     Always block cloaked URLs (phishing module)\n"
	.size	.L.str.73, 86

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"    --no-algorithmic                     Disable algorithmic detection\n"
	.size	.L.str.74, 72

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"    --no-pe                              Disable PE analysis\n"
	.size	.L.str.75, 62

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"    --no-elf                             Disable ELF support\n"
	.size	.L.str.76, 62

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"    --no-ole2                            Disable OLE2 support\n"
	.size	.L.str.77, 63

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"    --no-pdf                             Disable PDF support\n"
	.size	.L.str.78, 62

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"    --no-html                            Disable HTML support\n"
	.size	.L.str.79, 63

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"    --no-archive                         Disable libclamav archive support\n"
	.size	.L.str.80, 76

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"    --detect-broken                      Try to detect broken executable files\n"
	.size	.L.str.81, 80

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"    --block-encrypted                    Block encrypted archives\n"
	.size	.L.str.82, 67

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"    --block-max                          Block archives that exceed limits\n"
	.size	.L.str.83, 76

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"    --mail-follow-urls                   Download and scan URLs\n"
	.size	.L.str.84, 65

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"    --max-space=#n                       Only extract first #n kilobytes from\n"
	.size	.L.str.85, 79

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"                                         archived files\n"
	.size	.L.str.86, 57

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"    --max-files=#n                       Only extract first #n files from\n"
	.size	.L.str.87, 75

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"                                         archives\n"
	.size	.L.str.88, 51

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"    --max-ratio=#n                       Maximum compression ratio limit\n"
	.size	.L.str.89, 74

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"    --max-recursion=#n                   Maximum archive recursion level\n"
	.size	.L.str.90, 74

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"    --max-dir-recursion=#n               Maximum directory recursion level\n"
	.size	.L.str.91, 76

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"    --max-mail-recursion=#n              Maximum mail recursion level\n"
	.size	.L.str.92, 71

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"    --unzip[=FULLPATH]                   Enable support for .zip files\n"
	.size	.L.str.93, 72

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"    --unrar[=FULLPATH]                   Enable support for .rar files\n"
	.size	.L.str.94, 72

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"    --arj[=FULLPATH]                     Enable support for .arj files\n"
	.size	.L.str.95, 72

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"    --unzoo[=FULLPATH]                   Enable support for .zoo files\n"
	.size	.L.str.96, 72

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"    --lha[=FULLPATH]                     Enable support for .lha files\n"
	.size	.L.str.97, 72

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"    --jar[=FULLPATH]                     Enable support for .jar files\n"
	.size	.L.str.98, 72

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"    --tar[=FULLPATH]                     Enable support for .tar files\n"
	.size	.L.str.99, 72

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"    --deb[=FULLPATH to ar]               Enable support for .deb files\n"
	.size	.L.str.100, 72

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"    --tgz[=FULLPATH]                     Enable support for .tar.gz, .tgz files\n\n"
	.size	.L.str.101, 82

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"config-file"
	.size	.L.str.102, 12

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"multiscan"
	.size	.L.str.103, 10

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"database"
	.size	.L.str.104, 9

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"force"
	.size	.L.str.105, 6

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"move"
	.size	.L.str.106, 5

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"remove"
	.size	.L.str.107, 7

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"exclude"
	.size	.L.str.108, 8

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"exclude-dir"
	.size	.L.str.109, 12

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"include"
	.size	.L.str.110, 8

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"include-dir"
	.size	.L.str.111, 12

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"detect-pua"
	.size	.L.str.112, 11

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"disable-archive"
	.size	.L.str.113, 16

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"no-archive"
	.size	.L.str.114, 11

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"detect-broken"
	.size	.L.str.115, 14

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"block-encrypted"
	.size	.L.str.116, 16

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"block-max"
	.size	.L.str.117, 10

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"no-pe"
	.size	.L.str.118, 6

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"no-elf"
	.size	.L.str.119, 7

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"no-ole2"
	.size	.L.str.120, 8

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"no-pdf"
	.size	.L.str.121, 7

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"no-html"
	.size	.L.str.122, 8

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"no-mail"
	.size	.L.str.123, 8

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"mail-follow-urls"
	.size	.L.str.124, 17

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"no-phishing-sigs"
	.size	.L.str.125, 17

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"no-phishing-scan-urls"
	.size	.L.str.126, 22

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"no-phishing-restrictedscan"
	.size	.L.str.127, 27

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"phishing-ssl"
	.size	.L.str.128, 13

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"phishing-cloak"
	.size	.L.str.129, 15

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"no-algorithmic"
	.size	.L.str.130, 15

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"unzip"
	.size	.L.str.131, 6

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"unrar"
	.size	.L.str.132, 6

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"arj"
	.size	.L.str.133, 4

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"unzoo"
	.size	.L.str.134, 6

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"lha"
	.size	.L.str.135, 4

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"jar"
	.size	.L.str.136, 4

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"tar"
	.size	.L.str.137, 4

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"tgz"
	.size	.L.str.138, 4

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"deb"
	.size	.L.str.139, 4

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"dev-ac-only"
	.size	.L.str.140, 12

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"dev-ac-depth"
	.size	.L.str.141, 13

	.type	clamscan_longopt,@object        # @clamscan_longopt
	.data
	.p2align	3, 0x0
clamscan_longopt:
	.dword	.L.str.7
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	104                             # 0x68
	.space	4
	.dword	.L.str.3
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.4
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.2
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	118                             # 0x76
	.space	4
	.dword	.L.str.5
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.6
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	86                              # 0x56
	.space	4
	.dword	.L.str.11
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.12
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.102
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.103
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	109                             # 0x6d
	.space	4
	.dword	.L.str.104
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	100                             # 0x64
	.space	4
	.dword	.L.str.105
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.8
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	114                             # 0x72
	.space	4
	.dword	.L.str.10
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.28
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.29
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.9
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	105                             # 0x69
	.space	4
	.dword	.L.str.13
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	108                             # 0x6c
	.space	4
	.dword	.L.str.106
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.38
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.107
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.108
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.109
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.110
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.111
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.18
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.16
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.26
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.20
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.24
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.22
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.112
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.113
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.114
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.115
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.116
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.117
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.118
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.119
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.120
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.121
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.122
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.123
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.124
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.125
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.126
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.127
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.128
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.129
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.130
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.131
	.word	2                               # 0x2
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.132
	.word	2                               # 0x2
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.133
	.word	2                               # 0x2
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.134
	.word	2                               # 0x2
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.135
	.word	2                               # 0x2
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.136
	.word	2                               # 0x2
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.137
	.word	2                               # 0x2
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.138
	.word	2                               # 0x2
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.139
	.word	2                               # 0x2
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.140
	.word	0                               # 0x0
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.141
	.word	1                               # 0x1
	.space	4
	.dword	0
	.word	0                               # 0x0
	.space	4
	.space	32
	.size	clamscan_longopt, 1984

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clamscan_longopt
