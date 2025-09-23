	.file	"output.c"
	.text
	.globl	testEndian                      # -- Begin function testEndian
	.p2align	5
	.type	testEndian,@function
testEndian:                             # @testEndian
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	testEndian, .Lfunc_end0-testEndian
                                        # -- End function
	.globl	img2buf                         # -- Begin function img2buf
	.p2align	5
	.type	img2buf,@function
img2buf:                                # @img2buf
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
	move	$s5, $a6
	move	$s1, $a4
	move	$s7, $a3
	move	$s6, $a2
	move	$s2, $a1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 144
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	add.d	$a0, $a5, $a6
	ori	$a1, $zero, 3
	sub.d	$s0, $a2, $a0
	bltu	$a4, $a1, .LBB1_2
# %bb.1:
	add.d	$a0, $fp, $s3
	sub.d	$a0, $s7, $a0
	mul.d	$a1, $s0, $s1
	mul.w	$a2, $a1, $a0
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 2
	sub.w	$a0, $s7, $s3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blt	$fp, $a0, .LBB1_3
	b	.LBB1_8
.LBB1_2:
	move	$s4, $s1
	sub.w	$a0, $s7, $s3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bge	$fp, $a0, .LBB1_8
.LBB1_3:                                # %.preheader.lr.ph
	sub.w	$s5, $s6, $s5
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $s5, .LBB1_8
# %bb.4:                                # %.preheader.us.preheader
	move	$s7, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	mul.d	$a0, $s1, $s0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_5:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s0, $fp, $a0, 3
	move	$s6, $s7
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_6:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	add.d	$a0, $s2, $s6
	add.d	$a1, $a1, $s8
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	addi.d	$s8, $s8, 2
	add.w	$s6, $s6, $s1
	blt	$s3, $s5, .LBB1_6
# %bb.7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blt	$fp, $a0, .LBB1_5
.LBB1_8:                                # %._crit_edge110
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
	.size	img2buf, .Lfunc_end1-img2buf
                                        # -- End function
	.globl	write_picture                   # -- Begin function write_picture
	.p2align	5
	.type	write_picture,@function
write_picture:                          # @write_picture
# %bb.0:
	pcaddu18i	$t8, %call36(write_out_picture)
	jr	$t8
.Lfunc_end2:
	.size	write_picture, .Lfunc_end2-write_picture
                                        # -- End function
	.globl	write_out_picture               # -- Begin function write_out_picture
	.p2align	5
	.type	write_out_picture,@function
write_out_picture:                      # @write_out_picture
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
	move	$fp, $a1
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 5272
	beqz	$a1, .LBB3_2
# %bb.1:
	ld.w	$a0, $a0, 64
	addi.d	$a0, $a0, -3
	sltui	$s1, $a0, 1
	addi.w	$a0, $zero, -1
	bne	$fp, $a0, .LBB3_3
	b	.LBB3_6
.LBB3_2:
	move	$s1, $zero
	addi.w	$a0, $zero, -1
	beq	$fp, $a0, .LBB3_6
.LBB3_3:
	lu12i.w	$s6, 1
	ori	$a0, $s6, 2292
	ldx.w	$a0, $s3, $a0
	bnez	$a0, .LBB3_6
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 15440
	ldptr.w	$a1, $s3, 6568
	bstrpick.d	$a2, $a0, 62, 60
	add.w	$a0, $a0, $a2
	srai.d	$s4, $a0, 3
	beqz	$a1, .LBB3_7
# %bb.5:
	ldptr.w	$a0, $s3, 6560
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.L__const.write_out_picture.SubWidthC)
	addi.d	$a1, $a1, %pc_lo12(.L__const.write_out_picture.SubWidthC)
	ldx.w	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L__const.write_out_picture.SubHeightC)
	addi.d	$a2, $a2, %pc_lo12(.L__const.write_out_picture.SubHeightC)
	ori	$a3, $s6, 2468
	ldx.w	$a3, $s3, $a3
	ldx.w	$a0, $a2, $a0
	ori	$a2, $zero, 2
	sub.d	$a2, $a2, $a3
	mul.d	$a0, $a2, $a0
	ori	$a2, $s6, 2476
	vldx	$vr0, $s3, $a2
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vshuf4i.w	$vr1, $vr1, 5
	vmul.w	$vr0, $vr1, $vr0
	b	.LBB3_8
