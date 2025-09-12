	.file	"context_ini.c"
	.text
	.globl	create_context_memory           # -- Begin function create_context_memory
	.p2align	5
	.type	create_context_memory,@function
create_context_memory:                  # @create_context_memory
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3064
	ldx.w	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a2, $a1, 0
	ld.w	$a3, $a2, 264
	ori	$a4, $zero, 1
	move	$a1, $a0
	bne	$a3, $a4, .LBB0_2
# %bb.1:
	ld.w	$a1, $a2, 268
.LBB0_2:
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(num_mb_per_slice)
	st.w	$a1, $a2, %pc_lo12(num_mb_per_slice)
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	div.w	$a0, $a0, $a1
	pcalau12i	$s2, %pc_hi20(number_of_slices)
	st.w	$a0, $s2, %pc_lo12(number_of_slices)
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(initialized)
	st.d	$a0, $s3, %pc_lo12(initialized)
	bnez	$a0, .LBB0_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_4:
	ori	$a0, $zero, 24
	ori	$s4, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(model_number)
	st.d	$a0, $s5, %pc_lo12(model_number)
	bnez	$a0, .LBB0_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_6:                                # %.preheader144
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$fp, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	move	$s6, $zero
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addi.d	$s6, $s6, 8
	beq	$s6, $s4, .LBB0_28
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(initialized)
	stx.d	$a0, $a1, $s6
	bnez	$a0, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(model_number)
	stx.d	$a0, $a1, $s6
	bnez	$a0, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $s2, %pc_lo12(number_of_slices)
	slli.d	$s1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(initialized)
	ldx.d	$a1, $a1, $s6
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(number_of_slices)
	slli.d	$s1, $a0, 2
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(model_number)
	ldx.d	$a1, $a1, $s6
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(number_of_slices)
	slli.d	$s1, $a0, 2
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(initialized)
	ldx.d	$a1, $a1, $s6
	st.d	$a0, $a1, 8
	bnez	$a0, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(number_of_slices)
	slli.d	$s1, $a0, 2
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(model_number)
	ldx.d	$a1, $a1, $s6
	st.d	$a0, $a1, 8
	bnez	$a0, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(number_of_slices)
	slli.d	$s1, $a0, 2
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(initialized)
	ldx.d	$a1, $a1, $s6
	st.d	$a0, $a1, 16
	bnez	$a0, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(number_of_slices)
	slli.d	$s1, $a0, 2
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(model_number)
	ldx.d	$a1, $a1, $s6
	st.d	$a0, $a1, 16
	bnez	$a0, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(number_of_slices)
	slli.d	$s1, $a0, 2
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(initialized)
	ldx.d	$a1, $a1, $s6
	st.d	$a0, $a1, 24
	bnez	$a0, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(number_of_slices)
	slli.d	$s1, $a0, 2
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(model_number)
	ldx.d	$a1, $a1, $s6
	st.d	$a0, $a1, 24
	bnez	$a0, .LBB0_7
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	b	.LBB0_7
.LBB0_28:                               # %.preheader34
	ld.w	$a0, $s2, %pc_lo12(number_of_slices)
	blez	$a0, .LBB0_64
# %bb.29:                               # %.lr.ph
	ld.d	$a0, $s3, %pc_lo12(initialized)
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a3, $s2, %pc_lo12(number_of_slices)
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_30
# %bb.31:                               # %._crit_edge
	blez	$a3, .LBB0_64
# %bb.32:                               # %.lr.ph.1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a3, $s2, %pc_lo12(number_of_slices)
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_33
# %bb.34:                               # %._crit_edge.1
	blez	$a3, .LBB0_64
# %bb.35:                               # %.lr.ph.2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a3, $s2, %pc_lo12(number_of_slices)
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_36
# %bb.37:                               # %._crit_edge.2
	blez	$a3, .LBB0_64
# %bb.38:                               # %.lr.ph.3
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 24
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	ld.w	$a2, $s2, %pc_lo12(number_of_slices)
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	blt	$a1, $a2, .LBB0_39
# %bb.40:                               # %.split.us
	blez	$a2, .LBB0_64
# %bb.41:                               # %.lr.ph.151
	ld.d	$a0, $s3, %pc_lo12(initialized)
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a3, $s2, %pc_lo12(number_of_slices)
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_42
# %bb.43:                               # %._crit_edge.155
	blez	$a3, .LBB0_64
# %bb.44:                               # %.lr.ph.1.1
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 8
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a3, $s2, %pc_lo12(number_of_slices)
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_45
# %bb.46:                               # %._crit_edge.1.1
	blez	$a3, .LBB0_64
# %bb.47:                               # %.lr.ph.2.1
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 16
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_48:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a3, $s2, %pc_lo12(number_of_slices)
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_48
# %bb.49:                               # %._crit_edge.2.1
	blez	$a3, .LBB0_64
# %bb.50:                               # %.lr.ph.3.1
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 24
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	ld.w	$a2, $s2, %pc_lo12(number_of_slices)
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	blt	$a1, $a2, .LBB0_51
# %bb.52:                               # %.split.us.1
	blez	$a2, .LBB0_64
# %bb.53:                               # %.lr.ph.256
	ld.d	$a0, $s3, %pc_lo12(initialized)
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_54:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a3, $s2, %pc_lo12(number_of_slices)
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_54
# %bb.55:                               # %._crit_edge.260
	blez	$a3, .LBB0_64
# %bb.56:                               # %.lr.ph.1.2
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 8
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_57:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a3, $s2, %pc_lo12(number_of_slices)
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_57
# %bb.58:                               # %._crit_edge.1.2
	blez	$a3, .LBB0_64
# %bb.59:                               # %.lr.ph.2.2
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 16
	move	$a2, $zero
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a3, $s2, %pc_lo12(number_of_slices)
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_60
# %bb.61:                               # %._crit_edge.2.2
	blez	$a3, .LBB0_64
# %bb.62:                               # %.lr.ph.3.2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 24
	move	$a1, $zero
.LBB0_63:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	ld.w	$a2, $s2, %pc_lo12(number_of_slices)
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	blt	$a1, $a2, .LBB0_63
.LBB0_64:                               # %.preheader.preheader
	ori	$fp, $zero, 1016
	pcalau12i	$a0, %pc_hi20(probability)
	addi.d	$s0, $a0, %pc_lo12(probability)
	lu12i.w	$a0, 330231
	ori	$a0, $a0, 2559
	lu32i.d	$a0, 214035
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fs0, $a0
	pcalau12i	$a0, %pc_hi20(entropy)
	addi.d	$s1, $a0, %pc_lo12(entropy)
	move	$s2, $zero
	ori	$s3, $zero, 504
	.p2align	4, , 16
.LBB0_65:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s0, $fp
	vldi	$vr1, -912
	fsub.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $s0, $s2
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s0, $fp
	fdiv.d	$fa0, $fa0, $fs0
	fstx.d	$fa0, $s1, $s2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs0
	fstx.d	$fa0, $s1, $fp
	addi.d	$fp, $fp, -8
	addi.d	$s2, $s2, 8
	bne	$fp, $s3, .LBB0_65
# %bb.66:
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
	ret
.Lfunc_end0:
	.size	create_context_memory, .Lfunc_end0-create_context_memory
                                        # -- End function
	.globl	free_context_memory             # -- Begin function free_context_memory
	.p2align	5
	.type	free_context_memory,@function
free_context_memory:                    # @free_context_memory
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(initialized)
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(model_number)
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(initialized)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(model_number)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	free_context_memory, .Lfunc_end1-free_context_memory
                                        # -- End function
	.globl	SetCtxModelNumber               # -- Begin function SetCtxModelNumber
	.p2align	5
	.type	SetCtxModelNumber,@function
SetCtxModelNumber:                      # @SetCtxModelNumber
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 20
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB2_2
.LBB2_1:
	stptr.w	$zero, $a0, 15384
	ret
.LBB2_2:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a3, $a1, 5092
	beqz	$a3, .LBB2_5
# %bb.3:
	ldptr.w	$a1, $a0, 15312
	ldptr.d	$a3, $a0, 14216
	pcalau12i	$a4, %pc_hi20(initialized)
	ld.d	$a4, $a4, %pc_lo12(initialized)
	ld.w	$a5, $a3, 12
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a4, $a1
	pcalau12i	$a4, %pc_hi20(num_mb_per_slice)
	ld.w	$a4, $a4, %pc_lo12(num_mb_per_slice)
	slli.d	$a2, $a2, 3
	ldx.d	$a3, $a3, $a2
	div.w	$a5, $a5, $a4
	slli.d	$a4, $a5, 2
	ldx.w	$a6, $a3, $a4
	beqz	$a6, .LBB2_6
.LBB2_4:
	pcalau12i	$a3, %pc_hi20(model_number)
	ld.d	$a3, $a3, %pc_lo12(model_number)
	ldx.d	$a1, $a3, $a1
	ldx.d	$a1, $a1, $a2
	ldx.w	$a1, $a1, $a4
	stptr.w	$a1, $a0, 15384
	ret
.LBB2_5:
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1000
	ldx.w	$a1, $a1, $a2
	stptr.w	$a1, $a0, 15384
	ret
.LBB2_6:
	beqz	$a5, .LBB2_1
# %bb.7:
	addi.w	$a4, $a5, -1
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	bnez	$a3, .LBB2_4
	b	.LBB2_1
.Lfunc_end2:
	.size	SetCtxModelNumber, .Lfunc_end2-SetCtxModelNumber
                                        # -- End function
	.globl	init_contexts                   # -- Begin function init_contexts
	.p2align	5
	.type	init_contexts,@function
init_contexts:                          # @init_contexts
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s1, 0
	ldptr.d	$a0, $a0, 14216
	ld.d	$s2, $a0, 32
	ld.d	$s8, $a0, 40
	pcalau12i	$a0, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$s3, $a0, %pc_lo12(INIT_MB_TYPE_P)
	pcalau12i	$a0, %pc_hi20(INIT_MB_TYPE_I)
	addi.d	$s4, $a0, %pc_lo12(INIT_MB_TYPE_I)
	move	$s5, $zero
	ori	$s6, $zero, 264
	ori	$s7, $zero, 528
	.p2align	4, , 16
.LBB3_1:                                # %.preheader245
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	add.d	$s0, $s2, $s5
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	ldptr.w	$a0, $a0, 15384
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	mul.d	$a0, $a0, $s6
	add.d	$a1, $a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 16
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 32
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 48
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 64
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 80
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 96
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 112
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 128
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 144
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s0, 160
	mul.d	$a2, $a3, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 176
	addi.d	$s3, $s3, 88
	addi.d	$s4, $s4, 88
	bne	$s5, $s7, .LBB3_1
# %bb.2:                                # %.preheader243
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	ldptr.w	$a2, $a0, 15384
	addi.d	$a0, $s2, 528
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	pcalau12i	$a3, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$s3, $a3, %pc_lo12(INIT_B8_TYPE_P)
	masknez	$a3, $s3, $a1
	pcalau12i	$a4, %pc_hi20(INIT_B8_TYPE_I)
	addi.d	$s4, $a4, %pc_lo12(INIT_B8_TYPE_I)
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a3
	ori	$s0, $zero, 144
	mul.d	$a2, $a2, $s0
	add.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 544
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 560
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 576
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 592
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 608
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 624
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 640
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 656
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s2, 672
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 72
	masknez	$a3, $s5, $a2
	addi.d	$s3, $s4, 72
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 688
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 704
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 720
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 736
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 752
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 768
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 784
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 800
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	ldptr.w	$a2, $a0, 15384
	addi.d	$a0, $s2, 816
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	pcalau12i	$a3, %pc_hi20(INIT_MV_RES_P)
	addi.d	$s3, $a3, %pc_lo12(INIT_MV_RES_P)
	masknez	$a3, $s3, $a1
	pcalau12i	$a4, %pc_hi20(INIT_MV_RES_I)
	addi.d	$s4, $a4, %pc_lo12(INIT_MV_RES_I)
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a3
	ori	$s0, $zero, 160
	mul.d	$a2, $a2, $s0
	add.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 832
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 848
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 864
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 880
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 896
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 912
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 928
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 944
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 960
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s2, 976
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 80
	masknez	$a3, $s5, $a2
	addi.d	$s3, $s4, 80
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 992
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1008
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1024
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1040
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1056
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1072
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1088
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1104
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1120
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	ldptr.w	$a2, $a0, 15384
	addi.d	$a0, $s2, 1136
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	pcalau12i	$a3, %pc_hi20(INIT_REF_NO_P)
	addi.d	$s4, $a3, %pc_lo12(INIT_REF_NO_P)
	masknez	$a3, $s4, $a1
	pcalau12i	$a4, %pc_hi20(INIT_REF_NO_I)
	addi.d	$s3, $a4, %pc_lo12(INIT_REF_NO_I)
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	ori	$s0, $zero, 96
	mul.d	$a2, $a2, $s0
	add.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s4, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1152
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s4, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1168
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s4, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1184
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s4, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1200
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s4, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1216
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s2, 1232
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	addi.d	$fp, $s4, 48
	masknez	$a3, $fp, $a2
	ldptr.w	$a1, $a1, 15384
	addi.d	$s3, $s3, 48
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1248
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1264
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1280
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1296
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1312
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s2, 1328
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(INIT_DELTA_QP_P)
	addi.d	$s3, $a3, %pc_lo12(INIT_DELTA_QP_P)
	masknez	$a3, $s3, $a2
	pcalau12i	$a4, %pc_hi20(INIT_DELTA_QP_I)
	addi.d	$fp, $a4, %pc_lo12(INIT_DELTA_QP_I)
	ldptr.w	$a1, $a1, 15384
	maskeqz	$a2, $fp, $a2
	or	$a2, $a2, $a3
	slli.d	$a1, $a1, 5
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $fp, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1344
	slli.d	$a2, $a3, 5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $fp, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1360
	slli.d	$a2, $a3, 5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $fp, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1376
	slli.d	$a2, $a3, 5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s2, 1392
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(INIT_MB_AFF_P)
	addi.d	$s3, $a3, %pc_lo12(INIT_MB_AFF_P)
	masknez	$a3, $s3, $a2
	pcalau12i	$a4, %pc_hi20(INIT_MB_AFF_I)
	addi.d	$fp, $a4, %pc_lo12(INIT_MB_AFF_I)
	ldptr.w	$a1, $a1, 15384
	maskeqz	$a2, $fp, $a2
	or	$a2, $a2, $a3
	slli.d	$a1, $a1, 5
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $fp, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1408
	slli.d	$a2, $a3, 5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $fp, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1424
	slli.d	$a2, $a3, 5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $fp, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1440
	slli.d	$a2, $a3, 5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s2, 1456
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(INIT_TRANSFORM_SIZE_P)
	addi.d	$fp, $a3, %pc_lo12(INIT_TRANSFORM_SIZE_P)
	masknez	$a3, $fp, $a2
	pcalau12i	$a4, %pc_hi20(INIT_TRANSFORM_SIZE_I)
	addi.d	$s3, $a4, %pc_lo12(INIT_TRANSFORM_SIZE_I)
	ldptr.w	$a1, $a1, 15384
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	ori	$s4, $zero, 24
	mul.d	$a1, $a1, $s4
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1472
	mul.d	$a2, $a3, $s4
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s3, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s2, 1488
	mul.d	$a2, $a3, $s4
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(INIT_IPR_P)
	addi.d	$fp, $a2, %pc_lo12(INIT_IPR_P)
	masknez	$a2, $fp, $a1
	pcalau12i	$a3, %pc_hi20(INIT_IPR_I)
	addi.d	$s2, $a3, %pc_lo12(INIT_IPR_I)
	ldptr.w	$a0, $a0, 15384
	maskeqz	$a1, $s2, $a1
	or	$a1, $a1, $a2
	alsl.d	$a1, $a0, $a1, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s2, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 16
	alsl.d	$a1, $a3, $a1, 4
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s8, 32
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(INIT_CIPR_P)
	addi.d	$s2, $a3, %pc_lo12(INIT_CIPR_P)
	masknez	$a3, $s2, $a2
	pcalau12i	$a4, %pc_hi20(INIT_CIPR_I)
	addi.d	$fp, $a4, %pc_lo12(INIT_CIPR_I)
	ldptr.w	$a1, $a1, 15384
	maskeqz	$a2, $fp, $a2
	or	$a2, $a2, $a3
	slli.d	$a1, $a1, 5
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s2, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $fp, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 48
	slli.d	$a2, $a3, 5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s2, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $fp, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 64
	slli.d	$a2, $a3, 5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s2, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $fp, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 80
	slli.d	$a2, $a3, 5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s8, 96
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(INIT_CBP_P)
	addi.d	$s3, $a3, %pc_lo12(INIT_CBP_P)
	masknez	$a3, $s3, $a2
	pcalau12i	$a4, %pc_hi20(INIT_CBP_I)
	addi.d	$s2, $a4, %pc_lo12(INIT_CBP_I)
	ldptr.w	$a1, $a1, 15384
	maskeqz	$a2, $s2, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s2, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 112
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s2, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 128
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s2, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 144
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s8, 160
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	addi.d	$fp, $s3, 32
	masknez	$a3, $fp, $a2
	ldptr.w	$a1, $a1, 15384
	addi.d	$s4, $s2, 32
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 176
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 192
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s4, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 208
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s8, 224
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	addi.d	$fp, $s3, 64
	masknez	$a3, $fp, $a2
	ldptr.w	$a1, $a1, 15384
	addi.d	$s2, $s2, 64
	maskeqz	$a2, $s2, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s2, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 240
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s2, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 256
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s2, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s8, 272
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(INIT_BCBP_P)
	addi.d	$fp, $a0, %pc_lo12(INIT_BCBP_P)
	pcalau12i	$a0, %pc_hi20(INIT_BCBP_I)
	addi.d	$s0, $a0, %pc_lo12(INIT_BCBP_I)
	move	$s2, $zero
	ori	$s3, $zero, 512
	.p2align	4, , 16
.LBB3_3:                                # %.preheader230
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	add.d	$s4, $s8, $s2
	addi.d	$a0, $s4, 288
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $fp, $a2
	maskeqz	$a2, $s0, $a2
	or	$a2, $a2, $a3
	slli.d	$a1, $a1, 8
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s0, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s4, 304
	slli.d	$a2, $a3, 8
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s0, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s4, 320
	slli.d	$a2, $a3, 8
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s0, $a1
	or	$a1, $a0, $a2
	addi.d	$a0, $s4, 336
	slli.d	$a2, $a3, 8
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 64
	addi.d	$fp, $fp, 32
	addi.d	$s0, $s0, 32
	bne	$s2, $s3, .LBB3_3
# %bb.4:                                # %.preheader228.1
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	ldptr.w	$a2, $a0, 15384
	addi.d	$a0, $s8, 928
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	pcalau12i	$a3, %pc_hi20(INIT_MAP_P)
	addi.d	$s2, $a3, %pc_lo12(INIT_MAP_P)
	masknez	$a3, $s2, $a1
	pcalau12i	$a4, %pc_hi20(INIT_MAP_I)
	addi.d	$s3, $a4, %pc_lo12(INIT_MAP_I)
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	ori	$s0, $zero, 960
	mul.d	$a2, $a2, $s0
	add.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 944
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 960
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 976
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 992
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1008
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1024
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1040
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1056
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1072
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1088
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1104
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1120
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1136
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1152
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s8, 1168
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s4, $s2, 120
	masknez	$a3, $s4, $a2
	addi.d	$s5, $s3, 120
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1184
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1200
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1216
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1232
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1248
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1264
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1280
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1296
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1312
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1328
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1344
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1360
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1376
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1392
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s8, 1408
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s4, $s2, 240
	masknez	$a3, $s4, $a2
	addi.d	$s5, $s3, 240
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1424
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1440
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1456
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1472
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1488
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1504
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1520
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1536
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1552
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1568
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1584
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1600
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1616
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1632
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s8, 1648
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s4, $s2, 360
	masknez	$a3, $s4, $a2
	addi.d	$s5, $s3, 360
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1664
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1680
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1696
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1712
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1728
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1744
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1760
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1776
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1792
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1808
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1824
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1840
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1856
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1872
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s5, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s8, 1888
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s4, $s2, 480
	masknez	$a3, $s4, $a2
	addi.d	$s6, $s3, 480
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1904
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1920
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1936
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1952
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1968
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 1984
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 2000
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 2016
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s8, 2032
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$s5, $s8, 2047
	addi.d	$a0, $s5, 1
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 17
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 33
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 49
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 65
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s5, 81
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s4, $s2, 600
	masknez	$a3, $s4, $a2
	addi.d	$s6, $s3, 600
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 97
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 113
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 129
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 145
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 161
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 177
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 193
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 209
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 225
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 241
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 257
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 273
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 289
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 305
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s5, 321
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s4, $s2, 720
	masknez	$a3, $s4, $a2
	addi.d	$s6, $s3, 720
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 337
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 353
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 369
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 385
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 401
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 417
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 433
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 449
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 465
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 481
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 497
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 513
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 529
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 545
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s4, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s5, 561
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s2, $s2, 840
	masknez	$a3, $s2, $a2
	addi.d	$s3, $s3, 840
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 577
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 593
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 609
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 625
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 641
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 657
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 673
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 689
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 705
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 721
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 737
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 753
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 769
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 785
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	ldptr.w	$a2, $a0, 15384
	addi.d	$a0, $s5, 1281
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	pcalau12i	$a3, %pc_hi20(INIT_LAST_P)
	addi.d	$s3, $a3, %pc_lo12(INIT_LAST_P)
	masknez	$a3, $s3, $a1
	pcalau12i	$a4, %pc_hi20(INIT_LAST_I)
	addi.d	$s4, $a4, %pc_lo12(INIT_LAST_I)
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a3
	mul.d	$a2, $a2, $s0
	add.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1297
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1313
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1329
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1345
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1361
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1377
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1393
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1409
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1425
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1441
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1457
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1473
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1489
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1505
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s5, 1521
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s2, $s3, 120
	masknez	$a3, $s2, $a2
	addi.d	$s6, $s4, 120
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1537
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1553
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1569
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1585
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1601
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1617
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1633
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1649
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1665
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1681
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1697
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1713
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1729
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1745
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s5, 1761
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s2, $s3, 240
	masknez	$a3, $s2, $a2
	addi.d	$s6, $s4, 240
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1777
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1793
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1809
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1825
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1841
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1857
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1873
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1889
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1905
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1921
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1937
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1953
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1969
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 1985
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	addi.d	$a0, $s5, 2001
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s6, $s3, 360
	masknez	$a3, $s6, $a2
	addi.d	$s7, $s4, 360
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 2017
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	addi.d	$a0, $s5, 2033
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	lu12i.w	$fp, 1
	add.d	$a0, $s8, $fp
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 16
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 32
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 48
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 64
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 80
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 96
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 112
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 128
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 144
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 160
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 176
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $fp, 192
	add.d	$a0, $s8, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 480
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 480
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 208
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 224
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 240
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 256
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 272
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 288
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 304
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 320
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 336
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 352
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 368
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 384
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 400
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 416
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $fp, 432
	add.d	$a0, $s8, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 600
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 600
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 448
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 464
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 480
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 496
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 512
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 528
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 544
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 560
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 576
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 592
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 608
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 624
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 640
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 656
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $fp, 672
	add.d	$a0, $s8, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 720
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 720
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 688
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 704
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 720
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 736
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 752
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 768
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 784
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 800
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 816
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 832
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 848
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 864
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 880
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 896
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $fp, 912
	add.d	$a0, $s8, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s3, $s3, 840
	masknez	$a3, $s3, $a2
	addi.d	$s4, $s4, 840
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 928
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 944
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 960
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 976
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 992
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 1008
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 1024
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 1040
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 1056
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 1072
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 1088
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 1104
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 1120
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $fp, 1136
	add.d	$a0, $s8, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ori	$a0, $fp, 1632
	add.d	$s0, $s8, $a0
	ori	$a0, $fp, 1696
	add.d	$s3, $s8, $a0
	ori	$a0, $fp, 1680
	add.d	$s4, $s8, $a0
	ori	$a0, $fp, 1664
	add.d	$s5, $s8, $a0
	ori	$a0, $fp, 1648
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	add.d	$s6, $s8, $a0
	pcalau12i	$a0, %pc_hi20(INIT_ONE_P)
	addi.d	$s7, $a0, %pc_lo12(INIT_ONE_P)
	pcalau12i	$a0, %pc_hi20(INIT_ONE_I)
	addi.d	$s8, $a0, %pc_lo12(INIT_ONE_I)
	move	$s2, $zero
	ori	$fp, $zero, 320
	.p2align	4, , 16
.LBB3_5:                                # %.preheader224
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	add.d	$a0, $s0, $s2
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s7, $a2
	maskeqz	$a2, $s8, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s8, $a1
	or	$a1, $a0, $a2
	add.d	$a0, $s6, $s2
	mul.d	$a2, $a3, $fp
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s8, $a1
	or	$a1, $a0, $a2
	add.d	$a0, $s5, $s2
	mul.d	$a2, $a3, $fp
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s8, $a1
	or	$a1, $a0, $a2
	add.d	$a0, $s4, $s2
	mul.d	$a2, $a3, $fp
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s8, $a1
	or	$a1, $a0, $a2
	add.d	$a0, $s3, $s2
	mul.d	$a2, $a3, $fp
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 80
	addi.d	$s7, $s7, 40
	addi.d	$s8, $s8, 40
	ori	$a0, $zero, 640
	bne	$s2, $a0, .LBB3_5
# %bb.6:                                # %.preheader223
	lu12i.w	$a2, 1
	ori	$a0, $a2, 2432
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s0, $a1, $a0
	ori	$a0, $a2, 2496
	add.d	$s3, $a1, $a0
	ori	$a0, $a2, 2480
	add.d	$s4, $a1, $a0
	ori	$a0, $a2, 2464
	add.d	$s5, $a1, $a0
	ori	$a0, $a2, 2448
	add.d	$s6, $a1, $a0
	pcalau12i	$a0, %pc_hi20(INIT_ABS_P)
	addi.d	$s7, $a0, %pc_lo12(INIT_ABS_P)
	pcalau12i	$a0, %pc_hi20(INIT_ABS_I)
	addi.d	$s8, $a0, %pc_lo12(INIT_ABS_I)
	move	$s2, $zero
	ori	$fp, $zero, 320
	.p2align	4, , 16
.LBB3_7:                                # %.preheader222
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	add.d	$a0, $s0, $s2
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s7, $a2
	maskeqz	$a2, $s8, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s8, $a1
	or	$a1, $a0, $a2
	add.d	$a0, $s6, $s2
	mul.d	$a2, $a3, $fp
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s8, $a1
	or	$a1, $a0, $a2
	add.d	$a0, $s5, $s2
	mul.d	$a2, $a3, $fp
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s8, $a1
	or	$a1, $a0, $a2
	add.d	$a0, $s4, $s2
	mul.d	$a2, $a3, $fp
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	ldptr.w	$a3, $a0, 15384
	maskeqz	$a0, $s8, $a1
	or	$a1, $a0, $a2
	add.d	$a0, $s3, $s2
	mul.d	$a2, $a3, $fp
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 80
	addi.d	$s7, $s7, 40
	addi.d	$s8, $s8, 40
	ori	$a0, $zero, 640
	bne	$s2, $a0, .LBB3_7
