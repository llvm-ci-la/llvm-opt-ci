	.file	"uloop.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function uloop
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
.LCPI0_1:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	uloop
	.p2align	5
	.type	uloop,@function
uloop:                                  # @uloop
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 384                  # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(flips)
	st.w	$zero, $s6, %pc_lo12(flips)
	pcalau12i	$a0, %pc_hi20(flipp)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(flipp)
	pcalau12i	$a0, %pc_hi20(attp)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(attp)
	pcalau12i	$a0, %got_pc_hi20(rangeLimit)
	ld.d	$a0, $a0, %got_pc_lo12(rangeLimit)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(count)
	ld.d	$a0, $a0, %got_pc_lo12(count)
	ld.w	$a0, $a0, 0
	bgtz	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(bdxlength)
	ld.d	$a1, $a1, %got_pc_lo12(bdxlength)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(bdylength)
	ld.d	$a1, $a1, %got_pc_lo12(bdylength)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(attmax)
	ld.d	$a0, $a0, %got_pc_lo12(attmax)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_4
# %bb.3:                                # %.preheader856.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$s2, $a0, %got_pc_lo12(randVar)
	pcalau12i	$a0, %got_pc_hi20(choose)
	ld.d	$a0, $a0, %got_pc_lo12(choose)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bigcell)
	ld.d	$a0, $a0, %got_pc_lo12(bigcell)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(toobig)
	ld.d	$a0, $a0, %got_pc_lo12(toobig)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a6, $a0, %got_pc_lo12(numcells)
	st.d	$zero, $sp, 368                 # 8-byte Folded Spill
	st.d	$zero, $sp, 296                 # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$zero, $sp, 312                 # 8-byte Folded Spill
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	lu12i.w	$a0, 269412
	ori	$s7, $a0, 3693
	lu12i.w	$a0, 3
	ori	$fp, $a0, 57
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	lu12i.w	$a0, 244
	ori	$a0, $a0, 576
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$a6, $sp, 360                   # 8-byte Folded Spill
	b	.LBB0_14
.LBB0_4:
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	st.d	$zero, $sp, 312                 # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	st.d	$zero, $sp, 296                 # 8-byte Folded Spill
.LBB0_5:                                # %.outer._crit_edge
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a1, %pc_lo12(flipp)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a1, %pc_lo12(attp)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $s6, %pc_lo12(flips)
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	fld.d	$fs0, $sp, 384                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB0_6:                                #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a4, $a2
.LBB0_7:                                # %.thread826
                                        #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a5, $a5, $a0
	sub.w	$a3, $a3, $a0
.LBB0_8:                                # %.thread826
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	move	$a4, $t1
.LBB0_9:                                # %.thread826
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(usite2)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_47
# %bb.10:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s6, %pc_lo12(flips)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, %pc_lo12(flips)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	move	$a0, $s5
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fixSpot)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fixSpot)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %.outer
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
.LBB0_12:                               # %.outer
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
.LBB0_13:                               # %.outer
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_5
.LBB0_14:                               # %.preheader856.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_17 Depth 3
                                        #     Child Loop BB0_39 Depth 2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	movgr2fr.w	$fa0, $a2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a5, $a1, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.w	$a3, $a1, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a1, 0
	ld.w	$t3, $a6, 0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	b	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	beqz	$a5, .LBB0_31
	.p2align	4, , 16
.LBB0_16:                               # %.preheader856
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
	mul.d	$a0, $a0, $s7
	add.w	$a0, $a0, $fp
	bstrpick.d	$a5, $a0, 30, 0
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fs0
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s3, $fa2
	beq	$a2, $s3, .LBB0_16
	.p2align	4, , 16
.LBB0_17:                               # %.preheader855
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mul.d	$a0, $a0, $s7
	add.w	$a0, $a0, $fp
	bstrpick.d	$a5, $a0, 30, 0
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fs0
	fmul.d	$fa2, $fa2, $fa1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s0, $fa2
	addi.w	$s1, $s0, 1
	beq	$s1, $a3, .LBB0_17
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	beq	$s3, $s0, .LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_16 Depth=2
	addi.w	$s8, $s3, 1
	slli.d	$a5, $s8, 3
	ldx.d	$s5, $a4, $a5
	blt	$s3, $t3, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	blt	$s0, $t3, .LBB0_27
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a5, $s5, 8
	bge	$s3, $t3, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_16 Depth=2
	bge	$s0, $t3, .LBB0_15
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a6, $zero, -1
	beq	$a5, $a6, .LBB0_16
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a6, $s1, 3
	ldx.d	$s4, $a4, $a6
	ld.w	$a6, $s4, 8
	bne	$a5, $a6, .LBB0_16
# %bb.25:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$t1, $s5, 56
	ld.w	$t0, $s4, 56
	st.w	$a0, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(gridGiven)
	ld.d	$t2, $a0, %got_pc_lo12(gridGiven)
	ld.w	$a0, $t2, 0
	beqz	$a0, .LBB0_50
# %bb.26:                               #   in Loop: Header=BB0_14 Depth=1
	alsl.d	$a0, $t0, $s4, 3
	ld.d	$a0, $a0, 152
	alsl.d	$a2, $t1, $s5, 3
	ld.d	$t4, $a2, 152
	ld.d	$a0, $a0, 88
	ld.d	$a2, $t4, 88
	pcalau12i	$a3, %got_pc_hi20(gOffsetX)
	ld.d	$a3, $a3, %got_pc_lo12(gOffsetX)
	ld.w	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(gridX)
	ld.d	$a4, $a4, %got_pc_lo12(gridX)
	ld.w	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(gOffsetY)
	ld.d	$a5, $a5, %got_pc_lo12(gOffsetY)
	ld.w	$a5, $a5, 0
	pcalau12i	$a6, %got_pc_hi20(gridY)
	ld.d	$a6, $a6, %got_pc_lo12(gridY)
	ld.w	$a6, $a6, 0
	ld.d	$a7, $s4, 12
	ld.d	$a2, $a2, 8
	vinsgr2vr.w	$vr0, $a3, 0
	vinsgr2vr.w	$vr0, $a5, 1
	vinsgr2vr.w	$vr0, $a3, 2
	ld.d	$a0, $a0, 8
	vinsgr2vr.w	$vr0, $a5, 3
	ld.d	$a3, $s5, 12
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr1, $a0, 1
	vinsgr2vr.d	$vr2, $a7, 0
	vinsgr2vr.d	$vr2, $a3, 1
	vadd.w	$vr2, $vr1, $vr2
	vsub.w	$vr3, $vr2, $vr0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vshuf4i.w	$vr4, $vr4, 68
	vmod.w	$vr5, $vr3, $vr4
	vsub.w	$vr3, $vr3, $vr5
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr3, $vr0, $vr4
	vabsd.w	$vr4, $vr3, $vr2
	vabsd.w	$vr2, $vr0, $vr2
	vslt.wu	$vr2, $vr4, $vr2
	vbitsel.v	$vr0, $vr0, $vr3, $vr2
	pcalau12i	$a0, %pc_hi20(newxx)
	addi.d	$a0, $a0, %pc_lo12(newxx)
	vstelm.w	$vr0, $a0, 0, 2
	pcalau12i	$a0, %pc_hi20(newyy)
	addi.d	$a0, $a0, %pc_lo12(newyy)
	vstelm.w	$vr0, $a0, 0, 3
	vsub.w	$vr0, $vr0, $vr1
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=1
	st.w	$a0, $s2, 0
	ori	$a1, $zero, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_12
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=1
	move	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(usite0)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s6, %pc_lo12(flips)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, %pc_lo12(flips)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
