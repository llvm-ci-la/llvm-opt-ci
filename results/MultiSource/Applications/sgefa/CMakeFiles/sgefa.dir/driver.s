	.file	"driver.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2048
	sub.d	$sp, $sp, $a0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 32
	ori	$a5, $zero, 1
	ori	$a6, $zero, 40
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(matgen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
.LBB0_1:                                # %._crit_edge
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2048
	add.d	$sp, $sp, $a1
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_2:                                # %.lr.ph
	addi.d	$s8, $sp, 72
	ori	$s2, $zero, 1000
	movgr2fr.d	$fs0, $zero
	movgr2fr.w	$fs1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	ori	$s3, $zero, 7
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s4, $a0, %pc_lo12(.L.str.5)
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	ori	$a4, $zero, 2
	move	$a0, $a1
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(vexopy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 68
	ori	$a2, $zero, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(snrm2)
	jirl	$ra, $ra, 0
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 32
	ori	$a6, $zero, 40
	move	$a5, $fp
	pcaddu18i	$ra, %call36(matgen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_1
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	ld.w	$a2, $sp, 68
	ld.w	$a3, $sp, 64
	blt	$s2, $a2, .LBB0_21
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	blt	$s2, $a3, .LBB0_21
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	fmov.d	$fa0, $fs0
	blez	$a3, .LBB0_14
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	fmov.d	$fa0, $fs0
	blez	$a2, .LBB0_14
# %bb.9:                                # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $zero
	fmov.s	$fa0, $fs1
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s8, $a1
	move	$a4, $a2
	fmov.s	$fa1, $fs1
	.p2align	4, , 16
.LBB0_11:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa2, $a1, 0
	fneg.s	$fa3, $fa2
	fcmp.clt.s	$fcc0, $fa2, $fs1
	fsel	$fa2, $fa2, $fa3, $fcc0
	fadd.s	$fa1, $fa1, $fa2
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB0_11
# %bb.12:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_10 Depth=2
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 1
	fsel	$fa0, $fa1, $fa0, $fcc0
	bne	$a0, $a3, .LBB0_10
# %bb.13:                               # %._crit_edge33.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	fcvt.d.s	$fa0, $fa0
.LBB0_14:                               # %._crit_edge33
                                        #   in Loop: Header=BB0_5 Depth=1
	movfr2gr.d	$a1, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 32
	addi.d	$a0, $sp, 64
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sgefa)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_4
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s7, $sp, 56
	addi.d	$a0, $sp, 64
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(sgesl)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	ori	$a0, $zero, 8
	bge	$a1, $a0, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $sp, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(matdump)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	ld.d	$s6, $sp, 40
	blt	$s3, $a1, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s6
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	move	$a0, $s7
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	b	.LBB0_19
.LBB0_18:                               # %..thread_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s6, $sp, 40
.LBB0_19:                               # %.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$a4, $zero, 2
	move	$a0, $a1
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(vexopy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 68
	ori	$a2, $zero, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(snrm2)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 48
	addi.d	$a0, $sp, 64
	ori	$a3, $zero, 1
	move	$a1, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(sgesl)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	blt	$s3, $a1, .LBB0_3
# %bb.20:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	b	.LBB0_3
.LBB0_21:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function matgen
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_1:
	.dword	0x47d2ced32a16a1b1              # double 9.9999999999999997E+37
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_2:
	.word	0x42c80000                      # float 100
	.text
	.globl	matgen
	.p2align	5
	.type	matgen,@function
matgen:                                 # @matgen
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
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	ori	$a7, $zero, 2
	move	$s4, $a6
	move	$s6, $a5
	move	$s5, $a4
	move	$s8, $a3
	move	$s7, $a2
	move	$s1, $a1
	move	$s2, $a0
	blt	$a5, $a7, .LBB1_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 4
	blez	$a0, .LBB1_4
# %bb.2:                                # %.lr.ph
	move	$fp, $zero
	addi.d	$s0, $s2, 8
	.p2align	4, , 16
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	blt	$fp, $a0, .LBB1_3
.LBB1_4:                                # %._crit_edge
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_5:
	addi.d	$a0, $s6, -1
	ori	$a1, $zero, 13
	bltu	$a1, $a0, .LBB1_191
# %bb.6:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_7:
	mul.d	$a0, $s6, $s4
	alsl.w	$s3, $a0, $a0, 1
	alsl.d	$a0, $a0, $a0, 1
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s3, .LBB1_12
# %bb.8:                                # %.lr.ph.i
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $s3
	move	$s3, $s5
	move	$s5, $s1
	move	$s1, $s7
	move	$s0, $s8
	ori	$s8, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s7, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s8
	beqz	$a0, .LBB1_69
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, 8
	blt	$fp, $a0, .LBB1_9
# %bb.11:                               # %._crit_edge.i.loopexit
	ld.w	$a0, $s2, 0
	move	$s8, $s0
	move	$s7, $s1
	move	$s1, $s5
	move	$s5, $s3
	move	$s3, $s4
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
.LBB1_12:                               # %._crit_edge.i
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	move	$a3, $s7
	addi.d	$s7, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_69
# %bb.13:
	ld.d	$a1, $a3, 0
	beqz	$a1, .LBB1_69
# %bb.14:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_69
# %bb.15:
	beqz	$a0, .LBB1_69
# %bb.16:
	move	$fp, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s6
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB1_192
# %bb.17:                               # %.lr.ph520
	move	$a0, $zero
	addi.d	$a1, $s2, 8
	bstrpick.d	$a3, $s3, 30, 3
	slli.d	$a2, $a3, 3
	slli.d	$a3, $a3, 5
	mul.d	$a4, $s4, $s6
	alsl.d	$a4, $a4, $a4, 1
	sub.d	$a4, $zero, $a4
	ori	$a5, $zero, 1
	ori	$a6, $zero, 8
	movgr2fr.w	$fa0, $zero
	xvrepli.b	$xr1, 0
	move	$s7, $fp
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_18:                               # %._crit_edge517
                                        #   in Loop: Header=BB1_19 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a0, $s3, .LBB1_195
.LBB1_19:                               # %.lr.ph516
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_26 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$t2, $a1, $a7
	addi.d	$a7, $a0, -3
	addi.d	$t0, $a0, 2
	addi.d	$a0, $a0, 1
	bgeu	$s3, $a6, .LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=1
	move	$t3, $zero
	move	$t1, $t2
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_21:                               # %vector.ph751
                                        #   in Loop: Header=BB1_19 Depth=1
	add.d	$t1, $t2, $a3
	pcalau12i	$t3, %pc_hi20(.LCPI1_0)
	xvld	$xr2, $t3, %pc_lo12(.LCPI1_0)
	xvreplgr2vr.d	$xr3, $a7
	xvreplgr2vr.d	$xr4, $t0
	xvreplgr2vr.w	$xr5, $a0
	move	$t3, $a2
	.p2align	4, , 16
.LBB1_22:                               # %vector.body760
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvpermi.q	$xr6, $xr2, 1
	vpickve2gr.w	$t4, $vr6, 0
	bstrpick.d	$t4, $t4, 31, 0
	xvinsgr2vr.d	$xr7, $t4, 0
	vpickve2gr.w	$t4, $vr6, 1
	bstrpick.d	$t4, $t4, 31, 0
	xvinsgr2vr.d	$xr7, $t4, 1
	vpickve2gr.w	$t4, $vr6, 2
	bstrpick.d	$t4, $t4, 31, 0
	xvinsgr2vr.d	$xr7, $t4, 2
	vpickve2gr.w	$t4, $vr6, 3
	bstrpick.d	$t4, $t4, 31, 0
	xvinsgr2vr.d	$xr7, $t4, 3
	vpickve2gr.w	$t4, $vr2, 0
	bstrpick.d	$t4, $t4, 31, 0
	xvinsgr2vr.d	$xr6, $t4, 0
	vpickve2gr.w	$t4, $vr2, 1
	bstrpick.d	$t4, $t4, 31, 0
	xvinsgr2vr.d	$xr6, $t4, 1
	vpickve2gr.w	$t4, $vr2, 2
	bstrpick.d	$t4, $t4, 31, 0
	xvinsgr2vr.d	$xr6, $t4, 2
	vpickve2gr.w	$t4, $vr2, 3
	bstrpick.d	$t4, $t4, 31, 0
	xvinsgr2vr.d	$xr6, $t4, 3
	xvslt.d	$xr8, $xr7, $xr3
	xvslt.d	$xr9, $xr6, $xr3
	xvslt.du	$xr7, $xr4, $xr7
	xvslt.du	$xr6, $xr4, $xr6
	xvor.v	$xr6, $xr9, $xr6
	xvpickve2gr.d	$t4, $xr6, 0
	xvinsgr2vr.w	$xr9, $t4, 0
	xvpickve2gr.d	$t4, $xr6, 1
	xvinsgr2vr.w	$xr9, $t4, 1
	xvpickve2gr.d	$t4, $xr6, 2
	xvinsgr2vr.w	$xr9, $t4, 2
	xvpickve2gr.d	$t4, $xr6, 3
	xvinsgr2vr.w	$xr9, $t4, 3
	xvor.v	$xr6, $xr8, $xr7
	xvpickve2gr.d	$t4, $xr6, 0
	xvinsgr2vr.w	$xr9, $t4, 4
	xvpickve2gr.d	$t4, $xr6, 1
	xvinsgr2vr.w	$xr9, $t4, 5
	xvpickve2gr.d	$t4, $xr6, 2
	xvinsgr2vr.w	$xr9, $t4, 6
	xvpickve2gr.d	$t4, $xr6, 3
	xvinsgr2vr.w	$xr9, $t4, 7
	xvadd.w	$xr6, $xr2, $xr5
	xvffint.s.wu	$xr6, $xr6
	xvfrecip.s	$xr6, $xr6
	xvbitsel.v	$xr6, $xr6, $xr1, $xr9
	xvst	$xr6, $t2, 0
	xvaddi.wu	$xr2, $xr2, 8
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB1_22
# %bb.23:                               # %middle.block768
                                        #   in Loop: Header=BB1_19 Depth=1
	move	$t3, $a2
	beq	$a2, $s3, .LBB1_18
.LBB1_24:                               # %scalar.ph749.preheader
                                        #   in Loop: Header=BB1_19 Depth=1
	addi.w	$t2, $t3, 0
	add.w	$t4, $a4, $t3
	add.w	$t3, $t3, $a5
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_25:                               #   in Loop: Header=BB1_26 Depth=2
	fst.s	$fa2, $t1, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 1
	bstrpick.d	$t4, $t4, 31, 0
	addi.d	$t4, $t4, 1
	slli.d	$t5, $t4, 31
	addi.w	$t3, $t3, 1
	bltz	$t5, .LBB1_18
.LBB1_26:                               # %scalar.ph749
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.s	$fa2, $fa0
	blt	$t2, $a7, .LBB1_25
# %bb.27:                               # %scalar.ph749
                                        #   in Loop: Header=BB1_26 Depth=2
	fmov.s	$fa2, $fa0
	bltu	$t0, $t2, .LBB1_25
# %bb.28:                               #   in Loop: Header=BB1_26 Depth=2
	bstrpick.d	$t5, $t3, 31, 0
	movgr2fr.d	$fa2, $t5
	ffint.s.l	$fa2, $fa2
	frecip.s	$fa2, $fa2
	b	.LBB1_25
.LBB1_29:
	slli.d	$a0, $s4, 4
	sub.w	$s3, $a0, $s4
	st.w	$s3, $s2, 0
	st.w	$s3, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_34
# %bb.30:                               # %.lr.ph.i352
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $s3
	move	$s3, $s5
	move	$s5, $s1
	move	$s1, $s7
	move	$s0, $s8
	ori	$s8, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s7, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_31:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s8
	beqz	$a0, .LBB1_69
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, 8
	blt	$fp, $a0, .LBB1_31
# %bb.33:                               # %._crit_edge.i346.loopexit
	ld.w	$a0, $s2, 0
	move	$s8, $s0
	move	$s7, $s1
	move	$s1, $s5
	move	$s5, $s3
	move	$s3, $s4
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
.LBB1_34:                               # %._crit_edge.i346
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	move	$a3, $s7
	addi.d	$s7, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_69
# %bb.35:
	ld.d	$a1, $a3, 0
	beqz	$a1, .LBB1_69
# %bb.36:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_69
# %bb.37:
	beqz	$a0, .LBB1_69
# %bb.38:
	move	$fp, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s6
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_194
# %bb.39:                               # %.lr.ph512
	move	$a0, $zero
	move	$t1, $zero
	addi.d	$a1, $s6, -7
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.LCPI1_2)
	fld.s	$fa1, $a2, %pc_lo12(.LCPI1_2)
	vldi	$vr2, -1168
	movgr2cf	$fcc0, $a1
	addi.d	$a1, $s6, -8
	sltui	$a1, $a1, 1
	fsel	$fa0, $fa2, $fa1, $fcc0
	movgr2cf	$fcc0, $a1
	fsel	$fa1, $fa2, $fa1, $fcc0
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a3, $a3, $a4
	bstrpick.d	$a5, $a3, 30, 3
	slli.d	$a4, $a5, 3
	slli.d	$a5, $a5, 5
	xvreplve0.w	$xr2, $xr0
	xvreplve0.w	$xr3, $xr1
	ori	$a6, $zero, 8
	xvrepli.b	$xr4, 0
	xvrepli.b	$xr5, -1
	xvldi	$xr6, -1520
	move	$s7, $fp
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_40:                               # %._crit_edge509
                                        #   in Loop: Header=BB1_41 Depth=1
	addi.d	$a0, $a0, -4
	addi.d	$a2, $a2, -1
	move	$t1, $a7
	beq	$a7, $a3, .LBB1_195
.LBB1_41:                               # %.lr.ph508
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_66 Depth 2
	slli.d	$a7, $t1, 3
	ldx.d	$t2, $a1, $a7
	addi.d	$a7, $t1, 1
	bge	$s3, $a6, .LBB1_43
# %bb.42:                               #   in Loop: Header=BB1_41 Depth=1
	move	$t4, $zero
	move	$t0, $t2
	b	.LBB1_62
	.p2align	4, , 16
.LBB1_43:                               # %vector.ph703
                                        #   in Loop: Header=BB1_41 Depth=1
	addi.d	$t3, $t1, -1
	add.d	$t0, $t2, $a5
	xvreplgr2vr.d	$xr7, $t1
	pcalau12i	$t1, %pc_hi20(.LCPI1_0)
	xvld	$xr8, $t1, %pc_lo12(.LCPI1_0)
	xvreplgr2vr.d	$xr9, $a7
	xvreplgr2vr.w	$xr10, $t3
	addi.d	$t1, $t2, 16
	move	$t2, $a4
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_44:                               # %pred.store.continue742
                                        #   in Loop: Header=BB1_45 Depth=2
	xvaddi.wu	$xr8, $xr8, 8
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	beqz	$t2, .LBB1_61
.LBB1_45:                               # %vector.body716
                                        #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr4, $t1, -16
	xvpermi.q	$xr12, $xr8, 1
	vpickve2gr.w	$t3, $vr12, 0
	bstrpick.d	$t3, $t3, 31, 0
	xvinsgr2vr.d	$xr11, $t3, 0
	vpickve2gr.w	$t3, $vr12, 1
	bstrpick.d	$t3, $t3, 31, 0
	xvinsgr2vr.d	$xr11, $t3, 1
	vpickve2gr.w	$t3, $vr12, 2
	bstrpick.d	$t3, $t3, 31, 0
	xvinsgr2vr.d	$xr11, $t3, 2
	vpickve2gr.w	$t3, $vr12, 3
	bstrpick.d	$t3, $t3, 31, 0
	xvinsgr2vr.d	$xr11, $t3, 3
	vpickve2gr.w	$t3, $vr8, 0
	bstrpick.d	$t3, $t3, 31, 0
	xvinsgr2vr.d	$xr13, $t3, 0
	vpickve2gr.w	$t3, $vr8, 1
	bstrpick.d	$t3, $t3, 31, 0
	xvinsgr2vr.d	$xr13, $t3, 1
	vpickve2gr.w	$t3, $vr8, 2
	bstrpick.d	$t3, $t3, 31, 0
	xvinsgr2vr.d	$xr13, $t3, 2
	vpickve2gr.w	$t3, $vr8, 3
	bstrpick.d	$t3, $t3, 31, 0
	xvinsgr2vr.d	$xr13, $t3, 3
	xvseq.d	$xr14, $xr7, $xr13
	xvpickve2gr.d	$t3, $xr14, 0
	xvinsgr2vr.w	$xr12, $t3, 0
	xvpickve2gr.d	$t3, $xr14, 1
	xvinsgr2vr.w	$xr12, $t3, 1
	xvpickve2gr.d	$t3, $xr14, 2
	xvinsgr2vr.w	$xr12, $t3, 2
	xvpickve2gr.d	$t3, $xr14, 3
	xvinsgr2vr.w	$xr12, $t3, 3
	xvseq.d	$xr15, $xr7, $xr11
	xvpickve2gr.d	$t3, $xr15, 0
	xvinsgr2vr.w	$xr12, $t3, 4
	xvpickve2gr.d	$t3, $xr15, 1
	xvinsgr2vr.w	$xr12, $t3, 5
	xvpickve2gr.d	$t3, $xr15, 2
	xvinsgr2vr.w	$xr12, $t3, 6
	xvpickve2gr.d	$t3, $xr15, 3
	xvinsgr2vr.w	$xr12, $t3, 7
	xvxor.v	$xr14, $xr14, $xr5
	xvpickve2gr.d	$t3, $xr14, 0
	xvinsgr2vr.w	$xr16, $t3, 0
	xvpickve2gr.d	$t3, $xr14, 1
	xvinsgr2vr.w	$xr16, $t3, 1
	xvpickve2gr.d	$t3, $xr14, 2
	xvinsgr2vr.w	$xr16, $t3, 2
	xvpickve2gr.d	$t3, $xr14, 3
	xvinsgr2vr.w	$xr16, $t3, 3
	xvxor.v	$xr14, $xr15, $xr5
	xvpickve2gr.d	$t3, $xr14, 0
	xvinsgr2vr.w	$xr16, $t3, 4
	xvpickve2gr.d	$t3, $xr14, 1
	xvinsgr2vr.w	$xr16, $t3, 5
	xvpickve2gr.d	$t3, $xr14, 2
	xvinsgr2vr.w	$xr16, $t3, 6
	xvpickve2gr.d	$t3, $xr14, 3
	xvinsgr2vr.w	$xr16, $t3, 7
	xvseq.w	$xr14, $xr8, $xr10
	xvseq.d	$xr13, $xr9, $xr13
	xvpickve2gr.d	$t3, $xr13, 0
	xvinsgr2vr.w	$xr15, $t3, 0
	xvpickve2gr.d	$t3, $xr13, 1
	xvinsgr2vr.w	$xr15, $t3, 1
	xvpickve2gr.d	$t3, $xr13, 2
	xvinsgr2vr.w	$xr15, $t3, 2
	xvpickve2gr.d	$t3, $xr13, 3
	xvinsgr2vr.w	$xr15, $t3, 3
	xvseq.d	$xr11, $xr9, $xr11
	xvpickve2gr.d	$t3, $xr11, 0
	xvinsgr2vr.w	$xr15, $t3, 4
	xvpickve2gr.d	$t3, $xr11, 1
	xvinsgr2vr.w	$xr15, $t3, 5
	xvpickve2gr.d	$t3, $xr11, 2
	xvinsgr2vr.w	$xr15, $t3, 6
	xvpickve2gr.d	$t3, $xr11, 3
	xvinsgr2vr.w	$xr15, $t3, 7
	xvand.v	$xr11, $xr16, $xr14
	xvor.v	$xr13, $xr12, $xr14
	xvor.v	$xr13, $xr13, $xr15
	xvpickve2gr.w	$t3, $xr13, 0
	xvbitsel.v	$xr11, $xr3, $xr2, $xr11
	andi	$t4, $t3, 1
	xvbitsel.v	$xr11, $xr11, $xr6, $xr12
	beqz	$t4, .LBB1_47
# %bb.46:                               # %pred.store.if
                                        #   in Loop: Header=BB1_45 Depth=2
	xvstelm.w	$xr11, $t1, -16, 0
.LBB1_47:                               # %pred.store.continue
                                        #   in Loop: Header=BB1_45 Depth=2
	vinsgr2vr.h	$vr12, $t3, 0
	xvpickve2gr.w	$t3, $xr13, 1
	vinsgr2vr.h	$vr12, $t3, 1
	xvpickve2gr.w	$t3, $xr13, 2
	vinsgr2vr.h	$vr12, $t3, 2
	xvpickve2gr.w	$t3, $xr13, 3
	vinsgr2vr.h	$vr12, $t3, 3
	xvpickve2gr.w	$t3, $xr13, 4
	vinsgr2vr.h	$vr12, $t3, 4
	xvpickve2gr.w	$t3, $xr13, 5
	vinsgr2vr.h	$vr12, $t3, 5
	xvpickve2gr.w	$t3, $xr13, 6
	vinsgr2vr.h	$vr12, $t3, 6
	xvpickve2gr.w	$t3, $xr13, 7
	vinsgr2vr.h	$vr12, $t3, 7
	vpickve2gr.h	$t3, $vr12, 1
	andi	$t3, $t3, 1
	bnez	$t3, .LBB1_54
# %bb.48:                               # %pred.store.continue730
                                        #   in Loop: Header=BB1_45 Depth=2
	vpickve2gr.h	$t3, $vr12, 2
	andi	$t3, $t3, 1
	bnez	$t3, .LBB1_55
.LBB1_49:                               # %pred.store.continue732
                                        #   in Loop: Header=BB1_45 Depth=2
	vpickve2gr.h	$t3, $vr12, 3
	andi	$t3, $t3, 1
	bnez	$t3, .LBB1_56
.LBB1_50:                               # %pred.store.continue734
                                        #   in Loop: Header=BB1_45 Depth=2
	vpickve2gr.h	$t3, $vr12, 4
	andi	$t3, $t3, 1
	bnez	$t3, .LBB1_57
.LBB1_51:                               # %pred.store.continue736
                                        #   in Loop: Header=BB1_45 Depth=2
	vpickve2gr.h	$t3, $vr12, 5
	andi	$t3, $t3, 1
	bnez	$t3, .LBB1_58
.LBB1_52:                               # %pred.store.continue738
                                        #   in Loop: Header=BB1_45 Depth=2
	vpickve2gr.h	$t3, $vr12, 6
	andi	$t3, $t3, 1
	bnez	$t3, .LBB1_59
.LBB1_53:                               # %pred.store.continue740
                                        #   in Loop: Header=BB1_45 Depth=2
	vpickve2gr.h	$t3, $vr12, 7
	andi	$t3, $t3, 1
	beqz	$t3, .LBB1_44
	b	.LBB1_60
	.p2align	4, , 16
.LBB1_54:                               # %pred.store.if729
                                        #   in Loop: Header=BB1_45 Depth=2
	xvstelm.w	$xr11, $t1, -12, 1
	vpickve2gr.h	$t3, $vr12, 2
	andi	$t3, $t3, 1
	beqz	$t3, .LBB1_49
.LBB1_55:                               # %pred.store.if731
                                        #   in Loop: Header=BB1_45 Depth=2
	xvstelm.w	$xr11, $t1, -8, 2
	vpickve2gr.h	$t3, $vr12, 3
	andi	$t3, $t3, 1
	beqz	$t3, .LBB1_50
.LBB1_56:                               # %pred.store.if733
                                        #   in Loop: Header=BB1_45 Depth=2
	xvstelm.w	$xr11, $t1, -4, 3
	vpickve2gr.h	$t3, $vr12, 4
	andi	$t3, $t3, 1
	beqz	$t3, .LBB1_51
.LBB1_57:                               # %pred.store.if735
                                        #   in Loop: Header=BB1_45 Depth=2
	xvstelm.w	$xr11, $t1, 0, 4
	vpickve2gr.h	$t3, $vr12, 5
	andi	$t3, $t3, 1
	beqz	$t3, .LBB1_52
.LBB1_58:                               # %pred.store.if737
                                        #   in Loop: Header=BB1_45 Depth=2
	xvstelm.w	$xr11, $t1, 4, 5
	vpickve2gr.h	$t3, $vr12, 6
	andi	$t3, $t3, 1
	beqz	$t3, .LBB1_53
.LBB1_59:                               # %pred.store.if739
                                        #   in Loop: Header=BB1_45 Depth=2
	xvstelm.w	$xr11, $t1, 8, 6
	vpickve2gr.h	$t3, $vr12, 7
	andi	$t3, $t3, 1
	beqz	$t3, .LBB1_44
.LBB1_60:                               # %pred.store.if741
                                        #   in Loop: Header=BB1_45 Depth=2
	xvstelm.w	$xr11, $t1, 12, 7
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_61:                               # %middle.block745
                                        #   in Loop: Header=BB1_41 Depth=1
	move	$t4, $a4
	beq	$a4, $a3, .LBB1_40
.LBB1_62:                               # %scalar.ph701.preheader
                                        #   in Loop: Header=BB1_41 Depth=1
	move	$t1, $zero
	addi.w	$t2, $t4, 0
	alsl.d	$t2, $t2, $a0, 2
	sub.d	$t3, $a3, $t4
	add.w	$t4, $t4, $a2
	b	.LBB1_66
	.p2align	4, , 16
.LBB1_63:                               #   in Loop: Header=BB1_66 Depth=2
	vldi	$vr7, -1264
.LBB1_64:                               # %.sink.split
                                        #   in Loop: Header=BB1_66 Depth=2
	fstx.s	$fa7, $t0, $t1
.LBB1_65:                               #   in Loop: Header=BB1_66 Depth=2
	addi.d	$t1, $t1, 4
	addi.w	$t3, $t3, -1
	addi.w	$t4, $t4, 1
	beqz	$t3, .LBB1_40
.LBB1_66:                               # %scalar.ph701
                                        #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $t2, $t1
	stx.w	$zero, $t0, $t1
	beqz	$t5, .LBB1_63
# %bb.67:                               #   in Loop: Header=BB1_66 Depth=2
	fmov.s	$fa7, $fa0
	beqz	$t4, .LBB1_64
# %bb.68:                               #   in Loop: Header=BB1_66 Depth=2
	addi.d	$t5, $t5, -4
	fmov.s	$fa7, $fa1
	bnez	$t5, .LBB1_65
	b	.LBB1_64
.LBB1_69:                               # %get_space.exit
	move	$a0, $s7
	b	.LBB1_189
.LBB1_70:                               # %.lr.ph.i342
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $s2, 0
	ori	$s4, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s3, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_71:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s4
	beqz	$a0, .LBB1_78
# %bb.72:                               #   in Loop: Header=BB1_71 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s4, $s4, 8
	blt	$fp, $a0, .LBB1_71
# %bb.73:                               # %._crit_edge.i336
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s3, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_78
# %bb.74:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_78
# %bb.75:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_78
# %bb.76:
	beqz	$a0, .LBB1_78
# %bb.77:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s6, -4
	sltui	$a0, $a0, 1
	ld.d	$a1, $s2, 8
	vldi	$vr0, -1272
	movgr2fr.w	$fa1, $zero
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a1, 0
	b	.LBB1_193
.LBB1_78:                               # %get_space.exit345
	move	$a0, $s3
	b	.LBB1_189
.LBB1_79:
	slli.d	$a0, $s4, 2
	alsl.w	$s3, $s4, $a0, 1
	alsl.d	$a0, $s4, $a0, 1
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_84
# %bb.80:                               # %.lr.ph.i392
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_81:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_188
# %bb.82:                               #   in Loop: Header=BB1_81 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_81
# %bb.83:                               # %._crit_edge.i386.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_84:                               # %._crit_edge.i386
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_188
# %bb.85:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_188
# %bb.86:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_188
# %bb.87:
	beqz	$a0, .LBB1_188
# %bb.88:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 12
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_195
# %bb.89:                               # %.lr.ph480
	move	$a0, $zero
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a3, $a3, $a4
	bstrpick.d	$a5, $a3, 30, 3
	slli.d	$a4, $a5, 3
	slli.d	$a5, $a5, 5
	pcalau12i	$a6, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a6, %pc_lo12(.LCPI1_0)
	ori	$a6, $zero, 8
	movgr2fr.w	$fa1, $zero
	xvrepli.b	$xr2, 0
	b	.LBB1_91
.LBB1_90:                               # %._crit_edge477
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	beq	$a0, $a3, .LBB1_195
.LBB1_91:                               # %.lr.ph476
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_94 Depth 2
                                        #     Child Loop BB1_97 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$t0, $a1, $a7
	bge	$s3, $a6, .LBB1_93
# %bb.92:                               #   in Loop: Header=BB1_91 Depth=1
	move	$t2, $zero
	move	$a7, $t0
	b	.LBB1_96
.LBB1_93:                               # %vector.ph645
                                        #   in Loop: Header=BB1_91 Depth=1
	add.d	$a7, $t0, $a5
	xvreplgr2vr.d	$xr3, $a0
	xvreplgr2vr.w	$xr4, $a0
	move	$t1, $a4
	xvori.b	$xr5, $xr0, 0
	.p2align	4, , 16
.LBB1_94:                               # %vector.body652
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvpermi.q	$xr6, $xr5, 1
	vpickve2gr.w	$t2, $vr6, 0
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr7, $t2, 0
	vpickve2gr.w	$t2, $vr6, 1
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr7, $t2, 1
	vpickve2gr.w	$t2, $vr6, 2
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr7, $t2, 2
	vpickve2gr.w	$t2, $vr6, 3
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr7, $t2, 3
	vpickve2gr.w	$t2, $vr5, 0
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr6, $t2, 0
	vpickve2gr.w	$t2, $vr5, 1
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr6, $t2, 1
	vpickve2gr.w	$t2, $vr5, 2
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr6, $t2, 2
	vpickve2gr.w	$t2, $vr5, 3
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr6, $t2, 3
	xvslt.du	$xr6, $xr6, $xr3
	xvpickve2gr.d	$t2, $xr6, 0
	xvinsgr2vr.w	$xr8, $t2, 0
	xvpickve2gr.d	$t2, $xr6, 1
	xvinsgr2vr.w	$xr8, $t2, 1
	xvpickve2gr.d	$t2, $xr6, 2
	xvinsgr2vr.w	$xr8, $t2, 2
	xvpickve2gr.d	$t2, $xr6, 3
	xvinsgr2vr.w	$xr8, $t2, 3
	xvslt.du	$xr6, $xr7, $xr3
	xvpickve2gr.d	$t2, $xr6, 0
	xvinsgr2vr.w	$xr8, $t2, 4
	xvpickve2gr.d	$t2, $xr6, 1
	xvinsgr2vr.w	$xr8, $t2, 5
	xvpickve2gr.d	$t2, $xr6, 2
	xvinsgr2vr.w	$xr8, $t2, 6
	xvpickve2gr.d	$t2, $xr6, 3
	xvinsgr2vr.w	$xr8, $t2, 7
	xvsub.w	$xr6, $xr5, $xr4
	xvaddi.wu	$xr6, $xr6, 1
	xvffint.s.wu	$xr6, $xr6
	xvbitsel.v	$xr6, $xr6, $xr2, $xr8
	xvst	$xr6, $t0, 0
	xvaddi.wu	$xr5, $xr5, 8
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB1_94
# %bb.95:                               # %middle.block659
                                        #   in Loop: Header=BB1_91 Depth=1
	move	$t2, $a4
	beq	$a4, $a3, .LBB1_90
.LBB1_96:                               # %scalar.ph643.preheader
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.w	$t0, $t2, 0
	add.w	$t1, $t2, $a2
	sub.d	$t2, $a3, $t2
	.p2align	4, , 16
.LBB1_97:                               # %scalar.ph643
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$t3, $t0, $a0
	bstrpick.d	$t4, $t1, 31, 0
	movgr2fr.d	$fa3, $t4
	ffint.s.l	$fa3, $fa3
	movgr2cf	$fcc0, $t3
	fsel	$fa3, $fa3, $fa1, $fcc0
	fst.s	$fa3, $a7, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 1
	addi.w	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	bnez	$t2, .LBB1_97
	b	.LBB1_90
.LBB1_98:
	alsl.w	$s3, $s4, $s4, 2
	alsl.d	$a0, $s4, $s4, 2
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_103
# %bb.99:                               # %.lr.ph.i402
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_100:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_188
# %bb.101:                              #   in Loop: Header=BB1_100 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_100
# %bb.102:                              # %._crit_edge.i396.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_103:                              # %._crit_edge.i396
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_188
# %bb.104:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_188
# %bb.105:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_188
# %bb.106:
	beqz	$a0, .LBB1_188
# %bb.107:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	lu12i.w	$a1, 172394
	ori	$a1, $a1, 433
	lu32i.d	$a1, 184019
	lu52i.d	$s5, $a1, 1149
	ori	$a1, $zero, 13
	move	$a2, $s3
	move	$a3, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_195
# %bb.108:                              # %.lr.ph472
	move	$a0, $zero
	mul.d	$a1, $s3, $s3
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	addi.d	$a1, $s2, 8
	fcvt.d.s	$fa0, $fa0
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a4, $a2, 30, 3
	slli.d	$a3, $a4, 3
	slli.d	$a4, $a4, 5
	pcalau12i	$a5, %pc_hi20(.LCPI1_1)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI1_1)
	pcalau12i	$a5, %pc_hi20(.LCPI1_0)
	xvld	$xr2, $a5, %pc_lo12(.LCPI1_0)
	xvreplve0.d	$xr3, $xr0
	ori	$a5, $zero, 8
	xvreplgr2vr.d	$xr4, $s5
	b	.LBB1_110
.LBB1_109:                              # %._crit_edge469
                                        #   in Loop: Header=BB1_110 Depth=1
	move	$a0, $a6
	beq	$a6, $a2, .LBB1_195
.LBB1_110:                              # %.lr.ph468
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_113 Depth 2
                                        #     Child Loop BB1_116 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$t0, $a1, $a6
	addi.d	$a6, $a0, 1
	srli.d	$a7, $a6, 1
	andi	$t1, $a6, 1
	or	$a7, $t1, $a7
	movgr2fr.d	$fa5, $a7
	ffint.s.l	$fa5, $fa5
	fadd.s	$fa5, $fa5, $fa5
	slti	$a7, $a6, 0
	movgr2fr.d	$fa6, $a6
	ffint.s.l	$fa6, $fa6
	movgr2cf	$fcc0, $a7
	fsel	$fa5, $fa6, $fa5, $fcc0
	bge	$s3, $a5, .LBB1_112
# %bb.111:                              #   in Loop: Header=BB1_110 Depth=1
	move	$t1, $zero
	move	$a7, $t0
	b	.LBB1_115
.LBB1_112:                              # %vector.ph621
                                        #   in Loop: Header=BB1_110 Depth=1
	add.d	$a7, $t0, $a4
	xvreplgr2vr.d	$xr6, $a0
	xvreplgr2vr.w	$xr7, $a6
	xvreplve0.w	$xr8, $xr5
	move	$t1, $a3
	xvori.b	$xr9, $xr2, 0
	.p2align	4, , 16
.LBB1_113:                              # %vector.body632
                                        #   Parent Loop BB1_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvpermi.q	$xr10, $xr9, 1
	vpickve2gr.w	$t2, $vr10, 0
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr11, $t2, 0
	vpickve2gr.w	$t2, $vr10, 1
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr11, $t2, 1
	vpickve2gr.w	$t2, $vr10, 2
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr11, $t2, 2
	vpickve2gr.w	$t2, $vr10, 3
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr11, $t2, 3
	vpickve2gr.w	$t2, $vr9, 0
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr10, $t2, 0
	vpickve2gr.w	$t2, $vr9, 1
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr10, $t2, 1
	vpickve2gr.w	$t2, $vr9, 2
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr10, $t2, 2
	vpickve2gr.w	$t2, $vr9, 3
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr10, $t2, 3
	xvslt.du	$xr10, $xr6, $xr10
	xvpickve2gr.d	$t2, $xr10, 0
	xvinsgr2vr.w	$xr12, $t2, 0
	xvpickve2gr.d	$t2, $xr10, 1
	xvinsgr2vr.w	$xr12, $t2, 1
	xvpickve2gr.d	$t2, $xr10, 2
	xvinsgr2vr.w	$xr12, $t2, 2
	xvpickve2gr.d	$t2, $xr10, 3
	xvinsgr2vr.w	$xr12, $t2, 3
	xvslt.du	$xr10, $xr6, $xr11
	xvpickve2gr.d	$t2, $xr10, 0
	xvinsgr2vr.w	$xr12, $t2, 4
	xvpickve2gr.d	$t2, $xr10, 1
	xvinsgr2vr.w	$xr12, $t2, 5
	xvpickve2gr.d	$t2, $xr10, 2
	xvinsgr2vr.w	$xr12, $t2, 6
	xvpickve2gr.d	$t2, $xr10, 3
	xvinsgr2vr.w	$xr12, $t2, 7
	xvaddi.wu	$xr10, $xr9, 1
	xvbitsel.v	$xr10, $xr7, $xr10, $xr12
	xvffint.s.wu	$xr10, $xr10
	xvfdiv.s	$xr10, $xr8, $xr10
	xvpermi.q	$xr11, $xr10, 1
	vreplvei.w	$vr12, $vr11, 1
	fcvt.d.s	$ft4, $ft4
	vreplvei.w	$vr13, $vr11, 0
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr13, $xr12, 1
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr13, $xr12, 2
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr13, $xr11, 3
	vreplvei.w	$vr11, $vr10, 1
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr12, $vr10, 0
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr12, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr12, $xr11, 2
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr12, $xr10, 3
	xvfmul.d	$xr10, $xr12, $xr4
	xvfmul.d	$xr11, $xr13, $xr4
	xvfdiv.d	$xr11, $xr11, $xr3
	xvfdiv.d	$xr10, $xr10, $xr3
	xvpickve.d	$xr12, $xr10, 1
	fcvt.s.d	$ft4, $ft4
	xvpickve.d	$xr13, $xr10, 0
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr13, $xr12, 1
	xvpickve.d	$xr12, $xr10, 2
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr13, $xr12, 2
	xvpickve.d	$xr10, $xr10, 3
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr13, $xr10, 3
	xvpickve.d	$xr10, $xr11, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr13, $xr10, 4
	xvpickve.d	$xr10, $xr11, 1
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr13, $xr10, 5
	xvpickve.d	$xr10, $xr11, 2
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr13, $xr10, 6
	xvpickve.d	$xr10, $xr11, 3
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr13, $xr10, 7
	xvst	$xr13, $t0, 0
	xvaddi.wu	$xr9, $xr9, 8
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB1_113
# %bb.114:                              # %middle.block639
                                        #   in Loop: Header=BB1_110 Depth=1
	move	$t1, $a3
	beq	$a3, $a2, .LBB1_109
.LBB1_115:                              # %scalar.ph619.preheader
                                        #   in Loop: Header=BB1_110 Depth=1
	addi.w	$t0, $t1, 0
	.p2align	4, , 16
.LBB1_116:                              # %scalar.ph619
                                        #   Parent Loop BB1_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$t2, $a0, $t0
	addi.w	$t1, $t1, 1
	masknez	$t3, $a6, $t2
	maskeqz	$t2, $t1, $t2
	or	$t2, $t2, $t3
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa6, $t2
	ffint.s.l	$fa6, $fa6
	fdiv.s	$fa6, $fa5, $fa6
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa1
	fdiv.d	$fa6, $fa6, $fa0
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a7, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 1
	bne	$a2, $t1, .LBB1_116
	b	.LBB1_109
.LBB1_117:
	slli.w	$s3, $s4, 2
	st.w	$s3, $s2, 0
	st.w	$s3, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_122
# %bb.118:                              # %.lr.ph.i372
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_119:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_188
# %bb.120:                              #   in Loop: Header=BB1_119 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_119
# %bb.121:                              # %._crit_edge.i366.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_122:                              # %._crit_edge.i366
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_188
# %bb.123:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_188
# %bb.124:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_188
# %bb.125:
	beqz	$a0, .LBB1_188
# %bb.126:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 10
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_195
# %bb.127:                              # %.lr.ph496
	move	$a0, $zero
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a4, $a2, 30, 3
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI1_0)
	slli.d	$a3, $a4, 3
	slli.d	$a4, $a4, 5
	ori	$a5, $zero, 8
	b	.LBB1_129
