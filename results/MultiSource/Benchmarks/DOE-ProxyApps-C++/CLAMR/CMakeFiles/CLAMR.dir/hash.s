	.file	"hash.c"
	.text
	.globl	get_hash_method                 # -- Begin function get_hash_method
	.p2align	5
	.type	get_hash_method,@function
get_hash_method:                        # @get_hash_method
# %bb.0:
	pcalau12i	$a0, %pc_hi20(hash_method)
	ld.w	$a0, $a0, %pc_lo12(hash_method)
	ret
.Lfunc_end0:
	.size	get_hash_method, .Lfunc_end0-get_hash_method
                                        # -- End function
	.globl	get_hashtablesize               # -- Begin function get_hashtablesize
	.p2align	5
	.type	get_hashtablesize,@function
get_hashtablesize:                      # @get_hashtablesize
# %bb.0:
	pcalau12i	$a0, %pc_hi20(hashtablesize)
	ld.wu	$a0, $a0, %pc_lo12(hashtablesize)
	ret
.Lfunc_end1:
	.size	get_hashtablesize, .Lfunc_end1-get_hashtablesize
                                        # -- End function
	.globl	compact_hash_init               # -- Begin function compact_hash_init
	.p2align	5
	.type	compact_hash_init,@function
compact_hash_init:                      # @compact_hash_init
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(hash_ncells)
	st.w	$zero, $a4, %pc_lo12(hash_ncells)
	pcalau12i	$a4, %pc_hi20(write_hash_collisions)
	st.w	$zero, $a4, %pc_lo12(write_hash_collisions)
	pcalau12i	$a4, %pc_hi20(read_hash_collisions)
	st.w	$zero, $a4, %pc_lo12(read_hash_collisions)
	pcalau12i	$a4, %pc_hi20(hash_queries)
	st.w	$zero, $a4, %pc_lo12(hash_queries)
	pcalau12i	$s2, %pc_hi20(hash_report_level)
	pcalau12i	$a4, %pc_hi20(hash_stride)
	st.w	$a1, $a4, %pc_lo12(hash_stride)
	pcalau12i	$a4, %pc_hi20(choose_hash_method)
	ld.w	$s1, $a4, %pc_lo12(choose_hash_method)
	st.w	$a3, $s2, %pc_lo12(hash_report_level)
	alsl.w	$s0, $a0, $a0, 1
	mul.w	$fp, $a2, $a1
	pcalau12i	$s3, %pc_hi20(hash_method)
	beqz	$s1, .LBB2_2
# %bb.1:                                # %.thread
	st.w	$s1, $s3, %pc_lo12(hash_method)
	ori	$a0, $zero, 2
	bgeu	$a3, $a0, .LBB2_4
	b	.LBB2_5
.LBB2_2:
	ld.w	$s1, $s3, %pc_lo12(hash_method)
	beqz	$s1, .LBB2_24
# %bb.3:
	ori	$a0, $zero, 2
	bltu	$a3, $a0, .LBB2_5
.LBB2_4:
	addi.d	$a0, $s1, -1
	sltu	$a1, $zero, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_5:
	ori	$a0, $zero, 1
	beq	$s1, $a0, .LBB2_36
.LBB2_6:
	pcalau12i	$s1, %pc_hi20(hashtablesize)
	st.w	$s0, $s1, %pc_lo12(hashtablesize)
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a0, -1024
	lu52i.d	$a0, $a0, 1053
	movgr2fr.d	$fs0, $a0
	fdiv.d	$fa0, $fa0, $fs0
	lu12i.w	$a0, -3072
	lu52i.d	$a0, $a0, 1054
	movgr2fr.d	$fs1, $a0
	fmul.d	$fa0, $fa0, $fs1
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	lu52i.d	$a0, $zero, 1086
	movgr2fr.d	$fs2, $a0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	ftintrz.l.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	fsub.d	$fa0, $fa0, $fs2
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	lu52i.d	$s0, $zero, -2048
	xor	$a2, $a2, $s0
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	pcalau12i	$s4, %pc_hi20(AA)
	st.d	$a0, $s4, %pc_lo12(AA)
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	movgr2fr.d	$fa1, $zero
	fadd.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs2
	ftintrz.l.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	fsub.d	$fa0, $fa0, $fs2
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	xor	$a2, $a2, $s0
	masknez	$a1, $a2, $a1
	or	$a2, $a0, $a1
	ld.d	$a1, $s4, %pc_lo12(AA)
	pcalau12i	$a0, %pc_hi20(BB)
	addi.w	$a3, $zero, -6
	lu32i.d	$a3, 0
	st.d	$a2, $a0, %pc_lo12(BB)
	bltu	$a3, $a1, .LBB2_49
# %bb.7:
	addi.w	$a0, $zero, -5
	lu32i.d	$a0, 0
	bgeu	$a2, $a0, .LBB2_49
# %bb.8:
	ld.w	$a0, $s2, %pc_lo12(hash_report_level)
	ori	$a3, $zero, 2
	bltu	$a0, $a3, .LBB2_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_10:
	ld.w	$a0, $s1, %pc_lo12(hashtablesize)
	slli.w	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a2, $a1, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 4
	ori	$a3, $zero, 98
	pcaddu18i	$ra, %call36(genvector_p)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s1, %pc_lo12(hashtablesize)
	slli.d	$a1, $s1, 1
	addi.w	$a2, $a1, 0
	move	$s0, $a0
	beqz	$a2, .LBB2_18
# %bb.11:                               # %.lr.ph63.preheader
	bstrpick.d	$a0, $a1, 31, 0
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB2_13
# %bb.12:
	move	$a1, $zero
	b	.LBB2_16
.LBB2_13:                               # %vector.ph
	srli.d	$a1, $a1, 1
	addi.d	$a2, $a1, 1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 0, 0
	slli.d	$a1, $a3, 1
	addi.d	$a4, $s0, 8
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a6, $a3
	.p2align	4, , 16
.LBB2_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a4, -8
	st.w	$a5, $a4, 0
	addi.d	$a6, $a6, -2
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB2_14
# %bb.15:                               # %middle.block
	beq	$a2, $a3, .LBB2_18
.LBB2_16:                               # %.lr.ph63.preheader77
	alsl.d	$a2, $a1, $s0, 2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	.p2align	4, , 16
.LBB2_17:                               # %.lr.ph63
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 8
	bltu	$a1, $a0, .LBB2_17
.LBB2_18:                               # %._crit_edge64
	ld.w	$a0, $s3, %pc_lo12(hash_method)
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB2_29
# %bb.19:                               # %._crit_edge64
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB2_26
# %bb.20:                               # %._crit_edge64
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB2_39
# %bb.21:
	ld.w	$a2, $s2, %pc_lo12(hash_report_level)
	ori	$a0, $zero, 3
	bltu	$a0, $a2, .LBB2_46
# %bb.22:
	pcalau12i	$a0, %pc_hi20(write_hash_primejump_report_level_2)
	addi.d	$a0, $a0, %pc_lo12(write_hash_primejump_report_level_2)
	pcalau12i	$a1, %pc_hi20(read_hash_primejump_report_level_2)
	addi.d	$a1, $a1, %pc_lo12(read_hash_primejump_report_level_2)
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI2_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI2_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB2_23:
	pcalau12i	$a0, %pc_hi20(read_hash)
	pcalau12i	$a1, %pc_hi20(read_hash_primejump)
	addi.d	$a1, $a1, %pc_lo12(read_hash_primejump)
	st.d	$a1, $a0, %pc_lo12(read_hash)
	pcalau12i	$a0, %pc_hi20(write_hash)
	pcalau12i	$a1, %pc_hi20(write_hash_primejump)
	addi.d	$a1, $a1, %pc_lo12(write_hash_primejump)
	st.d	$a1, $a0, %pc_lo12(write_hash)
	b	.LBB2_47
.LBB2_24:
	bstrpick.d	$a0, $fp, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	bstrpick.d	$a0, $s0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	pcalau12i	$a0, %pc_hi20(mem_opt_factor)
	fld.s	$fa2, $a0, %pc_lo12(mem_opt_factor)
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa1, $fa0
	vldi	$vr0, -1168
	fcmp.ceq.s	$fcc0, $fa2, $fa0
	fcvt.d.s	$fa0, $fa2
	bcnez	$fcc0, .LBB2_32
# %bb.25:
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, -419431
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa2, $fa0, $fa2
	vldi	$vr3, -972
	fdiv.d	$fa2, $fa3, $fa2
	fcvt.s.d	$fa2, $fa2
	b	.LBB2_33
.LBB2_26:
	ld.w	$a2, $s2, %pc_lo12(hash_report_level)
	bltu	$a1, $a2, .LBB2_46
# %bb.27:
	pcalau12i	$a0, %pc_hi20(write_hash_quadratic_report_level_2)
	addi.d	$a0, $a0, %pc_lo12(write_hash_quadratic_report_level_2)
	pcalau12i	$a1, %pc_hi20(read_hash_quadratic_report_level_2)
	addi.d	$a1, $a1, %pc_lo12(read_hash_quadratic_report_level_2)
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI2_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI2_1)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB2_28:
	pcalau12i	$a0, %pc_hi20(read_hash)
	pcalau12i	$a1, %pc_hi20(read_hash_quadratic)
	addi.d	$a1, $a1, %pc_lo12(read_hash_quadratic)
	st.d	$a1, $a0, %pc_lo12(read_hash)
	pcalau12i	$a0, %pc_hi20(write_hash)
	pcalau12i	$a1, %pc_hi20(write_hash_quadratic)
	addi.d	$a1, $a1, %pc_lo12(write_hash_quadratic)
	st.d	$a1, $a0, %pc_lo12(write_hash)
	b	.LBB2_47
.LBB2_29:
	ld.w	$a2, $s2, %pc_lo12(hash_report_level)
	ori	$a0, $zero, 3
	bltu	$a0, $a2, .LBB2_46
# %bb.30:
	pcalau12i	$a0, %pc_hi20(write_hash_linear_report_level_2)
	addi.d	$a0, $a0, %pc_lo12(write_hash_linear_report_level_2)
	pcalau12i	$a1, %pc_hi20(read_hash_linear_report_level_2)
	addi.d	$a1, $a1, %pc_lo12(read_hash_linear_report_level_2)
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI2_2)
	addi.d	$a3, $a3, %pc_lo12(.LJTI2_2)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB2_31:
	pcalau12i	$a0, %pc_hi20(read_hash)
	pcalau12i	$a1, %pc_hi20(read_hash_linear)
	addi.d	$a1, $a1, %pc_lo12(read_hash_linear)
	st.d	$a1, $a0, %pc_lo12(read_hash)
	pcalau12i	$a0, %pc_hi20(write_hash)
	pcalau12i	$a1, %pc_hi20(write_hash_linear)
	addi.d	$a1, $a1, %pc_lo12(write_hash_linear)
	st.d	$a1, $a0, %pc_lo12(write_hash)
	b	.LBB2_47
.LBB2_32:
	vldi	$vr2, -1228
.LBB2_33:
	fcmp.clt.s	$fcc0, $fa1, $fa2
	ori	$a0, $zero, 3
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	st.w	$a1, $s3, %pc_lo12(hash_method)
	bgeu	$a2, $a3, .LBB2_35
# %bb.34:
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a4, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a5, $fp
	move	$a6, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s3, %pc_lo12(hash_method)
	ld.w	$a3, $s2, %pc_lo12(hash_report_level)
	ori	$a0, $zero, 2
	bgeu	$a3, $a0, .LBB2_4
	b	.LBB2_5
.LBB2_35:                               # %.thread75
	bceqz	$fcc0, .LBB2_6
.LBB2_36:
	pcalau12i	$s0, %pc_hi20(hashtablesize)
	st.w	$fp, $s0, %pc_lo12(hashtablesize)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 4
	ori	$a3, $zero, 149
	move	$a0, $fp
	pcaddu18i	$ra, %call36(genvector_p)
	jirl	$ra, $ra, 0
	ld.wu	$s1, $s0, %pc_lo12(hashtablesize)
	addi.w	$a1, $s1, 0
	move	$s0, $a0
	beqz	$a1, .LBB2_38
# %bb.37:                               # %.lr.ph.preheader
	slli.d	$a2, $s1, 2
	ori	$a1, $zero, 255
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_38:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(read_hash)
	pcalau12i	$a1, %pc_hi20(read_hash_perfect)
	addi.d	$a1, $a1, %pc_lo12(read_hash_perfect)
	st.d	$a1, $a0, %pc_lo12(read_hash)
	pcalau12i	$a0, %pc_hi20(write_hash)
	pcalau12i	$a1, %pc_hi20(write_hash_perfect)
	addi.d	$a1, $a1, %pc_lo12(write_hash_perfect)
	st.d	$a1, $a0, %pc_lo12(write_hash)
.LBB2_39:
	ld.w	$a0, $s2, %pc_lo12(hash_report_level)
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB2_46
	b	.LBB2_47
.LBB2_40:
	pcalau12i	$a0, %pc_hi20(read_hash)
	pcalau12i	$a1, %pc_hi20(read_hash_quadratic_report_level_1)
	addi.d	$a1, $a1, %pc_lo12(read_hash_quadratic_report_level_1)
	st.d	$a1, $a0, %pc_lo12(read_hash)
	pcalau12i	$a0, %pc_hi20(write_hash)
	pcalau12i	$a1, %pc_hi20(write_hash_quadratic_report_level_1)
	addi.d	$a1, $a1, %pc_lo12(write_hash_quadratic_report_level_1)
	st.d	$a1, $a0, %pc_lo12(write_hash)
	b	.LBB2_47
.LBB2_41:
	pcalau12i	$a0, %pc_hi20(write_hash_quadratic_report_level_3)
	addi.d	$a0, $a0, %pc_lo12(write_hash_quadratic_report_level_3)
	pcalau12i	$a1, %pc_hi20(read_hash_quadratic_report_level_3)
	addi.d	$a1, $a1, %pc_lo12(read_hash_quadratic_report_level_3)
	b	.LBB2_45
.LBB2_42:
	pcalau12i	$a0, %pc_hi20(read_hash)
	pcalau12i	$a1, %pc_hi20(read_hash_primejump_report_level_1)
	addi.d	$a1, $a1, %pc_lo12(read_hash_primejump_report_level_1)
	st.d	$a1, $a0, %pc_lo12(read_hash)
	pcalau12i	$a0, %pc_hi20(write_hash)
	pcalau12i	$a1, %pc_hi20(write_hash_primejump_report_level_1)
	addi.d	$a1, $a1, %pc_lo12(write_hash_primejump_report_level_1)
	st.d	$a1, $a0, %pc_lo12(write_hash)
	b	.LBB2_47
.LBB2_43:
	pcalau12i	$a0, %pc_hi20(write_hash_linear_report_level_3)
	addi.d	$a0, $a0, %pc_lo12(write_hash_linear_report_level_3)
	pcalau12i	$a1, %pc_hi20(read_hash_linear_report_level_3)
	addi.d	$a1, $a1, %pc_lo12(read_hash_linear_report_level_3)
	b	.LBB2_45
.LBB2_44:
	pcalau12i	$a0, %pc_hi20(write_hash_primejump_report_level_3)
	addi.d	$a0, $a0, %pc_lo12(write_hash_primejump_report_level_3)
	pcalau12i	$a1, %pc_hi20(read_hash_primejump_report_level_3)
	addi.d	$a1, $a1, %pc_lo12(read_hash_primejump_report_level_3)
