	.file	"pr23135.c"
	.text
	.globl	verify                          # -- Begin function verify
	.p2align	5
	.type	verify,@function
verify:                                 # @verify
# %bb.0:
	bne	$a0, $a2, .LBB0_3
# %bb.1:
	bne	$a1, $a3, .LBB0_3
# %bb.2:
	ret
.LBB0_3:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	verify, .Lfunc_end0-verify
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(i)
	ld.d	$a0, $a0, %pc_lo12(i)
	pcalau12i	$a1, %pc_hi20(j)
	ld.d	$a1, $a1, %pc_lo12(j)
	vinsgr2vr.d	$vr3, $a0, 0
	vinsgr2vr.d	$vr6, $a1, 0
	vadd.w	$vr0, $vr6, $vr3
	pcalau12i	$a0, %pc_hi20(res)
	addi.d	$a0, $a0, %pc_lo12(res)
	ori	$a1, $zero, 160
	lu32i.d	$a1, 113
	vreplgr2vr.d	$vr1, $a1
	vseq.w	$vr1, $vr0, $vr1
	vsllwil.d.w	$vr2, $vr1, 0
	vpickve2gr.d	$a1, $vr1, 0
	vpickve2gr.d	$a2, $vr2, 1
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	vstelm.d	$vr0, $a0, 0, 0
	beqz	$a1, .LBB1_12
# %bb.1:                                # %verify.exit
	vmul.w	$vr1, $vr6, $vr3
	ori	$a1, $zero, 1500
	lu32i.d	$a1, 1300
	vreplgr2vr.d	$vr2, $a1
	vseq.w	$vr2, $vr1, $vr2
	vsllwil.d.w	$vr4, $vr2, 0
	vpickve2gr.d	$a1, $vr2, 0
	vpickve2gr.d	$a2, $vr4, 1
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	vstelm.d	$vr1, $a0, 0, 0
	beqz	$a1, .LBB1_12
# %bb.2:                                # %verify.exit33
	vpickve2gr.w	$a1, $vr6, 1
	vpickve2gr.w	$a2, $vr3, 1
	div.w	$a1, $a2, $a1
	vpickve2gr.w	$a2, $vr6, 0
	vpickve2gr.w	$a3, $vr3, 0
	div.w	$a2, $a3, $a2
	vinsgr2vr.w	$vr2, $a2, 0
	vinsgr2vr.w	$vr2, $a1, 1
	ori	$a1, $zero, 15
	lu32i.d	$a1, 7
	vreplgr2vr.d	$vr4, $a1
	vseq.w	$vr4, $vr2, $vr4
	vsllwil.d.w	$vr5, $vr4, 0
	vpickve2gr.d	$a1, $vr4, 0
	vpickve2gr.d	$a2, $vr5, 1
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	vstelm.d	$vr2, $a0, 0, 0
	beqz	$a1, .LBB1_12
# %bb.3:                                # %verify.exit37
	vand.v	$vr4, $vr6, $vr3
	ori	$a1, $zero, 2
	lu32i.d	$a1, 4
	vreplgr2vr.d	$vr5, $a1
	vseq.w	$vr5, $vr4, $vr5
	vsllwil.d.w	$vr7, $vr5, 0
	vpickve2gr.d	$a1, $vr5, 0
	vpickve2gr.d	$a2, $vr7, 1
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	vstelm.d	$vr4, $a0, 0, 0
	beqz	$a1, .LBB1_12
# %bb.4:                                # %verify.exit41
	vor.v	$vr5, $vr6, $vr3
	ori	$a1, $zero, 158
	lu32i.d	$a1, 109
	vreplgr2vr.d	$vr7, $a1
	vseq.w	$vr7, $vr5, $vr7
	vsllwil.d.w	$vr8, $vr7, 0
	vpickve2gr.d	$a1, $vr7, 0
	vpickve2gr.d	$a2, $vr8, 1
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	vstelm.d	$vr5, $a0, 0, 0
	beqz	$a1, .LBB1_12
# %bb.5:                                # %verify.exit45
	vxor.v	$vr6, $vr6, $vr3
	ori	$a1, $zero, 156
	lu32i.d	$a1, 105
	vreplgr2vr.d	$vr7, $a1
	vseq.w	$vr7, $vr6, $vr7
	vsllwil.d.w	$vr8, $vr7, 0
	vpickve2gr.d	$a1, $vr7, 0
	vpickve2gr.d	$a2, $vr8, 1
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	vstelm.d	$vr6, $a0, 0, 0
	beqz	$a1, .LBB1_12
# %bb.6:                                # %verify.exit49
	vneg.w	$vr7, $vr3
	addi.w	$a1, $zero, -150
	lu32i.d	$a1, -100
	vreplgr2vr.d	$vr8, $a1
	vseq.w	$vr8, $vr7, $vr8
	vsllwil.d.w	$vr9, $vr8, 0
	vpickve2gr.d	$a1, $vr8, 0
	vpickve2gr.d	$a2, $vr9, 1
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	vstelm.d	$vr7, $a0, 0, 0
	beqz	$a1, .LBB1_12
