	.file	"GridInit.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function generate_grids
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	generate_grids
	.p2align	5
	.type	generate_grids,@function
generate_grids:                         # @generate_grids
# %bb.0:
	blez	$a1, .LBB0_7
# %bb.1:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a2
	blez	$a2, .LBB0_6
# %bb.2:                                # %.preheader.us.preheader
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_3:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	move	$s3, $zero
	alsl.d	$s4, $s2, $s1, 3
	move	$s5, $fp
	.p2align	4, , 16
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fstx.d	$fa0, $a1, $s3
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	add.d	$a0, $a1, $s3
	fst.d	$fa0, $a0, 8
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	add.d	$a0, $a1, $s3
	fst.d	$fa0, $a0, 16
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	add.d	$a0, $a1, $s3
	fst.d	$fa0, $a0, 24
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	add.d	$a0, $a1, $s3
	fst.d	$fa0, $a0, 32
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	add.d	$a0, $a1, $s3
	fst.d	$fa0, $a0, 40
	addi.d	$s5, $s5, -1
	addi.d	$s3, $s3, 48
	bnez	$s5, .LBB0_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s2, $s2, 1
	bne	$s2, $s0, .LBB0_3
.LBB0_6:
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB0_7:                                # %._crit_edge26
	ret
.Lfunc_end0:
	.size	generate_grids, .Lfunc_end0-generate_grids
                                        # -- End function
	.globl	generate_grids_v                # -- Begin function generate_grids_v
	.p2align	5
	.type	generate_grids_v,@function
generate_grids_v:                       # @generate_grids_v
# %bb.0:
	blez	$a1, .LBB1_7
# %bb.1:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a2
	blez	$a2, .LBB1_6
# %bb.2:                                # %.preheader.us.preheader
	move	$s0, $a1
	move	$s1, $a0
	move	$s2, $zero
	.p2align	4, , 16
.LBB1_3:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	move	$s3, $zero
	alsl.d	$s4, $s2, $s1, 3
	move	$s5, $fp
	.p2align	4, , 16
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	fstx.d	$fa0, $a0, $s3
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	add.d	$a0, $a0, $s3
	fst.d	$fa0, $a0, 8
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	add.d	$a0, $a0, $s3
	fst.d	$fa0, $a0, 16
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	add.d	$a0, $a0, $s3
	fst.d	$fa0, $a0, 24
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	add.d	$a0, $a0, $s3
	fst.d	$fa0, $a0, 32
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	add.d	$a0, $a0, $s3
	fst.d	$fa0, $a0, 40
	addi.d	$s5, $s5, -1
	addi.d	$s3, $s3, 48
	bnez	$s5, .LBB1_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s2, $s2, 1
	bne	$s2, $s0, .LBB1_3
.LBB1_6:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB1_7:                                # %._crit_edge26
	ret
.Lfunc_end1:
	.size	generate_grids_v, .Lfunc_end1-generate_grids_v
                                        # -- End function
	.globl	sort_nuclide_grids              # -- Begin function sort_nuclide_grids
	.p2align	5
	.type	sort_nuclide_grids,@function
sort_nuclide_grids:                     # @sort_nuclide_grids
# %bb.0:
	blez	$a1, .LBB2_4
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(NGP_compare)
	ld.d	$s2, $a0, %got_pc_lo12(NGP_compare)
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ori	$a2, $zero, 48
	move	$a1, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB2_2
# %bb.3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB2_4:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	sort_nuclide_grids, .Lfunc_end2-sort_nuclide_grids
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function generate_energy_grid
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	generate_energy_grid
	.p2align	5
	.type	generate_energy_grid,@function
generate_energy_grid:                   # @generate_energy_grid
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s3, $a2
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	mul.d	$s1, $s2, $s0
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(gpmatrix)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s3, 0
	ori	$a2, $zero, 48
	mul.d	$a2, $s1, $a2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(NGP_compare)
	ld.d	$a3, $a1, %got_pc_lo12(NGP_compare)
	ori	$a2, $zero, 48
	move	$a1, $s1
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB3_8
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s2, 0
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB3_3
# %bb.2:
	move	$a1, $zero
	b	.LBB3_6
.LBB3_3:                                # %vector.ph
	bstrpick.d	$a1, $s1, 62, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 16
	move	$a3, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a4, 0
	fld.d	$fa1, $a4, 48
	fst.d	$fa0, $a2, -16
	fst.d	$fa1, $a2, 0
	addi.d	$a4, $a4, 96
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB3_4
# %bb.5:                                # %middle.block
	beq	$s1, $a1, .LBB3_8
