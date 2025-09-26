	.file	"mode_decision.c"
	.text
	.globl	rc_store_diff                   # -- Begin function rc_store_diff
	.p2align	5
	.type	rc_store_diff,@function
rc_store_diff:                          # @rc_store_diff
# %bb.0:
	pcalau12i	$a3, %pc_hi20(imgY_org)
	ld.d	$a3, $a3, %pc_lo12(imgY_org)
	alsl.d	$a1, $a1, $a3, 3
	pcalau12i	$a3, %pc_hi20(diffy+32)
	addi.d	$a3, $a3, %pc_lo12(diffy+32)
	move	$a4, $zero
	addi.d	$a2, $a2, 16
	slli.d	$a5, $a0, 1
	vrepli.b	$vr0, 0
	ori	$a6, $zero, 128
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ldx.d	$a7, $a1, $a4
	ldx.d	$t0, $a7, $a5
	ld.d	$t1, $a2, -16
	alsl.d	$a7, $a0, $a7, 1
	vinsgr2vr.d	$vr1, $t0, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $t1, 0
	vilvl.h	$vr2, $vr0, $vr2
	ld.d	$t0, $a7, 8
	vsub.w	$vr1, $vr1, $vr2
	ld.d	$t1, $a2, -8
	vst	$vr1, $a3, -32
	vinsgr2vr.d	$vr1, $t0, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $t1, 0
	ld.d	$t0, $a7, 16
	vilvl.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	ld.d	$t1, $a2, 0
	vinsgr2vr.d	$vr2, $t0, 0
	vst	$vr1, $a3, -16
	vilvl.h	$vr1, $vr0, $vr2
	vinsgr2vr.d	$vr2, $t1, 0
	vilvl.h	$vr2, $vr0, $vr2
	ld.d	$a7, $a7, 24
	vsub.w	$vr1, $vr1, $vr2
	ld.d	$t0, $a2, 8
	vst	$vr1, $a3, 0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $t0, 0
	vilvl.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $a3, 16
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 64
	addi.d	$a2, $a2, 32
	bne	$a4, $a6, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	rc_store_diff, .Lfunc_end0-rc_store_diff
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fast_mode_intra_decision
.LCPI1_0:
	.dword	0x3f65555555555555              # double 0.0026041666666666665
	.text
	.globl	fast_mode_intra_decision
	.p2align	5
	.type	fast_mode_intra_decision,@function
fast_mode_intra_decision:               # @fast_mode_intra_decision
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(getNeighbour)
	ld.d	$a5, $s1, %pc_lo12(getNeighbour)
	fmov.d	$fs0, $fa0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 12
	addi.w	$s0, $zero, -1
	addi.d	$a4, $sp, 8
	move	$a1, $s0
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a0, $s2, 0
	ld.d	$a5, $s1, %pc_lo12(getNeighbour)
	ld.w	$a0, $a0, 12
	addi.d	$a4, $sp, 32
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a0, $s2, 0
	ld.d	$a5, $s1, %pc_lo12(getNeighbour)
	ld.w	$a0, $a0, 12
	addi.d	$a4, $sp, 56
	move	$a1, $zero
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	ld.d	$a0, $s2, 0
	fld.d	$fa0, $a1, %pc_lo12(.LCPI1_0)
	lu12i.w	$a1, 3
	ori	$a2, $a1, 3056
	ldx.w	$a2, $a0, $a2
	ld.w	$a3, $a0, 164
	fmul.d	$fa0, $fs0, $fa0
	addi.w	$a2, $a2, -1
	movgr2fr.d	$fa1, $zero
	beq	$a3, $a2, .LBB1_7
# %bb.1:
	ori	$a1, $a1, 3048
	ldx.w	$a1, $a0, $a1
	ld.w	$a2, $a0, 160
	addi.w	$a1, $a1, -1
	beq	$a2, $a1, .LBB1_7
# %bb.2:
	ld.w	$a1, $sp, 32
	beqz	$a1, .LBB1_7
# %bb.3:
	ld.w	$a1, $sp, 56
	beqz	$a1, .LBB1_7
# %bb.4:                                # %vector.body
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	ldptr.d	$t1, $a1, 6440
	ld.w	$t2, $a0, 180
	ld.w	$a6, $a0, 196
	pcalau12i	$a3, %pc_hi20(imgY_org)
	ld.d	$a7, $a3, %pc_lo12(imgY_org)
	alsl.d	$a3, $t2, $t1, 3
	slli.d	$a4, $a6, 3
	ld.w	$t0, $a0, 192
	ldx.d	$t3, $a7, $a4
	ld.d	$t4, $a3, -8
	ld.w	$a4, $a0, 176
	slli.d	$a5, $t0, 1
	ldx.w	$t5, $t3, $a5
	alsl.d	$a6, $a6, $a7, 3
	alsl.d	$a7, $a4, $t4, 1
	alsl.d	$t0, $t0, $t3, 1
	vinsgr2vr.w	$vr1, $t5, 0
	ld.w	$t5, $t0, 4
	slli.d	$t6, $a4, 1
	ldx.w	$t4, $t4, $t6
	ld.w	$t6, $a7, 4
	vinsgr2vr.w	$vr2, $t5, 0
	slli.d	$t2, $t2, 3
	vinsgr2vr.w	$vr3, $t4, 0
	vinsgr2vr.w	$vr4, $t6, 0
	vabsd.hu	$vr3, $vr1, $vr3
	vrepli.b	$vr1, 0
	ldx.h	$t3, $t3, $a5
	vilvl.h	$vr3, $vr1, $vr3
	ld.d	$t4, $a6, 8
	ld.d	$t5, $a6, 16
	vinsgr2vr.h	$vr5, $t3, 0
	ld.d	$t3, $a6, 24
	vabsd.hu	$vr2, $vr2, $vr4
	ldx.h	$t4, $t4, $a5
	ldx.h	$t5, $t5, $a5
	ldx.h	$t3, $t3, $a5
	vilvl.h	$vr2, $vr1, $vr2
	vinsgr2vr.h	$vr5, $t4, 1
	vinsgr2vr.h	$vr4, $t5, 0
	vinsgr2vr.h	$vr4, $t3, 1
	ldx.d	$t1, $t1, $t2
	ld.d	$t2, $a3, 8
	ld.d	$t3, $a3, 16
	ld.d	$t4, $a3, 24
	alsl.d	$t1, $a4, $t1, 1
	alsl.d	$t2, $a4, $t2, 1
	alsl.d	$t3, $a4, $t3, 1
	alsl.d	$t4, $a4, $t4, 1
	ld.h	$t1, $t1, -2
	ld.h	$t2, $t2, -2
	ld.h	$t3, $t3, -2
	ld.h	$t4, $t4, -2
	vinsgr2vr.h	$vr6, $t1, 0
	vinsgr2vr.h	$vr6, $t2, 1
	vinsgr2vr.h	$vr7, $t3, 0
	vinsgr2vr.h	$vr7, $t4, 1
	vabsd.hu	$vr5, $vr5, $vr6
	vilvl.h	$vr5, $vr1, $vr5
	vabsd.hu	$vr4, $vr4, $vr7
	vilvl.h	$vr4, $vr1, $vr4
	vadd.w	$vr3, $vr3, $vr5
	vadd.w	$vr2, $vr2, $vr4
	ld.w	$t1, $t0, 8
	ld.w	$t2, $t0, 12
	ld.w	$t3, $a7, 8
	ld.w	$t4, $a7, 12
	vinsgr2vr.w	$vr4, $t1, 0
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr6, $t3, 0
	vinsgr2vr.w	$vr7, $t4, 0
	vabsd.hu	$vr4, $vr4, $vr6
	vilvl.h	$vr4, $vr1, $vr4
	vabsd.hu	$vr5, $vr5, $vr7
	vilvl.h	$vr5, $vr1, $vr5
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr2, $vr2, $vr5
	ld.d	$t1, $a6, 32
	ld.d	$t2, $a6, 40
	ld.d	$t3, $a6, 48
	ld.d	$t4, $a6, 56
	ldx.h	$t1, $t1, $a5
	ldx.h	$t2, $t2, $a5
	ldx.h	$t3, $t3, $a5
	ldx.h	$t4, $t4, $a5
	vinsgr2vr.h	$vr4, $t1, 0
	vinsgr2vr.h	$vr4, $t2, 1
	vinsgr2vr.h	$vr5, $t3, 0
	vinsgr2vr.h	$vr5, $t4, 1
	ld.d	$t1, $a3, 32
	ld.d	$t2, $a3, 40
	ld.d	$t3, $a3, 48
	ld.d	$t4, $a3, 56
	alsl.d	$t1, $a4, $t1, 1
	alsl.d	$t2, $a4, $t2, 1
	alsl.d	$t3, $a4, $t3, 1
	alsl.d	$t4, $a4, $t4, 1
	ld.h	$t1, $t1, -2
	ld.h	$t2, $t2, -2
	ld.h	$t3, $t3, -2
	ld.h	$t4, $t4, -2
	vinsgr2vr.h	$vr6, $t1, 0
	vinsgr2vr.h	$vr6, $t2, 1
	vinsgr2vr.h	$vr7, $t3, 0
	vinsgr2vr.h	$vr7, $t4, 1
	vabsd.hu	$vr4, $vr4, $vr6
	vilvl.h	$vr4, $vr1, $vr4
	vabsd.hu	$vr5, $vr5, $vr7
	vilvl.h	$vr5, $vr1, $vr5
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr2, $vr2, $vr5
	ld.w	$t1, $t0, 16
	ld.w	$t2, $t0, 20
	ld.w	$t3, $a7, 16
	ld.w	$t4, $a7, 20
	vinsgr2vr.w	$vr4, $t1, 0
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr6, $t3, 0
	vinsgr2vr.w	$vr7, $t4, 0
	vabsd.hu	$vr4, $vr4, $vr6
	vilvl.h	$vr4, $vr1, $vr4
	vabsd.hu	$vr5, $vr5, $vr7
	vilvl.h	$vr5, $vr1, $vr5
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr2, $vr2, $vr5
	ld.d	$t1, $a6, 64
	ld.d	$t2, $a6, 72
	ld.d	$t3, $a6, 80
	ld.d	$t4, $a6, 88
	ldx.h	$t1, $t1, $a5
	ldx.h	$t2, $t2, $a5
	ldx.h	$t3, $t3, $a5
	ldx.h	$t4, $t4, $a5
	vinsgr2vr.h	$vr4, $t1, 0
	vinsgr2vr.h	$vr4, $t2, 1
	vinsgr2vr.h	$vr5, $t3, 0
	vinsgr2vr.h	$vr5, $t4, 1
	ld.d	$t1, $a3, 64
	ld.d	$t2, $a3, 72
	ld.d	$t3, $a3, 80
	ld.d	$t4, $a3, 88
	alsl.d	$t1, $a4, $t1, 1
	alsl.d	$t2, $a4, $t2, 1
	alsl.d	$t3, $a4, $t3, 1
	alsl.d	$t4, $a4, $t4, 1
	ld.h	$t1, $t1, -2
	ld.h	$t2, $t2, -2
	ld.h	$t3, $t3, -2
	ld.h	$t4, $t4, -2
	vinsgr2vr.h	$vr6, $t1, 0
	vinsgr2vr.h	$vr6, $t2, 1
	vinsgr2vr.h	$vr7, $t3, 0
	vinsgr2vr.h	$vr7, $t4, 1
	vabsd.hu	$vr4, $vr4, $vr6
	vilvl.h	$vr4, $vr1, $vr4
	vabsd.hu	$vr5, $vr5, $vr7
	vilvl.h	$vr5, $vr1, $vr5
	vadd.w	$vr3, $vr3, $vr4
	vilvl.w	$vr3, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr5
	vilvl.w	$vr2, $vr1, $vr2
	ld.w	$t1, $t0, 24
	ld.w	$t0, $t0, 28
	ld.w	$t2, $a7, 24
	ld.w	$a7, $a7, 28
	vinsgr2vr.w	$vr4, $t1, 0
	vinsgr2vr.w	$vr5, $t0, 0
	vinsgr2vr.w	$vr6, $t2, 0
	vinsgr2vr.w	$vr7, $a7, 0
	vabsd.hu	$vr4, $vr4, $vr6
	vabsd.hu	$vr5, $vr5, $vr7
	vilvl.h	$vr4, $vr1, $vr4
	vilvl.w	$vr4, $vr1, $vr4
	vilvl.h	$vr5, $vr1, $vr5
	vilvl.w	$vr5, $vr1, $vr5
	vadd.d	$vr3, $vr3, $vr4
	vadd.d	$vr2, $vr2, $vr5
	ld.d	$a7, $a6, 96
	ld.d	$t0, $a6, 104
	ld.d	$t1, $a6, 112
	ld.d	$a6, $a6, 120
	ldx.h	$a7, $a7, $a5
	ldx.h	$t0, $t0, $a5
	ldx.h	$t1, $t1, $a5
	ldx.h	$a5, $a6, $a5
	vinsgr2vr.h	$vr4, $a7, 0
	vinsgr2vr.h	$vr4, $t0, 1
	vinsgr2vr.h	$vr5, $t1, 0
	vinsgr2vr.h	$vr5, $a5, 1
	ld.d	$a5, $a3, 96
	ld.d	$a6, $a3, 104
	ld.d	$a7, $a3, 112
	ld.d	$a3, $a3, 120
	alsl.d	$a5, $a4, $a5, 1
	alsl.d	$a6, $a4, $a6, 1
	alsl.d	$a7, $a4, $a7, 1
	alsl.d	$a3, $a4, $a3, 1
	ld.h	$a4, $a5, -2
	ld.h	$a5, $a6, -2
	ld.h	$a6, $a7, -2
	ld.h	$a3, $a3, -2
	vinsgr2vr.h	$vr6, $a4, 0
	vinsgr2vr.h	$vr6, $a5, 1
	vinsgr2vr.h	$vr7, $a6, 0
	vinsgr2vr.h	$vr7, $a3, 1
	vabsd.hu	$vr4, $vr4, $vr6
	vabsd.hu	$vr5, $vr5, $vr7
	vilvl.h	$vr4, $vr1, $vr4
	vilvl.w	$vr4, $vr1, $vr4
	vilvl.h	$vr5, $vr1, $vr5
	pcalau12i	$a3, %pc_hi20(imgUV_org)
	ld.d	$a5, $a3, %pc_lo12(imgUV_org)
	vilvl.w	$vr5, $vr1, $vr5
	vadd.d	$vr3, $vr3, $vr4
	vadd.d	$vr2, $vr2, $vr5
	ld.d	$a3, $a5, 0
	ld.w	$a6, $a0, 204
	ldptr.d	$a7, $a1, 6472
	vadd.d	$vr2, $vr2, $vr3
	vhaddw.q.d	$vr3, $vr2, $vr2
	alsl.d	$a1, $a6, $a3, 3
	ld.d	$a4, $a7, 0
	ld.w	$t0, $a0, 188
	slli.d	$t1, $a6, 3
	ldx.d	$t2, $a3, $t1
	ld.w	$a3, $a0, 200
	alsl.d	$a4, $t0, $a4, 3
	ld.d	$t3, $a5, 8
	ld.d	$t4, $a4, -8
	ld.d	$a7, $a7, 8
	ld.w	$a0, $a0, 184
	alsl.d	$a5, $a6, $t3, 3
	ldx.d	$t1, $t3, $t1
	alsl.d	$a6, $t0, $a7, 3
	ld.d	$t3, $a6, -8
	vori.b	$vr2, $vr1, 0
	vextrins.d	$vr2, $vr3, 0
	alsl.d	$a7, $a3, $t2, 1
	alsl.d	$t0, $a3, $t1, 1
	alsl.d	$t1, $a0, $t4, 1
	alsl.d	$t2, $a0, $t3, 1
	ori	$t3, $zero, 64
	.p2align	4, , 16
