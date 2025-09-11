	.file	"gstype1.c"
	.text
	.globl	gs_type1_encrypt                # -- Begin function gs_type1_encrypt
	.p2align	5
	.type	gs_type1_encrypt,@function
gs_type1_encrypt:                       # @gs_type1_encrypt
# %bb.0:
	ld.hu	$a4, $a3, 0
	beqz	$a2, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	lu12i.w	$a5, -4
	ori	$a5, $a5, 3693
	lu12i.w	$a6, 5
	ori	$a6, $a6, 2239
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a1, 0
	bstrpick.d	$t0, $a4, 15, 8
	xor	$a7, $a7, $t0
	st.b	$a7, $a0, 0
	andi	$a7, $a7, 255
	add.d	$a4, $a4, $a7
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB0_2
.LBB0_3:                                # %._crit_edge
	st.h	$a4, $a3, 0
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	gs_type1_encrypt, .Lfunc_end0-gs_type1_encrypt
                                        # -- End function
	.globl	gs_type1_decrypt                # -- Begin function gs_type1_decrypt
	.p2align	5
	.type	gs_type1_decrypt,@function
gs_type1_decrypt:                       # @gs_type1_decrypt
# %bb.0:
	ld.hu	$a4, $a3, 0
	beqz	$a2, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	lu12i.w	$a5, -4
	ori	$a5, $a5, 3693
	lu12i.w	$a6, 5
	ori	$a6, $a6, 2239
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a1, 0
	addi.d	$a1, $a1, 1
	srli.d	$t0, $a4, 8
	xor	$t0, $a7, $t0
	st.b	$t0, $a0, 0
	add.d	$a4, $a4, $a7
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB1_2
.LBB1_3:                                # %._crit_edge
	st.h	$a4, $a3, 0
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	gs_type1_decrypt, .Lfunc_end1-gs_type1_decrypt
                                        # -- End function
	.globl	gs_type1_init_matrix            # -- Begin function gs_type1_init_matrix
	.p2align	5
	.type	gs_type1_init_matrix,@function
gs_type1_init_matrix:                   # @gs_type1_init_matrix
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
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, -3
	ori	$s1, $a0, 2288
	ld.d	$a0, $fp, 8
	move	$a1, $s1
	lu32i.d	$a1, 0
	st.w	$a1, $sp, 12
	ld.d	$a1, $a0, 24
	ld.d	$s3, $a0, 40
	ld.d	$s5, $a0, 56
	ld.d	$s0, $a0, 72
	st.w	$zero, $fp, 64
	bstrpick.d	$s4, $a1, 62, 0
	movgr2fr.w	$fs2, $a1
	beqz	$s4, .LBB2_2
# %bb.1:
	fcvt.d.s	$fa0, $fs2
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 12
.LBB2_2:
	bstrpick.d	$s2, $s3, 62, 0
	movgr2fr.w	$fs0, $s3
	beqz	$s2, .LBB2_4
# %bb.3:
	fcvt.d.s	$fa0, $fs0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 64
.LBB2_4:
	bstrpick.d	$s3, $s5, 62, 0
	movgr2fr.w	$fs1, $s5
	beqz	$s3, .LBB2_6
# %bb.5:
	fcvt.d.s	$fa0, $fs1
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 64
.LBB2_6:
	bstrpick.d	$s5, $s0, 62, 0
	movgr2fr.w	$fs3, $s0
	beqz	$s5, .LBB2_8
# %bb.7:
	fcvt.d.s	$fa0, $fs3
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
.LBB2_8:
	ori	$a0, $zero, 20
	sub.w	$s0, $a0, $s1
	beqz	$s4, .LBB2_14
# %bb.9:
	fcvt.d.s	$fa0, $fs2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.d	$a0, $fp, 32
	beqz	$s5, .LBB2_15
.LBB2_10:
	fcvt.d.s	$fa0, $fs3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ld.w	$a1, $fp, 64
	st.d	$a0, $fp, 56
	beqz	$a1, .LBB2_16
.LBB2_11:
	beqz	$s2, .LBB2_17
# %bb.12:
	fcvt.d.s	$fa0, $fs0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.d	$a0, $fp, 40
	beqz	$s3, .LBB2_18
.LBB2_13:
	fcvt.d.s	$fa0, $fs1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.d	$a0, $fp, 48
	b	.LBB2_19
.LBB2_14:
	move	$a0, $zero
	st.d	$a0, $fp, 32
	bnez	$s5, .LBB2_10
.LBB2_15:
	move	$a0, $zero
	ld.w	$a1, $fp, 64
	st.d	$a0, $fp, 56
	bnez	$a1, .LBB2_11
.LBB2_16:
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 40
	b	.LBB2_19
.LBB2_17:
	move	$a0, $zero
	st.d	$a0, $fp, 40
	bnez	$s3, .LBB2_13
.LBB2_18:
	st.d	$zero, $fp, 48
.LBB2_19:
	ori	$a0, $zero, 8
	sub.d	$a0, $a0, $s1
	st.w	$a0, $fp, 68
	slti	$a0, $s1, 8
	ori	$a1, $zero, 7
	sub.d	$a1, $a1, $s1
	ori	$a2, $zero, 1
	sll.d	$a1, $a2, $a1
	maskeqz	$a0, $a1, $a0
	st.d	$a0, $fp, 72
	move	$a0, $zero
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	gs_type1_init_matrix, .Lfunc_end2-gs_type1_init_matrix
                                        # -- End function
	.globl	gs_type1_init                   # -- Begin function gs_type1_init
	.p2align	5
	.type	gs_type1_init,@function