.LBB1_128:                              # %._crit_edge493
                                        #   in Loop: Header=BB1_129 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a2, .LBB1_195
.LBB1_129:                              # %.lr.ph492
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_132 Depth 2
                                        #     Child Loop BB1_134 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$a7, $a1, $a6
	addi.d	$a6, $a0, -2
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	bge	$s3, $a5, .LBB1_131
# %bb.130:                              #   in Loop: Header=BB1_129 Depth=1
	move	$t0, $zero
	move	$a6, $a7
	b	.LBB1_134
.LBB1_131:                              # %vector.ph685
                                        #   in Loop: Header=BB1_129 Depth=1
	add.d	$a6, $a7, $a4
	xvreplve0.w	$xr2, $xr1
	move	$t0, $a3
	xvori.b	$xr3, $xr0, 0
	.p2align	4, , 16
.LBB1_132:                              # %vector.body690
                                        #   Parent Loop BB1_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.wu	$xr4, $xr3, 1
	xvffint.s.wu	$xr4, $xr4
	xvfdiv.s	$xr4, $xr2, $xr4
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr3, $xr3, 8
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB1_132
# %bb.133:                              # %middle.block697
                                        #   in Loop: Header=BB1_129 Depth=1
	move	$t0, $a3
	beq	$a3, $a2, .LBB1_128
	.p2align	4, , 16