# %bb.8:                                # %.preheader220.1
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	lu12i.w	$s2, 1
	ori	$a2, $s2, 3232
	ldptr.w	$a3, $a0, 15384
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a2
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$s3, $a2, %pc_lo12(INIT_FLD_MAP_P)
	masknez	$a2, $s3, $a1
	pcalau12i	$a4, %pc_hi20(INIT_FLD_MAP_I)
	addi.d	$s4, $a4, %pc_lo12(INIT_FLD_MAP_I)
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	ori	$s0, $zero, 960
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3248
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3264
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3280
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3296
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3312
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3328
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3344
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3360
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3376
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3392
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3408
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3424
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3440
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3456
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 3472
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 120
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 120
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3488
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3504
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3520
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3536
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3552
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3568
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3584
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3600
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3616
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3632
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3648
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3664
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3680
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3696
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 3712
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 240
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 240
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3728
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3744
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3760
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3776
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3792
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3808
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3824
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3840
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3856
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3872
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3888
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3904
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3920
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3936
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 3952
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 360
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 360
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3968
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3984
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 4000
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 4016
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 4032
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 4048
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 4064
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 4080
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	lu12i.w	$s2, 2
	add.d	$a0, $fp, $s2
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 16
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 32
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 48
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 64
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 80
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 96
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 480
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 480
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 112
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 128
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 144
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 160
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 176
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 192
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 208
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 224
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 240
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 256
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 272
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 288
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 304
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 320
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 336
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 600
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 600
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 352
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 368
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 384
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 400
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 416
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 432
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 448
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 464
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 480
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 496
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 512
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 528
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 544
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 560
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 576
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 720
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 720
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 592
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 608
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 624
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 640
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 656
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 672
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 688
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 704
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 720
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 736
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 752
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 768
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 784
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 800
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 816
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s3, $s3, 840
	masknez	$a3, $s3, $a2
	addi.d	$s4, $s4, 840
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 832
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 848
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 864
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 880
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 896
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 912
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 928
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 944
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 960
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 976
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 992
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1008
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1024
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1040
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $s2, 1536
	ldptr.w	$a3, $a0, 15384
	add.d	$a0, $fp, $a2
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$s3, $a2, %pc_lo12(INIT_FLD_LAST_P)
	masknez	$a2, $s3, $a1
	pcalau12i	$a4, %pc_hi20(INIT_FLD_LAST_I)
	addi.d	$s4, $a4, %pc_lo12(INIT_FLD_LAST_I)
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	mul.d	$a2, $a3, $s0
	add.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1552
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1568
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1584
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1600
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1616
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1632
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1648
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1664
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1680
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1696
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1712
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1728
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1744
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1760
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 1776
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 120
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 120
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1792
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1808
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1824
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1840
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1856
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1872
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1888
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1904
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1920
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1936
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1952
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1968
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 1984
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2000
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 2016
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 240
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 240
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2032
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2048
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2064
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2080
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2096
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2112
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2128
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2144
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2160
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2176
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2192
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2208
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2224
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2240
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 2256
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 360
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 360
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2272
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2288
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2304
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2320
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2336
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2352
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2368
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2384
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2400
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2416
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2432
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2448
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2464
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2480
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 2496
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 480
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 480
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2512
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2528
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2544
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2560
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2576
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2592
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2608
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2624
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2640
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2656
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2672
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2688
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2704
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2720
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 2736
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 600
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 600
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2752
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2768
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2784
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2800
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2816
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2832
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2848
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2864
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2880
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2896
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2912
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2928
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2944
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2960
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 2976
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s5, $s3, 720
	masknez	$a3, $s5, $a2
	addi.d	$s6, $s4, 720
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 2992
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3008
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3024
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3040
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3056
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3072
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3088
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3104
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3120
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3136
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3152
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3168
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3184
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3200
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 20
	ori	$a0, $s2, 3216
	add.d	$a0, $fp, $a0
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	ldptr.w	$a1, $a1, 15384
	addi.d	$s3, $s3, 840
	masknez	$a3, $s3, $a2
	addi.d	$s4, $s4, 840
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3232
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3248
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3264
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3280
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3296
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3312
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3328
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 56
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3344
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3360
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 72
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3376
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3392
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 88
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3408
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 96
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3424
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 104
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	addi.d	$a0, $a0, -2
	sltui	$a2, $a0, 1
	ori	$a0, $s2, 3440
	add.d	$a0, $fp, $a0
	ldptr.w	$a1, $a1, 15384
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 112
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
	pcaddu18i	$t8, %call36(biari_init_context)
	jr	$t8
.Lfunc_end3:
	.size	init_contexts, .Lfunc_end3-init_contexts
                                        # -- End function
	.globl	XRate                           # -- Begin function XRate
	.p2align	5
	.type	XRate,@function
XRate:                                  # @XRate
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ld.w	$a2, $a2, 36
	ld.d	$a3, $a0, 8
	ld.bu	$a4, $a0, 2
	ld.hu	$a0, $a0, 0
	ld.w	$a5, $a1, 0
	ld.w	$a1, $a1, 4
	sltui	$a4, $a4, 1
	addi.d	$a6, $a0, 64
	ori	$a7, $zero, 63
	sub.d	$a0, $a7, $a0
	masknez	$a6, $a6, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a6
	srai.d	$a4, $a2, 63
	andn	$a2, $a2, $a4
	mul.w	$a2, $a5, $a2
	srli.d	$a2, $a2, 4
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slti	$a2, $a1, 127
	maskeqz	$a1, $a1, $a2
	ori	$a4, $zero, 127
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	srli.d	$a2, $a3, 32
	lu52i.d	$a5, $zero, 1107
	or	$a2, $a2, $a5
	movgr2fr.d	$fa0, $a2
	lu12i.w	$a2, 256
	lu52i.d	$a2, $a2, 1107
	movgr2fr.d	$fa1, $a2
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a2, 275200
	bstrins.d	$a3, $a2, 63, 32
	movgr2fr.d	$fa1, $a3
	fadd.d	$fa0, $fa1, $fa0
	lu52i.d	$a2, $zero, 1018
	movgr2fr.d	$fa1, $a2
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	slli.d	$a2, $a0, 3
	pcalau12i	$a3, %pc_hi20(probability)
	addi.d	$a3, $a3, %pc_lo12(probability)
	fldx.d	$fa1, $a3, $a2
	slli.d	$a2, $a1, 3
	pcalau12i	$a5, %pc_hi20(entropy)
	addi.d	$a5, $a5, %pc_lo12(entropy)
	fldx.d	$fa2, $a5, $a2
	fneg.d	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	movgr2fr.d	$fa3, $zero
	sub.d	$a0, $a4, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa4, $a3, $a0
	xori	$a0, $a1, 127
	slli.d	$a0, $a0, 3
	fldx.d	$fa5, $a5, $a0
	fmadd.d	$fa1, $fa1, $fa2, $fa3
	fneg.d	$fa2, $fa4
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	ret
.Lfunc_end4:
	.size	XRate, .Lfunc_end4-XRate
                                        # -- End function
	.globl	GetCtxModelNumber               # -- Begin function GetCtxModelNumber
	.p2align	5
	.type	GetCtxModelNumber,@function
GetCtxModelNumber:                      # @GetCtxModelNumber
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 280                  # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a3, $a0, 0
	ld.w	$a0, $a3, 20
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 528
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 816
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 1136
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 928
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $a2, 2047
	addi.d	$a0, $a0, 1281
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$t2, 1
	ori	$a0, $t2, 3232
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.hu	$a0, $a1, 1328
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1536
	add.d	$a4, $a2, $a4
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a4, $a0, 64
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ori	$t6, $zero, 63
	ld.bu	$a4, $a1, 1362
	ld.hu	$a5, $a1, 1360
	sub.d	$a0, $t6, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 1368
	sltui	$a4, $a4, 1
	addi.d	$a6, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $a5, $a4
	or	$a4, $a4, $a6
	srli.d	$a5, $a0, 32
	lu52i.d	$t8, $zero, 1107
	or	$a5, $a5, $t8
	movgr2fr.d	$fa1, $a5
	lu12i.w	$a5, 256
	lu52i.d	$a5, $a5, 1107
	movgr2fr.d	$fa0, $a5
	fsub.d	$fa1, $fa1, $fa0
	lu12i.w	$fp, 275200
	bstrins.d	$a0, $fp, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa2, $fa2, $fa1
	lu52i.d	$a0, $zero, 1018
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa3, $fa2, $fa1
	vldi	$vr2, -912
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa4, $fa3, $fa2, $fcc0
	slli.d	$a0, $a4, 3
	pcalau12i	$a5, %pc_hi20(probability)
	addi.d	$s0, $a5, %pc_lo12(probability)
	fldx.d	$fa3, $s0, $a0
	ori	$s1, $zero, 127
	sub.d	$a0, $s1, $a4
	slli.d	$a0, $a0, 3
	fldx.d	$fa5, $s0, $a0
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $fa4, $fa3
	fneg.d	$fa5, $fa5
	ld.bu	$a0, $a1, 1378
	ld.hu	$a4, $a1, 1376
	fmul.d	$fa4, $fa4, $fa5
	ld.d	$a5, $a1, 1384
	sltui	$a0, $a0, 1
	addi.d	$a6, $a4, 64
	sub.d	$a4, $t6, $a4
	masknez	$a6, $a6, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a6
	srli.d	$a4, $a5, 32
	or	$a4, $a4, $t8
	movgr2fr.d	$fa5, $a4
	fsub.d	$fa5, $fa5, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fa6, $a5
	fadd.d	$fa5, $fa6, $fa5
	fmul.d	$fa5, $fa5, $fa1
	fcmp.clt.d	$fcc0, $fa2, $fa5
	fsel	$fa6, $fa5, $fa2, $fcc0
	slli.d	$a4, $a0, 3
	fldx.d	$fa5, $s0, $a4
	sub.d	$a0, $s1, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $s0, $a0
	fneg.d	$fa5, $fa5
	ld.d	$a0, $a2, 8
	fmul.d	$fa5, $fa6, $fa5
	fneg.d	$fa7, $fa7
	fmul.d	$fa6, $fa6, $fa7
	srli.d	$a4, $a0, 32
	or	$a4, $a4, $t8
	movgr2fr.d	$fa7, $a4
	fsub.d	$fa7, $fa7, $fa0
	bstrins.d	$a0, $fp, 63, 32
	movgr2fr.d	$ft0, $a0
	fadd.d	$fa7, $ft0, $fa7
	ld.d	$a0, $a2, 24
	fmul.d	$fa7, $fa7, $fa1
	fcmp.clt.d	$fcc0, $fa2, $fa7
	fsel	$fa7, $fa7, $fa2, $fcc0
	srli.d	$a4, $a0, 32
	or	$a4, $a4, $t8
	movgr2fr.d	$ft0, $a4
	fsub.d	$ft0, $ft0, $fa0
	bstrins.d	$a0, $fp, 63, 32
	movgr2fr.d	$ft1, $a0
	fadd.d	$ft0, $ft1, $ft0
	ld.bu	$a0, $a2, 18
	ld.hu	$a4, $a2, 16
	fmul.d	$ft0, $ft0, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft0
	sltui	$a0, $a0, 1
	sub.d	$a5, $t6, $a4
	addi.d	$a4, $a4, 64
	masknez	$a4, $a4, $a0
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a4
	sub.d	$a4, $s1, $a0
	slli.d	$a4, $a4, 3
	fldx.d	$ft1, $s0, $a4
	slli.d	$a0, $a0, 3
	fldx.d	$ft2, $s0, $a0
	fsel	$ft3, $ft0, $fa2, $fcc0
	fneg.d	$ft0, $ft1
	fmul.d	$ft0, $ft3, $ft0
	fneg.d	$ft1, $ft2
	ld.bu	$a0, $a2, 34
	ld.hu	$a4, $a2, 32
	fmul.d	$ft1, $ft3, $ft1
	ld.d	$a5, $a2, 40
	sltui	$a0, $a0, 1
	addi.d	$a6, $a4, 64
	sub.d	$a4, $t6, $a4
	masknez	$a6, $a6, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a6
	srli.d	$a4, $a5, 32
	or	$a4, $a4, $t8
	movgr2fr.d	$ft2, $a4
	fsub.d	$ft2, $ft2, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft3, $a5
	fadd.d	$ft2, $ft3, $ft2
	fmul.d	$ft2, $ft2, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft2
	slli.d	$a4, $a0, 3
	fldx.d	$ft3, $s0, $a4
	sub.d	$a0, $s1, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$ft4, $s0, $a0
	fsel	$ft5, $ft2, $fa2, $fcc0
	fneg.d	$ft2, $ft3
	fmul.d	$ft2, $ft5, $ft2
	fneg.d	$ft3, $ft4
	ld.bu	$a0, $a2, 50
	ld.hu	$a4, $a2, 48
	fmul.d	$ft3, $ft5, $ft3
	ld.d	$a5, $a2, 56
	sltui	$a0, $a0, 1
	addi.d	$a6, $a4, 64
	sub.d	$a4, $t6, $a4
	masknez	$a6, $a6, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a6
	srli.d	$a4, $a5, 32
	or	$a4, $a4, $t8
	movgr2fr.d	$ft4, $a4
	fsub.d	$ft4, $ft4, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft5, $a5
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $ft4, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft4
	slli.d	$a4, $a0, 3
	fldx.d	$ft5, $s0, $a4
	sub.d	$a0, $s1, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$ft6, $s0, $a0
	fsel	$ft7, $ft4, $fa2, $fcc0
	fneg.d	$ft4, $ft5
	fmul.d	$ft4, $ft7, $ft4
	fneg.d	$ft5, $ft6
	ld.bu	$a0, $a2, 66
	ld.hu	$a4, $a2, 64
	fmul.d	$ft5, $ft7, $ft5
	ld.d	$a5, $a2, 72
	sltui	$a0, $a0, 1
	addi.d	$a6, $a4, 64
	sub.d	$a4, $t6, $a4
	masknez	$a6, $a6, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a6
	srli.d	$a4, $a5, 32
	or	$a4, $a4, $t8
	movgr2fr.d	$ft6, $a4
	fsub.d	$ft6, $ft6, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft7, $a5
	fadd.d	$ft6, $ft7, $ft6
	fmul.d	$ft6, $ft6, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft6
	slli.d	$a4, $a0, 3
	fldx.d	$ft7, $s0, $a4
	sub.d	$a0, $s1, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$ft8, $s0, $a0
	fsel	$ft9, $ft6, $fa2, $fcc0
	fneg.d	$ft6, $ft7
	fmul.d	$ft6, $ft9, $ft6
	fneg.d	$ft7, $ft8
	ld.bu	$a0, $a2, 82
	ld.hu	$a4, $a2, 80
	fmul.d	$ft7, $ft9, $ft7
	ld.d	$a5, $a2, 88
	sltui	$a0, $a0, 1
	addi.d	$a6, $a4, 64
	sub.d	$a4, $t6, $a4
	masknez	$a6, $a6, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a6
	srli.d	$a4, $a5, 32
	or	$a4, $a4, $t8
	movgr2fr.d	$ft8, $a4
	fsub.d	$ft8, $ft8, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft9, $a5
	fadd.d	$ft8, $ft9, $ft8
	fmul.d	$ft8, $ft8, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft8
	slli.d	$a4, $a0, 3
	fldx.d	$ft9, $s0, $a4
	sub.d	$a0, $s1, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$ft10, $s0, $a0
	fsel	$ft11, $ft8, $fa2, $fcc0
	fneg.d	$ft8, $ft9
	fmul.d	$ft8, $ft11, $ft8
	fneg.d	$ft9, $ft10
	fmul.d	$ft9, $ft11, $ft9
	ori	$a0, $t2, 1672
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $t2, 2472
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_MB_TYPE_P+4)
	addi.d	$a7, $a0, %pc_lo12(INIT_MB_TYPE_P+4)
	pcalau12i	$a0, %pc_hi20(INIT_MB_TYPE_I+4)
	addi.d	$s7, $a0, %pc_lo12(INIT_MB_TYPE_I+4)
	pcalau12i	$a0, %pc_hi20(INIT_MB_AFF_P+4)
	addi.d	$a0, $a0, %pc_lo12(INIT_MB_AFF_P+4)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_MB_AFF_I+4)
	addi.d	$a0, $a0, %pc_lo12(INIT_MB_AFF_I+4)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a0, $a0, %pc_lo12(INIT_B8_TYPE_P)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_MV_RES_P)
	addi.d	$a0, $a0, %pc_lo12(INIT_MV_RES_P)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_MAP_P)
	addi.d	$a0, $a0, %pc_lo12(INIT_MAP_P)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_MAP_I)
	addi.d	$a0, $a0, %pc_lo12(INIT_MAP_I)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_LAST_P)
	addi.d	$a0, $a0, %pc_lo12(INIT_LAST_P)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_LAST_I)
	addi.d	$a0, $a0, %pc_lo12(INIT_LAST_I)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a0, $a0, %pc_lo12(INIT_FLD_MAP_P)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_FLD_MAP_I)
	addi.d	$a0, $a0, %pc_lo12(INIT_FLD_MAP_I)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a0, $a0, %pc_lo12(INIT_FLD_LAST_P)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(INIT_FLD_LAST_I)
	addi.d	$a0, $a0, %pc_lo12(INIT_FLD_LAST_I)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $zero
	lu12i.w	$a4, 236040
	ori	$a4, $a4, 3306
	lu32i.d	$a4, -442791
	lu52i.d	$a4, $a4, 1122
	movgr2fr.d	$ft10, $a4
	ori	$s5, $zero, 2
	ori	$s6, $zero, 176
	ori	$t0, $zero, 120
	ori	$t3, $zero, 8
	ori	$a4, $zero, 80
	ori	$s4, $zero, 72
	ori	$a5, $zero, 16
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB5_1:                                # %.preheader391
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_5 Depth 3
                                        #     Child Loop BB5_11 Depth 2
                                        #       Child Loop BB5_13 Depth 3
                                        #     Child Loop BB5_17 Depth 2
                                        #       Child Loop BB5_19 Depth 3
                                        #     Child Loop BB5_23 Depth 2
                                        #     Child Loop BB5_31 Depth 2
                                        #     Child Loop BB5_36 Depth 2
                                        #     Child Loop BB5_38 Depth 2
                                        #     Child Loop BB5_41 Depth 2
                                        #       Child Loop BB5_43 Depth 3
                                        #       Child Loop BB5_42 Depth 3
                                        #     Child Loop BB5_46 Depth 2
                                        #       Child Loop BB5_48 Depth 3
                                        #       Child Loop BB5_47 Depth 3
                                        #     Child Loop BB5_50 Depth 2
                                        #     Child Loop BB5_52 Depth 2
                                        #     Child Loop BB5_55 Depth 2
                                        #       Child Loop BB5_57 Depth 3
                                        #       Child Loop BB5_56 Depth 3
                                        #     Child Loop BB5_60 Depth 2
                                        #       Child Loop BB5_62 Depth 3
                                        #       Child Loop BB5_61 Depth 3
	ld.w	$a5, $a3, 36
	move	$t5, $zero
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a0, $a3, 20
	srai.d	$a6, $a5, 63
	andn	$t7, $a5, $a6
	movgr2fr.d	$ft11, $zero
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	move	$a6, $a7
	move	$ra, $a1
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %.split.us
                                        #   in Loop: Header=BB5_3 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$ra, $ra, 176
	addi.d	$a6, $a6, 88
	addi.d	$s7, $s7, 88
	ori	$a1, $zero, 3
	beq	$t5, $a1, .LBB5_8
.LBB5_3:                                # %.preheader374
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_5 Depth 3
	pcalau12i	$a5, %pc_hi20(entropy)
	addi.d	$t1, $a5, %pc_lo12(entropy)
	move	$a5, $zero
	bne	$a0, $s5, .LBB5_6
# %bb.4:                                # %.preheader374.split.us.preheader
                                        #   in Loop: Header=BB5_3 Depth=2
	move	$s8, $s7
	.p2align	4, , 16
.LBB5_5:                                # %.preheader374.split.us
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $ra, $a5
	ld.d	$s2, $a7, 8
	ld.bu	$a7, $a7, 2
	ldx.hu	$s3, $ra, $a5
	ld.w	$t4, $s8, -4
	ld.w	$a3, $s8, 0
	sltui	$a7, $a7, 1
	addi.d	$a1, $s3, 64
	sub.d	$s3, $t6, $s3
	masknez	$a1, $a1, $a7
	maskeqz	$a7, $s3, $a7
	or	$a1, $a7, $a1
	mul.w	$a7, $t4, $t7
	srli.d	$a7, $a7, 4
	add.w	$a3, $a7, $a3
	srai.d	$a7, $a3, 63
	andn	$a3, $a3, $a7
	slti	$a7, $a3, 127
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $s1, $a7
	or	$a3, $a3, $a7
	srli.d	$a7, $s2, 32
	or	$a7, $a7, $t8
	movgr2fr.d	$ft12, $a7
	fsub.d	$ft12, $ft12, $fa0
	bstrins.d	$s2, $fp, 63, 32
	movgr2fr.d	$ft13, $s2
	fadd.d	$ft12, $ft13, $ft12
	fmul.d	$ft12, $ft12, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft12
	slli.d	$a7, $a1, 3
	fldx.d	$ft13, $s0, $a7
	fsel	$ft12, $ft12, $fa2, $fcc0
	slli.d	$a7, $a3, 3
	fldx.d	$ft14, $t1, $a7
	fneg.d	$ft13, $ft13
	fmul.d	$ft13, $ft12, $ft13
	movgr2fr.d	$ft15, $zero
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a3, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft13, $ft13, $ft14, $ft15
	fneg.d	$ft14, $fs0
	fmul.d	$ft12, $ft12, $ft14
	fmadd.d	$ft12, $ft12, $fs1, $ft13
	fadd.d	$ft11, $ft11, $ft12
	addi.d	$a5, $a5, 16
	addi.d	$s8, $s8, 8
	bne	$a5, $s6, .LBB5_5
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_6:                                # %.preheader374.split.preheader
                                        #   in Loop: Header=BB5_3 Depth=2
	move	$s8, $a6
	.p2align	4, , 16
.LBB5_7:                                # %.preheader374.split
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $ra, $a5
	ld.d	$a3, $a1, 8
	ld.bu	$a1, $a1, 2
	ldx.hu	$a7, $ra, $a5
	ld.w	$t4, $s8, -4
	ld.w	$s2, $s8, 0
	sltui	$a1, $a1, 1
	addi.d	$s3, $a7, 64
	sub.d	$a7, $t6, $a7
	masknez	$s3, $s3, $a1
	maskeqz	$a1, $a7, $a1
	or	$a1, $a1, $s3
	mul.w	$a7, $t4, $t7
	srli.d	$a7, $a7, 4
	add.w	$a7, $a7, $s2
	srai.d	$t4, $a7, 63
	andn	$a7, $a7, $t4
	slti	$t4, $a7, 127
	maskeqz	$a7, $a7, $t4
	masknez	$t4, $s1, $t4
	or	$a7, $a7, $t4
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $t8
	movgr2fr.d	$ft12, $t4
	fsub.d	$ft12, $ft12, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft13, $a3
	fadd.d	$ft12, $ft13, $ft12
	fmul.d	$ft12, $ft12, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft12
	slli.d	$a3, $a1, 3
	fldx.d	$ft13, $s0, $a3
	fsel	$ft12, $ft12, $fa2, $fcc0
	slli.d	$a3, $a7, 3
	fldx.d	$ft14, $t1, $a3
	fneg.d	$ft13, $ft13
	fmul.d	$ft13, $ft12, $ft13
	movgr2fr.d	$ft15, $zero
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a7, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft13, $ft13, $ft14, $ft15
	fneg.d	$ft14, $fs0
	fmul.d	$ft12, $ft12, $ft14
	fmadd.d	$ft12, $ft12, $fs1, $ft13
	fadd.d	$ft11, $ft11, $ft12
	addi.d	$a5, $a5, 16
	addi.d	$s8, $s8, 8
	bne	$a5, $s6, .LBB5_7
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_8:                                # %.preheader390
                                        #   in Loop: Header=BB5_1 Depth=1
	fld.d	$ft12, $t1, 512
	fld.d	$ft13, $t1, 504
	move	$a5, $zero
	ori	$t5, $zero, 1
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_9:                                # %.preheader373.split.us.preheader
                                        #   in Loop: Header=BB5_11 Depth=2
	ld.bu	$a1, $t7, 2
	ld.hu	$a3, $t7, 0
	ld.d	$a5, $t7, 8
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft14, $a3
	fsub.d	$ft14, $ft14, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft15, $a5
	fadd.d	$ft14, $ft15, $ft14
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $s0, $a3
	fmul.d	$ft14, $ft14, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft14
	fsel	$fs0, $ft14, $fa2, $fcc0
	fneg.d	$ft14, $ft15
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	fmul.d	$fs1, $fs0, $ft14
	movgr2fr.d	$ft14, $zero
	fmadd.d	$fs1, $fs1, $ft12, $ft14
	fneg.d	$ft15, $ft15
	fmul.d	$ft15, $fs0, $ft15
	fmadd.d	$ft15, $ft15, $ft13, $fs1
	ld.bu	$a1, $t7, 18
	ld.hu	$a3, $t7, 16
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 24
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 34
	ld.hu	$a3, $t7, 32
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 40
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 50
	ld.hu	$a3, $t7, 48
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 56
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 66
	ld.hu	$a3, $t7, 64
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 72
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 82
	ld.hu	$a3, $t7, 80
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 88
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 98
	ld.hu	$a3, $t7, 96
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 104
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 114
	ld.hu	$a3, $t7, 112
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 120
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 130
	ld.hu	$a3, $t7, 128
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 136
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$ft14, $fs0, $ft12, $ft14
	fneg.d	$fs0, $fs1
	fmul.d	$ft15, $ft15, $fs0
	fmadd.d	$ft14, $ft15, $ft13, $ft14
	fadd.d	$ft11, $ft11, $ft14
.LBB5_10:                               # %.split399.us
                                        #   in Loop: Header=BB5_11 Depth=2
	andi	$a1, $t5, 1
	ori	$a5, $zero, 1
	move	$t5, $zero
	beqz	$a1, .LBB5_14
.LBB5_11:                               # %.preheader373
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_13 Depth 3
	slli.d	$a1, $a5, 7
	alsl.d	$a1, $a5, $a1, 4
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	add.d	$t7, $a3, $a1
	beq	$a0, $s5, .LBB5_9
# %bb.12:                               # %.preheader373.split
                                        #   in Loop: Header=BB5_11 Depth=2
	ld.w	$a1, $s3, 36
	move	$s7, $zero
	srai.d	$a3, $a1, 63
	andn	$s8, $a1, $a3
	slli.d	$a1, $a5, 6
	alsl.d	$a1, $a5, $a1, 3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.d	$ra, $a3, $a1
	.p2align	4, , 16
.LBB5_13:                               #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $ra, $s7
	ld.d	$a3, $t7, 8
	ld.bu	$a5, $t7, 2
	ld.hu	$a6, $t7, 0
	ldx.w	$a7, $ra, $s7
	ld.w	$a1, $a1, 4
	sltui	$a5, $a5, 1
	addi.d	$t4, $a6, 64
	sub.d	$a6, $t6, $a6
	masknez	$t4, $t4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $t4
	mul.w	$a6, $a7, $s8
	srli.d	$a6, $a6, 4
	add.w	$a1, $a6, $a1
	srai.d	$a6, $a1, 63
	andn	$a1, $a1, $a6
	slti	$a6, $a1, 127
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $s1, $a6
	or	$a1, $a1, $a6
	srli.d	$a6, $a3, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft14, $a6
	fsub.d	$ft14, $ft14, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft15, $a3
	fadd.d	$ft14, $ft15, $ft14
	fmul.d	$ft14, $ft14, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft14
	slli.d	$a3, $a5, 3
	fldx.d	$ft15, $s0, $a3
	fsel	$ft14, $ft14, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $t1, $a3
	fneg.d	$ft15, $ft15
	fmul.d	$ft15, $ft14, $ft15
	movgr2fr.d	$fs1, $zero
	sub.d	$a3, $s1, $a5
	slli.d	$a3, $a3, 3
	fldx.d	$fs2, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs3, $t1, $a1
	fmadd.d	$ft15, $ft15, $fs0, $fs1
	fneg.d	$fs0, $fs2
	fmul.d	$ft14, $ft14, $fs0
	fmadd.d	$ft14, $ft14, $fs3, $ft15
	fadd.d	$ft11, $ft11, $ft14
	addi.d	$s7, $s7, 8
	addi.d	$t7, $t7, 16
	bne	$s7, $s4, .LBB5_13
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_14:                               # %.preheader389
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.w	$a0, $s3, 20
	fld.d	$ft12, $t1, 512
	fld.d	$ft13, $t1, 504
	move	$a5, $zero
	ori	$t5, $zero, 1
	b	.LBB5_17
	.p2align	4, , 16
.LBB5_15:                               # %.preheader372.split.us.preheader
                                        #   in Loop: Header=BB5_17 Depth=2
	ld.bu	$a1, $t7, 2
	ld.hu	$a3, $t7, 0
	ld.d	$a5, $t7, 8
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft14, $a3
	fsub.d	$ft14, $ft14, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft15, $a5
	fadd.d	$ft14, $ft15, $ft14
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $s0, $a3
	fmul.d	$ft14, $ft14, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft14
	fsel	$fs0, $ft14, $fa2, $fcc0
	fneg.d	$ft14, $ft15
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	fmul.d	$fs1, $fs0, $ft14
	movgr2fr.d	$ft14, $zero
	fmadd.d	$fs1, $fs1, $ft12, $ft14
	fneg.d	$ft15, $ft15
	fmul.d	$ft15, $fs0, $ft15
	fmadd.d	$ft15, $ft15, $ft13, $fs1
	ld.bu	$a1, $t7, 18
	ld.hu	$a3, $t7, 16
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 24
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 34
	ld.hu	$a3, $t7, 32
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 40
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 50
	ld.hu	$a3, $t7, 48
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 56
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 66
	ld.hu	$a3, $t7, 64
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 72
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 82
	ld.hu	$a3, $t7, 80
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 88
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 98
	ld.hu	$a3, $t7, 96
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 104
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 114
	ld.hu	$a3, $t7, 112
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 120
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 130
	ld.hu	$a3, $t7, 128
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 136
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 146
	ld.hu	$a3, $t7, 144
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 152
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$ft14, $fs0, $ft12, $ft14
	fneg.d	$fs0, $fs1
	fmul.d	$ft15, $ft15, $fs0
	fmadd.d	$ft14, $ft15, $ft13, $ft14
	fadd.d	$ft11, $ft11, $ft14