.LBB3_6:
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
.LBB3_7:
	vrepli.b	$vr0, 0
.LBB3_8:
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ori	$s2, $s6, 2296
	ldx.w	$a0, $s3, $s2
	ori	$s5, $s6, 2300
	ldx.w	$a1, $s3, $s5
	mul.d	$a0, $a0, $s4
	mul.w	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB3_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_10:
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	beqz	$s1, .LBB3_23
# %bb.11:
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	ldptr.w	$a4, $s3, 6572
	ori	$a0, $s6, 2480
	ldx.w	$s8, $s3, $a0
	ori	$a0, $s6, 2468
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$a0, $s3, $a0
	ori	$s2, $zero, 2
	ori	$a1, $s6, 2484
	ldx.w	$a1, $s3, $a1
	ori	$a2, $s6, 2488
	ldx.w	$a2, $s3, $a2
	ldptr.d	$a3, $s3, 6472
	sub.d	$a0, $s2, $a0
	mul.w	$fp, $a0, $a1
	mul.d	$s5, $a2, $a0
	ld.d	$a0, $a3, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $s6, 2304
	ldx.w	$s1, $s3, $a0
	ori	$a0, $s6, 2308
	ldx.w	$s6, $s3, $a0
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $s8, $a4
	sub.d	$s3, $s1, $a0
	ori	$a0, $zero, 3
	add.d	$a1, $s5, $fp
	mul.d	$a2, $s3, $s4
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bltu	$s4, $a0, .LBB3_13
# %bb.12:
	sub.d	$a0, $s6, $a1
	mul.w	$a2, $a2, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	sub.w	$a0, $s6, $s5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	blt	$fp, $a0, .LBB3_14
	b	.LBB3_19
.LBB3_13:
	move	$s2, $s4
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	sub.w	$a0, $s6, $s5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$fp, $a0, .LBB3_19
.LBB3_14:                               # %.preheader.lr.ph.i
	sub.w	$s8, $s1, $s8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bge	$a0, $s8, .LBB3_19
# %bb.15:                               # %.preheader.us.preheader.i
	move	$s6, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.d	$s1, $s4, $s3
	.p2align	4, , 16
.LBB3_16:                               # %.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
	slli.d	$a0, $fp, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s3, $a0, $a1
	move	$s7, $s6
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_17:                               #   Parent Loop BB3_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s7
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 2
	add.w	$s7, $s7, $s4
	blt	$s5, $s8, .LBB3_17
# %bb.18:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB3_16 Depth=1
	addi.d	$fp, $fp, 1
	add.w	$s6, $s6, $s1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB3_16
.LBB3_19:                               # %img2buf.exit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a0, $s3, 6568
	beqz	$a0, .LBB3_21
# %bb.20:
	ldptr.w	$a0, $s3, 6560
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.L__const.write_out_picture.SubWidthC)
	addi.d	$a1, $a1, %pc_lo12(.L__const.write_out_picture.SubWidthC)
	ldx.w	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L__const.write_out_picture.SubHeightC)
	addi.d	$a2, $a2, %pc_lo12(.L__const.write_out_picture.SubHeightC)
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a3, $s3, $a3
	ldx.w	$a0, $a2, $a0
	ori	$a2, $zero, 2
	sub.d	$a2, $a2, $a3
	mul.d	$a0, $a2, $a0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2476
	vldx	$vr0, $s3, $a2
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vshuf4i.w	$vr1, $vr1, 5
	vmul.w	$vr1, $vr1, $vr0
	b	.LBB3_22
