	.file	"parsetcommon.c"
	.text
	.globl	AllocPPS                        # -- Begin function AllocPPS
	.p2align	5
	.type	AllocPPS,@function
AllocPPS:                               # @AllocPPS
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 1160
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_2:
	lu12i.w	$a0, 58
	ori	$a0, $a0, 2432
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1104
	bnez	$a0, .LBB0_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_4:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	AllocPPS, .Lfunc_end0-AllocPPS
                                        # -- End function
	.globl	AllocSPS                        # -- Begin function AllocSPS
	.p2align	5
	.type	AllocSPS,@function
AllocSPS:                               # @AllocSPS
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 3064
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	AllocSPS, .Lfunc_end1-AllocSPS
                                        # -- End function
	.globl	FreePPS                         # -- Begin function FreePPS
	.p2align	5
	.type	FreePPS,@function
FreePPS:                                # @FreePPS
# %bb.0:
	ld.d	$a1, $a0, 1104
	beqz	$a1, .LBB2_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB2_2:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end2:
	.size	FreePPS, .Lfunc_end2-FreePPS
                                        # -- End function
	.globl	FreeSPS                         # -- Begin function FreeSPS
	.p2align	5
	.type	FreeSPS,@function
FreeSPS:                                # @FreeSPS
# %bb.0:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end3:
	.size	FreeSPS, .Lfunc_end3-FreeSPS
                                        # -- End function
	.globl	sps_is_equal                    # -- Begin function sps_is_equal
	.p2align	5
	.type	sps_is_equal,@function
sps_is_equal:                           # @sps_is_equal
# %bb.0:
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB4_11
# %bb.1:
	ld.w	$a2, $a1, 0
	beqz	$a2, .LBB4_11
# %bb.2:
	vld	$vr0, $a0, 4
	vld	$vr1, $a1, 4
	vseq.w	$vr1, $vr0, $vr1
	vrepli.b	$vr0, -1
	vxor.v	$vr1, $vr1, $vr0
	vmskltz.w	$vr1, $vr1
	vpickve2gr.hu	$a3, $vr1, 0
	move	$a2, $zero
	bnez	$a3, .LBB4_28
# %bb.3:
	ld.w	$a3, $a1, 24
	ld.w	$a4, $a0, 24
	bne	$a4, $a3, .LBB4_28
# %bb.4:
	ld.w	$a3, $a1, 28
	ld.w	$a4, $a0, 28
	bne	$a4, $a3, .LBB4_28
# %bb.5:
	ld.w	$a3, $a1, 1008
	ld.w	$a4, $a0, 1008
	bne	$a4, $a3, .LBB4_28
# %bb.6:
	ld.w	$a3, $a0, 1012
	ld.w	$a4, $a1, 1012
	bne	$a3, $a4, .LBB4_28
# %bb.7:
	ori	$a2, $zero, 1
	beq	$a3, $a2, .LBB4_10
# %bb.8:
	bnez	$a3, .LBB4_15
# %bb.9:
	ld.w	$a2, $a0, 1016
	ld.w	$a3, $a1, 1016
	xor	$a2, $a2, $a3
	sltu	$a3, $zero, $a2
	b	.LBB4_16
.LBB4_10:
	vld	$vr1, $a0, 1020
	vld	$vr2, $a1, 1020
	vseq.w	$vr1, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr0
	vmskltz.w	$vr1, $vr1
	vpickve2gr.hu	$a2, $vr1, 0
	beqz	$a2, .LBB4_12
.LBB4_11:
	move	$a0, $zero
	ret
.LBB4_12:                               # %.preheader
	ld.wu	$a2, $a0, 1032
	beqz	$a2, .LBB4_15
# %bb.13:                               # %.lr.ph
	ori	$a3, $zero, 8
	bgeu	$a2, $a3, .LBB4_29
# %bb.14:
	move	$a3, $zero
	ori	$a4, $zero, 1
	b	.LBB4_32
.LBB4_15:
	move	$a3, $zero
.LBB4_16:                               # %.loopexit
	ori	$a2, $zero, 2064
	vldx	$vr1, $a0, $a2
	vldx	$vr2, $a1, $a2
	vseq.w	$vr1, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr0
	vmskltz.w	$vr1, $vr1
	vpickve2gr.hu	$a4, $vr1, 0
	move	$a2, $zero
	bnez	$a4, .LBB4_28
