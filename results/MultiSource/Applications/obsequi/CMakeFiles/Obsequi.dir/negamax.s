	.file	"negamax.c"
	.text
	.globl	search_for_move                 # -- Begin function search_for_move
	.p2align	5
	.type	search_for_move,@function
search_for_move:                        # @search_for_move
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -1424
	move	$s3, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ldx.w	$s6, $a0, $a1
	ori	$a0, $zero, 86
	ori	$s7, $zero, 1
	beq	$s6, $a0, .LBB0_3
# %bb.1:
	ori	$a0, $zero, 72
	bne	$s6, $a0, .LBB0_55
# %bb.2:
	move	$s7, $zero
.LBB0_3:
	pcalau12i	$a0, %got_pc_hi20(g_board_size)
	ld.d	$a0, $a0, %got_pc_lo12(g_board_size)
	ld.w	$a0, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	blez	$a0, .LBB0_6
# %bb.4:                                # %iter.check
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB0_7
# %bb.5:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_16
.LBB0_6:
	move	$a2, $zero
	b	.LBB0_18
.LBB0_7:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$a0, $a1, .LBB0_9
# %bb.8:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_13
.LBB0_9:                                # %vector.ph
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	addi.d	$a2, $a1, 36
	bstrpick.d	$a1, $a0, 30, 4
	slli.d	$a1, $a1, 4
	xvrepli.b	$xr0, 0
	xvrepli.b	$xr1, -1
	xvldi	$xr2, -2305
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	move	$a4, $a1
	xvori.b	$xr3, $xr0, 0
	.p2align	4, , 16
.LBB0_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a2, -32
	xvld	$xr5, $a2, 0
	xvxor.v	$xr6, $xr4, $xr1
	xvxor.v	$xr7, $xr5, $xr1
	xvandn.v	$xr4, $xr4, $xr2
	xvandn.v	$xr5, $xr5, $xr2
	xvpermi.q	$xr8, $xr4, 1
	vpickve2gr.w	$a5, $vr8, 3
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.w	$a6, $vr8, 2
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.w	$a7, $vr8, 1
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr8, 0
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.w	$t1, $vr4, 3
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.w	$t2, $vr4, 2
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.w	$t3, $vr4, 1
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.w	$t4, $vr4, 0
	bstrpick.d	$t4, $t4, 15, 0
	xvpermi.q	$xr4, $xr5, 1
	vpickve2gr.w	$t5, $vr4, 3
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.w	$t6, $vr4, 2
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.w	$t7, $vr4, 1
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.w	$t8, $vr4, 0
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.w	$fp, $vr5, 3
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.w	$s0, $vr5, 2
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.w	$s1, $vr5, 1
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.w	$s2, $vr5, 0
	bstrpick.d	$s2, $s2, 15, 0
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$s2, $s2, 2
	slli.d	$s1, $s1, 2
	slli.d	$s0, $s0, 2
	slli.d	$fp, $fp, 2
	slli.d	$t8, $t8, 2
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	ldx.w	$t4, $a3, $t4
	ldx.w	$t3, $a3, $t3
	ldx.w	$t2, $a3, $t2
	ldx.w	$t1, $a3, $t1
	ldx.w	$t0, $a3, $t0
	ldx.w	$a7, $a3, $a7
	ldx.w	$a6, $a3, $a6
	ldx.w	$a5, $a3, $a5
	xvinsgr2vr.w	$xr4, $t4, 0
	xvinsgr2vr.w	$xr4, $t3, 1
	xvinsgr2vr.w	$xr4, $t2, 2
	xvinsgr2vr.w	$xr4, $t1, 3
	xvinsgr2vr.w	$xr4, $t0, 4
	xvinsgr2vr.w	$xr4, $a7, 5
	xvinsgr2vr.w	$xr4, $a6, 6
	xvinsgr2vr.w	$xr4, $a5, 7
	ldx.w	$a5, $a3, $s2
	ldx.w	$a6, $a3, $s1
	ldx.w	$a7, $a3, $s0
	ldx.w	$t0, $a3, $fp
	ldx.w	$t1, $a3, $t8
	ldx.w	$t2, $a3, $t7
	ldx.w	$t3, $a3, $t6
	ldx.w	$t4, $a3, $t5
	xvinsgr2vr.w	$xr5, $a5, 0
	xvinsgr2vr.w	$xr5, $a6, 1
	xvinsgr2vr.w	$xr5, $a7, 2
	xvinsgr2vr.w	$xr5, $t0, 3
	xvinsgr2vr.w	$xr5, $t1, 4
	xvinsgr2vr.w	$xr5, $t2, 5
	xvinsgr2vr.w	$xr5, $t3, 6
	xvinsgr2vr.w	$xr5, $t4, 7
	xvsrli.w	$xr6, $xr6, 16
	xvsrli.w	$xr7, $xr7, 16
	xvpermi.q	$xr8, $xr6, 1
	vpickve2gr.w	$a5, $vr8, 3
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.w	$a6, $vr8, 2
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.w	$a7, $vr8, 1
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr8, 0
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.w	$t1, $vr6, 3
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.w	$t2, $vr6, 2
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.w	$t3, $vr6, 1
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.w	$t4, $vr6, 0
	bstrpick.d	$t4, $t4, 15, 0
	xvpermi.q	$xr6, $xr7, 1
	vpickve2gr.w	$t5, $vr6, 3
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.w	$t6, $vr6, 2
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.w	$t7, $vr6, 1
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.w	$t8, $vr6, 0
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.w	$fp, $vr7, 3
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.w	$s0, $vr7, 2
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.w	$s1, $vr7, 1
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.w	$s2, $vr7, 0
	bstrpick.d	$s2, $s2, 15, 0
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$s2, $s2, 2
	slli.d	$s1, $s1, 2
	slli.d	$s0, $s0, 2
	slli.d	$fp, $fp, 2
	slli.d	$t8, $t8, 2
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	ldx.w	$t4, $a3, $t4
	ldx.w	$t3, $a3, $t3
	ldx.w	$t2, $a3, $t2
	ldx.w	$t1, $a3, $t1
	ldx.w	$t0, $a3, $t0
	ldx.w	$a7, $a3, $a7
	ldx.w	$a6, $a3, $a6
	ldx.w	$a5, $a3, $a5
	xvinsgr2vr.w	$xr6, $t4, 0
	xvinsgr2vr.w	$xr6, $t3, 1
	xvinsgr2vr.w	$xr6, $t2, 2
	xvinsgr2vr.w	$xr6, $t1, 3
	xvinsgr2vr.w	$xr6, $t0, 4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvinsgr2vr.w	$xr6, $a6, 6
	xvinsgr2vr.w	$xr6, $a5, 7
	ldx.w	$a5, $a3, $s2
	ldx.w	$a6, $a3, $s1
	ldx.w	$a7, $a3, $s0
	ldx.w	$t0, $a3, $fp
	ldx.w	$t1, $a3, $t8
	ldx.w	$t2, $a3, $t7
	ldx.w	$t3, $a3, $t6
	ldx.w	$t4, $a3, $t5
	xvinsgr2vr.w	$xr7, $a5, 0
	xvinsgr2vr.w	$xr7, $a6, 1
	xvinsgr2vr.w	$xr7, $a7, 2
	xvinsgr2vr.w	$xr7, $t0, 3
	xvinsgr2vr.w	$xr7, $t1, 4
	xvinsgr2vr.w	$xr7, $t2, 5
	xvinsgr2vr.w	$xr7, $t3, 6
	xvinsgr2vr.w	$xr7, $t4, 7
	xvadd.w	$xr0, $xr4, $xr0
	xvadd.w	$xr3, $xr5, $xr3
	xvadd.w	$xr0, $xr0, $xr6
	xvadd.w	$xr3, $xr3, $xr7
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB0_10
# %bb.11:                               # %middle.block
	xvadd.w	$xr0, $xr3, $xr0
	xvhaddw.d.w	$xr0, $xr0, $xr0
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a2, $xr0, 0
	beq	$a1, $a0, .LBB0_18
