	.file	"fasta.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %accumulate_probabilities.exit.preheader
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(main.iub)
	addi.d	$s2, $a0, %pc_lo12(main.iub)
	fld.s	$fa1, $s2, 0
	movgr2fr.w	$fa0, $zero
	fld.s	$fa2, $s2, 8
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s2, 0
	fld.s	$fa3, $s2, 16
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $s2, 8
	fld.s	$fa2, $s2, 24
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s2, 16
	fld.s	$fa3, $s2, 32
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $s2, 24
	fld.s	$fa2, $s2, 40
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s2, 32
	fld.s	$fa3, $s2, 48
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $s2, 40
	fld.s	$fa2, $s2, 56
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s2, 48
	fld.s	$fa3, $s2, 64
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $s2, 56
	fld.s	$fa2, $s2, 72
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s2, 64
	fld.s	$fa3, $s2, 80
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $s2, 72
	fld.s	$fa2, $s2, 88
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s2, 80
	fld.s	$fa3, $s2, 96
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $s2, 88
	fld.s	$fa2, $s2, 104
	fadd.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s2, 112
	fst.s	$fa1, $s2, 96
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $s2, 104
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s2, 112
	pcalau12i	$a0, %pc_hi20(main.homosapiens)
	addi.d	$s1, $a0, %pc_lo12(main.homosapiens)
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s1, 8
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s1, 0
	fld.s	$fa1, $s1, 16
	fadd.s	$fa0, $fa0, $fa2
	fld.s	$fa2, $s1, 24
	fst.s	$fa0, $s1, 8
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s1, 16
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $s1, 24
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s7, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 347
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 287
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 8
	move	$s3, $zero
	ld.d	$a0, $s0, 0
	vld	$vr1, $s0, 24
	vst	$vr0, $fp, 295
	vld	$vr0, $s0, 40
	ld.w	$a1, $s0, 56
	vst	$vr1, $fp, 311
	st.d	$a0, $fp, 287
	vst	$vr0, $fp, 327
	st.w	$a1, $fp, 343
	lu12i.w	$a0, 2441
	ori	$s4, $a0, 1664
	ori	$s5, $zero, 60
	ori	$s6, $zero, 286
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	sltui	$a0, $s4, 60
	masknez	$a1, $s5, $a0
	ld.d	$a3, $s7, 0
	maskeqz	$a0, $s4, $a0
	or	$s0, $a0, $a1
	add.d	$a0, $fp, $s3
	ori	$a1, $zero, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $s3
	sltu	$a1, $s6, $a0
	addi.d	$a2, $a0, -287
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	sub.d	$s4, $s4, $s0
	or	$s3, $a1, $a0
	bnez	$s4, .LBB0_1
# %bb.2:                                # %repeat_fasta.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3662
	ori	$s6, $a0, 448
	pcalau12i	$fp, %pc_hi20(myrandom.last)
	ori	$s8, $zero, 3877
	lu12i.w	$a0, 7
	ori	$s0, $a0, 901
	lu12i.w	$a0, -10549
	ori	$a0, $a0, 3729
	lu32i.d	$a0, -86783
	lu52i.d	$s4, $a0, 958
	lu12i.w	$a0, 34
	ori	$s5, $a0, 704
	lu12i.w	$a0, 295051
	movgr2fr.w	$fs0, $a0
	addi.d	$s7, $sp, 19
	.p2align	4, , 16
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	move	$a1, $zero
	sltui	$a2, $s6, 60
	ld.d	$a0, $fp, %pc_lo12(myrandom.last)
	ori	$a3, $zero, 60
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s6, $a2
	or	$s3, $a2, $a3
	.p2align	4, , 16
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a0, $s0
	mulh.du	$a2, $a0, $s4
	srli.d	$a2, $a2, 15
	mul.d	$a2, $a2, $s5
	sub.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=2
	ld.b	$a2, $a2, -4
	addi.d	$a3, $a1, 1
	stx.b	$a2, $a1, $s7
	move	$a1, $a3
	bne	$a3, $s3, .LBB0_4
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	st.d	$a0, $fp, %pc_lo12(myrandom.last)
	ori	$a0, $zero, 10
	stx.b	$a0, $s3, $s7
	addi.d	$a2, $s3, 1
	addi.d	$a0, $sp, 19
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	sub.d	$s6, $s6, $s3
	bnez	$s6, .LBB0_3
