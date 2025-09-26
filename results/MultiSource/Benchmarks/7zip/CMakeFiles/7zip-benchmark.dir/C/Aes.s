	.file	"Aes.c"
	.text
	.globl	AesGenTables                    # -- Begin function AesGenTables
	.p2align	5
	.type	AesGenTables,@function
AesGenTables:                           # @AesGenTables
# %bb.0:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(Sbox)
	addi.d	$a0, $a0, %pc_lo12(Sbox)
	pcalau12i	$a1, %pc_hi20(InvS)
	addi.d	$a1, $a1, %pc_lo12(InvS)
	move	$a2, $zero
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a0, $a2
	ori	$a4, $a2, 1
	vsllwil.hu.bu	$vr1, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vpickve2gr.d	$a5, $vr1, 0
	stx.b	$a2, $a1, $a5
	vpickve2gr.d	$a5, $vr1, 1
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 2
	vshuf4i.b	$vr1, $vr0, 14
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vpickve2gr.d	$a5, $vr1, 0
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 3
	vpickve2gr.d	$a5, $vr1, 1
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 4
	vsrli.d	$vr1, $vr0, 32
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vpickve2gr.d	$a5, $vr1, 0
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 5
	vpickve2gr.d	$a5, $vr1, 1
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 6
	vsrli.d	$vr1, $vr0, 48
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vpickve2gr.d	$a5, $vr1, 0
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 7
	vpickve2gr.d	$a5, $vr1, 1
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 8
	vbsrl.v	$vr1, $vr0, 8
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vpickve2gr.d	$a5, $vr1, 0
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 9
	vpickve2gr.d	$a5, $vr1, 1
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 10
	vbsrl.v	$vr1, $vr0, 10
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vpickve2gr.d	$a5, $vr1, 0
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 11
	vpickve2gr.d	$a5, $vr1, 1
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 12
	vbsrl.v	$vr1, $vr0, 12
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vpickve2gr.d	$a5, $vr1, 0
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 13
	vpickve2gr.d	$a5, $vr1, 1
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 14
	vbsrl.v	$vr0, $vr0, 14
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.du.wu	$vr0, $vr0, 0
	vpickve2gr.d	$a5, $vr0, 0
	stx.b	$a4, $a1, $a5
	ori	$a4, $a2, 15
	vpickve2gr.d	$a5, $vr0, 1
	addi.d	$a2, $a2, 16
	stx.b	$a4, $a1, $a5
	bne	$a2, $a3, .LBB0_1
# %bb.2:                                # %vector.body82.preheader
	pcalau12i	$a2, %pc_hi20(D)
	addi.d	$a2, $a2, %pc_lo12(D)
	ori	$a4, $zero, 2048
	add.d	$a2, $a2, $a4
	pcalau12i	$a3, %pc_hi20(T)
	addi.d	$a5, $a3, %pc_lo12(T)
	move	$a3, $zero
	add.d	$a4, $a5, $a4
	vrepli.b	$vr0, -1
	vrepli.b	$vr1, 0
	vrepli.w	$vr2, 27
	vrepli.w	$vr3, 254
	vrepli.w	$vr4, 64
	vrepli.w	$vr5, 32
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB0_3:                                # %vector.body82
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a6, $a0, $a3
	vinsgr2vr.w	$vr6, $a6, 0
	vsllwil.hu.bu	$vr7, $vr6, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vslli.w	$vr8, $vr7, 1
	vslt.b	$vr6, $vr0, $vr6
	vsllwil.h.b	$vr6, $vr6, 0
	vsllwil.w.h	$vr6, $vr6, 0
	vbitsel.v	$vr6, $vr2, $vr1, $vr6
	vand.v	$vr8, $vr8, $vr3
	vxor.v	$vr6, $vr8, $vr6
	vxor.v	$vr8, $vr6, $vr7
	vslli.w	$vr9, $vr7, 8
	vslli.w	$vr10, $vr7, 16
	vslli.w	$vr11, $vr8, 24
	vor.v	$vr11, $vr11, $vr9
	vor.v	$vr11, $vr11, $vr6
	vor.v	$vr11, $vr11, $vr10
	vst	$vr11, $a4, -2048
	vslli.w	$vr11, $vr6, 8
	vor.v	$vr11, $vr8, $vr11
	vor.v	$vr10, $vr11, $vr10
	vslli.w	$vr11, $vr7, 24
	vor.v	$vr10, $vr10, $vr11
	vst	$vr10, $a4, -1024
	vslli.w	$vr10, $vr8, 8
	vslli.w	$vr12, $vr6, 16
	vor.v	$vr10, $vr10, $vr12
	vor.v	$vr10, $vr10, $vr7
	vor.v	$vr10, $vr10, $vr11
	vst	$vr10, $a4, 0
	vslli.w	$vr8, $vr8, 16
	vslli.w	$vr6, $vr6, 24
	vor.v	$vr6, $vr8, $vr6
	ldx.w	$a6, $a1, $a3
	vor.v	$vr6, $vr6, $vr7
	vor.v	$vr6, $vr6, $vr9
	vst	$vr6, $a4, 1024
	vinsgr2vr.w	$vr6, $a6, 0
	vsllwil.hu.bu	$vr7, $vr6, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vslli.w	$vr8, $vr7, 1
	vslt.b	$vr6, $vr0, $vr6
	vsllwil.h.b	$vr6, $vr6, 0
	vsllwil.w.h	$vr6, $vr6, 0
	vbitsel.v	$vr6, $vr2, $vr1, $vr6
	vand.v	$vr8, $vr8, $vr3
	vxor.v	$vr6, $vr8, $vr6
	vslli.w	$vr8, $vr6, 1
	vand.v	$vr9, $vr7, $vr4
	vseqi.w	$vr9, $vr9, 0
	vandn.v	$vr9, $vr9, $vr2
	vand.v	$vr8, $vr8, $vr3
	vxor.v	$vr8, $vr8, $vr9
	vslli.w	$vr9, $vr8, 1
	vand.v	$vr10, $vr7, $vr5
	vseqi.w	$vr10, $vr10, 0
	vandn.v	$vr10, $vr10, $vr2
	vand.v	$vr9, $vr9, $vr3
	vxor.v	$vr9, $vr9, $vr10
	vxor.v	$vr10, $vr9, $vr7
	vxor.v	$vr11, $vr10, $vr6
	vxor.v	$vr8, $vr9, $vr8
	vxor.v	$vr7, $vr8, $vr7
	vxor.v	$vr6, $vr8, $vr6
	vslli.w	$vr8, $vr10, 8
	vslli.w	$vr9, $vr7, 16
	vor.v	$vr8, $vr9, $vr8
	vslli.w	$vr9, $vr11, 24
	vor.v	$vr8, $vr8, $vr9
	vor.v	$vr8, $vr8, $vr6
	vst	$vr8, $a2, -2048
	vslli.w	$vr8, $vr6, 8
	vslli.w	$vr9, $vr10, 16
	vor.v	$vr8, $vr8, $vr9
	vslli.w	$vr9, $vr7, 24
	vor.v	$vr8, $vr8, $vr9
	vor.v	$vr8, $vr8, $vr11
	vst	$vr8, $a2, -1024
	vslli.w	$vr8, $vr11, 8
	vslli.w	$vr9, $vr6, 16
	vor.v	$vr8, $vr8, $vr9
	vslli.w	$vr9, $vr10, 24
	vor.v	$vr8, $vr8, $vr9
	vor.v	$vr8, $vr8, $vr7
	vst	$vr8, $a2, 0
	vslli.w	$vr7, $vr7, 8
	vslli.w	$vr8, $vr11, 16
	vor.v	$vr7, $vr7, $vr8
	vslli.w	$vr6, $vr6, 24
	vor.v	$vr6, $vr7, $vr6
	vor.v	$vr6, $vr6, $vr10
	vst	$vr6, $a2, 1024
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, 16
	bne	$a3, $a5, .LBB0_3
