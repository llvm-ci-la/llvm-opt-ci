	.file	"neural.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	4294967292                      # 0xfffffffc
	.word	4294967290                      # 0xfffffffa
.LCPI0_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.text.unlikely.,"ax",@progbits
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 208                  # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s4, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bne	$fp, $a0, .LBB0_116
# %bb.1:
	ld.d	$a0, $s0, 8
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_117
# %bb.2:
	move	$s5, $a0
	addi.d	$a0, $sp, 108
	ori	$a1, $zero, 99
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 108
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(NNWIDTH)
	st.w	$a0, $fp, %pc_lo12(NNWIDTH)
	addi.d	$a0, $sp, 108
	ori	$a1, $zero, 99
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 108
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(NNHEIGHT)
	st.w	$a0, $s0, %pc_lo12(NNHEIGHT)
	addi.d	$a0, $sp, 108
	ori	$a1, $zero, 99
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 108
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(NNWIDTH)
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a2, $s0, %pc_lo12(NNHEIGHT)
	pcalau12i	$s0, %pc_hi20(NUMPATS)
	st.w	$a0, $s0, %pc_lo12(NUMPATS)
	mul.d	$a0, $a2, $a1
	pcalau12i	$a3, %pc_hi20(NNTOT)
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.w	$a0, $a3, %pc_lo12(NNTOT)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s6, $s0, %pc_lo12(NUMPATS)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(vnames)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $a0, %pc_lo12(vnames)
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(stored)
	st.d	$a0, $s3, %pc_lo12(stored)
	beqz	$s1, .LBB0_114
# %bb.3:
	beqz	$a0, .LBB0_114
# %bb.4:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(NNTOT)
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s7, %pc_hi20(Tmatrix)
	st.d	$a0, $s7, %pc_lo12(Tmatrix)
	beqz	$a0, .LBB0_114
# %bb.5:                                # %.preheader63
	slli.d	$s1, $s0, 2
	blez	$s0, .LBB0_9
# %bb.6:                                # %.lr.ph
	move	$s2, $a0
	.p2align	4, , 16
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB0_114
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB0_7
.LBB0_9:                                # %._crit_edge
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	slli.d	$s4, $s6, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$s8, %pc_hi20(vectors)
	st.d	$a0, $s8, %pc_lo12(vectors)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(newvectors)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s3, $a0, %pc_lo12(newvectors)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(generators)
	st.d	$s4, $a0, %pc_lo12(generators)
	beqz	$s2, .LBB0_113
# %bb.10:                               # %._crit_edge
	beqz	$s3, .LBB0_113
# %bb.11:                               # %._crit_edge
	beqz	$s4, .LBB0_113
# %bb.12:                               # %.preheader
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	blez	$s6, .LBB0_18
# %bb.13:                               # %.lr.ph67
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	beqz	$s6, .LBB0_113
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	beqz	$s5, .LBB0_113
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	beqz	$a0, .LBB0_113
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB0_14
.LBB0_18:                               # %._crit_edge68
	ld.w	$a0, $fp, %pc_lo12(NNWIDTH)
	addi.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_113
# %bb.19:                               # %.preheader.i
	move	$s1, $a0
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	blez	$a0, .LBB0_28
# %bb.20:                               # %.lr.ph30.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$s0, $a0, %pc_lo12(.L.str.18)
	move	$s2, $zero
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %._crit_edge28.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB0_28
.LBB0_22:                               # %.lr.ph30.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_27 Depth 3
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s1, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(vnames)
	stx.b	$a0, $a1, $s2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NNHEIGHT)
	blez	$a0, .LBB0_21
# %bb.23:                               # %.lr.ph27.i.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	slli.d	$s5, $s2, 3
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_25 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NNHEIGHT)
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB0_21
.LBB0_25:                               # %.lr.ph27.i
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(NNWIDTH)
	blez	$a0, .LBB0_24
# %bb.26:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_25 Depth=2
	ld.d	$a0, $s8, %pc_lo12(vectors)
	ldx.d	$a1, $a0, $s5
	move	$a0, $zero
	alsl.d	$a1, $s3, $a1, 2
	.p2align	4, , 16
.LBB0_27:                               #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a2, $s1, $a0
	addi.d	$a2, $a2, -88
	sltu	$a2, $zero, $a2
	sub.d	$a2, $zero, $a2
	ori	$a2, $a2, 1
	st.w	$a2, $a1, 0
	ld.w	$a2, $fp, %pc_lo12(NNWIDTH)
	addi.d	$a0, $a0, 1
	addi.w	$s3, $s3, 1
	addi.d	$a1, $a1, 4
	blt	$a0, $a2, .LBB0_27
	b	.LBB0_24
.LBB0_28:                               # %readvector.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	blez	$a0, .LBB0_58
# %bb.29:                               # %.lr.ph39.i
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a1, %pc_lo12(NNTOT)
	blez	$a2, .LBB0_49
# %bb.30:                               # %.lr.ph39.split.us.preheader.i
	move	$t1, $zero
	move	$a1, $zero
	ld.d	$a3, $s8, %pc_lo12(vectors)
	bstrpick.d	$a4, $a2, 31, 0
	bstrpick.d	$a5, $a4, 30, 3
	slli.d	$a5, $a5, 3
	ori	$a6, $zero, 1
	ori	$a7, $zero, 8
	vrepli.b	$vr0, 0
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_31:                               # %.loopexit.us.i
                                        #   in Loop: Header=BB0_32 Depth=1
	addi.d	$a6, $a6, 1
	move	$t1, $t0
	beq	$t0, $a0, .LBB0_56
