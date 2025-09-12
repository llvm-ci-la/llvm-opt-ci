	.file	"mg.c"
	.text
	.globl	create_subdomain                # -- Begin function create_subdomain
	.p2align	5
	.type	create_subdomain,@function
create_subdomain:                       # @create_subdomain
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 152
	ld.d	$t0, $sp, 144
	move	$fp, $a7
	st.w	$s2, $a0, 24
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	st.w	$t0, $a0, 28
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.w	$a1, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$a2, $a0, 4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.w	$a3, $a0, 8
	move	$s5, $a4
	st.w	$a4, $a0, 12
	move	$s4, $a5
	st.w	$a5, $a0, 16
	move	$s3, $a6
	st.w	$a6, $a0, 20
	addi.d	$s7, $a0, 248
	ori	$a0, $zero, 216
	mul.d	$s6, $s2, $a0
	ori	$a1, $zero, 64
	move	$a0, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB0_5
# %bb.1:                                # %.lr.ph
	move	$s8, $zero
	move	$s0, $zero
	addi.w	$a0, $s2, -1
	ori	$a1, $zero, 216
	mul.d	$s1, $a0, $a1
	mul.d	$s2, $s2, $a1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s7, 0
	add.d	$a0, $a0, $s8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sra.w	$a2, $a2, $s0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sra.w	$a3, $a3, $s0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	sra.w	$a4, $a4, $s0
	sra.w	$a5, $s5, $s0
	sra.w	$a6, $s4, $s0
	sra.w	$a7, $s3, $s0
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(create_box)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s6, $s6, $a0
	addi.d	$s8, $s8, 216
	addi.d	$s0, $s0, 1
	beq	$s2, $s8, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	move	$a1, $fp
	bne	$s1, $s8, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(IterativeSolver_NumGrids)
	jirl	$ra, $ra, 0
	add.w	$a1, $a0, $fp
	b	.LBB0_2
.LBB0_5:                                # %._crit_edge
	addi.w	$a0, $s6, 0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end0:
	.size	create_subdomain, .Lfunc_end0-create_subdomain
                                        # -- End function
	.globl	destroy_subdomain               # -- Begin function destroy_subdomain
	.p2align	5
	.type	destroy_subdomain,@function
destroy_subdomain:                      # @destroy_subdomain
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	blez	$a0, .LBB1_3
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 248
	add.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(destroy_box)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 216
	blt	$s1, $a0, .LBB1_2
.LBB1_3:                                # %._crit_edge
	ld.d	$a0, $fp, 248
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	destroy_subdomain, .Lfunc_end1-destroy_subdomain
                                        # -- End function
	.globl	calculate_neighboring_subdomain_index # -- Begin function calculate_neighboring_subdomain_index
	.p2align	5
	.type	calculate_neighboring_subdomain_index,@function
calculate_neighboring_subdomain_index:  # @calculate_neighboring_subdomain_index
# %bb.0:
	ld.w	$a7, $a0, 1560
	add.d	$a1, $a4, $a1
	add.d	$a2, $a5, $a2
	ld.w	$a4, $a0, 1564
	add.w	$a1, $a1, $a7
	mod.w	$a1, $a1, $a7
	ld.w	$a0, $a0, 1568
	add.w	$a2, $a2, $a4
	mod.w	$a2, $a2, $a4
	add.d	$a3, $a6, $a3
	add.w	$a3, $a3, $a0
	mod.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a0, $a7
	add.w	$a0, $a0, $a1
	ret
.Lfunc_end2:
	.size	calculate_neighboring_subdomain_index, .Lfunc_end2-calculate_neighboring_subdomain_index
                                        # -- End function
	.globl	calculate_neighboring_subdomain_rank # -- Begin function calculate_neighboring_subdomain_rank
	.p2align	5
	.type	calculate_neighboring_subdomain_rank,@function
calculate_neighboring_subdomain_rank:   # @calculate_neighboring_subdomain_rank
# %bb.0:
	ld.w	$t0, $a0, 1584
	beqz	$t0, .LBB3_3
# %bb.1:
	ld.w	$t0, $a0, 1560
	mul.d	$t0, $t0, $a7
	add.d	$t1, $a4, $a1
	add.w	$t1, $t1, $t0
	addi.w	$t0, $zero, -1
	bltz	$t1, .LBB3_9
# %bb.2:
	ld.w	$t2, $a0, 1572
	bge	$t1, $t2, .LBB3_9
.LBB3_3:
	ld.w	$t0, $a0, 1588
	ld.d	$t1, $sp, 0
	beqz	$t0, .LBB3_6
# %bb.4:
	ld.w	$t0, $a0, 1564
	mul.d	$t0, $t0, $t1
	add.d	$t2, $a5, $a2
	add.w	$t2, $t2, $t0
	addi.w	$t0, $zero, -1
	bltz	$t2, .LBB3_9
# %bb.5:
	ld.w	$t3, $a0, 1576
	bge	$t2, $t3, .LBB3_9
.LBB3_6:
	ld.d	$t2, $sp, 8
	ld.w	$t0, $a0, 1592
	ld.w	$t3, $a0, 1568
	beqz	$t0, .LBB3_10
# %bb.7:
	mul.d	$t0, $t3, $t2
	add.w	$a3, $a6, $a3
	add.w	$a6, $a3, $t0
	addi.w	$t0, $zero, -1
	bltz	$a6, .LBB3_9
# %bb.8:
	ld.w	$t4, $a0, 1580
	blt	$a6, $t4, .LBB3_11
.LBB3_9:
	move	$a0, $t0
	ret
.LBB3_10:                               # %._crit_edge
	add.w	$a3, $a6, $a3
.LBB3_11:
	add.w	$a1, $a4, $a1
	ld.w	$a4, $a0, 1560
	srli.d	$a6, $a1, 31
	ld.w	$t0, $a0, 1548
	add.d	$a6, $a7, $a6
	slt	$a1, $a1, $a4
	xori	$a1, $a1, 1
	add.d	$a4, $a6, $t0
	add.w	$a1, $a4, $a1
	add.w	$a2, $a5, $a2
	srli.d	$a4, $a2, 31
	ld.w	$a5, $a0, 1564
	add.d	$a4, $t1, $a4
	ld.w	$a6, $a0, 1552
	mod.w	$a1, $a1, $t0
	slt	$a2, $a2, $a5
	xori	$a2, $a2, 1
	add.d	$a4, $a4, $a6
	add.w	$a2, $a4, $a2
	mod.w	$a2, $a2, $a6
	srli.d	$a4, $a3, 31
	ld.w	$a0, $a0, 1556
	add.d	$a4, $t2, $a4
	slt	$a3, $a3, $t3
	xori	$a3, $a3, 1
	add.d	$a4, $a4, $a0
	add.w	$a3, $a4, $a3
	mod.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a0, $t0
	add.w	$t0, $a0, $a1
	move	$a0, $t0
	ret
.Lfunc_end3:
	.size	calculate_neighboring_subdomain_rank, .Lfunc_end3-calculate_neighboring_subdomain_rank
                                        # -- End function
	.globl	create_domain                   # -- Begin function create_domain
	.p2align	5
	.type	create_domain,@function
create_domain:                          # @create_domain
# %bb.0:
	addi.d	$sp, $sp, -688
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	st.d	$fp, $sp, 672                   # 8-byte Folded Spill
	st.d	$s0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s1, $sp, 656                   # 8-byte Folded Spill
	st.d	$s2, $sp, 648                   # 8-byte Folded Spill
	st.d	$s3, $sp, 640                   # 8-byte Folded Spill
	st.d	$s4, $sp, 632                   # 8-byte Folded Spill
	st.d	$s5, $sp, 624                   # 8-byte Folded Spill
	st.d	$s6, $sp, 616                   # 8-byte Folded Spill
	st.d	$s7, $sp, 608                   # 8-byte Folded Spill
	st.d	$s8, $sp, 600                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 736
	ld.d	$s3, $sp, 704
	ld.d	$fp, $sp, 728
	move	$s7, $a7
	st.d	$a6, $sp, 296                   # 8-byte Folded Spill
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	move	$s5, $a3
	move	$s6, $a2
	move	$s4, $a0
	st.w	$s3, $a0, 1596
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	bnez	$s3, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
.LBB4_2:
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$a0, $s0, -1
	sra.w	$a2, $a1, $a0
	blt	$a2, $fp, .LBB4_188
# %bb.3:
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	bne	$a1, $s6, .LBB4_190
# %bb.4:
	bne	$s6, $s5, .LBB4_190
# %bb.5:
	ld.d	$s0, $sp, 688
	ld.d	$fp, $sp, 720
	ld.d	$s5, $sp, 712
	ld.d	$s1, $sp, 696
	mul.w	$a1, $s0, $s7
	div.w	$a0, $s3, $a1
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	mul.d	$a0, $a0, $a1
	sub.w	$a0, $s3, $a0
	div.w	$a1, $a0, $s7
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	mul.d	$a1, $a1, $s7
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.w	$s7, $s4, 1548
	st.w	$s0, $s4, 1552
	st.w	$s1, $s4, 1556
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	st.w	$a2, $s4, 1560
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.w	$a1, $s4, 1564
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	st.w	$a0, $s4, 1568
	mul.d	$a3, $s7, $a2
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.w	$a3, $s4, 1572
	mul.d	$a3, $s0, $a1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.w	$a3, $s4, 1576
	mul.d	$a3, $s1, $a0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.w	$a3, $s4, 1580
	mul.d	$a1, $a1, $a2
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	mul.w	$a1, $a1, $a0
	st.w	$a1, $s4, 1600
	addi.d	$a0, $s4, 1776
	slli.d	$a2, $a1, 8
	ori	$a1, $zero, 64
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 1572
	ld.w	$a1, $s4, 1576
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	ld.w	$a2, $s4, 1580
	st.w	$a0, $s4, 1536
	mul.d	$a0, $a1, $a3
	st.w	$a0, $s4, 1540
	mul.d	$a0, $a2, $a3
	st.w	$a0, $s4, 1544
	ld.w	$a0, $s5, 0
	st.w	$a0, $s4, 1584
	ld.w	$a0, $s5, 4
	st.w	$a0, $s4, 1588
	ld.w	$a1, $s5, 8
	ld.w	$a0, $s4, 1600
	st.w	$a1, $s4, 1592
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	st.w	$a4, $s4, 1604
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.w	$fp, $s4, 1608
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.w	$a1, $s4, 1612
	blez	$a4, .LBB4_13