.LBB2_45:                               # %.thread52.sink.split
	pcalau12i	$a2, %pc_hi20(read_hash)
	st.d	$a1, $a2, %pc_lo12(read_hash)
	pcalau12i	$a1, %pc_hi20(write_hash)
	st.d	$a0, $a1, %pc_lo12(write_hash)
.LBB2_46:                               # %.thread52
	sub.w	$a3, $fp, $s1
	bstrpick.d	$a0, $fp, 31, 0
	bstrpick.d	$a1, $s1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a4, $fa0
	addi.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_47:                               # %.thread58
	move	$a0, $s0
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB2_48:
	pcalau12i	$a0, %pc_hi20(read_hash)
	pcalau12i	$a1, %pc_hi20(read_hash_linear_report_level_1)
	addi.d	$a1, $a1, %pc_lo12(read_hash_linear_report_level_1)
	st.d	$a1, $a0, %pc_lo12(read_hash)
	pcalau12i	$a0, %pc_hi20(write_hash)
	pcalau12i	$a1, %pc_hi20(write_hash_linear_report_level_1)
	addi.d	$a1, $a1, %pc_lo12(write_hash_linear_report_level_1)
	st.d	$a1, $a0, %pc_lo12(write_hash)
	b	.LBB2_47
.LBB2_49:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	compact_hash_init, .Lfunc_end2-compact_hash_init
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_23-.LJTI2_0
	.word	.LBB2_42-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_44-.LJTI2_0
.LJTI2_1:
	.word	.LBB2_28-.LJTI2_1
	.word	.LBB2_40-.LJTI2_1
	.word	.LBB2_45-.LJTI2_1
	.word	.LBB2_41-.LJTI2_1
.LJTI2_2:
	.word	.LBB2_31-.LJTI2_2
	.word	.LBB2_48-.LJTI2_2
	.word	.LBB2_45-.LJTI2_2
	.word	.LBB2_43-.LJTI2_2
                                        # -- End function
	.text
	.globl	read_hash_linear                # -- Begin function read_hash_linear
	.p2align	5
	.type	read_hash_linear,@function
read_hash_linear:                       # @read_hash_linear
# %bb.0:
	pcalau12i	$a2, %pc_hi20(AA)
	ld.d	$a2, $a2, %pc_lo12(AA)
	pcalau12i	$a3, %pc_hi20(BB)
	ld.d	$a3, $a3, %pc_lo12(BB)
	mul.d	$a2, $a2, $a0
	add.d	$a3, $a2, $a3
	ori	$a2, $zero, 13
	lu52i.d	$a2, $a2, -2048
	bstrins.d	$a2, $a2, 33, 31
	mulh.du	$a2, $a3, $a2
	srli.d	$a2, $a2, 31
	addi.w	$a4, $zero, -5
	lu32i.d	$a4, 0
	mul.d	$a4, $a2, $a4
	pcalau12i	$a2, %pc_hi20(hashtablesize)
	ld.w	$a2, $a2, %pc_lo12(hashtablesize)
	sub.w	$a6, $a3, $a4
	addi.w	$a4, $a0, 0
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	mod.wu	$a3, $a6, $a2
	slli.d	$a5, $a3, 3
	bstrpick.d	$a5, $a5, 33, 3
	slli.d	$a5, $a5, 3
	ldx.w	$a5, $a1, $a5
	beq	$a5, $a4, .LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	addi.w	$a6, $a3, 1
	bne	$a5, $a0, .LBB3_1
.LBB3_3:                                # %.critedge
	beq	$a5, $a0, .LBB3_5
# %bb.4:
	slli.d	$a0, $a3, 1
	ori	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
.LBB3_5:
	ret
.Lfunc_end3:
	.size	read_hash_linear, .Lfunc_end3-read_hash_linear
                                        # -- End function
	.globl	write_hash_linear               # -- Begin function write_hash_linear
	.p2align	5
	.type	write_hash_linear,@function
write_hash_linear:                      # @write_hash_linear
# %bb.0:
	pcalau12i	$a3, %pc_hi20(AA)
	ld.d	$a3, $a3, %pc_lo12(AA)
	pcalau12i	$a4, %pc_hi20(BB)
	ld.d	$a4, $a4, %pc_lo12(BB)
	mul.d	$a3, $a3, $a1
	add.d	$a4, $a3, $a4
	ori	$a3, $zero, 13
	lu52i.d	$a3, $a3, -2048
	bstrins.d	$a3, $a3, 33, 31
	mulh.du	$a3, $a4, $a3
	srli.d	$a3, $a3, 31
	addi.w	$a5, $zero, -5
	lu32i.d	$a5, 0
	mul.d	$a5, $a3, $a5
	pcalau12i	$a3, %pc_hi20(hashtablesize)
	ld.w	$a3, $a3, %pc_lo12(hashtablesize)
	sub.w	$t0, $a4, $a5
	addi.w	$a4, $zero, -1
	addi.w	$a5, $a1, 0
	.p2align	4, , 16
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	mod.wu	$a6, $t0, $a3
	slli.d	$a7, $a6, 3
	bstrpick.d	$a7, $a7, 33, 3
	slli.d	$t0, $a7, 3
	ldx.w	$t1, $a2, $t0
	beq	$t1, $a4, .LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	addi.w	$t0, $a6, 1
	bne	$t1, $a5, .LBB4_1
.LBB4_3:                                # %.critedge
	slli.d	$a3, $a6, 1
	alsl.d	$a4, $a7, $a2, 3
	st.w	$a1, $a4, 0
	ori	$a1, $a3, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end4:
	.size	write_hash_linear, .Lfunc_end4-write_hash_linear
                                        # -- End function
	.globl	read_hash_linear_report_level_1 # -- Begin function read_hash_linear_report_level_1
	.p2align	5
	.type	read_hash_linear_report_level_1,@function
read_hash_linear_report_level_1:        # @read_hash_linear_report_level_1
# %bb.0:
	pcalau12i	$a2, %pc_hi20(hash_queries)
	ld.w	$a3, $a2, %pc_lo12(hash_queries)
	pcalau12i	$a4, %pc_hi20(AA)
	ld.d	$a4, $a4, %pc_lo12(AA)
	pcalau12i	$a5, %pc_hi20(BB)
	ld.d	$a5, $a5, %pc_lo12(BB)
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, %pc_lo12(hash_queries)
	mul.d	$a2, $a4, $a0
	add.d	$a3, $a2, $a5
	ori	$a2, $zero, 13
	lu52i.d	$a2, $a2, -2048
	bstrins.d	$a2, $a2, 33, 31
	mulh.du	$a2, $a3, $a2
	srli.d	$a4, $a2, 31
	addi.w	$a5, $zero, -5
	pcalau12i	$a2, %pc_hi20(hashtablesize)
	ld.w	$a2, $a2, %pc_lo12(hashtablesize)
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	sub.w	$a3, $a3, $a4
	mod.wu	$a4, $a3, $a2
	slli.d	$a3, $a4, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	ldx.w	$t0, $a1, $a3
	move	$a3, $zero
	addi.w	$a0, $a0, 0
	slli.d	$a5, $a4, 1
	addi.d	$a6, $t0, 1
	sltui	$a7, $a6, 1
	beq	$t0, $a0, .LBB5_5
# %bb.1:
	addi.w	$a6, $zero, -1
	beq	$t0, $a6, .LBB5_5
# %bb.2:                                # %.lr.ph.preheader
	move	$a3, $zero
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a4, 1
	xor	$a5, $a4, $a2
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	slli.d	$a5, $a4, 3
	bstrpick.d	$a5, $a5, 33, 3
	slli.d	$a5, $a5, 3
	ldx.w	$t0, $a1, $a5
	addi.d	$a3, $a3, 1
	slli.d	$a5, $a4, 1
	addi.d	$a7, $t0, 1
	sltui	$a7, $a7, 1
	beq	$t0, $a0, .LBB5_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	bne	$t0, $a6, .LBB5_3
.LBB5_5:                                # %.critedge
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a2, $a2, $a3
	st.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	beqz	$a7, .LBB5_7
# %bb.6:
	addi.w	$a0, $zero, -1
	ret
.LBB5_7:
	ori	$a0, $a5, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ret
.Lfunc_end5:
	.size	read_hash_linear_report_level_1, .Lfunc_end5-read_hash_linear_report_level_1
                                        # -- End function
	.globl	write_hash_linear_report_level_1 # -- Begin function write_hash_linear_report_level_1
	.p2align	5
	.type	write_hash_linear_report_level_1,@function
write_hash_linear_report_level_1:       # @write_hash_linear_report_level_1
# %bb.0:
	pcalau12i	$a3, %pc_hi20(hash_ncells)
	ld.w	$a4, $a3, %pc_lo12(hash_ncells)
	pcalau12i	$a5, %pc_hi20(AA)
	ld.d	$a5, $a5, %pc_lo12(AA)
	pcalau12i	$a6, %pc_hi20(BB)
	ld.d	$a6, $a6, %pc_lo12(BB)
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, %pc_lo12(hash_ncells)
	mul.d	$a3, $a5, $a1
	add.d	$a4, $a3, $a6
	ori	$a3, $zero, 13
	lu52i.d	$a3, $a3, -2048
	bstrins.d	$a3, $a3, 33, 31
	mulh.du	$a3, $a4, $a3
	srli.d	$a5, $a3, 31
	addi.w	$a6, $zero, -5
	pcalau12i	$a3, %pc_hi20(hashtablesize)
	ld.w	$a3, $a3, %pc_lo12(hashtablesize)
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	sub.w	$a4, $a4, $a5
	mod.wu	$a4, $a4, $a3
	slli.d	$a5, $a4, 3
	bstrpick.d	$a6, $a5, 33, 3
	slli.d	$a5, $a6, 3
	ldx.w	$a7, $a2, $a5
	slli.d	$t1, $a4, 1
	addi.w	$a5, $zero, -1
	alsl.d	$t2, $a6, $a2, 3
	beq	$a7, $a5, .LBB6_6
# %bb.1:
	addi.w	$a6, $a1, 0
	beq	$a7, $a6, .LBB6_6
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a7, %pc_hi20(write_hash_collisions)
	ld.w	$t0, $a7, %pc_lo12(write_hash_collisions)
	.p2align	4, , 16
.LBB6_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a4, 1
	xor	$t1, $a4, $a3
	sltui	$t1, $t1, 1
	masknez	$a4, $a4, $t1
	slli.d	$t1, $a4, 3
	bstrpick.d	$t2, $t1, 33, 3
	slli.d	$t1, $t2, 3
	ldx.w	$t1, $a2, $t1
	addi.d	$t0, $t0, 1
	beq	$t1, $a5, .LBB6_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	bne	$t1, $a6, .LBB6_3
.LBB6_5:                                # %..critedge_crit_edge
	slli.d	$t1, $a4, 1
	alsl.d	$t2, $t2, $a2, 3
	st.w	$t0, $a7, %pc_lo12(write_hash_collisions)
.LBB6_6:                                # %.critedge
	st.w	$a1, $t2, 0
	ori	$a1, $t1, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end6:
	.size	write_hash_linear_report_level_1, .Lfunc_end6-write_hash_linear_report_level_1
                                        # -- End function
	.globl	read_hash_linear_report_level_2 # -- Begin function read_hash_linear_report_level_2
	.p2align	5
	.type	read_hash_linear_report_level_2,@function
read_hash_linear_report_level_2:        # @read_hash_linear_report_level_2
# %bb.0:
	pcalau12i	$a2, %pc_hi20(hash_queries)
	ld.w	$a3, $a2, %pc_lo12(hash_queries)
	pcalau12i	$a4, %pc_hi20(AA)
	ld.d	$a4, $a4, %pc_lo12(AA)
	pcalau12i	$a5, %pc_hi20(BB)
	ld.d	$a5, $a5, %pc_lo12(BB)
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, %pc_lo12(hash_queries)
	mul.d	$a2, $a4, $a0
	add.d	$a3, $a2, $a5
	ori	$a2, $zero, 13
	lu52i.d	$a2, $a2, -2048
	bstrins.d	$a2, $a2, 33, 31
	mulh.du	$a2, $a3, $a2
	srli.d	$a4, $a2, 31
	addi.w	$a5, $zero, -5
	pcalau12i	$a2, %pc_hi20(hashtablesize)
	ld.w	$a2, $a2, %pc_lo12(hashtablesize)
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	sub.w	$a3, $a3, $a4
	mod.wu	$a4, $a3, $a2
	slli.d	$a3, $a4, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	ldx.w	$t0, $a1, $a3
	move	$a3, $zero
	addi.w	$a0, $a0, 0
	slli.d	$a5, $a4, 1
	addi.d	$a6, $t0, 1
	sltui	$a7, $a6, 1
	beq	$t0, $a0, .LBB7_6
# %bb.1:
	addi.w	$a6, $zero, -1
	beq	$t0, $a6, .LBB7_6
# %bb.2:                                # %.lr.ph.preheader
	move	$a3, $zero
	ori	$t0, $zero, 1000
	.p2align	4, , 16
.LBB7_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beq	$a3, $t0, .LBB7_9
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	addi.w	$a4, $a4, 1
	xor	$a5, $a4, $a2
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	slli.d	$a5, $a4, 3
	bstrpick.d	$a5, $a5, 33, 3
	slli.d	$a5, $a5, 3
	ldx.w	$t1, $a1, $a5
	addi.w	$a3, $a3, 1
	slli.d	$a5, $a4, 1
	addi.d	$a7, $t1, 1
	sltui	$a7, $a7, 1
	beq	$t1, $a0, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	bne	$t1, $a6, .LBB7_3
.LBB7_6:                                # %.critedge
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a2, $a2, $a3
	st.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	beqz	$a7, .LBB7_8
# %bb.7:
	addi.w	$a0, $zero, -1
	ret
.LBB7_8:
	ori	$a0, $a5, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ret
.LBB7_9:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	read_hash_linear_report_level_2, .Lfunc_end7-read_hash_linear_report_level_2
                                        # -- End function
	.globl	write_hash_linear_report_level_2 # -- Begin function write_hash_linear_report_level_2
	.p2align	5
	.type	write_hash_linear_report_level_2,@function
write_hash_linear_report_level_2:       # @write_hash_linear_report_level_2
# %bb.0:
	pcalau12i	$a3, %pc_hi20(hash_ncells)
	ld.w	$a4, $a3, %pc_lo12(hash_ncells)
	pcalau12i	$a5, %pc_hi20(AA)
	ld.d	$a5, $a5, %pc_lo12(AA)
	pcalau12i	$a6, %pc_hi20(BB)
	ld.d	$a6, $a6, %pc_lo12(BB)
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, %pc_lo12(hash_ncells)
	mul.d	$a3, $a5, $a1
	add.d	$a4, $a3, $a6
	ori	$a3, $zero, 13
	lu52i.d	$a3, $a3, -2048
	bstrins.d	$a3, $a3, 33, 31
	mulh.du	$a3, $a4, $a3
	srli.d	$a5, $a3, 31
	addi.w	$a6, $zero, -5
	pcalau12i	$a3, %pc_hi20(hashtablesize)
	ld.w	$a3, $a3, %pc_lo12(hashtablesize)
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	sub.w	$a4, $a4, $a5
	mod.wu	$a4, $a4, $a3
	slli.d	$a5, $a4, 3
	bstrpick.d	$a6, $a5, 33, 3
	slli.d	$a5, $a6, 3
	ldx.w	$a7, $a2, $a5
	slli.d	$t1, $a4, 1
	addi.w	$a5, $zero, -1
	alsl.d	$t2, $a6, $a2, 3
	beq	$a7, $a5, .LBB8_6
