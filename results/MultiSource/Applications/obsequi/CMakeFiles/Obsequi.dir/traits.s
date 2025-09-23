	.file	"traits.c"
	.text
	.globl	write_node_info                 # -- Begin function write_node_info
	.p2align	5
	.type	write_node_info,@function
write_node_info:                        # @write_node_info
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
	pcalau12i	$s2, %pc_hi20(trait_file)
	ld.d	$s0, $s2, %pc_lo12(trait_file)
	move	$fp, $a1
	bnez	$s0, .LBB0_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	st.d	$s0, $s2, %pc_lo12(trait_file)
	beqz	$s0, .LBB0_63
.LBB0_2:
	addi.d	$a1, $fp, -1
	sltui	$s1, $a1, 1
	pcaddu18i	$ra, %call36(u64bit_to_string)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 72
	masknez	$a0, $a0, $s1
	ori	$a1, $zero, 86
	maskeqz	$a1, $a1, $s1
	or	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(g_board_size)
	ld.d	$s5, $a0, %got_pc_lo12(g_board_size)
	slli.d	$a0, $fp, 2
	ldx.w	$a0, $s5, $a0
	slli.d	$s3, $fp, 7
	blez	$a0, .LBB0_5
# %bb.3:                                # %.lr.ph.i
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	ldx.w	$a3, $a1, $s3
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB0_6
# %bb.4:
	move	$a2, $zero
	move	$a4, $zero
	b	.LBB0_10
.LBB0_5:
	move	$a4, $zero
	b	.LBB0_12
.LBB0_6:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	xvinsgr2vr.w	$xr0, $a3, 7
	add.d	$a3, $s3, $a1
	addi.d	$a3, $a3, 40
	xvrepli.b	$xr1, 0
	xvrepli.b	$xr2, -1
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	xvreplgr2vr.w	$xr3, $a4
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	move	$a5, $a2
	xvori.b	$xr4, $xr1, 0
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr5, $a3, -32
	xvld	$xr6, $a3, 0
	xvld	$xr7, $a3, -36
	xvpickve.w	$xr8, $xr0, 7
	xvld	$xr0, $a3, -4
	xvinsve0.w	$xr8, $xr8, 0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.w	$xr9, $xr7, 1
	xvinsve0.w	$xr8, $xr9, 2
	xvpickve.w	$xr9, $xr7, 2
	xvinsve0.w	$xr8, $xr9, 3
	xvpickve.w	$xr9, $xr7, 3
	xvinsve0.w	$xr8, $xr9, 4
	xvpickve.w	$xr9, $xr7, 4
	xvinsve0.w	$xr8, $xr9, 5
	xvpickve.w	$xr9, $xr7, 5
	xvinsve0.w	$xr8, $xr9, 6
	xvpickve.w	$xr9, $xr7, 6
	xvinsve0.w	$xr8, $xr9, 7
	xvpickve.w	$xr9, $xr7, 7
	xvinsve0.w	$xr9, $xr9, 0
	xvinsve0.w	$xr9, $xr0, 1
	xvpickve.w	$xr10, $xr0, 1
	xvinsve0.w	$xr9, $xr10, 2
	xvpickve.w	$xr10, $xr0, 2
	xvinsve0.w	$xr9, $xr10, 3
	xvpickve.w	$xr10, $xr0, 3
	xvinsve0.w	$xr9, $xr10, 4
	xvpickve.w	$xr10, $xr0, 4
	xvinsve0.w	$xr9, $xr10, 5
	xvpickve.w	$xr10, $xr0, 5
	xvinsve0.w	$xr9, $xr10, 6
	xvpickve.w	$xr10, $xr0, 6
	xvinsve0.w	$xr9, $xr10, 7
	xvand.v	$xr5, $xr5, $xr8
	xvand.v	$xr6, $xr6, $xr9
	xvxor.v	$xr8, $xr7, $xr2
	xvxor.v	$xr9, $xr0, $xr2
	xvsrli.w	$xr10, $xr5, 1
	xvsrli.w	$xr11, $xr6, 1
	xvand.v	$xr5, $xr10, $xr5
	xvand.v	$xr6, $xr11, $xr6
	xvsrli.w	$xr8, $xr8, 1
	xvsrli.w	$xr9, $xr9, 1
	xvor.v	$xr5, $xr5, $xr7
	xvor.v	$xr6, $xr6, $xr0
	xvandn.v	$xr7, $xr5, $xr8
	xvandn.v	$xr8, $xr6, $xr9
	xvand.v	$xr5, $xr7, $xr3
	xvand.v	$xr6, $xr8, $xr3
	xvpermi.q	$xr9, $xr5, 1
	vpickve2gr.w	$a6, $vr9, 3
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.w	$a7, $vr9, 2
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr9, 1
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.w	$t1, $vr9, 0
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.w	$t2, $vr5, 3
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.w	$t3, $vr5, 2
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.w	$t4, $vr5, 1
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.w	$t5, $vr5, 0
	bstrpick.d	$t5, $t5, 15, 0
	xvpermi.q	$xr5, $xr6, 1
	vpickve2gr.w	$t6, $vr5, 3
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.w	$t7, $vr5, 2
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.w	$t8, $vr5, 1
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.w	$s0, $vr5, 0
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.w	$s1, $vr6, 3
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.w	$s4, $vr6, 2
	bstrpick.d	$s4, $s4, 15, 0
	vpickve2gr.w	$s6, $vr6, 1
	bstrpick.d	$s6, $s6, 15, 0
	vpickve2gr.w	$s7, $vr6, 0
	bstrpick.d	$s7, $s7, 15, 0
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$s7, $s7, 2
	slli.d	$s6, $s6, 2
	slli.d	$s4, $s4, 2
	slli.d	$s1, $s1, 2
	slli.d	$s0, $s0, 2
	slli.d	$t8, $t8, 2
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	ldx.w	$t5, $a4, $t5
	ldx.w	$t4, $a4, $t4
	ldx.w	$t3, $a4, $t3
	ldx.w	$t2, $a4, $t2
	ldx.w	$t1, $a4, $t1
	ldx.w	$t0, $a4, $t0
	ldx.w	$a7, $a4, $a7
	ldx.w	$a6, $a4, $a6
	xvinsgr2vr.w	$xr5, $t5, 0
	xvinsgr2vr.w	$xr5, $t4, 1
	xvinsgr2vr.w	$xr5, $t3, 2
	xvinsgr2vr.w	$xr5, $t2, 3
	xvinsgr2vr.w	$xr5, $t1, 4
	xvinsgr2vr.w	$xr5, $t0, 5
	xvinsgr2vr.w	$xr5, $a7, 6
	xvinsgr2vr.w	$xr5, $a6, 7
	ldx.w	$a6, $a4, $s7
	ldx.w	$a7, $a4, $s6
	ldx.w	$t0, $a4, $s4
	ldx.w	$t1, $a4, $s1
	ldx.w	$t2, $a4, $s0
	ldx.w	$t3, $a4, $t8
	ldx.w	$t4, $a4, $t7
	ldx.w	$t5, $a4, $t6
	xvinsgr2vr.w	$xr6, $a6, 0
	xvinsgr2vr.w	$xr6, $a7, 1
	xvinsgr2vr.w	$xr6, $t0, 2
	xvinsgr2vr.w	$xr6, $t1, 3
	xvinsgr2vr.w	$xr6, $t2, 4
	xvinsgr2vr.w	$xr6, $t3, 5
	xvinsgr2vr.w	$xr6, $t4, 6
	xvinsgr2vr.w	$xr6, $t5, 7
	xvsrli.w	$xr7, $xr7, 16
	xvsrli.w	$xr8, $xr8, 16
	xvpermi.q	$xr9, $xr7, 1
	vpickve2gr.w	$a6, $vr9, 3
	bstrpick.d	$a6, $a6, 14, 0
	vpickve2gr.w	$a7, $vr9, 2
	bstrpick.d	$a7, $a7, 14, 0
	vpickve2gr.w	$t0, $vr9, 1
	bstrpick.d	$t0, $t0, 14, 0
	vpickve2gr.w	$t1, $vr9, 0
	bstrpick.d	$t1, $t1, 14, 0
	vpickve2gr.w	$t2, $vr7, 3
	bstrpick.d	$t2, $t2, 14, 0
	vpickve2gr.w	$t3, $vr7, 2
	bstrpick.d	$t3, $t3, 14, 0
	vpickve2gr.w	$t4, $vr7, 1
	bstrpick.d	$t4, $t4, 14, 0
	vpickve2gr.w	$t5, $vr7, 0
	bstrpick.d	$t5, $t5, 14, 0
	xvpermi.q	$xr7, $xr8, 1
	vpickve2gr.w	$t6, $vr7, 3
	bstrpick.d	$t6, $t6, 14, 0
	vpickve2gr.w	$t7, $vr7, 2
	bstrpick.d	$t7, $t7, 14, 0
	vpickve2gr.w	$t8, $vr7, 1
	bstrpick.d	$t8, $t8, 14, 0
	vpickve2gr.w	$s0, $vr7, 0
	bstrpick.d	$s0, $s0, 14, 0
	vpickve2gr.w	$s1, $vr8, 3
	bstrpick.d	$s1, $s1, 14, 0
	vpickve2gr.w	$s4, $vr8, 2
	bstrpick.d	$s4, $s4, 14, 0
	vpickve2gr.w	$s6, $vr8, 1
	bstrpick.d	$s6, $s6, 14, 0
	vpickve2gr.w	$s7, $vr8, 0
	bstrpick.d	$s7, $s7, 14, 0
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$s7, $s7, 2
	slli.d	$s6, $s6, 2
	slli.d	$s4, $s4, 2
	slli.d	$s1, $s1, 2
	slli.d	$s0, $s0, 2
	slli.d	$t8, $t8, 2
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	ldx.w	$t5, $a4, $t5
	ldx.w	$t4, $a4, $t4
	ldx.w	$t3, $a4, $t3
	ldx.w	$t2, $a4, $t2
	ldx.w	$t1, $a4, $t1
	ldx.w	$t0, $a4, $t0
	ldx.w	$a7, $a4, $a7
	ldx.w	$a6, $a4, $a6
	xvinsgr2vr.w	$xr7, $t5, 0
	xvinsgr2vr.w	$xr7, $t4, 1
	xvinsgr2vr.w	$xr7, $t3, 2
	xvinsgr2vr.w	$xr7, $t2, 3
	xvinsgr2vr.w	$xr7, $t1, 4
	xvinsgr2vr.w	$xr7, $t0, 5
	xvinsgr2vr.w	$xr7, $a7, 6
	xvinsgr2vr.w	$xr7, $a6, 7
	ldx.w	$a6, $a4, $s7
	ldx.w	$a7, $a4, $s6
	ldx.w	$t0, $a4, $s4
	ldx.w	$t1, $a4, $s1
	ldx.w	$t2, $a4, $s0
	ldx.w	$t3, $a4, $t8
	ldx.w	$t4, $a4, $t7
	ldx.w	$t5, $a4, $t6
	xvinsgr2vr.w	$xr8, $a6, 0
	xvinsgr2vr.w	$xr8, $a7, 1
	xvinsgr2vr.w	$xr8, $t0, 2
	xvinsgr2vr.w	$xr8, $t1, 3
	xvinsgr2vr.w	$xr8, $t2, 4
	xvinsgr2vr.w	$xr8, $t3, 5
	xvinsgr2vr.w	$xr8, $t4, 6
	xvinsgr2vr.w	$xr8, $t5, 7
	xvadd.w	$xr1, $xr5, $xr1
	xvadd.w	$xr4, $xr6, $xr4
	xvadd.w	$xr1, $xr1, $xr7
	xvadd.w	$xr4, $xr4, $xr8
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	bnez	$a5, .LBB0_7
# %bb.8:                                # %middle.block
	xvadd.w	$xr1, $xr4, $xr1
	xvhaddw.d.w	$xr1, $xr1, $xr1
	xvhaddw.q.d	$xr1, $xr1, $xr1
	xvpermi.d	$xr2, $xr1, 2
	xvadd.d	$xr1, $xr2, $xr1
	xvpickve2gr.d	$a4, $xr1, 0
	beq	$a2, $a0, .LBB0_12
