	.file	"z49.c"
	.text
	.globl	PS_RestoreGraphicState          # -- Begin function PS_RestoreGraphicState
	.p2align	5
	.type	PS_RestoreGraphicState,@function
PS_RestoreGraphicState:                 # @PS_RestoreGraphicState
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(out_fp)
	ld.d	$a3, $a0, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(gs_stack_top)
	ld.w	$a1, $a0, %pc_lo12(gs_stack_top)
	slli.d	$a2, $a1, 4
	alsl.d	$a2, $a1, $a2, 2
	pcalau12i	$a3, %pc_hi20(gs_stack)
	addi.d	$a3, $a3, %pc_lo12(gs_stack)
	ldx.w	$a4, $a3, $a2
	add.d	$a2, $a3, $a2
	pcalau12i	$a3, %pc_hi20(currentfont)
	ld.w	$a5, $a2, 4
	st.w	$a4, $a3, %pc_lo12(currentfont)
	pcalau12i	$a3, %pc_hi20(currentcolour)
	ld.w	$a4, $a2, 8
	st.w	$a5, $a3, %pc_lo12(currentcolour)
	pcalau12i	$a3, %pc_hi20(cpexists)
	ld.w	$a5, $a2, 12
	st.w	$a4, $a3, %pc_lo12(cpexists)
	ld.h	$a2, $a2, 16
	pcalau12i	$a3, %pc_hi20(currenty)
	st.w	$a5, $a3, %pc_lo12(currenty)
	pcalau12i	$a3, %pc_hi20(currentxheight2)
	st.h	$a2, $a3, %pc_lo12(currentxheight2)
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, %pc_lo12(gs_stack_top)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	PS_RestoreGraphicState, .Lfunc_end0-PS_RestoreGraphicState
                                        # -- End function
	.globl	PS_PrintGraphicObject           # -- Begin function PS_PrintGraphicObject
	.p2align	5
	.type	PS_PrintGraphicObject,@function
PS_PrintGraphicObject:                  # @PS_PrintGraphicObject
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
	move	$s0, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a1, $a0, -11
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(out_fp)
	ld.d	$a1, $a0, %pc_lo12(out_fp)
	addi.d	$a0, $s0, 64
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
	pcaddu18i	$t8, %call36(fputs)
	jr	$t8
.LBB1_2:
	ori	$a1, $zero, 17
	addi.d	$fp, $s0, 32
	bne	$a0, $a1, .LBB1_17
# %bb.3:                                # %.preheader26
	ld.d	$s3, $s0, 8
	beq	$s3, $s0, .LBB1_18
# %bb.4:
	ori	$s4, $zero, 25
	ori	$s5, $zero, 20
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s1, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.LJTI1_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI1_0)
	pcalau12i	$s7, %pc_hi20(out_fp)
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=1
	pcaddu18i	$ra, %call36(PS_PrintGraphicObject)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %.loopexit
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$s3, $s3, 8
	beq	$s3, $s0, .LBB1_18
.LBB1_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	move	$a0, $s3
	.p2align	4, , 16
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a2, $a1, -1
	bltu	$s4, $a2, .LBB1_13
# %bb.10:                               #   in Loop: Header=BB1_7 Depth=1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s6, $a2
	add.d	$a2, $s6, $a2
	jr	$a2
.LBB1_11:                               #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a1, $a0, 42
	beqz	$a1, .LBB1_15
# %bb.12:                               #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a1, $s7, %pc_lo12(out_fp)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB1_6
.LBB1_13:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $a1, -119
	bltu	$a0, $s5, .LBB1_6
# %bb.14:                               #   in Loop: Header=BB1_7 Depth=1
	ori	$a0, $zero, 49
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	move	$a2, $s1
	move	$a4, $fp
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_6
.LBB1_15:                               #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a0, $a0, 41
	beqz	$a0, .LBB1_6
# %bb.16:                               #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a1, $s7, %pc_lo12(out_fp)
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB1_6
.LBB1_17:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 49
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	move	$a4, $fp
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
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.LBB1_18:                               # %.loopexit27
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
	.size	PS_PrintGraphicObject, .Lfunc_end1-PS_PrintGraphicObject
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
                                        # -- End function
	.text
	.globl	PS_DefineGraphicNames           # -- Begin function PS_DefineGraphicNames
	.p2align	5
	.type	PS_DefineGraphicNames,@function
PS_DefineGraphicNames:                  # @PS_DefineGraphicNames
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 97
	beq	$a0, $a1, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.wu	$a1, $fp, 76
	pcalau12i	$s2, %pc_hi20(currentfont)
	ld.w	$a2, $s2, %pc_lo12(currentfont)
	andi	$a0, $a1, 4095
	pcalau12i	$s3, %pc_hi20(out_fp)
	beq	$a0, $a2, .LBB2_5
# %bb.3:
	st.w	$a0, $s2, %pc_lo12(currentfont)
	beqz	$a0, .LBB2_5
# %bb.4:
	pcaddu18i	$ra, %call36(FontHalfXHeight)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s3, %pc_lo12(out_fp)
	ld.w	$a1, $s2, %pc_lo12(currentfont)
	pcalau12i	$a2, %pc_hi20(currentxheight2)
	st.h	$a0, $a2, %pc_lo12(currentxheight2)
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FontSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(currentfont)
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(FontName)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 76
.LBB2_5:
	pcalau12i	$a2, %pc_hi20(currentcolour)
	ld.w	$a3, $a2, %pc_lo12(currentcolour)
	bstrpick.d	$a0, $a1, 21, 12
	beq	$a0, $a3, .LBB2_8
# %bb.6:
	st.w	$a0, $a2, %pc_lo12(currentcolour)
	beqz	$a0, .LBB2_8
# %bb.7:
	ld.d	$s0, $s3, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(ColourCommand)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_8:
	ld.d	$s1, $s3, %pc_lo12(out_fp)
	ld.w	$s0, $fp, 48
	ld.w	$s3, $fp, 56
	ld.w	$s4, $fp, 52
	ld.w	$a0, $s2, %pc_lo12(currentfont)
	ld.w	$s2, $fp, 60
	beqz	$a0, .LBB2_10
# %bb.9:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FontSize)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	b	.LBB2_11
.LBB2_10:
	ori	$a6, $zero, 240
.LBB2_11:
	ld.h	$a7, $fp, 66
	ld.h	$a0, $fp, 70
	add.w	$a3, $s2, $s4
	add.w	$a2, $s3, $s0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s1
	move	$a4, $s0
	move	$a5, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
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
	.size	PS_DefineGraphicNames, .Lfunc_end2-PS_DefineGraphicNames
                                        # -- End function
	.globl	PS_SaveTranslateDefineSave      # -- Begin function PS_SaveTranslateDefineSave
	.p2align	5
	.type	PS_SaveTranslateDefineSave,@function
PS_SaveTranslateDefineSave:             # @PS_SaveTranslateDefineSave
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(gs_stack_top)
	ld.w	$a3, $s5, %pc_lo12(gs_stack_top)
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 48
	pcalau12i	$s4, %pc_hi20(currentfont)
	pcalau12i	$s8, %pc_hi20(currentcolour)
	blt	$a0, $a3, .LBB3_5
# %bb.1:
	ld.wu	$a1, $fp, 76
	ld.w	$a2, $s4, %pc_lo12(currentfont)
	andi	$a0, $a1, 4095
	bne	$a0, $a2, .LBB3_5
# %bb.2:
	ld.w	$a2, $s8, %pc_lo12(currentcolour)
	bstrpick.d	$a1, $a1, 21, 12
	bne	$a1, $a2, .LBB3_5
# %bb.3:
	addi.w	$a2, $a3, 1
	ori	$a4, $zero, 20
	mul.d	$a2, $a2, $a4
	pcalau12i	$a5, %pc_hi20(gs_stack)
	addi.d	$a5, $a5, %pc_lo12(gs_stack)
	add.d	$a6, $a5, $a2
	stx.w	$a0, $a5, $a2
	pcalau12i	$a2, %pc_hi20(cpexists)
	ld.w	$a7, $a2, %pc_lo12(cpexists)
	pcalau12i	$t0, %pc_hi20(currenty)
	ld.w	$t0, $t0, %pc_lo12(currenty)
	pcalau12i	$t1, %pc_hi20(currentxheight2)
	ld.h	$t1, $t1, %pc_lo12(currentxheight2)
	st.w	$a7, $a6, 8
	st.w	$a1, $a6, 4
	st.w	$t0, $a6, 12
	st.h	$t1, $a6, 16
	st.w	$zero, $a2, %pc_lo12(cpexists)
	addi.w	$a2, $a3, 2
	mul.d	$a3, $a2, $a4
	add.d	$a4, $a5, $a3
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr0, $a1, 1
	vinsgr2vr.w	$vr0, $t0, 3
	vstx	$vr0, $a5, $a3
	st.h	$t1, $a4, 16
	pcalau12i	$a1, %pc_hi20(out_fp)
	ld.w	$s2, $fp, 48
	ld.w	$a3, $fp, 56
	ld.w	$a4, $fp, 52
	ld.w	$s3, $fp, 60
	ld.d	$s4, $a1, %pc_lo12(out_fp)
	st.w	$a2, $s5, %pc_lo12(gs_stack_top)
	add.w	$s5, $a3, $s2
	add.w	$s6, $s3, $a4
	beqz	$a0, .LBB3_11
# %bb.4:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FontSize)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	b	.LBB3_12
.LBB3_5:
	pcalau12i	$s7, %pc_hi20(out_fp)
	ld.d	$a3, $s7, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(gs_stack_top)
	addi.w	$a0, $a1, 1
	st.w	$a0, $s5, %pc_lo12(gs_stack_top)
	ori	$a2, $zero, 49
	addi.d	$a4, $fp, 32
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $s1
	move	$s2, $s0
	blt	$a1, $a2, .LBB3_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a2, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 49
	ori	$a1, $zero, 7
	ori	$a3, $zero, 1
	ori	$a5, $zero, 50
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(gs_stack_top)
.LBB3_7:                                # %PS_SaveGraphicState.exit
	ld.w	$a1, $s4, %pc_lo12(currentfont)
	slli.d	$a2, $a0, 4
	alsl.d	$a2, $a0, $a2, 2
	pcalau12i	$a0, %pc_hi20(gs_stack)
	addi.d	$s6, $a0, %pc_lo12(gs_stack)
	add.d	$a3, $s6, $a2
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a0, $s8, %pc_lo12(currentcolour)
	pcalau12i	$s0, %pc_hi20(cpexists)
	ld.w	$a4, $s0, %pc_lo12(cpexists)
	pcalau12i	$s1, %pc_hi20(currenty)
	ld.w	$a5, $s1, %pc_lo12(currenty)
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a0, 1
	vinsgr2vr.w	$vr0, $a4, 2
	pcalau12i	$s8, %pc_hi20(currentxheight2)
	ld.h	$a1, $s8, %pc_lo12(currentxheight2)
	ld.d	$a0, $s7, %pc_lo12(out_fp)
	vinsgr2vr.w	$vr0, $a5, 3
	vstx	$vr0, $s6, $a2
	st.h	$a1, $a3, 16
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.w	$zero, $s0, %pc_lo12(cpexists)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PS_DefineGraphicNames)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(gs_stack_top)
	addi.w	$a0, $a1, 1
	st.w	$a0, $s5, %pc_lo12(gs_stack_top)
	ori	$a2, $zero, 49
	blt	$a1, $a2, .LBB3_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a2, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 49
	ori	$a1, $zero, 7
	ori	$a3, $zero, 1
	ori	$a5, $zero, 50
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(gs_stack_top)
.LBB3_9:                                # %PS_SaveGraphicState.exit20
	ld.w	$a1, $s4, %pc_lo12(currentfont)
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 2
	add.d	$a2, $s6, $a0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(currentcolour)
	ld.w	$a4, $s0, %pc_lo12(cpexists)
	ld.w	$a5, $s1, %pc_lo12(currenty)
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a3, 1
	ld.h	$a1, $s8, %pc_lo12(currentxheight2)
	vinsgr2vr.w	$vr0, $a4, 2
	vinsgr2vr.w	$vr0, $a5, 3
	vstx	$vr0, $s6, $a0
	st.h	$a1, $a2, 16
.LBB3_10:                               # %PS_SaveGraphicState.exit20
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB3_11:
	ori	$a6, $zero, 240
.LBB3_12:
	ld.h	$a7, $fp, 66
	ld.h	$a0, $fp, 70
	st.d	$s0, $sp, 16
	st.d	$s1, $sp, 8
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s4
	move	$a2, $s5
	move	$a3, $s6
	move	$a4, $s2
	move	$a5, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB3_10
.Lfunc_end3:
	.size	PS_SaveTranslateDefineSave, .Lfunc_end3-PS_SaveTranslateDefineSave
                                        # -- End function
	.p2align	5                               # -- Begin function PS_SaveGraphicState
	.type	PS_SaveGraphicState,@function
PS_SaveGraphicState:                    # @PS_SaveGraphicState
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(out_fp)
	ld.d	$a3, $a1, %pc_lo12(out_fp)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(gs_stack_top)
	ld.w	$a1, $s0, %pc_lo12(gs_stack_top)
	addi.w	$a0, $a1, 1
	ori	$a2, $zero, 49
	st.w	$a0, $s0, %pc_lo12(gs_stack_top)
	blt	$a1, $a2, .LBB4_2
