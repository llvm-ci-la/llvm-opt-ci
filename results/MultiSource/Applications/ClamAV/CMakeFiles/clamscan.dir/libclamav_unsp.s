	.file	"libclamav_unsp.c"
	.text
	.globl	unspack                         # -- Begin function unspack
	.p2align	5
	.type	unspack,@function
unspack:                                # @unspack
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
	ld.bu	$s6, $a0, 0
	ori	$t0, $zero, 224
	ori	$a7, $zero, 1
	bltu	$t0, $s6, .LBB0_17
# %bb.1:
	ori	$t0, $zero, 45
	bltu	$s6, $t0, .LBB0_3
# %bb.2:                                # %.loopexit64.loopexit
	ori	$t0, $zero, 109
	mul.d	$t0, $s6, $t0
	srli.d	$t0, $t0, 8
	sub.d	$t1, $s6, $t0
	bstrpick.d	$t1, $t1, 7, 1
	add.d	$t0, $t1, $t0
	srli.d	$s7, $t0, 5
	addi.d	$t0, $zero, -45
	mul.d	$t0, $s7, $t0
	add.d	$s6, $t0, $s6
	b	.LBB0_4
.LBB0_3:
	move	$s7, $zero
.LBB0_4:                                # %.loopexit64
	andi	$t0, $s6, 255
	ori	$t1, $zero, 9
	bltu	$t0, $t1, .LBB0_6
# %bb.5:                                # %.loopexit.loopexit
	ori	$t1, $zero, 57
	mul.d	$t0, $t0, $t1
	srli.d	$fp, $t0, 9
	alsl.d	$t0, $fp, $fp, 3
	sub.d	$s6, $s6, $t0
	b	.LBB0_7
.LBB0_6:
	move	$fp, $zero
.LBB0_7:                                # %.loopexit
	add.d	$t0, $s6, $fp
	ld.d	$a2, $a2, 32
	ori	$t1, $zero, 1536
	sll.w	$t0, $t1, $t0
	addi.d	$t0, $t0, 2047
	addi.w	$s4, $t0, 1645
	beqz	$a2, .LBB0_10
# %bb.8:
	ld.d	$a2, $a2, 24
	bstrpick.d	$s5, $s4, 31, 0
	beqz	$a2, .LBB0_11
# %bb.9:
	bltu	$a2, $s5, .LBB0_17
	b	.LBB0_11
.LBB0_10:                               # %.loopexit._crit_edge
	bstrpick.d	$s5, $s4, 31, 0
.LBB0_11:
	move	$s0, $a0
	move	$s8, $a3
	move	$s3, $a1
	move	$s2, $a4
	move	$s1, $a5
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_14
# %bb.12:
	ld.w	$a6, $s0, 5
	ori	$a2, $zero, 13
	bltu	$a2, $a6, .LBB0_15
# %bb.13:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_14:
	ori	$a7, $zero, 1
	b	.LBB0_17
.LBB0_15:
	move	$a1, $s0
	ld.w	$s0, $s0, 9
	addi.d	$a5, $a1, 13
	andi	$a2, $s6, 255
	addi.w	$a4, $s7, 0
	st.d	$s0, $sp, 0
	move	$s5, $a0
	move	$a1, $s4
	move	$a3, $fp
	move	$a7, $s3
	pcaddu18i	$ra, %call36(very_real_unpack)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	bnez	$fp, .LBB0_17
# %bb.16:
	st.w	$zero, $sp, 44
	st.w	$s0, $sp, 48
	st.w	$s0, $sp, 40
	st.w	$s8, $sp, 36
	addi.d	$a1, $sp, 36
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $s2
	move	$a4, $s1
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	sltui	$a7, $a0, 1
.LBB0_17:
	move	$a0, $a7
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
.Lfunc_end0:
	.size	unspack, .Lfunc_end0-unspack
                                        # -- End function
	.globl	very_real_unpack                # -- Begin function very_real_unpack
	.p2align	5
	.type	very_real_unpack,@function
very_real_unpack:                       # @very_real_unpack
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
	move	$fp, $a7
	move	$s0, $a0
	add.d	$a0, $a3, $a2
	ori	$a7, $zero, 768
	sll.w	$a7, $a7, $a0
	addi.d	$a0, $a7, 1846
	bstrpick.d	$t0, $a1, 31, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$t1, $a0, 1
	ori	$a0, $zero, 2
	bltu	$t0, $t1, .LBB1_281
# %bb.1:                                # %vector.ph
	move	$a0, $zero
	ld.d	$s1, $sp, 240
	addi.w	$s4, $zero, -1
	sll.w	$a3, $s4, $a3
	nor	$t1, $a3, $zero
	sll.w	$a3, $s4, $a4
	nor	$s3, $a3, $zero
	bstrpick.d	$a3, $a7, 31, 0
	ori	$a4, $zero, 3680
	alsl.d	$a3, $a3, $a4, 1
	add.d	$a4, $s0, $a3
	ori	$a7, $zero, 1024
	vreplgr2vr.h	$vr0, $a7
	.p2align	4, , 16
.LBB1_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a4, $a0
	vst	$vr0, $a7, -4
	addi.d	$a0, $a0, -32
	add.d	$t0, $a3, $a0
	vst	$vr0, $a7, -20
	bnez	$t0, .LBB1_2
# %bb.3:                                # %vec.epilog.vector.body
	lu12i.w	$a0, 16384
	ori	$a0, $a0, 1024
	st.w	$a0, $s0, 0
	bstrins.d	$a0, $a0, 58, 32
	st.d	$a0, $s0, 4
	st.w	$zero, $sp, 128
	st.d	$a5, $sp, 104
	lu32i.d	$s4, 0
	st.w	$s4, $sp, 120
	bstrpick.d	$a0, $a6, 31, 0
	add.d	$a0, $a5, $a0
	addi.d	$a3, $a0, -13
	st.d	$a3, $sp, 112
	st.d	$s0, $sp, 136
	ori	$a4, $zero, 13
	st.w	$a1, $sp, 144
	bgeu	$a4, $a6, .LBB1_6
# %bb.4:
	ld.bu	$a0, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	slli.d	$a0, $a0, 8
	bltu	$a5, $a3, .LBB1_7
.LBB1_5:
	move	$a1, $zero
	ori	$a4, $zero, 1
	st.w	$a4, $sp, 128
	ori	$a7, $zero, 255
	b	.LBB1_8
.LBB1_6:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 128
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3840
	bgeu	$a5, $a3, .LBB1_5
.LBB1_7:
	ld.bu	$a7, $a5, 0
	sltu	$a1, $a4, $a6
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
.LBB1_8:                                # %get_byte.exit.1
	or	$a0, $a7, $a0
	st.w	$a0, $sp, 124
	slli.d	$a0, $a0, 8
	bgeu	$a5, $a3, .LBB1_10
# %bb.9:
	ld.bu	$a4, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	b	.LBB1_11
.LBB1_10:
	move	$a1, $zero
	ori	$a4, $zero, 1
	st.w	$a4, $sp, 128
	ori	$a4, $zero, 255
.LBB1_11:                               # %get_byte.exit.2
	or	$a0, $a4, $a0
	st.w	$a0, $sp, 124
	slli.d	$a0, $a0, 8
	bgeu	$a5, $a3, .LBB1_13
# %bb.12:
	ld.bu	$a4, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	b	.LBB1_14
.LBB1_13:
	move	$a1, $zero
	ori	$a4, $zero, 1
	st.w	$a4, $sp, 128
	ori	$a4, $zero, 255
.LBB1_14:                               # %get_byte.exit.3
	or	$a4, $a4, $a0
	st.w	$a4, $sp, 124
	ori	$a0, $zero, 1
	bgeu	$a5, $a3, .LBB1_281
# %bb.15:                               # %get_byte.exit.4
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	ld.bu	$a3, $a5, 0
	slli.d	$a4, $a4, 8
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	or	$a3, $a4, $a3
	st.w	$a3, $sp, 124
	beqz	$a1, .LBB1_281
# %bb.16:                               # %.lr.ph
	move	$a5, $zero
	move	$a7, $zero
	move	$t7, $zero
	move	$s5, $zero
	move	$t0, $zero
	addi.d	$a0, $s0, 2047
	addi.d	$a0, $a0, 617
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 1636
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 1604
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	andi	$a0, $a2, 255
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	sub.d	$a0, $a0, $a2
	andi	$a0, $a0, 255
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s1, 31, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$t8, $zero, 1
	ori	$s2, $zero, 2
	ori	$s7, $zero, 2048
	ori	$s6, $zero, 128
	ori	$ra, $zero, 127
	ori	$t6, $zero, 256
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$t2, $zero, 1
	ori	$t4, $zero, 1
	ori	$t3, $zero, 1
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_172 Depth 2
                                        #     Child Loop BB1_213 Depth 2
                                        #     Child Loop BB1_223 Depth 2
                                        #     Child Loop BB1_193 Depth 2
                                        #     Child Loop BB1_107 Depth 2
                                        #       Child Loop BB1_128 Depth 3
                                        #     Child Loop BB1_148 Depth 2
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_30 Depth 2
	ld.wu	$a0, $sp, 144
	bgeu	$a0, $s2, .LBB1_35
.LBB1_18:                               # %.thread513
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	st.w	$t8, $sp, 128
.LBB1_19:                               # %getbit_from_table.exit390
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$s8, $t4
	move	$s7, $t2
.LBB1_20:                               # %getbit_from_table.exit390
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a2, $a5, 0
	addi.d	$a1, $sp, 104
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(get_n_bits_from_tablesize)
	jirl	$ra, $ra, 0
	slti	$a1, $s0, 7
	ori	$a2, $zero, 11
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 8
	maskeqz	$a1, $a3, $a1
	or	$t7, $a1, $a2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$t2, $s8
	move	$s8, $s7
	move	$t3, $s3
	move	$t4, $s2
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ori	$s7, $zero, 2048
	move	$t1, $s6
