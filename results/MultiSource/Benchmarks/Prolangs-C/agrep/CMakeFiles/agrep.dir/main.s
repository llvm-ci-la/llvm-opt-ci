	.file	"main.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	1                               # 0x1
.LCPI0_1:
	.word	128                             # 0x80
	.word	64                              # 0x40
	.word	32                              # 0x20
	.word	16                              # 0x10
.LCPI0_2:
	.word	2048                            # 0x800
	.word	1024                            # 0x400
	.word	512                             # 0x200
	.word	256                             # 0x100
.LCPI0_3:
	.word	32768                           # 0x8000
	.word	16384                           # 0x4000
	.word	8192                            # 0x2000
	.word	4096                            # 0x1000
.LCPI0_4:
	.word	524288                          # 0x80000
	.word	262144                          # 0x40000
	.word	131072                          # 0x20000
	.word	65536                           # 0x10000
.LCPI0_5:
	.word	8388608                         # 0x800000
	.word	4194304                         # 0x400000
	.word	2097152                         # 0x200000
	.word	1048576                         # 0x100000
.LCPI0_6:
	.word	134217728                       # 0x8000000
	.word	67108864                        # 0x4000000
	.word	33554432                        # 0x2000000
	.word	16777216                        # 0x1000000
.LCPI0_7:
	.word	2147483648                      # 0x80000000
	.word	1073741824                      # 0x40000000
	.word	536870912                       # 0x20000000
	.word	268435456                       # 0x10000000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(NOUPPER)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(NOUPPER)
	pcalau12i	$a0, %pc_hi20(NOPROMPT)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(NOPROMPT)
	pcalau12i	$a0, %pc_hi20(BESTMATCH)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(BESTMATCH)
	pcalau12i	$a0, %pc_hi20(FNAME)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(FNAME)
	pcalau12i	$a0, %pc_hi20(REGEX)
	st.w	$zero, $a0, %pc_lo12(REGEX)
	pcalau12i	$a0, %pc_hi20(JUMP)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(JUMP)
	pcalau12i	$a0, %pc_hi20(SGREP)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(SGREP)
	pcalau12i	$a0, %pc_hi20(WHOLELINE)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(WHOLELINE)
	pcalau12i	$a0, %pc_hi20(LINENUM)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(LINENUM)
	pcalau12i	$a0, %pc_hi20(COUNT)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(COUNT)
	pcalau12i	$a0, %pc_hi20(OUTTAIL)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(OUTTAIL)
	pcalau12i	$a0, %pc_hi20(TRUNCATE)
	st.w	$zero, $a0, %pc_lo12(TRUNCATE)
	pcalau12i	$a0, %pc_hi20(AND)
	st.w	$zero, $a0, %pc_lo12(AND)
	pcalau12i	$a0, %pc_hi20(INVERSE)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(INVERSE)
	pcalau12i	$fp, %pc_hi20(EATFIRST)
	st.w	$zero, $fp, %pc_lo12(EATFIRST)
	pcalau12i	$a0, %pc_hi20(FIRSTOUTPUT)
	ori	$s6, $zero, 1
	st.w	$s6, $a0, %pc_lo12(FIRSTOUTPUT)
	pcalau12i	$a0, %pc_hi20(NOMATCH)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.w	$s6, $a0, %pc_lo12(NOMATCH)
	pcalau12i	$a0, %pc_hi20(FIRST_IN_RE)
	st.w	$s6, $a0, %pc_lo12(FIRST_IN_RE)
	pcalau12i	$a0, %pc_hi20(S)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.w	$s6, $a0, %pc_lo12(S)
	pcalau12i	$a0, %pc_hi20(DD)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.w	$s6, $a0, %pc_lo12(DD)
	pcalau12i	$a0, %pc_hi20(I)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.w	$s6, $a0, %pc_lo12(I)
	pcalau12i	$a0, %pc_hi20(TAIL)
	st.w	$s6, $a0, %pc_lo12(TAIL)
	pcalau12i	$a0, %pc_hi20(HEAD)
	st.w	$s6, $a0, %pc_lo12(HEAD)
	pcalau12i	$s0, %pc_hi20(D_length)
	ori	$a0, $zero, 2
	st.w	$a0, $s0, %pc_lo12(D_length)
	pcalau12i	$a0, %pc_hi20(num_of_matched)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(num_of_matched)
	pcalau12i	$a0, %pc_hi20(SIMPLEPATTERN)
	st.w	$zero, $a0, %pc_lo12(SIMPLEPATTERN)
	pcalau12i	$a0, %pc_hi20(PSIZE)
	st.w	$zero, $a0, %pc_lo12(PSIZE)
	pcalau12i	$a0, %pc_hi20(Num_Pat)
	st.w	$zero, $a0, %pc_lo12(Num_Pat)
	pcalau12i	$a0, %pc_hi20(SILENT)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(SILENT)
	pcalau12i	$a0, %pc_hi20(RE_ERR)
	st.w	$zero, $a0, %pc_lo12(RE_ERR)
	pcalau12i	$a1, %pc_hi20(DELIMITER)
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(DELIMITER)
	pcalau12i	$a0, %pc_hi20(WORDBOUND)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(WORDBOUND)
	pcalau12i	$a0, %pc_hi20(Bit)
	addi.d	$a0, $a0, %pc_lo12(Bit)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_2)
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_3)
	vst	$vr0, $a0, 116
	vst	$vr1, $a0, 100
	vst	$vr2, $a0, 84
	vst	$vr3, $a0, 68
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_4)
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_5)
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_6)
	pcalau12i	$a1, %pc_hi20(.LCPI0_7)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_7)
	vst	$vr0, $a0, 52
	vst	$vr1, $a0, 36
	vst	$vr2, $a0, 20
	vst	$vr3, $a0, 4
	pcalau12i	$a0, %pc_hi20(Mask)
	addi.d	$a0, $a0, %pc_lo12(Mask)
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	ld.h	$a0, $a0, 4
	st.w	$a1, $a2, 0
	st.h	$a0, $a2, 4
	blt	$s6, $s1, .LBB0_2
.LBB0_1:
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.LBB0_2:
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.b	$zero, $sp, 343
	addi.w	$fp, $s1, -1
	ori	$s0, $zero, 45
	ori	$a2, $zero, 55
	pcalau12i	$a0, %pc_hi20(APPROX)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI0_0)
	addi.d	$s5, $a0, %pc_lo12(.LJTI0_0)
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	lu12i.w	$a0, 515
	ori	$a0, $a0, 2878
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB0_6
.LBB0_3:                                #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s3, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 55
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(DD)
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(JUMP)
	.p2align	4, , 16
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $fp
	addi.w	$fp, $fp, -1
	move	$s2, $s8
	bge	$s6, $s1, .LBB0_54
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s2, 8
	ld.bu	$a0, $s3, 0
	addi.d	$s8, $s2, 8
	bne	$a0, $s0, .LBB0_54
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld.b	$s7, $s3, 1
	andi	$s4, $s7, 255
	addi.d	$a0, $s4, -66
	st.b	$s7, $sp, 471
	bltu	$a2, $a0, .LBB0_27
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	add.d	$a0, $s5, $a0
	jr	$a0
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(BESTMATCH)
	b	.LBB0_5
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(INVERSE)
	b	.LBB0_5
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(NOPROMPT)
	b	.LBB0_5
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(FILENAMEONLY)
	st.w	$s6, $a0, %pc_lo12(FILENAMEONLY)
	b	.LBB0_5
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(NOFILENAME)
	st.w	$s6, $a0, %pc_lo12(NOFILENAME)
	b	.LBB0_5
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	addi.w	$fp, $s1, -2
	beqz	$fp, .LBB0_44
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(CONSTANT)
	ld.d	$a1, $s2, 16
	ori	$a2, $zero, 1
	st.w	$a2, $a0, %pc_lo12(CONSTANT)
	addi.d	$s8, $s2, 16
	addi.d	$a0, $sp, 343
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	bltu	$s1, $a0, .LBB0_53
# %bb.16:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s2, 24
	ld.bu	$a0, $a0, 0
	ori	$a2, $zero, 55
	bne	$a0, $s0, .LBB0_5
	b	.LBB0_148
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(WHOLELINE)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.w	$s6, $a1, %pc_lo12(WORDBOUND)
	beqz	$a0, .LBB0_5
	b	.LBB0_43
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s3, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 55
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(I)
	b	.LBB0_4
.LBB0_19:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(NOUPPER)
	b	.LBB0_5
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s3, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 55
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(S)
	b	.LBB0_4
.LBB0_21:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(DELIMITER)
	ori	$a0, $zero, 2
	beq	$s1, $a0, .LBB0_45
# %bb.22:                               #   in Loop: Header=BB0_6 Depth=1
	ld.bu	$a0, $s3, 2
	beqz	$a0, .LBB0_40
# %bb.23:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s1, $s3, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$a0, $a0, 0
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	st.w	$s3, $s7, %pc_lo12(D_length)
	ori	$a1, $zero, 17
	bge	$a0, $a1, .LBB0_52
# %bb.24:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(D_pattern)
	addi.d	$a0, $a0, %pc_lo12(D_pattern)
	ori	$a1, $zero, 60
	st.b	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	b	.LBB0_42
.LBB0_25:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(LINENUM)
	b	.LBB0_5
.LBB0_26:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(I)
	b	.LBB0_5
.LBB0_27:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s7, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	bgez	$a0, .LBB0_48
# %bb.28:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s3, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$s6, $a1, %pc_lo12(APPROX)
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a2, $zero, 55
	ori	$a1, $zero, 9
	blt	$a0, $a1, .LBB0_5
	b	.LBB0_147
.LBB0_29:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(FILEOUT)
	st.w	$s6, $a0, %pc_lo12(FILEOUT)
.LBB0_30:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(COUNT)
	b	.LBB0_5
.LBB0_31:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(PAT_FILE)
	st.w	$s6, $a1, %pc_lo12(PAT_FILE)
	addi.d	$s8, $s2, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_51
# %bb.32:                               #   in Loop: Header=BB0_6 Depth=1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$fp, $s1, -2
	ori	$a2, $zero, 55
	b	.LBB0_5
.LBB0_33:                               #   in Loop: Header=BB0_6 Depth=1
	addi.w	$fp, $s1, -2
	beqz	$fp, .LBB0_46
# %bb.34:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s2, 16
	ld.bu	$a0, $a1, 0
	addi.d	$s8, $s2, 16
	bne	$a0, $s0, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 92
	st.b	$a0, $sp, 343
.LBB0_36:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $sp, 343
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 55
	b	.LBB0_5
.LBB0_37:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(OUTTAIL)
	b	.LBB0_5
.LBB0_38:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(SILENT)
	b	.LBB0_5
.LBB0_39:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(WORDBOUND)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$s6, $a1, %pc_lo12(WHOLELINE)
	beqz	$a0, .LBB0_5
	b	.LBB0_43
.LBB0_40:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s4, $s2, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$a0, $a0, 0
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	st.w	$s3, $s7, %pc_lo12(D_length)
	ori	$a1, $zero, 17
	bge	$a0, $a1, .LBB0_52
# %bb.41:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s8, $s2, 16
	pcalau12i	$a0, %pc_hi20(D_pattern)
	addi.d	$a0, $a0, %pc_lo12(D_pattern)
	ori	$a1, $zero, 60
	st.b	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.w	$fp, $s1, -2
.LBB0_42:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(D_pattern)
	addi.d	$s1, $a0, %pc_lo12(D_pattern)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	stx.w	$a1, $s1, $a0
	addi.d	$a0, $s3, 1
	st.w	$a0, $s7, %pc_lo12(D_length)
	ori	$a2, $zero, 55
	b	.LBB0_5
.LBB0_43:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	b	.LBB0_138
.LBB0_44:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	b	.LBB0_47
.LBB0_45:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 45
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 51
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 70
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 61
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	b	.LBB0_50
.LBB0_46:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
.LBB0_47:
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$fp, $a2, %pc_lo12(Progname)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_49
.LBB0_48:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	ext.w.b	$a3, $s4
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$fp, $a2, %pc_lo12(Progname)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_49:
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 45
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 51
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 70
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 61
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
.LBB0_50:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_51:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a3, $s8, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_52:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	b	.LBB0_138
.LBB0_53:
	move	$fp, $zero
	ori	$s1, $zero, 1
.LBB0_54:                               # %.critedge
	pcalau12i	$s0, %pc_hi20(FILENAMEONLY)
	ld.w	$a0, $s0, %pc_lo12(FILENAMEONLY)
	pcalau12i	$s2, %pc_hi20(NOFILENAME)
	beqz	$a0, .LBB0_57
# %bb.55:                               # %.critedge
	ld.w	$a0, $s2, %pc_lo12(NOFILENAME)
	beqz	$a0, .LBB0_57
# %bb.56:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_57:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(COUNT)
	beqz	$a0, .LBB0_61
# %bb.58:
	ld.w	$a0, $s0, %pc_lo12(FILENAMEONLY)
	ld.w	$a1, $s2, %pc_lo12(NOFILENAME)
	or	$a0, $a0, $a1
	beqz	$a0, .LBB0_61
# %bb.59:
	pcalau12i	$a0, %pc_hi20(FILEOUT)
	ld.w	$a0, $a0, %pc_lo12(FILEOUT)
	st.w	$zero, $s0, %pc_lo12(FILENAMEONLY)
	bnez	$a0, .LBB0_61
# %bb.60:
	st.w	$zero, $s2, %pc_lo12(NOFILENAME)
.LBB0_61:
	pcalau12i	$s4, %pc_hi20(PAT_FILE)
	ld.w	$a0, $s4, %pc_lo12(PAT_FILE)
	bnez	$a0, .LBB0_65
# %bb.62:
	ld.bu	$a0, $sp, 343
	bnez	$a0, .LBB0_65
# %bb.63:
	beqz	$fp, .LBB0_1
# %bb.64:
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $s8, 0
	addi.d	$a0, $sp, 343
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.w	$fp, $s1, -2
	addi.d	$s8, $s8, 8
	pcalau12i	$s6, %pc_hi20(Numfiles)
	st.w	$zero, $s6, %pc_lo12(Numfiles)
	bnez	$fp, .LBB0_66
	b	.LBB0_73
.LBB0_65:
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(Numfiles)
	st.w	$zero, $s6, %pc_lo12(Numfiles)
	beqz	$fp, .LBB0_73
.LBB0_66:
	slli.d	$a0, $fp, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(Textfiles)
	st.d	$a0, $s3, %pc_lo12(Textfiles)
	bnez	$a0, .LBB0_68
# %bb.67:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	b	.LBB0_137
.LBB0_68:
	addi.w	$s5, $zero, -3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s1, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(Progname)
	addi.d	$s2, $a0, %pc_lo12(Progname)
	move	$s7, $fp
	b	.LBB0_70
.LBB0_69:                               #   in Loop: Header=BB0_70 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s8, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	beqz	$s7, .LBB0_73
	.p2align	4, , 16
.LBB0_70:                               # %.preheader189
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(check_file)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB0_69
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, %pc_lo12(Numfiles)
	ld.d	$a1, $s3, %pc_lo12(Textfiles)
	slli.d	$a3, $a2, 3
	stx.d	$a0, $a1, $a3
	beqz	$a0, .LBB0_136
# %bb.72:                               #   in Loop: Header=BB0_70 Depth=1
	ld.d	$a1, $s8, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s6, %pc_lo12(Numfiles)
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB0_70
.LBB0_73:                               # %.loopexit
	addi.d	$a0, $sp, 343
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(checksg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 215
	addi.d	$a1, $sp, 343
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(SGREP)
	bnez	$a0, .LBB0_75
# %bb.74:
	pcalau12i	$a0, %pc_hi20(D_pattern)
	addi.d	$s1, $a0, %pc_lo12(D_pattern)
	addi.d	$a1, $sp, 343
	move	$a0, $s1
	pcaddu18i	$ra, %call36(preprocess)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(old_D_pat)
	addi.d	$a0, $a0, %pc_lo12(old_D_pat)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 343
	move	$a1, $s0
	pcaddu18i	$ra, %call36(maskgen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $s4, %pc_lo12(PAT_FILE)
	bnez	$a0, .LBB0_76
	b	.LBB0_77
.LBB0_75:
	addi.d	$a0, $sp, 215
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $s4, %pc_lo12(PAT_FILE)
	beqz	$a0, .LBB0_77
.LBB0_76:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(prepf)
	jirl	$ra, $ra, 0
.LBB0_77:
	ld.w	$a0, $s6, %pc_lo12(Numfiles)
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB0_84
# %bb.78:
	ld.w	$a0, $s2, %pc_lo12(NOFILENAME)
	bnez	$a0, .LBB0_85
.LBB0_79:
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(num_of_matched)
	pcaddu18i	$ra, %call36(compat)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_86
.LBB0_80:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FILENAMEONLY)
	bnez	$a0, .LBB0_135
# %bb.81:
	ld.w	$a0, $s4, %pc_lo12(PAT_FILE)
	bnez	$a0, .LBB0_139
# %bb.82:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(SGREP)
	bnez	$a0, .LBB0_140
# %bb.83:
	addi.w	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(old_D_pat)
	addi.d	$a0, $a0, %pc_lo12(old_D_pat)
	addi.d	$a1, $sp, 343
	move	$a2, $zero
	move	$a4, $s0
	pcaddu18i	$ra, %call36(bitap)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_84:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(FNAME)
	ld.w	$a0, $s2, %pc_lo12(NOFILENAME)
	beqz	$a0, .LBB0_79
.LBB0_85:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(FNAME)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(num_of_matched)
	pcaddu18i	$ra, %call36(compat)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_80
.LBB0_86:                               # %.preheader188
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $s6, %pc_lo12(Numfiles)
	blez	$a0, .LBB0_108
# %bb.87:                               # %.lr.ph.preheader
	pcalau12i	$fp, %pc_hi20(Textfiles)
	pcalau12i	$a0, %pc_hi20(CurrentFileName)
	addi.d	$s0, $a0, %pc_lo12(CurrentFileName)
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Progname)
	addi.d	$a0, $a0, %pc_lo12(Progname)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(old_D_pat)
	addi.d	$a0, $a0, %pc_lo12(old_D_pat)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(FILEOUT)
	pcalau12i	$s3, %pc_hi20(total_line)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s7, $a0, %pc_lo12(.L.str.16)
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB0_90
.LBB0_88:                               #   in Loop: Header=BB0_90 Depth=1
	ld.d	$a1, $fp, %pc_lo12(Textfiles)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a3, $a1, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_89:                               #   in Loop: Header=BB0_90 Depth=1
	addi.d	$s2, $s2, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(Numfiles)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.w	$zero, $a1, %pc_lo12(num_of_matched)
	addi.d	$s1, $s1, 8
	bge	$s2, $a0, .LBB0_108
.LBB0_90:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $fp, %pc_lo12(Textfiles)
	ldx.d	$a1, $s8, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s8, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	blez	$a0, .LBB0_88
# %bb.91:                               #   in Loop: Header=BB0_90 Depth=1
	ld.w	$a0, $s4, %pc_lo12(PAT_FILE)
	beqz	$a0, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_90 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(mgrep)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(num_of_matched)
	bnez	$a2, .LBB0_95
	b	.LBB0_96
	.p2align	4, , 16