# %bb.6:                                # %.lr.ph
	ori	$a1, $zero, 1
	bne	$a4, $a1, .LBB4_8
# %bb.7:
	move	$a1, $zero
	b	.LBB4_11
.LBB4_8:                                # %vector.ph
	addi.d	$a2, $s4, 1696
	bstrpick.d	$a1, $a4, 30, 1
	slli.d	$a1, $a1, 1
	lu52i.d	$a3, $zero, -1025
	vreplgr2vr.d	$vr0, $a3
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a2, -80
	vst	$vr0, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB4_9
# %bb.10:                               # %middle.block
	beq	$a1, $a4, .LBB4_13
.LBB4_11:                               # %scalar.ph.preheader
	alsl.d	$a2, $a1, $s4, 3
	addi.d	$a2, $a2, 1616
	sub.d	$a1, $a4, $a1
	lu52i.d	$a3, $zero, -1025
	.p2align	4, , 16
.LBB4_12:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a3, $a2, 0
	st.d	$a3, $a2, 80
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB4_12
.LBB4_13:                               # %.preheader635
	slli.d	$a0, $a0, 8
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a0, $s4, 1320
	ld.d	$t1, $sp, 472                   # 8-byte Folded Reload
	add.w	$a5, $t1, $s7
	addi.w	$a3, $a5, -1
	slt	$a1, $zero, $t1
	slt	$a2, $s7, $t1
	xori	$a2, $a2, 1
	and	$a4, $a1, $a2
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $t1
	slt	$a6, $t1, $s7
	and	$a6, $a2, $a6
	addi.w	$a2, $t1, 1
	add.w	$a7, $a2, $s7
	addi.w	$t0, $zero, -2
	slt	$t0, $t0, $t1
	slt	$a2, $a2, $s7
	and	$t0, $t0, $a2
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	mod.w	$a3, $a3, $s7
	andi	$a4, $a4, 1
	mod.w	$a5, $a5, $s7
	andi	$a6, $a6, 1
	mod.w	$a7, $a7, $s7
	andi	$t0, $t0, 1
	ori	$t1, $zero, 36
	move	$t3, $a1
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               #   in Loop: Header=BB4_15 Depth=1
	addi.d	$t3, $t3, 1
	addi.d	$a0, $a0, 36
	ori	$t2, $zero, 2
	beq	$t3, $t2, .LBB4_20
.LBB4_15:                               # %.preheader634
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
	move	$t4, $zero
	ld.d	$t2, $sp, 392                   # 8-byte Folded Reload
	add.d	$t6, $t3, $t2
	add.w	$t5, $s1, $t6
	mod.w	$t5, $t5, $s1
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	mul.d	$t5, $t5, $t2
	slt	$t7, $a1, $t6
	slt	$t6, $t6, $s1
	and	$t6, $t7, $t6
	move	$t7, $a2
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               # %.preheader633.split.us.preheader
                                        #   in Loop: Header=BB4_17 Depth=2
	add.d	$t2, $a3, $s3
	stx.w	$t2, $a0, $t4
	ld.w	$fp, $s4, 1584
	sltui	$fp, $fp, 1
	addi.d	$s5, $zero, -1
	masknez	$s2, $s5, $a4
	maskeqz	$s6, $t2, $a4
	or	$s2, $s6, $s2
	masknez	$s2, $s2, $fp
	maskeqz	$t2, $t2, $fp
	or	$t2, $t2, $s2
	stx.w	$t2, $a0, $t4
	ld.w	$fp, $s4, 1588
	sltui	$fp, $fp, 1
	maskeqz	$t2, $t2, $fp
	masknez	$fp, $s5, $fp
	or	$t2, $t2, $fp
	stx.w	$t2, $a0, $t4
	ld.w	$fp, $s4, 1592
	sltui	$fp, $fp, 1
	andi	$s2, $t6, 1
	maskeqz	$s6, $t2, $s2
	masknez	$s8, $s5, $s2
	or	$s6, $s6, $s8
	masknez	$s6, $s6, $fp
	maskeqz	$t2, $t2, $fp
	or	$t2, $t2, $s6
	stx.w	$t2, $a0, $t4
	add.d	$t2, $a5, $s3
	st.w	$t2, $t8, 4
	ld.w	$fp, $s4, 1584
	sltui	$fp, $fp, 1
	masknez	$s6, $s5, $a6
	maskeqz	$ra, $t2, $a6
	or	$s6, $ra, $s6
	masknez	$s6, $s6, $fp
	maskeqz	$t2, $t2, $fp
	or	$t2, $t2, $s6
	st.w	$t2, $t8, 4
	ld.w	$fp, $s4, 1588
	sltui	$fp, $fp, 1
	maskeqz	$t2, $t2, $fp
	masknez	$fp, $s5, $fp
	or	$t2, $t2, $fp
	st.w	$t2, $t8, 4
	ld.w	$fp, $s4, 1592
	sltui	$fp, $fp, 1
	maskeqz	$s6, $t2, $s2
	or	$s6, $s6, $s8
	masknez	$s6, $s6, $fp
	maskeqz	$t2, $t2, $fp
	or	$t2, $t2, $s6
	st.w	$t2, $t8, 4
	add.d	$t2, $a7, $s3
	st.w	$t2, $t8, 8
	ld.w	$fp, $s4, 1584
	sltui	$fp, $fp, 1
	masknez	$s3, $s5, $t0
	maskeqz	$s6, $t2, $t0
	or	$s3, $s6, $s3
	masknez	$s3, $s3, $fp
	maskeqz	$t2, $t2, $fp
	or	$t2, $t2, $s3
	st.w	$t2, $t8, 8
	ld.w	$fp, $s4, 1588
	sltui	$fp, $fp, 1
	maskeqz	$t2, $t2, $fp
	masknez	$fp, $s5, $fp
	or	$t2, $t2, $fp
	st.w	$t2, $t8, 8
	ld.w	$fp, $s4, 1592
	sltui	$fp, $fp, 1
	maskeqz	$s2, $t2, $s2
	or	$s2, $s2, $s8
	masknez	$s2, $s2, $fp
	maskeqz	$t2, $t2, $fp
	or	$t2, $t2, $s2
	st.w	$t2, $t8, 8
	addi.d	$t4, $t4, 12
	addi.w	$t7, $t7, 1
	beq	$t4, $t1, .LBB4_14
.LBB4_17:                               # %.preheader633
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$t8, $s0, $t7
	mod.w	$t8, $t8, $s0
	mul.d	$t8, $t8, $s7
	add.d	$s3, $t8, $t5
	add.d	$t8, $a0, $t4
	bltz	$t7, .LBB4_16
# %bb.18:                               # %.preheader633
                                        #   in Loop: Header=BB4_17 Depth=2
	bge	$t7, $s0, .LBB4_16
# %bb.19:                               # %.preheader633.split.preheader
                                        #   in Loop: Header=BB4_17 Depth=2
	add.d	$s5, $a3, $s3
	stx.w	$s5, $a0, $t4
	ld.w	$s6, $s4, 1584
	sltui	$s6, $s6, 1
	addi.d	$s8, $zero, -1
	masknez	$ra, $s8, $a4
	maskeqz	$fp, $s5, $a4
	or	$fp, $fp, $ra
	masknez	$fp, $fp, $s6
	maskeqz	$s5, $s5, $s6
	or	$fp, $s5, $fp
	stx.w	$fp, $a0, $t4
	ld.w	$s5, $s4, 1592
	sltui	$s5, $s5, 1
	andi	$s6, $t6, 1
	maskeqz	$ra, $fp, $s6
	masknez	$t2, $s8, $s6
	or	$ra, $ra, $t2
	masknez	$ra, $ra, $s5
	maskeqz	$fp, $fp, $s5
	or	$fp, $fp, $ra
	stx.w	$fp, $a0, $t4
	add.d	$fp, $a5, $s3
	st.w	$fp, $t8, 4
	ld.w	$s5, $s4, 1584
	sltui	$s5, $s5, 1
	masknez	$ra, $s8, $a6
	maskeqz	$s2, $fp, $a6
	or	$s2, $s2, $ra
	masknez	$s2, $s2, $s5
	maskeqz	$fp, $fp, $s5
	or	$fp, $fp, $s2
	st.w	$fp, $t8, 4
	ld.w	$s2, $s4, 1592
	sltui	$s2, $s2, 1
	maskeqz	$s5, $fp, $s6
	or	$s5, $s5, $t2
	masknez	$s5, $s5, $s2
	maskeqz	$fp, $fp, $s2
	or	$fp, $fp, $s5
	st.w	$fp, $t8, 4
	add.d	$fp, $a7, $s3
	st.w	$fp, $t8, 8
	ld.w	$s2, $s4, 1584
	sltui	$s2, $s2, 1
	masknez	$s3, $s8, $t0
	maskeqz	$s5, $fp, $t0
	or	$s3, $s5, $s3
	masknez	$s3, $s3, $s2
	maskeqz	$fp, $fp, $s2
	or	$fp, $fp, $s3
	st.w	$fp, $t8, 8
	ld.w	$s2, $s4, 1592
	sltui	$s2, $s2, 1
	maskeqz	$s3, $fp, $s6
	or	$t2, $s3, $t2
	masknez	$t2, $t2, $s2
	maskeqz	$fp, $fp, $s2
	or	$t2, $fp, $t2
	st.w	$t2, $t8, 8
	addi.d	$t4, $t4, 12
	addi.w	$t7, $t7, 1
	bne	$t4, $t1, .LBB4_17
	b	.LBB4_14
.LBB4_20:                               # %.preheader632
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blez	$a0, .LBB4_135
# %bb.21:                               # %.preheader631.lr.ph
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	blez	$a0, .LBB4_136
# %bb.22:                               # %.preheader631.lr.ph
	blez	$s2, .LBB4_136
# %bb.23:                               # %.preheader631.us.us.preheader
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $s2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a0, $s3, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	bstrpick.d	$a1, $s3, 31, 0
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	ori	$a2, $zero, 216
	mul.d	$a1, $a1, $a2
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	mul.d	$a0, $a0, $a2
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_24:                               # %._crit_edge654.split.us.us.us
                                        #   in Loop: Header=BB4_25 Depth=1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	add.w	$a4, $a4, $a0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB4_136
