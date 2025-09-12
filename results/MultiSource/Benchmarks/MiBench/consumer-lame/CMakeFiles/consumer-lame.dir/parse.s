	.file	"parse.c"
	.section	.text.unlikely.,"ax",@progbits
	.globl	lame_usage                      # -- Begin function lame_usage
	.p2align	5
	.type	lame_usage,@function
lame_usage:                             # @lame_usage
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(lame_print_version)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	lame_usage, .Lfunc_end0-lame_usage
                                        # -- End function
	.text
	.globl	lame_help                       # -- Begin function lame_help
	.p2align	5
	.type	lame_help,@function
lame_help:                              # @lame_help
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(lame_print_version)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 49
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 76
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 45
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 64
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 74
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 80
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 72
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 70
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 66
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 71
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 64
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 64
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 49
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 76
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 56
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 71
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 49
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a2, $fp, 92
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 67
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 68
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ori	$a1, $zero, 55
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	ori	$a1, $zero, 74
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	ori	$a1, $zero, 57
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 63
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 51
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a1, $zero, 61
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 74
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 68
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	ori	$a1, $zero, 67
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 66
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(display_bitrates)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	lame_help, .Lfunc_end1-lame_help
                                        # -- End function
	.globl	lame_presets_info               # -- Begin function lame_presets_info
	.p2align	5
	.type	lame_presets_info,@function
lame_presets_info:                      # @lame_presets_info
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
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s5, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(lame_print_version)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 51
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$fp, $a0, %pc_lo12(.L.str.66)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$s0, $a0, %pc_lo12(.L.str.67)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$s1, $a0, %pc_lo12(.L.str.69)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$s2, $a0, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$fp, $a0, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	ori	$a1, $zero, 45
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$s0, $a0, %pc_lo12(.L.str.85)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$s1, $a0, %pc_lo12(.L.str.87)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$s3, $a0, %pc_lo12(.L.str.88)
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$s2, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$s4, $a0, %pc_lo12(.L.str.91)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$fp, $a0, %pc_lo12(.L.str.95)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$s0, $a0, %pc_lo12(.L.str.100)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	lame_presets_info, .Lfunc_end2-lame_presets_info
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lame_parse_args
.LCPI3_0:
	.word	0                               # 0x0
	.word	112                             # 0x70
	.word	320                             # 0x140
	.word	4294967295                      # 0xffffffff
.LCPI3_1:
	.word	2                               # 0x2
	.word	80                              # 0x50
	.word	256                             # 0x100
	.word	4294967295                      # 0xffffffff
.LCPI3_2:
	.word	3                               # 0x3
	.word	32                              # 0x20
	.word	224                             # 0xe0
	.word	20000                           # 0x4e20
.LCPI3_3:
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	192                             # 0xc0
	.word	17000                           # 0x4268
.LCPI3_4:
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	192                             # 0xc0
	.word	15000                           # 0x3a98
.LCPI3_5:
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	96                              # 0x60
	.word	11000                           # 0x2af8
.LCPI3_6:
	.word	5                               # 0x5
	.word	8                               # 0x8
	.word	56                              # 0x38
	.word	3700                            # 0xe74
	.text
	.globl	lame_parse_args
	.p2align	5
	.type	lame_parse_args,@function
lame_parse_args:                        # @lame_parse_args
# %bb.0:
	addi.d	$sp, $sp, -240
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
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	move	$s4, $a2
	ld.d	$a2, $a2, 0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(inPath)
	addi.d	$a1, $a0, %pc_lo12(inPath)
	st.b	$zero, $a1, 0
	pcalau12i	$a0, %pc_hi20(outPath)
	addi.d	$s2, $a0, %pc_lo12(outPath)
	st.b	$zero, $s2, 0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a1, $fp, 128
	st.d	$s2, $fp, 136
	pcalau12i	$a0, %got_pc_hi20(id3tag)
	ld.d	$s1, $a0, %got_pc_lo12(id3tag)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(id3_inittag)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.w	$zero, $s1, 0
	blt	$s5, $a0, .LBB3_159
# %bb.1:                                # %.lr.ph420
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$s3, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs0, $a0
	lu12i.w	$a0, -65536
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fs1, $a0
	ori	$a0, $zero, 160
	lu32i.d	$a0, 12000
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu52i.d	$a0, $zero, 873
	movgr2fr.d	$fs2, $a0
	ori	$a0, $zero, 260
	lu32i.d	$a0, 300
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3712
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 100
	lu32i.d	$a0, 2000
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 5
	ori	$a0, $a0, 3520
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s2, $zero, 57
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_66 Depth 2
                                        #     Child Loop BB3_145 Depth 2
	slli.d	$a0, $s0, 3
	ldx.d	$s8, $s4, $a0
	ld.bu	$a0, $s8, 0
	addi.d	$s1, $s8, 1
	st.d	$s1, $sp, 120
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB3_6
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	addi.w	$a0, $s3, 2
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	blt	$a0, $s5, .LBB3_9
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a1, $s1, 0
	beqz	$a1, .LBB3_10
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=1
	bnez	$a1, .LBB3_17
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_6:                                #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(inPath)
	ld.bu	$a0, $a0, %pc_lo12(inPath)
	beqz	$a0, .LBB3_13