.LBB5_16:                               # %.split406.us
                                        #   in Loop: Header=BB5_17 Depth=2
	andi	$a1, $t5, 1
	ori	$a5, $zero, 1
	move	$t5, $zero
	beqz	$a1, .LBB5_20
.LBB5_17:                               # %.preheader372
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_19 Depth 3
	alsl.d	$a1, $a5, $a5, 2
	slli.d	$a1, $a1, 5
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	add.d	$t7, $a3, $a1
	beq	$a0, $s5, .LBB5_15
# %bb.18:                               # %.preheader372.split
                                        #   in Loop: Header=BB5_17 Depth=2
	ld.w	$a1, $s3, 36
	move	$s7, $zero
	srai.d	$a3, $a1, 63
	andn	$s8, $a1, $a3
	slli.d	$a1, $a5, 6
	alsl.d	$a1, $a5, $a1, 4
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	add.d	$ra, $a3, $a1
	.p2align	4, , 16
.LBB5_19:                               #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $ra, $s7
	ld.d	$a3, $t7, 8
	ld.bu	$a5, $t7, 2
	ld.hu	$a6, $t7, 0
	ldx.w	$a7, $ra, $s7
	ld.w	$a1, $a1, 4
	sltui	$a5, $a5, 1
	addi.d	$t4, $a6, 64
	sub.d	$a6, $t6, $a6
	masknez	$t4, $t4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $t4
	mul.w	$a6, $a7, $s8
	srli.d	$a6, $a6, 4
	add.w	$a1, $a6, $a1
	srai.d	$a6, $a1, 63
	andn	$a1, $a1, $a6
	slti	$a6, $a1, 127
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $s1, $a6
	or	$a1, $a1, $a6
	srli.d	$a6, $a3, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft14, $a6
	fsub.d	$ft14, $ft14, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft15, $a3
	fadd.d	$ft14, $ft15, $ft14
	fmul.d	$ft14, $ft14, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft14
	slli.d	$a3, $a5, 3
	fldx.d	$ft15, $s0, $a3
	fsel	$ft14, $ft14, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $t1, $a3
	fneg.d	$ft15, $ft15
	fmul.d	$ft15, $ft14, $ft15
	movgr2fr.d	$fs1, $zero
	sub.d	$a3, $s1, $a5
	slli.d	$a3, $a3, 3
	fldx.d	$fs2, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs3, $t1, $a1
	fmadd.d	$ft15, $ft15, $fs0, $fs1
	fneg.d	$fs0, $fs2
	fmul.d	$ft14, $ft14, $fs0
	fmadd.d	$ft14, $ft14, $fs3, $ft15
	fadd.d	$ft11, $ft11, $ft14
	addi.d	$s7, $s7, 8
	addi.d	$t7, $t7, 16
	bne	$s7, $a4, .LBB5_19
	b	.LBB5_16
	.p2align	4, , 16
.LBB5_20:                               # %.preheader388
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.w	$a0, $s3, 20
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	pcalau12i	$a3, %pc_hi20(INIT_REF_NO_P)
	addi.d	$a3, $a3, %pc_lo12(INIT_REF_NO_P)
	fld.d	$ft12, $t1, 512
	fld.d	$ft13, $t1, 504
	move	$a5, $zero
	add.d	$t5, $a3, $a1
	ori	$s7, $zero, 1
	b	.LBB5_23
	.p2align	4, , 16
.LBB5_21:                               # %.preheader371.split
                                        #   in Loop: Header=BB5_23 Depth=2
	ld.w	$a1, $s3, 36
	slli.d	$a3, $a5, 4
	add.d	$ra, $t5, $a3
	srai.d	$a5, $a1, 63
	andn	$s8, $a1, $a5
	ld.d	$a1, $t7, 8
	ld.bu	$a5, $t7, 2
	ld.hu	$a6, $t7, 0
	ldx.w	$a3, $t5, $a3
	ld.w	$a7, $ra, 4
	sltui	$a5, $a5, 1
	addi.d	$t4, $a6, 64
	sub.d	$a6, $t6, $a6
	masknez	$t4, $t4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $t4
	mul.w	$a3, $a3, $s8
	srli.d	$a3, $a3, 4
	add.w	$a3, $a3, $a7
	srai.d	$a6, $a3, 63
	andn	$a3, $a3, $a6
	slti	$a6, $a3, 127
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s1, $a6
	or	$a3, $a3, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft14, $a6
	fsub.d	$ft14, $ft14, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft15, $a1
	fadd.d	$ft14, $ft15, $ft14
	fmul.d	$ft14, $ft14, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft14
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $s0, $a1
	fsel	$fs0, $ft14, $fa2, $fcc0
	slli.d	$a1, $a3, 3
	fldx.d	$fs1, $t1, $a1
	fneg.d	$ft14, $ft15
	fmul.d	$ft15, $fs0, $ft14
	movgr2fr.d	$ft14, $zero
	sub.d	$a1, $s1, $a5
	slli.d	$a1, $a1, 3
	fldx.d	$fs2, $s0, $a1
	xori	$a1, $a3, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs3, $t1, $a1
	fmadd.d	$ft15, $ft15, $fs1, $ft14
	fneg.d	$fs1, $fs2
	fmul.d	$fs0, $fs0, $fs1
	fmadd.d	$ft15, $fs0, $fs3, $ft15
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a1, $t7, 24
	ld.bu	$a3, $t7, 18
	ld.hu	$a5, $t7, 16
	ld.w	$a6, $ra, 8
	ld.w	$a7, $ra, 12
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $s8
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft15, $a6
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$fs0, $a1
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	slli.d	$a1, $a3, 3
	fldx.d	$fs0, $s0, $a1
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$fs1, $t1, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs2, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs3, $t1, $a1
	fmadd.d	$fs0, $fs0, $fs1, $ft14
	fneg.d	$fs1, $fs2
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $fs3, $fs0
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a1, $t7, 40
	ld.bu	$a3, $t7, 34
	ld.hu	$a5, $t7, 32
	ld.w	$a6, $ra, 16
	ld.w	$a7, $ra, 20
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $s8
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft15, $a6
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$fs0, $a1
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	slli.d	$a1, $a3, 3
	fldx.d	$fs0, $s0, $a1
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$fs1, $t1, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs2, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs3, $t1, $a1
	fmadd.d	$fs0, $fs0, $fs1, $ft14
	fneg.d	$fs1, $fs2
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $fs3, $fs0
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a1, $t7, 56
	ld.bu	$a3, $t7, 50
	ld.hu	$a5, $t7, 48
	ld.w	$a6, $ra, 24
	ld.w	$a7, $ra, 28
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $s8
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft15, $a6
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$fs0, $a1
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	slli.d	$a1, $a3, 3
	fldx.d	$fs0, $s0, $a1
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$fs1, $t1, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs2, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs3, $t1, $a1
	fmadd.d	$fs0, $fs0, $fs1, $ft14
	fneg.d	$fs1, $fs2
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $fs3, $fs0
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a1, $t7, 72
	ld.bu	$a3, $t7, 66
	ld.hu	$a5, $t7, 64
	ld.w	$a6, $ra, 32
	ld.w	$a7, $ra, 36
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $s8
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft15, $a6
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$fs0, $a1
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	slli.d	$a1, $a3, 3
	fldx.d	$fs0, $s0, $a1
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$fs1, $t1, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs2, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs3, $t1, $a1
	fmadd.d	$fs0, $fs0, $fs1, $ft14
	fneg.d	$fs1, $fs2
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $fs3, $fs0
	ld.d	$a1, $t7, 88
	ld.bu	$a3, $t7, 82
	ld.hu	$a5, $t7, 80
	ld.w	$a6, $ra, 40
	ld.w	$a7, $ra, 44
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $s8
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$fs0, $a6
	fsub.d	$fs0, $fs0, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$fs1, $a1
	fadd.d	$fs0, $fs1, $fs0
	fmul.d	$fs0, $fs0, $fa1
	fcmp.clt.d	$fcc0, $fa2, $fs0
	slli.d	$a1, $a3, 3
	fldx.d	$fs1, $s0, $a1
	slli.d	$a1, $a5, 3
	fldx.d	$fs2, $t1, $a1
	fsel	$fs0, $fs0, $fa2, $fcc0
	fneg.d	$fs1, $fs1
	fmul.d	$fs1, $fs0, $fs1
	fmadd.d	$ft14, $fs1, $fs2, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs2, $t1, $a1
	fadd.d	$ft11, $ft11, $ft15
	fneg.d	$ft15, $fs1
	fmul.d	$ft15, $fs0, $ft15
	fmadd.d	$ft14, $ft15, $fs2, $ft14
.LBB5_22:                               # %.split413.us
                                        #   in Loop: Header=BB5_23 Depth=2
	fadd.d	$ft11, $ft11, $ft14
	andi	$a1, $s7, 1
	ori	$a5, $zero, 1
	move	$s7, $zero
	beqz	$a1, .LBB5_25
.LBB5_23:                               # %.preheader371
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a5, $a5, $a5, 1
	slli.d	$a1, $a5, 5
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	add.d	$t7, $a3, $a1
	bne	$a0, $s5, .LBB5_21
# %bb.24:                               # %.preheader371.split.us.preheader
                                        #   in Loop: Header=BB5_23 Depth=2
	ld.bu	$a1, $t7, 2
	ld.hu	$a3, $t7, 0
	ld.d	$a5, $t7, 8
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft14, $a3
	fsub.d	$ft14, $ft14, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft15, $a5
	fadd.d	$ft14, $ft15, $ft14
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $s0, $a3
	fmul.d	$ft14, $ft14, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft14
	fsel	$fs0, $ft14, $fa2, $fcc0
	fneg.d	$ft14, $ft15
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	fmul.d	$fs1, $fs0, $ft14
	movgr2fr.d	$ft14, $zero
	fmadd.d	$fs1, $fs1, $ft12, $ft14
	fneg.d	$ft15, $ft15
	fmul.d	$ft15, $fs0, $ft15
	fmadd.d	$ft15, $ft15, $ft13, $fs1
	ld.bu	$a1, $t7, 18
	ld.hu	$a3, $t7, 16
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 24
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 34
	ld.hu	$a3, $t7, 32
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 40
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 50
	ld.hu	$a3, $t7, 48
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 56
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 66
	ld.hu	$a3, $t7, 64
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 72
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$fs0, $fs0, $ft12, $ft14
	fneg.d	$fs1, $fs1
	fmul.d	$ft15, $ft15, $fs1
	fmadd.d	$ft15, $ft15, $ft13, $fs0
	ld.bu	$a1, $t7, 82
	ld.hu	$a3, $t7, 80
	fadd.d	$ft11, $ft11, $ft15
	ld.d	$a5, $t7, 88
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft15, $a3
	fsub.d	$ft15, $ft15, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$fs0, $a5
	fadd.d	$ft15, $fs0, $ft15
	fmul.d	$ft15, $ft15, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft15
	fsel	$ft15, $ft15, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $s0, $a3
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s0, $a1
	fneg.d	$fs0, $fs0
	fmul.d	$fs0, $ft15, $fs0
	fmadd.d	$ft14, $fs0, $ft12, $ft14
	fneg.d	$fs0, $fs1
	fmul.d	$ft15, $ft15, $fs0
	fmadd.d	$ft14, $ft15, $ft13, $ft14
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_25:                               # %.preheader387
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.w	$a0, $s3, 20
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	slli.d	$s7, $a1, 5
	bne	$a0, $s5, .LBB5_27
# %bb.26:                               #   in Loop: Header=BB5_1 Depth=1
	pcalau12i	$a1, %pc_hi20(INIT_DELTA_QP_I)
	addi.d	$t5, $a1, %pc_lo12(INIT_DELTA_QP_I)
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_27:                               #   in Loop: Header=BB5_1 Depth=1
	pcalau12i	$a1, %pc_hi20(INIT_DELTA_QP_P)
	addi.d	$t5, $a1, %pc_lo12(INIT_DELTA_QP_P)
.LBB5_28:                               # %.preheader386
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.bu	$a1, $s2, 1330
	add.d	$a3, $t5, $s7
	ld.d	$a5, $s2, 1336
	ld.w	$a6, $a3, 4
	sltui	$a1, $a1, 1
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	masknez	$a7, $a7, $a1
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a1, $t4, $a1
	or	$a1, $a1, $a7
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slti	$a7, $a6, 127
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s1, $a7
	or	$a6, $a6, $a7
	srli.d	$a7, $a5, 32
	or	$a7, $a7, $t8
	movgr2fr.d	$ft12, $a7
	fsub.d	$ft12, $ft12, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft13, $a5
	fadd.d	$ft12, $ft13, $ft12
	fmul.d	$ft12, $ft12, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft12
	slli.d	$a5, $a1, 3
	fldx.d	$ft13, $s0, $a5
	fsel	$ft12, $ft12, $fa2, $fcc0
	slli.d	$a5, $a6, 3
	fldx.d	$ft14, $t1, $a5
	fneg.d	$ft13, $ft13
	fmul.d	$ft13, $ft12, $ft13
	movgr2fr.d	$ft15, $zero
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a6, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft13, $ft13, $ft14, $ft15
	fneg.d	$ft14, $fs0
	fmul.d	$ft12, $ft12, $ft14
	fmadd.d	$ft12, $ft12, $fs1, $ft13
	ld.bu	$a1, $s2, 1346
	ld.hu	$a5, $s2, 1344
	ld.d	$a6, $s2, 1352
	ld.w	$a3, $a3, 12
	sltui	$a1, $a1, 1
	addi.d	$a7, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$a7, $a7, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a7
	srai.d	$a5, $a3, 63
	andn	$a3, $a3, $a5
	slti	$a5, $a3, 127
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $s1, $a5
	or	$a3, $a3, $a5
	srli.d	$a5, $a6, 32
	or	$a5, $a5, $t8
	movgr2fr.d	$ft13, $a5
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a6, $fp, 63, 32
	movgr2fr.d	$ft14, $a6
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a5, $a1, 3
	fldx.d	$ft14, $s0, $a5
	slli.d	$a5, $a3, 3
	fldx.d	$fs0, $t1, $a5
	fsel	$ft13, $ft13, $fa2, $fcc0
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	fmadd.d	$ft14, $ft14, $fs0, $ft15
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	xori	$a1, $a3, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $t1, $a1
	fadd.d	$ft11, $ft11, $ft12
	fneg.d	$ft12, $ft15
	fmul.d	$ft12, $ft13, $ft12
	fmadd.d	$ft12, $ft12, $fs0, $ft14
	fadd.d	$ft12, $ft11, $ft12
	add.d	$a1, $t5, $s7
	ld.w	$a3, $a1, 20
	move	$t7, $zero
	srai.d	$a5, $a3, 63
	andn	$a3, $a3, $a5
	slti	$a5, $a3, 127
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $s1, $a5
	or	$a3, $a3, $a5
	slli.d	$a5, $a3, 3
	fldx.d	$ft13, $t1, $a5
	xori	$a3, $a3, 127
	slli.d	$a3, $a3, 3
	fldx.d	$ft14, $t1, $a3
	ld.w	$a1, $a1, 28
	movgr2fr.d	$ft11, $zero
	fmadd.d	$ft13, $fa3, $ft13, $ft11
	fmadd.d	$ft13, $fa4, $ft14, $ft13
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$ft14, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $t1, $a1
	fadd.d	$ft12, $ft12, $ft13
	ld.w	$a1, $s3, 36
	fmadd.d	$ft13, $fa5, $ft14, $ft11
	fmadd.d	$ft13, $fa6, $ft15, $ft13
	fadd.d	$ft12, $ft12, $ft13
	srai.d	$a3, $a1, 63
	andn	$t5, $a1, $a3
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 208                   # 8-byte Folded Reload
	ori	$a7, $zero, 48
	b	.LBB5_31
	.p2align	4, , 16
.LBB5_29:                               #   in Loop: Header=BB5_31 Depth=2
	ld.w	$a1, $s8, -4
	ld.w	$a3, $s8, 0
	mul.w	$a1, $a1, $t5
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $t1, $a1
	fmadd.d	$ft13, $ft13, $ft15, $ft11
	fmadd.d	$ft13, $ft14, $fs0, $ft13
	fadd.d	$ft12, $ft12, $ft13
	beq	$t7, $a7, .LBB5_34
.LBB5_30:                               # %.backedge.backedge
                                        #   in Loop: Header=BB5_31 Depth=2
	addi.d	$t7, $t7, 16
	addi.d	$ra, $ra, 8
	addi.d	$s8, $s8, 8
.LBB5_31:                               # %.backedge
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s2, $t7
	ld.bu	$a3, $a1, 1394
	ld.hu	$a5, $a1, 1392
	ld.d	$a1, $a1, 1400
	sltui	$a3, $a3, 1
	addi.d	$a6, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$a6, $a6, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a6
	srli.d	$a5, $a1, 32
	or	$a5, $a5, $t8
	movgr2fr.d	$ft13, $a5
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	fsel	$fs0, $ft13, $fa2, $fcc0
	fneg.d	$ft13, $ft14
	fmul.d	$ft13, $fs0, $ft13
	fneg.d	$ft14, $ft15
	fmul.d	$ft14, $fs0, $ft14
	beq	$a0, $s5, .LBB5_29
# %bb.32:                               # %.thread631
                                        #   in Loop: Header=BB5_31 Depth=2
	ld.w	$a1, $ra, -4
	ld.w	$a3, $ra, 0
	mul.w	$a1, $a1, $t5
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $t1, $a1
	fmadd.d	$ft13, $ft13, $ft15, $ft11
	fmadd.d	$ft13, $ft14, $fs0, $ft13
	fadd.d	$ft12, $ft12, $ft13
	bne	$t7, $a7, .LBB5_30
# %bb.33:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	slli.d	$t7, $ra, 4
	alsl.d	$a1, $ra, $t7, 3
	pcalau12i	$a3, %pc_hi20(INIT_TRANSFORM_SIZE_P)
	addi.d	$a3, $a3, %pc_lo12(INIT_TRANSFORM_SIZE_P)
	add.d	$s8, $a3, $a1
	ld.d	$a5, $s2, 1464
	ld.bu	$a6, $s2, 1458
	ld.hu	$a7, $s2, 1456
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $s8, 4
	sltui	$a6, $a6, 1
	addi.d	$t4, $a7, 64
	sub.d	$a7, $t6, $a7
	masknez	$t4, $t4, $a6
	maskeqz	$a6, $a7, $a6
	or	$a6, $a6, $t4
	mul.w	$a1, $a1, $t5
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft13, $a3
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft14, $a5
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a3, $a6, 3
	fldx.d	$ft14, $s0, $a3
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a3, $s1, $a6
	slli.d	$a3, $a3, 3
	fldx.d	$fs0, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.d	$a1, $s2, 1480
	ld.bu	$a3, $s2, 1474
	ld.hu	$a5, $s2, 1472
	ld.w	$a6, $s8, 8
	ld.w	$a7, $s8, 12
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $t5
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.d	$a1, $s2, 1496
	ld.bu	$a3, $s2, 1490
	ld.hu	$a5, $s2, 1488
	move	$s2, $ra
	ld.w	$a6, $s8, 16
	ld.w	$a7, $s8, 20
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $t5
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	pcalau12i	$a1, %pc_hi20(INIT_IPR_P)
	addi.d	$a5, $a1, %pc_lo12(INIT_IPR_P)
	alsl.d	$a1, $ra, $a5, 4
	ld.bu	$a3, $a2, 2
	ld.hu	$a6, $a2, 0
	ldx.w	$a7, $a5, $t7
	ld.w	$a1, $a1, 4
	sltui	$a3, $a3, 1
	addi.d	$t4, $a6, 64
	sub.d	$a6, $t6, $a6
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a6, $a3, $t4
	mul.w	$a3, $a7, $t5
	srli.d	$a3, $a3, 4
	add.w	$a1, $a3, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$t7, $a1, $a3
	b	.LBB5_35
	.p2align	4, , 16
.LBB5_34:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	slli.d	$a1, $s8, 4
	alsl.d	$a1, $s8, $a1, 3
	pcalau12i	$a3, %pc_hi20(INIT_TRANSFORM_SIZE_I)
	addi.d	$a3, $a3, %pc_lo12(INIT_TRANSFORM_SIZE_I)
	add.d	$t7, $a3, $a1
	ld.bu	$a1, $s2, 1458
	ld.hu	$a3, $s2, 1456
	ld.d	$a5, $s2, 1464
	ld.w	$a6, $t7, 4
	sltui	$a1, $a1, 1
	addi.d	$a7, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a7, $a7, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a7
	slli.d	$a3, $t5, 5
	sub.d	$a3, $a3, $t5
	bstrpick.d	$a3, $a3, 31, 4
	add.w	$a3, $a3, $a6
	srai.d	$a6, $a3, 63
	andn	$a3, $a3, $a6
	slti	$a6, $a3, 127
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s1, $a6
	or	$a3, $a3, $a6
	srli.d	$a6, $a5, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft14, $a5
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a5, $a1, 3
	fldx.d	$ft14, $s0, $a5
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a5, $a3, 3
	fldx.d	$ft15, $t1, $a5
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a3, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.d	$a1, $s2, 1480
	ld.bu	$a3, $s2, 1474
	ld.hu	$a5, $s2, 1472
	ld.w	$a6, $t7, 8
	ld.w	$a7, $t7, 12
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $t5
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.d	$a1, $s2, 1496
	ld.bu	$a3, $s2, 1490
	ld.hu	$a5, $s2, 1488
	move	$s2, $s8
	ld.w	$a6, $t7, 16
	ld.w	$a7, $t7, 20
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $t5
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $t1, $a1
	fneg.d	$ft15, $ft15
	fmul.d	$ft13, $ft13, $ft15
	ld.bu	$a1, $a2, 2
	ld.hu	$a3, $a2, 0
	fmadd.d	$ft13, $ft13, $fs0, $ft14
	fadd.d	$ft12, $ft12, $ft13
	sltui	$a1, $a1, 1
	addi.d	$a5, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $a3, $a1
	or	$a6, $a1, $a5
	alsl.d	$a1, $t5, $t5, 1
	alsl.d	$a1, $a1, $t5, 2
	bstrpick.d	$a1, $a1, 31, 4
	sltui	$a3, $a1, 86
	maskeqz	$a1, $a1, $a3
	ori	$a5, $zero, 86
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	addi.w	$t7, $a1, 41
	pcalau12i	$a1, %pc_hi20(INIT_IPR_I)
	addi.d	$a5, $a1, %pc_lo12(INIT_IPR_I)
.LBB5_35:                               # %.preheader370.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	sub.d	$a1, $s1, $a6
	slli.d	$a1, $a1, 3
	fldx.d	$ft13, $s0, $a1
	addi.d	$a0, $a0, -2
	fneg.d	$ft13, $ft13
	fmul.d	$ft13, $fa7, $ft13
	slli.d	$a1, $a6, 3
	fldx.d	$ft14, $s0, $a1
	xori	$a1, $t7, 127
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	slli.d	$a1, $t7, 3
	fldx.d	$fs0, $t1, $a1
	fmul.d	$ft14, $fa7, $ft14
	alsl.d	$a1, $s2, $a5, 4
	ld.w	$a3, $a1, 8
	fmadd.d	$ft14, $ft14, $fs0, $ft11
	ld.w	$a1, $a1, 12
	fmadd.d	$ft13, $ft13, $ft15, $ft14
	mul.w	$a3, $a3, $t5
	srli.d	$a3, $a3, 4
	add.w	$a1, $a3, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	xori	$a3, $a1, 127
	slli.d	$a3, $a3, 3
	slli.d	$a1, $a1, 3
	fldx.d	$ft14, $t1, $a1
	fldx.d	$ft15, $t1, $a3
	sltui	$t7, $a0, 1
	fadd.d	$ft12, $ft12, $ft13
	fmadd.d	$ft13, $ft1, $ft14, $ft11
	fmadd.d	$ft13, $ft0, $ft15, $ft13
	fadd.d	$ft12, $ft12, $ft13
	pcalau12i	$a0, %pc_hi20(INIT_CIPR_P)
	addi.d	$a0, $a0, %pc_lo12(INIT_CIPR_P)
	masknez	$a0, $a0, $t7
	pcalau12i	$a1, %pc_hi20(INIT_CIPR_I)
	addi.d	$a1, $a1, %pc_lo12(INIT_CIPR_I)
	maskeqz	$a1, $a1, $t7
	or	$a0, $a1, $a0
	ldx.w	$a1, $a0, $s7
	add.d	$a0, $a0, $s7
	ld.w	$a3, $a0, 4
	mul.w	$a1, $a1, $t5
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$ft13, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$ft14, $t1, $a1
	ld.w	$a1, $a0, 8
	fmadd.d	$ft13, $ft2, $ft13, $ft11
	ld.w	$a3, $a0, 12
	fmadd.d	$ft13, $ft3, $ft14, $ft13
	mul.w	$a1, $a1, $t5
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$ft14, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $t1, $a1
	fadd.d	$ft12, $ft12, $ft13
	fmadd.d	$ft13, $ft4, $ft14, $ft11
	ld.w	$a1, $a0, 16
	fmadd.d	$ft13, $ft5, $ft15, $ft13
	ld.w	$a3, $a0, 20
	fadd.d	$ft12, $ft12, $ft13
	mul.w	$a1, $a1, $t5
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$ft13, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$ft14, $t1, $a1
	ld.w	$a1, $a0, 24
	fmadd.d	$ft13, $ft6, $ft13, $ft11
	ld.w	$a0, $a0, 28
	fmadd.d	$ft13, $ft7, $ft14, $ft13
	mul.w	$a1, $a1, $t5
	srli.d	$a1, $a1, 4
	add.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slti	$a1, $a0, 127
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
	slli.d	$a1, $a0, 3
	fldx.d	$ft14, $t1, $a1
	xori	$a0, $a0, 127
	slli.d	$a0, $a0, 3
	fldx.d	$ft15, $t1, $a0
	fadd.d	$ft12, $ft12, $ft13
	ld.w	$a0, $s3, 36
	fmadd.d	$ft13, $ft8, $ft14, $ft11
	fmadd.d	$ft13, $ft9, $ft15, $ft13
	fadd.d	$ft12, $ft12, $ft13
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_CBP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_CBP_P)
	masknez	$a1, $a1, $t7
	pcalau12i	$a3, %pc_hi20(INIT_CBP_I)
	addi.d	$a3, $a3, %pc_lo12(INIT_CBP_I)
	move	$t5, $zero
	maskeqz	$a3, $a3, $t7
	or	$a1, $a3, $a1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$t7, $a1, $a3
	ori	$s2, $zero, 192
	.p2align	4, , 16
.LBB5_36:                               # %.preheader370
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s7, $a2, $t5
	ld.bu	$a1, $s7, 98
	ld.hu	$a3, $s7, 96
	ld.d	$a5, $s7, 104
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft13, $a3
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft14, $a5
	fadd.d	$ft13, $ft14, $ft13
	slli.d	$a3, $a1, 3
	fldx.d	$ft14, $s0, $a3
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	fsel	$ft13, $ft13, $fa2, $fcc0
	fneg.d	$ft14, $ft14
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	ld.w	$a1, $t7, -16
	fmul.d	$ft14, $ft13, $ft14
	ld.w	$a3, $t7, -12
	fneg.d	$ft15, $ft15
	mul.w	$a1, $a1, $a0
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmul.d	$ft13, $ft13, $ft15
	ld.d	$a1, $s7, 120
	fmadd.d	$ft14, $ft14, $fs0, $ft11
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.bu	$a3, $s7, 114
	ld.hu	$a5, $s7, 112
	ld.w	$a6, $t7, -8
	ld.w	$a7, $t7, -4
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.d	$a1, $s7, 136
	ld.bu	$a3, $s7, 130
	ld.hu	$a5, $s7, 128
	ld.w	$a6, $t7, 0
	ld.w	$a7, $t7, 4
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.d	$a1, $s7, 152
	ld.bu	$a3, $s7, 146
	ld.hu	$a5, $s7, 144
	ld.w	$a6, $t7, 8
	ld.w	$a7, $t7, 12
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$t5, $t5, 64
	addi.d	$t7, $t7, 32
	bne	$t5, $s2, .LBB5_36
# %bb.37:                               # %.preheader381
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.w	$a0, $s3, 20
	ld.w	$a1, $s3, 36
	addi.d	$a0, $a0, -2
	sltui	$a3, $a0, 1
	srai.d	$a0, $a1, 63
	andn	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(INIT_BCBP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_BCBP_P)
	masknez	$a1, $a1, $a3
	pcalau12i	$a5, %pc_hi20(INIT_BCBP_I)
	addi.d	$a5, $a5, %pc_lo12(INIT_BCBP_I)
	move	$t5, $zero
	maskeqz	$a3, $a5, $a3
	or	$a1, $a3, $a1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	add.d	$t7, $a1, $a3
	ori	$s2, $zero, 512
	.p2align	4, , 16
