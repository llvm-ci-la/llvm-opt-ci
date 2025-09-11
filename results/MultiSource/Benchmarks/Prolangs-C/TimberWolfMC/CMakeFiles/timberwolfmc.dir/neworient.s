	.file	"neworient.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function newOrient
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	newOrient
	.p2align	5
	.type	newOrient,@function
newOrient:                              # @newOrient
# %bb.0:
	ld.w	$a2, $a0, 56
	ori	$a3, $zero, 4
	bne	$a1, $a3, .LBB0_8
# %bb.1:
	ori	$a1, $zero, 3
	bge	$a1, $a2, .LBB0_12
# %bb.2:                                # %.preheader71
	vld	$vr0, $a0, 20
	vseqi.w	$vr0, $vr0, 1
	vmskltz.w	$vr1, $vr0
	vpickve2gr.hu	$a0, $vr1, 0
	beqz	$a0, .LBB0_32
# %bb.3:                                # %.preheader70
	vldi	$vr1, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vpcnt.d	$vr1, $vr1
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a0, $a1, 15
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a2, $a0, %got_pc_lo12(randVar)
	ld.w	$a3, $a2, 0
	lu12i.w	$a0, 269412
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a4, %pc_lo12(.LCPI0_0)
	ori	$a4, $a0, 3693
	lu12i.w	$a0, 3
	ori	$a5, $a0, 57
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a0, $a3, $a4
	add.w	$a3, $a0, $a5
	bstrpick.d	$a0, $a3, 30, 0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a0, $fa3
	beq	$a1, $a0, .LBB0_4
# %bb.5:                                # %.preheader
	vpickve2gr.w	$a1, $vr0, 0
	andi	$a1, $a1, 1
	st.w	$a3, $a2, 0
	beqz	$a1, .LBB0_55
# %bb.6:
	ori	$a1, $zero, 1
	beqz	$a0, .LBB0_69
# %bb.7:
	vpickve2gr.w	$a2, $vr0, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_58
	b	.LBB0_56
.LBB0_8:                                # %.preheader81
	beqz	$a2, .LBB0_18
# %bb.9:
	ld.w	$a1, $a0, 20
	addi.d	$a3, $a1, -1
	ori	$a1, $zero, 1
	sltui	$a3, $a3, 1
	beq	$a2, $a1, .LBB0_19
# %bb.10:
	ld.w	$a4, $a0, 24
	addi.d	$a4, $a4, -1
	sltui	$a4, $a4, 1
	ori	$a5, $zero, 2
	add.d	$a4, $a3, $a4
	bne	$a2, $a5, .LBB0_59
# %bb.11:
	move	$a6, $zero
	b	.LBB0_20
.LBB0_12:                               # %.preheader76
	vld	$vr0, $a0, 36
	vseqi.w	$vr0, $vr0, 1
	vmskltz.w	$vr1, $vr0
	vpickve2gr.hu	$a0, $vr1, 0
	beqz	$a0, .LBB0_32
# %bb.13:                               # %.preheader75
	vldi	$vr1, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vpcnt.d	$vr1, $vr1
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a0, $a1, 15
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a2, $a0, %got_pc_lo12(randVar)
	ld.w	$a3, $a2, 0
	lu12i.w	$a0, 269412
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a4, %pc_lo12(.LCPI0_0)
	ori	$a4, $a0, 3693
	lu12i.w	$a0, 3
	ori	$a5, $a0, 57
	.p2align	4, , 16
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	mul.d	$a0, $a3, $a4
	add.w	$a3, $a0, $a5
	bstrpick.d	$a0, $a3, 30, 0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a0, $fa3
	beq	$a1, $a0, .LBB0_14
# %bb.15:                               # %.preheader72
	vpickve2gr.w	$a1, $vr0, 0
	andi	$a1, $a1, 1
	st.w	$a3, $a2, 0
	beqz	$a1, .LBB0_61
# %bb.16:
	ori	$a1, $zero, 1
	bnez	$a0, .LBB0_62
# %bb.17:
	ori	$a6, $zero, 4
	addi.w	$a0, $a6, 0
	ret
.LBB0_18:                               # %.thread118
	ld.w	$a1, $a0, 24
	addi.d	$a1, $a1, -1
	sltui	$a3, $a1, 1