# %bb.1:
	addi.w	$a6, $a1, 0
	beq	$a7, $a6, .LBB8_6
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a7, %pc_hi20(write_hash_collisions)
	ld.w	$t0, $a7, %pc_lo12(write_hash_collisions)
	.p2align	4, , 16
.LBB8_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a4, 1
	xor	$t1, $a4, $a3
	sltui	$t1, $t1, 1
	masknez	$a4, $a4, $t1
	slli.d	$t1, $a4, 3
	bstrpick.d	$t2, $t1, 33, 3
	slli.d	$t1, $t2, 3
	ldx.w	$t1, $a2, $t1
	addi.d	$t0, $t0, 1
	beq	$t1, $a5, .LBB8_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	bne	$t1, $a6, .LBB8_3
.LBB8_5:                                # %..critedge_crit_edge
	slli.d	$t1, $a4, 1
	alsl.d	$t2, $t2, $a2, 3
	st.w	$t0, $a7, %pc_lo12(write_hash_collisions)
.LBB8_6:                                # %.critedge
	st.w	$a1, $t2, 0
	ori	$a1, $t1, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end8:
	.size	write_hash_linear_report_level_2, .Lfunc_end8-write_hash_linear_report_level_2
                                        # -- End function
	.globl	read_hash_linear_report_level_3 # -- Begin function read_hash_linear_report_level_3
	.p2align	5
	.type	read_hash_linear_report_level_3,@function
read_hash_linear_report_level_3:        # @read_hash_linear_report_level_3
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	pcalau12i	$s1, %pc_hi20(AA)
	ld.d	$a2, $s1, %pc_lo12(AA)
	pcalau12i	$s2, %pc_hi20(BB)
	ld.d	$a3, $s2, %pc_lo12(BB)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $a2, $s0
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$s5, $a1, -2048
	bstrins.d	$s5, $s5, 33, 31
	mulh.du	$a1, $a0, $s5
	srli.d	$a1, $a1, 31
	addi.w	$s6, $zero, -5
	pcalau12i	$s3, %pc_hi20(hashtablesize)
	ld.w	$a2, $s3, %pc_lo12(hashtablesize)
	lu32i.d	$s6, 0
	mul.d	$a1, $a1, $s6
	sub.w	$a0, $a0, $a1
	mod.wu	$a2, $a0, $a2
	slli.d	$a0, $a2, 3
	pcalau12i	$s4, %pc_hi20(hash_stride)
	ld.w	$a1, $s4, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s0, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $zero
	move	$a4, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(AA)
	ld.d	$a1, $s2, %pc_lo12(BB)
	mul.d	$a0, $a0, $s0
	add.d	$a1, $a0, $a1
	mulh.du	$a2, $a1, $s5
	ld.w	$a0, $s3, %pc_lo12(hashtablesize)
	srli.d	$a2, $a2, 31
	mul.d	$a2, $a2, $s6
	sub.w	$a1, $a1, $a2
	mod.wu	$a1, $a1, $a0
	slli.d	$a2, $a1, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	ldx.w	$a4, $fp, $a2
	move	$s7, $zero
	addi.w	$s5, $s0, 0
	slli.d	$a2, $a1, 1
	addi.d	$a3, $a4, 1
	sltui	$a3, $a3, 1
	beq	$a4, $s5, .LBB9_6
# %bb.1:
	addi.w	$s6, $zero, -1
	beq	$a4, $s6, .LBB9_6
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$s2, $a2, %pc_lo12(.L.str.7)
	move	$s7, $zero
	.p2align	4, , 16
.LBB9_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $s7
	addi.w	$s7, $s7, 1
	addi.w	$s8, $a1, 1
	mod.wu	$a2, $s8, $a0
	slli.d	$a0, $a2, 3
	ld.w	$a1, $s4, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s0, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s0, $a0
	move	$a0, $s2
	move	$a1, $s7
	move	$a4, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1000
	beq	$s1, $a0, .LBB9_10
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a0, $s3, %pc_lo12(hashtablesize)
	mod.wu	$a1, $s8, $a0
	slli.d	$a2, $a1, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	ldx.w	$a4, $fp, $a2
	slli.d	$a2, $a1, 1
	addi.d	$a3, $a4, 1
	sltui	$a3, $a3, 1
	beq	$a4, $s5, .LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	bne	$a4, $s6, .LBB9_3
.LBB9_6:                                # %.critedge
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a1, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a1, $a1, $s7
	st.w	$a1, $a0, %pc_lo12(read_hash_collisions)
	beqz	$a3, .LBB9_8
# %bb.7:
	addi.w	$a0, $zero, -1
	b	.LBB9_9
.LBB9_8:
	ori	$a0, $a2, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $fp, $a0
.LBB9_9:
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
	ret
.LBB9_10:
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	read_hash_linear_report_level_3, .Lfunc_end9-read_hash_linear_report_level_3
                                        # -- End function
	.globl	write_hash_linear_report_level_3 # -- Begin function write_hash_linear_report_level_3
	.p2align	5
	.type	write_hash_linear_report_level_3,@function
write_hash_linear_report_level_3:       # @write_hash_linear_report_level_3
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
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(hash_ncells)
	ld.w	$a1, $a0, %pc_lo12(hash_ncells)
	pcalau12i	$s2, %pc_hi20(AA)
	ld.d	$a2, $s2, %pc_lo12(AA)
	pcalau12i	$s3, %pc_hi20(BB)
	ld.d	$a3, $s3, %pc_lo12(BB)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_ncells)
	mul.d	$a0, $a2, $s1
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$s6, $a1, -2048
	bstrins.d	$s6, $s6, 33, 31
	mulh.du	$a1, $a0, $s6
	srli.d	$a1, $a1, 31
	addi.w	$s7, $zero, -5
	pcalau12i	$s4, %pc_hi20(hashtablesize)
	ld.w	$a2, $s4, %pc_lo12(hashtablesize)
	lu32i.d	$s7, 0
	mul.d	$a1, $a1, $s7
	sub.w	$a0, $a0, $a1
	mod.wu	$a3, $a0, $a2
	slli.d	$a0, $a3, 3
	pcalau12i	$s5, %pc_hi20(hash_stride)
	ld.w	$a1, $s5, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a4, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a7, $s1, $a0
	mul.d	$a0, $a7, $a0
	sub.d	$a6, $s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $zero
	move	$a2, $s0
	move	$a5, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(AA)
	ld.d	$a1, $s3, %pc_lo12(BB)
	mul.d	$a0, $a0, $s1
	add.d	$a1, $a0, $a1
	mulh.du	$a2, $a1, $s6
	ld.w	$a0, $s4, %pc_lo12(hashtablesize)
	srli.d	$a2, $a2, 31
	mul.d	$a2, $a2, $s7
	sub.w	$a1, $a1, $a2
	mod.wu	$a1, $a1, $a0
	slli.d	$a2, $a1, 3
	bstrpick.d	$a3, $a2, 33, 3
	slli.d	$a2, $a3, 3
	ldx.w	$a4, $fp, $a2
	move	$s2, $zero
	slli.d	$a2, $a1, 1
	addi.w	$s6, $zero, -1
	alsl.d	$a3, $a3, $fp, 3
	beq	$a4, $s6, .LBB10_5
# %bb.1:
	addi.w	$s7, $s1, 0
	beq	$a4, $s7, .LBB10_5
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$s3, $a2, %pc_lo12(.L.str.5)
	move	$s2, $zero
	.p2align	4, , 16
.LBB10_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s8, $a1, 1
	mod.wu	$a3, $s8, $a0
	ld.w	$a0, $s5, %pc_lo12(hash_stride)
	slli.w	$a1, $a3, 1
	slli.d	$a1, $a1, 2
	ldx.w	$a4, $fp, $a1
	bstrpick.d	$a0, $a0, 31, 0
	div.du	$a7, $s1, $a0
	mul.d	$a0, $a7, $a0
	sub.d	$a6, $s1, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s0
	move	$a5, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(hashtablesize)
	mod.wu	$a1, $s8, $a0
	slli.d	$a2, $a1, 3
	bstrpick.d	$a3, $a2, 33, 3
	slli.d	$a2, $a3, 3
	ldx.w	$a4, $fp, $a2
	addi.w	$s2, $s2, 1
	slli.d	$a2, $a1, 1
	alsl.d	$a3, $a3, $fp, 3
	beq	$a4, $s6, .LBB10_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB10_3 Depth=1
	bne	$a4, $s7, .LBB10_3
.LBB10_5:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(write_hash_collisions)
	ld.w	$a1, $a0, %pc_lo12(write_hash_collisions)
	add.d	$a1, $a1, $s2
	st.w	$a1, $a0, %pc_lo12(write_hash_collisions)
	st.w	$s1, $a3, 0
	ori	$a0, $a2, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	stx.w	$s0, $fp, $a0
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
	ret
.Lfunc_end10:
	.size	write_hash_linear_report_level_3, .Lfunc_end10-write_hash_linear_report_level_3
                                        # -- End function
	.globl	read_hash_quadratic             # -- Begin function read_hash_quadratic
	.p2align	5
	.type	read_hash_quadratic,@function
read_hash_quadratic:                    # @read_hash_quadratic
# %bb.0:
	pcalau12i	$a2, %pc_hi20(AA)
	ld.d	$a2, $a2, %pc_lo12(AA)
	pcalau12i	$a3, %pc_hi20(BB)
	ld.d	$a3, $a3, %pc_lo12(BB)
	mul.d	$a2, $a2, $a0
	add.d	$a3, $a2, $a3
	ori	$a2, $zero, 13
	lu52i.d	$a2, $a2, -2048
	bstrins.d	$a2, $a2, 33, 31
	mulh.du	$a2, $a3, $a2
	srli.d	$a4, $a2, 31
	addi.w	$a5, $zero, -5
	pcalau12i	$a2, %pc_hi20(hashtablesize)
	ld.w	$a2, $a2, %pc_lo12(hashtablesize)
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	sub.w	$a3, $a3, $a4
	mod.wu	$a3, $a3, $a2
	slli.d	$a4, $a3, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	ldx.w	$a7, $a1, $a4
	addi.w	$a0, $a0, 0
	slli.d	$a4, $a3, 1
	addi.d	$a5, $a7, 1
	sltui	$a6, $a5, 1
	beq	$a7, $a0, .LBB11_5
# %bb.1:
	addi.w	$a5, $zero, -1
	beq	$a7, $a5, .LBB11_5
# %bb.2:                                # %.lr.ph.preheader
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB11_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a7, $a7
	add.w	$a3, $a4, $a3
	mod.wu	$a3, $a3, $a2
	slli.d	$a4, $a3, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	ldx.w	$t0, $a1, $a4
	slli.d	$a4, $a3, 1
	addi.d	$a6, $t0, 1
	sltui	$a6, $a6, 1
	beq	$t0, $a0, .LBB11_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.d	$a7, $a7, 1
	bne	$t0, $a5, .LBB11_3
.LBB11_5:                               # %.critedge
	beqz	$a6, .LBB11_7
# %bb.6:
	addi.w	$a0, $zero, -1
	ret
.LBB11_7:
	ori	$a0, $a4, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ret
.Lfunc_end11:
	.size	read_hash_quadratic, .Lfunc_end11-read_hash_quadratic
                                        # -- End function
	.globl	write_hash_quadratic            # -- Begin function write_hash_quadratic
	.p2align	5
	.type	write_hash_quadratic,@function
write_hash_quadratic:                   # @write_hash_quadratic
# %bb.0:
	pcalau12i	$a3, %pc_hi20(AA)
	ld.d	$a3, $a3, %pc_lo12(AA)
	pcalau12i	$a4, %pc_hi20(BB)
	ld.d	$a4, $a4, %pc_lo12(BB)
	mul.d	$a3, $a3, $a1
	add.d	$a4, $a3, $a4
	ori	$a3, $zero, 13
	lu52i.d	$a3, $a3, -2048
	bstrins.d	$a3, $a3, 33, 31
	mulh.du	$a3, $a4, $a3
	srli.d	$a5, $a3, 31
	addi.w	$a6, $zero, -5
	pcalau12i	$a3, %pc_hi20(hashtablesize)
	ld.w	$a3, $a3, %pc_lo12(hashtablesize)
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	sub.w	$a4, $a4, $a5
	mod.wu	$a4, $a4, $a3
	slli.d	$a5, $a4, 3
	bstrpick.d	$a7, $a5, 33, 3
	slli.d	$a5, $a7, 3
	ldx.w	$t1, $a2, $a5
	slli.d	$a6, $a4, 1
	addi.w	$a5, $zero, -1
	alsl.d	$t0, $a7, $a2, 3
	beq	$t1, $a5, .LBB12_5
# %bb.1:
	addi.w	$a7, $a1, 0
	beq	$t1, $a7, .LBB12_5
# %bb.2:                                # %.lr.ph.preheader
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB12_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a6, $t1, $t1
	add.w	$a4, $a4, $a6
	mod.wu	$a4, $a4, $a3
	slli.d	$a6, $a4, 3
	bstrpick.d	$t0, $a6, 33, 3
	slli.d	$a6, $t0, 3
	ldx.w	$t2, $a2, $a6
	slli.d	$a6, $a4, 1
	alsl.d	$t0, $t0, $a2, 3
	beq	$t2, $a5, .LBB12_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$t1, $t1, 1
	bne	$t2, $a7, .LBB12_3
.LBB12_5:                               # %.critedge
	st.w	$a1, $t0, 0
	ori	$a1, $a6, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end12:
	.size	write_hash_quadratic, .Lfunc_end12-write_hash_quadratic
                                        # -- End function
	.globl	read_hash_quadratic_report_level_1 # -- Begin function read_hash_quadratic_report_level_1
	.p2align	5
	.type	read_hash_quadratic_report_level_1,@function
read_hash_quadratic_report_level_1:     # @read_hash_quadratic_report_level_1
# %bb.0:
	pcalau12i	$a2, %pc_hi20(hash_queries)
	ld.w	$a3, $a2, %pc_lo12(hash_queries)
	pcalau12i	$a4, %pc_hi20(AA)
	ld.d	$a4, $a4, %pc_lo12(AA)
	pcalau12i	$a5, %pc_hi20(BB)
	ld.d	$a5, $a5, %pc_lo12(BB)
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, %pc_lo12(hash_queries)
	mul.d	$a2, $a4, $a0
	add.d	$a3, $a2, $a5
	ori	$a2, $zero, 13
	lu52i.d	$a2, $a2, -2048
	bstrins.d	$a2, $a2, 33, 31
	mulh.du	$a2, $a3, $a2
	srli.d	$a4, $a2, 31
	addi.w	$a5, $zero, -5
	pcalau12i	$a2, %pc_hi20(hashtablesize)
	ld.w	$a2, $a2, %pc_lo12(hashtablesize)
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	sub.w	$a3, $a3, $a4
	mod.wu	$a4, $a3, $a2
	slli.d	$a3, $a4, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	ldx.w	$t0, $a1, $a3
	move	$a3, $zero
	addi.w	$a5, $a0, 0
	slli.d	$a0, $a4, 1
	addi.d	$a6, $t0, 1
	sltui	$a6, $a6, 1
	beq	$t0, $a5, .LBB13_5
