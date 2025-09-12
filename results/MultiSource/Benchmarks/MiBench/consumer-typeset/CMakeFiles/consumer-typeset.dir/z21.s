	.file	"z21.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function SizeGalley
.LCPI0_0:
	.word	0x42c80000                      # float 100
.LCPI0_2:
	.word	0x43000000                      # float 128
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	SizeGalley
	.p2align	5
	.type	SizeGalley,@function
SizeGalley:                             # @SizeGalley
# %bb.0:
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 328                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$t0, $zero, 8
	move	$s3, $a7
	move	$s2, $a6
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	move	$s1, $a3
	move	$s7, $a2
	move	$s4, $a1
	bne	$a0, $t0, .LBB0_2
# %bb.1:
	ld.d	$a0, $fp, 8
	bne	$a0, $fp, .LBB0_3
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_3:
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_5
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_5:
	ld.d	$a0, $sp, 464
	ld.d	$a1, $sp, 456
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 432
	ld.d	$s0, $fp, 8
	addi.d	$a1, $fp, 32
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 8
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB0_6
# %bb.7:
	st.d	$s5, $sp, 296
	st.d	$a0, $sp, 288
	st.d	$zero, $sp, 320
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 256
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 272
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.bu	$a0, $a0, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a1, $a1, %got_pc_lo12(zz_size)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	st.w	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a4, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s6, $a4, $a1
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	beqz	$s6, .LBB0_9
# %bb.8:
	alsl.d	$a0, $a0, $a4, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s6, $a1, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $a0, 0
	b	.LBB0_10
.LBB0_9:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	move	$s6, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s6, $a0, 0
.LBB0_10:
	ori	$a0, $zero, 17
	st.b	$a0, $s6, 32
	st.d	$s6, $s6, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$s6, $s6, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_12
# %bb.11:
	alsl.d	$a1, $a2, $a4, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_13
.LBB0_12:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
.LBB0_13:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$t0, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $t0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a5, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a6, $a1, %got_pc_lo12(zz_hold)
	st.d	$s6, $a6, 0
	ld.d	$a1, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a7, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $a5, 0
	ld.d	$a1, $a6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a5, 0
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $t0, 0
	st.d	$a1, $a3, 8
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $a5, 0
	st.d	$s4, $a6, 0
	beqz	$s4, .LBB0_16
# %bb.14:
	beqz	$a0, .LBB0_16