.LBB1_134:                              # %scalar.ph683
                                        #   Parent Loop BB1_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 1
	bstrpick.d	$a7, $t0, 31, 0
	movgr2fr.d	$fa2, $a7
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa2, $fa1, $fa2
	fst.s	$fa2, $a6, 0
	addi.d	$a6, $a6, 4
	bne	$a2, $t0, .LBB1_134
	b	.LBB1_128
.LBB1_135:
	alsl.w	$s3, $s4, $s4, 2
	alsl.d	$a0, $s4, $s4, 2
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_140
# %bb.136:                              # %.lr.ph.i412
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_137:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_188
# %bb.138:                              #   in Loop: Header=BB1_137 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_137
# %bb.139:                              # %._crit_edge.i406.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_140:                              # %._crit_edge.i406
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_188
# %bb.141:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_188
# %bb.142:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_188
# %bb.143:
	beqz	$a0, .LBB1_188
# %bb.144:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	lu12i.w	$a1, -402777
	ori	$a1, $a1, 2276
	lu32i.d	$a1, -313093
	lu52i.d	$a3, $a1, 896
	ori	$a1, $zero, 14
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_195
# %bb.145:                              # %.lr.ph464
	move	$a0, $zero
	mul.d	$a1, $s3, $s3
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a4, $a2, 30, 3
	slli.d	$a3, $a4, 3
	slli.d	$a4, $a4, 5
	xvreplve0.w	$xr1, $xr0
	pcalau12i	$a5, %pc_hi20(.LCPI1_1)
	fld.d	$fa2, $a5, %pc_lo12(.LCPI1_1)
	pcalau12i	$a5, %pc_hi20(.LCPI1_0)
	xvld	$xr3, $a5, %pc_lo12(.LCPI1_0)
	lu12i.w	$a5, 172394
	ori	$a5, $a5, 433
	lu32i.d	$a5, 184019
	lu52i.d	$a5, $a5, 1149
	xvreplgr2vr.d	$xr4, $a5
	ori	$a5, $zero, 8
	b	.LBB1_147