gs_type1_init:                          # @gs_type1_init
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a1, 0
	st.d	$a1, $a0, 0
	st.d	$fp, $a0, 8
	st.d	$a5, $a0, 16
	st.w	$a2, $a0, 24
	st.w	$a3, $a0, 28
	st.w	$zero, $a0, 272
	st.d	$a4, $a0, 280
	lu12i.w	$a1, 1
	ori	$a1, $a1, 234
	ld.w	$a2, $a5, 24
	st.h	$a1, $a0, 288
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 456
	st.w	$a2, $a0, 460
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 496
	pcaddu18i	$ra, %call36(gs_type1_init_matrix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	vld	$vr0, $fp, 120
	vst	$vr0, $a0, 120
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	gs_type1_init, .Lfunc_end3-gs_type1_init
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gs_type1_interpret
.LCPI4_0:
	.dword	0x3f30000000000000              # double 2.44140625E-4
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_1:
	.word	0x45800000                      # float 4096
	.text
	.globl	gs_type1_interpret
	.p2align	5
	.type	gs_type1_interpret,@function
gs_type1_interpret:                     # @gs_type1_interpret
# %bb.0:
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 8
	ld.d	$s6, $a2, 256
	ld.d	$a3, $a0, 16
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a3, $a0, 456
	ld.w	$s3, $a0, 460
	ld.d	$a4, $a2, 120
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 128
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s7, $s6, 120
	ld.d	$s4, $s6, 128
	ld.d	$s8, $a0, 32
	ld.d	$a2, $a0, 40
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 48
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 56
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 64
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.w	$s1, $a0, 68
	ld.w	$s0, $a0, 272
	ld.d	$a2, $a0, 72
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$s5, $a1
	addi.d	$a1, $a0, 280
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$fp, $a3, $a1, 4
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	beqz	$s0, .LBB4_2
# %bb.1:
	addi.d	$a1, $a0, 80
	slli.d	$a2, $s0, 3
	addi.d	$a0, $sp, 176
	addi.d	$s2, $sp, 176
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s2, 3
	b	.LBB4_3
.LBB4_2:
	addi.d	$a0, $sp, 176
.LBB4_3:
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $fp, -16
	move	$a3, $s3
	beqz	$s5, .LBB4_5
# %bb.4:
	st.d	$s5, $a1, 0
.LBB4_5:
	addi.d	$s6, $a0, -8
	sub.d	$a0, $zero, $s1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a7, $sp, 168
	lu12i.w	$a0, -4
	ori	$s5, $a0, 3693
	lu12i.w	$a0, 5
	ori	$s2, $a0, 2239
	ori	$a4, $zero, 1
	addi.d	$a0, $zero, -10
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 234
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB4_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #     Child Loop BB4_14 Depth 2
	ld.d	$fp, $a1, 0
	ld.hu	$s0, $a1, 8
	move	$s8, $s6
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bgtz	$a3, .LBB4_8
.LBB4_7:                                #   in Loop: Header=BB4_6 Depth=1
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_6 Depth=1
	addi.d	$a0, $a3, 1
	move	$a1, $fp
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	add.d	$a2, $s0, $a2
	mul.d	$a2, $a2, $s5
	add.d	$s0, $a2, $s2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bltu	$a4, $a0, .LBB4_9
# %bb.10:                               # %.preheader.loopexit
                                        #   in Loop: Header=BB4_6 Depth=1
	add.d	$fp, $fp, $a3
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB4_14
.LBB4_11:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
.LBB4_12:                               #   in Loop: Header=BB4_14 Depth=2
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
.LBB4_13:                               #   in Loop: Header=BB4_14 Depth=2
	addi.d	$a7, $sp, 168
	move	$s8, $a7
	bltz	$a0, .LBB4_128
.LBB4_14:                               # %.thread1096
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	ld.bu	$a1, $fp, 0
	move	$s6, $s8
	bstrpick.d	$a2, $s0, 15, 8
	xor	$a2, $a2, $a1
	add.d	$a1, $s0, $a1
	mul.d	$a1, $a1, $s5
	add.d	$s0, $a1, $s2
	addi.d	$fp, $fp, 1
	ori	$a1, $zero, 31
	bltu	$a1, $a2, .LBB4_49
# %bb.15:                               # %.thread1096
                                        #   in Loop: Header=BB4_14 Depth=2
	slli.d	$a1, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI4_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI4_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	move	$s8, $a7
	jr	$a1
.LBB4_16:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$s1, .LBB4_66
# %bb.17:                               #   in Loop: Header=BB4_14 Depth=2
	add.d	$a1, $a1, $s3
	sra.d	$a1, $a1, $s1
	add.d	$s4, $a1, $s4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_11
# %bb.18:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	b	.LBB4_68
.LBB4_19:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$s1, .LBB4_60
# %bb.20:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 184
	add.d	$a1, $a1, $s3
	sra.d	$a1, $a1, $s1
	add.d	$s7, $a1, $s7
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s3
	sra.d	$a2, $a2, $s1
	add.d	$s4, $a2, $s4
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_11
# %bb.21:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$s4, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	b	.LBB4_62
.LBB4_22:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$s1, .LBB4_63
# %bb.23:                               #   in Loop: Header=BB4_14 Depth=2
	add.d	$a1, $a1, $s3
	sra.d	$a1, $a1, $s1
	add.d	$s4, $a1, $s4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_100
# %bb.24:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	b	.LBB4_65
.LBB4_25:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a2, 464
	st.d	$zero, $a2, 472
	st.d	$a1, $a2, 480
	st.d	$zero, $a2, 488
	st.d	$zero, $sp, 184
.LBB4_26:                               #   in Loop: Header=BB4_14 Depth=2
	move	$a2, $s7
	move	$a0, $s4
.LBB4_27:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 176
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a3, $a1, $a3
	bltz	$s1, .LBB4_57
# %bb.28:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a4, $sp, 184
	add.d	$a3, $a3, $s3
	sra.d	$a3, $a3, $s1
	add.d	$s7, $a3, $a2
	slli.d	$a2, $a4, 20
	srai.d	$a2, $a2, 32
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a3, $a2, $a3
	add.d	$a3, $a3, $s3
	sra.d	$a3, $a3, $s1
	add.d	$s4, $a3, $a0
	move	$s8, $a7
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_14
# %bb.29:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$s4, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	b	.LBB4_59
.LBB4_30:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$s1, .LBB4_69
# %bb.31:                               #   in Loop: Header=BB4_14 Depth=2
	add.d	$a1, $a1, $s3
	sra.d	$a1, $a1, $s1
	add.d	$s7, $a1, $s7
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_100
# %bb.32:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	b	.LBB4_99
.LBB4_33:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(gx_path_close_subpath)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_12
	b	.LBB4_128
.LBB4_34:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$s1, .LBB4_71
# %bb.35:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 184
	add.d	$a1, $a1, $s3
	sra.d	$a1, $a1, $s1
	add.d	$s7, $a1, $s7
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s3
	sra.d	$a2, $a2, $s1
	add.d	$s4, $a2, $s4
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_100
# %bb.36:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$s4, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s3
	sra.d	$a1, $a0, $s1
	b	.LBB4_73
.LBB4_37:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	slli.d	$a0, $a0, 20
	srai.d	$a2, $a0, 32
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a7
	bltz	$s1, .LBB4_74
# %bb.38:                               # %.thread1264
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	sltui	$a3, $a6, 1
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a1, $a0, $s7
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a5
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	ld.d	$a4, $sp, 184
	masknez	$a0, $a0, $a3
	add.d	$a2, $s4, $a0
	ld.d	$a3, $sp, 192
	slli.d	$a0, $a4, 20
	srai.d	$a0, $a0, 32
	mul.d	$a4, $a0, $a7
	add.d	$a4, $a4, $s3
	sra.d	$a4, $a4, $s1
	add.d	$s8, $a4, $a1
	slli.d	$a3, $a3, 20
	srai.d	$a3, $a3, 32
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a4, $a3, $a7
	add.d	$a4, $a4, $s3
	sra.d	$a4, $a4, $s1
	add.d	$a4, $a4, $a2
	beqz	$a6, .LBB4_84
# %bb.39:                               # %.thread1080
                                        #   in Loop: Header=BB4_14 Depth=2
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a4, $a0, $a4
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a3, $a5
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$s8, $a0, $s8
	b	.LBB4_85
.LBB4_40:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	slli.d	$a0, $a0, 20
	srai.d	$a3, $a0, 32
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a0, $a3, $t3
	bltz	$s1, .LBB4_76
# %bb.41:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 184
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a1, $a0, $s7
	slli.d	$a0, $a2, 20
	srai.d	$a0, $a0, 32
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a0, $t1
	add.d	$a2, $a2, $s3
	sra.d	$a2, $a2, $s1
	add.d	$a2, $a2, $s4
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	beqz	$a4, .LBB4_88
# %bb.42:                               # %.thread1239
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $t0
	add.d	$a3, $a3, $s3
	sra.d	$a3, $a3, $s1
	add.d	$a2, $a3, $a2
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a7
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a1, $a0, $a1
	b	.LBB4_89
.LBB4_43:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$s1, .LBB4_78
# %bb.44:                               #   in Loop: Header=BB4_14 Depth=2
	add.d	$a1, $a1, $s3
	sra.d	$a1, $a1, $s1
	add.d	$s7, $a1, $s7
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_11
# %bb.45:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	b	.LBB4_97
.LBB4_46:                               #   in Loop: Header=BB4_14 Depth=2
	ld.bu	$a2, $a0, 1
	srli.d	$a1, $s0, 8
	xor	$a1, $a2, $a1
	andi	$a1, $a1, 255
	ori	$a3, $zero, 33
	bltu	$a3, $a1, .LBB4_129
# %bb.47:                               #   in Loop: Header=BB4_14 Depth=2
	add.d	$a2, $s0, $a2
	mul.d	$a2, $a2, $s5
	add.d	$s0, $a2, $s2
	addi.d	$fp, $a0, 2
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a1, $a0
	move	$s8, $a7
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	jr	$a1
.LBB4_48:                               #   in Loop: Header=BB4_14 Depth=2
	vld	$vr0, $sp, 176
	vld	$vr1, $sp, 192
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	vst	$vr0, $a0, 464
	vst	$vr1, $a0, 480
	b	.LBB4_26
.LBB4_49:                               #   in Loop: Header=BB4_14 Depth=2
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$s8, $s6, 8
	ori	$a1, $zero, 246
	bltu	$a1, $a3, .LBB4_54
# %bb.50:                               #   in Loop: Header=BB4_14 Depth=2
	slli.d	$a0, $a3, 12
	lu12i.w	$a1, -139
	b	.LBB4_56
.LBB4_51:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 176
	slli.d	$a0, $a0, 20
	srai.d	$a1, $a0, 32
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $t0
	bltz	$s1, .LBB4_80
# %bb.52:                               # %.thread1248
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	sltui	$a3, $a7, 1
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a2, $a0, $s4
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a6
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	ld.d	$a4, $sp, 184
	masknez	$a0, $a0, $a3
	add.d	$a1, $s7, $a0
	ld.d	$a5, $sp, 192
	slli.d	$a0, $a4, 20
	srai.d	$a0, $a0, 32
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a3, $a0, $t1
	add.d	$a3, $a3, $s3
	sra.d	$a3, $a3, $s1
	add.d	$a3, $a3, $a1
	slli.d	$a4, $a5, 20
	srai.d	$a4, $a4, 32
	mul.d	$a5, $a4, $t0
	add.d	$a5, $a5, $s3
	sra.d	$a5, $a5, $s1
	add.d	$s6, $a5, $a2
	beqz	$a7, .LBB4_93
# %bb.53:                               # %.thread1002
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$s6, $a0, $s6
	mul.d	$a0, $a4, $a6
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a3, $a0, $a3
	b	.LBB4_94
.LBB4_54:                               #   in Loop: Header=BB4_14 Depth=2
	ld.bu	$a4, $a0, 1
	srli.d	$a1, $s0, 8
	xor	$a1, $a4, $a1
	ext.w.b	$a1, $a1
	add.d	$a4, $s0, $a4
	mul.d	$a4, $a4, $s5
	add.d	$s0, $a4, $s2
	addi.d	$fp, $a0, 2
	ori	$a4, $zero, 250
	bltu	$a4, $a3, .LBB4_82
# %bb.55:                               #   in Loop: Header=BB4_14 Depth=2
	bstrins.d	$a1, $a2, 63, 8
	addi.d	$a0, $a1, 2047
	addi.d	$a0, $a0, 257
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 12
	lu12i.w	$a1, 108
.LBB4_56:                               # %.thread1096
                                        #   in Loop: Header=BB4_14 Depth=2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s8, 0
	b	.LBB4_14
.LBB4_57:                               # %.thread928
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a4, $sp, 184
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a3, $a3, $a5
	add.d	$s7, $a3, $a2
	slli.d	$a2, $a4, 20
	srai.d	$a2, $a2, 32
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a3, $a2, $a3
	sll.d	$a4, $a3, $a5
	add.d	$s4, $a4, $a0
	move	$s8, $a7
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	beqz	$a4, .LBB4_14
# %bb.58:                               # %.thread930
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a3
	add.d	$s4, $a1, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	sll.d	$a0, $a0, $a3
.LBB4_59:                               # %.thread1096
                                        #   in Loop: Header=BB4_14 Depth=2
	add.d	$s7, $a0, $s7
	move	$s8, $a7
	b	.LBB4_14
.LBB4_60:                               # %.thread933
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 184
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a4
	add.d	$s7, $a1, $s7
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	beqz	$a3, .LBB4_96
# %bb.61:                               # %.thread935
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a2, $a0
	sll.d	$a0, $a0, $a4
	add.d	$s4, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	sll.d	$a0, $a0, $a4
.LBB4_62:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	b	.LBB4_12
.LBB4_63:                               # %.thread774
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a2
	add.d	$s4, $a1, $s4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_100
# %bb.64:                               # %.thread776
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $a2
.LBB4_65:                               #   in Loop: Header=BB4_14 Depth=2
	add.d	$s7, $a0, $s7
	b	.LBB4_100
.LBB4_66:                               # %.thread
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a2
	add.d	$s4, $a1, $s4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_11
# %bb.67:                               # %.thread765
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $a2
.LBB4_68:                               #   in Loop: Header=BB4_14 Depth=2
	add.d	$s7, $a0, $s7
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_12
.LBB4_69:                               # %.thread771
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a2
	add.d	$s7, $a1, $s7
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_100
# %bb.70:                               # %.thread773
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $a2
	b	.LBB4_99
.LBB4_71:                               # %.thread767
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 184
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a4
	add.d	$s7, $a1, $s7
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	beqz	$a3, .LBB4_98
# %bb.72:                               # %.thread769
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a2, $a0
	sll.d	$a0, $a0, $a4
	add.d	$s4, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	sll.d	$a1, $a0, $a4
.LBB4_73:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s7, $a1, $s7
	b	.LBB4_101
.LBB4_74:                               # %.thread1018
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_102
# %bb.75:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a5
	ld.d	$a2, $sp, 184
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $t0
	add.d	$s4, $a1, $s4
	ld.d	$a1, $sp, 192
	slli.d	$a2, $a2, 20
	srai.d	$a2, $a2, 32
	mul.d	$a3, $a2, $a7
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a4, $a1, $a6
	mul.d	$a2, $a2, $a5
	add.d	$a2, $a4, $a2
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	add.d	$a3, $a3, $a1
	b	.LBB4_103
.LBB4_76:                               # %.thread778
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 184
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a5, $a1, $t2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_106
# %bb.77:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a2, $a3, $a6
	add.d	$a5, $a5, $a2
	ld.d	$a2, $sp, 192
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a7
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 200
	slli.d	$a2, $a2, 20
	srai.d	$a2, $a2, 32
	mul.d	$a3, $a2, $t3
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a4, $a1, $t2
	mul.d	$a2, $a2, $a6
	add.d	$a6, $a4, $a2
	mul.d	$a1, $a1, $a7
	add.d	$a7, $a3, $a1
	b	.LBB4_107
.LBB4_78:                               # %.thread937
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a2
	add.d	$s7, $a1, $s7
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_11
# %bb.79:                               # %.thread939
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $a2
	b	.LBB4_97
.LBB4_80:                               # %.thread940
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_111
# %bb.81:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a5
	ld.d	$a2, $sp, 184
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $t1
	add.d	$s7, $a1, $s7
	ld.d	$a1, $sp, 192
	slli.d	$a2, $a2, 20
	srai.d	$a2, $a2, 32
	mul.d	$a3, $a2, $a7
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a4, $a1, $t0
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a6
	add.d	$a4, $a4, $a2
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a3, $a1
	b	.LBB4_112
.LBB4_82:                               #   in Loop: Header=BB4_14 Depth=2
	ori	$a4, $zero, 255
	bne	$a3, $a4, .LBB4_117
# %bb.83:                               #   in Loop: Header=BB4_14 Depth=2
	ld.bu	$a2, $a0, 2
	srli.d	$a3, $s0, 8
	xor	$a3, $a2, $a3
	add.d	$a2, $s0, $a2
	ld.bu	$a4, $a0, 3
	mul.d	$a2, $a2, $s5
	add.d	$a2, $a2, $s2
	srli.d	$a5, $a2, 8
	xor	$a5, $a4, $a5
	add.d	$a2, $a2, $a4
	ld.bu	$a4, $a0, 4
	mul.d	$a2, $a2, $s5
	add.d	$a2, $a2, $s2
	bstrpick.d	$a6, $a2, 15, 8
	xor	$a6, $a6, $a4
	add.d	$a2, $a2, $a4
	mul.d	$a2, $a2, $s5
	add.d	$s0, $a2, $s2
	addi.d	$fp, $a0, 5
	slli.d	$a0, $a6, 12
	bstrins.d	$a0, $a1, 43, 36
	bstrins.d	$a0, $a3, 35, 28
	bstrins.d	$a0, $a5, 27, 20
	st.d	$a0, $s8, 0
	bgez	$a1, .LBB4_14
	b	.LBB4_143
.LBB4_84:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
.LBB4_85:                               # %.thread1058
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	mul.d	$a3, $a0, $a7
	add.d	$a3, $a3, $s3
	sra.d	$a3, $a3, $s1
	add.d	$s6, $a3, $a4
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	beqz	$a3, .LBB4_87
# %bb.86:                               #   in Loop: Header=BB4_14 Depth=2
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a0, $a0, $s8
	move	$a3, $s8
	move	$s8, $a0
	b	.LBB4_116
.LBB4_87:                               #   in Loop: Header=BB4_14 Depth=2
	move	$a3, $s8
	b	.LBB4_116
.LBB4_88:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
.LBB4_89:                               # %.thread1228
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 192
	ld.d	$a4, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	mul.d	$a3, $a0, $t3
	add.d	$a3, $a3, $s3
	sra.d	$a3, $a3, $s1
	add.d	$a3, $a3, $a1
	slli.d	$a4, $a4, 20
	srai.d	$a5, $a4, 32
	mul.d	$a4, $a5, $t1
	add.d	$a4, $a4, $s3
	sra.d	$a4, $a4, $s1
	add.d	$a4, $a4, $a2
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	beqz	$a6, .LBB4_91
# %bb.90:                               # %.thread863
                                        #   in Loop: Header=BB4_14 Depth=2
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a4, $a0, $a4
	mul.d	$a0, $a5, $a7
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a3, $a0, $a3
.LBB4_91:                               # %.thread836
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 208
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	mul.d	$a5, $a0, $t3
	ld.d	$a6, $sp, 216
	add.d	$a5, $a5, $s3
	sra.d	$a5, $a5, $s1
	add.d	$s8, $a5, $a3
	slli.d	$a5, $a6, 20
	srai.d	$a5, $a5, 32
	mul.d	$a6, $a5, $t1
	add.d	$a6, $a6, $s3
	sra.d	$a6, $a6, $s1
	add.d	$s6, $a6, $a4
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	beqz	$a6, .LBB4_116
# %bb.92:                               #   in Loop: Header=BB4_14 Depth=2
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$s6, $a0, $s6
	mul.d	$a0, $a5, $a7
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	b	.LBB4_109
.LBB4_93:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
.LBB4_94:                               # %.thread980
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	mul.d	$a4, $a0, $t1
	add.d	$a4, $a4, $s3
	sra.d	$a4, $a4, $s1
	add.d	$s8, $a4, $a3
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	beqz	$a4, .LBB4_115
# %bb.95:                               #   in Loop: Header=BB4_14 Depth=2
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	add.d	$a0, $a0, $s6
	move	$a4, $s6
	move	$s6, $a0
	b	.LBB4_116
.LBB4_96:                               #   in Loop: Header=BB4_14 Depth=2
	sll.d	$a0, $a2, $a4
.LBB4_97:                               #   in Loop: Header=BB4_14 Depth=2
	add.d	$s4, $a0, $s4
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_12
.LBB4_98:                               #   in Loop: Header=BB4_14 Depth=2
	sll.d	$a0, $a2, $a4
.LBB4_99:                               #   in Loop: Header=BB4_14 Depth=2
	add.d	$s4, $a0, $s4
.LBB4_100:                              #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
.LBB4_101:                              #   in Loop: Header=BB4_14 Depth=2
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	b	.LBB4_13
.LBB4_102:                              # %.thread1026.thread
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a3, $a1, $a7
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	mul.d	$a2, $a1, $a6
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
.LBB4_103:                              # %.thread1071
                                        #   in Loop: Header=BB4_14 Depth=2
	sll.d	$a1, $a0, $t0
	add.d	$a1, $a1, $s7
	add.d	$a0, $a0, $a3
	sll.d	$a0, $a0, $t0
	ld.d	$a3, $sp, 200
	add.d	$s8, $a0, $s7
	sll.d	$a0, $a2, $t0
	add.d	$a4, $a0, $s4
	slli.d	$a0, $a3, 20
	srai.d	$a0, $a0, 32
	mul.d	$a3, $a0, $a6
	add.d	$a2, $a2, $a3
	sll.d	$a2, $a2, $t0
	add.d	$s6, $a2, $s4
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_105
# %bb.104:                              #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	sll.d	$a0, $a0, $t0
	add.d	$a0, $a0, $s8
	move	$a3, $s8
	move	$s8, $a0
	move	$a2, $s4
	b	.LBB4_116
.LBB4_105:                              #   in Loop: Header=BB4_14 Depth=2
	move	$a2, $s4
	move	$a3, $s8
	b	.LBB4_116
.LBB4_106:                              # %.thread790.thread
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 192
	ld.d	$a2, $sp, 200
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a7, $a1, $t3
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	mul.d	$a6, $a1, $t2
.LBB4_107:                              # %.thread852
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$t4, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a1, $a5, $t4
	add.d	$a2, $a1, $s4
	sll.d	$a1, $a0, $t4
	add.d	$a1, $a1, $s7
	add.d	$a3, $a0, $a7
	sll.d	$a3, $a3, $t4
	add.d	$a3, $a3, $s7
	ld.d	$t0, $sp, 208
	add.d	$a4, $a5, $a6
	sll.d	$a4, $a4, $t4
	add.d	$a4, $a4, $s4
	slli.d	$t0, $t0, 20
	srai.d	$t0, $t0, 32
	mul.d	$t1, $t0, $t3
	add.d	$a7, $a7, $t1
	ld.d	$t1, $sp, 216
	add.d	$a0, $a0, $a7
	sll.d	$a0, $a0, $t4
	add.d	$s8, $a0, $s7
	slli.d	$a0, $t1, 20
	srai.d	$a0, $a0, 32
	mul.d	$a7, $a0, $t2
	add.d	$a6, $a6, $a7
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	beqz	$a7, .LBB4_110
# %bb.108:                              #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a7, $t0, $a7
	add.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	sll.d	$a5, $a5, $t4
	add.d	$s6, $a5, $s4
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a5
	sll.d	$a0, $a0, $t4
.LBB4_109:                              #   in Loop: Header=BB4_14 Depth=2
	add.d	$s8, $a0, $s8
	b	.LBB4_116
.LBB4_110:                              #   in Loop: Header=BB4_14 Depth=2
	add.d	$a0, $a5, $a6
	sll.d	$a0, $a0, $t4
	add.d	$s6, $a0, $s4
	b	.LBB4_116
.LBB4_111:                              # %.thread948.thread
                                        #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a1, $a1, $a7
	slli.d	$a2, $a2, 20
	srai.d	$a2, $a2, 32
	mul.d	$a4, $a2, $t0
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
.LBB4_112:                              # %.thread993
                                        #   in Loop: Header=BB4_14 Depth=2
	sll.d	$a2, $a0, $t1
	add.d	$a2, $a2, $s4
	sll.d	$a3, $a1, $t1
	add.d	$a3, $a3, $s7
	ld.d	$a5, $sp, 200
	add.d	$a0, $a0, $a4
	sll.d	$a0, $a0, $t1
	add.d	$s6, $a0, $s4
	slli.d	$a0, $a5, 20
	srai.d	$a0, $a0, 32
	mul.d	$a4, $a0, $a7
	add.d	$a1, $a1, $a4
	sll.d	$a1, $a1, $t1
	add.d	$s8, $a1, $s7
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_114
# %bb.113:                              #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $t1
	add.d	$a0, $a0, $s6
	move	$a4, $s6
	move	$s6, $a0
	move	$a1, $s7
	b	.LBB4_116
.LBB4_114:                              #   in Loop: Header=BB4_14 Depth=2
	move	$a1, $s7
.LBB4_115:                              #   in Loop: Header=BB4_14 Depth=2
	move	$a4, $s6
.LBB4_116:                              #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s6
	pcaddu18i	$ra, %call36(gx_path_add_curve)
	jirl	$ra, $ra, 0
	move	$s7, $s8
	move	$s4, $s6
	b	.LBB4_13
.LBB4_117:                              #   in Loop: Header=BB4_14 Depth=2
	bstrins.d	$a1, $a2, 63, 8
	addi.d	$a0, $a1, 1280
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 12
	lu12i.w	$a1, -108
	sub.d	$a0, $a1, $a0
	st.d	$a0, $s8, 0
	b	.LBB4_14
.LBB4_118:                              #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $s6, -8
	addi.d	$s8, $s6, -8
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $s6, 0
	ffint.s.l	$fa0, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI4_1)
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa0, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.l.s	$fa0, $fa0
	fst.d	$fa0, $s6, -8
	b	.LBB4_14