# %bb.15:
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a7, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_16:
	pcalau12i	$a0, %got_pc_hi20(AllowCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(AllowCrossDb)
	ld.w	$a0, $a0, 0
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	st.d	$a7, $sp, 192                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_21
# %bb.17:
	ld.bu	$a0, $s0, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_21
# %bb.18:
	ld.d	$a0, $s0, 80
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_21
# %bb.19:
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(FindOptimize)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_21
# %bb.20:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(SetOptimize)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
.LBB0_21:
	beqz	$s1, .LBB0_24
# %bb.22:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 139
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_25
# %bb.23:
	st.d	$a0, $a6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB0_26
.LBB0_24:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	bstrpick.d	$a0, $a0, 7, 7
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 288
	st.d	$a1, $sp, 8
	addi.d	$a3, $sp, 272
	addi.d	$a4, $sp, 256
	addi.d	$a5, $sp, 296
	addi.d	$a6, $sp, 320
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB0_39
.LBB0_25:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a6, 0
.LBB0_26:
	ori	$a1, $zero, 139
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 139
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a4, $a1
	st.d	$a0, $sp, 272
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB0_28
# %bb.27:
	st.d	$a1, $a6, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a0, $a2, 0
	b	.LBB0_29
.LBB0_28:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$fp, $a6
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $fp, 0
.LBB0_29:
	ori	$a0, $zero, 139
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	st.d	$a1, $sp, 256
	bstrpick.d	$a0, $a0, 7, 7
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 288
	st.d	$a1, $sp, 8
	addi.d	$a3, $sp, 272
	addi.d	$a4, $sp, 256
	addi.d	$a5, $sp, 296
	addi.d	$a6, $sp, 320
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272
	ld.d	$a2, $a1, 8
	move	$s0, $a0
	beq	$a2, $a1, .LBB0_31
# %bb.30:
	ld.d	$a0, $sp, 256
	ld.d	$a3, $a0, 8
	bne	$a3, $a0, .LBB0_32
.LBB0_31:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272
	ld.d	$a2, $a1, 8
.LBB0_32:
	move	$a0, $a2
	.p2align	4, , 16
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a3, $a0, 32
	beqz	$a3, .LBB0_33
# %bb.34:
	ld.d	$a4, $sp, 256
	ld.d	$a3, $a4, 8
	st.d	$a0, $sp, 296
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a5, 16
	ld.bu	$a6, $a5, 32
	beqz	$a6, .LBB0_35
# %bb.36:
	st.d	$a5, $sp, 288
	ld.d	$a6, $a1, 0
	beq	$a2, $a6, .LBB0_287
.LBB0_37:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 80
	addi.d	$s1, $s0, 32
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272
.LBB0_38:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_39:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 17
	slli.d	$a0, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_41
# %bb.40:
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a1, $a2, 0
	b	.LBB0_42
.LBB0_41:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
.LBB0_42:
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 304
	addi.d	$a2, $sp, 304
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s6, 42
	andi	$a2, $a1, 256
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	bnez	$a2, .LBB0_47
# %bb.43:
	andi	$a1, $a1, 512
	beqz	$a1, .LBB0_55
# %bb.44:
	ld.d	$a1, $s6, 104
	beqz	$a1, .LBB0_55
# %bb.45:
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 17
	bne	$a1, $a2, .LBB0_55
# %bb.46:
	pcaddu18i	$ra, %call36(Hyphenate)
	jirl	$ra, $ra, 0
	b	.LBB0_55
.LBB0_47:
	ld.w	$a1, $s3, 0
	st.w	$a1, $s6, 64
	ld.w	$a1, $s3, 4
	st.w	$a1, $s6, 68
	ld.w	$a1, $s3, 8
	st.w	$a1, $s6, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 48
	ld.w	$a1, $s3, 0
	blt	$a1, $a0, .LBB0_50
# %bb.48:
	ld.w	$a1, $s0, 56
	ld.w	$a2, $s3, 4
	add.w	$a3, $a1, $a0
	blt	$a2, $a3, .LBB0_50
# %bb.49:
	ld.w	$a2, $s3, 8
	bge	$a2, $a1, .LBB0_51
.LBB0_50:
	addi.d	$s1, $s0, 32
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 56
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 13
	ori	$a3, $zero, 1
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 48
.LBB0_51:
	st.w	$a0, $s6, 48
	ld.w	$a1, $s0, 56
	st.w	$a1, $s6, 56
	ld.w	$a2, $s3, 0
	blt	$a2, $a0, .LBB0_54
# %bb.52:
	ld.w	$a2, $s3, 4
	add.w	$a0, $a1, $a0
	blt	$a2, $a0, .LBB0_54
# %bb.53:
	ld.w	$a0, $s3, 8
	bge	$a0, $a1, .LBB0_55
.LBB0_54:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_55:
	ld.hu	$a0, $s6, 42
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4063
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	and	$a0, $a0, $a1
	st.h	$a0, $s6, 42
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	beqz	$s7, .LBB0_149
# %bb.56:                               # %.preheader631
	ld.d	$s7, $s6, 8
	beq	$s7, $s6, .LBB0_149
# %bb.57:                               # %.preheader629.preheader
	ori	$s4, $zero, 18
	pcalau12i	$a0, %pc_hi20(.LJTI0_0)
	addi.d	$s2, $a0, %pc_lo12(.LJTI0_0)
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	move	$fp, $s6
	b	.LBB0_61
.LBB0_58:                               #   in Loop: Header=BB0_61 Depth=1
	ori	$a0, $a0, 16
.LBB0_59:                               # %.thread
                                        #   in Loop: Header=BB0_61 Depth=1
	st.h	$a0, $s7, 42
.LBB0_60:                               # %.thread
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$fp, $fp, 8
	ld.d	$s7, $fp, 8
	addi.d	$s8, $fp, 8
	beq	$s7, $s6, .LBB0_149
	.p2align	4, , 16
.LBB0_61:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_71 Depth 2
                                        #     Child Loop BB0_87 Depth 2
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_99 Depth 2
                                        #       Child Loop BB0_100 Depth 3
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB0_61
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=1
	addi.d	$a0, $a0, -1
	bltu	$s4, $a0, .LBB0_60
# %bb.63:                               #   in Loop: Header=BB0_61 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s2, $a0
	add.d	$a0, $s2, $a0
	jr	$a0
.LBB0_64:                               #   in Loop: Header=BB0_61 Depth=1
	ld.hu	$a1, $s6, 42
	ld.hu	$a0, $s7, 42
	andi	$a1, $a1, 256
	bnez	$a1, .LBB0_58
# %bb.65:                               #   in Loop: Header=BB0_61 Depth=1
	ori	$a0, $a0, 8
	b	.LBB0_59
.LBB0_66:                               #   in Loop: Header=BB0_61 Depth=1
	ld.hu	$a0, $s7, 44
	andi	$a0, $a0, 512
	bnez	$a0, .LBB0_60
# %bb.67:                               #   in Loop: Header=BB0_61 Depth=1
	ld.h	$a0, $s6, 42
	ori	$a0, $a0, 32
	st.h	$a0, $s6, 42
	b	.LBB0_60
.LBB0_68:                               #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $s7, 24
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a5, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
.LBB0_70:                               #   in Loop: Header=BB0_61 Depth=1
	ld.d	$s4, $s7, 0
	.p2align	4, , 16
.LBB0_71:                               #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB0_71
# %bb.72:                               #   in Loop: Header=BB0_61 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_83
.LBB0_73:                               #   in Loop: Header=BB0_61 Depth=1
	ori	$s4, $zero, 18
	b	.LBB0_60
.LBB0_74:                               #   in Loop: Header=BB0_61 Depth=1
	ld.hu	$a0, $s6, 42
	andi	$a0, $a0, 256
	beqz	$a0, .LBB0_60
	b	.LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_61 Depth=1
	ld.hu	$a0, $s6, 42
	andi	$a0, $a0, 256
	bnez	$a0, .LBB0_60
.LBB0_76:                               #   in Loop: Header=BB0_61 Depth=1
	ld.d	$s0, $s7, 8
	beq	$s0, $s7, .LBB0_81
# %bb.77:                               #   in Loop: Header=BB0_61 Depth=1
	ld.bu	$a0, $s0, 32
	ld.d	$s1, $s7, 24
	beqz	$a0, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
.LBB0_79:                               #   in Loop: Header=BB0_61 Depth=1
	st.d	$s0, $s3, 0
	st.d	$s7, $a7, 0
	ld.d	$a0, $s7, 0
	st.d	$a0, $t0, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
	st.d	$s0, $s3, 0
	st.d	$s1, $a7, 0
	beqz	$s1, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $s1, 0
	st.d	$a0, $t0, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
.LBB0_81:                               #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $s7, 24
	ld.d	$a2, $a0, 24
	st.d	$a0, $s5, 0
	beq	$a2, $a0, .LBB0_143
.LBB0_82:                               #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a1, $a0, 16
	st.d	$a2, $s3, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB0_144
.LBB0_83:                               #   in Loop: Header=BB0_61 Depth=1
	ori	$a1, $zero, 8
	bltu	$a1, $a0, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_61 Depth=1
	ld.h	$a0, $s4, 42
	ori	$a0, $a0, 16
	st.h	$a0, $s4, 42
	ori	$s4, $zero, 18
	b	.LBB0_60
.LBB0_85:                               #   in Loop: Header=BB0_61 Depth=1
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB0_73
# %bb.86:                               #   in Loop: Header=BB0_61 Depth=1
	ld.d	$s3, $s7, 8
	.p2align	4, , 16
.LBB0_87:                               #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB0_87
# %bb.88:                               #   in Loop: Header=BB0_61 Depth=1
	ori	$a1, $zero, 16
	beq	$a0, $a1, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a5, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
.LBB0_90:                               # %.loopexit628
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a2, $s4, 24
	move	$a0, $a2
	.p2align	4, , 16
.LBB0_91:                               #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_91
# %bb.92:                               #   in Loop: Header=BB0_61 Depth=1
	beq	$s3, $a0, .LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $s4, 24
.LBB0_94:                               #   in Loop: Header=BB0_61 Depth=1
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s1, $s4, 0
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	beq	$s1, $s4, .LBB0_136
# %bb.95:                               # %.preheader627.lr.ph
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $s7, 8
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB0_99
.LBB0_96:                               # %.thread832
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$s5, $a7, 0
.LBB0_97:                               # %.sink.split
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $t0, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_98:                               #   in Loop: Header=BB0_99 Depth=2
	ld.d	$s1, $s1, 0
	beq	$s1, $s4, .LBB0_136
.LBB0_99:                               # %.preheader627
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_100 Depth 3
	move	$s5, $s1
	.p2align	4, , 16
.LBB0_100:                              #   Parent Loop BB0_61 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB0_100
# %bb.101:                              #   in Loop: Header=BB0_99 Depth=2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_104
# %bb.102:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_106
# %bb.103:                              #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_107
	.p2align	4, , 16
.LBB0_104:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 9
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $a6, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s0, .LBB0_109
# %bb.105:                              #   in Loop: Header=BB0_99 Depth=2
	st.d	$s0, $a7, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $a6, 3
	st.d	$a1, $a0, 0
	b	.LBB0_110
.LBB0_106:                              #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
.LBB0_107:                              #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s8, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a1, $a7, 0
	beqz	$a1, .LBB0_96
# %bb.108:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	b	.LBB0_135
.LBB0_109:                              #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	move	$s0, $a0
	st.d	$a0, $a7, 0
.LBB0_110:                              #   in Loop: Header=BB0_99 Depth=2
	ori	$a0, $zero, 9
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.w	$a0, $s3, 48
	st.w	$a0, $s0, 48
	ld.w	$a0, $s3, 56
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	st.w	$a0, $s0, 56
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
.LBB0_113:                              #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s8, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a1, $a7, 0
	beqz	$a1, .LBB0_116
# %bb.114:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a5, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $a4, 0
	st.d	$s0, $a7, 0
	beqz	$a1, .LBB0_118
# %bb.115:                              # %._crit_edge713
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $a1, 16
	b	.LBB0_117
.LBB0_116:                              # %.thread618
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$s0, $a7, 0
	move	$a1, $a0
.LBB0_117:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $s0, 16
	st.d	$a0, $s0, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $t0, 0
	st.d	$s0, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB0_118:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
.LBB0_121:                              #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$s0, $a7, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a4, 0
	st.d	$a0, $a3, 8
	ld.d	$a0, $a5, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	st.d	$a0, $a4, 0
	st.d	$a1, $a7, 0
	beqz	$a1, .LBB0_124
# %bb.122:                              #   in Loop: Header=BB0_99 Depth=2
	beqz	$a0, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $t0, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB0_124:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
.LBB0_127:                              #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a1, $a7, 0
	beqz	$a1, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s5, $a7, 0
	bnez	$a0, .LBB0_130
	b	.LBB0_131
.LBB0_129:                              # %.thread833
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$s5, $a7, 0
.LBB0_130:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $t0, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_131:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
.LBB0_134:                              #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$s0, $a7, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
.LBB0_135:                              #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s5, $a7, 0
	bnez	$a0, .LBB0_97
	b	.LBB0_98
.LBB0_136:                              # %._crit_edge
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 24
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	st.d	$a4, $s5, 0
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	beq	$a0, $a4, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a1, $a4, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
.LBB0_138:                              #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $a4, 8
	st.d	$a4, $a7, 0
	ori	$s4, $zero, 18
	beq	$a0, $a4, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_61 Depth=1
	st.d	$a0, $s3, 0
	ld.d	$a1, $a4, 0
	st.d	$a1, $a0, 0
	ld.d	$a0, $a7, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $s5, 0
	st.d	$a0, $a0, 8
.LBB0_140:                              #   in Loop: Header=BB0_61 Depth=1
	ld.bu	$a0, $a4, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $a4, 33
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $a6, $a1
	st.d	$a4, $a7, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.d	$a1, $a4, 0
	ld.w	$a0, $a2, 0
	ld.d	$a1, $a7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a6, $a0
	ld.d	$a0, $s7, 24
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $s7, 24
.LBB0_142:                              #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a2, $a0, 24
	st.d	$a0, $s5, 0
	bne	$a2, $a0, .LBB0_82
.LBB0_143:                              #   in Loop: Header=BB0_61 Depth=1
	move	$a2, $zero
.LBB0_144:                              #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $a7, 0
	beq	$a3, $a0, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_61 Depth=1
	st.d	$a3, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $a7, 0
	ld.d	$a0, $s3, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s5, 0
	st.d	$a2, $a2, 8
.LBB0_146:                              #   in Loop: Header=BB0_61 Depth=1
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a6, $a3
	st.d	$a0, $a7, 0
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $a4, 0
	ld.d	$a3, $a7, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $a6, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_61 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
.LBB0_148:                              #   in Loop: Header=BB0_61 Depth=1
	ld.d	$fp, $fp, 0
	b	.LBB0_60
.LBB0_149:                              # %.loopexit632
	ld.d	$a0, $sp, 304
	ld.d	$fp, $a0, 8
	beq	$fp, $a0, .LBB0_187
# %bb.150:                              # %.preheader625.lr.ph
	ori	$s5, $zero, 136
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$s8, $a1, %got_pc_lo12(no_fpos)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$s0, $a1, %pc_lo12(.L.str.16)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$s4, $a1, %pc_lo12(.L.str.17)
	lu12i.w	$a1, 2047
	ori	$s7, $a1, 4095
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_153
	.p2align	4, , 16
.LBB0_151:                              #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a0, $sp, 304
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
.LBB0_152:                              # %.loopexit626
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$fp, $fp, 8
	beq	$fp, $a0, .LBB0_187
.LBB0_153:                              # %.preheader625
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_154 Depth 2
                                        #     Child Loop BB0_163 Depth 2
	move	$a1, $fp
	.p2align	4, , 16
.LBB0_154:                              #   Parent Loop BB0_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_154
# %bb.155:                              #   in Loop: Header=BB0_153 Depth=1
	bne	$a2, $s5, .LBB0_152
# %bb.156:                              #   in Loop: Header=BB0_153 Depth=1
	ld.d	$s1, $a1, 80
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 34
	beq	$a0, $a1, .LBB0_158
# %bb.157:                              #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_158:                              #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a0, $s1, 64
	beqz	$a0, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a5, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_160:                              #   in Loop: Header=BB0_153 Depth=1
	ld.d	$s2, $s1, 8
	bne	$s2, $s1, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 8
.LBB0_162:                              # %.preheader905
                                        #   in Loop: Header=BB0_153 Depth=1
	addi.d	$s3, $s1, 32
	.p2align	4, , 16
.LBB0_163:                              #   Parent Loop BB0_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB0_163
# %bb.164:                              #   in Loop: Header=BB0_153 Depth=1
	ld.hu	$a0, $s6, 42
	andi	$a0, $a0, 256
	bnez	$a0, .LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_153 Depth=1
	ori	$a0, $zero, 21
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a2, $s0
	move	$a4, $s3
	move	$a5, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_166:                              #   in Loop: Header=BB0_153 Depth=1
	addi.d	$a1, $sp, 240
	addi.d	$a3, $sp, 312
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 240
	ld.w	$a0, $sp, 244
	bne	$a1, $s7, .LBB0_170
# %bb.167:                              #   in Loop: Header=BB0_153 Depth=1
	bne	$a0, $s7, .LBB0_170
# %bb.168:                              #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a1, $sp, 248
	bne	$a1, $s7, .LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	b	.LBB0_174
	.p2align	4, , 16
.LBB0_170:                              #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a1, $s2, 48
	ld.w	$a2, $s2, 56
	add.w	$a1, $a2, $a1
	beqz	$a1, .LBB0_173
# %bb.171:                              #   in Loop: Header=BB0_153 Depth=1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_178
# %bb.172:                              #   in Loop: Header=BB0_153 Depth=1
	ori	$a0, $zero, 21
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_153 Depth=1
	ori	$a0, $zero, 21
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
.LBB0_174:                              #   in Loop: Header=BB0_153 Depth=1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 128
.LBB0_175:                              #   in Loop: Header=BB0_153 Depth=1
	st.w	$a0, $s1, 72
	st.w	$a0, $s1, 64
	move	$s3, $s2
.LBB0_176:                              #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a1, $s3, 48
	mul.w	$a1, $a0, $a1
	ld.w	$a2, $s3, 56
	bstrpick.d	$a3, $a1, 62, 56
	add.w	$a1, $a1, $a3
	srai.d	$a1, $a1, 7
	mul.w	$a0, $a2, $a0
	bstrpick.d	$a2, $a0, 62, 56
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 7
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s1, 42
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_151
# %bb.177:                              #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a0, $s3, 52
	ld.w	$a2, $s1, 72
	mul.w	$a0, $a2, $a0
	ld.w	$a3, $s3, 60
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srai.d	$a1, $a0, 7
	mul.w	$a0, $a3, $a2
	bstrpick.d	$a2, $a0, 62, 56
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 7
	ori	$a3, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	b	.LBB0_151
.LBB0_178:                              #   in Loop: Header=BB0_153 Depth=1
	fcvt.d.s	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB0_181
# %bb.179:                              #   in Loop: Header=BB0_153 Depth=1
	beqz	$a0, .LBB0_182
# %bb.180:                              #   in Loop: Header=BB0_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	b	.LBB0_183
.LBB0_181:                              #   in Loop: Header=BB0_153 Depth=1
	slli.w	$a0, $a0, 7
	div.w	$a0, $a0, $a1
	b	.LBB0_175
.LBB0_182:                              #   in Loop: Header=BB0_153 Depth=1
	ori	$a0, $zero, 21
	ori	$a1, $zero, 6
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB0_183:                              #   in Loop: Header=BB0_153 Depth=1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s2, 32
	ori	$a0, $zero, 128
	st.w	$a0, $s1, 72
	st.w	$a0, $s1, 64
	ori	$a0, $zero, 11
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.wu	$a0, $a0, 40
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $s3, 48
	lu12i.w	$a1, 393216
	and	$a0, $a0, $a1
	st.w	$a0, $s3, 40
	ld.d	$a0, $s2, 24
	beq	$a0, $s2, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a1, $s2, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s3, 16
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	st.d	$a1, $s3, 16
	st.d	$s3, $a1, 24
	b	.LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_153 Depth=1
	move	$a0, $zero
.LBB0_186:                              # %.thread619
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	st.d	$a0, $a2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 72
	b	.LBB0_176
.LBB0_187:                              # %._crit_edge666
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$fp, $s6, 8
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	beq	$fp, $s6, .LBB0_276
# %bb.188:                              # %.preheader623.lr.ph
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	ori	$a1, $zero, 20
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$s1, $zero
	ori	$s7, $zero, 18
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$s4, $zero, 9
	b	.LBB0_192
	.p2align	4, , 16
.LBB0_189:                              #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a5, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 304
.LBB0_190:                              #   in Loop: Header=BB0_192 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $t0, $a2
	st.d	$a0, $t1, 0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $t1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $t0, $a0
	ori	$a1, $zero, 20
.LBB0_191:                              # %.loopexit624
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$fp, $fp, 8
	beq	$fp, $s6, .LBB0_276
.LBB0_192:                              # %.preheader623
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_193 Depth 2
                                        #     Child Loop BB0_204 Depth 2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_216 Depth 3
                                        #       Child Loop BB0_219 Depth 3
                                        #         Child Loop BB0_220 Depth 4
                                        #       Child Loop BB0_224 Depth 3
	move	$s0, $fp
	.p2align	4, , 16
.LBB0_193:                              #   Parent Loop BB0_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_193
# %bb.194:                              #   in Loop: Header=BB0_192 Depth=1
	beq	$a0, $s5, .LBB0_191
# %bb.195:                              #   in Loop: Header=BB0_192 Depth=1
	addi.d	$a0, $a0, -119
	bltu	$a0, $a1, .LBB0_191
# %bb.196:                              #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_198
# %bb.197:                              #   in Loop: Header=BB0_192 Depth=1
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s2, $t1
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
.LBB0_199:                              #   in Loop: Header=BB0_192 Depth=1
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 304
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 304
	move	$a0, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 304
	ld.d	$s8, $s0, 8
	beq	$s8, $s0, .LBB0_269
# %bb.200:                              # %.preheader622.preheader
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_204
.LBB0_201:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
.LBB0_202:                              #   in Loop: Header=BB0_204 Depth=2
	move	$s1, $s5
	.p2align	4, , 16
.LBB0_203:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$s8, $s8, 8
	ld.d	$s0, $sp, 304
	beq	$s8, $s0, .LBB0_268
.LBB0_204:                              # %.preheader622
                                        #   Parent Loop BB0_192 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_216 Depth 3
                                        #       Child Loop BB0_219 Depth 3
                                        #         Child Loop BB0_220 Depth 4
                                        #       Child Loop BB0_224 Depth 3
	move	$s5, $s1
	move	$s0, $s8
	.p2align	4, , 16
.LBB0_205:                              #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_205
# %bb.206:                              #   in Loop: Header=BB0_204 Depth=2
	ld.hu	$a1, $s0, 42
	and	$a3, $a1, $s2
	addi.d	$a2, $a0, -120
	st.h	$a3, $s0, 42
	bltu	$s7, $a2, .LBB0_201
# %bb.207:                              #   in Loop: Header=BB0_204 Depth=2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_1)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	move	$s1, $s5
	jr	$a2
.LBB0_208:                              #   in Loop: Header=BB0_204 Depth=2
	ori	$s1, $zero, 1
	bnez	$s5, .LBB0_203
# %bb.209:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_257
# %bb.210:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_255
# %bb.211:                              #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_256
.LBB0_212:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $s0, 80
	ld.d	$a2, $a0, 80
	ld.hu	$a2, $a2, 41
	bstrpick.d	$a2, $a2, 11, 11
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	and	$a2, $a3, $a2
	slli.d	$a2, $a2, 6
	lu12i.w	$a3, 15
	ori	$a3, $a3, 3998
	and	$a1, $a1, $a3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	or	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.h	$a1, $s0, 42
	ld.d	$a0, $a0, 80
	pcalau12i	$a1, %got_pc_hi20(GalleySym)
	ld.d	$a1, $a1, %got_pc_lo12(GalleySym)
	ld.d	$a3, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(ForceGalleySym)
	ld.d	$a2, $a2, %got_pc_lo12(ForceGalleySym)
	beq	$a0, $a3, .LBB0_231
# %bb.213:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a3, $a2, 0
	beq	$a0, $a3, .LBB0_231
# %bb.214:                              #   in Loop: Header=BB0_204 Depth=2
	move	$a1, $zero
	b	.LBB0_232
.LBB0_215:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$s2, $s0, 80
	ld.bu	$a0, $s2, 32
	addi.d	$a1, $a0, -32
	sltu	$s3, $zero, $a1
	ori	$a1, $zero, 24
	masknez	$a1, $a1, $s3
	ori	$a2, $zero, 16
	maskeqz	$a2, $a2, $s3
	or	$a3, $a2, $a1
	ldx.d	$a1, $s2, $a3
	addi.d	$s0, $s2, 32
	.p2align	4, , 16
.LBB0_216:                              #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_216
# %bb.217:                              # %.preheader
                                        #   in Loop: Header=BB0_204 Depth=2
	ori	$a4, $zero, 16
	sub.d	$a4, $a4, $s3
	beq	$a2, $s4, .LBB0_219
# %bb.218:                              # %.preheader
                                        #   in Loop: Header=BB0_204 Depth=2
	bne	$a4, $a2, .LBB0_223
	.p2align	4, , 16
.LBB0_219:                              # %.critedge
                                        #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_220 Depth 4
	ldx.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB0_220:                              #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        #       Parent Loop BB0_219 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_220
# %bb.221:                              # %.loopexit
                                        #   in Loop: Header=BB0_219 Depth=3
	beq	$a2, $s4, .LBB0_219
# %bb.222:                              # %.loopexit
                                        #   in Loop: Header=BB0_219 Depth=3
	beq	$a4, $a2, .LBB0_219
.LBB0_223:                              # %._crit_edge669
                                        #   in Loop: Header=BB0_204 Depth=2
	ori	$a3, $zero, 19
	masknez	$a3, $a3, $s3
	ori	$a4, $zero, 17
	maskeqz	$a4, $a4, $s3
	or	$a5, $a4, $a3
	ld.d	$a4, $s2, 8
	xori	$a6, $s3, 19
	addi.d	$s1, $s3, 30
	addi.d	$a3, $s3, 24
	.p2align	4, , 16
.LBB0_224:                              #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a4, 16
	ld.bu	$a7, $a4, 32
	beqz	$a7, .LBB0_224
# %bb.225:                              #   in Loop: Header=BB0_204 Depth=2
	beq	$a5, $a2, .LBB0_233
# %bb.226:                              #   in Loop: Header=BB0_204 Depth=2
	beq	$a6, $a2, .LBB0_233
# %bb.227:                              #   in Loop: Header=BB0_204 Depth=2
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	st.b	$s1, $s0, 0
	move	$s1, $s5
	b	.LBB0_254
.LBB0_228:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_241
# %bb.229:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_239
# %bb.230:                              #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_240
.LBB0_231:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$s0, $a0, 0
	ld.d	$a0, $s0, 80
	ld.d	$a0, $a0, 80
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	or	$a1, $a1, $a2
.LBB0_232:                              #   in Loop: Header=BB0_204 Depth=2
	pcalau12i	$a2, %got_pc_hi20(InputSym)
	ld.d	$a2, $a2, %got_pc_lo12(InputSym)
	ld.d	$a2, $a2, 0
	xor	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	masknez	$a2, $s5, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	b	.LBB0_203
.LBB0_233:                              #   in Loop: Header=BB0_204 Depth=2
	alsl.d	$a4, $s3, $a4, 2
	ld.w	$a2, $a4, 48
	ld.w	$s6, $a4, 56
	beqz	$a2, .LBB0_237
# %bb.234:                              #   in Loop: Header=BB0_204 Depth=2
	beqz	$s6, .LBB0_238
# %bb.235:                              #   in Loop: Header=BB0_204 Depth=2
	alsl.d	$a3, $s3, $a1, 2
	ld.w	$a1, $a3, 56
	ld.w	$a3, $a3, 48
	sub.w	$a4, $zero, $a1
	bne	$a3, $a4, .LBB0_248
# %bb.236:                              #   in Loop: Header=BB0_204 Depth=2
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 10
	b	.LBB0_250
.LBB0_237:                              #   in Loop: Header=BB0_204 Depth=2
	beqz	$s6, .LBB0_252
.LBB0_238:                              # %.thread621
                                        #   in Loop: Header=BB0_204 Depth=2
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	st.b	$s1, $s0, 0
	b	.LBB0_253
.LBB0_239:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $t1, 0
.LBB0_240:                              #   in Loop: Header=BB0_204 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
.LBB0_241:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $t1, 0
.LBB0_244:                              #   in Loop: Header=BB0_204 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $t1, 0
	beqz	$a1, .LBB0_246
# %bb.245:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a2, $a1, 0
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s0, $t1, 0
	bnez	$a0, .LBB0_247
	b	.LBB0_202
.LBB0_246:                              # %.thread834
                                        #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $s3, 0
	st.d	$s0, $t1, 0
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
.LBB0_247:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB0_202
.LBB0_248:                              #   in Loop: Header=BB0_204 Depth=2
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	movgr2fr.w	$fa2, $s6
	ffint.s.w	$fa2, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI0_2)
	fdiv.s	$fa1, $fa1, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fmul.s	$fa0, $fa0, $fa3
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	mul.w	$a0, $a2, $a0
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 7
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 240
	addi.d	$a3, $sp, 312
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 240
	bge	$a0, $a1, .LBB0_265
