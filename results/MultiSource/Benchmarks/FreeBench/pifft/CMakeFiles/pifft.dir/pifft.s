	.file	"pifft.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
.LCPI0_1:
	.dword	0x4059000000000000              # double 100
.LCPI0_2:
	.dword	0x3fd3333333333333              # double 0.29999999999999999
.LCPI0_3:
	.dword	0x4049000000000000              # double 50
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bne	$s0, $a0, .LBB0_51
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_52
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	addi.d	$a2, $sp, 236
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 236
	move	$a2, $zero
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a2, 1
	sll.w	$s7, $a1, $a2
	blt	$s7, $a0, .LBB0_3
# %bb.4:
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $s7
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	st.w	$s7, $sp, 236
	bceqz	$fcc0, .LBB0_53
.LBB0_5:                                # %.split
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 12
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $sp, 236
	move	$s8, $a0
	addi.w	$fp, $a1, 0
	srli.d	$a0, $a1, 31
	add.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	bstrins.d	$a0, $zero, 2, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $s7, 4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slli.d	$s0, $a0, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 3
	addi.d	$s0, $a0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_54
# %bb.6:
	addi.w	$s6, $s7, 2
	st.w	$zero, $s8, 0
	ori	$a1, $zero, 10
	ori	$s0, $zero, 10
	move	$a0, $s6
	move	$a2, $fp
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	move	$a3, $s5
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	move	$a4, $s8
	move	$a5, $s2
	pcaddu18i	$ra, %call36(mp_mul_radix_test)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s6, $s6, 1
	alsl.d	$a0, $a0, $s6, 3
	movgr2fr.w	$fa3, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_2)
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	ori	$s3, $zero, 1
	move	$s5, $s7
	move	$fp, $s2
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB0_11
# %bb.7:                                # %.lr.ph.preheader
	ori	$s3, $zero, 1
	ori	$s0, $zero, 10
	lu12i.w	$a0, 2621
	ori	$a0, $a0, 1803
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $s0
	addi.w	$s3, $s3, 1
	slli.d	$a2, $s0, 3
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	alsl.w	$s0, $s0, $a2, 1
	bcnez	$fcc0, .LBB0_10
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB0_8 Depth=1
	bltu	$a1, $a0, .LBB0_8