.LBB1_21:                               #   in Loop: Header=BB1_17 Depth=1
	beqz	$a1, .LBB1_280
# %bb.22:                               #   in Loop: Header=BB1_17 Depth=1
	bltu	$s5, $a1, .LBB1_279
# %bb.23:                               #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a4, $a0, 2
	bstrpick.d	$a2, $s5, 31, 0
	beqz	$s1, .LBB1_278
# %bb.24:                               #   in Loop: Header=BB1_17 Depth=1
	bltu	$s1, $a4, .LBB1_278
# %bb.25:                               #   in Loop: Header=BB1_17 Depth=1
	add.d	$a3, $a4, $a2
	bltu	$t4, $a3, .LBB1_278
# %bb.26:                               #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a5, $s5, $a1
	bstrpick.d	$a3, $a5, 31, 0
	add.d	$a6, $a4, $a3
	bltu	$t4, $a6, .LBB1_278
# %bb.27:                               # %.preheader.preheader
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a6, $s5, 1
	sltu	$a7, $a6, $s1
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $s1, $a7
	or	$a7, $a7, $a6
	nor	$a6, $s5, $zero
	add.w	$a7, $a7, $a6
	addi.d	$a0, $a0, 1
	sltu	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	masknez	$a0, $a0, $t0
	or	$a0, $a7, $a0
	ori	$a7, $zero, 31
	bgeu	$a0, $a7, .LBB1_41
# %bb.28:                               #   in Loop: Header=BB1_17 Depth=1
	ori	$t8, $zero, 1
	ori	$s2, $zero, 2
	ori	$s6, $zero, 128
	ori	$ra, $zero, 127
	ori	$t6, $zero, 256
.LBB1_29:                               # %.preheader.preheader850
                                        #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a3, $zero, $a1
	addi.w	$a5, $a4, -1
	move	$a2, $s5
	.p2align	4, , 16
.LBB1_30:                               # %.preheader
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $a3, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $fp, $a0
	bstrpick.d	$a4, $a2, 31, 0
	stx.b	$a0, $fp, $a4
	addi.w	$a2, $a2, 1
	sltu	$a4, $a2, $s1
	bgeu	$a2, $s1, .LBB1_32
# %bb.31:                               # %.preheader
                                        #   in Loop: Header=BB1_30 Depth=2
	bstrpick.d	$a5, $a5, 31, 0
	add.d	$a5, $a5, $s4
	srli.d	$a6, $a5, 32
	andi	$a6, $a6, 1
	bnez	$a6, .LBB1_30
.LBB1_32:                               # %.loopexit
                                        #   in Loop: Header=BB1_17 Depth=1
	beqz	$a4, .LBB1_280
.LBB1_33:                               # %.select.unfold_crit_edge
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a3, $sp, 128
	andi	$a7, $a0, 255
	ori	$t0, $zero, 1
.LBB1_34:                               # %select.unfold
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$s3, $t3
	and	$a5, $a2, $t3
	ori	$a0, $zero, 1
	move	$t4, $t1
	move	$t3, $a1
	move	$s5, $a2
	beqz	$a3, .LBB1_17
	b	.LBB1_281
	.p2align	4, , 16
.LBB1_35:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a2, $sp, 136
	alsl.wu	$a1, $t7, $a5, 4
	alsl.d	$a3, $a1, $s0, 1
	add.d	$a1, $a2, $a0
	bltu	$a3, $a2, .LBB1_48
# %bb.36:                               #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a0, $a3, 2
	bltu	$a1, $a0, .LBB1_48
# %bb.37:                               #   in Loop: Header=BB1_17 Depth=1
	move	$s8, $t2
	ld.wu	$a0, $sp, 120
	ld.hu	$t1, $a3, 0
	ld.w	$a4, $sp, 124
	srli.d	$a6, $a0, 11
	mul.d	$a6, $a6, $t1
	addi.w	$t2, $a6, 0
	bgeu	$a4, $t2, .LBB1_69
# %bb.38:                               #   in Loop: Header=BB1_17 Depth=1
	st.w	$a6, $sp, 120
	sub.d	$a0, $s7, $t1
	srli.d	$a0, $a0, 5
	add.d	$a0, $t1, $a0
	bstrpick.d	$a5, $a6, 31, 24
	st.h	$a0, $a3, 0
	bnez	$a5, .LBB1_86
# %bb.39:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a5, $sp, 104
	ld.d	$a0, $sp, 112
	bgeu	$a5, $a0, .LBB1_95
# %bb.40:                               #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a0, $a5, 0
	move	$a3, $zero
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	b	.LBB1_96
	.p2align	4, , 16
.LBB1_41:                               # %vector.scevcheck
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a6, $a6, 0
	ori	$t8, $zero, 1
	ori	$s2, $zero, 2
	ori	$s6, $zero, 128
	ori	$ra, $zero, 127
	ori	$t6, $zero, 256
	bltu	$a6, $a0, .LBB1_29
# %bb.42:                               # %vector.scevcheck
                                        #   in Loop: Header=BB1_17 Depth=1
	nor	$a5, $a5, $zero
	bltu	$a5, $a0, .LBB1_29
# %bb.43:                               # %vector.scevcheck
                                        #   in Loop: Header=BB1_17 Depth=1
	sub.d	$a2, $a2, $a3
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB1_29
# %bb.44:                               # %vector.ph834
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 17, 5
	slli.w	$a3, $a2, 5
	add.w	$a2, $s5, $a3
	sub.d	$a4, $a4, $a3
	sub.w	$a5, $zero, $a1
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_45:                               # %vector.body839
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $a5, $s5
	bstrpick.d	$a7, $a7, 31, 0
	add.d	$t0, $fp, $a7
	vldx	$vr1, $fp, $a7
	vld	$vr0, $t0, 16
	bstrpick.d	$a7, $s5, 31, 0
	add.d	$t0, $fp, $a7
	vstx	$vr1, $fp, $a7
	vst	$vr0, $t0, 16
	addi.w	$a6, $a6, -32
	addi.w	$s5, $s5, 32
	bnez	$a6, .LBB1_45
# %bb.46:                               # %middle.block844
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a0, $a0, 0
	bne	$a0, $a3, .LBB1_82
# %bb.47:                               #   in Loop: Header=BB1_17 Depth=1
	vpickve2gr.b	$a0, $vr0, 15
	sltu	$a4, $s5, $s1
	bnez	$a4, .LBB1_33
	b	.LBB1_280
.LBB1_48:                               #   in Loop: Header=BB1_17 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
.LBB1_49:                               # %.thread
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a0, $t7, 192
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a4, $a0, $s0, 1
	bltu	$a4, $a2, .LBB1_55
# %bb.50:                               # %.thread
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a0, $a4, 2
	bltu	$a1, $a0, .LBB1_55
# %bb.51:                               #   in Loop: Header=BB1_17 Depth=1
	ld.wu	$a7, $sp, 120
	ld.hu	$t0, $a4, 0
	ld.w	$a6, $sp, 124
	srli.d	$a0, $a7, 11
	mul.d	$a0, $a0, $t0
	addi.w	$t1, $a0, 0
	bgeu	$a6, $t1, .LBB1_79
# %bb.52:                               #   in Loop: Header=BB1_17 Depth=1
	st.w	$a0, $sp, 120
	sub.d	$a1, $s7, $t0
	srli.d	$a1, $a1, 5
	add.d	$a1, $t0, $a1
	bstrpick.d	$a2, $a0, 31, 24
	st.h	$a1, $a4, 0
	bnez	$a2, .LBB1_169
# %bb.53:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a2, $sp, 104
	ld.d	$a1, $sp, 112
	bgeu	$a2, $a1, .LBB1_167
# %bb.54:                               #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a1, $a2, 0
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 104
	b	.LBB1_168
.LBB1_55:                               #   in Loop: Header=BB1_17 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
.LBB1_56:                               # %.thread500
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a0, $t7, 204
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a6, $a0, $s0, 1
	bltu	$a6, $a2, .LBB1_62
# %bb.57:                               # %.thread500
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a0, $a6, 2
	bltu	$a1, $a0, .LBB1_62
# %bb.58:                               #   in Loop: Header=BB1_17 Depth=1
	ld.wu	$t0, $sp, 120
	ld.hu	$a7, $a6, 0
	ld.w	$a0, $sp, 124
	srli.d	$a4, $t0, 11
	mul.d	$a4, $a4, $a7
	addi.w	$t1, $a4, 0
	bgeu	$a0, $t1, .LBB1_83
# %bb.59:                               #   in Loop: Header=BB1_17 Depth=1
	st.w	$a4, $sp, 120
	sub.d	$t0, $s7, $a7
	srli.d	$t0, $t0, 5
	add.d	$a7, $a7, $t0
	bstrpick.d	$t0, $a4, 31, 24
	st.h	$a7, $a6, 0
	bnez	$t0, .LBB1_246
# %bb.60:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a7, $sp, 104
	ld.d	$a6, $sp, 112
	bgeu	$a7, $a6, .LBB1_244
# %bb.61:                               #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a6, $a7, 0
	addi.d	$a7, $a7, 1
	st.d	$a7, $sp, 104
	b	.LBB1_245
.LBB1_62:                               #   in Loop: Header=BB1_17 Depth=1
	st.w	$t8, $sp, 128
.LBB1_63:                               # %.thread507
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a0, $t7, 216
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a0, $a0, $s0, 1
	bltu	$a0, $a2, .LBB1_72
# %bb.64:                               # %.thread507
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a3, $a0, 2
	bltu	$a1, $a3, .LBB1_72
# %bb.65:                               #   in Loop: Header=BB1_17 Depth=1
	ld.wu	$a6, $sp, 120
	ld.hu	$a7, $a0, 0
	ld.w	$a4, $sp, 124
	srli.d	$a3, $a6, 11
	mul.d	$a3, $a3, $a7
	addi.w	$t0, $a3, 0
	bgeu	$a4, $t0, .LBB1_89
