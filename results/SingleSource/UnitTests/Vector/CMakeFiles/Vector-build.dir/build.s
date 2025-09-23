	.file	"build.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	0x3f9df3b6                      # float 1.23399997
	.word	0x401874d1                      # float 2.38212991
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.dword	0x3ff85d3540000000              # double 1.5227558612823486
	.dword	0x4016b2bb60000000              # double 5.6745429039001465
.LCPI0_2:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -1123
	sltui	$s1, $a0, 1
	slli.d	$a0, $s1, 2
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LCPI0_0)
	fldx.s	$fa0, $a1, $a0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$fp, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $fp
	move	$a3, $fp
	move	$a4, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s1, 3
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	addi.d	$a1, $a1, %pc_lo12(.LCPI0_1)
	ldx.d	$a1, $a1, $a0
	move	$a0, $s0
	move	$a2, $a1
	move	$a3, $a1
	move	$a4, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_2)
	vrepli.b	$vr0, 0
	vld	$vr1, $sp, 0                    # 16-byte Folded Reload
	vshuf.w	$vr2, $vr0, $vr1
	vst	$vr2, $sp, 0                    # 16-byte Folded Spill
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vfadd.s	$vr0, $vr0, $vr0
	vreplvei.w	$vr1, $vr0, 0
	fcvt.d.s	$fa1, $fa1
	vreplvei.w	$vr2, $vr0, 1
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr3, $vr0, 2
	fcvt.d.s	$fa3, $fa3
	vreplvei.w	$vr0, $vr0, 3
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa2
	movfr2gr.d	$a3, $fa3
	movfr2gr.d	$a4, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f %f %f %f\n"
	.size	.L.str, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
