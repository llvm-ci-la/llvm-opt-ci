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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function getname
.LCPI1_0:
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	9                               # 0x9
	.word	11                              # 0xb
.LCPI1_1:
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	5                               # 0x5
.LCPI1_2:
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	10                              # 0xa
	.word	12                              # 0xc
.LCPI1_3:
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	5                               # 0x5
	.text
	.globl	getname
	.p2align	5
	.type	getname,@function
getname:                                # @getname
# %bb.0:
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI1_1)
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_2)
	pcalau12i	$a1, %pc_hi20(.LCPI1_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI1_3)
	vmadd.w	$vr2, $vr0, $vr1
	alsl.d	$a1, $a0, $a0, 1
	alsl.d	$a0, $a1, $a0, 2
	vmadd.w	$vr4, $vr0, $vr3
	vmul.w	$vr0, $vr2, $vr4
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
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
