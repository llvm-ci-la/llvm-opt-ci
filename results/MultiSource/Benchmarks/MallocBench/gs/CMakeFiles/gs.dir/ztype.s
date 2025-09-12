	.file	"ztype.c"
	.text
	.globl	ztypenumber                     # -- Begin function ztypenumber
	.p2align	5
	.type	ztypenumber,@function
ztypenumber:                            # @ztypenumber
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(osp_nargs)
	ld.d	$a1, $a1, %got_pc_lo12(osp_nargs)
	ld.d	$a1, $a1, 0
	bgeu	$a0, $a1, .LBB0_2
# %bb.1:
	addi.w	$a0, $zero, -17
	ret
.LBB0_2:
	ld.h	$a2, $a0, 8
	bstrpick.d	$a2, $a2, 7, 2
	ori	$a3, $zero, 15
	sltu	$a3, $a3, $a2
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 9
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 20
	st.h	$a2, $a0, 8
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	ztypenumber, .Lfunc_end0-ztypenumber
                                        # -- End function
	.globl	zcvlit                          # -- Begin function zcvlit
	.p2align	5
	.type	zcvlit,@function
zcvlit:                                 # @zcvlit
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(osp_nargs)
	ld.d	$a1, $a1, %got_pc_lo12(osp_nargs)
	ld.d	$a1, $a1, 0
	bgeu	$a0, $a1, .LBB1_2
# %bb.1:
	addi.w	$a0, $zero, -17
	ret
.LBB1_2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a2, $a0, 8
	andi	$a1, $a2, 252
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB1_4
# %bb.3:
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $a0, 8
.LBB1_4:
	bstrpick.d	$a2, $a2, 15, 1
	slli.d	$a2, $a2, 1
	st.h	$a2, $a0, 8
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	zcvlit, .Lfunc_end1-zcvlit
                                        # -- End function
	.globl	zcvx                            # -- Begin function zcvx
	.p2align	5
	.type	zcvx,@function
zcvx:                                   # @zcvx
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(osp_nargs)
	ld.d	$a1, $a1, %got_pc_lo12(osp_nargs)
	ld.d	$a1, $a1, 0
	bgeu	$a0, $a1, .LBB2_2
# %bb.1:
	addi.w	$a0, $zero, -17
	ret
.LBB2_2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a2, $a0, 8
	andi	$a1, $a2, 252
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB2_4
# %bb.3:
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $a0, 8
.LBB2_4:
	ori	$a2, $a2, 1
	st.h	$a2, $a0, 8
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	zcvx, .Lfunc_end2-zcvx
                                        # -- End function
	.globl	zxcheck                         # -- Begin function zxcheck
	.p2align	5
	.type	zxcheck,@function
zxcheck:                                # @zxcheck
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(osp_nargs)
	ld.d	$a1, $a1, %got_pc_lo12(osp_nargs)
	ld.d	$a1, $a1, 0
	bgeu	$a0, $a1, .LBB3_2
# %bb.1:
	addi.w	$a0, $zero, -17
	ret
.LBB3_2:
	ld.hu	$a2, $a0, 8
	andi	$a1, $a2, 252
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB3_4
# %bb.3:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.hu	$a2, $a1, 8
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB3_4:
	andi	$a2, $a2, 1
	st.h	$a2, $a0, 0
	ori	$a2, $zero, 4
	st.h	$a2, $a0, 8
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	zxcheck, .Lfunc_end3-zxcheck
                                        # -- End function
	.globl	zexecuteonly                    # -- Begin function zexecuteonly
	.p2align	5
	.type	zexecuteonly,@function
zexecuteonly:                           # @zexecuteonly
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(osp_nargs)
	ld.d	$a1, $a1, %got_pc_lo12(osp_nargs)
	ld.d	$a1, $a1, 0
	bgeu	$a0, $a1, .LBB4_3
# %bb.1:
	addi.w	$a1, $zero, -17
.LBB4_2:                                # %access_check.exit
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_3:
	ld.hu	$a2, $a0, 8
	andi	$a3, $a2, 252
	ori	$a4, $zero, 8
	addi.w	$a1, $zero, -20
	beq	$a3, $a4, .LBB4_2
