	.file	"bmhsrch.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function bmh_init
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	bmh_init
	.p2align	5
	.type	bmh_init,@function
bmh_init:                               # @bmh_init
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(pat)
	st.d	$fp, $a0, %pc_lo12(pat)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(patlen)
	st.w	$a0, $a2, %pc_lo12(patlen)
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a2, %pc_hi20(skip)
	addi.d	$a2, $a2, %pc_lo12(skip)
	vst	$vr0, $a2, 0
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 48
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 80
	vst	$vr0, $a2, 96
	vst	$vr0, $a2, 112
	vst	$vr0, $a2, 128
	vst	$vr0, $a2, 144
	vst	$vr0, $a2, 160
	vst	$vr0, $a2, 176
	vst	$vr0, $a2, 192
	vst	$vr0, $a2, 208
	vst	$vr0, $a2, 224
	vst	$vr0, $a2, 240
	vst	$vr0, $a2, 256
	vst	$vr0, $a2, 272
	vst	$vr0, $a2, 288
	vst	$vr0, $a2, 304
	vst	$vr0, $a2, 320
	vst	$vr0, $a2, 336
	vst	$vr0, $a2, 352
	vst	$vr0, $a2, 368
	vst	$vr0, $a2, 384
	vst	$vr0, $a2, 400
	vst	$vr0, $a2, 416
	vst	$vr0, $a2, 432
	vst	$vr0, $a2, 448
	vst	$vr0, $a2, 464
	vst	$vr0, $a2, 480
	vst	$vr0, $a2, 496
	vst	$vr0, $a2, 512
	vst	$vr0, $a2, 528
	vst	$vr0, $a2, 544
	vst	$vr0, $a2, 560
	vst	$vr0, $a2, 576
	vst	$vr0, $a2, 592
	vst	$vr0, $a2, 608
	vst	$vr0, $a2, 624
	vst	$vr0, $a2, 640
	vst	$vr0, $a2, 656
	vst	$vr0, $a2, 672
	vst	$vr0, $a2, 688
	vst	$vr0, $a2, 704
	vst	$vr0, $a2, 720
	vst	$vr0, $a2, 736
	vst	$vr0, $a2, 752
	vst	$vr0, $a2, 768
	vst	$vr0, $a2, 784
	vst	$vr0, $a2, 800
	vst	$vr0, $a2, 816
	vst	$vr0, $a2, 832
	vst	$vr0, $a2, 848
	vst	$vr0, $a2, 864
	vst	$vr0, $a2, 880
	vst	$vr0, $a2, 896
	vst	$vr0, $a2, 912
	vst	$vr0, $a2, 928
	vst	$vr0, $a2, 944
	vst	$vr0, $a2, 960
	vst	$vr0, $a2, 976
	vst	$vr0, $a2, 992
	vst	$vr0, $a2, 1008
	blez	$a1, .LBB0_8
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a3, $a0, 30, 0
	ori	$a4, $zero, 4
	bgeu	$a3, $a4, .LBB0_3
# %bb.2:
	move	$a4, $zero
	b	.LBB0_6
.LBB0_3:                                # %vector.ph30
	bstrpick.d	$a4, $a0, 30, 2
	pcalau12i	$a5, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a5, %pc_lo12(.LCPI0_0)
	slli.d	$a4, $a4, 2
	vrepli.b	$vr2, -1
	vrepli.b	$vr3, 0
	move	$a5, $fp
	move	$a6, $a4
	.p2align	4, , 16
.LBB0_4:                                # %vector.body33
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, 0
	vxor.v	$vr4, $vr1, $vr2
	vadd.w	$vr4, $vr0, $vr4
	vinsgr2vr.w	$vr5, $a7, 0
	vilvl.b	$vr5, $vr3, $vr5
	vilvl.h	$vr5, $vr3, $vr5
	vilvh.w	$vr6, $vr3, $vr5
	vilvl.w	$vr5, $vr3, $vr5
	vpickve2gr.d	$a7, $vr5, 0
	alsl.d	$a7, $a7, $a2, 2
	vpickve2gr.d	$t0, $vr5, 1
	alsl.d	$t0, $t0, $a2, 2
	vpickve2gr.d	$t1, $vr6, 0
	alsl.d	$t1, $t1, $a2, 2
	vpickve2gr.d	$t2, $vr6, 1
	alsl.d	$t2, $t2, $a2, 2
	vstelm.w	$vr4, $a7, 0, 0
	vstelm.w	$vr4, $t0, 0, 1
	vstelm.w	$vr4, $t1, 0, 2
	vstelm.w	$vr4, $t2, 0, 3
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB0_4
# %bb.5:                                # %middle.block36
	beq	$a3, $a4, .LBB0_8
.LBB0_6:                                # %.lr.ph.preheader61
	nor	$a5, $a4, $zero
	add.d	$a5, $a5, $a0
	add.d	$a6, $fp, $a4
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a6, 0
	slli.d	$a4, $a4, 2
	stx.w	$a5, $a2, $a4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, 1
	bnez	$a3, .LBB0_7
.LBB0_8:                                # %._crit_edge
	add.d	$a3, $fp, $a1
	ld.bu	$a3, $a3, -1
	slli.d	$a4, $a3, 2
	lu12i.w	$a5, 7
	ori	$a5, $a5, 4095
	stx.w	$a5, $a2, $a4
	pcalau12i	$a2, %pc_hi20(skip2)
	ori	$a4, $zero, 2
	st.w	$a0, $a2, %pc_lo12(skip2)
	blt	$a1, $a4, .LBB0_16
