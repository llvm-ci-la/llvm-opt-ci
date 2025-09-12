	.file	"calcMetricsData.c"
	.text
	.globl	calcMetricsData                 # -- Begin function calcMetricsData
	.p2align	5
	.type	calcMetricsData,@function
calcMetricsData:                        # @calcMetricsData
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(getTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $fp, 32
	sub.d	$a0, $a0, $a2
	st.d	$a0, $fp, 0
	blez	$a1, .LBB0_2
# %bb.1:
	fld.d	$fa1, $fp, 40
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fld.d	$fa2, $fp, 48
	fdiv.d	$fa3, $fa1, $fa0
	fmul.d	$fa1, $fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa2, $fa1
	movgr2fr.d	$fa2, $zero
	fcmp.cule.d	$fcc0, $fa2, $fa1
	fst.d	$fa3, $fp, 72
	bcnez	$fcc0, .LBB0_3
.LBB0_2:
	lu12i.w	$a0, -128737
	ori	$a0, $a0, 3901
	lu52i.d	$a0, $a0, -898
	st.d	$a0, $fp, 72
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $fp, 96
	fst.d	$fa0, $fp, 80
	bgtz	$a0, .LBB0_5
	b	.LBB0_6
.LBB0_3:
	fdiv.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_13
# %bb.4:
	ld.d	$a0, $fp, 96
	fst.d	$fa0, $fp, 80
	blez	$a0, .LBB0_6
.LBB0_5:
	fld.d	$fa1, $fp, 104
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fa2, $fp, 112
	fdiv.d	$fa3, $fa1, $fa0
	fmul.d	$fa1, $fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa2, $fa1
	movgr2fr.d	$fa2, $zero
	fcmp.cule.d	$fcc0, $fa2, $fa1
	fst.d	$fa3, $fp, 136
	bcnez	$fcc0, .LBB0_7
.LBB0_6:
	lu12i.w	$a0, -128737
	ori	$a0, $a0, 3901
	lu52i.d	$a0, $a0, -898
	st.d	$a0, $fp, 136
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $fp, 160
	fst.d	$fa0, $fp, 144
	bgtz	$a0, .LBB0_9
	b	.LBB0_10
.LBB0_7:
	fdiv.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_14
# %bb.8:
	ld.d	$a0, $fp, 160
	fst.d	$fa0, $fp, 144
	blez	$a0, .LBB0_10
.LBB0_9:
	fld.d	$fa1, $fp, 168
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fa2, $fp, 176
	fdiv.d	$fa3, $fa1, $fa0
	fmul.d	$fa1, $fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa2, $fa1
	movgr2fr.d	$fa2, $zero
	fcmp.cule.d	$fcc0, $fa2, $fa1
	fst.d	$fa3, $fp, 200
	bcnez	$fcc0, .LBB0_11
.LBB0_10:
	lu12i.w	$a0, -128737
	ori	$a0, $a0, 3901
	lu52i.d	$a0, $a0, -898
	st.d	$a0, $fp, 200
	movgr2fr.d	$fa0, $a0
	b	.LBB0_12
.LBB0_11:
	fdiv.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_15
.LBB0_12:
	fst.d	$fa0, $fp, 208
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_13:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	fst.d	$fa0, $fp, 80
	bgtz	$a0, .LBB0_5
	b	.LBB0_6
.LBB0_14:                               # %call.sqrt66
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 160
	fst.d	$fa0, $fp, 144
	bgtz	$a0, .LBB0_9
	b	.LBB0_10
.LBB0_15:                               # %call.sqrt68
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_12
.Lfunc_end0:
	.size	calcMetricsData, .Lfunc_end0-calcMetricsData
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
