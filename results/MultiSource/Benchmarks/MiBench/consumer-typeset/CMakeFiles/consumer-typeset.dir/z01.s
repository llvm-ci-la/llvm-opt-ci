	.file	"z01.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	0x42f00000                      # float 120
.LCPI0_1:
	.word	0x44b40000                      # float 1440
.LCPI0_2:
	.word	0x440dc000                      # float 567
	.text
	.globl	main
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
	addi.d	$sp, $sp, -400
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(setlocale)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	bnez	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 6
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a4, $a0, %pc_lo12(.L.str.4)
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a3, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 280
	move	$a2, $s5
	move	$a5, $a4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 280
	move	$a1, $zero
	pcaddu18i	$ra, %call36(catopen)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(MsgCat)
	st.d	$a0, $s0, %pc_lo12(MsgCat)
	pcalau12i	$s6, %pc_hi20(TotalWordCount)
	st.w	$zero, $s6, %pc_lo12(TotalWordCount)
	pcalau12i	$a0, %got_pc_hi20(PS_BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(PS_BackEnd)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(BackEnd)
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(BackEnd)
	pcalau12i	$a0, %got_pc_hi20(PlainCharWidth)
	ld.d	$a1, $a0, %got_pc_lo12(PlainCharWidth)
	ori	$a0, $zero, 144
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.w	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(PlainCharHeight)
	ld.d	$a1, $a0, %got_pc_lo12(PlainCharHeight)
	ori	$a0, $zero, 240
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.w	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(PlainFormFeed)
	ld.d	$a0, $a0, %got_pc_lo12(PlainFormFeed)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(InitializeAll)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(InitializeAll)
	pcalau12i	$a1, %pc_hi20(UseCollate)
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(UseCollate)
	pcalau12i	$a1, %pc_hi20(AllowCrossDb)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(AllowCrossDb)
	pcalau12i	$a1, %pc_hi20(InMemoryDbIndexes)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(InMemoryDbIndexes)
	pcalau12i	$a1, %got_pc_hi20(Encapsulated)
	ld.d	$a1, $a1, %got_pc_lo12(Encapsulated)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %pc_hi20(SafeExecution)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(SafeExecution)
	pcalau12i	$a1, %pc_hi20(Kern)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(Kern)
	pcaddu18i	$ra, %call36(MemInit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(InitSym)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexInit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(InitFiles)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s1, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s3, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 11
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	ori	$a0, $zero, 11
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	ori	$a0, $zero, 11
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(AltErrorFormat)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(AltErrorFormat)
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s8, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s8, 17
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	st.w	$a2, $a0, 0
	slli.d	$a1, $a2, 3
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s4, $a0, %got_pc_lo12(zz_free)
	ldx.d	$a0, $s4, $a1
	bnez	$a0, .LBB0_4
# %bb.3:
	ld.d	$a1, $s1, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	b	.LBB0_5
.LBB0_4:
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $s4, $a1
.LBB0_5:
	move	$s3, $s1
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(CommandOptions)
	ori	$a1, $zero, 2
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(CommandOptions)
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB0_191
# %bb.6:                                # %.lr.ph
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $a2, -1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI0_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI0_0)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	move	$a1, $zero
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	move	$s0, $a2
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s6
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB0_8:                                # %GetArg.exit205
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$a1, $fp
.LBB0_9:                                # %GetArg.exit205
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $s0, .LBB0_192
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s5, 3
	ldx.d	$s6, $s1, $a0
	ld.bu	$a0, $s6, 0
	move	$a4, $a1
	alsl.d	$s2, $s5, $s1, 3
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB0_16
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s6, 1
	ori	$a1, $zero, 120
	bltu	$a1, $a0, .LBB0_19
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a0
	addi.d	$a0, $s6, 1
	add.d	$a2, $a2, $a1
	ori	$a1, $zero, 1
	jr	$a2
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a2, $a0, %pc_lo12(.L.str.63)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 23
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -3
	bltz	$a0, .LBB0_7
# %bb.17:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$s7, $s6, $a0
	move	$a0, $s7
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_7
# %bb.18:                               #   in Loop: Header=BB0_10 Depth=1
	st.b	$zero, $s7, 0
	ld.d	$s6, $s2, 0
	b	.LBB0_7
.LBB0_19:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$fp, $a4
	pcaddu18i	$ra, %call36(PrintUsage)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s3, 0
	ld.d	$a5, $s2, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 26
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_20:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_71
# %bb.21:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	addi.d	$s6, $s6, 2
	b	.LBB0_73
.LBB0_22:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(AltErrorFormat)
	move	$a1, $a4
	b	.LBB0_9
.LBB0_23:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %got_pc_hi20(PDF_BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(PDF_BackEnd)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(BackEnd)
	move	$a1, $a4
	b	.LBB0_9
.LBB0_24:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(SafeExecution)
	move	$a1, $a4
	b	.LBB0_9
.LBB0_25:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(InMemoryDbIndexes)
	move	$a1, $a4
	b	.LBB0_9
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a1, $a1, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_77
# %bb.27:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$a4, $fp
.LBB0_28:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %got_pc_hi20(Plain_BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(Plain_BackEnd)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(BackEnd)
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_70
# %bb.29:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	addi.d	$a0, $s6, 2
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 2336
	add.d	$a2, $sp, $a2
	addi.d	$a3, $sp, 275
	addi.d	$a4, $sp, 276
	addi.d	$a5, $sp, 274
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a4, $s3, 0
	ld.b	$a5, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a2, $a0, %pc_lo12(.L.str.58)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 19
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_31:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $sp, 275
	addi.d	$a0, $a0, -99
	ori	$a1, $zero, 13
	bltu	$a1, $a0, .LBB0_187
# %bb.32:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_33:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	fld.s	$fa0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_2)
	b	.LBB0_177
.LBB0_34:                               #   in Loop: Header=BB0_10 Depth=1
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a0, $s6, 2
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	addi.d	$a2, $sp, 1816
	addi.d	$a3, $sp, 1304
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_37
# %bb.35:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $sp, 1816
	beqz	$a0, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $sp, 1304
	bnez	$a0, .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a4, $s3, 0
	addi.d	$a5, $a0, 2
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a2, $a0, %pc_lo12(.L.str.65)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_38:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 1816
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s8, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s4, $a1
	move	$s6, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB0_78
# %bb.39:                               #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$a0, $a2, $s4, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	b	.LBB0_79
.LBB0_40:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(FirstFile)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 17
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_42:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s2, 0
	ld.bu	$a1, $a0, 2
	beqz	$a1, .LBB0_122
# %bb.43:                               #   in Loop: Header=BB0_10 Depth=1
	addi.d	$s6, $a0, 2
	b	.LBB0_125
.LBB0_44:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 10
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_46:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_8
.LBB0_47:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_127
# %bb.48:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	addi.d	$a0, $s6, 2
	b	.LBB0_130
.LBB0_49:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_132
# %bb.50:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	addi.d	$a1, $s6, 2
	b	.LBB0_135
.LBB0_51:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_137
# %bb.52:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	addi.d	$a1, $s6, 2
	b	.LBB0_140
.LBB0_53:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_142
# %bb.54:                               #   in Loop: Header=BB0_10 Depth=1
	addi.d	$s6, $s6, 2
	b	.LBB0_145
.LBB0_55:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(InitializeAll)
.LBB0_56:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(AllowCrossDb)
	move	$a1, $a4
	b	.LBB0_9
.LBB0_57:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(SafeExecution)
	move	$a1, $a4
	b	.LBB0_9
.LBB0_58:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_148
# %bb.59:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	addi.d	$a1, $s6, 2
	b	.LBB0_151
.LBB0_60:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_153
# %bb.61:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	addi.d	$s6, $s6, 2
	b	.LBB0_156
.LBB0_62:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a2, $a0, %pc_lo12(.L.str.60)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	ori	$a3, $zero, 1
	move	$a5, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_63:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(UseCollate)
	move	$a1, $a4
	b	.LBB0_9
.LBB0_64:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_158
# %bb.65:                               #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $s6, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $a4
	b	.LBB0_9
.LBB0_66:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(Kern)
	move	$a1, $a4
	b	.LBB0_9
.LBB0_67:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB0_161
# %bb.68:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	addi.d	$s6, $s6, 2
	b	.LBB0_164
.LBB0_69:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(UseCollate)
.LBB0_70:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a1, $a4
	b	.LBB0_9
.LBB0_71:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_207
# %bb.72:                               #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	addi.w	$s5, $s5, 1
	slli.d	$a0, $s5, 3
	ldx.d	$s6, $s1, $a0
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB0_207
.LBB0_73:                               # %GetArg.exit233
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -3
	bltz	$a0, .LBB0_76
# %bb.74:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$s7, $s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_10 Depth=1
	st.b	$zero, $s7, 0
.LBB0_76:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a4, $zero, 2
	move	$a0, $s6
	move	$a3, $zero
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_77:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %got_pc_hi20(PDF_BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(PDF_BackEnd)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(BackEnd)
	b	.LBB0_8
.LBB0_78:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $s3, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_79:                               #   in Loop: Header=BB0_10 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s0, $a0, %got_pc_lo12(xx_link)
	st.d	$a1, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s1, $a0, %got_pc_lo12(zz_res)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(CommandOptions)
	st.d	$a1, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $a0, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a3, 8
.LBB0_81:                               #   in Loop: Header=BB0_10 Depth=1
	st.d	$a1, $s1, 0
	st.d	$s6, $s2, 0
	beqz	$s6, .LBB0_84
# %bb.82:                               #   in Loop: Header=BB0_10 Depth=1
	beqz	$a1, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s6, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a1, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $s6, 16
	st.d	$s6, $a3, 24
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
.LBB0_84:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s8, 17
	slli.d	$a1, $a0, 3
	ldx.d	$s6, $s4, $a1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s6, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_10 Depth=1
	st.d	$s6, $s2, 0
	ld.d	$a1, $s6, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a1, $a0, 0
	b	.LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $s2, 0
.LBB0_87:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 17
	st.b	$a0, $s6, 32
	st.d	$s6, $s6, 0
	ld.bu	$a2, $s8, 0
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$s6, $s6, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_10 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $s3, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_90:                               #   in Loop: Header=BB0_10 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(CommandOptions)
	st.d	$a0, $a0, 8
	st.d	$a0, $s0, 0
	st.d	$a0, $s1, 0
	st.d	$a1, $s2, 0
	beqz	$a1, .LBB0_93
# %bb.91:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s1, 0
	st.d	$s6, $s2, 0
	beqz	$a1, .LBB0_95
# %bb.92:                               # %._crit_edge339
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a1, 16
	b	.LBB0_94
.LBB0_93:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	st.d	$s6, $s2, 0
	move	$a1, $a0
.LBB0_94:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s6, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s6, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $a3, 0
	st.d	$s6, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB0_95:                               # %.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$a1, $zero
	addi.d	$s3, $sp, 1304
	ld.bu	$a0, $s3, 0
	ori	$a2, $zero, 31
	blt	$a2, $a0, .LBB0_99
	b	.LBB0_102
.LBB0_96:                               #   in Loop: Header=BB0_10 Depth=1
	beqz	$a0, .LBB0_119
.LBB0_97:                               #   in Loop: Header=BB0_10 Depth=1
	addi.w	$a2, $a1, 1
	addi.d	$a3, $sp, 792
	stx.b	$a0, $a1, $a3
	move	$a1, $a2
	.p2align	4, , 16
.LBB0_98:                               #   in Loop: Header=BB0_10 Depth=1
	addi.d	$s3, $s3, 1
	ld.bu	$a0, $s3, 0
	ori	$a2, $zero, 31
	bge	$a2, $a0, .LBB0_102
.LBB0_99:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a2, $zero, 32
	beq	$a0, $a2, .LBB0_103
# %bb.100:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a2, $zero, 125
	beq	$a0, $a2, .LBB0_103
# %bb.101:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a2, $zero, 123
	beq	$a0, $a2, .LBB0_103
	b	.LBB0_97
	.p2align	4, , 16
.LBB0_102:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a2, $a0, -9
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB0_96
.LBB0_103:                              #   in Loop: Header=BB0_10 Depth=1
	blez	$a1, .LBB0_98
# %bb.104:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 792
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s6, 8
	beq	$a0, $s6, .LBB0_113
# %bb.105:                              #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $s8
	ld.bu	$a0, $s8, 1
	slli.d	$a1, $a0, 3
	ldx.d	$s7, $s4, $a1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s7, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_10 Depth=1
	st.d	$s7, $s2, 0
	ld.d	$a1, $s7, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a1, $a0, 0
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_107:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s2, 0
.LBB0_108:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 1
	st.b	$a0, $s7, 32
	st.d	$s7, $s7, 24
	st.d	$s7, $s7, 0
	ld.d	$a1, $s8, 0
	st.d	$s7, $s7, 16
	st.d	$s7, $s7, 8
	st.h	$a0, $s7, 41
	ld.h	$a0, $a1, 2
	st.h	$a0, $s7, 34
	ld.wu	$a0, $a1, 4
	ld.wu	$a2, $s7, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a0
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $s7, 36
	ld.wu	$a3, $a1, 4
	move	$s8, $fp
	ld.bu	$a2, $fp, 0
	srli.d	$a3, $a3, 20
	bstrins.d	$a0, $a3, 63, 20
	st.w	$a0, $s7, 36
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_10 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB0_111
	.p2align	4, , 16
.LBB0_110:                              #   in Loop: Header=BB0_10 Depth=1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_111:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s1, 0
	st.d	$s6, $s2, 0
	ld.d	$a2, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $s2, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a0, 0
	ld.d	$a2, $s1, 0
	ld.d	$a0, $s0, 0
	st.d	$a2, $a4, 8
	st.d	$a0, $s1, 0
	st.d	$s7, $s2, 0
	beqz	$a0, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s7, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s7, 16
	st.d	$s7, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB0_113:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $s7, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 792
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s8, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s4, $a1
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a1, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_10 Depth=1
	st.d	$a1, $s2, 0
	ld.d	$a3, $a1, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a3, $a2, 0
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_115:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $s7, 0
	move	$s7, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
.LBB0_116:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	st.d	$a1, $s1, 0
	st.d	$s6, $s2, 0
	ld.d	$a3, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a3, $s2, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a2, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a1, 0
	ld.d	$a4, $s1, 0
	ld.d	$a3, $s0, 0
	move	$a1, $zero
	st.d	$a4, $a5, 8
	st.d	$a3, $s1, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB0_98
# %bb.117:                              #   in Loop: Header=BB0_10 Depth=1
	beqz	$a3, .LBB0_98
# %bb.118:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $a0, 16
	ld.d	$a5, $a3, 16
	move	$a1, $zero
	st.d	$a4, $a2, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a4, $a3, 16
	st.d	$a3, $a4, 24
	b	.LBB0_98
.LBB0_119:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	blez	$a1, .LBB0_172
# %bb.120:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	addi.d	$a0, $sp, 792
	stx.b	$zero, $a1, $a0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 792
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s8, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s4, $a1
	move	$s7, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB0_168
# %bb.121:                              #   in Loop: Header=BB0_10 Depth=1
	st.d	$a1, $s2, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a0, $a2, 0
	b	.LBB0_169
.LBB0_122:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s0, $s5, 1
	slli.d	$a0, $s0, 3
	ldx.d	$s6, $s1, $a0
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 18
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s6, $zero
.LBB0_125:                              # %GetArg.exit237
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$s0, $s5
.LBB0_126:                              # %GetArg.exit237
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 7
	ori	$a4, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 8
	ori	$a4, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	b	.LBB0_166
.LBB0_127:                              #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s0, $s5, 1
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $s1, $a0
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB0_131
.LBB0_129:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 9
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB0_130:                              # %GetArg.exit209
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$s0, $s5
.LBB0_131:                              # %GetArg.exit209
                                        #   in Loop: Header=BB0_10 Depth=1
	pcaddu18i	$ra, %call36(ErrorInit)
	jirl	$ra, $ra, 0
	b	.LBB0_166
.LBB0_132:                              #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s0, $s5, 1
	slli.d	$a0, $s0, 3
	ldx.d	$a1, $s1, $a0
	ld.bu	$a0, $a1, 0
	ori	$a2, $zero, 45
	bne	$a0, $a2, .LBB0_136
.LBB0_134:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 13
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a1, $zero
.LBB0_135:                              # %GetArg.exit221
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$s0, $s5
.LBB0_136:                              # %GetArg.exit221
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	b	.LBB0_166
.LBB0_137:                              #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s0, $s5, 1
	slli.d	$a0, $s0, 3
	ldx.d	$a1, $s1, $a0
	ld.bu	$a0, $a1, 0
	ori	$a2, $zero, 45
	bne	$a0, $a2, .LBB0_141
.LBB0_139:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 14
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a1, $zero
.LBB0_140:                              # %GetArg.exit225
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$s0, $s5
.LBB0_141:                              # %GetArg.exit225
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	b	.LBB0_166
.LBB0_142:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s0, $s5, 1
	slli.d	$a0, $s0, 3
	ldx.d	$s6, $s1, $a0
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB0_146
.LBB0_144:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 7
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s6, $zero
.LBB0_145:                              # %GetArg.exit
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$s0, $s5
.LBB0_146:                              # %GetArg.exit
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(StringEndsWith)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_166
# %bb.147:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a6, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 28
	ori	$a3, $zero, 1
	move	$a5, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_166
.LBB0_148:                              #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s0, $s5, 1
	slli.d	$a0, $s0, 3
	ldx.d	$a1, $s1, $a0
	ld.bu	$a0, $a1, 0
	ori	$a2, $zero, 45
	bne	$a0, $a2, .LBB0_152
.LBB0_150:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 12
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a1, $zero
.LBB0_151:                              # %GetArg.exit217
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$s0, $s5
.LBB0_152:                              # %GetArg.exit217
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	b	.LBB0_166
.LBB0_153:                              #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s0, $s5, 1
	slli.d	$a0, $s0, 3
	ldx.d	$s6, $s1, $a0
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB0_157
.LBB0_155:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 11
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s6, $zero
.LBB0_156:                              # %GetArg.exit213
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$s0, $s5
.LBB0_157:                              # %GetArg.exit213
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	ori	$a0, $zero, 11
	move	$a1, $s6
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ori	$a0, $zero, 11
	move	$a1, $s6
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	b	.LBB0_166
.LBB0_158:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_10 Depth=1
	addi.w	$a0, $s5, 1
	slli.d	$a1, $a0, 3
	ldx.d	$a3, $s1, $a1
	ld.bu	$a1, $a3, 0
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB0_189
.LBB0_160:                              #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	b	.LBB0_8
.LBB0_161:                              #   in Loop: Header=BB0_10 Depth=1
	move	$fp, $a4
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s0, $s5, 1
	slli.d	$a0, $s0, 3
	ldx.d	$s6, $s1, $a0
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB0_165
.LBB0_163:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 15
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s6, $zero
.LBB0_164:                              # %GetArg.exit229
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$s0, $s5
.LBB0_165:                              # %GetArg.exit229
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s3, 0
	ori	$a0, $zero, 11
	move	$a1, $s6
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ori	$a0, $zero, 11
	move	$a1, $s6
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
.LBB0_166:                              #   in Loop: Header=BB0_10 Depth=1
	move	$s5, $s0
	move	$a1, $fp
.LBB0_167:                              # %GetArg.exit205
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	b	.LBB0_9
.LBB0_168:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $s3, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_169:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	st.d	$a1, $s1, 0
	st.d	$s6, $s2, 0
	ld.d	$a2, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s2, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a0, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s0, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $s1, 0
	st.d	$s7, $s2, 0
	beqz	$s7, .LBB0_172
# %bb.170:                              #   in Loop: Header=BB0_10 Depth=1
	beqz	$a1, .LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $s7, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $a0, 0
	st.d	$a3, $s7, 16
	st.d	$s7, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB0_172:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s6, 8
	bne	$a0, $s6, .LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a4, $s3, 0
	addi.d	$a5, $a0, 2
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a2, $a0, %pc_lo12(.L.str.65)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 25
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_174:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_167
.LBB0_175:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	fld.s	$fa0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_0)
	b	.LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	fld.s	$fa0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_1)
.LBB0_177:                              #   in Loop: Header=BB0_10 Depth=1
	fmul.s	$fa0, $fa0, $fa1
	b	.LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	fld.s	$fa0, $a0, 0
	vldi	$vr1, -1228
	fmul.s	$fa0, $fa0, $fa1
.LBB0_179:                              #   in Loop: Header=BB0_10 Depth=1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.bu	$a0, $sp, 274
	addi.d	$a0, $a0, -99
	ori	$a1, $zero, 13
	bltu	$a1, $a0, .LBB0_188
.LBB0_180:                              #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_2)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_181:                              #   in Loop: Header=BB0_10 Depth=1
	fld.s	$fa0, $sp, 276
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_2)
	b	.LBB0_184
.LBB0_182:                              #   in Loop: Header=BB0_10 Depth=1
	fld.s	$fa0, $sp, 276
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_0)
	b	.LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_10 Depth=1
	fld.s	$fa0, $sp, 276
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_1)
.LBB0_184:                              # %GetArg.exit205
                                        #   in Loop: Header=BB0_10 Depth=1
	fmul.s	$fa0, $fa0, $fa1
	b	.LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_10 Depth=1
	fld.s	$fa0, $sp, 276
	vldi	$vr1, -1228
	fmul.s	$fa0, $fa0, $fa1
