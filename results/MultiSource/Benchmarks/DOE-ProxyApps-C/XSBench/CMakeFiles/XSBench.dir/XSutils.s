	.file	"XSutils.c"
	.text
	.globl	gpmatrix                        # -- Begin function gpmatrix
	.p2align	5
	.type	gpmatrix,@function
gpmatrix:                               # @gpmatrix
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	mul.d	$s2, $a1, $a0
	slli.d	$a0, $s2, 5
	alsl.d	$a0, $s2, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_5
# %bb.1:                                # %.lr.ph.preheader
	move	$a2, $zero
	move	$a1, $zero
	move	$a3, $zero
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a2, 1
	xor	$a4, $a2, $fp
	sltui	$a4, $a4, 1
	masknez	$a2, $a2, $a4
	addi.d	$a1, $a1, 1
	addi.d	$s0, $s0, 48
	beq	$s2, $a1, .LBB0_5
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bnez	$a2, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a4, $a3, 3
	addi.w	$a3, $a3, 1
	stx.d	$s0, $a0, $a4
	b	.LBB0_2
.LBB0_5:                                # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	gpmatrix, .Lfunc_end0-gpmatrix
                                        # -- End function
	.globl	gpmatrix_free                   # -- Begin function gpmatrix_free
	.p2align	5
	.type	gpmatrix_free,@function
gpmatrix_free:                          # @gpmatrix_free
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	gpmatrix_free, .Lfunc_end1-gpmatrix_free
                                        # -- End function
	.globl	NGP_compare                     # -- Begin function NGP_compare
	.p2align	5
	.type	NGP_compare,@function
NGP_compare:                            # @NGP_compare
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fcmp.clt.d	$fcc1, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	sub.d	$a0, $zero, $a0
	movcf2gr	$a1, $fcc1
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end2:
	.size	NGP_compare, .Lfunc_end2-NGP_compare
                                        # -- End function
	.globl	binary_search                   # -- Begin function binary_search
	.p2align	5
	.type	binary_search,@function
binary_search:                          # @binary_search
# %bb.0:
	fld.d	$fa1, $a0, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB3_2:
	move	$a2, $a0
	addi.w	$a0, $a1, -1
	slli.d	$a3, $a0, 5
	alsl.d	$a3, $a0, $a3, 4
	fldx.d	$fa1, $a2, $a3
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_4
# %bb.3:
	addi.w	$a0, $a1, -2
	ret
.LBB3_4:                                # %.preheader
	blez	$a1, .LBB3_10
# %bb.5:                                # %.lr.ph.preheader
	move	$a1, $zero
	vldi	$vr1, -928
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=1
	addi.w	$a1, $a3, 1
	blt	$a0, $a1, .LBB3_10
.LBB3_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	sub.d	$a3, $a0, $a1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa1
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	fadd.d	$fa2, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a3, $fa2
	slli.d	$a4, $a3, 5
	alsl.d	$a4, $a3, $a4, 4
	fldx.d	$fa2, $a2, $a4
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB3_6
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB3_11
# %bb.9:                                #   in Loop: Header=BB3_7 Depth=1
	addi.w	$a0, $a3, -1
	bge	$a0, $a1, .LBB3_7
.LBB3_10:                               # %.loopexit
	ret
.LBB3_11:
	move	$a0, $a3
	ret
.Lfunc_end3:
	.size	binary_search, .Lfunc_end3-binary_search
                                        # -- End function
	.globl	rn                              # -- Begin function rn
	.p2align	5
	.type	rn,@function
rn:                                     # @rn
# %bb.0:
	ld.d	$a1, $a0, 0
	lu12i.w	$a2, 4
	ori	$a2, $a2, 423
	mul.d	$a1, $a1, $a2
	ori	$a2, $zero, 5
	lu32i.d	$a2, 2
	mulh.du	$a2, $a1, $a2
	sub.d	$a3, $a1, $a2
	srli.d	$a3, $a3, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 30
	slli.d	$a3, $a2, 31
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	lu12i.w	$a2, -1024
	lu52i.d	$a2, $a2, 1053
	movgr2fr.d	$fa1, $a2
	fdiv.d	$fa0, $fa0, $fa1
	st.d	$a1, $a0, 0
	ret
