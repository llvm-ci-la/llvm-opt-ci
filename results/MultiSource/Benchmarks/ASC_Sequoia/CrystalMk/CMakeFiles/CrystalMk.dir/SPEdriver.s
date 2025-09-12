	.file	"SPEdriver.c"
	.text
	.globl	SPEdriver                       # -- Begin function SPEdriver
	.p2align	5
	.type	SPEdriver,@function
SPEdriver:                              # @SPEdriver
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	move	$s2, $a7
	move	$s4, $a6
	move	$fp, $a5
	move	$s0, $a4
	move	$s5, $a3
	move	$s1, $a2
	move	$s6, $a1
	move	$s3, $a0
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	lu12i.w	$s7, 488
	ori	$s8, $s7, 1152
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fs0, $a0
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 12
	st.d	$s2, $sp, 0
	fmov.d	$fa0, $fs0
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $s1
	move	$a4, $s5
	move	$a5, $s0
	move	$a6, $fp
	move	$a7, $s4
	pcaddu18i	$ra, %call36(Crystal_div)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, -1
	bnez	$s8, .LBB0_1
# %bb.2:                                # %.preheader47.preheader
	ori	$s4, $s7, 1152
	.p2align	4, , 16
.LBB0_3:                                # %.preheader47
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 12
	move	$a1, $s3
	pcaddu18i	$ra, %call36(Crystal_pow)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB0_3
# %bb.4:                                # %.preheader45.preheader
	fmov.d	$fs0, $fa0
	move	$a0, $zero
	addi.d	$a1, $s2, 48
	ori	$a2, $zero, 1152
	.p2align	4, , 16
.LBB0_5:                                # %.preheader45
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $fp, $a0
	add.d	$a3, $fp, $a0
	add.d	$a4, $a1, $a0
	fst.d	$fa0, $a4, -48
	fld.d	$fa0, $a3, 8
	fst.d	$fa0, $a4, -40
	fld.d	$fa0, $a3, 16
	fst.d	$fa0, $a4, -32
	fld.d	$fa0, $a3, 24
	fst.d	$fa0, $a4, -24
	fld.d	$fa0, $a3, 32
	fst.d	$fa0, $a4, -16
	fld.d	$fa0, $a3, 40
	fst.d	$fa0, $a4, -8
	fld.d	$fa0, $a3, 48
	fstx.d	$fa0, $a1, $a0
	fld.d	$fa0, $a3, 56
	fst.d	$fa0, $a4, 8
	fld.d	$fa0, $a3, 64
	fst.d	$fa0, $a4, 16
	fld.d	$fa0, $a3, 72
	fst.d	$fa0, $a4, 24
	fld.d	$fa0, $a3, 80
	fst.d	$fa0, $a4, 32
	fld.d	$fa0, $a3, 88
	addi.d	$a0, $a0, 96
	fst.d	$fa0, $a4, 40
	bne	$a0, $a2, .LBB0_5
# %bb.6:                                # %.preheader43.preheader
	move	$s3, $zero
	addi.d	$s2, $s2, 88
	ori	$s4, $zero, 1152
	ori	$s5, $s7, 1152
	.p2align	4, , 16
.LBB0_7:                                # %.preheader43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_8:                                # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s2, $a0
	fld.d	$fa0, $a1, -88
	fstx.d	$fa0, $fp, $a0
	fld.d	$fa0, $a1, -80
	add.d	$a2, $fp, $a0
	fst.d	$fa0, $a2, 8
	fld.d	$fa0, $a1, -72
	fst.d	$fa0, $a2, 16
	fld.d	$fa0, $a1, -64
	fst.d	$fa0, $a2, 24
	fld.d	$fa0, $a1, -56
	fst.d	$fa0, $a2, 32
	fld.d	$fa0, $a1, -48
	fst.d	$fa0, $a2, 40
	fld.d	$fa0, $a1, -40
	fst.d	$fa0, $a2, 48
	fld.d	$fa0, $a1, -32
	fst.d	$fa0, $a2, 56
	fld.d	$fa0, $a1, -24
	fst.d	$fa0, $a2, 64
	fld.d	$fa0, $a1, -16
	fst.d	$fa0, $a2, 72
	fld.d	$fa0, $a1, -8
	fst.d	$fa0, $a2, 80
	fldx.d	$fa0, $s2, $a0
	addi.d	$a0, $a0, 96
	fst.d	$fa0, $a2, 88
	bne	$a0, $s4, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	ori	$a0, $zero, 12
	move	$a1, $fp
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Crystal_Cholesky)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	bne	$s3, $s5, .LBB0_7
# %bb.10:
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end0:
	.size	SPEdriver, .Lfunc_end0-SPEdriver
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