.LBB0_93:                               #   in Loop: Header=BB0_90 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(SGREP)
	beqz	$a0, .LBB0_107
# %bb.94:                               #   in Loop: Header=BB0_90 Depth=1
	addi.d	$a0, $sp, 215
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	addi.d	$a0, $sp, 215
	move	$a2, $s8
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sgrep)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(num_of_matched)
	beqz	$a2, .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_90 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(NOMATCH)
.LBB0_96:                               #   in Loop: Header=BB0_90 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(COUNT)
	beqz	$a0, .LBB0_104
# %bb.97:                               #   in Loop: Header=BB0_90 Depth=1
	ld.w	$a0, $s5, %pc_lo12(FILEOUT)
	bnez	$a0, .LBB0_104
# %bb.98:                               #   in Loop: Header=BB0_90 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(INVERSE)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	beqz	$a1, .LBB0_102
# %bb.99:                               #   in Loop: Header=BB0_90 Depth=1
	ld.w	$a1, $s4, %pc_lo12(PAT_FILE)
	beqz	$a1, .LBB0_102
# %bb.100:                              #   in Loop: Header=BB0_90 Depth=1
	ld.w	$a1, $s3, %pc_lo12(total_line)
	sub.w	$a2, $a1, $a2
	bnez	$a0, .LBB0_103
.LBB0_101:                              #   in Loop: Header=BB0_90 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $a2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_102:                              #   in Loop: Header=BB0_90 Depth=1
	beqz	$a0, .LBB0_101
.LBB0_103:                              #   in Loop: Header=BB0_90 Depth=1
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_104:                              #   in Loop: Header=BB0_90 Depth=1
	ld.w	$a0, $s5, %pc_lo12(FILEOUT)
	beqz	$a0, .LBB0_89
# %bb.105:                              #   in Loop: Header=BB0_90 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(num_of_matched)
	beqz	$a0, .LBB0_89
# %bb.106:                              #   in Loop: Header=BB0_90 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(file_out)
	jirl	$ra, $ra, 0
	b	.LBB0_89
.LBB0_107:                              #   in Loop: Header=BB0_90 Depth=1
	addi.d	$a1, $sp, 343
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bitap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(num_of_matched)
	bnez	$a2, .LBB0_95
	b	.LBB0_96
.LBB0_108:                              # %._crit_edge
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NOMATCH)
	beqz	$a0, .LBB0_164
# %bb.109:                              # %._crit_edge
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(BESTMATCH)
	beqz	$a0, .LBB0_164
# %bb.110:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(WORDBOUND)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_114
# %bb.111:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(WHOLELINE)
	bnez	$a0, .LBB0_114
# %bb.112:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(LINENUM)
	bnez	$a0, .LBB0_114
# %bb.113:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(INVERSE)
	beqz	$a0, .LBB0_115
.LBB0_114:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(SGREP)
	pcalau12i	$a0, %pc_hi20(D_pattern)
	addi.d	$s0, $a0, %pc_lo12(D_pattern)
	addi.d	$a1, $sp, 343
	move	$a0, $s0
	pcaddu18i	$ra, %call36(preprocess)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(old_D_pat)
	addi.d	$a0, $a0, %pc_lo12(old_D_pat)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 343
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(maskgen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.LBB0_115:
	move	$s0, $zero
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(num_of_matched)
	addi.w	$a4, $a2, 0
	ori	$a2, $zero, 2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	st.w	$a0, $a3, %pc_lo12(COUNT)
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	blt	$a4, $a2, .LBB0_131
# %bb.116:
	bnez	$a1, .LBB0_131
# %bb.117:                              # %.preheader.lr.ph
	ld.w	$a0, $s6, %pc_lo12(Numfiles)
	blez	$a0, .LBB0_164
# %bb.118:                              # %.preheader.preheader
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	slti	$a1, $a3, 9
	ori	$a2, $zero, 9
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a2
	ori	$a2, $zero, 1
	pcalau12i	$s7, %pc_hi20(Textfiles)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$s1, $a1, %pc_lo12(CurrentFileName)
	pcalau12i	$a1, %pc_hi20(old_D_pat)
	addi.d	$s2, $a1, %pc_lo12(old_D_pat)
	.p2align	4, , 16
.LBB0_119:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_123 Depth 2
	move	$s0, $a2
	blez	$a0, .LBB0_129
# %bb.120:                              # %.lr.ph254.preheader
                                        #   in Loop: Header=BB0_119 Depth=1
	move	$s8, $zero
	move	$fp, $zero
	b	.LBB0_123
	.p2align	4, , 16
.LBB0_121:                              #   in Loop: Header=BB0_123 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(mgrep)
	jirl	$ra, $ra, 0
.LBB0_122:                              #   in Loop: Header=BB0_123 Depth=2
	addi.d	$fp, $fp, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(Numfiles)
	addi.d	$s8, $s8, 8
	bge	$fp, $a0, .LBB0_128
.LBB0_123:                              # %.lr.ph254
                                        #   Parent Loop BB0_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s7, %pc_lo12(Textfiles)
	ldx.d	$a1, $s3, $s8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s3, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$a0, .LBB0_122
# %bb.124:                              #   in Loop: Header=BB0_123 Depth=2
	ld.w	$a0, $s4, %pc_lo12(PAT_FILE)
	bnez	$a0, .LBB0_121
# %bb.125:                              #   in Loop: Header=BB0_123 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(SGREP)
	beqz	$a0, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_123 Depth=2
	addi.d	$a0, $sp, 215
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	addi.d	$a0, $sp, 215
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sgrep)
	jirl	$ra, $ra, 0
	b	.LBB0_122
.LBB0_127:                              #   in Loop: Header=BB0_123 Depth=2
	addi.d	$a1, $sp, 343
	move	$a0, $s2
	move	$a2, $s3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(bitap)
	jirl	$ra, $ra, 0
	b	.LBB0_122
	.p2align	4, , 16
.LBB0_128:                              # %._crit_edge255.loopexit
                                        #   in Loop: Header=BB0_119 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(num_of_matched)
	addi.w	$a2, $s0, 1
	blt	$a2, $s5, .LBB0_130
	b	.LBB0_131
	.p2align	4, , 16
.LBB0_129:                              #   in Loop: Header=BB0_119 Depth=1
	move	$a1, $zero
	addi.w	$a2, $s0, 1
	bge	$a2, $s5, .LBB0_131
.LBB0_130:                              # %._crit_edge255
                                        #   in Loop: Header=BB0_119 Depth=1
	beqz	$a1, .LBB0_119
.LBB0_131:                              # %.critedge27
	blez	$a1, .LBB0_164
# %bb.132:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NOPROMPT)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.w	$zero, $a1, %pc_lo12(COUNT)
	bnez	$a0, .LBB0_154
# %bb.133:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB0_149
# %bb.134:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB0_150
.LBB0_135:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	b	.LBB0_138
.LBB0_136:
	ld.d	$a0, $s0, 0
.LBB0_137:
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
.LBB0_138:
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_139:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(mgrep)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_140:
	addi.d	$a0, $sp, 215
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	addi.d	$a0, $sp, 215
	move	$a2, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sgrep)
	jirl	$ra, $ra, 0
.LBB0_141:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(COUNT)
	beqz	$a0, .LBB0_164
# %bb.142:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(INVERSE)
	beqz	$a0, .LBB0_145
# %bb.143:
	ld.w	$a0, $s4, %pc_lo12(PAT_FILE)
	beqz	$a0, .LBB0_145
# %bb.144:
	pcalau12i	$a0, %pc_hi20(total_line)
	ld.w	$a0, $a0, %pc_lo12(total_line)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(num_of_matched)
	sub.w	$a1, $a0, $a1
	b	.LBB0_146
.LBB0_145:
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(num_of_matched)
.LBB0_146:                              # %.critedge27.thread
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_164
.LBB0_147:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_148:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	b	.LBB0_138
.LBB0_149:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $a3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_150:
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(num_of_matched)
	ld.d	$a3, $fp, 0
	ori	$a0, $zero, 1
	bne	$a2, $a0, .LBB0_152
# %bb.151:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB0_153
.LBB0_152:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_153:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	addi.d	$a1, $sp, 471
	pcaddu18i	$ra, %call36(__isoc99_scanf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 471
	ori	$a1, $zero, 121
	bne	$a0, $a1, .LBB0_164
.LBB0_154:
	ld.w	$a0, $s6, %pc_lo12(Numfiles)
	blez	$a0, .LBB0_163
# %bb.155:                              # %.lr.ph266.preheader
	pcalau12i	$s5, %pc_hi20(Textfiles)
	pcalau12i	$a0, %pc_hi20(CurrentFileName)
	addi.d	$s1, $a0, %pc_lo12(CurrentFileName)
	pcalau12i	$a0, %pc_hi20(old_D_pat)
	addi.d	$s2, $a0, %pc_lo12(old_D_pat)
	move	$fp, $zero
	move	$s7, $zero
	b	.LBB0_158
	.p2align	4, , 16
.LBB0_156:                              #   in Loop: Header=BB0_158 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(mgrep)
	jirl	$ra, $ra, 0
.LBB0_157:                              #   in Loop: Header=BB0_158 Depth=1
	addi.d	$s7, $s7, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(Numfiles)
	addi.d	$fp, $fp, 8
	bge	$s7, $a0, .LBB0_163
.LBB0_158:                              # %.lr.ph266
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s5, %pc_lo12(Textfiles)
	ldx.d	$a1, $s3, $fp
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s3, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$a0, .LBB0_157
# %bb.159:                              #   in Loop: Header=BB0_158 Depth=1
	ld.w	$a0, $s4, %pc_lo12(PAT_FILE)
	bnez	$a0, .LBB0_156
# %bb.160:                              #   in Loop: Header=BB0_158 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(SGREP)
	beqz	$a0, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_158 Depth=1
	addi.d	$a0, $sp, 215
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	addi.d	$a0, $sp, 215
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sgrep)
	jirl	$ra, $ra, 0
	b	.LBB0_157
.LBB0_162:                              #   in Loop: Header=BB0_158 Depth=1
	addi.d	$a1, $sp, 343
	move	$a0, $s2
	move	$a2, $s3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(bitap)
	jirl	$ra, $ra, 0
	b	.LBB0_157
.LBB0_163:                              # %._crit_edge267
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(NOMATCH)
.LBB0_164:                              # %.critedge27.thread
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $fp, %pc_lo12(EATFIRST)
	beqz	$a0, .LBB0_166
# %bb.165:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, %pc_lo12(EATFIRST)
.LBB0_166:
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(num_of_matched)
	bnez	$a0, .LBB0_169
# %bb.167:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(NOMATCH)
	bnez	$a0, .LBB0_170
# %bb.168:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_169:                              # %.thread
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(NOMATCH)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_170:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_30-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_12-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_25-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_38-.LJTI0_0
	.word	.LBB0_37-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function initial_value
.LCPI1_0:
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	1                               # 0x1
.LCPI1_1:
	.word	128                             # 0x80
	.word	64                              # 0x40
	.word	32                              # 0x20
	.word	16                              # 0x10
.LCPI1_2:
	.word	2048                            # 0x800
	.word	1024                            # 0x400
	.word	512                             # 0x200
	.word	256                             # 0x100
.LCPI1_3:
	.word	32768                           # 0x8000
	.word	16384                           # 0x4000
	.word	8192                            # 0x2000
	.word	4096                            # 0x1000
.LCPI1_4:
	.word	524288                          # 0x80000
	.word	262144                          # 0x40000
	.word	131072                          # 0x20000
	.word	65536                           # 0x10000
.LCPI1_5:
	.word	8388608                         # 0x800000
	.word	4194304                         # 0x400000
	.word	2097152                         # 0x200000
	.word	1048576                         # 0x100000
.LCPI1_6:
	.word	134217728                       # 0x8000000
	.word	67108864                        # 0x4000000
	.word	33554432                        # 0x2000000
	.word	16777216                        # 0x1000000
.LCPI1_7:
	.word	2147483648                      # 0x80000000
	.word	1073741824                      # 0x40000000
	.word	536870912                       # 0x20000000
	.word	268435456                       # 0x10000000
	.text
	.globl	initial_value
	.p2align	5
	.type	initial_value,@function
initial_value:                          # @initial_value
# %bb.0:                                # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(NOUPPER)
	st.w	$zero, $a0, %pc_lo12(NOUPPER)
	pcalau12i	$a0, %pc_hi20(NOPROMPT)
	st.w	$zero, $a0, %pc_lo12(NOPROMPT)
	pcalau12i	$a0, %pc_hi20(BESTMATCH)
	st.w	$zero, $a0, %pc_lo12(BESTMATCH)
	pcalau12i	$a0, %pc_hi20(FNAME)
	st.w	$zero, $a0, %pc_lo12(FNAME)
	pcalau12i	$a0, %pc_hi20(REGEX)
	st.w	$zero, $a0, %pc_lo12(REGEX)
	pcalau12i	$a0, %pc_hi20(JUMP)
	st.w	$zero, $a0, %pc_lo12(JUMP)
	pcalau12i	$a0, %pc_hi20(SGREP)
	st.w	$zero, $a0, %pc_lo12(SGREP)
	pcalau12i	$a0, %pc_hi20(WHOLELINE)
	st.w	$zero, $a0, %pc_lo12(WHOLELINE)
	pcalau12i	$a0, %pc_hi20(LINENUM)
	st.w	$zero, $a0, %pc_lo12(LINENUM)
	pcalau12i	$a0, %pc_hi20(COUNT)
	st.w	$zero, $a0, %pc_lo12(COUNT)
	pcalau12i	$a0, %pc_hi20(OUTTAIL)
	st.w	$zero, $a0, %pc_lo12(OUTTAIL)
	pcalau12i	$a0, %pc_hi20(TRUNCATE)
	st.w	$zero, $a0, %pc_lo12(TRUNCATE)
	pcalau12i	$a0, %pc_hi20(AND)
	st.w	$zero, $a0, %pc_lo12(AND)
	pcalau12i	$a0, %pc_hi20(INVERSE)
	st.w	$zero, $a0, %pc_lo12(INVERSE)
	pcalau12i	$a0, %pc_hi20(EATFIRST)
	st.w	$zero, $a0, %pc_lo12(EATFIRST)
	pcalau12i	$a0, %pc_hi20(FIRSTOUTPUT)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(FIRSTOUTPUT)
	pcalau12i	$a0, %pc_hi20(NOMATCH)
	st.w	$a1, $a0, %pc_lo12(NOMATCH)
	pcalau12i	$a0, %pc_hi20(FIRST_IN_RE)
	st.w	$a1, $a0, %pc_lo12(FIRST_IN_RE)
	pcalau12i	$a0, %pc_hi20(S)
	st.w	$a1, $a0, %pc_lo12(S)
	pcalau12i	$a0, %pc_hi20(DD)
	st.w	$a1, $a0, %pc_lo12(DD)
	pcalau12i	$a0, %pc_hi20(I)
	st.w	$a1, $a0, %pc_lo12(I)
	pcalau12i	$a0, %pc_hi20(TAIL)
	st.w	$a1, $a0, %pc_lo12(TAIL)
	pcalau12i	$a0, %pc_hi20(HEAD)
	st.w	$a1, $a0, %pc_lo12(HEAD)
	pcalau12i	$a0, %pc_hi20(D_length)
	ori	$a1, $zero, 2
	st.w	$a1, $a0, %pc_lo12(D_length)
	pcalau12i	$a0, %pc_hi20(num_of_matched)
	st.w	$zero, $a0, %pc_lo12(num_of_matched)
	pcalau12i	$a0, %pc_hi20(SIMPLEPATTERN)
	st.w	$zero, $a0, %pc_lo12(SIMPLEPATTERN)
	pcalau12i	$a0, %pc_hi20(PSIZE)
	st.w	$zero, $a0, %pc_lo12(PSIZE)
	pcalau12i	$a0, %pc_hi20(Num_Pat)
	st.w	$zero, $a0, %pc_lo12(Num_Pat)
	pcalau12i	$a0, %pc_hi20(SILENT)
	st.w	$zero, $a0, %pc_lo12(SILENT)
	pcalau12i	$a0, %pc_hi20(RE_ERR)
	st.w	$zero, $a0, %pc_lo12(RE_ERR)
	pcalau12i	$a0, %pc_hi20(DELIMITER)
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	st.w	$zero, $a0, %pc_lo12(DELIMITER)
	pcalau12i	$a0, %pc_hi20(WORDBOUND)
	st.w	$zero, $a0, %pc_lo12(WORDBOUND)
	pcalau12i	$a0, %pc_hi20(Bit)
	addi.d	$a0, $a0, %pc_lo12(Bit)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_1)
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI1_2)
	pcalau12i	$a1, %pc_hi20(.LCPI1_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_3)
	vst	$vr0, $a0, 116
	vst	$vr1, $a0, 100
	vst	$vr2, $a0, 84
	vst	$vr3, $a0, 68
	pcalau12i	$a1, %pc_hi20(.LCPI1_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_4)
	pcalau12i	$a1, %pc_hi20(.LCPI1_5)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_5)
	pcalau12i	$a1, %pc_hi20(.LCPI1_6)
	vld	$vr2, $a1, %pc_lo12(.LCPI1_6)
	pcalau12i	$a1, %pc_hi20(.LCPI1_7)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_7)
	vst	$vr0, $a0, 52
	vst	$vr1, $a0, 36
	vst	$vr2, $a0, 20
	vst	$vr3, $a0, 4
	pcalau12i	$a0, %pc_hi20(Mask)
	addi.d	$a0, $a0, %pc_lo12(Mask)
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end1:
	.size	initial_value, .Lfunc_end1-initial_value
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	usage                           # -- Begin function usage
	.p2align	5
	.type	usage,@function
usage:                                  # @usage
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 45
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 51
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 70
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 61
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	usage, .Lfunc_end2-usage
                                        # -- End function
	.text
	.globl	checksg                         # -- Begin function checksg
	.p2align	5
	.type	checksg,@function
checksg:                                # @checksg
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(PAT_FILE)
	ld.w	$a2, $a1, %pc_lo12(PAT_FILE)
	addi.w	$a1, $a0, 0
	bnez	$a2, .LBB3_2
# %bb.1:
	bge	$s0, $a1, .LBB3_46
.LBB3_2:
	pcalau12i	$a2, %pc_hi20(SIMPLEPATTERN)
	ori	$a3, $zero, 1
	st.w	$a3, $a2, %pc_lo12(SIMPLEPATTERN)
	blez	$a1, .LBB3_9
# %bb.3:                                # %.lr.ph
	bstrpick.d	$a3, $a0, 30, 0
	ori	$a4, $zero, 1
	ori	$a5, $zero, 89
	blez	$s0, .LBB3_10
# %bb.4:                                # %.lr.ph.split.us.preheader
	pcalau12i	$a6, %pc_hi20(.LJTI3_1)
	addi.d	$a6, $a6, %pc_lo12(.LJTI3_1)
	move	$a7, $fp
	.p2align	4, , 16
.LBB3_5:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a7, 0
	addi.d	$t0, $t0, -35
	bltu	$a5, $t0, .LBB3_8