# %bb.1:
	addi.w	$a7, $zero, -1
	beq	$t0, $a7, .LBB13_5
# %bb.2:                                # %.lr.ph.preheader
	move	$a3, $zero
	.p2align	4, , 16
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a3, 1
	mul.d	$a0, $a3, $a3
	add.w	$a0, $a0, $a4
	mod.wu	$a4, $a0, $a2
	slli.d	$a0, $a4, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$t0, $a1, $a0
	slli.d	$a0, $a4, 1
	addi.d	$a6, $t0, 1
	sltui	$a6, $a6, 1
	beq	$t0, $a5, .LBB13_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	bne	$t0, $a7, .LBB13_3
.LBB13_5:                               # %.critedge
	pcalau12i	$a2, %pc_hi20(read_hash_collisions)
	ld.w	$a4, $a2, %pc_lo12(read_hash_collisions)
	add.d	$a3, $a4, $a3
	st.w	$a3, $a2, %pc_lo12(read_hash_collisions)
	beqz	$a6, .LBB13_7
# %bb.6:
	addi.w	$a0, $zero, -1
	ret
.LBB13_7:
	ori	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ret
.Lfunc_end13:
	.size	read_hash_quadratic_report_level_1, .Lfunc_end13-read_hash_quadratic_report_level_1
                                        # -- End function
	.globl	write_hash_quadratic_report_level_1 # -- Begin function write_hash_quadratic_report_level_1
	.p2align	5
	.type	write_hash_quadratic_report_level_1,@function
write_hash_quadratic_report_level_1:    # @write_hash_quadratic_report_level_1
# %bb.0:
	pcalau12i	$a3, %pc_hi20(hash_ncells)
	ld.w	$a4, $a3, %pc_lo12(hash_ncells)
	pcalau12i	$a5, %pc_hi20(AA)
	ld.d	$a5, $a5, %pc_lo12(AA)
	pcalau12i	$a6, %pc_hi20(BB)
	ld.d	$a6, $a6, %pc_lo12(BB)
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, %pc_lo12(hash_ncells)
	mul.d	$a3, $a5, $a1
	add.d	$a4, $a3, $a6
	ori	$a3, $zero, 13
	lu52i.d	$a3, $a3, -2048
	bstrins.d	$a3, $a3, 33, 31
	mulh.du	$a3, $a4, $a3
	srli.d	$a5, $a3, 31
	addi.w	$a6, $zero, -5
	pcalau12i	$a3, %pc_hi20(hashtablesize)
	ld.w	$a3, $a3, %pc_lo12(hashtablesize)
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	sub.w	$a4, $a4, $a5
	mod.wu	$a5, $a4, $a3
	slli.d	$a4, $a5, 3
	bstrpick.d	$t0, $a4, 33, 3
	slli.d	$a4, $t0, 3
	ldx.w	$t2, $a2, $a4
	move	$a4, $zero
	slli.d	$a6, $a5, 1
	addi.w	$a7, $zero, -1
	alsl.d	$t0, $t0, $a2, 3
	beq	$t2, $a7, .LBB14_5
# %bb.1:
	addi.w	$t1, $a1, 0
	beq	$t2, $t1, .LBB14_5
# %bb.2:                                # %.lr.ph.preheader
	move	$a4, $zero
	.p2align	4, , 16
.LBB14_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a4, 1
	mul.d	$a6, $a4, $a4
	add.w	$a5, $a5, $a6
	mod.wu	$a5, $a5, $a3
	slli.d	$a6, $a5, 3
	bstrpick.d	$t0, $a6, 33, 3
	slli.d	$a6, $t0, 3
	ldx.w	$t2, $a2, $a6
	slli.d	$a6, $a5, 1
	alsl.d	$t0, $t0, $a2, 3
	beq	$t2, $a7, .LBB14_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	bne	$t2, $t1, .LBB14_3
.LBB14_5:                               # %.critedge
	pcalau12i	$a3, %pc_hi20(write_hash_collisions)
	ld.w	$a5, $a3, %pc_lo12(write_hash_collisions)
	add.d	$a4, $a5, $a4
	st.w	$a4, $a3, %pc_lo12(write_hash_collisions)
	st.w	$a1, $t0, 0
	ori	$a1, $a6, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end14:
	.size	write_hash_quadratic_report_level_1, .Lfunc_end14-write_hash_quadratic_report_level_1
                                        # -- End function
	.globl	read_hash_quadratic_report_level_2 # -- Begin function read_hash_quadratic_report_level_2
	.p2align	5
	.type	read_hash_quadratic_report_level_2,@function
read_hash_quadratic_report_level_2:     # @read_hash_quadratic_report_level_2
# %bb.0:
	pcalau12i	$a2, %pc_hi20(hash_queries)
	ld.w	$a3, $a2, %pc_lo12(hash_queries)
	pcalau12i	$a4, %pc_hi20(AA)
	ld.d	$a4, $a4, %pc_lo12(AA)
	pcalau12i	$a5, %pc_hi20(BB)
	ld.d	$a5, $a5, %pc_lo12(BB)
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, %pc_lo12(hash_queries)
	mul.d	$a2, $a4, $a0
	add.d	$a3, $a2, $a5
	ori	$a2, $zero, 13
	lu52i.d	$a2, $a2, -2048
	bstrins.d	$a2, $a2, 33, 31
	mulh.du	$a2, $a3, $a2
	srli.d	$a4, $a2, 31
	addi.w	$a5, $zero, -5
	pcalau12i	$a2, %pc_hi20(hashtablesize)
	ld.w	$a2, $a2, %pc_lo12(hashtablesize)
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	sub.w	$a3, $a3, $a4
	mod.wu	$a4, $a3, $a2
	slli.d	$a3, $a4, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	ldx.w	$t0, $a1, $a3
	move	$a3, $zero
	addi.w	$a0, $a0, 0
	slli.d	$a5, $a4, 1
	addi.d	$a6, $t0, 1
	sltui	$a7, $a6, 1
	beq	$t0, $a0, .LBB15_6
# %bb.1:
	addi.w	$a6, $zero, -1
	beq	$t0, $a6, .LBB15_6
# %bb.2:                                # %.lr.ph.preheader
	move	$a3, $zero
	ori	$t0, $zero, 1000
	.p2align	4, , 16
.LBB15_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beq	$a3, $t0, .LBB15_9
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	addi.w	$a3, $a3, 1
	mul.d	$a5, $a3, $a3
	add.w	$a4, $a5, $a4
	mod.wu	$a4, $a4, $a2
	slli.d	$a5, $a4, 3
	bstrpick.d	$a5, $a5, 33, 3
	slli.d	$a5, $a5, 3
	ldx.w	$t1, $a1, $a5
	slli.d	$a5, $a4, 1
	addi.d	$a7, $t1, 1
	sltui	$a7, $a7, 1
	beq	$t1, $a0, .LBB15_6
# %bb.5:                                #   in Loop: Header=BB15_3 Depth=1
	bne	$t1, $a6, .LBB15_3
.LBB15_6:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a2, $a2, $a3
	st.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	beqz	$a7, .LBB15_8
# %bb.7:
	addi.w	$a0, $zero, -1
	ret
.LBB15_8:
	ori	$a0, $a5, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ret
.LBB15_9:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	read_hash_quadratic_report_level_2, .Lfunc_end15-read_hash_quadratic_report_level_2
                                        # -- End function
	.globl	write_hash_quadratic_report_level_2 # -- Begin function write_hash_quadratic_report_level_2
	.p2align	5
	.type	write_hash_quadratic_report_level_2,@function
write_hash_quadratic_report_level_2:    # @write_hash_quadratic_report_level_2
# %bb.0:
	pcalau12i	$a3, %pc_hi20(hash_ncells)
	ld.w	$a4, $a3, %pc_lo12(hash_ncells)
	pcalau12i	$a5, %pc_hi20(AA)
	ld.d	$a5, $a5, %pc_lo12(AA)
	pcalau12i	$a6, %pc_hi20(BB)
	ld.d	$a6, $a6, %pc_lo12(BB)
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, %pc_lo12(hash_ncells)
	mul.d	$a3, $a5, $a1
	add.d	$a4, $a3, $a6
	ori	$a3, $zero, 13
	lu52i.d	$a3, $a3, -2048
	bstrins.d	$a3, $a3, 33, 31
	mulh.du	$a3, $a4, $a3
	srli.d	$a5, $a3, 31
	addi.w	$a6, $zero, -5
	pcalau12i	$a3, %pc_hi20(hashtablesize)
	ld.w	$a3, $a3, %pc_lo12(hashtablesize)
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	sub.w	$a4, $a4, $a5
	mod.wu	$a5, $a4, $a3
	slli.d	$a4, $a5, 3
	bstrpick.d	$t0, $a4, 33, 3
	slli.d	$a4, $t0, 3
	ldx.w	$t2, $a2, $a4
	move	$a4, $zero
	slli.d	$a6, $a5, 1
	addi.w	$a7, $zero, -1
	alsl.d	$t0, $t0, $a2, 3
	beq	$t2, $a7, .LBB16_5
# %bb.1:
	addi.w	$t1, $a1, 0
	beq	$t2, $t1, .LBB16_5
# %bb.2:                                # %.lr.ph.preheader
	move	$a4, $zero
	.p2align	4, , 16
.LBB16_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a4, 1
	mul.d	$a6, $a4, $a4
	add.w	$a5, $a5, $a6
	mod.wu	$a5, $a5, $a3
	slli.d	$a6, $a5, 3
	bstrpick.d	$t0, $a6, 33, 3
	slli.d	$a6, $t0, 3
	ldx.w	$t2, $a2, $a6
	slli.d	$a6, $a5, 1
	alsl.d	$t0, $t0, $a2, 3
	beq	$t2, $a7, .LBB16_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB16_3 Depth=1
	bne	$t2, $t1, .LBB16_3
.LBB16_5:                               # %.critedge
	pcalau12i	$a3, %pc_hi20(write_hash_collisions)
	ld.w	$a5, $a3, %pc_lo12(write_hash_collisions)
	add.d	$a4, $a5, $a4
	st.w	$a4, $a3, %pc_lo12(write_hash_collisions)
	st.w	$a1, $t0, 0
	ori	$a1, $a6, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end16:
	.size	write_hash_quadratic_report_level_2, .Lfunc_end16-write_hash_quadratic_report_level_2
                                        # -- End function
	.globl	read_hash_quadratic_report_level_3 # -- Begin function read_hash_quadratic_report_level_3
	.p2align	5
	.type	read_hash_quadratic_report_level_3,@function
read_hash_quadratic_report_level_3:     # @read_hash_quadratic_report_level_3
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	pcalau12i	$s1, %pc_hi20(AA)
	ld.d	$a2, $s1, %pc_lo12(AA)
	pcalau12i	$s2, %pc_hi20(BB)
	ld.d	$a3, $s2, %pc_lo12(BB)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $a2, $s0
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$s5, $a1, -2048
	bstrins.d	$s5, $s5, 33, 31
	mulh.du	$a1, $a0, $s5
	srli.d	$a1, $a1, 31
	addi.w	$s6, $zero, -5
	pcalau12i	$s3, %pc_hi20(hashtablesize)
	ld.w	$a2, $s3, %pc_lo12(hashtablesize)
	lu32i.d	$s6, 0
	mul.d	$a1, $a1, $s6
	sub.w	$a0, $a0, $a1
	mod.wu	$a2, $a0, $a2
	slli.d	$a0, $a2, 3
	pcalau12i	$s4, %pc_hi20(hash_stride)
	ld.w	$a1, $s4, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s0, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $zero
	move	$a4, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(AA)
	ld.d	$a1, $s2, %pc_lo12(BB)
	mul.d	$a0, $a0, $s0
	add.d	$a1, $a0, $a1
	mulh.du	$a2, $a1, $s5
	ld.w	$a0, $s3, %pc_lo12(hashtablesize)
	srli.d	$a2, $a2, 31
	mul.d	$a2, $a2, $s6
	sub.w	$a1, $a1, $a2
	mod.wu	$s5, $a1, $a0
	slli.d	$a1, $s5, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a3, $fp, $a1
	move	$s8, $zero
	addi.w	$s6, $s0, 0
	slli.d	$a1, $s5, 1
	addi.d	$a2, $a3, 1
	sltui	$a2, $a2, 1
	beq	$a3, $s6, .LBB17_6
# %bb.1:
	addi.w	$s7, $zero, -1
	beq	$a3, $s7, .LBB17_6
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$s2, $a1, %pc_lo12(.L.str.7)
	move	$s8, $zero
	.p2align	4, , 16
.LBB17_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $s8
	addi.w	$s8, $s8, 1
	addi.w	$a1, $s5, 1
	mod.wu	$a2, $a1, $a0
	slli.d	$a0, $a2, 3
	ld.w	$a1, $s4, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s0, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s0, $a0
	move	$a0, $s2
	move	$a1, $s8
	move	$a4, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1000
	beq	$s1, $a0, .LBB17_10
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	ld.w	$a0, $s3, %pc_lo12(hashtablesize)
	mul.d	$a1, $s8, $s8
	add.w	$a1, $a1, $s5
	mod.wu	$s5, $a1, $a0
	slli.d	$a1, $s5, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a3, $fp, $a1
	slli.d	$a1, $s5, 1
	addi.d	$a2, $a3, 1
	sltui	$a2, $a2, 1
	beq	$a3, $s6, .LBB17_6
# %bb.5:                                #   in Loop: Header=BB17_3 Depth=1
	bne	$a3, $s7, .LBB17_3
.LBB17_6:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a3, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a3, $a3, $s8
	st.w	$a3, $a0, %pc_lo12(read_hash_collisions)
	beqz	$a2, .LBB17_8
# %bb.7:
	addi.w	$a0, $zero, -1
	b	.LBB17_9
.LBB17_8:
	ori	$a0, $a1, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $fp, $a0
.LBB17_9:
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
	ret
.LBB17_10:
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	read_hash_quadratic_report_level_3, .Lfunc_end17-read_hash_quadratic_report_level_3
                                        # -- End function
	.globl	write_hash_quadratic_report_level_3 # -- Begin function write_hash_quadratic_report_level_3
	.p2align	5
	.type	write_hash_quadratic_report_level_3,@function