.LBB0_10:                               # %._crit_edge.loopexit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sll.w	$s5, $s3, $a0
.LBB0_11:                               # %._crit_edge
	ld.w	$a1, $sp, 236
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s0, 31, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s6
	move	$a1, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(mp_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 236
	st.d	$fp, $sp, 16
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s8
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	move	$a4, $s2
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mp_sqrt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	st.w	$a0, $s4, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	addi.d	$a1, $s8, 4
	addi.d	$s5, $s4, 4
	vldi	$vr1, -1016
	move	$a0, $s6
	fmov.d	$fa0, $fs0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(mp_unsgn_imul)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	bnez	$a0, .LBB0_13
# %bb.12:
	st.w	$zero, $s5, 0
.LBB0_13:                               # %mp_imul.exit
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s6
	move	$a1, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(mp_sscanf)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 236
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 16
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s2
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mp_sqrt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s6
	move	$a1, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(mp_sscanf)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s4
	move	$a4, $s4
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	move	$a4, $fp
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s8
	move	$a4, $s8
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s7, 3
	addi.w	$a0, $s7, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$a0, $a1, $s4, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr0, $s0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ori	$s2, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %mp_idiv_2.exit
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.w	$a6, $sp, 236
	move	$s7, $s2
	slli.d	$s2, $s2, 1
	st.d	$s8, $sp, 24
	st.d	$s5, $sp, 16
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	st.d	$s3, $sp, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s1
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	move	$a5, $fp
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	move	$a7, $s1
	pcaddu18i	$ra, %call36(mp_mul)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 236
	st.d	$s8, $sp, 16
	st.d	$s5, $sp, 8
	st.d	$s3, $sp, 0
	move	$a0, $s6
	move	$a1, $s0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	move	$a4, $fp
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$a7, $s1
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mp_sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $fp
	move	$a4, $s4
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	move	$a4, $fp
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $a2
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s4, 4
	ld.w	$a0, $s4, 0
	sub.d	$a1, $zero, $s8
	sltui	$a0, $a0, 1
	maskeqz	$a2, $s6, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	slli.w	$s5, $a0, 2
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	mul.w	$a1, $s5, $s3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blt	$s6, $s5, .LBB0_25
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s4
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	ld.w	$a2, $s4, 4
	addi.d	$a1, $a0, -1
	sltui	$a1, $a1, 1
	sub.d	$a4, $zero, $a1
	sub.d	$a2, $a2, $a1
	st.w	$a2, $s4, 4
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_17:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a2, -2
	ori	$a3, $zero, 2
	slli.d	$a1, $a1, 2
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	vld	$vr6, $sp, 96                   # 16-byte Folded Reload
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	ori	$a6, $zero, 8
	bltu	$a5, $a6, .LBB0_21
# %bb.18:                               # %vector.ph
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	move	$a3, $a5
	ori	$a7, $zero, 2
	bstrins.d	$a3, $a7, 2, 0
	vinsgr2vr.w	$vr0, $a4, 3
	move	$a4, $a6
	move	$a7, $s4
	.p2align	4, , 16
.LBB0_19:                               # %vector.body
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a7, $a1
	vld	$vr1, $t0, 8
	vld	$vr2, $t0, 24
	vand.v	$vr3, $vr1, $vr7
	vand.v	$vr4, $vr2, $vr7
	vneg.w	$vr3, $vr3
	vbsrl.v	$vr5, $vr0, 12
	vneg.w	$vr0, $vr4
	vbsll.v	$vr4, $vr3, 4
	vor.v	$vr4, $vr4, $vr5
	vbsrl.v	$vr3, $vr3, 12
	vbsll.v	$vr5, $vr0, 4
	vor.v	$vr3, $vr5, $vr3
	vand.v	$vr4, $vr4, $vr6
	vand.v	$vr3, $vr3, $vr6
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr2, $vr2, $vr3
	vsrai.w	$vr1, $vr1, 1
	vsrai.w	$vr2, $vr2, 1
	vst	$vr1, $a7, 8
	vst	$vr2, $a7, 24
	addi.d	$a4, $a4, -8
	addi.d	$a7, $a7, 32
	bnez	$a4, .LBB0_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB0_15 Depth=1
	vpickve2gr.w	$a4, $vr0, 3
	beq	$a5, $a6, .LBB0_23
.LBB0_21:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	sub.d	$a2, $a2, $a3
	alsl.d	$a3, $a3, $s4, 2
	.p2align	4, , 16
.LBB0_22:                               # %.lr.ph.i
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.wu	$a5, $a3, $a1
	and	$a4, $a4, $s0
	add.w	$a6, $a5, $a4
	andi	$a4, $a5, 1
	sub.d	$a4, $zero, $a4
	srli.d	$a5, $a6, 1
	st.w	$a5, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_22
.LBB0_23:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_14
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=1
	and	$a0, $a4, $s0
	bstrpick.d	$a0, $a0, 31, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_14
.LBB0_25:
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 8
	addi.d	$a1, $a0, -1
	sltui	$a1, $a1, 1
	sub.d	$a4, $zero, $a1
	sub.d	$a3, $s8, $a1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	sub.w	$a5, $a2, $a1
	ori	$a2, $zero, 2
	st.w	$a3, $s4, 4
	bge	$a5, $a2, .LBB0_27
# %bb.26:
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_33
.LBB0_27:                               # %.lr.ph.preheader.i267
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -2
	ori	$a6, $zero, 8
	slli.d	$a1, $a1, 2
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	vld	$vr6, $sp, 96                   # 16-byte Folded Reload
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	bltu	$a5, $a6, .LBB0_31
# %bb.28:                               # %vector.ph336
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 2
	move	$a2, $a5
	bstrins.d	$a2, $a7, 2, 0
	vinsgr2vr.w	$vr0, $a4, 3
	move	$a4, $a6
	move	$a7, $s4
	.p2align	4, , 16
.LBB0_29:                               # %vector.body341
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a7, $a1
	vld	$vr1, $t0, 8
	vld	$vr2, $t0, 24
	vand.v	$vr3, $vr1, $vr7
	vand.v	$vr4, $vr2, $vr7
	vneg.w	$vr3, $vr3
	vbsrl.v	$vr5, $vr0, 12
	vneg.w	$vr0, $vr4
	vbsll.v	$vr4, $vr3, 4
	vor.v	$vr4, $vr4, $vr5
	vbsrl.v	$vr3, $vr3, 12
	vbsll.v	$vr5, $vr0, 4
	vor.v	$vr3, $vr5, $vr3
	vand.v	$vr4, $vr4, $vr6
	vand.v	$vr3, $vr3, $vr6
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr2, $vr2, $vr3
	vsrai.w	$vr1, $vr1, 1
	vsrai.w	$vr2, $vr2, 1
	vst	$vr1, $a7, 8
	vst	$vr2, $a7, 24
	addi.d	$a4, $a4, -8
	addi.d	$a7, $a7, 32
	bnez	$a4, .LBB0_29
# %bb.30:                               # %middle.block349
	vpickve2gr.w	$a4, $vr0, 3
	beq	$a5, $a6, .LBB0_33
.LBB0_31:                               # %.lr.ph.i270.preheader
	sub.d	$a3, $a3, $a2
	alsl.d	$a2, $a2, $s4, 2
	.p2align	4, , 16
.LBB0_32:                               # %.lr.ph.i270
                                        # =>This Inner Loop Header: Depth=1
	ldx.wu	$a5, $a2, $a1
	and	$a4, $a4, $s0
	add.w	$a6, $a5, $a4
	andi	$a4, $a5, 1
	sub.d	$a4, $zero, $a4
	srli.d	$a5, $a6, 1
	st.w	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_32
.LBB0_33:                               # %._crit_edge.i276
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_35
# %bb.34:
	and	$a0, $a4, $s0
	bstrpick.d	$a0, $a0, 31, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB0_35:                               # %mp_idiv_2.exit278
	ld.w	$a4, $sp, 236
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s7
	move	$a7, $s2
	pcaddu18i	$ra, %call36(mp_squh)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 236
	st.d	$s2, $sp, 24
	st.d	$s7, $sp, 16
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	st.d	$s3, $sp, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s5
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	move	$a5, $fp
	move	$a7, $s8
	pcaddu18i	$ra, %call36(mp_mul)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 236
	st.d	$s2, $sp, 16
	st.d	$s7, $sp, 8
	st.d	$s3, $sp, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s5
	move	$s5, $fp
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	move	$a4, $fp
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	move	$a5, $fp
	move	$a7, $s8
	pcaddu18i	$ra, %call36(mp_inv)
	jirl	$ra, $ra, 0
	ld.w	$a5, $sp, 236
	st.d	$s2, $sp, 8
	st.d	$s7, $sp, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s1
	move	$a4, $s5
	move	$a6, $s8
	move	$s8, $s3
	move	$a7, $s3
	pcaddu18i	$ra, %call36(mp_squ)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	ld.w	$a2, $s4, 4
	addi.d	$a1, $a0, -1
	sltui	$a1, $a1, 1
	sub.d	$a4, $zero, $a1
	sub.d	$a3, $a2, $a1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	sub.w	$a5, $a2, $a1
	ori	$a2, $zero, 2
	st.w	$a3, $s4, 4
	bge	$a5, $a2, .LBB0_37
# %bb.36:
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_44
.LBB0_37:                               # %.lr.ph.preheader.i282
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -2
	ori	$a6, $zero, 8
	slli.d	$a1, $a1, 2
	bgeu	$a5, $a6, .LBB0_39
# %bb.38:
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_42
.LBB0_39:                               # %vector.ph356
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 2
	move	$a2, $a5
	bstrins.d	$a2, $a7, 2, 0
	vinsgr2vr.w	$vr0, $a4, 3
	move	$a4, $a6
	move	$a7, $s4
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	vld	$vr6, $sp, 96                   # 16-byte Folded Reload
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB0_40:                               # %vector.body361
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a7, $a1
	vld	$vr1, $t0, 8
	vld	$vr2, $t0, 24
	vand.v	$vr3, $vr1, $vr7
	vand.v	$vr4, $vr2, $vr7
	vneg.w	$vr3, $vr3
	vbsrl.v	$vr5, $vr0, 12
	vneg.w	$vr0, $vr4
	vbsll.v	$vr4, $vr3, 4
	vor.v	$vr4, $vr4, $vr5
	vbsrl.v	$vr3, $vr3, 12
	vbsll.v	$vr5, $vr0, 4
	vor.v	$vr3, $vr5, $vr3
	vand.v	$vr4, $vr4, $vr6
	vand.v	$vr3, $vr3, $vr6
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr2, $vr2, $vr3
	vsrai.w	$vr1, $vr1, 1
	vsrai.w	$vr2, $vr2, 1
	vst	$vr1, $a7, 8
	vst	$vr2, $a7, 24
	addi.d	$a4, $a4, -8
	addi.d	$a7, $a7, 32
	bnez	$a4, .LBB0_40
# %bb.41:                               # %middle.block369
	vpickve2gr.w	$a4, $vr0, 3
	beq	$a5, $a6, .LBB0_44
.LBB0_42:                               # %.lr.ph.i285.preheader
	sub.d	$a3, $a3, $a2
	alsl.d	$a2, $a2, $s4, 2
	.p2align	4, , 16
.LBB0_43:                               # %.lr.ph.i285
                                        # =>This Inner Loop Header: Depth=1
	ldx.wu	$a5, $a2, $a1
	and	$a4, $a4, $s0
	add.w	$a6, $a5, $a4
	andi	$a4, $a5, 1
	sub.d	$a4, $zero, $a4
	srli.d	$a5, $a6, 1
	st.w	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_43
.LBB0_44:                               # %._crit_edge.i291
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_46
# %bb.45:
	and	$a0, $a4, $s0
	bstrpick.d	$a0, $a0, 31, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB0_46:                               # %mp_idiv_2.exit293
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 236
	st.d	$s2, $sp, 24
	st.d	$s7, $sp, 16
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s8, $sp, 0
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $s5
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	move	$a7, $s0
	pcaddu18i	$ra, %call36(mp_mul)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	slt	$a1, $zero, $a1
	sub.w	$a2, $zero, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.w	$a0, $s1, 0
	beqz	$a0, .LBB0_48
# %bb.47:
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a0, $a1, 0
	srai.d	$a0, $a0, 31
	xor	$a1, $a1, $a0
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $s1, 4
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa1, $fa0
	move	$a0, $s6
	fmov.d	$fa0, $fs0
	move	$a2, $a1
	pcaddu18i	$ra, %call36(mp_unsgn_idiv)
	jirl	$ra, $ra, 0
	b	.LBB0_50
.LBB0_48:
	ori	$a0, $zero, 31
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_50
# %bb.49:                               # %.lr.ph.preheader.i.i
	move	$a0, $s1
	move	$a1, $zero
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %mp_idiv.exit
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	mul.d	$a0, $s3, $s6
	addi.w	$a0, $a0, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(mp_sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 236
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_3)
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
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
.LBB0_51:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_52:
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_53:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_5
.LBB0_54:
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.text
	.globl	mp_mul_radix_test               # -- Begin function mp_mul_radix_test
	.p2align	5
	.type	mp_mul_radix_test,@function
mp_mul_radix_test:                      # @mp_mul_radix_test
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s1, $a5
	move	$s3, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	srai.d	$a1, $a2, 1
	addi.d	$a2, $a1, 1
	slt	$a1, $a1, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	addi.d	$a0, $s2, -1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs0, $fa0
	alsl.d	$a0, $s0, $a3, 3
	fst.d	$fs0, $a0, 8
	bge	$s4, $s0, .LBB1_2
# %bb.1:                                # %.lr.ph.preheader
	sub.d	$a0, $s4, $s0
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s0, $a0
	alsl.d	$a0, $a0, $fp, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %._crit_edge
	ori	$a0, $zero, 3
	blt	$s4, $a0, .LBB1_9
# %bb.3:                                # %.lr.ph43
	addi.d	$a0, $s2, 1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	movgr2fr.w	$fa0, $a0
	addi.d	$a0, $s4, -2
	ori	$a2, $zero, 4
	ffint.d.w	$fa0, $fa0
	move	$a1, $s4
	bltu	$a0, $a2, .LBB1_7
# %bb.4:                                # %vector.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	sub.d	$a1, $s4, $a2
	vreplvei.d	$vr1, $vr0, 0
	alsl.d	$a3, $s4, $fp, 3
	addi.d	$a3, $a3, -8
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a3, 0
	vst	$vr1, $a3, -16
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, -32
	bnez	$a4, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a0, $a2, .LBB1_9
.LBB1_7:                                # %scalar.ph.preheader
	addi.d	$a0, $a1, 1
	alsl.d	$a1, $a1, $fp, 3
	ori	$a2, $zero, 3
	.p2align	4, , 16
.LBB1_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -8
	bltu	$a2, $a0, .LBB1_8
.LBB1_9:                                # %._crit_edge44
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 16
	addi.d	$s4, $fp, 8
	fst.d	$fs0, $fp, 8
	st.d	$zero, $fp, 0
	ori	$a1, $zero, 1
	move	$a0, $s0
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s1
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 0
	vld	$vr1, $fp, 8
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $fp, 0
	vfmul.d	$vr0, $vr1, $vr1
	ori	$a0, $zero, 4
	vst	$vr0, $fp, 8
	blt	$s0, $a0, .LBB1_12
# %bb.10:                               # %.lr.ph.preheader.i
	addi.d	$a0, $fp, 32
	ori	$a1, $zero, 3
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fneg.d	$fa2, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fst.d	$fa2, $a0, -8
	fadd.d	$fa1, $fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, 16
	bltu	$a1, $s0, .LBB1_11
.LBB1_12:                               # %mp_mul_csqu.exit
	alsl.d	$a0, $s0, $fp, 3
	fld.d	$fa0, $a0, 8
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a0, 8
	addi.w	$a1, $zero, -1
	move	$a0, $s0
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s1
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(mp_mul_d2i_test)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	mp_mul_radix_test, .Lfunc_end1-mp_mul_radix_test
                                        # -- End function
	.globl	mp_sscanf                       # -- Begin function mp_sscanf
	.p2align	5
	.type	mp_sscanf,@function
mp_sscanf:                              # @mp_sscanf
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s1, 0
	addi.d	$s1, $s1, 1
	beq	$a1, $a0, .LBB2_1
# %bb.2:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
	ld.bu	$a0, $s1, -1
	ori	$a1, $zero, 43
	beq	$a0, $a1, .LBB2_6
# %bb.3:
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB2_5
# %bb.4:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 0
	b	.LBB2_6
.LBB2_5:
	addi.d	$s1, $s1, -1
.LBB2_6:                                # %.preheader204
	ori	$a0, $zero, 48
	ld.bu	$a1, $s1, 0
	ori	$a1, $a1, 16
	bne	$a1, $a0, .LBB2_8
	.p2align	4, , 16
.LBB2_7:                                # %.critedge
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s1, $s1, 1
	ld.bu	$a1, $s1, 0
	ori	$a1, $a1, 16
	beq	$a1, $a0, .LBB2_7
.LBB2_8:
	addi.d	$a0, $s1, 1
	st.w	$zero, $sp, 4
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	lu32i.d	$a3, 3
	ld.bu	$a4, $a0, -1
	addi.d	$a5, $a4, -68
	bltu	$a1, $a5, .LBB2_10
	.p2align	4, , 16
.LBB2_9:
	sll.d	$a5, $a2, $a5
	and	$a5, $a5, $a3
	bnez	$a5, .LBB2_12
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	beqz	$a4, .LBB2_14
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	addi.d	$a0, $a0, 1
	ld.bu	$a4, $a0, -1
	addi.d	$a5, $a4, -68
	bgeu	$a1, $a5, .LBB2_9
	b	.LBB2_10
.LBB2_12:
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	addi.d	$a2, $sp, 4
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB2_14
# %bb.13:
	st.w	$zero, $sp, 4
.LBB2_14:                               # %.loopexit107
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB2_20
# %bb.15:                               # %.loopexit107
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB2_21
# %bb.16:                               # %.preheader106
	ld.w	$a0, $sp, 4
	ori	$a1, $zero, 32
	ori	$a2, $zero, 48
.LBB2_17:                               # %.loopexit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
	addi.w	$a0, $a0, -1
	st.w	$a0, $sp, 4
	.p2align	4, , 16
.LBB2_18:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $s1, 1
	addi.d	$s1, $s1, 1
	beq	$a3, $a1, .LBB2_18
# %bb.19:                               #   in Loop: Header=BB2_17 Depth=1
	beq	$a3, $a2, .LBB2_17
	b	.LBB2_28
.LBB2_20:                               # %.loopexit107..critedge4_crit_edge
	ld.w	$a0, $sp, 4
	b	.LBB2_28
.LBB2_21:
	ori	$a0, $zero, 32
	move	$a1, $s1
	.p2align	4, , 16
.LBB2_22:                               # %.preheader104
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 1
	addi.d	$a1, $a1, 1
	beq	$a2, $a0, .LBB2_22
# %bb.23:                               # %.preheader103
	ld.w	$a0, $sp, 4
	addi.d	$a2, $a2, -48
	ori	$a3, $zero, 9
	bltu	$a3, $a2, .LBB2_28
# %bb.24:                               # %.lr.ph.preheader
	ori	$a2, $zero, 32
	ori	$a3, $zero, 10
	.p2align	4, , 16
.LBB2_25:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
	addi.w	$a0, $a0, 1
	st.w	$a0, $sp, 4
	.p2align	4, , 16
.LBB2_26:                               #   Parent Loop BB2_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a1, 1
	addi.d	$a1, $a1, 1
	beq	$a4, $a2, .LBB2_26
# %bb.27:                               #   in Loop: Header=BB2_25 Depth=1
	addi.d	$a4, $a4, -48
	bltu	$a4, $a3, .LBB2_25
.LBB2_28:                               # %.critedge4
	move	$a2, $zero
	div.w	$a1, $a0, $s2
	mul.d	$a3, $a1, $s2
	sub.w	$a0, $a0, $a3
	srai.d	$a3, $a0, 31
	add.d	$a1, $a3, $a1
	and	$a3, $a3, $s2
	add.w	$a3, $a3, $a0
	st.w	$a1, $fp, 4
	addi.w	$a1, $s0, 1
	addi.w	$a4, $s2, -1
	ori	$a0, $zero, 2
	ori	$a5, $zero, 32
	ori	$a6, $zero, 46
	ori	$a7, $zero, 246
	ld.bu	$t0, $s1, 0
	bne	$t0, $a5, .LBB2_32
	b	.LBB2_31
.LBB2_29:
	blt	$a1, $a0, .LBB2_44
# %bb.30:
	slli.d	$a3, $a0, 2
	addi.w	$a0, $a0, 1
	stx.w	$a2, $fp, $a3
	move	$a3, $a4
	move	$a2, $zero
	.p2align	4, , 16
.LBB2_31:                               # =>This Inner Loop Header: Depth=1
	addi.d	$s1, $s1, 1
	ld.bu	$t0, $s1, 0
	beq	$t0, $a5, .LBB2_31
.LBB2_32:                               # =>This Inner Loop Header: Depth=1
	beq	$t0, $a6, .LBB2_31
# %bb.33:                               #   in Loop: Header=BB2_32 Depth=1
	beqz	$t0, .LBB2_37
# %bb.34:                               #   in Loop: Header=BB2_32 Depth=1
	addi.d	$t1, $t0, -58
	andi	$t1, $t1, 255
	bltu	$t1, $a7, .LBB2_37
# %bb.35:                               #   in Loop: Header=BB2_32 Depth=1
	slli.d	$t1, $a2, 3
	alsl.d	$a2, $a2, $t1, 1
	addi.d	$t0, $t0, -48
	andi	$t0, $t0, 255
	add.w	$a2, $a2, $t0
	blez	$a3, .LBB2_29
# %bb.36:                               #   in Loop: Header=BB2_32 Depth=1
	addi.w	$a3, $a3, -1
	addi.d	$s1, $s1, 1
	ld.bu	$t0, $s1, 0
	bne	$t0, $a5, .LBB2_32
	b	.LBB2_31
.LBB2_37:
	bltz	$a3, .LBB2_44
# %bb.38:                               # %.lr.ph117.preheader
	ori	$a4, $zero, 7
	bltu	$a3, $a4, .LBB2_42
# %bb.39:                               # %vector.ph
	addi.w	$a4, $a3, 1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	vrepli.w	$vr0, 1
	sub.d	$a3, $a3, $a5
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a2, 0
	vrepli.w	$vr2, 10
	move	$a2, $a5
	.p2align	4, , 16
.LBB2_40:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr1, $vr1, $vr2
	addi.w	$a2, $a2, -8
	vmul.w	$vr0, $vr0, $vr2
	bnez	$a2, .LBB2_40
# %bb.41:                               # %middle.block
	vmul.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a4, $a5, .LBB2_44
.LBB2_42:                               # %.lr.ph117.preheader185
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_43:                               # %.lr.ph117
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a2, 3
	addi.w	$a3, $a3, -1
	alsl.w	$a2, $a2, $a4, 1
	bnez	$a3, .LBB2_43
.LBB2_44:                               # %.preheader
	blt	$a1, $a0, .LBB2_52
# %bb.45:                               # %.lr.ph121.preheader
	addi.w	$a3, $s0, 2
	addi.d	$a1, $a0, 1
	slli.d	$a4, $a0, 2
	addi.w	$a5, $a1, 0
	stx.w	$a2, $fp, $a4
	beq	$a3, $a5, .LBB2_52
# %bb.46:                               # %.lr.ph121.preheader152
	sub.w	$a2, $s0, $a0
	ori	$a3, $zero, 7
	bltu	$a2, $a3, .LBB2_50
# %bb.47:                               # %vector.ph175
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a4, $a2, 32, 3
	slli.d	$a3, $a4, 3
	alsl.d	$a1, $a4, $a1, 3
	alsl.d	$a0, $a0, $fp, 2
	addi.d	$a0, $a0, 20
	vrepli.b	$vr0, 0
	move	$a4, $a3
	.p2align	4, , 16
.LBB2_48:                               # %vector.body178
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a0, -16
	vst	$vr0, $a0, 0
	addi.d	$a4, $a4, -8
	addi.d	$a0, $a0, 32
	bnez	$a4, .LBB2_48
# %bb.49:                               # %middle.block181
	beq	$a2, $a3, .LBB2_52
.LBB2_50:                               # %.lr.ph121.preheader184
	alsl.d	$a0, $a1, $fp, 2
	sub.d	$a1, $s0, $a1
	addi.d	$a1, $a1, 2
	.p2align	4, , 16
.LBB2_51:                               # %.lr.ph121
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB2_51
.LBB2_52:                               # %._crit_edge
	ld.w	$a0, $fp, 8
	bnez	$a0, .LBB2_54
# %bb.53:
	st.d	$zero, $fp, 0
.LBB2_54:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	mp_sscanf, .Lfunc_end2-mp_sscanf
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mp_sqrt
.LCPI3_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
	.text
	.globl	mp_sqrt
	.p2align	5
	.type	mp_sqrt,@function
mp_sqrt:                                # @mp_sqrt
# %bb.0:
	ld.w	$t0, $a2, 0
	bltz	$t0, .LBB3_7
# %bb.1:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$s2, $a0
	beqz	$t0, .LBB3_8
# %bb.2:
	move	$s3, $a6
	move	$s6, $a1
	move	$s4, $a5
	move	$s5, $a7
	ld.d	$a0, $sp, 192
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 184
	ld.d	$s0, $sp, 176
	movgr2fr.w	$fa1, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	ffint.d.w	$fa1, $fa1
	ori	$s7, $zero, 1
	vldi	$vr2, -912
	.p2align	4, , 16
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa1, $fa1
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cule.d	$fcc0, $fa2, $fa3
	slli.w	$s7, $s7, 1
	bcnez	$fcc0, .LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	blt	$s7, $s3, .LBB3_3
.LBB3_5:                                # %mp_get_nfft_init.exit
	addi.w	$a0, $s7, 2
	slt	$a1, $a0, $s2
	masknez	$a5, $s2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a5
	move	$a1, $s6
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(mp_sqrt_init)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 84
	ori	$fp, $zero, 8
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $s7, 2
	slt	$a1, $a0, $s2
	masknez	$a2, $s2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s8, $a0, $a2
	addi.d	$a0, $sp, 84
	st.d	$a0, $sp, 24
	st.d	$s6, $sp, 16
	st.d	$s1, $sp, 8
	st.d	$s0, $sp, 0
	move	$a0, $s8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s7
	move	$a7, $s5
	pcaddu18i	$ra, %call36(mp_sqrt_newton)
	jirl	$ra, $ra, 0
	mul.w	$a1, $fp, $s7
	slt	$a1, $a1, $s3
	addi.w	$a2, $s8, -2
	slli.w	$a3, $a0, 1
	slt	$a3, $a2, $a3
	xori	$a3, $a3, 1
	alsl.w	$a0, $a0, $a0, 1
	slt	$a0, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a2, $a3, $a1
	or	$a0, $a0, $a2
	sra.w	$a0, $s7, $a0
	slli.w	$s7, $a0, 1
	maskeqz	$fp, $fp, $a1
	bge	$s3, $s7, .LBB3_6
	b	.LBB3_10
.LBB3_7:
	addi.w	$a0, $zero, -1
	ret
.LBB3_8:
	addi.w	$a0, $zero, -1
	blt	$s2, $a0, .LBB3_10
# %bb.9:                                # %.lr.ph.preheader.i
	addi.d	$a0, $s2, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $a3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_10:
	move	$a0, $zero
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end3:
	.size	mp_sqrt, .Lfunc_end3-mp_sqrt
                                        # -- End function
	.globl	mp_imul                         # -- Begin function mp_imul
	.p2align	5
	.type	mp_imul,@function
mp_imul:                                # @mp_imul
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a4
	blez	$a3, .LBB4_2
# %bb.1:
	ld.w	$a4, $a2, 0
	st.w	$a4, $fp, 0
	b	.LBB4_5
.LBB4_2:
	bltz	$a3, .LBB4_4
# %bb.3:
	move	$a3, $zero
	st.w	$zero, $fp, 0
	b	.LBB4_5
.LBB4_4:
	ld.w	$a4, $a2, 0
	sub.d	$a4, $zero, $a4
	st.w	$a4, $fp, 0
	sub.w	$a3, $zero, $a3
.LBB4_5:
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	addi.d	$a1, $a2, 4
	bstrpick.d	$a2, $a3, 31, 0
	movgr2fr.d	$fa1, $a2
	ffint.d.l	$fa1, $fa1
	addi.d	$s0, $fp, 4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(mp_unsgn_imul)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	bnez	$a0, .LBB4_7
# %bb.6:
	st.w	$zero, $s0, 0
.LBB4_7:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	mp_imul, .Lfunc_end4-mp_imul
                                        # -- End function
	.globl	mp_add                          # -- Begin function mp_add
	.p2align	5
	.type	mp_add,@function
mp_add:                                 # @mp_add
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$a5, $a2
	ld.w	$a6, $a2, 4
	ld.w	$s2, $a3, 4
	move	$fp, $a4
	sub.w	$a2, $a6, $s2
	ld.w	$s0, $a5, 0
	ld.w	$a4, $a3, 0
	slti	$a7, $a2, 0
	masknez	$t0, $a6, $a7
	maskeqz	$t1, $s2, $a7
	mul.w	$a7, $a4, $s0
	or	$s1, $t1, $t0
	bltz	$a7, .LBB5_4
# %bb.1:
	beqz	$a7, .LBB5_10
# %bb.2:
	bgez	$a2, .LBB5_11
# %bb.3:
	sub.w	$a2, $zero, $a2
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a5, 8
	addi.d	$a5, $fp, 8
	pcaddu18i	$ra, %call36(mp_unexp_add)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s2
	b	.LBB5_16
.LBB5_4:
	bltz	$a0, .LBB5_12
# %bb.5:                                # %.lr.ph.preheader.i
	move	$a4, $zero
	ori	$a7, $zero, 4
	.p2align	4, , 16
.LBB5_6:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a6, $a5, $a7
	ldx.w	$t0, $a3, $a7
	bgeu	$a4, $a0, .LBB5_8
# %bb.7:                                # %.lr.ph.i
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a7, $a7, 4
	beq	$a6, $t0, .LBB5_6
.LBB5_8:                                # %mp_unsgn_cmp.exit
	bge	$a6, $t0, .LBB5_13
# %bb.9:
	sub.w	$a2, $zero, $a2
	addi.d	$s2, $zero, -1
	move	$a4, $a3
	move	$s3, $a5
	move	$a3, $a5
	b	.LBB5_15
.LBB5_10:                               # %.thread
	move	$a2, $zero
	add.w	$s0, $a4, $s0
	add.d	$s1, $s2, $a6
.LBB5_11:
	addi.d	$a6, $a5, 8
	addi.d	$a4, $a3, 8
	addi.d	$a5, $fp, 8
	move	$a3, $a6
	pcaddu18i	$ra, %call36(mp_unexp_add)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s1
	b	.LBB5_16
.LBB5_12:
	move	$s2, $zero
	b	.LBB5_14
.LBB5_13:
	slt	$a4, $a6, $t0
	slt	$a6, $t0, $a6
	sub.d	$s2, $a6, $a4
.LBB5_14:                               # %mp_unsgn_cmp.exit.thread
	move	$s3, $a5
	move	$a4, $a5
.LBB5_15:                               # %mp_unsgn_cmp.exit.thread
	addi.d	$a6, $a4, 8
	addi.d	$a4, $a3, 8
	addi.d	$a5, $fp, 8
	move	$s0, $a0
	move	$a3, $a6
	pcaddu18i	$ra, %call36(mp_unexp_sub)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	sub.d	$a1, $s1, $a0
	mul.w	$a2, $a2, $s2
	xor	$a0, $a0, $s0
	sltui	$a0, $a0, 1
	masknez	$s0, $a2, $a0
.LBB5_16:
	sltui	$a0, $s0, 1
	masknez	$a0, $a1, $a0
	st.w	$s0, $fp, 0
	st.w	$a0, $fp, 4
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	mp_add, .Lfunc_end5-mp_add
                                        # -- End function
	.globl	mp_sub                          # -- Begin function mp_sub
	.p2align	5
	.type	mp_sub,@function
mp_sub:                                 # @mp_sub
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	ld.w	$a5, $a2, 4
	ld.w	$s3, $a3, 4
	move	$fp, $a4
	sub.w	$a2, $a5, $s3
	ld.w	$s1, $s0, 0
	ld.w	$a4, $a3, 0
	slti	$a6, $a2, 0
	masknez	$a7, $a5, $a6
	maskeqz	$t0, $s3, $a6
	mul.w	$a6, $a4, $s1
	or	$s2, $t0, $a7
	blez	$a6, .LBB6_7
# %bb.1:
	bltz	$a0, .LBB6_9
# %bb.2:                                # %.lr.ph.preheader.i
	move	$a4, $zero
	ori	$a6, $zero, 4
	.p2align	4, , 16
.LBB6_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $s0, $a6
	ldx.w	$a7, $a3, $a6
	bgeu	$a4, $a0, .LBB6_5
# %bb.4:                                # %.lr.ph.i
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, 4
	beq	$a5, $a7, .LBB6_3
.LBB6_5:                                # %mp_unsgn_cmp.exit
	bge	$a5, $a7, .LBB6_10
# %bb.6:
	sub.w	$a2, $zero, $a2
	addi.d	$s3, $zero, -1
	move	$a4, $a3
	move	$a3, $s0
	b	.LBB6_12
.LBB6_7:
	bltz	$a6, .LBB6_13
# %bb.8:                                # %.thread
	move	$a2, $zero
	sub.w	$s1, $s1, $a4
	add.d	$s2, $s3, $a5
	b	.LBB6_14
.LBB6_9:
	move	$s3, $zero
	b	.LBB6_11
.LBB6_10:
	slt	$a4, $a5, $a7
	slt	$a5, $a7, $a5
	sub.d	$s3, $a5, $a4
.LBB6_11:                               # %mp_unsgn_cmp.exit.thread
	move	$a4, $s0
.LBB6_12:                               # %mp_unsgn_cmp.exit.thread
	addi.d	$a6, $a4, 8
	addi.d	$a4, $a3, 8
	addi.d	$a5, $fp, 8
	move	$s1, $a0
	move	$a3, $a6
	pcaddu18i	$ra, %call36(mp_unexp_sub)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 0
	sub.d	$a1, $s2, $a0
	mul.w	$a2, $a2, $s3
	xor	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$s1, $a2, $a0
	b	.LBB6_15
.LBB6_13:
	bltz	$a2, .LBB6_16
.LBB6_14:
	addi.d	$a6, $s0, 8
	addi.d	$a4, $a3, 8
	addi.d	$a5, $fp, 8
	move	$a3, $a6
	pcaddu18i	$ra, %call36(mp_unexp_add)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s2
.LBB6_15:
	sltui	$a0, $s1, 1
	masknez	$a0, $a1, $a0
	st.w	$s1, $fp, 0
	st.w	$a0, $fp, 4
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_16:
	sub.w	$a2, $zero, $a2
	addi.d	$a3, $a3, 8
	addi.d	$a4, $s0, 8
	addi.d	$a5, $fp, 8
	pcaddu18i	$ra, %call36(mp_unexp_add)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s3
	b	.LBB6_15
.Lfunc_end6:
	.size	mp_sub, .Lfunc_end6-mp_sub
                                        # -- End function
	.globl	mp_idiv_2                       # -- Begin function mp_idiv_2
	.p2align	5
	.type	mp_idiv_2,@function
mp_idiv_2:                              # @mp_idiv_2
# %bb.0:
	ld.w	$a4, $a2, 0
	st.w	$a4, $a3, 0
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a2, 4
	addi.d	$a6, $a4, -1
	sltui	$a7, $a6, 1
	sub.d	$a5, $a5, $a7
	st.w	$a5, $a3, 4
	addi.w	$a5, $a0, 1
	sub.w	$t0, $a5, $a7
	ori	$t1, $zero, 2
	sub.d	$a6, $zero, $a7
	blt	$t0, $t1, .LBB7_3
# %bb.1:                                # %.lr.ph.preheader
	sub.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 2
	bstrpick.d	$t0, $a0, 31, 0
	alsl.d	$a0, $a7, $a2, 2
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a3, 8
	addi.d	$a7, $t0, -2
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a0, 0
	and	$a6, $a6, $a1
	add.w	$t0, $t0, $a6
	andi	$a6, $t0, 1
	sub.d	$a6, $zero, $a6
	srli.d	$t0, $t0, 1
	st.w	$t0, $a2, 0
	addi.d	$a0, $a0, 4
	addi.d	$a7, $a7, -1
	addi.d	$a2, $a2, 4
	bnez	$a7, .LBB7_2
.LBB7_3:                                # %._crit_edge
	ori	$a0, $zero, 1
	bne	$a4, $a0, .LBB7_5
# %bb.4:
	and	$a0, $a6, $a1
	srli.d	$a0, $a0, 1
	slli.d	$a1, $a5, 2
	stx.w	$a0, $a3, $a1
.LBB7_5:
	ret
.Lfunc_end7:
	.size	mp_idiv_2, .Lfunc_end7-mp_idiv_2
                                        # -- End function
	.globl	mp_mul                          # -- Begin function mp_mul
	.p2align	5
	.type	mp_mul,@function
mp_mul:                                 # @mp_mul
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	move	$s7, $a7
	move	$s2, $a6
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a3
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s3, $a0
	ld.d	$a0, $sp, 248
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 232
	ld.d	$a0, $sp, 224
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	srai.d	$s8, $s2, 1
	addi.d	$a2, $s8, 1
	slt	$a0, $a2, $s3
	masknez	$a1, $a2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $s8, 2
	addi.d	$a1, $a1, 12
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	move	$s5, $s8
	.p2align	4, , 16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	move	$s6, $a2
	bge	$a2, $s3, .LBB8_5
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	ldx.w	$a2, $fp, $a1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $a1
	sub.w	$a4, $zero, $a2
	addi.d	$a1, $a1, 4
	addi.w	$s5, $s5, 1
	addi.d	$a2, $s6, 1
	beq	$a3, $a4, .LBB8_1
# %bb.3:                                # %.split.loop.exit178
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	slt	$a2, $s8, $s3
	blez	$s3, .LBB8_6
.LBB8_4:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$t0, $a0, 8
	masknez	$a0, $s3, $a2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	or	$s4, $a1, $a0
	b	.LBB8_7
.LBB8_5:
	move	$s5, $a0
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	slt	$a2, $s8, $s3
	bgtz	$s3, .LBB8_4
.LBB8_6:
	move	$s4, $zero
	move	$t0, $zero
.LBB8_7:
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	sub.w	$a1, $s3, $s5
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	mul.d	$a0, $a0, $t0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	alsl.d	$a0, $s2, $s7, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fa0, $a0, 8
	bge	$s4, $s2, .LBB8_9
# %bb.8:                                # %.lr.ph.preheader.i
	sub.d	$a0, $s4, $s2
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s2, $a0
	alsl.d	$a0, $a0, $s7, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	move	$s0, $t0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t0, $s0
.LBB8_9:                                # %._crit_edge.i
	ori	$a0, $zero, 2
	bstrpick.d	$a1, $s1, 31, 31
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	blt	$s4, $a0, .LBB8_15
# %bb.10:
	bne	$s4, $a0, .LBB8_12
# %bb.11:
	move	$a0, $zero
	b	.LBB8_14
.LBB8_12:                               # %.lr.ph56.preheader.i
	move	$a0, $zero
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a1, $s1, $a1
	srai.d	$a1, $a1, 1
	addi.w	$a4, $s4, 1
	addi.d	$a2, $a4, 1
	alsl.d	$a3, $a4, $s7, 3
	addi.d	$a3, $a3, -8
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a4, $a4, $a5, 2
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB8_13:                               # %.lr.ph56.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	sub.d	$a6, $a6, $a0
	addi.w	$a0, $a6, 0
	slt	$a0, $a0, $a1
	xori	$a7, $a0, 1
	sub.d	$a0, $zero, $a7
	maskeqz	$a7, $s1, $a7
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, -4
	blt	$a5, $a2, .LBB8_13
.LBB8_14:                               # %._crit_edge57.i
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 12
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s7, 16
.LBB8_15:                               # %mp_mul_i2d.exit
	movgr2fr.w	$fa0, $t0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 4
	ffint.d.w	$fa0, $fa0
	addi.d	$a2, $s7, 8
	fst.d	$fa0, $s7, 8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s7, 0
	ori	$a1, $zero, 1
	move	$a0, $s2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	slt	$a2, $s8, $a1
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	bge	$s6, $s3, .LBB8_17
# %bb.16:
	alsl.d	$a0, $s5, $fp, 2
	ld.w	$s8, $a0, 8
	masknez	$a0, $a1, $a2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	or	$s0, $a1, $a0
	b	.LBB8_18
.LBB8_17:
	move	$s0, $zero
	move	$s8, $zero
.LBB8_18:
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 0
	mul.d	$a0, $a0, $s8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	alsl.d	$a0, $s2, $s4, 3
	fst.d	$fa0, $a0, 8
	bge	$s0, $s2, .LBB8_20
# %bb.19:                               # %.lr.ph.preheader.i101
	sub.d	$a0, $s0, $s2
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s2, $a0
	alsl.d	$a0, $a0, $s4, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
.LBB8_20:                               # %._crit_edge.i89
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB8_26
# %bb.21:
	bne	$s0, $a0, .LBB8_23
# %bb.22:                               # %.._crit_edge57_crit_edge.i100
	move	$a0, $zero
	b	.LBB8_25
.LBB8_23:                               # %.lr.ph56.preheader.i91
	move	$a0, $zero
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a1, $s1, $a1
	srai.d	$a1, $a1, 1
	addi.w	$a4, $s0, 1
	addi.d	$a2, $a4, 1
	alsl.d	$a3, $a4, $s4, 3
	addi.d	$a3, $a3, -8
	slli.d	$a5, $s5, 2
	alsl.d	$a4, $a4, $a5, 2
	add.d	$a4, $fp, $a4
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB8_24:                               # %.lr.ph56.i92
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	sub.d	$a6, $a6, $a0
	addi.w	$a0, $a6, 0
	slt	$a0, $a0, $a1
	xori	$a7, $a0, 1
	sub.d	$a0, $zero, $a7
	maskeqz	$a7, $s1, $a7
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, -4
	blt	$a5, $a2, .LBB8_24
.LBB8_25:                               # %._crit_edge57.i98
	alsl.d	$a1, $s5, $fp, 2
	ld.w	$a1, $a1, 12
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s4, 16
.LBB8_26:                               # %mp_mul_i2d.exit105
	movgr2fr.w	$fa0, $s8
	ld.w	$a0, $fp, 4
	ffint.d.w	$fa0, $fa0
	addi.d	$a2, $s4, 8
	fst.d	$fa0, $s4, 8
	sub.d	$a0, $a0, $s5
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s4, 0
	ori	$a1, $zero, 1
	move	$a0, $s2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 0
	fld.d	$fa1, $s4, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 0
	fld.d	$fa0, $s7, 8
	fld.d	$fa1, $s4, 8
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 8
	fld.d	$fa0, $s7, 16
	fld.d	$fa1, $s4, 16
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 4
	fst.d	$fa0, $s4, 16
	blt	$s2, $a0, .LBB8_29
# %bb.27:                               # %.lr.ph.preheader.i107
	addi.d	$a0, $s4, 32
	addi.d	$a1, $s7, 32
	ori	$a2, $zero, 3
	.p2align	4, , 16
.LBB8_28:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a0, -8
	fneg.d	$fa4, $fa1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa4, $fa0, $fa3, $fa4
	fst.d	$fa4, $a0, -8
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a0, 0
	addi.d	$a2, $a2, 2
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bltu	$a2, $s2, .LBB8_28
.LBB8_29:                               # %mp_mul_cmul.exit
	addi.w	$a0, $s2, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$s0, $a0, 3
	fldx.d	$fa0, $s7, $s0
	fldx.d	$fa1, $s4, $s0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s4, $s0
	blez	$s3, .LBB8_31
# %bb.30:
	ld.w	$s8, $fp, 8
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a0, $s3, $a2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	or	$s4, $a1, $a0
	b	.LBB8_32
.LBB8_31:
	move	$s4, $zero
	move	$s8, $zero
.LBB8_32:
	ld.w	$a0, $fp, 0
	mul.d	$a0, $a0, $s8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	fst.d	$fa0, $a0, 8
	bge	$s4, $s2, .LBB8_34
# %bb.33:                               # %.lr.ph.preheader.i126
	sub.d	$a0, $s4, $s2
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s2, $a0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB8_34:                               # %._crit_edge.i112
	ori	$a0, $zero, 2
	blt	$s4, $a0, .LBB8_40
# %bb.35:
	bne	$s4, $a0, .LBB8_37
# %bb.36:
	move	$a0, $zero
	b	.LBB8_39
.LBB8_37:                               # %.lr.ph56.preheader.i114
	move	$a0, $zero
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a1, $s1, $a1
	srai.d	$a1, $a1, 1
	addi.w	$a4, $s4, 1
	addi.d	$a2, $a4, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	addi.d	$a3, $a3, -8
	alsl.d	$a4, $a4, $fp, 2
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB8_38:                               # %.lr.ph56.i116
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	sub.d	$a6, $a6, $a0
	addi.w	$a0, $a6, 0
	slt	$a0, $a0, $a1
	xori	$a7, $a0, 1
	sub.d	$a0, $zero, $a7
	maskeqz	$a7, $s1, $a7
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, -4
	blt	$a5, $a2, .LBB8_38
.LBB8_39:                               # %._crit_edge57.i122
	ld.w	$a1, $fp, 12
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, 16
.LBB8_40:                               # %mp_mul_i2d.exit130
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$s4, $a0, $s7, 3
	movgr2fr.w	$fa0, $s8
	ld.w	$a0, $fp, 4
	ffint.d.w	$fa0, $fa0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $fp, 8
	fst.d	$fa0, $fp, 8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 0
	ori	$a1, $zero, 1
	move	$a0, $s2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 0
	fld.d	$fa1, $s7, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s7, 0
	fld.d	$fa0, $fp, 8
	fld.d	$fa1, $s7, 8
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s7, 8
	fld.d	$fa0, $fp, 16
	fld.d	$fa1, $s7, 16
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 4
	fst.d	$fa0, $s7, 16
	blt	$s2, $a0, .LBB8_43
# %bb.41:                               # %.lr.ph.preheader.i132
	addi.d	$a0, $s7, 32
	addi.d	$a1, $fp, 32
	ori	$a2, $zero, 3
	.p2align	4, , 16
.LBB8_42:                               # %.lr.ph.i133
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a0, -8
	fneg.d	$fa4, $fa1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa4, $fa0, $fa3, $fa4
	fst.d	$fa4, $a0, -8
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a0, 0
	addi.d	$a2, $a2, 2
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bltu	$a2, $s2, .LBB8_42
.LBB8_43:                               # %mp_mul_cmul.exit136
	fldx.d	$fa0, $fp, $s0
	fld.d	$fa1, $s4, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 0
	addi.w	$a1, $zero, -1
	move	$a0, $s2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mp_mul_d2i)
	jirl	$ra, $ra, 0
	bge	$s6, $s3, .LBB8_45