# %bb.6:                                # %.lr.ph.split.us
                                        #   in Loop: Header=BB3_5 Depth=1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a6, $t0
	add.d	$t0, $a6, $t0
	jr	$t0
.LBB3_7:                                # %.sink.split
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$a4, $zero
	st.w	$zero, $a2, %pc_lo12(SIMPLEPATTERN)
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, 1
	bnez	$a3, .LBB3_5
	b	.LBB3_15
.LBB3_9:                                # %._crit_edge.thread
	pcalau12i	$a3, %pc_hi20(CONSTANT)
	ld.w	$a3, $a3, %pc_lo12(CONSTANT)
	bnez	$a3, .LBB3_16
	b	.LBB3_17
.LBB3_10:                               # %.lr.ph.split.split.preheader
	pcalau12i	$a6, %pc_hi20(.LJTI3_0)
	addi.d	$a6, $a6, %pc_lo12(.LJTI3_0)
	move	$a7, $fp
	.p2align	4, , 16
.LBB3_11:                               # %.lr.ph.split.split
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a7, 0
	addi.d	$t0, $t0, -35
	bltu	$a5, $t0, .LBB3_14
# %bb.12:                               # %.lr.ph.split.split
                                        #   in Loop: Header=BB3_11 Depth=1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a6, $t0
	add.d	$t0, $a6, $t0
	jr	$t0
.LBB3_13:                               # %.sink.split86
                                        #   in Loop: Header=BB3_11 Depth=1
	move	$a4, $zero
	st.w	$zero, $a2, %pc_lo12(SIMPLEPATTERN)
.LBB3_14:                               #   in Loop: Header=BB3_11 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, 1
	bnez	$a3, .LBB3_11
.LBB3_15:                               # %._crit_edge
	pcalau12i	$a3, %pc_hi20(CONSTANT)
	ld.w	$a3, $a3, %pc_lo12(CONSTANT)
	beqz	$a3, .LBB3_29
.LBB3_16:                               # %.thread
	ori	$a3, $zero, 1
	st.w	$a3, $a2, %pc_lo12(SIMPLEPATTERN)
.LBB3_17:                               # %.thread82
	pcalau12i	$a2, %pc_hi20(NOUPPER)
	ld.w	$a2, $a2, %pc_lo12(NOUPPER)
	sltu	$a2, $zero, $a2
	sltu	$a3, $zero, $s0
	and	$a2, $a3, $a2
	bnez	$a2, .LBB3_30
# %bb.18:                               # %.thread82
	pcalau12i	$a2, %pc_hi20(JUMP)
	ld.w	$a2, $a2, %pc_lo12(JUMP)
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB3_30
# %bb.19:                               # %.thread82
	pcalau12i	$a2, %pc_hi20(I)
	ld.w	$a2, $a2, %pc_lo12(I)
	beqz	$a2, .LBB3_30
# %bb.20:                               # %.thread82
	pcalau12i	$a2, %pc_hi20(LINENUM)
	ld.w	$a2, $a2, %pc_lo12(LINENUM)
	bnez	$a2, .LBB3_30
# %bb.21:                               # %.thread82
	pcalau12i	$a2, %pc_hi20(DELIMITER)
	ld.w	$a2, $a2, %pc_lo12(DELIMITER)
	bnez	$a2, .LBB3_30
# %bb.22:                               # %.thread82
	pcalau12i	$a2, %pc_hi20(INVERSE)
	ld.w	$a2, $a2, %pc_lo12(INVERSE)
	bnez	$a2, .LBB3_30
# %bb.23:
	blez	$s0, .LBB3_25
# %bb.24:
	pcalau12i	$a2, %pc_hi20(WORDBOUND)
	ld.w	$a2, $a2, %pc_lo12(WORDBOUND)
	bnez	$a2, .LBB3_30
.LBB3_25:
	pcalau12i	$a2, %pc_hi20(WHOLELINE)
	ld.w	$a2, $a2, %pc_lo12(WHOLELINE)
	slt	$a3, $zero, $s0
	sltu	$a2, $zero, $a2
	and	$a2, $a3, $a2
	bnez	$a2, .LBB3_30
# %bb.26:
	pcalau12i	$a2, %pc_hi20(SILENT)
	ld.w	$a2, $a2, %pc_lo12(SILENT)
	bnez	$a2, .LBB3_30
# %bb.27:
	pcalau12i	$a2, %pc_hi20(SGREP)
	ori	$a3, $zero, 1
	st.w	$a3, $a2, %pc_lo12(SGREP)
	ori	$a4, $zero, 16
	pcalau12i	$a2, %pc_hi20(DNA)
	addi.d	$a2, $a2, %pc_lo12(DNA)
	blt	$a1, $a4, .LBB3_31
# %bb.28:                               # %.thread84
	st.w	$a3, $a2, 0
	b	.LBB3_32
.LBB3_29:
	bnez	$a4, .LBB3_17
.LBB3_30:                               # %.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_31:
	blez	$a1, .LBB3_30
.LBB3_32:                               # %.lr.ph63.preheader
	bstrpick.d	$a1, $a0, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB3_35
# %bb.33:                               # %vector.memcheck
	add.d	$a3, $fp, $a1
	bgeu	$a2, $a3, .LBB3_41
# %bb.34:                               # %vector.memcheck
	addi.d	$a3, $a2, 4
	bgeu	$fp, $a3, .LBB3_41
.LBB3_35:
	move	$a0, $zero
.LBB3_36:                               # %.lr.ph63.preheader116
	add.d	$a3, $fp, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 19
	ori	$a4, $zero, 1
	lu12i.w	$a5, 128
	ori	$a5, $a5, 69
	b	.LBB3_39
.LBB3_37:                               #   in Loop: Header=BB3_39 Depth=1
	st.w	$zero, $a2, 0
	.p2align	4, , 16
.LBB3_38:                               #   in Loop: Header=BB3_39 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	beqz	$a0, .LBB3_30
.LBB3_39:                               # %.lr.ph63
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a3, 0
	addi.d	$a6, $a6, -97
	bltu	$a1, $a6, .LBB3_37
# %bb.40:                               # %.lr.ph63
                                        #   in Loop: Header=BB3_39 Depth=1
	sll.d	$a6, $a4, $a6
	and	$a6, $a6, $a5
	bnez	$a6, .LBB3_38
	b	.LBB3_37
.LBB3_41:                               # %vector.ph
	bstrpick.d	$a0, $a0, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a3, $fp, 4
	vrepli.b	$vr0, 116
	vrepli.b	$vr1, 97
	vrepli.b	$vr2, 99
	move	$a4, $a0
	b	.LBB3_43
	.p2align	4, , 16
.LBB3_42:                               #   in Loop: Header=BB3_43 Depth=1
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 8
	beqz	$a4, .LBB3_45
.LBB3_43:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -4
	ld.w	$a6, $a3, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 0
	vseq.b	$vr5, $vr3, $vr0
	vseq.b	$vr6, $vr4, $vr0
	vseq.b	$vr7, $vr3, $vr1
	vseq.b	$vr8, $vr4, $vr1
	vbitclri.b	$vr3, $vr3, 2
	vseq.b	$vr3, $vr3, $vr2
	vxori.b	$vr3, $vr3, 255
	vandn.v	$vr3, $vr5, $vr3
	vbitclri.b	$vr4, $vr4, 2
	vseq.b	$vr4, $vr4, $vr2
	vxori.b	$vr4, $vr4, 255
	vandn.v	$vr4, $vr6, $vr4
	vandn.v	$vr3, $vr7, $vr3
	vsllwil.h.b	$vr3, $vr3, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vandn.v	$vr4, $vr8, $vr4
	vsllwil.h.b	$vr4, $vr4, 0
	vsllwil.w.h	$vr4, $vr4, 0
	vpickve2gr.w	$a5, $vr4, 0
	vinsgr2vr.h	$vr5, $a5, 0
	vpickve2gr.w	$a5, $vr4, 1
	vinsgr2vr.h	$vr5, $a5, 1
	vpickve2gr.w	$a5, $vr4, 2
	vinsgr2vr.h	$vr5, $a5, 2
	vpickve2gr.w	$a5, $vr4, 3
	vinsgr2vr.h	$vr5, $a5, 3
	vpickve2gr.w	$a5, $vr3, 0
	vinsgr2vr.h	$vr5, $a5, 4
	vpickve2gr.w	$a5, $vr3, 1
	vinsgr2vr.h	$vr5, $a5, 5
	vpickve2gr.w	$a5, $vr3, 2
	vinsgr2vr.h	$vr5, $a5, 6
	vpickve2gr.w	$a5, $vr3, 3
	vinsgr2vr.h	$vr5, $a5, 7
	vslli.h	$vr3, $vr5, 15
	vmskltz.h	$vr3, $vr3
	vpickve2gr.hu	$a5, $vr3, 0
	beqz	$a5, .LBB3_42
# %bb.44:                               #   in Loop: Header=BB3_43 Depth=1
	st.w	$zero, $a2, 0
	b	.LBB3_42
.LBB3_45:                               # %middle.block
	beq	$a1, $a0, .LBB3_30
	b	.LBB3_36
.LBB3_46:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	checksg, .Lfunc_end3-checksg
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_7-.LJTI3_1
                                        # -- End function
	.text
	.globl	file_out                        # -- Begin function file_out
	.p2align	5
	.type	file_out,@function
file_out:                               # @file_out
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -80
	pcalau12i	$a1, %pc_hi20(FNAME)
	ld.w	$a1, $a1, %pc_lo12(FNAME)
	move	$fp, $a0
	beqz	$a1, .LBB4_6
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$s2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 58
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB4_2
.LBB4_3:                                # %._crit_edge
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(CurrentFileName)
	addi.d	$a0, $a0, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB4_5
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph14
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 58
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB4_4
.LBB4_5:                                # %._crit_edge15
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB4_6:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	lu12i.w	$a2, 1
	addi.d	$a1, $sp, 23
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB4_9
# %bb.7:                                # %.lr.ph17.preheader
	lu12i.w	$s0, 1
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph17
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a2, $a0, 30, 0
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 23
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 23
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bgtz	$a1, .LBB4_8
.LBB4_9:                                # %._crit_edge18
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 96
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end4:
	.size	file_out, .Lfunc_end4-file_out
                                        # -- End function
	.globl	compute_next                    # -- Begin function compute_next
	.p2align	5
	.type	compute_next,@function
compute_next:                           # @compute_next
# %bb.0:                                # %.preheader106
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
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	ori	$a0, $zero, 32
	sub.w	$s4, $a0, $s1
	pcalau12i	$a0, %pc_hi20(Bit)
	addi.d	$s2, $a0, %pc_lo12(Bit)
	slli.d	$a0, $s4, 2
	ldx.w	$s5, $s2, $a0
	alsl.d	$s3, $s4, $s2, 2
	stx.w	$zero, $s2, $a0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 128
	addi.d	$s6, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bge	$a0, $s1, .LBB5_8
# %bb.1:                                # %.preheader.preheader
	pcalau12i	$a1, %pc_hi20(table)
	addi.d	$a1, $a1, %pc_lo12(table)
	addi.d	$a2, $a1, 132
	ori	$a3, $zero, 9
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %._crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	st.w	$a5, $a6, 0
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 128
	beq	$a0, $s1, .LBB5_9
.LBB5_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	slli.d	$a4, $a0, 7
	ldx.w	$a4, $a1, $a4
	blez	$a4, .LBB5_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	slli.d	$a5, $a0, 2
	ldx.w	$a5, $a5, $s6
	move	$t0, $zero
	alsl.d	$a6, $a0, $s6, 2
	move	$a7, $a2
	.p2align	4, , 16
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$a4, $a4, $s4
	slli.d	$a4, $a4, 2
	ldx.w	$t2, $s2, $a4
	ld.w	$a4, $a7, 0
	or	$a5, $t2, $a5
	blez	$a4, .LBB5_2
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=2
	move	$t1, $t0
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 4
	bltu	$t1, $a3, .LBB5_6
	b	.LBB5_2
.LBB5_8:                                # %._crit_edge112.thread
	st.w	$s5, $s3, 0
	b	.LBB5_10
.LBB5_9:                                # %._crit_edge112
	ori	$a0, $zero, 15
	st.w	$s5, $s3, 0
	blt	$a0, $s1, .LBB5_21
.LBB5_10:
	blez	$s1, .LBB5_20
# %bb.11:                               # %.lr.ph.i.preheader
	ori	$a1, $zero, 1
	move	$a2, $s1
	.p2align	4, , 16
.LBB5_12:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	addi.w	$a2, $a2, -1
	slli.w	$a1, $a1, 1
	bnez	$a2, .LBB5_12
# %bb.13:                               # %exponen.exit
	slli.w	$a2, $a0, 2
	bge	$a1, $a2, .LBB5_35
# %bb.14:                               # %.lr.ph128.us.preheader
	bstrpick.d	$a4, $s1, 31, 0
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a4, 1
	addi.d	$a5, $sp, 8
	alsl.d	$a4, $a4, $a5, 2
	ori	$a5, $zero, 1
	b	.LBB5_16
	.p2align	4, , 16
.LBB5_15:                               # %._crit_edge129.us
                                        #   in Loop: Header=BB5_16 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB5_35
.LBB5_16:                               # %.lr.ph128.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_18 Depth 2
	slli.d	$a6, $a1, 2
	stx.w	$a0, $fp, $a6
	ld.w	$t2, $s2, 128
	alsl.d	$a6, $a1, $fp, 2
	move	$a7, $a4
	move	$t0, $a3
	move	$t1, $a0
	move	$t3, $a1
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_17:                               #   in Loop: Header=BB5_18 Depth=2
	addi.w	$t3, $t3, 0
	srai.d	$t3, $t3, 1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, -4
	bge	$a5, $t0, .LBB5_15
.LBB5_18:                               #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t4, $t2, $t3
	addi.w	$t4, $t4, 0
	beqz	$t4, .LBB5_17
# %bb.19:                               #   in Loop: Header=BB5_18 Depth=2
	ld.w	$t2, $a7, 0
	or	$t1, $t2, $t1
	st.w	$t1, $a6, 0
	ld.w	$t2, $s2, 128
	b	.LBB5_17
.LBB5_20:                               # %.lr.ph131.split
	st.w	$zero, $fp, 4
	b	.LBB5_35
.LBB5_21:
	ori	$a0, $zero, 31
	bgeu	$s1, $a0, .LBB5_36
.LBB5_22:
	andi	$a0, $s1, 1
	add.d	$a0, $a0, $s1
	bstrpick.d	$a1, $a0, 31, 1
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB5_23:                               # %.lr.ph.i100
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a0
	addi.w	$a1, $a1, -1
	slli.w	$a0, $a0, 1
	bnez	$a1, .LBB5_23
# %bb.24:                               # %exponen.exit104
	slli.w	$a1, $a2, 2
	bge	$a0, $a1, .LBB5_35
# %bb.25:                               # %.lr.ph124
	bstrpick.d	$a2, $s1, 31, 1
	bstrpick.d	$a3, $s1, 31, 0
	slli.d	$a4, $a3, 2
	slli.d	$a5, $a2, 2
	sub.d	$a4, $a4, $a5
	addi.d	$a5, $sp, 8
	add.d	$a4, $a5, $a4
	alsl.d	$a5, $a3, $a5, 2
	move	$a6, $a0
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_26:                               # %._crit_edge122
                                        #   in Loop: Header=BB5_27 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $a1, .LBB5_35
.LBB5_27:                               # %.lr.ph116.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_29 Depth 2
                                        #     Child Loop BB5_33 Depth 2
	ld.wu	$a7, $s3, 0
	srli.d	$a7, $a7, 1
	slli.d	$t0, $a6, 2
	stx.w	$a7, $fp, $t0
	ld.w	$t2, $s2, 128
	alsl.d	$t0, $a6, $fp, 2
	move	$t1, $a4
	move	$t3, $a3
	move	$t4, $a6
	b	.LBB5_29
	.p2align	4, , 16
.LBB5_28:                               #   in Loop: Header=BB5_29 Depth=2
	addi.w	$t4, $t4, 0
	srai.d	$t4, $t4, 1
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, -4
	bge	$a2, $t3, .LBB5_31
.LBB5_29:                               # %.lr.ph116
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t5, $t2, $t4
	addi.w	$t5, $t5, 0
	beqz	$t5, .LBB5_28
# %bb.30:                               #   in Loop: Header=BB5_29 Depth=2
	ld.w	$t2, $t1, 0
	or	$a7, $t2, $a7
	st.w	$a7, $t0, 0
	ld.w	$t2, $s2, 128
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_31:                               # %.lr.ph121.preheader
                                        #   in Loop: Header=BB5_27 Depth=1
	sub.d	$a7, $a6, $a0
	slli.d	$t0, $a7, 2
	stx.w	$zero, $s0, $t0
	ld.w	$t1, $s2, 128
	move	$t0, $zero
	alsl.d	$t2, $a7, $s0, 2
	move	$t3, $a2
	move	$t4, $a5
	b	.LBB5_33
	.p2align	4, , 16
.LBB5_32:                               #   in Loop: Header=BB5_33 Depth=2
	addi.w	$a7, $a7, 0
	srai.d	$a7, $a7, 1
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, -4
	beqz	$t3, .LBB5_26
.LBB5_33:                               # %.lr.ph121
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t5, $t1, $a7
	addi.w	$t5, $t5, 0
	beqz	$t5, .LBB5_32
# %bb.34:                               #   in Loop: Header=BB5_33 Depth=2
	ld.w	$t1, $t4, 0
	or	$t0, $t1, $t0
	st.w	$t0, $t2, 0
	ld.w	$t1, $s2, 128
	b	.LBB5_32
.LBB5_35:                               # %.loopexit
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
.LBB5_36:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB5_22
.Lfunc_end5:
	.size	compute_next, .Lfunc_end5-compute_next
                                        # -- End function
	.globl	exponen                         # -- Begin function exponen
	.p2align	5
	.type	exponen,@function
exponen:                                # @exponen
# %bb.0:
	ori	$a1, $zero, 1
	blez	$a0, .LBB6_2
	.p2align	4, , 16
.LBB6_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, -1
	slli.w	$a1, $a1, 1
	bnez	$a0, .LBB6_1
.LBB6_2:                                # %._crit_edge
	move	$a0, $a1
	ret
.Lfunc_end6:
	.size	exponen, .Lfunc_end6-exponen
                                        # -- End function
	.globl	re1                             # -- Begin function re1
	.p2align	5
	.type	re1,@function
re1:                                    # @re1
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
	lu12i.w	$a3, 140
	ori	$a3, $a3, 3072
	sub.d	$sp, $sp, $a3
	ori	$a3, $zero, 31
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bge	$a1, $a3, .LBB7_155
# %bb.1:
	move	$s1, $a1
	pcalau12i	$a0, %pc_hi20(NO_ERR_MASK)
	ori	$a1, $zero, 32
	sub.w	$s2, $a1, $s1
	bstrpick.d	$a3, $s1, 31, 31
	add.w	$a3, $s1, $a3
	srai.d	$s6, $a3, 1
	addi.w	$a5, $s1, 1
	ori	$a3, $zero, 3
	pcalau12i	$a4, %pc_hi20(Bit)
	addi.d	$s0, $a4, %pc_lo12(Bit)
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bgeu	$a5, $a3, .LBB7_3
# %bb.2:
	move	$s7, $zero
	move	$s4, $zero
	b	.LBB7_11
