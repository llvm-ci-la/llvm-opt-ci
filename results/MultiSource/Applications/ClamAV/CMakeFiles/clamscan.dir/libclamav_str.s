	.file	"libclamav_str.c"
	.text
	.globl	cli_hex2ui                      # -- Begin function cli_hex2ui
	.p2align	5
	.type	cli_hex2ui,@function
cli_hex2ui:                             # @cli_hex2ui
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
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_38
# %bb.1:
	bstrpick.d	$a0, $s1, 31, 1
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_39
# %bb.2:                                # %.preheader
	addi.w	$s1, $s1, 0
	beqz	$s1, .LBB0_40
# %bb.3:                                # %.lr.ph.preheader
	move	$s2, $zero
	ori	$s3, $zero, 63
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $a0
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a0, $a0, 4
	ori	$a0, $a0, 768
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $s7, 2
	addi.w	$s2, $s2, 2
	st.h	$a0, $s7, 0
	move	$s7, $a1
	bgeu	$s2, $s1, .LBB0_41
.LBB0_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s2, 31, 0
	ldx.bu	$s4, $s0, $a0
	addi.d	$a0, $s2, 1
	bstrpick.d	$a1, $a0, 31, 0
	ldx.bu	$s6, $s0, $a1
	bne	$s4, $s3, .LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 256
	beq	$s6, $s3, .LBB0_5
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ldx.b	$s8, $s0, $a1
	andi	$s6, $s8, 255
	ori	$fp, $zero, 63
	beq	$s6, $fp, .LBB0_11
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	ext.w.b	$s5, $s4
	bne	$s6, $s3, .LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	move	$fp, $s4
	bltz	$s5, .LBB0_43
.LBB0_11:                               # %.thread103
                                        #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB0_20
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	ori	$a2, $zero, 5
	bltu	$a2, $a0, .LBB0_42
# %bb.13:                               # %cli_hex2int.exit.thread77
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a1, -87
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 40
	beq	$s4, $a0, .LBB0_24
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	ext.w.b	$s8, $s6
	bne	$s4, $s3, .LBB0_25
.LBB0_16:                               # %.thread104
                                        #   in Loop: Header=BB0_6 Depth=1
	ext.w.b	$a0, $s6
	bltz	$a0, .LBB0_43
# %bb.17:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB0_22
# %bb.18:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	ori	$a2, $zero, 5
	bltu	$a2, $a0, .LBB0_42
# %bb.19:                               # %cli_hex2int.exit61.thread81
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a1, -87
	ori	$a0, $a0, 1024
	b	.LBB0_5
.LBB0_20:                               # %cli_hex2int.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 48
	bltu	$s4, $a0, .LBB0_43
# %bb.21:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $fp, -48
	b	.LBB0_4
.LBB0_22:                               # %cli_hex2int.exit61
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 48
	bltu	$s6, $a0, .LBB0_43
# %bb.23:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s8, -48
	ori	$a0, $a0, 1024
	b	.LBB0_5
.LBB0_24:                               #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 512
	b	.LBB0_5
.LBB0_25:                               #   in Loop: Header=BB0_6 Depth=1
	bltz	$s5, .LBB0_43
# %bb.26:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $a0, 0
	slli.d	$a0, $s5, 1
	ldx.hu	$a0, $fp, $a0
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	ori	$a2, $zero, 5
	bltu	$a2, $a0, .LBB0_42
# %bb.28:                               # %cli_hex2int.exit68.thread85
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s4, $a1, -87
	b	.LBB0_31
.LBB0_29:                               # %cli_hex2int.exit68
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 48
	bltu	$s4, $a0, .LBB0_43
# %bb.30:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s4, $s5, -48
.LBB0_31:                               #   in Loop: Header=BB0_6 Depth=1
	ext.w.b	$a0, $s6
	bltz	$a0, .LBB0_43
# %bb.32:                               #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a0, $s8, 1
	ldx.hu	$a0, $fp, $a0
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB0_35
# %bb.33:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	ori	$a2, $zero, 5
	bltu	$a2, $a0, .LBB0_42
# %bb.34:                               # %cli_hex2int.exit75.thread89
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a1, -87
	b	.LBB0_37
.LBB0_35:                               # %cli_hex2int.exit75
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 48
	bltu	$s6, $a0, .LBB0_43
# %bb.36:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s8, -48
.LBB0_37:                               #   in Loop: Header=BB0_6 Depth=1
	alsl.w	$a0, $s4, $a0, 4
	b	.LBB0_5
.LBB0_38:
	addi.w	$a2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB0_39:                               # %.loopexit
	move	$a0, $zero
.LBB0_40:                               # %.loopexit
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
	ret
.LBB0_41:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_40
.LBB0_42:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB0_43:                               # %cli_hex2int.exit.thread
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_39
.Lfunc_end0:
	.size	cli_hex2ui, .Lfunc_end0-cli_hex2ui
                                        # -- End function
	.globl	cli_hex2str                     # -- Begin function cli_hex2str
	.p2align	5
	.type	cli_hex2str,@function
cli_hex2str:                            # @cli_hex2str
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
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	andi	$a1, $a0, 1
	bnez	$a1, .LBB1_17
# %bb.1:
	addi.w	$s1, $a0, 0
	srai.d	$a0, $s1, 1
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_20
# %bb.2:                                # %.preheader
	move	$fp, $a0
	blez	$s1, .LBB1_21