# %bb.66:                               #   in Loop: Header=BB1_17 Depth=1
	st.w	$a3, $sp, 120
	sub.d	$a1, $s7, $a7
	srli.d	$a1, $a1, 5
	add.d	$a1, $a7, $a1
	bstrpick.d	$a2, $a3, 31, 24
	st.h	$a1, $a0, 0
	bnez	$a2, .LBB1_166
# %bb.67:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104
	ld.d	$a0, $sp, 112
	bgeu	$a1, $a0, .LBB1_259
# %bb.68:                               #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	ld.bu	$a0, $a1, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 104
	b	.LBB1_260
.LBB1_69:                               #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a0, $a0, $a6
	st.w	$a0, $sp, 120
	sub.d	$a4, $a4, $a6
	st.w	$a4, $sp, 124
	srli.d	$a6, $t1, 5
	sub.d	$a6, $t1, $a6
	bstrpick.d	$a7, $a0, 31, 24
	st.h	$a6, $a3, 0
	bnez	$a7, .LBB1_88
# %bb.70:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a7, $sp, 104
	ld.d	$a3, $sp, 112
	bgeu	$a7, $a3, .LBB1_99
# %bb.71:                               #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a6, $a7, 0
	move	$a3, $zero
	addi.d	$a7, $a7, 1
	st.d	$a7, $sp, 104
	b	.LBB1_100
.LBB1_72:                               #   in Loop: Header=BB1_17 Depth=1
	st.w	$t8, $sp, 128
.LBB1_73:                               # %.thread512
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a0, $t7, 228
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a0, $a0, $s0, 1
	bltu	$a0, $a2, .LBB1_18
# %bb.74:                               # %.thread512
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a2, $a0, 2
	bltu	$a1, $a2, .LBB1_18
# %bb.75:                               #   in Loop: Header=BB1_17 Depth=1
	ld.wu	$a3, $sp, 120
	ld.hu	$a4, $a0, 0
	ld.w	$a2, $sp, 124
	srli.d	$a1, $a3, 11
	mul.d	$a1, $a1, $a4
	addi.w	$a6, $a1, 0
	bgeu	$a2, $a6, .LBB1_92
# %bb.76:                               #   in Loop: Header=BB1_17 Depth=1
	st.w	$a1, $sp, 120
	sub.d	$a3, $s7, $a4
	srli.d	$a3, $a3, 5
	add.d	$a3, $a4, $a3
	bstrpick.d	$a4, $a1, 31, 24
	st.h	$a3, $a0, 0
	bnez	$a4, .LBB1_242
# %bb.77:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 104
	ld.d	$a0, $sp, 112
	bgeu	$a3, $a0, .LBB1_264
# %bb.78:                               #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	ld.bu	$a0, $a3, 0
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 104
	b	.LBB1_265
.LBB1_79:                               #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a7, $a7, $a0
	st.w	$a7, $sp, 120
	sub.d	$a0, $a6, $a0
	st.w	$a0, $sp, 124
	srli.d	$a6, $t0, 5
	sub.d	$a6, $t0, $a6
	bstrpick.d	$t0, $a7, 31, 24
	st.h	$a6, $a4, 0
	bnez	$t0, .LBB1_56
# %bb.80:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a6, $sp, 104
	ld.d	$a4, $sp, 112
	bgeu	$a6, $a4, .LBB1_209
# %bb.81:                               #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a4, $a6, 0
	addi.d	$a6, $a6, 1
	st.d	$a6, $sp, 104
	b	.LBB1_210
.LBB1_82:                               #   in Loop: Header=BB1_17 Depth=1
	move	$s5, $a2
	b	.LBB1_29
.LBB1_83:                               #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a3, $t0, $a4
	st.w	$a3, $sp, 120
	sub.d	$a0, $a0, $a4
	st.w	$a0, $sp, 124
	srli.d	$a4, $a7, 5
	sub.d	$a4, $a7, $a4
	bstrpick.d	$a7, $a3, 31, 24
	st.h	$a4, $a6, 0
	bnez	$a7, .LBB1_63
# %bb.84:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a6, $sp, 104
	ld.d	$a4, $sp, 112
	bgeu	$a6, $a4, .LBB1_254
# %bb.85:                               #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a4, $a6, 0
	addi.d	$a6, $a6, 1
	st.d	$a6, $sp, 104
	b	.LBB1_255
.LBB1_86:                               #   in Loop: Header=BB1_17 Depth=1
	move	$a3, $zero
	ori	$a0, $zero, 4
	bge	$t7, $a0, .LBB1_97
.LBB1_87:                               #   in Loop: Header=BB1_17 Depth=1
	move	$t7, $zero
	b	.LBB1_102
.LBB1_88:                               #   in Loop: Header=BB1_17 Depth=1
	move	$a3, $zero
	move	$t2, $s8
	b	.LBB1_49
.LBB1_89:                               #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a6, $a6, $a3
	st.w	$a6, $sp, 120
	sub.d	$a3, $a4, $a3
	st.w	$a3, $sp, 124
	srli.d	$a4, $a7, 5
	sub.d	$a4, $a7, $a4
	bstrpick.d	$a7, $a6, 31, 24
	st.h	$a4, $a0, 0
	bnez	$a7, .LBB1_73
# %bb.90:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a4, $sp, 104
	ld.d	$a0, $sp, 112
	bgeu	$a4, $a0, .LBB1_262
# %bb.91:                               #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a0, $a4, 0
	addi.d	$a4, $a4, 1
	st.d	$a4, $sp, 104
	b	.LBB1_263
.LBB1_92:                               #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a3, $a3, $a1
	st.w	$a3, $sp, 120
	sub.d	$a1, $a2, $a1
	st.w	$a1, $sp, 124
	srli.d	$a2, $a4, 5
	sub.d	$a2, $a4, $a2
	bstrpick.d	$a4, $a3, 31, 24
	st.h	$a2, $a0, 0
	bnez	$a4, .LBB1_243
# %bb.93:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104
	ld.d	$a0, $sp, 112
	bgeu	$a2, $a0, .LBB1_267
# %bb.94:                               #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	ld.bu	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 104
	b	.LBB1_268
.LBB1_95:                               #   in Loop: Header=BB1_17 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$a0, $zero, 255
.LBB1_96:                               # %get_byte.exit.i
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.w	$a4, $a4, 8
	or	$a4, $a0, $a4
	st.w	$a4, $sp, 124
	slli.d	$a6, $a6, 8
	st.w	$a6, $sp, 120
	ori	$a0, $zero, 4
	blt	$t7, $a0, .LBB1_87
.LBB1_97:                               #   in Loop: Header=BB1_17 Depth=1
	ori	$a0, $zero, 10
	bltu	$t7, $a0, .LBB1_101
# %bb.98:                               #   in Loop: Header=BB1_17 Depth=1
	addi.w	$t7, $t7, -6
	b	.LBB1_102
.LBB1_99:                               #   in Loop: Header=BB1_17 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$a6, $zero, 255
.LBB1_100:                              # %get_byte.exit53.i
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$t2, $s8
	slli.d	$a4, $a4, 8
	or	$a4, $a6, $a4
	st.w	$a4, $sp, 124
	slli.d	$a0, $a0, 8
	st.w	$a0, $sp, 120
	b	.LBB1_49
.LBB1_101:                              #   in Loop: Header=BB1_17 Depth=1
	addi.w	$t7, $t7, -3
.LBB1_102:                              #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	srl.w	$a0, $a7, $a0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	and	$a5, $s5, $a5
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	sll.w	$a5, $a5, $a7
	add.w	$a0, $a0, $a5
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a5, $a0, 8
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	beqz	$t0, .LBB1_145
# %bb.103:                              #   in Loop: Header=BB1_17 Depth=1
	ori	$a0, $zero, 1
	beqz	$s1, .LBB1_281
# %bb.104:                              #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a7, $s5, $t3
	bgeu	$a7, $s1, .LBB1_281
# %bb.105:                              #   in Loop: Header=BB1_17 Depth=1
	bstrpick.d	$a0, $a7, 31, 0
	ldx.bu	$t2, $fp, $a0
	addi.d	$a0, $a5, 1846
	ld.d	$a5, $sp, 104
	ld.d	$a7, $sp, 112
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$t0, $a0, $s0, 1
	ori	$a0, $zero, 1
	b	.LBB1_107
	.p2align	4, , 16
.LBB1_106:                              # %.loopexit.i
                                        #   in Loop: Header=BB1_107 Depth=2
	addi.w	$t3, $a0, 0
	andi	$t2, $t1, 254
	bgeu	$t3, $t6, .LBB1_163
.LBB1_107:                              #   Parent Loop BB1_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_128 Depth 3
	slli.d	$t1, $t2, 1
	move	$t3, $t1
	bstrins.d	$t3, $zero, 7, 0
	add.d	$t3, $t3, $a0
	addi.w	$t3, $t3, 256
	alsl.d	$t3, $t3, $t0, 1
	bltu	$t3, $a2, .LBB1_113
# %bb.108:                              #   in Loop: Header=BB1_107 Depth=2
	addi.d	$t4, $t3, 2
	bltu	$a1, $t4, .LBB1_113
# %bb.109:                              #   in Loop: Header=BB1_107 Depth=2
	ld.hu	$t5, $t3, 0
	bstrpick.d	$t4, $a6, 31, 11
	mul.d	$t4, $t4, $t5
	addi.w	$t6, $t4, 0
	bgeu	$a4, $t6, .LBB1_114
# %bb.110:                              #   in Loop: Header=BB1_107 Depth=2
	st.w	$t4, $sp, 120
	sub.d	$a6, $s7, $t5
	srli.d	$a6, $a6, 5
	add.d	$a6, $t5, $a6
	bstrpick.d	$t5, $t4, 31, 24
	st.h	$a6, $t3, 0
	bnez	$t5, .LBB1_117
# %bb.111:                              #   in Loop: Header=BB1_107 Depth=2
	bgeu	$a5, $a7, .LBB1_118
