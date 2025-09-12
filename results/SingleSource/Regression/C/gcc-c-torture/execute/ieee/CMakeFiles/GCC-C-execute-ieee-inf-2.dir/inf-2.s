	.file	"inf-2.c"
	.text
	.globl	test                            # -- Begin function test
	.p2align	5
	.type	test,@function
test:                                   # @test
# %bb.0:
	lu52i.d	$a0, $zero, 2047
	movgr2fr.d	$fa2, $a0
	fcmp.cune.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB0_5
# %bb.1:
	lu52i.d	$a0, $zero, -1
	movgr2fr.d	$fa2, $a0
	fcmp.cune.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB0_5
# %bb.2:
	fcmp.cune.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB0_5
# %bb.3:
	fclass.d	$fa0, $fa1
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 64
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_5
# %bb.4:
	ret
.LBB0_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
                                        # -- End function
	.globl	testf                           # -- Begin function testf
	.p2align	5
	.type	testf,@function
testf:                                  # @testf
# %bb.0:
	lu12i.w	$a0, 522240
	movgr2fr.w	$fa2, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB1_5
# %bb.1:
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	movgr2fr.w	$fa2, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB1_5
# %bb.2:
	fcmp.cune.s	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB1_5
# %bb.3:
	fclass.s	$fa0, $fa1
	movfr2gr.s	$a0, $fa0
	andi	$a0, $a0, 64
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_5
# %bb.4:
	ret
.LBB1_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	testf, .Lfunc_end1-testf
                                        # -- End function
	.globl	testl                           # -- Begin function testl
	.p2align	5
	.type	testl,@function
testl:                                  # @testl
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s3, $a0
	ori	$s2, $zero, 0
	lu32i.d	$s2, -65536
	lu52i.d	$a3, $s2, 2047
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_5
# %bb.1:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_5
# %bb.2:
	ori	$s1, $zero, 0
	lu32i.d	$s1, -65536
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_5
# %bb.3:
	lu52i.d	$a3, $s1, 2047
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_5
# %bb.4:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB2_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	testl, .Lfunc_end2-testl
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
