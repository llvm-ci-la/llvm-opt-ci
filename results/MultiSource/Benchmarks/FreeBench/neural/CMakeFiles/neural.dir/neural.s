	.file	"neural.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	4294967292                      # 0xfffffffc
	.word	4294967290                      # 0xfffffffa
	.word	4294967288                      # 0xfffffff8
	.word	4294967286                      # 0xfffffff6
	.word	4294967284                      # 0xfffffff4
	.word	4294967282                      # 0xfffffff2
.LCPI0_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_2:
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	4294967292                      # 0xfffffffc
	.word	4294967290                      # 0xfffffffa
.LCPI0_3:
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
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
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
	bne	$fp, $a0, .LBB0_130
# %bb.1:
	ld.d	$a0, $s0, 8
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_131
# %bb.2:
	move	$s5, $a0
	addi.d	$a0, $sp, 140
	ori	$a1, $zero, 99
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 140
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(NNWIDTH)
	st.w	$a0, $fp, %pc_lo12(NNWIDTH)
	addi.d	$a0, $sp, 140
	ori	$a1, $zero, 99
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 140
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(NNHEIGHT)
	st.w	$a0, $s0, %pc_lo12(NNHEIGHT)
	addi.d	$a0, $sp, 140
	ori	$a1, $zero, 99
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 140
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(NNWIDTH)
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a2, $s0, %pc_lo12(NNHEIGHT)
	pcalau12i	$s0, %pc_hi20(NUMPATS)
	st.w	$a0, $s0, %pc_lo12(NUMPATS)
	mul.d	$a0, $a2, $a1
	pcalau12i	$a3, %pc_hi20(NNTOT)
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.w	$a0, $a3, %pc_lo12(NNTOT)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	ld.w	$s6, $s0, %pc_lo12(NUMPATS)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(vnames)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $a0, %pc_lo12(vnames)
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(stored)
	st.d	$a0, $s3, %pc_lo12(stored)
	beqz	$s1, .LBB0_128
# %bb.3:
	beqz	$a0, .LBB0_128
# %bb.4:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(NNTOT)
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s7, %pc_hi20(Tmatrix)
	st.d	$a0, $s7, %pc_lo12(Tmatrix)
	beqz	$a0, .LBB0_128
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
	beqz	$a0, .LBB0_128
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB0_7
.LBB0_9:                                # %._crit_edge
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
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
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s3, $a0, %pc_lo12(newvectors)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(generators)
	st.d	$s4, $a0, %pc_lo12(generators)
	beqz	$s2, .LBB0_127
# %bb.10:                               # %._crit_edge
	beqz	$s3, .LBB0_127
# %bb.11:                               # %._crit_edge
	beqz	$s4, .LBB0_127
# %bb.12:                               # %.preheader
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	blez	$s6, .LBB0_18
# %bb.13:                               # %.lr.ph67
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
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
	beqz	$s6, .LBB0_127
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	beqz	$s5, .LBB0_127
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	beqz	$a0, .LBB0_127
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
	beqz	$a0, .LBB0_127
# %bb.19:                               # %.preheader.i
	move	$s1, $a0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blez	$a0, .LBB0_28
# %bb.20:                               # %.lr.ph30.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$s0, $a0, %pc_lo12(.L.str.18)
	move	$s2, $zero
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %._crit_edge28.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(vnames)
	stx.b	$a0, $a1, $s2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	blez	$a0, .LBB0_64
# %bb.29:                               # %.lr.ph39.i
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
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
	beq	$t0, $a0, .LBB0_62
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
.LBB0_37:                               # %vector.body147.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	addi.d	$t5, $t4, 16
	move	$t6, $t2
	move	$t7, $a5
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_38:                               # %vector.body147
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
# %bb.39:                               # %middle.block156
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
.LBB0_44:                               # %vector.body129.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	addi.d	$t6, $t4, 16
	move	$t7, $t2
	move	$t8, $a5
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_45:                               # %vector.body129
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
# %bb.46:                               # %middle.block137
                                        #   in Loop: Header=BB0_35 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$t6, $vr1, 0
	move	$t8, $a5
	beq	$a5, $a4, .LBB0_34
.LBB0_47:                               # %.lr.ph.i18.us.us.i.preheader233
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
.LBB0_49:                               # %iter.check
	ori	$a1, $zero, 3
	slli.d	$a3, $a0, 1
	bltu	$a1, $a0, .LBB0_51