# %bb.44:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 2
	ld.w	$fp, $a0, 8
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	masknez	$a0, $a0, $a2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	or	$s0, $a1, $a0
	b	.LBB8_46
.LBB8_45:
	move	$s0, $zero
	move	$fp, $zero
.LBB8_46:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	mul.d	$a0, $a0, $fp
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, 8
	bge	$s0, $s2, .LBB8_48
# %bb.47:                               # %.lr.ph.preheader.i154
	sub.d	$a0, $s0, $s2
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s2, $a0
	alsl.d	$a0, $a0, $s7, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB8_48:                               # %._crit_edge.i139
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB8_54
# %bb.49:
	bne	$s0, $a0, .LBB8_51
# %bb.50:                               # %.._crit_edge57_crit_edge.i152
	move	$a0, $zero
	b	.LBB8_53
.LBB8_51:                               # %.lr.ph56.preheader.i141
	move	$a0, $zero
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a1, $s1, $a1
	srai.d	$a1, $a1, 1
	addi.w	$a4, $s0, 1
	addi.d	$a2, $a4, 1
	alsl.d	$a3, $a4, $s7, 3
	addi.d	$a3, $a3, -8
	slli.d	$a5, $s5, 2
	alsl.d	$a4, $a4, $a5, 2
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB8_52:                               # %.lr.ph56.i143
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	sub.d	$a6, $a6, $a0
	addi.w	$a0, $a6, 0
	slt	$a0, $a0, $a1
	xori	$a7, $a0, 1
	sub.d	$a0, $zero, $a7
	maskeqz	$a7, $s1, $a7
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, -4
	blt	$a5, $a2, .LBB8_52
.LBB8_53:                               # %._crit_edge57.i149
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $a1, 2
	ld.w	$a1, $a1, 12
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s7, 16
.LBB8_54:                               # %mp_mul_i2d.exit158
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$s0, $a0, $s4, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$s6, $a0, $a1, 3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 4
	movgr2fr.w	$fa0, $fp
	move	$fp, $a1
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s7, 8
	sub.d	$a0, $a0, $s5
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s7, 0
	ori	$a1, $zero, 1
	move	$a0, $s2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 8
	fld.d	$fa1, $fp, 8
	fld.d	$fa2, $s4, 8
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $s4, 8
	fld.d	$fa0, $s7, 16
	fld.d	$fa1, $fp, 16
	fld.d	$fa2, $s4, 16
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	ori	$a0, $zero, 4
	fst.d	$fa0, $s4, 16
	blt	$s2, $a0, .LBB8_57
# %bb.55:                               # %.lr.ph.preheader.i160
	addi.d	$a0, $s7, 32
	addi.d	$a1, $fp, 32
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 24
	ori	$a3, $zero, 3
	.p2align	4, , 16
.LBB8_56:                               # %.lr.ph.i161
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	vld	$vr2, $a1, -8
	fld.d	$fa3, $a0, -8
	fneg.d	$fa0, $fa0
	vreplvei.d	$vr1, $vr1, 0
	vreplvei.d	$vr4, $vr2, 0
	vextrins.d	$vr4, $vr0, 0
	vld	$vr0, $a2, 0
	vfmul.d	$vr1, $vr1, $vr4
	vreplvei.d	$vr3, $vr3, 0
	vfmadd.d	$vr1, $vr3, $vr2, $vr1
	vfadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a2, $a2, 16
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bltu	$a3, $s2, .LBB8_56
.LBB8_57:                               # %mp_mul_cmuladd.exit
	bstrpick.d	$a0, $s3, 31, 31
	add.w	$a0, $s3, $a0
	srai.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $s6, 0
	fld.d	$fa2, $s0, 0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$fp, $a0, $a1
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $s0, 0
	addi.w	$a1, $zero, -1
	move	$a0, $s2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(mp_mul_d2i)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $fp
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $fp
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	pcaddu18i	$t8, %call36(mp_add)
	jr	$t8
.Lfunc_end8:
	.size	mp_mul, .Lfunc_end8-mp_mul
                                        # -- End function
	.globl	mp_squh                         # -- Begin function mp_squh
	.p2align	5
	.type	mp_squh,@function
mp_squh:                                # @mp_squh
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
	move	$s2, $a7
	move	$s3, $a6
	move	$fp, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a2
	move	$s4, $a1
	move	$s5, $a0
	blez	$a0, .LBB9_2
# %bb.1:
	ld.w	$s8, $s6, 8
	srai.d	$a0, $s1, 1
	addi.d	$a1, $a0, 1
	slt	$a0, $a0, $s5
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$s0, $a0, $a2
	b	.LBB9_3
.LBB9_2:
	move	$s0, $zero
	move	$s8, $zero
.LBB9_3:
	ld.w	$a0, $s6, 0
	mul.d	$a0, $a0, $s8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	alsl.d	$s7, $s1, $fp, 3
	fst.d	$fa0, $s7, 8
	bge	$s0, $s1, .LBB9_5
# %bb.4:                                # %.lr.ph.preheader.i
	sub.d	$a0, $s0, $s1
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s1, $a0
	alsl.d	$a0, $a0, $fp, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB9_5:                                # %._crit_edge.i
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB9_11
# %bb.6:
	bne	$s0, $a0, .LBB9_8
# %bb.7:
	move	$a0, $zero
	b	.LBB9_10
.LBB9_8:                                # %.lr.ph56.preheader.i
	move	$a0, $zero
	bstrpick.d	$a1, $s4, 31, 31
	add.w	$a1, $s4, $a1
	srai.d	$a1, $a1, 1
	addi.w	$a4, $s0, 1
	addi.d	$a2, $a4, 1
	alsl.d	$a3, $a4, $fp, 3
	addi.d	$a3, $a3, -8
	alsl.d	$a4, $a4, $s6, 2
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB9_9:                                # %.lr.ph56.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	sub.d	$a6, $a6, $a0
	addi.w	$a0, $a6, 0
	slt	$a0, $a0, $a1
	xori	$a7, $a0, 1
	sub.d	$a0, $zero, $a7
	maskeqz	$a7, $s4, $a7
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, -4
	blt	$a5, $a2, .LBB9_9
.LBB9_10:                               # %._crit_edge57.i
	ld.w	$a1, $s6, 12
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 16
.LBB9_11:                               # %mp_mul_i2d.exit
	movgr2fr.w	$fa0, $s8
	ld.w	$a0, $s6, 4
	ffint.d.w	$fa0, $fa0
	addi.d	$s6, $fp, 8
	fst.d	$fa0, $fp, 8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 0
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $s6
	move	$a3, $s3
	move	$a4, $s2
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 0
	vld	$vr1, $fp, 8
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $fp, 0
	vfmul.d	$vr0, $vr1, $vr1
	ori	$a0, $zero, 4
	vst	$vr0, $fp, 8
	blt	$s1, $a0, .LBB9_14
# %bb.12:                               # %.lr.ph.preheader.i20
	addi.d	$a0, $fp, 32
	ori	$a1, $zero, 3
	.p2align	4, , 16
.LBB9_13:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fneg.d	$fa2, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fst.d	$fa2, $a0, -8
	fadd.d	$fa1, $fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, 16
	bltu	$a1, $s1, .LBB9_13
.LBB9_14:                               # %mp_mul_csqu.exit
	fld.d	$fa0, $s7, 8
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $s7, 8
	addi.w	$a1, $zero, -1
	move	$a0, $s1
	move	$a2, $s6
	move	$a3, $s3
	move	$a4, $s2
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $fp
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(mp_mul_d2i)
	jr	$t8
.Lfunc_end9:
	.size	mp_squh, .Lfunc_end9-mp_squh
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mp_inv
.LCPI10_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
	.text
	.globl	mp_inv
	.p2align	5
	.type	mp_inv,@function
mp_inv:                                 # @mp_inv
# %bb.0:
	ld.w	$t0, $a2, 0
	beqz	$t0, .LBB10_15
# %bb.1:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a2
	move	$s2, $a7
	move	$s8, $a6
	move	$s5, $a3
	move	$s6, $a1
	move	$s1, $a0
	ld.d	$s0, $sp, 176
	ld.d	$s7, $sp, 168
	ld.d	$t8, $sp, 160
	movgr2fr.w	$fa0, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI10_0)
	ffint.d.w	$fa0, $fa0
	ori	$a6, $zero, 1
	vldi	$vr2, -912
	fmov.d	$fa3, $fa0
	.p2align	4, , 16
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	fmul.d	$fa3, $fa3, $fa3
	fmul.d	$fa4, $fa3, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa4
	slli.w	$a6, $a6, 1
	bcnez	$fcc0, .LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	blt	$a6, $s8, .LBB10_2
.LBB10_4:                               # %mp_get_nfft_init.exit
	addi.w	$a0, $a6, 2
	slt	$t1, $a0, $s1
	st.w	$t0, $s5, 0
	ld.w	$t0, $s4, 4
	masknez	$a3, $s1, $t1
	maskeqz	$a0, $a0, $t1
	or	$a0, $a0, $a3
	sub.d	$t3, $zero, $t0
	blez	$a0, .LBB10_16
# %bb.5:                                # %.lr.ph.preheader.i.i
	frecip.d	$fa2, $fa0
	addi.d	$t1, $a0, 1
	alsl.d	$a3, $a0, $s4, 2
	addi.d	$a3, $a3, 4
	movgr2fr.d	$fa1, $zero
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB10_6:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$fp, $a3, 0
	movgr2fr.w	$fa3, $fp
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa1, $fa2, $fa1, $fa3
	addi.d	$t1, $t1, -1
	addi.d	$a3, $a3, -4
	bltu	$t0, $t1, .LBB10_6
# %bb.7:                                # %mp_unexp_mp2d.exit.i
	frecip.d	$fa1, $fa1
	vldi	$vr2, -912
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB10_9
	.p2align	4, , 16
