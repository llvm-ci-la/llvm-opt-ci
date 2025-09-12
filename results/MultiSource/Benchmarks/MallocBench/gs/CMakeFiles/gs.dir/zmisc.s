	.file	"zmisc.c"
	.text
	.globl	zbind                           # -- Begin function zbind
	.p2align	5
	.type	zbind,@function
zbind:                                  # @zbind
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.h	$a0, $a0, 8
	bstrpick.d	$a0, $a0, 7, 2
	ori	$s2, $zero, 10
	beq	$a0, $s2, .LBB0_2
# %bb.1:
	bnez	$a0, .LBB0_18
.LBB0_2:
	vld	$vr0, $fp, 0
	addi.d	$s3, $fp, 16
	vst	$vr0, $fp, 16
	pcalau12i	$a0, %got_pc_hi20(ostop)
	ld.d	$s4, $a0, %got_pc_lo12(ostop)
	lu12i.w	$a0, 15
	ori	$s5, $a0, 3839
	ori	$s6, $zero, 7
	pcalau12i	$a0, %got_pc_hi20(dsp)
	ld.d	$s7, $a0, %got_pc_lo12(dsp)
	pcalau12i	$a0, %got_pc_hi20(dstack)
	ld.d	$s0, $a0, %got_pc_lo12(dstack)
	b	.LBB0_4
.LBB0_3:                                # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s3, $s3, -16
	bgeu	$fp, $s3, .LBB0_17
	.p2align	4, , 16
.LBB0_4:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $s3, 10
	beqz	$a1, .LBB0_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s1, $s3, 0
	addi.d	$a0, $s1, 16
	st.d	$a0, $s3, 0
	ld.hu	$a0, $s1, 8
	addi.d	$a2, $a1, -1
	bstrpick.d	$a1, $a0, 7, 2
	st.h	$a2, $s3, 10
	beqz	$a1, .LBB0_13
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	beq	$a1, $s2, .LBB0_14
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$a1, $s6, .LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s7, 0
	addi.d	$a3, $sp, 8
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(dict_lookup)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB0_4
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 8
	ld.hu	$a1, $a0, 8
	andi	$a2, $a1, 1
	beqz	$a2, .LBB0_4
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a1, $a1, 7, 2
	sltui	$a2, $a1, 16
	addi.d	$a1, $a1, -9
	sltu	$a1, $zero, $a1
	and	$a1, $a2, $a1
	bnez	$a1, .LBB0_4
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	vld	$vr0, $a0, 0
	vst	$vr0, $s1, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	andi	$a1, $a0, 256
	beqz	$a1, .LBB0_4
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	andi	$a1, $a0, 1
	beqz	$a1, .LBB0_4
# %bb.15:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s4, 0
	bgeu	$s3, $a1, .LBB0_4
# %bb.16:                               #   in Loop: Header=BB0_4 Depth=1
	and	$a0, $a0, $s5
	st.h	$a0, $s1, 8
	vld	$vr0, $s1, 0
	addi.d	$a0, $s3, 16
	vst	$vr0, $s3, 16
	move	$s3, $a0
	b	.LBB0_4
.LBB0_17:
	move	$a0, $zero
	b	.LBB0_19
.LBB0_18:
	addi.w	$a0, $zero, -20
.LBB0_19:                               # %.loopexit
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	zbind, .Lfunc_end0-zbind
                                        # -- End function
	.globl	zcurrenttime                    # -- Begin function zcurrenttime
	.p2align	5
	.type	zcurrenttime,@function
zcurrenttime:                           # @zcurrenttime
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(gs_get_clock)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 16
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	st.d	$a1, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(ostop)
	ld.d	$a2, $a2, %got_pc_lo12(ostop)
	ld.d	$a2, $a2, 0
	bgeu	$a2, $a1, .LBB1_2
# %bb.1:
	st.d	$fp, $a0, 0
	addi.w	$a0, $zero, -16
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_2:
	ld.d	$a1, $sp, 0
	ld.d	$a2, $sp, 8
	move	$a0, $zero
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a2
	ffint.d.l	$fa1, $fa1
	ori	$a1, $zero, 0
	lu32i.d	$a1, -177152
	lu52i.d	$a1, $a1, 1038
	movgr2fr.d	$fa2, $a1
	ori	$a1, $zero, 0
	fdiv.d	$fa1, $fa1, $fa2
	lu32i.d	$a1, 425984
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fa2, $a1
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 16
	ori	$a1, $zero, 44
	st.h	$a1, $fp, 24
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	zcurrenttime, .Lfunc_end1-zcurrenttime
                                        # -- End function
	.globl	zgetenv                         # -- Begin function zgetenv
	.p2align	5
	.type	zgetenv,@function