# %bb.50:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_60
.LBB0_51:                               # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$a0, $a1, .LBB0_53
# %bb.52:
	move	$a2, $zero
	move	$a1, $zero
	move	$a4, $a3
	b	.LBB0_57
.LBB0_53:                               # %vector.ph
	bstrpick.d	$a1, $a0, 30, 4
	slli.w	$a2, $a1, 4
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_0)
	andi	$a4, $a3, 30
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr2, $a3
	xvadd.w	$xr1, $xr2, $xr1
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	xvld	$xr3, $a1, %pc_lo12(.LCPI0_1)
	xvrepli.b	$xr2, 0
	xvrepli.w	$xr4, -2
	xvrepli.w	$xr5, -18
	xvrepli.w	$xr6, -32
	move	$a1, $a2
	xvori.b	$xr7, $xr2, 0
	.p2align	4, , 16
.LBB0_54:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvadd.w	$xr8, $xr1, $xr4
	xvadd.w	$xr9, $xr1, $xr5
	xvaddi.wu	$xr10, $xr3, 1
	xvaddi.wu	$xr11, $xr3, 9
	xvslt.w	$xr10, $xr10, $xr0
	xvslt.w	$xr11, $xr11, $xr0
	xvand.v	$xr8, $xr10, $xr8
	xvand.v	$xr9, $xr11, $xr9
	xvadd.w	$xr2, $xr8, $xr2
	xvadd.w	$xr7, $xr9, $xr7
	xvadd.w	$xr1, $xr1, $xr6
	addi.w	$a1, $a1, -16
	xvaddi.wu	$xr3, $xr3, 16
	bnez	$a1, .LBB0_54
# %bb.55:                               # %middle.block
	xvadd.w	$xr0, $xr7, $xr2
	xvhaddw.d.w	$xr0, $xr0, $xr0
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a1, $xr0, 0
	beq	$a0, $a2, .LBB0_62
# %bb.56:                               # %vec.epilog.iter.check
	andi	$a5, $a0, 12
	beqz	$a5, .LBB0_126
.LBB0_57:                               # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a0, 30, 2
	slli.w	$a2, $a2, 2
	andi	$a3, $a3, 6
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a1, 0
	vreplgr2vr.w	$vr1, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_2)
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_3)
	vreplgr2vr.w	$vr4, $a4
	vadd.w	$vr2, $vr4, $vr2
	vreplgr2vr.w	$vr4, $a5
	vor.v	$vr3, $vr4, $vr3
	sub.d	$a1, $a5, $a2
	vrepli.w	$vr4, -2
	vrepli.w	$vr5, -8
	.p2align	4, , 16
.LBB0_58:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr6, $vr2, $vr4
	vaddi.wu	$vr7, $vr3, 1
	vslt.w	$vr7, $vr7, $vr1
	vand.v	$vr6, $vr7, $vr6
	vadd.w	$vr0, $vr6, $vr0
	vadd.w	$vr2, $vr2, $vr5
	addi.w	$a1, $a1, 4
	vaddi.wu	$vr3, $vr3, 4
	bnez	$a1, .LBB0_58
# %bb.59:                               # %vec.epilog.middle.block
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a0, $a2, .LBB0_62
.LBB0_60:                               # %.lr.ph39.split.i.preheader
	addi.d	$a3, $a3, -2
	.p2align	4, , 16
.LBB0_61:                               # %.lr.ph39.split.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a2, 1
	slt	$a4, $a2, $a0
	maskeqz	$a4, $a3, $a4
	add.d	$a1, $a4, $a1
	addi.d	$a3, $a3, -2
	bne	$a0, $a2, .LBB0_61
.LBB0_62:                               # %._crit_edge.i39
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB0_64
# %bb.63:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_64:                               # %checkham.exit
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(NNTOT)
	blez	$s0, .LBB0_75
# %bb.65:                               # %.preheader31.lr.ph.i
	ld.d	$s1, $s7, %pc_lo12(Tmatrix)
	slli.d	$fp, $s0, 2
	move	$s2, $s0
	.p2align	4, , 16
.LBB0_66:                               # %.preheader31.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB0_66
# %bb.67:                               # %.preheader29.us.i.preheader
	move	$a0, $zero
	ori	$a1, $zero, 10
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %._crit_edge36.split.us.us.i
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB0_75
.LBB0_69:                               # %.preheader29.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_73 Depth 3
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_70:                               # %._crit_edge.us37.us.i
                                        #   in Loop: Header=BB0_71 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	beq	$a3, $s0, .LBB0_68
