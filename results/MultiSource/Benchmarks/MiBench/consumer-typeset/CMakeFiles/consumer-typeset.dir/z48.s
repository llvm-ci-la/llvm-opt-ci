	.file	"z48.c"
	.text
	.globl	PDFHasValidTextMatrix           # -- Begin function PDFHasValidTextMatrix
	.p2align	5
	.type	PDFHasValidTextMatrix,@function
PDFHasValidTextMatrix:                  # @PDFHasValidTextMatrix
# %bb.0:
	pcalau12i	$a0, %pc_hi20(g_valid_text_matrix)
	ld.bu	$a0, $a0, %pc_lo12(g_valid_text_matrix)
	ret
.Lfunc_end0:
	.size	PDFHasValidTextMatrix, .Lfunc_end0-PDFHasValidTextMatrix
                                        # -- End function
	.globl	PDFFile_BeginFontEncoding       # -- Begin function PDFFile_BeginFontEncoding
	.p2align	5
	.type	PDFFile_BeginFontEncoding,@function
PDFFile_BeginFontEncoding:              # @PDFFile_BeginFontEncoding
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	bnez	$a0, .LBB1_4
# %bb.3:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a2, $a1, %pc_lo12(.L.str.3)
	move	$s2, $a0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 3
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB1_4:
	pcalau12i	$s2, %pc_hi20(g_font_encoding_list)
	ld.d	$a1, $s2, %pc_lo12(g_font_encoding_list)
	st.d	$a1, $s1, 0
	st.w	$s0, $s1, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.d	$s1, $s2, %pc_lo12(g_font_encoding_list)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	PDFFile_BeginFontEncoding, .Lfunc_end1-PDFFile_BeginFontEncoding
                                        # -- End function
	.globl	PDFFile_EndFontEncoding         # -- Begin function PDFFile_EndFontEncoding
	.p2align	5
	.type	PDFFile_EndFontEncoding,@function
PDFFile_EndFontEncoding:                # @PDFFile_EndFontEncoding
# %bb.0:
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end2:
	.size	PDFFile_EndFontEncoding, .Lfunc_end2-PDFFile_EndFontEncoding
                                        # -- End function
	.globl	PDFFont_AddFont                 # -- Begin function PDFFont_AddFont
	.p2align	5
	.type	PDFFont_AddFont,@function
PDFFont_AddFont:                        # @PDFFont_AddFont
# %bb.0:                                # %PDFFont_FindListEntry.exit
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	beqz	$a3, .LBB3_5
# %bb.1:                                # %.preheader.i.preheader
	move	$s1, $a3
	pcalau12i	$a0, %pc_hi20(g_font_encoding_list)
	addi.d	$s2, $a0, %pc_lo12(g_font_encoding_list)
	.p2align	4, , 16
.LBB3_2:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a1, $s2, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_2
# %bb.4:
	ld.w	$s3, $s2, 8
	b	.LBB3_6
.LBB3_5:
	move	$s3, $zero
.LBB3_6:                                # %PDFFont_FindFontEncoding.exit
	pcalau12i	$a0, %pc_hi20(g_font_list)
	addi.d	$a0, $a0, %pc_lo12(g_font_list)
	addi.d	$s2, $zero, -1
	.p2align	4, , 16
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	addi.w	$s2, $s2, 1
	bnez	$a0, .LBB3_7
# %bb.8:
	st.d	$zero, $sp, 104
	st.d	$zero, $sp, 98
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 82
	vst	$vr0, $sp, 66
	vst	$vr0, $sp, 50
	lu12i.w	$a0, 4
	ori	$a0, $a0, 1583
	st.h	$a0, $sp, 48
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB3_10
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a2, $a0, %pc_lo12(.L.str.69)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 4
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_10:
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	addi.d	$a0, $sp, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	bnez	$a0, .LBB3_12
# %bb.11:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a2, $a1, %pc_lo12(.L.str.69)
	move	$s2, $a0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 5
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB3_12:
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	bnez	$a0, .LBB3_14
# %bb.13:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a2, $a1, %pc_lo12(.L.str.69)
	move	$s2, $a0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 6
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB3_14:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 24
	bnez	$a0, .LBB3_16
# %bb.15:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a2, $a1, %pc_lo12(.L.str.69)
	move	$s0, $a0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 7
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB3_16:                               # %PDFFont_NewListEntry.exit
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_font_list)
	ld.d	$a1, $a0, %pc_lo12(g_font_list)
	st.w	$s3, $s1, 32
	st.d	$zero, $s1, 36
	st.d	$a1, $s1, 0
	st.d	$s1, $a0, %pc_lo12(g_font_list)
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end3:
	.size	PDFFont_AddFont, .Lfunc_end3-PDFFont_AddFont
                                        # -- End function
	.globl	PDFPage_SetVars                 # -- Begin function PDFPage_SetVars
	.p2align	5
	.type	PDFPage_SetVars,@function
PDFPage_SetVars:                        # @PDFPage_SetVars
# %bb.0:
	pcalau12i	$a7, %pc_hi20(g_graphics_vars)
	addi.d	$a7, $a7, %pc_lo12(g_graphics_vars)
	st.w	$a0, $a7, 0
	st.w	$a1, $a7, 4
	st.w	$a2, $a7, 8
	st.w	$a3, $a7, 12
	pcalau12i	$a0, %pc_hi20(g_units)
	addi.d	$a0, $a0, %pc_lo12(g_units)
	st.w	$a4, $a0, 16
	st.w	$a5, $a0, 20
	st.w	$a6, $a0, 24
	ret
.Lfunc_end4:
	.size	PDFPage_SetVars, .Lfunc_end4-PDFPage_SetVars
                                        # -- End function
	.globl	PDFPage_Write                   # -- Begin function PDFPage_Write
	.p2align	5
	.type	PDFPage_Write,@function
PDFPage_Write:                          # @PDFPage_Write
# %bb.0:
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	move	$fp, $a1
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_19
# %bb.1:
	move	$s0, $a0
	pcalau12i	$s2, %pc_hi20(g_page_contents_obj_num)
	ld.w	$a0, $s2, %pc_lo12(g_page_contents_obj_num)
	bnez	$a0, .LBB5_6
# %bb.2:
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	st.w	$s1, $s2, %pc_lo12(g_page_contents_obj_num)
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(g_page_length_obj_num)
	st.w	$a0, $s1, %pc_lo12(g_page_length_obj_num)
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, %pc_lo12(g_page_length_obj_num)
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a1, $a0, %pc_lo12(.L.str.169)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(g_page_h_scale_factor)
	fld.s	$fa0, $a1, %pc_lo12(g_page_h_scale_factor)
	pcalau12i	$a1, %pc_hi20(g_page_v_scale_factor)
	fld.s	$fa1, $a1, %pc_lo12(g_page_v_scale_factor)
	pcalau12i	$a1, %pc_hi20(g_page_start_offset)
	st.w	$a0, $a1, %pc_lo12(g_page_start_offset)
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 16
	beqz	$a0, .LBB5_4
# %bb.3:
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %PDFPage_WriteStream.exit.i
	pcalau12i	$a0, %pc_hi20(g_page_line_width)
	ld.w	$a2, $a0, %pc_lo12(g_page_line_width)
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 16
	beqz	$a0, .LBB5_6
# %bb.5:
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %PDFPage_Begin.exit
	pcalau12i	$s1, %pc_hi20(g_in_buffering_mode)
	ld.bu	$a0, $s1, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB5_12
# %bb.7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(g_buffer_pos)
	ld.wu	$a1, $s2, %pc_lo12(g_buffer_pos)
	add.w	$s3, $a1, $a0
	ori	$a0, $zero, 1024
	bltu	$s3, $a0, .LBB5_18
# %bb.8:
	pcalau12i	$s2, %pc_hi20(g_qsave_marking_stack)
	ld.d	$a0, $s2, %pc_lo12(g_qsave_marking_stack)
	st.b	$zero, $s1, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB5_10
	.p2align	4, , 16
.LBB5_9:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	st.d	$s1, $s2, %pc_lo12(g_qsave_marking_stack)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s1, .LBB5_9
.LBB5_10:                               # %._crit_edge.i
	pcalau12i	$a0, %pc_hi20(g_buffer)
	ld.bu	$a0, $a0, %pc_lo12(g_buffer)
	beqz	$a0, .LBB5_16
# %bb.11:
	pcalau12i	$a0, %pc_hi20(g_buffer)
	addi.d	$a0, $a0, %pc_lo12(g_buffer)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	b	.LBB5_16
.LBB5_12:
	pcalau12i	$a0, %pc_hi20(g_TJ_pending)
	ld.bu	$a1, $a0, %pc_lo12(g_TJ_pending)
	beqz	$a1, .LBB5_14
# %bb.13:
	st.b	$zero, $a0, %pc_lo12(g_TJ_pending)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB5_14:
	pcalau12i	$a0, %pc_hi20(g_ET_pending)
	ld.bu	$a1, $a0, %pc_lo12(g_ET_pending)
	beqz	$a1, .LBB5_16
# %bb.15:
	st.b	$zero, $a0, %pc_lo12(g_ET_pending)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_valid_text_matrix)
	st.b	$zero, $a0, %pc_lo12(g_valid_text_matrix)
.LBB5_16:                               # %PDFPage_FlushBuffer.exit
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB5_19
# %bb.17:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	pcaddu18i	$t8, %call36(fputs)
	jr	$t8
.LBB5_18:
	pcalau12i	$a0, %pc_hi20(g_buffer)
	addi.d	$a0, $a0, %pc_lo12(g_buffer)
	add.d	$a0, $a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.w	$s3, $s2, %pc_lo12(g_buffer_pos)
.LBB5_19:                               # %PDFPage_WriteStream.exit
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.Lfunc_end5:
	.size	PDFPage_Write, .Lfunc_end5-PDFPage_Write
                                        # -- End function
	.globl	PDFPage_Push                    # -- Begin function PDFPage_Push
	.p2align	5
	.type	PDFPage_Push,@function
PDFPage_Push:                           # @PDFPage_Push
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 14
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_2:
	pcalau12i	$a0, %pc_hi20(g_page_h_origin)
	ld.w	$a0, $a0, %pc_lo12(g_page_h_origin)
	pcalau12i	$a1, %pc_hi20(g_page_v_origin)
	ld.w	$a1, $a1, %pc_lo12(g_page_v_origin)
	pcalau12i	$a2, %pc_hi20(g_qsave_stack)
	ld.d	$a3, $a2, %pc_lo12(g_qsave_stack)
	pcalau12i	$a4, %pc_hi20(g_in_buffering_mode)
	ld.bu	$a4, $a4, %pc_lo12(g_in_buffering_mode)
	st.w	$a0, $s0, 8
	st.w	$a1, $s0, 12
	st.d	$a3, $s0, 0
	st.d	$s0, $a2, %pc_lo12(g_qsave_stack)
	beqz	$a4, .LBB6_6
# %bb.3:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB6_5
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 15
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_5:
	pcalau12i	$a0, %pc_hi20(g_qsave_marking_stack)
	ld.d	$a1, $a0, %pc_lo12(g_qsave_marking_stack)
	pcalau12i	$a2, %pc_hi20(g_buffer_pos)
	ld.w	$a2, $a2, %pc_lo12(g_buffer_pos)
	st.d	$a1, $s0, 0
	st.w	$a2, $s0, 8
	st.d	$s0, $a0, %pc_lo12(g_qsave_marking_stack)
.LBB6_6:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PDFPage_Write)
	jr	$t8
.Lfunc_end6:
	.size	PDFPage_Push, .Lfunc_end6-PDFPage_Push
                                        # -- End function
	.globl	PDFPage_Pop                     # -- Begin function PDFPage_Pop
	.p2align	5
	.type	PDFPage_Pop,@function
PDFPage_Pop:                            # @PDFPage_Pop
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(g_qsave_stack)
	ld.d	$a1, $a2, %pc_lo12(g_qsave_stack)
	move	$fp, $a0
	ld.w	$a0, $a1, 8
	pcalau12i	$a3, %pc_hi20(g_page_h_origin)
	ld.w	$a4, $a1, 12
	ld.d	$a5, $a1, 0
	st.w	$a0, $a3, %pc_lo12(g_page_h_origin)
	pcalau12i	$a0, %pc_hi20(g_page_v_origin)
	st.w	$a4, $a0, %pc_lo12(g_page_v_origin)
	st.d	$a5, $a2, %pc_lo12(g_qsave_stack)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_in_buffering_mode)
	ld.bu	$a0, $a0, %pc_lo12(g_in_buffering_mode)
	pcalau12i	$s1, %pc_hi20(g_qsave_marking_stack)
	ld.d	$s0, $s1, %pc_lo12(g_qsave_marking_stack)
	beqz	$a0, .LBB7_4
# %bb.1:
	bnez	$s0, .LBB7_3
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_3:                                # %Assert.exit
	ld.d	$a0, $s0, 0
	ld.wu	$a1, $s0, 8
	st.d	$a0, $s1, %pc_lo12(g_qsave_marking_stack)
	pcalau12i	$a0, %pc_hi20(g_buffer_pos)
	st.w	$a1, $a0, %pc_lo12(g_buffer_pos)
	pcalau12i	$a0, %pc_hi20(g_buffer)
	addi.d	$a0, $a0, %pc_lo12(g_buffer)
	stx.b	$zero, $a0, $a1
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB7_4:
	beqz	$s0, .LBB7_6
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_6:                                # %Assert.exit10
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PDFPage_Write)
	jr	$t8
.Lfunc_end7:
	.size	PDFPage_Pop, .Lfunc_end7-PDFPage_Pop
                                        # -- End function
	.globl	PDFFont_Set                     # -- Begin function PDFFont_Set
	.p2align	5
	.type	PDFFont_Set,@function
PDFFont_Set:                            # @PDFFont_Set
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(g_font_list)
	addi.d	$s2, $a0, %pc_lo12(g_font_list)
	.p2align	4, , 16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB8_3
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	ld.d	$a1, $s2, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_1
	b	.LBB8_4
.LBB8_3:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 42
	ori	$a3, $zero, 1
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB8_4:                                # %PDFFont_FindListEntry_Short.exit
	ld.d	$a2, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 8
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_TJ_pending)
	ld.bu	$a1, $a0, %pc_lo12(g_TJ_pending)
	beqz	$a1, .LBB8_6
# %bb.5:
	st.b	$zero, $a0, %pc_lo12(g_TJ_pending)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB8_6:
	pcalau12i	$s0, %pc_hi20(g_ET_pending)
	ld.bu	$s1, $s0, %pc_lo12(g_ET_pending)
	st.b	$zero, $s0, %pc_lo12(g_ET_pending)
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	andi	$a0, $s1, 1
	st.b	$a0, $s0, %pc_lo12(g_ET_pending)
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 44
	pcalau12i	$a1, %pc_hi20(g_page_uses_fonts)
	st.b	$a0, $a1, %pc_lo12(g_page_uses_fonts)
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.Lfunc_end8:
	.size	PDFFont_Set, .Lfunc_end8-PDFFont_Set
                                        # -- End function
	.globl	PDFText_OpenXY                  # -- Begin function PDFText_OpenXY
	.p2align	5
	.type	PDFText_OpenXY,@function
PDFText_OpenXY:                         # @PDFText_OpenXY
# %bb.0:
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(g_in_buffering_mode)
	ld.bu	$a4, $a3, %pc_lo12(g_in_buffering_mode)
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	beqz	$a4, .LBB9_5
# %bb.1:
	pcalau12i	$s2, %pc_hi20(g_qsave_marking_stack)
	ld.d	$a0, $s2, %pc_lo12(g_qsave_marking_stack)
	st.b	$zero, $a3, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $a0, 0
	st.d	$s3, $s2, %pc_lo12(g_qsave_marking_stack)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	bnez	$s3, .LBB9_2
.LBB9_3:                                # %._crit_edge.i.i
	pcalau12i	$a0, %pc_hi20(g_buffer)
	ld.bu	$a0, $a0, %pc_lo12(g_buffer)
	beqz	$a0, .LBB9_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(g_buffer)
	addi.d	$a0, $a0, %pc_lo12(g_buffer)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB9_5:                                # %PDFPage_FlushBuffer.exit.i
	pcalau12i	$s2, %pc_hi20(g_TJ_pending)
	ld.bu	$a0, $s2, %pc_lo12(g_TJ_pending)
	pcalau12i	$a1, %pc_hi20(g_page_has_text)
	ori	$a2, $zero, 1
	st.b	$a2, $a1, %pc_lo12(g_page_has_text)
	beqz	$a0, .LBB9_7
# %bb.6:
	st.b	$zero, $s2, %pc_lo12(g_TJ_pending)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB9_7:
	pcalau12i	$a0, %pc_hi20(g_ET_pending)
	ld.bu	$a1, $a0, %pc_lo12(g_ET_pending)
	beqz	$a1, .LBB9_9
