	.file	"newbh.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(dealwithargs)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(nbody)
	ld.w	$a1, $a0, %pc_lo12(nbody)
	pcalau12i	$a0, %pc_hi20(NumNodes)
	ld.w	$a2, $a0, %pc_lo12(NumNodes)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(old_main)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function old_main
.LCPI1_0:
	.dword	0xc000000000000000              # double -2
	.dword	0x4010000000000000              # double 4
.LCPI1_1:
	.dword	32                              # 0x20
	.dword	0                               # 0x0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_2:
	.dword	0x3f8999999999999a              # double 0.012500000000000001
.LCPI1_3:
	.dword	0x4000028f5c28f5c3              # double 2.0012500000000002
	.text
	.globl	old_main
	.p2align	5
	.type	old_main,@function
old_main:                               # @old_main
# %bb.0:                                # %.preheader126.preheader
	addi.d	$sp, $sp, -1040
	st.d	$ra, $sp, 1032                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1000                  # 8-byte Folded Spill
	st.d	$s3, $sp, 992                   # 8-byte Folded Spill
	st.d	$s4, $sp, 984                   # 8-byte Folded Spill
	st.d	$s5, $sp, 976                   # 8-byte Folded Spill
	st.d	$s6, $sp, 968                   # 8-byte Folded Spill
	st.d	$s7, $sp, 960                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 952                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 944                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 936                  # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(NumNodes)
	ld.w	$s1, $s2, %pc_lo12(NumNodes)
	ori	$a0, $zero, 123
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1064
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s3, $zero
	move	$s7, $zero
	st.d	$zero, $a0, 32
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	lu52i.d	$a0, $zero, -1024
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $fp, 0
	vst	$vr0, $fp, 16
	vrepli.b	$vr0, 0
	movgr2fr.d	$fs0, $zero
	ori	$s5, $zero, 40
	ori	$s0, $zero, 1
	ori	$s6, $zero, 32
	pcalau12i	$s4, %pc_hi20(nbody)
	fmov.d	$fs1, $fs0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %.preheader124.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.d	$s3, $s3, 1
	vld	$vr4, $sp, 144                  # 16-byte Folded Reload
	vfadd.d	$vr4, $vr4, $vr0
	vst	$vr4, $sp, 144                  # 16-byte Folded Spill
	fadd.d	$fs1, $fs1, $fa1
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfadd.d	$vr0, $vr0, $vr2
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	fadd.d	$fs0, $fs0, $fa3
	addi.d	$s5, $s5, 8
	addi.w	$s0, $s0, 1
	move	$s7, $a0
	beq	$s3, $s6, .LBB1_4
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, %pc_lo12(NumNodes)
	div.w	$a0, $s6, $a0
	ld.w	$a1, $s4, %pc_lo12(nbody)
	ext.w.b	$a2, $s3
	ext.w.b	$a0, $a0
	div.d	$a0, $a2, $a0
	bstrpick.d	$a2, $a1, 62, 58
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 5
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 160
	move	$a3, $s0
	pcaddu18i	$ra, %call36(uniform_testdata)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 160
	fld.d	$fa1, $sp, 176
	vld	$vr2, $sp, 184
	fld.d	$fa3, $sp, 200
	ld.d	$a1, $sp, 208
	ld.d	$a0, $sp, 216
	stx.d	$a1, $fp, $s5
	beqz	$s7, .LBB1_1
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	st.d	$a1, $s7, 128
	b	.LBB1_1
.LBB1_4:                                # %.preheader123
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s4, %pc_lo12(nbody)
	addi.d	$a0, $sp, 680
	ori	$a2, $zero, 256
	addi.d	$s3, $sp, 680
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 160
	ori	$a2, $zero, 512
	addi.d	$s4, $sp, 160
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 40
	beqz	$s0, .LBB1_7
# %bb.5:                                # %.preheader121.preheader
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	vreplvei.d	$vr1, $vr0, 0
	vld	$vr2, $sp, 144                  # 16-byte Folded Reload
	vfdiv.d	$vr2, $vr2, $vr1
	vst	$vr2, $sp, 144                  # 16-byte Folded Spill
	fdiv.d	$fs1, $fs1, $fa0
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	vfdiv.d	$vr1, $vr2, $vr1
	vst	$vr1, $sp, 128                  # 16-byte Folded Spill
	fdiv.d	$fs0, $fs0, $fa0
	ori	$a0, $zero, 64
	div.w	$a0, $a0, $s1
	ext.w.b	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_1)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ori	$a0, $zero, 28
	lu32i.d	$a0, 26
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	lu32i.d	$a1, 4
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	ori	$a1, $zero, 27
	ori	$a2, $zero, 27
	lu32i.d	$a2, 29
	vreplgr2vr.d	$vr0, $a2
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	lu32i.d	$a1, 28
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$a0, $zero, 4
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB1_6:                                # %.preheader121
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $s0, 16
	fld.d	$fa1, $s0, 32
	vld	$vr2, $sp, 144                  # 16-byte Folded Reload
	vfsub.d	$vr0, $vr0, $vr2
	vst	$vr0, $s0, 16
	vld	$vr0, $s0, 48
	fsub.d	$fa1, $fa1, $fs1
	fld.d	$fa2, $s0, 64
	fst.d	$fa1, $s0, 32
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $s0, 48
	fsub.d	$fa0, $fa2, $fs0
	fst.d	$fa0, $s0, 64
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(intcoord)
	jirl	$ra, $ra, 0
	vreplgr2vr.d	$vr0, $a0
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vsrl.d	$vr1, $vr0, $vr2
	vinsgr2vr.d	$vr0, $a1, 1
	vsrl.d	$vr2, $vr0, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr0, $vr0, 8
	vshuf4i.w	$vr2, $vr2, 8
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vsrl.w	$vr1, $vr1, $vr3
	vld	$vr3, $sp, 80                   # 16-byte Folded Reload
	vand.v	$vr1, $vr1, $vr3
	vld	$vr3, $sp, 64                   # 16-byte Folded Reload
	vsrl.w	$vr2, $vr2, $vr3
	vld	$vr3, $sp, 48                   # 16-byte Folded Reload
	vand.v	$vr2, $vr2, $vr3
	vshuf4i.w	$vr2, $vr2, 1
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	vsrl.w	$vr0, $vr0, $vr3
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr3
	vor.v	$vr0, $vr0, $vr1
	vor.v	$vr0, $vr0, $vr2
	vpickve2gr.w	$a0, $vr0, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.w	$a1, $vr0, 1
	or	$a0, $a1, $a0
	ext.w.b	$a0, $a0
	div.d	$a0, $a0, $s1
	ext.w.b	$a0, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$a2, $a1, $s4
	st.d	$a2, $s0, 136
	slli.d	$a2, $a0, 2
	stx.d	$s0, $a1, $s4
	ldx.w	$a1, $a2, $s3
	st.w	$a0, $s0, 40
	ld.d	$s0, $s0, 128
	addi.d	$a0, $a1, 1
	stx.w	$a0, $a2, $s3
	bnez	$s0, .LBB1_6
.LBB1_7:                                # %.preheader119
	ld.w	$a0, $s2, %pc_lo12(NumNodes)
	blez	$a0, .LBB1_10
# %bb.8:                                # %.lr.ph
	addi.d	$s3, $fp, 552
	addi.d	$s4, $sp, 680
	addi.d	$s5, $sp, 160
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	move	$s6, $zero
	.p2align	4, , 16
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s4, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $s3, 0
	addi.d	$s6, $s6, 1
	ld.w	$a0, $s2, %pc_lo12(NumNodes)
	addi.w	$s1, $s1, 1
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 8
	addi.d	$s3, $s3, 8
	blt	$s6, $a0, .LBB1_9
.LBB1_10:                               # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_3)
	move	$a0, $zero
	movgr2fr.d	$fs2, $zero
	ori	$s1, $zero, 9
	.p2align	4, , 16
.LBB1_11:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(stepsystem)
	jirl	$ra, $ra, 0
	fadd.d	$fs2, $fs2, $fs0
	fcmp.cule.d	$fcc0, $fs1, $fs2
	bcnez	$fcc0, .LBB1_13
# %bb.12:                               # %.preheader
                                        #   in Loop: Header=BB1_11 Depth=1
	addi.w	$a0, $s0, 1
	bltu	$s0, $s1, .LBB1_11
.LBB1_13:
	move	$a0, $fp
	fld.d	$fs2, $sp, 936                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 944                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 952                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 968                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 976                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 992                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1040
	ret
.Lfunc_end1:
	.size	old_main, .Lfunc_end1-old_main
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function uniform_testdata
.LCPI2_0:
	.dword	0x405ec00000000000              # double 123
.LCPI2_1:
	.dword	0x3feff7ced916872b              # double 0.99899999999999999
.LCPI2_2:
	.dword	0xbfe5555555555555              # double -0.66666666666666663
.LCPI2_3:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI2_4:
	.dword	0x3ff6a09e667f3bcd              # double 1.4142135623730951
.LCPI2_5:
	.dword	0x3ff4d8d7a58fa312              # double 1.3029400317411199
	.text
	.globl	uniform_testdata
	.p2align	5
	.type	uniform_testdata,@function
