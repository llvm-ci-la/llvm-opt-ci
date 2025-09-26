	.file	"jcmaster.c"
	.text
	.globl	jinit_c_master_control          # -- Begin function jinit_c_master_control
	.p2align	5
	.type	jinit_c_master_control,@function
jinit_c_master_control:                 # @jinit_c_master_control
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
	addi.d	$sp, $sp, -752
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	move	$s6, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 48
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$s5, $a0
	st.d	$a0, $fp, 424
	pcalau12i	$a0, %pc_hi20(prepare_for_pass)
	addi.d	$a0, $a0, %pc_lo12(prepare_for_pass)
	st.d	$a0, $s5, 0
	pcalau12i	$a0, %pc_hi20(pass_startup)
	addi.d	$a0, $a0, %pc_lo12(pass_startup)
	st.d	$a0, $s5, 8
	pcalau12i	$a0, %pc_hi20(finish_pass_master)
	addi.d	$a1, $a0, %pc_lo12(finish_pass_master)
	ld.w	$a0, $fp, 44
	st.d	$a1, $s5, 16
	st.w	$zero, $s5, 28
	beqz	$a0, .LBB0_5
# %bb.1:
	ld.w	$a1, $fp, 40
	beqz	$a1, .LBB0_5
# %bb.2:
	ld.w	$a1, $fp, 68
	blez	$a1, .LBB0_5
# %bb.3:
	ld.w	$a1, $fp, 48
	blez	$a1, .LBB0_5
# %bb.4:
	lu12i.w	$a1, 15
	ori	$a2, $a1, 4060
	bgeu	$a2, $a0, .LBB0_6
	b	.LBB0_7
.LBB0_5:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 31
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 44
	lu12i.w	$a1, 15
	ori	$a2, $a1, 4060
	bltu	$a2, $a0, .LBB0_7
.LBB0_6:
	ld.w	$a0, $fp, 40
	ori	$a1, $a1, 4061
	bltu	$a0, $a1, .LBB0_8
.LBB0_7:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 40
	lu32i.d	$a1, 65500
	st.d	$a1, $a0, 40
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 40
.LBB0_8:
	ld.w	$a1, $fp, 48
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 32
	bnez	$a0, .LBB0_25
# %bb.9:
	ld.w	$a0, $fp, 64
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_26
.LBB0_10:
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 11
	blt	$a0, $a1, .LBB0_12
.LBB0_11:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 10
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB0_12:
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	st.d	$a2, $fp, 304
	blez	$a0, .LBB0_22
# %bb.13:                               # %.lr.ph.i.preheader
	ld.d	$a1, $fp, 80
	move	$s0, $zero
	addi.d	$s1, $a1, 12
	ori	$a1, $zero, 1
	addi.w	$s2, $zero, -4
	ori	$s3, $zero, 16
	addi.w	$s4, $zero, -5
	ori	$a2, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s3, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a2, $fp, 304
	ld.w	$a3, $s1, -4
	ld.w	$a1, $fp, 308
	ld.w	$a4, $s1, 0
	ld.w	$a0, $fp, 68
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=1
	slt	$a5, $a3, $a2
	masknez	$a3, $a3, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a3
	st.w	$a2, $fp, 304
	slt	$a3, $a4, $a1
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	st.w	$a1, $fp, 308
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, 96
	bge	$s0, $a0, .LBB0_18
.LBB0_16:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s1, -4
	addi.w	$a4, $a3, -5
	bltu	$a4, $s2, .LBB0_14
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	ld.w	$a4, $s1, 0
	addi.w	$a5, $a4, -5
	bgeu	$s4, $a5, .LBB0_14
	b	.LBB0_15
.LBB0_18:                               # %._crit_edge.i
	blez	$a0, .LBB0_22
# %bb.19:                               # %.lr.ph100.i.preheader
	ld.d	$a0, $fp, 80
	move	$s0, $zero
	addi.d	$s1, $a0, 28
	ori	$s2, $zero, 8
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB0_20:                               # %.lr.ph100.i
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $fp, 40
	ld.w	$a1, $s1, -20
	ld.w	$a2, $fp, 304
	st.w	$s0, $s1, -24
	st.w	$s2, $s1, 8
	mul.d	$a0, $a1, $a0
	slli.w	$a1, $a2, 3
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 44
	ld.w	$a2, $s1, -16
	ld.w	$a3, $fp, 308
	st.w	$a0, $s1, 0
	mul.d	$a0, $a2, $a1
	slli.w	$a1, $a3, 3
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $fp, 40
	ld.w	$a3, $s1, -20
	ld.w	$a1, $fp, 304
	st.w	$a0, $s1, 4
	mul.d	$a0, $a3, $a2
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $fp, 44
	ld.w	$a3, $s1, -16
	ld.w	$a1, $fp, 308
	st.w	$a0, $s1, 12
	mul.d	$a0, $a3, $a2
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 68
	st.w	$a0, $s1, 16
	st.w	$s3, $s1, 20
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, 96
	blt	$s0, $a1, .LBB0_20
