	.file	"newvor.c"
	.text
	.globl	connect_left                    # -- Begin function connect_left
	.p2align	5
	.type	connect_left,@function
connect_left:                           # @connect_left
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	xori	$a1, $a0, 64
	ld.d	$s0, $a1, 0
	addi.d	$a1, $a0, 96
	srli.d	$a0, $a0, 7
	bstrins.d	$a1, $a0, 63, 7
	ld.d	$s2, $a1, 8
	pcalau12i	$a1, %pc_hi20(avail_edge)
	ld.d	$a0, $a1, %pc_lo12(avail_edge)
	ld.d	$s1, $fp, 0
	beqz	$a0, .LBB0_2
# %bb.1:
	ld.d	$a2, $a0, 8
	st.d	$a2, $a1, %pc_lo12(avail_edge)
	b	.LBB0_3
.LBB0_2:
	ori	$a0, $zero, 128
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_4
.LBB0_3:                                # %makeedge.exit
	addi.d	$a1, $s2, 32
	srli.d	$a2, $s2, 7
	bstrins.d	$a1, $a2, 63, 7
	st.d	$a0, $a0, 8
	addi.d	$a2, $a0, 32
	addi.d	$a3, $a0, 96
	st.d	$a3, $a0, 40
	addi.d	$a3, $a0, 64
	st.d	$a3, $a0, 72
	st.d	$a2, $a0, 104
	ld.d	$a3, $a1, 8
	srli.d	$a4, $a0, 7
	bstrins.d	$a2, $a4, 63, 7
	addi.d	$a4, $a3, 32
	srli.d	$a3, $a3, 7
	bstrins.d	$a4, $a3, 63, 7
	ld.d	$a3, $a4, 8
	ld.d	$a5, $a2, 8
	st.d	$a3, $a2, 8
	st.d	$a5, $a4, 8
	ld.d	$a2, $a0, 8
	ld.d	$a3, $a1, 8
	st.d	$a2, $a1, 8
	st.d	$a3, $a0, 8
	xori	$a1, $a0, 64
	ld.d	$a2, $a1, 8
	ld.d	$a3, $fp, 8
	addi.d	$a4, $a2, 32
	addi.d	$a5, $a3, 32
	srli.d	$a3, $a3, 7
	bstrins.d	$a5, $a3, 63, 7
	ld.d	$a3, $a5, 8
	srli.d	$a2, $a2, 7
	bstrins.d	$a4, $a2, 63, 7
	ld.d	$a2, $a4, 8
	st.d	$a3, $a4, 8
	st.d	$zero, $a0, 16
	st.d	$zero, $a0, 48
	st.d	$zero, $a0, 80
	st.d	$zero, $a0, 112
	st.d	$a2, $a5, 8
	ld.d	$a2, $a1, 8
	ld.d	$a3, $fp, 8
	st.d	$s0, $a0, 0
	st.d	$s1, $a0, 64
	st.d	$a2, $fp, 8
	st.d	$a3, $a1, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_4:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	connect_left, .Lfunc_end0-connect_left
                                        # -- End function
	.globl	connect_right                   # -- Begin function connect_right
	.p2align	5
	.type	connect_right,@function
connect_right:                          # @connect_right
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	xori	$s1, $a0, 64
	ld.d	$fp, $s1, 0
	ld.d	$s0, $a1, 0
	addi.d	$a2, $a1, 32
	srli.d	$a0, $a1, 7
	bstrins.d	$a2, $a0, 63, 7
	pcalau12i	$a1, %pc_hi20(avail_edge)
	ld.d	$a0, $a1, %pc_lo12(avail_edge)
	ld.d	$s2, $a2, 8
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.d	$a2, $a0, 8
	st.d	$a2, $a1, %pc_lo12(avail_edge)
	b	.LBB1_3
.LBB1_2:
	ori	$a0, $zero, 128
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_4
.LBB1_3:                                # %makeedge.exit
	st.d	$a0, $a0, 8
	addi.d	$a1, $a0, 32
	addi.d	$a2, $a0, 96
	st.d	$a2, $a0, 40
	addi.d	$a2, $a0, 64
	st.d	$a2, $a0, 72
	st.d	$a1, $a0, 104
	ld.d	$a2, $s1, 8
	srli.d	$a3, $a0, 7
	addi.d	$a4, $a2, 32
	srli.d	$a2, $a2, 7
	bstrins.d	$a4, $a2, 63, 7
	ld.d	$a2, $a4, 8
	bstrins.d	$a1, $a3, 63, 7
	ld.d	$a3, $a1, 8
	st.d	$a2, $a1, 8
	addi.d	$a1, $s2, 32
	st.d	$a3, $a4, 8
	ld.d	$a2, $a0, 8
	ld.d	$a3, $s1, 8
	srli.d	$a4, $s2, 7
	bstrins.d	$a1, $a4, 63, 7
	st.d	$a2, $s1, 8
	st.d	$a3, $a0, 8
	xori	$a2, $a0, 64
	ld.d	$a3, $a2, 8
	ld.d	$a4, $a1, 8
	addi.d	$a5, $a3, 32
	addi.d	$a6, $a4, 32
	srli.d	$a4, $a4, 7
	bstrins.d	$a6, $a4, 63, 7
	ld.d	$a4, $a6, 8
	srli.d	$a3, $a3, 7
	bstrins.d	$a5, $a3, 63, 7
	ld.d	$a3, $a5, 8
	st.d	$a4, $a5, 8
	st.d	$zero, $a0, 16
	st.d	$zero, $a0, 48
	st.d	$zero, $a0, 80
	st.d	$zero, $a0, 112
	st.d	$a3, $a6, 8
	ld.d	$a3, $a2, 8
	ld.d	$a4, $a1, 8
	st.d	$fp, $a0, 0
	st.d	$s0, $a0, 64
	st.d	$a3, $a1, 8
	st.d	$a4, $a2, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_4:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	connect_right, .Lfunc_end1-connect_right
                                        # -- End function
	.globl	deleteedge                      # -- Begin function deleteedge
	.p2align	5
	.type	deleteedge,@function
deleteedge:                             # @deleteedge
# %bb.0:
	addi.d	$a1, $a0, 32
	srli.d	$a2, $a0, 7
	bstrins.d	$a1, $a2, 63, 7
	ld.d	$a1, $a1, 8
	addi.d	$a3, $a1, 32
	ld.d	$a4, $a0, 8
	srli.d	$a1, $a1, 7
	bstrins.d	$a3, $a1, 63, 7
	ld.d	$a1, $a3, 8
	addi.d	$a5, $a4, 32
	srli.d	$a4, $a4, 7
	bstrins.d	$a5, $a4, 63, 7
	addi.d	$a4, $a1, 32
	srli.d	$a1, $a1, 7
	bstrins.d	$a4, $a1, 63, 7
	ld.d	$a1, $a4, 8
	ld.d	$a6, $a5, 8
	st.d	$a1, $a5, 8
	st.d	$a6, $a4, 8
	ld.d	$a1, $a0, 8
	ld.d	$a4, $a3, 8
	st.d	$a1, $a3, 8
	st.d	$a4, $a0, 8
	xori	$a1, $a0, 64
	addi.d	$a3, $a1, 32
	bstrins.d	$a3, $a2, 63, 7
	ld.d	$a2, $a3, 8
	addi.d	$a3, $a2, 32
	ld.d	$a4, $a1, 8
	srli.d	$a2, $a2, 7
	bstrins.d	$a3, $a2, 63, 7
	ld.d	$a2, $a3, 8
	addi.d	$a5, $a4, 32
	srli.d	$a4, $a4, 7
	bstrins.d	$a5, $a4, 63, 7
	addi.d	$a4, $a2, 32
	srli.d	$a2, $a2, 7
	bstrins.d	$a4, $a2, 63, 7
	ld.d	$a2, $a4, 8
	ld.d	$a6, $a5, 8
	st.d	$a2, $a5, 8
	st.d	$a6, $a4, 8
	ld.d	$a2, $a1, 8
	move	$a4, $a0
	bstrins.d	$a4, $zero, 6, 0
	ld.d	$a5, $a3, 8
	st.d	$a2, $a3, 8
	pcalau12i	$a2, %pc_hi20(avail_edge)
	ld.d	$a3, $a2, %pc_lo12(avail_edge)
	st.d	$a5, $a1, 8
	ori	$a1, $zero, 8
	bstrins.d	$a0, $a1, 6, 0
	st.d	$a3, $a0, 0
	st.d	$a4, $a2, %pc_lo12(avail_edge)
	ret
.Lfunc_end2:
	.size	deleteedge, .Lfunc_end2-deleteedge
                                        # -- End function
	.globl	free_edge                       # -- Begin function free_edge
	.p2align	5
	.type	free_edge,@function
free_edge:                              # @free_edge
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a2, %pc_hi20(avail_edge)
	ld.d	$a3, $a2, %pc_lo12(avail_edge)
	bstrins.d	$a1, $zero, 6, 0
	ori	$a4, $zero, 8
	bstrins.d	$a0, $a4, 6, 0
	st.d	$a3, $a0, 0
	st.d	$a1, $a2, %pc_lo12(avail_edge)
	ret