uniform_testdata:                       # @uniform_testdata
# %bb.0:                                # %.preheader100
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 104                  # 8-byte Folded Spill
	move	$s4, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	ori	$a0, $zero, 144
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	vst	$vr0, $fp, 16
	vst	$vr0, $fp, 32
	ori	$s5, $zero, 1
	st.h	$s5, $a0, 0
	st.w	$s2, $a0, 40
	st.d	$zero, $a0, 136
	st.w	$s2, $a0, 44
	move	$s3, $a0
	blez	$s1, .LBB2_12
# %bb.1:                                # %.lr.ph
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	move	$s6, $zero
	movgr2fr.w	$fa1, $s4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fs4, $fa1, $fa0
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_2)
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_4)
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_5)
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fs0
	fmov.d	$fs2, $fs0
	fmov.d	$fs5, $fs0
	move	$s3, $s0
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_2:                                # %.preheader99
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_6 Depth 2
	fst.d	$fa2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 72                   # 8-byte Folded Spill
	move	$s4, $s3
	ori	$a0, $zero, 144
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.w	$s2, $a0, 40
	st.d	$zero, $a0, 136
	st.w	$s2, $a0, 44
	st.d	$a0, $s4, 128
	st.h	$s5, $a0, 0
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, 8
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs4
	pcaddu18i	$ra, %call36(xrand)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB2_9
.LBB2_3:                                # %.preheader99.split
                                        #   in Loop: Header=BB2_2 Depth=1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs4
	pcaddu18i	$ra, %call36(xrand)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1008
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s3, 16
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs4
	pcaddu18i	$ra, %call36(xrand)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1008
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s3, 24
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs4
	pcaddu18i	$ra, %call36(xrand)
	jirl	$ra, $ra, 0
	vld	$vr1, $s3, 16
	fmov.d	$fs6, $fa0
	vldi	$vr0, -1008
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $s3, 32
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vfadd.d	$vr2, $vr2, $vr1
	vst	$vr2, $sp, 80                   # 16-byte Folded Spill
	fadd.d	$fs5, $fs5, $fa0
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_4:                                # %.preheader98
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vldi	$vr1, -912
	fmov.d	$fa0, $fs0
	fmov.d	$fa2, $fs4
	pcaddu18i	$ra, %call36(xrand)
	jirl	$ra, $ra, 0
	fmov.d	$fs5, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs3
	fmov.d	$fa2, $fs4
	pcaddu18i	$ra, %call36(xrand)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	fmul.d	$fs1, $fs5, $fs5
	fneg.d	$fa0, $fs5
	vldi	$vr1, -912
	fmadd.d	$fa0, $fa0, $fs5, $fa1
	vldi	$vr1, -1012
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs1, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	vldi	$vr0, -912
	fmadd.d	$fa0, $fs6, $fs6, $fa0
	vldi	$vr1, -944
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	.p2align	4, , 16
.LBB2_6:                                # %.preheader
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vldi	$vr0, -784
	vldi	$vr1, -912
	fmov.d	$fa2, $fs4
	pcaddu18i	$ra, %call36(xrand)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s3, 48
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vldi	$vr0, -784
	vldi	$vr1, -912
	fmov.d	$fa2, $fs4
	pcaddu18i	$ra, %call36(xrand)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s3, 56
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vldi	$vr0, -784
	vldi	$vr1, -912
	fmov.d	$fa2, $fs4
	pcaddu18i	$ra, %call36(xrand)
	jirl	$ra, $ra, 0
	fld.d	$fs7, $s3, 48
	fld.d	$fs6, $s3, 56
	fmadd.d	$fa1, $fs7, $fs7, $fs0
	fmadd.d	$fa1, $fs6, $fs6, $fa1
	fmadd.d	$fa1, $fa0, $fa0, $fa1
	vldi	$vr2, -912
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fst.d	$fa0, $s3, 64
	bcnez	$fcc0, .LBB2_6
# %bb.7:                                # %.preheader97
                                        #   in Loop: Header=BB2_2 Depth=1
	fsqrt.d	$fa2, $fa1
	fcmp.cor.d	$fcc0, $fa2, $fa2
	bceqz	$fcc0, .LBB2_10
.LBB2_8:                                # %.preheader97.split
                                        #   in Loop: Header=BB2_2 Depth=1
	fld.d	$fa1, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa1, $fs5, $fa1
	fdiv.d	$fa1, $fa1, $fs1
	fld.d	$fa3, $sp, 16                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa3
	fdiv.d	$fa1, $fa1, $fa2
	fmul.d	$fa2, $fa1, $fs7
	fst.d	$fa2, $s3, 48
	fmul.d	$fa3, $fa1, $fs6
	fst.d	$fa3, $s3, 56
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s3, 64
	fadd.d	$fs2, $fs2, $fa2
	fld.d	$fa2, $sp, 64                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	addi.w	$s6, $s6, 1
	fld.d	$fa1, $sp, 72                   # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	bne	$s6, $s1, .LBB2_2
	b	.LBB2_11
.LBB2_9:                                # %call.sqrt
                                        #   in Loop: Header=BB2_2 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB2_3
.LBB2_10:                               # %call.sqrt176
                                        #   in Loop: Header=BB2_2 Depth=1
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 8                    # 8-byte Folded Reload
	b	.LBB2_8
.LBB2_11:                               # %._crit_edge.loopexit
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $fp, 0
	fst.d	$fs5, $fp, 16
	fst.d	$fs2, $fp, 24
	fst.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 40
.LBB2_12:                               # %._crit_edge
	st.d	$zero, $s3, 128
	ld.d	$a0, $s0, 128
	st.d	$a0, $fp, 48
	st.d	$s3, $fp, 56
	fld.d	$fs7, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end2:
	.size	uniform_testdata, .Lfunc_end2-uniform_testdata
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function intcoord
.LCPI3_0:
	.dword	0x41d0000000000000              # double 1073741824
	.text
	.globl	intcoord
	.p2align	5
	.type	intcoord,@function
intcoord:                               # @intcoord
# %bb.0:
	vld	$vr0, $a0, 16
	vld	$vr3, $a1, 0
	fld.d	$fa1, $a1, 24
	fld.d	$fa2, $a0, 32
	vfsub.d	$vr0, $vr0, $vr3
	vreplvei.d	$vr3, $vr1, 0
	vfdiv.d	$vr0, $vr0, $vr3
	lu52i.d	$a0, $zero, 1023
	vreplgr2vr.d	$vr3, $a0
	vfcmp.clt.d	$vr3, $vr0, $vr3
	vrepli.b	$vr4, 0
	vfcmp.cle.d	$vr4, $vr4, $vr0
	vand.v	$vr3, $vr4, $vr3
	vpickve2gr.d	$a0, $vr3, 0
	vpickve2gr.d	$a2, $vr3, 1
	andi	$a3, $a2, 1
	andi	$a0, $a0, 1
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	beqz	$a3, .LBB3_2
# %bb.1:
	fld.d	$fa3, $a2, %pc_lo12(.LCPI3_0)
	slli.d	$a4, $a0, 32
	vreplvei.d	$vr4, $vr0, 1
	fmul.d	$fa3, $fa4, $fa3
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a3, $fa3
	slli.d	$a3, $a3, 32
	b	.LBB3_3
.LBB3_2:
	move	$a3, $zero
	move	$a4, $zero
.LBB3_3:
	fld.d	$fa3, $a1, 16
	fsub.d	$fa2, $fa2, $fa3
	fdiv.d	$fa1, $fa2, $fa1
	movgr2fr.d	$fa2, $zero
	fcmp.cult.d	$fcc0, $fa1, $fa2
	move	$a1, $zero
	bcnez	$fcc0, .LBB3_6
# %bb.4:
	vldi	$vr2, -912
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB3_6
# %bb.5:
	fld.d	$fa2, $a2, %pc_lo12(.LCPI3_0)
	fmul.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	or	$a1, $a4, $a1
.LBB3_6:
	fld.d	$fa1, $a2, %pc_lo12(.LCPI3_0)
	vreplvei.d	$vr0, $vr0, 0
	fmul.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a3, $a0
	ret
.Lfunc_end3:
	.size	intcoord, .Lfunc_end3-intcoord
                                        # -- End function
	.globl	old_subindex                    # -- Begin function old_subindex
	.p2align	5
	.type	old_subindex,@function
old_subindex:                           # @old_subindex
# %bb.0:
	srli.d	$a3, $a0, 32
	and	$a0, $a2, $a0
	addi.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 2
	and	$a3, $a2, $a3
	sltu	$a3, $zero, $a3
	slli.d	$a3, $a3, 1
	or	$a0, $a3, $a0
	and	$a1, $a2, $a1
	addi.w	$a1, $a1, 0
	sltu	$a1, $zero, $a1
	or	$a0, $a0, $a1
	ret
.Lfunc_end4:
	.size	old_subindex, .Lfunc_end4-old_subindex
                                        # -- End function
	.globl	stepsystem                      # -- Begin function stepsystem
	.p2align	5
	.type	stepsystem,@function
stepsystem:                             # @stepsystem
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	move	$s0, $a1
	beqz	$a0, .LBB5_2
# %bb.1:
	pcaddu18i	$ra, %call36(freetree)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 32