.LBB0_186:                              # %GetArg.exit205
                                        #   in Loop: Header=BB0_10 Depth=1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_8
.LBB0_187:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a4, $s3, 0
	ld.b	$a5, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a2, $a0, %pc_lo12(.L.str.59)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 20
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 274
	addi.d	$a0, $a0, -99
	ori	$a1, $zero, 13
	bgeu	$a1, $a0, .LBB0_180
.LBB0_188:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a4, $s3, 0
	ld.b	$a5, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a2, $a0, %pc_lo12(.L.str.59)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 21
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_189:                              #   in Loop: Header=BB0_10 Depth=1
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	move	$s5, $a0
	move	$a1, $a4
	b	.LBB0_9
.LBB0_190:                              #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	ori	$a0, $zero, 2328
	add.d	$a2, $sp, $a0
	move	$a0, $s6
	move	$fp, $a4
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2328
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(MemCheck)
	st.d	$a2, $a1, %pc_lo12(MemCheck)
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_191:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ori	$s4, $zero, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(UseCollate)
	bnez	$a0, .LBB0_193
	b	.LBB0_195
.LBB0_192:                              # %._crit_edge.loopexit
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	sltui	$fp, $a0, 1
	sltui	$s4, $a1, 1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(UseCollate)
	beqz	$a0, .LBB0_195
