	.file	"z50.c"
	.text
	.globl	PDF_PrintAfterLastPage          # -- Begin function PDF_PrintAfterLastPage
	.p2align	5
	.type	PDF_PrintAfterLastPage,@function
PDF_PrintAfterLastPage:                 # @PDF_PrintAfterLastPage
# %bb.0:
	pcalau12i	$a0, %pc_hi20(prologue_done)
	ld.bu	$a0, $a0, %pc_lo12(prologue_done)
	beqz	$a0, .LBB0_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(out_fp)
	ld.d	$a0, $fp, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(PDFPage_Cleanup)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_fp)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PDFFile_Cleanup)
	jr	$t8
.LBB0_2:
	ret
.Lfunc_end0:
	.size	PDF_PrintAfterLastPage, .Lfunc_end0-PDF_PrintAfterLastPage
                                        # -- End function
	.globl	PDF_SaveGraphicState            # -- Begin function PDF_SaveGraphicState
	.p2align	5
	.type	PDF_SaveGraphicState,@function
PDF_SaveGraphicState:                   # @PDF_SaveGraphicState
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(out_fp)
	ld.d	$a1, $a1, %pc_lo12(out_fp)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(PDFPage_Push)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(gs_stack_top)
	ld.w	$a1, $s0, %pc_lo12(gs_stack_top)
	addi.w	$a0, $a1, 1
	ori	$a2, $zero, 49
	st.w	$a0, $s0, %pc_lo12(gs_stack_top)
	blt	$a1, $a2, .LBB1_2
# %bb.1:
	addi.d	$a4, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 50
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$a5, $zero, 50
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(gs_stack_top)
.LBB1_2:
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
.Lfunc_end1:
	.size	PDF_SaveGraphicState, .Lfunc_end1-PDF_SaveGraphicState
                                        # -- End function
	.globl	PDF_RestoreGraphicState         # -- Begin function PDF_RestoreGraphicState
	.p2align	5
	.type	PDF_RestoreGraphicState,@function
PDF_RestoreGraphicState:                # @PDF_RestoreGraphicState
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(out_fp)
	ld.d	$a0, $a0, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(PDFPage_Pop)
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
.Lfunc_end2:
	.size	PDF_RestoreGraphicState, .Lfunc_end2-PDF_RestoreGraphicState
                                        # -- End function
	.globl	PDF_PrintGraphicObject          # -- Begin function PDF_PrintGraphicObject
	.p2align	5
	.type	PDF_PrintGraphicObject,@function
PDF_PrintGraphicObject:                 # @PDF_PrintGraphicObject
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
	move	$s0, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a1, $a0, -11
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(out_fp)
	ld.d	$a0, $a0, %pc_lo12(out_fp)
	addi.d	$a1, $s0, 64
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
	pcaddu18i	$t8, %call36(PDFPage_WriteGraphic)
	jr	$t8
.LBB3_2:
	ori	$a1, $zero, 17
	addi.d	$fp, $s0, 32
	bne	$a0, $a1, .LBB3_17
# %bb.3:                                # %.preheader25
	ld.d	$s5, $s0, 8
	beq	$s5, $s0, .LBB3_18