# %bb.7:                                # %verify.exit53
	vrepli.b	$vr8, -1
	vxor.v	$vr8, $vr3, $vr8
	ori	$a1, $zero, 150
	lu32i.d	$a1, 100
	vreplgr2vr.d	$vr9, $a1
	vseq.w	$vr9, $vr3, $vr9
	vsllwil.d.w	$vr10, $vr9, 0
	vpickve2gr.d	$a1, $vr9, 0
	vpickve2gr.d	$a2, $vr10, 1
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	vstelm.d	$vr8, $a0, 0, 0
	beqz	$a1, .LBB1_12
# %bb.8:                                # %verify.exit57
	vsub.w	$vr3, $vr8, $vr3
	vadd.w	$vr3, $vr3, $vr1
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr3, $vr3, $vr5
	vadd.w	$vr3, $vr3, $vr6
	pcalau12i	$a1, %pc_hi20(k)
	addi.d	$a1, $a1, %pc_lo12(k)
	vstelm.d	$vr3, $a1, 0, 0
	ori	$a2, $zero, 1675
	lu32i.d	$a2, 1430
	vreplgr2vr.d	$vr9, $a2
	vseq.w	$vr9, $vr3, $vr9
	vsllwil.d.w	$vr10, $vr9, 0
	vpickve2gr.d	$a2, $vr9, 0
	vpickve2gr.d	$a3, $vr10, 1
	and	$a2, $a2, $a3
	andi	$a2, $a2, 1
	vstelm.d	$vr3, $a0, 0, 0
	beqz	$a2, .LBB1_12
# %bb.9:                                # %verify.exit61
	vmul.w	$vr3, $vr8, $vr7
	vmul.w	$vr3, $vr3, $vr1
	vmul.w	$vr3, $vr3, $vr0
	vmul.w	$vr3, $vr3, $vr4
	vmul.w	$vr3, $vr3, $vr5
	vmul.w	$vr3, $vr3, $vr6
	vstelm.d	$vr3, $a1, 0, 0
	lu12i.w	$a2, 355583
	lu32i.d	$a2, -430784
	lu52i.d	$a2, $a2, -1507
	vreplgr2vr.d	$vr9, $a2
	vseq.w	$vr9, $vr3, $vr9
	vpickve2gr.d	$a2, $vr9, 0
	vsllwil.d.w	$vr9, $vr9, 0
	vpickve2gr.d	$a3, $vr9, 1
	and	$a2, $a2, $a3
	andi	$a2, $a2, 1
	vstelm.d	$vr3, $a0, 0, 0
	beqz	$a2, .LBB1_12
# %bb.10:                               # %verify.exit65
	vpickve2gr.w	$a2, $vr1, 1
	vpickve2gr.w	$a3, $vr0, 1
	div.w	$a2, $a3, $a2
	vpickve2gr.w	$a3, $vr1, 0
	vpickve2gr.w	$a4, $vr0, 0
	div.w	$a3, $a4, $a3
	vpickve2gr.w	$a4, $vr2, 0
	div.w	$a3, $a3, $a4
	vpickve2gr.w	$a4, $vr2, 1
	div.w	$a2, $a2, $a4
	vpickve2gr.w	$a4, $vr4, 1
	div.w	$a2, $a2, $a4
	vpickve2gr.w	$a4, $vr4, 0
	div.w	$a3, $a3, $a4
	vpickve2gr.w	$a4, $vr5, 0
	div.w	$a3, $a3, $a4
	vpickve2gr.w	$a4, $vr5, 1
	div.w	$a2, $a2, $a4
	vpickve2gr.w	$a4, $vr6, 1
	div.w	$a2, $a2, $a4
	vpickve2gr.w	$a4, $vr6, 0
	div.w	$a3, $a3, $a4
	vpickve2gr.w	$a4, $vr7, 0
	div.w	$a3, $a3, $a4
	vpickve2gr.w	$a4, $vr7, 1
	div.w	$a2, $a2, $a4
	vpickve2gr.w	$a4, $vr8, 1
	div.w	$a2, $a2, $a4
	vpickve2gr.w	$a4, $vr8, 0
	div.w	$a3, $a3, $a4
	vinsgr2vr.w	$vr0, $a3, 0
	vinsgr2vr.w	$vr0, $a2, 1
	vstelm.d	$vr0, $a1, 0, 0
	or	$a1, $a2, $a3
	vstelm.d	$vr0, $a0, 0, 0
	bnez	$a1, .LBB1_12
# %bb.11:                               # %verify.exit69
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_12:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	i,@object                       # @i
	.data
	.globl	i
	.p2align	3, 0x0
i:
	.word	150                             # 0x96
	.word	100                             # 0x64
	.size	i, 8

	.type	j,@object                       # @j
	.globl	j
	.p2align	3, 0x0
j:
	.word	10                              # 0xa
	.word	13                              # 0xd
	.size	j, 8

	.type	res,@object                     # @res
	.bss
	.globl	res
	.p2align	3, 0x0
res:
	.space	8
	.size	res, 8

	.type	k,@object                       # @k
	.globl	k
	.p2align	3, 0x0
k:
	.space	8
	.size	k, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