.LBB4_25:                               # %.preheader631.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
                                        #       Child Loop BB4_29 Depth 3
                                        #         Child Loop BB4_32 Depth 4
	move	$a6, $zero
	move	$a7, $zero
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a5
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	mul.d	$a0, $a0, $a3
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	b	.LBB4_27
	.p2align	4, , 16
.LBB4_26:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB4_27 Depth=2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.w	$a4, $a4, $s2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a6, $a1
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_24
.LBB4_27:                               # %.preheader630.us.us.us
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_29 Depth 3
                                        #         Child Loop BB4_32 Depth 4
	move	$a5, $zero
	st.d	$zero, $sp, 376                 # 8-byte Folded Spill
	addi.w	$a0, $a6, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a6
	mul.d	$a1, $a1, $s2
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a6
	mul.d	$a1, $a1, $a3
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	addi.d	$a1, $a7, -1
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	addi.w	$a1, $a6, -1
	srli.d	$a1, $a1, 31
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	srli.d	$a0, $a0, 31
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $a7, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a6, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a6, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 31
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_28:                               #   in Loop: Header=BB4_29 Depth=3
	addi.w	$a0, $s1, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$a5, $a0
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	beq	$a0, $s2, .LBB4_26
.LBB4_29:                               #   Parent Loop BB4_25 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_32 Depth 4
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	slli.d	$fp, $a4, 8
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a5
	slli.d	$s0, $a0, 8
	add.d	$a0, $t0, $s0
	st.w	$s3, $a0, 24
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.w	$a1, $a0, 28
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a5, $sp, 232                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a5
	mul.d	$s2, $a1, $a3
	stx.w	$s2, $t0, $s0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.w	$a1, $a0, 4
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.w	$a1, $a0, 8
	st.w	$a3, $a0, 12
	st.w	$a3, $a0, 16
	st.w	$a3, $a0, 20
	addi.d	$s7, $a0, 248
	ori	$a1, $zero, 64
	move	$a0, $s7
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB4_34
# %bb.30:                               # %.lr.ph.i.us.us.us.preheader
                                        #   in Loop: Header=BB4_29 Depth=3
	move	$s3, $zero
	move	$s5, $zero
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_31:                               #   in Loop: Header=BB4_32 Depth=4
	ld.d	$a0, $s7, 0
	add.d	$a0, $a0, $s5
	sra.w	$a2, $s2, $s3
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	sra.w	$a3, $a3, $s3
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	sra.w	$a4, $a4, $s3
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	sra.w	$a5, $a5, $s3
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	st.d	$a6, $sp, 0
	move	$a6, $a5
	move	$a7, $a5
	pcaddu18i	$ra, %call36(create_box)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s1, $s1, $a0
	addi.d	$s5, $s5, 216
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	beq	$a0, $s5, .LBB4_34
.LBB4_32:                               # %.lr.ph.i.us.us.us
                                        #   Parent Loop BB4_25 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        #       Parent Loop BB4_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bne	$a0, $s5, .LBB4_31
# %bb.33:                               #   in Loop: Header=BB4_32 Depth=4
	pcaddu18i	$ra, %call36(IterativeSolver_NumGrids)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_34:                               # %create_subdomain.exit.us.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	addi.w	$a0, $s2, 0
	ld.d	$t8, $s4, 1776
	ld.w	$a1, $s4, 1584
	ld.w	$a2, $s4, 1560
	ld.w	$a3, $s4, 1564
	add.d	$a4, $t8, $s0
	addi.d	$a4, $a4, 32
	add.w	$a6, $a2, $s2
	ld.d	$t4, $sp, 224                   # 8-byte Folded Reload
	add.w	$a7, $a3, $t4
	ld.w	$a5, $s4, 1568
	addi.w	$t0, $a7, -1
	mod.w	$t0, $t0, $a3
	st.d	$t0, $sp, 440                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 376                   # 8-byte Folded Reload
	addi.d	$s0, $t3, -1
	addi.w	$t0, $s2, -1
	srli.d	$t0, $t0, 31
	ld.d	$t2, $sp, 472                   # 8-byte Folded Reload
	add.d	$s3, $t0, $t2
	addi.w	$t0, $a6, -1
	mod.w	$t1, $t0, $a2
	srli.d	$a0, $a0, 31
	add.d	$a0, $a0, $t2
	slt	$t0, $s2, $a2
	xori	$t0, $t0, 1
	add.d	$a0, $a0, $t0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	slt	$a0, $a3, $t4
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	add.d	$a0, $t0, $a0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	mod.w	$t5, $a6, $a2
	mul.d	$a0, $a2, $t2
	add.w	$t6, $t3, $a0
	addi.w	$t7, $t6, 1
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	mul.d	$t3, $a3, $t0
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	add.w	$t0, $t0, $t3
	st.d	$t0, $sp, 424                   # 8-byte Folded Spill
	addi.d	$s5, $s2, 1
	addi.w	$t0, $s5, 0
	srli.d	$t0, $t0, 31
	add.d	$t0, $t0, $t2
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	slt	$t2, $s5, $a2
	xori	$t2, $t2, 1
	add.d	$t0, $t0, $t2
	st.d	$t0, $sp, 256                   # 8-byte Folded Spill
	addi.w	$a6, $a6, 1
	mod.w	$ra, $a6, $a2
	mod.w	$a6, $a7, $a3
	st.d	$a6, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	add.w	$t2, $s0, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$t0, $a0, $t3
	slt	$a0, $a2, $s2
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	slt	$a0, $t4, $a3
	xori	$a0, $a0, 1
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	addi.w	$a0, $a7, 1
	mod.w	$a0, $a0, $a3
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.w	$s7, $a0, $t3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	slt	$a0, $a0, $a3
	xori	$a0, $a0, 1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	st.d	$t8, $sp, 192                   # 8-byte Folded Spill
	add.d	$a0, $t8, $fp
	move	$t8, $t0
	addi.d	$t4, $a0, 92
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	mul.d	$a0, $a5, $a0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	addi.w	$a7, $zero, -1
	ori	$s0, $zero, 8
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$t0, $sp, 448                   # 8-byte Folded Spill
	st.d	$s7, $sp, 456                   # 8-byte Folded Spill
	beqz	$a1, .LBB4_37
	.p2align	4, , 16
.LBB4_35:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	mul.d	$fp, $a2, $t0
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	add.w	$fp, $t0, $fp
	addi.d	$s2, $zero, -1
	bltz	$fp, .LBB4_44
# %bb.36:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s3, $s4, 1572
	bge	$fp, $s3, .LBB4_44
.LBB4_37:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$fp, $s4, 1588
	beqz	$fp, .LBB4_40
# %bb.38:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	mul.d	$fp, $a3, $t0
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	add.w	$fp, $t0, $fp
	addi.d	$s2, $zero, -1
	bltz	$fp, .LBB4_44
# %bb.39:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s3, $s4, 1576
	bge	$fp, $s3, .LBB4_44
.LBB4_40:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$fp, $s4, 1592
	beqz	$fp, .LBB4_43
# %bb.41:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	add.w	$fp, $t0, $a0
	addi.d	$s2, $zero, -1
	bltz	$fp, .LBB4_44
# %bb.42:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s3, $s4, 1580
	bge	$fp, $s3, .LBB4_44
.LBB4_43:                               # %._crit_edge.i.us.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$fp, $s4, 1548
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	slt	$s2, $a2, $t0
	ld.w	$s3, $s4, 1552
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	add.d	$s5, $t0, $fp
	add.w	$s2, $s5, $s2
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	slt	$s5, $a3, $t0
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	add.d	$s6, $t0, $s3
	add.w	$s5, $s6, $s5
	srli.d	$s6, $a0, 31
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	add.d	$s6, $s6, $t0
	slt	$s8, $a6, $a5
	xori	$s8, $s8, 1
	ld.w	$s7, $s4, 1556
	add.d	$s6, $s6, $s8
	mod.w	$s2, $s2, $fp
	mod.w	$s5, $s5, $s3
	add.w	$s6, $s6, $s7
	mod.w	$s6, $s6, $s7
	ld.d	$s7, $sp, 456                   # 8-byte Folded Reload
	mul.d	$s3, $s6, $s3
	add.d	$s3, $s3, $s5
	mul.d	$fp, $s3, $fp
	add.d	$s2, $fp, $s2
	.p2align	4, , 16
.LBB4_44:                               # %calculate_neighboring_subdomain_rank.exit.us.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	add.w	$fp, $a5, $a0
	mod.w	$fp, $fp, $a5
	mul.d	$fp, $fp, $a3
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	add.d	$s3, $fp, $t0
	mul.d	$s3, $s3, $a2
	st.w	$s2, $t4, -60
	add.d	$s2, $s3, $t1
	st.w	$s2, $t4, -56
	beqz	$a1, .LBB4_47
# %bb.45:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	mul.d	$s2, $a2, $t0
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
	add.w	$s5, $t0, $s2
	addi.d	$s2, $zero, -1
	bltz	$s5, .LBB4_54
# %bb.46:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s6, $s4, 1572
	bge	$s5, $s6, .LBB4_54
.LBB4_47:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s2, $s4, 1588
	beqz	$s2, .LBB4_50
# %bb.48:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	mul.d	$s2, $a3, $t0
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	add.w	$s5, $t0, $s2
	addi.d	$s2, $zero, -1
	bltz	$s5, .LBB4_54
# %bb.49:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s6, $s4, 1576
	bge	$s5, $s6, .LBB4_54
.LBB4_50:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s2, $s4, 1592
	beqz	$s2, .LBB4_53
# %bb.51:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s5, $t0, $a0
	addi.d	$s2, $zero, -1
	bltz	$s5, .LBB4_54
# %bb.52:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s6, $s4, 1580
	bge	$s5, $s6, .LBB4_54
.LBB4_53:                               # %._crit_edge.i.us.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s2, $s4, 1548
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	add.w	$s5, $s2, $t0
	mod.w	$s5, $s5, $s2
	ld.w	$s6, $s4, 1552
	srli.d	$s7, $a0, 31
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	add.d	$s7, $s7, $t0
	slt	$s8, $a6, $a5
	xori	$s8, $s8, 1
	ld.w	$t0, $s4, 1556
	add.d	$s7, $s7, $s8
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
	add.w	$s8, $s6, $t3
	mod.w	$s8, $s8, $s6
	add.w	$s7, $s7, $t0
	mod.w	$t0, $s7, $t0
	ld.d	$s7, $sp, 456                   # 8-byte Folded Reload
	mul.d	$t0, $t0, $s6
	add.d	$t0, $t0, $s8
	mul.d	$t0, $t0, $s2
	add.d	$s2, $t0, $s5
	.p2align	4, , 16