.Lfunc_end3:
	.size	free_edge, .Lfunc_end3-free_edge
                                        # -- End function
	.globl	build_delaunay_triangulation    # -- Begin function build_delaunay_triangulation
	.p2align	5
	.type	build_delaunay_triangulation,@function
build_delaunay_triangulation:           # @build_delaunay_triangulation
# %bb.0:
	pcaddu18i	$t8, %call36(build_delaunay)
	jr	$t8
.Lfunc_end4:
	.size	build_delaunay_triangulation, .Lfunc_end4-build_delaunay_triangulation
                                        # -- End function
	.globl	build_delaunay                  # -- Begin function build_delaunay
	.p2align	5
	.type	build_delaunay,@function
build_delaunay:                         # @build_delaunay
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB5_26
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB5_9
# %bb.2:                                # %.preheader76.preheader
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_3:                                # %.preheader76
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $a1
	ld.d	$a1, $a1, 24
	bnez	$a1, .LBB5_3
# %bb.4:                                # %get_low.exit
	move	$a1, $fp
	pcaddu18i	$ra, %call36(build_delaunay)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 24
	move	$s1, $a0
	move	$s2, $a1
	move	$a0, $a2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(build_delaunay)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(do_merge)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 0
	beq	$a2, $s3, .LBB5_7
	.p2align	4, , 16
.LBB5_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	xori	$a0, $a0, 64
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a0, 0
	bne	$a2, $s3, .LBB5_5
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_6:                                # %.lr.ph82
                                        #   in Loop: Header=BB5_7 Depth=1
	ld.d	$a1, $a1, 8
	xori	$a1, $a1, 64
.LBB5_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	bne	$a2, $fp, .LBB5_6
.LBB5_8:                                # %.loopexit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB5_9:
	ld.d	$s4, $s0, 24
	pcalau12i	$s2, %pc_hi20(avail_edge)
	ld.d	$a0, $s2, %pc_lo12(avail_edge)
	beqz	$s4, .LBB5_12
# %bb.10:
	beqz	$a0, .LBB5_14
# %bb.11:
	ld.d	$s1, $a0, 8
	st.d	$s1, $s2, %pc_lo12(avail_edge)
	b	.LBB5_16
.LBB5_12:
	beqz	$a0, .LBB5_24
# %bb.13:
	ld.d	$a1, $a0, 8
	st.d	$a1, $s2, %pc_lo12(avail_edge)
	b	.LBB5_25
.LBB5_14:
	ori	$a0, $zero, 128
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_27
# %bb.15:
	move	$s1, $zero
.LBB5_16:                               # %makeedge.exit72
	st.d	$zero, $a0, 16
	st.d	$zero, $a0, 48
	st.d	$zero, $a0, 80
	st.d	$zero, $a0, 112
	st.d	$a0, $a0, 8
	st.d	$s4, $a0, 0
	addi.d	$a1, $a0, 32
	addi.d	$a2, $a0, 96
	st.d	$a2, $a0, 40
	addi.d	$a2, $a0, 64
	st.d	$a2, $a0, 72
	st.d	$s0, $a0, 64
	st.d	$a1, $a0, 104
	beqz	$s1, .LBB5_18
# %bb.17:
	ld.d	$a1, $s1, 8
	st.d	$a1, $s2, %pc_lo12(avail_edge)
	b	.LBB5_19
.LBB5_18:
	move	$s3, $a0
	ori	$a0, $zero, 128
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s3
	beqz	$s1, .LBB5_27
.LBB5_19:                               # %makeedge.exit75
	st.d	$s1, $s1, 8
	addi.d	$a1, $s1, 32
	addi.d	$a2, $s1, 96
	st.d	$a2, $s1, 40
	addi.d	$a2, $s1, 64
	st.d	$a2, $s1, 72
	st.d	$a1, $s1, 104
	xori	$a2, $a0, 64
	ld.d	$a3, $a2, 8
	st.d	$zero, $s1, 16
	st.d	$zero, $s1, 48
	addi.d	$a4, $a3, 32
	srli.d	$a3, $a3, 7
	bstrins.d	$a4, $a3, 63, 7
	srli.d	$a3, $s1, 7
	bstrins.d	$a1, $a3, 63, 7
	ld.d	$a3, $a1, 8
	ld.d	$a5, $a4, 8
	st.d	$zero, $s1, 80
	st.d	$zero, $s1, 112
	st.d	$a3, $a4, 8
	st.d	$a5, $a1, 8
	ld.d	$a1, $a2, 8
	ld.d	$a3, $s1, 8
	st.d	$s0, $s1, 0
	st.d	$fp, $s1, 64
	st.d	$a1, $s1, 8
	st.d	$a3, $a2, 8
	move	$a1, $a0
	move	$a0, $s1
	move	$s3, $a1
	pcaddu18i	$ra, %call36(connect_left)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 0
	fld.d	$fa1, $fp, 8
	fld.d	$fa2, $s0, 0
	fld.d	$fa5, $s0, 8
	fld.d	$fa4, $fp, 0
	fld.d	$fa3, $s4, 8
	fsub.d	$fa6, $fa0, $fa2
	fsub.d	$fa7, $fa1, $fa5
	fsub.d	$ft0, $fa4, $fa2
	fsub.d	$ft1, $fa3, $fa5
	fneg.d	$ft1, $ft1
	fmul.d	$ft0, $ft0, $ft1
	fmadd.d	$fa7, $fa6, $fa7, $ft0
	movgr2fr.d	$fa6, $zero
	fcmp.cule.d	$fcc0, $fa7, $fa6
	bceqz	$fcc0, .LBB5_23
# %bb.20:
	fsub.d	$fa0, $fa0, $fa4
	fsub.d	$fa5, $fa5, $fa1
	fsub.d	$fa2, $fa2, $fa4
	fsub.d	$fa1, $fa3, $fa1
	fneg.d	$fa1, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	fcmp.clt.d	$fcc0, $fa6, $fa0
	xori	$a1, $s1, 64
	bcnez	$fcc0, .LBB5_22
# %bb.21:
	addi.d	$a2, $a0, 32
	srli.d	$a3, $a0, 7
	bstrins.d	$a2, $a3, 63, 7
	ld.d	$a2, $a2, 8
	addi.d	$a4, $a2, 32
	ld.d	$a5, $a0, 8
	srli.d	$a2, $a2, 7
	bstrins.d	$a4, $a2, 63, 7
	ld.d	$a2, $a4, 8
	addi.d	$a6, $a5, 32
	srli.d	$a5, $a5, 7
	bstrins.d	$a6, $a5, 63, 7
	addi.d	$a5, $a2, 32
	srli.d	$a2, $a2, 7
	bstrins.d	$a5, $a2, 63, 7
	ld.d	$a2, $a5, 8
	ld.d	$a7, $a6, 8
	st.d	$a2, $a6, 8
	st.d	$a7, $a5, 8
	ld.d	$a2, $a0, 8
	ld.d	$a5, $a4, 8
	st.d	$a2, $a4, 8
	st.d	$a5, $a0, 8
	xori	$a2, $a0, 64
	addi.d	$a4, $a2, 32
	bstrins.d	$a4, $a3, 63, 7
	ld.d	$a3, $a4, 8
	addi.d	$a4, $a3, 32
	ld.d	$a5, $a2, 8
	srli.d	$a3, $a3, 7
	bstrins.d	$a4, $a3, 63, 7
	ld.d	$a3, $a4, 8
	addi.d	$a6, $a5, 32
	srli.d	$a5, $a5, 7
	bstrins.d	$a6, $a5, 63, 7
	addi.d	$a5, $a3, 32
	srli.d	$a3, $a3, 7
	bstrins.d	$a5, $a3, 63, 7
	ld.d	$a3, $a5, 8
	ld.d	$a7, $a6, 8
	st.d	$a3, $a6, 8
	st.d	$a7, $a5, 8
	ld.d	$a3, $a2, 8
	move	$a5, $a0
	ld.d	$a6, $a4, 8
	bstrins.d	$a5, $zero, 6, 0
	st.d	$a3, $a4, 8
	ld.d	$a3, $s2, %pc_lo12(avail_edge)
	st.d	$a6, $a2, 8
	ori	$a2, $zero, 8
	bstrins.d	$a0, $a2, 6, 0
	st.d	$a3, $a0, 0
	st.d	$a5, $s2, %pc_lo12(avail_edge)
.LBB5_22:                               # %.loopexit
	move	$a0, $s3
	b	.LBB5_8
.LBB5_23:
	move	$a1, $a0
	xori	$a0, $a0, 64
	b	.LBB5_8
