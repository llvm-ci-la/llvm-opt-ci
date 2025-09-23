	.file	"comp-goto-1.c"
	.section	.text.unlikely.,"ax",@progbits
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.text
	.globl	simulator_kernel                # -- Begin function simulator_kernel
	.p2align	5
	.type	simulator_kernel,@function
simulator_kernel:                       # @simulator_kernel
# %bb.0:
	ld.d	$a3, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a4, $a1, 1040
	pcalau12i	$a5, %pc_hi20(.Ltmp0)
	addi.d	$a5, $a5, %pc_lo12(.Ltmp0)
	beqz	$a0, .LBB1_10
# %bb.1:
	blez	$a0, .LBB1_10
# %bb.2:                                # %.lr.ph.preheader
	ld.d	$a6, $a1, 1032
	ori	$a7, $zero, 4
	pcalau12i	$a1, %pc_hi20(simulator_kernel.op_map)
	addi.d	$a1, $a1, %pc_lo12(simulator_kernel.op_map)
	bgeu	$a0, $a7, .LBB1_4
# %bb.3:
	move	$a7, $zero
	b	.LBB1_7
.LBB1_4:                                # %vector.ph
	bstrpick.d	$a7, $a0, 30, 2
	slli.d	$a7, $a7, 2
	addi.d	$t0, $a6, 16
	vinsgr2vr.w	$vr0, $a5, 0
	vinsgr2vr.w	$vr0, $a5, 1
	vldi	$vr1, -2301
	vrepli.b	$vr2, 0
	lu12i.w	$t1, -64
	vreplgr2vr.d	$vr3, $t1
	move	$t1, $a7
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $t0, -16
	vld	$vr5, $t0, 0
	vslli.d	$vr6, $vr4, 46
	vslli.d	$vr7, $vr5, 46
	vsrai.d	$vr6, $vr6, 43
	vsrai.d	$vr7, $vr7, 43
	vpickve2gr.d	$t2, $vr6, 0
	vpickve2gr.d	$t3, $vr6, 1
	vpickve2gr.d	$t4, $vr7, 0
	vpickve2gr.d	$t5, $vr7, 1
	ldx.d	$t2, $a1, $t2
	ldx.d	$t3, $a1, $t3
	ldx.d	$t4, $a1, $t4
	ldx.d	$t5, $a1, $t5
	vinsgr2vr.d	$vr6, $t2, 0
	vinsgr2vr.d	$vr6, $t3, 1
	vinsgr2vr.d	$vr7, $t4, 0
	vinsgr2vr.d	$vr7, $t5, 1
	vshuf4i.w	$vr6, $vr6, 8
	vshuf4i.w	$vr7, $vr7, 8
	vsub.w	$vr6, $vr6, $vr0
	vsub.w	$vr7, $vr7, $vr0
	vand.v	$vr6, $vr6, $vr1
	vand.v	$vr7, $vr7, $vr1
	vilvl.w	$vr6, $vr2, $vr6
	vilvl.w	$vr7, $vr2, $vr7
	vand.v	$vr4, $vr4, $vr3
	vand.v	$vr5, $vr5, $vr3
	vor.v	$vr4, $vr4, $vr6
	vor.v	$vr5, $vr5, $vr7
	vst	$vr4, $t0, -16
	vst	$vr5, $t0, 0
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a7, $a0, .LBB1_10
.LBB1_7:                                # %.lr.ph.preheader70
	alsl.d	$a6, $a7, $a6, 3
	sub.d	$a0, $a0, $a7
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	slli.d	$t0, $a7, 46
	srai.d	$t0, $t0, 43
	ldx.w	$t0, $a1, $t0
	sub.d	$t0, $t0, $a5
	bstrpick.d	$t0, $t0, 17, 0
	bstrins.d	$a7, $t0, 17, 0
	st.d	$a7, $a6, 0
	addi.d	$a0, $a0, -1
	addi.d	$a6, $a6, 8
	bnez	$a0, .LBB1_8
	b	.LBB1_10
	.p2align	4, , 16
