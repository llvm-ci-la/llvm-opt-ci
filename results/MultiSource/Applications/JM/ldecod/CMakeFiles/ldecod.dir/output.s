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
	move	$s1, $a7
	move	$s7, $a6
	move	$fp, $a5
	move	$s3, $a4
	move	$s4, $a3
	move	$s6, $a2
	move	$s0, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s8, $sp, 144
	add.d	$a0, $a5, $a6
	ori	$a1, $zero, 3
	sub.d	$s2, $a2, $a0
	bltu	$a4, $a1, .LBB1_8
# %bb.1:                                # %.thread
	add.d	$a0, $s1, $s8
	sub.d	$a0, $s4, $a0
	mul.d	$a1, $s2, $s3
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 2
.LBB1_2:                                # %.preheader
	sub.w	$a0, $s4, $s8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bge	$s1, $a0, .LBB1_16
# %bb.3:                                # %.lr.ph143
	sub.w	$s6, $s6, $s7
	bge	$fp, $s6, .LBB1_16
# %bb.4:                                # %.lr.ph.us.preheader
	move	$s4, $zero
	slli.d	$a0, $fp, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	mul.d	$a0, $s3, $s2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s2, $s1, $a0, 3
	move	$s7, $s4
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_6:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	add.d	$a0, $s0, $s7
	add.d	$a1, $a1, $s8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, 2
	add.w	$s7, $s7, $s3
	blt	$fp, $s6, .LBB1_6
# %bb.7:                                # %._crit_edge.us144
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s1, $s1, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.w	$s4, $s4, $a0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	blt	$s1, $a0, .LBB1_5
	b	.LBB1_16
.LBB1_8:
	or	$a0, $s7, $fp
	or	$a0, $a0, $s1
	or	$a0, $a0, $s8
	bnez	$a0, .LBB1_17
# %bb.9:
	ori	$a0, $zero, 1
	move	$s5, $s3
	bne	$s3, $a0, .LBB1_2
# %bb.10:                               # %.preheader135
	blez	$s4, .LBB1_16
# %bb.11:                               # %.preheader135
	blez	$s6, .LBB1_16
# %bb.12:                               # %.preheader134.us.preheader
	move	$a0, $zero
	slli.d	$a1, $s6, 1
	.p2align	4, , 16
.LBB1_13:                               # %.preheader134.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
	move	$a2, $zero
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 3
	.p2align	4, , 16
.LBB1_14:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	ldx.b	$a4, $a4, $a2
	st.b	$a4, $s0, 0
	addi.d	$a2, $a2, 2
	addi.d	$s0, $s0, 1
	bne	$a1, $a2, .LBB1_14
# %bb.15:                               # %._crit_edge.us
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB1_13
.LBB1_16:                               # %.loopexit
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
.LBB1_17:
	move	$s5, $s3
	b	.LBB1_2
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
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1464
	ldx.w	$a3, $a0, $a2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	beqz	$a3, .LBB3_2
# %bb.1:
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
.LBB3_2:
	add.d	$s4, $a0, $a2
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ldptr.w	$a3, $a0, 5872
	bstrpick.d	$a1, $a3, 62, 60
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.w	$a2, $s4, 196
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	add.w	$a1, $a3, $a1
	srai.d	$s3, $a1, 3
	ori	$a1, $zero, 2160
	beqz	$a2, .LBB3_4
# %bb.3:
	ld.w	$a2, $s4, 188
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.L__const.write_out_picture.SubWidthC)
	addi.d	$a3, $a3, %pc_lo12(.L__const.write_out_picture.SubWidthC)
	ldx.w	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(.L__const.write_out_picture.SubHeightC)
	addi.d	$a4, $a4, %pc_lo12(.L__const.write_out_picture.SubHeightC)
	ld.w	$a5, $s4, 192
	ldx.w	$a2, $a4, $a2
	ori	$a4, $zero, 2
	sub.d	$a4, $a4, $a5
	mul.d	$a2, $a4, $a2
	vld	$vr0, $s4, 200
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.w	$vr1, $a3, 1
	vshuf4i.w	$vr1, $vr1, 5
	vmul.w	$vr0, $vr1, $vr0
	b	.LBB3_5
.LBB3_4:
	vrepli.b	$vr0, 0
.LBB3_5:
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	ld.w	$a2, $s4, 8
	ld.w	$a3, $s4, 12
	ldx.w	$a0, $a0, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	mul.d	$a0, $a2, $s3
	mul.w	$a0, $a0, $a3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB3_7
# %bb.6:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	bnez	$a0, .LBB3_29
	b	.LBB3_8
.LBB3_7:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	bnez	$a0, .LBB3_29
.LBB3_8:
	ld.w	$s6, $s4, 200
	ld.w	$s2, $s4, 204
	ld.w	$a0, $s4, 192
	ori	$s1, $zero, 2
	ld.w	$a1, $s4, 208
	ld.w	$a2, $s4, 212
	sub.d	$a0, $s1, $a0
	ld.d	$a3, $s4, 72
	mul.w	$s5, $a0, $a1
	mul.w	$fp, $a2, $a0
	ld.w	$a4, $s4, 16
	ld.d	$a0, $a3, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.w	$s7, $s4, 20
	add.d	$a0, $s2, $s6
	sub.d	$s8, $a4, $a0
	ori	$a1, $zero, 3
	add.d	$a7, $fp, $s5
	bltu	$s3, $a1, .LBB3_17
# %bb.9:                                # %.thread.i
	sub.d	$a0, $s7, $a7
	mul.d	$a1, $s8, $s3
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	move	$s6, $a7
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	move	$a7, $s6
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB3_10:                               # %.preheader.i
	sub.w	$a0, $s7, $fp
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bge	$s5, $a0, .LBB3_26
# %bb.11:                               # %.lr.ph143.i
	sub.w	$fp, $a4, $s2
	bge	$s6, $fp, .LBB3_26
# %bb.12:                               # %.lr.ph.us.preheader.i
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $zero
	slli.d	$a0, $s6, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	mul.d	$a0, $s3, $s8
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_13:                               # %.lr.ph.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
	slli.d	$a0, $s5, 3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	move	$s4, $s7
	move	$s8, $s6
	.p2align	4, , 16
.LBB3_14:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s4
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 2
	add.w	$s4, $s4, $s3
	blt	$s6, $fp, .LBB3_14
# %bb.15:                               # %._crit_edge.us144.i
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	move	$s6, $s8
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$s5, $a0, .LBB3_13
# %bb.16:
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	b	.LBB3_26
.LBB3_17:
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 2, 0
	ori	$a2, $zero, 8
	move	$s1, $s3
	bne	$a1, $a2, .LBB3_10
# %bb.18:
	or	$a1, $s2, $s6
	or	$a1, $a1, $s5
	or	$a1, $a1, $fp
	move	$s1, $s3
	bnez	$a1, .LBB3_10
# %bb.19:                               # %.preheader135.i
	blez	$a4, .LBB3_26
# %bb.20:                               # %.preheader135.i
	blez	$s7, .LBB3_26
# %bb.21:                               # %.preheader134.us.preheader.i
	move	$a1, $zero
	slli.d	$a2, $a4, 1
	move	$a3, $s0
	.p2align	4, , 16
.LBB3_22:                               # %.preheader134.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
	move	$a4, $zero
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a5, $a1, $a5, 3
	.p2align	4, , 16
.LBB3_23:                               #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.b	$a6, $a6, $a4
	st.b	$a6, $a3, 0
	addi.d	$a4, $a4, 2
	addi.d	$a3, $a3, 1
	bne	$a2, $a4, .LBB3_23
# %bb.24:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB3_22 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $s7, .LBB3_22
# %bb.25:                               # %img2buf.exit.loopexit321
	ld.w	$a1, $s4, 16
	ld.w	$s7, $s4, 20
	sub.d	$s8, $a1, $a0