zgetenv:                                # @zgetenv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.hu	$a0, $a0, 8
	andi	$a1, $a0, 252
	ori	$a2, $zero, 52
	bne	$a1, $a2, .LBB2_3
# %bb.1:
	andi	$a0, $a0, 512
	bnez	$a0, .LBB2_5
# %bb.2:
	addi.w	$a0, $zero, -7
	b	.LBB2_4
.LBB2_3:
	addi.w	$a0, $zero, -20
.LBB2_4:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_5:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ref_to_string)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_10
# %bb.6:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 10
	move	$s1, $a0
	addi.d	$a1, $a1, 1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB2_11
# %bb.7:
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(string_to_ref)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_4
# %bb.8:
	addi.d	$a1, $fp, 16
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	st.d	$a1, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(ostop)
	ld.d	$a2, $a2, %got_pc_lo12(ostop)
	ld.d	$a2, $a2, 0
	bgeu	$a2, $a1, .LBB2_12
# %bb.9:
	st.d	$fp, $a0, 0
	addi.w	$a0, $zero, -16
	b	.LBB2_4
.LBB2_10:
	addi.w	$a0, $zero, -25
	b	.LBB2_4
.LBB2_11:
	move	$a0, $zero
	st.h	$zero, $fp, 0
	ori	$a1, $zero, 4
	st.h	$a1, $fp, 8
	b	.LBB2_4
.LBB2_12:
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.h	$a1, $fp, 16
	ori	$a1, $zero, 4
	st.h	$a1, $fp, 24
	b	.LBB2_4
.Lfunc_end2:
	.size	zgetenv, .Lfunc_end2-zgetenv
                                        # -- End function
	.globl	zsetdebug                       # -- Begin function zsetdebug
	.p2align	5
	.type	zsetdebug,@function
zsetdebug:                              # @zsetdebug
# %bb.0:
	move	$a1, $a0
	ld.hu	$a2, $a0, -8
	andi	$a3, $a2, 252
	ori	$a4, $zero, 52
	addi.w	$a0, $zero, -20
	bne	$a3, $a4, .LBB3_3
# %bb.1:
	andi	$a2, $a2, 512
	bnez	$a2, .LBB3_4
# %bb.2:
	addi.w	$a0, $zero, -7
.LBB3_3:
	ret
.LBB3_4:
	ld.hu	$a1, $a1, 8
	andi	$a1, $a1, 252
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB3_3
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a1, 0
	move	$a0, $zero
	addi.d	$a2, $a2, -32
	st.d	$a2, $a1, 0
	ret
.Lfunc_end3:
	.size	zsetdebug, .Lfunc_end3-zsetdebug
                                        # -- End function
	.globl	ztype1encrypt                   # -- Begin function ztype1encrypt
	.p2align	5
	.type	ztype1encrypt,@function
ztype1encrypt:                          # @ztype1encrypt
# %bb.0:
	ld.hu	$a1, $a0, -24
	andi	$a2, $a1, 252
	ori	$a3, $zero, 20
	addi.w	$a1, $zero, -20
	bne	$a2, $a3, .LBB4_7
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a0, -32
	st.h	$a2, $sp, 6
	srli.d	$a2, $a2, 16
	addi.w	$a3, $zero, -15
	bnez	$a2, .LBB4_5
# %bb.2:
	ld.hu	$a2, $a0, -8
	andi	$a4, $a2, 252
	ori	$a5, $zero, 52
	bne	$a4, $a5, .LBB4_6
# %bb.3:
	andi	$a4, $a2, 512
	addi.w	$a2, $zero, -7
	bnez	$a4, .LBB4_8
# %bb.4:
	move	$a1, $a2
	b	.LBB4_6
.LBB4_5:
	move	$a1, $a3
.LBB4_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB4_7:                                # %type1crypt.exit
	move	$a0, $a1
	ret
.LBB4_8:
	ld.hu	$a4, $a0, 8
	andi	$a5, $a4, 252
	ori	$a6, $zero, 52
	bne	$a5, $a6, .LBB4_6
# %bb.9:
	andi	$a4, $a4, 256
	move	$a1, $a2
	beqz	$a4, .LBB4_6