.LBB5_38:                               # %.preheader369
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s7, $a2, $t5
	ld.bu	$a1, $s7, 290
	ld.hu	$a3, $s7, 288
	ld.d	$a5, $s7, 296
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft13, $a3
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft14, $a5
	fadd.d	$ft13, $ft14, $ft13
	slli.d	$a3, $a1, 3
	fldx.d	$ft14, $s0, $a3
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	fsel	$ft13, $ft13, $fa2, $fcc0
	fneg.d	$ft14, $ft14
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	ld.w	$a1, $t7, -16
	fmul.d	$ft14, $ft13, $ft14
	ld.w	$a3, $t7, -12
	fneg.d	$ft15, $ft15
	mul.w	$a1, $a1, $a0
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmul.d	$ft13, $ft13, $ft15
	ld.d	$a1, $s7, 312
	fmadd.d	$ft14, $ft14, $fs0, $ft11
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.bu	$a3, $s7, 306
	ld.hu	$a5, $s7, 304
	ld.w	$a6, $t7, -8
	ld.w	$a7, $t7, -4
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.d	$a1, $s7, 328
	ld.bu	$a3, $s7, 322
	ld.hu	$a5, $s7, 320
	ld.w	$a6, $t7, 0
	ld.w	$a7, $t7, 4
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.d	$a1, $s7, 344
	ld.bu	$a3, $s7, 338
	ld.hu	$a5, $s7, 336
	ld.w	$a6, $t7, 8
	ld.w	$a7, $t7, 12
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$t5, $t5, 64
	addi.d	$t7, $t7, 32
	bne	$t5, $s2, .LBB5_38
# %bb.39:                               # %.preheader380
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.w	$a1, $s3, 36
	ld.w	$a0, $s3, 20
	move	$t7, $zero
	srai.d	$a3, $a1, 63
	andn	$t5, $a1, $a3
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	b	.LBB5_41
	.p2align	4, , 16
.LBB5_40:                               # %.split444.us
                                        #   in Loop: Header=BB5_41 Depth=2
	addi.d	$t7, $t7, 1
	addi.d	$ra, $ra, 240
	addi.d	$s8, $s8, 120
	addi.d	$s7, $s7, 120
	beq	$t7, $t3, .LBB5_44
.LBB5_41:                               # %.preheader368
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_43 Depth 3
                                        #       Child Loop BB5_42 Depth 3
	move	$a5, $zero
	move	$a6, $ra
	bne	$a0, $s5, .LBB5_43
	.p2align	4, , 16
.LBB5_42:                               # %.preheader368.split.us
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s7, $a5
	ld.d	$a3, $a6, 8
	ld.bu	$a7, $a6, 2
	ld.hu	$t4, $a6, 0
	ldx.w	$s2, $s7, $a5
	ld.w	$a1, $a1, 4
	sltui	$a7, $a7, 1
	addi.d	$s3, $t4, 64
	sub.d	$t4, $t6, $t4
	masknez	$s3, $s3, $a7
	maskeqz	$a7, $t4, $a7
	or	$a7, $a7, $s3
	mul.w	$t4, $s2, $t5
	srli.d	$t4, $t4, 4
	add.w	$a1, $t4, $a1
	srai.d	$t4, $a1, 63
	andn	$a1, $a1, $t4
	slti	$t4, $a1, 127
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $s1, $t4
	or	$a1, $a1, $t4
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $t8
	movgr2fr.d	$ft13, $t4
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft14, $a3
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a3, $a7, 3
	fldx.d	$ft14, $s0, $a3
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a3, $s1, $a7
	slli.d	$a3, $a3, 3
	fldx.d	$fs0, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	bne	$a5, $t0, .LBB5_42
	b	.LBB5_40
	.p2align	4, , 16
.LBB5_43:                               # %.preheader368.split
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s8, $a5
	ld.d	$a3, $a6, 8
	ld.bu	$a7, $a6, 2
	ld.hu	$t4, $a6, 0
	ldx.w	$s2, $s8, $a5
	ld.w	$a1, $a1, 4
	sltui	$a7, $a7, 1
	addi.d	$s3, $t4, 64
	sub.d	$t4, $t6, $t4
	masknez	$s3, $s3, $a7
	maskeqz	$a7, $t4, $a7
	or	$a7, $a7, $s3
	mul.w	$t4, $s2, $t5
	srli.d	$t4, $t4, 4
	add.w	$a1, $t4, $a1
	srai.d	$t4, $a1, 63
	andn	$a1, $a1, $t4
	slti	$t4, $a1, 127
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $s1, $t4
	or	$a1, $a1, $t4
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $t8
	movgr2fr.d	$ft13, $t4
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft14, $a3
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a3, $a7, 3
	fldx.d	$ft14, $s0, $a3
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a3, $s1, $a7
	slli.d	$a3, $a3, 3
	fldx.d	$fs0, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	bne	$a5, $t0, .LBB5_43
	b	.LBB5_40
	.p2align	4, , 16
.LBB5_44:                               # %.preheader379
                                        #   in Loop: Header=BB5_1 Depth=1
	move	$t7, $zero
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_46
	.p2align	4, , 16
.LBB5_45:                               # %.split451.us
                                        #   in Loop: Header=BB5_46 Depth=2
	addi.d	$t7, $t7, 1
	addi.d	$ra, $ra, 240
	addi.d	$s8, $s8, 120
	addi.d	$s7, $s7, 120
	beq	$t7, $t3, .LBB5_49
.LBB5_46:                               # %.preheader367
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_48 Depth 3
                                        #       Child Loop BB5_47 Depth 3
	move	$a5, $zero
	move	$a6, $ra
	bne	$a0, $s5, .LBB5_48
	.p2align	4, , 16
.LBB5_47:                               # %.preheader367.split.us
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s7, $a5
	ld.d	$a3, $a6, 8
	ld.bu	$a7, $a6, 2
	ld.hu	$t4, $a6, 0
	ldx.w	$s2, $s7, $a5
	ld.w	$a1, $a1, 4
	sltui	$a7, $a7, 1
	addi.d	$s3, $t4, 64
	sub.d	$t4, $t6, $t4
	masknez	$s3, $s3, $a7
	maskeqz	$a7, $t4, $a7
	or	$a7, $a7, $s3
	mul.w	$t4, $s2, $t5
	srli.d	$t4, $t4, 4
	add.w	$a1, $t4, $a1
	srai.d	$t4, $a1, 63
	andn	$a1, $a1, $t4
	slti	$t4, $a1, 127
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $s1, $t4
	or	$a1, $a1, $t4
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $t8
	movgr2fr.d	$ft13, $t4
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft14, $a3
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a3, $a7, 3
	fldx.d	$ft14, $s0, $a3
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a3, $s1, $a7
	slli.d	$a3, $a3, 3
	fldx.d	$fs0, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	bne	$a5, $t0, .LBB5_47
	b	.LBB5_45
	.p2align	4, , 16
.LBB5_48:                               # %.preheader367.split
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s8, $a5
	ld.d	$a3, $a6, 8
	ld.bu	$a7, $a6, 2
	ld.hu	$t4, $a6, 0
	ldx.w	$s2, $s8, $a5
	ld.w	$a1, $a1, 4
	sltui	$a7, $a7, 1
	addi.d	$s3, $t4, 64
	sub.d	$t4, $t6, $t4
	masknez	$s3, $s3, $a7
	maskeqz	$a7, $t4, $a7
	or	$a7, $a7, $s3
	mul.w	$t4, $s2, $t5
	srli.d	$t4, $t4, 4
	add.w	$a1, $t4, $a1
	srai.d	$t4, $a1, 63
	andn	$a1, $a1, $t4
	slti	$t4, $a1, 127
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $s1, $t4
	or	$a1, $a1, $t4
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $t8
	movgr2fr.d	$ft13, $t4
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft14, $a3
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a3, $a7, 3
	fldx.d	$ft14, $s0, $a3
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a3, $s1, $a7
	slli.d	$a3, $a3, 3
	fldx.d	$fs0, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	bne	$a5, $t0, .LBB5_48
	b	.LBB5_45
	.p2align	4, , 16
.LBB5_49:                               # %.preheader366.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $s2, 36
	addi.d	$a0, $a0, -2
	sltui	$a3, $a0, 1
	srai.d	$a0, $a1, 63
	andn	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(INIT_ONE_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_ONE_P)
	masknez	$a1, $a1, $a3
	pcalau12i	$a5, %pc_hi20(INIT_ONE_I)
	addi.d	$a5, $a5, %pc_lo12(INIT_ONE_I)
	move	$t5, $zero
	maskeqz	$a3, $a5, $a3
	or	$a1, $a3, $a1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.d	$t7, $a1, $a3
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ori	$ra, $zero, 640
	.p2align	4, , 16
.LBB5_50:                               # %.preheader366
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s7, $a2, $t5
	add.d	$s8, $s3, $t5
	ld.bu	$a1, $s8, -38
	ori	$a3, $t2, 1632
	ldx.hu	$a3, $s7, $a3
	ldptr.d	$a5, $s7, 5736
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft13, $a3
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft14, $a5
	fadd.d	$ft13, $ft14, $ft13
	slli.d	$a3, $a1, 3
	fldx.d	$ft14, $s0, $a3
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	fsel	$ft13, $ft13, $fa2, $fcc0
	fneg.d	$ft14, $ft14
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	ld.w	$a1, $t7, -20
	fmul.d	$ft14, $ft13, $ft14
	ld.w	$a3, $t7, -16
	fneg.d	$ft15, $ft15
	mul.w	$a1, $a1, $a0
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmul.d	$ft13, $ft13, $ft15
	ldptr.d	$a1, $s7, 5752
	fmadd.d	$ft14, $ft14, $fs0, $ft11
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.bu	$a3, $s8, -22
	ori	$a5, $t2, 1648
	ldx.hu	$a5, $s7, $a5
	ld.w	$a6, $t7, -12
	ld.w	$a7, $t7, -8
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ldptr.d	$a1, $s7, 5768
	ld.bu	$a3, $s8, -6
	ori	$a5, $t2, 1664
	ldx.hu	$a5, $s7, $a5
	ld.w	$a6, $t7, -4
	ld.w	$a7, $t7, 0
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ldptr.d	$a1, $s7, 5784
	ld.bu	$a3, $s8, 10
	ori	$a5, $t2, 1680
	ldx.hu	$a5, $s7, $a5
	ld.w	$a6, $t7, 4
	ld.w	$a7, $t7, 8
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ldptr.d	$a1, $s7, 5800
	ld.bu	$a3, $s8, 26
	ori	$a5, $t2, 1696
	ldx.hu	$a5, $s7, $a5
	ld.w	$a6, $t7, 12
	ld.w	$a7, $t7, 16
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$t5, $t5, 80
	addi.d	$t7, $t7, 40
	bne	$t5, $ra, .LBB5_50
# %bb.51:                               # %.preheader377
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.w	$a0, $s2, 20
	ld.w	$a1, $s2, 36
	addi.d	$a0, $a0, -2
	sltui	$a3, $a0, 1
	srai.d	$a0, $a1, 63
	andn	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(INIT_ABS_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_ABS_P)
	masknez	$a1, $a1, $a3
	pcalau12i	$a5, %pc_hi20(INIT_ABS_I)
	addi.d	$a5, $a5, %pc_lo12(INIT_ABS_I)
	move	$t5, $zero
	maskeqz	$a3, $a5, $a3
	or	$a1, $a3, $a1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.d	$t7, $a1, $a3
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_52:                               # %.preheader365
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s7, $a2, $t5
	add.d	$s8, $s3, $t5
	ld.bu	$a1, $s8, -38
	ori	$a3, $t2, 2432
	ldx.hu	$a3, $s7, $a3
	ldptr.d	$a5, $s7, 6536
	sltui	$a1, $a1, 1
	addi.d	$a6, $a3, 64
	sub.d	$a3, $t6, $a3
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a6
	srli.d	$a3, $a5, 32
	or	$a3, $a3, $t8
	movgr2fr.d	$ft13, $a3
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a5, $fp, 63, 32
	movgr2fr.d	$ft14, $a5
	fadd.d	$ft13, $ft14, $ft13
	slli.d	$a3, $a1, 3
	fldx.d	$ft14, $s0, $a3
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	fsel	$ft13, $ft13, $fa2, $fcc0
	fneg.d	$ft14, $ft14
	sub.d	$a1, $s1, $a1
	slli.d	$a1, $a1, 3
	fldx.d	$ft15, $s0, $a1
	ld.w	$a1, $t7, -20
	fmul.d	$ft14, $ft13, $ft14
	ld.w	$a3, $t7, -16
	fneg.d	$ft15, $ft15
	mul.w	$a1, $a1, $a0
	srli.d	$a1, $a1, 4
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slti	$a3, $a1, 127
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s1, $a3
	or	$a1, $a1, $a3
	slli.d	$a3, $a1, 3
	fldx.d	$fs0, $t1, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmul.d	$ft13, $ft13, $ft15
	ldptr.d	$a1, $s7, 6552
	fmadd.d	$ft14, $ft14, $fs0, $ft11
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ld.bu	$a3, $s8, -22
	ori	$a5, $t2, 2448
	ldx.hu	$a5, $s7, $a5
	ld.w	$a6, $t7, -12
	ld.w	$a7, $t7, -8
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ldptr.d	$a1, $s7, 6568
	ld.bu	$a3, $s8, -6
	ori	$a5, $t2, 2464
	ldx.hu	$a5, $s7, $a5
	ld.w	$a6, $t7, -4
	ld.w	$a7, $t7, 0
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ldptr.d	$a1, $s7, 6584
	ld.bu	$a3, $s8, 10
	ori	$a5, $t2, 2480
	ldx.hu	$a5, $s7, $a5
	ld.w	$a6, $t7, 4
	ld.w	$a7, $t7, 8
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	ldptr.d	$a1, $s7, 6600
	ld.bu	$a3, $s8, 26
	ori	$a5, $t2, 2496
	ldx.hu	$a5, $s7, $a5
	ld.w	$a6, $t7, 12
	ld.w	$a7, $t7, 16
	sltui	$a3, $a3, 1
	addi.d	$t4, $a5, 64
	sub.d	$a5, $t6, $a5
	masknez	$t4, $t4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $t4
	mul.w	$a5, $a6, $a0
	srli.d	$a5, $a5, 4
	add.w	$a5, $a5, $a7
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s1, $a6
	or	$a5, $a5, $a6
	srli.d	$a6, $a1, 32
	or	$a6, $a6, $t8
	movgr2fr.d	$ft13, $a6
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a1, $fp, 63, 32
	movgr2fr.d	$ft14, $a1
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a1, $a3, 3
	fldx.d	$ft14, $s0, $a1
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a1, $a5, 3
	fldx.d	$ft15, $t1, $a1
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a1, $s1, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fs0, $s0, $a1
	xori	$a1, $a5, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$t5, $t5, 80
	addi.d	$t7, $t7, 40
	bne	$t5, $ra, .LBB5_52
# %bb.53:                               # %.preheader376
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.w	$a1, $s2, 36
	ld.w	$a0, $s2, 20
	move	$t7, $zero
	srai.d	$a3, $a1, 63
	andn	$t5, $a1, $a3
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 64                    # 8-byte Folded Reload
	b	.LBB5_55
	.p2align	4, , 16
.LBB5_54:                               # %.split472.us
                                        #   in Loop: Header=BB5_55 Depth=2
	addi.d	$t7, $t7, 1
	addi.d	$ra, $ra, 240
	addi.d	$s8, $s8, 120
	addi.d	$s7, $s7, 120
	beq	$t7, $t3, .LBB5_58
.LBB5_55:                               # %.preheader364
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_57 Depth 3
                                        #       Child Loop BB5_56 Depth 3
	move	$a5, $zero
	move	$a6, $ra
	bne	$a0, $s5, .LBB5_57
	.p2align	4, , 16
.LBB5_56:                               # %.preheader364.split.us
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s7, $a5
	ld.d	$a3, $a6, 8
	ld.bu	$a7, $a6, 2
	ld.hu	$t4, $a6, 0
	ldx.w	$s2, $s7, $a5
	ld.w	$a1, $a1, 4
	sltui	$a7, $a7, 1
	addi.d	$s3, $t4, 64
	sub.d	$t4, $t6, $t4
	masknez	$s3, $s3, $a7
	maskeqz	$a7, $t4, $a7
	or	$a7, $a7, $s3
	mul.w	$t4, $s2, $t5
	srli.d	$t4, $t4, 4
	add.w	$a1, $t4, $a1
	srai.d	$t4, $a1, 63
	andn	$a1, $a1, $t4
	slti	$t4, $a1, 127
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $s1, $t4
	or	$a1, $a1, $t4
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $t8
	movgr2fr.d	$ft13, $t4
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft14, $a3
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a3, $a7, 3
	fldx.d	$ft14, $s0, $a3
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a3, $s1, $a7
	slli.d	$a3, $a3, 3
	fldx.d	$fs0, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	bne	$a5, $t0, .LBB5_56
	b	.LBB5_54
	.p2align	4, , 16
.LBB5_57:                               # %.preheader364.split
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s8, $a5
	ld.d	$a3, $a6, 8
	ld.bu	$a7, $a6, 2
	ld.hu	$t4, $a6, 0
	ldx.w	$s2, $s8, $a5
	ld.w	$a1, $a1, 4
	sltui	$a7, $a7, 1
	addi.d	$s3, $t4, 64
	sub.d	$t4, $t6, $t4
	masknez	$s3, $s3, $a7
	maskeqz	$a7, $t4, $a7
	or	$a7, $a7, $s3
	mul.w	$t4, $s2, $t5
	srli.d	$t4, $t4, 4
	add.w	$a1, $t4, $a1
	srai.d	$t4, $a1, 63
	andn	$a1, $a1, $t4
	slti	$t4, $a1, 127
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $s1, $t4
	or	$a1, $a1, $t4
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $t8
	movgr2fr.d	$ft13, $t4
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft14, $a3
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a3, $a7, 3
	fldx.d	$ft14, $s0, $a3
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a3, $s1, $a7
	slli.d	$a3, $a3, 3
	fldx.d	$fs0, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	bne	$a5, $t0, .LBB5_57
	b	.LBB5_54
	.p2align	4, , 16
.LBB5_58:                               # %.preheader375
                                        #   in Loop: Header=BB5_1 Depth=1
	move	$t7, $zero
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_60
	.p2align	4, , 16
.LBB5_59:                               # %.split479.us
                                        #   in Loop: Header=BB5_60 Depth=2
	addi.d	$t7, $t7, 1
	addi.d	$ra, $ra, 240
	addi.d	$s8, $s8, 120
	addi.d	$s7, $s7, 120
	beq	$t7, $t3, .LBB5_63
.LBB5_60:                               # %.preheader
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_62 Depth 3
                                        #       Child Loop BB5_61 Depth 3
	move	$a5, $zero
	move	$a6, $ra
	bne	$a0, $s5, .LBB5_62
	.p2align	4, , 16
.LBB5_61:                               # %.preheader.split.us
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s7, $a5
	ld.d	$a3, $a6, 8
	ld.bu	$a7, $a6, 2
	ld.hu	$t4, $a6, 0
	ldx.w	$s2, $s7, $a5
	ld.w	$a1, $a1, 4
	sltui	$a7, $a7, 1
	addi.d	$s3, $t4, 64
	sub.d	$t4, $t6, $t4
	masknez	$s3, $s3, $a7
	maskeqz	$a7, $t4, $a7
	or	$a7, $a7, $s3
	mul.w	$t4, $s2, $t5
	srli.d	$t4, $t4, 4
	add.w	$a1, $t4, $a1
	srai.d	$t4, $a1, 63
	andn	$a1, $a1, $t4
	slti	$t4, $a1, 127
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $s1, $t4
	or	$a1, $a1, $t4
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $t8
	movgr2fr.d	$ft13, $t4
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft14, $a3
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a3, $a7, 3
	fldx.d	$ft14, $s0, $a3
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a3, $s1, $a7
	slli.d	$a3, $a3, 3
	fldx.d	$fs0, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	bne	$a5, $t0, .LBB5_61
	b	.LBB5_59
	.p2align	4, , 16
.LBB5_62:                               # %.preheader.split
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s8, $a5
	ld.d	$a3, $a6, 8
	ld.bu	$a7, $a6, 2
	ld.hu	$t4, $a6, 0
	ldx.w	$s2, $s8, $a5
	ld.w	$a1, $a1, 4
	sltui	$a7, $a7, 1
	addi.d	$s3, $t4, 64
	sub.d	$t4, $t6, $t4
	masknez	$s3, $s3, $a7
	maskeqz	$a7, $t4, $a7
	or	$a7, $a7, $s3
	mul.w	$t4, $s2, $t5
	srli.d	$t4, $t4, 4
	add.w	$a1, $t4, $a1
	srai.d	$t4, $a1, 63
	andn	$a1, $a1, $t4
	slti	$t4, $a1, 127
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $s1, $t4
	or	$a1, $a1, $t4
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $t8
	movgr2fr.d	$ft13, $t4
	fsub.d	$ft13, $ft13, $fa0
	bstrins.d	$a3, $fp, 63, 32
	movgr2fr.d	$ft14, $a3
	fadd.d	$ft13, $ft14, $ft13
	fmul.d	$ft13, $ft13, $fa1
	fcmp.clt.d	$fcc0, $fa2, $ft13
	slli.d	$a3, $a7, 3
	fldx.d	$ft14, $s0, $a3
	fsel	$ft13, $ft13, $fa2, $fcc0
	slli.d	$a3, $a1, 3
	fldx.d	$ft15, $t1, $a3
	fneg.d	$ft14, $ft14
	fmul.d	$ft14, $ft13, $ft14
	sub.d	$a3, $s1, $a7
	slli.d	$a3, $a3, 3
	fldx.d	$fs0, $s0, $a3
	xori	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $t1, $a1
	fmadd.d	$ft14, $ft14, $ft15, $ft11
	fneg.d	$ft15, $fs0
	fmul.d	$ft13, $ft13, $ft15
	fmadd.d	$ft13, $ft13, $fs1, $ft14
	fadd.d	$ft12, $ft12, $ft13
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	bne	$a5, $t0, .LBB5_62
	b	.LBB5_59
	.p2align	4, , 16
.LBB5_63:                               #   in Loop: Header=BB5_1 Depth=1
	fcmp.cule.d	$fcc0, $ft10, $ft12
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB5_65
# %bb.64:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a6, $a0, 0
	fmov.d	$ft10, $ft12
.LBB5_65:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	beq	$a0, $s5, .LBB5_67
# %bb.66:                               #   in Loop: Header=BB5_1 Depth=1
	addi.d	$a0, $a6, 1
	addi.d	$a7, $a7, 264
	addi.d	$s7, $s7, 264
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 144
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 160
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 32
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 32
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 96
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 256
	st.d	$a5, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 960
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 960
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 960
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 960
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 320
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 960
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 960
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 960
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 960
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	bltu	$a6, $s5, .LBB5_1
.LBB5_67:
	fld.d	$fs3, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end5:
	.size	GetCtxModelNumber, .Lfunc_end5-GetCtxModelNumber
                                        # -- End function
	.globl	store_contexts                  # -- Begin function store_contexts
	.p2align	5
	.type	store_contexts,@function
store_contexts:                         # @store_contexts
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5092
	beqz	$a0, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a2, $a0, 14216
	ld.w	$a1, $a2, 12
	pcalau12i	$a3, %pc_hi20(num_mb_per_slice)
	ld.w	$a3, $a3, %pc_lo12(num_mb_per_slice)
	ldptr.w	$a4, $a0, 15312
	pcalau12i	$a5, %pc_hi20(initialized)
	ld.d	$a5, $a5, %pc_lo12(initialized)
	pcalau12i	$a6, %pc_hi20(model_number)
	ld.d	$a6, $a6, %pc_lo12(model_number)
	ld.w	$a0, $a0, 20
	slli.d	$a4, $a4, 3
	ldx.d	$a5, $a5, $a4
	ldx.d	$a4, $a6, $a4
	div.w	$a3, $a1, $a3
	slli.d	$a0, $a0, 3
	ldx.d	$a5, $a5, $a0
	ldx.d	$a0, $a4, $a0
	ld.d	$a1, $a2, 32
	ld.d	$a2, $a2, 40
	slli.d	$a4, $a3, 2
	ori	$a6, $zero, 1
	alsl.d	$a0, $a3, $a0, 2
	stx.w	$a6, $a5, $a4
	pcaddu18i	$t8, %call36(GetCtxModelNumber)
	jr	$t8
.LBB6_2:
	ret
.Lfunc_end6:
	.size	store_contexts, .Lfunc_end6-store_contexts
                                        # -- End function
	.globl	update_field_frame_contexts     # -- Begin function update_field_frame_contexts
	.p2align	5
	.type	update_field_frame_contexts,@function
update_field_frame_contexts:            # @update_field_frame_contexts
# %bb.0:
	pcalau12i	$a1, %pc_hi20(initialized)
	ld.d	$a3, $a1, %pc_lo12(initialized)
	pcalau12i	$a1, %pc_hi20(model_number)
	ld.d	$a2, $a1, %pc_lo12(model_number)
	pcalau12i	$a1, %pc_hi20(number_of_slices)
	ld.w	$a4, $a1, %pc_lo12(number_of_slices)
	beqz	$a0, .LBB7_13
# %bb.1:                                # %.preheader29
	blez	$a4, .LBB7_25
# %bb.2:                                # %.lr.ph
	ld.d	$a0, $a3, 8
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a2, 8
	ld.d	$a6, $a2, 0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a4, 0
	ld.d	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	move	$a7, $zero
	.p2align	4, , 16
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	slli.d	$t0, $a7, 1
	bstrpick.d	$t0, $t0, 32, 2
	slli.d	$t0, $t0, 2
	ldx.w	$t1, $a0, $t0
	st.w	$t1, $a4, 0
	ldx.w	$t0, $a5, $t0
	st.w	$t0, $a6, 0
	ld.w	$t0, $a1, %pc_lo12(number_of_slices)
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	blt	$a7, $t0, .LBB7_3
# %bb.4:                                # %._crit_edge
	blez	$t0, .LBB7_25
# %bb.5:                                # %.lr.ph.1
	ld.d	$a0, $a3, 8
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a2, 8
	ld.d	$a6, $a2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a4, 8
	ld.d	$a5, $a5, 8
	ld.d	$a6, $a6, 8
	move	$a7, $zero
	.p2align	4, , 16
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	slli.d	$t0, $a7, 1
	bstrpick.d	$t0, $t0, 32, 2
	slli.d	$t0, $t0, 2
	ldx.w	$t1, $a0, $t0
	st.w	$t1, $a4, 0
	ldx.w	$t0, $a5, $t0
	st.w	$t0, $a6, 0
	ld.w	$t0, $a1, %pc_lo12(number_of_slices)
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	blt	$a7, $t0, .LBB7_6
# %bb.7:                                # %._crit_edge.1
	blez	$t0, .LBB7_25
# %bb.8:                                # %.lr.ph.2
	ld.d	$a0, $a3, 8
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a2, 8
	ld.d	$a6, $a2, 0
	ld.d	$a0, $a0, 16
	ld.d	$a4, $a4, 16
	ld.d	$a5, $a5, 16
	ld.d	$a6, $a6, 16
	move	$a7, $zero
	.p2align	4, , 16
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
	slli.d	$t0, $a7, 1
	bstrpick.d	$t0, $t0, 32, 2
	slli.d	$t0, $t0, 2
	ldx.w	$t1, $a0, $t0
	st.w	$t1, $a4, 0
	ldx.w	$t0, $a5, $t0
	st.w	$t0, $a6, 0
	ld.w	$t0, $a1, %pc_lo12(number_of_slices)
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	blt	$a7, $t0, .LBB7_9
# %bb.10:                               # %._crit_edge.2
	blez	$t0, .LBB7_25
# %bb.11:                               # %.lr.ph.3
	ld.d	$a0, $a3, 8
	ld.d	$a3, $a3, 0
	ld.d	$a4, $a2, 8
	ld.d	$a5, $a2, 0
	ld.d	$a0, $a0, 24
	ld.d	$a2, $a3, 24
	ld.d	$a3, $a4, 24
	ld.d	$a4, $a5, 24
	move	$a5, $zero
	.p2align	4, , 16
.LBB7_12:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a6, $a5, 1
	bstrpick.d	$a6, $a6, 32, 2
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $a0, $a6
	st.w	$a7, $a2, 0
	ldx.w	$a6, $a3, $a6
	st.w	$a6, $a4, 0
	ld.w	$a6, $a1, %pc_lo12(number_of_slices)
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	blt	$a5, $a6, .LBB7_12
	b	.LBB7_25