# %bb.4:
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a4, $zero, 13
	bltu	$a4, $a3, .LBB4_2
# %bb.5:
	ori	$a4, $zero, 1
	sll.d	$a4, $a4, $a3
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1033
	and	$a4, $a4, $a5
	beqz	$a4, .LBB4_8
# %bb.6:
	andi	$a1, $a2, 2
	bnez	$a1, .LBB4_10
.LBB4_7:
	addi.w	$a1, $zero, -7
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_8:
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB4_2
# %bb.9:
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $a0, 8
	andi	$a1, $a2, 2
	beqz	$a1, .LBB4_7
.LBB4_10:
	move	$a1, $zero
	lu12i.w	$a3, 15
	ori	$a3, $a3, 3327
	and	$a2, $a2, $a3
	st.h	$a2, $a0, 8
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	zexecuteonly, .Lfunc_end4-zexecuteonly
                                        # -- End function
	.globl	access_check                    # -- Begin function access_check
	.p2align	5
	.type	access_check,@function
access_check:                           # @access_check
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.h	$a3, $a0, 8
	bstrpick.d	$a4, $a3, 7, 2
	ori	$a5, $zero, 13
	addi.w	$a3, $zero, -20
	bltu	$a5, $a4, .LBB5_9
# %bb.1:
	ori	$a5, $zero, 1
	sll.d	$a5, $a5, $a4
	lu12i.w	$a6, 2
	ori	$a6, $a6, 1033
	and	$a5, $a5, $a6
	beqz	$a5, .LBB5_5
# %bb.2:
	ld.hu	$a4, $a0, 8
	beqz	$a2, .LBB5_7
.LBB5_3:
	andn	$a2, $a1, $a4
	beqz	$a2, .LBB5_8
# %bb.4:
	addi.w	$a3, $zero, -7
	b	.LBB5_9
.LBB5_5:
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB5_9
# %bb.6:
	move	$fp, $a1
	move	$s0, $a2
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	move	$a1, $fp
	ld.hu	$a4, $a0, 8
	bnez	$a2, .LBB5_3
.LBB5_7:
	andn	$a0, $a1, $a4
	sltui	$a3, $a0, 1
	b	.LBB5_9
.LBB5_8:
	move	$a3, $zero
	lu12i.w	$a2, 15
	ori	$a2, $a2, 3325
	and	$a2, $a4, $a2
	or	$a1, $a2, $a1
	st.h	$a1, $a0, 8
.LBB5_9:
	move	$a0, $a3
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	access_check, .Lfunc_end5-access_check
                                        # -- End function
	.globl	znoaccess                       # -- Begin function znoaccess
	.p2align	5
	.type	znoaccess,@function
znoaccess:                              # @znoaccess
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a2, $a0, 8
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a4, $zero, 13
	addi.w	$a1, $zero, -20
	bltu	$a4, $a3, .LBB6_3
# %bb.1:
	ori	$a4, $zero, 1
	sll.d	$a4, $a4, $a3
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1033
	and	$a4, $a4, $a5
	beqz	$a4, .LBB6_4
.LBB6_2:
	move	$a1, $zero
	lu12i.w	$a3, 15
	ori	$a3, $a3, 3325
	and	$a2, $a2, $a3
	st.h	$a2, $a0, 8
.LBB6_3:                                # %access_check.exit
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_4:
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB6_3
# %bb.5:
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $a0, 8
	b	.LBB6_2
.Lfunc_end6:
	.size	znoaccess, .Lfunc_end6-znoaccess
                                        # -- End function
	.globl	zreadonly                       # -- Begin function zreadonly
	.p2align	5
	.type	zreadonly,@function
zreadonly:                              # @zreadonly
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a2, $a0, 8
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a4, $zero, 13
	addi.w	$a1, $zero, -20
	bltu	$a4, $a3, .LBB7_4
# %bb.1:
	ori	$a4, $zero, 1
	sll.d	$a4, $a4, $a3
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1033
	and	$a4, $a4, $a5
	beqz	$a4, .LBB7_5
# %bb.2:
	andi	$a1, $a2, 514
	ori	$a3, $zero, 514
	bne	$a1, $a3, .LBB7_7
