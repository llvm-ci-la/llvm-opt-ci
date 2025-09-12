	.file	"leaky_bucket.c"
	.text
	.globl	get_LeakyBucketRate             # -- Begin function get_LeakyBucketRate
	.p2align	5
	.type	get_LeakyBucketRate,@function
get_LeakyBucketRate:                    # @get_LeakyBucketRate
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 96
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.1:                                # %.preheader
	move	$s1, $a0
	beqz	$s0, .LBB0_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 8
	st.d	$a0, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB0_3
.LBB0_5:                                # %._crit_edge
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_9
.LBB0_6:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_7:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB0_8:
	move	$a0, $zero
.LBB0_9:
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	get_LeakyBucketRate, .Lfunc_end0-get_LeakyBucketRate
                                        # -- End function
	.globl	PutBigDoubleWord                # -- Begin function PutBigDoubleWord
	.p2align	5
	.type	PutBigDoubleWord,@function
PutBigDoubleWord:                       # @PutBigDoubleWord
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$a0, $a0, 31, 24
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s0, 23, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s0, 15, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	andi	$a0, $s0, 255
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end1:
	.size	PutBigDoubleWord, .Lfunc_end1-PutBigDoubleWord
                                        # -- End function
	.globl	write_buffer                    # -- Begin function write_buffer
	.p2align	5
	.type	write_buffer,@function
write_buffer:                           # @write_buffer
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s5, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s5, 0
	lu12i.w	$a1, 1
	ori	$s6, $a1, 352
	add.d	$a0, $a0, $s6
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s4, $a0
	bnez	$a0, .LBB2_2
# %bb.1:                                # %.split15
	ld.d	$a0, $s5, 0
	add.d	$a3, $a0, $s6
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$s4, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 300
	move	$a0, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$s4, $zero
.LBB2_2:                                # %.split
	bstrpick.d	$a0, $s2, 31, 24
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 23, 16
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 15, 8
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	andi	$a0, $s2, 255
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$s4, $s1, 0
	srli.d	$a0, $s4, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s4, 23, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s4, 15, 8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	andi	$a0, $s4, 255
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.wu	$s4, $s0, 0
	srli.d	$a0, $s4, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s4, 23, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s4, 15, 8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	andi	$a0, $s4, 255
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.wu	$s4, $fp, 0
	srli.d	$a0, $s4, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s4, 23, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s4, 15, 8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	andi	$a0, $s4, 255
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB2_3
.LBB2_4:                                # %._crit_edge
	move	$a0, $s3
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
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.Lfunc_end2:
	.size	write_buffer, .Lfunc_end2-write_buffer
                                        # -- End function
	.globl	Sort                            # -- Begin function Sort
	.p2align	5
	.type	Sort,@function
Sort:                                   # @Sort
# %bb.0:
	addi.d	$a2, $a0, -1
	beqz	$a2, .LBB3_8
# %bb.1:                                # %.lr.ph24.preheader
	move	$a5, $zero
	addi.d	$a3, $a1, 8
	move	$a4, $a2
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %.loopexit
                                        #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	beq	$a5, $a2, .LBB3_8
.LBB3_3:                                # %.lr.ph24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	move	$a6, $a5
	addi.d	$a5, $a5, 1
	bgeu	$a5, $a0, .LBB3_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB3_3 Depth=1
	alsl.d	$a6, $a6, $a1, 3
	move	$a7, $a3
	move	$t0, $a4
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=2
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	beqz	$t0, .LBB3_2
.LBB3_6:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a6, 0
	ld.d	$t2, $a7, 0
	bgeu	$t2, $t1, .LBB3_5
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	st.d	$t2, $a6, 0
	st.d	$t1, $a7, 0
	b	.LBB3_5
.LBB3_8:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	Sort, .Lfunc_end3-Sort
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function calc_buffer
.LCPI4_0:
	.word	0x5f000000                      # float 9.22337203E+18
	.text
	.globl	calc_buffer
	.p2align	5
	.type	calc_buffer,@function
calc_buffer:                            # @calc_buffer
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 80
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(total_frame_buffer)
	ld.d	$a1, $s3, %pc_lo12(total_frame_buffer)
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s4, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s4, 0
	ld.w	$a2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.w	$fp, $a0, 4188
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB4_2:
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB4_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB4_4:
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB4_8
# %bb.5:
	ld.d	$a0, $s3, %pc_lo12(total_frame_buffer)
	pcalau12i	$s5, %pc_hi20(Bit_Buffer)
	beqz	$a0, .LBB4_9
.LBB4_6:                                # %.lr.ph
	ld.d	$a1, $s5, %pc_lo12(Bit_Buffer)
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB4_10
# %bb.7:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB4_13
.LBB4_8:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(total_frame_buffer)
	pcalau12i	$s5, %pc_hi20(Bit_Buffer)
	bnez	$a0, .LBB4_6
.LBB4_9:
	movgr2fr.w	$fa0, $zero
	b	.LBB4_16