# %bb.12:                               # %vec.epilog.iter.check
	andi	$a3, $a0, 12
	beqz	$a3, .LBB0_16
.LBB0_13:                               # %vec.epilog.ph
	move	$a3, $a1
	bstrpick.d	$a1, $a0, 30, 2
	slli.d	$a1, $a1, 2
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vinsgr2vr.w	$vr0, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(g_board)
	ld.d	$a2, $a2, %got_pc_lo12(g_board)
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, 4
	sub.d	$a3, $a3, $a1
	vrepli.b	$vr1, -1
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	.p2align	4, , 16
.LBB0_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a2, 0
	vxor.v	$vr2, $vr2, $vr1
	vpickve2gr.w	$a5, $vr2, 3
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.w	$a6, $vr2, 2
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.w	$a7, $vr2, 1
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr2, 0
	bstrpick.d	$t0, $t0, 15, 0
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	ldx.w	$t0, $a4, $t0
	ldx.w	$a7, $a4, $a7
	ldx.w	$a6, $a4, $a6
	ldx.w	$a5, $a4, $a5
	vinsgr2vr.w	$vr3, $t0, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a5, 3
	vsrli.w	$vr2, $vr2, 16
	vpickve2gr.w	$a5, $vr2, 3
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.w	$a6, $vr2, 2
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.w	$a7, $vr2, 1
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr2, 0
	bstrpick.d	$t0, $t0, 15, 0
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	ldx.w	$t0, $a4, $t0
	ldx.w	$a7, $a4, $a7
	ldx.w	$a6, $a4, $a6
	ldx.w	$a5, $a4, $a5
	vinsgr2vr.w	$vr2, $t0, 0
	vinsgr2vr.w	$vr2, $a7, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a5, 3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr0, $vr2
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB0_14
# %bb.15:                               # %vec.epilog.middle.block
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_18
.LBB0_16:                               # %.lr.ph.preheader
	sub.d	$a0, $a0, $a1
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	alsl.d	$a1, $a1, $a3, 2
	addi.d	$a1, $a1, 4
	lu12i.w	$a3, -16
	lu32i.d	$a3, 0
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	.p2align	4, , 16
.LBB0_17:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	andn	$a6, $a3, $a5
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 15, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a4, $a5
	srli.d	$a6, $a6, 14
	ldx.w	$a6, $a4, $a6
	add.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB0_17
.LBB0_18:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(g_empty_squares)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.w	$a2, $a0, %pc_lo12(g_empty_squares)
	pcalau12i	$a0, %pc_hi20(stat_cutoffs)
	addi.d	$a0, $a0, %pc_lo12(stat_cutoffs)
	ori	$a2, $zero, 160
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(stat_nodes)
	addi.d	$a0, $a0, %pc_lo12(stat_nodes)
	ori	$a2, $zero, 160
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(stat_nth_try)
	addi.d	$fp, $a0, %pc_lo12(stat_nth_try)
	st.d	$zero, $fp, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $fp, 8
	st.d	$zero, $fp, 40
	vst	$vr0, $fp, 48
	st.d	$zero, $fp, 80
	vst	$vr0, $fp, 88
	st.d	$zero, $fp, 120
	vst	$vr0, $fp, 128
	st.d	$zero, $fp, 160
	vst	$vr0, $fp, 168
	vst	$vr0, $fp, 200
	st.d	$zero, $fp, 216
	st.d	$zero, $fp, 256
	vst	$vr0, $fp, 240
	st.d	$zero, $fp, 296
	vst	$vr0, $fp, 280
	st.d	$zero, $fp, 336
	vst	$vr0, $fp, 320
	st.d	$zero, $fp, 376
	vst	$vr0, $fp, 360
	st.d	$zero, $fp, 416
	vst	$vr0, $fp, 400
	st.d	$zero, $fp, 456
	vst	$vr0, $fp, 440
	st.d	$zero, $fp, 496
	vst	$vr0, $fp, 480
	st.d	$zero, $fp, 536
	vst	$vr0, $fp, 520
	st.d	$zero, $fp, 576
	vst	$vr0, $fp, 560
	st.d	$zero, $fp, 616
	vst	$vr0, $fp, 600
	vst	$vr0, $fp, 640
	st.d	$zero, $fp, 656
	st.d	$zero, $fp, 696
	vst	$vr0, $fp, 680
	st.d	$zero, $fp, 736
	vst	$vr0, $fp, 720
	st.d	$zero, $fp, 776
	vst	$vr0, $fp, 760
	st.d	$zero, $fp, 816
	vst	$vr0, $fp, 800
	st.d	$zero, $fp, 856
	vst	$vr0, $fp, 840
	st.d	$zero, $fp, 896
	vst	$vr0, $fp, 880
	st.d	$zero, $fp, 936
	vst	$vr0, $fp, 920
	st.d	$zero, $fp, 976
	vst	$vr0, $fp, 960
	vst	$vr0, $fp, 1000
	st.d	$zero, $fp, 1016
	vst	$vr0, $fp, 1040
	st.d	$zero, $fp, 1056
	st.d	$zero, $fp, 1096
	vst	$vr0, $fp, 1080
	st.d	$zero, $fp, 1136
	vst	$vr0, $fp, 1120
	st.d	$zero, $fp, 1176
	vst	$vr0, $fp, 1160
	st.d	$zero, $fp, 1216
	vst	$vr0, $fp, 1200
	st.d	$zero, $fp, 1256
	vst	$vr0, $fp, 1240
	st.d	$zero, $fp, 1296
	vst	$vr0, $fp, 1280
	st.d	$zero, $fp, 1336
	vst	$vr0, $fp, 1320
	st.d	$zero, $fp, 1376
	vst	$vr0, $fp, 1360
	st.d	$zero, $fp, 1416
	vst	$vr0, $fp, 1400
	st.d	$zero, $fp, 1456
	vst	$vr0, $fp, 1440
	st.d	$zero, $fp, 1496
	vst	$vr0, $fp, 1480
	st.d	$zero, $fp, 1536
	vst	$vr0, $fp, 1520
	st.d	$zero, $fp, 1576
	vst	$vr0, $fp, 1560
	xori	$a4, $s7, 1
	ori	$a2, $zero, 12
	mul.d	$a0, $s7, $a2
	pcalau12i	$a1, %got_pc_hi20(g_info_totals)
	ld.d	$a1, $a1, %got_pc_lo12(g_info_totals)
	ldx.w	$a3, $a1, $a0
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	mul.d	$a2, $a4, $a2
	add.d	$a2, $a1, $a2
	ld.w	$a4, $a2, 4
	bge	$a4, $a3, .LBB0_20