write_hash_quadratic_report_level_3:    # @write_hash_quadratic_report_level_3
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
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(hash_ncells)
	ld.w	$a1, $a0, %pc_lo12(hash_ncells)
	pcalau12i	$s2, %pc_hi20(AA)
	ld.d	$a2, $s2, %pc_lo12(AA)
	pcalau12i	$s3, %pc_hi20(BB)
	ld.d	$a3, $s3, %pc_lo12(BB)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_ncells)
	mul.d	$a0, $a2, $s1
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$s6, $a1, -2048
	bstrins.d	$s6, $s6, 33, 31
	mulh.du	$a1, $a0, $s6
	srli.d	$a1, $a1, 31
	addi.w	$s7, $zero, -5
	pcalau12i	$s4, %pc_hi20(hashtablesize)
	ld.w	$a2, $s4, %pc_lo12(hashtablesize)
	lu32i.d	$s7, 0
	mul.d	$a1, $a1, $s7
	sub.w	$a0, $a0, $a1
	mod.wu	$a3, $a0, $a2
	slli.d	$a0, $a3, 3
	pcalau12i	$s5, %pc_hi20(hash_stride)
	ld.w	$a1, $s5, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a4, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a7, $s1, $a0
	mul.d	$a0, $a7, $a0
	sub.d	$a6, $s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $zero
	move	$a2, $s0
	move	$a5, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(AA)
	ld.d	$a1, $s3, %pc_lo12(BB)
	mul.d	$a0, $a0, $s1
	add.d	$a1, $a0, $a1
	mulh.du	$a2, $a1, $s6
	ld.w	$a0, $s4, %pc_lo12(hashtablesize)
	srli.d	$a2, $a2, 31
	mul.d	$a2, $a2, $s7
	sub.w	$a1, $a1, $a2
	mod.wu	$a1, $a1, $a0
	slli.d	$a2, $a1, 3
	bstrpick.d	$a3, $a2, 33, 3
	slli.d	$a2, $a3, 3
	ldx.w	$a4, $fp, $a2
	move	$s2, $zero
	slli.d	$a2, $a1, 1
	addi.w	$s6, $zero, -1
	alsl.d	$a3, $a3, $fp, 3
	beq	$a4, $s6, .LBB18_5
# %bb.1:
	addi.w	$s7, $s1, 0
	beq	$a4, $s7, .LBB18_5
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$s3, $a2, %pc_lo12(.L.str.5)
	move	$s2, $zero
	.p2align	4, , 16
.LBB18_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s2, $s2, 1
	mul.d	$a2, $s2, $s2
	add.w	$s8, $a2, $a1
	mod.wu	$a3, $s8, $a0
	ld.w	$a0, $s5, %pc_lo12(hash_stride)
	slli.w	$a1, $a3, 1
	slli.d	$a1, $a1, 2
	ldx.w	$a4, $fp, $a1
	bstrpick.d	$a0, $a0, 31, 0
	div.du	$a7, $s1, $a0
	mul.d	$a0, $a7, $a0
	sub.d	$a6, $s1, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s0
	move	$a5, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(hashtablesize)
	mod.wu	$a1, $s8, $a0
	slli.d	$a2, $a1, 3
	bstrpick.d	$a3, $a2, 33, 3
	slli.d	$a2, $a3, 3
	ldx.w	$a4, $fp, $a2
	slli.d	$a2, $a1, 1
	alsl.d	$a3, $a3, $fp, 3
	beq	$a4, $s6, .LBB18_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB18_3 Depth=1
	bne	$a4, $s7, .LBB18_3
.LBB18_5:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(write_hash_collisions)
	ld.w	$a1, $a0, %pc_lo12(write_hash_collisions)
	add.d	$a1, $a1, $s2
	st.w	$a1, $a0, %pc_lo12(write_hash_collisions)
	st.w	$s1, $a3, 0
	ori	$a0, $a2, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	stx.w	$s0, $fp, $a0
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
	ret
.Lfunc_end18:
	.size	write_hash_quadratic_report_level_3, .Lfunc_end18-write_hash_quadratic_report_level_3
                                        # -- End function
	.globl	read_hash_primejump             # -- Begin function read_hash_primejump
	.p2align	5
	.type	read_hash_primejump,@function
read_hash_primejump:                    # @read_hash_primejump
# %bb.0:
	pcalau12i	$a2, %pc_hi20(AA)
	ld.d	$a2, $a2, %pc_lo12(AA)
	pcalau12i	$a3, %pc_hi20(BB)
	ld.d	$a3, $a3, %pc_lo12(BB)
	mul.d	$a2, $a2, $a0
	add.d	$a3, $a2, $a3
	ori	$a2, $zero, 13
	lu52i.d	$a2, $a2, -2048
	bstrins.d	$a2, $a2, 33, 31
	mulh.du	$a2, $a3, $a2
	srli.d	$a4, $a2, 31
	addi.w	$a5, $zero, -5
	pcalau12i	$a2, %pc_hi20(hashtablesize)
	ld.w	$a2, $a2, %pc_lo12(hashtablesize)
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	sub.w	$a3, $a3, $a4
	mod.wu	$a3, $a3, $a2
	slli.d	$a4, $a3, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	ldx.w	$t0, $a1, $a4
	addi.w	$a4, $a0, 0
	slli.d	$a6, $a3, 1
	addi.d	$a5, $t0, 1
	sltui	$a7, $a5, 1
	beq	$t0, $a4, .LBB19_5
# %bb.1:
	addi.w	$a5, $zero, -1
	beq	$t0, $a5, .LBB19_5
# %bb.2:                                # %.lr.ph.preheader
	lu12i.w	$a6, -127876
	ori	$a6, $a6, 3597
	lu32i.d	$a6, -127876
	lu52i.d	$a6, $a6, -900
	mulh.du	$a6, $a0, $a6
	srli.d	$a6, $a6, 5
	alsl.d	$a7, $a6, $a6, 2
	alsl.d	$a6, $a7, $a6, 3
	sub.d	$a0, $a0, $a6
	addi.d	$a0, $a0, 1
	move	$t0, $a0
	.p2align	4, , 16
.LBB19_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.w	$a3, $a3, $t0
	mod.wu	$a3, $a3, $a2
	slli.d	$a6, $a3, 3
	bstrpick.d	$a6, $a6, 33, 3
	slli.d	$a6, $a6, 3
	ldx.w	$t1, $a1, $a6
	slli.d	$a6, $a3, 1
	addi.d	$a7, $t1, 1
	sltui	$a7, $a7, 1
	beq	$t1, $a4, .LBB19_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB19_3 Depth=1
	add.d	$t0, $t0, $a0
	bne	$t1, $a5, .LBB19_3
.LBB19_5:                               # %.critedge
	beqz	$a7, .LBB19_7
# %bb.6:
	addi.w	$a0, $zero, -1
	ret
.LBB19_7:
	ori	$a0, $a6, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ret
.Lfunc_end19:
	.size	read_hash_primejump, .Lfunc_end19-read_hash_primejump
                                        # -- End function
	.globl	write_hash_primejump            # -- Begin function write_hash_primejump
	.p2align	5
	.type	write_hash_primejump,@function
write_hash_primejump:                   # @write_hash_primejump
# %bb.0:
	pcalau12i	$a3, %pc_hi20(AA)
	ld.d	$a3, $a3, %pc_lo12(AA)
	pcalau12i	$a4, %pc_hi20(BB)
	ld.d	$a4, $a4, %pc_lo12(BB)
	mul.d	$a3, $a3, $a1
	add.d	$a4, $a3, $a4
	ori	$a3, $zero, 13
	lu52i.d	$a3, $a3, -2048
	bstrins.d	$a3, $a3, 33, 31
	mulh.du	$a3, $a4, $a3
	srli.d	$a5, $a3, 31
	addi.w	$a6, $zero, -5
	pcalau12i	$a3, %pc_hi20(hashtablesize)
	ld.w	$a3, $a3, %pc_lo12(hashtablesize)
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	sub.w	$a4, $a4, $a5
	mod.wu	$a4, $a4, $a3
	slli.d	$a5, $a4, 3
	bstrpick.d	$a6, $a5, 33, 3
	slli.d	$a5, $a6, 3
	ldx.w	$t1, $a2, $a5
	slli.d	$a7, $a4, 1
	addi.w	$a5, $zero, -1
	alsl.d	$t0, $a6, $a2, 3
	beq	$t1, $a5, .LBB20_5
# %bb.1:
	addi.w	$a6, $a1, 0
	beq	$t1, $a6, .LBB20_5
# %bb.2:                                # %.lr.ph.preheader
	lu12i.w	$a7, -127876
	ori	$a7, $a7, 3597
	lu32i.d	$a7, -127876
	lu52i.d	$a7, $a7, -900
	mulh.du	$a7, $a1, $a7
	srli.d	$a7, $a7, 5
	alsl.d	$t0, $a7, $a7, 2
	alsl.d	$a7, $t0, $a7, 3
	sub.d	$a7, $a1, $a7
	addi.d	$t1, $a7, 1
	move	$t2, $t1
	.p2align	4, , 16
.LBB20_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.w	$a4, $a4, $t2
	mod.wu	$a4, $a4, $a3
	slli.d	$a7, $a4, 3
	bstrpick.d	$t0, $a7, 33, 3
	slli.d	$a7, $t0, 3
	ldx.w	$t3, $a2, $a7
	slli.d	$a7, $a4, 1
	alsl.d	$t0, $t0, $a2, 3
	beq	$t3, $a5, .LBB20_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB20_3 Depth=1
	add.d	$t2, $t2, $t1
	bne	$t3, $a6, .LBB20_3
.LBB20_5:                               # %.critedge
	st.w	$a1, $t0, 0
	ori	$a1, $a7, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end20:
	.size	write_hash_primejump, .Lfunc_end20-write_hash_primejump
                                        # -- End function
	.globl	read_hash_primejump_report_level_1 # -- Begin function read_hash_primejump_report_level_1
	.p2align	5
	.type	read_hash_primejump_report_level_1,@function
read_hash_primejump_report_level_1:     # @read_hash_primejump_report_level_1
# %bb.0:
	pcalau12i	$a2, %pc_hi20(hash_queries)
	ld.w	$a3, $a2, %pc_lo12(hash_queries)
	pcalau12i	$a4, %pc_hi20(AA)
	ld.d	$a4, $a4, %pc_lo12(AA)
	pcalau12i	$a5, %pc_hi20(BB)
	ld.d	$a5, $a5, %pc_lo12(BB)
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, %pc_lo12(hash_queries)
	mul.d	$a2, $a4, $a0
	add.d	$a3, $a2, $a5
	ori	$a2, $zero, 13
	lu52i.d	$a2, $a2, -2048
	bstrins.d	$a2, $a2, 33, 31
	mulh.du	$a2, $a3, $a2
	srli.d	$a4, $a2, 31
	addi.w	$a5, $zero, -5
	pcalau12i	$a2, %pc_hi20(hashtablesize)
	ld.w	$a2, $a2, %pc_lo12(hashtablesize)
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	sub.w	$a3, $a3, $a4
	mod.wu	$a3, $a3, $a2
	slli.d	$a4, $a3, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	ldx.w	$t1, $a1, $a4
	move	$a4, $zero
	addi.w	$a5, $a0, 0
	slli.d	$a7, $a3, 1
	addi.d	$a6, $t1, 1
	sltui	$t0, $a6, 1
	beq	$t1, $a5, .LBB21_5
# %bb.1:
	addi.w	$a6, $zero, -1
	beq	$t1, $a6, .LBB21_5
# %bb.2:                                # %.lr.ph.preheader
	lu12i.w	$a4, -127876
	ori	$a4, $a4, 3597
	lu32i.d	$a4, -127876
	lu52i.d	$a4, $a4, -900
	mulh.du	$a4, $a0, $a4
	srli.d	$a4, $a4, 5
	alsl.d	$a7, $a4, $a4, 2
	alsl.d	$a4, $a7, $a4, 3
	sub.d	$a0, $a0, $a4
	addi.d	$a0, $a0, 1
	move	$a4, $zero
	move	$t1, $a0
	.p2align	4, , 16
.LBB21_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.w	$a3, $a3, $t1
	mod.wu	$a3, $a3, $a2
	slli.d	$a7, $a3, 3
	bstrpick.d	$a7, $a7, 33, 3
	slli.d	$a7, $a7, 3
	ldx.w	$t2, $a1, $a7
	addi.d	$a4, $a4, 1
	slli.d	$a7, $a3, 1
	addi.d	$t0, $t2, 1
	sltui	$t0, $t0, 1
	beq	$t2, $a5, .LBB21_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB21_3 Depth=1
	add.d	$t1, $t1, $a0
	bne	$t2, $a6, .LBB21_3
.LBB21_5:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a2, $a2, $a4
	st.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	beqz	$t0, .LBB21_7
# %bb.6:
	addi.w	$a0, $zero, -1
	ret
.LBB21_7:
	ori	$a0, $a7, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ret
.Lfunc_end21:
	.size	read_hash_primejump_report_level_1, .Lfunc_end21-read_hash_primejump_report_level_1
                                        # -- End function
	.globl	write_hash_primejump_report_level_1 # -- Begin function write_hash_primejump_report_level_1
	.p2align	5
	.type	write_hash_primejump_report_level_1,@function
write_hash_primejump_report_level_1:    # @write_hash_primejump_report_level_1
# %bb.0:
	pcalau12i	$a3, %pc_hi20(hash_ncells)
	ld.w	$a4, $a3, %pc_lo12(hash_ncells)
	pcalau12i	$a5, %pc_hi20(AA)
	ld.d	$a5, $a5, %pc_lo12(AA)
	pcalau12i	$a6, %pc_hi20(BB)
	ld.d	$a6, $a6, %pc_lo12(BB)
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, %pc_lo12(hash_ncells)
	mul.d	$a3, $a5, $a1
	add.d	$a4, $a3, $a6
	ori	$a3, $zero, 13
	lu52i.d	$a3, $a3, -2048
	bstrins.d	$a3, $a3, 33, 31
	mulh.du	$a3, $a4, $a3
	srli.d	$a5, $a3, 31
	addi.w	$a6, $zero, -5
	pcalau12i	$a3, %pc_hi20(hashtablesize)
	ld.w	$a3, $a3, %pc_lo12(hashtablesize)
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	sub.w	$a4, $a4, $a5
	mod.wu	$a4, $a4, $a3
	slli.d	$a5, $a4, 3
	bstrpick.d	$a7, $a5, 33, 3
	slli.d	$a5, $a7, 3
	ldx.w	$t2, $a2, $a5
	move	$a5, $zero
	slli.d	$t0, $a4, 1
	addi.w	$a6, $zero, -1
	alsl.d	$t1, $a7, $a2, 3
	beq	$t2, $a6, .LBB22_5
# %bb.1:
	addi.w	$a7, $a1, 0
	beq	$t2, $a7, .LBB22_5
# %bb.2:                                # %.lr.ph.preheader
	lu12i.w	$a5, -127876
	ori	$a5, $a5, 3597
	lu32i.d	$a5, -127876
	lu52i.d	$a5, $a5, -900
	mulh.du	$a5, $a1, $a5
	srli.d	$a5, $a5, 5
	alsl.d	$t0, $a5, $a5, 2
	alsl.d	$a5, $t0, $a5, 3
	sub.d	$a5, $a1, $a5
	addi.d	$t2, $a5, 1
	move	$a5, $zero
	move	$t3, $t2
	.p2align	4, , 16
.LBB22_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.w	$a4, $a4, $t3
	mod.wu	$a4, $a4, $a3
	slli.d	$t0, $a4, 3
	bstrpick.d	$t1, $t0, 33, 3
	slli.d	$t0, $t1, 3
	ldx.w	$t4, $a2, $t0
	addi.d	$a5, $a5, 1
	slli.d	$t0, $a4, 1
	alsl.d	$t1, $t1, $a2, 3
	beq	$t4, $a6, .LBB22_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB22_3 Depth=1
	add.d	$t3, $t3, $t2
	bne	$t4, $a7, .LBB22_3
.LBB22_5:                               # %.critedge
	pcalau12i	$a3, %pc_hi20(write_hash_collisions)
	ld.w	$a4, $a3, %pc_lo12(write_hash_collisions)
	add.d	$a4, $a4, $a5
	st.w	$a4, $a3, %pc_lo12(write_hash_collisions)
	st.w	$a1, $t1, 0
	ori	$a1, $t0, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end22:
	.size	write_hash_primejump_report_level_1, .Lfunc_end22-write_hash_primejump_report_level_1
                                        # -- End function
	.globl	read_hash_primejump_report_level_2 # -- Begin function read_hash_primejump_report_level_2
	.p2align	5
	.type	read_hash_primejump_report_level_2,@function