.LBB4_54:                               # %calculate_neighboring_subdomain_rank.exit.us.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s2, $t4, -52
	add.d	$t0, $s3, $t5
	st.w	$t0, $t4, -48
	ld.d	$t3, $sp, 424                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_57
# %bb.55:                               #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $zero, -1
	bltz	$t7, .LBB4_64
# %bb.56:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t7, $t0, .LBB4_64
.LBB4_57:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_60
# %bb.58:                               #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $zero, -1
	bltz	$t3, .LBB4_64
# %bb.59:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t3, $t0, .LBB4_64
.LBB4_60:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_63
# %bb.61:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s2, $t0, $a0
	addi.d	$s5, $zero, -1
	bltz	$s2, .LBB4_64
# %bb.62:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s2, $t0, .LBB4_64
.LBB4_63:                               # %._crit_edge.i.us.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t3, $sp, 256                   # 8-byte Folded Reload
	add.w	$s2, $t0, $t3
	mod.w	$s2, $s2, $t0
	ld.w	$s5, $s4, 1552
	srli.d	$s6, $a0, 31
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
	add.d	$s6, $s6, $t3
	slt	$s7, $a6, $a5
	xori	$s7, $s7, 1
	ld.w	$s8, $s4, 1556
	add.d	$s6, $s6, $s7
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
	add.w	$s7, $s5, $t3
	mod.w	$s7, $s7, $s5
	add.w	$s6, $s6, $s8
	mod.w	$s6, $s6, $s8
	mul.d	$s5, $s6, $s5
	add.d	$s5, $s5, $s7
	ld.d	$s7, $sp, 456                   # 8-byte Folded Reload
	mul.d	$t0, $s5, $t0
	add.d	$s5, $t0, $s2
	.p2align	4, , 16
.LBB4_64:                               # %calculate_neighboring_subdomain_rank.exit.us.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	alsl.d	$s2, $a7, $a7, 3
	st.w	$s5, $t4, -44
	add.d	$t0, $s3, $ra
	st.w	$t0, $t4, -40
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	add.d	$t0, $fp, $t0
	mul.d	$s3, $t0, $a2
	add.d	$s5, $s3, $t1
	beqz	$a1, .LBB4_67
# %bb.65:                               #   in Loop: Header=BB4_29 Depth=3
	bltz	$t2, .LBB4_76
# %bb.66:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t2, $t0, .LBB4_76
.LBB4_67:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_70
# %bb.68:                               #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s6, $zero, -1
	bltz	$t8, .LBB4_74
# %bb.69:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t8, $t0, .LBB4_74
.LBB4_70:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_73
# %bb.71:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s8, $t0, $a0
	addi.d	$s6, $zero, -1
	bltz	$s8, .LBB4_74
# %bb.72:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s8, $t0, .LBB4_74
.LBB4_73:                               # %._crit_edge.i.us.us.us.1947
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	add.w	$s6, $t0, $t3
	mod.w	$s6, $s6, $t0
	ld.w	$s7, $s4, 1552
	srli.d	$s8, $a0, 31
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
	add.d	$s8, $s8, $t3
	slt	$t3, $a6, $a5
	xori	$t3, $t3, 1
	ld.w	$t8, $s4, 1556
	add.d	$t3, $s8, $t3
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	add.w	$s8, $s7, $s8
	mod.w	$s8, $s8, $s7
	add.w	$t3, $t3, $t8
	mod.w	$t3, $t3, $t8
	ld.d	$t8, $sp, 448                   # 8-byte Folded Reload
	mul.d	$t3, $t3, $s7
	ld.d	$s7, $sp, 456                   # 8-byte Folded Reload
	add.d	$t3, $t3, $s8
	mul.d	$t0, $t3, $t0
	add.d	$s6, $t0, $s6
.LBB4_74:                               # %calculate_neighboring_subdomain_rank.exit.us.us.us.1949
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s6, $t4, -36
	st.w	$s5, $t4, -32
	beqz	$a1, .LBB4_78
# %bb.75:                               #   in Loop: Header=BB4_29 Depth=3
	bgez	$t6, .LBB4_77
	b	.LBB4_87
	.p2align	4, , 16
.LBB4_76:                               # %calculate_neighboring_subdomain_rank.exit.us.us.us.1949.thread
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	st.w	$t0, $t4, -36
	st.w	$s5, $t4, -32
	bltz	$t6, .LBB4_87
.LBB4_77:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t6, $t0, .LBB4_87
.LBB4_78:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_81
# %bb.79:                               #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $zero, -1
	bltz	$t8, .LBB4_85
# %bb.80:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t8, $t0, .LBB4_85
.LBB4_81:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_84
# %bb.82:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s6, $t0, $a0
	addi.d	$s5, $zero, -1
	bltz	$s6, .LBB4_85
# %bb.83:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s6, $t0, .LBB4_85
.LBB4_84:                               # %._crit_edge.i.us.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t3, $sp, 312                   # 8-byte Folded Reload
	add.w	$t3, $t0, $t3
	mod.w	$t3, $t3, $t0
	ld.w	$t8, $s4, 1552
	srli.d	$s5, $a0, 31
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	add.d	$s5, $s5, $s6
	slt	$s6, $a6, $a5
	xori	$s6, $s6, 1
	ld.w	$s7, $s4, 1556
	add.d	$s5, $s5, $s6
	ld.d	$s6, $sp, 304                   # 8-byte Folded Reload
	add.w	$s6, $t8, $s6
	mod.w	$s6, $s6, $t8
	add.w	$s5, $s5, $s7
	mod.w	$s5, $s5, $s7
	ld.d	$s7, $sp, 456                   # 8-byte Folded Reload
	mul.d	$t8, $s5, $t8
	add.d	$t8, $t8, $s6
	mul.d	$t0, $t8, $t0
	ld.d	$t8, $sp, 448                   # 8-byte Folded Reload
	add.d	$s5, $t0, $t3
.LBB4_85:                               # %calculate_neighboring_subdomain_rank.exit.us.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s5, $t4, -28
	add.d	$t0, $s3, $t5
	st.w	$t0, $t4, -24
	bnez	$a1, .LBB4_88
# %bb.86:                               #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $s2, 14
	b	.LBB4_90
	.p2align	4, , 16
.LBB4_87:                               # %calculate_neighboring_subdomain_rank.exit.us.us.us.1.1.thread
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	st.w	$t0, $t4, -28
	add.d	$t0, $s3, $t5
	st.w	$t0, $t4, -24
.LBB4_88:                               #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $s0, -3
	addi.d	$s6, $zero, -1
	bltz	$t7, .LBB4_98
# %bb.89:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t7, $t0, .LBB4_98
.LBB4_90:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_93
# %bb.91:                               #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s6, $zero, -1
	bltz	$t8, .LBB4_98
# %bb.92:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t8, $t0, .LBB4_98
.LBB4_93:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_96
# %bb.94:                               #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s8, $t0, $a0
	addi.d	$s6, $zero, -1
	bltz	$s8, .LBB4_97
# %bb.95:                               #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s8, $t0, .LBB4_97
.LBB4_96:                               # %._crit_edge.i.us.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t3, $sp, 256                   # 8-byte Folded Reload
	add.w	$t3, $t0, $t3
	mod.w	$t3, $t3, $t0
	ld.w	$t8, $s4, 1552
	srli.d	$s6, $a0, 31
	ld.d	$s7, $sp, 392                   # 8-byte Folded Reload
	add.d	$s6, $s6, $s7
	slt	$s7, $a6, $a5
	xori	$s7, $s7, 1
	ld.w	$s8, $s4, 1556
	add.d	$s6, $s6, $s7
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	add.w	$s7, $t8, $s7
	mod.w	$s7, $s7, $t8
	add.w	$s6, $s6, $s8
	mod.w	$s6, $s6, $s8
	mul.d	$t8, $s6, $t8
	add.d	$t8, $t8, $s7
	mul.d	$t0, $t8, $t0
	ld.d	$t8, $sp, 448                   # 8-byte Folded Reload
	add.d	$s6, $t0, $t3
.LBB4_97:                               # %calculate_neighboring_subdomain_rank.exit.us.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$s7, $sp, 456                   # 8-byte Folded Reload
.LBB4_98:                               # %calculate_neighboring_subdomain_rank.exit.us.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	alsl.d	$t0, $s5, $a4, 3
	slli.d	$t3, $s5, 3
	stx.w	$s6, $a4, $t3
	add.d	$t3, $s3, $ra
	st.w	$t3, $t0, 4
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	add.d	$t0, $fp, $t0
	mul.d	$fp, $t0, $a2
	add.d	$s3, $fp, $t1
	beqz	$a1, .LBB4_101
# %bb.99:                               #   in Loop: Header=BB4_29 Depth=3
	bltz	$t2, .LBB4_110
# %bb.100:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t2, $t0, .LBB4_110
.LBB4_101:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_104
# %bb.102:                              #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $zero, -1
	bltz	$s7, .LBB4_108
# %bb.103:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$s7, $t0, .LBB4_108
.LBB4_104:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_107
# %bb.105:                              #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s6, $t0, $a0
	addi.d	$s5, $zero, -1
	bltz	$s6, .LBB4_108
# %bb.106:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s6, $t0, .LBB4_108
.LBB4_107:                              # %._crit_edge.i.us.us.us.2969
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	add.w	$t3, $t0, $t3
	mod.w	$t3, $t3, $t0
	ld.w	$t8, $s4, 1552
	srli.d	$s5, $a0, 31
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	add.d	$s5, $s5, $s6
	slt	$s6, $a6, $a5
	xori	$s6, $s6, 1
	ld.w	$s7, $s4, 1556
	add.d	$s5, $s5, $s6
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	add.w	$s6, $t8, $s6
	mod.w	$s6, $s6, $t8
	add.w	$s5, $s5, $s7
	mod.w	$s5, $s5, $s7
	ld.d	$s7, $sp, 456                   # 8-byte Folded Reload
	mul.d	$t8, $s5, $t8
	add.d	$t8, $t8, $s6
	mul.d	$t0, $t8, $t0
	ld.d	$t8, $sp, 448                   # 8-byte Folded Reload
	add.d	$s5, $t0, $t3