.LBB1_5:                                # %vector.body66
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a7, 0
	ld.w	$t5, $t1, 0
	vinsgr2vr.w	$vr3, $t4, 0
	ldx.d	$t4, $a1, $a2
	vinsgr2vr.w	$vr4, $t5, 0
	vabsd.hu	$vr3, $vr3, $vr4
	slli.d	$t5, $a3, 1
	ldx.h	$t4, $t4, $t5
	vilvl.h	$vr3, $vr1, $vr3
	add.d	$t6, $a1, $a2
	ld.d	$t6, $t6, 8
	vinsgr2vr.h	$vr4, $t4, 0
	add.d	$t4, $a4, $a2
	ldx.d	$t7, $a4, $a2
	ld.d	$t4, $t4, 8
	vilvl.w	$vr3, $vr1, $vr3
	ldx.h	$t6, $t6, $t5
	alsl.d	$t7, $a0, $t7, 1
	alsl.d	$t4, $a0, $t4, 1
	ld.h	$t7, $t7, -2
	ld.h	$t4, $t4, -2
	vadd.d	$vr2, $vr2, $vr3
	vinsgr2vr.h	$vr4, $t6, 1
	vinsgr2vr.h	$vr3, $t7, 0
	vinsgr2vr.h	$vr3, $t4, 1
	vabsd.hu	$vr3, $vr4, $vr3
	ld.w	$t4, $t0, 0
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.w	$vr3, $vr1, $vr3
	vadd.d	$vr2, $vr2, $vr3
	vinsgr2vr.w	$vr3, $t4, 0
	ldx.d	$t4, $a5, $a2
	ld.w	$t6, $t2, 0
	add.d	$t7, $a5, $a2
	ld.d	$t7, $t7, 8
	ldx.h	$t4, $t4, $t5
	vinsgr2vr.w	$vr4, $t6, 0
	vabsd.hu	$vr3, $vr3, $vr4
	ldx.h	$t5, $t7, $t5
	vinsgr2vr.h	$vr4, $t4, 0
	add.d	$t4, $a6, $a2
	ldx.d	$t6, $a6, $a2
	ld.d	$t4, $t4, 8
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.w	$vr3, $vr1, $vr3
	alsl.d	$t6, $a0, $t6, 1
	alsl.d	$t4, $a0, $t4, 1
	ld.h	$t6, $t6, -2
	ld.h	$t4, $t4, -2
	vadd.d	$vr2, $vr2, $vr3
	vinsgr2vr.h	$vr4, $t5, 1
	vinsgr2vr.h	$vr3, $t6, 0
	vinsgr2vr.h	$vr3, $t4, 1
	vabsd.hu	$vr3, $vr4, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.w	$vr3, $vr1, $vr3
	vadd.d	$vr2, $vr2, $vr3
	addi.d	$a2, $a2, 16
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	bne	$a2, $t3, .LBB1_5
# %bb.6:                                # %middle.block78
	vhaddw.q.d	$vr1, $vr2, $vr2
	vpickve2gr.d	$a0, $vr1, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	lu52i.d	$a0, $zero, 1017
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa1, $fa1, $fa2
.LBB1_7:
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_9
# %bb.8:
	ori	$a0, $zero, 1
	st.h	$a0, $fp, 0
.LBB1_9:
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end1:
	.size	fast_mode_intra_decision, .Lfunc_end1-fast_mode_intra_decision
                                        # -- End function
	.globl	init_enc_mb_params              # -- Begin function init_enc_mb_params
	.p2align	5
	.type	init_enc_mb_params,@function
init_enc_mb_params:                     # @init_enc_mb_params
# %bb.0:
	ld.h	$a4, $a0, 432
	st.h	$a4, $a1, 74
	addi.d	$a4, $a4, 1
	st.h	$a4, $a1, 76
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a4, $a4, 0
	ldptr.w	$a5, $a4, 15268
	beqz	$a5, .LBB2_2
# %bb.1:
	ld.w	$a0, $a0, 424
	sltu	$a0, $zero, $a0
	b	.LBB2_3
.LBB2_2:
	move	$a0, $zero
.LBB2_3:
	st.h	$a0, $a1, 78
	lu12i.w	$a0, -16
	lu32i.d	$a0, 0
	st.w	$a0, $a1, 80
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a6, $a0, 5100
	st.h	$a6, $a1, 70
	addi.d	$a5, $a6, -2
	sltu	$a5, $zero, $a5
	ori	$a7, $zero, 4076
	ldx.h	$a7, $a0, $a7
	st.h	$a5, $a1, 62
	ori	$a5, $zero, 1
	st.h	$a5, $a1, 64
	st.h	$a7, $a1, 72
	sltui	$a7, $a2, 1
	st.h	$a7, $a1, 44
	beqz	$a2, .LBB2_5
# %bb.4:                                # %.thread169
	move	$a0, $zero
	move	$a2, $zero
	st.d	$zero, $a1, 52
	st.d	$zero, $a1, 46
	b	.LBB2_7
.LBB2_5:
	ldptr.w	$a2, $a0, 4020
	addi.d	$a6, $a6, -2
	ldptr.w	$a7, $a0, 4024
	sltu	$t0, $zero, $a6
	sltu	$a2, $zero, $a2
	st.h	$a2, $a1, 46
	sltu	$a2, $zero, $a7
	ldptr.w	$a6, $a0, 4028
	ori	$a7, $zero, 4032
	vldx	$vr0, $a0, $a7
	st.h	$a2, $a1, 48
	sltu	$a0, $zero, $a6
	st.h	$a0, $a1, 50
	vseqi.w	$vr0, $vr0, 0
	vrepli.b	$vr1, -1
	vxor.v	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 0
	andi	$a7, $a0, 1
	st.h	$a7, $a1, 52
	vpickve2gr.w	$a0, $vr0, 1
	and	$a6, $a0, $t0
	st.h	$a6, $a1, 54
	vpickve2gr.w	$a0, $vr0, 2
	and	$a0, $a0, $t0
	st.h	$a0, $a1, 56
	vpickve2gr.w	$a2, $vr0, 3
	and	$a2, $a2, $t0
	st.h	$a2, $a1, 58
	bnez	$a7, .LBB2_8
# %bb.6:
	bnez	$a6, .LBB2_8
.LBB2_7:
	or	$a5, $a0, $a2
.LBB2_8:
	ld.w	$a0, $a4, 20
	andi	$a2, $a5, 1
	st.h	$a2, $a1, 60
	addi.d	$a2, $a0, -4
	sltui	$a2, $a2, 1
	st.h	$a2, $a1, 68
	ori	$a2, $zero, 3
	vrepli.b	$vr0, 0
	bne	$a0, $a2, .LBB2_18
# %bb.9:
	pcalau12i	$a5, %pc_hi20(si_frame_indicator)
	ld.w	$a5, $a5, %pc_lo12(si_frame_indicator)
	beqz	$a5, .LBB2_18
# %bb.10:
	st.h	$zero, $a1, 72
	vst	$vr0, $a1, 44
	st.h	$zero, $a1, 60
	st.w	$zero, $a1, 68
	ld.w	$t0, $a4, 176
	ld.w	$t3, $a4, 180
	pcalau12i	$a5, %pc_hi20(lrec)
	ld.d	$a5, $a5, %pc_lo12(lrec)
	addi.w	$a6, $t0, 15
	addi.w	$a7, $t3, 15
	slt	$t1, $a6, $t0
	masknez	$a6, $a6, $t1
	maskeqz	$t1, $t0, $t1
	or	$t1, $t1, $a6
	slt	$a6, $a7, $t3
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $t3, $a6
	or	$a6, $a6, $a7
	sub.d	$a7, $t1, $t0
	addi.d	$a7, $a7, 1
	slli.d	$t0, $t0, 2
	addi.w	$t1, $zero, -16
.LBB2_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
	move	$t2, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a5, $t3
	add.d	$t3, $t3, $t0
	move	$t4, $a7
	.p2align	4, , 16
.LBB2_12:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t3, 0
	bne	$t5, $t1, .LBB2_16
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=2
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	bnez	$t4, .LBB2_12
# %bb.14:                               #   in Loop: Header=BB2_11 Depth=1
	addi.d	$t3, $t2, 1
	bne	$t2, $a6, .LBB2_11
# %bb.15:
	move	$a6, $zero
	ori	$a5, $zero, 1
	b	.LBB2_17
.LBB2_16:
	move	$a5, $zero
	ori	$a6, $zero, 1
.LBB2_17:                               # %.sink.split
	st.h	$a6, $a1, 62
	st.h	$a5, $a1, 64
.LBB2_18:
	bne	$a0, $a2, .LBB2_28
# %bb.19:
	pcalau12i	$a2, %pc_hi20(sp2_frame_indicator)
	ld.w	$a2, $a2, %pc_lo12(sp2_frame_indicator)
	beqz	$a2, .LBB2_28
# %bb.20:
	ld.w	$a7, $a4, 176
	ld.w	$t2, $a4, 180
	pcalau12i	$a2, %pc_hi20(lrec)
	ld.d	$a2, $a2, %pc_lo12(lrec)
	addi.w	$a5, $a7, 15
	addi.w	$a6, $t2, 15
	slt	$t0, $a5, $a7
	masknez	$a5, $a5, $t0
	maskeqz	$t0, $a7, $t0
	or	$t0, $t0, $a5
	slt	$a5, $a6, $t2
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $t2, $a5
	or	$a5, $a5, $a6
	sub.d	$a6, $t0, $a7
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a7, 2
	addi.w	$t0, $zero, -16
.LBB2_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_22 Depth 2
	move	$t1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a7
	move	$t3, $a6
	.p2align	4, , 16
.LBB2_22:                               #   Parent Loop BB2_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, 0
	bne	$t4, $t0, .LBB2_26
# %bb.23:                               #   in Loop: Header=BB2_22 Depth=2
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 4
	bnez	$t3, .LBB2_22
# %bb.24:                               #   in Loop: Header=BB2_21 Depth=1
	addi.d	$t2, $t1, 1
	bne	$t1, $a5, .LBB2_21
# %bb.25:                               # %check_for_SI16.exit159
	st.h	$zero, $a1, 72
	vst	$vr0, $a1, 44
	st.w	$zero, $a1, 60
	st.w	$zero, $a1, 68
	ori	$a2, $zero, 1
	b	.LBB2_27
.LBB2_26:
	move	$a2, $zero
	st.w	$zero, $a1, 70
	st.h	$zero, $a1, 44
.LBB2_27:                               # %.sink.split257
	st.h	$a2, $a1, 64
.LBB2_28:
	beqz	$a3, .LBB2_31
# %bb.29:
	ldptr.w	$a2, $a4, 15360
	beqz	$a2, .LBB2_31
# %bb.30:
	ldptr.d	$a0, $a4, 15496
	ldptr.d	$a2, $a4, 15480
	ldptr.d	$a3, $a4, 15488
	ld.w	$a5, $a4, 36
	ld.d	$a0, $a0, 40
	ld.d	$a2, $a2, 40
	ld.d	$a3, $a3, 40
	slli.d	$a5, $a5, 3
	ldx.d	$a6, $a0, $a5
	fldx.d	$fa1, $a2, $a5
	ldx.d	$a2, $a3, $a5
	ld.w	$a3, $a6, 0
	fst.d	$fa1, $a1, 0
	fld.d	$fa1, $a2, 0
	ld.w	$a5, $a6, 8
	st.w	$a3, $a1, 32
	ld.w	$a3, $a4, 36
	fst.d	$fa1, $a1, 8
	fld.d	$fa1, $a2, 8
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a0, $a2
	fst.d	$fa1, $a1, 16
	ld.w	$a2, $a2, 4
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fst.d	$fa1, $a1, 24
	st.w	$a2, $a1, 36
	b	.LBB2_32
.LBB2_31:
	ldptr.d	$a2, $a4, 15496
	slli.d	$a0, $a0, 3
	ld.w	$a3, $a4, 36
	ldx.d	$a5, $a2, $a0
	slli.d	$a3, $a3, 3
	ldx.d	$a5, $a5, $a3
	ld.w	$a5, $a5, 0
	ldptr.d	$a6, $a4, 15480
	ldptr.d	$a7, $a4, 15488
	st.w	$a5, $a1, 32
	ld.w	$a5, $a4, 20
	ldx.d	$a6, $a6, $a0
	ldx.d	$a0, $a7, $a0
	slli.d	$a5, $a5, 3
	ld.w	$a7, $a4, 36
	ldx.d	$a5, $a2, $a5
	fldx.d	$fa1, $a6, $a3
	ldx.d	$a0, $a0, $a3
	slli.d	$a3, $a7, 3
	ldx.d	$a3, $a5, $a3
	fst.d	$fa1, $a1, 0
	fld.d	$fa1, $a0, 0
	ld.w	$a3, $a3, 4
	fst.d	$fa1, $a1, 8
	fld.d	$fa1, $a0, 8
	st.w	$a3, $a1, 36
	ld.w	$a3, $a4, 20
	fst.d	$fa1, $a1, 16
	fld.d	$fa1, $a0, 16
	slli.d	$a0, $a3, 3
	ldx.d	$a0, $a2, $a0
	fst.d	$fa1, $a1, 24