.LBB7_3:                                # %.lr.ph.preheader
	move	$a2, $zero
	ori	$a3, $zero, 1
	sltu	$a4, $a3, $s6
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $s6, $a4
	ori	$a5, $zero, 8
	or	$s4, $a4, $a3
	bltu	$s6, $a5, .LBB7_8
# %bb.4:                                # %.lr.ph.preheader
	addi.d	$a3, $s4, -34
	addi.w	$a4, $zero, -33
	move	$s7, $a2
	bltu	$a3, $a4, .LBB7_9
# %bb.5:                                # %vector.ph
	move	$a3, $zero
	andi	$a2, $s4, 56
	ori	$a1, $zero, 32
	sub.d	$a1, $a1, $a2
	vrepli.b	$vr0, 0
	sub.d	$a4, $zero, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB7_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a3, 32
	bstrpick.d	$a5, $a5, 31, 0
	alsl.d	$a5, $a5, $s0, 2
	vld	$vr2, $a5, -12
	vld	$vr3, $a5, -28
	vshuf4i.w	$vr2, $vr2, 27
	vshuf4i.w	$vr3, $vr3, 27
	vor.v	$vr0, $vr2, $vr0
	addi.w	$a3, $a3, -8
	vor.v	$vr1, $vr3, $vr1
	bne	$a4, $a3, .LBB7_6
# %bb.7:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$s7, $vr0, 0
	bne	$s6, $a2, .LBB7_9
	b	.LBB7_11
.LBB7_8:
	move	$s7, $a2
.LBB7_9:                                # %.lr.ph.preheader713
	sub.d	$a2, $s4, $a2
	.p2align	4, , 16
.LBB7_10:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s0, $a3
	or	$s7, $a3, $s7
	addi.w	$a2, $a2, -1
	addi.w	$a1, $a1, -1
	bnez	$a2, .LBB7_10
.LBB7_11:                               # %._crit_edge
	pcalau12i	$s3, %pc_hi20(FIRST_IN_RE)
	ld.w	$a1, $s3, %pc_lo12(FIRST_IN_RE)
	ld.w	$fp, $a0, %pc_lo12(NO_ERR_MASK)
	beqz	$a1, .LBB7_13
# %bb.12:
	lu12i.w	$a0, 76
	ori	$a0, $a0, 3112
	add.d	$a1, $sp, $a0
	lu12i.w	$a0, 12
	ori	$a0, $a0, 1256
	add.d	$a2, $sp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(compute_next)
	jirl	$ra, $ra, 0
.LBB7_13:
	slli.d	$a0, $s2, 2
	ldx.w	$a5, $s0, $a0
	st.w	$zero, $s3, %pc_lo12(FIRST_IN_RE)
	pcalau12i	$a0, %pc_hi20(Init)
	addi.d	$a1, $a0, %pc_lo12(Init)
	pcalau12i	$a0, %pc_hi20(HEAD)
	ld.w	$a0, $a0, %pc_lo12(HEAD)
	st.w	$a5, $a1, 0
	beqz	$a0, .LBB7_15
# %bb.14:
	ori	$a0, $zero, 33
	sub.w	$a0, $a0, $s1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s0, $a0
	or	$a5, $a0, $a5
	st.w	$a5, $a1, 0
.LBB7_15:
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ori	$s0, $zero, 1
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	beqz	$s3, .LBB7_19
# %bb.16:                               # %.lr.ph582.preheader
	addi.w	$s0, $s3, 1
	ori	$a2, $zero, 2
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s0, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	lu12i.w	$a3, 76
	ori	$a3, $a3, 3112
	add.d	$a3, $sp, $a3
	lu12i.w	$a4, 12
	ori	$a4, $a4, 1256
	add.d	$a4, $sp, $a4
	.p2align	4, , 16
.LBB7_17:                               # %.lr.ph582
                                        # =>This Inner Loop Header: Depth=1
	srl.w	$a6, $a5, $s6
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $a3
	and	$a7, $a5, $s7
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a7, $a4
	or	$a6, $a6, $a7
	or	$a5, $a6, $a5
	st.w	$a5, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB7_17
# %bb.18:
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
.LBB7_19:                               # %._crit_edge583
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
	ori	$a1, $a5, 1
	pcalau12i	$a2, %pc_hi20(Init1)
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	st.w	$a1, $a2, %pc_lo12(Init1)
	sltu	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$s1, $a0, 2
	pcalau12i	$a0, %pc_hi20(Init)
	addi.d	$s2, $a0, %pc_lo12(Init)
	lu12i.w	$a0, 141
	ori	$a0, $a0, 872
	add.d	$a0, $sp, $a0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 141
	ori	$a0, $a0, 896
	add.d	$a0, $sp, $a0
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 1255
	lu12i.w	$a2, 12
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(num_of_matched)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(TAIL)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(INVERSE)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(FILENAMEONLY)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Mask)
	addi.d	$a1, $a1, %pc_lo12(Mask)
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(COUNT)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(FNAME)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(LINENUM)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	beqz	$s3, .LBB7_103
# %bb.20:                               # %.preheader560
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	blez	$a0, .LBB7_154
# %bb.21:                               # %.lr.ph600
	move	$a0, $zero
	lu12i.w	$a1, 141
	ori	$a1, $a1, 872
	add.d	$a1, $sp, $a1
	alsl.d	$s1, $s3, $a1, 2
	lu12i.w	$a1, 141
	ori	$a1, $a1, 896
	add.d	$a1, $sp, $a1
	alsl.d	$a1, $s3, $a1, 2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sltu	$a1, $a2, $a4
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	ori	$a5, $zero, 2
	sltu	$a2, $a5, $a4
	masknez	$a3, $a5, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a1, 31, 0
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$a1, $a1, 31, 3
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a1
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	addi.d	$t2, $sp, 231
	ori	$t3, $zero, 10
	lu12i.w	$a1, 76
	ori	$a1, $a1, 3112
	add.d	$s0, $sp, $a1
	lu12i.w	$a1, 12
	ori	$a1, $a1, 1256
	add.d	$s5, $sp, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               #   in Loop: Header=BB7_23 Depth=1
	st.d	$s8, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	add.d	$a1, $t2, $a0
	addi.d	$a0, $sp, 231
	ori	$a2, $zero, 1024
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $sp, 1255
	lu12i.w	$a2, 12
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 10
	addi.d	$t2, $sp, 231
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	ori	$a5, $zero, 2
	blez	$a1, .LBB7_154
.LBB7_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
                                        #       Child Loop BB7_40 Depth 3
                                        #       Child Loop BB7_46 Depth 3
                                        #       Child Loop BB7_55 Depth 3
                                        #       Child Loop BB7_58 Depth 3
                                        #       Child Loop BB7_60 Depth 3
                                        #       Child Loop BB7_72 Depth 3
                                        #       Child Loop BB7_78 Depth 3
                                        #       Child Loop BB7_87 Depth 3
                                        #       Child Loop BB7_90 Depth 3
                                        #       Child Loop BB7_92 Depth 3
	bstrpick.d	$a2, $a1, 31, 14
	addi.w	$a1, $a1, 1024
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	bltu	$a5, $a2, .LBB7_26
# %bb.24:                               #   in Loop: Header=BB7_23 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1023
	bstrpick.d	$a1, $a1, 16, 0
	ldx.bu	$a1, $a1, $t2
	beq	$a1, $t3, .LBB7_26
# %bb.25:                               #   in Loop: Header=BB7_23 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	stx.b	$t3, $a1, $t2
.LBB7_26:                               #   in Loop: Header=BB7_23 Depth=1
	andi	$a0, $a0, 1
	ori	$s4, $zero, 1024
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	bnez	$a0, .LBB7_28
# %bb.27:                               #   in Loop: Header=BB7_23 Depth=1
	st.b	$t3, $sp, 1254
	ori	$s4, $zero, 1023
.LBB7_28:                               # %.preheader707
                                        #   in Loop: Header=BB7_23 Depth=1
	addi.w	$a0, $s4, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$t4, $s4, 2
	b	.LBB7_31
.LBB7_29:                               # %.loopexit558.sink.split
                                        #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a1, 141
	ori	$a1, $a1, 888
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	.p2align	4, , 16
.LBB7_30:                               # %.loopexit558
                                        #   in Loop: Header=BB7_31 Depth=2
	addi.w	$s4, $s4, 2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$t4, $t4, 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB7_22
.LBB7_31:                               #   Parent Loop BB7_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_40 Depth 3
                                        #       Child Loop BB7_46 Depth 3
                                        #       Child Loop BB7_55 Depth 3
                                        #       Child Loop BB7_58 Depth 3
                                        #       Child Loop BB7_60 Depth 3
                                        #       Child Loop BB7_72 Depth 3
                                        #       Child Loop BB7_78 Depth 3
                                        #       Child Loop BB7_87 Depth 3
                                        #       Child Loop BB7_90 Depth 3
                                        #       Child Loop BB7_92 Depth 3
	ldx.bu	$a0, $s4, $t2
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$s2, $a2, $a1
	bne	$a0, $t3, .LBB7_49
# %bb.32:                               #   in Loop: Header=BB7_31 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(Init1)
	srl.w	$a2, $a0, $s6
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s0
	and	$a3, $a0, $s7
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s5
	and	$a0, $a0, $a1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(TAIL)
	or	$a2, $a3, $a2
	and	$a2, $a2, $s2
	or	$a0, $a2, $a0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	st.d	$t4, $sp, 136                   # 8-byte Folded Spill
	beqz	$a1, .LBB7_34
# %bb.33:                               #   in Loop: Header=BB7_31 Depth=2
	srl.w	$a1, $a0, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s0
	and	$a2, $a0, $s7
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s5
	or	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.w	$a0, $a3, 0
.LBB7_34:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(INVERSE)
	andi	$a0, $a0, 1
	addi.w	$s8, $s8, 1
	beq	$a0, $a1, .LBB7_47
# %bb.35:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(num_of_matched)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(FILENAMEONLY)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(num_of_matched)
	bnez	$a1, .LBB7_153
# %bb.36:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(COUNT)
	bnez	$a0, .LBB7_47
# %bb.37:                               #   in Loop: Header=BB7_31 Depth=2
	move	$s3, $s8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	beqz	$a0, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_31 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$a1, $a1, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB7_39:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	move	$s1, $s4
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 231
	ori	$a4, $zero, 10
	.p2align	4, , 16
.LBB7_40:                               #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s1
	add.d	$a0, $a3, $s1
	ld.bu	$a0, $a0, -1
	addi.d	$s1, $s1, -1
	addi.w	$s8, $s8, -1
	blt	$a1, $a2, .LBB7_42
# %bb.41:                               #   in Loop: Header=BB7_40 Depth=3
	bne	$a0, $a4, .LBB7_40
.LBB7_42:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(LINENUM)
	beqz	$a1, .LBB7_44
# %bb.43:                               #   in Loop: Header=BB7_31 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 231
	ldx.bu	$a0, $s1, $a0
.LBB7_44:                               #   in Loop: Header=BB7_31 Depth=2
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1024
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s8, $a0
	or	$s1, $a0, $a1
	move	$s8, $s3
	blt	$s4, $s1, .LBB7_47
# %bb.45:                               # %.lr.ph.preheader.i535
                                        #   in Loop: Header=BB7_31 Depth=2
	addi.d	$a0, $sp, 231
	add.d	$s3, $a0, $s1
	.p2align	4, , 16
.LBB7_46:                               # %.lr.ph.i536
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB7_46
	.p2align	4, , 16
.LBB7_47:                               # %r_output.exit541
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB7_54
# %bb.48:                               #   in Loop: Header=BB7_31 Depth=2
	move	$a2, $zero
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ori	$t3, $zero, 10
	b	.LBB7_57
	.p2align	4, , 16
.LBB7_49:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a0, 141
	ori	$a0, $a0, 872
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(Init1)
	and	$a1, $a0, $a2
	beqz	$s2, .LBB7_94
# %bb.50:                               #   in Loop: Header=BB7_31 Depth=2
	srl.w	$a3, $a2, $s6
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s0
	and	$a4, $a2, $s7
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s5
	or	$a3, $a4, $a3
	and	$a4, $a3, $s2
	lu12i.w	$a3, 141
	ori	$a3, $a3, 876
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	or	$a1, $a4, $a1
	lu12i.w	$a5, 141
	ori	$a5, $a5, 896
	add.d	$a5, $sp, $a5
	st.w	$a1, $a5, 0
	or	$a4, $a4, $a2
	srl.w	$a5, $a3, $s6
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s0
	and	$a6, $a3, $s7
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s5
	srl.w	$a7, $a4, $s6
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a7, $s0
	and	$a4, $a4, $s7
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s5
	or	$a5, $a6, $a5
	and	$a6, $a3, $a0
	and	$a5, $a5, $s2
	or	$a4, $a7, $a4
	or	$a2, $a4, $a2
	and	$a2, $a2, $fp
	or	$a4, $a2, $a5
	or	$a2, $a4, $a6
	lu12i.w	$a5, 141
	ori	$a5, $a5, 900
	add.d	$a5, $sp, $a5
	st.w	$a2, $a5, 0
	ori	$a2, $zero, 1
	beq	$s3, $a2, .LBB7_62
# %bb.51:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a2, 141
	ori	$a2, $a2, 880
	add.d	$a2, $sp, $a2
	ld.w	$a2, $a2, 0
	or	$a4, $a4, $a3
	srl.w	$a5, $a2, $s6
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s0
	and	$a6, $a2, $s7
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s5
	srl.w	$a7, $a4, $s6
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a7, $s0
	and	$a4, $a4, $s7
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s5
	or	$a5, $a6, $a5
	and	$a6, $a2, $a0
	and	$a5, $a5, $s2
	or	$a4, $a7, $a4
	or	$a3, $a4, $a3
	and	$a3, $a3, $fp
	or	$a4, $a3, $a5
	or	$a3, $a4, $a6
	lu12i.w	$a5, 141
	ori	$a5, $a5, 904
	add.d	$a5, $sp, $a5
	st.w	$a3, $a5, 0
	ori	$a3, $zero, 2
	beq	$s3, $a3, .LBB7_62
# %bb.52:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a3, 141
	ori	$a3, $a3, 884
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	or	$a4, $a4, $a2
	srl.w	$a5, $a3, $s6
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s0
	and	$a6, $a3, $s7
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s5
	srl.w	$a7, $a4, $s6
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a7, $s0
	and	$a4, $a4, $s7
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s5
	or	$a5, $a6, $a5
	and	$a6, $a3, $a0
	and	$a5, $a5, $s2
	or	$a4, $a7, $a4
	or	$a2, $a4, $a2
	and	$a2, $a2, $fp
	or	$a2, $a2, $a5
	or	$a4, $a2, $a6
	lu12i.w	$a5, 141
	ori	$a5, $a5, 908
	add.d	$a5, $sp, $a5
	st.w	$a4, $a5, 0
	ori	$a4, $zero, 3
	beq	$s3, $a4, .LBB7_62
# %bb.53:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a4, 141
	ori	$a4, $a4, 888
	add.d	$a4, $sp, $a4
	ld.w	$a4, $a4, 0
	or	$a2, $a2, $a3
	srl.w	$a5, $a4, $s6
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s0
	and	$a6, $a4, $s7
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s5
	srl.w	$a7, $a2, $s6
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a7, $s0
	and	$a2, $a2, $s7
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s5
	or	$a5, $a6, $a5
	and	$a4, $a4, $a0
	and	$a5, $a5, $s2
	or	$a2, $a7, $a2
	or	$a2, $a2, $a3
	and	$a2, $a2, $fp
	or	$a3, $a5, $a4
	or	$a2, $a3, $a2
	b	.LBB7_98
	.p2align	4, , 16
.LBB7_54:                               # %vector.ph694
                                        #   in Loop: Header=BB7_31 Depth=2
	vreplgr2vr.w	$vr0, $a0
	lu12i.w	$a1, 141
	ori	$a1, $a1, 888
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ori	$t3, $zero, 10
	.p2align	4, , 16
.LBB7_55:                               # %vector.body699
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB7_55
# %bb.56:                               # %middle.block702
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $a3
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$a3, $a1, .LBB7_59
.LBB7_57:                               # %scalar.ph692.preheader
                                        #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a1, 141
	ori	$a1, $a1, 872
	add.d	$a1, $sp, $a1
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB7_58:                               # %scalar.ph692
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB7_58
.LBB7_59:                               # %.lr.ph589.preheader
                                        #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a0, 141
	ori	$a0, $a0, 872
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(Init1)
	srl.w	$a1, $a2, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s0
	and	$a3, $a2, $s7
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s5
	and	$a4, $a2, $a0
	or	$a1, $a3, $a1
	and	$a1, $a1, $s2
	or	$a1, $a1, $a4
	lu12i.w	$a3, 141
	ori	$a3, $a3, 896
	add.d	$a3, $sp, $a3
	st.w	$a1, $a3, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	lu12i.w	$a4, 141
	ori	$a4, $a4, 900
	add.d	$a4, $sp, $a4
	lu12i.w	$a5, 141
	ori	$a5, $a5, 876
	add.d	$a5, $sp, $a5
	move	$a6, $a1
	ld.d	$t4, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_60:                               # %.lr.ph589
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a5, 0
	or	$a6, $a2, $a6
	srl.w	$t0, $a7, $s6
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $t0, $s0
	and	$t1, $a7, $s7
	srl.w	$t2, $a6, $s6
	bstrpick.d	$t2, $t2, 31, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t2, $s0
	and	$a6, $a6, $s7
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s5
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $t1, $s5
	or	$a6, $t2, $a6
	or	$a2, $a6, $a2
	and	$a6, $a7, $a0
	or	$t0, $t1, $t0
	and	$t0, $t0, $s2
	and	$a2, $a2, $fp
	or	$a6, $t0, $a6
	or	$a6, $a6, $a2
	st.w	$a6, $a4, 0
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	move	$a2, $a7
	bnez	$a3, .LBB7_60
# %bb.61:                               #   in Loop: Header=BB7_31 Depth=2
	addi.d	$t2, $sp, 231
.LBB7_62:                               # %.loopexit559
                                        #   in Loop: Header=BB7_31 Depth=2
	addi.w	$s3, $s4, 1
	ldx.bu	$a2, $s3, $t2
	slli.d	$a3, $a2, 2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$s2, $a4, $a3
	bne	$a2, $t3, .LBB7_81
# %bb.63:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	srl.w	$a2, $a1, $s6
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s0
	and	$a3, $a1, $s7
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s5
	and	$a0, $a1, $a0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(TAIL)
	or	$a2, $a3, $a2
	and	$a2, $a2, $s2
	or	$a0, $a2, $a0
	st.w	$a0, $s1, 0
	beqz	$a1, .LBB7_65
# %bb.64:                               #   in Loop: Header=BB7_31 Depth=2
	srl.w	$a1, $a0, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s0
	and	$a2, $a0, $s7
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s5
	or	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.w	$a0, $s1, 0