# %bb.21:                               # %._crit_edge101.loopexit.i
	ld.w	$a1, $fp, 308
.LBB0_22:                               # %initial_setup.exit
	ld.wu	$a0, $fp, 44
	slli.w	$a1, $a1, 3
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 240
	st.w	$a0, $fp, 312
	beqz	$a1, .LBB0_27
# %bb.23:
	move	$s2, $a1
	ld.w	$a0, $fp, 232
	blez	$a0, .LBB0_28
# %bb.24:
	ld.w	$a0, $s2, 20
	bnez	$a0, .LBB0_33
	b	.LBB0_29
.LBB0_25:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 69
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 64
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_10
.LBB0_26:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 13
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 11
	bge	$a0, $a1, .LBB0_11
	b	.LBB0_12
.LBB0_27:                               # %.thread
	st.w	$zero, $fp, 300
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 232
	b	.LBB0_109
.LBB0_28:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 17
	st.d	$a1, $a0, 40
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$s2, $fp, 240
	ld.w	$a0, $s2, 20
	bnez	$a0, .LBB0_33
.LBB0_29:
	ld.w	$a0, $s2, 24
	ori	$a1, $zero, 63
	bne	$a0, $a1, .LBB0_33
# %bb.30:
	ld.w	$s0, $fp, 68
	st.w	$zero, $fp, 300
	blez	$s0, .LBB0_32
# %bb.31:                               # %.lr.ph.preheader.i
	slli.d	$a2, $s0, 2
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_32:                               # %.loopexit210.i
	move	$s1, $zero
	b	.LBB0_35
.LBB0_33:
	ld.w	$s0, $fp, 68
	ori	$s1, $zero, 1
	st.w	$s1, $fp, 300
	blez	$s0, .LBB0_35
# %bb.34:                               # %.preheader211.i.preheader
	slli.d	$a2, $s0, 8
	addi.d	$a0, $sp, 96
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_35:                               # %.loopexit210.i
	ld.w	$a0, $fp, 232
	blez	$a0, .LBB0_96
# %bb.36:                               # %.lr.ph237.i
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $s2
	addi.d	$s3, $s2, 8
	addi.w	$a0, $zero, -5
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s6, $zero, 17
	ori	$s1, $zero, 15
	ori	$a0, $zero, 1
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_37:                               # %.loopexit208.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a1, $fp, 232
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	addi.d	$s5, $s5, 36
	addi.w	$a0, $s7, 1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s3, $s3, 36
	ori	$s6, $zero, 17
	bge	$s7, $a1, .LBB0_95
.LBB0_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_87 Depth 3
                                        #     Child Loop BB0_61 Depth 2
	ld.wu	$s8, $s5, 0
	move	$s7, $a0
	addi.w	$a0, $s8, -5
	addi.w	$a1, $s8, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	st.w	$s0, $a0, 44
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a0, 40
	ori	$a0, $zero, 4
	st.w	$a0, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	blez	$s0, .LBB0_94
.LBB0_40:                               # %.lr.ph219.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a0, $s5, 4
	bltz	$a0, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a1, $fp, 68
	blt	$a0, $a1, .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s6, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_43:                               #   in Loop: Header=BB0_38 Depth=1
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $s2, .LBB0_48
.LBB0_44:                               #   in Loop: Header=BB0_38 Depth=1
	ori	$s4, $zero, 17
.LBB0_45:                               # %._crit_edge.i32
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$s0, $s5, 20
	ld.w	$a0, $s5, 24
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$s6, $s5, 28
	ld.w	$a0, $fp, 300
	ld.w	$s3, $s5, 32
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_55
# %bb.46:                               #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 63
	bgeu	$a0, $s0, .LBB0_63
.LBB0_47:                               #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_67
	.p2align	4, , 16