.LBB0_193:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(setlocale)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_195
# %bb.194:
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a2, $a0, %pc_lo12(.L.str.67)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 30
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_195:                              # %sub_0
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.bu	$a0, $s7, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB0_198
# %bb.196:                              # %.tail
	ld.bu	$a0, $s7, 1
	bnez	$a0, .LBB0_198
# %bb.197:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s1, $a0, 0
	b	.LBB0_200
.LBB0_198:                              # %.tail.thread
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a1, $a0, %pc_lo12(.L.str.68)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB0_200
# %bb.199:
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a2, $a0, %pc_lo12(.L.str.69)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 27
	ori	$a3, $zero, 1
	move	$a5, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB0_200:
	pcaddu18i	$ra, %call36(ColourInit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LanguageInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(BackEnd)
	ld.d	$a1, $a0, 48
	move	$a0, $s1
	jirl	$ra, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s1, $a0, %pc_lo12(.L.str.39)
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a2, $a0, %pc_lo12(.L.str.70)
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MakeWordThree)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a2, $a0, %pc_lo12(.L.str.71)
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MakeWordThree)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a2, $a0, %pc_lo12(.L.str.72)
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MakeWordThree)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s2, $a0, %pc_lo12(.L.str.42)
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWordThree)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWordThree)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$s2, $a0, %pc_lo12(.L.str.40)
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWordThree)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWordThree)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(AddToPath)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_202
# %bb.201:
	ld.d	$a2, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
