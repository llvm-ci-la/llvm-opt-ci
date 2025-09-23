	.file	"libclamav_special.c"
	.text
	.globl	cli_check_mydoom_log            # -- Begin function cli_check_mydoom_log
	.p2align	5
	.type	cli_check_mydoom_log,@function
cli_check_mydoom_log:                   # @cli_check_mydoom_log
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 32
	ori	$s1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_12
# %bb.1:
	ld.w	$a0, $sp, 16
	nor	$a0, $a0, $zero
	revb.2w	$a0, $a0
	st.w	$a0, $sp, 16
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 20
	ld.w	$a0, $sp, 16
	vshuf4i.b	$vr0, $vr0, 27
	vreplgr2vr.w	$vr1, $a0
	vxor.v	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr1, $vr1, $vr0
	vreplvei.w	$vr2, $vr0, 2
	vadd.w	$vr1, $vr2, $vr1
	ld.w	$a1, $sp, 36
	vreplvei.w	$vr2, $vr0, 3
	vadd.w	$vr1, $vr2, $vr1
	vpickve2gr.w	$a2, $vr1, 0
	revb.2w	$a1, $a1
	ld.w	$a3, $sp, 40
	xor	$a1, $a1, $a0
	st.w	$a1, $sp, 36
	add.d	$a1, $a1, $a2
	revb.2w	$a2, $a3
	xor	$a2, $a2, $a0
	ld.w	$a3, $sp, 44
	st.w	$a2, $sp, 40
	add.d	$a1, $a2, $a1
	vst	$vr0, $sp, 20
	revb.2w	$a2, $a3
	xor	$a0, $a2, $a0
	st.w	$a0, $sp, 44
	add.w	$a0, $a0, $a1
	nor	$s1, $a0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	bne	$a0, $s1, .LBB0_12
# %bb.2:
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 32
	ori	$s1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_12
# %bb.3:
	ld.w	$a0, $sp, 16
	nor	$a0, $a0, $zero
	revb.2w	$a0, $a0
	st.w	$a0, $sp, 16
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 20
	ld.w	$a0, $sp, 16
	vshuf4i.b	$vr0, $vr0, 27
	vreplgr2vr.w	$vr1, $a0
	vxor.v	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr1, $vr1, $vr0
	vreplvei.w	$vr2, $vr0, 2
	vadd.w	$vr1, $vr2, $vr1
	ld.w	$a1, $sp, 36
	vreplvei.w	$vr2, $vr0, 3
	vadd.w	$vr1, $vr2, $vr1
	vpickve2gr.w	$a2, $vr1, 0
	revb.2w	$a1, $a1
	ld.w	$a3, $sp, 40
	xor	$a1, $a1, $a0
	st.w	$a1, $sp, 36
	add.d	$a1, $a1, $a2
	revb.2w	$a2, $a3
	xor	$a2, $a2, $a0
	ld.w	$a3, $sp, 44
	st.w	$a2, $sp, 40
	add.d	$a1, $a2, $a1
	vst	$vr0, $sp, 20
	revb.2w	$a2, $a3
	xor	$a0, $a2, $a0
	st.w	$a0, $sp, 44
	add.w	$a0, $a0, $a1
	nor	$s1, $a0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	bne	$a0, $s1, .LBB0_12
# %bb.4:
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 32
	ori	$s1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_10
# %bb.5:
	ld.w	$a0, $sp, 16
	nor	$a0, $a0, $zero
	revb.2w	$a0, $a0
	st.w	$a0, $sp, 16
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 20
	ld.w	$a0, $sp, 16
	vshuf4i.b	$vr0, $vr0, 27
	vreplgr2vr.w	$vr1, $a0
	vxor.v	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr1, $vr1, $vr0
	vreplvei.w	$vr2, $vr0, 2
	vadd.w	$vr1, $vr2, $vr1
	ld.w	$a1, $sp, 36
	vreplvei.w	$vr2, $vr0, 3
	vadd.w	$vr1, $vr2, $vr1
	vpickve2gr.w	$a2, $vr1, 0
	revb.2w	$a1, $a1
	ld.w	$a3, $sp, 40
	xor	$a1, $a1, $a0
	st.w	$a1, $sp, 36
	add.d	$a1, $a1, $a2
	revb.2w	$a2, $a3
	xor	$a2, $a2, $a0
	ld.w	$a3, $sp, 44
	st.w	$a2, $sp, 40
	add.d	$a1, $a2, $a1
	vst	$vr0, $sp, 20
	revb.2w	$a2, $a3
	xor	$a0, $a2, $a0
	st.w	$a0, $sp, 44
	add.w	$a0, $a0, $a1
	nor	$s1, $a0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	bne	$a0, $s1, .LBB0_12