.LBB0_48:                               # %.peel.next.i.preheader
                                        #   in Loop: Header=BB0_38 Depth=1
	addi.d	$s0, $s8, -1
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_50 Depth=2
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 4
	beqz	$s0, .LBB0_44
.LBB0_50:                               # %.peel.next.i
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s4, $s3, 0
	bltz	$s4, .LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=2
	ld.w	$a0, $fp, 68
	bge	$s4, $a0, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_50 Depth=2
	ld.w	$a0, $s3, -4
	blt	$a0, $s4, .LBB0_49
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_53:                               #   in Loop: Header=BB0_50 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s6, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $s3, -4
	blt	$a0, $s4, .LBB0_49
.LBB0_54:                               #   in Loop: Header=BB0_50 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s6, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_38 Depth=1
	or	$a0, $s6, $s0
	or	$a0, $a0, $s3
	bnez	$a0, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 63
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_58:                               #   in Loop: Header=BB0_38 Depth=1
	beqz	$s2, .LBB0_37
# %bb.59:                               # %.lr.ph230.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$s0, $zero, 4
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_60:                               #   in Loop: Header=BB0_61 Depth=2
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	alsl.d	$a0, $s2, $a0, 2
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, 4
	beqz	$s8, .LBB0_37
.LBB0_61:                               #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$s2, $a0, $s0
	slli.d	$a0, $s2, 2
	ori	$a1, $zero, 2656
	add.d	$a1, $sp, $a1
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB0_60
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_63:                               #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s0, .LBB0_47
# %bb.64:                               #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 63
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_47
# %bb.65:                               #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 13
	bltu	$a0, $s6, .LBB0_47
# %bb.66:                               #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 14
	bgeu	$s3, $a0, .LBB0_47
.LBB0_67:                               #   in Loop: Header=BB0_38 Depth=1
	beqz	$s0, .LBB0_93
# %bb.68:                               #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_70
.LBB0_69:                               # %.sink.split.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_70:                               #   in Loop: Header=BB0_38 Depth=1
	beqz	$s2, .LBB0_37
# %bb.71:                               # %.lr.ph227.i
                                        #   in Loop: Header=BB0_38 Depth=1
	move	$s8, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s5, $s6, -1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 96
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_72:                               # %._crit_edge224.i
                                        #   in Loop: Header=BB0_73 Depth=2
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB0_37
.LBB0_73:                               #   Parent Loop BB0_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_87 Depth 3
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$s2, $a0, 8
	beqz	$s0, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=2
	addi.d	$a0, $sp, 96
	add.d	$a0, $a0, $s2
	ld.w	$a0, $a0, 0
	bltz	$a0, .LBB0_83
.LBB0_75:                               #   in Loop: Header=BB0_73 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s0, .LBB0_72
.LBB0_76:                               # %.lr.ph223.i
                                        #   in Loop: Header=BB0_73 Depth=2
	beqz	$s6, .LBB0_84
# %bb.77:                               # %.lr.ph223.split.i.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s4, $a0, $s2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_78:                               # %.sink.split293.i
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_79:                               #   in Loop: Header=BB0_80 Depth=3
	st.w	$s3, $s4, 0
	addi.w	$s2, $s2, -1
	addi.d	$s4, $s4, 4
	beqz	$s2, .LBB0_72
.LBB0_80:                               # %.lr.ph223.split.i
                                        #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$s3, $s5, .LBB0_78
# %bb.81:                               # %.lr.ph223.split.i
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.w	$a0, $s4, 0
	bne	$s6, $a0, .LBB0_78
# %bb.82:                               # %.lr.ph223.split.i
                                        #   in Loop: Header=BB0_80 Depth=3
	bgez	$a0, .LBB0_79
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_83:                               #   in Loop: Header=BB0_73 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s0, .LBB0_72
	b	.LBB0_76
.LBB0_84:                               # %.lr.ph223.split.us.i
                                        #   in Loop: Header=BB0_73 Depth=2
	bne	$s3, $s5, .LBB0_89
# %bb.85:                               # %.lr.ph223.split.us.split.i.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s2, $a0, $s2
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_87
	.p2align	4, , 16
.LBB0_86:                               #   in Loop: Header=BB0_87 Depth=3
	st.w	$s3, $s2, 0
	addi.w	$s4, $s4, -1
	addi.d	$s2, $s2, 4
	beqz	$s4, .LBB0_72