# %bb.19:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s5, 0
	st.w	$a0, $s4, 0
	st.d	$zero, $s3, 0
	lu12i.w	$a0, 1
	ori	$s3, $a0, 904
	b	.LBB0_54
.LBB0_20:
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a2, 0
	ld.w	$a0, $a0, 4
	bge	$a1, $a0, .LBB0_50
# %bb.21:
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 296
	addi.d	$s0, $sp, 296
	move	$a1, $s7
	pcaddu18i	$ra, %call36(move_generator)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB0_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a3, $a1, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 160
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_fatal_error_aux)
	jirl	$ra, $ra, 0
.LBB0_23:
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	addi.d	$a0, $sp, 296
	move	$a1, $s4
	move	$a2, $s7
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	move	$a4, $zero
	pcaddu18i	$ra, %call36(score_and_get_first)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 296
	ori	$a1, $zero, 1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(sort_moves)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $s7, 1
	slli.d	$a0, $a0, 14
	pcalau12i	$a1, %got_pc_hi20(g_keyinfo)
	ld.d	$a1, $a1, %got_pc_lo12(g_keyinfo)
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(g_num_nodes)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(stat_cutoffs)
	addi.d	$a0, $a0, %pc_lo12(stat_cutoffs)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(stat_nodes)
	addi.d	$a0, $a0, %pc_lo12(stat_nodes)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(starting_depth)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3192
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(g_move_number)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(g_norm_hashkey)
	addi.d	$a0, $a0, %pc_lo12(g_norm_hashkey)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(g_flipV_hashkey)
	addi.d	$a0, $a0, %pc_lo12(g_flipV_hashkey)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(g_flipH_hashkey)
	addi.d	$a0, $a0, %pc_lo12(g_flipH_hashkey)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(g_flipVH_hashkey)
	addi.d	$a0, $a0, %pc_lo12(g_flipVH_hashkey)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s3, $zero
	lu12i.w	$a0, 1
	ori	$a0, $a0, 904
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	ori	$a0, $zero, 1
                                        # implicit-def: $r28
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %._crit_edge321
                                        #   in Loop: Header=BB0_25 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(g_num_nodes)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s1, 44
	ori	$a1, $zero, 6
	bgeu	$s1, $a1, .LBB0_51
.LBB0_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	move	$s1, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(g_num_nodes)
	ori	$a2, $zero, 160
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 160
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $fp, 8
	st.d	$zero, $fp, 40
	vst	$vr0, $fp, 48
	st.d	$zero, $fp, 80
	vst	$vr0, $fp, 88
	st.d	$zero, $fp, 120
	vst	$vr0, $fp, 128
	st.d	$zero, $fp, 160
	vst	$vr0, $fp, 168
	vst	$vr0, $fp, 200
	st.d	$zero, $fp, 216
	st.d	$zero, $fp, 256
	vst	$vr0, $fp, 240
	st.d	$zero, $fp, 296
	vst	$vr0, $fp, 280
	st.d	$zero, $fp, 336
	vst	$vr0, $fp, 320
	st.d	$zero, $fp, 376
	vst	$vr0, $fp, 360
	st.d	$zero, $fp, 416
	vst	$vr0, $fp, 400
	st.d	$zero, $fp, 456
	vst	$vr0, $fp, 440
	st.d	$zero, $fp, 496
	vst	$vr0, $fp, 480
	st.d	$zero, $fp, 536
	vst	$vr0, $fp, 520
	st.d	$zero, $fp, 576
	vst	$vr0, $fp, 560
	st.d	$zero, $fp, 616
	vst	$vr0, $fp, 600
	vst	$vr0, $fp, 640
	st.d	$zero, $fp, 656
	st.d	$zero, $fp, 696
	vst	$vr0, $fp, 680
	st.d	$zero, $fp, 736
	vst	$vr0, $fp, 720
	st.d	$zero, $fp, 776
	vst	$vr0, $fp, 760
	st.d	$zero, $fp, 816
	vst	$vr0, $fp, 800
	st.d	$zero, $fp, 856
	vst	$vr0, $fp, 840
	st.d	$zero, $fp, 896
	vst	$vr0, $fp, 880
	st.d	$zero, $fp, 936
	vst	$vr0, $fp, 920
	st.d	$zero, $fp, 976
	vst	$vr0, $fp, 960
	vst	$vr0, $fp, 1000
	st.d	$zero, $fp, 1016
	vst	$vr0, $fp, 1040
	st.d	$zero, $fp, 1056
	st.d	$zero, $fp, 1096
	vst	$vr0, $fp, 1080
	st.d	$zero, $fp, 1136
	vst	$vr0, $fp, 1120
	st.d	$zero, $fp, 1176
	vst	$vr0, $fp, 1160
	st.d	$zero, $fp, 1216
	vst	$vr0, $fp, 1200
	st.d	$zero, $fp, 1256
	vst	$vr0, $fp, 1240
	st.d	$zero, $fp, 1296
	vst	$vr0, $fp, 1280
	st.d	$zero, $fp, 1336
	vst	$vr0, $fp, 1320
	st.d	$zero, $fp, 1376
	vst	$vr0, $fp, 1360
	st.d	$zero, $fp, 1416
	vst	$vr0, $fp, 1400
	st.d	$zero, $fp, 1456
	vst	$vr0, $fp, 1440
	st.d	$zero, $fp, 1496
	vst	$vr0, $fp, 1480
	st.d	$zero, $fp, 1536
	vst	$vr0, $fp, 1520
	st.d	$zero, $fp, 1576
	vst	$vr0, $fp, 1560
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s1, $a0, %pc_lo12(starting_depth)
	blez	$s4, .LBB0_30
