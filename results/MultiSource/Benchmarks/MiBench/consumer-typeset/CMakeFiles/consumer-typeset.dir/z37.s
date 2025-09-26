	.file	"z37.c"
	.text
	.globl	FontInit                        # -- Begin function FontInit
	.p2align	5
	.type	FontInit,@function
FontInit:                               # @FontInit
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(font_curr_page)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(font_curr_page)
	pcalau12i	$a0, %pc_hi20(font_count)
	st.w	$zero, $a0, %pc_lo12(font_count)
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s1, 17
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$fp, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB0_2
# %bb.1:
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_3
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_3:
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $fp, $a1
	pcalau12i	$a3, %pc_hi20(font_root)
	st.d	$a0, $a3, %pc_lo12(font_root)
	st.w	$a2, $s0, 0
	beqz	$a1, .LBB0_5
# %bb.4:
	alsl.d	$a0, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	b	.LBB0_6
.LBB0_5:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
.LBB0_6:
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a0, %pc_hi20(font_used)
	st.d	$a1, $a0, %pc_lo12(font_used)
	pcalau12i	$a0, %pc_hi20(font_seqnum)
	st.w	$zero, $a0, %pc_lo12(font_seqnum)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(finfo)
	st.d	$a0, $a1, %pc_lo12(finfo)
	pcalau12i	$a0, %pc_hi20(finfo_size)
	ori	$a1, $zero, 100
	st.w	$a1, $a0, %pc_lo12(finfo_size)
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s2, $a0, %got_pc_lo12(no_fpos)
	ld.d	$s1, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$fp, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 11
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s0
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s2, 0
	move	$s1, $a0
	pcalau12i	$s3, %pc_hi20(FontDefSym)
	st.d	$a0, $s3, %pc_lo12(FontDefSym)
	ori	$a0, $zero, 11
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 145
	ori	$a3, $zero, 100
	move	$a2, $s0
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s1
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 43
	ori	$a1, $a1, 1
	st.b	$a1, $a0, 43
	ld.h	$a1, $s1, 122
	addi.d	$a1, $a1, 1
	st.h	$a1, $s1, 122
	ld.b	$a1, $a0, 126
	ori	$a1, $a1, 64
	ld.d	$s0, $s3, %pc_lo12(FontDefSym)
	ld.d	$s1, $s2, 0
	st.b	$a1, $a0, 126
	pcalau12i	$a1, %pc_hi20(fd_tag)
	st.d	$a0, $a1, %pc_lo12(fd_tag)
	ori	$a0, $zero, 11
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 145
	ori	$a3, $zero, 100
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s0
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 43
	ori	$a1, $a1, 1
	st.b	$a1, $a0, 43
	ld.h	$a1, $s0, 122
	addi.d	$a1, $a1, 1
	st.h	$a1, $s0, 122
	ld.b	$a1, $a0, 126
	ori	$a1, $a1, 64
	ld.d	$s0, $s3, %pc_lo12(FontDefSym)
	ld.d	$s1, $s2, 0
	st.b	$a1, $a0, 126
	pcalau12i	$a1, %pc_hi20(fd_family)
	st.d	$a0, $a1, %pc_lo12(fd_family)
	ori	$a0, $zero, 11
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 145
	ori	$a3, $zero, 100
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s0
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 43
	ori	$a1, $a1, 1
	st.b	$a1, $a0, 43
	ld.h	$a1, $s0, 122
	addi.d	$a1, $a1, 1
	st.h	$a1, $s0, 122
	ld.b	$a1, $a0, 126
	ori	$a1, $a1, 64
	ld.d	$s0, $s3, %pc_lo12(FontDefSym)
	ld.d	$s1, $s2, 0
	st.b	$a1, $a0, 126
	pcalau12i	$a1, %pc_hi20(fd_face)
	st.d	$a0, $a1, %pc_lo12(fd_face)
	ori	$a0, $zero, 11
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 145
	ori	$a3, $zero, 100
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s0
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 43
	ori	$a1, $a1, 1
	st.b	$a1, $a0, 43
	ld.h	$a1, $s0, 122
	addi.d	$a1, $a1, 1
	st.h	$a1, $s0, 122
	ld.b	$a1, $a0, 126
	ori	$a1, $a1, 64
	ld.d	$s0, $s3, %pc_lo12(FontDefSym)
	ld.d	$s1, $s2, 0
	st.b	$a1, $a0, 126
	pcalau12i	$a1, %pc_hi20(fd_name)
	st.d	$a0, $a1, %pc_lo12(fd_name)
	ori	$a0, $zero, 11
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 145
	ori	$a3, $zero, 100
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s0
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 43
	ori	$a1, $a1, 1
	st.b	$a1, $a0, 43
	ld.h	$a1, $s0, 122
	addi.d	$a1, $a1, 1
	st.h	$a1, $s0, 122
	ld.b	$a1, $a0, 126
	ori	$a1, $a1, 64
	ld.d	$s0, $s3, %pc_lo12(FontDefSym)
	ld.d	$s1, $s2, 0
	st.b	$a1, $a0, 126
	pcalau12i	$a1, %pc_hi20(fd_metrics)
	st.d	$a0, $a1, %pc_lo12(fd_metrics)
	ori	$a0, $zero, 11
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 145
	ori	$a3, $zero, 100
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s0
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 43
	ori	$a1, $a1, 1
	ld.d	$s0, $s3, %pc_lo12(FontDefSym)
	ld.d	$s1, $s2, 0
	st.b	$a1, $a0, 43
	pcalau12i	$a1, %pc_hi20(fd_extra_metrics)
	st.d	$a0, $a1, %pc_lo12(fd_extra_metrics)
	ori	$a0, $zero, 11
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 145
	ori	$a3, $zero, 100
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s0
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 43
	ori	$a1, $a1, 1
	st.b	$a1, $a0, 43
	ld.h	$a1, $s0, 122
	addi.d	$a1, $a1, 1
	st.h	$a1, $s0, 122
	ld.b	$a1, $a0, 126
	ori	$a1, $a1, 64
	ld.d	$s0, $s3, %pc_lo12(FontDefSym)
	ld.d	$s1, $s2, 0
	st.b	$a1, $a0, 126
	pcalau12i	$a1, %pc_hi20(fd_mapping)
	st.d	$a0, $a1, %pc_lo12(fd_mapping)
	ori	$a0, $zero, 11
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 145
	ori	$a3, $zero, 100
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s0
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 43
	ori	$a1, $a1, 1
	st.b	$a1, $a0, 43
	pcalau12i	$a1, %pc_hi20(fd_recode)
	st.d	$a0, $a1, %pc_lo12(fd_recode)
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	FontInit, .Lfunc_end0-FontInit
                                        # -- End function
	.globl	FontChange                      # -- Begin function FontChange
	.p2align	5
	.type	FontChange,@function
FontChange:                             # @FontChange
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
	addi.d	$sp, $sp, -336
	move	$s7, $a0
	ld.wu	$a0, $a0, 12
	pcalau12i	$s8, %pc_hi20(font_count)
	ld.w	$a2, $s8, %pc_lo12(font_count)
	andi	$a0, $a0, 4095
	move	$s1, $a1
	bgeu	$a2, $a0, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_2:
	ld.bu	$a0, $s1, 32
	addi.d	$a1, $a0, -11
	ori	$a2, $zero, 2
	addi.d	$s3, $s1, 32
	bltu	$a1, $a2, .LBB1_7
# %bb.3:
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB1_449
# %bb.4:
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB1_32
# %bb.5:                                # %.preheader446
	ld.d	$s6, $s1, 8
	beq	$s6, $s1, .LBB1_449
# %bb.6:                                # %.preheader444.preheader
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	st.d	$s8, $sp, 240                   # 8-byte Folded Spill
	ori	$s5, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$s3, $a0, %pc_lo12(.L.str.13)
	move	$fp, $zero
	ori	$s8, $zero, 1
	b	.LBB1_39
.LBB1_7:
	addi.d	$s2, $s1, 64
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_34
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_35
# %bb.9:
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB1_449
# %bb.10:                               # %.thread393
	st.d	$s1, $sp, 264
	ori	$fp, $zero, 1
.LBB1_11:                               # %.lr.ph503.preheader
	move	$a6, $zero
	move	$a7, $zero
	addi.d	$a0, $sp, 280
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 43
	ori	$a3, $zero, 5
	ori	$a4, $zero, 45
	ori	$a5, $zero, 9
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               # %._crit_edge497
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.w	$fp, $fp, -1
	move	$a6, $t1
	move	$a7, $s0
	addi.w	$a6, $a6, 1
	bge	$a6, $fp, .LBB1_28
.LBB1_13:                               # %.lr.ph503
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
                                        #     Child Loop BB1_25 Depth 2
	slli.d	$t0, $a6, 3
	ldx.d	$s0, $t0, $a1
	ld.bu	$t0, $s0, 64
	beq	$t0, $a2, .LBB1_16
# %bb.14:                               # %.lr.ph503
                                        #   in Loop: Header=BB1_13 Depth=1
	beq	$t0, $a4, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=1
	addi.d	$t0, $t0, -48
	bltu	$a5, $t0, .LBB1_27
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_13 Depth=1
	addi.w	$t1, $a6, 1
	bge	$t1, $fp, .LBB1_12
# %bb.17:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.w	$t0, $fp, -2
	sub.w	$a7, $t0, $a6
	bltu	$a7, $a3, .LBB1_23
# %bb.18:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_13 Depth=1
	blt	$t0, $a6, .LBB1_23
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_13 Depth=1
	sub.d	$t0, $a6, $t1
	bstrpick.d	$t0, $t0, 60, 2
	slli.d	$t0, $t0, 2
	beqz	$t0, .LBB1_23
# %bb.20:                               # %vector.ph
                                        #   in Loop: Header=BB1_13 Depth=1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$t2, $a7, 1
	bstrpick.d	$t0, $t2, 32, 2
	slli.d	$t3, $t0, 2
	alsl.d	$a7, $t0, $t1, 2
	alsl.w	$t0, $t0, $a6, 2
	alsl.d	$t1, $t1, $a0, 3
	move	$t4, $t3
	.p2align	4, , 16
.LBB1_21:                               # %vector.body
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, -16
	vld	$vr1, $t1, 0
	alsl.d	$t5, $a6, $a1, 3
	slli.d	$t6, $a6, 3
	vstx	$vr0, $t6, $a1
	vst	$vr1, $t5, 16
	addi.d	$t1, $t1, 32
	addi.d	$t4, $t4, -4
	addi.w	$a6, $a6, 4
	bnez	$t4, .LBB1_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB1_13 Depth=1
	move	$t1, $fp
	beq	$t2, $t3, .LBB1_12
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               #   in Loop: Header=BB1_13 Depth=1
	move	$a7, $t1
	move	$t0, $a6
.LBB1_24:                               # %.lr.ph.preheader795
                                        #   in Loop: Header=BB1_13 Depth=1
	alsl.d	$a6, $a7, $a1, 3
	.p2align	4, , 16
.LBB1_25:                               # %.lr.ph
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a6, 0
	addi.w	$t0, $t0, 0
	slli.d	$t0, $t0, 3
	stx.d	$t1, $t0, $a1
	move	$t0, $a7
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	bne	$fp, $a7, .LBB1_25
# %bb.26:                               #   in Loop: Header=BB1_13 Depth=1
	move	$t1, $fp
	b	.LBB1_12
.LBB1_27:                               #   in Loop: Header=BB1_13 Depth=1
	move	$s0, $a7
	addi.w	$a6, $a6, 1
	blt	$a6, $fp, .LBB1_13
.LBB1_28:                               # %._crit_edge504
	beqz	$fp, .LBB1_59
.LBB1_29:                               # %._crit_edge504
	ori	$a0, $zero, 2
	beq	$fp, $a0, .LBB1_53
# %bb.30:                               # %._crit_edge504
	ori	$a0, $zero, 1
	bne	$fp, $a0, .LBB1_54
# %bb.31:
	ld.d	$s6, $sp, 264
	b	.LBB1_60
.LBB1_32:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 42
.LBB1_33:
	ori	$a3, $zero, 2
	move	$a4, $s3
	b	.LBB1_52
.LBB1_34:
	ld.b	$a0, $s7, 0
	ori	$a0, $a0, 8
	st.b	$a0, $s7, 0
	b	.LBB1_449
.LBB1_35:
	ld.bu	$a0, $s7, 0
	andi	$a0, $a0, 247
	st.b	$a0, $s7, 0
	b	.LBB1_449
.LBB1_36:                               #   in Loop: Header=BB1_39 Depth=1
	ld.b	$a0, $s7, 0
	ori	$a0, $a0, 8
.LBB1_37:                               # %.loopexit445
                                        #   in Loop: Header=BB1_39 Depth=1
	st.b	$a0, $s7, 0
.LBB1_38:                               # %.loopexit445
                                        #   in Loop: Header=BB1_39 Depth=1
	ld.d	$s6, $s6, 8
	beq	$s6, $s1, .LBB1_55
.LBB1_39:                               # %.preheader444
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_40 Depth 2
	move	$s0, $s6
	.p2align	4, , 16
.LBB1_40:                               #   Parent Loop BB1_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_40
# %bb.41:                               #   in Loop: Header=BB1_39 Depth=1
	addi.d	$a1, $a0, -11
	bltu	$a1, $s5, .LBB1_44
# %bb.42:                               #   in Loop: Header=BB1_39 Depth=1
	beq	$a0, $s8, .LBB1_38
# %bb.43:                               #   in Loop: Header=BB1_39 Depth=1
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB1_38
	b	.LBB1_50
	.p2align	4, , 16
.LBB1_44:                               #   in Loop: Header=BB1_39 Depth=1
	addi.d	$s4, $s0, 64
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_36
# %bb.45:                               #   in Loop: Header=BB1_39 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_49
# %bb.46:                               #   in Loop: Header=BB1_39 Depth=1
	ld.bu	$a0, $s4, 0
	beqz	$a0, .LBB1_38
# %bb.47:                               #   in Loop: Header=BB1_39 Depth=1
	ori	$a0, $zero, 3
	bge	$fp, $a0, .LBB1_207
# %bb.48:                               #   in Loop: Header=BB1_39 Depth=1
	slli.d	$a0, $fp, 3
	addi.w	$fp, $fp, 1
	addi.d	$a1, $sp, 264
	stx.d	$s0, $a0, $a1
	b	.LBB1_38
.LBB1_49:                               #   in Loop: Header=BB1_39 Depth=1
	ld.bu	$a0, $s7, 0
	andi	$a0, $a0, 247
	b	.LBB1_37
.LBB1_50:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 41
.LBB1_51:
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
.LBB1_52:
	addi.d	$sp, $sp, 336
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
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.LBB1_53:
	ld.d	$fp, $sp, 264
	ld.d	$s6, $sp, 272
	b	.LBB1_61
.LBB1_54:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 43
	b	.LBB1_33
.LBB1_55:                               # %._crit_edge
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	beqz	$fp, .LBB1_449
# %bb.56:
	ori	$a0, $zero, 4
	bltu	$fp, $a0, .LBB1_11
# %bb.57:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	bgtz	$fp, .LBB1_11
# %bb.58:
	move	$s0, $zero
	bnez	$fp, .LBB1_29
.LBB1_59:
	move	$s6, $zero
.LBB1_60:
	move	$fp, $zero
.LBB1_61:
	ld.hu	$a0, $s7, 12
	slli.d	$a0, $a0, 52
	pcalau12i	$s5, %pc_hi20(font_root)
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	st.d	$s0, $sp, 224                   # 8-byte Folded Spill
	bnez	$a0, .LBB1_66
# %bb.62:
	beqz	$s0, .LBB1_65
# %bb.63:
	beqz	$fp, .LBB1_65
# %bb.64:
	bnez	$s6, .LBB1_67
.LBB1_65:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 44
	ori	$a3, $zero, 1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_66:
	beqz	$fp, .LBB1_74
.LBB1_67:                               # %.thread399
	ld.d	$s1, $s5, %pc_lo12(font_root)
	addi.d	$s2, $fp, 64
	move	$s3, $s1
	.p2align	4, , 16
.LBB1_68:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_70 Depth 2
	ld.d	$s3, $s3, 8
	beq	$s3, $s1, .LBB1_72
# %bb.69:                               # %.preheader441.preheader
                                        #   in Loop: Header=BB1_68 Depth=1
	move	$s0, $s3
	.p2align	4, , 16
.LBB1_70:                               # %.preheader441
                                        #   Parent Loop BB1_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_70
# %bb.71:                               #   in Loop: Header=BB1_68 Depth=1
	addi.d	$a1, $s0, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_68
	b	.LBB1_85
.LBB1_72:
	st.d	$s8, $sp, 240                   # 8-byte Folded Spill
	bnez	$s6, .LBB1_98
# %bb.73:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_98
.LBB1_74:
	ld.wu	$a1, $s7, 12
	pcalau12i	$fp, %pc_hi20(finfo)
	ld.d	$a0, $fp, %pc_lo12(finfo)
	andi	$a1, $a1, 4095
	alsl.d	$a2, $a1, $a1, 1
	slli.d	$a2, $a2, 5
	add.d	$a2, $a0, $a2
	ld.d	$a2, $a2, 40
	ld.d	$a3, $a2, 24
	bne	$a3, $a2, .LBB1_76
# %bb.75:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a5, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s7, 12
	ld.d	$a0, $fp, %pc_lo12(finfo)
	andi	$a1, $a1, 4095
.LBB1_76:
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 40
	ld.d	$fp, $a0, 24
	.p2align	4, , 16
.LBB1_77:                               # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB1_77
# %bb.78:
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB1_80
# %bb.79:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a5, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_80:                               # %.loopexit440
	ld.d	$s0, $fp, 24
	bne	$s0, $fp, .LBB1_82
# %bb.81:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 24
	.p2align	4, , 16
.LBB1_82:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_82
# %bb.83:
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB1_85
# %bb.84:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_85:                               # %.thread401
	beqz	$s6, .LBB1_91
# %bb.86:                               # %.preheader439
	addi.d	$s3, $s6, 64
	move	$fp, $s0
	.p2align	4, , 16
