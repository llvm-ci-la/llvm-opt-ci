	.file	"himenobmtxpa.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	1                               # 0x1
	.word	64                              # 0x40
	.word	64                              # 0x40
	.word	128                             # 0x80
.LCPI0_1:
	.word	4                               # 0x4
	.word	64                              # 0x40
	.word	64                              # 0x40
	.word	128                             # 0x80
.LCPI0_2:
	.word	3                               # 0x3
	.word	64                              # 0x40
	.word	64                              # 0x40
	.word	128                             # 0x80
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_3:
	.word	0x45781000                      # float 3969
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.preheader25.lr.ph.split.us.split.us.i
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 64
	ori	$a2, $zero, 64
	ori	$a3, $zero, 128
	ori	$s3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 63
	ori	$a2, $zero, 63
	ori	$a3, $zero, 127
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(p)
	addi.d	$fp, $a0, %pc_lo12(p)
	vst	$vr0, $fp, 8
	lu12i.w	$s0, 512
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(bnd)
	addi.d	$fp, $a0, %pc_lo12(bnd)
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(wrk1)
	addi.d	$fp, $a0, %pc_lo12(wrk1)
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(wrk2)
	addi.d	$fp, $a0, %pc_lo12(wrk2)
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_1)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$s1, $a0, %pc_lo12(a)
	vst	$vr0, $s1, 8
	lu12i.w	$a0, 2048
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addu16i.d	$a0, $a0, 96
	addi.d	$s0, $a0, 256
	addu16i.d	$a0, $s4, 64
	addi.d	$fp, $a0, 256
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	addu16i.d	$a0, $s4, 32
	addi.d	$s2, $a0, 256
	st.d	$s4, $s1, 0
	pcalau12i	$a0, %pc_hi20(b)
	addi.d	$s7, $a0, %pc_lo12(b)
	vst	$vr0, $s7, 8
	lu12i.w	$s1, 1536
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $s7, 0
	pcalau12i	$a0, %pc_hi20(c)
	addi.d	$s5, $a0, %pc_lo12(c)
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s5, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	addu16i.d	$a1, $s1, 64
	addi.d	$s7, $a1, 256
	addu16i.d	$a1, $s1, 32
	addi.d	$s8, $a1, 256
	st.d	$s1, $s5, 0
	addi.d	$a1, $s6, 256
	lu12i.w	$s6, 8
	.p2align	4, , 16
.LBB0_1:                                # %.preheader25.us.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI0_3)
	mul.d	$a2, $a0, $a0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	vreplvei.w	$vr0, $vr0, 0
	move	$a2, $a1
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_2:                                # %.preheader.us.us.us.i
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a2, -256
	vst	$vr0, $a2, -240
	vst	$vr0, $a2, -224
	vst	$vr0, $a2, -208
	vst	$vr0, $a2, -192
	vst	$vr0, $a2, -176
	vst	$vr0, $a2, -160
	vst	$vr0, $a2, -144
	vst	$vr0, $a2, -128
	vst	$vr0, $a2, -112
	vst	$vr0, $a2, -96
	vst	$vr0, $a2, -80
	vst	$vr0, $a2, -64
	vst	$vr0, $a2, -48
	vst	$vr0, $a2, -32
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 48
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 80
	vst	$vr0, $a2, 96
	vst	$vr0, $a2, 112
	vst	$vr0, $a2, 128
	vst	$vr0, $a2, 144
	vst	$vr0, $a2, 160
	vst	$vr0, $a2, 176
	vst	$vr0, $a2, 192
	vst	$vr0, $a2, 208
	vst	$vr0, $a2, 224
	vst	$vr0, $a2, 240
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_2
# %bb.3:                                # %._crit_edge28.split.us.us.us.i
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a1, $a1, $s6
	bne	$a0, $s3, .LBB0_1
# %bb.4:                                # %.preheader23.us.us.i.preheader
	move	$a0, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a1, $a1, 256
	lu12i.w	$a2, 260096
	vreplgr2vr.w	$vr0, $a2
	ori	$a2, $zero, 64
	.p2align	4, , 16
.LBB0_5:                                # %.preheader23.us.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	move	$a3, $a1
	ori	$a4, $zero, 64
	.p2align	4, , 16
.LBB0_6:                                # %.preheader.us.us.us.i39
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a3, -256
	vst	$vr0, $a3, -240
	vst	$vr0, $a3, -224
	vst	$vr0, $a3, -208
	vst	$vr0, $a3, -192
	vst	$vr0, $a3, -176
	vst	$vr0, $a3, -160
	vst	$vr0, $a3, -144
	vst	$vr0, $a3, -128
	vst	$vr0, $a3, -112
	vst	$vr0, $a3, -96
	vst	$vr0, $a3, -80
	vst	$vr0, $a3, -64
	vst	$vr0, $a3, -48
	vst	$vr0, $a3, -32
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	vst	$vr0, $a3, 16
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 48
	vst	$vr0, $a3, 64
	vst	$vr0, $a3, 80
	vst	$vr0, $a3, 96
	vst	$vr0, $a3, 112
	vst	$vr0, $a3, 128
	vst	$vr0, $a3, 144
	vst	$vr0, $a3, 160
	vst	$vr0, $a3, 176
	vst	$vr0, $a3, 192
	vst	$vr0, $a3, 208
	vst	$vr0, $a3, 224
	vst	$vr0, $a3, 240
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 512
	bnez	$a4, .LBB0_6
# %bb.7:                                # %._crit_edge26.split.us.us.us.i
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$a1, $a1, $s6
	bne	$a0, $a2, .LBB0_5
# %bb.8:                                # %.preheader23.us.us.i51.preheader
	lu12i.w	$s5, 512
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s5
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	move	$a0, $zero
	addi.d	$a1, $s4, 256
	ori	$a2, $zero, 64
	.p2align	4, , 16
.LBB0_9:                                # %.preheader23.us.us.i91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	move	$a3, $a1
	ori	$a4, $zero, 64
	.p2align	4, , 16