# %bb.8:
	st.b	$zero, $a0, %pc_lo12(g_ET_pending)
	b	.LBB9_10
.LBB9_9:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_valid_text_matrix)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(g_valid_text_matrix)
.LBB9_10:                               # %PDFText_OpenBT.exit
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, %pc_lo12(g_TJ_pending)
	beqz	$a0, .LBB9_12
# %bb.11:                               # %PDFText_MoveToXYAndOpen.exit
	st.b	$zero, $s2, %pc_lo12(g_TJ_pending)
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.LBB9_12:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	move	$a0, $fp
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	pcaddu18i	$t8, %call36(PDFPage_Write)
	jr	$t8
.Lfunc_end9:
	.size	PDFText_OpenXY, .Lfunc_end9-PDFText_OpenXY
                                        # -- End function
	.globl	PDFText_OpenX                   # -- Begin function PDFText_OpenX
	.p2align	5
	.type	PDFText_OpenX,@function
PDFText_OpenX:                          # @PDFText_OpenX
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(g_in_buffering_mode)
	ld.bu	$a3, $a2, %pc_lo12(g_in_buffering_mode)
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a3, .LBB10_5
# %bb.1:
	pcalau12i	$s1, %pc_hi20(g_qsave_marking_stack)
	ld.d	$a0, $s1, %pc_lo12(g_qsave_marking_stack)
	st.b	$zero, $a2, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $a0, 0
	st.d	$s2, $s1, %pc_lo12(g_qsave_marking_stack)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bnez	$s2, .LBB10_2
.LBB10_3:                               # %._crit_edge.i.i
	pcalau12i	$a0, %pc_hi20(g_buffer)
	ld.bu	$a0, $a0, %pc_lo12(g_buffer)
	beqz	$a0, .LBB10_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(g_buffer)
	addi.d	$a0, $a0, %pc_lo12(g_buffer)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB10_5:                               # %PDFPage_FlushBuffer.exit.i
	pcalau12i	$s1, %pc_hi20(g_TJ_pending)
	ld.bu	$a0, $s1, %pc_lo12(g_TJ_pending)
	pcalau12i	$a1, %pc_hi20(g_page_has_text)
	ori	$a2, $zero, 1
	st.b	$a2, $a1, %pc_lo12(g_page_has_text)
	beqz	$a0, .LBB10_7
# %bb.6:
	st.b	$zero, $s1, %pc_lo12(g_TJ_pending)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB10_7:
	pcalau12i	$a0, %pc_hi20(g_ET_pending)
	ld.bu	$a1, $a0, %pc_lo12(g_ET_pending)
	beqz	$a1, .LBB10_9
# %bb.8:
	st.b	$zero, $a0, %pc_lo12(g_ET_pending)
	b	.LBB10_10
.LBB10_9:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_valid_text_matrix)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(g_valid_text_matrix)
.LBB10_10:                              # %PDFText_OpenBT.exit
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	addi.d	$a0, $sp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, %pc_lo12(g_TJ_pending)
	beqz	$a0, .LBB10_12
# %bb.11:                               # %PDFText_MoveToXAndOpen.exit
	st.b	$zero, $s1, %pc_lo12(g_TJ_pending)
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB10_12:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	move	$a0, $fp
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	pcaddu18i	$t8, %call36(PDFPage_Write)
	jr	$t8
.Lfunc_end10:
	.size	PDFText_OpenX, .Lfunc_end10-PDFText_OpenX
                                        # -- End function
	.globl	PDFText_Open                    # -- Begin function PDFText_Open
	.p2align	5
	.type	PDFText_Open,@function
PDFText_Open:                           # @PDFText_Open
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(g_TJ_pending)
	ld.bu	$a1, $s0, %pc_lo12(g_TJ_pending)
	beqz	$a1, .LBB11_4
# %bb.1:
	pcalau12i	$fp, %pc_hi20(g_ET_pending)
	ld.bu	$a0, $fp, %pc_lo12(g_ET_pending)
	st.b	$zero, $s0, %pc_lo12(g_TJ_pending)
	bnez	$a0, .LBB11_3
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB11_3:                               # %Assert.exit
	st.b	$zero, $fp, %pc_lo12(g_ET_pending)
	b	.LBB11_17
.LBB11_4:
	move	$fp, $a0
	pcalau12i	$a1, %pc_hi20(g_in_buffering_mode)
	ld.bu	$a0, $a1, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB11_14
# %bb.5:
	pcalau12i	$s1, %pc_hi20(g_qsave_marking_stack)
	ld.d	$a0, $s1, %pc_lo12(g_qsave_marking_stack)
	st.b	$zero, $a1, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB11_7
	.p2align	4, , 16
.LBB11_6:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $a0, 0
	st.d	$s2, $s1, %pc_lo12(g_qsave_marking_stack)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bnez	$s2, .LBB11_6
.LBB11_7:                               # %._crit_edge.i.i
	pcalau12i	$a0, %pc_hi20(g_buffer)
	ld.bu	$a0, $a0, %pc_lo12(g_buffer)
	beqz	$a0, .LBB11_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(g_buffer)
	addi.d	$a0, $a0, %pc_lo12(g_buffer)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB11_9:                               # %PDFPage_FlushBuffer.exit.i
	ld.bu	$a0, $s0, %pc_lo12(g_TJ_pending)
	pcalau12i	$a1, %pc_hi20(g_page_has_text)
	ori	$a2, $zero, 1
	st.b	$a2, $a1, %pc_lo12(g_page_has_text)
	beqz	$a0, .LBB11_11
# %bb.10:
	st.b	$zero, $s0, %pc_lo12(g_TJ_pending)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB11_11:
	pcalau12i	$a0, %pc_hi20(g_ET_pending)
	ld.bu	$a1, $a0, %pc_lo12(g_ET_pending)
	beqz	$a1, .LBB11_15
.LBB11_12:
	st.b	$zero, $a0, %pc_lo12(g_ET_pending)
	ld.bu	$a0, $s0, %pc_lo12(g_TJ_pending)
	bnez	$a0, .LBB11_16
.LBB11_13:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PDFPage_Write)
	jr	$t8
.LBB11_14:                              # %PDFPage_FlushBuffer.exit.i.thread
	pcalau12i	$a0, %pc_hi20(g_page_has_text)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(g_page_has_text)
	pcalau12i	$a0, %pc_hi20(g_ET_pending)
	ld.bu	$a1, $a0, %pc_lo12(g_ET_pending)
	bnez	$a1, .LBB11_12
.LBB11_15:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_valid_text_matrix)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(g_valid_text_matrix)
	ld.bu	$a0, $s0, %pc_lo12(g_TJ_pending)
	beqz	$a0, .LBB11_13
.LBB11_16:
	st.b	$zero, $s0, %pc_lo12(g_TJ_pending)
.LBB11_17:                              # %PDFText_OpenString.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	PDFText_Open, .Lfunc_end11-PDFText_Open
                                        # -- End function
	.globl	PDFText_Kern                    # -- Begin function PDFText_Kern
	.p2align	5
	.type	PDFText_Kern,@function
PDFText_Kern:                           # @PDFText_Kern
# %bb.0:
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	move	$fp, $a0
	sub.w	$a2, $zero, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.Lfunc_end12:
	.size	PDFText_Kern, .Lfunc_end12-PDFText_Kern
                                        # -- End function
	.globl	PDFText_Close                   # -- Begin function PDFText_Close
	.p2align	5
	.type	PDFText_Close,@function
PDFText_Close:                          # @PDFText_Close
# %bb.0:
	pcalau12i	$a0, %pc_hi20(g_page_contents_obj_num)
	ld.w	$a0, $a0, %pc_lo12(g_page_contents_obj_num)
	bnez	$a0, .LBB13_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB13_2:                               # %Assert.exit
	pcalau12i	$a0, %pc_hi20(g_TJ_pending)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(g_TJ_pending)
	pcalau12i	$a0, %pc_hi20(g_ET_pending)
	st.b	$a1, $a0, %pc_lo12(g_ET_pending)
	ret
.Lfunc_end13:
	.size	PDFText_Close, .Lfunc_end13-PDFText_Close
                                        # -- End function
	.globl	PDFPage_Scale                   # -- Begin function PDFPage_Scale
	.p2align	5
	.type	PDFPage_Scale,@function
PDFPage_Scale:                          # @PDFPage_Scale
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 528                  # 8-byte Folded Spill
	fmov.s	$fs0, $fa1
	fmov.s	$fs1, $fa0
	move	$fp, $a0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_page_h_scale_factor)
	fld.s	$fa0, $a0, %pc_lo12(g_page_h_scale_factor)
	pcalau12i	$a1, %pc_hi20(g_page_v_scale_factor)
	fld.s	$fa1, $a1, %pc_lo12(g_page_v_scale_factor)
	fmul.s	$fa0, $fs1, $fa0
	fst.s	$fa0, $a0, %pc_lo12(g_page_h_scale_factor)
	fmul.s	$fa0, $fs0, $fa1
	fst.s	$fa0, $a1, %pc_lo12(g_page_v_scale_factor)
	fld.d	$fs1, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 536                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.Lfunc_end14:
	.size	PDFPage_Scale, .Lfunc_end14-PDFPage_Scale
                                        # -- End function
	.globl	PDFPage_Rotate                  # -- Begin function PDFPage_Rotate
	.p2align	5
	.type	PDFPage_Rotate,@function
PDFPage_Rotate:                         # @PDFPage_Rotate
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 528                  # 8-byte Folded Spill
	move	$fp, $a0
	fcvt.d.s	$fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa1, $fs1
	fcvt.d.s	$fa2, $fa0
	fneg.s	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a4, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 16
	move	$a5, $a2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 536                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.Lfunc_end15:
	.size	PDFPage_Rotate, .Lfunc_end15-PDFPage_Rotate
                                        # -- End function
	.globl	PDFPage_Translate               # -- Begin function PDFPage_Translate
	.p2align	5
	.type	PDFPage_Translate,@function
PDFPage_Translate:                      # @PDFPage_Translate
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 528                  # 8-byte Folded Spill
	fmov.s	$fs0, $fa1
	fmov.s	$fs1, $fa0
	move	$fp, $a0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_page_h_origin)
	ld.w	$a1, $a0, %pc_lo12(g_page_h_origin)
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fadd.s	$fa0, $fs1, $fa0
	pcalau12i	$a1, %pc_hi20(g_page_v_origin)
	ld.w	$a2, $a1, %pc_lo12(g_page_v_origin)
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	st.w	$a3, $a0, %pc_lo12(g_page_h_origin)
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fadd.s	$fa0, $fs0, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $a1, %pc_lo12(g_page_v_origin)
	fld.d	$fs1, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 536                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.Lfunc_end16:
	.size	PDFPage_Translate, .Lfunc_end16-PDFPage_Translate
                                        # -- End function
	.globl	PDFPage_WriteGraphic            # -- Begin function PDFPage_WriteGraphic
	.p2align	5
	.type	PDFPage_WriteGraphic,@function
PDFPage_WriteGraphic:                   # @PDFPage_WriteGraphic
# %bb.0:
	addi.d	$sp, $sp, -784
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	st.d	$fp, $sp, 768                   # 8-byte Folded Spill
	st.d	$s0, $sp, 760                   # 8-byte Folded Spill
	st.d	$s1, $sp, 752                   # 8-byte Folded Spill
	st.d	$s2, $sp, 744                   # 8-byte Folded Spill
	st.d	$s3, $sp, 736                   # 8-byte Folded Spill
	st.d	$s4, $sp, 728                   # 8-byte Folded Spill
	st.d	$s5, $sp, 720                   # 8-byte Folded Spill
	st.d	$s6, $sp, 712                   # 8-byte Folded Spill
	st.d	$s7, $sp, 704                   # 8-byte Folded Spill
	st.d	$s8, $sp, 696                   # 8-byte Folded Spill
	move	$s7, $a1
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB17_86
# %bb.1:
	move	$fp, $a0
	pcalau12i	$s1, %pc_hi20(g_expr_depth)
	ld.w	$a0, $s1, %pc_lo12(g_expr_depth)
	beqz	$a0, .LBB17_4
# %bb.2:
	addi.d	$a1, $sp, 180
	addi.d	$a2, $sp, 176
	move	$a0, $s7
	pcaddu18i	$ra, %call36(PDFPage_CollectExpr)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 180
	move	$s7, $a0
	beqz	$a1, .LBB17_4
# %bb.3:
	fld.s	$fa0, $sp, 176
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(g_link_depth)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(g_link_depth)
	bnez	$a0, .LBB17_5
	b	.LBB17_6
.LBB17_4:
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(g_link_depth)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(g_link_depth)
	beqz	$a0, .LBB17_6
.LBB17_5:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(PDFPage_CollectLink)
	jirl	$ra, $ra, 0
	move	$s7, $a0
.LBB17_6:
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	ld.bu	$a0, $s7, 0
	addi.d	$s5, $sp, 184
	add.d	$s8, $s5, $s0
	beqz	$a0, .LBB17_80
# %bb.7:                                # %.lr.ph.preheader
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	ori	$fp, $zero, 512
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$s4, $a1, %got_pc_lo12(no_fpos)
	pcalau12i	$a1, %pc_hi20(.L.str.75)
	addi.d	$s1, $a1, %pc_lo12(.L.str.75)
	ori	$s3, $zero, 95
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$s2, $a1, %pc_lo12(.L.str.109)
	pcalau12i	$a1, %pc_hi20(g_graphic_keywords)
	addi.d	$a1, $a1, %pc_lo12(g_graphic_keywords)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(g_graphics_vars)
	addi.d	$a1, $a1, %pc_lo12(g_graphics_vars)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a1, $a1, %pc_lo12(.L.str.110)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a1, $a1, %pc_lo12(.L.str.111)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a1, $a1, %pc_lo12(.L.str.112)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.113)
	addi.d	$a1, $a1, %pc_lo12(.L.str.113)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(g_link_keywords)
	addi.d	$a1, $a1, %pc_lo12(g_link_keywords)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(g_link_index)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(g_link_keyword)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.114)
	addi.d	$a1, $a1, %pc_lo12(.L.str.114)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a1, $a1, %pc_lo12(.L.str.115)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.116)
	addi.d	$a1, $a1, %pc_lo12(.L.str.116)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a1, 435751
	ori	$a1, $a1, 1395
	lu32i.d	$a1, 287589
	lu52i.d	$a1, $a1, 983
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a1, 439862
	ori	$a1, $a1, 2416
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a1, 5
	ori	$a1, $a1, 3935
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	b	.LBB17_10
	.p2align	4, , 16
.LBB17_8:                               #   in Loop: Header=BB17_10 Depth=1
	addi.d	$s6, $s7, 1
	addi.d	$s0, $s0, 1
	st.b	$a0, $s8, 0
.LBB17_9:                               #   in Loop: Header=BB17_10 Depth=1
	ld.bu	$a0, $s6, 0
	add.d	$s8, $s5, $s0
	move	$s7, $s6
	beqz	$a0, .LBB17_80
.LBB17_10:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_75 Depth 2
                                        #     Child Loop BB17_47 Depth 2
	blt	$s0, $fp, .LBB17_12
# %bb.11:                               #   in Loop: Header=BB17_10 Depth=1
	ld.d	$a4, $s4, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 0
.LBB17_12:                              # %Assert.exit
                                        #   in Loop: Header=BB17_10 Depth=1
	bne	$a0, $s3, .LBB17_8
# %bb.13:                               #   in Loop: Header=BB17_10 Depth=1
	ld.bu	$a1, $s7, 1
	bne	$a1, $s3, .LBB17_8
# %bb.14:                               #   in Loop: Header=BB17_10 Depth=1
	addi.d	$s6, $s7, 2
	ori	$a2, $zero, 5
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_35
# %bb.15:                               #   in Loop: Header=BB17_10 Depth=1
	ori	$a2, $zero, 5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_36
# %bb.16:                               #   in Loop: Header=BB17_10 Depth=1
	ori	$a2, $zero, 5
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_37
# %bb.17:                               #   in Loop: Header=BB17_10 Depth=1
	ori	$a2, $zero, 5
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_38
# %bb.18:                               # %PDFKeyword_Find.exit.thread.preheader
                                        #   in Loop: Header=BB17_10 Depth=1
	ori	$a2, $zero, 14
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_41
# %bb.19:                               # %PDFKeyword_Find.exit.thread.1
                                        #   in Loop: Header=BB17_10 Depth=1
	ori	$a2, $zero, 16
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_42
# %bb.20:                               # %PDFKeyword_Find.exit.thread.2
                                        #   in Loop: Header=BB17_10 Depth=1
	ori	$a2, $zero, 11
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_43
# %bb.21:                               # %PDFKeyword_Find.exit.thread.3
                                        #   in Loop: Header=BB17_10 Depth=1
	ori	$a2, $zero, 14
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_44
# %bb.22:                               # %PDFKeyword_Find.exit.thread.4
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	ori	$a2, $zero, 25
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_45
# %bb.23:                               # %PDFKeyword_Find.exit81.thread.preheader
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	ori	$a2, $zero, 7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_49
# %bb.24:                               # %PDFKeyword_Find.exit81.thread.1
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	ori	$a2, $zero, 6
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_53
# %bb.25:                               # %PDFKeyword_Find.exit81.thread.2
                                        #   in Loop: Header=BB17_10 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB17_57