.LBB1_87:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_89 Depth 2
	ld.d	$fp, $fp, 8
	beq	$fp, $s0, .LBB1_97
# %bb.88:                               # %.preheader438.preheader
                                        #   in Loop: Header=BB1_87 Depth=1
	move	$s2, $fp
	.p2align	4, , 16
.LBB1_89:                               # %.preheader438
                                        #   Parent Loop BB1_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_89
# %bb.90:                               #   in Loop: Header=BB1_87 Depth=1
	addi.d	$a1, $s2, 64
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_87
	b	.LBB1_370
.LBB1_91:
	ld.wu	$a0, $s7, 12
	pcalau12i	$a1, %pc_hi20(finfo)
	ld.d	$a1, $a1, %pc_lo12(finfo)
	andi	$a0, $a0, 4095
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 40
	ld.d	$s2, $a0, 24
	.p2align	4, , 16
.LBB1_92:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_92
# %bb.93:
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB1_95
# %bb.94:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_95:                               # %.loopexit435
	ld.d	$a0, $s2, 24
	bne	$a0, $s2, .LBB1_370
# %bb.96:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_370
.LBB1_97:
	st.d	$s8, $sp, 240                   # 8-byte Folded Spill
	move	$fp, $s0
.LBB1_98:                               # %.thread634
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(FontDefSym)
	ld.d	$a0, $s0, %pc_lo12(FontDefSym)
	ld.d	$s1, $a0, 88
	addi.d	$s3, $fp, 64
	addi.d	$s8, $s6, 64
	bnez	$s1, .LBB1_100
# %bb.99:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a2, $a0, %pc_lo12(.L.str.73)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 10
	ori	$a3, $zero, 1
	move	$a5, $s3
	move	$a6, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_100:
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	addi.d	$a0, $sp, 1456
	move	$a2, $s3
	move	$a3, $s8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, 24
	addi.d	$s2, $sp, 1336
	.p2align	4, , 16
.LBB1_101:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_103 Depth 2
	ld.d	$fp, $fp, 24
	beq	$fp, $s1, .LBB1_170
# %bb.102:                              # %.preheader521.i.preheader
                                        #   in Loop: Header=BB1_101 Depth=1
	move	$a0, $fp
	.p2align	4, , 16
.LBB1_103:                              # %.preheader521.i
                                        #   Parent Loop BB1_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_103
# %bb.104:                              #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a2, $s0, %pc_lo12(FontDefSym)
	addi.d	$a3, $sp, 1456
	addi.d	$a4, $sp, 1356
	addi.d	$a5, $sp, 1354
	addi.d	$a6, $sp, 1344
	addi.d	$a7, $sp, 1332
	st.d	$s2, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(DbRetrieve)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_101
# %bb.105:
	st.d	$s3, $sp, 216                   # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SwitchScope)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 1354
	ld.d	$a1, $sp, 1344
	ld.w	$a2, $sp, 1332
	pcaddu18i	$ra, %call36(ReadFromFile)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(UnSwitchScope)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB1_107
# %bb.106:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 11
	addi.d	$a6, $sp, 1456
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_107:
	st.d	$s6, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s3, $s7, 8
	beq	$s3, $s7, .LBB1_159
# %bb.108:                              # %.preheader519.lr.ph.i
	addi.d	$a0, $s7, 32
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$s1, $zero, 10
	pcalau12i	$s6, %pc_hi20(fd_tag)
	pcalau12i	$a0, %pc_hi20(fd_family)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$s4, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	move	$s0, $zero
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	move	$s5, $zero
	b	.LBB1_111
.LBB1_109:                              #   in Loop: Header=BB1_111 Depth=1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB1_110:                              #   in Loop: Header=BB1_111 Depth=1
	ld.d	$s3, $s3, 8
	beq	$s3, $s7, .LBB1_160
.LBB1_111:                              # %.preheader519.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_112 Depth 2
                                        #     Child Loop BB1_154 Depth 2
                                        #     Child Loop BB1_150 Depth 2
                                        #     Child Loop BB1_146 Depth 2
                                        #     Child Loop BB1_142 Depth 2
                                        #     Child Loop BB1_138 Depth 2
                                        #     Child Loop BB1_130 Depth 2
                                        #     Child Loop BB1_125 Depth 2
	move	$fp, $s3
	.p2align	4, , 16
.LBB1_112:                              #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB1_112
# %bb.113:                              #   in Loop: Header=BB1_111 Depth=1
	beq	$a0, $s1, .LBB1_115
# %bb.114:                              #   in Loop: Header=BB1_111 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a5, $a0, %pc_lo12(.L.str.76)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_115:                              # %.loopexit520.i
                                        #   in Loop: Header=BB1_111 Depth=1
	ld.d	$a0, $fp, 80
	ld.d	$a1, $s6, %pc_lo12(fd_tag)
	beq	$a0, $a1, .LBB1_110
# %bb.116:                              #   in Loop: Header=BB1_111 Depth=1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(fd_family)
	beq	$a0, $a1, .LBB1_124
# %bb.117:                              #   in Loop: Header=BB1_111 Depth=1
	pcalau12i	$a1, %pc_hi20(fd_face)
	ld.d	$a1, $a1, %pc_lo12(fd_face)
	beq	$a0, $a1, .LBB1_129
# %bb.118:                              #   in Loop: Header=BB1_111 Depth=1
	pcalau12i	$a1, %pc_hi20(fd_name)
	ld.d	$a1, $a1, %pc_lo12(fd_name)
	beq	$a0, $a1, .LBB1_137
# %bb.119:                              #   in Loop: Header=BB1_111 Depth=1
	pcalau12i	$a1, %pc_hi20(fd_metrics)
	ld.d	$a1, $a1, %pc_lo12(fd_metrics)
	beq	$a0, $a1, .LBB1_141
# %bb.120:                              #   in Loop: Header=BB1_111 Depth=1
	pcalau12i	$a1, %pc_hi20(fd_extra_metrics)
	ld.d	$a1, $a1, %pc_lo12(fd_extra_metrics)
	beq	$a0, $a1, .LBB1_145
# %bb.121:                              #   in Loop: Header=BB1_111 Depth=1
	pcalau12i	$a1, %pc_hi20(fd_mapping)
	ld.d	$a1, $a1, %pc_lo12(fd_mapping)
	beq	$a0, $a1, .LBB1_149
# %bb.122:                              #   in Loop: Header=BB1_111 Depth=1
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(fd_recode)
	ld.d	$a1, $s1, %pc_lo12(fd_recode)
	beq	$a0, $a1, .LBB1_153
# %bb.123:                              #   in Loop: Header=BB1_111 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a5, $a0, %pc_lo12(.L.str.84)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	b	.LBB1_157
.LBB1_124:                              #   in Loop: Header=BB1_111 Depth=1
	move	$s1, $s5
	ld.d	$s4, $fp, 8
	.p2align	4, , 16
.LBB1_125:                              #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_125
# %bb.126:                              #   in Loop: Header=BB1_111 Depth=1
	addi.d	$a0, $a0, -11
	addi.d	$s5, $s4, 64
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_128
# %bb.127:                              #   in Loop: Header=BB1_111 Depth=1
	move	$a0, $s5
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_135
.LBB1_128:                              # %.loopexit517.i
                                        #   in Loop: Header=BB1_111 Depth=1
	ori	$a0, $zero, 37
	ori	$a1, $zero, 12
	ori	$a3, $zero, 1
	addi.d	$a7, $sp, 1456
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	move	$a5, $s5
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	b	.LBB1_134
.LBB1_129:                              #   in Loop: Header=BB1_111 Depth=1
	move	$s1, $s5
	ld.d	$s2, $fp, 8
	.p2align	4, , 16
.LBB1_130:                              #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_130
# %bb.131:                              #   in Loop: Header=BB1_111 Depth=1
	addi.d	$a0, $a0, -11
	addi.d	$s5, $s2, 64
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_133
# %bb.132:                              #   in Loop: Header=BB1_111 Depth=1
	move	$a0, $s5
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_135
.LBB1_133:                              # %.loopexit518.i
                                        #   in Loop: Header=BB1_111 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a2, $a0, %pc_lo12(.L.str.78)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a6, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 13
	ori	$a3, $zero, 1
	addi.d	$a7, $sp, 1456
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	move	$a5, $s5
.LBB1_134:                              #   in Loop: Header=BB1_111 Depth=1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_135:                              #   in Loop: Header=BB1_111 Depth=1
	move	$s5, $s1
.LBB1_136:                              #   in Loop: Header=BB1_111 Depth=1
	ori	$s1, $zero, 10
	b	.LBB1_110
.LBB1_137:                              #   in Loop: Header=BB1_111 Depth=1
	ld.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB1_138:                              #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_138
# %bb.139:                              #   in Loop: Header=BB1_111 Depth=1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 2
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	bltu	$a1, $a2, .LBB1_110
# %bb.140:                              #   in Loop: Header=BB1_111 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a2, $a0, %pc_lo12(.L.str.79)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 14
	b	.LBB1_109
.LBB1_141:                              #   in Loop: Header=BB1_111 Depth=1
	ld.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB1_142:                              #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_142
# %bb.143:                              #   in Loop: Header=BB1_111 Depth=1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	bltu	$a1, $a2, .LBB1_110
# %bb.144:                              #   in Loop: Header=BB1_111 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a2, $a0, %pc_lo12(.L.str.80)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 15
	b	.LBB1_109
.LBB1_145:                              #   in Loop: Header=BB1_111 Depth=1
	ld.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB1_146:                              #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_146
# %bb.147:                              #   in Loop: Header=BB1_111 Depth=1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB1_110
# %bb.148:                              #   in Loop: Header=BB1_111 Depth=1
	addi.d	$a4, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a2, $a0, %pc_lo12(.L.str.81)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 16
	b	.LBB1_109
.LBB1_149:                              #   in Loop: Header=BB1_111 Depth=1
	ld.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB1_150:                              #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_150
# %bb.151:                              #   in Loop: Header=BB1_111 Depth=1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	bltu	$a1, $a2, .LBB1_110
# %bb.152:                              #   in Loop: Header=BB1_111 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a2, $a0, %pc_lo12(.L.str.82)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 17
	b	.LBB1_109
.LBB1_153:                              #   in Loop: Header=BB1_111 Depth=1
	ld.d	$a0, $fp, 8
.LBB1_154:                              #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_154
# %bb.155:                              #   in Loop: Header=BB1_111 Depth=1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB1_158
# %bb.156:                              #   in Loop: Header=BB1_111 Depth=1
	ld.d	$a0, $s1, %pc_lo12(fd_recode)
	addi.d	$s1, $s5, 32
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a2, $a0, %pc_lo12(.L.str.83)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 18
	ori	$a3, $zero, 1
	move	$a4, $s1
.LBB1_157:                              #   in Loop: Header=BB1_111 Depth=1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_158:                              #   in Loop: Header=BB1_111 Depth=1
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	b	.LBB1_136
.LBB1_159:
	move	$s5, $zero
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	move	$s0, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	move	$s2, $zero
	move	$s4, $zero
.LBB1_160:                              # %._crit_edge.i
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	beqz	$s4, .LBB1_170
# %bb.161:                              # %._crit_edge.i
	beqz	$s2, .LBB1_170
# %bb.162:                              # %._crit_edge.i
	beqz	$a0, .LBB1_170
# %bb.163:                              # %._crit_edge.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_170
# %bb.164:                              # %._crit_edge.i
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_170
# %bb.165:
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s0, $s5, %pc_lo12(font_root)
	addi.d	$s3, $s4, 64
	move	$s1, $s0
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
.LBB1_166:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_168 Depth 2
	ld.d	$s1, $s1, 8
	beq	$s1, $s0, .LBB1_177
# %bb.167:                              # %.preheader515.i.preheader
                                        #   in Loop: Header=BB1_166 Depth=1
	move	$fp, $s1
	.p2align	4, , 16
.LBB1_168:                              # %.preheader515.i
                                        #   Parent Loop BB1_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB1_168
# %bb.169:                              #   in Loop: Header=BB1_166 Depth=1
	addi.d	$a0, $fp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_166
	b	.LBB1_183
.LBB1_170:                              # %FontRead.exit.thread
	ld.d	$fp, $s5, %pc_lo12(font_root)
	move	$s0, $fp
	.p2align	4, , 16
.LBB1_171:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_173 Depth 2
	ld.d	$s0, $s0, 8
	beq	$s0, $fp, .LBB1_176
# %bb.172:                              # %.preheader436.preheader
                                        #   in Loop: Header=BB1_171 Depth=1
	move	$a0, $s0
	.p2align	4, , 16
.LBB1_173:                              # %.preheader436
                                        #   Parent Loop BB1_171 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_173
# %bb.174:                              #   in Loop: Header=BB1_171 Depth=1
	addi.d	$a0, $a0, 64
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_171
# %bb.175:
	addi.d	$a4, $s6, 32
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a2, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 45
	ori	$a3, $zero, 2
	move	$a5, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_449
.LBB1_176:
	addi.d	$a4, $s6, 32
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 46
	ori	$a3, $zero, 2
	move	$a5, $s3
	move	$a6, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_449
.LBB1_177:
	ld.d	$a1, $s4, 24
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a2, $a0, %got_pc_lo12(xx_link)
	st.d	$a1, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a1, 8
	st.d	$a1, $a0, 0
	beq	$a3, $a1, .LBB1_179
# %bb.178:
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a4, $a3, 0
	st.d	$a1, $a4, 8
	st.d	$a3, $a3, 0
	ld.d	$a1, $a2, 0
	ld.d	$s0, $s5, %pc_lo12(font_root)
	st.d	$a3, $a3, 8
.LBB1_179:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	st.d	$s0, $a0, 0
	beqz	$s0, .LBB1_182
# %bb.180:
	beqz	$a1, .LBB1_182
# %bb.181:
	ld.d	$a3, $s0, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a4, 0
	st.d	$a0, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a0, $a2, 0
	st.d	$a0, $a4, 8
.LBB1_182:                              # %.loopexit516.i
	move	$fp, $s4
.LBB1_183:                              # %.loopexit516.i
	addi.d	$s3, $s2, 64
	move	$s1, $fp
.LBB1_184:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_186 Depth 2
	ld.d	$s1, $s1, 8
	beq	$s1, $fp, .LBB1_189
# %bb.185:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB1_184 Depth=1
	move	$s0, $s1
	.p2align	4, , 16
.LBB1_186:                              # %.preheader.i
                                        #   Parent Loop BB1_184 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_186
# %bb.187:                              #   in Loop: Header=BB1_184 Depth=1
	addi.d	$a0, $s0, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_184
# %bb.188:                              # %FontRead.exit.thread422
	addi.d	$a0, $s0, 32
	addi.d	$s2, $s2, 32
	addi.d	$s4, $fp, 64
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a2, $a0, %pc_lo12(.L.str.85)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 19
	ori	$a3, $zero, 2
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$s2, $s0
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	b	.LBB1_370
.LBB1_189:
	ld.d	$a0, $s2, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s0, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s3, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $s3, 0
	beq	$a1, $a0, .LBB1_191
# %bb.190:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a1, 8
.LBB1_191:
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s4, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s4, 0
	st.d	$fp, $s3, 0
	beqz	$fp, .LBB1_194
# %bb.192:
	beqz	$a0, .LBB1_194
# %bb.193:
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a2, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a0, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $a2, 8
.LBB1_194:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s6, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	beqz	$a0, .LBB1_196
# %bb.195:
	st.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_197
.LBB1_196:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_197:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s4, 0
	st.d	$s2, $s3, 0
	ld.d	$a1, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$fp, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	st.d	$a3, $s3, 0
	beqz	$a0, .LBB1_199
# %bb.198:
	ld.d	$a1, $a3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $a3, 16
	st.d	$a3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_199:
	ld.bu	$a2, $s6, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_201
# %bb.200:
	st.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_202
.LBB1_201:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_202:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s4, 0
	st.d	$s2, $s3, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	st.d	$s5, $s3, 0
	beqz	$a0, .LBB1_204
# %bb.203:
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_204:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_211
# %bb.205:
	ld.bu	$a2, $s6, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_208
# %bb.206:
	st.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_209
.LBB1_207:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 40
	b	.LBB1_51
.LBB1_208:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_209:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s4, 0
	st.d	$s5, $s3, 0
	ld.d	$a1, $s5, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $s3, 0
	beqz	$a0, .LBB1_211
# %bb.210:
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $a3, 16
	st.d	$a3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_211:
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	beqz	$s5, .LBB1_217
# %bb.212:                              # %sub_0.i
	ld.bu	$a0, $s5, 64
	ori	$a1, $zero, 78
	bne	$a0, $a1, .LBB1_215
# %bb.213:                              # %sub_1.i
	ld.bu	$a0, $s5, 65
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB1_215
# %bb.214:                              # %.tail.i
	ld.bu	$a0, $s5, 66
	beqz	$a0, .LBB1_450
.LBB1_215:                              # %.tail.thread.i
	addi.d	$a0, $s5, 64
	pcalau12i	$a1, %pc_hi20(.L.str.87)
	addi.d	$a1, $a1, %pc_lo12(.L.str.87)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_217
# %bb.216:
	addi.d	$a4, $s5, 32
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a2, $a0, %pc_lo12(.L.str.88)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 20
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_219
.LBB1_217:
	ld.b	$a0, $s2, 60
	ori	$a0, $a0, 128
	st.b	$a0, $s2, 60
	ori	$a1, $zero, 1
	move	$a0, $s7
.LBB1_218:
	pcaddu18i	$ra, %call36(MapLoad)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s2, 60
	srli.d	$a1, $a1, 7
	bstrins.d	$a0, $a1, 63, 7
	st.b	$a0, $s2, 60
.LBB1_219:
	ld.w	$a1, $s8, %pc_lo12(font_count)
	pcalau12i	$s7, %pc_hi20(finfo_size)
	ld.w	$a0, $s7, %pc_lo12(finfo_size)
	st.h	$zero, $s2, 42
	addi.w	$a1, $a1, 1
	st.w	$a1, $s8, %pc_lo12(font_count)
	pcalau12i	$a2, %pc_hi20(finfo)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB1_224
