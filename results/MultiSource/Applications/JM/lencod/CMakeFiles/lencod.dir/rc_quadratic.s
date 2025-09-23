	.file	"rc_quadratic.c"
	.text
	.globl	rc_alloc                        # -- Begin function rc_alloc
	.p2align	5
	.type	rc_alloc,@function
rc_alloc:                               # @rc_alloc
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 15352
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$s3, $a1, %got_pc_lo12(input)
	ld.d	$a1, $s3, 0
	ldptr.w	$a1, $a1, 5128
	div.wu	$fp, $a0, $a1
	ori	$a0, $zero, 1600
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s1, 0
	bnez	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s1, 0
.LBB0_2:
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	bstrins.d	$a0, $a0, 62, 32
	st.d	$a0, $s0, 1556
	lu52i.d	$a0, $zero, 1023
	st.d	$zero, $s0, 1536
	ld.d	$a1, $s3, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 1512
	vst	$vr0, $s0, 1568
	ld.w	$a1, $a1, 12
	st.d	$a0, $s0, 1424
	st.d	$a0, $s0, 1400
	st.w	$zero, $s0, 1564
	st.w	$a1, $s0, 1384
	st.w	$a1, $s0, 1344
	st.w	$a1, $s0, 1456
	st.w	$a1, $s0, 1460
	ld.d	$a0, $s2, 0
	st.w	$a1, $s0, 76
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3164
	ldx.w	$a0, $a0, $a2
	st.w	$a1, $s0, 72
	ori	$a1, $zero, 51
	st.w	$a1, $s0, 64
	sub.d	$a0, $zero, $a0
	st.w	$a0, $s0, 68
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1472
	bnez	$a0, .LBB0_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_4:
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1480
	bnez	$a0, .LBB0_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_6:
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1488
	bnez	$a0, .LBB0_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_8:
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1496
	beqz	$a0, .LBB0_10
# %bb.9:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_10:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(no_mem_exit)
	jr	$t8
.Lfunc_end0:
	.size	rc_alloc, .Lfunc_end0-rc_alloc
                                        # -- End function
	.globl	copy_rc_jvt                     # -- Begin function copy_rc_jvt
	.p2align	5
	.type	copy_rc_jvt,@function
copy_rc_jvt:                            # @copy_rc_jvt
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 15352
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5128
	vld	$vr0, $s0, 1472
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ld.d	$s1, $s0, 1472
	vld	$vr0, $s0, 1488
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	div.wu	$s2, $a0, $a1
	ori	$a2, $zero, 1600
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s0, 1472
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 1488
	ld.d	$a1, $fp, 1472
	slli.d	$s2, $s2, 3
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 1480
	ld.d	$a1, $fp, 1480
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 1496
	ld.d	$a1, $fp, 1496
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 1488
	ld.d	$a1, $fp, 1488
	move	$a2, $s2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end1:
	.size	copy_rc_jvt, .Lfunc_end1-copy_rc_jvt
                                        # -- End function
	.globl	rc_free                         # -- Begin function rc_free
	.p2align	5
	.type	rc_free,@function
rc_free:                                # @rc_free
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 1472
	beqz	$a1, .LBB2_2
# %bb.1:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$zero, $a0, 1472
	ld.d	$a0, $fp, 0
.LBB2_2:
	ld.d	$a1, $a0, 1480
	beqz	$a1, .LBB2_4
# %bb.3:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$zero, $a0, 1480
	ld.d	$a0, $fp, 0
.LBB2_4:
	ld.d	$a1, $a0, 1488
	beqz	$a1, .LBB2_6
# %bb.5:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$zero, $a0, 1488
	ld.d	$a0, $fp, 0
.LBB2_6:
	ld.d	$a1, $a0, 1496
	beqz	$a1, .LBB2_8
# %bb.7:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$zero, $a0, 1496
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB2_9
.LBB2_8:                                # %.thread
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB2_9:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	rc_free, .Lfunc_end2-rc_free
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_init_seq
.LCPI3_0:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
.LCPI3_1:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI3_2:
	.dword	0x3fe3333333333333              # double 0.59999999999999998
.LCPI3_3:
	.dword	0x3fd3333333333333              # double 0.29999999999999999
.LCPI3_4:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI3_5:
	.dword	0x3ff3333333333333              # double 1.2
.LCPI3_6:
	.dword	0x4003333333333333              # double 2.3999999999999999
.LCPI3_7:
	.dword	0x3ff6666666666666              # double 1.3999999999999999
	.text
	.globl	rc_init_seq
	.p2align	5
	.type	rc_init_seq,@function
rc_init_seq:                            # @rc_init_seq
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$s1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1040
	ldx.w	$a0, $s1, $a0
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB3_2
# %bb.1:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.rc_init_seq)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.rc_init_seq)
	ldx.d	$a0, $a1, $a0
	b	.LBB3_3
.LBB3_2:
	pcalau12i	$a0, %pc_hi20(updateQPRC0)
	addi.d	$a0, $a0, %pc_lo12(updateQPRC0)
.LBB3_3:
	st.d	$zero, $fp, 1528
	ldptr.w	$a1, $s1, 5120
	pcalau12i	$a2, %pc_hi20(updateQP)
	st.d	$a0, $a2, %pc_lo12(updateQP)
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$s2, $a0, 0
	ldptr.w	$a0, $s1, 2096
	fld.s	$fa1, $s2, 48
	addi.d	$a1, $a0, 1
	ld.w	$a2, $s1, 20
	movgr2fr.w	$fa2, $a1
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa1, $fa1, $fa2
	addi.d	$a1, $a2, 1
	movgr2fr.w	$fa2, $a1
	ldptr.w	$a2, $s1, 5128
	ldptr.w	$a1, $s2, 15352
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fs0, $fa1, $fa2
	fst.s	$fs0, $fp, 4
	fst.s	$fa0, $fp, 8
	bgeu	$a1, $a2, .LBB3_5
# %bb.4:                                # %.thread
	stptr.w	$a1, $s1, 5128
	b	.LBB3_7
.LBB3_5:
	bgeu	$a2, $a1, .LBB3_7
# %bb.6:
	div.wu	$a1, $a1, $a2
	st.w	$a1, $fp, 1388
.LBB3_7:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$s3, $a1, %pc_lo12(generic_RC)
	st.d	$zero, $s3, 72
	st.d	$zero, $fp, 32
	st.d	$zero, $fp, 1336
	st.d	$zero, $s3, 32
	st.w	$zero, $s3, 40
	st.w	$zero, $s3, 80
	slt	$a0, $zero, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI3_0)
	vldi	$vr2, -944
	vldi	$vr3, -928
	movgr2cf	$fcc0, $a0
	fsel	$fa2, $fa3, $fa2, $fcc0
	fsel	$fa1, $fa3, $fa1, $fcc0
	fst.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 24
	st.w	$zero, $fp, 1348
	fcvt.d.s	$fs1, $fa0
	fst.d	$fs1, $fp, 1312
	st.d	$zero, $fp, 1320
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, 104
	addi.d	$a0, $fp, 112
	addi.d	$s0, $fp, 960
	ori	$a2, $zero, 176
	ori	$s4, $zero, 176
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 336
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 1596
	ld.w	$a1, $fp, 1388
	st.w	$zero, $fp, 1372
	st.w	$zero, $fp, 1380
	ori	$a2, $zero, 8
	slt	$a1, $a2, $a1
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3048
	ldx.w	$a2, $s2, $a2
	sub.d	$a0, $a0, $a1
	ld.w	$a1, $s2, 52
	st.w	$a0, $fp, 1440
	st.w	$a2, $fp, 1444
	st.w	$zero, $s3, 4
	pcalau12i	$a0, %pc_hi20(.LCPI3_2)
	beq	$a1, $s4, .LBB3_10
# %bb.8:
	ori	$a2, $zero, 352
	bne	$a1, $a2, .LBB3_11
# %bb.9:
	pcalau12i	$a1, %pc_hi20(.LCPI3_4)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI3_4)
	pcalau12i	$a1, %pc_hi20(.LCPI3_5)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI3_5)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI3_2)
	ldptr.w	$a0, $s1, 5124
	bnez	$a0, .LBB3_16
	b	.LBB3_12
.LBB3_10:
	pcalau12i	$a1, %pc_hi20(.LCPI3_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI3_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_2)
	pcalau12i	$a0, %pc_hi20(.LCPI3_3)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI3_3)
	ldptr.w	$a0, $s1, 5124
	bnez	$a0, .LBB3_16
	b	.LBB3_12
.LBB3_11:
	fld.d	$fa1, $a0, %pc_lo12(.LCPI3_2)
	pcalau12i	$a0, %pc_hi20(.LCPI3_6)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_6)
	pcalau12i	$a0, %pc_hi20(.LCPI3_7)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI3_7)
	ldptr.w	$a0, $s1, 5124
	bnez	$a0, .LBB3_16
.LBB3_12:
	ld.w	$a0, $s2, 88
	movgr2fr.w	$fa3, $a0
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fs0, $fa3
	fcvt.d.s	$fa3, $fa3
	fdiv.d	$fa3, $fs1, $fa3
	fcmp.cle.d	$fcc0, $fa3, $fa1
	ori	$a0, $zero, 35
	bcnez	$fcc0, .LBB3_15
# %bb.13:
	fcmp.cle.d	$fcc0, $fa3, $fa2
	ori	$a0, $zero, 25
	bcnez	$fcc0, .LBB3_15
# %bb.14:
	fcmp.cult.d	$fcc0, $fa0, $fa3
	ori	$a0, $zero, 20
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 10
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
.LBB3_15:
	stptr.w	$a0, $s1, 5124
.LBB3_16:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	rc_init_seq, .Lfunc_end3-rc_init_seq
                                        # -- End function
	.globl	updateQPRC0                     # -- Begin function updateQPRC0
	.p2align	5
	.type	updateQPRC0,@function
updateQPRC0:                            # @updateQPRC0
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s2, 0
	ldptr.w	$a3, $a2, 15404
	ldptr.w	$a4, $a2, 15352
	bne	$a3, $a4, .LBB4_5
# %bb.1:
	beqz	$a1, .LBB4_8
.LBB4_2:
	ld.w	$a1, $a2, 20
	beqz	$a1, .LBB4_31
# %bb.3:
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB4_25
# %bb.4:
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB4_7
	b	.LBB4_33
.LBB4_5:
	ld.w	$a3, $a2, 20
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB4_7
# %bb.6:
	ld.w	$a2, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$s3, $a4, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a4, $s3, 0
	bne	$a2, $a4, .LBB4_15
.LBB4_7:
	ld.w	$a1, $a0, 72
	b	.LBB4_88
.LBB4_8:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a3, $a1, 4
	beqz	$a3, .LBB4_2
# %bb.9:
	ld.w	$a3, $a2, 20
	bnez	$a3, .LBB4_82
# %bb.10:
	ld.w	$a3, $a1, 12
	bnez	$a3, .LBB4_82
# %bb.11:
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a3, $a3, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a3, $a3, 0
	beq	$a2, $a3, .LBB4_82
# %bb.12:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a4, $a2, 4704
	ld.w	$a2, $a0, 1344
	ori	$a5, $zero, 1
	ori	$a3, $zero, 1456
	bne	$a4, $a5, .LBB4_14
# %bb.13:
	ld.w	$a3, $a1, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a2
	st.w	$a3, $a1, 44
	addi.d	$a1, $a4, 1
	st.w	$a1, $a0, 1352
	st.w	$a2, $a0, 1356
	ori	$a3, $zero, 1328
.LBB4_14:                               # %updateBottomField.exit
	stx.w	$a2, $a0, $a3
	b	.LBB4_82
.LBB4_15:
	beqz	$a3, .LBB4_51
# %bb.16:
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB4_82
# %bb.17:
	beqz	$a1, .LBB4_74
.LBB4_18:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a3, $a1, 0
	ldptr.w	$a1, $a3, 2096
	ori	$a4, $zero, 1
	bne	$a1, $a4, .LBB4_64
# %bb.19:
	ldptr.w	$a1, $a3, 4704
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB4_21
# %bb.20:
	ldptr.w	$a1, $a3, 4708
	beqz	$a1, .LBB4_23
.LBB4_21:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 4
	bnez	$a2, .LBB4_23
# %bb.22:                               # %.sink.split.i218
	ld.w	$a1, $a1, 8
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.w	$a2, $a0, 1356
	ori	$a3, $zero, 1456
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 1460
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	ldx.w	$a1, $a0, $a1
	st.w	$a2, $a0, 1352
	st.w	$a1, $a0, 1356
.LBB4_23:                               # %updateQPInterlace.exit221
	ld.w	$a1, $a0, 1352
	ld.w	$a2, $a0, 1356
	bne	$a1, $a2, .LBB4_75
# %bb.24:
	addi.w	$a1, $a1, 2
	b	.LBB4_76
.LBB4_25:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a3, $a1, 0
	ldptr.w	$a1, $a3, 2096
	bne	$a1, $a2, .LBB4_50
# %bb.26:
	ldptr.w	$a1, $a3, 4704
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB4_28
# %bb.27:
	ldptr.w	$a1, $a3, 4708
	beqz	$a1, .LBB4_30
.LBB4_28:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 4
	bnez	$a2, .LBB4_30
# %bb.29:                               # %.sink.split.i
	ld.w	$a1, $a1, 8
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.w	$a2, $a0, 1356
	ori	$a3, $zero, 1456
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 1460
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	ldx.w	$a1, $a0, $a1
	st.w	$a2, $a0, 1352
	st.w	$a1, $a0, 1356
.LBB4_30:                               # %updateQPInterlace.exit
	ld.w	$a1, $a0, 1352
	ld.w	$a2, $a0, 1356
	slt	$a3, $a1, $a2
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	addi.w	$a3, $a3, 2
	slt	$a4, $a2, $a1
	masknez	$a5, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	slt	$a4, $a1, $a3
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a1, $a3, $a1
	addi.w	$a2, $a2, 1
	slt	$a3, $a2, $a1
	maskeqz	$a1, $a1, $a3
	ld.w	$a4, $a0, 68
	masknez	$a2, $a2, $a3
	or	$a1, $a1, $a2
	ld.w	$a2, $a0, 64
	slt	$a3, $a4, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	b	.LBB4_86
.LBB4_31:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a3, $a1, %pc_lo12(generic_RC)
	ld.w	$a1, $a3, 48
	bnez	$a1, .LBB4_33
# %bb.32:
	ld.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a2, $a2, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB4_55
.LBB4_33:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a2, $a1, 4704
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB4_35
# %bb.34:
	ldptr.w	$a1, $a1, 4708
	beqz	$a1, .LBB4_37
.LBB4_35:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 4
	bnez	$a2, .LBB4_37
# %bb.36:                               # %updateQPInterlaceBU.exit
	ld.w	$a2, $a1, 8
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	ld.w	$a3, $a1, 44
	ori	$a4, $zero, 1456
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 1460
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	ldx.w	$a2, $a0, $a2
	add.d	$a3, $a2, $a3
	st.w	$a3, $a1, 44
	st.w	$a2, $a0, 1328
.LBB4_37:
	fld.d	$fs1, $a0, 1312
	fld.d	$fs0, $a0, 1320
	fld.d	$fa0, $a0, 104
	fld.d	$fa1, $a0, 112
	fst.d	$fs1, $a0, 1296
	fst.d	$fs0, $a0, 1304
	fst.d	$fa0, $a0, 88
	fst.d	$fa1, $a0, 96
	fld.d	$fa2, $a0, 120
	ld.w	$fp, $a0, 1596
	ld.w	$s0, $a0, 1328
	ld.w	$a1, $a0, 1536
	ld.w	$a2, $a0, 1348
	fst.d	$fa2, $a0, 80
	fmadd.d	$fs2, $fa0, $fa2, $fa1
	fst.d	$fs2, $a0, 1400
	bltz	$a1, .LBB4_45
# %bb.38:
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a0, 0
	sub.w	$a1, $a1, $a2
	vldi	$vr2, -1264
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa1, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	fmul.d	$fs3, $fs1, $fs2
	movgr2fr.w	$fa0, $a1
	movgr2fr.d	$fs5, $zero
	fcmp.ceq.d	$fcc0, $fs0, $fs5
	ffint.d.w	$fs4, $fa0
	bcnez	$fcc0, .LBB4_43
# %bb.39:
	fmul.d	$fa0, $fs2, $fs3
	vldi	$vr1, -1008
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fa1, $fs2
	fmul.d	$fa1, $fa1, $fs4
	fmadd.d	$fa0, $fa0, $fs1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB4_43
# %bb.40:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB4_91
.LBB4_41:                               # %.split
	fneg.d	$fa0, $fs1
	fmadd.d	$fa0, $fa0, $fs2, $fa1
	fcmp.cult.d	$fcc0, $fs5, $fa0
	bceqz	$fcc0, .LBB4_43
# %bb.42:
	move	$s1, $a0
	fadd.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fa1, $fs2
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB4_44
.LBB4_43:
	move	$s1, $a0
	fdiv.d	$fa0, $fs3, $fs4
.LBB4_44:                               # %updateModelQPFrame.exit
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(Qstep2QP)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 68
	move	$a1, $a0
	move	$a0, $s1
	ld.w	$a3, $s1, 64
	slt	$a4, $a2, $a1
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	sub.w	$a2, $s0, $fp
	add.w	$a3, $s0, $fp
	slt	$a4, $a2, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a2, $a2, $a4
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 1344
	b	.LBB4_46
.LBB4_45:
	ld.w	$a1, $a0, 68
	add.w	$a2, $s0, $fp
	ld.w	$a3, $a0, 64
	slt	$a4, $a1, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a1, $a1, $a4
	or	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 1344
.LBB4_46:
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	ld.w	$a3, $a2, 4
	bnez	$a3, .LBB4_89
# %bb.47:
	pcalau12i	$a3, %pc_hi20(active_sps)
	ld.d	$a3, $a3, %pc_lo12(active_sps)
	ld.w	$a3, $a3, 1148
	beqz	$a3, .LBB4_58
# %bb.48:
	ld.w	$a3, $a2, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a1
	st.w	$a3, $a2, 44
.LBB4_49:                               # %updateQPNonPicAFF.exit
	st.w	$a4, $a0, 1352
	st.w	$a1, $a0, 1356
	st.w	$a1, $a0, 1328
	b	.LBB4_89
.LBB4_50:
	ld.w	$a2, $a0, 1360
	addi.w	$a2, $a2, 1
	mod.w	$a2, $a2, $a1
	sltui	$a4, $a2, 1
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a1, $a4
	or	$a2, $a4, $a2
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB4_69
	b	.LBB4_65
.LBB4_51:
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	ld.w	$a3, $a2, 40
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB4_53
# %bb.52:
	ld.w	$a3, $a2, 48
	beqz	$a3, .LBB4_79
.LBB4_53:
	vld	$vr0, $a0, 1312
	vld	$vr1, $a0, 104
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a0, 1388
	ld.w	$a5, $a0, 1368
	vst	$vr0, $a0, 1296
	sltu	$a3, $zero, $a3
	sra.w	$a3, $a4, $a3
	vst	$vr1, $a0, 88
	bne	$a5, $a3, .LBB4_59
# %bb.54:
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(updateFirstBU)
	jr	$t8
.LBB4_55:
	ld.w	$a1, $a0, 72
	ld.w	$a2, $a3, 4
	st.w	$a1, $a0, 1344
	bnez	$a2, .LBB4_89
# %bb.56:
	pcalau12i	$a2, %pc_hi20(active_sps)
	ld.d	$a2, $a2, %pc_lo12(active_sps)
	ld.w	$a2, $a2, 1148
	beqz	$a2, .LBB4_58
# %bb.57:
	ld.w	$a2, $a3, 44
	ld.w	$a4, $a0, 1356
	add.d	$a2, $a2, $a1
	st.w	$a2, $a3, 44
	b	.LBB4_49
.LBB4_58:
	st.w	$a1, $a0, 1460
	b	.LBB4_89
.LBB4_59:
	ld.w	$a3, $a2, 24
	ld.w	$a4, $a2, 28
	ld.w	$a5, $a0, 1536
	ld.w	$s0, $a0, 1328
	add.d	$a3, $a4, $a3
	sub.w	$a3, $a5, $a3
	st.w	$a3, $a0, 1536
	st.d	$zero, $a2, 24
	bltz	$a3, .LBB4_83
# %bb.60:
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(predictCurrPicMAD)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(updateModelQPBU)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 1344
	ld.w	$a0, $s1, 1364
	ld.w	$a2, $s1, 1368
	add.d	$a0, $a0, $a1
	st.w	$a0, $s1, 1364
	st.w	$a1, $s1, 1328
	addi.w	$a0, $a2, -1
	st.w	$a0, $s1, 1368
	bnez	$a0, .LBB4_89
# %bb.61:
	ld.d	$a0, $s2, 0
	ld.w	$a2, $a0, 20
	bnez	$a2, .LBB4_89
# %bb.62:
	ld.w	$a0, $a0, 0
	ld.w	$a2, $s3, 0
	beq	$a0, $a2, .LBB4_89
# %bb.63:
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(updateLastBU)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 1344
	b	.LBB4_89
.LBB4_64:
	ld.w	$a2, $a0, 1360
	addi.w	$a2, $a2, 1
	mod.w	$a2, $a2, $a1
	sltui	$a5, $a2, 1
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $a1, $a5
	or	$a2, $a5, $a2
	bne	$a2, $a4, .LBB4_69
.LBB4_65:
	ldptr.w	$a4, $a3, 4704
	ori	$a5, $zero, 2
	beq	$a4, $a5, .LBB4_67
# %bb.66:
	ldptr.w	$a3, $a3, 4708
	beqz	$a3, .LBB4_69
.LBB4_67:
	pcalau12i	$a3, %pc_hi20(generic_RC)
	ld.d	$a3, $a3, %pc_lo12(generic_RC)
	ld.w	$a4, $a3, 4
	bnez	$a4, .LBB4_69
# %bb.68:                               # %.sink.split.i212
	ld.w	$a3, $a3, 8
	addi.d	$a3, $a3, -1
	sltui	$a3, $a3, 1
	ld.w	$a4, $a0, 1356
	ori	$a5, $zero, 1456
	masknez	$a5, $a5, $a3
	ori	$a6, $zero, 1460
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a5
	ldx.w	$a3, $a0, $a3
	st.w	$a4, $a0, 1352
	st.w	$a3, $a0, 1356
