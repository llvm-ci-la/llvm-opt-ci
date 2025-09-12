	.file	"ieeefloat.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ConvertFromIeeeSingle
.LCPI0_0:
	.dword	0x7ff0000000000000              # double +Inf
	.text
	.globl	ConvertFromIeeeSingle
	.p2align	5
	.type	ConvertFromIeeeSingle,@function
ConvertFromIeeeSingle:                  # @ConvertFromIeeeSingle
# %bb.0:
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a0, 1
	ld.hu	$a0, $a0, 2
	slli.d	$a1, $a1, 24
	slli.d	$a2, $a2, 16
	or	$a1, $a2, $a1
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	or	$a0, $a0, $a1
	slli.d	$a2, $a0, 33
	beqz	$a2, .LBB0_4
# %bb.1:
	bstrpick.d	$a2, $a1, 30, 23
	ori	$a3, $zero, 255
	beq	$a2, $a3, .LBB0_5
# %bb.2:
	bnez	$a2, .LBB0_6
# %bb.3:
	bstrpick.d	$a0, $a0, 22, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.w	$a0, $zero, -149
	pcaddu18i	$t8, %call36(ldexp)
	jr	$t8
.LBB0_4:
	movgr2fr.d	$fa0, $zero
	ret
.LBB0_5:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	ret
.LBB0_6:
	srli.d	$a1, $a1, 23
	ori	$a2, $zero, 1
	bstrins.d	$a0, $a2, 63, 23
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	andi	$a0, $a1, 255
	addi.d	$a0, $a0, -150
	pcaddu18i	$t8, %call36(ldexp)
	jr	$t8
.Lfunc_end0:
	.size	ConvertFromIeeeSingle, .Lfunc_end0-ConvertFromIeeeSingle
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ConvertToIeeeSingle
.LCPI1_0:
	.dword	0x4170000000000000              # double 16777216
	.text
	.globl	ConvertToIeeeSingle
	.p2align	5
	.type	ConvertToIeeeSingle,@function
ConvertToIeeeSingle:                    # @ConvertToIeeeSingle
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	move	$fp, $a0
	bceqz	$fcc0, .LBB1_2
# %bb.1:
	move	$s0, $zero
	b	.LBB1_9
.LBB1_2:
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fneg.d	$fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a0, $fcc0
	slli.d	$s0, $a0, 63
	addi.d	$a0, $sp, 4
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	ori	$a1, $zero, 129
	blt	$a1, $a0, .LBB1_7
# %bb.3:
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB1_7
# %bb.4:
	addi.w	$a1, $zero, -126
	blt	$a1, $a0, .LBB1_8
# %bb.5:
	addi.w	$a1, $zero, -149
	bltu	$a0, $a1, .LBB1_9
# %bb.6:
	addi.d	$a0, $a0, 149
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	or	$s0, $s0, $a0
	b	.LBB1_9
.LBB1_7:
	lu12i.w	$a0, 522240
	or	$s0, $s0, $a0
	b	.LBB1_9
.LBB1_8:
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI1_0)
	fmul.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	addu16i.d	$a1, $a1, -128
	slli.d	$a0, $a0, 23
	addu16i.d	$a0, $a0, 16128
	or	$a0, $a1, $a0
	or	$s0, $a0, $s0
.LBB1_9:
	revb.2w	$a0, $s0
	st.w	$a0, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	ConvertToIeeeSingle, .Lfunc_end1-ConvertToIeeeSingle
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ConvertFromIeeeDouble
.LCPI2_0:
	.dword	0x7ff0000000000000              # double +Inf
	.text
	.globl	ConvertFromIeeeDouble
	.p2align	5
	.type	ConvertFromIeeeDouble,@function
ConvertFromIeeeDouble:                  # @ConvertFromIeeeDouble
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	ld.bu	$a2, $a0, 0
	ld.bu	$a1, $a0, 1
	slli.d	$a3, $a2, 24
	ld.hu	$a4, $a0, 2
	slli.d	$a1, $a1, 16
	or	$a1, $a1, $a3
	ld.wu	$a3, $a0, 4
	revb.d	$a0, $a4
	srli.d	$a0, $a0, 48
	or	$a0, $a0, $a1
	revb.d	$a3, $a3
	srli.d	$s0, $a3, 32
	or	$a3, $a0, $s0
	ext.w.b	$fp, $a2
	bnez	$a3, .LBB2_2