.LBB5_2:
	pcalau12i	$a0, %pc_hi20(nbody)
	ld.w	$a1, $a0, %pc_lo12(nbody)
	move	$a2, $fp
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $s0
	move	$a4, $zero
	pcaddu18i	$ra, %call36(maketree)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(NumNodes)
	ld.w	$s2, $a1, %pc_lo12(NumNodes)
	st.d	$a0, $fp, 32
	blez	$s2, .LBB5_8
# %bb.3:                                # %.lr.ph.i
	fld.d	$fa0, $fp, 24
	addi.d	$s3, $fp, 552
	fmul.d	$fs0, $fa0, $fa0
	addi.d	$s4, $sp, 40
	addi.d	$s5, $sp, 64
	addi.d	$s6, $sp, 136
	ori	$s7, $zero, 1
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %grav.exit.i
                                        #   in Loop: Header=BB5_5 Depth=1
	bgeu	$s7, $s8, .LBB5_8
.LBB5_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	move	$s8, $s2
	addi.d	$s2, $s2, -1
	slli.d	$a0, $s2, 3
	ldx.d	$s0, $s3, $a0
	beqz	$s0, .LBB5_4
# %bb.6:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$s1, $fp, 32
	.p2align	4, , 16
.LBB5_7:                                # %.lr.ph.i.i
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 16
	vld	$vr0, $s0, 24
	st.d	$s0, $sp, 32
	st.d	$a0, $s4, 0
	vst	$vr0, $s4, 8
	vst	$vr1, $s5, 16
	vst	$vr1, $s5, 0
	addi.d	$a0, $sp, 96
	vldi	$vr1, -912
	addi.d	$a2, $sp, 32
	move	$a1, $s1
	fmov.d	$fa0, $fs0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(walksub)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 128
	ld.d	$a0, $s6, 0
	vld	$vr1, $s6, 8
	fst.d	$fa0, $s0, 120
	st.d	$a0, $s0, 96
	vst	$vr1, $s0, 104
	ld.d	$s0, $s0, 136
	vst	$vr1, $sp, 40
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	st.d	$a0, $sp, 32
	bnez	$s0, .LBB5_7
	b	.LBB5_4
.LBB5_8:                                # %computegrav.exit
	ld.d	$a0, $fp, 552
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(vp)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end5:
	.size	stepsystem, .Lfunc_end5-stepsystem
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	testdata                        # -- Begin function testdata
	.p2align	5
	.type	testdata,@function
testdata:                               # @testdata
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 99
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	testdata, .Lfunc_end6-testdata
                                        # -- End function
	.text
	.globl	freetree1                       # -- Begin function freetree1
	.p2align	5
	.type	freetree1,@function
freetree1:                              # @freetree1
# %bb.0:
	pcaddu18i	$t8, %call36(freetree)
	jr	$t8
.Lfunc_end7:
	.size	freetree1, .Lfunc_end7-freetree1
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function maketree
.LCPI8_0:
	.dword	0x41d0000000000000              # double 1073741824
	.text
	.globl	maketree
	.p2align	5
	.type	maketree,@function
maketree:                               # @maketree
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(NumNodes)
	ld.w	$s2, $a0, %pc_lo12(NumNodes)
	move	$fp, $a2
	st.d	$zero, $a2, 32
	pcalau12i	$a0, %pc_hi20(nbody)
	st.w	$a1, $a0, %pc_lo12(nbody)
	move	$a0, $zero
	blez	$s2, .LBB8_13
# %bb.1:                                # %.lr.ph31
	addi.d	$s3, $fp, 552
	ori	$s4, $zero, 2
	movgr2fr.d	$fs0, $zero
	lu52i.d	$a1, $zero, 1023
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI8_0)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	lu12i.w	$s0, 131072
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %.loopexit
                                        #   in Loop: Header=BB8_3 Depth=1
	blt	$s5, $s4, .LBB8_13
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	move	$s5, $s2
	addi.d	$s2, $s2, -1
	slli.d	$a1, $s2, 3
	ldx.d	$s1, $s3, $a1
	bnez	$s1, .LBB8_6
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_4:                                # %intcoord.exit
                                        #   in Loop: Header=BB8_6 Depth=2
	vreplvei.d	$vr0, $vr0, 0
	fmul.d	$fa0, $fa0, $fs1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	ld.d	$a3, $fp, 32
	bstrpick.d	$a4, $a4, 31, 0
	maskeqz	$a0, $a4, $a0
	or	$a1, $a1, $a0
	move	$a0, $s1
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(loadtree)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
.LBB8_5:                                #   in Loop: Header=BB8_6 Depth=2
	ld.d	$s1, $s1, 136
	beqz	$s1, .LBB8_2
.LBB8_6:                                # %.lr.ph
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s1, 8
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB8_5
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=2
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(expandbox)
	jirl	$ra, $ra, 0
	vld	$vr0, $s1, 16
	vld	$vr2, $fp, 0
	fld.d	$fa1, $fp, 24
	vfsub.d	$vr0, $vr0, $vr2
	vreplvei.d	$vr2, $vr1, 0
	vfdiv.d	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	vfcmp.clt.d	$vr2, $vr0, $vr2
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	vfcmp.cle.d	$vr3, $vr3, $vr0
	vand.v	$vr2, $vr3, $vr2
	vpickve2gr.d	$a0, $vr2, 0
	vpickve2gr.d	$a1, $vr2, 1
	andi	$a1, $a1, 1
	andi	$a0, $a0, 1
	beqz	$a1, .LBB8_9
# %bb.8:                                #   in Loop: Header=BB8_6 Depth=2
	slli.d	$a3, $a0, 32
	vreplvei.d	$vr2, $vr0, 1
	fmul.d	$fa2, $fa2, $fs1
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a1, $fa2
	slli.d	$a1, $a1, 32
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_9:                                #   in Loop: Header=BB8_6 Depth=2
	move	$a1, $zero
	move	$a3, $zero
.LBB8_10:                               #   in Loop: Header=BB8_6 Depth=2
	fld.d	$fa2, $s1, 32
	fld.d	$fa3, $fp, 16
	fsub.d	$fa2, $fa2, $fa3
	fdiv.d	$fa1, $fa2, $fa1
	fcmp.cult.d	$fcc0, $fa1, $fs0
	move	$a2, $zero
	bcnez	$fcc0, .LBB8_4
# %bb.11:                               #   in Loop: Header=BB8_6 Depth=2
	vldi	$vr2, -912
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB8_4
# %bb.12:                               #   in Loop: Header=BB8_6 Depth=2
	fmul.d	$fa1, $fa1, $fs1
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	bstrpick.d	$a2, $a2, 31, 0
	or	$a2, $a3, $a2
	b	.LBB8_4
.LBB8_13:                               # %._crit_edge
	pcaddu18i	$ra, %call36(hackcofm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end8:
	.size	maketree, .Lfunc_end8-maketree
                                        # -- End function
	.globl	computegrav                     # -- Begin function computegrav
	.p2align	5
	.type	computegrav,@function
computegrav:                            # @computegrav
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(NumNodes)
	ld.w	$s1, $a1, %pc_lo12(NumNodes)
	blez	$s1, .LBB9_6
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	fld.d	$fa0, $a0, 24
	addi.d	$s2, $a0, 552
	fmul.d	$fs0, $fa0, $fa0
	addi.d	$s3, $sp, 40
	addi.d	$s4, $sp, 64
	addi.d	$s5, $sp, 136
	ori	$s6, $zero, 1
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %grav.exit
                                        #   in Loop: Header=BB9_3 Depth=1
	bgeu	$s6, $s7, .LBB9_6
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	move	$s7, $s1
	addi.d	$s1, $s1, -1
	slli.d	$a0, $s1, 3
	ldx.d	$s8, $s2, $a0
	beqz	$s8, .LBB9_2
# %bb.4:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.d	$s0, $fp, 32
	.p2align	4, , 16
.LBB9_5:                                # %.lr.ph.i
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 16
	vld	$vr0, $s8, 24
	st.d	$s8, $sp, 32
	st.d	$a0, $s3, 0
	vst	$vr0, $s3, 8
	vst	$vr1, $s4, 16
	vst	$vr1, $s4, 0
	addi.d	$a0, $sp, 96
	vldi	$vr1, -912
	addi.d	$a2, $sp, 32
	move	$a1, $s0
	fmov.d	$fa0, $fs0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(walksub)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 128
	ld.d	$a0, $s5, 0
	vld	$vr1, $s5, 8
	fst.d	$fa0, $s8, 120
	st.d	$a0, $s8, 96
	vst	$vr1, $s8, 104
	ld.d	$s8, $s8, 136
	vst	$vr1, $sp, 40
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	st.d	$a0, $sp, 32
	bnez	$s8, .LBB9_5
	b	.LBB9_2
.LBB9_6:                                # %._crit_edge
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end9:
	.size	computegrav, .Lfunc_end9-computegrav
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function vp
.LCPI10_0:
	.dword	0x3f7999999999999a              # double 0.0062500000000000003
.LCPI10_1:
	.dword	0x40c3880000000000              # double 1.0E+4
.LCPI10_2:
	.dword	0x3f8999999999999a              # double 0.012500000000000001
	.text
	.globl	vp
	.p2align	5
	.type	vp,@function
vp:                                     # @vp
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB10_26
# %bb.1:                                # %.preheader128.lr.ph
	pcalau12i	$a2, %pc_hi20(.LCPI10_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI10_0)
	lu12i.w	$a2, -419431
	ori	$a2, $a2, 2458
	lu32i.d	$a2, -419431
	pcalau12i	$a3, %pc_hi20(.LCPI10_1)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI10_1)
	pcalau12i	$a3, %pc_hi20(.LCPI10_2)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI10_2)
	lu52i.d	$a2, $a2, 1015
	vreplgr2vr.d	$vr3, $a2
	vldi	$vr4, -988
	.p2align	4, , 16