# %bb.9:
	xvpickve2gr.w	$a3, $xr0, 7
.LBB0_10:                               # %scalar.ph.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a2, $a2, $s3, 2
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(countbits16)
	ld.d	$a2, $a2, %got_pc_lo12(countbits16)
	lu12i.w	$a5, 31
	ori	$a5, $a5, 4092
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	and	$a6, $a6, $a3
	ld.w	$a3, $a1, -4
	nor	$a7, $a3, $zero
	bstrpick.d	$t0, $a6, 31, 1
	and	$a6, $t0, $a6
	bstrpick.d	$a7, $a7, 31, 1
	or	$a6, $a6, $a3
	andn	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 15, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	srli.d	$a6, $a6, 14
	and	$a6, $a6, $a5
	ldx.w	$a6, $a2, $a6
	add.d	$a4, $a7, $a4
	add.d	$a4, $a4, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB0_11
.LBB0_12:                               # %tr_total_non_safe_moves.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	addi.w	$a2, $a4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	xori	$s0, $fp, 1
	slli.d	$a0, $s0, 2
	ldx.w	$a0, $s5, $a0
	blez	$a0, .LBB0_15
# %bb.13:                               # %.lr.ph.i20
	slli.d	$a1, $s0, 7
	pcalau12i	$a2, %got_pc_hi20(g_board)
	ld.d	$a2, $a2, %got_pc_lo12(g_board)
	ldx.w	$a5, $a2, $a1
	ori	$a3, $zero, 16
	bgeu	$a0, $a3, .LBB0_16
# %bb.14:
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB0_20
.LBB0_15:
	move	$a4, $zero
	b	.LBB0_22
.LBB0_16:                               # %vector.ph72
	bstrpick.d	$a3, $a0, 30, 4
	slli.d	$a3, $a3, 4
	xvinsgr2vr.w	$xr0, $a5, 7
	add.d	$a4, $a1, $a2
	addi.d	$a4, $a4, 40
	xvrepli.b	$xr1, 0
	xvrepli.b	$xr2, -1
	lu12i.w	$a5, 15
	ori	$a5, $a5, 4095
	xvreplgr2vr.w	$xr3, $a5
	pcalau12i	$a5, %got_pc_hi20(countbits16)
	ld.d	$a5, $a5, %got_pc_lo12(countbits16)
	move	$a6, $a3
	xvori.b	$xr4, $xr1, 0
	.p2align	4, , 16
