	.file	"misr.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x40f86a0000000000              # double 1.0E+5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$s1, %pc_hi20(reg_len)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 6
	st.w	$a0, $s1, %pc_lo12(reg_len)
	bge	$a1, $s0, .LBB0_14
# %bb.1:
	ld.d	$a1, $fp, 48
	addi.d	$a0, $sp, 36
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 7
	beq	$s0, $a0, .LBB0_15
# %bb.2:
	ld.d	$a0, $fp, 56
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 30
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	beq	$s0, $a0, .LBB0_16
# %bb.3:
	ld.d	$a0, $fp, 64
	addi.d	$a2, $sp, 32
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	bltu	$s0, $a0, .LBB0_17
# %bb.4:
	ld.d	$a0, $fp, 72
	addi.d	$a2, $sp, 34
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s1, %pc_lo12(reg_len)
	ori	$a0, $zero, 101
	bge	$fp, $a0, .LBB0_18
.LBB0_5:
	addi.d	$a0, $sp, 36
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_19
# %bb.6:
	addi.d	$a0, $sp, 30
	pcaddu18i	$ra, %call36(seed48)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(reg_len)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 136
	bltz	$a0, .LBB0_9
# %bb.7:                                # %.lr.ph.i.preheader
	addi.d	$fp, $a0, 1
	addi.d	$s2, $sp, 136
	ori	$s0, $zero, 1
	lu32i.d	$s0, 1
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 0
	st.d	$zero, $a0, 8
	addi.w	$fp, $fp, -1
	st.d	$a0, $s2, 8
	move	$s2, $a0
	bnez	$fp, .LBB0_8
.LBB0_9:                                # %create_link_list.exit
	move	$s2, $zero
	move	$s0, $zero
	lu12i.w	$a0, 24
	ori	$fp, $a0, 1696
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %init.exit
                                        #   in Loop: Header=BB0_11 Depth=1
	ori	$a0, $zero, 10
	addi.d	$a1, $sp, 136
	vldi	$vr0, -944
	addi.d	$a2, $sp, 36
	pcaddu18i	$ra, %call36(simulate)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	add.w	$s0, $a0, $s0
	beq	$s2, $fp, .LBB0_20
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	ld.d	$a0, $sp, 144
	beqz	$a0, .LBB0_10
# %bb.12:                               # %.lr.ph.i38.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$a1, $sp, 136
	.p2align	4, , 16
.LBB0_13:                               # %.lr.ph.i38
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a0
	ld.w	$a3, $a1, 0
	ld.d	$a0, $a0, 8
	st.w	$a3, $a1, 4
	move	$a1, $a2
	bnez	$a0, .LBB0_13
	b	.LBB0_10
.LBB0_14:                               # %.thread49
	ori	$a0, $zero, 48
	st.h	$a0, $sp, 45
	lu12i.w	$a0, 197379
	ori	$a0, $a0, 48
	bstrins.d	$a0, $a0, 61, 32
	st.d	$a0, $sp, 37
	ori	$a0, $zero, 49
	st.b	$a0, $sp, 36
.LBB0_15:                               # %.thread
	ori	$a0, $zero, 1
	st.h	$a0, $sp, 30
.LBB0_16:                               # %.thread39
	st.h	$zero, $sp, 32
.LBB0_17:
	st.h	$zero, $sp, 34
	ld.w	$fp, $s1, %pc_lo12(reg_len)
	ori	$a0, $zero, 101
	blt	$fp, $a0, .LBB0_5
.LBB0_18:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	b	.LBB0_21
.LBB0_19:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	b	.LBB0_21
.LBB0_20:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(reg_len)
	ld.hu	$a6, $sp, 30
	ld.hu	$a7, $sp, 32
	ld.hu	$a0, $sp, 34
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	sub.d	$a2, $fp, $s0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	st.d	$a0, $sp, 0
	fst.d	$fa0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	lu52i.d	$a3, $zero, 1021
	ori	$a2, $zero, 10
	addi.d	$a5, $sp, 36
	move	$a4, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB0_21:
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	create_link_list                # -- Begin function create_link_list
	.p2align	5
	.type	create_link_list,@function