.LBB5_24:
	ori	$a0, $zero, 128
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_27
.LBB5_25:                               # %makeedge.exit
	st.d	$zero, $a0, 16
	st.d	$zero, $a0, 48
	st.d	$zero, $a0, 80
	st.d	$zero, $a0, 112
	st.d	$a0, $a0, 8
	st.d	$s0, $a0, 0
	addi.d	$a1, $a0, 32
	addi.d	$a2, $a0, 96
	st.d	$a2, $a0, 40
	addi.d	$a2, $a0, 64
	st.d	$a2, $a0, 72
	st.d	$fp, $a0, 64
	st.d	$a1, $a0, 104
	xori	$a1, $a0, 64
	b	.LBB5_8
.LBB5_26:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB5_27:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	build_delaunay, .Lfunc_end5-build_delaunay
                                        # -- End function
	.globl	get_low                         # -- Begin function get_low
	.p2align	5
	.type	get_low,@function
get_low:                                # @get_low
# %bb.0:
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	ld.d	$a0, $a0, 24
	bnez	$a0, .LBB6_1
# %bb.2:
	move	$a0, $a1
	ret
.Lfunc_end6:
	.size	get_low, .Lfunc_end6-get_low
                                        # -- End function
	.globl	do_merge                        # -- Begin function do_merge
	.p2align	5
	.type	do_merge,@function
do_merge:                               # @do_merge
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
	ld.d	$a4, $a1, 0
	fld.d	$fa0, $a4, 0
	move	$fp, $a3
	move	$s0, $a0
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_2 Depth 2
	ld.d	$a0, $a2, 0
	xori	$a3, $a1, 64
	ld.d	$a3, $a3, 0
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a0, 8
	fld.d	$fa4, $a3, 8
	fld.d	$fa5, $a3, 0
	fld.d	$fa3, $a4, 8
	fsub.d	$fa6, $fa0, $fa1
	fsub.d	$fa4, $fa4, $fa2
	fsub.d	$fa5, $fa5, $fa1
	fsub.d	$fa7, $fa3, $fa2
	fneg.d	$fa7, $fa7
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	fcmp.cule.d	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $a1, 96
	srli.d	$a1, $a1, 7
	bstrins.d	$a0, $a1, 63, 7
	ld.d	$a0, $a0, 8
	addi.d	$a1, $a0, 32
	srli.d	$a0, $a0, 7
	bstrins.d	$a1, $a0, 63, 7
	xori	$a0, $a1, 64
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $a4, 0
	fld.d	$fa4, $a0, 8
	fld.d	$fa5, $a0, 0
	fld.d	$fa3, $a4, 8
	fsub.d	$fa6, $fa0, $fa1
	fsub.d	$fa4, $fa4, $fa2
	fsub.d	$fa5, $fa5, $fa1
	fsub.d	$fa7, $fa3, $fa2
	fneg.d	$fa7, $fa7
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	fcmp.clt.d	$fcc0, $fs0, $fa4
	bcnez	$fcc0, .LBB7_2
.LBB7_3:                                # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	xori	$a0, $a2, 64
	ld.d	$a2, $a0, 0
	fld.d	$fa4, $a2, 0
	fld.d	$fa5, $a2, 8
	fsub.d	$fa4, $fa4, $fa0
	fsub.d	$fa2, $fa2, $fa3
	fsub.d	$fa1, $fa1, $fa0
	fsub.d	$fa3, $fa5, $fa3
	fneg.d	$fa3, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fs0
	bcnez	$fcc0, .LBB7_5
# %bb.4:                                #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a2, $a0, 8
	b	.LBB7_1
.LBB7_5:
	pcaddu18i	$ra, %call36(connect_left)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $a0, 32
	srli.d	$a1, $s1, 7
	bstrins.d	$a0, $a1, 63, 7
	ld.d	$a0, $a0, 8
	xori	$s4, $s1, 64
	ld.d	$s2, $s4, 8
	addi.d	$s3, $a0, 32
	ld.d	$s5, $s1, 0
	ld.d	$s7, $s4, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s8, $s0, 0
	srli.d	$a0, $a0, 7
	bstrins.d	$s3, $a0, 63, 7
	ori	$s6, $zero, 8
	move	$a5, $s5
	move	$a2, $s1
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_6:                                #   in Loop: Header=BB7_7 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(connect_left)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	xori	$a0, $a0, 64
	addi.d	$a0, $a0, 96
	srli.d	$a1, $a2, 7
	bstrins.d	$a0, $a1, 63, 7
	ld.d	$a0, $a0, 8
	ld.d	$a5, $a2, 0
	addi.d	$s3, $a0, 32
	srli.d	$a0, $a0, 7
	bstrins.d	$s3, $a0, 63, 7
.LBB7_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
                                        #     Child Loop BB7_19 Depth 2
	ld.d	$a4, $s2, 8
	xori	$a1, $a2, 64
	xori	$a0, $a4, 64
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a1, 0
	fld.d	$fa4, $a5, 0
	fld.d	$fa3, $a0, 8
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a3, 8
	fld.d	$fa6, $a0, 0
	fld.d	$fa5, $a5, 8
	fsub.d	$fa2, $fa4, $fa0
	fsub.d	$fa7, $fa3, $fa1
	fsub.d	$fa6, $fa6, $fa0
	fsub.d	$fa3, $fa5, $fa1
	fneg.d	$fa3, $fa3
	fmul.d	$fa6, $fa6, $fa3
	fmadd.d	$fa6, $fa2, $fa7, $fa6
	fcmp.cule.d	$fcc0, $fa6, $fs0
	pcalau12i	$a0, %pc_hi20(avail_edge)
	bceqz	$fcc0, .LBB7_15
.LBB7_8:                                # %.loopexit146
                                        #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a4, $s3, 32
	srli.d	$a5, $s3, 7
	bstrins.d	$a4, $a5, 63, 7
	ld.d	$a4, $a4, 8
	addi.d	$a5, $a4, 32
	srli.d	$a4, $a4, 7
	bstrins.d	$a5, $a4, 63, 7
	xori	$a4, $a5, 64
	ld.d	$a4, $a4, 0
	fld.d	$fa4, $a4, 8
	fld.d	$fa5, $a4, 0
	fsub.d	$fa4, $fa4, $fa1
	fsub.d	$fa5, $fa5, $fa0
	fmul.d	$fa5, $fa5, $fa3
	fmadd.d	$fa4, $fa2, $fa4, $fa5
	fcmp.cule.d	$fcc0, $fa4, $fs0
	bceqz	$fcc0, .LBB7_18
.LBB7_9:                                # %.loopexit
                                        #   in Loop: Header=BB7_7 Depth=1
	xori	$a0, $s2, 64
	ld.d	$a0, $a0, 0
	fld.d	$fa7, $a0, 0
	fld.d	$fa6, $a0, 8
	xori	$a3, $s3, 64
	ld.d	$a3, $a3, 0
	fsub.d	$ft0, $fa6, $fa1
	fsub.d	$ft1, $fa7, $fa0
	fld.d	$fa4, $a3, 8
	fld.d	$fa5, $a3, 0
	fmul.d	$ft1, $ft1, $fa3
	fmadd.d	$ft0, $fa2, $ft0, $ft1
	fsub.d	$fa1, $fa4, $fa1
	fsub.d	$fa0, $fa5, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fcmp.clt.d	$fcc1, $fs0, $ft0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc1, .LBB7_11
# %bb.10:                               # %.loopexit
                                        #   in Loop: Header=BB7_7 Depth=1
	bcnez	$fcc0, .LBB7_21
.LBB7_11:                               #   in Loop: Header=BB7_7 Depth=1
	fcmp.cule.d	$fcc1, $ft0, $fs0
	bcnez	$fcc1, .LBB7_6
# %bb.12:                               #   in Loop: Header=BB7_7 Depth=1
	bcnez	$fcc0, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_7 Depth=1
	ld.d	$a4, $s2, 0
	ld.d	$a5, $s3, 0
	fld.d	$fa0, $a3, 16
	fsub.d	$fa1, $fa7, $fa5
	fld.d	$fa2, $a4, 0
	fsub.d	$fa3, $fa6, $fa4
	fld.d	$fa6, $a0, 16
	fld.d	$fa7, $a4, 8
	fsub.d	$fa2, $fa2, $fa5
	fld.d	$ft0, $a5, 0
	fld.d	$ft1, $a5, 8
	fsub.d	$fa7, $fa7, $fa4
	fld.d	$ft2, $a4, 16
	fsub.d	$fa5, $ft0, $fa5
	fsub.d	$fa4, $ft1, $fa4
	fld.d	$ft0, $a5, 16
	fsub.d	$fa6, $fa6, $fa0
	fneg.d	$ft1, $fa5
	fmul.d	$ft1, $fa7, $ft1
	fmadd.d	$ft1, $fa2, $fa4, $ft1
	fmul.d	$fa6, $fa6, $ft1
	fsub.d	$ft1, $ft2, $fa0
	fneg.d	$ft2, $fa1
	fmul.d	$fa4, $fa4, $ft2
	fmadd.d	$fa4, $fa5, $fa3, $fa4
	fmadd.d	$fa4, $ft1, $fa4, $fa6
	fsub.d	$fa0, $ft0, $fa0
	fneg.d	$fa2, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fmadd.d	$fa1, $fa1, $fa7, $fa2
	fmadd.d	$fa0, $fa0, $fa1, $fa4
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_6
.LBB7_14:                               #   in Loop: Header=BB7_7 Depth=1
	move	$a0, $s2
	move	$a1, $a2
	pcaddu18i	$ra, %call36(connect_right)
	jirl	$ra, $ra, 0
	xori	$a2, $a0, 64
	ld.d	$s2, $a0, 8
	ld.d	$a5, $a2, 0
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_15:                               # %.preheader145
                                        #   in Loop: Header=BB7_7 Depth=1
	fld.d	$fa6, $a5, 16
	ld.d	$a5, $a0, %pc_lo12(avail_edge)
	.p2align	4, , 16