.LBB1_146:                              # %._crit_edge461
                                        #   in Loop: Header=BB1_147 Depth=1
	move	$a0, $a6
	beq	$a6, $a2, .LBB1_195
.LBB1_147:                              # %.lr.ph460
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_150 Depth 2
                                        #     Child Loop BB1_153 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$t0, $a1, $a6
	addi.d	$a6, $a0, 1
	srli.d	$a7, $a6, 1
	andi	$t1, $a6, 1
	or	$a7, $t1, $a7
	movgr2fr.d	$fa5, $a7
	ffint.s.l	$fa5, $fa5
	fadd.s	$fa5, $fa5, $fa5
	slti	$a7, $a6, 0
	movgr2fr.d	$fa6, $a6
	ffint.s.l	$fa6, $fa6
	movgr2cf	$fcc0, $a7
	fsel	$fa5, $fa6, $fa5, $fcc0
	bge	$s3, $a5, .LBB1_149
# %bb.148:                              #   in Loop: Header=BB1_147 Depth=1
	move	$t1, $zero
	move	$a7, $t0
	b	.LBB1_152
.LBB1_149:                              # %vector.ph
                                        #   in Loop: Header=BB1_147 Depth=1
	add.d	$a7, $t0, $a4
	xvreplgr2vr.d	$xr6, $a0
	xvreplgr2vr.w	$xr7, $a6
	xvreplve0.w	$xr8, $xr5
	move	$t1, $a3
	xvori.b	$xr9, $xr3, 0
	.p2align	4, , 16