# %bb.7:                                #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(outPath)
	ld.bu	$a0, $a0, %pc_lo12(outPath)
	bnez	$a0, .LBB3_181
# %bb.8:                                #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(outPath)
	addi.d	$a0, $a0, %pc_lo12(outPath)
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_9:                                #   in Loop: Header=BB3_2 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$s6, $s4, $a0
	ld.bu	$a1, $s1, 0
	bnez	$a1, .LBB3_5
.LBB3_10:                               #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_16
# %bb.11:                               #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_16
# %bb.12:                               # %thread-pre-split
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a1, $s1, 0
	bnez	$a1, .LBB3_17
	b	.LBB3_15
.LBB3_13:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(inPath)
	addi.d	$a0, $a0, %pc_lo12(inPath)
.LBB3_14:                               # %.loopexit360
                                        #   in Loop: Header=BB3_2 Depth=1
	ori	$a2, $zero, 300
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
.LBB3_15:                               #   in Loop: Header=BB3_2 Depth=1
	move	$s1, $zero
	move	$s3, $s0
	b	.LBB3_120
.LBB3_16:                               # %thread-pre-split.sink.split
                                        #   in Loop: Header=BB3_2 Depth=1
	ori	$a2, $zero, 300
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 0
	beqz	$a1, .LBB3_15
.LBB3_17:                               #   in Loop: Header=BB3_2 Depth=1
	addi.d	$s7, $s8, 2
	ori	$a0, $zero, 45
	bne	$a1, $a0, .LBB3_62
# %bb.18:                               #   in Loop: Header=BB3_2 Depth=1
	st.d	$s7, $sp, 120
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a1, $a0, %pc_lo12(.L.str.111)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_114
# %bb.19:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_115
# %bb.20:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_116
# %bb.21:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a1, $a0, %pc_lo12(.L.str.115)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_117
# %bb.22:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_122
# %bb.23:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_123
# %bb.24:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_124
# %bb.25:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_152
# %bb.26:                               # %sub_0
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s7, 0
	ori	$a1, $zero, 116
	bne	$a0, $a1, .LBB3_41
# %bb.27:                               # %sub_1
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 3
	ori	$a1, $zero, 116
	bne	$a0, $a1, .LBB3_29
# %bb.28:                               # %.tail
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 4
	beqz	$a0, .LBB3_127
.LBB3_29:                               # %sub_1321
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 3
	ori	$a1, $zero, 97
	bne	$a0, $a1, .LBB3_31
# %bb.30:                               # %.tail319
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 4
	beqz	$a0, .LBB3_129
.LBB3_31:                               # %sub_1326
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 3
	ori	$a1, $zero, 108
	bne	$a0, $a1, .LBB3_33
# %bb.32:                               # %.tail324
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 4
	beqz	$a0, .LBB3_130
.LBB3_33:                               # %sub_1331
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 3
	ori	$a1, $zero, 121
	bne	$a0, $a1, .LBB3_35
# %bb.34:                               # %.tail329
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 4
	beqz	$a0, .LBB3_132
.LBB3_35:                               # %sub_1336
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 3
	ori	$a1, $zero, 99
	bne	$a0, $a1, .LBB3_37
# %bb.36:                               # %.tail334
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 4
	beqz	$a0, .LBB3_133
.LBB3_37:                               # %sub_1341
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 3
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB3_39
# %bb.38:                               # %.tail339
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 4
	beqz	$a0, .LBB3_137
.LBB3_39:                               # %sub_1346
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 3
	ori	$a1, $zero, 103
	bne	$a0, $a1, .LBB3_41
# %bb.40:                               # %.tail344
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s8, 4
	beqz	$a0, .LBB3_138
.LBB3_41:                               # %.tail344.thread
                                        #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_125
# %bb.42:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a1, $a0, %pc_lo12(.L.str.130)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_126
# %bb.43:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_128
# %bb.44:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_131
# %bb.45:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a1, $a0, %pc_lo12(.L.str.136)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_136
# %bb.46:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a1, $a0, %pc_lo12(.L.str.138)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_182
# %bb.47:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a1, $a0, %pc_lo12(.L.str.139)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_182
# %bb.48:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a1, $a0, %pc_lo12(.L.str.140)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_151
# %bb.49:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a1, $a0, %pc_lo12(.L.str.141)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_141
# %bb.50:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_142
# %bb.51:                               # %sub_0350
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$s1, $s6, 0
	ori	$a0, $zero, 102
	bne	$s1, $a0, .LBB3_54
# %bb.52:                               # %sub_1351
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s6, 1
	ori	$a1, $zero, 109
	bne	$a0, $a1, .LBB3_54
# %bb.53:                               # %.tail349
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB3_153
.LBB3_54:                               # %.tail349.thread
                                        #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a1, $a0, %pc_lo12(.L.str.143)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_148
# %bb.55:                               #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a1, $a0, %pc_lo12(.L.str.144)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_149
# %bb.56:                               # %sub_0355
                                        #   in Loop: Header=BB3_2 Depth=1
	ori	$a0, $zero, 99
	bne	$s1, $a0, .LBB3_59
# %bb.57:                               # %sub_1356
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s6, 1
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB3_59
# %bb.58:                               # %.tail354
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB3_158
.LBB3_59:                               # %.tail354.thread
                                        #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a1, $a0, %pc_lo12(.L.str.146)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_190