.LBB2_32:
	ld.w	$a2, $a4, 36
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a0, $a0, 8
	st.w	$a0, $a1, 40
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2120
	ldptr.w	$a2, $a4, 15268
	add.d	$a3, $a4, $a0
	vstx	$vr0, $a4, $a0
	st.d	$zero, $a3, 22
	stptr.d	$zero, $a4, 14424
	beqz	$a2, .LBB2_49
# %bb.33:
	ld.hu	$a2, $a1, 78
	ld.h	$t1, $a1, 74
	ld.h	$a0, $a1, 76
	beqz	$a2, .LBB2_54
# %bb.34:
	blt	$a0, $t1, .LBB2_83
# %bb.35:                               # %.preheader182.lr.ph
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$a1, $a1, %got_pc_lo12(listXsize)
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	ori	$a3, $zero, 1
	ori	$a5, $zero, 1
	bstrins.d	$a5, $a5, 32, 31
	addi.d	$a6, $zero, -2
	ori	$a7, $zero, 2
	b	.LBB2_37
	.p2align	4, , 16
.LBB2_36:                               # %._crit_edge
                                        #   in Loop: Header=BB2_37 Depth=1
	addi.d	$t1, $t0, 1
	beq	$t0, $a0, .LBB2_83
.LBB2_37:                               # %.preheader182
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_48 Depth 2
                                        #     Child Loop BB2_44 Depth 2
                                        #     Child Loop BB2_46 Depth 2
                                        #     Child Loop BB2_41 Depth 2
	move	$t0, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a1, $t1
	blez	$t1, .LBB2_36
# %bb.38:                               # %.lr.ph
                                        #   in Loop: Header=BB2_37 Depth=1
	ld.wu	$t3, $a4, 12
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a2, $t1
	alsl.d	$t2, $t0, $a1, 2
	andi	$t4, $t3, 1
	and	$t3, $t3, $a5
	bnez	$t4, .LBB2_42
# %bb.39:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB2_37 Depth=1
	bne	$t3, $a3, .LBB2_45
# %bb.40:                               # %.lr.ph.split.us.split.us.preheader
                                        #   in Loop: Header=BB2_37 Depth=1
	move	$t3, $zero
	.p2align	4, , 16
.LBB2_41:                               # %.lr.ph.split.us.split.us
                                        #   Parent Loop BB2_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t1, 0
	ld.w	$t5, $t4, 0
	addi.d	$t6, $t5, -2
	sltui	$t6, $t6, 1
	maskeqz	$t6, $a6, $t6
	addi.d	$t5, $t5, -1
	sltui	$t5, $t5, 1
	maskeqz	$t7, $a7, $t5
	masknez	$t5, $t6, $t5
	or	$t5, $t7, $t5
	stptr.w	$t5, $t4, 6424
	ld.w	$t4, $t2, 0
	addi.d	$t3, $t3, 1
	addi.d	$t1, $t1, 8
	blt	$t3, $t4, .LBB2_41
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_42:                               # %.lr.ph.split
                                        #   in Loop: Header=BB2_37 Depth=1
	bne	$t3, $a3, .LBB2_47
# %bb.43:                               # %.lr.ph.split.split.us.preheader
                                        #   in Loop: Header=BB2_37 Depth=1
	move	$t3, $zero
	.p2align	4, , 16
.LBB2_44:                               # %.lr.ph.split.split.us
                                        #   Parent Loop BB2_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t1, 0
	ld.w	$t5, $t4, 0
	addi.d	$t5, $t5, -1
	sltui	$t5, $t5, 1
	slli.d	$t5, $t5, 1
	stptr.w	$t5, $t4, 6424
	ld.w	$t4, $t2, 0
	addi.d	$t3, $t3, 1
	addi.d	$t1, $t1, 8
	blt	$t3, $t4, .LBB2_44
	b	.LBB2_36
.LBB2_45:                               # %.lr.ph.split.us.split.preheader
                                        #   in Loop: Header=BB2_37 Depth=1
	move	$t3, $zero
	.p2align	4, , 16
.LBB2_46:                               # %.lr.ph.split.us.split
                                        #   Parent Loop BB2_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t1, 0
	ld.w	$t5, $t4, 0
	addi.d	$t5, $t5, -2
	sltui	$t5, $t5, 1
	maskeqz	$t5, $a6, $t5
	stptr.w	$t5, $t4, 6424
	ld.w	$t4, $t2, 0
	addi.d	$t3, $t3, 1
	addi.d	$t1, $t1, 8
	blt	$t3, $t4, .LBB2_46
	b	.LBB2_36
.LBB2_47:                               # %.lr.ph.split.split.preheader
                                        #   in Loop: Header=BB2_37 Depth=1
	move	$t3, $zero
	.p2align	4, , 16
.LBB2_48:                               # %.lr.ph.split.split
                                        #   Parent Loop BB2_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t1, 0
	stptr.w	$zero, $t4, 6424
	ld.w	$t4, $t2, 0
	addi.d	$t3, $t3, 1
	addi.d	$t1, $t1, 8
	blt	$t3, $t4, .LBB2_48
	b	.LBB2_36
.LBB2_49:                               # %.preheader179
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$a0, $a0, %got_pc_lo12(listXsize)
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB2_69
# %bb.50:                               # %.lr.ph195
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	ld.w	$a3, $a4, 24
	ld.d	$a2, $a2, 0
	ori	$a5, $zero, 1
	beq	$a3, $a5, .LBB2_60
# %bb.51:                               # %.lr.ph195
	ori	$a5, $zero, 2
	bne	$a3, $a5, .LBB2_62
# %bb.52:                               # %.lr.ph195.split.us197.preheader
	move	$a3, $zero
	.p2align	4, , 16
.LBB2_53:                               # %.lr.ph195.split.us197
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 0
	addi.d	$a6, $a6, -2
	sltu	$a6, $zero, $a6
	slli.d	$a6, $a6, 1
	stptr.w	$a6, $a5, 6424
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bltu	$a3, $a1, .LBB2_53
	b	.LBB2_69
.LBB2_54:
	blt	$a0, $t1, .LBB2_83
# %bb.55:                               # %.preheader180.preheader
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$a1, $a1, %got_pc_lo12(listXsize)
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	b	.LBB2_57
	.p2align	4, , 16
.LBB2_56:                               # %._crit_edge191
                                        #   in Loop: Header=BB2_57 Depth=1
	addi.d	$t1, $a3, 1
	beq	$a3, $a0, .LBB2_83
.LBB2_57:                               # %.preheader180
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_59 Depth 2
	move	$a3, $t1
	slli.d	$a4, $t1, 2
	ldx.w	$a4, $a1, $a4
	blez	$a4, .LBB2_56
# %bb.58:                               # %.lr.ph190
                                        #   in Loop: Header=BB2_57 Depth=1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a2, $a4
	move	$a5, $zero
	alsl.d	$a6, $a3, $a1, 2
	.p2align	4, , 16
.LBB2_59:                               #   Parent Loop BB2_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a4, 0
	stptr.w	$zero, $a7, 6424
	ld.w	$a7, $a6, 0
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 8
	blt	$a5, $a7, .LBB2_59
	b	.LBB2_56
.LBB2_60:                               # %.lr.ph195.split.us.preheader
	move	$a3, $zero
	addi.d	$a5, $zero, -2
	.p2align	4, , 16
.LBB2_61:                               # %.lr.ph195.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	ld.w	$a7, $a6, 0
	addi.d	$a7, $a7, -1
	sltui	$a7, $a7, 1
	masknez	$a7, $a5, $a7
	stptr.w	$a7, $a6, 6424
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bltu	$a3, $a1, .LBB2_61
	b	.LBB2_69
.LBB2_62:                               # %.thread176.preheader
	ori	$a3, $zero, 4
	bgeu	$a1, $a3, .LBB2_64
# %bb.63:
	move	$a3, $zero
	b	.LBB2_67
.LBB2_64:                               # %vector.ph
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB2_65:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, -16
	ld.d	$t0, $a5, -8
	ld.d	$t1, $a5, 0
	ld.d	$t2, $a5, 8
	stptr.w	$zero, $a7, 6424
	stptr.w	$zero, $t0, 6424
	stptr.w	$zero, $t1, 6424
	stptr.w	$zero, $t2, 6424
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_65
# %bb.66:                               # %middle.block
	beq	$a3, $a1, .LBB2_69
.LBB2_67:                               # %.thread176.preheader294
	alsl.d	$a2, $a3, $a2, 3
	.p2align	4, , 16
.LBB2_68:                               # %.thread176
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	stptr.w	$zero, $a5, 6424
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bltu	$a3, $a1, .LBB2_68
.LBB2_69:                               # %._crit_edge196
	ld.w	$a0, $a0, 4
	blez	$a0, .LBB2_83
# %bb.70:                               # %.lr.ph195.1
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	ld.w	$a2, $a4, 24
	ld.d	$a1, $a1, 8
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB2_74
# %bb.71:                               # %.lr.ph195.1
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB2_76
# %bb.72:                               # %.lr.ph195.split.us197.1.preheader
	move	$a2, $zero
	.p2align	4, , 16
.LBB2_73:                               # %.lr.ph195.split.us197.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 0
	addi.d	$a4, $a4, -2
	sltu	$a4, $zero, $a4
	slli.d	$a4, $a4, 1
	stptr.w	$a4, $a3, 6424
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bltu	$a2, $a0, .LBB2_73
	b	.LBB2_83
.LBB2_74:                               # %.lr.ph195.split.us.1.preheader
	move	$a2, $zero
	addi.d	$a3, $zero, -2
	.p2align	4, , 16
.LBB2_75:                               # %.lr.ph195.split.us.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	ld.w	$a5, $a4, 0
	addi.d	$a5, $a5, -1
	sltui	$a5, $a5, 1
	masknez	$a5, $a3, $a5
	stptr.w	$a5, $a4, 6424
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bltu	$a2, $a0, .LBB2_75
	b	.LBB2_83
.LBB2_76:                               # %.thread176.1.preheader
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB2_78
# %bb.77:
	move	$a2, $zero
	b	.LBB2_81
.LBB2_78:                               # %vector.ph280
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a1, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB2_79:                               # %vector.body283
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -16
	ld.d	$a6, $a3, -8
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a3, 8
	stptr.w	$zero, $a5, 6424
	stptr.w	$zero, $a6, 6424
	stptr.w	$zero, $a7, 6424
	stptr.w	$zero, $t0, 6424
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB2_79
# %bb.80:                               # %middle.block288
	beq	$a2, $a0, .LBB2_83
.LBB2_81:                               # %.thread176.1.preheader291
	alsl.d	$a1, $a2, $a1, 3
	.p2align	4, , 16
.LBB2_82:                               # %.thread176.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	stptr.w	$zero, $a3, 6424
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bltu	$a2, $a0, .LBB2_82
.LBB2_83:                               # %.loopexit
	ret
.Lfunc_end2:
	.size	init_enc_mb_params, .Lfunc_end2-init_enc_mb_params
                                        # -- End function
	.globl	check_for_SI16                  # -- Begin function check_for_SI16
	.p2align	5
	.type	check_for_SI16,@function
check_for_SI16:                         # @check_for_SI16
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a4, $a0, 176
	ld.w	$a7, $a0, 180
	pcalau12i	$a0, %pc_hi20(lrec)
	ld.d	$a0, $a0, %pc_lo12(lrec)
	addi.w	$a1, $a4, 15
	addi.w	$a2, $a7, 15
	addi.d	$a3, $a4, -1
	slli.d	$a4, $a4, 2
	addi.w	$a5, $zero, -16
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a0, $a7
	add.d	$a7, $a7, $a4
	move	$t0, $a3
	.p2align	4, , 16
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	bne	$t1, $a5, .LBB3_6
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 4
	blt	$t0, $a1, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a7, $a6, 1
	blt	$a6, $a2, .LBB3_1
# %bb.5:
	ori	$a0, $zero, 1
	ret
.LBB3_6:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	check_for_SI16, .Lfunc_end3-check_for_SI16
                                        # -- End function
	.globl	list_prediction_cost            # -- Begin function list_prediction_cost
	.p2align	5
	.type	list_prediction_cost,@function
list_prediction_cost:                   # @list_prediction_cost
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
	move	$s0, $a3
	move	$s3, $a0
	slti	$a0, $a0, 2
	maskeqz	$a0, $s3, $a0
	alsl.d	$a0, $a0, $a3, 1
	ld.h	$a0, $a0, 74
	ori	$a3, $zero, 1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blt	$a3, $s3, .LBB4_29
# %bb.1:                                # %.preheader
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$a1, $a1, %got_pc_lo12(listXsize)
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $a1, $a2
	blez	$a2, .LBB4_62
# %bb.2:                                # %.lr.ph
	alsl.d	$s5, $a0, $a1, 2
	alsl.d	$s6, $s3, $a4, 2
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s7, $a0, %got_pc_lo12(img)
	lu12i.w	$a0, 3
	ori	$s8, $a0, 3304
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s2, $a0, %got_pc_lo12(input)
	pcalau12i	$a0, %got_pc_hi20(motion_cost)
	ld.d	$a0, $a0, %got_pc_lo12(motion_cost)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(refbits)
	ld.d	$a0, $a0, %got_pc_lo12(refbits)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $zero
	move	$s1, $zero
	ori	$a4, $zero, 3
	b	.LBB4_5
.LBB4_3:                                #   in Loop: Header=BB4_5 Depth=1
	beqz	$fp, .LBB4_21
	.p2align	4, , 16
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$s1, $s1, 1
	ext.w.h	$s4, $s1
	bge	$s4, $a0, .LBB4_62
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	slli.d	$fp, $s1, 48
	beqz	$fp, .LBB4_11
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	bnez	$s3, .LBB4_11
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a1, $s7, 0
	ldx.hu	$a1, $a1, $s8
	beqz	$a1, .LBB4_11
# %bb.8:                                #   in Loop: Header=BB4_5 Depth=1
	ldptr.w	$a0, $a0, 4732
	beqz	$a0, .LBB4_4
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s4
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(CheckReliabilityOfRef)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 3
	beqz	$a0, .LBB4_4
# %bb.10:                               # %._crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $s2, 0
.LBB4_11:                               #   in Loop: Header=BB4_5 Depth=1
	ldptr.w	$a2, $a0, 2152
	bnez	$a2, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_5 Depth=1
	ldptr.w	$a1, $a0, 2156
	beqz	$a1, .LBB4_21