# %bb.3:                                # %.lr.ph.preheader
	move	$s2, $zero
	addi.d	$s0, $s0, 1
	ori	$s3, $zero, 5
	ori	$s4, $zero, 48
	move	$s5, $fp
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$s6, $s0, -1
	bltz	$s6, .LBB1_19
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$s7, $a0, 0
	slli.d	$a0, $s6, 1
	ldx.hu	$a0, $s7, $a0
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	bltu	$s3, $a0, .LBB1_18
# %bb.7:                                # %cli_hex2int.exit.thread44
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.w	$s6, $a1, -87
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_8:                                # %cli_hex2int.exit
                                        #   in Loop: Header=BB1_4 Depth=1
	blt	$s6, $s4, .LBB1_19
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	addi.d	$s6, $s6, -48
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	ld.b	$s8, $s0, 0
	bltz	$s8, .LBB1_19
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s8, 1
	ldx.hu	$a0, $s7, $a0
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	bltu	$s3, $a0, .LBB1_18
# %bb.13:                               #   in Loop: Header=BB1_4 Depth=1
	addi.w	$a0, $a1, -87
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a0, $s8, -48
.LBB1_15:                               # %cli_hex2int.exit35
                                        #   in Loop: Header=BB1_4 Depth=1
	andi	$a1, $a0, 128
	bnez	$a1, .LBB1_19
# %bb.16:                               #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$a0, $s6, $a0, 4
	st.b	$a0, $s5, 0
	addi.d	$s5, $s5, 1
	addi.w	$s2, $s2, 2
	addi.d	$s0, $s0, 2
	blt	$s2, $s1, .LBB1_4
	b	.LBB1_21
.LBB1_17:
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB1_20
.LBB1_18:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB1_19:                               # %cli_hex2int.exit.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %.loopexit
	move	$fp, $zero
.LBB1_21:                               # %.loopexit
	move	$a0, $fp
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
.Lfunc_end1:
	.size	cli_hex2str, .Lfunc_end1-cli_hex2str
                                        # -- End function
	.globl	cli_hex2num                     # -- Begin function cli_hex2num
	.p2align	5
	.type	cli_hex2num,@function
cli_hex2num:                            # @cli_hex2num
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	andi	$a1, $a0, 1
	bnez	$a1, .LBB2_10
# %bb.1:                                # %.preheader
	move	$s0, $zero
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB2_11
# %bb.2:                                # %.lr.ph.preheader
	bstrpick.d	$s1, $a0, 30, 0
	ori	$s2, $zero, 5
	ori	$s3, $zero, 48
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	slli.w	$a1, $s0, 4
	or	$s0, $a0, $a1
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 1
	beqz	$s1, .LBB2_11
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$s4, $fp, 0
	bltz	$s4, .LBB2_11
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB2_8
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	bltu	$s2, $a0, .LBB2_12
# %bb.7:                                # %cli_hex2int.exit.thread16
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.w	$a0, $a1, -87
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_8:                                # %cli_hex2int.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	andi	$a0, $s4, 255
	bltu	$a0, $s3, .LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=1
	addi.w	$a0, $s4, -48
	b	.LBB2_3
.LBB2_10:
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
.LBB2_11:                               # %cli_hex2int.exit.thread
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB2_12:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB2_11
.Lfunc_end2:
	.size	cli_hex2num, .Lfunc_end2-cli_hex2num
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function cli_str2hex
.LCPI3_0:
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	30                              # 0x1e
.LCPI3_1:
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	22                              # 0x16
.LCPI3_2:
	.word	8                               # 0x8
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	14                              # 0xe
.LCPI3_3:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	6                               # 0x6
	.text
	.globl	cli_str2hex
	.p2align	5
	.type	cli_str2hex,@function
cli_str2hex:                            # @cli_str2hex
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
	move	$s0, $a1
	move	$s3, $a0
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_8
# %bb.1:
	beqz	$s0, .LBB3_8
# %bb.2:                                # %iter.check
	bstrpick.d	$s4, $s0, 31, 0
	addi.w	$a3, $s0, -8
	lu12i.w	$a1, 524287
	ori	$a4, $a1, 4088
	pcalau12i	$a1, %pc_hi20(.L__const.cli_str2hex.HEX)
	addi.d	$a1, $a1, %pc_lo12(.L__const.cli_str2hex.HEX)
	bltu	$a4, $a3, .LBB3_5
# %bb.3:                                # %vector.memcheck
	alsl.d	$a3, $s4, $a0, 1
	bgeu	$s3, $a3, .LBB3_9
# %bb.4:                                # %vector.memcheck
	add.d	$a3, $s3, $s4
	bgeu	$a0, $a3, .LBB3_9
.LBB3_5:
	move	$s5, $zero
	move	$a4, $zero
.LBB3_6:                                # %.lr.ph.preheader
	add.d	$a5, $s3, $s5
	sub.d	$a2, $s4, $s5
	.p2align	4, , 16
.LBB3_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a5, 0
	srli.d	$a3, $a3, 4
	ldx.b	$a3, $a1, $a3
	bstrpick.d	$a6, $a4, 31, 0
	stx.b	$a3, $a0, $a6
	ld.bu	$a3, $a5, 0
	andi	$a3, $a3, 15
	ldx.b	$a3, $a1, $a3
	addi.d	$a6, $a4, 1
	bstrpick.d	$a6, $a6, 31, 0
	stx.b	$a3, $a0, $a6
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 1
	bnez	$a2, .LBB3_7
.LBB3_8:                                # %.loopexit
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
.LBB3_9:                                # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	pcalau12i	$a5, %pc_hi20(.LCPI3_2)
	pcalau12i	$a4, %pc_hi20(.LCPI3_3)
	vrepli.b	$vr0, 0
	bgeu	$s0, $a3, .LBB3_14
# %bb.10:
	move	$s5, $zero
	move	$a6, $zero