.LBB0_87:                               # %.lr.ph223.split.us.split.i
                                        #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s2, 0
	blez	$a0, .LBB0_86
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=3
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_86
.LBB0_89:                               # %.lr.ph223.split.us.split.us.i.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s2, $a0, $s2
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_91
	.p2align	4, , 16
.LBB0_90:                               #   in Loop: Header=BB0_91 Depth=3
	st.w	$s3, $s2, 0
	addi.w	$s4, $s4, -1
	addi.d	$s2, $s2, 4
	beqz	$s4, .LBB0_72
.LBB0_91:                               # %.lr.ph223.split.us.split.us.i
                                        #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s2, 0
	bltz	$a0, .LBB0_90
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=3
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_90
	.p2align	4, , 16
.LBB0_93:                               #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_69
	b	.LBB0_70
.LBB0_94:                               #   in Loop: Header=BB0_38 Depth=1
	ori	$s4, $zero, 17
	move	$s2, $zero
	b	.LBB0_45
.LBB0_95:                               # %._crit_edge238.loopexit.i
	ld.w	$s1, $fp, 300
	ld.w	$s0, $fp, 68
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB0_96:                               # %._crit_edge238.i
	beqz	$s1, .LBB0_102
# %bb.97:                               # %.preheader206.i
	blez	$s0, .LBB0_107
# %bb.98:                               # %.lr.ph240.i.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 96
	ori	$s3, $zero, 44
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_99:                               #   in Loop: Header=BB0_100 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 256
	bge	$s1, $s0, .LBB0_107
.LBB0_100:                              # %.lr.ph240.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	bgez	$a0, .LBB0_99
# %bb.101:                              #   in Loop: Header=BB0_100 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s3, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$s0, $fp, 68
	b	.LBB0_99
.LBB0_102:                              # %.preheader.i
	blez	$s0, .LBB0_107
# %bb.103:                              # %.lr.ph242.i.preheader
	move	$s1, $zero
	ori	$a0, $zero, 2656
	add.d	$s2, $sp, $a0
	ori	$s3, $zero, 44
	b	.LBB0_105
	.p2align	4, , 16
.LBB0_104:                              #   in Loop: Header=BB0_105 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 4
	bge	$s1, $s0, .LBB0_107
.LBB0_105:                              # %.lr.ph242.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB0_104
# %bb.106:                              #   in Loop: Header=BB0_105 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s3, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$s0, $fp, 68
	b	.LBB0_104
.LBB0_107:                              # %.loopexit
	ld.w	$a0, $fp, 300
	beqz	$a0, .LBB0_109
# %bb.108:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 256
.LBB0_109:
	beqz	$s6, .LBB0_112
# %bb.110:
	ld.w	$a0, $fp, 256
	beqz	$a0, .LBB0_114
# %bb.111:                              # %.thread69
	ori	$a0, $zero, 1
	st.d	$a0, $s5, 32
	st.w	$zero, $s5, 44
	b	.LBB0_113
.LBB0_112:
	st.d	$zero, $s5, 32
	ld.w	$a0, $fp, 256
	st.w	$zero, $s5, 44
	beqz	$a0, .LBB0_115
.LBB0_113:
	ld.w	$a0, $fp, 232
	slli.d	$a0, $a0, 1
	b	.LBB0_116
.LBB0_114:                              # %.thread67
	ori	$a0, $zero, 2
	st.d	$a0, $s5, 32
	st.w	$zero, $s5, 44
.LBB0_115:
	ld.w	$a0, $fp, 232
.LBB0_116:
	st.w	$a0, $s5, 40
	addi.d	$sp, $sp, 752
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
.Lfunc_end0:
	.size	jinit_c_master_control, .Lfunc_end0-jinit_c_master_control
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function prepare_for_pass
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.p2align	5
	.type	prepare_for_pass,@function
prepare_for_pass:                       # @prepare_for_pass
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 424
	ld.w	$a0, $s0, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_45
# %bb.1:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_7
# %bb.2:
	bnez	$a0, .LBB1_11
# %bb.3:
	ld.d	$a2, $fp, 240
	beqz	$a2, .LBB1_17
# %bb.4:
	ld.w	$a0, $s0, 44
	slli.d	$a1, $a0, 5
	alsl.d	$a3, $a0, $a1, 2
	ldx.w	$a4, $a2, $a3
	add.d	$a0, $a2, $a3
	st.w	$a4, $fp, 316
	blez	$a4, .LBB1_33