# %bb.4:                                # %middle.block87
	pcalau12i	$a0, %pc_hi20(g_AesCbc_Encode)
	pcalau12i	$a1, %pc_hi20(AesCbc_Encode)
	addi.d	$a1, $a1, %pc_lo12(AesCbc_Encode)
	st.d	$a1, $a0, %pc_lo12(g_AesCbc_Encode)
	pcalau12i	$a0, %pc_hi20(g_AesCbc_Decode)
	pcalau12i	$a1, %pc_hi20(AesCbc_Decode)
	addi.d	$a1, $a1, %pc_lo12(AesCbc_Decode)
	st.d	$a1, $a0, %pc_lo12(g_AesCbc_Decode)
	pcalau12i	$a0, %pc_hi20(g_AesCtr_Code)
	pcalau12i	$a1, %pc_hi20(AesCtr_Code)
	addi.d	$a1, $a1, %pc_lo12(AesCtr_Code)
	st.d	$a1, $a0, %pc_lo12(g_AesCtr_Code)
	ret
.Lfunc_end0:
	.size	AesGenTables, .Lfunc_end0-AesGenTables
                                        # -- End function
	.globl	AesCbc_Encode                   # -- Begin function AesCbc_Encode
	.p2align	5
	.type	AesCbc_Encode,@function
AesCbc_Encode:                          # @AesCbc_Encode
# %bb.0:
	beqz	$a2, .LBB1_4
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$s2, $a0, 16
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s1, 0
	xor	$a0, $a0, $a1
	st.w	$a0, $s1, 0
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s1, 4
	xor	$a0, $a0, $a1
	st.w	$a0, $s1, 4
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s1, 8
	xor	$a0, $a0, $a1
	st.w	$a0, $s1, 8
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s1, 12
	xor	$a0, $a0, $a1
	st.w	$a0, $s1, 12
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Aes_Encode)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	st.w	$a0, $s0, 0
	ld.w	$a0, $s1, 4
	st.w	$a0, $s0, 4
	ld.w	$a0, $s1, 8
	st.w	$a0, $s0, 8
	ld.w	$a0, $s1, 12
	st.w	$a0, $s0, 12
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 16
	bnez	$fp, .LBB1_2
# %bb.3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_4:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	AesCbc_Encode, .Lfunc_end1-AesCbc_Encode
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function AesCbc_Decode
.LCPI2_0:
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_1:
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_2:
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	10                              # 0xa
	.byte	14                              # 0xe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	AesCbc_Decode
	.p2align	5
	.type	AesCbc_Decode,@function
AesCbc_Decode:                          # @AesCbc_Decode
# %bb.0:
	beqz	$a2, .LBB2_7