.LBB4_69:                               # %updateQPInterlace.exit215
	ld.w	$a3, $a0, 1356
	ld.w	$a4, $a0, 1352
	sub.w	$a3, $a3, $a4
	slli.d	$a6, $a1, 1
	addi.d	$a5, $zero, -3
	sub.w	$a7, $a5, $a6
	bge	$a7, $a3, .LBB4_85
# %bb.70:
	sub.w	$a5, $zero, $a6
	addi.w	$a6, $a5, -2
	bne	$a3, $a6, .LBB4_72
# %bb.71:
	addi.d	$a5, $zero, -2
	b	.LBB4_85
.LBB4_72:
	addi.w	$a6, $a5, -1
	bne	$a3, $a6, .LBB4_77
# %bb.73:
	addi.d	$a5, $zero, -1
	b	.LBB4_85
.LBB4_74:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a1, $a1, 4
	bnez	$a1, .LBB4_82
	b	.LBB4_18
.LBB4_75:
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
.LBB4_76:
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 64
	slt	$a4, $a2, $a1
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	b	.LBB4_87
.LBB4_77:
	bne	$a3, $a5, .LBB4_84
# %bb.78:
	move	$a5, $zero
	b	.LBB4_85
.LBB4_79:
	ld.w	$a3, $a2, 4
	beqz	$a3, .LBB4_90
# %bb.80:
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB4_82
# %bb.81:
	ld.w	$a2, $a2, 12
	beqz	$a2, .LBB4_90
.LBB4_82:
	ld.w	$a1, $a0, 1344
	b	.LBB4_89
.LBB4_83:
	move	$a2, $s0
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(updateNegativeTarget)
	jr	$t8
.LBB4_84:
	ori	$a5, $a5, 1
	xor	$a5, $a3, $a5
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 2
	sub.d	$a5, $a6, $a5
.LBB4_85:
	add.d	$a4, $a5, $a4
	addi.d	$a2, $a2, -1
	slli.w	$a5, $a2, 1
	sub.w	$a6, $zero, $a5
	mul.w	$a2, $a3, $a2
	addi.w	$a1, $a1, -1
	div.w	$a1, $a2, $a1
	slt	$a2, $a6, $a1
	masknez	$a3, $a6, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	slt	$a2, $a1, $a5
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a5, $a2
	ld.w	$a3, $a0, 68
	or	$a1, $a1, $a2
	add.w	$a1, $a4, $a1
	ld.w	$a2, $a0, 64
	slt	$a4, $a3, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a3, $a3, $a4
.LBB4_86:                               # %updateQPNonPicAFF.exit
	or	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a2, $a2, $a3
.LBB4_87:                               # %updateQPNonPicAFF.exit
	or	$a1, $a1, $a2
.LBB4_88:                               # %updateQPNonPicAFF.exit
	st.w	$a1, $a0, 1344
.LBB4_89:                               # %updateQPNonPicAFF.exit
	addi.w	$a0, $a1, 0
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB4_90:
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(updateFirstP)
	jr	$t8
.LBB4_91:                               # %call.sqrt
	move	$s1, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	fmov.d	$fa1, $fa0
	b	.LBB4_41
.Lfunc_end4:
	.size	updateQPRC0, .Lfunc_end4-updateQPRC0
                                        # -- End function
	.globl	updateQPRC1                     # -- Begin function updateQPRC1
	.p2align	5
	.type	updateQPRC1,@function
updateQPRC1:                            # @updateQPRC1
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s2, 0
	ldptr.w	$a3, $a2, 15404
	ldptr.w	$a4, $a2, 15352
	bne	$a3, $a4, .LBB5_14
# %bb.1:
	beqz	$a1, .LBB5_21
.LBB5_2:
	ld.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a2, $a2, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a2, $a2, 0
	beq	$a1, $a2, .LBB5_15
# %bb.3:
	pcalau12i	$fp, %pc_hi20(generic_RC)
	ld.d	$a2, $fp, %pc_lo12(generic_RC)
	ld.w	$a1, $a2, 48
	beqz	$a1, .LBB5_31
# %bb.4:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a3, $a1, 4704
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB5_6
# %bb.5:
	ldptr.w	$a1, $a1, 4708
	beqz	$a1, .LBB5_8
.LBB5_6:
	ld.w	$a1, $a2, 4
	bnez	$a1, .LBB5_8
# %bb.7:                                # %updateQPInterlaceBU.exit
	ld.w	$a1, $a2, 8
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.w	$a3, $a2, 44
	ori	$a4, $zero, 1456
	masknez	$a4, $a4, $a1
	ori	$a5, $zero, 1460
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a4
	ldx.w	$a1, $a0, $a1
	add.d	$a3, $a1, $a3
	st.w	$a3, $a2, 44
	st.w	$a1, $a0, 1328
.LBB5_8:
	fld.d	$fs1, $a0, 1312
	fld.d	$fs0, $a0, 1320
	fld.d	$fa0, $a0, 104
	fld.d	$fa1, $a0, 112
	fst.d	$fs1, $a0, 1296
	fst.d	$fs0, $a0, 1304
	fst.d	$fa0, $a0, 88
	fst.d	$fa1, $a0, 96
	fld.d	$fa2, $a0, 120
	ld.w	$s0, $a0, 1596
	ld.w	$s1, $a0, 1328
	ld.w	$a1, $a0, 1536
	ld.w	$a3, $a0, 1348
	fst.d	$fa2, $a0, 80
	fmadd.d	$fs2, $fa0, $fa2, $fa1
	fst.d	$fs2, $a0, 1400
	bltz	$a1, .LBB5_42
# %bb.9:
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a0, 0
	sub.w	$a1, $a1, $a3
	vldi	$vr2, -1264
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa1, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	fmul.d	$fs3, $fs1, $fs2
	movgr2fr.w	$fa0, $a1
	movgr2fr.d	$fs5, $zero
	fcmp.ceq.d	$fcc0, $fs0, $fs5
	ffint.d.w	$fs4, $fa0
	bcnez	$fcc0, .LBB5_32
# %bb.10:
	fmul.d	$fa0, $fs2, $fs3
	vldi	$vr1, -1008
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fa1, $fs2
	fmul.d	$fa1, $fa1, $fs4
	fmadd.d	$fa0, $fa0, $fs1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB5_32
# %bb.11:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB5_66
.LBB5_12:                               # %.split
	fneg.d	$fa0, $fs1
	fmadd.d	$fa0, $fa0, $fs2, $fa1
	fcmp.cult.d	$fcc0, $fs5, $fa0
	bceqz	$fcc0, .LBB5_32
# %bb.13:
	move	$s2, $a0
	fadd.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fa1, $fs2
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB5_33
.LBB5_14:
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$s3, $a3, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a3, $s3, 0
	bne	$a2, $a3, .LBB5_16
.LBB5_15:
	ld.w	$a1, $a0, 72
	st.w	$a1, $a0, 1344
	b	.LBB5_54
.LBB5_16:
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	ld.w	$a3, $a2, 40
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB5_18
# %bb.17:
	ld.w	$a3, $a2, 48
	beqz	$a3, .LBB5_38
.LBB5_18:
	vld	$vr0, $a0, 1312
	vld	$vr1, $a0, 104
	ld.w	$a4, $a2, 4
	ld.w	$a3, $a0, 1388
	ld.w	$a5, $a0, 1368
	vst	$vr0, $a0, 1296
	sltu	$a6, $zero, $a4
	sra.w	$a3, $a3, $a6
	vst	$vr1, $a0, 88
	bne	$a5, $a3, .LBB5_27
# %bb.19:
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$a5, $a5, %got_pc_lo12(input)
	ld.d	$a5, $a5, 0
	ldptr.w	$a6, $a5, 4704
	ori	$a7, $zero, 2
	bne	$a6, $a7, .LBB5_34
# %bb.20:
	bnez	$a4, .LBB5_50
	b	.LBB5_36
.LBB5_21:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a3, $a1, 4
	beqz	$a3, .LBB5_2
# %bb.22:
	ld.w	$a3, $a1, 12
	bnez	$a3, .LBB5_41
# %bb.23:
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a3, $a3, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a3, $a3, 0
	beq	$a2, $a3, .LBB5_41
# %bb.24:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a4, $a2, 4704
	ld.w	$a2, $a0, 1344
	ori	$a5, $zero, 1
	ori	$a3, $zero, 1456
	bne	$a4, $a5, .LBB5_26
# %bb.25:
	ld.w	$a3, $a1, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a2
	st.w	$a3, $a1, 44
	addi.d	$a1, $a4, 1
	st.w	$a1, $a0, 1352
	st.w	$a2, $a0, 1356
	ori	$a3, $zero, 1328
.LBB5_26:                               # %updateBottomField.exit
	stx.w	$a2, $a0, $a3
	b	.LBB5_41
.LBB5_27:
	ld.w	$a3, $a2, 24
	ld.w	$a4, $a2, 28
	ld.w	$a5, $a0, 1536
	ld.w	$s0, $a0, 1328
	add.d	$a3, $a4, $a3
	sub.w	$a3, $a5, $a3
	st.w	$a3, $a0, 1536
	st.d	$zero, $a2, 24
	bltz	$a3, .LBB5_45
# %bb.28:
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(predictCurrPicMAD)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(updateModelQPBU)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 1344
	ld.w	$a0, $s1, 1364
	ld.w	$a2, $s1, 1368
	add.d	$a0, $a0, $a1
	st.w	$a0, $s1, 1364
	st.w	$a1, $s1, 1328
	addi.w	$a0, $a2, -1
	st.w	$a0, $s1, 1368
	bnez	$a0, .LBB5_54
# %bb.29:
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 0
	ld.w	$a2, $s3, 0
	beq	$a0, $a2, .LBB5_54
# %bb.30:
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(updateLastBU)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 1344
	b	.LBB5_54
.LBB5_31:
	ld.w	$a1, $a0, 72
	ld.w	$a3, $a2, 4
	st.w	$a1, $a0, 1344
	bnez	$a3, .LBB5_54
	b	.LBB5_43
.LBB5_32:
	move	$s2, $a0
	fdiv.d	$fa0, $fs3, $fs4
.LBB5_33:                               # %updateModelQPFrame.exit
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(Qstep2QP)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 68
	move	$a1, $a0
	move	$a0, $s2
	ld.w	$a3, $s2, 64
	slt	$a4, $a2, $a1
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	sub.w	$a2, $s1, $s0
	add.w	$a3, $s1, $s0
	slt	$a4, $a2, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a2, $a2, $a4
	or	$a1, $a1, $a2
	slt	$a4, $a1, $a3
	maskeqz	$a1, $a1, $a4
	ld.d	$a2, $fp, %pc_lo12(generic_RC)
	masknez	$a3, $a3, $a4
	or	$a1, $a1, $a3
	st.w	$a1, $s2, 1344
	ld.w	$a3, $a2, 4
	bnez	$a3, .LBB5_54
	b	.LBB5_43
.LBB5_34:
	bnez	$a4, .LBB5_50
# %bb.35:
	lu12i.w	$a4, 1
	ori	$a4, $a4, 612
	ldx.w	$a4, $a5, $a4
	beqz	$a4, .LBB5_50
.LBB5_36:
	ld.w	$a4, $a2, 8
	ld.w	$a6, $a2, 48
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB5_47
# %bb.37:
	ld.w	$a4, $a0, 1460
	ori	$a5, $zero, 1464
	bgtz	$a6, .LBB5_48
	b	.LBB5_49
.LBB5_38:
	ld.w	$a3, $a2, 4
	beqz	$a3, .LBB5_55
# %bb.39:
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB5_41
# %bb.40:
	ld.w	$a4, $a2, 12
	beqz	$a4, .LBB5_55
.LBB5_41:
	ld.w	$a1, $a0, 1344
	b	.LBB5_54
.LBB5_42:
	ld.w	$a1, $a0, 68
	add.w	$a3, $s1, $s0
	ld.w	$a4, $a0, 64
	slt	$a5, $a1, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a1, $a1, $a5
	or	$a1, $a3, $a1
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	st.w	$a1, $a0, 1344
	ld.w	$a3, $a2, 4
	bnez	$a3, .LBB5_54
.LBB5_43:
	pcalau12i	$a3, %pc_hi20(active_sps)
	ld.d	$a3, $a3, %pc_lo12(active_sps)
	ld.w	$a3, $a3, 1148
	beqz	$a3, .LBB5_46
# %bb.44:
	ld.w	$a3, $a2, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a1
	st.w	$a3, $a2, 44
	st.w	$a4, $a0, 1352
	st.w	$a1, $a0, 1356
	st.w	$a1, $a0, 1328
	b	.LBB5_54
.LBB5_45:
	move	$a2, $s0
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(updateNegativeTarget)
	jr	$t8
.LBB5_46:
	st.w	$a1, $a0, 1460
	b	.LBB5_54
.LBB5_47:
	ld.w	$a4, $a0, 1456
	ori	$a5, $zero, 1468
	blez	$a6, .LBB5_49
.LBB5_48:                               # %.sink.split.i.sink.split
	ld.w	$a6, $a2, 44
	add.d	$a6, $a6, $a4
	st.w	$a6, $a2, 44
.LBB5_49:                               # %.sink.split.i
	st.w	$a4, $a0, 1384
	ldx.w	$a4, $a0, $a5
	st.w	$a4, $a0, 1380
.LBB5_50:
	move	$a7, $a1
	ld.w	$t0, $a0, 1536
	ld.w	$a4, $a0, 1384
	ori	$a5, $zero, 1344
	move	$a6, $a4
	move	$a1, $a4
	bgtz	$t0, .LBB5_52
# %bb.51:
	ld.w	$a1, $a0, 64
	addi.w	$a5, $a4, 2
	slt	$a6, $a5, $a1
	masknez	$a1, $a1, $a6
	maskeqz	$a5, $a5, $a6
	or	$a1, $a5, $a1
	st.w	$a1, $a0, 1344
	ori	$a6, $zero, 1
	ori	$a5, $zero, 1504
	beqz	$a7, .LBB5_59
.LBB5_52:                               # %.sink.split31.i
	stx.w	$a6, $a0, $a5
	ld.w	$a3, $a0, 1368
.LBB5_53:                               # %updateFirstBU.exit
	ld.w	$a2, $a0, 1364
	add.d	$a2, $a2, $a1
	st.w	$a2, $a0, 1364
	addi.d	$a2, $a3, -1
	st.w	$a2, $a0, 1368
	st.w	$a4, $a0, 1328
.LBB5_54:                               # %updateQPNonPicAFF.exit
	move	$a0, $a1
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB5_55:
	move	$a4, $a1
	ld.w	$a1, $a0, 72
	st.w	$a1, $a0, 1344
	st.d	$zero, $a2, 24
	ld.w	$a5, $a0, 1368
	addi.w	$a5, $a5, -1
	or	$a4, $a4, $a5
	st.w	$a5, $a0, 1368
	bnez	$a4, .LBB5_58
# %bb.56:
	pcalau12i	$a4, %pc_hi20(active_sps)
	ld.d	$a4, $a4, %pc_lo12(active_sps)
	ld.w	$a4, $a4, 1148
	beqz	$a4, .LBB5_60
.LBB5_57:
	ld.w	$a3, $a2, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a1
	st.w	$a3, $a2, 44
	ld.w	$a2, $a0, 1376
	st.w	$a4, $a0, 1352
	st.w	$a1, $a0, 1356
	st.w	$a1, $a0, 1384
	st.w	$a2, $a0, 1380
.LBB5_58:                               # %updateFirstP.exit
	ld.w	$a2, $a0, 1364
	st.w	$a1, $a0, 1328
	add.d	$a2, $a2, $a1
	st.w	$a2, $a0, 1364
	b	.LBB5_54
.LBB5_59:
	ld.w	$a2, $a2, 4
	bnez	$a2, .LBB5_53
	b	.LBB5_52
.LBB5_60:
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a4, $a4, %got_pc_lo12(input)
	ld.d	$a4, $a4, 0
	ldptr.w	$a5, $a4, 4704
	ori	$a6, $zero, 2
	beq	$a5, $a6, .LBB5_63
# %bb.61:
	ori	$a6, $zero, 1
	beq	$a5, $a6, .LBB5_57
# %bb.62:
	ldptr.w	$a2, $a4, 4708
	beqz	$a2, .LBB5_58
.LBB5_63:
	beqz	$a3, .LBB5_65
# %bb.64:
	ld.w	$a2, $a0, 1376
	st.w	$a1, $a0, 1456
	st.w	$a2, $a0, 1468
	b	.LBB5_58
.LBB5_65:
	ld.w	$a2, $a0, 1376
	st.w	$a1, $a0, 1460
	st.w	$a2, $a0, 1464
	b	.LBB5_58
.LBB5_66:                               # %call.sqrt
	move	$s2, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	fmov.d	$fa1, $fa0
	b	.LBB5_12
.Lfunc_end5:
	.size	updateQPRC1, .Lfunc_end5-updateQPRC1
                                        # -- End function
	.globl	updateQPRC2                     # -- Begin function updateQPRC2
	.p2align	5
	.type	updateQPRC2,@function
updateQPRC2:                            # @updateQPRC2
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s2, 0
	ldptr.w	$a3, $a2, 15404
	ldptr.w	$a4, $a2, 15352
	bne	$a3, $a4, .LBB6_11
# %bb.1:
	beqz	$a1, .LBB6_21
.LBB6_2:
	ld.w	$a1, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a3, $a3, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a3, $a3, 0
	beq	$a1, $a3, .LBB6_12
# %bb.3:
	ld.w	$a1, $a2, 20
	beqz	$a1, .LBB6_40
# %bb.4:
	ori	$a3, $zero, 1
	beq	$a1, $a3, .LBB6_28
# %bb.5:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB6_41
# %bb.6:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a3, $a1, 4704
	beq	$a3, $a2, .LBB6_8
# %bb.7:
	ldptr.w	$a1, $a1, 4708
	beqz	$a1, .LBB6_10
.LBB6_8:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 4
	bnez	$a2, .LBB6_10
# %bb.9:                                # %.sink.split.i
	ld.w	$a1, $a1, 8
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.w	$a2, $a0, 1356
	ori	$a3, $zero, 1456
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 1460
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	ldx.w	$a1, $a0, $a1
	st.w	$a2, $a0, 1352
	st.w	$a1, $a0, 1356
.LBB6_10:                               # %updateQPInterlace.exit
	ld.w	$a2, $a0, 1356
	st.w	$a2, $a0, 1344
	b	.LBB6_74
.LBB6_11:
	ld.w	$a3, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$s3, $a4, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a4, $s3, 0
	bne	$a3, $a4, .LBB6_13
.LBB6_12:
	ld.w	$a2, $a0, 72
	st.w	$a2, $a0, 1344
	b	.LBB6_74
.LBB6_13:
	ld.w	$a3, $a2, 20
	beqz	$a3, .LBB6_35
# %bb.14:
	ori	$a1, $zero, 1
	beq	$a3, $a1, .LBB6_28
# %bb.15:
	ori	$a1, $zero, 2
	bne	$a3, $a1, .LBB6_73
# %bb.16:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a3, $a2, 4704
	beq	$a3, $a1, .LBB6_18
# %bb.17:
	ldptr.w	$a1, $a2, 4708
	beqz	$a1, .LBB6_20
.LBB6_18:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 4
	bnez	$a2, .LBB6_20
# %bb.19:                               # %.sink.split.i160
	ld.w	$a1, $a1, 8
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.w	$a2, $a0, 1356
	ori	$a3, $zero, 1456
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 1460
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	ldx.w	$a1, $a0, $a1
	st.w	$a2, $a0, 1352
	st.w	$a1, $a0, 1356
.LBB6_20:                               # %updateQPInterlace.exit163
	ld.w	$a2, $a0, 1352
	ld.w	$a1, $a0, 1356
	st.w	$a2, $a0, 1344
	st.w	$a1, $a0, 1352
	st.w	$a1, $a0, 1384
	b	.LBB6_74
.LBB6_21:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a3, $a1, 4
	beqz	$a3, .LBB6_2
# %bb.22:
	ld.w	$a3, $a2, 20
	bnez	$a3, .LBB6_73
# %bb.23:
	ld.w	$a3, $a1, 12
	bnez	$a3, .LBB6_73
# %bb.24:
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a3, $a3, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a3, $a3, 0
	beq	$a2, $a3, .LBB6_73
# %bb.25:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a4, $a2, 4704
	ld.w	$a2, $a0, 1344
	ori	$a5, $zero, 1
	ori	$a3, $zero, 1456
	bne	$a4, $a5, .LBB6_27
# %bb.26:
	ld.w	$a3, $a1, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a2
	st.w	$a3, $a1, 44
	addi.d	$a1, $a4, 1
	st.w	$a1, $a0, 1352
	st.w	$a2, $a0, 1356
	ori	$a3, $zero, 1328
.LBB6_27:                               # %updateBottomField.exit
	stx.w	$a2, $a0, $a3
	b	.LBB6_73
.LBB6_28:
	ld.w	$a3, $a0, 1352
	ld.w	$a4, $a0, 1356
	slt	$a5, $a4, $a3
	masknez	$a1, $a4, $a5
	maskeqz	$a3, $a3, $a5
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$a5, $a5, %got_pc_lo12(input)
	ld.d	$a5, $a5, 0
	ldptr.w	$a6, $a5, 4704
	ori	$a7, $zero, 2
	beq	$a6, $a7, .LBB6_30
# %bb.29:
	ldptr.w	$a6, $a5, 4708
	beqz	$a6, .LBB6_32
.LBB6_30:
	pcalau12i	$a6, %pc_hi20(generic_RC)
	ld.d	$a6, $a6, %pc_lo12(generic_RC)
	ld.w	$a7, $a6, 4
	bnez	$a7, .LBB6_32
# %bb.31:                               # %.sink.split.i154
	ld.w	$a6, $a6, 8
	addi.d	$a6, $a6, -1
	sltui	$a6, $a6, 1
	ori	$a7, $zero, 1456
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 1460
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	ldx.w	$a6, $a0, $a6
	st.w	$a4, $a0, 1352
	st.w	$a6, $a0, 1356