# %bb.6:
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 32
	ori	$s1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_10
# %bb.7:
	ld.w	$a0, $sp, 16
	nor	$a0, $a0, $zero
	revb.2w	$a0, $a0
	st.w	$a0, $sp, 16
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 20
	ld.w	$a0, $sp, 16
	vshuf4i.b	$vr0, $vr0, 27
	vreplgr2vr.w	$vr1, $a0
	vxor.v	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr1, $vr1, $vr0
	vreplvei.w	$vr2, $vr0, 2
	vadd.w	$vr1, $vr2, $vr1
	ld.w	$a1, $sp, 36
	vreplvei.w	$vr2, $vr0, 3
	vadd.w	$vr1, $vr2, $vr1
	vpickve2gr.w	$a2, $vr1, 0
	revb.2w	$a1, $a1
	ld.w	$a3, $sp, 40
	xor	$a1, $a1, $a0
	st.w	$a1, $sp, 36
	add.d	$a1, $a1, $a2
	revb.2w	$a2, $a3
	xor	$a2, $a2, $a0
	ld.w	$a3, $sp, 44
	st.w	$a2, $sp, 40
	add.d	$a1, $a2, $a1
	vst	$vr0, $sp, 20
	revb.2w	$a2, $a3
	xor	$a0, $a2, $a0
	st.w	$a0, $sp, 44
	add.w	$a0, $a0, $a1
	nor	$s1, $a0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	bne	$a0, $s1, .LBB0_12
# %bb.8:
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 32
	ori	$s1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_10
# %bb.9:
	ld.w	$a0, $sp, 16
	nor	$a0, $a0, $zero
	revb.2w	$a0, $a0
	st.w	$a0, $sp, 16
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 20
	ld.w	$a0, $sp, 16
	vshuf4i.b	$vr0, $vr0, 27
	vreplgr2vr.w	$vr1, $a0
	vxor.v	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr1, $vr1, $vr0
	vreplvei.w	$vr2, $vr0, 2
	vadd.w	$vr1, $vr2, $vr1
	ld.w	$a1, $sp, 36
	vreplvei.w	$vr2, $vr0, 3
	vadd.w	$vr1, $vr2, $vr1
	vpickve2gr.w	$a2, $vr1, 0
	revb.2w	$a1, $a1
	ld.w	$a3, $sp, 40
	xor	$a1, $a1, $a0
	st.w	$a1, $sp, 36
	add.d	$a1, $a1, $a2
	revb.2w	$a2, $a3
	xor	$a2, $a2, $a0
	ld.w	$a3, $sp, 44
	st.w	$a2, $sp, 40
	add.d	$a1, $a2, $a1
	vst	$vr0, $sp, 20
	revb.2w	$a2, $a3
	xor	$a0, $a2, $a0
	st.w	$a0, $sp, 44
	add.w	$a0, $a0, $a1
	nor	$s0, $a0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	bne	$a0, $s0, .LBB0_12
.LBB0_10:                               # %.thread
	ori	$a0, $zero, 1
	beqz	$fp, .LBB0_13
# %bb.11:
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	st.d	$a1, $fp, 0
	b	.LBB0_13
.LBB0_12:
	move	$a0, $zero
.LBB0_13:                               # %.loopexit
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	cli_check_mydoom_log, .Lfunc_end0-cli_check_mydoom_log
                                        # -- End function
	.globl	cli_check_jpeg_exploit          # -- Begin function cli_check_jpeg_exploit
	.p2align	5
	.type	cli_check_jpeg_exploit,@function
