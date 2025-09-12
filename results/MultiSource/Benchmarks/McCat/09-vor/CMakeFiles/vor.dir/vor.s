	.file	"vor.c"
	.text
	.globl	clean_up                        # -- Begin function clean_up
	.p2align	5
	.type	clean_up,@function
clean_up:                               # @clean_up
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(K)
	ld.d	$a0, $a0, %pc_lo12(K)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(E)
	ld.d	$a0, $a0, %pc_lo12(E)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Kcount)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(Kcount)
	pcalau12i	$a0, %pc_hi20(Ecount)
	st.w	$a1, $a0, %pc_lo12(Ecount)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	clean_up, .Lfunc_end0-clean_up
                                        # -- End function
	.globl	getpoint                        # -- Begin function getpoint
	.p2align	5
	.type	getpoint,@function
getpoint:                               # @getpoint
# %bb.0:
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 32
	pcalau12i	$a0, %pc_hi20(Splaytree)
	addi.d	$a0, $a0, %pc_lo12(Splaytree)
	move	$a1, $a2
	pcaddu18i	$t8, %call36(insert)
	jr	$t8
.Lfunc_end1:
	.size	getpoint, .Lfunc_end1-getpoint
                                        # -- End function
	.globl	get_file                        # -- Begin function get_file
	.p2align	5
	.type	get_file,@function
get_file:                               # @get_file
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Splaytree)
	st.d	$a0, $a1, %pc_lo12(Splaytree)
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s1, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	blez	$a0, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$fp, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(Splaytree)
	addi.d	$s0, $a0, %pc_lo12(Splaytree)
	move	$s2, $zero
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	ld.wu	$a1, $sp, 20
	slli.d	$a0, $a0, 32
	or	$a1, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(insert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	addi.w	$s2, $s2, 1
	blt	$s2, $a0, .LBB2_2
.LBB2_3:                                # %._crit_edge
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	get_file, .Lfunc_end2-get_file
                                        # -- End function
	.globl	add_point                       # -- Begin function add_point
	.p2align	5
	.type	add_point,@function
add_point:                              # @add_point
# %bb.0:
	pcalau12i	$a1, %pc_hi20(K)
	pcalau12i	$a2, %pc_hi20(Kcount)
	ld.w	$a3, $a2, %pc_lo12(Kcount)
	ld.d	$a4, $a1, %pc_lo12(K)
	ori	$a5, $zero, 20
	mul.d	$a3, $a3, $a5
	stx.d	$a0, $a4, $a3
	ld.d	$a0, $a1, %pc_lo12(K)
	add.d	$a1, $a0, $a3
	st.w	$zero, $a1, 8
	ld.w	$a1, $a2, %pc_lo12(Kcount)
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 12
	ld.w	$a1, $a2, %pc_lo12(Kcount)
	mul.d	$a1, $a1, $a5
	add.d	$a0, $a0, $a1
	st.w	$zero, $a0, 16
	ld.w	$a0, $a2, %pc_lo12(Kcount)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(Kcount)
	ret
.Lfunc_end3:
	.size	add_point, .Lfunc_end3-add_point
                                        # -- End function
	.globl	compute_v                       # -- Begin function compute_v
	.p2align	5
	.type	compute_v,@function
compute_v:                              # @compute_v
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	ld.wu	$fp, $a0, 4
	ld.w	$s2, $a0, 8
	addi.w	$s3, $fp, 0
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $a0, 4
	ld.w	$s4, $a0, 8
	addi.w	$s5, $a1, 0
	slli.d	$a0, $s2, 32
	or	$s0, $a0, $fp
	slli.d	$a0, $s4, 32
	or	$s1, $a0, $a1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(vector)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(midpoint)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calculate_c)
	jirl	$ra, $ra, 0
	bge	$s3, $s5, .LBB4_4
# %bb.1:
	bge	$s2, $s4, .LBB4_4
# %bb.2:
	ori	$s0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	lu32i.d	$s0, 231424
	lu52i.d	$a0, $s0, 1036
	movgr2fr.d	$fs1, $a0
	move	$a0, $fp
	fmov.d	$fs0, $fa0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(intersect)
	jirl	$ra, $ra, 0
	fabs.d	$fa2, $fa0
	fcmp.cule.d	$fcc0, $fa2, $fs1
	bcnez	$fcc0, .LBB4_21
# %bb.3:
	lu52i.d	$a0, $s0, -1012
	movgr2fr.d	$fa1, $a0
	ori	$a1, $zero, 1
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	b	.LBB4_20
.LBB4_4:
	bge	$s3, $s5, .LBB4_8