.LBB7_16:                               #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xori	$a6, $s2, 64
	ld.d	$a7, $a6, 0
	xori	$t0, $a4, 64
	fld.d	$fa7, $a7, 0
	ld.d	$t0, $t0, 0
	fld.d	$ft0, $a7, 8
	ld.d	$t1, $s2, 0
	fsub.d	$fa7, $fa7, $fa4
	fld.d	$ft1, $t0, 0
	fsub.d	$ft0, $ft0, $fa5
	fld.d	$ft2, $a7, 16
	fld.d	$ft3, $t0, 8
	fsub.d	$ft1, $ft1, $fa4
	fld.d	$ft4, $t1, 0
	fld.d	$ft5, $t1, 8
	fsub.d	$ft3, $ft3, $fa5
	fld.d	$ft6, $t0, 16
	fsub.d	$ft4, $ft4, $fa4
	fsub.d	$ft5, $ft5, $fa5
	fld.d	$ft7, $t1, 16
	fsub.d	$ft2, $ft2, $fa6
	fneg.d	$ft8, $ft4
	fmul.d	$ft8, $ft3, $ft8
	fmadd.d	$ft8, $ft1, $ft5, $ft8
	fmul.d	$ft2, $ft2, $ft8
	fsub.d	$ft6, $ft6, $fa6
	fneg.d	$ft8, $fa7
	fmul.d	$ft5, $ft5, $ft8
	fmadd.d	$ft4, $ft4, $ft0, $ft5
	fmadd.d	$ft2, $ft6, $ft4, $ft2
	fsub.d	$ft4, $ft7, $fa6
	fneg.d	$ft1, $ft1
	fmul.d	$ft0, $ft0, $ft1
	fmadd.d	$fa7, $fa7, $ft3, $ft0
	fmadd.d	$fa7, $ft4, $fa7, $ft2
	fcmp.cule.d	$fcc0, $fa7, $fs0
	bcnez	$fcc0, .LBB7_8
# %bb.17:                               #   in Loop: Header=BB7_16 Depth=2
	addi.d	$a7, $s2, 32
	srli.d	$t0, $s2, 7
	bstrins.d	$a7, $t0, 63, 7
	ld.d	$a7, $a7, 8
	addi.d	$t1, $a7, 32
	srli.d	$a7, $a7, 7
	bstrins.d	$t1, $a7, 63, 7
	ld.d	$a7, $t1, 8
	addi.d	$t2, $a4, 32
	srli.d	$t3, $a4, 7
	bstrins.d	$t2, $t3, 63, 7
	addi.d	$t3, $a7, 32
	srli.d	$a7, $a7, 7
	bstrins.d	$t3, $a7, 63, 7
	ld.d	$a7, $t3, 8
	ld.d	$t4, $t2, 8
	st.d	$a7, $t2, 8
	st.d	$t4, $t3, 8
	ld.d	$a7, $s2, 8
	ld.d	$t2, $t1, 8
	st.d	$a7, $t1, 8
	st.d	$t2, $s2, 8
	addi.d	$a7, $a6, 32
	bstrins.d	$a7, $t0, 63, 7
	ld.d	$a7, $a7, 8
	addi.d	$t0, $a7, 32
	ld.d	$t1, $a6, 8
	srli.d	$a7, $a7, 7
	bstrins.d	$t0, $a7, 63, 7
	ld.d	$a7, $t0, 8
	addi.d	$t2, $t1, 32
	srli.d	$t1, $t1, 7
	bstrins.d	$t2, $t1, 63, 7
	addi.d	$t1, $a7, 32
	srli.d	$a7, $a7, 7
	bstrins.d	$t1, $a7, 63, 7
	ld.d	$a7, $t1, 8
	ld.d	$t3, $t2, 8
	st.d	$a7, $t2, 8
	st.d	$t3, $t1, 8
	ld.d	$a7, $a6, 8
	ld.d	$t1, $t0, 8
	move	$t2, $s2
	st.d	$a7, $t0, 8
	st.d	$t1, $a6, 8
	bstrins.d	$s2, $s6, 6, 0
	st.d	$a5, $s2, 0
	ld.d	$a6, $a4, 8
	move	$s2, $a4
	bstrins.d	$t2, $zero, 6, 0
	st.d	$t2, $a0, %pc_lo12(avail_edge)
	move	$a5, $t2
	move	$a4, $a6
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_18:                               # %.preheader
                                        #   in Loop: Header=BB7_7 Depth=1
	fld.d	$fa4, $a3, 16
	ld.d	$a4, $a0, %pc_lo12(avail_edge)
	move	$a3, $s3
	.p2align	4, , 16
.LBB7_19:                               #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $a3
	move	$a3, $a5
	xori	$a5, $a5, 64
	ld.d	$a5, $a5, 0
	xori	$a6, $a6, 64
	fld.d	$fa5, $a5, 0
	ld.d	$a6, $a6, 0
	fld.d	$fa6, $a5, 8
	ld.d	$a7, $s3, 0
	fsub.d	$fa5, $fa5, $fa0
	fld.d	$fa7, $a6, 0
	fsub.d	$fa6, $fa6, $fa1
	fld.d	$ft0, $a5, 16
	fld.d	$ft1, $a6, 8
	fsub.d	$fa7, $fa7, $fa0
	fld.d	$ft2, $a7, 0
	fld.d	$ft3, $a7, 8
	fsub.d	$ft1, $ft1, $fa1
	fld.d	$ft4, $a6, 16
	fsub.d	$ft2, $ft2, $fa0
	fsub.d	$ft3, $ft3, $fa1
	fld.d	$ft5, $a7, 16
	fsub.d	$ft0, $ft0, $fa4
	fneg.d	$ft6, $ft2
	fmul.d	$ft6, $ft1, $ft6
	fmadd.d	$ft6, $fa7, $ft3, $ft6
	fmul.d	$ft0, $ft0, $ft6
	fsub.d	$ft4, $ft4, $fa4
	fneg.d	$ft6, $fa5
	fmul.d	$ft3, $ft3, $ft6
	fmadd.d	$ft2, $ft2, $fa6, $ft3
	fmadd.d	$ft0, $ft4, $ft2, $ft0
	fsub.d	$ft2, $ft5, $fa4
	fneg.d	$fa7, $fa7
	fmul.d	$fa6, $fa6, $fa7
	fmadd.d	$fa5, $fa5, $ft1, $fa6
	fmadd.d	$fa5, $ft2, $fa5, $ft0
	fcmp.cule.d	$fcc0, $fa5, $fs0
	bcnez	$fcc0, .LBB7_9
# %bb.20:                               #   in Loop: Header=BB7_19 Depth=2
	addi.d	$a5, $s3, 32
	srli.d	$a6, $s3, 7
	bstrins.d	$a5, $a6, 63, 7
	ld.d	$a5, $a5, 8
	addi.d	$a7, $a5, 32
	ld.d	$t0, $s3, 8
	srli.d	$a5, $a5, 7
	bstrins.d	$a7, $a5, 63, 7
	ld.d	$a5, $a7, 8
	addi.d	$t1, $t0, 32
	srli.d	$t0, $t0, 7
	bstrins.d	$t1, $t0, 63, 7
	addi.d	$t0, $a5, 32
	srli.d	$a5, $a5, 7
	bstrins.d	$t0, $a5, 63, 7
	ld.d	$a5, $t0, 8
	ld.d	$t2, $t1, 8
	st.d	$a5, $t1, 8
	st.d	$t2, $t0, 8
	ld.d	$a5, $s3, 8
	ld.d	$t0, $a7, 8
	st.d	$a5, $a7, 8
	st.d	$t0, $s3, 8
	xori	$a5, $s3, 64
	addi.d	$a7, $a5, 32
	bstrins.d	$a7, $a6, 63, 7
	ld.d	$a6, $a7, 8
	addi.d	$a7, $a6, 32
	ld.d	$t0, $a5, 8
	srli.d	$a6, $a6, 7
	bstrins.d	$a7, $a6, 63, 7
	ld.d	$a6, $a7, 8
	addi.d	$t1, $t0, 32
	srli.d	$t0, $t0, 7
	bstrins.d	$t1, $t0, 63, 7
	addi.d	$t0, $a6, 32
	srli.d	$a6, $a6, 7
	bstrins.d	$t0, $a6, 63, 7
	ld.d	$a6, $t0, 8
	ld.d	$t2, $t1, 8
	st.d	$a6, $t1, 8
	st.d	$t2, $t0, 8
	ld.d	$a6, $a5, 8
	ld.d	$t0, $a7, 8
	move	$t1, $s3
	st.d	$a6, $a7, 8
	st.d	$t0, $a5, 8
	bstrins.d	$s3, $s6, 6, 0
	st.d	$a4, $s3, 0
	addi.d	$a4, $a3, 32
	srli.d	$a5, $a3, 7
	bstrins.d	$a4, $a5, 63, 7
	ld.d	$a4, $a4, 8
	bstrins.d	$t1, $zero, 6, 0
	st.d	$t1, $a0, %pc_lo12(avail_edge)
	addi.d	$a5, $a4, 32
	srli.d	$a4, $a4, 7
	bstrins.d	$a5, $a4, 63, 7
	move	$a4, $t1
	move	$s3, $a3
	b	.LBB7_19