cli_check_jpeg_exploit:                 # @cli_check_jpeg_exploit
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 86
	ori	$a2, $zero, 2
	ori	$s0, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB1_39
# %bb.1:
	ld.bu	$a0, $sp, 86
	ori	$a1, $zero, 255
	move	$s7, $zero
	bne	$a0, $a1, .LBB1_40
# %bb.2:
	ld.bu	$a0, $sp, 87
	ori	$a1, $zero, 216
	bne	$a0, $a1, .LBB1_40
# %bb.3:                                # %.preheader
	addi.d	$a1, $sp, 86
	ori	$a2, $zero, 4
	ori	$s1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB1_39
# %bb.4:                                # %.lr.ph
	ori	$s3, $zero, 255
	addi.w	$s5, $zero, -3
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 316564
	ori	$s6, $a0, 568
	addi.w	$s0, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=1
	add.d	$a0, $s2, $s8
	addi.d	$s2, $a0, -2
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB1_42
.LBB1_6:                                # %.backedge
                                        #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a1, $sp, 86
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB1_39
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
	ld.bu	$a1, $sp, 86
	ld.bu	$a0, $sp, 87
	bne	$a1, $s3, .LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	bne	$a0, $s3, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a2, $a1, -255
	sltui	$a2, $a2, 1
	addi.d	$a3, $a0, -254
	ld.b	$a4, $sp, 88
	sltui	$a3, $a3, 1
	and	$a3, $a2, $a3
	ld.b	$a5, $sp, 89
	andi	$a2, $a4, 255
	sltui	$a4, $a2, 1
	and	$a4, $a3, $a4
	andi	$a3, $a5, 255
	sltui	$a5, $a3, 2
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_41
# %bb.11:                               #   in Loop: Header=BB1_7 Depth=1
	bne	$a1, $s3, .LBB1_41
# %bb.12:                               #   in Loop: Header=BB1_7 Depth=1
	ori	$a1, $zero, 218
	beq	$a0, $a1, .LBB1_39
# %bb.13:                               #   in Loop: Header=BB1_7 Depth=1
	slli.d	$a0, $a2, 8
	or	$s2, $a0, $a3
	ori	$a0, $zero, 2
	bltu	$s2, $a0, .LBB1_40
# %bb.14:                               #   in Loop: Header=BB1_7 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 87
	move	$s8, $a0
	ori	$a0, $zero, 237
	bne	$a1, $a0, .LBB1_5
# %bb.15:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a1, $sp, 90
	ori	$a2, $zero, 14
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB1_5
# %bb.16:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $sp, 90
	ori	$a2, $zero, 14
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_5
# %bb.17:                               #   in Loop: Header=BB1_7 Depth=1
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB1_18:                               #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$a1, $sp, 115
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=2
	ld.w	$a0, $sp, 115
	beq	$a0, $s6, .LBB1_25
# %bb.20:                               #   in Loop: Header=BB1_18 Depth=2
	st.b	$zero, $sp, 119
	addi.d	$a1, $sp, 115
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               #   in Loop: Header=BB1_18 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %jpeg_check_photoshop_8bim.exit
                                        #   in Loop: Header=BB1_18 Depth=2
	move	$s4, $s0
.LBB1_23:                               # %jpeg_check_photoshop_8bim.exit
                                        #   in Loop: Header=BB1_18 Depth=2
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB1_37
# %bb.24:                               # %jpeg_check_photoshop_8bim.exit
                                        #   in Loop: Header=BB1_18 Depth=2
	blt	$s5, $a0, .LBB1_18
	b	.LBB1_37