.Ltmp0:                                 # Block address taken
.LBB1_9:                                # %.loopexit
                                        #   in Loop: Header=BB1_10 Depth=1
.LBB1_10:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
                                        #       Child Loop BB1_12 Depth 3
	ld.d	$a1, $a3, 0
	slli.d	$a0, $a1, 46
	srai.d	$a0, $a0, 46
	add.d	$a6, $a5, $a0
	srli.d	$a0, $a1, 52
	andi	$a0, $a0, 1020
	ldx.wu	$a0, $a2, $a0
	addi.d	$a3, $a3, 8
	srli.d	$a1, $a1, 20
	andi	$a1, $a1, 1020
	jr	$a6
	.p2align	4, , 16
.Ltmp1:                                 # Block address taken
.LBB1_11:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_12 Depth 3
	bstrpick.d	$a7, $a0, 19, 12
	slli.d	$a6, $a7, 4
	ldx.w	$t1, $a4, $a6
	ld.d	$a6, $a3, 0
	srli.d	$t0, $a0, 12
	beq	$t1, $t0, .LBB1_14
	.p2align	4, , 16
.LBB1_12:                               # %.lr.ph60
                                        #   Parent Loop BB1_10 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltz	$t1, .LBB1_16
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=3
	addi.d	$a7, $a7, -1
	andi	$a7, $a7, 255
	slli.d	$t1, $a7, 4
	ldx.w	$t1, $a4, $t1
	bne	$t1, $t0, .LBB1_12
.LBB1_14:                               # %._crit_edge
                                        #   in Loop: Header=BB1_11 Depth=2
	alsl.d	$a7, $a7, $a4, 4
	ld.d	$a7, $a7, 8
	ldx.w	$a0, $a7, $a0
	stx.w	$a0, $a2, $a1
	slli.d	$a0, $a6, 46
	srai.d	$a0, $a0, 46
	add.d	$a7, $a5, $a0
	srli.d	$a0, $a6, 52
	andi	$a0, $a0, 1020
	ldx.wu	$a0, $a2, $a0
	addi.d	$a3, $a3, 8
	srli.d	$a1, $a6, 20
	andi	$a1, $a1, 1020
	jr	$a7
.Ltmp2:                                 # Block address taken
.LBB1_15:
	ldx.w	$a0, $a2, $a1
	ret
.LBB1_16:
	pcaddu18i	$ra, %call36(f)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	simulator_kernel, .Lfunc_end1-simulator_kernel
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1088
	lu12i.w	$a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4095
	add.d	$a0, $a0, $a1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 11, 0
	ori	$a2, $zero, 291
	st.w	$a2, $sp, 1616
	lu12i.w	$a2, -291
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 1624
	st.w	$zero, $sp, 24
	lu12i.w	$a1, 291
	ori	$a1, $a1, 1104
	st.w	$a1, $sp, 32
	ori	$a1, $zero, 1104
	bstrins.d	$a0, $a1, 11, 0
	ori	$fp, $zero, 88
	st.w	$fp, $a0, 0
	lu52i.d	$a0, $zero, 8
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(program)
	addi.d	$a0, $a0, %pc_lo12(program)
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 8
	st.d	$a1, $a0, 16
	st.d	$a0, $sp, 16
	st.d	$a0, $sp, 1048
	ori	$a0, $zero, 3
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(simulator_kernel)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_2
# %bb.1:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	simulator_kernel.op_map,@object # @simulator_kernel.op_map
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
simulator_kernel.op_map:
	.dword	.Ltmp1
	.dword	.Ltmp2
	.size	simulator_kernel.op_map, 16

	.type	program,@object                 # @program
	.bss
	.globl	program
	.p2align	4, 0x0
program:
	.space	24
	.size	program, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym program