.LBB0_71:                               # %.preheader.us.us.i
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_73 Depth 3
	ld.d	$a5, $s8, %pc_lo12(vectors)
	ld.d	$a6, $s7, %pc_lo12(Tmatrix)
	move	$a4, $zero
	alsl.d	$a5, $a0, $a5, 3
	alsl.d	$a6, $a3, $a6, 3
	slli.d	$a7, $a3, 2
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_72:                               #   in Loop: Header=BB0_73 Depth=3
	ld.d	$t0, $a6, 0
	stx.w	$zero, $t0, $a7
	addi.d	$a4, $a4, 4
	beq	$fp, $a4, .LBB0_70
.LBB0_73:                               #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a2, $a4, .LBB0_72
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=3
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
	bne	$fp, $a4, .LBB0_73
	b	.LBB0_70
.LBB0_75:                               # %generateT.exit
	pcalau12i	$s0, %pc_hi20(nmode)
	ori	$a0, $zero, 1
	st.w	$a0, $s0, %pc_lo12(nmode)
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NNTOT)
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_127
# %bb.76:                               # %.preheader36.i
	move	$fp, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	blez	$a0, .LBB0_106
# %bb.77:                               # %.preheader36.split.i.preheader
	addi.d	$a1, $fp, 32
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$s2, $zero, 2
	ori	$s3, $zero, 3
	movgr2fr.w	$fs0, $zero
	ori	$s4, $zero, 16
	vrepli.b	$vr8, 0
	xvldi	$xr9, -3265
	xvrepli.b	$xr10, 0
	vst	$vr8, $sp, 112                  # 16-byte Folded Spill
	xvst	$xr9, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr10, $sp, 32                  # 32-byte Folded Spill
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               # %._crit_edge.i47
                                        #   in Loop: Header=BB0_79 Depth=1
	bnez	$s6, .LBB0_106
.LBB0_79:                               # %.preheader36.split.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_83 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_99 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #         Child Loop BB0_104 Depth 4
	blez	$a0, .LBB0_106
# %bb.80:                               # %.lr.ph46.i.preheader
                                        #   in Loop: Header=BB0_79 Depth=1
	move	$s5, $zero
	ori	$s6, $zero, 1
	b	.LBB0_83
	.p2align	4, , 16
.LBB0_81:                               #   in Loop: Header=BB0_83 Depth=2
	move	$s6, $a4
.LBB0_82:                               # %._crit_edge43.split.us.i
                                        #   in Loop: Header=BB0_83 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	addi.d	$s5, $s5, 1
	bge	$s5, $a0, .LBB0_78
.LBB0_83:                               # %.lr.ph46.i
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_99 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #         Child Loop BB0_104 Depth 4
	ld.d	$a0, $s8, %pc_lo12(vectors)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(newvectors)
	ld.w	$a2, $s0, %pc_lo12(nmode)
	slli.d	$s1, $s5, 3
	ldx.d	$a0, $a0, $s1
	ldx.d	$a1, $a1, $s1
	bne	$a2, $s2, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_83 Depth=2
	pcaddu18i	$ra, %call36(run)
	jirl	$ra, $ra, 0
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=2
	pcaddu18i	$ra, %call36(runcont)
	jirl	$ra, $ra, 0
.LBB0_86:                               #   in Loop: Header=BB0_83 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NNTOT)
	vldi	$vr6, -1184
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	blez	$a0, .LBB0_82
# %bb.87:                               # %iter.check164
                                        #   in Loop: Header=BB0_83 Depth=2
	ld.d	$a1, $s8, %pc_lo12(vectors)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(newvectors)
	ldx.d	$a1, $a1, $s1
	ldx.d	$a2, $a2, $s1
	vldi	$vr7, -3265
	xvld	$xr9, $sp, 64                   # 32-byte Folded Reload
	xvld	$xr10, $sp, 32                  # 32-byte Folded Reload
	bltu	$s3, $a0, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_83 Depth=2
	move	$a3, $zero
	move	$a4, $s6
	b	.LBB0_98
	.p2align	4, , 16
.LBB0_89:                               # %vector.main.loop.iter.check166
                                        #   in Loop: Header=BB0_83 Depth=2
	bgeu	$a0, $s4, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_83 Depth=2
	move	$a3, $zero
	move	$a4, $s6
	b	.LBB0_95
.LBB0_91:                               # %vector.ph167
                                        #   in Loop: Header=BB0_83 Depth=2
	bstrpick.d	$a3, $a0, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a2, 32
	addi.d	$a5, $a1, 32
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	move	$a7, $a3
	vori.b	$vr0, $vr8, 0
	vori.b	$vr1, $vr8, 0
	.p2align	4, , 16