.LBB1_25:                               #   in Loop: Header=BB1_18 Depth=2
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	move	$s4, $s0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_23
# %bb.26:                               #   in Loop: Header=BB1_18 Depth=2
	ld.h	$a0, $sp, 112
	revb.2h	$a0, $a0
	st.h	$a0, $sp, 112
	bstrpick.d	$a1, $a0, 15, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 111
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	move	$s4, $s0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_23
# %bb.27:                               #   in Loop: Header=BB1_18 Depth=2
	ld.bu	$a0, $sp, 111
	ori	$a1, $a0, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	move	$s4, $s0
	bne	$a0, $s1, .LBB1_23
# %bb.28:                               #   in Loop: Header=BB1_18 Depth=2
	ld.w	$a1, $sp, 104
	revb.2w	$a0, $a1
	st.w	$a0, $sp, 104
	move	$s4, $s0
	beqz	$a1, .LBB1_23
# %bb.29:                               #   in Loop: Header=BB1_18 Depth=2
	andi	$a1, $a0, 1
	beqz	$a1, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_18 Depth=2
	addi.w	$a0, $a0, 1
	st.w	$a0, $sp, 104
.LBB1_31:                               #   in Loop: Header=BB1_18 Depth=2
	ld.hu	$a1, $sp, 112
	ori	$a2, $zero, 1033
	beq	$a1, $a2, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_18 Depth=2
	ori	$a2, $zero, 1036
	bne	$a1, $a2, .LBB1_36
.LBB1_33:                               #   in Loop: Header=BB1_18 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_check_jpeg_exploit)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 1
	bne	$s4, $a0, .LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_18 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_35:                               #   in Loop: Header=BB1_18 Depth=2
	ld.wu	$a0, $sp, 104
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_36:                               #   in Loop: Header=BB1_18 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	b	.LBB1_23
.LBB1_37:                               #   in Loop: Header=BB1_7 Depth=1
	addi.w	$a0, $zero, -1
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB1_5
# %bb.38:                               # %jpeg_check_photoshop.exit
                                        #   in Loop: Header=BB1_7 Depth=1
	beqz	$s4, .LBB1_5
	b	.LBB1_40
.LBB1_39:
	move	$s7, $zero
.LBB1_40:                               # %.loopexit
	move	$a0, $s7
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
.LBB1_41:                               # %.loopexit.split.loop.exit54
	addi.d	$a0, $a4, -1
	ori	$s7, $a0, 1
	b	.LBB1_40
.LBB1_42:
	addi.w	$s7, $zero, -1
	b	.LBB1_40
.Lfunc_end1:
	.size	cli_check_jpeg_exploit, .Lfunc_end1-cli_check_jpeg_exploit
                                        # -- End function
	.globl	cli_check_riff_exploit          # -- Begin function cli_check_riff_exploit
	.p2align	5
	.type	cli_check_riff_exploit,@function
cli_check_riff_exploit:                 # @cli_check_riff_exploit
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 12
	ori	$a2, $zero, 4
	ori	$s0, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB2_10
# %bb.1:
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB2_10
# %bb.2:
	addi.d	$a1, $sp, 4
	ori	$a2, $zero, 4
	ori	$s0, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB2_10
# %bb.3:
	ld.w	$a0, $sp, 12
	lu12i.w	$a1, 287844
	ori	$a1, $a1, 2386
	move	$s0, $zero
	beq	$a0, $a1, .LBB2_9
# %bb.4:
	lu12i.w	$a1, 361572
	ori	$a1, $a1, 2386
	bne	$a0, $a1, .LBB2_11
# %bb.5:                                # %.fold.split
	move	$a0, $zero
	ori	$s0, $zero, 1
	ld.w	$a1, $sp, 4
	lu12i.w	$a2, 320756
	ori	$a2, $a2, 833
	bne	$a1, $a2, .LBB2_10
.LBB2_6:
	ld.w	$a1, $sp, 8
	revb.2w	$a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.w	$a0, $sp, 8
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(riff_read_chunk)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB2_7
# %bb.8:
	ori	$a2, $zero, 1
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $sp, 8
	slt	$a0, $a0, $a1
	masknez	$a1, $s0, $a0
	ori	$a2, $zero, 2
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	b	.LBB2_11
.LBB2_9:
	ori	$a0, $zero, 1
	ld.w	$a1, $sp, 4
	lu12i.w	$a2, 320756
	ori	$a2, $a2, 833
	beq	$a1, $a2, .LBB2_6