.LBB7_13:                               # %.preheader27
	blez	$a4, .LBB7_25
# %bb.14:                               # %.lr.ph34
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a3, 8
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, 8
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a4, 0
	ld.d	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	move	$a7, $zero
	.p2align	4, , 16
.LBB7_15:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a0, 0
	st.w	$t0, $a4, 0
	ld.w	$t0, $a5, 0
	st.w	$t0, $a6, 0
	ld.w	$t0, $a1, %pc_lo12(number_of_slices)
	addi.d	$a7, $a7, 1
	addi.w	$t1, $t0, 1
	srai.d	$t1, $t1, 1
	addi.d	$a0, $a0, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	blt	$a7, $t1, .LBB7_15
# %bb.16:                               # %._crit_edge35
	blez	$t0, .LBB7_25
# %bb.17:                               # %.lr.ph34.1
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a3, 8
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, 8
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a4, 8
	ld.d	$a5, $a5, 8
	ld.d	$a6, $a6, 8
	move	$a7, $zero
	.p2align	4, , 16
.LBB7_18:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a0, 0
	st.w	$t0, $a4, 0
	ld.w	$t0, $a5, 0
	st.w	$t0, $a6, 0
	ld.w	$t0, $a1, %pc_lo12(number_of_slices)
	addi.d	$a7, $a7, 1
	addi.w	$t1, $t0, 1
	srai.d	$t1, $t1, 1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 8
	blt	$a7, $t1, .LBB7_18
# %bb.19:                               # %._crit_edge35.1
	blez	$t0, .LBB7_25
# %bb.20:                               # %.lr.ph34.2
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a3, 8
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, 8
	ld.d	$a0, $a0, 16
	ld.d	$a4, $a4, 16
	ld.d	$a5, $a5, 16
	ld.d	$a6, $a6, 16
	move	$a7, $zero
	.p2align	4, , 16
.LBB7_21:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a0, 0
	st.w	$t0, $a4, 0
	ld.w	$t0, $a5, 0
	st.w	$t0, $a6, 0
	ld.w	$t0, $a1, %pc_lo12(number_of_slices)
	addi.d	$a7, $a7, 1
	addi.w	$t1, $t0, 1
	srai.d	$t1, $t1, 1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 8
	blt	$a7, $t1, .LBB7_21
# %bb.22:                               # %._crit_edge35.2
	blez	$t0, .LBB7_25
# %bb.23:                               # %.lr.ph34.3
	ld.d	$a0, $a3, 0
	ld.d	$a3, $a3, 8
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a2, 8
	ld.d	$a0, $a0, 24
	ld.d	$a2, $a3, 24
	ld.d	$a3, $a4, 24
	ld.d	$a4, $a5, 24
	move	$a5, $zero
	.p2align	4, , 16
.LBB7_24:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	st.w	$a6, $a2, 0
	ld.w	$a6, $a3, 0
	st.w	$a6, $a4, 0
	ld.w	$a6, $a1, %pc_lo12(number_of_slices)
	addi.d	$a5, $a5, 1
	addi.w	$a6, $a6, 1
	srai.d	$a6, $a6, 1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	blt	$a5, $a6, .LBB7_24
.LBB7_25:                               # %.loopexit
	ret
.Lfunc_end7:
	.size	update_field_frame_contexts, .Lfunc_end7-update_field_frame_contexts
                                        # -- End function
	.type	probability,@object             # @probability
	.data
	.globl	probability
	.p2align	3, 0x0
probability:
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x3fe0000000000000              # double 0.5
	.dword	0x3fde5ffe6d58c8ef              # double 0.474609
	.dword	0x3fdcd51b4fe79ee0              # double 0.45050699999999999
	.dword	0x3fdb5e4606748e47              # double 0.42762899999999998
	.dword	0x3fd9fa76534373f3              # double 0.405912
	.dword	0x3fd8a8bd230b9dc3              # double 0.385299
	.dword	0x3fd7682730c67169              # double 0.365732
	.dword	0x3fd637da61e0c5a8              # double 0.347159
	.dword	0x3fd51704ff43419e              # double 0.32952999999999999
	.dword	0x3fd404d551d68c69              # double 0.31279499999999999
	.dword	0x3fd30096feb4a665              # double 0.29691099999999998
	.dword	0x3fd2098d477bbf94              # double 0.281833
	.dword	0x3fd11f0c34c1a8ac              # double 0.26751999999999998
	.dword	0x3fd040789613d31c              # double 0.25393500000000002
	.dword	0x3fceda5daf07bfe8              # double 0.241039
	.dword	0x3fcd49491f2dc2b1              # double 0.228799
	.dword	0x3fcbcc8de2ac3223              # double 0.21718000000000001
	.dword	0x3fca6327ed84d339              # double 0.206151
	.dword	0x3fc90c1b97353b4b              # double 0.19568199999999999
	.dword	0x3fc7c6759ab6d00b              # double 0.18574399999999999
	.dword	0x3fc6916440f23897              # double 0.176312
	.dword	0x3fc56bfca85caafc              # double 0.16735800000000001
	.dword	0x3fc4557de0d66f0d              # double 0.158859
	.dword	0x3fc34d26fa3fcc9f              # double 0.15079200000000001
	.dword	0x3fc2523704790b85              # double 0.14313400000000001
	.dword	0x3fc1640e9d51b4fe              # double 0.13586599999999999
	.dword	0x3fc081f53825e13b              # double 0.128966
	.dword	0x3fbf56b873797460              # double 0.122417
	.dword	0x3fbdbf487fcb923a              # double 0.1162
	.dword	0x3fbc3c8e25c810a5              # double 0.11029899999999999
	.dword	0x3fbacd7cf5f4e443              # double 0.104698
	.dword	0x3fb9710880d801b4              # double 0.099380999999999997
	.dword	0x3fb82645e4e69f06              # double 0.094334000000000001
	.dword	0x3fb6ec4a4095f245              # double 0.089542999999999998
	.dword	0x3fb5c24c404a72eb              # double 0.084996000000000002
	.dword	0x3fb4a771c970f7ba              # double 0.080680000000000001
	.dword	0x3fb39af1886df82b              # double 0.076582999999999998
	.dword	0x3fb29c12f09d8c6d              # double 0.072693999999999995
	.dword	0x3fb1aa1d755bccaf              # double 0.069001999999999994
	.dword	0x3fb0c47a17f4128c              # double 0.065498000000000001
	.dword	0x3fafd50225742dcf              # double 0.062171999999999998
	.dword	0x3fae37154003254e              # double 0.059013999999999997
	.dword	0x3facae642bf9830e              # double 0.056017999999999998
	.dword	0x3fab397dd00f776c              # double 0.053172999999999998
	.dword	0x3fa9d798d8a979e1              # double 0.050472999999999997
	.dword	0x3fa88787485e3da3              # double 0.047909
	.dword	0x3fa748a159817b96              # double 0.045476000000000003
	.dword	0x3fa619fc2a8869c6              # double 0.043166999999999997
	.dword	0x3fa4faacd9e83e42              # double 0.040974999999999998
	.dword	0x3fa3e9ea14057082              # double 0.038893999999999998
	.dword	0x3fa2e70c1333b96b              # double 0.036919
	.dword	0x3fa1f14983d79075              # double 0.035043999999999999
	.dword	0x3fa107faa044ae86              # double 0.033264000000000002
	.dword	0x3fa02a9930be0ded              # double 0.031574999999999999
	.dword	0x3f9eb0fadf2ecf20              # double 0.029971999999999999
	.dword	0x3f9d21ff2e48e8a7              # double 0.02845
	.dword	0x3f9ba732df505d10              # double 0.027005000000000001
	.dword	0x3f9a3f8982cb20fb              # double 0.025633
	.dword	0x3f98ea7ce0fc2eba              # double 0.024331999999999999
	.dword	0x3f97a67a52ac753e              # double 0.023095999999999998
	.dword	0x3f9672fba01eeed9              # double 0.021923000000000002
	.dword	0x3f954f3775b81301              # double 0.020809999999999999
	.dword	0x3f943a2163fdd65a              # double 0.019753
	.dword	0x3f93333333333333              # double 0.018749999999999999
	.size	probability, 1024

	.type	num_mb_per_slice,@object        # @num_mb_per_slice
	.comm	num_mb_per_slice,4,4
	.type	number_of_slices,@object        # @number_of_slices
	.comm	number_of_slices,4,4
	.type	initialized,@object             # @initialized
	.comm	initialized,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"create_context_memory: initialized"
	.size	.L.str, 35

	.type	model_number,@object            # @model_number
	.comm	model_number,8,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"create_context_memory: model_number"
	.size	.L.str.1, 36

	.type	entropy,@object                 # @entropy
	.comm	entropy,1024,8
	.type	INIT_MB_TYPE_I,@object          # @INIT_MB_TYPE_I
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
INIT_MB_TYPE_I:
	.word	20                              # 0x14
	.word	4294967281                      # 0xfffffff1
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967268                      # 0xffffffe4
	.word	127                             # 0x7f
	.word	4294967273                      # 0xffffffe9
	.word	104                             # 0x68
	.word	4294967290                      # 0xfffffffa
	.word	53                              # 0x35
	.word	4294967295                      # 0xffffffff
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	20                              # 0x14
	.word	4294967281                      # 0xfffffff1
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	74                              # 0x4a
	.word	20                              # 0x14
	.word	4294967281                      # 0xfffffff1
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	74                              # 0x4a
	.word	4294967268                      # 0xffffffe4
	.word	127                             # 0x7f
	.word	4294967273                      # 0xffffffe9
	.word	104                             # 0x68
	.word	4294967290                      # 0xfffffffa
	.word	53                              # 0x35
	.word	4294967295                      # 0xffffffff
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_TYPE_I, 264

	.type	INIT_MB_TYPE_P,@object          # @INIT_MB_TYPE_P
	.p2align	2, 0x0
INIT_MB_TYPE_P:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	23                              # 0x17
	.word	2                               # 0x2
	.word	21                              # 0x15
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	49                              # 0x31
	.word	4294967259                      # 0xffffffdb
	.word	118                             # 0x76
	.word	5                               # 0x5
	.word	57                              # 0x39
	.word	4294967283                      # 0xfffffff3
	.word	78                              # 0x4e
	.word	4294967285                      # 0xfffffff5
	.word	65                              # 0x41
	.word	1                               # 0x1
	.word	62                              # 0x3e
	.word	26                              # 0x1a
	.word	67                              # 0x43
	.word	16                              # 0x10
	.word	90                              # 0x5a
	.word	9                               # 0x9
	.word	104                             # 0x68
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967250                      # 0xffffffd2
	.word	127                             # 0x7f
	.word	4294967276                      # 0xffffffec
	.word	104                             # 0x68
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	18                              # 0x12
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	43                              # 0x2b
	.word	29                              # 0x1d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	22                              # 0x16
	.word	25                              # 0x19
	.word	34                              # 0x22
	.word	0                               # 0x0
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	9                               # 0x9
	.word	4                               # 0x4
	.word	41                              # 0x29
	.word	4294967267                      # 0xffffffe3
	.word	118                             # 0x76
	.word	2                               # 0x2
	.word	65                              # 0x41
	.word	4294967290                      # 0xfffffffa
	.word	71                              # 0x47
	.word	4294967283                      # 0xfffffff3
	.word	79                              # 0x4f
	.word	5                               # 0x5
	.word	52                              # 0x34
	.word	57                              # 0x39
	.word	2                               # 0x2
	.word	41                              # 0x29
	.word	36                              # 0x24
	.word	26                              # 0x1a
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967251                      # 0xffffffd3
	.word	127                             # 0x7f
	.word	4294967281                      # 0xfffffff1
	.word	101                             # 0x65
	.word	4294967292                      # 0xfffffffc
	.word	76                              # 0x4c
	.word	26                              # 0x1a
	.word	34                              # 0x22
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	40                              # 0x28
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	29                              # 0x1d
	.word	16                              # 0x10
	.word	25                              # 0x19
	.word	0                               # 0x0
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967286                      # 0xfffffff6
	.word	51                              # 0x33
	.word	4294967293                      # 0xfffffffd
	.word	62                              # 0x3e
	.word	4294967269                      # 0xffffffe5
	.word	99                              # 0x63
	.word	26                              # 0x1a
	.word	16                              # 0x10
	.word	4294967292                      # 0xfffffffc
	.word	85                              # 0x55
	.word	4294967272                      # 0xffffffe8
	.word	102                             # 0x66
	.word	5                               # 0x5
	.word	57                              # 0x39
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	37                              # 0x25
	.word	42                              # 0x2a
	.word	12                              # 0xc
	.word	97                              # 0x61
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967264                      # 0xffffffe0
	.word	127                             # 0x7f
	.word	4294967274                      # 0xffffffea
	.word	117                             # 0x75
	.word	4294967294                      # 0xfffffffe
	.word	74                              # 0x4a
	.word	20                              # 0x14
	.word	40                              # 0x28
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	29                              # 0x1d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_TYPE_P, 792

	.type	INIT_B8_TYPE_I,@object          # @INIT_B8_TYPE_I
	.p2align	2, 0x0
INIT_B8_TYPE_I:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_B8_TYPE_I, 144

	.type	INIT_B8_TYPE_P,@object          # @INIT_B8_TYPE_P
	.p2align	2, 0x0
INIT_B8_TYPE_P:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	12                              # 0xc
	.word	49                              # 0x31
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	73                              # 0x49
	.word	17                              # 0x11
	.word	50                              # 0x32
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	86                              # 0x56
	.word	4294967279                      # 0xffffffef
	.word	95                              # 0x5f
	.word	4294967290                      # 0xfffffffa
	.word	61                              # 0x3d
	.word	9                               # 0x9
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	50                              # 0x32
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	10                              # 0xa
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	69                              # 0x45
	.word	4294967283                      # 0xfffffff3
	.word	90                              # 0x5a
	.word	0                               # 0x0
	.word	52                              # 0x34
	.word	8                               # 0x8
	.word	43                              # 0x2b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967279                      # 0xffffffef
	.word	73                              # 0x49
	.word	14                              # 0xe
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	93                              # 0x5d
	.word	4294967282                      # 0xfffffff2
	.word	88                              # 0x58
	.word	4294967290                      # 0xfffffffa
	.word	44                              # 0x2c
	.word	4                               # 0x4
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_B8_TYPE_P, 432

	.type	INIT_MV_RES_I,@object           # @INIT_MV_RES_I
	.p2align	2, 0x0
INIT_MV_RES_I:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MV_RES_I, 160

	.type	INIT_MV_RES_P,@object           # @INIT_MV_RES_P
	.p2align	2, 0x0
INIT_MV_RES_P:
	.word	4294967293                      # 0xfffffffd
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	81                              # 0x51
	.word	4294967285                      # 0xfffffff5
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	76                              # 0x4c
	.word	4294967286                      # 0xfffffff6
	.word	94                              # 0x5e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	55                              # 0x37
	.word	7                               # 0x7
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	86                              # 0x56
	.word	2                               # 0x2
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	5                               # 0x5
	.word	54                              # 0x36
	.word	4                               # 0x4
	.word	69                              # 0x45
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	0                               # 0x0
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	82                              # 0x52
	.word	4294967286                      # 0xfffffff6
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	74                              # 0x4a
	.word	4294967290                      # 0xfffffffa
	.word	85                              # 0x55
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	87                              # 0x57
	.word	4294967293                      # 0xfffffffd
	.word	100                             # 0x64
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	4294967289                      # 0xfffffff9
	.word	86                              # 0x56
	.word	4294967291                      # 0xfffffffb
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967285                      # 0xfffffff5
	.word	89                              # 0x59
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967281                      # 0xfffffff1
	.word	103                             # 0x67
	.word	4294967275                      # 0xffffffeb
	.word	116                             # 0x74
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	85                              # 0x55
	.word	4294967283                      # 0xfffffff3
	.word	106                             # 0x6a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	19                              # 0x13
	.word	57                              # 0x39
	.word	20                              # 0x14
	.word	58                              # 0x3a
	.word	4                               # 0x4
	.word	84                              # 0x54
	.word	6                               # 0x6
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	5                               # 0x5
	.word	63                              # 0x3f
	.word	6                               # 0x6
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	90                              # 0x5a
	.word	4294967295                      # 0xffffffff
	.word	101                             # 0x65
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MV_RES_P, 480

	.type	INIT_REF_NO_I,@object           # @INIT_REF_NO_I
	.p2align	2, 0x0
INIT_REF_NO_I:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_REF_NO_I, 96

	.type	INIT_REF_NO_P,@object           # @INIT_REF_NO_P
	.p2align	2, 0x0
INIT_REF_NO_P:
	.word	4294967289                      # 0xfffffff9
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967291                      # 0xfffffffb
	.word	80                              # 0x50
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967295                      # 0xffffffff
	.word	66                              # 0x42
	.word	4294967295                      # 0xffffffff
	.word	77                              # 0x4d
	.word	1                               # 0x1
	.word	70                              # 0x46
	.word	4294967294                      # 0xfffffffe
	.word	86                              # 0x56
	.word	4294967291                      # 0xfffffffb
	.word	72                              # 0x48
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	55                              # 0x37
	.word	4294967292                      # 0xfffffffc
	.word	79                              # 0x4f
	.word	4294967294                      # 0xfffffffe
	.word	75                              # 0x4b
	.word	4294967284                      # 0xfffffff4
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	50                              # 0x32
	.word	1                               # 0x1
	.word	60                              # 0x3c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_REF_NO_P, 288

	.type	INIT_DELTA_QP_I,@object         # @INIT_DELTA_QP_I
	.p2align	2, 0x0
INIT_DELTA_QP_I:
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.size	INIT_DELTA_QP_I, 32

	.type	INIT_DELTA_QP_P,@object         # @INIT_DELTA_QP_P
	.p2align	2, 0x0
INIT_DELTA_QP_P:
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.size	INIT_DELTA_QP_P, 96

	.type	INIT_MB_AFF_I,@object           # @INIT_MB_AFF_I
	.p2align	2, 0x0
INIT_MB_AFF_I:
	.word	0                               # 0x0
	.word	11                              # 0xb
	.word	1                               # 0x1
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_AFF_I, 32

	.type	INIT_MB_AFF_P,@object           # @INIT_MB_AFF_P
	.p2align	2, 0x0
INIT_MB_AFF_P:
	.word	0                               # 0x0
	.word	45                              # 0x2d
	.word	4294967292                      # 0xfffffffc
	.word	78                              # 0x4e
	.word	4294967293                      # 0xfffffffd
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	13                              # 0xd
	.word	15                              # 0xf
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	2                               # 0x2
	.word	80                              # 0x50
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	4294967287                      # 0xfffffff7
	.word	88                              # 0x58
	.word	4294967276                      # 0xffffffec
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_AFF_P, 96

	.type	INIT_TRANSFORM_SIZE_I,@object   # @INIT_TRANSFORM_SIZE_I
	.p2align	2, 0x0
INIT_TRANSFORM_SIZE_I:
	.word	31                              # 0x1f
	.word	21                              # 0x15
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	25                              # 0x19
	.word	50                              # 0x32
	.size	INIT_TRANSFORM_SIZE_I, 24

	.type	INIT_TRANSFORM_SIZE_P,@object   # @INIT_TRANSFORM_SIZE_P
	.p2align	2, 0x0
INIT_TRANSFORM_SIZE_P:
	.word	12                              # 0xc
	.word	40                              # 0x28
	.word	11                              # 0xb
	.word	51                              # 0x33
	.word	14                              # 0xe
	.word	59                              # 0x3b
	.word	25                              # 0x19
	.word	32                              # 0x20
	.word	21                              # 0x15
	.word	49                              # 0x31
	.word	21                              # 0x15
	.word	54                              # 0x36
	.word	21                              # 0x15
	.word	33                              # 0x21
	.word	19                              # 0x13
	.word	50                              # 0x32
	.word	17                              # 0x11
	.word	61                              # 0x3d
	.size	INIT_TRANSFORM_SIZE_P, 72

	.type	INIT_IPR_I,@object              # @INIT_IPR_I
	.p2align	2, 0x0
INIT_IPR_I:
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.size	INIT_IPR_I, 16

	.type	INIT_IPR_P,@object              # @INIT_IPR_P
	.p2align	2, 0x0
INIT_IPR_P:
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.size	INIT_IPR_P, 48

	.type	INIT_CIPR_I,@object             # @INIT_CIPR_I
	.p2align	2, 0x0
INIT_CIPR_I:
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.size	INIT_CIPR_I, 32

	.type	INIT_CIPR_P,@object             # @INIT_CIPR_P
	.p2align	2, 0x0
INIT_CIPR_P:
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.size	INIT_CIPR_P, 96

	.type	INIT_CBP_I,@object              # @INIT_CBP_I
	.p2align	2, 0x0
INIT_CBP_I:
	.word	4294967279                      # 0xffffffef
	.word	127                             # 0x7f
	.word	4294967283                      # 0xfffffff3
	.word	102                             # 0x66
	.word	0                               # 0x0
	.word	82                              # 0x52
	.word	4294967289                      # 0xfffffff9
	.word	74                              # 0x4a
	.word	4294967275                      # 0xffffffeb
	.word	107                             # 0x6b
	.word	4294967269                      # 0xffffffe5
	.word	127                             # 0x7f
	.word	4294967265                      # 0xffffffe1
	.word	127                             # 0x7f
	.word	4294967272                      # 0xffffffe8
	.word	127                             # 0x7f
	.word	4294967278                      # 0xffffffee
	.word	95                              # 0x5f
	.word	4294967269                      # 0xffffffe5
	.word	127                             # 0x7f
	.word	4294967275                      # 0xffffffeb
	.word	114                             # 0x72
	.word	4294967266                      # 0xffffffe2
	.word	127                             # 0x7f
	.size	INIT_CBP_I, 96

	.type	INIT_CBP_P,@object              # @INIT_CBP_P
	.p2align	2, 0x0
INIT_CBP_P:
	.word	4294967269                      # 0xffffffe5
	.word	126                             # 0x7e
	.word	4294967268                      # 0xffffffe4
	.word	98                              # 0x62
	.word	4294967271                      # 0xffffffe7
	.word	101                             # 0x65
	.word	4294967273                      # 0xffffffe9
	.word	67                              # 0x43
	.word	4294967268                      # 0xffffffe4
	.word	82                              # 0x52
	.word	4294967276                      # 0xffffffec
	.word	94                              # 0x5e
	.word	4294967280                      # 0xfffffff0
	.word	83                              # 0x53
	.word	4294967274                      # 0xffffffea
	.word	110                             # 0x6e
	.word	4294967275                      # 0xffffffeb
	.word	91                              # 0x5b
	.word	4294967278                      # 0xffffffee
	.word	102                             # 0x66
	.word	4294967283                      # 0xfffffff3
	.word	93                              # 0x5d
	.word	4294967267                      # 0xffffffe3
	.word	127                             # 0x7f
	.word	4294967257                      # 0xffffffd9
	.word	127                             # 0x7f
	.word	4294967278                      # 0xffffffee
	.word	91                              # 0x5b
	.word	4294967279                      # 0xffffffef
	.word	96                              # 0x60
	.word	4294967270                      # 0xffffffe6
	.word	81                              # 0x51
	.word	4294967261                      # 0xffffffdd
	.word	98                              # 0x62
	.word	4294967272                      # 0xffffffe8
	.word	102                             # 0x66
	.word	4294967273                      # 0xffffffe9
	.word	97                              # 0x61
	.word	4294967269                      # 0xffffffe5
	.word	119                             # 0x77
	.word	4294967272                      # 0xffffffe8
	.word	99                              # 0x63
	.word	4294967275                      # 0xffffffeb
	.word	110                             # 0x6e
	.word	4294967278                      # 0xffffffee
	.word	102                             # 0x66
	.word	4294967260                      # 0xffffffdc
	.word	127                             # 0x7f
	.word	4294967260                      # 0xffffffdc
	.word	127                             # 0x7f
	.word	4294967279                      # 0xffffffef
	.word	91                              # 0x5b
	.word	4294967282                      # 0xfffffff2
	.word	95                              # 0x5f
	.word	4294967271                      # 0xffffffe7
	.word	84                              # 0x54
	.word	4294967271                      # 0xffffffe7
	.word	86                              # 0x56
	.word	4294967284                      # 0xfffffff4
	.word	89                              # 0x59
	.word	4294967279                      # 0xffffffef
	.word	91                              # 0x5b
	.word	4294967265                      # 0xffffffe1
	.word	127                             # 0x7f
	.word	4294967282                      # 0xfffffff2
	.word	76                              # 0x4c
	.word	4294967278                      # 0xffffffee
	.word	103                             # 0x67
	.word	4294967283                      # 0xfffffff3
	.word	90                              # 0x5a
	.word	4294967259                      # 0xffffffdb
	.word	127                             # 0x7f
	.size	INIT_CBP_P, 288

	.type	INIT_BCBP_I,@object             # @INIT_BCBP_I
	.p2align	2, 0x0
INIT_BCBP_I:
	.word	4294967279                      # 0xffffffef
	.word	123                             # 0x7b
	.word	4294967284                      # 0xfffffff4
	.word	115                             # 0x73
	.word	4294967280                      # 0xfffffff0
	.word	122                             # 0x7a
	.word	4294967285                      # 0xfffffff5
	.word	115                             # 0x73
	.word	4294967284                      # 0xfffffff4
	.word	63                              # 0x3f
	.word	4294967294                      # 0xfffffffe
	.word	68                              # 0x44
	.word	4294967281                      # 0xfffffff1
	.word	84                              # 0x54
	.word	4294967283                      # 0xfffffff3
	.word	104                             # 0x68
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	4294967288                      # 0xfffffff8
	.word	93                              # 0x5d
	.word	4294967286                      # 0xfffffff6
	.word	90                              # 0x5a
	.word	4294967266                      # 0xffffffe2
	.word	127                             # 0x7f
	.word	4294967295                      # 0xffffffff
	.word	74                              # 0x4a
	.word	4294967290                      # 0xfffffffa
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	91                              # 0x5b
	.word	4294967276                      # 0xffffffec
	.word	127                             # 0x7f
	.word	4294967292                      # 0xfffffffc
	.word	56                              # 0x38
	.word	4294967291                      # 0xfffffffb
	.word	82                              # 0x52
	.word	4294967289                      # 0xfffffff9
	.word	76                              # 0x4c
	.word	4294967274                      # 0xffffffea
	.word	125                             # 0x7d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_BCBP_I, 256

	.type	INIT_BCBP_P,@object             # @INIT_BCBP_P
	.p2align	2, 0x0
INIT_BCBP_P:
	.word	4294967289                      # 0xfffffff9
	.word	92                              # 0x5c
	.word	4294967291                      # 0xfffffffb
	.word	89                              # 0x59
	.word	4294967289                      # 0xfffffff9
	.word	96                              # 0x60
	.word	4294967283                      # 0xfffffff3
	.word	108                             # 0x6c
	.word	4294967293                      # 0xfffffffd
	.word	46                              # 0x2e
	.word	4294967295                      # 0xffffffff
	.word	65                              # 0x41
	.word	4294967295                      # 0xffffffff
	.word	57                              # 0x39
	.word	4294967287                      # 0xfffffff7
	.word	93                              # 0x5d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	92                              # 0x5c
	.word	4294967288                      # 0xfffffff8
	.word	87                              # 0x57
	.word	4294967273                      # 0xffffffe9
	.word	126                             # 0x7e
	.word	5                               # 0x5
	.word	54                              # 0x36
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	59                              # 0x3b
	.word	6                               # 0x6
	.word	69                              # 0x45
	.word	4294967295                      # 0xffffffff
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967292                      # 0xfffffffc
	.word	69                              # 0x45
	.word	4294967288                      # 0xfffffff8
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	80                              # 0x50
	.word	4294967291                      # 0xfffffffb
	.word	89                              # 0x59
	.word	4294967289                      # 0xfffffff9
	.word	94                              # 0x5e
	.word	4294967292                      # 0xfffffffc
	.word	92                              # 0x5c
	.word	0                               # 0x0
	.word	39                              # 0x27
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	4294967281                      # 0xfffffff1
	.word	84                              # 0x54
	.word	4294967261                      # 0xffffffdd
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	73                              # 0x49
	.word	4294967284                      # 0xfffffff4
	.word	104                             # 0x68
	.word	4294967287                      # 0xfffffff7
	.word	91                              # 0x5b
	.word	4294967265                      # 0xffffffe1
	.word	127                             # 0x7f
	.word	3                               # 0x3
	.word	55                              # 0x37
	.word	7                               # 0x7
	.word	56                              # 0x38
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	8                               # 0x8
	.word	61                              # 0x3d
	.word	4294967293                      # 0xfffffffd
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967289                      # 0xfffffff9
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	11                              # 0xb
	.word	80                              # 0x50
	.word	5                               # 0x5
	.word	76                              # 0x4c
	.word	2                               # 0x2
	.word	84                              # 0x54
	.word	5                               # 0x5
	.word	78                              # 0x4e
	.word	4294967290                      # 0xfffffffa
	.word	55                              # 0x37
	.word	4                               # 0x4
	.word	61                              # 0x3d
	.word	4294967282                      # 0xfffffff2
	.word	83                              # 0x53
	.word	4294967259                      # 0xffffffdb
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	79                              # 0x4f
	.word	4294967285                      # 0xfffffff5
	.word	104                             # 0x68
	.word	4294967285                      # 0xfffffff5
	.word	91                              # 0x5b
	.word	4294967266                      # 0xffffffe2
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	4294967294                      # 0xfffffffe
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	72                              # 0x48
	.word	4294967292                      # 0xfffffffc
	.word	92                              # 0x5c
	.word	4294967290                      # 0xfffffffa
	.word	56                              # 0x38
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	4294967288                      # 0xfffffff8
	.word	71                              # 0x47
	.word	4294967283                      # 0xfffffff3
	.word	98                              # 0x62
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_BCBP_P, 768

	.type	INIT_MAP_I,@object              # @INIT_MAP_I
	.p2align	2, 0x0