.LBB0_249:                              #   in Loop: Header=BB0_204 Depth=2
	ld.bu	$a0, $s0, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a2, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 11
.LBB0_250:                              #   in Loop: Header=BB0_204 Depth=2
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.b	$s1, $s0, 0
.LBB0_251:                              #   in Loop: Header=BB0_204 Depth=2
	move	$s1, $s5
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_203
.LBB0_252:                              #   in Loop: Header=BB0_204 Depth=2
	st.b	$a3, $s0, 0
.LBB0_253:                              #   in Loop: Header=BB0_204 Depth=2
	move	$s1, $s5
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
.LBB0_254:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_203
.LBB0_255:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $t1, 0
.LBB0_256:                              #   in Loop: Header=BB0_204 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
.LBB0_257:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_259
# %bb.258:                              #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $t1, 0
.LBB0_260:                              #   in Loop: Header=BB0_204 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $t1, 0
	beqz	$a1, .LBB0_263
# %bb.261:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a2, $a1, 0
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s1, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s0, $t1, 0
	bnez	$a0, .LBB0_264
# %bb.262:                              #   in Loop: Header=BB0_204 Depth=2
	move	$s1, $zero
	b	.LBB0_203
.LBB0_263:                              # %.thread835
                                        #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $s3, 0
	st.d	$s0, $t1, 0
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
.LBB0_264:                              #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	move	$s1, $zero
	st.d	$a1, $a4, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB0_203