.LBB10_2:                               # %.preheader128
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $a0, 96
	fld.d	$fa6, $a0, 112
	blez	$a1, .LBB10_4
# %bb.3:                                # %.preheader127
                                        #   in Loop: Header=BB10_2 Depth=1
	fld.d	$fa7, $a0, 88
	fsub.d	$fa7, $fa6, $fa7
	fld.d	$ft0, $a0, 64
	vld	$vr9, $a0, 72
	fmul.d	$fa7, $fa7, $fa0
	vld	$vr10, $a0, 48
	fadd.d	$fa7, $ft0, $fa7
	vfsub.d	$vr8, $vr5, $vr9
	vfmul.d	$vr8, $vr8, $vr3
	vfadd.d	$vr8, $vr10, $vr8
	vst	$vr8, $a0, 48
	fst.d	$fa7, $a0, 64
.LBB10_4:                               # %.loopexit
                                        #   in Loop: Header=BB10_2 Depth=1
	fld.d	$fa7, $a0, 16
	fcmp.cor.d	$fcc0, $fa7, $fa7
	bceqz	$fcc0, .LBB10_27
# %bb.5:                                #   in Loop: Header=BB10_2 Depth=1
	fld.d	$ft0, $a0, 24
	fcmp.cor.d	$fcc0, $ft0, $ft0
	bceqz	$fcc0, .LBB10_28
# %bb.6:                                #   in Loop: Header=BB10_2 Depth=1
	fld.d	$ft1, $a0, 32
	fcmp.cor.d	$fcc0, $ft1, $ft1
	bceqz	$fcc0, .LBB10_29
# %bb.7:                                #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$ft2, $fa7
	fcmp.clt.d	$fcc0, $ft2, $fa4
	bceqz	$fcc0, .LBB10_43
# %bb.8:                                #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$ft2, $ft0
	fcmp.clt.d	$fcc0, $ft2, $fa4
	bceqz	$fcc0, .LBB10_42
# %bb.9:                                #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$ft2, $ft1
	fcmp.cule.d	$fcc0, $fa4, $ft2
	bcnez	$fcc0, .LBB10_41
# %bb.10:                               # %.preheader123
                                        #   in Loop: Header=BB10_2 Depth=1
	vreplvei.d	$vr10, $vr5, 0
	vst	$vr5, $a0, 72
	fcmp.cun.d	$fcc0, $ft2, $ft2
	fst.d	$fa6, $a0, 88
	bcnez	$fcc0, .LBB10_30
# %bb.11:                               #   in Loop: Header=BB10_2 Depth=1
	vreplvei.d	$vr11, $vr5, 1
	fcmp.cor.d	$fcc0, $ft3, $ft3
	bceqz	$fcc0, .LBB10_31
# %bb.12:                               #   in Loop: Header=BB10_2 Depth=1
	fcmp.cor.d	$fcc0, $fa6, $fa6
	bceqz	$fcc0, .LBB10_32
# %bb.13:                               #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$ft2, $ft2
	fcmp.clt.d	$fcc0, $ft2, $fa1
	bceqz	$fcc0, .LBB10_40
# %bb.14:                               #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$ft2, $ft3
	fcmp.clt.d	$fcc0, $ft2, $fa1
	bceqz	$fcc0, .LBB10_39
# %bb.15:                               #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$ft2, $fa6
	fcmp.cule.d	$fcc0, $fa1, $ft2
	bcnez	$fcc0, .LBB10_38
# %bb.16:                               # %.preheader122.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	vld	$vr10, $a0, 48
	vreplvei.d	$vr12, $vr10, 0
	fcmp.cun.d	$fcc0, $ft4, $ft4
	bcnez	$fcc0, .LBB10_33
# %bb.17:                               #   in Loop: Header=BB10_2 Depth=1
	vreplvei.d	$vr13, $vr10, 1
	fcmp.cor.d	$fcc0, $ft5, $ft5
	bceqz	$fcc0, .LBB10_34
# %bb.18:                               #   in Loop: Header=BB10_2 Depth=1
	fld.d	$ft3, $a0, 64
	fcmp.cor.d	$fcc0, $ft3, $ft3
	bceqz	$fcc0, .LBB10_35
# %bb.19:                               #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$ft4, $ft4
	fcmp.clt.d	$fcc0, $ft4, $fa1
	bceqz	$fcc0, .LBB10_37
# %bb.20:                               #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$ft4, $ft5
	fcmp.clt.d	$fcc0, $ft4, $fa1
	bceqz	$fcc0, .LBB10_36
# %bb.21:                               #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$ft4, $ft3
	fcmp.clt.d	$fcc0, $ft4, $fa1
	bceqz	$fcc0, .LBB10_47
# %bb.22:                               #   in Loop: Header=BB10_2 Depth=1
	vfmul.d	$vr12, $vr5, $vr3
	fmul.d	$ft5, $fa6, $fa0
	vfadd.d	$vr10, $vr10, $vr12
	fadd.d	$ft3, $ft3, $ft5
	vreplvei.d	$vr5, $vr10, 0
	fmul.d	$fa5, $fa5, $fa2
	vreplvei.d	$vr6, $vr10, 1
	fmul.d	$fa6, $fa6, $fa2
	fmul.d	$ft6, $ft3, $fa2
	fadd.d	$fa7, $fa7, $fa5
	fadd.d	$fa6, $ft0, $fa6
	fadd.d	$fa5, $ft1, $ft6
	fst.d	$fa7, $a0, 16
	fst.d	$fa6, $a0, 24
	fst.d	$fa5, $a0, 32
	vfadd.d	$vr8, $vr10, $vr12
	vst	$vr8, $a0, 48
	fadd.d	$ft0, $ft3, $ft5
	fabs.d	$fa7, $fa7
	fcmp.clt.d	$fcc0, $fa7, $fa1
	fst.d	$ft0, $a0, 64
	bceqz	$fcc0, .LBB10_46
# %bb.23:                               #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$fa6, $fa6
	fcmp.clt.d	$fcc0, $fa6, $fa1
	bceqz	$fcc0, .LBB10_45
# %bb.24:                               #   in Loop: Header=BB10_2 Depth=1
	fabs.d	$fa5, $fa5
	fcmp.clt.d	$fcc0, $fa5, $fa1
	bceqz	$fcc0, .LBB10_44
# %bb.25:                               #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $a0, 136
	bnez	$a0, .LBB10_2
.LBB10_26:                              # %._crit_edge
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_27:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 99
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_28:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 98
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_29:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 97
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_30:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 89
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_31:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 88
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_32:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 87
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_33:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 79
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_34:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 78
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_35:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 77
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_36:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 75
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_37:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 76
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_38:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 84
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_39:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 85
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_40:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 86
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_41:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 94
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_42:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 95
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_43:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 96
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_44:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_45:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 65
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_46:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 66
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB10_47:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 74
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	vp, .Lfunc_end10-vp
                                        # -- End function
	.globl	freetree                        # -- Begin function freetree
	.p2align	5
	.type	freetree,@function
freetree:                               # @freetree
# %bb.0:
	beqz	$a0, .LBB11_20
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB11_19
# %bb.2:                                # %.preheader
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB11_4
# %bb.3:
	pcaddu18i	$ra, %call36(freetree)
	jirl	$ra, $ra, 0
.LBB11_4:
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB11_6
# %bb.5:
	pcaddu18i	$ra, %call36(freetree)
	jirl	$ra, $ra, 0
.LBB11_6:
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB11_8
# %bb.7:
	pcaddu18i	$ra, %call36(freetree)
	jirl	$ra, $ra, 0
.LBB11_8:
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB11_10
# %bb.9:
	pcaddu18i	$ra, %call36(freetree)
	jirl	$ra, $ra, 0
.LBB11_10:
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB11_12
# %bb.11:
	pcaddu18i	$ra, %call36(freetree)
	jirl	$ra, $ra, 0
.LBB11_12:
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB11_14
# %bb.13:
	pcaddu18i	$ra, %call36(freetree)
	jirl	$ra, $ra, 0
.LBB11_14:
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB11_16
# %bb.15:
	pcaddu18i	$ra, %call36(freetree)
	jirl	$ra, $ra, 0
.LBB11_16:
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB11_18
# %bb.17:
	pcaddu18i	$ra, %call36(freetree)
	jirl	$ra, $ra, 0
.LBB11_18:
	ld.hu	$a0, $fp, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(cp_free_list)
	addi.d	$a1, $a1, %pc_lo12(cp_free_list)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(bp_free_list)
	addi.d	$a2, $a2, %pc_lo12(bp_free_list)
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 112
	masknez	$a2, $a2, $a0
	ld.d	$a3, $a1, 0
	ori	$a4, $zero, 128
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	stx.d	$a3, $fp, $a0
	st.d	$fp, $a1, 0
