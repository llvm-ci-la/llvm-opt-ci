	.file	"getFloat.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function getFloat
.LCPI0_0:
	.word	0xff7fffff                      # float -3.40282347E+38
.LCPI0_2:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0xc7efffffe091ff3d              # double -3.4028234699999998E+38
.LCPI0_3:
	.dword	0x47efffffe091ff3d              # double 3.4028234699999998E+38
	.text
	.globl	getFloat
	.p2align	5
	.type	getFloat,@function
getFloat:                               # @getFloat
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(getString)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI0_0)
	beqz	$a0, .LBB0_7
# %bb.1:
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fs1, $fa0
	movgr2fr.w	$fa0, $zero
	fcmp.cune.s	$fcc0, $fs1, $fa0
	fst.s	$fs1, $fp, 0
	bcnez	$fcc0, .LBB0_4
# %bb.2:
	ld.d	$a0, $sp, 8
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB0_4
# %bb.3:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 34
	ori	$a0, $zero, 3
	beq	$a1, $a2, .LBB0_8
.LBB0_4:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_1)
	fcvt.d.s	$fa0, $fs1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 2
	bcnez	$fcc0, .LBB0_8
# %bb.5:
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_10
# %bb.6:
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI0_2)
	b	.LBB0_8
.LBB0_7:
	ori	$a0, $zero, 1
.LBB0_8:                                # %.sink.split
	fst.s	$fs0, $fp, 0
.LBB0_9:
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_10:
	move	$a0, $zero
	b	.LBB0_9
.Lfunc_end0:
	.size	getFloat, .Lfunc_end0-getFloat
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