create_link_list:                       # @create_link_list
# %bb.0:
	pcalau12i	$a1, %pc_hi20(reg_len)
	ld.w	$a1, $a1, %pc_lo12(reg_len)
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	bltz	$a1, .LBB1_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$s0, $a1, 1
	ori	$s1, $zero, 1
	lu32i.d	$s1, 1
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 0
	st.d	$zero, $a0, 8
	addi.w	$s0, $s0, -1
	st.d	$a0, $fp, 8
	move	$fp, $a0
	bnez	$s0, .LBB1_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB1_4:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	create_link_list, .Lfunc_end1-create_link_list
                                        # -- End function
	.globl	init                            # -- Begin function init
	.p2align	5
	.type	init,@function
init:                                   # @init
# %bb.0:
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	ld.w	$a3, $a0, 0
	ld.d	$a1, $a1, 8
	st.w	$a3, $a0, 4
	move	$a0, $a2
	bnez	$a1, .LBB2_1
.LBB2_2:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	init, .Lfunc_end2-init
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function simulate
.LCPI3_0:
	.dword	0x408f400000000000              # double 1000
.LCPI3_1:
	.dword	0x40c3880000000000              # double 1.0E+4
	.text
	.globl	simulate
	.p2align	5
	.type	simulate,@function
simulate:                               # @simulate
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(reg_len)
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a4, $a3, %pc_lo12(reg_len)
	move	$s6, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	blez	$a0, .LBB3_20
# %bb.1:                                # %.preheader92.lr.ph
	move	$s4, $a2
	fmov.d	$fs0, $fa0
	move	$a5, $zero
	addi.w	$a0, $a4, -1
	lu12i.w	$a1, -507376
	ori	$a1, $a1, 2115
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a1, $a1, $a0
	bstrpick.d	$a2, $a1, 31, 31
	srai.d	$a1, $a1, 4
	add.d	$a1, $a1, $a2
	slli.d	$a2, $a1, 5
	sub.w	$a2, $a2, $a1
	sub.w	$a6, $a0, $a2
	ori	$a0, $zero, 1
	slt	$a3, $a0, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a6, 31, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $s4, $a2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -117441
	ori	$a0, $a0, 1999
	lu32i.d	$a0, 301989
	lu52i.d	$s1, $a0, 524
	lu12i.w	$a0, 231525
	ori	$a0, $a0, 2379
	lu32i.d	$a0, -145962
	lu52i.d	$a0, $a0, 838
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1808
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $s3, $s2
	andi	$a0, $a0, 1
	st.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(lrand48)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mulh.d	$a1, $a0, $a1
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 11
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI3_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI3_1)
	sub.d	$a0, $a0, $a1
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	xor	$a0, $s2, $a0
	add.d	$a0, $s0, $a0
	andi	$a0, $a0, 1
	addi.w	$a5, $s5, 1
	st.w	$a0, $fp, 4
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a5, $a0, .LBB3_19
.LBB3_3:                                # %.preheader92
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #       Child Loop BB3_8 Depth 3
                                        #     Child Loop BB3_14 Depth 2
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(.LCPI3_0)
	ori	$a0, $zero, 32
	blt	$a4, $a0, .LBB3_10
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	move	$s7, $zero
	move	$s0, $zero
	move	$s3, $zero
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s4, $s4, 31
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$s7, $a0, .LBB3_11
.LBB3_6:                                # %.lr.ph
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_8 Depth 3
	pcaddu18i	$ra, %call36(lrand48)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s8, $zero
	move	$fp, $s6
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_7:                                #   in Loop: Header=BB3_8 Depth=3
	ld.d	$a0, $fp, 8
	ld.w	$a0, $a0, 0
	add.d	$a0, $a0, $s2
	andi	$a0, $a0, 1
	st.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(lrand48)
	jirl	$ra, $ra, 0
	mulh.d	$a1, $a0, $s1
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1000
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	fld.d	$fa0, $s5, %pc_lo12(.LCPI3_0)
	ld.d	$s6, $fp, 8
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	ld.w	$a0, $s6, 4
	fcmp.clt.d	$fcc0, $fa0, $fs0
	movcf2gr	$a1, $fcc0
	xor	$a1, $s2, $a1
	add.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	st.w	$a0, $fp, 4
	addi.d	$s8, $s8, 1
	srai.d	$s2, $s2, 1
	move	$fp, $s6
	ori	$a0, $zero, 31
	beq	$s8, $a0, .LBB3_5
