	.file	"whetstone.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 248                  # 8-byte Folded Spill
	ori	$a2, $zero, 2
	lu12i.w	$a3, 24
	blt	$a0, $a2, .LBB0_7
# %bb.1:                                # %sub_0.preheader
	move	$a2, $zero
	addi.d	$fp, $a1, 8
	addi.d	$s0, $a0, -1
	ori	$a0, $a3, 1696
	ori	$s1, $zero, 99
	ori	$s2, $zero, 45
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	blez	$a0, .LBB0_37
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	beqz	$s0, .LBB0_8
.LBB0_4:                                # %sub_0
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.bu	$a3, $a1, 0
	move	$s3, $a2
	ori	$a2, $zero, 1
	beq	$a3, $s1, .LBB0_3
# %bb.5:                                # %sub_0
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$a3, $s2, .LBB0_2
# %bb.6:                                # %.tail
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a3, $a1, 1
	bne	$a3, $s1, .LBB0_2
	b	.LBB0_3
.LBB0_7:
	ori	$a0, $a3, 1696
	ori	$a1, $zero, 1
	b	.LBB0_9
.LBB0_8:                                # %.preheader.loopexit
	sltui	$a1, $a2, 1
.LBB0_9:                                # %.preheader
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a0, 1
	slli.d	$s3, $a1, 2
	ori	$a1, $zero, 14
	mul.d	$s1, $a0, $a1
	ori	$a1, $zero, 345
	mul.d	$s7, $a0, $a1
	ori	$a1, $zero, 210
	mul.d	$a1, $a0, $a1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a3, $a0, 5
	ori	$a1, $zero, 899
	mul.d	$a1, $a0, $a1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$a1, $zero, 616
	mul.d	$a4, $a0, $a1
	ori	$a1, $zero, 93
	mul.d	$a5, $a0, $a1
	ori	$a2, $zero, 1
	slt	$a0, $a2, $s3
	masknez	$a1, $a2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	slt	$a0, $a2, $s1
	maskeqz	$a1, $s1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slt	$a0, $a2, $s7
	maskeqz	$a1, $s7, $a0
	masknez	$a0, $a2, $a0
	or	$a6, $a1, $a0
	slt	$a0, $a2, $a3
	masknez	$a1, $a2, $a0
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slt	$a0, $a2, $a4
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	maskeqz	$a1, $a4, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	slt	$a0, $a2, $a5
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	maskeqz	$a1, $a5, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a6, 62, 4
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	srli.d	$a0, $a6, 4
	ori	$a1, $zero, 1
	bstrins.d	$a1, $a0, 62, 4
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	andi	$a0, $a6, 12
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a6, 62, 2
	slli.d	$a1, $a0, 2
	srli.d	$a0, $a6, 2
	ori	$a2, $zero, 1
	bstrins.d	$a2, $a0, 62, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $a1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a6, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(T)
	lu12i.w	$a0, 149317
	ori	$a0, $a0, 911
	lu32i.d	$a0, -105
	lu52i.d	$a0, $a0, 1021
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 301989
	ori	$a0, $a0, 3637
	lu32i.d	$a0, 524
	lu52i.d	$a0, $a0, 1022
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu52i.d	$s8, $zero, -1025
	ori	$a0, $zero, 0
	lu32i.d	$a0, -524288
	lu52i.d	$a0, $a0, 1025
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(J)
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %._crit_edge267
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.w	$a2, $s6, %pc_lo12(J)
	ld.w	$a3, $s1, %pc_lo12(K)
	movfr2gr.d	$a4, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $a4
	move	$a6, $a4
	move	$a7, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_35