.LBB0_17:                               # %vector.body75
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr5, $a4, -32
	xvld	$xr6, $a4, 0
	xvld	$xr7, $a4, -36
	xvpickve.w	$xr8, $xr0, 7
	xvld	$xr0, $a4, -4
	xvinsve0.w	$xr8, $xr8, 0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.w	$xr9, $xr7, 1
	xvinsve0.w	$xr8, $xr9, 2
	xvpickve.w	$xr9, $xr7, 2
	xvinsve0.w	$xr8, $xr9, 3
	xvpickve.w	$xr9, $xr7, 3
	xvinsve0.w	$xr8, $xr9, 4
	xvpickve.w	$xr9, $xr7, 4
	xvinsve0.w	$xr8, $xr9, 5
	xvpickve.w	$xr9, $xr7, 5
	xvinsve0.w	$xr8, $xr9, 6
	xvpickve.w	$xr9, $xr7, 6
	xvinsve0.w	$xr8, $xr9, 7
	xvpickve.w	$xr9, $xr7, 7
	xvinsve0.w	$xr9, $xr9, 0
	xvinsve0.w	$xr9, $xr0, 1
	xvpickve.w	$xr10, $xr0, 1
	xvinsve0.w	$xr9, $xr10, 2
	xvpickve.w	$xr10, $xr0, 2
	xvinsve0.w	$xr9, $xr10, 3
	xvpickve.w	$xr10, $xr0, 3
	xvinsve0.w	$xr9, $xr10, 4
	xvpickve.w	$xr10, $xr0, 4
	xvinsve0.w	$xr9, $xr10, 5
	xvpickve.w	$xr10, $xr0, 5
	xvinsve0.w	$xr9, $xr10, 6
	xvpickve.w	$xr10, $xr0, 6
	xvinsve0.w	$xr9, $xr10, 7
	xvand.v	$xr5, $xr5, $xr8
	xvand.v	$xr6, $xr6, $xr9
	xvxor.v	$xr8, $xr7, $xr2
	xvxor.v	$xr9, $xr0, $xr2
	xvsrli.w	$xr10, $xr5, 1
	xvsrli.w	$xr11, $xr6, 1
	xvand.v	$xr5, $xr10, $xr5
	xvand.v	$xr6, $xr11, $xr6
	xvsrli.w	$xr8, $xr8, 1
	xvsrli.w	$xr9, $xr9, 1
	xvor.v	$xr5, $xr5, $xr7
	xvor.v	$xr6, $xr6, $xr0
	xvandn.v	$xr7, $xr5, $xr8
	xvandn.v	$xr8, $xr6, $xr9
	xvand.v	$xr5, $xr7, $xr3
	xvand.v	$xr6, $xr8, $xr3
	xvpermi.q	$xr9, $xr5, 1
	vpickve2gr.w	$a7, $vr9, 3
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr9, 2
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.w	$t1, $vr9, 1
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.w	$t2, $vr9, 0
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.w	$t3, $vr5, 3
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.w	$t4, $vr5, 2
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.w	$t5, $vr5, 1
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.w	$t6, $vr5, 0
	bstrpick.d	$t6, $t6, 15, 0
	xvpermi.q	$xr5, $xr6, 1
	vpickve2gr.w	$t7, $vr5, 3
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.w	$t8, $vr5, 2
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.w	$s1, $vr5, 1
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.w	$s4, $vr5, 0
	bstrpick.d	$s4, $s4, 15, 0
	vpickve2gr.w	$s6, $vr6, 3
	bstrpick.d	$s6, $s6, 15, 0
	vpickve2gr.w	$s7, $vr6, 2
	bstrpick.d	$s7, $s7, 15, 0
	vpickve2gr.w	$s8, $vr6, 1
	bstrpick.d	$s8, $s8, 15, 0
	vpickve2gr.w	$ra, $vr6, 0
	bstrpick.d	$ra, $ra, 15, 0
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$ra, $ra, 2
	slli.d	$s8, $s8, 2
	slli.d	$s7, $s7, 2
	slli.d	$s6, $s6, 2
	slli.d	$s4, $s4, 2
	slli.d	$s1, $s1, 2
	slli.d	$t8, $t8, 2
	slli.d	$t7, $t7, 2
	ldx.w	$t6, $a5, $t6
	ldx.w	$t5, $a5, $t5
	ldx.w	$t4, $a5, $t4
	ldx.w	$t3, $a5, $t3
	ldx.w	$t2, $a5, $t2
	ldx.w	$t1, $a5, $t1
	ldx.w	$t0, $a5, $t0
	ldx.w	$a7, $a5, $a7
	xvinsgr2vr.w	$xr5, $t6, 0
	xvinsgr2vr.w	$xr5, $t5, 1
	xvinsgr2vr.w	$xr5, $t4, 2
	xvinsgr2vr.w	$xr5, $t3, 3
	xvinsgr2vr.w	$xr5, $t2, 4
	xvinsgr2vr.w	$xr5, $t1, 5
	xvinsgr2vr.w	$xr5, $t0, 6
	xvinsgr2vr.w	$xr5, $a7, 7
	ldx.w	$a7, $a5, $ra
	ldx.w	$t0, $a5, $s8
	ldx.w	$t1, $a5, $s7
	ldx.w	$t2, $a5, $s6
	ldx.w	$t3, $a5, $s4
	ldx.w	$t4, $a5, $s1
	ldx.w	$t5, $a5, $t8
	ldx.w	$t6, $a5, $t7
	xvinsgr2vr.w	$xr6, $a7, 0
	xvinsgr2vr.w	$xr6, $t0, 1
	xvinsgr2vr.w	$xr6, $t1, 2
	xvinsgr2vr.w	$xr6, $t2, 3
	xvinsgr2vr.w	$xr6, $t3, 4
	xvinsgr2vr.w	$xr6, $t4, 5
	xvinsgr2vr.w	$xr6, $t5, 6
	xvinsgr2vr.w	$xr6, $t6, 7
	xvsrli.w	$xr7, $xr7, 16
	xvsrli.w	$xr8, $xr8, 16
	xvpermi.q	$xr9, $xr7, 1
	vpickve2gr.w	$a7, $vr9, 3
	bstrpick.d	$a7, $a7, 14, 0
	vpickve2gr.w	$t0, $vr9, 2
	bstrpick.d	$t0, $t0, 14, 0
	vpickve2gr.w	$t1, $vr9, 1
	bstrpick.d	$t1, $t1, 14, 0
	vpickve2gr.w	$t2, $vr9, 0
	bstrpick.d	$t2, $t2, 14, 0
	vpickve2gr.w	$t3, $vr7, 3
	bstrpick.d	$t3, $t3, 14, 0
	vpickve2gr.w	$t4, $vr7, 2
	bstrpick.d	$t4, $t4, 14, 0
	vpickve2gr.w	$t5, $vr7, 1
	bstrpick.d	$t5, $t5, 14, 0
	vpickve2gr.w	$t6, $vr7, 0
	bstrpick.d	$t6, $t6, 14, 0
	xvpermi.q	$xr7, $xr8, 1
	vpickve2gr.w	$t7, $vr7, 3
	bstrpick.d	$t7, $t7, 14, 0
	vpickve2gr.w	$t8, $vr7, 2
	bstrpick.d	$t8, $t8, 14, 0
	vpickve2gr.w	$s1, $vr7, 1
	bstrpick.d	$s1, $s1, 14, 0
	vpickve2gr.w	$s4, $vr7, 0
	bstrpick.d	$s4, $s4, 14, 0
	vpickve2gr.w	$s6, $vr8, 3
	bstrpick.d	$s6, $s6, 14, 0
	vpickve2gr.w	$s7, $vr8, 2
	bstrpick.d	$s7, $s7, 14, 0
	vpickve2gr.w	$s8, $vr8, 1
	bstrpick.d	$s8, $s8, 14, 0
	vpickve2gr.w	$ra, $vr8, 0
	bstrpick.d	$ra, $ra, 14, 0
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$ra, $ra, 2
	slli.d	$s8, $s8, 2
	slli.d	$s7, $s7, 2
	slli.d	$s6, $s6, 2
	slli.d	$s4, $s4, 2
	slli.d	$s1, $s1, 2
	slli.d	$t8, $t8, 2
	slli.d	$t7, $t7, 2
	ldx.w	$t6, $a5, $t6
	ldx.w	$t5, $a5, $t5
	ldx.w	$t4, $a5, $t4
	ldx.w	$t3, $a5, $t3
	ldx.w	$t2, $a5, $t2
	ldx.w	$t1, $a5, $t1
	ldx.w	$t0, $a5, $t0
	ldx.w	$a7, $a5, $a7
	xvinsgr2vr.w	$xr7, $t6, 0
	xvinsgr2vr.w	$xr7, $t5, 1
	xvinsgr2vr.w	$xr7, $t4, 2
	xvinsgr2vr.w	$xr7, $t3, 3
	xvinsgr2vr.w	$xr7, $t2, 4
	xvinsgr2vr.w	$xr7, $t1, 5
	xvinsgr2vr.w	$xr7, $t0, 6
	xvinsgr2vr.w	$xr7, $a7, 7
	ldx.w	$a7, $a5, $ra
	ldx.w	$t0, $a5, $s8
	ldx.w	$t1, $a5, $s7
	ldx.w	$t2, $a5, $s6
	ldx.w	$t3, $a5, $s4
	ldx.w	$t4, $a5, $s1
	ldx.w	$t5, $a5, $t8
	ldx.w	$t6, $a5, $t7
	xvinsgr2vr.w	$xr8, $a7, 0
	xvinsgr2vr.w	$xr8, $t0, 1
	xvinsgr2vr.w	$xr8, $t1, 2
	xvinsgr2vr.w	$xr8, $t2, 3
	xvinsgr2vr.w	$xr8, $t3, 4
	xvinsgr2vr.w	$xr8, $t4, 5
	xvinsgr2vr.w	$xr8, $t5, 6
	xvinsgr2vr.w	$xr8, $t6, 7
	xvadd.w	$xr1, $xr5, $xr1
	xvadd.w	$xr4, $xr6, $xr4
	xvadd.w	$xr1, $xr1, $xr7
	xvadd.w	$xr4, $xr4, $xr8
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB0_17
# %bb.18:                               # %middle.block86
	xvadd.w	$xr1, $xr4, $xr1
	xvhaddw.d.w	$xr1, $xr1, $xr1
	xvhaddw.q.d	$xr1, $xr1, $xr1
	xvpermi.d	$xr2, $xr1, 2
	xvadd.d	$xr1, $xr2, $xr1
	xvpickve2gr.d	$a4, $xr1, 0
	beq	$a3, $a0, .LBB0_22