.LBB7_21:
	xor	$a0, $s7, $s8
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	xor	$a1, $s5, $a1
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a2
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
	ret
.Lfunc_end7:
	.size	do_merge, .Lfunc_end7-do_merge
                                        # -- End function
	.globl	ccw                             # -- Begin function ccw
	.p2align	5
	.type	ccw,@function
ccw:                                    # @ccw
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a2, 0
	fld.d	$fa3, $a2, 8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a0, 8
	fsub.d	$fa0, $fa0, $fa2
	fsub.d	$fa1, $fa1, $fa3
	fsub.d	$fa2, $fa4, $fa2
	fsub.d	$fa3, $fa5, $fa3
	fneg.d	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end8:
	.size	ccw, .Lfunc_end8-ccw
                                        # -- End function
	.globl	delete_all_edges                # -- Begin function delete_all_edges
	.p2align	5
	.type	delete_all_edges,@function
delete_all_edges:                       # @delete_all_edges
# %bb.0:
	pcalau12i	$a0, %pc_hi20(next_edge)
	st.d	$zero, $a0, %pc_lo12(next_edge)
	pcalau12i	$a0, %pc_hi20(avail_edge)
	st.d	$zero, $a0, %pc_lo12(avail_edge)
	ret
.Lfunc_end9:
	.size	delete_all_edges, .Lfunc_end9-delete_all_edges
                                        # -- End function
	.globl	myalign                         # -- Begin function myalign
	.p2align	5
	.type	myalign,@function
myalign:                                # @myalign
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_2
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_2:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	myalign, .Lfunc_end10-myalign
                                        # -- End function
	.globl	alloc_edge                      # -- Begin function alloc_edge
	.p2align	5
	.type	alloc_edge,@function
alloc_edge:                             # @alloc_edge
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(avail_edge)
	ld.d	$a0, $a1, %pc_lo12(avail_edge)
	beqz	$a0, .LBB11_2
# %bb.1:
	ld.d	$a2, $a0, 8
	st.d	$a2, $a1, %pc_lo12(avail_edge)
	b	.LBB11_3
.LBB11_2:
	ori	$a0, $zero, 128
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_4
.LBB11_3:                               # %myalign.exit
	st.d	$zero, $a0, 16
	st.d	$zero, $a0, 48
	st.d	$zero, $a0, 80
	st.d	$zero, $a0, 112
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB11_4:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	alloc_edge, .Lfunc_end11-alloc_edge
                                        # -- End function
	.globl	incircle                        # -- Begin function incircle
	.p2align	5
	.type	incircle,@function
incircle:                               # @incircle
# %bb.0:
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a3, 8
	fld.d	$fa3, $a0, 8
	fld.d	$fa4, $a3, 16
	fsub.d	$fa1, $fa1, $fa0
	fld.d	$fa5, $a1, 0
	fsub.d	$fa3, $fa3, $fa2
	fld.d	$fa6, $a0, 16
	fld.d	$fa7, $a1, 8
	fsub.d	$fa5, $fa5, $fa0
	fld.d	$ft0, $a2, 0
	fld.d	$ft1, $a2, 8
	fsub.d	$fa7, $fa7, $fa2
	fld.d	$ft2, $a1, 16
	fsub.d	$fa0, $ft0, $fa0
	fsub.d	$fa2, $ft1, $fa2
	fld.d	$ft0, $a2, 16
	fsub.d	$fa6, $fa6, $fa4
	fneg.d	$ft1, $fa0
	fmul.d	$ft1, $fa7, $ft1
	fmadd.d	$ft1, $fa5, $fa2, $ft1
	fmul.d	$fa6, $fa6, $ft1
	fsub.d	$ft1, $ft2, $fa4
	fneg.d	$ft2, $fa1
	fmul.d	$fa2, $fa2, $ft2
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fmadd.d	$fa0, $ft1, $fa0, $fa6
	fsub.d	$fa2, $ft0, $fa4
	fneg.d	$fa4, $fa5
	fmul.d	$fa3, $fa3, $fa4
	fmadd.d	$fa1, $fa1, $fa7, $fa3
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end12:
	.size	incircle, .Lfunc_end12-incircle
                                        # -- End function
	.globl	makeedge                        # -- Begin function makeedge
	.p2align	5
	.type	makeedge,@function
makeedge:                               # @makeedge
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(avail_edge)
	ld.d	$a3, $a2, %pc_lo12(avail_edge)
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a3, .LBB13_2
# %bb.1:
	move	$a0, $a3
	ld.d	$a1, $a3, 8
	st.d	$a1, $a2, %pc_lo12(avail_edge)
	b	.LBB13_3
.LBB13_2:
	ori	$a0, $zero, 128
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_4
.LBB13_3:                               # %alloc_edge.exit
	st.d	$zero, $a0, 16
	st.d	$zero, $a0, 48
	st.d	$zero, $a0, 80
	st.d	$zero, $a0, 112
	st.d	$a0, $a0, 8
	st.d	$s0, $a0, 0
	addi.d	$a1, $a0, 32
	addi.d	$a2, $a0, 96
	st.d	$a2, $a0, 40
	addi.d	$a2, $a0, 64
	st.d	$a2, $a0, 72
	st.d	$fp, $a0, 64
	st.d	$a1, $a0, 104
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB13_4:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	makeedge, .Lfunc_end13-makeedge
                                        # -- End function
	.globl	splice                          # -- Begin function splice
	.p2align	5
	.type	splice,@function
splice:                                 # @splice
# %bb.0:
	ld.d	$a2, $a0, 8
	ld.d	$a3, $a1, 8
	addi.d	$a4, $a2, 32
	srli.d	$a2, $a2, 7
	bstrins.d	$a4, $a2, 63, 7
	addi.d	$a2, $a3, 32
	srli.d	$a3, $a3, 7
	bstrins.d	$a2, $a3, 63, 7
	ld.d	$a3, $a2, 8
	ld.d	$a5, $a4, 8
	st.d	$a3, $a4, 8
	st.d	$a5, $a2, 8
	ld.d	$a2, $a0, 8
	ld.d	$a3, $a1, 8
	st.d	$a2, $a1, 8
	st.d	$a3, $a0, 8
	ret
.Lfunc_end14:
	.size	splice, .Lfunc_end14-splice
                                        # -- End function
	.globl	swapedge                        # -- Begin function swapedge
	.p2align	5
	.type	swapedge,@function