# %bb.10:
	ld.hu	$a4, $a0, 10
	ld.hu	$a2, $a0, -6
	move	$a1, $a3
	bltu	$a4, $a2, .LBB4_6
# %bb.11:
	ld.d	$a4, $a0, 0
	ld.d	$a1, $a0, -16
	addi.d	$fp, $a0, -16
	addi.d	$a3, $sp, 6
	move	$s0, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(gs_type1_encrypt)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 0
	ld.hu	$a0, $sp, 6
	ld.h	$a1, $s0, 10
	vst	$vr0, $fp, 0
	ld.h	$a2, $s0, -8
	st.d	$a0, $s0, -32
	st.h	$a1, $s0, -6
	lu12i.w	$a0, 8
	or	$a0, $a2, $a0
	st.h	$a0, $s0, -8
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a0, 0
	b	.LBB4_6
.Lfunc_end4:
	.size	ztype1encrypt, .Lfunc_end4-ztype1encrypt
                                        # -- End function
	.globl	type1crypt                      # -- Begin function type1crypt
	.p2align	5
	.type	type1crypt,@function
type1crypt:                             # @type1crypt
# %bb.0:
	ld.hu	$a2, $a0, -24
	andi	$a2, $a2, 252
	ori	$a4, $zero, 20
	addi.w	$a3, $zero, -20
	bne	$a2, $a4, .LBB5_7
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a0, -32
	st.h	$a2, $sp, 6
	srli.d	$a2, $a2, 16
	addi.w	$a4, $zero, -15
	bnez	$a2, .LBB5_5
# %bb.2:
	ld.hu	$a2, $a0, -8
	andi	$a5, $a2, 252
	ori	$a6, $zero, 52
	bne	$a5, $a6, .LBB5_6
# %bb.3:
	andi	$a5, $a2, 512
	addi.w	$a2, $zero, -7
	bnez	$a5, .LBB5_8
# %bb.4:
	move	$a3, $a2
	b	.LBB5_6
.LBB5_5:
	move	$a3, $a4
.LBB5_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB5_7:
	move	$a0, $a3
	ret
.LBB5_8:
	ld.hu	$a5, $a0, 8
	andi	$a6, $a5, 252
	ori	$a7, $zero, 52
	bne	$a6, $a7, .LBB5_6
# %bb.9:
	andi	$a5, $a5, 256
	move	$a3, $a2
	beqz	$a5, .LBB5_6
# %bb.10:
	ld.hu	$a5, $a0, 10
	ld.hu	$a2, $a0, -6
	move	$a3, $a4
	bltu	$a5, $a2, .LBB5_6
# %bb.11:
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a0, -16
	addi.d	$fp, $a0, -16
	addi.d	$a3, $sp, 6
	move	$s0, $a0
	move	$a0, $a4
	move	$a4, $a1
	move	$a1, $a5
	jirl	$ra, $a4, 0
	vld	$vr0, $s0, 0
	ld.hu	$a0, $sp, 6
	ld.h	$a1, $s0, 10
	vst	$vr0, $fp, 0
	ld.h	$a2, $s0, -8
	st.d	$a0, $s0, -32
	st.h	$a1, $s0, -6
	lu12i.w	$a0, 8
	or	$a0, $a2, $a0
	st.h	$a0, $s0, -8
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a1, $a0, 0
	move	$a3, $zero
	addi.d	$a1, $a1, -16
	st.d	$a1, $a0, 0
	b	.LBB5_6
.Lfunc_end5:
	.size	type1crypt, .Lfunc_end5-type1crypt
                                        # -- End function
	.globl	ztype1decrypt                   # -- Begin function ztype1decrypt
	.p2align	5
	.type	ztype1decrypt,@function
ztype1decrypt:                          # @ztype1decrypt
# %bb.0:
	ld.hu	$a1, $a0, -24
	andi	$a2, $a1, 252
	ori	$a3, $zero, 20
	addi.w	$a1, $zero, -20
	bne	$a2, $a3, .LBB6_7
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a0, -32
	st.h	$a2, $sp, 6
	srli.d	$a2, $a2, 16
	addi.w	$a3, $zero, -15
	bnez	$a2, .LBB6_5
# %bb.2:
	ld.hu	$a2, $a0, -8
	andi	$a4, $a2, 252
	ori	$a5, $zero, 52
	bne	$a4, $a5, .LBB6_6
# %bb.3:
	andi	$a4, $a2, 512
	addi.w	$a2, $zero, -7
	bnez	$a4, .LBB6_8