.LBB1_150:                              # %vector.body
                                        #   Parent Loop BB1_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvpermi.q	$xr10, $xr9, 1
	vpickve2gr.w	$t2, $vr10, 0
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr11, $t2, 0
	vpickve2gr.w	$t2, $vr10, 1
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr11, $t2, 1
	vpickve2gr.w	$t2, $vr10, 2
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr11, $t2, 2
	vpickve2gr.w	$t2, $vr10, 3
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr11, $t2, 3
	vpickve2gr.w	$t2, $vr9, 0
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr10, $t2, 0
	vpickve2gr.w	$t2, $vr9, 1
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr10, $t2, 1
	vpickve2gr.w	$t2, $vr9, 2
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr10, $t2, 2
	vpickve2gr.w	$t2, $vr9, 3
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr10, $t2, 3
	xvslt.du	$xr10, $xr6, $xr10
	xvpickve2gr.d	$t2, $xr10, 0
	xvinsgr2vr.w	$xr12, $t2, 0
	xvpickve2gr.d	$t2, $xr10, 1
	xvinsgr2vr.w	$xr12, $t2, 1
	xvpickve2gr.d	$t2, $xr10, 2
	xvinsgr2vr.w	$xr12, $t2, 2
	xvpickve2gr.d	$t2, $xr10, 3
	xvinsgr2vr.w	$xr12, $t2, 3
	xvslt.du	$xr10, $xr6, $xr11
	xvpickve2gr.d	$t2, $xr10, 0
	xvinsgr2vr.w	$xr12, $t2, 4
	xvpickve2gr.d	$t2, $xr10, 1
	xvinsgr2vr.w	$xr12, $t2, 5
	xvpickve2gr.d	$t2, $xr10, 2
	xvinsgr2vr.w	$xr12, $t2, 6
	xvpickve2gr.d	$t2, $xr10, 3
	xvinsgr2vr.w	$xr12, $t2, 7
	xvaddi.wu	$xr10, $xr9, 1
	xvbitsel.v	$xr10, $xr7, $xr10, $xr12
	xvffint.s.wu	$xr10, $xr10
	xvfdiv.s	$xr10, $xr10, $xr8
	xvfmul.s	$xr10, $xr10, $xr1
	vreplvei.w	$vr11, $vr10, 1
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr12, $vr10, 0
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr12, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr12, $xr11, 2
	vreplvei.w	$vr11, $vr10, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr12, $xr11, 3
	xvpermi.q	$xr10, $xr10, 1
	vreplvei.w	$vr11, $vr10, 1
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr13, $vr10, 0
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr13, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr13, $xr11, 2
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr13, $xr10, 3
	xvfdiv.d	$xr10, $xr13, $xr4
	xvfdiv.d	$xr11, $xr12, $xr4
	xvpickve.d	$xr12, $xr11, 1
	fcvt.s.d	$ft4, $ft4
	xvpickve.d	$xr13, $xr11, 0
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr13, $xr12, 1
	xvpickve.d	$xr12, $xr11, 2
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr13, $xr12, 2
	xvpickve.d	$xr11, $xr11, 3
	fcvt.s.d	$ft3, $ft3
	xvinsve0.w	$xr13, $xr11, 3
	xvpickve.d	$xr11, $xr10, 0
	fcvt.s.d	$ft3, $ft3
	xvinsve0.w	$xr13, $xr11, 4
	xvpickve.d	$xr11, $xr10, 1
	fcvt.s.d	$ft3, $ft3
	xvinsve0.w	$xr13, $xr11, 5
	xvpickve.d	$xr11, $xr10, 2
	fcvt.s.d	$ft3, $ft3
	xvinsve0.w	$xr13, $xr11, 6
	xvpickve.d	$xr10, $xr10, 3
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr13, $xr10, 7
	xvst	$xr13, $t0, 0
	xvaddi.wu	$xr9, $xr9, 8
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB1_150
# %bb.151:                              # %middle.block
                                        #   in Loop: Header=BB1_147 Depth=1
	move	$t1, $a3
	beq	$a3, $a2, .LBB1_146
.LBB1_152:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_147 Depth=1
	addi.w	$t0, $t1, 0
	.p2align	4, , 16
.LBB1_153:                              # %scalar.ph
                                        #   Parent Loop BB1_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$t2, $a0, $t0
	addi.w	$t1, $t1, 1
	masknez	$t3, $a6, $t2
	maskeqz	$t2, $t1, $t2
	or	$t2, $t2, $t3
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa6, $t2
	ffint.s.l	$fa6, $fa6
	fdiv.s	$fa6, $fa6, $fa5
	fmul.s	$fa6, $fa6, $fa0
	fcvt.d.s	$fa6, $fa6
	fdiv.d	$fa6, $fa6, $fa2
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a7, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 1
	bne	$a2, $t1, .LBB1_153
	b	.LBB1_146
.LBB1_154:
	slli.d	$a0, $s4, 2
	alsl.w	$s3, $s4, $a0, 1
	alsl.d	$a0, $s4, $a0, 1
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_159
# %bb.155:                              # %.lr.ph.i382
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_156:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_188
# %bb.157:                              #   in Loop: Header=BB1_156 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_156
# %bb.158:                              # %._crit_edge.i376.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_159:                              # %._crit_edge.i376
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_188
# %bb.160:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_188
# %bb.161:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_188
# %bb.162:
	beqz	$a0, .LBB1_188
# %bb.163:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 11
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_195
# %bb.164:                              # %.lr.ph488
	move	$a0, $zero
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a3, $a3, $a4
	bstrpick.d	$a5, $a3, 30, 3
	slli.d	$a4, $a5, 3
	slli.d	$a5, $a5, 5
	pcalau12i	$a6, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a6, %pc_lo12(.LCPI1_0)
	ori	$a6, $zero, 8
	movgr2fr.w	$fa1, $zero
	xvrepli.b	$xr2, 0
	b	.LBB1_166
.LBB1_165:                              # %._crit_edge485
                                        #   in Loop: Header=BB1_166 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	beq	$a0, $a3, .LBB1_195
.LBB1_166:                              # %.lr.ph484
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_169 Depth 2
                                        #     Child Loop BB1_172 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$t0, $a1, $a7
	bge	$s3, $a6, .LBB1_168
# %bb.167:                              #   in Loop: Header=BB1_166 Depth=1
	move	$t2, $zero
	move	$a7, $t0
	b	.LBB1_171
.LBB1_168:                              # %vector.ph665
                                        #   in Loop: Header=BB1_166 Depth=1
	add.d	$a7, $t0, $a5
	xvreplgr2vr.d	$xr3, $a0
	xvreplgr2vr.w	$xr4, $a0
	move	$t1, $a4
	xvori.b	$xr5, $xr0, 0
	.p2align	4, , 16
.LBB1_169:                              # %vector.body672
                                        #   Parent Loop BB1_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvpermi.q	$xr6, $xr5, 1
	vpickve2gr.w	$t2, $vr6, 0
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr7, $t2, 0
	vpickve2gr.w	$t2, $vr6, 1
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr7, $t2, 1
	vpickve2gr.w	$t2, $vr6, 2
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr7, $t2, 2
	vpickve2gr.w	$t2, $vr6, 3
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr7, $t2, 3
	vpickve2gr.w	$t2, $vr5, 0
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr6, $t2, 0
	vpickve2gr.w	$t2, $vr5, 1
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr6, $t2, 1
	vpickve2gr.w	$t2, $vr5, 2
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr6, $t2, 2
	vpickve2gr.w	$t2, $vr5, 3
	bstrpick.d	$t2, $t2, 31, 0
	xvinsgr2vr.d	$xr6, $t2, 3
	xvslt.du	$xr6, $xr3, $xr6
	xvpickve2gr.d	$t2, $xr6, 0
	xvinsgr2vr.w	$xr8, $t2, 0
	xvpickve2gr.d	$t2, $xr6, 1
	xvinsgr2vr.w	$xr8, $t2, 1
	xvpickve2gr.d	$t2, $xr6, 2
	xvinsgr2vr.w	$xr8, $t2, 2
	xvpickve2gr.d	$t2, $xr6, 3
	xvinsgr2vr.w	$xr8, $t2, 3
	xvslt.du	$xr6, $xr3, $xr7
	xvpickve2gr.d	$t2, $xr6, 0
	xvinsgr2vr.w	$xr8, $t2, 4
	xvpickve2gr.d	$t2, $xr6, 1
	xvinsgr2vr.w	$xr8, $t2, 5
	xvpickve2gr.d	$t2, $xr6, 2
	xvinsgr2vr.w	$xr8, $t2, 6
	xvpickve2gr.d	$t2, $xr6, 3
	xvinsgr2vr.w	$xr8, $t2, 7
	xvsub.w	$xr6, $xr5, $xr4
	xvaddi.wu	$xr6, $xr6, 1
	xvffint.s.w	$xr6, $xr6
	xvbitsel.v	$xr6, $xr6, $xr2, $xr8
	xvst	$xr6, $t0, 0
	xvaddi.wu	$xr5, $xr5, 8
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB1_169
# %bb.170:                              # %middle.block679
                                        #   in Loop: Header=BB1_166 Depth=1
	move	$t2, $a4
	beq	$a4, $a3, .LBB1_165
.LBB1_171:                              # %scalar.ph663.preheader
                                        #   in Loop: Header=BB1_166 Depth=1
	addi.w	$t0, $t2, 0
	add.w	$t1, $t2, $a2
	sub.d	$t2, $a3, $t2
	.p2align	4, , 16
.LBB1_172:                              # %scalar.ph663
                                        #   Parent Loop BB1_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$t3, $a0, $t0
	movgr2fr.w	$fa3, $t1
	ffint.s.w	$fa3, $fa3
	movgr2cf	$fcc0, $t3
	fsel	$fa3, $fa3, $fa1, $fcc0
	fst.s	$fa3, $a7, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 1
	addi.w	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	bnez	$t2, .LBB1_172
	b	.LBB1_165
.LBB1_173:
	alsl.w	$s3, $s4, $s4, 2
	alsl.d	$a0, $s4, $s4, 2
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_178
# %bb.174:                              # %.lr.ph.i362
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_175:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_188
# %bb.176:                              #   in Loop: Header=BB1_175 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_175
# %bb.177:                              # %._crit_edge.i356.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_178:                              # %._crit_edge.i356
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_188
# %bb.179:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_188
# %bb.180:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_188
# %bb.181:
	beqz	$a0, .LBB1_188