# %bb.4:
	ori	$s6, $zero, 25
	ori	$s7, $zero, 20
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s1, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.LJTI3_0)
	addi.d	$s8, $a0, %pc_lo12(.LJTI3_0)
	pcalau12i	$s3, %pc_hi20(out_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_7 Depth=1
	pcaddu18i	$ra, %call36(PDF_PrintGraphicObject)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %.loopexit
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$s5, $s5, 8
	beq	$s5, $s0, .LBB3_18
.LBB3_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB3_8:                                #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB3_8
# %bb.9:                                #   in Loop: Header=BB3_7 Depth=1
	addi.d	$a2, $a1, -1
	bltu	$s6, $a2, .LBB3_13
# %bb.10:                               #   in Loop: Header=BB3_7 Depth=1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s8, $a2
	add.d	$a2, $s8, $a2
	jr	$a2
.LBB3_11:                               #   in Loop: Header=BB3_7 Depth=1
	ld.bu	$a1, $a0, 42
	beqz	$a1, .LBB3_15
# %bb.12:                               #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a0, $s3, %pc_lo12(out_fp)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	b	.LBB3_6
.LBB3_13:                               #   in Loop: Header=BB3_7 Depth=1
	addi.d	$a0, $a1, -119
	bltu	$a0, $s7, .LBB3_6
# %bb.14:                               #   in Loop: Header=BB3_7 Depth=1
	ori	$a0, $zero, 50
	ori	$a1, $zero, 2
	ori	$a3, $zero, 2
	move	$a2, $s1
	move	$a4, $fp
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB3_6
.LBB3_15:                               #   in Loop: Header=BB3_7 Depth=1
	ld.bu	$a0, $a0, 41
	beqz	$a0, .LBB3_6
# %bb.16:                               #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a0, $s3, %pc_lo12(out_fp)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	b	.LBB3_6
.LBB3_17:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 50
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	move	$a4, $fp
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
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.LBB3_18:                               # %.loopexit26
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
.Lfunc_end3:
	.size	PDF_PrintGraphicObject, .Lfunc_end3-PDF_PrintGraphicObject
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_11-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_6-.LJTI3_0
                                        # -- End function
	.text
	.globl	PDF_DefineGraphicNames          # -- Begin function PDF_DefineGraphicNames
	.p2align	5
	.type	PDF_DefineGraphicNames,@function
PDF_DefineGraphicNames:                 # @PDF_DefineGraphicNames
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 97
	beq	$a0, $a1, .LBB4_2
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
.LBB4_2:
	ld.wu	$a1, $fp, 76
	pcalau12i	$s2, %pc_hi20(currentfont)
	ld.w	$a2, $s2, %pc_lo12(currentfont)
	andi	$a0, $a1, 4095
	beq	$a0, $a2, .LBB4_5
# %bb.3:
	st.w	$a0, $s2, %pc_lo12(currentfont)
	beqz	$a0, .LBB4_5
# %bb.4:
	pcaddu18i	$ra, %call36(FontHalfXHeight)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(out_fp)
	ld.d	$s0, $a1, %pc_lo12(out_fp)
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
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(PDFFont_Set)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 76
.LBB4_5:
	pcalau12i	$a2, %pc_hi20(currentcolour)
	ld.w	$a3, $a2, %pc_lo12(currentcolour)
	bstrpick.d	$a0, $a1, 21, 12
	beq	$a0, $a3, .LBB4_8
# %bb.6:
	st.w	$a0, $a2, %pc_lo12(currentcolour)
	beqz	$a0, .LBB4_8
# %bb.7:
	pcaddu18i	$ra, %call36(ColourCommand)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(out_fp)
	ld.d	$a0, $a0, %pc_lo12(out_fp)
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
.LBB4_8:
	ld.w	$s0, $fp, 48
	ld.w	$s3, $fp, 56
	ld.w	$s4, $fp, 52
	ld.w	$a0, $s2, %pc_lo12(currentfont)
	ld.w	$s1, $fp, 60
	beqz	$a0, .LBB4_10
# %bb.9:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FontSize)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	b	.LBB4_11
.LBB4_10:
	ori	$a4, $zero, 240
.LBB4_11:
	ld.h	$a5, $fp, 66
	ld.h	$a6, $fp, 70
	add.w	$a1, $s1, $s4
	add.w	$a0, $s3, $s0
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(PDFPage_SetVars)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end4:
	.size	PDF_DefineGraphicNames, .Lfunc_end4-PDF_DefineGraphicNames
                                        # -- End function
	.globl	PDF_SaveTranslateDefineSave     # -- Begin function PDF_SaveTranslateDefineSave
	.p2align	5
	.type	PDF_SaveTranslateDefineSave,@function
PDF_SaveTranslateDefineSave:            # @PDF_SaveTranslateDefineSave
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
	pcalau12i	$s5, %pc_hi20(out_fp)
	ld.d	$a3, $s5, %pc_lo12(out_fp)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a1
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(PDFPage_Push)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(gs_stack_top)
	ld.w	$a1, $s3, %pc_lo12(gs_stack_top)
	addi.w	$a0, $a1, 1
	st.w	$a0, $s3, %pc_lo12(gs_stack_top)
	ori	$a2, $zero, 49
	addi.d	$a4, $s0, 32
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	blt	$a1, $a2, .LBB5_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 50
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$a5, $zero, 50
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(gs_stack_top)
.LBB5_2:                                # %PDF_SaveGraphicState.exit
	pcalau12i	$s6, %pc_hi20(currentfont)
	ld.w	$a1, $s6, %pc_lo12(currentfont)
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(gs_stack)
	addi.d	$s4, $a2, %pc_lo12(gs_stack)
	add.d	$a2, $s4, $a0
	pcalau12i	$s7, %pc_hi20(currentcolour)
	ld.w	$a3, $s7, %pc_lo12(currentcolour)
	pcalau12i	$s8, %pc_hi20(cpexists)
	ld.w	$a4, $s8, %pc_lo12(cpexists)
	pcalau12i	$fp, %pc_hi20(currenty)
	ld.w	$a5, $fp, %pc_lo12(currenty)
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a3, 1
	vinsgr2vr.w	$vr0, $a4, 2
	pcalau12i	$s1, %pc_hi20(currentxheight2)
	ld.h	$a1, $s1, %pc_lo12(currentxheight2)
	vinsgr2vr.w	$vr0, $a5, 3
	vstx	$vr0, $s4, $a0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	or	$a0, $a3, $s2
	st.h	$a1, $a2, 16
	beqz	$a0, .LBB5_4
# %bb.3:
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	movgr2fr.w	$fa0, $s2
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	pcaddu18i	$ra, %call36(PDFPage_Translate)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %PDF_CoordTranslate.exit
	st.w	$zero, $s8, %pc_lo12(cpexists)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(PDF_DefineGraphicNames)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(PDFPage_Push)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(gs_stack_top)
	addi.w	$a0, $a1, 1
	ori	$a2, $zero, 49
	st.w	$a0, $s3, %pc_lo12(gs_stack_top)
	blt	$a1, $a2, .LBB5_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 50
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$a5, $zero, 50
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(gs_stack_top)
.LBB5_6:                                # %PDF_SaveGraphicState.exit5
	ld.w	$a1, $s6, %pc_lo12(currentfont)
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 2
	add.d	$a2, $s4, $a0
	ld.w	$a3, $s7, %pc_lo12(currentcolour)
	ld.w	$a4, $s8, %pc_lo12(cpexists)
	ld.w	$a5, $fp, %pc_lo12(currenty)
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a3, 1
	ld.h	$a1, $s1, %pc_lo12(currentxheight2)
	vinsgr2vr.w	$vr0, $a4, 2
	vinsgr2vr.w	$vr0, $a5, 3
	vstx	$vr0, $s4, $a0
	st.h	$a1, $a2, 16
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
.Lfunc_end5:
	.size	PDF_SaveTranslateDefineSave, .Lfunc_end5-PDF_SaveTranslateDefineSave
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_CoordTranslate
	.type	PDF_CoordTranslate,@function
PDF_CoordTranslate:                     # @PDF_CoordTranslate
# %bb.0:
	or	$a2, $a1, $a0
	beqz	$a2, .LBB6_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(out_fp)
	ld.d	$a2, $a2, %pc_lo12(out_fp)
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(PDFPage_Translate)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB6_2:
	pcalau12i	$a0, %pc_hi20(cpexists)
	st.w	$zero, $a0, %pc_lo12(cpexists)
	ret
.Lfunc_end6:
	.size	PDF_CoordTranslate, .Lfunc_end6-PDF_CoordTranslate
                                        # -- End function
	.globl	PDF_PrintGraphicInclude         # -- Begin function PDF_PrintGraphicInclude
	.p2align	5
	.type	PDF_PrintGraphicInclude,@function
PDF_PrintGraphicInclude:                # @PDF_PrintGraphicInclude
# %bb.0:
	ld.d	$a1, $a0, 8
	.p2align	4, , 16
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB7_1
# %bb.2:
	addi.d	$a4, $a0, 32
	addi.d	$a5, $a1, 64
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 50
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.Lfunc_end7:
	.size	PDF_PrintGraphicInclude, .Lfunc_end7-PDF_PrintGraphicInclude
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintInitialize
	.type	PDF_PrintInitialize,@function
PDF_PrintInitialize:                    # @PDF_PrintInitialize
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
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
	beqz	$a0, .LBB8_2
# %bb.1:
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB8_3
.LBB8_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB8_3:
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $fp, $a1
	pcalau12i	$a3, %pc_hi20(needs)
	st.d	$a0, $a3, %pc_lo12(needs)
	st.w	$a2, $s0, 0
	beqz	$a1, .LBB8_5
# %bb.4:
	alsl.d	$a0, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	b	.LBB8_6
.LBB8_5:
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
.LBB8_6:
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a0, %pc_hi20(supplied)
	st.d	$a1, $a0, %pc_lo12(supplied)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	PDF_PrintInitialize, .Lfunc_end8-PDF_PrintInitialize
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintLength
	.type	PDF_PrintLength,@function
PDF_PrintLength:                        # @PDF_PrintLength
# %bb.0:
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	lu12i.w	$a1, 278748
	movgr2fr.w	$fa1, $a1
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcaddu18i	$t8, %call36(sprintf)
	jr	$t8
.Lfunc_end9:
	.size	PDF_PrintLength, .Lfunc_end9-PDF_PrintLength
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintPageSetupForFont
	.type	PDF_PrintPageSetupForFont,@function
PDF_PrintPageSetupForFont:              # @PDF_PrintPageSetupForFont
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(out_fp)
	ld.d	$a4, $s2, %pc_lo12(out_fp)
	move	$s0, $a3
	move	$fp, $a2
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s1, 60
	bltz	$a0, .LBB10_2
# %bb.1:
	move	$a3, $zero
	b	.LBB10_3
.LBB10_2:
	andi	$s1, $a0, 127
	ori	$a1, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MapEnsurePrinted)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MapEncodingName)
	jirl	$ra, $ra, 0
	move	$a3, $a0