# %bb.5:
	bne	$s2, $s4, .LBB4_8
# %bb.6:
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	lu32i.d	$a0, 231424
	lu52i.d	$a0, $a0, 1036
.LBB4_7:
	movgr2fr.d	$fa1, $a0
	b	.LBB4_19
.LBB4_8:
	bge	$s3, $s5, .LBB4_12
# %bb.9:
	bge	$s4, $s2, .LBB4_12
# %bb.10:
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	lu32i.d	$a0, 231424
	lu52i.d	$a0, $a0, 1036
	movgr2fr.d	$fs0, $a0
	move	$a0, $fp
	fmov.d	$fs1, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(intersect)
	jirl	$ra, $ra, 0
	fabs.d	$fa2, $fa0
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB4_21
.LBB4_11:
	ori	$a1, $zero, 1
	move	$a0, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	b	.LBB4_20
.LBB4_12:
	bne	$s3, $s5, .LBB4_15
# %bb.13:
	bge	$s2, $s4, .LBB4_15
# %bb.14:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 231424
	lu52i.d	$a0, $a0, -1012
	b	.LBB4_18
.LBB4_15:
	bne	$s3, $s5, .LBB4_22
# %bb.16:
	bge	$s4, $s2, .LBB4_22
# %bb.17:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 231424
	lu52i.d	$a0, $a0, 1036
.LBB4_18:
	movgr2fr.d	$fa1, $a0
	ori	$a1, $zero, 1
.LBB4_19:
	move	$a0, $fp
.LBB4_20:
	pcaddu18i	$ra, %call36(intersect)
	jirl	$ra, $ra, 0
.LBB4_21:
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ftintrz.w.d	$fa0, $fa1
	movfr2gr.s	$a1, $fa0
	bstrins.d	$a0, $a1, 63, 32
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB4_22:
	bge	$s5, $s3, .LBB4_25
# %bb.23:
	bge	$s2, $s4, .LBB4_25
# %bb.24:
	ori	$s0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	lu32i.d	$s0, 231424
	lu52i.d	$a0, $s0, -1012
	movgr2fr.d	$fs0, $a0
	move	$a0, $fp
	fmov.d	$fs1, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(intersect)
	jirl	$ra, $ra, 0
	fabs.d	$fa2, $fa0
	lu52i.d	$a0, $s0, 1036
	movgr2fr.d	$fa3, $a0
	fcmp.cule.d	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB4_11
	b	.LBB4_21
.LBB4_25:
	bge	$s5, $s3, .LBB4_28
# %bb.26:
	bne	$s2, $s4, .LBB4_28
# %bb.27:
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	lu32i.d	$a0, 231424
	lu52i.d	$a0, $a0, -1012
	b	.LBB4_7
.LBB4_28:
	bge	$s5, $s3, .LBB4_32
# %bb.29:
	bge	$s4, $s2, .LBB4_32
# %bb.30:
	ori	$s0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	lu32i.d	$s0, 231424
	lu52i.d	$a0, $s0, -1012
	movgr2fr.d	$fa1, $a0
	move	$a0, $fp
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(intersect)
	jirl	$ra, $ra, 0
	fabs.d	$fa3, $fa0
	lu52i.d	$a0, $s0, 1036
	movgr2fr.d	$fa2, $a0
	fcmp.cule.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB4_21
# %bb.31:
	ori	$a1, $zero, 1
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fa2
	b	.LBB4_20
.LBB4_32:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	compute_v, .Lfunc_end4-compute_v
                                        # -- End function
	.globl	add_infinit_points_to_K         # -- Begin function add_infinit_points_to_K
	.p2align	5
	.type	add_infinit_points_to_K,@function
