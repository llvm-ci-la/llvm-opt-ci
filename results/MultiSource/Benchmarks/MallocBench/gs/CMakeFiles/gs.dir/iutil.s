	.file	"iutil.c"
	.text
	.globl	refcpy                          # -- Begin function refcpy
	.p2align	5
	.type	refcpy,@function
refcpy:                                 # @refcpy
# %bb.0:
	beqz	$a2, .LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a0, 16
	addi.d	$a1, $a1, 16
	vst	$vr0, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB0_1
.LBB0_2:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	refcpy, .Lfunc_end0-refcpy
                                        # -- End function
	.globl	obj_eq                          # -- Begin function obj_eq
	.p2align	5
	.type	obj_eq,@function
obj_eq:                                 # @obj_eq
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ld.h	$a2, $a0, 8
	bstrpick.d	$a2, $a2, 7, 2
	ori	$a5, $zero, 15
	sltu	$a6, $a5, $a2
	addi.d	$a3, $a0, 10
	masknez	$a7, $a2, $a6
	ld.hu	$a4, $a1, 8
	ori	$t0, $zero, 9
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	bstrpick.d	$a7, $a4, 7, 2
	sltu	$a5, $a5, $a7
	masknez	$a7, $a7, $a5
	maskeqz	$a5, $t0, $a5
	or	$a5, $a5, $a7
	addi.d	$fp, $a1, 10
	bne	$a6, $a5, .LBB1_5
# %bb.1:
	ld.hu	$a2, $a0, 8
	andi	$a4, $a2, 192
	bnez	$a4, .LBB1_16
.LBB1_2:
	bstrpick.d	$a4, $a2, 5, 2
	ori	$a2, $zero, 1
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI1_1)
	addi.d	$a5, $a5, %pc_lo12(.LJTI1_1)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB1_3:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB1_22
# %bb.4:
	ld.hu	$a0, $a3, 0
	ld.hu	$a1, $fp, 0
	b	.LBB1_17
.LBB1_5:
	addi.d	$a5, $a2, -5
	ori	$a6, $zero, 8
	move	$a2, $zero
	bltu	$a6, $a5, .LBB1_23
# %bb.6:
	addi.d	$s0, $sp, 18
	slli.d	$a5, $a5, 2
	pcalau12i	$a6, %pc_hi20(.LJTI1_0)
	addi.d	$a6, $a6, %pc_lo12(.LJTI1_0)
	ldx.w	$a5, $a6, $a5
	add.d	$a5, $a6, $a5
	jr	$a5
.LBB1_7:
	andi	$a2, $a4, 252
	ori	$a3, $zero, 44
	bne	$a2, $a3, .LBB1_22
# %bb.8:
	ld.d	$a0, $a0, 0
	fld.s	$fa0, $a1, 0
	movgr2fr.d	$fa1, $a0
	b	.LBB1_11
.LBB1_9:
	andi	$a2, $a4, 252
	ori	$a3, $zero, 20
	bne	$a2, $a3, .LBB1_22
# %bb.10:
	ld.d	$a1, $a1, 0
	fld.s	$fa0, $a0, 0
	movgr2fr.d	$fa1, $a1
.LBB1_11:
	ffint.s.l	$fa1, $fa1
.LBB1_12:
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a2, $fcc0
	b	.LBB1_23
.LBB1_13:
	andi	$a3, $a4, 252
	ori	$a4, $zero, 52
	move	$a2, $a0
	addi.d	$a0, $sp, 8
	beq	$a3, $a4, .LBB1_15
	b	.LBB1_22
.LBB1_14:
	andi	$a4, $a4, 252
	ori	$a5, $zero, 28
	move	$a2, $a1
	move	$fp, $s0
	addi.d	$a1, $sp, 8
	move	$s0, $a3
	bne	$a4, $a5, .LBB1_22
.LBB1_15:                               # %.sink.split
	move	$s1, $a1
	addi.d	$a1, $sp, 8
	move	$s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(name_string_ref)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $s0
	ld.hu	$a2, $a0, 8
	andi	$a4, $a2, 192
	beqz	$a4, .LBB1_2
.LBB1_16:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
.LBB1_17:
	xor	$a0, $a0, $a1
	sltui	$a2, $a0, 1
	b	.LBB1_23
.LBB1_18:
	ld.hu	$a0, $a0, 0
	ld.hu	$a1, $a1, 0
	b	.LBB1_17