.LBB0_19:                               # %.thread125
	ld.w	$a4, $a0, 28
	move	$a1, $zero
	sltu	$a6, $zero, $a2
	addi.d	$a4, $a4, -1
	sltui	$a4, $a4, 1
	add.d	$a4, $a3, $a4
.LBB0_20:                               # %.thread135
	ld.w	$a5, $a0, 32
	move	$a3, $zero
	addi.d	$a5, $a5, -1
	sltui	$a5, $a5, 1
	add.d	$a5, $a4, $a5
.LBB0_21:                               # %.thread146
	ld.w	$a7, $a0, 36
	move	$a4, $zero
	addi.d	$a7, $a7, -1
	sltui	$a7, $a7, 1
	add.d	$a7, $a5, $a7
.LBB0_22:                               # %.thread158
	ld.w	$t0, $a0, 40
	move	$a5, $zero
	addi.d	$t0, $t0, -1
	sltui	$t0, $t0, 1
	add.d	$t0, $a7, $t0
.LBB0_23:                               # %.thread171
	ld.w	$t1, $a0, 44
	move	$a7, $zero
	addi.d	$t1, $t1, -1
	sltui	$t1, $t1, 1
	add.d	$t2, $t0, $t1
.LBB0_24:                               # %.thread161
	ld.w	$t1, $a0, 48
	move	$t0, $zero
	addi.d	$t1, $t1, -1
	sltui	$t1, $t1, 1
	add.d	$t2, $t2, $t1
.LBB0_25:
	beqz	$t2, .LBB0_32
# %bb.26:                               # %.preheader80
	movgr2fr.w	$fa0, $t2
	ffint.d.w	$fa0, $fa0
	pcalau12i	$t1, %got_pc_hi20(randVar)
	ld.d	$t3, $t1, %got_pc_lo12(randVar)
	ld.w	$t4, $t3, 0
	lu12i.w	$t1, 269412
	pcalau12i	$t5, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $t5, %pc_lo12(.LCPI0_0)
	ori	$t5, $t1, 3693
	lu12i.w	$t1, 3
	ori	$t6, $t1, 57
	.p2align	4, , 16
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	mul.d	$t1, $t4, $t5
	add.w	$t4, $t1, $t6
	bstrpick.d	$t1, $t4, 30, 0
	movgr2fr.w	$fa2, $t1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t1, $fa2
	beq	$t2, $t1, .LBB0_27
# %bb.28:                               # %.preheader77
	st.w	$t4, $t3, 0
	beqz	$a2, .LBB0_33
# %bb.29:
	ld.w	$t2, $a0, 20
	ori	$a2, $zero, 1
	bne	$t2, $a2, .LBB0_33
# %bb.30:
	beqz	$t1, .LBB0_69
# %bb.31:
	beqz	$a6, .LBB0_34
	b	.LBB0_37
.LBB0_32:
	addi.d	$a6, $zero, -1
	addi.w	$a0, $a6, 0
	ret
.LBB0_33:
	move	$a2, $zero
	bnez	$a6, .LBB0_37
.LBB0_34:
	ld.w	$t2, $a0, 24
	ori	$a6, $zero, 1
	bne	$t2, $a6, .LBB0_37
# %bb.35:
	beq	$a2, $t1, .LBB0_67
# %bb.36:
	addi.d	$a2, $a2, 1
.LBB0_37:
	bnez	$a1, .LBB0_41
# %bb.38:
	ld.w	$a1, $a0, 28
	ori	$a6, $zero, 1
	bne	$a1, $a6, .LBB0_41
# %bb.39:
	ori	$a6, $zero, 2
	beq	$a2, $t1, .LBB0_67
# %bb.40:
	addi.d	$a2, $a2, 1
.LBB0_41:
	bnez	$a3, .LBB0_45
# %bb.42:
	ld.w	$a1, $a0, 32
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB0_45
# %bb.43:
	ori	$a6, $zero, 3
	beq	$a2, $t1, .LBB0_67
# %bb.44:
	addi.d	$a2, $a2, 1
.LBB0_45:
	bnez	$a4, .LBB0_49
# %bb.46:
	ld.w	$a1, $a0, 36
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB0_49
# %bb.47:
	ori	$a6, $zero, 4
	beq	$a2, $t1, .LBB0_67