# %bb.60:                               #   in Loop: Header=BB3_2 Depth=1
	ori	$a0, $zero, 256
	st.w	$a0, $fp, 48
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
.LBB3_61:                               #   in Loop: Header=BB3_2 Depth=1
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 108
	vst	$vr0, $fp, 92
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 36
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 28
	ori	$s3, $zero, 1
	b	.LBB3_119
.LBB3_62:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	move	$s1, $zero
	move	$s3, $s0
	b	.LBB3_66
.LBB3_63:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slti	$a1, $a0, 9
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 9
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_64:                               #   in Loop: Header=BB3_66 Depth=2
	xor	$a0, $s8, $s7
	sltu	$a0, $zero, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a1, $a1, %pc_lo12(.L.str.110)
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $s7, $a0
	or	$s7, $a2, $a1
	add.d	$s3, $s3, $a0
.LBB3_65:                               #   in Loop: Header=BB3_66 Depth=2
	ld.bu	$a1, $s7, 0
	addi.d	$s7, $s7, 1
	beqz	$a1, .LBB3_120
.LBB3_66:                               # %.lr.ph
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $a1, 255
	addi.d	$a0, $a0, -63
	bltu	$s2, $a0, .LBB3_109
# %bb.67:                               # %.lr.ph
                                        #   in Loop: Header=BB3_66 Depth=2
	ld.bu	$a2, $s7, 0
	sltui	$a2, $a2, 1
	masknez	$a3, $s7, $a2
	maskeqz	$a2, $s6, $a2
	or	$s8, $a2, $a3
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI3_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB3_68:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 100
	b	.LBB3_64
.LBB3_69:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 28
	b	.LBB3_65
.LBB3_70:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 88
	b	.LBB3_65
.LBB3_71:                               #   in Loop: Header=BB3_66 Depth=2
	ld.bu	$a0, $s8, 0
	ori	$a1, $zero, 53
	beq	$a0, $a1, .LBB3_97
# %bb.72:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a1, $zero, 99
	beq	$a0, $a1, .LBB3_98
# %bb.73:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB3_110
# %bb.74:                               #   in Loop: Header=BB3_66 Depth=2
	st.w	$zero, $fp, 164
	b	.LBB3_64
.LBB3_75:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 3
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 36
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB3_65
.LBB3_76:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 9
	st.w	$a0, $fp, 28
	b	.LBB3_65
.LBB3_77:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 40
	ld.bu	$a0, $s8, 0
	addi.d	$a0, $a0, -100
	ori	$a1, $zero, 15
	bltu	$a1, $a0, .LBB3_111
# %bb.78:                               #   in Loop: Header=BB3_66 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_2)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_79:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 36
	b	.LBB3_64
.LBB3_80:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 156
	b	.LBB3_65
.LBB3_81:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 32
	b	.LBB3_65
.LBB3_82:                               #   in Loop: Header=BB3_66 Depth=2
	st.w	$zero, $fp, 76
	ld.bu	$a0, $s8, 0
	addi.d	$a0, $a0, -48
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB3_112
# %bb.83:                               #   in Loop: Header=BB3_66 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_84:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 76
	b	.LBB3_64
.LBB3_85:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 84
	b	.LBB3_65
.LBB3_86:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 80
	b	.LBB3_65
.LBB3_87:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 88
	ori	$a2, $zero, 10
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slti	$a1, $a0, 9
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 9
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 92
	b	.LBB3_64
.LBB3_88:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 48
	st.w	$a0, $fp, 96
	b	.LBB3_64
.LBB3_89:                               #   in Loop: Header=BB3_66 Depth=2
	st.w	$zero, $fp, 24
	b	.LBB3_65
.LBB3_90:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 52
	b	.LBB3_65
.LBB3_91:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 60
	b	.LBB3_65
.LBB3_92:                               #   in Loop: Header=BB3_66 Depth=2
	st.w	$zero, $fp, 56
	b	.LBB3_65
.LBB3_93:                               #   in Loop: Header=BB3_66 Depth=2
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	vldi	$vr1, -928
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 12
	b	.LBB3_64
.LBB3_94:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 124
	b	.LBB3_65
.LBB3_95:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 120
	b	.LBB3_65
.LBB3_96:                               #   in Loop: Header=BB3_66 Depth=2
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, 104
	b	.LBB3_65
.LBB3_97:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 164
	b	.LBB3_64
.LBB3_98:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 164
	b	.LBB3_64
.LBB3_99:                               #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	st.w	$a0, $fp, 44
	b	.LBB3_64
.LBB3_100:                              #   in Loop: Header=BB3_66 Depth=2
	st.w	$zero, $fp, 36
	b	.LBB3_64
.LBB3_101:                              #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 36
	b	.LBB3_64
.LBB3_102:                              #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_64
.LBB3_103:                              #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 76
	b	.LBB3_64
.LBB3_104:                              #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 76
	b	.LBB3_64
.LBB3_105:                              #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 76
	b	.LBB3_64
.LBB3_106:                              #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 5
	st.w	$a0, $fp, 76
	b	.LBB3_64
.LBB3_107:                              #   in Loop: Header=BB3_66 Depth=2
	ori	$a0, $zero, 6
	st.w	$a0, $fp, 76
	b	.LBB3_64