# %bb.182:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 9
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_195
# %bb.183:                              # %.lr.ph504
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $zero
	move	$s5, $zero
	addi.d	$s6, $s2, 8
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s0, $a1, $a0
.LBB1_184:                              # %.lr.ph500.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_185 Depth 2
	slli.d	$a0, $s5, 3
	ldx.d	$s8, $s6, $a0
	move	$s4, $fp
	move	$s7, $s0
	.p2align	4, , 16
.LBB1_185:                              # %.lr.ph500
                                        #   Parent Loop BB1_184 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s8, 0
	addi.d	$s8, $s8, 4
	addi.w	$s7, $s7, -1
	addi.w	$s4, $s4, 1
	bnez	$s7, .LBB1_185
# %bb.186:                              # %._crit_edge501
                                        #   in Loop: Header=BB1_184 Depth=1
	addi.d	$s5, $s5, 1
	addi.w	$fp, $fp, -1
	bne	$s5, $s0, .LBB1_184
# %bb.187:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	b	.LBB1_195
.LBB1_188:                              # %get_space.exit365
	move	$a0, $s6
.LBB1_189:                              # %.critedge
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB1_190:                              # %.critedge
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
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
.LBB1_191:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	b	.LBB1_189
.LBB1_192:
	move	$s7, $fp
.LBB1_193:                              # %.thread441.sink.split
	ld.d	$a0, $s1, 0
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 0
	b	.LBB1_203
.LBB1_194:
	move	$s7, $fp
.LBB1_195:                              # %.loopexit
	ld.d	$a0, $s1, 0
	lu12i.w	$a2, 260096
	ori	$a1, $zero, 2
	st.w	$a2, $a0, 0
	blt	$s3, $a1, .LBB1_203
# %bb.196:
	ld.d	$a2, $s8, 0
	st.w	$zero, $a2, 0
	bne	$s3, $a1, .LBB1_198
# %bb.197:
	ori	$s3, $zero, 2
	b	.LBB1_203
.LBB1_198:                              # %.lr.ph524.preheader
	addi.w	$a3, $s3, -2
	ori	$a2, $zero, 2
	addi.d	$a1, $a0, 8
	bltu	$a3, $a2, .LBB1_202
# %bb.199:                              # %vector.ph774
	bstrpick.d	$a3, $a3, 31, 0
	bstrpick.d	$a2, $a3, 31, 1
	slli.d	$a4, $a2, 1
	ld.d	$a5, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	ori	$a6, $zero, 2
	alsl.w	$a2, $a2, $a6, 1
	vinsgr2vr.d	$vr0, $a5, 0
	ori	$a5, $zero, 8
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_200:                              # %vector.body777
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a0, $a5
	vbitrevi.w	$vr0, $vr0, 31
	vstelm.d	$vr0, $a7, 0, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB1_200
# %bb.201:                              # %middle.block782
	beq	$a4, $a3, .LBB1_203
	.p2align	4, , 16
.LBB1_202:                              # %.lr.ph524
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, -8
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	bne	$s3, $a2, .LBB1_202
.LBB1_203:                              # %.thread441
	ld.w	$a1, $s2, 0
	blez	$a1, .LBB1_218
# %bb.204:
	ld.wu	$a3, $s2, 4
	addi.w	$a2, $a3, 0
	blez	$a2, .LBB1_218
# %bb.205:                              # %iter.check
	ld.d	$a4, $s7, 0
	ld.d	$a5, $s2, 8
	ori	$a6, $zero, 3
	addi.d	$t0, $a3, -1
	addi.d	$a7, $a0, 4
	bltu	$a6, $a3, .LBB1_219
# %bb.206:
	move	$t2, $zero
.LBB1_207:                              # %.lr.ph.i416.preheader
	move	$a6, $a5
	move	$t1, $a4
.LBB1_208:                              # %.lr.ph.i416.preheader
	sub.d	$a5, $a3, $t2
	.p2align	4, , 16
.LBB1_209:                              # %.lr.ph.i416
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a6, 0
	fld.s	$fa1, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t1, 0
	addi.d	$t1, $t1, 4
	addi.w	$a5, $a5, -1
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB1_209
.LBB1_210:                              # %.preheader.i
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	move	$t5, $s8
	ori	$a6, $zero, 1
	addi.d	$a5, $s2, 8
	bne	$a1, $a6, .LBB1_223
.LBB1_211:                              # %.thread446
	move	$fp, $t5
	ld.d	$a3, $t5, 0
	move	$a4, $zero
	movgr2fr.w	$fa0, $zero
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_212:                              # %.lr.ph.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_213 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a5, $a6
	st.w	$zero, $a3, 0
	move	$a7, $a1
	fmov.s	$fa1, $fa0
	move	$t0, $a0
	.p2align	4, , 16
.LBB1_213:                              #   Parent Loop BB1_212 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $a6, 0
	fld.s	$fa3, $t0, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a3, 0
	addi.d	$t0, $t0, 4
	addi.w	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	bnez	$a7, .LBB1_213
# %bb.214:                              # %._crit_edge.us.i
                                        #   in Loop: Header=BB1_212 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	bne	$a4, $a2, .LBB1_212
# %bb.215:                              # %matvec.exit420
	ori	$a0, $zero, 7
	blt	$a0, $s3, .LBB1_217
# %bb.216:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(matdump)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a2, $a1, %pc_lo12(.L.str.19)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a2, $a1, %pc_lo12(.L.str.20)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a2, $a1, %pc_lo12(.L.str.21)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
.LBB1_217:                              # %.critedge
	move	$a0, $zero
	b	.LBB1_190
.LBB1_218:                              # %matvec.exit
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	b	.LBB1_189
.LBB1_219:                              # %vector.memcheck
	bstrpick.d	$a6, $t0, 31, 0
	slli.d	$a6, $a6, 2
	addi.d	$t1, $a6, 4
	add.d	$a6, $a4, $t1
	add.d	$t1, $a5, $t1
	sltu	$t1, $a4, $t1
	sltu	$t2, $a5, $a6
	and	$t1, $t1, $t2
	move	$t2, $zero
	bnez	$t1, .LBB1_207
# %bb.220:                              # %vector.memcheck
	sltu	$t1, $a4, $a7
	sltu	$a6, $a0, $a6
	and	$a6, $t1, $a6
	bnez	$a6, .LBB1_207
# %bb.221:                              # %vector.main.loop.iter.check
	ori	$a6, $zero, 16
	bgeu	$a3, $a6, .LBB1_240
# %bb.222:
	move	$t3, $zero
	b	.LBB1_244
.LBB1_223:                              # %.lr.ph71.us.preheader.i
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 2
	addi.d	$t0, $t0, 4
	add.d	$t1, $a4, $t0
	alsl.d	$t2, $a1, $a0, 2
	sltu	$t2, $a4, $t2
	sltu	$a7, $a7, $t1
	and	$a7, $t2, $a7
	bstrpick.d	$t3, $a3, 30, 4
	slli.d	$t2, $t3, 4
	slli.d	$t3, $t3, 6
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	add.d	$t3, $a4, $t3
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	andi	$t3, $a3, 12
	bstrpick.d	$t4, $a3, 30, 2
	slli.d	$t6, $t4, 2
	slli.d	$t7, $t4, 4
	alsl.d	$t8, $t4, $a4, 4
	addi.d	$s4, $a4, 32
	sub.d	$s5, $zero, $t6
	ori	$s6, $zero, 4
	ori	$s7, $zero, 16
	b	.LBB1_225
	.p2align	4, , 16
.LBB1_224:                              # %._crit_edge.us74.i
                                        #   in Loop: Header=BB1_225 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $a1, .LBB1_211
.LBB1_225:                              # %iter.check843
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_233 Depth 2
                                        #     Child Loop BB1_237 Depth 2
                                        #     Child Loop BB1_229 Depth 2
	slli.d	$t4, $a6, 3
	ldx.d	$t4, $a5, $t4
	alsl.d	$s8, $a6, $a0, 2
	bltu	$a3, $s6, .LBB1_227
# %bb.226:                              # %vector.memcheck828
                                        #   in Loop: Header=BB1_225 Depth=1
	add.d	$fp, $t4, $t0
	sltu	$fp, $a4, $fp
	sltu	$s0, $t4, $t1
	and	$fp, $fp, $s0
	or	$fp, $fp, $a7
	beqz	$fp, .LBB1_230
.LBB1_227:                              #   in Loop: Header=BB1_225 Depth=1
	move	$fp, $zero
	move	$ra, $t4
	move	$t4, $a4
.LBB1_228:                              # %vec.epilog.scalar.ph863.preheader
                                        #   in Loop: Header=BB1_225 Depth=1
	sub.d	$fp, $a3, $fp
	.p2align	4, , 16
.LBB1_229:                              # %vec.epilog.scalar.ph863
                                        #   Parent Loop BB1_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $ra, 0
	fld.s	$fa1, $s8, 0
	fld.s	$fa2, $t4, 0
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fst.s	$fa0, $t4, 0
	addi.d	$t4, $t4, 4
	addi.w	$fp, $fp, -1
	addi.d	$ra, $ra, 4
	bnez	$fp, .LBB1_229
	b	.LBB1_224
.LBB1_230:                              # %vector.main.loop.iter.check845
                                        #   in Loop: Header=BB1_225 Depth=1
	bgeu	$a3, $s7, .LBB1_232
# %bb.231:                              #   in Loop: Header=BB1_225 Depth=1
	move	$s0, $zero
	b	.LBB1_236
.LBB1_232:                              # %vector.ph846
                                        #   in Loop: Header=BB1_225 Depth=1
	xvldrepl.w	$xr0, $s8, 0
	addi.d	$fp, $t4, 32
	move	$s0, $t2
	move	$ra, $s4
	.p2align	4, , 16
.LBB1_233:                              # %vector.body849
                                        #   Parent Loop BB1_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $fp, -32
	xvld	$xr2, $fp, 0
	xvld	$xr3, $ra, -32
	xvld	$xr4, $ra, 0
	xvfmadd.s	$xr1, $xr1, $xr0, $xr3
	xvfmadd.s	$xr2, $xr2, $xr0, $xr4
	xvst	$xr1, $ra, -32
	xvst	$xr2, $ra, 0
	addi.d	$ra, $ra, 64
	addi.d	$s0, $s0, -16
	addi.d	$fp, $fp, 64
	bnez	$s0, .LBB1_233
# %bb.234:                              # %middle.block860
                                        #   in Loop: Header=BB1_225 Depth=1
	beq	$t2, $a3, .LBB1_224
# %bb.235:                              # %vec.epilog.iter.check865
                                        #   in Loop: Header=BB1_225 Depth=1
	move	$s0, $t2
	beqz	$t3, .LBB1_239
.LBB1_236:                              # %vec.epilog.ph864
                                        #   in Loop: Header=BB1_225 Depth=1
	add.d	$ra, $t4, $t7
	vldrepl.w	$vr0, $s8, 0
	alsl.d	$fp, $s0, $a4, 2
	alsl.d	$t4, $s0, $t4, 2
	add.d	$s0, $s5, $s0
	.p2align	4, , 16