.LBB7_65:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(INVERSE)
	andi	$a0, $a0, 1
	addi.w	$s8, $s8, 1
	beq	$a0, $a1, .LBB7_79
# %bb.66:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FILENAMEONLY)
	bnez	$a0, .LBB7_152
# %bb.67:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bge	$s3, $a0, .LBB7_79
# %bb.68:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(num_of_matched)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(COUNT)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(num_of_matched)
	bnez	$a1, .LBB7_79
# %bb.69:                               #   in Loop: Header=BB7_31 Depth=2
	st.d	$s8, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	beqz	$a0, .LBB7_71
# %bb.70:                               #   in Loop: Header=BB7_31 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$a1, $a1, %pc_lo12(CurrentFileName)
	move	$s1, $t4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t4, $s1
	ori	$t3, $zero, 10
	addi.d	$t2, $sp, 231
.LBB7_71:                               #   in Loop: Header=BB7_31 Depth=2
	move	$s1, $t4
	move	$s8, $s3
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB7_72:                               #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s8
	add.d	$a0, $t2, $s8
	ld.bu	$a0, $a0, -1
	addi.d	$s8, $s8, -1
	addi.w	$s1, $s1, -1
	blt	$a1, $a2, .LBB7_74
# %bb.73:                               #   in Loop: Header=BB7_72 Depth=3
	bne	$a0, $t3, .LBB7_72
.LBB7_74:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(LINENUM)
	beqz	$a1, .LBB7_76
# %bb.75:                               #   in Loop: Header=BB7_31 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$t4, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 136                   # 8-byte Folded Reload
	ori	$t3, $zero, 10
	addi.d	$t2, $sp, 231
	ldx.bu	$a0, $s8, $t2
.LBB7_76:                               #   in Loop: Header=BB7_31 Depth=2
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1024
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	blt	$s3, $s1, .LBB7_79
# %bb.77:                               # %.lr.ph.preheader.i551
                                        #   in Loop: Header=BB7_31 Depth=2
	add.d	$s3, $t2, $s1
	.p2align	4, , 16
.LBB7_78:                               # %.lr.ph.i552
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	move	$s0, $fp
	move	$fp, $s4
	move	$s4, $s8
	move	$s8, $t4
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$t4, $s8
	move	$s8, $s4
	move	$s4, $fp
	move	$fp, $s0
	lu12i.w	$a0, 76
	ori	$a0, $a0, 3112
	add.d	$s0, $sp, $a0
	ori	$t3, $zero, 10
	addi.d	$t2, $sp, 231
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, 1
	bne	$t4, $s1, .LBB7_78
	.p2align	4, , 16
.LBB7_79:                               # %r_output.exit557
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB7_86
# %bb.80:                               #   in Loop: Header=BB7_31 Depth=2
	move	$a1, $zero
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	b	.LBB7_89
	.p2align	4, , 16
.LBB7_81:                               #   in Loop: Header=BB7_31 Depth=2
	and	$a3, $a0, $a1
	beqz	$s2, .LBB7_99
# %bb.82:                               #   in Loop: Header=BB7_31 Depth=2
	srl.w	$a2, $a1, $s6
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s0
	and	$a4, $a1, $s7
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s5
	or	$a2, $a4, $a2
	and	$a4, $a2, $s2
	lu12i.w	$a2, 141
	ori	$a2, $a2, 900
	add.d	$a2, $sp, $a2
	ld.w	$a2, $a2, 0
	or	$a3, $a4, $a3
	lu12i.w	$a5, 141
	ori	$a5, $a5, 872
	add.d	$a5, $sp, $a5
	st.w	$a3, $a5, 0
	or	$a3, $a4, $a1
	srl.w	$a4, $a2, $s6
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	and	$a5, $a2, $s7
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s5
	srl.w	$a6, $a3, $s6
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s0
	and	$a3, $a3, $s7
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s5
	or	$a4, $a5, $a4
	and	$a5, $a2, $a0
	and	$a4, $a4, $s2
	or	$a3, $a6, $a3
	or	$a1, $a3, $a1
	and	$a1, $a1, $fp
	or	$a3, $a1, $a4
	or	$a1, $a3, $a5
	lu12i.w	$a4, 141
	ori	$a4, $a4, 876
	add.d	$a4, $sp, $a4
	st.w	$a1, $a4, 0
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	beq	$s3, $a1, .LBB7_30
# %bb.83:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a1, 141
	ori	$a1, $a1, 904
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	or	$a3, $a3, $a2
	srl.w	$a4, $a1, $s6
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	and	$a5, $a1, $s7
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s5
	srl.w	$a6, $a3, $s6
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s0
	and	$a3, $a3, $s7
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s5
	or	$a4, $a5, $a4
	and	$a5, $a1, $a0
	and	$a4, $a4, $s2
	or	$a3, $a6, $a3
	or	$a2, $a3, $a2
	and	$a2, $a2, $fp
	or	$a3, $a2, $a4
	or	$a2, $a3, $a5
	lu12i.w	$a4, 141
	ori	$a4, $a4, 880
	add.d	$a4, $sp, $a4
	st.w	$a2, $a4, 0
	ori	$a2, $zero, 2
	beq	$s3, $a2, .LBB7_30
# %bb.84:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a2, 141
	ori	$a2, $a2, 908
	add.d	$a2, $sp, $a2
	ld.w	$a2, $a2, 0
	or	$a3, $a3, $a1
	srl.w	$a4, $a2, $s6
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	and	$a5, $a2, $s7
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s5
	srl.w	$a6, $a3, $s6
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s0
	and	$a3, $a3, $s7
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s5
	or	$a4, $a5, $a4
	and	$a5, $a2, $a0
	and	$a4, $a4, $s2
	or	$a3, $a6, $a3
	or	$a1, $a3, $a1
	and	$a1, $a1, $fp
	or	$a1, $a1, $a4
	or	$a3, $a1, $a5
	lu12i.w	$a4, 141
	ori	$a4, $a4, 884
	add.d	$a4, $sp, $a4
	st.w	$a3, $a4, 0
	ori	$a3, $zero, 3
	beq	$s3, $a3, .LBB7_30
# %bb.85:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a3, 141
	ori	$a3, $a3, 912
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	or	$a1, $a1, $a2
	srl.w	$a4, $a3, $s6
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	and	$a5, $a3, $s7
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s5
	srl.w	$a6, $a1, $s6
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s0
	and	$a1, $a1, $s7
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s5
	and	$a0, $a3, $a0
	or	$a3, $a5, $a4
	and	$a3, $a3, $s2
	or	$a1, $a6, $a1
	or	$a1, $a1, $a2
	and	$a1, $a1, $fp
	or	$a0, $a3, $a0
	or	$a0, $a0, $a1
	b	.LBB7_29
	.p2align	4, , 16
.LBB7_86:                               # %vector.body686.preheader
                                        #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a0, 141
	ori	$a0, $a0, 912
	add.d	$a0, $sp, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB7_87:                               # %vector.body686
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a0, -16
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB7_87
# %bb.88:                               # %middle.block689
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $a3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$a3, $a0, .LBB7_91
.LBB7_89:                               # %scalar.ph681.preheader
                                        #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a0, 141
	ori	$a0, $a0, 896
	add.d	$a0, $sp, $a0
	alsl.d	$a0, $a1, $a0, 2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB7_90:                               # %scalar.ph681
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB7_90
.LBB7_91:                               # %.lr.ph594.preheader
                                        #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a0, 141
	ori	$a0, $a0, 896
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(Init1)
	srl.w	$a1, $a2, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s0
	and	$a3, $a2, $s7
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s5
	and	$a4, $a2, $a0
	or	$a1, $a3, $a1
	and	$a1, $a1, $s2
	or	$a5, $a1, $a4
	lu12i.w	$a1, 141
	ori	$a1, $a1, 872
	add.d	$a1, $sp, $a1
	st.w	$a5, $a1, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	lu12i.w	$a3, 141
	ori	$a3, $a3, 876
	add.d	$a3, $sp, $a3
	lu12i.w	$a4, 141
	ori	$a4, $a4, 900
	add.d	$a4, $sp, $a4
	.p2align	4, , 16
.LBB7_92:                               # %.lr.ph594
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a4, 0
	or	$a5, $a5, $a2
	srl.w	$a7, $a6, $s6
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a7, $s0
	and	$t0, $a6, $s7
	srl.w	$t1, $a5, $s6
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $t1, $s0
	and	$a5, $a5, $s7
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s5
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $t0, $s5
	or	$a5, $t1, $a5
	or	$a2, $a5, $a2
	and	$a5, $a6, $a0
	or	$a7, $t0, $a7
	and	$a7, $a7, $s2
	and	$a2, $a2, $fp
	or	$a5, $a7, $a5
	or	$a5, $a5, $a2
	st.w	$a5, $a3, 0
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	move	$a2, $a6
	bnez	$a1, .LBB7_92
# %bb.93:                               #   in Loop: Header=BB7_31 Depth=2
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB7_30
.LBB7_94:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a3, 141
	ori	$a3, $a3, 876
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	srl.w	$a4, $a2, $s6
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	and	$a5, $a2, $s7
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s5
	lu12i.w	$a6, 141
	ori	$a6, $a6, 896
	add.d	$a6, $sp, $a6
	st.w	$a1, $a6, 0
	and	$a6, $a3, $a0
	or	$a4, $a4, $a5
	or	$a2, $a4, $a2
	and	$a4, $a2, $fp
	or	$a2, $a4, $a6
	lu12i.w	$a5, 141
	ori	$a5, $a5, 900
	add.d	$a5, $sp, $a5
	st.w	$a2, $a5, 0
	ori	$a2, $zero, 1
	beq	$s3, $a2, .LBB7_62
# %bb.95:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a2, 141
	ori	$a2, $a2, 880
	add.d	$a2, $sp, $a2
	ld.w	$a2, $a2, 0
	or	$a4, $a4, $a3
	srl.w	$a5, $a4, $s6
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s0
	and	$a4, $a4, $s7
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s5
	and	$a6, $a2, $a0
	or	$a4, $a5, $a4
	or	$a3, $a4, $a3
	and	$a4, $a3, $fp
	or	$a3, $a4, $a6
	lu12i.w	$a5, 141
	ori	$a5, $a5, 904
	add.d	$a5, $sp, $a5
	st.w	$a3, $a5, 0
	ori	$a3, $zero, 2
	beq	$s3, $a3, .LBB7_62
# %bb.96:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a3, 141
	ori	$a3, $a3, 884
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	or	$a4, $a4, $a2
	srl.w	$a5, $a4, $s6
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s0
	and	$a4, $a4, $s7
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s5
	and	$a6, $a3, $a0
	or	$a4, $a5, $a4
	or	$a2, $a4, $a2
	and	$a2, $a2, $fp
	or	$a4, $a2, $a6
	lu12i.w	$a5, 141
	ori	$a5, $a5, 908
	add.d	$a5, $sp, $a5
	st.w	$a4, $a5, 0
	ori	$a4, $zero, 3
	beq	$s3, $a4, .LBB7_62
# %bb.97:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a4, 141
	ori	$a4, $a4, 888
	add.d	$a4, $sp, $a4
	ld.w	$a4, $a4, 0
	or	$a2, $a2, $a3
	srl.w	$a5, $a2, $s6
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s0
	and	$a2, $a2, $s7
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s5
	and	$a4, $a4, $a0
	or	$a2, $a5, $a2
	or	$a2, $a2, $a3
	and	$a2, $a2, $fp
	or	$a2, $a2, $a4
.LBB7_98:                               # %.loopexit559.sink.split
                                        #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a3, 141
	ori	$a3, $a3, 912
	add.d	$a3, $sp, $a3
	st.w	$a2, $a3, 0
	b	.LBB7_62
.LBB7_99:                               #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a2, 141
	ori	$a2, $a2, 900
	add.d	$a2, $sp, $a2
	ld.w	$a2, $a2, 0
	srl.w	$a4, $a1, $s6
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	and	$a5, $a1, $s7
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s5
	lu12i.w	$a6, 141
	ori	$a6, $a6, 872
	add.d	$a6, $sp, $a6
	st.w	$a3, $a6, 0
	and	$a6, $a2, $a0
	or	$a3, $a4, $a5
	or	$a1, $a3, $a1
	and	$a3, $a1, $fp
	or	$a1, $a3, $a6
	lu12i.w	$a4, 141
	ori	$a4, $a4, 876
	add.d	$a4, $sp, $a4
	st.w	$a1, $a4, 0
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	beq	$s3, $a1, .LBB7_30
# %bb.100:                              #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a1, 141
	ori	$a1, $a1, 904
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	or	$a3, $a3, $a2
	srl.w	$a4, $a3, $s6
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	and	$a3, $a3, $s7
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s5
	and	$a5, $a1, $a0
	or	$a3, $a4, $a3
	or	$a2, $a3, $a2
	and	$a3, $a2, $fp
	or	$a2, $a3, $a5
	lu12i.w	$a4, 141
	ori	$a4, $a4, 880
	add.d	$a4, $sp, $a4
	st.w	$a2, $a4, 0
	ori	$a2, $zero, 2
	beq	$s3, $a2, .LBB7_30
# %bb.101:                              #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a2, 141
	ori	$a2, $a2, 908
	add.d	$a2, $sp, $a2
	ld.w	$a2, $a2, 0
	or	$a3, $a3, $a1
	srl.w	$a4, $a3, $s6
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	and	$a3, $a3, $s7
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s5
	and	$a5, $a2, $a0
	or	$a3, $a4, $a3
	or	$a1, $a3, $a1
	and	$a1, $a1, $fp
	or	$a3, $a1, $a5
	lu12i.w	$a4, 141
	ori	$a4, $a4, 884
	add.d	$a4, $sp, $a4
	st.w	$a3, $a4, 0
	ori	$a3, $zero, 3
	beq	$s3, $a3, .LBB7_30
# %bb.102:                              #   in Loop: Header=BB7_31 Depth=2
	lu12i.w	$a3, 141
	ori	$a3, $a3, 912
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	or	$a1, $a1, $a2
	srl.w	$a4, $a1, $s6
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	and	$a1, $a1, $s7
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s5
	and	$a0, $a3, $a0
	or	$a1, $a4, $a1
	or	$a1, $a1, $a2
	and	$a1, $a1, $fp
	or	$a0, $a1, $a0
	b	.LBB7_29
.LBB7_103:                              # %.preheader
	blez	$a0, .LBB7_154
# %bb.104:                              # %.lr.ph607
	move	$a0, $zero
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	srl.w	$a1, $s8, $s6
	bstrpick.d	$a1, $a1, 31, 0
	lu12i.w	$a2, 76
	ori	$a2, $a2, 3112
	add.d	$s4, $sp, $a2
	alsl.d	$a1, $a1, $s4, 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	and	$a1, $s8, $s7
	bstrpick.d	$a1, $a1, 31, 0
	lu12i.w	$a2, 12
	ori	$a2, $a2, 1256
	add.d	$s3, $sp, $a2
	alsl.d	$a1, $a1, $s3, 2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 231
	ori	$a6, $zero, 10
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB7_106
	.p2align	4, , 16
.LBB7_105:                              #   in Loop: Header=BB7_106 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	add.d	$a1, $a5, $a0
	addi.d	$a0, $sp, 231
	ori	$a2, $zero, 1024
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $sp, 1255
	lu12i.w	$a2, 12
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 10
	addi.d	$a5, $sp, 231
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	ori	$a3, $zero, 2
	blez	$a1, .LBB7_154
.LBB7_106:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_114 Depth 2
                                        #       Child Loop BB7_123 Depth 3
                                        #       Child Loop BB7_129 Depth 3
                                        #       Child Loop BB7_143 Depth 3
                                        #       Child Loop BB7_149 Depth 3
	bstrpick.d	$a2, $a1, 31, 14
	addi.w	$a1, $a1, 1024
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	bltu	$a3, $a2, .LBB7_109
# %bb.107:                              #   in Loop: Header=BB7_106 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1023
	bstrpick.d	$a1, $a1, 16, 0
	ldx.bu	$a1, $a1, $a5
	beq	$a1, $a6, .LBB7_109
# %bb.108:                              #   in Loop: Header=BB7_106 Depth=1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$a6, $a1, $a5
.LBB7_109:                              #   in Loop: Header=BB7_106 Depth=1
	andi	$a0, $a0, 1
	ori	$s2, $zero, 1024
	bnez	$a0, .LBB7_111
# %bb.110:                              #   in Loop: Header=BB7_106 Depth=1
	st.b	$a6, $sp, 1254
	ori	$s2, $zero, 1023
.LBB7_111:                              # %.preheader705
                                        #   in Loop: Header=BB7_106 Depth=1
	addi.w	$fp, $s2, 1
	addi.w	$s1, $s2, 2
	b	.LBB7_114
	.p2align	4, , 16
.LBB7_112:                              # %r_output.exit525
                                        #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	or	$a0, $a1, $a0
	and	$a0, $a0, $s0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	or	$s8, $a0, $a1
	lu12i.w	$a0, 12
	ori	$a0, $a0, 1256
	add.d	$s3, $sp, $a0
.LBB7_113:                              #   in Loop: Header=BB7_114 Depth=2
	addi.w	$s2, $s2, 2
	addi.w	$fp, $fp, 2
	addi.w	$s1, $s1, 2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB7_105
.LBB7_114:                              #   Parent Loop BB7_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_123 Depth 3
                                        #       Child Loop BB7_129 Depth 3
                                        #       Child Loop BB7_143 Depth 3
                                        #       Child Loop BB7_149 Depth 3
	ldx.bu	$a1, $s2, $a5
	slli.d	$a0, $a1, 2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(Init1)
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$s0, $a3, $a0
	and	$a0, $a2, $s8
	bne	$a1, $a6, .LBB7_131
# %bb.115:                              #   in Loop: Header=BB7_114 Depth=2
	srl.w	$a1, $s8, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s4
	and	$a2, $s8, $s7
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s3
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(TAIL)
	or	$a1, $a2, $a1
	and	$a1, $a1, $s0
	or	$a0, $a1, $a0
	beqz	$a3, .LBB7_117
# %bb.116:                              #   in Loop: Header=BB7_114 Depth=2
	srl.w	$a1, $a0, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s4
	and	$a2, $a0, $s7
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s3
	or	$a1, $a1, $a2
	or	$a0, $a1, $a0
.LBB7_117:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(INVERSE)
	andi	$a0, $a0, 1
	addi.w	$s5, $s5, 1
	beq	$a0, $a1, .LBB7_130
# %bb.118:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(num_of_matched)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(FILENAMEONLY)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(num_of_matched)
	bnez	$a1, .LBB7_153
# %bb.119:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(COUNT)
	bnez	$a0, .LBB7_130
# %bb.120:                              #   in Loop: Header=BB7_114 Depth=2
	move	$s3, $s5
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	beqz	$a0, .LBB7_122
# %bb.121:                              #   in Loop: Header=BB7_114 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$a1, $a1, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB7_122:                              #   in Loop: Header=BB7_114 Depth=2
	move	$s4, $fp
	move	$s8, $s2
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 231
	ori	$a4, $zero, 10
	.p2align	4, , 16