.LBB3_108:                              #   in Loop: Header=BB3_66 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a1, $a1, %pc_lo12(.L.str.151)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB3_65
.LBB3_109:                              #   in Loop: Header=BB3_66 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ext.w.b	$a3, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.153)
	addi.d	$a1, $a1, %pc_lo12(.L.str.153)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB3_65
.LBB3_110:                              #   in Loop: Header=BB3_66 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.152)
	addi.d	$a1, $a1, %pc_lo12(.L.str.152)
	b	.LBB3_113
.LBB3_111:                              #   in Loop: Header=BB3_66 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.149)
	addi.d	$a1, $a1, %pc_lo12(.L.str.149)
	b	.LBB3_113
.LBB3_112:                              #   in Loop: Header=BB3_66 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.150)
	addi.d	$a1, $a1, %pc_lo12(.L.str.150)
.LBB3_113:                              #   in Loop: Header=BB3_66 Depth=2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB3_64
.LBB3_114:                              #   in Loop: Header=BB3_2 Depth=1
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa1, $fa0
	fcvt.d.s	$fa1, $fa1
	vldi	$vr2, -928
	fmadd.d	$fa1, $fa1, $fs0, $fa2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	st.w	$a0, $fp, 16
	fcmp.cule.d	$fcc0, $fs1, $fa0
	ori	$s3, $zero, 1
	bcnez	$fcc0, .LBB3_119
	b	.LBB3_184
.LBB3_115:                              #   in Loop: Header=BB3_2 Depth=1
	move	$s3, $zero
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 120
	b	.LBB3_119
.LBB3_116:                              #   in Loop: Header=BB3_2 Depth=1
	move	$s3, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $fp, 100
	b	.LBB3_118
.LBB3_117:                              #   in Loop: Header=BB3_2 Depth=1
	move	$s3, $zero
.LBB3_118:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 160
.LBB3_119:                              #   in Loop: Header=BB3_2 Depth=1
	move	$s1, $zero
	add.d	$s3, $s3, $s0
	.p2align	4, , 16
.LBB3_120:                              # %.loopexit360
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.w	$s0, $s3, 1
	bge	$s0, $s5, .LBB3_160
# %bb.121:                              # %.loopexit360
                                        #   in Loop: Header=BB3_2 Depth=1
	beqz	$s1, .LBB3_2
	b	.LBB3_160
.LBB3_122:                              #   in Loop: Header=BB3_2 Depth=1
	move	$s3, $zero
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 148
	b	.LBB3_119
.LBB3_123:                              #   in Loop: Header=BB3_2 Depth=1
	move	$s3, $zero
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 72
	st.w	$zero, $fp, 196
	b	.LBB3_119
.LBB3_124:                              #   in Loop: Header=BB3_2 Depth=1
	move	$s3, $zero
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 144
	b	.LBB3_119
.LBB3_125:                              #   in Loop: Header=BB3_2 Depth=1
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 104
	ori	$s3, $zero, 1
	bgtz	$a0, .LBB3_119
	b	.LBB3_185
.LBB3_126:                              #   in Loop: Header=BB3_2 Depth=1
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 112
	ori	$s3, $zero, 1
	bgez	$a0, .LBB3_119
	b	.LBB3_186
.LBB3_127:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 8
	b	.LBB3_134
.LBB3_128:                              #   in Loop: Header=BB3_2 Depth=1
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 108
	ori	$s3, $zero, 1
	bgtz	$a0, .LBB3_119
	b	.LBB3_187
.LBB3_129:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 39
	b	.LBB3_134
.LBB3_130:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 70
	b	.LBB3_134
.LBB3_131:                              #   in Loop: Header=BB3_2 Depth=1
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 116
	ori	$s3, $zero, 1
	bgez	$a0, .LBB3_119
	b	.LBB3_188
.LBB3_132:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 101
	ori	$a2, $zero, 4
	b	.LBB3_135
.LBB3_133:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 106
.LBB3_134:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$a2, $zero, 30
.LBB3_135:                              #   in Loop: Header=BB3_2 Depth=1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	b	.LBB3_119
.LBB3_136:                              #   in Loop: Header=BB3_2 Depth=1
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa1, $fa0
	fst.s	$fa1, $fp, 152
	fcmp.cult.d	$fcc0, $fs2, $fa0
	ori	$s3, $zero, 1
	bcnez	$fcc0, .LBB3_119
	b	.LBB3_189
.LBB3_137:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$s3, $zero, 1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	st.w	$s3, $s1, 0
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slti	$a1, $a0, 99
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 99
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.b	$a0, $s1, 266
	b	.LBB3_119
.LBB3_138:                              #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 10
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	move	$s7, $a0
	pcalau12i	$a0, %got_pc_hi20(genre_last)
	ld.d	$a0, $a0, %got_pc_lo12(genre_last)
	ld.w	$s1, $a0, 0
	beq	$s6, $a1, .LBB3_143
.LBB3_139:                              # %.loopexit
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.w	$a0, $s7, 0
	blt	$s1, $a0, .LBB3_157
.LBB3_140:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	st.b	$s7, $a0, 265
	b	.LBB3_119
