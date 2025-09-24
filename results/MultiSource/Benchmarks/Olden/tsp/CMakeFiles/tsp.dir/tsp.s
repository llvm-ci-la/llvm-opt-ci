	.file	"tsp.c"
	.text
	.globl	tsp                             # -- Begin function tsp
	.p2align	5
	.type	tsp,@function
tsp:                                    # @tsp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a3, $a0, 0
	bge	$a1, $a3, .LBB0_5
# %bb.1:
	ld.d	$a3, $a0, 24
	ld.d	$s0, $a0, 32
	bstrpick.d	$a4, $a2, 31, 31
	add.w	$a2, $a2, $a4
	srai.d	$s1, $a2, 1
	move	$s3, $a0
	move	$a0, $a3
	move	$s2, $a1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tsp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tsp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s3, 8
	fld.d	$fa4, $fp, 8
	move	$a4, $s3
	fld.d	$fa2, $s3, 16
	fld.d	$fa0, $fp, 16
	move	$a1, $a0
	fsub.d	$fa3, $fa1, $fa4
	ld.d	$a2, $fp, 40
	fsub.d	$fa5, $fa2, $fa0
	fmul.d	$fa5, $fa5, $fa5
	fmadd.d	$fa3, $fa3, $fa3, $fa5
	fsqrt.d	$fa3, $fa3
	beq	$a2, $fp, .LBB0_16
# %bb.2:                                # %.lr.ph.i18.preheader
	move	$a3, $fp
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph.i18
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 8
	fld.d	$fa4, $a2, 16
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa4
	fmadd.d	$fa0, $fa0, $fa0, $fa4
	fsqrt.d	$fa0, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa3
	movcf2gr	$a0, $fcc0
	maskeqz	$a5, $a2, $a0
	ld.d	$a2, $a2, 40
	fsel	$fa3, $fa3, $fa0, $fcc0
	masknez	$a0, $a3, $a0
	or	$a3, $a5, $a0
	bne	$a2, $fp, .LBB0_3
# %bb.4:                                # %._crit_edge.loopexit.i20
	ld.d	$a2, $a3, 40
	fld.d	$fa4, $a3, 8
	fld.d	$fa0, $a3, 16
	b	.LBB0_17
.LBB0_5:
	pcaddu18i	$ra, %call36(makelist)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 40
	st.d	$a0, $a0, 40
	st.d	$a0, $a0, 48
	beqz	$a1, .LBB0_35
# %bb.6:                                # %.lr.ph78.i
	fld.d	$fa0, $a0, 8
	fld.d	$fa1, $a0, 16
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=1
	st.d	$a1, $a5, 40
	st.d	$a3, $a1, 40
	st.d	$a5, $a1, 48
	st.d	$a1, $a3, 48
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=1
	move	$a1, $a4
	beqz	$a4, .LBB0_35
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	fld.d	$fa2, $a1, 8
	ld.d	$a2, $a0, 40
	fld.d	$fa3, $a1, 16
	beq	$a2, $a0, .LBB0_13
# %bb.10:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_9 Depth=1
	fsub.d	$fa4, $fa2, $fa0
	fsub.d	$fa5, $fa3, $fa1
	fmul.d	$fa5, $fa5, $fa5
	fmadd.d	$fa4, $fa4, $fa4, $fa5
	fsqrt.d	$fa4, $fa4
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph.i
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa5, $a2, 8
	fld.d	$fa6, $a2, 16
	fsub.d	$fa5, $fa5, $fa2
	fsub.d	$fa6, $fa6, $fa3
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa5, $fa5, $fa5, $fa6
	fsqrt.d	$fa5, $fa5
	fcmp.clt.d	$fcc0, $fa5, $fa4
	movcf2gr	$a4, $fcc0
	maskeqz	$a5, $a2, $a4
	ld.d	$a2, $a2, 40
	fsel	$fa4, $fa4, $fa5, $fcc0
	masknez	$a3, $a3, $a4
	or	$a3, $a5, $a3
	bne	$a2, $a0, .LBB0_11