.LBB0_92:                               # %vector.body170
                                        #   Parent Loop BB0_79 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvld	$xr4, $a4, -32
	xvld	$xr5, $a4, 0
	xvsub.w	$xr2, $xr2, $xr4
	xvsub.w	$xr3, $xr3, $xr5
	xvffint.s.w	$xr2, $xr2
	xvffint.s.w	$xr3, $xr3
	xvfmul.s	$xr2, $xr2, $xr9
	xvfmul.s	$xr3, $xr3, $xr9
	xvst	$xr2, $a6, -32
	xvst	$xr3, $a6, 0
	xvfcmp.cune.s	$xr2, $xr2, $xr10
	xvpickve2gr.w	$t0, $xr2, 0
	vinsgr2vr.h	$vr4, $t0, 0
	xvpickve2gr.w	$t0, $xr2, 1
	vinsgr2vr.h	$vr4, $t0, 1
	xvpickve2gr.w	$t0, $xr2, 2
	vinsgr2vr.h	$vr4, $t0, 2
	xvpickve2gr.w	$t0, $xr2, 3
	vinsgr2vr.h	$vr4, $t0, 3
	xvpickve2gr.w	$t0, $xr2, 4
	vinsgr2vr.h	$vr4, $t0, 4
	xvpickve2gr.w	$t0, $xr2, 5
	vinsgr2vr.h	$vr4, $t0, 5
	xvpickve2gr.w	$t0, $xr2, 6
	vinsgr2vr.h	$vr4, $t0, 6
	xvpickve2gr.w	$t0, $xr2, 7
	vinsgr2vr.h	$vr4, $t0, 7
	xvfcmp.cune.s	$xr2, $xr3, $xr10
	xvpickve2gr.w	$t0, $xr2, 0
	vinsgr2vr.h	$vr3, $t0, 0
	xvpickve2gr.w	$t0, $xr2, 1
	vinsgr2vr.h	$vr3, $t0, 1
	xvpickve2gr.w	$t0, $xr2, 2
	vinsgr2vr.h	$vr3, $t0, 2
	xvpickve2gr.w	$t0, $xr2, 3
	vinsgr2vr.h	$vr3, $t0, 3
	xvpickve2gr.w	$t0, $xr2, 4
	vinsgr2vr.h	$vr3, $t0, 4
	xvpickve2gr.w	$t0, $xr2, 5
	vinsgr2vr.h	$vr3, $t0, 5
	xvpickve2gr.w	$t0, $xr2, 6
	vinsgr2vr.h	$vr3, $t0, 6
	xvpickve2gr.w	$t0, $xr2, 7
	vinsgr2vr.h	$vr3, $t0, 7
	vor.v	$vr0, $vr0, $vr4
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB0_92
# %bb.93:                               # %middle.block179
                                        #   in Loop: Header=BB0_83 Depth=2
	vor.v	$vr0, $vr1, $vr0
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a4, $vr0, 0
	sltui	$a4, $a4, 1
	maskeqz	$a4, $s6, $a4
	beq	$a3, $a0, .LBB0_100
# %bb.94:                               # %vec.epilog.iter.check185
                                        #   in Loop: Header=BB0_83 Depth=2
	andi	$a5, $a0, 12
	beqz	$a5, .LBB0_98
.LBB0_95:                               # %vec.epilog.ph184
                                        #   in Loop: Header=BB0_83 Depth=2
	move	$a7, $a3
	xor	$a3, $a4, $s6
	sltu	$a4, $zero, $a3
	bstrpick.d	$a3, $a0, 30, 2
	slli.d	$a3, $a3, 2
	vreplgr2vr.w	$vr0, $a4
	sub.d	$a4, $a7, $a3
	alsl.d	$a5, $a7, $fp, 2
	alsl.d	$a6, $a7, $a2, 2
	alsl.d	$a7, $a7, $a1, 2
	.p2align	4, , 16
.LBB0_96:                               # %vec.epilog.vector.body192
                                        #   Parent Loop BB0_79 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a7, 0
	vld	$vr2, $a6, 0
	vsub.w	$vr1, $vr1, $vr2
	vffint.s.w	$vr1, $vr1
	vfmul.s	$vr1, $vr1, $vr7
	vst	$vr1, $a5, 0
	vfcmp.cune.s	$vr1, $vr1, $vr8
	vor.v	$vr0, $vr0, $vr1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB0_96