.LBB0_30:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$s4, $s5, 56
	ld.w	$s1, $s5, 12
	ld.w	$s0, $s5, 16
	st.w	$a0, $s2, 0
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a0, $s1, $a7
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	ld.w	$a1, $a1, 0
	slt	$a2, $a0, $a1
	pcalau12i	$a3, %got_pc_hi20(blockr)
	ld.d	$a3, $a3, %got_pc_lo12(blockr)
	ld.w	$a3, $a3, 0
	slt	$a4, $a0, $a3
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $a3, $a4
	or	$a0, $a0, $a4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	add.w	$a0, $s1, $a7
	slt	$a4, $a3, $a0
	slt	$a5, $a1, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a1, $a1, $a5
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a4
	maskeqz	$a1, $a3, $a4
	or	$a3, $a1, $a0
	sub.w	$a0, $s0, $a7
	pcalau12i	$a1, %got_pc_hi20(blockb)
	ld.d	$a1, $a1, %got_pc_lo12(blockb)
	ld.w	$a1, $a1, 0
	slt	$a4, $a0, $a1
	pcalau12i	$a5, %got_pc_hi20(blockt)
	ld.d	$a5, $a5, %got_pc_lo12(blockt)
	ld.w	$a5, $a5, 0
	slt	$a6, $a0, $a5
	maskeqz	$a0, $a0, $a6
	masknez	$a6, $a5, $a6
	or	$a0, $a0, $a6
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $a1, $a4
	or	$a4, $a4, $a0
	add.w	$a0, $s0, $a7
	slt	$a6, $a5, $a0
	slt	$a7, $a1, $a0
	maskeqz	$a0, $a0, $a7
	masknez	$a1, $a1, $a7
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a6
	maskeqz	$a1, $a5, $a6
	or	$a5, $a1, $a0
	addi.d	$a6, $sp, 380
	addi.d	$a7, $sp, 376
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(pickSpot)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(gridGiven)
	ld.d	$a0, $a0, %got_pc_lo12(gridGiven)
	ld.w	$a0, $a0, 0
	ld.w	$s2, $sp, 380
	ld.w	$s3, $sp, 376
	beqz	$a0, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_14 Depth=1
	alsl.d	$a0, $s4, $s5, 3
	ld.d	$a0, $a0, 152
	ld.d	$a0, $a0, 88
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 12
	add.d	$a2, $a1, $s2
	add.d	$a3, $a0, $s3
	pcalau12i	$a4, %got_pc_hi20(gOffsetX)
	ld.d	$a4, $a4, %got_pc_lo12(gOffsetX)
	ld.w	$a4, $a4, 0
	sub.w	$a5, $a2, $a4
	pcalau12i	$a6, %got_pc_hi20(gridX)
	ld.d	$a6, $a6, %got_pc_lo12(gridX)
	ld.w	$a6, $a6, 0
	mod.w	$a7, $a5, $a6
	sub.d	$a5, $a5, $a7
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a6
	sub.w	$a6, $a5, $a2
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.w	$a6, $a6, $a7
	sub.w	$a2, $a4, $a2
	srai.d	$a7, $a2, 31
	xor	$a2, $a2, $a7
	sub.w	$a2, $a2, $a7
	sltu	$a2, $a6, $a2
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	pcalau12i	$a4, %pc_hi20(newxx)
	st.w	$a2, $a4, %pc_lo12(newxx)
	pcalau12i	$a4, %got_pc_hi20(gOffsetY)
	ld.d	$a4, $a4, %got_pc_lo12(gOffsetY)
	ld.w	$a4, $a4, 0
	sub.w	$a5, $a3, $a4
	pcalau12i	$a6, %got_pc_hi20(gridY)
	ld.d	$a6, $a6, %got_pc_lo12(gridY)
	ld.w	$a6, $a6, 0
	mod.w	$a7, $a5, $a6
	sub.d	$a5, $a5, $a7
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a6
	sub.w	$a6, $a5, $a3
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.w	$a6, $a6, $a7
	sub.w	$a3, $a4, $a3
	srai.d	$a7, $a3, 31
	xor	$a3, $a3, $a7
	sub.w	$a3, $a3, $a7
	sltu	$a3, $a6, $a3
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	pcalau12i	$a4, %pc_hi20(newyy)
	st.w	$a3, $a4, %pc_lo12(newyy)
	sub.w	$s2, $a2, $a1
	st.w	$s2, $sp, 380
	sub.w	$s3, $a3, $a0
	st.w	$s3, $sp, 376
.LBB0_33:                               #   in Loop: Header=BB0_14 Depth=1
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(usite1)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_44
# %bb.34:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s6, %pc_lo12(flips)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, %pc_lo12(flips)
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
.LBB0_35:                               #   in Loop: Header=BB0_14 Depth=1
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fixSpot)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
.LBB0_36:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s5, 132
	beqz	$a0, .LBB0_40
# %bb.37:                               # %.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s5, 72
	blez	$a0, .LBB0_40
# %bb.38:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_39:                               # %.lr.ph
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(selectpin)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 72
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB0_39
.LBB0_40:                               # %.loopexit
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s5, 76
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_12
# %bb.41:                               #   in Loop: Header=BB0_14 Depth=1
	fld.d	$fa0, $s5, 120
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	fld.d	$fa1, $s5, 112
	fadd.d	$fa2, $fa0, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB0_12
# %bb.42:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s2, 0
	fsub.d	$fa1, $fa1, $fa0
	mul.d	$a0, $a0, $s7
	ld.w	$a1, $s5, 56
	add.d	$a0, $a0, $fp
	st.w	$a0, $s2, 0
	bstrpick.d	$a0, $a0, 30, 0
	alsl.d	$a1, $a1, $s5, 3
	ld.d	$a1, $a1, 152
	movgr2fr.w	$fa2, $a0
	ld.w	$s0, $s5, 12
	ld.w	$s2, $s5, 16
	ld.w	$s1, $a1, 56
	ld.w	$s3, $a1, 60
	ld.w	$s4, $a1, 64
	ld.w	$s6, $a1, 68
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fs0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(uaspect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_72
# %bb.43:                               #   in Loop: Header=BB0_14 Depth=1
	add.w	$a4, $s6, $s2
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s6, %pc_lo12(flips)
	add.w	$a3, $s4, $s2
	add.w	$a2, $s3, $s0
	add.w	$a1, $s1, $s0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, %pc_lo12(flips)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fixSpotAsp)
	jirl	$ra, $ra, 0
	b	.LBB0_73