# %bb.220:
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1
	bltu	$a1, $a2, .LBB1_222
# %bb.221:
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a2, $a0, %pc_lo12(.L.str.89)
	lu12i.w	$a5, 1
	ori	$a0, $zero, 37
	ori	$a1, $zero, 21
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(finfo_size)
.LBB1_222:
	slli.w	$a1, $a0, 1
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s5, %pc_lo12(finfo)
	st.w	$a1, $s7, %pc_lo12(finfo_size)
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(finfo)
	bnez	$a0, .LBB1_224
# %bb.223:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a2, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 22
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_224:
	pcalau12i	$a1, %pc_hi20(font_seqnum)
	ld.w	$a0, $a1, %pc_lo12(font_seqnum)
	addi.w	$a0, $a0, 1
	st.w	$a0, $a1, %pc_lo12(font_seqnum)
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s7, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWordTwo)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s6, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s1, $a1
	move	$s5, $a0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB1_226
# %bb.225:
	st.d	$a1, $s3, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a0, $a2, 0
	b	.LBB1_227
.LBB1_226:
	ld.d	$a1, $s7, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB1_227:
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	st.d	$a1, $s4, 0
	st.d	$s2, $s3, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	st.d	$s5, $s3, 0
	beqz	$s5, .LBB1_230
# %bb.228:
	beqz	$a0, .LBB1_230
# %bb.229:
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_230:
	ld.hu	$a0, $s8, %pc_lo12(font_count)
	ld.hu	$a1, $s5, 40
	srli.d	$a1, $a1, 12
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 12
	st.h	$a2, $s5, 40
	pcalau12i	$a1, %got_pc_hi20(BackEnd)
	ld.d	$a1, $a1, %got_pc_lo12(BackEnd)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 40
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %got_pc_hi20(PlainCharHeight)
	ld.d	$a2, $a2, %got_pc_lo12(PlainCharHeight)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a2, $a2, 0
	ori	$a3, $zero, 1000
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	st.w	$a1, $s5, 48
	ld.bu	$a1, $s2, 60
	ld.bu	$a2, $s5, 60
	srli.d	$a1, $a1, 7
	bstrins.d	$a2, $a1, 63, 7
	st.b	$a2, $s5, 60
	ld.bu	$a2, $s2, 60
	bstrins.d	$a2, $a1, 63, 7
	st.b	$a2, $s5, 60
	ld.hu	$a1, $s2, 40
	srli.d	$a1, $a1, 12
	bstrins.d	$a0, $a1, 63, 12
	st.h	$a0, $s2, 40
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 64
	addi.d	$a2, $a1, 32
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	ori	$a3, $zero, 5
	ori	$a4, $zero, 5
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(OpenFile)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_232
# %bb.231:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a2, $a0, %pc_lo12(.L.str.91)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 23
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_232:
	addi.d	$a0, $sp, 820
	ori	$a1, $zero, 512
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_235
# %bb.233:
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 308
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_235
# %bb.234:
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 17
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_236
.LBB1_235:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a2, $a0, %pc_lo12(.L.str.94)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 24
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_236:
	ori	$a0, $zero, 2560
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bnez	$a0, .LBB1_238
# %bb.237:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a2, $a0, %pc_lo12(.L.str.95)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 25
	ori	$a3, $zero, 1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_238:
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_240
# %bb.239:
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a2, $a0, %pc_lo12(.L.str.95)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 25
	ori	$a3, $zero, 1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB1_240:
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 258
	st.w	$a0, $sp, 300
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	bnez	$a0, .LBB1_242
# %bb.241:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a2, $a0, %pc_lo12(.L.str.95)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 25
	ori	$a3, $zero, 1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_242:
	ori	$a0, $zero, 1536
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	bnez	$a0, .LBB1_244
# %bb.243:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a2, $a0, %pc_lo12(.L.str.95)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 25
	ori	$a3, $zero, 1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_244:
	ori	$a2, $zero, 512
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 512
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bnez	$a0, .LBB1_246
# %bb.245:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a2, $a0, %pc_lo12(.L.str.95)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 25
	ori	$a3, $zero, 1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_246:
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.w	$fp, $sp, 304
	addi.d	$a0, $sp, 820
	ori	$a1, $zero, 512
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_320
# %bb.247:                              # %.lr.ph612.i
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$s3, $a0, %pc_lo12(.L.str.96)
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$s5, $a0, %pc_lo12(.L.str.92)
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	lu12i.w	$a0, 431700
	ori	$a0, $a0, 2136
	lu32i.d	$a0, 288871
	lu52i.d	$a0, $a0, 7
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_251
.LBB1_248:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_317
.LBB1_249:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 250
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	addi.d	$a4, $sp, 300
	addi.d	$a7, $sp, 304
	st.d	$s6, $sp, 0
	move	$a0, $s2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	move	$a5, $s1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ReadCharMetrics)
	jirl	$ra, $ra, 0
.LBB1_250:                              #   in Loop: Header=BB1_251 Depth=1
	addi.d	$a0, $sp, 820
	ori	$a1, $zero, 512
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_321
.LBB1_251:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_288 Depth 2
                                        #       Child Loop BB1_302 Depth 3
                                        #       Child Loop BB1_310 Depth 3
                                        #     Child Loop BB1_261 Depth 2
	ld.bu	$a0, $sp, 820
	ori	$a1, $zero, 69
	bne	$a0, $a1, .LBB1_253
# %bb.252:                              #   in Loop: Header=BB1_251 Depth=1
	addi.d	$a0, $sp, 820
	ori	$a2, $zero, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_322
.LBB1_253:                              # %.critedge484.i
                                        #   in Loop: Header=BB1_251 Depth=1
	ld.w	$a0, $sp, 304
	addi.w	$s4, $a0, 1
	st.w	$s4, $sp, 304
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 308
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 308
	addi.d	$a0, $a0, -70
	ori	$a1, $zero, 18
	bltu	$a1, $a0, .LBB1_250
# %bb.254:                              # %.critedge484.i
                                        #   in Loop: Header=BB1_251 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_255:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a1, $a0, %pc_lo12(.L.str.106)
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_250
# %bb.256:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_258
# %bb.257:                              #   in Loop: Header=BB1_251 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a2, $a0, %pc_lo12(.L.str.107)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 29
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	move	$a6, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_258:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 308
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 308
	bnez	$a0, .LBB1_260
# %bb.259:                              #   in Loop: Header=BB1_251 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 304
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a2, $a0, %pc_lo12(.L.str.109)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 30
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_260:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$a0, $s2, 8
.LBB1_261:                              #   Parent Loop BB1_251 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_261
# %bb.262:                              #   in Loop: Header=BB1_251 Depth=1
	addi.d	$s4, $a0, 64
	addi.d	$a0, $sp, 308
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	beqz	$a0, .LBB1_250
# %bb.263:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a2, $a0, %pc_lo12(.L.str.110)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a6, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 31
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 308
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	move	$a7, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_250
.LBB1_264:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 17
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_248
# %bb.265:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 40
	beqz	$a0, .LBB1_250
# %bb.266:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %got_pc_hi20(Kern)
	ld.d	$a0, $a0, %got_pc_lo12(Kern)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_250
# %bb.267:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 15
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_250
# %bb.268:                              #   in Loop: Header=BB1_251 Depth=1
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 1568
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_270
# %bb.269:                              #   in Loop: Header=BB1_251 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a2, $a0, %pc_lo12(.L.str.118)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 33
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	move	$a6, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_270:                              #   in Loop: Header=BB1_251 Depth=1
	ld.w	$a0, $sp, 1568
	slli.d	$s4, $a0, 1
	addi.w	$s7, $s4, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 820
	ori	$a1, $zero, 512
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	addi.d	$a1, $sp, 820
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB1_319
# %bb.271:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_251 Depth=1
	move	$s7, $zero
	addi.d	$a0, $s0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	b	.LBB1_288
.LBB1_272:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a1, $a0, %pc_lo12(.L.str.111)
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_250
# %bb.273:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a1, $a0, %pc_lo12(.L.str.112)
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 308
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB1_250
.LBB1_274:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_283
# %bb.275:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a1, $a0, %pc_lo12(.L.str.100)
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_250
# %bb.276:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_278
# %bb.277:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a2, $a0, %pc_lo12(.L.str.101)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 27
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_278:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a1, $a0, %pc_lo12(.L.str.102)
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 288
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 288
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB1_250
.LBB1_279:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$a0, $sp, 308
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB1_250
# %bb.280:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_282
# %bb.281:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a2, $a0, %pc_lo12(.L.str.104)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 28
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_282:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 296
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 296
	vldi	$vr1, -1184
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	b	.LBB1_250
.LBB1_283:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_285
# %bb.284:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a2, $a0, %pc_lo12(.L.str.98)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 26
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_285:                              #   in Loop: Header=BB1_251 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a1, $a0, %pc_lo12(.L.str.99)
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 292
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 292
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$fp, $fa0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB1_250
.LBB1_286:                              #   in Loop: Header=BB1_288 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 304
	move	$a7, $a0
	st.d	$a1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a2, $a0, %pc_lo12(.L.str.123)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 35
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 1768
	addi.d	$a6, $sp, 1668
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_287:                              # %.backedge.i
                                        #   in Loop: Header=BB1_288 Depth=2
	addi.d	$a0, $sp, 820
	ori	$a1, $zero, 512
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 820
	bne	$a0, $a1, .LBB1_318
.LBB1_288:                              #   Parent Loop BB1_251 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_302 Depth 3
                                        #       Child Loop BB1_310 Depth 3
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	addi.d	$a0, $sp, 820
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_318
# %bb.289:                              #   in Loop: Header=BB1_288 Depth=2
	ld.w	$a0, $sp, 304
	addi.w	$s4, $a0, 1
	st.w	$s4, $sp, 304
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a1, $a0, %pc_lo12(.L.str.120)
	addi.d	$a0, $sp, 820
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_316
# %bb.290:                              #   in Loop: Header=BB1_288 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 1768
	addi.d	$a3, $sp, 1668
	addi.d	$a4, $sp, 1564
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB1_292
# %bb.291:                              #   in Loop: Header=BB1_288 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a2, $a0, %pc_lo12(.L.str.122)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 34
	ori	$a3, $zero, 1
	addi.d	$a7, $sp, 820
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	move	$a6, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_292:                              #   in Loop: Header=BB1_288 Depth=2
	fld.s	$fa0, $sp, 1564
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$s0, $fa0
	beqz	$s0, .LBB1_287
# %bb.293:                              #   in Loop: Header=BB1_288 Depth=2
	ld.bu	$a0, $s2, 60
	andi	$a1, $a0, 127
	addi.d	$a0, $sp, 1768
	pcaddu18i	$ra, %call36(MapCharEncoding)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_287
# %bb.294:                              #   in Loop: Header=BB1_288 Depth=2
	move	$s4, $a0
	ld.bu	$a0, $s2, 60
	andi	$a1, $a0, 127
	addi.d	$a0, $sp, 1668
	pcaddu18i	$ra, %call36(MapCharEncoding)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_287
# %bb.295:                              #   in Loop: Header=BB1_288 Depth=2
	beq	$s4, $s7, .LBB1_298
# %bb.296:                              #   in Loop: Header=BB1_288 Depth=2
	slli.d	$a1, $s4, 1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.hu	$a1, $a2, $a1
	bnez	$a1, .LBB1_286
# %bb.297:                              #   in Loop: Header=BB1_288 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a5, $s4, $a1, 1
	move	$s7, $s4
	b	.LBB1_299
.LBB1_298:                              # %split.i
                                        #   in Loop: Header=BB1_288 Depth=2
	slli.d	$a1, $s7, 1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.hu	$a1, $a2, $a1
	alsl.d	$a5, $s7, $a2, 1
	bnez	$a1, .LBB1_300
.LBB1_299:                              # %split.thread.i
                                        #   in Loop: Header=BB1_288 Depth=2
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	st.h	$a3, $a5, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	stx.b	$zero, $a1, $a3
	addi.w	$a2, $a3, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	stx.b	$zero, $a1, $a3
	move	$a1, $a3
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
.LBB1_300:                              #   in Loop: Header=BB1_288 Depth=2
	ori	$s4, $zero, 1
	ori	$a2, $zero, 2
	blt	$fp, $a2, .LBB1_304
# %bb.301:                              # %.lr.ph583.preheader.i
                                        #   in Loop: Header=BB1_288 Depth=2
	addi.d	$a2, $fp, -1
	ori	$s4, $zero, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB1_302:                              # %.lr.ph583.i
                                        #   Parent Loop BB1_251 Depth=1
                                        #     Parent Loop BB1_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a3, 0
	beq	$a4, $s0, .LBB1_304
# %bb.303:                              #   in Loop: Header=BB1_302 Depth=3
	addi.w	$s4, $s4, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 2
	bnez	$a2, .LBB1_302
	b	.LBB1_305
.LBB1_304:                              # %._crit_edge584.i
                                        #   in Loop: Header=BB1_288 Depth=2
	bne	$s4, $fp, .LBB1_308
.LBB1_305:                              # %._crit_edge584.thread.i
                                        #   in Loop: Header=BB1_288 Depth=2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 1568
	bne	$fp, $a0, .LBB1_307
# %bb.306:                              #   in Loop: Header=BB1_288 Depth=2
	move	$s4, $a5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 304
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a2, $a0, %pc_lo12(.L.str.124)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 36
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s4, 0
.LBB1_307:                              #   in Loop: Header=BB1_288 Depth=2
	slli.d	$a0, $fp, 1
	move	$s4, $fp
	addi.w	$fp, $fp, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	stx.h	$s0, $a2, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
.LBB1_308:                              #   in Loop: Header=BB1_288 Depth=2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	move	$s0, $t0
	bge	$a1, $t0, .LBB1_315
# %bb.309:                              # %.lr.ph593.preheader.i
                                        #   in Loop: Header=BB1_288 Depth=2
	move	$s0, $t0
	move	$a2, $t0
.LBB1_310:                              # %.lr.ph593.i
                                        #   Parent Loop BB1_251 Depth=1
                                        #     Parent Loop BB1_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a6, $a3
	add.d	$a3, $a3, $a2
	ld.bu	$a3, $a3, -1
	bgeu	$a3, $a0, .LBB1_312
# %bb.311:                              #   in Loop: Header=BB1_310 Depth=3
	ldx.b	$a4, $a7, $a2
	addi.d	$a5, $a2, -1
	stx.b	$a3, $a6, $a2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	stx.b	$a4, $a3, $a2
	addi.w	$s0, $s0, -1
	move	$a2, $a5
	move	$a3, $a6
	blt	$a1, $a5, .LBB1_310
	b	.LBB1_315
.LBB1_312:                              #   in Loop: Header=BB1_288 Depth=2
	addi.d	$a1, $a2, -1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a6, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bne	$a1, $a0, .LBB1_314
# %bb.313:                              #   in Loop: Header=BB1_288 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 304
	move	$a7, $a0
	st.d	$a1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a2, $a0, %pc_lo12(.L.str.125)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 37
	ori	$a3, $zero, 1
	addi.d	$a5, $sp, 1768
	addi.d	$a6, $sp, 1668
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_314:                              # %.critedge13.i
                                        #   in Loop: Header=BB1_288 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
.LBB1_315:                              # %.critedge13.i
                                        #   in Loop: Header=BB1_288 Depth=2
	stx.b	$a0, $a3, $s0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	stx.b	$s4, $a0, $s0
	addi.w	$t0, $t0, 1
	st.d	$t0, $sp, 240                   # 8-byte Folded Spill
.LBB1_316:                              # %.outer.i
                                        #   in Loop: Header=BB1_288 Depth=2
	addi.d	$a0, $sp, 820
	ori	$a1, $zero, 512
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a1, $sp, 820
	beq	$a0, $a1, .LBB1_288
	b	.LBB1_319
.LBB1_317:                              #   in Loop: Header=BB1_251 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a2, $a0, %pc_lo12(.L.str.115)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 32
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_249
.LBB1_318:                              #   in Loop: Header=BB1_251 Depth=1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
.LBB1_319:                              # %.critedge11.i
                                        #   in Loop: Header=BB1_251 Depth=1
	st.h	$fp, $s0, 0
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_250
.LBB1_320:
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
.LBB1_321:                              # %._crit_edge613.i
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a2, $a0, %pc_lo12(.L.str.126)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 38
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_323
.LBB1_322:
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
.LBB1_323:                              # %.critedge.i
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 40
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_325
# %bb.324:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
.LBB1_325:
	ld.bu	$a1, $fp, 60
	st.w	$a0, $fp, 52
	andi	$a1, $a1, 127
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	pcaddu18i	$ra, %call36(MapCharEncoding)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_327
# %bb.326:
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.h	$a0, $a0, 6
	b	.LBB1_328
.LBB1_327:
	move	$a0, $zero
.LBB1_328:
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a0, $fp, 56
	beqz	$a1, .LBB1_368
# %bb.329:
	addi.d	$a0, $a1, 64
	addi.d	$s3, $a1, 32
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	ori	$a3, $zero, 5
	ori	$a4, $zero, 5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(OpenFile)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB1_331
# %bb.330:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a2, $a0, %pc_lo12(.L.str.128)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 39
	ori	$a3, $zero, 1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_331:
	st.d	$s8, $sp, 240                   # 8-byte Folded Spill
	st.w	$zero, $sp, 304
	addi.d	$a0, $sp, 820
	ori	$a1, $zero, 512
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	beqz	$a0, .LBB1_367
# %bb.332:                              # %.lr.ph624.i.preheader
	addi.d	$s7, $sp, 1769
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a0, $a0, %pc_lo12(.L.str.144)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$fp, $zero, 0
	lu32i.d	$fp, 1
	ori	$s8, $zero, 59
	ori	$s1, $zero, 10
	st.d	$s4, $sp, 208                   # 8-byte Folded Spill
	b	.LBB1_335
.LBB1_333:                              #   in Loop: Header=BB1_335 Depth=1
	addi.d	$a4, $sp, 300
	addi.d	$a7, $sp, 304
	st.d	$s4, $sp, 0
	move	$a0, $s2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	move	$a5, $s5
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ReadCharMetrics)
	jirl	$ra, $ra, 0