.LBB3_141:                              #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI3_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_6)
	ori	$a0, $zero, 16
	st.w	$a0, $fp, 48
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $fp, 108
	ori	$a0, $zero, 40
	st.w	$a0, $fp, 116
	vst	$vr0, $fp, 92
	ori	$s3, $zero, 1
	st.w	$s3, $fp, 160
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $fp, 16
	ori	$a0, $zero, 3
	b	.LBB3_155
.LBB3_142:                              #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI3_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_5)
	ori	$a0, $zero, 56
	st.w	$a0, $fp, 48
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $fp, 108
	ori	$a0, $zero, 20
	st.w	$a0, $fp, 116
	vst	$vr0, $fp, 92
	ori	$s3, $zero, 1
	st.w	$s3, $fp, 160
	ori	$a0, $zero, 3
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 36
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $fp, 16
	b	.LBB3_156
.LBB3_143:                              # %.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	bltz	$s1, .LBB3_150
# %bb.144:                              # %.lr.ph413.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.w	$a0, $s1, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$s8, $a0, 31, 0
	pcalau12i	$a0, %got_pc_hi20(genre_list)
	ld.d	$s3, $a0, %got_pc_lo12(genre_list)
	move	$s7, $zero
.LBB3_145:                              # %.lr.ph413
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_139
# %bb.146:                              #   in Loop: Header=BB3_145 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
	addi.d	$s3, $s3, 8
	bnez	$s8, .LBB3_145
# %bb.147:                              #   in Loop: Header=BB3_2 Depth=1
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_139
.LBB3_148:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$a0, $zero, 128
	st.w	$a0, $fp, 48
	ori	$a0, $zero, 15
	pcalau12i	$a1, %pc_hi20(.LCPI3_3)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_3)
	lu32i.d	$a0, 2000
	st.d	$a0, $fp, 108
	ori	$a0, $zero, 15
	st.w	$a0, $fp, 116
	b	.LBB3_154
.LBB3_149:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$a0, $zero, 160
	st.w	$a0, $fp, 48
	ori	$a0, $zero, 15
	pcalau12i	$a1, %pc_hi20(.LCPI3_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_2)
	lu32i.d	$a0, 3000
	st.d	$a0, $fp, 108
	ori	$a0, $zero, 15
	st.w	$a0, $fp, 116
	vst	$vr0, $fp, 92
	ori	$s3, $zero, 1
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 36
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 28
	b	.LBB3_119
.LBB3_150:                              #   in Loop: Header=BB3_2 Depth=1
	move	$s7, $zero
	b	.LBB3_139
.LBB3_151:                              #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.148)
	addi.d	$a1, $a1, %pc_lo12(.L.str.148)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_152:                              #   in Loop: Header=BB3_2 Depth=1
	move	$s3, $zero
	b	.LBB3_119
.LBB3_153:                              #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI3_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_4)
	ori	$a0, $zero, 96
	st.w	$a0, $fp, 48
	ori	$a0, $zero, 30
	st.d	$a0, $fp, 108
	st.w	$zero, $fp, 116
.LBB3_154:                              #   in Loop: Header=BB3_2 Depth=1
	vst	$vr0, $fp, 92
	ori	$s3, $zero, 1
	ori	$a0, $zero, 1
.LBB3_155:                              #   in Loop: Header=BB3_2 Depth=1
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 36
.LBB3_156:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$a0, $zero, 5
	st.w	$a0, $fp, 28
	b	.LBB3_119
.LBB3_157:                              #   in Loop: Header=BB3_2 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.127)
	addi.d	$a1, $a1, %pc_lo12(.L.str.127)
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 255
	b	.LBB3_140
.LBB3_158:                              #   in Loop: Header=BB3_2 Depth=1
	ori	$a0, $zero, 192
	st.w	$a0, $fp, 48
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_1)
	b	.LBB3_61
.LBB3_159:
	move	$a0, $zero
	move	$s3, $zero
	ori	$s0, $zero, 1
	b	.LBB3_162
.LBB3_160:                              # %._crit_edge.loopexit.loopexit
	sltu	$a0, $zero, $s1
.LBB3_161:                              # %._crit_edge.loopexit
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sltui	$s0, $a1, 1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
.LBB3_162:                              # %._crit_edge
	bnez	$a0, .LBB3_183
# %bb.163:                              # %._crit_edge
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_183
# %bb.164:
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB3_167
# %bb.165:
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 32
	bnez	$a0, .LBB3_168
# %bb.166:                              # %.thread318
	ori	$a0, $zero, 45
	st.h	$a0, $s2, 0
	b	.LBB3_169
.LBB3_167:                              # %.thread315
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB3_175
.LBB3_168:
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB3_170
.LBB3_169:
	ld.w	$a0, $s1, 0
	st.w	$zero, $fp, 24
	bnez	$a0, .LBB3_180
.LBB3_170:
	ld.w	$a0, $fp, 120
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB3_172
# %bb.171:
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, -4
	pcalau12i	$a1, %pc_hi20(.L.str.156)
	addi.d	$a1, $a1, %pc_lo12(.L.str.156)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_176
.LBB3_172:
	beqz	$s0, .LBB3_177
.LBB3_173:
	ld.w	$a0, $fp, 36
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB3_177
# %bb.174:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 8
	bnez	$s3, .LBB3_178
	b	.LBB3_179
