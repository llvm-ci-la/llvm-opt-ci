	.file	"main.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(build_tree)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Compute_Tree)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	vst	$vr0, $fp, 32
	vst	$vr1, $fp, 48
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1638
	lu32i.d	$a0, 419430
	lu52i.d	$a0, $a0, 1022
	st.d	$a0, $fp, 16
	lu12i.w	$a0, 125829
	ori	$a0, $a0, 492
	lu32i.d	$a0, 125829
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s0, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 231424
	lu52i.d	$a1, $a1, 1036
	movgr2fr.d	$fs0, $a1
	lu12i.w	$a1, -487882
	ori	$a1, $a1, 2289
	lu32i.d	$a1, 325813
	lu52i.d	$a1, $a1, 1006
	movgr2fr.d	$fs1, $a1
	lu12i.w	$a1, -209716
	ori	$a1, $a1, 3277
	lu32i.d	$a1, 314572
	lu52i.d	$a1, $a1, -1026
	movgr2fr.d	$fa1, $a1
	fst.d	$fa1, $sp, 16                   # 8-byte Folded Spill
	lu12i.w	$a1, 293601
	ori	$a1, $a1, 1147
	lu32i.d	$a1, 293601
	lu52i.d	$a1, $a1, 1016
	movgr2fr.d	$fs3, $a1
	ori	$s2, $zero, 35
	pcalau12i	$a1, %pc_hi20(map_P)
	addi.d	$s3, $a1, %pc_lo12(map_P)
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, -1019
	movgr2fr.d	$fs4, $a0
	lu12i.w	$a0, 41943
	ori	$a0, $a0, 164
	lu32i.d	$a0, 41943
	lu52i.d	$a0, $a0, -1028
	movgr2fr.d	$fs5, $a0
	lu12i.w	$a0, -184550
	ori	$a0, $a0, 2556
	lu32i.d	$a0, 25165
	lu52i.d	$a0, $a0, 1014
	movgr2fr.d	$fs6, $a0
	pcalau12i	$a0, %pc_hi20(map_Q)
	addi.d	$s4, $a0, %pc_lo12(map_Q)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s1, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %._crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	fld.d	$fa4, $sp, 16                   # 8-byte Folded Reload
	fadd.d	$fa4, $fa2, $fa4
	fdiv.d	$fa4, $fa4, $fs3
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a0, $fa4
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slti	$a1, $a0, 35
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $s3, 3
	fld.d	$fa4, $a0, 8
	fldx.d	$fa5, $s3, $a1
	fsub.d	$fa2, $fa2, $fa3
	fneg.d	$fa2, $fa2
	fsub.d	$fa3, $fa4, $fa5
	fdiv.d	$fa3, $fa3, $fs4
	vldi	$vr6, -912
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa4, $fa0, $fs5
	fdiv.d	$fa4, $fa4, $fs6
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a0, $fa4
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slti	$a1, $a0, 35
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $s4, 3
	fld.d	$fa4, $a0, 8
	fldx.d	$fa5, $s4, $a1
	fdiv.d	$fs7, $fa2, $fa3
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fsub.d	$fa1, $fa4, $fa5
	vldi	$vr2, -844
	fdiv.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa6
	fdiv.d	$fs2, $fa0, $fa1
	movfr2gr.d	$a1, $fs7
	movfr2gr.d	$a2, $fs2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 0
	fld.d	$fa1, $fp, 16
	fld.d	$fa2, $fp, 24
	vst	$vr0, $fp, 32
	fst.d	$fa1, $fp, 48
	fst.d	$fa2, $fp, 56
	fadd.d	$fa0, $fs7, $fa1
	fst.d	$fa0, $fp, 16
	fadd.d	$fa0, $fs2, $fa2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	fst.d	$fa0, $fp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Compute_Tree)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 8
	ld.d	$a3, $fp, 0
	ld.d	$a2, $fp, 24
	ld.d	$a1, $fp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 0
	fld.d	$fa2, $fp, 16
	fdiv.d	$fa3, $fa0, $fs0
	fsub.d	$fa1, $fa3, $fa2
	fld.d	$fa4, $fp, 8
	fld.d	$fa0, $fp, 24
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fs1, $fa1
	fdiv.d	$fa1, $fa4, $fs0
	bcnez	$fcc0, .LBB0_1
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	fsub.d	$fa4, $fa1, $fa0
	fabs.d	$fa4, $fa4
	fcmp.clt.d	$fcc0, $fa4, $fs1
	bceqz	$fcc0, .LBB0_1
# %bb.4:
	move	$a0, $zero
	fld.d	$fs7, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	map_P,@object                   # @map_P
	.data
	.globl	map_P
	.p2align	3, 0x0