.Lfunc_end4:
	.size	rn, .Lfunc_end4-rn
                                        # -- End function
	.globl	rn_v                            # -- Begin function rn_v
	.p2align	5
	.type	rn_v,@function
rn_v:                                   # @rn_v
# %bb.0:
	pcalau12i	$a0, %pc_hi20(rn_v.seed)
	ld.d	$a1, $a0, %pc_lo12(rn_v.seed)
	lu12i.w	$a2, 4
	ori	$a2, $a2, 423
	mul.d	$a1, $a1, $a2
	ori	$a2, $zero, 5
	lu32i.d	$a2, 2
	mulh.du	$a2, $a1, $a2
	sub.d	$a3, $a1, $a2
	srli.d	$a3, $a3, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 30
	slli.d	$a3, $a2, 31
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	lu12i.w	$a2, -1024
	lu52i.d	$a2, $a2, 1053
	movgr2fr.d	$fa1, $a2
	fdiv.d	$fa0, $fa0, $fa1
	st.d	$a1, $a0, %pc_lo12(rn_v.seed)
	ret
.Lfunc_end5:
	.size	rn_v, .Lfunc_end5-rn_v
                                        # -- End function
	.globl	hash                            # -- Begin function hash
	.p2align	5
	.type	hash,@function
hash:                                   # @hash
# %bb.0:
	ld.bu	$a2, $a0, 0
	lu12i.w	$a4, 1
	beqz	$a2, .LBB6_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a3, $a0, 1
	ori	$a0, $a4, 1285
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	andi	$a4, $a2, 255
	ld.bu	$a2, $a3, 0
	slli.d	$a5, $a0, 5
	add.d	$a0, $a5, $a0
	add.w	$a0, $a0, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB6_2
# %bb.3:                                # %._crit_edge
	mod.wu	$a0, $a0, $a1
	ret
.LBB6_4:
	ori	$a0, $a4, 1285
	mod.wu	$a0, $a0, $a1
	ret
.Lfunc_end6:
	.size	hash, .Lfunc_end6-hash
                                        # -- End function
	.globl	estimate_mem_usage              # -- Begin function estimate_mem_usage
	.p2align	5
	.type	estimate_mem_usage,@function
estimate_mem_usage:                     # @estimate_mem_usage
# %bb.0:
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 16
	slli.d	$a2, $a1, 2
	addi.d	$a2, $a2, 64
	mul.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 20
	ret
.Lfunc_end7:
	.size	estimate_mem_usage, .Lfunc_end7-estimate_mem_usage
                                        # -- End function
	.globl	binary_dump                     # -- Begin function binary_dump
	.p2align	5
	.type	binary_dump,@function
binary_dump:                            # @binary_dump
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s3, $a2
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s0, .LBB8_3
# %bb.1:
	move	$s4, $s0
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 48
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB8_2
.LBB8_3:                                # %.preheader
	mul.d	$s2, $s2, $s0
	blez	$s2, .LBB8_5
	.p2align	4, , 16
.LBB8_4:                                # %.lr.ph22
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ori	$a1, $zero, 4
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 16
	bnez	$s2, .LBB8_4
.LBB8_5:                                # %._crit_edge
	move	$a0, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.Lfunc_end8:
	.size	binary_dump, .Lfunc_end8-binary_dump
                                        # -- End function
	.globl	binary_read                     # -- Begin function binary_read
	.p2align	5
	.type	binary_read,@function
binary_read:                            # @binary_read
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s3, $a2
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s0, .LBB9_3
# %bb.1:
	move	$s4, $s0
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 48
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB9_2
.LBB9_3:                                # %.preheader
	mul.d	$s2, $s2, $s0
	blez	$s2, .LBB9_5
	.p2align	4, , 16
.LBB9_4:                                # %.lr.ph22
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ori	$a1, $zero, 4
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 16
	bnez	$s2, .LBB9_4
.LBB9_5:                                # %._crit_edge
	move	$a0, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.Lfunc_end9:
	.size	binary_read, .Lfunc_end9-binary_read
                                        # -- End function
	.type	rn_v.seed,@object               # @rn_v.seed
	.data
	.p2align	3, 0x0
rn_v.seed:
	.dword	1337                            # 0x539
	.size	rn_v.seed, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"XS_data.dat"
	.size	.L.str, 12

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"wb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"rb"
	.size	.L.str.2, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