.LBB0_10:                               # %.preheader.us.us.us.i93
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a3, -256
	vst	$vr0, $a3, -240
	vst	$vr0, $a3, -224
	vst	$vr0, $a3, -208
	vst	$vr0, $a3, -192
	vst	$vr0, $a3, -176
	vst	$vr0, $a3, -160
	vst	$vr0, $a3, -144
	vst	$vr0, $a3, -128
	vst	$vr0, $a3, -112
	vst	$vr0, $a3, -96
	vst	$vr0, $a3, -80
	vst	$vr0, $a3, -64
	vst	$vr0, $a3, -48
	vst	$vr0, $a3, -32
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	vst	$vr0, $a3, 16
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 48
	vst	$vr0, $a3, 64
	vst	$vr0, $a3, 80
	vst	$vr0, $a3, 96
	vst	$vr0, $a3, 112
	vst	$vr0, $a3, 128
	vst	$vr0, $a3, 144
	vst	$vr0, $a3, 160
	vst	$vr0, $a3, 176
	vst	$vr0, $a3, 192
	vst	$vr0, $a3, 208
	vst	$vr0, $a3, 224
	vst	$vr0, $a3, 240
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 512
	bnez	$a4, .LBB0_10
# %bb.11:                               # %._crit_edge26.split.us.us.us.i103
                                        #   in Loop: Header=BB0_9 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$a1, $a1, $s6
	bne	$a0, $a2, .LBB0_9
# %bb.12:                               # %.preheader23.us.us.i111.preheader
	move	$a0, $zero
	ori	$a1, $zero, 64
	.p2align	4, , 16
.LBB0_13:                               # %.preheader23.us.us.i111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	move	$a2, $s2
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_14:                               # %.preheader.us.us.us.i113
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a2, -256
	vst	$vr0, $a2, -240
	vst	$vr0, $a2, -224
	vst	$vr0, $a2, -208
	vst	$vr0, $a2, -192
	vst	$vr0, $a2, -176
	vst	$vr0, $a2, -160
	vst	$vr0, $a2, -144
	vst	$vr0, $a2, -128
	vst	$vr0, $a2, -112
	vst	$vr0, $a2, -96
	vst	$vr0, $a2, -80
	vst	$vr0, $a2, -64
	vst	$vr0, $a2, -48
	vst	$vr0, $a2, -32
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 48
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 80
	vst	$vr0, $a2, 96
	vst	$vr0, $a2, 112
	vst	$vr0, $a2, 128
	vst	$vr0, $a2, 144
	vst	$vr0, $a2, 160
	vst	$vr0, $a2, 176
	vst	$vr0, $a2, 192
	vst	$vr0, $a2, 208
	vst	$vr0, $a2, 224
	vst	$vr0, $a2, 240
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_14
# %bb.15:                               # %._crit_edge26.split.us.us.us.i123
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$s2, $s2, $s6
	bne	$a0, $a1, .LBB0_13
# %bb.16:                               # %.preheader23.us.us.i131.preheader
	move	$a0, $zero
	ori	$a1, $zero, 64
	.p2align	4, , 16
.LBB0_17:                               # %.preheader23.us.us.i131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	move	$a2, $fp
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_18:                               # %.preheader.us.us.us.i133
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a2, -256
	vst	$vr0, $a2, -240
	vst	$vr0, $a2, -224
	vst	$vr0, $a2, -208
	vst	$vr0, $a2, -192
	vst	$vr0, $a2, -176
	vst	$vr0, $a2, -160
	vst	$vr0, $a2, -144
	vst	$vr0, $a2, -128
	vst	$vr0, $a2, -112
	vst	$vr0, $a2, -96
	vst	$vr0, $a2, -80
	vst	$vr0, $a2, -64
	vst	$vr0, $a2, -48
	vst	$vr0, $a2, -32
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 48
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 80
	vst	$vr0, $a2, 96
	vst	$vr0, $a2, 112
	vst	$vr0, $a2, 128
	vst	$vr0, $a2, 144
	vst	$vr0, $a2, 160
	vst	$vr0, $a2, 176
	vst	$vr0, $a2, 192
	vst	$vr0, $a2, 208
	vst	$vr0, $a2, 224
	vst	$vr0, $a2, 240
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_18
# %bb.19:                               # %._crit_edge26.split.us.us.us.i143
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$fp, $fp, $s6
	bne	$a0, $a1, .LBB0_17
# %bb.20:                               # %.preheader23.us.us.i151.preheader
	move	$a0, $zero
	lu12i.w	$a1, 254634
	ori	$a1, $a1, 2731
	vreplgr2vr.w	$vr0, $a1
	ori	$a1, $zero, 64
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_21:                               # %.preheader23.us.us.i151
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	move	$a2, $s0
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_22:                               # %.preheader.us.us.us.i153
                                        #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a2, -256
	vst	$vr0, $a2, -240
	vst	$vr0, $a2, -224
	vst	$vr0, $a2, -208
	vst	$vr0, $a2, -192
	vst	$vr0, $a2, -176
	vst	$vr0, $a2, -160
	vst	$vr0, $a2, -144
	vst	$vr0, $a2, -128
	vst	$vr0, $a2, -112
	vst	$vr0, $a2, -96
	vst	$vr0, $a2, -80
	vst	$vr0, $a2, -64
	vst	$vr0, $a2, -48
	vst	$vr0, $a2, -32
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 48
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 80
	vst	$vr0, $a2, 96
	vst	$vr0, $a2, 112
	vst	$vr0, $a2, 128
	vst	$vr0, $a2, 144
	vst	$vr0, $a2, 160
	vst	$vr0, $a2, 176
	vst	$vr0, $a2, 192
	vst	$vr0, $a2, 208
	vst	$vr0, $a2, 224
	vst	$vr0, $a2, 240
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_22
# %bb.23:                               # %._crit_edge26.split.us.us.us.i163
                                        #   in Loop: Header=BB0_21 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$s0, $s0, $s6
	bne	$a0, $a1, .LBB0_21
# %bb.24:                               # %.preheader23.us.us.i171.preheader
	lu12i.w	$a2, 1536
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $s1, 256
	ori	$a2, $zero, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB0_25:                               # %.preheader23.us.us.i231
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
	move	$a3, $a1
	ori	$a4, $zero, 64
	.p2align	4, , 16