.LBB0_32:                               # %.lr.ph39.split.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	addi.d	$t0, $t1, 1
	bgeu	$t0, $a0, .LBB0_31
# %bb.33:                               # %.lr.ph.us.i
                                        #   in Loop: Header=BB0_32 Depth=1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a3, $t1
	addi.d	$t2, $t1, 16
	move	$t3, $a6
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %hamming.exit25.us.us.i
                                        #   in Loop: Header=BB0_35 Depth=2
	addi.w	$t4, $t5, 0
	sltui	$t4, $t4, 2
	add.d	$a1, $a1, $t4
	addi.w	$t4, $t6, 0
	sltui	$t4, $t4, 2
	addi.d	$t3, $t3, 1
	add.d	$a1, $a1, $t4
	beq	$t3, $a0, .LBB0_31
.LBB0_35:                               # %.lr.ph.preheader.i.us.us.i
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a3, $t4
	bgeu	$a2, $a7, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	move	$t8, $zero
	move	$t5, $zero
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_37:                               # %vector.body126.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	addi.d	$t5, $t4, 16
	move	$t6, $t2
	move	$t7, $a5
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_38:                               # %vector.body126
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $t6, -16
	vld	$vr4, $t6, 0
	vld	$vr5, $t5, -16
	vld	$vr6, $t5, 0
	vseq.w	$vr3, $vr3, $vr5
	vseq.w	$vr4, $vr4, $vr6
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	vadd.w	$vr2, $vr2, $vr4
	vaddi.wu	$vr2, $vr2, 1
	addi.d	$t7, $t7, -8
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB0_38
# %bb.39:                               # %middle.block135
                                        #   in Loop: Header=BB0_35 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$t5, $vr1, 0
	move	$t8, $a5
	beq	$a5, $a4, .LBB0_42
.LBB0_40:                               # %.lr.ph.i.us.us.i.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$t6, $a4, $t8
	alsl.d	$t7, $t8, $t4, 2
	alsl.d	$t8, $t8, $t1, 2
	.p2align	4, , 16
.LBB0_41:                               # %.lr.ph.i.us.us.i
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$fp, $t8, 0
	ld.w	$s0, $t7, 0
	xor	$fp, $fp, $s0
	sltu	$fp, $zero, $fp
	add.d	$t5, $t5, $fp
	addi.d	$t6, $t6, -1
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 4
	bnez	$t6, .LBB0_41
.LBB0_42:                               # %.lr.ph.i18.us.us.i.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	bgeu	$a2, $a7, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_35 Depth=2
	move	$t8, $zero
	move	$t6, $zero
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_44:                               # %vector.body108.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	addi.d	$t6, $t4, 16
	move	$t7, $t2
	move	$t8, $a5
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_45:                               # %vector.body108
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $t6, -16
	vld	$vr4, $t6, 0
	vld	$vr5, $t7, -16
	vld	$vr6, $t7, 0
	vneg.w	$vr3, $vr3
	vneg.w	$vr4, $vr4
	vseq.w	$vr3, $vr5, $vr3
	vseq.w	$vr4, $vr6, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	vadd.w	$vr2, $vr2, $vr4
	vaddi.wu	$vr2, $vr2, 1
	addi.d	$t8, $t8, -8
	addi.d	$t6, $t6, 32
	addi.d	$t7, $t7, 32
	bnez	$t8, .LBB0_45
# %bb.46:                               # %middle.block116
                                        #   in Loop: Header=BB0_35 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$t6, $vr1, 0
	move	$t8, $a5
	beq	$a5, $a4, .LBB0_34
.LBB0_47:                               # %.lr.ph.i18.us.us.i.preheader186
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$t7, $a4, $t8
	alsl.d	$t4, $t8, $t4, 2
	alsl.d	$t8, $t8, $t1, 2
	.p2align	4, , 16
.LBB0_48:                               # %.lr.ph.i18.us.us.i
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$fp, $t4, 0
	ld.w	$s0, $t8, 0
	sub.w	$fp, $zero, $fp
	xor	$fp, $s0, $fp
	sltu	$fp, $zero, $fp
	add.d	$t6, $t6, $fp
	addi.d	$t7, $t7, -1
	addi.d	$t4, $t4, 4
	addi.d	$t8, $t8, 4
	bnez	$t7, .LBB0_48
	b	.LBB0_34
.LBB0_49:                               # %.lr.ph39.split.preheader.i
	ori	$a1, $zero, 8
	slli.d	$a4, $a0, 1
	bgeu	$a0, $a1, .LBB0_51
# %bb.50:
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $a4
	b	.LBB0_54
.LBB0_51:                               # %vector.ph
	bstrpick.d	$a1, $a0, 30, 3
	slli.w	$a2, $a1, 3
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_0)
	andi	$a3, $a4, 14
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr2, $a4
	vadd.w	$vr1, $vr2, $vr1
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_1)
	vrepli.b	$vr2, 0
	vrepli.w	$vr4, -2
	vrepli.w	$vr5, -10
	vrepli.w	$vr6, -16
	move	$a1, $a2
	vori.b	$vr7, $vr2, 0
	.p2align	4, , 16
.LBB0_52:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr8, $vr1, $vr4
	vadd.w	$vr9, $vr1, $vr5
	vaddi.wu	$vr10, $vr3, 1
	vaddi.wu	$vr11, $vr3, 5
	vslt.w	$vr10, $vr10, $vr0
	vslt.w	$vr11, $vr11, $vr0
	vand.v	$vr8, $vr10, $vr8
	vand.v	$vr9, $vr11, $vr9
	vadd.w	$vr2, $vr8, $vr2
	vadd.w	$vr7, $vr9, $vr7
	vadd.w	$vr1, $vr1, $vr6
	addi.w	$a1, $a1, -8
	vaddi.wu	$vr3, $vr3, 8
	bnez	$a1, .LBB0_52
