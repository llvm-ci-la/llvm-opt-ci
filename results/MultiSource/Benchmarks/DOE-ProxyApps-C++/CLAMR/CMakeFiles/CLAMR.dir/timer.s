	.file	"timer.c"
	.text
	.globl	cpu_timer_start                 # -- Begin function cpu_timer_start
	.p2align	5
	.type	cpu_timer_start,@function
cpu_timer_start:                        # @cpu_timer_start
# %bb.0:
	move	$a1, $zero
	pcaddu18i	$t8, %call36(gettimeofday)
	jr	$t8
.Lfunc_end0:
	.size	cpu_timer_start, .Lfunc_end0-cpu_timer_start
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function cpu_timer_stop
.LCPI1_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	cpu_timer_stop
	.p2align	5
	.type	cpu_timer_stop,@function
cpu_timer_stop:                         # @cpu_timer_stop
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	sub.d	$a0, $a0, $s0
	sub.d	$a1, $a1, $fp
	movgr2fr.d	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_0)
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fadd.d	$fa0, $fa1, $fa0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	cpu_timer_stop, .Lfunc_end1-cpu_timer_stop
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