.LBB10_3:
	ld.d	$a0, $s2, %pc_lo12(out_fp)
	move	$a1, $s0
	move	$a2, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PDFFont_AddFont)
	jr	$t8
.Lfunc_end10:
	.size	PDF_PrintPageSetupForFont, .Lfunc_end10-PDF_PrintPageSetupForFont
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintPageResourceForFont
	.type	PDF_PrintPageResourceForFont,@function
PDF_PrintPageResourceForFont:           # @PDF_PrintPageResourceForFont
# %bb.0:
	ret
.Lfunc_end11:
	.size	PDF_PrintPageResourceForFont, .Lfunc_end11-PDF_PrintPageResourceForFont
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintMapping
	.type	PDF_PrintMapping,@function
PDF_PrintMapping:                       # @PDF_PrintMapping
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
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(PDFFile_BeginFontEncoding)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 32
	ori	$s2, $zero, 1
	ori	$s3, $zero, 32
	ori	$s4, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$fp, $a0, %pc_lo12(.L.str.14)
	ori	$s5, $zero, 257
	.p2align	4, , 16
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
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
	bne	$s2, $s5, .LBB12_1
# %bb.2:
	ld.d	$a0, $s0, %pc_lo12(out_fp)
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(PDFFile_EndFontEncoding)
	jr	$t8