# %bb.97:                               # %vec.epilog.middle.block198
                                        #   in Loop: Header=BB0_83 Depth=2
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a4, $vr0, 0
	sltui	$a4, $a4, 1
	maskeqz	$a4, $s6, $a4
	beq	$a3, $a0, .LBB0_100
.LBB0_98:                               # %vec.epilog.scalar.ph183.preheader
                                        #   in Loop: Header=BB0_83 Depth=2
	sub.d	$a5, $a0, $a3
	alsl.d	$a6, $a3, $fp, 2
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a1, $a3, $a1, 2
	.p2align	4, , 16
.LBB0_99:                               # %vec.epilog.scalar.ph183
                                        #   Parent Loop BB0_79 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a1, 0
	ld.w	$a7, $a2, 0
	sub.d	$a3, $a3, $a7
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa6
	fcmp.cune.s	$fcc0, $fa0, $fs0
	fst.s	$fa0, $a6, 0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $a4, $a3
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a5, .LBB0_99
.LBB0_100:                              # %.preheader.us.i.preheader
                                        #   in Loop: Header=BB0_83 Depth=2
	move	$a1, $zero
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_101:                              # %._crit_edge.us.i
                                        #   in Loop: Header=BB0_102 Depth=3
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB0_81
.LBB0_102:                              # %.preheader.us.i
                                        #   Parent Loop BB0_79 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_104 Depth 4
	ld.d	$a6, $s8, %pc_lo12(vectors)
	ld.d	$a7, $s7, %pc_lo12(Tmatrix)
	move	$a2, $zero
	move	$a3, $zero
	alsl.d	$a5, $a1, $fp, 2
	alsl.d	$a6, $s5, $a6, 3
	alsl.d	$a7, $a1, $a7, 3
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_103:                              #   in Loop: Header=BB0_104 Depth=4
	ld.d	$t0, $a7, 0
	slli.d	$t1, $a1, 2
	stx.w	$zero, $t0, $t1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	beq	$a0, $a3, .LBB0_101
.LBB0_104:                              #   Parent Loop BB0_79 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        #       Parent Loop BB0_102 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a1, $a3, .LBB0_103
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=4
	ld.d	$t0, $a6, 0
	ld.d	$t1, $a7, 0
	ldx.w	$t0, $t0, $a2
	fld.s	$fa0, $a5, 0
	fldx.s	$fa1, $t1, $a2
	movgr2fr.w	$fa2, $t0
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	fstx.s	$fa0, $t1, $a2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	bne	$a0, $a3, .LBB0_104
	b	.LBB0_101
.LBB0_106:                              # %delta.exit
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	blez	$a0, .LBB0_125
# %bb.107:                              # %.lr.ph.i55.preheader
	move	$fp, $zero
	move	$s1, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ori	$s2, $zero, 2
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_108:                              #   in Loop: Header=BB0_110 Depth=1
	pcaddu18i	$ra, %call36(runcont)
	jirl	$ra, $ra, 0
.LBB0_109:                              #   in Loop: Header=BB0_110 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	addi.d	$s1, $s1, 1
	addi.d	$fp, $fp, 8
	bge	$s1, $a0, .LBB0_112
.LBB0_110:                              # %.lr.ph.i55
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, %pc_lo12(vectors)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(newvectors)
	ld.w	$a2, $s0, %pc_lo12(nmode)
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	bne	$a2, $s2, .LBB0_108
# %bb.111:                              #   in Loop: Header=BB0_110 Depth=1
	pcaddu18i	$ra, %call36(run)
	jirl	$ra, $ra, 0
	b	.LBB0_109
.LBB0_112:                              # %.preheader.i58
	blez	$a0, .LBB0_125
# %bb.113:                              # %.lr.ph24.i.preheader
	ori	$s1, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$fp, $a0, %pc_lo12(.L.str.21)
	move	$s0, $zero
	ori	$s2, $zero, 1
	b	.LBB0_115
	.p2align	4, , 16
.LBB0_114:                              # %hamming.exit.thread.i
                                        #   in Loop: Header=BB0_115 Depth=1
	ld.d	$a1, $s3, %pc_lo12(stored)
	stx.w	$s2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB0_125
.LBB0_115:                              # %.lr.ph24.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_119 Depth 2
                                        #     Child Loop BB0_122 Depth 2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(NNTOT)
	slli.d	$a0, $s0, 2
	blez	$a1, .LBB0_114