# %bb.112:                              #   in Loop: Header=BB1_107 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	b	.LBB1_119
	.p2align	4, , 16
.LBB1_113:                              #   in Loop: Header=BB1_107 Depth=2
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$t3, $zero, 255
	b	.LBB1_123
	.p2align	4, , 16
.LBB1_114:                              #   in Loop: Header=BB1_107 Depth=2
	sub.w	$a6, $a6, $t4
	st.w	$a6, $sp, 120
	sub.w	$a4, $a4, $t4
	st.w	$a4, $sp, 124
	srli.d	$t4, $t5, 5
	sub.d	$t4, $t5, $t4
	st.h	$t4, $t3, 0
	bstrpick.d	$t4, $a6, 31, 24
	ori	$t3, $zero, 1
	ori	$t6, $zero, 256
	bnez	$t4, .LBB1_123
# %bb.115:                              #   in Loop: Header=BB1_107 Depth=2
	bgeu	$a5, $a7, .LBB1_120
# %bb.116:                              #   in Loop: Header=BB1_107 Depth=2
	ld.bu	$t4, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	b	.LBB1_121
.LBB1_117:                              #   in Loop: Header=BB1_107 Depth=2
	move	$t3, $zero
	move	$a6, $t4
	ori	$t6, $zero, 256
	b	.LBB1_123
.LBB1_118:                              #   in Loop: Header=BB1_107 Depth=2
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$a6, $zero, 255
.LBB1_119:                              # %get_byte.exit.i443
                                        #   in Loop: Header=BB1_107 Depth=2
	ori	$t6, $zero, 256
	move	$t3, $zero
	slli.w	$a4, $a4, 8
	or	$a4, $a6, $a4
	st.w	$a4, $sp, 124
	slli.d	$a6, $t4, 8
	b	.LBB1_122
.LBB1_120:                              #   in Loop: Header=BB1_107 Depth=2
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$t4, $zero, 255
.LBB1_121:                              # %get_byte.exit53.i440
                                        #   in Loop: Header=BB1_107 Depth=2
	slli.w	$a4, $a4, 8
	or	$a4, $t4, $a4
	st.w	$a4, $sp, 124
	slli.d	$a6, $a6, 8
.LBB1_122:                              # %getbit_from_table.exit445
                                        #   in Loop: Header=BB1_107 Depth=2
	st.w	$a6, $sp, 120
.LBB1_123:                              # %getbit_from_table.exit445
                                        #   in Loop: Header=BB1_107 Depth=2
	addi.w	$t4, $a0, 0
	slli.d	$a0, $a0, 1
	or	$a0, $t3, $a0
	bltu	$ra, $t4, .LBB1_106
# %bb.124:                              # %getbit_from_table.exit445
                                        #   in Loop: Header=BB1_107 Depth=2
	bstrpick.d	$t2, $t2, 31, 7
	addi.w	$t2, $t2, 0
	beq	$t2, $t3, .LBB1_106
# %bb.125:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB1_107 Depth=2
	move	$t2, $a6
	b	.LBB1_128
	.p2align	4, , 16
.LBB1_126:                              #   in Loop: Header=BB1_128 Depth=3
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$t3, $zero, 255
.LBB1_127:                              # %getbit_from_table.exit433
                                        #   in Loop: Header=BB1_128 Depth=3
	slli.d	$a0, $a0, 1
	addi.w	$t4, $a0, 0
	or	$a0, $t3, $a0
	bgeu	$t4, $t6, .LBB1_106
.LBB1_128:                              # %.preheader.i
                                        #   Parent Loop BB1_17 Depth=1
                                        #     Parent Loop BB1_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t3, $a0, 31, 0
	alsl.d	$t3, $t3, $t0, 1
	bltu	$t3, $a2, .LBB1_126
# %bb.129:                              # %.preheader.i
                                        #   in Loop: Header=BB1_128 Depth=3
	addi.d	$t4, $t3, 2
	bltu	$a1, $t4, .LBB1_126
# %bb.130:                              #   in Loop: Header=BB1_128 Depth=3
	ld.hu	$t4, $t3, 0
	bstrpick.d	$a6, $t2, 31, 11
	mul.d	$a6, $a6, $t4
	addi.w	$t5, $a6, 0
	bgeu	$a4, $t5, .LBB1_134
# %bb.131:                              #   in Loop: Header=BB1_128 Depth=3
	st.w	$a6, $sp, 120
	sub.d	$t2, $s7, $t4
	srli.d	$t2, $t2, 5
	add.d	$t2, $t4, $t2
	bstrpick.d	$t4, $a6, 31, 24
	st.h	$t2, $t3, 0
	bnez	$t4, .LBB1_137
# %bb.132:                              #   in Loop: Header=BB1_128 Depth=3
	bgeu	$a5, $a7, .LBB1_139
# %bb.133:                              #   in Loop: Header=BB1_128 Depth=3
	ld.bu	$t2, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	b	.LBB1_140
	.p2align	4, , 16
.LBB1_134:                              #   in Loop: Header=BB1_128 Depth=3
	sub.w	$t2, $t2, $a6
	st.w	$t2, $sp, 120
	sub.w	$a4, $a4, $a6
	st.w	$a4, $sp, 124
	srli.d	$a6, $t4, 5
	sub.d	$a6, $t4, $a6
	st.h	$a6, $t3, 0
	bstrpick.d	$a6, $t2, 31, 24
	ori	$t3, $zero, 1
	bnez	$a6, .LBB1_138
# %bb.135:                              #   in Loop: Header=BB1_128 Depth=3
	bgeu	$a5, $a7, .LBB1_141
# %bb.136:                              #   in Loop: Header=BB1_128 Depth=3
	ld.bu	$a6, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	b	.LBB1_142
.LBB1_137:                              #   in Loop: Header=BB1_128 Depth=3
	move	$t3, $zero
	b	.LBB1_144
.LBB1_138:                              #   in Loop: Header=BB1_128 Depth=3
	move	$a6, $t2
	b	.LBB1_127
.LBB1_139:                              #   in Loop: Header=BB1_128 Depth=3
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$t2, $zero, 255
.LBB1_140:                              # %get_byte.exit.i431
                                        #   in Loop: Header=BB1_128 Depth=3
	move	$t3, $zero
	slli.w	$a4, $a4, 8
	or	$a4, $t2, $a4
	st.w	$a4, $sp, 124
	slli.d	$a6, $a6, 8
	b	.LBB1_143
.LBB1_141:                              #   in Loop: Header=BB1_128 Depth=3
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$a6, $zero, 255
.LBB1_142:                              # %get_byte.exit53.i428
                                        #   in Loop: Header=BB1_128 Depth=3
	slli.w	$a4, $a4, 8
	or	$a4, $a6, $a4
	st.w	$a4, $sp, 124
	slli.d	$a6, $t2, 8
.LBB1_143:                              # %getbit_from_table.exit433
                                        #   in Loop: Header=BB1_128 Depth=3
	st.w	$a6, $sp, 120
.LBB1_144:                              # %getbit_from_table.exit433
                                        #   in Loop: Header=BB1_128 Depth=3
	move	$t2, $a6
	b	.LBB1_127
.LBB1_145:                              #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a0, $a5, 1846
	ld.d	$a5, $sp, 104
	ld.d	$a7, $sp, 112
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$t0, $a0, $s0, 1
	ori	$a0, $zero, 1
	b	.LBB1_148
	.p2align	4, , 16
.LBB1_146:                              #   in Loop: Header=BB1_148 Depth=2
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$a0, $zero, 255
.LBB1_147:                              # %getbit_from_table.exit457
                                        #   in Loop: Header=BB1_148 Depth=2
	slli.w	$t2, $t1, 1
	or	$a0, $a0, $t2
	bgeu	$t1, $s6, .LBB1_163
.LBB1_148:                              #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t1, $a0
	alsl.d	$a0, $a0, $t0, 1
	bltu	$a0, $a2, .LBB1_146
# %bb.149:                              #   in Loop: Header=BB1_148 Depth=2
	addi.d	$t2, $a0, 2
	bltu	$a1, $t2, .LBB1_146
# %bb.150:                              #   in Loop: Header=BB1_148 Depth=2
	ld.hu	$t3, $a0, 0
	bstrpick.d	$t2, $a6, 31, 11
	mul.d	$t2, $t2, $t3
	addi.w	$t4, $t2, 0
	bgeu	$a4, $t4, .LBB1_154
# %bb.151:                              #   in Loop: Header=BB1_148 Depth=2
	st.w	$t2, $sp, 120
	sub.d	$a6, $s7, $t3
	srli.d	$a6, $a6, 5
	add.d	$a6, $t3, $a6
	bstrpick.d	$t3, $t2, 31, 24
	st.h	$a6, $a0, 0
	bnez	$t3, .LBB1_157
# %bb.152:                              #   in Loop: Header=BB1_148 Depth=2
	bgeu	$a5, $a7, .LBB1_158
# %bb.153:                              #   in Loop: Header=BB1_148 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	b	.LBB1_159
	.p2align	4, , 16
.LBB1_154:                              #   in Loop: Header=BB1_148 Depth=2
	sub.w	$a6, $a6, $t2
	st.w	$a6, $sp, 120
	sub.w	$a4, $a4, $t2
	st.w	$a4, $sp, 124
	srli.d	$t2, $t3, 5
	sub.d	$t2, $t3, $t2
	st.h	$t2, $a0, 0
	bstrpick.d	$t2, $a6, 31, 24
	ori	$a0, $zero, 1
	bnez	$t2, .LBB1_147
# %bb.155:                              #   in Loop: Header=BB1_148 Depth=2
	bgeu	$a5, $a7, .LBB1_160
# %bb.156:                              #   in Loop: Header=BB1_148 Depth=2
	ld.bu	$t2, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 104
	b	.LBB1_161
.LBB1_157:                              #   in Loop: Header=BB1_148 Depth=2
	move	$a0, $zero
	move	$a6, $t2
	b	.LBB1_147