swapedge:                               # @swapedge
# %bb.0:
	addi.d	$a1, $a0, 32
	srli.d	$a3, $a0, 7
	bstrins.d	$a1, $a3, 63, 7
	ld.d	$a4, $a1, 8
	addi.d	$a1, $a4, 32
	srli.d	$a2, $a4, 7
	bstrins.d	$a1, $a2, 63, 7
	ld.d	$a5, $a0, 8
	xori	$a2, $a0, 64
	addi.d	$a6, $a2, 32
	ld.d	$a7, $a1, 8
	addi.d	$t0, $a5, 32
	srli.d	$a5, $a5, 7
	bstrins.d	$t0, $a5, 63, 7
	addi.d	$t1, $a7, 32
	srli.d	$a5, $a7, 7
	bstrins.d	$t1, $a5, 63, 7
	ld.d	$a7, $t1, 8
	ld.d	$t2, $t0, 8
	bstrins.d	$a6, $a3, 63, 7
	ld.d	$a5, $a6, 8
	st.d	$a7, $t0, 8
	st.d	$t2, $t1, 8
	ld.d	$a6, $a0, 8
	ld.d	$a7, $a1, 8
	addi.d	$a3, $a5, 32
	st.d	$a6, $a1, 8
	st.d	$a7, $a0, 8
	ld.d	$a6, $a2, 8
	srli.d	$a7, $a5, 7
	bstrins.d	$a3, $a7, 63, 7
	ld.d	$a7, $a3, 8
	addi.d	$t0, $a6, 32
	srli.d	$a6, $a6, 7
	bstrins.d	$t0, $a6, 63, 7
	addi.d	$a6, $a7, 32
	srli.d	$a7, $a7, 7
	bstrins.d	$a6, $a7, 63, 7
	ld.d	$a7, $a6, 8
	ld.d	$t1, $t0, 8
	st.d	$a7, $t0, 8
	st.d	$t1, $a6, 8
	ld.d	$a6, $a2, 8
	ld.d	$a7, $a3, 8
	st.d	$a6, $a3, 8
	st.d	$a7, $a2, 8
	ld.d	$a4, $a4, 8
	addi.d	$a6, $a4, 32
	ld.d	$a7, $a0, 8
	srli.d	$a4, $a4, 7
	bstrins.d	$a6, $a4, 63, 7
	ld.d	$a4, $a6, 8
	addi.d	$t0, $a7, 32
	srli.d	$a7, $a7, 7
	bstrins.d	$t0, $a7, 63, 7
	addi.d	$a7, $a4, 32
	srli.d	$a4, $a4, 7
	bstrins.d	$a7, $a4, 63, 7
	ld.d	$a4, $a7, 8
	ld.d	$t1, $t0, 8
	st.d	$a4, $t0, 8
	st.d	$t1, $a7, 8
	ld.d	$a4, $a0, 8
	ld.d	$a7, $a6, 8
	st.d	$a4, $a6, 8
	st.d	$a7, $a0, 8
	ld.d	$a4, $a5, 8
	addi.d	$a5, $a4, 32
	ld.d	$a6, $a2, 8
	srli.d	$a4, $a4, 7
	bstrins.d	$a5, $a4, 63, 7
	ld.d	$a4, $a5, 8
	addi.d	$a7, $a6, 32
	srli.d	$a6, $a6, 7
	bstrins.d	$a7, $a6, 63, 7
	addi.d	$a6, $a4, 32
	srli.d	$a4, $a4, 7
	bstrins.d	$a6, $a4, 63, 7
	ld.d	$a4, $a6, 8
	ld.d	$t0, $a7, 8
	st.d	$a4, $a7, 8
	st.d	$t0, $a6, 8
	ld.d	$a4, $a2, 8
	ld.d	$a6, $a5, 8
	xori	$a1, $a1, 64
	ld.d	$a1, $a1, 0
	xori	$a3, $a3, 64
	ld.d	$a3, $a3, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a2, 8
	st.d	$a1, $a0, 0
	st.d	$a3, $a2, 0
	ret
.Lfunc_end15:
	.size	swapedge, .Lfunc_end15-swapedge
                                        # -- End function
	.globl	valid                           # -- Begin function valid
	.p2align	5
	.type	valid,@function
valid:                                  # @valid
# %bb.0:
	ld.d	$a2, $a1, 0
	xori	$a1, $a1, 64
	xori	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a0, 8
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a1, 8
	fld.d	$fa4, $a0, 0
	fld.d	$fa5, $a2, 8
	fsub.d	$fa0, $fa0, $fa2
	fsub.d	$fa1, $fa1, $fa3
	fsub.d	$fa2, $fa4, $fa2
	fsub.d	$fa3, $fa5, $fa3
	fneg.d	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end16:
	.size	valid, .Lfunc_end16-valid
                                        # -- End function
	.globl	dump_quad                       # -- Begin function dump_quad
	.p2align	5
	.type	dump_quad,@function
dump_quad:                              # @dump_quad
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$s0, $a0
	bstrins.d	$s0, $zero, 6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	move	$a1, $fp
	bstrins.d	$a1, $a0, 6, 0
	ld.d	$a2, $a1, 0
	ld.d	$a3, $a2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 40
	move	$a1, $fp
	bstrins.d	$a1, $a0, 6, 0
	ld.d	$a2, $a1, 0
	ld.d	$a3, $a2, 0
	ori	$a0, $zero, 32
	move	$a1, $fp
	bstrins.d	$a1, $a0, 6, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 72
	move	$a1, $fp
	bstrins.d	$a1, $a0, 6, 0
	ld.d	$a2, $a1, 0
	ld.d	$a3, $a2, 0
	ori	$a0, $zero, 64
	move	$a1, $fp
	bstrins.d	$a1, $a0, 6, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ori	$a0, $zero, 104
	bstrins.d	$fp, $a0, 6, 0
	ld.d	$a2, $fp, 0
	ld.d	$a3, $a2, 0
	ori	$a0, $zero, 96
	bstrins.d	$a1, $a0, 6, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end17:
	.size	dump_quad, .Lfunc_end17-dump_quad
                                        # -- End function
	.globl	in_order                        # -- Begin function in_order
	.p2align	5
	.type	in_order,@function
in_order:                               # @in_order
# %bb.0:
	beqz	$a0, .LBB18_4
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s0, $a0, %pc_lo12(.L.str.6)
	.p2align	4, , 16
.LBB18_2:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(in_order)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 32
	bnez	$fp, .LBB18_2
# %bb.3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB18_4:                               # %tailrecurse._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end18:
	.size	in_order, .Lfunc_end18-in_order
                                        # -- End function
	.globl	mult                            # -- Begin function mult
	.p2align	5
	.type	mult,@function
mult:                                   # @mult
# %bb.0:
	lu12i.w	$a2, 429496
	ori	$a2, $a2, 2989
	mul.d	$a3, $a0, $a2
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 44
	add.d	$a3, $a3, $a4
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1808
	mul.d	$a5, $a3, $a4
	sub.d	$a0, $a0, $a5
	mul.d	$a5, $a1, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 44
	add.d	$a5, $a5, $a6
	mul.d	$a6, $a5, $a4
	sub.d	$a1, $a1, $a6
	mul.d	$a5, $a5, $a0
	mul.d	$a3, $a1, $a3
	add.w	$a3, $a5, $a3
	mul.d	$a2, $a3, $a2
	srli.d	$a5, $a2, 63
	srai.d	$a2, $a2, 44
	add.d	$a2, $a2, $a5
	mul.d	$a2, $a2, $a4
	sub.d	$a2, $a3, $a2
	mul.d	$a2, $a2, $a4
	mul.d	$a0, $a1, $a0
	add.w	$a0, $a2, $a0
	ret
.Lfunc_end19:
	.size	mult, .Lfunc_end19-mult
                                        # -- End function
	.globl	skiprand                        # -- Begin function skiprand
	.p2align	5
	.type	skiprand,@function
skiprand:                               # @skiprand
# %bb.0:
	beqz	$a1, .LBB20_3
# %bb.1:                                # %.lr.ph.preheader
	lu12i.w	$a2, 429496
	ori	$a2, $a2, 2989
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1808
	ori	$a4, $zero, 3141
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1725
	.p2align	4, , 16
.LBB20_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a6, $a0, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 44
	add.d	$a6, $a6, $a7
	mul.d	$a7, $a6, $a3
	sub.d	$a0, $a0, $a7
	mul.d	$a7, $a0, $a4
	mul.d	$a6, $a6, $a5
	add.w	$a6, $a7, $a6
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 44
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a3
	sub.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a3
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	addi.w	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB20_2
.LBB20_3:                               # %._crit_edge
	ret
.Lfunc_end20:
	.size	skiprand, .Lfunc_end20-skiprand
                                        # -- End function
	.globl	myrandom                        # -- Begin function myrandom
	.p2align	5
	.type	myrandom,@function
myrandom:                               # @myrandom
# %bb.0:
	lu12i.w	$a1, 429496
	ori	$a1, $a1, 2989
	mul.d	$a2, $a0, $a1
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 44
	add.d	$a2, $a2, $a3
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1808
	mul.d	$a4, $a2, $a3
	sub.d	$a0, $a0, $a4
	ori	$a4, $zero, 3141
	mul.d	$a4, $a0, $a4
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1725
	mul.d	$a2, $a2, $a5
	add.w	$a2, $a4, $a2
	mul.d	$a1, $a2, $a1
	srli.d	$a4, $a1, 63
	srai.d	$a1, $a1, 44
	add.d	$a1, $a1, $a4
	mul.d	$a1, $a1, $a3
	sub.d	$a1, $a2, $a1
	mul.d	$a1, $a1, $a3
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	ret
.Lfunc_end21:
	.size	myrandom, .Lfunc_end21-myrandom
                                        # -- End function
	.globl	print_extra                     # -- Begin function print_extra
	.p2align	5
	.type	print_extra,@function