.LBB4_10:                               # %vector.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	vrepli.b	$vr0, 0
	addi.d	$a3, $a1, 16
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB4_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.d	$vr0, $vr2, $vr0
	vadd.d	$vr1, $vr3, $vr1
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_11
# %bb.12:                               # %middle.block
	vadd.d	$vr0, $vr1, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a0, $a2, .LBB4_15
.LBB4_13:                               # %scalar.ph.preheader
	sub.d	$a4, $a0, $a2
	alsl.d	$a1, $a2, $a1, 3
	.p2align	4, , 16
.LBB4_14:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	add.d	$a3, $a2, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 8
	bnez	$a4, .LBB4_14
.LBB4_15:                               # %._crit_edge.loopexit
	srli.d	$a1, $a3, 1
	andi	$a2, $a3, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a1, $a3, 0
	movgr2fr.d	$fa1, $a3
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
.LBB4_16:                               # %._crit_edge
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fadd.s	$fa1, $fa1, $fa1
	slti	$a1, $a0, 0
	movgr2fr.d	$fa2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI4_0)
	ffint.s.l	$fa2, $fa2
	movgr2cf	$fcc0, $a1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fdiv.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fs0
	ftintrz.l.s	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	fsub.s	$fa0, $fa0, $fs0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	lu52i.d	$s7, $zero, -2048
	xor	$a2, $a2, $s7
	masknez	$a1, $a2, $a1
	or	$s6, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(get_LeakyBucketRate)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_21
# %bb.17:                               # %._crit_edge
	beqz	$fp, .LBB4_21
# %bb.18:
	srli.d	$a0, $s6, 1
	andi	$a1, $s6, 1
	or	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a0, $s6, 0
	ld.d	$a1, $s4, 0
	movgr2fr.d	$fa1, $s6
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa1, $fa0, $fcc0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	fld.s	$fa0, $a0, 48
	fmul.s	$fa1, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa1, $fs0
	ftintrz.l.s	$fa2, $fa1
	movfr2gr.d	$a0, $fa2
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a0, $a2
	fsub.s	$fa1, $fa1, $fs0
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a3, $fa1
	ld.w	$a1, $a1, 20
	xor	$a3, $a3, $s7
	masknez	$a2, $a3, $a2
	or	$a2, $a0, $a2
	addi.d	$a0, $a1, 1
	addi.w	$a1, $a0, 0
	div.du	$a1, $a2, $a1
	ori	$a2, $zero, 1
	st.d	$a1, $s0, 0
	beq	$fp, $a2, .LBB4_30
# %bb.19:                               # %.peel.next
	srli.d	$a1, $s6, 2
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	ld.d	$a2, $s0, 0
	fdiv.s	$fa0, $fa0, $fa1
	addi.d	$a0, $fp, -1
	addi.d	$a1, $s0, 8
	.p2align	4, , 16
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a3, $a2, 1
	andi	$a4, $a2, 1
	or	$a3, $a4, $a3
	movgr2fr.d	$fa1, $a3
	ffint.s.l	$fa1, $fa1
	fadd.s	$fa1, $fa1, $fa1
	slti	$a3, $a2, 0
	movgr2fr.d	$fa2, $a2
	ffint.s.l	$fa2, $fa2
	movgr2cf	$fcc0, $a3
	fsel	$fa1, $fa2, $fa1, $fcc0
	fadd.s	$fa1, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa1, $fs0
	ftintrz.l.s	$fa2, $fa1
	movfr2gr.d	$a2, $fa2
	movcf2gr	$a3, $fcc0
	maskeqz	$a2, $a2, $a3
	fsub.s	$fa1, $fa1, $fs0
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a4, $fa1
	xor	$a4, $a4, $s7
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	st.d	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB4_20
.LBB4_21:                               # %.loopexit
	addi.d	$a0, $fp, -1
	beqz	$a0, .LBB4_29
# %bb.22:                               # %.lr.ph24.i.preheader
	move	$a3, $zero
	addi.d	$a1, $s0, 8
	move	$a2, $a0
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_23:                               # %.loopexit.i
                                        #   in Loop: Header=BB4_24 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	beq	$a3, $a0, .LBB4_29
.LBB4_24:                               # %.lr.ph24.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
	move	$a4, $a3
	addi.d	$a3, $a3, 1
	bgeu	$a3, $fp, .LBB4_23
# %bb.25:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_24 Depth=1
	alsl.d	$a4, $a4, $s0, 3
	move	$a5, $a1
	move	$a6, $a2
	b	.LBB4_27
	.p2align	4, , 16
.LBB4_26:                               #   in Loop: Header=BB4_27 Depth=2
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	beqz	$a6, .LBB4_23
.LBB4_27:                               #   Parent Loop BB4_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a5, 0
	bgeu	$t0, $a7, .LBB4_26
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=2
	st.d	$t0, $a4, 0
	st.d	$a7, $a5, 0
	b	.LBB4_26
.LBB4_29:                               # %Sort.exit
	beqz	$fp, .LBB4_39
