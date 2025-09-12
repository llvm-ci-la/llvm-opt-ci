	.file	"finalout.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function finalout
.LCPI0_0:
	.dword	0x408ff80000000000              # double 1023
.LCPI0_1:
	.dword	0xc090c80000000000              # double -1074
	.text
	.globl	finalout
	.p2align	5
	.type	finalout,@function
finalout:                               # @finalout
# %bb.0:
	addi.d	$sp, $sp, -1072
	st.d	$ra, $sp, 1064                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1032                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(TWsignal)
	st.w	$zero, $a0, %pc_lo12(TWsignal)
	pcalau12i	$a0, %got_pc_hi20(Tsave)
	ld.d	$a0, $a0, %got_pc_lo12(Tsave)
	fld.d	$fa0, $a0, 0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fadd.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa1, $fa1
	vldi	$vr2, -1000
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_0)
	fcmp.clt.d	$fcc0, $fa2, $fa0
	vldi	$vr0, -988
	fsel	$fa0, $fa0, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB0_16
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_1)
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_16
.LBB0_2:                                # %cdce.end
	pcalau12i	$s0, %pc_hi20(redoFlag)
	st.w	$zero, $s0, %pc_lo12(redoFlag)
	pcaddu18i	$ra, %call36(finalpin)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(prboard)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(outbig)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(outsmall)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(finalShot)
	ld.w	$a0, $s1, %pc_lo12(finalShot)
	bnez	$a0, .LBB0_4
# %bb.3:
	pcaddu18i	$ra, %call36(savewolf)
	jirl	$ra, $ra, 0
.LBB0_4:                                # %prepOutput.exit
	pcalau12i	$a0, %got_pc_hi20(cktName)
	ld.d	$a0, $a0, %got_pc_lo12(cktName)
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(gpass2)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(grdcell)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(overlap)
	ld.d	$a0, $a0, %got_pc_lo12(overlap)
	pcalau12i	$a1, %got_pc_hi20(goverlap)
	ld.d	$a1, $a1, %got_pc_lo12(goverlap)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(overlapf)
	ld.d	$a0, $a0, %got_pc_lo12(overlapf)
	pcalau12i	$a1, %got_pc_hi20(goverlapf)
	ld.d	$a1, $a1, %got_pc_lo12(goverlapf)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(overlapx)
	ld.d	$a0, $a0, %got_pc_lo12(overlapx)
	pcalau12i	$a1, %got_pc_hi20(goverlapx)
	ld.d	$a1, $a1, %got_pc_lo12(goverlapx)
	st.d	$a1, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(rebin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(lapFactor)
	ld.d	$a0, $a0, %got_pc_lo12(lapFactor)
	fld.d	$fa0, $a0, 0
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a0, 0
	vldi	$vr1, -1008
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$s2, $a1, %got_pc_lo12(offset)
	st.w	$a0, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $fp, 0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(findcost)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(funccost)
	ld.d	$s2, $a1, %got_pc_lo12(funccost)
	st.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(outgeo)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(outpin)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(checkpen)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB0_10
# %bb.5:
	pcaddu18i	$ra, %call36(fixpenal)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s0, %pc_lo12(redoFlag)
	pcaddu18i	$ra, %call36(finalpin)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(prboard)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(outbig)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(outsmall)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(finalShot)
	bnez	$a0, .LBB0_7
# %bb.6:
	pcaddu18i	$ra, %call36(savewolf)
	jirl	$ra, $ra, 0
.LBB0_7:                                # %prepOutput.exit8
	move	$a0, $zero
	pcaddu18i	$ra, %call36(rebin)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(findcost)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(outgeo)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(outpin)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(checkpen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	blez	$a0, .LBB0_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$s2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.LBB0_9:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB0_10:
	pcalau12i	$a0, %got_pc_hi20(doCompaction)
	ld.d	$a0, $a0, %got_pc_lo12(doCompaction)
	ld.w	$a0, $a0, 0
	bgtz	$a0, .LBB0_17
# %bb.11:
	pcalau12i	$a0, %got_pc_hi20(doChannelGraph)
	ld.d	$a0, $a0, %got_pc_lo12(doChannelGraph)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_13
# %bb.12:
	pcaddu18i	$ra, %call36(gmain)
	jirl	$ra, $ra, 0
.LBB0_13:
	pcalau12i	$a0, %got_pc_hi20(doGlobalRoute)
	ld.d	$a0, $a0, %got_pc_lo12(doGlobalRoute)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_15
# %bb.14:
	ld.d	$s2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	pcaddu18i	$t8, %call36(rmain)
	jr	$t8
.LBB0_15:
	ld.d	$s2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	ret
.LBB0_16:                               # %cdce.call
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_17:
	ori	$a0, $zero, 1
	st.w	$a0, $s1, %pc_lo12(finalShot)
	pcaddu18i	$ra, %call36(gmain)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(rmain)
	jirl	$ra, $ra, 0
	st.w	$zero, $s0, %pc_lo12(redoFlag)
	pcaddu18i	$ra, %call36(addpins)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	finalout, .Lfunc_end0-finalout
                                        # -- End function
	.globl	prepOutput                      # -- Begin function prepOutput
	.p2align	5
	.type	prepOutput,@function
prepOutput:                             # @prepOutput
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(finalpin)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(prboard)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(outbig)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(outsmall)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(finalShot)
	ld.w	$a0, $a0, %pc_lo12(finalShot)
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(savewolf)
	jr	$t8
.Lfunc_end1:
	.size	prepOutput, .Lfunc_end1-prepOutput
                                        # -- End function
	.type	TWsignal,@object                # @TWsignal
	.comm	TWsignal,4,4
	.type	redoFlag,@object                # @redoFlag
	.comm	redoFlag,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.cel"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n\nNew Value for lapFactor: %f\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"New Value for offset: %d\n\n"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"TimberWolf failed to resolve overlap problem.\n\n"
	.size	.L.str.4, 48

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\n\nPotential Overlap Problem Averted\n\n"
	.size	.L.str.5, 38

	.type	finalShot,@object               # @finalShot
	.comm	finalShot,4,4
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Cannot execute system calls!\n"
	.size	.L.str.6, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym goverlap
	.addrsig_sym goverlapf
	.addrsig_sym goverlapx