.LBB4_119:                              #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $s6, -16
	ld.d	$a1, $s6, -8
	bge	$a1, $a0, .LBB4_121
# %bb.120:                              #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s6, -24
	add.d	$a0, $a1, $a0
	st.d	$a0, $s6, -24
.LBB4_121:                              #   in Loop: Header=BB4_14 Depth=2
	addi.d	$s8, $s6, -24
	b	.LBB4_14
.LBB4_122:                              #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 8
	addi.d	$s8, $s6, 8
	move	$a1, $s8
	jirl	$ra, $a2, 0
	addi.d	$a7, $sp, 168
	bgez	$a0, .LBB4_14
	b	.LBB4_128
.LBB4_123:                              #   in Loop: Header=BB4_6 Depth=1
	ld.d	$a1, $s6, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 12
	addi.w	$a1, $a1, 0
	addi.d	$a2, $sp, 160
	jirl	$ra, $a3, 0
	bltz	$a0, .LBB4_128
# %bb.124:                              #   in Loop: Header=BB4_6 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.h	$s0, $a1, 8
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$fp, $sp, 160
	ld.w	$a3, $a0, 24
	addi.d	$s8, $s6, -8
	addi.d	$a1, $a1, 16
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a7, $sp, 168
	ori	$a4, $zero, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bgtz	$a3, .LBB4_8
	b	.LBB4_7