.LBB3_21:
	vrepli.b	$vr1, 0
.LBB3_22:
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
.LBB3_23:
	ldptr.d	$a0, $s3, 6440
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ldx.w	$s1, $s3, $s2
	ldx.w	$fp, $s3, $s5
	vpickve2gr.w	$a0, $vr1, 0
	vpickve2gr.w	$s5, $vr1, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s5
	sub.d	$s3, $s1, $a0
	ori	$a0, $zero, 3
	mul.d	$a1, $s3, $s4
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	bltu	$s4, $a0, .LBB3_25
# %bb.24:
	vreplvei.w	$vr0, $vr1, 3
	vadd.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a0, $vr0, 2
	sub.d	$a0, $fp, $a0
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	ori	$s2, $zero, 2
	b	.LBB3_26
.LBB3_25:
	move	$s2, $s4
.LBB3_26:
	vpickve2gr.w	$a0, $vr1, 3
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	sub.w	$a1, $fp, $a0
	vpickve2gr.w	$a0, $vr1, 2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	bge	$a0, $a1, .LBB3_32
# %bb.27:                               # %.preheader.lr.ph.i127
	sub.w	$s6, $s1, $s5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bge	$a0, $s6, .LBB3_32
# %bb.28:                               # %.preheader.us.preheader.i128
	move	$fp, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.d	$s5, $s4, $s3
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_29:                               # %.preheader.us.i129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_30 Depth 2
	slli.d	$a0, $s7, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s3, $a0, $a1
	move	$s8, $fp
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_30:                               #   Parent Loop BB3_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s8
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 2
	add.w	$s8, $s8, $s4
	blt	$s1, $s6, .LBB3_30
# %bb.31:                               # %._crit_edge.us.i133
                                        #   in Loop: Header=BB3_29 Depth=1
	addi.d	$s7, $s7, 1
	add.w	$fp, $fp, $s5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s7, $a0, .LBB3_29
.LBB3_32:                               # %img2buf.exit135
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a0, $a4, 6560
	beqz	$a0, .LBB3_52
# %bb.33:
	ldptr.w	$a6, $a4, 6572
	lu12i.w	$a5, 1
	ori	$a0, $a5, 2480
	ldx.w	$a7, $a4, $a0
	ori	$a0, $a5, 2468
	ldx.w	$a0, $a4, $a0
	ori	$s2, $zero, 2
	ori	$a1, $a5, 2484
	ldx.w	$a1, $a4, $a1
	ori	$a2, $a5, 2488
	ldx.w	$a2, $a4, $a2
	ldptr.d	$a3, $a4, 6472
	sub.d	$a0, $s2, $a0
	mul.w	$s5, $a0, $a1
	mul.d	$s1, $a2, $a0
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $a5, 2304
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$fp, $a4, $a0
	ori	$a0, $a5, 2308
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$s6, $a4, $a0
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a7, $a6
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	sub.d	$s3, $fp, $a0
	ori	$a0, $zero, 3
	add.d	$a1, $s1, $s5
	mul.d	$a2, $s3, $s4
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bltu	$s4, $a0, .LBB3_35
# %bb.34:
	sub.d	$a0, $s6, $a1
	mul.w	$a2, $a2, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_36
.LBB3_35:
	move	$s2, $s4
.LBB3_36:
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	sub.w	$a0, $s6, $s1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$s5, $a0, .LBB3_42
# %bb.37:                               # %.preheader.lr.ph.i137
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.w	$s6, $fp, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bge	$a0, $s6, .LBB3_42
# %bb.38:                               # %.preheader.us.preheader.i138
	move	$s1, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.d	$a0, $s4, $s3
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$s8, $s5
	.p2align	4, , 16
.LBB3_39:                               # %.preheader.us.i139
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_40 Depth 2
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s3, $a0, $a1
	move	$s7, $s1
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_40:                               #   Parent Loop BB3_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s7
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$s3, $s3, 2
	add.w	$s7, $s7, $s4
	blt	$fp, $s6, .LBB3_40