.LBB1_158:                              #   in Loop: Header=BB1_148 Depth=2
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$a6, $zero, 255
.LBB1_159:                              # %get_byte.exit.i455
                                        #   in Loop: Header=BB1_148 Depth=2
	move	$a0, $zero
	slli.w	$a4, $a4, 8
	or	$a4, $a6, $a4
	st.w	$a4, $sp, 124
	slli.d	$a6, $t2, 8
	b	.LBB1_162
.LBB1_160:                              #   in Loop: Header=BB1_148 Depth=2
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$t2, $zero, 255
.LBB1_161:                              # %get_byte.exit53.i452
                                        #   in Loop: Header=BB1_148 Depth=2
	slli.w	$a4, $a4, 8
	or	$a4, $t2, $a4
	st.w	$a4, $sp, 124
	slli.d	$a6, $a6, 8
.LBB1_162:                              # %getbit_from_table.exit457
                                        #   in Loop: Header=BB1_148 Depth=2
	st.w	$a6, $sp, 120
	b	.LBB1_147
.LBB1_163:                              # %get_100_bits_from_tablesize.exit
                                        #   in Loop: Header=BB1_17 Depth=1
	bgeu	$s5, $s1, .LBB1_279
# %bb.164:                              #   in Loop: Header=BB1_17 Depth=1
	move	$t0, $zero
	bstrpick.d	$a1, $s5, 31, 0
	addi.w	$a2, $s5, 1
	stx.b	$a0, $fp, $a1
	bgeu	$a2, $s1, .LBB1_282
# %bb.165:                              #   in Loop: Header=BB1_17 Depth=1
	andi	$a7, $a0, 255
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	move	$t2, $s8
	move	$t3, $s3
	b	.LBB1_34
.LBB1_166:                              #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_261
.LBB1_167:                              #   in Loop: Header=BB1_17 Depth=1
	st.w	$t8, $sp, 128
	ori	$a1, $zero, 255
.LBB1_168:                              # %get_byte.exit.i352
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a2, $a6, 8
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 124
	slli.d	$a0, $a0, 8
	st.w	$a0, $sp, 120
.LBB1_169:                              # %getbit_from_table.exit354
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$s8, $t2
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a2, $a5, 0
	addi.d	$a1, $sp, 104
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$s2, $t7
	pcaddu18i	$ra, %call36(get_n_bits_from_tablesize)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	sltui	$a1, $a0, 3
	maskeqz	$a2, $a0, $a1
	ori	$a3, $zero, 3
	masknez	$a1, $a3, $a1
	or	$a1, $a2, $a1
	slli.d	$a1, $a1, 7
	add.d	$a1, $s0, $a1
	addi.d	$t0, $a1, 864
	ld.wu	$a1, $sp, 144
	ld.w	$a7, $sp, 120
	ld.d	$a2, $sp, 136
	ld.w	$a6, $sp, 124
	ld.d	$a3, $sp, 104
	ld.d	$a4, $sp, 112
	add.d	$a5, $a2, $a1
	ori	$t1, $zero, 1
	addi.w	$t2, $zero, -6
	ori	$ra, $zero, 2
	ori	$t7, $zero, 4
	b	.LBB1_172
	.p2align	4, , 16
.LBB1_170:                              #   in Loop: Header=BB1_172 Depth=2
	st.w	$s6, $sp, 128
	ori	$t3, $zero, 255
.LBB1_171:                              # %getbit_from_table.exit469
                                        #   in Loop: Header=BB1_172 Depth=2
	slli.d	$t1, $t1, 1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t2, $t2, 1
	slli.d	$t4, $t2, 31
	add.w	$t1, $t3, $t1
	bltz	$t4, .LBB1_188
.LBB1_172:                              # %.lr.ph.i
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$a1, $ra, .LBB1_170
# %bb.173:                              #   in Loop: Header=BB1_172 Depth=2
	bstrpick.d	$t3, $t1, 31, 0
	alsl.d	$t3, $t3, $t0, 1
	bltu	$t3, $a2, .LBB1_170
# %bb.174:                              #   in Loop: Header=BB1_172 Depth=2
	addi.d	$t4, $t3, 2
	bltu	$a5, $t4, .LBB1_170
# %bb.175:                              #   in Loop: Header=BB1_172 Depth=2
	ld.hu	$t5, $t3, 0
	bstrpick.d	$t4, $a7, 31, 11
	mul.d	$t4, $t4, $t5
	addi.w	$t6, $t4, 0
	bgeu	$a6, $t6, .LBB1_179
# %bb.176:                              #   in Loop: Header=BB1_172 Depth=2
	st.w	$t4, $sp, 120
	sub.d	$a7, $s7, $t5
	srli.d	$a7, $a7, 5
	add.d	$a7, $t5, $a7
	bstrpick.d	$t5, $t4, 31, 24
	st.h	$a7, $t3, 0
	bnez	$t5, .LBB1_182
# %bb.177:                              #   in Loop: Header=BB1_172 Depth=2
	bgeu	$a3, $a4, .LBB1_183
# %bb.178:                              #   in Loop: Header=BB1_172 Depth=2
	ld.bu	$a7, $a3, 0
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 104
	b	.LBB1_184
.LBB1_179:                              #   in Loop: Header=BB1_172 Depth=2
	sub.w	$a7, $a7, $t4
	st.w	$a7, $sp, 120
	sub.w	$a6, $a6, $t4
	st.w	$a6, $sp, 124
	srli.d	$t4, $t5, 5
	sub.d	$t4, $t5, $t4
	st.h	$t4, $t3, 0
	bstrpick.d	$t4, $a7, 31, 24
	ori	$t3, $zero, 1
	bnez	$t4, .LBB1_171
# %bb.180:                              #   in Loop: Header=BB1_172 Depth=2
	bgeu	$a3, $a4, .LBB1_185
# %bb.181:                              #   in Loop: Header=BB1_172 Depth=2
	ld.bu	$t4, $a3, 0
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 104
	b	.LBB1_186
.LBB1_182:                              #   in Loop: Header=BB1_172 Depth=2
	move	$t3, $zero
	move	$a7, $t4
	b	.LBB1_171
.LBB1_183:                              #   in Loop: Header=BB1_172 Depth=2
	st.w	$s6, $sp, 128
	ori	$a7, $zero, 255
.LBB1_184:                              # %get_byte.exit.i467
                                        #   in Loop: Header=BB1_172 Depth=2
	move	$t3, $zero
	slli.w	$a6, $a6, 8
	or	$a6, $a7, $a6
	st.w	$a6, $sp, 124
	slli.d	$a7, $t4, 8
	b	.LBB1_187
.LBB1_185:                              #   in Loop: Header=BB1_172 Depth=2
	st.w	$s6, $sp, 128
	ori	$t4, $zero, 255
.LBB1_186:                              # %get_byte.exit53.i464
                                        #   in Loop: Header=BB1_172 Depth=2
	slli.w	$a6, $a6, 8
	or	$a6, $t4, $a6
	st.w	$a6, $sp, 124
	slli.d	$a7, $a7, 8
.LBB1_187:                              # %getbit_from_table.exit469
                                        #   in Loop: Header=BB1_172 Depth=2
	st.w	$a7, $sp, 120
	b	.LBB1_171
.LBB1_188:                              # %get_n_bits_from_table.exit
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$t4, $t1, -64
	bltu	$t4, $t7, .LBB1_241
# %bb.189:                              #   in Loop: Header=BB1_17 Depth=1
	bstrpick.d	$t5, $t4, 31, 1
	addi.w	$t2, $t5, -1
	bstrins.d	$t3, $s6, 63, 1
	sll.w	$t0, $t3, $t2
	ori	$t3, $zero, 13
	blt	$t3, $t4, .LBB1_211
# %bb.190:                              #   in Loop: Header=BB1_17 Depth=1
	move	$t4, $zero
	move	$t3, $zero
	sub.d	$t1, $t0, $t1
	addi.d	$t1, $t1, 751
	bstrpick.d	$t1, $t1, 31, 0
	alsl.d	$t1, $t1, $s0, 1
	ori	$t5, $zero, 1
	b	.LBB1_193
	.p2align	4, , 16
.LBB1_191:                              #   in Loop: Header=BB1_193 Depth=2
	st.w	$s6, $sp, 128
	ori	$t6, $zero, 255
.LBB1_192:                              # %getbit_from_table.exit481
                                        #   in Loop: Header=BB1_193 Depth=2
	alsl.w	$t5, $t5, $t6, 1
	sll.w	$t6, $t6, $t4
	addi.w	$t4, $t4, 1
	or	$t3, $t6, $t3
	beq	$t2, $t4, .LBB1_239
.LBB1_193:                              # %.preheader.i404
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$a1, $ra, .LBB1_191
# %bb.194:                              #   in Loop: Header=BB1_193 Depth=2
	bstrpick.d	$t6, $t5, 31, 0
	alsl.d	$t6, $t6, $t1, 1
	bltu	$t6, $a2, .LBB1_191
# %bb.195:                              #   in Loop: Header=BB1_193 Depth=2
	addi.d	$t7, $t6, 2
	bltu	$a5, $t7, .LBB1_191
# %bb.196:                              #   in Loop: Header=BB1_193 Depth=2
	ld.hu	$t8, $t6, 0
	bstrpick.d	$t7, $a7, 31, 11
	mul.d	$t7, $t7, $t8
	addi.w	$s7, $t7, 0
	bgeu	$a6, $s7, .LBB1_200
# %bb.197:                              #   in Loop: Header=BB1_193 Depth=2
	st.w	$t7, $sp, 120
	ori	$s7, $zero, 2048
	sub.d	$a7, $s7, $t8
	srli.d	$a7, $a7, 5
	add.d	$a7, $t8, $a7
	bstrpick.d	$t8, $t7, 31, 24
	st.h	$a7, $t6, 0
	bnez	$t8, .LBB1_203