.LBB4_108:                              # %calculate_neighboring_subdomain_rank.exit.us.us.us.2972
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s5, $t4, -12
	st.w	$s3, $t4, -8
	beqz	$a1, .LBB4_112
# %bb.109:                              #   in Loop: Header=BB4_29 Depth=3
	bgez	$t6, .LBB4_111
	b	.LBB4_123
	.p2align	4, , 16
.LBB4_110:                              # %calculate_neighboring_subdomain_rank.exit.us.us.us.2972.thread
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	st.w	$t0, $t4, -12
	st.w	$s3, $t4, -8
	bltz	$t6, .LBB4_123
.LBB4_111:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t6, $t0, .LBB4_123
.LBB4_112:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_115
# %bb.113:                              #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s3, $zero, -1
	bltz	$s7, .LBB4_119
# %bb.114:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$s7, $t0, .LBB4_119
.LBB4_115:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_118
# %bb.116:                              #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s5, $t0, $a0
	addi.d	$s3, $zero, -1
	bltz	$s5, .LBB4_119
# %bb.117:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s5, $t0, .LBB4_119
.LBB4_118:                              # %._crit_edge.i.us.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t3, $sp, 312                   # 8-byte Folded Reload
	add.w	$t3, $t0, $t3
	mod.w	$t3, $t3, $t0
	ld.w	$t8, $s4, 1552
	srli.d	$s3, $a0, 31
	ld.d	$s5, $sp, 392                   # 8-byte Folded Reload
	add.d	$s3, $s3, $s5
	slt	$s5, $a6, $a5
	xori	$s5, $s5, 1
	ld.w	$s6, $s4, 1556
	add.d	$s3, $s3, $s5
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	add.w	$s5, $t8, $s5
	mod.w	$s5, $s5, $t8
	add.w	$s3, $s3, $s6
	mod.w	$s3, $s3, $s6
	mul.d	$t8, $s3, $t8
	add.d	$t8, $t8, $s5
	mul.d	$t0, $t8, $t0
	ld.d	$t8, $sp, 448                   # 8-byte Folded Reload
	add.d	$s3, $t0, $t3
.LBB4_119:                              # %calculate_neighboring_subdomain_rank.exit.us.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s3, $t4, -4
	add.d	$t0, $fp, $t5
	st.w	$t0, $t4, 0
	beqz	$a1, .LBB4_125
# %bb.120:                              #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s3, $zero, -1
	bltz	$t7, .LBB4_124
.LBB4_121:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	move	$s2, $s0
	bge	$t7, $t0, .LBB4_133
# %bb.122:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	bnez	$t0, .LBB4_126
	b	.LBB4_128
	.p2align	4, , 16
.LBB4_123:                              # %calculate_neighboring_subdomain_rank.exit.us.us.us.1.2.thread
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	st.w	$t0, $t4, -4
	add.d	$t0, $fp, $t5
	st.w	$t0, $t4, 0
	addi.d	$s3, $zero, -1
	bgez	$t7, .LBB4_121
.LBB4_124:                              #   in Loop: Header=BB4_29 Depth=3
	move	$s2, $s0
	b	.LBB4_133
	.p2align	4, , 16
.LBB4_125:                              #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s2, $s2, 17
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_128
.LBB4_126:                              #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s3, $zero, -1
	bltz	$s7, .LBB4_133
# %bb.127:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$s7, $t0, .LBB4_133
.LBB4_128:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_131
# %bb.129:                              #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s5, $t0, $a0
	addi.d	$s3, $zero, -1
	bltz	$s5, .LBB4_132
# %bb.130:                              #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s5, $t0, .LBB4_132
.LBB4_131:                              # %._crit_edge.i.us.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t3, $sp, 256                   # 8-byte Folded Reload
	add.w	$t3, $t0, $t3
	mod.w	$t3, $t3, $t0
	ld.w	$t8, $s4, 1552
	srli.d	$s3, $a0, 31
	ld.d	$s5, $sp, 392                   # 8-byte Folded Reload
	add.d	$s3, $s3, $s5
	slt	$s5, $a6, $a5
	xori	$s5, $s5, 1
	ld.w	$s6, $s4, 1556
	add.d	$s3, $s3, $s5
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	add.w	$s5, $t8, $s5
	mod.w	$s5, $s5, $t8
	add.w	$s3, $s3, $s6
	mod.w	$s3, $s3, $s6
	mul.d	$t8, $s3, $t8
	add.d	$t8, $t8, $s5
	mul.d	$t0, $t8, $t0
	add.d	$s3, $t0, $t3
.LBB4_132:                              # %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t8, $sp, 448                   # 8-byte Folded Reload
.LBB4_133:                              # %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	alsl.d	$t0, $s2, $a4, 3
	slli.d	$t3, $s2, 3
	stx.w	$s3, $a4, $t3
	add.d	$t3, $fp, $ra
	st.w	$t3, $t0, 4
	addi.d	$a7, $a7, 1
	addi.w	$a0, $a0, 1
	addi.d	$a6, $a6, 1
	addi.d	$s0, $s0, 9
	addi.d	$t4, $t4, 72
	ori	$t0, $zero, 35
	beq	$s0, $t0, .LBB4_28
# %bb.134:                              # %.preheader629.us.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	bnez	$a1, .LBB4_35
	b	.LBB4_37
.LBB4_135:
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
.LBB4_136:                              # %._crit_edge
	addi.d	$a0, $sp, 488
	ori	$a2, $zero, 108
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 504
	st.w	$a0, $sp, 528
	ld.w	$s1, $s4, 1604
	st.w	$a0, $sp, 536
	st.w	$a0, $sp, 544
	st.w	$a0, $sp, 552
	st.w	$a0, $sp, 576
	blez	$s1, .LBB4_185
# %bb.137:                              # %.preheader627.lr.ph
	move	$a3, $zero
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	slti	$a0, $a0, 1
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	slti	$a1, $a1, 1
	slti	$a2, $s2, 1
	addi.d	$s5, $s4, 1432
	bstrpick.d	$a4, $s2, 31, 0
	st.d	$a4, $sp, 328                   # 8-byte Folded Spill
	or	$a1, $a1, $a2
	or	$s6, $a1, $a0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	lu12i.w	$a0, 233016
	ori	$a0, $a0, 3641
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r30
                                        # implicit-def: $r22
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r26
                                        # implicit-def: $r23
                                        # implicit-def: $r31
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s5, $sp, 216                   # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	b	.LBB4_139
	.p2align	4, , 16
.LBB4_138:                              # %.split815.us.sink.split
                                        #   in Loop: Header=BB4_139 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$a0, $s2, 0
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	beq	$a3, $s1, .LBB4_184
.LBB4_139:                              # %.preheader627
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_141 Depth 2
                                        #       Child Loop BB4_143 Depth 3
                                        #         Child Loop BB4_145 Depth 4
                                        #           Child Loop BB4_147 Depth 5
                                        #             Child Loop BB4_150 Depth 6
	alsl.d	$s2, $a3, $s5, 3
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	bnez	$s6, .LBB4_138
# %bb.140:                              # %.preheader627.split.us.split.us.split.us
                                        #   in Loop: Header=BB4_139 Depth=1
	ld.w	$s5, $s4, 1584
	ld.w	$s6, $s4, 1596
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ori	$a1, $zero, 216
	mul.d	$s1, $a3, $a1
	.p2align	4, , 16
.LBB4_141:                              # %.split777.us.us.us.us
                                        #   Parent Loop BB4_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_143 Depth 3
                                        #         Child Loop BB4_145 Depth 4
                                        #           Child Loop BB4_147 Depth 5
                                        #             Child Loop BB4_150 Depth 6
	move	$a2, $zero
	move	$a1, $zero
	andi	$a3, $a0, 1
	b	.LBB4_143
	.p2align	4, , 16
.LBB4_142:                              # %._crit_edge731.split.us.split.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_143 Depth=3
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ori	$a0, $zero, 26
	beq	$a2, $a0, .LBB4_181
.LBB4_143:                              # %.preheader626.lr.ph.us.us.us.us.us.us
                                        #   Parent Loop BB4_139 Depth=1
                                        #     Parent Loop BB4_141 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_145 Depth 4
                                        #           Child Loop BB4_147 Depth 5
                                        #             Child Loop BB4_150 Depth 6
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	slli.d	$a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(.L__const.create_domain.FacesEdgesCorners)
	addi.d	$a2, $a2, %pc_lo12(.L__const.create_domain.FacesEdgesCorners)
	ldx.w	$a0, $a2, $a0
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	mul.d	$a2, $a0, $a7
	srli.d	$a4, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $a4
	addi.w	$a5, $a2, 0
	alsl.d	$a4, $a5, $a2, 1
	sub.w	$a4, $a0, $a4
	addi.w	$a6, $a4, -1
	st.d	$a6, $sp, 352                   # 8-byte Folded Spill
	mul.d	$a5, $a5, $a7
	srli.d	$a6, $a5, 63
	srli.d	$a5, $a5, 32
	add.d	$a5, $a5, $a6
	addi.w	$a6, $a5, 0
	alsl.d	$a5, $a6, $a5, 1
	sub.w	$a6, $a2, $a5
	addi.d	$a2, $a6, -1
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	mul.d	$a2, $a0, $a2
	srli.d	$a5, $a2, 63
	srai.d	$a2, $a2, 33
	add.d	$a2, $a2, $a5
	mul.d	$a5, $a2, $a7
	srli.d	$a7, $a5, 63
	srli.d	$a5, $a5, 32
	add.d	$a5, $a5, $a7
	addi.w	$a7, $a5, 0
	alsl.d	$a5, $a7, $a5, 1
	sub.w	$t0, $a2, $a5
	addi.d	$a2, $t0, -1
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	addi.d	$a2, $sp, 488
	alsl.d	$a2, $a0, $a2, 2
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L__const.create_domain.edges)
	addi.d	$a2, $a2, %pc_lo12(.L__const.create_domain.edges)
	alsl.d	$a2, $a0, $a2, 2
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L__const.create_domain.corners)
	addi.d	$a2, $a2, %pc_lo12(.L__const.create_domain.corners)
	move	$t4, $zero
	move	$a7, $zero
	alsl.d	$a0, $a0, $a2, 2
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	b	.LBB4_145
	.p2align	4, , 16