# %bb.8:                                # %random_fasta.exit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 6103
	ori	$s2, $a0, 2112
	ori	$s7, $zero, 3877
	addi.d	$s8, $sp, 19
	ori	$s6, $zero, 10
	.p2align	4, , 16
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	move	$a1, $zero
	sltui	$a2, $s2, 60
	ld.d	$a0, $fp, %pc_lo12(myrandom.last)
	ori	$a3, $zero, 60
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s2, $a2
	or	$s3, $a2, $a3
	.p2align	4, , 16
.LBB0_10:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	mul.d	$a0, $a0, $s7
	add.d	$a0, $a0, $s0
	mulh.du	$a2, $a0, $s4
	srli.d	$a2, $a2, 15
	mul.d	$a2, $a2, $s5
	sub.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	move	$a2, $s1
	.p2align	4, , 16
.LBB0_11:                               #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.b	$a2, $a2, -4
	addi.d	$a3, $a1, 1
	stx.b	$a2, $a1, $s8
	move	$a1, $a3
	bne	$a3, $s3, .LBB0_10
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	st.d	$a0, $fp, %pc_lo12(myrandom.last)
	stx.b	$s6, $s3, $s8
	addi.d	$a2, $s3, 1
	addi.d	$a0, $sp, 19
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	sub.d	$s2, $s2, $s3
	bnez	$s2, .LBB0_9
# %bb.14:                               # %random_fasta.exit16
	move	$a0, $zero
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	main.iub,@object                # @main.iub
	.data
	.p2align	2, 0x0
main.iub:
	.word	0x3e8a3d71                      # float 0.270000011
	.byte	97                              # 0x61
	.space	3
	.word	0x3df5c28f                      # float 0.119999997
	.byte	99                              # 0x63
	.space	3
	.word	0x3df5c28f                      # float 0.119999997
	.byte	103                             # 0x67
	.space	3
	.word	0x3e8a3d71                      # float 0.270000011
	.byte	116                             # 0x74
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	66                              # 0x42
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	68                              # 0x44
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	72                              # 0x48
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	75                              # 0x4b
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	77                              # 0x4d
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	78                              # 0x4e
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	82                              # 0x52
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	83                              # 0x53
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	86                              # 0x56
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	87                              # 0x57
	.space	3
	.word	0x3ca3d70a                      # float 0.0199999996
	.byte	89                              # 0x59
	.space	3
	.size	main.iub, 120

	.type	main.homosapiens,@object        # @main.homosapiens
	.p2align	2, 0x0
main.homosapiens:
	.word	0x3e9b1ce9                      # float 0.302954942
	.byte	97                              # 0x61
	.space	3
	.word	0x3e4abd72                      # float 0.197988302
	.byte	99                              # 0x63
	.space	3
	.word	0x3e4a49d7                      # float 0.197547302
	.byte	103                             # 0x67
	.space	3
	.word	0x3e9a5f72                      # float 0.30150944
	.byte	116                             # 0x74
	.space	3
	.size	main.homosapiens, 32

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA"
	.size	.L.str, 288

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	">ONE Homo sapiens alu\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	">TWO IUB ambiguity codes\n"
	.size	.L.str.2, 26

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	">THREE Homo sapiens frequency\n"
	.size	.L.str.3, 31

	.type	myrandom.last,@object           # @myrandom.last
	.data
	.p2align	3, 0x0
myrandom.last:
	.dword	42                              # 0x2a
	.size	myrandom.last, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