.LBB3_26:                               # %img2buf.exit
	sub.d	$a0, $s7, $a7
	mul.d	$a0, $a0, $s3
	mul.w	$a2, $a0, $s8
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 196
	beqz	$a0, .LBB3_28
# %bb.27:
	ld.w	$a0, $s4, 188
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.L__const.write_out_picture.SubWidthC)
	addi.d	$a1, $a1, %pc_lo12(.L__const.write_out_picture.SubWidthC)
	ldx.w	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L__const.write_out_picture.SubHeightC)
	addi.d	$a2, $a2, %pc_lo12(.L__const.write_out_picture.SubHeightC)
	ld.w	$a3, $s4, 192
	ldx.w	$a0, $a2, $a0
	ori	$a2, $zero, 2
	sub.d	$a2, $a2, $a3
	mul.d	$a0, $a2, $a0
	vld	$vr0, $s4, 200
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vshuf4i.w	$vr1, $vr1, 5
	vmul.w	$vr1, $vr1, $vr0
	b	.LBB3_29
.LBB3_28:
	vrepli.b	$vr1, 0
.LBB3_29:
	ld.d	$a0, $s4, 64
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.w	$s2, $s4, 8
	ld.w	$a7, $s4, 12
	vpickve2gr.w	$a2, $vr1, 0
	vpickve2gr.w	$a0, $vr1, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	add.d	$s5, $a2, $a0
	sub.d	$s6, $s2, $s5
	ori	$a0, $zero, 3
	vpickve2gr.w	$fp, $vr1, 3
	vpickve2gr.w	$s8, $vr1, 2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bltu	$s3, $a0, .LBB3_38
# %bb.30:                               # %.thread.i196
	vreplvei.w	$vr0, $vr1, 3
	vadd.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a0, $vr0, 2
	sub.d	$a0, $a7, $a0
	mul.d	$a1, $s6, $s3
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	move	$s7, $s5
	move	$s5, $a7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a7, $s5
	move	$s5, $s7
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ori	$s1, $zero, 2
.LBB3_31:                               # %.preheader.i186
	sub.w	$a0, $a7, $fp
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$s8, $a0, .LBB3_47
# %bb.32:                               # %.lr.ph143.i188
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.w	$s7, $s2, $a0
	bge	$a2, $s7, .LBB3_47
# %bb.33:                               # %.lr.ph.us.preheader.i189
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	move	$s5, $zero
	slli.d	$a0, $a2, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	mul.d	$s6, $s3, $s6
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_34:                               # %.lr.ph.us.i190
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_35 Depth 2
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	move	$s4, $s5
	move	$fp, $a2
	.p2align	4, , 16
.LBB3_35:                               #   Parent Loop BB3_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s4
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 2
	add.w	$s4, $s4, $s3
	blt	$fp, $s7, .LBB3_35
# %bb.36:                               # %._crit_edge.us144.i194
                                        #   in Loop: Header=BB3_34 Depth=1
	addi.d	$s8, $s8, 1
	add.w	$s5, $s5, $s6
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB3_34
# %bb.37:
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_47
.LBB3_38:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bstrins.d	$a0, $zero, 2, 0
	ori	$a1, $zero, 8
	move	$s1, $s3
	bne	$a0, $a1, .LBB3_31
# %bb.39:
	vreplvei.w	$vr0, $vr1, 3
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a0, $vr0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	move	$s1, $s3
	bnez	$a0, .LBB3_31
# %bb.40:                               # %.preheader135.i171
	blez	$s2, .LBB3_47
# %bb.41:                               # %.preheader135.i171
	blez	$a7, .LBB3_47
# %bb.42:                               # %.preheader134.us.preheader.i173
	move	$a0, $zero
	slli.d	$a1, $s2, 1
	move	$a2, $s0
	.p2align	4, , 16
.LBB3_43:                               # %.preheader134.us.i176
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_44 Depth 2
	move	$a3, $zero
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	.p2align	4, , 16
.LBB3_44:                               #   Parent Loop BB3_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ldx.b	$a5, $a5, $a3
	st.b	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a2, $a2, 1
	bne	$a1, $a3, .LBB3_44
# %bb.45:                               # %._crit_edge.us.i183
                                        #   in Loop: Header=BB3_43 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $a7, .LBB3_43
# %bb.46:                               # %img2buf.exit197.loopexit320
	ld.w	$a0, $s4, 8
	ld.w	$a7, $s4, 12
	sub.d	$s6, $a0, $s5
.LBB3_47:                               # %img2buf.exit197
	move	$s1, $fp
	add.d	$fp, $s8, $fp
	sub.d	$a0, $a7, $fp
	mul.d	$a0, $a0, $s3
	mul.w	$a2, $a0, $s6
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 188
	beqz	$a0, .LBB3_57
# %bb.48:
	ld.w	$a4, $s4, 200
	ld.w	$a5, $s4, 204
	ld.w	$a0, $s4, 192
	ori	$s1, $zero, 2
	ld.w	$a1, $s4, 208
	ld.w	$a2, $s4, 212
	sub.d	$a0, $s1, $a0
	ld.d	$a3, $s4, 72
	mul.w	$s5, $a0, $a1
	mul.w	$s7, $a2, $a0
	ld.w	$s2, $s4, 16
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.w	$s6, $s4, 20
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $a5, $a4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	sub.d	$s8, $s2, $a0
	ori	$a0, $zero, 3
	add.d	$fp, $s7, $s5
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	bltu	$s3, $a0, .LBB3_75
# %bb.49:                               # %.thread.i225
	sub.d	$a0, $s6, $fp
	mul.d	$a1, $s8, $s3
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
.LBB3_50:                               # %.preheader.i215
	sub.w	$a0, $s6, $s7
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$s5, $a0, .LBB3_96
# %bb.51:                               # %.lr.ph143.i217
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.w	$s4, $s2, $a0
	bge	$a4, $s4, .LBB3_95
# %bb.52:                               # %.lr.ph.us.preheader.i218
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $zero
	slli.d	$a0, $a4, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	mul.d	$a0, $s3, $s8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$s6, $s5
	.p2align	4, , 16
.LBB3_53:                               # %.lr.ph.us.i219
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_54 Depth 2
	slli.d	$a0, $s6, 3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	move	$s7, $fp
	move	$s8, $a4
	.p2align	4, , 16
.LBB3_54:                               #   Parent Loop BB3_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s7
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	addi.d	$s2, $s2, 2
	add.w	$s7, $s7, $s3
	blt	$s8, $s4, .LBB3_54
# %bb.55:                               # %._crit_edge.us144.i223
                                        #   in Loop: Header=BB3_53 Depth=1
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.w	$fp, $fp, $a0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s6, $a0, .LBB3_53
# %bb.56:
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_96
.LBB3_57:
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 3012
	beqz	$a0, .LBB3_126
# %bb.58:
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1780
	ldx.w	$s7, $a0, $a1
	ld.wu	$a0, $s4, 12
	ori	$s8, $zero, 1
	addi.d	$s1, $s4, 72
	ld.wu	$a1, $s4, 8
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 1
	srli.d	$a0, $a1, 31
	add.w	$a0, $a1, $a0
	srai.d	$a3, $a0, 1
	ori	$a1, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_mem3Dpel)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 12
	addi.w	$t5, $a0, 0
	ld.wu	$a1, $s4, 8
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$s2, $a0, 1
	addi.w	$t6, $a1, 0
	srli.d	$a0, $a1, 31
	add.w	$a1, $a1, $a0
	ori	$a0, $zero, 2
	srai.d	$s6, $a1, 1
	blt	$t5, $a0, .LBB3_84
# %bb.59:
	blt	$t6, $a0, .LBB3_84