.LBB4_144:                              # %._crit_edge699.split.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_145 Depth=4
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	addi.w	$a7, $a7, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 320                   # 8-byte Folded Reload
	add.w	$t4, $t4, $a0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	beq	$a7, $a0, .LBB4_142
.LBB4_145:                              # %.preheader626.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB4_139 Depth=1
                                        #     Parent Loop BB4_141 Depth=2
                                        #       Parent Loop BB4_143 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_147 Depth 5
                                        #             Child Loop BB4_150 Depth 6
	move	$t1, $zero
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	st.d	$a7, $sp, 312                   # 8-byte Folded Spill
	add.w	$t8, $a7, $a0
	srli.d	$a0, $t8, 31
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$t4, $sp, 320                   # 8-byte Folded Spill
	b	.LBB4_147
	.p2align	4, , 16
.LBB4_146:                              # %._crit_edge677.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_147 Depth=5
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	addi.w	$t1, $t1, 1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
	add.w	$t4, $t4, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB4_144
.LBB4_147:                              # %.preheader.us.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB4_139 Depth=1
                                        #     Parent Loop BB4_141 Depth=2
                                        #       Parent Loop BB4_143 Depth=3
                                        #         Parent Loop BB4_145 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_150 Depth 6
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$t1, $sp, 376                   # 8-byte Folded Spill
	add.w	$a0, $t1, $a0
	srli.d	$a2, $a0, 31
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a5
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	st.d	$t4, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
	move	$a5, $a7
	b	.LBB4_150
	.p2align	4, , 16
.LBB4_148:                              #   in Loop: Header=BB4_150 Depth=6
	addi.w	$a1, $a1, 1
.LBB4_149:                              #   in Loop: Header=BB4_150 Depth=6
	addi.d	$a7, $a7, 1
	addi.w	$a5, $a5, 1
	addi.d	$a2, $a2, -1
	addi.w	$t4, $t4, 1
	beqz	$a2, .LBB4_146
.LBB4_150:                              #   Parent Loop BB4_139 Depth=1
                                        #     Parent Loop BB4_141 Depth=2
                                        #       Parent Loop BB4_143 Depth=3
                                        #         Parent Loop BB4_145 Depth=4
                                        #           Parent Loop BB4_147 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	beqz	$s5, .LBB4_153
# %bb.151:                              #   in Loop: Header=BB4_150 Depth=6
	ld.w	$t2, $s4, 1560
	ld.d	$t1, $sp, 472                   # 8-byte Folded Reload
	mul.d	$t2, $t2, $t1
	add.w	$ra, $a5, $t2
	addi.w	$t2, $zero, -1
	bltz	$ra, .LBB4_160
# %bb.152:                              #   in Loop: Header=BB4_150 Depth=6
	ld.w	$t3, $s4, 1572
	bge	$ra, $t3, .LBB4_160
.LBB4_153:                              #   in Loop: Header=BB4_150 Depth=6
	ld.w	$t2, $s4, 1588
	beqz	$t2, .LBB4_156
# %bb.154:                              #   in Loop: Header=BB4_150 Depth=6
	ld.w	$t2, $s4, 1564
	ld.d	$t1, $sp, 432                   # 8-byte Folded Reload
	mul.d	$t2, $t2, $t1
	add.w	$ra, $a0, $t2
	addi.w	$t2, $zero, -1
	bltz	$ra, .LBB4_160
# %bb.155:                              #   in Loop: Header=BB4_150 Depth=6
	ld.w	$t3, $s4, 1576
	bge	$ra, $t3, .LBB4_160
.LBB4_156:                              #   in Loop: Header=BB4_150 Depth=6
	ld.w	$t2, $s4, 1592
	ld.w	$ra, $s4, 1568
	beqz	$t2, .LBB4_159
# %bb.157:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	mul.d	$t2, $ra, $t1
	add.w	$t3, $t2, $t8
	addi.w	$t2, $zero, -1
	bltz	$t3, .LBB4_160
# %bb.158:                              #   in Loop: Header=BB4_150 Depth=6
	ld.w	$t5, $s4, 1580
	bge	$t3, $t5, .LBB4_160
.LBB4_159:                              # %._crit_edge.i619.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_150 Depth=6
	ld.w	$t2, $s4, 1560
	srli.d	$t3, $a5, 31
	ld.w	$t5, $s4, 1548
	ld.d	$t1, $sp, 472                   # 8-byte Folded Reload
	add.d	$t3, $t3, $t1
	slt	$t2, $a7, $t2
	xori	$t2, $t2, 1
	add.d	$t3, $t3, $t5
	ld.w	$t6, $s4, 1564
	add.w	$t2, $t3, $t2
	ld.w	$t3, $s4, 1552
	mod.w	$t2, $t2, $t5
	slt	$t6, $a0, $t6
	xori	$t6, $t6, 1
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	add.d	$t1, $t1, $t3
	add.w	$t1, $t1, $t6
	mod.w	$t1, $t1, $t3
	ld.w	$t6, $s4, 1556
	slt	$ra, $t8, $ra
	xori	$ra, $ra, 1
	ld.d	$t7, $sp, 384                   # 8-byte Folded Reload
	add.d	$ra, $t7, $ra
	add.w	$ra, $ra, $t6
	mod.w	$t6, $ra, $t6
	mul.d	$t3, $t6, $t3
	add.d	$t1, $t3, $t1
	mul.d	$t1, $t1, $t5
	add.w	$t2, $t1, $t2
	.p2align	4, , 16
.LBB4_160:                              # %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_150 Depth=6
	bne	$t2, $s6, .LBB4_149
# %bb.161:                              #   in Loop: Header=BB4_150 Depth=6
	ld.w	$t1, $s4, 1560
	ld.w	$t2, $s4, 1564
	add.w	$t3, $a5, $t1
	ld.w	$t5, $s4, 1568
	mod.w	$t3, $t3, $t1
	add.w	$t6, $a0, $t2
	mod.w	$t6, $t6, $t2
	add.w	$ra, $t8, $t5
	mod.w	$t5, $ra, $t5
	mul.d	$t2, $t5, $t2
	add.d	$t2, $t2, $t6
	mul.d	$t1, $t2, $t1
	add.w	$ra, $t1, $t3
	beqz	$a4, .LBB4_178
# %bb.162:                              #   in Loop: Header=BB4_150 Depth=6
	ori	$t1, $zero, 1
	beq	$a4, $t1, .LBB4_165
# %bb.163:                              #   in Loop: Header=BB4_150 Depth=6
	ori	$t1, $zero, 2
	bne	$a4, $t1, .LBB4_166
# %bb.164:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t4, 8
	add.d	$t1, $t1, $t2
	ld.d	$t1, $t1, 248
	add.d	$t1, $t1, $s1
	ld.w	$s8, $t1, 20
	ld.w	$fp, $t1, 44
	st.d	$zero, $sp, 440                 # 8-byte Folded Spill
	bnez	$a6, .LBB4_167
	b	.LBB4_179
.LBB4_165:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t4, 8
	add.d	$t2, $t1, $t2
	ld.d	$t2, $t2, 248
	slli.d	$t3, $ra, 8
	add.d	$t1, $t1, $t3
	ld.d	$t1, $t1, 248
	add.d	$t2, $t2, $s1
	ld.w	$s8, $t2, 44
	ld.w	$fp, $t2, 20
	add.d	$t1, $t1, $s1
	ld.w	$t1, $t1, 44
	st.d	$t1, $sp, 440                   # 8-byte Folded Spill
.LBB4_166:                              #   in Loop: Header=BB4_150 Depth=6
	beqz	$a6, .LBB4_179
.LBB4_167:                              #   in Loop: Header=BB4_150 Depth=6
	ori	$t1, $zero, 1
	beq	$a6, $t1, .LBB4_170
# %bb.168:                              #   in Loop: Header=BB4_150 Depth=6
	ori	$t1, $zero, 2
	bne	$a6, $t1, .LBB4_171
# %bb.169:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t4, 8
	add.d	$t1, $t1, $t2
	ld.d	$t1, $t1, 248
	add.d	$t1, $t1, $s1
	ld.w	$s0, $t1, 24
	ld.w	$s7, $t1, 44
	st.d	$zero, $sp, 448                 # 8-byte Folded Spill
	bnez	$t0, .LBB4_172
	b	.LBB4_180
.LBB4_170:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t4, 8
	add.d	$t2, $t1, $t2
	ld.d	$t2, $t2, 248
	slli.d	$t3, $ra, 8
	add.d	$t1, $t1, $t3
	ld.d	$t1, $t1, 248
	add.d	$t2, $t2, $s1
	ld.w	$s0, $t2, 44
	ld.w	$s7, $t2, 24
	add.d	$t1, $t1, $s1
	ld.w	$t1, $t1, 44
	st.d	$t1, $sp, 448                   # 8-byte Folded Spill
.LBB4_171:                              #   in Loop: Header=BB4_150 Depth=6
	beqz	$t0, .LBB4_180
.LBB4_172:                              #   in Loop: Header=BB4_150 Depth=6
	ori	$t1, $zero, 1
	beq	$t0, $t1, .LBB4_175
# %bb.173:                              #   in Loop: Header=BB4_150 Depth=6
	ori	$t1, $zero, 2
	bne	$t0, $t1, .LBB4_176
# %bb.174:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t4, 8
	add.d	$t1, $t1, $t2
	ld.d	$t1, $t1, 248
	add.d	$t1, $t1, $s1
	ld.w	$s3, $t1, 28
	ld.w	$t1, $t1, 44
	st.d	$t1, $sp, 464                   # 8-byte Folded Spill
	st.d	$zero, $sp, 456                 # 8-byte Folded Spill
	beqz	$a3, .LBB4_148
	b	.LBB4_177
.LBB4_175:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t4, 8
	add.d	$t2, $t1, $t2
	ld.d	$t2, $t2, 248
	slli.d	$t3, $ra, 8
	add.d	$t1, $t1, $t3
	ld.d	$t1, $t1, 248
	add.d	$t2, $t2, $s1
	ld.w	$s3, $t2, 44
	ld.w	$t2, $t2, 28
	st.d	$t2, $sp, 464                   # 8-byte Folded Spill
	add.d	$t1, $t1, $s1
	ld.w	$t1, $t1, 44
	st.d	$t1, $sp, 456                   # 8-byte Folded Spill