.LBB0_44:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a1, $zero, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_69
# %bb.45:                               #   in Loop: Header=BB0_14 Depth=1
	move	$a3, $a0
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(usiteo1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_69
# %bb.46:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s6, %pc_lo12(flips)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, %pc_lo12(flips)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_35
.LBB0_47:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a1, $zero, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bgez	$s2, .LBB0_74
# %bb.48:                               #   in Loop: Header=BB0_14 Depth=1
	bgez	$a0, .LBB0_74
# %bb.49:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	b	.LBB0_11
.LBB0_50:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $s4, 12
	ld.d	$a2, $s5, 12
	alsl.d	$a3, $t1, $s5, 3
	ld.d	$t4, $a3, 152
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr0, $a2, 1
.LBB0_51:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $t4, 56
	vpickve2gr.w	$a4, $vr0, 0
	ld.w	$a2, $t4, 60
	add.w	$a0, $a0, $a4
	ld.w	$a5, $t4, 64
	ld.w	$a3, $t4, 68
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	add.w	$s2, $a2, $a4
	vpickve2gr.w	$a2, $vr0, 1
	add.w	$s6, $a5, $a2
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	add.w	$t6, $a3, $a2
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	bge	$s3, $t3, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_14 Depth=1
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	fld.d	$fa0, $t4, 8
	move	$a1, $s6
	move	$a2, $t6
	st.d	$t6, $sp, 256                   # 8-byte Folded Spill
	st.d	$t4, $sp, 248                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	fld.d	$fa0, $a1, 16
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	move	$a0, $s2
	move	$a1, $s6
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	fld.d	$fa0, $a1, 24
	add.w	$s2, $a0, $s2
	move	$a0, $s6
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	fld.d	$fa0, $a1, 32
	sub.w	$s6, $s6, $a0
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 224                  # 16-byte Folded Reload
	ld.d	$t6, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a2, $s4, 56
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$t3, $a1, 0
	add.w	$t6, $a0, $t6
	b	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_14 Depth=1
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	move	$a2, $t0
.LBB0_54:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a3, $s4, 152
	slli.d	$a0, $a2, 3
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	ldx.d	$s6, $a3, $a0
	ld.w	$a0, $s6, 56
	vpickve2gr.w	$t1, $vr0, 2
	ld.w	$a2, $s6, 60
	add.w	$t7, $a0, $t1
	ld.w	$a0, $s6, 64
	ld.w	$a3, $s6, 68
	add.w	$s2, $a2, $t1
	vpickve2gr.w	$t2, $vr0, 3
	add.w	$a1, $a0, $t2
	add.w	$t8, $a3, $t2
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	st.d	$t2, $sp, 192                   # 8-byte Folded Spill
	bge	$s0, $t3, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_14 Depth=1
	fld.d	$fa0, $s6, 8
	move	$a0, $t7
	move	$a2, $t8
	st.d	$t6, $sp, 256                   # 8-byte Folded Spill
	st.d	$t7, $sp, 248                   # 8-byte Folded Spill
	st.d	$t8, $sp, 160                   # 8-byte Folded Spill
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	move	$a0, $s2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 24
	add.w	$s2, $a0, $s2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 32
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	add.w	$t8, $a0, $t8
.LBB0_56:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 168                   # 8-byte Folded Reload
	bge	$t7, $t5, .LBB0_60
# %bb.57:                               #   in Loop: Header=BB0_14 Depth=1
	bge	$t3, $s2, .LBB0_60
# %bb.58:                               #   in Loop: Header=BB0_14 Depth=1
	bge	$a1, $t6, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a4, $t1
	move	$a5, $t2
	blt	$t4, $t8, .LBB0_9
.LBB0_60:                               #   in Loop: Header=BB0_14 Depth=1
	slt	$a0, $a1, $t6
	slt	$ra, $t3, $s2
	slt	$a2, $t7, $t5
	sub.w	$a4, $t5, $t7
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	slt	$a3, $a4, $a6
	maskeqz	$a4, $a4, $a3
	masknez	$a5, $a6, $a3
	or	$a4, $a4, $a5
	maskeqz	$a4, $a4, $a2
	masknez	$a5, $a6, $a2
	or	$a5, $a4, $a5
	sub.w	$a6, $s2, $t3
	slt	$a4, $a6, $a5
	masknez	$a7, $a5, $a4
	maskeqz	$a6, $a6, $a4
	or	$a6, $a6, $a7
	maskeqz	$a6, $a6, $ra
	masknez	$a5, $a5, $ra
	or	$a6, $a6, $a5
	sub.w	$a7, $t6, $a1
	slt	$a5, $a7, $a6
	masknez	$t0, $a6, $a5
	maskeqz	$a7, $a7, $a5
	or	$a7, $a7, $t0
	maskeqz	$a7, $a7, $a0
	masknez	$a6, $a6, $a0
	or	$a6, $a7, $a6
	bge	$t4, $t8, .LBB0_64
# %bb.61:                               #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a7, $t8, $t4
	bge	$a7, $a6, .LBB0_64
# %bb.62:                               # %.thread836
                                        #   in Loop: Header=BB0_14 Depth=1
	bstrpick.d	$a0, $a7, 31, 31
	add.w	$a0, $a7, $a0
	srai.d	$a4, $a0, 1
	sub.d	$a0, $a7, $a4
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a2
	sub.w	$a5, $t2, $a0
	add.w	$a4, $a4, $t6
	pcalau12i	$a2, %got_pc_hi20(blockt)
	ld.d	$a2, $a2, %got_pc_lo12(blockt)
	ld.w	$a2, $a2, 0
	blt	$a2, $a4, .LBB0_6
# %bb.63:                               #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(blockb)
	ld.d	$a1, $a1, %got_pc_lo12(blockb)
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB0_8
	b	.LBB0_101
.LBB0_64:                               #   in Loop: Header=BB0_14 Depth=1
	and	$a2, $a2, $a3
	masknez	$a3, $a2, $a4
	ori	$a7, $zero, 2
	maskeqz	$a4, $a7, $a4
	or	$a3, $a4, $a3
	maskeqz	$a3, $a3, $ra
	masknez	$a1, $a2, $ra
	or	$a1, $a3, $a1
	masknez	$a2, $a1, $a5
	ori	$a3, $zero, 3
	maskeqz	$a3, $a3, $a5
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a7, $a2, $a0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a4, $t1
	move	$a5, $t2
	beqz	$a7, .LBB0_9
# %bb.65:                               #   in Loop: Header=BB0_14 Depth=1
	bstrpick.d	$a0, $a6, 31, 31
	add.w	$a0, $a6, $a0
	srai.d	$a1, $a0, 1
	sub.d	$a0, $a6, $a1
	ori	$a2, $zero, 3
	beq	$a7, $a2, .LBB0_76
# %bb.66:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a2, $zero, 2
	bne	$a7, $a2, .LBB0_78
# %bb.67:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	sub.w	$a4, $t1, $a0
	add.w	$a1, $a1, $t5
	pcalau12i	$a3, %got_pc_hi20(blockr)
	ld.d	$a3, $a3, %got_pc_lo12(blockr)
	ld.w	$a3, $a3, 0
	blt	$a3, $a1, .LBB0_79
# %bb.68:                               #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a0, $t7, $a0
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	ld.w	$a1, $a1, 0
	blt	$a0, $a1, .LBB0_103
	b	.LBB0_104
.LBB0_69:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ori	$a1, $zero, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_36
# %bb.70:                               #   in Loop: Header=BB0_14 Depth=1
	move	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(usite0)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_36
# %bb.71:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s6, %pc_lo12(flips)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, %pc_lo12(flips)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fixSpot)
	jirl	$ra, $ra, 0
	b	.LBB0_36
.LBB0_72:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
.LBB0_73:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	b	.LBB0_13
.LBB0_74:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $s5, 152
	slti	$a2, $s2, 0
	slti	$a3, $a0, 0
	masknez	$a4, $a0, $a3
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a2
	maskeqz	$a0, $a0, $a2
	or	$a4, $a0, $a3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	masknez	$a3, $s2, $a2
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	maskeqz	$a2, $t0, $a2
	or	$a3, $a2, $a3
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	slli.d	$t1, $a4, 3
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_80
# %bb.75:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $a3, 3
	ldx.d	$s6, $a1, $a2
	ld.d	$a0, $a0, 88
	ld.d	$a1, $s6, 88
	pcalau12i	$a2, %got_pc_hi20(gOffsetX)
	ld.d	$a2, $a2, %got_pc_lo12(gOffsetX)
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(gridX)
	ld.d	$a3, $a3, %got_pc_lo12(gridX)
	ld.w	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(gOffsetY)
	ld.d	$a4, $a4, %got_pc_lo12(gOffsetY)
	ld.w	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(gridY)
	ld.d	$a5, $a5, %got_pc_lo12(gridY)
	ld.w	$a5, $a5, 0
	ld.d	$a6, $s4, 12
	ld.d	$a1, $a1, 8
	vinsgr2vr.w	$vr0, $a2, 0
	vinsgr2vr.w	$vr0, $a4, 1
	vinsgr2vr.w	$vr0, $a2, 2
	ld.d	$a0, $a0, 8
	vinsgr2vr.w	$vr0, $a4, 3
	ld.d	$a2, $s5, 12
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr1, $a0, 1
	vinsgr2vr.d	$vr2, $a6, 0
	vinsgr2vr.d	$vr2, $a2, 1
	vadd.w	$vr2, $vr1, $vr2
	vsub.w	$vr3, $vr2, $vr0
	vinsgr2vr.w	$vr4, $a3, 0
	vinsgr2vr.w	$vr4, $a5, 1
	vshuf4i.w	$vr4, $vr4, 68
	vmod.w	$vr5, $vr3, $vr4
	vsub.w	$vr3, $vr3, $vr5
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr3, $vr0, $vr4
	vabsd.w	$vr4, $vr3, $vr2
	vabsd.w	$vr2, $vr0, $vr2
	vslt.wu	$vr2, $vr4, $vr2
	vbitsel.v	$vr0, $vr0, $vr3, $vr2
	pcalau12i	$a0, %pc_hi20(newxx)
	addi.d	$a0, $a0, %pc_lo12(newxx)
	vstelm.w	$vr0, $a0, 0, 2
	pcalau12i	$a0, %pc_hi20(newyy)
	addi.d	$a0, $a0, %pc_lo12(newyy)
	vstelm.w	$vr0, $a0, 0, 3
	vsub.w	$vr0, $vr0, $vr1
	b	.LBB0_81
.LBB0_76:                               #   in Loop: Header=BB0_14 Depth=1
	add.w	$a5, $a1, $t2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a3, $a2, $a0
	add.w	$a1, $a1, $t8
	pcalau12i	$a2, %got_pc_hi20(blockt)
	ld.d	$a2, $a2, %got_pc_lo12(blockt)
	ld.w	$a2, $a2, 0
	bge	$a2, $a1, .LBB0_100
# %bb.77:                               #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a2
	b	.LBB0_7
.LBB0_78:                               #   in Loop: Header=BB0_14 Depth=1
	add.w	$a4, $a1, $t1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a0
	add.w	$a1, $a1, $s2
	pcalau12i	$a3, %got_pc_hi20(blockr)
	ld.d	$a3, $a3, %got_pc_lo12(blockr)
	ld.w	$a3, $a3, 0
	bge	$a3, $a1, .LBB0_102
.LBB0_79:                               #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a3
	sub.w	$a4, $a4, $a0
	sub.w	$a2, $a2, $a0
	b	.LBB0_104
.LBB0_80:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $s4, 12
	ld.d	$a2, $s5, 12
	slli.d	$a3, $a3, 3
	ldx.d	$s6, $a1, $a3
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr0, $a2, 1
.LBB0_81:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s6, 56
	vpickve2gr.w	$a4, $vr0, 0
	add.w	$a0, $a0, $a4
	ld.w	$a5, $s6, 60
	ld.w	$a2, $s6, 64
	ld.w	$a3, $s6, 68
	ld.w	$a6, $a7, 0
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	add.w	$a5, $a5, $a4
	vpickve2gr.w	$a4, $vr0, 1
	add.w	$s2, $a2, $a4
	add.w	$t6, $a3, $a4
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	bge	$s3, $a6, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_14 Depth=1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	fld.d	$fa0, $s6, 8
	move	$a1, $s2
	move	$a2, $t6
	move	$s3, $a5
	st.d	$t6, $sp, 256                   # 8-byte Folded Spill
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 16
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	move	$a0, $s3
	move	$a1, $s2
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 24
	add.w	$s3, $a0, $s3
	move	$a0, $s2
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 32
	sub.w	$s2, $s2, $a0
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	move	$a2, $s3
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	add.w	$t6, $a0, $t6
	b	.LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_14 Depth=1
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
.LBB0_84:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$s3, $a0, $t1
	ld.w	$a0, $s3, 56
	vpickve2gr.w	$t1, $vr0, 2
	ld.w	$a2, $s3, 60
	add.w	$t7, $a0, $t1
	ld.w	$a0, $s3, 64
	ld.w	$a3, $s3, 68
	add.w	$s6, $a2, $t1
	vpickve2gr.w	$a5, $vr0, 3
	add.w	$s2, $a0, $a5
	add.w	$a2, $a3, $a5
	bge	$s0, $a6, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_14 Depth=1
	fld.d	$fa0, $s3, 8
	move	$a0, $t7
	move	$a1, $s2
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$t6, $sp, 256                   # 8-byte Folded Spill
	move	$s0, $t7
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 16
	sub.w	$s0, $s0, $a0
	move	$a0, $s6
	move	$a1, $s2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 24
	add.w	$s6, $a0, $s6
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 32
	sub.w	$s2, $s2, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	move	$t7, $s0
	ld.d	$t6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
.LBB0_86:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	bge	$t7, $t5, .LBB0_91
# %bb.87:                               #   in Loop: Header=BB0_14 Depth=1
	bge	$t3, $s6, .LBB0_91
# %bb.88:                               #   in Loop: Header=BB0_14 Depth=1
	bge	$s2, $t6, .LBB0_91
# %bb.89:                               #   in Loop: Header=BB0_14 Depth=1
	bge	$t4, $a2, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	b	.LBB0_106
.LBB0_91:                               #   in Loop: Header=BB0_14 Depth=1
	slt	$a0, $s2, $t6
	slt	$a1, $t3, $s6
	slt	$t8, $t7, $t5
	sub.w	$a4, $t5, $t7
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	slt	$a3, $a4, $a6
	maskeqz	$a4, $a4, $a3
	masknez	$a7, $a6, $a3
	or	$a4, $a4, $a7
	maskeqz	$a4, $a4, $t8
	masknez	$a6, $a6, $t8
	or	$a4, $a4, $a6
	sub.w	$a6, $s6, $t3
	slt	$t2, $a6, $a4
	masknez	$a7, $a4, $t2
	maskeqz	$a6, $a6, $t2
	or	$a6, $a6, $a7
	maskeqz	$a6, $a6, $a1
	masknez	$a4, $a4, $a1
	or	$a4, $a6, $a4
	sub.w	$a7, $t6, $s2
	slt	$a6, $a7, $a4
	masknez	$t0, $a4, $a6
	maskeqz	$a7, $a7, $a6
	or	$a7, $a7, $t0
	maskeqz	$a7, $a7, $a0
	masknez	$a4, $a4, $a0
	or	$a4, $a7, $a4
	bge	$t4, $a2, .LBB0_95
# %bb.92:                               #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a7, $a2, $t4
	bge	$a7, $a4, .LBB0_95
# %bb.93:                               # %.thread850
                                        #   in Loop: Header=BB0_14 Depth=1
	bstrpick.d	$a0, $a7, 31, 31
	add.w	$a0, $a7, $a0
	srai.d	$a1, $a0, 1
	sub.d	$a0, $a7, $a1
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.w	$a3, $a1, $a3
	sub.w	$a5, $a5, $a0
	add.w	$a1, $a1, $t6
	pcalau12i	$a2, %got_pc_hi20(blockt)
	ld.d	$a2, $a2, %got_pc_lo12(blockt)
	ld.w	$a2, $a2, 0
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB0_114
# %bb.94:                               #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a2
	sub.w	$a5, $a5, $a0
	sub.w	$a3, $a3, $a0
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_107
.LBB0_95:                               #   in Loop: Header=BB0_14 Depth=1
	and	$t0, $t8, $a3
	masknez	$a3, $t0, $t2
	ori	$a7, $zero, 2
	maskeqz	$a7, $a7, $t2
	or	$a3, $a7, $a3
	maskeqz	$a3, $a3, $a1
	masknez	$a1, $t0, $a1
	or	$a1, $a3, $a1
	masknez	$a7, $a1, $a6
	ori	$a3, $zero, 3
	maskeqz	$a3, $a3, $a6
	ori	$t0, $zero, 3
	or	$a3, $a3, $a7
	maskeqz	$a3, $a3, $a0
	masknez	$a0, $a1, $a0
	or	$t2, $a3, $a0
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	beqz	$t2, .LBB0_105
# %bb.96:                               #   in Loop: Header=BB0_14 Depth=1
	bstrpick.d	$a0, $a4, 31, 31
	add.w	$a0, $a4, $a0
	srai.d	$a1, $a0, 1
	sub.d	$a0, $a4, $a1
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	beq	$t2, $t0, .LBB0_110
# %bb.97:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	bne	$t2, $a3, .LBB0_112
# %bb.98:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	sub.w	$t1, $t1, $a0
	add.w	$a1, $a1, $t5
	pcalau12i	$a3, %got_pc_hi20(blockr)
	ld.d	$a3, $a3, %got_pc_lo12(blockr)
	ld.w	$a3, $a3, 0
	blt	$a3, $a1, .LBB0_113
# %bb.99:                               #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a0, $t7, $a0
	b	.LBB0_120
.LBB0_100:                              #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a0, $t4, $a0
	pcalau12i	$a1, %got_pc_hi20(blockb)
	ld.d	$a1, $a1, %got_pc_lo12(blockb)
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB0_8
.LBB0_101:                              #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a0
	add.w	$a5, $a0, $a5
	add.w	$a3, $a0, $a3
	b	.LBB0_8
.LBB0_102:                              #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a0, $t3, $a0
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a0
	add.w	$a4, $a0, $a4
	add.w	$a2, $a0, $a2
.LBB0_104:                              #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a5, $t2
	b	.LBB0_9
.LBB0_105:                              #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
.LBB0_106:                              # %.thread840
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
.LBB0_107:                              # %.thread840
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$a0, $s8
	move	$a1, $s1
	move	$a4, $t1
	pcaddu18i	$ra, %call36(usiteo2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s6, %pc_lo12(flips)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, %pc_lo12(flips)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	move	$a0, $s5
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fixSpot)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fixSpot)
	jirl	$ra, $ra, 0
	b	.LBB0_12