.Lfunc_end12:
	.size	PDF_PrintMapping, .Lfunc_end12-PDF_PrintMapping
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintBeforeFirstPage
	.type	PDF_PrintBeforeFirstPage,@function
PDF_PrintBeforeFirstPage:               # @PDF_PrintBeforeFirstPage
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(out_fp)
	ld.d	$t0, $fp, %pc_lo12(out_fp)
	lu12i.w	$a2, 419430
	ori	$a2, $a2, 1639
	mul.d	$a0, $a0, $a2
	srli.d	$a3, $a0, 63
	srai.d	$a0, $a0, 35
	add.d	$a7, $a0, $a3
	mul.d	$a0, $a1, $a2
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 35
	add.d	$a2, $a0, $a1
	ori	$a3, $zero, 1440
	ori	$a4, $zero, 567
	ori	$a5, $zero, 20
	ori	$a6, $zero, 120
	move	$a0, $t0
	move	$a1, $a7
	pcaddu18i	$ra, %call36(PDFFile_Init)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(FontPrintPageSetup)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_fp)
	lu12i.w	$a1, 251084
	ori	$a1, $a1, 3277
	movgr2fr.w	$fa0, $a1
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(PDFPage_Init)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(FontPrintPageResources)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FontAdvanceCurrentPage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(prologue_done)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(prologue_done)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	PDF_PrintBeforeFirstPage, .Lfunc_end13-PDF_PrintBeforeFirstPage
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintBetweenPages
	.type	PDF_PrintBetweenPages,@function
PDF_PrintBetweenPages:                  # @PDF_PrintBetweenPages
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(out_fp)
	ld.d	$a0, $fp, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(PDFPage_Cleanup)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_fp)
	lu12i.w	$a1, 251084
	ori	$a1, $a1, 3277
	movgr2fr.w	$fa0, $a1
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(PDFPage_Init)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(FontPrintPageResources)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(FontPrintPageSetup)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(FontAdvanceCurrentPage)
	jr	$t8
.Lfunc_end14:
	.size	PDF_PrintBetweenPages, .Lfunc_end14-PDF_PrintBetweenPages
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintWord
	.type	PDF_PrintWord,@function
PDF_PrintWord:                          # @PDF_PrintWord
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	move	$s1, $a2
	move	$s5, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(TotalWordCount)
	ld.d	$a0, $a0, %got_pc_lo12(TotalWordCount)
	ld.w	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	ld.wu	$a1, $fp, 40
	pcalau12i	$s3, %pc_hi20(currentfont)
	ld.w	$a3, $s3, %pc_lo12(currentfont)
	st.w	$a2, $a0, 0
	andi	$a0, $a1, 4095
	pcalau12i	$s0, %pc_hi20(currentxheight2)
	pcalau12i	$s4, %pc_hi20(out_fp)
	beq	$a0, $a3, .LBB15_2