# %bb.19:
	xvpickve2gr.w	$a5, $xr0, 7
.LBB0_20:                               # %scalar.ph70.preheader
	sub.d	$a0, $a0, $a3
	alsl.d	$a1, $a3, $a1, 2
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(countbits16)
	ld.d	$a2, $a2, %got_pc_lo12(countbits16)
	lu12i.w	$a3, 31
	ori	$a3, $a3, 4092
	.p2align	4, , 16
.LBB0_21:                               # %scalar.ph70
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	and	$a6, $a6, $a5
	ld.w	$a5, $a1, -4
	nor	$a7, $a5, $zero
	bstrpick.d	$t0, $a6, 31, 1
	and	$a6, $t0, $a6
	bstrpick.d	$a7, $a7, 31, 1
	or	$a6, $a6, $a5
	andn	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 15, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	srli.d	$a6, $a6, 14
	and	$a6, $a6, $a3
	ldx.w	$a6, $a2, $a6
	add.d	$a4, $a7, $a4
	add.d	$a4, $a4, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB0_21
.LBB0_22:                               # %tr_total_non_safe_moves.exit27
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	alsl.d	$s4, $fp, $s5, 2
	addi.w	$a2, $a4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s1, $a1, %pc_lo12(.L.str.5)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tr_non_safe_moves_a_little_touchy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$fp, $a0, %pc_lo12(.L.str.4)
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tr_non_safe_moves_a_little_touchy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	blez	$a0, .LBB0_25
# %bb.23:                               # %iter.check
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB0_26
# %bb.24:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_35
.LBB0_25:
	move	$a2, $zero
	b	.LBB0_37
.LBB0_26:                               # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$a0, $a1, .LBB0_28
# %bb.27:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_32
.LBB0_28:                               # %vector.ph97
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	addi.d	$a2, $a1, 36
	bstrpick.d	$a1, $a0, 30, 4
	slli.d	$a1, $a1, 4
	xvrepli.b	$xr0, 0
	xvrepli.b	$xr1, -1
	lu12i.w	$a3, 15
	ori	$a3, $a3, 4095
	xvreplgr2vr.w	$xr2, $a3
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	move	$a4, $a1
	xvori.b	$xr3, $xr0, 0
	.p2align	4, , 16
.LBB0_29:                               # %vector.body100
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
	vpickve2gr.w	$s5, $vr5, 0
	bstrpick.d	$s5, $s5, 15, 0
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$s5, $s5, 2
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
	ldx.w	$a5, $a3, $s5
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
	vpickve2gr.w	$s5, $vr7, 0
	bstrpick.d	$s5, $s5, 15, 0
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$s5, $s5, 2
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
	ldx.w	$a5, $a3, $s5
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
	bnez	$a4, .LBB0_29
# %bb.30:                               # %middle.block107
	xvadd.w	$xr0, $xr3, $xr0
	xvhaddw.d.w	$xr0, $xr0, $xr0
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a2, $xr0, 0
	beq	$a1, $a0, .LBB0_37
# %bb.31:                               # %vec.epilog.iter.check
	andi	$a3, $a0, 12
	beqz	$a3, .LBB0_35
.LBB0_32:                               # %vec.epilog.ph
	move	$a3, $a1
	bstrpick.d	$a1, $a0, 30, 2
	slli.d	$a1, $a1, 2
	vrepli.b	$vr0, 0
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
.LBB0_33:                               # %vec.epilog.vector.body
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
	bnez	$a3, .LBB0_33
# %bb.34:                               # %vec.epilog.middle.block
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_37
.LBB0_35:                               # %.lr.ph.i29.preheader
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
.LBB0_36:                               # %.lr.ph.i29
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
	bnez	$a0, .LBB0_36
.LBB0_37:                               # %tr_total_empty_squares.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	addi.w	$a2, $a2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 0
	bltz	$a2, .LBB0_40
# %bb.38:                               # %.lr.ph.i33
	pcalau12i	$a0, %got_pc_hi20(g_board)
	ld.d	$a0, $a0, %got_pc_lo12(g_board)
	ldx.w	$a4, $a0, $s3
	addi.d	$a1, $a2, 1
	ori	$a3, $zero, 15
	bstrpick.d	$a1, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_41
# %bb.39:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB0_45
.LBB0_40:
	move	$a3, $zero
	b	.LBB0_47