# %bb.116:                              # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB0_115 Depth=1
	ld.d	$a2, $s8, %pc_lo12(vectors)
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(newvectors)
	slli.d	$a4, $s0, 3
	ldx.d	$a2, $a2, $a4
	ldx.d	$a3, $a3, $a4
	bgeu	$a1, $s1, .LBB0_118
# %bb.117:                              #   in Loop: Header=BB0_115 Depth=1
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_118:                              # %vector.ph205
                                        #   in Loop: Header=BB0_115 Depth=1
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a3, 16
	addi.d	$a6, $a2, 16
	move	$a7, $a4
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB0_119:                              # %vector.body208
                                        #   Parent Loop BB0_115 Depth=1
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
	bnez	$a7, .LBB0_119
# %bb.120:                              # %middle.block217
                                        #   in Loop: Header=BB0_115 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a5, $vr0, 0
	beq	$a4, $a1, .LBB0_123
.LBB0_121:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB0_115 Depth=1
	sub.d	$a1, $a1, $a4
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a2, $a4, $a2, 2
	.p2align	4, , 16
.LBB0_122:                              # %.lr.ph.i.i
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	ld.w	$a6, $a3, 0
	xor	$a4, $a4, $a6
	sltu	$a4, $zero, $a4
	add.d	$a5, $a5, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_122
.LBB0_123:                              # %hamming.exit.i
                                        #   in Loop: Header=BB0_115 Depth=1
	addi.w	$a2, $a5, 0
	beqz	$a2, .LBB0_114
# %bb.124:                              #   in Loop: Header=BB0_115 Depth=1
	ld.d	$a1, $s3, %pc_lo12(stored)
	stx.w	$zero, $a1, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NUMPATS)
	addi.d	$s0, $s0, 1
	blt	$s0, $a0, .LBB0_115
.LBB0_125:                              # %storecheck.exit
	move	$a0, $zero
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB0_126:
	slli.d	$a3, $a0, 1
	andi	$a3, $a3, 30
	b	.LBB0_60
.LBB0_127:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	b	.LBB0_129
.LBB0_128:
	ld.d	$a3, $s4, 0
.LBB0_129:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_130:
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
.LBB0_131:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function runcont
.LCPI2_0:
	.dword	0xc069000000000000              # double -200
.LCPI2_1:
	.dword	0x4069000000000000              # double 200
.LCPI2_2:
	.dword	0x3fe6666666666666              # double 0.69999999999999996
	.text
	.p2align	5
	.type	runcont,@function
runcont:                                # @runcont
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(NNTOT)
	ld.w	$s8, $s3, %pc_lo12(NNTOT)
	move	$fp, $a1
	move	$s0, $a0
	slli.d	$s2, $s8, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB2_69
# %bb.1:
	move	$s2, $a0
	beqz	$a0, .LBB2_69
# %bb.2:                                # %.preheader99
	blez	$s8, .LBB2_5
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
	ld.w	$s8, $s3, %pc_lo12(NNTOT)
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	blt	$a0, $s8, .LBB2_4
.LBB2_5:                                # %.preheader97.preheader
	move	$s6, $zero
	move	$a6, $zero
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 32
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Tmatrix)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	movgr2fr.w	$fs1, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI2_1)
	vrepli.b	$vr6, 0
	xvrepli.b	$xr7, 0
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	vst	$vr6, $sp, 96                   # 16-byte Folded Spill
	xvst	$xr7, $sp, 64                   # 32-byte Folded Spill
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %hamming.exit.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 499
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB2_66
.LBB2_7:                                # %.preheader97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #     Child Loop BB2_19 Depth 2
                                        #       Child Loop BB2_22 Depth 3
                                        #         Child Loop BB2_25 Depth 4
                                        #     Child Loop BB2_38 Depth 2
                                        #     Child Loop BB2_42 Depth 2
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_49 Depth 2
                                        #     Child Loop BB2_52 Depth 2
                                        #     Child Loop BB2_55 Depth 2
                                        #     Child Loop BB2_62 Depth 2
                                        #     Child Loop BB2_65 Depth 2
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	blez	$s8, .LBB2_14
# %bb.8:                                # %.preheader93.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Tmatrix)
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
	ld.w	$s8, $s3, %pc_lo12(NNTOT)
	fcvt.s.d	$fa0, $fa0
	slli.d	$a0, $s5, 2
	addi.d	$s5, $s5, 1
	fstx.s	$fa0, $s1, $a0
	bge	$s5, $s8, .LBB2_14