# %bb.1:
	st.w	$a0, $s3, %pc_lo12(currentfont)
	pcaddu18i	$ra, %call36(FontHalfXHeight)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, %pc_lo12(out_fp)
	ld.w	$a1, $s3, %pc_lo12(currentfont)
	st.h	$a0, $s0, %pc_lo12(currentxheight2)
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FontSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(currentfont)
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(FontName)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(PDFFont_Set)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
.LBB15_2:
	pcalau12i	$a2, %pc_hi20(currentcolour)
	ld.w	$a3, $a2, %pc_lo12(currentcolour)
	bstrpick.d	$a0, $a1, 21, 12
	beq	$a0, $a3, .LBB15_5
# %bb.3:
	st.w	$a0, $a2, %pc_lo12(currentcolour)
	beqz	$a0, .LBB15_5
# %bb.4:
	pcaddu18i	$ra, %call36(ColourCommand)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(out_fp)
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
.LBB15_5:
	ld.h	$a0, $s0, %pc_lo12(currentxheight2)
	pcalau12i	$s0, %pc_hi20(cpexists)
	ld.w	$a1, $s0, %pc_lo12(cpexists)
	sub.w	$s2, $s1, $a0
	pcalau12i	$s1, %pc_hi20(currenty)
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	beqz	$a1, .LBB15_9
# %bb.6:
	ld.w	$a0, $s1, %pc_lo12(currenty)
	bne	$a0, $s2, .LBB15_9
# %bb.7:
	pcaddu18i	$ra, %call36(PDFHasValidTextMatrix)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	b	.LBB15_10
.LBB15_9:
	st.w	$s2, $s1, %pc_lo12(currenty)
	ori	$a0, $zero, 1
	st.w	$a0, $s0, %pc_lo12(cpexists)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
.LBB15_10:
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(finfo)
	ld.d	$s2, $a0, %got_pc_lo12(finfo)
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $s2, 0
	andi	$a0, $a0, 4095
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a1, $a0
	ld.d	$s6, $a0, 8
	ld.bu	$a1, $fp, 64
	addi.d	$s5, $fp, 64
	ori	$s7, $zero, 2
	move	$a0, $s5
	b	.LBB15_12
	.p2align	4, , 16
.LBB15_11:                              #   in Loop: Header=BB15_12 Depth=1
	move	$a0, $s8
	ld.bu	$a1, $a0, 0
	addi.d	$s5, $s5, 1
	beqz	$a1, .LBB15_25
.LBB15_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_15 Depth 2
                                        #       Child Loop BB15_17 Depth 3
	st.b	$a1, $s5, 0
	ldx.bu	$a1, $s6, $a1
	addi.d	$s8, $a0, 1
	bltu	$a1, $s7, .LBB15_11
# %bb.13:                               #   in Loop: Header=BB15_12 Depth=1
	ld.bu	$s0, $a0, 0
	ldx.bu	$a0, $s6, $s0
	add.d	$a0, $s6, $a0
	ld.bu	$a1, $a0, 256
	bne	$a1, $s0, .LBB15_11
# %bb.14:                               # %.lr.ph118
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.bu	$s3, $s8, 0
	addi.d	$a0, $a0, 256
	.p2align	4, , 16
.LBB15_15:                              #   Parent Loop BB15_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_17 Depth 3
	ld.bu	$a1, $a0, 1
	addi.d	$s1, $a0, 1
	bne	$a1, $s3, .LBB15_20
# %bb.16:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB15_15 Depth=2
	move	$a2, $s3
	move	$a3, $s8
	.p2align	4, , 16
.LBB15_17:                              # %.lr.ph
                                        #   Parent Loop BB15_12 Depth=1
                                        #     Parent Loop BB15_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a2, .LBB15_22
# %bb.18:                               # %.lr.ph
                                        #   in Loop: Header=BB15_17 Depth=3
	ld.bu	$a1, $s1, 1
	beqz	$a1, .LBB15_22
# %bb.19:                               #   in Loop: Header=BB15_17 Depth=3
	ld.bu	$a4, $a3, 1
	addi.d	$a0, $a3, 1
	addi.d	$s1, $s1, 1
	move	$a2, $a1
	move	$a3, $a0
	beq	$a1, $a4, .LBB15_17
	b	.LBB15_21
	.p2align	4, , 16
.LBB15_20:                              #   in Loop: Header=BB15_15 Depth=2
	move	$a0, $s8
.LBB15_21:                              # %.critedge
                                        #   in Loop: Header=BB15_15 Depth=2
	ld.bu	$a2, $s1, 1
	bnez	$a2, .LBB15_23
	b	.LBB15_24
	.p2align	4, , 16