.LBB1_334:                              #   in Loop: Header=BB1_335 Depth=1
	addi.d	$a0, $sp, 820
	ori	$a1, $zero, 512
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_367
.LBB1_335:                              # %.lr.ph624.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_340 Depth 2
                                        #       Child Loop BB1_345 Depth 3
                                        #       Child Loop BB1_354 Depth 3
                                        #         Child Loop BB1_357 Depth 4
	ld.w	$a0, $sp, 304
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 304
	addi.d	$a0, $sp, 820
	addi.d	$a2, $sp, 308
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 308
	ori	$a1, $zero, 83
	bne	$a0, $a1, .LBB1_334
# %bb.336:                              #   in Loop: Header=BB1_335 Depth=1
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 22
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_333
# %bb.337:                              #   in Loop: Header=BB1_335 Depth=1
	addi.d	$a0, $sp, 308
	ori	$a2, $zero, 21
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_334
# %bb.338:                              #   in Loop: Header=BB1_335 Depth=1
	addi.d	$a0, $sp, 1768
	ori	$a1, $zero, 512
	b	.LBB1_340
.LBB1_339:                              #   in Loop: Header=BB1_340 Depth=2
	slli.d	$a0, $s4, 2
	alsl.d	$a0, $s4, $a0, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	stx.b	$zero, $a1, $a0
	addi.w	$s0, $s0, 1
	addi.d	$a0, $sp, 1768
	ori	$a1, $zero, 512
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
.LBB1_340:                              #   Parent Loop BB1_335 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_345 Depth 3
                                        #       Child Loop BB1_354 Depth 3
                                        #         Child Loop BB1_357 Depth 4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_366
# %bb.341:                              # %.lr.ph90.i.i
                                        #   in Loop: Header=BB1_340 Depth=2
	addi.d	$a0, $sp, 1768
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_365
# %bb.342:                              #   in Loop: Header=BB1_340 Depth=2
	ld.w	$a0, $sp, 304
	addi.w	$s4, $a0, 1
	st.w	$s4, $sp, 304
	addi.d	$a0, $sp, 1768
	addi.d	$a2, $sp, 1668
	addi.d	$a3, $sp, 1564
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_344
# %bb.343:                              #   in Loop: Header=BB1_340 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a2, $a0, %pc_lo12(.L.str.146)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 5
	ori	$a3, $zero, 1
	move	$a4, $s3
	move	$a6, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_344:                              # %.preheader759
                                        #   in Loop: Header=BB1_340 Depth=2
	move	$s6, $zero
	addi.d	$a0, $sp, 1768
	ldx.bu	$a0, $s6, $a0
	beqz	$a0, .LBB1_348
	.p2align	4, , 16
.LBB1_345:                              #   Parent Loop BB1_335 Depth=1
                                        #     Parent Loop BB1_340 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a0, $s1, .LBB1_348
# %bb.346:                              #   in Loop: Header=BB1_345 Depth=3
	beq	$a0, $s8, .LBB1_349
# %bb.347:                              #   in Loop: Header=BB1_345 Depth=3
	addi.d	$s6, $s6, 1
	addi.d	$a0, $sp, 1768
	ldx.bu	$a0, $s6, $a0
	bnez	$a0, .LBB1_345
.LBB1_348:                              #   in Loop: Header=BB1_340 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 304
	move	$a5, $a0
	ori	$a0, $zero, 37
	ori	$a1, $zero, 5
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_349:                              # %.loopexit79.i.i
                                        #   in Loop: Header=BB1_340 Depth=2
	ld.bu	$a0, $s2, 60
	andi	$a1, $a0, 127
	addi.d	$a0, $sp, 1668
	pcaddu18i	$ra, %call36(MapCharEncoding)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB1_351
# %bb.350:                              #   in Loop: Header=BB1_340 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 304
	move	$a5, $a0
	ori	$a0, $zero, 37
	ori	$a1, $zero, 6
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_351:                              #   in Loop: Header=BB1_340 Depth=2
	ld.w	$a0, $sp, 1564
	slli.d	$a1, $s4, 1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	stx.h	$s0, $a2, $a1
	blez	$a0, .LBB1_363
# %bb.352:                              # %.lr.ph.i.preheader.i
                                        #   in Loop: Header=BB1_340 Depth=2
	move	$s4, $zero
	b	.LBB1_354
	.p2align	4, , 16
.LBB1_353:                              #   in Loop: Header=BB1_354 Depth=3
	ld.bu	$a0, $s2, 60
	andi	$a1, $a0, 127
	addi.d	$a0, $sp, 1568
	pcaddu18i	$ra, %call36(MapCharEncoding)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s0, 2
	alsl.d	$a1, $s0, $a1, 1
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a1
	ld.h	$a3, $sp, 1560
	ld.h	$a4, $sp, 1556
	stx.b	$a0, $a5, $a1
	ld.w	$a0, $sp, 1564
	st.h	$a3, $a2, 2
	st.h	$a4, $a2, 4
	addi.w	$s4, $s4, 1
	addi.d	$s0, $s0, 1
	bge	$s4, $a0, .LBB1_363
.LBB1_354:                              # %.lr.ph.i.i
                                        #   Parent Loop BB1_335 Depth=1
                                        #     Parent Loop BB1_340 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_357 Depth 4
	slli.d	$s6, $s6, 32
	add.d	$a0, $s6, $fp
	srai.d	$a0, $a0, 32
	addi.d	$a1, $sp, 1768
	add.d	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.148)
	addi.d	$a1, $a1, %pc_lo12(.L.str.148)
	addi.d	$a2, $sp, 1568
	addi.d	$a3, $sp, 1560
	addi.d	$a4, $sp, 1556
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB1_356
# %bb.355:                              #   in Loop: Header=BB1_354 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 304
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a2, $a0, %pc_lo12(.L.str.146)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 5
	ori	$a3, $zero, 1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_356:                              #   in Loop: Header=BB1_354 Depth=3
	srai.d	$s6, $s6, 32
	.p2align	4, , 16
.LBB1_357:                              #   Parent Loop BB1_335 Depth=1
                                        #     Parent Loop BB1_340 Depth=2
                                        #       Parent Loop BB1_354 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$a0, $s7, $s6
	addi.d	$s6, $s6, 1
	beqz	$a0, .LBB1_360
# %bb.358:                              #   in Loop: Header=BB1_357 Depth=4
	beq	$a0, $s8, .LBB1_361
# %bb.359:                              #   in Loop: Header=BB1_357 Depth=4
	bne	$a0, $s1, .LBB1_357
.LBB1_360:                              #   in Loop: Header=BB1_354 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 304
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a2, $a0, %pc_lo12(.L.str.146)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 5
	ori	$a3, $zero, 1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_361:                              # %.loopexit.i.i
                                        #   in Loop: Header=BB1_354 Depth=3
	ori	$a0, $zero, 256
	blt	$s0, $a0, .LBB1_353
# %bb.362:                              #   in Loop: Header=BB1_354 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 304
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a2, $a0, %pc_lo12(.L.str.149)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 7
	ori	$a3, $zero, 1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_353
.LBB1_363:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB1_340 Depth=2
	addi.w	$s4, $s0, 0
	ori	$a0, $zero, 256
	blt	$s4, $a0, .LBB1_339
# %bb.364:                              #   in Loop: Header=BB1_340 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 304
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a2, $a0, %pc_lo12(.L.str.149)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 8
	ori	$a3, $zero, 1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_339
.LBB1_365:                              # %.critedge.i.i
                                        #   in Loop: Header=BB1_335 Depth=1
	addi.d	$a0, $sp, 1768
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_334
.LBB1_366:                              # %.loopexit80.i.i
                                        #   in Loop: Header=BB1_335 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 304
	move	$a5, $a0
	ori	$a0, $zero, 37
	ori	$a1, $zero, 9
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_334
.LBB1_367:                              # %._crit_edge625.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_369
.LBB1_368:
	ori	$s0, $zero, 1
.LBB1_369:                              # %FontRead.exit
	ld.wu	$a0, $s8, %pc_lo12(font_count)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(finfo)
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a2, $a1, $a0
	st.d	$fp, $a2, 40
	st.d	$s2, $a2, 48
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a3, $a4, $a3
	st.h	$a3, $a2, 56
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.h	$a3, $a2, 58
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	stx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a2, 8
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a2, 16
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a2, 24
	st.w	$s0, $a2, 32
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a2, 64
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a2, 72
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, 80
	st.d	$a5, $a2, 88
.LBB1_370:                              # %.thread418
	ld.d	$a0, $s2, 8
	beq	$a0, $s2, .LBB1_374
# %bb.371:
	ld.d	$a0, $a0, 8
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	beq	$a0, $s2, .LBB1_375
.LBB1_372:
	ld.d	$a0, $a0, 8
	beq	$a0, $s2, .LBB1_376
.LBB1_373:
	bnez	$s0, .LBB1_377
	b	.LBB1_381
.LBB1_374:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	ld.d	$a0, $a0, 8
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	bne	$a0, $s2, .LBB1_372
.LBB1_375:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a5, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	bne	$a0, $s2, .LBB1_373
.LBB1_376:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a5, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_381
.LBB1_377:
	addi.d	$a2, $sp, 1768
	addi.d	$a3, $sp, 820
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(GetGap)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 1768
	bstrpick.d	$a0, $a0, 15, 10
	slli.d	$a0, $a0, 10
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1024
	bne	$a0, $a1, .LBB1_380
# %bb.378:
	ld.w	$a5, $sp, 820
	ori	$a0, $zero, 158
	bne	$a5, $a0, .LBB1_401
# %bb.379:
	ld.hu	$a0, $sp, 1770
	b	.LBB1_382
.LBB1_380:
	addi.d	$a4, $s0, 32
	addi.d	$a5, $s0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a2, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 47
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_381:
	ld.wu	$a0, $s7, 12
	pcalau12i	$a1, %pc_hi20(finfo)
	ld.d	$a1, $a1, %pc_lo12(finfo)
	andi	$a0, $a0, 4095
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 40
	ld.h	$a0, $a0, 48
.LBB1_382:
	ext.w.h	$a1, $a0
	blez	$a1, .LBB1_389
.LBB1_383:                              # %.thread426
	pcalau12i	$a1, %got_pc_hi20(BackEnd)
	ld.d	$s3, $a1, %got_pc_lo12(BackEnd)
	ld.d	$a1, $s3, 0
	ld.w	$a1, $a1, 40
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %got_pc_hi20(PlainCharHeight)
	ld.d	$a2, $a2, %got_pc_lo12(PlainCharHeight)
	ld.d	$a3, $s2, 8
	ld.h	$a2, $a2, 0
	masknez	$a4, $a0, $a1
	ld.d	$a0, $a3, 8
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	ext.w.h	$fp, $a1
	.p2align	4, , 16
.LBB1_384:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_386 Depth 2
	ld.d	$a0, $a0, 8
	beq	$a0, $s2, .LBB1_390
# %bb.385:                              # %.preheader.preheader
                                        #   in Loop: Header=BB1_384 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB1_386:                              # %.preheader
                                        #   Parent Loop BB1_384 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB1_386
# %bb.387:                              #   in Loop: Header=BB1_384 Depth=1
	ld.w	$a2, $a1, 48
	bne	$a2, $fp, .LBB1_384
# %bb.388:
	ld.wu	$a0, $s7, 12
	ld.hu	$a2, $a1, 40
	srli.d	$a0, $a0, 12
	bstrins.d	$a2, $a0, 63, 12
	st.w	$a2, $s7, 12
	ori	$a0, $zero, 38
	st.b	$a0, $s7, 5
	ld.h	$a0, $a1, 56
	b	.LBB1_448
.LBB1_389:
	addi.d	$a4, $s0, 32
	addi.d	$a5, $s0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a2, $a0, %pc_lo12(.L.str.35)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a6, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 50
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_449
.LBB1_390:
	ld.w	$a1, $s8, %pc_lo12(font_count)
	pcalau12i	$s0, %pc_hi20(finfo_size)
	ld.w	$a0, $s0, %pc_lo12(finfo_size)
	addi.w	$a1, $a1, 1
	st.w	$a1, $s8, %pc_lo12(font_count)
	bltu	$a1, $a0, .LBB1_395
# %bb.391:
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1
	bltu	$a1, $a2, .LBB1_393
# %bb.392:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a2, $a0, %pc_lo12(.L.str.36)
	lu12i.w	$a5, 1
	ori	$a0, $zero, 37
	ori	$a1, $zero, 51
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(finfo_size)
.LBB1_393:
	slli.w	$a1, $a0, 1
	pcalau12i	$s1, %pc_hi20(finfo)
	ld.d	$a0, $s1, %pc_lo12(finfo)
	st.w	$a1, $s0, %pc_lo12(finfo_size)
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(finfo)
	bnez	$a0, .LBB1_395
# %bb.394:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a2, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 52
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_395:
	ld.d	$a0, $s2, 8
	ld.d	$a0, $a0, 8
	ld.d	$s0, $a0, 8
.LBB1_396:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_396
# %bb.397:
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB1_399
# %bb.398:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a5, $a0, %pc_lo12(.L.str.38)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_399:                              # %.loopexit434
	addi.d	$a1, $s0, 64
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s4, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a2, $s4, 0
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB1_405
# %bb.400:
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_406
.LBB1_401:
	ld.wu	$a0, $s7, 12
	andi	$a0, $a0, 4095
	beqz	$a0, .LBB1_436
# %bb.402:
	ori	$a1, $zero, 160
	beq	$a5, $a1, .LBB1_437
# %bb.403:
	ori	$a1, $zero, 159
	bne	$a5, $a1, .LBB1_438
# %bb.404:
	pcalau12i	$a1, %pc_hi20(finfo)
	ld.d	$a1, $a1, %pc_lo12(finfo)
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 40
	ld.h	$a0, $a0, 48
	ld.h	$a1, $sp, 1770
	add.d	$a0, $a1, $a0
	b	.LBB1_382
.LBB1_405:
	ld.d	$a1, $s4, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_406:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a4, 0
	ld.d	$a5, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s1, $a4, 0
	beqz	$s1, .LBB1_409
# %bb.407:
	beqz	$a0, .LBB1_409
# %bb.408:
	ld.d	$a2, $s1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s1, 16
	st.d	$s1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB1_409:
	ld.wu	$s4, $s8, %pc_lo12(font_count)
	ld.hu	$a0, $s1, 40
	ld.d	$a1, $s3, 0
	srli.d	$a0, $a0, 12
	move	$a2, $s4
	bstrins.d	$a2, $a0, 63, 12
	st.h	$a2, $s1, 40
	ld.w	$a0, $a1, 40
	bnez	$a0, .LBB1_411
# %bb.410:
	ld.w	$fp, $s0, 48
.LBB1_411:
	st.w	$fp, $s1, 48
	ld.w	$a0, $s0, 52
	ld.w	$a1, $s0, 48
	mul.w	$a0, $a0, $fp
	div.w	$a0, $a0, $a1
	st.w	$a0, $s1, 52
	ld.bu	$a0, $s0, 60
	ld.bu	$a1, $s1, 60
	srli.d	$a0, $a0, 7
	bstrins.d	$a1, $a0, 63, 7
	st.b	$a1, $s1, 60
	ld.bu	$a1, $s0, 60
	bstrins.d	$a1, $a0, 63, 7
	st.b	$a1, $s1, 60
	ld.w	$a0, $s0, 56
	ld.w	$a1, $s0, 48
	mul.w	$a0, $a0, $fp
	div.w	$a0, $a0, $a1
	pcalau12i	$fp, %pc_hi20(finfo)
	ld.d	$s3, $fp, %pc_lo12(finfo)
	st.w	$a0, $s1, 56
	ori	$s5, $zero, 96
	mul.d	$s6, $s4, $s5
	add.d	$a0, $s3, $s6
	st.d	$s1, $a0, 40
	st.d	$s2, $a0, 48
	ld.hu	$a1, $s0, 40
	andi	$a1, $a1, 4095
	mul.d	$a1, $a1, $s5
	add.d	$a1, $s3, $a1
	ld.h	$a1, $a1, 56
	ld.w	$a2, $s1, 48
	ld.w	$a3, $s0, 48
	mul.w	$a1, $a2, $a1
	div.w	$a1, $a1, $a3
	st.h	$a1, $a0, 56
	ld.hu	$a1, $s0, 40
	andi	$a1, $a1, 4095
	mul.d	$a1, $a1, $s5
	add.d	$a1, $s3, $a1
	ld.h	$a1, $a1, 58
	ld.w	$a2, $s1, 48
	ld.w	$a3, $s0, 48
	mul.w	$a1, $a2, $a1
	div.w	$a1, $a1, $a3
	st.h	$a1, $a0, 58
	ori	$a0, $zero, 2560
	ori	$s2, $zero, 2560
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s6
	bnez	$a0, .LBB1_413
# %bb.412:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 53
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, %pc_lo12(finfo)
	ld.wu	$s4, $s8, %pc_lo12(font_count)
.LBB1_413:
	ld.hu	$a0, $s0, 40
	andi	$a0, $a0, 4095
	mul.d	$a0, $a0, $s5
	add.d	$a0, $s3, $a0
	ld.d	$a1, $a0, 8
	mul.d	$a0, $s4, $s5
	add.d	$a0, $s3, $a0
	st.d	$a1, $a0, 8
	ld.hu	$a2, $s0, 40
	ld.hu	$a3, $s1, 40
	andi	$a2, $a2, 4095
	mul.d	$a2, $a2, $s5
	ldx.d	$a4, $s3, $a2
	andi	$a2, $a3, 4095
	mul.d	$a2, $a2, $s5
	ldx.d	$a2, $s3, $a2
	addi.d	$a3, $a4, 8
	lu12i.w	$a4, -1
	ori	$a4, $a4, 1536
	ori	$a5, $zero, 1
	ori	$a6, $zero, 2556
	ori	$a7, $zero, 2564
	ori	$t0, $zero, 2558
	ori	$t1, $zero, 2566
	ori	$t2, $zero, 2554
	ori	$t3, $zero, 2562
	ori	$t4, $zero, 2552
	ori	$t5, $zero, 2568
	b	.LBB1_415
	.p2align	4, , 16