# %bb.41:                               # %._crit_edge.us.i143
                                        #   in Loop: Header=BB3_39 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$s1, $s1, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB3_39
.LBB3_42:                               # %img2buf.exit145
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_52
# %bb.43:
	ldptr.d	$a0, $a1, 6472
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$fp, $a1, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$s3, $a1, $a2
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s2, $fp, $a0
	ori	$a0, $zero, 3
	sub.d	$a1, $s3, $s1
	mul.d	$a2, $s2, $s4
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	bltu	$s4, $a0, .LBB3_45
# %bb.44:
	mul.w	$a2, $a2, $a1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a0, $s3, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	blt	$s5, $a0, .LBB3_46
	b	.LBB3_51
.LBB3_45:
	move	$s1, $s4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a0, $s3, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$s5, $a0, .LBB3_51
.LBB3_46:                               # %.preheader.lr.ph.i147
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.w	$fp, $fp, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB3_51
# %bb.47:                               # %.preheader.us.preheader.i148
	move	$s6, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.d	$s3, $s4, $s2
	.p2align	4, , 16
.LBB3_48:                               # %.preheader.us.i149
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_49 Depth 2
	slli.d	$a0, $s5, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	move	$s7, $s6
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_49:                               #   Parent Loop BB3_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s7
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	addi.d	$s2, $s2, 2
	add.w	$s7, $s7, $s4
	blt	$s8, $fp, .LBB3_49
# %bb.50:                               # %._crit_edge.us.i153
                                        #   in Loop: Header=BB3_48 Depth=1
	addi.d	$s5, $s5, 1
	add.w	$s6, $s6, $s3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s5, $a0, .LBB3_48
.LBB3_51:                               # %img2buf.exit155
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	mul.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
.LBB3_52:
	move	$a0, $s0
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end3:
	.size	write_out_picture, .Lfunc_end3-write_out_picture
                                        # -- End function
	.globl	init_out_buffer                 # -- Begin function init_out_buffer
	.p2align	5
	.type	init_out_buffer,@function
init_out_buffer:                        # @init_out_buffer
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(alloc_frame_store)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(out_buffer)
	st.d	$a0, $a1, %pc_lo12(out_buffer)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	init_out_buffer, .Lfunc_end4-init_out_buffer
                                        # -- End function
	.globl	uninit_out_buffer               # -- Begin function uninit_out_buffer
	.p2align	5
	.type	uninit_out_buffer,@function
uninit_out_buffer:                      # @uninit_out_buffer
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(out_buffer)
	ld.d	$a0, $fp, %pc_lo12(out_buffer)
	pcaddu18i	$ra, %call36(free_frame_store)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, %pc_lo12(out_buffer)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	uninit_out_buffer, .Lfunc_end5-uninit_out_buffer
                                        # -- End function
	.globl	clear_picture                   # -- Begin function clear_picture
	.p2align	5
	.type	clear_picture,@function
clear_picture:                          # @clear_picture
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
	ldptr.w	$a0, $a0, 6396
	lu12i.w	$s1, 3
	blez	$a0, .LBB6_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	move	$s2, $zero
	move	$s3, $zero
	ori	$s4, $s1, 3224
	.p2align	4, , 16
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $fp, 6440
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a2, $fp, 6392
	ldx.b	$a1, $a1, $s4
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 6396
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB6_2
.LBB6_3:                                # %.preheader17
	ldptr.w	$a0, $fp, 6404
	blez	$a0, .LBB6_9
# %bb.4:                                # %.lr.ph20
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	move	$s2, $zero
	move	$s3, $zero
	ori	$s1, $s1, 3228
	.p2align	4, , 16
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $fp, 6472
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a2, $fp, 6400
	ldx.b	$a1, $a1, $s1
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 6404
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB6_5
# %bb.6:                                # %.preheader
	blez	$a0, .LBB6_9
