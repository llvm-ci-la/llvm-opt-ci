	.file	"spectral-norm.c"
	.text
	.globl	eval_A                          # -- Begin function eval_A
	.p2align	5
	.type	eval_A,@function
eval_A:                                 # @eval_A
# %bb.0:
	add.d	$a1, $a1, $a0
	addi.d	$a2, $a1, 1
	mulw.d.w	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	frecip.d	$fa0, $fa0
	ret
.Lfunc_end0:
	.size	eval_A, .Lfunc_end0-eval_A
                                        # -- End function
	.globl	eval_A_times_u                  # -- Begin function eval_A_times_u
	.p2align	5
	.type	eval_A_times_u,@function
eval_A_times_u:                         # @eval_A_times_u
# %bb.0:
	blez	$a0, .LBB1_5
# %bb.1:                                # %.lr.ph.us.preheader
	move	$a3, $zero
	move	$a4, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	alsl.d	$a5, $a4, $a2, 3
	slli.d	$a6, $a4, 3
	stx.d	$zero, $a2, $a6
	addi.d	$a4, $a4, 1
	move	$a6, $a0
	move	$t0, $a3
	move	$a7, $a1
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, 1
	mul.d	$t0, $t1, $t0
	addi.w	$t1, $t1, 0
	bstrpick.d	$t0, $t0, 31, 1
	add.d	$t0, $t0, $a4
	fld.d	$fa2, $a7, 0
	movgr2fr.w	$fa3, $t0
	ffint.d.w	$fa3, $fa3
	frecip.d	$fa3, $fa3
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fst.d	$fa1, $a5, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	move	$t0, $t1
	bnez	$a6, .LBB1_3
# %bb.4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a3, $a3, 1
	bne	$a4, $a0, .LBB1_2
.LBB1_5:                                # %._crit_edge19
	ret
.Lfunc_end1:
	.size	eval_A_times_u, .Lfunc_end1-eval_A_times_u
                                        # -- End function
	.globl	eval_At_times_u                 # -- Begin function eval_At_times_u
	.p2align	5
	.type	eval_At_times_u,@function
eval_At_times_u:                        # @eval_At_times_u
# %bb.0:
	blez	$a0, .LBB2_5
# %bb.1:                                # %.lr.ph.us.preheader
	move	$a3, $zero
	move	$a4, $zero
	ori	$a5, $zero, 2
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	alsl.d	$a6, $a4, $a2, 3
	slli.d	$a7, $a4, 3
	stx.d	$zero, $a2, $a7
	ori	$a7, $zero, 1
	move	$t0, $a3
	move	$t2, $a5
	move	$t1, $a0
	move	$t3, $a1
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB2_3:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t0, 31, 1
	add.d	$t4, $a7, $t4
	fld.d	$fa2, $t3, 0
	movgr2fr.w	$fa3, $t4
	ffint.d.w	$fa3, $fa3
	frecip.d	$fa3, $fa3
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fst.d	$fa1, $a6, 0
	addi.d	$t3, $t3, 8
	addi.d	$t1, $t1, -1
	add.w	$t0, $t0, $t2
	addi.d	$t2, $t2, 2
	addi.w	$a7, $a7, 1
	bnez	$t1, .LBB2_3
# %bb.4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a5, 2
	add.w	$a3, $a3, $a5
	move	$a5, $a6
	bne	$a4, $a0, .LBB2_2
.LBB2_5:                                # %._crit_edge20
	ret
.Lfunc_end2:
	.size	eval_At_times_u, .Lfunc_end2-eval_At_times_u
                                        # -- End function
	.globl	eval_AtA_times_u                # -- Begin function eval_AtA_times_u
	.p2align	5
	.type	eval_AtA_times_u,@function
eval_AtA_times_u:                       # @eval_AtA_times_u
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $sp, 16
	bstrpick.d	$a3, $a0, 31, 0
	slli.d	$a4, $a3, 3
	addi.d	$a4, $a4, 15
	bstrpick.d	$a4, $a4, 35, 4
	slli.d	$a4, $a4, 4
	sub.d	$a4, $sp, $a4
	move	$sp, $a4
	blez	$a0, .LBB3_9
# %bb.1:                                # %.lr.ph.us.i.preheader
	move	$a0, $zero
	move	$a5, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	alsl.d	$a6, $a5, $a4, 3
	addi.d	$a5, $a5, 1
	move	$t1, $a0
	move	$a7, $a1
	move	$t0, $a3
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB3_3:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t2, $t1, 1
	mul.d	$t1, $t2, $t1
	addi.w	$t2, $t2, 0
	bstrpick.d	$t1, $t1, 31, 1
	add.d	$t1, $t1, $a5
	fld.d	$fa2, $a7, 0
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	frecip.d	$fa3, $fa3
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	move	$t1, $t2
	bnez	$t0, .LBB3_3