# %bb.60:                               # %.preheader.lr.ph.split.us
	ld.d	$a2, $s1, 0
	move	$a0, $zero
	addi.d	$a1, $s7, -1
	sll.w	$a1, $s8, $a1
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $s6, 31, 0
	bstrpick.d	$a4, $s6, 29, 4
	slli.d	$a4, $a4, 4
	vreplgr2vr.h	$vr0, $a1
	andi	$a5, $s6, 8
	bstrpick.d	$a6, $s6, 29, 3
	slli.d	$a6, $a6, 3
	sub.d	$a7, $zero, $a6
	ori	$t0, $zero, 8
	ori	$t1, $zero, 16
	b	.LBB3_62
	.p2align	4, , 16
.LBB3_61:                               # %._crit_edge.us
                                        #   in Loop: Header=BB3_62 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s2, .LBB3_84
.LBB3_62:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_70 Depth 2
                                        #     Child Loop BB3_67 Depth 2
                                        #     Child Loop BB3_74 Depth 2
	slli.d	$t2, $a0, 3
	ldx.d	$t2, $a2, $t2
	bgeu	$s6, $t0, .LBB3_64
# %bb.63:                               #   in Loop: Header=BB3_62 Depth=1
	move	$t3, $zero
	b	.LBB3_73
	.p2align	4, , 16
.LBB3_64:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_62 Depth=1
	bgeu	$s6, $t1, .LBB3_69
# %bb.65:                               #   in Loop: Header=BB3_62 Depth=1
	move	$t4, $zero
.LBB3_66:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB3_62 Depth=1
	add.d	$t3, $a7, $t4
	alsl.d	$t4, $t4, $t2, 1
	.p2align	4, , 16
.LBB3_67:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB3_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t4, 0
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB3_67
# %bb.68:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_62 Depth=1
	move	$t3, $a6
	beq	$a6, $a3, .LBB3_61
	b	.LBB3_73
	.p2align	4, , 16
.LBB3_69:                               # %vector.body.preheader
                                        #   in Loop: Header=BB3_62 Depth=1
	addi.d	$t3, $t2, 16
	move	$t4, $a4
	.p2align	4, , 16
.LBB3_70:                               # %vector.body
                                        #   Parent Loop BB3_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t3, -16
	vst	$vr0, $t3, 0
	addi.d	$t4, $t4, -16
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB3_70
# %bb.71:                               # %middle.block
                                        #   in Loop: Header=BB3_62 Depth=1
	beq	$a4, $a3, .LBB3_61
# %bb.72:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_62 Depth=1
	move	$t4, $a4
	move	$t3, $a4
	bnez	$a5, .LBB3_66
	.p2align	4, , 16
.LBB3_73:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB3_62 Depth=1
	alsl.d	$t2, $t3, $t2, 1
	sub.d	$t3, $a3, $t3
	.p2align	4, , 16
.LBB3_74:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB3_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a1, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 2
	bnez	$t3, .LBB3_74
	b	.LBB3_61
.LBB3_75:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bstrins.d	$a0, $zero, 2, 0
	ori	$a1, $zero, 8
	move	$s1, $s3
	bne	$a0, $a1, .LBB3_50
# %bb.76:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a0, $a4
	or	$a0, $a0, $s5
	or	$a0, $a0, $s7
	move	$s1, $s3
	bnez	$a0, .LBB3_50
# %bb.77:                               # %.preheader135.i200
	blez	$s2, .LBB3_96
# %bb.78:                               # %.preheader135.i200
	blez	$s6, .LBB3_96
# %bb.79:                               # %.preheader134.us.preheader.i202
	move	$a0, $zero
	slli.d	$a1, $s2, 1
	move	$a2, $s0
	.p2align	4, , 16
.LBB3_80:                               # %.preheader134.us.i205
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_81 Depth 2
	move	$a3, $zero
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	.p2align	4, , 16
.LBB3_81:                               #   Parent Loop BB3_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ldx.b	$a5, $a5, $a3
	st.b	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a2, $a2, 1
	bne	$a1, $a3, .LBB3_81
# %bb.82:                               # %._crit_edge.us.i212
                                        #   in Loop: Header=BB3_80 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s6, .LBB3_80
# %bb.83:                               # %img2buf.exit226.loopexit319
	ld.w	$a0, $s4, 16
	ld.w	$s6, $s4, 20
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$s8, $a0, $a1
	b	.LBB3_96
.LBB3_84:                               # %._crit_edge313
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srai.d	$s8, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srai.d	$a3, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srai.d	$s5, $a0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srai.d	$s7, $a0, 1
	add.d	$a0, $s8, $a3
	ori	$a1, $zero, 3
	sub.d	$s4, $s6, $a0
	bltu	$s3, $a1, .LBB3_115
# %bb.85:                               # %.thread.i283
	add.d	$a0, $s5, $s7
	sub.d	$a0, $s2, $a0
	mul.d	$a0, $a0, $s3
	mul.w	$a2, $a0, $s4
	move	$a0, $s0
	move	$a1, $zero
	move	$fp, $t5
	move	$s1, $t6
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	move	$t6, $s1
	move	$t5, $fp
	ori	$s1, $zero, 2
.LBB3_86:                               # %.preheader.i273
	sub.d	$a0, $s2, $s7
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bge	$s5, $a0, .LBB3_93
# %bb.87:                               # %.lr.ph143.i275
	sub.d	$s6, $s6, $a3
	bge	$s8, $s6, .LBB3_93
# %bb.88:                               # %.lr.ph.us.preheader.i276
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	move	$s7, $zero
	slli.d	$a0, $s8, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	mul.d	$a0, $s3, $s4
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_89:                               # %.lr.ph.us.i277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_90 Depth 2
	slli.d	$a0, $s5, 3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	move	$s4, $s7
	move	$fp, $s8
	.p2align	4, , 16
.LBB3_90:                               #   Parent Loop BB3_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s4
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	addi.d	$s2, $s2, 2
	add.w	$s4, $s4, $s3
	blt	$s8, $s6, .LBB3_90
# %bb.91:                               # %._crit_edge.us144.i281
                                        #   in Loop: Header=BB3_89 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	move	$s8, $fp
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$s5, $a0, .LBB3_89
# %bb.92:
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB3_94
.LBB3_93:
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
.LBB3_94:                               # %img2buf.exit284
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	sub.w	$a0, $t5, $s2
	mul.d	$a0, $a0, $s3
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	sub.w	$a1, $t6, $s4
	mul.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a2, $a0, 1
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 12
	sub.w	$a0, $a0, $s2
	mul.d	$a0, $a0, $s3
	ld.w	$a1, $s1, 8
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	sub.w	$a1, $a1, $s4
	mul.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a2, $a0, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 72
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(free_mem3Dpel)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 72
	b	.LBB3_126
.LBB3_95:
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
.LBB3_96:                               # %img2buf.exit226
	sub.d	$a0, $s6, $fp
	mul.d	$a0, $a0, $s3
	mul.w	$a2, $a0, $s8
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_126
# %bb.97:
	ld.d	$a0, $s4, 72
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.w	$s2, $s4, 16
	ld.w	$s7, $s4, 20
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$s6, $s2, $a1
	bltu	$s3, $a0, .LBB3_106
# %bb.98:                               # %.thread.i254
	sub.d	$a0, $s7, $fp
	mul.d	$a1, $s6, $s3
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB3_99:                               # %.preheader.i244
	sub.w	$a0, $s7, $a2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$s5, $a0, .LBB3_125
# %bb.100:                              # %.lr.ph143.i246
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.w	$fp, $s2, $a0
	bge	$a1, $fp, .LBB3_124
# %bb.101:                              # %.lr.ph.us.preheader.i247
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	move	$s4, $zero
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	mul.d	$s8, $s3, $s6
	.p2align	4, , 16
.LBB3_102:                              # %.lr.ph.us.i248
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_103 Depth 2
	slli.d	$a0, $s5, 3
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a2
	move	$s7, $s4
	move	$s6, $a1
	.p2align	4, , 16