.LBB10_8:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$t3, $t3, -1
	bcnez	$fcc0, .LBB10_8
.LBB10_9:                               # %._crit_edge.i
	st.w	$t3, $s5, 4
	blez	$a0, .LBB10_12
# %bb.10:                               # %.lr.ph.i16.i
	addi.d	$t3, $s5, 8
	addi.w	$t1, $s6, -1
	.p2align	4, , 16
.LBB10_11:                              # =>This Inner Loop Header: Depth=1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	slt	$t0, $a3, $s6
	movgr2cf	$fcc0, $t0
	fsel	$fa1, $fa0, $fa1, $fcc0
	slt	$t0, $a3, $t1
	masknez	$fp, $t1, $t0
	maskeqz	$a3, $a3, $t0
	or	$a3, $a3, $fp
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fa0
	st.w	$a3, $t3, 0
	addi.d	$a0, $a0, -1
	addi.d	$t3, $t3, 4
	bnez	$a0, .LBB10_11
.LBB10_12:                              # %mp_inv_init.exit.preheader
	ori	$s3, $zero, 8
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_13:                              # %mp_inv_init.exit
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a0, $a6, 2
	slt	$t0, $a0, $s1
	masknez	$a3, $s1, $t0
	maskeqz	$a0, $a0, $t0
	or	$a0, $a0, $a3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16
	st.d	$s7, $sp, 8
	st.d	$t8, $sp, 0
	move	$a1, $s6
	move	$a2, $s4
	move	$a3, $s5
	move	$a7, $s2
	move	$fp, $a4
	pcaddu18i	$ra, %call36(mp_inv_newton)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $fp
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a3, $s3, $t1
	slt	$t0, $a3, $s8
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a6, $a3, -2
	slli.w	$a3, $a0, 1
	slt	$a3, $a6, $a3
	xori	$a3, $a3, 1
	alsl.w	$a0, $a0, $a0, 1
	slt	$a0, $a0, $a6
	maskeqz	$a0, $a0, $t0
	masknez	$a3, $a3, $t0
	or	$a0, $a0, $a3
	sra.w	$a0, $t1, $a0
	slli.w	$a6, $a0, 1
	maskeqz	$s3, $s3, $t0
	bge	$s8, $a6, .LBB10_13
# %bb.14:
	move	$a0, $zero
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB10_15:
	addi.w	$a0, $zero, -1
	ret
.LBB10_16:
	movgr2fr.d	$fa1, $zero
	frecip.d	$fa1, $fa1
	vldi	$vr2, -912
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB10_8
	b	.LBB10_9
.Lfunc_end10:
	.size	mp_inv, .Lfunc_end10-mp_inv
                                        # -- End function
	.globl	mp_squ                          # -- Begin function mp_squ
	.p2align	5
	.type	mp_squ,@function
mp_squ:                                 # @mp_squ
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$s7, $a7
	move	$s2, $a6
	move	$s4, $a5
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$s8, $a2
	move	$s1, $a1
	move	$s3, $a0
	ld.d	$a4, $sp, 184
	ld.d	$a0, $sp, 176
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	srai.d	$a6, $a5, 1
	addi.d	$a5, $a6, 1
	slt	$a0, $a5, $s3
	masknez	$a1, $a5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $a6, 2
	addi.d	$a1, $a1, 12
	move	$a2, $a5
	move	$s5, $a6
	.p2align	4, , 16
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	move	$s0, $a2
	bge	$a2, $s3, .LBB11_5
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	ldx.w	$a3, $s8, $a1
	addi.d	$a1, $a1, 4
	addi.w	$s5, $s5, 1
	addi.d	$a2, $s0, 1
	beqz	$a3, .LBB11_1
# %bb.3:                                # %.split.loop.exit104
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s3, 31, 31
	add.w	$a2, $s3, $a0
	blez	$s3, .LBB11_6
.LBB11_4:
	ld.w	$s6, $s8, 8
	slt	$a0, $a6, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $a5, $a0
	or	$fp, $a0, $a1
	b	.LBB11_7
.LBB11_5:
	move	$s5, $a0
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s3, 31, 31
	add.w	$a2, $s3, $a0
	bgtz	$s3, .LBB11_4
.LBB11_6:
	move	$fp, $zero
	move	$s6, $zero
.LBB11_7:
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $s8, 0
	mul.d	$a0, $a0, $s6
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	alsl.d	$a0, $s4, $s2, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fa0, $a0, 8
	bge	$fp, $s4, .LBB11_9
# %bb.8:                                # %.lr.ph.preheader.i
	sub.d	$a0, $fp, $s4
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s4, $a0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
.LBB11_9:                               # %._crit_edge.i
	srai.d	$a0, $a2, 1
	sub.w	$a1, $s3, $s5
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bstrpick.d	$t2, $s1, 31, 31
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	blt	$fp, $a1, .LBB11_15
# %bb.10:
	bne	$fp, $a1, .LBB11_12
# %bb.11:
	move	$a1, $zero
	b	.LBB11_14
.LBB11_12:                              # %.lr.ph56.preheader.i
	move	$a1, $zero
	add.w	$a2, $s1, $t2
	srai.d	$a2, $a2, 1
	addi.w	$a5, $fp, 1
	addi.d	$a3, $a5, 1
	alsl.d	$a6, $a5, $s2, 3
	addi.d	$t1, $a6, -8
	alsl.d	$a5, $a5, $s8, 2
	ori	$a6, $zero, 4
	.p2align	4, , 16
.LBB11_13:                              # %.lr.ph56.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, 0
	sub.d	$a7, $a7, $a1
	addi.w	$a1, $a7, 0
	slt	$a1, $a1, $a2
	xori	$t0, $a1, 1
	sub.d	$a1, $zero, $t0
	maskeqz	$t0, $s1, $t0
	sub.d	$a7, $a7, $t0
	movgr2fr.w	$fa0, $a7
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $t1, 0
	addi.d	$a3, $a3, -1
	addi.d	$t1, $t1, -8
	addi.d	$a5, $a5, -4
	blt	$a6, $a3, .LBB11_13
.LBB11_14:                              # %._crit_edge57.i
	ld.w	$a2, $s8, 12
	sub.d	$a1, $a2, $a1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s2, 16
.LBB11_15:                              # %mp_mul_i2d.exit
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	addi.d	$fp, $a0, 1
	movgr2fr.w	$fa0, $s6
	ld.w	$a0, $s8, 4
	ffint.d.w	$fa0, $fa0
	addi.d	$a2, $s2, 8
	fst.d	$fa0, $s2, 8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s2, 0
	ori	$a1, $zero, 1
	move	$a0, $s4
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	bge	$s0, $s3, .LBB11_17
# %bb.16:
	alsl.d	$a0, $s5, $s8, 2
	ld.w	$t2, $a0, 8
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	slt	$a0, $a0, $a3
	masknez	$a1, $a3, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$s6, $a0, $a1
	b	.LBB11_18
.LBB11_17:
	move	$s6, $zero
	move	$t2, $zero
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
.LBB11_18:
	ld.w	$a0, $s8, 0
	slt	$s0, $a3, $fp
	mul.d	$a0, $a0, $t2
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	alsl.d	$a0, $s4, $s7, 3
	fst.d	$fa0, $a0, 8
	bge	$s6, $s4, .LBB11_20
# %bb.19:                               # %.lr.ph.preheader.i80
	sub.d	$a0, $s6, $s4
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s4, $a0
	alsl.d	$a0, $a0, $s7, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $fp
	move	$fp, $t2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t2, $fp
	move	$fp, $s2
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
.LBB11_20:                              # %._crit_edge.i68
	masknez	$a0, $a3, $s0
	ori	$a2, $zero, 2
	maskeqz	$a1, $fp, $s0
	blt	$s6, $a2, .LBB11_26
# %bb.21:
	bne	$s6, $a2, .LBB11_23
# %bb.22:                               # %.._crit_edge57_crit_edge.i79
	move	$a2, $zero
	b	.LBB11_25
.LBB11_23:                              # %.lr.ph56.preheader.i70
	move	$a2, $zero
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	add.w	$a3, $s1, $a3
	srai.d	$a3, $a3, 1
	addi.w	$a6, $s6, 1
	addi.d	$a4, $a6, 1
	alsl.d	$a5, $a6, $s7, 3
	addi.d	$a5, $a5, -8
	slli.d	$a7, $s5, 2
	alsl.d	$a6, $a6, $a7, 2
	add.d	$a6, $s8, $a6
	ori	$a7, $zero, 4
	.p2align	4, , 16
.LBB11_24:                              # %.lr.ph56.i71
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a6, 0
	sub.d	$t0, $t0, $a2
	addi.w	$a2, $t0, 0
	slt	$a2, $a2, $a3
	xori	$t1, $a2, 1
	sub.d	$a2, $zero, $t1
	maskeqz	$t1, $s1, $t1
	sub.d	$t0, $t0, $t1
	movgr2fr.w	$fa0, $t0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -8
	addi.d	$a6, $a6, -4
	blt	$a7, $a4, .LBB11_24
.LBB11_25:                              # %._crit_edge57.i77
	alsl.d	$a3, $s5, $s8, 2
	ld.w	$a3, $a3, 12
	sub.d	$a2, $a3, $a2
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s7, 16
.LBB11_26:                              # %mp_mul_i2d.exit84
	or	$fp, $a1, $a0
	movgr2fr.w	$fa0, $t2
	ld.w	$a0, $s8, 4
	ffint.d.w	$fa0, $fa0
	addi.d	$s8, $s7, 8
	fst.d	$fa0, $s7, 8
	sub.d	$a0, $a0, $s5
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s7, 0
	ori	$a1, $zero, 1
	move	$a0, $s4
	move	$a2, $s8
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 0
	fld.d	$fa1, $s7, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s7, 0
	fld.d	$fa0, $s2, 8
	fld.d	$fa1, $s7, 8
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s7, 8
	fld.d	$fa0, $s2, 16
	fld.d	$fa1, $s7, 16
	fmul.d	$fa0, $fa0, $fa1
	ori	$s0, $zero, 4
	fst.d	$fa0, $s7, 16
	blt	$s4, $s0, .LBB11_29
# %bb.27:                               # %.lr.ph.preheader.i86
	addi.d	$a0, $s7, 32
	addi.d	$a1, $s2, 32
	ori	$a2, $zero, 3
	.p2align	4, , 16
.LBB11_28:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a0, -8
	fneg.d	$fa4, $fa1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa4, $fa0, $fa3, $fa4
	fst.d	$fa4, $a0, -8
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a0, 0
	addi.d	$a2, $a2, 2
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bltu	$a2, $s4, .LBB11_28
.LBB11_29:                              # %mp_mul_cmul.exit
	slli.d	$a0, $s4, 3
	addi.d	$a0, $a0, 8
	fldx.d	$fa0, $s2, $a0
	fldx.d	$fa1, $s7, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s7, $a0
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	move	$a2, $s8
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s7
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	move	$a4, $s5
	pcaddu18i	$ra, %call36(mp_mul_d2i)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s5
	move	$a4, $s5
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 0
	vld	$vr1, $s2, 8
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $s2, 0
	vfmul.d	$vr0, $vr1, $vr1
	vst	$vr0, $s2, 8
	blt	$s4, $s0, .LBB11_32
# %bb.30:                               # %.lr.ph.preheader.i92
	addi.d	$a0, $s2, 32
	ori	$a1, $zero, 3
	.p2align	4, , 16
.LBB11_31:                              # %.lr.ph.i93
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fneg.d	$fa2, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fst.d	$fa2, $a0, -8
	fadd.d	$fa1, $fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, 16
	bltu	$a1, $s4, .LBB11_31
.LBB11_32:                              # %mp_mul_csqu.exit
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 8
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a0, 8
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s2
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(mp_mul_d2i)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s5
	move	$a4, $fp
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(mp_add)
	jr	$t8
.Lfunc_end11:
	.size	mp_squ, .Lfunc_end11-mp_squ
                                        # -- End function
	.globl	mp_idiv                         # -- Begin function mp_idiv
	.p2align	5
	.type	mp_idiv,@function
mp_idiv:                                # @mp_idiv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a3, .LBB12_3
# %bb.1:
	ld.w	$a5, $a2, 0
	slt	$a6, $zero, $a3
	sub.d	$a7, $zero, $a5
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a7
	st.w	$a5, $a4, 0
	ld.w	$a5, $a2, 0
	beqz	$a5, .LBB12_4
