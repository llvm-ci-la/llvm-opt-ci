	.file	"traits.c"
	.text
	.globl	write_node_info                 # -- Begin function write_node_info
	.p2align	5
	.type	write_node_info,@function
write_node_info:                        # @write_node_info
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
	beqz	$s0, .LBB0_51
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
	ld.d	$s4, $a0, %got_pc_lo12(g_board_size)
	slli.d	$a0, $fp, 2
	ldx.w	$a0, $s4, $a0
	slli.d	$s3, $fp, 7
	blez	$a0, .LBB0_5
# %bb.3:                                # %.lr.ph.i
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	ldx.w	$a3, $a1, $s3
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB0_6
# %bb.4:
	move	$a2, $zero
	move	$a4, $zero
	b	.LBB0_10
.LBB0_5:
	move	$a4, $zero
	b	.LBB0_12
.LBB0_6:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	vinsgr2vr.w	$vr0, $a3, 3
	add.d	$a3, $s3, $a1
	addi.d	$a3, $a3, 24
	vrepli.b	$vr1, 0
	vrepli.b	$vr2, -1
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	vreplgr2vr.w	$vr3, $a4
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	move	$a5, $a2
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $a3, -16
	vld	$vr6, $a3, -20
	vld	$vr7, $a3, 0
	vbsrl.v	$vr8, $vr0, 12
	vld	$vr0, $a3, -4
	vbsll.v	$vr9, $vr6, 4
	vor.v	$vr8, $vr9, $vr8
	vbsrl.v	$vr9, $vr6, 12
	vbsll.v	$vr10, $vr0, 4
	vor.v	$vr9, $vr10, $vr9
	vand.v	$vr5, $vr5, $vr8
	vand.v	$vr7, $vr7, $vr9
	vxor.v	$vr8, $vr6, $vr2
	vxor.v	$vr9, $vr0, $vr2
	vsrli.w	$vr10, $vr5, 1
	vsrli.w	$vr11, $vr7, 1
	vand.v	$vr5, $vr10, $vr5
	vand.v	$vr7, $vr11, $vr7
	vsrli.w	$vr8, $vr8, 1
	vsrli.w	$vr9, $vr9, 1
	vor.v	$vr5, $vr5, $vr6
	vor.v	$vr6, $vr7, $vr0
	vandn.v	$vr5, $vr5, $vr8
	vandn.v	$vr6, $vr6, $vr9
	vand.v	$vr7, $vr5, $vr3
	vand.v	$vr8, $vr6, $vr3
	vshuf4i.w	$vr9, $vr7, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vshuf4i.w	$vr10, $vr8, 14
	vsllwil.du.wu	$vr10, $vr10, 0
	vsllwil.du.wu	$vr8, $vr8, 0
	vpickve2gr.d	$a6, $vr7, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr7, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr9, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr9, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr8, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr8, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr10, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr10, 1
	slli.d	$t5, $t5, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	vinsgr2vr.w	$vr7, $a6, 0
	vinsgr2vr.w	$vr7, $a7, 1
	vinsgr2vr.w	$vr7, $t0, 2
	vinsgr2vr.w	$vr7, $t1, 3
	ldx.w	$a6, $a4, $t2
	ldx.w	$a7, $a4, $t3
	ldx.w	$t0, $a4, $t4
	ldx.w	$t1, $a4, $t5
	vinsgr2vr.w	$vr8, $a6, 0
	vinsgr2vr.w	$vr8, $a7, 1
	vinsgr2vr.w	$vr8, $t0, 2
	vinsgr2vr.w	$vr8, $t1, 3
	vsrli.w	$vr5, $vr5, 16
	vsrli.w	$vr6, $vr6, 16
	vshuf4i.w	$vr9, $vr5, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vshuf4i.w	$vr10, $vr6, 14
	vsllwil.du.wu	$vr10, $vr10, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vpickve2gr.d	$a6, $vr5, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr5, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr9, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr9, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr6, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr6, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr10, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr10, 1
	slli.d	$t5, $t5, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	vinsgr2vr.w	$vr5, $a6, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $t0, 2
	vinsgr2vr.w	$vr5, $t1, 3
	ldx.w	$a6, $a4, $t2
	ldx.w	$a7, $a4, $t3
	ldx.w	$t0, $a4, $t4
	ldx.w	$t1, $a4, $t5
	vinsgr2vr.w	$vr6, $a6, 0
	vinsgr2vr.w	$vr6, $a7, 1
	vinsgr2vr.w	$vr6, $t0, 2
	vinsgr2vr.w	$vr6, $t1, 3
	vadd.w	$vr1, $vr7, $vr1
	vadd.w	$vr4, $vr8, $vr4
	vadd.w	$vr1, $vr1, $vr5
	vadd.w	$vr4, $vr4, $vr6
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB0_7
# %bb.8:                                # %middle.block
	vadd.w	$vr1, $vr4, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$a4, $vr1, 0
	beq	$a2, $a0, .LBB0_12