.LBB4_30:                               # %.lr.ph141
	ld.d	$a0, $s4, 0
	ld.w	$a1, $a0, 20
	alsl.d	$a0, $s6, $s6, 2
	slli.d	$a0, $a0, 2
	addi.w	$a1, $a1, 1
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a3, $a2, 0
	ld.d	$a2, $s5, %pc_lo12(Bit_Buffer)
	fld.s	$fa0, $a3, 48
	ld.d	$a3, $s3, %pc_lo12(total_frame_buffer)
	ld.d	$a4, $a2, 0
	move	$a5, $zero
	move	$a7, $zero
	addi.w	$a6, $zero, -2
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_31:                               #   in Loop: Header=BB4_32 Depth=1
	stx.d	$t2, $s1, $t0
	addi.d	$a5, $a5, 1
	stx.d	$t3, $s2, $t0
	beq	$a5, $fp, .LBB4_39
.LBB4_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
                                        #     Child Loop BB4_37 Depth 2
	slli.d	$t0, $a5, 3
	ldx.d	$t1, $s0, $t0
	mul.d	$t1, $t1, $a1
	srli.d	$t2, $t1, 1
	andi	$t3, $t1, 1
	or	$t2, $t3, $t2
	movgr2fr.d	$fa1, $t2
	ffint.s.l	$fa1, $fa1
	fadd.s	$fa1, $fa1, $fa1
	slti	$t2, $t1, 0
	movgr2fr.d	$fa2, $t1
	ffint.s.l	$fa2, $fa2
	movgr2cf	$fcc0, $t2
	fsel	$fa1, $fa2, $fa1, $fcc0
	fdiv.s	$fa1, $fa1, $fa0
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$t1, $fa1
	beqz	$a3, .LBB4_35
# %bb.33:                               # %.lr.ph135.preheader
                                        #   in Loop: Header=BB4_32 Depth=1
	move	$t3, $zero
	move	$t4, $a2
	move	$t5, $a0
	move	$t2, $a0
	.p2align	4, , 16
.LBB4_34:                               # %.lr.ph135
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t4, 0
	sub.d	$t5, $t5, $t6
	slt	$t6, $t5, $t2
	masknez	$a7, $a7, $t6
	maskeqz	$t7, $t3, $t6
	or	$a7, $t7, $a7
	maskeqz	$t7, $t5, $t6
	masknez	$t2, $t2, $t6
	or	$t2, $t7, $t2
	add.d	$t5, $t5, $t1
	addi.d	$t3, $t3, 1
	slt	$t6, $t5, $a0
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a0, $t6
	or	$t5, $t5, $t6
	addi.d	$t4, $t4, 8
	bne	$a3, $t3, .LBB4_34
	b	.LBB4_36
	.p2align	4, , 16
.LBB4_35:                               #   in Loop: Header=BB4_32 Depth=1
	move	$t2, $a0
.LBB4_36:                               # %._crit_edge136
                                        #   in Loop: Header=BB4_32 Depth=1
	sub.d	$t2, $a0, $t2
	move	$t4, $a6
	move	$t6, $a2
	move	$t5, $a4
	move	$t3, $a4
	.p2align	4, , 16
.LBB4_37:                               #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t4, $t4, 1
	beq	$a7, $t4, .LBB4_31
# %bb.38:                               #   in Loop: Header=BB4_37 Depth=2
	ld.d	$t7, $t6, 0
	addi.d	$t6, $t6, 8
	sub.d	$t5, $t5, $t7
	srai.d	$t7, $t5, 63
	andn	$t8, $t5, $t7
	and	$t7, $t7, $t5
	add.d	$t5, $t8, $t1
	sub.d	$t3, $t3, $t7
	bge	$t2, $t5, .LBB4_37
	b	.LBB4_31
.LBB4_39:                               # %._crit_edge142
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(write_buffer)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end4:
	.size	calc_buffer, .Lfunc_end4-calc_buffer
                                        # -- End function
	.type	total_frame_buffer,@object      # @total_frame_buffer
	.bss
	.globl	total_frame_buffer
	.p2align	3, 0x0
total_frame_buffer:
	.dword	0                               # 0x0
	.size	total_frame_buffer, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%lu"
	.size	.L.str.2, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"wb"
	.size	.L.str.4, 3

	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Error open file lk %s  \n"
	.size	.L.str.5, 25

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"-------------------------------------------------------------------------------\n"
	.size	.L.str.6, 81

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" Total Frames:  %ld (%d) \n"
	.size	.L.str.7, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"init_buffer: Rmin"
	.size	.L.str.9, 18

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"init_buffer: Bmin"
	.size	.L.str.10, 18

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"init_buffer: Fmin"
	.size	.L.str.11, 18

	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
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
	.asciz	" Leaky BucketRateFile does not have valid entries.\n Using rate calculated from avg. rate "
	.size	.Lstr, 90

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	" LeakyBucketRate File does not exist. Using rate calculated from avg. rate "
	.size	.Lstr.1, 76

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym errortext