.LBB3_11:                               # %vec.epilog.ph
	move	$a2, $s5
	bstrpick.d	$a3, $s4, 31, 3
	slli.d	$s5, $a3, 3
	vld	$vr1, $a5, %pc_lo12(.LCPI3_2)
	vld	$vr2, $a4, %pc_lo12(.LCPI3_3)
	slli.d	$a4, $a3, 4
	vreplgr2vr.w	$vr3, $a6
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr2, $vr3, $vr2
	sub.d	$a5, $a2, $s5
	add.d	$a6, $s3, $a2
	.p2align	4, , 16
.LBB3_12:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a6, 0
	vinsgr2vr.d	$vr3, $a2, 0
	vsrli.b	$vr4, $vr3, 4
	vpickve2gr.d	$a2, $vr4, 0
	srli.d	$a3, $a2, 56
	bstrpick.d	$a7, $a2, 51, 48
	bstrpick.d	$t0, $a2, 43, 40
	bstrpick.d	$t1, $a2, 35, 32
	bstrpick.d	$t2, $a2, 27, 24
	bstrpick.d	$t3, $a2, 19, 16
	bstrpick.d	$t4, $a2, 11, 8
	andi	$a2, $a2, 15
	ldx.b	$a2, $a1, $a2
	ldx.b	$t4, $a1, $t4
	ldx.b	$t3, $a1, $t3
	ldx.b	$t2, $a1, $t2
	ldx.b	$t1, $a1, $t1
	ldx.b	$t0, $a1, $t0
	ldx.b	$a7, $a1, $a7
	ldx.b	$a3, $a1, $a3
	vilvh.w	$vr4, $vr0, $vr1
	vilvl.w	$vr5, $vr0, $vr1
	vilvh.w	$vr6, $vr0, $vr2
	vilvl.w	$vr7, $vr0, $vr2
	vpickve2gr.d	$t5, $vr7, 0
	vpickve2gr.d	$t6, $vr7, 1
	vpickve2gr.d	$t7, $vr6, 0
	vpickve2gr.d	$t8, $vr6, 1
	vpickve2gr.d	$fp, $vr5, 0
	vpickve2gr.d	$s0, $vr5, 1
	vpickve2gr.d	$s1, $vr4, 0
	vpickve2gr.d	$s2, $vr4, 1
	stx.b	$a2, $a0, $t5
	stx.b	$t4, $a0, $t6
	stx.b	$t3, $a0, $t7
	stx.b	$t2, $a0, $t8
	stx.b	$t1, $a0, $fp
	stx.b	$t0, $a0, $s0
	stx.b	$a7, $a0, $s1
	stx.b	$a3, $a0, $s2
	vpickve2gr.d	$a2, $vr3, 0
	vandi.b	$vr3, $vr3, 15
	vpickve2gr.d	$a3, $vr3, 0
	srli.d	$a7, $a3, 56
	bstrpick.d	$t0, $a2, 51, 48
	bstrpick.d	$t1, $a2, 43, 40
	bstrpick.d	$t2, $a2, 35, 32
	bstrpick.d	$t3, $a2, 27, 24
	bstrpick.d	$t4, $a2, 19, 16
	bstrpick.d	$a2, $a2, 11, 8
	andi	$a3, $a3, 15
	ldx.b	$a3, $a1, $a3
	ldx.b	$a2, $a1, $a2
	ldx.b	$t4, $a1, $t4
	ldx.b	$t3, $a1, $t3
	ldx.b	$t2, $a1, $t2
	ldx.b	$t1, $a1, $t1
	ldx.b	$t0, $a1, $t0
	ldx.b	$a7, $a1, $a7
	vbitseti.w	$vr3, $vr2, 0
	vbitseti.w	$vr4, $vr1, 0
	vilvh.w	$vr5, $vr0, $vr4
	vilvl.w	$vr4, $vr0, $vr4
	vilvh.w	$vr6, $vr0, $vr3
	vilvl.w	$vr3, $vr0, $vr3
	vpickve2gr.d	$t5, $vr3, 0
	vpickve2gr.d	$t6, $vr3, 1
	vpickve2gr.d	$t7, $vr6, 0
	vpickve2gr.d	$t8, $vr6, 1
	vpickve2gr.d	$fp, $vr4, 0
	vpickve2gr.d	$s0, $vr4, 1
	vpickve2gr.d	$s1, $vr5, 0
	vpickve2gr.d	$s2, $vr5, 1
	stx.b	$a3, $a0, $t5
	stx.b	$a2, $a0, $t6
	stx.b	$t4, $a0, $t7
	stx.b	$t3, $a0, $t8
	stx.b	$t2, $a0, $fp
	stx.b	$t1, $a0, $s0
	stx.b	$t0, $a0, $s1
	stx.b	$a7, $a0, $s2
	vaddi.wu	$vr2, $vr2, 16
	vaddi.wu	$vr1, $vr1, 16
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB3_12
# %bb.13:                               # %vec.epilog.middle.block
	bne	$s5, $s4, .LBB3_6
	b	.LBB3_8