# %bb.26:                               # %PDFKeyword_Find.exit81.thread.3
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	ori	$a2, $zero, 9
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_61
# %bb.27:                               # %PDFKeyword_Find.exit87.thread.preheader
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	ori	$a2, $zero, 3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_65
# %bb.28:                               # %PDFKeyword_Find.exit87.thread.1
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	ori	$a2, $zero, 3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_66
# %bb.29:                               # %PDFKeyword_Find.exit87.thread.2
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	ori	$a2, $zero, 3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_70
# %bb.30:                               # %PDFKeyword_Find.exit87.thread.3
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	ori	$a2, $zero, 3
	ori	$s7, $zero, 3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_74
# %bb.31:                               # %PDFKeyword_Find.exit87.thread.4
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	ori	$a2, $zero, 3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_71
# %bb.32:                               # %PDFKeyword_Find.exit87.thread.5
                                        #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	ori	$a2, $zero, 3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_72
# %bb.33:                               # %PDFKeyword_Find.exit87.thread.6
                                        #   in Loop: Header=BB17_10 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB17_73
# %bb.34:                               # %PDFKeyword_Find.exit94.thread
                                        #   in Loop: Header=BB17_10 Depth=1
	ld.d	$a4, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 37
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.h	$a0, $s8, 0
	addi.d	$s0, $s0, 2
	b	.LBB17_9
.LBB17_35:                              #   in Loop: Header=BB17_10 Depth=1
	move	$s7, $zero
	b	.LBB17_39
.LBB17_36:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s7, $zero, 1
	b	.LBB17_39
.LBB17_37:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s7, $zero, 2
	b	.LBB17_39
.LBB17_38:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s7, $zero, 3
	.p2align	4, , 16
.LBB17_39:                              # %PDFKeyword_Find.exit
                                        #   in Loop: Header=BB17_10 Depth=1
	slli.d	$a0, $s7, 3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s7, 2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	add.d	$s6, $s6, $a0
	move	$a0, $s8
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
.LBB17_40:                              #   in Loop: Header=BB17_10 Depth=1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	b	.LBB17_9
.LBB17_41:                              #   in Loop: Header=BB17_10 Depth=1
	move	$s8, $zero
	b	.LBB17_46
.LBB17_42:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s8, $zero, 1
	b	.LBB17_46
.LBB17_43:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s8, $zero, 2
	b	.LBB17_46
.LBB17_44:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s8, $zero, 3
	b	.LBB17_46
.LBB17_45:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s8, $zero, 4
.LBB17_46:                              # %PDFKeyword_Find.exit81
                                        #   in Loop: Header=BB17_10 Depth=1
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	add.d	$a0, $s7, $s6
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB17_47:                              #   Parent Loop BB17_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a0, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	slli.d	$a2, $a2, 50
	addi.d	$a0, $a0, 1
	bltz	$a2, .LBB17_47
# %bb.48:                               #   in Loop: Header=BB17_10 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a2, %pc_lo12(g_link_depth)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.w	$zero, $a3, %pc_lo12(g_link_index)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a2, %pc_lo12(g_link_depth)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$s8, $a1, %pc_lo12(g_link_keyword)
	pcaddu18i	$ra, %call36(PDFPage_CollectLink)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	b	.LBB17_9
.LBB17_49:                              #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$s8, %pc_hi20(g_doc_author)
	ld.d	$a0, $s8, %pc_lo12(g_doc_author)
	beqz	$a0, .LBB17_51
# %bb.50:                               #   in Loop: Header=BB17_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_51:                              #   in Loop: Header=BB17_10 Depth=1
	addi.d	$s6, $s7, 9
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(g_doc_author)
	bnez	$a0, .LBB17_64
# %bb.52:                               #   in Loop: Header=BB17_10 Depth=1
	ld.d	$a4, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a2, $a0, %pc_lo12(.L.str.122)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 26
	b	.LBB17_68
.LBB17_53:                              #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$s8, %pc_hi20(g_doc_title)
	ld.d	$a0, $s8, %pc_lo12(g_doc_title)
	beqz	$a0, .LBB17_55
# %bb.54:                               #   in Loop: Header=BB17_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_55:                              #   in Loop: Header=BB17_10 Depth=1
	addi.d	$s6, $s7, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(g_doc_title)
	bnez	$a0, .LBB17_64
# %bb.56:                               #   in Loop: Header=BB17_10 Depth=1
	ld.d	$a4, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a2, $a0, %pc_lo12(.L.str.123)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 27
	b	.LBB17_68
.LBB17_57:                              #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$s8, %pc_hi20(g_doc_subject)
	ld.d	$a0, $s8, %pc_lo12(g_doc_subject)
	beqz	$a0, .LBB17_59
# %bb.58:                               #   in Loop: Header=BB17_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_59:                              #   in Loop: Header=BB17_10 Depth=1
	addi.d	$s6, $s7, 10
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(g_doc_subject)
	bnez	$a0, .LBB17_64
# %bb.60:                               #   in Loop: Header=BB17_10 Depth=1
	ld.d	$a4, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a2, $a0, %pc_lo12(.L.str.124)
	ori	$a0, $zero, 47
	ori	$a1, $zero, 28
	b	.LBB17_68
.LBB17_61:                              #   in Loop: Header=BB17_10 Depth=1
	pcalau12i	$s8, %pc_hi20(g_doc_keywords)
	ld.d	$a0, $s8, %pc_lo12(g_doc_keywords)
	beqz	$a0, .LBB17_63
# %bb.62:                               #   in Loop: Header=BB17_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_63:                              #   in Loop: Header=BB17_10 Depth=1
	addi.d	$s6, $s7, 11
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(g_doc_keywords)
	beqz	$a0, .LBB17_67
.LBB17_64:                              #   in Loop: Header=BB17_10 Depth=1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	b	.LBB17_69
.LBB17_65:                              #   in Loop: Header=BB17_10 Depth=1
	move	$s7, $zero
	b	.LBB17_74
.LBB17_66:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s7, $zero, 1
	b	.LBB17_74
.LBB17_67:                              #   in Loop: Header=BB17_10 Depth=1
	ld.d	$a4, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a2, $a0, %pc_lo12(.L.str.125)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 29
.LBB17_68:                              # %PDFPage_ProcessDocInfoKeyword.exit
                                        #   in Loop: Header=BB17_10 Depth=1
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB17_69:                              # %PDFPage_ProcessDocInfoKeyword.exit
                                        #   in Loop: Header=BB17_10 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s6, $s6, $a0
	b	.LBB17_9
.LBB17_70:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s7, $zero, 2
	b	.LBB17_74
.LBB17_71:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s7, $zero, 4
	b	.LBB17_74
.LBB17_72:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s7, $zero, 5
	b	.LBB17_74
.LBB17_73:                              #   in Loop: Header=BB17_10 Depth=1
	ori	$s7, $zero, 6
.LBB17_74:                              # %PDFKeyword_Find.exit94
                                        #   in Loop: Header=BB17_10 Depth=1
	slli.d	$a0, $s7, 3
	pcalau12i	$a1, %pc_hi20(g_arithmetic_keywords)
	addi.d	$a1, $a1, %pc_lo12(g_arithmetic_keywords)
	ldx.d	$s7, $a1, $a0
	pcalau12i	$a0, %pc_hi20(g_expr)
	addi.d	$a0, $a0, %pc_lo12(g_expr)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $s7
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s6, $s6, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	.p2align	4, , 16
.LBB17_75:                              #   Parent Loop BB17_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s6, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 50
	addi.d	$s6, $s6, 1
	bltz	$a2, .LBB17_75
# %bb.76:                               #   in Loop: Header=BB17_10 Depth=1
	ori	$a0, $zero, 40
	beq	$a1, $a0, .LBB17_78
# %bb.77:                               #   in Loop: Header=BB17_10 Depth=1
	ld.d	$a4, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 36
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB17_78:                              #   in Loop: Header=BB17_10 Depth=1
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 40
	stx.h	$a1, $s7, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a3, %pc_lo12(g_expr_depth)
	pcalau12i	$a2, %pc_hi20(g_expr_index)
	st.w	$a0, $a2, %pc_lo12(g_expr_index)
	addi.d	$a0, $a1, 1
	st.w	$a0, $a3, %pc_lo12(g_expr_depth)
	addi.d	$a1, $sp, 176
	addi.d	$a2, $sp, 180
	move	$a0, $s6
	pcaddu18i	$ra, %call36(PDFPage_CollectExpr)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 176
	move	$s6, $a0
	beqz	$a1, .LBB17_9
# %bb.79:                               #   in Loop: Header=BB17_10 Depth=1
	fld.s	$fa0, $sp, 180
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $s8
	b	.LBB17_40
.LBB17_80:                              # %._crit_edge
	pcalau12i	$a1, %pc_hi20(g_in_buffering_mode)
	ld.bu	$a0, $a1, %pc_lo12(g_in_buffering_mode)
	st.b	$zero, $s8, 0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_85
# %bb.81:
	pcalau12i	$fp, %pc_hi20(g_qsave_marking_stack)
	ld.d	$a0, $fp, %pc_lo12(g_qsave_marking_stack)
	st.b	$zero, $a1, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB17_83
	.p2align	4, , 16
.LBB17_82:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	st.d	$s0, $fp, %pc_lo12(g_qsave_marking_stack)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB17_82
.LBB17_83:                              # %._crit_edge.i
	pcalau12i	$a0, %pc_hi20(g_buffer)
	ld.bu	$a0, $a0, %pc_lo12(g_buffer)
	beqz	$a0, .LBB17_85
# %bb.84:
	pcalau12i	$a0, %pc_hi20(g_buffer)
	addi.d	$a0, $a0, %pc_lo12(g_buffer)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB17_85:                              # %PDFPage_FlushBuffer.exit
	addi.d	$a1, $sp, 184
	move	$a0, $s1
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
.LBB17_86:
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	ret
.Lfunc_end17:
	.size	PDFPage_WriteGraphic, .Lfunc_end17-PDFPage_WriteGraphic
                                        # -- End function
	.p2align	5                               # -- Begin function PDFPage_CollectExpr
	.type	PDFPage_CollectExpr,@function
PDFPage_CollectExpr:                    # @PDFPage_CollectExpr
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
	move	$s1, $a0
	st.w	$zero, $a1, 0
	ld.bu	$a4, $a0, 0
	beqz	$a4, .LBB18_12
# %bb.1:                                # %.lr.ph.preheader
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(g_expr_index)
	ld.w	$a0, $s5, %pc_lo12(g_expr_index)
	addi.d	$a2, $s1, 1
	ori	$s6, $zero, 512
	pcalau12i	$a3, %got_pc_hi20(no_fpos)
	ld.d	$s7, $a3, %got_pc_lo12(no_fpos)
	pcalau12i	$a3, %pc_hi20(.L.str.80)
	addi.d	$s2, $a3, %pc_lo12(.L.str.80)
	pcalau12i	$a3, %pc_hi20(g_expr)
	addi.d	$s3, $a3, %pc_lo12(g_expr)
	ori	$s8, $zero, 41
	pcalau12i	$s0, %pc_hi20(g_expr_depth)
	pcalau12i	$a3, %pc_hi20(.L.str.75)
	addi.d	$s4, $a3, %pc_lo12(.L.str.75)
	ori	$fp, $zero, 40
	b	.LBB18_5
	.p2align	4, , 16
.LBB18_2:                               #   in Loop: Header=BB18_5 Depth=1
	ld.w	$a1, $s0, %pc_lo12(g_expr_depth)
	beqz	$a1, .LBB18_10
# %bb.3:                                # %Assert.exit
                                        #   in Loop: Header=BB18_5 Depth=1
	addi.w	$a1, $a1, -1
	st.w	$a1, $s0, %pc_lo12(g_expr_depth)
	beqz	$a1, .LBB18_11
.LBB18_4:                               #   in Loop: Header=BB18_5 Depth=1
	ld.bu	$a4, $s1, 0
	addi.d	$a2, $s1, 1
	beqz	$a4, .LBB18_12
.LBB18_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a2
	bltu	$a0, $s6, .LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 34
	ori	$a3, $zero, 1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a4, $s1, -1
	ld.w	$a0, $s5, %pc_lo12(g_expr_index)
.LBB18_7:                               #   in Loop: Header=BB18_5 Depth=1
	stx.b	$a4, $s3, $a0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(g_expr_index)
	beq	$a4, $s8, .LBB18_2
# %bb.8:                                #   in Loop: Header=BB18_5 Depth=1
	bne	$a4, $fp, .LBB18_4
# %bb.9:                                #   in Loop: Header=BB18_5 Depth=1
	ld.w	$a1, $s0, %pc_lo12(g_expr_depth)
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, %pc_lo12(g_expr_depth)
	b	.LBB18_4
.LBB18_10:                              #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s4
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(g_expr_index)
	ld.w	$a1, $s0, %pc_lo12(g_expr_depth)
	addi.w	$a1, $a1, -1
	st.w	$a1, $s0, %pc_lo12(g_expr_depth)
	bnez	$a1, .LBB18_4
.LBB18_11:                              # %.thread
	stx.b	$zero, $s3, $a0
	move	$a0, $s3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(PDFPage_EvalExpr)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB18_12:                              # %.loopexit
	move	$a0, $s1
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
.Lfunc_end18:
	.size	PDFPage_CollectExpr, .Lfunc_end18-PDFPage_CollectExpr
                                        # -- End function
	.p2align	5                               # -- Begin function PDFPage_CollectLink
	.type	PDFPage_CollectLink,@function
PDFPage_CollectLink:                    # @PDFPage_CollectLink
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
	move	$fp, $a0
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB19_15
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$s2, %pc_hi20(g_link_index)
	ld.w	$a1, $s2, %pc_lo12(g_link_index)
	ori	$s3, $zero, 512
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s8, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$s0, $a0, %pc_lo12(.L.str.94)
	pcalau12i	$a0, %pc_hi20(g_link)
	addi.d	$s5, $a0, %pc_lo12(g_link)
	ori	$s4, $zero, 62
	pcalau12i	$s6, %pc_hi20(g_link_depth)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s1, $a0, %pc_lo12(.L.str.75)
	ori	$s7, $zero, 60
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_2:                               # %thread-pre-split
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.bu	$a2, $a0, 0
.LBB19_3:                               #   in Loop: Header=BB19_4 Depth=1
	move	$fp, $a0
	beqz	$a2, .LBB19_16
.LBB19_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a1
	bltu	$a1, $s3, .LBB19_6
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 35
	ori	$a3, $zero, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $fp, 0
	ld.w	$a3, $s2, %pc_lo12(g_link_index)
.LBB19_6:                               #   in Loop: Header=BB19_4 Depth=1
	addi.d	$a0, $fp, 1
	addi.w	$a1, $a3, 1
	st.w	$a1, $s2, %pc_lo12(g_link_index)
	stx.b	$a2, $s5, $a3
	beq	$a2, $s4, .LBB19_10
# %bb.7:                                #   in Loop: Header=BB19_4 Depth=1
	bne	$a2, $s7, .LBB19_2
# %bb.8:                                #   in Loop: Header=BB19_4 Depth=1
	ld.bu	$a2, $a0, 0
	bne	$a2, $s7, .LBB19_3
# %bb.9:                                #   in Loop: Header=BB19_4 Depth=1
	addi.d	$a0, $fp, 2
	ld.w	$a2, $s6, %pc_lo12(g_link_depth)
	stx.b	$s7, $s5, $a1
	addi.w	$a1, $a3, 2
	st.w	$a1, $s2, %pc_lo12(g_link_index)
	addi.d	$a2, $a2, 1
	st.w	$a2, $s6, %pc_lo12(g_link_depth)
	b	.LBB19_2
	.p2align	4, , 16
.LBB19_10:                              #   in Loop: Header=BB19_4 Depth=1
	ld.bu	$a2, $a0, 0
	bne	$a2, $s4, .LBB19_3
# %bb.11:                               #   in Loop: Header=BB19_4 Depth=1
	ld.w	$a0, $s6, %pc_lo12(g_link_depth)
	bnez	$a0, .LBB19_13