.LBB11_19:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB11_20:
	ret
.Lfunc_end11:
	.size	freetree, .Lfunc_end11-freetree
                                        # -- End function
	.globl	my_free                         # -- Begin function my_free
	.p2align	5
	.type	my_free,@function
my_free:                                # @my_free
# %bb.0:
	ld.hu	$a1, $a0, 0
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(cp_free_list)
	addi.d	$a2, $a2, %pc_lo12(cp_free_list)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(bp_free_list)
	addi.d	$a3, $a3, %pc_lo12(bp_free_list)
	maskeqz	$a3, $a3, $a1
	or	$a2, $a3, $a2
	ori	$a3, $zero, 112
	masknez	$a3, $a3, $a1
	ld.d	$a4, $a2, 0
	ori	$a5, $zero, 128
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a3
	stx.d	$a4, $a0, $a1
	st.d	$a0, $a2, 0
	ret
.Lfunc_end12:
	.size	my_free, .Lfunc_end12-my_free
                                        # -- End function
	.globl	ubody_alloc                     # -- Begin function ubody_alloc
	.p2align	5
	.type	ubody_alloc,@function
ubody_alloc:                            # @ubody_alloc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 144
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.h	$a1, $a0, 0
	st.w	$fp, $a0, 40
	st.d	$zero, $a0, 136
	st.w	$fp, $a0, 44
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	ubody_alloc, .Lfunc_end13-ubody_alloc
                                        # -- End function
	.globl	cell_alloc                      # -- Begin function cell_alloc
	.p2align	5
	.type	cell_alloc,@function
cell_alloc:                             # @cell_alloc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cp_free_list)
	ld.d	$a2, $a1, %pc_lo12(cp_free_list)
	move	$fp, $a0
	beqz	$a2, .LBB14_2
# %bb.1:
	move	$a0, $a2
	ld.d	$a2, $a2, 112
	st.d	$a2, $a1, %pc_lo12(cp_free_list)
	b	.LBB14_3
.LBB14_2:
	ori	$a0, $zero, 120
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
.LBB14_3:
	ori	$a1, $zero, 2
	st.h	$a1, $a0, 0
	st.w	$fp, $a0, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 80
	vst	$vr0, $a0, 96
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	cell_alloc, .Lfunc_end14-cell_alloc
                                        # -- End function
	.globl	grav                            # -- Begin function grav
	.p2align	5
	.type	grav,@function
grav:                                   # @grav
# %bb.0:
	beqz	$a1, .LBB15_4
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 168                  # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	fmul.d	$fs0, $fa0, $fa0
	addi.d	$s1, $sp, 48
	addi.d	$s2, $sp, 72
	addi.d	$s3, $sp, 144
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	vld	$vr0, $fp, 24
	st.d	$fp, $sp, 40
	st.d	$a0, $s1, 0
	vst	$vr0, $s1, 8
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	vst	$vr0, $s2, 0
	addi.d	$a0, $sp, 104
	vldi	$vr1, -912
	addi.d	$a2, $sp, 40
	move	$a1, $s0
	fmov.d	$fa0, $fs0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(walksub)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	ld.d	$a0, $s3, 0
	vld	$vr1, $s3, 8
	fst.d	$fa0, $fp, 120
	st.d	$a0, $fp, 96
	vst	$vr1, $fp, 104
	ld.d	$fp, $fp, 136
	vst	$vr1, $sp, 48
	st.d	$a0, $sp, 40
	bnez	$fp, .LBB15_2
# %bb.3:
	fld.d	$fs0, $sp, 168                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
.LBB15_4:                               # %._crit_edge
	ret
.Lfunc_end15:
	.size	grav, .Lfunc_end15-grav
                                        # -- End function
	.globl	gravstep                        # -- Begin function gravstep
	.p2align	5
	.type	gravstep,@function
gravstep:                               # @gravstep
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$a1, $a0
	ld.d	$a0, $fp, 16
	vld	$vr1, $fp, 24
	fmul.d	$fa0, $fa0, $fa0
	st.d	$fp, $sp, 16
	st.d	$a0, $sp, 24
	vst	$vr1, $sp, 32
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 48
	vst	$vr1, $sp, 64
	addi.d	$a0, $sp, 80
	vldi	$vr1, -912
	addi.d	$a2, $sp, 16
	move	$a3, $zero
	pcaddu18i	$ra, %call36(walksub)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 128
	ld.d	$a0, $sp, 120
	fld.d	$fa1, $sp, 112
	vst	$vr0, $sp, 24
	st.d	$a0, $sp, 16
	fst.d	$fa1, $fp, 120
	st.d	$a0, $fp, 96
	vst	$vr0, $fp, 104
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end16:
	.size	gravstep, .Lfunc_end16-gravstep
                                        # -- End function
	.globl	hackgrav                        # -- Begin function hackgrav
	.p2align	5
	.type	hackgrav,@function
hackgrav:                               # @hackgrav
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	vld	$vr1, $fp, 24
	fmul.d	$fa0, $fa0, $fa0
	st.d	$fp, $sp, 16
	st.d	$a0, $sp, 24
	vst	$vr1, $sp, 32
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 48
	vst	$vr1, $sp, 64
	addi.d	$a0, $sp, 80
	vldi	$vr1, -912
	addi.d	$a2, $sp, 16
	move	$a3, $zero
	pcaddu18i	$ra, %call36(walksub)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 128
	ld.d	$a0, $sp, 120
	fld.d	$fa1, $sp, 112
	vst	$vr0, $sp, 24
	st.d	$a0, $sp, 16
	fst.d	$fa1, $fp, 120
	st.d	$a0, $fp, 96
	vst	$vr0, $fp, 104
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end17:
	.size	hackgrav, .Lfunc_end17-hackgrav
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gravsub
.LCPI18_0:
	.dword	0x3f647ae147ae147c              # double 0.0025000000000000005
	.text
	.globl	gravsub
	.p2align	5
	.type	gravsub,@function
gravsub:                                # @gravsub
# %bb.0:                                # %.preheader32.preheader
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fld.d	$fa0, $a1, 32
	fld.d	$fa1, $a2, 24
	vld	$vr2, $a1, 16
	vld	$vr3, $a2, 8
	fsub.d	$fs1, $fa0, $fa1
	vfsub.d	$vr3, $vr2, $vr3
	vreplvei.d	$vr0, $vr3, 0
	movgr2fr.d	$fa1, $zero
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	pcalau12i	$a3, %pc_hi20(.LCPI18_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI18_0)
	vreplvei.d	$vr2, $vr3, 1
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmadd.d	$fa0, $fs1, $fs1, $fa0
	fadd.d	$fs0, $fa0, $fa1
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB18_2
.LBB18_1:                               # %.preheader32.preheader.split
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a2, 32
	fdiv.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 32
	fdiv.d	$fa0, $fa0, $fs0
	vreplvei.d	$vr1, $vr0, 0
	vld	$vr2, $a2, 40
	vfmul.d	$vr1, $vr1, $vr3
	fld.d	$fa3, $a2, 56
	fmul.d	$fa0, $fa0, $fs1
	vfadd.d	$vr1, $vr2, $vr1
	vst	$vr1, $a2, 40
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a2, 56
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	ld.d	$a1, $a2, 32
	vld	$vr2, $a2, 48
	ld.d	$a2, $a2, 40
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $a0, 32
	st.d	$a2, $a0, 40
	vst	$vr2, $a0, 48
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB18_2:                               # %call.sqrt
	fmov.d	$fa0, $fs0
	move	$fp, $a2
	move	$s1, $a0
	move	$s0, $a1
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	move	$a1, $s0
	move	$a0, $s1
	move	$a2, $fp
	b	.LBB18_1
.Lfunc_end18:
	.size	gravsub, .Lfunc_end18-gravsub
                                        # -- End function
	.globl	subdivp                         # -- Begin function subdivp
	.p2align	5
	.type	subdivp,@function
subdivp:                                # @subdivp
# %bb.0:
	ld.hu	$a2, $a0, 0
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB19_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB19_2:                               # %.preheader19
	fld.d	$fa2, $a0, 16
	fld.d	$fa3, $a1, 8
	fld.d	$fa4, $a0, 24
	fld.d	$fa5, $a1, 16
	fld.d	$fa6, $a0, 32
	fld.d	$fa7, $a1, 24
	fsub.d	$fa2, $fa2, $fa3
	fsub.d	$fa3, $fa4, $fa5
	fsub.d	$fa4, $fa6, $fa7
	movgr2fr.d	$fa5, $zero
	fmadd.d	$fa2, $fa2, $fa2, $fa5
	fmadd.d	$fa2, $fa3, $fa3, $fa2
	fmadd.d	$fa2, $fa4, $fa4, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end19:
	.size	subdivp, .Lfunc_end19-subdivp
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function expandbox
.LCPI20_0:
	.dword	0x408f400000000000              # double 1000
.LCPI20_1:
	.dword	0x41d0000000000000              # double 1073741824
	.text
	.globl	expandbox
	.p2align	5
	.type	expandbox,@function
expandbox:                              # @expandbox
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 48                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	fld.d	$fa0, $a0, 32
	fld.d	$fa6, $a1, 16
	fld.d	$fs1, $a1, 24
	fld.d	$fs3, $a1, 0
	fld.d	$fs0, $a1, 8
	fsub.d	$fa0, $fa0, $fa6
	fdiv.d	$fa0, $fa0, $fs1
	movgr2fr.d	$fs2, $zero
	fcmp.cult.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB20_6