add_infinit_points_to_K:                # @add_infinit_points_to_K
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(CHno)
	ld.w	$s0, $a1, %pc_lo12(CHno)
	move	$fp, $a0
	addi.d	$a0, $zero, -1
	alsl.w	$a0, $s0, $a0, 1
	ori	$a1, $zero, 20
	ori	$s2, $zero, 20
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(K)
	st.d	$a0, $s3, %pc_lo12(K)
	addi.d	$a0, $zero, -2
	alsl.w	$a0, $s0, $a0, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(E)
	st.d	$a0, $a1, %pc_lo12(E)
	pcaddu18i	$ra, %call36(CHinit)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(CHSplaytree)
	addi.d	$s1, $a1, %pc_lo12(CHSplaytree)
	ld.d	$s0, $fp, 16
	st.d	$a0, $s1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(compute_v)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(Kcount)
	ld.w	$a1, $s4, %pc_lo12(Kcount)
	ld.d	$a2, $s3, %pc_lo12(K)
	mul.d	$a1, $a1, $s2
	stx.d	$a0, $a2, $a1
	ld.d	$a0, $s3, %pc_lo12(K)
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 8
	ld.w	$a1, $s4, %pc_lo12(Kcount)
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 12
	ld.w	$a1, $s4, %pc_lo12(Kcount)
	mul.d	$a1, $a1, $s2
	add.d	$a0, $a0, $a1
	st.w	$zero, $a0, 16
	ld.w	$a0, $s4, %pc_lo12(Kcount)
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, %pc_lo12(Kcount)
	st.w	$a0, $fp, 12
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(CHinsert)
	jirl	$ra, $ra, 0
	beq	$s0, $fp, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(CHSplaytree)
	addi.d	$s1, $a0, %pc_lo12(CHSplaytree)
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(compute_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(Kcount)
	ld.d	$a2, $s3, %pc_lo12(K)
	mul.d	$a1, $a1, $s2
	stx.d	$a0, $a2, $a1
	ld.d	$a0, $s3, %pc_lo12(K)
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 8
	ld.w	$a1, $s4, %pc_lo12(Kcount)
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 12
	ld.w	$a1, $s4, %pc_lo12(Kcount)
	mul.d	$a1, $a1, $s2
	add.d	$a0, $a0, $a1
	st.w	$zero, $a0, 16
	ld.w	$a0, $s4, %pc_lo12(Kcount)
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, %pc_lo12(Kcount)
	st.w	$a0, $s0, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(CHinsert)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 16
	bne	$s0, $fp, .LBB5_2
.LBB5_3:                                # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	add_infinit_points_to_K, .Lfunc_end5-add_infinit_points_to_K
                                        # -- End function
	.globl	add_edge                        # -- Begin function add_edge
	.p2align	5
	.type	add_edge,@function
add_edge:                               # @add_edge
# %bb.0:
	pcalau12i	$a3, %pc_hi20(E)
	pcalau12i	$a2, %pc_hi20(Ecount)
	ld.w	$a4, $a2, %pc_lo12(Ecount)
	ld.d	$a3, $a3, %pc_lo12(E)
	slli.d	$a4, $a4, 5
	stx.w	$a0, $a3, $a4
	pcalau12i	$a4, %pc_hi20(K)
	ld.d	$a4, $a4, %pc_lo12(K)
	ld.w	$a7, $a2, %pc_lo12(Ecount)
	slli.d	$a5, $a0, 4
	alsl.d	$a5, $a0, $a5, 2
	add.d	$a6, $a4, $a5
	ld.w	$a5, $a6, 8
	slli.d	$a7, $a7, 5
	add.d	$a7, $a3, $a7
	st.w	$a1, $a7, 4
	beqz	$a5, .LBB6_3
# %bb.1:
	ld.w	$t0, $a6, 12
	ld.w	$a7, $a2, %pc_lo12(Ecount)
	beqz	$t0, .LBB6_4
# %bb.2:
	st.w	$a7, $a6, 16
	b	.LBB6_7
.LBB6_3:
	ld.w	$a0, $a2, %pc_lo12(Ecount)
	st.w	$a0, $a6, 8
	slli.d	$a5, $a0, 5
	add.d	$a5, $a3, $a5
	st.w	$a0, $a5, 8
	ld.w	$a0, $a2, %pc_lo12(Ecount)
	slli.d	$a5, $a0, 5
	add.d	$a5, $a3, $a5
	st.w	$a0, $a5, 16
	b	.LBB6_7
.LBB6_4:
	st.w	$a7, $a6, 12
	slli.d	$a6, $a7, 5
	add.d	$a6, $a3, $a6
	st.w	$a5, $a6, 8
	ld.w	$a6, $a2, %pc_lo12(Ecount)
	slli.d	$a6, $a6, 5
	add.d	$a6, $a3, $a6
	st.w	$a5, $a6, 16
	slli.d	$a6, $a5, 5
	ldx.w	$a7, $a3, $a6
	ld.w	$a5, $a2, %pc_lo12(Ecount)
	add.d	$a6, $a3, $a6
	bne	$a0, $a7, .LBB6_6
# %bb.5:
	st.w	$a5, $a6, 8
	st.w	$a5, $a6, 16
	b	.LBB6_7
.LBB6_6:
	st.w	$a5, $a6, 12
	st.w	$a5, $a6, 20
.LBB6_7:
	slli.d	$a0, $a1, 4
	alsl.d	$a0, $a1, $a0, 2
	add.d	$a4, $a4, $a0
	ld.w	$a0, $a4, 8
	beqz	$a0, .LBB6_10
# %bb.8:
	ld.w	$a6, $a4, 12
	ld.w	$a5, $a2, %pc_lo12(Ecount)
	beqz	$a6, .LBB6_11
# %bb.9:
	st.w	$a5, $a4, 16
	ld.w	$a0, $a2, %pc_lo12(Ecount)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(Ecount)
	ret
.LBB6_10:
	ld.w	$a0, $a2, %pc_lo12(Ecount)
	st.w	$a0, $a4, 8
	slli.d	$a1, $a0, 5
	add.d	$a1, $a3, $a1
	st.w	$a0, $a1, 8
	ld.w	$a0, $a2, %pc_lo12(Ecount)
	slli.d	$a1, $a0, 5
	add.d	$a1, $a3, $a1
	st.w	$a0, $a1, 16
	ld.w	$a0, $a2, %pc_lo12(Ecount)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(Ecount)
	ret
.LBB6_11:
	st.w	$a5, $a4, 12
	slli.d	$a4, $a5, 5
	add.d	$a4, $a3, $a4
	st.w	$a0, $a4, 8
	ld.w	$a4, $a2, %pc_lo12(Ecount)
	slli.d	$a4, $a4, 5
	add.d	$a4, $a3, $a4
	st.w	$a0, $a4, 16
	slli.d	$a4, $a0, 5
	ldx.w	$a5, $a3, $a4
	ld.w	$a0, $a2, %pc_lo12(Ecount)
	add.d	$a3, $a3, $a4
	bne	$a1, $a5, .LBB6_13
# %bb.12:
	st.w	$a0, $a3, 8
	st.w	$a0, $a3, 16
	ld.w	$a0, $a2, %pc_lo12(Ecount)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(Ecount)
	ret
.LBB6_13:
	st.w	$a0, $a3, 12
	st.w	$a0, $a3, 20
	ld.w	$a0, $a2, %pc_lo12(Ecount)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(Ecount)
	ret
.Lfunc_end6:
	.size	add_edge, .Lfunc_end6-add_edge
                                        # -- End function
	.globl	maximize_radius_and_angle       # -- Begin function maximize_radius_and_angle
	.p2align	5
	.type	maximize_radius_and_angle,@function
maximize_radius_and_angle:              # @maximize_radius_and_angle
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(CHSplaytree)
	addi.d	$fp, $a0, %pc_lo12(CHSplaytree)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CHdelete_max)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 4
	ld.d	$a1, $s2, 4
	ld.d	$a2, $s0, 4
	pcaddu18i	$ra, %call36(centre)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 4
	pcaddu18i	$ra, %call36(radius2)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(angle)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	fst.d	$fs0, $sp, 8
	fst.d	$fa0, $sp, 16
	st.w	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CHdelete)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 4
	ld.d	$a1, $s1, 4
	ld.d	$a2, $a0, 4
	move	$a0, $a3
	pcaddu18i	$ra, %call36(centre)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(radius2)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(angle)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	fst.d	$fs0, $sp, 8
	fst.d	$fa0, $sp, 16
	st.w	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CHdelete)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end7:
	.size	maximize_radius_and_angle, .Lfunc_end7-maximize_radius_and_angle
                                        # -- End function
	.globl	draw_sec                        # -- Begin function draw_sec
	.p2align	5
	.type	draw_sec,@function