# %bb.2:
	srai.d	$a5, $a3, 31
	xor	$a3, $a3, $a5
	sub.d	$a3, $a3, $a5
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	addi.d	$a1, $a2, 4
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	addi.d	$a2, $a4, 4
	pcaddu18i	$ra, %call36(mp_unsgn_idiv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB12_3:
	addi.w	$a0, $zero, -1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB12_4:
	addi.w	$a1, $zero, -1
	blt	$a0, $a1, .LBB12_6
# %bb.5:                                # %.lr.ph.preheader.i
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $a4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB12_6:                               # %mp_load_0.exit
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end12:
	.size	mp_idiv, .Lfunc_end12-mp_idiv
                                        # -- End function
	.globl	mp_sprintf                      # -- Begin function mp_sprintf
	.p2align	5
	.type	mp_sprintf,@function
mp_sprintf:                             # @mp_sprintf
# %bb.0:
	ld.w	$a4, $a2, 0
	bgez	$a4, .LBB13_2
# %bb.1:
	addi.d	$a4, $a3, 1
	ori	$a5, $zero, 45
	st.b	$a5, $a3, 0
	move	$a3, $a4
.LBB13_2:
	move	$a5, $a1
	blez	$a1, .LBB13_5
# %bb.3:                                # %.lr.ph.preheader
	ld.w	$t0, $a2, 8
	lu12i.w	$a4, 419430
	ori	$a4, $a4, 1639
	ori	$a6, $zero, 1
	move	$a7, $a1
	move	$t1, $a1
	move	$a5, $a1
	.p2align	4, , 16
.LBB13_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$t2, $t1
	addi.w	$t1, $t0, 0
	mul.d	$t1, $t1, $a4
	srli.d	$t3, $t1, 63
	srai.d	$t1, $t1, 34
	add.d	$t3, $t1, $t3
	slli.d	$t1, $t3, 3
	alsl.d	$t1, $t3, $t1, 1
	sub.w	$t0, $t0, $t1
	addi.d	$t1, $t0, 48
	stx.b	$t1, $a3, $t2
	sltui	$t0, $t0, 1
	masknez	$t1, $a7, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	addi.d	$t1, $t2, -1
	addi.w	$a7, $a7, -1
	move	$t0, $t3
	bltu	$a6, $t2, .LBB13_4
.LBB13_5:                               # %._crit_edge
	ldx.b	$a4, $a3, $a5
	st.b	$a4, $a3, 0
	ori	$a7, $zero, 46
	sub.d	$a6, $a1, $a5
	addi.w	$a4, $a6, 0
	st.b	$a7, $a3, 1
	blez	$a4, .LBB13_20
# %bb.6:                                # %iter.check
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a7, $a6, -1
	ori	$t0, $zero, 16
	ori	$t1, $zero, 1
	bltu	$a7, $t0, .LBB13_18
# %bb.7:                                # %iter.check
	addi.d	$t2, $a5, 30
	ori	$t0, $zero, 32
	bltu	$t2, $t0, .LBB13_18
# %bb.8:                                # %vector.main.loop.iter.check
	bgeu	$a7, $t0, .LBB13_13
# %bb.9:
	move	$t0, $zero
.LBB13_10:                              # %vec.epilog.ph
	move	$t2, $a7
	bstrins.d	$t2, $zero, 3, 0
	ori	$t3, $zero, 1
	move	$t1, $a7
	bstrins.d	$t1, $t3, 3, 0
	add.d	$t3, $t0, $a3
	addi.d	$t3, $t3, 1
	sub.d	$t0, $t0, $t2
	.p2align	4, , 16
.LBB13_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $t3, $a5
	vst	$vr0, $t3, 1
	addi.d	$t0, $t0, 16
	addi.d	$t3, $t3, 16
	bnez	$t0, .LBB13_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$a7, $t2, .LBB13_18
	b	.LBB13_20
.LBB13_13:                              # %vector.ph
	move	$t0, $a7
	bstrins.d	$t0, $zero, 4, 0
	move	$t1, $t0
	move	$t2, $a3
	.p2align	4, , 16
.LBB13_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t3, $t2, $a5
	vld	$vr0, $t3, 1
	vld	$vr1, $t3, 17
	vst	$vr0, $t2, 2
	vst	$vr1, $t2, 18
	addi.d	$t1, $t1, -32
	addi.d	$t2, $t2, 32
	bnez	$t1, .LBB13_14
# %bb.15:                               # %middle.block
	beq	$a7, $t0, .LBB13_20
# %bb.16:                               # %vec.epilog.iter.check
	andi	$t1, $a7, 16
	bnez	$t1, .LBB13_10
# %bb.17:
	addi.d	$t1, $t0, 1
.LBB13_18:                              # %.lr.ph67.preheader
	add.d	$a7, $a3, $t1
	sub.d	$a6, $a6, $t1
	.p2align	4, , 16
.LBB13_19:                              # %.lr.ph67
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$t0, $a7, $a5
	addi.d	$t1, $a7, 1
	addi.d	$a6, $a6, -1
	st.b	$t0, $a7, 1
	move	$a7, $t1
	bnez	$a6, .LBB13_19
.LBB13_20:                              # %._crit_edge68
	add.d	$a6, $a3, $a4
	ori	$a7, $zero, 2
	addi.d	$a6, $a6, 2
	blt	$a0, $a7, .LBB13_27
# %bb.21:                               # %.lr.ph79
	blez	$a1, .LBB13_26
# %bb.22:                               # %.lr.ph73.us.preheader
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a7, $a1, 1
	add.d	$t0, $a1, $a1
	sub.d	$a5, $t0, $a5
	add.d	$a3, $a5, $a3
	addi.d	$a3, $a3, 1
	ori	$a5, $zero, 3
	lu12i.w	$t0, 419430
	ori	$t0, $t0, 1639
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB13_23:                              # %.lr.ph73.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_24 Depth 2
	slli.d	$t2, $a5, 2
	ldx.w	$t4, $a2, $t2
	move	$t2, $a3
	move	$t3, $a7
	.p2align	4, , 16
.LBB13_24:                              #   Parent Loop BB13_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t5, $t4, 0
	mul.d	$t5, $t5, $t0
	srli.d	$t6, $t5, 63
	srai.d	$t5, $t5, 34
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 3
	alsl.d	$t6, $t5, $t6, 1
	sub.d	$t4, $t4, $t6
	addi.d	$t4, $t4, 48
	st.b	$t4, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, -1
	move	$t4, $t5
	blt	$t1, $t3, .LBB13_24
# %bb.25:                               # %._crit_edge74.us
                                        #   in Loop: Header=BB13_23 Depth=1
	add.d	$a6, $a6, $a1
	addi.d	$a5, $a5, 1
	add.d	$a3, $a3, $a1
	bne	$a5, $a0, .LBB13_23
	b	.LBB13_27
.LBB13_26:                              # %.lr.ph79.split.preheader
	mul.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a3
	addi.d	$a6, $a0, 2
.LBB13_27:                              # %._crit_edge80
	ori	$a0, $zero, 101
	st.b	$a0, $a6, 0
	ld.w	$a2, $a2, 4
	addi.d	$a0, $a6, 1
	mul.d	$a1, $a2, $a1
	add.w	$a2, $a1, $a4
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$t8, %call36(sprintf)
	jr	$t8
.Lfunc_end13:
	.size	mp_sprintf, .Lfunc_end13-mp_sprintf
                                        # -- End function
	.globl	mp_load_0                       # -- Begin function mp_load_0
	.p2align	5
	.type	mp_load_0,@function
mp_load_0:                              # @mp_load_0
# %bb.0:
	addi.w	$a1, $zero, -1
	bge	$a0, $a1, .LBB14_2
# %bb.1:                                # %._crit_edge
	ret
.LBB14_2:                               # %.lr.ph.preheader
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a3, $a0, 2
	move	$a0, $a2
	move	$a1, $zero
	move	$a2, $a3
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end14:
	.size	mp_load_0, .Lfunc_end14-mp_load_0
                                        # -- End function
	.globl	mp_load_1                       # -- Begin function mp_load_1
	.p2align	5
	.type	mp_load_1,@function
mp_load_1:                              # @mp_load_1
# %bb.0:
	ori	$a1, $zero, 1
	st.d	$a1, $a2, 0
	ori	$a3, $zero, 2
	st.w	$a1, $a2, 8
	bge	$a0, $a3, .LBB15_2
# %bb.1:                                # %._crit_edge
	ret
.LBB15_2:                               # %.lr.ph.preheader
	addi.d	$a1, $a2, 12
	slli.d	$a0, $a0, 2
	addi.d	$a2, $a0, -4
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end15:
	.size	mp_load_1, .Lfunc_end15-mp_load_1
                                        # -- End function
	.globl	mp_round                        # -- Begin function mp_round
	.p2align	5
	.type	mp_round,@function
mp_round:                               # @mp_round
# %bb.0:
	bge	$a2, $a0, .LBB16_11
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	addi.w	$fp, $a2, 2
	blt	$a0, $fp, .LBB16_3
# %bb.2:                                # %.lr.ph.preheader
	addi.w	$a4, $a0, 1
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a5, $a0, 2
	sub.d	$a0, $a4, $a0
	alsl.d	$a0, $a0, $a3, 2
	addi.d	$a4, $a5, 4
	move	$s0, $a1
	move	$a1, $zero
	move	$s1, $a2
	move	$a2, $a4
	move	$s2, $a3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a1, $s0
	move	$a3, $s2
.LBB16_3:                               # %._crit_edge
	slli.d	$a0, $fp, 2
	ldx.w	$a4, $a3, $a0
	slli.w	$a4, $a4, 1
	stx.w	$zero, $a3, $a0
	blt	$a4, $a1, .LBB16_10
# %bb.4:
	blez	$a2, .LBB16_8
# %bb.5:                                # %.lr.ph44.preheader
	ori	$a0, $zero, 2
	.p2align	4, , 16
.LBB16_6:                               # %.lr.ph44
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$fp, $fp, -1
	slli.d	$a2, $fp, 2
	ldx.w	$a2, $a3, $a2
	addi.w	$a4, $a2, 1
	alsl.d	$a2, $fp, $a3, 2
	blt	$a4, $a1, .LBB16_9
# %bb.7:                                #   in Loop: Header=BB16_6 Depth=1
	st.w	$zero, $a2, 0
	blt	$a0, $fp, .LBB16_6
.LBB16_8:                               # %.critedge
	ld.w	$a0, $a3, 4
	ori	$a1, $zero, 1
	st.w	$a1, $a3, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $a3, 4
	b	.LBB16_10
.LBB16_9:
	st.w	$a4, $a2, 0
.LBB16_10:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB16_11:
	ret
.Lfunc_end16:
	.size	mp_round, .Lfunc_end16-mp_round
                                        # -- End function
	.globl	mp_cmp                          # -- Begin function mp_cmp
	.p2align	5
	.type	mp_cmp,@function
mp_cmp:                                 # @mp_cmp
# %bb.0:
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a3, 0
	ori	$a1, $zero, 1
	blt	$a5, $a4, .LBB17_3
# %bb.1:
	bge	$a4, $a5, .LBB17_4
# %bb.2:
	addi.w	$a1, $zero, -1
.LBB17_3:
	move	$a0, $a1
	ret
.LBB17_4:
	bltz	$a0, .LBB17_9
# %bb.5:                                # %.lr.ph.preheader.i
	move	$a1, $zero
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB17_6:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a3, 0
	bgeu	$a1, $a0, .LBB17_8
# %bb.7:                                # %.lr.ph.i
                                        #   in Loop: Header=BB17_6 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	beq	$a5, $a6, .LBB17_6
.LBB17_8:                               # %._crit_edge.loopexit.i
	slt	$a0, $a5, $a6
	slt	$a1, $a6, $a5
	sub.d	$a0, $a1, $a0
	mul.w	$a0, $a0, $a4
	ret
.LBB17_9:
	move	$a0, $zero
	mul.w	$a0, $a0, $a4
	ret
.Lfunc_end17:
	.size	mp_cmp, .Lfunc_end17-mp_cmp
                                        # -- End function
	.globl	mp_unsgn_cmp                    # -- Begin function mp_unsgn_cmp
	.p2align	5
	.type	mp_unsgn_cmp,@function
mp_unsgn_cmp:                           # @mp_unsgn_cmp
# %bb.0:
	bltz	$a0, .LBB18_5
# %bb.1:                                # %.lr.ph.preheader
	move	$a3, $zero
	.p2align	4, , 16
.LBB18_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a2, 0
	bgeu	$a3, $a0, .LBB18_4
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB18_2 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	beq	$a4, $a5, .LBB18_2
.LBB18_4:                               # %._crit_edge.loopexit
	slt	$a0, $a4, $a5
	slt	$a1, $a5, $a4
	sub.d	$a0, $a1, $a0
	ret
.LBB18_5:
	move	$a0, $zero
	ret
.Lfunc_end18:
	.size	mp_unsgn_cmp, .Lfunc_end18-mp_unsgn_cmp
                                        # -- End function
	.globl	mp_unexp_add                    # -- Begin function mp_unexp_add
	.p2align	5
	.type	mp_unexp_add,@function
mp_unexp_add:                           # @mp_unexp_add
# %bb.0:
	bnez	$a2, .LBB19_2
# %bb.1:
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a4, 0
	add.w	$a6, $a7, $a6
	bge	$a6, $a1, .LBB19_14
.LBB19_2:
	slt	$a6, $a2, $a0
	masknez	$a7, $a0, $a6
	maskeqz	$a6, $a2, $a6
	or	$a6, $a6, $a7
	slli.d	$a7, $a6, 2
	bge	$a2, $a0, .LBB19_6
# %bb.3:                                # %.lr.ph93.preheader
	move	$a2, $zero
	slli.d	$t0, $a0, 2
	addi.d	$t2, $t0, -4
	add.d	$t0, $a5, $t2
	add.d	$t1, $a3, $t2
	sub.d	$t2, $t2, $a7
	add.d	$a4, $a4, $t2
	move	$t2, $a0
	.p2align	4, , 16
.LBB19_4:                               # %.lr.ph93
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t1, 0
	ld.w	$t4, $a4, 0
	addi.d	$t2, $t2, -1
	sub.d	$a2, $t3, $a2
	add.w	$t3, $a2, $t4
	slt	$a2, $t3, $a1
	xori	$t4, $a2, 1
	sub.d	$a2, $zero, $t4
	maskeqz	$t4, $a1, $t4
	sub.d	$t3, $t3, $t4
	st.w	$t3, $t0, 0
	addi.d	$t0, $t0, -4
	addi.d	$t1, $t1, -4
	addi.d	$a4, $a4, -4
	blt	$a6, $t2, .LBB19_4
# %bb.5:                                # %.preheader86
	bgtz	$a6, .LBB19_7
	b	.LBB19_9
.LBB19_6:
	move	$a2, $zero
	blez	$a6, .LBB19_9
.LBB19_7:                               # %.lr.ph97.preheader
	addi.d	$a4, $a6, 1
	addi.d	$a7, $a7, -4
	add.d	$a6, $a5, $a7
	add.d	$a3, $a3, $a7
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB19_8:                               # %.lr.ph97
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a3, 0
	sub.w	$t0, $t0, $a2
	slt	$a2, $t0, $a1
	xori	$t1, $a2, 1
	sub.d	$a2, $zero, $t1
	maskeqz	$t1, $a1, $t1
	sub.d	$t0, $t0, $t1
	st.w	$t0, $a6, 0
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, -4
	bltu	$a7, $a4, .LBB19_8
.LBB19_9:                               # %._crit_edge98
	beqz	$a2, .LBB19_13
# %bb.10:                               # %.preheader
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	blt	$a0, $a1, .LBB19_22
# %bb.11:                               # %.lr.ph101.preheader
	addi.w	$a1, $a0, -1
	sltu	$a3, $zero, $a1
	sub.d	$a0, $a0, $a3
	ori	$a3, $zero, 8
	bstrpick.d	$a4, $a1, 31, 0
	bgeu	$a0, $a3, .LBB19_17
# %bb.12:
	move	$a1, $a4
	b	.LBB19_20
.LBB19_13:
	move	$a0, $zero
	ret
.LBB19_14:
	addi.w	$a6, $a0, -1
	slli.d	$a2, $a6, 2
	ldx.w	$a7, $a3, $a2
	ldx.w	$a2, $a4, $a2
	add.w	$a2, $a2, $a7
	slt	$a2, $a2, $a1
	ori	$a7, $zero, 2
	xori	$a2, $a2, 1
	blt	$a0, $a7, .LBB19_22
# %bb.15:                               # %.lr.ph.preheader
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a0, $a6, 1
	slli.d	$a7, $a6, 2
	alsl.d	$a6, $a6, $a5, 2
	addi.d	$a7, $a7, -4
	add.d	$a4, $a4, $a7
	add.d	$a3, $a3, $a7
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB19_16:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a3, 0
	ld.w	$t1, $a4, 0
	andi	$a2, $a2, 1
	add.d	$a2, $t0, $a2
	add.w	$t0, $a2, $t1
	slt	$a2, $t0, $a1
	xori	$a2, $a2, 1
	maskeqz	$t1, $a1, $a2
	sub.d	$t0, $t0, $t1
	st.w	$t0, $a6, 0
	addi.d	$a0, $a0, -1
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, -4
	bltu	$a7, $a0, .LBB19_16
	b	.LBB19_22
.LBB19_17:                              # %vector.ph
	move	$a3, $a0
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a1, $a4, $a3
	alsl.d	$a4, $a4, $a5, 2
	addi.d	$a4, $a4, -16
	move	$a6, $a3
	.p2align	4, , 16
.LBB19_18:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vst	$vr0, $a4, 4
	vst	$vr1, $a4, -12
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -32
	bnez	$a6, .LBB19_18
# %bb.19:                               # %middle.block
	beq	$a0, $a3, .LBB19_22
.LBB19_20:                              # %.lr.ph101.preheader118
	addi.d	$a0, $a1, 1
	alsl.d	$a1, $a1, $a5, 2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB19_21:                              # %.lr.ph101
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -4
	addi.d	$a4, $a1, -4
	addi.d	$a0, $a0, -1
	st.w	$a3, $a1, 0
	move	$a1, $a4
	bltu	$a2, $a0, .LBB19_21
.LBB19_22:                              # %.sink.split
	st.w	$a2, $a5, 0
	move	$a0, $a2
	ret
.Lfunc_end19:
	.size	mp_unexp_add, .Lfunc_end19-mp_unexp_add
                                        # -- End function
	.globl	mp_unexp_sub                    # -- Begin function mp_unexp_sub
	.p2align	5
	.type	mp_unexp_sub,@function
mp_unexp_sub:                           # @mp_unexp_sub
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	slt	$a6, $a2, $a0
	masknez	$a7, $a0, $a6
	maskeqz	$a6, $a2, $a6
	or	$a7, $a6, $a7
	slli.d	$a6, $a0, 2
	slli.d	$t0, $a7, 2
	bge	$a2, $a0, .LBB20_4
# %bb.1:                                # %.lr.ph.preheader
	move	$a2, $zero
	addi.d	$t2, $a6, -4
	sub.d	$t1, $t2, $t0
	add.d	$a4, $a4, $t1
	add.d	$t1, $a3, $t2
	add.d	$t2, $a5, $t2
	move	$t3, $a0
	.p2align	4, , 16
.LBB20_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $t1, 0
	ld.w	$t5, $a4, 0
	addi.d	$t3, $t3, -1
	sub.d	$t4, $t4, $t5
	add.w	$t4, $t4, $a2
	srai.d	$a2, $t4, 31
	and	$t5, $a2, $a1
	add.d	$t4, $t5, $t4
	st.w	$t4, $t2, 0
	addi.d	$a4, $a4, -4
	addi.d	$t1, $t1, -4
	addi.d	$t2, $t2, -4
	blt	$a7, $t3, .LBB20_2
# %bb.3:                                # %.preheader71
	bgtz	$a7, .LBB20_5
	b	.LBB20_7
.LBB20_4:
	move	$a2, $zero
	blez	$a7, .LBB20_7
.LBB20_5:                               # %.lr.ph79.preheader
	addi.d	$a4, $a7, 1
	addi.d	$t0, $t0, -4
	add.d	$a7, $a5, $t0
	add.d	$a3, $a3, $t0
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB20_6:                               # %.lr.ph79
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a3, 0
	add.w	$t1, $t1, $a2
	srai.d	$a2, $t1, 31
	and	$t2, $a2, $a1
	add.d	$t1, $t2, $t1
	st.w	$t1, $a7, 0
	addi.d	$a4, $a4, -1
	addi.d	$a7, $a7, -4
	addi.d	$a3, $a3, -4
	bltu	$t0, $a4, .LBB20_6
.LBB20_7:                               # %.preheader69
	move	$fp, $zero
	blez	$a0, .LBB20_23
# %bb.8:                                # %.lr.ph81.preheader
	move	$a3, $zero
	addi.w	$a2, $a0, 1
	move	$a1, $a6
	.p2align	4, , 16
.LBB20_9:                               # %.lr.ph81
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a5, $a3
	bnez	$a4, .LBB20_12
# %bb.10:                               #   in Loop: Header=BB20_9 Depth=1
	addi.d	$a3, $a3, 4
	addi.w	$fp, $fp, 1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	bne	$a6, $a3, .LBB20_9
# %bb.11:
	move	$fp, $a0
	b	.LBB20_23
.LBB20_12:                              # %.critedge
	beqz	$a3, .LBB20_16
# %bb.13:                               # %.preheader68
	sub.w	$t0, $a0, $fp
	blez	$t0, .LBB20_22
# %bb.14:                               # %.lr.ph84.preheader
	ori	$a6, $zero, 8
	bstrpick.d	$a4, $t0, 31, 0
	bgeu	$t0, $a6, .LBB20_17
# %bb.15:
	move	$a6, $zero
	b	.LBB20_20
.LBB20_16:
	move	$fp, $zero
	b	.LBB20_23
.LBB20_17:                              # %vector.ph
	add.d	$a7, $a5, $a3
	bstrpick.d	$a6, $a4, 31, 3
	slli.d	$a6, $a6, 3
	bstrpick.d	$t0, $t0, 31, 3
	slli.d	$t0, $t0, 3
	addi.d	$t1, $a5, 16
	.p2align	4, , 16
.LBB20_18:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, 0
	vld	$vr1, $a7, 16
	vst	$vr0, $t1, -16
	vst	$vr1, $t1, 0
	addi.d	$t0, $t0, -8
	addi.d	$t1, $t1, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB20_18
# %bb.19:                               # %middle.block
	beq	$a6, $a4, .LBB20_22
.LBB20_20:                              # %.lr.ph84.preheader113
	alsl.d	$a7, $a6, $a5, 2
	add.d	$a3, $a7, $a3
	sub.d	$a4, $a4, $a6
	.p2align	4, , 16
.LBB20_21:                              # %.lr.ph84
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	st.w	$a6, $a7, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a7, $a7, 4
	bnez	$a4, .LBB20_21
.LBB20_22:                              # %.lr.ph87.preheader
	add.d	$a1, $a5, $a1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a0, $a3
	or	$a2, $a3, $a2
	nor	$a0, $a0, $zero
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $fp
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	addi.d	$a2, $a0, 4
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB20_23:                              # %.critedge.thread
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end20:
	.size	mp_unexp_sub, .Lfunc_end20-mp_unexp_sub
                                        # -- End function
	.globl	mp_unsgn_imul                   # -- Begin function mp_unsgn_imul
	.p2align	5
	.type	mp_unsgn_imul,@function
mp_unsgn_imul:                          # @mp_unsgn_imul
# %bb.0:
	frecip.d	$fa2, $fa0
	fneg.d	$fa0, $fa0
	move	$a3, $zero
	blez	$a0, .LBB21_3
# %bb.1:                                # %.lr.ph
	addi.d	$a4, $a0, 1
	alsl.d	$a5, $a0, $a2, 2
	alsl.d	$a6, $a0, $a1, 2
	vldi	$vr3, -928
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a6, 0
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	movgr2fr.w	$fa5, $a3
	ffint.d.w	$fa5, $fa5
	fmadd.d	$fa4, $fa1, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa3
	fmul.d	$fa5, $fa2, $fa4
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$a3, $fa5
	movgr2fr.w	$fa5, $a3
	ffint.d.w	$fa5, $fa5
	fmadd.d	$fa4, $fa0, $fa5, $fa4
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$t0, $fa4
	st.w	$t0, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -4
	addi.d	$a6, $a6, -4
	bltu	$a7, $a4, .LBB21_2
.LBB21_3:                               # %._crit_edge
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	vldi	$vr3, -928
	fadd.d	$fa1, $fa1, $fa3
	vldi	$vr3, -912
	fcmp.cule.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB21_16
# %bb.4:                                # %.lr.ph63.preheader
	move	$a7, $zero
	move	$a5, $zero
	move	$a4, $zero
	move	$a6, $a0
	slli.d	$t0, $a0, 2
	.p2align	4, , 16
.LBB21_5:                               # %.lr.ph63
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa2, $fa1
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, 1
	fcmp.clt.d	$fcc0, $fa3, $fa1
	addi.d	$a7, $a7, 4
	bcnez	$fcc0, .LBB21_5
# %bb.6:                                # %.preheader57
	ld.w	$a1, $a1, 0
	add.d	$a1, $a1, $a4
	addi.w	$t1, $a4, -1
	st.w	$a1, $a2, 0
	bge	$t1, $a6, .LBB21_17
# %bb.7:                                # %.preheader56
	bge	$a4, $a6, .LBB21_15
# %bb.8:                                # %.lr.ph73.preheader
	addi.d	$a1, $a0, -1
	slt	$t1, $a5, $a1
	masknez	$a1, $a1, $t1
	maskeqz	$t1, $a5, $t1
	or	$t1, $t1, $a1
	sub.d	$a1, $a0, $t1
	ori	$t2, $zero, 8
	bltu	$a1, $t2, .LBB21_13
# %bb.9:                                # %.lr.ph73.preheader
	addi.d	$t2, $a7, -4
	addi.w	$t3, $zero, -36
	bltu	$t3, $t2, .LBB21_13
# %bb.10:                               # %vector.ph
	add.d	$a0, $a2, $t0
	sub.d	$t0, $a0, $a7
	addi.w	$t2, $zero, -8
	and	$a7, $a1, $t2
	sub.d	$a0, $a6, $a7
	sub.d	$t1, $a6, $t1
	and	$t1, $t1, $t2
	alsl.d	$a6, $a6, $a2, 2
	addi.d	$a6, $a6, -12
	.p2align	4, , 16
.LBB21_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t0, -12
	vld	$vr3, $t0, -28
	vst	$vr1, $a6, 0
	vst	$vr3, $a6, -16
	addi.d	$t1, $t1, -8
	addi.d	$a6, $a6, -32
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB21_11
# %bb.12:                               # %middle.block
	beq	$a1, $a7, .LBB21_15
.LBB21_13:                              # %.lr.ph73.preheader104
	alsl.d	$a1, $a0, $a2, 2
	sub.d	$a6, $a0, $a5
	alsl.d	$a6, $a6, $a2, 2
	.p2align	4, , 16
.LBB21_14:                              # %.lr.ph73
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, 0
	st.w	$a7, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a6, $a6, -4
	blt	$a5, $a0, .LBB21_14
.LBB21_15:
	move	$a6, $a4
	b	.LBB21_20
.LBB21_16:                              # %._crit_edge64.thread
	ld.w	$a0, $a1, 0
	st.w	$a0, $a2, 0
	ret
.LBB21_17:
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB21_18:                              # %.lr.ph68
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa3, $fa2, $fa3, $fa1
	ftintrz.w.d	$fa3, $fa3
	addi.w	$a4, $a4, -1
	movfr2gr.s	$a3, $fa3
	blt	$a6, $a4, .LBB21_18
# %bb.19:                               # %.preheader
	blez	$a6, .LBB21_22
.LBB21_20:                              # %.lr.ph76
	bstrpick.d	$a1, $a6, 31, 0
	addi.d	$a0, $a1, 1
	alsl.d	$a1, $a1, $a2, 2
	vldi	$vr1, -928
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB21_21:                              # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa3, $fa1
	fmul.d	$fa4, $fa2, $fa3
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a3, $fa4
	movgr2fr.w	$fa4, $a3
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	st.w	$a4, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$a2, $a0, .LBB21_21
.LBB21_22:                              # %.loopexit
	ret
.Lfunc_end21:
	.size	mp_unsgn_imul, .Lfunc_end21-mp_unsgn_imul
                                        # -- End function
	.globl	mp_unsgn_idiv                   # -- Begin function mp_unsgn_idiv
	.p2align	5
	.type	mp_unsgn_idiv,@function
mp_unsgn_idiv:                          # @mp_unsgn_idiv
# %bb.0:
	move	$a4, $zero
	vldi	$vr2, -800
	fadd.d	$fa2, $fa1, $fa2
	movgr2fr.d	$fa3, $zero
	addi.d	$a3, $zero, -1
	ori	$a5, $zero, 4
	b	.LBB22_2
	.p2align	4, , 16
.LBB22_1:                               #   in Loop: Header=BB22_2 Depth=1
	addi.w	$a3, $a3, 1
	addi.d	$a5, $a5, 4
	fcmp.clt.d	$fcc0, $fa3, $fa2
	addi.d	$a4, $a4, 1
	bceqz	$fcc0, .LBB22_4
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	fmul.d	$fa3, $fa0, $fa3
	bge	$a4, $a0, .LBB22_1
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	ldx.w	$a6, $a1, $a5
	movgr2fr.w	$fa4, $a6
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	b	.LBB22_1
.LBB22_4:
	frecip.d	$fa2, $fa1
	vldi	$vr4, -928
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa2, $fa3
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a4, $fa4
	movgr2fr.w	$fa4, $a4
	st.w	$a4, $a2, 4
	ld.w	$a4, $a1, 0
	ffint.d.w	$fa4, $fa4
	fneg.d	$fa1, $fa1
	fmadd.d	$fa3, $fa1, $fa4, $fa3
	sub.d	$a4, $a4, $a3
	st.w	$a4, $a2, 0
	addi.w	$a4, $a0, -1
	slt	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a5, $a3, $a4
	sub.w	$a3, $a0, $a5
	ftintrz.w.d	$fa3, $fa3
	ori	$a6, $zero, 2
	movfr2gr.s	$a4, $fa3
	blt	$a3, $a6, .LBB22_7
# %bb.5:                                # %.lr.ph.preheader
	alsl.d	$a1, $a5, $a1, 2
	addi.d	$a1, $a1, 8
	addi.d	$a6, $a2, 8
	ori	$a7, $zero, 1
	vldi	$vr3, -928
	.p2align	4, , 16
.LBB22_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a1, 0
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	movgr2fr.w	$fa5, $a4
	ffint.d.w	$fa5, $fa5
	fmadd.d	$fa4, $fa0, $fa5, $fa4
	fadd.d	$fa4, $fa4, $fa3
	fmul.d	$fa5, $fa2, $fa4
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$a4, $fa5
	movgr2fr.w	$fa5, $a4
	ffint.d.w	$fa5, $fa5
	fmadd.d	$fa4, $fa1, $fa5, $fa4
	st.w	$a4, $a6, 0
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a4, $fa4
	addi.d	$a1, $a1, 4
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	bltu	$a7, $a3, .LBB22_6
.LBB22_7:                               # %.preheader
	blez	$a5, .LBB22_10
# %bb.8:                                # %.lr.ph76.preheader
	alsl.d	$a1, $a3, $a2, 2
	addi.d	$a1, $a1, 4
	vldi	$vr3, -928
	.p2align	4, , 16
.LBB22_9:                               # %.lr.ph76
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a3, 1
	movgr2fr.w	$fa4, $a4
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa4, $fa0, $fa4, $fa3
	fmul.d	$fa5, $fa2, $fa4
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$a2, $fa5
	movgr2fr.w	$fa5, $a2
	ffint.d.w	$fa5, $fa5
	fmadd.d	$fa4, $fa1, $fa5, $fa4
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a4, $fa4
	st.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	blt	$a3, $a0, .LBB22_9
.LBB22_10:                              # %._crit_edge
	ret
.Lfunc_end22:
	.size	mp_unsgn_idiv, .Lfunc_end22-mp_unsgn_idiv
                                        # -- End function
	.globl	mp_mul_csqu                     # -- Begin function mp_mul_csqu
	.p2align	5
	.type	mp_mul_csqu,@function
mp_mul_csqu:                            # @mp_mul_csqu
# %bb.0:
	fld.d	$fa0, $a1, 0
	vld	$vr1, $a1, 8
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a1, 0
	vfmul.d	$vr0, $vr1, $vr1
	ori	$a2, $zero, 3
	vst	$vr0, $a1, 8
	bge	$a2, $a0, .LBB23_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a3, $a1, 32
	.p2align	4, , 16
.LBB23_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a3, -8
	fneg.d	$fa2, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fst.d	$fa2, $a3, -8
	fadd.d	$fa1, $fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 16
	bltu	$a2, $a0, .LBB23_2
.LBB23_3:                               # %._crit_edge
	alsl.d	$a0, $a0, $a1, 3
	fld.d	$fa0, $a0, 8
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a0, 8
	ret
.Lfunc_end23:
	.size	mp_mul_csqu, .Lfunc_end23-mp_mul_csqu
                                        # -- End function
	.globl	mp_mul_d2i_test                 # -- Begin function mp_mul_d2i_test
	.p2align	5
	.type	mp_mul_d2i_test,@function
mp_mul_d2i_test:                        # @mp_mul_d2i_test
# %bb.0:
	addi.w	$a3, $a1, 1
	slli.d	$a4, $a3, 3
	fldx.d	$fa0, $a2, $a4
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr2, -928
	fmul.d	$fa2, $fa0, $fa2
	fneg.d	$fa3, $fa2
	fld.d	$fa4, $a2, 8
	movgr2fr.d	$fa0, $zero
	fcmp.clt.d	$fcc0, $fa2, $fa0
	fsel	$fa2, $fa2, $fa3, $fcc0
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $a2, $a4
	blez	$a1, .LBB24_6
# %bb.1:                                # %.lr.ph.preheader
	move	$a5, $zero
	move	$a1, $zero
	vldi	$vr0, -1024
	fdiv.d	$fa1, $fa0, $fa1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa2, $fa0
	frecip.d	$fa0, $fa2
	fmul.d	$fa3, $fa0, $fa0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a0, $a3, 1
	alsl.d	$a2, $a3, $a2, 3
	movgr2fr.d	$fa0, $zero
	vldi	$vr4, -928
	vldi	$vr5, -800
	ori	$a3, $zero, 2
	b	.LBB24_4
	.p2align	4, , 16
.LBB24_2:                               #   in Loop: Header=BB24_4 Depth=1
	fmov.d	$fa0, $fa6
.LBB24_3:                               #   in Loop: Header=BB24_4 Depth=1
	add.w	$a5, $a4, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -8
	bge	$a3, $a0, .LBB24_6
.LBB24_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa6, $a2, 0
	move	$a4, $a1
	movgr2fr.w	$fa7, $a5
	ffint.d.w	$fa7, $fa7
	fmadd.d	$fa6, $fa1, $fa6, $fa7
	fadd.d	$fa6, $fa6, $fa4
	fmul.d	$fa6, $fa3, $fa6
	ftintrz.w.d	$fa7, $fa6
	movfr2gr.s	$a1, $fa7
	addi.d	$a1, $a1, -1
	movgr2fr.w	$fa7, $a1
	ffint.d.w	$fa7, $fa7
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa6, $fa6, $fa2
	ftintrz.w.d	$fa7, $fa6
	movfr2gr.s	$a5, $fa7
	movgr2fr.w	$fa7, $a5
	ffint.d.w	$fa7, $fa7
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa6, $fa6, $fa2
	fadd.d	$fa7, $fa6, $fa5
	ftintrz.w.d	$fa6, $fa6
	movfr2gr.s	$a6, $fa6
	movgr2fr.w	$fa6, $a6
	ffint.d.w	$fa6, $fa6
	fsub.d	$fa6, $fa7, $fa6
	fcmp.clt.d	$fcc0, $fa0, $fa6
	bcnez	$fcc0, .LBB24_2
# %bb.5:                                #   in Loop: Header=BB24_4 Depth=1
	fneg.d	$fa6, $fa6
	fcmp.cule.d	$fcc0, $fa6, $fa0
	bceqz	$fcc0, .LBB24_2
	b	.LBB24_3
.LBB24_6:                               # %._crit_edge
	ret
.Lfunc_end24:
	.size	mp_mul_d2i_test, .Lfunc_end24-mp_mul_d2i_test
                                        # -- End function
	.globl	mp_mul_i2d                      # -- Begin function mp_mul_i2d
	.p2align	5
	.type	mp_mul_i2d,@function
mp_mul_i2d:                             # @mp_mul_i2d
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
	move	$fp, $a5
	move	$s1, $a4
	move	$s0, $a3
	move	$s2, $a1
	alsl.d	$s4, $a3, $a4, 2
	bge	$a3, $a0, .LBB25_2
# %bb.1:
	ld.w	$s3, $s4, 8
	srai.d	$a1, $a2, 1
	addi.d	$a3, $a1, 1
	sub.w	$a0, $a0, $s0
	slt	$a1, $a1, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	b	.LBB25_3
.LBB25_2:
	move	$s5, $zero
	move	$s3, $zero
.LBB25_3:
	ld.w	$a0, $s1, 0
	mul.d	$a0, $a0, $s3
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	alsl.d	$a0, $a2, $fp, 3
	fst.d	$fa0, $a0, 8
	bge	$s5, $a2, .LBB25_5
# %bb.4:                                # %.lr.ph.preheader
	sub.d	$a0, $s5, $a2
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $a2, $a0
	alsl.d	$a0, $a0, $fp, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_5:                               # %._crit_edge
	ori	$a0, $zero, 2
	blt	$s5, $a0, .LBB25_11
# %bb.6:
	bne	$s5, $a0, .LBB25_8
# %bb.7:                                # %.._crit_edge57_crit_edge
	move	$a0, $zero
	b	.LBB25_10
.LBB25_8:                               # %.lr.ph56.preheader
	move	$a0, $zero
	bstrpick.d	$a1, $s2, 31, 31
	add.w	$a1, $s2, $a1
	srai.d	$a1, $a1, 1
	addi.w	$a4, $s5, 1
	slli.d	$a2, $s0, 2
	alsl.d	$a2, $a4, $a2, 2
	add.d	$a2, $s1, $a2
	addi.d	$a3, $a4, 1
	alsl.d	$a4, $a4, $fp, 3
	addi.d	$a4, $a4, -8
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB25_9:                               # %.lr.ph56
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	sub.d	$a6, $a6, $a0
	addi.w	$a0, $a6, 0
	slt	$a0, $a0, $a1
	xori	$a7, $a0, 1
	sub.d	$a0, $zero, $a7
	maskeqz	$a7, $s2, $a7
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, -8
	blt	$a5, $a3, .LBB25_9
.LBB25_10:                              # %._crit_edge57
	ld.w	$a1, $s4, 12
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 16
.LBB25_11:
	ld.w	$a0, $s1, 4
	movgr2fr.w	$fa0, $s3
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 8
	sub.d	$a0, $a0, $s0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 0
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
.Lfunc_end25:
	.size	mp_mul_i2d, .Lfunc_end25-mp_mul_i2d
                                        # -- End function
	.globl	mp_mul_cmul                     # -- Begin function mp_mul_cmul
	.p2align	5
	.type	mp_mul_cmul,@function
mp_mul_cmul:                            # @mp_mul_cmul
# %bb.0:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a2, 8
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 8
	fld.d	$fa0, $a1, 16
	fld.d	$fa1, $a2, 16
	fmul.d	$fa0, $fa0, $fa1
	ori	$a3, $zero, 4
	fst.d	$fa0, $a2, 16
	blt	$a0, $a3, .LBB26_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a3, $a2, 32
	addi.d	$a4, $a1, 32
	ori	$a5, $zero, 3
	.p2align	4, , 16
.LBB26_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a4, -8
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a4, 0
	fld.d	$fa3, $a3, -8
	fneg.d	$fa4, $fa1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa4, $fa0, $fa3, $fa4
	fst.d	$fa4, $a3, -8
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a3, 0
	addi.d	$a5, $a5, 2
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bltu	$a5, $a0, .LBB26_2
.LBB26_3:                               # %._crit_edge
	slli.d	$a0, $a0, 3
	addi.d	$a0, $a0, 8
	fldx.d	$fa0, $a1, $a0
	fldx.d	$fa1, $a2, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $a0
	ret
.Lfunc_end26:
	.size	mp_mul_cmul, .Lfunc_end26-mp_mul_cmul
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mp_mul_d2i
.LCPI27_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
	.text
	.globl	mp_mul_d2i
	.p2align	5
	.type	mp_mul_d2i,@function
mp_mul_d2i:                             # @mp_mul_d2i
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a3
	move	$s2, $a2
	move	$s1, $a0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fs5, $fa0
	addi.w	$s3, $a2, 1
	slli.d	$a0, $s3, 3
	fldx.d	$fs0, $a3, $a0
	vldi	$vr3, -1024
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs1, $fa0
	fneg.d	$fa0, $fs0
	movgr2fr.d	$fs4, $zero
	fcmp.clt.d	$fcc0, $fs0, $fs4
	fsel	$fa0, $fs0, $fa0, $fcc0
	vldi	$vr1, -928
	fadd.d	$fs6, $fa0, $fa1
	fmul.d	$fa1, $fs5, $fa1
	fld.d	$fa2, $a3, 8
	fmul.d	$fs3, $fa1, $fa0
	frecip.d	$fs2, $fs1
	fcmp.cle.d	$fcc1, $fs1, $fs6
	fsub.d	$fa0, $fa2, $fs3
	fstx.d	$fa0, $a3, $a0
	movcf2gr	$a0, $fcc1
	add.w	$s4, $s3, $a0
	fst.d	$fs3, $a3, 8
	move	$a0, $s1
	bge	$s4, $s1, .LBB27_2
# %bb.1:                                # %.loopexit.loopexit
	addi.w	$a0, $s1, 1
	addi.w	$a1, $s4, 1
	slt	$a2, $s1, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$a1, $a2, $a1
	sub.d	$a1, $s1, $a1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 2
	sub.d	$a0, $a0, $a1
	alsl.d	$a0, $a0, $fp, 2
	addi.d	$a2, $a2, 4
	move	$a1, $zero
	movcf2gr	$a3, $fcc1
	st.d	$a3, $sp, 24
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vldi	$vr3, -1024
	ld.d	$a0, $sp, 24
	movgr2cf	$fcc1, $a0
	move	$a0, $s4
.LBB27_2:                               # %.loopexit
	fcmp.cult.d	$fcc0, $fs6, $fs1
	fdiv.d	$fa0, $fa3, $fs5
	movcf2gr	$a1, $fcc0
	add.w	$a1, $a0, $a1
	fmul.d	$fa1, $fs2, $fs2
	blt	$s3, $a1, .LBB27_6
# %bb.3:                                # %.lr.ph.preheader
	pcalau12i	$a2, %pc_hi20(.LCPI27_0)
	fld.d	$fa2, $a2, %pc_lo12(.LCPI27_0)
	alsl.d	$a2, $a1, $s0, 3
	movgr2fr.d	$fs4, $zero
	vldi	$vr3, -912
	.p2align	4, , 16
.LBB27_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa4, $a2, 0
	fmadd.d	$fs4, $fa3, $fa4, $fs4
	fmul.d	$fa3, $fs2, $fa3
	fcmp.clt.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB27_6
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB27_4 Depth=1
	move	$a3, $a1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bge	$s2, $a3, .LBB27_4
.LBB27_6:                               # %._crit_edge
	vldi	$vr2, -928
	fmadd.d	$fa3, $fa0, $fs4, $fa2
	fmul.d	$fa4, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa4
	movfr2gr.s	$a1, $fa3
	addi.d	$a2, $a1, -1
	movgr2fr.w	$fa3, $a2
	ffint.d.w	$fa3, $fa3
	fsub.d	$fa4, $fa4, $fa3
	fmadd.d	$fa2, $fs1, $fa4, $fa2
	ftintrz.w.d	$fa2, $fa2
	ori	$a1, $zero, 2
	movfr2gr.s	$a5, $fa2
	blt	$a0, $a1, .LBB27_9
# %bb.7:                                # %.lr.ph131.preheader
	slli.d	$a3, $a0, 3
	movcf2gr	$a4, $fcc1
	slli.d	$a4, $a4, 3
	sub.d	$a3, $a3, $a4
	add.d	$a3, $s0, $a3
	addi.d	$a4, $a0, 1
	alsl.d	$a0, $a0, $fp, 2
	addi.d	$a0, $a0, 4
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB27_8:                               # %.lr.ph131
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a3, 0
	movgr2fr.w	$fa4, $a5
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa3, $fa0, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa2
	fmul.d	$fa4, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa4
	movfr2gr.s	$a5, $fa3
	addi.d	$a6, $a5, -1
	movgr2fr.w	$fa3, $a6
	ffint.d.w	$fa3, $fa3
	fsub.d	$fa4, $fa4, $fa3
	fmul.d	$fa4, $fa4, $fs1
	ftintrz.w.d	$fa5, $fa4
	movfr2gr.s	$a5, $fa5
	movgr2fr.w	$fa5, $a5
	ffint.d.w	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fs1
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a7, $fa4
	st.w	$a7, $a0, 0
	add.w	$a5, $a2, $a5
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, -4
	move	$a2, $a6
	bltu	$a1, $a4, .LBB27_8
.LBB27_9:                               # %._crit_edge132
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa1, $fs1, $fa3, $fa1
	vldi	$vr2, -928
	fadd.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fs3, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc1
	fmul.d	$fa1, $fs2, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fneg.d	$fa2, $fs1
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $fp, 8
	blez	$a0, .LBB27_13
# %bb.10:
	ori	$a1, $zero, 2
	blt	$s1, $a1, .LBB27_19
# %bb.11:                               # %.lr.ph137.preheader
	addi.w	$a3, $s1, 1
	slti	$a2, $a3, 3
	ori	$a1, $zero, 3
	masknez	$a4, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	sub.w	$a2, $a3, $a2
	ori	$a4, $zero, 7
	bstrpick.d	$a5, $a3, 31, 0
	bgeu	$a2, $a4, .LBB27_14
# %bb.12:
	move	$a2, $a5
	b	.LBB27_17
.LBB27_13:
	movcf2gr	$a0, $fcc1
	b	.LBB27_20
.LBB27_14:                              # %vector.ph
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, 1
	bstrpick.d	$a2, $a3, 32, 3
	slli.d	$a4, $a2, 3
	sub.d	$a2, $a5, $a4
	alsl.d	$a5, $a5, $fp, 2
	addi.d	$a5, $a5, -16
	move	$a6, $a4
	.p2align	4, , 16
.LBB27_15:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vld	$vr1, $a5, -16
	vst	$vr0, $a5, 4
	vst	$vr1, $a5, -12
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB27_15
# %bb.16:                               # %middle.block
	beq	$a3, $a4, .LBB27_19
.LBB27_17:                              # %.lr.ph137.preheader162
	addi.d	$a3, $a2, 1
	alsl.d	$a2, $a2, $fp, 2
	.p2align	4, , 16
.LBB27_18:                              # %.lr.ph137
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	addi.d	$a5, $a2, -4
	addi.w	$a3, $a3, -1
	st.w	$a4, $a2, 0
	move	$a2, $a5
	blt	$a1, $a3, .LBB27_18
.LBB27_19:                              # %._crit_edge138
	st.w	$a0, $fp, 8
	movcf2gr	$a0, $fcc1
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
.LBB27_20:
	fld.d	$fa0, $s0, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$a0, $fa2
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	add.d	$a0, $a0, $a2
	fcmp.cule.d	$fcc0, $fs0, $fa1
	st.w	$a0, $fp, 4
	movcf2gr	$a0, $fcc0
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	st.w	$a0, $fp, 0
	bnez	$a1, .LBB27_22
# %bb.21:
	st.d	$zero, $fp, 0
.LBB27_22:
	fld.d	$fs6, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end27:
	.size	mp_mul_d2i, .Lfunc_end27-mp_mul_d2i
                                        # -- End function
	.globl	mp_mul_cmuladd                  # -- Begin function mp_mul_cmuladd
	.p2align	5
	.type	mp_mul_cmuladd,@function
mp_mul_cmuladd:                         # @mp_mul_cmuladd
# %bb.0:
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a2, 8
	fld.d	$fa2, $a3, 8
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a3, 8
	fld.d	$fa0, $a1, 16
	fld.d	$fa1, $a2, 16
	fld.d	$fa2, $a3, 16
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	ori	$a4, $zero, 4
	fst.d	$fa0, $a3, 16
	blt	$a0, $a4, .LBB28_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a4, $a2, 32
	addi.d	$a5, $a1, 32
	addi.d	$a6, $a3, 24
	ori	$a7, $zero, 3
	.p2align	4, , 16
.LBB28_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a4, 0
	fld.d	$fa1, $a5, 0
	vld	$vr2, $a4, -8
	fld.d	$fa3, $a5, -8
	fneg.d	$fa0, $fa0
	vreplvei.d	$vr1, $vr1, 0
	vreplvei.d	$vr4, $vr2, 0
	vextrins.d	$vr4, $vr0, 0
	vld	$vr0, $a6, 0
	vfmul.d	$vr1, $vr1, $vr4
	vreplvei.d	$vr3, $vr3, 0
	vfmadd.d	$vr1, $vr3, $vr2, $vr1
	vfadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $a6, 0
	addi.d	$a7, $a7, 2
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bltu	$a7, $a0, .LBB28_2
.LBB28_3:                               # %._crit_edge
	slli.d	$a0, $a0, 3
	addi.d	$a0, $a0, 8
	fldx.d	$fa0, $a1, $a0
	fldx.d	$fa1, $a2, $a0
	fldx.d	$fa2, $a3, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $a3, $a0
	ret
.Lfunc_end28:
	.size	mp_mul_cmuladd, .Lfunc_end28-mp_mul_cmuladd
                                        # -- End function
	.globl	mp_mulh                         # -- Begin function mp_mulh
	.p2align	5
	.type	mp_mulh,@function
mp_mulh:                                # @mp_mulh
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
	move	$fp, $a7
	move	$s4, $a6
	move	$s1, $a5
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	move	$s7, $a3
	move	$s8, $a2
	move	$s2, $a1
	move	$s3, $a0
	srai.d	$s0, $a5, 1
	blez	$a0, .LBB29_2
# %bb.1:
	ld.w	$s5, $s8, 8
	addi.d	$a0, $s0, 1
	slt	$a1, $s0, $s3
	masknez	$a2, $s3, $a1
	maskeqz	$a0, $a0, $a1
	or	$s6, $a0, $a2
	b	.LBB29_3
.LBB29_2:
	move	$s6, $zero
	move	$s5, $zero
.LBB29_3:
	ld.w	$a0, $s8, 0
	ld.d	$a1, $sp, 136
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 128
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	mul.d	$a0, $a0, $s5
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	alsl.d	$a0, $s1, $s4, 3
	fst.d	$fa0, $a0, 8
	bge	$s6, $s1, .LBB29_5
# %bb.4:                                # %.lr.ph.preheader.i
	sub.d	$a0, $s6, $s1
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s1, $a0
	alsl.d	$a0, $a0, $s4, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_5:                               # %._crit_edge.i
	ori	$a0, $zero, 2
	bstrpick.d	$a1, $s2, 31, 31
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	blt	$s6, $a0, .LBB29_11
# %bb.6:
	bne	$s6, $a0, .LBB29_8
# %bb.7:
	move	$a0, $zero
	b	.LBB29_10
.LBB29_8:                               # %.lr.ph56.preheader.i
	move	$a0, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.w	$a1, $s2, $a1
	srai.d	$a1, $a1, 1
	addi.w	$a4, $s6, 1
	addi.d	$a2, $a4, 1
	alsl.d	$a3, $a4, $s4, 3
	addi.d	$a3, $a3, -8
	alsl.d	$a4, $a4, $s8, 2
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB29_9:                               # %.lr.ph56.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	sub.d	$a6, $a6, $a0
	addi.w	$a0, $a6, 0
	slt	$a0, $a0, $a1
	xori	$a7, $a0, 1
	sub.d	$a0, $zero, $a7
	maskeqz	$a7, $s2, $a7
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, -4
	blt	$a5, $a2, .LBB29_9
.LBB29_10:                              # %._crit_edge57.i
	ld.w	$a1, $s8, 12
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s4, 16
.LBB29_11:                              # %mp_mul_i2d.exit
	movgr2fr.w	$fa0, $s5
	ld.w	$a0, $s8, 4
	ffint.d.w	$fa0, $fa0
	addi.d	$a2, $s4, 8
	fst.d	$fa0, $s4, 8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $s4, 0
	ori	$a1, $zero, 1
	move	$a0, $s1
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s8
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB29_13
# %bb.12:
	ld.w	$s5, $s7, 8
	addi.d	$a0, $s0, 1
	slt	$a1, $s0, $s3
	masknez	$a2, $s3, $a1
	maskeqz	$a0, $a0, $a1
	or	$s0, $a0, $a2
	b	.LBB29_14
.LBB29_13:
	move	$s0, $zero
	move	$s5, $zero
.LBB29_14:
	ld.w	$a0, $s7, 0
	mul.d	$a0, $a0, $s5
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	alsl.d	$a0, $s1, $fp, 3
	fst.d	$fa0, $a0, 8
	bge	$s0, $s1, .LBB29_16
# %bb.15:                               # %.lr.ph.preheader.i43
	sub.d	$a0, $s0, $s1
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s1, $a0
	alsl.d	$a0, $a0, $fp, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_16:                              # %._crit_edge.i31
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB29_22
# %bb.17:
	bne	$s0, $a0, .LBB29_19
# %bb.18:
	move	$a0, $zero
	b	.LBB29_21
.LBB29_19:                              # %.lr.ph56.preheader.i33
	move	$a0, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.w	$a1, $s2, $a1
	srai.d	$a1, $a1, 1
	addi.w	$a4, $s0, 1
	addi.d	$a2, $a4, 1
	alsl.d	$a3, $a4, $fp, 3
	addi.d	$a3, $a3, -8
	alsl.d	$a4, $a4, $s7, 2
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB29_20:                              # %.lr.ph56.i34
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	sub.d	$a6, $a6, $a0
	addi.w	$a0, $a6, 0
	slt	$a0, $a0, $a1
	xori	$a7, $a0, 1
	sub.d	$a0, $zero, $a7
	maskeqz	$a7, $s2, $a7
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, -4
	blt	$a5, $a2, .LBB29_20
.LBB29_21:                              # %._crit_edge57.i40
	ld.w	$a1, $s7, 12
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 16
.LBB29_22:                              # %mp_mul_i2d.exit47
	movgr2fr.w	$fa0, $s5
	ld.w	$a0, $s7, 4
	ffint.d.w	$fa0, $fa0
	addi.d	$s7, $fp, 8
	fst.d	$fa0, $fp, 8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 0
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $s7
	move	$a3, $s8
	move	$a4, $s6
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 0
	fld.d	$fa1, $fp, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 0
	fld.d	$fa0, $s4, 8
	fld.d	$fa1, $fp, 8
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 8
	fld.d	$fa0, $s4, 16
	fld.d	$fa1, $fp, 16
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 4
	fst.d	$fa0, $fp, 16
	blt	$s1, $a0, .LBB29_25
# %bb.23:                               # %.lr.ph.preheader.i49
	addi.d	$a0, $fp, 32
	addi.d	$a1, $s4, 32
	ori	$a2, $zero, 3
	.p2align	4, , 16
.LBB29_24:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a0, -8
	fneg.d	$fa4, $fa1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa4, $fa0, $fa3, $fa4
	fst.d	$fa4, $a0, -8
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a0, 0
	addi.d	$a2, $a2, 2
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bltu	$a2, $s1, .LBB29_24
.LBB29_25:                              # %mp_mul_cmul.exit
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 8
	fldx.d	$fa0, $s4, $a0
	fldx.d	$fa1, $fp, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $fp, $a0
	addi.w	$a1, $zero, -1
	move	$a0, $s1
	move	$a2, $s7
	move	$a3, $s8
	move	$a4, $s6
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $fp
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(mp_mul_d2i)
	jr	$t8
.Lfunc_end29:
	.size	mp_mulh, .Lfunc_end29-mp_mulh
                                        # -- End function
	.globl	mp_mulh_use_in1fft              # -- Begin function mp_mulh_use_in1fft
	.p2align	5
	.type	mp_mulh_use_in1fft,@function
mp_mulh_use_in1fft:                     # @mp_mulh_use_in1fft
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
	move	$fp, $a7
	move	$s1, $a6
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $a4
	move	$s8, $a3
	move	$s4, $a2
	move	$s2, $a1
	move	$s3, $a0
	bge	$a3, $a0, .LBB30_5
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a0, $s8, 32
	alsl.d	$a1, $s8, $s7, 2
	addi.d	$a1, $a1, 8
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	.p2align	4, , 16
.LBB30_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	bnez	$a3, .LBB30_6
# %bb.3:                                #   in Loop: Header=BB30_2 Depth=1
	add.d	$a0, $a0, $a2
	addi.w	$s8, $s8, 1
	addi.d	$a1, $a1, 4
	bne	$s3, $s8, .LBB30_2
# %bb.4:
	move	$s5, $zero
	move	$s0, $zero
	move	$s8, $s3
	b	.LBB30_7
.LBB30_5:
	move	$s5, $zero
	move	$s0, $zero
	b	.LBB30_7
.LBB30_6:
	srai.d	$a0, $a0, 30
	add.d	$a0, $s7, $a0
	ld.w	$s0, $a0, 8
	srai.d	$a0, $s1, 1
	addi.d	$a1, $a0, 1
	sub.w	$a2, $s3, $s8
	slt	$a0, $a0, $a2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s5, $a0, $a2
.LBB30_7:                               # %.loopexit
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 120
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s6, $sp, 112
	mul.d	$a0, $a0, $s0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	alsl.d	$a0, $s1, $fp, 3
	fst.d	$fa0, $a0, 8
	bge	$s5, $s1, .LBB30_9
# %bb.8:                                # %.lr.ph.preheader.i
	sub.d	$a0, $s5, $s1
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $s1, $a0
	alsl.d	$a0, $a0, $fp, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB30_9:                               # %._crit_edge.i
	ori	$a0, $zero, 2
	blt	$s5, $a0, .LBB30_15
# %bb.10:
	bne	$s5, $a0, .LBB30_12
# %bb.11:                               # %.._crit_edge57_crit_edge.i
	move	$a0, $zero
	b	.LBB30_14
.LBB30_12:                              # %.lr.ph56.preheader.i
	move	$a0, $zero
	bstrpick.d	$a1, $s2, 31, 31
	add.w	$a1, $s2, $a1
	srai.d	$a1, $a1, 1
	addi.w	$a4, $s5, 1
	addi.d	$a2, $a4, 1
	alsl.d	$a3, $a4, $fp, 3
	addi.d	$a3, $a3, -8
	slli.d	$a5, $s8, 2
	alsl.d	$a4, $a4, $a5, 2
	add.d	$a4, $s7, $a4
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB30_13:                              # %.lr.ph56.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	sub.d	$a6, $a6, $a0
	addi.w	$a0, $a6, 0
	slt	$a0, $a0, $a1
	xori	$a7, $a0, 1
	sub.d	$a0, $zero, $a7
	maskeqz	$a7, $s2, $a7
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, -4
	blt	$a5, $a2, .LBB30_13
.LBB30_14:                              # %._crit_edge57.i
	alsl.d	$a1, $s8, $s7, 2
	ld.w	$a1, $a1, 12
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 16
.LBB30_15:                              # %mp_mul_i2d.exit
	movgr2fr.w	$fa0, $s0
	ld.w	$a0, $s7, 4
	ffint.d.w	$fa0, $fa0
	addi.d	$s7, $fp, 8
	fst.d	$fa0, $fp, 8
	sub.d	$a0, $a0, $s8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 0
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $s7
	move	$a3, $s6
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 0
	fld.d	$fa1, $fp, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 0
	fld.d	$fa0, $s4, 8
	fld.d	$fa1, $fp, 8
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 8
	fld.d	$fa0, $s4, 16
	fld.d	$fa1, $fp, 16
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 4
	fst.d	$fa0, $fp, 16
	blt	$s1, $a0, .LBB30_18
# %bb.16:                               # %.lr.ph.preheader.i27
	addi.d	$a0, $fp, 32
	addi.d	$a1, $s4, 32
	ori	$a2, $zero, 3
	.p2align	4, , 16
.LBB30_17:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a0, -8
	fneg.d	$fa4, $fa1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa4, $fa0, $fa3, $fa4
	fst.d	$fa4, $a0, -8
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a0, 0
	addi.d	$a2, $a2, 2
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bltu	$a2, $s1, .LBB30_17
.LBB30_18:                              # %mp_mul_cmul.exit
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 8
	fldx.d	$fa0, $s4, $a0
	fldx.d	$fa1, $fp, $a0
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $fp, $a0
	addi.w	$a1, $zero, -1
	move	$a0, $s1
	move	$a2, $s7
	move	$a3, $s6
	move	$a4, $s0
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $fp
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(mp_mul_d2i)
	jr	$t8
.Lfunc_end30:
	.size	mp_mulh_use_in1fft, .Lfunc_end30-mp_mulh_use_in1fft
                                        # -- End function
	.globl	mp_squh_use_in1fft              # -- Begin function mp_squh_use_in1fft
	.p2align	5
	.type	mp_squh_use_in1fft,@function
mp_squh_use_in1fft:                     # @mp_squh_use_in1fft
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	fld.d	$fa0, $a2, 0
	move	$s1, $a4
	move	$s0, $a3
	move	$s2, $a1
	move	$s3, $a0
	vld	$vr1, $a2, 8
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a2, 0
	addi.d	$a2, $a2, 8
	vfmul.d	$vr0, $vr1, $vr1
	ori	$a0, $zero, 3
	vst	$vr0, $fp, 8
	bge	$a0, $a4, .LBB31_3
# %bb.1:                                # %.lr.ph.preheader.i
	addi.d	$a1, $fp, 32
	.p2align	4, , 16
.LBB31_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, -8
	fneg.d	$fa2, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fst.d	$fa2, $a1, -8
	fadd.d	$fa1, $fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, 16
	bltu	$a0, $s1, .LBB31_2
.LBB31_3:                               # %mp_mul_csqu.exit
	alsl.d	$a0, $s1, $fp, 3
	fld.d	$fa0, $a0, 8
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a0, 8
	addi.w	$a1, $zero, -1
	move	$a0, $s1
	move	$a3, $a5
	move	$a4, $a6
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(mp_mul_d2i)
	jr	$t8
.Lfunc_end31:
	.size	mp_squh_use_in1fft, .Lfunc_end31-mp_squh_use_in1fft
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mp_get_nfft_init
.LCPI32_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
	.text
	.globl	mp_get_nfft_init
	.p2align	5
	.type	mp_get_nfft_init,@function
mp_get_nfft_init:                       # @mp_get_nfft_init
# %bb.0:
	movgr2fr.w	$fa1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI32_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI32_0)
	ffint.d.w	$fa1, $fa1
	ori	$a0, $zero, 1
	vldi	$vr2, -912
	.p2align	4, , 16