.LBB3_6:                                # %scalar.ph.preheader
	sub.d	$a2, $s1, $a1
	alsl.d	$a3, $a1, $fp, 4
	slli.d	$a4, $a1, 5
	alsl.d	$a1, $a1, $a4, 4
	add.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB3_7:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 16
	addi.d	$a0, $a0, 48
	bnez	$a2, .LBB3_7
.LBB3_8:                                # %._crit_edge
	move	$a0, $s2
	pcaddu18i	$ra, %call36(gpmatrix_free)
	jirl	$ra, $ra, 0
	mul.d	$a0, $s0, $s1
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_18
# %bb.9:                                # %.preheader
	blez	$s1, .LBB3_17
# %bb.10:                               # %.lr.ph41.preheader
	ori	$a1, $zero, 4
	bgeu	$s1, $a1, .LBB3_12
# %bb.11:
	move	$a1, $zero
	b	.LBB3_15
.LBB3_12:                               # %vector.ph47
	bstrpick.d	$a1, $s1, 62, 2
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI3_0)
	slli.d	$a1, $a1, 2
	vreplgr2vr.d	$vr1, $s0
	addi.d	$a2, $fp, 40
	move	$a3, $a1
	.p2align	4, , 16
.LBB3_13:                               # %vector.body50
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr2, $vr0, 2
	vmul.d	$vr3, $vr0, $vr1
	vmul.d	$vr2, $vr2, $vr1
	vpickve2gr.d	$a4, $vr3, 0
	alsl.d	$a4, $a4, $a0, 2
	vpickve2gr.d	$a5, $vr3, 1
	alsl.d	$a5, $a5, $a0, 2
	vpickve2gr.d	$a6, $vr2, 0
	alsl.d	$a6, $a6, $a0, 2
	vpickve2gr.d	$a7, $vr2, 1
	alsl.d	$a7, $a7, $a0, 2
	st.d	$a4, $a2, -32
	st.d	$a5, $a2, -16
	st.d	$a6, $a2, 0
	st.d	$a7, $a2, 16
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB3_13
# %bb.14:                               # %middle.block53
	beq	$s1, $a1, .LBB3_17
.LBB3_15:                               # %.lr.ph41.preheader56
	sub.d	$a2, $s1, $a1
	mul.d	$a3, $a1, $s0
	alsl.d	$a0, $a3, $a0, 2
	slli.d	$a3, $s0, 2
	alsl.d	$a1, $a1, $fp, 4
	addi.d	$a1, $a1, 8
	.p2align	4, , 16
.LBB3_16:                               # %.lr.ph41
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	add.d	$a0, $a0, $a3
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB3_16
.LBB3_17:                               # %._crit_edge42
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_18:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	generate_energy_grid, .Lfunc_end3-generate_energy_grid
                                        # -- End function
	.globl	set_grid_ptrs                   # -- Begin function set_grid_ptrs
	.p2align	5
	.type	set_grid_ptrs,@function
set_grid_ptrs:                          # @set_grid_ptrs
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s2, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	mul.d	$s3, $s2, $fp
	blez	$s3, .LBB4_6
# %bb.1:                                # %.lr.ph21
	blez	$fp, .LBB4_6
# %bb.2:                                # %.lr.ph.us.preheader
	move	$s4, $zero
	addi.w	$s2, $s2, 0
	.p2align	4, , 16
.LBB4_3:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	slli.d	$a0, $s4, 4
	fldx.d	$fs0, $s1, $a0
	move	$s5, $zero
	alsl.d	$s6, $s4, $s1, 4
	move	$s7, $s0
	move	$s8, $fp
	.p2align	4, , 16
.LBB4_4:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	fmov.d	$fa0, $fs0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(binary_search)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 8
	stx.w	$a0, $a1, $s5
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 4
	addi.d	$s7, $s7, 8
	bnez	$s8, .LBB4_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s4, $s4, 1
	bne	$s4, $s3, .LBB4_3
.LBB4_6:                                # %._crit_edge22
	ori	$a0, $zero, 10
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end4:
	.size	set_grid_ptrs, .Lfunc_end4-set_grid_ptrs
                                        # -- End function
	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"ERROR - Out Of Memory!\n"
	.size	.L.str.3, 24

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Generating Unionized Energy Grid..."
	.size	.Lstr, 36

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Copying and Sorting all nuclide grids..."
	.size	.Lstr.1, 41

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Assigning energies to unionized grid..."
	.size	.Lstr.2, 40

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Assigning pointers to Unionized Energy Grid..."
	.size	.Lstr.3, 47

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym NGP_compare