print_extra:                            # @print_extra
# %bb.0:
	ld.d	$a2, $a0, 8
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end22:
	.size	print_extra, .Lfunc_end22-print_extra
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(to_color)
	st.w	$zero, $a0, %pc_lo12(to_color)
	pcalau12i	$a0, %pc_hi20(to_3d_out)
	st.w	$zero, $a0, %pc_lo12(to_3d_out)
	pcalau12i	$a0, %pc_hi20(to_off)
	st.w	$zero, $a0, %pc_lo12(to_off)
	pcalau12i	$a0, %pc_hi20(to_lincoln)
	st.w	$zero, $a0, %pc_lo12(to_lincoln)
	pcalau12i	$a0, %pc_hi20(delaunay)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(delaunay)
	pcalau12i	$a0, %pc_hi20(voronoi)
	st.w	$a1, $a0, %pc_lo12(voronoi)
	pcalau12i	$a0, %pc_hi20(ahost)
	st.w	$zero, $a0, %pc_lo12(ahost)
	pcalau12i	$a0, %pc_hi20(interactive)
	st.w	$zero, $a0, %pc_lo12(interactive)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(dealwithargs)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(NumNodes)
	ld.w	$a0, $s1, %pc_lo12(NumNodes)
	addi.w	$a4, $a0, -1
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1
	vldi	$vr0, -912
	ori	$a3, $zero, 1023
	ori	$a5, $zero, 1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(get_points)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	fld.d	$fa0, $sp, 16
	ld.w	$a3, $sp, 24
	ld.w	$a5, $s1, %pc_lo12(NumNodes)
	addi.w	$a1, $fp, -1
	addi.d	$a0, $sp, 8
	move	$a2, $a1
	move	$a4, $zero
	pcaddu18i	$ra, %call36(get_points)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$s4, $fp, 1
	addi.w	$s5, $s4, 0
	pcalau12i	$a0, %pc_hi20(num_vertices)
	st.w	$s4, $a0, %pc_lo12(num_vertices)
	slli.d	$a0, $s4, 3
	alsl.w	$s3, $s5, $a0, 2
	alsl.d	$a0, $s5, $a0, 2
	pcalau12i	$a1, %pc_hi20(num_edgeparts)
	st.w	$a0, $a1, %pc_lo12(num_edgeparts)
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	slli.d	$a0, $s3, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(flag)
	ld.w	$a1, $s3, %pc_lo12(flag)
	st.d	$a0, $s2, 8
	slli.d	$a0, $s5, 2
	alsl.d	$a0, $s4, $a0, 1
	st.w	$a0, $s2, 16
	beqz	$a1, .LBB23_3
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(in_order)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(flag)
	beqz	$a0, .LBB23_3
# %bb.2:
	ld.d	$a2, $s0, 8
	ld.d	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB23_3:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(build_delaunay)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(flag)
	beqz	$a1, .LBB23_5
# %bb.4:
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(output_voronoi_diagram)
	jirl	$ra, $ra, 0
.LBB23_5:
	move	$a0, $zero
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
.Lfunc_end23:
	.size	main, .Lfunc_end23-main
                                        # -- End function
	.globl	get_points                      # -- Begin function get_points
	.p2align	5
	.type	get_points,@function
get_points:                             # @get_points
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	move	$fp, $a0
	blez	$a1, .LBB24_2
# %bb.1:
	bstrpick.d	$s1, $a1, 31, 1
	bstrpick.d	$a0, $a5, 31, 31
	add.w	$a0, $a5, $a0
	srai.d	$s0, $a0, 1
	add.w	$a5, $s0, $a4
	move	$a0, $fp
	move	$a1, $s1
	move	$s2, $a2
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	move	$a4, $a5
	move	$a5, $s0
	pcaddu18i	$ra, %call36(get_points)
	jirl	$ra, $ra, 0
	sub.d	$s4, $s2, $s1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.w	$a0, $fp, 16
	fld.d	$fs0, $fp, 8
	lu12i.w	$a1, 429496
	ori	$s5, $a1, 2989
	mul.d	$a1, $a0, $s5
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 44
	add.d	$a1, $a1, $a2
	lu12i.w	$a2, 2
	ori	$s6, $a2, 1808
	mul.d	$a2, $a1, $s6
	sub.w	$a0, $a0, $a2
	ori	$s7, $zero, 3141
	mul.d	$a2, $a0, $s7
	lu12i.w	$a3, 1
	ori	$s8, $a3, 1725
	mul.d	$a1, $a1, $s8
	add.w	$a1, $a2, $a1
	mul.d	$a2, $a1, $s5
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 44
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s6
	sub.w	$a1, $a1, $a2
	mul.d	$a1, $a1, $s6
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	addi.w	$s3, $a0, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a0, -1024
	lu52i.d	$a0, $a0, 1053
	movgr2fr.d	$fs1, $a0
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa1, $s4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s2, 0
	mul.d	$a0, $s3, $s5
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 44
	add.d	$a0, $a0, $a1
	mul.d	$a1, $a0, $s6
	sub.d	$a1, $s3, $a1
	addi.w	$a2, $a1, 0
	mul.d	$a2, $a2, $s7
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a2, $a0
	addi.w	$a2, $a0, 0
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 44
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s6
	sub.d	$a0, $a0, $a2
	mul.d	$a0, $a0, $s6
	mul.d	$a1, $a1, $s8
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	addi.w	$a3, $a0, 0
	st.w	$a0, $fp, 16
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs1
	fst.d	$fa1, $s2, 8
	ld.d	$a0, $fp, 0
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa1, $fa0, $fa0, $fa1
	fst.d	$fa1, $s2, 16
	st.d	$a0, $s2, 32
	addi.w	$a2, $s4, -1
	move	$a0, $fp
	move	$a1, $s1
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	move	$a5, $s0
	pcaddu18i	$ra, %call36(get_points)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s2, 24
	b	.LBB24_3
.LBB24_2:
	move	$s2, $zero
	fst.d	$fa0, $fp, 8
	st.w	$a3, $fp, 16
.LBB24_3:
	st.d	$s2, $fp, 0
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end24:
	.size	get_points, .Lfunc_end24-get_points
                                        # -- End function
	.globl	allocate_stack                  # -- Begin function allocate_stack
	.p2align	5
	.type	allocate_stack,@function
allocate_stack:                         # @allocate_stack
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	slli.d	$a0, $a0, 3
	alsl.w	$s1, $fp, $a0, 2
	alsl.d	$a0, $fp, $a0, 2
	pcalau12i	$a1, %pc_hi20(num_edgeparts)
	st.w	$a0, $a1, %pc_lo12(num_edgeparts)
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	slli.d	$a0, $fp, 2
	alsl.d	$a0, $fp, $a0, 1
	st.w	$a0, $s0, 16
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end25:
	.size	allocate_stack, .Lfunc_end25-allocate_stack
                                        # -- End function
	.globl	free_all                        # -- Begin function free_all
	.p2align	5
	.type	free_all,@function
free_all:                               # @free_all
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a0, $a1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end26:
	.size	free_all, .Lfunc_end26-free_all
                                        # -- End function
	.globl	pop_edge                        # -- Begin function pop_edge
	.p2align	5
	.type	pop_edge,@function
pop_edge:                               # @pop_edge
# %bb.0:
	ld.w	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $a1, $a3
	addi.d	$a2, $a2, -1
	st.w	$a2, $a0, 0
	move	$a0, $a1
	ret
.Lfunc_end27:
	.size	pop_edge, .Lfunc_end27-pop_edge
                                        # -- End function
	.globl	push_edge                       # -- Begin function push_edge
	.p2align	5
	.type	push_edge,@function
push_edge:                              # @push_edge
# %bb.0:
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 16
	bne	$a2, $a3, .LBB28_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB28_2:
	ld.d	$a3, $a0, 8
	addi.w	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a3, $a0
	ret
.Lfunc_end28:
	.size	push_edge, .Lfunc_end28-push_edge
                                        # -- End function
	.globl	push_ring                       # -- Begin function push_ring
	.p2align	5
	.type	push_ring,@function
push_ring:                              # @push_ring
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s2, $a1, 8
	beq	$s2, $a1, .LBB29_7
# %bb.1:                                # %.lr.ph
	move	$fp, $a1
	move	$s0, $a0
	ori	$s3, $zero, 1
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$s1, $a0, %pc_lo12(.Lstr.4)
	b	.LBB29_4
.LBB29_2:                               #   in Loop: Header=BB29_4 Depth=1
	ld.d	$a1, $s0, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$s2, $a1, $a0
	.p2align	4, , 16
.LBB29_3:                               # %push_edge.exit
                                        #   in Loop: Header=BB29_4 Depth=1
	ld.d	$s2, $s2, 8
	beq	$s2, $fp, .LBB29_7
.LBB29_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 16
	bnez	$a0, .LBB29_3
# %bb.5:                                #   in Loop: Header=BB29_4 Depth=1
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s0, 16
	st.d	$s3, $s2, 16
	bne	$a0, $a1, .LBB29_2
# %bb.6:                                #   in Loop: Header=BB29_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB29_3
.LBB29_7:                               # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end29:
	.size	push_ring, .Lfunc_end29-push_ring
                                        # -- End function
	.globl	push_nonzero_ring               # -- Begin function push_nonzero_ring
	.p2align	5
	.type	push_nonzero_ring,@function
push_nonzero_ring:                      # @push_nonzero_ring
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $a1, 8
	beq	$s2, $a1, .LBB30_7