.LBB0_202:
	ld.d	$a2, $s3, 0
	pcalau12i	$s5, %pc_hi20(StartSym)
	st.d	$zero, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ori	$a1, $zero, 143
	ori	$a4, $zero, 1
	move	$a3, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	move	$a7, $a0
	st.d	$a0, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	ori	$a1, $zero, 143
	ori	$a4, $zero, 1
	move	$a3, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a1, %pc_hi20(GalleySym)
	st.d	$a0, $a1, %pc_lo12(GalleySym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	ori	$a1, $zero, 143
	ori	$a4, $zero, 1
	move	$a3, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a1, %pc_hi20(ForceGalleySym)
	st.d	$a0, $a1, %pc_lo12(ForceGalleySym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 143
	ori	$a4, $zero, 1
	move	$a3, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a1, %pc_hi20(InputSym)
	st.d	$a0, $a1, %pc_lo12(InputSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	ori	$a1, $zero, 143
	ori	$a4, $zero, 1
	move	$a3, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a1, %pc_hi20(PrintSym)
	st.d	$a0, $a1, %pc_lo12(PrintSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	ori	$a1, $zero, 143
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a1, %pc_hi20(FilterInSym)
	st.d	$a0, $a1, %pc_lo12(FilterInSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 143
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a1, %pc_hi20(FilterOutSym)
	st.d	$a0, $a1, %pc_lo12(FilterOutSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	ori	$a1, $zero, 143
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a1, %pc_hi20(FilterErrSym)
	st.d	$a0, $a1, %pc_lo12(FilterErrSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	move	$s1, $a0
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.215)
	addi.d	$s3, $a0, %pc_lo12(.L.str.215)
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s1
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a0, %pc_hi20(OptGallSym)
	st.d	$s1, $a0, %pc_lo12(OptGallSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 53
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s1, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s1
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a0, %pc_hi20(VerbatimSym)
	st.d	$s1, $a0, %pc_lo12(VerbatimSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 54
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s1, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s1
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	pcalau12i	$a0, %pc_hi20(RawVerbatimSym)
	st.d	$s1, $a0, %pc_lo12(RawVerbatimSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 1
	ori	$a6, $zero, 104
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 2
	ori	$a6, $zero, 105
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 82
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 83
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 84
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 85
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 86
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 87
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 88
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 89
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 90
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 91
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 3
	ori	$a6, $zero, 102
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 4
	ori	$a6, $zero, 103
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 112
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 113
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 114
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 115
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 116
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 117
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 106
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	ori	$a1, $zero, 143
	ori	$a6, $zero, 107
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 52
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.214)
	addi.d	$s1, $a0, %pc_lo12(.L.str.214)
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 55
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 56
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 58
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 59
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 60
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 61
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 62
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 63
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 64
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 65
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 65
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 66
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 67
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 68
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 69
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 70
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 71
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a0, $a0, %pc_lo12(.L.str.124)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 72
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a0, $a0, %pc_lo12(.L.str.125)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 73
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 74
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 75
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 76
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 77
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 78
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 79
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 80
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 92
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 93
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 26
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 27
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 28
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 29
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 20
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 21
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 22
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 23
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 24
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a0, $a0, %pc_lo12(.L.str.144)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 25
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 30
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 31
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 32
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 33
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a0, $a0, %pc_lo12(.L.str.149)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 35
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 34
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 36
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 37
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a0, $a0, %pc_lo12(.L.str.153)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 38
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$a0, $a0, %pc_lo12(.L.str.154)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 39
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 40
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 41
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 44
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 42
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a0, $a0, %pc_lo12(.L.str.159)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 43
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 45
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 46
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 47
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 48
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 49
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 50
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 51
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 94
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 95
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a0, $a0, %pc_lo12(.L.str.169)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 96
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 97
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 98
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$a0, $a0, %pc_lo12(.L.str.172)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a6, $zero, 99
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a0, $a0, %pc_lo12(.L.str.173)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 101
	ori	$a6, $zero, 6
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 101
	ori	$a6, $zero, 7
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$a0, $a0, %pc_lo12(.L.str.175)
	ori	$a1, $zero, 143
	ori	$a4, $zero, 1
	ori	$a6, $zero, 5
	move	$a3, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.176)
	addi.d	$a0, $a0, %pc_lo12(.L.str.176)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	ori	$a4, $zero, 1
	ori	$a6, $zero, 4
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a7, $a0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.177)
	addi.d	$a0, $a0, %pc_lo12(.L.str.177)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 5
	ori	$a6, $zero, 19
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ori	$a0, $a0, 16
	ld.bu	$a1, $s2, 43
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.h	$a0, $s2, 41
	andi	$a0, $a1, 249
	st.b	$a0, $s2, 43
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.178)
	addi.d	$a0, $a0, %pc_lo12(.L.str.178)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 5
	ori	$a6, $zero, 19
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ori	$a0, $a0, 16
	ld.bu	$a1, $s2, 43
	st.h	$a0, $s2, 41
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	andi	$a0, $a1, 249
	addi.d	$a0, $a0, 2
	st.b	$a0, $s2, 43
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 5
	ori	$a6, $zero, 19
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ori	$a0, $a0, 16
	ld.bu	$a1, $s2, 43
	st.h	$a0, $s2, 41
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	andi	$a0, $a1, 249
	addi.d	$a0, $a0, 4
	st.b	$a0, $s2, 43
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$a0, $a0, %pc_lo12(.L.str.179)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 5
	ori	$a6, $zero, 19
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ori	$a0, $a0, 16
	ld.b	$a1, $s2, 43
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.h	$a0, $s2, 41
	ori	$a0, $a1, 6
	st.b	$a0, $s2, 43
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.180)
	addi.d	$a0, $a0, %pc_lo12(.L.str.180)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 6
	ori	$a6, $zero, 18
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ori	$a0, $a0, 16
	ld.bu	$a1, $s2, 43
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.h	$a0, $s2, 41
	andi	$a0, $a1, 249
	st.b	$a0, $s2, 43
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$a0, $a0, %pc_lo12(.L.str.181)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 6
	ori	$a6, $zero, 18
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ori	$a0, $a0, 16
	ld.bu	$a1, $s2, 43
	st.h	$a0, $s2, 41
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	andi	$a0, $a1, 249
	addi.d	$a0, $a0, 2
	st.b	$a0, $s2, 43
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.182)
	addi.d	$a0, $a0, %pc_lo12(.L.str.182)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 6
	ori	$a6, $zero, 18
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ori	$a0, $a0, 16
	ld.bu	$a1, $s2, 43
	st.h	$a0, $s2, 41
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	andi	$a0, $a1, 249
	addi.d	$a0, $a0, 4
	st.b	$a0, $s2, 43
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$a0, $a0, %pc_lo12(.L.str.183)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 6
	ori	$a6, $zero, 18
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ori	$a0, $a0, 16
	ld.b	$a1, $s2, 43
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	st.h	$a0, $s2, 41
	ori	$a0, $a1, 6
	st.b	$a0, $s2, 43
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.184)
	addi.d	$a0, $a0, %pc_lo12(.L.str.184)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 7
	ori	$a6, $zero, 17
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ori	$a0, $a0, 16
	ld.bu	$a1, $s2, 43
	st.h	$a0, $s2, 41
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a7, $s5, %pc_lo12(StartSym)
	andi	$a0, $a1, 249
	addi.d	$a0, $a0, 4
	st.b	$a0, $s2, 43
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.185)
	addi.d	$a0, $a0, %pc_lo12(.L.str.185)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 7
	ori	$a6, $zero, 17
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a0, $s3
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s2
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 41
	ld.b	$a1, $s2, 43
	ori	$a0, $a0, 16
	st.h	$a0, $s2, 41
	ori	$a0, $a1, 6
	st.b	$a0, $s2, 43
	pcaddu18i	$ra, %call36(FontInit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(InitTime)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FilterInit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(EnvInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(StartSym)
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FirstFile)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	move	$a1, $zero
	move	$a2, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(LexPush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(InitParser)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a5, $s5, %pc_lo12(StartSym)
	ori	$a0, $zero, 104
	ori	$a4, $zero, 1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(StartSym)
	ori	$a2, $zero, 2336
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(CommandOptions)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TransferEnd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(TransferClose)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(BackEnd)
	ld.d	$a0, $a0, 104
	jirl	$ra, $a0, 0
	ld.d	$a0, $fp, %pc_lo12(BackEnd)
	ld.d	$a0, $a0, 224
	jirl	$ra, $a0, 0
	pcaddu18i	$ra, %call36(CrossClose)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CloseFiles)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(FilterScavenge)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB0_204
# %bb.203:
	ld.d	$a4, $s1, 0
	ld.w	$a5, $s6, %pc_lo12(TotalWordCount)
	pcalau12i	$a0, %pc_hi20(.L.str.186)
	addi.d	$a2, $a0, %pc_lo12(.L.str.186)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 29
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_204:
	pcaddu18i	$ra, %call36(CheckErrorBlocks)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(MsgCat)
	pcaddu18i	$ra, %call36(catclose)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_205:
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$s0, $a1, %pc_lo12(.L.str.28)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a2, $a1, %pc_lo12(.L.str.29)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a3, $a1, %pc_lo12(.L.str.30)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a2, $a1, %pc_lo12(.L.str.31)
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a3, $a1, %pc_lo12(.L.str.32)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcalau12i	$a2, %pc_hi20(.L.str.34)
	addi.d	$a2, $a2, %pc_lo12(.L.str.34)
	pcalau12i	$a3, %pc_hi20(.L.str.35)
	addi.d	$a3, $a3, %pc_lo12(.L.str.35)
	pcalau12i	$a4, %pc_hi20(.L.str.36)
	addi.d	$a4, $a4, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$s0, $a1, %pc_lo12(.L.str.37)
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a2, $a1, %pc_lo12(.L.str.38)
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$s1, $a1, %pc_lo12(.L.str.39)
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a5, $a1, %pc_lo12(.L.str.40)
	move	$a1, $s0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a2, $a1, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a5, $a1, %pc_lo12(.L.str.42)
	move	$a1, $s0
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	pcalau12i	$a2, %pc_hi20(.L.str.44)
	addi.d	$s1, $a2, %pc_lo12(.L.str.44)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	pcalau12i	$a2, %pc_hi20(.L.str.46)
	addi.d	$s0, $a2, %pc_lo12(.L.str.46)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 49
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_206:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(PrintUsage)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_207:
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_44-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_67-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_63-.LJTI0_0
	.word	.LBB0_25-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_24-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_57-.LJTI0_0
	.word	.LBB0_205-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_47-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_40-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_69-.LJTI0_0
	.word	.LBB0_190-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_53-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_206-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_176-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_175-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_187-.LJTI0_1
	.word	.LBB0_178-.LJTI0_1
.LJTI0_2:
	.word	.LBB0_181-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_183-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_182-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_188-.LJTI0_2
	.word	.LBB0_185-.LJTI0_2
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function PrintUsage
	.type	PrintUsage,@function
PrintUsage:                             # @PrintUsage
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s0, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.187)
	addi.d	$a2, $a0, %pc_lo12(.L.str.187)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.188)
	addi.d	$a2, $a0, %pc_lo12(.L.str.188)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.189)
	addi.d	$a2, $a0, %pc_lo12(.L.str.189)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.190)
	addi.d	$a2, $a0, %pc_lo12(.L.str.190)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.191)
	addi.d	$a2, $a0, %pc_lo12(.L.str.191)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.192)
	addi.d	$a2, $a0, %pc_lo12(.L.str.192)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.193)
	addi.d	$a2, $a0, %pc_lo12(.L.str.193)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$a2, $a0, %pc_lo12(.L.str.194)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$a2, $a0, %pc_lo12(.L.str.195)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a2, $a0, %pc_lo12(.L.str.196)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a2, $a0, %pc_lo12(.L.str.197)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$a2, $a0, %pc_lo12(.L.str.198)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$a2, $a0, %pc_lo12(.L.str.199)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a2, $a0, %pc_lo12(.L.str.200)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$a2, $a0, %pc_lo12(.L.str.201)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.202)
	addi.d	$a2, $a0, %pc_lo12(.L.str.202)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$a2, $a0, %pc_lo12(.L.str.203)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a2, $a0, %pc_lo12(.L.str.204)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a2, $a0, %pc_lo12(.L.str.205)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a2, $a0, %pc_lo12(.L.str.206)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$a2, $a0, %pc_lo12(.L.str.207)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.208)
	addi.d	$a2, $a0, %pc_lo12(.L.str.208)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$a2, $a0, %pc_lo12(.L.str.209)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.210)
	addi.d	$a2, $a0, %pc_lo12(.L.str.210)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$a2, $a0, %pc_lo12(.L.str.211)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$a2, $a0, %pc_lo12(.L.str.212)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.213)
	addi.d	$a2, $a0, %pc_lo12(.L.str.213)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end1:
	.size	PrintUsage, .Lfunc_end1-PrintUsage
                                        # -- End function
	.type	MemCheck,@object                # @MemCheck
	.bss
	.globl	MemCheck
	.p2align	3, 0x0