.LBB1_414:                              #   in Loop: Header=BB1_415 Depth=1
	addi.d	$a4, $a4, 10
	addi.d	$a1, $a1, 1
	beqz	$a4, .LBB1_417
.LBB1_415:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$t6, $a1, 0
	beq	$t6, $a5, .LBB1_414
# %bb.416:                              #   in Loop: Header=BB1_415 Depth=1
	add.d	$t6, $a3, $a4
	ldx.h	$t7, $t6, $a6
	ld.w	$t8, $s1, 48
	ld.w	$s4, $s0, 48
	mul.w	$t7, $t8, $t7
	div.w	$t7, $t7, $s4
	add.d	$t8, $a2, $a4
	stx.h	$t7, $t8, $a7
	ldx.h	$t7, $t6, $t0
	ld.w	$s4, $s1, 48
	ld.w	$s5, $s0, 48
	mul.w	$t7, $s4, $t7
	div.w	$t7, $t7, $s5
	stx.h	$t7, $t8, $t1
	ldx.h	$t7, $t6, $t2
	ld.w	$s4, $s1, 48
	ld.w	$s5, $s0, 48
	mul.w	$t7, $s4, $t7
	div.w	$t7, $t7, $s5
	stx.h	$t7, $t8, $t3
	ldx.h	$t7, $t6, $t4
	ld.w	$s4, $s1, 48
	ld.w	$s5, $s0, 48
	mul.w	$t7, $s4, $t7
	div.w	$t7, $t7, $s5
	stx.h	$t7, $t8, $s2
	ldx.h	$t6, $t6, $s2
	ld.w	$t7, $s1, 48
	ld.w	$s4, $s0, 48
	mul.w	$t6, $t7, $t6
	div.w	$t6, $t6, $s4
	stx.h	$t6, $t8, $t5
	b	.LBB1_414
.LBB1_417:
	ld.hu	$a1, $s0, 40
	andi	$a1, $a1, 4095
	ori	$a2, $zero, 96
	mul.d	$a1, $a1, $a2
	add.d	$a1, $s3, $a1
	ld.d	$a1, $a1, 16
	st.d	$a1, $a0, 16
	ld.hu	$a1, $s0, 40
	andi	$a1, $a1, 4095
	mul.d	$a1, $a1, $a2
	add.d	$a1, $s3, $a1
	ld.w	$s4, $a1, 32
	st.w	$s4, $a0, 32
	ld.hu	$a0, $s0, 40
	andi	$a0, $a0, 4095
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s3, $a0
	ld.d	$s3, $a0, 24
	slli.d	$a0, $s4, 2
	alsl.d	$a0, $s4, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB1_419
# %bb.418:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 54
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_419:
	ori	$a0, $zero, 2
	blt	$s4, $a0, .LBB1_424
# %bb.420:                              # %.lr.ph511.preheader
	addi.d	$a0, $s2, 10
	addi.d	$a1, $s4, -1
	addi.d	$a2, $s3, 10
	b	.LBB1_422
	.p2align	4, , 16
.LBB1_421:                              #   in Loop: Header=BB1_422 Depth=1
	addi.d	$a0, $a0, 6
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 6
	beqz	$a1, .LBB1_424
.LBB1_422:                              # %.lr.ph511
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, -4
	st.b	$a3, $a0, -4
	beqz	$a3, .LBB1_421
# %bb.423:                              #   in Loop: Header=BB1_422 Depth=1
	ld.h	$a3, $a2, -2
	ld.w	$a4, $s1, 48
	ld.w	$a5, $s0, 48
	mul.w	$a3, $a4, $a3
	div.w	$a3, $a3, $a5
	st.h	$a3, $a0, -2
	ld.h	$a3, $a2, 0
	mul.w	$a3, $a4, $a3
	div.w	$a3, $a3, $a5
	st.h	$a3, $a0, 0
	b	.LBB1_421
.LBB1_424:                              # %._crit_edge512
	ld.wu	$a0, $s8, %pc_lo12(font_count)
	ld.d	$a1, $fp, %pc_lo12(finfo)
	ori	$a2, $zero, 96
	mul.d	$a0, $a0, $a2
	add.d	$s4, $a1, $a0
	st.d	$s2, $s4, 24
	ld.hu	$a0, $s0, 40
	andi	$a0, $a0, 4095
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 64
	st.d	$a0, $s4, 64
	ld.hu	$a0, $s0, 40
	andi	$a0, $a0, 4095
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 72
	st.d	$a0, $s4, 72
	ld.hu	$a0, $s0, 40
	andi	$a0, $a0, 4095
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 80
	st.d	$a0, $s4, 80
	ld.hu	$a0, $s0, 40
	andi	$a0, $a0, 4095
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 88
	beqz	$fp, .LBB1_435
# %bb.425:
	ld.h	$s3, $fp, 0
	bstrpick.d	$s5, $s3, 15, 0
	slli.d	$a0, $s3, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s4, 88
	bnez	$a0, .LBB1_427
# %bb.426:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 55
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_427:
	ext.w.h	$a0, $s5
	ori	$a1, $zero, 2
	st.h	$s5, $s2, 0
	blt	$a0, $a1, .LBB1_447
# %bb.428:                              # %iter.check
	ld.w	$a0, $s1, 48
	ld.w	$a1, $s0, 48
	bstrpick.d	$a3, $s5, 15, 0
	ori	$a2, $zero, 9
	ori	$a4, $zero, 1
	bltu	$a3, $a2, .LBB1_445
# %bb.429:                              # %iter.check
	sub.d	$a2, $s2, $fp
	ori	$a5, $zero, 32
	bltu	$a2, $a5, .LBB1_445
# %bb.430:                              # %vector.main.loop.iter.check
	addi.d	$a2, $s3, -1
	ori	$a4, $zero, 17
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a1
	bgeu	$a3, $a4, .LBB1_440
# %bb.431:
	move	$a3, $zero
.LBB1_432:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a4, $a2
	bstrins.d	$a4, $a6, 2, 0
	slli.d	$a6, $a3, 1
	addi.d	$a7, $a6, 2
	add.d	$a6, $fp, $a7
	add.d	$a7, $s2, $a7
	sub.d	$a3, $a3, $a5
.LBB1_433:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vsllwil.w.h	$vr3, $vr2, 0
	vbsrl.v	$vr2, $vr2, 8
	vsllwil.w.h	$vr2, $vr2, 0
	vmul.w	$vr2, $vr0, $vr2
	vmul.w	$vr3, $vr0, $vr3
	vdiv.w	$vr3, $vr3, $vr1
	vdiv.w	$vr2, $vr2, $vr1
	vpickev.h	$vr2, $vr2, $vr3
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$a3, $a3, 8
	addi.d	$a7, $a7, 16
	bnez	$a3, .LBB1_433
# %bb.434:                              # %vec.epilog.middle.block
	bne	$a2, $a5, .LBB1_445
	b	.LBB1_447
.LBB1_435:
	st.d	$zero, $s4, 88
	b	.LBB1_447
.LBB1_436:
	addi.d	$a4, $s0, 32
	addi.d	$a5, $s0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a2, $a0, %pc_lo12(.L.str.33)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 48
	ori	$a3, $zero, 1
	b	.LBB1_439
.LBB1_437:
	pcalau12i	$a1, %pc_hi20(finfo)
	ld.d	$a1, $a1, %pc_lo12(finfo)
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 40
	ld.h	$a0, $a0, 48
	ld.h	$a1, $sp, 1770
	sub.d	$a0, $a0, $a1
	b	.LBB1_382
.LBB1_438:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 49
	move	$a3, $zero
	move	$a4, $fp
.LBB1_439:                              # %.thread426
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
                                        # implicit-def: $r4
	b	.LBB1_383
.LBB1_440:                              # %vector.ph728
	andi	$a4, $a2, 8
	move	$a3, $a2
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a5, $fp, 18
	addi.d	$a6, $s2, 18
	move	$a7, $a3
.LBB1_441:                              # %vector.body733
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vsllwil.w.h	$vr4, $vr2, 0
	vbsrl.v	$vr2, $vr2, 8
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.w.h	$vr5, $vr3, 0
	vbsrl.v	$vr3, $vr3, 8
	vsllwil.w.h	$vr3, $vr3, 0
	vmul.w	$vr2, $vr0, $vr2
	vmul.w	$vr4, $vr0, $vr4
	vmul.w	$vr3, $vr0, $vr3
	vmul.w	$vr5, $vr0, $vr5
	vdiv.w	$vr4, $vr4, $vr1
	vdiv.w	$vr2, $vr2, $vr1
	vdiv.w	$vr5, $vr5, $vr1
	vdiv.w	$vr3, $vr3, $vr1
	vpickev.h	$vr2, $vr2, $vr4
	vpickev.h	$vr3, $vr3, $vr5
	vst	$vr2, $a6, -16
	vst	$vr3, $a6, 0
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB1_441
# %bb.442:                              # %middle.block738
	beq	$a2, $a3, .LBB1_447
# %bb.443:                              # %vec.epilog.iter.check
	bnez	$a4, .LBB1_432
# %bb.444:
	addi.d	$a4, $a3, 1
.LBB1_445:                              # %.lr.ph515.preheader
	alsl.d	$a2, $a4, $s2, 1
	alsl.d	$a3, $a4, $fp, 1
	sub.d	$a4, $s3, $a4
.LBB1_446:                              # %.lr.ph515
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, 0
	mul.w	$a5, $a0, $a5
	div.w	$a5, $a5, $a1
	st.h	$a5, $a2, 0
	addi.d	$a2, $a2, 2
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 2
	bnez	$a4, .LBB1_446
.LBB1_447:                              # %.loopexit
	ld.wu	$a0, $s7, 12
	ld.wu	$a1, $s8, %pc_lo12(font_count)
	srli.d	$a0, $a0, 12
	bstrins.d	$a1, $a0, 63, 12
	st.w	$a1, $s7, 12
	ori	$a0, $zero, 38
	st.b	$a0, $s7, 5
	ld.h	$a0, $s1, 56
.LBB1_448:                              # %.thread
	st.h	$a0, $s7, 6
.LBB1_449:                              # %.thread
	addi.d	$sp, $sp, 336
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
.LBB1_450:
	ld.bu	$a0, $s2, 60
	andi	$a0, $a0, 127
	st.b	$a0, $s2, 60
	move	$a0, $s7
	move	$a1, $zero
	b	.LBB1_218
.Lfunc_end1:
	.size	FontChange, .Lfunc_end1-FontChange
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_272-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_264-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_274-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_250-.LJTI1_0
	.word	.LBB1_279-.LJTI1_0
                                        # -- End function
	.text
	.globl	FontWordSize                    # -- Begin function FontWordSize
	.p2align	5
	.type	FontWordSize,@function
FontWordSize:                           # @FontWordSize
# %bb.0:
	addi.d	$sp, $sp, -656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	st.d	$s8, $sp, 568                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a5, $a0, %pc_lo12(.L.str.40)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.bu	$a0, $s0, 64
	beqz	$a0, .LBB2_43
# %bb.3:
	ld.wu	$a0, $s0, 40
	pcalau12i	$a1, %pc_hi20(font_count)
	ld.w	$a1, $a1, %pc_lo12(font_count)
	addi.d	$fp, $s0, 32
	andi	$a2, $a0, 4095
	addi.d	$a2, $a2, -1
	addi.d	$s6, $s0, 64
	bltu	$a2, $a1, .LBB2_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a2, $a0, %pc_lo12(.L.str.41)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 56
	ori	$a3, $zero, 1
	move	$a4, $fp
	move	$a5, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
.LBB2_5:
	lu12i.w	$a1, 1023
	and	$a1, $a0, $a1
	bnez	$a1, .LBB2_8
# %bb.6:
	pcalau12i	$a1, %got_pc_hi20(BackEnd)
	ld.d	$a1, $a1, %got_pc_lo12(BackEnd)
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 44
	beqz	$a1, .LBB2_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 57
	ori	$a3, $zero, 1
	move	$a4, $fp
	move	$a5, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
.LBB2_8:
	lu12i.w	$a1, 129024
	and	$a1, $a0, $a1
	bnez	$a1, .LBB2_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a2, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 58
	ori	$a3, $zero, 1
	move	$a4, $fp
	move	$a5, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
.LBB2_10:
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(finfo)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(finfo)
	andi	$a0, $a0, 4095
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a2, $a1, $a0
	ld.d	$a3, $a2, 40
	ld.bu	$a3, $a3, 60
	ldx.d	$s8, $a1, $a0
	ld.d	$a6, $a2, 8
	andi	$a0, $a3, 127
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(MapTable)
	ld.d	$a1, $a1, %got_pc_lo12(MapTable)
	ldx.d	$a0, $a1, $a0
	move	$s4, $zero
	move	$s5, $zero
	move	$fp, $zero
	addi.d	$a0, $a0, 2047
	addi.d	$s3, $a0, 898
	ld.bu	$s2, $s6, 0
	addi.d	$s0, $sp, 56
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_11:                               #   in Loop: Header=BB2_13 Depth=1
	move	$a1, $s2
.LBB2_12:                               # %.loopexit
                                        #   in Loop: Header=BB2_13 Depth=1
	slli.d	$a0, $a1, 3
	alsl.d	$a0, $a1, $a0, 1
	ldx.h	$a1, $s8, $a0
	add.d	$a0, $s8, $a0
	slt	$a2, $a1, $s4
	ld.h	$a3, $a0, 2
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s4, $a2
	or	$s4, $a2, $a1
	slt	$a1, $s5, $a3
	masknez	$a2, $a3, $a1
	ld.h	$a3, $a0, 6
	ld.bu	$s2, $s1, 0
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a2
	addi.d	$s0, $s0, 1
	add.d	$fp, $fp, $a3
	move	$s6, $s1
	beqz	$s2, .LBB2_34
.LBB2_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #       Child Loop BB2_21 Depth 3
	ldx.bu	$a0, $a6, $s2
	addi.d	$s1, $s6, 1
	st.b	$s2, $s0, 0
	beqz	$a0, .LBB2_11
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_17
# %bb.15:                               #   in Loop: Header=BB2_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	ori	$a0, $zero, 12
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 0
	move	$s2, $a0
	st.b	$a1, $a0, 64
	ldx.bu	$a0, $s3, $a1
	bne	$a0, $a1, .LBB2_29
# %bb.16:                               #   in Loop: Header=BB2_13 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(StringQuotedWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.wu	$a1, $a1, 40
	move	$s3, $a0
	andi	$a0, $a1, 4095
	pcaddu18i	$ra, %call36(FontFamilyAndFace)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a2, $a0, %pc_lo12(.L.str.45)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 60
	ori	$a3, $zero, 2
	move	$a4, $s7
	move	$a5, $s3
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	st.b	$a0, $s0, 0
	st.b	$a0, $s6, 0
	ld.bu	$a1, $s0, 0
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_17:                               #   in Loop: Header=BB2_13 Depth=1
	ld.bu	$s3, $s6, 0
	ldx.bu	$a0, $a6, $s3
	add.d	$a0, $a6, $a0
	ld.bu	$a1, $a0, 256
	bne	$a1, $s3, .LBB2_31
# %bb.18:                               # %.lr.ph185
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.bu	$s6, $s1, 0
	addi.d	$a0, $a0, 256
	.p2align	4, , 16
.LBB2_19:                               #   Parent Loop BB2_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_21 Depth 3
	ld.bu	$a1, $a0, 1
	addi.d	$s7, $a0, 1
	bne	$a1, $s6, .LBB2_24
# %bb.20:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_19 Depth=2
	move	$a2, $s6
	move	$a3, $s1
	.p2align	4, , 16
.LBB2_21:                               # %.lr.ph
                                        #   Parent Loop BB2_13 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a2, .LBB2_26
# %bb.22:                               # %.lr.ph
                                        #   in Loop: Header=BB2_21 Depth=3
	ld.bu	$a1, $s7, 1
	beqz	$a1, .LBB2_26
# %bb.23:                               #   in Loop: Header=BB2_21 Depth=3
	ld.bu	$a4, $a3, 1
	addi.d	$a0, $a3, 1
	addi.d	$s7, $s7, 1
	move	$a2, $a1
	move	$a3, $a0
	beq	$a1, $a4, .LBB2_21
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_19 Depth=2
	move	$a0, $s1
.LBB2_25:                               # %.critedge
                                        #   in Loop: Header=BB2_19 Depth=2
	ld.bu	$a2, $s7, 1
	bnez	$a2, .LBB2_27
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_19 Depth=2
	move	$a0, $a3
	move	$a1, $a2
	ld.bu	$a2, $s7, 1
	beqz	$a2, .LBB2_32
.LBB2_27:                               # %.preheader.preheader
                                        #   in Loop: Header=BB2_19 Depth=2
	addi.d	$a0, $s7, 1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s7, $a0
	ld.bu	$a1, $a0, 2
	addi.d	$a0, $a0, 2
	beq	$a1, $s3, .LBB2_19
# %bb.28:                               #   in Loop: Header=BB2_13 Depth=1
	move	$a1, $s2
	b	.LBB2_33
.LBB2_29:                               #   in Loop: Header=BB2_13 Depth=1
	ori	$a3, $zero, 10
	mul.d	$a0, $a0, $a3
	ldx.h	$a0, $s8, $a0
	mul.d	$a2, $a1, $a3
	stx.h	$a0, $s8, $a2
	ldx.bu	$a0, $s3, $a1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $s8, $a0
	ld.h	$a0, $a0, 2
	add.d	$a2, $s8, $a2
	st.h	$a0, $a2, 2
	ldx.bu	$a0, $s3, $a1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $s8, $a0
	ld.h	$a0, $a0, 4
	st.h	$a0, $a2, 4
	ldx.bu	$a0, $s3, $a1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $s8, $a0
	ld.h	$a0, $a0, 6
	st.h	$a0, $a2, 6
	ldx.bu	$a0, $s3, $a1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $s8, $a0
	ld.h	$a0, $a0, 8
	st.h	$a0, $a2, 8
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	stx.b	$zero, $a6, $a1
.LBB2_30:                               #   in Loop: Header=BB2_13 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a2, $s2, 32
	st.d	$s2, $a0, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $s2, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $s2, 0
	ld.w	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a2, 3
	stx.d	$a0, $a4, $a2
	b	.LBB2_12