.LBB6_32:                               # %updateQPInterlace.exit157
	ldptr.w	$a4, $a5, 2968
	or	$a1, $a3, $a1
	beqz	$a4, .LBB6_51
# %bb.33:
	ldptr.w	$a3, $a2, 14364
	beqz	$a3, .LBB6_52
# %bb.34:
	lu12i.w	$a4, 3
	ori	$a4, $a4, 3324
	pcalau12i	$a5, %pc_hi20(gop_structure)
	ld.d	$a5, $a5, %pc_lo12(gop_structure)
	ldx.w	$a2, $a2, $a4
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a3, $a5, $a3
	ld.w	$a3, $a3, -8
	add.d	$a1, $a2, $a1
	sub.w	$a1, $a1, $a3
	b	.LBB6_52
.LBB6_35:
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a3, $a2, %pc_lo12(generic_RC)
	ld.w	$a2, $a3, 40
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB6_37
# %bb.36:
	ld.w	$a2, $a3, 48
	beqz	$a2, .LBB6_70
.LBB6_37:
	vld	$vr0, $a0, 1312
	vld	$vr1, $a0, 104
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a0, 1388
	ld.w	$a5, $a0, 1368
	vst	$vr0, $a0, 1296
	sltu	$a6, $zero, $a2
	sra.w	$a4, $a4, $a6
	vst	$vr1, $a0, 88
	bne	$a5, $a4, .LBB6_59
# %bb.38:
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$a5, $a5, %got_pc_lo12(input)
	ld.d	$a5, $a5, 0
	ldptr.w	$a6, $a5, 4704
	ori	$a7, $zero, 2
	bne	$a6, $a7, .LBB6_66
# %bb.39:
	bnez	$a2, .LBB6_79
	b	.LBB6_68
.LBB6_40:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 48
	beqz	$a2, .LBB6_64
.LBB6_41:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a2, $a1, 4704
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB6_43
# %bb.42:
	ldptr.w	$a1, $a1, 4708
	beqz	$a1, .LBB6_45
.LBB6_43:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 4
	bnez	$a2, .LBB6_45
# %bb.44:                               # %updateQPInterlaceBU.exit
	ld.w	$a2, $a1, 8
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	ld.w	$a3, $a1, 44
	ori	$a4, $zero, 1456
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 1460
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	ldx.w	$a2, $a0, $a2
	add.d	$a3, $a2, $a3
	st.w	$a3, $a1, 44
	st.w	$a2, $a0, 1328
.LBB6_45:
	fld.d	$fs1, $a0, 1312
	fld.d	$fs0, $a0, 1320
	fld.d	$fa0, $a0, 104
	fld.d	$fa1, $a0, 112
	fst.d	$fs1, $a0, 1296
	fst.d	$fs0, $a0, 1304
	fst.d	$fa0, $a0, 88
	fst.d	$fa1, $a0, 96
	fld.d	$fa2, $a0, 120
	ld.w	$fp, $a0, 1596
	ld.w	$s0, $a0, 1328
	ld.w	$a1, $a0, 1536
	ld.w	$a2, $a0, 1348
	fst.d	$fa2, $a0, 80
	fmadd.d	$fs2, $fa0, $fa2, $fa1
	fst.d	$fs2, $a0, 1400
	bltz	$a1, .LBB6_55
# %bb.46:
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a0, 0
	sub.w	$a1, $a1, $a2
	vldi	$vr2, -1264
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa1, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	fmul.d	$fs3, $fs1, $fs2
	movgr2fr.w	$fa0, $a1
	movgr2fr.d	$fs5, $zero
	fcmp.ceq.d	$fcc0, $fs0, $fs5
	ffint.d.w	$fs4, $fa0
	bcnez	$fcc0, .LBB6_53
# %bb.47:
	fmul.d	$fa0, $fs2, $fs3
	vldi	$vr1, -1008
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fa1, $fs2
	fmul.d	$fa1, $fa1, $fs4
	fmadd.d	$fa0, $fa0, $fs1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB6_53
# %bb.48:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB6_85
.LBB6_49:                               # %.split
	fneg.d	$fa0, $fs1
	fmadd.d	$fa0, $fa0, $fs2, $fa1
	fcmp.cult.d	$fcc0, $fs5, $fa0
	bceqz	$fcc0, .LBB6_53
# %bb.50:
	move	$s1, $a0
	fadd.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fa1, $fs2
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB6_54
.LBB6_51:
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3072
	ldx.w	$a2, $a2, $a3
	sub.d	$a1, $a1, $a2
	addi.w	$a1, $a1, 2
.LBB6_52:
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 64
	slt	$a4, $a2, $a1
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a2, $a1, $a2
	st.w	$a2, $a0, 1344
	b	.LBB6_74
.LBB6_53:
	move	$s1, $a0
	fdiv.d	$fa0, $fs3, $fs4
.LBB6_54:                               # %updateModelQPFrame.exit
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(Qstep2QP)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 68
	move	$a1, $a0
	move	$a0, $s1
	ld.w	$a3, $s1, 64
	slt	$a4, $a2, $a1
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	sub.w	$a2, $s0, $fp
	add.w	$a3, $s0, $fp
	slt	$a4, $a2, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a2, $a2, $a4
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a2, $a1, $a2
	st.w	$a2, $s1, 1344
	b	.LBB6_56
.LBB6_55:
	ld.w	$a1, $a0, 68
	add.w	$a2, $s0, $fp
	ld.w	$a3, $a0, 64
	slt	$a4, $a1, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a1, $a1, $a4
	or	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a2, $a1, $a2
	st.w	$a2, $a0, 1344
.LBB6_56:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a3, $a1, 4
	bnez	$a3, .LBB6_74
.LBB6_57:
	pcalau12i	$a3, %pc_hi20(active_sps)
	ld.d	$a3, $a3, %pc_lo12(active_sps)
	ld.w	$a3, $a3, 1148
	beqz	$a3, .LBB6_65
# %bb.58:
	ld.w	$a3, $a1, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a2
	st.w	$a3, $a1, 44
	st.w	$a4, $a0, 1352
	st.w	$a2, $a0, 1356
	st.w	$a2, $a0, 1328
	b	.LBB6_74
.LBB6_59:
	ld.w	$a2, $a3, 24
	ld.w	$a4, $a3, 28
	ld.w	$a5, $a0, 1536
	ld.w	$s0, $a0, 1328
	add.d	$a2, $a4, $a2
	sub.w	$a2, $a5, $a2
	st.w	$a2, $a0, 1536
	st.d	$zero, $a3, 24
	bltz	$a2, .LBB6_75
# %bb.60:
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(predictCurrPicMAD)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(updateModelQPBU)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 1344
	ld.w	$a0, $s1, 1364
	ld.w	$a1, $s1, 1368
	add.d	$a0, $a0, $a2
	st.w	$a0, $s1, 1364
	st.w	$a2, $s1, 1328
	addi.w	$a0, $a1, -1
	st.w	$a0, $s1, 1368
	bnez	$a0, .LBB6_74
# %bb.61:
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 20
	bnez	$a1, .LBB6_74
# %bb.62:
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 0
	beq	$a0, $a1, .LBB6_74
# %bb.63:
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(updateLastBU)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 1344
	b	.LBB6_74
.LBB6_64:
	ld.w	$a2, $a0, 72
	ld.w	$a3, $a1, 4
	st.w	$a2, $a0, 1344
	bnez	$a3, .LBB6_74
	b	.LBB6_57
.LBB6_65:
	st.w	$a2, $a0, 1460
	b	.LBB6_74
.LBB6_66:
	bnez	$a2, .LBB6_79
# %bb.67:
	lu12i.w	$a2, 1
	ori	$a2, $a2, 612
	ldx.w	$a2, $a5, $a2
	beqz	$a2, .LBB6_79
.LBB6_68:
	ld.w	$a2, $a3, 8
	ld.w	$a6, $a3, 48
	ori	$a5, $zero, 1
	bne	$a2, $a5, .LBB6_76
# %bb.69:
	ld.w	$a2, $a0, 1460
	ori	$a5, $zero, 1464
	bgtz	$a6, .LBB6_77
	b	.LBB6_78
.LBB6_70:
	ld.w	$a2, $a3, 4
	beqz	$a2, .LBB6_83
# %bb.71:
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB6_73
# %bb.72:
	ld.w	$a2, $a3, 12
	beqz	$a2, .LBB6_83
.LBB6_73:
	ld.w	$a2, $a0, 1344
.LBB6_74:                               # %updateQPNonPicAFF.exit
	move	$a0, $a2
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB6_75:
	move	$a2, $s0
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(updateNegativeTarget)
	jr	$t8
.LBB6_76:
	ld.w	$a2, $a0, 1456
	ori	$a5, $zero, 1468
	blez	$a6, .LBB6_78
.LBB6_77:                               # %.sink.split.i169.sink.split
	ld.w	$a6, $a3, 44
	add.d	$a6, $a6, $a2
	st.w	$a6, $a3, 44
.LBB6_78:                               # %.sink.split.i169
	st.w	$a2, $a0, 1384
	ldx.w	$a2, $a0, $a5
	st.w	$a2, $a0, 1380
.LBB6_79:
	ld.w	$t0, $a0, 1536
	ld.w	$a5, $a0, 1384
	ori	$a6, $zero, 1344
	move	$a7, $a5
	move	$a2, $a5
	bgtz	$t0, .LBB6_81
# %bb.80:
	ld.w	$a2, $a0, 64
	addi.w	$a6, $a5, 2
	slt	$a7, $a6, $a2
	masknez	$a2, $a2, $a7
	maskeqz	$a6, $a6, $a7
	or	$a2, $a6, $a2
	st.w	$a2, $a0, 1344
	ori	$a7, $zero, 1
	ori	$a6, $zero, 1504
	beqz	$a1, .LBB6_84
.LBB6_81:                               # %.sink.split31.i
	stx.w	$a7, $a0, $a6
	ld.w	$a4, $a0, 1368
.LBB6_82:                               # %updateFirstBU.exit
	ld.w	$a1, $a0, 1364
	add.d	$a1, $a1, $a2
	st.w	$a1, $a0, 1364
	addi.d	$a1, $a4, -1
	st.w	$a1, $a0, 1368
	st.w	$a5, $a0, 1328
	b	.LBB6_74
.LBB6_83:
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(updateFirstP)
	jr	$t8
.LBB6_84:
	ld.w	$a1, $a3, 4
	bnez	$a1, .LBB6_82
	b	.LBB6_81
.LBB6_85:                               # %call.sqrt
	move	$s1, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	fmov.d	$fa1, $fa0
	b	.LBB6_49
.Lfunc_end6:
	.size	updateQPRC2, .Lfunc_end6-updateQPRC2
                                        # -- End function
	.globl	updateQPRC3                     # -- Begin function updateQPRC3
	.p2align	5
	.type	updateQPRC3,@function
updateQPRC3:                            # @updateQPRC3
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a3, $s2, 0
	ldptr.w	$a2, $a3, 15404
	ldptr.w	$a4, $a3, 15352
	beq	$a2, $a4, .LBB7_2
# %bb.1:
	ld.w	$a5, $a3, 20
	beqz	$a5, .LBB7_19
.LBB7_2:
	beqz	$a1, .LBB7_12
.LBB7_3:
	ld.w	$a1, $a3, 0
	pcalau12i	$a5, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a5, $a5, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a5, $a5, 0
	beq	$a1, $a5, .LBB7_20
# %bb.4:
	ld.w	$a1, $a3, 20
	beqz	$a1, .LBB7_21
.LBB7_5:
	fld.d	$fs1, $a0, 1312
	fst.d	$fs1, $a0, 1296
	fld.d	$fs0, $a0, 1320
	fld.d	$fa0, $a0, 104
	fld.d	$fa1, $a0, 112
	fld.d	$fa2, $a0, 120
	fst.d	$fs0, $a0, 1304
	fst.d	$fa0, $a0, 88
	fst.d	$fa1, $a0, 96
	fst.d	$fa2, $a0, 80
	bgeu	$a2, $a4, .LBB7_8
# %bb.6:
	beqz	$a1, .LBB7_8
# %bb.7:
	fld.d	$fa2, $a0, 1432
	fst.d	$fa2, $a0, 80
.LBB7_8:
	ld.w	$a5, $a0, 1348
	ld.w	$fp, $a0, 1596
	ld.w	$a6, $a0, 1536
	ld.w	$s0, $a0, 1328
	fmadd.d	$fs2, $fa0, $fa2, $fa1
	fst.d	$fs2, $a0, 1400
	bltz	$a6, .LBB7_26
# %bb.9:
	beqz	$a1, .LBB7_32
# %bb.10:
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a1, $a5, $a1
	sub.w	$a1, $a6, $a1
	bgeu	$a2, $a4, .LBB7_33
# %bb.11:
	ld.w	$a2, $a0, 1388
	div.w	$a1, $a1, $a2
	b	.LBB7_33
.LBB7_12:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a5, $a1, 4
	beqz	$a5, .LBB7_3
# %bb.13:
	ld.w	$a2, $a3, 20
	bnez	$a2, .LBB7_67
# %bb.14:
	ld.w	$a2, $a1, 12
	bnez	$a2, .LBB7_67
# %bb.15:
	ld.w	$a2, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a3, $a3, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a3, $a3, 0
	beq	$a2, $a3, .LBB7_67
# %bb.16:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a4, $a2, 4704
	ld.w	$a2, $a0, 1344
	ori	$a5, $zero, 1
	ori	$a3, $zero, 1456
	bne	$a4, $a5, .LBB7_18
# %bb.17:
	ld.w	$a3, $a1, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a2
	st.w	$a3, $a1, 44
	addi.d	$a1, $a4, 1
	st.w	$a1, $a0, 1352
	st.w	$a2, $a0, 1356
	ori	$a3, $zero, 1328
.LBB7_18:                               # %updateBottomField.exit
	stx.w	$a2, $a0, $a3
	b	.LBB7_67
.LBB7_19:
	ld.w	$a2, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$s3, $a3, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a3, $s3, 0
	bne	$a2, $a3, .LBB7_27
.LBB7_20:
	ld.w	$a2, $a0, 72
	st.w	$a2, $a0, 1344
	b	.LBB7_78
.LBB7_21:
	pcalau12i	$a5, %pc_hi20(generic_RC)
	ld.d	$a5, $a5, %pc_lo12(generic_RC)
	ld.w	$a6, $a5, 48
	beqz	$a6, .LBB7_49
# %bb.22:
	pcalau12i	$a6, %got_pc_hi20(input)
	ld.d	$a6, $a6, %got_pc_lo12(input)
	ld.d	$a6, $a6, 0
	ldptr.w	$a7, $a6, 4704
	ori	$t0, $zero, 2
	beq	$a7, $t0, .LBB7_24
# %bb.23:
	ldptr.w	$a6, $a6, 4708
	beqz	$a6, .LBB7_5
.LBB7_24:
	ld.w	$a6, $a5, 4
	bnez	$a6, .LBB7_5
# %bb.25:                               # %updateQPInterlaceBU.exit
	ld.w	$a6, $a5, 8
	addi.d	$a6, $a6, -1
	sltui	$a6, $a6, 1
	ld.w	$a7, $a5, 44
	ori	$t0, $zero, 1456
	masknez	$t0, $t0, $a6
	ori	$t1, $zero, 1460
	maskeqz	$a6, $t1, $a6
	or	$a6, $a6, $t0
	ldx.w	$a6, $a0, $a6
	add.d	$a7, $a6, $a7
	st.w	$a7, $a5, 44
	st.w	$a6, $a0, 1328
	b	.LBB7_5
.LBB7_26:
	ld.w	$a5, $a0, 68
	add.w	$a2, $s0, $fp
	ld.w	$a4, $a0, 64
	slt	$a6, $a5, $a2
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $a5, $a6
	or	$a2, $a2, $a6
	slt	$a6, $a2, $a4
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $a4, $a6
	or	$a2, $a2, $a6
	st.w	$a2, $a0, 1344
	b	.LBB7_40
.LBB7_27:
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a3, $a2, %pc_lo12(generic_RC)
	ld.w	$a2, $a3, 40
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB7_29
# %bb.28:
	ld.w	$a2, $a3, 48
	beqz	$a2, .LBB7_64
.LBB7_29:
	vld	$vr0, $a0, 1312
	vld	$vr1, $a0, 104
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a0, 1388
	ld.w	$a5, $a0, 1368
	vst	$vr0, $a0, 1296
	sltu	$a6, $zero, $a2
	sra.w	$a4, $a4, $a6
	vst	$vr1, $a0, 88
	bne	$a5, $a4, .LBB7_53
# %bb.30:
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$a5, $a5, %got_pc_lo12(input)
	ld.d	$a5, $a5, 0
	ldptr.w	$a6, $a5, 4704
	ori	$a7, $zero, 2
	bne	$a6, $a7, .LBB7_60
# %bb.31:
	bnez	$a2, .LBB7_74
	b	.LBB7_62
.LBB7_32:
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a0, 0
	sub.w	$a1, $a6, $a5
	vldi	$vr2, -1264
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa1, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
.LBB7_33:
	fmul.d	$fs3, $fs1, $fs2
	movgr2fr.w	$fa0, $a1
	movgr2fr.d	$fs5, $zero
	fcmp.ceq.d	$fcc0, $fs0, $fs5
	ffint.d.w	$fs4, $fa0
	bcnez	$fcc0, .LBB7_38
# %bb.34:
	fmul.d	$fa0, $fs2, $fs3
	vldi	$vr1, -1008
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fa1, $fs2
	fmul.d	$fa1, $fa1, $fs4
	fmadd.d	$fa0, $fa0, $fs1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB7_38
# %bb.35:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB7_81
.LBB7_36:                               # %.split
	fneg.d	$fa0, $fs1
	fmadd.d	$fa0, $fa0, $fs2, $fa1
	fcmp.cult.d	$fcc0, $fs5, $fa0
	bceqz	$fcc0, .LBB7_38
# %bb.37:
	move	$s1, $a0
	fadd.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fa1, $fs2
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB7_39
.LBB7_38:
	move	$s1, $a0
	fdiv.d	$fa0, $fs3, $fs4
.LBB7_39:                               # %updateModelQPFrame.exit
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(Qstep2QP)
	jirl	$ra, $ra, 0
	ld.w	$a5, $s1, 68
	move	$a1, $a0
	move	$a0, $s1
	ld.w	$a4, $s1, 64
	slt	$a2, $a5, $a1
	masknez	$a6, $a5, $a2
	ld.d	$a3, $s2, 0
	maskeqz	$a1, $a1, $a2
	or	$a2, $a1, $a6
	slt	$a6, $a2, $a4
	ld.w	$a1, $a3, 20
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $a4, $a6
	or	$a2, $a2, $a6
	st.w	$a2, $s1, 1344
	beqz	$a1, .LBB7_45
.LBB7_40:
	ori	$a6, $zero, 1
	beq	$a1, $a6, .LBB7_42
# %bb.41:
	beqz	$a1, .LBB7_46
	b	.LBB7_78
.LBB7_42:
	ld.w	$a1, $a0, 1352
	ld.w	$a6, $a0, 1356
	add.w	$a1, $a6, $a1
	srai.d	$a1, $a1, 1
	addi.d	$a6, $a1, 1
	pcalau12i	$a7, %got_pc_hi20(input)
	ld.d	$a7, $a7, %got_pc_lo12(input)
	ld.d	$a7, $a7, 0
	ldptr.w	$a7, $a7, 2968
	beqz	$a7, .LBB7_58
# %bb.43:
	ldptr.w	$a3, $a3, 14364
	beqz	$a3, .LBB7_68
# %bb.44:
	pcalau12i	$a7, %pc_hi20(gop_structure)
	ld.d	$a7, $a7, %pc_lo12(gop_structure)
	slli.d	$t0, $a3, 4
	alsl.d	$a3, $a3, $t0, 3
	add.d	$a3, $a7, $a3
	ld.w	$a7, $a3, -8
	move	$a3, $zero
	sub.w	$a2, $a2, $a7
	b	.LBB7_69
.LBB7_45:                               # %.thread
	sub.w	$a1, $s0, $fp
	add.w	$a3, $s0, $fp
	slt	$a4, $a1, $a2
	masknez	$a1, $a1, $a4
	maskeqz	$a2, $a2, $a4
	or	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a2, $a1, $a2
	st.w	$a2, $a0, 1344
.LBB7_46:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a3, $a1, 4
	bnez	$a3, .LBB7_78
# %bb.47:
	pcalau12i	$a3, %pc_hi20(active_sps)
	ld.d	$a3, $a3, %pc_lo12(active_sps)
	ld.w	$a3, $a3, 1148
	beqz	$a3, .LBB7_59
# %bb.48:
	ld.w	$a3, $a1, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a2
	st.w	$a3, $a1, 44
	st.w	$a4, $a0, 1352
	b	.LBB7_52
.LBB7_49:
	ld.w	$a2, $a0, 72
	ld.w	$a1, $a5, 4
	st.w	$a2, $a0, 1344
	bnez	$a1, .LBB7_78
# %bb.50:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB7_59
# %bb.51:
	ld.w	$a1, $a5, 44
	ld.w	$a3, $a0, 1356
	add.d	$a1, $a1, $a2
	st.w	$a1, $a5, 44
	st.w	$a3, $a0, 1352
.LBB7_52:                               # %updateQPNonPicAFF.exit
	st.w	$a2, $a0, 1356
	st.w	$a2, $a0, 1328
	b	.LBB7_78
.LBB7_53:
	ld.w	$a2, $a3, 24
	ld.w	$a4, $a3, 28
	ld.w	$a5, $a0, 1536
	ld.w	$s0, $a0, 1328
	add.d	$a2, $a4, $a2
	sub.w	$a2, $a5, $a2
	st.w	$a2, $a0, 1536
	st.d	$zero, $a3, 24
	bltz	$a2, .LBB7_70
# %bb.54:
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(predictCurrPicMAD)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(updateModelQPBU)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 1344
	ld.w	$a0, $s1, 1364
	ld.w	$a1, $s1, 1368
	add.d	$a0, $a0, $a2
	st.w	$a0, $s1, 1364
	st.w	$a2, $s1, 1328
	addi.w	$a0, $a1, -1
	st.w	$a0, $s1, 1368
	bnez	$a0, .LBB7_78