# %bb.1:                                # %.lr.ph
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
	pcalau12i	$a3, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_0)
	pcalau12i	$a3, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI2_1)
	pcalau12i	$a3, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI2_2)
	addi.d	$a3, $a0, 16
	lu12i.w	$a4, -4096
	lu32i.d	$a4, 0
	pcalau12i	$a5, %pc_hi20(D)
	addi.d	$a5, $a5, %pc_lo12(D)
	addi.d	$t0, $a5, 2047
	addi.d	$a6, $t0, 1025
	addi.d	$a7, $a5, 1024
	addi.d	$t0, $t0, 1
	pcalau12i	$t1, %pc_hi20(InvS)
	addi.d	$t1, $t1, %pc_lo12(InvS)
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %Aes_Decode.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	bstrpick.d	$t3, $t8, 15, 8
	ldx.bu	$t3, $t1, $t3
	ldx.bu	$s1, $t1, $s1
	slli.d	$t3, $t3, 8
	bstrpick.d	$s2, $t5, 23, 16
	ldx.bu	$s2, $t1, $s2
	bstrpick.d	$s3, $t6, 31, 24
	ldx.b	$s3, $t1, $s3
	or	$t3, $t3, $s1
	slli.d	$s1, $s2, 16
	or	$t3, $t3, $s1
	slli.d	$s1, $s3, 24
	ld.w	$s2, $t2, -16
	bstrpick.d	$s3, $t4, 15, 8
	ldx.bu	$s3, $t1, $s3
	or	$t3, $t3, $s1
	xor	$t3, $t3, $s2
	ldx.bu	$fp, $t1, $fp
	slli.d	$s1, $s3, 8
	bstrpick.d	$s2, $t8, 23, 16
	ldx.bu	$s2, $t1, $s2
	bstrpick.d	$s3, $t5, 31, 24
	ldx.b	$s3, $t1, $s3
	or	$fp, $s1, $fp
	slli.d	$s1, $s2, 16
	or	$fp, $fp, $s1
	slli.d	$s1, $s3, 24
	ld.w	$s2, $t2, -12
	bstrpick.d	$s3, $t6, 15, 8
	ldx.bu	$s3, $t1, $s3
	ldx.bu	$s0, $t1, $s0
	or	$fp, $fp, $s1
	xor	$fp, $fp, $s2
	slli.d	$s1, $s3, 8
	or	$s0, $s1, $s0
	bstrpick.d	$s1, $t4, 23, 16
	ldx.bu	$s1, $t1, $s1
	bstrpick.d	$t8, $t8, 31, 24
	ldx.b	$t8, $t1, $t8
	ld.w	$s2, $a0, 0
	slli.d	$s1, $s1, 16
	or	$s0, $s0, $s1
	slli.d	$t8, $t8, 24
	xor	$t3, $t3, $s2
	ld.w	$s1, $t2, -8
	ldx.bu	$t7, $t1, $t7
	bstrpick.d	$t5, $t5, 15, 8
	ldx.bu	$t5, $t1, $t5
	bstrpick.d	$t6, $t6, 23, 16
	ldx.bu	$t6, $t1, $t6
	bstrpick.d	$t4, $t4, 31, 24
	ldx.b	$t4, $t1, $t4
	ld.w	$t2, $t2, -4
	st.w	$t3, $a1, 0
	ld.w	$t3, $a0, 4
	or	$t8, $s0, $t8
	xor	$t8, $t8, $s1
	slli.d	$t5, $t5, 8
	xor	$t3, $fp, $t3
	st.w	$t3, $a1, 4
	ld.w	$t3, $a0, 8
	or	$t5, $t5, $t7
	slli.d	$t6, $t6, 16
	or	$t5, $t5, $t6
	xor	$t3, $t8, $t3
	st.w	$t3, $a1, 8
	ld.w	$t3, $a0, 12
	slli.d	$t4, $t4, 24
	or	$t4, $t5, $t4
	xor	$t2, $t4, $t2
	xor	$t2, $t2, $t3
	st.w	$t2, $a1, 12
	vst	$vr3, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	beqz	$a2, .LBB2_6
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	vld	$vr3, $a1, 0
	vshuf.b	$vr4, $vr0, $vr3, $vr0
	vsllwil.hu.bu	$vr4, $vr4, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vshuf.b	$vr5, $vr0, $vr3, $vr1
	vsllwil.hu.bu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr5, $vr5, 0
	vslli.w	$vr5, $vr5, 8
	vor.v	$vr4, $vr5, $vr4
	vshuf.b	$vr5, $vr0, $vr3, $vr2
	vsllwil.hu.bu	$vr5, $vr5, 0
	ld.w	$t2, $a3, 0
	vsllwil.wu.hu	$vr5, $vr5, 0
	vslli.w	$vr5, $vr5, 16
	vor.v	$vr4, $vr4, $vr5
	slli.d	$t3, $t2, 3
	addi.d	$t3, $t3, 4
	bstrpick.d	$t3, $t3, 31, 2
	slli.d	$t3, $t3, 4
	vldx	$vr5, $a3, $t3
	vshuf4i.b	$vr3, $vr3, 3
	vslli.w	$vr3, $vr3, 24
	vor.v	$vr3, $vr4, $vr3
	vxor.v	$vr4, $vr5, $vr3
	addi.w	$t3, $t2, -1
	slli.d	$t2, $t2, 5
	bstrpick.d	$t2, $t2, 33, 5
	slli.d	$t2, $t2, 5
	add.d	$t2, $a3, $t2
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpickve2gr.w	$t4, $vr4, 0
	and	$t7, $t4, $a4
	andi	$t4, $t4, 255
	slli.d	$t4, $t4, 2
	ldx.w	$t8, $a5, $t4
	vpickve2gr.w	$fp, $vr4, 1
	and	$t4, $fp, $a4
	srli.d	$t4, $t4, 22
	ldx.w	$t4, $a6, $t4
	ld.w	$t5, $t2, 0
	vpickve2gr.w	$s0, $vr4, 2
	and	$t6, $s0, $a4
	andi	$s0, $s0, 255
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a5, $s0
	vpickve2gr.w	$s1, $vr4, 3
	and	$s2, $s1, $a4
	srli.d	$s2, $s2, 22
	ldx.w	$s2, $a6, $s2
	ld.w	$s3, $t2, 8
	andi	$s1, $s1, 255
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $a5, $s1
	srli.d	$t7, $t7, 22
	ldx.w	$t7, $a6, $t7
	vsrli.w	$vr5, $vr4, 8
	vpickve2gr.b	$s4, $vr5, 12
	andi	$s4, $s4, 255
	slli.d	$s4, $s4, 2
	ldx.w	$s4, $a7, $s4
	andi	$fp, $fp, 255
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a5, $fp
	xor	$t8, $s4, $t8
	vpickve2gr.b	$s4, $vr5, 4
	andi	$s4, $s4, 255
	slli.d	$s4, $s4, 2
	ldx.w	$s4, $a7, $s4
	vpickve2gr.b	$s5, $vr5, 8
	andi	$s5, $s5, 255
	slli.d	$s5, $s5, 2
	ldx.w	$s5, $a7, $s5
	vpickve2gr.b	$s6, $vr5, 0
	andi	$s6, $s6, 255
	slli.d	$s6, $s6, 2
	ldx.w	$s6, $a7, $s6
	ld.w	$s7, $t2, 12
	xor	$s0, $s4, $s0
	xor	$s1, $s5, $s1
	xor	$fp, $s6, $fp
	vsrli.w	$vr4, $vr4, 16
	vpickve2gr.b	$s4, $vr4, 8
	andi	$s4, $s4, 255
	slli.d	$s4, $s4, 2
	ldx.w	$s4, $t0, $s4
	vpickve2gr.b	$s5, $vr4, 0
	andi	$s5, $s5, 255
	slli.d	$s5, $s5, 2
	ldx.w	$s5, $t0, $s5
	vpickve2gr.b	$s6, $vr4, 4
	andi	$s6, $s6, 255
	slli.d	$s6, $s6, 2
	ldx.w	$s6, $t0, $s6
	xor	$t8, $t8, $s4
	xor	$t4, $t8, $t4
	xor	$t4, $t4, $t5
	xor	$t5, $s0, $s5
	xor	$t5, $t5, $s2
	xor	$t5, $t5, $s3
	xor	$t8, $s1, $s6
	xor	$t7, $t8, $t7
	vpickve2gr.b	$t8, $vr4, 12
	andi	$t8, $t8, 255
	slli.d	$t8, $t8, 2
	ldx.w	$s0, $t0, $t8
	srli.d	$t6, $t6, 22
	ldx.w	$t6, $a6, $t6
	ld.w	$s1, $t2, 4
	xor	$t8, $t7, $s7
	xor	$t7, $fp, $s0
	xor	$t6, $t7, $t6
	xor	$t6, $t6, $s1
	andi	$s1, $t4, 255
	andi	$fp, $t6, 255
	andi	$s0, $t5, 255
	andi	$t7, $t8, 255
	beqz	$t3, .LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=2
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $a5, $s1
	and	$s2, $t8, $a4
	srli.d	$s3, $t8, 6
	andi	$s3, $s3, 1020
	ldx.w	$s3, $a7, $s3
	and	$s4, $t5, $a4
	srli.d	$s5, $t5, 14
	andi	$s5, $s5, 1020
	ldx.w	$s5, $t0, $s5
	and	$s6, $t6, $a4
	srli.d	$s6, $s6, 22
	ldx.w	$s6, $a6, $s6
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a5, $s0
	srli.d	$s7, $t6, 6
	andi	$s7, $s7, 1020
	ldx.w	$s7, $a7, $s7
	and	$s8, $t4, $a4
	srli.d	$ra, $t4, 14
	andi	$ra, $ra, 1020
	ldx.w	$ra, $t0, $ra
	srli.d	$s2, $s2, 22
	ldx.w	$s2, $a6, $s2
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a5, $t7
	srli.d	$t5, $t5, 6
	andi	$t5, $t5, 1020
	ldx.w	$t5, $a7, $t5
	srli.d	$t6, $t6, 14
	andi	$t6, $t6, 1020
	ldx.w	$t6, $t0, $t6
	srli.d	$s8, $s8, 22
	ldx.w	$s8, $a6, $s8
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a5, $fp
	srli.d	$t4, $t4, 6
	andi	$t4, $t4, 1020
	ldx.w	$t4, $a7, $t4
	srli.d	$t8, $t8, 14
	andi	$t8, $t8, 1020
	ldx.w	$t8, $t0, $t8
	srli.d	$s4, $s4, 22
	ldx.w	$s4, $a6, $s4
	vinsgr2vr.w	$vr4, $s3, 0
	vinsgr2vr.w	$vr4, $t4, 1
	vinsgr2vr.w	$vr4, $s7, 2
	vinsgr2vr.w	$vr4, $t5, 3
	vinsgr2vr.w	$vr5, $s1, 0
	vinsgr2vr.w	$vr5, $fp, 1
	vinsgr2vr.w	$vr5, $s0, 2
	vinsgr2vr.w	$vr5, $t7, 3
	vxor.v	$vr4, $vr4, $vr5
	vinsgr2vr.w	$vr5, $s5, 0
	vinsgr2vr.w	$vr5, $t8, 1
	vinsgr2vr.w	$vr5, $ra, 2
	vinsgr2vr.w	$vr5, $t6, 3
	vxor.v	$vr4, $vr4, $vr5
	vinsgr2vr.w	$vr5, $s6, 0
	vinsgr2vr.w	$vr5, $s4, 1
	vld	$vr6, $t2, -16
	vinsgr2vr.w	$vr5, $s2, 2
	vinsgr2vr.w	$vr5, $s8, 3
	vxor.v	$vr4, $vr4, $vr5
	vxor.v	$vr4, $vr4, $vr6
	addi.w	$t3, $t3, -1
	addi.d	$t2, $t2, -32
	b	.LBB2_4