draw_sec:                               # @draw_sec
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 4
	ld.d	$a1, $fp, 4
	pcaddu18i	$ra, %call36(length2)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 4
	ld.d	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(length2)
	jirl	$ra, $ra, 0
	bge	$a0, $s0, .LBB8_3
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 4
	ld.d	$a1, $fp, 4
	pcaddu18i	$ra, %call36(length2)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 4
	ld.d	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(length2)
	jirl	$ra, $ra, 0
	bge	$a0, $s0, .LBB8_3
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	b	.LBB8_6
.LBB8_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 4
	ld.d	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(length2)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 4
	ld.d	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(length2)
	jirl	$ra, $ra, 0
	move	$s0, $fp
	bge	$a0, $s1, .LBB8_7
# %bb.4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 4
	ld.d	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(length2)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 4
	ld.d	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(length2)
	jirl	$ra, $ra, 0
	move	$s0, $fp
	bge	$a0, $s1, .LBB8_7
# %bb.5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
.LBB8_6:
	move	$s0, $a0
.LBB8_7:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(angle)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa1, $zero
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_10
# %bb.8:
	ld.d	$a0, $s1, 4
	ld.d	$a1, $s2, 4
	pcaddu18i	$ra, %call36(midpoint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 4
	ld.d	$a1, $s2, 4
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(midpoint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 4
	ld.d	$a1, $s2, 4
	fmov.d	$fs1, $fa1
	pcaddu18i	$ra, %call36(length2)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB8_12
.LBB8_9:                                # %.split
	vldi	$vr1, -928
	fmul.d	$fs2, $fa0, $fa1
	b	.LBB8_11
.LBB8_10:
	ld.d	$a0, $s1, 4
	ld.d	$a1, $s0, 4
	ld.d	$a2, $s2, 4
	pcaddu18i	$ra, %call36(centre)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 4
	fmov.d	$fs0, $fa0
	fmov.d	$fs1, $fa1
	pcaddu18i	$ra, %call36(radius2)
	jirl	$ra, $ra, 0
	fsqrt.d	$fs2, $fa0
	fcmp.cor.d	$fcc0, $fs2, $fs2
	bceqz	$fcc0, .LBB8_13
.LBB8_11:
	ftintrz.w.d	$fa0, $fs0
	movfr2gr.s	$a1, $fa0
	ftintrz.w.d	$fa0, $fs1
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a1, $fs2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB8_12:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB8_9
.LBB8_13:                               # %call.sqrt43
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	b	.LBB8_11
.Lfunc_end8:
	.size	draw_sec, .Lfunc_end8-draw_sec
                                        # -- End function
	.globl	alg2                            # -- Begin function alg2
	.p2align	5
	.type	alg2,@function
alg2:                                   # @alg2
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(S)
	ld.d	$a0, $s2, %pc_lo12(S)
	pcaddu18i	$ra, %call36(add_infinit_points_to_K)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(CHno)
	ld.w	$a0, $s3, %pc_lo12(CHno)
	ori	$s4, $zero, 3
	blt	$a0, $s4, .LBB9_5
# %bb.1:                                # %.preheader.preheader
	pcalau12i	$s5, %pc_hi20(K)
	pcalau12i	$s6, %pc_hi20(Kcount)
	ori	$s7, $zero, 20
	pcalau12i	$a0, %pc_hi20(CHSplaytree)
	addi.d	$fp, $a0, %pc_lo12(CHSplaytree)
	ori	$s8, $zero, 2
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 4
	ld.d	$a1, $s1, 4
	ld.d	$a2, $a0, 4
	move	$a0, $a3
	pcaddu18i	$ra, %call36(centre)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ftintrz.w.d	$fa0, $fa1
	ld.w	$a1, $s6, %pc_lo12(Kcount)
	ld.d	$a2, $s5, %pc_lo12(K)
	movfr2gr.s	$a3, $fa0
	bstrins.d	$a0, $a3, 63, 32
	mul.d	$a1, $a1, $s7
	stx.d	$a0, $a2, $a1
	ld.d	$a0, $s5, %pc_lo12(K)
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 8
	ld.w	$a1, $s6, %pc_lo12(Kcount)
	mul.d	$a1, $a1, $s7
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 12
	ld.w	$a1, $s6, %pc_lo12(Kcount)
	mul.d	$a1, $a1, $s7
	add.d	$a0, $a0, $a1
	st.w	$zero, $a0, 16
	ld.w	$a0, $s6, %pc_lo12(Kcount)
	ld.w	$a1, $s1, 12
	addi.d	$a2, $a0, 1
	st.w	$a2, $s6, %pc_lo12(Kcount)
	pcaddu18i	$ra, %call36(add_edge)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(Kcount)
	ld.w	$a1, $s0, 12
	addi.w	$a0, $a0, -1
	pcaddu18i	$ra, %call36(add_edge)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(Kcount)
	addi.d	$a0, $a0, -1
	st.w	$a0, $s0, 12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(CHno)
	st.d	$s0, $a0, 24
	st.d	$s0, $s2, %pc_lo12(S)
	addi.d	$a0, $a1, -1
	st.w	$a0, $s3, %pc_lo12(CHno)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CHinsert)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CHinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(CHno)
	bge	$s8, $a0, .LBB9_6
.LBB9_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(maximize_radius_and_angle)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(CHno)
	move	$s1, $a0
	bne	$a1, $s4, .LBB9_2
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(draw_sec)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.LBB9_5:
	ld.d	$s0, $s2, %pc_lo12(S)
	ori	$a0, $zero, 2
	st.w	$a0, $s3, %pc_lo12(CHno)
.LBB9_6:                                # %.loopexit
	ld.w	$fp, $s0, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(add_edge)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(S)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(CHSplaytree)
	ld.d	$a0, $a0, %pc_lo12(CHSplaytree)
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(CHfree_tree)
	jr	$t8
.Lfunc_end9:
	.size	alg2, .Lfunc_end9-alg2
                                        # -- End function
	.globl	construct_vor                   # -- Begin function construct_vor
	.p2align	5
	.type	construct_vor,@function
construct_vor:                          # @construct_vor
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(construct_ch)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(S)
	st.d	$a0, $a1, %pc_lo12(S)
	pcaddu18i	$ra, %call36(number_points)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(alg2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(K)
	ld.d	$a0, $a0, %pc_lo12(K)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(E)
	ld.d	$a0, $a0, %pc_lo12(E)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Kcount)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(Kcount)
	pcalau12i	$a0, %pc_hi20(Ecount)
	st.w	$a1, $a0, %pc_lo12(Ecount)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	construct_vor, .Lfunc_end10-construct_vor
                                        # -- End function
	.globl	main                            # -- Begin function main
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
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Splaytree)
	st.d	$a0, $a1, %pc_lo12(Splaytree)
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s1, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	blez	$a0, .LBB11_3
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$fp, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(Splaytree)
	addi.d	$s0, $a0, %pc_lo12(Splaytree)
	move	$s2, $zero
	.p2align	4, , 16