.LBB3_103:                              #   Parent Loop BB3_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s7
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 2
	add.w	$s7, $s7, $s3
	blt	$s6, $fp, .LBB3_103
# %bb.104:                              # %._crit_edge.us144.i252
                                        #   in Loop: Header=BB3_102 Depth=1
	addi.d	$s5, $s5, 1
	add.w	$s4, $s4, $s8
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s5, $a0, .LBB3_102
# %bb.105:
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_125
.LBB3_106:
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bstrins.d	$a3, $zero, 2, 0
	ori	$a0, $zero, 8
	move	$s1, $s3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bne	$a3, $a0, .LBB3_99
# %bb.107:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	or	$a0, $a0, $s5
	or	$a0, $a0, $a2
	move	$s1, $s3
	bnez	$a0, .LBB3_99
# %bb.108:                              # %.preheader135.i229
	blez	$s2, .LBB3_125
# %bb.109:                              # %.preheader135.i229
	blez	$s7, .LBB3_125
# %bb.110:                              # %.preheader134.us.preheader.i231
	move	$a0, $zero
	slli.d	$a1, $s2, 1
	move	$a2, $s0
	.p2align	4, , 16
.LBB3_111:                              # %.preheader134.us.i234
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_112 Depth 2
	move	$a3, $zero
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	.p2align	4, , 16
.LBB3_112:                              #   Parent Loop BB3_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ldx.b	$a5, $a5, $a3
	st.b	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a2, $a2, 1
	bne	$a1, $a3, .LBB3_112
# %bb.113:                              # %._crit_edge.us.i241
                                        #   in Loop: Header=BB3_111 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s7, .LBB3_111
# %bb.114:                              # %img2buf.exit255.loopexit318
	ld.w	$a0, $s4, 16
	ld.w	$s7, $s4, 20
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$s6, $a0, $a1
	b	.LBB3_125
.LBB3_115:
	bstrins.d	$fp, $zero, 2, 0
	ori	$a0, $zero, 8
	move	$s1, $s3
	bne	$fp, $a0, .LBB3_86
# %bb.116:
	or	$a0, $s5, $s7
	or	$a0, $a0, $a3
	or	$a0, $a0, $s8
	move	$s1, $s3
	bnez	$a0, .LBB3_86
# %bb.117:                              # %.preheader135.i258
	ori	$a0, $zero, 2
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	blt	$t5, $a0, .LBB3_94
# %bb.118:                              # %.preheader135.i258
	blt	$t6, $a0, .LBB3_94
# %bb.119:                              # %.preheader134.us.preheader.i260
	move	$a0, $zero
	move	$a1, $s0
	.p2align	4, , 16
.LBB3_120:                              # %.preheader134.us.i263
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_121 Depth 2
	move	$a2, $zero
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 3
	move	$a4, $s6
	.p2align	4, , 16
.LBB3_121:                              #   Parent Loop BB3_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, 0
	ldx.b	$a5, $a5, $a2
	st.b	$a5, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 2
	bnez	$a4, .LBB3_121
# %bb.122:                              # %._crit_edge.us.i270
                                        #   in Loop: Header=BB3_120 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s2, .LBB3_120
# %bb.123:                              # %img2buf.exit284.loopexit316
	ld.w	$t5, $s1, 12
	ld.w	$t6, $s1, 8
	b	.LBB3_94
.LBB3_124:
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
.LBB3_125:                              # %img2buf.exit255
	sub.d	$a0, $s7, $fp
	mul.d	$a0, $a0, $s3
	mul.w	$a2, $a0, $s6
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
.LBB3_126:
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
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1472
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 4
	lu12i.w	$a0, 1
	blez	$a2, .LBB6_17
# %bb.1:                                # %.preheader32.lr.ph
	ld.w	$a3, $a1, 0
	blez	$a3, .LBB6_17
# %bb.2:                                # %.preheader32.lr.ph.split.us
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a5, $a4, 0
	move	$a4, $zero
	ori	$a6, $a0, 1796
	ldx.w	$a5, $a5, $a6
	ld.d	$a6, $a1, 56
	bstrpick.d	$a7, $a3, 30, 4
	slli.d	$a7, $a7, 4
	vreplgr2vr.h	$vr0, $a5
	andi	$t0, $a3, 8
	bstrpick.d	$t1, $a3, 30, 3
	slli.d	$t1, $t1, 3
	sub.d	$t2, $zero, $t1
	ori	$t3, $zero, 8
	ori	$t4, $zero, 16
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a2, .LBB6_17
.LBB6_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
                                        #     Child Loop BB6_9 Depth 2
                                        #     Child Loop BB6_16 Depth 2
	slli.d	$t5, $a4, 3
	ldx.d	$t5, $a6, $t5
	bgeu	$a3, $t3, .LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	move	$t6, $zero
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	bgeu	$a3, $t4, .LBB6_11
# %bb.7:                                #   in Loop: Header=BB6_4 Depth=1
	move	$t7, $zero
.LBB6_8:                                # %vec.epilog.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	add.d	$t6, $t2, $t7
	alsl.d	$t7, $t7, $t5, 1
	.p2align	4, , 16
.LBB6_9:                                # %vec.epilog.vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t7, 0
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, 16
	bnez	$t6, .LBB6_9
# %bb.10:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t6, $t1
	beq	$t1, $a3, .LBB6_3
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_11:                               # %vector.body.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$t6, $t5, 16
	move	$t7, $a7
	.p2align	4, , 16
.LBB6_12:                               # %vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t6, -16
	vst	$vr0, $t6, 0
	addi.d	$t7, $t7, -16
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB6_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	beq	$a7, $a3, .LBB6_3
# %bb.14:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t7, $a7
	move	$t6, $a7
	bnez	$t0, .LBB6_8
	.p2align	4, , 16
.LBB6_15:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	alsl.d	$t5, $t6, $t5, 1
	sub.d	$t6, $a3, $t6
	.p2align	4, , 16
.LBB6_16:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a5, $t5, 0
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 2
	bnez	$t6, .LBB6_16
	b	.LBB6_3
.LBB6_17:                               # %.preheader31
	ld.w	$a2, $a1, 12
	blez	$a2, .LBB6_50
# %bb.18:                               # %.preheader30.lr.ph
	ld.w	$a3, $a1, 8
	blez	$a3, .LBB6_34
# %bb.19:                               # %.preheader30.lr.ph.split.us
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a1, 64
	move	$a4, $zero
	ori	$a7, $a0, 1800
	ldx.w	$a5, $a5, $a7
	ld.d	$a6, $a6, 0
	bstrpick.d	$a7, $a3, 30, 4
	slli.d	$a7, $a7, 4
	vreplgr2vr.h	$vr0, $a5
	andi	$t0, $a3, 8
	bstrpick.d	$t1, $a3, 30, 3
	slli.d	$t1, $t1, 3
	sub.d	$t2, $zero, $t1
	ori	$t3, $zero, 8
	ori	$t4, $zero, 16
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_20:                               # %._crit_edge.us37
                                        #   in Loop: Header=BB6_21 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a2, .LBB6_34
.LBB6_21:                               # %iter.check80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
                                        #     Child Loop BB6_26 Depth 2
                                        #     Child Loop BB6_33 Depth 2
	slli.d	$t5, $a4, 3
	ldx.d	$t5, $a6, $t5
	bgeu	$a3, $t3, .LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=1
	move	$t6, $zero
	b	.LBB6_32
	.p2align	4, , 16
.LBB6_23:                               # %vector.main.loop.iter.check82
                                        #   in Loop: Header=BB6_21 Depth=1
	bgeu	$a3, $t4, .LBB6_28
# %bb.24:                               #   in Loop: Header=BB6_21 Depth=1
	move	$t7, $zero
.LBB6_25:                               # %vec.epilog.ph95
                                        #   in Loop: Header=BB6_21 Depth=1
	add.d	$t6, $t2, $t7
	alsl.d	$t7, $t7, $t5, 1
	.p2align	4, , 16