.LBB2_6:
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
.LBB2_7:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	AesCbc_Decode, .Lfunc_end2-AesCbc_Decode
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function AesCtr_Code
.LCPI3_0:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	24                              # 0x18
	.text
	.globl	AesCtr_Code
	.p2align	5
	.type	AesCtr_Code,@function
AesCtr_Code:                            # @AesCtr_Code
# %bb.0:
	beqz	$a2, .LBB3_6
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.d	$s2, $s0, 16
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a1, $sp, 32
	move	$a0, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Aes_Encode)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $s1, 0
	addi.d	$a0, $s1, 16
	vreplvei.w	$vr2, $vr0, 1
	vreplvei.w	$vr3, $vr0, 0
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vsrl.w	$vr3, $vr3, $vr4
	vsrl.w	$vr2, $vr2, $vr4
	vpickev.h	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr0, 3
	vreplvei.w	$vr0, $vr0, 2
	vsrl.w	$vr0, $vr0, $vr4
	vsrl.w	$vr3, $vr3, $vr4
	vpickev.h	$vr0, $vr3, $vr0
	vpickev.b	$vr0, $vr0, $vr2
	vxor.v	$vr0, $vr1, $vr0
	addi.d	$fp, $fp, -1
	vst	$vr0, $s1, 0
	move	$s1, $a0
	beqz	$fp, .LBB3_5
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	st.w	$a0, $s0, 0
	bgez	$a1, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a0, $s0, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 4
	b	.LBB3_2