# %bb.53:                               # %middle.block
	vadd.w	$vr0, $vr7, $vr2
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a0, $a2, .LBB0_56
.LBB0_54:                               # %.lr.ph39.split.i.preheader
	addi.d	$a3, $a3, -2
	.p2align	4, , 16
.LBB0_55:                               # %.lr.ph39.split.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a2, 1
	slt	$a4, $a2, $a0
	maskeqz	$a4, $a3, $a4
	add.d	$a1, $a4, $a1
	addi.d	$a3, $a3, -2
	bne	$a0, $a2, .LBB0_55
.LBB0_56:                               # %._crit_edge.i39
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB0_58
# %bb.57:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_58:                               # %checkham.exit
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(NNTOT)
	blez	$s0, .LBB0_69
# %bb.59:                               # %.preheader31.lr.ph.i
	ld.d	$s1, $s7, %pc_lo12(Tmatrix)
	slli.d	$fp, $s0, 2
	move	$s2, $s0
	.p2align	4, , 16
.LBB0_60:                               # %.preheader31.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB0_60
# %bb.61:                               # %.preheader29.us.i.preheader
	move	$a0, $zero
	ori	$a1, $zero, 10
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               # %._crit_edge36.split.us.us.i
                                        #   in Loop: Header=BB0_63 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB0_69
.LBB0_63:                               # %.preheader29.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_67 Depth 3
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB0_65
	.p2align	4, , 16
.LBB0_64:                               # %._crit_edge.us37.us.i
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	beq	$a3, $s0, .LBB0_62
.LBB0_65:                               # %.preheader.us.us.i
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_67 Depth 3
	ld.d	$a5, $s8, %pc_lo12(vectors)
	ld.d	$a6, $s7, %pc_lo12(Tmatrix)
	move	$a4, $zero
	alsl.d	$a5, $a0, $a5, 3
	alsl.d	$a6, $a3, $a6, 3
	slli.d	$a7, $a3, 2
	b	.LBB0_67
	.p2align	4, , 16
.LBB0_66:                               #   in Loop: Header=BB0_67 Depth=3
	ld.d	$t0, $a6, 0
	stx.w	$zero, $t0, $a7
	addi.d	$a4, $a4, 4
	beq	$fp, $a4, .LBB0_64
.LBB0_67:                               #   Parent Loop BB0_63 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a2, $a4, .LBB0_66
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=3
	ld.d	$t0, $a5, 0
	ldx.w	$t1, $t0, $a7
	ld.d	$t2, $a6, 0
	ldx.w	$t0, $t0, $a4
	fldx.s	$fa0, $t2, $a4
	mul.d	$t0, $t0, $t1
	movgr2fr.w	$fa1, $t0
	ffint.s.w	$fa1, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $t2, $a4
	addi.d	$a4, $a4, 4
	bne	$fp, $a4, .LBB0_67
	b	.LBB0_64
.LBB0_69:                               # %generateT.exit
	pcalau12i	$s0, %pc_hi20(nmode)
	ori	$a0, $zero, 1
	st.w	$a0, $s0, %pc_lo12(nmode)
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NNTOT)
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_113
# %bb.70:                               # %.preheader36.i
	move	$fp, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	blez	$a0, .LBB0_93
# %bb.71:                               # %.preheader36.split.i.preheader
	addi.d	$s1, $fp, 16
	ori	$s2, $zero, 2
	ori	$s3, $zero, 8
	movgr2fr.w	$fs0, $zero
	vrepli.b	$vr7, 0
	lu12i.w	$a1, 258048
	vreplgr2vr.w	$vr8, $a1
	vst	$vr7, $sp, 80                   # 16-byte Folded Spill
	vst	$vr8, $sp, 48                   # 16-byte Folded Spill
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_72:                               # %._crit_edge.i47
                                        #   in Loop: Header=BB0_73 Depth=1
	bnez	$s4, .LBB0_93
.LBB0_73:                               # %.preheader36.split.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_89 Depth 3
                                        #         Child Loop BB0_91 Depth 4
	blez	$a0, .LBB0_93
# %bb.74:                               # %.lr.ph46.i.preheader
                                        #   in Loop: Header=BB0_73 Depth=1
	move	$s5, $zero
	ori	$s4, $zero, 1
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_75:                               # %._crit_edge43.split.us.i
                                        #   in Loop: Header=BB0_76 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	addi.d	$s5, $s5, 1
	bge	$s5, $a0, .LBB0_72
.LBB0_76:                               # %.lr.ph46.i
                                        #   Parent Loop BB0_73 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_89 Depth 3
                                        #         Child Loop BB0_91 Depth 4
	ld.d	$a0, $s8, %pc_lo12(vectors)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(newvectors)
	ld.w	$a2, $s0, %pc_lo12(nmode)
	slli.d	$s6, $s5, 3
	ldx.d	$a0, $a0, $s6
	ldx.d	$a1, $a1, $s6
	bne	$a2, $s2, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_76 Depth=2
	pcaddu18i	$ra, %call36(run)
	jirl	$ra, $ra, 0
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=2
	pcaddu18i	$ra, %call36(runcont)
	jirl	$ra, $ra, 0