# %bb.9:
	vpickve2gr.w	$a3, $vr0, 3
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
	ldx.w	$a0, $s4, $a0
	blez	$a0, .LBB0_15
# %bb.13:                               # %.lr.ph.i20
	slli.d	$a1, $s0, 7
	pcalau12i	$a2, %got_pc_hi20(g_board)
	ld.d	$a2, $a2, %got_pc_lo12(g_board)
	ldx.w	$a5, $a2, $a1
	ori	$a3, $zero, 8
	bgeu	$a0, $a3, .LBB0_16
# %bb.14:
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB0_20
.LBB0_15:
	move	$a4, $zero
	b	.LBB0_22
.LBB0_16:                               # %vector.ph72
	bstrpick.d	$a3, $a0, 30, 3
	slli.d	$a3, $a3, 3
	vinsgr2vr.w	$vr0, $a5, 3
	add.d	$a4, $a1, $a2
	addi.d	$a4, $a4, 24
	vrepli.b	$vr1, 0
	vrepli.b	$vr2, -1
	lu12i.w	$a5, 15
	ori	$a5, $a5, 4095
	vreplgr2vr.w	$vr3, $a5
	pcalau12i	$a5, %got_pc_hi20(countbits16)
	ld.d	$a5, $a5, %got_pc_lo12(countbits16)
	move	$a6, $a3
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB0_17:                               # %vector.body75
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $a4, -16
	vld	$vr6, $a4, -20
	vld	$vr7, $a4, 0
	vbsrl.v	$vr8, $vr0, 12
	vld	$vr0, $a4, -4
	vbsll.v	$vr9, $vr6, 4
	vor.v	$vr8, $vr9, $vr8
	vbsrl.v	$vr9, $vr6, 12
	vbsll.v	$vr10, $vr0, 4
	vor.v	$vr9, $vr10, $vr9
	vand.v	$vr5, $vr5, $vr8
	vand.v	$vr7, $vr7, $vr9
	vxor.v	$vr8, $vr6, $vr2
	vxor.v	$vr9, $vr0, $vr2
	vsrli.w	$vr10, $vr5, 1
	vsrli.w	$vr11, $vr7, 1
	vand.v	$vr5, $vr10, $vr5
	vand.v	$vr7, $vr11, $vr7
	vsrli.w	$vr8, $vr8, 1
	vsrli.w	$vr9, $vr9, 1
	vor.v	$vr5, $vr5, $vr6
	vor.v	$vr6, $vr7, $vr0
	vandn.v	$vr5, $vr5, $vr8
	vandn.v	$vr6, $vr6, $vr9
	vand.v	$vr7, $vr5, $vr3
	vand.v	$vr8, $vr6, $vr3
	vshuf4i.w	$vr9, $vr7, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vshuf4i.w	$vr10, $vr8, 14
	vsllwil.du.wu	$vr10, $vr10, 0
	vsllwil.du.wu	$vr8, $vr8, 0
	vpickve2gr.d	$a7, $vr7, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr7, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr9, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr9, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr8, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr8, 1
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr10, 0
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr10, 1
	slli.d	$t6, $t6, 2
	ldx.w	$a7, $a5, $a7
	ldx.w	$t0, $a5, $t0
	ldx.w	$t1, $a5, $t1
	ldx.w	$t2, $a5, $t2
	vinsgr2vr.w	$vr7, $a7, 0
	vinsgr2vr.w	$vr7, $t0, 1
	vinsgr2vr.w	$vr7, $t1, 2
	vinsgr2vr.w	$vr7, $t2, 3
	ldx.w	$a7, $a5, $t3
	ldx.w	$t0, $a5, $t4
	ldx.w	$t1, $a5, $t5
	ldx.w	$t2, $a5, $t6
	vinsgr2vr.w	$vr8, $a7, 0
	vinsgr2vr.w	$vr8, $t0, 1
	vinsgr2vr.w	$vr8, $t1, 2
	vinsgr2vr.w	$vr8, $t2, 3
	vsrli.w	$vr5, $vr5, 16
	vsrli.w	$vr6, $vr6, 16
	vshuf4i.w	$vr9, $vr5, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vshuf4i.w	$vr10, $vr6, 14
	vsllwil.du.wu	$vr10, $vr10, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vpickve2gr.d	$a7, $vr5, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr5, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr9, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr9, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr6, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr6, 1
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr10, 0
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr10, 1
	slli.d	$t6, $t6, 2
	ldx.w	$a7, $a5, $a7
	ldx.w	$t0, $a5, $t0
	ldx.w	$t1, $a5, $t1
	ldx.w	$t2, $a5, $t2
	vinsgr2vr.w	$vr5, $a7, 0
	vinsgr2vr.w	$vr5, $t0, 1
	vinsgr2vr.w	$vr5, $t1, 2
	vinsgr2vr.w	$vr5, $t2, 3
	ldx.w	$a7, $a5, $t3
	ldx.w	$t0, $a5, $t4
	ldx.w	$t1, $a5, $t5
	ldx.w	$t2, $a5, $t6
	vinsgr2vr.w	$vr6, $a7, 0
	vinsgr2vr.w	$vr6, $t0, 1
	vinsgr2vr.w	$vr6, $t1, 2
	vinsgr2vr.w	$vr6, $t2, 3
	vadd.w	$vr1, $vr7, $vr1
	vadd.w	$vr4, $vr8, $vr4
	vadd.w	$vr1, $vr1, $vr5
	vadd.w	$vr4, $vr4, $vr6
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB0_17
# %bb.18:                               # %middle.block86
	vadd.w	$vr1, $vr4, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$a4, $vr1, 0
	beq	$a3, $a0, .LBB0_22