.LBB0_109:                              #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	b	.LBB0_12
.LBB0_110:                              #   in Loop: Header=BB0_14 Depth=1
	add.w	$a5, $a1, $a5
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a3, $a3, $a0
	add.w	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(blockt)
	ld.d	$a2, $a2, %got_pc_lo12(blockt)
	ld.w	$a2, $a2, 0
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB0_117
# %bb.111:                              #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a2
	sub.w	$a5, $a5, $a0
	sub.w	$a3, $a3, $a0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_107
.LBB0_112:                              #   in Loop: Header=BB0_14 Depth=1
	add.w	$t1, $a1, $t1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a0
	add.w	$a1, $a1, $s6
	pcalau12i	$a3, %got_pc_hi20(blockr)
	ld.d	$a3, $a3, %got_pc_lo12(blockr)
	ld.w	$a3, $a3, 0
	bge	$a3, $a1, .LBB0_119
.LBB0_113:                              #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a3
	sub.w	$t1, $t1, $a0
	sub.w	$a2, $a2, $a0
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $a4
	b	.LBB0_107
.LBB0_114:                              #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a0, $s2, $a0
	pcalau12i	$a1, %got_pc_hi20(blockb)
	ld.d	$a1, $a1, %got_pc_lo12(blockb)
	ld.w	$a1, $a1, 0
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a0
	add.w	$a5, $a0, $a5
	add.w	$a3, $a0, $a3