.LBB0_26:                               # %.preheader.us.us.us.i233
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a3, -256
	vst	$vr0, $a3, -240
	vst	$vr0, $a3, -224
	vst	$vr0, $a3, -208
	vst	$vr0, $a3, -192
	vst	$vr0, $a3, -176
	vst	$vr0, $a3, -160
	vst	$vr0, $a3, -144
	vst	$vr0, $a3, -128
	vst	$vr0, $a3, -112
	vst	$vr0, $a3, -96
	vst	$vr0, $a3, -80
	vst	$vr0, $a3, -64
	vst	$vr0, $a3, -48
	vst	$vr0, $a3, -32
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	vst	$vr0, $a3, 16
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 48
	vst	$vr0, $a3, 64
	vst	$vr0, $a3, 80
	vst	$vr0, $a3, 96
	vst	$vr0, $a3, 112
	vst	$vr0, $a3, 128
	vst	$vr0, $a3, 144
	vst	$vr0, $a3, 160
	vst	$vr0, $a3, 176
	vst	$vr0, $a3, 192
	vst	$vr0, $a3, 208
	vst	$vr0, $a3, 224
	vst	$vr0, $a3, 240
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 512
	bnez	$a4, .LBB0_26
# %bb.27:                               # %._crit_edge26.split.us.us.us.i243
                                        #   in Loop: Header=BB0_25 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$a1, $a1, $s6
	bne	$a0, $a2, .LBB0_25
# %bb.28:                               # %.preheader23.us.us.i251.preheader
	move	$a0, $zero
	ori	$a1, $zero, 64
	.p2align	4, , 16
.LBB0_29:                               # %.preheader23.us.us.i251
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	move	$a2, $s8
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_30:                               # %.preheader.us.us.us.i253
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a2, -256
	vst	$vr0, $a2, -240
	vst	$vr0, $a2, -224
	vst	$vr0, $a2, -208
	vst	$vr0, $a2, -192
	vst	$vr0, $a2, -176
	vst	$vr0, $a2, -160
	vst	$vr0, $a2, -144
	vst	$vr0, $a2, -128
	vst	$vr0, $a2, -112
	vst	$vr0, $a2, -96
	vst	$vr0, $a2, -80
	vst	$vr0, $a2, -64
	vst	$vr0, $a2, -48
	vst	$vr0, $a2, -32
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 48
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 80
	vst	$vr0, $a2, 96
	vst	$vr0, $a2, 112
	vst	$vr0, $a2, 128
	vst	$vr0, $a2, 144
	vst	$vr0, $a2, 160
	vst	$vr0, $a2, 176
	vst	$vr0, $a2, 192
	vst	$vr0, $a2, 208
	vst	$vr0, $a2, 224
	vst	$vr0, $a2, 240
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_30
# %bb.31:                               # %._crit_edge26.split.us.us.us.i263
                                        #   in Loop: Header=BB0_29 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$s8, $s8, $s6
	bne	$a0, $a1, .LBB0_29
# %bb.32:                               # %.preheader23.us.us.i271.preheader
	move	$a0, $zero
	ori	$a1, $zero, 64
	.p2align	4, , 16
.LBB0_33:                               # %.preheader23.us.us.i271
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	move	$a2, $s7
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_34:                               # %.preheader.us.us.us.i273
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a2, -256
	vst	$vr0, $a2, -240
	vst	$vr0, $a2, -224
	vst	$vr0, $a2, -208
	vst	$vr0, $a2, -192
	vst	$vr0, $a2, -176
	vst	$vr0, $a2, -160
	vst	$vr0, $a2, -144
	vst	$vr0, $a2, -128
	vst	$vr0, $a2, -112
	vst	$vr0, $a2, -96
	vst	$vr0, $a2, -80
	vst	$vr0, $a2, -64
	vst	$vr0, $a2, -48
	vst	$vr0, $a2, -32
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 48
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 80
	vst	$vr0, $a2, 96
	vst	$vr0, $a2, 112
	vst	$vr0, $a2, 128
	vst	$vr0, $a2, 144
	vst	$vr0, $a2, 160
	vst	$vr0, $a2, 176
	vst	$vr0, $a2, 192
	vst	$vr0, $a2, 208
	vst	$vr0, $a2, 224
	vst	$vr0, $a2, 240
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_34
# %bb.35:                               # %._crit_edge26.split.us.us.us.i283
                                        #   in Loop: Header=BB0_33 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$s7, $s7, $s6
	bne	$a0, $a1, .LBB0_33
# %bb.36:                               # %mat_set.exit285
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$s2, $a0, %pc_lo12(a)
	pcalau12i	$a0, %pc_hi20(b)
	addi.d	$s1, $a0, %pc_lo12(b)
	pcalau12i	$a0, %pc_hi20(c)
	addi.d	$s0, $a0, %pc_lo12(c)
	pcalau12i	$a0, %pc_hi20(bnd)
	addi.d	$s5, $a0, %pc_lo12(bnd)
	pcalau12i	$a0, %pc_hi20(wrk1)
	addi.d	$s4, $a0, %pc_lo12(wrk1)
	pcalau12i	$a0, %pc_hi20(wrk2)
	addi.d	$s3, $a0, %pc_lo12(wrk2)
	ori	$a0, $zero, 64
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	move	$a5, $s5
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(jacobi)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_38
# %bb.37:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_38:                               # %clearMat.exit
	ld.d	$a0, $s5, 0
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB0_40
# %bb.39:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_40:                               # %clearMat.exit288
	ld.d	$a0, $s4, 0
	st.d	$zero, $s5, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s5, 0
	beqz	$a0, .LBB0_42
# %bb.41:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_42:                               # %clearMat.exit290
	ld.d	$a0, $s3, 0
	st.d	$zero, $s4, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s4, 0
	beqz	$a0, .LBB0_44
# %bb.43:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_44:                               # %clearMat.exit292
	ld.d	$a0, $s2, 0
	st.d	$zero, $s3, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s3, 0
	beqz	$a0, .LBB0_46
# %bb.45:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_46:                               # %clearMat.exit294
	ld.d	$a0, $s1, 0
	st.d	$zero, $s2, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s2, 0
	beqz	$a0, .LBB0_48
# %bb.47:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_48:                               # %clearMat.exit296
	ld.d	$a0, $s0, 0
	st.d	$zero, $s1, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s1, 0
	beqz	$a0, .LBB0_50