# %bb.198:                              #   in Loop: Header=BB1_193 Depth=2
	bgeu	$a3, $a4, .LBB1_204
# %bb.199:                              #   in Loop: Header=BB1_193 Depth=2
	ld.bu	$a7, $a3, 0
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 104
	b	.LBB1_205
.LBB1_200:                              #   in Loop: Header=BB1_193 Depth=2
	sub.w	$a7, $a7, $t7
	st.w	$a7, $sp, 120
	sub.w	$a6, $a6, $t7
	st.w	$a6, $sp, 124
	srli.d	$t7, $t8, 5
	sub.d	$t7, $t8, $t7
	st.h	$t7, $t6, 0
	bstrpick.d	$t7, $a7, 31, 24
	ori	$t6, $zero, 1
	bnez	$t7, .LBB1_208
# %bb.201:                              #   in Loop: Header=BB1_193 Depth=2
	bgeu	$a3, $a4, .LBB1_206
# %bb.202:                              #   in Loop: Header=BB1_193 Depth=2
	ld.bu	$t7, $a3, 0
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 104
	b	.LBB1_207
.LBB1_203:                              #   in Loop: Header=BB1_193 Depth=2
	move	$t6, $zero
	move	$a7, $t7
	b	.LBB1_192
.LBB1_204:                              #   in Loop: Header=BB1_193 Depth=2
	st.w	$s6, $sp, 128
	ori	$a7, $zero, 255
.LBB1_205:                              # %get_byte.exit.i479
                                        #   in Loop: Header=BB1_193 Depth=2
	move	$t6, $zero
	slli.w	$a6, $a6, 8
	or	$a6, $a7, $a6
	st.w	$a6, $sp, 124
	slli.d	$a7, $t7, 8
	st.w	$a7, $sp, 120
	b	.LBB1_192
.LBB1_206:                              #   in Loop: Header=BB1_193 Depth=2
	st.w	$s6, $sp, 128
	ori	$t7, $zero, 255
.LBB1_207:                              # %get_byte.exit53.i476
                                        #   in Loop: Header=BB1_193 Depth=2
	slli.w	$a6, $a6, 8
	or	$a6, $t7, $a6
	st.w	$a6, $sp, 124
	slli.d	$a7, $a7, 8
	st.w	$a7, $sp, 120
.LBB1_208:                              # %getbit_from_table.exit481
                                        #   in Loop: Header=BB1_193 Depth=2
	ori	$s7, $zero, 2048
	b	.LBB1_192
.LBB1_209:                              #   in Loop: Header=BB1_17 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$a4, $zero, 255
.LBB1_210:                              # %get_byte.exit53.i349
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a0, $a0, 8
	or	$a0, $a4, $a0
	st.w	$a0, $sp, 124
	slli.d	$a0, $a7, 8
	st.w	$a0, $sp, 120
	b	.LBB1_56
.LBB1_211:                              # %.preheader.i407
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$t1, $zero
	addi.d	$t2, $t5, -5
	b	.LBB1_213
	.p2align	4, , 16
.LBB1_212:                              #   in Loop: Header=BB1_213 Depth=2
	move	$a7, $t3
	addi.w	$t2, $t2, -1
	beqz	$t2, .LBB1_220
.LBB1_213:                              #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t3, $a7, 31, 1
	st.w	$t3, $sp, 120
	slli.d	$t1, $t1, 1
	bltu	$a6, $t3, .LBB1_215
# %bb.214:                              #   in Loop: Header=BB1_213 Depth=2
	sub.w	$a6, $a6, $t3
	st.w	$a6, $sp, 124
	ori	$t1, $t1, 1
.LBB1_215:                              #   in Loop: Header=BB1_213 Depth=2
	bstrpick.d	$a7, $a7, 31, 25
	bnez	$a7, .LBB1_212
# %bb.216:                              #   in Loop: Header=BB1_213 Depth=2
	slli.d	$a7, $t3, 8
	st.w	$a7, $sp, 120
	bgeu	$a3, $a4, .LBB1_218
# %bb.217:                              #   in Loop: Header=BB1_213 Depth=2
	ld.bu	$t3, $a3, 0
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 104
	b	.LBB1_219
.LBB1_218:                              #   in Loop: Header=BB1_213 Depth=2
	st.w	$s6, $sp, 128
	ori	$t3, $zero, 255
.LBB1_219:                              # %get_byte.exit.i412
                                        #   in Loop: Header=BB1_213 Depth=2
	slli.w	$a6, $a6, 8
	or	$a6, $t3, $a6
	st.w	$a6, $sp, 124
	addi.w	$t2, $t2, -1
	bnez	$t2, .LBB1_213
.LBB1_220:                              # %.preheader.i414.preheader
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$t3, $zero
	move	$t2, $zero
	ori	$t4, $zero, 1
	b	.LBB1_223
	.p2align	4, , 16
.LBB1_221:                              #   in Loop: Header=BB1_223 Depth=2
	st.w	$s6, $sp, 128
	ori	$t5, $zero, 255
.LBB1_222:                              # %getbit_from_table.exit493
                                        #   in Loop: Header=BB1_223 Depth=2
	alsl.w	$t4, $t4, $t5, 1
	sll.w	$t5, $t5, $t3
	addi.w	$t3, $t3, 1
	or	$t2, $t5, $t2
	beq	$t3, $t7, .LBB1_240
.LBB1_223:                              # %.preheader.i414
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$a1, $ra, .LBB1_221
# %bb.224:                              #   in Loop: Header=BB1_223 Depth=2
	bstrpick.d	$t5, $t4, 31, 0
	ld.d	$t6, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$t5, $t5, $t6, 1
	bltu	$t5, $a2, .LBB1_221
# %bb.225:                              #   in Loop: Header=BB1_223 Depth=2
	addi.d	$t6, $t5, 2
	bltu	$a5, $t6, .LBB1_221
# %bb.226:                              #   in Loop: Header=BB1_223 Depth=2
	ld.hu	$t7, $t5, 0
	bstrpick.d	$t6, $a7, 31, 11
	mul.d	$t6, $t6, $t7
	addi.w	$t8, $t6, 0
	bgeu	$a6, $t8, .LBB1_230
# %bb.227:                              #   in Loop: Header=BB1_223 Depth=2
	st.w	$t6, $sp, 120
	sub.d	$a7, $s7, $t7
	srli.d	$a7, $a7, 5
	add.d	$a7, $t7, $a7
	bstrpick.d	$t7, $t6, 31, 24
	st.h	$a7, $t5, 0
	bnez	$t7, .LBB1_233
# %bb.228:                              #   in Loop: Header=BB1_223 Depth=2
	bgeu	$a3, $a4, .LBB1_234
# %bb.229:                              #   in Loop: Header=BB1_223 Depth=2
	ld.bu	$a7, $a3, 0
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 104
	b	.LBB1_235
.LBB1_230:                              #   in Loop: Header=BB1_223 Depth=2
	sub.w	$a7, $a7, $t6
	st.w	$a7, $sp, 120
	sub.w	$a6, $a6, $t6
	st.w	$a6, $sp, 124
	srli.d	$t6, $t7, 5
	sub.d	$t6, $t7, $t6
	st.h	$t6, $t5, 0
	bstrpick.d	$t6, $a7, 31, 24
	ori	$t5, $zero, 1
	ori	$t7, $zero, 4
	bnez	$t6, .LBB1_222
# %bb.231:                              #   in Loop: Header=BB1_223 Depth=2
	bgeu	$a3, $a4, .LBB1_236
# %bb.232:                              #   in Loop: Header=BB1_223 Depth=2
	ld.bu	$t6, $a3, 0
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 104
	b	.LBB1_237
.LBB1_233:                              #   in Loop: Header=BB1_223 Depth=2
	move	$t5, $zero
	move	$a7, $t6
	ori	$t7, $zero, 4
	b	.LBB1_222
.LBB1_234:                              #   in Loop: Header=BB1_223 Depth=2
	st.w	$s6, $sp, 128
	ori	$a7, $zero, 255
.LBB1_235:                              # %get_byte.exit.i491
                                        #   in Loop: Header=BB1_223 Depth=2
	ori	$t7, $zero, 4
	move	$t5, $zero
	slli.w	$a6, $a6, 8
	or	$a6, $a7, $a6
	st.w	$a6, $sp, 124
	slli.d	$a7, $t6, 8
	b	.LBB1_238
.LBB1_236:                              #   in Loop: Header=BB1_223 Depth=2
	st.w	$s6, $sp, 128
	ori	$t6, $zero, 255
.LBB1_237:                              # %get_byte.exit53.i488
                                        #   in Loop: Header=BB1_223 Depth=2
	slli.w	$a6, $a6, 8
	or	$a6, $t6, $a6
	st.w	$a6, $sp, 124
	slli.d	$a7, $a7, 8
.LBB1_238:                              # %getbit_from_table.exit493
                                        #   in Loop: Header=BB1_223 Depth=2
	st.w	$a7, $sp, 120
	b	.LBB1_222
.LBB1_239:                              # %get_bb.exit
                                        #   in Loop: Header=BB1_17 Depth=1
	add.d	$t4, $t3, $t0
	b	.LBB1_241
.LBB1_240:                              # %get_bb.exit421
                                        #   in Loop: Header=BB1_17 Depth=1
	alsl.d	$a1, $t1, $t0, 4
	add.d	$t4, $a1, $t2
.LBB1_241:                              #   in Loop: Header=BB1_17 Depth=1
	slti	$a1, $s2, 7
	ori	$a2, $zero, 10
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$t7, $a1, $a2
	addi.w	$a1, $t4, 1
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 40                    # 8-byte Folded Reload
	move	$t3, $s3
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_21
.LBB1_242:                              #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_266
.LBB1_243:                              #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_19
.LBB1_244:                              #   in Loop: Header=BB1_17 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$a6, $zero, 255
.LBB1_245:                              # %get_byte.exit.i364
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.w	$a0, $a0, 8
	or	$a0, $a6, $a0
	st.w	$a0, $sp, 124
	slli.d	$a4, $a4, 8
	st.w	$a4, $sp, 120