.LBB3_14:                               # %vector.ph
	andi	$a2, $s4, 8
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a6, $s4, 31, 4
	pcalau12i	$a3, %pc_hi20(.LCPI3_0)
	vld	$vr1, $a3, %pc_lo12(.LCPI3_0)
	pcalau12i	$a3, %pc_hi20(.LCPI3_1)
	vld	$vr2, $a3, %pc_lo12(.LCPI3_1)
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	vld	$vr3, $a5, %pc_lo12(.LCPI3_2)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	vld	$vr4, $a4, %pc_lo12(.LCPI3_3)
	slli.d	$t1, $a6, 4
	slli.d	$a2, $a6, 5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	vrepli.w	$vr5, 32
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	move	$t0, $s3
	st.d	$t1, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $t0, 0
	vsrli.b	$vr7, $vr6, 4
	vilvh.b	$vr8, $vr0, $vr7
	vilvh.h	$vr9, $vr0, $vr8
	vilvh.w	$vr10, $vr0, $vr9
	vilvl.w	$vr9, $vr0, $vr9
	vilvl.h	$vr8, $vr0, $vr8
	vilvh.w	$vr11, $vr0, $vr8
	vilvl.w	$vr8, $vr0, $vr8
	vilvl.b	$vr7, $vr0, $vr7
	vilvh.h	$vr12, $vr0, $vr7
	vilvh.w	$vr13, $vr0, $vr12
	vilvl.w	$vr12, $vr0, $vr12
	vilvl.h	$vr7, $vr0, $vr7
	vilvh.w	$vr14, $vr0, $vr7
	vilvl.w	$vr7, $vr0, $vr7
	vpickve2gr.d	$t2, $vr7, 0
	vpickve2gr.d	$t3, $vr7, 1
	vpickve2gr.d	$t4, $vr14, 0
	vpickve2gr.d	$t5, $vr14, 1
	vpickve2gr.d	$t6, $vr12, 0
	vpickve2gr.d	$t7, $vr12, 1
	vpickve2gr.d	$t8, $vr13, 0
	vpickve2gr.d	$s0, $vr13, 1
	vpickve2gr.d	$s1, $vr8, 0
	vpickve2gr.d	$s2, $vr8, 1
	vpickve2gr.d	$s3, $vr11, 0
	vpickve2gr.d	$s4, $vr11, 1
	vpickve2gr.d	$s5, $vr9, 0
	vpickve2gr.d	$s6, $vr9, 1
	vpickve2gr.d	$s7, $vr10, 0
	vpickve2gr.d	$s8, $vr10, 1
	ldx.b	$t2, $a1, $t2
	ldx.b	$t3, $a1, $t3
	ldx.b	$t4, $a1, $t4
	ldx.b	$t5, $a1, $t5
	ldx.b	$t6, $a1, $t6
	ldx.b	$t7, $a1, $t7
	ldx.b	$t8, $a1, $t8
	ldx.b	$s0, $a1, $s0
	ldx.b	$s1, $a1, $s1
	ldx.b	$s2, $a1, $s2
	ldx.b	$s3, $a1, $s3
	ldx.b	$s4, $a1, $s4
	ldx.b	$s5, $a1, $s5
	ldx.b	$s6, $a1, $s6
	ldx.b	$s7, $a1, $s7
	ldx.b	$s8, $a1, $s8
	vilvh.w	$vr7, $vr0, $vr1
	vilvl.w	$vr8, $vr0, $vr1
	vilvh.w	$vr9, $vr0, $vr2
	vilvl.w	$vr10, $vr0, $vr2
	vilvh.w	$vr11, $vr0, $vr3
	vilvl.w	$vr12, $vr0, $vr3
	vilvh.w	$vr13, $vr0, $vr4
	vilvl.w	$vr14, $vr0, $vr4
	vpickve2gr.d	$ra, $vr14, 0
	stx.b	$t2, $a0, $ra
	vpickve2gr.d	$t2, $vr14, 1
	vpickve2gr.d	$ra, $vr13, 0
	stx.b	$t3, $a0, $t2
	vpickve2gr.d	$t2, $vr13, 1
	vpickve2gr.d	$t3, $vr12, 0
	stx.b	$t4, $a0, $ra
	vpickve2gr.d	$t4, $vr12, 1
	vpickve2gr.d	$ra, $vr11, 0
	stx.b	$t5, $a0, $t2
	vpickve2gr.d	$t2, $vr11, 1
	vpickve2gr.d	$t5, $vr10, 0
	stx.b	$t6, $a0, $t3
	vpickve2gr.d	$t3, $vr10, 1
	vpickve2gr.d	$t6, $vr9, 0
	stx.b	$t7, $a0, $t4
	vpickve2gr.d	$t4, $vr9, 1
	vpickve2gr.d	$t7, $vr8, 0
	stx.b	$t8, $a0, $ra
	vpickve2gr.d	$t8, $vr8, 1
	vpickve2gr.d	$ra, $vr7, 0
	stx.b	$s0, $a0, $t2
	vpickve2gr.d	$t2, $vr7, 1
	stx.b	$s1, $a0, $t5
	stx.b	$s2, $a0, $t3
	stx.b	$s3, $a0, $t6
	stx.b	$s4, $a0, $t4
	stx.b	$s5, $a0, $t7
	stx.b	$s6, $a0, $t8
	stx.b	$s7, $a0, $ra
	stx.b	$s8, $a0, $t2
	vandi.b	$vr6, $vr6, 15
	vilvh.b	$vr7, $vr0, $vr6
	vilvh.h	$vr8, $vr0, $vr7
	vilvh.w	$vr9, $vr0, $vr8
	vilvl.w	$vr8, $vr0, $vr8
	vilvl.h	$vr7, $vr0, $vr7
	vilvh.w	$vr10, $vr0, $vr7
	vilvl.w	$vr7, $vr0, $vr7
	vilvl.b	$vr6, $vr0, $vr6
	vilvh.h	$vr11, $vr0, $vr6
	vilvh.w	$vr12, $vr0, $vr11
	vilvl.w	$vr11, $vr0, $vr11
	vilvl.h	$vr6, $vr0, $vr6
	vilvh.w	$vr13, $vr0, $vr6
	vilvl.w	$vr6, $vr0, $vr6
	vpickve2gr.d	$t2, $vr6, 0
	vpickve2gr.d	$t3, $vr6, 1
	vpickve2gr.d	$t4, $vr13, 0
	vpickve2gr.d	$t5, $vr13, 1
	vpickve2gr.d	$t6, $vr11, 0
	vpickve2gr.d	$t7, $vr11, 1
	vpickve2gr.d	$t8, $vr12, 0
	vpickve2gr.d	$s0, $vr12, 1
	vpickve2gr.d	$s1, $vr7, 0
	vpickve2gr.d	$s2, $vr7, 1
	vpickve2gr.d	$s3, $vr10, 0
	vpickve2gr.d	$s4, $vr10, 1
	vpickve2gr.d	$s5, $vr8, 0
	vpickve2gr.d	$s6, $vr8, 1
	vpickve2gr.d	$s7, $vr9, 0
	vpickve2gr.d	$s8, $vr9, 1
	ldx.b	$ra, $a1, $t2
	ldx.b	$a7, $a1, $t3
	ldx.b	$a6, $a1, $t4
	ldx.b	$a4, $a1, $t5
	ldx.b	$a5, $a1, $t6
	ldx.b	$a2, $a1, $t7
	ldx.b	$fp, $a1, $t8
	ldx.b	$a3, $a1, $s0
	ldx.b	$s0, $a1, $s1
	ldx.b	$t8, $a1, $s2
	ldx.b	$t7, $a1, $s3
	ldx.b	$t6, $a1, $s4
	ldx.b	$t5, $a1, $s5
	ldx.b	$t4, $a1, $s6
	ldx.b	$t3, $a1, $s7
	ldx.b	$t2, $a1, $s8
	vbitseti.w	$vr6, $vr4, 0
	vilvl.w	$vr7, $vr0, $vr6
	vpickve2gr.d	$s1, $vr7, 0
	stx.b	$ra, $a0, $s1
	vpickve2gr.d	$s1, $vr7, 1
	stx.b	$a7, $a0, $s1
	vilvh.w	$vr6, $vr0, $vr6
	vpickve2gr.d	$a7, $vr6, 0
	stx.b	$a6, $a0, $a7
	vpickve2gr.d	$a6, $vr6, 1
	stx.b	$a4, $a0, $a6
	vbitseti.w	$vr6, $vr3, 0
	vilvl.w	$vr7, $vr0, $vr6
	vpickve2gr.d	$a4, $vr7, 0
	stx.b	$a5, $a0, $a4
	vpickve2gr.d	$a4, $vr7, 1
	stx.b	$a2, $a0, $a4
	vilvh.w	$vr6, $vr0, $vr6
	vpickve2gr.d	$a2, $vr6, 0
	stx.b	$fp, $a0, $a2
	vpickve2gr.d	$a2, $vr6, 1
	stx.b	$a3, $a0, $a2
	vbitseti.w	$vr6, $vr2, 0
	vilvl.w	$vr7, $vr0, $vr6
	vpickve2gr.d	$a2, $vr7, 0
	stx.b	$s0, $a0, $a2
	vpickve2gr.d	$a2, $vr7, 1
	stx.b	$t8, $a0, $a2
	vilvh.w	$vr6, $vr0, $vr6
	vpickve2gr.d	$a2, $vr6, 0
	stx.b	$t7, $a0, $a2
	vpickve2gr.d	$a2, $vr6, 1
	stx.b	$t6, $a0, $a2
	vbitseti.w	$vr6, $vr1, 0
	vilvl.w	$vr7, $vr0, $vr6
	vpickve2gr.d	$a2, $vr7, 0
	stx.b	$t5, $a0, $a2
	vpickve2gr.d	$a2, $vr7, 1
	stx.b	$t4, $a0, $a2
	vilvh.w	$vr6, $vr0, $vr6
	vpickve2gr.d	$a2, $vr6, 0
	stx.b	$t3, $a0, $a2
	vpickve2gr.d	$a2, $vr6, 1
	stx.b	$t2, $a0, $a2
	vadd.w	$vr4, $vr4, $vr5
	vadd.w	$vr3, $vr3, $vr5
	vadd.w	$vr2, $vr2, $vr5
	vadd.w	$vr1, $vr1, $vr5
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 16
	bnez	$t1, .LBB3_15
