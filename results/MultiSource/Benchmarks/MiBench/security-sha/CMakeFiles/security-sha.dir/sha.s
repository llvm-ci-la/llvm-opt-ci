	.file	"sha.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sha_init
.LCPI0_0:
	.word	1732584193                      # 0x67452301
	.word	4023233417                      # 0xefcdab89
	.word	2562383102                      # 0x98badcfe
	.word	271733878                       # 0x10325476
	.text
	.globl	sha_init
	.p2align	5
	.type	sha_init,@function
sha_init:                               # @sha_init
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	vst	$vr0, $a0, 0
	lu12i.w	$a1, -246482
	ori	$a1, $a1, 496
	lu32i.d	$a1, 0
	st.d	$a1, $a0, 16
	st.w	$zero, $a0, 24
	ret
.Lfunc_end0:
	.size	sha_init, .Lfunc_end0-sha_init
                                        # -- End function
	.globl	sha_update                      # -- Begin function sha_update
	.p2align	5
	.type	sha_update,@function
sha_update:                             # @sha_update
# %bb.0:                                # %._crit_edge22
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 20
	move	$fp, $a1
	slli.w	$a1, $a2, 3
	ld.w	$a3, $s0, 24
	nor	$a4, $a0, $zero
	addi.w	$a4, $a4, 0
	sltu	$a1, $a4, $a1
	add.d	$a1, $a3, $a1
	alsl.d	$a0, $a2, $a0, 3
	st.w	$a0, $s0, 20
	bstrpick.d	$a0, $a2, 31, 29
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 24
	ori	$a0, $zero, 64
	addi.d	$s1, $s0, 28
	blt	$a2, $a0, .LBB1_3
# %bb.1:                                # %.lr.ph
	ori	$s2, $zero, 127
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	vld	$vr0, $fp, 48
	vst	$vr0, $s1, 48
	vld	$vr0, $fp, 32
	vst	$vr0, $s1, 32
	vld	$vr0, $fp, 16
	vst	$vr0, $s1, 16
	vld	$vr0, $fp, 0
	move	$s3, $a2
	vst	$vr0, $s1, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sha_transform)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 64
	addi.w	$a2, $s3, -64
	bltu	$s2, $s3, .LBB1_2
.LBB1_3:                                # %._crit_edge
	move	$a0, $s1
	move	$a1, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end1:
	.size	sha_update, .Lfunc_end1-sha_update
                                        # -- End function
	.p2align	5                               # -- Begin function byte_reverse
	.type	byte_reverse,@function
byte_reverse:                           # @byte_reverse
# %bb.0:
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vshuf4i.b	$vr0, $vr0, 27
	vst	$vr0, $a0, 0
	vld	$vr0, $a0, 32
	vshuf4i.b	$vr1, $vr1, 27
	vld	$vr2, $a0, 48
	vst	$vr1, $a0, 16
	vshuf4i.b	$vr0, $vr0, 27
	vst	$vr0, $a0, 32
	vshuf4i.b	$vr0, $vr2, 27
	vst	$vr0, $a0, 48
	ret
.Lfunc_end2:
	.size	byte_reverse, .Lfunc_end2-byte_reverse
                                        # -- End function
	.p2align	5                               # -- Begin function sha_transform
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
# %bb.0:                                # %.preheader112.preheader
	addi.d	$sp, $sp, -336
	move	$a1, $zero
	vld	$vr0, $a0, 76
	vld	$vr1, $a0, 60
	vld	$vr2, $a0, 44
	vld	$vr3, $a0, 28
	vst	$vr0, $sp, 64
	vst	$vr1, $sp, 48
	vst	$vr2, $sp, 32
	vst	$vr3, $sp, 16
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB3_1:                                # %.preheader112
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a2, $a1
	ld.w	$a6, $a5, 20
	ldx.w	$a7, $a2, $a1
	ld.w	$t0, $a5, -24
	ldx.w	$t1, $a1, $a3
	xor	$a6, $a7, $a6
	xor	$a6, $a6, $t0
	xor	$a6, $a6, $t1
	addi.d	$a1, $a1, 4
	st.w	$a6, $a5, 32
	bne	$a1, $a4, .LBB3_1
