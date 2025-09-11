	.file	"20050826-2.c"
	.text
	.globl	inet_check_attr                 # -- Begin function inet_check_attr
	.p2align	5
	.type	inet_check_attr,@function
inet_check_attr:                        # @inet_check_attr
# %bb.0:
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB0_4
# %bb.1:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_3
# %bb.2:
	addi.w	$a0, $zero, -22
	ret
.LBB0_3:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 0
.LBB0_4:
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB0_8
# %bb.5:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_7
# %bb.6:
	addi.w	$a0, $zero, -22
	ret
.LBB0_7:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 8
.LBB0_8:
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB0_12
# %bb.9:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_11
# %bb.10:
	addi.w	$a0, $zero, -22
	ret
.LBB0_11:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 16
.LBB0_12:
	ld.d	$a0, $a1, 24
	beqz	$a0, .LBB0_16
# %bb.13:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_15
# %bb.14:
	addi.w	$a0, $zero, -22
	ret
.LBB0_15:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 24
.LBB0_16:
	ld.d	$a0, $a1, 32
	beqz	$a0, .LBB0_20
# %bb.17:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_19
# %bb.18:
	addi.w	$a0, $zero, -22
	ret
.LBB0_19:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 32
.LBB0_20:
	ld.d	$a0, $a1, 40
	beqz	$a0, .LBB0_24
# %bb.21:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_23
# %bb.22:
	addi.w	$a0, $zero, -22
	ret
.LBB0_23:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 40
.LBB0_24:
	ld.d	$a0, $a1, 48
	beqz	$a0, .LBB0_28
# %bb.25:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_27
# %bb.26:
	addi.w	$a0, $zero, -22
	ret
.LBB0_27:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 48
.LBB0_28:
	ld.d	$a0, $a1, 56
	beqz	$a0, .LBB0_31
# %bb.29:
	ld.hu	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 15, 2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_31
# %bb.30:
	addi.w	$a0, $zero, -22
	ret
.LBB0_31:
	ld.d	$a0, $a1, 64
	beqz	$a0, .LBB0_34
# %bb.32:
	ld.hu	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 15, 2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_34
# %bb.33:
	addi.w	$a0, $zero, -22
	ret
.LBB0_34:
	ld.d	$a0, $a1, 72
	beqz	$a0, .LBB0_38
# %bb.35:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_37
# %bb.36:
	addi.w	$a0, $zero, -22
	ret
.LBB0_37:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 72
.LBB0_38:
	ld.d	$a0, $a1, 80
	beqz	$a0, .LBB0_42
# %bb.39:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_41
# %bb.40:
	addi.w	$a0, $zero, -22
	ret
.LBB0_41:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 80
.LBB0_42:
	ld.d	$a0, $a1, 88
	beqz	$a0, .LBB0_46
# %bb.43:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_45
# %bb.44:
	addi.w	$a0, $zero, -22
	ret
.LBB0_45:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 88
.LBB0_46:
	ld.d	$a0, $a1, 96
	beqz	$a0, .LBB0_50
# %bb.47:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_49
# %bb.48:
	addi.w	$a0, $zero, -22
	ret
.LBB0_49:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 96
.LBB0_50:
	ld.d	$a2, $a1, 104
	beqz	$a2, .LBB0_53
# %bb.51:
	ld.hu	$a0, $a2, 0
	bstrpick.d	$a0, $a0, 15, 2
	slli.d	$a0, $a0, 2
	ori	$a3, $zero, 4
	bne	$a0, $a3, .LBB0_54
# %bb.52:
	addi.w	$a0, $zero, -22
	ret
.LBB0_53:
	move	$a0, $zero
	ret
.LBB0_54:
	move	$a0, $zero
	addi.d	$a2, $a2, 4
	st.d	$a2, $a1, 104
	ret