# %bb.7:                                # %.lr.ph22
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $fp, 6472
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a2, $fp, 6400
	ldx.b	$a1, $a1, $s1
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 6404
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB6_8
.LBB6_9:                                # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	clear_picture, .Lfunc_end6-clear_picture
                                        # -- End function
	.globl	write_unpaired_field            # -- Begin function write_unpaired_field
	.p2align	5
	.type	write_unpaired_field,@function
write_unpaired_field:                   # @write_unpaired_field
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
	move	$fp, $a0
	ld.wu	$a0, $a0, 0
	move	$s0, $a1
	andi	$a1, $a0, 1
	lu12i.w	$s2, 1
	beqz	$a1, .LBB7_11
# %bb.1:
	ld.d	$s3, $fp, 48
	ldptr.w	$a1, $s3, 6392
	ldptr.w	$a2, $s3, 6396
	ldptr.w	$a3, $s3, 6400
	ldptr.w	$a4, $s3, 6404
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $s2, 2464
	ldx.w	$a0, $s3, $a0
	ldptr.w	$a1, $s1, 6396
	st.d	$s1, $fp, 56
	stptr.w	$a0, $s1, 6560
	lu12i.w	$s4, 3
	blez	$a1, .LBB7_4
# %bb.2:                                # %.lr.ph.i
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	move	$s5, $zero
	move	$s6, $zero
	ori	$s7, $s4, 3224
	.p2align	4, , 16
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s1, 6440
	ld.d	$a1, $s3, 0
	ldx.d	$a0, $a0, $s5
	ldptr.w	$a2, $s1, 6392
	ldx.b	$a1, $a1, $s7
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s1, 6396
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB7_3
.LBB7_4:                                # %.preheader17.i
	ldptr.w	$a0, $s1, 6404
	blez	$a0, .LBB7_10
# %bb.5:                                # %.lr.ph20.i
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	move	$s5, $zero
	move	$s6, $zero
	ori	$s4, $s4, 3228
	.p2align	4, , 16
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s1, 6472
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s3, 0
	ldx.d	$a0, $a0, $s5
	ldptr.w	$a2, $s1, 6400
	ldx.b	$a1, $a1, $s4
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s1, 6404
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB7_6
# %bb.7:                                # %.preheader.i
	blez	$a0, .LBB7_10
# %bb.8:                                # %.lr.ph22.i.preheader
	move	$s5, $zero
	move	$s6, $zero
	.p2align	4, , 16
.LBB7_9:                                # %.lr.ph22.i
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s1, 6472
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s3, 0
	ldx.d	$a0, $a0, $s5
	ldptr.w	$a2, $s1, 6400
	ldx.b	$a1, $a1, $s4
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s1, 6404
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB7_9
.LBB7_10:                               # %clear_picture.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
.LBB7_11:
	andi	$a0, $a0, 2
	beqz	$a0, .LBB7_33
# %bb.12:
	ld.d	$s3, $fp, 56
	ldptr.w	$a1, $s3, 6392
	ldptr.w	$a2, $s3, 6396
	ldptr.w	$a3, $s3, 6400
	ldptr.w	$a4, $s3, 6404
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ldptr.w	$a0, $a0, 6396
	st.d	$s1, $fp, 48
	blez	$a0, .LBB7_15
# %bb.13:                               # %.lr.ph.i48
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s4, $a0, %got_pc_lo12(img)
	move	$s5, $zero
	move	$s6, $zero
	lu12i.w	$a0, 3
	ori	$s7, $a0, 3224
	.p2align	4, , 16
.LBB7_14:                               # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s1, 6440
	ld.d	$a1, $s4, 0
	ldx.d	$a0, $a0, $s5
	ldptr.w	$a2, $s1, 6392
	ldx.b	$a1, $a1, $s7
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s1, 6396
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB7_14
.LBB7_15:                               # %.preheader17.i40
	ldptr.w	$a0, $s1, 6404
	blez	$a0, .LBB7_21