.LBB2_10:                               # %.preheader93
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
	fmov.d	$fa0, $fs0
	blez	$s8, .LBB2_9
# %bb.11:                               # %.lr.ph103
                                        #   in Loop: Header=BB2_10 Depth=2
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $s4, $a0
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
	addi.d	$s8, $s8, -1
	addi.d	$a0, $a0, 4
	bnez	$s8, .LBB2_12
# %bb.13:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB2_10 Depth=2
	fcvt.d.s	$fa0, $fa0
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_14:                               # %.preheader96
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a6, $a0, 1
	beqz	$s6, .LBB2_17
# %bb.15:                               #   in Loop: Header=BB2_7 Depth=1
	move	$fp, $a6
	ori	$s6, $zero, 1
.LBB2_16:                               #   in Loop: Header=BB2_7 Depth=1
	vld	$vr6, $sp, 96                   # 16-byte Folded Reload
	xvld	$xr7, $sp, 64                   # 32-byte Folded Reload
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_17:                               # %.preheader92.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	vld	$vr6, $sp, 96                   # 16-byte Folded Reload
	xvld	$xr7, $sp, 64                   # 32-byte Folded Reload
	blez	$s8, .LBB2_66
# %bb.18:                               # %.preheader92.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$fp, $a6
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Tmatrix)
	move	$a0, $zero
	.p2align	4, , 16
.LBB2_19:                               # %.preheader92
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_22 Depth 3
                                        #         Child Loop BB2_25 Depth 4
	blez	$s8, .LBB2_31
# %bb.20:                               # %.lr.ph112.preheader
                                        #   in Loop: Header=BB2_19 Depth=2
	move	$s5, $a0
	move	$s7, $zero
	ori	$s6, $zero, 1
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_21:                               #   in Loop: Header=BB2_22 Depth=3
	ld.w	$s8, $s3, %pc_lo12(NNTOT)
	addi.d	$s7, $s7, 1
	bge	$s7, $s8, .LBB2_29
.LBB2_22:                               # %.lr.ph112
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_25 Depth 4
	slli.d	$a0, $s7, 2
	fldx.s	$fa0, $s1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI2_2)
	fabs.s	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs4, $fa0
	bcnez	$fcc0, .LBB2_21
# %bb.23:                               # %.preheader
                                        #   in Loop: Header=BB2_22 Depth=3
	fmov.d	$fa0, $fs0
	blez	$s8, .LBB2_27
# %bb.24:                               # %.lr.ph107
                                        #   in Loop: Header=BB2_22 Depth=3
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $s4, $a0
	move	$a1, $s1
	fmov.s	$fa0, $fs1
	.p2align	4, , 16
.LBB2_25:                               #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        #       Parent Loop BB2_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	addi.d	$a1, $a1, 4
	addi.d	$s8, $s8, -1
	addi.d	$a0, $a0, 4
	bnez	$s8, .LBB2_25
# %bb.26:                               # %._crit_edge108.loopexit
                                        #   in Loop: Header=BB2_22 Depth=3
	fcvt.d.s	$fa0, $fa0
.LBB2_27:                               # %._crit_edge108
                                        #   in Loop: Header=BB2_22 Depth=3
	alsl.d	$s8, $s7, $s1, 2
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
	fst.s	$fa0, $s8, 0
	bcnez	$fcc0, .LBB2_21
# %bb.28:                               #   in Loop: Header=BB2_22 Depth=3
	move	$s6, $zero
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_29:                               # %._crit_edge113
                                        #   in Loop: Header=BB2_19 Depth=2
	bnez	$s6, .LBB2_16
# %bb.30:                               # %._crit_edge113
                                        #   in Loop: Header=BB2_19 Depth=2
	addi.w	$a0, $s5, 1
	ori	$a1, $zero, 49
	vld	$vr6, $sp, 96                   # 16-byte Folded Reload
	xvld	$xr7, $sp, 64                   # 32-byte Folded Reload
	bltu	$s5, $a1, .LBB2_19
	b	.LBB2_32
.LBB2_31:                               #   in Loop: Header=BB2_7 Depth=1
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB2_32:                               # %.preheader95
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a6, $fp
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	blez	$s8, .LBB2_66
# %bb.33:                               # %iter.check
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 3
	bltu	$a0, $s8, .LBB2_35
# %bb.34:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_35:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 16
	bgeu	$s8, $a0, .LBB2_37
# %bb.36:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_37:                               # %vector.ph28
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a0, $s8, 30, 4
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $a0
	.p2align	4, , 16