.LBB7_123:                              #   Parent Loop BB7_106 Depth=1
                                        #     Parent Loop BB7_114 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s8
	add.d	$a0, $a3, $s8
	ld.bu	$a0, $a0, -1
	addi.d	$s8, $s8, -1
	addi.w	$s4, $s4, -1
	blt	$a1, $a2, .LBB7_125
# %bb.124:                              #   in Loop: Header=BB7_123 Depth=3
	bne	$a0, $a4, .LBB7_123
.LBB7_125:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(LINENUM)
	beqz	$a1, .LBB7_127
# %bb.126:                              #   in Loop: Header=BB7_114 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 231
	ldx.bu	$a0, $s8, $a0
.LBB7_127:                              #   in Loop: Header=BB7_114 Depth=2
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1024
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$s4, $a0, $a1
	move	$s5, $s3
	blt	$s2, $s4, .LBB7_130
# %bb.128:                              # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB7_114 Depth=2
	addi.d	$a0, $sp, 231
	add.d	$s3, $a0, $s4
	.p2align	4, , 16
.LBB7_129:                              # %.lr.ph.i
                                        #   Parent Loop BB7_106 Depth=1
                                        #     Parent Loop BB7_114 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	addi.d	$s3, $s3, 1
	bne	$fp, $s4, .LBB7_129
	.p2align	4, , 16
.LBB7_130:                              # %r_output.exit
                                        #   in Loop: Header=BB7_114 Depth=2
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	or	$a0, $a1, $a0
	and	$a0, $a0, $s0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	lu12i.w	$a1, 76
	ori	$a1, $a1, 3112
	add.d	$s4, $sp, $a1
	lu12i.w	$a1, 12
	ori	$a1, $a1, 1256
	add.d	$s3, $sp, $a1
	addi.d	$a5, $sp, 231
	ori	$a6, $zero, 10
	b	.LBB7_133
	.p2align	4, , 16
.LBB7_131:                              #   in Loop: Header=BB7_114 Depth=2
	beqz	$s0, .LBB7_133
# %bb.132:                              #   in Loop: Header=BB7_114 Depth=2
	srl.w	$a1, $s8, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s4
	and	$a2, $s8, $s7
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s3
	or	$a1, $a2, $a1
	and	$a1, $a1, $s0
	or	$a0, $a1, $a0
.LBB7_133:                              #   in Loop: Header=BB7_114 Depth=2
	addi.w	$s5, $s2, 1
	ldx.bu	$a1, $s5, $a5
	slli.d	$a2, $a1, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(Init1)
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$s0, $a4, $a2
	and	$s8, $a3, $a0
	bne	$a1, $a6, .LBB7_150
# %bb.134:                              #   in Loop: Header=BB7_114 Depth=2
	srl.w	$a1, $a0, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s4
	and	$a0, $a0, $s7
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a0, $s3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(TAIL)
	or	$a0, $a0, $a1
	and	$a0, $a0, $s0
	or	$a0, $a0, $s8
	beqz	$a2, .LBB7_136
# %bb.135:                              #   in Loop: Header=BB7_114 Depth=2
	srl.w	$a1, $a0, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s4
	and	$a2, $a0, $s7
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s3
	or	$a1, $a1, $a2
	or	$a0, $a1, $a0
.LBB7_136:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(INVERSE)
	andi	$a0, $a0, 1
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB7_112
# %bb.137:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FILENAMEONLY)
	bnez	$a0, .LBB7_152
# %bb.138:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB7_112
# %bb.139:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(num_of_matched)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(COUNT)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(num_of_matched)
	bnez	$a1, .LBB7_112
# %bb.140:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	beqz	$a0, .LBB7_142
# %bb.141:                              #   in Loop: Header=BB7_114 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$a1, $a1, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 10
	addi.d	$a5, $sp, 231
.LBB7_142:                              #   in Loop: Header=BB7_114 Depth=2
	move	$s8, $s1
	move	$s4, $s5
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB7_143:                              #   Parent Loop BB7_106 Depth=1
                                        #     Parent Loop BB7_114 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s4
	add.d	$a0, $a5, $s4
	ld.bu	$a0, $a0, -1
	addi.d	$s4, $s4, -1
	addi.w	$s8, $s8, -1
	blt	$a1, $a2, .LBB7_145
# %bb.144:                              #   in Loop: Header=BB7_143 Depth=3
	bne	$a0, $a6, .LBB7_143
.LBB7_145:                              #   in Loop: Header=BB7_114 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(LINENUM)
	beqz	$a1, .LBB7_147
# %bb.146:                              #   in Loop: Header=BB7_114 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 10
	addi.d	$a5, $sp, 231
	ldx.bu	$a0, $s4, $a5
.LBB7_147:                              #   in Loop: Header=BB7_114 Depth=2
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1024
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s8, $a0
	or	$s8, $a0, $a1
	lu12i.w	$a0, 76
	ori	$a0, $a0, 3112
	add.d	$s4, $sp, $a0
	blt	$s5, $s8, .LBB7_112
# %bb.148:                              # %.lr.ph.preheader.i519
                                        #   in Loop: Header=BB7_114 Depth=2
	add.d	$s3, $a5, $s8
	.p2align	4, , 16
.LBB7_149:                              # %.lr.ph.i520
                                        #   Parent Loop BB7_106 Depth=1
                                        #     Parent Loop BB7_114 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 10
	addi.d	$a5, $sp, 231
	addi.w	$s8, $s8, 1
	addi.d	$s3, $s3, 1
	bne	$s1, $s8, .LBB7_149
	b	.LBB7_112
	.p2align	4, , 16
.LBB7_150:                              #   in Loop: Header=BB7_114 Depth=2
	beqz	$s0, .LBB7_113
# %bb.151:                              #   in Loop: Header=BB7_114 Depth=2
	srl.w	$a1, $a0, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a1, $s4
	and	$a0, $a0, $s7
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a0, $s3
	or	$a0, $a0, $a1
	and	$a0, $a0, $s0
	or	$s8, $a0, $s8
	b	.LBB7_113