# %bb.9:                                # %.lr.ph20.preheader
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	add.d	$a4, $a0, $a1
	bstrpick.d	$a1, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a1, $a5, .LBB0_11
# %bb.10:
	move	$a4, $zero
	b	.LBB0_17
.LBB0_11:                               # %vector.ph39
	move	$a5, $zero
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	vinsgr2vr.b	$vr0, $a3, 0
	vinsgr2vr.b	$vr0, $a3, 1
	vinsgr2vr.b	$vr0, $a3, 2
	vinsgr2vr.b	$vr0, $a3, 3
	addi.w	$a6, $zero, -2
	lu32i.d	$a6, 0
	addi.d	$a7, $zero, -3
	addi.d	$t0, $zero, -4
	move	$t1, $fp
	move	$t2, $a4
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 4
	addi.d	$a5, $a5, 4
	beqz	$t2, .LBB0_15
.LBB0_13:                               # %vector.body44
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t1, 0
	vinsgr2vr.w	$vr1, $t3, 0
	vseq.b	$vr1, $vr1, $vr0
	vilvl.b	$vr1, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 24
	vmskltz.w	$vr2, $vr1
	vpickve2gr.hu	$t3, $vr2, 0
	beqz	$t3, .LBB0_12
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	vsrai.w	$vr1, $vr1, 24
	vpickve2gr.w	$t3, $vr1, 3
	andi	$t3, $t3, 1
	vpickve2gr.w	$t4, $vr1, 2
	andi	$t4, $t4, 1
	vpickve2gr.w	$t5, $vr1, 1
	orn	$t5, $a6, $t5
	masknez	$t5, $t5, $t4
	maskeqz	$t4, $a7, $t4
	or	$t4, $t4, $t5
	masknez	$t4, $t4, $t3
	maskeqz	$t3, $t0, $t3
	or	$t3, $t3, $t4
	xor	$t3, $t3, $a5
	add.d	$t3, $t3, $a0
	st.w	$t3, $a2, %pc_lo12(skip2)
	b	.LBB0_12
.LBB0_15:                               # %middle.block54
	bne	$a1, $a4, .LBB0_17
.LBB0_16:                               # %._crit_edge21
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_17:                               # %.lr.ph20.preheader60
	add.d	$a5, $fp, $a4
	nor	$a6, $a4, $zero
	add.d	$a0, $a6, $a0
	sub.d	$a1, $a1, $a4
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, -1
	beqz	$a1, .LBB0_16
.LBB0_19:                               # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a5, 0
	bne	$a4, $a3, .LBB0_18
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	st.w	$a0, $a2, %pc_lo12(skip2)
	b	.LBB0_18
.Lfunc_end0:
	.size	bmh_init, .Lfunc_end0-bmh_init
                                        # -- End function
	.globl	bmh_search                      # -- Begin function bmh_search
	.p2align	5
	.type	bmh_search,@function
bmh_search:                             # @bmh_search
# %bb.0:
	pcalau12i	$a2, %pc_hi20(patlen)
	ld.w	$a4, $a2, %pc_lo12(patlen)
	nor	$a2, $a1, $zero
	add.w	$t1, $a4, $a2
	bltz	$t1, .LBB1_3
.LBB1_1:
	move	$a0, $zero
.LBB1_2:                                # %.critedge.thread
	ret
.LBB1_3:
	add.d	$a2, $a0, $a1
	lu12i.w	$a3, 7
	ori	$a3, $a3, 4095
	sub.w	$a3, $a3, $a1
	addi.w	$a4, $a4, -1
	pcalau12i	$a5, %pc_hi20(pat)
	ld.d	$a6, $a5, %pc_lo12(pat)
	pcalau12i	$a5, %pc_hi20(skip2)
	ld.w	$a5, $a5, %pc_lo12(skip2)
	bstrpick.d	$a7, $a4, 31, 0
	add.d	$a6, $a7, $a6
	addi.d	$a6, $a6, -1
	add.d	$a1, $a1, $a7
	nor	$a7, $a4, $zero
	add.d	$a1, $a7, $a1
	add.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(skip)
	addi.d	$a7, $a0, %pc_lo12(skip)
	lu12i.w	$a0, -8
	ori	$t0, $a0, 1
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	ldx.bu	$a0, $a2, $t1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a7, $a0
	add.w	$t1, $a0, $t1
	bltz	$t1, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	blt	$t1, $a3, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	add.w	$t1, $t1, $t0
	sub.w	$a0, $t1, $a4
	add.d	$a0, $a2, $a0
	add.d	$t2, $a1, $t1
	move	$t3, $a6
	move	$t4, $a4
	.p2align	4, , 16
.LBB1_7:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$t4, .LBB1_2
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	ld.b	$t5, $t2, 0
	ld.bu	$t6, $t3, 0
	addi.w	$t4, $t4, -1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, -1
	beq	$t5, $t6, .LBB1_7
# %bb.9:                                # %.critedge
                                        #   in Loop: Header=BB1_4 Depth=1
	add.w	$t1, $a5, $t1
	bltz	$t1, .LBB1_4
	b	.LBB1_1
.Lfunc_end1:
	.size	bmh_search, .Lfunc_end1-bmh_search
                                        # -- End function
	.type	pat,@object                     # @pat
	.local	pat
	.comm	pat,8,8
	.type	patlen,@object                  # @patlen
	.local	patlen
	.comm	patlen,4,4
	.type	skip,@object                    # @skip
	.local	skip
	.comm	skip,1024,16
	.type	skip2,@object                   # @skip2
	.local	skip2
	.comm	skip2,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