# %bb.49:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %clearMat.exit298
	st.d	$zero, $s0, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s0, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	newMat                          # -- Begin function newMat
	.p2align	5
	.type	newMat,@function
newMat:                                 # @newMat
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$a1, $a0, 8
	st.w	$a2, $a0, 12
	st.w	$a3, $a0, 16
	st.w	$a4, $a0, 20
	mul.d	$a0, $a2, $a1
	mul.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $a4
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	sltu	$a1, $zero, $a0
	st.d	$a0, $fp, 0
	move	$a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	newMat, .Lfunc_end1-newMat
                                        # -- End function
	.globl	mat_set_init                    # -- Begin function mat_set_init
	.p2align	5
	.type	mat_set_init,@function
mat_set_init:                           # @mat_set_init
# %bb.0:
	ld.w	$a1, $a0, 12
	blez	$a1, .LBB2_14
# %bb.1:                                # %.preheader25.lr.ph
	ld.w	$a2, $a0, 16
	blez	$a2, .LBB2_14
# %bb.2:                                # %.preheader25.lr.ph.split.us
	ld.w	$a3, $a0, 20
	blez	$a3, .LBB2_14
# %bb.3:                                # %.preheader25.lr.ph.split.us.split.us
	move	$a4, $zero
	move	$a5, $zero
	addi.d	$a6, $a1, -1
	mul.d	$a6, $a6, $a6
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ld.d	$a0, $a0, 0
	ffint.s.l	$fa0, $fa0
	bstrpick.d	$a6, $a3, 30, 3
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a0, 16
	mul.d	$t0, $a2, $a3
	ori	$t1, $zero, 8
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %._crit_edge28.split.us.us.us
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a5, $a5, 1
	add.w	$a4, $a4, $t0
	beq	$a5, $a1, .LBB2_14
.LBB2_5:                                # %.preheader25.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_10 Depth 3
                                        #       Child Loop BB2_13 Depth 3
	move	$t2, $zero
	mul.d	$t3, $a5, $a5
	movgr2fr.d	$fa1, $t3
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	vreplvei.w	$vr2, $vr1, 0
	move	$t3, $a4
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.d	$t2, $t2, 1
	add.w	$t3, $t3, $a3
	beq	$t2, $a2, .LBB2_4
.LBB2_7:                                # %.preheader.us.us.us
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_10 Depth 3
                                        #       Child Loop BB2_13 Depth 3
	bgeu	$a3, $t1, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	move	$t5, $zero
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_9:                                # %vector.body.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	alsl.d	$t4, $t3, $a7, 2
	move	$t5, $a6
	.p2align	4, , 16
.LBB2_10:                               # %vector.body
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr2, $t4, -16
	vst	$vr2, $t4, 0
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB2_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$t5, $a6
	beq	$a6, $a3, .LBB2_6
.LBB2_12:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	slli.d	$t4, $t3, 2
	alsl.d	$t4, $t5, $t4, 2
	add.d	$t4, $a0, $t4
	sub.d	$t5, $a3, $t5
	.p2align	4, , 16
.LBB2_13:                               # %scalar.ph
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fst.s	$fa1, $t4, 0
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB2_13
	b	.LBB2_6
.LBB2_14:                               # %._crit_edge
	ret
.Lfunc_end2:
	.size	mat_set_init, .Lfunc_end2-mat_set_init
                                        # -- End function
	.globl	mat_set                         # -- Begin function mat_set
	.p2align	5
	.type	mat_set,@function
mat_set:                                # @mat_set
# %bb.0:
	ld.w	$a2, $a0, 12
                                        # kill: def $f0 killed $f0 def $vr0
	blez	$a2, .LBB3_14
# %bb.1:                                # %.preheader23.lr.ph
	ld.w	$a3, $a0, 16
	blez	$a3, .LBB3_14
# %bb.2:                                # %.preheader23.lr.ph.split.us
	ld.w	$a4, $a0, 20
	blez	$a4, .LBB3_14
# %bb.3:                                # %.preheader23.lr.ph.split.us.split.us
	move	$a5, $zero
	ld.d	$a0, $a0, 0
	bstrpick.d	$a6, $a4, 30, 3
	slli.d	$a6, $a6, 3
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$a7, $a0, 16
	mul.d	$t0, $a3, $a4
	mul.d	$t1, $t0, $a2
	mul.w	$a1, $t1, $a1
	ori	$t1, $zero, 8
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %._crit_edge26.split.us.us.us
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.w	$a5, $a5, 1
	add.w	$a1, $a1, $t0
	beq	$a5, $a2, .LBB3_14
.LBB3_5:                                # %.preheader23.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_10 Depth 3
                                        #       Child Loop BB3_13 Depth 3
	move	$t2, $zero
	move	$t3, $a1
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB3_7 Depth=2
	addi.d	$t2, $t2, 1
	add.w	$t3, $t3, $a4
	beq	$t2, $a3, .LBB3_4
.LBB3_7:                                # %.preheader.us.us.us
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
                                        #       Child Loop BB3_13 Depth 3
	bgeu	$a4, $t1, .LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=2
	move	$t5, $zero
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_9:                                # %vector.body.preheader
                                        #   in Loop: Header=BB3_7 Depth=2
	alsl.d	$t4, $t3, $a7, 2
	move	$t5, $a6
	.p2align	4, , 16
.LBB3_10:                               # %vector.body
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr1, $t4, -16
	vst	$vr1, $t4, 0
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB3_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB3_7 Depth=2
	move	$t5, $a6
	beq	$a6, $a4, .LBB3_6
.LBB3_12:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_7 Depth=2
	slli.d	$t4, $t3, 2
	alsl.d	$t4, $t5, $t4, 2
	add.d	$t4, $a0, $t4
	sub.d	$t5, $a4, $t5
	.p2align	4, , 16
.LBB3_13:                               # %scalar.ph
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fst.s	$fa0, $t4, 0
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB3_13
	b	.LBB3_6
.LBB3_14:                               # %._crit_edge
	ret
.Lfunc_end3:
	.size	mat_set, .Lfunc_end3-mat_set
                                        # -- End function
	.globl	jacobi                          # -- Begin function jacobi
	.p2align	5
	.type	jacobi,@function