# %bb.12:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB0_9 Depth=1
	ld.d	$a2, $a3, 40
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	move	$a3, $a0
.LBB0_14:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_9 Depth=1
	ld.d	$a5, $a3, 48
	ld.d	$a4, $a1, 40
	vld	$vr4, $a2, 8
	vld	$vr5, $a5, 8
	vldrepl.d	$vr6, $a3, 8
	vldrepl.d	$vr7, $a3, 16
	vpackev.d	$vr8, $vr4, $vr5
	vfsub.d	$vr6, $vr6, $vr8
	vpackod.d	$vr4, $vr4, $vr5
	vfsub.d	$vr5, $vr7, $vr4
	vfmul.d	$vr5, $vr5, $vr5
	vfmadd.d	$vr5, $vr6, $vr6, $vr5
	vfsqrt.d	$vr5, $vr5
	vreplvei.d	$vr2, $vr2, 0
	vfsub.d	$vr2, $vr2, $vr8
	vreplvei.d	$vr3, $vr3, 0
	vfsub.d	$vr3, $vr3, $vr4
	vfmul.d	$vr3, $vr3, $vr3
	vfmadd.d	$vr2, $vr2, $vr2, $vr3
	vfsqrt.d	$vr2, $vr2
	vfsub.d	$vr2, $vr2, $vr5
	vreplvei.d	$vr3, $vr2, 0
	vreplvei.d	$vr2, $vr2, 1
	fcmp.cule.d	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB0_7
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=1
	st.d	$a1, $a2, 48
	st.d	$a2, $a1, 40
	st.d	$a1, $a3, 40
	st.d	$a3, $a1, 48
	b	.LBB0_8
.LBB0_16:
	move	$a3, $fp
.LBB0_17:                               # %._crit_edge.i23
	move	$a0, $a4
	ld.d	$a4, $a3, 48
	vld	$vr5, $a2, 8
	vld	$vr6, $a4, 8
	vreplvei.d	$vr4, $vr4, 0
	vpackev.d	$vr7, $vr5, $vr6
	vfsub.d	$vr4, $vr4, $vr7
	vreplvei.d	$vr0, $vr0, 0
	vpackod.d	$vr6, $vr5, $vr6
	vfsub.d	$vr0, $vr0, $vr6
	vfmul.d	$vr0, $vr0, $vr0
	vfmadd.d	$vr0, $vr4, $vr4, $vr0
	vfsqrt.d	$vr0, $vr0
	vreplvei.d	$vr4, $vr1, 0
	vfsub.d	$vr7, $vr4, $vr7
	vreplvei.d	$vr5, $vr2, 0
	vfsub.d	$vr6, $vr5, $vr6
	vfmul.d	$vr6, $vr6, $vr6
	vfmadd.d	$vr6, $vr7, $vr7, $vr6
	vfsqrt.d	$vr6, $vr6
	vfsub.d	$vr0, $vr6, $vr0
	vreplvei.d	$vr7, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	fcmp.clt.d	$fcc0, $fa7, $fa0
	vreplvei.d	$vr0, $vr6, 1
	fsel	$fa0, $fa0, $fa3, $fcc0
	vreplvei.d	$vr6, $vr6, 0
	fsel	$fa3, $fa3, $fa6, $fcc0
	movcf2gr	$a5, $fcc0
	masknez	$a2, $a2, $a5
	maskeqz	$a6, $a3, $a5
	or	$a2, $a6, $a2
	masknez	$a3, $a3, $a5
	fld.d	$ft0, $a1, 8
	maskeqz	$a4, $a4, $a5
	fld.d	$fa7, $a1, 16
	or	$a3, $a4, $a3
	fsub.d	$fa6, $fa1, $ft0
	ld.d	$a4, $a1, 40
	fsub.d	$ft1, $fa2, $fa7
	fmul.d	$ft1, $ft1, $ft1
	fmadd.d	$fa6, $fa6, $fa6, $ft1
	fsqrt.d	$fa6, $fa6
	beq	$a4, $a1, .LBB0_21