.LBB11_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	ld.wu	$a1, $sp, 20
	slli.d	$a0, $a0, 32
	or	$a1, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(insert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	addi.w	$s2, $s2, 1
	blt	$s2, $a0, .LBB11_2
.LBB11_3:                               # %get_file.exit
	pcaddu18i	$ra, %call36(construct_ch)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(S)
	st.d	$a0, $a1, %pc_lo12(S)
	pcaddu18i	$ra, %call36(number_points)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(alg2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(K)
	ld.d	$a0, $a0, %pc_lo12(K)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(E)
	ld.d	$a0, $a0, %pc_lo12(E)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Kcount)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(Kcount)
	pcalau12i	$a0, %pc_hi20(Ecount)
	st.w	$a1, $a0, %pc_lo12(Ecount)
	move	$a0, $zero
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
                                        # -- End function
	.type	CHno,@object                    # @CHno
	.bss
	.globl	CHno
	.p2align	2, 0x0
CHno:
	.word	0                               # 0x0
	.size	CHno, 4

	.type	Kcount,@object                  # @Kcount
	.data
	.globl	Kcount
	.p2align	2, 0x0
Kcount:
	.word	1                               # 0x1
	.size	Kcount, 4

	.type	Ecount,@object                  # @Ecount
	.globl	Ecount
	.p2align	2, 0x0
Ecount:
	.word	1                               # 0x1
	.size	Ecount, 4

	.type	K,@object                       # @K
	.bss
	.globl	K
	.p2align	3, 0x0
K:
	.dword	0
	.size	K, 8

	.type	E,@object                       # @E
	.globl	E
	.p2align	3, 0x0
E:
	.dword	0
	.size	E, 8

	.type	Splaytree,@object               # @Splaytree
	.globl	Splaytree
	.p2align	3, 0x0
Splaytree:
	.dword	0
	.size	Splaytree, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d %d\n"
	.size	.L.str.1, 7

	.type	CHSplaytree,@object             # @CHSplaytree
	.bss
	.globl	CHSplaytree
	.p2align	3, 0x0
CHSplaytree:
	.dword	0
	.size	CHSplaytree, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"The center is (%d,%d)\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"The radius is %9.2f\n"
	.size	.L.str.4, 21

	.type	S,@object                       # @S
	.bss
	.globl	S
	.p2align	3, 0x0
S:
	.dword	0
	.size	S, 8

	.type	default_radius,@object          # @default_radius
	.globl	default_radius
	.p2align	2, 0x0
default_radius:
	.word	0                               # 0x0
	.size	default_radius, 4

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Error: Can't intersect"
	.size	.Lstr, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Splaytree
	.addrsig_sym CHSplaytree