.LBB1_237:                              # %vec.epilog.vector.body871
                                        #   Parent Loop BB1_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t4, 0
	vld	$vr2, $fp, 0
	vfmadd.s	$vr1, $vr1, $vr0, $vr2
	vst	$vr1, $fp, 0
	addi.d	$fp, $fp, 16
	addi.d	$s0, $s0, 4
	addi.d	$t4, $t4, 16
	bnez	$s0, .LBB1_237
# %bb.238:                              # %vec.epilog.middle.block882
                                        #   in Loop: Header=BB1_225 Depth=1
	move	$t4, $t8
	move	$fp, $t6
	beq	$t6, $a3, .LBB1_224
	b	.LBB1_228
.LBB1_239:                              #   in Loop: Header=BB1_225 Depth=1
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	add.d	$ra, $t4, $fp
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	move	$fp, $t2
	b	.LBB1_228
.LBB1_240:                              # %vector.ph795
	bstrpick.d	$a6, $a2, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$t3, $a6, 4
	addi.d	$a6, $a4, 32
	addi.d	$t1, $a5, 32
	move	$t2, $t3
.LBB1_241:                              # %vector.body798
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $t1, -32
	xvld	$xr2, $t1, 0
	xvfmul.s	$xr1, $xr1, $xr0
	xvfmul.s	$xr2, $xr2, $xr0
	xvst	$xr1, $a6, -32
	xvst	$xr2, $a6, 0
	addi.d	$a6, $a6, 64
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB1_241
# %bb.242:                              # %middle.block807
	beq	$t3, $a2, .LBB1_210
# %bb.243:                              # %vec.epilog.iter.check
	andi	$a6, $a2, 12
	beqz	$a6, .LBB1_247
.LBB1_244:                              # %vec.epilog.ph
	bstrpick.d	$t1, $a2, 30, 2
	slli.d	$t2, $t1, 2
	alsl.d	$a6, $t1, $a5, 4
	alsl.d	$t1, $t1, $a4, 4
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$t4, $t3, $a4, 2
	alsl.d	$a5, $t3, $a5, 2
	sub.d	$t3, $t3, $t2
	.p2align	4, , 16
.LBB1_245:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vfmul.s	$vr1, $vr1, $vr0
	vst	$vr1, $t4, 0
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 4
	addi.d	$a5, $a5, 16
	bnez	$t3, .LBB1_245
# %bb.246:                              # %vec.epilog.middle.block
	bne	$t2, $a2, .LBB1_208
	b	.LBB1_210
.LBB1_247:
	alsl.d	$a6, $t3, $a5, 2
	alsl.d	$t1, $t3, $a4, 2
	move	$t2, $t3
	b	.LBB1_208
.Lfunc_end1:
	.size	matgen, .Lfunc_end1-matgen
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_70-.LJTI1_0
	.word	.LBB1_70-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_173-.LJTI1_0
	.word	.LBB1_117-.LJTI1_0
	.word	.LBB1_154-.LJTI1_0
	.word	.LBB1_79-.LJTI1_0
	.word	.LBB1_98-.LJTI1_0
	.word	.LBB1_135-.LJTI1_0
                                        # -- End function
	.text
	.globl	get_space                       # -- Begin function get_space
	.p2align	5
	.type	get_space,@function
get_space:                              # @get_space
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
	move	$s3, $a0
	ld.w	$a0, $a0, 4
	move	$s1, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	blez	$a0, .LBB2_4
# %bb.1:                                # %.lr.ph
	ori	$s5, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s4, $a0, %pc_lo12(.Lstr.5)
	move	$s6, $zero
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s5
	beqz	$a0, .LBB2_9
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $s3, 4
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB2_2
.LBB2_4:                                # %._crit_edge
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	st.d	$a0, $s2, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	st.d	$a0, $s0, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	st.d	$a0, $fp, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $s1, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s4, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB2_9
# %bb.5:
	ld.d	$a1, $s0, 0
	beqz	$a1, .LBB2_9
# %bb.6:
	ld.d	$a1, $fp, 0
	beqz	$a1, .LBB2_9
# %bb.7:
	beqz	$a0, .LBB2_9
# %bb.8:
	move	$a0, $zero
	b	.LBB2_10
.LBB2_9:                                # %.sink.split
	move	$a0, $s4
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB2_10:
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
.Lfunc_end2:
	.size	get_space, .Lfunc_end2-get_space
                                        # -- End function
	.globl	matvec                          # -- Begin function matvec
	.p2align	5
	.type	matvec,@function
matvec:                                 # @matvec
# %bb.0:
	move	$a4, $a0
	ld.w	$a5, $a0, 0
	ori	$a0, $zero, 1
	blez	$a5, .LBB3_14
# %bb.1:
	ld.w	$a6, $a4, 4
	blez	$a6, .LBB3_14
# %bb.2:
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $a4, 8
	beqz	$a3, .LBB3_7
# %bb.3:                                # %.lr.ph.us.preheader
	move	$a3, $zero
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB3_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	st.w	$zero, $a2, 0
	move	$a7, $a5
	fmov.s	$fa1, $fa0
	move	$t0, $a1
	.p2align	4, , 16
.LBB3_5:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $a4, 0
	fld.s	$fa3, $t0, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a2, 0
	addi.d	$t0, $t0, 4
	addi.w	$a7, $a7, -1
	addi.d	$a4, $a4, 4
	bnez	$a7, .LBB3_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	bne	$a3, $a6, .LBB3_4
	b	.LBB3_13
.LBB3_7:                                # %iter.check
	ld.d	$a3, $a0, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a6, .LBB3_15
# %bb.8:
	move	$t0, $zero
.LBB3_9:                                # %.lr.ph.preheader
	move	$a4, $a3
	move	$a7, $a2
.LBB3_10:                               # %.lr.ph.preheader
	sub.d	$a3, $a6, $t0
	.p2align	4, , 16
.LBB3_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a1, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a7, 0
	addi.d	$a7, $a7, 4
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB3_11
.LBB3_12:                               # %.preheader
	ori	$a3, $zero, 1
	bne	$a5, $a3, .LBB3_19
.LBB3_13:
	move	$a0, $zero
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB3_14:                               # %.loopexit
	ret
.LBB3_15:                               # %vector.memcheck
	addi.d	$a4, $a6, -1
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	addi.d	$a7, $a4, 4
	add.d	$a4, $a2, $a7
	add.d	$a7, $a3, $a7
	sltu	$a7, $a2, $a7
	sltu	$t0, $a3, $a4
	and	$a7, $a7, $t0
	move	$t0, $zero
	bnez	$a7, .LBB3_9
# %bb.16:                               # %vector.memcheck
	addi.d	$a7, $a1, 4
	sltu	$a7, $a2, $a7
	sltu	$a4, $a1, $a4
	and	$a4, $a7, $a4
	bnez	$a4, .LBB3_9
# %bb.17:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a6, $a4, .LBB3_36
# %bb.18:
	move	$t1, $zero
	b	.LBB3_40
.LBB3_19:                               # %.lr.ph71.us.preheader
	bstrpick.d	$a4, $a6, 31, 0
	addi.d	$a7, $a6, -1
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 2
	addi.d	$a7, $a7, 4
	add.d	$t0, $a2, $a7
	addi.d	$t1, $a1, 4
	alsl.d	$t2, $a5, $a1, 2
	sltu	$t2, $a2, $t2
	sltu	$t1, $t1, $t0
	and	$t1, $t2, $t1
	bstrpick.d	$t3, $a4, 30, 4
	slli.d	$t2, $t3, 4
	slli.d	$t3, $t3, 6
	add.d	$t4, $a2, $t3
	andi	$t5, $a4, 12
	bstrpick.d	$t8, $a4, 30, 2
	slli.d	$t6, $t8, 2
	slli.d	$t7, $t8, 4
	alsl.d	$t8, $t8, $a2, 4
	addi.d	$fp, $a2, 32
	sub.d	$s0, $zero, $t6
	ori	$s1, $zero, 4
	ori	$s2, $zero, 16
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_20:                               # %._crit_edge.us74
                                        #   in Loop: Header=BB3_21 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a5, .LBB3_13
.LBB3_21:                               # %iter.check127
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
                                        #     Child Loop BB3_33 Depth 2
                                        #     Child Loop BB3_25 Depth 2
	slli.d	$s3, $a3, 3
	ldx.d	$s4, $a0, $s3
	alsl.d	$s3, $a3, $a1, 2
	bltu	$a6, $s1, .LBB3_23
# %bb.22:                               # %vector.memcheck113
                                        #   in Loop: Header=BB3_21 Depth=1
	add.d	$s5, $s4, $a7
	sltu	$s5, $a2, $s5
	sltu	$s6, $s4, $t0
	and	$s5, $s5, $s6
	or	$s5, $s5, $t1
	beqz	$s5, .LBB3_26
.LBB3_23:                               #   in Loop: Header=BB3_21 Depth=1
	move	$s6, $zero
	move	$s5, $s4
	move	$s4, $a2
.LBB3_24:                               # %vec.epilog.scalar.ph147.preheader
                                        #   in Loop: Header=BB3_21 Depth=1
	sub.d	$s6, $a6, $s6
	.p2align	4, , 16
.LBB3_25:                               # %vec.epilog.scalar.ph147
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	fld.s	$fa1, $s3, 0
	fld.s	$fa2, $s4, 0
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fst.s	$fa0, $s4, 0
	addi.d	$s4, $s4, 4
	addi.w	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	bnez	$s6, .LBB3_25
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_26:                               # %vector.main.loop.iter.check129
                                        #   in Loop: Header=BB3_21 Depth=1
	bgeu	$a6, $s2, .LBB3_28
# %bb.27:                               #   in Loop: Header=BB3_21 Depth=1
	move	$s7, $zero
	b	.LBB3_32
.LBB3_28:                               # %vector.ph130
                                        #   in Loop: Header=BB3_21 Depth=1
	xvldrepl.w	$xr0, $s3, 0
	addi.d	$s5, $s4, 32
	move	$s6, $t2
	move	$s7, $fp
	.p2align	4, , 16
.LBB3_29:                               # %vector.body133
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $s5, -32
	xvld	$xr2, $s5, 0
	xvld	$xr3, $s7, -32
	xvld	$xr4, $s7, 0
	xvfmadd.s	$xr1, $xr1, $xr0, $xr3
	xvfmadd.s	$xr2, $xr2, $xr0, $xr4
	xvst	$xr1, $s7, -32
	xvst	$xr2, $s7, 0
	addi.d	$s7, $s7, 64
	addi.d	$s6, $s6, -16
	addi.d	$s5, $s5, 64
	bnez	$s6, .LBB3_29
# %bb.30:                               # %middle.block144
                                        #   in Loop: Header=BB3_21 Depth=1
	beq	$t2, $a4, .LBB3_20
# %bb.31:                               # %vec.epilog.iter.check149
                                        #   in Loop: Header=BB3_21 Depth=1
	move	$s7, $t2
	beqz	$t5, .LBB3_35
.LBB3_32:                               # %vec.epilog.ph148
                                        #   in Loop: Header=BB3_21 Depth=1
	add.d	$s5, $s4, $t7
	vldrepl.w	$vr0, $s3, 0
	alsl.d	$s6, $s7, $a2, 2
	alsl.d	$s4, $s7, $s4, 2
	add.d	$s7, $s0, $s7
	.p2align	4, , 16