.LBB3_5:
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
.LBB3_6:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	AesCtr_Code, .Lfunc_end3-AesCtr_Code
                                        # -- End function
	.globl	Aes_SetKey_Enc                  # -- Begin function Aes_SetKey_Enc
	.p2align	5
	.type	Aes_SetKey_Enc,@function
Aes_SetKey_Enc:                         # @Aes_SetKey_Enc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a4, $a2, 31, 3
	addi.w	$a5, $a2, 28
	bstrpick.d	$a3, $a2, 31, 2
	bstrpick.d	$a4, $a4, 60, 0
	addi.d	$a4, $a4, 3
	st.w	$a4, $a0, 0
	ori	$a6, $zero, 4
	addi.d	$a4, $a0, 16
	bgeu	$a2, $a6, .LBB4_2
# %bb.1:
	move	$a1, $zero
	addi.w	$a6, $a1, 0
	bltu	$a6, $a5, .LBB4_5
	b	.LBB4_13
.LBB4_2:                                # %.lr.ph.preheader
	addi.w	$a6, $a3, 0
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a1, 0
	st.w	$t0, $a7, 0
	addi.d	$a1, $a1, 4
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB4_3
# %bb.4:
	move	$a1, $a3
	addi.w	$a6, $a1, 0
	bgeu	$a6, $a5, .LBB4_13
.LBB4_5:                                # %.lr.ph47
	bstrpick.d	$a7, $a1, 31, 0
	bstrpick.d	$t0, $a5, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	add.d	$a5, $a7, $a5
	alsl.d	$a0, $a7, $a0, 2
	addi.d	$a0, $a0, 16
	sub.w	$a6, $zero, $a3
	sub.d	$a7, $t0, $a7
	addi.w	$t0, $a3, 0
	pcalau12i	$t1, %pc_hi20(Sbox)
	addi.d	$t1, $t1, %pc_lo12(Sbox)
	pcalau12i	$t2, %pc_hi20(Rcon)
	addi.d	$t2, $t2, %pc_lo12(Rcon)
	ori	$t3, $zero, 28
	ori	$t4, $zero, 4
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_9 Depth=1
	bstrpick.d	$t7, $t5, 15, 8
	ldx.bu	$t7, $t1, $t7
	bstrpick.d	$t6, $t6, 31, 0
	ldx.bu	$t6, $t2, $t6
	bstrpick.d	$t8, $t5, 23, 16
	ldx.bu	$t8, $t1, $t8
	srli.d	$fp, $t5, 24
	ldx.bu	$fp, $t1, $fp
	xor	$t6, $t6, $t7
	slli.d	$t7, $t8, 8
	or	$t6, $t7, $t6
	slli.d	$t7, $fp, 16
	or	$t6, $t6, $t7
	andi	$t5, $t5, 255