.LBB4_125:                              #   in Loop: Header=BB4_6 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -16
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ori	$a4, $zero, 1
	b	.LBB4_6
.LBB4_126:
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 496
	bltz	$a0, .LBB4_130
# %bb.127:
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $s0, 496
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	vld	$vr0, $a1, 120
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	vst	$vr0, $a1, 120
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
.LBB4_128:                              # %.loopexit
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
.LBB4_129:                              # %.loopexit
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.LBB4_130:
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 120
	ld.d	$a2, $fp, 128
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 24
	beqz	$a0, .LBB4_133
# %bb.131:
	ld.d	$a1, $s0, 480
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	ld.d	$a0, $s0, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $s0, 488
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	pcaddu18i	$ra, %call36(gs_setcharwidth)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_128
# %bb.132:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gx_path_merge)
	jirl	$ra, $ra, 0
	b	.LBB4_128
.LBB4_133:
	addi.d	$a1, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_pathbbox)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	bgez	$s4, .LBB4_135
# %bb.134:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 160
.LBB4_135:
	ld.w	$a0, $s0, 28
	beqz	$a0, .LBB4_144
# %bb.136:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_currentlinewidth)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	vld	$vr1, $sp, 160
	vldi	$vr2, -1168
	fsel	$fa0, $fa0, $fa2, $fcc0
	vreplvei.w	$vr0, $vr0, 0
	vfsub.s	$vr4, $vr1, $vr0
	vfadd.s	$vr0, $vr1, $vr0
	vreplvei.w	$vr2, $vr4, 0
	vreplvei.w	$vr3, $vr4, 1
	vshuf4i.d	$vr4, $vr0, 12
	vst	$vr4, $sp, 160
	vreplvei.w	$vr4, $vr0, 2
	vreplvei.w	$vr5, $vr0, 3
	b	.LBB4_145