# %bb.1:
	addi.d	$a4, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a2, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 49
	ori	$a1, $zero, 7
	ori	$a3, $zero, 1
	ori	$a5, $zero, 50
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(gs_stack_top)
.LBB4_2:
	pcalau12i	$a1, %pc_hi20(currentfont)
	ld.w	$a1, $a1, %pc_lo12(currentfont)
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(gs_stack)
	addi.d	$a2, $a2, %pc_lo12(gs_stack)
	add.d	$a3, $a2, $a0
	pcalau12i	$a4, %pc_hi20(currentcolour)
	ld.w	$a4, $a4, %pc_lo12(currentcolour)
	pcalau12i	$a5, %pc_hi20(cpexists)
	ld.w	$a5, $a5, %pc_lo12(cpexists)
	pcalau12i	$a6, %pc_hi20(currenty)
	ld.w	$a6, $a6, %pc_lo12(currenty)
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a4, 1
	pcalau12i	$a1, %pc_hi20(currentxheight2)
	ld.h	$a1, $a1, %pc_lo12(currentxheight2)
	vinsgr2vr.w	$vr0, $a5, 2
	vinsgr2vr.w	$vr0, $a6, 3
	vstx	$vr0, $a2, $a0
	st.h	$a1, $a3, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	PS_SaveGraphicState, .Lfunc_end4-PS_SaveGraphicState
                                        # -- End function
	.p2align	5                               # -- Begin function PS_CoordTranslate
	.type	PS_CoordTranslate,@function
PS_CoordTranslate:                      # @PS_CoordTranslate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(out_fp)
	ld.d	$a2, $a2, %pc_lo12(out_fp)
	move	$a3, $a1
	move	$a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $a2
	move	$a2, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cpexists)
	st.w	$zero, $a0, %pc_lo12(cpexists)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	PS_CoordTranslate, .Lfunc_end5-PS_CoordTranslate
                                        # -- End function
	.globl	PS_PrintGraphicInclude          # -- Begin function PS_PrintGraphicInclude
	.p2align	5
	.type	PS_PrintGraphicInclude,@function
PS_PrintGraphicInclude:                 # @PS_PrintGraphicInclude
# %bb.0:
	addi.d	$sp, $sp, -720
	st.d	$ra, $sp, 712                   # 8-byte Folded Spill
	st.d	$fp, $sp, 704                   # 8-byte Folded Spill
	st.d	$s0, $sp, 696                   # 8-byte Folded Spill
	st.d	$s1, $sp, 688                   # 8-byte Folded Spill
	st.d	$s2, $sp, 680                   # 8-byte Folded Spill
	st.d	$s3, $sp, 672                   # 8-byte Folded Spill
	st.d	$s4, $sp, 664                   # 8-byte Folded Spill
	st.d	$s5, $sp, 656                   # 8-byte Folded Spill
	st.d	$s6, $sp, 648                   # 8-byte Folded Spill
	st.d	$s7, $sp, 640                   # 8-byte Folded Spill
	st.d	$s8, $sp, 632                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 254
	ori	$a3, $zero, 94
	move	$s1, $a2
	move	$s2, $a1
	beq	$a0, $a3, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_2:
	ld.bu	$a0, $fp, 41
	bnez	$a0, .LBB6_4
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_4:
	ld.d	$s5, $fp, 8
	.p2align	4, , 16
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB6_5
# %bb.6:
	ld.bu	$a1, $fp, 32
	addi.d	$a3, $s5, 32
	addi.d	$a0, $s5, 64
	addi.d	$a2, $sp, 624
	addi.d	$a4, $sp, 108
	pcaddu18i	$ra, %call36(OpenIncGraphicFile)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB6_8
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_8:
	ld.wu	$a1, $fp, 76
	pcalau12i	$s4, %pc_hi20(currentfont)
	ld.w	$a2, $s4, %pc_lo12(currentfont)
	andi	$a0, $a1, 4095
	pcalau12i	$a3, %pc_hi20(out_fp)
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	beq	$a0, $a2, .LBB6_10
# %bb.9:
	st.w	$a0, $s4, %pc_lo12(currentfont)
	pcaddu18i	$ra, %call36(FontHalfXHeight)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(out_fp)
	ld.w	$a1, $s4, %pc_lo12(currentfont)
	pcalau12i	$a2, %pc_hi20(currentxheight2)
	st.h	$a0, $a2, %pc_lo12(currentxheight2)
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FontSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(currentfont)
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(FontName)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 76
.LBB6_10:
	pcalau12i	$a2, %pc_hi20(currentcolour)
	ld.w	$a3, $a2, %pc_lo12(currentcolour)
	bstrpick.d	$a0, $a1, 21, 12
	beq	$a0, $a3, .LBB6_13
# %bb.11:
	st.w	$a0, $a2, %pc_lo12(currentcolour)
	beqz	$a0, .LBB6_13
# %bb.12:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(ColourCommand)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %select.unfold.preheader
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $s3, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 48
	ld.w	$a3, $fp, 60
	ld.d	$a0, $s3, %pc_lo12(out_fp)
	sub.w	$a2, $s2, $a1
	sub.w	$a3, $s1, $a3
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$s1, $a1, %pc_lo12(.L.str.33)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(out_fp)
	pcalau12i	$s2, %pc_hi20(cpexists)
	st.w	$zero, $s2, %pc_lo12(cpexists)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 0
	lu32i.d	$a2, 262144
	lu52i.d	$a2, $a2, 1027
	move	$a3, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 48
	ld.w	$a3, $s5, 52
	ld.d	$a0, $s3, %pc_lo12(out_fp)
	st.w	$zero, $s2, %pc_lo12(cpexists)
	sub.w	$a2, $zero, $a1
	sub.w	$a3, $zero, $a3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 624
	ld.d	$a0, $s3, %pc_lo12(out_fp)
	st.w	$zero, $s2, %pc_lo12(cpexists)
	addi.d	$a2, $a1, 64
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 112
	ori	$a1, $zero, 512
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	slli.w	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$s3, $a1, %pc_lo12(.L.str.18)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ori	$s7, $zero, 2
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$s1, $a1, %got_pc_lo12(no_fpos)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a1, $a1, %got_pc_lo12(zz_size)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s6, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s4, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s5, $a1, %got_pc_lo12(zz_res)
	b	.LBB6_17
.LBB6_14:                               #   in Loop: Header=BB6_17 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_38
.LBB6_15:                               # %strip_out.exit.thread
                                        #   in Loop: Header=BB6_17 Depth=1
	move	$s2, $zero
.LBB6_16:                               # %strip_out.exit.thread
                                        #   in Loop: Header=BB6_17 Depth=1
	addi.d	$a0, $sp, 112
	ori	$a1, $zero, 512
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
.LBB6_17:                               # %select.unfold
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB6_22
# %bb.18:                               # %select.unfold
                                        #   in Loop: Header=BB6_17 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_47
# %bb.19:                               #   in Loop: Header=BB6_17 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_14
# %bb.20:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a2, $s1, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 115
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s6, $a1
	move	$fp, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB6_32
# %bb.21:                               #   in Loop: Header=BB6_17 Depth=1
	alsl.d	$a0, $a2, $s6, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	b	.LBB6_33
	.p2align	4, , 16
.LBB6_22:                               #   in Loop: Header=BB6_17 Depth=1
	addi.d	$a0, $sp, 112
	move	$a1, $s3
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_24
# %bb.23:                               #   in Loop: Header=BB6_17 Depth=1
	addi.d	$a0, $sp, 112
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StringContains)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_30
.LBB6_24:                               #   in Loop: Header=BB6_17 Depth=1
	addi.d	$a0, $sp, 112
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	addi.d	$s8, $fp, 32
	beqz	$a0, .LBB6_26
# %bb.25:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a0, $sp, 624
	addi.d	$a6, $a0, 64
	ori	$a0, $zero, 49
	ori	$a1, $zero, 10
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a4, $s8
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_26:                               #   in Loop: Header=BB6_17 Depth=1
	addi.d	$a0, $sp, 112
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_28
# %bb.27:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a0, $sp, 624
	addi.d	$a6, $a0, 64
	ori	$a0, $zero, 49
	ori	$a1, $zero, 11
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $s8
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_28:                               #   in Loop: Header=BB6_17 Depth=1
	addi.d	$a0, $sp, 112
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_15
# %bb.29:                               # %strip_out.exit
                                        #   in Loop: Header=BB6_17 Depth=1
	addi.d	$a0, $sp, 112
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_15
	b	.LBB6_39
.LBB6_30:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a2, $s1, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 138
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s6, $a1
	move	$s8, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB6_40
# %bb.31:                               #   in Loop: Header=BB6_17 Depth=1
	alsl.d	$a0, $a2, $s6, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	b	.LBB6_41
.LBB6_32:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a1, $s1, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB6_33:                               #   in Loop: Header=BB6_17 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 0
	pcalau12i	$a0, %pc_hi20(needs)
	ld.d	$a2, $a0, %pc_lo12(needs)
	st.d	$a1, $a1, 8
	st.d	$a1, $s4, 0
	st.d	$a1, $s5, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a2, $a0, 0
	beqz	$a2, .LBB6_35
# %bb.34:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a3, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a4, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $s5, 0
	ld.d	$a1, $s4, 0
	st.d	$a2, $a4, 8
.LBB6_35:                               #   in Loop: Header=BB6_17 Depth=1
	st.d	$a1, $s5, 0
	st.d	$fp, $a0, 0
	ori	$s2, $zero, 1
	beqz	$fp, .LBB6_16
# %bb.36:                               #   in Loop: Header=BB6_17 Depth=1
	beqz	$a1, .LBB6_16
# %bb.37:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a0, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a1, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	b	.LBB6_46
.LBB6_38:                               # %strip_out.exit68
                                        #   in Loop: Header=BB6_17 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_15
.LBB6_39:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(out_fp)
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	b	.LBB6_15
.LBB6_40:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a1, $s1, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB6_41:                               #   in Loop: Header=BB6_17 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 0
	pcalau12i	$a0, %pc_hi20(needs)
	ld.d	$a2, $a0, %pc_lo12(needs)
	st.d	$a1, $a1, 8
	st.d	$a1, $s4, 0
	st.d	$a1, $s5, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a2, $a0, 0
	beqz	$a2, .LBB6_43
# %bb.42:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a3, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a4, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $s5, 0
	ld.d	$a1, $s4, 0
	st.d	$a2, $a4, 8
.LBB6_43:                               #   in Loop: Header=BB6_17 Depth=1
	st.d	$a1, $s5, 0
	st.d	$s8, $a0, 0
	ori	$s2, $zero, 1
	beqz	$s8, .LBB6_16
# %bb.44:                               #   in Loop: Header=BB6_17 Depth=1
	beqz	$a1, .LBB6_16
# %bb.45:                               #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a0, $s8, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a1, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $s8, 16
	st.d	$s8, $a3, 24
.LBB6_46:                               # %strip_out.exit.thread
                                        #   in Loop: Header=BB6_17 Depth=1
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	b	.LBB6_16
.LBB6_47:
	ld.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	beqz	$a0, .LBB6_49
# %bb.48:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(remove)
	jirl	$ra, $ra, 0
.LBB6_49:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(wordcount)
	st.w	$zero, $a0, %pc_lo12(wordcount)
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
	ret
.Lfunc_end6:
	.size	PS_PrintGraphicInclude, .Lfunc_end6-PS_PrintGraphicInclude
                                        # -- End function
	.p2align	5                               # -- Begin function PS_CoordScale
	.type	PS_CoordScale,@function
PS_CoordScale:                          # @PS_CoordScale
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(out_fp)
	ld.d	$a0, $a0, %pc_lo12(out_fp)
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cpexists)
	st.w	$zero, $a0, %pc_lo12(cpexists)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	PS_CoordScale, .Lfunc_end7-PS_CoordScale
                                        # -- End function
	.globl	ConvertToPDFName                # -- Begin function ConvertToPDFName
	.p2align	5
	.type	ConvertToPDFName,@function
ConvertToPDFName:                       # @ConvertToPDFName
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
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ld.b	$a1, $a0, 4
	pcalau12i	$a2, %pc_hi20(ConvertToPDFName.buff)
	addi.d	$fp, $a2, %pc_lo12(ConvertToPDFName.buff)
	ld.w	$a0, $a0, 0
	st.b	$a1, $fp, 4
	st.w	$a0, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s3, 64
	move	$s0, $a0
	beqz	$a1, .LBB8_6
# %bb.1:                                # %.lr.ph
	addi.d	$s1, $s3, 64
	addi.d	$s2, $s3, 32
	addi.d	$s4, $s3, 65
	ori	$s5, $zero, 199
	ori	$s6, $zero, 95
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s3, $a0, %pc_lo12(.L.str.30)
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	andi	$a0, $a1, 223
	addi.d	$a0, $a0, -65
	andi	$a0, $a0, 255
	sltui	$a0, $a0, 26
	addi.d	$a2, $a1, -48
	andi	$a2, $a2, 255
	sltui	$a2, $a2, 10
	masknez	$a3, $s6, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	stx.b	$a0, $fp, $s0
	ld.bu	$a1, $s4, 0
	addi.d	$a0, $s0, 1
	addi.d	$s4, $s4, 1
	move	$s0, $a0
	beqz	$a1, .LBB8_5
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	blt	$s0, $s5, .LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	ori	$a0, $zero, 49
	ori	$a1, $zero, 12
	ori	$a3, $zero, 1
	move	$a2, $s3
	move	$a4, $s2
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s4, -1
	b	.LBB8_2
.LBB8_5:                                # %._crit_edge.loopexit
	add.d	$a0, $fp, $a0
	b	.LBB8_7
.LBB8_6:
	add.d	$a0, $fp, $s0