# %bb.2:
	vld	$vr0, $a0, 0
	move	$a4, $zero
	ld.w	$a1, $a0, 16
	vpickve2gr.w	$a2, $vr0, 0
	vpickve2gr.w	$t2, $vr0, 1
	vpickve2gr.w	$a3, $vr0, 2
	vpickve2gr.w	$t5, $vr0, 3
	addi.d	$a7, $sp, 16
	lu12i.w	$a5, 370727
	ori	$t1, $a5, 2457
	ori	$t3, $zero, 80
	move	$t4, $a1
	.p2align	4, , 16
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	move	$t0, $a3
	move	$a6, $t5
	and	$a2, $a3, $t2
	andn	$a3, $t5, $t2
	or	$a2, $a3, $a2
	ldx.w	$a3, $a4, $a7
	rotri.w	$t5, $a5, 27
	add.d	$t4, $t5, $t4
	add.d	$a2, $t4, $a2
	add.d	$a2, $a2, $a3
	add.d	$a2, $a2, $t1
	addi.d	$a4, $a4, 4
	rotri.w	$a3, $t2, 2
	move	$t4, $a6
	move	$t5, $t0
	move	$t2, $a5
	bne	$a4, $t3, .LBB3_3
# %bb.4:                                # %.preheader111.preheader
	move	$t2, $zero
	addi.d	$t3, $sp, 96
	lu12i.w	$a4, 454046
	ori	$t4, $a4, 2977
	ori	$t5, $zero, 80
	.p2align	4, , 16
.LBB3_5:                                # %.preheader111
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a2
	move	$t1, $a3
	move	$a7, $t0
	rotri.w	$a2, $a2, 27
	xor	$a3, $a3, $a5
	ldx.w	$t0, $t3, $t2
	xor	$a3, $a3, $a7
	add.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a6
	add.d	$a2, $a2, $t0
	add.d	$a2, $a2, $t4
	addi.d	$t2, $t2, 4
	rotri.w	$a3, $a5, 2
	move	$a6, $a7
	move	$t0, $t1
	move	$a5, $a4
	bne	$t2, $t5, .LBB3_5
# %bb.6:                                # %.preheader110.preheader
	move	$t2, $zero
	addi.d	$t3, $sp, 176
	lu12i.w	$a5, -462405
	ori	$t4, $a5, 3292
	ori	$t5, $zero, 80
	.p2align	4, , 16
.LBB3_7:                                # %.preheader110
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	move	$t0, $a3
	move	$a6, $t1
	or	$a2, $t1, $a3
	and	$a2, $a2, $a4
	and	$a3, $t1, $a3
	or	$a2, $a2, $a3
	ldx.w	$a3, $t3, $t2
	rotri.w	$t1, $a5, 27
	add.d	$a7, $t1, $a7
	add.d	$a2, $a7, $a2
	add.d	$a2, $a2, $a3
	add.d	$a2, $a2, $t4
	addi.d	$t2, $t2, 4
	rotri.w	$a3, $a4, 2
	move	$a7, $a6
	move	$t1, $t0
	move	$a4, $a5
	bne	$t2, $t5, .LBB3_7
# %bb.8:                                # %.preheader.preheader
	move	$a4, $zero
	addi.d	$a7, $sp, 256
	lu12i.w	$t1, -219604
	ori	$t1, $t1, 470
	ori	$t3, $zero, 80
	.p2align	4, , 16