# %bb.16:                               # %.lr.ph20.i41
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s4, $a0, %got_pc_lo12(img)
	move	$s6, $zero
	move	$s7, $zero
	lu12i.w	$a0, 3
	ori	$s5, $a0, 3228
	.p2align	4, , 16
.LBB7_17:                               # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s1, 6472
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s4, 0
	ldx.d	$a0, $a0, $s6
	ldptr.w	$a2, $s1, 6400
	ldx.b	$a1, $a1, $s5
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s1, 6404
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	blt	$s7, $a0, .LBB7_17
# %bb.18:                               # %.preheader.i44
	blez	$a0, .LBB7_21
# %bb.19:                               # %.lr.ph22.i45.preheader
	move	$s6, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB7_20:                               # %.lr.ph22.i45
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s1, 6472
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s4, 0
	ldx.d	$a0, $a0, $s6
	ldptr.w	$a2, $s1, 6400
	ldx.b	$a1, $a1, $s5
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s1, 6404
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	blt	$s7, $a0, .LBB7_20
.LBB7_21:                               # %clear_picture.exit51
	ld.d	$s1, $fp, 48
	ori	$a0, $s2, 2464
	ldx.w	$a0, $s3, $a0
	ldptr.w	$a1, $s1, 6396
	stptr.w	$a0, $s1, 6560
	blez	$a1, .LBB7_24
# %bb.22:                               # %.lr.ph.i60
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	move	$s4, $zero
	move	$s5, $zero
	lu12i.w	$a0, 3
	ori	$s6, $a0, 3224
	.p2align	4, , 16
.LBB7_23:                               # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s1, 6440
	ld.d	$a1, $s3, 0
	ldx.d	$a0, $a0, $s4
	ldptr.w	$a2, $s1, 6392
	ldx.b	$a1, $a1, $s6
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s1, 6396
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB7_23
.LBB7_24:                               # %.preheader17.i52
	ldptr.w	$a0, $s1, 6404
	blez	$a0, .LBB7_30
# %bb.25:                               # %.lr.ph20.i53
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	move	$s5, $zero
	move	$s6, $zero
	lu12i.w	$a0, 3
	ori	$s4, $a0, 3228
	.p2align	4, , 16
.LBB7_26:                               # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s1, 6472
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s3, 0
	ldx.d	$a0, $a0, $s5
	ldptr.w	$a2, $s1, 6400
	ldx.b	$a1, $a1, $s4
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s1, 6404
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB7_26
# %bb.27:                               # %.preheader.i56
	blez	$a0, .LBB7_30
# %bb.28:                               # %.lr.ph22.i57.preheader
	move	$s5, $zero
	move	$s6, $zero
	.p2align	4, , 16
.LBB7_29:                               # %.lr.ph22.i57
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s1, 6472
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s3, 0
	ldx.d	$a0, $a0, $s5
	ldptr.w	$a2, $s1, 6400
	ldx.b	$a1, $a1, $s4
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s1, 6404
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB7_29
.LBB7_30:                               # %clear_picture.exit63
	ld.d	$a0, $fp, 56
	ldptr.w	$a2, $a0, 6568
	ld.d	$a1, $fp, 48
	stptr.w	$a2, $a1, 6568
	beqz	$a2, .LBB7_32
# %bb.31:
	ori	$a2, $s2, 2476
	vldx	$vr0, $a0, $a2
	vstx	$vr0, $a1, $a2
.LBB7_32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
.LBB7_33:
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
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
.Lfunc_end7:
	.size	write_unpaired_field, .Lfunc_end7-write_unpaired_field
                                        # -- End function
	.globl	flush_direct_output             # -- Begin function flush_direct_output
	.p2align	5
	.type	flush_direct_output,@function
