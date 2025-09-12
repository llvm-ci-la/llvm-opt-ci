	.file	"gsline.c"
	.text
	.globl	gs_setlinewidth                 # -- Begin function gs_setlinewidth
	.p2align	5
	.type	gs_setlinewidth,@function
gs_setlinewidth:                        # @gs_setlinewidth
# %bb.0:
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_2
# %bb.1:
	addi.w	$a0, $zero, -15
	ret
.LBB0_2:
	ld.d	$a0, $a0, 280
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	gs_setlinewidth, .Lfunc_end0-gs_setlinewidth
                                        # -- End function
	.globl	gs_currentlinewidth             # -- Begin function gs_currentlinewidth
	.p2align	5
	.type	gs_currentlinewidth,@function
gs_currentlinewidth:                    # @gs_currentlinewidth
# %bb.0:
	ld.d	$a0, $a0, 280
	fld.s	$fa0, $a0, 0
	fadd.s	$fa0, $fa0, $fa0
	ret
.Lfunc_end1:
	.size	gs_currentlinewidth, .Lfunc_end1-gs_currentlinewidth
                                        # -- End function
	.globl	gs_setlinecap                   # -- Begin function gs_setlinecap
	.p2align	5
	.type	gs_setlinecap,@function
gs_setlinecap:                          # @gs_setlinecap
# %bb.0:
	ld.d	$a0, $a0, 280
	st.w	$a1, $a0, 4
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	gs_setlinecap, .Lfunc_end2-gs_setlinecap
                                        # -- End function
	.globl	gs_currentlinecap               # -- Begin function gs_currentlinecap
	.p2align	5
	.type	gs_currentlinecap,@function
gs_currentlinecap:                      # @gs_currentlinecap
# %bb.0:
	ld.d	$a0, $a0, 280
	ld.w	$a0, $a0, 4
	ret
.Lfunc_end3:
	.size	gs_currentlinecap, .Lfunc_end3-gs_currentlinecap
                                        # -- End function
	.globl	gs_setlinejoin                  # -- Begin function gs_setlinejoin
	.p2align	5
	.type	gs_setlinejoin,@function
gs_setlinejoin:                         # @gs_setlinejoin
# %bb.0:
	ld.d	$a0, $a0, 280
	st.w	$a1, $a0, 8
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	gs_setlinejoin, .Lfunc_end4-gs_setlinejoin
                                        # -- End function
	.globl	gs_currentlinejoin              # -- Begin function gs_currentlinejoin
	.p2align	5
	.type	gs_currentlinejoin,@function
gs_currentlinejoin:                     # @gs_currentlinejoin
# %bb.0:
	ld.d	$a0, $a0, 280
	ld.w	$a0, $a0, 8
	ret
.Lfunc_end5:
	.size	gs_currentlinejoin, .Lfunc_end5-gs_currentlinejoin
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gs_setmiterlimit
.LCPI6_0:
	.word	0x49742400                      # float 1.0E+6
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI6_1:
	.dword	0x400000346dc5d639              # double 2.0001000000000002
.LCPI6_2:
	.dword	0x3fffff972474538f              # double 1.9999
	.text
	.globl	gs_setmiterlimit
	.p2align	5
	.type	gs_setmiterlimit,@function
gs_setmiterlimit:                       # @gs_setmiterlimit
# %bb.0:
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB6_2
# %bb.1:
	addi.w	$a0, $zero, -15
	ret
.LBB6_2:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI6_1)
	ld.d	$fp, $a0, 280
	fcvt.s.d	$fa2, $fa0
	fmul.d	$fs0, $fa0, $fa0
	fcmp.cule.d	$fcc0, $fa1, $fs0
	fst.s	$fa2, $fp, 12
	bcnez	$fcc0, .LBB6_5
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.LCPI6_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_2)
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB6_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI6_0)
	b	.LBB6_7
.LBB6_5:
	vldi	$vr0, -784
	fadd.d	$fa1, $fs0, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_8
.LBB6_6:                                # %.split
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr1, -896
	fadd.d	$fa1, $fs0, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
.LBB6_7:
	move	$a0, $zero
	fst.s	$fa0, $fp, 16
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_8:                                # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB6_6
.Lfunc_end6:
	.size	gs_setmiterlimit, .Lfunc_end6-gs_setmiterlimit
                                        # -- End function
	.globl	gs_currentmiterlimit            # -- Begin function gs_currentmiterlimit
	.p2align	5
	.type	gs_currentmiterlimit,@function
gs_currentmiterlimit:                   # @gs_currentmiterlimit
# %bb.0:
	ld.d	$a0, $a0, 280
	fld.s	$fa0, $a0, 12
	ret