.LBB0_79:                               #   in Loop: Header=BB0_76 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NNTOT)
	vldi	$vr6, -1184
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	vld	$vr8, $sp, 48                   # 16-byte Folded Reload
	blez	$a0, .LBB0_75
# %bb.80:                               # %.lr.ph.i48
                                        #   in Loop: Header=BB0_76 Depth=2
	ld.d	$a1, $s8, %pc_lo12(vectors)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(newvectors)
	ldx.d	$a1, $a1, $s6
	ldx.d	$a2, $a2, $s6
	bgeu	$a0, $s3, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_76 Depth=2
	move	$a3, $zero
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_82:                               # %vector.ph142
                                        #   in Loop: Header=BB0_76 Depth=2
	bstrpick.d	$a3, $a0, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a2, 16
	addi.d	$a5, $a1, 16
	move	$a6, $s1
	move	$a7, $a3
	vori.b	$vr0, $vr7, 0
	vori.b	$vr1, $vr7, 0
	.p2align	4, , 16
.LBB0_83:                               # %vector.body145
                                        #   Parent Loop BB0_73 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vld	$vr4, $a4, -16
	vld	$vr5, $a4, 0
	vsub.w	$vr2, $vr2, $vr4
	vsub.w	$vr3, $vr3, $vr5
	vffint.s.w	$vr2, $vr2
	vffint.s.w	$vr3, $vr3
	vfmul.s	$vr2, $vr2, $vr8
	vfmul.s	$vr3, $vr3, $vr8
	vst	$vr2, $a6, -16
	vst	$vr3, $a6, 0
	vfcmp.cune.s	$vr2, $vr2, $vr7
	vfcmp.cune.s	$vr3, $vr3, $vr7
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB0_83
# %bb.84:                               # %middle.block154
                                        #   in Loop: Header=BB0_76 Depth=2
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a4, $vr0, 0
	sltui	$a4, $a4, 1
	maskeqz	$s4, $s4, $a4
	beq	$a3, $a0, .LBB0_87
.LBB0_85:                               # %scalar.ph140.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	sub.d	$a4, $a0, $a3
	alsl.d	$a5, $a3, $fp, 2
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a1, $a3, $a1, 2
	.p2align	4, , 16
.LBB0_86:                               # %scalar.ph140
                                        #   Parent Loop BB0_73 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a1, 0
	ld.w	$a6, $a2, 0
	sub.d	$a3, $a3, $a6
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa6
	fcmp.cune.s	$fcc0, $fa0, $fs0
	fst.s	$fa0, $a5, 0
	movcf2gr	$a3, $fcc0
	masknez	$s4, $s4, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB0_86
.LBB0_87:                               # %.preheader.us.i.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	move	$a1, $zero
	b	.LBB0_89
	.p2align	4, , 16
.LBB0_88:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB0_89 Depth=3
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB0_75
.LBB0_89:                               # %.preheader.us.i
                                        #   Parent Loop BB0_73 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_91 Depth 4
	ld.d	$a5, $s8, %pc_lo12(vectors)
	ld.d	$a6, $s7, %pc_lo12(Tmatrix)
	move	$a2, $zero
	move	$a3, $zero
	alsl.d	$a4, $a1, $fp, 2
	alsl.d	$a5, $s5, $a5, 3
	alsl.d	$a6, $a1, $a6, 3
	b	.LBB0_91
	.p2align	4, , 16
.LBB0_90:                               #   in Loop: Header=BB0_91 Depth=4
	ld.d	$a7, $a6, 0
	slli.d	$t0, $a1, 2
	stx.w	$zero, $a7, $t0
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	beq	$a0, $a3, .LBB0_88
.LBB0_91:                               #   Parent Loop BB0_73 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        #       Parent Loop BB0_89 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a1, $a3, .LBB0_90
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=4
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a6, 0
	ldx.w	$a7, $a7, $a2
	fld.s	$fa0, $a4, 0
	fldx.s	$fa1, $t0, $a2
	movgr2fr.w	$fa2, $a7
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	fstx.s	$fa0, $t0, $a2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	bne	$a0, $a3, .LBB0_91
	b	.LBB0_88
.LBB0_93:                               # %delta.exit
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	blez	$a0, .LBB0_112
# %bb.94:                               # %.lr.ph.i55.preheader
	move	$fp, $zero
	move	$s1, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	ori	$s2, $zero, 2
	b	.LBB0_97
	.p2align	4, , 16
.LBB0_95:                               #   in Loop: Header=BB0_97 Depth=1
	pcaddu18i	$ra, %call36(runcont)
	jirl	$ra, $ra, 0
.LBB0_96:                               #   in Loop: Header=BB0_97 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	addi.d	$s1, $s1, 1
	addi.d	$fp, $fp, 8
	bge	$s1, $a0, .LBB0_99
.LBB0_97:                               # %.lr.ph.i55
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, %pc_lo12(vectors)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(newvectors)
	ld.w	$a2, $s0, %pc_lo12(nmode)
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	bne	$a2, $s2, .LBB0_95
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	pcaddu18i	$ra, %call36(run)
	jirl	$ra, $ra, 0
	b	.LBB0_96
.LBB0_99:                               # %.preheader.i58
	blez	$a0, .LBB0_112
# %bb.100:                              # %.lr.ph24.i.preheader
	ori	$s1, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$fp, $a0, %pc_lo12(.L.str.21)
	move	$s0, $zero
	ori	$s2, $zero, 1
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_101:                              # %hamming.exit.thread.i
                                        #   in Loop: Header=BB0_102 Depth=1
	ld.d	$a1, $s3, %pc_lo12(stored)
	stx.w	$s2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB0_112