MemCheck:
	.dword	0
	.size	MemCheck, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LOUTLIB"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"lout.lib"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.space	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"unable to initialize locale"
	.size	.L.str.3, 28

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"C"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s/%s/%s/LC_MESSAGES/errors.%s"
	.size	.L.str.5, 31

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"locale"
	.size	.L.str.6, 7

	.type	MsgCat,@object                  # @MsgCat
	.bss
	.globl	MsgCat
	.p2align	3, 0x0
MsgCat:
	.dword	0
	.size	MsgCat, 8

	.type	TotalWordCount,@object          # @TotalWordCount
	.globl	TotalWordCount
	.p2align	2, 0x0
TotalWordCount:
	.word	0                               # 0x0
	.size	TotalWordCount, 4

	.type	BackEnd,@object                 # @BackEnd
	.globl	BackEnd
	.p2align	3, 0x0
BackEnd:
	.dword	0
	.size	BackEnd, 8

	.type	InitializeAll,@object           # @InitializeAll
	.globl	InitializeAll
	.p2align	2, 0x0
InitializeAll:
	.word	0                               # 0x0
	.size	InitializeAll, 4

	.type	UseCollate,@object              # @UseCollate
	.globl	UseCollate
	.p2align	2, 0x0
UseCollate:
	.word	0                               # 0x0
	.size	UseCollate, 4

	.type	AllowCrossDb,@object            # @AllowCrossDb
	.globl	AllowCrossDb
	.p2align	2, 0x0