# %bb.1:                                # %.lr.ph
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$s1, $a0, %pc_lo12(.Lstr.4)
	b	.LBB30_4
	.p2align	4, , 16
.LBB30_2:                               #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a1, $s0, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$s2, $a1, $a0
.LBB30_3:                               # %push_edge.exit
                                        #   in Loop: Header=BB30_4 Depth=1
	ld.d	$s2, $s2, 8
	beq	$s2, $fp, .LBB30_7
.LBB30_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB30_3
# %bb.5:                                #   in Loop: Header=BB30_4 Depth=1
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s0, 16
	st.d	$zero, $s2, 16
	bne	$a0, $a1, .LBB30_2
# %bb.6:                                #   in Loop: Header=BB30_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB30_3
.LBB30_7:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end30:
	.size	push_nonzero_ring, .Lfunc_end30-push_nonzero_ring
                                        # -- End function
	.globl	zero_seen                       # -- Begin function zero_seen
	.p2align	5
	.type	zero_seen,@function
zero_seen:                              # @zero_seen
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $a1, 8
	st.w	$zero, $a0, 0
	beq	$s2, $a1, .LBB31_17
# %bb.1:                                # %.lr.ph.i
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$s1, $a0, %pc_lo12(.Lstr.4)
	b	.LBB31_4
	.p2align	4, , 16
.LBB31_2:                               #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a1, $fp, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$s2, $a1, $a0
.LBB31_3:                               # %push_edge.exit.i
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$s2, $s2, 8
	beq	$s2, $s0, .LBB31_7
.LBB31_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB31_3
# %bb.5:                                #   in Loop: Header=BB31_4 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 16
	st.d	$zero, $s2, 16
	bne	$a0, $a1, .LBB31_2
# %bb.6:                                #   in Loop: Header=BB31_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB31_3
.LBB31_7:                               # %push_nonzero_ring.exit
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB31_17
# %bb.8:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(.Lstr.4)
	addi.d	$s0, $a1, %pc_lo12(.Lstr.4)
	b	.LBB31_11
	.p2align	4, , 16
.LBB31_9:                               # %push_nonzero_ring.exit18.loopexit
                                        #   in Loop: Header=BB31_11 Depth=1
	ld.w	$a1, $fp, 0
.LBB31_10:                              # %push_nonzero_ring.exit18
                                        #   in Loop: Header=BB31_11 Depth=1
	move	$a0, $a1
	beqz	$a1, .LBB31_17
.LBB31_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_14 Depth 2
	ld.d	$a1, $fp, 8
	slli.d	$a2, $a0, 3
	ldx.d	$a1, $a1, $a2
	xori	$s1, $a1, 64
	ld.d	$s2, $s1, 8
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, 0
	bne	$s2, $s1, .LBB31_14
	b	.LBB31_10
	.p2align	4, , 16
.LBB31_12:                              #   in Loop: Header=BB31_14 Depth=2
	ld.d	$a1, $fp, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$s2, $a1, $a0
.LBB31_13:                              # %push_edge.exit.i13
                                        #   in Loop: Header=BB31_14 Depth=2
	ld.d	$s2, $s2, 8
	beq	$s2, $s1, .LBB31_9
.LBB31_14:                              # %.lr.ph.i10
                                        #   Parent Loop BB31_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB31_13
# %bb.15:                               #   in Loop: Header=BB31_14 Depth=2
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 16
	st.d	$zero, $s2, 16
	bne	$a0, $a1, .LBB31_12
# %bb.16:                               #   in Loop: Header=BB31_14 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB31_13
.LBB31_17:                              # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end31:
	.size	zero_seen, .Lfunc_end31-zero_seen
                                        # -- End function
	.type	next_edge,@object               # @next_edge
	.bss
	.globl	next_edge
	.p2align	3, 0x0
next_edge:
	.dword	0
	.size	next_edge, 8

	.type	avail_edge,@object              # @avail_edge
	.globl	avail_edge
	.p2align	3, 0x0
avail_edge:
	.dword	0
	.size	avail_edge, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Entered DUMP_QUAD: ptr=0x%p\n"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"DUMP_QUAD: ptr=0x%p onext=0x%p,v=0x%p\n"
	.size	.L.str.4, 39

	.type	loop,@object                    # @loop
	.bss
	.globl	loop
	.p2align	2, 0x0
loop:
	.word	0                               # 0x0
	.size	loop, 4

	.type	randum,@object                  # @randum
	.data
	.globl	randum
	.p2align	2, 0x0
randum:
	.word	1                               # 0x1
	.size	randum, 4

	.type	filein,@object                  # @filein
	.bss
	.globl	filein
	.p2align	2, 0x0
filein:
	.word	0                               # 0x0
	.size	filein, 4

	.type	fileout,@object                 # @fileout
	.data
	.globl	fileout
	.p2align	2, 0x0
fileout:
	.word	1                               # 0x1
	.size	fileout, 4

	.type	statistics,@object              # @statistics
	.bss
	.globl	statistics
	.p2align	2, 0x0
statistics:
	.word	0                               # 0x0
	.size	statistics, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"X=%f, Y=%f\n"
	.size	.L.str.6, 12

	.type	to_color,@object                # @to_color
	.bss
	.globl	to_color
	.p2align	2, 0x0
to_color:
	.word	0                               # 0x0
	.size	to_color, 4

	.type	to_3d_out,@object               # @to_3d_out
	.globl	to_3d_out
	.p2align	2, 0x0
to_3d_out:
	.word	0                               # 0x0
	.size	to_3d_out, 4

	.type	to_off,@object                  # @to_off
	.globl	to_off
	.p2align	2, 0x0
to_off:
	.word	0                               # 0x0
	.size	to_off, 4

	.type	to_lincoln,@object              # @to_lincoln
	.globl	to_lincoln
	.p2align	2, 0x0
to_lincoln:
	.word	0                               # 0x0
	.size	to_lincoln, 4

	.type	delaunay,@object                # @delaunay
	.globl	delaunay
	.p2align	2, 0x0
delaunay:
	.word	0                               # 0x0
	.size	delaunay, 4

	.type	voronoi,@object                 # @voronoi
	.globl	voronoi
	.p2align	2, 0x0
voronoi:
	.word	0                               # 0x0
	.size	voronoi, 4

	.type	ahost,@object                   # @ahost
	.globl	ahost
	.p2align	2, 0x0
ahost:
	.word	0                               # 0x0
	.size	ahost, 4

	.type	interactive,@object             # @interactive
	.globl	interactive
	.p2align	2, 0x0
interactive:
	.word	0                               # 0x0
	.size	interactive, 4

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"argc = %d\n"
	.size	.L.str.7, 11

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"getting %d points\n"
	.size	.L.str.8, 19

	.type	NumNodes,@object                # @NumNodes
	.bss
	.globl	NumNodes
	.p2align	2, 0x0
NumNodes:
	.word	0                               # 0x0
	.size	NumNodes, 4

	.type	num_vertices,@object            # @num_vertices
	.globl	num_vertices
	.p2align	2, 0x0
num_vertices:
	.word	0                               # 0x0
	.size	num_vertices, 4

	.type	flag,@object                    # @flag
	.globl	flag
	.p2align	2, 0x0
flag:
	.word	0                               # 0x0
	.size	flag, 4

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Doing voronoi on %d nodes\n"
	.size	.L.str.10, 27

	.type	num_edgeparts,@object           # @num_edgeparts
	.bss
	.globl	num_edgeparts
	.p2align	2, 0x0
num_edgeparts:
	.word	0                               # 0x0
	.size	num_edgeparts, 4

	.type	vp,@object                      # @vp
	.globl	vp
	.p2align	3, 0x0
vp:
	.dword	0
	.size	vp, 8

	.type	va,@object                      # @va
	.globl	va
	.p2align	3, 0x0
va:
	.dword	0
	.size	va, 8

	.type	next,@object                    # @next
	.globl	next
	.p2align	3, 0x0
next:
	.dword	0
	.size	next, 8

	.type	org,@object                     # @org
	.globl	org
	.p2align	3, 0x0
org:
	.dword	0
	.size	org, 8

	.type	stack_size,@object              # @stack_size
	.globl	stack_size
	.p2align	2, 0x0
stack_size:
	.word	0                               # 0x0
	.size	stack_size, 4

	.type	see,@object                     # @see
	.globl	see
	.p2align	3, 0x0
see:
	.dword	0
	.size	see, 8

	.type	NDim,@object                    # @NDim
	.globl	NDim
	.p2align	2, 0x0
NDim:
	.word	0                               # 0x0
	.size	NDim, 4

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"ERROR: Only 1 point!"
	.size	.Lstr, 21

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"myalign() failed"
	.size	.Lstr.1, 17

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"NULL"
	.size	.Lstr.2, 5

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Done getting points"
	.size	.Lstr.3, 20

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"cannot push onto stack: stack is too large"
	.size	.Lstr.4, 43

	.section	".note.GNU-stack","",@progbits
	.addrsig