jacobi:                                 # @jacobi
# %bb.0:
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blez	$a0, .LBB4_24
# %bb.1:                                # %.preheader391.lr.ph
	ld.w	$s4, $a4, 20
	ld.w	$a7, $a4, 16
	ld.w	$a1, $a4, 12
	move	$t0, $zero
	addi.d	$a2, $s4, -1
	addi.d	$a3, $a7, -1
	addi.w	$a5, $a1, -1
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	slti	$a1, $a1, 3
	slti	$a6, $a7, 3
	slti	$a5, $s4, 3
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a3, $sp, 496                   # 8-byte Folded Spill
	bstrpick.d	$s5, $a2, 31, 0
	addi.d	$a2, $a7, 1
	mul.w	$s6, $s4, $a2
	mul.w	$s7, $a7, $s4
	addi.d	$s8, $s5, -1
	or	$a1, $a1, $a6
	or	$ra, $a1, $a5
	move	$a1, $s8
	bstrins.d	$a1, $zero, 2, 0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	move	$a2, $s8
	bstrins.d	$a2, $a1, 2, 0
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	slli.d	$a1, $s5, 2
	addi.d	$s1, $a1, -4
	slli.d	$a1, $s4, 2
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	slli.d	$a1, $s4, 3
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.w	$a1, $s7, 1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	movgr2fr.w	$fa1, $zero
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
.LBB4_3:                                #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
.LBB4_4:                                # %._crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.w	$t0, $t0, 1
	beq	$t0, $a0, .LBB4_25
.LBB4_5:                                # %.preheader391
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_8 Depth 3
                                        #         Child Loop BB4_9 Depth 4
                                        #     Child Loop BB4_15 Depth 2
                                        #       Child Loop BB4_17 Depth 3
                                        #         Child Loop BB4_20 Depth 4
                                        #         Child Loop BB4_23 Depth 4
	fmov.s	$fa0, $fa1
	bnez	$ra, .LBB4_4
# %bb.6:                                # %.preheader389.lr.ph.split.us.split.us
                                        #   in Loop: Header=BB4_5 Depth=1
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	move	$s6, $zero
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a3, $a1, 12
	ld.d	$s2, $a1, 0
	ld.w	$a0, $a1, 16
	ld.w	$s5, $a1, 20
	slli.d	$a1, $a3, 1
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $s3, 0
	ld.w	$a6, $s3, 12
	ld.w	$a2, $s3, 16
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a7, $t2, 12
	ld.d	$t0, $t2, 0
	ld.w	$t1, $t2, 16
	ld.w	$s8, $t2, 20
	slli.d	$t2, $a7, 1
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $t5, 0
	ld.w	$t4, $t5, 16
	ld.w	$ra, $t5, 20
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t5, $s0, 0
	ld.w	$t6, $s0, 16
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t7, $fp, 0
	ld.w	$t8, $fp, 16
	ld.w	$fp, $fp, 20
	ld.w	$s0, $s0, 20
	addi.d	$t7, $t7, 4
	st.d	$t7, $sp, 448                   # 8-byte Folded Spill
	addi.d	$t7, $t8, 1
	mul.w	$t7, $fp, $t7
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	mul.d	$t8, $t8, $fp
	st.d	$t8, $sp, 216                   # 8-byte Folded Spill
	addi.d	$t5, $t5, 4
	st.d	$t5, $sp, 440                   # 8-byte Folded Spill
	addi.d	$t5, $t6, 1
	mul.w	$t8, $s0, $t5
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	mul.d	$t5, $t6, $s0
	st.d	$t5, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t5, $s2, 4
	st.d	$t5, $sp, 432                   # 8-byte Folded Spill
	addi.d	$t5, $a3, 1
	alsl.d	$a3, $a3, $t5, 1
	mul.d	$a3, $a0, $a3
	addi.d	$a3, $a3, 1
	mul.w	$t6, $s5, $a3
	addi.d	$a3, $t3, 4
	st.d	$a3, $sp, 424                   # 8-byte Folded Spill
	addi.d	$a3, $t4, 1
	mul.w	$t3, $ra, $a3
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	mul.d	$a3, $t4, $ra
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a3, $t0, 4
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	addi.d	$a3, $t2, 1
	mul.d	$a3, $t1, $a3
	addi.d	$a3, $a3, 1
	mul.w	$t0, $s8, $a3
	mul.d	$a3, $t1, $s8
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a3, $a7, 1
	mul.d	$a3, $t1, $a3
	addi.d	$a3, $a3, 1
	mul.w	$a7, $s8, $a3
	addi.d	$a3, $t1, 1
	st.d	$s8, $sp, 480                   # 8-byte Folded Spill
	mul.w	$t2, $s8, $a3
	addi.d	$a3, $a5, 4
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	ld.w	$a5, $s3, 20
	slli.d	$a3, $a6, 1
	addi.d	$a3, $a3, 1
	mul.d	$a3, $a2, $a3
	addi.d	$a3, $a3, 1
	mul.w	$s2, $a5, $a3
	addi.d	$a3, $a6, 1
	mul.d	$a3, $a2, $a3
	addi.d	$a3, $a3, 1
	mul.w	$a3, $a5, $a3
	mul.d	$a6, $a2, $a5
	st.d	$a6, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 1
	st.d	$a5, $sp, 400                   # 8-byte Folded Spill
	mul.w	$a5, $a5, $a2
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a0, $a1
	addi.d	$a1, $a1, 1
	mul.w	$a6, $s5, $a1
	mul.d	$a1, $a0, $t5
	addi.d	$a1, $a1, 1
	mul.w	$s3, $s5, $a1
	ld.d	$a1, $a4, 0
	mul.d	$a2, $a0, $s5
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$s5, $sp, 488                   # 8-byte Folded Spill
	mul.w	$s8, $s5, $a0
	fmov.s	$fa0, $fa1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$ra, $zero, 1
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s7
	.p2align	4, , 16