.Lfunc_end0:
	.size	inet_check_attr, .Lfunc_end0-inet_check_attr
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	ori	$s0, $zero, 12
	ori	$a0, $zero, 12
	lu32i.d	$a0, 12
	st.d	$a0, $sp, 152
	addi.d	$s1, $sp, 152
	st.d	$s1, $sp, 40
	st.d	$s1, $sp, 48
	st.d	$s1, $sp, 56
	st.d	$s1, $sp, 64
	st.d	$s1, $sp, 72
	st.d	$s1, $sp, 80
	st.d	$s1, $sp, 88
	st.d	$s1, $sp, 96
	st.d	$s1, $sp, 104
	st.d	$s1, $sp, 112
	st.d	$s1, $sp, 120
	st.d	$s1, $sp, 128
	st.d	$s1, $sp, 136
	st.d	$s1, $sp, 144
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(inet_check_attr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_17
# %bb.1:                                # %.preheader30.preheader
	addi.d	$fp, $sp, 156
	vld	$vr0, $sp, 40
	vld	$vr1, $sp, 56
	vld	$vr2, $sp, 72
	vld	$vr3, $sp, 88
	vinsgr2vr.d	$vr4, $fp, 0
	vinsgr2vr.d	$vr4, $s1, 1
	vreplgr2vr.d	$vr5, $fp
	vseq.d	$vr0, $vr0, $vr5
	vrepli.b	$vr6, -1
	vxor.v	$vr0, $vr0, $vr6
	vseq.d	$vr1, $vr1, $vr5
	vxor.v	$vr1, $vr1, $vr6
	vpickev.w	$vr1, $vr1, $vr0
	vseq.d	$vr2, $vr2, $vr5
	vxor.v	$vr2, $vr2, $vr6
	vseq.d	$vr3, $vr3, $vr4
	vst	$vr6, $sp, 16                   # 16-byte Folded Spill
	vxor.v	$vr3, $vr3, $vr6
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vpickve2gr.h	$a0, $vr1, 1
	andi	$a0, $a0, 1
	vpickve2gr.h	$a1, $vr0, 0
	bstrins.d	$a1, $a0, 63, 1
	vpickve2gr.h	$a0, $vr1, 2
	bstrins.d	$a1, $a0, 2, 2
	vpickve2gr.h	$a0, $vr1, 3
	bstrins.d	$a1, $a0, 3, 3
	vpickve2gr.h	$a0, $vr1, 4
	bstrins.d	$a1, $a0, 4, 4
	vpickve2gr.h	$a0, $vr1, 5
	bstrins.d	$a1, $a0, 5, 5
	vpickve2gr.h	$a0, $vr1, 6
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a1, $a0
	vpickve2gr.h	$a1, $vr1, 7
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	bnez	$a0, .LBB1_17
# %bb.2:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 104
	xor	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	beqz	$a0, .LBB1_17
# %bb.3:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 112
	bne	$a0, $fp, .LBB1_17
# %bb.4:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 120
	bne	$a0, $fp, .LBB1_17
# %bb.5:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 128
	bne	$a0, $fp, .LBB1_17
# %bb.6:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 136
	bne	$a0, $fp, .LBB1_17
# %bb.7:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 144
	bne	$a0, $fp, .LBB1_17
# %bb.8:                                # %.preheader29.preheader
	addi.d	$a0, $sp, 152
	st.d	$a0, $sp, 40
	st.d	$a0, $sp, 56
	st.d	$a0, $sp, 64
	st.d	$a0, $sp, 72
	st.d	$a0, $sp, 88
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 104
	st.d	$a0, $sp, 112
	st.d	$a0, $sp, 120
	st.d	$a0, $sp, 128
	st.d	$a0, $sp, 136
	st.d	$a0, $sp, 144
	st.d	$zero, $sp, 48
	addi.d	$a0, $s0, -8
	st.h	$a0, $sp, 156
	st.d	$fp, $sp, 80
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(inet_check_attr)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -22
	bne	$a0, $a1, .LBB1_17
# %bb.9:                                # %.preheader
	ld.d	$a1, $sp, 48
	ld.d	$a0, $sp, 40
	bnez	$a1, .LBB1_17
# %bb.10:                               # %.preheader.split.us.preheader
	bne	$a0, $fp, .LBB1_17
# %bb.11:                               # %.preheader.split.us.preheader
	ld.d	$a0, $sp, 56
	bne	$a0, $fp, .LBB1_17
# %bb.12:                               # %.preheader.split.us.preheader
	ld.d	$a0, $sp, 64
	bne	$a0, $fp, .LBB1_17
# %bb.13:                               # %.preheader.split.us.preheader
	ld.d	$a0, $sp, 72
	bne	$a0, $fp, .LBB1_17
# %bb.14:                               # %.preheader.split.us.preheader
	ld.d	$a0, $sp, 80
	bne	$a0, $fp, .LBB1_17
# %bb.15:                               # %.thread.us.5
	vld	$vr0, $sp, 88
	vld	$vr1, $sp, 104
	vld	$vr2, $sp, 120
	vld	$vr3, $sp, 136
	addi.d	$a0, $sp, 152
	vreplgr2vr.d	$vr4, $a0
	vseq.d	$vr0, $vr0, $vr4
	vld	$vr5, $sp, 16                   # 16-byte Folded Reload
	vxor.v	$vr0, $vr0, $vr5
	vseq.d	$vr1, $vr1, $vr4
	vxor.v	$vr1, $vr1, $vr5
	vpickev.w	$vr1, $vr1, $vr0
	vseq.d	$vr2, $vr2, $vr4
	vxor.v	$vr2, $vr2, $vr5
	vseq.d	$vr3, $vr3, $vr4
	vxor.v	$vr3, $vr3, $vr5
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vpickve2gr.h	$a0, $vr1, 1
	andi	$a0, $a0, 1
	vpickve2gr.h	$a1, $vr0, 0
	bstrins.d	$a1, $a0, 63, 1
	vpickve2gr.h	$a0, $vr1, 2
	bstrins.d	$a1, $a0, 2, 2
	vpickve2gr.h	$a0, $vr1, 3
	bstrins.d	$a1, $a0, 3, 3
	vpickve2gr.h	$a0, $vr1, 4
	bstrins.d	$a1, $a0, 4, 4
	vpickve2gr.h	$a0, $vr1, 5
	bstrins.d	$a1, $a0, 5, 5
	vpickve2gr.h	$a0, $vr1, 6
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a1, $a0
	vpickve2gr.h	$a1, $vr1, 7
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	bnez	$a0, .LBB1_17
# %bb.16:                               # %.split38.us
	move	$a0, $zero
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB1_17:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