# %bb.12:                               #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(g_link_depth)
.LBB19_13:                              # %Assert.exit
                                        #   in Loop: Header=BB19_4 Depth=1
	addi.w	$a0, $a0, -1
	st.w	$a0, $s6, %pc_lo12(g_link_depth)
	beqz	$a0, .LBB19_17
# %bb.14:                               #   in Loop: Header=BB19_4 Depth=1
	ld.w	$a2, $s2, %pc_lo12(g_link_index)
	ld.b	$a3, $fp, 1
	addi.d	$a0, $fp, 2
	addi.w	$a1, $a2, 1
	st.w	$a1, $s2, %pc_lo12(g_link_index)
	stx.b	$a3, $s5, $a2
	b	.LBB19_2
.LBB19_15:
	move	$a0, $fp
.LBB19_16:                              # %.loopexit16
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
.LBB19_17:
	ld.w	$a0, $s2, %pc_lo12(g_link_index)
	addi.w	$a0, $a0, -1
	stx.b	$zero, $s5, $a0
	pcalau12i	$a1, %pc_hi20(g_link_keyword)
	ld.bu	$s1, $s5, 0
	ld.w	$s6, $a1, %pc_lo12(g_link_keyword)
	st.w	$a0, $s2, %pc_lo12(g_link_index)
	beqz	$s1, .LBB19_25
# %bb.18:                               # %.lr.ph.i
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(g_link+1)
	addi.d	$s5, $a1, %pc_lo12(g_link+1)
	ld.d	$a0, $a0, 0
	move	$s0, $zero
	ori	$a1, $zero, 95
	b	.LBB19_20
	.p2align	4, , 16
.LBB19_19:                              # %.critedge71.i
                                        #   in Loop: Header=BB19_20 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s5, $s5, 1
	beqz	$s1, .LBB19_24
.LBB19_20:                              # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $s1, 1
	ldx.hu	$a2, $a0, $a2
	ld.bu	$s1, $s5, 0
	slli.d	$a2, $a2, 50
	bgez	$a2, .LBB19_19
# %bb.21:                               #   in Loop: Header=BB19_20 Depth=1
	bne	$s1, $a1, .LBB19_19
# %bb.22:                               #   in Loop: Header=BB19_20 Depth=1
	ld.bu	$a2, $s5, 1
	ori	$s1, $zero, 95
	bne	$a2, $s1, .LBB19_19
# %bb.23:
	move	$s2, $zero
	move	$s7, $s5
	move	$s1, $s5
	b	.LBB19_27
.LBB19_24:                              # %.loopexit.i.loopexit
	addi.d	$s5, $s5, -1
	b	.LBB19_26
.LBB19_25:
	move	$s0, $zero
.LBB19_26:                              # %.loopexit.i
	move	$s1, $zero
	addi.d	$s7, $s5, 1
	ori	$s2, $zero, 1
.LBB19_27:                              # %.loopexit
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB19_38
# %bb.28:
	pcalau12i	$a1, %pc_hi20(g_page_h_origin)
	ld.w	$a1, $a1, %pc_lo12(g_page_h_origin)
	pcalau12i	$a2, %pc_hi20(g_page_h_scale_factor)
	fld.s	$fa0, $a2, %pc_lo12(g_page_h_scale_factor)
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	ftintrz.w.s	$fa1, $fa1
	pcalau12i	$a2, %pc_hi20(g_page_v_origin)
	ld.w	$a5, $a2, %pc_lo12(g_page_v_origin)
	pcalau12i	$a3, %pc_hi20(g_page_v_scale_factor)
	fld.s	$fa2, $a3, %pc_lo12(g_page_v_scale_factor)
	movfr2gr.s	$a2, $fa1
	movgr2fr.w	$fa1, $a5
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	pcalau12i	$a4, %pc_hi20(g_graphics_vars)
	addi.d	$a6, $a4, %pc_lo12(g_graphics_vars)
	ld.w	$a4, $a6, 0
	add.d	$a1, $a4, $a1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	ld.w	$a1, $a6, 4
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$s3, $fa0
	add.d	$a1, $a1, $a5
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa2, $fa0
	ftintrz.w.s	$fa0, $fa0
	addi.d	$a4, $s6, -1
	ori	$a1, $zero, 2
	movfr2gr.s	$s4, $fa0
	bltu	$a4, $a1, .LBB19_39
# %bb.29:
	addi.d	$a4, $s6, -3
	bgeu	$a4, $a1, .LBB19_43
# %bb.30:
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a3
	move	$s2, $a2
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bnez	$a0, .LBB19_32
# %bb.31:
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a2, $a0, %pc_lo12(.L.str.108)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 16
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB19_32:
	addi.d	$s1, $s6, -4
	addi.d	$a0, $s0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s5, 8
	bnez	$a0, .LBB19_34
# %bb.33:
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a2, $a0, %pc_lo12(.L.str.108)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 17
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB19_34:
	sltui	$s1, $s1, 1
	bstrpick.d	$s0, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(g_link)
	addi.d	$a1, $a0, %pc_lo12(g_link)
	move	$a0, $s7
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_page_contents_obj_num)
	ld.w	$a0, $a0, %pc_lo12(g_page_contents_obj_num)
	stx.b	$zero, $s7, $s0
	bnez	$a0, .LBB19_36
# %bb.35:
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB19_36:                              # %Assert.exit.i.i
	pcalau12i	$a0, %pc_hi20(g_page_object_num)
	ld.w	$a0, $a0, %pc_lo12(g_page_object_num)
	st.w	$a0, $s5, 16
	st.w	$s2, $s5, 20
	st.w	$s3, $s5, 24
	pcalau12i	$a0, %pc_hi20(g_target_annot_list)
	ld.d	$a1, $a0, %pc_lo12(g_target_annot_list)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $s5, 28
	st.w	$s4, $s5, 32
	st.w	$s1, $s5, 36
	st.d	$a1, $s5, 0
	ori	$a1, $zero, 4
	st.d	$s5, $a0, %pc_lo12(g_target_annot_list)
	bne	$s6, $a1, .LBB19_46
# %bb.37:
	pcalau12i	$a0, %pc_hi20(g_has_exported_targets)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(g_has_exported_targets)
	b	.LBB19_46
.LBB19_38:
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a2, $a0, %pc_lo12(.L.str.95)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 22
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 2
	b	.LBB19_16
.LBB19_39:
	move	$a0, $s6
	move	$a1, $s0
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $zero
	pcaddu18i	$ra, %call36(PDFSourceAnnot_New)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB19_46
# %bb.40:
	bnez	$s2, .LBB19_42
# %bb.41:                               # %.preheader83.i
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	ori	$a2, $zero, 10
	move	$a1, $s7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_56
.LBB19_42:                              # %.thread.i
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a2, $a0, %pc_lo12(.L.str.96)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 24
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 2
	b	.LBB19_16
.LBB19_43:
	bnez	$s6, .LBB19_46
# %bb.44:
	beqz	$s2, .LBB19_47
# %bb.45:
	move	$a6, $zero
	b	.LBB19_68
.LBB19_46:                              # %.thread
	addi.d	$a0, $fp, 2
	b	.LBB19_16
.LBB19_47:                              # %.preheader82.preheader.i
	move	$s2, $a3
	move	$s1, $a2
	add.d	$s5, $s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	ori	$a2, $zero, 13
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_60
# %bb.48:                               # %.preheader82.1.i
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	ori	$a2, $zero, 5
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_61
# %bb.49:                               # %.preheader82.2.i
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	ori	$a2, $zero, 6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_62
# %bb.50:                               # %.preheader82.3.i
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	ori	$a2, $zero, 6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_63
# %bb.51:                               # %.preheader82.4.i
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	ori	$a2, $zero, 6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_64
# %bb.52:                               # %.preheader82.5.i
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a2, $zero, 6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_65
# %bb.53:                               # %.preheader82.6.i
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	ori	$a2, $zero, 7
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_66
# %bb.54:                               # %.preheader82.7.i
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	ori	$a2, $zero, 7
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 7
	move	$a2, $s1
	move	$a3, $s2
	beqz	$a0, .LBB19_68
# %bb.55:                               # %.preheader.preheader.i
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	move	$a2, $s1
	add.d	$a0, $s5, $a0
	pcalau12i	$a1, %pc_hi20(g_link)
	addi.d	$a1, $a1, %pc_lo12(g_link)
	move	$a6, $zero
	sub.w	$s0, $a0, $a1
	b	.LBB19_68
.LBB19_56:                              # %PDFKeyword_Find.exit78.i
	addi.d	$s0, $s1, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 32
	beqz	$a1, .LBB19_42
# %bb.57:
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 24
	bnez	$a0, .LBB19_59
# %bb.58:
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a2, $a0, %pc_lo12(.L.str.97)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 25
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
.LBB19_59:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 2
	b	.LBB19_16
.LBB19_60:
	move	$a6, $zero
	b	.LBB19_67
.LBB19_61:
	ori	$a6, $zero, 1
	b	.LBB19_67
.LBB19_62:
	ori	$a6, $zero, 2
	b	.LBB19_67
.LBB19_63:
	ori	$a6, $zero, 3
	b	.LBB19_67
.LBB19_64:
	ori	$a6, $zero, 4
	b	.LBB19_67
.LBB19_65:
	ori	$a6, $zero, 5
	b	.LBB19_67
.LBB19_66:
	ori	$a6, $zero, 6
.LBB19_67:                              # %PDFKeyword_Find.exit.thread.i
	move	$a2, $s1
	move	$a3, $s2
.LBB19_68:                              # %PDFKeyword_Find.exit.thread.i
	move	$a0, $zero
	move	$a1, $s0
	move	$a4, $s3
	move	$a5, $s4
	pcaddu18i	$ra, %call36(PDFSourceAnnot_New)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 2
	b	.LBB19_16
.Lfunc_end19:
	.size	PDFPage_CollectLink, .Lfunc_end19-PDFPage_CollectLink
                                        # -- End function
	.globl	PDFPage_PrintUnderline          # -- Begin function PDFPage_PrintUnderline
	.p2align	5
	.type	PDFPage_PrintUnderline,@function
PDFPage_PrintUnderline:                 # @PDFPage_PrintUnderline
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
	pcalau12i	$a5, %pc_hi20(g_in_buffering_mode)
	ld.bu	$a6, $a5, %pc_lo12(g_in_buffering_mode)
	move	$s2, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$fp, $a0
	beqz	$a6, .LBB20_5
# %bb.1:
	pcalau12i	$s4, %pc_hi20(g_qsave_marking_stack)
	ld.d	$a0, $s4, %pc_lo12(g_qsave_marking_stack)
	st.b	$zero, $a5, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB20_3
	.p2align	4, , 16
.LBB20_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $a0, 0
	st.d	$s5, $s4, %pc_lo12(g_qsave_marking_stack)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	bnez	$s5, .LBB20_2
.LBB20_3:                               # %._crit_edge.i
	pcalau12i	$a0, %pc_hi20(g_buffer)
	ld.bu	$a0, $a0, %pc_lo12(g_buffer)
	beqz	$a0, .LBB20_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(g_buffer)
	addi.d	$a0, $a0, %pc_lo12(g_buffer)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB20_5:                               # %PDFPage_FlushBuffer.exit
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 16
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s0
	move	$a5, $s1
	move	$a6, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFPage_Write)
	jirl	$ra, $ra, 0
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
.Lfunc_end20:
	.size	PDFPage_PrintUnderline, .Lfunc_end20-PDFPage_PrintUnderline
                                        # -- End function
	.globl	PDFPage_Init                    # -- Begin function PDFPage_Init
	.p2align	5
	.type	PDFPage_Init,@function
PDFPage_Init:                           # @PDFPage_Init
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(g_page_uses_fonts)
	st.b	$zero, $a0, %pc_lo12(g_page_uses_fonts)
	pcalau12i	$a0, %pc_hi20(g_page_has_text)
	st.b	$zero, $a0, %pc_lo12(g_page_has_text)
	pcalau12i	$a0, %pc_hi20(g_page_contents_obj_num)
	st.w	$zero, $a0, %pc_lo12(g_page_contents_obj_num)
	pcalau12i	$a0, %pc_hi20(g_page_length_obj_num)
	st.w	$zero, $a0, %pc_lo12(g_page_length_obj_num)
	pcalau12i	$a0, %pc_hi20(g_page_start_offset)
	st.w	$zero, $a0, %pc_lo12(g_page_start_offset)
	pcalau12i	$a0, %pc_hi20(g_page_v_scale_factor)
	fst.s	$fa0, $a0, %pc_lo12(g_page_v_scale_factor)
	pcalau12i	$a0, %pc_hi20(g_page_h_scale_factor)
	fst.s	$fa0, $a0, %pc_lo12(g_page_h_scale_factor)
	pcalau12i	$a0, %pc_hi20(g_page_v_origin)
	st.w	$zero, $a0, %pc_lo12(g_page_v_origin)
	pcalau12i	$a0, %pc_hi20(g_page_h_origin)
	st.w	$zero, $a0, %pc_lo12(g_page_h_origin)
	pcalau12i	$a0, %pc_hi20(g_page_line_width)
	st.w	$a1, $a0, %pc_lo12(g_page_line_width)
	pcalau12i	$a0, %pc_hi20(g_graphics_vars)
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, %pc_lo12(g_graphics_vars)
	pcalau12i	$a0, %pc_hi20(g_units)
	addi.d	$a0, $a0, %pc_lo12(g_units)
	st.d	$zero, $a0, 16
	st.w	$zero, $a0, 24
	pcalau12i	$a0, %pc_hi20(g_ET_pending)
	st.b	$zero, $a0, %pc_lo12(g_ET_pending)
	pcalau12i	$a0, %pc_hi20(g_font_list)
	ld.d	$a0, $a0, %pc_lo12(g_font_list)
	pcalau12i	$a1, %pc_hi20(g_TJ_pending)
	st.b	$zero, $a1, %pc_lo12(g_TJ_pending)
	pcalau12i	$a1, %pc_hi20(g_valid_text_matrix)
	st.b	$zero, $a1, %pc_lo12(g_valid_text_matrix)
	beqz	$a0, .LBB21_2
	.p2align	4, , 16
.LBB21_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 44
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB21_1
.LBB21_2:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(g_qsave_stack)
	st.d	$zero, $a0, %pc_lo12(g_qsave_stack)
	pcalau12i	$a0, %pc_hi20(g_qsave_marking_stack)
	st.d	$zero, $a0, %pc_lo12(g_qsave_marking_stack)
	pcalau12i	$a0, %pc_hi20(g_buffer_pos)
	pcalau12i	$a1, %pc_hi20(g_in_buffering_mode)
	ori	$a2, $zero, 1
	st.b	$a2, $a1, %pc_lo12(g_in_buffering_mode)
	pcalau12i	$a1, %pc_hi20(g_page_count)
	ld.w	$a2, $a1, %pc_lo12(g_page_count)
	st.w	$zero, $a0, %pc_lo12(g_buffer_pos)
	pcalau12i	$a0, %pc_hi20(g_buffer)
	st.b	$zero, $a0, %pc_lo12(g_buffer)
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, %pc_lo12(g_page_count)
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(g_page_object_num)
	st.w	$a0, $a1, %pc_lo12(g_page_object_num)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end21:
	.size	PDFPage_Init, .Lfunc_end21-PDFPage_Init
                                        # -- End function
	.globl	PDFPage_Cleanup                 # -- Begin function PDFPage_Cleanup
	.p2align	5
	.type	PDFPage_Cleanup,@function
PDFPage_Cleanup:                        # @PDFPage_Cleanup
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
	pcalau12i	$a1, %pc_hi20(g_qsave_stack)
	ld.d	$a1, $a1, %pc_lo12(g_qsave_stack)
	move	$fp, $a0
	beqz	$a1, .LBB22_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB22_2:                               # %Assert.exit
	pcalau12i	$s6, %pc_hi20(g_page_contents_obj_num)
	ld.w	$a0, $s6, %pc_lo12(g_page_contents_obj_num)
	beqz	$a0, .LBB22_19
# %bb.3:
	pcalau12i	$a1, %pc_hi20(g_in_buffering_mode)
	ld.bu	$a0, $a1, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB22_10
# %bb.4:
	pcalau12i	$a2, %pc_hi20(g_buffer_pos)
	pcalau12i	$s0, %pc_hi20(g_qsave_marking_stack)
	ld.d	$a0, $s0, %pc_lo12(g_qsave_marking_stack)
	st.w	$zero, $a2, %pc_lo12(g_buffer_pos)
	pcalau12i	$s1, %pc_hi20(g_buffer)
	st.b	$zero, $s1, %pc_lo12(g_buffer)
	st.b	$zero, $a1, %pc_lo12(g_in_buffering_mode)
	beqz	$a0, .LBB22_8
	.p2align	4, , 16
.LBB22_5:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $a0, 0
	st.d	$s2, $s0, %pc_lo12(g_qsave_marking_stack)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bnez	$s2, .LBB22_5
