	.file	"20050826-2.c"
	.text
	.globl	inet_check_attr                 # -- Begin function inet_check_attr
	.p2align	5
	.type	inet_check_attr,@function
inet_check_attr:                        # @inet_check_attr
# %bb.0:
	move	$a2, $zero
	addi.w	$a3, $zero, -9
	ori	$a4, $zero, 112
	addi.w	$a0, $zero, -22
	ori	$a5, $zero, 4
	addi.w	$a6, $zero, -3
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a2, $a2, 8
	addi.w	$a3, $a3, 1
	beq	$a2, $a4, .LBB0_6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ldx.d	$a7, $a1, $a2
	beqz	$a7, .LBB0_1
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	ld.hu	$t0, $a7, 0
	bstrpick.d	$t0, $t0, 15, 2
	slli.d	$t0, $t0, 2
	beq	$t0, $a5, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	bltu	$a6, $a3, .LBB0_1
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a7, $a7, 4
	stx.d	$a7, $a1, $a2
	b	.LBB0_1
.LBB0_6:
	move	$a0, $zero
.LBB0_7:                                # %.critedge
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
	bnez	$a0, .LBB1_20
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
	vpickve2gr.h	$a0, $vr1, 2
	andi	$a0, $a0, 1
	vpickve2gr.h	$a1, $vr0, 0
	bstrins.d	$a1, $a0, 63, 1
	vpickve2gr.h	$a0, $vr1, 4
	bstrins.d	$a1, $a0, 2, 2
	vpickve2gr.h	$a0, $vr1, 6
	bstrins.d	$a1, $a0, 3, 3
	vseq.d	$vr0, $vr2, $vr5
	vxor.v	$vr0, $vr0, $vr6
	vseq.d	$vr1, $vr3, $vr4
	vst	$vr6, $sp, 16                   # 16-byte Folded Spill
	vxor.v	$vr1, $vr1, $vr6
	vpickev.w	$vr0, $vr1, $vr0
	vpickve2gr.h	$a0, $vr0, 0
	bstrins.d	$a1, $a0, 4, 4
	vpickve2gr.h	$a0, $vr0, 2
	bstrins.d	$a1, $a0, 5, 5
	vpickve2gr.h	$a0, $vr0, 4
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a1, $a0
	vpickve2gr.h	$a1, $vr0, 6
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	bnez	$a0, .LBB1_20
# %bb.2:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 104
	xor	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	beqz	$a0, .LBB1_20
# %bb.3:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 112
	bne	$a0, $fp, .LBB1_20
# %bb.4:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 120
	bne	$a0, $fp, .LBB1_20
# %bb.5:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 128
	bne	$a0, $fp, .LBB1_20
# %bb.6:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 136
	bne	$a0, $fp, .LBB1_20
# %bb.7:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 144
	bne	$a0, $fp, .LBB1_20
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
	bne	$a0, $a1, .LBB1_20
# %bb.9:
	ld.d	$a0, $sp, 40
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	bne	$a0, $fp, .LBB1_20
# %bb.10:                               # %.peel.next
	ld.d	$a0, $sp, 48
	bnez	$a0, .LBB1_20
# %bb.11:                               # %.peel.next35
	ld.d	$a0, $sp, 56
	bne	$a0, $fp, .LBB1_20
# %bb.12:                               # %.peel.next35
	ld.d	$a0, $sp, 64
	bne	$a0, $fp, .LBB1_20
# %bb.13:                               # %.peel.next35
	ld.d	$a0, $sp, 72
	bne	$a0, $fp, .LBB1_20
# %bb.14:                               # %.peel.next35
	ld.d	$a0, $sp, 80
	bne	$a0, $fp, .LBB1_20
# %bb.15:                               # %vector.ph
	move	$a3, $zero
	addi.d	$a0, $sp, 152
	vreplgr2vr.d	$vr0, $a0
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 48
	.p2align	4, , 16
.LBB1_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $a0, $a3
	vseq.d	$vr1, $vr1, $vr0
	vxor.v	$vr1, $vr1, $vr2
	vmskltz.d	$vr1, $vr1
	vpickve2gr.hu	$a4, $vr1, 0
	bnez	$a4, .LBB1_18
# %bb.17:                               # %vector.body
                                        #   in Loop: Header=BB1_16 Depth=1
	move	$a2, $a3
	addi.d	$a3, $a3, 16
	bne	$a2, $a1, .LBB1_16
.LBB1_18:                               # %middle.split
	andi	$a0, $a4, 3
	bnez	$a0, .LBB1_20
# %bb.19:                               # %.loopexit78
	move	$a0, $zero
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB1_20:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