# %bb.1:
	vldi	$vr1, -912
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB20_6
# %bb.2:
	fld.d	$fa0, $s0, 24
	fsub.d	$fa0, $fa0, $fs0
	fdiv.d	$fa0, $fa0, $fs1
	fcmp.cult.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB20_6
# %bb.3:
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB20_6
# %bb.4:
	fld.d	$fa0, $s0, 16
	fsub.d	$fa0, $fa0, $fs3
	fdiv.d	$fa0, $fa0, $fs1
	fcmp.cult.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB20_6
# %bb.5:
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_31
.LBB20_6:                               # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI20_0)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI20_0)
	fcmp.cule.d	$fcc0, $fs4, $fs1
	bcnez	$fcc0, .LBB20_32
# %bb.7:                                # %.preheader52.preheader.preheader
	vldi	$vr7, -928
	pcalau12i	$s1, %pc_hi20(cp_free_list)
	ori	$s2, $zero, 2
	pcalau12i	$a0, %pc_hi20(.LCPI20_1)
	fld.d	$ft0, $a0, %pc_lo12(.LCPI20_1)
	vrepli.b	$vr9, 0
	vldi	$vr10, -912
	lu12i.w	$s3, 131072
	fst.d	$ft0, $sp, 32                   # 8-byte Folded Spill
	vst	$vr9, $sp, 16                   # 16-byte Folded Spill
	b	.LBB20_9
	.p2align	4, , 16
.LBB20_8:                               # %.backedge
                                        #   in Loop: Header=BB20_9 Depth=1
	fcmp.clt.d	$fcc0, $fs1, $fs4
	bceqz	$fcc0, .LBB20_32
.LBB20_9:                               # %.preheader52.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 16
	fmadd.d	$fs5, $fs1, $fa7, $fs3
	fcmp.clt.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB20_13
# %bb.10:                               # %.preheader.1
                                        #   in Loop: Header=BB20_9 Depth=1
	fld.d	$fa0, $s0, 24
	fmadd.d	$fs6, $fs1, $fa7, $fs0
	fcmp.cule.d	$fcc0, $fs6, $fa0
	bceqz	$fcc0, .LBB20_14
.LBB20_11:                              # %.preheader.2
                                        #   in Loop: Header=BB20_9 Depth=1
	fld.d	$fa0, $s0, 32
	fmadd.d	$fs7, $fs1, $fa7, $fa6
	fcmp.cule.d	$fcc0, $fs7, $fa0
	bceqz	$fcc0, .LBB20_15
.LBB20_12:                              #   in Loop: Header=BB20_9 Depth=1
	ld.d	$a0, $fp, 32
	fadd.d	$fs1, $fs1, $fs1
	fst.d	$fs1, $fp, 24
	bnez	$a0, .LBB20_16
	b	.LBB20_8
	.p2align	4, , 16
.LBB20_13:                              #   in Loop: Header=BB20_9 Depth=1
	fsub.d	$fs3, $fs3, $fs1
	fst.d	$fs3, $fp, 0
	fld.d	$fa0, $s0, 24
	fmadd.d	$fs6, $fs1, $fa7, $fs0
	fcmp.cule.d	$fcc0, $fs6, $fa0
	bcnez	$fcc0, .LBB20_11
.LBB20_14:                              #   in Loop: Header=BB20_9 Depth=1
	fsub.d	$fs0, $fs0, $fs1
	fst.d	$fs0, $fp, 8
	fld.d	$fa0, $s0, 32
	fmadd.d	$fs7, $fs1, $fa7, $fa6
	fcmp.cule.d	$fcc0, $fs7, $fa0
	bcnez	$fcc0, .LBB20_12
.LBB20_15:                              #   in Loop: Header=BB20_9 Depth=1
	fsub.d	$fa6, $fa6, $fs1
	fst.d	$fa6, $fp, 16
	ld.d	$a0, $fp, 32
	fadd.d	$fs1, $fs1, $fs1
	fst.d	$fs1, $fp, 24
	beqz	$a0, .LBB20_8
.LBB20_16:                              #   in Loop: Header=BB20_9 Depth=1
	ld.d	$a0, $s1, %pc_lo12(cp_free_list)
	beqz	$a0, .LBB20_18
# %bb.17:                               #   in Loop: Header=BB20_9 Depth=1
	ld.d	$a1, $a0, 112
	st.d	$a1, $s1, %pc_lo12(cp_free_list)
	b	.LBB20_19
	.p2align	4, , 16
.LBB20_18:                              #   in Loop: Header=BB20_9 Depth=1
	ori	$a0, $zero, 120
	fst.d	$fa6, $sp, 40                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr10, -912
	vld	$vr9, $sp, 16                   # 16-byte Folded Reload
	fld.d	$ft0, $sp, 32                   # 8-byte Folded Reload
	vldi	$vr7, -928
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
.LBB20_19:                              # %cell_alloc.exit
                                        #   in Loop: Header=BB20_9 Depth=1
	move	$a1, $zero
	st.h	$s2, $a0, 0
	st.w	$zero, $a0, 40
	vst	$vr9, $a0, 48
	vst	$vr9, $a0, 64
	vst	$vr9, $a0, 80
	fsub.d	$fa0, $fs5, $fs3
	fdiv.d	$fa0, $fa0, $fs1
	fcmp.cult.d	$fcc0, $fa0, $fs2
	fcmp.cule.d	$fcc1, $ft2, $fa0
	vst	$vr9, $a0, 96
	movcf2gr	$a2, $fcc0
	movcf2gr	$a3, $fcc1
	or	$a2, $a2, $a3
	fsub.d	$fa1, $fs6, $fs0
	fdiv.d	$fa1, $fa1, $fs1
	fcmp.cult.d	$fcc0, $fa1, $fs2
	ori	$a3, $zero, 1
	bcnez	$fcc0, .LBB20_22
# %bb.20:                               # %cell_alloc.exit
                                        #   in Loop: Header=BB20_9 Depth=1
	fcmp.cule.d	$fcc0, $ft2, $fa1
	bcnez	$fcc0, .LBB20_22
# %bb.21:                               #   in Loop: Header=BB20_9 Depth=1
	fmul.d	$fa1, $fa1, $ft0
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	srli.d	$a1, $a1, 28
	andi	$a1, $a1, 2
	move	$a3, $a2
.LBB20_22:                              #   in Loop: Header=BB20_9 Depth=1
	fsub.d	$fa1, $fs7, $fa6
	fdiv.d	$fa1, $fa1, $fs1
	fcmp.cult.d	$fcc0, $fa1, $fs2
	bcnez	$fcc0, .LBB20_33
# %bb.23:                               #   in Loop: Header=BB20_9 Depth=1
	fcmp.cule.d	$fcc0, $ft2, $fa1
	bcnez	$fcc0, .LBB20_33
# %bb.24:                               #   in Loop: Header=BB20_9 Depth=1
	bnez	$a3, .LBB20_33
# %bb.25:                               #   in Loop: Header=BB20_9 Depth=1
	addi.d	$a3, $a0, 48
	fmul.d	$fa1, $fa1, $ft0
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a4, $fa1
	fmul.d	$fa0, $fa0, $ft0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	and	$a5, $a5, $s3
	srli.d	$a5, $a5, 27
	masknez	$a2, $a5, $a2
	or	$a1, $a1, $a2
	bstrpick.d	$a2, $a4, 29, 29
	ld.d	$a4, $fp, 32
	fld.d	$fa0, $s0, 32
	or	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	stx.d	$a4, $a3, $a1
	fsub.d	$fa0, $fa0, $fa6
	fdiv.d	$fa0, $fa0, $fs1
	fcmp.cult.d	$fcc0, $fa0, $fs2
	st.d	$a0, $fp, 32
	bcnez	$fcc0, .LBB20_8
# %bb.26:                               #   in Loop: Header=BB20_9 Depth=1
	fcmp.cule.d	$fcc0, $ft2, $fa0
	bcnez	$fcc0, .LBB20_8
# %bb.27:                               #   in Loop: Header=BB20_9 Depth=1
	fld.d	$fa0, $s0, 24
	fsub.d	$fa0, $fa0, $fs0
	fdiv.d	$fa0, $fa0, $fs1
	fcmp.cult.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB20_8
# %bb.28:                               #   in Loop: Header=BB20_9 Depth=1
	fcmp.cule.d	$fcc0, $ft2, $fa0
	bcnez	$fcc0, .LBB20_8
# %bb.29:                               #   in Loop: Header=BB20_9 Depth=1
	fld.d	$fa0, $s0, 16
	fsub.d	$fa0, $fa0, $fs3
	fdiv.d	$fa0, $fa0, $fs1
	fcmp.cult.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB20_8
# %bb.30:                               #   in Loop: Header=BB20_9 Depth=1
	fcmp.clt.d	$fcc0, $fa0, $ft2
	bceqz	$fcc0, .LBB20_8
.LBB20_31:                              # %._crit_edge
	fld.d	$fs7, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB20_32:                              # %._crit_edge75
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 999
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB20_33:                              # %intcoord1.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	expandbox, .Lfunc_end20-expandbox
                                        # -- End function
	.globl	loadtree                        # -- Begin function loadtree
	.p2align	5
	.type	loadtree,@function