.LBB3_9:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$t5, $a2
	move	$t4, $a3
	move	$t2, $t0
	rotri.w	$a2, $a2, 27
	xor	$a3, $a3, $a5
	ldx.w	$t0, $a7, $a4
	xor	$a3, $a3, $t2
	add.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a6
	add.d	$a2, $a2, $t0
	add.d	$a2, $a2, $t1
	addi.d	$a4, $a4, 4
	rotri.w	$a3, $a5, 2
	move	$a6, $t2
	move	$t0, $t4
	move	$a5, $t5
	bne	$a4, $t3, .LBB3_9
# %bb.10:
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.w	$vr1, $t5, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $t4, 3
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 0
	add.d	$a1, $t2, $a1
	st.w	$a1, $a0, 16
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end3:
	.size	sha_transform, .Lfunc_end3-sha_transform
                                        # -- End function
	.globl	sha_final                       # -- Begin function sha_final
	.p2align	5
	.type	sha_final,@function
sha_final:                              # @sha_final
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s1, $a0, 20
	ld.w	$s2, $a0, 24
	bstrpick.d	$a1, $s1, 8, 3
	addi.d	$s0, $a0, 28
	add.d	$a0, $s0, $a1
	ori	$a2, $zero, 128
	stx.b	$a2, $s0, $a1
	ori	$a2, $zero, 56
	addi.d	$a0, $a0, 1
	bltu	$a1, $a2, .LBB4_2
# %bb.1:
	xori	$a2, $a1, 63
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sha_transform)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 32
	vst	$vr0, $s0, 16
	vst	$vr0, $s0, 0
	b	.LBB4_3
.LBB4_2:
	ori	$a2, $zero, 55
	sub.w	$a2, $a2, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	st.w	$s2, $fp, 84
	st.w	$s1, $fp, 88
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(sha_transform)
	jr	$t8
.Lfunc_end4:
	.size	sha_final, .Lfunc_end4-sha_final
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sha_stream
.LCPI5_0:
	.word	1732584193                      # 0x67452301
	.word	4023233417                      # 0xefcdab89
	.word	2562383102                      # 0x98badcfe
	.word	271733878                       # 0x10325476
	.text
	.globl	sha_stream
	.p2align	5
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
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
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2512
	sub.d	$sp, $sp, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	move	$a3, $a1
	move	$fp, $a0
	vst	$vr0, $a0, 0
	lu12i.w	$a0, -246482
	ori	$a0, $a0, 496
	lu32i.d	$a0, 0
	st.d	$a0, $fp, 16
	st.w	$zero, $fp, 24
	lu12i.w	$a2, 2
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	move	$t5, $fp
	addi.w	$a1, $a0, 0
	addi.d	$a2, $fp, 28
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	blez	$a1, .LBB5_18
# %bb.1:                                # %.lr.ph
	lu12i.w	$a1, 2
	ori	$a1, $a1, 120
	add.d	$s3, $sp, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 200
	add.d	$s4, $sp, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 280
	add.d	$s5, $sp, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 40
	add.d	$s7, $sp, $a1
	ori	$s8, $zero, 256
	lu12i.w	$a1, 370727
	ori	$s6, $a1, 2457
	ori	$s2, $zero, 80
	lu12i.w	$a1, 454046
	ori	$s1, $a1, 2977
	lu12i.w	$a1, -462405
	ori	$fp, $a1, 3292
	lu12i.w	$a1, -219604
	ori	$s0, $a1, 470
	ori	$t7, $zero, 127
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $sp, 40
	move	$a3, $a0
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
.LBB5_3:                                # %sha_update.exit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.w	$a2, $a3, 0
	move	$a0, $t6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	ori	$t7, $zero, 127
	blez	$a0, .LBB5_18
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_9 Depth 3
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_13 Depth 3
                                        #       Child Loop BB5_15 Depth 3
	ld.w	$a1, $t5, 20
	addi.w	$a2, $a0, 0
	slli.w	$a3, $a0, 3
	nor	$a4, $a1, $zero
	addi.w	$a4, $a4, 0
	sltu	$a3, $a4, $a3
	ld.w	$a4, $t5, 24
	alsl.d	$a1, $a0, $a1, 3
	st.w	$a1, $t5, 20
	bstrpick.d	$a1, $a0, 31, 29
	add.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a3
	st.w	$a1, $t5, 24
	ori	$a1, $zero, 64
	bltu	$a2, $a1, .LBB5_2