.LBB2_31:                               #   in Loop: Header=BB2_13 Depth=1
	move	$a1, $s2
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_12
.LBB2_32:                               #   in Loop: Header=BB2_13 Depth=1
	st.b	$a1, $s0, 0
	move	$s1, $a0
.LBB2_33:                               # %.loopexit
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_12
.LBB2_34:
	st.b	$zero, $s0, 0
	ld.h	$a0, $a0, 8
	ld.bu	$a5, $sp, 57
	add.d	$a0, $fp, $a0
	beqz	$a5, .LBB2_44
# %bb.35:                               # %.lr.ph191
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	ld.wu	$a1, $t1, 40
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(finfo)
	andi	$a1, $a1, 4095
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a1, $a2, $a1
	ld.d	$a2, $a1, 64
	addi.d	$a4, $sp, 57
	addi.d	$a3, $sp, 56
	b	.LBB2_38
	.p2align	4, , 16
.LBB2_36:                               #   in Loop: Header=BB2_38 Depth=1
	move	$a6, $zero
.LBB2_37:                               #   in Loop: Header=BB2_38 Depth=1
	ld.bu	$a5, $a4, 1
	add.d	$a0, $a6, $a0
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 1
	beqz	$a5, .LBB2_45
.LBB2_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_40 Depth 2
	ld.bu	$a6, $a3, 0
	ldx.bu	$a6, $s3, $a6
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $a2, $a6
	beqz	$a6, .LBB2_36
# %bb.39:                               #   in Loop: Header=BB2_38 Depth=1
	ldx.bu	$a5, $s3, $a5
	ld.d	$a7, $a1, 72
	.p2align	4, , 16
.LBB2_40:                               #   Parent Loop BB2_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t0, $a7, $a6
	addi.d	$a6, $a6, 1
	bltu	$a5, $t0, .LBB2_40
# %bb.41:                               #   in Loop: Header=BB2_38 Depth=1
	bne	$t0, $a5, .LBB2_36
# %bb.42:                               #   in Loop: Header=BB2_38 Depth=1
	ld.d	$a5, $a1, 80
	add.d	$a5, $a5, $a6
	ld.bu	$a5, $a5, -1
	ld.d	$a6, $a1, 88
	slli.d	$a5, $a5, 1
	ldx.h	$a6, $a6, $a5
	b	.LBB2_37
.LBB2_43:
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 48
	b	.LBB2_46
.LBB2_44:
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
.LBB2_45:                               # %._crit_edge
	st.w	$zero, $t1, 48
	st.w	$a0, $t1, 56
	st.w	$s4, $t1, 52
	sub.d	$a0, $zero, $s5
	st.w	$a0, $t1, 60
.LBB2_46:
	ld.d	$s8, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.Lfunc_end2:
	.size	FontWordSize, .Lfunc_end2-FontWordSize
                                        # -- End function
	.globl	FontFamilyAndFace               # -- Begin function FontFamilyAndFace
	.p2align	5
	.type	FontFamilyAndFace,@function
FontFamilyAndFace:                      # @FontFamilyAndFace
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(font_count)
	ld.w	$a1, $a1, %pc_lo12(font_count)
	move	$fp, $a0
	bgeu	$a1, $a0, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a5, $a0, %pc_lo12(.L.str.50)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_2:
	pcalau12i	$a0, %pc_hi20(finfo)
	ld.d	$a0, $a0, %pc_lo12(finfo)
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 40
	ld.d	$fp, $a0, 24
	.p2align	4, , 16
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB3_3
# %bb.4:
	ld.d	$a0, $fp, 24
	.p2align	4, , 16
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB3_5
# %bb.6:
	addi.d	$s0, $a0, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$fp, $fp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, -80
	addi.w	$a1, $zero, -82
	bltu	$a1, $a0, .LBB3_8
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a2, $a0, %pc_lo12(.L.str.52)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 63
	ori	$a3, $zero, 1
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_8:
	pcalau12i	$a0, %pc_hi20(FontFamilyAndFace.buff)
	addi.d	$s1, $a0, %pc_lo12(FontFamilyAndFace.buff)
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	stx.h	$a1, $s1, $a0
	move	$a0, $s1
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcat)
	jr	$t8
.Lfunc_end3:
	.size	FontFamilyAndFace, .Lfunc_end3-FontFamilyAndFace
                                        # -- End function
	.globl	FontSize                        # -- Begin function FontSize
	.p2align	5
	.type	FontSize,@function
FontSize:                               # @FontSize
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(font_count)
	ld.w	$a2, $a2, %pc_lo12(font_count)
	move	$fp, $a0
	bgeu	$a2, $a0, .LBB4_2
# %bb.1:                                # %.thread
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a5, $a0, %pc_lo12(.L.str.46)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_4
.LBB4_2:
	bnez	$fp, .LBB4_4
# %bb.3:
	addi.d	$a4, $a1, 32
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a2, $a0, %pc_lo12(.L.str.47)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 61
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_4:
	pcalau12i	$a0, %pc_hi20(finfo)
	ld.d	$a0, $a0, %pc_lo12(finfo)
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 40
	ld.w	$a0, $a0, 48
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	FontSize, .Lfunc_end4-FontSize
                                        # -- End function
	.globl	FontHalfXHeight                 # -- Begin function FontHalfXHeight
	.p2align	5
	.type	FontHalfXHeight,@function
FontHalfXHeight:                        # @FontHalfXHeight
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(font_count)
	ld.w	$a1, $a1, %pc_lo12(font_count)
	move	$fp, $a0
	bgeu	$a1, $a0, .LBB5_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a5, $a0, %pc_lo12(.L.str.48)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_2:
	pcalau12i	$a0, %pc_hi20(finfo)
	ld.d	$a0, $a0, %pc_lo12(finfo)
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 40
	ld.w	$a0, $a0, 52
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	FontHalfXHeight, .Lfunc_end5-FontHalfXHeight
                                        # -- End function
	.globl	FontMapping                     # -- Begin function FontMapping
	.p2align	5
	.type	FontMapping,@function
FontMapping:                            # @FontMapping
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(font_count)
	ld.w	$a2, $a2, %pc_lo12(font_count)
	move	$fp, $a0
	bgeu	$a2, $a0, .LBB6_2
# %bb.1:                                # %.thread
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a5, $a0, %pc_lo12(.L.str.49)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB6_4
.LBB6_2:
	bnez	$fp, .LBB6_4
# %bb.3:
	move	$a4, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a2, $a0, %pc_lo12(.L.str.47)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 62
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_4:
	pcalau12i	$a0, %pc_hi20(finfo)
	ld.d	$a0, $a0, %pc_lo12(finfo)
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 40
	ld.bu	$a0, $a0, 60
	andi	$a0, $a0, 127
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	FontMapping, .Lfunc_end6-FontMapping
                                        # -- End function
	.globl	FontName                        # -- Begin function FontName
	.p2align	5
	.type	FontName,@function
FontName:                               # @FontName
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(font_count)
	ld.w	$a1, $a1, %pc_lo12(font_count)
	move	$fp, $a0
	bgeu	$a1, $a0, .LBB7_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a5, $a0, %pc_lo12(.L.str.50)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_2:
	pcalau12i	$a0, %pc_hi20(finfo)
	ld.d	$a0, $a0, %pc_lo12(finfo)
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 40
	addi.d	$a0, $a0, 64
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	FontName, .Lfunc_end7-FontName
                                        # -- End function
	.globl	FontFamily                      # -- Begin function FontFamily
	.p2align	5
	.type	FontFamily,@function
FontFamily:                             # @FontFamily
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(font_count)
	ld.w	$a1, $a1, %pc_lo12(font_count)
	move	$fp, $a0
	bgeu	$a1, $a0, .LBB8_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a5, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB8_2:
	pcalau12i	$a0, %pc_hi20(finfo)
	ld.d	$a0, $a0, %pc_lo12(finfo)
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 40
	ld.d	$a0, $a0, 24
	.p2align	4, , 16
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB8_3
# %bb.4:
	ld.d	$a0, $a0, 24
	.p2align	4, , 16
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB8_5
# %bb.6:
	addi.d	$a0, $a0, 64
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	FontFamily, .Lfunc_end8-FontFamily
                                        # -- End function
	.globl	FontFace                        # -- Begin function FontFace
	.p2align	5
	.type	FontFace,@function
FontFace:                               # @FontFace
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(font_count)
	ld.w	$a1, $a1, %pc_lo12(font_count)
	move	$fp, $a0
	bgeu	$a1, $a0, .LBB9_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a5, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB9_2:
	pcalau12i	$a0, %pc_hi20(finfo)
	ld.d	$a0, $a0, %pc_lo12(finfo)
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 40
	ld.d	$a0, $a0, 24
	.p2align	4, , 16
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB9_3
# %bb.4:
	addi.d	$a0, $a0, 64
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	FontFace, .Lfunc_end9-FontFace
                                        # -- End function
	.globl	FontPrintAll                    # -- Begin function FontPrintAll
	.p2align	5
	.type	FontPrintAll,@function
FontPrintAll:                           # @FontPrintAll
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(font_root)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(font_root)
	move	$fp, $a0
	beqz	$a1, .LBB10_2
# %bb.1:
	ld.bu	$a0, $a1, 32
	ori	$a2, $zero, 17
	beq	$a0, $a2, .LBB10_3
.LBB10_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a5, $a0, %pc_lo12(.L.str.53)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(font_root)
.LBB10_3:
	ld.d	$s6, $a1, 8
	beq	$s6, $a1, .LBB10_30
# %bb.4:
	ori	$s7, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s3, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$s1, $a0, %pc_lo12(.L.str.56)
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_5:                               # %.loopexit68
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $s6, 8
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(font_root)
	beq	$s6, $a0, .LBB10_30
.LBB10_6:                               # %.preheader69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #     Child Loop BB10_12 Depth 2
                                        #       Child Loop BB10_13 Depth 3
                                        #       Child Loop BB10_21 Depth 3
                                        #       Child Loop BB10_25 Depth 3
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_7:                               #   Parent Loop BB10_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB10_7
# %bb.8:                                #   in Loop: Header=BB10_6 Depth=1
	addi.d	$a0, $a0, -11
	bgeu	$a0, $s7, .LBB10_10
# %bb.9:                                # %.loopexit70
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$s4, $s6, 8
	bne	$s4, $s6, .LBB10_12
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_10:                              #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a4, $s3, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, 8
	bne	$s4, $s6, .LBB10_12
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_11:                              #   in Loop: Header=BB10_12 Depth=2
	move	$a0, $fp
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s8
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 8
	beq	$s4, $s6, .LBB10_5
.LBB10_12:                              # %.preheader
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_13 Depth 3
                                        #       Child Loop BB10_21 Depth 3
                                        #       Child Loop BB10_25 Depth 3
	move	$s5, $s4
	.p2align	4, , 16
.LBB10_13:                              #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB10_13
# %bb.14:                               #   in Loop: Header=BB10_12 Depth=2
	addi.d	$a0, $a0, -11
	bgeu	$a0, $s7, .LBB10_16
# %bb.15:                               # %.loopexit67
                                        #   in Loop: Header=BB10_12 Depth=2
	ld.d	$a0, $s5, 8
	bne	$a0, $s5, .LBB10_17
	b	.LBB10_19
	.p2align	4, , 16
.LBB10_16:                              #   in Loop: Header=BB10_12 Depth=2
	ld.d	$a4, $s3, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	beq	$a0, $s5, .LBB10_19
.LBB10_17:                              #   in Loop: Header=BB10_12 Depth=2
	ld.d	$a1, $a0, 8
	beq	$a1, $s5, .LBB10_19
# %bb.18:                               #   in Loop: Header=BB10_12 Depth=2
	ld.d	$a1, $a1, 8
	bne	$a1, $s5, .LBB10_20
	.p2align	4, , 16
.LBB10_19:                              #   in Loop: Header=BB10_12 Depth=2
	ld.d	$a4, $s3, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
.LBB10_20:                              #   in Loop: Header=BB10_12 Depth=2
	move	$s2, $a0
	.p2align	4, , 16
.LBB10_21:                              #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 16
	ld.bu	$a1, $s2, 32
	beqz	$a1, .LBB10_21
# %bb.22:                               #   in Loop: Header=BB10_12 Depth=2
	addi.d	$a1, $a1, -11
	bltu	$a1, $s7, .LBB10_24
# %bb.23:                               #   in Loop: Header=BB10_12 Depth=2
	ld.d	$a4, $s3, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
.LBB10_24:                              # %.loopexit66
                                        #   in Loop: Header=BB10_12 Depth=2
	ld.d	$a0, $a0, 8
	ld.d	$s8, $a0, 8
	.p2align	4, , 16
.LBB10_25:                              #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB10_25
# %bb.26:                               #   in Loop: Header=BB10_12 Depth=2
	addi.d	$a0, $a0, -11
	bgeu	$a0, $s7, .LBB10_28
# %bb.27:                               # %.loopexit
                                        #   in Loop: Header=BB10_12 Depth=2
	ld.b	$a0, $s5, 60
	addi.d	$s8, $s8, 64
	addi.d	$s5, $s2, 64
	bgez	$a0, .LBB10_11
	b	.LBB10_29
	.p2align	4, , 16
.LBB10_28:                              #   in Loop: Header=BB10_12 Depth=2
	ld.d	$a4, $s3, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s5, 60
	addi.d	$s8, $s8, 64
	addi.d	$s5, $s2, 64
	bgez	$a0, .LBB10_11
.LBB10_29:                              #   in Loop: Header=BB10_12 Depth=2
	andi	$a0, $a0, 127
	pcaddu18i	$ra, %call36(MapEncodingName)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	move	$a0, $fp
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s8
	move	$a5, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s8
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 8
	bne	$s4, $s6, .LBB10_12
	b	.LBB10_5
.LBB10_30:                              # %._crit_edge
	ori	$a0, $zero, 10
	move	$a1, $fp
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end10:
	.size	FontPrintAll, .Lfunc_end10-FontPrintAll
                                        # -- End function
	.globl	FontPrintPageSetup              # -- Begin function FontPrintPageSetup
	.p2align	5
	.type	FontPrintPageSetup,@function
FontPrintPageSetup:                     # @FontPrintPageSetup
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
	pcalau12i	$a0, %pc_hi20(font_root)
	ld.d	$a0, $a0, %pc_lo12(font_root)
	beqz	$a0, .LBB11_2
# %bb.1:
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB11_3
.LBB11_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a5, $a0, %pc_lo12(.L.str.53)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB11_3:
	pcalau12i	$s5, %pc_hi20(font_used)
	ld.d	$a0, $s5, %pc_lo12(font_used)
	beqz	$a0, .LBB11_5
# %bb.4:
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 17
	beq	$a1, $a2, .LBB11_6
.LBB11_5:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a5, $a0, %pc_lo12(.L.str.63)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(font_used)
.LBB11_6:
	ld.d	$s6, $a0, 8
	beq	$s6, $a0, .LBB11_22
# %bb.7:                                # %.preheader.preheader
	ori	$s7, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s8, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$fp, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(BackEnd)
	ld.d	$s1, $a0, %got_pc_lo12(BackEnd)
	pcalau12i	$s2, %pc_hi20(font_curr_page)
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB11_9
	.p2align	4, , 16
.LBB11_8:                               # %.loopexit
                                        #   in Loop: Header=BB11_9 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a4, $a0, 64
	ld.w	$a1, $s2, %pc_lo12(font_curr_page)
	addi.d	$a2, $s0, 64
	addi.d	$a3, $s3, 64
	move	$a0, $s4
	jirl	$ra, $a4, 0
	ld.d	$s6, $s6, 8
	ld.d	$a0, $s5, %pc_lo12(font_used)
	beq	$s6, $a0, .LBB11_22
.LBB11_9:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_10 Depth 2
                                        #     Child Loop BB11_15 Depth 2
                                        #     Child Loop BB11_18 Depth 2
	move	$s4, $s6
	.p2align	4, , 16
.LBB11_10:                              #   Parent Loop BB11_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB11_10
# %bb.11:                               #   in Loop: Header=BB11_9 Depth=1
	addi.d	$a0, $a0, -11
	bgeu	$a0, $s7, .LBB11_21
# %bb.12:                               # %.loopexit36
                                        #   in Loop: Header=BB11_9 Depth=1
	ld.d	$s0, $s4, 8
	bne	$s0, $s4, .LBB11_14
.LBB11_13:                              #   in Loop: Header=BB11_9 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, 8
.LBB11_14:                              #   in Loop: Header=BB11_9 Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$s3, $a0, 8
	.p2align	4, , 16
.LBB11_15:                              #   Parent Loop BB11_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB11_15
# %bb.16:                               #   in Loop: Header=BB11_9 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$a0, $s7, .LBB11_18
# %bb.17:                               #   in Loop: Header=BB11_9 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, 8
	.p2align	4, , 16
.LBB11_18:                              # %.loopexit35
                                        #   Parent Loop BB11_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB11_18
# %bb.19:                               # %.loopexit35
                                        #   in Loop: Header=BB11_9 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$a0, $s7, .LBB11_8
# %bb.20:                               #   in Loop: Header=BB11_9 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB11_8
	.p2align	4, , 16
.LBB11_21:                              #   in Loop: Header=BB11_9 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, 8
	bne	$s0, $s4, .LBB11_14
	b	.LBB11_13
.LBB11_22:                              # %._crit_edge
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
.Lfunc_end11:
	.size	FontPrintPageSetup, .Lfunc_end11-FontPrintPageSetup
                                        # -- End function
	.globl	FontPrintPageResources          # -- Begin function FontPrintPageResources
	.p2align	5
	.type	FontPrintPageResources,@function
FontPrintPageResources:                 # @FontPrintPageResources
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
	pcalau12i	$a0, %pc_hi20(font_root)
	ld.d	$a0, $a0, %pc_lo12(font_root)
	beqz	$a0, .LBB12_2