.LBB3_8:                                #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a0, $s4, $s8
	ori	$a1, $zero, 49
	bne	$a0, $a1, .LBB3_7
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=3
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	add.d	$s3, $a0, $s3
	add.d	$s0, $a1, $s0
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_10:                               #   in Loop: Header=BB3_3 Depth=1
	move	$s3, $zero
	move	$s0, $zero
.LBB3_11:                               # %._crit_edge
                                        #   in Loop: Header=BB3_3 Depth=1
	pcaddu18i	$ra, %call36(lrand48)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	blez	$a0, .LBB3_16
# %bb.12:                               # %.lr.ph110.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_13:                               #   in Loop: Header=BB3_14 Depth=2
	ld.d	$a0, $s6, 8
	ld.w	$a0, $a0, 0
	add.d	$a0, $a0, $s2
	andi	$a0, $a0, 1
	st.w	$a0, $s6, 0
	pcaddu18i	$ra, %call36(lrand48)
	jirl	$ra, $ra, 0
	mulh.d	$a1, $a0, $s1
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1000
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	fld.d	$fa0, $s5, %pc_lo12(.LCPI3_0)
	ld.d	$fp, $s6, 8
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	ld.w	$a0, $fp, 4
	fcmp.clt.d	$fcc0, $fa0, $fs0
	movcf2gr	$a1, $fcc0
	xor	$a1, $s2, $a1
	add.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	st.w	$a0, $s6, 4
	srai.d	$s2, $s2, 1
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 1
	move	$s6, $fp
	beqz	$s7, .LBB3_17
.LBB3_14:                               # %.lr.ph110
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s8, 0
	ori	$a1, $zero, 49
	bne	$a0, $a1, .LBB3_13
# %bb.15:                               #   in Loop: Header=BB3_14 Depth=2
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s6, 4
	add.d	$s3, $a0, $s3
	add.d	$s0, $a1, $s0
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_16:                               #   in Loop: Header=BB3_3 Depth=1
	move	$fp, $s6
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
.LBB3_17:                               # %._crit_edge111
                                        #   in Loop: Header=BB3_3 Depth=1
	pcaddu18i	$ra, %call36(lrand48)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(reg_len)
	add.d	$a1, $s4, $a1
	ld.bu	$a1, $a1, -1
	move	$s2, $a0
	ori	$a0, $zero, 49
	bne	$a1, $a0, .LBB3_2
# %bb.18:                               #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	add.d	$s3, $a0, $s3
	add.d	$s0, $a1, $s0
	b	.LBB3_2
.LBB3_19:                               # %.preheader.loopexit
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(reg_len)
.LBB3_20:                               # %.preheader
	move	$a0, $zero
	blez	$a4, .LBB3_23
# %bb.21:                               # %.lr.ph119.preheader
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB3_22:                               # %.lr.ph119
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s6, 0
	ld.w	$a3, $s6, 4
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a3, $a1, $a2
	ld.d	$s6, $s6, 8
	maskeqz	$a0, $a0, $a2
	addi.w	$a4, $a4, -1
	or	$a0, $a0, $a3
	bnez	$a4, .LBB3_22
.LBB3_23:                               # %._crit_edge120
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end3:
	.size	simulate, .Lfunc_end3-simulate
                                        # -- End function
	.globl	kill_list                       # -- Begin function kill_list
	.p2align	5
	.type	kill_list,@function
kill_list:                              # @kill_list
# %bb.0:
	beqz	$a0, .LBB4_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB4_2
# %bb.3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB4_4:                                # %._crit_edge
	ret
.Lfunc_end4:
	.size	kill_list, .Lfunc_end4-kill_list
                                        # -- End function
	.type	reg_len,@object                 # @reg_len
	.bss
	.globl	reg_len
	.p2align	2, 0x0
reg_len:
	.word	0                               # 0x0
	.size	reg_len, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%hu"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Register too long; Max. = %d\n"
	.size	.L.str.1, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"reg_len\t#_vect\tprob      #_tms\tstruct\tseed1\tseed2\tseed3\tProb same output\n "
	.size	.L.str.4, 75

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%d\t%d\t%.3e %d\t%s\t%d\t%d\t%d\t%.8e\n"
	.size	.L.str.5, 32

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Structure does not match Register length:"
	.size	.Lstr, 42

	.section	".note.GNU-stack","",@progbits
	.addrsig
