	.file	"pr44942.c"
	.text
	.globl	test1                           # -- Begin function test1
	.p2align	5
	.type	test1,@function
test1:                                  # @test1
# %bb.0:
	addi.d	$sp, $sp, -16
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 8
	ld.w	$a0, $sp, 24
	ori	$a1, $zero, 1234
	bne	$a0, $a1, .LBB0_2
# %bb.1:
	addi.d	$sp, $sp, 16
	ret
.LBB0_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	test1, .Lfunc_end0-test1
                                        # -- End function
	.globl	test2                           # -- Begin function test2
	.p2align	5
	.type	test2,@function
test2:                                  # @test2
# %bb.0:
	addi.d	$sp, $sp, -16
	addi.d	$a0, $sp, 120
	st.d	$a0, $sp, 8
	ld.w	$a0, $sp, 112
	ori	$a1, $zero, 1234
	bne	$a0, $a1, .LBB1_2
# %bb.1:
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	test2, .Lfunc_end1-test2
                                        # -- End function
	.globl	test3                           # -- Begin function test3
	.p2align	5
	.type	test3,@function
test3:                                  # @test3
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$a7, $sp, 56
	st.d	$a6, $sp, 48
	st.d	$a5, $sp, 40
	st.d	$a4, $sp, 32
	st.d	$a3, $sp, 24
	st.d	$a2, $sp, 16
	addi.d	$a0, $sp, 24
	st.d	$a0, $sp, 8
	fld.d	$fa0, $sp, 16
	ori	$a0, $zero, 0
	lu32i.d	$a0, 215040
	lu52i.d	$a0, $a0, 1033
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB2_2
# %bb.1:
	addi.d	$sp, $sp, 64
	ret
.LBB2_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	test3, .Lfunc_end2-test3
                                        # -- End function
	.globl	test4                           # -- Begin function test4
	.p2align	5
	.type	test4,@function
test4:                                  # @test4
# %bb.0:
	addi.d	$sp, $sp, -16
	addi.d	$a0, $sp, 40
	st.d	$a0, $sp, 8
	fld.d	$fa0, $sp, 32
	ori	$a0, $zero, 0
	lu32i.d	$a0, 215040
	lu52i.d	$a0, $a0, 1033
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_2
# %bb.1:
	addi.d	$sp, $sp, 16
	ret
.LBB3_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	test4, .Lfunc_end3-test4
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	ori	$fp, $zero, 1234
	st.d	$fp, $sp, 8
	pcaddu18i	$ra, %call36(test1)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 96
	pcaddu18i	$ra, %call36(test2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 215040
	lu52i.d	$fp, $a0, 1033
	move	$a2, $fp
	pcaddu18i	$ra, %call36(test3)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16
	pcaddu18i	$ra, %call36(test4)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