# %bb.55:
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 20
	bnez	$a1, .LBB7_78
# %bb.56:
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 0
	beq	$a0, $a1, .LBB7_78
# %bb.57:
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(updateLastBU)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 1344
	b	.LBB7_78
.LBB7_58:
	addi.d	$a3, $zero, -5
	b	.LBB7_69
.LBB7_59:
	st.w	$a2, $a0, 1460
	b	.LBB7_78
.LBB7_60:
	bnez	$a2, .LBB7_74
# %bb.61:
	lu12i.w	$a2, 1
	ori	$a2, $a2, 612
	ldx.w	$a2, $a5, $a2
	beqz	$a2, .LBB7_74
.LBB7_62:
	ld.w	$a2, $a3, 8
	ld.w	$a6, $a3, 48
	ori	$a5, $zero, 1
	bne	$a2, $a5, .LBB7_71
# %bb.63:
	ld.w	$a2, $a0, 1460
	ori	$a5, $zero, 1464
	bgtz	$a6, .LBB7_72
	b	.LBB7_73
.LBB7_64:
	ld.w	$a2, $a3, 4
	beqz	$a2, .LBB7_79
# %bb.65:
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB7_67
# %bb.66:
	ld.w	$a2, $a3, 12
	beqz	$a2, .LBB7_79
.LBB7_67:
	ld.w	$a2, $a0, 1344
	b	.LBB7_78
.LBB7_68:
	move	$a3, $zero
.LBB7_69:
	add.w	$a3, $a6, $a3
	addi.d	$a1, $a1, 6
	slt	$a6, $a3, $a2
	masknez	$a3, $a3, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a1, $a1, $a3
	or	$a1, $a2, $a1
	slt	$a2, $a5, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a5, $a2
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a4
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a2, $a1, $a2
	st.w	$a2, $a0, 1344
	b	.LBB7_78
.LBB7_70:
	move	$a2, $s0
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(updateNegativeTarget)
	jr	$t8
.LBB7_71:
	ld.w	$a2, $a0, 1456
	ori	$a5, $zero, 1468
	blez	$a6, .LBB7_73
.LBB7_72:                               # %.sink.split.i.sink.split
	ld.w	$a6, $a3, 44
	add.d	$a6, $a6, $a2
	st.w	$a6, $a3, 44
.LBB7_73:                               # %.sink.split.i
	st.w	$a2, $a0, 1384
	ldx.w	$a2, $a0, $a5
	st.w	$a2, $a0, 1380
.LBB7_74:
	ld.w	$t0, $a0, 1536
	ld.w	$a5, $a0, 1384
	ori	$a6, $zero, 1344
	move	$a7, $a5
	move	$a2, $a5
	bgtz	$t0, .LBB7_76
# %bb.75:
	ld.w	$a2, $a0, 64
	addi.w	$a6, $a5, 2
	slt	$a7, $a6, $a2
	masknez	$a2, $a2, $a7
	maskeqz	$a6, $a6, $a7
	or	$a2, $a6, $a2
	st.w	$a2, $a0, 1344
	ori	$a7, $zero, 1
	ori	$a6, $zero, 1504
	beqz	$a1, .LBB7_80
.LBB7_76:                               # %.sink.split31.i
	stx.w	$a7, $a0, $a6
	ld.w	$a4, $a0, 1368
.LBB7_77:                               # %updateFirstBU.exit
	ld.w	$a1, $a0, 1364
	add.d	$a1, $a1, $a2
	st.w	$a1, $a0, 1364
	addi.d	$a1, $a4, -1
	st.w	$a1, $a0, 1368
	st.w	$a5, $a0, 1328
.LBB7_78:                               # %updateQPNonPicAFF.exit
	addi.w	$a0, $a2, 0
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB7_79:
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(updateFirstP)
	jr	$t8
.LBB7_80:
	ld.w	$a1, $a3, 4
	bnez	$a1, .LBB7_77
	b	.LBB7_76
.LBB7_81:                               # %call.sqrt
	move	$s1, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	fmov.d	$fa1, $fa0
	b	.LBB7_36
.Lfunc_end7:
	.size	updateQPRC3, .Lfunc_end7-updateQPRC3
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_init_GOP
.LCPI8_0:
	.dword	0x4000624dd2f1a9fc              # double 2.048
	.text
	.globl	rc_init_GOP
	.p2align	5
	.type	rc_init_GOP,@function
rc_init_GOP:                            # @rc_init_GOP
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a4, $a3, 0
	ldptr.w	$a3, $a4, 5136
	ori	$a5, $zero, 3
	bne	$a3, $a5, .LBB8_6
# %bb.1:
	ldptr.w	$a3, $a4, 2096
	addi.w	$a7, $a3, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0
	st.w	$zero, $sp, 16
	beqz	$a3, .LBB8_7
# %bb.2:
	ldptr.w	$a5, $a4, 2968
	ori	$a6, $zero, 1
	beq	$a5, $a6, .LBB8_11
# %bb.3:
	ori	$a6, $zero, 2
	beq	$a5, $a6, .LBB8_8
# %bb.4:
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB8_48
# %bb.5:
	st.w	$a3, $sp, 0
	ori	$a5, $zero, 1
	b	.LBB8_12
.LBB8_6:                                # %._crit_edge152
	pcalau12i	$a3, %pc_hi20(generic_RC)
	ld.d	$a3, $a3, %pc_lo12(generic_RC)
	b	.LBB8_33
.LBB8_7:                                # %.preheader
	move	$a5, $zero
	lu12i.w	$a3, 1
	ori	$a6, $a3, 1088
	vstx	$vr0, $a4, $a6
	ori	$a3, $a3, 1072
	vstx	$vr0, $a4, $a3
	stptr.d	$zero, $a4, 5200
	b	.LBB8_12
.LBB8_8:                                # %.preheader129.preheader
	move	$a5, $zero
	blez	$a3, .LBB8_12
# %bb.9:                                # %.lr.ph.preheader
	addi.d	$a3, $sp, 0
	ori	$a6, $zero, 1
	ori	$t0, $zero, 3
	move	$t1, $a7
	.p2align	4, , 16
.LBB8_10:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$t2, $t1, 0
	bstrpick.d	$t1, $t1, 31, 1
	sll.w	$t3, $a6, $a5
	st.w	$t3, $a3, 0
	addi.w	$a5, $a5, 1
	addi.d	$a3, $a3, 4
	bltu	$t0, $t2, .LBB8_10
	b	.LBB8_12
.LBB8_11:
	srai.d	$a5, $a3, 1
	st.w	$a5, $sp, 0
	sub.d	$a3, $a3, $a5
	slli.d	$a5, $a3, 32
	srai.d	$a5, $a5, 63
	andn	$a3, $a3, $a5
	st.w	$a3, $sp, 4
	ori	$a5, $zero, 2
.LBB8_12:                               # %.loopexit
	pcalau12i	$a3, %pc_hi20(generic_RC)
	ld.d	$a3, $a3, %pc_lo12(generic_RC)
	ld.w	$a6, $a4, 1560
	st.w	$a5, $a3, 112
	ori	$t0, $zero, 1
	sltu	$t1, $t0, $a6
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $a6, $t1
	or	$t0, $t1, $t0
	mul.d	$a7, $t0, $a7
	movgr2fr.w	$fa0, $a7
	ldptr.w	$a7, $a4, 5120
	ori	$t0, $zero, 4080
	fldx.d	$fa1, $a4, $t0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fmul.d	$fa0, $fa1, $fa0
	blez	$a5, .LBB8_21
# %bb.13:                               # %.lr.ph135
	lu12i.w	$a6, 1
	ori	$a6, $a6, 1072
	add.d	$a6, $a4, $a6
	addi.d	$a7, $a3, 116
	movgr2fr.w	$fa1, $zero
	addi.d	$t0, $sp, 0
	move	$t1, $a5
	.p2align	4, , 16
.LBB8_14:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t0, 0
	fld.d	$fa2, $a6, 0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	fcvt.s.d	$fa2, $fa2
	fadd.s	$fa1, $fa1, $fa2
	mul.d	$t2, $t2, $a1
	st.w	$t2, $a7, 0
	addi.d	$t0, $t0, 4
	addi.d	$a6, $a6, 8
	addi.d	$t1, $t1, -1
	addi.d	$a7, $a7, 4
	bnez	$t1, .LBB8_14
# %bb.15:                               # %._crit_edge.loopexit
	ld.w	$a6, $a4, 1560
	vldi	$vr2, -1168
	fadd.s	$fa1, $fa1, $fa2
	fcvt.s.d	$fa0, $fa0
	blez	$a6, .LBB8_17
.LBB8_16:
	bstrpick.d	$a7, $a6, 31, 0
	lu12i.w	$t0, 1
	ori	$t0, $t0, 1064
	fldx.d	$fa2, $a4, $t0
	movgr2fr.d	$fa3, $a7
	ffint.s.l	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fcvt.s.d	$fa2, $fa2
	vldi	$vr3, -1040
	fadd.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
.LBB8_17:
	fdiv.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1184
	fadd.s	$fa0, $fa0, $fa1
	vreplvei.w	$vr0, $vr0, 0
	vfrintrm.s	$vr0, $vr0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a7, $fa0
	st.w	$a7, $a3, 84
	movgr2fr.w	$fa0, $a7
	beqz	$a6, .LBB8_22
# %bb.18:
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1064
	fldx.d	$fa1, $a4, $a7
	ffint.d.w	$fa2, $fa0
	vldi	$vr3, -928
	fmadd.d	$fa1, $fa1, $fa2, $fa3
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	st.w	$a7, $a3, 88
	bgtz	$a5, .LBB8_23
.LBB8_19:                               # %._crit_edge140
	ld.w	$a5, $a4, 8
	beqz	$a6, .LBB8_31
.LBB8_20:
	addi.w	$a7, $a5, -1
	div.w	$a6, $a7, $a6
	b	.LBB8_32
.LBB8_21:
	vldi	$vr1, -1168
	fcvt.s.d	$fa0, $fa0
	bgtz	$a6, .LBB8_16
	b	.LBB8_17
.LBB8_22:
	move	$a7, $zero
	st.w	$a7, $a3, 88
	blez	$a5, .LBB8_19
.LBB8_23:                               # %.lr.ph139
	ori	$a6, $zero, 4
	ffint.d.w	$fa0, $fa0
	bgeu	$a5, $a6, .LBB8_25
# %bb.24:
	move	$a6, $zero
	b	.LBB8_28
.LBB8_25:                               # %vector.ph
	bstrpick.d	$a6, $a5, 30, 2
	slli.d	$a6, $a6, 2
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a7, $a3, 100
	lu12i.w	$t0, 1
	ori	$t0, $t0, 1088
	add.d	$t0, $a4, $t0
	lu52i.d	$t1, $zero, 1022
	vreplgr2vr.d	$vr2, $t1
	move	$t1, $a6
	.p2align	4, , 16
.LBB8_26:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t0, -16
	vld	$vr4, $t0, 0
	vfmadd.d	$vr3, $vr3, $vr1, $vr2
	vfmadd.d	$vr4, $vr4, $vr1, $vr2
	vreplvei.d	$vr5, $vr3, 1
	vreplvei.d	$vr5, $vr5, 0
	vfrintrm.d	$vr5, $vr5
	vreplvei.d	$vr3, $vr3, 0
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	vreplvei.d	$vr6, $vr4, 1
	vreplvei.d	$vr6, $vr6, 0
	vfrintrm.d	$vr6, $vr6
	vreplvei.d	$vr4, $vr4, 0
	vreplvei.d	$vr4, $vr4, 0
	vfrintrm.d	$vr4, $vr4
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t2, $fa3
	vinsgr2vr.w	$vr3, $t2, 0
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t2, $fa5
	vinsgr2vr.w	$vr3, $t2, 1
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$t2, $fa4
	vinsgr2vr.w	$vr4, $t2, 0
	ftintrz.w.d	$fa5, $fa6
	movfr2gr.s	$t2, $fa5
	vinsgr2vr.w	$vr4, $t2, 1
	vpackev.d	$vr3, $vr4, $vr3
	vst	$vr3, $a7, -8
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB8_26
# %bb.27:                               # %middle.block
	beq	$a6, $a5, .LBB8_30
.LBB8_28:                               # %scalar.ph.preheader
	alsl.d	$a7, $a6, $a4, 3
	lu12i.w	$t0, 1
	ori	$t0, $t0, 1072
	add.d	$a7, $a7, $t0
	alsl.d	$t0, $a6, $a3, 2
	addi.d	$t0, $t0, 92
	sub.d	$a5, $a5, $a6
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB8_29:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $a7, 0
	fmadd.d	$fa2, $fa2, $fa0, $fa1
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a6, $fa2
	st.w	$a6, $t0, 0
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, -1
	addi.d	$t0, $t0, 4
	bnez	$a5, .LBB8_29
.LBB8_30:                               # %._crit_edge140.loopexit
	ld.w	$a6, $a4, 1560
	ld.w	$a5, $a4, 8
	bnez	$a6, .LBB8_20
.LBB8_31:
	move	$a6, $zero
.LBB8_32:                               # %._crit_edge140._crit_edge
	st.w	$a6, $a3, 140
	nor	$a6, $a6, $zero
	add.d	$a5, $a5, $a6
	st.w	$a5, $a3, 136
.LBB8_33:
	ld.w	$a6, $a3, 80
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 4
	movgr2fr.w	$fa2, $a6
	ffint.s.w	$fa3, $fa2
	fdiv.s	$fa4, $fa0, $fa1
	fadd.s	$fa3, $fa4, $fa3
	ftintrz.w.s	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
	pcalau12i	$a7, %pc_hi20(.LCPI8_0)
	fld.d	$fa3, $a7, %pc_lo12(.LCPI8_0)
	st.w	$a5, $a0, 1564
	ffint.d.w	$fa2, $fa2
	fcvt.d.s	$fa4, $fa0
	fmadd.d	$fa2, $fa4, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a5, $fa2
	st.w	$a5, $a0, 1556
	add.d	$a5, $a1, $a2
	addi.d	$a5, $a5, 1
	movgr2fr.w	$fa2, $a5
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a7, $fa0
	add.d	$a7, $a6, $a7
	ldptr.w	$a6, $a4, 4704
	st.w	$a7, $a3, 80
	st.w	$a1, $a0, 1544
	st.w	$a2, $a0, 1548
	st.w	$zero, $a0, 1504
	beqz	$a6, .LBB8_38
.LBB8_34:
	ld.w	$a2, $a3, 40
	ori	$a7, $zero, 1
	st.w	$a7, $a3, 12
	st.w	$a1, $a0, 1592
	addi.d	$a1, $a2, 1
	st.w	$a1, $a3, 40
	beqz	$a2, .LBB8_43
# %bb.35:
	ori	$a1, $zero, 2
	beq	$a6, $a1, .LBB8_41
# %bb.36:                               # %.thread127
	ldptr.w	$a1, $a4, 4708
	bnez	$a1, .LBB8_41
# %bb.37:                               # %.thread127._crit_edge
	ld.w	$a2, $a3, 44
	ld.w	$a1, $a0, 1448
	b	.LBB8_46
.LBB8_38:
	ldptr.w	$a2, $a4, 4708
	beqz	$a2, .LBB8_34
# %bb.39:
	ldptr.w	$a2, $a4, 5128
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$a7, $a7, %got_pc_lo12(img)
	ld.d	$a7, $a7, 0
	ldptr.w	$a7, $a7, 15352
	bne	$a2, $a7, .LBB8_34
# %bb.40:                               # %.thread
	ld.w	$a2, $a3, 40
	st.w	$zero, $a3, 12
	st.w	$a1, $a0, 1592
	addi.d	$a1, $a2, 1
	st.w	$a1, $a3, 40
	beqz	$a2, .LBB8_43
.LBB8_41:                               # %.thread127.thread
	ld.w	$a1, $a3, 8
	ld.w	$a2, $a3, 44
	ori	$a4, $zero, 1
	bne	$a1, $a4, .LBB8_44
# %bb.42:
	ld.w	$a1, $a0, 1460
	b	.LBB8_45
.LBB8_43:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1028
	ldx.w	$a1, $a4, $a1
	st.w	$a1, $a0, 72
	addi.d	$a2, $a1, -1
	st.w	$a2, $a0, 1356
	st.w	$a1, $a0, 1452
	st.w	$a1, $a0, 1384
	st.w	$a1, $a0, 1344
	st.w	$a1, $a0, 1456
	st.w	$a1, $a0, 1460
	st.w	$a1, $a0, 76
	b	.LBB8_47
.LBB8_44:
	ld.w	$a1, $a0, 1456
.LBB8_45:
	add.w	$a2, $a2, $a1
	st.w	$a2, $a3, 44
	st.w	$a1, $a0, 1448
.LBB8_46:
	ld.w	$a4, $a3, 48
	addi.w	$a5, $a5, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	movgr2fr.w	$fa0, $a5
	ffint.d.w	$fa0, $fa0
	vldi	$vr2, -978
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	slti	$a5, $a4, 2
	maskeqz	$a4, $a4, $a5
	ori	$a6, $zero, 2
	masknez	$a5, $a6, $a5
	or	$a4, $a4, $a5
	sub.w	$a2, $a2, $a4
	ld.w	$a4, $a0, 1452
	addi.w	$a1, $a1, -2
	slt	$a1, $a1, $a2
	sub.w	$a1, $a2, $a1
	addi.w	$a2, $a4, -2
	addi.w	$a4, $a4, 2
	slt	$a5, $a2, $a1
	maskeqz	$a1, $a1, $a5
	masknez	$a2, $a2, $a5
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a4
	maskeqz	$a1, $a1, $a2
	ld.w	$a5, $a0, 68
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	ld.w	$a2, $a0, 64
	slt	$a4, $a5, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $a5, $a4
	or	$a1, $a1, $a4
	slt	$a4, $a1, $a2
	maskeqz	$a1, $a1, $a4
	masknez	$a2, $a2, $a4
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 76
	st.w	$a1, $a0, 72
	ld.w	$a2, $a0, 1356
	st.w	$a1, $a0, 1328
	st.w	$a1, $a0, 1384
	st.w	$a1, $a0, 1452
	st.w	$a2, $a0, 1352
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 1356
.LBB8_47:
	st.d	$zero, $a3, 44
	st.w	$zero, $a0, 1360
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB8_48:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 72
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	rc_init_GOP, .Lfunc_end8-rc_init_GOP
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_init_pict
.LCPI9_0:
	.dword	0x3fe3333333333333              # double 0.59999999999999998
	.text
	.globl	rc_init_pict
	.p2align	5
	.type	rc_init_pict,@function
rc_init_pict:                           # @rc_init_pict
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$s1, $a4, %got_pc_lo12(input)
	ld.d	$a4, $s1, 0
	ldptr.w	$a6, $a4, 4708
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$s0, $a5, %got_pc_lo12(img)
	ld.d	$a5, $s0, 0
	beqz	$a6, .LBB9_2
# %bb.1:
	ldptr.w	$a7, $a5, 15352
	ldptr.w	$t0, $a5, 15404
	div.wu	$a7, $a7, $t0
	st.w	$a7, $a0, 1388
.LBB9_2:
	ldptr.w	$a7, $a4, 5132
	stptr.w	$zero, $a5, 15388
	ori	$t0, $zero, 1
	pcalau12i	$fp, %pc_hi20(generic_RC)
	bne	$a7, $t0, .LBB9_6
# %bb.3:
	ld.d	$a7, $fp, %pc_lo12(generic_RC)
	ld.w	$a7, $a7, 36
	ori	$t0, $zero, 59
	beq	$a7, $t0, .LBB9_23
# %bb.4:
	ori	$t0, $zero, 58
	bne	$a7, $t0, .LBB9_6
# %bb.5:
	fld.s	$fa1, $a0, 0
	vldi	$vr2, -1160
	fmul.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a0, 0
.LBB9_6:
	or	$a7, $a2, $a1
	beqz	$a7, .LBB9_24
.LBB9_7:
	beqz	$a3, .LBB9_24
# %bb.8:
	ld.w	$a3, $a5, 20
	beqz	$a3, .LBB9_10
# %bb.9:
	ldptr.w	$a7, $a4, 5136
	ori	$t0, $zero, 1
	bne	$a7, $t0, .LBB9_11
.LBB9_10:
	ld.w	$a7, $a5, 0
	pcalau12i	$t0, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$t0, $t0, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$t0, $t0, 0
	bne	$a7, $t0, .LBB9_17
.LBB9_11:
	ori	$a5, $zero, 1
	bne	$a3, $a5, .LBB9_54
# %bb.12:
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a0, 0
	ld.d	$a3, $fp, %pc_lo12(generic_RC)
	fcmp.ceq.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB9_14
# %bb.13:
	ld.w	$a5, $a0, 1544
	ld.w	$a6, $a0, 1548
	fsub.s	$fa1, $fa2, $fa1
	add.d	$a5, $a6, $a5
	fld.s	$fa2, $a0, 4
	movgr2fr.w	$fa3, $a5
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fdiv.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	vldi	$vr2, -928
	fadd.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	ld.w	$a5, $a3, 80
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	add.d	$a5, $a5, $a6
	st.w	$a5, $a3, 80
.LBB9_14:
	ld.w	$a6, $a3, 36
	ld.w	$a3, $a3, 32
	ori	$a5, $zero, 1
	bne	$a6, $a5, .LBB9_30
# %bb.15:
	bne	$a3, $a5, .LBB9_30
# %bb.16:
	vld	$vr1, $a0, 1568
	vst	$vr1, $a0, 48
	b	.LBB9_54
.LBB9_17:
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a0, 0
	fcmp.ceq.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB9_19
# %bb.18:
	ld.w	$a3, $a0, 1544
	ld.w	$a7, $a0, 1548
	fsub.s	$fa1, $fa2, $fa1
	add.d	$a3, $a7, $a3
	fld.s	$fa2, $a0, 4
	movgr2fr.w	$fa3, $a3
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fdiv.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	ld.d	$a3, $fp, %pc_lo12(generic_RC)
	vldi	$vr2, -928
	fadd.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	ld.w	$a7, $a3, 80
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t0, $fa1
	add.d	$a7, $a7, $t0
	st.w	$a7, $a3, 80