# %bb.18:                               # %.lr.ph212.i.preheader
	move	$a5, $a1
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph212.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa7, $a4, 8
	fld.d	$ft0, $a4, 16
	fsub.d	$fa7, $fa7, $fa1
	fsub.d	$ft0, $ft0, $fa2
	fmul.d	$ft0, $ft0, $ft0
	fmadd.d	$fa7, $fa7, $fa7, $ft0
	fsqrt.d	$fa7, $fa7
	fcmp.clt.d	$fcc0, $fa7, $fa6
	movcf2gr	$a6, $fcc0
	maskeqz	$a7, $a4, $a6
	ld.d	$a4, $a4, 40
	fsel	$fa6, $fa6, $fa7, $fcc0
	masknez	$a5, $a5, $a6
	or	$a5, $a7, $a5
	bne	$a4, $a1, .LBB0_19
# %bb.20:                               # %._crit_edge213.loopexit.i
	ld.d	$a4, $a5, 40
	fld.d	$ft0, $a5, 8
	fld.d	$fa7, $a5, 16
	b	.LBB0_22
.LBB0_21:
	move	$a5, $a1
.LBB0_22:                               # %._crit_edge213.i
	ld.d	$a6, $a5, 48
	vld	$vr1, $a4, 8
	vld	$vr2, $a6, 8
	vreplvei.d	$vr8, $vr8, 0
	vpackev.d	$vr9, $vr1, $vr2
	vfsub.d	$vr8, $vr8, $vr9
	vreplvei.d	$vr7, $vr7, 0
	vpackod.d	$vr1, $vr1, $vr2
	vfsub.d	$vr2, $vr7, $vr1
	vfmul.d	$vr2, $vr2, $vr2
	vfmadd.d	$vr2, $vr8, $vr8, $vr2
	vfsqrt.d	$vr2, $vr2
	vfsub.d	$vr4, $vr4, $vr9
	vfsub.d	$vr1, $vr5, $vr1
	vfmul.d	$vr1, $vr1, $vr1
	vfmadd.d	$vr1, $vr4, $vr4, $vr1
	vfsqrt.d	$vr1, $vr1
	vfsub.d	$vr2, $vr1, $vr2
	vreplvei.d	$vr4, $vr2, 0
	vreplvei.d	$vr2, $vr2, 1
	fcmp.clt.d	$fcc0, $fa4, $fa2
	vreplvei.d	$vr2, $vr1, 1
	fsel	$fa2, $fa2, $fa6, $fcc0
	vreplvei.d	$vr1, $vr1, 0
	fsel	$fa1, $fa6, $fa1, $fcc0
	movcf2gr	$a7, $fcc0
	masknez	$a1, $a4, $a7
	maskeqz	$a4, $a5, $a7
	or	$a1, $a4, $a1
	masknez	$a4, $a5, $a7
	fld.d	$fa4, $a2, 8
	fld.d	$fa5, $a2, 16
	fld.d	$fa6, $a1, 8
	fld.d	$fa7, $a1, 16
	maskeqz	$a5, $a6, $a7
	or	$a4, $a5, $a4
	fsub.d	$ft0, $fa4, $fa6
	fsub.d	$ft1, $fa5, $fa7
	fld.d	$ft2, $a4, 8
	fld.d	$ft3, $a4, 16
	fmul.d	$ft1, $ft1, $ft1
	fmadd.d	$ft0, $ft0, $ft0, $ft1
	fsub.d	$fa4, $fa4, $ft2
	fsub.d	$fa5, $fa5, $ft3
	fmul.d	$fa5, $fa5, $fa5
	fmadd.d	$fa4, $fa4, $fa4, $fa5
	fld.d	$fa5, $a3, 8
	fld.d	$ft1, $a3, 16
	fsqrt.d	$ft0, $ft0
	fsqrt.d	$fa4, $fa4
	fsub.d	$fa6, $fa5, $fa6
	fsub.d	$fa7, $ft1, $fa7
	fmul.d	$fa7, $fa7, $fa7
	fmadd.d	$fa6, $fa6, $fa6, $fa7
	fsqrt.d	$fa6, $fa6
	fsub.d	$fa5, $fa5, $ft2
	fsub.d	$fa7, $ft1, $ft3
	fmul.d	$fa7, $fa7, $fa7
	fmadd.d	$fa5, $fa5, $fa5, $fa7
	fsqrt.d	$fa5, $fa5
	fadd.d	$fa7, $fa3, $fa1
	fadd.d	$fa7, $fa7, $ft0
	fadd.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa3, $fa7
	fsel	$fa3, $fa7, $fa3, $fcc0
	movcf2gr	$a5, $fcc0
	addi.d	$a5, $a5, 1
	fadd.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa1, $fa6
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa3, $fa1, $fcc0
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	ori	$a7, $zero, 3
	maskeqz	$a6, $a7, $a6
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa5
	fcmp.clt.d	$fcc0, $fa0, $fa1
	or	$a5, $a6, $a5
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	ori	$a7, $zero, 4
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	addi.d	$a5, $a5, -1
	slli.d	$a5, $a5, 2
	pcalau12i	$a6, %pc_hi20(.LJTI0_0)
	addi.d	$a6, $a6, %pc_lo12(.LJTI0_0)
	ldx.w	$a5, $a6, $a5
	add.d	$a5, $a6, $a5
	jr	$a5