# %bb.48:
	addi.d	$a2, $a2, 1
.LBB0_49:
	bnez	$a5, .LBB0_53
# %bb.50:
	ld.w	$a1, $a0, 40
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB0_53
# %bb.51:
	ori	$a6, $zero, 5
	beq	$a2, $t1, .LBB0_67
# %bb.52:
	addi.d	$a2, $a2, 1
.LBB0_53:
	beqz	$a7, .LBB0_66
# %bb.54:
                                        # implicit-def: $r10
	beqz	$t0, .LBB0_68
	b	.LBB0_67
.LBB0_55:
	move	$a1, $zero
	vpickve2gr.w	$a2, $vr0, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_58
.LBB0_56:
	ori	$a6, $zero, 1
	beq	$a1, $a0, .LBB0_67
# %bb.57:
	addi.w	$a1, $a1, 1
.LBB0_58:
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	vpickve2gr.w	$a1, $vr0, 2
	and	$a0, $a1, $a0
	xori	$a6, $a0, 3
	addi.w	$a0, $a6, 0
	ret
.LBB0_59:
	ld.w	$a1, $a0, 28
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ori	$a3, $zero, 3
	add.d	$a5, $a4, $a1
	bne	$a2, $a3, .LBB0_70
# %bb.60:
	move	$a1, $zero
	move	$a6, $zero
	ori	$a3, $zero, 1
	b	.LBB0_21
.LBB0_61:
	move	$a1, $zero
.LBB0_62:
	vpickve2gr.w	$a2, $vr0, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_65
# %bb.63:
	ori	$a6, $zero, 5
	beq	$a1, $a0, .LBB0_67
# %bb.64:
	addi.w	$a1, $a1, 1
.LBB0_65:
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	vpickve2gr.w	$a1, $vr0, 2
	and	$a0, $a1, $a0
	xori	$a6, $a0, 7
	addi.w	$a0, $a6, 0
	ret
.LBB0_66:
	ld.w	$a0, $a0, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	addi.w	$a1, $a2, 0
	xor	$a1, $a1, $t1
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	or	$a0, $a0, $t0
	ori	$a6, $zero, 6
	beqz	$a0, .LBB0_68
.LBB0_67:                               # %.loopexit
	addi.w	$a0, $a6, 0
	ret
.LBB0_68:
	ori	$a6, $zero, 7
	addi.w	$a0, $a6, 0
	ret
.LBB0_69:
	addi.w	$a0, $zero, 0
	ret
.LBB0_70:
	ld.w	$a1, $a0, 32
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ori	$a3, $zero, 4
	add.d	$a7, $a5, $a1
	bne	$a2, $a3, .LBB0_72
# %bb.71:
	move	$a3, $zero
	move	$a6, $zero
	move	$a1, $zero
	ori	$a4, $zero, 1
	b	.LBB0_22
.LBB0_72:
	ld.w	$a1, $a0, 36
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ori	$a3, $zero, 5
	add.d	$t0, $a7, $a1
	bne	$a2, $a3, .LBB0_74
# %bb.73:
	move	$a4, $zero
	move	$a1, $zero
	move	$a6, $zero
	move	$a3, $zero
	ori	$a5, $zero, 1
	b	.LBB0_23
.LBB0_74:
	ld.w	$a1, $a0, 40
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ori	$a3, $zero, 6
	add.d	$t2, $t0, $a1
	bne	$a2, $a3, .LBB0_76
# %bb.75:
	move	$a5, $zero
	move	$a3, $zero
	move	$a6, $zero
	move	$a1, $zero
	move	$a4, $zero
	ori	$a7, $zero, 1
	b	.LBB0_24
.LBB0_76:
	ld.w	$t0, $a0, 44
	move	$a5, $zero
	move	$a3, $zero
	move	$a6, $zero
	move	$a1, $zero
	move	$a4, $zero
	move	$a7, $zero
	addi.d	$t0, $t0, -1
	sltui	$t0, $t0, 1
	add.d	$t2, $t2, $t0
	ori	$t1, $zero, 7
	ori	$t0, $zero, 1
	bne	$a2, $t1, .LBB0_24
	b	.LBB0_25
.Lfunc_end0:
	.size	newOrient, .Lfunc_end0-newOrient
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
