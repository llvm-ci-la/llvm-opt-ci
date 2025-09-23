	.file	"lasx-xvbitseti.c"
	.text
	.globl	check_lasx_out                  # -- Begin function check_lasx_out
	.p2align	5
	.type	check_lasx_out,@function
check_lasx_out:                         # @check_lasx_out
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
	slti	$a0, $a2, 32
	ori	$a1, $zero, 32
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
	.size	check_lasx_out, .Lfunc_end0-check_lasx_out
                                        # -- End function
	.globl	check_lasx_fp_out               # -- Begin function check_lasx_fp_out
	.p2align	5
	.type	check_lasx_fp_out,@function
check_lasx_fp_out:                      # @check_lasx_fp_out
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
	ori	$s8, $zero, 32
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
	pcaddu18i	$t8, %call36(check_lasx_out)
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
	.size	check_lasx_fp_out, .Lfunc_end1-check_lasx_fp_out
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	-9187201946140770053            # 0x80808081808080fb
	.dword	-9187201946140770157            # 0x8080808180808093
	.dword	-9187201946140770050            # 0x80808081808080fe
	.dword	-9187201946140770157            # 0x8080808180808093
.LCPI2_1:
	.dword	2314885530818470961             # 0x2020202020206431
	.dword	2314885530818453536             # 0x2020202020202020
	.dword	2314885530818470961             # 0x2020202020206431
	.dword	2314885530818453536             # 0x2020202020202020
.LCPI2_2:
	.dword	4629771061636907072             # 0x4040404040404040
	.dword	-1                              # 0xffffffffffffffff
	.dword	4629771061636907072             # 0x4040404040404040
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_3:
	.dword	8915926303295108984             # 0x7bbbbbbbf7777778
	.dword	1152939098206655555             # 0x1000100054445443
	.dword	8915926303295108984             # 0x7bbbbbbbf7777778
	.dword	1152939098206655555             # 0x1000100054445443
.LCPI2_4:
	.dword	562958543499450                 # 0x20002000230ba
	.dword	562958543486978                 # 0x2000200020002
	.dword	562958543499450                 # 0x20002000230ba
	.dword	562958543486978                 # 0x2000200020002
.LCPI2_5:
	.dword	-9151172603652570880            # 0x8100810081008100
	.dword	72058693566333184               # 0x100010001000100
	.dword	-9151172603652570880            # 0x8100810081008100
	.dword	72058693566333184               # 0x100010001000100
.LCPI2_6:
	.dword	4503668347926648                # 0x10001000107878
	.dword	4503668347895824                # 0x10001000100010
	.dword	4503668347926648                # 0x10001000107878
	.dword	4503668347895824                # 0x10001000100010
.LCPI2_7:
	.dword	-14335527063736                 # 0xfffff2f640006f48
	.dword	4611756392540291073             # 0x4000400140004001
	.dword	-14335527063736                 # 0xfffff2f640006f48
	.dword	4611756392540291073             # 0x4000400140004001
.LCPI2_8:
	.dword	8796093024256                   # 0x80000000800
	.dword	8796093024256                   # 0x80000000800
	.dword	-853216728385536                # 0xfffcf800fffcf800
	.dword	8796093024256                   # 0x80000000800
.LCPI2_9:
	.dword	-1653145797517196               # 0xfffa2078fffa2074
	.dword	-281479271743490                # 0xfffefffefffefffe
	.dword	-1653145797517196               # 0xfffa2078fffa2074
	.dword	-281479271743490                # 0xfffefffefffefffe
.LCPI2_10:
	.dword	18862134863593728               # 0x43030300400100
	.dword	18862134863593728               # 0x43030300400100
	.dword	18862134863594240               # 0x43030300400300
	.dword	18862134863594240               # 0x43030300400300
.LCPI2_11:
	.dword	4894298006842146512             # 0x43ec0a1b2aba7ed0
	.dword	2467258946704368471             # 0x223d76f09f37e357
	.dword	4066973239195104944             # 0x3870ca9d013e76b0
	.dword	2467258946704409087             # 0x223d76f09f3881ff
.LCPI2_12:
	.dword	-8444382447271968               # 0xffe1ffe0ffe1ffe0
	.dword	143833854818320415              # 0x1ff0020ff1f001f
	.dword	-8444382447271968               # 0xffe1ffe0ffe1ffe0
	.dword	143833854818320415              # 0x1ff0020ff1f001f
.LCPI2_13:
	.dword	-1                              # 0xffffffffffffffff
	.dword	2048                            # 0x800
	.dword	-1                              # 0xffffffffffffffff
	.dword	2048                            # 0x800
.LCPI2_14:
	.dword	140183437606911                 # 0x7f7f00007fff
	.dword	4398046511104                   # 0x40000000000
	.dword	140183437574144                 # 0x7f7f00000000
	.dword	4398046511104                   # 0x40000000000
.LCPI2_15:
	.dword	-281560951882910                # 0xfffeffebfb7afb62
	.dword	2048                            # 0x800
	.dword	-281560951882910                # 0xfffeffebfb7afb62
	.dword	2048                            # 0x800
.LCPI2_16:
	.dword	69785702432640                  # 0x3f784000ff80
	.dword	-578439906519351303             # 0xf7f8f7f84000fff9
	.dword	69785702432640                  # 0x3f784000ff80
	.dword	-578439903432345600             # 0xf7f8f7f8f800f800
.LCPI2_17:
	.dword	-16844800                       # 0xfffffffffefef800
	.dword	549755813888                    # 0x8000000000
	.dword	-16844800                       # 0xfffffffffefef800
	.dword	549755813888                    # 0x8000000000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 160
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, 2
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 24
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 16
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 31
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 38
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 8
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 45
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 32
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 52
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 59
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 64
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 66
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 73
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3346
	xvreplgr2vr.h	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 87
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.h	$xr0, 16
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 101
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, -25
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 108
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 115
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 122
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 129
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 136
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 150
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 256
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 157
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 164
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 171
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 178
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 185
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 32
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 192
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 199
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 213
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16384
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 220
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 32
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 227
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 512
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 234
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 241
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 248
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 255
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 8
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 262
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -160
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvbitseti.c"
	.size	.L.str.5, 135

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