.LBB3_175:                              # %.thread316
	pcalau12i	$a0, %pc_hi20(inPath)
	addi.d	$a1, $a0, %pc_lo12(inPath)
	ori	$a2, $zero, 296
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.156)
	addi.d	$a2, $a2, %pc_lo12(.L.str.156)
	ld.w	$a3, $a2, 0
	ld.b	$a2, $a2, 4
	stx.w	$a3, $s2, $a0
	st.b	$a2, $a1, 4
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB3_169
	b	.LBB3_170
.LBB3_176:
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 120
	bnez	$s0, .LBB3_173
.LBB3_177:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 8
	beqz	$s3, .LBB3_179
.LBB3_178:
	st.w	$s3, $fp, 28
.LBB3_179:
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
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
.LBB3_180:
	st.w	$zero, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
	ori	$a1, $zero, 54
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB3_170
.LBB3_181:                              # %.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.154)
	addi.d	$a1, $a1, %pc_lo12(.L.str.154)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB3_161
.LBB3_182:
	move	$a0, $fp
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lame_help)
	jirl	$ra, $ra, 0
.LBB3_183:
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lame_usage)
	jirl	$ra, $ra, 0
.LBB3_184:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_185:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	ori	$a1, $zero, 60
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_186:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	ori	$a1, $zero, 68
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_187:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_188:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	ori	$a1, $zero, 70
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_189:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_190:
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a1, $a0, %pc_lo12(.L.str.138)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_192
# %bb.191:
	pcaddu18i	$ra, %call36(lame_presets_info)
	jirl	$ra, $ra, 0
.LBB3_192:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.147)
	addi.d	$a1, $a1, %pc_lo12(.L.str.147)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	lame_parse_args, .Lfunc_end3-lame_parse_args
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_182-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_81-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_87-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_82-.LJTI3_0
	.word	.LBB3_86-.LJTI3_0
	.word	.LBB3_85-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_75-.LJTI3_0
	.word	.LBB3_88-.LJTI3_0
	.word	.LBB3_90-.LJTI3_0
	.word	.LBB3_80-.LJTI3_0
	.word	.LBB3_71-.LJTI3_0
	.word	.LBB3_76-.LJTI3_0
	.word	.LBB3_108-.LJTI3_0
	.word	.LBB3_69-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_96-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_77-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_92-.LJTI3_0
	.word	.LBB3_91-.LJTI3_0
	.word	.LBB3_63-.LJTI3_0
	.word	.LBB3_95-.LJTI3_0
	.word	.LBB3_93-.LJTI3_0
	.word	.LBB3_89-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_70-.LJTI3_0
	.word	.LBB3_109-.LJTI3_0
	.word	.LBB3_94-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_64-.LJTI3_1
	.word	.LBB3_84-.LJTI3_1
	.word	.LBB3_104-.LJTI3_1
	.word	.LBB3_105-.LJTI3_1
	.word	.LBB3_103-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_107-.LJTI3_1