# %bb.4:
	move	$a1, $a2
	b	.LBB6_6
.LBB6_5:
	move	$a1, $a3
.LBB6_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB6_7:                                # %type1crypt.exit
	move	$a0, $a1
	ret
.LBB6_8:
	ld.hu	$a4, $a0, 8
	andi	$a5, $a4, 252
	ori	$a6, $zero, 52
	bne	$a5, $a6, .LBB6_6
# %bb.9:
	andi	$a4, $a4, 256
	move	$a1, $a2
	beqz	$a4, .LBB6_6
# %bb.10:
	ld.hu	$a4, $a0, 10
	ld.hu	$a2, $a0, -6
	move	$a1, $a3
	bltu	$a4, $a2, .LBB6_6
# %bb.11:
	ld.d	$a4, $a0, 0
	ld.d	$a1, $a0, -16
	addi.d	$fp, $a0, -16
	addi.d	$a3, $sp, 6
	move	$s0, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(gs_type1_decrypt)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 0
	ld.hu	$a0, $sp, 6
	ld.h	$a1, $s0, 10
	vst	$vr0, $fp, 0
	ld.h	$a2, $s0, -8
	st.d	$a0, $s0, -32
	st.h	$a1, $s0, -6
	lu12i.w	$a0, 8
	or	$a0, $a2, $a0
	st.h	$a0, $s0, -8
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a0, 0
	b	.LBB6_6
.Lfunc_end6:
	.size	ztype1decrypt, .Lfunc_end6-ztype1decrypt
                                        # -- End function
	.globl	zusertime                       # -- Begin function zusertime
	.p2align	5
	.type	zusertime,@function
zusertime:                              # @zusertime
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(gs_get_clock)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 16
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	st.d	$a1, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(ostop)
	ld.d	$a2, $a2, %got_pc_lo12(ostop)
	ld.d	$a2, $a2, 0
	bgeu	$a2, $a1, .LBB7_2
# %bb.1:
	st.d	$fp, $a0, 0
	addi.w	$a0, $zero, -16
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_2:
	move	$a0, $zero
	ld.d	$a1, $sp, 0
	ld.d	$a2, $sp, 8
	lu12i.w	$a3, 21093
	ori	$a3, $a3, 3072
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a2
	st.d	$a1, $fp, 16
	ori	$a1, $zero, 20
	st.h	$a1, $fp, 24
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	zusertime, .Lfunc_end7-zusertime
                                        # -- End function
	.globl	zmisc_op_init                   # -- Begin function zmisc_op_init
	.p2align	5
	.type	zmisc_op_init,@function
zmisc_op_init:                          # @zmisc_op_init
# %bb.0:
	pcalau12i	$a0, %pc_hi20(zmisc_op_init.my_defs)
	addi.d	$a0, $a0, %pc_lo12(zmisc_op_init.my_defs)
	pcaddu18i	$t8, %call36(z_op_init)
	jr	$t8
.Lfunc_end8:
	.size	zmisc_op_init, .Lfunc_end8-zmisc_op_init
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"getenv name"
	.size	.L.str, 12

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"getenv value"
	.size	.L.str.1, 13

	.type	zmisc_op_init.my_defs,@object   # @zmisc_op_init.my_defs
	.data
	.p2align	3, 0x0
zmisc_op_init.my_defs:
	.dword	.L.str.2
	.dword	zbind
	.dword	.L.str.3
	.dword	zcurrenttime
	.dword	.L.str.4
	.dword	zgetenv
	.dword	.L.str.5
	.dword	zsetdebug
	.dword	.L.str.6
	.dword	ztype1encrypt
	.dword	.L.str.7
	.dword	ztype1decrypt
	.dword	.L.str.8
	.dword	zusertime
	.space	16
	.size	zmisc_op_init.my_defs, 128

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"1bind"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"0currenttime"
	.size	.L.str.3, 13

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"1getenv"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"2setdebug"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"3type1encrypt"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"3type1decrypt"
	.size	.L.str.7, 14

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"0usertime"
	.size	.L.str.8, 10

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym zbind
	.addrsig_sym zcurrenttime
	.addrsig_sym zgetenv
	.addrsig_sym zsetdebug
	.addrsig_sym ztype1encrypt
	.addrsig_sym ztype1decrypt
	.addrsig_sym zusertime
	.addrsig_sym dstack
	.addrsig_sym zmisc_op_init.my_defs