# %bb.1:
	movgr2fr.d	$fa0, $zero
	b	.LBB2_8
.LBB2_2:
	bstrpick.d	$s1, $a1, 30, 20
	ori	$a1, $zero, 2047
	beq	$s1, $a1, .LBB2_5
# %bb.3:
	bnez	$s1, .LBB2_6
# %bb.4:
	bstrpick.d	$a0, $a0, 19, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.w	$a0, $zero, -1042
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fa0, $s0
	ffint.d.l	$fa0, $fa0
	addi.w	$a0, $zero, -1074
	b	.LBB2_7
.LBB2_5:
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	b	.LBB2_8
.LBB2_6:
	ori	$a1, $zero, 1
	bstrins.d	$a0, $a1, 63, 20
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	addi.w	$a0, $s1, -1043
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fa0, $s0
	ffint.d.l	$fa0, $fa0
	addi.w	$a0, $s1, -1075
.LBB2_7:
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
.LBB2_8:
	slti	$a0, $fp, 0
	fneg.d	$fa1, $fa0
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa0, $fa1, $fcc0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	ConvertFromIeeeDouble, .Lfunc_end2-ConvertFromIeeeDouble
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ConvertToIeeeDouble
.LCPI3_0:
	.dword	0xc130000000000000              # double -1048576
.LCPI3_1:
	.dword	0xc1e0000000000000              # double -2147483648
	.text
	.globl	ConvertToIeeeDouble
	.p2align	5
	.type	ConvertToIeeeDouble,@function
ConvertToIeeeDouble:                    # @ConvertToIeeeDouble
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	move	$fp, $a0
	bceqz	$fcc0, .LBB3_2
# %bb.1:
	move	$s0, $zero
	move	$a0, $zero
	b	.LBB3_13
.LBB3_2:
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fneg.d	$fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a0, $fcc0
	slli.d	$s0, $a0, 63
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 12
	ori	$a0, $zero, 1025
	blt	$a0, $s1, .LBB3_8
# %bb.3:
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_8
# %bb.4:
	addi.w	$a0, $zero, -1022
	blt	$a0, $s1, .LBB3_9
# %bb.5:
	addi.w	$a0, $zero, -1043
	bltu	$a0, $s1, .LBB3_10
# %bb.6:
	addi.w	$a0, $zero, -1074
	bgeu	$s1, $a0, .LBB3_14
# %bb.7:
	move	$a0, $zero
	b	.LBB3_13
.LBB3_8:
	move	$a0, $zero
	lu12i.w	$a1, 524032
	or	$s0, $s0, $a1
	b	.LBB3_13
.LBB3_9:
	ori	$a0, $zero, 21
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr1, $vr0, 0
	vfrintrm.d	$vr1, $vr1
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI3_0)
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a0, $fa1
	addu16i.d	$a0, $a0, -16
	fadd.d	$fa0, $fa0, $fa2
	slli.d	$a1, $s1, 20
	add.d	$a1, $a1, $s0
	addu16i.d	$a1, $a1, 16352
	or	$s0, $a0, $a1
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	b	.LBB3_11
.LBB3_10:
	addi.w	$a0, $s1, 1042
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr1, $vr0, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a0, $fa1
	or	$s0, $s0, $a0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
.LBB3_11:
	ori	$a0, $zero, 32
.LBB3_12:
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI3_1)
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	add.d	$a0, $a0, $a1
.LBB3_13:
	srli.d	$a1, $s0, 24
	st.b	$a1, $fp, 0
	srli.d	$a1, $s0, 16
	st.b	$a1, $fp, 1
	srli.d	$a1, $s0, 8
	st.b	$a1, $fp, 2
	st.b	$s0, $fp, 3
	srli.d	$a1, $a0, 24
	st.b	$a1, $fp, 4
	srli.d	$a1, $a0, 16
	st.b	$a1, $fp, 5
	srli.d	$a1, $a0, 8
	st.b	$a1, $fp, 6
	st.b	$a0, $fp, 7
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_14:
	addi.w	$a0, $s1, 1074
	b	.LBB3_12
