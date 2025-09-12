	.file	"partialsums.c"
	.text
	.globl	make_vec                        # -- Begin function make_vec
	.p2align	5
	.type	make_vec,@function
make_vec:                               # @make_vec
# %bb.0:
                                        # kill: def $f1_64 killed $f1_64 def $vr1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vextrins.d	$vr0, $vr1, 16
	vpickve2gr.d	$a0, $vr0, 0
	vpickve2gr.d	$a1, $vr0, 1
	ret
.Lfunc_end0:
	.size	make_vec, .Lfunc_end0-make_vec
                                        # -- End function
	.globl	sum_vec                         # -- Begin function sum_vec
	.p2align	5
	.type	sum_vec,@function
sum_vec:                                # @sum_vec
# %bb.0:
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr0, $a1, 1
	vreplvei.d	$vr1, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	fadd.d	$fa0, $fa1, $fa0
	ret
.Lfunc_end1:
	.size	sum_vec, .Lfunc_end1-sum_vec
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x4000000000000000              # double 2
.LCPI2_1:
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	move	$fp, $zero
	movgr2fr.d	$fs5, $zero
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fs0, $a0
	lu12i.w	$a0, 610
	ori	$s0, $a0, 1440
	fmov.d	$fs4, $fs5
	fmov.d	$fs3, $fs5
	fmov.d	$fs2, $fs5
	vldi	$vr0, -912
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	fsqrt.d	$fa1, $fa1
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB2_3
.LBB2_2:                                # %.split
                                        #   in Loop: Header=BB2_1 Depth=1
	fadd.d	$fs5, $fs5, $fa0
	frecip.d	$fa0, $fa1
	fadd.d	$fs4, $fs4, $fa0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	fmul.d	$fa1, $fa0, $fa0
	fmul.d	$fs6, $fa1, $fa0
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs6, $fs1
	fmul.d	$fa1, $fs1, $fa1
	frecip.d	$fa1, $fa1
	fadd.d	$fs3, $fs3, $fa1
	fmul.d	$fa1, $fs6, $fa0
	fmul.d	$fa0, $fa0, $fa1
	frecip.d	$fa0, $fa0
	fadd.d	$fs2, $fs2, $fa0
	addi.w	$fp, $fp, 1
	vldi	$vr0, -912
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	bne	$fp, $s0, .LBB2_1
	b	.LBB2_4
.LBB2_3:                                # %call.sqrt
                                        #   in Loop: Header=BB2_1 Depth=1
	fmov.d	$fs1, $fa0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fmov.d	$fa0, $fs1
	b	.LBB2_2
.LBB2_4:                                # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vrepli.b	$vr10, 0
	lu52i.d	$a0, $zero, 1023
	vreplgr2vr.d	$vr1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_1)
	lu52i.d	$a0, $zero, -1025
	vreplgr2vr.d	$vr3, $a0
	lu52i.d	$a0, $zero, 1024
	vreplgr2vr.d	$vr4, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 201424
	lu52i.d	$a0, $a0, 1044
	movgr2fr.d	$fa5, $a0
	vori.b	$vr11, $vr10, 0
	vori.b	$vr12, $vr10, 0
	vori.b	$vr9, $vr10, 0
	vori.b	$vr8, $vr10, 0
	.p2align	4, , 16
.LBB2_5:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	vfadd.d	$vr6, $vr0, $vr1
	vfmul.d	$vr6, $vr0, $vr6
	vfrecip.d	$vr6, $vr6
	vfadd.d	$vr12, $vr12, $vr6
	vfrecip.d	$vr6, $vr0
	vfadd.d	$vr10, $vr6, $vr10
	vfmul.d	$vr6, $vr0, $vr0
	vfrecip.d	$vr6, $vr6
	vfadd.d	$vr11, $vr6, $vr11
	vfdiv.d	$vr6, $vr2, $vr0
	vfadd.d	$vr9, $vr6, $vr9
	vfmadd.d	$vr6, $vr0, $vr4, $vr3
	vfadd.d	$vr0, $vr0, $vr4
	vreplvei.d	$vr7, $vr0, 0
	fcmp.cle.d	$fcc0, $fa7, $fa5
	vfdiv.d	$vr6, $vr2, $vr6
	vfadd.d	$vr8, $vr8, $vr6
	bcnez	$fcc0, .LBB2_5
# %bb.6:
	movfr2gr.d	$a1, $fs5
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$fp, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	vst	$vr8, $sp, 80                   # 16-byte Folded Spill
	vst	$vr9, $sp, 64                   # 16-byte Folded Spill
	vst	$vr10, $sp, 32                  # 16-byte Folded Spill
	vst	$vr11, $sp, 48                  # 16-byte Folded Spill
	vst	$vr12, $sp, 16                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a1, $fs4
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr1, 0
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a1, $fs3
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a1, $fs2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr1, 0
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr1, 0
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr1, 0
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr1, 0
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.9f\t%s\n"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"(2/3)^k"
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"k^-0.5"
	.size	.L.str.2, 7

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"1/k(k+1)"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Flint Hills"
	.size	.L.str.4, 12

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Cookson Hills"
	.size	.L.str.5, 14

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Harmonic"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Riemann Zeta"
	.size	.L.str.7, 13

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Alternating Harmonic"
	.size	.L.str.8, 21

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Gregory"
	.size	.L.str.9, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