.LBB4_137:
	ld.w	$a0, $sp, 200
	ld.d	$a1, $sp, 176
	ld.d	$a2, $sp, 184
	bstrpick.d	$a0, $a0, 19, 12
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a3, 496
	sub.d	$a0, $a2, $a1
	slli.d	$a0, $a0, 20
	srai.d	$a2, $a0, 32
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	bltz	$s1, .LBB4_148
# %bb.138:
	ld.d	$a1, $sp, 192
	add.d	$a0, $a0, $s3
	sra.d	$a0, $a0, $s1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	slli.d	$a1, $a1, 20
	srai.d	$a3, $a1, 32
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a1, $a3, $a1
	add.d	$a1, $a1, $s3
	sra.d	$a1, $a1, $s1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	beqz	$a6, .LBB4_153
# %bb.139:
	mul.d	$a2, $a2, $a5
	add.d	$a2, $a2, $s3
	sra.d	$a2, $a2, $s1
	add.d	$a1, $a1, $a2
	mul.d	$a2, $a3, $a4
	add.d	$a2, $a2, $s3
	sra.d	$a2, $a2, $s1
	b	.LBB4_150
.LBB4_140:
	ld.d	$s1, $s6, 0
	addi.d	$a0, $sp, 176
	sub.d	$a1, $s6, $a0
	srli.d	$a0, $a1, 3
	addi.w	$a2, $a0, 0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	st.d	$fp, $a4, 0
	st.h	$s0, $a4, 8
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a3, 272
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a4, $a0
	srli.d	$a0, $a0, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $a3, 456
	st.w	$zero, $a3, 460
	beqz	$a2, .LBB4_142