.LBB4_13:                               #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a1, $s7, 0
	ld.w	$a1, $a1, 20
	beq	$a1, $a4, .LBB4_15
# %bb.14:                               #   in Loop: Header=BB4_5 Depth=1
	bnez	$a1, .LBB4_21
.LBB4_15:                               #   in Loop: Header=BB4_5 Depth=1
	beqz	$a2, .LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_5 Depth=1
	bnez	$a1, .LBB4_19
	b	.LBB4_3
.LBB4_17:                               # %.thread105
                                        #   in Loop: Header=BB4_5 Depth=1
	ldptr.w	$a1, $a0, 2156
	beqz	$a1, .LBB4_4
# %bb.18:                               # %.thread105._crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a1, $s7, 0
	ld.w	$a1, $a1, 20
	beqz	$a1, .LBB4_3
.LBB4_19:                               #   in Loop: Header=BB4_5 Depth=1
	bnez	$fp, .LBB4_4
# %bb.20:                               #   in Loop: Header=BB4_5 Depth=1
	bne	$a1, $a4, .LBB4_4
.LBB4_21:                               #   in Loop: Header=BB4_5 Depth=1
	ldptr.w	$a1, $a0, 4168
	ext.w.h	$a0, $s1
	beqz	$a1, .LBB4_24
# %bb.22:                               #   in Loop: Header=BB4_5 Depth=1
	ld.w	$a1, $s5, 0
	ori	$a2, $zero, 2
	bge	$a1, $a2, .LBB4_25
# %bb.23:                               #   in Loop: Header=BB4_5 Depth=1
	move	$a1, $zero
	b	.LBB4_26
.LBB4_24:                               #   in Loop: Header=BB4_5 Depth=1
	fld.d	$fa0, $s0, 24
	fadd.d	$fa0, $fa0, $fa0
	slti	$a1, $s4, 1
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB4_27
.LBB4_25:                               #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 2
	ldx.w	$a1, $a1, $a2
.LBB4_26:                               #   in Loop: Header=BB4_5 Depth=1
	ld.w	$a2, $s0, 40
	mul.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 16
.LBB4_27:                               #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a2
	ld.w	$a2, $s6, 0
	add.w	$a0, $a0, $a1
	bge	$a0, $a2, .LBB4_4
# %bb.28:                               #   in Loop: Header=BB4_5 Depth=1
	st.w	$a0, $s6, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	stx.b	$s1, $a0, $s3
	b	.LBB4_4
.LBB4_29:
	ori	$a1, $zero, 2
	bne	$s3, $a1, .LBB4_33
# %bb.30:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 196
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_37
# %bb.31:
	pcalau12i	$a1, %pc_hi20(wbp_weight)
	ld.d	$a1, $a1, %pc_lo12(wbp_weight)
	ld.b	$a2, $a5, 0
	ld.d	$a3, $a1, 0
	move	$a7, $a5
	ld.d	$a5, $a1, 8
	slli.d	$a6, $a2, 3
	ld.b	$a1, $a7, 1
	ldx.d	$a3, $a3, $a6
	ldx.d	$a5, $a5, $a6
	slli.d	$a6, $a1, 3
	ldx.d	$a3, $a3, $a6
	ldx.d	$a5, $a5, $a6
	ld.w	$a3, $a3, 0
	ld.w	$a5, $a5, 0
	add.d	$a3, $a3, $a5
	addi.w	$a3, $a3, -128
	addi.w	$a5, $zero, -257
	bltu	$a5, $a3, .LBB4_46
# %bb.32:
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.w	$a0, $a4, 8
	b	.LBB4_62
.LBB4_33:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4168
	beqz	$a1, .LBB4_41
# %bb.34:
	ld.w	$a1, $s0, 40
	pcalau12i	$a2, %got_pc_hi20(listXsize)
	ld.d	$a3, $a2, %got_pc_lo12(listXsize)
	slli.d	$a2, $a0, 2
	ldx.w	$a5, $a3, $a2
	ori	$a2, $zero, 2
	alsl.d	$a0, $a0, $a3, 2
	bge	$a5, $a2, .LBB4_42
# %bb.35:
	move	$a3, $zero
	ld.w	$a5, $a0, 4
	mul.w	$a0, $a3, $a1
	srai.d	$a0, $a0, 16
	blt	$a5, $a2, .LBB4_43
.LBB4_36:
	pcalau12i	$a2, %got_pc_hi20(refbits)
	ld.d	$a2, $a2, %got_pc_lo12(refbits)
	ld.d	$a2, $a2, 0
	ld.w	$a2, $a2, 0
	b	.LBB4_44
.LBB4_37:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4168
	beqz	$a1, .LBB4_49
# %bb.38:
	move	$a6, $a5
	ld.w	$a1, $s0, 40
	pcalau12i	$a2, %got_pc_hi20(listXsize)
	ld.d	$a3, $a2, %got_pc_lo12(listXsize)
	slli.d	$a2, $a0, 2
	ldx.w	$a5, $a3, $a2
	ori	$a2, $zero, 2
	alsl.d	$a0, $a0, $a3, 2
	bge	$a5, $a2, .LBB4_50
# %bb.39:
	move	$a3, $zero
	ld.w	$a5, $a0, 4
	mul.w	$a0, $a3, $a1
	srai.d	$a0, $a0, 16
	blt	$a5, $a2, .LBB4_51
.LBB4_40:
	pcalau12i	$a2, %got_pc_hi20(refbits)
	ld.d	$a2, $a2, %got_pc_lo12(refbits)
	move	$a5, $a6
	ld.b	$a3, $a6, 1
	ld.d	$a2, $a2, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a2, $a2, $a3
	b	.LBB4_52
.LBB4_41:
	fld.d	$fa0, $s0, 24
	vldi	$vr1, -1008
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	b	.LBB4_45
.LBB4_42:
	pcalau12i	$a3, %got_pc_hi20(refbits)
	ld.d	$a3, $a3, %got_pc_lo12(refbits)
	ld.d	$a3, $a3, 0
	ld.w	$a3, $a3, 0
	ld.w	$a5, $a0, 4
	mul.w	$a0, $a3, $a1
	srai.d	$a0, $a0, 16
	bge	$a5, $a2, .LBB4_36
.LBB4_43:
	move	$a2, $zero
.LBB4_44:
	mul.w	$a1, $a2, $a1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a1, $a0
.LBB4_45:
	slli.d	$fp, $s3, 2
	stx.w	$a0, $a4, $fp
	ld.w	$a6, $s0, 40
	ori	$a0, $zero, 1
	andn	$a5, $a0, $s3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	move	$s0, $a4
	move	$a4, $a6
	pcaddu18i	$ra, %call36(BPredPartitionCost)
	jirl	$ra, $ra, 0
	ldx.w	$a1, $s0, $fp
	add.d	$a0, $a1, $a0
	stx.w	$a0, $s0, $fp
	b	.LBB4_62
.LBB4_46:
	move	$t1, $a7
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a3, $a3, 0
	ldptr.w	$a3, $a3, 4168
	beqz	$a3, .LBB4_54
# %bb.47:
	ld.w	$a3, $s0, 40
	pcalau12i	$a5, %got_pc_hi20(listXsize)
	ld.d	$a6, $a5, %got_pc_lo12(listXsize)
	slli.d	$a5, $a0, 2
	ldx.w	$a7, $a6, $a5
	ori	$a5, $zero, 2
	alsl.d	$a0, $a0, $a6, 2
	bge	$a7, $a5, .LBB4_55
# %bb.48:
	move	$a2, $zero
	b	.LBB4_56
.LBB4_49:
	ld.b	$a0, $a5, 0
	fld.d	$fa0, $s0, 24
	slti	$a1, $a0, 1
	ori	$a2, $zero, 1
	ld.b	$a3, $a5, 1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slti	$a1, $a3, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	b	.LBB4_53
.LBB4_50:
	pcalau12i	$a3, %got_pc_hi20(refbits)
	ld.d	$a3, $a3, %got_pc_lo12(refbits)
	ld.b	$a5, $a6, 0
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a3, $a3, $a5
	ld.w	$a5, $a0, 4
	mul.w	$a0, $a3, $a1
	srai.d	$a0, $a0, 16
	bge	$a5, $a2, .LBB4_40
.LBB4_51:
	move	$a2, $zero
	move	$a5, $a6
.LBB4_52:
	mul.w	$a1, $a2, $a1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a1, $a0
.LBB4_53:
	st.w	$a0, $a4, 8
	ld.b	$a2, $a5, 0
	ld.b	$a3, $a5, 1
	b	.LBB4_61
.LBB4_54:
	andi	$a0, $a2, 255
	andi	$a1, $a1, 255
	fld.d	$fa0, $s0, 24
	ext.w.b	$a0, $a0
	slti	$a2, $a0, 1
	ori	$a3, $zero, 1
	masknez	$a5, $a3, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a5
	ext.w.b	$a1, $a1
	slti	$a2, $a1, 1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	add.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	b	.LBB4_60
.LBB4_55:
	pcalau12i	$a6, %got_pc_hi20(refbits)
	ld.d	$a6, $a6, %got_pc_lo12(refbits)
	ld.d	$a6, $a6, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a6, $a2
.LBB4_56:
	ld.w	$a6, $a0, 4
	mul.w	$a0, $a2, $a3
	srai.d	$a0, $a0, 16
	bge	$a6, $a5, .LBB4_58
# %bb.57:
	move	$a1, $zero
	b	.LBB4_59
.LBB4_58:
	pcalau12i	$a2, %got_pc_hi20(refbits)
	ld.d	$a2, $a2, %got_pc_lo12(refbits)
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
.LBB4_59:
	mul.w	$a1, $a1, $a3
	srai.d	$a1, $a1, 16
	add.d	$a0, $a1, $a0
.LBB4_60:
	st.w	$a0, $a4, 8
	ld.b	$a2, $t1, 0
	ld.b	$a3, $t1, 1
.LBB4_61:                               # %.loopexit
	ld.w	$a5, $s0, 40
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$fp, $a4
	move	$a4, $a5
	pcaddu18i	$ra, %call36(BIDPartitionCost)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 8
.LBB4_62:                               # %.loopexit
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
.Lfunc_end4:
	.size	list_prediction_cost, .Lfunc_end4-list_prediction_cost
                                        # -- End function
	.globl	compute_ref_cost                # -- Begin function compute_ref_cost
	.p2align	5
	.type	compute_ref_cost,@function
compute_ref_cost:                       # @compute_ref_cost
# %bb.0:
	alsl.d	$a2, $a2, $a0, 1
	ld.h	$a2, $a2, 74
	ld.w	$a0, $a0, 40
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %got_pc_hi20(listXsize)
	ld.d	$a3, $a3, %got_pc_lo12(listXsize)
	ldx.w	$a2, $a3, $a2
	ori	$a3, $zero, 2
	bge	$a2, $a3, .LBB5_2
# %bb.1:
	move	$a1, $zero
	mul.w	$a0, $a1, $a0
	srai.d	$a0, $a0, 16
	ret
.LBB5_2:
	pcalau12i	$a2, %got_pc_hi20(refbits)
	ld.d	$a2, $a2, %got_pc_lo12(refbits)
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	mul.w	$a0, $a1, $a0
	srai.d	$a0, $a0, 16
	ret
.Lfunc_end5:
	.size	compute_ref_cost, .Lfunc_end5-compute_ref_cost
                                        # -- End function
	.globl	determine_prediction_list       # -- Begin function determine_prediction_list
	.p2align	5
	.type	determine_prediction_list,@function
determine_prediction_list:              # @determine_prediction_list
# %bb.0:
	ori	$a6, $zero, 1
	bne	$a0, $a6, .LBB6_19
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ori	$a6, $zero, 2120
	ldx.w	$a0, $a0, $a6
	beqz	$a0, .LBB6_19
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$t1, $a0, 0
	ld.w	$t0, $a1, 0
	ld.w	$a7, $a1, 4
	lu12i.w	$a6, 3
	ori	$a6, $a6, 2122
	stx.h	$zero, $t1, $a6
	st.h	$zero, $a5, 0
	blt	$a7, $t0, .LBB6_6
# %bb.3:
	ld.w	$t1, $a1, 8
	blt	$t1, $t0, .LBB6_6
# %bb.4:
	ld.w	$t1, $a1, 12
	blt	$t1, $t0, .LBB6_6
# %bb.5:
	ld.w	$t1, $a1, 16
	bge	$t1, $t0, .LBB6_24
.LBB6_6:
	ld.w	$t1, $a1, 8
	blt	$t0, $a7, .LBB6_10
# %bb.7:
	blt	$t1, $a7, .LBB6_10
# %bb.8:
	ld.w	$t2, $a1, 12
	blt	$t2, $a7, .LBB6_10
# %bb.9:
	ld.w	$t2, $a1, 16
	bge	$t2, $a7, .LBB6_25
.LBB6_10:                               # %._crit_edge
	ld.w	$t2, $a1, 12
	blt	$t0, $t1, .LBB6_14
# %bb.11:                               # %._crit_edge
	blt	$a7, $t1, .LBB6_14
# %bb.12:                               # %._crit_edge
	blt	$t2, $t1, .LBB6_14
# %bb.13:
	ld.w	$t3, $a1, 16
	bge	$t3, $t1, .LBB6_23
.LBB6_14:                               # %._crit_edge103
	blt	$t1, $t2, .LBB6_18
# %bb.15:                               # %._crit_edge103
	blt	$t0, $t2, .LBB6_18
# %bb.16:                               # %._crit_edge103
	blt	$a7, $t2, .LBB6_18
# %bb.17:
	ld.w	$a7, $a1, 16
	bge	$a7, $t2, .LBB6_26
.LBB6_18:
	ori	$a7, $zero, 2
	st.b	$a7, $a3, 0
	ld.w	$a1, $a1, 16
	ld.w	$a3, $a4, 0
	add.d	$a1, $a3, $a1
	st.w	$a1, $a4, 0
	st.h	$a7, $a5, 0
	st.h	$zero, $a2, 0
	ld.d	$a0, $a0, 0
	stx.h	$a7, $a0, $a6
	ret
.LBB6_19:
	ld.w	$a2, $a1, 0
	ld.w	$a0, $a1, 4
	blt	$a0, $a2, .LBB6_21
# %bb.20:
	ld.w	$a5, $a1, 8
	bge	$a5, $a2, .LBB6_24