# %bb.19:
	vpickve2gr.w	$a5, $vr0, 3
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
	alsl.d	$s5, $fp, $s4, 2
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
	ld.w	$a0, $s4, 0
	blez	$a0, .LBB0_25
# %bb.23:                               # %.lr.ph.preheader.i
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB0_26
# %bb.24:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_29
.LBB0_25:
	move	$a2, $zero
	b	.LBB0_31
.LBB0_26:                               # %vector.ph95
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	addi.d	$a2, $a1, 20
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	lu12i.w	$a3, 15
	ori	$a3, $a3, 4095
	vreplgr2vr.w	$vr2, $a3
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	move	$a4, $a1
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB0_27:                               # %vector.body98
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a2, -16
	vld	$vr5, $a2, 0
	vxor.v	$vr6, $vr4, $vr1
	vxor.v	$vr7, $vr5, $vr1
	vandn.v	$vr4, $vr4, $vr2
	vandn.v	$vr5, $vr5, $vr2
	vshuf4i.w	$vr8, $vr4, 14
	vsllwil.du.wu	$vr8, $vr8, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vshuf4i.w	$vr9, $vr5, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vpickve2gr.d	$a5, $vr4, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr4, 1
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr8, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr8, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr5, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr5, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr9, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr9, 1
	slli.d	$t4, $t4, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ldx.w	$a5, $a3, $t1
	ldx.w	$a6, $a3, $t2
	ldx.w	$a7, $a3, $t3
	ldx.w	$t0, $a3, $t4
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	vsrli.w	$vr6, $vr6, 16
	vsrli.w	$vr7, $vr7, 16
	vshuf4i.w	$vr8, $vr6, 14
	vsllwil.du.wu	$vr8, $vr8, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vshuf4i.w	$vr9, $vr7, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vpickve2gr.d	$a5, $vr6, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr6, 1
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr8, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr8, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr7, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr7, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr9, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr9, 1
	slli.d	$t4, $t4, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	ldx.w	$a5, $a3, $t1
	ldx.w	$a6, $a3, $t2
	ldx.w	$a7, $a3, $t3
	ldx.w	$t0, $a3, $t4
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.w	$vr7, $a7, 2
	vinsgr2vr.w	$vr7, $t0, 3
	vadd.w	$vr0, $vr4, $vr0
	vadd.w	$vr3, $vr5, $vr3
	vadd.w	$vr0, $vr0, $vr6
	vadd.w	$vr3, $vr3, $vr7
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB0_27
# %bb.28:                               # %middle.block105
	vadd.w	$vr0, $vr3, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_31