.LBB9_19:
	ldptr.w	$a7, $a5, 15404
	ldptr.w	$a5, $a5, 15352
	ld.d	$a3, $fp, %pc_lo12(generic_RC)
	bne	$a7, $a5, .LBB9_25
# %bb.20:
	ld.w	$a4, $a3, 48
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB9_37
.LBB9_21:
	ld.d	$a4, $a3, 72
	fld.d	$fa1, $a0, 32
	ld.w	$a5, $a0, 1592
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fsub.d	$fa1, $fa2, $fa1
	addi.d	$a4, $a5, -1
	movgr2fr.w	$fa3, $a4
.LBB9_22:
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $a0, 1584
	b	.LBB9_42
.LBB9_23:
	fld.s	$fa1, $a0, 0
	fst.s	$fa1, $a0, 8
	or	$a7, $a2, $a1
	bnez	$a7, .LBB9_7
.LBB9_24:
	bnez	$a7, .LBB9_102
	b	.LBB9_104
.LBB9_25:
	ld.w	$a5, $a3, 36
	blez	$a5, .LBB9_35
# %bb.26:
	bnez	$a6, .LBB9_28
# %bb.27:
	lu12i.w	$a5, 1
	ori	$a5, $a5, 608
	ldx.w	$a4, $a4, $a5
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB9_33
.LBB9_28:
	ld.w	$a3, $a3, 4
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB9_33
# %bb.29:
	fmov.s	$fs0, $fa0
	move	$s2, $a1
	move	$s3, $a2
	ori	$a1, $zero, 1488
	ori	$a2, $zero, 1496
	b	.LBB9_34
.LBB9_30:                               # %._crit_edge
	ori	$a5, $zero, 2
	blt	$a3, $a5, .LBB9_54
# %bb.31:
	ori	$a5, $zero, 7
	bltu	$a5, $a3, .LBB9_52
# %bb.32:
	fld.d	$fa1, $a0, 56
	fld.d	$fa2, $a0, 1576
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa3, $a3
	ffint.d.l	$fa3, $fa3
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	b	.LBB9_53
.LBB9_33:
	fmov.s	$fs0, $fa0
	move	$s2, $a1
	move	$s3, $a2
	ori	$a1, $zero, 1480
	ori	$a2, $zero, 1472
.LBB9_34:                               # %.sink.split
	ldx.d	$a3, $a0, $a2
	ld.w	$a2, $a0, 1388
	ldx.d	$a1, $a0, $a1
	slli.d	$a2, $a2, 3
	move	$s4, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a2, $s3
	move	$a1, $s2
	fmov.s	$fa0, $fs0
.LBB9_35:
	ld.d	$a3, $fp, %pc_lo12(generic_RC)
	ld.w	$a4, $a3, 40
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB9_38
# %bb.36:
	ld.w	$a4, $a3, 48
	beq	$a4, $a5, .LBB9_21
.LBB9_37:
	ori	$a5, $zero, 2
	bge	$a4, $a5, .LBB9_41
	b	.LBB9_43
.LBB9_38:
	ori	$a5, $zero, 2
	blt	$a4, $a5, .LBB9_43
# %bb.39:
	ld.w	$a4, $a3, 48
	beqz	$a4, .LBB9_74
# %bb.40:
	blez	$a4, .LBB9_43
.LBB9_41:
	fld.d	$fa1, $a0, 1584
	fld.d	$fa2, $a0, 40
.LBB9_42:
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a0, 40
.LBB9_43:
	ld.w	$a3, $a3, 36
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB9_45
# %bb.44:                               # %.thread
	fld.d	$fa1, $a0, 1568
	b	.LBB9_49
.LBB9_45:
	addi.w	$a4, $a3, -2
	ori	$a5, $zero, 5
	bltu	$a5, $a4, .LBB9_47
# %bb.46:
	fld.d	$fa1, $a0, 48
	fld.d	$fa2, $a0, 1568
	bstrpick.d	$a4, $a3, 31, 0
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa3, $a3
	ffint.d.l	$fa3, $fa3
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	b	.LBB9_49
.LBB9_47:
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB9_50
# %bb.48:
	fld.d	$fa1, $a0, 1568
	fld.d	$fa2, $a0, 48
	vldi	$vr3, -996
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	vldi	$vr2, -960
	fmul.d	$fa1, $fa1, $fa2
.LBB9_49:
	fst.d	$fa1, $a0, 48
.LBB9_50:
	ld.d	$a4, $s1, 0
	ldptr.w	$a3, $a4, 2096
	blez	$a3, .LBB9_54
# %bb.51:
	fld.d	$fa1, $a0, 48
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa2, $a3
	fld.s	$fa3, $a0, 0
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	fld.s	$fa4, $a0, 4
	fcvt.d.s	$fa5, $fa3
	fmul.d	$fa2, $fa2, $fa5
	fld.d	$fa5, $a0, 56
	fcvt.d.s	$fa6, $fa4
	movgr2fr.d	$fa7, $a5
	ffint.d.l	$fa7, $fa7
	fmadd.d	$fa1, $fa5, $fa7, $fa1
	fmul.d	$fa1, $fa1, $fa6
	fdiv.d	$fa1, $fa2, $fa1
	fld.d	$fa2, $a0, 40
	fdiv.s	$fa3, $fa3, $fa4
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a0, 40
	b	.LBB9_54
.LBB9_52:
	fld.d	$fa1, $a0, 1576
	fld.d	$fa2, $a0, 56
	vldi	$vr3, -996
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	vldi	$vr2, -960
	fmul.d	$fa1, $fa1, $fa2
.LBB9_53:
	fst.d	$fa1, $a0, 56
.LBB9_54:
	ld.d	$a5, $s0, 0
	ld.w	$a3, $a5, 20
	beqz	$a3, .LBB9_56
# %bb.55:
	ldptr.w	$a6, $a4, 5136
	ori	$a6, $a6, 2
	ori	$a7, $zero, 3
	bne	$a6, $a7, .LBB9_102
.LBB9_56:
	ld.w	$a6, $a5, 0
	pcalau12i	$a7, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a7, $a7, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a7, $a7, 0
	beq	$a6, $a7, .LBB9_102
# %bb.57:
	ldptr.w	$a6, $a5, 15404
	ldptr.w	$a7, $a5, 15352
	bne	$a6, $a7, .LBB9_59
# %bb.58:                               # %._crit_edge193
	ld.d	$a6, $fp, %pc_lo12(generic_RC)
	b	.LBB9_60
.LBB9_59:
	ldptr.w	$a7, $a4, 5136
	ld.d	$a6, $fp, %pc_lo12(generic_RC)
	ori	$t0, $zero, 3
	bne	$a7, $t0, .LBB9_67
.LBB9_60:
	ld.w	$t1, $a6, 36
	lu12i.w	$a7, 1
	ori	$t0, $a7, 1040
	ldx.w	$t0, $a4, $t0
	blez	$t1, .LBB9_66
# %bb.61:
	ori	$t1, $zero, 3
	bne	$t0, $t1, .LBB9_69
# %bb.62:
	beqz	$a3, .LBB9_72
# %bb.63:
	ori	$t0, $zero, 1
	bne	$a3, $t0, .LBB9_73
# %bb.64:
	ldptr.w	$t0, $a4, 2968
	beqz	$t0, .LBB9_75
# %bb.65:
	ldptr.w	$t0, $a5, 14364
	pcalau12i	$t1, %pc_hi20(gop_structure)
	ld.d	$t1, $t1, %pc_lo12(gop_structure)
	slli.d	$t2, $t0, 4
	alsl.d	$t0, $t0, $t2, 3
	add.d	$t0, $t1, $t0
	ld.w	$t0, $t0, -8
	ld.w	$t1, $a6, 112
	nor	$t0, $t0, $zero
	add.w	$t0, $t1, $t0
	b	.LBB9_76
.LBB9_66:                               # %..thread185_crit_edge
	addi.d	$a6, $t0, -3
	sltu	$t0, $zero, $a6
	b	.LBB9_94
.LBB9_67:
	ld.w	$a7, $a6, 40
	ori	$t0, $zero, 1
	bne	$a7, $t0, .LBB9_70
# %bb.68:
	ld.w	$a7, $a6, 36
	bgtz	$a7, .LBB9_71
	b	.LBB9_94
.LBB9_69:
	ld.w	$a7, $a6, 80
	fld.d	$fa1, $a0, 1568
	movgr2fr.w	$fa2, $a7
	ld.w	$a7, $a0, 1544
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	ld.w	$t0, $a0, 1548
	movgr2fr.w	$fa3, $a7
	fld.d	$fa4, $a0, 1576
	ffint.d.w	$fa3, $fa3
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	fmul.d	$fa4, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa1, $fa4
	fdiv.d	$fa1, $fa2, $fa1
	vldi	$vr2, -928
	fadd.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a0, 4
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	fdiv.s	$fa1, $fa3, $fa4
	ld.d	$a6, $a6, 72
	fcvt.d.s	$fa1, $fa1
	fld.d	$fa3, $a0, 40
	fld.d	$fa4, $a0, 16
	movgr2fr.d	$fa5, $a6
	ffint.d.l	$fa5, $fa5
	fsub.d	$fa3, $fa5, $fa3
	fneg.d	$fa4, $fa4
	fmadd.d	$fa1, $fa4, $fa3, $fa1
	fadd.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	srai.d	$t0, $a6, 63
	andn	$a6, $a6, $t0
	fld.d	$fa1, $a0, 24
	sub.d	$a7, $a7, $a6
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	movgr2fr.w	$fa4, $a6
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa1, $fa1, $fa3, $fa4
	fadd.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	st.w	$a6, $a0, 1536
	ori	$t0, $zero, 1
	b	.LBB9_94
.LBB9_70:
	ori	$t1, $zero, 2
	blt	$a7, $t1, .LBB9_94
.LBB9_71:
	ld.w	$a7, $a6, 80
	fld.d	$fa1, $a0, 1568
	movgr2fr.w	$fa2, $a7
	ld.w	$a7, $a0, 1544
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	ld.w	$t1, $a0, 1548
	movgr2fr.w	$fa3, $a7
	fld.d	$fa4, $a0, 1576
	ffint.d.w	$fa3, $fa3
	movgr2fr.w	$fa5, $t1
	ffint.d.w	$fa5, $fa5
	fmul.d	$fa4, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa1, $fa4
	fdiv.d	$fa1, $fa2, $fa1
	vldi	$vr2, -928
	fadd.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a0, 4
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	fdiv.s	$fa1, $fa3, $fa4
	ld.d	$a6, $a6, 72
	fcvt.d.s	$fa1, $fa1
	fld.d	$fa3, $a0, 40
	fld.d	$fa4, $a0, 16
	movgr2fr.d	$fa5, $a6
	ffint.d.l	$fa5, $fa5
	fsub.d	$fa3, $fa5, $fa3
	fneg.d	$fa4, $fa4
	fmadd.d	$fa1, $fa4, $fa3, $fa1
	fadd.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	srai.d	$t1, $a6, 63
	andn	$a6, $a6, $t1
	fld.d	$fa1, $a0, 24
	sub.d	$a7, $a7, $a6
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	movgr2fr.w	$fa4, $a6
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa1, $fa1, $fa3, $fa4
	b	.LBB9_92
.LBB9_72:
	addi.d	$t0, $a6, 84
	b	.LBB9_77
.LBB9_73:
	addi.d	$t0, $a6, 88
	b	.LBB9_77
.LBB9_74:
	ld.d	$a4, $a3, 72
	fld.d	$fa1, $a0, 32
	ld.w	$a5, $a0, 1592
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fsub.d	$fa1, $fa2, $fa1
	movgr2fr.w	$fa3, $a5
	b	.LBB9_22
.LBB9_75:
	move	$t0, $zero
.LBB9_76:                               # %.thread184
	alsl.d	$t0, $t0, $a6, 2
	addi.d	$t0, $t0, 92
.LBB9_77:
	ld.w	$t1, $a6, 140
	ld.w	$t2, $a6, 88
	ld.w	$t3, $a6, 136
	ld.w	$t4, $a6, 84
	ldptr.w	$t5, $a4, 2968
	ld.w	$t0, $t0, 0
	mul.d	$t1, $t2, $t1
	mul.d	$t2, $t4, $t3
	add.w	$t1, $t2, $t1
	beqz	$t5, .LBB9_81
# %bb.78:                               # %.preheader
	ld.w	$t2, $a6, 112
	blez	$t2, .LBB9_87
# %bb.79:                               # %.lr.ph
	ori	$t3, $zero, 8
	bgeu	$t2, $t3, .LBB9_82
# %bb.80:
	move	$t3, $zero
	b	.LBB9_85
.LBB9_81:
	ld.w	$t2, $a6, 116
	ld.w	$t3, $a6, 92
	mul.d	$t2, $t3, $t2
	add.w	$t1, $t2, $t1
	b	.LBB9_87
.LBB9_82:                               # %vector.ph
	bstrpick.d	$t3, $t2, 30, 3
	vrepli.b	$vr1, 0
	slli.d	$t3, $t3, 3
	vori.b	$vr2, $vr1, 0
	vinsgr2vr.w	$vr2, $t1, 0
	addi.d	$t1, $a6, 132
	move	$t4, $t3
	.p2align	4, , 16
.LBB9_83:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t1, -16
	vld	$vr4, $t1, 0
	vld	$vr5, $t1, -40
	vld	$vr6, $t1, -24
	vmadd.w	$vr2, $vr5, $vr3
	vmadd.w	$vr1, $vr6, $vr4
	addi.d	$t4, $t4, -8
	addi.d	$t1, $t1, 32
	bnez	$t4, .LBB9_83
# %bb.84:                               # %middle.block
	vadd.w	$vr1, $vr1, $vr2
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$t1, $vr1, 0
	beq	$t3, $t2, .LBB9_87
.LBB9_85:                               # %scalar.ph.preheader
	alsl.d	$t4, $t3, $a6, 2
	addi.d	$t4, $t4, 116
	sub.d	$t2, $t2, $t3
	.p2align	4, , 16
.LBB9_86:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t4, 0
	ld.w	$t5, $t4, -24
	mul.d	$t3, $t5, $t3
	add.w	$t1, $t3, $t1
	addi.d	$t2, $t2, -1
	addi.d	$t4, $t4, 4
	bnez	$t2, .LBB9_86
.LBB9_87:                               # %.loopexit
	ld.w	$a6, $a6, 80
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	movgr2fr.w	$fa2, $t1
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1184
	fadd.s	$fa1, $fa1, $fa2
	vreplvei.w	$vr1, $vr1, 0
	vfrintrm.s	$vr1, $vr1
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	ori	$t0, $zero, 2
	st.w	$a6, $a0, 1536
	beq	$a3, $t0, .LBB9_90
# %bb.88:                               # %.loopexit
	ori	$t0, $zero, 1
	bne	$a3, $t0, .LBB9_93
# %bb.89:
	ori	$a7, $a7, 1056
	fldx.d	$fa1, $a4, $a7
	move	$t0, $zero
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	b	.LBB9_91
.LBB9_90:
	move	$t0, $zero
	ori	$a7, $a7, 1048
	fldx.d	$fa1, $a4, $a7
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	vldi	$vr3, -1008
	fmul.d	$fa1, $fa1, $fa3
.LBB9_91:                               # %.thread185
	fdiv.d	$fa1, $fa2, $fa1
	vldi	$vr2, -928
.LBB9_92:                               # %.thread185
	fadd.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	st.w	$a6, $a0, 1536
	b	.LBB9_94
.LBB9_93:
	move	$t0, $zero
.LBB9_94:                               # %.thread185
	ld.w	$a6, $a0, 1536
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	ldptr.w	$a6, $a4, 2096
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a7, $fa0
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -912
	movgr2fr.d	$fa2, $zero
	fneg.d	$fa2, $fa2
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	st.w	$a6, $a0, 1536
	beqz	$a3, .LBB9_97
# %bb.95:                               # %.thread185
	bnez	$t0, .LBB9_97
# %bb.96:
	bnez	$a2, .LBB9_101
	b	.LBB9_98
.LBB9_97:
	ld.w	$a3, $a0, 1564
	ld.w	$a7, $a0, 1560
	slt	$t0, $a3, $a6
	masknez	$a3, $a3, $t0
	maskeqz	$a6, $a6, $t0
	or	$a3, $a6, $a3
	slt	$a6, $a3, $a7
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $a7, $a6
	or	$a6, $a3, $a6
	st.w	$a6, $a0, 1536
	bnez	$a2, .LBB9_101
.LBB9_98:
	beqz	$a1, .LBB9_102
# %bb.99:
	ldptr.w	$a1, $a4, 4704
	ori	$a3, $zero, 2
	beq	$a1, $a3, .LBB9_101
# %bb.100:
	ldptr.w	$a1, $a4, 4708
	beqz	$a1, .LBB9_102
.LBB9_101:
	st.w	$a6, $a0, 1540
.LBB9_102:                              # %.thread187
	ld.d	$a1, $fp, %pc_lo12(generic_RC)
	st.d	$zero, $a1, 16
	ldptr.w	$a3, $a5, 15404
	ldptr.w	$a6, $a5, 15352
	bgeu	$a3, $a6, .LBB9_104
# %bb.103:                              # %.sink.split223
	st.w	$zero, $a0, 1364
	st.d	$zero, $a1, 24
	ld.w	$a3, $a1, 4
	ld.w	$a6, $a0, 1388
	st.d	$zero, $a1, 56
	sltu	$a1, $zero, $a3
	sra.w	$a1, $a6, $a1
	st.w	$a1, $a0, 1368
.LBB9_104:
	ld.w	$a1, $a5, 20
	beqz	$a1, .LBB9_106
# %bb.105:
	ldptr.w	$a1, $a4, 5136
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB9_113
.LBB9_106:
	ldptr.w	$a1, $a5, 15404
	ldptr.w	$a3, $a5, 15352
	bgeu	$a1, $a3, .LBB9_113
# %bb.107:
	ld.d	$a1, $fp, %pc_lo12(generic_RC)
	ld.w	$a3, $a1, 4
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB9_113
# %bb.108:
	ld.w	$a3, $a5, 0
	pcalau12i	$a4, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a4, $a4, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a4, $a4, 0
	beq	$a3, $a4, .LBB9_113
# %bb.109:
	beqz	$a2, .LBB9_111
# %bb.110:
	ld.w	$a1, $a0, 1540
	pcalau12i	$a2, %pc_hi20(.LCPI9_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI9_0)
	st.w	$zero, $a0, 1552
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ori	$a2, $zero, 1536
	b	.LBB9_112
.LBB9_111:
	ld.w	$a2, $a0, 1540
	ld.w	$a3, $a0, 1552
	sub.d	$a2, $a2, $a3
	st.w	$a2, $a0, 1536
	st.d	$zero, $a1, 24
	ld.w	$a2, $a0, 1388
	st.d	$zero, $a1, 56
	srai.d	$a1, $a2, 1
	ori	$a2, $zero, 1368
.LBB9_112:                              # %.sink.split226
	stx.w	$a1, $a0, $a2
.LBB9_113:
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end9:
	.size	rc_init_pict, .Lfunc_end9-rc_init_pict
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function rc_update_pict
.LCPI10_0:
	.word	0x3f666666                      # float 0.899999976
	.text
	.globl	rc_update_pict
	.p2align	5
	.type	rc_update_pict,@function
rc_update_pict:                         # @rc_update_pict
# %bb.0:
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 4
	fdiv.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1184
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	fadd.s	$fa0, $fa0, $fa1
	vreplvei.w	$vr0, $vr0, 0
	vfrintrm.s	$vr0, $vr0
	ld.w	$a3, $a2, 80
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	sub.d	$a4, $a1, $a4
	sub.d	$a1, $a3, $a1
	ld.d	$a3, $a2, 72
	addi.w	$a5, $a4, 0
	st.w	$a1, $a2, 80
	ld.w	$a1, $a0, 1564
	add.d	$a3, $a3, $a5
	ld.w	$a5, $a0, 1556
	st.d	$a3, $a2, 72
	sub.d	$a1, $a1, $a4
	st.w	$a1, $a0, 1564
	sub.d	$a1, $a5, $a4
	pcalau12i	$a2, %pc_hi20(.LCPI10_0)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI10_0)
	st.w	$a1, $a0, 1556
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa1, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $a0, 1560
	ret
.Lfunc_end10:
	.size	rc_update_pict, .Lfunc_end10-rc_update_pict
                                        # -- End function
	.globl	updateComplexity                # -- Begin function updateComplexity
	.p2align	5
	.type	updateComplexity,@function
updateComplexity:                       # @updateComplexity
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ldptr.w	$a4, $a3, 15404
	ldptr.w	$a5, $a3, 15352
	bne	$a4, $a5, .LBB11_2
.LBB11_1:
	ld.w	$a0, $a0, 1344
	mul.d	$a0, $a0, $a2
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	b	.LBB11_9
.LBB11_2:
	beqz	$a1, .LBB11_6
# %bb.3:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a3, $a1, 12
	ld.w	$a1, $a1, 4
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, -1
	sltui	$a4, $a4, 1
	and	$a3, $a3, $a4
	bnez	$a3, .LBB11_8
# %bb.4:
	beqz	$a1, .LBB11_8
# %bb.5:
	move	$a0, $zero
	ret
.LBB11_6:
	ld.w	$a1, $a3, 20
	ori	$a3, $zero, 1
	beq	$a1, $a3, .LBB11_1
# %bb.7:
	move	$a0, $zero
	ret
.LBB11_8:
	ld.w	$a1, $a0, 1364
	ld.w	$a0, $a0, 1388
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -928
	fmadd.d	$fa0, $fa1, $fa0, $fa2
.LBB11_9:
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ret
.Lfunc_end11:
	.size	updateComplexity, .Lfunc_end11-updateComplexity
                                        # -- End function
	.globl	updatePparams                   # -- Begin function updatePparams
	.p2align	5
	.type	updatePparams,@function
