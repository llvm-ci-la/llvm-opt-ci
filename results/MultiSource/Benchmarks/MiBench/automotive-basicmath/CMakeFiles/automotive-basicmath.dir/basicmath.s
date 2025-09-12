	.file	"basicmath.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 112                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, 1028
	movgr2fr.d	$fa2, $a0
	vldi	$vr0, -912
	vldi	$vr1, -859
	vldi	$vr3, -834
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	addi.d	$s0, $sp, 88
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_2
.LBB0_3:                                # %._crit_edge
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vldi	$vr1, -878
	vldi	$vr2, -975
	vldi	$vr3, -834
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	addi.d	$s0, $sp, 88
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_6
# %bb.4:                                # %.lr.ph110.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph110
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_5
.LBB0_6:                                # %._crit_edge111
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vldi	$vr1, -884
	vldi	$vr2, -970
	vldi	$vr3, -833
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	addi.d	$s0, $sp, 88
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_9
# %bb.7:                                # %.lr.ph114.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph114
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_8
.LBB0_9:                                # %._crit_edge115
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 98304
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa3, $a0
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1638
	lu32i.d	$a0, -301466
	lu52i.d	$a0, $a0, -1022
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	vldi	$vr2, -912
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	addi.d	$s0, $sp, 88
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_12
# %bb.10:                               # %.lr.ph118.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph118
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_11
.LBB0_12:                               # %._crit_edge119
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 503316
	ori	$a0, $a0, 1966
	lu32i.d	$a0, -479724
	lu52i.d	$a0, $a0, 1026
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -1016
	vldi	$vr2, -1004
	vldi	$vr3, -984
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	addi.d	$s0, $sp, 88
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_15
# %bb.13:                               # %.lr.ph122.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_14:                               # %.lr.ph122
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_14
.LBB0_15:                               # %._crit_edge123
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -251659
	ori	$a0, $a0, 3113
	lu32i.d	$a0, 63733
	lu52i.d	$a0, $a0, -1019
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, 498073
	lu52i.d	$a0, $a0, -1021
	movgr2fr.d	$fa3, $a0
	vldi	$vr0, -864
	vldi	$vr2, -1000
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	addi.d	$s0, $sp, 88
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_18
# %bb.16:                               # %.lr.ph126.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_17:                               # %.lr.ph126
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_17
.LBB0_18:                               # %._crit_edge127
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 425984
	lu52i.d	$a1, $a1, 1028
	movgr2fr.d	$fa0, $a1
	lu32i.d	$a0, 65536
	lu52i.d	$a0, $a0, 1028
	movgr2fr.d	$fa3, $a0
	lu12i.w	$a0, 251658
	ori	$a0, $a0, 983
	lu32i.d	$a0, 87818
	lu52i.d	$a0, $a0, 1026
	movgr2fr.d	$fa1, $a0
	vldi	$vr2, -994
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	addi.d	$s0, $sp, 88
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_21
# %bb.19:                               # %.lr.ph130.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_20:                               # %.lr.ph130
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_20
.LBB0_21:                               # %._crit_edge131
	ori	$a0, $zero, 10
	ori	$s1, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 209715
	ori	$a0, $a0, 819
	move	$a1, $a0
	lu32i.d	$a1, -314573
	lu52i.d	$a1, $a1, -1025
	movgr2fr.d	$fa1, $a1
	lu32i.d	$a0, 340787
	lu52i.d	$a0, $a0, 1025
	movgr2fr.d	$fa2, $a0
	vldi	$vr0, -856
	vldi	$vr3, -976
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	addi.d	$s0, $sp, 88
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_24
# %bb.22:                               # %.lr.ph134.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_23:                               # %.lr.ph134
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	blt	$s2, $a0, .LBB0_23
.LBB0_24:                               # %._crit_edge135
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$fp, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	lu12i.w	$a0, -234882
	ori	$a0, $a0, 3998
	lu32i.d	$a0, 472907
	lu52i.d	$a0, $a0, -1025
	lu12i.w	$s3, -469763
	ori	$a1, $s3, 3900
	movgr2fr.d	$fs0, $a0
	move	$a0, $a1
	lu32i.d	$a0, -102761
	lu52i.d	$a0, $a0, -1025
	movgr2fr.d	$fs1, $a0
	lu12i.w	$a0, -352322
	ori	$a0, $a0, 1901
	lu32i.d	$a0, 185073
	lu52i.d	$a0, $a0, -1024
	movgr2fr.d	$fs2, $a0
	lu32i.d	$a1, 421527
	lu52i.d	$a0, $a1, -1024
	movgr2fr.d	$fs3, $a0
	lu12i.w	$a0, 461373
	ori	$a0, $a0, 1803
	lu32i.d	$a0, -390595
	lu52i.d	$a0, $a0, -1024
	movgr2fr.d	$fs4, $a0
	lu12i.w	$a0, 343932
	ori	$a0, $a0, 3802
	lu32i.d	$a0, -154141
	lu52i.d	$a0, $a0, -1024
	movgr2fr.d	$fs5, $a0
	lu12i.w	$a0, -411042
	ori	$a0, $a0, 852
	lu32i.d	$a0, 41156
	lu52i.d	$a0, $a0, -1023
	movgr2fr.d	$fs6, $a0
	lu12i.w	$a0, -293602
	ori	$a0, $a0, 2949
	lu32i.d	$a0, 230686
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fs7, $a0
	movgr2fr.d	$fa0, $zero
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	vldi	$vr0, -912
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=1
	addi.w	$s2, $s2, 1
	vldi	$vr0, -912
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	beq	$s2, $s1, .LBB0_57
.LBB0_26:                               # %.preheader106
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_35 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_41 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #         Child Loop BB0_47 Depth 4
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_53 Depth 4
                                        #         Child Loop BB0_56 Depth 4
	vldi	$vr0, -988
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_27:                               #   in Loop: Header=BB0_28 Depth=2
	vldi	$vr0, -816
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fld.d	$fa0, $sp, 8                    # 8-byte Folded Reload
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_25
.LBB0_28:                               # %.preheader105
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_35 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_41 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #         Child Loop BB0_47 Depth 4
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_53 Depth 4
                                        #         Child Loop BB0_56 Depth 4
	vldi	$vr2, -1004
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %._crit_edge139.8
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	fadd.d	$fa2, $fa2, $fs7
	vldi	$vr0, -978
	fcmp.clt.d	$fcc0, $fa2, $fa0
	bceqz	$fcc0, .LBB0_27