# %bb.26:                               # %.lr.ph294
                                        #   in Loop: Header=BB0_25 Depth=1
	move	$s0, $zero
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	addi.w	$a0, $s1, -1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$s2, $sp, 296
	move	$a1, $s4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_27:                               #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(set_position_values)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a1, $s3, %pc_lo12(g_empty_squares)
	srli.d	$a2, $s5, 32
	ld.wu	$a3, $s2, 8
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(g_move_number)
	ld.d	$a0, $s2, 0
	addi.d	$a1, $a1, -2
	st.w	$a1, $s3, %pc_lo12(g_empty_squares)
	move	$a1, $a3
	bstrins.d	$a1, $a2, 63, 32
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(toggle_move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s2, 4
	ori	$a2, $zero, 1536
	mul.d	$a0, $a0, $a2
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $s1, $a0
	ori	$a2, $zero, 48
	mul.d	$a1, $a1, $a2
	ldx.w	$a2, $a0, $a1
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a3, $a2, $a3
	srai.d	$a3, $a3, 5
	slli.d	$a3, $a3, 2
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a4, $s0, $a3
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 4
	sll.w	$a2, $s7, $a2
	xor	$a2, $a2, $a4
	stx.w	$a2, $s0, $a3
	bstrpick.d	$a2, $a1, 62, 58
	add.w	$a2, $a1, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $s0, $a2
	sll.w	$a1, $s7, $a1
	xor	$a1, $a1, $a3
	ld.w	$a3, $a0, 12
	stx.w	$a1, $s0, $a2
	ld.w	$a1, $a0, 8
	ld.w	$a2, $s0, 16
	bstrpick.d	$a4, $a3, 62, 58
	add.w	$a4, $a3, $a4
	srai.d	$a4, $a4, 5
	slli.d	$a4, $a4, 2
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a5, $s5, $a4
	xor	$a1, $a2, $a1
	ld.w	$a2, $a0, 16
	sll.w	$a3, $s7, $a3
	xor	$a3, $a3, $a5
	stx.w	$a3, $s5, $a4
	sll.w	$a3, $s7, $a2
	bstrpick.d	$a4, $a2, 62, 58
	add.w	$a2, $a2, $a4
	ld.w	$a4, $a0, 24
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a5, $s5, $a2
	bstrpick.d	$a6, $a4, 62, 58
	add.w	$a6, $a4, $a6
	srai.d	$a6, $a6, 5
	slli.d	$a6, $a6, 2
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a7, $s6, $a6
	xor	$a3, $a3, $a5
	ld.w	$a5, $a0, 28
	sll.w	$a4, $s7, $a4
	xor	$a4, $a4, $a7
	stx.w	$a4, $s6, $a6
	bstrpick.d	$a4, $a5, 62, 58
	add.w	$a4, $a5, $a4
	srai.d	$a4, $a4, 5
	slli.d	$a4, $a4, 2
	ldx.w	$a6, $s6, $a4
	stx.w	$a3, $s5, $a2
	ld.w	$a2, $a0, 36
	sll.w	$a3, $s7, $a5
	xor	$a3, $a3, $a6
	stx.w	$a3, $s6, $a4
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a3, $a2, $a3
	srai.d	$a3, $a3, 5
	slli.d	$a3, $a3, 2
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a4, $s8, $a3
	ld.w	$a5, $a0, 20
	sll.w	$a2, $s7, $a2
	ld.w	$a6, $a0, 40
	xor	$a2, $a2, $a4
	ld.w	$a4, $s5, 16
	stx.w	$a2, $s8, $a3
	bstrpick.d	$a2, $a6, 62, 58
	add.w	$a2, $a6, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $s8, $a2
	st.w	$a1, $s0, 16
	xor	$a1, $a4, $a5
	sll.w	$a4, $s7, $a6
	xor	$a3, $a4, $a3
	ld.w	$a4, $a0, 32
	stx.w	$a3, $s8, $a2
	ld.w	$a2, $s6, 16
	ld.w	$a0, $a0, 44
	ld.w	$a3, $s8, 16
	st.w	$a1, $s5, 16
	xor	$a1, $a2, $a4
	st.w	$a1, $s6, 16
	xor	$a0, $a3, $a0
	st.w	$a0, $s8, 16
	pcaddu18i	$ra, %call36(check_hash_code_sanity)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	sub.w	$a3, $zero, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(negamax)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.w	$a1, $s3, %pc_lo12(g_empty_squares)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	srli.d	$a2, $a0, 32
	ld.wu	$a3, $s2, 8
	sub.w	$a0, $zero, $fp
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	addi.d	$a1, $a1, 2
	st.w	$a1, $s3, %pc_lo12(g_empty_squares)
	move	$a1, $a3
	bstrins.d	$a1, $a2, 63, 32
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(toggle_move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s2, 4
	ori	$a2, $zero, 1536
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	lu12i.w	$s1, -2
	ori	$a2, $zero, 48
	mul.d	$a1, $a1, $a2
	ldx.w	$a2, $a0, $a1
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a3, $a2, $a3
	srai.d	$a3, $a3, 5
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $s0, $a3
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 4
	sll.w	$a2, $s7, $a2
	xor	$a2, $a2, $a4
	stx.w	$a2, $s0, $a3
	bstrpick.d	$a2, $a1, 62, 58
	add.w	$a2, $a1, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $s0, $a2
	sll.w	$a1, $s7, $a1
	xor	$a1, $a1, $a3
	ld.w	$a3, $a0, 12
	stx.w	$a1, $s0, $a2
	ld.w	$a1, $a0, 8
	ld.w	$a2, $s0, 16
	bstrpick.d	$a4, $a3, 62, 58
	add.w	$a4, $a3, $a4
	srai.d	$a4, $a4, 5
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s5, $a4
	xor	$a1, $a2, $a1
	ld.w	$a2, $a0, 16
	sll.w	$a3, $s7, $a3
	xor	$a3, $a3, $a5
	stx.w	$a3, $s5, $a4
	sll.w	$a3, $s7, $a2
	bstrpick.d	$a4, $a2, 62, 58
	add.w	$a2, $a2, $a4
	ld.w	$a4, $a0, 24
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a5, $s5, $a2
	bstrpick.d	$a6, $a4, 62, 58
	add.w	$a6, $a4, $a6
	srai.d	$a6, $a6, 5
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $s6, $a6
	xor	$a3, $a3, $a5
	ld.w	$a5, $a0, 28
	sll.w	$a4, $s7, $a4
	xor	$a4, $a4, $a7
	stx.w	$a4, $s6, $a6
	bstrpick.d	$a4, $a5, 62, 58
	add.w	$a4, $a5, $a4
	srai.d	$a4, $a4, 5
	slli.d	$a4, $a4, 2
	ldx.w	$a6, $s6, $a4
	stx.w	$a3, $s5, $a2
	ld.w	$a2, $a0, 36
	sll.w	$a3, $s7, $a5
	xor	$a3, $a3, $a6
	stx.w	$a3, $s6, $a4
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a3, $a2, $a3
	srai.d	$a3, $a3, 5
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $s8, $a3
	ld.w	$a5, $a0, 20
	sll.w	$a2, $s7, $a2
	ld.w	$a6, $a0, 40
	xor	$a2, $a2, $a4
	ld.w	$a4, $s5, 16
	stx.w	$a2, $s8, $a3
	bstrpick.d	$a2, $a6, 62, 58
	add.w	$a2, $a6, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $s8, $a2
	st.w	$a1, $s0, 16
	xor	$a1, $a4, $a5
	sll.w	$a4, $s7, $a6
	xor	$a3, $a4, $a3
	ld.w	$a4, $a0, 32
	stx.w	$a3, $s8, $a2
	ld.w	$a2, $s6, 16
	ld.w	$a0, $a0, 44
	ld.w	$a3, $s8, 16
	st.w	$a1, $s5, 16
	xor	$a1, $a2, $a4
	st.w	$a1, $s6, 16
	xor	$a0, $a3, $a0
	st.w	$a0, $s8, 16
	pcaddu18i	$ra, %call36(check_hash_code_sanity)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s2, 0
	ld.w	$s3, $s2, 4
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(g_num_nodes)
	pcaddu18i	$ra, %call36(u64bit_to_string)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s3
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 3193
	st.w	$s3, $s2, 8
	blt	$fp, $a0, .LBB0_32
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	slt	$a1, $s3, $a3
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	addi.w	$s0, $a2, 1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	addi.d	$s2, $s2, 12
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_27
# %bb.29:                               #   in Loop: Header=BB0_25 Depth=1
	move	$s0, $s4
	bge	$fp, $a0, .LBB0_33
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_30:                               # %._crit_edge295.thread
                                        #   in Loop: Header=BB0_25 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 903
	blt	$a0, $s3, .LBB0_52
# %bb.31:                               #   in Loop: Header=BB0_25 Depth=1
	move	$a0, $zero
	sub.w	$s4, $s4, $a0
	pcaddu18i	$ra, %call36(print_stats)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB0_40
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_32:                               #   in Loop: Header=BB0_25 Depth=1
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB0_53
.LBB0_33:                               # %.lr.ph307.preheader
                                        #   in Loop: Header=BB0_25 Depth=1
	move	$a1, $zero
	move	$a0, $zero
	move	$a2, $s4
	addi.d	$a3, $sp, 304
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s0, $sp, 296
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_36 Depth=2
	addi.w	$a0, $a0, 1
.LBB0_35:                               #   in Loop: Header=BB0_36 Depth=2
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 12
	beqz	$a2, .LBB0_39
.LBB0_36:                               # %.lr.ph307
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	ori	$a5, $s1, 3192
	bge	$a5, $a4, .LBB0_34
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=2
	blez	$a0, .LBB0_35
# %bb.38:                               #   in Loop: Header=BB0_36 Depth=2
	addi.d	$a4, $a3, -8
	ld.d	$a5, $a4, 0
	sub.w	$a6, $a1, $a0
	slli.d	$a7, $a6, 3
	alsl.d	$a6, $a6, $a7, 2
	stx.d	$a5, $a6, $s0
	ld.w	$a4, $a4, 8
	add.d	$a5, $s0, $a6
	st.w	$a4, $a5, 8
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_39:                               #   in Loop: Header=BB0_25 Depth=1
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	sub.w	$s4, $s4, $a0
	pcaddu18i	$ra, %call36(print_stats)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_51
.LBB0_40:                               #   in Loop: Header=BB0_25 Depth=1
	blez	$s4, .LBB0_24
# %bb.41:                               # %.lr.ph320.preheader
                                        #   in Loop: Header=BB0_25 Depth=1
	move	$a2, $zero
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 316
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               #   in Loop: Header=BB0_43 Depth=2
	addi.d	$a1, $a1, 12
	addi.w	$a0, $a0, 1
	move	$a2, $a3
	beq	$a3, $s4, .LBB0_24
.LBB0_43:                               # %.lr.ph320
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	slli.d	$a3, $a2, 3
	alsl.d	$a4, $a2, $a3, 2
	addi.d	$a3, $a2, 1
	add.d	$a4, $s0, $a4
	move	$a5, $a2
	bgeu	$a3, $s4, .LBB0_46
# %bb.44:                               # %.lr.ph314.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.w	$t0, $a4, 8
	move	$a6, $a0
	move	$a7, $a1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_45:                               # %.lr.ph314
                                        #   Parent Loop BB0_25 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $a7, 0
	slt	$t2, $t0, $t1
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	masknez	$a5, $a5, $t2
	maskeqz	$t1, $a6, $t2
	or	$a5, $t1, $a5
	addi.w	$a6, $a6, 1
	addi.d	$a7, $a7, 12
	blt	$a6, $s4, .LBB0_45
.LBB0_46:                               # %._crit_edge315
                                        #   in Loop: Header=BB0_43 Depth=2
	bstrpick.d	$a6, $a5, 31, 0
	beq	$a2, $a6, .LBB0_42
# %bb.47:                               #   in Loop: Header=BB0_43 Depth=2
	addi.w	$a6, $a5, 0
	slli.d	$a5, $a6, 3
	alsl.d	$a7, $a6, $a5, 2
	add.d	$a5, $s0, $a7
	ldx.d	$a7, $a7, $s0
	ld.w	$t0, $a5, 8
	st.d	$a7, $sp, 280
	st.w	$t0, $sp, 288
	addi.d	$a6, $a6, -1
	.p2align	4, , 16
.LBB0_48:                               #   Parent Loop BB0_25 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a5, -4
	ld.d	$t0, $a5, -12
	st.w	$a7, $a5, 8
	st.d	$t0, $a5, 0
	addi.d	$a5, $a5, -12
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a6, $a6, -1
	bne	$a7, $a2, .LBB0_48
# %bb.49:                               #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a2, $sp, 288
	ld.d	$a5, $sp, 280
	st.w	$a2, $a4, 8
	st.d	$a5, $a4, 0
	b	.LBB0_42
.LBB0_50:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s5, 0
	st.w	$a0, $s4, 0
	st.d	$zero, $s3, 0
	lu12i.w	$a0, -2
	ori	$s3, $a0, 3192
	b	.LBB0_54
.LBB0_51:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(g_num_nodes)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	b	.LBB0_54
.LBB0_52:
	move	$s0, $zero
.LBB0_53:                               # %.split.loop.exit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -86
	sltui	$fp, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 3
	alsl.d	$a0, $s0, $a0, 2
	addi.d	$a1, $sp, 296
	add.d	$a2, $a1, $a0
	ldx.w	$a0, $a0, $a1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	masknez	$a1, $a5, $fp
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a3, $a4, $fp
	or	$a1, $a3, $a1
	masknez	$a3, $a4, $fp
	maskeqz	$a4, $a5, $fp
	ld.w	$a2, $a2, 4
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(g_num_nodes)
	or	$a3, $a4, $a3
	st.w	$a0, $a1, 0
	st.w	$a2, $a3, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a5, $a0, 0
	pcaddu18i	$ra, %call36(print_stats)
	jirl	$ra, $ra, 0
.LBB0_54:                               # %.thread
	move	$a0, $s3
	addi.d	$sp, $sp, 1424
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_55:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a3, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 126
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_fatal_error_aux)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	search_for_move, .Lfunc_end0-search_for_move
                                        # -- End function
	.p2align	5                               # -- Begin function negamax
	.type	negamax,@function
negamax:                                # @negamax
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -1360
	move	$s2, $a2
	move	$s0, $a1
	move	$s3, $a0
	ori	$a0, $zero, 3300
	add.d	$a0, $sp, $a0
	st.w	$a2, $a0, 0
	ori	$a0, $zero, 3296
	add.d	$a0, $sp, $a0
	st.w	$a3, $a0, 0
	pcalau12i	$s6, %pc_hi20(g_num_nodes)
	ld.d	$s5, $s6, %pc_lo12(g_num_nodes)
	pcalau12i	$a0, %pc_hi20(starting_depth)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(starting_depth)
	xori	$s4, $a1, 1
	addi.d	$a1, $s5, 1
	st.d	$a1, $s6, %pc_lo12(g_num_nodes)
	sub.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(stat_nodes)
	addi.d	$a1, $a1, %pc_lo12(stat_nodes)
	ldx.w	$a2, $a1, $a0
	addi.d	$a2, $a2, 1
	stx.w	$a2, $a1, $a0
	blez	$s3, .LBB1_3
# %bb.1:
	move	$s1, $a3
	ori	$a2, $zero, 12
	mul.d	$a0, $s0, $a2
	pcalau12i	$a1, %got_pc_hi20(g_info_totals)
	ld.d	$a1, $a1, %got_pc_lo12(g_info_totals)
	ldx.w	$a3, $a1, $a0
	mul.d	$a2, $s4, $a2
	add.d	$a2, $a1, $a2
	ld.w	$a4, $a2, 4
	bge	$a4, $a3, .LBB1_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(cut1)
	ld.w	$a1, $a0, %pc_lo12(cut1)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(cut1)
	b	.LBB1_4
.LBB1_3:
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(does_next_player_win)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB1_10
.LBB1_4:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 904
	b	.LBB1_11
.LBB1_5:
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a2, 0
	ld.w	$a0, $a0, 4
	bge	$a1, $a0, .LBB1_8
# %bb.6:
	addi.w	$fp, $zero, -1
	lu32i.d	$fp, 0
	st.w	$fp, $sp, 208
	addi.d	$a0, $sp, 220
	ori	$a1, $zero, 3300
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3296
	add.d	$a2, $sp, $a2
	addi.d	$a4, $sp, 208
	move	$a3, $s3
	move	$a5, $s0
	pcaddu18i	$ra, %call36(hashlookup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_12
# %bb.7:
	ld.w	$a0, $sp, 220
	b	.LBB1_11
.LBB1_8:
	pcalau12i	$a0, %pc_hi20(cut2)
	ld.w	$a1, $a0, %pc_lo12(cut2)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(cut2)
.LBB1_9:
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3192
	b	.LBB1_11
.LBB1_10:
	move	$fp, $a0
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(does_who_just_moved_win)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	slt	$a1, $a1, $a0
	sub.w	$a0, $fp, $a0
	masknez	$a0, $a0, $a1
	lu12i.w	$a2, -2
	ori	$a2, $a2, 3192
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
.LBB1_11:
	addi.d	$sp, $sp, 1360
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB1_12:
	st.w	$fp, $sp, 208
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(does_next_player_win)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB1_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(cut3)
	ld.w	$a1, $a0, %pc_lo12(cut3)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(cut3)
	b	.LBB1_4
.LBB1_14:
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(does_who_just_moved_win)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB1_16
# %bb.15:
	pcalau12i	$a0, %pc_hi20(cut4)
	ld.w	$a1, $a0, %pc_lo12(cut4)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(cut4)
	b	.LBB1_9
.LBB1_16:
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 224
	move	$a1, $s0
	pcaddu18i	$ra, %call36(move_generator_stage1)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB1_18
# %bb.17:
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $s4
	b	.LBB1_20
.LBB1_18:
	addi.d	$a0, $sp, 224
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(move_generator_stage2)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bnez	$a1, .LBB1_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 458
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_fatal_error_aux)
	jirl	$ra, $ra, 0
	move	$a1, $zero
.LBB1_20:
	ld.d	$a3, $sp, 208
	ld.wu	$a4, $sp, 216
	sltu	$a0, $zero, $s4
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 224
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	move	$a2, $s0
	pcaddu18i	$ra, %call36(score_and_get_first)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 232
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $s0, 1
	slli.d	$a0, $a0, 14
	pcalau12i	$a1, %got_pc_hi20(g_keyinfo)
	ld.d	$a1, $a1, %got_pc_lo12(g_keyinfo)
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.w	$a0, $s3, -1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -40
	mul.d	$a0, $s3, $a0
	pcalau12i	$a1, %pc_hi20(stat_nth_try)
	addi.d	$a1, $a1, %pc_lo12(stat_nth_try)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s0, $zero, 1
	pcalau12i	$a0, %pc_hi20(g_move_number)
	addi.d	$a0, $a0, %pc_lo12(g_move_number)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a2, $zero
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(g_empty_squares)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
                                        # implicit-def: $r30
                                        # implicit-def: $r31
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	b	.LBB1_22
.LBB1_21:                               # %..loopexit_crit_edge
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $sp, 220
	ori	$a1, $zero, 3296
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	slt	$a0, $a0, $a1
	and	$a0, $a3, $a0
	beqz	$a0, .LBB1_38
.LBB1_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
	beqz	$a2, .LBB1_25
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=1
	addi.d	$a0, $sp, 224
	bne	$a2, $s0, .LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_22 Depth=1
	ori	$a1, $zero, 1
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sort_moves)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bge	$s4, $fp, .LBB1_21
	b	.LBB1_27