.LBB7_3:
	move	$a1, $zero
	lu12i.w	$a3, 15
	ori	$a3, $a3, 3839
	and	$a2, $a2, $a3
	st.h	$a2, $a0, 8
.LBB7_4:                                # %access_check.exit
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_5:
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB7_4
# %bb.6:
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $a0, 8
	andi	$a1, $a2, 514
	ori	$a3, $zero, 514
	beq	$a1, $a3, .LBB7_3
.LBB7_7:
	addi.w	$a1, $zero, -7
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	zreadonly, .Lfunc_end7-zreadonly
                                        # -- End function
	.globl	zrcheck                         # -- Begin function zrcheck
	.p2align	5
	.type	zrcheck,@function
zrcheck:                                # @zrcheck
# %bb.0:
	ld.hu	$a2, $a0, 8
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a4, $zero, 13
	addi.w	$a1, $zero, -20
	bltu	$a4, $a3, .LBB8_3
# %bb.1:
	ori	$a4, $zero, 1
	sll.d	$a4, $a4, $a3
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1033
	and	$a4, $a4, $a5
	beqz	$a4, .LBB8_4
.LBB8_2:
	bstrpick.d	$a1, $a2, 9, 9
	st.h	$a1, $a0, 0
	ori	$a2, $zero, 4
	st.h	$a2, $a0, 8
.LBB8_3:                                # %access_check.exit
	move	$a0, $a1
	ret
.LBB8_4:
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB8_3
# %bb.5:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.hu	$a2, $a1, 8
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	b	.LBB8_2
.Lfunc_end8:
	.size	zrcheck, .Lfunc_end8-zrcheck
                                        # -- End function
	.globl	zwcheck                         # -- Begin function zwcheck
	.p2align	5
	.type	zwcheck,@function
zwcheck:                                # @zwcheck
# %bb.0:
	ld.hu	$a2, $a0, 8
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a4, $zero, 13
	addi.w	$a1, $zero, -20
	bltu	$a4, $a3, .LBB9_3
# %bb.1:
	ori	$a4, $zero, 1
	sll.d	$a4, $a4, $a3
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1033
	and	$a4, $a4, $a5
	beqz	$a4, .LBB9_4
.LBB9_2:
	bstrpick.d	$a1, $a2, 8, 8
	st.h	$a1, $a0, 0
	ori	$a2, $zero, 4
	st.h	$a2, $a0, 8
.LBB9_3:                                # %access_check.exit
	move	$a0, $a1
	ret
.LBB9_4:
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB9_3
# %bb.5:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.hu	$a2, $a1, 8
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	b	.LBB9_2
.Lfunc_end9:
	.size	zwcheck, .Lfunc_end9-zwcheck
                                        # -- End function
	.globl	zcvi                            # -- Begin function zcvi
	.p2align	5
	.type	zcvi,@function
zcvi:                                   # @zcvi
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	ld.hu	$a1, $a0, 8
	bstrpick.d	$a2, $a1, 7, 2
	ori	$a3, $zero, 5
	beq	$a2, $a3, .LBB10_9
# %bb.1:
	ori	$a3, $zero, 13
	beq	$a2, $a3, .LBB10_7
# %bb.2:
	ori	$a1, $zero, 11
	bne	$a2, $a1, .LBB10_10
# %bb.3:
	fld.s	$fa0, $a0, 0
.LBB10_4:
	lu12i.w	$a1, 323584
	movgr2fr.w	$fa1, $a1
	fcmp.cle.s	$fcc0, $fa1, $fa0
	addi.w	$a1, $zero, -15
	bcnez	$fcc0, .LBB10_16
# %bb.5:
	fcvt.d.s	$fa1, $fa0
	lu12i.w	$a2, 512
	lu52i.d	$a2, $a2, -994
	movgr2fr.d	$fa2, $a2
	fcmp.cle.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB10_16
# %bb.6:
	move	$a1, $zero
	ftintrz.l.s	$fa0, $fa0
	fst.d	$fa0, $a0, 0
	ori	$a2, $zero, 20
	st.h	$a2, $a0, 8
	b	.LBB10_16