.LBB0_116:                              # %.thread840
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	b	.LBB0_107
.LBB0_117:                              #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a0, $t4, $a0
	pcalau12i	$a1, %got_pc_hi20(blockb)
	ld.d	$a1, $a1, %got_pc_lo12(blockb)
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_107
# %bb.118:                              #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a0
	add.w	$a5, $a0, $a5
	add.w	$a3, $a0, $a3
	b	.LBB0_107
.LBB0_119:                              #   in Loop: Header=BB0_14 Depth=1
	sub.w	$a0, $t3, $a0
.LBB0_120:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	ld.w	$a1, $a1, 0
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_14 Depth=1
	sub.d	$a0, $a1, $a0
	add.w	$t1, $a0, $t1
	add.w	$a2, $a0, $a2
.LBB0_122:                              #   in Loop: Header=BB0_14 Depth=1
	move	$a3, $a4
	b	.LBB0_107
.Lfunc_end0:
	.size	uloop, .Lfunc_end0-uloop
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function pickSpot
.LCPI1_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	pickSpot
	.p2align	5
	.type	pickSpot,@function
pickSpot:                               # @pickSpot
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(spotXhash)
	ld.d	$a0, $a0, %got_pc_lo12(spotXhash)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	sub.w	$a2, $a2, $a0
	pcalau12i	$a6, %got_pc_hi20(spotSize)
	ld.d	$a6, $a6, %got_pc_lo12(spotSize)
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a6, $a6, 0
	div.w	$s8, $a2, $a6
	sub.w	$a0, $a3, $a0
	div.w	$a0, $a0, $a6
	pcalau12i	$a2, %got_pc_hi20(spotYhash)
	ld.d	$a2, $a2, %got_pc_lo12(spotYhash)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a2, $a2, 0
	sub.w	$a3, $a4, $a2
	div.w	$s7, $a3, $a6
	sub.w	$a2, $a5, $a2
	div.w	$a2, $a2, $a6
	alsl.d	$a1, $a1, $s1, 3
	ld.d	$s6, $a1, 152
	sub.d	$a0, $a0, $s8
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a0, $s1, 12
	ld.w	$a1, $s6, 56
	ld.w	$a3, $s6, 60
	sub.d	$a2, $a2, $s7
	ld.w	$a4, $s1, 16
	add.w	$s3, $a1, $a0
	add.w	$s4, $a3, $a0
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 68
	fld.d	$fa0, $s6, 8
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	add.w	$s2, $a0, $a4
	add.w	$s5, $a1, $a4
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 16
	sub.w	$s3, $s3, $a0
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 24
	add.w	$s4, $a0, $s4
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 32
	move	$s6, $a0
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $ra, 0
	ld.w	$a2, $t8, 0
	add.d	$a0, $a0, $s5
	sub.w	$a3, $s3, $a1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$t0, $s3, 0
	div.w	$a3, $a3, $a2
	sub.w	$a4, $s4, $a1
	div.w	$a4, $a4, $a2
	add.d	$a5, $s6, $t0
	sub.w	$a5, $s2, $a5
	div.w	$a5, $a5, $a2
	ld.w	$a7, $s1, 12
	sub.w	$a0, $a0, $t0
	ld.w	$t1, $s1, 16
	div.w	$a6, $a0, $a2
	sub.w	$a0, $a7, $a1
	div.w	$a7, $a0, $a2
	sub.w	$a0, $t1, $t0
	div.w	$t0, $a0, $a2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa1, $fa0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa2, $fa0
	pcalau12i	$a0, %got_pc_hi20(spots)
	ld.d	$a0, $a0, %got_pc_lo12(spots)
	ld.d	$t1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a0, $a0, %got_pc_lo12(randVar)
	lu12i.w	$a1, 269412
	ori	$a1, $a1, 3693
	lu12i.w	$a2, 3
	ori	$a2, $a2, 57
	ori	$t2, $zero, 1
	ori	$t3, $zero, 2
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a0, 0
	mul.d	$t4, $t4, $a1
	add.d	$t4, $t4, $a2
	st.w	$t4, $a0, 0
	pcalau12i	$t5, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $t5, %pc_lo12(.LCPI1_0)
	bstrpick.d	$t4, $t4, 30, 0
	movgr2fr.w	$fa3, $t4
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t4, $fa3
	add.d	$t4, $s8, $t4
	st.w	$t4, $s0, 0
	ld.w	$t4, $a0, 0
	mul.d	$t4, $t4, $a1
	add.d	$t4, $t4, $a2
	st.w	$t4, $a0, 0
	bstrpick.d	$t4, $t4, 30, 0
	movgr2fr.w	$fa3, $t4
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fmul.d	$fa3, $fa3, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t4, $fa3
	add.w	$t5, $s7, $t4
	st.w	$t5, $fp, 0
	ld.w	$t4, $s0, 0
	slli.d	$t6, $t4, 3
	ldx.d	$t6, $t1, $t6
	ldx.bu	$t6, $t6, $t5
	beqz	$t6, .LBB1_8
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	blt	$t4, $a3, .LBB1_1
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	blt	$a4, $t4, .LBB1_1
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	blt	$t5, $a5, .LBB1_1
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	blt	$a6, $t5, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_1 Depth=1
	sub.w	$t6, $t4, $a7
	srai.d	$t7, $t6, 31
	xor	$t6, $t6, $t7
	sub.w	$t6, $t6, $t7
	bltu	$t2, $t6, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	sub.w	$t5, $t5, $t0
	srai.d	$t6, $t5, 31
	xor	$t5, $t5, $t6
	sub.w	$t5, $t5, $t6
	bltu	$t5, $t3, .LBB1_1
.LBB1_8:
	ld.w	$a3, $t8, 0
	ld.w	$a4, $ra, 0
	mul.d	$a3, $a3, $t4
	add.d	$a3, $a3, $a4
	st.w	$a3, $s0, 0
	ld.w	$a3, $fp, 0
	ld.w	$a4, $t8, 0
	ld.w	$a5, $s3, 0
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a5
	st.w	$a3, $fp, 0
	ld.w	$a3, $t8, 0
	ld.w	$a4, $a0, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	mul.d	$a3, $a4, $a1
	add.d	$a3, $a3, $a2
	st.w	$a3, $a0, 0
	bstrpick.d	$a3, $a3, 30, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	ld.w	$a3, $s0, 0
	fmul.d	$fa1, $fa2, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a4, $fa1
	add.d	$a3, $a3, $a4
	st.w	$a3, $s0, 0
	ld.w	$a3, $t8, 0
	ld.w	$a4, $a0, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	mul.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a2
	st.w	$a1, $a0, 0
	bstrpick.d	$a0, $a1, 30, 0
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa2, $fa0
	ld.w	$a0, $fp, 0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, 0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end1:
	.size	pickSpot, .Lfunc_end1-pickSpot
                                        # -- End function
	.globl	forceGrid                       # -- Begin function forceGrid
	.p2align	5
	.type	forceGrid,@function