AllowCrossDb:
	.word	0                               # 0x0
	.size	AllowCrossDb, 4

	.type	InMemoryDbIndexes,@object       # @InMemoryDbIndexes
	.globl	InMemoryDbIndexes
	.p2align	2, 0x0
InMemoryDbIndexes:
	.word	0                               # 0x0
	.size	InMemoryDbIndexes, 4

	.type	SafeExecution,@object           # @SafeExecution
	.globl	SafeExecution
	.p2align	2, 0x0
SafeExecution:
	.word	0                               # 0x0
	.size	SafeExecution, 4

	.type	Kern,@object                    # @Kern
	.globl	Kern
	.p2align	2, 0x0
Kern:
	.word	0                               # 0x0
	.size	Kern, 4

	.type	AltErrorFormat,@object          # @AltErrorFormat
	.globl	AltErrorFormat
	.p2align	2, 0x0
AltErrorFormat:
	.word	0                               # 0x0
	.size	AltErrorFormat, 4

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"lout"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"-"
	.size	.L.str.8, 2

	.type	CommandOptions,@object          # @CommandOptions
	.bss
	.globl	CommandOptions
	.p2align	3, 0x0
CommandOptions:
	.dword	0
	.size	CommandOptions, 8

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"usage: -o <filename>"
	.size	.L.str.10, 21

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	".lt"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"-o: output file name %s ends with %s"
	.size	.L.str.12, 37

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"usage: -c <filename>"
	.size	.L.str.13, 21

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"usage: -e <filename>"
	.size	.L.str.14, 21

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"EPS"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"usage: -EPS"
	.size	.L.str.16, 12

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"usage: -D <directoryname>"
	.size	.L.str.17, 26

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"usage: -C <directoryname>"
	.size	.L.str.18, 26

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"usage: -F <directoryname>"
	.size	.L.str.19, 26

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"usage: -H <directoryname>"
	.size	.L.str.20, 26

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"usage: -I <directoryname>"
	.size	.L.str.21, 26

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"usage: -i <filename>"
	.size	.L.str.22, 21

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"two -h options illegal"
	.size	.L.str.23, 23

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"usage: -h <filename>"
	.size	.L.str.24, 21

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	".lh"
	.size	.L.str.25, 4

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"%s\n"
	.size	.L.str.26, 4

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Basser Lout Version 3.24 (October 2000)"
	.size	.L.str.27, 40

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"%-28s %s\n"
	.size	.L.str.28, 10

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Basser Lout written by:"
	.size	.L.str.29, 24

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Jeffrey H. Kingston (jeff@cs.usyd.edu.au)"
	.size	.L.str.30, 42

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Free source available from:"
	.size	.L.str.31, 28

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"ftp://ftp.cs.usyd.edu.au/jeff/lout"
	.size	.L.str.32, 35

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%-28s %s %s\n"
	.size	.L.str.33, 13

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"This executable compiled:"
	.size	.L.str.34, 26

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"00:00:00"
	.size	.L.str.35, 9

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Jan 01 1970"
	.size	.L.str.36, 12

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"%-28s %s%s%s\n"
	.size	.L.str.37, 14

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"System include directory:"
	.size	.L.str.38, 26

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"/"
	.size	.L.str.39, 2

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"include"
	.size	.L.str.40, 8

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"System database directory:"
	.size	.L.str.41, 27

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"data"
	.size	.L.str.42, 5

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Database index files created afresh automatically:%s\n"
	.size	.L.str.43, 54

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	" yes"
	.size	.L.str.44, 5

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Safe execution (disabling system()) is default:%s\n"
	.size	.L.str.45, 51

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	" no"
	.size	.L.str.46, 4

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"strcoll() used for sorting by default:%s\n"
	.size	.L.str.47, 42

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"PDF compression on:%s\n"
	.size	.L.str.48, 23

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Debugging (-d, -dd, -ddd flags) available:%s\n"
	.size	.L.str.49, 46

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Basser Lout comes with ABSOLUTELY NO WARRANTY.\n"
	.size	.L.str.51, 48

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"This is free software, and you are welcome to\n"
	.size	.L.str.52, 47

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"redistribute it under certain conditions.  For\n"
	.size	.L.str.53, 48

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"details on both points, consult the GNU General\n"
	.size	.L.str.54, 49

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Public License (distributed with this software).\n"
	.size	.L.str.55, 50

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"PDF"
	.size	.L.str.56, 4

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"%f%c%f%c"
	.size	.L.str.57, 9

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"usage: lout -%c<length><length>"
	.size	.L.str.58, 32

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"lout -%c: units must be c, i, p, or m"
	.size	.L.str.59, 38

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"%s - debug flags not implemented"
	.size	.L.str.60, 33

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"-m%ld"
	.size	.L.str.61, 6

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"checking memory location %ld\n"
	.size	.L.str.62, 30

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"standard input specified twice"
	.size	.L.str.63, 31

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"%[^{ ] { %[^}] }"
	.size	.L.str.64, 17

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"error in command-line option %s"
	.size	.L.str.65, 32

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"unknown command line flag %s"
	.size	.L.str.66, 29

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"unable to initialize collation"
	.size	.L.str.67, 31

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"w"
	.size	.L.str.68, 2

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"cannot open output file %s"
	.size	.L.str.69, 27

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"font"
	.size	.L.str.70, 5

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"hyph"
	.size	.L.str.71, 5

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"maps"
	.size	.L.str.72, 5

	.type	StartSym,@object                # @StartSym
	.bss
	.globl	StartSym
	.p2align	3, 0x0