loadtree:                               # @loadtree
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	beqz	$a3, .LBB21_8
# %bb.1:
	move	$s0, $a4
	beqz	$a4, .LBB21_9
# %bb.2:
	move	$fp, $a3
	ld.hu	$a3, $a3, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB21_7
# %bb.3:
	move	$s2, $a1
	move	$s3, $a2
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(cp_free_list)
	ld.d	$s1, $a0, %pc_lo12(cp_free_list)
	beqz	$s1, .LBB21_5
# %bb.4:
	ld.d	$a1, $s1, 112
	st.d	$a1, $a0, %pc_lo12(cp_free_list)
	b	.LBB21_6
.LBB21_5:
	ori	$a0, $zero, 120
	move	$s1, $a5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a5, $s1
	move	$s1, $a0
.LBB21_6:                               # %cell_alloc.exit
	ori	$a0, $zero, 2
	st.h	$a0, $s1, 0
	st.w	$zero, $s1, 40
	addi.d	$s6, $s1, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 48
	vst	$vr0, $s1, 64
	vst	$vr0, $s1, 80
	vst	$vr0, $s1, 96
	move	$a0, $fp
	move	$a1, $a5
	move	$a2, $s0
	move	$s5, $a5
	pcaddu18i	$ra, %call36(subindex)
	jirl	$ra, $ra, 0
	move	$a5, $s5
	slli.d	$a0, $a0, 3
	stx.d	$fp, $s6, $a0
	move	$fp, $s1
	move	$a0, $s4
	move	$a2, $s3
	move	$a1, $s2
.LBB21_7:
	srli.d	$a3, $a1, 32
	and	$a4, $s0, $a1
	addi.w	$a4, $a4, 0
	sltu	$a4, $zero, $a4
	slli.d	$a4, $a4, 5
	and	$a3, $s0, $a3
	sltu	$a3, $zero, $a3
	and	$a6, $s0, $a2
	addi.w	$a6, $a6, 0
	sltu	$a6, $zero, $a6
	alsl.d	$a3, $a3, $fp, 4
	add.d	$a3, $a3, $a4
	alsl.d	$s1, $a6, $a3, 3
	ld.d	$a3, $s1, 48
	srai.d	$a4, $s0, 1
	pcaddu18i	$ra, %call36(loadtree)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 48
	move	$a0, $fp
.LBB21_8:                               # %common.ret38
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB21_9:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	loadtree, .Lfunc_end21-loadtree
                                        # -- End function
	.globl	hackcofm                        # -- Begin function hackcofm
	.p2align	5
	.type	hackcofm,@function
hackcofm:                               # @hackcofm
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB22_17
# %bb.1:                                # %.preheader47.preheader
	ld.d	$s0, $fp, 48
	beqz	$s0, .LBB22_19
# %bb.2:                                # %.preheader.preheader
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hackcofm)
	jirl	$ra, $ra, 0
	vld	$vr1, $s0, 16
	fld.d	$fa2, $s0, 32
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr3, $vr0, 0
	vfmul.d	$vr1, $vr3, $vr1
	fmul.d	$fa2, $fa0, $fa2
	vrepli.b	$vr3, 0
	vfadd.d	$vr3, $vr1, $vr3
	movgr2fr.d	$fa1, $zero
	fadd.d	$fs0, $fa2, $fa1
	fadd.d	$fa1, $fa0, $fa1
	ld.d	$s0, $fp, 56
	beqz	$s0, .LBB22_4
.LBB22_3:                               # %.preheader.preheader.1
	move	$a0, $s0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(hackcofm)
	jirl	$ra, $ra, 0
	vld	$vr1, $s0, 16
	fld.d	$fa2, $s0, 32
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr3, $vr0, 0
	vfmul.d	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	fmul.d	$fa2, $fa0, $fa2
	vfadd.d	$vr3, $vr3, $vr1
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fs0, $fs0, $fa2
	fadd.d	$fa1, $fa1, $fa0
.LBB22_4:                               # %.loopexit45.1
	ld.d	$s0, $fp, 64
	beqz	$s0, .LBB22_6
# %bb.5:                                # %.preheader.preheader.2
	move	$a0, $s0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(hackcofm)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, 32
	vld	$vr2, $s0, 16
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	fmul.d	$fa1, $fa0, $fa1
	vreplvei.d	$vr3, $vr0, 0
	vfmul.d	$vr2, $vr3, $vr2
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	vfadd.d	$vr3, $vr3, $vr2
	fadd.d	$fs0, $fs0, $fa1
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
.LBB22_6:                               # %.loopexit45.2
	ld.d	$s0, $fp, 72
	beqz	$s0, .LBB22_8
# %bb.7:                                # %.preheader.preheader.3
	move	$a0, $s0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(hackcofm)
	jirl	$ra, $ra, 0
	vld	$vr1, $s0, 16
	fld.d	$fa2, $s0, 32
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr3, $vr0, 0
	vfmul.d	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	fmul.d	$fa2, $fa0, $fa2
	vfadd.d	$vr3, $vr3, $vr1
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fs0, $fs0, $fa2
	fadd.d	$fa1, $fa1, $fa0
.LBB22_8:                               # %.loopexit45.3
	ld.d	$s0, $fp, 80
	beqz	$s0, .LBB22_10
# %bb.9:                                # %.preheader.preheader.4
	move	$a0, $s0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(hackcofm)
	jirl	$ra, $ra, 0
	vld	$vr1, $s0, 16
	fld.d	$fa2, $s0, 32
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr3, $vr0, 0
	vfmul.d	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	fmul.d	$fa2, $fa0, $fa2
	vfadd.d	$vr3, $vr3, $vr1
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fs0, $fs0, $fa2
	fadd.d	$fa1, $fa1, $fa0
.LBB22_10:                              # %.loopexit45.4
	ld.d	$s0, $fp, 88
	beqz	$s0, .LBB22_12
# %bb.11:                               # %.preheader.preheader.5
	move	$a0, $s0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(hackcofm)
	jirl	$ra, $ra, 0
	vld	$vr1, $s0, 16
	fld.d	$fa2, $s0, 32
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr3, $vr0, 0
	vfmul.d	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	fmul.d	$fa2, $fa0, $fa2
	vfadd.d	$vr3, $vr3, $vr1
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fs0, $fs0, $fa2
	fadd.d	$fa1, $fa1, $fa0
.LBB22_12:                              # %.loopexit45.5
	ld.d	$s0, $fp, 96
	beqz	$s0, .LBB22_14
# %bb.13:                               # %.preheader.preheader.6
	move	$a0, $s0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(hackcofm)
	jirl	$ra, $ra, 0
	vld	$vr1, $s0, 16
	fld.d	$fa2, $s0, 32
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr3, $vr0, 0
	vfmul.d	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	fmul.d	$fa2, $fa0, $fa2
	vfadd.d	$vr3, $vr3, $vr1
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fs0, $fs0, $fa2
	fadd.d	$fa1, $fa1, $fa0
.LBB22_14:                              # %.loopexit45.6
	ld.d	$s0, $fp, 104
	beqz	$s0, .LBB22_16
# %bb.15:                               # %.preheader.preheader.7
	move	$a0, $s0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(hackcofm)
	jirl	$ra, $ra, 0
	vld	$vr1, $s0, 16
	fld.d	$fa2, $s0, 32
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr3, $vr0, 0
	vfmul.d	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	fmul.d	$fa2, $fa0, $fa2
	vfadd.d	$vr3, $vr3, $vr1
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fs0, $fs0, $fa2
	fadd.d	$fa1, $fa1, $fa0
.LBB22_16:                              # %.loopexit45.7
	fst.d	$fa1, $fp, 8
	vreplvei.d	$vr0, $vr1, 0
	vfdiv.d	$vr0, $vr3, $vr0
	vst	$vr0, $fp, 16
	fdiv.d	$fa0, $fs0, $fa1
	fst.d	$fa0, $fp, 32
	b	.LBB22_18
.LBB22_17:
	fld.d	$fa1, $fp, 8
.LBB22_18:                              # %.loopexit
	fmov.d	$fa0, $fa1
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB22_19:
	movgr2fr.d	$fs0, $zero
	vrepli.b	$vr3, 0
	fmov.d	$fa1, $fs0
	ld.d	$s0, $fp, 56
	bnez	$s0, .LBB22_3
	b	.LBB22_4
.Lfunc_end22:
	.size	hackcofm, .Lfunc_end22-hackcofm
                                        # -- End function
	.globl	ic_test                         # -- Begin function ic_test
	.p2align	5
	.type	ic_test,@function
ic_test:                                # @ic_test
# %bb.0:
	fld.d	$fa0, $a0, 16
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a1, 24
	fsub.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	movgr2fr.d	$fa1, $zero
	fcmp.cle.d	$fcc0, $fa1, $fa0
	vldi	$vr1, -912
	vld	$vr3, $a0, 24
	vld	$vr4, $a1, 8
	fcmp.clt.d	$fcc1, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	and	$a0, $a0, $a1
	vfsub.d	$vr0, $vr3, $vr4
	vreplvei.d	$vr1, $vr2, 0
	vfdiv.d	$vr0, $vr0, $vr1
	lu52i.d	$a1, $zero, 1023
	vreplgr2vr.d	$vr1, $a1
	vfcmp.clt.d	$vr1, $vr0, $vr1
	vrepli.b	$vr2, 0
	vfcmp.cle.d	$vr0, $vr2, $vr0
	vand.v	$vr0, $vr0, $vr1
	vpickve2gr.d	$a1, $vr0, 0
	vpickve2gr.d	$a2, $vr0, 1
	and	$a1, $a2, $a1
	and	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ret