# %bb.17:                               # %.loopexit
	ori	$a4, $zero, 2060
	ldx.w	$a5, $a0, $a4
	ldx.w	$a4, $a1, $a4
	bne	$a5, $a4, .LBB4_28
# %bb.18:                               # %.loopexit
	bnez	$a3, .LBB4_28
# %bb.19:
	ldptr.w	$a2, $a0, 2076
	beqz	$a2, .LBB4_21
# %bb.20:
	move	$a3, $zero
	ldptr.w	$a4, $a0, 2088
	ldptr.w	$a5, $a1, 2088
	move	$a2, $zero
	beq	$a4, $a5, .LBB4_22
	b	.LBB4_28
.LBB4_21:
	ldptr.w	$a2, $a0, 2080
	ldptr.w	$a3, $a1, 2080
	xor	$a2, $a2, $a3
	sltu	$a3, $zero, $a2
	ldptr.w	$a4, $a0, 2088
	ldptr.w	$a5, $a1, 2088
	move	$a2, $zero
	bne	$a4, $a5, .LBB4_28
.LBB4_22:
	ori	$a5, $zero, 2084
	ldx.w	$a6, $a1, $a5
	ldx.w	$a5, $a0, $a5
	bne	$a5, $a6, .LBB4_28
# %bb.23:
	bnez	$a3, .LBB4_28
# %bb.24:
	beqz	$a4, .LBB4_26
# %bb.25:
	ori	$a2, $zero, 2092
	vldx	$vr1, $a0, $a2
	vldx	$vr2, $a1, $a2
	vseq.w	$vr1, $vr1, $vr2
	vxor.v	$vr0, $vr1, $vr0
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a2, $vr0, 0
	sltui	$a2, $a2, 1
	b	.LBB4_27
.LBB4_26:
	ori	$a2, $zero, 1
.LBB4_27:
	ldptr.w	$a0, $a0, 2108
	ldptr.w	$a1, $a1, 2108
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	maskeqz	$a2, $a2, $a0
.LBB4_28:
	move	$a0, $a2
	ret
.LBB4_29:                               # %vector.ph
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a1, 1052
	vrepli.b	$vr1, 0
	addi.d	$a5, $a0, 1052
	move	$a6, $a3
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB4_30:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, -16
	vld	$vr4, $a4, -16
	vld	$vr5, $a5, 0
	vld	$vr6, $a4, 0
	vseq.w	$vr3, $vr3, $vr4
	vxor.v	$vr3, $vr3, $vr0
	vseq.w	$vr4, $vr5, $vr6
	vxor.v	$vr4, $vr4, $vr0
	vor.v	$vr1, $vr1, $vr3
	vor.v	$vr2, $vr2, $vr4
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_30
# %bb.31:                               # %middle.block
	vor.v	$vr1, $vr2, $vr1
	vslli.w	$vr1, $vr1, 31
	vmskltz.w	$vr1, $vr1
	vpickve2gr.hu	$a4, $vr1, 0
	sltui	$a4, $a4, 1
	beq	$a3, $a2, .LBB4_34
.LBB4_32:                               # %scalar.ph.preheader
	slli.d	$a5, $a3, 2
	addi.d	$a6, $a5, 1036
	add.d	$a5, $a0, $a6
	add.d	$a6, $a1, $a6
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB4_33:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a5, 0
	ld.w	$a7, $a6, 0
	xor	$a3, $a3, $a7
	sltui	$a3, $a3, 1
	maskeqz	$a4, $a4, $a3
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, -1
	addi.d	$a6, $a6, 4
	bnez	$a2, .LBB4_33
.LBB4_34:                               # %.loopexit.loopexit
	sltui	$a3, $a4, 1
	b	.LBB4_16
.Lfunc_end4:
	.size	sps_is_equal, .Lfunc_end4-sps_is_equal
                                        # -- End function
	.globl	pps_is_equal                    # -- Begin function pps_is_equal
	.p2align	5
	.type	pps_is_equal,@function
pps_is_equal:                           # @pps_is_equal
# %bb.0:
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB5_15
# %bb.1:
	ld.w	$a2, $a1, 0
	beqz	$a2, .LBB5_15