.LBB15_22:                              #   in Loop: Header=BB15_15 Depth=2
	move	$a0, $a3
	move	$a1, $a2
	ld.bu	$a2, $s1, 1
	beqz	$a2, .LBB15_24
.LBB15_23:                              # %.preheader.preheader
                                        #   in Loop: Header=BB15_15 Depth=2
	addi.d	$a0, $s1, 1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	ld.bu	$a1, $a0, 2
	addi.d	$a0, $a0, 2
	beq	$a1, $s0, .LBB15_15
	b	.LBB15_11
.LBB15_24:                              #   in Loop: Header=BB15_12 Depth=1
	st.b	$a1, $s5, 0
	ld.bu	$a1, $a0, 0
	addi.d	$s5, $s5, 1
	bnez	$a1, .LBB15_12
.LBB15_25:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	st.b	$zero, $s5, 0
	ori	$a1, $zero, 115
	pcalau12i	$s0, %pc_hi20(PDF_PrintWord.last_hpos)
	beq	$a0, $a1, .LBB15_28
# %bb.26:
	ori	$a1, $zero, 109
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB15_30
# %bb.27:
	ld.d	$a0, $s4, %pc_lo12(out_fp)
	move	$a1, $s1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(PDFText_OpenXY)
	jirl	$ra, $ra, 0
	b	.LBB15_29
.LBB15_28:
	ld.w	$a1, $s0, %pc_lo12(PDF_PrintWord.last_hpos)
	ld.d	$a0, $s4, %pc_lo12(out_fp)
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a1, $s1, $a1
	pcaddu18i	$ra, %call36(PDFText_OpenX)
	jirl	$ra, $ra, 0
.LBB15_29:                              # %.sink.split
	st.w	$s1, $s0, %pc_lo12(PDF_PrintWord.last_hpos)
.LBB15_30:
	ld.bu	$a1, $fp, 64
	ld.d	$a0, $s4, %pc_lo12(out_fp)
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(EightBitToPrintForm)
	ld.d	$s0, $a2, %got_pc_lo12(EightBitToPrintForm)
	ldx.d	$a1, $s0, $a1
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 65
	beqz	$a1, .LBB15_39
# %bb.31:                               # %.lr.ph121.preheader
	ld.wu	$a0, $fp, 40
	ld.d	$a2, $s2, 0
	andi	$a0, $a0, 4095
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a2, $a0
	ld.d	$a0, $a0, 40
	ld.bu	$a0, $a0, 60
	andi	$a0, $a0, 127
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(MapTable)
	ld.d	$a2, $a2, %got_pc_lo12(MapTable)
	ldx.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 2047
	addi.d	$s1, $a0, 898
	addi.d	$s5, $fp, 65
	ori	$s3, $zero, 96
	b	.LBB15_33
	.p2align	4, , 16
.LBB15_32:                              # %.thread
                                        #   in Loop: Header=BB15_33 Depth=1
	ld.d	$a0, $s4, %pc_lo12(out_fp)
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s0, $a1
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s5, 1
	addi.d	$s5, $s5, 1
	beqz	$a1, .LBB15_39
.LBB15_33:                              # %.lr.ph121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_35 Depth 2
	ld.wu	$a0, $fp, 40
	ld.d	$a2, $s2, 0
	andi	$a0, $a0, 4095
	mul.d	$a0, $a0, $s3
	add.d	$a0, $a2, $a0
	ld.d	$a0, $a0, 48
	ld.bu	$a3, $s5, -1
	ld.hu	$a0, $a0, 40
	ldx.bu	$a3, $s1, $a3
	andi	$a0, $a0, 4095
	mul.d	$a0, $a0, $s3
	add.d	$a0, $a2, $a0
	ld.d	$a2, $a0, 64
	slli.d	$a3, $a3, 1
	ldx.hu	$a2, $a2, $a3
	beqz	$a2, .LBB15_32
# %bb.34:                               #   in Loop: Header=BB15_33 Depth=1
	ldx.bu	$a3, $s1, $a1
	ld.d	$a4, $a0, 72
	.p2align	4, , 16
.LBB15_35:                              #   Parent Loop BB15_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a5, $a4, $a2
	addi.d	$a2, $a2, 1
	bltu	$a3, $a5, .LBB15_35
# %bb.36:                               #   in Loop: Header=BB15_33 Depth=1
	bne	$a5, $a3, .LBB15_32