updatePparams:                          # @updatePparams
# %bb.0:
	ld.w	$a2, $a0, 1544
	pcalau12i	$a3, %pc_hi20(generic_RC)
	ld.d	$a3, $a3, %pc_lo12(generic_RC)
	st.w	$a1, $a0, 1528
	addi.d	$a2, $a2, -1
	st.w	$a2, $a0, 1544
	ld.w	$a2, $a3, 16
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	ld.w	$a1, $a3, 36
	st.w	$a2, $a0, 1332
	ld.w	$a2, $a3, 48
	fst.d	$fa0, $a0, 1568
	addi.d	$a0, $a1, 1
	st.w	$a0, $a3, 36
	addi.d	$a0, $a2, 1
	st.w	$a0, $a3, 48
	ret
.Lfunc_end12:
	.size	updatePparams, .Lfunc_end12-updatePparams
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function updateBparams
.LCPI13_0:
	.word	0x3fae8a72                      # float 1.36360002
	.text
	.globl	updateBparams
	.p2align	5
	.type	updateBparams,@function
updateBparams:                          # @updateBparams
# %bb.0:
	ld.w	$a2, $a0, 1548
	st.w	$a1, $a0, 1532
	addi.d	$a2, $a2, -1
	st.w	$a2, $a0, 1548
	movgr2fr.w	$fa0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI13_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI13_0)
	ld.w	$a1, $a0, 1360
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	ffint.s.w	$fa0, $fa0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 1360
	ld.w	$a1, $a2, 32
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	fst.d	$fa0, $a0, 1576
	addi.d	$a0, $a1, 1
	st.w	$a0, $a2, 32
	ret
.Lfunc_end13:
	.size	updateBparams, .Lfunc_end13-updateBparams
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function rc_update_pict_frame
.LCPI14_0:
	.word	0x3fae8a72                      # float 1.36360002
	.text
	.globl	rc_update_pict_frame
	.p2align	5
	.type	rc_update_pict_frame,@function
rc_update_pict_frame:                   # @rc_update_pict_frame
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$s1, $a0, 0
	ldptr.w	$a0, $s1, 5136
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$s0, $a1, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB14_7
# %bb.1:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB14_10
# %bb.2:
	ld.w	$a0, $s0, 20
	beqz	$a0, .LBB14_19
# %bb.3:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB14_17
# %bb.4:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB14_26
# %bb.5:
	ld.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a1, $a1, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB14_26
# %bb.6:
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	ld.w	$a1, $a0, 140
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 140
	b	.LBB14_26
.LBB14_7:
	ld.w	$s0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a0, $a0, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$s1, $a0, 0
	sub.w	$a1, $s0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(updateComplexity)
	jirl	$ra, $ra, 0
	beq	$s0, $s1, .LBB14_26
# %bb.8:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 12
	beqz	$a2, .LBB14_15
# %bb.9:
	ld.w	$a2, $a1, 4
	bnez	$a2, .LBB14_22
	b	.LBB14_15
.LBB14_10:
	ld.w	$a0, $s0, 20
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB14_16
# %bb.11:
	bnez	$a0, .LBB14_26
# %bb.12:
	ld.w	$s0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a0, $a0, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$s1, $a0, 0
	xor	$a0, $s0, $s1
	sltu	$a1, $zero, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(updateComplexity)
	jirl	$ra, $ra, 0
	beq	$s0, $s1, .LBB14_26
# %bb.13:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 12
	beqz	$a2, .LBB14_15
# %bb.14:
	ld.w	$a2, $a1, 4
	bnez	$a2, .LBB14_22
.LBB14_15:
	ld.w	$a2, $fp, 1544
	st.w	$a0, $fp, 1528
	addi.d	$a2, $a2, -1
	st.w	$a2, $fp, 1544
	ld.w	$a2, $a1, 16
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $a1, 36
	st.w	$a2, $fp, 1332
	ld.w	$a2, $a1, 48
	fst.d	$fa0, $fp, 1568
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 36
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, 48
	b	.LBB14_26
.LBB14_16:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(updateComplexity)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1548
	st.w	$a0, $fp, 1532
	addi.d	$a1, $a1, -1
	st.w	$a1, $fp, 1548
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI14_0)
	ld.w	$a0, $fp, 1360
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ffint.s.w	$fa0, $fa0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 1360
	ld.w	$a0, $a1, 32
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	fst.d	$fa0, $fp, 1576
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 32
	b	.LBB14_26
.LBB14_17:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(updateComplexity)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1548
	st.w	$a0, $fp, 1532
	addi.d	$a1, $a1, -1
	st.w	$a1, $fp, 1548
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI14_0)
	ld.w	$a1, $fp, 1360
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	fdiv.s	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 1360
	ld.w	$a1, $a0, 32
	fcvt.d.s	$fa0, $fa0
	ldptr.w	$a2, $s1, 2968
	fst.d	$fa0, $fp, 1576
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 32
	addi.d	$a1, $a0, 116
	beqz	$a2, .LBB14_23
# %bb.18:
	ldptr.w	$a2, $s0, 14364
	pcalau12i	$a3, %pc_hi20(gop_structure)
	ld.d	$a3, $a3, %pc_lo12(gop_structure)
	slli.d	$a4, $a2, 4
	alsl.d	$a2, $a2, $a4, 3
	add.d	$a2, $a3, $a2
	ld.w	$a2, $a2, -8
	ld.w	$a0, $a0, 112
	nor	$a2, $a2, $zero
	add.w	$a0, $a0, $a2
	b	.LBB14_24
.LBB14_19:
	ld.w	$s0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a0, $a0, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$s1, $a0, 0
	xor	$a0, $s0, $s1
	sltu	$a1, $zero, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(updateComplexity)
	jirl	$ra, $ra, 0
	beq	$s0, $s1, .LBB14_26
# %bb.20:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 12
	beqz	$a2, .LBB14_25
# %bb.21:
	ld.w	$a2, $a1, 4
	beqz	$a2, .LBB14_25
.LBB14_22:
	st.w	$zero, $a1, 12
	b	.LBB14_26
.LBB14_23:
	move	$a0, $zero
.LBB14_24:
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $a1, $a0
	addi.d	$a2, $a2, -1
	stx.w	$a2, $a1, $a0
	b	.LBB14_26
.LBB14_25:
	ld.w	$a2, $fp, 1544
	st.w	$a0, $fp, 1528
	addi.d	$a2, $a2, -1
	st.w	$a2, $fp, 1544
	movgr2fr.w	$fa0, $a0
	ld.w	$a0, $a1, 16
	ffint.d.w	$fa0, $fa0
	ld.w	$a2, $a1, 36
	fst.d	$fa0, $fp, 1568
	st.w	$a0, $fp, 1332
	ld.w	$a0, $a1, 48
	addi.d	$a2, $a2, 1
	ld.w	$a3, $a1, 136
	st.w	$a2, $a1, 36
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 48
	addi.d	$a0, $a3, -1
	st.w	$a0, $a1, 136
.LBB14_26:                              # %.thread19
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	rc_update_pict_frame, .Lfunc_end14-rc_update_pict_frame
                                        # -- End function
	.globl	updateRCModel                   # -- Begin function updateRCModel
	.p2align	5
	.type	updateRCModel,@function
updateRCModel:                          # @updateRCModel
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 20
	beqz	$a1, .LBB15_2
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5136
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB15_3
.LBB15_2:
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$s3, $a2, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a2, $s3, 0
	bne	$a1, $a2, .LBB15_4
.LBB15_3:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB15_4:
	ldptr.w	$a1, $a0, 15404
	ldptr.w	$a0, $a0, 15352
	pcalau12i	$s0, %pc_hi20(generic_RC)
	bne	$a1, $a0, .LBB15_6
# %bb.5:
	pcaddu18i	$ra, %call36(ComputeFrameMAD)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(generic_RC)
	ld.w	$s4, $a0, 36
	fst.d	$fa0, $fp, 1400
	b	.LBB15_18
.LBB15_6:
	ld.d	$a0, $s0, %pc_lo12(generic_RC)
	ld.d	$a2, $a0, 56
	bstrpick.d	$a1, $a1, 31, 0
	srai.d	$a2, $a2, 8
	div.d	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ld.w	$a1, $fp, 1388
	ld.w	$a3, $fp, 1368
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $fp, 1400
	st.d	$zero, $a0, 56
	sub.w	$a2, $a1, $a3
	st.w	$a2, $fp, 1392
	blez	$a2, .LBB15_10
# %bb.7:
	ld.w	$a4, $fp, 1372
	ld.w	$a5, $a0, 24
	addi.d	$a6, $a2, -1
	mul.d	$a4, $a4, $a6
	bstrpick.d	$a6, $a2, 31, 0
	add.d	$a4, $a4, $a5
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	movgr2fr.d	$fa2, $a6
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	vldi	$vr2, -928
	ld.w	$a5, $fp, 1380
	fadd.d	$fa1, $fa1, $fa2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a4, $fa1
	st.w	$a4, $fp, 1372
	beqz	$a5, .LBB15_9
# %bb.8:
	mul.d	$a4, $a2, $a4
	mul.d	$a5, $a5, $a3
	add.d	$a4, $a4, $a5
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	vldi	$vr2, -928
	fadd.d	$fa1, $fa1, $fa2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a4, $fa1
.LBB15_9:                               # %.sink.split
	st.w	$a4, $fp, 1376
.LBB15_10:
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a4, $a4, %got_pc_lo12(input)
	ld.d	$a4, $a4, 0
	ldptr.w	$a5, $a4, 4704
	ori	$a6, $zero, 2
	beq	$a5, $a6, .LBB15_12
# %bb.11:
	ldptr.w	$a4, $a4, 4708
	beqz	$a4, .LBB15_13
.LBB15_12:
	ld.w	$a5, $a0, 4
	ori	$a6, $zero, 1
	ori	$a4, $zero, 1488
	beq	$a5, $a6, .LBB15_14
.LBB15_13:
	ori	$a4, $zero, 1480
.LBB15_14:
	ldx.d	$a5, $fp, $a4
	nor	$a6, $a3, $zero
	ld.w	$a4, $a0, 36
	add.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a5, $a6
	beqz	$a3, .LBB15_16
# %bb.15:
	mul.d	$a1, $a4, $a1
	b	.LBB15_17
.LBB15_16:
	addi.d	$a3, $a4, -1
	mul.d	$a1, $a3, $a1
.LBB15_17:                              # %vector.ph
	add.w	$s4, $a1, $a2
.LBB15_18:                              # %vector.ph
	vld	$vr0, $fp, 1096
	vld	$vr1, $fp, 1264
	vst	$vr0, $fp, 1104
	vst	$vr0, $fp, 768
	vld	$vr0, $fp, 1080
	vst	$vr1, $fp, 1272
	vst	$vr1, $fp, 936
	vld	$vr1, $fp, 1248
	vst	$vr0, $fp, 1088
	vst	$vr0, $fp, 752
	vld	$vr0, $fp, 1064
	vst	$vr1, $fp, 1256
	vst	$vr1, $fp, 920
	vld	$vr1, $fp, 1232
	vst	$vr0, $fp, 1072
	vst	$vr0, $fp, 736
	vld	$vr0, $fp, 1048
	vst	$vr1, $fp, 1240
	vst	$vr1, $fp, 904
	vld	$vr1, $fp, 1216
	vst	$vr0, $fp, 1056
	vst	$vr0, $fp, 720
	vld	$vr0, $fp, 1032
	vst	$vr1, $fp, 1224
	vst	$vr1, $fp, 888
	vld	$vr1, $fp, 1200
	vst	$vr0, $fp, 1040
	vst	$vr0, $fp, 704
	vld	$vr0, $fp, 1016
	vst	$vr1, $fp, 1208
	vst	$vr1, $fp, 872
	vld	$vr1, $fp, 1184
	vst	$vr0, $fp, 1024
	vst	$vr0, $fp, 688
	vld	$vr0, $fp, 1000
	vst	$vr1, $fp, 1192
	vst	$vr1, $fp, 856
	vld	$vr1, $fp, 1168
	vst	$vr0, $fp, 1008
	vst	$vr0, $fp, 672
	vld	$vr0, $fp, 984
	vst	$vr1, $fp, 1176
	vst	$vr1, $fp, 840
	vld	$vr1, $fp, 1152
	vst	$vr0, $fp, 992
	vld	$vr2, $fp, 968
	vst	$vr0, $fp, 656
	vst	$vr1, $fp, 1160
	vst	$vr1, $fp, 824
	vst	$vr2, $fp, 976
	vld	$vr0, $fp, 1136
	vst	$vr2, $fp, 640
	fld.d	$fa1, $fp, 960
	ld.w	$a1, $a0, 16
	vst	$vr0, $fp, 1144
	vst	$vr0, $fp, 808
	fst.d	$fa1, $fp, 968
	fld.d	$fa0, $fp, 1128
	fst.d	$fa1, $fp, 632
	ld.w	$a0, $fp, 1344
	st.w	$a1, $fp, 1348
	fst.d	$fa0, $fp, 1136
	fst.d	$fa0, $fp, 800
	pcaddu18i	$ra, %call36(QP2Qstep)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 15404
	ldptr.w	$a0, $a0, 15352
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $s0, %pc_lo12(generic_RC)
	ori	$a2, $zero, 28
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 20
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	ldx.w	$a0, $a1, $a0
	fld.d	$fa1, $fp, 1400
	fst.d	$fa0, $fp, 960
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	fst.d	$fa0, $fp, 624
	fld.d	$fa0, $fp, 1424
	vld	$vr3, $fp, 1312
	fst.d	$fa2, $fp, 1128
	fst.d	$fa2, $fp, 792
	fcmp.cule.d	$fcc0, $fa1, $fa0
	vst	$vr3, $fp, 1296
	bcnez	$fcc0, .LBB15_20
# %bb.19:
	fdiv.d	$fa0, $fa0, $fa1
	b	.LBB15_21
.LBB15_20:
	fdiv.d	$fa0, $fa1, $fa0
.LBB15_21:
	vldi	$vr1, -972
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	ld.w	$a2, $fp, 1340
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	addi.w	$a1, $a2, 1
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slti	$a1, $a0, 20
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 20
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	st.w	$s1, $fp, 1340
	pcalau12i	$a0, %pc_hi20(updateRCModel.m_rgRejected)
	addi.d	$s0, $a0, %pc_lo12(updateRCModel.m_rgRejected)
	ori	$a2, $zero, 80
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(RCModelEstimator)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1340
	blez	$a1, .LBB15_26
# %bb.22:                               # %.lr.ph
	fld.d	$fa1, $fp, 1296
	fld.d	$fa2, $fp, 1304
	addi.d	$a0, $fp, 624
	movgr2fr.d	$fa0, $zero
	pcalau12i	$a2, %pc_hi20(updateRCModel.error)
	addi.d	$a2, $a2, %pc_lo12(updateRCModel.error)
	move	$a3, $a1
	.p2align	4, , 16
.LBB15_23:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a0, 0
	fdiv.d	$fa4, $fa1, $fa3
	fld.d	$fa5, $a0, 168
	fmul.d	$fa3, $fa3, $fa3
	fdiv.d	$fa3, $fa2, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fsub.d	$fa3, $fa3, $fa5
	fst.d	$fa3, $a2, 0
	fmadd.d	$fa0, $fa3, $fa3, $fa0
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB15_23
# %bb.24:                               # %._crit_edge
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB15_28
# %bb.25:
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 4
	bltu	$a1, $a0, .LBB15_30
	b	.LBB15_32
.LBB15_26:
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fa1, $zero
	fdiv.d	$fa0, $fa1, $fa0
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB15_43
# %bb.27:                               # %call.sqrt213
	move	$s1, $a1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	b	.LBB15_43
.LBB15_28:                              # %.thread156
	bstrpick.d	$a0, $a1, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB15_31
# %bb.29:                               # %.lr.ph137.preheader
	ori	$a0, $zero, 4
	bgeu	$a1, $a0, .LBB15_32
.LBB15_30:
	move	$a0, $zero
	b	.LBB15_49
.LBB15_31:                              # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$s1, $a1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a1, $s1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	ori	$a0, $zero, 4
	bltu	$a1, $a0, .LBB15_30
.LBB15_32:                              # %vector.ph176
	bstrpick.d	$a0, $a1, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a2, $s0, 8
	pcalau12i	$a3, %pc_hi20(updateRCModel.error+16)
	addi.d	$a3, $a3, %pc_lo12(updateRCModel.error+16)
	vreplvei.d	$vr1, $vr0, 0
	ori	$a4, $zero, 1
	move	$a5, $a0
	b	.LBB15_34
	.p2align	4, , 16
.LBB15_33:                              # %pred.store.continue186
                                        #   in Loop: Header=BB15_34 Depth=1
	addi.d	$a2, $a2, 16
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	beqz	$a5, .LBB15_42
.LBB15_34:                              # %vector.body177
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vbitclri.d	$vr2, $vr2, 63
	vfcmp.clt.d	$vr2, $vr1, $vr2
	vpickve2gr.d	$a6, $vr2, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB15_36
# %bb.35:                               # %pred.store.if
                                        #   in Loop: Header=BB15_34 Depth=1
	st.w	$a4, $a2, -8
.LBB15_36:                              # %pred.store.continue
                                        #   in Loop: Header=BB15_34 Depth=1
	vpickve2gr.d	$a6, $vr2, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB15_38
# %bb.37:                               # %pred.store.if181
                                        #   in Loop: Header=BB15_34 Depth=1
	st.w	$a4, $a2, -4
.LBB15_38:                              # %pred.store.continue182
                                        #   in Loop: Header=BB15_34 Depth=1
	vld	$vr2, $a3, 0
	vbitclri.d	$vr2, $vr2, 63
	vfcmp.clt.d	$vr2, $vr1, $vr2
	vpickve2gr.d	$a6, $vr2, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB15_40
# %bb.39:                               # %pred.store.if183
                                        #   in Loop: Header=BB15_34 Depth=1
	st.w	$a4, $a2, 0
.LBB15_40:                              # %pred.store.continue184
                                        #   in Loop: Header=BB15_34 Depth=1
	vpickve2gr.d	$a6, $vr2, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB15_33
# %bb.41:                               # %pred.store.if185
                                        #   in Loop: Header=BB15_34 Depth=1
	st.w	$a4, $a2, 4
	b	.LBB15_33
.LBB15_42:                              # %middle.block188
	bne	$a0, $a1, .LBB15_49
.LBB15_43:                              # %._crit_edge138
	st.w	$zero, $s0, 0
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(RCModelEstimator)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bge	$s4, $a0, .LBB15_48
# %bb.44:
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 20
	beqz	$a1, .LBB15_46
# %bb.45:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5136
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB15_3
.LBB15_46:
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 0
	beq	$a0, $a1, .LBB15_3
# %bb.47:
	fld.d	$fa0, $fp, 1400
	fst.d	$fa0, $fp, 120
	b	.LBB15_3
.LBB15_48:
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(updateMADModel)
	jr	$t8
.LBB15_49:                              # %.lr.ph137.preheader190
	pcalau12i	$a2, %pc_hi20(updateRCModel.error)
	addi.d	$a2, $a2, %pc_lo12(updateRCModel.error)
	alsl.d	$a2, $a0, $a2, 3
	alsl.d	$a3, $a0, $s0, 2
	sub.d	$a0, $a1, $a0
	ori	$a4, $zero, 1
	b	.LBB15_51
	.p2align	4, , 16
.LBB15_50:                              #   in Loop: Header=BB15_51 Depth=1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	beqz	$a0, .LBB15_43
.LBB15_51:                              # %.lr.ph137
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_50
# %bb.52:                               #   in Loop: Header=BB15_51 Depth=1
	st.w	$a4, $a3, 0
	b	.LBB15_50
.Lfunc_end15:
	.size	updateRCModel, .Lfunc_end15-updateRCModel
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function RCModelEstimator
.LCPI16_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	RCModelEstimator
	.p2align	5
	.type	RCModelEstimator,@function
RCModelEstimator:                       # @RCModelEstimator
# %bb.0:
	blez	$a1, .LBB16_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a3, $zero, 8
	bgeu	$a1, $a3, .LBB16_4
# %bb.2:
	move	$a4, $zero
	move	$a3, $a1
	b	.LBB16_7
.LBB16_3:                               # %.preheader107.thread
	vrepli.b	$vr0, 0
	movgr2fr.d	$fa1, $zero
	vst	$vr0, $a0, 1296
	fmov.d	$fa0, $fa1
	b	.LBB16_26
.LBB16_4:                               # %vector.ph
	bstrpick.d	$a3, $a1, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a4, $a3, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	addi.d	$a3, $a2, 16
	vrepli.b	$vr2, -1
	move	$a5, $a4
	.p2align	4, , 16
.LBB16_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a3, -16
	vld	$vr4, $a3, 0
	vseqi.w	$vr3, $vr3, 0
	vxor.v	$vr3, $vr3, $vr2
	vseqi.w	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr2
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr0, $vr0, $vr4
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB16_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a4, $a1, .LBB16_9
.LBB16_7:                               # %.lr.ph.preheader161
	alsl.d	$a5, $a4, $a2, 2
	sub.d	$a4, $a1, $a4
	.p2align	4, , 16
.LBB16_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	sltu	$a6, $zero, $a6
	sub.w	$a3, $a3, $a6
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB16_8
.LBB16_9:                               # %.lr.ph113
	addi.d	$a4, $a0, 1296
	addi.d	$a5, $a0, 624
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 1296
	movgr2fr.d	$fa1, $zero
	move	$a6, $a1
	move	$a7, $a2
	b	.LBB16_11
	.p2align	4, , 16
.LBB16_10:                              #   in Loop: Header=BB16_11 Depth=1
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	beqz	$a6, .LBB16_13
.LBB16_11:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a7, 0
	bnez	$t0, .LBB16_10
# %bb.12:                               #   in Loop: Header=BB16_11 Depth=1
	fld.d	$fa1, $a5, 0
	b	.LBB16_10
.LBB16_13:                              # %.lr.ph117
	move	$a5, $zero
	addi.d	$a6, $a0, 624
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa2, $fa0
	movgr2fr.d	$fa0, $zero
	ori	$a7, $zero, 1
	move	$t0, $a1
	move	$t1, $a2
	b	.LBB16_15
	.p2align	4, , 16