.LJTI3_2:
	.word	.LBB3_79-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_99-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_102-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_101-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_111-.LJTI3_2
	.word	.LBB3_100-.LJTI3_2
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"USAGE   :  %s [options] <infile> [outfile]\n"
	.size	.L.str.1, 44

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n<infile> and/or <outfile> can be \"-\", which means stdin/stdout.\n"
	.size	.L.str.2, 66

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Try \"%s --help\" for more information\n"
	.size	.L.str.3, 38

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"OPTIONS :\n"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"  Input options:\n"
	.size	.L.str.5, 18

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"    -r              input is raw pcm\n"
	.size	.L.str.6, 38

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"    -x              force byte-swapping of input\n"
	.size	.L.str.7, 50

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"    -s sfreq        sampling frequency of input file(kHz) - default 44.1kHz\n"
	.size	.L.str.8, 77

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"    --mp3input      input file is a MP3 file\n"
	.size	.L.str.9, 46

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"  Filter options:\n"
	.size	.L.str.10, 19

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"    -k              keep ALL frequencies (disables all filters)\n"
	.size	.L.str.11, 65

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"  --lowpass freq         frequency(kHz), lowpass filter cutoff above freq\n"
	.size	.L.str.12, 75

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"  --lowpass-width freq   frequency(kHz) - default 15%% of lowpass freq\n"
	.size	.L.str.13, 72

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"  --highpass freq        frequency(kHz), highpass filter cutoff below freq\n"
	.size	.L.str.14, 76

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"  --highpass-width freq  frequency(kHz) - default 15%% of highpass freq\n"
	.size	.L.str.15, 73

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"  --resample sfreq  sampling frequency of output file(kHz)- default=input sfreq\n"
	.size	.L.str.16, 81

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"  --cwlimit freq    compute tonality up to freq (in kHz) default 8.8717\n"
	.size	.L.str.17, 73

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"  Operational options:\n"
	.size	.L.str.18, 24

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"    -m mode         (s)tereo, (j)oint, (f)orce or (m)ono  (default j)\n"
	.size	.L.str.19, 71

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"                    force = force ms_stereo on all frames. Faster\n"
	.size	.L.str.20, 67

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"    -a              downmix from stereo to mono file for mono encoding\n"
	.size	.L.str.21, 72

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"    -d              allow channels to have different blocktypes\n"
	.size	.L.str.22, 65

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"    -S              don't print progress report, VBR histograms\n"
	.size	.L.str.23, 65

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"    --athonly       only use the ATH for masking\n"
	.size	.L.str.24, 50

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"    --noath         disable the ATH for masking\n"
	.size	.L.str.25, 49

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"    --noshort       do not use short blocks\n"
	.size	.L.str.26, 45

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"    --voice         experimental voice mode\n"
	.size	.L.str.27, 45

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"    --preset type   type must be phone, voice, fm, tape, hifi, cd or studio\n"
	.size	.L.str.28, 77

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"                    help gives some more infos on these\n"
	.size	.L.str.29, 57

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"  CBR (constant bitrate, the default) options:\n"
	.size	.L.str.30, 48

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"    -h              higher quality, but a little slower.  Recommended.\n"
	.size	.L.str.31, 72

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"    -f              fast mode (very low quality)\n"
	.size	.L.str.32, 50

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"    -b bitrate      set the bitrate, default 128kbps\n"
	.size	.L.str.33, 54

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"  VBR options:\n"
	.size	.L.str.34, 16

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"    -v              use variable bitrate (VBR)\n"
	.size	.L.str.35, 48

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"    -V n            quality setting for VBR.  default n=%i\n"
	.size	.L.str.36, 60

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"                    0=high quality,bigger files. 9=smaller files\n"
	.size	.L.str.37, 66

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"    -b bitrate      specify minimum allowed bitrate, default 32kbs\n"
	.size	.L.str.38, 68

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"    -B bitrate      specify maximum allowed bitrate, default 256kbs\n"
	.size	.L.str.39, 69

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"    -t              disable Xing VBR informational tag\n"
	.size	.L.str.40, 56

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"    --nohist        disable VBR histogram display\n"
	.size	.L.str.41, 51

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"  MP3 header/stream options:\n"
	.size	.L.str.42, 30

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"    -e emp          de-emphasis n/5/c  (obsolete)\n"
	.size	.L.str.43, 51

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"    -c              mark as copyright\n"
	.size	.L.str.44, 39

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"    -o              mark as non-original\n"
	.size	.L.str.45, 42

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"    -p              error protection.  adds 16bit checksum to every frame\n"
	.size	.L.str.46, 75

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"                    (the checksum is computed correctly)\n"
	.size	.L.str.47, 58

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"    --nores         disable the bit reservoir\n"
	.size	.L.str.48, 47

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"  Specifying any of the following options will add an ID3 tag:\n"
	.size	.L.str.49, 64

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"     --tt \"title\"     title of song (max 30 chars)\n"
	.size	.L.str.50, 52

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"     --ta \"artist\"    artist who did the song (max 30 chars)\n"
	.size	.L.str.51, 62

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"     --tl \"album\"     album where it came from (max 30 chars)\n"
	.size	.L.str.52, 63

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"     --ty \"year\"      year in which the song/album was made (max 4 chars)\n"
	.size	.L.str.53, 75

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"     --tc \"comment\"   additional info (max 30 chars)\n"
	.size	.L.str.54, 54

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"                      (or max 28 chars if using the \"track\" option)\n"
	.size	.L.str.55, 69

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"     --tn \"track\"     track number of the song on the CD (1 to 99)\n"
	.size	.L.str.56, 68

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"                      (using this option will add an ID3v1.1 tag)\n"
	.size	.L.str.57, 67

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"     --tg \"genre\"     genre of song (name or number)\n"
	.size	.L.str.58, 54

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Presets are some shortcuts for common settings.\n"
	.size	.L.str.59, 49

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"They can be combined with -v if you want VBR MP3s.\n"
	.size	.L.str.60, 52

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"  --preset phone    =>  --resample      16\n"
	.size	.L.str.61, 44

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"                        --highpass       0.260\n"
	.size	.L.str.62, 48

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"                        --highpasswidth  0.040\n"
	.size	.L.str.63, 48

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"                        --lowpass        3.700\n"
	.size	.L.str.64, 48

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"                        --lowpasswidth   0.300\n"
	.size	.L.str.65, 48

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"                        --noshort\n"
	.size	.L.str.66, 35

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"                        -m   m\n"
	.size	.L.str.67, 32

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"                        -b  16\n"
	.size	.L.str.68, 32

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"                  plus  -b   8  \\\n"
	.size	.L.str.69, 35

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"                        -B  56   > in combination with -v\n"
	.size	.L.str.70, 59

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"                        -V   5  /\n"
	.size	.L.str.71, 35

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"  --preset voice:   =>  --resample      24\n"
	.size	.L.str.72, 44

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"                        --highpass       0.100\n"
	.size	.L.str.73, 48

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"                        --highpasswidth  0.020\n"
	.size	.L.str.74, 48

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"                        --lowpass       11\n"
	.size	.L.str.75, 44

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"                        --lowpasswidth   2\n"
	.size	.L.str.76, 44

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"                        -b  32\n"
	.size	.L.str.77, 32

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"                        -B  96   > in combination with -v\n"
	.size	.L.str.78, 59

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"                        -V   4  /\n"
	.size	.L.str.79, 35

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"  --preset fm:      =>  --resample      32\n"
	.size	.L.str.80, 44

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"                        --highpass       0.030\n"
	.size	.L.str.81, 48

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"                        --highpasswidth  0\n"
	.size	.L.str.82, 44

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"                        --lowpass       11.4\n"
	.size	.L.str.83, 46

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"                        --lowpasswidth   0\n"
	.size	.L.str.84, 44

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"                        -m   j\n"
	.size	.L.str.85, 32

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"                        -b  96\n"
	.size	.L.str.86, 32

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"                  plus  -b  32  \\\n"
	.size	.L.str.87, 35

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"                        -B 192   > in combination with -v\n"
	.size	.L.str.88, 59

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"  --preset tape:    =>  --lowpass       17\n"
	.size	.L.str.89, 44

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"                        --highpass       0.015\n"
	.size	.L.str.90, 48

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"                        --highpasswidth  0.015\n"
	.size	.L.str.91, 48

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"                        -b 128\n"
	.size	.L.str.92, 32

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"  --preset hifi:    =>  --lowpass       20\n"
	.size	.L.str.93, 44

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"                        --lowpasswidth   3\n"
	.size	.L.str.94, 44

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"                        -h\n"
	.size	.L.str.95, 28

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"                        -b 160\n"
	.size	.L.str.96, 32

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"                        -B 224   > in combination with -v\n"
	.size	.L.str.97, 59

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"                        -V   3  /\n"
	.size	.L.str.98, 35

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"  --preset cd:      =>  -k\n"
	.size	.L.str.99, 28

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"                        -m   s\n"
	.size	.L.str.100, 32

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"                        -b 192\n"
	.size	.L.str.101, 32

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"                  plus  -b  80  \\\n"
	.size	.L.str.102, 35

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"                        -B 256   > in combination with -v\n"
	.size	.L.str.103, 59

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"                        -V   2  /\n"
	.size	.L.str.104, 35

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"  --preset studio:  =>  -k\n"
	.size	.L.str.105, 28

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"                        -b 256\n"
	.size	.L.str.106, 32

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"                  plus  -b 112  \\\n"
	.size	.L.str.107, 35

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"                        -B 320   > in combination with -v\n"
	.size	.L.str.108, 59

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"                        -V   0  /\n"
	.size	.L.str.109, 35

	.type	inPath,@object                  # @inPath
	.bss
	.globl	inPath