.LBB4_7:                                # %.preheader389.us.us
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_8 Depth 3
                                        #         Child Loop BB4_9 Depth 4
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$s0, $a2, $a4, 2
	add.d	$a0, $s4, $s6
	alsl.d	$fp, $a0, $a4, 2
	move	$s7, $a2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $a2, 2
	add.d	$a0, $s4, $t5
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s5, $a0, $a1, 2
	alsl.d	$a0, $s6, $a4, 2
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	alsl.d	$t1, $s6, $a2, 2
	alsl.d	$a1, $t5, $a1, 2
	st.d	$t5, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$t5, $t5, $a2, 2
	st.d	$s7, $sp, 232                   # 8-byte Folded Spill
	add.d	$a2, $s4, $s7
	alsl.d	$s7, $a2, $a4, 2
	addi.d	$ra, $ra, 1
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
	move	$ra, $s8
	st.d	$s3, $sp, 264                   # 8-byte Folded Spill
	st.d	$a6, $sp, 272                   # 8-byte Folded Spill
	move	$s4, $a6
	move	$a6, $s3
	st.d	$a5, $sp, 280                   # 8-byte Folded Spill
	move	$s3, $a5
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$t2, $sp, 304                   # 8-byte Folded Spill
	st.d	$a7, $sp, 312                   # 8-byte Folded Spill
	move	$a2, $a7
	move	$a7, $a3
	st.d	$t0, $sp, 320                   # 8-byte Folded Spill
	move	$a3, $t0
	move	$t0, $s2
	st.d	$t3, $sp, 328                   # 8-byte Folded Spill
	move	$a5, $t3
	move	$t3, $t2
	st.d	$t6, $sp, 336                   # 8-byte Folded Spill
	move	$s2, $t6
	move	$t6, $a2
	st.d	$t8, $sp, 344                   # 8-byte Folded Spill
	st.d	$t7, $sp, 352                   # 8-byte Folded Spill
	move	$s6, $t7
	move	$t7, $a3
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB4_8:                                # %.preheader387.us.us.us
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_9 Depth 4
	move	$t2, $zero
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	st.d	$s6, $sp, 512                   # 8-byte Folded Spill
	alsl.d	$s8, $s6, $a2, 2
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	st.d	$t8, $sp, 520                   # 8-byte Folded Spill
	alsl.d	$a2, $t8, $a2, 2
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	st.d	$s2, $sp, 528                   # 8-byte Folded Spill
	alsl.d	$s2, $s2, $a4, 2
	move	$s1, $a3
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	st.d	$a5, $sp, 536                   # 8-byte Folded Spill
	alsl.d	$s6, $a5, $a3, 2
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	st.d	$t7, $sp, 544                   # 8-byte Folded Spill
	alsl.d	$a3, $t7, $a5, 2
	st.d	$t6, $sp, 552                   # 8-byte Folded Spill
	alsl.d	$t6, $t6, $a5, 2
	st.d	$t3, $sp, 560                   # 8-byte Folded Spill
	alsl.d	$t7, $t3, $a5, 2
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	st.d	$t0, $sp, 568                   # 8-byte Folded Spill
	alsl.d	$t0, $t0, $a5, 2
	st.d	$a7, $sp, 576                   # 8-byte Folded Spill
	alsl.d	$t3, $a7, $a5, 2
	st.d	$s3, $sp, 584                   # 8-byte Folded Spill
	alsl.d	$s3, $s3, $a5, 2
	st.d	$s4, $sp, 592                   # 8-byte Folded Spill
	alsl.d	$s4, $s4, $a4, 2
	st.d	$a6, $sp, 600                   # 8-byte Folded Spill
	alsl.d	$t8, $a6, $a4, 2
	st.d	$ra, $sp, 608                   # 8-byte Folded Spill
	alsl.d	$a4, $ra, $a4, 2
	addi.d	$s1, $s1, 1
	st.d	$s1, $sp, 504                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_9:                                #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        #       Parent Loop BB4_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.s	$fa2, $a4, $t2
	add.d	$a7, $s5, $t2
	fldx.s	$fa3, $s5, $t2
	fldx.s	$fa4, $t8, $t2
	fldx.s	$fa5, $t4, $t2
	fldx.s	$fa6, $s4, $t2
	add.d	$a5, $s7, $t2
	fld.s	$fa7, $a5, 8
	add.d	$ra, $t4, $t2
	fmul.s	$fa4, $fa4, $fa5
	fmadd.s	$fa2, $fa2, $fa3, $fa4
	fmadd.s	$fa2, $fa6, $fa7, $fa2
	fldx.s	$fa3, $t5, $t2
	fldx.s	$fa4, $a1, $t2
	fldx.s	$fa5, $t1, $t2
	add.d	$a6, $a0, $t2
	fld.s	$fa6, $a6, 4
	fldx.s	$fa7, $s3, $t2
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa3, $fa3, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa3, $ra, 4
	add.d	$a6, $s0, $t2
	fld.s	$fa4, $a6, 8
	fld.s	$fa5, $ra, -4
	fldx.s	$fa6, $s0, $t2
	fldx.s	$fa7, $t3, $t2
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa3, $fa3, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa3, $a7, 4
	add.d	$ra, $fp, $t2
	fld.s	$fa4, $ra, 8
	fld.s	$fa5, $a7, -4
	fldx.s	$fa6, $fp, $t2
	fldx.s	$fa7, $t0, $t2
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa3, $fa3, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fldx.s	$fa4, $t7, $t2
	fld.s	$fa5, $ra, 4
	fldx.s	$fa6, $t6, $t2
	fld.s	$ft0, $a6, 4
	fldx.s	$ft1, $a3, $t2
	fldx.s	$ft2, $s7, $t2
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmadd.s	$fa2, $fa6, $ft0, $fa2
	fmadd.s	$fa2, $ft1, $ft2, $fa2
	fldx.s	$fa3, $s6, $t2
	fldx.s	$fa4, $s2, $t2
	fld.s	$fa5, $a5, 4
	fldx.s	$fa6, $a2, $t2
	pcalau12i	$a5, %pc_hi20(omega)
	fld.s	$fa7, $a5, %pc_lo12(omega)
	fadd.s	$fa2, $fa2, $fa3
	fmsub.s	$fa2, $fa2, $fa4, $fa5
	fmul.s	$fa2, $fa2, $fa6
	fmadd.s	$fa3, $fa7, $fa2, $fa5
	fstx.s	$fa3, $s8, $t2
	addi.d	$t2, $t2, 4
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	bne	$s1, $t2, .LBB4_9
# %bb.10:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB4_8 Depth=3
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 512                   # 8-byte Folded Reload
	add.w	$s6, $s6, $a2
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 520                   # 8-byte Folded Reload
	add.w	$t8, $t8, $a2
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 528                   # 8-byte Folded Reload
	add.w	$s2, $s2, $a3
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 536                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a2
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 544                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a4
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a2
	ld.d	$t6, $sp, 552                   # 8-byte Folded Reload
	add.w	$t6, $t6, $a4
	add.d	$fp, $fp, $a2
	ld.d	$t3, $sp, 560                   # 8-byte Folded Reload
	add.w	$t3, $t3, $a4
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 568                   # 8-byte Folded Reload
	add.w	$t0, $t0, $a4
	ld.d	$a7, $sp, 576                   # 8-byte Folded Reload
	add.w	$a7, $a7, $a4
	ld.d	$s3, $sp, 584                   # 8-byte Folded Reload
	add.w	$s3, $s3, $a4
	ld.d	$s4, $sp, 592                   # 8-byte Folded Reload
	add.w	$s4, $s4, $a3
	add.d	$t4, $t4, $a2
	ld.d	$a6, $sp, 600                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a3
	add.d	$s5, $s5, $a2
	ld.d	$ra, $sp, 608                   # 8-byte Folded Reload
	add.w	$ra, $ra, $a3
	add.d	$a0, $a0, $a2
	add.d	$t1, $t1, $a2
	add.d	$a1, $a1, $a2
	add.d	$t5, $t5, $a2
	add.d	$s7, $s7, $a2
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	bne	$a3, $a2, .LBB4_8
# %bb.11:                               # %._crit_edge397.split.us.us.us
                                        #   in Loop: Header=BB4_7 Depth=2
	ld.d	$t7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a0
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$t8, $t8, $a0
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.w	$t6, $t6, $a1
	ld.d	$t3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.w	$t3, $t3, $a0
	ld.d	$t0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.w	$t0, $t0, $a0
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	add.w	$a2, $a2, $s7
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	add.w	$a7, $a7, $a0
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	add.w	$s6, $s6, $s7
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	add.w	$t2, $t2, $a0
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.w	$s2, $s2, $a0
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a1
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	add.w	$s3, $s3, $a1
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	add.w	$t5, $t5, $s7
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a1
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	bne	$ra, $a0, .LBB4_7
# %bb.12:                               # %.preheader390
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	bnez	$ra, .LBB4_2
# %bb.13:                               # %.preheader388.lr.ph.split.us.split.us
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$a0, $zero
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a5, $a2, 16
	ld.w	$a1, $a2, 20
	ld.d	$a2, $a2, 0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a4, 0
	addi.d	$a6, $a5, 1
	mul.w	$s3, $a1, $a6
	mul.d	$a5, $a5, $a1
	addi.d	$a6, $a2, 20
	addi.d	$a7, $a3, 20
	ori	$t0, $zero, 1
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	move	$t1, $s6
	move	$t2, $s3
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               # %._crit_edge410.split.us.us.us
                                        #   in Loop: Header=BB4_15 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$a0, $a0, 1
	add.w	$t2, $t2, $a5
	add.w	$t1, $t1, $s7
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	beq	$t0, $t3, .LBB4_3
.LBB4_15:                               # %.preheader388.us.us
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_17 Depth 3
                                        #         Child Loop BB4_20 Depth 4
                                        #         Child Loop BB4_23 Depth 4
	move	$t3, $zero
	mul.d	$t4, $s7, $a0
	add.d	$t4, $s6, $t4
	mul.d	$t5, $a5, $a0
	add.d	$t5, $s3, $t5
	move	$t6, $t1
	move	$t7, $t2
	ori	$t8, $zero, 1
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               # %._crit_edge.us.us.us417
                                        #   in Loop: Header=BB4_17 Depth=3
	addi.d	$t8, $t8, 1
	addi.d	$t3, $t3, 1
	add.w	$t7, $t7, $a1
	add.w	$t6, $t6, $s4
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	beq	$t8, $fp, .LBB4_14
.LBB4_17:                               # %.preheader.us.us.us
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_20 Depth 4
                                        #         Child Loop BB4_23 Depth 4
	ori	$fp, $zero, 1
	ori	$s0, $zero, 8
	bltu	$s8, $s0, .LBB4_22
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_17 Depth=3
	mul.d	$s0, $a1, $t3
	add.w	$s0, $t5, $s0
	mul.d	$s2, $s4, $t3
	add.w	$s2, $t4, $s2
	alsl.d	$s2, $s2, $a3, 2
	alsl.d	$s0, $s0, $a2, 2
	sub.d	$s0, $s2, $s0
	ori	$s2, $zero, 32
	bltu	$s0, $s2, .LBB4_22