.LBB0_41:                               # %vector.ph122
	bstrpick.d	$a2, $a1, 31, 4
	slli.d	$a2, $a2, 4
	xvinsgr2vr.w	$xr0, $a4, 7
	add.d	$a3, $s3, $a0
	addi.d	$a3, $a3, 36
	xvrepli.b	$xr1, 0
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	xvreplgr2vr.w	$xr2, $a4
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	move	$a5, $a2
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB0_42:                               # %vector.body125
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a3, -32
	xvpickve.w	$xr5, $xr0, 7
	xvld	$xr0, $a3, 0
	xvinsve0.w	$xr5, $xr5, 0
	xvinsve0.w	$xr5, $xr4, 1
	xvpickve.w	$xr6, $xr4, 1
	xvinsve0.w	$xr5, $xr6, 2
	xvpickve.w	$xr6, $xr4, 2
	xvinsve0.w	$xr5, $xr6, 3
	xvpickve.w	$xr6, $xr4, 3
	xvinsve0.w	$xr5, $xr6, 4
	xvpickve.w	$xr6, $xr4, 4
	xvinsve0.w	$xr5, $xr6, 5
	xvpickve.w	$xr6, $xr4, 5
	xvinsve0.w	$xr5, $xr6, 6
	xvpickve.w	$xr6, $xr4, 6
	xvinsve0.w	$xr5, $xr6, 7
	xvpickve.w	$xr6, $xr4, 7
	xvinsve0.w	$xr7, $xr6, 0
	xvinsve0.w	$xr7, $xr0, 1
	xvpickve.w	$xr6, $xr0, 1
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.w	$xr6, $xr0, 2
	xvinsve0.w	$xr7, $xr6, 3
	xvpickve.w	$xr6, $xr0, 3
	xvinsve0.w	$xr7, $xr6, 4
	xvpickve.w	$xr6, $xr0, 4
	xvinsve0.w	$xr7, $xr6, 5
	xvpickve.w	$xr6, $xr0, 5
	xvinsve0.w	$xr7, $xr6, 6
	xvpickve.w	$xr6, $xr0, 6
	xvinsve0.w	$xr7, $xr6, 7
	xvxor.v	$xr6, $xr4, $xr5
	xvxor.v	$xr7, $xr0, $xr7
	xvand.v	$xr4, $xr6, $xr2
	xvand.v	$xr5, $xr7, $xr2
	xvpermi.q	$xr8, $xr4, 1
	vpickve2gr.w	$a6, $vr8, 3
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.w	$a7, $vr8, 2
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr8, 1
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.w	$t1, $vr8, 0
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.w	$t2, $vr4, 3
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.w	$t3, $vr4, 2
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.w	$t4, $vr4, 1
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.w	$t5, $vr4, 0
	bstrpick.d	$t5, $t5, 15, 0
	xvpermi.q	$xr4, $xr5, 1
	vpickve2gr.w	$t6, $vr4, 3
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.w	$t7, $vr4, 2
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.w	$t8, $vr4, 1
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.w	$fp, $vr4, 0
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.w	$s0, $vr5, 3
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.w	$s1, $vr5, 2
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.w	$s5, $vr5, 1
	bstrpick.d	$s5, $s5, 15, 0
	vpickve2gr.w	$s6, $vr5, 0
	bstrpick.d	$s6, $s6, 15, 0
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$s6, $s6, 2
	slli.d	$s5, $s5, 2
	slli.d	$s1, $s1, 2
	slli.d	$s0, $s0, 2
	slli.d	$fp, $fp, 2
	slli.d	$t8, $t8, 2
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	ldx.w	$t5, $a4, $t5
	ldx.w	$t4, $a4, $t4
	ldx.w	$t3, $a4, $t3
	ldx.w	$t2, $a4, $t2
	ldx.w	$t1, $a4, $t1
	ldx.w	$t0, $a4, $t0
	ldx.w	$a7, $a4, $a7
	ldx.w	$a6, $a4, $a6
	xvinsgr2vr.w	$xr4, $t5, 0
	xvinsgr2vr.w	$xr4, $t4, 1
	xvinsgr2vr.w	$xr4, $t3, 2
	xvinsgr2vr.w	$xr4, $t2, 3
	xvinsgr2vr.w	$xr4, $t1, 4
	xvinsgr2vr.w	$xr4, $t0, 5
	xvinsgr2vr.w	$xr4, $a7, 6
	xvinsgr2vr.w	$xr4, $a6, 7
	ldx.w	$a6, $a4, $s6
	ldx.w	$a7, $a4, $s5
	ldx.w	$t0, $a4, $s1
	ldx.w	$t1, $a4, $s0
	ldx.w	$t2, $a4, $fp
	ldx.w	$t3, $a4, $t8
	ldx.w	$t4, $a4, $t7
	ldx.w	$t5, $a4, $t6
	xvinsgr2vr.w	$xr5, $a6, 0
	xvinsgr2vr.w	$xr5, $a7, 1
	xvinsgr2vr.w	$xr5, $t0, 2
	xvinsgr2vr.w	$xr5, $t1, 3
	xvinsgr2vr.w	$xr5, $t2, 4
	xvinsgr2vr.w	$xr5, $t3, 5
	xvinsgr2vr.w	$xr5, $t4, 6
	xvinsgr2vr.w	$xr5, $t5, 7
	xvsrli.w	$xr6, $xr6, 16
	xvsrli.w	$xr7, $xr7, 16
	xvpermi.q	$xr8, $xr6, 1
	vpickve2gr.w	$a6, $vr8, 3
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.w	$a7, $vr8, 2
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr8, 1
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.w	$t1, $vr8, 0
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.w	$t2, $vr6, 3
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.w	$t3, $vr6, 2
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.w	$t4, $vr6, 1
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.w	$t5, $vr6, 0
	bstrpick.d	$t5, $t5, 15, 0
	xvpermi.q	$xr6, $xr7, 1
	vpickve2gr.w	$t6, $vr6, 3
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.w	$t7, $vr6, 2
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.w	$t8, $vr6, 1
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.w	$fp, $vr6, 0
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.w	$s0, $vr7, 3
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.w	$s1, $vr7, 2
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.w	$s5, $vr7, 1
	bstrpick.d	$s5, $s5, 15, 0
	vpickve2gr.w	$s6, $vr7, 0
	bstrpick.d	$s6, $s6, 15, 0
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$s6, $s6, 2
	slli.d	$s5, $s5, 2
	slli.d	$s1, $s1, 2
	slli.d	$s0, $s0, 2
	slli.d	$fp, $fp, 2
	slli.d	$t8, $t8, 2
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	ldx.w	$t5, $a4, $t5
	ldx.w	$t4, $a4, $t4
	ldx.w	$t3, $a4, $t3
	ldx.w	$t2, $a4, $t2
	ldx.w	$t1, $a4, $t1
	ldx.w	$t0, $a4, $t0
	ldx.w	$a7, $a4, $a7
	ldx.w	$a6, $a4, $a6
	xvinsgr2vr.w	$xr6, $t5, 0
	xvinsgr2vr.w	$xr6, $t4, 1
	xvinsgr2vr.w	$xr6, $t3, 2
	xvinsgr2vr.w	$xr6, $t2, 3
	xvinsgr2vr.w	$xr6, $t1, 4
	xvinsgr2vr.w	$xr6, $t0, 5
	xvinsgr2vr.w	$xr6, $a7, 6
	xvinsgr2vr.w	$xr6, $a6, 7
	ldx.w	$a6, $a4, $s6
	ldx.w	$a7, $a4, $s5
	ldx.w	$t0, $a4, $s1
	ldx.w	$t1, $a4, $s0
	ldx.w	$t2, $a4, $fp
	ldx.w	$t3, $a4, $t8
	ldx.w	$t4, $a4, $t7
	ldx.w	$t5, $a4, $t6
	xvinsgr2vr.w	$xr7, $a6, 0
	xvinsgr2vr.w	$xr7, $a7, 1
	xvinsgr2vr.w	$xr7, $t0, 2
	xvinsgr2vr.w	$xr7, $t1, 3
	xvinsgr2vr.w	$xr7, $t2, 4
	xvinsgr2vr.w	$xr7, $t3, 5
	xvinsgr2vr.w	$xr7, $t4, 6
	xvinsgr2vr.w	$xr7, $t5, 7
	xvadd.w	$xr1, $xr4, $xr1
	xvadd.w	$xr3, $xr5, $xr3
	xvadd.w	$xr1, $xr1, $xr6
	xvadd.w	$xr3, $xr3, $xr7
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	bnez	$a5, .LBB0_42
# %bb.43:                               # %middle.block134
	xvadd.w	$xr1, $xr3, $xr1
	xvhaddw.d.w	$xr1, $xr1, $xr1
	xvhaddw.q.d	$xr1, $xr1, $xr1
	xvpermi.d	$xr2, $xr1, 2
	xvadd.d	$xr1, $xr2, $xr1
	xvpickve2gr.d	$a3, $xr1, 0
	beq	$a2, $a1, .LBB0_47
# %bb.44:
	xvpickve2gr.w	$a4, $xr0, 7
.LBB0_45:                               # %scalar.ph120.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a2, $s3, 2
	add.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 4
	lu12i.w	$a2, -16
	lu32i.d	$a2, 0
	pcalau12i	$a5, %got_pc_hi20(countbits16)
	ld.d	$a5, $a5, %got_pc_lo12(countbits16)
	.p2align	4, , 16
.LBB0_46:                               # %scalar.ph120
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	xor	$a4, $a6, $a4
	and	$a7, $a4, $a2
	bstrpick.d	$a4, $a4, 15, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a5, $a4
	srli.d	$a7, $a7, 14
	ldx.w	$a7, $a5, $a7
	add.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a7
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	move	$a4, $a6
	bnez	$a1, .LBB0_46
.LBB0_47:                               # %tr_border_length_col.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	addi.w	$a2, $a3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	bltz	$a1, .LBB0_50
# %bb.48:                               # %iter.check144
	addi.d	$a0, $a1, 1
	ori	$a2, $zero, 3
	bstrpick.d	$a0, $a0, 31, 0
	bgeu	$a1, $a2, .LBB0_51