.LBB8_7:                                # %._crit_edge
	st.b	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(ConvertToPDFName.buff)
	addi.d	$a0, $a0, %pc_lo12(ConvertToPDFName.buff)
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
.Lfunc_end8:
	.size	ConvertToPDFName, .Lfunc_end8-ConvertToPDFName
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintInitialize
	.type	PS_PrintInitialize,@function
PS_PrintInitialize:                     # @PS_PrintInitialize
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(out_fp)
	st.d	$a0, $a1, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(prologue_done)
	st.b	$zero, $a0, %pc_lo12(prologue_done)
	pcalau12i	$a0, %pc_hi20(gs_stack_top)
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, %pc_lo12(gs_stack_top)
	pcalau12i	$a0, %pc_hi20(currentfont)
	st.w	$zero, $a0, %pc_lo12(currentfont)
	pcalau12i	$a0, %pc_hi20(currentcolour)
	st.w	$zero, $a0, %pc_lo12(currentcolour)
	pcalau12i	$a0, %pc_hi20(cpexists)
	st.w	$zero, $a0, %pc_lo12(cpexists)
	pcalau12i	$a0, %pc_hi20(pagecount)
	st.w	$zero, $a0, %pc_lo12(pagecount)
	pcalau12i	$a0, %pc_hi20(wordcount)
	st.w	$zero, $a0, %pc_lo12(wordcount)
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s2, 17
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s1, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s0, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	beqz	$a0, .LBB9_2
# %bb.1:
	alsl.d	$a1, $a2, $s0, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB9_3
.LBB9_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB9_3:
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s2, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	pcalau12i	$a3, %pc_hi20(needs)
	st.d	$a0, $a3, %pc_lo12(needs)
	st.w	$a2, $s1, 0
	beqz	$a1, .LBB9_5
# %bb.4:
	alsl.d	$a0, $a2, $s0, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	b	.LBB9_6
.LBB9_5:
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
.LBB9_6:
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a0, %pc_hi20(supplied)
	st.d	$a1, $a0, %pc_lo12(supplied)
	ori	$a0, $zero, 1608
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB9_8
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	ori	$a0, $zero, 43
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB9_8:                                # %ltab_new.exit
	ori	$a0, $zero, 200
	st.w	$a0, $fp, 0
	addi.d	$a0, $fp, 4
	ori	$a2, $zero, 1604
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s2, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	pcalau12i	$a1, %pc_hi20(link_dest_tab)
	st.d	$fp, $a1, %pc_lo12(link_dest_tab)
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB9_10
# %bb.9:
	alsl.d	$a1, $a2, $s0, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB9_11
.LBB9_10:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB9_11:
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(link_source_list)
	st.d	$a0, $a1, %pc_lo12(link_source_list)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	PS_PrintInitialize, .Lfunc_end9-PS_PrintInitialize
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function PS_PrintLength
.LCPI10_0:
	.word	0x440dc000                      # float 567
	.text
	.p2align	5
	.type	PS_PrintLength,@function
PS_PrintLength:                         # @PS_PrintLength
# %bb.0:
	pcalau12i	$a2, %pc_hi20(.LCPI10_0)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI10_0)
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$t8, %call36(sprintf)
	jr	$t8
.Lfunc_end10:
	.size	PS_PrintLength, .Lfunc_end10-PS_PrintLength
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintPageSetupForFont
	.type	PS_PrintPageSetupForFont,@function
PS_PrintPageSetupForFont:               # @PS_PrintPageSetupForFont
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(out_fp)
	ld.d	$a4, $s3, %pc_lo12(out_fp)
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	move	$a0, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s1, 60
	bltz	$a0, .LBB11_2
# %bb.1:
	ld.d	$a0, $s3, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	move	$a2, $fp
	move	$a3, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB11_2:
	andi	$a0, $a0, 127
	move	$a1, $s2
	pcaddu18i	$ra, %call36(MapEnsurePrinted)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(out_fp)
	ld.bu	$a0, $s1, 60
	andi	$a0, $a0, 127
	pcaddu18i	$ra, %call36(MapEncodingName)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	move	$a5, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	move	$a2, $fp
	move	$a3, $s0
	move	$a4, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end11:
	.size	PS_PrintPageSetupForFont, .Lfunc_end11-PS_PrintPageSetupForFont
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintPageResourceForFont
	.type	PS_PrintPageResourceForFont,@function
PS_PrintPageResourceForFont:            # @PS_PrintPageResourceForFont
# %bb.0:
	pcalau12i	$a2, %pc_hi20(out_fp)
	ld.d	$a4, $a2, %pc_lo12(out_fp)
	move	$a3, $a0
	sltui	$a0, $a1, 1
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $a4
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end12:
	.size	PS_PrintPageResourceForFont, .Lfunc_end12-PS_PrintPageResourceForFont
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintMapping
	.type	PS_PrintMapping,@function
PS_PrintMapping:                        # @PS_PrintMapping
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
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(MapTable)
	ld.d	$a1, $a1, %got_pc_lo12(MapTable)
	ldx.d	$fp, $a1, $a0
	pcalau12i	$s0, %pc_hi20(out_fp)
	ld.d	$a1, $fp, 24
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	addi.d	$a2, $a1, 64
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	addi.d	$a2, $a1, 64
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 32
	ori	$s2, $zero, 1
	ori	$s3, $zero, 32
	ori	$s4, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$fp, $a0, %pc_lo12(.L.str.49)
	ori	$s5, $zero, 257
	.p2align	4, , 16
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	addi.d	$a2, $a1, 64
	andi	$a1, $s2, 7
	sltui	$a1, $a1, 1
	masknez	$a3, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a3, $a1, $a3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bne	$s2, $s5, .LBB13_1
# %bb.2:
	ld.d	$a3, $s0, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end13:
	.size	PS_PrintMapping, .Lfunc_end13-PS_PrintMapping
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintBeforeFirstPage
	.type	PS_PrintBeforeFirstPage,@function
PS_PrintBeforeFirstPage:                # @PS_PrintBeforeFirstPage
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(Encapsulated)
	ld.w	$a4, $a3, %pc_lo12(Encapsulated)
	pcalau12i	$s5, %pc_hi20(out_fp)
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a4, .LBB14_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a1, $zero, 24
	b	.LBB14_3
.LBB14_2:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 15
.LBB14_3:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	pcalau12i	$a2, %pc_hi20(.L.str.55)
	addi.d	$a2, $a2, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	lu12i.w	$a1, 2
	ori	$a2, $a1, 4047
	blt	$a2, $s1, .LBB14_10
# %bb.4:
	ori	$a2, $a1, 2607
	blt	$a2, $s1, .LBB14_16
# %bb.5:
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3824
	beq	$s1, $a2, .LBB14_26
# %bb.6:
	ori	$a2, $a1, 208
	beq	$s1, $a2, .LBB14_36
# %bb.7:
	ori	$a1, $a1, 2128
	bne	$s1, $a1, .LBB14_44
# %bb.8:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2292
	bne	$s0, $a1, .LBB14_44
# %bb.9:
	pcalau12i	$a1, %pc_hi20(.L.str.158)
	addi.d	$a2, $a1, %pc_lo12(.L.str.158)
	b	.LBB14_45
.LBB14_10:
	lu12i.w	$a2, 3
	ori	$a3, $a2, 3551
	blt	$a3, $s1, .LBB14_21
# %bb.11:
	ori	$a1, $a1, 4048
	beq	$s1, $a1, .LBB14_28
# %bb.12:
	ori	$a1, $a2, 2112
	beq	$s1, $a1, .LBB14_38
# %bb.13:
	ori	$a1, $a2, 2292
	bne	$s1, $a1, .LBB14_44
# %bb.14:
	lu12i.w	$a1, 5
	ori	$a1, $a1, 160
	bne	$s0, $a1, .LBB14_44
# %bb.15:
	pcalau12i	$a1, %pc_hi20(.L.str.157)
	addi.d	$a2, $a1, %pc_lo12(.L.str.157)
	b	.LBB14_45
.LBB14_16:
	ori	$a2, $a1, 2608
	beq	$s1, $a2, .LBB14_32
# %bb.17:
	ori	$a2, $a1, 3708
	beq	$s1, $a2, .LBB14_40
# %bb.18:
	ori	$a1, $a1, 4008
	bne	$s1, $a1, .LBB14_44
# %bb.19:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3312
	bne	$s0, $a1, .LBB14_44
# %bb.20:
	pcalau12i	$a1, %pc_hi20(.L.str.160)
	addi.d	$a2, $a1, %pc_lo12(.L.str.160)
	b	.LBB14_45
.LBB14_21:
	ori	$a1, $a2, 3552
	beq	$s1, $a1, .LBB14_34
# %bb.22:
	lu12i.w	$a2, 4
	ori	$a2, $a2, 456
	beq	$s1, $a2, .LBB14_42
# %bb.23:
	lu12i.w	$a2, 5
	ori	$a2, $a2, 4000
	bne	$s1, $a2, .LBB14_44
# %bb.24:
	bne	$s0, $a1, .LBB14_44
# %bb.25:
	pcalau12i	$a1, %pc_hi20(.L.str.150)
	addi.d	$a2, $a1, %pc_lo12(.L.str.150)
	b	.LBB14_45
.LBB14_26:
	ori	$a1, $a1, 4048
	bne	$s0, $a1, .LBB14_44
# %bb.27:
	pcalau12i	$a1, %pc_hi20(.L.str.152)
	addi.d	$a2, $a1, %pc_lo12(.L.str.152)
	b	.LBB14_45
.LBB14_28:
	ori	$a1, $a2, 3552
	beq	$s0, $a1, .LBB14_71
# %bb.29:
	lu12i.w	$a1, 4
	ori	$a2, $a1, 2336
	beq	$s0, $a2, .LBB14_70
# %bb.30:
	ori	$a1, $a1, 3776
	bne	$s0, $a1, .LBB14_44
# %bb.31:                               # %.fold.split.i
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a2, $a1, %pc_lo12(.L.str.151)
	b	.LBB14_45
.LBB14_32:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2112
	bne	$s0, $a1, .LBB14_44
# %bb.33:
	pcalau12i	$a1, %pc_hi20(.L.str.153)
	addi.d	$a2, $a1, %pc_lo12(.L.str.153)
	b	.LBB14_45
.LBB14_34:
	lu12i.w	$a1, 5
	ori	$a1, $a1, 4000
	bne	$s0, $a1, .LBB14_44
# %bb.35:
	pcalau12i	$a1, %pc_hi20(.L.str.149)
	addi.d	$a2, $a1, %pc_lo12(.L.str.149)
	b	.LBB14_45
.LBB14_36:
	ori	$a1, $a1, 3708
	bne	$s0, $a1, .LBB14_44
# %bb.37:
	pcalau12i	$a1, %pc_hi20(.L.str.156)
	addi.d	$a2, $a1, %pc_lo12(.L.str.156)
	b	.LBB14_45
.LBB14_38:
	lu12i.w	$a1, 4
	ori	$a1, $a1, 3776
	bne	$s0, $a1, .LBB14_44
# %bb.39:
	pcalau12i	$a1, %pc_hi20(.L.str.161)
	addi.d	$a2, $a1, %pc_lo12(.L.str.161)
	b	.LBB14_45
.LBB14_40:
	lu12i.w	$a1, 4
	ori	$a1, $a1, 456
	bne	$s0, $a1, .LBB14_44
# %bb.41:
	pcalau12i	$a1, %pc_hi20(.L.str.155)
	addi.d	$a2, $a1, %pc_lo12(.L.str.155)
	b	.LBB14_45
.LBB14_42:
	lu12i.w	$a1, 5
	ori	$a1, $a1, 3320
	bne	$s0, $a1, .LBB14_44
# %bb.43:
	pcalau12i	$a1, %pc_hi20(.L.str.154)
	addi.d	$a2, $a1, %pc_lo12(.L.str.154)
	b	.LBB14_45
.LBB14_44:                              # %.thread31.i
	pcalau12i	$a1, %pc_hi20(.L.str.162)
	addi.d	$a2, $a1, %pc_lo12(.L.str.162)
.LBB14_45:                              # %MediaName.exit
	lu12i.w	$a1, 419430
	ori	$a1, $a1, 1639
	mul.d	$a3, $s1, $a1
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 35
	add.d	$s1, $a3, $a4
	mul.d	$a1, $s0, $a1
	srli.d	$a3, $a1, 63
	srai.d	$a1, $a1, 35
	add.d	$s0, $a1, $a3
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	move	$a3, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	ori	$a1, $zero, 60
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	ori	$a1, $zero, 52
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 54
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	ori	$a1, $zero, 56
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	ori	$a1, $zero, 59
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	ori	$a1, $zero, 54
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	ori	$a1, $zero, 57
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.84)
	addi.d	$a1, $a1, %pc_lo12(.L.str.84)
	ori	$a2, $zero, 1440
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.85)
	addi.d	$a1, $a1, %pc_lo12(.L.str.85)
	ori	$a2, $zero, 567
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.86)
	addi.d	$a1, $a1, %pc_lo12(.L.str.86)
	ori	$a2, $zero, 20
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.87)
	addi.d	$a1, $a1, %pc_lo12(.L.str.87)
	ori	$a2, $zero, 120
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	ori	$a1, $zero, 52
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$s0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 52
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a0, $a0, %pc_lo12(.L.str.124)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a0, $a0, %pc_lo12(.L.str.125)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(FirstFile)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_66
# %bb.46:                               # %.lr.ph38
	addi.d	$s0, $sp, 32
	b	.LBB14_48
	.p2align	4, , 16
.LBB14_47:                              # %._crit_edge
                                        #   in Loop: Header=BB14_48 Depth=1
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(NextFile)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_66
.LBB14_48:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_64 Depth 2
	bstrpick.d	$s1, $a0, 15, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(OpenFile)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_53
