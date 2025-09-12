	.file	"getFloat.c"
	.text
	.globl	getFloat                        # -- Begin function getFloat
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
	lu12i.w	$a1, -2049
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	movgr2fr.w	$fs0, $a1
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
	fcvt.d.s	$fa0, $fs1
	lu12i.w	$a0, -128737
	ori	$a1, $a0, 3901
	lu52i.d	$a0, $a1, -898
	movgr2fr.d	$fa1, $a0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 2
	bcnez	$fcc0, .LBB0_8
# %bb.5:
	lu52i.d	$a1, $a1, 1150
	movgr2fr.d	$fa1, $a1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_10
# %bb.6:
	lu12i.w	$a1, 522239
	ori	$a1, $a1, 4095
	movgr2fr.w	$fs0, $a1
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