# %bb.19:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_17 Depth=3
	alsl.d	$fp, $t7, $a6, 2
	alsl.d	$s0, $t6, $a7, 2
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_20:                               # %vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr2, $fp, -16
	vld	$vr3, $fp, 0
	vst	$vr2, $s0, -16
	vst	$vr3, $s0, 0
	addi.d	$fp, $fp, 32
	addi.d	$s2, $s2, -8
	addi.d	$s0, $s0, 32
	bnez	$s2, .LBB4_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB4_17 Depth=3
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	beq	$s8, $s0, .LBB4_16
	.p2align	4, , 16
.LBB4_22:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_17 Depth=3
	slli.d	$s0, $t6, 2
	slli.d	$s2, $t7, 2
	alsl.d	$s0, $fp, $s0, 2
	add.d	$s0, $a3, $s0
	alsl.d	$s2, $fp, $s2, 2
	add.d	$s2, $a2, $s2
	sub.d	$fp, $s5, $fp
	.p2align	4, , 16
.LBB4_23:                               # %scalar.ph
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa2, $s2, 0
	fst.s	$fa2, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 4
	bnez	$fp, .LBB4_23
	b	.LBB4_16
.LBB4_24:
                                        # implicit-def: $f0
.LBB4_25:                               # %._crit_edge419
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.Lfunc_end4:
	.size	jacobi, .Lfunc_end4-jacobi
                                        # -- End function
	.globl	clearMat                        # -- Begin function clearMat
	.p2align	5
	.type	clearMat,@function