forceGrid:                              # @forceGrid
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(gOffsetX)
	ld.d	$a2, $a2, %got_pc_lo12(gOffsetX)
	ld.w	$a2, $a2, 0
	sub.w	$a3, $a0, $a2
	pcalau12i	$a4, %got_pc_hi20(gridX)
	ld.d	$a4, $a4, %got_pc_lo12(gridX)
	ld.w	$a4, $a4, 0
	mod.w	$a5, $a3, $a4
	sub.d	$a3, $a3, $a5
	add.d	$a2, $a3, $a2
	add.d	$a3, $a2, $a4
	sub.w	$a4, $a3, $a0
	srai.d	$a5, $a4, 31
	xor	$a4, $a4, $a5
	sub.w	$a4, $a4, $a5
	sub.w	$a0, $a2, $a0
	srai.d	$a5, $a0, 31
	xor	$a0, $a0, $a5
	sub.w	$a0, $a0, $a5
	sltu	$a0, $a4, $a0
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(newxx)
	st.w	$a0, $a2, %pc_lo12(newxx)
	pcalau12i	$a0, %got_pc_hi20(gOffsetY)
	ld.d	$a0, $a0, %got_pc_lo12(gOffsetY)
	ld.w	$a0, $a0, 0
	sub.w	$a2, $a1, $a0
	pcalau12i	$a3, %got_pc_hi20(gridY)
	ld.d	$a3, $a3, %got_pc_lo12(gridY)
	ld.w	$a3, $a3, 0
	mod.w	$a4, $a2, $a3
	sub.d	$a2, $a2, $a4
	add.d	$a0, $a2, $a0
	add.d	$a2, $a0, $a3
	sub.w	$a3, $a2, $a1
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.w	$a3, $a3, $a4
	sub.w	$a1, $a0, $a1
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.w	$a1, $a1, $a4
	sltu	$a1, $a3, $a1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(newyy)
	st.w	$a0, $a1, %pc_lo12(newyy)
	ret
.Lfunc_end2:
	.size	forceGrid, .Lfunc_end2-forceGrid
                                        # -- End function
	.globl	fixSpot                         # -- Begin function fixSpot
	.p2align	5
	.type	fixSpot,@function
fixSpot:                                # @fixSpot
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
	move	$fp, $a0
	addi.d	$s5, $a0, 152
	slli.d	$a0, $a3, 3
	ldx.d	$s6, $s5, $a0
	ld.w	$a0, $s6, 56
	add.w	$s2, $a0, $a1
	ld.w	$a0, $s6, 60
	ld.w	$a3, $s6, 64
	ld.w	$a4, $s6, 68
	fld.d	$fa0, $s6, 8
	add.w	$s3, $a0, $a1
	add.w	$s0, $a3, $a2
	add.w	$s1, $a4, $a2
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 16
	sub.w	$s4, $s2, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 24
	add.w	$s3, $a0, $s3
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s6, 32
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(spotXhash)
	ld.d	$s6, $a1, %got_pc_lo12(spotXhash)
	ld.w	$a1, $s6, 0
	sub.w	$a3, $s4, $a1
	pcalau12i	$a2, %got_pc_hi20(spotSize)
	ld.d	$s7, $a2, %got_pc_lo12(spotSize)
	ld.w	$a2, $s7, 0
	div.w	$a4, $a3, $a2
	sub.w	$a1, $s3, $a1
	div.w	$a1, $a1, $a2
	pcalau12i	$a3, %got_pc_hi20(spotYhash)
	ld.d	$s4, $a3, %got_pc_lo12(spotYhash)
	addi.w	$a3, $a4, 1
	bge	$a3, $a1, .LBB3_18
# %bb.1:                                # %.lr.ph106
	ld.w	$a3, $s4, 0
	add.d	$a0, $a0, $s1
	sub.w	$a0, $a0, $a3
	div.w	$a0, $a0, $a2
	add.d	$a3, $s2, $a3
	sub.w	$a3, $s0, $a3
	div.w	$a2, $a3, $a2
	addi.w	$a3, $a2, 1
	bge	$a3, $a0, .LBB3_18
# %bb.2:                                # %.lr.ph.us.preheader
	addi.d	$a4, $a4, 1
	sub.d	$a5, $a0, $a2
	addi.w	$a5, $a5, -2
	bstrpick.d	$a6, $a5, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a7, $a6, 32, 5
	slli.d	$a7, $a7, 5
	add.d	$t0, $a3, $a7
	andi	$t1, $a6, 24
	bstrpick.d	$t3, $a6, 32, 3
	slli.d	$t2, $t3, 3
	alsl.w	$t3, $t3, $a3, 3
	addi.d	$t4, $a2, 17
	sub.d	$t5, $zero, $t2
	addi.d	$t6, $a2, 1
	pcalau12i	$t7, %got_pc_hi20(spots)
	ld.d	$t7, $t7, %got_pc_lo12(spots)
	ori	$t8, $zero, 7
	ori	$s0, $zero, 31
	vrepli.b	$vr0, -1
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %..loopexit100_crit_edge.us
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a4, $a4, 1
	addi.w	$s1, $a4, 0
	beq	$a1, $s1, .LBB3_18
.LBB3_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #     Child Loop BB3_13 Depth 2
                                        #     Child Loop BB3_16 Depth 2
	ld.d	$s1, $t7, 0
	slli.d	$s2, $a4, 3
	ldx.d	$s2, $s1, $s2
	add.d	$s1, $s2, $a2
	bgeu	$a5, $t8, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $a3
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	bgeu	$a5, $s0, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	move	$s8, $zero
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_8:                                # %vector.body.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	add.d	$s3, $s2, $t4
	move	$s8, $a7
	.p2align	4, , 16
.LBB3_9:                                # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $s3, -16
	vld	$vr2, $s3, 0
	vadd.b	$vr1, $vr1, $vr0
	vadd.b	$vr2, $vr2, $vr0
	vst	$vr1, $s3, -16
	vst	$vr2, $s3, 0
	addi.d	$s8, $s8, -32
	addi.d	$s3, $s3, 32
	bnez	$s8, .LBB3_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$a6, $a7, .LBB3_3
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s8, $a7
	beqz	$t1, .LBB3_17
.LBB3_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	add.d	$s1, $s1, $t2
	add.d	$s3, $t5, $s8
	add.d	$s2, $s2, $t6
	add.d	$s2, $s2, $s8
	.p2align	4, , 16
.LBB3_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s2, 0
	vinsgr2vr.d	$vr1, $s8, 0
	vadd.b	$vr1, $vr1, $vr0
	vstelm.d	$vr1, $s2, 0, 0
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB3_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $t3
	beq	$a6, $t2, .LBB3_3
.LBB3_15:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.d	$s2, $a0, $s2
	addi.d	$s1, $s1, 1
	.p2align	4, , 16
.LBB3_16:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s3, $s1, 0
	addi.d	$s3, $s3, -1
	st.b	$s3, $s1, 0
	addi.w	$s2, $s2, -1
	addi.d	$s1, $s1, 1
	bnez	$s2, .LBB3_16
	b	.LBB3_3
.LBB3_17:                               #   in Loop: Header=BB3_4 Depth=1
	add.d	$s1, $s1, $a7
	move	$s2, $t0
	b	.LBB3_15
.LBB3_18:                               # %._crit_edge
	ld.w	$a0, $fp, 56
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $s5, $a0
	ld.w	$a0, $fp, 12
	ld.w	$a1, $s5, 56
	ld.w	$a2, $fp, 16
	add.w	$s1, $a1, $a0
	ld.w	$a1, $s5, 60
	ld.w	$a3, $s5, 64
	ld.w	$a4, $s5, 68
	fld.d	$fa0, $s5, 8
	add.w	$s2, $a1, $a0
	add.w	$fp, $a3, $a2
	add.w	$s0, $a4, $a2
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s5, 16
	sub.w	$s3, $s1, $a0
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s5, 24
	add.w	$s2, $a0, $s2
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s5, 32
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s7, 0
	sub.w	$a3, $s3, $a1
	div.w	$a4, $a3, $a2
	sub.w	$a1, $s2, $a1
	div.w	$a1, $a1, $a2
	addi.w	$a3, $a4, 1
	bge	$a3, $a1, .LBB3_36
# %bb.19:                               # %.lr.ph114
	ld.w	$a3, $s4, 0
	add.d	$a0, $a0, $s0
	sub.w	$a0, $a0, $a3
	div.w	$a0, $a0, $a2
	add.d	$a3, $s1, $a3
	sub.w	$a3, $fp, $a3
	div.w	$a2, $a3, $a2
	addi.w	$a3, $a2, 1
	bge	$a3, $a0, .LBB3_36