.LBB2_38:                               # %vector.body31
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvfcmp.cule.s	$xr0, $xr0, $xr7
	xvbitseti.w	$xr0, $xr0, 0
	xvfcmp.cule.s	$xr1, $xr1, $xr7
	xvbitseti.w	$xr1, $xr1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB2_38
# %bb.39:                               # %middle.block36
                                        #   in Loop: Header=BB2_7 Depth=1
	beq	$a0, $s8, .LBB2_46
# %bb.40:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_7 Depth=1
	andi	$a1, $s8, 12
	beqz	$a1, .LBB2_44
.LBB2_41:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a3, $a0
	bstrpick.d	$a0, $s8, 30, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $s2, 2
	alsl.d	$a3, $a3, $s1, 2
	.p2align	4, , 16
.LBB2_42:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vfcmp.cule.s	$vr0, $vr0, $vr6
	vbitseti.w	$vr0, $vr0, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB2_42
# %bb.43:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_7 Depth=1
	beq	$a0, $s8, .LBB2_46
.LBB2_44:                               # %.lr.ph119.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	alsl.d	$a1, $a0, $s2, 2
	alsl.d	$a2, $a0, $s1, 2
	sub.d	$a0, $s8, $a0
	.p2align	4, , 16
.LBB2_45:                               # %.lr.ph119
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.cule.s	$fcc0, $fa0, $fs1
	movcf2gr	$a3, $fcc0
	sub.d	$a3, $zero, $a3
	ori	$a3, $a3, 1
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB2_45
.LBB2_46:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 8
	bgeu	$s8, $a0, .LBB2_48
# %bb.47:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB2_51
	.p2align	4, , 16
.LBB2_48:                               # %vector.ph10
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a0, $s8, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $a0
	vori.b	$vr0, $vr6, 0
	vori.b	$vr1, $vr6, 0
	.p2align	4, , 16
.LBB2_49:                               # %vector.body13
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
	bnez	$a3, .LBB2_49
# %bb.50:                               # %middle.block21
                                        #   in Loop: Header=BB2_7 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a0, $s8, .LBB2_53
.LBB2_51:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	sub.d	$a2, $s8, $a0
	alsl.d	$a3, $a0, $s2, 2
	alsl.d	$a0, $a0, $a7, 2
	.p2align	4, , 16
.LBB2_52:                               # %.lr.ph.i
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
	bnez	$a2, .LBB2_52
.LBB2_53:                               # %hamming.exit
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.w	$a0, $a1, 0
	beqz	$a0, .LBB2_66
# %bb.54:                               # %.lr.ph123.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	move	$a1, $s8
	move	$a2, $a7
	move	$a3, $s2
	.p2align	4, , 16
.LBB2_55:                               # %.lr.ph123
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a3, 0
	bne	$a4, $a5, .LBB2_58
# %bb.56:                               #   in Loop: Header=BB2_55 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB2_55
# %bb.57:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s8
.LBB2_58:                               # %.critedge
                                        #   in Loop: Header=BB2_7 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s2, $a0
	stx.w	$a1, $a7, $a0
	ld.w	$s8, $s3, %pc_lo12(NNTOT)
	blez	$s8, .LBB2_6
# %bb.59:                               # %.lr.ph128.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 8
	bgeu	$s8, $a0, .LBB2_61
# %bb.60:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	b	.LBB2_64
	.p2align	4, , 16
.LBB2_61:                               # %vector.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a0, $s8, 30, 3
	slli.d	$a0, $a0, 3
	move	$a1, $a7
	move	$a2, $s1
	move	$a3, $a0
	.p2align	4, , 16
.LBB2_62:                               # %vector.body
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvffint.s.w	$xr0, $xr0
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB2_62
# %bb.63:                               # %middle.block
                                        #   in Loop: Header=BB2_7 Depth=1
	beq	$a0, $s8, .LBB2_6
.LBB2_64:                               # %.lr.ph128.preheader45
                                        #   in Loop: Header=BB2_7 Depth=1
	alsl.d	$a1, $a0, $s1, 2
	alsl.d	$a2, $a0, $a7, 2
	sub.d	$a0, $s8, $a0
	.p2align	4, , 16
.LBB2_65:                               # %.lr.ph128
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB2_65
	b	.LBB2_6
.LBB2_66:                               # %.loopexit
	ori	$a0, $zero, 500
	bne	$a6, $a0, .LBB2_68
# %bb.67:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB2_68:
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB2_69:
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