.LBB2_10:
	move	$s0, $zero
.LBB2_11:
	move	$a0, $s0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	cli_check_riff_exploit, .Lfunc_end2-cli_check_riff_exploit
                                        # -- End function
	.p2align	5                               # -- Begin function riff_read_chunk
	.type	riff_read_chunk,@function
riff_read_chunk:                        # @riff_read_chunk
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ori	$a3, $zero, 1001
	blt	$a2, $a3, .LBB3_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
.LBB3_2:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_17
.LBB3_3:
	move	$fp, $a0
	move	$s1, $a2
	move	$s0, $a1
	addi.d	$a1, $sp, 20
	ori	$a2, $zero, 4
	ori	$s2, $zero, 4
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB3_16
# %bb.4:
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB3_16
# %bb.5:
	ld.w	$a1, $sp, 16
	move	$a0, $zero
	sltui	$a2, $s0, 1
	revb.2w	$a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	ld.w	$a1, $sp, 20
	or	$a3, $a2, $a3
	lu12i.w	$a2, 328949
	ori	$a4, $a2, 591
	st.w	$a3, $sp, 16
	blt	$a4, $a1, .LBB3_9
# %bb.6:
	lu12i.w	$a2, 132420
	ori	$a2, $a2, 323
	beq	$a1, $a2, .LBB3_12
# %bb.7:
	lu12i.w	$a2, 287844
	ori	$a2, $a2, 2386
	beq	$a1, $a2, .LBB3_17
# %bb.8:
	lu12i.w	$a0, 316708
	ori	$a0, $a0, 3910
	beq	$a1, $a0, .LBB3_12
	b	.LBB3_15
.LBB3_9:
	ori	$a2, $a2, 592
	beq	$a1, $a2, .LBB3_12
# %bb.10:
	lu12i.w	$a2, 361572
	ori	$a2, $a2, 2386
	beq	$a1, $a2, .LBB3_17
# %bb.11:
	lu12i.w	$a0, 345396
	ori	$a0, $a0, 2380
	bne	$a1, $a0, .LBB3_15
.LBB3_12:
	addi.d	$a1, $sp, 12
	ori	$a2, $zero, 4
	ori	$s2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB3_14
# %bb.13:
	addi.w	$a2, $s1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(riff_read_chunk)
	jirl	$ra, $ra, 0
	b	.LBB3_17
.LBB3_14:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	b	.LBB3_2
.LBB3_15:
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $sp, 16
	add.d	$a1, $a0, $a1
	andi	$a2, $a1, 1
	add.d	$s0, $a2, $a1
	bge	$s0, $a0, .LBB3_18
.LBB3_16:
	move	$a0, $zero
.LBB3_17:
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB3_18:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	xor	$a0, $a0, $s0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 2
	sub.d	$a0, $a1, $a0
	b	.LBB3_17
.Lfunc_end3:
	.size	riff_read_chunk, .Lfunc_end3-riff_read_chunk
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in cli_check_mydoom_log()\n"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Mydoom: key: %d\n"
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Mydoom: check: %d\n"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Worm.Mydoom.M.log"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"in cli_check_jpeg_exploit()\n"
	.size	.L.str.4, 29

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"in cli_check_riff_exploit()\n"
	.size	.L.str.5, 29

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Photoshop 3.0"
	.size	.L.str.9, 14

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Found Photoshop segment\n"
	.size	.L.str.10, 25

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"read bim failed\n"
	.size	.L.str.11, 17

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"8BIM"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"missed 8bim: %s\n"
	.size	.L.str.13, 17

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"ID: 0x%.4x\n"
	.size	.L.str.14, 12

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"found thumbnail\n"
	.size	.L.str.15, 17

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Exploit found in thumbnail\n"
	.size	.L.str.16, 28

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"riff_read_chunk: recursion level exceeded\n"
	.size	.L.str.17, 43

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"riff_read_chunk: read list type failed\n"
	.size	.L.str.22, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