# %bb.6:                                # %._crit_edge.i.i
	ld.bu	$a0, $s1, %pc_lo12(g_buffer)
	beqz	$a0, .LBB22_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(g_buffer)
	addi.d	$a0, $a0, %pc_lo12(g_buffer)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB22_8:                               # %PDFPage_FlushBuffer.exit.i
	ld.w	$a0, $s6, %pc_lo12(g_page_contents_obj_num)
	bnez	$a0, .LBB22_10
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB22_10:                              # %PDFPage_End.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(g_page_start_offset)
	ld.w	$a1, $a1, %pc_lo12(g_page_start_offset)
	sub.w	$s0, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	ori	$s7, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_page_length_obj_num)
	ld.w	$a1, $a0, %pc_lo12(g_page_length_obj_num)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_font_list)
	ld.d	$s8, $a0, %pc_lo12(g_font_list)
	beqz	$s8, .LBB22_19
# %bb.11:                               # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$s0, $a0, %pc_lo12(.L.str.137)
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s1, $a0, %pc_lo12(.L.str.138)
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$s2, $a0, %pc_lo12(.L.str.139)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$s3, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$s4, $a0, %pc_lo12(.L.str.140)
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$s5, $a0, %pc_lo12(.L.str.169)
	b	.LBB22_14
	.p2align	4, , 16
.LBB22_12:                              #   in Loop: Header=BB22_14 Depth=1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB22_13:                              # %PDFFont_WriteFontResource.exit
                                        #   in Loop: Header=BB22_14 Depth=1
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB22_19
.LBB22_14:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s8, 40
	bnez	$a0, .LBB22_13
# %bb.15:                               #   in Loop: Header=BB22_14 Depth=1
	ld.w	$a1, $s8, 36
	st.w	$s7, $s8, 40
	bnez	$a1, .LBB22_17
# %bb.16:                               #   in Loop: Header=BB22_14 Depth=1
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.w	$a0, $s8, 36
.LBB22_17:                              # %PDFFont_WriteObject.exit.i
                                        #   in Loop: Header=BB22_14 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s8, 8
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s8, 24
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 32
	beqz	$a0, .LBB22_12
# %bb.18:                               #   in Loop: Header=BB22_14 Depth=1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 32
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB22_12
.LBB22_19:                              # %.loopexit
	pcalau12i	$s3, %pc_hi20(g_source_annot_list)
	ld.d	$s0, $s3, %pc_lo12(g_source_annot_list)
	pcalau12i	$s4, %pc_hi20(g_page_object_num)
	beqz	$s0, .LBB22_25
# %bb.20:                               # %.lr.ph125.preheader
	ld.w	$a0, $s4, %pc_lo12(g_page_object_num)
	move	$a1, $zero
	b	.LBB22_22
	.p2align	4, , 16
.LBB22_21:                              #   in Loop: Header=BB22_22 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB22_24
.LBB22_22:                              # %.lr.ph125
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s0, 52
	bne	$a2, $a0, .LBB22_21
# %bb.23:                               #   in Loop: Header=BB22_22 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(PDFSourceAnnot_Write)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(g_page_object_num)
	ori	$a1, $zero, 1
	b	.LBB22_21
.LBB22_24:                              # %._crit_edge.loopexit
	sltui	$s8, $a1, 1
	b	.LBB22_26
.LBB22_25:
	ori	$s8, $zero, 1
.LBB22_26:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(g_page_count)
	ld.w	$a0, $a0, %pc_lo12(g_page_count)
	addi.w	$s5, $a0, -1
	andi	$s1, $s5, 63
	pcalau12i	$s2, %pc_hi20(g_cur_page_block)
	beqz	$s1, .LBB22_29
# %bb.27:
	ld.d	$s0, $s2, %pc_lo12(g_cur_page_block)
	bnez	$s0, .LBB22_37
# %bb.28:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB22_29:
	ori	$a0, $zero, 264
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB22_33
# %bb.30:
	ori	$a0, $zero, 63
	bltu	$a0, $s5, .LBB22_34
.LBB22_31:
	pcalau12i	$a0, %pc_hi20(g_page_block_list)
	addi.d	$s5, $a0, %pc_lo12(g_page_block_list)
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB22_36
# %bb.32:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB22_36
.LBB22_33:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 38
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 63
	bgeu	$a0, $s5, .LBB22_31
.LBB22_34:
	ld.d	$s5, $s2, %pc_lo12(g_cur_page_block)
	bnez	$s5, .LBB22_36
# %bb.35:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s2, %pc_lo12(g_cur_page_block)
.LBB22_36:                              # %Assert.exit106
	st.d	$s0, $s5, 0
	st.d	$zero, $s0, 0
	st.d	$s0, $s2, %pc_lo12(g_cur_page_block)
.LBB22_37:                              # %Assert.exit110
	ld.w	$a1, $s4, %pc_lo12(g_page_object_num)
	alsl.d	$a0, $s1, $s0, 2
	st.w	$a1, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_doc_h_bound)
	ld.w	$a2, $a0, %pc_lo12(g_doc_h_bound)
	pcalau12i	$a0, %pc_hi20(g_doc_v_bound)
	ld.w	$a3, $a0, %pc_lo12(g_doc_v_bound)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_pages_root)
	ld.w	$a2, $a0, %pc_lo12(g_pages_root)
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a1, $a0, %pc_lo12(.L.str.169)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(g_page_contents_obj_num)
	beqz	$a0, .LBB22_39
# %bb.38:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, %pc_lo12(g_page_contents_obj_num)
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a1, $a0, %pc_lo12(.L.str.169)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB22_39:
	pcalau12i	$s6, %pc_hi20(g_page_uses_fonts)
	ld.bu	$a0, $s6, %pc_lo12(g_page_uses_fonts)
	pcalau12i	$s7, %pc_hi20(g_page_has_text)
	bnez	$a0, .LBB22_41
# %bb.40:
	ld.b	$a0, $s7, %pc_lo12(g_page_has_text)
	andi	$a0, $a0, 1
	beqz	$a0, .LBB22_54
.LBB22_41:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, %pc_lo12(g_page_uses_fonts)
	beqz	$a0, .LBB22_50
# %bb.42:
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(g_font_list)
	ld.d	$s8, $a0, %pc_lo12(g_font_list)
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB22_49
# %bb.43:                               # %.lr.ph129.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s0, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s5, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s1, $a0, %pc_lo12(.L.str.75)
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$s2, $a0, %pc_lo12(.L.str.169)
	b	.LBB22_46
	.p2align	4, , 16
.LBB22_44:                              # %PDFFont_WriteObjectRef.exit
                                        #   in Loop: Header=BB22_46 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB22_45:                              #   in Loop: Header=BB22_46 Depth=1
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB22_49
.LBB22_46:                              # %.lr.ph129
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s8, 44
	beqz	$a0, .LBB22_45
# %bb.47:                               #   in Loop: Header=BB22_46 Depth=1
	ld.d	$a2, $s8, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 36
	bnez	$a2, .LBB22_44
# %bb.48:                               #   in Loop: Header=BB22_46 Depth=1
	ld.d	$a4, $s5, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 36
	b	.LBB22_44
.LBB22_49:                              # %._crit_edge130
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
.LBB22_50:                              # %thread-pre-split
	ld.bu	$a0, $s7, %pc_lo12(g_page_has_text)
	beqz	$a0, .LBB22_54
# %bb.51:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, %pc_lo12(g_page_has_text)
	beqz	$a0, .LBB22_53
# %bb.52:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB22_53:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s7, %pc_lo12(g_page_has_text)
	ld.bu	$a1, $s6, %pc_lo12(g_page_uses_fonts)
	beqz	$a1, .LBB22_55
	b	.LBB22_56
.LBB22_54:
	move	$a0, $zero
	ld.bu	$a1, $s6, %pc_lo12(g_page_uses_fonts)
	bnez	$a1, .LBB22_56
.LBB22_55:
	andi	$a0, $a0, 1
	beqz	$a0, .LBB22_57
.LBB22_56:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB22_57:
	bnez	$s8, .LBB22_74
# %bb.58:
	ld.d	$s0, $s3, %pc_lo12(g_source_annot_list)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB22_73
# %bb.59:                               # %.lr.ph135.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$s1, $a0, %pc_lo12(.L.str.169)
	move	$s2, $zero
	b	.LBB22_62
	.p2align	4, , 16
.LBB22_60:                              #   in Loop: Header=BB22_62 Depth=1
	ld.d	$s5, $s0, 0
.LBB22_61:                              #   in Loop: Header=BB22_62 Depth=1
	move	$s2, $s0
	move	$s0, $s5
	beqz	$s5, .LBB22_73
.LBB22_62:                              # %.lr.ph135
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 52
	ld.w	$a1, $s4, %pc_lo12(g_page_object_num)
	bne	$a0, $a1, .LBB22_60
# %bb.63:                               #   in Loop: Header=BB22_62 Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 48
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 64
	ld.d	$s5, $s0, 0
	beqz	$a0, .LBB22_61
# %bb.64:                               #   in Loop: Header=BB22_62 Depth=1
	ld.d	$a0, $s3, %pc_lo12(g_source_annot_list)
	beq	$a0, $s0, .LBB22_72
# %bb.65:                               #   in Loop: Header=BB22_62 Depth=1
	beqz	$s2, .LBB22_67
.LBB22_66:                              #   in Loop: Header=BB22_62 Depth=1
	st.d	$s5, $s2, 0
.LBB22_67:                              #   in Loop: Header=BB22_62 Depth=1
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB22_69
# %bb.68:                               #   in Loop: Header=BB22_62 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB22_69:                              #   in Loop: Header=BB22_62 Depth=1
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB22_71
# %bb.70:                               #   in Loop: Header=BB22_62 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB22_71:                              # %PDFSourceAnnot_Dispose.exit
                                        #   in Loop: Header=BB22_62 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $s5
	bnez	$s5, .LBB22_62
	b	.LBB22_73
.LBB22_72:                              #   in Loop: Header=BB22_62 Depth=1
	st.d	$s5, $s3, %pc_lo12(g_source_annot_list)
	bnez	$s2, .LBB22_66
	b	.LBB22_67
.LBB22_73:                              # %._crit_edge136
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB22_74:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end22:
	.size	PDFPage_Cleanup, .Lfunc_end22-PDFPage_Cleanup
                                        # -- End function
	.p2align	5                               # -- Begin function PDFObject_WriteObj
	.type	PDFObject_WriteObj,@function
PDFObject_WriteObj:                     # @PDFObject_WriteObj
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
	pcalau12i	$a2, %pc_hi20(g_obj_offset_list)
	ld.d	$s2, $a2, %pc_lo12(g_obj_offset_list)
	move	$fp, $a1
	move	$s0, $a0
	addi.w	$s3, $a1, -1
	beqz	$a1, .LBB23_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(g_next_objnum)
	ld.w	$a0, $a0, %pc_lo12(g_next_objnum)
	bltu	$fp, $a0, .LBB23_3
.LBB23_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB23_3:                               # %Assert.exit.i
	ori	$a0, $zero, 256
	bgeu	$s3, $a0, .LBB23_9
.LBB23_4:                               # %._crit_edge.i
	bnez	$s2, .LBB23_6
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB23_6:                               # %PDFObject_FindOffsetBlock.exit
	andi	$a0, $s3, 255
	alsl.d	$a0, $a0, $s2, 2
	ld.w	$a1, $a0, 8
	addi.d	$s1, $a0, 8
	beqz	$a1, .LBB23_8
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB23_8:                               # %Assert.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	move	$a0, $s0
	move	$a2, $fp
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
.LBB23_9:                               # %.lr.ph.i.preheader
	bstrpick.d	$s4, $s3, 31, 8
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s5, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s1, $a0, %pc_lo12(.L.str.75)
	b	.LBB23_11
	.p2align	4, , 16
.LBB23_10:                              # %Assert.exit15.i
                                        #   in Loop: Header=BB23_11 Depth=1
	ld.d	$s2, $s2, 0
	addi.w	$s4, $s4, -1
	beqz	$s4, .LBB23_4
.LBB23_11:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bnez	$s2, .LBB23_10
# %bb.12:                               #   in Loop: Header=BB23_11 Depth=1
	ld.d	$a4, $s5, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB23_10
.Lfunc_end23:
	.size	PDFObject_WriteObj, .Lfunc_end23-PDFObject_WriteObj
                                        # -- End function
	.p2align	5                               # -- Begin function PDFSourceAnnot_Write
	.type	PDFSourceAnnot_Write,@function
PDFSourceAnnot_Write:                   # @PDFSourceAnnot_Write
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a1, $a1, 60
	ld.d	$s1, $fp, 8
	move	$s0, $a0
	bnez	$a1, .LBB24_2
# %bb.1:
	beqz	$s1, .LBB24_21
.LBB24_2:
	ld.w	$a1, $fp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 32
	ld.w	$a3, $fp, 36
	ld.w	$a4, $fp, 40
	ld.w	$a5, $fp, 44
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a1, $a0, %pc_lo12(.L.str.156)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 60
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB24_10
# %bb.3:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB24_9
# %bb.4:
	bnez	$a0, .LBB24_20
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.w	$a2, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a1, $a0, %pc_lo12(.L.str.169)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB24_22
# %bb.6:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI24_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI24_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB24_7:
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB24_8:
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a0, $a0, %pc_lo12(.L.str.159)
	ori	$a1, $zero, 5
	b	.LBB24_16
.LBB24_9:
	ld.d	$a2, $fp, 16
	ld.d	$a3, $fp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a1, $a0, %pc_lo12(.L.str.167)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB24_20
.LBB24_10:
	ld.d	$a2, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a1, $a0, %pc_lo12(.L.str.168)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB24_20
.LBB24_11:
	ld.w	$a2, $s1, 20
	ld.w	$a3, $s1, 24
	ld.w	$a4, $s1, 28
	ld.w	$a5, $s1, 32
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a1, $a0, %pc_lo12(.L.str.162)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB24_19
.LBB24_12:
	ld.w	$a2, $s1, 32
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a1, $a0, %pc_lo12(.L.str.160)
	b	.LBB24_18
.LBB24_13:
	ld.w	$a2, $s1, 20
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a1, $a0, %pc_lo12(.L.str.161)
	b	.LBB24_18
.LBB24_14:
	ld.w	$a2, $s1, 20
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a1, $a0, %pc_lo12(.L.str.165)
	b	.LBB24_18
.LBB24_15:
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	ori	$a1, $zero, 6
.LBB24_16:
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB24_19
.LBB24_17:
	ld.w	$a2, $s1, 32
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a1, $a0, %pc_lo12(.L.str.164)
.LBB24_18:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB24_19:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB24_20:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$s1, $fp, 64
.LBB24_21:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB24_22:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a2, $a0, %pc_lo12(.L.str.166)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 18
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB24_19
.Lfunc_end24:
	.size	PDFSourceAnnot_Write, .Lfunc_end24-PDFSourceAnnot_Write
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI24_0:
	.word	.LBB24_7-.LJTI24_0
	.word	.LBB24_8-.LJTI24_0
	.word	.LBB24_12-.LJTI24_0
	.word	.LBB24_13-.LJTI24_0
	.word	.LBB24_11-.LJTI24_0
	.word	.LBB24_15-.LJTI24_0
	.word	.LBB24_17-.LJTI24_0
	.word	.LBB24_14-.LJTI24_0
                                        # -- End function
	.text
	.globl	PDFFile_Init                    # -- Begin function PDFFile_Init
	.p2align	5
	.type	PDFFile_Init,@function