# %bb.49:                               #   in Loop: Header=BB14_48 Depth=1
	move	$s2, $a0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 512
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_54
# %bb.50:                               #   in Loop: Header=BB14_48 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_56
# %bb.51:                               #   in Loop: Header=BB14_48 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s4, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a2, $s4, 0
	ori	$a0, $zero, 11
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s3, $a0
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
	beqz	$a0, .LBB14_57
# %bb.52:                               #   in Loop: Header=BB14_48 Depth=1
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB14_58
	.p2align	4, , 16
.LBB14_53:                              #   in Loop: Header=BB14_48 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(PosOfFile)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a2, $a0, %pc_lo12(.L.str.132)
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a5, $a0, %pc_lo12(.L.str.133)
	ori	$a0, $zero, 49
	ori	$a1, $zero, 3
	b	.LBB14_55
	.p2align	4, , 16
.LBB14_54:                              #   in Loop: Header=BB14_48 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(PosOfFile)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a2, $a0, %pc_lo12(.L.str.134)
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a5, $a0, %pc_lo12(.L.str.133)
	ori	$a0, $zero, 49
	ori	$a1, $zero, 4
.LBB14_55:                              #   in Loop: Header=BB14_48 Depth=1
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(NextFile)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_48
	b	.LBB14_66
.LBB14_56:                              #   in Loop: Header=BB14_48 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(PosOfFile)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a2, $a0, %pc_lo12(.L.str.136)
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a5, $a0, %pc_lo12(.L.str.133)
	ori	$a0, $zero, 49
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB14_63
.LBB14_57:                              #   in Loop: Header=BB14_48 Depth=1
	ld.d	$a1, $s4, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB14_58:                              #   in Loop: Header=BB14_48 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %pc_hi20(supplied)
	ld.d	$a4, $a2, %pc_lo12(supplied)
	st.d	$a0, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB14_60
# %bb.59:                               #   in Loop: Header=BB14_48 Depth=1
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a6, 8
.LBB14_60:                              #   in Loop: Header=BB14_48 Depth=1
	st.d	$a0, $a1, 0
	st.d	$s3, $a2, 0
	beqz	$s3, .LBB14_63
# %bb.61:                               #   in Loop: Header=BB14_48 Depth=1
	beqz	$a0, .LBB14_63
# %bb.62:                               #   in Loop: Header=BB14_48 Depth=1
	ld.d	$a1, $s3, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s3, 16
	st.d	$s3, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB14_63:                              #   in Loop: Header=BB14_48 Depth=1
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s5, %pc_lo12(out_fp)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a1, $zero, 47
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a1, $a0, %pc_lo12(.L.str.137)
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a2, $a0, %pc_lo12(.L.str.133)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB14_64:                              # %.lr.ph
                                        #   Parent Loop BB14_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 512
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_47
# %bb.65:                               # %.lr.ph
                                        #   in Loop: Header=BB14_64 Depth=2
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	b	.LBB14_64
.LBB14_66:                              # %._crit_edge39
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(MapPrintEncodings)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	ori	$a1, $zero, 70
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.142)
	addi.d	$a1, $a1, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB14_69
# %bb.67:                               # %.lr.ph43.preheader
	addi.d	$fp, $fp, 1
	pcalau12i	$a1, %got_pc_hi20(EightBitToPrintForm)
	ld.d	$s1, $a1, %got_pc_lo12(EightBitToPrintForm)
	.p2align	4, , 16
.LBB14_68:                              # %.lr.ph43
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	addi.d	$fp, $fp, 1
	bnez	$a0, .LBB14_68
.LBB14_69:                              # %._crit_edge44
	pcalau12i	$a1, %pc_hi20(pagecount)
	ld.w	$a2, $a1, %pc_lo12(pagecount)
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	addi.w	$a2, $a2, 1
	st.w	$a2, $a1, %pc_lo12(pagecount)
	pcalau12i	$a1, %pc_hi20(.L.str.143)
	addi.d	$a1, $a1, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.144)
	addi.d	$a1, $a1, %pc_lo12(.L.str.144)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(FontPrintPageResources)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(FontPrintPageSetup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FontAdvanceCurrentPage)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.146)
	addi.d	$a1, $a1, %pc_lo12(.L.str.146)
	lu12i.w	$a2, -419431
	ori	$a2, $a2, 2458
	lu32i.d	$a2, -419431
	lu52i.d	$a2, $a2, 1018
	ori	$a3, $zero, 10
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.147)
	addi.d	$a1, $a1, %pc_lo12(.L.str.147)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(prologue_done)
	st.b	$s0, $a0, %pc_lo12(prologue_done)
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.LBB14_70:                              # %.fold.split49.i
	pcalau12i	$a1, %pc_hi20(.L.str.159)
	addi.d	$a2, $a1, %pc_lo12(.L.str.159)
	b	.LBB14_45
.LBB14_71:
	pcalau12i	$a1, %pc_hi20(.L.str.148)
	addi.d	$a2, $a1, %pc_lo12(.L.str.148)
	b	.LBB14_45
.Lfunc_end14:
	.size	PS_PrintBeforeFirstPage, .Lfunc_end14-PS_PrintBeforeFirstPage
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintBetweenPages
	.type	PS_PrintBetweenPages,@function
PS_PrintBetweenPages:                   # @PS_PrintBetweenPages
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(out_fp)
	ld.d	$a3, $s0, %pc_lo12(out_fp)
	move	$fp, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(gs_stack_top)
	st.w	$zero, $a0, %pc_lo12(gs_stack_top)
	pcalau12i	$a0, %pc_hi20(cpexists)
	st.w	$zero, $a0, %pc_lo12(cpexists)
	pcalau12i	$a0, %pc_hi20(Encapsulated)
	ld.w	$a0, $a0, %pc_lo12(Encapsulated)
	pcalau12i	$a1, %pc_hi20(currentfont)
	st.w	$zero, $a1, %pc_lo12(currentfont)
	pcalau12i	$a1, %pc_hi20(currentcolour)
	st.w	$zero, $a1, %pc_lo12(currentcolour)
	beqz	$a0, .LBB15_2
# %bb.1:
	pcaddu18i	$ra, %call36(PS_PrintAfterLastPage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a2, $a0, %pc_lo12(.L.str.164)
	ori	$a0, $zero, 49
	ori	$a1, $zero, 6
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB15_2:
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.165)
	addi.d	$a1, $a1, %pc_lo12(.L.str.165)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB15_5
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$fp, $fp, 1
	pcalau12i	$a1, %got_pc_hi20(EightBitToPrintForm)
	ld.d	$s1, $a1, %got_pc_lo12(EightBitToPrintForm)
	.p2align	4, , 16
.LBB15_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $s0, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	addi.d	$fp, $fp, 1
	bnez	$a0, .LBB15_4
.LBB15_5:                               # %._crit_edge
	pcalau12i	$a1, %pc_hi20(pagecount)
	ld.w	$a2, $a1, %pc_lo12(pagecount)
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	addi.w	$a2, $a2, 1
	st.w	$a2, $a1, %pc_lo12(pagecount)
	pcalau12i	$a1, %pc_hi20(.L.str.143)
	addi.d	$a1, $a1, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.144)
	addi.d	$a1, $a1, %pc_lo12(.L.str.144)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(FontPrintPageResources)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(FontPrintPageSetup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FontAdvanceCurrentPage)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.146)
	addi.d	$a1, $a1, %pc_lo12(.L.str.146)
	lu12i.w	$a2, -419431
	ori	$a2, $a2, 2458
	lu32i.d	$a2, -419431
	lu52i.d	$a2, $a2, 1018
	ori	$a3, $zero, 10
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.166)
	addi.d	$a1, $a1, %pc_lo12(.L.str.166)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(wordcount)
	st.w	$zero, $a0, %pc_lo12(wordcount)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	PS_PrintBetweenPages, .Lfunc_end15-PS_PrintBetweenPages
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintAfterLastPage
	.type	PS_PrintAfterLastPage,@function
PS_PrintAfterLastPage:                  # @PS_PrintAfterLastPage
# %bb.0:
	pcalau12i	$a0, %pc_hi20(prologue_done)
	ld.bu	$a0, $a0, %pc_lo12(prologue_done)
	beqz	$a0, .LBB16_8
# %bb.1:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(out_fp)
	ld.d	$a3, $s2, %pc_lo12(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.167)
	addi.d	$a1, $a1, %pc_lo12(.L.str.167)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(FontNeeded)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(needs)
	ld.d	$a1, $s3, %pc_lo12(needs)
	ld.d	$s4, $a1, 8
	beq	$s4, $a1, .LBB16_9
# %bb.2:                                # %.preheader21.preheader
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$s5, $a2, %pc_lo12(.L.str.26)
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	ori	$s6, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$fp, $a0, %pc_lo12(.L.str.169)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$s1, $a0, %pc_lo12(.L.str.168)
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_3:                               # %.loopexit
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.d	$a0, $s2, %pc_lo12(out_fp)
	addi.d	$a3, $s8, 64
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 8
	ld.d	$a0, $s3, %pc_lo12(needs)
	move	$a2, $s5
	beq	$s4, $a0, .LBB16_9
.LBB16_4:                               # %.preheader21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
	move	$s8, $s4
	.p2align	4, , 16
.LBB16_5:                               #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB16_5
# %bb.6:                                #   in Loop: Header=BB16_4 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$a0, $s6, .LBB16_3
# %bb.7:                                #   in Loop: Header=BB16_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$s7, $a2
	move	$a2, $s0
	move	$a3, $zero
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $s7
	b	.LBB16_3
.LBB16_8:
	ret
.LBB16_9:                               # %._crit_edge
	ld.d	$a0, $s2, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.170)
	addi.d	$a1, $a1, %pc_lo12(.L.str.170)
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(supplied)
	ld.d	$a0, $s0, %pc_lo12(supplied)
	ld.d	$s1, $a0, 8
	beq	$s1, $a0, .LBB16_14
# %bb.10:                               # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$fp, $a0, %pc_lo12(.L.str.171)
	.p2align	4, , 16
.LBB16_11:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_12 Depth 2
	move	$a1, $s1
	.p2align	4, , 16
.LBB16_12:                              #   Parent Loop BB16_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a0, $a1, 32
	beqz	$a0, .LBB16_12
# %bb.13:                               #   in Loop: Header=BB16_11 Depth=1
	ld.d	$a0, $s2, %pc_lo12(out_fp)
	addi.d	$a2, $a1, 64
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 8
	ld.d	$a0, $s0, %pc_lo12(supplied)
	bne	$s1, $a0, .LBB16_11
.LBB16_14:                              # %._crit_edge33
	ld.d	$a0, $s2, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(MapPrintPSResources)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(pagecount)
	ld.w	$a2, $a1, %pc_lo12(pagecount)
	pcalau12i	$a1, %pc_hi20(.L.str.172)
	addi.d	$a1, $a1, %pc_lo12(.L.str.172)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.173)
	addi.d	$a1, $a1, %pc_lo12(.L.str.173)
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end16:
	.size	PS_PrintAfterLastPage, .Lfunc_end16-PS_PrintAfterLastPage
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintWord
	.type	PS_PrintWord,@function
PS_PrintWord:                           # @PS_PrintWord
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
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(TotalWordCount)
	ld.d	$a0, $a0, %got_pc_lo12(TotalWordCount)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	ld.wu	$a2, $fp, 40
	st.w	$a1, $a0, 0
	pcalau12i	$s1, %pc_hi20(currentfont)
	ld.w	$a1, $s1, %pc_lo12(currentfont)
	andi	$a0, $a2, 4095
	pcalau12i	$s6, %pc_hi20(currentxheight2)
	pcalau12i	$s5, %pc_hi20(out_fp)
	pcalau12i	$s4, %pc_hi20(wordcount)
	beq	$a0, $a1, .LBB17_4
# %bb.1:
	st.w	$a0, $s1, %pc_lo12(currentfont)
	pcaddu18i	$ra, %call36(FontHalfXHeight)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s5, %pc_lo12(out_fp)
	ld.w	$a1, $s1, %pc_lo12(currentfont)
	st.h	$a0, $s6, %pc_lo12(currentxheight2)
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FontSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(currentfont)
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(FontName)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a1, $a0, %pc_lo12(.L.str.174)
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(wordcount)
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	addi.d	$a2, $a0, 1
	ori	$a3, $zero, 4
	st.w	$a2, $s4, %pc_lo12(wordcount)
	blt	$a0, $a3, .LBB17_3
# %bb.2:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	st.w	$zero, $s4, %pc_lo12(wordcount)
	b	.LBB17_4
.LBB17_3:
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB17_4:
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 40
	pcalau12i	$a1, %pc_hi20(currentcolour)
	ld.w	$a2, $a1, %pc_lo12(currentcolour)
	bstrpick.d	$a0, $a0, 21, 12
	beq	$a0, $a2, .LBB17_9
# %bb.5:
	st.w	$a0, $a1, %pc_lo12(currentcolour)
	beqz	$a0, .LBB17_9
# %bb.6:
	ld.d	$s2, $s5, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(ColourCommand)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(wordcount)
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	addi.d	$a2, $a0, 1
	ori	$a3, $zero, 4
	st.w	$a2, $s4, %pc_lo12(wordcount)
	blt	$a0, $a3, .LBB17_8
# %bb.7:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	st.w	$zero, $s4, %pc_lo12(wordcount)
	b	.LBB17_9
.LBB17_8:
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB17_9:
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(finfo)
	ld.d	$a1, $a0, %got_pc_lo12(finfo)
	ld.wu	$a0, $fp, 40
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	andi	$a0, $a0, 4095
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a1, $a0
	ld.d	$s2, $a0, 8
	ld.bu	$a1, $fp, 64
	addi.d	$a0, $fp, 64
	ori	$s6, $zero, 2
	move	$s3, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB17_11
	.p2align	4, , 16