.LBB6_21:
	blt	$a2, $a0, .LBB6_23
# %bb.22:
	ld.w	$a2, $a1, 8
	bge	$a2, $a0, .LBB6_25
.LBB6_23:
	ori	$a0, $zero, 2
	st.b	$a0, $a3, 0
	ld.w	$a0, $a1, 8
	ld.w	$a1, $a4, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $a4, 0
	ret
.LBB6_24:
	st.b	$zero, $a3, 0
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a4, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $a4, 0
	ret
.LBB6_25:
	ori	$a0, $zero, 1
	st.b	$a0, $a3, 0
	ld.w	$a0, $a1, 4
	ld.w	$a1, $a4, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $a4, 0
	ret
.LBB6_26:
	ori	$a7, $zero, 2
	st.b	$a7, $a3, 0
	ld.w	$a1, $a1, 12
	ld.w	$a3, $a4, 0
	add.d	$a1, $a3, $a1
	ld.d	$a0, $a0, 0
	st.w	$a1, $a4, 0
	ori	$a1, $zero, 1
	st.h	$a1, $a5, 0
	stx.h	$a1, $a0, $a6
	st.h	$zero, $a2, 0
	ret
.Lfunc_end6:
	.size	determine_prediction_list, .Lfunc_end6-determine_prediction_list
                                        # -- End function
	.globl	compute_mode_RD_cost            # -- Begin function compute_mode_RD_cost
	.p2align	5
	.type	compute_mode_RD_cost,@function
compute_mode_RD_cost:                   # @compute_mode_RD_cost
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a6
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s5, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s7, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 5100
	ori	$a1, $zero, 2
	addi.w	$s4, $s5, -1
	pcalau12i	$a2, %pc_hi20(active_sps)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bne	$a0, $a1, .LBB7_8
# %bb.1:
	ori	$a1, $zero, 3
	ori	$a0, $zero, 1
	bltu	$s4, $a1, .LBB7_9
# %bb.2:
	bnez	$s5, .LBB7_5
# %bb.3:
	beqz	$s6, .LBB7_5
# %bb.4:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1156
	b	.LBB7_7
.LBB7_5:
	ori	$a0, $zero, 8
	bne	$s5, $a0, .LBB7_8
# %bb.6:
	ld.hu	$a0, $s2, 52
.LBB7_7:                                # %.thread
	sltu	$a0, $zero, $a0
	b	.LBB7_9
.LBB7_8:
	move	$a0, $zero
.LBB7_9:                                # %.thread
	st.w	$a0, $s3, 472
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SetModesAndRefframeForBlocks)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a1, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s7, 0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ldptr.w	$a0, $a0, 4176
	stptr.w	$zero, $a1, 15256
	bnez	$a0, .LBB7_13
# %bb.10:
	ld.w	$a0, $s3, 416
	beqz	$a0, .LBB7_13
# %bb.11:
	ld.w	$a0, $s3, 72
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB7_35
# %bb.12:
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	lu12i.w	$a1, 6
	ori	$a1, $a1, 1536
	and	$a0, $a0, $a1
	beqz	$a0, .LBB7_35
.LBB7_13:
	sltui	$a0, $s5, 1
	sltu	$a1, $zero, $s6
	and	$s6, $a0, $a1
	ori	$s8, $zero, 1
	ori	$fp, $zero, 2
	lu12i.w	$a0, 1
	ori	$a1, $a0, 72
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(pred)
	ld.d	$a1, $a1, %got_pc_lo12(pred)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(tr4x4)
	ld.d	$a1, $a1, %got_pc_lo12(tr4x4)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(tr8x8)
	ld.d	$a1, $a1, %got_pc_lo12(tr8x8)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $a0, 2584
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_14:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s2, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(RDCost_for_macroblocks)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	beqz	$a0, .LBB7_24
# %bb.15:                               #   in Loop: Header=BB7_14 Depth=1
	ldptr.w	$a0, $a1, 5116
	beqz	$a0, .LBB7_19
# %bb.16:                               #   in Loop: Header=BB7_14 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ori	$a0, $zero, 8
	bne	$s5, $a0, .LBB7_18
# %bb.17:                               #   in Loop: Header=BB7_14 Depth=1
	ld.w	$a0, $s3, 472
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a0, $a1
.LBB7_18:                               # %.sink.split
                                        #   in Loop: Header=BB7_14 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a1, 192
	ld.w	$a1, $a1, 196
	pcaddu18i	$ra, %call36(rc_store_diff)
	jirl	$ra, $ra, 0
.LBB7_19:                               #   in Loop: Header=BB7_14 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(store_macroblock_parameters)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	bnez	$s5, .LBB7_24
# %bb.20:                               #   in Loop: Header=BB7_14 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	bne	$a0, $fp, .LBB7_24
# %bb.21:                               #   in Loop: Header=BB7_14 Depth=1
	ldptr.w	$a0, $a1, 5744
	beqz	$a0, .LBB7_24
# %bb.22:                               #   in Loop: Header=BB7_14 Depth=1
	ld.w	$a0, $s3, 364
	bnez	$a0, .LBB7_24
# %bb.23:                               #   in Loop: Header=BB7_14 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.h	$s8, $a0, 0
	.p2align	4, , 16
.LBB7_24:                               #   in Loop: Header=BB7_14 Depth=1
	ldptr.w	$a0, $a1, 5100
	bne	$a0, $s8, .LBB7_33
# %bb.25:                               #   in Loop: Header=BB7_14 Depth=1
	bgeu	$fp, $s4, .LBB7_30
# %bb.26:                               #   in Loop: Header=BB7_14 Depth=1
	beqz	$s6, .LBB7_28
# %bb.27:                               #   in Loop: Header=BB7_14 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1156
	bnez	$a0, .LBB7_30
	b	.LBB7_32
	.p2align	4, , 16
.LBB7_28:                               #   in Loop: Header=BB7_14 Depth=1
	ori	$a0, $zero, 8
	bne	$s5, $a0, .LBB7_32
# %bb.29:                               #   in Loop: Header=BB7_14 Depth=1
	ld.hu	$a0, $s2, 52
	beqz	$a0, .LBB7_32
.LBB7_30:                               #   in Loop: Header=BB7_14 Depth=1
	ld.w	$a0, $s3, 472
	bnez	$a0, .LBB7_32
# %bb.31:                               # %.backedge
                                        #   in Loop: Header=BB7_14 Depth=1
	st.w	$s8, $s3, 472
	b	.LBB7_14
.LBB7_32:                               # %.thread74
	st.w	$zero, $s3, 472
.LBB7_33:                               # %.loopexit
	beqz	$s6, .LBB7_35
# %bb.34:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	beqz	$a0, .LBB7_36
.LBB7_35:
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB7_36:
	ld.hu	$a0, $s2, 44
	beqz	$a0, .LBB7_35
# %bb.37:
	ld.w	$a0, $s3, 364
	beqz	$a0, .LBB7_35
# %bb.38:
	andi	$a0, $a0, 15
	ori	$a2, $zero, 15
	beq	$a0, $a2, .LBB7_35
# %bb.39:
	ldptr.w	$a0, $a1, 4184
	bnez	$a0, .LBB7_35
# %bb.40:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $s2, 0
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 15256
	move	$a0, $zero
	move	$a1, $s1
	move	$a2, $s0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(RDCost_for_macroblocks)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_35
# %bb.41:
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 5116
	beqz	$a0, .LBB7_43
# %bb.42:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a1, 192
	ld.w	$a1, $a1, 196
	pcalau12i	$a2, %got_pc_hi20(pred)
	ld.d	$a2, $a2, %got_pc_lo12(pred)
	pcaddu18i	$ra, %call36(rc_store_diff)
	jirl	$ra, $ra, 0
.LBB7_43:
	move	$a0, $zero
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(store_macroblock_parameters)
	jr	$t8
.Lfunc_end7:
	.size	compute_mode_RD_cost, .Lfunc_end7-compute_mode_RD_cost
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function submacroblock_mode_decision
.LCPI8_0:
	.dword	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	submacroblock_mode_decision
	.p2align	5
	.type	submacroblock_mode_decision,@function
submacroblock_mode_decision:            # @submacroblock_mode_decision
# %bb.0:
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 608                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 600                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 720
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L__const.submacroblock_mode_decision.bmcost)
	addi.d	$a0, $a0, %pc_lo12(.L__const.submacroblock_mode_decision.bmcost)
	ld.w	$a1, $a0, 16
	vld	$vr0, $a0, 0
	st.w	$a1, $sp, 584
	vst	$vr0, $sp, 568
	st.w	$zero, $sp, 564
	sltui	$a0, $t0, 1
	ori	$a1, $zero, 2
	masknez	$a1, $a1, $a0
	ori	$a3, $zero, 5
	maskeqz	$a3, $a3, $a0
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$s7, $a4, %got_pc_lo12(img)
	ld.d	$a4, $s7, 0
	lu12i.w	$s1, 3
	ori	$a5, $s1, 1896
	masknez	$a5, $a5, $a0
	ori	$a7, $s1, 1888
	maskeqz	$a7, $a7, $a0
	or	$a5, $a7, $a5
	ldx.d	$a5, $a4, $a5
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	ori	$a5, $s1, 1912
	masknez	$a5, $a5, $a0
	ori	$a7, $s1, 1904
	maskeqz	$a7, $a7, $a0
	or	$a5, $a7, $a5
	ldx.d	$a4, $a4, $a5
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.b	$zero, $sp, 549
	lu12i.w	$a4, 15
	ori	$a4, $a4, 3840
	slli.d	$s0, $a6, 2
	st.h	$a4, $sp, 546
	move	$a4, $s0
	bstrins.d	$a4, $zero, 2, 0
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 320                   # 8-byte Folded Spill
	andi	$fp, $a6, 1
	st.d	$t0, $sp, 376                   # 8-byte Folded Spill
	beqz	$t0, .LBB8_2
# %bb.1:
	ori	$a4, $zero, 1
	st.w	$a4, $a2, 472
.LBB8_2:
	ld.d	$a2, $sp, 712
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 704
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	or	$a1, $a3, $a1
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	slli.d	$a1, $a0, 1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$s5, $fp, 3
	pcalau12i	$a0, %got_pc_hi20(cs_cm)
	ld.d	$a0, $a0, %got_pc_lo12(cs_cm)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(store_coding_state)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	sltui	$a6, $a0, 1
	addi.d	$a0, $s4, 44
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	andi	$a0, $fp, 2
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	addi.d	$a0, $s4, 74
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a0, $fp, $s2, 1
	lu12i.w	$a4, 1
	ori	$a1, $a4, 2052
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ori	$a0, $a4, 2060
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ori	$a0, $a4, 2064
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ori	$a0, $a4, 2068
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$a0, $fp, 31, 31
	add.d	$a0, $fp, $a0
	bstrpick.d	$a0, $a0, 30, 1
	slli.d	$a0, $a0, 1
	sub.d	$a0, $fp, $a0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 1
	ori	$a1, $zero, 51
	sll.w	$a0, $a1, $a0
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 3
	andi	$a0, $a0, 8
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.w	$a2, $a2, 0
	ori	$a0, $zero, 1
	bstrins.d	$a0, $fp, 3, 3
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	bstrins.d	$a0, $fp, 3, 3
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$a0, $zero, 3
	bstrins.d	$a0, $fp, 3, 3
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	bstrins.d	$a0, $fp, 3, 3
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$a0, $zero, 5
	bstrins.d	$a0, $fp, 3, 3
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 6
	bstrins.d	$a0, $fp, 3, 3
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 7
	bstrins.d	$a0, $fp, 3, 3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a0, $s0, 7
	slli.d	$a3, $a2, 6
	addi.w	$s3, $a0, 0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	bstrins.d	$a3, $fp, 5, 5
	add.d	$a0, $a3, $s2
	ori	$a1, $a4, 3124
	slli.d	$a5, $a2, 5
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	bstrins.d	$a5, $fp, 4, 4
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $a5, $s2
	ori	$a1, $a4, 2598
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $s1, 350
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $a5, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$s2, $zero, 3
	addi.d	$a0, $a2, -1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(submacroblock_mode_decision.fadjust)
	addi.d	$a0, $a0, %pc_lo12(submacroblock_mode_decision.fadjust)
	st.d	$zero, $sp, 280                 # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	lu12i.w	$a1, 524287
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI8_0)
	ori	$a0, $a1, 4095
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 440                   # 8-byte Folded Spill
	st.d	$s4, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(si_frame_indicator)
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_3:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	fmov.d	$fs1, $fs0
	ld.d	$s7, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
.LBB8_4:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(reset_coding_state)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
.LBB8_5:                                #   in Loop: Header=BB8_6 Depth=1
	addi.d	$a6, $a6, 1
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a6, $a0, .LBB8_89
.LBB8_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_52 Depth 2
                                        #     Child Loop BB8_81 Depth 2
                                        #     Child Loop BB8_85 Depth 2
	slli.d	$a0, $a6, 2
	pcalau12i	$a1, %pc_hi20(b8_mode_table)
	addi.d	$a1, $a1, %pc_lo12(b8_mode_table)
	ldx.w	$s8, $a1, $a0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	slli.d	$a0, $s8, 1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(lrec)
	beqz	$a0, .LBB8_5
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_10
# %bb.8:                                #   in Loop: Header=BB8_6 Depth=1
	sltu	$a0, $zero, $a6
	addi.d	$a1, $a6, -5
	sltu	$a1, $zero, $a1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_6 Depth=1
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1156
	beqz	$a0, .LBB8_5
.LBB8_10:                               #   in Loop: Header=BB8_6 Depth=1
	st.d	$zero, $sp, 592
	ori	$a0, $zero, 5
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$a6, $sp, 392                   # 8-byte Folded Spill
	beq	$a6, $a0, .LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_6 Depth=1
	bnez	$a6, .LBB8_16
.LBB8_12:                               #   in Loop: Header=BB8_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s0, 0
	ldptr.w	$a0, $a0, 4168
	bnez	$a0, .LBB8_39
# %bb.13:                               #   in Loop: Header=BB8_6 Depth=1
	st.w	$zero, $sp, 588
	addi.d	$a1, $sp, 588
	move	$a0, $fp
	pcaddu18i	$ra, %call36(GetDirectCost8x8)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	beq	$a0, $a1, .LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a2, $a1, .LBB8_26
.LBB8_15:                               #   in Loop: Header=BB8_6 Depth=1
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	bnez	$a3, .LBB8_28
	b	.LBB8_34