.LBB6_26:                               # %vec.epilog.vector.body103
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t7, 0
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, 16
	bnez	$t6, .LBB6_26
# %bb.27:                               # %vec.epilog.middle.block106
                                        #   in Loop: Header=BB6_21 Depth=1
	move	$t6, $t1
	beq	$t1, $a3, .LBB6_20
	b	.LBB6_32
	.p2align	4, , 16
.LBB6_28:                               # %vector.body88.preheader
                                        #   in Loop: Header=BB6_21 Depth=1
	addi.d	$t6, $t5, 16
	move	$t7, $a7
	.p2align	4, , 16
.LBB6_29:                               # %vector.body88
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t6, -16
	vst	$vr0, $t6, 0
	addi.d	$t7, $t7, -16
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB6_29
# %bb.30:                               # %middle.block91
                                        #   in Loop: Header=BB6_21 Depth=1
	beq	$a7, $a3, .LBB6_20
# %bb.31:                               # %vec.epilog.iter.check96
                                        #   in Loop: Header=BB6_21 Depth=1
	move	$t7, $a7
	move	$t6, $a7
	bnez	$t0, .LBB6_25
	.p2align	4, , 16
.LBB6_32:                               # %vec.epilog.scalar.ph94.preheader
                                        #   in Loop: Header=BB6_21 Depth=1
	alsl.d	$t5, $t6, $t5, 1
	sub.d	$t6, $a3, $t6
	.p2align	4, , 16
.LBB6_33:                               # %vec.epilog.scalar.ph94
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a5, $t5, 0
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 2
	bnez	$t6, .LBB6_33
	b	.LBB6_20
.LBB6_34:                               # %.preheader.lr.ph
	ld.w	$a3, $a1, 8
	blez	$a3, .LBB6_50
# %bb.35:                               # %.preheader.lr.ph.split.us
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a4, $a4, 0
	ld.d	$a5, $a1, 64
	move	$a1, $zero
	ori	$a0, $a0, 1800
	ldx.w	$a0, $a4, $a0
	ld.d	$a4, $a5, 8
	bstrpick.d	$a5, $a3, 30, 4
	slli.d	$a5, $a5, 4
	vreplgr2vr.h	$vr0, $a0
	andi	$a6, $a3, 8
	bstrpick.d	$a7, $a3, 30, 3
	slli.d	$a7, $a7, 3
	sub.d	$t0, $zero, $a7
	ori	$t1, $zero, 8
	ori	$t2, $zero, 16
	b	.LBB6_37
	.p2align	4, , 16
.LBB6_36:                               # %._crit_edge.us41
                                        #   in Loop: Header=BB6_37 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB6_50
.LBB6_37:                               # %iter.check111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_45 Depth 2
                                        #     Child Loop BB6_42 Depth 2
                                        #     Child Loop BB6_49 Depth 2
	slli.d	$t3, $a1, 3
	ldx.d	$t3, $a4, $t3
	bgeu	$a3, $t1, .LBB6_39
# %bb.38:                               #   in Loop: Header=BB6_37 Depth=1
	move	$t4, $zero
	b	.LBB6_48
	.p2align	4, , 16
.LBB6_39:                               # %vector.main.loop.iter.check113
                                        #   in Loop: Header=BB6_37 Depth=1
	bgeu	$a3, $t2, .LBB6_44
# %bb.40:                               #   in Loop: Header=BB6_37 Depth=1
	move	$t5, $zero
.LBB6_41:                               # %vec.epilog.ph126
                                        #   in Loop: Header=BB6_37 Depth=1
	add.d	$t4, $t0, $t5
	alsl.d	$t5, $t5, $t3, 1
	.p2align	4, , 16
.LBB6_42:                               # %vec.epilog.vector.body134
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t5, 0
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB6_42
# %bb.43:                               # %vec.epilog.middle.block137
                                        #   in Loop: Header=BB6_37 Depth=1
	move	$t4, $a7
	beq	$a7, $a3, .LBB6_36
	b	.LBB6_48
	.p2align	4, , 16
.LBB6_44:                               # %vector.body119.preheader
                                        #   in Loop: Header=BB6_37 Depth=1
	addi.d	$t4, $t3, 16
	move	$t5, $a5
	.p2align	4, , 16
.LBB6_45:                               # %vector.body119
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t4, -16
	vst	$vr0, $t4, 0
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB6_45
# %bb.46:                               # %middle.block122
                                        #   in Loop: Header=BB6_37 Depth=1
	beq	$a5, $a3, .LBB6_36
# %bb.47:                               # %vec.epilog.iter.check127
                                        #   in Loop: Header=BB6_37 Depth=1
	move	$t5, $a5
	move	$t4, $a5
	bnez	$a6, .LBB6_41
	.p2align	4, , 16
.LBB6_48:                               # %vec.epilog.scalar.ph125.preheader
                                        #   in Loop: Header=BB6_37 Depth=1
	alsl.d	$t3, $t4, $t3, 1
	sub.d	$t4, $a3, $t4
	.p2align	4, , 16
.LBB6_49:                               # %vec.epilog.scalar.ph125
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a0, $t3, 0
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 2
	bnez	$t4, .LBB6_49
	b	.LBB6_36
.LBB6_50:                               # %._crit_edge40
	ret
.Lfunc_end6:
	.size	clear_picture, .Lfunc_end6-clear_picture
                                        # -- End function
	.globl	write_unpaired_field            # -- Begin function write_unpaired_field
	.p2align	5
	.type	write_unpaired_field,@function
write_unpaired_field:                   # @write_unpaired_field
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
	ld.wu	$a0, $a0, 0
	move	$s0, $a1
	andi	$a1, $a0, 1
	lu12i.w	$s1, 77
	beqz	$a1, .LBB7_51
# %bb.1:
	ld.d	$a0, $fp, 56
	ori	$s2, $s1, 1472
	add.d	$s3, $a0, $s2
	ldx.w	$a1, $a0, $s2
	ld.w	$a0, $s3, 4
	ld.w	$a4, $s3, 12
	ld.w	$a3, $s3, 8
	slli.w	$a2, $a0, 1
	slli.w	$a4, $a4, 1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	add.d	$a2, $a0, $s2
	ld.w	$a3, $s3, 180
	ld.w	$a1, $a2, 4
	st.d	$a0, $fp, 64
	st.w	$a3, $a2, 180
	blez	$a1, .LBB7_18
# %bb.2:                                # %.preheader32.lr.ph.i
	ld.w	$a0, $a2, 0
	blez	$a0, .LBB7_18
# %bb.3:                                # %.preheader32.lr.ph.split.us.i
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a4, $a3, 0
	move	$a3, $zero
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1796
	ldx.w	$a4, $a4, $a5
	ld.d	$a5, $a2, 56
	bstrpick.d	$a6, $a0, 30, 4
	slli.d	$a6, $a6, 4
	vreplgr2vr.h	$vr0, $a4
	andi	$a7, $a0, 8
	bstrpick.d	$t0, $a0, 30, 3
	slli.d	$t0, $t0, 3
	sub.d	$t1, $zero, $t0
	ori	$t2, $zero, 8
	ori	$t3, $zero, 16
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %._crit_edge.us.i
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB7_18
.LBB7_5:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_13 Depth 2
                                        #     Child Loop BB7_10 Depth 2
                                        #     Child Loop BB7_17 Depth 2
	slli.d	$t4, $a3, 3
	ldx.d	$t4, $a5, $t4
	bgeu	$a0, $t2, .LBB7_7
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	move	$t6, $zero
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_7:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB7_5 Depth=1
	bgeu	$a0, $t3, .LBB7_12
# %bb.8:                                #   in Loop: Header=BB7_5 Depth=1
	move	$t7, $zero
.LBB7_9:                                # %vec.epilog.ph
                                        #   in Loop: Header=BB7_5 Depth=1
	add.d	$t5, $t1, $t7
	alsl.d	$t6, $t7, $t4, 1
	.p2align	4, , 16
