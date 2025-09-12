	.file	"alabel.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function alabel
.LCPI0_0:
	.dword	0x3ff199999999999a              # double 1.1000000000000001
.LCPI0_1:
	.dword	0x4052000000000000              # double 72
.LCPI0_2:
	.dword	0x4054000000000000              # double 80
	.text
	.globl	alabel
	.p2align	5
	.type	alabel,@function
alabel:                                 # @alabel
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(draw_line)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	addi.d	$a0, $s1, -1
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $a0, 1
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a1, $a3
	slli.d	$a3, $a3, 50
	addi.d	$a0, $a0, 1
	bltz	$a3, .LBB0_1
# %bb.2:
	andi	$a1, $a2, 255
	beqz	$a1, .LBB0_4
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_0)
	addi.d	$a1, $s0, -116
	sltui	$a1, $a1, 1
	addi.d	$a2, $s0, -99
	sltui	$a2, $a2, 1
	vldi	$vr1, -928
	movgr2fr.d	$fa2, $zero
	movgr2cf	$fcc0, $a2
	fsel	$fa1, $fa2, $fa1, $fcc0
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	addi.d	$a1, $fp, -114
	sltui	$a1, $a1, 1
	addi.d	$a2, $fp, -99
	sltui	$a2, $a2, 1
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 2
	maskeqz	$a1, $a3, $a1
	or	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(font_id)
	ld.d	$a1, $a1, %got_pc_lo12(font_id)
	ld.w	$a3, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(font_size)
	ld.d	$a1, $a1, %got_pc_lo12(font_size)
	ld.w	$a4, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(text_rotation)
	ld.d	$a1, $a1, %got_pc_lo12(text_rotation)
	fld.s	$fa1, $a1, 0
	fcvt.d.s	$fa1, $fa1
	pcalau12i	$a1, %got_pc_hi20(last_x)
	ld.d	$a1, $a1, %got_pc_lo12(last_x)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	pcalau12i	$a1, %got_pc_hi20(x_input_min)
	ld.d	$a1, $a1, %got_pc_lo12(x_input_min)
	fld.d	$fa3, $a1, 0
	fsub.d	$fa2, $fa2, $fa3
	pcalau12i	$a1, %got_pc_hi20(x_scale)
	ld.d	$a1, $a1, %got_pc_lo12(x_scale)
	fld.d	$fa3, $a1, 0
	fdiv.d	$fa2, $fa2, $fa3
	pcalau12i	$a1, %got_pc_hi20(x_output_min)
	ld.d	$a1, $a1, %got_pc_lo12(x_output_min)
	fld.d	$fa3, $a1, 0
	fadd.d	$fa2, $fa2, $fa3
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a1, $fa2
	pcalau12i	$a5, %got_pc_hi20(last_y)
	ld.d	$a5, $a5, %got_pc_lo12(last_y)
	ld.w	$a5, $a5, 0
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	pcalau12i	$a5, %got_pc_hi20(y_input_min)
	ld.d	$a5, $a5, %got_pc_lo12(y_input_min)
	fld.d	$fa3, $a5, 0
	fsub.d	$fa2, $fa2, $fa3
	pcalau12i	$a5, %got_pc_hi20(y_scale)
	ld.d	$a5, $a5, %got_pc_lo12(y_scale)
	fld.d	$fa3, $a5, 0
	fdiv.d	$fa2, $fa2, $fa3
	pcalau12i	$a5, %got_pc_hi20(y_output_min)
	ld.d	$a5, $a5, %got_pc_lo12(y_output_min)
	fld.d	$fa3, $a5, 0
	fadd.d	$fa2, $fa2, $fa3
	movgr2fr.w	$fa3, $a4
	pcalau12i	$a5, %pc_hi20(.LCPI0_1)
	fld.d	$fa4, $a5, %pc_lo12(.LCPI0_1)
	pcalau12i	$a5, %pc_hi20(.LCPI0_2)
	fld.d	$fa5, $a5, %pc_lo12(.LCPI0_2)
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa0, $fa0, $fa4
	fdiv.d	$fa0, $fa0, $fa5
	fadd.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 24
	st.d	$a0, $sp, 16
	st.d	$zero, $sp, 8
	fst.d	$fa1, $sp, 0
	st.d	$a1, $sp, 32
	st.d	$a5, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 4
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_4:
	move	$a0, $zero
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	alabel, .Lfunc_end0-alabel
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d %d %d %d %d %d %.3f %d %d %d %d %d %s\001\n"
	.size	.L.str, 46

	.section	".note.GNU-stack","",@progbits
	.addrsig