# %bb.5:                                # %.lr.ph.i
	ld.d	$a1, $fp, 80
	ori	$a5, $zero, 4
	bgeu	$a4, $a5, .LBB1_28
# %bb.6:
	move	$a5, $zero
	b	.LBB1_31
.LBB1_7:
	ld.d	$a2, $fp, 240
	beqz	$a2, .LBB1_12
# %bb.8:
	ld.w	$a0, $s0, 44
	slli.d	$a1, $a0, 5
	alsl.d	$a3, $a0, $a1, 2
	ldx.w	$a4, $a2, $a3
	add.d	$a0, $a2, $a3
	st.w	$a4, $fp, 316
	blez	$a4, .LBB1_27
# %bb.9:                                # %.lr.ph.i68
	ld.d	$a1, $fp, 80
	ori	$a5, $zero, 4
	bgeu	$a4, $a5, .LBB1_22
# %bb.10:
	move	$a5, $zero
	b	.LBB1_25
.LBB1_11:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 47
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB1_82
.LBB1_12:
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB1_14
# %bb.13:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB1_14:
	st.w	$a0, $fp, 316
	blez	$a0, .LBB1_39
# %bb.15:                               # %.lr.ph45.i74
	ld.d	$a1, $fp, 80
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB1_34
# %bb.16:
	move	$a2, $zero
	b	.LBB1_37
.LBB1_17:
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB1_19
# %bb.18:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB1_19:
	st.w	$a0, $fp, 316
	blez	$a0, .LBB1_60
# %bb.20:                               # %.lr.ph45.i
	ld.d	$a1, $fp, 80
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB1_55
# %bb.21:
	move	$a2, $zero
	b	.LBB1_58
.LBB1_22:                               # %vector.ph
	bstrpick.d	$a5, $a4, 30, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $fp, 336
	add.d	$a7, $a3, $a2
	addi.d	$a7, $a7, 12
	vreplgr2vr.d	$vr0, $a1
	vrepli.d	$vr1, 96
	move	$t0, $a5
	.p2align	4, , 16
.LBB1_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a7, -8
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr2, $t1, 0
	vinsgr2vr.d	$vr3, $t2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vori.b	$vr4, $vr0, 0
	vmadd.d	$vr4, $vr2, $vr1
	vori.b	$vr2, $vr0, 0
	vmadd.d	$vr2, $vr3, $vr1
	vst	$vr4, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB1_23
# %bb.24:                               # %middle.block
	beq	$a5, $a4, .LBB1_27
.LBB1_25:                               # %scalar.ph.preheader
	sub.d	$a4, $a4, $a5
	alsl.d	$a6, $a5, $fp, 3
	addi.d	$a6, $a6, 320
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_26:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 5
	add.d	$a3, $a1, $a3
	st.d	$a3, $a6, 0
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB1_26
.LBB1_27:                               # %._crit_edge.i66
	ld.w	$a1, $a0, 20
	st.w	$a1, $fp, 404
	ld.d	$a1, $a0, 24
	st.d	$a1, $fp, 408
	ld.w	$a0, $a0, 32
	b	.LBB1_40
.LBB1_28:                               # %vector.ph152
	bstrpick.d	$a5, $a4, 30, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $fp, 336
	add.d	$a7, $a3, $a2
	addi.d	$a7, $a7, 12
	vreplgr2vr.d	$vr0, $a1
	vrepli.d	$vr1, 96
	move	$t0, $a5
	.p2align	4, , 16
.LBB1_29:                               # %vector.body155
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a7, -8
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr2, $t1, 0
	vinsgr2vr.d	$vr3, $t2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vori.b	$vr4, $vr0, 0
	vmadd.d	$vr4, $vr2, $vr1
	vori.b	$vr2, $vr0, 0
	vmadd.d	$vr2, $vr3, $vr1
	vst	$vr4, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB1_29
# %bb.30:                               # %middle.block160
	beq	$a5, $a4, .LBB1_33
.LBB1_31:                               # %scalar.ph150.preheader
	sub.d	$a4, $a4, $a5
	alsl.d	$a6, $a5, $fp, 3
	addi.d	$a6, $a6, 320
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_32:                               # %scalar.ph150
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 5
	add.d	$a3, $a1, $a3
	st.d	$a3, $a6, 0
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB1_32
.LBB1_33:                               # %._crit_edge.i
	ld.w	$a1, $a0, 20
	st.w	$a1, $fp, 404
	ld.d	$a1, $a0, 24
	st.d	$a1, $fp, 408
	ld.w	$a0, $a0, 32
	b	.LBB1_61