.LBB16_14:                              #   in Loop: Header=BB16_15 Depth=1
	fcmp.cune.d	$fcc0, $fa3, $fa1
	sltui	$t2, $t2, 1
	masknez	$t3, $a5, $t2
	maskeqz	$t2, $a7, $t2
	or	$t2, $t2, $t3
	movcf2gr	$t3, $fcc0
	maskeqz	$t2, $t2, $t3
	masknez	$a5, $a5, $t3
	or	$a5, $t2, $a5
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	beqz	$t0, .LBB16_17
.LBB16_15:                              # %._crit_edge147
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t1, 0
	fld.d	$fa3, $a6, 0
	bnez	$t2, .LBB16_14
# %bb.16:                               #   in Loop: Header=BB16_15 Depth=1
	fld.d	$fa4, $a6, 168
	fmul.d	$fa4, $fa3, $fa4
	fdiv.d	$fa4, $fa4, $fa2
	fadd.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a4, 0
	b	.LBB16_14
.LBB16_17:                              # %._crit_edge118
	addi.w	$a3, $a3, 0
	movgr2fr.d	$fa1, $zero
	blez	$a3, .LBB16_26
# %bb.18:                               # %._crit_edge118
	beqz	$a5, .LBB16_26
# %bb.19:                               # %.lr.ph127
	addi.d	$a3, $a0, 624
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa1, $zero
	vldi	$vr5, -912
	fmov.d	$fa2, $fa1
	fmov.d	$fa0, $fa1
	fmov.d	$fa4, $fa1
	fmov.d	$fa3, $fa1
	b	.LBB16_21
	.p2align	4, , 16
.LBB16_20:                              #   in Loop: Header=BB16_21 Depth=1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	beqz	$a1, .LBB16_23
.LBB16_21:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	bnez	$a4, .LBB16_20
# %bb.22:                               #   in Loop: Header=BB16_21 Depth=1
	fld.d	$fa6, $a3, 0
	fadd.d	$fa3, $fa3, $fa5
	frecip.d	$fa7, $fa6
	fadd.d	$fa4, $fa4, $fa7
	fld.d	$fa7, $a3, 168
	fmul.d	$ft0, $fa6, $fa6
	frecip.d	$ft0, $ft0
	fadd.d	$fa0, $fa0, $ft0
	fmadd.d	$fa2, $fa6, $fa7, $fa2
	fadd.d	$fa1, $fa1, $fa7
	b	.LBB16_20
.LBB16_23:                              # %._crit_edge128
	fneg.d	$fa5, $fa4
	pcalau12i	$a1, %pc_hi20(.LCPI16_0)
	fld.d	$fa7, $a1, %pc_lo12(.LCPI16_0)
	fmul.d	$fa6, $fa4, $fa5
	fmadd.d	$fa6, $fa3, $fa0, $fa6
	fabs.d	$ft0, $fa6
	fcmp.cule.d	$fcc0, $ft0, $fa7
	bcnez	$fcc0, .LBB16_25
# %bb.24:
	fneg.d	$fa4, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fmadd.d	$fa0, $fa2, $fa0, $fa4
	fdiv.d	$fa0, $fa0, $fa6
	fst.d	$fa0, $a0, 1296
	fmul.d	$fa2, $fa2, $fa5
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fdiv.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $a0, 1304
	b	.LBB16_26
.LBB16_25:
	fdiv.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $a0, 1296
	st.d	$zero, $a0, 1304
	movgr2fr.d	$fa1, $zero
.LBB16_26:                              # %._crit_edge118.thread
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 20
	beqz	$a2, .LBB16_28
# %bb.27:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a2, $a2, 5136
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB16_30
.LBB16_28:
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a2, $a2, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a2, $a2, 0
	beq	$a1, $a2, .LBB16_30
# %bb.29:
	fst.d	$fa0, $a0, 1312
	fst.d	$fa1, $a0, 1320
.LBB16_30:
	ret
.Lfunc_end16:
	.size	RCModelEstimator, .Lfunc_end16-RCModelEstimator
                                        # -- End function
	.globl	updateMADModel                  # -- Begin function updateMADModel
	.p2align	5
	.type	updateMADModel,@function
updateMADModel:                         # @updateMADModel
# %bb.0:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a2, $a1, %pc_lo12(generic_RC)
	ld.w	$a1, $a2, 36
	blez	$a1, .LBB17_5
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$s1, $a0, 0
	ldptr.w	$a0, $s1, 15404
	ldptr.w	$a3, $s1, 15352
	beq	$a0, $a3, .LBB17_3
# %bb.2:
	ld.w	$a4, $fp, 1388
	ld.w	$a5, $fp, 1392
	mul.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a5
.LBB17_3:                               # %vector.ph
	vld	$vr0, $fp, 256
	vld	$vr1, $fp, 592
	vst	$vr0, $fp, 264
	vld	$vr2, $fp, 240
	vst	$vr0, $fp, 432
	vst	$vr1, $fp, 600
	vld	$vr0, $fp, 576
	vst	$vr2, $fp, 248
	vld	$vr1, $fp, 224
	vst	$vr2, $fp, 416
	vst	$vr0, $fp, 584
	vld	$vr0, $fp, 560
	vst	$vr1, $fp, 232
	vld	$vr2, $fp, 208
	vst	$vr1, $fp, 400
	vst	$vr0, $fp, 568
	vld	$vr0, $fp, 544
	vst	$vr2, $fp, 216
	vld	$vr1, $fp, 192
	vst	$vr2, $fp, 384
	vst	$vr0, $fp, 552
	vld	$vr0, $fp, 528
	vst	$vr1, $fp, 200
	vld	$vr2, $fp, 176
	vst	$vr1, $fp, 368
	vst	$vr0, $fp, 536
	vld	$vr0, $fp, 512
	vst	$vr2, $fp, 184
	vld	$vr1, $fp, 160
	vst	$vr2, $fp, 352
	vst	$vr0, $fp, 520
	vld	$vr0, $fp, 496
	vst	$vr1, $fp, 168
	vld	$vr2, $fp, 144
	vst	$vr1, $fp, 336
	vst	$vr0, $fp, 504
	vld	$vr0, $fp, 480
	vst	$vr2, $fp, 152
	vld	$vr1, $fp, 128
	vst	$vr2, $fp, 320
	vst	$vr0, $fp, 488
	vld	$vr0, $fp, 464
	vst	$vr1, $fp, 136
	vst	$vr1, $fp, 304
	fld.d	$fa1, $fp, 120
	vst	$vr0, $fp, 472
	fld.d	$fa0, $fp, 456
	fld.d	$fs0, $fp, 1400
	fst.d	$fa1, $fp, 128
	fst.d	$fa1, $fp, 296
	fst.d	$fa0, $fp, 464
	fst.d	$fs0, $fp, 120
	fst.d	$fs0, $fp, 288
	bne	$a0, $a3, .LBB17_6
# %bb.4:
	addi.d	$a0, $fp, 296
	b	.LBB17_12
.LBB17_5:
	ret
.LBB17_6:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a3, $a0, 4704
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB17_8
# %bb.7:
	ldptr.w	$a0, $a0, 4708
	beqz	$a0, .LBB17_10
.LBB17_8:
	ld.w	$a0, $a2, 4
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB17_10
# %bb.9:
	ld.w	$a0, $fp, 1368
	ld.w	$a2, $fp, 1388
	ld.d	$a3, $fp, 1496
	b	.LBB17_11
.LBB17_10:
	ld.w	$a0, $fp, 1368
	ld.w	$a2, $fp, 1388
	ld.d	$a3, $fp, 1472
.LBB17_11:
	nor	$a0, $a0, $zero
	add.w	$a0, $a2, $a0
	alsl.d	$a0, $a0, $a3, 3
.LBB17_12:
	fld.d	$fa0, $a0, 0
	vld	$vr1, $fp, 104
	fld.d	$fa2, $fp, 1424
	fst.d	$fa0, $fp, 456
	vst	$vr1, $fp, 88
	fcmp.clt.d	$fcc0, $fa2, $fs0
	fsel	$fa0, $fs0, $fa2, $fcc0
	fsel	$fa1, $fa2, $fs0, $fcc0
	vldi	$vr2, -972
	fmul.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a1, $a1, -1
	ori	$s2, $zero, 1
	slt	$a2, $s2, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s2, $a2
	or	$a0, $a0, $a2
	slt	$a2, $a0, $a1
	ld.w	$a3, $fp, 1336
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slti	$a1, $a3, 19
	ori	$a2, $zero, 19
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, 1
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s0, $a0, $a1
	st.w	$s0, $fp, 1336
	pcalau12i	$a0, %pc_hi20(updateMADModel.PictureRejected)
	addi.d	$a0, $a0, %pc_lo12(updateMADModel.PictureRejected)
	ori	$a2, $zero, 80
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 20
	beqz	$a0, .LBB17_14
# %bb.13:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5136
	bne	$a0, $s2, .LBB17_16
.LBB17_14:
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a1, $a1, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB17_16
# %bb.15:
	fst.d	$fs0, $fp, 1424
.LBB17_16:
	pcalau12i	$a0, %pc_hi20(updateMADModel.PictureRejected)
	addi.d	$s1, $a0, %pc_lo12(updateMADModel.PictureRejected)
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MADModelEstimator)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB17_21
# %bb.17:                               # %.lr.ph
	fld.d	$fa1, $fp, 88
	fld.d	$fa2, $fp, 96
	addi.d	$a0, $fp, 456
	movgr2fr.d	$fa0, $zero
	pcalau12i	$a1, %pc_hi20(updateMADModel.error)
	addi.d	$a1, $a1, %pc_lo12(updateMADModel.error)
	move	$a2, $s0
	.p2align	4, , 16
.LBB17_18:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a0, 0
	fld.d	$fa4, $a0, -168
	fmadd.d	$fa3, $fa1, $fa3, $fa2
	fsub.d	$fa3, $fa3, $fa4
	fst.d	$fa3, $a1, 0
	fmadd.d	$fa0, $fa3, $fa3, $fa0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB17_18
# %bb.19:                               # %._crit_edge
	ori	$a0, $zero, 2
	bne	$s0, $a0, .LBB17_23
# %bb.20:
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 4
	bltu	$s0, $a0, .LBB17_25
	b	.LBB17_27
.LBB17_21:
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fa1, $zero
	fdiv.d	$fa0, $fa1, $fa0
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB17_38
# %bb.22:                               # %call.sqrt158
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB17_38
.LBB17_23:                              # %.thread109
	bstrpick.d	$a0, $s0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_26
# %bb.24:                               # %.lr.ph91.preheader
	ori	$a0, $zero, 4
	bgeu	$s0, $a0, .LBB17_27
.LBB17_25:
	move	$a0, $zero
	b	.LBB17_39
.LBB17_26:                              # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	ori	$a0, $zero, 4
	bltu	$s0, $a0, .LBB17_25
.LBB17_27:                              # %vector.ph121
	bstrpick.d	$a0, $s0, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a1, $s1, 8
	pcalau12i	$a2, %pc_hi20(updateMADModel.error+16)
	addi.d	$a2, $a2, %pc_lo12(updateMADModel.error+16)
	vreplvei.d	$vr1, $vr0, 0
	ori	$a3, $zero, 1
	move	$a4, $a0
	b	.LBB17_29
	.p2align	4, , 16
.LBB17_28:                              # %pred.store.continue131
                                        #   in Loop: Header=BB17_29 Depth=1
	addi.d	$a1, $a1, 16
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	beqz	$a4, .LBB17_37
.LBB17_29:                              # %vector.body122
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a2, -16
	vbitclri.d	$vr2, $vr2, 63
	vfcmp.clt.d	$vr2, $vr1, $vr2
	vpickve2gr.d	$a5, $vr2, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB17_31
# %bb.30:                               # %pred.store.if
                                        #   in Loop: Header=BB17_29 Depth=1
	st.w	$a3, $a1, -8
.LBB17_31:                              # %pred.store.continue
                                        #   in Loop: Header=BB17_29 Depth=1
	vpickve2gr.d	$a5, $vr2, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB17_33
# %bb.32:                               # %pred.store.if126
                                        #   in Loop: Header=BB17_29 Depth=1
	st.w	$a3, $a1, -4
.LBB17_33:                              # %pred.store.continue127
                                        #   in Loop: Header=BB17_29 Depth=1
	vld	$vr2, $a2, 0
	vbitclri.d	$vr2, $vr2, 63
	vfcmp.clt.d	$vr2, $vr1, $vr2
	vpickve2gr.d	$a5, $vr2, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB17_35
# %bb.34:                               # %pred.store.if128
                                        #   in Loop: Header=BB17_29 Depth=1
	st.w	$a3, $a1, 0
.LBB17_35:                              # %pred.store.continue129
                                        #   in Loop: Header=BB17_29 Depth=1
	vpickve2gr.d	$a5, $vr2, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB17_28
# %bb.36:                               # %pred.store.if130
                                        #   in Loop: Header=BB17_29 Depth=1
	st.w	$a3, $a1, 4
	b	.LBB17_28
.LBB17_37:                              # %middle.block133
	bne	$a0, $s0, .LBB17_39
.LBB17_38:                              # %._crit_edge92
	st.w	$zero, $s1, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(MADModelEstimator)
	jr	$t8
.LBB17_39:                              # %.lr.ph91.preheader135
	pcalau12i	$a1, %pc_hi20(updateMADModel.error)
	addi.d	$a1, $a1, %pc_lo12(updateMADModel.error)
	alsl.d	$a1, $a0, $a1, 3
	alsl.d	$a2, $a0, $s1, 2
	sub.d	$a0, $s0, $a0
	ori	$a3, $zero, 1
	b	.LBB17_41
	.p2align	4, , 16
.LBB17_40:                              #   in Loop: Header=BB17_41 Depth=1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	beqz	$a0, .LBB17_38
.LBB17_41:                              # %.lr.ph91
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB17_40
# %bb.42:                               #   in Loop: Header=BB17_41 Depth=1
	st.w	$a3, $a2, 0
	b	.LBB17_40
.Lfunc_end17:
	.size	updateMADModel, .Lfunc_end17-updateMADModel
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function MADModelEstimator
.LCPI18_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	MADModelEstimator
	.p2align	5
	.type	MADModelEstimator,@function
MADModelEstimator:                      # @MADModelEstimator
# %bb.0:
	blez	$a1, .LBB18_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a3, $zero, 8
	bgeu	$a1, $a3, .LBB18_4
# %bb.2:
	move	$a4, $zero
	move	$a3, $a1
	b	.LBB18_7
.LBB18_3:                               # %.preheader107.thread
	vrepli.b	$vr0, 0
	movgr2fr.d	$fa3, $zero
	vst	$vr0, $a0, 88
	fmov.d	$fa0, $fa3
	b	.LBB18_26
.LBB18_4:                               # %vector.ph
	bstrpick.d	$a3, $a1, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a4, $a3, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	addi.d	$a3, $a2, 16
	vrepli.b	$vr2, -1
	move	$a5, $a4
	.p2align	4, , 16
.LBB18_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a3, -16
	vld	$vr4, $a3, 0
	vseqi.w	$vr3, $vr3, 0
	vxor.v	$vr3, $vr3, $vr2
	vseqi.w	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr2
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr0, $vr0, $vr4
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB18_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a4, $a1, .LBB18_9
.LBB18_7:                               # %.lr.ph.preheader161
	alsl.d	$a5, $a4, $a2, 2
	sub.d	$a4, $a1, $a4
	.p2align	4, , 16
.LBB18_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	sltu	$a6, $zero, $a6
	sub.w	$a3, $a3, $a6
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB18_8
.LBB18_9:                               # %.lr.ph113
	addi.d	$a4, $a0, 88
	addi.d	$a5, $a0, 288
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 88
	movgr2fr.d	$fa1, $zero
	move	$a6, $a1
	move	$a7, $a2
	b	.LBB18_11
	.p2align	4, , 16
.LBB18_10:                              #   in Loop: Header=BB18_11 Depth=1
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	beqz	$a6, .LBB18_13
.LBB18_11:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a7, 0
	bnez	$t0, .LBB18_10
# %bb.12:                               #   in Loop: Header=BB18_11 Depth=1
	fld.d	$fa1, $a5, 0
	b	.LBB18_10
.LBB18_13:                              # %.lr.ph117
	move	$a5, $zero
	addi.d	$a6, $a0, 288
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa2, $fa0
	movgr2fr.d	$fa0, $zero
	ori	$a7, $zero, 1
	move	$t0, $a1
	move	$t1, $a2
	b	.LBB18_15
	.p2align	4, , 16
.LBB18_14:                              #   in Loop: Header=BB18_15 Depth=1
	fcmp.cune.d	$fcc0, $fa3, $fa1
	sltui	$t2, $t2, 1
	masknez	$t3, $a5, $t2
	maskeqz	$t2, $a7, $t2
	or	$t2, $t2, $t3
	movcf2gr	$t3, $fcc0
	maskeqz	$t2, $t2, $t3
	masknez	$a5, $a5, $t3
	or	$a5, $t2, $a5
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	beqz	$t0, .LBB18_17
.LBB18_15:                              # %._crit_edge147
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t1, 0
	fld.d	$fa3, $a6, 0
	bnez	$t2, .LBB18_14
# %bb.16:                               #   in Loop: Header=BB18_15 Depth=1
	fld.d	$fa4, $a6, 168
	fmul.d	$fa4, $fa4, $fa2
	fdiv.d	$fa4, $fa3, $fa4
	fadd.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a4, 0
	b	.LBB18_14
.LBB18_17:                              # %._crit_edge118
	addi.w	$a3, $a3, 0
	movgr2fr.d	$fa3, $zero
	blez	$a3, .LBB18_26
# %bb.18:                               # %._crit_edge118
	beqz	$a5, .LBB18_26
# %bb.19:                               # %.lr.ph127
	addi.d	$a3, $a0, 456
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $zero
	vldi	$vr5, -912
	fmov.d	$fa1, $fa0
	fmov.d	$fa3, $fa0
	fmov.d	$fa4, $fa0
	fmov.d	$fa2, $fa0
	b	.LBB18_21
	.p2align	4, , 16
.LBB18_20:                              #   in Loop: Header=BB18_21 Depth=1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	beqz	$a1, .LBB18_23
.LBB18_21:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	bnez	$a4, .LBB18_20
# %bb.22:                               #   in Loop: Header=BB18_21 Depth=1
	fld.d	$fa6, $a3, 0
	fld.d	$fa7, $a3, -168
	fadd.d	$fa2, $fa2, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fmadd.d	$fa3, $fa6, $fa6, $fa3
	fadd.d	$fa1, $fa1, $fa7
	fmadd.d	$fa0, $fa7, $fa6, $fa0
	b	.LBB18_20
.LBB18_23:                              # %._crit_edge128
	fneg.d	$fa5, $fa4
	pcalau12i	$a1, %pc_hi20(.LCPI18_0)
	fld.d	$fa7, $a1, %pc_lo12(.LCPI18_0)
	fmul.d	$fa6, $fa4, $fa5
	fmadd.d	$fa6, $fa2, $fa3, $fa6
	fabs.d	$ft0, $fa6
	fcmp.cule.d	$fcc0, $ft0, $fa7
	bcnez	$fcc0, .LBB18_25
# %bb.24:
	fneg.d	$fa4, $fa4
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa3, $fa1, $fa3, $fa4
	fdiv.d	$fa3, $fa3, $fa6
	fst.d	$fa3, $a0, 96
	fmul.d	$fa1, $fa1, $fa5
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa6
	fst.d	$fa0, $a0, 88
	b	.LBB18_26
.LBB18_25:
	fdiv.d	$fa0, $fa1, $fa4
	fst.d	$fa0, $a0, 88
	st.d	$zero, $a0, 96
	movgr2fr.d	$fa3, $zero
.LBB18_26:                              # %._crit_edge118.thread
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 20
	beqz	$a2, .LBB18_28
# %bb.27:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a2, $a2, 5136
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB18_30
.LBB18_28:
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a2, $a2, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a2, $a2, 0
	beq	$a1, $a2, .LBB18_30
# %bb.29:
	fst.d	$fa0, $a0, 104
	fst.d	$fa3, $a0, 112
.LBB18_30:
	ret
.Lfunc_end18:
	.size	MADModelEstimator, .Lfunc_end18-MADModelEstimator
                                        # -- End function
	.globl	updateQPInterlace               # -- Begin function updateQPInterlace
	.p2align	5
	.type	updateQPInterlace,@function
updateQPInterlace:                      # @updateQPInterlace
# %bb.0:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 4
	beqz	$a2, .LBB19_2
# %bb.1:
	ret
.LBB19_2:                               # %.sink.split
	ld.w	$a1, $a1, 8
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.w	$a2, $a0, 1356
	ori	$a3, $zero, 1456
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 1460
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	ldx.w	$a1, $a0, $a1
	st.w	$a2, $a0, 1352
	st.w	$a1, $a0, 1356
	ret
.Lfunc_end19:
	.size	updateQPInterlace, .Lfunc_end19-updateQPInterlace
                                        # -- End function
	.globl	updateQPNonPicAFF               # -- Begin function updateQPNonPicAFF
	.p2align	5
	.type	updateQPNonPicAFF,@function
updateQPNonPicAFF:                      # @updateQPNonPicAFF
# %bb.0:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1148
	ld.w	$a1, $a0, 1344
	beqz	$a2, .LBB20_2
# %bb.1:
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	ld.w	$a3, $a2, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a1
	st.w	$a3, $a2, 44
	st.w	$a4, $a0, 1352
	st.w	$a1, $a0, 1356
	st.w	$a1, $a0, 1328
	ret
.LBB20_2:
	st.w	$a1, $a0, 1460
	ret
.Lfunc_end20:
	.size	updateQPNonPicAFF, .Lfunc_end20-updateQPNonPicAFF
                                        # -- End function
	.globl	updateQPInterlaceBU             # -- Begin function updateQPInterlaceBU
	.p2align	5
	.type	updateQPInterlaceBU,@function
updateQPInterlaceBU:                    # @updateQPInterlaceBU
# %bb.0:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a2, $a1, 8
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	ld.w	$a3, $a1, 44
	ori	$a4, $zero, 1456
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 1460
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	ldx.w	$a2, $a0, $a2
	add.d	$a3, $a3, $a2
	st.w	$a3, $a1, 44
	st.w	$a2, $a0, 1328
	ret