.Lfunc_end23:
	.size	ic_test, .Lfunc_end23-ic_test
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function intcoord1
.LCPI24_0:
	.dword	0x41d0000000000000              # double 1073741824
	.text
	.globl	intcoord1
	.p2align	5
	.type	intcoord1,@function
intcoord1:                              # @intcoord1
# %bb.0:
	fld.d	$fa4, $a0, 0
	fld.d	$fa3, $a0, 24
	fsub.d	$fa0, $fa0, $fa4
	fdiv.d	$fa0, $fa0, $fa3
	movgr2fr.d	$fa4, $zero
	vldi	$vr5, -912
	fcmp.clt.d	$fcc0, $fa0, $fa5
	fld.d	$fa5, $a0, 8
	fcmp.cle.d	$fcc1, $fa4, $fa0
	move	$a3, $zero
	movcf2gr	$a1, $fcc1
	movcf2gr	$a2, $fcc0
	and	$a2, $a1, $a2
	fsub.d	$fa1, $fa1, $fa5
	fdiv.d	$fa1, $fa1, $fa3
	fcmp.cult.d	$fcc0, $fa1, $fa4
	pcalau12i	$a4, %pc_hi20(.LCPI24_0)
	bcnez	$fcc0, .LBB24_3
# %bb.1:
	vldi	$vr5, -912
	fcmp.cule.d	$fcc0, $fa5, $fa1
	move	$a5, $a3
	bcnez	$fcc0, .LBB24_4
# %bb.2:
	fld.d	$fa5, $a4, %pc_lo12(.LCPI24_0)
	slli.d	$a5, $a2, 32
	fmul.d	$fa1, $fa1, $fa5
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	slli.d	$a3, $a1, 32
	b	.LBB24_4
.LBB24_3:
	move	$a5, $a3
.LBB24_4:
	fld.d	$fa1, $a0, 16
	fsub.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	fcmp.cult.d	$fcc0, $fa1, $fa4
	move	$a1, $zero
	bcnez	$fcc0, .LBB24_7
# %bb.5:
	vldi	$vr2, -912
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB24_7
# %bb.6:
	fld.d	$fa2, $a4, %pc_lo12(.LCPI24_0)
	fmul.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	bstrpick.d	$a0, $a0, 31, 0
	or	$a1, $a5, $a0
.LBB24_7:
	fld.d	$fa1, $a4, %pc_lo12(.LCPI24_0)
	fmul.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	maskeqz	$a0, $a0, $a2
	or	$a0, $a3, $a0
	ret
.Lfunc_end24:
	.size	intcoord1, .Lfunc_end24-intcoord1
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function subindex
.LCPI25_0:
	.dword	0x41d0000000000000              # double 1073741824
	.text
	.globl	subindex
	.p2align	5
	.type	subindex,@function
subindex:                               # @subindex
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fld.d	$fa0, $a0, 16
	fld.d	$fa2, $a1, 0
	fld.d	$fa1, $a1, 24
	fsub.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	movgr2fr.d	$fa2, $zero
	fcmp.cult.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB25_7
# %bb.1:
	vldi	$vr3, -912
	fcmp.clt.d	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB25_7
# %bb.2:
	fld.d	$fa3, $a0, 24
	fld.d	$fa4, $a1, 8
	fsub.d	$fa3, $fa3, $fa4
	fdiv.d	$fa3, $fa3, $fa1
	fcmp.cult.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB25_8
# %bb.3:
	vldi	$vr4, -912
	fcmp.clt.d	$fcc0, $fa3, $fa4
	bceqz	$fcc0, .LBB25_8
# %bb.4:
	fld.d	$fa4, $a0, 32
	fld.d	$fa5, $a1, 16
	fsub.d	$fa4, $fa4, $fa5
	fdiv.d	$fa1, $fa4, $fa1
	fcmp.cult.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB25_9
# %bb.5:
	vldi	$vr2, -912
	fcmp.clt.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB25_9
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.LCPI25_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI25_0)
	fmul.d	$fa3, $fa3, $fa2
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a0, $fa3
	fmul.d	$fa0, $fa0, $fa2
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	fmul.d	$fa0, $fa1, $fa2
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	and	$a1, $a2, $a1
	sltu	$a1, $zero, $a1
	slli.d	$a1, $a1, 2
	and	$a0, $a2, $a0
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 1
	or	$a0, $a0, $a1
	and	$a1, $a2, $a3
	sltu	$a1, $zero, $a1
	or	$a0, $a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB25_7:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB25_8:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB25_9:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	subindex, .Lfunc_end25-subindex
                                        # -- End function
	.globl	printtree                       # -- Begin function printtree
	.p2align	5
	.type	printtree,@function
printtree:                              # @printtree
# %bb.0:
	move	$a1, $zero
	pcaddu18i	$t8, %call36(ptree)
	jr	$t8
.Lfunc_end26:
	.size	printtree, .Lfunc_end26-printtree
                                        # -- End function
	.globl	ptree                           # -- Begin function ptree
	.p2align	5
	.type	ptree,@function
ptree:                                  # @ptree
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	beqz	$s0, .LBB27_3
	.p2align	4, , 16
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 0
	fld.d	$fa0, $s0, 16
	fld.d	$fa1, $s0, 24
	fld.d	$fa2, $s0, 32
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa2
	beq	$a0, $s2, .LBB27_4
# %bb.2:                                # %.loopexit.loopexit
                                        #   in Loop: Header=BB27_1 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	addi.w	$fp, $fp, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ptree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 56
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ptree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ptree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 72
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ptree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ptree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ptree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 96
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ptree)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 104
	bnez	$s0, .LBB27_1
.LBB27_3:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB27_4:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end27:
	.size	ptree, .Lfunc_end27-ptree
                                        # -- End function
	.globl	dis_number                      # -- Begin function dis_number
	.p2align	5
	.type	dis_number,@function
dis_number:                             # @dis_number
# %bb.0:
	pcalau12i	$a1, %pc_hi20(nbody)
	ld.w	$a1, $a1, %pc_lo12(nbody)
	pcalau12i	$a2, %pc_hi20(NumNodes)
	ld.w	$a2, $a2, %pc_lo12(NumNodes)
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	addi.w	$a1, $zero, -1
	pcaddu18i	$t8, %call36(dis2_number)
	jr	$t8
.Lfunc_end28:
	.size	dis_number, .Lfunc_end28-dis_number
                                        # -- End function
	.globl	dis2_number                     # -- Begin function dis2_number
	.p2align	5
	.type	dis2_number,@function
dis2_number:                            # @dis2_number
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	ori	$s1, $zero, 1
	beqz	$s0, .LBB29_4
	.p2align	4, , 16
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 0
	beq	$a0, $s1, .LBB29_3
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB29_1 Depth=1
	ld.d	$a0, $s0, 48
	move	$a2, $fp
	pcaddu18i	$ra, %call36(dis2_number)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(dis2_number)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 64
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(dis2_number)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 72
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(dis2_number)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 80
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(dis2_number)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 88
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(dis2_number)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 96
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(dis2_number)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 104
	move	$a1, $a0
	bnez	$s0, .LBB29_1
	b	.LBB29_4
.LBB29_3:
	addi.w	$a1, $a1, 1
	div.w	$a0, $a1, $fp
	st.w	$a0, $s0, 44
.LBB29_4:                               # %.loopexit
	move	$a0, $a1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end29:
	.size	dis2_number, .Lfunc_end29-dis2_number
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"nbody = %d, numnodes = %d\n"
	.size	.L.str, 27

	.type	nbody,@object                   # @nbody
	.comm	nbody,4,4
	.type	NumNodes,@object                # @NumNodes
	.comm	NumNodes,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Bodies per %d = %d\n"
	.size	.L.str.2, 20

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Assertion Failure #%d"
	.size	.L.str.3, 22

	.type	cp_free_list,@object            # @cp_free_list
	.bss
	.globl	cp_free_list
	.p2align	3, 0x0
cp_free_list:
	.dword	0
	.size	cp_free_list, 8

	.type	bp_free_list,@object            # @bp_free_list
	.globl	bp_free_list
	.p2align	3, 0x0
bp_free_list:
	.dword	0
	.size	bp_free_list, 8

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%2d BODY@%x %f, %f, %f\n"
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%2d CELL@%x %f, %f, %f\n"
	.size	.L.str.6, 24

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%2d NULL TREE\n"
	.size	.L.str.7, 15

	.type	root,@object                    # @root
	.comm	root,8,8
	.type	rmin,@object                    # @rmin
	.comm	rmin,24,8
	.type	xxxrsize,@object                # @xxxrsize
	.comm	xxxrsize,8,8
	.type	arg1,@object                    # @arg1
	.comm	arg1,4,4
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"bodies created "
	.size	.Lstr, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