.LBB1_34:                               # %vector.ph114
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	addi.d	$a3, $fp, 336
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, 96
	vrepli.d	$vr3, 192
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_35:                               # %vector.body117
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr2
	vadd.d	$vr5, $vr4, $vr3
	vst	$vr4, $a3, -16
	vst	$vr5, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_35
# %bb.36:                               # %middle.block120
	beq	$a2, $a0, .LBB1_39
.LBB1_37:                               # %scalar.ph112.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $fp, 3
	addi.d	$a3, $a3, 320
	alsl.d	$a2, $a2, $a2, 1
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB1_38:                               # %scalar.ph112
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 96
	bnez	$a0, .LBB1_38
.LBB1_39:                               # %._crit_edge46.i73
	move	$a0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, 63
	st.d	$a1, $fp, 404
	st.w	$zero, $fp, 412
.LBB1_40:                               # %select_scan_parameters.exit80
	st.w	$a0, $fp, 416
	move	$a0, $fp
	pcaddu18i	$ra, %call36(per_scan_setup)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 404
	beqz	$a0, .LBB1_42
.LBB1_41:
	ld.d	$a0, $fp, 488
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 448
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	b	.LBB1_81
.LBB1_42:
	ld.w	$a0, $fp, 412
	beqz	$a0, .LBB1_41
# %bb.43:
	ld.w	$a0, $fp, 252
	bnez	$a0, .LBB1_41
# %bb.44:
	ld.w	$a0, $s0, 36
	ori	$a1, $zero, 2
	st.w	$a1, $s0, 32
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 36
.LBB1_45:
	ld.w	$a0, $fp, 256
	bnez	$a0, .LBB1_78
# %bb.46:
	ld.d	$a2, $fp, 240
	beqz	$a2, .LBB1_50
# %bb.47:
	ld.d	$a0, $fp, 424
	ld.w	$a0, $a0, 44
	slli.d	$a1, $a0, 5
	alsl.d	$a3, $a0, $a1, 2
	ldx.w	$a4, $a2, $a3
	add.d	$a0, $a2, $a3
	st.w	$a4, $fp, 316
	blez	$a4, .LBB1_70
# %bb.48:                               # %.lr.ph.i84
	ld.d	$a1, $fp, 80
	ori	$a5, $zero, 4
	bgeu	$a4, $a5, .LBB1_65
# %bb.49:
	move	$a5, $zero
	b	.LBB1_68
.LBB1_50:
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB1_52
# %bb.51:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB1_52:
	st.w	$a0, $fp, 316
	blez	$a0, .LBB1_76
# %bb.53:                               # %.lr.ph45.i90
	ld.d	$a1, $fp, 80
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB1_71
# %bb.54:
	move	$a2, $zero
	b	.LBB1_74
.LBB1_55:                               # %vector.ph165
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	addi.d	$a3, $fp, 336
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, 96
	vrepli.d	$vr3, 192
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_56:                               # %vector.body168
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr2
	vadd.d	$vr5, $vr4, $vr3
	vst	$vr4, $a3, -16
	vst	$vr5, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_56
# %bb.57:                               # %middle.block174
	beq	$a2, $a0, .LBB1_60
.LBB1_58:                               # %scalar.ph163.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $fp, 3
	addi.d	$a3, $a3, 320
	alsl.d	$a2, $a2, $a2, 1
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB1_59:                               # %scalar.ph163
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 96
	bnez	$a0, .LBB1_59
.LBB1_60:                               # %._crit_edge46.i
	move	$a0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, 63
	st.d	$a1, $fp, 404
	st.w	$zero, $fp, 412
.LBB1_61:                               # %select_scan_parameters.exit
	st.w	$a0, $fp, 416
	move	$a0, $fp
	pcaddu18i	$ra, %call36(per_scan_setup)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 248
	bnez	$a0, .LBB1_63
# %bb.62:
	ld.d	$a0, $fp, 464
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 472
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 440
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
.LBB1_63:
	ld.d	$a0, $fp, 480
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 488
	ld.d	$a2, $a0, 0
	ld.w	$a1, $fp, 256
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 448
	ld.w	$a1, $s0, 40
	ld.d	$a2, $a0, 0
	ori	$s1, $zero, 1
	slt	$a0, $s1, $a1
	ori	$a1, $zero, 3
	maskeqz	$a1, $a1, $a0
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 432
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 256
	bnez	$a0, .LBB1_81