.LBB0_23:
	ld.d	$a5, $a1, 48
	st.d	$zero, $a5, 40
	ld.d	$a6, $a1, 40
	st.d	$zero, $a1, 48
	beqz	$a6, .LBB0_26
# %bb.24:                               # %.lr.ph.i.i.preheader
	move	$a7, $a1
	.p2align	4, , 16
.LBB0_25:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$t0, $a6
	ld.d	$a6, $a6, 40
	st.d	$a7, $t0, 40
	st.d	$t0, $a7, 48
	move	$a7, $t0
	bnez	$a6, .LBB0_25
.LBB0_26:                               # %reverse.exit.i
	st.d	$a1, $a5, 48
	st.d	$a0, $a3, 40
	st.d	$a3, $a0, 48
	st.d	$a4, $a0, 40
	st.d	$a0, $a4, 48
	st.d	$a2, $a1, 40
	b	.LBB0_34
.LBB0_27:
	st.d	$a0, $a4, 40
	st.d	$a4, $a0, 48
	st.d	$a2, $a0, 40
	st.d	$a0, $a2, 48
	st.d	$a1, $a3, 40
	move	$a2, $a1
	move	$a1, $a3
	b	.LBB0_34
.LBB0_28:
	ld.d	$a5, $a2, 48
	st.d	$zero, $a5, 40
	ld.d	$a6, $a2, 40
	st.d	$zero, $a2, 48
	beqz	$a6, .LBB0_31
# %bb.29:                               # %.lr.ph.i192.i.preheader
	move	$a7, $a2
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph.i192.i
                                        # =>This Inner Loop Header: Depth=1
	move	$t0, $a6
	ld.d	$a6, $a6, 40
	st.d	$a7, $t0, 40
	st.d	$t0, $a7, 48
	move	$a7, $t0
	bnez	$a6, .LBB0_30
.LBB0_31:                               # %reverse.exit197.i
	st.d	$a2, $a5, 48
	st.d	$a0, $a2, 40
	st.d	$a2, $a0, 48
	st.d	$a1, $a0, 40
	st.d	$a0, $a1, 48
	st.d	$a3, $a4, 40
	move	$a2, $a3
	b	.LBB0_33
.LBB0_32:
	st.d	$a0, $a3, 40
	st.d	$a3, $a0, 48
	st.d	$a1, $a0, 40
	st.d	$a0, $a1, 48
	st.d	$a2, $a4, 40
.LBB0_33:                               # %merge.exit
	move	$a1, $a4
.LBB0_34:                               # %merge.exit
	st.d	$a1, $a2, 48
.LBB0_35:                               # %conquer.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	tsp, .Lfunc_end0-tsp
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function makelist
	.type	makelist,@function
makelist:                               # @makelist
# %bb.0:
	beqz	$a0, .LBB1_6
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(makelist)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 32
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(makelist)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	beqz	$a1, .LBB1_3
# %bb.2:
	ld.d	$a0, $fp, 32
	st.d	$fp, $a0, 40
	move	$a0, $a1
.LBB1_3:
	beqz	$s0, .LBB1_5
# %bb.4:
	sltui	$a0, $a1, 1
	ld.d	$a2, $fp, 24
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $a2, 40
	move	$a0, $s0
.LBB1_5:
	st.d	$zero, $fp, 40
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_6:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	makelist, .Lfunc_end1-makelist
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