# %bb.37:                               #   in Loop: Header=BB15_33 Depth=1
	ld.d	$a3, $a0, 80
	add.d	$a2, $a3, $a2
	ld.bu	$a2, $a2, -1
	ld.d	$a0, $a0, 88
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	beqz	$a2, .LBB15_32
# %bb.38:                               #   in Loop: Header=BB15_33 Depth=1
	ld.d	$a0, $s4, %pc_lo12(out_fp)
	ext.w.h	$a1, $a2
	pcaddu18i	$ra, %call36(PDFText_Kern)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s5, 0
	b	.LBB15_32
.LBB15_39:                              # %._crit_edge
	ld.d	$a0, $s4, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(PDFText_Close)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end15:
	.size	PDF_PrintWord, .Lfunc_end15-PDF_PrintWord
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintPlainGraphic
	.type	PDF_PrintPlainGraphic,@function
PDF_PrintPlainGraphic:                  # @PDF_PrintPlainGraphic
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.Lfunc_end16:
	.size	PDF_PrintPlainGraphic, .Lfunc_end16-PDF_PrintPlainGraphic
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_PrintUnderline
	.type	PDF_PrintUnderline,@function
PDF_PrintUnderline:                     # @PDF_PrintUnderline
# %bb.0:
	pcalau12i	$a1, %pc_hi20(out_fp)
	ld.d	$a1, $a1, %pc_lo12(out_fp)
	move	$a6, $a3
	pcalau12i	$a3, %got_pc_hi20(finfo)
	ld.d	$a3, $a3, %got_pc_lo12(finfo)
	ld.d	$a3, $a3, 0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a3, $a0
	ld.h	$a3, $a0, 56
	ld.h	$a5, $a0, 58
	sub.w	$a3, $a4, $a3
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $a6
	move	$a4, $a5
	pcaddu18i	$t8, %call36(PDFPage_PrintUnderline)
	jr	$t8
.Lfunc_end17:
	.size	PDF_PrintUnderline, .Lfunc_end17-PDF_PrintUnderline
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_CoordRotate
	.type	PDF_CoordRotate,@function
PDF_CoordRotate:                        # @PDF_CoordRotate
# %bb.0:
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 7
	lu12i.w	$a1, -302922
	ori	$a1, $a1, 183
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a1, $a1, $a0
	bstrpick.d	$a2, $a1, 31, 31
	srli.d	$a1, $a1, 8
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 360
	mul.d	$a1, $a1, $a2
	sub.w	$a1, $a0, $a1
	beqz	$a1, .LBB18_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(out_fp)
	ld.d	$a0, $a0, %pc_lo12(out_fp)
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a1, 345154
	ori	$a1, $a1, 3352
	lu32i.d	$a1, -450053
	lu52i.d	$a1, $a1, 1024
	movgr2fr.d	$fa1, $a1
	fmul.d	$fa0, $fa0, $fa1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 425984
	lu52i.d	$a1, $a1, 1030
	movgr2fr.d	$fa1, $a1
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	pcaddu18i	$ra, %call36(PDFPage_Rotate)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB18_2:
	pcalau12i	$a0, %pc_hi20(cpexists)
	st.w	$zero, $a0, %pc_lo12(cpexists)
	ret
.Lfunc_end18:
	.size	PDF_CoordRotate, .Lfunc_end18-PDF_CoordRotate
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_CoordScale
	.type	PDF_CoordScale,@function
PDF_CoordScale:                         # @PDF_CoordScale
# %bb.0:
	fcvt.d.s	$fa2, $fa0
	vldi	$vr3, -784
	fadd.d	$fa2, $fa2, $fa3
	fabs.d	$fa3, $fa2
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB19_2
# %bb.1:
	fcvt.d.s	$fa3, $fa1
	vldi	$vr4, -784
	fadd.d	$fa3, $fa3, $fa4
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB19_3
.LBB19_2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(out_fp)
	ld.d	$a0, $a0, %pc_lo12(out_fp)
	pcaddu18i	$ra, %call36(PDFPage_Scale)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB19_3:
	pcalau12i	$a0, %pc_hi20(cpexists)
	st.w	$zero, $a0, %pc_lo12(cpexists)
	ret
.Lfunc_end19:
	.size	PDF_CoordScale, .Lfunc_end19-PDF_CoordScale
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_LinkSource
	.type	PDF_LinkSource,@function
PDF_LinkSource:                         # @PDF_LinkSource
# %bb.0:
	ret
.Lfunc_end20:
	.size	PDF_LinkSource, .Lfunc_end20-PDF_LinkSource
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_LinkDest
	.type	PDF_LinkDest,@function
PDF_LinkDest:                           # @PDF_LinkDest
# %bb.0:
	ret
.Lfunc_end21:
	.size	PDF_LinkDest, .Lfunc_end21-PDF_LinkDest
                                        # -- End function
	.p2align	5                               # -- Begin function PDF_LinkCheck
	.type	PDF_LinkCheck,@function