.LBB10_7:
	andi	$a1, $a1, 512
	bnez	$a1, .LBB10_11
# %bb.8:
	addi.w	$a1, $zero, -7
	b	.LBB10_16
.LBB10_9:
	move	$a1, $zero
	b	.LBB10_16
.LBB10_10:
	addi.w	$a1, $zero, -20
	b	.LBB10_16
.LBB10_11:
	ld.d	$a1, $a0, 0
	move	$fp, $a0
	ld.hu	$a2, $a0, 10
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(sread_string)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(scan_number)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bnez	$a0, .LBB10_16
# %bb.12:
	ld.d	$a0, $sp, 32
	ld.d	$a2, $sp, 40
	addi.w	$a1, $zero, -18
	bltu	$a0, $a2, .LBB10_16
# %bb.13:
	ld.d	$a2, $sp, 72
	move	$s0, $a1
	addi.d	$a0, $sp, 32
	jirl	$ra, $a2, 0
	addi.w	$a2, $zero, -1
	move	$a1, $s0
	bne	$a0, $a2, .LBB10_16
# %bb.14:
	ld.hu	$a0, $sp, 24
	andi	$a0, $a0, 252
	ori	$a1, $zero, 20
	bne	$a0, $a1, .LBB10_17
# %bb.15:
	vld	$vr0, $sp, 16
	move	$a1, $zero
	vst	$vr0, $fp, 0
.LBB10_16:
	move	$a0, $a1
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB10_17:
	fld.s	$fa0, $sp, 16
	move	$a0, $fp
	b	.LBB10_4
.Lfunc_end10:
	.size	zcvi, .Lfunc_end10-zcvi
                                        # -- End function
	.globl	zcvn                            # -- Begin function zcvn
	.p2align	5
	.type	zcvn,@function
zcvn:                                   # @zcvn
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$fp, $a0, 8
	andi	$a1, $fp, 252
	ori	$a2, $zero, 52
	bne	$a1, $a2, .LBB11_3
# %bb.1:
	andi	$a1, $fp, 512
	bnez	$a1, .LBB11_4
# %bb.2:
	addi.w	$a0, $zero, -7
	b	.LBB11_6
.LBB11_3:
	addi.w	$a0, $zero, -20
	b	.LBB11_6
.LBB11_4:
	ld.d	$a4, $a0, 0
	ld.hu	$a1, $a0, 10
	ori	$a3, $zero, 1
	move	$a2, $a0
	move	$a0, $a4
	move	$s0, $a2
	pcaddu18i	$ra, %call36(name_ref)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_6
# %bb.5:
	ld.h	$a1, $s0, 8
	move	$a0, $zero
	andi	$a2, $fp, 1
	or	$a1, $a1, $a2
	st.h	$a1, $s0, 8
.LBB11_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	zcvn, .Lfunc_end11-zcvn
                                        # -- End function
	.globl	zcvr                            # -- Begin function zcvr
	.p2align	5
	.type	zcvr,@function
zcvr:                                   # @zcvr
# %bb.0:
	ld.hu	$a2, $a0, 8
	bstrpick.d	$a1, $a2, 7, 2
	ori	$a3, $zero, 13
	beq	$a1, $a3, .LBB12_5
# %bb.1:
	ori	$a2, $zero, 11
	beq	$a1, $a2, .LBB12_4
# %bb.2:
	ori	$a2, $zero, 5
	bne	$a1, $a2, .LBB12_7
# %bb.3:
	ld.d	$a1, $a0, 0
	move	$a2, $a0
	move	$a0, $zero
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a2, 0
	ori	$a1, $zero, 44
	st.h	$a1, $a2, 8
	ret
.LBB12_4:
	move	$a0, $zero
	ret
.LBB12_5:
	andi	$a1, $a2, 512
	bnez	$a1, .LBB12_8
# %bb.6:
	addi.w	$a0, $zero, -7
	ret
.LBB12_7:
	addi.w	$a0, $zero, -20
	ret
.LBB12_8:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	move	$fp, $a0
	ld.hu	$a2, $a0, 10
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(sread_string)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(scan_number)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_14
# %bb.9:
	ld.d	$a1, $sp, 32
	ld.d	$a2, $sp, 40
	addi.w	$a0, $zero, -18
	bltu	$a1, $a2, .LBB12_14