inPath:
	.space	300
	.size	inPath, 300

	.type	outPath,@object                 # @outPath
	.globl	outPath
	.p2align	1, 0x0
outPath:
	.space	300
	.size	outPath, 300

	.type	.L.str.110,@object              # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.space	1
	.size	.L.str.110, 1

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"resample"
	.size	.L.str.111, 9

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"Must specify a samplerate with --resample\n"
	.size	.L.str.112, 43

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"mp3input"
	.size	.L.str.113, 9

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"voice"
	.size	.L.str.114, 6

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"noshort"
	.size	.L.str.115, 8

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"noath"
	.size	.L.str.116, 6

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"nores"
	.size	.L.str.117, 6

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"athonly"
	.size	.L.str.118, 8

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"nohist"
	.size	.L.str.119, 7

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"Unknown genre: %s.  Specifiy genre number \n"
	.size	.L.str.127, 44

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"lowpass"
	.size	.L.str.128, 8

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"Must specify lowpass with --lowpass freq, freq >= 0.001 kHz\n"
	.size	.L.str.129, 61

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"lowpass-width"
	.size	.L.str.130, 14

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"Must specify lowpass width with --lowpass-width freq, freq >= 0 kHz\n"
	.size	.L.str.131, 69

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"highpass"
	.size	.L.str.132, 9

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"Must specify highpass with --highpass freq, freq >= 0.001 kHz\n"
	.size	.L.str.133, 63

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"highpass-width"
	.size	.L.str.134, 15

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"Must specify highpass width with --highpass-width freq, freq >= 0 kHz\n"
	.size	.L.str.135, 71

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"cwlimit"
	.size	.L.str.136, 8

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"Must specify cwlimit in kHz\n"
	.size	.L.str.137, 29

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"help"
	.size	.L.str.138, 5

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"usage"
	.size	.L.str.139, 6

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"preset"
	.size	.L.str.140, 7

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"phone"
	.size	.L.str.141, 6

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"tape"
	.size	.L.str.143, 5

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"hifi"
	.size	.L.str.144, 5

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"studio"
	.size	.L.str.146, 7

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"%s: --preset type, type must be phone, voice, fm, tape, hifi, cd or studio, not %s\n"
	.size	.L.str.147, 84

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"%s: unrec option --%s\n"
	.size	.L.str.148, 23

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"%s: -m mode must be s/d/j/f/m not %s\n"
	.size	.L.str.149, 38

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"%s: -X n must be 0-6, not %s\n"
	.size	.L.str.150, 30

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"LAME not compiled with GTK support, -g not supported.\n"
	.size	.L.str.151, 55

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"%s: -e emp must be n/5/c not %s\n"
	.size	.L.str.152, 33

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"%s: unrec option %c\n"
	.size	.L.str.153, 21

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"%s: excess arg %s\n"
	.size	.L.str.154, 19

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	".mp3"
	.size	.L.str.156, 5

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"id3tag ignored: id3 tagging not supported for stdout.\n"
	.size	.L.str.157, 55

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inPath
	.addrsig_sym outPath
	.addrsig_sym id3tag