.LBB4_176:                              #   in Loop: Header=BB4_150 Depth=6
	beqz	$a3, .LBB4_148
.LBB4_177:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $s2, 0
	ori	$t2, $zero, 88
	mul.d	$t2, $a1, $t2
	add.d	$t1, $t1, $t2
	st.w	$fp, $t1, 12
	st.w	$s7, $t1, 16
	st.d	$zero, $t1, 48
	ld.d	$t3, $s2, 0
	ld.d	$t5, $sp, 464                   # 8-byte Folded Reload
	st.w	$t5, $t1, 20
	ld.d	$t5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t5, $t5, 0
	st.w	$t4, $t1, 24
	add.d	$t1, $t3, $t2
	slli.d	$t3, $t4, 8
	add.d	$t3, $t5, $t3
	ld.d	$t3, $t3, 248
	st.w	$s8, $t1, 28
	st.w	$s0, $t1, 32
	st.w	$s3, $t1, 36
	add.d	$t3, $t3, $s1
	ld.d	$t3, $t3, 48
	st.d	$t3, $t1, 40
	slli.d	$t3, $ra, 8
	add.d	$t3, $t5, $t3
	ld.d	$t3, $t3, 248
	st.d	$zero, $t1, 80
	ld.d	$t5, $s2, 0
	add.d	$t3, $t3, $s1
	ld.w	$t6, $t3, 48
	st.w	$ra, $t1, 56
	add.d	$t1, $t5, $t2
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	st.w	$ra, $t1, 60
	st.w	$t6, $t1, 72
	ld.w	$t3, $t3, 52
	ld.d	$t6, $sp, 424                   # 8-byte Folded Reload
	ld.w	$t6, $t6, 0
	ld.d	$ra, $sp, 448                   # 8-byte Folded Reload
	st.w	$ra, $t1, 64
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	st.w	$ra, $t1, 68
	st.w	$t3, $t1, 76
	stx.w	$t6, $t5, $t2
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	ld.w	$t2, $t2, 0
	st.w	$t2, $t1, 4
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	ld.w	$t2, $t2, 0
	st.w	$t2, $t1, 8
	b	.LBB4_148
.LBB4_178:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t4, 8
	add.d	$t2, $t1, $t2
	ld.d	$t2, $t2, 248
	slli.d	$t3, $ra, 8
	add.d	$t1, $t1, $t3
	ld.d	$t1, $t1, 248
	add.d	$t2, $t2, $s1
	ld.w	$s8, $t2, 44
	add.d	$t1, $t1, $s1
	ld.w	$t2, $t1, 44
	ld.w	$t1, $t1, 20
	add.d	$t1, $t1, $t2
	st.d	$t1, $sp, 440                   # 8-byte Folded Spill
	move	$fp, $s8
	bnez	$a6, .LBB4_167
.LBB4_179:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t4, 8
	add.d	$t2, $t1, $t2
	ld.d	$t2, $t2, 248
	slli.d	$t3, $ra, 8
	add.d	$t1, $t1, $t3
	ld.d	$t1, $t1, 248
	add.d	$t2, $t2, $s1
	ld.w	$s0, $t2, 44
	add.d	$t1, $t1, $s1
	ld.w	$t2, $t1, 44
	ld.w	$t1, $t1, 24
	add.d	$t1, $t1, $t2
	st.d	$t1, $sp, 448                   # 8-byte Folded Spill
	move	$s7, $s0
	bnez	$t0, .LBB4_172
.LBB4_180:                              #   in Loop: Header=BB4_150 Depth=6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t4, 8
	add.d	$t2, $t1, $t2
	ld.d	$t2, $t2, 248
	slli.d	$t3, $ra, 8
	add.d	$t1, $t1, $t3
	ld.d	$t1, $t1, 248
	add.d	$t2, $t2, $s1
	ld.w	$s3, $t2, 44
	add.d	$t1, $t1, $s1
	ld.w	$t2, $t1, 44
	ld.w	$t1, $t1, 28
	add.d	$t1, $t1, $t2
	st.d	$t1, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	beqz	$a3, .LBB4_148
	b	.LBB4_177
	.p2align	4, , 16
.LBB4_181:                              # %.split787.us.us.split.us.us.split.us.us
                                        #   in Loop: Header=BB4_141 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_183
# %bb.182:                              #   in Loop: Header=BB4_141 Depth=2
	ori	$a0, $zero, 88
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	st.d	$a0, $s2, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	b	.LBB4_141
	.p2align	4, , 16
.LBB4_183:                              #   in Loop: Header=BB4_139 Depth=1
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bne	$a3, $s1, .LBB4_139
.LBB4_184:                              # %._crit_edge896
	st.d	$zero, $s4, 1512
	st.w	$zero, $s4, 1520
	st.w	$a1, $s4, 1524
	st.w	$a1, $s4, 1528
	st.w	$a1, $s4, 1532
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
.LBB4_185:
	ld.w	$a0, $s4, 1596
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_187
# %bb.186:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	mul.w	$a1, $s2, $s1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	mul.w	$a2, $a0, $s1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	mul.w	$a3, $a0, $s1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	mul.w	$a1, $a0, $s1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	mul.w	$a2, $a0, $s1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	mul.w	$a3, $a0, $s1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	srli.d	$a1, $s3, 20
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB4_187:
	addi.w	$a0, $s3, 0
	ld.d	$s8, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 672                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 688
	ret
.LBB4_188:
	ld.w	$a0, $s4, 1596
	bnez	$a0, .LBB4_192
# %bb.189:
	move	$a1, $fp
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_190:
	ld.w	$a0, $s4, 1596
	bnez	$a0, .LBB4_192
# %bb.191:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB4_192:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	create_domain, .Lfunc_end4-create_domain
                                        # -- End function
	.globl	destroy_domain                  # -- Begin function destroy_domain
	.p2align	5
	.type	destroy_domain,@function
destroy_domain:                         # @destroy_domain
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 1596
	bnez	$a0, .LBB5_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB5_2:
	ld.w	$a0, $fp, 1600
	blez	$a0, .LBB5_8
# %bb.3:                                # %.lr.ph
	move	$s0, $zero
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %destroy_subdomain.exit
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a0, $s1, 248
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1600
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_8
.LBB5_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	ld.d	$a0, $fp, 1776
	slli.d	$a1, $s0, 8
	add.d	$s1, $a0, $a1
	ld.w	$a0, $s1, 24
	blez	$a0, .LBB5_4
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB5_7:                                #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 248
	add.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(destroy_box)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 24
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 216
	blt	$s3, $a0, .LBB5_7
	b	.LBB5_4
.LBB5_8:                                # %._crit_edge
	ld.d	$a0, $fp, 1776
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1596
	beqz	$a0, .LBB5_10
# %bb.9:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB5_10:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end5:
	.size	destroy_domain, .Lfunc_end5-destroy_domain
                                        # -- End function
	.globl	print_timing                    # -- Begin function print_timing
	.p2align	5
	.type	print_timing,@function
print_timing:                           # @print_timing
# %bb.0:
	ret
.Lfunc_end6:
	.size	print_timing, .Lfunc_end6-print_timing
                                        # -- End function
	.globl	MGResetTimers                   # -- Begin function MGResetTimers
	.p2align	5
	.type	MGResetTimers,@function
MGResetTimers:                          # @MGResetTimers
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a2, $zero, 1280
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 1288
	vst	$vr0, $fp, 1304
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	MGResetTimers, .Lfunc_end7-MGResetTimers
                                        # -- End function
	.globl	MGBuild                         # -- Begin function MGBuild
	.p2align	5
	.type	MGBuild,@function
MGBuild:                                # @MGBuild
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$s1, $a0, 1604
	ld.w	$a0, $a0, 1596
                                        # kill: def $f2_64 killed $f2_64 def $vr2
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	addi.w	$s3, $s1, 0
	bnez	$a0, .LBB8_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB8_2:
	ori	$a2, $zero, 1320
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$s3, .LBB8_13
# %bb.3:                                # %.lr.ph95
	ld.w	$a0, $fp, 1600
	blez	$a0, .LBB8_14
# %bb.4:                                # %.lr.ph95.split.us
	move	$a1, $zero
	ld.d	$a5, $fp, 1776
	addi.d	$a2, $fp, 1616
	bstrpick.d	$a3, $a0, 30, 1
	slli.d	$a3, $a3, 1
	addi.d	$a4, $a5, 504
	addi.d	$a5, $a5, 248
	ori	$a6, $zero, 1
	ori	$a7, $zero, 216
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB8_6 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s3, .LBB8_21
.LBB8_6:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
                                        #     Child Loop BB8_12 Depth 2
	sll.w	$t0, $a6, $a1
	movgr2fr.w	$fa0, $t0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	slli.d	$t0, $a1, 3
	fstx.d	$fa0, $a2, $t0
	mul.d	$t0, $a1, $a7
	bne	$a0, $a6, .LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	move	$t2, $zero
	b	.LBB8_11
	.p2align	4, , 16
.LBB8_8:                                # %vector.body147.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$t1, $a3
	move	$t2, $a4
	.p2align	4, , 16
.LBB8_9:                                # %vector.body147
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t2, -256
	ld.d	$t4, $t2, 0
	fstx.d	$fa0, $t3, $t0
	fstx.d	$fa0, $t4, $t0
	addi.d	$t1, $t1, -2
	addi.d	$t2, $t2, 512
	bnez	$t1, .LBB8_9
# %bb.10:                               # %middle.block150
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$t2, $a3
	beq	$a3, $a0, .LBB8_5
.LBB8_11:                               # %scalar.ph142.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	slli.d	$t1, $t2, 8
	add.d	$t1, $a5, $t1
	sub.d	$t2, $a0, $t2
	.p2align	4, , 16
.LBB8_12:                               # %scalar.ph142
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t1, 0
	fstx.d	$fa0, $t3, $t0
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 256
	bnez	$t2, .LBB8_12
	b	.LBB8_5
.LBB8_13:                               # %.preheader88.thread138
	addi.w	$s4, $s3, -1
	b	.LBB8_34
.LBB8_14:                               # %.lr.ph95.split.preheader
	ori	$a0, $zero, 4
	vld	$vr6, $sp, 16                   # 16-byte Folded Reload
	bgeu	$s3, $a0, .LBB8_16
# %bb.15:
	move	$a0, $zero
	b	.LBB8_19