.LBB0_102:                              # %.lr.ph24.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_106 Depth 2
                                        #     Child Loop BB0_109 Depth 2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(NNTOT)
	slli.d	$a0, $s0, 2
	blez	$a1, .LBB0_101
# %bb.103:                              # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB0_102 Depth=1
	ld.d	$a2, $s8, %pc_lo12(vectors)
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(newvectors)
	slli.d	$a4, $s0, 3
	ldx.d	$a2, $a2, $a4
	ldx.d	$a3, $a3, $a4
	bgeu	$a1, $s1, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_102 Depth=1
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_105:                              # %vector.ph161
                                        #   in Loop: Header=BB0_102 Depth=1
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a3, 16
	addi.d	$a6, $a2, 16
	move	$a7, $a4
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB0_106:                              # %vector.body164
                                        #   Parent Loop BB0_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vld	$vr4, $a5, -16
	vld	$vr5, $a5, 0
	vseq.w	$vr2, $vr2, $vr4
	vseq.w	$vr3, $vr3, $vr5
	vadd.w	$vr0, $vr0, $vr2
	vaddi.wu	$vr0, $vr0, 1
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB0_106
# %bb.107:                              # %middle.block173
                                        #   in Loop: Header=BB0_102 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a5, $vr0, 0
	beq	$a4, $a1, .LBB0_110
.LBB0_108:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB0_102 Depth=1
	sub.d	$a1, $a1, $a4
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a2, $a4, $a2, 2
	.p2align	4, , 16
.LBB0_109:                              # %.lr.ph.i.i
                                        #   Parent Loop BB0_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	ld.w	$a6, $a3, 0
	xor	$a4, $a4, $a6
	sltu	$a4, $zero, $a4
	add.d	$a5, $a5, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_109
.LBB0_110:                              # %hamming.exit.i
                                        #   in Loop: Header=BB0_102 Depth=1
	addi.w	$a2, $a5, 0
	beqz	$a2, .LBB0_101
# %bb.111:                              #   in Loop: Header=BB0_102 Depth=1
	ld.d	$a1, $s3, %pc_lo12(stored)
	stx.w	$zero, $a1, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	addi.d	$s0, $s0, 1
	blt	$s0, $a0, .LBB0_102
.LBB0_112:                              # %storecheck.exit
	move	$a0, $zero
	fld.d	$fs0, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB0_113:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	b	.LBB0_115
.LBB0_114:
	ld.d	$a3, $s4, 0
.LBB0_115:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_116:
	ld.d	$a0, $s4, 0
	addi.w	$a2, $fp, -1
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_117:
	ld.d	$a0, $s4, 0
	ld.d	$a2, $s0, 8
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function run
	.type	run,@function
run:                                    # @run
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(NNTOT)
	ld.w	$s5, $s4, %pc_lo12(NNTOT)
	move	$fp, $a1
	move	$s2, $a0
	slli.d	$s3, $s5, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_31
# %bb.1:
	move	$s1, $a0
	beqz	$a0, .LBB1_31
# %bb.2:                                # %.preheader63
	blez	$s5, .LBB1_30
# %bb.3:                                # %.preheader61.us.preheader
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$t0, $zero
	pcalau12i	$a0, %pc_hi20(Tmatrix)
	ld.d	$a0, $a0, %pc_lo12(Tmatrix)
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $s0, 16
	addi.d	$a3, $s1, 16
	ori	$a4, $zero, 8
	ori	$a5, $zero, 499
	vrepli.b	$vr0, 0
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_4:                                #   in Loop: Header=BB1_6 Depth=1
	move	$a7, $s5
.LBB1_5:                                # %hamming.exit.thread.us
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a7, $a7, 2
	ldx.w	$t0, $s1, $a7
	stx.w	$t0, $s0, $a7
	addi.w	$t0, $a6, 1
	bgeu	$a6, $a5, .LBB1_26
.LBB1_6:                                # %.preheader.us.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_8 Depth 3
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_23 Depth 2
	move	$a7, $zero
	move	$a6, $t0
	.p2align	4, , 16
.LBB1_7:                                # %.preheader.us.us
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	move	$t3, $zero
	move	$t1, $s5
	move	$t2, $s0
	.p2align	4, , 16
.LBB1_8:                                #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t4, $t2, 0
	fld.s	$fa1, $t0, 0
	movgr2fr.w	$fa2, $t4
	ffint.s.w	$fa2, $fa2
	movgr2fr.w	$fa3, $t3
	ffint.s.w	$fa3, $fa3
	fmadd.s	$fa1, $fa1, $fa2, $fa3
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$t3, $fa1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 4
	bnez	$t1, .LBB1_8
# %bb.9:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB1_7 Depth=2
	srli.d	$t0, $t3, 31
	ori	$t0, $t0, 1
	slli.d	$t1, $a7, 2
	addi.d	$a7, $a7, 1
	stx.w	$t0, $s1, $t1
	bne	$a7, $s5, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a7, $s5
	move	$t0, $s1
	move	$t1, $s0
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=2
	addi.d	$t1, $t1, 4
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	beqz	$a7, .LBB1_14
.LBB1_12:                               # %.lr.ph70.us
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	bnez	$t2, .LBB1_11
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=2
	ld.w	$t2, $t0, 0
	st.w	$t2, $t1, 0
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_14:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	bgeu	$s5, $a4, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_6 Depth=1
	move	$t2, $zero
	move	$a7, $zero
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_16:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a7, $a3
	move	$t0, $a2
	move	$t1, $a1
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB1_17:                               # %vector.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, -16
	vld	$vr6, $t0, 0
	vseq.w	$vr3, $vr3, $vr5
	vseq.w	$vr4, $vr4, $vr6
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	vadd.w	$vr2, $vr2, $vr4
	vaddi.wu	$vr2, $vr2, 1
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB1_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB1_6 Depth=1
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$a7, $vr1, 0
	move	$t2, $a1
	beq	$a1, $s5, .LBB1_21