.LBB17_10:                              #   in Loop: Header=BB17_11 Depth=1
	move	$a0, $s7
	ld.bu	$a1, $a0, 0
	addi.d	$s3, $s3, 1
	beqz	$a1, .LBB17_24
.LBB17_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_14 Depth 2
                                        #       Child Loop BB17_16 Depth 3
	st.b	$a1, $s3, 0
	ldx.bu	$a1, $s2, $a1
	addi.d	$s7, $a0, 1
	bltu	$a1, $s6, .LBB17_10
# %bb.12:                               #   in Loop: Header=BB17_11 Depth=1
	ld.bu	$s8, $a0, 0
	ldx.bu	$a0, $s2, $s8
	add.d	$a0, $s2, $a0
	ld.bu	$a1, $a0, 256
	bne	$a1, $s8, .LBB17_10
# %bb.13:                               # %.lr.ph244
                                        #   in Loop: Header=BB17_11 Depth=1
	ld.bu	$s1, $s7, 0
	addi.d	$a0, $a0, 256
	.p2align	4, , 16
.LBB17_14:                              #   Parent Loop BB17_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_16 Depth 3
	ld.bu	$a1, $a0, 1
	addi.d	$s4, $a0, 1
	bne	$a1, $s1, .LBB17_19
# %bb.15:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB17_14 Depth=2
	move	$a2, $s1
	move	$a3, $s7
	.p2align	4, , 16
.LBB17_16:                              # %.lr.ph
                                        #   Parent Loop BB17_11 Depth=1
                                        #     Parent Loop BB17_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a2, .LBB17_21
# %bb.17:                               # %.lr.ph
                                        #   in Loop: Header=BB17_16 Depth=3
	ld.bu	$a1, $s4, 1
	beqz	$a1, .LBB17_21
# %bb.18:                               #   in Loop: Header=BB17_16 Depth=3
	ld.bu	$a4, $a3, 1
	addi.d	$a0, $a3, 1
	addi.d	$s4, $s4, 1
	move	$a2, $a1
	move	$a3, $a0
	beq	$a1, $a4, .LBB17_16
	b	.LBB17_20
	.p2align	4, , 16
.LBB17_19:                              #   in Loop: Header=BB17_14 Depth=2
	move	$a0, $s7
.LBB17_20:                              # %.critedge
                                        #   in Loop: Header=BB17_14 Depth=2
	ld.bu	$a2, $s4, 1
	bnez	$a2, .LBB17_22
	b	.LBB17_23
	.p2align	4, , 16
.LBB17_21:                              #   in Loop: Header=BB17_14 Depth=2
	move	$a0, $a3
	move	$a1, $a2
	ld.bu	$a2, $s4, 1
	beqz	$a2, .LBB17_23
.LBB17_22:                              # %.preheader226.preheader
                                        #   in Loop: Header=BB17_14 Depth=2
	addi.d	$a0, $s4, 1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	ld.bu	$a1, $a0, 2
	addi.d	$a0, $a0, 2
	beq	$a1, $s8, .LBB17_14
	b	.LBB17_10
.LBB17_23:                              #   in Loop: Header=BB17_11 Depth=1
	st.b	$a1, $s3, 0
	ld.bu	$a1, $a0, 0
	addi.d	$s3, $s3, 1
	bnez	$a1, .LBB17_11
.LBB17_24:
	st.b	$zero, $s3, 0
	ld.wu	$a0, $fp, 40
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $s7, 0
	andi	$a0, $a0, 4095
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.h	$a2, $a2, %pc_lo12(currentxheight2)
	add.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 24
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.w	$a0, $a0, $a2
	pcalau12i	$s2, %pc_hi20(cpexists)
	ld.w	$a1, $s2, %pc_lo12(cpexists)
	pcalau12i	$s3, %pc_hi20(currenty)
	lu12i.w	$s4, -209716
	addi.d	$s8, $sp, 99
	beqz	$a1, .LBB17_32
# %bb.25:
	ld.w	$a1, $s3, %pc_lo12(currenty)
	bne	$a1, $a0, .LBB17_32
# %bb.26:
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	bgez	$s0, .LBB17_28
# %bb.27:
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	sub.w	$s0, $zero, $s0
	ori	$a0, $zero, 45
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB17_28:                              # %.preheader327
	move	$a2, $zero
	addi.d	$a0, $sp, 100
	ori	$a1, $s4, 3277
	lu32i.d	$a1, 0
	ori	$a3, $zero, 9
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_29:                              # =>This Inner Loop Header: Depth=1
	move	$a4, $s0
	bstrpick.d	$a5, $s0, 31, 0
	mul.d	$a5, $a5, $a1
	srli.d	$s0, $a5, 35
	slli.d	$a5, $s0, 3
	alsl.d	$a5, $s0, $a5, 1
	sub.d	$a5, $a4, $a5
	ori	$a5, $a5, 48
	st.b	$a5, $a0, 0
	addi.w	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	bltu	$a3, $a4, .LBB17_29
	.p2align	4, , 16
.LBB17_30:                              # %.preheader223
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a0, $s8, $a2
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	addi.d	$s0, $a2, -1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	bnez	$s0, .LBB17_30
# %bb.31:
	ld.bu	$a0, $fp, 42
	andi	$a0, $a0, 64
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.176)
	addi.d	$a1, $a1, %pc_lo12(.L.str.176)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.177)
	addi.d	$a2, $a2, %pc_lo12(.L.str.177)
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	b	.LBB17_43
.LBB17_32:
	st.w	$a0, $s3, %pc_lo12(currenty)
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	bgez	$s0, .LBB17_34
# %bb.33:
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	sub.w	$s0, $zero, $s0
	ori	$a0, $zero, 45
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB17_34:                              # %.preheader329
	move	$a2, $zero
	addi.d	$a0, $sp, 100
	ori	$s1, $s4, 3277
	lu32i.d	$s1, 0
	ori	$a1, $zero, 9
	.p2align	4, , 16
.LBB17_35:                              # =>This Inner Loop Header: Depth=1
	move	$a3, $s0
	bstrpick.d	$a4, $s0, 31, 0
	mul.d	$a4, $a4, $s1
	srli.d	$s0, $a4, 35
	slli.d	$a4, $s0, 3
	alsl.d	$a4, $s0, $a4, 1
	sub.d	$a4, $a3, $a4
	ori	$a4, $a4, 48
	st.b	$a4, $a0, 0
	addi.w	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	bltu	$a1, $a3, .LBB17_35
	.p2align	4, , 16
.LBB17_36:                              # %.preheader225
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a0, $s8, $a2
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	addi.d	$s0, $a2, -1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	bnez	$s0, .LBB17_36
# %bb.37:
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s3, %pc_lo12(currenty)
	bgez	$s0, .LBB17_39
# %bb.38:
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	sub.w	$s0, $zero, $s0
	ori	$a0, $zero, 45
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB17_39:                              # %.preheader328
	move	$a2, $zero
	addi.d	$a0, $sp, 100
	ori	$a1, $zero, 9
	.p2align	4, , 16
.LBB17_40:                              # =>This Inner Loop Header: Depth=1
	move	$a3, $s0
	bstrpick.d	$a4, $s0, 31, 0
	mul.d	$a4, $a4, $s1
	srli.d	$s0, $a4, 35
	slli.d	$a4, $s0, 3
	alsl.d	$a4, $s0, $a4, 1
	sub.d	$a4, $a3, $a4
	ori	$a4, $a4, 48
	st.b	$a4, $a0, 0
	addi.w	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	bltu	$a1, $a3, .LBB17_40
	.p2align	4, , 16
.LBB17_41:                              # %.preheader224
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a0, $s8, $a2
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	addi.d	$s0, $a2, -1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	bnez	$s0, .LBB17_41
# %bb.42:
	ld.wu	$a0, $fp, 40
	lu12i.w	$a1, 1024
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.178)
	addi.d	$a1, $a1, %pc_lo12(.L.str.178)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.179)
	addi.d	$a2, $a2, %pc_lo12(.L.str.179)
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	st.w	$a0, $s2, %pc_lo12(cpexists)
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB17_43:
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.188)
	addi.d	$a2, $a2, %pc_lo12(.L.str.188)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.189)
	addi.d	$a2, $a2, %pc_lo12(.L.str.189)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.181)
	addi.d	$a2, $a2, %pc_lo12(.L.str.181)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.182)
	addi.d	$a2, $a2, %pc_lo12(.L.str.182)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	beqz	$a1, .LBB17_54
# %bb.44:
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.180)
	addi.d	$a1, $a1, %pc_lo12(.L.str.180)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s6, 0
	slli.d	$a0, $a1, 1
	ldx.hu	$a2, $s2, $a0
	slli.d	$a0, $a2, 2
	alsl.d	$a0, $a2, $a0, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ldx.bu	$a0, $a3, $a0
	beqz	$a0, .LBB17_48
# %bb.45:                               # %.lr.ph.i
	ld.bu	$a1, $fp, 42
	ld.d	$s0, $s5, %pc_lo12(out_fp)
	andi	$a1, $a1, 64
	sltui	$a1, $a1, 1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a1, $a4, $a1
	or	$s1, $a1, $a3
	alsl.d	$a1, $a2, $a2, 1
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	addi.d	$s3, $a1, 6
	pcalau12i	$a1, %pc_hi20(.L.str.187)
	addi.d	$s2, $a1, %pc_lo12(.L.str.187)
	.p2align	4, , 16
.LBB17_46:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a2, $s3, -4
	ld.h	$a3, $s3, -2
	andi	$a4, $a0, 255
	move	$a0, $s0
	move	$a1, $s2
	move	$a5, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 0
	addi.d	$s3, $s3, 6
	bnez	$a0, .LBB17_46
# %bb.47:                               # %PrintComposite.exit.loopexit
	ld.bu	$a1, $s6, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB17_48:                              # %PrintComposite.exit
	ld.wu	$a0, $fp, 40
	ld.d	$a2, $s7, 0
	andi	$a0, $a0, 4095
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	ldx.d	$a0, $a2, $a0
	slli.d	$a2, $a1, 3
	alsl.d	$a1, $a1, $a2, 1
	add.d	$a0, $a0, $a1
	ld.h	$s0, $a0, 6
	bgez	$s0, .LBB17_50
# %bb.49:
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	sub.d	$s0, $zero, $s0
	ori	$a0, $zero, 45
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB17_50:                              # %.preheader326
	move	$a2, $zero
	addi.d	$a0, $sp, 100
	ori	$a1, $s4, 3277
	lu32i.d	$a1, 0
	ori	$a3, $zero, 9
	.p2align	4, , 16
.LBB17_51:                              # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $s0, 0
	bstrpick.d	$a5, $s0, 31, 0
	mul.d	$a5, $a5, $a1
	srli.d	$a5, $a5, 35
	slli.d	$a6, $a5, 3
	alsl.d	$a6, $a5, $a6, 1
	sub.d	$a6, $s0, $a6
	ori	$a6, $a6, 48
	st.b	$a6, $a0, 0
	addi.w	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	move	$s0, $a5
	bltu	$a3, $a4, .LBB17_51
	.p2align	4, , 16
.LBB17_52:                              # %.preheader222
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a0, $s8, $a2
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	addi.d	$s0, $a2, -1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	bnez	$s0, .LBB17_52
# %bb.53:
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 40
	lu12i.w	$a0, 1024
	and	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	or	$s1, $a0, $a2
	ld.bu	$a0, $fp, 65
	bnez	$a0, .LBB17_55
	b	.LBB17_74
.LBB17_54:
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(EightBitToPrintForm)
	ld.d	$a1, $a1, %got_pc_lo12(EightBitToPrintForm)
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	ld.bu	$a0, $fp, 65
	beqz	$a0, .LBB17_74
.LBB17_55:                              # %.lr.ph248.preheader
	ld.d	$a2, $s7, 0
	andi	$a1, $a1, 4095
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a1, $a2, $a1
	ld.d	$a1, $a1, 40
	ld.bu	$a1, $a1, 60
	andi	$a1, $a1, 127
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(MapTable)
	ld.d	$a2, $a2, %got_pc_lo12(MapTable)
	ldx.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 2047
	move	$a2, $s4
	addi.d	$s4, $a1, 898
	addi.d	$s6, $fp, 65
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 6
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(EightBitToPrintForm)
	ld.d	$a1, $a1, %got_pc_lo12(EightBitToPrintForm)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.180)
	addi.d	$a1, $a1, %pc_lo12(.L.str.180)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$s3, $a2, 3277
	lu32i.d	$s3, 0
	ori	$s0, $zero, 9
	b	.LBB17_57
	.p2align	4, , 16
.LBB17_56:                              #   in Loop: Header=BB17_57 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 1
	addi.d	$s6, $s6, 1
	beqz	$a0, .LBB17_74
.LBB17_57:                              # %.lr.ph248
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_59 Depth 2
                                        #     Child Loop BB17_66 Depth 2
                                        #     Child Loop BB17_71 Depth 2
                                        #     Child Loop BB17_72 Depth 2
	ld.bu	$a1, $s6, -1
	ld.wu	$a2, $fp, 40
	ldx.bu	$a3, $s4, $a1
	ld.d	$a1, $s7, 0
	andi	$a2, $a2, 4095
	alsl.d	$a2, $a2, $a2, 1
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	ld.d	$a2, $a1, 64
	slli.d	$a3, $a3, 1
	ldx.hu	$a2, $a2, $a3
	beqz	$a2, .LBB17_63