.LBB0_30:                               # %.preheader
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_35 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_41 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #         Child Loop BB0_47 Depth 4
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_53 Depth 4
                                        #         Child Loop BB0_56 Depth 4
	vldi	$vr3, -784
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_33
# %bb.31:                               # %.lr.ph138.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	.p2align	4, , 16
.LBB0_32:                               # %.lr.ph138
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_32
.LBB0_33:                               # %._crit_edge139
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_36
# %bb.34:                               # %.lr.ph138.1.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	.p2align	4, , 16
.LBB0_35:                               # %.lr.ph138.1
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_35
.LBB0_36:                               # %._crit_edge139.1
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs1
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_39
# %bb.37:                               # %.lr.ph138.2.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	.p2align	4, , 16
.LBB0_38:                               # %.lr.ph138.2
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_38
.LBB0_39:                               # %._crit_edge139.2
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs2
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_42
# %bb.40:                               # %.lr.ph138.3.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	.p2align	4, , 16
.LBB0_41:                               # %.lr.ph138.3
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_41
.LBB0_42:                               # %._crit_edge139.3
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs3
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_45
# %bb.43:                               # %.lr.ph138.4.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	.p2align	4, , 16
.LBB0_44:                               # %.lr.ph138.4
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_44
.LBB0_45:                               # %._crit_edge139.4
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_48
# %bb.46:                               # %.lr.ph138.5.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	.p2align	4, , 16
.LBB0_47:                               # %.lr.ph138.5
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_47
.LBB0_48:                               # %._crit_edge139.5
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs5
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_51
# %bb.49:                               # %.lr.ph138.6.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	.p2align	4, , 16
.LBB0_50:                               # %.lr.ph138.6
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_50
.LBB0_51:                               # %._crit_edge139.6
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs6
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_54
# %bb.52:                               # %.lr.ph138.7.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	.p2align	4, , 16
.LBB0_53:                               # %.lr.ph138.7
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_53
.LBB0_54:                               # %._crit_edge139.7
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$a0, $s3, 3899
	lu32i.d	$a0, 159383
	lu52i.d	$a0, $a0, -1023
	movgr2fr.d	$fa3, $a0
	addi.d	$a0, $sp, 84
	addi.d	$a1, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	blez	$a0, .LBB0_29