read_hash_primejump_report_level_2:     # @read_hash_primejump_report_level_2
# %bb.0:
	pcalau12i	$a2, %pc_hi20(hash_queries)
	ld.w	$a3, $a2, %pc_lo12(hash_queries)
	pcalau12i	$a4, %pc_hi20(AA)
	ld.d	$a4, $a4, %pc_lo12(AA)
	pcalau12i	$a5, %pc_hi20(BB)
	ld.d	$a5, $a5, %pc_lo12(BB)
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, %pc_lo12(hash_queries)
	mul.d	$a2, $a4, $a0
	add.d	$a3, $a2, $a5
	ori	$a2, $zero, 13
	lu52i.d	$a2, $a2, -2048
	bstrins.d	$a2, $a2, 33, 31
	mulh.du	$a2, $a3, $a2
	srli.d	$a4, $a2, 31
	addi.w	$a5, $zero, -5
	pcalau12i	$a2, %pc_hi20(hashtablesize)
	ld.w	$a2, $a2, %pc_lo12(hashtablesize)
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	sub.w	$a3, $a3, $a4
	mod.wu	$a3, $a3, $a2
	slli.d	$a4, $a3, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	ldx.w	$t1, $a1, $a4
	move	$a5, $zero
	addi.w	$a4, $a0, 0
	slli.d	$a7, $a3, 1
	addi.d	$a6, $t1, 1
	sltui	$t0, $a6, 1
	beq	$t1, $a4, .LBB23_6
# %bb.1:
	addi.w	$a6, $zero, -1
	beq	$t1, $a6, .LBB23_6
# %bb.2:                                # %.lr.ph.preheader
	move	$a5, $zero
	lu12i.w	$a7, -127876
	ori	$a7, $a7, 3597
	lu32i.d	$a7, -127876
	lu52i.d	$a7, $a7, -900
	mulh.du	$a7, $a0, $a7
	srli.d	$a7, $a7, 5
	alsl.d	$t0, $a7, $a7, 2
	alsl.d	$a7, $t0, $a7, 3
	sub.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 1
	ori	$t1, $zero, 1000
	move	$t2, $a0
	.p2align	4, , 16
.LBB23_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beq	$a5, $t1, .LBB23_9
# %bb.4:                                #   in Loop: Header=BB23_3 Depth=1
	add.w	$a3, $a3, $t2
	mod.wu	$a3, $a3, $a2
	slli.d	$a7, $a3, 3
	bstrpick.d	$a7, $a7, 33, 3
	slli.d	$a7, $a7, 3
	ldx.w	$t3, $a1, $a7
	addi.w	$a5, $a5, 1
	slli.d	$a7, $a3, 1
	addi.d	$t0, $t3, 1
	sltui	$t0, $t0, 1
	beq	$t3, $a4, .LBB23_6
# %bb.5:                                #   in Loop: Header=BB23_3 Depth=1
	add.d	$t2, $t2, $a0
	bne	$t3, $a6, .LBB23_3
.LBB23_6:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a2, $a2, $a5
	st.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	beqz	$t0, .LBB23_8
# %bb.7:
	addi.w	$a0, $zero, -1
	ret
.LBB23_8:
	ori	$a0, $a7, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ret
.LBB23_9:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	read_hash_primejump_report_level_2, .Lfunc_end23-read_hash_primejump_report_level_2
                                        # -- End function
	.globl	write_hash_primejump_report_level_2 # -- Begin function write_hash_primejump_report_level_2
	.p2align	5
	.type	write_hash_primejump_report_level_2,@function
write_hash_primejump_report_level_2:    # @write_hash_primejump_report_level_2
# %bb.0:
	pcalau12i	$a3, %pc_hi20(hash_ncells)
	ld.w	$a4, $a3, %pc_lo12(hash_ncells)
	pcalau12i	$a5, %pc_hi20(AA)
	ld.d	$a5, $a5, %pc_lo12(AA)
	pcalau12i	$a6, %pc_hi20(BB)
	ld.d	$a6, $a6, %pc_lo12(BB)
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, %pc_lo12(hash_ncells)
	mul.d	$a3, $a5, $a1
	add.d	$a4, $a3, $a6
	ori	$a3, $zero, 13
	lu52i.d	$a3, $a3, -2048
	bstrins.d	$a3, $a3, 33, 31
	mulh.du	$a3, $a4, $a3
	srli.d	$a5, $a3, 31
	addi.w	$a6, $zero, -5
	pcalau12i	$a3, %pc_hi20(hashtablesize)
	ld.w	$a3, $a3, %pc_lo12(hashtablesize)
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	sub.w	$a4, $a4, $a5
	mod.wu	$a4, $a4, $a3
	slli.d	$a5, $a4, 3
	bstrpick.d	$a7, $a5, 33, 3
	slli.d	$a5, $a7, 3
	ldx.w	$t2, $a2, $a5
	move	$a5, $zero
	slli.d	$t0, $a4, 1
	addi.w	$a6, $zero, -1
	alsl.d	$t1, $a7, $a2, 3
	beq	$t2, $a6, .LBB24_5
# %bb.1:
	addi.w	$a7, $a1, 0
	beq	$t2, $a7, .LBB24_5
# %bb.2:                                # %.lr.ph.preheader
	lu12i.w	$a5, -127876
	ori	$a5, $a5, 3597
	lu32i.d	$a5, -127876
	lu52i.d	$a5, $a5, -900
	mulh.du	$a5, $a1, $a5
	srli.d	$a5, $a5, 5
	alsl.d	$t0, $a5, $a5, 2
	alsl.d	$a5, $t0, $a5, 3
	sub.d	$a5, $a1, $a5
	addi.d	$t2, $a5, 1
	move	$a5, $zero
	move	$t3, $t2
	.p2align	4, , 16
.LBB24_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.w	$a4, $a4, $t3
	mod.wu	$a4, $a4, $a3
	slli.d	$t0, $a4, 3
	bstrpick.d	$t1, $t0, 33, 3
	slli.d	$t0, $t1, 3
	ldx.w	$t4, $a2, $t0
	addi.d	$a5, $a5, 1
	slli.d	$t0, $a4, 1
	alsl.d	$t1, $t1, $a2, 3
	beq	$t4, $a6, .LBB24_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB24_3 Depth=1
	add.d	$t3, $t3, $t2
	bne	$t4, $a7, .LBB24_3
.LBB24_5:                               # %.critedge
	pcalau12i	$a3, %pc_hi20(write_hash_collisions)
	ld.w	$a4, $a3, %pc_lo12(write_hash_collisions)
	add.d	$a4, $a4, $a5
	st.w	$a4, $a3, %pc_lo12(write_hash_collisions)
	st.w	$a1, $t1, 0
	ori	$a1, $t0, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end24:
	.size	write_hash_primejump_report_level_2, .Lfunc_end24-write_hash_primejump_report_level_2
                                        # -- End function
	.globl	read_hash_primejump_report_level_3 # -- Begin function read_hash_primejump_report_level_3
	.p2align	5
	.type	read_hash_primejump_report_level_3,@function
read_hash_primejump_report_level_3:     # @read_hash_primejump_report_level_3
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	pcalau12i	$s1, %pc_hi20(AA)
	ld.d	$a2, $s1, %pc_lo12(AA)
	pcalau12i	$s2, %pc_hi20(BB)
	ld.d	$a3, $s2, %pc_lo12(BB)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $a2, $s0
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$s3, $a1, -2048
	bstrins.d	$s3, $s3, 33, 31
	mulh.du	$a1, $a0, $s3
	srli.d	$a1, $a1, 31
	addi.w	$s5, $zero, -5
	pcalau12i	$s4, %pc_hi20(hashtablesize)
	ld.w	$a2, $s4, %pc_lo12(hashtablesize)
	lu32i.d	$s5, 0
	mul.d	$a1, $a1, $s5
	sub.w	$a0, $a0, $a1
	mod.wu	$a2, $a0, $a2
	slli.d	$a0, $a2, 3
	pcalau12i	$a1, %pc_hi20(hash_stride)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s0, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $zero
	move	$a4, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(AA)
	ld.d	$a1, $s2, %pc_lo12(BB)
	mul.d	$a0, $a0, $s0
	add.d	$a1, $a0, $a1
	mulh.du	$a2, $a1, $s3
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $s4, %pc_lo12(hashtablesize)
	srli.d	$a2, $a2, 31
	mul.d	$a2, $a2, $s5
	sub.w	$a1, $a1, $a2
	mod.wu	$s5, $a1, $a0
	slli.d	$a1, $s5, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a3, $fp, $a1
	move	$s4, $zero
	addi.w	$s6, $s0, 0
	slli.d	$a1, $s5, 1
	addi.d	$a2, $a3, 1
	sltui	$a2, $a2, 1
	beq	$a3, $s6, .LBB25_6
# %bb.1:
	addi.w	$s7, $zero, -1
	beq	$a3, $s7, .LBB25_6
# %bb.2:                                # %.lr.ph.preheader
	lu12i.w	$a1, -127876
	ori	$a1, $a1, 3597
	lu32i.d	$a1, -127876
	lu52i.d	$a1, $a1, -900
	mulh.du	$a1, $s0, $a1
	srli.d	$a1, $a1, 5
	alsl.d	$a2, $a1, $a1, 2
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a1, $s0, $a1
	addi.d	$s3, $a1, 1
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$s2, $a1, %pc_lo12(.L.str.7)
	move	$s4, $zero
	move	$s8, $s3
	.p2align	4, , 16
.LBB25_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $s4
	addi.w	$s4, $s4, 1
	addi.w	$a1, $s5, 1
	mod.wu	$a2, $a1, $a0
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s0, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s0, $a0
	move	$a0, $s2
	move	$a1, $s4
	move	$a4, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1000
	beq	$s1, $a0, .LBB25_10
# %bb.4:                                #   in Loop: Header=BB25_3 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(hashtablesize)
	add.w	$a1, $s5, $s8
	mod.wu	$s5, $a1, $a0
	slli.d	$a1, $s5, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a3, $fp, $a1
	slli.d	$a1, $s5, 1
	addi.d	$a2, $a3, 1
	sltui	$a2, $a2, 1
	beq	$a3, $s6, .LBB25_6
# %bb.5:                                #   in Loop: Header=BB25_3 Depth=1
	add.d	$s8, $s8, $s3
	bne	$a3, $s7, .LBB25_3
.LBB25_6:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a3, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a3, $a3, $s4
	st.w	$a3, $a0, %pc_lo12(read_hash_collisions)
	beqz	$a2, .LBB25_8
# %bb.7:
	addi.w	$a0, $zero, -1
	b	.LBB25_9
.LBB25_8:
	ori	$a0, $a1, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $fp, $a0
.LBB25_9:
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
.LBB25_10:
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	read_hash_primejump_report_level_3, .Lfunc_end25-read_hash_primejump_report_level_3
                                        # -- End function
	.globl	write_hash_primejump_report_level_3 # -- Begin function write_hash_primejump_report_level_3
	.p2align	5
	.type	write_hash_primejump_report_level_3,@function
write_hash_primejump_report_level_3:    # @write_hash_primejump_report_level_3
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
	move	$fp, $a2
	move	$s1, $a1
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(hash_ncells)
	ld.w	$a1, $a0, %pc_lo12(hash_ncells)
	pcalau12i	$s0, %pc_hi20(AA)
	ld.d	$a2, $s0, %pc_lo12(AA)
	pcalau12i	$s2, %pc_hi20(BB)
	ld.d	$a3, $s2, %pc_lo12(BB)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_ncells)
	mul.d	$a0, $a2, $s1
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$s3, $a1, -2048
	bstrins.d	$s3, $s3, 33, 31
	mulh.du	$a1, $a0, $s3
	srli.d	$a1, $a1, 31
	addi.w	$s4, $zero, -5
	pcalau12i	$s6, %pc_hi20(hashtablesize)
	ld.w	$a2, $s6, %pc_lo12(hashtablesize)
	lu32i.d	$s4, 0
	mul.d	$a1, $a1, $s4
	sub.w	$a0, $a0, $a1
	mod.wu	$a3, $a0, $a2
	slli.d	$a0, $a3, 3
	pcalau12i	$a1, %pc_hi20(hash_stride)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a4, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a7, $s1, $a0
	mul.d	$a0, $a7, $a0
	sub.d	$a6, $s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $zero
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	move	$a2, $a5
	move	$a5, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(AA)
	ld.d	$a1, $s2, %pc_lo12(BB)
	mul.d	$a0, $a0, $s1
	add.d	$a1, $a0, $a1
	mulh.du	$a2, $a1, $s3
	move	$s5, $s6
	ld.w	$a0, $s6, %pc_lo12(hashtablesize)
	srli.d	$a2, $a2, 31
	mul.d	$a2, $a2, $s4
	sub.w	$a1, $a1, $a2
	mod.wu	$s6, $a1, $a0
	slli.d	$a1, $s6, 3
	bstrpick.d	$a2, $a1, 33, 3
	slli.d	$a1, $a2, 3
	ldx.w	$a3, $fp, $a1
	move	$s2, $zero
	slli.d	$a1, $s6, 1
	addi.w	$s7, $zero, -1
	alsl.d	$a2, $a2, $fp, 3
	beq	$a3, $s7, .LBB26_5
# %bb.1:
	addi.w	$s8, $s1, 0
	beq	$a3, $s8, .LBB26_5
# %bb.2:                                # %.lr.ph.preheader
	lu12i.w	$a1, -127876
	ori	$a1, $a1, 3597
	lu32i.d	$a1, -127876
	lu52i.d	$a1, $a1, -900
	mulh.du	$a1, $s1, $a1
	srli.d	$a1, $a1, 5
	alsl.d	$a2, $a1, $a1, 2
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a1, $s1, $a1
	addi.d	$s4, $a1, 1
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s3, $a1, %pc_lo12(.L.str.5)
	move	$s2, $zero
	move	$s0, $s4
	.p2align	4, , 16
.LBB26_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s2, $s2, 1
	addi.w	$a1, $s6, 1
	mod.wu	$a3, $a1, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(hash_stride)
	slli.w	$a1, $a3, 1
	slli.d	$a1, $a1, 2
	ldx.w	$a4, $fp, $a1
	bstrpick.d	$a0, $a0, 31, 0
	div.du	$a7, $s1, $a0
	mul.d	$a0, $a7, $a0
	sub.d	$a6, $s1, $a0
	move	$a0, $s3
	move	$a1, $s2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a5, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(hashtablesize)
	add.w	$a1, $s6, $s0
	mod.wu	$s6, $a1, $a0
	slli.d	$a1, $s6, 3
	bstrpick.d	$a2, $a1, 33, 3
	slli.d	$a1, $a2, 3
	ldx.w	$a3, $fp, $a1
	slli.d	$a1, $s6, 1
	alsl.d	$a2, $a2, $fp, 3
	beq	$a3, $s7, .LBB26_5
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=1
	add.d	$s0, $s0, $s4
	bne	$a3, $s8, .LBB26_3