.LBB1_19:                               # %.lr.ph.i.us.preheader8
                                        #   in Loop: Header=BB1_6 Depth=1
	sub.d	$t0, $s5, $t2
	alsl.d	$t1, $t2, $s0, 2
	alsl.d	$t2, $t2, $s1, 2
	.p2align	4, , 16
.LBB1_20:                               # %.lr.ph.i.us
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, 0
	ld.w	$t4, $t1, 0
	xor	$t3, $t3, $t4
	sltu	$t3, $zero, $t3
	add.d	$a7, $a7, $t3
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	bnez	$t0, .LBB1_20
.LBB1_21:                               # %hamming.exit.us
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a7, $a7, 0
	beqz	$a7, .LBB1_25
# %bb.22:                               # %.lr.ph72.us.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a7, $zero
	move	$t0, $s5
	move	$t1, $s0
	move	$t2, $s1
	.p2align	4, , 16
.LBB1_23:                               # %.lr.ph72.us
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, 0
	ld.w	$t4, $t1, 0
	bne	$t3, $t4, .LBB1_5
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=2
	addi.w	$a7, $a7, 1
	addi.d	$t2, $t2, 4
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB1_23
	b	.LBB1_4
.LBB1_25:                               # %hamming.exit.thread.us.thread
	addi.w	$t0, $a6, 1
.LBB1_26:                               # %.split.us
	ori	$a0, $zero, 500
	bne	$t0, $a0, .LBB1_28
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(NNTOT)
	blez	$a0, .LBB1_30
.LBB1_28:                               # %.lr.ph104.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB1_29:                               # %.lr.ph104
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	st.w	$a1, $fp, 0
	ld.w	$a1, $s4, %pc_lo12(NNTOT)
	addi.d	$a0, $a0, 1
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 4
	blt	$a0, $a1, .LBB1_29
.LBB1_30:                               # %._crit_edge
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB1_31:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
                                        # -- End function
	.p2align	5                               # -- Begin function runcont
	.type	runcont,@function
runcont:                                # @runcont
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(NNTOT)
	ld.w	$s4, $s3, %pc_lo12(NNTOT)
	move	$fp, $a1
	move	$s0, $a0
	slli.d	$s2, $s4, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB2_61
# %bb.1:
	move	$a6, $a0
	beqz	$a0, .LBB2_61
# %bb.2:                                # %.preheader99
	blez	$s4, .LBB2_5
# %bb.3:                                # %.lr.ph.preheader
	move	$a0, $zero
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s1
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a2, 0
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $a3, 0
	ld.w	$s4, $s3, %pc_lo12(NNTOT)
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	blt	$a0, $s4, .LBB2_4
.LBB2_5:                                # %.preheader97.preheader
	move	$s7, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	addi.d	$a0, $a6, 16
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(Tmatrix)
	movgr2fr.d	$fs0, $zero
	movgr2fr.w	$fs1, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a1, $a0, -1018
	movgr2fr.d	$fs2, $a1
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fs3, $a0
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1638
	lu32i.d	$a0, 419430
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fs4, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %hamming.exit.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 499
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB2_58
.LBB2_7:                                # %.preheader97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #     Child Loop BB2_41 Depth 2
                                        #       Child Loop BB2_44 Depth 3
                                        #         Child Loop BB2_47 Depth 4
                                        #     Child Loop BB2_20 Depth 2
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_27 Depth 2
                                        #     Child Loop BB2_30 Depth 2
                                        #     Child Loop BB2_33 Depth 2
                                        #     Child Loop BB2_54 Depth 2
                                        #     Child Loop BB2_57 Depth 2
	move	$s2, $fp
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	blez	$s4, .LBB2_14
# %bb.8:                                # %.preheader93.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$fp, $s8, %pc_lo12(Tmatrix)
	move	$s5, $zero
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %._crit_edge
                                        #   in Loop: Header=BB2_10 Depth=2
	fneg.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fsel	$fa0, $fa1, $fs3, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fsel	$fa0, $fa0, $fs2, $fcc0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr2, -912
	fsub.d	$fa1, $fa2, $fa0
	fadd.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa1, $fa0
	ld.w	$s4, $s3, %pc_lo12(NNTOT)
	fcvt.s.d	$fa0, $fa0
	slli.d	$a0, $s5, 2
	addi.d	$s5, $s5, 1
	fstx.s	$fa0, $s1, $a0
	bge	$s5, $s4, .LBB2_14
.LBB2_10:                               # %.preheader93
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
	fmov.d	$fa0, $fs0
	blez	$s4, .LBB2_9
# %bb.11:                               # %.lr.ph103
                                        #   in Loop: Header=BB2_10 Depth=2
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $fp, $a0
	move	$a1, $s0
	fmov.s	$fa0, $fs1
	.p2align	4, , 16
.LBB2_12:                               #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	fld.s	$fa1, $a0, 0
	movgr2fr.w	$fa2, $a2
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	addi.d	$a1, $a1, 4
	addi.d	$s4, $s4, -1
	addi.d	$a0, $a0, 4
	bnez	$s4, .LBB2_12