PDFFile_Init:                           # @PDFFile_Init
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
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	ori	$s6, $zero, 1
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_next_objnum)
	st.w	$s6, $a0, %pc_lo12(g_next_objnum)
	pcalau12i	$a0, %pc_hi20(g_obj_offset_list)
	st.d	$zero, $a0, %pc_lo12(g_obj_offset_list)
	pcalau12i	$a0, %pc_hi20(g_cur_obj_offset_block)
	st.d	$zero, $a0, %pc_lo12(g_cur_obj_offset_block)
	pcalau12i	$a0, %pc_hi20(g_font_list)
	st.d	$zero, $a0, %pc_lo12(g_font_list)
	pcalau12i	$a0, %pc_hi20(g_font_encoding_list)
	st.d	$zero, $a0, %pc_lo12(g_font_encoding_list)
	pcalau12i	$a0, %pc_hi20(g_page_count)
	st.w	$zero, $a0, %pc_lo12(g_page_count)
	pcalau12i	$a0, %pc_hi20(g_page_block_list)
	st.d	$zero, $a0, %pc_lo12(g_page_block_list)
	pcalau12i	$a0, %pc_hi20(g_cur_page_block)
	st.d	$zero, $a0, %pc_lo12(g_cur_page_block)
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(g_pages_root)
	st.w	$a0, $a1, %pc_lo12(g_pages_root)
	pcalau12i	$a0, %pc_hi20(g_doc_h_bound)
	st.w	$s4, $a0, %pc_lo12(g_doc_h_bound)
	pcalau12i	$a0, %pc_hi20(g_doc_v_bound)
	st.w	$s3, $a0, %pc_lo12(g_doc_v_bound)
	pcalau12i	$a0, %pc_hi20(g_doc_author)
	st.d	$zero, $a0, %pc_lo12(g_doc_author)
	pcalau12i	$a0, %pc_hi20(g_doc_title)
	st.d	$zero, $a0, %pc_lo12(g_doc_title)
	pcalau12i	$a0, %pc_hi20(g_doc_subject)
	st.d	$zero, $a0, %pc_lo12(g_doc_subject)
	pcalau12i	$a0, %pc_hi20(g_doc_keywords)
	st.d	$zero, $a0, %pc_lo12(g_doc_keywords)
	pcalau12i	$a0, %pc_hi20(g_target_annot_list)
	st.d	$zero, $a0, %pc_lo12(g_target_annot_list)
	pcalau12i	$a0, %pc_hi20(g_has_exported_targets)
	st.b	$zero, $a0, %pc_lo12(g_has_exported_targets)
	pcalau12i	$a0, %pc_hi20(g_source_annot_list)
	st.d	$zero, $a0, %pc_lo12(g_source_annot_list)
	pcalau12i	$a0, %pc_hi20(g_units)
	addi.d	$a0, $a0, %pc_lo12(g_units)
	st.w	$s2, $a0, 0
	st.w	$s1, $a0, 4
	st.w	$s0, $a0, 8
	st.w	$fp, $a0, 12
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
.Lfunc_end25:
	.size	PDFFile_Init, .Lfunc_end25-PDFFile_Init
                                        # -- End function
	.globl	PDFFile_Cleanup                 # -- Begin function PDFFile_Cleanup
	.p2align	5
	.type	PDFFile_Cleanup,@function
PDFFile_Cleanup:                        # @PDFFile_Cleanup
# %bb.0:
	addi.d	$sp, $sp, -672
	st.d	$ra, $sp, 664                   # 8-byte Folded Spill
	st.d	$fp, $sp, 656                   # 8-byte Folded Spill
	st.d	$s0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s1, $sp, 640                   # 8-byte Folded Spill
	st.d	$s2, $sp, 632                   # 8-byte Folded Spill
	st.d	$s3, $sp, 624                   # 8-byte Folded Spill
	st.d	$s4, $sp, 616                   # 8-byte Folded Spill
	st.d	$s5, $sp, 608                   # 8-byte Folded Spill
	st.d	$s6, $sp, 600                   # 8-byte Folded Spill
	st.d	$s7, $sp, 592                   # 8-byte Folded Spill
	st.d	$s8, $sp, 584                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(g_source_annot_list)
	ld.d	$s0, $s7, %pc_lo12(g_source_annot_list)
	move	$fp, $a0
	beqz	$s0, .LBB26_9
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(g_target_annot_list)
	addi.d	$s3, $a0, %pc_lo12(g_target_annot_list)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s4, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s1, $a0, %pc_lo12(.L.str.75)
	b	.LBB26_4
	.p2align	4, , 16
.LBB26_2:                               # %PDFTargetAnnot_Find.exit
                                        #   in Loop: Header=BB26_4 Depth=1
	st.d	$s5, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(PDFSourceAnnot_Write)
	jirl	$ra, $ra, 0
.LBB26_3:                               # %PDFTargetAnnot_Find.exit.thread
                                        #   in Loop: Header=BB26_4 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB26_9
.LBB26_4:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_7 Depth 2
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB26_6
# %bb.5:                                #   in Loop: Header=BB26_4 Depth=1
	ld.d	$a4, $s4, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB26_6:                               # %Assert.exit
                                        #   in Loop: Header=BB26_4 Depth=1
	ld.d	$s2, $s0, 16
	move	$s5, $s3
	.p2align	4, , 16
.LBB26_7:                               #   Parent Loop BB26_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB26_3
# %bb.8:                                #   in Loop: Header=BB26_7 Depth=2
	ld.d	$a1, $s5, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB26_7
	b	.LBB26_2
.LBB26_9:                               # %._crit_edge
	pcalau12i	$s8, %pc_hi20(g_page_block_list)
	ld.d	$s1, $s8, %pc_lo12(g_page_block_list)
	pcalau12i	$s4, %pc_hi20(g_pages_root)
	ld.w	$a1, $s4, %pc_lo12(g_pages_root)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$a0, $a0, %pc_lo12(.L.str.172)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(g_page_count)
	ld.w	$a0, $s2, %pc_lo12(g_page_count)
	beqz	$a0, .LBB26_14
# %bb.10:                               # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$s0, $a0, %pc_lo12(.L.str.169)
	move	$s3, $zero
	ori	$s5, $zero, 63
	b	.LBB26_12
	.p2align	4, , 16
.LBB26_11:                              #   in Loop: Header=BB26_12 Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, %pc_lo12(g_page_count)
	addi.w	$s3, $s3, 1
	bgeu	$s3, $a2, .LBB26_15
.LBB26_12:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	andi	$s6, $s3, 63
	alsl.d	$a0, $s6, $s1, 2
	ld.w	$a2, $a0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bne	$s6, $s5, .LBB26_11
# %bb.13:                               #   in Loop: Header=BB26_12 Depth=1
	ld.d	$s1, $s1, 0
	b	.LBB26_11
.LBB26_14:
	move	$a2, $zero
.LBB26_15:                              # %PDFFile_WritePagesObject.exit
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a1, $a0, %pc_lo12(.L.str.173)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_doc_h_bound)
	ld.w	$a2, $a0, %pc_lo12(g_doc_h_bound)
	pcalau12i	$a0, %pc_hi20(g_doc_v_bound)
	ld.w	$a3, $a0, %pc_lo12(g_doc_v_bound)
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a1, $a0, %pc_lo12(.L.str.174)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(g_has_exported_targets)
	ld.bu	$a0, $s5, %pc_lo12(g_has_exported_targets)
                                        # implicit-def: $r24
	beqz	$a0, .LBB26_24
# %bb.16:
	pcalau12i	$a0, %pc_hi20(g_target_annot_list)
	ld.d	$s6, $a0, %pc_lo12(g_target_annot_list)
	bnez	$s6, .LBB26_18
# %bb.17:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB26_18:                              # %Assert.exit106
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB26_23
# %bb.19:                               # %.lr.ph123.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s0, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$s2, $a0, %pc_lo12(.L.str.169)
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$s3, $a0, %pc_lo12(.L.str.47)
	b	.LBB26_21
	.p2align	4, , 16
.LBB26_20:                              #   in Loop: Header=BB26_21 Depth=1
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB26_23
.LBB26_21:                              # %.lr.ph123
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, 36
	beqz	$a0, .LBB26_20
# %bb.22:                               #   in Loop: Header=BB26_21 Depth=1
	ld.d	$a2, $s6, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, 16
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB26_20
.LBB26_23:                              # %._crit_edge124
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB26_24:
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, %pc_lo12(g_pages_root)
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a1, $a0, %pc_lo12(.L.str.169)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, %pc_lo12(g_has_exported_targets)
	beqz	$a0, .LBB26_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$a2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a1, $a0, %pc_lo12(.L.str.169)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB26_26:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(PDFObject_WriteObj)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$s2, $a0, %pc_lo12(.L.str.54)
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_doc_author)
	ld.d	$a2, $a0, %pc_lo12(g_doc_author)
	beqz	$a2, .LBB26_28
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB26_28:
	pcalau12i	$a0, %pc_hi20(g_doc_title)
	ld.d	$a2, $a0, %pc_lo12(g_doc_title)
	beqz	$a2, .LBB26_30
# %bb.29:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB26_30:
	pcalau12i	$a0, %pc_hi20(g_doc_subject)
	ld.d	$a2, $a0, %pc_lo12(g_doc_subject)
	beqz	$a2, .LBB26_32
# %bb.31:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB26_32:
	pcalau12i	$a0, %pc_hi20(g_doc_keywords)
	ld.d	$a2, $a0, %pc_lo12(g_doc_keywords)
	beqz	$a2, .LBB26_34
# %bb.33:
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a1, $a0, %pc_lo12(.L.str.60)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB26_34:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(g_obj_offset_list)
	ld.d	$s1, $s0, %pc_lo12(g_obj_offset_list)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.176)
	addi.d	$a0, $a0, %pc_lo12(.L.str.176)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(g_next_objnum)
	ld.w	$a2, $s2, %pc_lo12(g_next_objnum)
	pcalau12i	$a0, %pc_hi20(.L.str.177)
	addi.d	$a1, $a0, %pc_lo12(.L.str.177)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.178)
	addi.d	$a0, $a0, %pc_lo12(.L.str.178)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(g_next_objnum)
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	beq	$a0, $s3, .LBB26_37
# %bb.35:
	bnez	$s1, .LBB26_37
# %bb.36:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(g_next_objnum)
.LBB26_37:                              # %Assert.exit.i
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB26_44
# %bb.38:                               # %.lr.ph.i107.preheader
	ori	$s7, $zero, 256
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$s3, $a0, %pc_lo12(.L.str.179)
	pcalau12i	$a0, %pc_hi20(.L.str.180)
	addi.d	$s8, $a0, %pc_lo12(.L.str.180)
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$s5, $a0, %pc_lo12(.L.str.68)
	b	.LBB26_40
	.p2align	4, , 16
.LBB26_39:                              #   in Loop: Header=BB26_40 Depth=1
	ld.w	$a0, $s2, %pc_lo12(g_next_objnum)
	addi.w	$a1, $s7, -254
	addi.d	$s7, $s7, 1
	bgeu	$a1, $a0, .LBB26_44
.LBB26_40:                              # %.lr.ph.i107
                                        # =>This Inner Loop Header: Depth=1
	andi	$a0, $s7, 255
	alsl.d	$s4, $a0, $s1, 2
	ld.w	$a2, $s4, 8
	addi.w	$s6, $s7, -255
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	beqz	$a0, .LBB26_42
# %bb.41:                               #   in Loop: Header=BB26_40 Depth=1
	andi	$a0, $s6, 255
	bnez	$a0, .LBB26_39
	b	.LBB26_43
	.p2align	4, , 16
.LBB26_42:                              #   in Loop: Header=BB26_40 Depth=1
	ld.d	$a0, $s8, 37
	ld.d	$a1, $s8, 32
	vld	$vr0, $s8, 16
	vld	$vr1, $s8, 0
	st.d	$a0, $sp, 109
	st.d	$a1, $sp, 104
	vst	$vr0, $sp, 88
	vst	$vr1, $sp, 72
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 72
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s6
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 39
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 72
	move	$a2, $s5
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	andi	$a0, $s6, 255
	bnez	$a0, .LBB26_39
.LBB26_43:                              #   in Loop: Header=BB26_40 Depth=1
	ld.d	$s1, $s1, 0
	b	.LBB26_39
.LBB26_44:                              # %PDFFile_WriteXREF.exit
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, %pc_lo12(g_next_objnum)
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$s3, $a0, %pc_lo12(.L.str.169)
	move	$a0, $fp
	move	$a1, $s3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(g_obj_offset_list)
	beqz	$a0, .LBB26_46
	.p2align	4, , 16
.LBB26_45:                              # %.lr.ph126
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	st.d	$fp, $s0, %pc_lo12(g_obj_offset_list)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB26_45
.LBB26_46:                              # %.preheader116
	pcalau12i	$s0, %pc_hi20(g_font_encoding_list)
	ld.d	$fp, $s0, %pc_lo12(g_font_encoding_list)
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	beqz	$fp, .LBB26_48
	.p2align	4, , 16
.LBB26_47:                              # %.lr.ph128
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	st.d	$a1, $s0, %pc_lo12(g_font_encoding_list)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(g_font_encoding_list)
	bnez	$fp, .LBB26_47
.LBB26_48:                              # %.preheader115
	pcalau12i	$s0, %pc_hi20(g_font_list)
	ld.d	$fp, $s0, %pc_lo12(g_font_list)
	beqz	$fp, .LBB26_50
	.p2align	4, , 16
.LBB26_49:                              # %.lr.ph130
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 8
	st.d	$a1, $s0, %pc_lo12(g_font_list)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(g_font_list)
	bnez	$fp, .LBB26_49
.LBB26_50:                              # %thread-pre-split
	ld.d	$a0, $s1, %pc_lo12(g_page_block_list)
	beqz	$a0, .LBB26_52
	.p2align	4, , 16
.LBB26_51:                              # %.lr.ph132
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	st.d	$fp, $s1, %pc_lo12(g_page_block_list)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB26_51
.LBB26_52:                              # %thread-pre-split111
	ld.d	$fp, $s4, %pc_lo12(g_source_annot_list)
	beqz	$fp, .LBB26_61
# %bb.53:
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$s1, $a0, %pc_lo12(.L.str.67)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s2, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$s0, $a0, %pc_lo12(.L.str.68)
	b	.LBB26_55
	.p2align	4, , 16
.LBB26_54:                              # %PDFSourceAnnot_Dispose.exit
                                        #   in Loop: Header=BB26_55 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s3, $s4, %pc_lo12(g_source_annot_list)
	move	$fp, $s3
	beqz	$s3, .LBB26_61
.LBB26_55:                              # %.lr.ph134
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB26_60
# %bb.56:                               #   in Loop: Header=BB26_55 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$s3, $fp, 0
	beqz	$a0, .LBB26_58
.LBB26_57:                              #   in Loop: Header=BB26_55 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB26_58:                              #   in Loop: Header=BB26_55 Depth=1
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB26_54
# %bb.59:                               #   in Loop: Header=BB26_55 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB26_54
	.p2align	4, , 16
.LBB26_60:                              #   in Loop: Header=BB26_55 Depth=1
	ld.w	$a0, $s1, 47
	vld	$vr0, $s1, 32
	vld	$vr1, $s1, 16
	st.w	$a0, $sp, 119
	vst	$vr0, $sp, 104
	vst	$vr1, $sp, 88
	vld	$vr0, $s1, 0
	ld.d	$a1, $fp, 16
	vst	$vr0, $sp, 72
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s2, 0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 40
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 72
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$s3, $fp, 0
	bnez	$a0, .LBB26_57
	b	.LBB26_58
.LBB26_61:                              # %.preheader
	pcalau12i	$s0, %pc_hi20(g_target_annot_list)
	ld.d	$fp, $s0, %pc_lo12(g_target_annot_list)
	beqz	$fp, .LBB26_63
	.p2align	4, , 16
.LBB26_62:                              # %.lr.ph136
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 8
	st.d	$a1, $s0, %pc_lo12(g_target_annot_list)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(g_target_annot_list)
	bnez	$fp, .LBB26_62
.LBB26_63:                              # %._crit_edge137
	ld.d	$s8, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 648                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 656                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 664                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 672
	ret
.Lfunc_end26:
	.size	PDFFile_Cleanup, .Lfunc_end26-PDFFile_Cleanup
                                        # -- End function
	.p2align	5                               # -- Begin function PDFPage_EvalExpr
	.type	PDFPage_EvalExpr,@function
PDFPage_EvalExpr:                       # @PDFPage_EvalExpr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$s2, $a0, 0
	addi.d	$a0, $s0, -2
	.p2align	4, , 16
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $a0, 2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 50
	addi.d	$a0, $a0, 1
	bltz	$a1, .LBB27_1
# %bb.2:                                # %.preheader89.preheader
	ori	$a2, $zero, 95
	.p2align	4, , 16
.LBB27_3:                               # %.preheader89
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	beq	$a1, $a2, .LBB27_3
# %bb.4:                                # %.preheader89
	ori	$a2, $zero, 43
	bne	$a1, $a2, .LBB27_7
	.p2align	4, , 16
.LBB27_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 1
	addi.d	$s0, $a0, 1
	move	$a0, $s0
	beq	$a1, $a2, .LBB27_5
# %bb.6:                                # %._crit_edge
	ori	$a0, $zero, 46
	bne	$a1, $a0, .LBB27_8
	b	.LBB27_12
.LBB27_7:                               # %._crit_edge.loopexit147
	move	$s0, $a0
	ori	$a0, $zero, 46
	beq	$a1, $a0, .LBB27_12
.LBB27_8:                               # %._crit_edge
	ext.w.b	$a0, $a1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s2, $a0
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB27_12
# %bb.9:
	ori	$a0, $zero, 45
	bne	$a1, $a0, .LBB27_24
# %bb.10:
	addi.d	$a0, $s0, 1
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(PDFPage_EvalExpr)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 20
	move	$s0, $a0
	fneg.s	$fa0, $fa0