# %bb.16:                               # %middle.block
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	beq	$s5, $s4, .LBB3_8
# %bb.17:                               # %vec.epilog.iter.check
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	bnez	$a2, .LBB3_19
# %bb.18:
	slli.d	$a4, $s5, 1
	b	.LBB3_6
.LBB3_19:
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_11
.Lfunc_end3:
	.size	cli_str2hex, .Lfunc_end3-cli_str2hex
                                        # -- End function
	.globl	cli_utf16toascii                # -- Begin function cli_utf16toascii
	.p2align	5
	.type	cli_utf16toascii,@function
cli_utf16toascii:                       # @cli_utf16toascii
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB4_9
.LBB4_2:
	move	$fp, $a0
	bstrpick.d	$s0, $a1, 31, 1
	addi.d	$a0, $s0, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_9
# %bb.3:                                # %iter.check
	addi.d	$a1, $zero, -1
	alsl.w	$a2, $s0, $a1, 1
	bstrpick.d	$a1, $a2, 31, 1
	ori	$a3, $zero, 14
	addi.d	$a1, $a1, 1
	bltu	$a2, $a3, .LBB4_6
# %bb.4:                                # %vector.memcheck
	slli.d	$a3, $s0, 1
	addi.d	$a3, $a3, -2
	bstrpick.d	$a3, $a3, 31, 1
	alsl.d	$a3, $a3, $fp, 1
	addi.d	$a3, $a3, 2
	bgeu	$a0, $a3, .LBB4_11
# %bb.5:                                # %vector.memcheck
	add.d	$a3, $a0, $a1
	bgeu	$fp, $a3, .LBB4_11
.LBB4_6:
	move	$a3, $zero
	move	$a2, $zero