# %bb.49:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_60
.LBB0_50:
	move	$a2, $zero
	b	.LBB0_62
.LBB0_51:                               # %vector.main.loop.iter.check146
	ori	$a2, $zero, 15
	bgeu	$a1, $a2, .LBB0_53
# %bb.52:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_57
.LBB0_53:                               # %vector.ph147
	bstrpick.d	$a1, $a0, 31, 4
	slli.d	$a1, $a1, 4
	pcalau12i	$a2, %got_pc_hi20(g_board)
	ld.d	$a2, $a2, %got_pc_lo12(g_board)
	add.d	$a2, $s3, $a2
	addi.d	$a2, $a2, 36
	xvrepli.b	$xr0, 0
	lu12i.w	$a3, 15
	ori	$a3, $a3, 4095
	xvreplgr2vr.w	$xr1, $a3
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	move	$a4, $a1
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB0_54:                               # %vector.body150
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a2, -32
	xvld	$xr4, $a2, 0
	xvsrli.w	$xr5, $xr3, 1
	xvsrli.w	$xr6, $xr4, 1
	xvbitclri.w	$xr3, $xr3, 31
	xvbitclri.w	$xr4, $xr4, 31
	xvxor.v	$xr5, $xr5, $xr3
	xvxor.v	$xr6, $xr6, $xr4
	xvand.v	$xr3, $xr5, $xr1
	xvand.v	$xr4, $xr6, $xr1
	xvpermi.q	$xr7, $xr3, 1
	vpickve2gr.w	$a5, $vr7, 3
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.w	$a6, $vr7, 2
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.w	$a7, $vr7, 1
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr7, 0
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.w	$t1, $vr3, 3
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.w	$t2, $vr3, 2
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.w	$t3, $vr3, 1
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.w	$t4, $vr3, 0
	bstrpick.d	$t4, $t4, 15, 0
	xvpermi.q	$xr3, $xr4, 1
	vpickve2gr.w	$t5, $vr3, 3
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.w	$t6, $vr3, 2
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.w	$t7, $vr3, 1
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.w	$t8, $vr3, 0
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.w	$fp, $vr4, 3
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.w	$s0, $vr4, 2
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.w	$s1, $vr4, 1
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.w	$s4, $vr4, 0
	bstrpick.d	$s4, $s4, 15, 0
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$s4, $s4, 2
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
	xvinsgr2vr.w	$xr3, $t4, 0
	xvinsgr2vr.w	$xr3, $t3, 1
	xvinsgr2vr.w	$xr3, $t2, 2
	xvinsgr2vr.w	$xr3, $t1, 3
	xvinsgr2vr.w	$xr3, $t0, 4
	xvinsgr2vr.w	$xr3, $a7, 5
	xvinsgr2vr.w	$xr3, $a6, 6
	xvinsgr2vr.w	$xr3, $a5, 7
	ldx.w	$a5, $a3, $s4
	ldx.w	$a6, $a3, $s1
	ldx.w	$a7, $a3, $s0
	ldx.w	$t0, $a3, $fp
	ldx.w	$t1, $a3, $t8
	ldx.w	$t2, $a3, $t7
	ldx.w	$t3, $a3, $t6
	ldx.w	$t4, $a3, $t5
	xvinsgr2vr.w	$xr4, $a5, 0
	xvinsgr2vr.w	$xr4, $a6, 1
	xvinsgr2vr.w	$xr4, $a7, 2
	xvinsgr2vr.w	$xr4, $t0, 3
	xvinsgr2vr.w	$xr4, $t1, 4
	xvinsgr2vr.w	$xr4, $t2, 5
	xvinsgr2vr.w	$xr4, $t3, 6
	xvinsgr2vr.w	$xr4, $t4, 7
	xvsrli.w	$xr5, $xr5, 16
	xvsrli.w	$xr6, $xr6, 16
	xvpermi.q	$xr7, $xr5, 1
	vpickve2gr.w	$a5, $vr7, 3
	bstrpick.d	$a5, $a5, 14, 0
	vpickve2gr.w	$a6, $vr7, 2
	bstrpick.d	$a6, $a6, 14, 0
	vpickve2gr.w	$a7, $vr7, 1
	bstrpick.d	$a7, $a7, 14, 0
	vpickve2gr.w	$t0, $vr7, 0
	bstrpick.d	$t0, $t0, 14, 0
	vpickve2gr.w	$t1, $vr5, 3
	bstrpick.d	$t1, $t1, 14, 0
	vpickve2gr.w	$t2, $vr5, 2
	bstrpick.d	$t2, $t2, 14, 0
	vpickve2gr.w	$t3, $vr5, 1
	bstrpick.d	$t3, $t3, 14, 0
	vpickve2gr.w	$t4, $vr5, 0
	bstrpick.d	$t4, $t4, 14, 0
	xvpermi.q	$xr5, $xr6, 1
	vpickve2gr.w	$t5, $vr5, 3
	bstrpick.d	$t5, $t5, 14, 0
	vpickve2gr.w	$t6, $vr5, 2
	bstrpick.d	$t6, $t6, 14, 0
	vpickve2gr.w	$t7, $vr5, 1
	bstrpick.d	$t7, $t7, 14, 0
	vpickve2gr.w	$t8, $vr5, 0
	bstrpick.d	$t8, $t8, 14, 0
	vpickve2gr.w	$fp, $vr6, 3
	bstrpick.d	$fp, $fp, 14, 0
	vpickve2gr.w	$s0, $vr6, 2
	bstrpick.d	$s0, $s0, 14, 0
	vpickve2gr.w	$s1, $vr6, 1
	bstrpick.d	$s1, $s1, 14, 0
	vpickve2gr.w	$s4, $vr6, 0
	bstrpick.d	$s4, $s4, 14, 0
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$s4, $s4, 2
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
	xvinsgr2vr.w	$xr5, $t4, 0
	xvinsgr2vr.w	$xr5, $t3, 1
	xvinsgr2vr.w	$xr5, $t2, 2
	xvinsgr2vr.w	$xr5, $t1, 3
	xvinsgr2vr.w	$xr5, $t0, 4
	xvinsgr2vr.w	$xr5, $a7, 5
	xvinsgr2vr.w	$xr5, $a6, 6
	xvinsgr2vr.w	$xr5, $a5, 7
	ldx.w	$a5, $a3, $s4
	ldx.w	$a6, $a3, $s1
	ldx.w	$a7, $a3, $s0
	ldx.w	$t0, $a3, $fp
	ldx.w	$t1, $a3, $t8
	ldx.w	$t2, $a3, $t7
	ldx.w	$t3, $a3, $t6
	ldx.w	$t4, $a3, $t5
	xvinsgr2vr.w	$xr6, $a5, 0
	xvinsgr2vr.w	$xr6, $a6, 1
	xvinsgr2vr.w	$xr6, $a7, 2
	xvinsgr2vr.w	$xr6, $t0, 3
	xvinsgr2vr.w	$xr6, $t1, 4
	xvinsgr2vr.w	$xr6, $t2, 5
	xvinsgr2vr.w	$xr6, $t3, 6
	xvinsgr2vr.w	$xr6, $t4, 7
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr0, $xr0, $xr5
	xvadd.w	$xr2, $xr2, $xr6
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB0_54
# %bb.55:                               # %middle.block157
	xvadd.w	$xr0, $xr2, $xr0
	xvhaddw.d.w	$xr0, $xr0, $xr0
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a2, $xr0, 0
	beq	$a1, $a0, .LBB0_62
# %bb.56:                               # %vec.epilog.iter.check164
	andi	$a3, $a0, 12
	beqz	$a3, .LBB0_60