# %bb.13:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB2_10 Depth=2
	fcvt.d.s	$fa0, $fa0
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_14:                               # %.preheader96
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	beqz	$s7, .LBB2_39
.LBB2_15:                               #   in Loop: Header=BB2_7 Depth=1
	ori	$s7, $zero, 1
.LBB2_16:                               # %.preheader95
                                        #   in Loop: Header=BB2_7 Depth=1
	blez	$s4, .LBB2_58
# %bb.17:                               # %.lr.ph119.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$fp, $s2
	bstrpick.d	$a0, $s4, 30, 3
	ori	$a1, $zero, 8
	bgeu	$s4, $a1, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a1, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_19:                               # %vector.ph27
                                        #   in Loop: Header=BB2_7 Depth=1
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	move	$a4, $a1
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB2_20:                               # %vector.body30
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vfcmp.cule.s	$vr0, $vr0, $vr2
	vbitseti.w	$vr0, $vr0, 0
	vfcmp.cule.s	$vr1, $vr1, $vr2
	vbitseti.w	$vr1, $vr1, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB2_20
# %bb.21:                               # %middle.block35
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	beq	$a1, $s4, .LBB2_24
.LBB2_22:                               # %.lr.ph119.preheader39
                                        #   in Loop: Header=BB2_7 Depth=1
	alsl.d	$a2, $a1, $a5, 2
	alsl.d	$a3, $a1, $s1, 2
	sub.d	$a1, $s4, $a1
	.p2align	4, , 16
.LBB2_23:                               # %.lr.ph119
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a3, 0
	fcmp.cule.s	$fcc0, $fa0, $fs1
	movcf2gr	$a4, $fcc0
	sub.d	$a4, $zero, $a4
	ori	$a4, $a4, 1
	st.w	$a4, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB2_23
.LBB2_24:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a1, $zero, 8
	bgeu	$s4, $a1, .LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_26:                               # %vector.ph11
                                        #   in Loop: Header=BB2_7 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $a0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB2_27:                               # %vector.body14
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a2, -16
	vld	$vr5, $a2, 0
	vseq.w	$vr2, $vr2, $vr4
	vseq.w	$vr3, $vr3, $vr5
	vadd.w	$vr0, $vr0, $vr2
	vaddi.wu	$vr0, $vr0, 1
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB2_27
# %bb.28:                               # %middle.block22
                                        #   in Loop: Header=BB2_7 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a0, $s4, .LBB2_31
.LBB2_29:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	sub.d	$a2, $s4, $a0
	alsl.d	$a3, $a0, $a5, 2
	alsl.d	$a0, $a0, $fp, 2
	.p2align	4, , 16
.LBB2_30:                               # %.lr.ph.i
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a3, 0
	xor	$a4, $a4, $a5
	sltu	$a4, $zero, $a4
	add.d	$a1, $a1, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB2_30
.LBB2_31:                               # %hamming.exit
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.w	$a0, $a1, 0
	beqz	$a0, .LBB2_58
# %bb.32:                               # %.lr.ph123.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	move	$a1, $s4
	move	$a2, $fp
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $a6
	.p2align	4, , 16
.LBB2_33:                               # %.lr.ph123
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a3, 0
	bne	$a4, $a5, .LBB2_36
# %bb.34:                               #   in Loop: Header=BB2_33 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB2_33
# %bb.35:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s4
.LBB2_36:                               # %.critedge
                                        #   in Loop: Header=BB2_7 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $a6, $a0
	stx.w	$a1, $fp, $a0
	ld.w	$s4, $s3, %pc_lo12(NNTOT)
	blez	$s4, .LBB2_6
# %bb.37:                               # %.lr.ph128.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 8
	bgeu	$s4, $a0, .LBB2_53
# %bb.38:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	b	.LBB2_56
	.p2align	4, , 16
.LBB2_39:                               # %.preheader92.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	blez	$s4, .LBB2_58
# %bb.40:                               # %.preheader92.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB2_41:                               # %.preheader92
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_44 Depth 3
                                        #         Child Loop BB2_47 Depth 4
	blez	$s4, .LBB2_15
# %bb.42:                               # %.lr.ph112
                                        #   in Loop: Header=BB2_41 Depth=2
	move	$fp, $a0
	ld.d	$s6, $s8, %pc_lo12(Tmatrix)
	move	$s5, $zero
	ori	$s7, $zero, 1
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_43:                               #   in Loop: Header=BB2_44 Depth=3
	ld.w	$s4, $s3, %pc_lo12(NNTOT)
	addi.d	$s5, $s5, 1
	bge	$s5, $s4, .LBB2_51
.LBB2_44:                               #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_47 Depth 4
	slli.d	$a0, $s5, 2
	fldx.s	$fa0, $s1, $a0
	fabs.s	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs4, $fa0
	bcnez	$fcc0, .LBB2_43
# %bb.45:                               # %.preheader
                                        #   in Loop: Header=BB2_44 Depth=3
	fmov.d	$fa0, $fs0
	blez	$s4, .LBB2_49
# %bb.46:                               # %.lr.ph107
                                        #   in Loop: Header=BB2_44 Depth=3
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $s6, $a0
	move	$a1, $s1
	fmov.s	$fa0, $fs1
	.p2align	4, , 16
.LBB2_47:                               #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        #       Parent Loop BB2_44 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	addi.d	$a1, $a1, 4
	addi.d	$s4, $s4, -1
	addi.d	$a0, $a0, 4
	bnez	$s4, .LBB2_47
# %bb.48:                               # %._crit_edge108.loopexit
                                        #   in Loop: Header=BB2_44 Depth=3
	fcvt.d.s	$fa0, $fa0