.LBB0_265:                              #   in Loop: Header=BB0_204 Depth=2
	mul.w	$a0, $s6, $a5
	bstrpick.d	$a2, $a0, 62, 56
	ld.w	$a3, $sp, 244
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 7
	add.d	$a0, $a1, $a2
	blt	$a3, $a0, .LBB0_249
# %bb.266:                              #   in Loop: Header=BB0_204 Depth=2
	ld.w	$a0, $sp, 248
	blt	$a0, $a2, .LBB0_249
# %bb.267:                              #   in Loop: Header=BB0_204 Depth=2
	ori	$a0, $zero, 34
	st.b	$a0, $s2, 32
	masknez	$a0, $a5, $s3
	ori	$a3, $zero, 128
	maskeqz	$a4, $a3, $s3
	or	$a0, $a4, $a0
	masknez	$a4, $a3, $s3
	maskeqz	$a3, $a5, $s3
	or	$a3, $a3, $a4
	st.w	$a0, $s2, 64
	st.w	$a3, $s2, 72
	move	$a0, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	b	.LBB0_251
.LBB0_268:                              # %._crit_edge677.loopexit
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$s8, $s0, 8
	ori	$s5, $zero, 1
	bne	$s8, $s0, .LBB0_270
	b	.LBB0_274