.LBB1_19:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.hu	$a2, $a0, 0
	ld.hu	$a3, $a1, 0
	bne	$a2, $a3, .LBB1_22
# %bb.20:
	ld.hu	$a2, $a0, 2
	ld.hu	$a3, $a1, 2
	bne	$a2, $a3, .LBB1_22
# %bb.21:
	ld.hu	$a0, $a0, 4
	ld.hu	$a1, $a1, 4
	b	.LBB1_17
.LBB1_22:
	move	$a2, $zero
.LBB1_23:
	move	$a0, $a2
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB1_24:
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	b	.LBB1_12
.LBB1_25:
	ld.hu	$a2, $a3, 0
	ld.hu	$a3, $fp, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sltu	$a4, $a3, $a2
	masknez	$a5, $a2, $a4
	maskeqz	$a4, $a3, $a4
	or	$a5, $a4, $a5
	.p2align	4, , 16
.LBB1_26:                               # =>This Inner Loop Header: Depth=1
	move	$a4, $a5
	beqz	$a5, .LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_26 Depth=1
	ld.bu	$a6, $a0, 0
	ld.bu	$a7, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	addi.w	$a5, $a4, -1
	beq	$a6, $a7, .LBB1_26
.LBB1_28:                               # %bytes_compare.exit
	sltui	$a0, $a4, 1
	bstrpick.d	$a1, $a3, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	and	$a2, $a0, $a1
	b	.LBB1_23
.Lfunc_end1:
	.size	obj_eq, .Lfunc_end1-obj_eq
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
.LJTI1_1:
	.word	.LBB1_3-.LJTI1_1
	.word	.LBB1_18-.LJTI1_1
	.word	.LBB1_16-.LJTI1_1
	.word	.LBB1_16-.LJTI1_1
	.word	.LBB1_16-.LJTI1_1
	.word	.LBB1_16-.LJTI1_1
	.word	.LBB1_23-.LJTI1_1
	.word	.LBB1_16-.LJTI1_1
	.word	.LBB1_23-.LJTI1_1
	.word	.LBB1_16-.LJTI1_1
	.word	.LBB1_3-.LJTI1_1
	.word	.LBB1_24-.LJTI1_1
	.word	.LBB1_16-.LJTI1_1
	.word	.LBB1_25-.LJTI1_1
	.word	.LBB1_19-.LJTI1_1
	.word	.LBB1_16-.LJTI1_1
                                        # -- End function
	.text
	.globl	bytes_compare                   # -- Begin function bytes_compare
	.p2align	5
	.type	bytes_compare,@function
bytes_compare:                          # @bytes_compare
# %bb.0:
	sltu	$a4, $a3, $a1
	masknez	$a5, $a1, $a4
	maskeqz	$a6, $a3, $a4
	or	$a6, $a6, $a5
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	move	$a5, $a6
                                        # implicit-def: $r10
	beqz	$a5, .LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a7, $a0, 0
	ld.bu	$t0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 1
	addi.w	$a6, $a5, -1
	beq	$a7, $t0, .LBB2_1
# %bb.3:
	sltu	$a0, $a7, $t0
	sub.d	$a0, $zero, $a0
	ori	$a6, $a0, 1
.LBB2_4:                                # %.loopexit
	sltui	$a0, $a5, 1
	sltu	$a1, $a1, $a3
	sub.d	$a1, $a4, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a6, $a0
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	ret
.Lfunc_end2:
	.size	bytes_compare, .Lfunc_end2-bytes_compare
                                        # -- End function
	.globl	string_hash                     # -- Begin function string_hash
	.p2align	5
	.type	string_hash,@function
string_hash:                            # @string_hash
# %bb.0:
	move	$a2, $zero
	beqz	$a1, .LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a1, -1
	ld.bu	$a3, $a0, 0
	alsl.d	$a4, $a2, $a2, 3
	alsl.d	$a2, $a4, $a2, 1
	addi.d	$a0, $a0, 1
	add.w	$a2, $a2, $a3
	bnez	$a1, .LBB3_1
.LBB3_2:                                # %._crit_edge
	move	$a0, $a2
	ret
.Lfunc_end3:
	.size	string_hash, .Lfunc_end3-string_hash
                                        # -- End function
	.globl	string_to_ref                   # -- Begin function string_to_ref
	.p2align	5
	.type	string_to_ref,@function