StartSym:
	.dword	0
	.size	StartSym, 8

	.type	.L.str.73,@object               # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"\\Start"
	.size	.L.str.73, 7

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"@Galley"
	.size	.L.str.74, 8

	.type	GalleySym,@object               # @GalleySym
	.bss
	.globl	GalleySym
	.p2align	3, 0x0
GalleySym:
	.dword	0
	.size	GalleySym, 8

	.type	.L.str.75,@object               # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"@ForceGalley"
	.size	.L.str.75, 13

	.type	ForceGalleySym,@object          # @ForceGalleySym
	.bss
	.globl	ForceGalleySym
	.p2align	3, 0x0
ForceGalleySym:
	.dword	0
	.size	ForceGalleySym, 8

	.type	.L.str.76,@object               # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"@LInput"
	.size	.L.str.76, 8

	.type	InputSym,@object                # @InputSym
	.bss
	.globl	InputSym
	.p2align	3, 0x0
InputSym:
	.dword	0
	.size	InputSym, 8

	.type	.L.str.77,@object               # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"\\Print"
	.size	.L.str.77, 7

	.type	PrintSym,@object                # @PrintSym
	.bss
	.globl	PrintSym
	.p2align	3, 0x0
PrintSym:
	.dword	0
	.size	PrintSym, 8

	.type	.L.str.78,@object               # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"@FilterIn"
	.size	.L.str.78, 10

	.type	FilterInSym,@object             # @FilterInSym
	.bss
	.globl	FilterInSym
	.p2align	3, 0x0
FilterInSym:
	.dword	0
	.size	FilterInSym, 8

	.type	.L.str.79,@object               # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"@FilterOut"
	.size	.L.str.79, 11

	.type	FilterOutSym,@object            # @FilterOutSym
	.bss
	.globl	FilterOutSym
	.p2align	3, 0x0
FilterOutSym:
	.dword	0
	.size	FilterOutSym, 8

	.type	.L.str.80,@object               # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"@FilterErr"
	.size	.L.str.80, 11

	.type	FilterErrSym,@object            # @FilterErrSym
	.bss
	.globl	FilterErrSym
	.p2align	3, 0x0
FilterErrSym:
	.dword	0
	.size	FilterErrSym, 8

	.type	.L.str.81,@object               # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"@OptGall"
	.size	.L.str.81, 9

	.type	OptGallSym,@object              # @OptGallSym
	.bss
	.globl	OptGallSym
	.p2align	3, 0x0
OptGallSym:
	.dword	0
	.size	OptGallSym, 8

	.type	.L.str.82,@object               # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"@Verbatim"
	.size	.L.str.82, 10

	.type	VerbatimSym,@object             # @VerbatimSym
	.bss
	.globl	VerbatimSym
	.p2align	3, 0x0
VerbatimSym:
	.dword	0
	.size	VerbatimSym, 8

	.type	.L.str.83,@object               # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"@RawVerbatim"
	.size	.L.str.83, 13

	.type	RawVerbatimSym,@object          # @RawVerbatimSym
	.bss
	.globl	RawVerbatimSym
	.p2align	3, 0x0