.LBB27_11:                              # %PDFPage_GetFloat.exit
	fst.s	$fa0, $fp, 0
	b	.LBB27_23
.LBB27_12:
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB27_21
# %bb.13:                               # %.preheader.i
	ld.d	$a0, $s1, 0
	.p2align	4, , 16
.LBB27_14:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 50
	addi.d	$s0, $s0, 1
	bltz	$a2, .LBB27_14
# %bb.15:
	ori	$a2, $zero, 43
	beq	$a1, $a2, .LBB27_18
# %bb.16:
	ori	$a2, $zero, 45
	beq	$a1, $a2, .LBB27_18
# %bb.17:                               # %..critedge.i.preheader_crit_edge
	addi.d	$s0, $s0, -1
.LBB27_18:                              # %.critedge.i.preheader
	addi.d	$s0, $s0, -1
	ori	$a1, $zero, 46
	.p2align	4, , 16
.LBB27_19:                              # %.critedge.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s0, 1
	addi.d	$s0, $s0, 1
	beq	$a2, $a1, .LBB27_19
# %bb.20:                               # %.critedge.i
                                        #   in Loop: Header=BB27_19 Depth=1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	andi	$a2, $a2, 2048
	bnez	$a2, .LBB27_19
	b	.LBB27_23
.LBB27_21:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a2, $a0, %pc_lo12(.L.str.86)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 21
.LBB27_22:                              # %PDFPage_GetFloat.exit
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB27_23:                              # %PDFPage_GetFloat.exit
	move	$a0, $s0
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB27_24:                              # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	ori	$a2, $zero, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_43
# %bb.25:                               # %.preheader.1
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	ori	$a2, $zero, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_44
# %bb.26:                               # %.preheader.2
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	ori	$a2, $zero, 3
	ori	$s1, $zero, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_45
# %bb.27:                               # %.preheader.3
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	ori	$a2, $zero, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_49
# %bb.28:                               # %.preheader.4
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	ori	$a2, $zero, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_46
# %bb.29:                               # %.preheader.5
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	ori	$a2, $zero, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_47
# %bb.30:                               # %.preheader.6
	ld.w	$a0, $s0, 0
	lu12i.w	$a1, 439862
	ori	$a1, $a1, 2416
	beq	$a0, $a1, .LBB27_48
# %bb.31:                               # %PDFKeyword_Find.exit.thread.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	ori	$a2, $zero, 5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_74
# %bb.32:                               # %PDFKeyword_Find.exit.thread.1
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	ori	$a2, $zero, 5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_75
# %bb.33:                               # %PDFKeyword_Find.exit.thread.2
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	ori	$a2, $zero, 5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_76
# %bb.34:                               # %PDFKeyword_Find.exit.thread.3
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	ori	$a2, $zero, 5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_77
# %bb.35:                               # %PDFKeyword_Find.exit78.thread.preheader
	ld.hu	$a1, $s0, 0
	lu12i.w	$a0, 6
	ori	$a2, $a0, 3689
	beq	$a1, $a2, .LBB27_80
# %bb.36:                               # %PDFKeyword_Find.exit78.thread.1
	ld.hu	$a1, $s0, 0
	ori	$a2, $a0, 3427
	beq	$a1, $a2, .LBB27_81
# %bb.37:                               # %PDFKeyword_Find.exit78.thread.2
	ld.hu	$a1, $s0, 0
	lu12i.w	$a2, 7
	ori	$a2, $a2, 1136
	beq	$a1, $a2, .LBB27_82
# %bb.38:                               # %PDFKeyword_Find.exit78.thread.3
	ld.hu	$a1, $s0, 0
	ori	$a0, $a0, 3429
	beq	$a1, $a0, .LBB27_83
# %bb.39:                               # %PDFKeyword_Find.exit78.thread.4
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	ori	$a2, $zero, 5
	ori	$s1, $zero, 5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_84
# %bb.40:                               # %PDFKeyword_Find.exit78.thread.5
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a2, $zero, 5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_86
# %bb.41:                               # %PDFKeyword_Find.exit78.thread.6
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	ori	$a2, $zero, 5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_85
# %bb.42:                               # %PDFKeyword_Find.exit84.thread
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a2, $a0, %pc_lo12(.L.str.84)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 33
	b	.LBB27_22
.LBB27_43:
	move	$s1, $zero
	b	.LBB27_49
.LBB27_44:
	ori	$s1, $zero, 1
	b	.LBB27_49
.LBB27_45:
	ori	$s1, $zero, 2
	b	.LBB27_49
.LBB27_46:
	ori	$s1, $zero, 4
	b	.LBB27_49
.LBB27_47:
	ori	$s1, $zero, 5
	b	.LBB27_49
.LBB27_48:
	ori	$s1, $zero, 6
.LBB27_49:                              # %PDFKeyword_Find.exit
	slli.d	$a0, $s1, 3
	pcalau12i	$a1, %pc_hi20(g_arithmetic_keywords)
	addi.d	$a1, $a1, %pc_lo12(g_arithmetic_keywords)
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
	.p2align	4, , 16
.LBB27_50:                              # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $s0, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 50
	addi.d	$s0, $s0, 1
	bltz	$a1, .LBB27_50
# %bb.51:
	andi	$a0, $a0, 255
	ori	$a1, $zero, 40
	beq	$a0, $a1, .LBB27_53