PDF_LinkCheck:                          # @PDF_LinkCheck
# %bb.0:
	ret
.Lfunc_end22:
	.size	PDF_LinkCheck, .Lfunc_end22-PDF_LinkCheck
                                        # -- End function
	.type	prologue_done,@object           # @prologue_done
	.local	prologue_done
	.comm	prologue_done,1,4
	.type	out_fp,@object                  # @out_fp
	.local	out_fp
	.comm	out_fp,8,8
	.type	gs_stack_top,@object            # @gs_stack_top
	.local	gs_stack_top
	.comm	gs_stack_top,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rotations, graphics etc. too deeply nested (max is %d)"
	.size	.L.str, 55

	.type	currentfont,@object             # @currentfont
	.local	currentfont
	.comm	currentfont,4,4
	.type	gs_stack,@object                # @gs_stack
	.local	gs_stack
	.comm	gs_stack,1000,4
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
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

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
	.asciz	"%s "
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"cannot include EPS file in PDF output; EPS file %s ignored"
	.size	.L.str.8, 59

	.type	PDF_BackEnd,@object             # @PDF_BackEnd
	.data
	.globl	PDF_BackEnd
	.p2align	3, 0x0
PDF_BackEnd:
	.dword	pdf_back
	.size	PDF_BackEnd, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"PDF"
	.size	.L.str.9, 4

	.type	pdf_back,@object                # @pdf_back
	.data
	.p2align	3, 0x0
pdf_back:
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.9
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	PDF_PrintInitialize
	.dword	PDF_PrintLength
	.dword	PDF_PrintPageSetupForFont
	.dword	PDF_PrintPageResourceForFont
	.dword	PDF_PrintMapping
	.dword	PDF_PrintBeforeFirstPage
	.dword	PDF_PrintBetweenPages
	.dword	PDF_PrintAfterLastPage
	.dword	PDF_PrintWord
	.dword	PDF_PrintPlainGraphic
	.dword	PDF_PrintUnderline
	.dword	PDF_CoordTranslate
	.dword	PDF_CoordRotate
	.dword	PDF_CoordScale
	.dword	PDF_SaveGraphicState
	.dword	PDF_RestoreGraphicState
	.dword	PDF_PrintGraphicObject
	.dword	PDF_DefineGraphicNames
	.dword	PDF_SaveTranslateDefineSave
	.dword	PDF_PrintGraphicInclude
	.dword	PDF_LinkSource
	.dword	PDF_LinkDest
	.dword	PDF_LinkCheck
	.size	pdf_back, 232

	.type	needs,@object                   # @needs
	.local	needs
	.comm	needs,8,8
	.type	supplied,@object                # @supplied
	.local	supplied
	.comm	supplied,8,8
	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"%.3fc"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%%%%IncludeResource: font %s\n"
	.size	.L.str.13, 30

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"/%s%c"
	.size	.L.str.14, 6

	.type	PDF_PrintWord.last_hpos,@object # @PDF_PrintWord.last_hpos
	.local	PDF_PrintWord.last_hpos
	.comm	PDF_PrintWord.last_hpos,4,4
	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"s"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"m"
	.size	.L.str.16, 2

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"PDF_PrintPlainGraphic: this routine should never be called!"
	.size	.L.str.17, 60

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym PDF_PrintAfterLastPage
	.addrsig_sym PDF_SaveGraphicState
	.addrsig_sym PDF_RestoreGraphicState
	.addrsig_sym PDF_PrintGraphicObject
	.addrsig_sym PDF_DefineGraphicNames
	.addrsig_sym PDF_SaveTranslateDefineSave
	.addrsig_sym PDF_CoordTranslate
	.addrsig_sym PDF_PrintGraphicInclude
	.addrsig_sym PDF_PrintInitialize
	.addrsig_sym PDF_PrintLength
	.addrsig_sym PDF_PrintPageSetupForFont
	.addrsig_sym PDF_PrintPageResourceForFont
	.addrsig_sym PDF_PrintMapping
	.addrsig_sym PDF_PrintBeforeFirstPage
	.addrsig_sym PDF_PrintBetweenPages
	.addrsig_sym PDF_PrintWord
	.addrsig_sym PDF_PrintPlainGraphic
	.addrsig_sym PDF_PrintUnderline
	.addrsig_sym PDF_CoordRotate
	.addrsig_sym PDF_CoordScale
	.addrsig_sym PDF_LinkSource
	.addrsig_sym PDF_LinkDest
	.addrsig_sym PDF_LinkCheck
	.addrsig_sym pdf_back
