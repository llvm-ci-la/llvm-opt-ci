	.file	"lsx-vbitseti.c"
	.text
	.globl	check_lsx_out                   # -- Begin function check_lsx_out
	.p2align	5
	.type	check_lsx_out,@function
check_lsx_out:                          # @check_lsx_out
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s1, $a0
	slti	$a0, $a2, 16
	ori	$a1, $zero, 16
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB0_7
# %bb.2:                                # %.lr.ph.preheader
	bstrpick.d	$s3, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	bnez	$s3, .LBB0_3
# %bb.4:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 1
	bnez	$s1, .LBB0_5
	b	.LBB0_8
.LBB0_6:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_7:                                # %._crit_edge21.critedge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %._crit_edge21
	ori	$a0, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end0:
	.size	check_lsx_out, .Lfunc_end0-check_lsx_out
                                        # -- End function
	.globl	check_lsx_fp_out                # -- Begin function check_lsx_fp_out
	.p2align	5
	.type	check_lsx_fp_out,@function
check_lsx_fp_out:                       # @check_lsx_fp_out
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 8
	maskeqz	$a2, $a2, $a0
	or	$s4, $a2, $a1
	move	$s7, $zero
	ori	$s8, $zero, 16
	bnez	$a0, .LBB1_2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	add.d	$s7, $s7, $s4
	bgeu	$s7, $s8, .LBB1_10
.LBB1_2:                                # %.split.us
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s7
	add.d	$s5, $s2, $s7
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_1
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	fld.d	$fa0, $s6, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_9
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	fld.d	$fa0, $s5, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_1
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	add.d	$s7, $s7, $s4
	bgeu	$s7, $s8, .LBB1_10
.LBB1_6:                                # %.split
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s7
	add.d	$s5, $s2, $s7
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_5
# %bb.7:                                # %.critedge
                                        #   in Loop: Header=BB1_6 Depth=1
	fld.s	$fa0, $s6, 0
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	fld.s	$fa0, $s5, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_5
.LBB1_9:                                # %.split27.us
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(check_lsx_out)
	jr	$t8
.LBB1_10:                               # %.loopexit
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	check_lsx_fp_out, .Lfunc_end1-check_lsx_fp_out
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	72340172838076673               # 0x101010101010101
	.dword	9223372034707292159             # 0x7fffffff7fffffff
.LCPI2_1:
	.dword	2314885530818478079             # 0x2020202020207fff
	.dword	2314885530818453536             # 0x2020202020202020
.LCPI2_2:
	.dword	-4322325327075081212            # 0xc404040404040404
	.dword	289360691352306692              # 0x404040404040404
.LCPI2_3:
	.dword	637954352908761370              # 0x8da781a9c0a791a
	.dword	579408656134207770              # 0x80a791a58aa791a
.LCPI2_4:
	.dword	4503668347946000                # 0x1000100010c410
	.dword	4503668347895824                # 0x10001000100010
.LCPI2_5:
	.dword	18014673789888617               # 0x40004017fda869
	.dword	18014673391583296               # 0x40004000400040
.LCPI2_6:
	.dword	4680359865439223936             # 0x40f3fa8000800080
	.dword	4607182968564220032             # 0x3ff0008000800080
.LCPI2_7:
	.dword	4263935709876578662             # 0x3b2c8aefd44be966
	.dword	4479732298047704200             # 0x3e2b34ca59fa4c88
.LCPI2_8:
	.dword	-9223372034707292154            # 0x8000000080000006
	.dword	-9223372034707292160            # 0x8000000080000000
.LCPI2_9:
	.dword	12884901951                     # 0x30000003f
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
.LCPI2_10:
	.dword	-1880844493806836627            # 0xe5e5e5e5e4e4e46d
	.dword	-1880844493789993499            # 0xe5e5e5e5e5e5e5e5
.LCPI2_11:
	.dword	18014398509481984               # 0x40000000000000
	.dword	18014398526193919               # 0x40000000ff00ff
.LCPI2_12:
	.dword	-9194985985348948021            # 0x8064d8f6a494afcb
	.dword	6124593710505077729             # 0x54feed87bc3f2be1
.LCPI2_13:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-9223370941503897345            # 0x800000ff080000ff
.LCPI2_14:
	.dword	685368319401061767              # 0x982eadaf234ed87
	.dword	-784478616292163192             # 0xf51cf8dad6040188
.LCPI2_15:
	.dword	38654787488                     # 0x900013fa0
	.dword	38654705664                     # 0x900000000
.LCPI2_16:
	.dword	4398046511104                   # 0x40000000000
	.dword	281470681808895                 # 0xffff0000ffff
.LCPI2_17:
	.dword	2270345790022481064             # 0x1f81e3779b97f4a8
	.dword	-4261412864                     # 0xffffffff02000000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 22
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 27
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 32
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 37
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 8
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 42
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 19
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 52
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.h	$vr0, 32
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 57
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 62
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 67
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 72
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 82
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 4096
	ori	$a0, $s0, 257
	lu32i.d	$a0, 256
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 87
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 92
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 97
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 64
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 102
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 112
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 117
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vreplgr2vr.w	$vr0, $s0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 122
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 127
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 128
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 132
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 128
	lu32i.d	$a0, 128
	lu52i.d	$a0, $a0, -1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 142
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 147
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 152
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 157
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 131072
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 162
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 2048
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 172
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 177
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 264708
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 182
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 187
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 65536
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 192
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 65536
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu32i.d	$s0, 32
	vreplgr2vr.d	$vr0, $s0
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 202
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: \n"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"0x"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" %02x"
	.size	.L.str.2, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vbitseti.c"
	.size	.L.str.5, 132

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