# %bb.58:                               #   in Loop: Header=BB17_57 Depth=1
	ldx.bu	$a3, $s4, $a0
	ld.d	$a4, $a1, 72
	.p2align	4, , 16
.LBB17_59:                              #   Parent Loop BB17_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a5, $a4, $a2
	addi.d	$a2, $a2, 1
	bltu	$a3, $a5, .LBB17_59
# %bb.60:                               #   in Loop: Header=BB17_57 Depth=1
	bne	$a5, $a3, .LBB17_63
# %bb.61:                               #   in Loop: Header=BB17_57 Depth=1
	ld.d	$a3, $a1, 80
	add.d	$a2, $a3, $a2
	ld.bu	$a2, $a2, -1
	ld.d	$a1, $a1, 88
	slli.d	$a2, $a2, 1
	ldx.hu	$a1, $a1, $a2
	beqz	$a1, .LBB17_63
# %bb.62:                               #   in Loop: Header=BB17_57 Depth=1
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	ext.w.h	$a1, $a1
	sub.d	$a3, $zero, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.183)
	addi.d	$a1, $a1, %pc_lo12(.L.str.183)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(wordcount)
	ld.bu	$a1, $fp, 42
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, %pc_lo12(wordcount)
	andi	$a0, $a1, 64
	sltui	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.184)
	addi.d	$a0, $a0, %pc_lo12(.L.str.184)
	masknez	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.185)
	addi.d	$a3, $a0, %pc_lo12(.L.str.185)
	ld.bu	$a0, $s6, 0
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a2
	.p2align	4, , 16
.LBB17_63:                              # %.thread
                                        #   in Loop: Header=BB17_57 Depth=1
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	beqz	$a1, .LBB17_56
# %bb.64:                               #   in Loop: Header=BB17_57 Depth=1
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s6, 0
	slli.d	$a0, $a1, 1
	ldx.hu	$a0, $s2, $a0
	slli.d	$a2, $a0, 2
	alsl.d	$a2, $a0, $a2, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $a2
	beqz	$a0, .LBB17_68
# %bb.65:                               # %.lr.ph.i215
                                        #   in Loop: Header=BB17_57 Depth=1
	ld.bu	$a1, $fp, 42
	ld.d	$s1, $s5, %pc_lo12(out_fp)
	andi	$a1, $a1, 64
	sltui	$a1, $a1, 1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a1, $a4, $a1
	or	$s2, $a1, $a3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$s7, $a1, $a2
	.p2align	4, , 16
.LBB17_66:                              #   Parent Loop BB17_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a2, $s7, -4
	ld.h	$a3, $s7, -2
	andi	$a4, $a0, 255
	pcalau12i	$a0, %pc_hi20(.L.str.187)
	addi.d	$a1, $a0, %pc_lo12(.L.str.187)
	move	$a0, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 0
	addi.d	$s7, $s7, 6
	bnez	$a0, .LBB17_66
# %bb.67:                               # %PrintComposite.exit219.loopexit
                                        #   in Loop: Header=BB17_57 Depth=1
	ld.bu	$a1, $s6, 0
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB17_68:                              # %PrintComposite.exit219
                                        #   in Loop: Header=BB17_57 Depth=1
	ld.wu	$a0, $fp, 40
	ld.d	$a2, $s7, 0
	andi	$a0, $a0, 4095
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	ldx.d	$a0, $a2, $a0
	slli.d	$a2, $a1, 3
	alsl.d	$a1, $a1, $a2, 1
	add.d	$a0, $a0, $a1
	ld.h	$s1, $a0, 6
	bgez	$s1, .LBB17_70
# %bb.69:                               #   in Loop: Header=BB17_57 Depth=1
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	sub.d	$s1, $zero, $s1
	ori	$a0, $zero, 45
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB17_70:                              # %.preheader325
                                        #   in Loop: Header=BB17_57 Depth=1
	move	$a2, $zero
	addi.d	$a0, $sp, 100
	.p2align	4, , 16
.LBB17_71:                              #   Parent Loop BB17_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a1, $s1, 0
	bstrpick.d	$a3, $s1, 31, 0
	mul.d	$a3, $a3, $s3
	srli.d	$a3, $a3, 35
	slli.d	$a4, $a3, 3
	alsl.d	$a4, $a3, $a4, 1
	sub.d	$a4, $s1, $a4
	ori	$a4, $a4, 48
	st.b	$a4, $a0, 0
	addi.w	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	move	$s1, $a3
	bltu	$s0, $a1, .LBB17_71
	.p2align	4, , 16
.LBB17_72:                              # %.preheader
                                        #   Parent Loop BB17_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a0, $s8, $a2
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	addi.d	$s1, $a2, -1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	bnez	$s1, .LBB17_72
# %bb.73:                               #   in Loop: Header=BB17_57 Depth=1
	ld.d	$a1, $s5, %pc_lo12(out_fp)
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 42
	andi	$a0, $a0, 64
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	ld.bu	$a0, $s6, 1
	addi.d	$s6, $s6, 1
	bnez	$a0, .LBB17_57
.LBB17_74:                              # %._crit_edge
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $fp, %pc_lo12(wordcount)
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	addi.d	$a2, $a1, 1
	ori	$a3, $zero, 4
	st.w	$a2, $fp, %pc_lo12(wordcount)
	blt	$a1, $a3, .LBB17_76
# %bb.75:
	pcalau12i	$a1, %pc_hi20(.L.str.186)
	addi.d	$a1, $a1, %pc_lo12(.L.str.186)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, %pc_lo12(wordcount)
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
.LBB17_76:
	pcalau12i	$a1, %pc_hi20(.L.str.180)
	addi.d	$a1, $a1, %pc_lo12(.L.str.180)
	move	$a2, $s1
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end17:
	.size	PS_PrintWord, .Lfunc_end17-PS_PrintWord
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintPlainGraphic
	.type	PS_PrintPlainGraphic,@function
PS_PrintPlainGraphic:                   # @PS_PrintPlainGraphic
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.190)
	addi.d	$a5, $a0, %pc_lo12(.L.str.190)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.Lfunc_end18:
	.size	PS_PrintPlainGraphic, .Lfunc_end18-PS_PrintPlainGraphic
                                        # -- End function
	.p2align	5                               # -- Begin function PS_PrintUnderline
	.type	PS_PrintUnderline,@function
PS_PrintUnderline:                      # @PS_PrintUnderline
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(currentcolour)
	ld.w	$a6, $a5, %pc_lo12(currentcolour)
	pcalau12i	$s0, %pc_hi20(out_fp)
	beq	$a1, $a6, .LBB19_6
# %bb.1:
	st.w	$a1, $a5, %pc_lo12(currentcolour)
	beqz	$a1, .LBB19_6
# %bb.2:
	move	$s1, $a0
	move	$s2, $a4
	move	$s3, $a2
	move	$s4, $a3
	ld.d	$fp, $s0, %pc_lo12(out_fp)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(ColourCommand)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(wordcount)
	ld.w	$a0, $fp, %pc_lo12(wordcount)
	ld.d	$a1, $s0, %pc_lo12(out_fp)
	addi.d	$a2, $a0, 1
	ori	$a3, $zero, 4
	st.w	$a2, $fp, %pc_lo12(wordcount)
	blt	$a0, $a3, .LBB19_4
# %bb.3:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, %pc_lo12(wordcount)
	b	.LBB19_5
.LBB19_4:
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB19_5:
	move	$a3, $s4
	move	$a2, $s3
	move	$a4, $s2
	move	$a0, $s1
.LBB19_6:
	ld.d	$a6, $s0, %pc_lo12(out_fp)
	pcalau12i	$a1, %got_pc_hi20(finfo)
	ld.d	$a1, $a1, %got_pc_lo12(finfo)
	ld.d	$a1, $a1, 0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a1, $a0
	ld.h	$a1, $a0, 56
	ld.h	$a5, $a0, 58
	sub.w	$a4, $a4, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.191)
	addi.d	$a1, $a0, %pc_lo12(.L.str.191)
	move	$a0, $a6
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end19:
	.size	PS_PrintUnderline, .Lfunc_end19-PS_PrintUnderline
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function PS_CoordRotate
.LCPI20_0:
	.word	0x3c000000                      # float 0.0078125
	.text
	.p2align	5
	.type	PS_CoordRotate,@function
PS_CoordRotate:                         # @PS_CoordRotate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(out_fp)
	pcalau12i	$a2, %pc_hi20(.LCPI20_0)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI20_0)
	ld.d	$a3, $a1, %pc_lo12(out_fp)
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa1, $fa0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.192)
	addi.d	$a1, $a0, %pc_lo12(.L.str.192)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cpexists)
	st.w	$zero, $a0, %pc_lo12(cpexists)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end20:
	.size	PS_CoordRotate, .Lfunc_end20-PS_CoordRotate
                                        # -- End function
	.p2align	5                               # -- Begin function PS_LinkSource
	.type	PS_LinkSource,@function
PS_LinkSource:                          # @PS_LinkSource
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
	pcalau12i	$a5, %pc_hi20(out_fp)
	ld.d	$s2, $a5, %pc_lo12(out_fp)
	move	$s0, $a4
	move	$s1, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(ConvertToPDFName.buff)
	addi.d	$s5, $a2, %pc_lo12(ConvertToPDFName.buff)
	ld.b	$a0, $a0, 4
	st.w	$a1, $s5, 0
	st.b	$a0, $s5, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 64
	move	$s6, $a0
	beqz	$a1, .LBB21_6
# %bb.1:                                # %.lr.ph.i
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s7, $fp, 64
	addi.d	$s8, $fp, 32
	addi.d	$s1, $fp, 65
	ori	$s2, $zero, 199
	ori	$s3, $zero, 95
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s0, $a0, %pc_lo12(.L.str.30)
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_2:                               #   in Loop: Header=BB21_3 Depth=1
	andi	$a0, $a1, 223
	addi.d	$a0, $a0, -65
	andi	$a0, $a0, 255
	sltui	$a0, $a0, 26
	addi.d	$a2, $a1, -48
	andi	$a2, $a2, 255
	sltui	$a2, $a2, 10
	masknez	$a3, $s3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	stx.b	$a0, $s5, $s6
	ld.bu	$a1, $s1, 0
	addi.d	$a0, $s6, 1
	addi.d	$s1, $s1, 1
	move	$s6, $a0
	beqz	$a1, .LBB21_5
.LBB21_3:                               # =>This Inner Loop Header: Depth=1
	blt	$s6, $s2, .LBB21_2
# %bb.4:                                #   in Loop: Header=BB21_3 Depth=1
	ori	$a0, $zero, 49
	ori	$a1, $zero, 12
	ori	$a3, $zero, 1
	move	$a2, $s0
	move	$a4, $s8
	move	$a5, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, -1
	b	.LBB21_2
.LBB21_5:                               # %ConvertToPDFName.exit.loopexit
	add.d	$a0, $s5, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	b	.LBB21_7
.LBB21_6:
	add.d	$a0, $s5, $s6
.LBB21_7:                               # %ConvertToPDFName.exit
	st.b	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.193)
	addi.d	$a1, $a0, %pc_lo12(.L.str.193)
	pcalau12i	$a0, %pc_hi20(ConvertToPDFName.buff)
	addi.d	$a6, $a0, %pc_lo12(ConvertToPDFName.buff)
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s1
	move	$a5, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
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
	beqz	$a0, .LBB21_9
# %bb.8:
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB21_10
.LBB21_9:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB21_10:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a3, %pc_hi20(link_source_list)
	ld.d	$a4, $a3, %pc_lo12(link_source_list)
	st.d	$a0, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB21_12
# %bb.11:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
.LBB21_12:
	st.d	$a0, $a1, 0
	st.d	$fp, $a3, 0
	beqz	$fp, .LBB21_15
# %bb.13:
	beqz	$a0, .LBB21_15
# %bb.14:
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB21_15:
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
.Lfunc_end21:
	.size	PS_LinkSource, .Lfunc_end21-PS_LinkSource
                                        # -- End function
	.p2align	5                               # -- Begin function PS_LinkDest
	.type	PS_LinkDest,@function
PS_LinkDest:                            # @PS_LinkDest
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(link_dest_tab)
	ld.d	$a0, $a0, %pc_lo12(link_dest_tab)
	ld.bu	$a1, $fp, 64
	addi.d	$s0, $fp, 64
	ori	$a2, $zero, 65
	.p2align	4, , 16
.LBB22_1:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $fp, $a2
	move	$a3, $a1
	add.w	$a1, $a1, $a4
	addi.d	$a2, $a2, 1
	bnez	$a4, .LBB22_1
# %bb.2:
	ld.w	$a1, $a0, 0
	mod.w	$a1, $a3, $a1
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s1, $a0, 8
	beqz	$s1, .LBB22_9
# %bb.3:                                # %.preheader28.i.preheader
	move	$s2, $s1
	.p2align	4, , 16
.LBB22_4:                               # %.preheader28.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_6 Depth 2
	ld.d	$s2, $s2, 8
	beq	$s2, $s1, .LBB22_9
# %bb.5:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB22_4 Depth=1
	move	$s3, $s2
	.p2align	4, , 16
.LBB22_6:                               # %.preheader.i
                                        #   Parent Loop BB22_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB22_6
# %bb.7:                                #   in Loop: Header=BB22_4 Depth=1
	addi.d	$a1, $s3, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_4