# %bb.5:                                # %.lr.ph.i
                                        #   in Loop: Header=BB5_4 Depth=1
	vld	$vr0, $t5, 0
	ld.w	$a2, $t5, 16
	addi.d	$a1, $sp, 40
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_9 Depth 3
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_13 Depth 3
                                        #       Child Loop BB5_15 Depth 3
	vld	$vr1, $a1, 48
	vld	$vr2, $a1, 32
	vld	$vr3, $a1, 16
	vld	$vr4, $a1, 0
	vst	$vr1, $t6, 48
	vst	$vr2, $t6, 32
	vst	$vr3, $t6, 16
	vst	$vr4, $t6, 0
	vld	$vr1, $t5, 28
	move	$a6, $zero
	vld	$vr2, $t5, 44
	vshuf4i.b	$vr1, $vr1, 27
	vst	$vr1, $t5, 28
	vld	$vr1, $t5, 60
	vshuf4i.b	$vr2, $vr2, 27
	vld	$vr3, $t5, 76
	vst	$vr2, $t5, 44
	vshuf4i.b	$vr1, $vr1, 27
	vst	$vr1, $t5, 60
	vshuf4i.b	$vr1, $vr3, 27
	vst	$vr1, $t5, 76
	vld	$vr1, $t6, 48
	vld	$vr2, $t6, 32
	vld	$vr3, $t6, 16
	vld	$vr4, $t6, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 88
	add.d	$a3, $sp, $a3
	vst	$vr1, $a3, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 72
	add.d	$a3, $sp, $a3
	vst	$vr2, $a3, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 56
	add.d	$a3, $sp, $a3
	vst	$vr3, $a3, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 40
	add.d	$a3, $sp, $a3
	vst	$vr4, $a3, 0
	vpickve2gr.w	$a3, $vr0, 0
	vpickve2gr.w	$a5, $vr0, 1
	vpickve2gr.w	$a4, $vr0, 2
	vpickve2gr.w	$a7, $vr0, 3
	.p2align	4, , 16
.LBB5_7:                                # %.preheader112.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t0, $s7, $a6
	ld.w	$t1, $t0, 52
	ld.w	$t2, $t0, 32
	ld.w	$t3, $t0, 8
	ldx.w	$t4, $a6, $s7
	xor	$t1, $t2, $t1
	xor	$t1, $t1, $t3
	xor	$t1, $t1, $t4
	addi.d	$a6, $a6, 4
	st.w	$t1, $t0, 64
	bne	$a6, $s8, .LBB5_7
# %bb.8:                                # %.preheader.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$t2, $zero
	move	$t3, $a2
	.p2align	4, , 16
.LBB5_9:                                # %.preheader
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a6, $a3
	move	$t1, $a4
	move	$t0, $a7
	and	$a3, $a5, $a4
	andn	$a4, $a7, $a5
	or	$a3, $a4, $a3
	ldx.w	$a4, $t2, $s7
	rotri.w	$a7, $a6, 27
	add.d	$a7, $t3, $a7
	add.d	$a3, $a7, $a3
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $s6
	addi.d	$t2, $t2, 4
	rotri.w	$a4, $a5, 2
	move	$t3, $t0
	move	$a7, $t1
	move	$a5, $a6
	bne	$t2, $s2, .LBB5_9
# %bb.10:                               # %.preheader111.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$t3, $zero
	.p2align	4, , 16
.LBB5_11:                               # %.preheader111.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a5, $a3
	move	$t2, $a4
	move	$a7, $t1
	rotri.w	$a3, $a3, 27
	xor	$a4, $a4, $t1
	ldx.w	$t1, $s3, $t3
	xor	$a4, $a4, $a6
	add.d	$a3, $t0, $a3
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $t1
	add.d	$a3, $a3, $s1
	addi.d	$t3, $t3, 4
	rotri.w	$a4, $a6, 2
	move	$t0, $a7
	move	$t1, $t2
	move	$a6, $a5
	bne	$t3, $s2, .LBB5_11