.LBB7_152:                              # %.loopexit.sink.split.sink.split
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a1, %pc_lo12(num_of_matched)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, %pc_lo12(num_of_matched)
.LBB7_153:                              # %.loopexit.sink.split
	pcalau12i	$a0, %pc_hi20(CurrentFileName)
	addi.d	$a0, $a0, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB7_154:                              # %.loopexit
	lu12i.w	$a0, 140
	ori	$a0, $a0, 3072
	add.d	$sp, $sp, $a0
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
.LBB7_155:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcalau12i	$a2, %pc_hi20(Progname)
	addi.d	$a2, $a2, %pc_lo12(Progname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	re1, .Lfunc_end7-re1
                                        # -- End function
	.globl	r_output                        # -- Begin function r_output
	.p2align	5
	.type	r_output,@function
r_output:                               # @r_output
# %bb.0:
	bge	$a1, $a2, .LBB8_2
# %bb.1:
	pcalau12i	$a2, %pc_hi20(num_of_matched)
	ld.w	$a4, $a2, %pc_lo12(num_of_matched)
	pcalau12i	$a5, %pc_hi20(COUNT)
	ld.w	$a5, $a5, %pc_lo12(COUNT)
	addi.d	$a4, $a4, 1
	st.w	$a4, $a2, %pc_lo12(num_of_matched)
	beqz	$a5, .LBB8_3
.LBB8_2:                                # %.loopexit
	ret
.LBB8_3:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(FNAME)
	ld.w	$a2, $a2, %pc_lo12(FNAME)
	beqz	$a2, .LBB8_5
# %bb.4:
	pcalau12i	$a2, %pc_hi20(.L.str.25)
	addi.d	$a2, $a2, %pc_lo12(.L.str.25)
	pcalau12i	$a4, %pc_hi20(CurrentFileName)
	addi.d	$a4, $a4, %pc_lo12(CurrentFileName)
	move	$fp, $a0
	move	$a0, $a2
	move	$s0, $a1
	move	$a1, $a4
	move	$s1, $a3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	move	$a0, $fp
	move	$a1, $s0
.LBB8_5:
	addi.d	$fp, $a1, 1
	ori	$a4, $zero, 2
	ori	$a5, $zero, 10
	move	$s0, $a1
	.p2align	4, , 16
.LBB8_6:                                # =>This Inner Loop Header: Depth=1
	move	$a6, $s0
	add.d	$a2, $a0, $s0
	ld.bu	$a2, $a2, -1
	addi.d	$s0, $s0, -1
	addi.w	$fp, $fp, -1
	blt	$a6, $a4, .LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	bne	$a2, $a5, .LBB8_6
.LBB8_8:
	pcalau12i	$a4, %pc_hi20(LINENUM)
	ld.w	$a4, $a4, %pc_lo12(LINENUM)
	beqz	$a4, .LBB8_10
# %bb.9:
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	ldx.bu	$a2, $s1, $s0
.LBB8_10:
	addi.d	$a2, $a2, -10
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 1024
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $fp, $a2
	or	$a2, $a2, $a3
	blt	$a1, $a2, .LBB8_13
# %bb.11:                               # %.lr.ph.preheader
	add.d	$fp, $a0, $a2
	sub.d	$a0, $a1, $a2
	addi.d	$s0, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	.p2align	4, , 16
.LBB8_12:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	addi.d	$fp, $fp, 1
	bnez	$s0, .LBB8_12
.LBB8_13:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	r_output, .Lfunc_end8-r_output
                                        # -- End function
	.globl	re                              # -- Begin function re
	.p2align	5
	.type	re,@function
re:                                     # @re
# %bb.0:                                # %exponen.exit
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
	pcalau12i	$s1, %pc_hi20(FIRST_IN_RE)
	ld.w	$a3, $s1, %pc_lo12(FIRST_IN_RE)
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s4, $a0
	ori	$a0, $zero, 32
	sub.w	$fp, $a0, $a1
	beqz	$a3, .LBB9_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(Next)
	addi.d	$a1, $a0, %pc_lo12(Next)
	pcalau12i	$a0, %pc_hi20(Next1)
	addi.d	$a2, $a0, %pc_lo12(Next1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(compute_next)
	jirl	$ra, $ra, 0
	st.w	$zero, $s1, %pc_lo12(FIRST_IN_RE)
.LBB9_2:
	pcalau12i	$a0, %pc_hi20(Mask)
	addi.d	$a1, $a0, %pc_lo12(Mask)
	addi.d	$a0, $sp, 200
	ori	$a2, $zero, 1024
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(NO_ERR_MASK)
	ld.w	$s3, $a0, %pc_lo12(NO_ERR_MASK)
	slli.d	$a1, $fp, 2
	pcalau12i	$a0, %pc_hi20(Bit)
	addi.d	$a0, $a0, %pc_lo12(Bit)
	ldx.w	$a5, $a0, $a1
	pcalau12i	$a1, %pc_hi20(Init)
	addi.d	$a1, $a1, %pc_lo12(Init)
	pcalau12i	$a2, %pc_hi20(HEAD)
	ld.w	$a2, $a2, %pc_lo12(HEAD)
	st.w	$a5, $a1, 0
	beqz	$a2, .LBB9_4
# %bb.3:
	ori	$a2, $zero, 33
	sub.w	$a2, $a2, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	or	$a5, $a0, $a5
	st.w	$a5, $a1, 0
.LBB9_4:
	pcalau12i	$a0, %pc_hi20(Next)
	addi.d	$s8, $a0, %pc_lo12(Next)
	ori	$a0, $zero, 1
	ori	$s1, $zero, 1
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	beqz	$s0, .LBB9_7
# %bb.5:                                # %.lr.ph.preheader
	addi.w	$s1, $s0, 1
	ori	$a2, $zero, 2
	sltu	$a3, $a2, $s1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s1, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	move	$a3, $a5
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a3, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s8, $a4
	or	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB9_6
.LBB9_7:                                # %._crit_edge
	sltu	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 8
	bstrpick.d	$s2, $a0, 31, 0
	bgeu	$s1, $a1, .LBB9_9
# %bb.8:
	move	$a0, $zero
	b	.LBB9_12
.LBB9_9:                                # %vector.ph
	bstrpick.d	$a0, $s2, 31, 3
	slli.d	$a0, $a0, 3
	vreplgr2vr.w	$vr0, $a5
	addi.d	$a1, $sp, 192
	addi.d	$a2, $sp, 168
	move	$a3, $a0
	.p2align	4, , 16
.LBB9_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB9_10
# %bb.11:                               # %middle.block
	beq	$a0, $s2, .LBB9_14
.LBB9_12:                               # %scalar.ph.preheader
	addi.d	$a1, $sp, 152
	alsl.d	$a1, $a0, $a1, 2
	addi.d	$a2, $sp, 176
	alsl.d	$a2, $a0, $a2, 2
	sub.d	$a0, $s2, $a0
	.p2align	4, , 16
.LBB9_13:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a1, 0
	st.w	$a5, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB9_13
.LBB9_14:                               # %.loopexit475
	ori	$s6, $a5, 1
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 1024
	lu12i.w	$a2, 12
	move	$a0, $s4
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a5
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	pcalau12i	$a0, %pc_hi20(num_of_matched)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a0, $a4, 0
	pcalau12i	$a1, %pc_hi20(TAIL)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(INVERSE)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(FILENAMEONLY)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(COUNT)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(FNAME)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(LINENUM)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	beqz	$s0, .LBB9_72
# %bb.15:                               # %.preheader367
	blez	$a0, .LBB9_121
# %bb.16:                               # %.lr.ph403
	move	$a0, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	addi.d	$a1, $sp, 152
	alsl.d	$a1, $s0, $a1, 2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 176
	alsl.d	$a1, $s0, $a1, 2
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a1, $s2, 2
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$a3, $zero, 2
	sltu	$a1, $a3, $s1
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$a7, $zero, 10
	move	$a1, $a4
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	b	.LBB9_18
	.p2align	4, , 16
.LBB9_17:                               #   in Loop: Header=BB9_18 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	add.d	$a1, $a6, $a0
	ori	$a2, $zero, 1024
	move	$a0, $a6
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	lu12i.w	$a2, 12
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 10
	move	$a4, $a0
	addi.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	ori	$a3, $zero, 2
	blez	$a1, .LBB9_121
.LBB9_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_25 Depth 2
                                        #       Child Loop BB9_34 Depth 3
                                        #       Child Loop BB9_40 Depth 3
                                        #       Child Loop BB9_42 Depth 3
                                        #       Child Loop BB9_58 Depth 3
                                        #       Child Loop BB9_64 Depth 3
                                        #       Child Loop BB9_66 Depth 3
	bstrpick.d	$a2, $a1, 31, 14
	addi.w	$a1, $a1, 1024
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB9_21
# %bb.19:                               #   in Loop: Header=BB9_18 Depth=1
	addi.d	$a1, $a4, 1023
	bstrpick.d	$a1, $a1, 16, 0
	ldx.bu	$a1, $a6, $a1
	beq	$a1, $a7, .LBB9_21
# %bb.20:                               #   in Loop: Header=BB9_18 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	stx.b	$a7, $a6, $a1
.LBB9_21:                               #   in Loop: Header=BB9_18 Depth=1
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	ori	$s2, $zero, 1024
	bnez	$a0, .LBB9_23
# %bb.22:                               #   in Loop: Header=BB9_18 Depth=1
	st.b	$a7, $a6, 1023
	ori	$s2, $zero, 1023
.LBB9_23:                               # %.preheader481
                                        #   in Loop: Header=BB9_18 Depth=1
	addi.w	$s5, $s2, 1
	addi.w	$fp, $s2, 2
	b	.LBB9_25
	.p2align	4, , 16
.LBB9_24:                               # %.loopexit365
                                        #   in Loop: Header=BB9_25 Depth=2
	addi.w	$s2, $s2, 2
	addi.w	$s5, $s5, 2
	addi.w	$fp, $fp, 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB9_17
.LBB9_25:                               #   Parent Loop BB9_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_34 Depth 3
                                        #       Child Loop BB9_40 Depth 3
                                        #       Child Loop BB9_42 Depth 3
                                        #       Child Loop BB9_58 Depth 3
                                        #       Child Loop BB9_64 Depth 3
                                        #       Child Loop BB9_66 Depth 3
	ldx.bu	$a0, $a6, $s2
	slli.d	$a1, $a0, 2
	addi.d	$a2, $sp, 200
	ldx.w	$s1, $a1, $a2
	bne	$a0, $a7, .LBB9_44
# %bb.26:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 0
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s8, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(TAIL)
	and	$a0, $a0, $s6
	and	$a1, $a1, $s1
	or	$a0, $a1, $a0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	beqz	$a2, .LBB9_28
# %bb.27:                               #   in Loop: Header=BB9_25 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	or	$a0, $a1, $a0
	st.w	$a0, $a3, 0
.LBB9_28:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(INVERSE)
	andi	$a0, $a0, 1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB9_41
# %bb.29:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(num_of_matched)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(FILENAMEONLY)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(num_of_matched)
	bnez	$a1, .LBB9_123
# %bb.30:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(COUNT)
	bnez	$a0, .LBB9_41
# %bb.31:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	beqz	$a0, .LBB9_33
# %bb.32:                               #   in Loop: Header=BB9_25 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$a1, $a1, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_33:                               #   in Loop: Header=BB9_25 Depth=2
	move	$s7, $s5
	move	$s4, $s2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ori	$a3, $zero, 2
	ori	$a4, $zero, 10
	.p2align	4, , 16
.LBB9_34:                               #   Parent Loop BB9_18 Depth=1
                                        #     Parent Loop BB9_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s4
	add.d	$a0, $a2, $s4
	ld.bu	$a0, $a0, -1
	addi.d	$s4, $s4, -1
	addi.w	$s7, $s7, -1
	blt	$a1, $a3, .LBB9_36
# %bb.35:                               #   in Loop: Header=BB9_34 Depth=3
	bne	$a0, $a4, .LBB9_34
.LBB9_36:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(LINENUM)
	beqz	$a1, .LBB9_38
# %bb.37:                               #   in Loop: Header=BB9_25 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s4
.LBB9_38:                               #   in Loop: Header=BB9_25 Depth=2
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1024
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$s4, $a0, $a1
	blt	$s2, $s4, .LBB9_41
# %bb.39:                               # %.lr.ph.preheader.i342
                                        #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$s0, $a0, $s4
	.p2align	4, , 16
.LBB9_40:                               # %.lr.ph.i343
                                        #   Parent Loop BB9_18 Depth=1
                                        #     Parent Loop BB9_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	addi.d	$s0, $s0, 1
	bne	$s5, $s4, .LBB9_40
	.p2align	4, , 16
.LBB9_41:                               # %.lr.ph392.preheader
                                        #   in Loop: Header=BB9_25 Depth=2
	pcalau12i	$a0, %pc_hi20(Init)
	addi.d	$s7, $a0, %pc_lo12(Init)
	addi.d	$a0, $sp, 152
	move	$a1, $s7
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 176
	move	$a1, $s7
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a4, $sp, 152
	slli.d	$a0, $a4, 2
	ldx.w	$a0, $s8, $a0
	and	$a1, $a4, $s6
	and	$a0, $a0, $s1
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 176
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a2, $sp, 180
	addi.d	$a3, $sp, 156
	move	$a5, $a0
	.p2align	4, , 16
.LBB9_42:                               # %.lr.ph392
                                        #   Parent Loop BB9_18 Depth=1
                                        #     Parent Loop BB9_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	or	$a5, $a5, $a4
	ld.wu	$a6, $a3, 0
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s8, $a5
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $s8, $a7
	or	$a4, $a5, $a4
	and	$a5, $a6, $s6
	and	$a4, $a4, $s3
	and	$a7, $a7, $s1
	or	$a5, $a7, $a5
	or	$a5, $a5, $a4
	st.w	$a5, $a2, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	move	$a4, $a6
	bnez	$a1, .LBB9_42
# %bb.43:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ori	$a7, $zero, 10
	b	.LBB9_48
	.p2align	4, , 16
.LBB9_44:                               #   in Loop: Header=BB9_25 Depth=2
	ld.wu	$a2, $sp, 152
	slli.d	$a0, $a2, 2
	ldx.w	$a0, $s8, $a0
	and	$a1, $a2, $s6
	and	$a3, $a0, $s1
	or	$a0, $a3, $a1
	ld.wu	$a1, $sp, 156
	or	$a3, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s8, $a3
	st.w	$a0, $sp, 176
	slli.d	$a4, $a1, 2
	ldx.w	$a4, $s8, $a4
	or	$a2, $a3, $a2
	and	$a5, $a1, $s6
	and	$a2, $a2, $s3
	and	$a3, $a4, $s1
	or	$a3, $a3, $a2
	or	$a2, $a3, $a5
	st.w	$a2, $sp, 180
	ori	$a2, $zero, 1
	beq	$s0, $a2, .LBB9_48
# %bb.45:                               #   in Loop: Header=BB9_25 Depth=2
	ld.wu	$a2, $sp, 160
	or	$a3, $a3, $a1
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s8, $a3
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $s8, $a4
	and	$a5, $a2, $s6
	or	$a1, $a3, $a1
	and	$a1, $a1, $s3
	and	$a3, $a4, $s1
	or	$a3, $a3, $a1
	or	$a1, $a3, $a5
	st.w	$a1, $sp, 184
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB9_48
# %bb.46:                               #   in Loop: Header=BB9_25 Depth=2
	ld.wu	$a1, $sp, 164
	or	$a3, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s8, $a3
	slli.d	$a4, $a1, 2
	ldx.w	$a4, $s8, $a4
	and	$a5, $a1, $s6
	or	$a2, $a3, $a2
	and	$a2, $a2, $s3
	and	$a3, $a4, $s1
	or	$a2, $a3, $a2
	or	$a3, $a2, $a5
	st.w	$a3, $sp, 188
	ori	$a3, $zero, 3
	beq	$s0, $a3, .LBB9_48
# %bb.47:                               #   in Loop: Header=BB9_25 Depth=2
	ld.wu	$a3, $sp, 168
	or	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s8, $a2
	slli.d	$a4, $a3, 2
	ldx.w	$a4, $s8, $a4
	and	$a3, $a3, $s6
	or	$a1, $a2, $a1
	and	$a1, $a1, $s3
	and	$a2, $a4, $s1
	or	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 192
	.p2align	4, , 16
.LBB9_48:                               # %.loopexit366
                                        #   in Loop: Header=BB9_25 Depth=2
	addi.w	$s0, $s2, 1
	ldx.bu	$a1, $a6, $s0
	slli.d	$a2, $a1, 2
	addi.d	$a3, $sp, 200
	ldx.w	$s1, $a2, $a3
	bne	$a1, $a7, .LBB9_68
# %bb.49:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 0
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s8, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(TAIL)
	and	$a0, $a0, $s6
	and	$a1, $a1, $s1
	or	$a0, $a1, $a0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	beqz	$a2, .LBB9_51
# %bb.50:                               #   in Loop: Header=BB9_25 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	or	$a0, $a1, $a0
	st.w	$a0, $a3, 0
.LBB9_51:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(INVERSE)
	andi	$a0, $a0, 1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB9_65
# %bb.52:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FILENAMEONLY)
	bnez	$a0, .LBB9_122
# %bb.53:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$s0, $a0, .LBB9_65
# %bb.54:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(num_of_matched)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(COUNT)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(num_of_matched)
	bnez	$a1, .LBB9_65
# %bb.55:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	beqz	$a0, .LBB9_57
# %bb.56:                               #   in Loop: Header=BB9_25 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$a1, $a1, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_57:                               #   in Loop: Header=BB9_25 Depth=2
	move	$s4, $fp
	move	$s7, $s0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ori	$a3, $zero, 2
	ori	$a4, $zero, 10
	.p2align	4, , 16
.LBB9_58:                               #   Parent Loop BB9_18 Depth=1
                                        #     Parent Loop BB9_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s7
	add.d	$a0, $a2, $s7
	ld.bu	$a0, $a0, -1
	addi.d	$s7, $s7, -1
	addi.w	$s4, $s4, -1
	blt	$a1, $a3, .LBB9_60
# %bb.59:                               #   in Loop: Header=BB9_58 Depth=3
	bne	$a0, $a4, .LBB9_58
.LBB9_60:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(LINENUM)
	beqz	$a1, .LBB9_62
# %bb.61:                               #   in Loop: Header=BB9_25 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s7
.LBB9_62:                               #   in Loop: Header=BB9_25 Depth=2
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1024
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$s4, $a0, $a1
	blt	$s0, $s4, .LBB9_65
# %bb.63:                               # %.lr.ph.preheader.i358
                                        #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$s0, $a0, $s4
	.p2align	4, , 16
.LBB9_64:                               # %.lr.ph.i359
                                        #   Parent Loop BB9_18 Depth=1
                                        #     Parent Loop BB9_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	addi.d	$s0, $s0, 1
	bne	$fp, $s4, .LBB9_64
	.p2align	4, , 16
.LBB9_65:                               # %.lr.ph397.preheader
                                        #   in Loop: Header=BB9_25 Depth=2
	pcalau12i	$a0, %pc_hi20(Init)
	addi.d	$s7, $a0, %pc_lo12(Init)
	addi.d	$a0, $sp, 152
	move	$a1, $s7
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 176
	move	$a1, $s7
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a3, $sp, 176
	slli.d	$a0, $a3, 2
	ldx.w	$a0, $s8, $a0
	and	$a1, $a3, $s6
	and	$a0, $a0, $s1
	or	$a4, $a0, $a1
	st.w	$a4, $sp, 152
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $sp, 156
	addi.d	$a2, $sp, 180
	.p2align	4, , 16
.LBB9_66:                               # %.lr.ph397
                                        #   Parent Loop BB9_18 Depth=1
                                        #     Parent Loop BB9_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	or	$a4, $a4, $a3
	ld.wu	$a5, $a2, 0
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s8, $a4
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $s8, $a6
	or	$a3, $a4, $a3
	and	$a4, $a5, $s6
	and	$a3, $a3, $s3
	and	$a6, $a6, $s1
	or	$a4, $a6, $a4
	or	$a4, $a4, $a3
	st.w	$a4, $a1, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	move	$a3, $a5
	bnez	$a0, .LBB9_66
# %bb.67:                               #   in Loop: Header=BB9_25 Depth=2
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ori	$a7, $zero, 10
	b	.LBB9_24
	.p2align	4, , 16
.LBB9_68:                               #   in Loop: Header=BB9_25 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $s8, $a1
	ld.wu	$a1, $sp, 180
	and	$a3, $a0, $s6
	and	$a2, $a2, $s1
	or	$a3, $a2, $a3
	slli.d	$a4, $a1, 2
	ldx.w	$a4, $s8, $a4
	or	$a2, $a2, $a0
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s8, $a2
	st.w	$a3, $sp, 152
	and	$a3, $a1, $s6
	and	$a4, $a4, $s1
	or	$a0, $a2, $a0
	and	$a0, $a0, $s3
	or	$a2, $a0, $a4
	or	$a0, $a2, $a3
	st.w	$a0, $sp, 156
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	beq	$s0, $a0, .LBB9_24
# %bb.69:                               #   in Loop: Header=BB9_25 Depth=2
	ld.wu	$a0, $sp, 184
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $s8, $a3
	or	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s8, $a2
	and	$a4, $a0, $s6
	and	$a3, $a3, $s1
	or	$a1, $a2, $a1
	and	$a1, $a1, $s3
	or	$a2, $a1, $a3
	or	$a1, $a2, $a4
	st.w	$a1, $sp, 160
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB9_24
# %bb.70:                               #   in Loop: Header=BB9_25 Depth=2
	ld.wu	$a1, $sp, 188
	slli.d	$a3, $a1, 2
	ldx.w	$a3, $s8, $a3
	or	$a2, $a2, $a0
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s8, $a2
	and	$a4, $a1, $s6
	and	$a3, $a3, $s1
	or	$a0, $a2, $a0
	and	$a0, $a0, $s3
	or	$a0, $a0, $a3
	or	$a2, $a0, $a4
	st.w	$a2, $sp, 164
	ori	$a2, $zero, 3
	beq	$s0, $a2, .LBB9_24
# %bb.71:                               #   in Loop: Header=BB9_25 Depth=2
	ld.wu	$a2, $sp, 192
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $s8, $a3
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	and	$a2, $a2, $s6
	and	$a3, $a3, $s1
	or	$a0, $a0, $a1
	and	$a0, $a0, $s3
	or	$a1, $a3, $a2
	or	$a0, $a1, $a0
	st.w	$a0, $sp, 168
	b	.LBB9_24
.LBB9_72:                               # %.preheader
	blez	$a0, .LBB9_121
# %bb.73:                               # %.lr.ph412
	move	$a5, $fp
	move	$a0, $zero
	move	$s0, $zero
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $s8, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ori	$a6, $zero, 2
	ori	$a7, $zero, 10
	addi.d	$s3, $sp, 200
	move	$a1, $a4
	ori	$s2, $zero, 1024
	move	$s7, $fp
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	b	.LBB9_75
	.p2align	4, , 16
.LBB9_74:                               #   in Loop: Header=BB9_75 Depth=1
	sub.w	$a0, $t0, $a4
	slti	$a1, $a0, 1024
	maskeqz	$a0, $a0, $a1
	ori	$s1, $zero, 1024
	masknez	$a1, $s1, $a1
	or	$s3, $a0, $a1
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $fp, $s3
	add.d	$a1, $a3, $a4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	sub.w	$s2, $s1, $s3
	addi.d	$s3, $sp, 200
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $fp
	lu12i.w	$a2, 12
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 10
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $a0
	addi.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	ori	$a6, $zero, 2
	blez	$a1, .LBB9_121
.LBB9_75:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_83 Depth 2
                                        #       Child Loop BB9_92 Depth 3
                                        #       Child Loop BB9_98 Depth 3
                                        #       Child Loop BB9_112 Depth 3
                                        #       Child Loop BB9_119 Depth 3
	bstrpick.d	$a2, $a1, 31, 14
	addi.w	$t0, $a1, 1024
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	bltu	$a6, $a2, .LBB9_78
# %bb.76:                               #   in Loop: Header=BB9_75 Depth=1
	addi.d	$a1, $a4, 1023
	bstrpick.d	$a1, $a1, 16, 0
	ldx.bu	$a1, $a3, $a1
	beq	$a1, $a7, .LBB9_78
# %bb.77:                               #   in Loop: Header=BB9_75 Depth=1
	stx.b	$a7, $a3, $t0
.LBB9_78:                               #   in Loop: Header=BB9_75 Depth=1
	andi	$a0, $a0, 1
	ori	$s1, $zero, 1024
	bnez	$a0, .LBB9_80
# %bb.79:                               #   in Loop: Header=BB9_75 Depth=1
	st.b	$a7, $a3, 1023
	ori	$s1, $zero, 1023
.LBB9_80:                               # %.preheader476
                                        #   in Loop: Header=BB9_75 Depth=1
	addi.w	$s5, $s1, 1
	addi.w	$s4, $s1, 2
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	move	$a4, $s2
	b	.LBB9_83
	.p2align	4, , 16
.LBB9_81:                               #   in Loop: Header=BB9_83 Depth=2
	and	$a1, $a0, $s6
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a0, $a0, $s8, 2
.LBB9_82:                               # %r_output.exit332
                                        #   in Loop: Header=BB9_83 Depth=2
	ld.w	$a0, $a0, 0
	addi.w	$s1, $s1, 2
	and	$a0, $a0, $s2
	or	$s7, $a0, $a1
	addi.w	$s5, $s5, 2
	addi.w	$s4, $s4, 2
	bgeu	$s1, $t0, .LBB9_74
.LBB9_83:                               #   Parent Loop BB9_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_92 Depth 3
                                        #       Child Loop BB9_98 Depth 3
                                        #       Child Loop BB9_112 Depth 3
                                        #       Child Loop BB9_119 Depth 3
	ldx.bu	$a1, $a3, $s1
	slli.d	$a0, $a1, 2
	ldx.w	$s2, $a0, $s3
	bstrpick.d	$a0, $s7, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	and	$a2, $s7, $s6
	and	$a0, $a0, $s2
	or	$a0, $a0, $a2
	bne	$a1, $a7, .LBB9_100
# %bb.84:                               #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(TAIL)
	beqz	$a1, .LBB9_86
# %bb.85:                               #   in Loop: Header=BB9_83 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	or	$a0, $a1, $a0
.LBB9_86:                               #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(INVERSE)
	andi	$a0, $a0, 1
	addi.w	$s0, $s0, 1
	beq	$a0, $a1, .LBB9_99
# %bb.87:                               #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(num_of_matched)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(FILENAMEONLY)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(num_of_matched)
	bnez	$a1, .LBB9_123
# %bb.88:                               #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(COUNT)
	bnez	$a0, .LBB9_99
# %bb.89:                               #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	beqz	$a0, .LBB9_91
# %bb.90:                               #   in Loop: Header=BB9_83 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$a1, $a1, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_91:                               #   in Loop: Header=BB9_83 Depth=2
	move	$s7, $s5
	move	$s3, $s1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ori	$a3, $zero, 2
	ori	$a4, $zero, 10
	.p2align	4, , 16
.LBB9_92:                               #   Parent Loop BB9_75 Depth=1
                                        #     Parent Loop BB9_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s3
	add.d	$a0, $a2, $s3
	ld.bu	$a0, $a0, -1
	addi.d	$s3, $s3, -1
	addi.w	$s7, $s7, -1
	blt	$a1, $a3, .LBB9_94
# %bb.93:                               #   in Loop: Header=BB9_92 Depth=3
	bne	$a0, $a4, .LBB9_92
.LBB9_94:                               #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(LINENUM)
	beqz	$a1, .LBB9_96
# %bb.95:                               #   in Loop: Header=BB9_83 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s3
.LBB9_96:                               #   in Loop: Header=BB9_83 Depth=2
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1024
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$s3, $a0, $a1
	blt	$s1, $s3, .LBB9_99
# %bb.97:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$fp, $a0, $s3
	.p2align	4, , 16
.LBB9_98:                               # %.lr.ph.i315
                                        #   Parent Loop BB9_75 Depth=1
                                        #     Parent Loop BB9_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	addi.d	$fp, $fp, 1
	bne	$s5, $s3, .LBB9_98
	.p2align	4, , 16
.LBB9_99:                               # %r_output.exit
                                        #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	and	$a0, $a0, $s2
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	or	$a0, $a0, $a5
	move	$a4, $s1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ori	$a7, $zero, 10
	addi.d	$s3, $sp, 200
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
.LBB9_100:                              #   in Loop: Header=BB9_83 Depth=2
	addi.w	$fp, $s1, 1
	ldx.bu	$a1, $a3, $fp
	slli.d	$a2, $a1, 2
	ldx.w	$s2, $a2, $s3
	bne	$a1, $a7, .LBB9_81
# %bb.101:                              #   in Loop: Header=BB9_83 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(TAIL)
	and	$a0, $a0, $s6
	and	$a1, $a1, $s2
	or	$a0, $a1, $a0
	beqz	$a2, .LBB9_103
# %bb.102:                              #   in Loop: Header=BB9_83 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	or	$a0, $a1, $a0
.LBB9_103:                              #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(INVERSE)
	andi	$a0, $a0, 1
	addi.w	$s0, $s0, 1
	bne	$a0, $a1, .LBB9_105
# %bb.104:                              #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $a5
	move	$a4, $fp
	b	.LBB9_82
	.p2align	4, , 16
.LBB9_105:                              #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FILENAMEONLY)
	bnez	$a0, .LBB9_122
# %bb.106:                              #   in Loop: Header=BB9_83 Depth=2
	bge	$fp, $t0, .LBB9_108
# %bb.107:                              #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(num_of_matched)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(COUNT)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(num_of_matched)
	beqz	$a1, .LBB9_109
.LBB9_108:                              #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $a5
	move	$a4, $fp
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	b	.LBB9_82
.LBB9_109:                              #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	beqz	$a0, .LBB9_111
# %bb.110:                              #   in Loop: Header=BB9_83 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$a1, $a1, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ori	$a7, $zero, 10
.LBB9_111:                              #   in Loop: Header=BB9_83 Depth=2
	move	$s3, $s4
	move	$s7, $fp
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB9_112:                              #   Parent Loop BB9_75 Depth=1
                                        #     Parent Loop BB9_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s7
	add.d	$a0, $a3, $s7
	ld.bu	$a0, $a0, -1
	addi.d	$s7, $s7, -1
	addi.w	$s3, $s3, -1
	blt	$a1, $a2, .LBB9_114
# %bb.113:                              #   in Loop: Header=BB9_112 Depth=3
	bne	$a0, $a7, .LBB9_112
.LBB9_114:                              #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(LINENUM)
	beqz	$a1, .LBB9_116
# %bb.115:                              #   in Loop: Header=BB9_83 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ori	$a7, $zero, 10
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.bu	$a0, $a3, $s7
.LBB9_116:                              #   in Loop: Header=BB9_83 Depth=2
	move	$s7, $s0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1024
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$s0, $a0, $a1
	bge	$fp, $s0, .LBB9_118
# %bb.117:                              #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $a5
	move	$a4, $fp
	move	$s0, $s7
	addi.d	$s3, $sp, 200
	b	.LBB9_82
.LBB9_118:                              # %.lr.ph.preheader.i326
                                        #   in Loop: Header=BB9_83 Depth=2
	add.d	$s3, $a3, $s0
	.p2align	4, , 16
.LBB9_119:                              # %.lr.ph.i327
                                        #   Parent Loop BB9_75 Depth=1
                                        #     Parent Loop BB9_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, 1
	bne	$s4, $s0, .LBB9_119
# %bb.120:                              #   in Loop: Header=BB9_83 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $a5
	move	$a4, $fp
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	move	$s0, $s7
	ori	$a7, $zero, 10
	addi.d	$s3, $sp, 200
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB9_82
.LBB9_121:                              # %.loopexit
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
	ret
.LBB9_122:                              # %.loopexit.sink.split.sink.split
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a1, %pc_lo12(num_of_matched)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, %pc_lo12(num_of_matched)
.LBB9_123:                              # %.loopexit.sink.split
	pcalau12i	$a0, %pc_hi20(CurrentFileName)
	addi.d	$a0, $a0, %pc_lo12(CurrentFileName)
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
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end9:
	.size	re, .Lfunc_end9-re
                                        # -- End function
	.globl	output                          # -- Begin function output
	.p2align	5
	.type	output,@function
output:                                 # @output
# %bb.0:
	blt	$a2, $a1, .LBB10_21
# %bb.1:
	move	$a4, $a2
	pcalau12i	$a5, %pc_hi20(num_of_matched)
	ld.w	$a2, $a5, %pc_lo12(num_of_matched)
	pcalau12i	$a6, %pc_hi20(COUNT)
	ld.w	$a6, $a6, %pc_lo12(COUNT)
	pcalau12i	$a7, %pc_hi20(SILENT)
	ld.w	$a7, $a7, %pc_lo12(SILENT)
	addi.d	$t0, $a2, 1
	or	$a6, $a6, $a7
	st.w	$t0, $a5, %pc_lo12(num_of_matched)
	bnez	$a6, .LBB10_21
# %bb.2:
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
	pcalau12i	$a5, %pc_hi20(OUTTAIL)
	ld.w	$a5, $a5, %pc_lo12(OUTTAIL)
	pcalau12i	$a6, %pc_hi20(D_length)
	ld.w	$a7, $a6, %pc_lo12(D_length)
	pcalau12i	$a6, %pc_hi20(FIRSTOUTPUT)
	ld.w	$t0, $a6, %pc_lo12(FIRSTOUTPUT)
	sltui	$a5, $a5, 1
	masknez	$a5, $a7, $a5
	add.w	$fp, $a5, $a1
	pcalau12i	$a1, %pc_hi20(DELIMITER)
	beqz	$t0, .LBB10_6
# %bb.3:
	ldx.bu	$a7, $a0, $fp
	ori	$t0, $zero, 10
	bne	$a7, $t0, .LBB10_5
# %bb.4:
	addi.w	$fp, $fp, 1
	pcalau12i	$a7, %pc_hi20(EATFIRST)
	ori	$t0, $zero, 1
	st.w	$t0, $a7, %pc_lo12(EATFIRST)
.LBB10_5:
	st.w	$zero, $a6, %pc_lo12(FIRSTOUTPUT)
.LBB10_6:
	pcalau12i	$a6, %pc_hi20(TRUNCATE)
	ld.w	$a6, $a6, %pc_lo12(TRUNCATE)
	ld.w	$s1, $a1, %pc_lo12(DELIMITER)
	add.w	$s0, $a5, $a4
	bnez	$a6, .LBB10_22
# %bb.7:
	move	$s3, $a3
	ldx.bu	$a1, $a0, $fp
	ori	$a2, $zero, 10
	bne	$a1, $a2, .LBB10_23
.LBB10_8:
	blt	$s0, $fp, .LBB10_12
# %bb.9:                                # %.lr.ph.preheader
	move	$s2, $a0
	addi.d	$s4, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s5, $a0, %got_pc_lo12(stdout)
	ori	$s6, $zero, 10
	.p2align	4, , 16
.LBB10_10:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s5, 0
	move	$s7, $fp
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ldx.bu	$a0, $s4, $fp
	addi.d	$fp, $fp, 1
	bne	$a0, $s6, .LBB10_13
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB10_10 Depth=1
	blt	$s7, $s0, .LBB10_10
	b	.LBB10_13
.LBB10_12:
	move	$s2, $a0
.LBB10_13:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(FNAME)
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB10_15
.LBB10_14:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(CurrentFileName)
	addi.d	$a1, $a1, %pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_15:
	pcalau12i	$a0, %pc_hi20(LINENUM)
	ld.w	$a0, $a0, %pc_lo12(LINENUM)
	beqz	$a0, .LBB10_17
# %bb.16:
	sltu	$a0, $zero, $s1
	add.d	$a0, $s3, $a0
	addi.w	$a1, $a0, -1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_17:
	blt	$s0, $fp, .LBB10_20
# %bb.18:                               # %.lr.ph37.preheader
	add.d	$a2, $s2, $fp
	add.d	$fp, $s2, $s0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	.p2align	4, , 16
.LBB10_19:                              # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $a2, 0
	ld.d	$a1, $s0, 0
	addi.d	$s1, $a2, 1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	bgeu	$fp, $s1, .LBB10_19
.LBB10_20:
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
.LBB10_21:                              # %.loopexit
	ret
.LBB10_22:
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	move	$s2, $a0
	move	$a0, $a4
	move	$s3, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a3, $s3
	move	$a0, $s2
	move	$s3, $a3
	ldx.bu	$a1, $a0, $fp
	ori	$a2, $zero, 10
	beq	$a1, $a2, .LBB10_8
.LBB10_23:
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(FNAME)
	ld.w	$a0, $a0, %pc_lo12(FNAME)
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB10_14
	b	.LBB10_15
.Lfunc_end10:
	.size	output, .Lfunc_end10-output
                                        # -- End function
	.type	DNA,@object                     # @DNA
	.bss
	.globl	DNA
	.p2align	2, 0x0
DNA:
	.word	0                               # 0x0
	.size	DNA, 4

	.type	APPROX,@object                  # @APPROX
	.globl	APPROX
	.p2align	2, 0x0
APPROX:
	.word	0                               # 0x0
	.size	APPROX, 4

	.type	PAT_FILE,@object                # @PAT_FILE
	.globl	PAT_FILE
	.p2align	2, 0x0
PAT_FILE:
	.word	0                               # 0x0
	.size	PAT_FILE, 4

	.type	CONSTANT,@object                # @CONSTANT
	.globl	CONSTANT
	.p2align	2, 0x0
CONSTANT:
	.word	0                               # 0x0
	.size	CONSTANT, 4

	.type	total_line,@object              # @total_line
	.globl	total_line
	.p2align	2, 0x0
total_line:
	.word	0                               # 0x0
	.size	total_line, 4

	.type	old_D_pat,@object               # @old_D_pat
	.data
	.globl	old_D_pat
old_D_pat:
	.asciz	"\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	old_D_pat, 16

	.type	D_pattern,@object               # @D_pattern
	.globl	D_pattern
D_pattern:
	.asciz	"\n; \000\000\000\000\000\000\000\000\000\000\000\000"
	.size	D_pattern, 16

	.type	NOFILENAME,@object              # @NOFILENAME
	.bss
	.globl	NOFILENAME
	.p2align	2, 0x0
NOFILENAME:
	.word	0                               # 0x0
	.size	NOFILENAME, 4

	.type	FILENAMEONLY,@object            # @FILENAMEONLY
	.globl	FILENAMEONLY
	.p2align	2, 0x0
FILENAMEONLY:
	.word	0                               # 0x0
	.size	FILENAMEONLY, 4

	.type	Numfiles,@object                # @Numfiles
	.globl	Numfiles
	.p2align	2, 0x0
Numfiles:
	.word	0                               # 0x0
	.size	Numfiles, 4

	.type	Progname,@object                # @Progname
	.globl	Progname
	.p2align	3, 0x0
Progname:
	.space	256
	.size	Progname, 256

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"agrep"
	.size	.L.str, 6

	.type	COUNT,@object                   # @COUNT
	.bss
	.globl	COUNT
	.p2align	2, 0x0
COUNT:
	.word	0                               # 0x0
	.size	COUNT, 4

	.type	SILENT,@object                  # @SILENT
	.globl	SILENT
	.p2align	2, 0x0
SILENT:
	.word	0                               # 0x0
	.size	SILENT, 4

	.type	I,@object                       # @I
	.globl	I
	.p2align	2, 0x0
I:
	.word	0                               # 0x0
	.size	I, 4

	.type	WHOLELINE,@object               # @WHOLELINE
	.globl	WHOLELINE
	.p2align	2, 0x0
WHOLELINE:
	.word	0                               # 0x0
	.size	WHOLELINE, 4

	.type	WORDBOUND,@object               # @WORDBOUND
	.globl	WORDBOUND
	.p2align	2, 0x0
WORDBOUND:
	.word	0                               # 0x0
	.size	WORDBOUND, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s: illegal option combination\n"
	.size	.L.str.1, 32

	.type	DELIMITER,@object               # @DELIMITER
	.bss
	.globl	DELIMITER
	.p2align	2, 0x0
DELIMITER:
	.word	0                               # 0x0
	.size	DELIMITER, 4

	.type	D_length,@object                # @D_length
	.globl	D_length
	.p2align	2, 0x0
D_length:
	.word	0                               # 0x0
	.size	D_length, 4

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s: delimiter pattern too long\n"
	.size	.L.str.2, 32

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s: the pattern should immediately follow the -e option\n"
	.size	.L.str.4, 57

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s: Can't open pattern file %s\n"
	.size	.L.str.5, 32

	.type	NOUPPER,@object                 # @NOUPPER
	.bss
	.globl	NOUPPER
	.p2align	2, 0x0
NOUPPER:
	.word	0                               # 0x0
	.size	NOUPPER, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%s: the pattern should immediately follow the -k option\n"
	.size	.L.str.6, 57

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s: -k should be the last option in the command\n"
	.size	.L.str.7, 49

	.type	LINENUM,@object                 # @LINENUM
	.bss
	.globl	LINENUM
	.p2align	2, 0x0
LINENUM:
	.word	0                               # 0x0
	.size	LINENUM, 4

	.type	INVERSE,@object                 # @INVERSE
	.globl	INVERSE
	.p2align	2, 0x0
INVERSE:
	.word	0                               # 0x0
	.size	INVERSE, 4

	.type	OUTTAIL,@object                 # @OUTTAIL
	.globl	OUTTAIL
	.p2align	2, 0x0
OUTTAIL:
	.word	0                               # 0x0
	.size	OUTTAIL, 4

	.type	BESTMATCH,@object               # @BESTMATCH
	.globl	BESTMATCH
	.p2align	2, 0x0
BESTMATCH:
	.word	0                               # 0x0
	.size	BESTMATCH, 4

	.type	NOPROMPT,@object                # @NOPROMPT
	.globl	NOPROMPT
	.p2align	2, 0x0
NOPROMPT:
	.word	0                               # 0x0
	.size	NOPROMPT, 4

	.type	JUMP,@object                    # @JUMP
	.globl	JUMP
	.p2align	2, 0x0
JUMP:
	.word	0                               # 0x0
	.size	JUMP, 4

	.type	S,@object                       # @S
	.globl	S
	.p2align	2, 0x0
S:
	.word	0                               # 0x0
	.size	S, 4

	.type	DD,@object                      # @DD
	.globl	DD
	.p2align	2, 0x0
DD:
	.word	0                               # 0x0
	.size	DD, 4

	.type	FILEOUT,@object                 # @FILEOUT
	.globl	FILEOUT
	.p2align	2, 0x0
FILEOUT:
	.word	0                               # 0x0
	.size	FILEOUT, 4

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"%s: the maximum number of errors is %d \n"
	.size	.L.str.8, 41

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s: illegal option  -%c\n"
	.size	.L.str.9, 25

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%s: -h and -l options are mutually exclusive\n"
	.size	.L.str.10, 46

	.type	Textfiles,@object               # @Textfiles
	.bss
	.globl	Textfiles
	.p2align	3, 0x0
Textfiles:
	.dword	0
	.size	Textfiles, 8

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"%s: malloc failure (you probably don't have enough memory)\n"
	.size	.L.str.11, 60

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%s: %s: no such file or directory\n"
	.size	.L.str.12, 35

	.type	SGREP,@object                   # @SGREP
	.bss
	.globl	SGREP
	.p2align	2, 0x0
SGREP:
	.word	0                               # 0x0
	.size	SGREP, 4

	.type	FNAME,@object                   # @FNAME
	.globl	FNAME
	.p2align	2, 0x0
FNAME:
	.word	0                               # 0x0
	.size	FNAME, 4

	.type	num_of_matched,@object          # @num_of_matched
	.globl	num_of_matched
	.p2align	2, 0x0
num_of_matched:
	.word	0                               # 0x0
	.size	num_of_matched, 4

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"%s: -l option is not compatible with standard input\n"
	.size	.L.str.13, 53

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%d\n"
	.size	.L.str.14, 4

	.type	CurrentFileName,@object         # @CurrentFileName
	.bss
	.globl	CurrentFileName
CurrentFileName:
	.space	256
	.size	CurrentFileName, 256

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"%s: can't open file %s\n"
	.size	.L.str.15, 24

	.type	NOMATCH,@object                 # @NOMATCH
	.bss
	.globl	NOMATCH
	.p2align	2, 0x0
NOMATCH:
	.word	0                               # 0x0
	.size	NOMATCH, 4

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"%s: %d\n"
	.size	.L.str.16, 8

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"best match has 1 error, "
	.size	.L.str.17, 25

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"best match has %d errors, "
	.size	.L.str.18, 27

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"there is 1 match, output it? (y/n)"
	.size	.L.str.19, 35

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"there are %d matches, output them? (y/n)"
	.size	.L.str.20, 41

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%c"
	.size	.L.str.21, 3

	.type	EATFIRST,@object                # @EATFIRST
	.bss
	.globl	EATFIRST
	.p2align	2, 0x0
EATFIRST:
	.word	0                               # 0x0
	.size	EATFIRST, 4

	.type	REGEX,@object                   # @REGEX
	.globl	REGEX
	.p2align	2, 0x0
REGEX:
	.word	0                               # 0x0
	.size	REGEX, 4

	.type	TRUNCATE,@object                # @TRUNCATE
	.globl	TRUNCATE
	.p2align	2, 0x0
TRUNCATE:
	.word	0                               # 0x0
	.size	TRUNCATE, 4

	.type	AND,@object                     # @AND
	.globl	AND
	.p2align	2, 0x0
AND:
	.word	0                               # 0x0
	.size	AND, 4

	.type	FIRSTOUTPUT,@object             # @FIRSTOUTPUT
	.globl	FIRSTOUTPUT
	.p2align	2, 0x0
FIRSTOUTPUT:
	.word	0                               # 0x0
	.size	FIRSTOUTPUT, 4

	.type	FIRST_IN_RE,@object             # @FIRST_IN_RE
	.globl	FIRST_IN_RE
	.p2align	2, 0x0
FIRST_IN_RE:
	.word	0                               # 0x0
	.size	FIRST_IN_RE, 4

	.type	TAIL,@object                    # @TAIL
	.globl	TAIL
	.p2align	2, 0x0
TAIL:
	.word	0                               # 0x0
	.size	TAIL, 4

	.type	HEAD,@object                    # @HEAD
	.globl	HEAD
	.p2align	2, 0x0
HEAD:
	.word	0                               # 0x0
	.size	HEAD, 4

	.type	SIMPLEPATTERN,@object           # @SIMPLEPATTERN
	.globl	SIMPLEPATTERN
	.p2align	2, 0x0
SIMPLEPATTERN:
	.word	0                               # 0x0
	.size	SIMPLEPATTERN, 4

	.type	PSIZE,@object                   # @PSIZE
	.globl	PSIZE
	.p2align	2, 0x0
PSIZE:
	.word	0                               # 0x0
	.size	PSIZE, 4

	.type	Num_Pat,@object                 # @Num_Pat
	.globl	Num_Pat
	.p2align	2, 0x0
Num_Pat:
	.word	0                               # 0x0
	.size	Num_Pat, 4

	.type	RE_ERR,@object                  # @RE_ERR
	.globl	RE_ERR
	.p2align	2, 0x0
RE_ERR:
	.word	0                               # 0x0
	.size	RE_ERR, 4

	.type	Bit,@object                     # @Bit
	.globl	Bit
	.p2align	2, 0x0
Bit:
	.space	132
	.size	Bit, 132

	.type	Mask,@object                    # @Mask
	.globl	Mask
	.p2align	3, 0x0
Mask:
	.space	1024
	.size	Mask, 1024

	.type	table,@object                   # @table
	.globl	table
	.p2align	2, 0x0
table:
	.space	4096
	.size	table, 4096

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"%s: regular expression too long\n"
	.size	.L.str.23, 33

	.type	NO_ERR_MASK,@object             # @NO_ERR_MASK
	.bss
	.globl	NO_ERR_MASK
	.p2align	2, 0x0
NO_ERR_MASK:
	.word	0                               # 0x0
	.size	NO_ERR_MASK, 4

	.type	Init,@object                    # @Init
	.globl	Init
	.p2align	3, 0x0
Init:
	.space	32
	.size	Init, 32

	.type	Init1,@object                   # @Init1
	.globl	Init1
	.p2align	2, 0x0
Init1:
	.word	0                               # 0x0
	.size	Init1, 4

	.type	Next,@object                    # @Next
	.globl	Next
	.p2align	2, 0x0
Next:
	.space	264000
	.size	Next, 264000

	.type	Next1,@object                   # @Next1
	.globl	Next1
	.p2align	2, 0x0
Next1:
	.space	264000
	.size	Next1, 264000

	.type	buffer,@object                  # @buffer
	.globl	buffer
buffer:
	.space	50177
	.size	buffer, 50177

	.type	.L.str.25,@object               # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"%s: "
	.size	.L.str.25, 5

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"%d: "
	.size	.L.str.26, 5

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"usage: %s [-#cdehiklnpstvwxBDGIS] [-f patternfile] pattern [files]\n"
	.size	.L.str.27, 68

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"summary of frequently used options:\n"
	.size	.L.str.28, 37

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"-#: find matches with at most # errors\n"
	.size	.L.str.29, 40

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"-c: output the number of matched records\n"
	.size	.L.str.30, 42

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"-d: define record delimiter\n"
	.size	.L.str.31, 29

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"-h: do not output file names\n"
	.size	.L.str.32, 30

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"-i: case-insensitive search, e.g., 'a' = 'A'\n"
	.size	.L.str.33, 46

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"-l: output the names of files that contain a match\n"
	.size	.L.str.34, 52

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"-n: output record prefixed by record number\n"
	.size	.L.str.35, 45

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"-v: output those records containing no matches\n"
	.size	.L.str.36, 48

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"-w: pattern has to match as a word, e.g., 'win' will not match 'wind'\n"
	.size	.L.str.37, 71

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"-B: best match mode. find the closest matches to the pattern\n"
	.size	.L.str.38, 62

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"-G: output the files that contain a match\n"
	.size	.L.str.39, 43

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"%s: size of pattern must be greater than number of errors\n"
	.size	.L.str.40, 59

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"WARNING!!!  some lines have been truncated in output record #%d\n"
	.size	.L.str.41, 65

	.type	wildmask,@object                # @wildmask
	.bss
	.globl	wildmask
	.p2align	2, 0x0
wildmask:
	.word	0                               # 0x0
	.size	wildmask, 4

	.type	endposition,@object             # @endposition
	.globl	endposition
	.p2align	2, 0x0
endposition:
	.word	0                               # 0x0
	.size	endposition, 4

	.type	D_endpos,@object                # @D_endpos
	.globl	D_endpos
	.p2align	2, 0x0
D_endpos:
	.word	0                               # 0x0
	.size	D_endpos, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym old_D_pat
	.addrsig_sym D_pattern
	.addrsig_sym Progname
	.addrsig_sym CurrentFileName
	.addrsig_sym Next
	.addrsig_sym Next1
	.addrsig_sym buffer