# %bb.10:
	ld.d	$a1, $sp, 72
	move	$s0, $a0
	addi.d	$a0, $sp, 32
	jirl	$ra, $a1, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $s0
	bne	$a1, $a2, .LBB12_14
# %bb.11:
	ld.hu	$a0, $sp, 24
	andi	$a0, $a0, 252
	ori	$a1, $zero, 44
	bne	$a0, $a1, .LBB12_13
# %bb.12:
	vld	$vr0, $sp, 16
	move	$a0, $zero
	vst	$vr0, $fp, 0
	b	.LBB12_14
.LBB12_13:
	ld.d	$a2, $sp, 16
	move	$a0, $zero
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $fp, 0
	st.h	$a1, $fp, 8
.LBB12_14:
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end12:
	.size	zcvr, .Lfunc_end12-zcvr
                                        # -- End function
	.globl	zcvrs                           # -- Begin function zcvrs
	.p2align	5
	.type	zcvrs,@function
zcvrs:                                  # @zcvrs
# %bb.0:
	ld.hu	$a1, $a0, -8
	andi	$a1, $a1, 252
	ori	$a3, $zero, 20
	addi.w	$a2, $zero, -20
	bne	$a1, $a3, .LBB13_11
# %bb.1:
	ld.d	$a4, $a0, -16
	addi.d	$a1, $a4, -37
	addi.w	$a5, $zero, -35
	addi.w	$a3, $zero, -15
	bgeu	$a1, $a5, .LBB13_3
# %bb.2:
	move	$a0, $a3
	ret
.LBB13_3:
	ld.hu	$a1, $a0, 8
	andi	$a5, $a1, 252
	ori	$a6, $zero, 52
	bne	$a5, $a6, .LBB13_11
# %bb.4:
	andi	$a1, $a1, 256
	bnez	$a1, .LBB13_6
# %bb.5:
	addi.w	$a2, $zero, -7
	b	.LBB13_11
.LBB13_6:
	ld.hu	$a1, $a0, -24
	andi	$a1, $a1, 252
	ori	$a5, $zero, 20
	bne	$a1, $a5, .LBB13_11
# %bb.7:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $a0, -32
	ld.d	$a5, $fp, 0
	addi.d	$a2, $sp, 48
	srai.d	$a1, $a5, 63
	xor	$a6, $a5, $a1
	sub.d	$a7, $a6, $a1
	addi.d	$a1, $sp, 47
	ori	$a6, $zero, 55
	ori	$t0, $zero, 48
	.p2align	4, , 16
.LBB13_8:                               # =>This Inner Loop Header: Depth=1
	move	$t1, $a7
	div.du	$a7, $a7, $a4
	mul.d	$t2, $a7, $a4
	sub.d	$t2, $t1, $t2
	sltui	$t3, $t2, 10
	masknez	$t4, $a6, $t3
	maskeqz	$t3, $t0, $t3
	or	$t3, $t3, $t4
	add.d	$t2, $t3, $t2
	st.b	$t2, $a1, 0
	addi.d	$a1, $a1, -1
	bgeu	$t1, $a4, .LBB13_8
# %bb.9:
	bltz	$a5, .LBB13_12
# %bb.10:
	addi.d	$a1, $a1, 1
	b	.LBB13_13
.LBB13_11:
	move	$a0, $a2
	ret
.LBB13_12:
	ori	$a4, $zero, 45
	st.b	$a4, $a1, 0
.LBB13_13:
	ld.hu	$a4, $a0, 10
	sub.d	$s0, $a2, $a1
	move	$a2, $a3
	blt	$a4, $s0, .LBB13_15
# %bb.14:
	ld.d	$a3, $a0, 0
	bstrpick.d	$a2, $s0, 31, 0
	move	$s1, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s1, 8
	st.h	$s0, $s1, 10
	lu12i.w	$a1, 8
	or	$a0, $a0, $a1
	st.h	$a0, $s1, 8
	vld	$vr0, $s1, 0
	vst	$vr0, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	addi.d	$a1, $a1, -32
	st.d	$a1, $a0, 0