.LBB0_57:                               # %vec.epilog.ph163
	move	$a3, $a1
	bstrpick.d	$a1, $a0, 31, 2
	slli.d	$a1, $a1, 2
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a2, 0
	alsl.d	$a2, $a3, $s3, 2
	pcalau12i	$a4, %got_pc_hi20(g_board)
	ld.d	$a4, $a4, %got_pc_lo12(g_board)
	add.d	$a2, $a2, $a4
	addi.d	$a2, $a2, 4
	sub.d	$a3, $a3, $a1
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	.p2align	4, , 16
.LBB0_58:                               # %vec.epilog.vector.body169
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vsrli.w	$vr2, $vr1, 1
	vbitclri.w	$vr1, $vr1, 31
	vxor.v	$vr1, $vr2, $vr1
	vpickve2gr.w	$a5, $vr1, 3
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.w	$a6, $vr1, 2
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.w	$a7, $vr1, 1
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.w	$t0, $vr1, 0
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
	vsrli.w	$vr1, $vr1, 16
	vpickve2gr.w	$a5, $vr1, 3
	bstrpick.d	$a5, $a5, 14, 0
	vpickve2gr.w	$a6, $vr1, 2
	bstrpick.d	$a6, $a6, 14, 0
	vpickve2gr.w	$a7, $vr1, 1
	bstrpick.d	$a7, $a7, 14, 0
	vpickve2gr.w	$t0, $vr1, 0
	bstrpick.d	$t0, $t0, 14, 0
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	ldx.w	$t0, $a4, $t0
	ldx.w	$a7, $a4, $a7
	ldx.w	$a6, $a4, $a6
	ldx.w	$a5, $a4, $a5
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $a7, 1
	vinsgr2vr.w	$vr1, $a6, 2
	vinsgr2vr.w	$vr1, $a5, 3
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB0_58
# %bb.59:                               # %vec.epilog.middle.block174
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_62
.LBB0_60:                               # %vec.epilog.scalar.ph162.preheader
	sub.d	$a0, $a0, $a1
	alsl.d	$a1, $a1, $s3, 2
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, 4
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	lu12i.w	$a4, 31
	ori	$a4, $a4, 4092
	.p2align	4, , 16
.LBB0_61:                               # %vec.epilog.scalar.ph162
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a5, $a1, 0
	srli.d	$a6, $a5, 1
	bstrpick.d	$a5, $a5, 30, 0
	xor	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 15, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	srli.d	$a5, $a5, 14
	and	$a5, $a5, $a4
	ldx.w	$a5, $a3, $a5
	add.d	$a2, $a6, $a2
	add.d	$a2, $a2, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB0_61
.LBB0_62:                               # %tr_border_length_row.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	addi.w	$a2, $a2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	ori	$a0, $zero, 10
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB0_63:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s0, $s2, %pc_lo12(trait_file)
	b	.LBB0_2
.Lfunc_end0:
	.size	write_node_info, .Lfunc_end0-write_node_info
                                        # -- End function
	.p2align	5                               # -- Begin function tr_non_safe_moves_a_little_touchy
	.type	tr_non_safe_moves_a_little_touchy,@function
tr_non_safe_moves_a_little_touchy:      # @tr_non_safe_moves_a_little_touchy
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
	slli.d	$a1, $a0, 2
	pcalau12i	$a2, %got_pc_hi20(g_board_size)
	ld.d	$a2, $a2, %got_pc_lo12(g_board_size)
	ldx.w	$a1, $a2, $a1
	blez	$a1, .LBB1_3
# %bb.1:                                # %.lr.ph
	slli.d	$a2, $a0, 7
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	ldx.w	$a6, $a3, $a2
	ori	$a4, $zero, 16
	bgeu	$a1, $a4, .LBB1_4
# %bb.2:
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB1_8
.LBB1_3:
	move	$a5, $zero
	b	.LBB1_11