# %bb.8:                                # %ltab_retrieve.exit
	addi.d	$a0, $s3, 32
	addi.d	$fp, $fp, 32
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a2, $a0, %pc_lo12(.L.str.196)
	ori	$a0, $zero, 49
	ori	$a1, $zero, 13
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a5, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.LBB22_9:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(out_fp)
	ld.d	$a0, $a0, %pc_lo12(out_fp)
	pcalau12i	$a1, %pc_hi20(.L.str.194)
	addi.d	$a1, $a1, %pc_lo12(.L.str.194)
	pcalau12i	$a2, %pc_hi20(.L.str.195)
	addi.d	$a2, $a2, %pc_lo12(.L.str.195)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(link_dest_tab)
	addi.d	$a1, $a0, %pc_lo12(link_dest_tab)
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(ltab_insert)
	jr	$t8
.Lfunc_end22:
	.size	PS_LinkDest, .Lfunc_end22-PS_LinkDest
                                        # -- End function
	.p2align	5                               # -- Begin function ltab_insert
	.type	ltab_insert,@function
ltab_insert:                            # @ltab_insert
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
	move	$s0, $a1
	ld.d	$s1, $a1, 0
	ld.w	$s4, $s1, 0
	ld.w	$a1, $s1, 4
	addi.w	$a2, $s4, -1
	move	$fp, $a0
	bne	$a1, $a2, .LBB23_12
# %bb.1:
	slli.w	$s5, $s4, 1
	slli.d	$s3, $s5, 3
	addi.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB23_3
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	ori	$a0, $zero, 43
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB23_3:
	st.w	$s5, $s2, 0
	st.w	$zero, $s2, 4
	blez	$s4, .LBB23_5
# %bb.4:                                # %.lr.ph.i
	addi.d	$a0, $s2, 8
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB23_5:                               # %ltab_new.exit
	ld.w	$a1, $s1, 0
	st.d	$s2, $sp, 8
	blez	$a1, .LBB23_11
# %bb.6:                                # %.lr.ph
	move	$s2, $zero
	ori	$s3, $zero, 16
	b	.LBB23_8
	.p2align	4, , 16
.LBB23_7:                               #   in Loop: Header=BB23_8 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	bge	$s2, $a1, .LBB23_10
.LBB23_8:                               # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s1, $s3
	beqz	$a0, .LBB23_7
# %bb.9:                                #   in Loop: Header=BB23_8 Depth=1
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(ltab_insert)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	b	.LBB23_7
.LBB23_10:                              # %ltab_rehash.exit.loopexit
	ld.d	$s2, $sp, 8
.LBB23_11:                              # %ltab_rehash.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s2, $s0, 0
	move	$s1, $s2
.LBB23_12:
	ld.bu	$a1, $fp, 65
	ld.bu	$a0, $fp, 64
	beqz	$a1, .LBB23_15
# %bb.13:                               # %.lr.ph49.preheader
	addi.d	$a2, $fp, 66
	.p2align	4, , 16
.LBB23_14:                              # %.lr.ph49
                                        # =>This Inner Loop Header: Depth=1
	andi	$a3, $a1, 255
	ld.bu	$a1, $a2, 0
	add.w	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB23_14
.LBB23_15:                              # %._crit_edge
	ld.w	$a1, $s1, 0
	mod.w	$s4, $a0, $a1
	alsl.d	$a0, $s4, $s1, 3
	ld.d	$s5, $a0, 8
	bnez	$s5, .LBB23_20
# %bb.16:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 17
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB23_18
# %bb.17:
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB23_19
.LBB23_18:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB23_19:
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a1, $s4, $a1, 3
	st.d	$a0, $a1, 8
	ld.d	$a0, $s0, 0
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$s5, $a0, 8
.LBB23_20:
	ld.d	$s6, $s5, 8
	beq	$s6, $s5, .LBB23_27
# %bb.21:                               # %.preheader.lr.ph
	addi.d	$s1, $fp, 64
	addi.d	$s2, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$s3, $a0, %pc_lo12(.L.str.197)
	b	.LBB23_23
	.p2align	4, , 16
.LBB23_22:                              #   in Loop: Header=BB23_23 Depth=1
	ld.d	$s6, $s6, 8
	beq	$s6, $s5, .LBB23_27
.LBB23_23:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_24 Depth 2
	move	$s7, $s6
	.p2align	4, , 16
.LBB23_24:                              #   Parent Loop BB23_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB23_24
# %bb.25:                               #   in Loop: Header=BB23_23 Depth=1
	addi.d	$a1, $s7, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB23_22
# %bb.26:                               #   in Loop: Header=BB23_23 Depth=1
	addi.d	$a0, $s7, 32
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	ori	$a0, $zero, 43
	ori	$a1, $zero, 2
	ori	$a3, $zero, 2
	move	$a2, $s3
	move	$a4, $s2
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB23_22
.LBB23_27:                              # %._crit_edge55
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
	beqz	$a0, .LBB23_29
# %bb.28:
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB23_30
.LBB23_29:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB23_30:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	ld.d	$a3, $s0, 0
	alsl.d	$a3, $s4, $a3, 3
	ld.d	$a4, $a3, 8
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB23_32
# %bb.31:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
.LBB23_32:
	st.d	$a0, $a1, 0
	st.d	$fp, $a3, 0
	beqz	$a0, .LBB23_34
# %bb.33:
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB23_34:
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
.Lfunc_end23:
	.size	ltab_insert, .Lfunc_end23-ltab_insert
                                        # -- End function
	.p2align	5                               # -- Begin function PS_LinkCheck
	.type	PS_LinkCheck,@function
PS_LinkCheck:                           # @PS_LinkCheck
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(link_source_list)
	ld.d	$a0, $s4, %pc_lo12(link_source_list)
	ld.d	$s8, $a0, 8
	beq	$s8, $a0, .LBB24_16
# %bb.1:                                # %.preheader.preheader
	ori	$s6, $zero, 2
	pcalau12i	$s7, %pc_hi20(link_dest_tab)
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$fp, $a0, %pc_lo12(.L.str.199)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$s1, $a0, %pc_lo12(.L.str.198)
	b	.LBB24_4
	.p2align	4, , 16
.LBB24_2:                               # %.loopexit
                                        #   in Loop: Header=BB24_4 Depth=1
	ori	$a0, $zero, 49
	ori	$a1, $zero, 14
	ori	$a3, $zero, 2
	move	$a2, $fp
	move	$a4, $s2
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB24_3:                               # %ltab_retrieve.exit
                                        #   in Loop: Header=BB24_4 Depth=1
	ld.d	$s8, $s8, 8
	ld.d	$a0, $s4, %pc_lo12(link_source_list)
	beq	$s8, $a0, .LBB24_16
.LBB24_4:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_5 Depth 2
                                        #     Child Loop BB24_9 Depth 2
                                        #     Child Loop BB24_12 Depth 2
                                        #       Child Loop BB24_14 Depth 3
	move	$s5, $s8
	.p2align	4, , 16
.LBB24_5:                               #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB24_5
# %bb.6:                                #   in Loop: Header=BB24_4 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$a0, $s6, .LBB24_8
# %bb.7:                                #   in Loop: Header=BB24_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $zero
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB24_8:                               # %.loopexit13
                                        #   in Loop: Header=BB24_4 Depth=1
	ld.d	$a0, $s7, %pc_lo12(link_dest_tab)
	ld.bu	$a1, $s5, 64
	addi.d	$s2, $s5, 32
	addi.d	$s3, $s5, 64
	addi.d	$a2, $s5, 65
	.p2align	4, , 16
.LBB24_9:                               #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a2, 0
	move	$a3, $a1
	add.w	$a1, $a1, $a4
	addi.d	$a2, $a2, 1
	bnez	$a4, .LBB24_9
# %bb.10:                               #   in Loop: Header=BB24_4 Depth=1
	ld.w	$a1, $a0, 0
	mod.w	$a1, $a3, $a1
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s0, $a0, 8
	beqz	$s0, .LBB24_2
# %bb.11:                               # %.preheader28.i.preheader
                                        #   in Loop: Header=BB24_4 Depth=1
	move	$s5, $s0
	.p2align	4, , 16
.LBB24_12:                              # %.preheader28.i
                                        #   Parent Loop BB24_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_14 Depth 3
	ld.d	$s5, $s5, 8
	beq	$s5, $s0, .LBB24_2
# %bb.13:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB24_12 Depth=2
	move	$a0, $s5
	.p2align	4, , 16
.LBB24_14:                              # %.preheader.i
                                        #   Parent Loop BB24_4 Depth=1
                                        #     Parent Loop BB24_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB24_14
# %bb.15:                               #   in Loop: Header=BB24_12 Depth=2
	addi.d	$a1, $a0, 64
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB24_12
	b	.LBB24_3
.LBB24_16:                              # %._crit_edge
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end24:
	.size	PS_LinkCheck, .Lfunc_end24-PS_LinkCheck
                                        # -- End function
	.type	out_fp,@object                  # @out_fp
	.local	out_fp
	.comm	out_fp,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\ngrestore\n"
	.size	.L.str, 11

	.type	gs_stack,@object                # @gs_stack
	.local	gs_stack
	.comm	gs_stack,1000,4
	.type	gs_stack_top,@object            # @gs_stack_top
	.local	gs_stack_top
	.comm	gs_stack_top,4,4
	.type	currentfont,@object             # @currentfont
	.local	currentfont
	.comm	currentfont,4,4
	.type	currentcolour,@object           # @currentcolour
	.local	currentcolour
	.comm	currentcolour,4,4
	.type	cpexists,@object                # @cpexists
	.local	cpexists
	.comm	cpexists,4,4
	.type	currenty,@object                # @currenty
	.local	currenty
	.comm	currenty,4,4
	.type	currentxheight2,@object         # @currentxheight2
	.local	currentxheight2
	.comm	currentxheight2,2,2
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"error in left parameter of %s"
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"@Graphic"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"assert failed in %s"
	.size	.L.str.5, 20

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"PrintGraphic: type(x) != GRAPHIC!"
	.size	.L.str.6, 34

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%hd %s "
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s "
	.size	.L.str.8, 4

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%d %d %d %d %d %d %d LoutGraphic\n"
	.size	.L.str.9, 34

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%d %d %d %d %d %d %d %d %d LoutGr2\n"
	.size	.L.str.10, 36

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"PrintGraphicInclude!"
	.size	.L.str.11, 21

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"PrintGraphicInclude: !incgraphic_ok(x)!"
	.size	.L.str.12, 40

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"PrintGraphicInclude: fp!"
	.size	.L.str.13, 25

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%hd %s\n"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%s\n"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"BeginEPSF\n"
	.size	.L.str.16, 11

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%%%%BeginDocument: %s\n"
	.size	.L.str.17, 23

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%%DocumentNeededResources:"
	.size	.L.str.18, 27

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"(atend)"
	.size	.L.str.19, 8

	.type	needs,@object                   # @needs
	.local	needs
	.comm	needs,8,8
	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%%LanguageLevel:"
	.size	.L.str.21, 17

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"ignoring LanguageLevel comment in %s file %s"
	.size	.L.str.22, 45

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"@IncludeGraphic"
	.size	.L.str.23, 16

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%%Extensions:"
	.size	.L.str.24, 14

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"ignoring Extensions comment in %s file %s"
	.size	.L.str.25, 42

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"%%+"
	.size	.L.str.26, 4

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"lout.eps"
	.size	.L.str.27, 9

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"\n%%%%EndDocument\nEndEPSF\n"
	.size	.L.str.28, 26

	.type	wordcount,@object               # @wordcount
	.local	wordcount
	.comm	wordcount,4,4
	.type	ConvertToPDFName.buff,@object   # @ConvertToPDFName.buff
	.local	ConvertToPDFName.buff
	.comm	ConvertToPDFName.buff,200,8
	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"LOUT"
	.size	.L.str.29, 5

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"tag %s is too long"
	.size	.L.str.30, 19

	.type	PS_BackEnd,@object              # @PS_BackEnd
	.data
	.globl	PS_BackEnd
	.p2align	3, 0x0
PS_BackEnd:
	.dword	ps_back
	.size	PS_BackEnd, 8

	.type	Encapsulated,@object            # @Encapsulated
	.bss
	.globl	Encapsulated
	.p2align	2, 0x0
Encapsulated:
	.word	0                               # 0x0
	.size	Encapsulated, 4

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"gsave\n"
	.size	.L.str.31, 7

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"rotations, graphics etc. too deeply nested (max is %d)"
	.size	.L.str.32, 55

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%d %d translate\n"
	.size	.L.str.33, 17

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%.4f %.4f scale\n"
	.size	.L.str.34, 17

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%%EOF"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"%%Trailer"
	.size	.L.str.36, 10

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"PostScript"
	.size	.L.str.37, 11

	.type	ps_back,@object                 # @ps_back
	.data
	.p2align	3, 0x0