# %bb.12:                               # %.preheader110.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$t3, $zero
	.p2align	4, , 16
.LBB5_13:                               # %.preheader110.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a6, $a3
	move	$t1, $a4
	move	$t0, $t2
	or	$a3, $a4, $t2
	and	$a3, $a3, $a5
	and	$a4, $a4, $t2
	or	$a3, $a3, $a4
	ldx.w	$a4, $s4, $t3
	rotri.w	$t2, $a6, 27
	add.d	$a7, $a7, $t2
	add.d	$a3, $a7, $a3
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $fp
	addi.d	$t3, $t3, 4
	rotri.w	$a4, $a5, 2
	move	$a7, $t0
	move	$t2, $t1
	move	$a5, $a6
	bne	$t3, $s2, .LBB5_13
# %bb.14:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$a5, $zero
	.p2align	4, , 16
.LBB5_15:                               # %.preheader.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t3, $a3
	move	$t2, $a4
	move	$a7, $t1
	rotri.w	$a3, $a3, 27
	xor	$a4, $a4, $t1
	ldx.w	$t1, $s5, $a5
	xor	$a4, $a4, $a6
	add.d	$a3, $t0, $a3
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $t1
	add.d	$a3, $a3, $s0
	addi.d	$a5, $a5, 4
	rotri.w	$a4, $a6, 2
	move	$t0, $a7
	move	$t1, $t2
	move	$a6, $t3
	bne	$a5, $s2, .LBB5_15
# %bb.16:                               # %sha_transform.exit
                                        #   in Loop: Header=BB5_6 Depth=2
	vinsgr2vr.w	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $t3, 1
	vinsgr2vr.w	$vr1, $a4, 2
	vinsgr2vr.w	$vr1, $t2, 3
	vadd.w	$vr0, $vr1, $vr0
	add.d	$a2, $a7, $a2
	addi.d	$a3, $a0, -64
	addi.w	$a4, $a0, 0
	addi.d	$a1, $a1, 64
	move	$a0, $a3
	bltu	$t7, $a4, .LBB5_6
# %bb.17:                               # %sha_update.exit.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	vst	$vr0, $t5, 0
	st.w	$a2, $t5, 16
	b	.LBB5_3
.LBB5_18:                               # %._crit_edge
	ld.w	$fp, $t5, 20
	ld.w	$s0, $t5, 24
	bstrpick.d	$a1, $fp, 8, 3
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $s2, $a1
	ori	$a2, $zero, 128
	stx.b	$a2, $s2, $a1
	ori	$a2, $zero, 56
	addi.d	$a0, $a0, 1
	move	$s1, $t5
	bltu	$a1, $a2, .LBB5_20
# %bb.19:
	xori	$a2, $a1, 63
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sha_transform)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 32
	vst	$vr0, $s2, 16
	vst	$vr0, $s2, 0
	b	.LBB5_21
.LBB5_20:
	ori	$a2, $zero, 55
	sub.w	$a2, $a2, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %sha_final.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	st.w	$s0, $s1, 84
	st.w	$fp, $s1, 88
	move	$a0, $s1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2512
	add.d	$sp, $sp, $a1
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
	pcaddu18i	$t8, %call36(sha_transform)
	jr	$t8
.Lfunc_end5:
	.size	sha_stream, .Lfunc_end5-sha_stream
                                        # -- End function
	.globl	sha_print                       # -- Begin function sha_print
	.p2align	5
	.type	sha_print,@function
sha_print:                              # @sha_print
# %bb.0:
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 4
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end6:
	.size	sha_print, .Lfunc_end6-sha_print
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%08x %08x %08x %08x %08x\n"
	.size	.L.str, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