.LBB0_29:                               # %.lr.ph.i29.preheader
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
.LBB0_30:                               # %.lr.ph.i29
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
	bnez	$a0, .LBB0_30
.LBB0_31:                               # %tr_total_empty_squares.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	addi.w	$a2, $a2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 0
	bltz	$a2, .LBB0_34
# %bb.32:                               # %.lr.ph.i33
	pcalau12i	$a0, %got_pc_hi20(g_board)
	ld.d	$a0, $a0, %got_pc_lo12(g_board)
	ldx.w	$a4, $a0, $s3
	addi.d	$a1, $a2, 1
	ori	$a3, $zero, 7
	bstrpick.d	$a1, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_35
# %bb.33:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB0_39
.LBB0_34:
	move	$a3, $zero
	b	.LBB0_41
.LBB0_35:                               # %vector.ph112
	bstrpick.d	$a2, $a1, 31, 3
	slli.d	$a2, $a2, 3
	vinsgr2vr.w	$vr0, $a4, 3
	add.d	$a3, $s3, $a0
	addi.d	$a3, $a3, 20
	vrepli.b	$vr1, 0
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	vreplgr2vr.w	$vr2, $a4
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	move	$a5, $a2
	vori.b	$vr3, $vr1, 0
	.p2align	4, , 16
.LBB0_36:                               # %vector.body115
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a3, -16
	vbsrl.v	$vr5, $vr0, 12
	vld	$vr0, $a3, 0
	vbsll.v	$vr6, $vr4, 4
	vor.v	$vr5, $vr6, $vr5
	vbsrl.v	$vr6, $vr4, 12
	vbsll.v	$vr7, $vr0, 4
	vor.v	$vr6, $vr7, $vr6
	vxor.v	$vr4, $vr4, $vr5
	vxor.v	$vr5, $vr0, $vr6
	vand.v	$vr6, $vr4, $vr2
	vand.v	$vr7, $vr5, $vr2
	vshuf4i.w	$vr8, $vr6, 14
	vsllwil.du.wu	$vr8, $vr8, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vshuf4i.w	$vr9, $vr7, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vpickve2gr.d	$a6, $vr6, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr6, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr8, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr8, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr7, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr7, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr9, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr9, 1
	slli.d	$t5, $t5, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	vinsgr2vr.w	$vr6, $a6, 0
	vinsgr2vr.w	$vr6, $a7, 1
	vinsgr2vr.w	$vr6, $t0, 2
	vinsgr2vr.w	$vr6, $t1, 3
	ldx.w	$a6, $a4, $t2
	ldx.w	$a7, $a4, $t3
	ldx.w	$t0, $a4, $t4
	ldx.w	$t1, $a4, $t5
	vinsgr2vr.w	$vr7, $a6, 0
	vinsgr2vr.w	$vr7, $a7, 1
	vinsgr2vr.w	$vr7, $t0, 2
	vinsgr2vr.w	$vr7, $t1, 3
	vsrli.w	$vr4, $vr4, 16
	vsrli.w	$vr5, $vr5, 16
	vshuf4i.w	$vr8, $vr4, 14
	vsllwil.du.wu	$vr8, $vr8, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vshuf4i.w	$vr9, $vr5, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vpickve2gr.d	$a6, $vr4, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr4, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr8, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr8, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr5, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr5, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr9, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr9, 1
	slli.d	$t5, $t5, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $t0, 2
	vinsgr2vr.w	$vr4, $t1, 3
	ldx.w	$a6, $a4, $t2
	ldx.w	$a7, $a4, $t3
	ldx.w	$t0, $a4, $t4
	ldx.w	$t1, $a4, $t5
	vinsgr2vr.w	$vr5, $a6, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $t0, 2
	vinsgr2vr.w	$vr5, $t1, 3
	vadd.w	$vr1, $vr6, $vr1
	vadd.w	$vr3, $vr7, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB0_36
# %bb.37:                               # %middle.block124
	vadd.w	$vr1, $vr3, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$a3, $vr1, 0
	beq	$a2, $a1, .LBB0_41
# %bb.38:
	vpickve2gr.w	$a4, $vr0, 3
.LBB0_39:                               # %scalar.ph110.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a2, $s3, 2
	add.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 4
	lu12i.w	$a2, -16
	lu32i.d	$a2, 0
	pcalau12i	$a5, %got_pc_hi20(countbits16)
	ld.d	$a5, $a5, %got_pc_lo12(countbits16)
	.p2align	4, , 16