# %bb.20:                               # %.lr.ph.us116.preheader
	addi.d	$a4, $a4, 1
	sub.d	$a5, $a0, $a2
	addi.w	$a5, $a5, -2
	bstrpick.d	$a6, $a5, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a7, $a6, 32, 5
	slli.d	$a7, $a7, 5
	add.d	$t0, $a3, $a7
	andi	$t1, $a6, 24
	bstrpick.d	$t3, $a6, 32, 3
	slli.d	$t2, $t3, 3
	alsl.w	$t3, $t3, $a3, 3
	addi.d	$t4, $a2, 17
	sub.d	$t5, $zero, $t2
	addi.d	$t6, $a2, 1
	pcalau12i	$t7, %got_pc_hi20(spots)
	ld.d	$t7, $t7, %got_pc_lo12(spots)
	ori	$t8, $zero, 7
	ori	$fp, $zero, 31
	b	.LBB3_22
	.p2align	4, , 16
.LBB3_21:                               # %..loopexit_crit_edge.us
                                        #   in Loop: Header=BB3_22 Depth=1
	addi.d	$a4, $a4, 1
	addi.w	$s0, $a4, 0
	beq	$a1, $s0, .LBB3_36
.LBB3_22:                               # %iter.check142
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_27 Depth 2
                                        #     Child Loop BB3_31 Depth 2
                                        #     Child Loop BB3_34 Depth 2
	ld.d	$s0, $t7, 0
	slli.d	$s1, $a4, 3
	ldx.d	$s1, $s0, $s1
	add.d	$s0, $s1, $a2
	bgeu	$a5, $t8, .LBB3_24
# %bb.23:                               #   in Loop: Header=BB3_22 Depth=1
	move	$s1, $a3
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_24:                               # %vector.main.loop.iter.check144
                                        #   in Loop: Header=BB3_22 Depth=1
	bgeu	$a5, $fp, .LBB3_26
# %bb.25:                               #   in Loop: Header=BB3_22 Depth=1
	move	$s3, $zero
	b	.LBB3_30
	.p2align	4, , 16
.LBB3_26:                               # %vector.body148.preheader
                                        #   in Loop: Header=BB3_22 Depth=1
	add.d	$s2, $s1, $t4
	move	$s3, $a7
	.p2align	4, , 16
.LBB3_27:                               # %vector.body148
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s2, -16
	vld	$vr1, $s2, 0
	vaddi.bu	$vr0, $vr0, 1
	vaddi.bu	$vr1, $vr1, 1
	vst	$vr0, $s2, -16
	vst	$vr1, $s2, 0
	addi.d	$s3, $s3, -32
	addi.d	$s2, $s2, 32
	bnez	$s3, .LBB3_27
# %bb.28:                               # %middle.block154
                                        #   in Loop: Header=BB3_22 Depth=1
	beq	$a6, $a7, .LBB3_21
# %bb.29:                               # %vec.epilog.iter.check159
                                        #   in Loop: Header=BB3_22 Depth=1
	move	$s3, $a7
	beqz	$t1, .LBB3_35
.LBB3_30:                               # %vec.epilog.ph158
                                        #   in Loop: Header=BB3_22 Depth=1
	add.d	$s0, $s0, $t2
	add.d	$s2, $t5, $s3
	add.d	$s1, $s1, $t6
	add.d	$s1, $s1, $s3
	.p2align	4, , 16
.LBB3_31:                               # %vec.epilog.vector.body165
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s1, 0
	vinsgr2vr.d	$vr0, $s3, 0
	vaddi.bu	$vr0, $vr0, 1
	vstelm.d	$vr0, $s1, 0, 0
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB3_31
# %bb.32:                               # %vec.epilog.middle.block170
                                        #   in Loop: Header=BB3_22 Depth=1
	move	$s1, $t3
	beq	$a6, $t2, .LBB3_21
.LBB3_33:                               # %vec.epilog.scalar.ph157.preheader
                                        #   in Loop: Header=BB3_22 Depth=1
	sub.d	$s1, $a0, $s1
	addi.d	$s0, $s0, 1
	.p2align	4, , 16
.LBB3_34:                               # %vec.epilog.scalar.ph157
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s2, $s0, 0
	addi.d	$s2, $s2, 1
	st.b	$s2, $s0, 0
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 1
	bnez	$s1, .LBB3_34
	b	.LBB3_21
.LBB3_35:                               #   in Loop: Header=BB3_22 Depth=1
	add.d	$s0, $s0, $a7
	move	$s1, $t0
	b	.LBB3_33
.LBB3_36:                               # %._crit_edge115
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
.Lfunc_end3:
	.size	fixSpot, .Lfunc_end3-fixSpot
                                        # -- End function
	.globl	fixSpotAsp                      # -- Begin function fixSpotAsp
	.p2align	5
	.type	fixSpotAsp,@function
fixSpotAsp:                             # @fixSpotAsp
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
	move	$s1, $a4
	move	$s0, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $a3
	move	$a2, $a4
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	add.d	$s7, $a0, $s3
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(spotXhash)
	ld.d	$s6, $a1, %got_pc_lo12(spotXhash)
	ld.w	$a1, $s6, 0
	add.d	$a2, $s5, $a1
	sub.w	$a3, $s4, $a2
	pcalau12i	$a2, %got_pc_hi20(spotSize)
	ld.d	$s5, $a2, %got_pc_lo12(spotSize)
	ld.w	$a2, $s5, 0
	div.w	$a4, $a3, $a2
	sub.w	$a1, $s7, $a1
	div.w	$a1, $a1, $a2
	pcalau12i	$a3, %got_pc_hi20(spotYhash)
	ld.d	$s4, $a3, %got_pc_lo12(spotYhash)
	addi.w	$a3, $a4, 1
	bge	$a3, $a1, .LBB4_18
# %bb.1:                                # %.lr.ph101
	ld.w	$a3, $s4, 0
	add.d	$a0, $a0, $a3
	sub.w	$a0, $s1, $a0
	div.w	$a0, $a0, $a2
	add.d	$a3, $s2, $a3
	sub.w	$a3, $s0, $a3
	div.w	$a2, $a3, $a2
	addi.w	$a3, $a2, 1
	bge	$a3, $a0, .LBB4_18
# %bb.2:                                # %.lr.ph.us.preheader
	addi.d	$a4, $a4, 1
	sub.d	$a5, $a0, $a2
	addi.w	$a5, $a5, -2
	bstrpick.d	$a6, $a5, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a7, $a6, 32, 5
	slli.d	$a7, $a7, 5
	add.d	$t0, $a3, $a7
	andi	$t1, $a6, 24
	bstrpick.d	$t3, $a6, 32, 3
	slli.d	$t2, $t3, 3
	alsl.w	$t3, $t3, $a3, 3
	addi.d	$t4, $a2, 17
	sub.d	$t5, $zero, $t2
	addi.d	$t6, $a2, 1
	pcalau12i	$t7, %got_pc_hi20(spots)
	ld.d	$t7, $t7, %got_pc_lo12(spots)
	ori	$t8, $zero, 7
	ori	$s0, $zero, 31
	vrepli.b	$vr0, -1
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %..loopexit95_crit_edge.us
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a4, $a4, 1
	addi.w	$s1, $a4, 0
	beq	$a1, $s1, .LBB4_18
.LBB4_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #     Child Loop BB4_13 Depth 2
                                        #     Child Loop BB4_16 Depth 2
	ld.d	$s1, $t7, 0
	slli.d	$s2, $a4, 3
	ldx.d	$s2, $s1, $s2
	add.d	$s1, $s2, $a2
	bgeu	$a5, $t8, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	move	$s2, $a3
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_4 Depth=1
	bgeu	$a5, $s0, .LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_4 Depth=1
	move	$s7, $zero
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_8:                                # %vector.body.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$s3, $s2, $t4
	move	$s7, $a7
	.p2align	4, , 16
.LBB4_9:                                # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $s3, -16
	vld	$vr2, $s3, 0
	vadd.b	$vr1, $vr1, $vr0
	vadd.b	$vr2, $vr2, $vr0
	vst	$vr1, $s3, -16
	vst	$vr2, $s3, 0
	addi.d	$s7, $s7, -32
	addi.d	$s3, $s3, 32
	bnez	$s7, .LBB4_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB4_4 Depth=1
	beq	$a6, $a7, .LBB4_3
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s7, $a7
	beqz	$t1, .LBB4_17