clearMat:                               # @clearMat
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB5_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_2:
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	clearMat, .Lfunc_end5-clearMat
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fflop
.LCPI6_0:
	.dword	0x4041000000000000              # double 34
	.text
	.globl	fflop
	.p2align	5
	.type	fflop,@function
fflop:                                  # @fflop
# %bb.0:
	addi.d	$a2, $a2, -2
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	addi.d	$a1, $a1, -2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	addi.d	$a0, $a0, -2
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI6_0)
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end6:
	.size	fflop, .Lfunc_end6-fflop
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mflops
.LCPI7_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	mflops
	.p2align	5
	.type	mflops,@function
mflops:                                 # @mflops
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI7_0)
	fdiv.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fa2
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end7:
	.size	mflops, .Lfunc_end7-mflops
                                        # -- End function
	.globl	set_param                       # -- Begin function set_param
	.p2align	5
	.type	set_param,@function
set_param:                              # @set_param
# %bb.0:                                # %sub_0
	ld.bu	$a2, $a1, 0
	addi.d	$a2, $a2, -76
	ori	$a3, $zero, 44
	bltu	$a3, $a2, .LBB8_17
# %bb.1:                                # %sub_0
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI8_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI8_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB8_2:                                # %.tail55
	ld.bu	$a1, $a1, 1
	bnez	$a1, .LBB8_17
# %bb.3:
	ori	$a1, $zero, 512
	ori	$a2, $zero, 256
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_4:                                # %.tail39
	ld.bu	$a1, $a1, 1
	bnez	$a1, .LBB8_17
# %bb.5:
	ori	$a1, $zero, 128
	ori	$a2, $zero, 64
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_6:                                # %.tail47
	ld.bu	$a1, $a1, 1
	bnez	$a1, .LBB8_17
# %bb.7:
	ori	$a1, $zero, 256
	ori	$a2, $zero, 128
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_8:                                # %sub_136
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 115
	bne	$a2, $a3, .LBB8_10
# %bb.9:                                # %.tail34
	ld.bu	$a2, $a1, 2
	beqz	$a2, .LBB8_16
.LBB8_10:                               # %sub_170
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 108
	beq	$a2, $a3, .LBB8_14
	b	.LBB8_17
.LBB8_11:                               # %sub_1
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 83
	bne	$a2, $a3, .LBB8_13
# %bb.12:                               # %.tail
	ld.bu	$a2, $a1, 2
	beqz	$a2, .LBB8_16
.LBB8_13:                               # %sub_165
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 76
	bne	$a2, $a3, .LBB8_17
.LBB8_14:                               # %.tail63
	ld.bu	$a1, $a1, 2
	bnez	$a1, .LBB8_17
# %bb.15:
	ori	$a1, $zero, 1024
	ori	$a2, $zero, 512
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_16:
	ori	$a1, $zero, 64
	ori	$a2, $zero, 32
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_17:                               # %.tail68.thread
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	set_param, .Lfunc_end8-set_param
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.word	.LBB8_2-.LJTI8_0
	.word	.LBB8_6-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_4-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_11-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_2-.LJTI8_0
	.word	.LBB8_6-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_4-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_8-.LJTI8_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function second
.LCPI9_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	second
	.p2align	5
	.type	second,@function
second:                                 # @second
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(second.base_sec)
	ld.w	$a3, $a1, %pc_lo12(second.base_sec)
	pcalau12i	$a2, %pc_hi20(second.base_usec)
	ld.w	$a0, $a2, %pc_lo12(second.base_usec)
	ld.d	$a4, $sp, 8
	or	$a5, $a3, $a0
	bnez	$a5, .LBB9_2
# %bb.1:
	ld.d	$a0, $sp, 16
	st.w	$a4, $a1, %pc_lo12(second.base_sec)
	st.w	$a0, $a2, %pc_lo12(second.base_usec)
	movgr2fr.d	$fa0, $zero
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_2:
	sub.d	$a1, $a4, $a3
	movgr2fr.d	$fa0, $a1
	ld.d	$a1, $sp, 16
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a2, %pc_hi20(.LCPI9_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI9_0)
	sub.d	$a0, $a1, $a0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fadd.d	$fa0, $fa1, $fa0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	second, .Lfunc_end9-second
                                        # -- End function
	.type	omega,@object                   # @omega
	.data
	.globl	omega
	.p2align	2, 0x0
omega:
	.word	0x3f4ccccd                      # float 0.800000011
	.size	omega, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mimax = %d mjmax = %d mkmax = %d\n"
	.size	.L.str, 34

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"imax = %d jmax = %d kmax =%d\n"
	.size	.L.str.1, 30

	.type	p,@object                       # @p
	.bss
	.globl	p
	.p2align	3, 0x0
p:
	.space	24
	.size	p, 24

	.type	bnd,@object                     # @bnd
	.globl	bnd
	.p2align	3, 0x0
bnd:
	.space	24
	.size	bnd, 24

	.type	wrk1,@object                    # @wrk1
	.globl	wrk1
	.p2align	3, 0x0
wrk1:
	.space	24
	.size	wrk1, 24

	.type	wrk2,@object                    # @wrk2
	.globl	wrk2
	.p2align	3, 0x0
wrk2:
	.space	24
	.size	wrk2, 24

	.type	a,@object                       # @a
	.globl	a
	.p2align	3, 0x0
a:
	.space	24
	.size	a, 24

	.type	b,@object                       # @b
	.globl	b
	.p2align	3, 0x0
b:
	.space	24
	.size	b, 24

	.type	c,@object                       # @c
	.globl	c
	.p2align	3, 0x0
c:
	.space	24
	.size	c, 24

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	" Loop executed for %d times\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" Gosa : %e \n"
	.size	.L.str.3, 13

	.type	second.base_sec,@object         # @second.base_sec
	.local	second.base_sec
	.comm	second.base_sec,4,4
	.type	second.base_usec,@object        # @second.base_usec
	.local	second.base_usec
	.comm	second.base_usec,4,4
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Invalid input character !!"
	.size	.Lstr, 27

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym p
	.addrsig_sym bnd
	.addrsig_sym wrk1
	.addrsig_sym wrk2
	.addrsig_sym a
	.addrsig_sym b
	.addrsig_sym c