.LBB4_7:                                # %.sink.split
                                        #   in Loop: Header=BB4_9 Depth=1
	ldx.bu	$t5, $t1, $t5
	slli.d	$t5, $t5, 24
	or	$t5, $t6, $t5
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=1
	add.d	$t6, $a6, $a1
	bstrpick.d	$t6, $t6, 31, 0
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a4, $t6
	xor	$t5, $t6, $t5
	st.w	$t5, $a0, 0
	addi.d	$a5, $a5, 1
	addi.d	$a0, $a0, 4
	addi.d	$a7, $a7, -1
	addi.w	$a1, $a1, 1
	beqz	$a7, .LBB4_13
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t5, $a5, 31, 0
	slli.d	$t5, $t5, 2
	ldx.wu	$t5, $a4, $t5
	addi.w	$t6, $a1, 0
	div.wu	$t6, $t6, $t0
	mul.d	$t7, $t6, $a3
	sub.w	$t7, $a1, $t7
	beqz	$t7, .LBB4_6
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	bltu	$a2, $t3, .LBB4_8
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=1
	bne	$t7, $t4, .LBB4_8
# %bb.12:                               #   in Loop: Header=BB4_9 Depth=1
	andi	$t6, $t5, 255
	ldx.bu	$t6, $t1, $t6
	bstrpick.d	$t7, $t5, 15, 8
	ldx.bu	$t7, $t1, $t7
	bstrpick.d	$t8, $t5, 23, 16
	ldx.bu	$t8, $t1, $t8
	slli.d	$t7, $t7, 8
	or	$t6, $t7, $t6
	slli.d	$t7, $t8, 16
	or	$t6, $t6, $t7
	srli.d	$t5, $t5, 24
	b	.LBB4_7
.LBB4_13:                               # %._crit_edge
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	Aes_SetKey_Enc, .Lfunc_end4-Aes_SetKey_Enc
                                        # -- End function
	.globl	Aes_SetKey_Dec                  # -- Begin function Aes_SetKey_Dec
	.p2align	5
	.type	Aes_SetKey_Dec,@function
Aes_SetKey_Dec:                         # @Aes_SetKey_Dec
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a0
	pcaddu18i	$ra, %call36(Aes_SetKey_Enc)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, 20
	beqz	$a1, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $fp, 32
	bstrpick.d	$a1, $a1, 31, 0
	pcalau12i	$a2, %pc_hi20(Sbox)
	addi.d	$a2, $a2, %pc_lo12(Sbox)
	pcalau12i	$a3, %pc_hi20(D)
	addi.d	$a3, $a3, %pc_lo12(D)
	ori	$a4, $zero, 2048
	ori	$a5, $zero, 3072
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a6, $a0, 0
	andi	$a7, $a6, 255
	ldx.bu	$a7, $a2, $a7
	bstrpick.d	$t0, $a6, 15, 8
	ldx.bu	$t0, $a2, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	alsl.d	$t0, $t0, $a3, 2
	bstrpick.d	$t1, $a6, 23, 16
	ldx.bu	$t1, $a2, $t1
	srli.d	$a6, $a6, 24
	ldx.bu	$a6, $a2, $a6
	ld.w	$t0, $t0, 1024
	alsl.d	$t1, $t1, $a3, 2
	ldx.w	$t1, $t1, $a4
	alsl.d	$a6, $a6, $a3, 2
	ldx.w	$a6, $a6, $a5
	xor	$a7, $t0, $a7
	xor	$a7, $a7, $t1
	xor	$a6, $a7, $a6
	st.w	$a6, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB5_2
.LBB5_3:                                # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	Aes_SetKey_Dec, .Lfunc_end5-Aes_SetKey_Dec
                                        # -- End function
	.globl	AesCbc_Init                     # -- Begin function AesCbc_Init
	.p2align	5
	.type	AesCbc_Init,@function
AesCbc_Init:                            # @AesCbc_Init
# %bb.0:
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	ld.w	$a2, $a1, 4
	st.w	$a2, $a0, 4
	ld.w	$a2, $a1, 8
	st.w	$a2, $a0, 8
	ld.w	$a1, $a1, 12
	st.w	$a1, $a0, 12
	ret
.Lfunc_end6:
	.size	AesCbc_Init, .Lfunc_end6-AesCbc_Init
                                        # -- End function
	.p2align	5                               # -- Begin function Aes_Encode
	.type	Aes_Encode,@function