.LBB32_1:                               # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa1, $fa1
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cule.d	$fcc0, $fa2, $fa3
	slli.w	$a0, $a0, 1
	bcnez	$fcc0, .LBB32_3
# %bb.2:                                #   in Loop: Header=BB32_1 Depth=1
	blt	$a0, $a1, .LBB32_1
.LBB32_3:
	ret
.Lfunc_end32:
	.size	mp_get_nfft_init, .Lfunc_end32-mp_get_nfft_init
                                        # -- End function
	.globl	mp_inv_init                     # -- Begin function mp_inv_init
	.p2align	5
	.type	mp_inv_init,@function
mp_inv_init:                            # @mp_inv_init
# %bb.0:
	ld.w	$a4, $a2, 0
	st.w	$a4, $a3, 0
	ld.w	$a4, $a2, 4
	sub.d	$a4, $zero, $a4
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	blez	$a0, .LBB33_9
# %bb.1:                                # %.lr.ph.preheader.i
	frecip.d	$fa2, $fa0
	addi.d	$a5, $a0, 1
	alsl.d	$a2, $a0, $a2, 2
	addi.d	$a2, $a2, 4
	movgr2fr.d	$fa1, $zero
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB33_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 0
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa1, $fa2, $fa1, $fa3
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, -4
	bltu	$a6, $a5, .LBB33_2