# %bb.4:                                # %._crit_edge.us.i
                                        #   in Loop: Header=BB3_2 Depth=1
	fst.d	$fa1, $a6, 0
	addi.w	$a0, $a0, 1
	bne	$a5, $a3, .LBB3_2
# %bb.5:                                # %.lr.ph.us.i6.preheader
	move	$a0, $zero
	move	$a1, $zero
	ori	$a5, $zero, 2
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph.us.i6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	alsl.d	$a6, $a1, $a2, 3
	ori	$a7, $zero, 1
	move	$t0, $a0
	move	$t2, $a5
	move	$t1, $a3
	move	$t3, $a4
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB3_7:                                #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t0, 31, 1
	add.d	$t4, $a7, $t4
	fld.d	$fa2, $t3, 0
	movgr2fr.w	$fa3, $t4
	ffint.d.w	$fa3, $fa3
	frecip.d	$fa3, $fa3
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	addi.d	$t3, $t3, 8
	addi.d	$t1, $t1, -1
	add.w	$t0, $t0, $t2
	addi.d	$t2, $t2, 2
	addi.w	$a7, $a7, 1
	bnez	$t1, .LBB3_7
# %bb.8:                                # %._crit_edge.us.i12
                                        #   in Loop: Header=BB3_6 Depth=1
	addi.d	$a1, $a1, 1
	add.w	$a0, $a0, $a5
	addi.d	$a5, $a5, 2
	fst.d	$fa1, $a6, 0
	bne	$a1, $a3, .LBB3_6
.LBB3_9:                                # %eval_At_times_u.exit
	addi.d	$sp, $fp, -16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	eval_AtA_times_u, .Lfunc_end3-eval_AtA_times_u
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI4_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB4_4
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s2, $a0, 0
	bstrpick.d	$s3, $a0, 31, 0
	slli.d	$a0, $s3, 3
	addi.d	$a0, $a0, 15
	bstrpick.d	$a0, $a0, 35, 4
	slli.d	$a0, $a0, 4
	sub.d	$s0, $sp, $a0
	move	$sp, $s0
	sub.d	$s1, $sp, $a0
	move	$sp, $s1
	blez	$s2, .LBB4_11
# %bb.2:                                # %.lr.ph.preheader
	ori	$a0, $zero, 4
	bgeu	$s3, $a0, .LBB4_5
.LBB4_3:
	move	$a0, $zero
	b	.LBB4_8
.LBB4_4:                                # %.thread
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	add.d	$s0, $sp, $a0
	move	$sp, $s0
	add.d	$s1, $sp, $a0
	move	$sp, $s1
	ori	$s3, $zero, 2000
	ori	$s2, $zero, 2000
	ori	$a0, $zero, 4
	bltu	$s3, $a0, .LBB4_3
.LBB4_5:                                # %vector.ph
	move	$a1, $zero
	bstrpick.d	$a0, $s3, 31, 2
	slli.d	$a0, $a0, 2
	slli.d	$a2, $s3, 3
	bstrins.d	$a2, $zero, 4, 0
	lu52i.d	$a3, $zero, 1023
	vreplgr2vr.d	$vr0, $a3
	.p2align	4, , 16
.LBB4_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a1
	vstx	$vr0, $s0, $a1
	addi.d	$a1, $a1, 32
	vst	$vr0, $a3, 16
	bne	$a2, $a1, .LBB4_6
# %bb.7:                                # %middle.block
	ori	$s4, $zero, 1
	beq	$s3, $a0, .LBB4_12
.LBB4_8:                                # %.lr.ph.preheader44
	slli.d	$a1, $a0, 3
	lu52i.d	$a2, $zero, 1023
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	stx.d	$a2, $s0, $a1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$s3, $a0, .LBB4_9
# %bb.10:
	ori	$s4, $zero, 1
	b	.LBB4_12
.LBB4_11:
	move	$s4, $zero
.LBB4_12:                               # %.preheader27
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(eval_AtA_times_u)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB4_16
# %bb.13:                               # %.lr.ph33.preheader
	movgr2fr.d	$fa0, $zero
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB4_14:                               # %.lr.ph33
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $s0, 0
	fld.d	$fa3, $s1, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa0, $fa3, $fa3, $fa0
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, -1
	addi.d	$s0, $s0, 8
	bnez	$s3, .LBB4_14
# %bb.15:                               # %._crit_edge.loopexit
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB4_17
.LBB4_16:
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_0)
.LBB4_17:                               # %._crit_edge
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB4_19
.LBB4_18:                               # %._crit_edge.split
	movfr2gr.d	$a1, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -64
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB4_19:                               # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB4_18
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%0.9f\n"
	.size	.L.str, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