.LBB8_16:                               #   in Loop: Header=BB8_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 4172
	ld.w	$a0, $s4, 32
	beqz	$a1, .LBB8_18
# %bb.17:                               #   in Loop: Header=BB8_6 Depth=1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a0, %got_pc_hi20(lambda_mf_factor)
	ld.d	$a0, $a0, %got_pc_lo12(lambda_mf_factor)
	fld.d	$fa1, $a0, 0
	fmul.d	$fa0, $fa1, $fa0
	ld.w	$a0, $s4, 36
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $sp, 552
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ld.w	$a0, $s4, 40
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $sp, 556
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB8_19
.LBB8_18:                               #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a2, $s4, 36
	ld.w	$a1, $s4, 40
	st.w	$a0, $sp, 552
	st.w	$a2, $sp, 556
.LBB8_19:                               #   in Loop: Header=BB8_6 Depth=1
	st.w	$a1, $sp, 560
	addi.d	$a2, $sp, 552
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(PartitionMotionSearch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.w	$a0, $sp, 568
	addi.d	$a0, $sp, 448
	ori	$a2, $zero, 96
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 448
	addi.d	$a4, $sp, 568
	addi.d	$a5, $sp, 546
	move	$a0, $zero
	move	$a1, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(list_prediction_cost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.w	$a1, $a0, 168
	ld.w	$a0, $a0, 172
	ld.bu	$s0, $sp, 546
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	add.w	$s7, $a1, $a2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a1
	addi.w	$t2, $a5, 2
	ext.w.b	$a0, $s0
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	move	$a6, $s4
	ld.d	$s4, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $s4, 0
	ldptr.d	$a1, $a1, 6488
	ld.d	$a1, $a1, 0
	slli.d	$s1, $a5, 3
	ldx.d	$a1, $a1, $s1
	stx.b	$s0, $a1, $s7
	ld.d	$a2, $s4, 0
	ld.h	$a1, $a6, 74
	ldptr.d	$a3, $a2, 6496
	ori	$a7, $zero, 264
	mul.d	$a1, $a1, $a7
	ld.d	$a3, $a3, 0
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 3
	ld.d	$a4, $a1, 24
	ldx.d	$a3, $a3, $s1
	slli.d	$a1, $s7, 3
	stx.d	$a4, $a3, $a1
	ldptr.d	$a2, $a2, 6488
	ld.d	$a2, $a2, 0
	ldx.d	$a3, $a2, $s1
	addi.d	$a2, $s7, 1
	stx.b	$s0, $a3, $a2
	ld.d	$a4, $s4, 0
	ld.h	$a3, $a6, 74
	ldptr.d	$a6, $a4, 6496
	mul.d	$a3, $a3, $a7
	ld.d	$a6, $a6, 0
	add.d	$a3, $a4, $a3
	alsl.d	$a3, $a0, $a3, 3
	ld.d	$a7, $a3, 24
	ldx.d	$a6, $a6, $s1
	slli.d	$a3, $a2, 3
	addi.d	$s5, $a5, 1
	stx.d	$a7, $a6, $a3
	bge	$s5, $t2, .LBB8_21
# %bb.20:                               #   in Loop: Header=BB8_6 Depth=1
	ldptr.d	$a4, $a4, 6488
	ld.d	$a4, $a4, 0
	slli.d	$a5, $s5, 3
	ldx.d	$a4, $a4, $a5
	stx.b	$s0, $a4, $s7
	ld.d	$a4, $s4, 0
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a6, $t0, 0
	ldptr.d	$a7, $a4, 6496
	ori	$t1, $zero, 264
	mul.d	$a6, $a6, $t1
	ld.d	$a7, $a7, 0
	add.d	$a6, $a4, $a6
	alsl.d	$a6, $a0, $a6, 3
	ld.d	$a6, $a6, 24
	ldx.d	$a7, $a7, $a5
	stx.d	$a6, $a7, $a1
	ldptr.d	$a1, $a4, 6488
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $a5
	stx.b	$s0, $a1, $a2
	ld.d	$a1, $s4, 0
	ld.h	$a2, $t0, 0
	ldptr.d	$a4, $a1, 6496
	mul.d	$a2, $a2, $t1
	ld.d	$a4, $a4, 0
	add.d	$a1, $a1, $a2
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, 24
	ldx.d	$a1, $a4, $a5
	stx.d	$a0, $a1, $a3
.LBB8_21:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_24
# %bb.22:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bstrins.d	$a0, $a0, 62, 32
	st.d	$a0, $sp, 572
	addi.d	$a0, $sp, 448
	ori	$a2, $zero, 96
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s0
	st.d	$t2, $sp, 272                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.d	$a3, $sp, 448
	addi.d	$a4, $sp, 568
	addi.d	$a5, $sp, 546
	move	$a1, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(list_prediction_cost)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 448
	ori	$a2, $zero, 96
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	addi.d	$a3, $sp, 448
	addi.d	$a4, $sp, 568
	addi.d	$a5, $sp, 546
	move	$a1, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(list_prediction_cost)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 568
	addi.d	$a2, $sp, 546
	addi.d	$a3, $sp, 549
	addi.d	$a5, $sp, 550
	move	$a0, $s8
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(determine_prediction_list)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 0
	ld.bu	$s0, $sp, 546
	ldx.d	$a1, $a0, $s1
	slli.d	$a0, $s0, 8
	or	$a0, $a0, $s0
	stx.h	$a0, $a1, $s7
	ld.d	$a1, $s4, 0
	ldptr.d	$a1, $a1, 6488
	ld.d	$a1, $a1, 8
	ld.bu	$a2, $sp, 547
	ldx.d	$a3, $a1, $s1
	slli.d	$a1, $a2, 8
	or	$a1, $a1, $a2
	stx.h	$a1, $a3, $s7
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	bge	$s5, $a2, .LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a2, $s4, 0
	ldptr.d	$a2, $a2, 6488
	ld.d	$a2, $a2, 0
	slli.d	$a3, $s5, 3
	ldx.d	$a2, $a2, $a3
	stx.h	$a0, $a2, $s7
	ld.d	$a0, $s4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $a3
	stx.h	$a1, $a0, $s7
	b	.LBB8_25
.LBB8_24:                               #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a0, $sp, 568
	st.b	$zero, $sp, 549
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB8_25:                               # %.loopexit368
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$s7, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
	b	.LBB8_40
.LBB8_26:                               #   in Loop: Header=BB8_6 Depth=1
	add.d	$a2, $a2, $a0
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	beqz	$a2, .LBB8_34
# %bb.27:                               #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a2, $sp, 588
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	add.d	$a2, $a3, $a2
.LBB8_28:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a3, 0
	ld.d	$a2, $s0, 0
	ldptr.w	$a3, $a2, 5100
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB8_35
# %bb.29:                               #   in Loop: Header=BB8_6 Depth=1
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB8_37
# %bb.30:                               #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a3, $sp, 588
	blt	$a3, $a0, .LBB8_36
# %bb.31:                               #   in Loop: Header=BB8_6 Depth=1
	ld.hu	$a4, $s4, 54
	beqz	$a4, .LBB8_36
# %bb.32:                               #   in Loop: Header=BB8_6 Depth=1
	ld.hu	$a4, $s4, 56
	beqz	$a4, .LBB8_36
# %bb.33:                               #   in Loop: Header=BB8_6 Depth=1
	ld.hu	$a4, $s4, 58
	sltui	$a4, $a4, 1
	masknez	$a0, $a0, $a4
	maskeqz	$a3, $a3, $a4
	or	$a0, $a3, $a0
	b	.LBB8_37
.LBB8_34:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a2, 0
	move	$a1, $a0
	b	.LBB8_38
.LBB8_35:                               #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a0, $sp, 588
	b	.LBB8_37
.LBB8_36:                               #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $a3
.LBB8_37:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	ldptr.w	$a0, $a2, 5100
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB8_39
.LBB8_38:                               # %.sink.split
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
.LBB8_39:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $s7, 0
	ld.w	$a1, $a0, 172
	pcalau12i	$a2, %pc_hi20(direct_ref_idx)
	ld.d	$a2, $a2, %pc_lo12(direct_ref_idx)
	ld.w	$a0, $a0, 168
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a3
	ld.d	$a3, $a2, 0
	ld.d	$a2, $a2, 8
	pcalau12i	$a4, %pc_hi20(direct_pdir)
	ld.d	$a4, $a4, %pc_lo12(direct_pdir)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ldx.d	$a2, $a2, $a1
	ldx.d	$a1, $a4, $a1
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a4
	ldx.bu	$s0, $a3, $a0
	ldx.b	$a2, $a2, $a0
	ldx.b	$a0, $a1, $a0
	st.b	$s0, $sp, 546
	st.b	$a2, $sp, 547
	st.b	$a0, $sp, 549
.LBB8_40:                               # %.loopexit368
                                        #   in Loop: Header=BB8_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s5, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s5, 0
	ldptr.w	$a0, $a0, 4168
	st.d	$s8, $sp, 384                   # 8-byte Folded Spill
	beqz	$a0, .LBB8_42
# %bb.41:                               #   in Loop: Header=BB8_6 Depth=1
	move	$a2, $fp
	move	$a3, $s8
	move	$s8, $s7
	move	$s7, $s4
	fld.d	$fa0, $s4, 0
	ld.b	$a4, $sp, 549
	ld.b	$a6, $sp, 547
	ext.w.b	$a5, $s0
	addi.d	$a0, $sp, 564
	addi.d	$a1, $sp, 592
	pcaddu18i	$ra, %call36(RDCost_for_8x8blocks)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	ld.d	$a0, $s5, 0
	ldptr.w	$a0, $a0, 4168
	bnez	$a0, .LBB8_47
	b	.LBB8_76
.LBB8_42:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 524287
	move	$s8, $s7
	ori	$a1, $a1, 4095
	bne	$a0, $a1, .LBB8_44
# %bb.43:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s7, $s4
	ld.d	$a0, $s5, 0
	ldptr.w	$a0, $a0, 4168
	bnez	$a0, .LBB8_47
	b	.LBB8_76
.LBB8_44:                               #   in Loop: Header=BB8_6 Depth=1
	ld.b	$a1, $sp, 549
	slt	$a2, $zero, $a1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.h	$a2, $a3, $a2
	ld.w	$fp, $s4, 40
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %got_pc_hi20(listXsize)
	ld.d	$a3, $a3, %got_pc_lo12(listXsize)
	ldx.w	$a3, $a3, $a2
	move	$a2, $zero
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB8_46
# %bb.45:                               #   in Loop: Header=BB8_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(refbits)
	ld.d	$a0, $a0, %got_pc_lo12(refbits)
	ld.d	$s1, $a0, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(B8Mode2Value)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $s1, $a0
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB8_46:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s7, $s4
	mul.w	$a1, $a2, $fp
	srli.d	$a1, $a1, 16
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $s5, 0
	ldptr.w	$a0, $a0, 4168
	beqz	$a0, .LBB8_76
	.p2align	4, , 16
.LBB8_47:                               #   in Loop: Header=BB8_6 Depth=1
	fcmp.cule.d	$fcc0, $fs1, $fs0
	bcnez	$fcc0, .LBB8_76
# %bb.48:                               # %._crit_edge
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$s7, $s8
.LBB8_49:                               #   in Loop: Header=BB8_6 Depth=1
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.b	$a0, $sp, 549
	ld.b	$a1, $sp, 547
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	st.h	$a4, $a2, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	stx.b	$a0, $a2, $fp
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	stx.b	$s0, $a0, $fp
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	stx.b	$a1, $a0, $fp
	ld.d	$a0, $s7, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $fp, $a1, 2
	st.w	$a4, $a1, 376
	ld.d	$a1, $s5, 0
	ldptr.w	$a1, $a1, 4168
	ld.w	$s4, $sp, 564
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	beqz	$a1, .LBB8_79
# %bb.50:                               # %.preheader362
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$s8, $s5
	pcalau12i	$a1, %got_pc_hi20(cbp_blk8x8)
	ld.d	$a1, $a1, %got_pc_lo12(cbp_blk8x8)
	ld.w	$a2, $a1, 0
	ld.w	$a3, $sp, 592
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	and	$a2, $a2, $a4
	ldptr.d	$a0, $a0, 14160
	or	$a2, $a2, $a3
	st.w	$a2, $a1, 0
	slli.d	$s0, $fp, 3
	ldx.d	$a0, $a0, $s0
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $fp, 24
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $fp, 24
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 6440
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	b	.LBB8_52
	.p2align	4, , 16
.LBB8_51:                               #   in Loop: Header=BB8_52 Depth=2
	addi.d	$a6, $a5, 1
	addi.d	$a4, $a4, 64
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bge	$a5, $s3, .LBB8_78
.LBB8_52:                               #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a0, 180
	move	$a5, $a6
	add.d	$a6, $a6, $a7
	ld.w	$t1, $a0, 176
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a1, $a7
	add.w	$t3, $t1, $t5
	slli.d	$t0, $t3, 1
	ldx.h	$t0, $a7, $t0
	ld.d	$t4, $s1, %pc_lo12(lrec)
	st.h	$t0, $a2, -526
	add.d	$t0, $a0, $a3
	ld.h	$t2, $t0, -14
	st.h	$t2, $a2, -14
	ld.w	$t2, $a0, 20
	alsl.d	$a6, $a6, $t4, 3
	bne	$t2, $s2, .LBB8_55
# %bb.53:                               #   in Loop: Header=BB8_52 Depth=2
	ld.w	$t4, $s6, %pc_lo12(si_frame_indicator)
	bnez	$t4, .LBB8_55
# %bb.54:                               #   in Loop: Header=BB8_52 Depth=2
	ld.d	$t1, $a6, 0
	slli.d	$t2, $t3, 2
	ldx.w	$t1, $t1, $t2
	st.w	$t1, $a4, -28
	ld.w	$t1, $a0, 176
	ld.w	$t2, $a0, 20
.LBB8_55:                               #   in Loop: Header=BB8_52 Depth=2
	add.w	$t3, $t1, $t6
	slli.d	$t4, $t3, 1
	ldx.h	$t4, $a7, $t4
	st.h	$t4, $a2, -524
	ld.h	$t4, $t0, -12
	st.h	$t4, $a2, -12
	bne	$t2, $s2, .LBB8_58
# %bb.56:                               #   in Loop: Header=BB8_52 Depth=2
	ld.w	$t4, $s6, %pc_lo12(si_frame_indicator)
	bnez	$t4, .LBB8_58
# %bb.57:                               #   in Loop: Header=BB8_52 Depth=2
	ld.d	$t1, $a6, 0
	slli.d	$t2, $t3, 2
	ldx.w	$t1, $t1, $t2
	st.w	$t1, $a4, -24
	ld.w	$t1, $a0, 176
	ld.w	$t2, $a0, 20
.LBB8_58:                               #   in Loop: Header=BB8_52 Depth=2
	add.w	$t3, $t1, $t7
	slli.d	$t4, $t3, 1
	ldx.h	$t4, $a7, $t4
	st.h	$t4, $a2, -522
	ld.h	$t4, $t0, -10
	st.h	$t4, $a2, -10
	bne	$t2, $s2, .LBB8_61
# %bb.59:                               #   in Loop: Header=BB8_52 Depth=2
	ld.w	$t4, $s6, %pc_lo12(si_frame_indicator)
	bnez	$t4, .LBB8_61
# %bb.60:                               #   in Loop: Header=BB8_52 Depth=2
	ld.d	$t1, $a6, 0
	slli.d	$t2, $t3, 2
	ldx.w	$t1, $t1, $t2
	st.w	$t1, $a4, -20
	ld.w	$t1, $a0, 176
	ld.w	$t2, $a0, 20
.LBB8_61:                               #   in Loop: Header=BB8_52 Depth=2
	add.w	$t3, $t1, $t8
	slli.d	$t4, $t3, 1
	ldx.h	$t4, $a7, $t4
	st.h	$t4, $a2, -520
	ld.h	$t4, $t0, -8
	st.h	$t4, $a2, -8
	bne	$t2, $s2, .LBB8_64
# %bb.62:                               #   in Loop: Header=BB8_52 Depth=2
	ld.w	$t4, $s6, %pc_lo12(si_frame_indicator)
	bnez	$t4, .LBB8_64
# %bb.63:                               #   in Loop: Header=BB8_52 Depth=2
	ld.d	$t1, $a6, 0
	slli.d	$t2, $t3, 2
	ldx.w	$t1, $t1, $t2
	st.w	$t1, $a4, -16
	ld.w	$t1, $a0, 176
	ld.w	$t2, $a0, 20
.LBB8_64:                               #   in Loop: Header=BB8_52 Depth=2
	add.w	$t3, $t1, $fp
	slli.d	$t4, $t3, 1
	ldx.h	$t4, $a7, $t4
	st.h	$t4, $a2, -518
	ld.h	$t4, $t0, -6
	st.h	$t4, $a2, -6
	bne	$t2, $s2, .LBB8_67
# %bb.65:                               #   in Loop: Header=BB8_52 Depth=2
	ld.w	$t4, $s6, %pc_lo12(si_frame_indicator)
	bnez	$t4, .LBB8_67
# %bb.66:                               #   in Loop: Header=BB8_52 Depth=2
	ld.d	$t1, $a6, 0
	slli.d	$t2, $t3, 2
	ldx.w	$t1, $t1, $t2
	st.w	$t1, $a4, -12
	ld.w	$t1, $a0, 176
	ld.w	$t2, $a0, 20
.LBB8_67:                               #   in Loop: Header=BB8_52 Depth=2
	add.w	$t3, $t1, $s0
	slli.d	$t4, $t3, 1
	ldx.h	$t4, $a7, $t4
	st.h	$t4, $a2, -516
	ld.h	$t4, $t0, -4
	st.h	$t4, $a2, -4
	bne	$t2, $s2, .LBB8_70
# %bb.68:                               #   in Loop: Header=BB8_52 Depth=2
	ld.w	$t4, $s6, %pc_lo12(si_frame_indicator)
	bnez	$t4, .LBB8_70
# %bb.69:                               #   in Loop: Header=BB8_52 Depth=2
	ld.d	$t1, $a6, 0
	slli.d	$t2, $t3, 2
	ldx.w	$t1, $t1, $t2
	st.w	$t1, $a4, -8
	ld.w	$t1, $a0, 176
	ld.w	$t2, $a0, 20
.LBB8_70:                               #   in Loop: Header=BB8_52 Depth=2
	add.w	$t3, $t1, $s5
	slli.d	$t4, $t3, 1
	ldx.h	$t4, $a7, $t4
	st.h	$t4, $a2, -514
	ld.h	$t0, $t0, -2
	st.h	$t0, $a2, -2
	bne	$t2, $s2, .LBB8_73
# %bb.71:                               #   in Loop: Header=BB8_52 Depth=2
	ld.w	$t0, $s6, %pc_lo12(si_frame_indicator)
	bnez	$t0, .LBB8_73
# %bb.72:                               #   in Loop: Header=BB8_52 Depth=2
	ld.d	$t0, $a6, 0
	slli.d	$t1, $t3, 2
	ldx.w	$t0, $t0, $t1
	st.w	$t0, $a4, -4
	ld.w	$t1, $a0, 176
	ld.w	$t2, $a0, 20
.LBB8_73:                               #   in Loop: Header=BB8_52 Depth=2
	add.w	$t0, $t1, $s7
	slli.d	$t1, $t0, 1
	ldx.h	$a7, $a7, $t1
	st.h	$a7, $a2, -512
	ldx.h	$a7, $a0, $a3
	st.h	$a7, $a2, 0
	bne	$t2, $s2, .LBB8_51
# %bb.74:                               #   in Loop: Header=BB8_52 Depth=2
	ld.w	$a7, $s6, %pc_lo12(si_frame_indicator)
	bnez	$a7, .LBB8_51
# %bb.75:                               #   in Loop: Header=BB8_52 Depth=2
	ld.d	$a6, $a6, 0
	slli.d	$a7, $t0, 2
	ldx.w	$a6, $a6, $a7
	st.w	$a6, $a4, 0
	b	.LBB8_51
	.p2align	4, , 16
.LBB8_76:                               #   in Loop: Header=BB8_6 Depth=1
	beqz	$a0, .LBB8_88
# %bb.77:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s4, $s7
	move	$s7, $s8
	b	.LBB8_4
.LBB8_78:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s5, $s8
.LBB8_79:                               # %.loopexit367
                                        #   in Loop: Header=BB8_6 Depth=1
	ldptr.w	$a1, $a0, 15260
	beqz	$a1, .LBB8_86
# %bb.80:                               # %.preheader365
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_81:                               #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a1, 0
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 2
	vst	$vr0, $a2, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a2, 16
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 64
	blt	$a3, $s3, .LBB8_81
# %bb.82:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a1, $s5, 0
	ldptr.w	$a1, $a1, 5660
	beqz	$a1, .LBB8_86
# %bb.83:                               #   in Loop: Header=BB8_6 Depth=1
	ldptr.w	$a2, $a0, 15548
	srai.d	$a1, $a2, 1
	blez	$a1, .LBB8_86
# %bb.84:                               # %.lr.ph
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 62, 59
	ldptr.w	$a0, $a0, 15544
	add.w	$a2, $a2, $a3
	srai.d	$s1, $a2, 4
	add.d	$s4, $s1, $a1
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	mul.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a1, 62, 59
	add.w	$a1, $a1, $a3
	srai.d	$s7, $a1, 4
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a2, 8
	slli.d	$s8, $a0, 1
	bstrins.d	$s8, $zero, 1, 0
	alsl.d	$s5, $s1, $a1, 3
	alsl.d	$fp, $s1, $a2, 3
	slli.d	$a0, $s1, 6
	alsl.d	$a0, $s7, $a0, 2
	pcalau12i	$a1, %pc_hi20(submacroblock_mode_decision.fadjustCr)
	addi.d	$a1, $a1, %pc_lo12(submacroblock_mode_decision.fadjustCr)
	add.d	$a0, $a1, $a0
	addi.d	$s0, $a0, 1024
	.p2align	4, , 16
.LBB8_85:                               #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, 0
	addi.d	$a0, $s0, -1024
	alsl.d	$a1, $s7, $a1, 2
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	alsl.d	$a1, $s7, $a0, 2
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
	addi.d	$s5, $s5, 8
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 64
	blt	$s1, $s4, .LBB8_85
.LBB8_86:                               # %.loopexit364
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	blt	$a0, $fp, .LBB8_3
# %bb.87:                               #   in Loop: Header=BB8_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(cs_b8)
	ld.d	$a0, $a0, %got_pc_lo12(cs_b8)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(store_coding_state)
	jirl	$ra, $ra, 0
	b	.LBB8_3
.LBB8_88:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	move	$s4, $s7
	move	$s7, $s8
	bge	$a1, $a0, .LBB8_4
	b	.LBB8_49
.LBB8_89:
	move	$s2, $s1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_92
# %bb.90:                               # %.thread354
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4168
	lu12i.w	$s0, 3
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	bnez	$a0, .LBB8_99
# %bb.91:                               # %.thread356
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.w	$a0, $s1, 0
	b	.LBB8_93
.LBB8_92:
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.w	$a0, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4168
	lu12i.w	$s0, 3
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	bnez	$a0, .LBB8_99
.LBB8_93:                               # %.preheader361
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ldx.b	$a3, $a0, $fp
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.h	$a0, $a0, 0
	st.d	$zero, $sp, 592
	andi	$a1, $a3, 253
	sltui	$a1, $a1, 1
	maskeqz	$a4, $a0, $a1
	addi.d	$a1, $a3, -1
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ldx.b	$a6, $a2, $fp
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ldx.b	$a7, $a2, $fp
	andi	$a1, $a1, 255
	sltui	$a1, $a1, 2
	maskeqz	$a5, $a0, $a1
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 592
	move	$a2, $fp
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	pcalau12i	$a0, %got_pc_hi20(cbp_blk8x8)
	ld.d	$a0, $a0, %got_pc_lo12(cbp_blk8x8)
	ld.w	$a1, $a0, 0
	ld.d	$a2, $s7, 0
	ld.w	$a3, $sp, 592
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	and	$a1, $a1, $a4
	ldptr.d	$a2, $a2, 14160
	or	$a1, $a1, $a3
	st.w	$a1, $a0, 0
	slli.d	$fp, $fp, 3
	ldx.d	$a0, $a2, $fp
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $s4, 8
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $s4, 8
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $s4, 24
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $s4, 24
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$t0, $s7, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a0, $a1, 3
	addi.d	$a1, $a1, -1
	ori	$a2, $s0, 336
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3096
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	lu12i.w	$a6, -2
	ori	$a5, $a6, 1736
	ori	$a6, $a6, 2248
	ori	$a7, $zero, 3
	b	.LBB8_95
	.p2align	4, , 16
.LBB8_94:                               #   in Loop: Header=BB8_95 Depth=1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 64
	bge	$a1, $s3, .LBB8_98
.LBB8_95:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a4, 0
	ldptr.d	$t1, $t1, 6440
	ld.w	$t2, $t0, 180
	ld.w	$t0, $t0, 176
	alsl.d	$t1, $t2, $t1, 3
	ldx.d	$t1, $t1, $a0
	ld.d	$t2, $sp, 440                   # 8-byte Folded Reload
	add.w	$t0, $t0, $t2
	slli.d	$t0, $t0, 1
	vldx	$vr0, $t1, $t0
	add.d	$t0, $s1, $a2
	vstx	$vr0, $t0, $a5
	ld.d	$t1, $s7, 0
	vldx	$vr0, $t1, $a2
	vstx	$vr0, $t0, $a6
	ld.d	$t0, $s7, 0
	ld.w	$t1, $t0, 20
	bne	$t1, $a7, .LBB8_94
# %bb.96:                               #   in Loop: Header=BB8_95 Depth=1
	ld.w	$t1, $s6, %pc_lo12(si_frame_indicator)
	bnez	$t1, .LBB8_94
# %bb.97:                               #   in Loop: Header=BB8_95 Depth=1
	ld.d	$t1, $s2, %pc_lo12(lrec)
	ld.w	$t2, $t0, 180
	ld.w	$t0, $t0, 176
	alsl.d	$t1, $t2, $t1, 3
	ldx.d	$t1, $t1, $a0
	ld.d	$t2, $sp, 440                   # 8-byte Folded Reload
	add.w	$t0, $t0, $t2
	slli.d	$t2, $t0, 2
	vldx	$vr0, $t1, $t2
	alsl.d	$t0, $t0, $t1, 2
	vstx	$vr0, $s1, $a3
	vld	$vr0, $t0, 16
	add.d	$t0, $s1, $a3
	vst	$vr0, $t0, 16
	ld.d	$t0, $s7, 0
	b	.LBB8_94
.LBB8_98:
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
.LBB8_99:                               # %.loopexit360
	beqz	$s8, .LBB8_101
# %bb.100:
	ori	$a0, $zero, 1
	sll.w	$a0, $a0, $fp
	pcalau12i	$a1, %got_pc_hi20(cbp8x8)
	ld.d	$a1, $a1, %got_pc_lo12(cbp8x8)
	ld.w	$a2, $a1, 0
	or	$a0, $a2, $a0
	st.w	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(cnt_nonz_8x8)
	ld.d	$a0, $a0, %got_pc_lo12(cnt_nonz_8x8)
	ld.w	$a1, $a0, 0
	add.d	$a1, $a1, $s8
	st.w	$a1, $a0, 0
.LBB8_101:
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_112
# %bb.102:
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.h	$a2, $a0, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ldx.b	$a3, $a0, $fp
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ldx.b	$a4, $a0, $fp
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ldx.b	$a5, $a0, $fp
	move	$a0, $zero
	move	$a1, $fp
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StoreNewMotionVectorsBlock8x8)
	jirl	$ra, $ra, 0
.LBB8_103:                              # %.loopexit358
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.h	$a1, $a0, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ldx.b	$a2, $a0, $fp
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ldx.b	$a3, $a0, $fp
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ldx.b	$a4, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SetRefAndMotionVectors)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	blt	$a0, $fp, .LBB8_105
# %bb.104:
	pcalau12i	$a0, %got_pc_hi20(cs_b8)
	ld.d	$a0, $a0, %got_pc_lo12(cs_b8)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(reset_coding_state)
	jirl	$ra, $ra, 0