map_P:
	.dword	0x40c1181bea684f5b              # double 8752.2180910480001
	.dword	0x40c07f0da7604e16              # double 8446.1066704160003
	.dword	0x40bfabfd9d391847              # double 8107.9906802830001
	.dword	0x40be60310b0328d4              # double 7776.1915742849997
	.dword	0x40bd1feba71e5a92              # double 7455.9205187770003
	.dword	0x40bbea9a288e9d1a              # double 7146.6021813520001
	.dword	0x40babfb582c7fdd2              # double 6847.7090268129996
	.dword	0x40b99ebbf4cb7fac              # double 6558.7342040240001
	.dword	0x40b88736a038c964              # double 6279.213382291
	.dword	0x40b778b3c360d71f              # double 6008.7021999859999
	.dword	0x40b672c94328f04a              # double 5746.7861810289996
	.dword	0x40b57514089e1eb9              # double 5493.0782564949996
	.dword	0x40b47f34d23eefb3              # double 5247.2063330970004
	.dword	0x40b390d3fc5a7b6e              # double 5008.828069358
	.dword	0x40b2a99da6100e5a              # double 4777.6158151660002
	.dword	0x40b1c9423c8414cd              # double 4553.2587358999999
	.dword	0x40b0ef7852126044              # double 4335.4700023160003
	.dword	0x40b01bf8b737f64d              # double 4123.9715456940003
	.dword	0x40ae9d00fe3cb161              # double 3918.5019396749999
	.dword	0x40ad0da29ee5a2a0              # double 3718.8176185379998
	.dword	0x40ab895e04336b67              # double 3524.6836257999998
	.dword	0x40aa0fc0ce2e9912              # double 3335.876573044
	.dword	0x40a8a06094dadcca              # double 3152.1886356730001
	.dword	0x40a73ad7c3fb86b8              # double 2973.4214171029998
	.dword	0x40a5dec3c0d24b44              # double 2799.3823304859998
	.dword	0x40a48bc8fb588c9a              # double 2629.8925426169999
	.dword	0x40a34190cf0e1aa0              # double 2464.782829705
	.dword	0x40a1ffc72f2042da              # double 2303.8890314179998
	.dword	0x40a0c61bd86709cf              # double 2147.0543853949998
	.dword	0x409f2887f539c232              # double 1994.1327713989999
	.dword	0x409cd3f0fee2d225              # double 1844.9853473129999
	.dword	0x409a8de67460b634              # double 1699.4750533209999
	.dword	0x409855e56564bc4b              # double 1557.474019598
	.dword	0x40962b71216b1250              # double 1418.8604790429999
	.dword	0x40940e149c150531              # double 1283.520126656
	.dword	0x4091fd5a1dc6f685              # double 1151.3380042159999
	.size	map_P, 288

	.type	map_Q,@object                   # @map_Q
	.globl	map_Q
	.p2align	3, 0x0
map_Q:
	.dword	0x409ba362e889eca8              # double 1768.8465901899999
	.dword	0x409aa8eaff70494f              # double 1706.2294900459999
	.dword	0x40999503f74dee8f              # double 1637.253873079
	.dword	0x4098868cc01e4645              # double 1569.6374516230001
	.dword	0x409781ad980668f2              # double 1504.419525242
	.dword	0x409685e9623ce107              # double 1441.47791381
	.dword	0x409592cd79ee94af              # double 1380.700660446
	.dword	0x4094a7ebf8969061              # double 1321.980440476
	.dword	0x4093c4e03cdebece              # double 1265.218982201
	.dword	0x4092e94a29af0c2e              # double 1210.3224246360001
	.dword	0x409214d02f7efc3d              # double 1157.203306183
	.dword	0x4091471ebfb3e82d              # double 1105.780028163
	.dword	0x40907fe5ae0bd2ad              # double 1055.9742967459999
	.dword	0x408f7db67c259dfd              # double 1007.714103979
	.dword	0x408e0771f56a7ac8              # double 960.93064387499999
	.dword	0x408c9c7843a661c3              # double 915.55872278200002
	.dword	0x408b3c4e3be519b1              # double 871.53820017800001
	.dword	0x4089e67cafb4857b              # double 828.81088200600004
	.dword	0x40889a93a84b632b              # double 787.32209834000003
	.dword	0x4087582ae34a4551              # double 747.02094133399999
	.dword	0x40861eddf459365b              # double 707.85837621400003
	.dword	0x4084ee4d79ade34a              # double 669.787829741
	.dword	0x4083c620be304940              # double 632.76598775599996
	.dword	0x4082a6032a5b597e              # double 596.75154563299998
	.dword	0x40818da2bf63b63b              # double 561.70446660899995
	.dword	0x40807cb35d7322b7              # double 527.58758058499996
	.dword	0x407ee5da1130eea4              # double 494.36573905099999
	.dword	0x407ce0140842de66              # double 462.00489069100001
	.dword	0x407ae78f8d1d2340              # double 430.47254668599999
	.dword	0x4078fbd09b21f3b5              # double 399.73842919600003
	.dword	0x40771c616f19e935              # double 369.77378759499999
	.dword	0x407548cdf9e28d31              # double 340.550287137
	.dword	0x407380a9f7cf2efd              # double 312.04149609500001
	.dword	0x4071c38e61319e33              # double 284.22226066000002
	.dword	0x4070111a83829227              # double 257.06897307399998
	.dword	0x406cd1daa162d57c              # double 230.557938283
	.size	map_Q, 288

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"TR=%4.2f, TI=%4.2f, P0=%4.2f, Q0=%4.2f\n"
	.size	.L.str.3, 40

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"D TR-%4.2f, TI=%4.2f\n"
	.size	.L.str.4, 22

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Past initialization"
	.size	.Lstr, 20

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Built tree"
	.size	.Lstr.1, 11

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"COMPUTED TREE"
	.size	.Lstr.2, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