.LBB4_7:                                # %.lr.ph.preheader
	add.d	$a3, $a3, $fp
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a3, 0
	slli.d	$a5, $a4, 4
	stx.b	$a5, $a0, $a2
	ld.b	$a5, $a3, -1
	alsl.d	$a4, $a4, $a5, 4
	stx.b	$a4, $a0, $a2
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 2
	bne	$a1, $a2, .LBB4_8
	b	.LBB4_10
.LBB4_9:
	move	$a0, $zero
.LBB4_10:                               # %.loopexit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB4_11:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 30
	bgeu	$a2, $a3, .LBB4_16
# %bb.12:
	move	$a2, $zero
.LBB4_13:                               # %vec.epilog.ph
	move	$a4, $a2
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a2, $a3, 3
	slli.d	$a3, $a3, 4
	alsl.d	$a5, $a4, $fp, 1
	addi.d	$a5, $a5, 7
	.p2align	4, , 16
.LBB4_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a5, -6
	ld.b	$a7, $a5, -4
	ld.b	$t0, $a5, -2
	ld.b	$t1, $a5, 0
	ld.b	$t2, $a5, 2
	ld.b	$t3, $a5, 4
	ld.b	$t4, $a5, 6
	ld.b	$t5, $a5, 8
	vinsgr2vr.b	$vr0, $a6, 0
	vinsgr2vr.b	$vr0, $a7, 1
	vinsgr2vr.b	$vr0, $t0, 2
	vinsgr2vr.b	$vr0, $t1, 3
	vinsgr2vr.b	$vr0, $t2, 4
	vinsgr2vr.b	$vr0, $t3, 5
	vinsgr2vr.b	$vr0, $t4, 6
	vinsgr2vr.b	$vr0, $t5, 7
	vslli.b	$vr0, $vr0, 4
	add.d	$a6, $a0, $a4
	ld.b	$a7, $a5, -7
	ld.b	$t0, $a5, -5
	ld.b	$t1, $a5, -3
	ld.b	$t2, $a5, -1
	ld.b	$t3, $a5, 1
	ld.b	$t4, $a5, 3
	ld.b	$t5, $a5, 5
	ld.b	$t6, $a5, 7
	vinsgr2vr.b	$vr1, $a7, 0
	vinsgr2vr.b	$vr1, $t0, 1
	vinsgr2vr.b	$vr1, $t1, 2
	vinsgr2vr.b	$vr1, $t2, 3
	vinsgr2vr.b	$vr1, $t3, 4
	vinsgr2vr.b	$vr1, $t4, 5
	vinsgr2vr.b	$vr1, $t5, 6
	vinsgr2vr.b	$vr1, $t6, 7
	vadd.b	$vr0, $vr1, $vr0
	vstelm.d	$vr0, $a6, 0, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	bne	$a2, $a4, .LBB4_14
# %bb.15:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB4_7
	b	.LBB4_10
.LBB4_16:                               # %vector.ph
	move	$a4, $zero
	andi	$a3, $a1, 8
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a5, $fp, 15
	.p2align	4, , 16
.LBB4_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a5, -14
	ld.b	$a7, $a5, -12
	ld.b	$t0, $a5, -10
	ld.b	$t1, $a5, -8
	ld.b	$t2, $a5, -6
	ld.b	$t3, $a5, -4
	ld.b	$t4, $a5, -2
	ld.b	$t5, $a5, 0
	ld.b	$t6, $a5, 2
	ld.b	$t7, $a5, 4
	ld.b	$t8, $a5, 6
	ld.b	$s0, $a5, 8
	ld.b	$s1, $a5, 10
	ld.b	$s2, $a5, 12
	ld.b	$s3, $a5, 14
	ld.b	$s4, $a5, 16
	vinsgr2vr.b	$vr0, $a6, 0
	vinsgr2vr.b	$vr0, $a7, 1
	vinsgr2vr.b	$vr0, $t0, 2
	vinsgr2vr.b	$vr0, $t1, 3
	vinsgr2vr.b	$vr0, $t2, 4
	vinsgr2vr.b	$vr0, $t3, 5
	vinsgr2vr.b	$vr0, $t4, 6
	vinsgr2vr.b	$vr0, $t5, 7
	vinsgr2vr.b	$vr0, $t6, 8
	vinsgr2vr.b	$vr0, $t7, 9
	vinsgr2vr.b	$vr0, $t8, 10
	vinsgr2vr.b	$vr0, $s0, 11
	vinsgr2vr.b	$vr0, $s1, 12
	vinsgr2vr.b	$vr0, $s2, 13
	vinsgr2vr.b	$vr0, $s3, 14
	vinsgr2vr.b	$vr0, $s4, 15
	vslli.b	$vr0, $vr0, 4
	ld.b	$a6, $a5, -15
	ld.b	$a7, $a5, -13
	ld.b	$t0, $a5, -11
	ld.b	$t1, $a5, -9
	ld.b	$t2, $a5, -7
	ld.b	$t3, $a5, -5
	ld.b	$t4, $a5, -3
	ld.b	$t5, $a5, -1
	ld.b	$t6, $a5, 1
	ld.b	$t7, $a5, 3
	ld.b	$t8, $a5, 5
	ld.b	$s0, $a5, 7
	ld.b	$s1, $a5, 9
	ld.b	$s2, $a5, 11
	ld.b	$s3, $a5, 13
	ld.b	$s4, $a5, 15
	vinsgr2vr.b	$vr1, $a6, 0
	vinsgr2vr.b	$vr1, $a7, 1
	vinsgr2vr.b	$vr1, $t0, 2
	vinsgr2vr.b	$vr1, $t1, 3
	vinsgr2vr.b	$vr1, $t2, 4
	vinsgr2vr.b	$vr1, $t3, 5
	vinsgr2vr.b	$vr1, $t4, 6
	vinsgr2vr.b	$vr1, $t5, 7
	vinsgr2vr.b	$vr1, $t6, 8
	vinsgr2vr.b	$vr1, $t7, 9
	vinsgr2vr.b	$vr1, $t8, 10
	vinsgr2vr.b	$vr1, $s0, 11
	vinsgr2vr.b	$vr1, $s1, 12
	vinsgr2vr.b	$vr1, $s2, 13
	vinsgr2vr.b	$vr1, $s3, 14
	vinsgr2vr.b	$vr1, $s4, 15
	vadd.b	$vr0, $vr1, $vr0
	vstx	$vr0, $a0, $a4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 32
	bne	$a2, $a4, .LBB4_17