# %bb.141:
	addi.d	$a0, $a3, 80
	slli.d	$a1, $a1, 29
	srai.d	$a2, $a1, 29
	bstrins.d	$a2, $zero, 2, 0
	addi.d	$a1, $sp, 176
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_142:
	srli.d	$a0, $s1, 11
	addi.w	$a1, $zero, -2
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 2
	b	.LBB4_128
.LBB4_143:
	addi.d	$a0, $zero, -15
	b	.LBB4_128
.LBB4_144:                              # %._crit_edge
	fld.s	$fa2, $sp, 160
	fld.s	$fa3, $sp, 164
	fld.s	$fa4, $sp, 168
	fld.s	$fa5, $sp, 172
.LBB4_145:
	ld.d	$a1, $s0, 480
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	ld.d	$a0, $s0, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $s0, 488
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa6, $a1
	ffint.d.l	$fa6, $fa6
	fmul.d	$fa1, $fa6, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa3, $fa3
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	pcaddu18i	$ra, %call36(gs_setcachedevice)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_128
# %bb.146:
	ld.d	$a1, $fp, 120
	ld.d	$a2, $fp, 128
	ld.d	$a0, $fp, 256
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(gx_path_translate)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 28
	beqz	$a0, .LBB4_151
# %bb.147:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_stroke)
	jirl	$ra, $ra, 0
	b	.LBB4_128