.LBB1_246:                              #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a6, $t7, 4
	add.d	$a6, $a5, $a6
	addi.d	$a6, $a6, 240
	bstrpick.d	$a6, $a6, 31, 0
	alsl.d	$a6, $a6, $s0, 1
	bltu	$a6, $a2, .LBB1_252
# %bb.247:                              #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a2, $a6, 2
	bltu	$a1, $a2, .LBB1_252
# %bb.248:                              #   in Loop: Header=BB1_17 Depth=1
	ld.hu	$a7, $a6, 0
	bstrpick.d	$a1, $a4, 31, 11
	mul.d	$a1, $a1, $a7
	addi.w	$a2, $a1, 0
	bgeu	$a0, $a2, .LBB1_256
# %bb.249:                              #   in Loop: Header=BB1_17 Depth=1
	st.w	$a1, $sp, 120
	sub.d	$a2, $s7, $a7
	srli.d	$a2, $a2, 5
	add.d	$a2, $a7, $a2
	bstrpick.d	$a4, $a1, 31, 24
	st.h	$a2, $a6, 0
	bnez	$a4, .LBB1_271
# %bb.250:                              #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a4, $sp, 104
	ld.d	$a2, $sp, 112
	bgeu	$a4, $a2, .LBB1_269
# %bb.251:                              #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a2, $a4, 0
	addi.d	$a4, $a4, 1
	st.d	$a4, $sp, 104
	b	.LBB1_270
.LBB1_252:                              #   in Loop: Header=BB1_17 Depth=1
	move	$s8, $t2
	move	$s2, $t4
	move	$s6, $t3
	move	$s0, $t7
	st.w	$t8, $sp, 128
.LBB1_253:                              #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a2, $a5, 0
	addi.d	$a1, $sp, 104
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(get_n_bits_from_tablesize)
	jirl	$ra, $ra, 0
	slti	$a1, $s0, 7
	ori	$a2, $zero, 11
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 8
	maskeqz	$a1, $a3, $a1
	or	$t7, $a1, $a2
	move	$a1, $s6
	move	$t1, $s2
	move	$t2, $s8
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	move	$t3, $s3
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	b	.LBB1_21
.LBB1_254:                              #   in Loop: Header=BB1_17 Depth=1
	st.w	$t8, $sp, 128
	ori	$a4, $zero, 255
.LBB1_255:                              # %get_byte.exit53.i361
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a0, $a0, 8
	or	$a0, $a4, $a0
	st.w	$a0, $sp, 124
	slli.d	$a0, $a3, 8
	st.w	$a0, $sp, 120
	b	.LBB1_63
.LBB1_256:                              #   in Loop: Header=BB1_17 Depth=1
	move	$s8, $t2
	move	$s2, $t4
	move	$s6, $t3
	move	$s0, $t7
	sub.w	$a2, $a4, $a1
	st.w	$a2, $sp, 120
	sub.d	$a0, $a0, $a1
	st.w	$a0, $sp, 124
	srli.d	$a1, $a7, 5
	sub.d	$a1, $a7, $a1
	bstrpick.d	$a3, $a2, 31, 24
	st.h	$a1, $a6, 0
	bnez	$a3, .LBB1_253
# %bb.257:                              #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a3, $sp, 104
	ld.d	$a1, $sp, 112
	bgeu	$a3, $a1, .LBB1_276
# %bb.258:                              #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a1, $a3, 0
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 104
	b	.LBB1_277
.LBB1_259:                              #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	st.w	$t8, $sp, 128
	ori	$a0, $zero, 255
.LBB1_260:                              # %get_byte.exit.i388
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a1, $a4, 8
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 124
	slli.d	$a0, $a3, 8
	st.w	$a0, $sp, 120
.LBB1_261:                              # %getbit_from_table.exit390
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$s8, $t2
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	st.d	$t4, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_20
.LBB1_262:                              #   in Loop: Header=BB1_17 Depth=1
	st.w	$t8, $sp, 128
	ori	$a0, $zero, 255
.LBB1_263:                              # %get_byte.exit53.i385
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a3, $a3, 8
	or	$a0, $a0, $a3
	st.w	$a0, $sp, 124
	slli.d	$a0, $a6, 8
	st.w	$a0, $sp, 120
	b	.LBB1_73
.LBB1_264:                              #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	st.w	$t8, $sp, 128
	ori	$a0, $zero, 255
.LBB1_265:                              # %get_byte.exit.i400
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 124
	slli.d	$a0, $a1, 8
	st.w	$a0, $sp, 120
.LBB1_266:                              # %getbit_from_table.exit390
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$s8, $t4
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	st.d	$t2, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_20
.LBB1_267:                              #   in Loop: Header=BB1_17 Depth=1
	move	$s6, $t3
	move	$s0, $t7
	st.w	$t8, $sp, 128
	ori	$a0, $zero, 255
.LBB1_268:                              # %get_byte.exit53.i397
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a1, $a1, 8
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 124
	slli.d	$a0, $a3, 8
	st.w	$a0, $sp, 120
	b	.LBB1_19
.LBB1_269:                              #   in Loop: Header=BB1_17 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $sp, 128
	ori	$a2, $zero, 255
.LBB1_270:                              # %get_byte.exit.i376
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a0, $a0, 8
	or	$a0, $a2, $a0
	st.w	$a0, $sp, 124
	slli.d	$a0, $a1, 8
	st.w	$a0, $sp, 120
.LBB1_271:                              # %getbit_from_table.exit378
                                        #   in Loop: Header=BB1_17 Depth=1
	ori	$a0, $zero, 1
	beqz	$s5, .LBB1_281
# %bb.272:                              #   in Loop: Header=BB1_17 Depth=1
	beqz	$s1, .LBB1_281
# %bb.273:                              #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a1, $s5, $t3
	bgeu	$a1, $s1, .LBB1_281
# %bb.274:                              #   in Loop: Header=BB1_17 Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	ldx.bu	$a7, $fp, $a0
	bstrpick.d	$a0, $s5, 31, 0
	addi.w	$a2, $s5, 1
	stx.b	$a7, $fp, $a0
	bgeu	$a2, $s1, .LBB1_280
# %bb.275:                              #   in Loop: Header=BB1_17 Depth=1
	ori	$a0, $zero, 6
	slt	$a0, $a0, $t7
	ori	$a1, $zero, 9
	masknez	$a1, $a1, $a0
	ori	$a4, $zero, 11
	maskeqz	$a0, $a4, $a0
	or	$t7, $a0, $a1
	ori	$t0, $zero, 1
	move	$a1, $t3
	move	$t1, $t4
	move	$t3, $s3
	b	.LBB1_34
.LBB1_276:                              #   in Loop: Header=BB1_17 Depth=1
	st.w	$t8, $sp, 128
	ori	$a1, $zero, 255
.LBB1_277:                              # %get_byte.exit53.i373
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a0, $a0, 8
	or	$a0, $a1, $a0
	st.w	$a0, $sp, 124
	slli.d	$a0, $a2, 8
	st.w	$a0, $sp, 120
	b	.LBB1_253
.LBB1_278:                              # %split
	add.d	$a3, $fp, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_279:                              # %.thread517
	ori	$a0, $zero, 1
	b	.LBB1_281
.LBB1_280:
	move	$a0, $zero
.LBB1_281:                              # %.thread517
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
.LBB1_282:
	move	$a0, $t0
	b	.LBB1_281
.Lfunc_end1:
	.size	very_real_unpack, .Lfunc_end1-very_real_unpack
                                        # -- End function
	.globl	get_byte                        # -- Begin function get_byte
	.p2align	5
	.type	get_byte,@function
get_byte:                               # @get_byte
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	bgeu	$a2, $a1, .LBB2_2
# %bb.1:
	ld.bu	$a1, $a2, 0
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 0
	move	$a0, $a1
	ret
.LBB2_2:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 24
	ori	$a0, $zero, 255
	ret
.Lfunc_end2:
	.size	get_byte, .Lfunc_end2-get_byte
                                        # -- End function
	.globl	getbit_from_table               # -- Begin function getbit_from_table
	.p2align	5
	.type	getbit_from_table,@function
getbit_from_table:                      # @getbit_from_table
# %bb.0:
	ld.wu	$a2, $a1, 40
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB3_2
.LBB3_1:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 24
	ori	$a0, $zero, 255
	ret
.LBB3_2:
	ld.d	$a3, $a1, 32
	bltu	$a0, $a3, .LBB3_1
# %bb.3:
	addi.d	$a4, $a0, 2
	add.d	$a2, $a3, $a2
	bltu	$a2, $a4, .LBB3_1
# %bb.4:
	ld.wu	$a3, $a1, 16
	ld.hu	$a5, $a0, 0
	ld.w	$a4, $a1, 20
	srli.d	$a2, $a3, 11
	mul.d	$a2, $a2, $a5
	addi.w	$a6, $a2, 0
	bgeu	$a4, $a6, .LBB3_8
# %bb.5:
	st.w	$a2, $a1, 16
	ori	$a3, $zero, 2048
	sub.d	$a3, $a3, $a5
	srli.d	$a3, $a3, 5
	add.d	$a3, $a5, $a3
	bstrpick.d	$a5, $a2, 31, 24
	st.h	$a3, $a0, 0
	bnez	$a5, .LBB3_11
# %bb.6:
	ld.d	$a0, $a1, 0
	ld.d	$a5, $a1, 8
	slli.d	$a3, $a4, 8
	bgeu	$a0, $a5, .LBB3_12
# %bb.7:
	ld.bu	$a4, $a0, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB3_13
.LBB3_8:
	sub.w	$a3, $a3, $a2
	st.w	$a3, $a1, 16
	sub.d	$a2, $a4, $a2
	st.w	$a2, $a1, 20
	srli.d	$a4, $a5, 5
	sub.d	$a4, $a5, $a4
	st.h	$a4, $a0, 0
	bstrpick.d	$a4, $a3, 31, 24
	ori	$a0, $zero, 1
	bnez	$a4, .LBB3_17