# %bb.55:                               # %.lr.ph138.8.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	.p2align	4, , 16
.LBB0_56:                               # %.lr.ph138.8
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_56
	b	.LBB0_29
.LBB0_57:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$fp, $zero, -2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	lu12i.w	$a0, 24
	ori	$s1, $a0, 1694
	.p2align	4, , 16
.LBB0_58:                               # =>This Inner Loop Header: Depth=1
	addi.w	$fp, $fp, 2
	addi.d	$a1, $sp, 76
	move	$a0, $fp
	pcaddu18i	$ra, %call36(usqrt)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 76
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bltu	$fp, $s1, .LBB0_58
# %bb.59:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	lu12i.w	$s1, 4
	lu12i.w	$a0, 261840
	ori	$fp, $a0, 361
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s0, $a0, %pc_lo12(.L.str.6)
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 76
	move	$a0, $fp
	pcaddu18i	$ra, %call36(usqrt)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 76
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	addi.w	$fp, $fp, 1
	bnez	$s1, .LBB0_60
# %bb.61:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fs0, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 425984
	lu52i.d	$a1, $a0, 1030
	movgr2fr.d	$fs1, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$fp, $a1, %pc_lo12(.L.str.8)
	lu12i.w	$a1, -184550
	ori	$a1, $a1, 2556
	lu32i.d	$a1, 25165
	lu52i.d	$a1, $a1, 1013
	movgr2fr.d	$fs2, $a1
	lu52i.d	$a0, $a0, 1031
	movgr2fr.d	$fs3, $a0
	.p2align	4, , 16
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	fmul.d	$fa0, $fs4, $fs0
	fdiv.d	$fa0, $fa0, $fs1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a1, $fs4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fadd.d	$fs4, $fs4, $fs2
	fcmp.cle.d	$fcc0, $fs4, $fs3
	bcnez	$fcc0, .LBB0_62
# %bb.63:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs1, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, 425984
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fs2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$fp, $a0, %pc_lo12(.L.str.10)
	lu12i.w	$a0, -383703
	ori	$a0, $a0, 3385
	lu32i.d	$a0, 122694
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fs3, $a0
	lu12i.w	$a0, -428544
	ori	$a0, $a0, 2971
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1025
	movgr2fr.d	$fs4, $a0
	.p2align	4, , 16
.LBB0_64:                               # =>This Inner Loop Header: Depth=1
	fmul.d	$fa0, $fs1, $fs2
	fdiv.d	$fa0, $fa0, $fs0
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a1, $fs1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fadd.d	$fs1, $fs1, $fs3
	fcmp.cle.d	$fcc0, $fs1, $fs4
	bcnez	$fcc0, .LBB0_64
# %bb.65:
	move	$a0, $zero
	fld.d	$fs7, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 168                  # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Solutions:"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" %f"
	.size	.L.str.2, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"sqrt(%3d) = %2d\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"sqrt(%X) = %X\n"
	.size	.L.str.6, 15

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%3.0f degrees = %.12f radians\n"
	.size	.L.str.8, 31

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%.12f radians = %3.0f degrees\n"
	.size	.L.str.10, 31

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"********* CUBIC FUNCTIONS ***********"
	.size	.Lstr, 38

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"********* INTEGER SQR ROOTS ***********"
	.size	.Lstr.1, 40

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"********* ANGLE CONVERSION ***********"
	.size	.Lstr.2, 39

	.section	".note.GNU-stack","",@progbits
	.addrsig