.LBB0_40:                               # %scalar.ph110
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
	bnez	$a1, .LBB0_40
.LBB0_41:                               # %tr_border_length_col.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	addi.w	$a2, $a3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	bltz	$a1, .LBB0_44
# %bb.42:                               # %.lr.ph.i39
	addi.d	$a0, $a1, 1
	ori	$a2, $zero, 7
	bstrpick.d	$a0, $a0, 31, 0
	bgeu	$a1, $a2, .LBB0_45
# %bb.43:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_48
.LBB0_44:
	move	$a2, $zero
	b	.LBB0_50
.LBB0_45:                               # %vector.ph133
	bstrpick.d	$a1, $a0, 31, 3
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(g_board)
	ld.d	$a2, $a2, %got_pc_lo12(g_board)
	add.d	$a2, $s3, $a2
	addi.d	$a2, $a2, 20
	vrepli.b	$vr0, 0
	lu12i.w	$a3, 15
	ori	$a3, $a3, 4095
	vreplgr2vr.w	$vr1, $a3
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	move	$a4, $a1
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_46:                               # %vector.body136
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a2, -16
	vld	$vr4, $a2, 0
	vsrli.w	$vr5, $vr3, 1
	vsrli.w	$vr6, $vr4, 1
	vbitclri.w	$vr3, $vr3, 31
	vbitclri.w	$vr4, $vr4, 31
	vxor.v	$vr3, $vr5, $vr3
	vxor.v	$vr4, $vr6, $vr4
	vand.v	$vr5, $vr3, $vr1
	vand.v	$vr6, $vr4, $vr1
	vshuf4i.w	$vr7, $vr5, 14
	vsllwil.du.wu	$vr7, $vr7, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vshuf4i.w	$vr8, $vr6, 14
	vsllwil.du.wu	$vr8, $vr8, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vpickve2gr.d	$a5, $vr5, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr5, 1
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr7, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr7, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr6, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr6, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr8, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr8, 1
	slli.d	$t4, $t4, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	ldx.w	$a5, $a3, $t1
	ldx.w	$a6, $a3, $t2
	ldx.w	$a7, $a3, $t3
	ldx.w	$t0, $a3, $t4
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	vsrli.w	$vr3, $vr3, 16
	vsrli.w	$vr4, $vr4, 16
	vshuf4i.w	$vr7, $vr3, 14
	vsllwil.du.wu	$vr7, $vr7, 0
	vsllwil.du.wu	$vr3, $vr3, 0
	vshuf4i.w	$vr8, $vr4, 14
	vsllwil.du.wu	$vr8, $vr8, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vpickve2gr.d	$a5, $vr3, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr3, 1
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr7, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr7, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr4, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr4, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr8, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr8, 1
	slli.d	$t4, $t4, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	ldx.w	$a5, $a3, $t1
	ldx.w	$a6, $a3, $t2
	ldx.w	$a7, $a3, $t3
	ldx.w	$t0, $a3, $t4
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	vadd.w	$vr0, $vr5, $vr0
	vadd.w	$vr2, $vr6, $vr2
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB0_46
# %bb.47:                               # %middle.block143
	vadd.w	$vr0, $vr2, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_50
.LBB0_48:                               # %scalar.ph131.preheader
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
.LBB0_49:                               # %scalar.ph131
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
	bnez	$a0, .LBB0_49
.LBB0_50:                               # %tr_border_length_row.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	addi.w	$a2, $a2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	ori	$a0, $zero, 10
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB0_51:
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
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
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
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB1_4
# %bb.2:
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB1_8
.LBB1_3:
	move	$a5, $zero
	b	.LBB1_11
