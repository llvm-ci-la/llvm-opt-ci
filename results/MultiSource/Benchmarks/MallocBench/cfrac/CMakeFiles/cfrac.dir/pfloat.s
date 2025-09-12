	.file	"pfloat.c"
	.text
	.globl	dtop                            # -- Begin function dtop
	.p2align	5
	.type	dtop,@function
dtop:                                   # @dtop
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	ori	$a0, $zero, 129
	pcaddu18i	$ra, %call36(palloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_4
# %bb.1:
	move	$fp, $a0
	move	$s0, $zero
	movgr2fr.d	$fs1, $zero
	fcmp.clt.d	$fcc0, $fs0, $fs1
	fneg.d	$fa0, $fs0
	fsel	$fa0, $fs0, $fa0, $fcc0
	movcf2gr	$a0, $fcc0
	st.b	$a0, $fp, 6
	lu52i.d	$a0, $zero, 1039
	movgr2fr.d	$fs0, $a0
	lu52i.d	$a0, $zero, 1007
	movgr2fr.d	$fs2, $a0
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	add.d	$s1, $fp, $s0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.h	$a0, $s1, 8
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs2
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	fcmp.cune.d	$fcc0, $fa0, $fs1
	addi.d	$s0, $s0, 2
	bcnez	$fcc0, .LBB0_2
# %bb.3:
	srli.d	$a0, $s0, 1
	st.h	$a0, $fp, 4
	move	$a0, $fp
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(presult)
	jr	$t8
.LBB0_4:
	move	$a0, $zero
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	dtop, .Lfunc_end0-dtop
                                        # -- End function
	.globl	ptod                            # -- Begin function ptod
	.p2align	5
	.type	ptod,@function
ptod:                                   # @ptod
# %bb.0:
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.h	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.h	$a1, $a0, 0
.LBB1_2:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	ld.hu	$a1, $a0, 4
	slli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 6
	movgr2fr.d	$fs0, $zero
	lu52i.d	$a2, $zero, 1039
	movgr2fr.d	$fa0, $a2
	ori	$a2, $zero, 10
	.p2align	4, , 16
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ldx.hu	$a3, $a0, $a1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	addi.d	$a3, $a1, 2
	addi.d	$a1, $a1, -2
	fmadd.d	$fs0, $fs0, $fa0, $fa1
	bltu	$a2, $a3, .LBB1_3
# %bb.4:
	ld.h	$a1, $a0, 0
	ld.bu	$fp, $a0, 6
	addi.d	$a1, $a1, -1
	slli.d	$a2, $a1, 48
	st.h	$a1, $a0, 0
	bnez	$a2, .LBB1_6
# %bb.5:
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB1_6:
	sltui	$a0, $fp, 1
	fneg.d	$fa0, $fs0
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa0, $fs0, $fcc0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	ptod, .Lfunc_end1-ptod
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