# %bb.9:
	ld.d	$a5, $a1, 0
	ld.d	$a4, $a1, 8
	slli.d	$a2, $a2, 8
	bgeu	$a5, $a4, .LBB3_14
# %bb.10:
	ld.bu	$a4, $a5, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	b	.LBB3_15
.LBB3_11:
	move	$a0, $zero
	ret
.LBB3_12:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 24
	ori	$a4, $zero, 255
.LBB3_13:                               # %get_byte.exit
	move	$a0, $zero
	or	$a3, $a4, $a3
	st.w	$a3, $a1, 20
	slli.d	$a2, $a2, 8
	b	.LBB3_16
.LBB3_14:
	ori	$a4, $zero, 1
	st.w	$a4, $a1, 24
	ori	$a4, $zero, 255
.LBB3_15:                               # %get_byte.exit53
	or	$a2, $a4, $a2
	st.w	$a2, $a1, 20
	slli.d	$a2, $a3, 8
.LBB3_16:
	st.w	$a2, $a1, 16
.LBB3_17:
	ret
.Lfunc_end3:
	.size	getbit_from_table, .Lfunc_end3-getbit_from_table
                                        # -- End function
	.globl	get_100_bits_from_tablesize     # -- Begin function get_100_bits_from_tablesize
	.p2align	5
	.type	get_100_bits_from_tablesize,@function
get_100_bits_from_tablesize:            # @get_100_bits_from_tablesize
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	andi	$s5, $a2, 255
	ori	$s3, $zero, 1
	ori	$s1, $zero, 127
	ori	$s2, $zero, 256
	b	.LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %.loopexit
                                        #   in Loop: Header=BB4_2 Depth=1
	addi.w	$a0, $s3, 0
	andi	$s5, $s4, 254
	bgeu	$a0, $s2, .LBB4_5
.LBB4_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	slli.d	$s4, $s5, 1
	move	$a0, $s4
	bstrins.d	$a0, $zero, 7, 0
	add.d	$a0, $a0, $s3
	addi.w	$a0, $a0, 256
	addi.w	$s6, $s3, 0
	alsl.d	$a0, $a0, $s0, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s3, 1
	or	$s3, $a0, $a1
	bltu	$s1, $s6, .LBB4_1
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	bstrpick.d	$a1, $s5, 31, 7
	addi.w	$a1, $a1, 0
	beq	$a1, $a0, .LBB4_1
	.p2align	4, , 16
.LBB4_4:                                # %.preheader
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s5, $s3, 1
	addi.w	$s6, $s5, 0
	bstrpick.d	$a0, $s3, 31, 0
	alsl.d	$a0, $a0, $s0, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	or	$s3, $s5, $a0
	bltu	$s6, $s2, .LBB4_4
	b	.LBB4_1
.LBB4_5:
	andi	$a0, $s3, 255
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	get_100_bits_from_tablesize, .Lfunc_end4-get_100_bits_from_tablesize
                                        # -- End function
	.globl	get_100_bits_from_table         # -- Begin function get_100_bits_from_table
	.p2align	5
	.type	get_100_bits_from_table,@function
get_100_bits_from_table:                # @get_100_bits_from_table
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$s1, $zero, 128
	.p2align	4, , 16
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	slli.w	$s3, $a0, 1
	alsl.d	$a0, $a0, $s0, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	or	$a0, $a0, $s3
	bltu	$s2, $s1, .LBB5_1
# %bb.2:
	andi	$a0, $a0, 255
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	get_100_bits_from_table, .Lfunc_end5-get_100_bits_from_table
                                        # -- End function
	.globl	get_n_bits_from_tablesize       # -- Begin function get_n_bits_from_tablesize
	.p2align	5
	.type	get_n_bits_from_tablesize,@function
get_n_bits_from_tablesize:              # @get_n_bits_from_tablesize
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_3
# %bb.1:
	addi.d	$a0, $s0, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_4
# %bb.2:                                # %.lr.ph.i18
	addi.d	$s1, $s0, 516
	addi.d	$a0, $s0, 518
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 1
	addi.d	$s0, $a0, 4
	add.d	$a0, $s1, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	alsl.d	$a0, $s0, $s1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.d	$s0, $s0, $a0, 1
	alsl.d	$a0, $s0, $s1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.w	$s0, $s0, $a0, 1
	alsl.d	$a0, $s0, $s1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.d	$s2, $s0, $a0, 1
	alsl.w	$a0, $s0, $a0, 1
	alsl.d	$a0, $a0, $s1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.w	$s0, $s2, $a0, 1
	alsl.d	$a0, $s0, $s1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.d	$s2, $s0, $a0, 1
	alsl.w	$a0, $s0, $a0, 1
	alsl.d	$a0, $a0, $s1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s2, $a0, 1
	addi.w	$a0, $a0, -240
	b	.LBB6_5
.LBB6_3:                                # %.lr.ph.i
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 2
	addi.w	$a1, $zero, -6
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	alsl.d	$s0, $a0, $s0, 1
	addi.d	$a0, $s0, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 1
	addi.d	$s1, $a0, 4
	add.d	$a0, $s0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	alsl.d	$a0, $s1, $s0, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s1, $a0, 1
	addi.w	$a0, $a0, -8
	b	.LBB6_5
.LBB6_4:                                # %.lr.ph.i13
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 130
	addi.w	$a1, $zero, -6
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	alsl.d	$s0, $a0, $s0, 1
	addi.d	$a0, $s0, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 1
	addi.d	$s1, $a0, 4
	add.d	$a0, $s0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	alsl.d	$a0, $s1, $s0, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s1, $a0, 1
.LBB6_5:                                # %get_n_bits_from_table.exit17
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	get_n_bits_from_tablesize, .Lfunc_end6-get_n_bits_from_tablesize
                                        # -- End function
	.globl	get_n_bits_from_table           # -- Begin function get_n_bits_from_table
	.p2align	5
	.type	get_n_bits_from_table,@function
get_n_bits_from_table:                  # @get_n_bits_from_table
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	beqz	$a1, .LBB7_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a2
	move	$s1, $a0
	ori	$s2, $zero, 1
	move	$s3, $fp
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s3, $s3, -1
	bstrpick.d	$a0, $s2, 31, 0
	alsl.d	$a0, $a0, $s1, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.w	$s2, $s2, $a0, 1
	bnez	$s3, .LBB7_2
	b	.LBB7_4
.LBB7_3:
	ori	$s2, $zero, 1
.LBB7_4:                                # %._crit_edge
	addi.d	$a0, $zero, -1
	sll.w	$a0, $a0, $fp
	add.w	$a0, $s2, $a0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	get_n_bits_from_table, .Lfunc_end7-get_n_bits_from_table
                                        # -- End function
	.globl	get_bb                          # -- Begin function get_bb
	.p2align	5
	.type	get_bb,@function
get_bb:                                 # @get_bb
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	blez	$a1, .LBB8_3
# %bb.1:                                # %.preheader.preheader
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$s3, $zero
	move	$s2, $zero
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB8_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	alsl.d	$a0, $a0, $s1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getbit_from_table)
	jirl	$ra, $ra, 0
	alsl.w	$s4, $s4, $a0, 1
	sll.w	$a0, $a0, $s3
	addi.w	$s3, $s3, 1
	or	$s2, $a0, $s2
	bne	$s0, $s3, .LBB8_2
	b	.LBB8_4
.LBB8_3:
	move	$s2, $zero
.LBB8_4:                                # %.loopexit
	move	$a0, $s2
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end8:
	.size	get_bb, .Lfunc_end8-get_bb
                                        # -- End function
	.globl	get_bitmap                      # -- Begin function get_bitmap
	.p2align	5
	.type	get_bitmap,@function
get_bitmap:                             # @get_bitmap
# %bb.0:
	blez	$a1, .LBB9_10
# %bb.1:                                # %.preheader
	ld.w	$a6, $a0, 16
	ld.w	$a3, $a0, 20
	move	$a2, $zero
	ori	$a4, $zero, 1
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_5 Depth=1
	ld.bu	$a6, $a7, 0
	addi.d	$a7, $a7, 1
	st.d	$a7, $a0, 0
.LBB9_3:                                # %get_byte.exit
                                        #   in Loop: Header=BB9_5 Depth=1
	slli.w	$a3, $a3, 8
	or	$a3, $a6, $a3
	st.w	$a3, $a0, 20
.LBB9_4:                                #   in Loop: Header=BB9_5 Depth=1
	addi.w	$a1, $a1, -1
	move	$a6, $a5
	beqz	$a1, .LBB9_11
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a6, 31, 1
	st.w	$a5, $a0, 16
	slli.w	$a2, $a2, 1
	bltu	$a3, $a5, .LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	sub.w	$a3, $a3, $a5
	st.w	$a3, $a0, 20
	ori	$a2, $a2, 1
.LBB9_7:                                #   in Loop: Header=BB9_5 Depth=1
	bstrpick.d	$a6, $a6, 31, 25
	bnez	$a6, .LBB9_4
# %bb.8:                                #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a7, $a0, 0
	ld.d	$a6, $a0, 8
	slli.d	$a5, $a5, 8
	st.w	$a5, $a0, 16
	bltu	$a7, $a6, .LBB9_2
# %bb.9:                                #   in Loop: Header=BB9_5 Depth=1
	st.w	$a4, $a0, 24
	ori	$a6, $zero, 255
	b	.LBB9_3
.LBB9_10:
	move	$a2, $zero
.LBB9_11:                               # %.loopexit
	move	$a0, $a2
	ret
.Lfunc_end9:
	.size	get_bitmap, .Lfunc_end9-get_bitmap
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unsp: table size = %d\n"
	.size	.L.str, 23

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%x %x %x %x\n"
	.size	.L.str.1, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