Aes_Encode:                             # @Aes_Encode
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	vld	$vr0, $a2, 0
	vld	$vr1, $a0, 16
	ld.w	$a2, $a0, 0
	vxor.v	$vr0, $vr1, $vr0
	addi.d	$a3, $a0, 48
	addi.d	$a2, $a2, -1
	lu12i.w	$a4, -4096
	lu32i.d	$a4, 0
	pcalau12i	$a5, %pc_hi20(T)
	addi.d	$a5, $a5, %pc_lo12(T)
	addi.d	$t0, $a5, 2047
	addi.d	$a6, $t0, 1025
	addi.d	$a7, $a5, 1024
	addi.d	$t0, $t0, 1
	move	$t1, $a2
	.p2align	4, , 16
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	vpickve2gr.w	$t2, $vr0, 2
	and	$t5, $t2, $a4
	andi	$t2, $t2, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t6, $a5, $t2
	vpickve2gr.w	$t7, $vr0, 1
	and	$t2, $t7, $a4
	srli.d	$t2, $t2, 22
	ldx.w	$t2, $a6, $t2
	ld.w	$t3, $a3, -8
	vpickve2gr.w	$t8, $vr0, 0
	and	$t4, $t8, $a4
	andi	$t8, $t8, 255
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a5, $t8
	vpickve2gr.w	$fp, $vr0, 3
	and	$s0, $fp, $a4
	srli.d	$s0, $s0, 22
	ldx.w	$s0, $a6, $s0
	ld.w	$s1, $a3, -16
	andi	$fp, $fp, 255
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a5, $fp
	srli.d	$t5, $t5, 22
	ldx.w	$t5, $a6, $t5
	vsrli.w	$vr1, $vr0, 8
	vpickve2gr.b	$s2, $vr1, 12
	andi	$s2, $s2, 255
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $a7, $s2
	andi	$t7, $t7, 255
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a5, $t7
	xor	$t6, $s2, $t6
	vpickve2gr.b	$s2, $vr1, 4
	andi	$s2, $s2, 255
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $a7, $s2
	vpickve2gr.b	$s3, $vr1, 0
	andi	$s3, $s3, 255
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $a7, $s3
	vpickve2gr.b	$s4, $vr1, 8
	andi	$s4, $s4, 255
	slli.d	$s4, $s4, 2
	ldx.w	$s4, $a7, $s4
	ld.w	$s5, $a3, -4
	xor	$t8, $s2, $t8
	xor	$fp, $s3, $fp
	xor	$t7, $s4, $t7
	vsrli.w	$vr0, $vr0, 16
	vpickve2gr.b	$s2, $vr0, 0
	andi	$s2, $s2, 255
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $t0, $s2
	vpickve2gr.b	$s3, $vr0, 8
	andi	$s3, $s3, 255
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $t0, $s3
	vpickve2gr.b	$s4, $vr0, 4
	andi	$s4, $s4, 255
	slli.d	$s4, $s4, 2
	ldx.w	$s4, $t0, $s4
	xor	$t6, $t6, $s2
	xor	$t2, $t6, $t2
	xor	$t2, $t2, $t3
	xor	$t3, $t8, $s3
	xor	$t3, $t3, $s0
	xor	$t3, $t3, $s1
	xor	$t6, $fp, $s4
	xor	$t5, $t6, $t5
	vpickve2gr.b	$t6, $vr0, 12
	andi	$t6, $t6, 255
	slli.d	$t6, $t6, 2
	ldx.w	$t8, $t0, $t6
	srli.d	$t4, $t4, 22
	ldx.w	$t4, $a6, $t4
	ld.w	$fp, $a3, -12
	xor	$t6, $t5, $s5
	xor	$t5, $t7, $t8
	xor	$t4, $t5, $t4
	xor	$t4, $t4, $fp
	addi.w	$s0, $t1, 0
	andi	$fp, $t3, 255
	andi	$t7, $t4, 255
	andi	$t8, $t2, 255
	andi	$t5, $t6, 255
	beqz	$s0, .LBB7_3
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	and	$s0, $t2, $a4
	slli.d	$t8, $t8, 2
	ldx.w	$s1, $a5, $t8
	and	$s2, $t6, $a4
	srli.d	$t8, $t6, 6
	andi	$t8, $t8, 1020
	ldx.w	$s3, $a7, $t8
	and	$s4, $t3, $a4
	srli.d	$t8, $t3, 14
	andi	$t8, $t8, 1020
	ldx.w	$s5, $t0, $t8
	and	$t8, $t4, $a4
	srli.d	$t8, $t8, 22
	ldx.w	$t8, $a6, $t8
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a5, $fp
	srli.d	$s6, $t4, 6
	andi	$s6, $s6, 1020
	ldx.w	$s6, $a7, $s6
	srli.d	$s7, $t2, 14
	andi	$s7, $s7, 1020
	ldx.w	$s7, $t0, $s7
	srli.d	$s2, $s2, 22
	ldx.w	$s2, $a6, $s2
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a5, $t5
	srli.d	$t3, $t3, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a7, $t3
	srli.d	$t4, $t4, 14
	andi	$t4, $t4, 1020
	ldx.w	$t4, $t0, $t4
	srli.d	$s0, $s0, 22
	ldx.w	$s0, $a6, $s0
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a5, $t7
	srli.d	$t2, $t2, 6
	andi	$t2, $t2, 1020
	ldx.w	$t2, $a7, $t2
	srli.d	$t6, $t6, 14
	andi	$t6, $t6, 1020
	ldx.w	$t6, $t0, $t6
	srli.d	$s4, $s4, 22
	ldx.w	$s4, $a6, $s4
	vinsgr2vr.w	$vr0, $s6, 0
	vinsgr2vr.w	$vr0, $t2, 1
	vinsgr2vr.w	$vr0, $s3, 2
	vinsgr2vr.w	$vr0, $t3, 3
	vinsgr2vr.w	$vr1, $fp, 0
	vinsgr2vr.w	$vr1, $t7, 1
	vinsgr2vr.w	$vr1, $s1, 2
	vinsgr2vr.w	$vr1, $t5, 3
	vxor.v	$vr0, $vr0, $vr1
	vinsgr2vr.w	$vr1, $s7, 0
	vinsgr2vr.w	$vr1, $t6, 1
	vinsgr2vr.w	$vr1, $s5, 2
	vinsgr2vr.w	$vr1, $t4, 3
	vxor.v	$vr0, $vr0, $vr1
	vinsgr2vr.w	$vr1, $s2, 0
	vinsgr2vr.w	$vr1, $s4, 1
	vld	$vr2, $a3, 0
	vinsgr2vr.w	$vr1, $t8, 2
	vinsgr2vr.w	$vr1, $s0, 3
	vxor.v	$vr0, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr2
	addi.d	$a3, $a3, 32
	addi.d	$t1, $t1, -1
	b	.LBB7_1