# %bb.1:
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB12_3
.LBB12_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a5, $a0, %pc_lo12(.L.str.53)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB12_3:
	pcalau12i	$s5, %pc_hi20(font_used)
	ld.d	$a0, $s5, %pc_lo12(font_used)
	beqz	$a0, .LBB12_5
# %bb.4:
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 17
	beq	$a1, $a2, .LBB12_6
.LBB12_5:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a5, $a0, %pc_lo12(.L.str.63)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(font_used)
.LBB12_6:
	ld.d	$s6, $a0, 8
	beq	$s6, $a0, .LBB12_26
# %bb.7:                                # %.preheader46.preheader
	ori	$s1, $zero, 1
	ori	$s7, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s8, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$fp, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(BackEnd)
	ld.d	$s2, $a0, %got_pc_lo12(BackEnd)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB12_10
	.p2align	4, , 16
.LBB12_8:                               #   in Loop: Header=BB12_10 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 72
	move	$a0, $s4
	move	$a1, $s1
	jirl	$ra, $a2, 0
	ld.d	$s0, $s5, %pc_lo12(font_used)
	move	$s1, $zero
.LBB12_9:                               # %.loopexit
                                        #   in Loop: Header=BB12_10 Depth=1
	ld.d	$s6, $s6, 8
	beq	$s6, $s0, .LBB12_26
.LBB12_10:                              # %.preheader46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_11 Depth 2
                                        #     Child Loop BB12_16 Depth 2
                                        #     Child Loop BB12_20 Depth 2
                                        #       Child Loop BB12_22 Depth 3
                                        #       Child Loop BB12_24 Depth 3
	move	$s3, $s6
	.p2align	4, , 16
.LBB12_11:                              #   Parent Loop BB12_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB12_11
# %bb.12:                               #   in Loop: Header=BB12_10 Depth=1
	addi.d	$a0, $a0, -11
	bgeu	$a0, $s7, .LBB12_14
# %bb.13:                               # %.loopexit47
                                        #   in Loop: Header=BB12_10 Depth=1
	ld.d	$s4, $s3, 8
	bne	$s4, $s3, .LBB12_16
	b	.LBB12_15
	.p2align	4, , 16
.LBB12_14:                              #   in Loop: Header=BB12_10 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s3, 8
	bne	$s4, $s3, .LBB12_16
.LBB12_15:                              #   in Loop: Header=BB12_10 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s3, 8
	.p2align	4, , 16
.LBB12_16:                              #   Parent Loop BB12_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB12_16
# %bb.17:                               #   in Loop: Header=BB12_10 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$a0, $s7, .LBB12_19
# %bb.18:                               #   in Loop: Header=BB12_10 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB12_19:                              # %.loopexit45
                                        #   in Loop: Header=BB12_10 Depth=1
	ld.d	$s0, $s5, %pc_lo12(font_used)
	addi.d	$s4, $s4, 64
	move	$s3, $s0
	.p2align	4, , 16
.LBB12_20:                              #   Parent Loop BB12_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_22 Depth 3
                                        #       Child Loop BB12_24 Depth 3
	ld.d	$s3, $s3, 8
	beq	$s3, $s6, .LBB12_8
# %bb.21:                               # %.preheader.preheader
                                        #   in Loop: Header=BB12_20 Depth=2
	move	$a0, $s3
	.p2align	4, , 16
.LBB12_22:                              # %.preheader
                                        #   Parent Loop BB12_10 Depth=1
                                        #     Parent Loop BB12_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB12_22
# %bb.23:                               #   in Loop: Header=BB12_20 Depth=2
	ld.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB12_24:                              #   Parent Loop BB12_10 Depth=1
                                        #     Parent Loop BB12_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB12_24
# %bb.25:                               #   in Loop: Header=BB12_20 Depth=2
	addi.d	$a0, $a0, 64
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_20
	b	.LBB12_9
.LBB12_26:                              # %._crit_edge
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
.Lfunc_end12:
	.size	FontPrintPageResources, .Lfunc_end12-FontPrintPageResources
                                        # -- End function
	.globl	FontAdvanceCurrentPage          # -- Begin function FontAdvanceCurrentPage
	.p2align	5
	.type	FontAdvanceCurrentPage,@function
FontAdvanceCurrentPage:                 # @FontAdvanceCurrentPage
# %bb.0:
	pcalau12i	$a0, %pc_hi20(font_used)
	ld.d	$a0, $a0, %pc_lo12(font_used)
	ld.d	$a7, $a0, 8
	beq	$a7, $a0, .LBB13_7
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	pcalau12i	$a6, %got_pc_hi20(zz_res)
	ld.d	$a6, $a6, %got_pc_lo12(zz_res)
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	ld.bu	$t0, $a7, 32
	addi.d	$t1, $t0, -11
	sltui	$t1, $t1, 2
	addi.d	$t2, $a7, 33
	add.d	$t0, $a3, $t0
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $t2, $t1
	or	$t0, $t1, $t0
	ld.bu	$t0, $t0, 0
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a5, $t1
	st.d	$a7, $a2, 0
	st.w	$t0, $a4, 0
	st.d	$t1, $a7, 0
	ld.w	$a7, $a4, 0
	ld.d	$t0, $a2, 0
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a5, $a7
	ld.d	$a7, $a0, 8
	beq	$a7, $a0, .LBB13_7
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a7, 24
	st.d	$a7, $a1, 0
	beq	$t0, $a7, .LBB13_5
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	ld.d	$t1, $a7, 16
	st.d	$t0, $a6, 0
	st.d	$t1, $t0, 16
	st.d	$t0, $t1, 24
	st.d	$a7, $a7, 24
	st.d	$a7, $a7, 16
.LBB13_5:                               #   in Loop: Header=BB13_3 Depth=1
	ld.d	$t0, $a7, 8
	st.d	$a7, $a2, 0
	beq	$t0, $a7, .LBB13_2
# %bb.6:                                #   in Loop: Header=BB13_3 Depth=1
	st.d	$t0, $a6, 0
	ld.d	$a7, $a7, 0
	st.d	$a7, $t0, 0
	ld.d	$t0, $a2, 0
	ld.d	$a7, $a6, 0
	ld.d	$t1, $t0, 0
	st.d	$a7, $t1, 8
	st.d	$t0, $t0, 0
	ld.d	$a7, $a1, 0
	st.d	$t0, $t0, 8
	b	.LBB13_2
.LBB13_7:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(font_curr_page)
	ld.w	$a1, $a0, %pc_lo12(font_curr_page)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(font_curr_page)
	ret
.Lfunc_end13:
	.size	FontAdvanceCurrentPage, .Lfunc_end13-FontAdvanceCurrentPage
                                        # -- End function
	.globl	FontPageUsed                    # -- Begin function FontPageUsed
	.p2align	5
	.type	FontPageUsed,@function
FontPageUsed:                           # @FontPageUsed
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.hu	$a0, $a0, 42
	pcalau12i	$s0, %pc_hi20(font_curr_page)
	ld.w	$a1, $s0, %pc_lo12(font_curr_page)
	blt	$a0, $a1, .LBB14_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a5, $a0, %pc_lo12(.L.str.69)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB14_2:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB14_4
# %bb.3:
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB14_5
.LBB14_4:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB14_5:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	pcalau12i	$a3, %pc_hi20(font_used)
	ld.d	$a4, $a3, %pc_lo12(font_used)
	st.d	$a0, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB14_7
# %bb.6:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a2, 0
	ld.d	$a0, $a1, 0
	st.d	$a4, $a6, 8
	st.d	$a0, $a2, 0
	st.d	$fp, $a3, 0
	bnez	$a0, .LBB14_8
	b	.LBB14_9
.LBB14_7:                               # %.thread
	st.d	$fp, $a3, 0
.LBB14_8:
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB14_9:
	ld.h	$a0, $s0, %pc_lo12(font_curr_page)
	st.h	$a0, $fp, 42
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	FontPageUsed, .Lfunc_end14-FontPageUsed
                                        # -- End function
	.globl	FontNeeded                      # -- Begin function FontNeeded
	.p2align	5
	.type	FontNeeded,@function
FontNeeded:                             # @FontNeeded
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
	pcalau12i	$a1, %pc_hi20(font_root)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(font_root)
	ld.d	$s5, $a1, 8
	beq	$s5, $a1, .LBB15_15
# %bb.1:                                # %.preheader31.preheader
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcalau12i	$a2, %pc_hi20(.L.str.71)
	addi.d	$a2, $a2, %pc_lo12(.L.str.71)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.72)
	addi.d	$s6, $a2, %pc_lo12(.L.str.72)
	ori	$s7, $zero, 2
	pcalau12i	$a2, %pc_hi20(.L.str.70)
	addi.d	$s0, $a2, %pc_lo12(.L.str.70)
	pcalau12i	$a2, %got_pc_hi20(no_fpos)
	ld.d	$a2, $a2, %got_pc_lo12(no_fpos)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.68)
	addi.d	$s2, $a2, %pc_lo12(.L.str.68)
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_2:                               # %.loopexit30.loopexit
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(font_root)
	move	$a0, $zero
.LBB15_3:                               # %.loopexit30
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$s5, $s5, 8
	beq	$s5, $a1, .LBB15_16
.LBB15_4:                               # %.preheader31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_5 Depth 2
                                        #     Child Loop BB15_9 Depth 2
                                        #       Child Loop BB15_10 Depth 3
                                        #       Child Loop BB15_12 Depth 3
	move	$s4, $s5
	.p2align	4, , 16
.LBB15_5:                               #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a2, $s4, 32
	beqz	$a2, .LBB15_5
# %bb.6:                                # %.preheader29
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$s3, $s4, 8
	beq	$s3, $s4, .LBB15_3
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	b	.LBB15_9
	.p2align	4, , 16
.LBB15_8:                               # %.loopexit
                                        #   in Loop: Header=BB15_9 Depth=2
	addi.d	$a3, $s8, 64
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 8
	move	$a2, $s6
	beq	$s3, $s4, .LBB15_2
.LBB15_9:                               # %.preheader
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_10 Depth 3
                                        #       Child Loop BB15_12 Depth 3
	move	$a0, $s3
	.p2align	4, , 16
.LBB15_10:                              #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB15_10
# %bb.11:                               #   in Loop: Header=BB15_9 Depth=2
	ld.d	$s8, $a0, 8
	.p2align	4, , 16
.LBB15_12:                              #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB15_12
# %bb.13:                               #   in Loop: Header=BB15_9 Depth=2
	addi.d	$a0, $a0, -11
	bltu	$a0, $s7, .LBB15_8
# %bb.14:                               #   in Loop: Header=BB15_9 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$s1, $a2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $zero
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	b	.LBB15_8
.LBB15_15:
	ori	$a0, $zero, 1
.LBB15_16:                              # %._crit_edge
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
.Lfunc_end15:
	.size	FontNeeded, .Lfunc_end15-FontNeeded
                                        # -- End function
	.p2align	5                               # -- Begin function ReadCharMetrics
	.type	ReadCharMetrics,@function
ReadCharMetrics:                        # @ReadCharMetrics
# %bb.0:
	addi.d	$sp, $sp, -1296
	st.d	$ra, $sp, 1288                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1208                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s8, $sp, 1296
	ld.d	$s1, $a0, 8
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	move	$s2, $a6
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	move	$s4, $a4
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	move	$s6, $a1
	.p2align	4, , 16
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB16_1
# %bb.2:                                # %.preheader163
	addi.d	$a0, $sp, 696
	ori	$a1, $zero, 512
	addi.d	$s0, $sp, 696
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_55
# %bb.3:                                # %.lr.ph188
	addi.d	$a0, $s1, 32
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s3, $sp, 697
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s7, $zero, 32
	ori	$s1, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	sltu	$a0, $zero, $s6
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s5, $zero, 59
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	b	.LBB16_7
.LBB16_4:                               #   in Loop: Header=BB16_7 Depth=1
	alsl.d	$a2, $s6, $a0, 1
	add.d	$a3, $s2, $a2
	st.h	$zero, $a3, 4
	pcalau12i	$a1, %got_pc_hi20(PlainCharHeight)
	ld.d	$a1, $a1, %got_pc_lo12(PlainCharHeight)
	ld.wu	$a1, $a1, 0
	srli.d	$a4, $a1, 31
	add.d	$a1, $a1, $a4
	bstrpick.d	$a4, $a1, 31, 1
	sub.d	$a1, $zero, $a4
	st.h	$a1, $a3, 2
	pcalau12i	$a1, %got_pc_hi20(PlainCharWidth)
	ld.d	$a1, $a1, %got_pc_lo12(PlainCharWidth)
	ld.h	$a5, $a1, 0
	move	$a1, $zero
	st.h	$a5, $a3, 6
	stx.h	$a4, $s2, $a2
.LBB16_5:                               # %._crit_edge.thread.sink.split
                                        #   in Loop: Header=BB16_7 Depth=1
	alsl.d	$a0, $s6, $a0, 1
	add.d	$a0, $s2, $a0
	st.h	$a1, $a0, 8
.LBB16_6:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB16_7 Depth=1
	addi.d	$a0, $sp, 696
	ori	$a1, $zero, 512
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_55
.LBB16_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_10 Depth 2
                                        #     Child Loop BB16_14 Depth 2
                                        #       Child Loop BB16_23 Depth 3
                                        #       Child Loop BB16_33 Depth 3
                                        #         Child Loop BB16_29 Depth 4
                                        #         Child Loop BB16_31 Depth 4
                                        #       Child Loop BB16_40 Depth 3
                                        #       Child Loop BB16_43 Depth 3
	addi.d	$a0, $sp, 696
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_55
# %bb.8:                                #   in Loop: Header=BB16_7 Depth=1
	addi.d	$a0, $sp, 696
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_55
# %bb.9:                                #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $a2, 0
	.p2align	4, , 16
.LBB16_10:                              #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $a0, $s0
	addi.d	$a0, $a0, 1
	beq	$a1, $s7, .LBB16_10
# %bb.11:                               # %.preheader162
                                        #   in Loop: Header=BB16_7 Depth=1
	addi.d	$s2, $a0, -1
	bstrpick.d	$a0, $s2, 31, 0
	ldx.bu	$a1, $a0, $s0
	beq	$a1, $s1, .LBB16_6
# %bb.12:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	move	$s6, $zero
	add.d	$s8, $s0, $a0
	b	.LBB16_14
	.p2align	4, , 16
.LBB16_13:                              # %.loopexit159
                                        #   in Loop: Header=BB16_14 Depth=2
	addi.w	$a0, $s2, 0
	ldx.bu	$a1, $a0, $s0
	add.d	$s8, $s0, $a0
	beq	$a1, $s1, .LBB16_44
.LBB16_14:                              # %.lr.ph
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_23 Depth 3
                                        #       Child Loop BB16_33 Depth 3
                                        #         Child Loop BB16_29 Depth 4
                                        #         Child Loop BB16_31 Depth 4
                                        #       Child Loop BB16_40 Depth 3
                                        #       Child Loop BB16_43 Depth 3
	addi.d	$a2, $sp, 184
	move	$a0, $s8
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 184
	ori	$a1, $zero, 78
	beq	$a0, $a1, .LBB16_36
# %bb.15:                               #   in Loop: Header=BB16_14 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	addi.d	$a0, $sp, 184
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_37
# %bb.16:                               #   in Loop: Header=BB16_14 Depth=2
	ld.hu	$a0, $sp, 184
	ori	$a1, $zero, 66
	beq	$a0, $a1, .LBB16_38
# %bb.17:                               #   in Loop: Header=BB16_14 Depth=2
	ld.hu	$a0, $sp, 184
	ori	$a1, $zero, 76
	bne	$a0, $a1, .LBB16_39