.LBB0_269:                              #   in Loop: Header=BB0_192 Depth=1
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	beq	$s8, $s0, .LBB0_274
.LBB0_270:                              #   in Loop: Header=BB0_192 Depth=1
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB0_272
# %bb.271:                              #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
.LBB0_272:                              #   in Loop: Header=BB0_192 Depth=1
	st.d	$s8, $s3, 0
	st.d	$s0, $t1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s8, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
	st.d	$s8, $s3, 0
	st.d	$fp, $t1, 0
	beqz	$fp, .LBB0_274
# %bb.273:                              #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s8, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
.LBB0_274:                              #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 304
	ld.d	$a1, $a0, 8
	bne	$a1, $a0, .LBB0_189
# %bb.275:                              #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_189
	b	.LBB0_190
.LBB0_276:                              # %._crit_edge685
	ld.d	$s1, $sp, 320
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_283
# %bb.277:
	ld.d	$fp, $s1, 8
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	beq	$fp, $s1, .LBB0_282
# %bb.278:
	ld.bu	$a0, $fp, 32
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $a1, 0
	beqz	$a0, .LBB0_280
# %bb.279:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
.LBB0_280:
	st.d	$fp, $s3, 0
	st.d	$s1, $t1, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
	st.d	$fp, $s3, 0
	st.d	$s0, $t1, 0
	beqz	$s0, .LBB0_282