# %bb.2:
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a1, 4
	move	$a2, $zero
	bne	$a3, $a4, .LBB5_31
# %bb.3:
	ld.w	$a3, $a1, 8
	ld.w	$a4, $a0, 8
	bne	$a4, $a3, .LBB5_31
# %bb.4:
	ld.w	$a3, $a1, 12
	ld.w	$a4, $a0, 12
	bne	$a4, $a3, .LBB5_31
# %bb.5:
	ld.w	$a3, $a1, 984
	ld.w	$a4, $a0, 984
	bne	$a4, $a3, .LBB5_31
# %bb.6:
	ld.wu	$a3, $a0, 988
	ld.w	$a4, $a1, 988
	addi.w	$a5, $a3, 0
	bne	$a5, $a4, .LBB5_31
# %bb.7:
	ori	$a2, $zero, 1
	beqz	$a3, .LBB5_30
# %bb.8:
	ld.w	$a4, $a0, 992
	ld.w	$a5, $a1, 992
	bne	$a4, $a5, .LBB5_15
# %bb.9:
	ori	$a5, $zero, 6
	bltu	$a5, $a4, .LBB5_30
# %bb.10:
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI5_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI5_0)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB5_11:
	ld.w	$a2, $a0, 1092
	ld.w	$a3, $a1, 1092
	ld.w	$a4, $a0, 1096
	ld.w	$a5, $a1, 1096
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	xor	$a3, $a4, $a5
	sltui	$a3, $a3, 1
	and	$a2, $a2, $a3
	b	.LBB5_30
.LBB5_12:
	ld.w	$a2, $a0, 1100
	ld.w	$a3, $a1, 1100
	bne	$a2, $a3, .LBB5_15
# %bb.13:                               # %.preheader119
	ld.d	$a3, $a0, 1104
	ld.d	$a4, $a1, 1104
	addi.w	$a6, $a2, 1
	ori	$a2, $zero, 1
	sltu	$a5, $a2, $a6
	masknez	$a7, $a2, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ori	$a7, $zero, 8
	bstrpick.d	$a5, $a5, 31, 0
	bgeu	$a6, $a7, .LBB5_25
# %bb.14:
	move	$a6, $zero
	b	.LBB5_28
.LBB5_15:
	move	$a0, $zero
	ret
.LBB5_16:                               # %.preheader
	addi.w	$a4, $a3, 1
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a4
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ori	$a5, $zero, 8
	bstrpick.d	$a3, $a3, 31, 0
	bgeu	$a4, $a5, .LBB5_20
# %bb.17:
	move	$a4, $zero
	b	.LBB5_23
.LBB5_18:                               # %.preheader117
	addi.d	$a4, $a0, 1060
	addi.d	$a5, $a1, 1060
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB5_19:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, -32
	ld.w	$a7, $a5, -32
	ld.w	$t0, $a4, 0
	ld.w	$t1, $a5, 0
	xor	$a6, $a6, $a7
	sltui	$a6, $a6, 1
	xor	$a7, $t0, $t1
	sltui	$a7, $a7, 1
	maskeqz	$a2, $a2, $a6
	maskeqz	$a2, $a2, $a7
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB5_19
	b	.LBB5_30
.LBB5_20:                               # %vector.ph156
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a4, $a2, 3
	addi.d	$a2, $a1, 1012
	addi.d	$a5, $a0, 1012
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	move	$a6, $a4
	vori.b	$vr2, $vr0, 0
.LBB5_21:                               # %vector.body159
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, -16
	vld	$vr4, $a2, -16
	vld	$vr5, $a5, 0
	vld	$vr6, $a2, 0
	vseq.w	$vr3, $vr3, $vr4
	vxor.v	$vr3, $vr3, $vr1
	vseq.w	$vr4, $vr5, $vr6
	vxor.v	$vr4, $vr4, $vr1
	vor.v	$vr0, $vr0, $vr3
	vor.v	$vr2, $vr2, $vr4
	addi.d	$a6, $a6, -8
	addi.d	$a2, $a2, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_21
# %bb.22:                               # %middle.block168
	vor.v	$vr0, $vr2, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a2, $vr0, 0
	sltui	$a2, $a2, 1
	beq	$a4, $a3, .LBB5_30