# %bb.64:
	st.w	$s1, $s0, 24
	b	.LBB1_82
.LBB1_65:                               # %vector.ph125
	bstrpick.d	$a5, $a4, 30, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $fp, 336
	add.d	$a7, $a3, $a2
	addi.d	$a7, $a7, 12
	vreplgr2vr.d	$vr0, $a1
	vrepli.d	$vr1, 96
	move	$t0, $a5
	.p2align	4, , 16
.LBB1_66:                               # %vector.body128
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a7, -8
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr2, $t1, 0
	vinsgr2vr.d	$vr3, $t2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vori.b	$vr4, $vr0, 0
	vmadd.d	$vr4, $vr2, $vr1
	vori.b	$vr2, $vr0, 0
	vmadd.d	$vr2, $vr3, $vr1
	vst	$vr4, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB1_66
# %bb.67:                               # %middle.block133
	beq	$a5, $a4, .LBB1_70
.LBB1_68:                               # %scalar.ph123.preheader
	sub.d	$a4, $a4, $a5
	alsl.d	$a6, $a5, $fp, 3
	addi.d	$a6, $a6, 320
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_69:                               # %scalar.ph123
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 5
	add.d	$a3, $a1, $a3
	st.d	$a3, $a6, 0
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB1_69
.LBB1_70:                               # %._crit_edge.i82
	ld.w	$a1, $a0, 20
	st.w	$a1, $fp, 404
	ld.d	$a1, $a0, 24
	st.d	$a1, $fp, 408
	ld.w	$a0, $a0, 32
	b	.LBB1_77
.LBB1_71:                               # %vector.ph138
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	addi.d	$a3, $fp, 336
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, 96
	vrepli.d	$vr3, 192
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_72:                               # %vector.body141
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr2
	vadd.d	$vr5, $vr4, $vr3
	vst	$vr4, $a3, -16
	vst	$vr5, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_72
# %bb.73:                               # %middle.block147
	beq	$a2, $a0, .LBB1_76
.LBB1_74:                               # %scalar.ph136.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $fp, 3
	addi.d	$a3, $a3, 320
	alsl.d	$a2, $a2, $a2, 1
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB1_75:                               # %scalar.ph136
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 96
	bnez	$a0, .LBB1_75
.LBB1_76:                               # %._crit_edge46.i89
	move	$a0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, 63
	st.d	$a1, $fp, 404
	st.w	$zero, $fp, 412
.LBB1_77:                               # %select_scan_parameters.exit96
	st.w	$a0, $fp, 416
	move	$a0, $fp
	pcaddu18i	$ra, %call36(per_scan_setup)
	jirl	$ra, $ra, 0
.LBB1_78:
	ld.d	$a0, $fp, 488
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 448
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $s0, 44
	bnez	$a0, .LBB1_80
# %bb.79:
	ld.d	$a0, $fp, 456
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_80:
	ld.d	$a0, $fp, 456
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_81:
	st.w	$zero, $s0, 24
.LBB1_82:
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s0, 36
	ld.d	$a2, $fp, 16
	addi.w	$a3, $a0, -1
	xor	$a3, $a1, $a3
	sltui	$a3, $a3, 1
	st.w	$a3, $s0, 28
	beqz	$a2, .LBB1_84
# %bb.83:
	st.w	$a1, $a2, 24
	st.w	$a0, $a2, 28
.LBB1_84:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	prepare_for_pass, .Lfunc_end1-prepare_for_pass
                                        # -- End function
	.p2align	5                               # -- Begin function pass_startup
	.type	pass_startup,@function
pass_startup:                           # @pass_startup
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 456
	ld.d	$a1, $fp, 424
	ld.d	$a2, $a0, 16
	st.w	$zero, $a1, 24
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 456
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.Lfunc_end2:
	.size	pass_startup, .Lfunc_end2-pass_startup
                                        # -- End function
	.p2align	5                               # -- Begin function finish_pass_master
	.type	finish_pass_master,@function
finish_pass_master:                     # @finish_pass_master
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 488
	ld.d	$s0, $fp, 424
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $s0, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB3_5
# %bb.1:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_4
# %bb.2:
	bnez	$a0, .LBB3_8