.LBB4_148:                              # %.thread923
	ld.d	$a1, $sp, 192
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a0, $a0, $a7
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	slli.d	$a1, $a1, 20
	srai.d	$a3, $a1, 32
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a1, $a3, $a1
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	beqz	$a6, .LBB4_152
# %bb.149:                              # %.thread925
	mul.d	$a2, $a2, $a5
	add.d	$a1, $a1, $a2
	sll.d	$a1, $a1, $a7
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	mul.d	$a2, $a3, $a4
	sll.d	$a2, $a2, $a7
.LBB4_150:
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	b	.LBB4_154
.LBB4_151:
	ori	$a1, $zero, 819
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_fill_trim)
	jirl	$ra, $ra, 0
	b	.LBB4_128
.LBB4_152:
	sll.d	$a1, $a1, $a7
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
.LBB4_153:
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB4_154:
	ld.w	$a2, $sp, 208
	st.d	$a0, $a3, 120
	st.d	$a1, $a3, 128
	srli.d	$a0, $a2, 12
	ori	$a1, $zero, 1
	bstrins.d	$a1, $a0, 8, 1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	b	.LBB4_129
.Lfunc_end4:
	.size	gs_type1_interpret, .Lfunc_end4-gs_type1_interpret
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_16-.LJTI4_0
	.word	.LBB4_34-.LJTI4_0
	.word	.LBB4_30-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_40-.LJTI4_0
	.word	.LBB4_33-.LJTI4_0
	.word	.LBB4_123-.LJTI4_0
	.word	.LBB4_125-.LJTI4_0
	.word	.LBB4_46-.LJTI4_0
	.word	.LBB4_25-.LJTI4_0
	.word	.LBB4_126-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_19-.LJTI4_0
	.word	.LBB4_43-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_129-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_37-.LJTI4_0