# %bb.18:                               #   in Loop: Header=BB16_14 Depth=2
	pcalau12i	$a0, %got_pc_hi20(BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(BackEnd)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 40
	beqz	$a0, .LBB16_39
# %bb.19:                               #   in Loop: Header=BB16_14 Depth=2
	beqz	$s6, .LBB16_39
# %bb.20:                               #   in Loop: Header=BB16_14 Depth=2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.bu	$a0, $a2, $s6
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_22
# %bb.21:                               #   in Loop: Header=BB16_14 Depth=2
	ld.b	$a0, $s4, 0
	stx.b	$a0, $a2, $s6
.LBB16_22:                              #   in Loop: Header=BB16_14 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 0
	stx.b	$s6, $a2, $a0
	addi.w	$a0, $s2, 0
	.p2align	4, , 16
.LBB16_23:                              #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a1, $s3, $a0
	addi.d	$s2, $a0, 1
	move	$a0, $s2
	beq	$a1, $s7, .LBB16_23
	b	.LBB16_33
	.p2align	4, , 16
.LBB16_24:                              #   in Loop: Header=BB16_33 Depth=3
	add.d	$a0, $s0, $s8
	pcalau12i	$a1, %pc_hi20(.L.str.92)
	addi.d	$a1, $a1, %pc_lo12(.L.str.92)
	addi.d	$a2, $sp, 184
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 60
	andi	$a1, $a0, 127
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(MapCharEncoding)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_26
# %bb.25:                               #   in Loop: Header=BB16_33 Depth=3
	ld.w	$a1, $s4, 0
	addi.d	$a2, $a1, 1
	st.w	$a2, $s4, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	stx.b	$a0, $a2, $a1
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 508
	blt	$a0, $a1, .LBB16_29
	b	.LBB16_27
	.p2align	4, , 16
.LBB16_26:                              #   in Loop: Header=BB16_33 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a7, $a1, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a2, $a0, %pc_lo12(.L.str.140)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 184
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	stx.b	$a1, $a0, $s6
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 508
	blt	$a0, $a1, .LBB16_29
.LBB16_27:                              #   in Loop: Header=BB16_33 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a2, $a0, %pc_lo12(.L.str.141)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB16_29
	.p2align	4, , 16
.LBB16_28:                              #   in Loop: Header=BB16_29 Depth=4
	addi.d	$s8, $s8, 1
.LBB16_29:                              #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_14 Depth=2
                                        #       Parent Loop BB16_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$a0, $s8, $s0
	beq	$a0, $s5, .LBB16_31
# %bb.30:                               #   in Loop: Header=BB16_29 Depth=4
	bne	$a0, $s7, .LBB16_28
	.p2align	4, , 16
.LBB16_31:                              # %.critedge6
                                        #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_14 Depth=2
                                        #       Parent Loop BB16_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$a0, $s8, $s0
	addi.d	$s8, $s8, 1
	beq	$a0, $s7, .LBB16_31
# %bb.32:                               # %.loopexit
                                        #   in Loop: Header=BB16_33 Depth=3
	addi.d	$s2, $s8, -1
.LBB16_33:                              # %.preheader161
                                        #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_29 Depth 4
                                        #         Child Loop BB16_31 Depth 4
	addi.w	$s8, $s2, 0
	ldx.bu	$a0, $s8, $s0
	beq	$a0, $s1, .LBB16_35
# %bb.34:                               # %.preheader161
                                        #   in Loop: Header=BB16_33 Depth=3
	bne	$a0, $s5, .LBB16_24
.LBB16_35:                              # %.critedge4
                                        #   in Loop: Header=BB16_14 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	stx.b	$zero, $a1, $a0
	addi.w	$s2, $s2, 0
	ldx.bu	$a0, $s2, $s0
	bne	$a0, $s1, .LBB16_40
	b	.LBB16_13
	.p2align	4, , 16
.LBB16_36:                              #   in Loop: Header=BB16_14 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	addi.d	$a2, $sp, 184
	move	$a0, $s8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 60
	andi	$a1, $a0, 127
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(MapCharEncoding)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.w	$s2, $s2, 0
	ldx.bu	$a0, $s2, $s0
	bne	$a0, $s1, .LBB16_40
	b	.LBB16_13
	.p2align	4, , 16
.LBB16_37:                              #   in Loop: Header=BB16_14 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a1, $a0, %pc_lo12(.L.str.136)
	addi.d	$a2, $sp, 180
	move	$a0, $s8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 180
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s2, $s2, 0
	ldx.bu	$a0, $s2, $s0
	bne	$a0, $s1, .LBB16_40
	b	.LBB16_13
.LBB16_38:                              #   in Loop: Header=BB16_14 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a1, $a0, %pc_lo12(.L.str.138)
	addi.d	$a2, $sp, 176
	addi.d	$a3, $sp, 172
	addi.d	$a4, $sp, 168
	addi.d	$a5, $sp, 164
	move	$a0, $s8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 176
	fld.s	$fa1, $sp, 172
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	fld.s	$fa0, $sp, 168
	ftintrz.w.s	$fa1, $fa1
	fld.s	$fa2, $sp, 164
	movfr2gr.s	$a0, $fa1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ftintrz.w.s	$fa0, $fa2
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB16_39:                              #   in Loop: Header=BB16_14 Depth=2
	addi.w	$s2, $s2, 0
	ldx.bu	$a0, $s2, $s0
	beq	$a0, $s1, .LBB16_13
	.p2align	4, , 16
.LBB16_40:                              #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a0, $s5, .LBB16_42
# %bb.41:                               #   in Loop: Header=BB16_40 Depth=3
	addi.d	$s2, $s2, 1
	ldx.bu	$a0, $s2, $s0
	bne	$a0, $s1, .LBB16_40
	b	.LBB16_13
	.p2align	4, , 16
.LBB16_42:                              #   in Loop: Header=BB16_14 Depth=2
	move	$a0, $s2
	.p2align	4, , 16
.LBB16_43:                              # %.preheader
                                        #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a1, $s3, $a0
	addi.d	$s2, $a0, 1
	move	$a0, $s2
	beq	$a1, $s7, .LBB16_43
	b	.LBB16_13
	.p2align	4, , 16
.LBB16_44:                              # %._crit_edge
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	beqz	$s6, .LBB16_6
# %bb.45:                               #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB16_48
# %bb.46:                               #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB16_49
.LBB16_47:                              #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s6
	bnez	$a0, .LBB16_50
	b	.LBB16_53
.LBB16_48:                              #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a2, $a0, %pc_lo12(.L.str.142)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 3
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bnez	$a0, .LBB16_47
.LBB16_49:                              #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a2, $a0, %pc_lo12(.L.str.143)
	ori	$a0, $zero, 37
	ori	$a1, $zero, 4
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s6
	beqz	$a0, .LBB16_53
.LBB16_50:                              #   in Loop: Header=BB16_7 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_52
# %bb.51:                               #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	stx.b	$zero, $a0, $s6
	b	.LBB16_53
.LBB16_52:                              #   in Loop: Header=BB16_7 Depth=1
	ld.w	$a0, $s4, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	stx.b	$zero, $a1, $a0
.LBB16_53:                              #   in Loop: Header=BB16_7 Depth=1
	pcalau12i	$a0, %got_pc_hi20(BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(BackEnd)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 40
	slli.d	$a0, $s6, 3
	beqz	$a1, .LBB16_4
# %bb.54:                               #   in Loop: Header=BB16_7 Depth=1
	alsl.d	$a1, $s6, $a0, 1
	add.d	$a2, $s2, $a1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.h	$a3, $a2, 4
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a3, $a3, $a4
	st.h	$a3, $a2, 2
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a3, $a5, 0
	st.h	$a5, $a2, 6
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a2, $a2, $a4
	stx.h	$a2, $s2, $a1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a1, $a4, 0
	sltui	$a1, $a1, 1
	sltui	$a2, $a3, 1
	sub.d	$a3, $a4, $a5
	masknez	$a2, $a3, $a2
	masknez	$a1, $a2, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a2
	b	.LBB16_5
.LBB16_55:                              # %.critedge
	ld.d	$s8, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1288                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1296
	ret
.Lfunc_end16:
	.size	ReadCharMetrics, .Lfunc_end16-ReadCharMetrics
                                        # -- End function
	.type	font_curr_page,@object          # @font_curr_page
	.bss
	.globl	font_curr_page
	.p2align	2, 0x0
font_curr_page:
	.word	0                               # 0x0
	.size	font_curr_page, 4

	.type	font_count,@object              # @font_count
	.local	font_count
	.comm	font_count,4,4
	.type	font_root,@object               # @font_root
	.local	font_root
	.comm	font_root,8,8
	.type	font_used,@object               # @font_used
	.local	font_used
	.comm	font_used,8,8
	.type	font_seqnum,@object             # @font_seqnum
	.local	font_seqnum
	.comm	font_seqnum,4,4
	.type	finfo,@object                   # @finfo
	.globl	finfo
	.p2align	3, 0x0
finfo:
	.dword	0
	.size	finfo, 8

	.type	finfo_size,@object              # @finfo_size
	.local	finfo_size
	.comm	finfo_size,4,4
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"@FontDef"
	.size	.L.str.1, 9

	.type	FontDefSym,@object              # @FontDefSym
	.local	FontDefSym
	.comm	FontDefSym,8,8
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"@Tag"
	.size	.L.str.2, 5

	.type	fd_tag,@object                  # @fd_tag
	.local	fd_tag
	.comm	fd_tag,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"@Family"
	.size	.L.str.3, 8

	.type	fd_family,@object               # @fd_family
	.local	fd_family
	.comm	fd_family,8,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"@Face"
	.size	.L.str.4, 6

	.type	fd_face,@object                 # @fd_face
	.local	fd_face
	.comm	fd_face,8,8
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"@Name"
	.size	.L.str.5, 6

	.type	fd_name,@object                 # @fd_name
	.local	fd_name
	.comm	fd_name,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"@Metrics"
	.size	.L.str.6, 9

	.type	fd_metrics,@object              # @fd_metrics
	.local	fd_metrics
	.comm	fd_metrics,8,8
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"@ExtraMetrics"
	.size	.L.str.7, 14

	.type	fd_extra_metrics,@object        # @fd_extra_metrics
	.local	fd_extra_metrics
	.comm	fd_extra_metrics,8,8
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"@Mapping"
	.size	.L.str.8, 9

	.type	fd_mapping,@object              # @fd_mapping
	.local	fd_mapping
	.comm	fd_mapping,8,8
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"@Recode"
	.size	.L.str.9, 8

	.type	fd_recode,@object               # @fd_recode
	.local	fd_recode
	.comm	fd_recode,8,8
	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"assert failed in %s"
	.size	.L.str.10, 20

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"FontChange: font_count!"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"smallcaps"
	.size	.L.str.12, 10

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"nosmallcaps"
	.size	.L.str.13, 12

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.space	1
	.size	.L.str.14, 1

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"error in left parameter of %s"
	.size	.L.str.15, 30

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"@Font"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"FontChange: num!"
	.size	.L.str.17, 17

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"initial font must have family, face and size"
	.size	.L.str.18, 45

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"FontChange: Up(finfo[font(*style)].font_table) !"
	.size	.L.str.19, 49

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"FontChange: type(tmpf)!"
	.size	.L.str.20, 24

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"FontChange: Up(tmpf)!"
	.size	.L.str.21, 22

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"FontChange: type(family)!"
	.size	.L.str.22, 26

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"FontChange: type(face)!"
	.size	.L.str.23, 24

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"FontChange: Up(face)!"
	.size	.L.str.24, 22

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"FontChange requested_face!"
	.size	.L.str.26, 27

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"font family name %s must be followed by a face name"
	.size	.L.str.27, 52

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"there is no font with family name %s and face name %s"
	.size	.L.str.28, 54

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"FontChange: no children!"
	.size	.L.str.29, 25

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"FontChange: 1 child!"
	.size	.L.str.30, 21

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"FontChange: 2 children!"
	.size	.L.str.31, 24

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"syntax error in font size %s; ignoring it"
	.size	.L.str.32, 42

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"no current font on which to base size change %s"
	.size	.L.str.33, 48

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"FontChange: %d"
	.size	.L.str.34, 15

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%s %s ignored (result is not positive)"
	.size	.L.str.35, 39

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"too many different fonts and sizes (max is %d)"
	.size	.L.str.36, 47

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"run out of memory when increasing font table size"
	.size	.L.str.37, 50

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"FontChange: old!"
	.size	.L.str.38, 17

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"run out of memory when changing font or font size"
	.size	.L.str.39, 50

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"FontWordSize: !is_word(type(x))!"
	.size	.L.str.40, 33

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"no current font at word %s"
	.size	.L.str.41, 27

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"no current colour at word %s"
	.size	.L.str.42, 29

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"no current language at word %s"
	.size	.L.str.43, 31

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	" "
	.size	.L.str.44, 2

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"character %s replaced by space (it has no glyph in font %s)"
	.size	.L.str.45, 60

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"FontSize!"
	.size	.L.str.46, 10

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"no current font at this point"
	.size	.L.str.47, 30

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"FontHalfXHeight!"
	.size	.L.str.48, 17

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"FontMapping!"
	.size	.L.str.49, 13

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"FontName!"
	.size	.L.str.50, 10

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"FontFamiliy!"
	.size	.L.str.51, 13

	.type	FontFamilyAndFace.buff,@object  # @FontFamilyAndFace.buff
	.local	FontFamilyAndFace.buff
	.comm	FontFamilyAndFace.buff,80,1
	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"family and face names %s %s are too long"
	.size	.L.str.52, 41

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"FontDebug: font_root!"
	.size	.L.str.53, 22

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"FontPrintAll: family!"
	.size	.L.str.54, 22

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"FontPrintAll: face!"
	.size	.L.str.55, 20

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"FontDebug: Down(face)!"
	.size	.L.str.56, 23

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"FontPrintAll: ps_name!"
	.size	.L.str.57, 23

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"FontPrintAll: first_size!"
	.size	.L.str.58, 26

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"/%s%s %s /%s LoutRecode\n"
	.size	.L.str.59, 25

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"/%s { /%s%s LoutFont } def\n"
	.size	.L.str.60, 28

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"/%s { /%s LoutFont } def\n"
	.size	.L.str.61, 26

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"FontDebug: font_used!"
	.size	.L.str.63, 22

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"FontPrintPageSetup: face!"
	.size	.L.str.64, 26

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"FontPrintPageSetup: first_size!"
	.size	.L.str.65, 32

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"FontPrintPageSetup: ps_name!"
	.size	.L.str.66, 29

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"FontPrintPageResources: face!"
	.size	.L.str.67, 30

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"FontPrintPageResources: ps_name!"
	.size	.L.str.68, 33

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"FontPageUsed!"
	.size	.L.str.69, 14

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"%s font %s\n"
	.size	.L.str.70, 12

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"%%DocumentNeededResources:"
	.size	.L.str.71, 27

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"%%+"
	.size	.L.str.72, 4

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"unable to set font %s %s (no font databases loaded)"
	.size	.L.str.73, 52

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"%s-%s"
	.size	.L.str.74, 6

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"cannot read %s for %s"
	.size	.L.str.75, 22

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"FontRead: type(y) != PAR!"
	.size	.L.str.76, 26

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"font family name %s incompatible with %s value %s"
	.size	.L.str.77, 50

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"font face name %s incompatible with %s value %s"
	.size	.L.str.78, 48

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"illegal font name (quotes needed?)"
	.size	.L.str.79, 35

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"illegal font metrics file name (quotes needed?)"
	.size	.L.str.80, 48

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"illegal font extra metrics file name (quotes needed?)"
	.size	.L.str.81, 54

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"illegal mapping file name (quotes needed?)"
	.size	.L.str.82, 43

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"illegal value of %s"
	.size	.L.str.83, 20

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"FontRead: cannot identify component of FontDef"
	.size	.L.str.84, 47

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"font %s %s already defined, at%s"
	.size	.L.str.85, 33

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"Yes"
	.size	.L.str.87, 4

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"expecting either Yes or No here"
	.size	.L.str.88, 32

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"too many different fonts and sizes (maximum is %d)"
	.size	.L.str.89, 51

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"fnt"
	.size	.L.str.90, 4

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"cannot open font file %s"
	.size	.L.str.91, 25

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"%s"
	.size	.L.str.92, 3

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"StartFontMetrics"
	.size	.L.str.93, 17

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"font file %s does not begin with StartFontMetrics"
	.size	.L.str.94, 50

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"run out of memory while reading font file %s"
	.size	.L.str.95, 45

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"EndFontMetrics\n"
	.size	.L.str.96, 16

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"UnderlinePosition"
	.size	.L.str.97, 18

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"UnderlinePosition found twice in font file (line %d)"
	.size	.L.str.98, 53

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"UnderlinePosition %f"
	.size	.L.str.99, 21

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"UnderlineThickness"
	.size	.L.str.100, 19

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"UnderlineThickness found twice in font file (line %d)"
	.size	.L.str.101, 54

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"UnderlineThickness %f"
	.size	.L.str.102, 22

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"XHeight"
	.size	.L.str.103, 8

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"XHeight found twice in font file (line %d)"
	.size	.L.str.104, 43

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"XHeight %f"
	.size	.L.str.105, 11

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"FontName"
	.size	.L.str.106, 9

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"FontName found twice in font file %s (line %d)"
	.size	.L.str.107, 47

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"FontName %s"
	.size	.L.str.108, 12

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"FontName empty in font file %s (line %d)"
	.size	.L.str.109, 41

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"FontName in font file (%s) and %s (%s) disagree"
	.size	.L.str.110, 48

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"IsFixedPitch"
	.size	.L.str.111, 13

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"IsFixedPitch %s"
	.size	.L.str.112, 16

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"true"
	.size	.L.str.113, 5

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"StartCharMetrics"
	.size	.L.str.114, 17

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"FontName missing in file %s"
	.size	.L.str.115, 28

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"StartKernPairs"
	.size	.L.str.116, 15

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"StartKernPairs %d"
	.size	.L.str.117, 18

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"syntax error on StartKernPairs line in font file %s (line %d)"
	.size	.L.str.118, 62

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"EndKernPairs"
	.size	.L.str.119, 13

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"KPX"
	.size	.L.str.120, 4

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"KPX %s %s %f"
	.size	.L.str.121, 13

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"syntax error in font file %s (line %d): %s"
	.size	.L.str.122, 43

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"non-contiguous kerning pair %s %s in font file %s (line %d)"
	.size	.L.str.123, 60

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"too many kerning pairs in font file %s (line %d)"
	.size	.L.str.124, 49

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"kerning pair %s %s appears twice in font file %s (line %d)"
	.size	.L.str.125, 59

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"EndFontMetrics missing from font file %s"
	.size	.L.str.126, 41

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"space"
	.size	.L.str.127, 6

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"cannot open extra font file %s"
	.size	.L.str.128, 31

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"StartExtraCharMetrics"
	.size	.L.str.129, 22

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"StartBuildComposites"
	.size	.L.str.130, 21

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"EndCharMetrics"
	.size	.L.str.131, 15

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"EndExtraCharMetrics"
	.size	.L.str.132, 20

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"N"
	.size	.L.str.133, 2

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"N %s"
	.size	.L.str.134, 5

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"WX"
	.size	.L.str.135, 3

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"WX %f"
	.size	.L.str.136, 6

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"B"
	.size	.L.str.137, 2

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"B %f %f %f %f"
	.size	.L.str.138, 14

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"L"
	.size	.L.str.139, 2

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"ignoring unencoded ligature character %s in font file %s (line %d)"
	.size	.L.str.140, 67

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"too many ligature characters in font file %s (line %d)"
	.size	.L.str.141, 55

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"WX missing in font file %s (line %d)"
	.size	.L.str.142, 37

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"B missing in font file %s (line %d)"
	.size	.L.str.143, 36

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"CC"
	.size	.L.str.144, 3

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"CC %s %d "
	.size	.L.str.145, 10

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"syntax error in extra font file %s (line %d)"
	.size	.L.str.146, 45

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"unknown character name %s in font file %s (line %d)"
	.size	.L.str.147, 52

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	" PCC %s %d %d"
	.size	.L.str.148, 14

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"too many composites in file %s (at line %d)"
	.size	.L.str.149, 44

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"EndBuildComposites"
	.size	.L.str.150, 19

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"missing EndBuildComposites in extra font file %s (line %d)"
	.size	.L.str.151, 59

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym FontFamilyAndFace.buff