# %bb.52:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a2, $a0, %pc_lo12(.L.str.81)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 30
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB27_53:
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(PDFPage_EvalExpr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	ori	$s0, $zero, 1
	bgeu	$s1, $a1, .LBB27_59
.LBB27_54:                              # %Assert.exit
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 44
	beq	$a1, $a2, .LBB27_56
# %bb.55:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.82)
	addi.d	$a2, $a1, %pc_lo12(.L.str.82)
	move	$s2, $a0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 31
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB27_56:
	addi.d	$a0, $a0, 1
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(PDFPage_EvalExpr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$s0, $a1, .LBB27_62
# %bb.57:                               # %.lr.ph105.preheader
	addi.d	$s0, $s0, -1
	.p2align	4, , 16
.LBB27_58:                              # %.lr.ph105
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a1, $a1, -44
	sltui	$a1, $a1, 1
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(PDFPage_EvalExpr)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB27_58
	b	.LBB27_62
.LBB27_59:
	ori	$a1, $zero, 6
	bne	$s1, $a1, .LBB27_62
# %bb.60:
	fld.s	$fa0, $sp, 16
	vreplvei.w	$vr0, $vr0, 0
	vfrintrm.s	$vr0, $vr0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$s0, $fa0
	bnez	$s0, .LBB27_54
# %bb.61:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.75)
	addi.d	$a2, $a1, %pc_lo12(.L.str.75)
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$s0, $zero
	b	.LBB27_54
.LBB27_62:                              # %.thread
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 41
	beq	$a1, $a2, .LBB27_64
# %bb.63:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a2, $a1, %pc_lo12(.L.str.83)
	move	$s0, $a0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 32
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB27_64:
	addi.d	$s0, $a0, 1
	slli.d	$a0, $s1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI27_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI27_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB27_65:
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 12
	fadd.s	$fa0, $fa0, $fa1
	b	.LBB27_11
.LBB27_66:
	fld.s	$fa0, $sp, 16
	fcvt.d.s	$fa0, $fa0
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 425984
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	b	.LBB27_11
.LBB27_67:
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 12
	fmul.s	$fa0, $fa0, $fa1
	b	.LBB27_11
.LBB27_68:
	fld.s	$fa0, $sp, 12
	movgr2fr.w	$fa1, $zero
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB27_70
# %bb.69:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 12
.LBB27_70:                              # %Assert.exit72
	fld.s	$fa1, $sp, 16
	fdiv.s	$fa0, $fa1, $fa0
	b	.LBB27_11
.LBB27_71:
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 12
	fsub.s	$fa0, $fa0, $fa1
	b	.LBB27_11
.LBB27_72:
	fld.s	$fa0, $sp, 16
	fcvt.d.s	$fa0, $fa0
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 425984
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	b	.LBB27_11
.LBB27_73:
	fld.s	$fa0, $sp, 12
	b	.LBB27_11
.LBB27_74:
	move	$s1, $zero
	b	.LBB27_78
.LBB27_75:
	ori	$s1, $zero, 1
	b	.LBB27_78
.LBB27_76:
	ori	$s1, $zero, 2
	b	.LBB27_78
.LBB27_77:
	ori	$s1, $zero, 3
.LBB27_78:                              # %PDFKeyword_Find.exit78
	slli.d	$a0, $s1, 3
	pcalau12i	$a1, %pc_hi20(g_graphic_keywords)
	addi.d	$a1, $a1, %pc_lo12(g_graphic_keywords)
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
	slli.d	$a0, $s1, 2
	pcalau12i	$a1, %pc_hi20(g_graphics_vars)
	addi.d	$a1, $a1, %pc_lo12(g_graphics_vars)
.LBB27_79:                              # %PDFPage_GetFloat.exit
	ldx.w	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	b	.LBB27_11
.LBB27_80:
	move	$s1, $zero
	b	.LBB27_86
.LBB27_81:
	ori	$s1, $zero, 1
	b	.LBB27_86
.LBB27_82:
	ori	$s1, $zero, 2
	b	.LBB27_86
.LBB27_83:
	ori	$s1, $zero, 3
	b	.LBB27_86
.LBB27_84:
	ori	$s1, $zero, 4
	b	.LBB27_86
.LBB27_85:
	ori	$s1, $zero, 6
.LBB27_86:                              # %PDFKeyword_Find.exit84
	slli.d	$a0, $s1, 3
	pcalau12i	$a1, %pc_hi20(g_unit_keywords)
	addi.d	$a1, $a1, %pc_lo12(g_unit_keywords)
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
	slli.d	$a0, $s1, 2
	pcalau12i	$a1, %pc_hi20(g_units)
	addi.d	$a1, $a1, %pc_lo12(g_units)
	b	.LBB27_79
.Lfunc_end27:
	.size	PDFPage_EvalExpr, .Lfunc_end27-PDFPage_EvalExpr
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI27_0:
	.word	.LBB27_65-.LJTI27_0
	.word	.LBB27_71-.LJTI27_0
	.word	.LBB27_67-.LJTI27_0
	.word	.LBB27_68-.LJTI27_0
	.word	.LBB27_66-.LJTI27_0
	.word	.LBB27_72-.LJTI27_0
	.word	.LBB27_73-.LJTI27_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function PDFSourceAnnot_New
	.type	PDFSourceAnnot_New,@function
PDFSourceAnnot_New:                     # @PDFSourceAnnot_New
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
	move	$s1, $a6
	move	$s3, $a5
	move	$s4, $a4
	move	$s5, $a3
	move	$s6, $a2
	move	$s0, $a1
	move	$s2, $a0
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB28_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a2, $a0, %pc_lo12(.L.str.106)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 19
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB28_2:
	st.w	$s6, $fp, 32
	st.w	$s5, $fp, 36
	st.w	$s4, $fp, 40
	st.w	$s3, $fp, 44
	pcaddu18i	$ra, %call36(PDFObject_New)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(g_page_object_num)
	ld.w	$a1, $a1, %pc_lo12(g_page_object_num)
	st.w	$a0, $fp, 48
	st.w	$a1, $fp, 52
	ori	$a0, $zero, 8
	st.w	$s2, $fp, 60
	bltu	$s1, $a0, .LBB28_4
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB28_4:                               # %Assert.exit
	st.w	$s1, $fp, 56
	st.d	$zero, $fp, 24
	st.w	$zero, $fp, 64
	beqz	$s2, .LBB28_9
.LBB28_5:                               # %.loopexit
	st.d	$zero, $fp, 8
	addi.d	$a0, $s0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $fp, 16
	bnez	$a0, .LBB28_7
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a2, $a0, %pc_lo12(.L.str.106)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 20
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB28_7:
	bstrpick.d	$s0, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(g_link)
	addi.d	$a1, $a0, %pc_lo12(g_link)
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s1, $s0
.LBB28_8:
	pcalau12i	$a0, %pc_hi20(g_source_annot_list)
	ld.d	$a1, $a0, %pc_lo12(g_source_annot_list)
	st.d	$a1, $fp, 0
	st.d	$fp, $a0, %pc_lo12(g_source_annot_list)
	move	$a0, $fp
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
.LBB28_9:                               # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(g_target_annot_list)
	addi.d	$s2, $a0, %pc_lo12(g_target_annot_list)
	pcalau12i	$a0, %pc_hi20(g_link)
	addi.d	$s1, $a0, %pc_lo12(g_link)
	.p2align	4, , 16
.LBB28_10:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB28_5
# %bb.11:                               #   in Loop: Header=BB28_10 Depth=1
	ld.d	$a1, $s2, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB28_10
# %bb.12:                               # %PDFTargetAnnot_Find.exit
	st.d	$s2, $fp, 8
	st.d	$zero, $fp, 16
	b	.LBB28_8
.Lfunc_end28:
	.size	PDFSourceAnnot_New, .Lfunc_end28-PDFSourceAnnot_New
                                        # -- End function
	.p2align	5                               # -- Begin function PDFObject_New
	.type	PDFObject_New,@function
PDFObject_New:                          # @PDFObject_New
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(g_next_objnum)
	ld.w	$a0, $s0, %pc_lo12(g_next_objnum)
	addi.w	$s2, $a0, -1
	andi	$s1, $s2, 255
	beqz	$s1, .LBB29_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(g_cur_obj_offset_block)
	ld.d	$fp, $a0, %pc_lo12(g_cur_obj_offset_block)
	bnez	$fp, .LBB29_11
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB29_3:
	ori	$a0, $zero, 1032
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB29_7
# %bb.4:
	ori	$a0, $zero, 255
	bltu	$a0, $s2, .LBB29_8
.LBB29_5:
	pcalau12i	$a0, %pc_hi20(g_obj_offset_list)
	addi.d	$s2, $a0, %pc_lo12(g_obj_offset_list)
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB29_10
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB29_10
.LBB29_7:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a2, $a0, %pc_lo12(.L.str.133)
	ori	$a0, $zero, 48
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 255
	bgeu	$a0, $s2, .LBB29_5
.LBB29_8:
	pcalau12i	$s3, %pc_hi20(g_cur_obj_offset_block)
	ld.d	$s2, $s3, %pc_lo12(g_cur_obj_offset_block)
	bnez	$s2, .LBB29_10
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$a5, $a4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(g_cur_obj_offset_block)
.LBB29_10:                              # %Assert.exit
	st.d	$fp, $s2, 0
	st.d	$zero, $fp, 0
	pcalau12i	$a0, %pc_hi20(g_cur_obj_offset_block)
	st.d	$fp, $a0, %pc_lo12(g_cur_obj_offset_block)
.LBB29_11:                              # %Assert.exit12
	alsl.d	$a0, $s1, $fp, 2
	st.w	$zero, $a0, 8
	ld.w	$a0, $s0, %pc_lo12(g_next_objnum)
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, %pc_lo12(g_next_objnum)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end29:
	.size	PDFObject_New, .Lfunc_end29-PDFObject_New
                                        # -- End function
	.type	g_valid_text_matrix,@object     # @g_valid_text_matrix
	.local	g_valid_text_matrix
	.comm	g_valid_text_matrix,1,4
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"<<\n/Type /Encoding\n/Differences [ 0\n"
	.size	.L.str.1, 37

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"PDFFile_BeginFontEncoding: run out of memory"
	.size	.L.str.2, 45

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"PDFFile_BeginFontEncoding: out of memory"
	.size	.L.str.3, 41

	.type	g_font_encoding_list,@object    # @g_font_encoding_list
	.local	g_font_encoding_list
	.comm	g_font_encoding_list,8,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"]\n>>\nendobj\n"
	.size	.L.str.4, 13

	.type	g_graphics_vars,@object         # @g_graphics_vars
	.local	g_graphics_vars
	.comm	g_graphics_vars,16,8
	.type	g_units,@object                 # @g_units
	.local	g_units
	.comm	g_units,28,4
	.type	g_in_buffering_mode,@object     # @g_in_buffering_mode
	.local	g_in_buffering_mode
	.comm	g_in_buffering_mode,1,4
	.type	g_buffer_pos,@object            # @g_buffer_pos
	.local	g_buffer_pos
	.comm	g_buffer_pos,4,4
	.type	g_buffer,@object                # @g_buffer
	.local	g_buffer
	.comm	g_buffer,1024,1
	.type	g_TJ_pending,@object            # @g_TJ_pending
	.local	g_TJ_pending
	.comm	g_TJ_pending,1,4
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	")]TJ\n"
	.size	.L.str.5, 6

	.type	g_ET_pending,@object            # @g_ET_pending
	.local	g_ET_pending
	.comm	g_ET_pending,1,4
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ET\n"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"PDFPage_Push: run out of memory"
	.size	.L.str.7, 32

	.type	g_page_h_origin,@object         # @g_page_h_origin
	.local	g_page_h_origin
	.comm	g_page_h_origin,4,4
	.type	g_page_v_origin,@object         # @g_page_v_origin
	.local	g_page_v_origin
	.comm	g_page_v_origin,4,4
	.type	g_qsave_stack,@object           # @g_qsave_stack
	.local	g_qsave_stack
	.comm	g_qsave_stack,8,8
	.type	g_qsave_marking_stack,@object   # @g_qsave_marking_stack
	.local	g_qsave_marking_stack
	.comm	g_qsave_marking_stack,8,8
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"q\n"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\nQ\n"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"cannot find font entry for name %s"
	.size	.L.str.10, 35

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s %u Tf\n"
	.size	.L.str.11, 10

	.type	g_page_uses_fonts,@object       # @g_page_uses_fonts
	.local	g_page_uses_fonts
	.comm	g_page_uses_fonts,1,4
	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	")%d("
	.size	.L.str.12, 5

	.type	g_page_contents_obj_num,@object # @g_page_contents_obj_num
	.local	g_page_contents_obj_num
	.comm	g_page_contents_obj_num,4,4
	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%.2f 0 0 %.2f 0 0 cm\n"
	.size	.L.str.13, 22

	.type	g_page_h_scale_factor,@object   # @g_page_h_scale_factor
	.local	g_page_h_scale_factor
	.comm	g_page_h_scale_factor,4,4
	.type	g_page_v_scale_factor,@object   # @g_page_v_scale_factor
	.local	g_page_v_scale_factor
	.comm	g_page_v_scale_factor,4,4
	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%.2f %.2f %.2f %.2f 0 0 cm\n"
	.size	.L.str.14, 28

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"1 0 0 1 %.2f %.2f cm\n"
	.size	.L.str.15, 22

	.type	g_expr_depth,@object            # @g_expr_depth
	.local	g_expr_depth
	.comm	g_expr_depth,4,4
	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%.2f"
	.size	.L.str.16, 5

	.type	g_link_depth,@object            # @g_link_depth
	.local	g_link_depth
	.comm	g_link_depth,4,4
	.type	g_graphic_keywords,@object      # @g_graphic_keywords
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
g_graphic_keywords:
	.dword	.L.str.109
	.dword	.L.str.110
	.dword	.L.str.111
	.dword	.L.str.112
	.size	g_graphic_keywords, 32

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"%d"
	.size	.L.str.17, 3

	.type	g_link_keywords,@object         # @g_link_keywords
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
g_link_keywords:
	.dword	.L.str.113
	.dword	.L.str.114
	.dword	.L.str.115
	.dword	.L.str.116
	.dword	.L.str.117
	.size	g_link_keywords, 40

	.type	g_link_index,@object            # @g_link_index
	.local	g_link_index
	.comm	g_link_index,4,4
	.type	g_link_keyword,@object          # @g_link_keyword
	.local	g_link_keyword
	.comm	g_link_keyword,4,4
	.type	g_arithmetic_keywords,@object   # @g_arithmetic_keywords
	.p2align	3, 0x0
g_arithmetic_keywords:
	.dword	.L.str.126
	.dword	.L.str.127
	.dword	.L.str.128
	.dword	.L.str.129
	.dword	.L.str.130
	.dword	.L.str.131
	.dword	.L.str.132
	.size	g_arithmetic_keywords, 56

	.type	g_expr,@object                  # @g_expr
	.local	g_expr
	.comm	g_expr,512,1
	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"PDFPage_WriteGraphic: '(' expected"
	.size	.L.str.18, 35

	.type	g_expr_index,@object            # @g_expr_index
	.local	g_expr_index
	.comm	g_expr_index,4,4
	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"PDFPage_WriteGraphic: '__' encountered while processing @Graphic"
	.size	.L.str.20, 65

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"q %d w %d %d m %d %d l s Q\n"
	.size	.L.str.21, 28

	.type	g_page_has_text,@object         # @g_page_has_text
	.local	g_page_has_text
	.comm	g_page_has_text,1,4
	.type	g_page_length_obj_num,@object   # @g_page_length_obj_num
	.local	g_page_length_obj_num
	.comm	g_page_length_obj_num,4,4
	.type	g_page_start_offset,@object     # @g_page_start_offset
	.local	g_page_start_offset
	.comm	g_page_start_offset,4,4
	.type	g_page_line_width,@object       # @g_page_line_width
	.local	g_page_line_width
	.comm	g_page_line_width,4,4
	.type	g_font_list,@object             # @g_font_list
	.local	g_font_list
	.comm	g_font_list,8,8
	.type	g_page_count,@object            # @g_page_count
	.local	g_page_count
	.comm	g_page_count,4,4
	.type	g_page_object_num,@object       # @g_page_object_num
	.local	g_page_object_num
	.comm	g_page_object_num,4,4
	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"%u\nendobj\n"
	.size	.L.str.23, 11

	.type	g_source_annot_list,@object     # @g_source_annot_list
	.local	g_source_annot_list
	.comm	g_source_annot_list,8,8
	.type	g_cur_page_block,@object        # @g_cur_page_block
	.local	g_cur_page_block
	.comm	g_cur_page_block,8,8
	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"PDFPage_Cleanup: run out of memory"
	.size	.L.str.24, 35

	.type	g_page_block_list,@object       # @g_page_block_list
	.local	g_page_block_list
	.comm	g_page_block_list,8,8
	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"<<\n/Type /Page\n"
	.size	.L.str.26, 16

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"/CropBox [ 0 0 %u %u ]\n"
	.size	.L.str.27, 24

	.type	g_doc_h_bound,@object           # @g_doc_h_bound
	.local	g_doc_h_bound
	.comm	g_doc_h_bound,4,4
	.type	g_doc_v_bound,@object           # @g_doc_v_bound
	.local	g_doc_v_bound
	.comm	g_doc_v_bound,4,4
	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"/Parent "
	.size	.L.str.28, 9

	.type	g_pages_root,@object            # @g_pages_root
	.local	g_pages_root
	.comm	g_pages_root,4,4
	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"/Contents "
	.size	.L.str.30, 11

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"/Resources\n<<\n"
	.size	.L.str.31, 15

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"/Font <<"
	.size	.L.str.32, 9

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	" %s "
	.size	.L.str.33, 5

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	" >>\n"
	.size	.L.str.34, 5

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"/ProcSet [ /PDF"
	.size	.L.str.35, 16

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	" /Text"
	.size	.L.str.36, 7

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	" ]\n"
	.size	.L.str.37, 4

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	">>\n"
	.size	.L.str.38, 4

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"/Annots ["
	.size	.L.str.39, 10

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	">>\nendobj\n"
	.size	.L.str.41, 11

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"%PDF-1.2\n"
	.size	.L.str.42, 10

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"%\342\343\317\323\n"
	.size	.L.str.43, 7

	.type	g_next_objnum,@object           # @g_next_objnum
	.local	g_next_objnum
	.comm	g_next_objnum,4,4
	.type	g_obj_offset_list,@object       # @g_obj_offset_list
	.local	g_obj_offset_list
	.comm	g_obj_offset_list,8,8
	.type	g_cur_obj_offset_block,@object  # @g_cur_obj_offset_block
	.local	g_cur_obj_offset_block
	.comm	g_cur_obj_offset_block,8,8
	.type	g_doc_author,@object            # @g_doc_author
	.local	g_doc_author
	.comm	g_doc_author,8,8
	.type	g_doc_title,@object             # @g_doc_title
	.local	g_doc_title
	.comm	g_doc_title,8,8
	.type	g_doc_subject,@object           # @g_doc_subject
	.local	g_doc_subject
	.comm	g_doc_subject,8,8
	.type	g_doc_keywords,@object          # @g_doc_keywords
	.local	g_doc_keywords
	.comm	g_doc_keywords,8,8
	.type	g_target_annot_list,@object     # @g_target_annot_list
	.local	g_target_annot_list
	.comm	g_target_annot_list,8,8
	.type	g_has_exported_targets,@object  # @g_has_exported_targets
	.local	g_has_exported_targets
	.comm	g_has_exported_targets,1,4
	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"<<\n"
	.size	.L.str.45, 4

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"/%s [ "
	.size	.L.str.46, 7

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	" /XYZ null null null ]\n"
	.size	.L.str.47, 24

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"/Type /Catalog\n"
	.size	.L.str.49, 16

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"/Pages "
	.size	.L.str.50, 8

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"/Dests "
	.size	.L.str.51, 8

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"/Creator (%s)\n"
	.size	.L.str.53, 15

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Basser Lout Version 3.24 (October 2000)"
	.size	.L.str.54, 40

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"/Producer (%s)\n"
	.size	.L.str.55, 16

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"/CreationDate (Sometime Today)\n"
	.size	.L.str.56, 32

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"/Author (%s)\n"
	.size	.L.str.57, 14

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"/Title (%s)\n"
	.size	.L.str.58, 13

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"/Subject (%s)\n"
	.size	.L.str.59, 15

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"/Keywords (%s)\n"
	.size	.L.str.60, 16

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"trailer\n<<\n"
	.size	.L.str.61, 12

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"/Size %u\n"
	.size	.L.str.62, 10

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"/Root "
	.size	.L.str.63, 7

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"\n/Info "
	.size	.L.str.64, 8

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	" >>\nstartxref\n%u\n"
	.size	.L.str.65, 18

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%%EOF\n"
	.size	.L.str.66, 7

	.type	.L.str.67,@object               # @.str.67
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.67:
	.asciz	"PDFFile_Cleanup: unresolved link annotation named "
	.size	.L.str.67, 51

	.type	.L.str.68,@object               # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"%s"
	.size	.L.str.68, 3

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"PDFFont_NewListEntry: run out of memory"
	.size	.L.str.69, 40

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"%u"
	.size	.L.str.70, 3

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"<< /Length "
	.size	.L.str.72, 12

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	" >>\nstream\n"
	.size	.L.str.73, 12

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"%u w\n"
	.size	.L.str.74, 6

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"assert failed in %s"
	.size	.L.str.75, 20

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"BT\n"
	.size	.L.str.76, 4

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"1 0 0 1 %d %d Tm\n"
	.size	.L.str.77, 18

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"%d 0 Td\n"
	.size	.L.str.78, 9

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"[("
	.size	.L.str.79, 3

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"PDFPage_CollectExpr: expression too long (max. 512 chars)"
	.size	.L.str.80, 58

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"PDFPage_EvalExpr: '(' expected"
	.size	.L.str.81, 31

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"PDFPage_EvalExpr: ',' expected"
	.size	.L.str.82, 31

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"PDFPage_EvalExpr: ')' expected"
	.size	.L.str.83, 31

	.type	g_unit_keywords,@object         # @g_unit_keywords
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
g_unit_keywords:
	.dword	.L.str.87
	.dword	.L.str.88
	.dword	.L.str.89
	.dword	.L.str.90
	.dword	.L.str.91
	.dword	.L.str.92
	.dword	.L.str.93
	.size	g_unit_keywords, 56

	.type	.L.str.84,@object               # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"PDFPage_EvalExpr: __add, __sub, __mul, __div, or a unit keyword was expected"
	.size	.L.str.84, 77

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"%f"
	.size	.L.str.85, 3

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"PDFPage_GetFloat: unable to evaluate number for Lout graphic keyword processing"
	.size	.L.str.86, 80

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"in"
	.size	.L.str.87, 3

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"cm"
	.size	.L.str.88, 3

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"pt"
	.size	.L.str.89, 3

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"em"
	.size	.L.str.90, 3

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"loutf"
	.size	.L.str.91, 6

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"loutv"
	.size	.L.str.92, 6

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"louts"
	.size	.L.str.93, 6

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"PDFPage_CollectLink: link too long (max. 512 chars)"
	.size	.L.str.94, 52

	.type	g_link,@object                  # @g_link
	.local	g_link
	.comm	g_link,512,8
	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"PDFPage_ProcessLinkKeyword: empty link-name / URI; ignored."
	.size	.L.str.95, 60

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"PDFPage_ProcessLinkKeyword: empty file spec"
	.size	.L.str.96, 44

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"PDFPage_ProcessLinkKeyword: out of memory"
	.size	.L.str.97, 42

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"__FitNoChange"
	.size	.L.str.98, 14

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"__Fit"
	.size	.L.str.99, 6

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"__FitH"
	.size	.L.str.100, 7

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"__FitV"
	.size	.L.str.101, 7

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"__FitR"
	.size	.L.str.102, 7

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"__FitB"
	.size	.L.str.103, 7

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"__FitBH"
	.size	.L.str.104, 8

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"__FitBV"
	.size	.L.str.105, 8

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"PDFSourceAnnot_New: run out of memory"
	.size	.L.str.106, 38

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"__link_to="
	.size	.L.str.107, 11

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"PDFTargetAnnot_New: run out of memory"
	.size	.L.str.108, 38

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"xsize"
	.size	.L.str.109, 6

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"ysize"
	.size	.L.str.110, 6

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"xmark"
	.size	.L.str.111, 6

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"ymark"
	.size	.L.str.112, 6

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"link_source=<<"
	.size	.L.str.113, 15

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"link_external=<<"
	.size	.L.str.114, 17

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"link_URI=<<"
	.size	.L.str.115, 12

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"link_target=<<"
	.size	.L.str.116, 15

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"link_target_for_export=<<"
	.size	.L.str.117, 26

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"author="
	.size	.L.str.118, 8

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"title="
	.size	.L.str.119, 7

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"subject="
	.size	.L.str.120, 9

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"keywords="
	.size	.L.str.121, 10

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"PDFPage_ProcessDocInfoKeyword: no memory for __author="
	.size	.L.str.122, 55

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"PDFPage_ProcessDocInfoKeyword: no memory for __title="
	.size	.L.str.123, 54

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"PDFPage_ProcessDocInfoKeyword: no memory for __subject="
	.size	.L.str.124, 56

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"PDFPage_ProcessDocInfoKeyword: no memory for __keywords="
	.size	.L.str.125, 57

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"add"
	.size	.L.str.126, 4

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"sub"
	.size	.L.str.127, 4

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"mul"
	.size	.L.str.128, 4

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"div"
	.size	.L.str.129, 4

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"sin"
	.size	.L.str.130, 4

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"cos"
	.size	.L.str.131, 4

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"pick"
	.size	.L.str.132, 5

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"PDFObject_New: run out of memory"
	.size	.L.str.133, 33

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"endstream\nendobj\n"
	.size	.L.str.134, 18

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"%u 0 obj\n"
	.size	.L.str.135, 10

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"<<\n/Type /Font\n/Subtype /Type1\n"
	.size	.L.str.137, 32

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"/Name %s\n"
	.size	.L.str.138, 10

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"/BaseFont /%s\n"
	.size	.L.str.139, 15

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"/Encoding "
	.size	.L.str.140, 11

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"<<\n/Type /Annot\n/Subtype /Link\n/Rect [ %d %d %d %d ]\n/Border [ 0 0 0 ]\n"
	.size	.L.str.156, 72

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"/Dest [ "
	.size	.L.str.157, 9

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	" /XYZ null null null"
	.size	.L.str.158, 21

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	" /Fit"
	.size	.L.str.159, 6

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	" /FitH %u"
	.size	.L.str.160, 10

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	" /FitV %u"
	.size	.L.str.161, 10

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	" /FitR %u %u %u %u"
	.size	.L.str.162, 19

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	" /FitB"
	.size	.L.str.163, 7

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	" /FitBH %u"
	.size	.L.str.164, 11

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	" /FitBV %u"
	.size	.L.str.165, 11

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"PDFSourceAnnot_Write: invalid link dest option"
	.size	.L.str.166, 47

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"/A << /Type /Action /S /GoToR /D (%s) /F\n(%s) >>\n"
	.size	.L.str.167, 50

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"/A << /Type /Action /S /URI /URI\n(%s) >>\n"
	.size	.L.str.168, 42

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"%u 0 R"
	.size	.L.str.169, 7

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"/Type /Pages\n"
	.size	.L.str.171, 14

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"/Kids [ "
	.size	.L.str.172, 9

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	" ]\n/Count %u\n"
	.size	.L.str.173, 14

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"/MediaBox [ 0 0 %u %u ]\n"
	.size	.L.str.174, 25

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"xref\n"
	.size	.L.str.176, 6

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"0 %u\n"
	.size	.L.str.177, 6

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"0000000000 65535 f \n"
	.size	.L.str.178, 21

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"%010u 00000 n \n"
	.size	.L.str.179, 16

	.type	.L.str.180,@object              # @.str.180
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.180:
	.asciz	"PDFFile_WriteXREF: undefined object number: "
	.size	.L.str.180, 45

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym g_buffer
	.addrsig_sym g_expr
	.addrsig_sym g_link