# %bb.3:
	ld.w	$a0, $fp, 256
	ori	$a1, $zero, 2
	st.w	$a1, $s0, 32
	bnez	$a0, .LBB3_8
	b	.LBB3_7
.LBB3_4:
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 32
	b	.LBB3_8
.LBB3_5:
	ld.w	$a0, $fp, 256
	beqz	$a0, .LBB3_7
# %bb.6:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 32
.LBB3_7:
	ld.w	$a0, $s0, 44
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 44
.LBB3_8:
	ld.w	$a0, $s0, 36
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 36
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	finish_pass_master, .Lfunc_end3-finish_pass_master
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function per_scan_setup
.LCPI4_0:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	8                               # 0x8
	.text
	.p2align	5
	.type	per_scan_setup,@function
per_scan_setup:                         # @per_scan_setup
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
	move	$fp, $a0
	ld.w	$a1, $a0, 316
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB4_2
# %bb.1:
	ld.d	$a1, $fp, 320
	ld.w	$a2, $a1, 28
	ld.w	$a3, $a1, 32
	pcalau12i	$a4, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI4_0)
	st.w	$a2, $fp, 352
	ld.w	$a2, $a1, 12
	st.w	$a3, $fp, 356
	vst	$vr0, $a1, 52
	st.w	$a0, $a1, 68
	mod.wu	$a3, $a3, $a2
	sltui	$a4, $a3, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	st.w	$a2, $a1, 72
	st.w	$a0, $fp, 360
	st.w	$zero, $fp, 364
	b	.LBB4_12
.LBB4_2:
	addi.w	$a0, $a1, -5
	addi.w	$a2, $zero, -5
	bltu	$a2, $a0, .LBB4_4
# %bb.3:
	ld.d	$a0, $fp, 0
	st.w	$a1, $a0, 44
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a0, 40
	ori	$a0, $zero, 4
	st.w	$a0, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_4:
	ld.w	$a1, $fp, 304
	ld.wu	$a0, $fp, 40
	slli.w	$a1, $a1, 3
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 308
	ld.wu	$a2, $fp, 44
	st.w	$a0, $fp, 352
	slli.w	$a1, $a1, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 316
	st.w	$a0, $fp, 356
	st.w	$zero, $fp, 360
	blez	$a1, .LBB4_12
# %bb.5:                                # %.lr.ph86
	move	$s0, $zero
	addi.d	$s1, $fp, 320
	addi.d	$s2, $fp, 364
	ori	$s3, $zero, 11
	ori	$s4, $zero, 1
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %._crit_edge
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.w	$a0, $fp, 316
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB4_12
.LBB4_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $s1, $a0
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	st.w	$a1, $a0, 52
	st.w	$a2, $a0, 56
	ld.w	$a3, $a0, 28
	mul.w	$s5, $a2, $a1
	slli.d	$a4, $a1, 3
	st.w	$a4, $a0, 64
	mod.wu	$a3, $a3, $a1
	sltui	$a4, $a3, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a1, $a1, $a4
	ld.w	$a4, $a0, 32
	st.w	$s5, $a0, 60
	or	$a1, $a1, $a3
	st.w	$a1, $a0, 68
	mod.wu	$a1, $a4, $a2
	sltui	$a3, $a1, 1
	ld.w	$a4, $fp, 360
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	add.w	$a2, $a4, $s5
	st.w	$a1, $a0, 72
	blt	$a2, $s3, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s3, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_9:                                #   in Loop: Header=BB4_7 Depth=1
	blez	$s5, .LBB4_6
# %bb.10:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a0, $s5, 1
	.p2align	4, , 16
.LBB4_11:                               # %.lr.ph
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $fp, 360
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 360
	slli.d	$a1, $a1, 2
	addi.w	$a0, $a0, -1
	stx.w	$s0, $s2, $a1
	bltu	$s4, $a0, .LBB4_11
	b	.LBB4_6
.LBB4_12:                               # %.loopexit
	ld.w	$a0, $fp, 276
	blez	$a0, .LBB4_14
# %bb.13:
	ld.wu	$a1, $fp, 352
	mul.d	$a0, $a1, $a0
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4095
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 272
.LBB4_14:
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
	.size	per_scan_setup, .Lfunc_end4-per_scan_setup
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym prepare_for_pass
	.addrsig_sym pass_startup
	.addrsig_sym finish_pass_master