.LBB1_25:                               #   in Loop: Header=BB1_22 Depth=1
	ori	$a3, $zero, 1
	ori	$a2, $zero, 1
	bge	$s4, $fp, .LBB1_21
	b	.LBB1_27
.LBB1_26:                               #   in Loop: Header=BB1_22 Depth=1
	move	$a1, $fp
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(move_generator_stage2)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a3, $zero
	ori	$a2, $zero, 3
	bge	$s4, $fp, .LBB1_21
.LBB1_27:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a0, 2
	slli.d	$a0, $s4, 3
	alsl.d	$a0, $s4, $a0, 2
	addi.d	$a1, $sp, 224
	add.d	$s1, $a1, $a0
	move	$a3, $s4
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               #   in Loop: Header=BB1_29 Depth=2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 4
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	addi.w	$s4, $s4, 1
	addi.d	$s1, $s1, 12
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	beq	$fp, $s4, .LBB1_34
.LBB1_29:                               # %.lr.ph
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(starting_depth)
	sub.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 2
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $s2, %pc_lo12(g_empty_squares)
	srli.d	$a2, $s7, 32
	ld.wu	$s7, $s1, 8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.d	$s4, $sp, 192                   # 8-byte Folded Spill
	stx.w	$s4, $a3, $a0
	ld.d	$a0, $s1, 0
	addi.d	$a1, $a1, -2
	st.w	$a1, $s2, %pc_lo12(g_empty_squares)
	bstrins.d	$s7, $a2, 63, 32
	move	$a1, $s7
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s6
	pcaddu18i	$ra, %call36(toggle_move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s1, 4
	ori	$a2, $zero, 1536
	mul.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 48
	mul.d	$a1, $a1, $a2
	ldx.w	$a2, $a0, $a1
	add.d	$a0, $a0, $a1
	ori	$s4, $zero, 1
	sll.w	$a1, $s4, $a2
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(g_norm_hashkey)
	addi.d	$s0, $a3, %pc_lo12(g_norm_hashkey)
	ldx.w	$a3, $s0, $a2
	ld.w	$a4, $a0, 4
	xor	$a1, $a1, $a3
	stx.w	$a1, $s0, $a2
	bstrpick.d	$a1, $a4, 62, 58
	add.w	$a1, $a4, $a1
	srai.d	$a1, $a1, 5
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $s0, $a1
	sll.w	$a3, $s4, $a4
	xor	$a2, $a3, $a2
	stx.w	$a2, $s0, $a1
	ld.w	$a1, $a0, 8
	ld.w	$a2, $s0, 16
	ld.w	$a3, $a0, 12
	xor	$a1, $a2, $a1
	st.w	$a1, $s0, 16
	sll.w	$a1, $s4, $a3
	bstrpick.d	$a2, $a3, 62, 58
	add.w	$a2, $a3, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(g_flipV_hashkey)
	addi.d	$fp, $a3, %pc_lo12(g_flipV_hashkey)
	ldx.w	$a3, $fp, $a2
	ld.w	$a4, $a0, 16
	xor	$a1, $a1, $a3
	stx.w	$a1, $fp, $a2
	bstrpick.d	$a1, $a4, 62, 58
	add.w	$a1, $a4, $a1
	srai.d	$a1, $a1, 5
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $fp, $a1
	sll.w	$a3, $s4, $a4
	xor	$a2, $a3, $a2
	stx.w	$a2, $fp, $a1
	ld.w	$a1, $a0, 20
	ld.w	$a2, $fp, 16
	ld.w	$a3, $a0, 24
	xor	$a1, $a2, $a1
	st.w	$a1, $fp, 16
	sll.w	$a1, $s4, $a3
	bstrpick.d	$a2, $a3, 62, 58
	add.w	$a2, $a3, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(g_flipH_hashkey)
	addi.d	$s5, $a3, %pc_lo12(g_flipH_hashkey)
	ldx.w	$a3, $s5, $a2
	ld.w	$a4, $a0, 28
	xor	$a1, $a1, $a3
	stx.w	$a1, $s5, $a2
	bstrpick.d	$a1, $a4, 62, 58
	add.w	$a1, $a4, $a1
	srai.d	$a1, $a1, 5
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $s5, $a1
	sll.w	$a3, $s4, $a4
	xor	$a2, $a3, $a2
	stx.w	$a2, $s5, $a1
	ld.w	$a1, $a0, 32
	ld.w	$a2, $s5, 16
	ld.w	$a3, $a0, 36
	xor	$a1, $a2, $a1
	st.w	$a1, $s5, 16
	sll.w	$a1, $s4, $a3
	bstrpick.d	$a2, $a3, 62, 58
	add.w	$a2, $a3, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(g_flipVH_hashkey)
	addi.d	$s3, $a3, %pc_lo12(g_flipVH_hashkey)
	ldx.w	$a3, $s3, $a2
	ld.w	$a4, $a0, 40
	xor	$a1, $a1, $a3
	stx.w	$a1, $s3, $a2
	bstrpick.d	$a1, $a4, 62, 58
	add.w	$a1, $a4, $a1
	srai.d	$a1, $a1, 5
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $s3, $a1
	sll.w	$a3, $s4, $a4
	xor	$a2, $a3, $a2
	stx.w	$a2, $s3, $a1
	ld.w	$a0, $a0, 44
	ld.w	$a1, $s3, 16
	ori	$a2, $zero, 3296
	add.d	$a2, $sp, $a2
	ld.w	$a2, $a2, 0
	ori	$a3, $zero, 3300
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	xor	$a0, $a1, $a0
	st.w	$a0, $s3, 16
	sub.w	$a2, $zero, $a2
	sub.w	$a3, $zero, $a3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(negamax)
	jirl	$ra, $ra, 0
	sub.d	$a0, $zero, $a0
	ld.w	$a1, $s2, %pc_lo12(g_empty_squares)
	srli.d	$a2, $s8, 32
	ld.wu	$s8, $s1, 8
	st.w	$a0, $sp, 220
	ld.d	$a0, $s1, 0
	addi.d	$a1, $a1, 2
	st.w	$a1, $s2, %pc_lo12(g_empty_squares)
	bstrins.d	$s8, $a2, 63, 32
	move	$a1, $s8
	move	$a2, $s6
	pcaddu18i	$ra, %call36(toggle_move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s1, 4
	ori	$a2, $zero, 1536
	mul.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 48
	mul.d	$a1, $a1, $a2
	ldx.w	$a2, $a0, $a1
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a3, $a2, $a3
	srai.d	$a3, $a3, 5
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $s0, $a3
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 4
	sll.w	$a2, $s4, $a2
	xor	$a2, $a2, $a4
	stx.w	$a2, $s0, $a3
	bstrpick.d	$a2, $a1, 62, 58
	add.w	$a2, $a1, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $s0, $a2
	ld.w	$a4, $a0, 12
	sll.w	$a1, $s4, $a1
	xor	$a1, $a1, $a3
	stx.w	$a1, $s0, $a2
	bstrpick.d	$a1, $a4, 62, 58
	add.w	$a1, $a4, $a1
	srai.d	$a1, $a1, 5
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $fp, $a1
	ld.w	$a3, $a0, 8
	sll.w	$a4, $s4, $a4
	ld.w	$a5, $a0, 16
	xor	$a2, $a4, $a2
	ld.w	$a4, $s0, 16
	stx.w	$a2, $fp, $a1
	bstrpick.d	$a1, $a5, 62, 58
	add.w	$a1, $a5, $a1
	srai.d	$a1, $a1, 5
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $fp, $a1
	xor	$a3, $a4, $a3
	st.w	$a3, $s0, 16
	sll.w	$a3, $s4, $a5
	xor	$a2, $a3, $a2
	ld.w	$a3, $a0, 24
	stx.w	$a2, $fp, $a1
	ld.w	$a1, $a0, 20
	ld.w	$a2, $fp, 16
	bstrpick.d	$a4, $a3, 62, 58
	add.w	$a4, $a3, $a4
	srai.d	$a4, $a4, 5
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s5, $a4
	xor	$a1, $a2, $a1
	ld.w	$a2, $a0, 28
	sll.w	$a3, $s4, $a3
	xor	$a3, $a3, $a5
	stx.w	$a3, $s5, $a4
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a3, $a2, $a3
	srai.d	$a3, $a3, 5
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $s5, $a3
	ld.w	$a5, $a0, 36
	st.w	$a1, $fp, 16
	sll.w	$a1, $s4, $a2
	xor	$a1, $a1, $a4
	bstrpick.d	$a2, $a5, 62, 58
	add.w	$a2, $a5, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $s3, $a2
	stx.w	$a1, $s5, $a3
	ld.w	$a1, $a0, 40
	sll.w	$a3, $s4, $a5
	xor	$a3, $a3, $a4
	stx.w	$a3, $s3, $a2
	bstrpick.d	$a2, $a1, 62, 58
	add.w	$a2, $a1, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $s3, $a2
	ld.w	$a4, $a0, 32
	ld.w	$a5, $s5, 16
	ori	$s0, $zero, 1
	sll.w	$a1, $s4, $a1
	xor	$a1, $a1, $a3
	stx.w	$a1, $s3, $a2
	ld.w	$a2, $a0, 44
	ld.w	$a3, $s3, 16
	ld.w	$a0, $sp, 220
	ori	$a1, $zero, 3296
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	xor	$a4, $a5, $a4
	st.w	$a4, $s5, 16
	xor	$a2, $a3, $a2
	st.w	$a2, $s3, 16
	bge	$a0, $a1, .LBB1_32
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=2
	ori	$a2, $zero, 3300
	add.d	$a2, $sp, $a2
	ld.w	$a2, $a2, 0
	bge	$a2, $a0, .LBB1_28
# %bb.31:                               #   in Loop: Header=BB1_29 Depth=2
	ld.d	$a2, $s1, 0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a2, $s1, 8
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ori	$a2, $zero, 3300
	add.d	$a2, $sp, $a2
	st.w	$a0, $a2, 0
	b	.LBB1_28
.LBB1_32:                               #   in Loop: Header=BB1_22 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(starting_depth)
	ld.d	$a3, $s1, 0
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a3, $s1, 8
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ori	$a3, $zero, 3300
	add.d	$a3, $sp, $a3
	st.w	$a0, $a3, 0
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	sub.w	$a3, $a2, $s3
	slli.d	$a4, $a3, 2
	pcalau12i	$a5, %pc_hi20(stat_cutoffs)
	addi.d	$a5, $a5, %pc_lo12(stat_cutoffs)
	ldx.w	$a6, $a5, $a4
	addi.d	$a6, $a6, 1
	stx.w	$a6, $a5, $a4
	ori	$a4, $zero, 4
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	blt	$a4, $a5, .LBB1_35
# %bb.33:                               #   in Loop: Header=BB1_22 Depth=1
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a2
	addi.d	$a3, $a3, 1
	stx.w	$a3, $a4, $a2
	b	.LBB1_36
.LBB1_34:                               #   in Loop: Header=BB1_22 Depth=1
	move	$s4, $fp
	b	.LBB1_37
.LBB1_35:                               #   in Loop: Header=BB1_22 Depth=1
	slli.d	$a2, $a3, 5
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.w	$a3, $a2, 20
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 20
.LBB1_36:                               # %.loopexit
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
.LBB1_37:                               # %.loopexit
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	and	$a0, $a3, $a0
	bnez	$a0, .LBB1_22
.LBB1_38:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(g_num_nodes)
	ori	$a0, $zero, 3300
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 5
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a6, $a2, 31, 0
	addi.w	$a3, $a1, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a4, $s3
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hashstore)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3300
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	b	.LBB1_11
.Lfunc_end1:
	.size	negamax, .Lfunc_end1-negamax
                                        # -- End function
	.p2align	5                               # -- Begin function print_stats
	.type	print_stats,@function
print_stats:                            # @print_stats
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
	pcalau12i	$a0, %pc_hi20(cut1)
	ld.w	$a1, $a0, %pc_lo12(cut1)
	pcalau12i	$a0, %pc_hi20(cut2)
	ld.w	$a2, $a0, %pc_lo12(cut2)
	pcalau12i	$a0, %pc_hi20(cut3)
	ld.w	$a3, $a0, %pc_lo12(cut3)
	pcalau12i	$a0, %pc_hi20(cut4)
	ld.w	$a4, $a0, %pc_lo12(cut4)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(stat_nth_try+12)
	addi.d	$s3, $a0, %pc_lo12(stat_nth_try+12)
	pcalau12i	$a0, %pc_hi20(stat_cutoffs)
	addi.d	$s4, $a0, %pc_lo12(stat_cutoffs)
	pcalau12i	$a0, %pc_hi20(stat_nodes)
	addi.d	$s5, $a0, %pc_lo12(stat_nodes)
	ori	$s6, $zero, 160
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$fp, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s0, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s1, $a0, %pc_lo12(.L.str.12)
	move	$s7, $zero
	move	$s2, $zero
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_1:                                #   in Loop: Header=BB2_2 Depth=1
	addi.w	$s2, $s2, 1
	addi.d	$s7, $s7, 4
	addi.d	$s3, $s3, 40
	beq	$s7, $s6, .LBB2_4
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s4, $s7
	ldx.w	$a2, $s5, $s7
	or	$a0, $a3, $a2
	beqz	$a0, .LBB2_1
# %bb.3:                                # %._crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, -12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, -4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB2_1
.LBB2_4:
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
.Lfunc_end2:
	.size	print_stats, .Lfunc_end2-print_stats
                                        # -- End function
	.type	g_empty_squares,@object         # @g_empty_squares
	.bss
	.globl	g_empty_squares
	.p2align	2, 0x0
g_empty_squares:
	.word	0                               # 0x0
	.size	g_empty_squares, 4

	.type	g_print,@object                 # @g_print
	.globl	g_print
	.p2align	2, 0x0
g_print:
	.word	0                               # 0x0
	.size	g_print, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Applications/obsequi/negamax.c"
	.size	.L.str, 126

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Invalid player.\n"
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"No moves"
	.size	.L.str.2, 9

	.type	g_num_nodes,@object             # @g_num_nodes
	.bss
	.globl	g_num_nodes
	.p2align	3, 0x0
g_num_nodes:
	.dword	0                               # 0x0
	.size	g_num_nodes, 8

	.type	starting_depth,@object          # @starting_depth
	.local	starting_depth
	.comm	starting_depth,4,4
	.type	g_move_number,@object           # @g_move_number
	.globl	g_move_number
	.p2align	2, 0x0
g_move_number:
	.space	512
	.size	g_move_number, 512

	.type	g_norm_hashkey,@object          # @g_norm_hashkey
	.globl	g_norm_hashkey
	.p2align	2, 0x0
g_norm_hashkey:
	.space	20
	.size	g_norm_hashkey, 20

	.type	g_flipV_hashkey,@object         # @g_flipV_hashkey
	.globl	g_flipV_hashkey
	.p2align	2, 0x0
g_flipV_hashkey:
	.space	20
	.size	g_flipV_hashkey, 20

	.type	g_flipH_hashkey,@object         # @g_flipH_hashkey
	.globl	g_flipH_hashkey
	.p2align	2, 0x0
g_flipH_hashkey:
	.space	20
	.size	g_flipH_hashkey, 20

	.type	g_flipVH_hashkey,@object        # @g_flipVH_hashkey
	.globl	g_flipVH_hashkey
	.p2align	2, 0x0
g_flipVH_hashkey:
	.space	20
	.size	g_flipVH_hashkey, 20

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Move (%d,%d), value %d: %s.\n"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"alpha %d, beta %d.\n"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Winner found: %d.\n"
	.size	.L.str.5, 19

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"The value is %d at a depth of %d.\n"
	.size	.L.str.7, 35

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Nodes: %u.\n"
	.size	.L.str.8, 12

	.type	g_first_move,@object            # @g_first_move
	.bss
	.globl	g_first_move
	.p2align	2, 0x0
g_first_move:
	.space	8192
	.size	g_first_move, 8192

	.type	stat_nth_try,@object            # @stat_nth_try
	.local	stat_nth_try
	.comm	stat_nth_try,1600,8
	.type	stat_cutoffs,@object            # @stat_cutoffs
	.local	stat_cutoffs
	.comm	stat_cutoffs,160,8
	.type	stat_nodes,@object              # @stat_nodes
	.local	stat_nodes
	.comm	stat_nodes,160,8
	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"%d %d %d %d.\n\n"
	.size	.L.str.9, 15

	.type	cut1,@object                    # @cut1
	.local	cut1
	.comm	cut1,4,4
	.type	cut2,@object                    # @cut2
	.local	cut2
	.comm	cut2,4,4
	.type	cut3,@object                    # @cut3
	.local	cut3
	.comm	cut3,4,4
	.type	cut4,@object                    # @cut4
	.local	cut4
	.comm	cut4,4,4
	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"cutoffs depth %d: (%d) %d -"
	.size	.L.str.10, 28

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" %d"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" >%d.\n"
	.size	.L.str.12, 7

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Should always have a move.\n"
	.size	.L.str.13, 28

	.section	".note.GNU-stack","",@progbits
	.addrsig