.LBB8_16:                               # %vector.ph
	bstrpick.d	$a0, $s1, 30, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr0, $vr6, 0
	addi.d	$a1, $fp, 1632
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	vreplgr2vr.d	$vr1, $a2
	vrepli.w	$vr2, 1
	move	$a2, $a0
	.p2align	4, , 16
.LBB8_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr3, $vr1, 2
	vsll.w	$vr4, $vr2, $vr1
	vsll.w	$vr3, $vr2, $vr3
	vpickve2gr.w	$a3, $vr4, 1
	movgr2fr.w	$fa5, $a3
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$a3, $vr4, 0
	movgr2fr.w	$fa4, $a3
	ffint.d.w	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vpickve2gr.w	$a3, $vr3, 1
	movgr2fr.w	$fa5, $a3
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$a3, $vr3, 0
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	vextrins.d	$vr3, $vr5, 16
	vfmul.d	$vr4, $vr0, $vr4
	vfmul.d	$vr3, $vr0, $vr3
	vst	$vr4, $a1, -16
	vst	$vr3, $a1, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB8_17
# %bb.18:                               # %middle.block
	beq	$a0, $s1, .LBB8_21
.LBB8_19:                               # %.lr.ph95.split.preheader153
	alsl.d	$a1, $a0, $fp, 3
	addi.d	$a1, $a1, 1616
	sub.d	$a2, $s1, $a0
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB8_20:                               # %.lr.ph95.split
                                        # =>This Inner Loop Header: Depth=1
	sll.w	$a4, $a3, $a0
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa6, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB8_20
.LBB8_21:                               # %.preheader90.lr.ph
	ld.w	$a3, $fp, 1600
	ori	$a0, $zero, 2
	blt	$a3, $a0, .LBB8_27
# %bb.22:                               # %.preheader90.lr.ph.split.us
	ld.d	$a2, $fp, 1776
	move	$a0, $zero
	ld.d	$a1, $a2, 248
	addi.d	$a2, $a2, 504
	addi.d	$a3, $a3, -1
	ori	$a4, $zero, 216
	.p2align	4, , 16
.LBB8_23:                               # %.preheader90.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
	mul.d	$a5, $a0, $a4
	add.d	$t0, $a1, $a5
	ld.d	$a6, $t0, 184
	addi.d	$a7, $t0, 192
	addi.d	$t0, $t0, 200
	move	$t1, $a3
	move	$t2, $a2
	.p2align	4, , 16
.LBB8_24:                               #   Parent Loop BB8_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t2, 0
	ld.d	$t4, $a7, 0
	add.d	$t3, $t3, $a5
	st.d	$t4, $t3, 192
	ld.d	$t4, $t0, 0
	st.d	$a6, $t3, 184
	st.d	$t4, $t3, 200
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 256
	bnez	$t1, .LBB8_24
# %bb.25:                               # %._crit_edge.us99
                                        #   in Loop: Header=BB8_23 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB8_23
# %bb.26:                               # %.preheader89
	ori	$a0, $zero, 1
	addi.w	$s4, $s3, -1
	bne	$s3, $a0, .LBB8_30
	b	.LBB8_32
.LBB8_27:                               # %.preheader89.thread139
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB8_29
# %bb.28:
	move	$s4, $zero
	b	.LBB8_32
.LBB8_29:
	addi.w	$s4, $s3, -1
.LBB8_30:                               # %.lr.ph.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB8_31:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 2
	ori	$a3, $zero, 2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(restriction)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s4, $s1, .LBB8_31
.LBB8_32:                               # %.lr.ph102.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB8_33:                               # %.lr.ph102
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s3, $s1, .LBB8_33
.LBB8_34:                               # %._crit_edge
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	ori	$a3, $zero, 5
	move	$a0, $fp
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(project_cell_to_face)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	ori	$a3, $zero, 6
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(project_cell_to_face)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	ori	$a3, $zero, 7
	ori	$a4, $zero, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(project_cell_to_face)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB8_43
# %bb.35:                               # %.lr.ph105.preheader
	move	$s1, $zero
	b	.LBB8_37
	.p2align	4, , 16
.LBB8_36:                               # %.lr.ph105._crit_edge
                                        #   in Loop: Header=BB8_37 Depth=1
	move	$s1, $s2
	beq	$s3, $s2, .LBB8_39
.LBB8_37:                               # %.lr.ph105
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 5
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 6
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 7
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s1, 1
	bge	$s1, $s4, .LBB8_36
# %bb.38:                               #   in Loop: Header=BB8_37 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(restriction_betas)
	jirl	$ra, $ra, 0
	b	.LBB8_36
.LBB8_39:                               # %.lr.ph107.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB8_40:                               # %.lr.ph107
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(rebuild_lambda)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s3, $s1, .LBB8_40
# %bb.41:                               # %.lr.ph109.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB8_42:                               # %.lr.ph109
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s3, $s1, .LBB8_42
.LBB8_43:                               # %._crit_edge110
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1280
	ld.w	$a2, $fp, 1596
	sub.d	$a0, $a0, $s0
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 1280
	beqz	$a2, .LBB8_45
# %bb.44:
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB8_45:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end8:
	.size	MGBuild, .Lfunc_end8-MGBuild
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function MGSolve
.LCPI9_0:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
	.text
	.globl	MGSolve
	.p2align	5
	.type	MGSolve,@function
MGSolve:                                # @MGSolve
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 1308
	ld.w	$a1, $fp, 1596
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s0, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 1308
	bnez	$a1, .LBB9_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB9_2:
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(zero_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 9
	vldi	$vr0, -912
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $zero
	addi.d	$s5, $fp, 1200
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI9_0)
	ori	$s6, $zero, 2
	addi.w	$s8, $zero, -8
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_3:                                #   in Loop: Header=BB9_5 Depth=1
	movfr2gr.d	$a2, $fs3
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $s3
	move	$a3, $a2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_4:                                #   in Loop: Header=BB9_5 Depth=1
	move	$s1, $s3
	ori	$a0, $zero, 10
	beq	$s3, $a0, .LBB9_14
.LBB9_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #     Child Loop BB9_10 Depth 2
	ld.w	$a0, $fp, 1304
	ld.w	$a1, $fp, 1604
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 1304
	blt	$a1, $s6, .LBB9_8
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$s3, $zero
	move	$s2, $zero
	ori	$s7, $zero, 1200
	.p2align	4, , 16
.LBB9_7:                                # %.lr.ph
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a3, $zero, 9
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 10
	ori	$a4, $zero, 9
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 9
	ori	$a3, $zero, 10
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(restriction)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	addi.w	$s3, $s3, 1
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(zero_grid)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $fp, $s7
	ld.w	$a2, $fp, 1604
	sub.d	$a0, $a0, $s4
	add.d	$a0, $a0, $a1
	stx.d	$a0, $fp, $s7
	addi.w	$a0, $a2, -1
	addi.d	$s7, $s7, 8
	blt	$s2, $a0, .LBB9_7
.LBB9_8:                                # %._crit_edge
                                        #   in Loop: Header=BB9_5 Depth=1
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1604
	move	$s3, $a0
	addi.w	$s4, $a1, -1
	ori	$a3, $zero, 9
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fs2
	pcaddu18i	$ra, %call36(IterativeSolver)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	slli.d	$a2, $s4, 3
	ldx.d	$a3, $s5, $a2
	ld.w	$a1, $fp, 1604
	sub.d	$a0, $a0, $s3
	add.d	$a0, $a0, $a3
	stx.d	$a0, $s5, $a2
	blt	$a1, $s6, .LBB9_11
# %bb.9:                                # %.lr.ph93.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	addi.w	$s3, $a1, -2
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$s2, $a0, 3
	.p2align	4, , 16
.LBB9_10:                               # %.lr.ph93
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	vldi	$vr0, -912
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(interpolation_constant)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 9
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $s2
	ld.d	$a2, $a1, 1200
	sub.d	$a0, $a0, $s4
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 1200
	addi.d	$s2, $s2, -8
	addi.w	$s3, $s3, -1
	bne	$s2, $s8, .LBB9_10
.LBB9_11:                               # %._crit_edge94
                                        #   in Loop: Header=BB9_5 Depth=1
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 10
	ori	$a4, $zero, 4
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1200
	ld.w	$a2, $fp, 1596
	sub.d	$a0, $a0, $s3
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 1200
	addi.w	$s3, $s1, 1
	bnez	$a2, .LBB9_4
# %bb.12:                               #   in Loop: Header=BB9_5 Depth=1
	bnez	$s1, .LBB9_3
# %bb.13:                               #   in Loop: Header=BB9_5 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	b	.LBB9_3
.LBB9_14:
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1288
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 1288
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1296
	ld.w	$a2, $fp, 1596
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 1296
	beqz	$a2, .LBB9_16
# %bb.15:
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB9_16:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end9:
	.size	MGSolve, .Lfunc_end9-MGSolve
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"creating domain...       "
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"#ghosts(%d)>bottom grid size(%d)\n"
	.size	.L.str.1, 34

	.type	.L__const.create_domain.FacesEdgesCorners,@object # @__const.create_domain.FacesEdgesCorners
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.create_domain.FacesEdgesCorners:
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	16                              # 0x10
	.word	22                              # 0x16
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	13                              # 0xd
	.size	.L__const.create_domain.FacesEdgesCorners, 108

	.type	.L__const.create_domain.edges,@object # @__const.create_domain.edges
	.p2align	2, 0x0
.L__const.create_domain.edges:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	.L__const.create_domain.edges, 108

	.type	.L__const.create_domain.corners,@object # @__const.create_domain.corners
	.p2align	2, 0x0
.L__const.create_domain.corners:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	.L__const.create_domain.corners, 108

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"  %d x %d x %d (per subdomain)\n"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"  %d x %d x %d (per process)\n"
	.size	.L.str.5, 30

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"  %d x %d x %d (overall)\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"  %d-deep ghost zones\n"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"  allocated %llu MB\n"
	.size	.L.str.8, 21

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"deallocating domain...   "
	.size	.L.str.9, 26

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"MGBuild...                      "
	.size	.L.str.10, 33

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"MGSolve...                      "
	.size	.L.str.11, 33

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"v-cycle=%2d, norm=%22.20f (%12.6e)\n"
	.size	.L.str.13, 36

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"subdomain_dim's must be equal"
	.size	.Lstr.1, 30

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"done"
	.size	.Lstr.4, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