flush_direct_output:                    # @flush_direct_output
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(out_buffer)
	ld.d	$a1, $fp, %pc_lo12(out_buffer)
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 48
	st.d	$zero, $a1, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 56
	st.w	$zero, $a0, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	flush_direct_output, .Lfunc_end8-flush_direct_output
                                        # -- End function
	.globl	write_stored_frame              # -- Begin function write_stored_frame
	.p2align	5
	.type	write_stored_frame,@function
write_stored_frame:                     # @write_stored_frame
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(out_buffer)
	ld.d	$a2, $s1, %pc_lo12(out_buffer)
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 48
	st.d	$zero, $a1, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.w	$zero, $a0, 0
	ld.w	$a1, $fp, 0
	ori	$a2, $zero, 2
	st.d	$zero, $a0, 56
	blt	$a2, $a1, .LBB9_2
# %bb.1:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	b	.LBB9_3
.LBB9_2:
	ld.d	$a0, $fp, 40
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
.LBB9_3:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 32
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	write_stored_frame, .Lfunc_end9-write_stored_frame
                                        # -- End function
	.globl	direct_output                   # -- Begin function direct_output
	.p2align	5
	.type	direct_output,@function
direct_output:                          # @direct_output
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a3, $a0, 0
	pcalau12i	$s1, %pc_hi20(out_buffer)
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ori	$a2, $zero, 1
	move	$fp, $a1
	beq	$a3, $a2, .LBB10_3
# %bb.1:
	bnez	$a3, .LBB10_6
# %bb.2:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 48
	st.d	$zero, $a1, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 56
	st.w	$zero, $a0, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free_storable_picture)
	jr	$t8
.LBB10_3:
	ld.wu	$a1, $a0, 0
	andi	$a3, $a1, 1
	beqz	$a3, .LBB10_5
# %bb.4:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 48
	st.d	$zero, $a1, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.w	$a2, $s0, 0
	move	$a1, $zero
	st.d	$zero, $a0, 56
	st.w	$zero, $a0, 0
.LBB10_5:
	st.d	$s0, $a0, 48
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 0
	move	$a3, $a2
.LBB10_6:                               # %._crit_edge14
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB10_10
# %bb.7:
	andi	$a2, $a1, 2
	beqz	$a2, .LBB10_9
# %bb.8:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 48
	st.d	$zero, $a1, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	move	$a1, $zero
	st.d	$zero, $a0, 56
	st.w	$zero, $a0, 0
.LBB10_9:
	st.d	$s0, $a0, 56
	ori	$a1, $a1, 2
	st.w	$a1, $a0, 0
.LBB10_10:                              # %._crit_edge
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB10_12
# %bb.11:
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 48
	st.d	$zero, $a1, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 56
	st.w	$zero, $a0, 0
.LBB10_12:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	direct_output, .Lfunc_end10-direct_output
                                        # -- End function
	.globl	direct_output_paff              # -- Begin function direct_output_paff
	.p2align	5
	.type	direct_output_paff,@function
direct_output_paff:                     # @direct_output_paff
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(out_buffer)
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 48
	st.d	$zero, $a1, 40
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 56
	st.w	$zero, $a0, 0
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(direct_output)
	jr	$t8
.Lfunc_end11:
	.size	direct_output_paff, .Lfunc_end11-direct_output_paff
                                        # -- End function
	.type	.L__const.write_out_picture.SubWidthC,@object # @__const.write_out_picture.SubWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.write_out_picture.SubWidthC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	.L__const.write_out_picture.SubWidthC, 16

	.type	.L__const.write_out_picture.SubHeightC,@object # @__const.write_out_picture.SubHeightC
	.p2align	2, 0x0
.L__const.write_out_picture.SubHeightC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.write_out_picture.SubHeightC, 16

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"write_out_picture: buf"
	.size	.L.str.1, 23

	.type	out_buffer,@object              # @out_buffer
	.comm	out_buffer,8,8
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Warning!!! Frame can't fit in DPB. Displayed out of sequence."
	.size	.Lstr, 62

	.section	".note.GNU-stack","",@progbits
	.addrsig