# %bb.18:                               # %middle.block
	beq	$a2, $a1, .LBB4_10
# %bb.19:                               # %vec.epilog.iter.check
	bnez	$a3, .LBB4_13
# %bb.20:
	slli.d	$a3, $a2, 1
	b	.LBB4_7
.Lfunc_end4:
	.size	cli_utf16toascii, .Lfunc_end4-cli_utf16toascii
                                        # -- End function
	.globl	cli_strbcasestr                 # -- Begin function cli_strbcasestr
	.p2align	5
	.type	cli_strbcasestr,@function
cli_strbcasestr:                        # @cli_strbcasestr
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bge	$s2, $a1, .LBB5_2
# %bb.1:
	move	$a0, $zero
	b	.LBB5_3
.LBB5_2:
	sub.d	$a0, $s1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
.LBB5_3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	cli_strbcasestr, .Lfunc_end5-cli_strbcasestr
                                        # -- End function
	.globl	cli_chomp                       # -- Begin function cli_chomp
	.p2align	5
	.type	cli_chomp,@function
cli_chomp:                              # @cli_chomp
# %bb.0:
	beqz	$a0, .LBB6_9
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB6_8
# %bb.2:                                # %.preheader
	blez	$a0, .LBB6_7
# %bb.3:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $a1, 30, 0
	addi.d	$a1, $fp, -1
	ori	$a2, $zero, 13
	ori	$a3, $zero, 1
	ori	$a4, $zero, 10
	move	$a5, $a0
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                # %.critedge2
                                        #   in Loop: Header=BB6_5 Depth=1
	stx.b	$zero, $a1, $a5
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a5, 1
	addi.w	$a0, $a0, -1
	bgeu	$a3, $a6, .LBB6_8
.LBB6_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a6, $a1, $a5
	beq	$a6, $a2, .LBB6_4
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB6_5 Depth=1
	beq	$a6, $a4, .LBB6_4
.LBB6_7:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_8:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_9:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end6:
	.size	cli_chomp, .Lfunc_end6-cli_chomp
                                        # -- End function
	.globl	cli_strtok                      # -- Begin function cli_strtok
	.p2align	5
	.type	cli_strtok,@function
cli_strtok:                             # @cli_strtok
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
	move	$s0, $a0
	ld.bu	$a0, $a0, 0
	move	$fp, $a2
	move	$s2, $zero
	beqz	$a0, .LBB7_10
# %bb.1:
	move	$s1, $a1
	beqz	$a1, .LBB7_10
# %bb.2:                                # %.lr.ph.preheader
	move	$s2, $zero
	move	$s3, $zero
	addi.d	$s4, $s0, 1
	.p2align	4, , 16
.LBB7_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_8
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	addi.w	$s3, $s3, 1
	add.d	$s5, $s4, $s2
	.p2align	4, , 16
.LBB7_5:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s5, 0
	move	$s6, $s2
	beqz	$a0, .LBB7_7
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=2
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s6, 1
	addi.d	$s5, $s5, 1
	bnez	$a0, .LBB7_5
.LBB7_7:                                #   in Loop: Header=BB7_3 Depth=1
	move	$s2, $s6
.LBB7_8:                                # %.critedge
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.w	$s2, $s2, 1
	ldx.bu	$a0, $s0, $s2
	beqz	$a0, .LBB7_10
# %bb.9:                                # %.critedge
                                        #   in Loop: Header=BB7_3 Depth=1
	bne	$s3, $s1, .LBB7_3
.LBB7_10:                               # %._crit_edge
	beqz	$a0, .LBB7_17
# %bb.11:                               # %.lr.ph60.preheader
	add.d	$s1, $s0, $s2
	add.d	$a1, $s2, $s0
	addi.d	$s3, $a1, 1
	move	$s0, $s2
	.p2align	4, , 16
.LBB7_12:                               # %.lr.ph60
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=1
	ld.bu	$a0, $s3, 0
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, 1
	bnez	$a0, .LBB7_12
.LBB7_14:                               # %._crit_edge61
	beq	$s0, $s2, .LBB7_17
# %bb.15:
	sub.w	$fp, $s0, $s2
	addi.w	$a0, $fp, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_17
# %bb.16:
	move	$s0, $a0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	stx.b	$zero, $s0, $fp
	b	.LBB7_18
.LBB7_17:
	move	$a0, $zero
.LBB7_18:
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
.Lfunc_end7:
	.size	cli_strtok, .Lfunc_end7-cli_strtok
                                        # -- End function
	.globl	cli_strtokbuf                   # -- Begin function cli_strtokbuf
	.p2align	5
	.type	cli_strtokbuf,@function
cli_strtokbuf:                          # @cli_strtokbuf
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
	move	$s1, $a0
	ld.bu	$a0, $a0, 0
	move	$fp, $a3
	move	$s0, $a2
	move	$s3, $zero
	beqz	$a0, .LBB8_10
# %bb.1:
	move	$s2, $a1
	beqz	$a1, .LBB8_10
# %bb.2:                                # %.lr.ph.preheader
	move	$s3, $zero
	move	$s4, $zero
	addi.d	$s5, $s1, 1
	.p2align	4, , 16