.LBB7_10:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t6, 0
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 16
	bnez	$t5, .LBB7_10
# %bb.11:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$t6, $t0
	beq	$t0, $a0, .LBB7_4
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_12:                               # %vector.body.preheader
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$t5, $t4, 16
	move	$t6, $a6
	.p2align	4, , 16
.LBB7_13:                               # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t5, -16
	vst	$vr0, $t5, 0
	addi.d	$t6, $t6, -16
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB7_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	beq	$a6, $a0, .LBB7_4
# %bb.15:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$t7, $a6
	move	$t6, $a6
	bnez	$a7, .LBB7_9
	.p2align	4, , 16
.LBB7_16:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB7_5 Depth=1
	sub.d	$t5, $a0, $t6
	alsl.d	$t4, $t6, $t4, 1
	.p2align	4, , 16
.LBB7_17:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a4, $t4, 0
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB7_17
	b	.LBB7_4
.LBB7_18:                               # %.preheader31.i
	ld.w	$a0, $a2, 12
	blez	$a0, .LBB7_50
# %bb.19:                               # %.preheader30.lr.ph.i
	ld.w	$a1, $a2, 8
	blez	$a1, .LBB7_50
# %bb.20:                               # %.preheader30.lr.ph.split.us.i
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	move	$a7, $zero
	ld.d	$a5, $a3, 0
	ld.d	$a4, $a2, 64
	lu12i.w	$a2, 1
	ori	$t0, $a2, 1800
	ldx.w	$t1, $a5, $t0
	ld.d	$t2, $a4, 0
	bstrpick.d	$a5, $a1, 30, 4
	slli.d	$t3, $a5, 4
	vreplgr2vr.h	$vr0, $t1
	andi	$a2, $a1, 8
	bstrpick.d	$a6, $a1, 30, 3
	slli.d	$t4, $a6, 3
	sub.d	$t5, $zero, $t4
	ori	$t6, $zero, 8
	ori	$t7, $zero, 16
	b	.LBB7_22
	.p2align	4, , 16
.LBB7_21:                               # %._crit_edge.us37.i
                                        #   in Loop: Header=BB7_22 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a0, .LBB7_35
.LBB7_22:                               # %iter.check95
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_30 Depth 2
                                        #     Child Loop BB7_27 Depth 2
                                        #     Child Loop BB7_34 Depth 2
	slli.d	$t8, $a7, 3
	ldx.d	$t8, $t2, $t8
	bgeu	$a1, $t6, .LBB7_24
# %bb.23:                               #   in Loop: Header=BB7_22 Depth=1
	move	$s3, $zero
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_24:                               # %vector.main.loop.iter.check97
                                        #   in Loop: Header=BB7_22 Depth=1
	bgeu	$a1, $t7, .LBB7_29
# %bb.25:                               #   in Loop: Header=BB7_22 Depth=1
	move	$s4, $zero
.LBB7_26:                               # %vec.epilog.ph110
                                        #   in Loop: Header=BB7_22 Depth=1
	add.d	$s2, $t5, $s4
	alsl.d	$s3, $s4, $t8, 1
	.p2align	4, , 16
.LBB7_27:                               # %vec.epilog.vector.body118
                                        #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s3, 0
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, 16
	bnez	$s2, .LBB7_27
# %bb.28:                               # %vec.epilog.middle.block121
                                        #   in Loop: Header=BB7_22 Depth=1
	move	$s3, $t4
	beq	$t4, $a1, .LBB7_21
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_29:                               # %vector.body103.preheader
                                        #   in Loop: Header=BB7_22 Depth=1
	addi.d	$s2, $t8, 16
	move	$s3, $t3
	.p2align	4, , 16
.LBB7_30:                               # %vector.body103
                                        #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s2, -16
	vst	$vr0, $s2, 0
	addi.d	$s3, $s3, -16
	addi.d	$s2, $s2, 32
	bnez	$s3, .LBB7_30
# %bb.31:                               # %middle.block106
                                        #   in Loop: Header=BB7_22 Depth=1
	beq	$t3, $a1, .LBB7_21
# %bb.32:                               # %vec.epilog.iter.check111
                                        #   in Loop: Header=BB7_22 Depth=1
	move	$s4, $t3
	move	$s3, $t3
	bnez	$a2, .LBB7_26
	.p2align	4, , 16
.LBB7_33:                               # %vec.epilog.scalar.ph109.preheader
                                        #   in Loop: Header=BB7_22 Depth=1
	sub.d	$s2, $a1, $s3
	alsl.d	$t8, $s3, $t8, 1
	.p2align	4, , 16
.LBB7_34:                               # %vec.epilog.scalar.ph109
                                        #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t1, $t8, 0
	addi.d	$s2, $s2, -1
	addi.d	$t8, $t8, 2
	bnez	$s2, .LBB7_34
	b	.LBB7_21
.LBB7_35:                               # %.preheader.lr.ph.split.us.i
	ld.d	$a3, $a3, 0
	ldx.w	$a3, $a3, $t0
	move	$a7, $zero
	ld.d	$a4, $a4, 8
	slli.d	$a5, $a5, 4
	vreplgr2vr.h	$vr0, $a3
	slli.d	$a6, $a6, 3
	sub.d	$t0, $zero, $a6
	ori	$t1, $zero, 8
	ori	$t2, $zero, 16
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               # %._crit_edge.us41.i
                                        #   in Loop: Header=BB7_37 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a0, .LBB7_50
.LBB7_37:                               # %iter.check126
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_45 Depth 2
                                        #     Child Loop BB7_42 Depth 2
                                        #     Child Loop BB7_49 Depth 2
	slli.d	$t3, $a7, 3
	ldx.d	$t3, $a4, $t3
	bgeu	$a1, $t1, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=1
	move	$t5, $zero
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_39:                               # %vector.main.loop.iter.check128
                                        #   in Loop: Header=BB7_37 Depth=1
	bgeu	$a1, $t2, .LBB7_44
# %bb.40:                               #   in Loop: Header=BB7_37 Depth=1
	move	$t6, $zero
.LBB7_41:                               # %vec.epilog.ph141
                                        #   in Loop: Header=BB7_37 Depth=1
	add.d	$t4, $t0, $t6
	alsl.d	$t5, $t6, $t3, 1
	.p2align	4, , 16
.LBB7_42:                               # %vec.epilog.vector.body149
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t5, 0
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB7_42
# %bb.43:                               # %vec.epilog.middle.block152
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$t5, $a6
	beq	$a6, $a1, .LBB7_36
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_44:                               # %vector.body134.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	addi.d	$t4, $t3, 16
	move	$t5, $a5
	.p2align	4, , 16
.LBB7_45:                               # %vector.body134
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t4, -16
	vst	$vr0, $t4, 0
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB7_45
# %bb.46:                               # %middle.block137
                                        #   in Loop: Header=BB7_37 Depth=1
	beq	$a5, $a1, .LBB7_36
# %bb.47:                               # %vec.epilog.iter.check142
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$t6, $a5
	move	$t5, $a5
	bnez	$a2, .LBB7_41
	.p2align	4, , 16
.LBB7_48:                               # %vec.epilog.scalar.ph140.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	sub.d	$t4, $a1, $t5
	alsl.d	$t3, $t5, $t3, 1
	.p2align	4, , 16
.LBB7_49:                               # %vec.epilog.scalar.ph140
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a3, $t3, 0
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 2
	bnez	$t4, .LBB7_49
	b	.LBB7_36
.LBB7_50:                               # %clear_picture.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
.LBB7_51:
	andi	$a0, $a0, 2
	beqz	$a0, .LBB7_104