.LBB0_11:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s5, %pc_lo12(T)
	pcalau12i	$a1, %pc_hi20(T1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(T1)
	pcalau12i	$s0, %pc_hi20(T2)
	lu52i.d	$a0, $zero, 1024
	st.d	$a0, $s0, %pc_lo12(T2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	lu52i.d	$a4, $zero, 1023
	move	$a5, $s8
	move	$a6, $s8
	move	$a7, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa3, $s5, %pc_lo12(T)
	vldi	$vr0, -784
	vldi	$vr1, -912
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	vldi	$vr2, -784
	vldi	$vr4, -784
	.p2align	4, , 16
.LBB0_12:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa1, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fsub.d	$fa1, $fa1, $fa4
	fmul.d	$fa1, $fa1, $fa3
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa4, $fa0
	fmul.d	$fa0, $fa3, $fa0
	fsub.d	$fa5, $fa1, $fa0
	fadd.d	$fa2, $fa2, $fa5
	fadd.d	$fa2, $fa4, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fsub.d	$fa5, $fa0, $fa1
	fadd.d	$fa5, $fa5, $fa2
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$a0, $a0, -1
	fmul.d	$fa4, $fa3, $fa4
	bnez	$a0, .LBB0_12
# %bb.13:                               # %.lr.ph211
                                        #   in Loop: Header=BB0_11 Depth=1
	pcalau12i	$a0, %pc_hi20(E1)
	addi.d	$s2, $a0, %pc_lo12(E1)
	fst.d	$fa1, $s2, 8
	fst.d	$fa0, $s2, 16
	fst.d	$fa2, $s2, 24
	fst.d	$fa4, $s2, 32
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	movfr2gr.d	$a7, $fa4
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $s2, 32
	fld.d	$fa3, $s2, 24
	fld.d	$fa4, $s2, 16
	fld.d	$fa5, $s2, 8
	fld.d	$fa0, $s5, %pc_lo12(T)
	fld.d	$fa1, $s0, %pc_lo12(T2)
	ori	$a0, $zero, 6
	st.w	$a0, $s6, %pc_lo12(J)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_14:                               # %PA.exit
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa5, $fa4, $fa5
	fadd.d	$fa5, $fa3, $fa5
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa0, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa1
	fadd.d	$fa5, $fa4, $fa5
	fadd.d	$fa5, $fa3, $fa5
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa0, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa1
	fadd.d	$fa5, $fa4, $fa5
	fadd.d	$fa5, $fa3, $fa5
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa0, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa1
	fadd.d	$fa5, $fa4, $fa5
	fadd.d	$fa5, $fa3, $fa5
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa0, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa1
	fadd.d	$fa5, $fa4, $fa5
	fadd.d	$fa5, $fa3, $fa5
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa0, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa1
	fadd.d	$fa5, $fa4, $fa5
	fadd.d	$fa5, $fa3, $fa5
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa0, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	addi.d	$a0, $a0, -1
	fdiv.d	$fa2, $fa2, $fa1
	bnez	$a0, .LBB0_14
# %bb.15:                               # %iter.check
                                        #   in Loop: Header=BB0_11 Depth=1
	fst.d	$fa5, $s2, 8
	fst.d	$fa4, $s2, 16
	fst.d	$fa3, $s2, 24
	fst.d	$fa2, $s2, 32
	movfr2gr.d	$a4, $fa5
	movfr2gr.d	$a5, $fa4
	movfr2gr.d	$a6, $fa3
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a2, $zero, 1
	ori	$a1, $zero, 4
	blt	$s7, $a1, .LBB0_25
# %bb.16:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_11 Depth=1
	ori	$a0, $zero, 16
	bge	$s7, $a0, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=1
	move	$a1, $zero
	ori	$a2, $zero, 1
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_18:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_0)
	xvrepli.b	$xr3, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a0, $a1
	.p2align	4, , 16
.LBB0_19:                               # %vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvori.b	$xr1, $xr3, 0
	xvori.b	$xr2, $xr0, 0
	xvbitrevi.w	$xr0, $xr0, 0
	addi.d	$a0, $a0, -16
	xvbitrevi.w	$xr3, $xr3, 0
	bnez	$a0, .LBB0_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=1
	xvxor.v	$xr0, $xr1, $xr2
	xvpermi.q	$xr1, $xr0, 1
	vxor.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_27
# %bb.21:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_25
.LBB0_22:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a2, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB0_23:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $a0, 4
	vbitrevi.w	$vr0, $vr0, 0
	bnez	$a0, .LBB0_23
# %bb.24:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_11 Depth=1
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	beq	$a1, $a3, .LBB0_27
.LBB0_25:                               # %.lr.ph218.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	.p2align	4, , 16
.LBB0_26:                               # %.lr.ph218
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $a0, -1
	xori	$a2, $a2, 1
	bnez	$a0, .LBB0_26
.LBB0_27:                               # %.lr.ph224.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	st.w	$a2, $s6, %pc_lo12(J)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s4, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s4
	move	$fp, $s7
	move	$a1, $s7
	move	$a3, $a2
	lu52i.d	$a4, $zero, 1023
	move	$a5, $s8
	move	$a6, $s8
	move	$a7, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	vreplgr2vr.d	$vr0, $a4
	vst	$vr0, $s2, 8
	ori	$a0, $zero, 1
	st.w	$a0, $s6, %pc_lo12(J)
	pcalau12i	$s1, %pc_hi20(K)
	ld.d	$a7, $s2, 32
	ld.d	$a6, $s2, 24
	ld.d	$a5, $s2, 16
	ori	$a0, $zero, 2
	st.w	$a0, $s1, %pc_lo12(K)
	pcalau12i	$s7, %pc_hi20(L)
	ori	$a0, $zero, 3
	st.w	$a0, $s7, %pc_lo12(L)
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	move	$a0, $s4
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $s5, %pc_lo12(T)
	fld.d	$fs2, $s0, %pc_lo12(T2)
	vldi	$vr0, -928
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	vldi	$vr1, -928
	vst	$vr1, $sp, 224                  # 16-byte Folded Spill
	.p2align	4, , 16
.LBB0_28:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	vld	$vr0, $sp, 224                  # 16-byte Folded Reload
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs2, $fa0
	vld	$vr0, $sp, 224                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs3, $fs0, $fa0
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs1, $fa0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs2, $fa0
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs3, $fs0, $fa0
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fs3, $fa0
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	fmul.d	$fa0, $fs1, $fa0
	bnez	$s4, .LBB0_28
# %bb.29:                               # %.lr.ph257.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.w	$a2, $s6, %pc_lo12(J)
	ld.w	$a3, $s1, %pc_lo12(K)
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a6, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s4, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s4
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a5, $a4
	move	$a7, $a6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s5, %pc_lo12(T)
	fadd.d	$fa1, $fa0, $fa0
	vldi	$vr2, -912
	fadd.d	$fa2, $fa1, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fld.d	$fa2, $s0, %pc_lo12(T2)
	ld.w	$a2, $s6, %pc_lo12(J)
	ld.w	$a3, $s1, %pc_lo12(K)
	fadd.d	$fa0, $fa1, $fa0
	fdiv.d	$fa0, $fa0, $fa2
	movfr2gr.d	$a6, $fa0
	move	$a0, $s4
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	lu52i.d	$a4, $zero, 1023
	move	$a5, $a4
	move	$a7, $a6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s6, %pc_lo12(J)
	ori	$a0, $zero, 2
	st.w	$a0, $s1, %pc_lo12(K)
	ori	$a0, $zero, 3
	st.w	$a0, $s7, %pc_lo12(L)
	vldi	$vr0, -1016
	vldi	$vr2, -1024
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph257
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $a0, -1
	fmov.d	$fa1, $fa0
	fmov.d	$fa0, $fa2
	fmov.d	$fa2, $fa1
	bnez	$a0, .LBB0_30
# %bb.31:                               # %.lr.ph266
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a7, $s2, 32
	fst.d	$fa0, $s2, 8
	fst.d	$fa1, $s2, 16
	fst.d	$fa0, $s2, 24
	movfr2gr.d	$a5, $fa1
	movfr2gr.d	$a4, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s4, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	move	$a0, $s4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a6, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.w	$a0, $s6, %pc_lo12(J)
	ori	$a0, $zero, 3
	st.w	$a0, $s1, %pc_lo12(K)
	ori	$a2, $zero, 2
	ori	$a3, $zero, 3
	move	$a0, $s4
	move	$a1, $zero
	lu52i.d	$a4, $zero, 1023
	move	$a5, $s8
	move	$a6, $s8
	move	$a7, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fs0, $a0, %pc_lo12(T1)
	vldi	$vr0, -920
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$s7, $fp
	.p2align	4, , 16
.LBB0_32:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_34
# %bb.33:                               # %.split
                                        #   in Loop: Header=BB0_32 Depth=2
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB0_32
	b	.LBB0_10
.LBB0_34:                               # %call.sqrt
                                        #   in Loop: Header=BB0_32 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB0_32
	b	.LBB0_10
.LBB0_35:
	move	$a0, $zero
.LBB0_36:                               # %.loopexit
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB0_37:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_36
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	POUT                            # -- Begin function POUT
	.p2align	5
	.type	POUT,@function
POUT:                                   # @POUT
# %bb.0:
	move	$a3, $a2
	move	$a2, $a1
	move	$a1, $a0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fa1
	movfr2gr.d	$a6, $fa2
	movfr2gr.d	$a7, $fa3
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end1:
	.size	POUT, .Lfunc_end1-POUT
                                        # -- End function
	.globl	PA                              # -- Begin function PA
	.p2align	5
	.type	PA,@function
PA:                                     # @PA
# %bb.0:
	fld.d	$fa2, $a0, 32
	fld.d	$fa3, $a0, 24
	fld.d	$fa4, $a0, 16
	fld.d	$fa5, $a0, 8
	pcalau12i	$a1, %pc_hi20(T2)
	fld.d	$fa0, $a1, %pc_lo12(T2)
	pcalau12i	$a1, %pc_hi20(T)
	fld.d	$fa1, $a1, %pc_lo12(T)
	fadd.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa5, $fa3
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa1
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa1, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa0
	fadd.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa5, $fa3
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa1
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa1, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa0
	fadd.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa5, $fa3
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa1
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa1, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa0
	fadd.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa5, $fa3
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa1
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa1, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa0
	fadd.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa5, $fa3
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa1
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa3, $fa1, $fa3
	fsub.d	$fa6, $fa4, $fa5
	fadd.d	$fa6, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fdiv.d	$fa2, $fa2, $fa0
	fadd.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa5, $fa3
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa1
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fsub.d	$fa6, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fsub.d	$fa3, $fa4, $fa5
	fadd.d	$fa3, $fa3, $fa1
	fadd.d	$fa2, $fa2, $fa3
	fdiv.d	$fa0, $fa2, $fa0
	fst.d	$fa5, $a0, 8
	fst.d	$fa4, $a0, 16
	fst.d	$fa1, $a0, 24
	fst.d	$fa0, $a0, 32
	pcalau12i	$a0, %pc_hi20(J)
	ori	$a1, $zero, 6
	st.w	$a1, $a0, %pc_lo12(J)
	ret
.Lfunc_end2:
	.size	PA, .Lfunc_end2-PA
                                        # -- End function
	.globl	P3                              # -- Begin function P3
	.p2align	5
	.type	P3,@function
P3:                                     # @P3
# %bb.0:
	pcalau12i	$a1, %pc_hi20(T)
	fld.d	$fa2, $a1, %pc_lo12(T)
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	pcalau12i	$a1, %pc_hi20(T2)
	fld.d	$fa3, $a1, %pc_lo12(T2)
	fadd.d	$fa1, $fa1, $fa0
	fmul.d	$fa1, $fa2, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a0, 0
	ret
.Lfunc_end3:
	.size	P3, .Lfunc_end3-P3
                                        # -- End function
	.globl	P0                              # -- Begin function P0
	.p2align	5
	.type	P0,@function
P0:                                     # @P0
# %bb.0:
	pcalau12i	$a0, %pc_hi20(K)
	ld.w	$a0, $a0, %pc_lo12(K)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(E1)
	addi.d	$a1, $a1, %pc_lo12(E1)
	fldx.d	$fa0, $a1, $a0
	pcalau12i	$a2, %pc_hi20(J)
	ld.w	$a2, $a2, %pc_lo12(J)
	pcalau12i	$a3, %pc_hi20(L)
	ld.w	$a3, $a3, %pc_lo12(L)
	slli.d	$a2, $a2, 3
	fstx.d	$fa0, $a1, $a2
	slli.d	$a3, $a3, 3
	fldx.d	$fa0, $a1, $a3
	fstx.d	$fa0, $a1, $a0
	fldx.d	$fa0, $a1, $a2
	fstx.d	$fa0, $a1, $a3
	ret
.Lfunc_end4:
	.size	P0, .Lfunc_end4-P0
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"usage: whetdc [-c] [loops]\n"
	.size	.L.str.1, 28

	.type	T,@object                       # @T
	.bss
	.globl	T
	.p2align	3, 0x0
T:
	.dword	0x0000000000000000              # double 0
	.size	T, 8

	.type	T1,@object                      # @T1
	.globl	T1
	.p2align	3, 0x0
T1:
	.dword	0x0000000000000000              # double 0
	.size	T1, 8

	.type	T2,@object                      # @T2
	.globl	T2
	.p2align	3, 0x0
T2:
	.dword	0x0000000000000000              # double 0
	.size	T2, 8

	.type	E1,@object                      # @E1
	.globl	E1
	.p2align	3, 0x0
E1:
	.space	40
	.size	E1, 40

	.type	J,@object                       # @J
	.globl	J
	.p2align	2, 0x0
J:
	.word	0                               # 0x0
	.size	J, 4

	.type	K,@object                       # @K
	.globl	K
	.p2align	2, 0x0
K:
	.word	0                               # 0x0
	.size	K, 4

	.type	L,@object                       # @L
	.globl	L
	.p2align	2, 0x0
L:
	.word	0                               # 0x0
	.size	L, 4

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%7ld %7ld %7ld %12.4e %12.4e %12.4e %12.4e\n"
	.size	.L.str.3, 44

	.section	".note.GNU-stack","",@progbits
	.addrsig
