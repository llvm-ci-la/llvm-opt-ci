	.file	"newton.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function newton
.LCPI0_0:
	.dword	0x3ed4f8b588e368f1              # double 5.0000000000000004E-6
	.text
	.globl	newton
	.p2align	5
	.type	newton,@function
newton:                                 # @newton
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$fp, $a1
	move	$s0, $a0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fsel	$fs2, $fs1, $fa1, $fcc0
	movfr2gr.d	$a1, $fs2
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs1, $fs0
	vldi	$vr1, -928
	fmul.d	$fs0, $fa0, $fa1
	fsub.d	$fa0, $fs0, $fs2
	pcaddu18i	$ra, %call36(d_abs)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(d_abs)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI0_0)
	fdiv.d	$fa0, $fs1, $fa0
	fcmp.cule.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB0_4
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %got_pc_hi20(DERIV_X)
	ld.d	$s3, $a0, %got_pc_lo12(DERIV_X)
	move	$s2, $zero
	ori	$s4, $zero, 40
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fmov.d	$fs1, $fs0
	move	$s5, $s2
	addi.w	$s2, $s2, 1
	movfr2gr.d	$a2, $fs0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(HORNERS)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s3, 0
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fs0, $fs0, $fa0
	fsub.d	$fa0, $fs0, $fs1
	pcaddu18i	$ra, %call36(d_abs)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(d_abs)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs1, $fa0
	fcmp.cule.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB0_4
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB0_2 Depth=1
	bltu	$s5, $s4, .LBB0_2
.LBB0_4:                                # %._crit_edge
	movfr2gr.d	$a1, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	newton, .Lfunc_end0-newton
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"     NEWTON Called on interval [%g,%g]\n"
	.size	.L.str, 40

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"     X[%d] = %g\n"
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ROOT: %g (approx.)\n\n"
	.size	.L.str.2, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