INIT_MAP_I:
	.word	4294967289                      # 0xfffffff9
	.word	93                              # 0x5d
	.word	4294967285                      # 0xfffffff5
	.word	87                              # 0x57
	.word	4294967293                      # 0xfffffffd
	.word	77                              # 0x4d
	.word	4294967291                      # 0xfffffffb
	.word	71                              # 0x47
	.word	4294967292                      # 0xfffffffc
	.word	63                              # 0x3f
	.word	4294967292                      # 0xfffffffc
	.word	68                              # 0x44
	.word	4294967284                      # 0xfffffff4
	.word	84                              # 0x54
	.word	4294967289                      # 0xfffffff9
	.word	62                              # 0x3e
	.word	4294967289                      # 0xfffffff9
	.word	65                              # 0x41
	.word	8                               # 0x8
	.word	61                              # 0x3d
	.word	5                               # 0x5
	.word	56                              # 0x38
	.word	4294967294                      # 0xfffffffe
	.word	66                              # 0x42
	.word	1                               # 0x1
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	4294967294                      # 0xfffffffe
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	50                              # 0x32
	.word	7                               # 0x7
	.word	52                              # 0x34
	.word	10                              # 0xa
	.word	35                              # 0x23
	.word	0                               # 0x0
	.word	44                              # 0x2c
	.word	11                              # 0xb
	.word	38                              # 0x26
	.word	1                               # 0x1
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	46                              # 0x2e
	.word	5                               # 0x5
	.word	44                              # 0x2c
	.word	31                              # 0x1f
	.word	17                              # 0x11
	.word	1                               # 0x1
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	50                              # 0x32
	.word	28                              # 0x1c
	.word	19                              # 0x13
	.word	16                              # 0x10
	.word	33                              # 0x21
	.word	14                              # 0xe
	.word	62                              # 0x3e
	.word	4294967279                      # 0xffffffef
	.word	120                             # 0x78
	.word	4294967276                      # 0xffffffec
	.word	112                             # 0x70
	.word	4294967278                      # 0xffffffee
	.word	114                             # 0x72
	.word	4294967285                      # 0xfffffff5
	.word	85                              # 0x55
	.word	4294967281                      # 0xfffffff1
	.word	92                              # 0x5c
	.word	4294967282                      # 0xfffffff2
	.word	89                              # 0x59
	.word	4294967270                      # 0xffffffe6
	.word	71                              # 0x47
	.word	4294967281                      # 0xfffffff1
	.word	81                              # 0x51
	.word	4294967282                      # 0xfffffff2
	.word	80                              # 0x50
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967282                      # 0xfffffff2
	.word	70                              # 0x46
	.word	4294967272                      # 0xffffffe8
	.word	56                              # 0x38
	.word	4294967273                      # 0xffffffe9
	.word	68                              # 0x44
	.word	4294967272                      # 0xffffffe8
	.word	50                              # 0x32
	.word	4294967285                      # 0xfffffff5
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	108                             # 0x6c
	.word	4294967281                      # 0xfffffff1
	.word	100                             # 0x64
	.word	4294967283                      # 0xfffffff3
	.word	101                             # 0x65
	.word	4294967283                      # 0xfffffff3
	.word	91                              # 0x5b
	.word	4294967284                      # 0xfffffff4
	.word	94                              # 0x5e
	.word	4294967286                      # 0xfffffff6
	.word	88                              # 0x58
	.word	4294967280                      # 0xfffffff0
	.word	84                              # 0x54
	.word	4294967286                      # 0xfffffff6
	.word	86                              # 0x56
	.word	4294967289                      # 0xfffffff9
	.word	83                              # 0x53
	.word	4294967283                      # 0xfffffff3
	.word	87                              # 0x57
	.word	4294967277                      # 0xffffffed
	.word	94                              # 0x5e
	.word	1                               # 0x1
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	72                              # 0x48
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	18                              # 0x12
	.word	59                              # 0x3b
	.word	4294967288                      # 0xfffffff8
	.word	102                             # 0x66
	.word	4294967281                      # 0xfffffff1
	.word	100                             # 0x64
	.word	0                               # 0x0
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	75                              # 0x4b
	.word	2                               # 0x2
	.word	72                              # 0x48
	.word	4294967285                      # 0xfffffff5
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	71                              # 0x47
	.word	15                              # 0xf
	.word	46                              # 0x2e
	.word	4294967283                      # 0xfffffff3
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	21                              # 0x15
	.word	37                              # 0x25
	.word	4294967281                      # 0xfffffff1
	.word	72                              # 0x48
	.word	9                               # 0x9
	.word	57                              # 0x39
	.word	16                              # 0x10
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	12                              # 0xc
	.word	72                              # 0x48
	.size	INIT_MAP_I, 960

	.type	INIT_MAP_P,@object              # @INIT_MAP_P
	.p2align	2, 0x0
INIT_MAP_P:
	.word	4294967294                      # 0xfffffffe
	.word	85                              # 0x55
	.word	4294967290                      # 0xfffffffa
	.word	78                              # 0x4e
	.word	4294967295                      # 0xffffffff
	.word	75                              # 0x4b
	.word	4294967289                      # 0xfffffff9
	.word	77                              # 0x4d
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	5                               # 0x5
	.word	50                              # 0x32
	.word	4294967293                      # 0xfffffffd
	.word	68                              # 0x44
	.word	1                               # 0x1
	.word	50                              # 0x32
	.word	6                               # 0x6
	.word	42                              # 0x2a
	.word	4294967292                      # 0xfffffffc
	.word	81                              # 0x51
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	4294967292                      # 0xfffffffc
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	67                              # 0x43
	.word	2                               # 0x2
	.word	57                              # 0x39
	.word	4294967294                      # 0xfffffffe
	.word	76                              # 0x4c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	4                               # 0x4
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	61                              # 0x3d
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	12                              # 0xc
	.word	24                              # 0x18
	.word	13                              # 0xd
	.word	29                              # 0x1d
	.word	13                              # 0xd
	.word	36                              # 0x24
	.word	4294967286                      # 0xfffffff6
	.word	93                              # 0x5d
	.word	4294967289                      # 0xfffffff9
	.word	73                              # 0x49
	.word	4294967294                      # 0xfffffffe
	.word	73                              # 0x49
	.word	13                              # 0xd
	.word	46                              # 0x2e
	.word	9                               # 0x9
	.word	49                              # 0x31
	.word	4294967289                      # 0xfffffff9
	.word	100                             # 0x64
	.word	4294967292                      # 0xfffffffc
	.word	79                              # 0x4f
	.word	4294967289                      # 0xfffffff9
	.word	71                              # 0x47
	.word	4294967291                      # 0xfffffffb
	.word	69                              # 0x45
	.word	4294967287                      # 0xfffffff7
	.word	70                              # 0x46
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967286                      # 0xfffffff6
	.word	68                              # 0x44
	.word	4294967277                      # 0xffffffed
	.word	73                              # 0x49
	.word	4294967284                      # 0xfffffff4
	.word	69                              # 0x45
	.word	4294967280                      # 0xfffffff0
	.word	70                              # 0x46
	.word	4294967281                      # 0xfffffff1
	.word	67                              # 0x43
	.word	4294967276                      # 0xffffffec
	.word	62                              # 0x3e
	.word	4294967277                      # 0xffffffed
	.word	70                              # 0x46
	.word	4294967280                      # 0xfffffff0
	.word	66                              # 0x42
	.word	4294967274                      # 0xffffffea
	.word	65                              # 0x41
	.word	4294967276                      # 0xffffffec
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	53                              # 0x35
	.word	2                               # 0x2
	.word	53                              # 0x35
	.word	5                               # 0x5
	.word	53                              # 0x35
	.word	4294967294                      # 0xfffffffe
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	56                              # 0x38
	.word	4294967283                      # 0xfffffff3
	.word	63                              # 0x3f
	.word	4294967291                      # 0xfffffffb
	.word	60                              # 0x3c
	.word	4294967295                      # 0xffffffff
	.word	62                              # 0x3e
	.word	4                               # 0x4
	.word	57                              # 0x39
	.word	4294967290                      # 0xfffffffa
	.word	69                              # 0x45
	.word	4                               # 0x4
	.word	57                              # 0x39
	.word	14                              # 0xe
	.word	39                              # 0x27
	.word	4                               # 0x4
	.word	51                              # 0x33
	.word	13                              # 0xd
	.word	68                              # 0x44
	.word	3                               # 0x3
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	61                              # 0x3d
	.word	9                               # 0x9
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	7                               # 0x7
	.word	50                              # 0x32
	.word	16                              # 0x10
	.word	39                              # 0x27
	.word	5                               # 0x5
	.word	44                              # 0x2c
	.word	4                               # 0x4
	.word	52                              # 0x34
	.word	11                              # 0xb
	.word	48                              # 0x30
	.word	4294967291                      # 0xfffffffb
	.word	60                              # 0x3c
	.word	4294967295                      # 0xffffffff
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	22                              # 0x16
	.word	33                              # 0x21
	.word	5                               # 0x5
	.word	44                              # 0x2c
	.word	14                              # 0xe
	.word	43                              # 0x2b
	.word	4294967295                      # 0xffffffff
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	60                              # 0x3c
	.word	9                               # 0x9
	.word	69                              # 0x45
	.word	4294967283                      # 0xfffffff3
	.word	103                             # 0x67
	.word	4294967283                      # 0xfffffff3
	.word	91                              # 0x5b
	.word	4294967287                      # 0xfffffff7
	.word	89                              # 0x59
	.word	4294967282                      # 0xfffffff2
	.word	92                              # 0x5c
	.word	4294967288                      # 0xfffffff8
	.word	76                              # 0x4c
	.word	4294967284                      # 0xfffffff4
	.word	87                              # 0x57
	.word	4294967273                      # 0xffffffe9
	.word	110                             # 0x6e
	.word	4294967272                      # 0xffffffe8
	.word	105                             # 0x69
	.word	4294967286                      # 0xfffffff6
	.word	78                              # 0x4e
	.word	4294967276                      # 0xffffffec
	.word	112                             # 0x70
	.word	4294967279                      # 0xffffffef
	.word	99                              # 0x63
	.word	4294967218                      # 0xffffffb2
	.word	127                             # 0x7f
	.word	4294967226                      # 0xffffffba
	.word	127                             # 0x7f
	.word	4294967246                      # 0xffffffce
	.word	127                             # 0x7f
	.word	4294967250                      # 0xffffffd2
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	66                              # 0x42
	.word	4294967291                      # 0xfffffffb
	.word	78                              # 0x4e
	.word	4294967292                      # 0xfffffffc
	.word	71                              # 0x47
	.word	4294967288                      # 0xfffffff8
	.word	72                              # 0x48
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	4294967295                      # 0xffffffff
	.word	55                              # 0x37
	.word	4294967289                      # 0xfffffff9
	.word	70                              # 0x46
	.word	4294967290                      # 0xfffffffa
	.word	75                              # 0x4b
	.word	4294967288                      # 0xfffffff8
	.word	89                              # 0x59
	.word	4294967262                      # 0xffffffde
	.word	119                             # 0x77
	.word	4294967293                      # 0xfffffffd
	.word	75                              # 0x4b
	.word	32                              # 0x20
	.word	20                              # 0x14
	.word	30                              # 0x1e
	.word	22                              # 0x16
	.word	4294967252                      # 0xffffffd4
	.word	127                             # 0x7f
	.word	4294967291                      # 0xfffffffb
	.word	85                              # 0x55
	.word	4294967290                      # 0xfffffffa
	.word	81                              # 0x51
	.word	4294967286                      # 0xfffffff6
	.word	77                              # 0x4d
	.word	4294967289                      # 0xfffffff9
	.word	81                              # 0x51
	.word	4294967279                      # 0xffffffef
	.word	80                              # 0x50
	.word	4294967278                      # 0xffffffee
	.word	73                              # 0x49
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967286                      # 0xfffffff6
	.word	83                              # 0x53
	.word	4294967287                      # 0xfffffff7
	.word	71                              # 0x47
	.word	4294967287                      # 0xfffffff7
	.word	67                              # 0x43
	.word	4294967295                      # 0xffffffff
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967282                      # 0xfffffff2
	.word	66                              # 0x42
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	54                              # 0x36
	.word	4294967291                      # 0xfffffffb
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	4294967295                      # 0xffffffff
	.word	60                              # 0x3c
	.word	4294967293                      # 0xfffffffd
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	67                              # 0x43
	.word	4294967271                      # 0xffffffe7
	.word	84                              # 0x54
	.word	4294967282                      # 0xfffffff2
	.word	74                              # 0x4a
	.word	4294967291                      # 0xfffffffb
	.word	65                              # 0x41
	.word	5                               # 0x5
	.word	52                              # 0x34
	.word	2                               # 0x2
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	4294967287                      # 0xfffffff7
	.word	69                              # 0x45
	.word	4294967285                      # 0xfffffff5
	.word	70                              # 0x46
	.word	18                              # 0x12
	.word	55                              # 0x37
	.word	4294967292                      # 0xfffffffc
	.word	71                              # 0x47
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	41                              # 0x29
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	9                               # 0x9
	.word	32                              # 0x20
	.word	5                               # 0x5
	.word	43                              # 0x2b
	.word	9                               # 0x9
	.word	47                              # 0x2f
	.word	0                               # 0x0
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	51                              # 0x33
	.word	2                               # 0x2
	.word	46                              # 0x2e
	.word	19                              # 0x13
	.word	38                              # 0x26
	.word	4294967292                      # 0xfffffffc
	.word	66                              # 0x42
	.word	15                              # 0xf
	.word	38                              # 0x26
	.word	12                              # 0xc
	.word	42                              # 0x2a
	.word	9                               # 0x9
	.word	34                              # 0x22
	.word	0                               # 0x0
	.word	89                              # 0x59
	.word	4294967292                      # 0xfffffffc
	.word	86                              # 0x56
	.word	4294967284                      # 0xfffffff4
	.word	88                              # 0x58
	.word	4294967291                      # 0xfffffffb
	.word	82                              # 0x52
	.word	4294967293                      # 0xfffffffd
	.word	72                              # 0x48
	.word	4294967292                      # 0xfffffffc
	.word	67                              # 0x43
	.word	4294967288                      # 0xfffffff8
	.word	72                              # 0x48
	.word	4294967280                      # 0xfffffff0
	.word	89                              # 0x59
	.word	4294967287                      # 0xfffffff7
	.word	69                              # 0x45
	.word	4294967295                      # 0xffffffff
	.word	59                              # 0x3b
	.word	5                               # 0x5
	.word	66                              # 0x42
	.word	4                               # 0x4
	.word	57                              # 0x39
	.word	4294967292                      # 0xfffffffc
	.word	71                              # 0x47
	.word	4294967294                      # 0xfffffffe
	.word	71                              # 0x47
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	4294967295                      # 0xffffffff
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	44                              # 0x2c
	.word	4294967295                      # 0xffffffff
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	4294967289                      # 0xfffffff9
	.word	51                              # 0x33
	.word	4294967292                      # 0xfffffffc
	.word	47                              # 0x2f
	.word	4294967290                      # 0xfffffffa
	.word	42                              # 0x2a
	.word	4294967293                      # 0xfffffffd
	.word	41                              # 0x29
	.word	4294967290                      # 0xfffffffa
	.word	53                              # 0x35
	.word	8                               # 0x8
	.word	76                              # 0x4c
	.word	4294967287                      # 0xfffffff7
	.word	78                              # 0x4e
	.word	4294967285                      # 0xfffffff5
	.word	83                              # 0x53
	.word	9                               # 0x9
	.word	52                              # 0x34
	.word	0                               # 0x0
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	90                              # 0x5a
	.word	4294967293                      # 0xfffffffd
	.word	78                              # 0x4e
	.word	4294967288                      # 0xfffffff8
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	72                              # 0x48
	.word	4294967286                      # 0xfffffff6
	.word	72                              # 0x48
	.word	4294967278                      # 0xffffffee
	.word	75                              # 0x4b
	.word	4294967284                      # 0xfffffff4
	.word	71                              # 0x47
	.word	4294967285                      # 0xfffffff5
	.word	63                              # 0x3f
	.word	4294967291                      # 0xfffffffb
	.word	70                              # 0x46
	.word	4294967279                      # 0xffffffef
	.word	75                              # 0x4b
	.word	4294967282                      # 0xfffffff2
	.word	72                              # 0x48
	.word	4294967280                      # 0xfffffff0
	.word	67                              # 0x43
	.word	4294967288                      # 0xfffffff8
	.word	53                              # 0x35
	.word	4294967282                      # 0xfffffff2
	.word	59                              # 0x3b
	.word	4294967287                      # 0xfffffff7
	.word	52                              # 0x34
	.word	4294967285                      # 0xfffffff5
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	4294967281                      # 0xfffffff1
	.word	72                              # 0x48
	.word	4294967291                      # 0xfffffffb
	.word	75                              # 0x4b
	.word	4294967288                      # 0xfffffff8
	.word	80                              # 0x50
	.word	4294967275                      # 0xffffffeb
	.word	83                              # 0x53
	.word	4294967275                      # 0xffffffeb
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	31                              # 0x1f
	.word	4294967271                      # 0xffffffe7
	.word	64                              # 0x40
	.word	4294967267                      # 0xffffffe3
	.word	94                              # 0x5e
	.word	9                               # 0x9
	.word	75                              # 0x4b
	.word	17                              # 0x11
	.word	63                              # 0x3f
	.word	4294967288                      # 0xfffffff8
	.word	74                              # 0x4a
	.word	4294967291                      # 0xfffffffb
	.word	35                              # 0x23
	.word	4294967294                      # 0xfffffffe
	.word	27                              # 0x1b
	.word	13                              # 0xd
	.word	91                              # 0x5b
	.word	3                               # 0x3
	.word	65                              # 0x41
	.word	4294967289                      # 0xfffffff9
	.word	69                              # 0x45
	.word	8                               # 0x8
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967286                      # 0xfffffff6
	.word	66                              # 0x42
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	4294967293                      # 0xfffffffd
	.word	68                              # 0x44
	.word	4294967276                      # 0xffffffec
	.word	81                              # 0x51
	.word	0                               # 0x0
	.word	30                              # 0x1e
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4294967293                      # 0xfffffffd
	.word	23                              # 0x17
	.word	4294967275                      # 0xffffffeb
	.word	74                              # 0x4a
	.word	16                              # 0x10
	.word	66                              # 0x42
	.word	4294967273                      # 0xffffffe9
	.word	124                             # 0x7c
	.word	17                              # 0x11
	.word	37                              # 0x25
	.word	44                              # 0x2c
	.word	4294967278                      # 0xffffffee
	.word	50                              # 0x32
	.word	4294967262                      # 0xffffffde
	.word	4294967274                      # 0xffffffea
	.word	127                             # 0x7f
	.size	INIT_MAP_P, 2880

	.type	INIT_LAST_I,@object             # @INIT_LAST_I
	.p2align	2, 0x0
INIT_LAST_I:
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	15                              # 0xf
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	25                              # 0x19
	.word	13                              # 0xd
	.word	18                              # 0x12
	.word	15                              # 0xf
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	19                              # 0x13
	.word	10                              # 0xa
	.word	37                              # 0x25
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	6                               # 0x6
	.word	29                              # 0x1d
	.word	20                              # 0x14
	.word	33                              # 0x21
	.word	15                              # 0xf
	.word	30                              # 0x1e
	.word	4                               # 0x4
	.word	45                              # 0x2d
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	7                               # 0x7
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	12                              # 0xc
	.word	38                              # 0x26
	.word	11                              # 0xb
	.word	45                              # 0x2d
	.word	15                              # 0xf
	.word	39                              # 0x27
	.word	11                              # 0xb
	.word	42                              # 0x2a
	.word	13                              # 0xd
	.word	44                              # 0x2c
	.word	16                              # 0x10
	.word	45                              # 0x2d
	.word	12                              # 0xc
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	49                              # 0x31
	.word	30                              # 0x1e
	.word	34                              # 0x22
	.word	18                              # 0x12
	.word	42                              # 0x2a
	.word	10                              # 0xa
	.word	55                              # 0x37
	.word	17                              # 0x11
	.word	51                              # 0x33
	.word	17                              # 0x11
	.word	46                              # 0x2e
	.word	0                               # 0x0
	.word	89                              # 0x59
	.word	23                              # 0x17
	.word	4294967283                      # 0xfffffff3
	.word	26                              # 0x1a
	.word	4294967283                      # 0xfffffff3
	.word	40                              # 0x28
	.word	4294967281                      # 0xfffffff1
	.word	49                              # 0x31
	.word	4294967282                      # 0xfffffff2
	.word	44                              # 0x2c
	.word	3                               # 0x3
	.word	45                              # 0x2d
	.word	6                               # 0x6
	.word	44                              # 0x2c
	.word	34                              # 0x22
	.word	33                              # 0x21
	.word	54                              # 0x36
	.word	19                              # 0x13
	.word	82                              # 0x52
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	26                              # 0x1a
	.word	4294967277                      # 0xffffffed
	.word	22                              # 0x16
	.word	4294967279                      # 0xffffffef
	.word	26                              # 0x1a
	.word	4294967279                      # 0xffffffef
	.word	30                              # 0x1e
	.word	4294967271                      # 0xffffffe7
	.word	28                              # 0x1c
	.word	4294967276                      # 0xffffffec
	.word	33                              # 0x21
	.word	4294967273                      # 0xffffffe9
	.word	37                              # 0x25
	.word	4294967269                      # 0xffffffe5
	.word	33                              # 0x21
	.word	4294967273                      # 0xffffffe9
	.word	40                              # 0x28
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967279                      # 0xffffffef
	.word	33                              # 0x21
	.word	4294967285                      # 0xfffffff5
	.word	40                              # 0x28
	.word	4294967281                      # 0xfffffff1
	.word	41                              # 0x29
	.word	4294967290                      # 0xfffffffa
	.word	38                              # 0x26
	.word	1                               # 0x1
	.word	41                              # 0x29
	.word	17                              # 0x11
	.word	30                              # 0x1e
	.word	4294967290                      # 0xfffffffa
	.word	27                              # 0x1b
	.word	3                               # 0x3
	.word	26                              # 0x1a
	.word	22                              # 0x16
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	37                              # 0x25
	.word	4294967280                      # 0xfffffff0
	.word	35                              # 0x23
	.word	4294967292                      # 0xfffffffc
	.word	38                              # 0x26
	.word	4294967288                      # 0xfffffff8
	.word	38                              # 0x26
	.word	4294967293                      # 0xfffffffd
	.word	37                              # 0x25
	.word	3                               # 0x3
	.word	38                              # 0x26
	.word	5                               # 0x5
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	35                              # 0x23
	.word	16                              # 0x10
	.word	39                              # 0x27
	.word	22                              # 0x16
	.word	14                              # 0xe
	.word	48                              # 0x30
	.word	27                              # 0x1b
	.word	37                              # 0x25
	.word	21                              # 0x15
	.word	60                              # 0x3c
	.word	12                              # 0xc
	.word	68                              # 0x44
	.word	2                               # 0x2
	.word	97                              # 0x61
	.size	INIT_LAST_I, 960

	.type	INIT_LAST_P,@object             # @INIT_LAST_P
	.p2align	2, 0x0