.LBB3_33:                               # %vec.epilog.vector.body154
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $s4, 0
	vld	$vr2, $s6, 0
	vfmadd.s	$vr1, $vr1, $vr0, $vr2
	vst	$vr1, $s6, 0
	addi.d	$s6, $s6, 16
	addi.d	$s7, $s7, 4
	addi.d	$s4, $s4, 16
	bnez	$s7, .LBB3_33
# %bb.34:                               # %vec.epilog.middle.block165
                                        #   in Loop: Header=BB3_21 Depth=1
	move	$s4, $t8
	move	$s6, $t6
	beq	$t6, $a4, .LBB3_20
	b	.LBB3_24
.LBB3_35:                               #   in Loop: Header=BB3_21 Depth=1
	add.d	$s5, $s4, $t3
	move	$s4, $t4
	move	$s6, $t2
	b	.LBB3_24
.LBB3_36:                               # %vector.ph
	bstrpick.d	$a4, $a6, 30, 4
	xvldrepl.w	$xr0, $a1, 0
	slli.d	$t1, $a4, 4
	addi.d	$a4, $a2, 32
	addi.d	$a7, $a3, 32
	move	$t0, $t1
	.p2align	4, , 16
.LBB3_37:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a7, -32
	xvld	$xr2, $a7, 0
	xvfmul.s	$xr1, $xr1, $xr0
	xvfmul.s	$xr2, $xr2, $xr0
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_37
# %bb.38:                               # %middle.block
	beq	$t1, $a6, .LBB3_12
# %bb.39:                               # %vec.epilog.iter.check
	andi	$a4, $a6, 12
	beqz	$a4, .LBB3_43
.LBB3_40:                               # %vec.epilog.ph
	bstrpick.d	$a7, $a6, 30, 2
	slli.d	$t0, $a7, 2
	alsl.d	$a4, $a7, $a3, 4
	alsl.d	$a7, $a7, $a2, 4
	vldrepl.w	$vr0, $a1, 0
	alsl.d	$t2, $t1, $a2, 2
	alsl.d	$a3, $t1, $a3, 2
	sub.d	$t1, $t1, $t0
	.p2align	4, , 16
.LBB3_41:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vfmul.s	$vr1, $vr1, $vr0
	vst	$vr1, $t2, 0
	addi.d	$t2, $t2, 16
	addi.d	$t1, $t1, 4
	addi.d	$a3, $a3, 16
	bnez	$t1, .LBB3_41
# %bb.42:                               # %vec.epilog.middle.block
	bne	$t0, $a6, .LBB3_10
	b	.LBB3_12
.LBB3_43:
	alsl.d	$a4, $t1, $a3, 2
	alsl.d	$a7, $t1, $a2, 2
	move	$t0, $t1
	b	.LBB3_10
.Lfunc_end3:
	.size	matvec, .Lfunc_end3-matvec
                                        # -- End function
	.globl	matdump                         # -- Begin function matdump
	.p2align	5
	.type	matdump,@function
matdump:                                # @matdump
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
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	blez	$a0, .LBB4_23
# %bb.1:                                # %.lr.ph39
	lu12i.w	$a0, 174762
	ori	$a0, $a0, 2731
	mul.d	$a0, $s0, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
	addi.d	$a1, $zero, -6
	mul.d	$a1, $a0, $a1
	add.w	$s6, $a1, $s0
	ori	$a1, $zero, 6
	addi.d	$s4, $fp, 8
	blt	$s0, $a1, .LBB4_11
# %bb.2:                                # %.lr.ph39.split.us
	addi.w	$a1, $s0, -6
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -1
	blez	$s6, .LBB4_16
# %bb.3:                                # %.lr.ph.us.us.preheader.preheader
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s0, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s2, $a0, %pc_lo12(.L.str.26)
	move	$s3, $zero
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.us.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #     Child Loop BB4_9 Depth 2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	slli.d	$s7, $s3, 2
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 6
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltu	$a0, $s5, .LBB4_8
# %bb.5:                                # %.peel.next69.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s6, $s0
	ori	$s5, $zero, 6
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_6:                                # %.peel.next69
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $s4, $a0
	fldx.s	$fa0, $a0, $s7
	alsl.d	$s0, $s5, $s4, 3
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, 6
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, -1
	bnez	$s8, .LBB4_6
# %bb.7:                                # %..preheader_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s0, $s6
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
.LBB4_8:                                # %..preheader_crit_edge.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$s5, $s5, $s0, 3
	move	$s8, $s6
	.p2align	4, , 16
.LBB4_9:                                # %..preheader_crit_edge.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, -1
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB4_9
# %bb.10:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB4_4 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$s3, $s3, 1
	blt	$s3, $a0, .LBB4_4
	b	.LBB4_23
.LBB4_11:                               # %.lr.ph39.split
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s0, $a0, %pc_lo12(.L.str.25)
	blez	$s6, .LBB4_21
# %bb.12:                               # %.preheader.us41.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_13:                               # %.preheader.us41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slli.d	$s3, $s2, 2
	move	$s5, $s6
	move	$s7, $s4
	.p2align	4, , 16
.LBB4_14:                               #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	fldx.s	$fa0, $a0, $s3
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 8
	bnez	$s5, .LBB4_14
# %bb.15:                               # %._crit_edge.us47
                                        #   in Loop: Header=BB4_13 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$s2, $s2, 1
	blt	$s2, $a0, .LBB4_13
	b	.LBB4_23
.LBB4_16:                               # %.lr.ph.us.preheader.preheader
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s2, $a0, %pc_lo12(.L.str.26)
	move	$s3, $zero
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               # %..preheader_crit_edge.us
                                        #   in Loop: Header=BB4_18 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB4_23
.LBB4_18:                               # %.lr.ph.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	slli.d	$s8, $s3, 2
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 6
	bltu	$a0, $a1, .LBB4_17
# %bb.19:                               # %.peel.next.preheader
                                        #   in Loop: Header=BB4_18 Depth=1
	ori	$s5, $zero, 6
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_20:                               # %.peel.next
                                        #   Parent Loop BB4_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $s4, $a0
	fldx.s	$fa0, $a0, $s8
	alsl.d	$s7, $s5, $s4, 3
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 16
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 24
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 32
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 40
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, 6
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, -1
	bnez	$s6, .LBB4_20
	b	.LBB4_17
.LBB4_21:                               # %.preheader.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB4_22:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB4_22
.LBB4_23:                               # %._crit_edge40
	ori	$a0, $zero, 10
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end4:
	.size	matdump, .Lfunc_end4-matdump
                                        # -- End function
	.globl	fvecdump                        # -- Begin function fvecdump
	.p2align	5
	.type	fvecdump,@function
fvecdump:                               # @fvecdump
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	lu12i.w	$a0, 174762
	ori	$a0, $a0, 2731
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$s4, $a0, $a1
	addi.d	$a0, $zero, -6
	mul.d	$a0, $s4, $a0
	add.w	$s3, $a0, $s0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	blt	$s0, $a0, .LBB5_4
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s1, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s2, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 12
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 16
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 20
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 24
	addi.w	$s0, $s0, 6
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB5_2
# %bb.3:                                # %._crit_edge
	bnez	$s3, .LBB5_5
	b	.LBB5_9
.LBB5_4:
	move	$s0, $zero
	beqz	$s3, .LBB5_9
.LBB5_5:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB5_8
# %bb.6:                                # %.lr.ph37.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s0, $a0, %pc_lo12(.L.str.27)
	.p2align	4, , 16
.LBB5_7:                                # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $fp, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	addi.d	$fp, $fp, 4
	bnez	$s3, .LBB5_7
.LBB5_8:                                # %._crit_edge38
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB5_9:
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
.Lfunc_end5:
	.size	fvecdump, .Lfunc_end5-fvecdump
                                        # -- End function
	.globl	ivecdump                        # -- Begin function ivecdump
	.p2align	5
	.type	ivecdump,@function
ivecdump:                               # @ivecdump
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	lu12i.w	$a0, 233016
	ori	$a0, $a0, 3641
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 33
	add.d	$s4, $a0, $a1
	addi.d	$a0, $zero, -6
	mul.d	$a0, $s4, $a0
	add.w	$s3, $a0, $s0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	blt	$s0, $a0, .LBB6_4
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s1, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s2, $a0, %pc_lo12(.L.str.29)
	move	$s0, $zero
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 28
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 36
	addi.w	$s0, $s0, 9
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB6_2
# %bb.3:                                # %._crit_edge
	bnez	$s3, .LBB6_5
	b	.LBB6_9
.LBB6_4:
	move	$s0, $zero
	beqz	$s3, .LBB6_9
.LBB6_5:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB6_8
# %bb.6:                                # %.lr.ph37.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s0, $a0, %pc_lo12(.L.str.29)
	.p2align	4, , 16
.LBB6_7:                                # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	addi.d	$fp, $fp, 4
	bnez	$s3, .LBB6_7
.LBB6_8:                                # %._crit_edge38
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB6_9:
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
.Lfunc_end6:
	.size	ivecdump, .Lfunc_end6-ivecdump
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Matrix row dim (%d) or column dim (%d) too big.\n"
	.size	.L.str, 49

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"One-Norm(A) ---------- %E.\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"FACTORED MATRIX FOLLOWS"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"True Solution"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Solution"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Solution to transposed system"
	.size	.L.str.5, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Hilbert Slice.  Test case %d of size %d.\n"
	.size	.L.str.7, 42

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Monoelemental.  Test case %d of size %d.\n"
	.size	.L.str.8, 42

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Tridiagional.  Test case %d of size %d.\n"
	.size	.L.str.9, 41

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Rank One.  Test case %d of size %d.\n"
	.size	.L.str.10, 37

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Zero Column.  Test case %d of size %d.\n"
	.size	.L.str.11, 40

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Upper Triangular.  Test case %d of size %d.\n"
	.size	.L.str.12, 45

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Lower Triangular.  Test case %d of size %d.\n"
	.size	.L.str.13, 45

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Near Overflow.  Test case %d of size %d. BIG = %e\n"
	.size	.L.str.14, 51

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Near Underflow.  Test case %d of size %d. SMALL = %e\n"
	.size	.L.str.15, 54

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"MATRIX FOLLOWS"
	.size	.L.str.18, 15

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SOLUTION"
	.size	.L.str.19, 9

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"RIGHT HAND SIDE"
	.size	.L.str.20, 16

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"TRANSPOSE RIGHT HAND SIDE"
	.size	.L.str.21, 26

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"%3d|"
	.size	.L.str.25, 5

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"    "
	.size	.L.str.26, 5

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"%12.4e"
	.size	.L.str.27, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"%8d"
	.size	.L.str.29, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\n\n**********************************************************************"
	.size	.Lstr, 73

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"MATGEN: Error in matvec."
	.size	.Lstr.2, 25

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"MATGEN: All tests complete."
	.size	.Lstr.3, 28

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"GET_SPACE: Can't get enouph space for vectors..."
	.size	.Lstr.4, 49

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"GET_SPACE: Can't get enouph space for matricies..."
	.size	.Lstr.5, 51

	.section	".note.GNU-stack","",@progbits
	.addrsig