.LBB5_23:                               # %scalar.ph154.preheader
	slli.d	$a5, $a4, 2
	addi.d	$a6, $a5, 996
	add.d	$a5, $a0, $a6
	add.d	$a6, $a1, $a6
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB5_24:                               # %scalar.ph154
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a5, 0
	ld.w	$a7, $a6, 0
	xor	$a4, $a4, $a7
	sltui	$a4, $a4, 1
	maskeqz	$a2, $a2, $a4
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, 4
	bnez	$a3, .LBB5_24
	b	.LBB5_30
.LBB5_25:                               # %vector.ph
	bstrpick.d	$a2, $a5, 31, 3
	slli.d	$a6, $a2, 3
	addi.d	$a2, $a4, 16
	addi.d	$a7, $a3, 16
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	move	$t0, $a6
	vori.b	$vr2, $vr0, 0
.LBB5_26:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a2, -16
	vld	$vr5, $a7, 0
	vld	$vr6, $a2, 0
	vseq.w	$vr3, $vr3, $vr4
	vxor.v	$vr3, $vr3, $vr1
	vseq.w	$vr4, $vr5, $vr6
	vxor.v	$vr4, $vr4, $vr1
	vor.v	$vr0, $vr0, $vr3
	vor.v	$vr2, $vr2, $vr4
	addi.d	$t0, $t0, -8
	addi.d	$a2, $a2, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB5_26
# %bb.27:                               # %middle.block
	vor.v	$vr0, $vr2, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a2, $vr0, 0
	sltui	$a2, $a2, 1
	beq	$a6, $a5, .LBB5_30
.LBB5_28:                               # %scalar.ph.preheader
	alsl.d	$a3, $a6, $a3, 2
	alsl.d	$a4, $a6, $a4, 2
	sub.d	$a5, $a5, $a6
.LBB5_29:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a4, 0
	xor	$a6, $a6, $a7
	sltui	$a6, $a6, 1
	maskeqz	$a2, $a2, $a6
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB5_29
.LBB5_30:                               # %.loopexit
	ld.w	$a3, $a0, 1112
	ld.w	$a4, $a1, 1112
	xor	$a3, $a3, $a4
	ld.w	$a4, $a0, 1116
	ld.w	$a5, $a1, 1116
	ld.w	$a6, $a0, 1120
	ld.w	$a7, $a1, 1120
	sltui	$a3, $a3, 1
	xor	$a4, $a4, $a5
	sltui	$a4, $a4, 1
	xor	$a5, $a6, $a7
	ld.w	$a6, $a0, 1144
	ld.w	$a7, $a1, 1144
	sltui	$a5, $a5, 1
	vld	$vr0, $a0, 1124
	vld	$vr1, $a1, 1124
	xor	$a6, $a6, $a7
	ld.w	$a7, $a0, 1148
	ld.w	$t0, $a1, 1148
	ld.w	$a0, $a0, 1152
	ld.w	$a1, $a1, 1152
	sltui	$a6, $a6, 1
	xor	$a7, $a7, $t0
	sltui	$a7, $a7, 1
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	vseq.w	$vr0, $vr0, $vr1
	vrepli.b	$vr1, -1
	vxor.v	$vr0, $vr0, $vr1
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	sltui	$a1, $a1, 1
	maskeqz	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a4
	maskeqz	$a2, $a2, $a5
	maskeqz	$a2, $a2, $a6
	maskeqz	$a2, $a2, $a7
	maskeqz	$a1, $a2, $a1
	maskeqz	$a2, $a1, $a0
.LBB5_31:
	move	$a0, $a2
	ret
.Lfunc_end5:
	.size	pps_is_equal, .Lfunc_end5-pps_is_equal
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_16-.LJTI5_0
	.word	.LBB5_30-.LJTI5_0
	.word	.LBB5_18-.LJTI5_0
	.word	.LBB5_11-.LJTI5_0
	.word	.LBB5_11-.LJTI5_0
	.word	.LBB5_11-.LJTI5_0
	.word	.LBB5_12-.LJTI5_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AllocPPS: PPS"
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"AllocPPS: slice_group_id"
	.size	.L.str.1, 25

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"AllocSPS: SPS"
	.size	.L.str.2, 14

	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
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
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
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