.LBB2_49:                               # %._crit_edge108
                                        #   in Loop: Header=BB2_44 Depth=3
	alsl.d	$s4, $s5, $s1, 2
	fneg.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fsel	$fa0, $fa1, $fs3, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fsel	$fa0, $fa0, $fs2, $fcc0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr2, -912
	fsub.d	$fa1, $fa2, $fa0
	fadd.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa1, $fa0
	fcmp.cule.d	$fcc0, $fs4, $fa1
	fst.s	$fa0, $s4, 0
	bcnez	$fcc0, .LBB2_43
# %bb.50:                               #   in Loop: Header=BB2_44 Depth=3
	move	$s7, $zero
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_51:                               # %._crit_edge113
                                        #   in Loop: Header=BB2_41 Depth=2
	bnez	$s7, .LBB2_16
# %bb.52:                               # %._crit_edge113
                                        #   in Loop: Header=BB2_41 Depth=2
	addi.w	$a0, $fp, 1
	ori	$a1, $zero, 49
	bltu	$fp, $a1, .LBB2_41
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_53:                               # %vector.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $a0
	.p2align	4, , 16
.LBB2_54:                               # %vector.body
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vffint.s.w	$vr0, $vr0
	vffint.s.w	$vr1, $vr1
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB2_54
# %bb.55:                               # %middle.block
                                        #   in Loop: Header=BB2_7 Depth=1
	beq	$a0, $s4, .LBB2_6
.LBB2_56:                               # %.lr.ph128.preheader38
                                        #   in Loop: Header=BB2_7 Depth=1
	alsl.d	$a1, $a0, $s1, 2
	alsl.d	$a2, $a0, $fp, 2
	sub.d	$a0, $s4, $a0
	.p2align	4, , 16
.LBB2_57:                               # %.lr.ph128
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB2_57
	b	.LBB2_6
.LBB2_58:                               # %.loopexit
	ori	$a0, $zero, 500
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_60
# %bb.59:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB2_60:
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB2_61:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	runcont, .Lfunc_end2-runcont
                                        # -- End function
	.type	nmode,@object                   # @nmode
	.data
	.globl	nmode
	.p2align	2, 0x0
nmode:
	.word	2                               # 0x2
	.size	nmode, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Compile date: %s\n"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"today"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Compiler switches: %s\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.space	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Wrong number of arguments, 1 needed, %d specified.\n"
	.size	.L.str.4, 52

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"USAGE: %s <datafile>\n"
	.size	.L.str.5, 22

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"r"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"ABORT: Could not read datafile %s\n"
	.size	.L.str.7, 35

	.type	NNWIDTH,@object                 # @NNWIDTH
	.bss
	.globl	NNWIDTH
	.p2align	2, 0x0
NNWIDTH:
	.word	0                               # 0x0
	.size	NNWIDTH, 4

	.type	NNHEIGHT,@object                # @NNHEIGHT
	.globl	NNHEIGHT
	.p2align	2, 0x0
NNHEIGHT:
	.word	0                               # 0x0
	.size	NNHEIGHT, 4

	.type	NUMPATS,@object                 # @NUMPATS
	.globl	NUMPATS
	.p2align	2, 0x0
NUMPATS:
	.word	0                               # 0x0
	.size	NUMPATS, 4

	.type	NNTOT,@object                   # @NNTOT
	.globl	NNTOT
	.p2align	2, 0x0
NNTOT:
	.word	0                               # 0x0
	.size	NNTOT, 4

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Matrix size is %dx%d\n"
	.size	.L.str.8, 22

	.type	vnames,@object                  # @vnames
	.bss
	.globl	vnames
	.p2align	3, 0x0
vnames:
	.dword	0
	.size	vnames, 8

	.type	stored,@object                  # @stored
	.globl	stored
	.p2align	3, 0x0
stored:
	.dword	0
	.size	stored, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"ABORT: Out of memory\n"
	.size	.L.str.9, 22

	.type	Tmatrix,@object                 # @Tmatrix
	.bss
	.globl	Tmatrix
	.p2align	3, 0x0
Tmatrix:
	.dword	0
	.size	Tmatrix, 8

	.type	vectors,@object                 # @vectors
	.globl	vectors
	.p2align	3, 0x0
vectors:
	.dword	0
	.size	vectors, 8

	.type	newvectors,@object              # @newvectors
	.globl	newvectors
	.p2align	3, 0x0
newvectors:
	.dword	0
	.size	newvectors, 8

	.type	generators,@object              # @generators
	.globl	generators
	.p2align	3, 0x0
generators:
	.dword	0
	.size	generators, 8

	.type	randnum,@object                 # @randnum
	.globl	randnum
	.p2align	3, 0x0
randnum:
	.dword	0                               # 0x0
	.size	randnum, 8

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"WARNING: %d vectors have a hamming distance <2, please modify input vectors!\n"
	.size	.L.str.14, 78

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Warning! No stable state reached after 500 iterations, aborting!"
	.size	.L.str.16, 65

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Warning! No stable state reached after 500 iterations!"
	.size	.L.str.17, 55

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%s"
	.size	.L.str.18, 3

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Pattern %d stored.\n"
	.size	.L.str.20, 20

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Pattern %d: hamming distance=%-.2d.\n"
	.size	.L.str.21, 37

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Checking hamming distances..."
	.size	.Lstr, 30

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Generating T matrix..."
	.size	.Lstr.1, 23

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Delta learning..."
	.size	.Lstr.2, 18

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Store check..."
	.size	.Lstr.3, 15

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Vectors read from file!"
	.size	.Lstr.4, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