.Lfunc_end21:
	.size	updateQPInterlaceBU, .Lfunc_end21-updateQPInterlaceBU
                                        # -- End function
	.globl	updateModelQPFrame              # -- Begin function updateModelQPFrame
	.p2align	5
	.type	updateModelQPFrame,@function
updateModelQPFrame:                     # @updateModelQPFrame
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	fld.d	$fs0, $a0, 1400
	fld.d	$fs3, $a0, 1296
	fld.d	$fs1, $a0, 1304
	fmul.d	$fs2, $fs0, $fs3
	movgr2fr.w	$fa0, $a1
	movgr2fr.d	$fs5, $zero
	fcmp.ceq.d	$fcc0, $fs1, $fs5
	ffint.d.w	$fs4, $fa0
	bcnez	$fcc0, .LBB22_5
# %bb.1:
	fmul.d	$fa0, $fs0, $fs2
	vldi	$vr1, -1008
	fmul.d	$fa1, $fs1, $fa1
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fa1, $fs4
	fmadd.d	$fa0, $fa0, $fs3, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB22_5
# %bb.2:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB22_7
.LBB22_3:                               # %.split
	fneg.d	$fa0, $fs3
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	fcmp.cult.d	$fcc0, $fs5, $fa0
	bceqz	$fcc0, .LBB22_5
# %bb.4:
	fadd.d	$fa1, $fs1, $fs1
	fmul.d	$fa1, $fs0, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB22_6
.LBB22_5:
	fdiv.d	$fa0, $fs2, $fs4
.LBB22_6:
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(Qstep2QP)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 1344
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB22_7:                               # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB22_3
.Lfunc_end22:
	.size	updateModelQPFrame, .Lfunc_end22-updateModelQPFrame
                                        # -- End function
	.globl	updateBottomField               # -- Begin function updateBottomField
	.p2align	5
	.type	updateBottomField,@function
updateBottomField:                      # @updateBottomField
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a3, $a1, 4704
	ld.w	$a1, $a0, 1344
	ori	$a4, $zero, 1
	ori	$a2, $zero, 1456
	bne	$a3, $a4, .LBB23_2
# %bb.1:
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	ld.w	$a3, $a2, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a1
	st.w	$a3, $a2, 44
	addi.d	$a2, $a4, 1
	st.w	$a2, $a0, 1352
	st.w	$a1, $a0, 1356
	ori	$a2, $zero, 1328
.LBB23_2:
	stx.w	$a1, $a0, $a2
	ret
.Lfunc_end23:
	.size	updateBottomField, .Lfunc_end23-updateBottomField
                                        # -- End function
	.globl	updateFirstP                    # -- Begin function updateFirstP
	.p2align	5
	.type	updateFirstP,@function
updateFirstP:                           # @updateFirstP
# %bb.0:
	move	$a2, $a0
	ld.w	$a0, $a0, 72
	pcalau12i	$a3, %pc_hi20(generic_RC)
	ld.d	$a3, $a3, %pc_lo12(generic_RC)
	st.w	$a0, $a2, 1344
	st.d	$zero, $a3, 24
	ld.w	$a4, $a2, 1368
	addi.w	$a4, $a4, -1
	or	$a1, $a1, $a4
	st.w	$a4, $a2, 1368
	bnez	$a1, .LBB24_3
# %bb.1:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB24_4
.LBB24_2:
	ld.w	$a1, $a3, 44
	ld.w	$a4, $a2, 1356
	add.d	$a1, $a1, $a0
	st.w	$a1, $a3, 44
	ld.w	$a1, $a2, 1376
	st.w	$a4, $a2, 1352
	st.w	$a0, $a2, 1356
	st.w	$a0, $a2, 1384
	st.w	$a1, $a2, 1380
.LBB24_3:
	ld.w	$a1, $a2, 1364
	st.w	$a0, $a2, 1328
	add.d	$a1, $a1, $a0
	st.w	$a1, $a2, 1364
	ret
.LBB24_4:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a4, $a1, 4704
	ori	$a5, $zero, 2
	beq	$a4, $a5, .LBB24_7
# %bb.5:
	ori	$a5, $zero, 1
	beq	$a4, $a5, .LBB24_2
# %bb.6:
	ldptr.w	$a1, $a1, 4708
	beqz	$a1, .LBB24_3
.LBB24_7:
	ld.w	$a1, $a3, 4
	beqz	$a1, .LBB24_9
# %bb.8:
	ld.w	$a1, $a2, 1376
	st.w	$a0, $a2, 1456
	st.w	$a1, $a2, 1468
	b	.LBB24_3
.LBB24_9:
	ld.w	$a1, $a2, 1376
	st.w	$a0, $a2, 1460
	st.w	$a1, $a2, 1464
	b	.LBB24_3
.Lfunc_end24:
	.size	updateFirstP, .Lfunc_end24-updateFirstP
                                        # -- End function
	.globl	updateFirstBU                   # -- Begin function updateFirstBU
	.p2align	5
	.type	updateFirstBU,@function
updateFirstBU:                          # @updateFirstBU
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a3, $a2, 4704
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB25_2
# %bb.1:
	ldptr.w	$a2, $a2, 4708
	beqz	$a2, .LBB25_8
.LBB25_2:
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	ld.w	$a3, $a2, 4
	bnez	$a3, .LBB25_8
# %bb.3:
	ld.w	$a3, $a2, 8
	ld.w	$a5, $a2, 48
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB25_5
# %bb.4:
	ld.w	$a3, $a0, 1460
	ori	$a4, $zero, 1464
	bgtz	$a5, .LBB25_6
	b	.LBB25_7
.LBB25_5:
	ld.w	$a3, $a0, 1456
	ori	$a4, $zero, 1468
	blez	$a5, .LBB25_7
.LBB25_6:                               # %.sink.split.sink.split
	ld.w	$a5, $a2, 44
	add.d	$a5, $a5, $a3
	st.w	$a5, $a2, 44
.LBB25_7:                               # %.sink.split
	st.w	$a3, $a0, 1384
	ldx.w	$a2, $a0, $a4
	st.w	$a2, $a0, 1380
.LBB25_8:
	ld.w	$a6, $a0, 1536
	ld.w	$a3, $a0, 1384
	ori	$a4, $zero, 1344
	move	$a5, $a3
	move	$a2, $a3
	bgtz	$a6, .LBB25_10
# %bb.9:
	ld.w	$a2, $a0, 64
	addi.w	$a4, $a3, 2
	slt	$a5, $a4, $a2
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$a2, $a4, $a2
	st.w	$a2, $a0, 1344
	ori	$a5, $zero, 1
	ori	$a4, $zero, 1504
	beqz	$a1, .LBB25_12
.LBB25_10:                              # %.sink.split31
	stx.w	$a5, $a0, $a4
.LBB25_11:
	ld.w	$a1, $a0, 1364
	ld.w	$a4, $a0, 1368
	add.d	$a1, $a1, $a2
	st.w	$a1, $a0, 1364
	addi.d	$a1, $a4, -1
	st.w	$a1, $a0, 1368
	st.w	$a3, $a0, 1328
	move	$a0, $a2
	ret
.LBB25_12:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a1, $a1, 4
	bnez	$a1, .LBB25_11
	b	.LBB25_10
.Lfunc_end25:
	.size	updateFirstBU, .Lfunc_end25-updateFirstBU
                                        # -- End function
	.globl	updateNegativeTarget            # -- Begin function updateNegativeTarget
	.p2align	5
	.type	updateNegativeTarget,@function
updateNegativeTarget:                   # @updateNegativeTarget
# %bb.0:
	ld.w	$a3, $a0, 1504
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB26_2
# %bb.1:
	addi.w	$a2, $a2, 2
	b	.LBB26_3
.LBB26_2:
	ld.w	$a4, $a0, 1440
	add.w	$a2, $a4, $a2
.LBB26_3:
	ld.w	$a4, $a0, 64
	slt	$a5, $a2, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a4, $a4, %got_pc_lo12(input)
	ld.d	$a5, $a4, 0
	ldptr.w	$a4, $a5, 5128
	ld.w	$a6, $a0, 1444
	sltu	$a6, $a4, $a6
	ld.w	$a4, $a0, 1384
	ori	$a7, $zero, 6
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 3
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	add.w	$a6, $a4, $a6
	slt	$a7, $a2, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a2, $a2, $a7
	ld.w	$a7, $a0, 1364
	or	$a2, $a2, $a6
	ld.w	$t0, $a0, 1368
	st.w	$a2, $a0, 1344
	add.w	$a6, $a7, $a2
	st.w	$a6, $a0, 1364
	addi.w	$a7, $t0, -1
	st.w	$a7, $a0, 1368
	bnez	$a7, .LBB26_15
# %bb.4:
	pcalau12i	$a7, %pc_hi20(generic_RC)
	beqz	$a1, .LBB26_6
# %bb.5:
	ld.d	$a1, $a7, %pc_lo12(generic_RC)
	ld.w	$a1, $a1, 4
	bnez	$a1, .LBB26_15
.LBB26_6:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB26_16
.LBB26_7:
	ld.w	$a1, $a0, 1388
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	ld.d	$a1, $a7, %pc_lo12(generic_RC)
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	ld.w	$a4, $a5, 1560
	ld.w	$a5, $a1, 48
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	addi.w	$a6, $a4, -2
	movfr2gr.s	$a4, $fa0
	bne	$a5, $a6, .LBB26_9
# %bb.8:
	st.w	$a4, $a0, 1448
.LBB26_9:
	ld.w	$a6, $a1, 44
	add.d	$a6, $a6, $a4
	ori	$a7, $zero, 1
	st.w	$a6, $a1, 44
	beq	$a3, $a7, .LBB26_12
# %bb.10:
	beqz	$a5, .LBB26_21
# %bb.11:
	blez	$a5, .LBB26_14
.LBB26_12:
	ld.w	$a1, $a0, 1356
	addi.d	$a1, $a1, 1
.LBB26_13:                              # %.thread
	st.w	$a1, $a0, 1352
	st.w	$a4, $a0, 1356
.LBB26_14:                              # %.thread
	ld.w	$a1, $a0, 1376
	st.w	$a4, $a0, 1384
	st.w	$a1, $a0, 1380
.LBB26_15:
	addi.d	$a1, $a3, -1
	sltui	$a1, $a1, 1
	masknez	$a3, $a2, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	st.w	$a1, $a0, 1328
	move	$a0, $a2
	ret
.LBB26_16:
	ldptr.w	$a1, $a5, 4704
	ori	$t0, $zero, 2
	beq	$a1, $t0, .LBB26_19
# %bb.17:
	ori	$t0, $zero, 1
	beq	$a1, $t0, .LBB26_7
# %bb.18:
	ldptr.w	$a1, $a5, 4708
	beqz	$a1, .LBB26_15
.LBB26_19:
	ld.d	$a1, $a7, %pc_lo12(generic_RC)
	ld.w	$a5, $a0, 1388
	ld.w	$a7, $a1, 4
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	beqz	$a7, .LBB26_23
# %bb.20:
	ld.w	$a5, $a0, 1376
	st.w	$a1, $a0, 1456
	st.w	$a5, $a0, 1468
	b	.LBB26_15
.LBB26_21:
	ld.w	$a1, $a1, 40
	ori	$a5, $zero, 2
	blt	$a1, $a5, .LBB26_14
# %bb.22:
	ld.w	$a1, $a0, 1356
	b	.LBB26_13
.LBB26_23:
	ld.w	$a5, $a0, 1376
	st.w	$a1, $a0, 1460
	st.w	$a5, $a0, 1464
	b	.LBB26_15
.Lfunc_end26:
	.size	updateNegativeTarget, .Lfunc_end26-updateNegativeTarget
                                        # -- End function
	.globl	predictCurrPicMAD               # -- Begin function predictCurrPicMAD
	.p2align	5
	.type	predictCurrPicMAD,@function
predictCurrPicMAD:                      # @predictCurrPicMAD
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a2, $a1, 4704
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB27_2
# %bb.1:
	ldptr.w	$a1, $a1, 4708
	beqz	$a1, .LBB27_6
.LBB27_2:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.w	$a1, $a1, 4
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB27_6
# %bb.3:
	ld.w	$a1, $a0, 1388
	ld.w	$a4, $a0, 1368
	ld.d	$a3, $a0, 1496
	fld.d	$fa0, $a0, 88
	sub.w	$a2, $a1, $a4
	slli.d	$a5, $a2, 3
	fldx.d	$fa2, $a3, $a5
	fld.d	$fa1, $a0, 96
	fmadd.d	$fa2, $fa0, $fa2, $fa1
	fst.d	$fa2, $a0, 1400
	st.d	$zero, $a0, 1416
	blez	$a4, .LBB27_9
# %bb.4:                                # %.lr.ph49
	alsl.d	$a3, $a1, $a3, 3
	addi.d	$a3, $a3, -8
	movgr2fr.d	$fa2, $zero
	.p2align	4, , 16
.LBB27_5:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a3, 0
	addi.d	$a1, $a1, -1
	fmadd.d	$fa3, $fa0, $fa3, $fa1
	fst.d	$fa3, $a0, 1408
	fmadd.d	$fa2, $fa3, $fa3, $fa2
	fst.d	$fa2, $a0, 1416
	addi.d	$a3, $a3, -8
	blt	$a2, $a1, .LBB27_5
	b	.LBB27_9
.LBB27_6:
	ld.w	$a1, $a0, 1388
	ld.w	$a4, $a0, 1368
	ld.d	$a3, $a0, 1472
	fld.d	$fa0, $a0, 88
	sub.w	$a2, $a1, $a4
	slli.d	$a5, $a2, 3
	fldx.d	$fa2, $a3, $a5
	fld.d	$fa1, $a0, 96
	fmadd.d	$fa2, $fa0, $fa2, $fa1
	fst.d	$fa2, $a0, 1400
	st.d	$zero, $a0, 1416
	blez	$a4, .LBB27_9
# %bb.7:                                # %.lr.ph
	alsl.d	$a3, $a1, $a3, 3
	addi.d	$a3, $a3, -8
	movgr2fr.d	$fa2, $zero
	.p2align	4, , 16
.LBB27_8:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a3, 0
	addi.d	$a1, $a1, -1
	fmadd.d	$fa3, $fa0, $fa3, $fa1
	fst.d	$fa3, $a0, 1408
	fmadd.d	$fa2, $fa3, $fa3, $fa2
	fst.d	$fa2, $a0, 1416
	addi.d	$a3, $a3, -8
	blt	$a2, $a1, .LBB27_8
.LBB27_9:                               # %.loopexit
	ret
.Lfunc_end27:
	.size	predictCurrPicMAD, .Lfunc_end27-predictCurrPicMAD
                                        # -- End function
	.globl	updateModelQPBU                 # -- Begin function updateModelQPBU
	.p2align	5
	.type	updateModelQPBU,@function
updateModelQPBU:                        # @updateModelQPBU
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 1536
	move	$s0, $a2
	fld.d	$fs0, $fp, 1400
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fld.d	$fa1, $fp, 1416
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	ld.w	$a0, $fp, 1376
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	sub.w	$a0, $a1, $a0
	fld.s	$fa0, $fp, 4
	ld.w	$a1, $fp, 1388
	fld.s	$fa1, $fp, 0
	vldi	$vr2, -1264
	fmul.s	$fa0, $fa0, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa1, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	fld.d	$fs3, $fp, 1304
	fld.d	$fs1, $fp, 1296
	movgr2fr.w	$fa0, $a0
	movgr2fr.d	$fs4, $zero
	fcmp.ceq.d	$fcc0, $fs3, $fs4
	ffint.d.w	$fs2, $fa0
	bcnez	$fcc0, .LBB28_5
# %bb.1:
	fmul.d	$fa0, $fs0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	vldi	$vr1, -1008
	fmul.d	$fa1, $fs3, $fa1
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fa1, $fs2
	fmadd.d	$fa0, $fa0, $fs1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB28_5
# %bb.2:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB28_6
.LBB28_3:                               # %.split
	fneg.d	$fa0, $fs1
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	fcmp.cle.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB28_5
# %bb.4:
	fadd.d	$fs1, $fs3, $fs3
	fmov.d	$fs2, $fa0
.LBB28_5:
	fmul.d	$fa0, $fs0, $fs1
	fdiv.d	$fa0, $fa0, $fs2
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(Qstep2QP)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1440
	add.w	$a2, $a1, $s0
	slt	$a3, $a2, $a0
	masknez	$a0, $a0, $a3
	maskeqz	$a2, $a2, $a3
	or	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a2, $a2, 5128
	ld.w	$a3, $fp, 1444
	sltu	$a2, $a2, $a3
	ori	$a3, $zero, 6
	masknez	$a3, $a3, $a2
	ld.w	$a4, $fp, 1384
	ori	$a5, $zero, 3
	maskeqz	$a5, $a5, $a2
	or	$a3, $a5, $a3
	add.w	$a3, $a4, $a3
	slt	$a5, $a3, $a0
	masknez	$a0, $a0, $a5
	maskeqz	$a3, $a3, $a5
	or	$a0, $a3, $a0
	sub.w	$a1, $s0, $a1
	ld.w	$a3, $fp, 64
	slt	$a5, $a1, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a1, $a1, $a5
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a3, $a1
	or	$a0, $a0, $a1
	addi.d	$a1, $zero, -6
	masknez	$a1, $a1, $a2
	addi.d	$a3, $zero, -3
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	add.w	$a1, $a4, $a1
	slt	$a2, $a0, $a1
	ld.w	$a3, $fp, 68
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	st.w	$a0, $fp, 1344
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB28_6:                               # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB28_3
.Lfunc_end28:
	.size	updateModelQPBU, .Lfunc_end28-updateModelQPBU
                                        # -- End function
	.globl	updateLastBU                    # -- Begin function updateLastBU
	.p2align	5
	.type	updateLastBU,@function
updateLastBU:                           # @updateLastBU
# %bb.0:
	pcalau12i	$a2, %pc_hi20(generic_RC)
	beqz	$a1, .LBB29_3
# %bb.1:
	ld.d	$a1, $a2, %pc_lo12(generic_RC)
	ld.w	$a1, $a1, 4
	beqz	$a1, .LBB29_3
.LBB29_2:
	ret
.LBB29_3:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a3, $a1, 1148
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	beqz	$a3, .LBB29_7
.LBB29_4:
	ld.w	$a3, $a0, 1364
	ld.w	$a4, $a0, 1388
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	ld.w	$a1, $a1, 1560
	ld.w	$a3, $a2, 48
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	addi.w	$a4, $a1, -2
	movfr2gr.s	$a1, $fa0
	bne	$a3, $a4, .LBB29_6
# %bb.5:
	st.w	$a1, $a0, 1448
.LBB29_6:
	ld.w	$a3, $a2, 44
	ld.w	$a4, $a0, 1356
	add.d	$a3, $a3, $a1
	st.w	$a3, $a2, 44
	ld.w	$a2, $a0, 1376
	st.w	$a4, $a0, 1352
	st.w	$a1, $a0, 1356
	st.w	$a1, $a0, 1384
	st.w	$a2, $a0, 1380
	ret
.LBB29_7:
	ldptr.w	$a3, $a1, 4704
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB29_10
# %bb.8:
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB29_4
# %bb.9:
	ldptr.w	$a1, $a1, 4708
	beqz	$a1, .LBB29_2
.LBB29_10:
	ld.d	$a1, $a2, %pc_lo12(generic_RC)
	ld.w	$a2, $a0, 1364
	ld.w	$a3, $a0, 1388
	ld.w	$a4, $a1, 4
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	beqz	$a4, .LBB29_12
# %bb.11:
	ld.w	$a2, $a0, 1376
	st.w	$a1, $a0, 1456
	st.w	$a2, $a0, 1468
	ret
.LBB29_12:
	ld.w	$a2, $a0, 1376
	st.w	$a1, $a0, 1460
	st.w	$a2, $a0, 1464
	ret
.Lfunc_end29:
	.size	updateLastBU, .Lfunc_end29-updateLastBU
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_global_buffers: (*prc)"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"rc_alloc: lprc->BUPFMAD"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"rc_alloc: lprc->BUCFMAD"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"rc_alloc: lprc->FCBUCFMAD"
	.size	.L.str.3, 26

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"rc_alloc: lprc->FCBUPFMAD"
	.size	.L.str.4, 26

	.type	updateQP,@object                # @updateQP
	.comm	updateQP,8,8
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\n RCUpdateMode=3 and HierarchicalCoding == 3 are currently not supported"
	.size	.L.str.5, 73

	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	updateRCModel.m_rgRejected,@object # @updateRCModel.m_rgRejected
	.local	updateRCModel.m_rgRejected
	.comm	updateRCModel.m_rgRejected,84,8
	.type	updateRCModel.error,@object     # @updateRCModel.error
	.local	updateRCModel.error
	.comm	updateRCModel.error,168,8
	.type	updateMADModel.PictureRejected,@object # @updateMADModel.PictureRejected
	.local	updateMADModel.PictureRejected
	.comm	updateMADModel.PictureRejected,84,8
	.type	updateMADModel.error,@object    # @updateMADModel.error
	.local	updateMADModel.error
	.comm	updateMADModel.error,168,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
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
	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.type	quadratic_RC,@object            # @quadratic_RC
	.comm	quadratic_RC,8,8
	.type	quadratic_RC_init,@object       # @quadratic_RC_init
	.comm	quadratic_RC_init,8,8
	.type	quadratic_RC_best,@object       # @quadratic_RC_best
	.comm	quadratic_RC_best,8,8
	.type	.Lswitch.table.rc_init_seq,@object # @switch.table.rc_init_seq
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.rc_init_seq:
	.dword	updateQPRC1
	.dword	updateQPRC2
	.dword	updateQPRC3
	.size	.Lswitch.table.rc_init_seq, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym updateQPRC0
	.addrsig_sym updateQPRC1
	.addrsig_sym updateQPRC2
	.addrsig_sym updateQPRC3
	.addrsig_sym updateRCModel.m_rgRejected
	.addrsig_sym updateMADModel.PictureRejected
