	.file	"980526-2.c"
	.text
	.globl	do_mknod                        # -- Begin function do_mknod
	.p2align	5
	.type	do_mknod,@function
do_mknod:                               # @do_mknod
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 88064
	ori	$a0, $a0, 120
	bne	$a2, $a0, .LBB0_2
# %bb.1:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	do_mknod, .Lfunc_end0-do_mknod
                                        # -- End function
	.globl	getname                         # -- Begin function getname
	.p2align	5
	.type	getname,@function
getname:                                # @getname
# %bb.0:
	alsl.d	$a1, $a0, $a0, 2
	addi.d	$a2, $a1, 1
	slli.d	$a3, $a0, 2
	alsl.d	$a3, $a0, $a3, 1
	addi.d	$a3, $a3, 2
	slli.d	$a4, $a0, 3
	sub.d	$a5, $a4, $a0
	addi.d	$a5, $a5, 3
	addi.d	$a6, $a4, 4
	alsl.d	$a7, $a0, $a0, 3
	addi.d	$a7, $a7, 5
	alsl.d	$t0, $a0, $a4, 1
	addi.d	$t0, $t0, 5
	alsl.d	$a1, $a1, $a0, 1
	addi.d	$a1, $a1, 5
	alsl.d	$a4, $a0, $a4, 2
	addi.d	$a4, $a4, 5
	alsl.d	$t1, $a0, $a0, 1
	alsl.d	$a0, $t1, $a0, 2
	mul.d	$a2, $a2, $a3
	mul.d	$a3, $a5, $a6
	mul.d	$a5, $a7, $t0
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 31, 0
	ret
.Lfunc_end1:
	.size	getname, .Lfunc_end1-getname
                                        # -- End function
	.globl	sys_mknod                       # -- Begin function sys_mknod
	.p2align	5
	.type	sys_mknod,@function
sys_mknod:                              # @sys_mknod
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $a2, 6
	lu12i.w	$a1, 4092
	and	$a0, $a0, $a1
	bstrins.d	$a2, $a0, 63, 8
	addi.w	$a0, $a2, 0
	lu12i.w	$a1, 88064
	ori	$a1, $a1, 120
	bne	$a0, $a1, .LBB2_2
# %bb.1:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	sys_mknod, .Lfunc_end2-sys_mknod
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