# %bb.3:                                # %mp_unexp_mp2d.exit
	frecip.d	$fa1, $fa1
	vldi	$vr2, -912
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB33_5
	.p2align	4, , 16
.LBB33_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a4, $a4, -1
	bcnez	$fcc0, .LBB33_4
.LBB33_5:                               # %._crit_edge
	st.w	$a4, $a3, 4
	blez	$a0, .LBB33_8
# %bb.6:                                # %.lr.ph.i16
	addi.d	$a2, $a3, 8
	addi.w	$a3, $a1, -1
	.p2align	4, , 16
.LBB33_7:                               # =>This Inner Loop Header: Depth=1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a4, $fa2
	slt	$a5, $a4, $a1
	movgr2cf	$fcc0, $a5
	fsel	$fa1, $fa0, $fa1, $fcc0
	slt	$a5, $a4, $a3
	masknez	$a6, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fa0
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB33_7
.LBB33_8:                               # %mp_unexp_d2mp.exit
	ret
.LBB33_9:
	movgr2fr.d	$fa1, $zero
	frecip.d	$fa1, $fa1
	vldi	$vr2, -912
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB33_4
	b	.LBB33_5
.Lfunc_end33:
	.size	mp_inv_init, .Lfunc_end33-mp_inv_init
                                        # -- End function
	.globl	mp_inv_newton                   # -- Begin function mp_inv_newton
	.p2align	5
	.type	mp_inv_newton,@function
mp_inv_newton:                          # @mp_inv_newton
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a6
	ld.d	$t1, $sp, 176
	ld.d	$t0, $sp, 168
	ld.d	$a6, $sp, 160
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	srai.d	$s1, $fp, 1
	addi.d	$a6, $s1, 1
	move	$s0, $a5
	move	$s2, $a3
	move	$a3, $a2
	move	$s3, $a1
	move	$s4, $a0
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bge	$a6, $a0, .LBB34_10
# %bb.1:
	addi.d	$s8, $s1, 3
	blt	$s4, $s8, .LBB34_3