.LBB1_4:                                # %vector.ph
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	vinsgr2vr.w	$vr0, $a6, 3
	add.d	$a5, $a2, $a3
	addi.d	$a5, $a5, 24
	vrepli.b	$vr1, 0
	lu12i.w	$a6, 15
	ori	$a6, $a6, 4095
	vreplgr2vr.w	$vr2, $a6
	pcalau12i	$a6, %got_pc_hi20(countbits16)
	ld.d	$a6, $a6, %got_pc_lo12(countbits16)
	move	$a7, $a4
	vori.b	$vr3, $vr1, 0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a5, -16
	vld	$vr5, $a5, -20
	vld	$vr6, $a5, 0
	vbsrl.v	$vr7, $vr0, 12
	vld	$vr0, $a5, -4
	vbsll.v	$vr8, $vr5, 4
	vor.v	$vr7, $vr8, $vr7
	vbsrl.v	$vr8, $vr5, 12
	vbsll.v	$vr9, $vr0, 4
	vor.v	$vr8, $vr9, $vr8
	vor.v	$vr4, $vr4, $vr7
	vor.v	$vr6, $vr6, $vr8
	vsrli.w	$vr7, $vr5, 1
	vsrli.w	$vr8, $vr0, 1
	vor.v	$vr4, $vr4, $vr5
	vor.v	$vr6, $vr6, $vr0
	vslli.w	$vr9, $vr4, 1
	vslli.w	$vr10, $vr6, 1
	vslli.w	$vr5, $vr5, 2
	vslli.w	$vr11, $vr0, 2
	vor.v	$vr5, $vr7, $vr5
	vor.v	$vr7, $vr8, $vr11
	vor.v	$vr5, $vr5, $vr9
	vor.v	$vr7, $vr7, $vr10
	vor.v	$vr8, $vr4, $vr5
	vor.v	$vr9, $vr6, $vr7
	vnor.v	$vr4, $vr4, $vr5
	vnor.v	$vr5, $vr6, $vr7
	vandn.v	$vr6, $vr8, $vr2
	vandn.v	$vr7, $vr9, $vr2
	vshuf4i.w	$vr8, $vr6, 14
	vsllwil.du.wu	$vr8, $vr8, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vshuf4i.w	$vr9, $vr7, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vpickve2gr.d	$t0, $vr6, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr6, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr8, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr8, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr7, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr7, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr9, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$t7, $vr9, 1
	slli.d	$t7, $t7, 2
	ldx.w	$t0, $a6, $t0
	ldx.w	$t1, $a6, $t1
	ldx.w	$t2, $a6, $t2
	ldx.w	$t3, $a6, $t3
	vinsgr2vr.w	$vr6, $t0, 0
	vinsgr2vr.w	$vr6, $t1, 1
	vinsgr2vr.w	$vr6, $t2, 2
	vinsgr2vr.w	$vr6, $t3, 3
	ldx.w	$t0, $a6, $t4
	ldx.w	$t1, $a6, $t5
	ldx.w	$t2, $a6, $t6
	ldx.w	$t3, $a6, $t7
	vinsgr2vr.w	$vr7, $t0, 0
	vinsgr2vr.w	$vr7, $t1, 1
	vinsgr2vr.w	$vr7, $t2, 2
	vinsgr2vr.w	$vr7, $t3, 3
	vsrli.w	$vr4, $vr4, 16
	vsrli.w	$vr5, $vr5, 16
	vshuf4i.w	$vr8, $vr4, 14
	vsllwil.du.wu	$vr8, $vr8, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vshuf4i.w	$vr9, $vr5, 14
	vsllwil.du.wu	$vr9, $vr9, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vpickve2gr.d	$t0, $vr4, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr4, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr8, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr8, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr5, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr5, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr9, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$t7, $vr9, 1
	slli.d	$t7, $t7, 2
	ldx.w	$t0, $a6, $t0
	ldx.w	$t1, $a6, $t1
	ldx.w	$t2, $a6, $t2
	ldx.w	$t3, $a6, $t3
	vinsgr2vr.w	$vr4, $t0, 0
	vinsgr2vr.w	$vr4, $t1, 1
	vinsgr2vr.w	$vr4, $t2, 2
	vinsgr2vr.w	$vr4, $t3, 3
	ldx.w	$t0, $a6, $t4
	ldx.w	$t1, $a6, $t5
	ldx.w	$t2, $a6, $t6
	ldx.w	$t3, $a6, $t7
	vinsgr2vr.w	$vr5, $t0, 0
	vinsgr2vr.w	$vr5, $t1, 1
	vinsgr2vr.w	$vr5, $t2, 2
	vinsgr2vr.w	$vr5, $t3, 3
	vadd.w	$vr1, $vr6, $vr1
	vadd.w	$vr3, $vr7, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB1_5
# %bb.6:                                # %middle.block
	vadd.w	$vr1, $vr3, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$a5, $vr1, 0
	beq	$a4, $a1, .LBB1_10
# %bb.7:
	vpickve2gr.w	$a6, $vr0, 3
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
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
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