.LBB26_5:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(write_hash_collisions)
	ld.w	$a3, $a0, %pc_lo12(write_hash_collisions)
	add.d	$a3, $a3, $s2
	st.w	$a3, $a0, %pc_lo12(write_hash_collisions)
	st.w	$s1, $a2, 0
	ori	$a0, $a1, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	stx.w	$a1, $fp, $a0
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
.Lfunc_end26:
	.size	write_hash_primejump_report_level_3, .Lfunc_end26-write_hash_primejump_report_level_3
                                        # -- End function
	.globl	read_hash_perfect               # -- Begin function read_hash_perfect
	.p2align	5
	.type	read_hash_perfect,@function
read_hash_perfect:                      # @read_hash_perfect
# %bb.0:
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ret
.Lfunc_end27:
	.size	read_hash_perfect, .Lfunc_end27-read_hash_perfect
                                        # -- End function
	.globl	write_hash_perfect              # -- Begin function write_hash_perfect
	.p2align	5
	.type	write_hash_perfect,@function
write_hash_perfect:                     # @write_hash_perfect
# %bb.0:
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end28:
	.size	write_hash_perfect, .Lfunc_end28-write_hash_perfect
                                        # -- End function
	.globl	compact_hash_delete             # -- Begin function compact_hash_delete
	.p2align	5
	.type	compact_hash_delete,@function
compact_hash_delete:                    # @compact_hash_delete
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(read_hash)
	st.d	$zero, $a1, %pc_lo12(read_hash)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 1011
	pcaddu18i	$ra, %call36(genvectorfree_p)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(hash_method)
	st.w	$zero, $a0, %pc_lo12(hash_method)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end29:
	.size	compact_hash_delete, .Lfunc_end29-compact_hash_delete
                                        # -- End function
	.globl	write_hash_collision_report     # -- Begin function write_hash_collision_report
	.p2align	5
	.type	write_hash_collision_report,@function
write_hash_collision_report:            # @write_hash_collision_report
# %bb.0:
	pcalau12i	$a0, %pc_hi20(hash_method)
	ld.w	$a0, $a0, %pc_lo12(hash_method)
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB30_4
# %bb.1:
	pcalau12i	$a0, %pc_hi20(hash_report_level)
	ld.w	$a0, $a0, %pc_lo12(hash_report_level)
	beqz	$a0, .LBB30_4
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB30_5
# %bb.3:
	pcalau12i	$a0, %pc_hi20(write_hash_collisions)
	ld.wu	$a0, $a0, %pc_lo12(write_hash_collisions)
	pcalau12i	$a1, %pc_hi20(hash_ncells)
	ld.wu	$a1, $a1, %pc_lo12(hash_ncells)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	pcalau12i	$a0, %pc_hi20(write_hash_collisions_runsum)
	fld.d	$fa2, $a0, %pc_lo12(write_hash_collisions_runsum)
	pcalau12i	$a1, %pc_hi20(write_hash_collisions_count)
	ld.w	$a2, $a1, %pc_lo12(write_hash_collisions_count)
	fdiv.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a0, %pc_lo12(write_hash_collisions_runsum)
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, %pc_lo12(write_hash_collisions_count)
.LBB30_4:
	ret
.LBB30_5:
	pcalau12i	$a0, %pc_hi20(write_hash_collisions)
	ld.w	$a2, $a0, %pc_lo12(write_hash_collisions)
	pcalau12i	$a0, %pc_hi20(hash_ncells)
	ld.w	$a3, $a0, %pc_lo12(hash_ncells)
	bstrpick.d	$a0, $a2, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	bstrpick.d	$a0, $a3, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end30:
	.size	write_hash_collision_report, .Lfunc_end30-write_hash_collision_report
                                        # -- End function
	.globl	read_hash_collision_report      # -- Begin function read_hash_collision_report
	.p2align	5
	.type	read_hash_collision_report,@function
read_hash_collision_report:             # @read_hash_collision_report
# %bb.0:
	pcalau12i	$a0, %pc_hi20(hash_method)
	ld.w	$a0, $a0, %pc_lo12(hash_method)
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB31_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(hash_report_level)
	ld.w	$a0, $a0, %pc_lo12(hash_report_level)
	beqz	$a0, .LBB31_5
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB31_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.wu	$a0, $a0, %pc_lo12(read_hash_collisions)
	pcalau12i	$a1, %pc_hi20(hash_queries)
	ld.wu	$a1, $a1, %pc_lo12(hash_queries)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	pcalau12i	$a0, %pc_hi20(read_hash_collisions_runsum)
	fld.d	$fa2, $a0, %pc_lo12(read_hash_collisions_runsum)
	pcalau12i	$a1, %pc_hi20(read_hash_collisions_count)
	ld.w	$a2, $a1, %pc_lo12(read_hash_collisions_count)
	fdiv.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a0, %pc_lo12(read_hash_collisions_runsum)
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, %pc_lo12(read_hash_collisions_count)
	ret
.LBB31_4:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(read_hash_collisions)
	ld.w	$a2, $fp, %pc_lo12(read_hash_collisions)
	pcalau12i	$s0, %pc_hi20(hash_queries)
	ld.w	$a3, $s0, %pc_lo12(hash_queries)
	bstrpick.d	$a0, $a2, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	bstrpick.d	$a0, $a3, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	st.w	$zero, $s0, %pc_lo12(hash_queries)
	st.w	$zero, $fp, %pc_lo12(read_hash_collisions)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB31_5:
	ret
.Lfunc_end31:
	.size	read_hash_collision_report, .Lfunc_end31-read_hash_collision_report
                                        # -- End function
	.globl	final_hash_collision_report     # -- Begin function final_hash_collision_report
	.p2align	5
	.type	final_hash_collision_report,@function
final_hash_collision_report:            # @final_hash_collision_report
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(hashtablesize)
	ld.wu	$a0, $a0, %pc_lo12(hashtablesize)
	slli.d	$a1, $a0, 2
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(hash_report_level)
	ld.w	$a0, $a0, %pc_lo12(hash_report_level)
	beqz	$a0, .LBB32_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(read_hash_collisions_count)
	ld.w	$a0, $a0, %pc_lo12(read_hash_collisions_count)
	beqz	$a0, .LBB32_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(write_hash_collisions_count)
	ld.wu	$a1, $a1, %pc_lo12(write_hash_collisions_count)
	pcalau12i	$a2, %pc_hi20(write_hash_collisions_runsum)
	fld.d	$fa0, $a2, %pc_lo12(write_hash_collisions_runsum)
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(read_hash_collisions_runsum)
	fld.d	$fa1, $a1, %pc_lo12(read_hash_collisions_runsum)
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB32_3:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end32:
	.size	final_hash_collision_report, .Lfunc_end32-final_hash_collision_report
                                        # -- End function
	.globl	read_dev_hash                   # -- Begin function read_dev_hash
	.p2align	5
	.type	read_dev_hash,@function
read_dev_hash:                          # @read_dev_hash
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
	addi.d	$a6, $a0, -1
	ori	$a7, $zero, 3
	bltu	$a7, $a6, .LBB33_82
# %bb.1:
	move	$fp, $a5
	move	$s2, $a4
	move	$s0, $a1
	slli.d	$a0, $a6, 2
	pcalau12i	$a1, %pc_hi20(.LJTI33_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI33_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB33_2:
	pcalau12i	$a0, %pc_hi20(hash_report_level)
	ld.w	$a1, $a0, %pc_lo12(hash_report_level)
	ori	$a0, $zero, 3
	bltu	$a0, $a1, .LBB33_83
# %bb.3:
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI33_3)
	addi.d	$a1, $a1, %pc_lo12(.LJTI33_3)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB33_4:
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a2, $fp, $a0
	addi.w	$a0, $s2, 0
	beq	$a2, $a0, .LBB33_78
# %bb.5:
	addi.w	$a1, $zero, -1
	beq	$a2, $a1, .LBB33_78
	.p2align	4, , 16
.LBB33_6:                               # %.lr.ph492
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $s1, 1
	bstrpick.d	$a2, $a2, 31, 0
	mod.du	$s1, $a2, $s0
	slli.d	$a2, $s1, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $fp, $a2
	beq	$a2, $a0, .LBB33_78
# %bb.7:                                # %.lr.ph492
                                        #   in Loop: Header=BB33_6 Depth=1
	bne	$a2, $a1, .LBB33_6
	b	.LBB33_78
.LBB33_8:
	pcalau12i	$a0, %pc_hi20(hash_report_level)
	ld.w	$a1, $a0, %pc_lo12(hash_report_level)
	ori	$a0, $zero, 3
	bltu	$a0, $a1, .LBB33_83
# %bb.9:
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI33_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI33_2)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB33_10:
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a2, $fp, $a0
	addi.w	$a0, $s2, 0
	beq	$a2, $a0, .LBB33_78
# %bb.11:
	addi.w	$a1, $zero, -1
	beq	$a2, $a1, .LBB33_78
# %bb.12:                               # %.lr.ph467.preheader
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB33_13:                              # %.lr.ph467
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a2, $a2
	add.d	$a3, $s1, $a3
	bstrpick.d	$a3, $a3, 31, 0
	mod.du	$s1, $a3, $s0
	slli.d	$a3, $s1, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	ldx.w	$a3, $fp, $a3
	beq	$a3, $a0, .LBB33_78
# %bb.14:                               # %.lr.ph467
                                        #   in Loop: Header=BB33_13 Depth=1
	addi.w	$a2, $a2, 1
	bne	$a3, $a1, .LBB33_13
	b	.LBB33_78
.LBB33_15:
	pcalau12i	$a0, %pc_hi20(hash_report_level)
	ld.w	$a1, $a0, %pc_lo12(hash_report_level)
	ori	$a0, $zero, 3
	bltu	$a0, $a1, .LBB33_83
# %bb.16:
	lu12i.w	$a0, -127876
	ori	$a0, $a0, 3597
	lu32i.d	$a0, -127876
	lu52i.d	$a0, $a0, -900
	mulh.du	$a0, $s2, $a0
	srli.d	$a0, $a0, 5
	alsl.d	$a4, $a0, $a0, 2
	alsl.d	$a0, $a4, $a0, 3
	sub.d	$a0, $s2, $a0
	addi.w	$s6, $a0, 1
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI33_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI33_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB33_17:
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a2, $fp, $a0
	addi.w	$a0, $s2, 0
	beq	$a2, $a0, .LBB33_78
# %bb.18:
	addi.w	$a1, $zero, -1
	beq	$a2, $a1, .LBB33_78
# %bb.19:                               # %.lr.ph427.preheader
	move	$a2, $s6
	.p2align	4, , 16
.LBB33_20:                              # %.lr.ph427
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s1, $a2
	bstrpick.d	$a3, $a3, 31, 0
	mod.du	$s1, $a3, $s0
	slli.d	$a3, $s1, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	ldx.w	$a3, $fp, $a3
	beq	$a3, $a0, .LBB33_78
# %bb.21:                               # %.lr.ph427
                                        #   in Loop: Header=BB33_20 Depth=1
	add.w	$a2, $a2, $s6
	bne	$a3, $a1, .LBB33_20
	b	.LBB33_78
.LBB33_22:
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	addi.w	$a0, $s2, 0
	move	$a1, $zero
	beq	$a3, $a0, .LBB33_52
# %bb.23:
	addi.w	$a2, $zero, -1
	beq	$a3, $a2, .LBB33_52
# %bb.24:                               # %.lr.ph447.preheader
	move	$a1, $zero
	ori	$a3, $zero, 1000
	.p2align	4, , 16
.LBB33_25:                              # %.lr.ph447
                                        # =>This Inner Loop Header: Depth=1
	beq	$a1, $a3, .LBB33_64
# %bb.26:                               #   in Loop: Header=BB33_25 Depth=1
	addi.d	$a1, $a1, 1
	mul.d	$a4, $a1, $a1
	add.d	$a4, $s1, $a4
	bstrpick.d	$a4, $a4, 31, 0
	mod.du	$s1, $a4, $s0
	slli.d	$a4, $s1, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	ldx.w	$a4, $fp, $a4
	addi.w	$a1, $a1, 0
	beq	$a4, $a0, .LBB33_52
# %bb.27:                               #   in Loop: Header=BB33_25 Depth=1
	bne	$a4, $a2, .LBB33_25
	b	.LBB33_52
.LBB33_28:
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s8, $a0, $s0
	addi.w	$s1, $s8, 0
	slli.d	$a0, $s8, 3
	pcalau12i	$s5, %pc_hi20(hash_stride)
	ld.w	$a1, $s5, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$s3, $a0, 3
	ldx.w	$a3, $fp, $s3
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s2, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $zero
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $fp, $s3
	addi.w	$s6, $s2, 0
	move	$s3, $zero
	beq	$a0, $s6, .LBB33_34
# %bb.29:
	addi.w	$s7, $zero, -1
	beq	$a0, $s7, .LBB33_34
# %bb.30:                               # %.lr.ph437.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s4, $a0, %pc_lo12(.L.str.7)
	move	$s3, $zero
	move	$s1, $s8
	.p2align	4, , 16
.LBB33_31:                              # %.lr.ph437
                                        # =>This Inner Loop Header: Depth=1
	move	$s8, $s3
	addi.w	$s3, $s3, 1
	addi.d	$a0, $s1, 1
	bstrpick.d	$a0, $a0, 31, 0
	mod.du	$a0, $a0, $s0
	slli.d	$a1, $a0, 3
	ld.w	$a2, $s5, %pc_lo12(hash_stride)
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a3, $fp, $a1
	bstrpick.d	$a1, $a2, 31, 0
	div.du	$a6, $s2, $a1
	mul.d	$a1, $a6, $a1
	sub.d	$a5, $s2, $a1
	addi.w	$a2, $a0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a4, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1000
	beq	$s8, $a0, .LBB33_64
# %bb.32:                               #   in Loop: Header=BB33_31 Depth=1
	mul.d	$a0, $s3, $s3
	add.d	$a0, $s1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a0, $fp, $a0
	beq	$a0, $s6, .LBB33_34
# %bb.33:                               #   in Loop: Header=BB33_31 Depth=1
	bne	$a0, $s7, .LBB33_31
.LBB33_34:                              # %.critedge14
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a1, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a1, $a1, $s3
	b	.LBB33_77
.LBB33_35:
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	addi.w	$a1, $s2, 0
	move	$a0, $zero
	beq	$a3, $a1, .LBB33_75
# %bb.36:
	addi.w	$a2, $zero, -1
	beq	$a3, $a2, .LBB33_75
# %bb.37:                               # %.lr.ph407.preheader
	move	$a0, $zero
	ori	$a3, $zero, 1000
	move	$a4, $s6
	.p2align	4, , 16
.LBB33_38:                              # %.lr.ph407
                                        # =>This Inner Loop Header: Depth=1
	beq	$a0, $a3, .LBB33_64
# %bb.39:                               #   in Loop: Header=BB33_38 Depth=1
	add.d	$a5, $s1, $a4
	bstrpick.d	$a5, $a5, 31, 0
	mod.du	$s1, $a5, $s0
	slli.d	$a5, $s1, 3
	bstrpick.d	$a5, $a5, 33, 3
	slli.d	$a5, $a5, 3
	ldx.w	$a5, $fp, $a5
	addi.w	$a0, $a0, 1
	beq	$a5, $a1, .LBB33_75
# %bb.40:                               #   in Loop: Header=BB33_38 Depth=1
	add.w	$a4, $a4, $s6
	bne	$a5, $a2, .LBB33_38
	b	.LBB33_75