RawVerbatimSym:
	.dword	0
	.size	RawVerbatimSym, 8

	.type	.L.str.84,@object               # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"@Begin"
	.size	.L.str.84, 7

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"@End"
	.size	.L.str.85, 5

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"@LEnv"
	.size	.L.str.86, 6

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"@@A"
	.size	.L.str.87, 4

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"@@B"
	.size	.L.str.88, 4

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"@@C"
	.size	.L.str.89, 4

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"@@D"
	.size	.L.str.90, 4

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"@@E"
	.size	.L.str.91, 4

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"@LClos"
	.size	.L.str.92, 7

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"@@V"
	.size	.L.str.93, 4

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"@LUse"
	.size	.L.str.94, 6

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"@LEO"
	.size	.L.str.95, 5

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"{"
	.size	.L.str.96, 2

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"}"
	.size	.L.str.97, 2

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"@Include"
	.size	.L.str.98, 9

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"@SysInclude"
	.size	.L.str.99, 12

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"@PrependGraphic"
	.size	.L.str.100, 16

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"@SysPrependGraphic"
	.size	.L.str.101, 19

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"@Database"
	.size	.L.str.102, 10

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"@SysDatabase"
	.size	.L.str.103, 13

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"@Use"
	.size	.L.str.104, 5

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"@NotRevealed"
	.size	.L.str.105, 13

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"@Case"
	.size	.L.str.106, 6

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"@Yield"
	.size	.L.str.107, 7

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"@BackEnd"
	.size	.L.str.108, 9

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"@Char"
	.size	.L.str.109, 6

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"@Font"
	.size	.L.str.110, 6

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"@Space"
	.size	.L.str.111, 7

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"@YUnit"
	.size	.L.str.112, 7

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"@ZUnit"
	.size	.L.str.113, 7

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"@Break"
	.size	.L.str.114, 7

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"@Underline"
	.size	.L.str.115, 11

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"@SetColour"
	.size	.L.str.116, 11

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"@SetColor"
	.size	.L.str.117, 10

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"@Outline"
	.size	.L.str.118, 9

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"@Language"
	.size	.L.str.119, 10

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"@CurrLang"
	.size	.L.str.120, 10

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"@CurrFamily"
	.size	.L.str.121, 12

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"@CurrFace"
	.size	.L.str.122, 10

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"@CurrYUnit"
	.size	.L.str.123, 11

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"@CurrZUnit"
	.size	.L.str.124, 11

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"@Common"
	.size	.L.str.125, 8

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"@Rump"
	.size	.L.str.126, 6

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"@Meld"
	.size	.L.str.127, 6

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"@Insert"
	.size	.L.str.128, 8

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"@OneOf"
	.size	.L.str.129, 7

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"@Next"
	.size	.L.str.130, 6

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"@Plus"
	.size	.L.str.131, 6

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"@Minus"
	.size	.L.str.132, 7

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"@Open"
	.size	.L.str.133, 6

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"@Tagged"
	.size	.L.str.134, 8

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"@Wide"
	.size	.L.str.135, 6

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"@High"
	.size	.L.str.136, 6

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"@HShift"
	.size	.L.str.137, 8

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"@VShift"
	.size	.L.str.138, 8

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"@BeginHeaderComponent"
	.size	.L.str.139, 22

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"@EndHeaderComponent"
	.size	.L.str.140, 20

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"@SetHeaderComponent"
	.size	.L.str.141, 20

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"@ClearHeaderComponent"
	.size	.L.str.142, 22

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"@OneCol"
	.size	.L.str.143, 8

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"@OneRow"
	.size	.L.str.144, 8

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"@HScale"
	.size	.L.str.145, 8

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"@VScale"
	.size	.L.str.146, 8

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"@HCover"
	.size	.L.str.147, 8

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"@VCover"
	.size	.L.str.148, 8

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"@KernShrink"
	.size	.L.str.149, 12

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"@Scale"
	.size	.L.str.150, 7

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"@HContract"
	.size	.L.str.151, 11

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"@VContract"
	.size	.L.str.152, 11

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"@HLimited"
	.size	.L.str.153, 10

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"@VLimited"
	.size	.L.str.154, 10

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"@HExpand"
	.size	.L.str.155, 9

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"@VExpand"
	.size	.L.str.156, 9

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"@StartHVSpan"
	.size	.L.str.157, 13

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"@StartHSpan"
	.size	.L.str.158, 12

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"@StartVSpan"
	.size	.L.str.159, 12

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"@HSpan"
	.size	.L.str.160, 7

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"@VSpan"
	.size	.L.str.161, 7

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"@PAdjust"
	.size	.L.str.162, 9

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"@HAdjust"
	.size	.L.str.163, 9

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"@VAdjust"
	.size	.L.str.164, 9

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"@Rotate"
	.size	.L.str.165, 8

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"@Background"
	.size	.L.str.166, 12

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"@IncludeGraphic"
	.size	.L.str.167, 16

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.168, 19

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"@PlainGraphic"
	.size	.L.str.169, 14

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"@Graphic"
	.size	.L.str.170, 9

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"@LinkSource"
	.size	.L.str.171, 12

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"@LinkDest"
	.size	.L.str.172, 10

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"&&"
	.size	.L.str.173, 3

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"&&&"
	.size	.L.str.174, 4

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"@Null"
	.size	.L.str.175, 6

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"@PageLabel"
	.size	.L.str.176, 11

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"//"
	.size	.L.str.177, 3

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"^//"
	.size	.L.str.178, 4

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"^/"
	.size	.L.str.179, 3

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"||"
	.size	.L.str.180, 3

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"^||"
	.size	.L.str.181, 4

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"|"
	.size	.L.str.182, 2

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"^|"
	.size	.L.str.183, 3

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"&"
	.size	.L.str.184, 2

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"^&"
	.size	.L.str.185, 3

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"total of all words printed: %d"
	.size	.L.str.186, 31

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"usage:  lout options files"
	.size	.L.str.187, 27

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"  -s              suppress access to cross reference database"
	.size	.L.str.188, 62

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"  -EPS            EPS (Encapsulated PostScript) output"
	.size	.L.str.189, 55

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"  -PDF or -Z      PDF (Adobe Portable Document Format) output"
	.size	.L.str.190, 62

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"  -p              plain text output instead of PostScript"
	.size	.L.str.191, 58

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"  -P              like -p but with form-feed char between pages"
	.size	.L.str.192, 64

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"  -S              safe execution (disable calls to system(3))"
	.size	.L.str.193, 62

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"  -U              unsafe execution (allow calls to system(3))"
	.size	.L.str.194, 62

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"  -l              ASCII collation order when sorting indexes etc."
	.size	.L.str.195, 66

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"  -L              locale collation order when sorting indexes etc."
	.size	.L.str.196, 67

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"  -o file         output to file instead of stdout"
	.size	.L.str.197, 51

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"  -e file         error messages to file instead of stderr"
	.size	.L.str.198, 59

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"  -a              alternative error format:  file:line:col ..."
	.size	.L.str.199, 63

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"  -w              print total number of words in output"
	.size	.L.str.200, 56

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"  -i file         like @SysInclude { file }; not recommended"
	.size	.L.str.201, 61

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"  -I directory    add directory to include file search path"
	.size	.L.str.202, 60

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"  -C directory    add directory to LCM file search path"
	.size	.L.str.203, 56

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"  -F directory    add directory to font metrics file search path"
	.size	.L.str.204, 65

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"  -H directory    add directory to hyphenation file search path"
	.size	.L.str.205, 64

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"  -D directory    add directory to database file search path"
	.size	.L.str.206, 61

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"  --option{value} set option e.g. --'@InitialFont{Times Base 10p}'"
	.size	.L.str.207, 67

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"  -c file         use file.li instead of lout.li for crossrefs"
	.size	.L.str.208, 63

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"  -M              save memory (don't read in database indexes)"
	.size	.L.str.209, 63

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"  -x              initializing run, not for ordinary use"
	.size	.L.str.210, 57

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"  -u              print this usage message on stderr and exit"
	.size	.L.str.211, 62

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"  -V              print version and configuration information"
	.size	.L.str.212, 62

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"  -               a file name denoting standard input"
	.size	.L.str.213, 54

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"pa"
	.size	.L.str.214, 3

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"pb"
	.size	.L.str.215, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