string_to_ref:                          # @string_to_ref
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_2
# %bb.1:
	bstrpick.d	$a2, $s0, 31, 0
	move	$s2, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.d	$s2, $fp, 0
	ori	$a1, $zero, 822
	st.h	$a1, $fp, 8
	st.h	$s0, $fp, 10
	b	.LBB4_3
.LBB4_2:
	addi.w	$a0, $zero, -25
.LBB4_3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	string_to_ref, .Lfunc_end4-string_to_ref
                                        # -- End function
	.globl	ref_to_string                   # -- Begin function ref_to_string
	.p2align	5
	.type	ref_to_string,@function
ref_to_string:                          # @ref_to_string
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.hu	$fp, $a0, 10
	move	$a2, $a1
	addi.d	$a0, $fp, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
# %bb.1:
	ld.d	$a1, $s0, 0
	move	$s0, $a0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	stx.b	$zero, $s0, $fp
.LBB5_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	ref_to_string, .Lfunc_end5-ref_to_string
                                        # -- End function
	.globl	num_params                      # -- Begin function num_params
	.p2align	5
	.type	num_params,@function
num_params:                             # @num_params
# %bb.0:
	blez	$a1, .LBB6_8
# %bb.1:                                # %.lr.ph
	move	$a3, $a0
	move	$a0, $zero
	beqz	$a2, .LBB6_9
# %bb.2:                                # %.lr.ph.split.split.preheader
	addi.w	$a1, $a1, -1
	bstrpick.d	$a4, $a1, 31, 0
	addi.d	$a1, $a4, 1
	alsl.d	$a4, $a4, $a2, 2
	addi.w	$a2, $zero, -20
	ori	$a5, $zero, 5
	ori	$a6, $zero, 11
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_3:                                #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a7, $a3, 0
	movgr2fr.d	$fa0, $a7
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a4, 0
	ori	$a0, $a0, 1
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	blez	$a1, .LBB6_7
.LBB6_4:                                # %.lr.ph.split.split
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a7, $a3, 8
	bstrpick.d	$a7, $a7, 7, 2
	slli.w	$a0, $a0, 1
	beq	$a7, $a5, .LBB6_3
# %bb.5:                                # %.lr.ph.split.split
                                        #   in Loop: Header=BB6_4 Depth=1
	bne	$a7, $a6, .LBB6_14
# %bb.6:                                #   in Loop: Header=BB6_4 Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a4, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	bgtz	$a1, .LBB6_4
.LBB6_7:                                # %._crit_edge
	ret
.LBB6_8:
	move	$a0, $zero
	ret
.LBB6_9:                                # %.lr.ph.split.us.split.us.preheader
	addi.d	$a3, $a3, 8
	addi.w	$a2, $zero, -20
	ori	$a4, $zero, 11
	ori	$a5, $zero, 5
	b	.LBB6_11
	.p2align	4, , 16
.LBB6_10:                               #   in Loop: Header=BB6_11 Depth=1
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, -16
	blez	$a1, .LBB6_7
.LBB6_11:                               # %.lr.ph.split.us.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a3, 0
	bstrpick.d	$a6, $a6, 7, 2
	slli.w	$a0, $a0, 1
	beq	$a6, $a4, .LBB6_10
# %bb.12:                               # %.lr.ph.split.us.split.us
                                        #   in Loop: Header=BB6_11 Depth=1
	bne	$a6, $a5, .LBB6_14
# %bb.13:                               #   in Loop: Header=BB6_11 Depth=1
	ori	$a0, $a0, 1
	b	.LBB6_10
.LBB6_14:
	move	$a0, $a2
	ret
.Lfunc_end6:
	.size	num_params, .Lfunc_end6-num_params
                                        # -- End function
	.globl	real_param                      # -- Begin function real_param
	.p2align	5
	.type	real_param,@function
real_param:                             # @real_param
# %bb.0:
	ld.h	$a3, $a0, 8
	bstrpick.d	$a3, $a3, 7, 2
	ori	$a4, $zero, 11
	beq	$a3, $a4, .LBB7_6
# %bb.1:
	ori	$a4, $zero, 5
	bne	$a3, $a4, .LBB7_9
# %bb.2:
	ld.d	$a0, $a0, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa2, $fa0
	beqz	$a2, .LBB7_7
.LBB7_3:
	movgr2fr.w	$fa0, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa2
	fcvt.d.s	$fa1, $fa2
	bcnez	$fcc0, .LBB7_10