.LBB4_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$s1, $s1, $t2
	add.d	$s3, $t5, $s7
	add.d	$s2, $s2, $t6
	add.d	$s2, $s2, $s7
	.p2align	4, , 16
.LBB4_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s2, 0
	vinsgr2vr.d	$vr1, $s7, 0
	vadd.b	$vr1, $vr1, $vr0
	vstelm.d	$vr1, $s2, 0, 0
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB4_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s2, $t3
	beq	$a6, $t2, .LBB4_3
.LBB4_15:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	sub.d	$s2, $a0, $s2
	addi.d	$s1, $s1, 1
	.p2align	4, , 16
.LBB4_16:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s3, $s1, 0
	addi.d	$s3, $s3, -1
	st.b	$s3, $s1, 0
	addi.w	$s2, $s2, -1
	addi.d	$s1, $s1, 1
	bnez	$s2, .LBB4_16
	b	.LBB4_3
.LBB4_17:                               #   in Loop: Header=BB4_4 Depth=1
	add.d	$s1, $s1, $a7
	move	$s2, $t0
	b	.LBB4_15
.LBB4_18:                               # %._crit_edge
	ld.w	$a0, $fp, 56
	alsl.d	$a0, $a0, $fp, 3
	ld.d	$s7, $a0, 152
	ld.w	$a0, $fp, 12
	ld.w	$a1, $s7, 56
	ld.w	$a2, $fp, 16
	add.w	$s1, $a1, $a0
	ld.w	$a1, $s7, 60
	ld.w	$a3, $s7, 64
	ld.w	$a4, $s7, 68
	fld.d	$fa0, $s7, 8
	add.w	$s2, $a1, $a0
	add.w	$fp, $a3, $a2
	add.w	$s0, $a4, $a2
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 16
	sub.w	$s3, $s1, $a0
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 24
	add.w	$s2, $a0, $s2
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 32
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s5, 0
	sub.w	$a3, $s3, $a1
	div.w	$a4, $a3, $a2
	sub.w	$a1, $s2, $a1
	div.w	$a1, $a1, $a2
	addi.w	$a3, $a4, 1
	bge	$a3, $a1, .LBB4_36
# %bb.19:                               # %.lr.ph109
	ld.w	$a3, $s4, 0
	add.d	$a0, $a0, $s0
	sub.w	$a0, $a0, $a3
	div.w	$a0, $a0, $a2
	add.d	$a3, $s1, $a3
	sub.w	$a3, $fp, $a3
	div.w	$a2, $a3, $a2
	addi.w	$a3, $a2, 1
	bge	$a3, $a0, .LBB4_36
# %bb.20:                               # %.lr.ph.us111.preheader
	addi.d	$a4, $a4, 1
	sub.d	$a5, $a0, $a2
	addi.w	$a5, $a5, -2
	bstrpick.d	$a6, $a5, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a7, $a6, 32, 5
	slli.d	$a7, $a7, 5
	add.d	$t0, $a3, $a7
	andi	$t1, $a6, 24
	bstrpick.d	$t3, $a6, 32, 3
	slli.d	$t2, $t3, 3
	alsl.w	$t3, $t3, $a3, 3
	addi.d	$t4, $a2, 17
	sub.d	$t5, $zero, $t2
	addi.d	$t6, $a2, 1
	pcalau12i	$t7, %got_pc_hi20(spots)
	ld.d	$t7, $t7, %got_pc_lo12(spots)
	ori	$t8, $zero, 7
	ori	$fp, $zero, 31
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_21:                               # %..loopexit_crit_edge.us
                                        #   in Loop: Header=BB4_22 Depth=1
	addi.d	$a4, $a4, 1
	addi.w	$s0, $a4, 0
	beq	$a1, $s0, .LBB4_36
.LBB4_22:                               # %iter.check137
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
                                        #     Child Loop BB4_31 Depth 2
                                        #     Child Loop BB4_34 Depth 2
	ld.d	$s0, $t7, 0
	slli.d	$s1, $a4, 3
	ldx.d	$s1, $s0, $s1
	add.d	$s0, $s1, $a2
	bgeu	$a5, $t8, .LBB4_24
# %bb.23:                               #   in Loop: Header=BB4_22 Depth=1
	move	$s1, $a3
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_24:                               # %vector.main.loop.iter.check139
                                        #   in Loop: Header=BB4_22 Depth=1
	bgeu	$a5, $fp, .LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_22 Depth=1
	move	$s3, $zero
	b	.LBB4_30
	.p2align	4, , 16
.LBB4_26:                               # %vector.body143.preheader
                                        #   in Loop: Header=BB4_22 Depth=1
	add.d	$s2, $s1, $t4
	move	$s3, $a7
	.p2align	4, , 16
.LBB4_27:                               # %vector.body143
                                        #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s2, -16
	vld	$vr1, $s2, 0
	vaddi.bu	$vr0, $vr0, 1
	vaddi.bu	$vr1, $vr1, 1
	vst	$vr0, $s2, -16
	vst	$vr1, $s2, 0
	addi.d	$s3, $s3, -32
	addi.d	$s2, $s2, 32
	bnez	$s3, .LBB4_27
# %bb.28:                               # %middle.block149
                                        #   in Loop: Header=BB4_22 Depth=1
	beq	$a6, $a7, .LBB4_21
# %bb.29:                               # %vec.epilog.iter.check154
                                        #   in Loop: Header=BB4_22 Depth=1
	move	$s3, $a7
	beqz	$t1, .LBB4_35
.LBB4_30:                               # %vec.epilog.ph153
                                        #   in Loop: Header=BB4_22 Depth=1
	add.d	$s0, $s0, $t2
	add.d	$s2, $t5, $s3
	add.d	$s1, $s1, $t6
	add.d	$s1, $s1, $s3
	.p2align	4, , 16
.LBB4_31:                               # %vec.epilog.vector.body160
                                        #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s1, 0
	vinsgr2vr.d	$vr0, $s3, 0
	vaddi.bu	$vr0, $vr0, 1
	vstelm.d	$vr0, $s1, 0, 0
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB4_31
# %bb.32:                               # %vec.epilog.middle.block165
                                        #   in Loop: Header=BB4_22 Depth=1
	move	$s1, $t3
	beq	$a6, $t2, .LBB4_21
.LBB4_33:                               # %vec.epilog.scalar.ph152.preheader
                                        #   in Loop: Header=BB4_22 Depth=1
	sub.d	$s1, $a0, $s1
	addi.d	$s0, $s0, 1
	.p2align	4, , 16
.LBB4_34:                               # %vec.epilog.scalar.ph152
                                        #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s2, $s0, 0
	addi.d	$s2, $s2, 1
	st.b	$s2, $s0, 0
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 1
	bnez	$s1, .LBB4_34
	b	.LBB4_21
.LBB4_35:                               #   in Loop: Header=BB4_22 Depth=1
	add.d	$s0, $s0, $a7
	move	$s1, $t0
	b	.LBB4_33
.LBB4_36:                               # %._crit_edge110
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
.Lfunc_end4:
	.size	fixSpotAsp, .Lfunc_end4-fixSpotAsp
                                        # -- End function
	.type	flips,@object                   # @flips
	.comm	flips,4,4
	.type	flipp,@object                   # @flipp
	.comm	flipp,4,4
	.type	attp,@object                    # @attp
	.comm	attp,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"range limiter:%d units either way in x"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"   compared to bdxlength:%d\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"range limiter:%d units either way in y"
	.size	.L.str.2, 39

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"   compared to bdylength:%d\n"
	.size	.L.str.3, 29

	.type	newxx,@object                   # @newxx
	.comm	newxx,4,4
	.type	newyy,@object                   # @newyy
	.comm	newyy,4,4
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"acceptance breakdown:\n"
	.size	.L.str.4, 23

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"              single cell: %d / %d\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"     single w/ orient chg: %d / %d\n"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"               orient chg: %d / %d\n"
	.size	.L.str.7, 36

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"                pin moves: %d / %d\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"        aspect ratio chgs: %d / %d\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"        cell interchanges: %d / %d\n"
	.size	.L.str.10, 36

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"      interchgs w/ orient: %d / %d\n"
	.size	.L.str.11, 36

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\tno. of accepted flips: %d\n"
	.size	.L.str.12, 28

	.section	".note.GNU-stack","",@progbits
	.addrsig