.Lfunc_end3:
	.size	ConvertToIeeeDouble, .Lfunc_end3-ConvertToIeeeDouble
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ConvertFromIeeeExtended
.LCPI4_0:
	.dword	0x7ff0000000000000              # double +Inf
	.text
	.globl	ConvertFromIeeeExtended
	.p2align	5
	.type	ConvertFromIeeeExtended,@function
ConvertFromIeeeExtended:                # @ConvertFromIeeeExtended
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	ld.bu	$a1, $a0, 0
	ld.bu	$fp, $a0, 1
	ld.wu	$a2, $a0, 2
	ld.wu	$a3, $a0, 6
	bstrins.d	$fp, $a1, 14, 8
	revb.d	$a2, $a2
	srli.d	$a2, $a2, 32
	revb.d	$a3, $a3
	srli.d	$s0, $a3, 32
	bnez	$fp, .LBB4_4
# %bb.1:
	bnez	$a2, .LBB4_4
# %bb.2:
	bnez	$s0, .LBB4_4
# %bb.3:
	movgr2fr.d	$fa0, $zero
	b	.LBB4_7
.LBB4_4:
	lu12i.w	$a3, 7
	ori	$a3, $a3, 4095
	bne	$fp, $a3, .LBB4_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_0)
	b	.LBB4_7
.LBB4_6:
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	lu12i.w	$s1, -5
	ori	$a1, $s1, 4066
	add.w	$a1, $fp, $a1
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fa0, $s0
	ffint.d.l	$fa0, $fa0
	ori	$a0, $s1, 4034
	add.w	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s2, 0
	fadd.d	$fa0, $fs0, $fa0
.LBB4_7:
	ext.w.b	$a0, $a1
	slti	$a0, $a0, 0
	fneg.d	$fa1, $fa0
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa0, $fa1, $fcc0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	ConvertFromIeeeExtended, .Lfunc_end4-ConvertFromIeeeExtended
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ConvertToIeeeExtended
.LCPI5_0:
	.dword	0xc1e0000000000000              # double -2147483648
	.text
	.globl	ConvertToIeeeExtended
	.p2align	5
	.type	ConvertToIeeeExtended,@function
ConvertToIeeeExtended:                  # @ConvertToIeeeExtended
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	move	$fp, $a0
	bceqz	$fcc0, .LBB5_2
# %bb.1:
	move	$s0, $zero
	move	$s1, $zero
	move	$a0, $zero
	b	.LBB5_8
.LBB5_2:
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fneg.d	$fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a0, $fcc0
	slli.d	$s0, $a0, 15
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	lu12i.w	$a0, 4
	blt	$a0, $a1, .LBB5_7
# %bb.3:
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB5_7
# %bb.4:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 4094
	lu12i.w	$a2, -4
	ori	$a2, $a2, 1
	add.w	$a0, $a1, $a0
	blt	$a2, $a1, .LBB5_6
# %bb.5:
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB5_6:
	or	$s0, $a0, $s0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI5_0)
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr1, $vr0, 0
	vfrintrm.d	$vr1, $vr1
	fadd.d	$fa2, $fa1, $fs0
	ftintrz.l.d	$fa2, $fa2
	movfr2gr.d	$a0, $fa2
	lu12i.w	$s2, -524288
	lu32i.d	$s2, 0
	add.d	$s1, $a0, $s2
	fsub.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	fadd.d	$fa0, $fa0, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	add.d	$a0, $a0, $s2
	b	.LBB5_8
.LBB5_7:
	move	$s1, $zero
	move	$a0, $zero
	lu12i.w	$a1, 7
	ori	$a1, $a1, 4095
	or	$s0, $s0, $a1
.LBB5_8:
	srli.d	$a1, $s0, 8
	st.b	$a1, $fp, 0
	st.b	$s0, $fp, 1
	srli.d	$a1, $s1, 24
	st.b	$a1, $fp, 2
	srli.d	$a1, $s1, 16
	st.b	$a1, $fp, 3
	srli.d	$a1, $s1, 8
	st.b	$a1, $fp, 4
	st.b	$s1, $fp, 5
	srli.d	$a1, $a0, 24
	st.b	$a1, $fp, 6
	srli.d	$a1, $a0, 16
	st.b	$a1, $fp, 7
	srli.d	$a1, $a0, 8
	st.b	$a1, $fp, 8
	st.b	$a0, $fp, 9
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	ConvertToIeeeExtended, .Lfunc_end5-ConvertToIeeeExtended
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