# %bb.4:
	lu12i.w	$a0, -487882
	ori	$a0, $a0, 2289
	lu32i.d	$a0, 325813
	lu52i.d	$a0, $a0, -1042
	movgr2fr.d	$fa2, $a0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB7_8
# %bb.5:
	addi.w	$a0, $zero, -15
	ret
.LBB7_6:
	fld.s	$fa2, $a0, 0
	bnez	$a2, .LBB7_3
.LBB7_7:
	fmov.s	$fa0, $fa2
.LBB7_8:
	move	$a0, $zero
	fst.s	$fa0, $a1, 0
	ret
.LBB7_9:
	addi.w	$a0, $zero, -20
	ret
.LBB7_10:
	vldi	$vr0, -1168
	fcmp.cule.s	$fcc0, $fa2, $fa0
	fmov.s	$fa0, $fa2
	bcnez	$fcc0, .LBB7_8
# %bb.11:
	lu12i.w	$a0, 509356
	ori	$a0, $a0, 1138
	lu32i.d	$a0, 10
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa0, $a0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB7_13
# %bb.12:
	addi.w	$a0, $zero, -15
	ret
.LBB7_13:
	vldi	$vr0, -1168
	move	$a0, $zero
	fst.s	$fa0, $a1, 0
	ret
.Lfunc_end7:
	.size	real_param, .Lfunc_end7-real_param
                                        # -- End function
	.globl	read_matrix                     # -- Begin function read_matrix
	.p2align	5
	.type	read_matrix,@function
read_matrix:                            # @read_matrix
# %bb.0:
	move	$a2, $a0
	ld.hu	$a3, $a0, 8
	bstrpick.d	$a4, $a3, 7, 2
	ori	$a5, $zero, 10
	addi.w	$a0, $zero, -20
	beq	$a4, $a5, .LBB8_2
# %bb.1:
	bnez	$a4, .LBB8_25
.LBB8_2:
	ld.hu	$a4, $a2, 10
	ori	$a5, $zero, 6
	bne	$a4, $a5, .LBB8_5
# %bb.3:
	andi	$a3, $a3, 512
	bnez	$a3, .LBB8_6
# %bb.4:
	addi.w	$a0, $zero, -7
	ret
.LBB8_5:
	addi.w	$a0, $zero, -15
	ret
.LBB8_6:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $a2, 0
	ori	$a2, $zero, 96
	move	$fp, $a0
	move	$a0, $a1
	move	$s0, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a0, $fp
	ld.h	$a2, $s0, 8
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a2, $zero, 11
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	beq	$a3, $a2, .LBB8_9
# %bb.7:
	ori	$a4, $zero, 5
	bne	$a3, $a4, .LBB8_25
# %bb.8:
	ld.d	$a3, $a1, 0
	movgr2fr.d	$fa0, $a3
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	ori	$a3, $zero, 44
	st.h	$a3, $a1, 8
.LBB8_9:
	ld.h	$a3, $a1, 24
	bstrpick.d	$a3, $a3, 7, 2
	beq	$a3, $a2, .LBB8_12
# %bb.10:
	ori	$a2, $zero, 5
	bne	$a3, $a2, .LBB8_25
# %bb.11:
	ld.d	$a2, $a1, 16
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a1, 16
	ori	$a2, $zero, 44
	st.h	$a2, $a1, 24
.LBB8_12:
	ld.h	$a2, $a1, 40
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a2, $zero, 11
	beq	$a3, $a2, .LBB8_15
# %bb.13:
	ori	$a4, $zero, 5
	bne	$a3, $a4, .LBB8_25
# %bb.14:
	ld.d	$a3, $a1, 32
	movgr2fr.d	$fa0, $a3
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a1, 32
	ori	$a3, $zero, 44
	st.h	$a3, $a1, 40
.LBB8_15:
	ld.h	$a3, $a1, 56
	bstrpick.d	$a3, $a3, 7, 2
	beq	$a3, $a2, .LBB8_18
# %bb.16:
	ori	$a2, $zero, 5
	bne	$a3, $a2, .LBB8_25
# %bb.17:
	ld.d	$a2, $a1, 48
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a1, 48
	ori	$a2, $zero, 44
	st.h	$a2, $a1, 56
.LBB8_18:
	ld.h	$a2, $a1, 72
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a2, $zero, 11
	beq	$a3, $a2, .LBB8_21
# %bb.19:
	ori	$a4, $zero, 5
	bne	$a3, $a4, .LBB8_25