# %bb.52:
	ld.d	$a0, $fp, 64
	ori	$s2, $s1, 1472
	add.d	$s3, $a0, $s2
	ldx.w	$a1, $a0, $s2
	ld.w	$a0, $s3, 4
	ld.w	$a4, $s3, 12
	ld.w	$a3, $s3, 8
	slli.w	$a2, $a0, 1
	slli.w	$a4, $a4, 1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s2
	ld.w	$a3, $s3, 180
	ld.w	$a2, $a1, 4
	st.d	$a0, $fp, 56
	st.w	$a3, $a1, 180
	blez	$a2, .LBB7_69
# %bb.53:                               # %.preheader32.lr.ph.i65
	ld.w	$a0, $a1, 0
	blez	$a0, .LBB7_69
# %bb.54:                               # %.preheader32.lr.ph.split.us.i66
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a4, $a3, 0
	move	$a3, $zero
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1796
	ldx.w	$a4, $a4, $a5
	ld.d	$a5, $a1, 56
	bstrpick.d	$a6, $a0, 30, 4
	slli.d	$a6, $a6, 4
	vreplgr2vr.h	$vr0, $a4
	andi	$a7, $a0, 8
	bstrpick.d	$t0, $a0, 30, 3
	slli.d	$t0, $t0, 3
	sub.d	$t1, $zero, $t0
	ori	$t2, $zero, 8
	ori	$t3, $zero, 16
	b	.LBB7_56
	.p2align	4, , 16
.LBB7_55:                               # %._crit_edge.us.i74
                                        #   in Loop: Header=BB7_56 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a2, .LBB7_69
.LBB7_56:                               # %iter.check157
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_64 Depth 2
                                        #     Child Loop BB7_61 Depth 2
                                        #     Child Loop BB7_68 Depth 2
	slli.d	$t4, $a3, 3
	ldx.d	$t4, $a5, $t4
	bgeu	$a0, $t2, .LBB7_58
# %bb.57:                               #   in Loop: Header=BB7_56 Depth=1
	move	$t6, $zero
	b	.LBB7_67
	.p2align	4, , 16
.LBB7_58:                               # %vector.main.loop.iter.check159
                                        #   in Loop: Header=BB7_56 Depth=1
	bgeu	$a0, $t3, .LBB7_63
# %bb.59:                               #   in Loop: Header=BB7_56 Depth=1
	move	$t7, $zero
.LBB7_60:                               # %vec.epilog.ph172
                                        #   in Loop: Header=BB7_56 Depth=1
	add.d	$t5, $t1, $t7
	alsl.d	$t6, $t7, $t4, 1
	.p2align	4, , 16
.LBB7_61:                               # %vec.epilog.vector.body180
                                        #   Parent Loop BB7_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t6, 0
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 16
	bnez	$t5, .LBB7_61
# %bb.62:                               # %vec.epilog.middle.block183
                                        #   in Loop: Header=BB7_56 Depth=1
	move	$t6, $t0
	beq	$t0, $a0, .LBB7_55
	b	.LBB7_67
	.p2align	4, , 16
.LBB7_63:                               # %vector.body165.preheader
                                        #   in Loop: Header=BB7_56 Depth=1
	addi.d	$t5, $t4, 16
	move	$t6, $a6
	.p2align	4, , 16
.LBB7_64:                               # %vector.body165
                                        #   Parent Loop BB7_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t5, -16
	vst	$vr0, $t5, 0
	addi.d	$t6, $t6, -16
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB7_64
# %bb.65:                               # %middle.block168
                                        #   in Loop: Header=BB7_56 Depth=1
	beq	$a6, $a0, .LBB7_55
# %bb.66:                               # %vec.epilog.iter.check173
                                        #   in Loop: Header=BB7_56 Depth=1
	move	$t7, $a6
	move	$t6, $a6
	bnez	$a7, .LBB7_60
	.p2align	4, , 16
.LBB7_67:                               # %vec.epilog.scalar.ph171.preheader
                                        #   in Loop: Header=BB7_56 Depth=1
	sub.d	$t5, $a0, $t6
	alsl.d	$t4, $t6, $t4, 1
	.p2align	4, , 16
.LBB7_68:                               # %vec.epilog.scalar.ph171
                                        #   Parent Loop BB7_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a4, $t4, 0
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB7_68
	b	.LBB7_55
.LBB7_69:                               # %.preheader31.i39
	ld.w	$a0, $a1, 12
	blez	$a0, .LBB7_101
# %bb.70:                               # %.preheader30.lr.ph.i40
	ld.w	$a2, $a1, 8
	blez	$a2, .LBB7_101
# %bb.71:                               # %.preheader30.lr.ph.split.us.i53
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a4, $a3, %got_pc_lo12(img)
	move	$t0, $zero
	ld.d	$a3, $a4, 0
	ld.d	$a5, $a1, 64
	lu12i.w	$a6, 1
	ori	$t1, $a6, 1800
	ldx.w	$t2, $a3, $t1
	ld.d	$t3, $a5, 0
	bstrpick.d	$a6, $a2, 30, 4
	slli.d	$t4, $a6, 4
	vreplgr2vr.h	$vr0, $t2
	andi	$a3, $a2, 8
	bstrpick.d	$a7, $a2, 30, 3
	slli.d	$t5, $a7, 3
	sub.d	$t6, $zero, $t5
	ori	$t7, $zero, 8
	ori	$t8, $zero, 16
	b	.LBB7_73
	.p2align	4, , 16
.LBB7_72:                               # %._crit_edge.us37.i61
                                        #   in Loop: Header=BB7_73 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a0, .LBB7_86
.LBB7_73:                               # %iter.check188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_81 Depth 2
                                        #     Child Loop BB7_78 Depth 2
                                        #     Child Loop BB7_85 Depth 2
	slli.d	$s2, $t0, 3
	ldx.d	$s2, $t3, $s2
	bgeu	$a2, $t7, .LBB7_75
# %bb.74:                               #   in Loop: Header=BB7_73 Depth=1
	move	$s4, $zero
	b	.LBB7_84
	.p2align	4, , 16
.LBB7_75:                               # %vector.main.loop.iter.check190
                                        #   in Loop: Header=BB7_73 Depth=1
	bgeu	$a2, $t8, .LBB7_80
# %bb.76:                               #   in Loop: Header=BB7_73 Depth=1
	move	$s5, $zero
.LBB7_77:                               # %vec.epilog.ph203
                                        #   in Loop: Header=BB7_73 Depth=1
	add.d	$s3, $t6, $s5
	alsl.d	$s4, $s5, $s2, 1
	.p2align	4, , 16
.LBB7_78:                               # %vec.epilog.vector.body211
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s4, 0
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, 16
	bnez	$s3, .LBB7_78
# %bb.79:                               # %vec.epilog.middle.block214
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$s4, $t5
	beq	$t5, $a2, .LBB7_72
	b	.LBB7_84
	.p2align	4, , 16
.LBB7_80:                               # %vector.body196.preheader
                                        #   in Loop: Header=BB7_73 Depth=1
	addi.d	$s3, $s2, 16
	move	$s4, $t4
	.p2align	4, , 16
.LBB7_81:                               # %vector.body196
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s3, -16
	vst	$vr0, $s3, 0
	addi.d	$s4, $s4, -16
	addi.d	$s3, $s3, 32
	bnez	$s4, .LBB7_81
# %bb.82:                               # %middle.block199
                                        #   in Loop: Header=BB7_73 Depth=1
	beq	$t4, $a2, .LBB7_72
# %bb.83:                               # %vec.epilog.iter.check204
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$s5, $t4
	move	$s4, $t4
	bnez	$a3, .LBB7_77
	.p2align	4, , 16
.LBB7_84:                               # %vec.epilog.scalar.ph202.preheader
                                        #   in Loop: Header=BB7_73 Depth=1
	sub.d	$s3, $a2, $s4
	alsl.d	$s2, $s4, $s2, 1
	.p2align	4, , 16
.LBB7_85:                               # %vec.epilog.scalar.ph202
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t2, $s2, 0
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 2
	bnez	$s3, .LBB7_85
	b	.LBB7_72