.LBB8_105:
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 15260
	beqz	$a0, .LBB8_119
.LBB8_106:                              # %.preheader
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_107:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ldx.d	$a3, $a3, $a4
	vld	$vr0, $a2, 0
	vstx	$vr0, $a3, $a5
	vld	$vr0, $a2, 16
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a3, 2
	vst	$vr0, $a3, 16
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 64
	blt	$a1, $s3, .LBB8_107
# %bb.108:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5660
	beqz	$a0, .LBB8_119
# %bb.109:
	ld.d	$a0, $s7, 0
	ldptr.w	$a1, $a0, 15548
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB8_119
# %bb.110:                              # %.lr.ph401
	ori	$a2, $s0, 3256
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	mul.w	$a1, $a1, $a3
	srai.d	$s0, $a1, 4
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	mul.w	$a1, $a2, $a1
	srai.d	$s1, $a1, 4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s2, $a2, $a1, 3
	slli.d	$s3, $s0, 3
	slli.d	$a1, $s0, 6
	alsl.d	$a1, $s1, $a1, 2
	pcalau12i	$a2, %pc_hi20(submacroblock_mode_decision.fadjustCr)
	addi.d	$a2, $a2, %pc_lo12(submacroblock_mode_decision.fadjustCr)
	add.d	$a1, $a1, $a2
	addi.d	$fp, $a1, 1024
	addi.w	$s4, $zero, -4
	move	$s5, $s0
	.p2align	4, , 16