# %bb.2:                                # %.lr.ph.preheader.i
	addi.w	$a0, $s4, 1
	nor	$a1, $s1, $zero
	add.d	$a1, $s4, $a1
	addi.d	$a1, $a1, -2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 2
	sub.d	$a0, $a0, $a1
	alsl.d	$a0, $a0, $s2, 2
	addi.d	$a2, $a2, 4
	move	$a1, $zero
	move	$s5, $t0
	move	$s7, $t1
	move	$s6, $a4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a4, $s6
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	move	$t1, $s7
	move	$t0, $s5
.LBB34_3:                               # %._crit_edge.i
	slli.d	$a0, $s8, 2
	ldx.w	$a1, $s2, $a0
	slli.w	$a1, $a1, 1
	stx.w	$zero, $s2, $a0
	blt	$a1, $s3, .LBB34_10
# %bb.4:
	bltz	$s1, .LBB34_8
# %bb.5:                                # %.lr.ph44.preheader.i
	ori	$a0, $zero, 2
	.p2align	4, , 16
.LBB34_6:                               # %.lr.ph44.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s8, $s8, -1
	slli.d	$a1, $s8, 2
	ldx.w	$a1, $s2, $a1
	addi.w	$a2, $a1, 1
	alsl.d	$a1, $s8, $s2, 2
	blt	$a2, $s3, .LBB34_9
# %bb.7:                                #   in Loop: Header=BB34_6 Depth=1
	st.w	$zero, $a1, 0
	blt	$a0, $s8, .LBB34_6
.LBB34_8:                               # %.critedge.i
	ld.w	$a0, $s2, 4
	ori	$a1, $zero, 1
	st.w	$a1, $s2, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 4
	b	.LBB34_10
.LBB34_9:
	st.w	$a2, $a1, 0
.LBB34_10:                              # %mp_round.exit
	move	$s7, $t1
	st.d	$t1, $sp, 8
	move	$s5, $t0
	st.d	$t0, $sp, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$s8, $a4
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	move	$a5, $fp
	move	$s6, $a7
	move	$a6, $a7
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mp_mulh)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $s0, 0
	ori	$a1, $zero, 2
	st.w	$a0, $s0, 8
	blt	$s4, $a1, .LBB34_12
# %bb.11:                               # %.lr.ph.preheader.i64
	addi.d	$a0, $s0, 12
	slli.d	$a1, $s4, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB34_12:                              # %mp_load_1.exit
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a0, $s4, $s1
	bstrpick.d	$a1, $s4, 31, 31
	add.w	$a1, $s4, $a1
	srai.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$fp, $a1, $a0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s0
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $s1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	move	$a5, $s8
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $s1
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	move	$a7, $s6
	pcaddu18i	$ra, %call36(mp_mulh_use_in1fft)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s0
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s0, 0
	sub.w	$a0, $zero, $a0
	sltui	$a1, $a1, 1
	addi.w	$a2, $s1, 1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$s8, $a2, $a0
	st.d	$s7, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $fp
	move	$a1, $s3
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $s0
	move	$a6, $s1
	move	$a7, $s6
	pcaddu18i	$ra, %call36(mp_mulh_use_in1fft)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end34:
	.size	mp_inv_newton, .Lfunc_end34-mp_inv_newton
                                        # -- End function
	.globl	mp_sqrt_init                    # -- Begin function mp_sqrt_init
	.p2align	5
	.type	mp_sqrt_init,@function
mp_sqrt_init:                           # @mp_sqrt_init
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	ori	$a6, $zero, 1
	st.w	$a6, $a3, 0
	st.w	$a6, $a4, 0
	ld.w	$a5, $a2, 4
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs0, $fa0
	blez	$a0, .LBB35_3
# %bb.1:                                # %.lr.ph.preheader.i
	frecip.d	$fa1, $fs0
	addi.d	$a7, $a0, 1
	alsl.d	$a2, $a0, $a2, 2
	addi.d	$a2, $a2, 4
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB35_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a2, 0
	movgr2fr.w	$fa2, $t0
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	addi.d	$a7, $a7, -1
	addi.d	$a2, $a2, -4
	bltu	$a6, $a7, .LBB35_2
	b	.LBB35_4
.LBB35_3:
	movgr2fr.d	$fa0, $zero
.LBB35_4:                               # %mp_unexp_mp2d.exit
	andi	$a2, $a5, 1
	fmul.d	$fa1, $fa0, $fs0
	movgr2cf	$fcc0, $a2
	fsel	$fa1, $fa0, $fa1, $fcc0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	srai.d	$fp, $a5, 1
	bceqz	$fcc0, .LBB35_14
.LBB35_5:                               # %mp_unexp_mp2d.exit.split
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fmul.d	$fa1, $fa0, $fs0
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a2, $fcc0
	sub.d	$a5, $fp, $a2
	st.w	$a5, $a3, 4
	addi.w	$a2, $a1, -1
	blez	$a0, .LBB35_8
# %bb.6:                                # %.lr.ph.i38
	addi.d	$a3, $a3, 8
	move	$a6, $a0
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB35_7:                               # =>This Inner Loop Header: Depth=1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a7, $fa2
	slt	$t0, $a7, $a1
	movgr2cf	$fcc0, $t0
	fsel	$fa1, $fs0, $fa1, $fcc0
	slt	$t0, $a7, $a2
	masknez	$t1, $a2, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fs0
	st.w	$a7, $a3, 0
	addi.d	$a6, $a6, -1
	addi.d	$a3, $a3, 4
	bnez	$a6, .LBB35_7
.LBB35_8:                               # %mp_unexp_d2mp.exit
	frecip.d	$fa0, $fa0
	vldi	$vr1, -912
	fcmp.cule.d	$fcc0, $fa1, $fa0
	sub.d	$a3, $zero, $a5
	bcnez	$fcc0, .LBB35_10
	.p2align	4, , 16
.LBB35_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa0, $fa0, $fs0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a3, $a3, -1
	bcnez	$fcc0, .LBB35_9
.LBB35_10:                              # %._crit_edge
	st.w	$a3, $a4, 4
	blez	$a0, .LBB35_13
# %bb.11:                               # %.lr.ph.i41
	addi.d	$a3, $a4, 8
	.p2align	4, , 16
.LBB35_12:                              # =>This Inner Loop Header: Depth=1
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a4, $fa1
	slt	$a5, $a4, $a1
	movgr2cf	$fcc0, $a5
	fsel	$fa0, $fs0, $fa0, $fcc0
	slt	$a5, $a4, $a2
	masknez	$a6, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
	st.w	$a4, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB35_12
.LBB35_13:                              # %mp_unexp_d2mp.exit50
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB35_14:                              # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$s0, $a1
	move	$s2, $a0
	move	$s1, $a4
	move	$s3, $a3
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a3, $s3
	move	$a4, $s1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB35_5
.Lfunc_end35:
	.size	mp_sqrt_init, .Lfunc_end35-mp_sqrt_init
                                        # -- End function
	.globl	mp_sqrt_newton                  # -- Begin function mp_sqrt_newton
	.p2align	5
	.type	mp_sqrt_newton,@function
mp_sqrt_newton:                         # @mp_sqrt_newton
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
	move	$s4, $a7
	move	$s3, $a6
	move	$fp, $a5
	move	$s6, $a4
	move	$s0, $a3
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$s1, $a1
	ld.d	$a4, $sp, 232
	srai.d	$s7, $a6, 1
	addi.d	$a5, $s7, 1
	ori	$a2, $zero, 2
	slt	$a1, $a2, $s7
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s7, $a1
	or	$s8, $a1, $a2
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	srai.d	$a1, $a1, 1
	addi.d	$a3, $a1, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	sub.w	$a1, $a0, $a5
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a3, $a2
	or	$s5, $a0, $a1
	srli.d	$a0, $s8, 1
	addi.d	$a1, $a0, 1
	addi.w	$a2, $s5, 1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bge	$a1, $s5, .LBB36_9
# %bb.1:
	addi.w	$s2, $a0, 3
	bltu	$s5, $s2, .LBB36_3
# %bb.2:                                # %.lr.ph.preheader.i
	nor	$a0, $a0, $zero
	add.d	$a0, $s5, $a0
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	alsl.d	$a0, $a0, $s6, 2
	addi.d	$a2, $a1, 4
	move	$a1, $zero
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	move	$s7, $a4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a4, $s7
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
.LBB36_3:                               # %._crit_edge.i
	slli.d	$a0, $s2, 2
	ldx.w	$a1, $s6, $a0
	slli.w	$a1, $a1, 1
	stx.w	$zero, $s6, $a0
	blt	$a1, $s1, .LBB36_9
# %bb.4:
	ori	$a0, $zero, 2
	.p2align	4, , 16
.LBB36_5:                               # %.lr.ph44.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s2, $s2, -1
	slli.d	$a1, $s2, 2
	ldx.w	$a1, $s6, $a1
	addi.w	$a2, $a1, 1
	alsl.d	$a1, $s2, $s6, 2
	blt	$a2, $s1, .LBB36_8
# %bb.6:                                #   in Loop: Header=BB36_5 Depth=1
	st.w	$zero, $a1, 0
	blt	$a0, $s2, .LBB36_5
# %bb.7:                                # %.critedge.i
	ld.w	$a0, $s6, 4
	ori	$a1, $zero, 1
	st.w	$a1, $s6, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 4
	b	.LBB36_9
.LBB36_8:
	st.w	$a2, $a1, 0
.LBB36_9:                               # %mp_round.exit
	ld.d	$a7, $sp, 224
	ld.w	$a0, $a4, 0
	ld.d	$a6, $sp, 216
	addi.d	$a2, $s4, 8
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bne	$a0, $s8, .LBB36_14
# %bb.10:
	fld.d	$fa0, $s4, 0
	vld	$vr1, $s4, 8
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $s4, 0
	vfmul.d	$vr0, $vr1, $vr1
	ori	$a0, $zero, 4
	vst	$vr0, $s4, 8
	blt	$s7, $a0, .LBB36_13
# %bb.11:                               # %.lr.ph.i.i.preheader
	addi.d	$a0, $s4, 32
	ori	$a1, $zero, 3
	.p2align	4, , 16
.LBB36_12:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fneg.d	$fa2, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fst.d	$fa2, $a0, -8
	fadd.d	$fa1, $fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, 16
	bltu	$a1, $s8, .LBB36_12
.LBB36_13:                              # %mp_squh_use_in1fft.exit
	alsl.d	$a0, $s8, $s4, 3
	fld.d	$fa0, $a0, 8
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a0, 8
	addi.w	$a1, $zero, -1
	move	$a0, $s8
	move	$a3, $a6
	move	$a4, $a7
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s8
	move	$a3, $s4
	move	$a4, $fp
	pcaddu18i	$ra, %call36(mp_mul_d2i)
	jirl	$ra, $ra, 0
	b	.LBB36_15
.LBB36_14:
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $fp
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(mp_squh)
	jirl	$ra, $ra, 0
.LBB36_15:
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 208
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	nor	$a0, $s7, $zero
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB36_25
# %bb.16:
	addi.d	$s8, $s7, 3
	blt	$s2, $s8, .LBB36_18
# %bb.17:                               # %.lr.ph.preheader.i103
	addi.w	$a0, $s2, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $s2, $a1
	addi.d	$a1, $a1, -2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 2
	sub.d	$a0, $a0, $a1
	alsl.d	$a0, $a0, $s0, 2
	addi.d	$a2, $a2, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB36_18:                              # %._crit_edge.i105
	slli.d	$a0, $s8, 2
	ldx.w	$a1, $s0, $a0
	slli.w	$a1, $a1, 1
	stx.w	$zero, $s0, $a0
	blt	$a1, $s1, .LBB36_25
# %bb.19:
	bltz	$s7, .LBB36_23
# %bb.20:                               # %.lr.ph44.preheader.i
	ori	$a0, $zero, 2
	.p2align	4, , 16
.LBB36_21:                              # %.lr.ph44.i108
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s8, $s8, -1
	slli.d	$a1, $s8, 2
	ldx.w	$a1, $s0, $a1
	addi.w	$a2, $a1, 1
	alsl.d	$a1, $s8, $s0, 2
	blt	$a2, $s1, .LBB36_24
# %bb.22:                               #   in Loop: Header=BB36_21 Depth=1
	st.w	$zero, $a1, 0
	blt	$a0, $s8, .LBB36_21
.LBB36_23:                              # %.critedge.i107
	ld.w	$a0, $s0, 4
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 4
	b	.LBB36_25
.LBB36_24:
	st.w	$a2, $a1, 0
.LBB36_25:                              # %mp_round.exit110
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $fp
	move	$a5, $s3
	move	$a6, $s4
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mp_mulh)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $fp
	move	$a4, $fp
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 0
	vld	$vr1, $s4, 8
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $s4, 0
	vfmul.d	$vr0, $vr1, $vr1
	ori	$a0, $zero, 3
	vst	$vr0, $s4, 8
	bge	$a0, $s3, .LBB36_28
# %bb.26:                               # %.lr.ph.preheader.i.i114
	addi.d	$a1, $s4, 32
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB36_27:                              # %.lr.ph.i.i115
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, -8
	fneg.d	$fa2, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fst.d	$fa2, $a1, -8
	fadd.d	$fa1, $fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, 16
	bltu	$a0, $s3, .LBB36_27
	b	.LBB36_29
.LBB36_28:                              # %.._crit_edge_crit_edge.i.i111
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
.LBB36_29:                              # %mp_squh_use_in1fft.exit118
	alsl.d	$a0, $s3, $s4, 3
	fld.d	$fa0, $a0, 8
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a0, 8
	addi.w	$a1, $zero, -1
	move	$a0, $s3
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rdft)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $fp
	pcaddu18i	$ra, %call36(mp_mul_d2i)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s8
	move	$a3, $fp
	move	$a4, $fp
	pcaddu18i	$ra, %call36(mp_sub)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 4
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 4
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a0, $s8, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bge	$a0, $s5, .LBB36_39
# %bb.30:
	addi.d	$s8, $s7, 3
	blt	$s5, $s8, .LBB36_32
# %bb.31:                               # %.lr.ph.preheader.i120
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $s5, $a0
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	alsl.d	$a0, $a0, $s6, 2
	addi.d	$a2, $a1, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB36_32:                              # %._crit_edge.i122
	slli.d	$a0, $s8, 2
	ldx.w	$a1, $s6, $a0
	slli.w	$a1, $a1, 1
	stx.w	$zero, $s6, $a0
	blt	$a1, $s1, .LBB36_39
# %bb.33:
	bltz	$s7, .LBB36_37
# %bb.34:                               # %.lr.ph44.preheader.i125
	ori	$a0, $zero, 2
	.p2align	4, , 16
.LBB36_35:                              # %.lr.ph44.i126
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s8, $s8, -1
	slli.d	$a1, $s8, 2
	ldx.w	$a1, $s6, $a1
	addi.w	$a2, $a1, 1
	alsl.d	$a1, $s8, $s6, 2
	blt	$a2, $s1, .LBB36_38
# %bb.36:                               #   in Loop: Header=BB36_35 Depth=1
	st.w	$zero, $a1, 0
	blt	$a0, $s8, .LBB36_35
.LBB36_37:                              # %.critedge.i124
	ld.w	$a0, $s6, 4
	ori	$a1, $zero, 1
	st.w	$a1, $s6, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 4
	b	.LBB36_39
.LBB36_38:
	st.w	$a2, $a1, 0
.LBB36_39:                              # %mp_round.exit128
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $fp
	move	$a4, $fp
	move	$a5, $s3
	move	$a6, $s4
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mp_mulh)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	ld.w	$a0, $fp, 8
	ld.w	$a2, $fp, 4
	addi.d	$a1, $a0, -1
	sltui	$a4, $a1, 1
	sub.d	$a1, $zero, $a4
	sub.d	$a2, $a2, $a4
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	sub.w	$a5, $a3, $a4
	ori	$a3, $zero, 2
	st.w	$a2, $fp, 4
	blt	$a5, $a3, .LBB36_42
# %bb.40:                               # %.lr.ph.preheader.i129
	addi.d	$a2, $fp, 8
	add.d	$a5, $s5, $a1
	addi.d	$a5, $a5, 2
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a3, $a3, $a5
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB36_41:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $a2, $a4
	and	$a1, $a1, $s1
	add.w	$a5, $a5, $a1
	andi	$a1, $a5, 1
	sub.d	$a1, $zero, $a1
	srli.d	$a5, $a5, 1
	st.w	$a5, $a2, 0
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB36_41
.LBB36_42:                              # %._crit_edge.i130
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB36_44
# %bb.43:
	and	$a0, $a1, $s1
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	stx.w	$a0, $fp, $a1
.LBB36_44:                              # %mp_idiv_2.exit
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	addi.w	$a1, $s3, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	slt	$a3, $a4, $a3
	add.w	$a2, $a2, $a3
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s3, $a0, $a2
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(mp_add)
	jirl	$ra, $ra, 0
	move	$a0, $s3
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
.Lfunc_end36:
	.size	mp_sqrt_newton, .Lfunc_end36-mp_sqrt_newton
                                        # -- End function
	.globl	mp_unexp_mp2d                   # -- Begin function mp_unexp_mp2d
	.p2align	5
	.type	mp_unexp_mp2d,@function
mp_unexp_mp2d:                          # @mp_unexp_mp2d
# %bb.0:
	blez	$a0, .LBB37_4
# %bb.1:                                # %.lr.ph.preheader
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	frecip.d	$fa1, $fa0
	addi.d	$a1, $a0, 1
	alsl.d	$a0, $a0, $a2, 2
	addi.d	$a0, $a0, -4
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB37_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, -4
	bltu	$a2, $a1, .LBB37_2
# %bb.3:                                # %._crit_edge
	ret
.LBB37_4:
	movgr2fr.d	$fa0, $zero
	ret
.Lfunc_end37:
	.size	mp_unexp_mp2d, .Lfunc_end37-mp_unexp_mp2d
                                        # -- End function
	.globl	mp_unexp_d2mp                   # -- Begin function mp_unexp_d2mp
	.p2align	5
	.type	mp_unexp_d2mp,@function
mp_unexp_d2mp:                          # @mp_unexp_d2mp
# %bb.0:
	blez	$a0, .LBB38_3
# %bb.1:                                # %.lr.ph
	addi.w	$a3, $a1, -1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	.p2align	4, , 16
.LBB38_2:                               # =>This Inner Loop Header: Depth=1
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$a4, $fa2
	slt	$a5, $a4, $a1
	movgr2cf	$fcc0, $a5
	fsel	$fa0, $fa1, $fa0, $fcc0
	slt	$a5, $a4, $a3
	masknez	$a6, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB38_2
.LBB38_3:                               # %._crit_edge
	ret
.Lfunc_end38:
	.size	mp_unexp_d2mp, .Lfunc_end38-mp_unexp_d2mp
                                        # -- End function
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

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"r"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ERROR: Could not open indata file.\n"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d"
	.size	.L.str.7, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Allocation Failure!\n"
	.size	.L.str.9, 21

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"nfft= %d\nradix= %d\n"
	.size	.L.str.10, 20

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"calculating %d digits of PI...\n"
	.size	.L.str.11, 32

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"0.125"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"1"
	.size	.L.str.13, 2

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"0.625"
	.size	.L.str.14, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"precision= %d\n"
	.size	.L.str.16, 15

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"floating point operation: %g op.\n"
	.size	.L.str.18, 34

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"PI calculation to estimate the FFT benchmarks"
	.size	.Lstr, 46

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"initializing..."
	.size	.Lstr.1, 16

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"AGM iteration"
	.size	.Lstr.2, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
