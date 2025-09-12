	.file	"outbig.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function outbig
.LCPI0_0:
	.dword	0x407f400000000000              # double 500
	.text
	.globl	outbig
	.p2align	5
	.type	outbig,@function
outbig:                                 # @outbig
# %bb.0:
	addi.d	$sp, $sp, -1312
	st.d	$ra, $sp, 1304                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1224                  # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bdxlength)
	ld.d	$a0, $a0, %got_pc_lo12(bdxlength)
	ld.w	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(bdylength)
	ld.d	$a0, $a0, %got_pc_lo12(bdylength)
	ld.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(finalShot)
	ld.d	$a0, $a0, %got_pc_lo12(finalShot)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_2
# %bb.1:
	ori	$a0, $zero, 416
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(rectang)
	st.d	$a0, $a1, %pc_lo12(rectang)
	ori	$a0, $zero, 808
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(PtsArray)
	st.d	$a0, $a1, %pc_lo12(PtsArray)
	ori	$a0, $zero, 808
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(PtsOut)
	st.d	$a0, $a1, %pc_lo12(PtsOut)
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(cktName)
	ld.d	$a0, $a0, %got_pc_lo12(cktName)
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_24
# %bb.3:                                # %.preheader142
	move	$fp, $a0
	slt	$a0, $s1, $s0
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	or	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s2, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	add.w	$a0, $a1, $a0
	blez	$a0, .LBB0_23
# %bb.4:                                # %.lr.ph154.preheader
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s3, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(PtsOut)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(netarray)
	ld.d	$s4, $a0, %got_pc_lo12(netarray)
	pcalau12i	$a0, %got_pc_hi20(termarray)
	ld.d	$s5, $a0, %got_pc_lo12(termarray)
	ori	$a0, $zero, 1
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 184                   # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $s2, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $a2, 1
	bge	$a2, $a1, .LBB0_23
.LBB0_6:                                # %.lr.ph154
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $a1, $a0
	ld.w	$a2, $s1, 56
	alsl.d	$a0, $a2, $s1, 3
	ld.d	$s8, $a0, 152
	ld.d	$s0, $s8, 88
	ld.w	$s6, $s1, 12
	ld.w	$s7, $s1, 16
	ld.d	$a1, $s1, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(initPts)
	jirl	$ra, $ra, 0
	ld.w	$a6, $s8, 56
	ld.w	$a7, $s8, 60
	ld.w	$a4, $s8, 64
	ld.w	$a0, $s2, 0
	ld.w	$a3, $s8, 68
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	bge	$a0, $s3, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s8, 40
	ld.w	$a1, $s8, 44
	ld.w	$a2, $s8, 48
	ld.w	$a5, $s8, 52
	sub.w	$a6, $a6, $a0
	add.w	$a7, $a1, $a7
	sub.w	$a4, $a4, $a2
	add.w	$a3, $a5, $a3
	b	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	fld.d	$fa0, $s8, 8
	add.w	$a0, $a6, $s6
	add.w	$a1, $a4, $s7
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	add.w	$a2, $a3, $s7
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	move	$s3, $a7
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s8, 16
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	add.w	$a0, $s3, $s6
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s8, 24
	add.w	$s3, $a0, $s3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.w	$a1, $a0, $s6
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	add.w	$a2, $s3, $s6
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s8, 32
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	move	$a7, $s3
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $a6
	move	$a1, $a7
	move	$a2, $a4
	move	$s4, $a4
	move	$s3, $a6
	move	$s8, $a7
	pcaddu18i	$ra, %call36(addPts)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	alsl.d	$a0, $s6, $s3, 1
	add.d	$a0, $a0, $s8
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 1
	alsl.d	$a0, $s7, $s4, 1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a4, $a0, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(unbust)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(PtsOut)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_14
# %bb.12:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s8, $zero
	ori	$s3, $zero, 1
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_13:                               # %.lr.ph
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $a0, $s8
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 12
	add.w	$a2, $a1, $s6
	add.w	$a3, $a0, $s7
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(PtsOut)
	ld.w	$a1, $a0, 0
	addi.d	$s3, $s3, 1
	addi.d	$s8, $s8, 8
	blt	$s3, $a1, .LBB0_13
.LBB0_14:                               # %._crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 12
	add.w	$a2, $a1, $s6
	add.w	$a3, $a0, $s7
	move	$a0, $fp
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beqz	$s0, .LBB0_19
# %bb.15:                               # %.lr.ph147.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(pinnames)
	ld.d	$s8, $a0, %got_pc_lo12(pinnames)
	ld.d	$s3, $s8, 0
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB0_19
.LBB0_17:                               # %.lr.ph147
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s0, 24
	slli.d	$s2, $a0, 3
	ldx.d	$a0, $s3, $s2
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a0, $s5, 0
	ldx.d	$a0, $a0, $s2
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $s0, 12
	ld.w	$a3, $s0, 8
	ld.d	$a2, $a0, 64
	add.w	$a4, $a1, $s7
	add.w	$a3, $a3, $s6
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s8, 0
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_19:                               # %._crit_edge148
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s1, 76
	ori	$a1, $zero, 1
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_5
# %bb.20:                               # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s1, 132
	blez	$a0, .LBB0_5
# %bb.21:                               # %.lr.ph151
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s0, $zero
	move	$s8, $zero
	.p2align	4, , 16
.LBB0_22:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 144
	add.d	$a0, $a0, $s0
	ld.w	$a1, $a0, 44
	ld.d	$a2, $s5, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $s4, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a3, $a0, 80
	ld.w	$a0, $a0, 84
	ld.d	$a2, $a1, 64
	add.w	$a3, $a3, $s6
	add.w	$a4, $a0, $s7
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 132
	addi.d	$s8, $s8, 1
	addi.d	$s0, $s0, 44
	blt	$s8, $a0, .LBB0_22
	b	.LBB0_5
.LBB0_23:                               # %._crit_edge155
	pcalau12i	$a0, %got_pc_hi20(blockl)
	ld.d	$a0, $a0, %got_pc_lo12(blockl)
	ld.w	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	ld.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(blockb)
	ld.d	$a0, $a0, %got_pc_lo12(blockb)
	ld.w	$s2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$a0, $a0, %got_pc_lo12(blockt)
	ld.w	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 32
	st.d	$s0, $sp, 24
	st.d	$s2, $sp, 16
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $s2
	move	$a5, $s0
	move	$a6, $s3
	move	$a7, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s8, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1304                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1312
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.LBB0_24:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$a0, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 200
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	outbig, .Lfunc_end0-outbig
                                        # -- End function
	.type	rectang,@object                 # @rectang
	.comm	rectang,8,8
	.type	PtsArray,@object                # @PtsArray
	.comm	PtsArray,8,8
	.type	PtsOut,@object                  # @PtsOut
	.comm	PtsOut,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.cfb"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"can't open %s\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"L NC;\n94 %s %d %d;\n"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"L NC;\nW %d"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %d %d"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" %d %d;\n"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"PHANTOM"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"L NC;\n"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"W %d %d %d %d %d %d %d %d %d %d %d;\n"
	.size	.L.str.9, 37

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"E\n"
	.size	.L.str.10, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
