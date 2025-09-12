	.file	"twstats.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function twstats
.LCPI0_0:
	.dword	0x4059000000000000              # double 100
	.text
	.globl	twstats
	.p2align	5
	.type	twstats,@function
twstats:                                # @twstats
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(icost)
	ld.d	$s1, $a1, %got_pc_lo12(icost)
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(fcost)
	ld.d	$s2, $a1, %got_pc_lo12(fcost)
	ld.w	$a3, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$s0, %pc_hi20(.LCPI0_0)
	beqz	$a1, .LBB0_2
# %bb.1:
	ld.w	$a2, $s2, 0
	ld.d	$a0, $fp, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fld.d	$fa1, $s0, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ori	$a2, $zero, 100
	sub.w	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_2:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(iwire)
	ld.d	$s2, $a1, %got_pc_lo12(iwire)
	ld.w	$a2, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(fwire)
	ld.d	$s3, $a1, %got_pc_lo12(fwire)
	ld.w	$a3, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	beqz	$a0, .LBB0_4
# %bb.3:
	ld.w	$a1, $s3, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $s2, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fld.d	$fa1, $s0, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ori	$a2, $zero, 100
	sub.w	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_4:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(iwirex)
	ld.d	$s2, $a1, %got_pc_lo12(iwirex)
	ld.w	$a2, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(fwirex)
	ld.d	$s1, $a1, %got_pc_lo12(fwirex)
	ld.w	$a3, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	beqz	$a1, .LBB0_6
# %bb.5:
	ld.w	$a2, $s1, 0
	ld.d	$a0, $fp, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fld.d	$fa1, $s0, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ori	$a2, $zero, 100
	sub.w	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_6:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(iwirey)
	ld.d	$s2, $a1, %got_pc_lo12(iwirey)
	ld.w	$a2, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(fwirey)
	ld.d	$s1, $a1, %got_pc_lo12(fwirey)
	ld.w	$a3, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	beqz	$a1, .LBB0_8
# %bb.7:
	ld.w	$a2, $s1, 0
	ld.d	$a0, $fp, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fld.d	$fa1, $s0, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ori	$a2, $zero, 100
	sub.w	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_8:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(numcells)
	ld.d	$a1, $a1, %got_pc_lo12(numcells)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(numnets)
	ld.d	$a1, $a1, %got_pc_lo12(numnets)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(maxterm)
	ld.d	$a1, $a1, %got_pc_lo12(maxterm)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end0:
	.size	twstats, .Lfunc_end0-twstats
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nInitial Wiring Cost: %d   Final Wiring Cost: %d\n"
	.size	.L.str, 50

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"############ Percent Wire Cost Reduction: %d\n\n"
	.size	.L.str.1, 47

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\nInitial Wire Length: %d   Final Wire Length: %d\n"
	.size	.L.str.2, 50

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"*********** Percent Wire Length Reduction: %d\n\n"
	.size	.L.str.3, 48

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\nInitial Horiz. Wire: %d   Final Horiz. Wire: %d\n"
	.size	.L.str.4, 50

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"$$$$$$$$$ Percent H-Wire Length Reduction: %d\n\n"
	.size	.L.str.5, 48

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nInitial Vert. Wire: %d   Final Vert. Wire: %d\n"
	.size	.L.str.6, 48

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"@@@@@@@@@ Percent V-Wire Length Reduction: %d\n\n"
	.size	.L.str.7, 48

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\nStatistics:\n"
	.size	.L.str.8, 14

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Number of Cells: %d\n"
	.size	.L.str.9, 21

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Number of Pads: %d\n"
	.size	.L.str.10, 20

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Number of Nets: %d \n"
	.size	.L.str.11, 21

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Number of Pins: %d \n"
	.size	.L.str.12, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