.Lfunc_end7:
	.size	gs_currentmiterlimit, .Lfunc_end7-gs_currentmiterlimit
                                        # -- End function
	.globl	gs_setdash                      # -- Begin function gs_setdash
	.p2align	5
	.type	gs_setdash,@function
gs_setdash:                             # @gs_setdash
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
	ld.d	$s1, $a0, 280
	movgr2fr.w	$fa1, $zero
	addi.d	$a3, $zero, -1
	addi.w	$a0, $zero, -15
	move	$a4, $a1
	fmov.s	$fa2, $fa1
	.p2align	4, , 16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $a3, 1
	beq	$a2, $a3, .LBB8_3
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	fld.s	$fa3, $a4, 0
	addi.d	$a4, $a4, 4
	fcmp.cule.s	$fcc0, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa3
	bcnez	$fcc0, .LBB8_1
	b	.LBB8_14
.LBB8_3:
	beqz	$a2, .LBB8_7
# %bb.4:
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB8_14
# %bb.5:
	fcvt.d.s	$fa2, $fa2
	fdiv.d	$fa3, $fa0, $fa2
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	fld.s	$fa4, $a1, 0
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa2, $fa0
	fcvt.s.d	$fa2, $fa2
	fsub.s	$fs0, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fs0, $fa1
	bceqz	$fcc0, .LBB8_8
# %bb.6:
	move	$s0, $a1
	fmov.d	$fs1, $fa0
	move	$s2, $zero
	ori	$s3, $zero, 1
	b	.LBB8_11
.LBB8_7:
	move	$s2, $zero
	move	$fp, $zero
	movgr2fr.w	$fs0, $zero
	ori	$s3, $zero, 1
	b	.LBB8_13
.LBB8_8:                                # %.lr.ph.preheader
	move	$s2, $zero
	addi.d	$a3, $a1, 4
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB8_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a3, 0
	xori	$a0, $a0, 1
	fsub.s	$fs0, $fs0, $fa2
	addi.d	$s2, $s2, 1
	fcmp.cle.s	$fcc0, $fa1, $fs0
	addi.d	$a3, $a3, 4
	bcnez	$fcc0, .LBB8_9
# %bb.10:                               # %._crit_edge.loopexit
	move	$s0, $a1
	fmov.d	$fs1, $fa0
	andi	$s3, $a0, 255
.LBB8_11:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 4
	move	$s4, $a2
	move	$a0, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(gs_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_15
# %bb.12:
	move	$fp, $a0
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a2, $s4
	fmov.d	$fa0, $fs1
.LBB8_13:
	move	$a0, $zero
	st.d	$fp, $s1, 24
	st.w	$a2, $s1, 32
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s1, 36
	st.w	$s3, $s1, 40
	st.w	$s2, $s1, 44
	fneg.s	$fa0, $fs0
	fst.s	$fa0, $s1, 48
.LBB8_14:                               # %.loopexit
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
.LBB8_15:
	addi.w	$a0, $zero, -25
	b	.LBB8_14
.Lfunc_end8:
	.size	gs_setdash, .Lfunc_end8-gs_setdash
                                        # -- End function
	.globl	gs_currentdash_length           # -- Begin function gs_currentdash_length
	.p2align	5
	.type	gs_currentdash_length,@function
gs_currentdash_length:                  # @gs_currentdash_length
# %bb.0:
	ld.d	$a0, $a0, 280
	ld.w	$a0, $a0, 32
	ret
.Lfunc_end9:
	.size	gs_currentdash_length, .Lfunc_end9-gs_currentdash_length
                                        # -- End function
	.globl	gs_currentdash_pattern          # -- Begin function gs_currentdash_pattern
	.p2align	5
	.type	gs_currentdash_pattern,@function
gs_currentdash_pattern:                 # @gs_currentdash_pattern
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 280
	ld.wu	$a2, $a0, 32
	ld.d	$a3, $a0, 24
	move	$a0, $a1
	slli.d	$a2, $a2, 2
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	gs_currentdash_pattern, .Lfunc_end10-gs_currentdash_pattern
                                        # -- End function
	.globl	gs_currentdash_offset           # -- Begin function gs_currentdash_offset
	.p2align	5
	.type	gs_currentdash_offset,@function
gs_currentdash_offset:                  # @gs_currentdash_offset
# %bb.0:
	ld.d	$a0, $a0, 280
	fld.s	$fa0, $a0, 36
	ret
.Lfunc_end11:
	.size	gs_currentdash_offset, .Lfunc_end11-gs_currentdash_offset
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dash pattern"
	.size	.L.str, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