.LBB7_86:                               # %.preheader.lr.ph.split.us.i42
	ld.d	$a4, $a4, 0
	ldx.w	$a4, $a4, $t1
	move	$t0, $zero
	ld.d	$a5, $a5, 8
	slli.d	$a6, $a6, 4
	vreplgr2vr.h	$vr0, $a4
	slli.d	$a7, $a7, 3
	sub.d	$t1, $zero, $a7
	ori	$t2, $zero, 8
	ori	$t3, $zero, 16
	b	.LBB7_88
	.p2align	4, , 16
.LBB7_87:                               # %._crit_edge.us41.i50
                                        #   in Loop: Header=BB7_88 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a0, .LBB7_101
.LBB7_88:                               # %iter.check219
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_96 Depth 2
                                        #     Child Loop BB7_93 Depth 2
                                        #     Child Loop BB7_100 Depth 2
	slli.d	$t4, $t0, 3
	ldx.d	$t4, $a5, $t4
	bgeu	$a2, $t2, .LBB7_90
# %bb.89:                               #   in Loop: Header=BB7_88 Depth=1
	move	$t6, $zero
	b	.LBB7_99
	.p2align	4, , 16
.LBB7_90:                               # %vector.main.loop.iter.check221
                                        #   in Loop: Header=BB7_88 Depth=1
	bgeu	$a2, $t3, .LBB7_95
# %bb.91:                               #   in Loop: Header=BB7_88 Depth=1
	move	$t7, $zero
.LBB7_92:                               # %vec.epilog.ph234
                                        #   in Loop: Header=BB7_88 Depth=1
	add.d	$t5, $t1, $t7
	alsl.d	$t6, $t7, $t4, 1
	.p2align	4, , 16
.LBB7_93:                               # %vec.epilog.vector.body242
                                        #   Parent Loop BB7_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t6, 0
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 16
	bnez	$t5, .LBB7_93
# %bb.94:                               # %vec.epilog.middle.block245
                                        #   in Loop: Header=BB7_88 Depth=1
	move	$t6, $a7
	beq	$a7, $a2, .LBB7_87
	b	.LBB7_99
	.p2align	4, , 16
.LBB7_95:                               # %vector.body227.preheader
                                        #   in Loop: Header=BB7_88 Depth=1
	addi.d	$t5, $t4, 16
	move	$t6, $a6
	.p2align	4, , 16
.LBB7_96:                               # %vector.body227
                                        #   Parent Loop BB7_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t5, -16
	vst	$vr0, $t5, 0
	addi.d	$t6, $t6, -16
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB7_96
# %bb.97:                               # %middle.block230
                                        #   in Loop: Header=BB7_88 Depth=1
	beq	$a6, $a2, .LBB7_87
# %bb.98:                               # %vec.epilog.iter.check235
                                        #   in Loop: Header=BB7_88 Depth=1
	move	$t7, $a6
	move	$t6, $a6
	bnez	$a3, .LBB7_92
	.p2align	4, , 16
.LBB7_99:                               # %vec.epilog.scalar.ph233.preheader
                                        #   in Loop: Header=BB7_88 Depth=1
	sub.d	$t5, $a2, $t6
	alsl.d	$t4, $t6, $t4, 1
	.p2align	4, , 16
.LBB7_100:                              # %vec.epilog.scalar.ph233
                                        #   Parent Loop BB7_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a4, $t4, 0
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB7_100
	b	.LBB7_87
.LBB7_101:                              # %clear_picture.exit77
	ld.d	$a0, $fp, 64
	ori	$a2, $s1, 1660
	ldx.w	$a3, $a0, $a2
	st.w	$a3, $a1, 188
	beqz	$a3, .LBB7_103
# %bb.102:
	add.d	$a0, $a0, $a2
	vld	$vr0, $a0, 4
	vst	$vr0, $a1, 192
.LBB7_103:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
.LBB7_104:
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
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
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 64
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
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.w	$zero, $a0, 0
	ld.w	$a1, $fp, 0
	ori	$a2, $zero, 2
	st.d	$zero, $a0, 64
	blt	$a2, $a1, .LBB9_2
# %bb.1:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	b	.LBB9_5
.LBB9_2:
	ld.w	$a0, $fp, 24
	beqz	$a0, .LBB9_6
# %bb.3:                                # %.thread
	pcalau12i	$a0, %pc_hi20(recovery_flag)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(recovery_flag)
.LBB9_4:
	ld.d	$a0, $fp, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
.LBB9_5:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_6:
	pcalau12i	$a0, %got_pc_hi20(non_conforming_stream)
	ld.d	$a0, $a0, %got_pc_lo12(non_conforming_stream)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB9_4
# %bb.7:
	pcalau12i	$a0, %pc_hi20(recovery_flag)
	ld.w	$a0, $a0, %pc_lo12(recovery_flag)
	beqz	$a0, .LBB9_5
	b	.LBB9_4
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
	move	$fp, $a0
	ld.w	$a3, $a0, 0
	pcalau12i	$s1, %pc_hi20(out_buffer)
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ori	$a2, $zero, 1
	move	$s0, $a1
	beq	$a3, $a2, .LBB10_6
# %bb.1:
	bnez	$a3, .LBB10_9
# %bb.2:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p_ref)
	ld.w	$a2, $a0, %pc_lo12(p_ref)
	addi.w	$a0, $zero, -1
	beq	$a2, $a0, .LBB10_5
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 3016
	bnez	$a0, .LBB10_5
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(snr)
	ld.d	$a0, $a0, %got_pc_lo12(snr)
	ld.d	$a0, $a0, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(find_snr)
	jirl	$ra, $ra, 0
.LBB10_5:
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free_storable_picture)
	jr	$t8
.LBB10_6:
	ld.wu	$a1, $a0, 0
	andi	$a3, $a1, 1
	beqz	$a3, .LBB10_8
# %bb.7:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.w	$a2, $fp, 0
	move	$a1, $zero
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 0
.LBB10_8:
	st.d	$fp, $a0, 56
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 0
	move	$a3, $a2
.LBB10_9:                               # %._crit_edge21
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB10_13
# %bb.10:
	andi	$a2, $a1, 2
	beqz	$a2, .LBB10_12
# %bb.11:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	move	$a1, $zero
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 0
.LBB10_12:
	st.d	$fp, $a0, 64
	ori	$a1, $a1, 2
	st.w	$a1, $a0, 0
.LBB10_13:                              # %._crit_edge
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB10_18
# %bb.14:
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p_ref)
	ld.w	$a2, $a0, %pc_lo12(p_ref)
	addi.w	$a0, $zero, -1
	beq	$a2, $a0, .LBB10_17
# %bb.15:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 3016
	bnez	$a0, .LBB10_17
# %bb.16:
	pcalau12i	$a0, %got_pc_hi20(snr)
	ld.d	$a0, $a0, %got_pc_lo12(snr)
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(find_snr)
	jirl	$ra, $ra, 0
.LBB10_17:
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 0
.LBB10_18:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	direct_output, .Lfunc_end10-direct_output
                                        # -- End function
	.type	pending_output,@object          # @pending_output
	.bss
	.globl	pending_output
	.p2align	3, 0x0
pending_output:
	.dword	0
	.size	pending_output, 8

	.type	pending_output_state,@object    # @pending_output_state
	.globl	pending_output_state
	.p2align	2, 0x0
pending_output_state:
	.word	0                               # 0x0
	.size	pending_output_state, 4

	.type	recovery_flag,@object           # @recovery_flag
	.globl	recovery_flag
	.p2align	2, 0x0
recovery_flag:
	.word	0                               # 0x0
	.size	recovery_flag, 4

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

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"write_out_picture: buf"
	.size	.L.str.1, 23

	.type	out_buffer,@object              # @out_buffer
	.comm	out_buffer,8,8
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