.LBB13_15:
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	move	$a0, $a2
	ret
.Lfunc_end13:
	.size	zcvrs, .Lfunc_end13-zcvrs
                                        # -- End function
	.globl	zcvs                            # -- Begin function zcvs
	.p2align	5
	.type	zcvs,@function
zcvs:                                   # @zcvs
# %bb.0:
	ld.hu	$a1, $a0, 8
	andi	$a2, $a1, 252
	ori	$a3, $zero, 52
	bne	$a2, $a3, .LBB14_5
# %bb.1:
	andi	$a2, $a1, 256
	addi.w	$a1, $zero, -7
	beqz	$a2, .LBB14_6
# %bb.2:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	ld.hu	$a2, $a0, -8
	addi.d	$fp, $a0, -16
	addi.d	$a4, $sp, 63
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a5, $zero, 15
	sltu	$a5, $a5, $a3
	masknez	$a3, $a3, $a5
	ori	$a6, $zero, 9
	maskeqz	$a5, $a6, $a5
	or	$a3, $a5, $a3
	addi.d	$a3, $a3, -1
	ori	$a5, $zero, 12
	st.d	$a4, $sp, 40
	bltu	$a5, $a3, .LBB14_10
# %bb.3:
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI14_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI14_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB14_4:
	move	$s1, $a0
	ld.hu	$a0, $fp, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	b	.LBB14_23
.LBB14_5:
	addi.w	$a1, $zero, -20
.LBB14_6:
	move	$a0, $a1
	ret
.LBB14_7:
	addi.d	$a1, $sp, 40
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(name_string_ref)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB14_26
.LBB14_8:
	andi	$a2, $a2, 512
	beqz	$a2, .LBB14_29
# %bb.9:
	vld	$vr0, $fp, 0
	vst	$vr0, $sp, 40
	b	.LBB14_26
.LBB14_10:
	pcalau12i	$a1, %got_pc_hi20(osp_nargs)
	ld.d	$a1, $a1, %got_pc_lo12(osp_nargs)
	ld.d	$a1, $a1, 0
	bgeu	$a0, $a1, .LBB14_22
# %bb.11:
	addi.w	$a1, $zero, -17
	b	.LBB14_29
.LBB14_12:
	move	$s1, $a0
	ld.d	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	b	.LBB14_21
.LBB14_13:
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(dstack)
	ld.d	$s0, $a0, %got_pc_lo12(dstack)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dict_first)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dict_next)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB14_20
# %bb.14:                               # %.lr.ph
	move	$a1, $a0
	ori	$s2, $zero, 28
	pcalau12i	$a0, %got_pc_hi20(dstack)
	ld.d	$s0, $a0, %got_pc_lo12(dstack)
	b	.LBB14_16
	.p2align	4, , 16
.LBB14_15:                              #   in Loop: Header=BB14_16 Depth=1
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dict_next)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bltz	$a0, .LBB14_20
.LBB14_16:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $sp, 24
	bne	$a0, $a2, .LBB14_15
# %bb.17:                               #   in Loop: Header=BB14_16 Depth=1
	ld.hu	$a0, $sp, 16
	andi	$a0, $a0, 252
	bne	$a0, $s2, .LBB14_15
# %bb.18:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(name_string_ref)
	jirl	$ra, $ra, 0
	b	.LBB14_25
.LBB14_19:
	move	$s1, $a0
	fld.s	$fa0, $fp, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	b	.LBB14_21
.LBB14_20:                              # %._crit_edge
	ld.d	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
.LBB14_21:
	addi.d	$a0, $sp, 63
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB14_24
.LBB14_22:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
.LBB14_23:
	st.d	$a0, $sp, 40
.LBB14_24:
	ld.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.h	$a0, $sp, 50
.LBB14_25:
	move	$a0, $s1
.LBB14_26:
	ld.hu	$a2, $sp, 50
	ld.hu	$a1, $a0, 10
	bgeu	$a1, $a2, .LBB14_28
# %bb.27:
	addi.w	$a1, $zero, -15
	b	.LBB14_29