# %bb.20:
	ld.d	$a3, $a1, 64
	movgr2fr.d	$fa0, $a3
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a1, 64
	ori	$a3, $zero, 44
	st.h	$a3, $a1, 72
.LBB8_21:
	ld.h	$a3, $a1, 88
	bstrpick.d	$a3, $a3, 7, 2
	beq	$a3, $a2, .LBB8_24
# %bb.22:
	ori	$a2, $zero, 5
	bne	$a3, $a2, .LBB8_25
# %bb.23:
	ld.d	$a0, $a1, 80
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a1, 80
	ori	$a0, $zero, 44
	st.h	$a0, $a1, 88
.LBB8_24:
	move	$a0, $zero
.LBB8_25:                               # %.loopexit
	ret
.Lfunc_end8:
	.size	read_matrix, .Lfunc_end8-read_matrix
                                        # -- End function
	.globl	write_matrix                    # -- Begin function write_matrix
	.p2align	5
	.type	write_matrix,@function
write_matrix:                           # @write_matrix
# %bb.0:
	ld.hu	$a1, $a0, 8
	andi	$a2, $a1, 252
	beqz	$a2, .LBB9_3
# %bb.1:
	addi.w	$a0, $zero, -20
.LBB9_2:                                # %.loopexit
	ret
.LBB9_3:
	ld.hu	$a2, $a0, 10
	ori	$a3, $zero, 6
	bne	$a2, $a3, .LBB9_6
# %bb.4:
	andi	$a1, $a1, 256
	bnez	$a1, .LBB9_7
# %bb.5:
	addi.w	$a0, $zero, -7
	ret
.LBB9_6:
	addi.w	$a0, $zero, -15
	ret
.LBB9_7:
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a1, 8
	bstrpick.d	$a2, $a0, 7, 2
	ori	$a0, $zero, 5
	beq	$a2, $a0, .LBB9_10
# %bb.8:
	ori	$a3, $zero, 11
	beq	$a2, $a3, .LBB9_10
# %bb.9:
	st.d	$zero, $a1, 0
	ori	$a2, $zero, 20
	st.h	$a2, $a1, 8
.LBB9_10:
	ld.h	$a2, $a1, 24
	bstrpick.d	$a2, $a2, 7, 2
	beq	$a2, $a0, .LBB9_13
# %bb.11:
	ori	$a0, $zero, 11
	beq	$a2, $a0, .LBB9_13
# %bb.12:
	st.d	$zero, $a1, 16
	ori	$a0, $zero, 20
	st.h	$a0, $a1, 24
.LBB9_13:
	ld.h	$a0, $a1, 40
	bstrpick.d	$a2, $a0, 7, 2
	ori	$a0, $zero, 5
	beq	$a2, $a0, .LBB9_16
# %bb.14:
	ori	$a3, $zero, 11
	beq	$a2, $a3, .LBB9_16
# %bb.15:
	st.d	$zero, $a1, 32
	ori	$a2, $zero, 20
	st.h	$a2, $a1, 40
.LBB9_16:
	ld.h	$a2, $a1, 56
	bstrpick.d	$a2, $a2, 7, 2
	beq	$a2, $a0, .LBB9_19
# %bb.17:
	ori	$a0, $zero, 11
	beq	$a2, $a0, .LBB9_19
# %bb.18:
	st.d	$zero, $a1, 48
	ori	$a0, $zero, 20
	st.h	$a0, $a1, 56
.LBB9_19:
	ld.h	$a0, $a1, 72
	bstrpick.d	$a0, $a0, 7, 2
	ori	$a2, $zero, 5
	beq	$a0, $a2, .LBB9_22
# %bb.20:
	ori	$a3, $zero, 11
	beq	$a0, $a3, .LBB9_22
# %bb.21:
	st.d	$zero, $a1, 64
	ori	$a0, $zero, 20
	st.h	$a0, $a1, 72
.LBB9_22:
	ld.h	$a0, $a1, 88
	bstrpick.d	$a3, $a0, 7, 2
	move	$a0, $zero
	beq	$a3, $a2, .LBB9_2
# %bb.23:
	ori	$a2, $zero, 11
	beq	$a3, $a2, .LBB9_2
# %bb.24:
	move	$a0, $zero
	st.d	$zero, $a1, 80
	ori	$a2, $zero, 20
	st.h	$a2, $a1, 88
	ret
.Lfunc_end9:
	.size	write_matrix, .Lfunc_end9-write_matrix
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