# %bb.281:
	ld.d	$a0, $s0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
.LBB0_282:
	ld.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_283:
	beqz	$s2, .LBB0_286
# %bb.284:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_286
# %bb.285:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 80
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a2, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 12
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_286:
	ld.h	$a0, $s6, 42
	ori	$a0, $a0, 2
	st.h	$a0, $s6, 42
	fld.d	$fs1, $sp, 328                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 336                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.LBB0_287:
	bne	$a0, $a5, .LBB0_37
# %bb.288:
	ld.d	$a0, $a4, 0
	beq	$a3, $a0, .LBB0_38
	b	.LBB0_37
.Lfunc_end0:
	.size	SizeGalley, .Lfunc_end0-SizeGalley
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_68-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_75-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_74-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_208-.LJTI0_1
	.word	.LBB0_212-.LJTI0_1
	.word	.LBB0_201-.LJTI0_1
	.word	.LBB0_228-.LJTI0_1
	.word	.LBB0_201-.LJTI0_1
	.word	.LBB0_201-.LJTI0_1
	.word	.LBB0_201-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_215-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SizeGalley: precondition!"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SizeGalley: already sized!"
	.size	.L.str.2, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SizeGalley: threads!"
	.size	.L.str.4, 21

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"galley %s must have just one column mark"
	.size	.L.str.5, 41

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s,%s object too wide for available space"
	.size	.L.str.6, 42

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SizeGalley: BreakObject failed to fit!"
	.size	.L.str.7, 39

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"SizeGalley COL_THR: Up(y)!=LastUp(y)!"
	.size	.L.str.9, 38

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"SizeGalley: missing COL_THR!"
	.size	.L.str.10, 29

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SizeGalley/SPLIT: hor != thor!"
	.size	.L.str.11, 31

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SizeGalley COL_THR: Up(y) != LastUp(y)!"
	.size	.L.str.12, 40

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SizeObject: type(z) != SCALE!"
	.size	.L.str.13, 30

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SizeObject: bc(constraint(z)) != 0"
	.size	.L.str.14, 35

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SizeObject SCALE: Down(z) == z!"
	.size	.L.str.15, 32

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s with unspecified scale factor in horizontal galley"
	.size	.L.str.16, 54

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"@Scale"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"replacing infinite scale factor (unconstrained width) by 1.0"
	.size	.L.str.18, 61

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"replacing infinite scale factor (zero width object) by 1.0"
	.size	.L.str.19, 59

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"replacing very large scale factor (over 100) by 1.0"
	.size	.L.str.20, 52

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"object deleted (scale factor is zero)"
	.size	.L.str.21, 38

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"object deleted (scale factor is smaller than 0.01)"
	.size	.L.str.22, 51

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.space	1
	.size	.L.str.23, 1

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%s replaced by %s (mark not shared)"
	.size	.L.str.24, 36

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"%s replaced by %s (infinite scale factor)"
	.size	.L.str.25, 42

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"%s replaced by %s (zero scale factor)"
	.size	.L.str.26, 38

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"%s replaced by %s (insufficient space)"
	.size	.L.str.27, 39

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"assert failed in %s %s"
	.size	.L.str.28, 23

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SizeGalley:"
	.size	.L.str.29, 12

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SizeG: extras!"
	.size	.L.str.30, 15

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"unexpected absence of %s from the body of %s"
	.size	.L.str.31, 45

	.section	".note.GNU-stack","",@progbits
	.addrsig