.LBB33_41:
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	addi.w	$a1, $s2, 0
	move	$a0, $zero
	beq	$a3, $a1, .LBB33_75
# %bb.42:
	addi.w	$a2, $zero, -1
	beq	$a3, $a2, .LBB33_75
# %bb.43:                               # %.lr.ph475.preheader
	move	$a0, $zero
	ori	$a3, $zero, 1000
	.p2align	4, , 16
.LBB33_44:                              # %.lr.ph475
                                        # =>This Inner Loop Header: Depth=1
	beq	$a0, $a3, .LBB33_64
# %bb.45:                               #   in Loop: Header=BB33_44 Depth=1
	addi.d	$a4, $s1, 1
	bstrpick.d	$a4, $a4, 31, 0
	mod.du	$s1, $a4, $s0
	slli.d	$a4, $s1, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	ldx.w	$a4, $fp, $a4
	addi.w	$a0, $a0, 1
	beq	$a4, $a1, .LBB33_75
# %bb.46:                               #   in Loop: Header=BB33_44 Depth=1
	bne	$a4, $a2, .LBB33_44
	b	.LBB33_75
.LBB33_47:
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	addi.w	$a0, $s2, 0
	move	$a1, $zero
	beq	$a3, $a0, .LBB33_52
# %bb.48:
	addi.w	$a2, $zero, -1
	beq	$a3, $a2, .LBB33_52
# %bb.49:                               # %.lr.ph457.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB33_50:                              # %.lr.ph457
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a1, 1
	mul.d	$a3, $a1, $a1
	add.d	$a3, $s1, $a3
	bstrpick.d	$a3, $a3, 31, 0
	mod.du	$s1, $a3, $s0
	slli.d	$a3, $s1, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	ldx.w	$a3, $fp, $a3
	addi.w	$a1, $a1, 0
	beq	$a3, $a0, .LBB33_52
# %bb.51:                               # %.lr.ph457
                                        #   in Loop: Header=BB33_50 Depth=1
	bne	$a3, $a2, .LBB33_50
.LBB33_52:                              # %.critedge10
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a2, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a1, $a2, $a1
	b	.LBB33_77
.LBB33_53:
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s4, $a0, $s0
	addi.w	$s1, $s4, 0
	slli.d	$a0, $s4, 3
	pcalau12i	$a1, %pc_hi20(hash_stride)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$s3, $a0, 3
	ldx.w	$a3, $fp, $s3
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s2, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $zero
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $fp, $s3
	addi.w	$s7, $s2, 0
	move	$s8, $zero
	beq	$a0, $s7, .LBB33_59
# %bb.54:
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	beq	$a0, $a1, .LBB33_59
# %bb.55:                               # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	move	$s1, $s4
	addi.d	$s4, $a0, %pc_lo12(.L.str.7)
	move	$s8, $zero
	move	$s5, $s6
	.p2align	4, , 16
.LBB33_56:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $s8
	addi.w	$s8, $s8, 1
	addi.d	$a0, $s1, 1
	bstrpick.d	$a0, $a0, 31, 0
	mod.du	$a0, $a0, $s0
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(hash_stride)
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a3, $fp, $a1
	bstrpick.d	$a1, $a2, 31, 0
	div.du	$a6, $s2, $a1
	mul.d	$a1, $a6, $a1
	sub.d	$a5, $s2, $a1
	addi.w	$a2, $a0, 0
	move	$a0, $s4
	move	$a1, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1000
	beq	$s3, $a0, .LBB33_64
# %bb.57:                               #   in Loop: Header=BB33_56 Depth=1
	add.d	$a0, $s1, $s5
	bstrpick.d	$a0, $a0, 31, 0
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a0, $fp, $a0
	beq	$a0, $s7, .LBB33_59
# %bb.58:                               #   in Loop: Header=BB33_56 Depth=1
	add.w	$s5, $s5, $s6
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB33_56
.LBB33_59:                              # %.critedge22
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a1, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a1, $a1, $s8
	b	.LBB33_77
.LBB33_60:
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$a0, $a0, $s0
	addi.w	$s1, $a0, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$s5, %pc_hi20(hash_stride)
	ld.w	$a1, $s5, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s2, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s3, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	addi.w	$s6, $s2, 0
	addi.w	$s7, $zero, -1
	ori	$s8, $zero, 1001
	.p2align	4, , 16
.LBB33_61:                              # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a0, $fp, $a0
	beq	$a0, $s6, .LBB33_76
# %bb.62:                               #   in Loop: Header=BB33_61 Depth=1
	beq	$a0, $s7, .LBB33_76
# %bb.63:                               #   in Loop: Header=BB33_61 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$a0, $s1, 1
	bstrpick.d	$a0, $a0, 31, 0
	mod.du	$a0, $a0, $s0
	addi.w	$s1, $a0, 0
	slli.d	$a0, $a0, 3
	ld.w	$a1, $s5, %pc_lo12(hash_stride)
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	bstrpick.d	$a0, $a1, 31, 0
	div.du	$a6, $s2, $a0
	mul.d	$a0, $a6, $a0
	sub.d	$a5, $s2, $a0
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bne	$s4, $s8, .LBB33_61
.LBB33_64:
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB33_65:
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	addi.w	$a1, $s2, 0
	move	$a0, $zero
	beq	$a3, $a1, .LBB33_75
# %bb.66:
	addi.w	$a2, $zero, -1
	beq	$a3, $a2, .LBB33_75
# %bb.67:                               # %.lr.ph417.preheader
	move	$a0, $zero
	move	$a3, $s6
	.p2align	4, , 16
.LBB33_68:                              # %.lr.ph417
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s1, $a3
	bstrpick.d	$a4, $a4, 31, 0
	mod.du	$s1, $a4, $s0
	slli.d	$a4, $s1, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	ldx.w	$a4, $fp, $a4
	addi.d	$a0, $a0, 1
	beq	$a4, $a1, .LBB33_75
# %bb.69:                               # %.lr.ph417
                                        #   in Loop: Header=BB33_68 Depth=1
	add.w	$a3, $a3, $s6
	bne	$a4, $a2, .LBB33_68
	b	.LBB33_75
.LBB33_70:
	pcalau12i	$a0, %pc_hi20(hash_queries)
	ld.w	$a1, $a0, %pc_lo12(hash_queries)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(hash_queries)
	mul.d	$a0, $s2, $a2
	add.d	$a0, $a0, $a3
	ori	$a1, $zero, 13
	lu52i.d	$a1, $a1, -2048
	bstrins.d	$a1, $a1, 33, 31
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 31
	addi.w	$a2, $zero, -5
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	mod.du	$s1, $a0, $s0
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a3, $fp, $a0
	addi.w	$a1, $s2, 0
	move	$a0, $zero
	beq	$a3, $a1, .LBB33_75
# %bb.71:
	addi.w	$a2, $zero, -1
	beq	$a3, $a2, .LBB33_75
# %bb.72:                               # %.lr.ph484.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB33_73:                              # %.lr.ph484
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $s1, 1
	bstrpick.d	$a3, $a3, 31, 0
	mod.du	$s1, $a3, $s0
	slli.d	$a3, $s1, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	ldx.w	$a3, $fp, $a3
	addi.d	$a0, $a0, 1
	beq	$a3, $a1, .LBB33_75
# %bb.74:                               # %.lr.ph484
                                        #   in Loop: Header=BB33_73 Depth=1
	bne	$a3, $a2, .LBB33_73
.LBB33_75:                              # %.critedge2
	pcalau12i	$a1, %pc_hi20(read_hash_collisions)
	ld.w	$a2, $a1, %pc_lo12(read_hash_collisions)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, %pc_lo12(read_hash_collisions)
	b	.LBB33_78
.LBB33_76:                              # %.critedge6
	pcalau12i	$a0, %pc_hi20(read_hash_collisions)
	ld.w	$a1, $a0, %pc_lo12(read_hash_collisions)
	add.d	$a1, $a1, $s4
.LBB33_77:                              # %.critedge
	st.w	$a1, $a0, %pc_lo12(read_hash_collisions)
.LBB33_78:                              # %.critedge
	slli.d	$a0, $s1, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a1, $fp, $a0
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB33_81
# %bb.79:
	slli.d	$a0, $s1, 1
	ori	$a0, $a0, 1
	bstrpick.d	$s2, $a0, 31, 0
.LBB33_80:                              # %.sink.split
	slli.d	$a0, $s2, 2
	ldx.w	$a0, $fp, $a0
.LBB33_81:
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
.LBB33_82:
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a2, $a1, %pc_lo12(.L.str.13)
	move	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB33_83:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	read_dev_hash, .Lfunc_end33-read_dev_hash
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI33_0:
	.word	.LBB33_80-.LJTI33_0
	.word	.LBB33_2-.LJTI33_0
	.word	.LBB33_8-.LJTI33_0
	.word	.LBB33_15-.LJTI33_0
.LJTI33_1:
	.word	.LBB33_17-.LJTI33_1
	.word	.LBB33_65-.LJTI33_1
	.word	.LBB33_35-.LJTI33_1
	.word	.LBB33_53-.LJTI33_1
.LJTI33_2:
	.word	.LBB33_10-.LJTI33_2
	.word	.LBB33_47-.LJTI33_2
	.word	.LBB33_22-.LJTI33_2
	.word	.LBB33_28-.LJTI33_2
.LJTI33_3:
	.word	.LBB33_4-.LJTI33_3
	.word	.LBB33_70-.LJTI33_3
	.word	.LBB33_41-.LJTI33_3
	.word	.LBB33_60-.LJTI33_3
                                        # -- End function
	.type	hash_header_size,@object        # @hash_header_size
	.data
	.globl	hash_header_size
	.p2align	3, 0x0
hash_header_size:
	.dword	16                              # 0x10
	.size	hash_header_size, 8

	.type	choose_hash_method,@object      # @choose_hash_method
	.bss
	.globl	choose_hash_method
	.p2align	2, 0x0
choose_hash_method:
	.word	0                               # 0x0
	.size	choose_hash_method, 4

	.type	hash_method,@object             # @hash_method
	.local	hash_method
	.comm	hash_method,4,4
	.type	hashtablesize,@object           # @hashtablesize
	.local	hashtablesize
	.comm	hashtablesize,4,4
	.type	hash_ncells,@object             # @hash_ncells
	.local	hash_ncells
	.comm	hash_ncells,4,4
	.type	write_hash_collisions,@object   # @write_hash_collisions
	.local	write_hash_collisions
	.comm	write_hash_collisions,4,4
	.type	read_hash_collisions,@object    # @read_hash_collisions
	.local	read_hash_collisions
	.comm	read_hash_collisions,4,4
	.type	hash_queries,@object            # @hash_queries
	.local	hash_queries
	.comm	hash_queries,4,4
	.type	hash_report_level,@object       # @hash_report_level
	.data
	.p2align	2, 0x0
hash_report_level:
	.word	2                               # 0x2
	.size	hash_report_level, 4

	.type	hash_stride,@object             # @hash_stride
	.local	hash_stride
	.comm	hash_stride,4,4
	.type	mem_opt_factor,@object          # @mem_opt_factor
	.bss
	.globl	mem_opt_factor
	.p2align	2, 0x0
mem_opt_factor:
	.word	0x00000000                      # float 0
	.size	mem_opt_factor, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DEBUG hash_method %d hash_mem_ratio %f hash_mem_factor %f mem_opt_factor %f perfect_hash_size %u compact_hash_size %u\n"
	.size	.L.str, 119

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"DEBUG do_compact_hash %d hash_method %d perfect_hash_size %u compact_hash_size %u\n"
	.size	.L.str.1, 83

	.type	AA,@object                      # @AA
	.local	AA
	.comm	AA,8,8
	.type	BB,@object                      # @BB
	.local	BB
	.comm	BB,8,8
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Factors AA %lu BB %lu\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/hash.c"
	.size	.L.str.3, 137

	.type	read_hash,@object               # @read_hash
	.bss
	.globl	read_hash
	.p2align	3, 0x0
read_hash:
	.dword	0
	.size	read_hash, 8

	.type	write_hash,@object              # @write_hash
	.globl	write_hash
	.p2align	3, 0x0
write_hash:
	.dword	0
	.size	write_hash, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Hash table size %u perfect hash table size %u memory savings %d by percentage %lf\n"
	.size	.L.str.4, 83

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%d: cell %d hashloc is %d hash[2*hashloc] = %d hashkey %lu ii %lu jj %lu\n"
	.size	.L.str.5, 74

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d: hashloc is %d hash[2*hashloc] = %d hashkey %lu ii %lu jj %lu\n"
	.size	.L.str.7, 66

	.type	write_hash_collisions_runsum,@object # @write_hash_collisions_runsum
	.local	write_hash_collisions_runsum
	.comm	write_hash_collisions_runsum,8,8
	.type	write_hash_collisions_count,@object # @write_hash_collisions_count
	.local	write_hash_collisions_count
	.comm	write_hash_collisions_count,4,4
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Write hash collision report -- collisions per cell %lf, collisions %d cells %d\n"
	.size	.L.str.8, 80

	.type	read_hash_collisions_runsum,@object # @read_hash_collisions_runsum
	.local	read_hash_collisions_runsum
	.comm	read_hash_collisions_runsum,8,8
	.type	read_hash_collisions_count,@object # @read_hash_collisions_count
	.local	read_hash_collisions_count
	.comm	read_hash_collisions_count,4,4
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Read hash collision report -- collisions per cell %lf, collisions %d cells %d\n"
	.size	.L.str.9, 79

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"hash table size  bytes %ld\n"
	.size	.L.str.10, 28

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Final hash collision report -- write/read collisions per cell %lf/%lf\n"
	.size	.L.str.11, 71

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Error -- Illegal value of hash_report_level %d\n"
	.size	.L.str.12, 48

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Error -- Illegal value of hash_method %d\n"
	.size	.L.str.13, 42

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"Error -- too many read hash collisions"
	.size	.Lstr.11, 39

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_hash_linear
	.addrsig_sym write_hash_linear
	.addrsig_sym read_hash_linear_report_level_1
	.addrsig_sym write_hash_linear_report_level_1
	.addrsig_sym read_hash_linear_report_level_2
	.addrsig_sym write_hash_linear_report_level_2
	.addrsig_sym read_hash_linear_report_level_3
	.addrsig_sym write_hash_linear_report_level_3
	.addrsig_sym read_hash_quadratic
	.addrsig_sym write_hash_quadratic
	.addrsig_sym read_hash_quadratic_report_level_1
	.addrsig_sym write_hash_quadratic_report_level_1
	.addrsig_sym read_hash_quadratic_report_level_2
	.addrsig_sym write_hash_quadratic_report_level_2
	.addrsig_sym read_hash_quadratic_report_level_3
	.addrsig_sym write_hash_quadratic_report_level_3
	.addrsig_sym read_hash_primejump
	.addrsig_sym write_hash_primejump
	.addrsig_sym read_hash_primejump_report_level_1
	.addrsig_sym write_hash_primejump_report_level_1
	.addrsig_sym read_hash_primejump_report_level_2
	.addrsig_sym write_hash_primejump_report_level_2
	.addrsig_sym read_hash_primejump_report_level_3
	.addrsig_sym write_hash_primejump_report_level_3
	.addrsig_sym read_hash_perfect
	.addrsig_sym write_hash_perfect