.LBB14_28:
	ld.d	$a3, $a0, 0
	ld.d	$a1, $sp, 40
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 0
	ld.h	$a0, $sp, 50
	vst	$vr0, $fp, 0
	ld.h	$a1, $s0, -8
	st.h	$a0, $s0, -6
	lu12i.w	$a0, 8
	or	$a0, $a1, $a0
	st.h	$a0, $s0, -8
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a0, 0
.LBB14_29:
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	move	$a0, $a1
	ret
.Lfunc_end14:
	.size	zcvs, .Lfunc_end14-zcvs
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI14_0:
	.word	.LBB14_4-.LJTI14_0
	.word	.LBB14_10-.LJTI14_0
	.word	.LBB14_10-.LJTI14_0
	.word	.LBB14_10-.LJTI14_0
	.word	.LBB14_12-.LJTI14_0
	.word	.LBB14_10-.LJTI14_0
	.word	.LBB14_7-.LJTI14_0
	.word	.LBB14_10-.LJTI14_0
	.word	.LBB14_13-.LJTI14_0
	.word	.LBB14_10-.LJTI14_0
	.word	.LBB14_19-.LJTI14_0
	.word	.LBB14_10-.LJTI14_0
	.word	.LBB14_8-.LJTI14_0
                                        # -- End function
	.text
	.globl	ztype_op_init                   # -- Begin function ztype_op_init
	.p2align	5
	.type	ztype_op_init,@function
ztype_op_init:                          # @ztype_op_init
# %bb.0:
	pcalau12i	$a0, %pc_hi20(ztype_op_init.my_defs)
	addi.d	$a0, $a0, %pc_lo12(ztype_op_init.my_defs)
	pcaddu18i	$t8, %call36(z_op_init)
	jr	$t8
.Lfunc_end15:
	.size	ztype_op_init, .Lfunc_end15-ztype_op_init
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"true"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"false"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%ld"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"operator %lx"
	.size	.L.str.3, 13

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%g"
	.size	.L.str.4, 3

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"--nostringval--"
	.size	.L.str.5, 16

	.type	ztype_op_init.my_defs,@object   # @ztype_op_init.my_defs
	.data
	.p2align	3, 0x0
ztype_op_init.my_defs:
	.dword	.L.str.6
	.dword	zcvi
	.dword	.L.str.7
	.dword	zcvlit
	.dword	.L.str.8
	.dword	zcvn
	.dword	.L.str.9
	.dword	zcvr
	.dword	.L.str.10
	.dword	zcvrs
	.dword	.L.str.11
	.dword	zcvs
	.dword	.L.str.12
	.dword	zcvx
	.dword	.L.str.13
	.dword	zexecuteonly
	.dword	.L.str.14
	.dword	znoaccess
	.dword	.L.str.15
	.dword	zrcheck
	.dword	.L.str.16
	.dword	zreadonly
	.dword	.L.str.17
	.dword	ztypenumber
	.dword	.L.str.18
	.dword	zwcheck
	.dword	.L.str.19
	.dword	zxcheck
	.space	16
	.size	ztype_op_init.my_defs, 240

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"1cvi"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"1cvlit"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"1cvn"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"1cvr"
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"3cvrs"
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"2cvs"
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"1cvx"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"1executeonly"
	.size	.L.str.13, 13

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"1noaccess"
	.size	.L.str.14, 10

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"1rcheck"
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"1readonly"
	.size	.L.str.16, 10

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"1.typenumber"
	.size	.L.str.17, 13

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"1wcheck"
	.size	.L.str.18, 8

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"1xcheck"
	.size	.L.str.19, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ztypenumber
	.addrsig_sym zcvlit
	.addrsig_sym zcvx
	.addrsig_sym zxcheck
	.addrsig_sym zexecuteonly
	.addrsig_sym znoaccess
	.addrsig_sym zreadonly
	.addrsig_sym zrcheck
	.addrsig_sym zwcheck
	.addrsig_sym zcvi
	.addrsig_sym zcvn
	.addrsig_sym zcvr
	.addrsig_sym zcvrs
	.addrsig_sym zcvs
	.addrsig_sym dstack
	.addrsig_sym ztype_op_init.my_defs