INIT_LAST_P:
	.word	11                              # 0xb
	.word	28                              # 0x1c
	.word	2                               # 0x2
	.word	40                              # 0x28
	.word	3                               # 0x3
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	49                              # 0x31
	.word	0                               # 0x0
	.word	46                              # 0x2e
	.word	2                               # 0x2
	.word	44                              # 0x2c
	.word	2                               # 0x2
	.word	51                              # 0x33
	.word	0                               # 0x0
	.word	47                              # 0x2f
	.word	4                               # 0x4
	.word	39                              # 0x27
	.word	2                               # 0x2
	.word	62                              # 0x3e
	.word	6                               # 0x6
	.word	46                              # 0x2e
	.word	0                               # 0x0
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	54                              # 0x36
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	4                               # 0x4
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	51                              # 0x33
	.word	6                               # 0x6
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	53                              # 0x35
	.word	6                               # 0x6
	.word	52                              # 0x34
	.word	6                               # 0x6
	.word	55                              # 0x37
	.word	11                              # 0xb
	.word	45                              # 0x2d
	.word	14                              # 0xe
	.word	36                              # 0x24
	.word	8                               # 0x8
	.word	53                              # 0x35
	.word	4294967295                      # 0xffffffff
	.word	82                              # 0x52
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	4294967293                      # 0xfffffffd
	.word	78                              # 0x4e
	.word	15                              # 0xf
	.word	46                              # 0x2e
	.word	22                              # 0x16
	.word	31                              # 0x1f
	.word	4294967295                      # 0xffffffff
	.word	84                              # 0x54
	.word	9                               # 0x9
	.word	4294967294                      # 0xfffffffe
	.word	26                              # 0x1a
	.word	4294967287                      # 0xfffffff7
	.word	33                              # 0x21
	.word	4294967287                      # 0xfffffff7
	.word	39                              # 0x27
	.word	4294967289                      # 0xfffffff9
	.word	41                              # 0x29
	.word	4294967294                      # 0xfffffffe
	.word	45                              # 0x2d
	.word	3                               # 0x3
	.word	49                              # 0x31
	.word	9                               # 0x9
	.word	45                              # 0x2d
	.word	27                              # 0x1b
	.word	36                              # 0x24
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	25                              # 0x19
	.word	7                               # 0x7
	.word	30                              # 0x1e
	.word	4294967289                      # 0xfffffff9
	.word	28                              # 0x1c
	.word	3                               # 0x3
	.word	28                              # 0x1c
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	0                               # 0x0
	.word	34                              # 0x22
	.word	4294967295                      # 0xffffffff
	.word	30                              # 0x1e
	.word	6                               # 0x6
	.word	30                              # 0x1e
	.word	6                               # 0x6
	.word	32                              # 0x20
	.word	9                               # 0x9
	.word	31                              # 0x1f
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	30                              # 0x1e
	.word	37                              # 0x25
	.word	20                              # 0x14
	.word	28                              # 0x1c
	.word	34                              # 0x22
	.word	17                              # 0x11
	.word	70                              # 0x46
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	5                               # 0x5
	.word	59                              # 0x3b
	.word	9                               # 0x9
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	16                              # 0x10
	.word	30                              # 0x1e
	.word	18                              # 0x12
	.word	32                              # 0x20
	.word	18                              # 0x12
	.word	35                              # 0x23
	.word	22                              # 0x16
	.word	29                              # 0x1d
	.word	24                              # 0x18
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	38                              # 0x26
	.word	18                              # 0x12
	.word	43                              # 0x2b
	.word	20                              # 0x14
	.word	41                              # 0x29
	.word	11                              # 0xb
	.word	63                              # 0x3f
	.word	9                               # 0x9
	.word	59                              # 0x3b
	.word	9                               # 0x9
	.word	64                              # 0x40
	.word	4294967295                      # 0xffffffff
	.word	94                              # 0x5e
	.word	4294967294                      # 0xfffffffe
	.word	89                              # 0x59
	.word	4294967287                      # 0xfffffff7
	.word	108                             # 0x6c
	.word	4                               # 0x4
	.word	45                              # 0x2d
	.word	10                              # 0xa
	.word	28                              # 0x1c
	.word	10                              # 0xa
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	4294967285                      # 0xfffffff5
	.word	52                              # 0x34
	.word	4294967253                      # 0xffffffd5
	.word	18                              # 0x12
	.word	15                              # 0xf
	.word	28                              # 0x1c
	.word	0                               # 0x0
	.word	35                              # 0x23
	.word	4294967274                      # 0xffffffea
	.word	38                              # 0x26
	.word	4294967271                      # 0xffffffe7
	.word	34                              # 0x22
	.word	0                               # 0x0
	.word	39                              # 0x27
	.word	4294967278                      # 0xffffffee
	.word	32                              # 0x20
	.word	4294967284                      # 0xfffffff4
	.word	102                             # 0x66
	.word	4294967202                      # 0xffffffa2
	.space	8
	.word	56                              # 0x38
	.word	4294967281                      # 0xfffffff1
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	33                              # 0x21
	.word	4294967292                      # 0xfffffffc
	.word	29                              # 0x1d
	.word	10                              # 0xa
	.word	37                              # 0x25
	.word	4294967291                      # 0xfffffffb
	.word	51                              # 0x33
	.word	4294967267                      # 0xffffffe3
	.word	39                              # 0x27
	.word	4294967287                      # 0xfffffff7
	.word	52                              # 0x34
	.word	4294967262                      # 0xffffffde
	.word	69                              # 0x45
	.word	4294967238                      # 0xffffffc6
	.word	67                              # 0x43
	.word	4294967233                      # 0xffffffc1
	.word	44                              # 0x2c
	.word	4294967291                      # 0xfffffffb
	.word	32                              # 0x20
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	4294967267                      # 0xffffffe3
	.word	32                              # 0x20
	.word	1                               # 0x1
	.space	8
	.word	27                              # 0x1b
	.word	36                              # 0x24
	.word	17                              # 0x11
	.word	4294967286                      # 0xfffffff6
	.word	32                              # 0x20
	.word	4294967283                      # 0xfffffff3
	.word	42                              # 0x2a
	.word	4294967287                      # 0xfffffff7
	.word	49                              # 0x31
	.word	4294967291                      # 0xfffffffb
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	10                              # 0xa
	.word	66                              # 0x42
	.word	27                              # 0x1b
	.word	47                              # 0x2f
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	33                              # 0x21
	.word	4294967271                      # 0xffffffe7
	.word	34                              # 0x22
	.word	4294967266                      # 0xffffffe2
	.word	36                              # 0x24
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967269                      # 0xffffffe5
	.word	34                              # 0x22
	.word	4294967278                      # 0xffffffee
	.word	35                              # 0x23
	.word	4294967280                      # 0xfffffff0
	.word	34                              # 0x22
	.word	4294967282                      # 0xfffffff2
	.word	32                              # 0x20
	.word	4294967288                      # 0xfffffff8
	.word	37                              # 0x25
	.word	4294967290                      # 0xfffffffa
	.word	35                              # 0x23
	.word	0                               # 0x0
	.word	30                              # 0x1e
	.word	10                              # 0xa
	.word	28                              # 0x1c
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	29                              # 0x1d
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	75                              # 0x4b
	.word	2                               # 0x2
	.word	72                              # 0x48
	.word	8                               # 0x8
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	14                              # 0xe
	.word	35                              # 0x23
	.word	18                              # 0x12
	.word	31                              # 0x1f
	.word	17                              # 0x11
	.word	35                              # 0x23
	.word	21                              # 0x15
	.word	30                              # 0x1e
	.word	17                              # 0x11
	.word	45                              # 0x2d
	.word	20                              # 0x14
	.word	42                              # 0x2a
	.word	18                              # 0x12
	.word	45                              # 0x2d
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	16                              # 0x10
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	66                              # 0x42
	.word	16                              # 0x10
	.word	56                              # 0x38
	.word	11                              # 0xb
	.word	73                              # 0x49
	.word	10                              # 0xa
	.word	67                              # 0x43
	.word	4294967286                      # 0xfffffff6
	.word	116                             # 0x74
	.word	4                               # 0x4
	.word	39                              # 0x27
	.word	0                               # 0x0
	.word	42                              # 0x2a
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	11                              # 0xb
	.word	29                              # 0x1d
	.word	8                               # 0x8
	.word	31                              # 0x1f
	.word	6                               # 0x6
	.word	37                              # 0x25
	.word	7                               # 0x7
	.word	42                              # 0x2a
	.word	3                               # 0x3
	.word	40                              # 0x28
	.word	8                               # 0x8
	.word	33                              # 0x21
	.word	13                              # 0xd
	.word	43                              # 0x2b
	.word	13                              # 0xd
	.word	36                              # 0x24
	.word	4                               # 0x4
	.word	47                              # 0x2f
	.word	3                               # 0x3
	.word	55                              # 0x37
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	8                               # 0x8
	.word	44                              # 0x2c
	.word	11                              # 0xb
	.word	44                              # 0x2c
	.word	14                              # 0xe
	.word	42                              # 0x2a
	.word	7                               # 0x7
	.word	48                              # 0x30
	.word	4                               # 0x4
	.word	56                              # 0x38
	.word	4                               # 0x4
	.word	52                              # 0x34
	.word	13                              # 0xd
	.word	37                              # 0x25
	.word	9                               # 0x9
	.word	49                              # 0x31
	.word	19                              # 0x13
	.word	58                              # 0x3a
	.word	10                              # 0xa
	.word	48                              # 0x30
	.word	12                              # 0xc
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	20                              # 0x14
	.word	33                              # 0x21
	.word	8                               # 0x8
	.word	63                              # 0x3f
	.word	9                               # 0x9
	.word	4294967294                      # 0xfffffffe
	.word	30                              # 0x1e
	.word	4294967286                      # 0xfffffff6
	.word	31                              # 0x1f
	.word	4294967292                      # 0xfffffffc
	.word	33                              # 0x21
	.word	4294967295                      # 0xffffffff
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	37                              # 0x25
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	38                              # 0x26
	.word	20                              # 0x14
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	35                              # 0x23
	.word	4294967278                      # 0xffffffee
	.word	33                              # 0x21
	.word	4294967271                      # 0xffffffe7
	.word	28                              # 0x1c
	.word	4294967293                      # 0xfffffffd
	.word	24                              # 0x18
	.word	10                              # 0xa
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	34                              # 0x22
	.word	4294967282                      # 0xfffffff2
	.word	52                              # 0x34
	.word	4294967252                      # 0xffffffd4
	.word	39                              # 0x27
	.word	4294967272                      # 0xffffffe8
	.word	19                              # 0x13
	.word	17                              # 0x11
	.word	31                              # 0x1f
	.word	25                              # 0x19
	.word	36                              # 0x24
	.word	29                              # 0x1d
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	15                              # 0xf
	.word	30                              # 0x1e
	.word	20                              # 0x14
	.word	22                              # 0x16
	.word	73                              # 0x49
	.word	20                              # 0x14
	.word	34                              # 0x22
	.word	19                              # 0x13
	.word	31                              # 0x1f
	.word	27                              # 0x1b
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	19                              # 0x13
	.word	16                              # 0x10
	.word	15                              # 0xf
	.word	36                              # 0x24
	.word	15                              # 0xf
	.word	36                              # 0x24
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	25                              # 0x19
	.word	21                              # 0x15
	.word	30                              # 0x1e
	.word	20                              # 0x14
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	27                              # 0x1b
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	93                              # 0x5d
	.word	14                              # 0xe
	.word	56                              # 0x38
	.word	15                              # 0xf
	.word	57                              # 0x39
	.word	26                              # 0x1a
	.word	38                              # 0x26
	.word	4294967272                      # 0xffffffe8
	.word	127                             # 0x7f
	.size	INIT_LAST_P, 2880

	.type	INIT_ONE_I,@object              # @INIT_ONE_I
	.p2align	2, 0x0
INIT_ONE_I:
	.word	4294967293                      # 0xfffffffd
	.word	71                              # 0x47
	.word	4294967290                      # 0xfffffffa
	.word	42                              # 0x2a
	.word	4294967291                      # 0xfffffffb
	.word	50                              # 0x32
	.word	4294967293                      # 0xfffffffd
	.word	54                              # 0x36
	.word	4294967294                      # 0xfffffffe
	.word	62                              # 0x3e
	.word	4294967291                      # 0xfffffffb
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	27                              # 0x1b
	.word	4294967293                      # 0xfffffffd
	.word	39                              # 0x27
	.word	4294967294                      # 0xfffffffe
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	46                              # 0x2e
	.word	4294967293                      # 0xfffffffd
	.word	75                              # 0x4b
	.word	4294967295                      # 0xffffffff
	.word	23                              # 0x17
	.word	1                               # 0x1
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	43                              # 0x2b
	.word	0                               # 0x0
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	92                              # 0x5c
	.word	4294967281                      # 0xfffffff1
	.word	55                              # 0x37
	.word	4294967286                      # 0xfffffff6
	.word	60                              # 0x3c
	.word	4294967290                      # 0xfffffffa
	.word	62                              # 0x3e
	.word	4294967292                      # 0xfffffffc
	.word	65                              # 0x41
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	4294967276                      # 0xffffffec
	.word	84                              # 0x54
	.word	4294967285                      # 0xfffffff5
	.word	79                              # 0x4f
	.word	4294967290                      # 0xfffffffa
	.word	73                              # 0x49
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967288                      # 0xfffffff8
	.word	78                              # 0x4e
	.word	4294967291                      # 0xfffffffb
	.word	33                              # 0x21
	.word	4294967292                      # 0xfffffffc
	.word	48                              # 0x30
	.word	4294967294                      # 0xfffffffe
	.word	53                              # 0x35
	.word	4294967293                      # 0xfffffffd
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ONE_I, 320

	.type	INIT_ONE_P,@object              # @INIT_ONE_P
	.p2align	2, 0x0
INIT_ONE_P:
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	4294967294                      # 0xfffffffe
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	52                              # 0x34
	.word	4294967293                      # 0xfffffffd
	.word	64                              # 0x40
	.word	4294967287                      # 0xfffffff7
	.word	77                              # 0x4d
	.word	3                               # 0x3
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	55                              # 0x37
	.word	4294967290                      # 0xfffffffa
	.word	66                              # 0x42
	.word	4294967289                      # 0xfffffff9
	.word	35                              # 0x23
	.word	4294967289                      # 0xfffffff9
	.word	42                              # 0x2a
	.word	4294967288                      # 0xfffffff8
	.word	45                              # 0x2d
	.word	4294967291                      # 0xfffffffb
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	4294967293                      # 0xfffffffd
	.word	29                              # 0x1d
	.word	4294967295                      # 0xffffffff
	.word	36                              # 0x24
	.word	1                               # 0x1
	.word	38                              # 0x26
	.word	2                               # 0x2
	.word	43                              # 0x2b
	.word	0                               # 0x0
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	29                              # 0x1d
	.word	5                               # 0x5
	.word	31                              # 0x1f
	.word	7                               # 0x7
	.word	42                              # 0x2a
	.word	1                               # 0x1
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967273                      # 0xffffffe9
	.word	112                             # 0x70
	.word	4294967281                      # 0xfffffff1
	.word	71                              # 0x47
	.word	4294967289                      # 0xfffffff9
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	53                              # 0x35
	.word	4294967291                      # 0xfffffffb
	.word	66                              # 0x42
	.word	4294967275                      # 0xffffffeb
	.word	101                             # 0x65
	.word	4294967293                      # 0xfffffffd
	.word	39                              # 0x27
	.word	4294967291                      # 0xfffffffb
	.word	53                              # 0x35
	.word	4294967289                      # 0xfffffff9
	.word	61                              # 0x3d
	.word	4294967285                      # 0xfffffff5
	.word	75                              # 0x4b
	.word	4294967291                      # 0xfffffffb
	.word	71                              # 0x47
	.word	0                               # 0x0
	.word	24                              # 0x18
	.word	4294967295                      # 0xffffffff
	.word	36                              # 0x24
	.word	4294967294                      # 0xfffffffe
	.word	42                              # 0x2a
	.word	4294967294                      # 0xfffffffe
	.word	52                              # 0x34
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967285                      # 0xfffffff5
	.word	76                              # 0x4c
	.word	4294967286                      # 0xfffffff6
	.word	44                              # 0x2c
	.word	4294967286                      # 0xfffffff6
	.word	52                              # 0x34
	.word	4294967286                      # 0xfffffff6
	.word	57                              # 0x39
	.word	4294967287                      # 0xfffffff7
	.word	58                              # 0x3a
	.word	2                               # 0x2
	.word	66                              # 0x42
	.word	4294967287                      # 0xfffffff7
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	31                              # 0x1f
	.word	5                               # 0x5
	.word	52                              # 0x34
	.word	3                               # 0x3
	.word	52                              # 0x34
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	17                              # 0x11
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	19                              # 0x13
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967272                      # 0xffffffe8
	.word	115                             # 0x73
	.word	4294967274                      # 0xffffffea
	.word	82                              # 0x52
	.word	4294967287                      # 0xfffffff7
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	4294967275                      # 0xffffffeb
	.word	100                             # 0x64
	.word	4294967282                      # 0xfffffff2
	.word	57                              # 0x39
	.word	4294967284                      # 0xfffffff4
	.word	67                              # 0x43
	.word	4294967285                      # 0xfffffff5
	.word	71                              # 0x47
	.word	4294967286                      # 0xfffffff6
	.word	77                              # 0x4d
	.word	4294967287                      # 0xfffffff7
	.word	71                              # 0x47
	.word	4294967289                      # 0xfffffff9
	.word	37                              # 0x25
	.word	4294967288                      # 0xfffffff8
	.word	44                              # 0x2c
	.word	4294967285                      # 0xfffffff5
	.word	49                              # 0x31
	.word	4294967286                      # 0xfffffff6
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967286                      # 0xfffffff6
	.word	82                              # 0x52
	.word	4294967288                      # 0xfffffff8
	.word	48                              # 0x30
	.word	4294967288                      # 0xfffffff8
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967289                      # 0xfffffff9
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	79                              # 0x4f
	.word	4294967274                      # 0xffffffea
	.word	69                              # 0x45
	.word	4294967280                      # 0xfffffff0
	.word	75                              # 0x4b
	.word	4294967294                      # 0xfffffffe
	.word	58                              # 0x3a
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	4294967283                      # 0xfffffff3
	.word	81                              # 0x51
	.word	4294967290                      # 0xfffffffa
	.word	38                              # 0x26
	.word	4294967283                      # 0xfffffff3
	.word	62                              # 0x3e
	.word	4294967290                      # 0xfffffffa
	.word	58                              # 0x3a
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ONE_P, 960

	.type	INIT_ABS_I,@object              # @INIT_ABS_I
	.p2align	2, 0x0
INIT_ABS_I:
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	4294967294                      # 0xfffffffe
	.word	72                              # 0x48
	.word	4294967295                      # 0xffffffff
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	91                              # 0x5b
	.word	4294967280                      # 0xfffffff0
	.word	64                              # 0x40
	.word	4294967288                      # 0xfffffff8
	.word	68                              # 0x44
	.word	4294967286                      # 0xfffffff6
	.word	78                              # 0x4e
	.word	4294967290                      # 0xfffffffa
	.word	77                              # 0x4d
	.word	4294967286                      # 0xfffffff6
	.word	86                              # 0x56
	.word	4294967294                      # 0xfffffffe
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	1                               # 0x1
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967287                      # 0xfffffff7
	.word	92                              # 0x5c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	73                              # 0x49
	.word	4294967288                      # 0xfffffff8
	.word	76                              # 0x4c
	.word	4294967289                      # 0xfffffff9
	.word	80                              # 0x50
	.word	4294967287                      # 0xfffffff7
	.word	88                              # 0x58
	.word	4294967279                      # 0xffffffef
	.word	110                             # 0x6e
	.word	4294967283                      # 0xfffffff3
	.word	86                              # 0x56
	.word	4294967283                      # 0xfffffff3
	.word	96                              # 0x60
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	4294967277                      # 0xffffffed
	.word	117                             # 0x75
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	71                              # 0x47
	.word	4294967286                      # 0xfffffff6
	.word	79                              # 0x4f
	.word	4294967284                      # 0xfffffff4
	.word	86                              # 0x56
	.word	4294967283                      # 0xfffffff3
	.word	90                              # 0x5a
	.word	4294967282                      # 0xfffffff2
	.word	97                              # 0x61
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ABS_I, 320

	.type	INIT_ABS_P,@object              # @INIT_ABS_P
	.p2align	2, 0x0
INIT_ABS_P:
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	4294967292                      # 0xfffffffc
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	75                              # 0x4b
	.word	4294967288                      # 0xfffffff8
	.word	82                              # 0x52
	.word	4294967279                      # 0xffffffef
	.word	102                             # 0x66
	.word	4294967290                      # 0xfffffffa
	.word	59                              # 0x3b
	.word	4294967289                      # 0xfffffff9
	.word	71                              # 0x47
	.word	4294967284                      # 0xfffffff4
	.word	83                              # 0x53
	.word	4294967285                      # 0xfffffff5
	.word	87                              # 0x57
	.word	4294967266                      # 0xffffffe2
	.word	119                             # 0x77
	.word	4294967284                      # 0xfffffff4
	.word	56                              # 0x38
	.word	4294967290                      # 0xfffffffa
	.word	60                              # 0x3c
	.word	4294967291                      # 0xfffffffb
	.word	62                              # 0x3e
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967288                      # 0xfffffff8
	.word	76                              # 0x4c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	74                              # 0x4a
	.word	4294967286                      # 0xfffffff6
	.word	90                              # 0x5a
	.word	4294967294                      # 0xfffffffe
	.word	58                              # 0x3a
	.word	4294967293                      # 0xfffffffd
	.word	72                              # 0x48
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	40                              # 0x28
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	4294967290                      # 0xfffffffa
	.word	79                              # 0x4f
	.word	4294967288                      # 0xfffffff8
	.word	85                              # 0x55
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967285                      # 0xfffffff5
	.word	77                              # 0x4d
	.word	4294967287                      # 0xfffffff7
	.word	80                              # 0x50
	.word	4294967287                      # 0xfffffff7
	.word	84                              # 0x54
	.word	4294967286                      # 0xfffffff6
	.word	87                              # 0x57
	.word	4294967262                      # 0xffffffde
	.word	127                             # 0x7f
	.word	4294967281                      # 0xfffffff1
	.word	77                              # 0x4d
	.word	4294967279                      # 0xffffffef
	.word	91                              # 0x5b
	.word	4294967271                      # 0xffffffe7
	.word	107                             # 0x6b
	.word	4294967271                      # 0xffffffe7
	.word	111                             # 0x6f
	.word	4294967268                      # 0xffffffe4
	.word	122                             # 0x7a
	.word	4294967287                      # 0xfffffff7
	.word	57                              # 0x39
	.word	4294967290                      # 0xfffffffa
	.word	63                              # 0x3f
	.word	4294967292                      # 0xfffffffc
	.word	65                              # 0x41
	.word	4294967292                      # 0xfffffffc
	.word	67                              # 0x43
	.word	4294967289                      # 0xfffffff9
	.word	82                              # 0x52
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967280                      # 0xfffffff0
	.word	72                              # 0x48
	.word	4294967289                      # 0xfffffff9
	.word	69                              # 0x45
	.word	4294967292                      # 0xfffffffc
	.word	69                              # 0x45
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	86                              # 0x56
	.word	4294967294                      # 0xfffffffe
	.word	55                              # 0x37
	.word	4294967294                      # 0xfffffffe
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	73                              # 0x49
	.word	4294967288                      # 0xfffffff8
	.word	89                              # 0x59
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	37                              # 0x25
	.word	4294967295                      # 0xffffffff
	.word	61                              # 0x3d
	.word	4294967291                      # 0xfffffffb
	.word	73                              # 0x49
	.word	4294967295                      # 0xffffffff
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967282                      # 0xfffffff2
	.word	85                              # 0x55
	.word	4294967283                      # 0xfffffff3
	.word	89                              # 0x59
	.word	4294967283                      # 0xfffffff3
	.word	94                              # 0x5e
	.word	4294967285                      # 0xfffffff5
	.word	92                              # 0x5c
	.word	4294967267                      # 0xffffffe3
	.word	127                             # 0x7f
	.word	4294967275                      # 0xffffffeb
	.word	85                              # 0x55
	.word	4294967280                      # 0xfffffff0
	.word	88                              # 0x58
	.word	4294967273                      # 0xffffffe9
	.word	104                             # 0x68
	.word	4294967281                      # 0xfffffff1
	.word	98                              # 0x62
	.word	4294967259                      # 0xffffffdb
	.word	127                             # 0x7f
	.word	4294967284                      # 0xfffffff4
	.word	59                              # 0x3b
	.word	4294967288                      # 0xfffffff8
	.word	63                              # 0x3f
	.word	4294967287                      # 0xfffffff7
	.word	67                              # 0x43
	.word	4294967290                      # 0xfffffffa
	.word	68                              # 0x44
	.word	4294967286                      # 0xfffffff6
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967282                      # 0xfffffff2
	.word	75                              # 0x4b
	.word	4294967286                      # 0xfffffff6
	.word	79                              # 0x4f
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4294967284                      # 0xfffffff4
	.word	92                              # 0x5c
	.word	4294967278                      # 0xffffffee
	.word	108                             # 0x6c
	.word	4294967283                      # 0xfffffff3
	.word	78                              # 0x4e
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4294967292                      # 0xfffffffc
	.word	81                              # 0x51
	.word	4294967283                      # 0xfffffff3
	.word	99                              # 0x63
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967280                      # 0xfffffff0
	.word	73                              # 0x49
	.word	4294967286                      # 0xfffffff6
	.word	76                              # 0x4c
	.word	4294967283                      # 0xfffffff3
	.word	86                              # 0x56
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4294967286                      # 0xfffffff6
	.word	87                              # 0x57
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ABS_P, 960

	.type	INIT_FLD_MAP_I,@object          # @INIT_FLD_MAP_I
	.p2align	2, 0x0
INIT_FLD_MAP_I:
	.word	4294967290                      # 0xfffffffa
	.word	93                              # 0x5d
	.word	4294967290                      # 0xfffffffa
	.word	84                              # 0x54
	.word	4294967288                      # 0xfffffff8
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	66                              # 0x42
	.word	4294967295                      # 0xffffffff
	.word	71                              # 0x47
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	4294967294                      # 0xfffffffe
	.word	60                              # 0x3c
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	4294967291                      # 0xfffffffb
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	62                              # 0x3e
	.word	4294967292                      # 0xfffffffc
	.word	58                              # 0x3a
	.word	4294967287                      # 0xfffffff7
	.word	66                              # 0x42
	.word	4294967295                      # 0xffffffff
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	71                              # 0x47
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	4294967289                      # 0xfffffff9
	.word	62                              # 0x3e
	.word	15                              # 0xf
	.word	36                              # 0x24
	.word	14                              # 0xe
	.word	40                              # 0x28
	.word	16                              # 0x10
	.word	27                              # 0x1b
	.word	12                              # 0xc
	.word	29                              # 0x1d
	.word	1                               # 0x1
	.word	44                              # 0x2c
	.word	20                              # 0x14
	.word	36                              # 0x24
	.word	18                              # 0x12
	.word	32                              # 0x20
	.word	5                               # 0x5
	.word	42                              # 0x2a
	.word	1                               # 0x1
	.word	48                              # 0x30
	.word	10                              # 0xa
	.word	62                              # 0x3e
	.word	17                              # 0x11
	.word	46                              # 0x2e
	.word	9                               # 0x9
	.word	64                              # 0x40
	.word	4294967282                      # 0xfffffff2
	.word	106                             # 0x6a
	.word	4294967283                      # 0xfffffff3
	.word	97                              # 0x61
	.word	4294967281                      # 0xfffffff1
	.word	90                              # 0x5a
	.word	4294967284                      # 0xfffffff4
	.word	90                              # 0x5a
	.word	4294967278                      # 0xffffffee
	.word	88                              # 0x58
	.word	4294967286                      # 0xfffffff6
	.word	73                              # 0x49
	.word	4294967287                      # 0xfffffff7
	.word	79                              # 0x4f
	.word	4294967282                      # 0xfffffff2
	.word	86                              # 0x56
	.word	4294967286                      # 0xfffffff6
	.word	73                              # 0x49
	.word	4294967286                      # 0xfffffff6
	.word	70                              # 0x46
	.word	4294967286                      # 0xfffffff6
	.word	69                              # 0x45
	.word	4294967291                      # 0xfffffffb
	.word	66                              # 0x42
	.word	4294967287                      # 0xfffffff7
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	58                              # 0x3a
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	104                             # 0x68
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	4294967280                      # 0xfffffff0
	.word	96                              # 0x60
	.word	4294967289                      # 0xfffffff9
	.word	88                              # 0x58
	.word	4294967288                      # 0xfffffff8
	.word	85                              # 0x55
	.word	4294967289                      # 0xfffffff9
	.word	85                              # 0x55
	.word	4294967287                      # 0xfffffff7
	.word	85                              # 0x55
	.word	4294967283                      # 0xfffffff3
	.word	88                              # 0x58
	.word	4                               # 0x4
	.word	66                              # 0x42
	.word	4294967293                      # 0xfffffffd
	.word	77                              # 0x4d
	.word	4294967293                      # 0xfffffffd
	.word	76                              # 0x4c
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	10                              # 0xa
	.word	58                              # 0x3a
	.word	4294967295                      # 0xffffffff
	.word	76                              # 0x4c
	.word	4294967295                      # 0xffffffff
	.word	83                              # 0x53
	.word	4294967289                      # 0xfffffff9
	.word	99                              # 0x63
	.word	4294967282                      # 0xfffffff2
	.word	95                              # 0x5f
	.word	2                               # 0x2
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	76                              # 0x4c
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	70                              # 0x46
	.word	4294967285                      # 0xfffffff5
	.word	75                              # 0x4b
	.word	1                               # 0x1
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	4294967282                      # 0xfffffff2
	.word	73                              # 0x49
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	4                               # 0x4
	.word	62                              # 0x3e
	.word	4294967295                      # 0xffffffff
	.word	68                              # 0x44
	.word	4294967283                      # 0xfffffff3
	.word	75                              # 0x4b
	.word	11                              # 0xb
	.word	55                              # 0x37
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	12                              # 0xc
	.word	70                              # 0x46
	.size	INIT_FLD_MAP_I, 960

	.type	INIT_FLD_MAP_P,@object          # @INIT_FLD_MAP_P
	.p2align	2, 0x0