.LBB1_4:                                # %vector.ph
	bstrpick.d	$a4, $a1, 30, 4
	slli.d	$a4, $a4, 4
	xvinsgr2vr.w	$xr0, $a6, 7
	add.d	$a5, $a2, $a3
	addi.d	$a5, $a5, 40
	xvrepli.b	$xr1, 0
	lu12i.w	$a6, 15
	ori	$a6, $a6, 4095
	xvreplgr2vr.w	$xr2, $a6
	pcalau12i	$a6, %got_pc_hi20(countbits16)
	ld.d	$a6, $a6, %got_pc_lo12(countbits16)
	move	$a7, $a4
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a5, -32
	xvld	$xr5, $a5, 0
	xvld	$xr6, $a5, -36
	xvpickve.w	$xr7, $xr0, 7
	xvld	$xr0, $a5, -4
	xvinsve0.w	$xr7, $xr7, 0
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.w	$xr8, $xr6, 1
	xvinsve0.w	$xr7, $xr8, 2
	xvpickve.w	$xr8, $xr6, 2
	xvinsve0.w	$xr7, $xr8, 3
	xvpickve.w	$xr8, $xr6, 3
	xvinsve0.w	$xr7, $xr8, 4
	xvpickve.w	$xr8, $xr6, 4
	xvinsve0.w	$xr7, $xr8, 5
	xvpickve.w	$xr8, $xr6, 5
	xvinsve0.w	$xr7, $xr8, 6
	xvpickve.w	$xr8, $xr6, 6
	xvinsve0.w	$xr7, $xr8, 7
	xvpickve.w	$xr8, $xr6, 7
	xvinsve0.w	$xr8, $xr8, 0
	xvinsve0.w	$xr8, $xr0, 1
	xvpickve.w	$xr9, $xr0, 1
	xvinsve0.w	$xr8, $xr9, 2
	xvpickve.w	$xr9, $xr0, 2
	xvinsve0.w	$xr8, $xr9, 3
	xvpickve.w	$xr9, $xr0, 3
	xvinsve0.w	$xr8, $xr9, 4
	xvpickve.w	$xr9, $xr0, 4
	xvinsve0.w	$xr8, $xr9, 5
	xvpickve.w	$xr9, $xr0, 5
	xvinsve0.w	$xr8, $xr9, 6
	xvpickve.w	$xr9, $xr0, 6
	xvinsve0.w	$xr8, $xr9, 7
	xvor.v	$xr4, $xr4, $xr7
	xvor.v	$xr5, $xr5, $xr8
	xvsrli.w	$xr7, $xr6, 1
	xvsrli.w	$xr8, $xr0, 1
	xvor.v	$xr4, $xr4, $xr6
	xvor.v	$xr5, $xr5, $xr0
	xvslli.w	$xr9, $xr4, 1
	xvslli.w	$xr10, $xr5, 1
	xvslli.w	$xr6, $xr6, 2
	xvslli.w	$xr11, $xr0, 2
	xvor.v	$xr6, $xr7, $xr6
	xvor.v	$xr7, $xr8, $xr11
	xvor.v	$xr6, $xr6, $xr9
	xvor.v	$xr7, $xr7, $xr10
	xvor.v	$xr8, $xr4, $xr6
	xvor.v	$xr9, $xr5, $xr7
	xvnor.v	$xr6, $xr4, $xr6
	xvnor.v	$xr7, $xr5, $xr7
	xvandn.v	$xr4, $xr8, $xr2
	xvandn.v	$xr5, $xr9, $xr2
	xvpermi.q	$xr8, $xr4, 1
	vpickve2gr.w	$t0, $vr8, 3
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.w	$t1, $vr8, 2
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.w	$t2, $vr8, 1
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.w	$t3, $vr8, 0
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.w	$t4, $vr4, 3
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.w	$t5, $vr4, 2
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.w	$t6, $vr4, 1
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.w	$t7, $vr4, 0
	bstrpick.d	$t7, $t7, 15, 0
	xvpermi.q	$xr4, $xr5, 1
	vpickve2gr.w	$t8, $vr4, 3
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.w	$fp, $vr4, 2
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.w	$s0, $vr4, 1
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.w	$s1, $vr4, 0
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.w	$s2, $vr5, 3
	bstrpick.d	$s2, $s2, 15, 0
	vpickve2gr.w	$s3, $vr5, 2
	bstrpick.d	$s3, $s3, 15, 0
	vpickve2gr.w	$s4, $vr5, 1
	bstrpick.d	$s4, $s4, 15, 0
	vpickve2gr.w	$s5, $vr5, 0
	bstrpick.d	$s5, $s5, 15, 0
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$s5, $s5, 2
	slli.d	$s4, $s4, 2
	slli.d	$s3, $s3, 2
	slli.d	$s2, $s2, 2
	slli.d	$s1, $s1, 2
	slli.d	$s0, $s0, 2
	slli.d	$fp, $fp, 2
	slli.d	$t8, $t8, 2
	ldx.w	$t7, $a6, $t7
	ldx.w	$t6, $a6, $t6
	ldx.w	$t5, $a6, $t5
	ldx.w	$t4, $a6, $t4
	ldx.w	$t3, $a6, $t3
	ldx.w	$t2, $a6, $t2
	ldx.w	$t1, $a6, $t1
	ldx.w	$t0, $a6, $t0
	xvinsgr2vr.w	$xr4, $t7, 0
	xvinsgr2vr.w	$xr4, $t6, 1
	xvinsgr2vr.w	$xr4, $t5, 2
	xvinsgr2vr.w	$xr4, $t4, 3
	xvinsgr2vr.w	$xr4, $t3, 4
	xvinsgr2vr.w	$xr4, $t2, 5
	xvinsgr2vr.w	$xr4, $t1, 6
	xvinsgr2vr.w	$xr4, $t0, 7
	ldx.w	$t0, $a6, $s5
	ldx.w	$t1, $a6, $s4
	ldx.w	$t2, $a6, $s3
	ldx.w	$t3, $a6, $s2
	ldx.w	$t4, $a6, $s1
	ldx.w	$t5, $a6, $s0
	ldx.w	$t6, $a6, $fp
	ldx.w	$t7, $a6, $t8
	xvinsgr2vr.w	$xr5, $t0, 0
	xvinsgr2vr.w	$xr5, $t1, 1
	xvinsgr2vr.w	$xr5, $t2, 2
	xvinsgr2vr.w	$xr5, $t3, 3
	xvinsgr2vr.w	$xr5, $t4, 4
	xvinsgr2vr.w	$xr5, $t5, 5
	xvinsgr2vr.w	$xr5, $t6, 6
	xvinsgr2vr.w	$xr5, $t7, 7
	xvsrli.w	$xr6, $xr6, 16
	xvsrli.w	$xr7, $xr7, 16
	xvpermi.q	$xr8, $xr6, 1
	vpickve2gr.w	$t0, $vr8, 3
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.w	$t1, $vr8, 2
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.w	$t2, $vr8, 1
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.w	$t3, $vr8, 0
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.w	$t4, $vr6, 3
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.w	$t5, $vr6, 2
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.w	$t6, $vr6, 1
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.w	$t7, $vr6, 0
	bstrpick.d	$t7, $t7, 15, 0
	xvpermi.q	$xr6, $xr7, 1
	vpickve2gr.w	$t8, $vr6, 3
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.w	$fp, $vr6, 2
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.w	$s0, $vr6, 1
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.w	$s1, $vr6, 0
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.w	$s2, $vr7, 3
	bstrpick.d	$s2, $s2, 15, 0
	vpickve2gr.w	$s3, $vr7, 2
	bstrpick.d	$s3, $s3, 15, 0
	vpickve2gr.w	$s4, $vr7, 1
	bstrpick.d	$s4, $s4, 15, 0
	vpickve2gr.w	$s5, $vr7, 0
	bstrpick.d	$s5, $s5, 15, 0
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$s5, $s5, 2
	slli.d	$s4, $s4, 2
	slli.d	$s3, $s3, 2
	slli.d	$s2, $s2, 2
	slli.d	$s1, $s1, 2
	slli.d	$s0, $s0, 2
	slli.d	$fp, $fp, 2
	slli.d	$t8, $t8, 2
	ldx.w	$t7, $a6, $t7
	ldx.w	$t6, $a6, $t6
	ldx.w	$t5, $a6, $t5
	ldx.w	$t4, $a6, $t4
	ldx.w	$t3, $a6, $t3
	ldx.w	$t2, $a6, $t2
	ldx.w	$t1, $a6, $t1
	ldx.w	$t0, $a6, $t0
	xvinsgr2vr.w	$xr6, $t7, 0
	xvinsgr2vr.w	$xr6, $t6, 1
	xvinsgr2vr.w	$xr6, $t5, 2
	xvinsgr2vr.w	$xr6, $t4, 3
	xvinsgr2vr.w	$xr6, $t3, 4
	xvinsgr2vr.w	$xr6, $t2, 5
	xvinsgr2vr.w	$xr6, $t1, 6
	xvinsgr2vr.w	$xr6, $t0, 7
	ldx.w	$t0, $a6, $s5
	ldx.w	$t1, $a6, $s4
	ldx.w	$t2, $a6, $s3
	ldx.w	$t3, $a6, $s2
	ldx.w	$t4, $a6, $s1
	ldx.w	$t5, $a6, $s0
	ldx.w	$t6, $a6, $fp
	ldx.w	$t7, $a6, $t8
	xvinsgr2vr.w	$xr7, $t0, 0
	xvinsgr2vr.w	$xr7, $t1, 1
	xvinsgr2vr.w	$xr7, $t2, 2
	xvinsgr2vr.w	$xr7, $t3, 3
	xvinsgr2vr.w	$xr7, $t4, 4
	xvinsgr2vr.w	$xr7, $t5, 5
	xvinsgr2vr.w	$xr7, $t6, 6
	xvinsgr2vr.w	$xr7, $t7, 7
	xvadd.w	$xr1, $xr4, $xr1
	xvadd.w	$xr3, $xr5, $xr3
	xvadd.w	$xr1, $xr1, $xr6
	xvadd.w	$xr3, $xr3, $xr7
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB1_5
# %bb.6:                                # %middle.block
	xvadd.w	$xr1, $xr3, $xr1
	xvhaddw.d.w	$xr1, $xr1, $xr1
	xvhaddw.q.d	$xr1, $xr1, $xr1
	xvpermi.d	$xr2, $xr1, 2
	xvadd.d	$xr1, $xr2, $xr1
	xvpickve2gr.d	$a5, $xr1, 0
	beq	$a4, $a1, .LBB1_10
# %bb.7:
	xvpickve2gr.w	$a6, $xr0, 7
.LBB1_8:                                # %scalar.ph.preheader
	alsl.d	$a2, $a4, $a2, 2
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 8
	sub.d	$a1, $a1, $a4
	lu12i.w	$a3, -16
	lu32i.d	$a3, 0
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	.p2align	4, , 16
.LBB1_9:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 0
	or	$a7, $a7, $a6
	ld.wu	$a6, $a2, -4
	srli.d	$t0, $a6, 1
	or	$a7, $a7, $a6
	slli.d	$t1, $a7, 1
	slli.d	$t2, $a6, 2
	or	$t0, $t0, $t2
	or	$t0, $t0, $t1
	or	$t1, $a7, $t0
	andn	$t1, $a3, $t1
	nor	$a7, $a7, $t0
	bstrpick.d	$a7, $a7, 15, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a4, $a7
	srli.d	$t0, $t1, 14
	ldx.w	$t0, $a4, $t0
	add.d	$a5, $a7, $a5
	add.d	$a5, $a5, $t0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_9
.LBB1_10:                               # %._crit_edge
	addi.w	$a1, $a5, 0
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB1_12
.LBB1_11:                               # %._crit_edge.thread
	addi.w	$a0, $a5, 0
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
.LBB1_12:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(print_board)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	addi.w	$a2, $zero, -1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	tr_non_safe_moves_a_little_touchy, .Lfunc_end1-tr_non_safe_moves_a_little_touchy
                                        # -- End function
	.type	trait_file,@object              # @trait_file
	.local	trait_file
	.comm	trait_file,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"trait_file"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Couldn't open \"trait_file\".\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%c %15s :"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" %2d"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %2d :"
	.size	.L.str.5, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d %d\n"
	.size	.L.str.7, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