ps_back:
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.37
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	PS_PrintInitialize
	.dword	PS_PrintLength
	.dword	PS_PrintPageSetupForFont
	.dword	PS_PrintPageResourceForFont
	.dword	PS_PrintMapping
	.dword	PS_PrintBeforeFirstPage
	.dword	PS_PrintBetweenPages
	.dword	PS_PrintAfterLastPage
	.dword	PS_PrintWord
	.dword	PS_PrintPlainGraphic
	.dword	PS_PrintUnderline
	.dword	PS_CoordTranslate
	.dword	PS_CoordRotate
	.dword	PS_CoordScale
	.dword	PS_SaveGraphicState
	.dword	PS_RestoreGraphicState
	.dword	PS_PrintGraphicObject
	.dword	PS_DefineGraphicNames
	.dword	PS_SaveTranslateDefineSave
	.dword	PS_PrintGraphicInclude
	.dword	PS_LinkSource
	.dword	PS_LinkDest
	.dword	PS_LinkCheck
	.size	ps_back, 232

	.type	prologue_done,@object           # @prologue_done
	.local	prologue_done
	.comm	prologue_done,1,4
	.type	pagecount,@object               # @pagecount
	.local	pagecount
	.comm	pagecount,4,4
	.type	supplied,@object                # @supplied
	.local	supplied
	.comm	supplied,8,8
	.type	link_dest_tab,@object           # @link_dest_tab
	.local	link_dest_tab
	.comm	link_dest_tab,8,8
	.type	link_source_list,@object        # @link_source_list
	.local	link_source_list
	.comm	link_source_list,8,8
	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"run out of memory enlarging link dest table"
	.size	.L.str.39, 44

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"%.3fc"
	.size	.L.str.40, 6

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"%%%%IncludeResource: font %s\n"
	.size	.L.str.41, 30

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"/%s%s %s /%s LoutRecode\n"
	.size	.L.str.42, 25

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"/%s { /%s%s LoutFont } def\n"
	.size	.L.str.43, 28

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"/%s { /%s LoutFont } def\n"
	.size	.L.str.44, 26

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"%s font %s\n"
	.size	.L.str.45, 12

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"%%PageResources:"
	.size	.L.str.46, 17

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"%%%%BeginResource: encoding %s\n"
	.size	.L.str.47, 32

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"/%s [\n"
	.size	.L.str.48, 7

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"/%s%c"
	.size	.L.str.49, 6

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"] def\n"
	.size	.L.str.50, 7

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"%%%%EndResource\n\n"
	.size	.L.str.51, 18

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"%!PS-Adobe-3.0 EPSF-3.0\n"
	.size	.L.str.52, 25

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"%!PS-Adobe-3.0\n"
	.size	.L.str.53, 16

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"%%%%Creator: %s\n"
	.size	.L.str.54, 17

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Basser Lout Version 3.24 (October 2000)"
	.size	.L.str.55, 40

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"%%%%CreationDate: Sometime Today\n"
	.size	.L.str.56, 34

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"%%DocumentData: Binary\n"
	.size	.L.str.57, 24

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"%%DocumentNeededResources: (atend)\n"
	.size	.L.str.58, 36

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"%%DocumentSuppliedResources: (atend)\n"
	.size	.L.str.59, 38

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"%%%%DocumentMedia: %s %d %d 0 white ()\n"
	.size	.L.str.60, 40

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"%%PageOrder: Ascend\n"
	.size	.L.str.61, 21

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"%%Pages: (atend)\n"
	.size	.L.str.62, 18

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"%%%%BoundingBox: 0 0 %d %d\n"
	.size	.L.str.63, 28

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"%%EndComments\n\n"
	.size	.L.str.64, 16

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%%BeginProlog\n"
	.size	.L.str.65, 15

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%%%%BeginResource: procset %s\n"
	.size	.L.str.66, 31

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"LoutStartUp"
	.size	.L.str.67, 12

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"/save_cp { currentpoint /cp_y exch def /cp_x exch def } def\n"
	.size	.L.str.68, 61

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"/restore_cp { cp_x cp_y moveto } def\n"
	.size	.L.str.69, 38

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"/outline { gsave 1 1 1 setrgbcolor dup show save_cp\n"
	.size	.L.str.70, 53

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"  grestore true charpath stroke restore_cp } bind def\n"
	.size	.L.str.71, 55

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"/m  { 3 1 roll moveto show } bind def\n"
	.size	.L.str.72, 39

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"/mo { 3 1 roll moveto outline } bind def\n"
	.size	.L.str.73, 42

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"/s  { exch currentpoint exch pop moveto show } bind def\n"
	.size	.L.str.74, 57

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"/so { exch currentpoint exch pop moveto outline } bind def\n"
	.size	.L.str.75, 60

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"/k  { exch neg 0 rmoveto show } bind def\n"
	.size	.L.str.76, 42

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"/ko { exch neg 0 rmoveto outline } bind def\n"
	.size	.L.str.77, 45

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"/r  { exch 0 rmoveto show } bind def\n"
	.size	.L.str.78, 38

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"/ro { exch 0 rmoveto outline } bind def\n"
	.size	.L.str.79, 41

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"/c  { gsave 3 1 roll rmoveto show grestore } bind def\n"
	.size	.L.str.80, 55

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"/co { gsave 3 1 roll rmoveto outline grestore } bind def\n"
	.size	.L.str.81, 58

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"/ul { gsave setlinewidth dup 3 1 roll\n"
	.size	.L.str.82, 39

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"      moveto lineto stroke grestore } bind def\n"
	.size	.L.str.83, 48

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"/in { %d mul } def\n"
	.size	.L.str.84, 20

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"/cm { %d mul } def\n"
	.size	.L.str.85, 20

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"/pt { %d mul } def\n"
	.size	.L.str.86, 20

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"/em { %d mul } def\n"
	.size	.L.str.87, 20

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"/sp { louts mul } def\n"
	.size	.L.str.88, 23

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"/vs { loutv mul } def\n"
	.size	.L.str.89, 23

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"/ft { loutf mul } def\n"
	.size	.L.str.90, 23

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"/dg {           } def\n\n"
	.size	.L.str.91, 24

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"/LoutGraphic {\n"
	.size	.L.str.92, 16

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"  /louts exch def\n"
	.size	.L.str.93, 19

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"  /loutv exch def\n"
	.size	.L.str.94, 19

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"  /loutf exch def\n"
	.size	.L.str.95, 19

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"  /ymark exch def\n"
	.size	.L.str.96, 19

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"  /xmark exch def\n"
	.size	.L.str.97, 19

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"  /ysize exch def\n"
	.size	.L.str.98, 19

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"  /xsize exch def\n} def\n\n"
	.size	.L.str.99, 26

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"/LoutGr2 { gsave translate LoutGraphic gsave } def\n\n"
	.size	.L.str.100, 53

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"/LoutFont\n"
	.size	.L.str.101, 11

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"{ findfont exch scalefont setfont\n"
	.size	.L.str.102, 35

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"} bind def\n\n"
	.size	.L.str.103, 13

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"/LoutRecode {\n"
	.size	.L.str.104, 15

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"  { findfont dup length dict begin\n"
	.size	.L.str.105, 36

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"    {1 index /FID ne {def} {pop pop} ifelse} forall\n"
	.size	.L.str.106, 53

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"    /Encoding exch def\n"
	.size	.L.str.107, 24

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"    currentdict end definefont pop\n"
	.size	.L.str.108, 36

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"  }\n"
	.size	.L.str.109, 5

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"  stopped pop\n"
	.size	.L.str.110, 15

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"/BeginEPSF {\n"
	.size	.L.str.111, 14

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"  /LoutEPSFState save def\n"
	.size	.L.str.112, 27

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"  /dict_count countdictstack def\n"
	.size	.L.str.113, 34

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"  /op_count count 1 sub def\n"
	.size	.L.str.114, 29

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"  userdict begin\n"
	.size	.L.str.115, 18

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"  /showpage { } def\n"
	.size	.L.str.116, 21

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"  0 setgray 0 setlinecap\n"
	.size	.L.str.117, 26

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"  1 setlinewidth 0 setlinejoin\n"
	.size	.L.str.118, 32

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"  10 setmiterlimit [] 0 setdash newpath\n"
	.size	.L.str.119, 41

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"  /languagelevel where\n"
	.size	.L.str.120, 24

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"  { pop languagelevel\n"
	.size	.L.str.121, 23

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"    1 ne\n"
	.size	.L.str.122, 10

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"    { false setstrokeadjust false setoverprint\n"
	.size	.L.str.123, 48

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"    } if\n"
	.size	.L.str.124, 10

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"  } if\n"
	.size	.L.str.125, 8

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"/EndEPSF {\n"
	.size	.L.str.126, 12

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"  count op_count sub { pop } repeat\n"
	.size	.L.str.127, 37

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"  countdictstack dict_count sub { end } repeat\n"
	.size	.L.str.128, 48

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"  LoutEPSFState restore\n"
	.size	.L.str.129, 25

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"} bind def\n"
	.size	.L.str.130, 12

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"%%EndResource\n\n"
	.size	.L.str.131, 16

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"cannot open %s file %s"
	.size	.L.str.132, 23

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"@PrependGraphic"
	.size	.L.str.133, 16

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"%s file %s is empty"
	.size	.L.str.134, 20

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"%%BeginResource:"
	.size	.L.str.135, 17

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"%s file %s lacks PostScript BeginResource comment"
	.size	.L.str.136, 50

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"%% %s file %s\n"
	.size	.L.str.137, 15

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"%%EndProlog\n\n"
	.size	.L.str.138, 14

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"%%BeginSetup\n"
	.size	.L.str.139, 14

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"/pdfmark where {pop} {userdict /pdfmark /cleartomark load put} ifelse\n"
	.size	.L.str.140, 71

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"%%EndSetup\n\n"
	.size	.L.str.141, 13

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"%%%%Page: "
	.size	.L.str.142, 11

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	" %d\n"
	.size	.L.str.143, 5

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"%%%%BeginPageSetup\n"
	.size	.L.str.144, 20

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"/pgsave save def\n"
	.size	.L.str.145, 18

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"%.4f dup scale %d setlinewidth\n"
	.size	.L.str.146, 32

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"%%%%EndPageSetup\n\n"
	.size	.L.str.147, 19

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"Letter"
	.size	.L.str.148, 7

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"Tabloid"
	.size	.L.str.149, 8

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"Ledger"
	.size	.L.str.150, 7

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"Legal"
	.size	.L.str.151, 6

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"Statement"
	.size	.L.str.152, 10

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"Executive"
	.size	.L.str.153, 10

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"A3"
	.size	.L.str.154, 3

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"A4"
	.size	.L.str.155, 3

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"A5"
	.size	.L.str.156, 3

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"B4"
	.size	.L.str.157, 3

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"B5"
	.size	.L.str.158, 3

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"Folio"
	.size	.L.str.159, 6

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"Quarto"
	.size	.L.str.160, 7

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"10x14"
	.size	.L.str.161, 6

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"Plain"
	.size	.L.str.162, 6

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"\npgsave restore\nshowpage\n"
	.size	.L.str.163, 26

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"truncating -EPS document at end of first page"
	.size	.L.str.164, 46

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"\n%%%%Page: "
	.size	.L.str.165, 12

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"%%%%EndPageSetup\n"
	.size	.L.str.166, 18

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"\n%%%%Trailer\n"
	.size	.L.str.167, 14

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"PrintAfterLast: needs!"
	.size	.L.str.168, 23

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"%s %s"
	.size	.L.str.169, 6

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"%%%%DocumentSuppliedResources: procset %s\n"
	.size	.L.str.170, 43

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"%%%%+ %s"
	.size	.L.str.171, 9

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"%%%%Pages: %d\n"
	.size	.L.str.172, 15

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"%%%%EOF\n"
	.size	.L.str.173, 9

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"%hd %s"
	.size	.L.str.174, 7

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"so"
	.size	.L.str.176, 3

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"s"
	.size	.L.str.177, 2

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"mo"
	.size	.L.str.178, 3

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"m"
	.size	.L.str.179, 2

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	")%s "
	.size	.L.str.180, 5

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"ro"
	.size	.L.str.181, 3

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"r"
	.size	.L.str.182, 2

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	")%s %d("
	.size	.L.str.183, 8

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"ko"
	.size	.L.str.184, 3

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"k"
	.size	.L.str.185, 2

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	")%s\n"
	.size	.L.str.186, 5

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"%d %d (%c)%s "
	.size	.L.str.187, 14

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"co"
	.size	.L.str.188, 3

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"c"
	.size	.L.str.189, 2

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"PS_PrintPlainGraphic: this routine should never be called!"
	.size	.L.str.190, 59

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"%d %d %d %d ul\n"
	.size	.L.str.191, 16

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"%.4f rotate\n"
	.size	.L.str.192, 13

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"\n[ /Rect [%d %d %d %d] /Subtype /Link /Dest /%s /ANN pdfmark\n"
	.size	.L.str.193, 62

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"\n[ /Dest /%s /DEST pdfmark\n"
	.size	.L.str.194, 28

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"IGNORED"
	.size	.L.str.195, 8

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"link destination %s ignored (there is already one at%s)"
	.size	.L.str.196, 56

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"link name %s used twice (first at%s)"
	.size	.L.str.197, 37

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	" PS_LinkCheck: !is_word(type(y))!"
	.size	.L.str.198, 34

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"link name %s has no destination point"
	.size	.L.str.199, 38

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym PS_RestoreGraphicState
	.addrsig_sym PS_PrintGraphicObject
	.addrsig_sym PS_DefineGraphicNames
	.addrsig_sym PS_SaveTranslateDefineSave
	.addrsig_sym PS_SaveGraphicState
	.addrsig_sym PS_CoordTranslate
	.addrsig_sym PS_PrintGraphicInclude
	.addrsig_sym PS_CoordScale
	.addrsig_sym PS_PrintInitialize
	.addrsig_sym PS_PrintLength
	.addrsig_sym PS_PrintPageSetupForFont
	.addrsig_sym PS_PrintPageResourceForFont
	.addrsig_sym PS_PrintMapping
	.addrsig_sym PS_PrintBeforeFirstPage
	.addrsig_sym PS_PrintBetweenPages
	.addrsig_sym PS_PrintAfterLastPage
	.addrsig_sym PS_PrintWord
	.addrsig_sym PS_PrintPlainGraphic
	.addrsig_sym PS_PrintUnderline
	.addrsig_sym PS_CoordRotate
	.addrsig_sym PS_LinkSource
	.addrsig_sym PS_LinkDest
	.addrsig_sym PS_LinkCheck
	.addrsig_sym ConvertToPDFName.buff
	.addrsig_sym ps_back
	.addrsig_sym link_dest_tab