INIT_FLD_MAP_P:
	.word	4294967283                      # 0xfffffff3
	.word	106                             # 0x6a
	.word	4294967280                      # 0xfffffff0
	.word	106                             # 0x6a
	.word	4294967286                      # 0xfffffff6
	.word	87                              # 0x57
	.word	4294967275                      # 0xffffffeb
	.word	114                             # 0x72
	.word	4294967278                      # 0xffffffee
	.word	110                             # 0x6e
	.word	4294967282                      # 0xfffffff2
	.word	98                              # 0x62
	.word	4294967274                      # 0xffffffea
	.word	110                             # 0x6e
	.word	4294967275                      # 0xffffffeb
	.word	106                             # 0x6a
	.word	4294967278                      # 0xffffffee
	.word	103                             # 0x67
	.word	4294967275                      # 0xffffffeb
	.word	107                             # 0x6b
	.word	4294967273                      # 0xffffffe9
	.word	108                             # 0x6c
	.word	4294967270                      # 0xffffffe6
	.word	112                             # 0x70
	.word	4294967286                      # 0xfffffff6
	.word	96                              # 0x60
	.word	4294967284                      # 0xfffffff4
	.word	95                              # 0x5f
	.word	4294967291                      # 0xfffffffb
	.word	91                              # 0x5b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967287                      # 0xfffffff7
	.word	93                              # 0x5d
	.word	4294967274                      # 0xffffffea
	.word	94                              # 0x5e
	.word	4294967291                      # 0xfffffffb
	.word	86                              # 0x56
	.word	9                               # 0x9
	.word	67                              # 0x43
	.word	4294967292                      # 0xfffffffc
	.word	80                              # 0x50
	.word	4294967286                      # 0xfffffff6
	.word	85                              # 0x55
	.word	4294967295                      # 0xffffffff
	.word	70                              # 0x46
	.word	7                               # 0x7
	.word	60                              # 0x3c
	.word	9                               # 0x9
	.word	58                              # 0x3a
	.word	5                               # 0x5
	.word	61                              # 0x3d
	.word	12                              # 0xc
	.word	50                              # 0x32
	.word	15                              # 0xf
	.word	50                              # 0x32
	.word	18                              # 0x12
	.word	49                              # 0x31
	.word	17                              # 0x11
	.word	54                              # 0x36
	.word	4294967291                      # 0xfffffffb
	.word	85                              # 0x55
	.word	4294967290                      # 0xfffffffa
	.word	81                              # 0x51
	.word	4294967286                      # 0xfffffff6
	.word	77                              # 0x4d
	.word	4294967289                      # 0xfffffff9
	.word	81                              # 0x51
	.word	4294967279                      # 0xffffffef
	.word	80                              # 0x50
	.word	4294967278                      # 0xffffffee
	.word	73                              # 0x49
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967286                      # 0xfffffff6
	.word	83                              # 0x53
	.word	4294967287                      # 0xfffffff7
	.word	71                              # 0x47
	.word	4294967287                      # 0xfffffff7
	.word	67                              # 0x43
	.word	4294967295                      # 0xffffffff
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967282                      # 0xfffffff2
	.word	66                              # 0x42
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	7                               # 0x7
	.word	46                              # 0x2e
	.word	4294967295                      # 0xffffffff
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	49                              # 0x31
	.word	8                               # 0x8
	.word	52                              # 0x34
	.word	9                               # 0x9
	.word	41                              # 0x29
	.word	6                               # 0x6
	.word	47                              # 0x2f
	.word	2                               # 0x2
	.word	55                              # 0x37
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	6                               # 0x6
	.word	50                              # 0x32
	.word	5                               # 0x5
	.word	53                              # 0x35
	.word	13                              # 0xd
	.word	49                              # 0x31
	.word	4                               # 0x4
	.word	63                              # 0x3f
	.word	6                               # 0x6
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	69                              # 0x45
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	6                               # 0x6
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	9                               # 0x9
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	43                              # 0x2b
	.word	3                               # 0x3
	.word	53                              # 0x35
	.word	14                              # 0xe
	.word	34                              # 0x22
	.word	10                              # 0xa
	.word	38                              # 0x26
	.word	4294967293                      # 0xfffffffd
	.word	52                              # 0x34
	.word	13                              # 0xd
	.word	40                              # 0x28
	.word	17                              # 0x11
	.word	32                              # 0x20
	.word	7                               # 0x7
	.word	44                              # 0x2c
	.word	7                               # 0x7
	.word	38                              # 0x26
	.word	13                              # 0xd
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	57                              # 0x39
	.word	26                              # 0x1a
	.word	43                              # 0x2b
	.word	4294967275                      # 0xffffffeb
	.word	126                             # 0x7e
	.word	4294967273                      # 0xffffffe9
	.word	124                             # 0x7c
	.word	4294967276                      # 0xffffffec
	.word	110                             # 0x6e
	.word	4294967270                      # 0xffffffe6
	.word	126                             # 0x7e
	.word	4294967271                      # 0xffffffe7
	.word	124                             # 0x7c
	.word	4294967279                      # 0xffffffef
	.word	105                             # 0x69
	.word	4294967269                      # 0xffffffe5
	.word	121                             # 0x79
	.word	4294967269                      # 0xffffffe5
	.word	117                             # 0x75
	.word	4294967279                      # 0xffffffef
	.word	102                             # 0x66
	.word	4294967270                      # 0xffffffe6
	.word	117                             # 0x75
	.word	4294967269                      # 0xffffffe5
	.word	116                             # 0x74
	.word	4294967263                      # 0xffffffdf
	.word	122                             # 0x7a
	.word	4294967286                      # 0xfffffff6
	.word	95                              # 0x5f
	.word	4294967282                      # 0xfffffff2
	.word	100                             # 0x64
	.word	4294967288                      # 0xfffffff8
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967279                      # 0xffffffef
	.word	111                             # 0x6f
	.word	4294967268                      # 0xffffffe4
	.word	114                             # 0x72
	.word	4294967290                      # 0xfffffffa
	.word	89                              # 0x59
	.word	4294967294                      # 0xfffffffe
	.word	80                              # 0x50
	.word	4294967292                      # 0xfffffffc
	.word	82                              # 0x52
	.word	4294967287                      # 0xfffffff7
	.word	85                              # 0x55
	.word	4294967288                      # 0xfffffff8
	.word	81                              # 0x51
	.word	4294967295                      # 0xffffffff
	.word	72                              # 0x48
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	9                               # 0x9
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	1                               # 0x1
	.word	69                              # 0x45
	.word	7                               # 0x7
	.word	69                              # 0x45
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	4294967293                      # 0xfffffffd
	.word	76                              # 0x4c
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	4294967290                      # 0xfffffffa
	.word	78                              # 0x4e
	.word	4294967284                      # 0xfffffff4
	.word	72                              # 0x48
	.word	4294967282                      # 0xfffffff2
	.word	68                              # 0x44
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	4294967291                      # 0xfffffffb
	.word	66                              # 0x42
	.word	4294967291                      # 0xfffffffb
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	57                              # 0x39
	.word	4294967292                      # 0xfffffffc
	.word	61                              # 0x3d
	.word	4294967287                      # 0xfffffff7
	.word	60                              # 0x3c
	.word	1                               # 0x1
	.word	54                              # 0x36
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967289                      # 0xfffffff9
	.word	69                              # 0x45
	.word	4294967290                      # 0xfffffffa
	.word	67                              # 0x43
	.word	4294967280                      # 0xfffffff0
	.word	77                              # 0x4d
	.word	4294967294                      # 0xfffffffe
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	61                              # 0x3d
	.word	4294967290                      # 0xfffffffa
	.word	67                              # 0x43
	.word	4294967293                      # 0xfffffffd
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	57                              # 0x39
	.word	4294967293                      # 0xfffffffd
	.word	65                              # 0x41
	.word	4294967293                      # 0xfffffffd
	.word	66                              # 0x42
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	9                               # 0x9
	.word	51                              # 0x33
	.word	4294967295                      # 0xffffffff
	.word	66                              # 0x42
	.word	4294967294                      # 0xfffffffe
	.word	71                              # 0x47
	.word	4294967294                      # 0xfffffffe
	.word	75                              # 0x4b
	.word	4294967295                      # 0xffffffff
	.word	70                              # 0x46
	.word	4294967287                      # 0xfffffff7
	.word	72                              # 0x48
	.word	14                              # 0xe
	.word	60                              # 0x3c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	16                              # 0x10
	.word	37                              # 0x25
	.word	0                               # 0x0
	.word	47                              # 0x2f
	.word	18                              # 0x12
	.word	35                              # 0x23
	.word	11                              # 0xb
	.word	37                              # 0x25
	.word	12                              # 0xc
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	2                               # 0x2
	.word	48                              # 0x30
	.word	12                              # 0xc
	.word	41                              # 0x29
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	3                               # 0x3
	.word	50                              # 0x32
	.word	19                              # 0x13
	.word	40                              # 0x28
	.word	3                               # 0x3
	.word	66                              # 0x42
	.word	18                              # 0x12
	.word	50                              # 0x32
	.word	4294967274                      # 0xffffffea
	.word	127                             # 0x7f
	.word	4294967271                      # 0xffffffe7
	.word	127                             # 0x7f
	.word	4294967271                      # 0xffffffe7
	.word	120                             # 0x78
	.word	4294967269                      # 0xffffffe5
	.word	127                             # 0x7f
	.word	4294967277                      # 0xffffffed
	.word	114                             # 0x72
	.word	4294967273                      # 0xffffffe9
	.word	117                             # 0x75
	.word	4294967271                      # 0xffffffe7
	.word	118                             # 0x76
	.word	4294967270                      # 0xffffffe6
	.word	117                             # 0x75
	.word	4294967272                      # 0xffffffe8
	.word	113                             # 0x71
	.word	4294967268                      # 0xffffffe4
	.word	118                             # 0x76
	.word	4294967265                      # 0xffffffe1
	.word	120                             # 0x78
	.word	4294967259                      # 0xffffffdb
	.word	124                             # 0x7c
	.word	4294967286                      # 0xfffffff6
	.word	94                              # 0x5e
	.word	4294967281                      # 0xfffffff1
	.word	102                             # 0x66
	.word	4294967286                      # 0xfffffff6
	.word	99                              # 0x63
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	106                             # 0x6a
	.word	4294967246                      # 0xffffffce
	.word	127                             # 0x7f
	.word	4294967291                      # 0xfffffffb
	.word	92                              # 0x5c
	.word	17                              # 0x11
	.word	57                              # 0x39
	.word	4294967291                      # 0xfffffffb
	.word	86                              # 0x56
	.word	4294967283                      # 0xfffffff3
	.word	94                              # 0x5e
	.word	4294967284                      # 0xfffffff4
	.word	91                              # 0x5b
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.word	71                              # 0x47
	.word	4294967295                      # 0xffffffff
	.word	73                              # 0x49
	.word	4                               # 0x4
	.word	64                              # 0x40
	.word	4294967289                      # 0xfffffff9
	.word	81                              # 0x51
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	15                              # 0xf
	.word	57                              # 0x39
	.word	4294967293                      # 0xfffffffd
	.word	78                              # 0x4e
	.word	4294967288                      # 0xfffffff8
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	72                              # 0x48
	.word	4294967286                      # 0xfffffff6
	.word	72                              # 0x48
	.word	4294967278                      # 0xffffffee
	.word	75                              # 0x4b
	.word	4294967284                      # 0xfffffff4
	.word	71                              # 0x47
	.word	4294967285                      # 0xfffffff5
	.word	63                              # 0x3f
	.word	4294967291                      # 0xfffffffb
	.word	70                              # 0x46
	.word	4294967279                      # 0xffffffef
	.word	75                              # 0x4b
	.word	4294967282                      # 0xfffffff2
	.word	72                              # 0x48
	.word	4294967280                      # 0xfffffff0
	.word	67                              # 0x43
	.word	4294967288                      # 0xfffffff8
	.word	53                              # 0x35
	.word	4294967282                      # 0xfffffff2
	.word	59                              # 0x3b
	.word	4294967287                      # 0xfffffff7
	.word	52                              # 0x34
	.word	4294967285                      # 0xfffffff5
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967286                      # 0xfffffff6
	.word	67                              # 0x43
	.word	1                               # 0x1
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	77                              # 0x4d
	.word	2                               # 0x2
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967291                      # 0xfffffffb
	.word	78                              # 0x4e
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	5                               # 0x5
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	65                              # 0x41
	.word	14                              # 0xe
	.word	54                              # 0x36
	.word	15                              # 0xf
	.word	44                              # 0x2c
	.word	5                               # 0x5
	.word	60                              # 0x3c
	.word	2                               # 0x2
	.word	70                              # 0x46
	.word	4294967294                      # 0xfffffffe
	.word	76                              # 0x4c
	.word	4294967278                      # 0xffffffee
	.word	86                              # 0x56
	.word	12                              # 0xc
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	70                              # 0x46
	.word	11                              # 0xb
	.word	55                              # 0x37
	.word	5                               # 0x5
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	2                               # 0x2
	.word	65                              # 0x41
	.word	4294967290                      # 0xfffffffa
	.word	74                              # 0x4a
	.word	5                               # 0x5
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	54                              # 0x36
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	4294967285                      # 0xfffffff5
	.word	82                              # 0x52
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	25                              # 0x19
	.word	42                              # 0x2a
	.size	INIT_FLD_MAP_P, 2880

	.type	INIT_FLD_LAST_I,@object         # @INIT_FLD_LAST_I
	.p2align	2, 0x0
INIT_FLD_LAST_I:
	.word	15                              # 0xf
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	19                              # 0x13
	.word	7                               # 0x7
	.word	16                              # 0x10
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	12                              # 0xc
	.word	23                              # 0x17
	.word	13                              # 0xd
	.word	23                              # 0x17
	.word	15                              # 0xf
	.word	20                              # 0x14
	.word	14                              # 0xe
	.word	26                              # 0x1a
	.word	14                              # 0xe
	.word	44                              # 0x2c
	.word	17                              # 0x11
	.word	40                              # 0x28
	.word	17                              # 0x11
	.word	47                              # 0x2f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	24                              # 0x18
	.word	17                              # 0x11
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	25                              # 0x19
	.word	22                              # 0x16
	.word	31                              # 0x1f
	.word	27                              # 0x1b
	.word	22                              # 0x16
	.word	29                              # 0x1d
	.word	19                              # 0x13
	.word	35                              # 0x23
	.word	14                              # 0xe
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	63                              # 0x3f
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	4294967292                      # 0xfffffffc
	.word	82                              # 0x52
	.word	4294967293                      # 0xfffffffd
	.word	94                              # 0x5e
	.word	9                               # 0x9
	.word	69                              # 0x45
	.word	4294967284                      # 0xfffffff4
	.word	109                             # 0x6d
	.word	21                              # 0x15
	.word	4294967286                      # 0xfffffff6
	.word	24                              # 0x18
	.word	4294967285                      # 0xfffffff5
	.word	28                              # 0x1c
	.word	4294967288                      # 0xfffffff8
	.word	28                              # 0x1c
	.word	4294967295                      # 0xffffffff
	.word	29                              # 0x1d
	.word	3                               # 0x3
	.word	29                              # 0x1d
	.word	9                               # 0x9
	.word	35                              # 0x23
	.word	20                              # 0x14
	.word	29                              # 0x1d
	.word	36                              # 0x24
	.word	14                              # 0xe
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	36                              # 0x24
	.word	4294967261                      # 0xffffffdd
	.word	36                              # 0x24
	.word	4294967262                      # 0xffffffde
	.word	32                              # 0x20
	.word	4294967270                      # 0xffffffe6
	.word	37                              # 0x25
	.word	4294967266                      # 0xffffffe2
	.word	44                              # 0x2c
	.word	4294967264                      # 0xffffffe0
	.word	34                              # 0x22
	.word	4294967278                      # 0xffffffee
	.word	34                              # 0x22
	.word	4294967281                      # 0xfffffff1
	.word	40                              # 0x28
	.word	4294967281                      # 0xfffffff1
	.word	33                              # 0x21
	.word	4294967289                      # 0xfffffff9
	.word	35                              # 0x23
	.word	4294967291                      # 0xfffffffb
	.word	33                              # 0x21
	.word	0                               # 0x0
	.word	38                              # 0x26
	.word	2                               # 0x2
	.word	33                              # 0x21
	.word	13                              # 0xd
	.word	23                              # 0x17
	.word	35                              # 0x23
	.word	13                              # 0xd
	.word	58                              # 0x3a
	.word	29                              # 0x1d
	.word	4294967293                      # 0xfffffffd
	.word	26                              # 0x1a
	.word	0                               # 0x0
	.word	22                              # 0x16
	.word	30                              # 0x1e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	31                              # 0x1f
	.word	4294967289                      # 0xfffffff9
	.word	35                              # 0x23
	.word	4294967281                      # 0xfffffff1
	.word	34                              # 0x22
	.word	4294967293                      # 0xfffffffd
	.word	34                              # 0x22
	.word	3                               # 0x3
	.word	36                              # 0x24
	.word	4294967295                      # 0xffffffff
	.word	34                              # 0x22
	.word	5                               # 0x5
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	5                               # 0x5
	.word	34                              # 0x22
	.word	12                              # 0xc
	.word	39                              # 0x27
	.word	11                              # 0xb
	.word	30                              # 0x1e
	.word	29                              # 0x1d
	.word	34                              # 0x22
	.word	26                              # 0x1a
	.word	29                              # 0x1d
	.word	39                              # 0x27
	.word	19                              # 0x13
	.word	66                              # 0x42
	.size	INIT_FLD_LAST_I, 960

	.type	INIT_FLD_LAST_P,@object         # @INIT_FLD_LAST_P
	.p2align	2, 0x0
INIT_FLD_LAST_P:
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	18                              # 0x12
	.word	11                              # 0xb
	.word	21                              # 0x15
	.word	9                               # 0x9
	.word	23                              # 0x17
	.word	4294967294                      # 0xfffffffe
	.word	32                              # 0x20
	.word	4294967281                      # 0xfffffff1
	.word	32                              # 0x20
	.word	4294967281                      # 0xfffffff1
	.word	34                              # 0x22
	.word	4294967275                      # 0xffffffeb
	.word	39                              # 0x27
	.word	4294967273                      # 0xffffffe9
	.word	42                              # 0x2a
	.word	4294967263                      # 0xffffffdf
	.word	41                              # 0x29
	.word	4294967265                      # 0xffffffe1
	.word	46                              # 0x2e
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967284                      # 0xfffffff4
	.word	21                              # 0x15
	.word	29                              # 0x1d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	45                              # 0x2d
	.word	4294967272                      # 0xffffffe8
	.word	53                              # 0x35
	.word	4294967251                      # 0xffffffd3
	.word	48                              # 0x30
	.word	4294967270                      # 0xffffffe6
	.word	65                              # 0x41
	.word	4294967253                      # 0xffffffd5
	.word	43                              # 0x2b
	.word	4294967277                      # 0xffffffed
	.word	39                              # 0x27
	.word	4294967286                      # 0xfffffff6
	.word	30                              # 0x1e
	.word	9                               # 0x9
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	20                              # 0x14
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	57                              # 0x39
	.word	4294967282                      # 0xfffffff2
	.word	82                              # 0x52
	.word	4294967291                      # 0xfffffffb
	.word	75                              # 0x4b
	.word	4294967277                      # 0xffffffed
	.word	97                              # 0x61
	.word	4294967261                      # 0xffffffdd
	.word	125                             # 0x7d
	.word	21                              # 0x15
	.word	4294967283                      # 0xfffffff3
	.word	33                              # 0x21
	.word	4294967282                      # 0xfffffff2
	.word	39                              # 0x27
	.word	4294967289                      # 0xfffffff9
	.word	46                              # 0x2e
	.word	4294967294                      # 0xfffffffe
	.word	51                              # 0x33
	.word	2                               # 0x2
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	61                              # 0x3d
	.word	17                              # 0x11
	.word	55                              # 0x37
	.word	34                              # 0x22
	.word	42                              # 0x2a
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	28                              # 0x1c
	.word	0                               # 0x0
	.word	31                              # 0x1f
	.word	4294967292                      # 0xfffffffc
	.word	27                              # 0x1b
	.word	6                               # 0x6
	.word	34                              # 0x22
	.word	8                               # 0x8
	.word	30                              # 0x1e
	.word	10                              # 0xa
	.word	24                              # 0x18
	.word	22                              # 0x16
	.word	33                              # 0x21
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	32                              # 0x20
	.word	26                              # 0x1a
	.word	31                              # 0x1f
	.word	21                              # 0x15
	.word	41                              # 0x29
	.word	26                              # 0x1a
	.word	44                              # 0x2c
	.word	23                              # 0x17
	.word	47                              # 0x2f
	.word	16                              # 0x10
	.word	65                              # 0x41
	.word	14                              # 0xe
	.word	71                              # 0x47
	.word	8                               # 0x8
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	63                              # 0x3f
	.word	17                              # 0x11
	.word	65                              # 0x41
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	21                              # 0x15
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	20                              # 0x14
	.word	26                              # 0x1a
	.word	23                              # 0x17
	.word	27                              # 0x1b
	.word	32                              # 0x20
	.word	28                              # 0x1c
	.word	23                              # 0x17
	.word	28                              # 0x1c
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	40                              # 0x28
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	42                              # 0x2a
	.word	19                              # 0x13
	.word	57                              # 0x39
	.word	22                              # 0x16
	.word	53                              # 0x35
	.word	22                              # 0x16
	.word	61                              # 0x3d
	.word	11                              # 0xb
	.word	86                              # 0x56
	.word	19                              # 0x13
	.word	4294967290                      # 0xfffffffa
	.word	18                              # 0x12
	.word	4294967290                      # 0xfffffffa
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	26                              # 0x1a
	.word	4294967284                      # 0xfffffff4
	.word	31                              # 0x1f
	.word	4294967280                      # 0xfffffff0
	.word	33                              # 0x21
	.word	4294967271                      # 0xffffffe7
	.word	33                              # 0x21
	.word	4294967274                      # 0xffffffea
	.word	37                              # 0x25
	.word	4294967268                      # 0xffffffe4
	.word	39                              # 0x27
	.word	4294967266                      # 0xffffffe2
	.word	42                              # 0x2a
	.word	4294967266                      # 0xffffffe2
	.word	47                              # 0x2f
	.word	4294967254                      # 0xffffffd6
	.word	45                              # 0x2d
	.word	4294967260                      # 0xffffffdc
	.word	49                              # 0x31
	.word	4294967262                      # 0xffffffde
	.word	41                              # 0x29
	.word	4294967279                      # 0xffffffef
	.word	32                              # 0x20
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	69                              # 0x45
	.word	4294967225                      # 0xffffffb9
	.word	63                              # 0x3f
	.word	4294967233                      # 0xffffffc1
	.word	66                              # 0x42
	.word	4294967232                      # 0xffffffc0
	.word	77                              # 0x4d
	.word	4294967222                      # 0xffffffb6
	.word	54                              # 0x36
	.word	4294967257                      # 0xffffffd9
	.word	52                              # 0x34
	.word	4294967261                      # 0xffffffdd
	.word	41                              # 0x29
	.word	4294967286                      # 0xfffffff6
	.word	36                              # 0x24
	.word	0                               # 0x0
	.word	40                              # 0x28
	.word	4294967295                      # 0xffffffff
	.word	30                              # 0x1e
	.word	14                              # 0xe
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	23                              # 0x17
	.word	37                              # 0x25
	.word	12                              # 0xc
	.word	55                              # 0x37
	.word	11                              # 0xb
	.word	65                              # 0x41
	.word	17                              # 0x11
	.word	4294967286                      # 0xfffffff6
	.word	32                              # 0x20
	.word	4294967283                      # 0xfffffff3
	.word	42                              # 0x2a
	.word	4294967287                      # 0xfffffff7
	.word	49                              # 0x31
	.word	4294967291                      # 0xfffffffb
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	10                              # 0xa
	.word	66                              # 0x42
	.word	27                              # 0x1b
	.word	47                              # 0x2f
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	37                              # 0x25
	.word	4294967263                      # 0xffffffdf
	.word	39                              # 0x27
	.word	4294967260                      # 0xffffffdc
	.word	40                              # 0x28
	.word	4294967259                      # 0xffffffdb
	.word	38                              # 0x26
	.word	4294967266                      # 0xffffffe2
	.word	46                              # 0x2e
	.word	4294967263                      # 0xffffffdf
	.word	42                              # 0x2a
	.word	4294967266                      # 0xffffffe2
	.word	40                              # 0x28
	.word	4294967272                      # 0xffffffe8
	.word	49                              # 0x31
	.word	4294967267                      # 0xffffffe3
	.word	38                              # 0x26
	.word	4294967284                      # 0xfffffff4
	.word	40                              # 0x28
	.word	4294967286                      # 0xfffffff6
	.word	38                              # 0x26
	.word	4294967293                      # 0xfffffffd
	.word	46                              # 0x2e
	.word	4294967291                      # 0xfffffffb
	.word	31                              # 0x1f
	.word	20                              # 0x14
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	25                              # 0x19
	.word	44                              # 0x2c
	.word	12                              # 0xc
	.word	48                              # 0x30
	.word	11                              # 0xb
	.word	49                              # 0x31
	.word	26                              # 0x1a
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	22                              # 0x16
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	22                              # 0x16
	.word	27                              # 0x1b
	.word	21                              # 0x15
	.word	33                              # 0x21
	.word	20                              # 0x14
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	34                              # 0x22
	.word	18                              # 0x12
	.word	42                              # 0x2a
	.word	25                              # 0x19
	.word	39                              # 0x27
	.word	18                              # 0x12
	.word	50                              # 0x32
	.word	12                              # 0xc
	.word	70                              # 0x46
	.word	21                              # 0x15
	.word	54                              # 0x36
	.word	14                              # 0xe
	.word	71                              # 0x47
	.word	11                              # 0xb
	.word	83                              # 0x53
	.word	17                              # 0x11
	.word	4294967283                      # 0xfffffff3
	.word	16                              # 0x10
	.word	4294967287                      # 0xfffffff7
	.word	17                              # 0x11
	.word	4294967284                      # 0xfffffff4
	.word	27                              # 0x1b
	.word	4294967275                      # 0xffffffeb
	.word	37                              # 0x25
	.word	4294967266                      # 0xffffffe2
	.word	41                              # 0x29
	.word	4294967256                      # 0xffffffd8
	.word	42                              # 0x2a
	.word	4294967255                      # 0xffffffd7
	.word	48                              # 0x30
	.word	4294967249                      # 0xffffffd1
	.word	39                              # 0x27
	.word	4294967264                      # 0xffffffe0
	.word	46                              # 0x2e
	.word	4294967256                      # 0xffffffd8
	.word	52                              # 0x34
	.word	4294967245                      # 0xffffffcd
	.word	46                              # 0x2e
	.word	4294967255                      # 0xffffffd7
	.word	52                              # 0x34
	.word	4294967257                      # 0xffffffd9
	.word	43                              # 0x2b
	.word	4294967277                      # 0xffffffed
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	61                              # 0x3d
	.word	4294967241                      # 0xffffffc9
	.word	56                              # 0x38
	.word	4294967250                      # 0xffffffd2
	.word	62                              # 0x3e
	.word	4294967246                      # 0xffffffce
	.word	81                              # 0x51
	.word	4294967229                      # 0xffffffbd
	.word	45                              # 0x2d
	.word	4294967276                      # 0xffffffec
	.word	35                              # 0x23
	.word	4294967294                      # 0xfffffffe
	.word	28                              # 0x1c
	.word	15                              # 0xf
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	39                              # 0x27
	.word	1                               # 0x1
	.word	30                              # 0x1e
	.word	17                              # 0x11
	.word	20                              # 0x14
	.word	38                              # 0x26
	.word	18                              # 0x12
	.word	45                              # 0x2d
	.word	15                              # 0xf
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	79                              # 0x4f
	.word	9                               # 0x9
	.word	4294967294                      # 0xfffffffe
	.word	30                              # 0x1e
	.word	4294967286                      # 0xfffffff6
	.word	31                              # 0x1f
	.word	4294967292                      # 0xfffffffc
	.word	33                              # 0x21
	.word	4294967295                      # 0xffffffff
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	37                              # 0x25
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	38                              # 0x26
	.word	20                              # 0x14
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	36                              # 0x24
	.word	4294967280                      # 0xfffffff0
	.word	37                              # 0x25
	.word	4294967282                      # 0xfffffff2
	.word	37                              # 0x25
	.word	4294967279                      # 0xffffffef
	.word	32                              # 0x20
	.word	1                               # 0x1
	.word	34                              # 0x22
	.word	15                              # 0xf
	.word	29                              # 0x1d
	.word	15                              # 0xf
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	34                              # 0x22
	.word	22                              # 0x16
	.word	31                              # 0x1f
	.word	16                              # 0x10
	.word	35                              # 0x23
	.word	18                              # 0x12
	.word	31                              # 0x1f
	.word	28                              # 0x1c
	.word	33                              # 0x21
	.word	41                              # 0x29
	.word	36                              # 0x24
	.word	28                              # 0x1c
	.word	27                              # 0x1b
	.word	47                              # 0x2f
	.word	21                              # 0x15
	.word	62                              # 0x3e
	.word	18                              # 0x12
	.word	31                              # 0x1f
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	36                              # 0x24
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	27                              # 0x1b
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	29                              # 0x1d
	.word	22                              # 0x16
	.word	41                              # 0x29
	.word	22                              # 0x16
	.word	42                              # 0x2a
	.word	16                              # 0x10
	.word	60                              # 0x3c
	.word	15                              # 0xf
	.word	52                              # 0x34
	.word	14                              # 0xe
	.word	60                              # 0x3c
	.word	3                               # 0x3
	.word	78                              # 0x4e
	.word	4294967280                      # 0xfffffff0
	.word	123                             # 0x7b
	.word	21                              # 0x15
	.word	53                              # 0x35
	.word	22                              # 0x16
	.word	56                              # 0x38
	.word	25                              # 0x19
	.word	61                              # 0x3d
	.size	INIT_FLD_LAST_P, 2880

	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym INIT_MB_TYPE_I
	.addrsig_sym INIT_MB_TYPE_P
	.addrsig_sym INIT_B8_TYPE_I
	.addrsig_sym INIT_B8_TYPE_P
	.addrsig_sym INIT_MV_RES_I
	.addrsig_sym INIT_MV_RES_P
	.addrsig_sym INIT_REF_NO_I
	.addrsig_sym INIT_REF_NO_P
	.addrsig_sym INIT_DELTA_QP_I
	.addrsig_sym INIT_DELTA_QP_P
	.addrsig_sym INIT_MB_AFF_I
	.addrsig_sym INIT_MB_AFF_P
	.addrsig_sym INIT_TRANSFORM_SIZE_I
	.addrsig_sym INIT_TRANSFORM_SIZE_P
	.addrsig_sym INIT_IPR_I
	.addrsig_sym INIT_IPR_P
	.addrsig_sym INIT_CIPR_I
	.addrsig_sym INIT_CIPR_P
	.addrsig_sym INIT_CBP_I
	.addrsig_sym INIT_CBP_P
	.addrsig_sym INIT_BCBP_I
	.addrsig_sym INIT_BCBP_P
	.addrsig_sym INIT_MAP_I
	.addrsig_sym INIT_MAP_P
	.addrsig_sym INIT_LAST_I
	.addrsig_sym INIT_LAST_P
	.addrsig_sym INIT_ONE_I
	.addrsig_sym INIT_ONE_P
	.addrsig_sym INIT_ABS_I
	.addrsig_sym INIT_ABS_P
	.addrsig_sym INIT_FLD_MAP_I
	.addrsig_sym INIT_FLD_MAP_P
	.addrsig_sym INIT_FLD_LAST_I
	.addrsig_sym INIT_FLD_LAST_P