.LJTI4_1:
	.word	.LBB4_14-.LJTI4_1
	.word	.LBB4_14-.LJTI4_1
	.word	.LBB4_14-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_137-.LJTI4_1
	.word	.LBB4_48-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_118-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_119-.LJTI4_1
	.word	.LBB4_140-.LJTI4_1
	.word	.LBB4_122-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_129-.LJTI4_1
	.word	.LBB4_27-.LJTI4_1
                                        # -- End function
	.text
	.globl	gs_type1_pop                    # -- Begin function gs_type1_pop
	.p2align	5
	.type	gs_type1_pop,@function
gs_type1_pop:                           # @gs_type1_pop
# %bb.0:
	ld.w	$a2, $a0, 272
	addi.w	$a2, $a2, -1
	alsl.d	$a3, $a2, $a0, 3
	ld.d	$a3, $a3, 80
	st.w	$a2, $a0, 272
	st.d	$a3, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	gs_type1_pop, .Lfunc_end5-gs_type1_pop
                                        # -- End function
	.type	gs_type1_state_sizeof,@object   # @gs_type1_state_sizeof
	.data
	.globl	gs_type1_state_sizeof
	.p2align	2, 0x0
gs_type1_state_sizeof:
	.word	504                             # 0x1f8
	.size	gs_type1_state_sizeof, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
