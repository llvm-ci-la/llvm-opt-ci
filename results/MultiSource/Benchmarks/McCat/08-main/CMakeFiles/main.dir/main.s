	.file	"main.c"
	.text
	.globl	MakeSphere                      # -- Begin function MakeSphere
	.p2align	5
	.type	MakeSphere,@function
MakeSphere:                             # @MakeSphere
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 112                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	move	$fp, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3818
	lu32i.d	$a0, -450053
	lu52i.d	$a1, $a0, 1025
	movgr2fr.d	$fa1, $a1
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs6, $fa1, $fa0
	lu52i.d	$a0, $a0, -1024
	movgr2fr.d	$fs7, $a0
	lu12i.w	$a0, -153666
	ori	$a0, $a0, 3056
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fs5, $a0
	fmov.d	$fs1, $fs7
	.p2align	4, , 16
.LBB0_1:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	fld.d	$fa0, $sp, 8                    # 8-byte Folded Reload
	fadd.d	$fs2, $fa0, $fs1
	fmov.d	$fs3, $fs7
	.p2align	4, , 16
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 16
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 24
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 32
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 40
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 48
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 56
	fadd.d	$fs3, $fs6, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 64
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 72
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 80
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 88
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 96
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 104
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(InsertPoly4)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fs3, $fs5
	bcnez	$fcc0, .LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	fcmp.clt.d	$fcc0, $fs2, $fs5
	fmov.d	$fs1, $fs2
	bcnez	$fcc0, .LBB0_1
# %bb.4:
	move	$a0, $fp
	fld.d	$fs7, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 168                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end0:
	.size	MakeSphere, .Lfunc_end0-MakeSphere
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(Oalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(Oalloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 25
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(MakeSphere)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 376832
	lu52i.d	$a0, $a0, 1029
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $s0, 136
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(InsertChild)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs0, $zero
	ori	$s1, $zero, 360
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	fst.d	$fs0, $fp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CalcObject)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	vldi	$vr0, -912
	fadd.d	$fs0, $fs0, $fa0
	bnez	$s1, .LBB1_1
# %bb.2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(PrintObject)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(Draw_All)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	pyramid,@object                 # @pyramid
	.data
	.globl	pyramid
	.p2align	3, 0x0
pyramid:
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbfe570a3d70a3d71              # double -0.67000000000000004
	.dword	0x3fe570a3d70a3d71              # double 0.67000000000000004
	.dword	0xbff0000000000000              # double -1
	.dword	0xbfe570a3d70a3d71              # double -0.67000000000000004
	.dword	0x3fe570a3d70a3d71              # double 0.67000000000000004
	.dword	0x0000000000000000              # double 0
	.dword	0xbfe570a3d70a3d71              # double -0.67000000000000004
	.dword	0xbff0000000000000              # double -1
	.dword	0x0000000000000000              # double 0
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbfe570a3d70a3d71              # double -0.67000000000000004
	.dword	0x3fe570a3d70a3d71              # double 0.67000000000000004
	.dword	0x0000000000000000              # double 0
	.dword	0xbfe570a3d70a3d71              # double -0.67000000000000004
	.dword	0xbff0000000000000              # double -1
	.dword	0x0000000000000000              # double 0
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0xbfe570a3d70a3d71              # double -0.67000000000000004
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbfe570a3d70a3d71              # double -0.67000000000000004
	.dword	0x3fe570a3d70a3d71              # double 0.67000000000000004
	.dword	0x0000000000000000              # double 0
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbfe570a3d70a3d71              # double -0.67000000000000004
	.dword	0x3fe570a3d70a3d71              # double 0.67000000000000004
	.dword	0xbff0000000000000              # double -1
	.dword	0xbfe570a3d70a3d71              # double -0.67000000000000004
	.dword	0x3fe570a3d70a3d71              # double 0.67000000000000004
	.size	pyramid, 288

	.type	SPyramid,@object                # @SPyramid
	.globl	SPyramid
	.p2align	3, 0x0
SPyramid:
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.size	SPyramid, 576

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TestObject"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SphereObject"
	.size	.L.str.1, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