.LBB8_111:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s3
	ldptr.w	$a2, $a0, 15544
	alsl.d	$a0, $s1, $a1, 2
	addi.d	$a1, $fp, -1024
	slli.d	$a2, $a2, 1
	and	$a2, $a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s7, 0
	ldx.d	$a0, $a0, $s3
	ldptr.w	$a1, $a1, 15544
	alsl.d	$a0, $s1, $a0, 2
	slli.d	$a1, $a1, 1
	and	$a2, $a1, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a1, $a0, 15548
	addi.d	$s5, $s5, 1
	srai.d	$a1, $a1, 1
	add.d	$a1, $a1, $s0
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, 64
	blt	$s5, $a1, .LBB8_111
	b	.LBB8_119
.LBB8_112:
	ori	$a0, $zero, 2
	blt	$a0, $fp, .LBB8_118
# %bb.113:                              # %.preheader357
	ld.d	$a5, $s7, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a0, $a1, 3
	addi.d	$a1, $a1, -1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	add.d	$a2, $a2, $s1
	lu12i.w	$a4, 1
	ori	$a3, $a4, 2072
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	ori	$a4, $a4, 3096
	add.d	$a3, $a3, $a4
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	ori	$a6, $zero, 3
	b	.LBB8_115
	.p2align	4, , 16
.LBB8_114:                              #   in Loop: Header=BB8_115 Depth=1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 64
	bge	$a1, $s3, .LBB8_103
.LBB8_115:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ldptr.d	$a7, $a7, 6440
	ld.w	$t0, $a5, 180
	alsl.d	$a7, $t0, $a7, 3
	ldx.d	$a7, $a7, $a0
	ld.w	$a5, $a5, 176
	vld	$vr0, $a2, 0
	slli.d	$a5, $a5, 1
	vstx	$vr0, $a7, $a5
	ld.d	$a5, $s7, 0
	ld.w	$a7, $a5, 20
	bne	$a7, $a6, .LBB8_114
# %bb.116:                              #   in Loop: Header=BB8_115 Depth=1
	ld.w	$a7, $s6, %pc_lo12(si_frame_indicator)
	bnez	$a7, .LBB8_114
# %bb.117:                              #   in Loop: Header=BB8_115 Depth=1
	ld.d	$a7, $s2, %pc_lo12(lrec)
	ld.w	$t0, $a5, 180
	alsl.d	$a7, $t0, $a7, 3
	ldx.d	$a7, $a7, $a0
	ld.w	$a5, $a5, 176
	vld	$vr0, $a3, 0
	slli.d	$a5, $a5, 2
	vstx	$vr0, $a7, $a5
	ld.d	$a5, $s7, 0
	b	.LBB8_114
.LBB8_118:                              # %.critedge
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.h	$a1, $a0, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ldx.b	$a2, $a0, $fp
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ldx.b	$a3, $a0, $fp
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ldx.b	$a4, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SetRefAndMotionVectors)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 15260
	bnez	$a0, .LBB8_106
.LBB8_119:                              # %.loopexit
	fld.d	$fs1, $sp, 600                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 608                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.Lfunc_end8:
	.size	submacroblock_mode_decision, .Lfunc_end8-submacroblock_mode_decision
                                        # -- End function
	.globl	get_initial_mb16x16_cost        # -- Begin function get_initial_mb16x16_cost
	.p2align	5
	.type	get_initial_mb16x16_cost,@function
get_initial_mb16x16_cost:               # @get_initial_mb16x16_cost
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a3, $a1, $a3
	add.d	$a2, $a2, $a3
	ld.d	$a3, $a2, 64
	ld.d	$a2, $a2, 56
	beqz	$a3, .LBB9_3
# %bb.1:
	pcalau12i	$a3, %pc_hi20(mb16x16_cost_frame)
	ld.d	$a3, $a3, %pc_lo12(mb16x16_cost_frame)
	alsl.d	$a4, $a1, $a3, 3
	fld.d	$fa0, $a4, -8
	beqz	$a2, .LBB9_5
# %bb.2:
	ld.w	$a2, $a0, 52
	srli.d	$a2, $a2, 4
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa1, $a3, $a1
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB9_5
.LBB9_3:
	beqz	$a2, .LBB9_7
# %bb.4:
	ld.w	$a2, $a0, 52
	pcalau12i	$a3, %pc_hi20(mb16x16_cost_frame)
	ld.d	$a3, $a3, %pc_lo12(mb16x16_cost_frame)
	srli.d	$a2, $a2, 4
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a3, $a1
.LBB9_5:
	pcalau12i	$a1, %got_pc_hi20(mb16x16_cost)
	ld.d	$a1, $a1, %got_pc_lo12(mb16x16_cost)
	lu52i.d	$a2, $zero, 1032
	movgr2fr.d	$fa1, $a2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	bceqz	$fcc0, .LBB9_8
# %bb.6:
	vldi	$vr0, -912
	b	.LBB9_9
.LBB9_7:                                # %.thread7
	pcalau12i	$a1, %got_pc_hi20(mb16x16_cost)
	ld.d	$a1, $a1, %got_pc_lo12(mb16x16_cost)
	lu52i.d	$a2, $zero, 1032
	st.d	$a2, $a1, 0
	movgr2fr.d	$fa0, $a2
.LBB9_8:
	ld.w	$a1, $a0, 20
	ldptr.d	$a2, $a0, 15504
	slli.d	$a1, $a1, 3
	ld.w	$a0, $a0, 36
	ldx.d	$a1, $a2, $a1
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $a1, $a0
	lu52i.d	$a0, $zero, 1032
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB9_10
.LBB9_9:
	pcalau12i	$a0, %got_pc_hi20(lambda_mf_factor)
	ld.d	$a0, $a0, %got_pc_lo12(lambda_mf_factor)
	fst.d	$fa0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_10:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB9_9
.Lfunc_end9:
	.size	get_initial_mb16x16_cost, .Lfunc_end9-get_initial_mb16x16_cost
                                        # -- End function
	.globl	adjust_mb16x16_cost             # -- Begin function adjust_mb16x16_cost
	.p2align	5
	.type	adjust_mb16x16_cost,@function
adjust_mb16x16_cost:                    # @adjust_mb16x16_cost
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a0, %got_pc_hi20(mb16x16_cost)
	ld.d	$a1, $a0, %got_pc_lo12(mb16x16_cost)
	pcalau12i	$a0, %pc_hi20(mb16x16_cost_frame)
	ld.d	$a2, $a0, %pc_lo12(mb16x16_cost_frame)
	fst.d	$fa0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a0, 12
	slli.d	$a3, $a3, 3
	fstx.d	$fa0, $a2, $a3
	fld.d	$fa0, $a1, 0
	lu52i.d	$a1, $zero, 1032
	movgr2fr.d	$fa1, $a1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB10_2
# %bb.1:
	vldi	$vr0, -912
	b	.LBB10_3
.LBB10_2:
	ld.w	$a1, $a0, 20
	ldptr.d	$a2, $a0, 15504
	slli.d	$a1, $a1, 3
	ld.w	$a0, $a0, 36
	ldx.d	$a1, $a2, $a1
	slli.d	$a0, $a0, 3
	fldx.d	$fa2, $a1, $a0
	fmul.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB10_4
.LBB10_3:
	pcalau12i	$a0, %got_pc_hi20(lambda_mf_factor)
	ld.d	$a0, $a0, %got_pc_lo12(lambda_mf_factor)
	fst.d	$fa0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_4:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB10_3
.Lfunc_end10:
	.size	adjust_mb16x16_cost, .Lfunc_end10-adjust_mb16x16_cost
                                        # -- End function
	.type	b8_mode_table,@object           # @b8_mode_table
	.section	.rodata,"a",@progbits
	.globl	b8_mode_table
	.p2align	2, 0x0
b8_mode_table:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	0                               # 0x0
	.size	b8_mode_table, 24

	.type	mb_mode_table,@object           # @mb_mode_table
	.globl	mb_mode_table
	.p2align	2, 0x0
mb_mode_table:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	8                               # 0x8
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	14                              # 0xe
	.size	mb_mode_table, 36

	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L__const.submacroblock_mode_decision.bmcost,@object # @__const.submacroblock_mode_decision.bmcost
	.p2align	3, 0x0
.L__const.submacroblock_mode_decision.bmcost:
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.submacroblock_mode_decision.bmcost, 20

	.type	submacroblock_mode_decision.fadjust,@object # @submacroblock_mode_decision.fadjust
	.local	submacroblock_mode_decision.fadjust
	.comm	submacroblock_mode_decision.fadjust,1024,4
	.type	submacroblock_mode_decision.fadjustCr,@object # @submacroblock_mode_decision.fadjustCr
	.local	submacroblock_mode_decision.fadjustCr
	.comm	submacroblock_mode_decision.fadjustCr,2048,4
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
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
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
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
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.type	McostState,@object              # @McostState
	.comm	McostState,8,8
	.type	SearchState,@object             # @SearchState
	.comm	SearchState,8,8
	.type	fastme_ref_cost,@object         # @fastme_ref_cost
	.comm	fastme_ref_cost,8,8
	.type	fastme_l0_cost,@object          # @fastme_l0_cost
	.comm	fastme_l0_cost,8,8
	.type	fastme_l1_cost,@object          # @fastme_l1_cost
	.comm	fastme_l1_cost,8,8
	.type	fastme_l0_cost_bipred,@object   # @fastme_l0_cost_bipred
	.comm	fastme_l0_cost_bipred,8,8
	.type	fastme_l1_cost_bipred,@object   # @fastme_l1_cost_bipred
	.comm	fastme_l1_cost_bipred,8,8
	.type	bipred_flag,@object             # @bipred_flag
	.comm	bipred_flag,4,4
	.type	fastme_best_cost,@object        # @fastme_best_cost
	.comm	fastme_best_cost,8,8
	.type	pred_SAD,@object                # @pred_SAD
	.comm	pred_SAD,4,4
	.type	pred_MV_ref,@object             # @pred_MV_ref
	.comm	pred_MV_ref,8,4
	.type	pred_MV_uplayer,@object         # @pred_MV_uplayer
	.comm	pred_MV_uplayer,8,4
	.type	UMHEX_blocktype,@object         # @UMHEX_blocktype
	.comm	UMHEX_blocktype,4,4
	.type	predict_point,@object           # @predict_point
	.comm	predict_point,40,4
	.type	SAD_a,@object                   # @SAD_a
	.comm	SAD_a,4,4
	.type	SAD_b,@object                   # @SAD_b
	.comm	SAD_b,4,4
	.type	SAD_c,@object                   # @SAD_c
	.comm	SAD_c,4,4
	.type	SAD_d,@object                   # @SAD_d
	.comm	SAD_d,4,4
	.type	Threshold_DSR_MB,@object        # @Threshold_DSR_MB
	.comm	Threshold_DSR_MB,32,4
	.type	Bsize,@object                   # @Bsize
	.comm	Bsize,32,4
	.type	AlphaFourth_1,@object           # @AlphaFourth_1
	.comm	AlphaFourth_1,32,4
	.type	AlphaFourth_2,@object           # @AlphaFourth_2
	.comm	AlphaFourth_2,32,4
	.type	flag_intra,@object              # @flag_intra
	.comm	flag_intra,8,8
	.type	flag_intra_SAD,@object          # @flag_intra_SAD
	.comm	flag_intra_SAD,4,4
	.type	SymmetricalCrossSearchThreshold1,@object # @SymmetricalCrossSearchThreshold1
	.comm	SymmetricalCrossSearchThreshold1,2,2
	.type	SymmetricalCrossSearchThreshold2,@object # @SymmetricalCrossSearchThreshold2
	.comm	SymmetricalCrossSearchThreshold2,2,2
	.type	ConvergeThreshold,@object       # @ConvergeThreshold
	.comm	ConvergeThreshold,2,2
	.type	SubPelThreshold1,@object        # @SubPelThreshold1
	.comm	SubPelThreshold1,2,2
	.type	SubPelThreshold3,@object        # @SubPelThreshold3
	.comm	SubPelThreshold3,2,2
	.type	smpUMHEX_SearchState,@object    # @smpUMHEX_SearchState
	.comm	smpUMHEX_SearchState,8,8
	.type	smpUMHEX_l0_cost,@object        # @smpUMHEX_l0_cost
	.comm	smpUMHEX_l0_cost,8,8
	.type	smpUMHEX_l1_cost,@object        # @smpUMHEX_l1_cost
	.comm	smpUMHEX_l1_cost,8,8
	.type	smpUMHEX_flag_intra,@object     # @smpUMHEX_flag_intra
	.comm	smpUMHEX_flag_intra,8,8
	.type	smpUMHEX_flag_intra_SAD,@object # @smpUMHEX_flag_intra_SAD
	.comm	smpUMHEX_flag_intra_SAD,4,4
	.type	smpUMHEX_pred_SAD_uplayer,@object # @smpUMHEX_pred_SAD_uplayer
	.comm	smpUMHEX_pred_SAD_uplayer,4,4
	.type	smpUMHEX_pred_MV_uplayer_X,@object # @smpUMHEX_pred_MV_uplayer_X
	.comm	smpUMHEX_pred_MV_uplayer_X,2,2
	.type	smpUMHEX_pred_MV_uplayer_Y,@object # @smpUMHEX_pred_MV_uplayer_Y
	.comm	smpUMHEX_pred_MV_uplayer_Y,2,2
	.type	temp_imgY,@object               # @temp_imgY
	.comm	temp_imgY,512,2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tr8x8
	.addrsig_sym tr4x4
	.addrsig_sym pred