.LBB8_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_8
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	addi.w	$s4, $s4, 1
	add.d	$s6, $s5, $s3
	.p2align	4, , 16
.LBB8_5:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s6, 0
	move	$s7, $s3
	beqz	$a0, .LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=2
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s7, 1
	addi.d	$s6, $s6, 1
	bnez	$a0, .LBB8_5
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=1
	move	$s3, $s7
.LBB8_8:                                # %.critedge
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.w	$s3, $s3, 1
	ldx.bu	$a0, $s1, $s3
	beqz	$a0, .LBB8_10
# %bb.9:                                # %.critedge
                                        #   in Loop: Header=BB8_3 Depth=1
	bne	$s4, $s2, .LBB8_3
.LBB8_10:                               # %._crit_edge
	beqz	$a0, .LBB8_15
# %bb.11:                               # %.lr.ph54.preheader
	add.d	$s2, $s1, $s3
	add.d	$a1, $s3, $s1
	addi.d	$s4, $a1, 1
	move	$s1, $s3
	.p2align	4, , 16
.LBB8_12:                               # %.lr.ph54
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=1
	ld.bu	$a0, $s4, 0
	addi.w	$s1, $s1, 1
	addi.d	$s4, $s4, 1
	bnez	$a0, .LBB8_12
.LBB8_14:                               # %._crit_edge55
	bne	$s1, $s3, .LBB8_16
.LBB8_15:
	move	$fp, $zero
	b	.LBB8_17
.LBB8_16:
	sub.w	$s0, $s1, $s3
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $fp, $s0
.LBB8_17:
	move	$a0, $fp
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
.Lfunc_end8:
	.size	cli_strtokbuf, .Lfunc_end8-cli_strtokbuf
                                        # -- End function
	.globl	cli_memstr                      # -- Begin function cli_memstr
	.p2align	5
	.type	cli_memstr,@function
cli_memstr:                             # @cli_memstr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	bge	$a1, $a3, .LBB9_2
.LBB9_1:
	move	$fp, $zero
	b	.LBB9_10
.LBB9_2:
	move	$s1, $a2
	move	$fp, $a0
	beq	$a0, $a2, .LBB9_10
# %bb.3:
	move	$s0, $a3
	move	$s3, $a1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $a3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_10
# %bb.4:                                # %.preheader
	ld.b	$s2, $s1, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_1
# %bb.5:                                # %.lr.ph.preheader
	move	$s4, $a0
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $fp, $s4
	add.w	$s3, $s3, $a0
	blt	$s3, $s0, .LBB9_1
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_6 Depth=1
	xor	$a0, $fp, $s4
	sltui	$a0, $a0, 1
	addi.d	$a1, $fp, 1
	masknez	$a2, $s4, $a0
	maskeqz	$a1, $a1, $a0
	or	$fp, $a1, $a2
	sub.w	$s3, $s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB9_6
	b	.LBB9_1
.LBB9_9:
	move	$fp, $s4
.LBB9_10:                               # %.loopexit
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end9:
	.size	cli_memstr, .Lfunc_end9-cli_memstr
                                        # -- End function
	.globl	cli_strrcpy                     # -- Begin function cli_strrcpy
	.p2align	5
	.type	cli_strrcpy,@function
cli_strrcpy:                            # @cli_strrcpy
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB10_5
# %bb.1:
	beqz	$a1, .LBB10_5
# %bb.2:                                # %.preheader.preheader
	addi.d	$a2, $a0, -1
	.p2align	4, , 16
.LBB10_3:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	addi.d	$a0, $a2, 1
	addi.d	$a1, $a1, 1
	st.b	$a3, $a2, 1
	move	$a2, $a0
	bnez	$a3, .LBB10_3
# %bb.4:                                # %.loopexit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_5:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	cli_strrcpy, .Lfunc_end10-cli_strrcpy
                                        # -- End function
	.globl	cli_strtokenize                 # -- Begin function cli_strtokenize
	.p2align	5
	.type	cli_strtokenize,@function
cli_strtokenize:                        # @cli_strtokenize
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a2, .LBB11_6
# %bb.1:                                # %.lr.ph
	move	$fp, $a2
	move	$s0, $a1
	move	$s3, $zero
	slli.d	$a1, $a2, 3
	addi.d	$s1, $a1, -8
	addi.d	$s2, $a3, 8
	.p2align	4, , 16
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s2, -8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_4
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	move	$a1, $a0
	addi.d	$s3, $s3, 1
	addi.d	$a0, $a0, 1
	st.b	$zero, $a1, 0
	addi.d	$s1, $s1, -8
	addi.d	$s2, $s2, 8
	bne	$fp, $s3, .LBB11_2
	b	.LBB11_6
.LBB11_4:                               # %.preheader
	addi.d	$a0, $s3, 1
	bgeu	$a0, $fp, .LBB11_6
# %bb.5:                                # %.lr.ph19.preheader
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB11_6:                               # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	cli_strtokenize, .Lfunc_end11-cli_strtokenize
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cli_hex2si(): Malformed hexstring: %s (length: %u)\n"
	.size	.L.str, 52

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cli_hex2str(): Malformed hexstring: %s (length: %d)\n"
	.size	.L.str.1, 53

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"cli_hex2num(): Malformed hexstring: %s (length: %d)\n"
	.size	.L.str.2, 53

	.type	.L__const.cli_str2hex.HEX,@object # @__const.cli_str2hex.HEX
	.section	.rodata.cst16,"aM",@progbits,16
.L__const.cli_str2hex.HEX:
	.ascii	"0123456789abcdef"
	.size	.L__const.cli_str2hex.HEX, 16

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"cli_utf16toascii: length < 2\n"
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"cli_strrcpy: NULL argument\n"
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"hex2int() translation problem (%d)\n"
	.size	.L.str.5, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