.LBB7_3:
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 5
	add.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(Sbox)
	addi.d	$a2, $a2, %pc_lo12(Sbox)
	bstrpick.d	$a3, $t4, 15, 8
	ldx.bu	$a3, $a2, $a3
	ldx.bu	$a4, $a2, $fp
	slli.d	$a3, $a3, 8
	bstrpick.d	$a5, $t2, 23, 16
	ldx.bu	$a5, $a2, $a5
	or	$a3, $a3, $a4
	bstrpick.d	$a4, $t6, 31, 24
	ldx.b	$a4, $a2, $a4
	slli.d	$a5, $a5, 16
	ld.w	$a6, $a0, 48
	or	$a3, $a3, $a5
	slli.d	$a4, $a4, 24
	or	$a3, $a3, $a4
	xor	$a3, $a3, $a6
	st.w	$a3, $a1, 0
	bstrpick.d	$a3, $t2, 15, 8
	ldx.bu	$a3, $a2, $a3
	ldx.bu	$a4, $a2, $t7
	slli.d	$a3, $a3, 8
	bstrpick.d	$a5, $t6, 23, 16
	ldx.bu	$a5, $a2, $a5
	or	$a3, $a3, $a4
	bstrpick.d	$a4, $t3, 31, 24
	ldx.b	$a4, $a2, $a4
	slli.d	$a5, $a5, 16
	ld.w	$a6, $a0, 52
	or	$a3, $a3, $a5
	slli.d	$a4, $a4, 24
	or	$a3, $a3, $a4
	xor	$a3, $a3, $a6
	st.w	$a3, $a1, 4
	bstrpick.d	$a3, $t6, 15, 8
	ldx.bu	$a3, $a2, $a3
	ldx.bu	$a4, $a2, $t8
	slli.d	$a3, $a3, 8
	bstrpick.d	$a5, $t3, 23, 16
	ldx.bu	$a5, $a2, $a5
	or	$a3, $a3, $a4
	bstrpick.d	$a4, $t4, 31, 24
	ldx.b	$a4, $a2, $a4
	slli.d	$a5, $a5, 16
	ld.w	$a6, $a0, 56
	or	$a3, $a3, $a5
	slli.d	$a4, $a4, 24
	or	$a3, $a3, $a4
	xor	$a3, $a3, $a6
	st.w	$a3, $a1, 8
	bstrpick.d	$a3, $t3, 15, 8
	ldx.bu	$a3, $a2, $a3
	ldx.bu	$a4, $a2, $t5
	slli.d	$a3, $a3, 8
	bstrpick.d	$a5, $t4, 23, 16
	ldx.bu	$a5, $a2, $a5
	or	$a3, $a3, $a4
	bstrpick.d	$a4, $t2, 31, 24
	ldx.b	$a2, $a2, $a4
	slli.d	$a4, $a5, 16
	ld.w	$a0, $a0, 60
	or	$a3, $a3, $a4
	slli.d	$a2, $a2, 24
	or	$a2, $a3, $a2
	xor	$a0, $a2, $a0
	st.w	$a0, $a1, 12
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end7:
	.size	Aes_Encode, .Lfunc_end7-Aes_Encode
                                        # -- End function
	.type	InvS,@object                    # @InvS
	.local	InvS
	.comm	InvS,256,1
	.type	Sbox,@object                    # @Sbox
	.section	.rodata,"a",@progbits
Sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	Sbox, 256

	.type	T,@object                       # @T
	.local	T
	.comm	T,4096,4
	.type	D,@object                       # @D
	.local	D
	.comm	D,4096,4
	.type	g_AesCbc_Encode,@object         # @g_AesCbc_Encode
	.bss
	.globl	g_AesCbc_Encode
	.p2align	3, 0x0
g_AesCbc_Encode:
	.dword	0
	.size	g_AesCbc_Encode, 8

	.type	g_AesCbc_Decode,@object         # @g_AesCbc_Decode
	.globl	g_AesCbc_Decode
	.p2align	3, 0x0
g_AesCbc_Decode:
	.dword	0
	.size	g_AesCbc_Decode, 8

	.type	g_AesCtr_Code,@object           # @g_AesCtr_Code
	.globl	g_AesCtr_Code
	.p2align	3, 0x0
g_AesCtr_Code:
	.dword	0
	.size	g_AesCtr_Code, 8

	.type	Rcon,@object                    # @Rcon
	.section	.rodata,"a",@progbits
Rcon:
	.ascii	"\000\001\002\004\b\020 @\200\0336"
	.size	Rcon, 11

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym AesCbc_Encode
	.addrsig_sym AesCbc_Decode
	.addrsig_sym AesCtr_Code
