	.file	"output.c"
	.text
	.globl	output_headers                  # -- Begin function output_headers
	.p2align	5
	.type	output_headers,@function
output_headers:                         # @output_headers
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(semantic_parser)
	ld.d	$fp, $a0, %got_pc_lo12(semantic_parser)
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(fguard)
	ld.d	$a0, $a0, %got_pc_lo12(fguard)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(attrsfile)
	ld.d	$a1, $a1, %got_pc_lo12(attrsfile)
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
.LBB0_3:
	pcalau12i	$a0, %got_pc_hi20(faction)
	ld.d	$a0, $a0, %got_pc_lo12(faction)
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(attrsfile)
	ld.d	$a2, $a2, %got_pc_lo12(attrsfile)
	ld.d	$a2, $a2, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end0:
	.size	output_headers, .Lfunc_end0-output_headers
                                        # -- End function
	.globl	output_trailers                 # -- Begin function output_trailers
	.p2align	5
	.type	output_trailers,@function
output_trailers:                        # @output_trailers
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(semantic_parser)
	ld.d	$a0, $a0, %got_pc_lo12(semantic_parser)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fguard)
	ld.d	$a0, $a0, %got_pc_lo12(fguard)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$fp, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(faction)
	ld.d	$a0, $a0, %got_pc_lo12(faction)
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB1_2:
	pcalau12i	$a0, %got_pc_hi20(faction)
	ld.d	$a0, $a0, %got_pc_lo12(faction)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end1:
	.size	output_trailers, .Lfunc_end1-output_trailers
                                        # -- End function
	.globl	output                          # -- Begin function output
	.p2align	5
	.type	output,@function
output:                                 # @output
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(debugflag)
	ld.d	$a0, $a0, %got_pc_lo12(debugflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$a0, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB2_2:
	pcalau12i	$a0, %got_pc_hi20(semantic_parser)
	ld.d	$fp, $a0, %got_pc_lo12(semantic_parser)
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB2_4
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$a0, $a0, %got_pc_lo12(ftable)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(attrsfile)
	ld.d	$a1, $a1, %got_pc_lo12(attrsfile)
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_4:
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s2, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(state_table)
	ld.d	$a0, $a0, %got_pc_lo12(state_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB2_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_6:
	pcalau12i	$a0, %got_pc_hi20(first_state)
	ld.d	$a0, $a0, %got_pc_lo12(first_state)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB2_8
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB2_7
.LBB2_8:                                # %free_itemsets.exit
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(final_state)
	ld.d	$a1, $a1, %got_pc_lo12(final_state)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	lu12i.w	$a2, -8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_token_translations)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB2_10
# %bb.9:
	pcaddu18i	$ra, %call36(output_gram)
	jirl	$ra, $ra, 0
.LBB2_10:
	pcalau12i	$a0, %got_pc_hi20(ritem)
	ld.d	$a0, $a0, %got_pc_lo12(ritem)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB2_12
# %bb.11:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_12:
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB2_14
# %bb.13:
	pcaddu18i	$ra, %call36(output_stos)
	jirl	$ra, $ra, 0
.LBB2_14:
	pcaddu18i	$ra, %call36(output_rule_data)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_actions)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_parser)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(lineno)
	ld.d	$a0, $a0, %got_pc_lo12(lineno)
	ld.w	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(infile)
	ld.d	$a0, $a0, %got_pc_lo12(infile)
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(finput)
	ld.d	$fp, $a0, %got_pc_lo12(finput)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %.lr.ph.i5
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB2_15
.LBB2_16:                               # %output_program.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	output, .Lfunc_end2-output
                                        # -- End function
	.globl	free_itemsets                   # -- Begin function free_itemsets
	.p2align	5
	.type	free_itemsets,@function
free_itemsets:                          # @free_itemsets
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(state_table)
	ld.d	$a0, $a0, %got_pc_lo12(state_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_2:
	pcalau12i	$a0, %got_pc_hi20(first_state)
	ld.d	$a0, $a0, %got_pc_lo12(first_state)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB3_3
.LBB3_4:                                # %._crit_edge
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	free_itemsets, .Lfunc_end3-free_itemsets
                                        # -- End function
	.globl	output_defines                  # -- Begin function output_defines
	.p2align	5
	.type	output_defines,@function
output_defines:                         # @output_defines
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$fp, $a0, %got_pc_lo12(ftable)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(final_state)
	ld.d	$a1, $a1, %got_pc_lo12(final_state)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	lu12i.w	$a2, -8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end4:
	.size	output_defines, .Lfunc_end4-output_defines
                                        # -- End function
	.globl	output_token_translations       # -- Begin function output_token_translations
	.p2align	5
	.type	output_token_translations,@function
output_token_translations:              # @output_token_translations
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
	pcalau12i	$a0, %got_pc_hi20(translations)
	ld.d	$a0, $a0, %got_pc_lo12(translations)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(ftable)
	ld.d	$s0, $a1, %got_pc_lo12(ftable)
	ld.d	$a4, $s0, 0
	beqz	$a0, .LBB5_3
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(max_user_token_number)
	ld.d	$s1, $a0, %got_pc_lo12(max_user_token_number)
	ld.w	$a2, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(nsyms)
	ld.d	$a0, $a0, %got_pc_lo12(nsyms)
	ld.w	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$a0, $a0, %got_pc_lo12(ntokens)
	ld.w	$a0, $a0, 0
	ld.d	$a3, $s0, 0
	ori	$a1, $zero, 126
	blt	$a1, $a0, .LBB5_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	bgtz	$a0, .LBB5_5
	b	.LBB5_10
.LBB5_3:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a3, $a4
	b	.LBB5_11
.LBB5_4:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	blez	$a0, .LBB5_10
.LBB5_5:                                # %.lr.ph.preheader
	ori	$s2, $zero, 10
	ori	$s3, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(token_translations)
	ld.d	$s4, $a0, %got_pc_lo12(token_translations)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	move	$s5, $zero
	ori	$s6, $zero, 10
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_6:                                #   in Loop: Header=BB5_8 Depth=1
	addi.w	$s6, $s6, 1
.LBB5_7:                                #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s0, 0
	ldx.h	$a2, $a1, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 2
	bge	$s5, $a0, .LBB5_10
.LBB5_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s2, .LBB5_6
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB5_7
.LBB5_10:                               # %._crit_edge
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
.LBB5_11:
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end5:
	.size	output_token_translations, .Lfunc_end5-output_token_translations
                                        # -- End function
	.globl	output_gram                     # -- Begin function output_gram
	.p2align	5
	.type	output_gram,@function
output_gram:                            # @output_gram
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
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s1, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nrules)
	ld.d	$s0, $a0, %got_pc_lo12(nrules)
	ld.w	$a0, $s0, 0
	blez	$a0, .LBB6_6
# %bb.1:                                # %.lr.ph.preheader
	ori	$s2, $zero, 10
	ori	$s3, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(rrhs)
	ld.d	$s4, $a0, %got_pc_lo12(rrhs)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	move	$s5, $zero
	ori	$s6, $zero, 10
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
.LBB6_3:                                #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s1, 0
	ldx.h	$a2, $a1, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 2
	bge	$s5, $a0, .LBB6_6
.LBB6_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s6, $s2, .LBB6_2
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	addi.w	$s6, $s6, 1
	b	.LBB6_3
.LBB6_6:                                # %._crit_edge
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(ritem)
	ld.d	$fp, $a1, %got_pc_lo12(ritem)
	ld.d	$a1, $fp, 0
	ld.h	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.hu	$a1, $a0, 2
	beqz	$a1, .LBB6_13
# %bb.7:                                # %.lr.ph22.preheader
	addi.d	$s2, $a0, 4
	ori	$s3, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s0, $a0, %pc_lo12(.L.str.17)
	ori	$s4, $zero, 10
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_8:                                #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a3, $s1, 0
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 0
	addi.d	$s2, $s2, 2
	beqz	$a0, .LBB6_13
.LBB6_9:                                # %.lr.ph22
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s4, $s3, .LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=1
	addi.w	$s4, $s4, 1
	ld.h	$a2, $s2, -2
	bgtz	$a2, .LBB6_12
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_11:                               #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 1
	ld.h	$a2, $s2, -2
	blez	$a2, .LBB6_8
.LBB6_12:                               #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 0
	addi.d	$s2, $s2, 2
	bnez	$a0, .LBB6_9
.LBB6_13:                               # %._crit_edge23
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end6:
	.size	output_gram, .Lfunc_end6-output_gram
                                        # -- End function
	.globl	output_stos                     # -- Begin function output_stos
	.p2align	5
	.type	output_stos,@function
output_stos:                            # @output_stos
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
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s0, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$s2, $a0, %got_pc_lo12(nstates)
	ld.w	$a0, $s2, 0
	ori	$s3, $zero, 2
	blt	$a0, $s3, .LBB7_6
# %bb.1:                                # %.lr.ph.preheader
	ori	$s4, $zero, 10
	pcalau12i	$a0, %got_pc_hi20(accessing_symbol)
	ld.d	$s5, $a0, %got_pc_lo12(accessing_symbol)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	addi.w	$s6, $s6, 1
.LBB7_3:                                #   in Loop: Header=BB7_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s0, 0
	ldx.h	$a2, $a1, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 2
	bge	$s1, $a0, .LBB7_6
.LBB7_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s4, .LBB7_2
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB7_3
.LBB7_6:                                # %._crit_edge
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end7:
	.size	output_stos, .Lfunc_end7-output_stos
                                        # -- End function
	.globl	output_rule_data                # -- Begin function output_rule_data
	.p2align	5
	.type	output_rule_data,@function
output_rule_data:                       # @output_rule_data
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
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s4, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nrules)
	ld.d	$s6, $a0, %got_pc_lo12(nrules)
	ld.w	$a0, $s6, 0
	blez	$a0, .LBB8_6
# %bb.1:                                # %.lr.ph.preheader
	ori	$s0, $zero, 10
	ori	$s1, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(rline)
	ld.d	$s2, $a0, %got_pc_lo12(rline)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	move	$s3, $zero
	ori	$s5, $zero, 10
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	addi.w	$s5, $s5, 1
.LBB8_3:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s4, 0
	ldx.h	$a2, $a1, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 2
	bge	$s3, $a0, .LBB8_6
.LBB8_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s5, $s0, .LBB8_2
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB8_3
.LBB8_6:                                # %._crit_edge
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	ori	$s8, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$a0, $a0, %got_pc_lo12(ntokens)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB8_26
# %bb.7:                                # %.lr.ph55.preheader
	pcalau12i	$a0, %got_pc_hi20(tags)
	ld.d	$a0, $a0, %got_pc_lo12(tags)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 26
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$fp, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI8_0)
	addi.d	$s5, $a0, %pc_lo12(.LJTI8_0)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s1, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s2, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s3, $a0, %pc_lo12(.L.str.22)
	ori	$s0, $zero, 10
	b	.LBB8_9
	.p2align	4, , 16
.LBB8_8:                                # %._crit_edge50
                                        #   in Loop: Header=BB8_9 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 34
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$s8, $s6, 1
	bge	$s6, $a0, .LBB8_26
.LBB8_9:                                # %.lr.ph55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	ld.d	$a1, $s4, 0
	move	$s6, $s8
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	bge	$s0, $a0, .LBB8_11
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	addi.w	$s0, $s0, 1
	b	.LBB8_12
	.p2align	4, , 16
.LBB8_11:                               #   in Loop: Header=BB8_9 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
.LBB8_12:                               #   in Loop: Header=BB8_9 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 34
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 3
	ldx.d	$a1, $a0, $a1
	ld.bu	$a0, $a1, 0
	beqz	$a0, .LBB8_8
# %bb.13:                               # %.lr.ph49.preheader
                                        #   in Loop: Header=BB8_9 Depth=1
	addi.d	$s8, $a1, 1
	b	.LBB8_16
.LBB8_14:                               #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB8_15:                               #   in Loop: Header=BB8_16 Depth=2
	ld.bu	$a0, $s8, 0
	addi.d	$s8, $s8, 1
	beqz	$a0, .LBB8_8
.LBB8_16:                               # %.lr.ph49
                                        #   Parent Loop BB8_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a1, $a0, 255
	addi.d	$a3, $a1, -8
	ext.w.b	$a2, $a0
	bltu	$s7, $a3, .LBB8_19
# %bb.17:                               # %.lr.ph49
                                        #   in Loop: Header=BB8_16 Depth=2
	slli.d	$a1, $a3, 2
	ldx.w	$a1, $s5, $a1
	add.d	$a1, $s5, $a1
	jr	$a1
.LBB8_18:                               #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_15
	.p2align	4, , 16
.LBB8_19:                               # %.lr.ph49
                                        #   in Loop: Header=BB8_16 Depth=2
	ori	$a3, $zero, 92
	bne	$a1, $a3, .LBB8_21
.LBB8_20:                               #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a0, $s4, 0
	move	$a1, $fp
	b	.LBB8_23
.LBB8_21:                               #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a1, $s4, 0
	addi.d	$a0, $a0, -127
	andi	$a0, $a0, 255
	ori	$a3, $zero, 160
	bltu	$a3, $a0, .LBB8_25
# %bb.22:                               #   in Loop: Header=BB8_16 Depth=2
	move	$a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
.LBB8_23:                               #   in Loop: Header=BB8_16 Depth=2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_15
.LBB8_24:                               #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_15
.LBB8_25:                               #   in Loop: Header=BB8_16 Depth=2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB8_15
.LBB8_26:                               # %._crit_edge56
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $s6, 0
	blez	$a0, .LBB8_32
# %bb.27:                               # %.lr.ph61.preheader
	ori	$s0, $zero, 10
	ori	$s1, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$s2, $a0, %got_pc_lo12(rlhs)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	move	$s3, $zero
	ori	$s5, $zero, 10
	b	.LBB8_30
	.p2align	4, , 16
.LBB8_28:                               #   in Loop: Header=BB8_30 Depth=1
	addi.w	$s5, $s5, 1
.LBB8_29:                               #   in Loop: Header=BB8_30 Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s4, 0
	ldx.h	$a2, $a1, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 2
	bge	$s3, $a0, .LBB8_32
.LBB8_30:                               # %.lr.ph61
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s5, $s0, .LBB8_28
# %bb.31:                               #   in Loop: Header=BB8_30 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB8_29
.LBB8_32:                               # %._crit_edge62
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$a0, $a0, %got_pc_lo12(rlhs)
	ld.d	$a0, $a0, 0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB8_38
# %bb.33:                               # %.lr.ph66.preheader
	ori	$s1, $zero, 10
	pcalau12i	$a0, %got_pc_hi20(rrhs)
	ld.d	$s2, $a0, %got_pc_lo12(rrhs)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	move	$s3, $zero
	ori	$s5, $zero, 10
	b	.LBB8_36
	.p2align	4, , 16
.LBB8_34:                               #   in Loop: Header=BB8_36 Depth=1
	addi.w	$s5, $s5, 1
.LBB8_35:                               #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $s2, 0
	add.d	$a1, $a0, $s3
	ld.h	$a2, $a1, 2
	ld.d	$a0, $s4, 0
	ld.h	$a1, $a1, 4
	addi.d	$s0, $s0, 1
	nor	$a2, $a2, $zero
	ext.w.h	$a2, $a2
	add.d	$a2, $a2, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$s3, $s3, 2
	bge	$s0, $a0, .LBB8_39
.LBB8_36:                               # %.lr.ph66
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s5, $s1, .LBB8_34
# %bb.37:                               #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB8_35
.LBB8_38:                               # %._crit_edge67.thread
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB8_40
.LBB8_39:                               # %._crit_edge67
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	blt	$s5, $a0, .LBB8_41
.LBB8_40:
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB8_41:
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(nitems)
	ld.d	$a1, $a1, %got_pc_lo12(nitems)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(rrhs)
	ld.d	$fp, $a2, %got_pc_lo12(rrhs)
	ld.w	$a2, $s6, 0
	ld.d	$a3, $fp, 0
	slli.d	$a2, $a2, 1
	ldx.h	$a2, $a3, $a2
	nor	$a2, $a2, $zero
	ext.w.h	$a2, $a2
	add.w	$a2, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 2
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end8:
	.size	output_rule_data, .Lfunc_end8-output_rule_data
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.word	.LBB8_18-.LJTI8_0
	.word	.LBB8_14-.LJTI8_0
	.word	.LBB8_24-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_20-.LJTI8_0
                                        # -- End function
	.text
	.globl	output_actions                  # -- Begin function output_actions
	.p2align	5
	.type	output_actions,@function
output_actions:                         # @output_actions
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$a0, $a0, %got_pc_lo12(nstates)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(nvars)
	ld.d	$a1, $a1, %got_pc_lo12(nvars)
	ld.w	$a1, $a1, 0
	add.d	$a0, $a1, $a0
	pcalau12i	$fp, %pc_hi20(nvectors)
	st.w	$a0, $fp, %pc_lo12(nvectors)
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(nvectors)
	pcalau12i	$a2, %pc_hi20(froms)
	st.d	$a0, $a2, %pc_lo12(froms)
	slli.w	$a0, $a1, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(nvectors)
	pcalau12i	$a2, %pc_hi20(tos)
	st.d	$a0, $a2, %pc_lo12(tos)
	slli.w	$a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(nvectors)
	pcalau12i	$a2, %pc_hi20(tally)
	st.d	$a0, $a2, %pc_lo12(tally)
	slli.w	$a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(width)
	st.d	$a0, $a1, %pc_lo12(width)
	pcaddu18i	$ra, %call36(token_actions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(shift_table)
	ld.d	$a0, $a0, %got_pc_lo12(shift_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_2:
	pcalau12i	$a0, %got_pc_hi20(first_shift)
	ld.d	$a0, $a0, %got_pc_lo12(first_shift)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_4
	.p2align	4, , 16
.LBB9_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB9_3
.LBB9_4:                                # %free_shifts.exit
	pcalau12i	$a0, %got_pc_hi20(reduction_table)
	ld.d	$a0, $a0, %got_pc_lo12(reduction_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_6:
	pcalau12i	$a0, %got_pc_hi20(first_reduction)
	ld.d	$a0, $a0, %got_pc_lo12(first_reduction)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_8
	.p2align	4, , 16
.LBB9_7:                                # %.lr.ph.i15
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB9_7
.LBB9_8:                                # %free_reductions.exit
	pcalau12i	$a0, %got_pc_hi20(lookaheads)
	ld.d	$a0, $a0, %got_pc_lo12(lookaheads)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_10
# %bb.9:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_10:
	pcalau12i	$a0, %got_pc_hi20(LA)
	ld.d	$a0, $a0, %got_pc_lo12(LA)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_12
# %bb.11:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_12:
	pcalau12i	$a0, %got_pc_hi20(LAruleno)
	ld.d	$a0, $a0, %got_pc_lo12(LAruleno)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_14
# %bb.13:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_14:
	pcalau12i	$a0, %got_pc_hi20(accessing_symbol)
	ld.d	$a0, $a0, %got_pc_lo12(accessing_symbol)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_16
# %bb.15:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_16:
	pcaddu18i	$ra, %call36(goto_actions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(goto_map)
	ld.d	$a0, $a0, %got_pc_lo12(goto_map)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_18
# %bb.17:
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	ld.w	$a1, $a1, 0
	alsl.d	$a0, $a1, $a0, 1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_18:
	pcalau12i	$a0, %got_pc_hi20(from_state)
	ld.d	$a0, $a0, %got_pc_lo12(from_state)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_20
# %bb.19:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_20:
	pcalau12i	$a0, %got_pc_hi20(to_state)
	ld.d	$a0, $a0, %got_pc_lo12(to_state)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_22
# %bb.21:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_22:
	pcaddu18i	$ra, %call36(sort_actions)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(pack_table)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_base)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_table)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(output_check)
	jr	$t8
.Lfunc_end9:
	.size	output_actions, .Lfunc_end9-output_actions
                                        # -- End function
	.globl	output_parser                   # -- Begin function output_parser
	.p2align	5
	.type	output_parser,@function
output_parser:                          # @output_parser
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
	pcalau12i	$a0, %got_pc_hi20(pure_parser)
	ld.d	$a0, $a0, %got_pc_lo12(pure_parser)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(ftable)
	ld.d	$s2, $a1, %got_pc_lo12(ftable)
	ld.d	$a3, $s2, 0
	beqz	$a0, .LBB10_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 20
	b	.LBB10_3
.LBB10_2:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 18
.LBB10_3:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fparser)
	ld.d	$s3, $a0, %got_pc_lo12(fparser)
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB10_5
# %bb.4:
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_6
.LBB10_5:                               # %.loopexit27
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
.LBB10_6:
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s4, $zero, -1
	beq	$a0, $s4, .LBB10_5
# %bb.7:                                # %.lr.ph32.preheader
	pcalau12i	$a1, %got_pc_hi20(nolinesflag)
	ld.d	$s5, $a1, %got_pc_lo12(nolinesflag)
	ori	$s6, $zero, 10
	ori	$s7, $zero, 35
	ori	$s8, $zero, 108
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s0, $zero, 36
	pcalau12i	$a1, %got_pc_hi20(faction)
	ld.d	$fp, $a1, %got_pc_lo12(faction)
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_8:                               #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB10_9:                               # %.loopexit
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB10_5
.LBB10_10:                              # %.lr.ph32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
                                        #     Child Loop BB10_28 Depth 2
	bne	$a0, $s6, .LBB10_26
# %bb.11:                               # %.lr.ph32
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.w	$a1, $s5, 0
	beqz	$a1, .LBB10_26
# %bb.12:                               #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB10_26
# %bb.13:                               #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB10_20
# %bb.14:                               #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 105
	bne	$a0, $a1, .LBB10_21
# %bb.15:                               #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB10_22
# %bb.16:                               #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 101
	bne	$a0, $a1, .LBB10_23
	.p2align	4, , 16
.LBB10_17:                              # %.preheader
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB10_19
# %bb.18:                               # %.preheader
                                        #   in Loop: Header=BB10_17 Depth=2
	bgez	$a0, .LBB10_17
.LBB10_19:                              #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	b	.LBB10_26
.LBB10_20:                              #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a1, $s2, 0
	move	$s1, $a0
	ori	$a0, $zero, 35
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB10_25
.LBB10_21:                              #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$s1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB10_24
.LBB10_22:                              #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$s1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB10_24
.LBB10_23:                              #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
.LBB10_24:                              #   in Loop: Header=BB10_10 Depth=1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB10_25:                              #   in Loop: Header=BB10_10 Depth=1
	move	$a0, $s1
.LBB10_26:                              #   in Loop: Header=BB10_10 Depth=1
	bne	$a0, $s0, .LBB10_8
# %bb.27:                               #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB10_9
	.p2align	4, , 16
.LBB10_28:                              # %.lr.ph
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB10_28
	b	.LBB10_9
.Lfunc_end10:
	.size	output_parser, .Lfunc_end10-output_parser
                                        # -- End function
	.globl	output_program                  # -- Begin function output_program
	.p2align	5
	.type	output_program,@function
output_program:                         # @output_program
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s2, $a0, %got_pc_lo12(ftable)
	ld.d	$fp, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(lineno)
	ld.d	$a0, $a0, %got_pc_lo12(lineno)
	ld.w	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(infile)
	ld.d	$a0, $a0, %got_pc_lo12(infile)
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(finput)
	ld.d	$fp, $a0, %got_pc_lo12(finput)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB11_2
	.p2align	4, , 16
.LBB11_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB11_1
.LBB11_2:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	output_program, .Lfunc_end11-output_program
                                        # -- End function
	.globl	token_actions                   # -- Begin function token_actions
	.p2align	5
	.type	token_actions,@function
token_actions:                          # @token_actions
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
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$s4, $a0, %got_pc_lo12(ntokens)
	ld.w	$a0, $s4, 0
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(actrow)
	st.d	$a0, $s2, %pc_lo12(actrow)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(action_row)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s5, $a0, %got_pc_lo12(ftable)
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(tally)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(width)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blez	$a0, .LBB12_15
# %bb.1:                                # %.lr.ph.i
	ld.d	$a1, $s2, %pc_lo12(actrow)
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB12_3
# %bb.2:
	move	$a2, $zero
	move	$s1, $zero
	b	.LBB12_6
.LBB12_3:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, 1
	move	$a4, $a2
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB12_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -8
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr4, $a5, 0
	vinsgr2vr.d	$vr5, $a6, 0
	vseqi.h	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr1
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr2
	vseqi.h	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr1
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr2
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB12_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr3, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$s1, $vr0, 0
	beq	$a2, $a0, .LBB12_8
.LBB12_6:                               # %scalar.ph.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $a1, 1
	.p2align	4, , 16
.LBB12_7:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a1, 0
	sltu	$a2, $zero, $a2
	add.d	$s1, $s1, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 2
	bnez	$a0, .LBB12_7
.LBB12_8:                               # %._crit_edge.i
	addi.w	$a0, $s1, 0
	beqz	$a0, .LBB12_15
# %bb.9:
	slli.w	$s0, $s1, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(froms)
	ld.d	$a1, $a1, %pc_lo12(froms)
	move	$fp, $a0
	st.d	$a0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(tos)
	ld.d	$a2, $a1, %pc_lo12(tos)
	ld.w	$a1, $s4, 0
	st.d	$a0, $a2, 0
	move	$a3, $fp
	blez	$a1, .LBB12_14
# %bb.10:                               # %.lr.ph33.i
	ld.d	$a2, $s2, %pc_lo12(actrow)
	move	$a4, $zero
	move	$a3, $fp
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_11:                              #   in Loop: Header=BB12_12 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	beq	$a1, $a4, .LBB12_14
.LBB12_12:                              # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a2, 0
	beqz	$a5, .LBB12_11
# %bb.13:                               #   in Loop: Header=BB12_12 Depth=1
	st.h	$a4, $a3, 0
	ld.h	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a6, $a0, 2
	st.h	$a5, $a0, 0
	move	$a0, $a6
	b	.LBB12_11
.LBB12_14:                              # %._crit_edge34.i
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(tally)
	st.h	$s1, $a0, 0
	ld.h	$a0, $a3, -2
	ld.h	$a1, $fp, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(width)
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	st.h	$a0, $a2, 0
.LBB12_15:                              # %save_row.exit
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$s3, $a0, %got_pc_lo12(nstates)
	ld.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB12_36
# %bb.16:                               # %.lr.ph.preheader
	ori	$s0, $zero, 10
	ori	$fp, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s8, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(froms)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(tos)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vrepli.b	$vr4, -1
	vrepli.w	$vr5, 1
	ori	$s7, $zero, 10
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	vst	$vr4, $sp, 96                   # 16-byte Folded Spill
	vst	$vr5, $sp, 80                   # 16-byte Folded Spill
	b	.LBB12_19
	.p2align	4, , 16
.LBB12_17:                              # %._crit_edge34.i19
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(tally)
	slli.d	$a1, $fp, 1
	stx.h	$s6, $a0, $a1
	ld.h	$a0, $a3, -2
	ld.h	$a2, $s1, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(width)
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	stx.h	$a0, $a3, $a1
	ori	$s0, $zero, 10
	move	$s3, $s5
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
.LBB12_18:                              # %save_row.exit31
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.w	$a0, $s3, 0
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB12_36
.LBB12_19:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_26 Depth 2
                                        #     Child Loop BB12_29 Depth 2
                                        #     Child Loop BB12_34 Depth 2
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s7, $s0, .LBB12_21
# %bb.20:                               #   in Loop: Header=BB12_19 Depth=1
	addi.w	$s7, $s7, 1
	b	.LBB12_22
	.p2align	4, , 16
.LBB12_21:                              #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 1
.LBB12_22:                              #   in Loop: Header=BB12_19 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(action_row)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	vld	$vr4, $sp, 96                   # 16-byte Folded Reload
	vld	$vr5, $sp, 80                   # 16-byte Folded Reload
	blez	$a0, .LBB12_18
# %bb.23:                               # %.lr.ph.i10
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a1, $s2, %pc_lo12(actrow)
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB12_25
# %bb.24:                               #   in Loop: Header=BB12_19 Depth=1
	move	$a2, $zero
	move	$s6, $zero
	b	.LBB12_28
	.p2align	4, , 16
.LBB12_25:                              # %vector.ph43
                                        #   in Loop: Header=BB12_19 Depth=1
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 8
	move	$a4, $a2
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB12_26:                              # %vector.body46
                                        #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, -8
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vinsgr2vr.d	$vr3, $a6, 0
	vseqi.h	$vr2, $vr2, 0
	vxor.v	$vr2, $vr2, $vr4
	vilvl.h	$vr2, $vr2, $vr2
	vand.v	$vr2, $vr2, $vr5
	vseqi.h	$vr3, $vr3, 0
	vxor.v	$vr3, $vr3, $vr4
	vilvl.h	$vr3, $vr3, $vr3
	vand.v	$vr3, $vr3, $vr5
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB12_26
# %bb.27:                               # %middle.block53
                                        #   in Loop: Header=BB12_19 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$s6, $vr0, 0
	beq	$a2, $a0, .LBB12_30
.LBB12_28:                              # %scalar.ph41.preheader
                                        #   in Loop: Header=BB12_19 Depth=1
	sub.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $a1, 1
	.p2align	4, , 16
.LBB12_29:                              # %scalar.ph41
                                        #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a2, $a1, 0
	sltu	$a2, $zero, $a2
	add.d	$s6, $s6, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 2
	bnez	$a0, .LBB12_29
.LBB12_30:                              # %._crit_edge.i18
                                        #   in Loop: Header=BB12_19 Depth=1
	addi.w	$a0, $s6, 0
	beqz	$a0, .LBB12_18
# %bb.31:                               #   in Loop: Header=BB12_19 Depth=1
	move	$s5, $s3
	move	$s0, $s4
	move	$s4, $s2
	slli.w	$s2, $s6, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(froms)
	move	$s1, $a0
	slli.d	$s3, $fp, 3
	stx.d	$a0, $a1, $s3
	move	$a0, $s2
	move	$s2, $s4
	move	$s4, $s0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(tos)
	ld.w	$a1, $s0, 0
	stx.d	$a0, $a2, $s3
	move	$a3, $s1
	blez	$a1, .LBB12_17
# %bb.32:                               # %.lr.ph33.i21
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a2, $s2, %pc_lo12(actrow)
	move	$a4, $zero
	move	$a3, $s1
	b	.LBB12_34
	.p2align	4, , 16
.LBB12_33:                              #   in Loop: Header=BB12_34 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	beq	$a1, $a4, .LBB12_17
.LBB12_34:                              #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a2, 0
	beqz	$a5, .LBB12_33
# %bb.35:                               #   in Loop: Header=BB12_34 Depth=2
	st.h	$a4, $a3, 0
	ld.h	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a6, $a0, 2
	st.h	$a5, $a0, 0
	move	$a0, $a6
	b	.LBB12_33
.LBB12_36:                              # %._crit_edge
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(actrow)
	beqz	$a0, .LBB12_38
# %bb.37:
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB12_38:
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
.Lfunc_end12:
	.size	token_actions, .Lfunc_end12-token_actions
                                        # -- End function
	.globl	free_shifts                     # -- Begin function free_shifts
	.p2align	5
	.type	free_shifts,@function
free_shifts:                            # @free_shifts
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(shift_table)
	ld.d	$a0, $a0, %got_pc_lo12(shift_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB13_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB13_2:
	pcalau12i	$a0, %got_pc_hi20(first_shift)
	ld.d	$a0, $a0, %got_pc_lo12(first_shift)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB13_4
	.p2align	4, , 16
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB13_3
.LBB13_4:                               # %._crit_edge
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	free_shifts, .Lfunc_end13-free_shifts
                                        # -- End function
	.globl	free_reductions                 # -- Begin function free_reductions
	.p2align	5
	.type	free_reductions,@function
free_reductions:                        # @free_reductions
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(reduction_table)
	ld.d	$a0, $a0, %got_pc_lo12(reduction_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB14_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB14_2:
	pcalau12i	$a0, %got_pc_hi20(first_reduction)
	ld.d	$a0, $a0, %got_pc_lo12(first_reduction)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB14_4
	.p2align	4, , 16
.LBB14_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB14_3
.LBB14_4:                               # %._crit_edge
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	free_reductions, .Lfunc_end14-free_reductions
                                        # -- End function
	.globl	goto_actions                    # -- Begin function goto_actions
	.p2align	5
	.type	goto_actions,@function
goto_actions:                           # @goto_actions
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
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$s0, $a0, %got_pc_lo12(nstates)
	ld.w	$a0, $s0, 0
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(state_count)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(state_count)
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$s1, $a1, %got_pc_lo12(ntokens)
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(goto_map)
	ld.d	$a2, $a2, %got_pc_lo12(goto_map)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	alsl.d	$a3, $a1, $a2, 1
	slli.d	$a1, $a1, 1
	ldx.h	$s5, $a2, $a1
	ld.hu	$a1, $a3, 2
	bstrpick.d	$a2, $s5, 15, 0
	addi.w	$fp, $zero, -1
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	beq	$a2, $a1, .LBB15_9
# %bb.1:                                # %.preheader30.i
	ld.w	$s3, $s0, 0
	ext.w.h	$s2, $a1
	blez	$s3, .LBB15_3
# %bb.2:                                # %.lr.ph.i
	slli.d	$a1, $s3, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a2, $a1, 1
	move	$s0, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB15_3:                               # %.preheader29.i
	bge	$s5, $s2, .LBB15_6
# %bb.4:                                # %.lr.ph33.i
	pcalau12i	$a1, %got_pc_hi20(to_state)
	ld.d	$a1, $a1, %got_pc_lo12(to_state)
	ld.d	$a2, $a1, 0
	sub.d	$a1, $s2, $s5
	alsl.d	$a2, $s5, $a2, 1
	.p2align	4, , 16
.LBB15_5:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a2, 0
	slli.d	$a3, $a3, 1
	ldx.h	$a4, $a0, $a3
	addi.d	$a4, $a4, 1
	stx.h	$a4, $a0, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB15_5
.LBB15_6:                               # %.preheader.i
	blez	$s3, .LBB15_9
# %bb.7:                                # %.lr.ph37.i
	move	$a1, $zero
	move	$a2, $zero
	addi.w	$fp, $zero, -1
	.p2align	4, , 16
.LBB15_8:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a0, 0
	slt	$a4, $a2, $a3
	masknez	$a5, $fp, $a4
	maskeqz	$a4, $a1, $a4
	or	$fp, $a4, $a5
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	addi.d	$s3, $s3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	bnez	$s3, .LBB15_8
.LBB15_9:                               # %default_goto.exit
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s5, $a0, %got_pc_lo12(ftable)
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(save_column)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$fp, $a0, 1
	addi.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(nsyms)
	ld.d	$s6, $a1, %got_pc_lo12(nsyms)
	ld.w	$a1, $s6, 0
	bge	$a0, $a1, .LBB15_24
# %bb.10:                               # %.lr.ph.preheader
	addi.w	$s8, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s0, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %got_pc_hi20(to_state)
	ld.d	$a0, $a0, %got_pc_lo12(to_state)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s3, $zero, 10
	b	.LBB15_12
	.p2align	4, , 16
.LBB15_11:                              # %default_goto.exit31
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $s5, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(save_column)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB15_24
.LBB15_12:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_20 Depth 2
                                        #     Child Loop BB15_23 Depth 2
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	bge	$s3, $a0, .LBB15_14
# %bb.13:                               #   in Loop: Header=BB15_12 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB15_15
	.p2align	4, , 16
.LBB15_14:                              #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
.LBB15_15:                              #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	alsl.d	$a1, $fp, $a0, 1
	slli.d	$a2, $fp, 1
	ldx.hu	$s2, $a0, $a2
	ld.hu	$s4, $a1, 2
	move	$s1, $s8
	beq	$s2, $s4, .LBB15_11
# %bb.16:                               # %.preheader30.i12
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s7, $a0, 0
	blez	$s7, .LBB15_18
# %bb.17:                               # %.lr.ph.i30
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(state_count)
	slli.d	$a1, $s7, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_18:                              # %.preheader29.i13
                                        #   in Loop: Header=BB15_12 Depth=1
	ext.w.h	$a2, $s2
	ext.w.h	$a1, $s4
	bge	$a2, $a1, .LBB15_21
# %bb.19:                               # %.lr.ph33.i25
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(state_count)
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a2, $a3, 1
	.p2align	4, , 16
.LBB15_20:                              #   Parent Loop BB15_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a2, 0
	slli.d	$a3, $a3, 1
	ldx.h	$a4, $a0, $a3
	addi.d	$a4, $a4, 1
	stx.h	$a4, $a0, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB15_20
.LBB15_21:                              # %.preheader.i14
                                        #   in Loop: Header=BB15_12 Depth=1
	move	$s1, $s8
	blez	$s7, .LBB15_11
# %bb.22:                               # %.lr.ph37.i16
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(state_count)
	move	$a1, $zero
	move	$a2, $zero
	move	$s1, $s8
	.p2align	4, , 16
.LBB15_23:                              #   Parent Loop BB15_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a0, 0
	slt	$a4, $a2, $a3
	masknez	$a5, $s1, $a4
	maskeqz	$a4, $a1, $a4
	or	$s1, $a4, $a5
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	addi.d	$s7, $s7, -1
	addi.w	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	bnez	$s7, .LBB15_23
	b	.LBB15_11
.LBB15_24:                              # %._crit_edge
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(state_count)
	beqz	$a0, .LBB15_26
# %bb.25:
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB15_26:
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
	.size	goto_actions, .Lfunc_end15-goto_actions
                                        # -- End function
	.globl	sort_actions                    # -- Begin function sort_actions
	.p2align	5
	.type	sort_actions,@function
sort_actions:                           # @sort_actions
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(nvectors)
	ld.w	$a0, $fp, %pc_lo12(nvectors)
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(nvectors)
	pcalau12i	$a2, %pc_hi20(order)
	st.d	$a0, $a2, %pc_lo12(order)
	pcalau12i	$a2, %pc_hi20(nentries)
	st.w	$zero, $a2, %pc_lo12(nentries)
	blez	$a1, .LBB16_23
# %bb.1:                                # %.lr.ph38
	move	$a3, $zero
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(tally)
	ld.d	$a5, $a5, %pc_lo12(tally)
	pcalau12i	$a6, %pc_hi20(width)
	ld.d	$a6, $a6, %pc_lo12(width)
	addi.d	$a7, $a0, -14
	addi.w	$t0, $zero, -1
	ori	$t1, $zero, 16
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_2:                               # %._crit_edge
                                        #   in Loop: Header=BB16_4 Depth=1
	alsl.d	$t2, $t2, $a0, 1
	st.h	$a3, $t2, 2
	addi.w	$a4, $a4, 1
	st.w	$a4, $a2, %pc_lo12(nentries)
.LBB16_3:                               #   in Loop: Header=BB16_4 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB16_23
.LBB16_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #     Child Loop BB16_9 Depth 2
                                        #     Child Loop BB16_21 Depth 2
                                        #     Child Loop BB16_17 Depth 2
	slli.d	$t2, $a3, 1
	ldx.h	$t3, $a5, $t2
	blez	$t3, .LBB16_3
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	ldx.h	$t5, $a6, $t2
	slli.d	$t2, $a4, 32
	srai.d	$t2, $t2, 63
	and	$t2, $t2, $a4
	addi.w	$t2, $t2, -1
	move	$t4, $a4
	.p2align	4, , 16
.LBB16_6:                               #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$t4, .LBB16_13
# %bb.7:                                #   in Loop: Header=BB16_6 Depth=2
	addi.w	$t4, $t4, -1
	slli.d	$t6, $t4, 1
	ldx.h	$t6, $a0, $t6
	slli.d	$t6, $t6, 1
	ldx.h	$t6, $a6, $t6
	blt	$t6, $t5, .LBB16_6
# %bb.8:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB16_4 Depth=1
	bstrpick.d	$t5, $t5, 15, 0
	.p2align	4, , 16
.LBB16_9:                               # %.lr.ph
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t2, $t4
	slli.d	$t4, $t4, 1
	ldx.h	$t4, $a0, $t4
	slli.d	$t4, $t4, 1
	ldx.hu	$t6, $a6, $t4
	bne	$t6, $t5, .LBB16_13
# %bb.10:                               #   in Loop: Header=BB16_9 Depth=2
	ldx.h	$t4, $a5, $t4
	bge	$t4, $t3, .LBB16_13
# %bb.11:                               #   in Loop: Header=BB16_9 Depth=2
	addi.w	$t4, $t2, -1
	bgtz	$t2, .LBB16_9
# %bb.12:                               #   in Loop: Header=BB16_4 Depth=1
	move	$t2, $t0
	.p2align	4, , 16
.LBB16_13:                              # %.critedge2
                                        #   in Loop: Header=BB16_4 Depth=1
	addi.w	$t3, $a4, -1
	bge	$t2, $t3, .LBB16_2
# %bb.14:                               # %.lr.ph35.preheader
                                        #   in Loop: Header=BB16_4 Depth=1
	sub.d	$t5, $t3, $t2
	bgeu	$t5, $t1, .LBB16_18
.LBB16_15:                              #   in Loop: Header=BB16_4 Depth=1
	move	$t4, $a4
.LBB16_16:                              # %.lr.ph35.preheader56
                                        #   in Loop: Header=BB16_4 Depth=1
	alsl.d	$t5, $t3, $a0, 1
	move	$t6, $t3
	.p2align	4, , 16
.LBB16_17:                              # %.lr.ph35
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t7, $t5, 0
	addi.w	$t4, $t4, 0
	slli.d	$t4, $t4, 1
	stx.h	$t7, $a0, $t4
	addi.d	$t6, $t6, -1
	move	$t4, $t3
	addi.d	$t3, $t3, -1
	addi.d	$t5, $t5, -2
	blt	$t2, $t6, .LBB16_17
	b	.LBB16_2
.LBB16_18:                              # %vector.scevcheck
                                        #   in Loop: Header=BB16_4 Depth=1
	nor	$t4, $t2, $zero
	add.d	$t4, $t4, $t3
	sub.w	$t6, $a4, $t4
	blt	$a4, $t6, .LBB16_15
# %bb.19:                               # %vector.scevcheck
                                        #   in Loop: Header=BB16_4 Depth=1
	srli.d	$t6, $t4, 32
	move	$t4, $a4
	bnez	$t6, .LBB16_16
# %bb.20:                               # %vector.ph
                                        #   in Loop: Header=BB16_4 Depth=1
	move	$t6, $t5
	bstrins.d	$t6, $zero, 2, 0
	sub.d	$t7, $t3, $t6
	sub.d	$t4, $a4, $t6
	alsl.d	$t3, $t3, $a7, 1
	move	$t8, $a4
	move	$fp, $t6
	.p2align	4, , 16
.LBB16_21:                              # %vector.body
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, 0
	alsl.d	$s0, $t8, $a0, 1
	vst	$vr0, $s0, -14
	addi.d	$fp, $fp, -8
	addi.w	$t8, $t8, -8
	addi.d	$t3, $t3, -16
	bnez	$fp, .LBB16_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB16_4 Depth=1
	move	$t3, $t7
	beq	$t5, $t6, .LBB16_2
	b	.LBB16_16
.LBB16_23:                              # %._crit_edge39
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	sort_actions, .Lfunc_end16-sort_actions
                                        # -- End function
	.globl	pack_table                      # -- Begin function pack_table
	.p2align	5
	.type	pack_table,@function
pack_table:                             # @pack_table
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
	pcalau12i	$s1, %pc_hi20(nvectors)
	ld.w	$a0, $s1, %pc_lo12(nvectors)
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(nentries)
	ld.w	$a1, $s2, %pc_lo12(nentries)
	pcalau12i	$s3, %pc_hi20(base)
	st.d	$a0, $s3, %pc_lo12(base)
	slli.w	$a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(pos)
	st.d	$a0, $s0, %pc_lo12(pos)
	lu12i.w	$a0, 15
	ori	$fp, $a0, 4094
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(table)
	st.d	$a0, $a1, %pc_lo12(table)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(check)
	st.d	$a0, $a1, %pc_lo12(check)
	ld.w	$s4, $s1, %pc_lo12(nvectors)
	pcalau12i	$a1, %pc_hi20(lowzero)
	st.w	$zero, $a1, %pc_lo12(lowzero)
	pcalau12i	$a1, %pc_hi20(high)
	st.w	$zero, $a1, %pc_lo12(high)
	blez	$s4, .LBB17_14
# %bb.1:                                # %iter.check
	ld.d	$a2, $s3, %pc_lo12(base)
	ori	$a3, $zero, 8
	lu12i.w	$a1, 8
	bgeu	$s4, $a3, .LBB17_3
# %bb.2:
	move	$a3, $zero
	b	.LBB17_12
.LBB17_3:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$s4, $a3, .LBB17_8
# %bb.4:
	move	$a3, $zero
.LBB17_5:                               # %vec.epilog.ph
	move	$a5, $a3
	bstrpick.d	$a3, $s4, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a2, 1
	vreplgr2vr.h	$vr0, $a1
	.p2align	4, , 16
.LBB17_6:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB17_6
# %bb.7:                                # %vec.epilog.middle.block
	bne	$a3, $s4, .LBB17_12
	b	.LBB17_14
.LBB17_8:                               # %vector.ph
	andi	$a4, $s4, 8
	bstrpick.d	$a3, $s4, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a5, $a2, 16
	vreplgr2vr.h	$vr0, $a1
	move	$a6, $a3
	.p2align	4, , 16
.LBB17_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB17_9
# %bb.10:                               # %middle.block
	beq	$a3, $s4, .LBB17_14
# %bb.11:                               # %vec.epilog.iter.check
	bnez	$a4, .LBB17_5
.LBB17_12:                              # %vec.epilog.scalar.ph.preheader
	alsl.d	$a2, $a3, $a2, 1
	sub.d	$a3, $s4, $a3
	.p2align	4, , 16
.LBB17_13:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a1, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	bnez	$a3, .LBB17_13
.LBB17_14:                              # %.preheader34
	ori	$a1, $zero, 255
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s2, %pc_lo12(nentries)
	blez	$s5, .LBB17_21
# %bb.15:                               # %.lr.ph38.preheader
	move	$s4, $zero
	move	$fp, $zero
	move	$s6, $zero
	pcalau12i	$s7, %pc_hi20(order)
	b	.LBB17_18
	.p2align	4, , 16
.LBB17_16:                              #   in Loop: Header=BB17_18 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pack_vector)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(base)
	ld.w	$s5, $s2, %pc_lo12(nentries)
.LBB17_17:                              #   in Loop: Header=BB17_18 Depth=1
	ld.d	$a2, $s0, %pc_lo12(pos)
	ld.d	$a3, $s7, %pc_lo12(order)
	stx.h	$a0, $a2, $s4
	ldx.h	$a2, $a3, $s4
	slli.d	$a2, $a2, 1
	stx.h	$a0, $a1, $a2
	addi.d	$s6, $s6, 1
	addi.w	$fp, $fp, 1
	addi.d	$s4, $s4, 2
	bge	$s6, $s5, .LBB17_20
.LBB17_18:                              # %.lr.ph38
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(matching_state)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB17_16
# %bb.19:                               #   in Loop: Header=BB17_18 Depth=1
	ld.d	$a1, $s3, %pc_lo12(base)
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	b	.LBB17_17
.LBB17_20:                              # %.preheader.loopexit
	ld.w	$s4, $s1, %pc_lo12(nvectors)
.LBB17_21:                              # %.preheader
	pcalau12i	$a0, %pc_hi20(froms)
	ld.d	$fp, $a0, %pc_lo12(froms)
	pcalau12i	$s1, %pc_hi20(tos)
	blez	$s4, .LBB17_28
# %bb.22:                               # %.lr.ph40
	ld.d	$s2, $s1, %pc_lo12(tos)
	move	$s3, $fp
	b	.LBB17_24
	.p2align	4, , 16
.LBB17_23:                              #   in Loop: Header=BB17_24 Depth=1
	addi.d	$s2, $s2, 8
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	beqz	$s4, .LBB17_29
.LBB17_24:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB17_26
# %bb.25:                               #   in Loop: Header=BB17_24 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_26:                              #   in Loop: Header=BB17_24 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB17_23
# %bb.27:                               #   in Loop: Header=BB17_24 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB17_23
.LBB17_28:                              # %._crit_edge
	beqz	$fp, .LBB17_30
.LBB17_29:                              # %._crit_edge.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_30:
	ld.d	$a0, $s1, %pc_lo12(tos)
	beqz	$a0, .LBB17_32
# %bb.31:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_32:
	ld.d	$a0, $s0, %pc_lo12(pos)
	beqz	$a0, .LBB17_34
# %bb.33:
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB17_34:
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
.Lfunc_end17:
	.size	pack_table, .Lfunc_end17-pack_table
                                        # -- End function
	.globl	output_base                     # -- Begin function output_base
	.p2align	5
	.type	output_base,@function
output_base:                            # @output_base
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
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s1, $a0, %got_pc_lo12(ftable)
	pcalau12i	$s0, %pc_hi20(base)
	ld.d	$a1, $s0, %pc_lo12(base)
	ld.d	$a0, $s1, 0
	ld.h	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$s2, $a0, %got_pc_lo12(nstates)
	ld.w	$a1, $s2, 0
	ori	$s3, $zero, 2
	blt	$a1, $s3, .LBB18_6
# %bb.1:                                # %.lr.ph.preheader
	ori	$s4, $zero, 10
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB18_4
	.p2align	4, , 16
.LBB18_2:                               #   in Loop: Header=BB18_4 Depth=1
	addi.w	$s6, $s6, 1
.LBB18_3:                               #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a1, $s0, %pc_lo12(base)
	ld.d	$a0, $s1, 0
	ldx.h	$a2, $a1, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 2
	bge	$s5, $a1, .LBB18_6
.LBB18_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s4, .LBB18_2
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB18_3
.LBB18_6:                               # %._crit_edge
	ld.d	$a2, $s0, %pc_lo12(base)
	ld.d	$a0, $s1, 0
	slli.d	$a1, $a1, 1
	ldx.h	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	pcalau12i	$s2, %pc_hi20(nvectors)
	ld.w	$a1, $s2, %pc_lo12(nvectors)
	addi.d	$s3, $a0, 1
	addi.w	$a2, $s3, 0
	bge	$a2, $a1, .LBB18_12
# %bb.7:                                # %.lr.ph20.preheader
	slli.d	$a0, $a0, 1
	addi.d	$s4, $a0, 2
	ori	$s5, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB18_10
	.p2align	4, , 16
.LBB18_8:                               #   in Loop: Header=BB18_10 Depth=1
	addi.w	$s6, $s6, 1
.LBB18_9:                               #   in Loop: Header=BB18_10 Depth=1
	ld.d	$a1, $s0, %pc_lo12(base)
	ld.d	$a0, $s1, 0
	ldx.h	$a2, $a1, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(nvectors)
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 2
	bge	$s3, $a0, .LBB18_12
.LBB18_10:                              # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s5, .LBB18_8
# %bb.11:                               #   in Loop: Header=BB18_10 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB18_9
.LBB18_12:                              # %._crit_edge21
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(base)
	beqz	$a0, .LBB18_14
# %bb.13:
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB18_14:
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
.Lfunc_end18:
	.size	output_base, .Lfunc_end18-output_base
                                        # -- End function
	.globl	output_table                    # -- Begin function output_table
	.p2align	5
	.type	output_table,@function
output_table:                           # @output_table
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
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s0, $a0, %got_pc_lo12(ftable)
	ld.d	$a0, $s0, 0
	pcalau12i	$s2, %pc_hi20(high)
	ld.w	$a2, $s2, %pc_lo12(high)
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(table)
	ld.d	$a1, $s1, %pc_lo12(table)
	ld.d	$a0, $s0, 0
	ld.h	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(high)
	blez	$a0, .LBB19_6
# %bb.1:                                # %.lr.ph.preheader
	ori	$s3, $zero, 10
	ori	$s4, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	move	$s5, $zero
	ori	$s6, $zero, 10
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_2:                               #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
.LBB19_3:                               #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a1, $s1, %pc_lo12(table)
	ld.d	$a0, $s0, 0
	ldx.h	$a2, $a1, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(high)
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 2
	bge	$s5, $a0, .LBB19_6
.LBB19_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s6, $s3, .LBB19_2
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=1
	addi.w	$s6, $s6, 1
	b	.LBB19_3
.LBB19_6:                               # %._crit_edge
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(table)
	beqz	$a0, .LBB19_8
# %bb.7:
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB19_8:
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
.Lfunc_end19:
	.size	output_table, .Lfunc_end19-output_table
                                        # -- End function
	.globl	output_check                    # -- Begin function output_check
	.p2align	5
	.type	output_check,@function
output_check:                           # @output_check
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
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s1, $a0, %got_pc_lo12(ftable)
	pcalau12i	$s0, %pc_hi20(check)
	ld.d	$a1, $s0, %pc_lo12(check)
	ld.d	$a0, $s1, 0
	ld.h	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(high)
	ld.w	$a0, $s2, %pc_lo12(high)
	blez	$a0, .LBB20_6
# %bb.1:                                # %.lr.ph.preheader
	ori	$s3, $zero, 10
	ori	$s4, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	move	$s5, $zero
	ori	$s6, $zero, 10
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_2:                               #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
.LBB20_3:                               #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a1, $s0, %pc_lo12(check)
	ld.d	$a0, $s1, 0
	ldx.h	$a2, $a1, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(high)
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 2
	bge	$s5, $a0, .LBB20_6
.LBB20_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s6, $s3, .LBB20_2
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
	addi.w	$s6, $s6, 1
	b	.LBB20_3
.LBB20_6:                               # %._crit_edge
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(check)
	beqz	$a0, .LBB20_8
# %bb.7:
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB20_8:
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
.Lfunc_end20:
	.size	output_check, .Lfunc_end20-output_check
                                        # -- End function
	.globl	action_row                      # -- Begin function action_row
	.p2align	5
	.type	action_row,@function
action_row:                             # @action_row
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$a0, $a0, %got_pc_lo12(ntokens)
	ld.w	$s0, $a0, 0
	blez	$s0, .LBB21_2
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(actrow)
	ld.d	$a0, $a0, %pc_lo12(actrow)
	slli.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB21_2:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(reduction_table)
	ld.d	$a0, $a0, %got_pc_lo12(reduction_table)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	beqz	$a0, .LBB21_12
# %bb.3:
	ld.h	$a2, $a0, 10
	blez	$a2, .LBB21_13
# %bb.4:
	pcalau12i	$a1, %got_pc_hi20(lookaheads)
	ld.d	$a1, $a1, %got_pc_lo12(lookaheads)
	ld.d	$a1, $a1, 0
	alsl.d	$a4, $fp, $a1, 1
	slli.d	$a3, $fp, 1
	ldx.h	$a3, $a1, $a3
	ld.h	$a1, $a4, 2
	bge	$a3, $a1, .LBB21_14
# %bb.5:                                # %.lr.ph136
	blez	$s0, .LBB21_14
# %bb.6:                                # %.lr.ph131.us.preheader
	pcalau12i	$a4, %got_pc_hi20(LAruleno)
	ld.d	$a4, $a4, %got_pc_lo12(LAruleno)
	ld.d	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(LA)
	ld.d	$a5, $a5, %got_pc_lo12(LA)
	ld.d	$a5, $a5, 0
	pcalau12i	$a6, %pc_hi20(actrow)
	ld.d	$a6, $a6, %pc_lo12(actrow)
	pcalau12i	$a7, %got_pc_hi20(tokensetsize)
	ld.d	$a7, $a7, %got_pc_lo12(tokensetsize)
	ld.w	$a7, $a7, 0
	ori	$t0, $zero, 1
	move	$t1, $a1
	b	.LBB21_8
	.p2align	4, , 16
.LBB21_7:                               # %..loopexit124_crit_edge.us
                                        #   in Loop: Header=BB21_8 Depth=1
	bge	$a3, $t1, .LBB21_14
.LBB21_8:                               # %.lr.ph131.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_10 Depth 2
	addi.d	$t1, $t1, -1
	slli.d	$t2, $t1, 1
	ldx.h	$t2, $a4, $t2
	sub.d	$t2, $zero, $t2
	mul.d	$t3, $t1, $a7
	alsl.d	$t3, $t3, $a5, 2
	move	$t4, $s0
	move	$t5, $a6
	ori	$t6, $zero, 1
	b	.LBB21_10
	.p2align	4, , 16
.LBB21_9:                               #   in Loop: Header=BB21_10 Depth=2
	slli.w	$t6, $t6, 1
	sltui	$t7, $t6, 1
	sltu	$t8, $t0, $t6
	masknez	$s1, $t0, $t8
	maskeqz	$t6, $t6, $t8
	or	$t6, $t6, $s1
	alsl.d	$t3, $t7, $t3, 2
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 2
	beqz	$t4, .LBB21_7
.LBB21_10:                              #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t3, 0
	and	$t7, $t7, $t6
	beqz	$t7, .LBB21_9
# %bb.11:                               #   in Loop: Header=BB21_10 Depth=2
	st.h	$t2, $t5, 0
	b	.LBB21_9
.LBB21_12:
	move	$a2, $zero
.LBB21_13:
                                        # implicit-def: $r5
                                        # implicit-def: $r7
.LBB21_14:                              # %.loopexit125
	pcalau12i	$a4, %got_pc_hi20(shift_table)
	ld.d	$a4, $a4, %got_pc_lo12(shift_table)
	ld.d	$a5, $a4, 0
	slli.d	$a4, $fp, 3
	ldx.d	$a6, $a5, $a4
	beqz	$a6, .LBB21_21
# %bb.15:
	ld.h	$a5, $a6, 10
	blez	$a5, .LBB21_21
# %bb.16:                               # %.lr.ph140
	addi.d	$a6, $a6, 12
	pcalau12i	$a7, %got_pc_hi20(accessing_symbol)
	ld.d	$a7, $a7, %got_pc_lo12(accessing_symbol)
	ld.d	$a7, $a7, 0
	pcalau12i	$t0, %pc_hi20(actrow)
	ld.d	$t0, $t0, %pc_lo12(actrow)
	pcalau12i	$t1, %got_pc_hi20(error_token_number)
	ld.d	$t1, $t1, %got_pc_lo12(error_token_number)
	ld.w	$t1, $t1, 0
	move	$t2, $zero
	ori	$t3, $zero, 1
	b	.LBB21_18
	.p2align	4, , 16
.LBB21_17:                              #   in Loop: Header=BB21_18 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 2
	beqz	$a5, .LBB21_22
.LBB21_18:                              # =>This Inner Loop Header: Depth=1
	ld.h	$t5, $a6, 0
	bstrpick.d	$t4, $t5, 15, 0
	beqz	$t4, .LBB21_17
# %bb.19:                               #   in Loop: Header=BB21_18 Depth=1
	slli.d	$t5, $t5, 1
	ldx.h	$t5, $a7, $t5
	bge	$t5, $s0, .LBB21_22
# %bb.20:                               #   in Loop: Header=BB21_18 Depth=1
	slli.d	$t6, $t5, 1
	stx.h	$t4, $t0, $t6
	xor	$t4, $t1, $t5
	sltui	$t4, $t4, 1
	masknez	$t2, $t2, $t4
	maskeqz	$t4, $t3, $t4
	or	$t2, $t4, $t2
	b	.LBB21_17
.LBB21_21:
	move	$a5, $zero
	b	.LBB21_23
.LBB21_22:                              # %.loopexit123.loopexit
	sltu	$a5, $zero, $t2
.LBB21_23:                              # %.loopexit123
	pcalau12i	$a6, %got_pc_hi20(err_table)
	ld.d	$a6, $a6, %got_pc_lo12(err_table)
	ld.d	$a6, $a6, 0
	ldx.d	$a7, $a6, $a4
	beqz	$a7, .LBB21_27
# %bb.24:
	ld.h	$a4, $a7, 0
	blez	$a4, .LBB21_27
# %bb.25:                               # %.lr.ph146
	pcalau12i	$a6, %pc_hi20(actrow)
	ld.d	$a6, $a6, %pc_lo12(actrow)
	addi.d	$a7, $a7, 2
	lu12i.w	$t0, 8
	.p2align	4, , 16
.LBB21_26:                              # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $a7, 0
	slli.d	$t1, $t1, 1
	stx.h	$t0, $a6, $t1
	addi.d	$a4, $a4, -1
	addi.d	$a7, $a7, 2
	bnez	$a4, .LBB21_26
.LBB21_27:                              # %.loopexit122
	slti	$a2, $a2, 1
	or	$a2, $a2, $a5
	andi	$a2, $a2, 1
	beqz	$a2, .LBB21_29
.LBB21_28:
	move	$a0, $zero
	b	.LBB21_31
.LBB21_29:
	pcalau12i	$a2, %got_pc_hi20(consistent)
	ld.d	$a2, $a2, %got_pc_lo12(consistent)
	ld.d	$a2, $a2, 0
	ldx.bu	$a2, $a2, $fp
	beqz	$a2, .LBB21_58
# %bb.30:
	ld.h	$a0, $a0, 12
.LBB21_31:                              # %._crit_edge157.thread
	addi.w	$a1, $a0, 0
	bnez	$a1, .LBB21_73
# %bb.32:                               # %._crit_edge157.thread
	blez	$s0, .LBB21_73
# %bb.33:                               # %.lr.ph165
	pcalau12i	$a1, %pc_hi20(actrow)
	ld.d	$a1, $a1, %pc_lo12(actrow)
	ori	$a2, $zero, 8
	bgeu	$s0, $a2, .LBB21_35
# %bb.34:
	move	$a2, $zero
	b	.LBB21_54
.LBB21_35:                              # %vector.ph241
	bstrpick.d	$a2, $s0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 8
	lu12i.w	$a4, 8
	vreplgr2vr.h	$vr0, $a4
	move	$a4, $a2
	b	.LBB21_37
	.p2align	4, , 16
.LBB21_36:                              # %pred.store.continue262
                                        #   in Loop: Header=BB21_37 Depth=1
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 16
	beqz	$a4, .LBB21_53
.LBB21_37:                              # %vector.body244
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -8
	vseq.h	$vr1, $vr1, $vr0
	vpickve2gr.h	$a5, $vr1, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_45
# %bb.38:                               # %pred.store.if247
                                        #   in Loop: Header=BB21_37 Depth=1
	st.h	$zero, $a3, -8
	vpickve2gr.h	$a5, $vr1, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_46
.LBB21_39:                              # %pred.store.continue250
                                        #   in Loop: Header=BB21_37 Depth=1
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_47
.LBB21_40:                              # %pred.store.if251
                                        #   in Loop: Header=BB21_37 Depth=1
	st.h	$zero, $a3, -4
	vpickve2gr.h	$a5, $vr1, 3
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_48
.LBB21_41:                              # %pred.store.continue254
                                        #   in Loop: Header=BB21_37 Depth=1
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_49
.LBB21_42:                              # %pred.store.if255
                                        #   in Loop: Header=BB21_37 Depth=1
	st.h	$zero, $a3, 0
	vpickve2gr.h	$a5, $vr1, 5
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_50
.LBB21_43:                              # %pred.store.continue258
                                        #   in Loop: Header=BB21_37 Depth=1
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_51
.LBB21_44:                              # %pred.store.if259
                                        #   in Loop: Header=BB21_37 Depth=1
	st.h	$zero, $a3, 4
	vpickve2gr.h	$a5, $vr1, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_36
	b	.LBB21_52
	.p2align	4, , 16
.LBB21_45:                              # %pred.store.continue248
                                        #   in Loop: Header=BB21_37 Depth=1
	vpickve2gr.h	$a5, $vr1, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_39
.LBB21_46:                              # %pred.store.if249
                                        #   in Loop: Header=BB21_37 Depth=1
	st.h	$zero, $a3, -6
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_40
.LBB21_47:                              # %pred.store.continue252
                                        #   in Loop: Header=BB21_37 Depth=1
	vpickve2gr.h	$a5, $vr1, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_41
.LBB21_48:                              # %pred.store.if253
                                        #   in Loop: Header=BB21_37 Depth=1
	st.h	$zero, $a3, -2
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_42
.LBB21_49:                              # %pred.store.continue256
                                        #   in Loop: Header=BB21_37 Depth=1
	vpickve2gr.h	$a5, $vr1, 5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_43
.LBB21_50:                              # %pred.store.if257
                                        #   in Loop: Header=BB21_37 Depth=1
	st.h	$zero, $a3, 2
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_44
.LBB21_51:                              # %pred.store.continue260
                                        #   in Loop: Header=BB21_37 Depth=1
	vpickve2gr.h	$a5, $vr1, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_36
.LBB21_52:                              # %pred.store.if261
                                        #   in Loop: Header=BB21_37 Depth=1
	st.h	$zero, $a3, 6
	b	.LBB21_36
.LBB21_53:                              # %middle.block264
	beq	$a2, $s0, .LBB21_73
.LBB21_54:                              # %scalar.ph239.preheader
	alsl.d	$a1, $a2, $a1, 1
	sub.d	$a2, $s0, $a2
	lu12i.w	$a3, 8
	b	.LBB21_56
	.p2align	4, , 16
.LBB21_55:                              #   in Loop: Header=BB21_56 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2
	beqz	$a2, .LBB21_73
.LBB21_56:                              # %scalar.ph239
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a1, 0
	bne	$a4, $a3, .LBB21_55
# %bb.57:                               #   in Loop: Header=BB21_56 Depth=1
	st.h	$zero, $a1, 0
	b	.LBB21_55
.LBB21_58:                              # %.preheader121
	addi.w	$a1, $a1, 0
	addi.w	$a2, $a3, 0
	bge	$a2, $a1, .LBB21_28
# %bb.59:                               # %.lr.ph156
	blez	$s0, .LBB21_72
# %bb.60:                               # %.lr.ph150.us.preheader
	pcalau12i	$a0, %got_pc_hi20(LAruleno)
	ld.d	$a3, $a0, %got_pc_lo12(LAruleno)
	move	$a5, $zero
	move	$a0, $zero
	pcalau12i	$a4, %pc_hi20(actrow)
	ld.d	$a6, $a4, %pc_lo12(actrow)
	ld.d	$a7, $a3, 0
	bstrpick.d	$a3, $s0, 30, 3
	slli.d	$t0, $a3, 3
	addi.d	$t1, $a6, 8
	ori	$t2, $zero, 8
	vrepli.b	$vr0, 0
	b	.LBB21_62
	.p2align	4, , 16
.LBB21_61:                              # %._crit_edge151.us
                                        #   in Loop: Header=BB21_62 Depth=1
	addi.w	$t4, $t4, 0
	slt	$t5, $a5, $t4
	masknez	$a0, $a0, $t5
	maskeqz	$t3, $t3, $t5
	or	$a0, $t3, $a0
	masknez	$a5, $a5, $t5
	maskeqz	$t3, $t4, $t5
	addi.d	$a2, $a2, 1
	or	$a5, $t3, $a5
	beq	$a2, $a1, .LBB21_69
.LBB21_62:                              # %.lr.ph150.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_65 Depth 2
                                        #     Child Loop BB21_68 Depth 2
	slli.d	$t3, $a2, 1
	ldx.h	$t3, $a7, $t3
	sub.d	$t3, $zero, $t3
	bgeu	$s0, $t2, .LBB21_64
# %bb.63:                               #   in Loop: Header=BB21_62 Depth=1
	move	$t6, $zero
	move	$t4, $zero
	b	.LBB21_67
	.p2align	4, , 16
.LBB21_64:                              # %vector.ph
                                        #   in Loop: Header=BB21_62 Depth=1
	vreplgr2vr.w	$vr1, $t3
	move	$t4, $t1
	move	$t5, $t0
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB21_65:                              # %vector.body
                                        #   Parent Loop BB21_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t4, -8
	ld.d	$t7, $t4, 0
	vinsgr2vr.d	$vr4, $t6, 0
	vinsgr2vr.d	$vr5, $t7, 0
	vsllwil.w.h	$vr4, $vr4, 0
	vsllwil.w.h	$vr5, $vr5, 0
	vseq.w	$vr4, $vr1, $vr4
	vseq.w	$vr5, $vr1, $vr5
	vsub.w	$vr2, $vr2, $vr4
	vsub.w	$vr3, $vr3, $vr5
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 16
	bnez	$t5, .LBB21_65
# %bb.66:                               # %middle.block
                                        #   in Loop: Header=BB21_62 Depth=1
	vadd.w	$vr1, $vr3, $vr2
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$t4, $vr1, 0
	move	$t6, $t0
	beq	$t0, $s0, .LBB21_61
.LBB21_67:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB21_62 Depth=1
	alsl.d	$t5, $t6, $a6, 1
	sub.d	$t6, $s0, $t6
	.p2align	4, , 16
.LBB21_68:                              # %scalar.ph
                                        #   Parent Loop BB21_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t7, $t5, 0
	xor	$t7, $t7, $t3
	sltui	$t7, $t7, 1
	add.d	$t4, $t4, $t7
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 2
	bnez	$t6, .LBB21_68
	b	.LBB21_61
.LBB21_69:                              # %._crit_edge157
	beqz	$a5, .LBB21_31
# %bb.70:                               # %.lr.ph162
	ld.d	$a1, $a4, %pc_lo12(actrow)
	ori	$a2, $zero, 8
	bgeu	$s0, $a2, .LBB21_74
# %bb.71:
	move	$a2, $zero
	b	.LBB21_94
.LBB21_72:
	move	$a0, $zero
.LBB21_73:                              # %.loopexit
	addi.w	$a0, $a0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB21_74:                              # %vector.ph213
	slli.d	$a2, $a3, 3
	vreplgr2vr.w	$vr0, $a0
	addi.d	$a3, $a1, 8
	move	$a4, $a2
	b	.LBB21_76
	.p2align	4, , 16
.LBB21_75:                              # %pred.store.continue234
                                        #   in Loop: Header=BB21_76 Depth=1
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 16
	beqz	$a4, .LBB21_92
.LBB21_76:                              # %vector.body218
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -8
	vsllwil.w.h	$vr2, $vr1, 0
	vseq.w	$vr2, $vr0, $vr2
	vpickve2gr.h	$a5, $vr2, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_80
# %bb.77:                               # %pred.store.if
                                        #   in Loop: Header=BB21_76 Depth=1
	st.h	$zero, $a3, -8
	vpickve2gr.h	$a5, $vr2, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_81
.LBB21_78:                              # %pred.store.continue222
                                        #   in Loop: Header=BB21_76 Depth=1
	vpickve2gr.h	$a5, $vr2, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_82
.LBB21_79:                              # %pred.store.if223
                                        #   in Loop: Header=BB21_76 Depth=1
	st.h	$zero, $a3, -4
	vpickve2gr.h	$a5, $vr2, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_83
	b	.LBB21_84
	.p2align	4, , 16
.LBB21_80:                              # %pred.store.continue
                                        #   in Loop: Header=BB21_76 Depth=1
	vpickve2gr.h	$a5, $vr2, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_78
.LBB21_81:                              # %pred.store.if221
                                        #   in Loop: Header=BB21_76 Depth=1
	st.h	$zero, $a3, -6
	vpickve2gr.h	$a5, $vr2, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_79
.LBB21_82:                              # %pred.store.continue224
                                        #   in Loop: Header=BB21_76 Depth=1
	vpickve2gr.h	$a5, $vr2, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_84
.LBB21_83:                              # %pred.store.if225
                                        #   in Loop: Header=BB21_76 Depth=1
	st.h	$zero, $a3, -2
.LBB21_84:                              # %pred.store.continue226
                                        #   in Loop: Header=BB21_76 Depth=1
	vbsrl.v	$vr1, $vr1, 8
	vsllwil.w.h	$vr1, $vr1, 0
	vseq.w	$vr1, $vr0, $vr1
	vpickve2gr.h	$a5, $vr1, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_88
# %bb.85:                               # %pred.store.if227
                                        #   in Loop: Header=BB21_76 Depth=1
	st.h	$zero, $a3, 0
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_89
.LBB21_86:                              # %pred.store.continue230
                                        #   in Loop: Header=BB21_76 Depth=1
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_90
.LBB21_87:                              # %pred.store.if231
                                        #   in Loop: Header=BB21_76 Depth=1
	st.h	$zero, $a3, 4
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_75
	b	.LBB21_91
	.p2align	4, , 16
.LBB21_88:                              # %pred.store.continue228
                                        #   in Loop: Header=BB21_76 Depth=1
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_86
.LBB21_89:                              # %pred.store.if229
                                        #   in Loop: Header=BB21_76 Depth=1
	st.h	$zero, $a3, 2
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_87
.LBB21_90:                              # %pred.store.continue232
                                        #   in Loop: Header=BB21_76 Depth=1
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_75
.LBB21_91:                              # %pred.store.if233
                                        #   in Loop: Header=BB21_76 Depth=1
	st.h	$zero, $a3, 6
	b	.LBB21_75
.LBB21_92:                              # %middle.block236
	bne	$a2, $s0, .LBB21_94
.LBB21_93:                              # %._crit_edge163
	sub.d	$a0, $zero, $a0
	b	.LBB21_31
.LBB21_94:                              # %scalar.ph211.preheader
	alsl.d	$a1, $a2, $a1, 1
	sub.d	$a2, $s0, $a2
	addi.w	$a3, $a0, 0
	b	.LBB21_96
	.p2align	4, , 16
.LBB21_95:                              #   in Loop: Header=BB21_96 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2
	beqz	$a2, .LBB21_93
.LBB21_96:                              # %scalar.ph211
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	bne	$a3, $a4, .LBB21_95
# %bb.97:                               #   in Loop: Header=BB21_96 Depth=1
	st.h	$zero, $a1, 0
	b	.LBB21_95
.Lfunc_end21:
	.size	action_row, .Lfunc_end21-action_row
                                        # -- End function
	.globl	save_row                        # -- Begin function save_row
	.p2align	5
	.type	save_row,@function
save_row:                               # @save_row
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$s3, $a0, %got_pc_lo12(ntokens)
	ld.w	$a0, $s3, 0
	blez	$a0, .LBB22_15
# %bb.1:                                # %.lr.ph
	pcalau12i	$s2, %pc_hi20(actrow)
	ld.d	$a1, $s2, %pc_lo12(actrow)
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB22_3
# %bb.2:
	move	$a2, $zero
	move	$s4, $zero
	b	.LBB22_6
.LBB22_3:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, 1
	move	$a4, $a2
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB22_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -8
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr4, $a5, 0
	vinsgr2vr.d	$vr5, $a6, 0
	vseqi.h	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr1
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr2
	vseqi.h	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr1
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr2
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB22_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr3, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$s4, $vr0, 0
	beq	$a2, $a0, .LBB22_8
.LBB22_6:                               # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 1
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB22_7:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a1, 0
	sltu	$a2, $zero, $a2
	add.d	$s4, $s4, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 2
	bnez	$a0, .LBB22_7
.LBB22_8:                               # %._crit_edge
	addi.w	$a0, $s4, 0
	beqz	$a0, .LBB22_15
# %bb.9:
	slli.w	$s1, $s4, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(froms)
	ld.d	$a1, $a1, %pc_lo12(froms)
	move	$s0, $a0
	slli.d	$s5, $fp, 3
	stx.d	$a0, $a1, $s5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(tos)
	ld.d	$a2, $a1, %pc_lo12(tos)
	ld.w	$a1, $s3, 0
	stx.d	$a0, $a2, $s5
	move	$a3, $s0
	blez	$a1, .LBB22_14
# %bb.10:                               # %.lr.ph33
	ld.d	$a2, $s2, %pc_lo12(actrow)
	move	$a4, $zero
	move	$a3, $s0
	b	.LBB22_12
	.p2align	4, , 16
.LBB22_11:                              #   in Loop: Header=BB22_12 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	beq	$a1, $a4, .LBB22_14
.LBB22_12:                              # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a2, 0
	beqz	$a5, .LBB22_11
# %bb.13:                               #   in Loop: Header=BB22_12 Depth=1
	st.h	$a4, $a3, 0
	ld.h	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a6, $a0, 2
	st.h	$a5, $a0, 0
	move	$a0, $a6
	b	.LBB22_11
.LBB22_14:                              # %._crit_edge34
	pcalau12i	$a0, %pc_hi20(tally)
	ld.d	$a0, $a0, %pc_lo12(tally)
	slli.d	$a1, $fp, 1
	stx.h	$s4, $a0, $a1
	ld.h	$a0, $a3, -2
	ld.h	$a2, $s0, 0
	pcalau12i	$a3, %pc_hi20(width)
	ld.d	$a3, $a3, %pc_lo12(width)
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	stx.h	$a0, $a3, $a1
.LBB22_15:                              # %._crit_edge.thread
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
.Lfunc_end22:
	.size	save_row, .Lfunc_end22-save_row
                                        # -- End function
	.globl	default_goto                    # -- Begin function default_goto
	.p2align	5
	.type	default_goto,@function
default_goto:                           # @default_goto
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(goto_map)
	ld.d	$a1, $a1, %got_pc_lo12(goto_map)
	ld.d	$a1, $a1, 0
	alsl.d	$a2, $a0, $a1, 1
	slli.d	$a0, $a0, 1
	ldx.hu	$a1, $a1, $a0
	ld.hu	$a2, $a2, 2
	addi.w	$a0, $zero, -1
	beq	$a1, $a2, .LBB23_9
# %bb.1:                                # %.preheader30
	ext.w.h	$s1, $a1
	ext.w.h	$s2, $a2
	pcalau12i	$a1, %got_pc_hi20(nstates)
	ld.d	$a1, $a1, %got_pc_lo12(nstates)
	ld.w	$fp, $a1, 0
	pcalau12i	$s0, %pc_hi20(state_count)
	blez	$fp, .LBB23_3
# %bb.2:                                # %.lr.ph
	ld.d	$a1, $s0, %pc_lo12(state_count)
	slli.d	$a2, $fp, 1
	bstrpick.d	$a2, $a2, 31, 1
	slli.d	$a2, $a2, 1
	move	$s3, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB23_3:                               # %.preheader29
	bge	$s1, $s2, .LBB23_6
# %bb.4:                                # %.lr.ph33
	ld.d	$a1, $s0, %pc_lo12(state_count)
	pcalau12i	$a2, %got_pc_hi20(to_state)
	ld.d	$a2, $a2, %got_pc_lo12(to_state)
	ld.d	$a2, $a2, 0
	alsl.d	$a2, $s1, $a2, 1
	sub.d	$a3, $s2, $s1
	.p2align	4, , 16
.LBB23_5:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a2, 0
	slli.d	$a4, $a4, 1
	ldx.h	$a5, $a1, $a4
	addi.d	$a5, $a5, 1
	stx.h	$a5, $a1, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	bnez	$a3, .LBB23_5
.LBB23_6:                               # %.preheader
	blez	$fp, .LBB23_9
# %bb.7:                                # %.lr.ph37
	ld.d	$a1, $s0, %pc_lo12(state_count)
	move	$a2, $zero
	move	$a3, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB23_8:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	slt	$a5, $a3, $a4
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a2, $a5
	or	$a0, $a5, $a0
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	addi.d	$a1, $a1, 2
	addi.d	$fp, $fp, -1
	addi.w	$a2, $a2, 1
	bnez	$fp, .LBB23_8
.LBB23_9:                               # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end23:
	.size	default_goto, .Lfunc_end23-default_goto
                                        # -- End function
	.globl	save_column                     # -- Begin function save_column
	.p2align	5
	.type	save_column,@function
save_column:                            # @save_column
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
	pcalau12i	$a2, %got_pc_hi20(goto_map)
	ld.d	$a2, $a2, %got_pc_lo12(goto_map)
	ld.d	$a2, $a2, 0
	alsl.d	$a3, $a0, $a2, 1
	slli.d	$a4, $a0, 1
	ldx.h	$s2, $a2, $a4
	ld.h	$a2, $a3, 2
	bge	$s2, $a2, .LBB24_14
# %bb.1:                                # %.lr.ph
	pcalau12i	$a3, %got_pc_hi20(to_state)
	ld.d	$s3, $a3, %got_pc_lo12(to_state)
	ld.d	$a3, $s3, 0
	sub.d	$s1, $a2, $s2
	ori	$a4, $zero, 8
	bgeu	$s1, $a4, .LBB24_3
# %bb.2:
	move	$s4, $zero
	move	$a4, $s2
	b	.LBB24_6
.LBB24_3:                               # %vector.ph
	move	$a5, $s1
	bstrins.d	$a5, $zero, 2, 0
	add.d	$a4, $a5, $s2
	vreplgr2vr.w	$vr0, $a1
	alsl.d	$a6, $s2, $a3, 1
	vrepli.b	$vr1, 0
	addi.d	$a6, $a6, 8
	move	$a7, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB24_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	vinsgr2vr.d	$vr3, $t0, 0
	vinsgr2vr.d	$vr4, $t1, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.w.h	$vr4, $vr4, 0
	vseq.w	$vr3, $vr0, $vr3
	vseq.w	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	vadd.w	$vr2, $vr2, $vr4
	vaddi.wu	$vr2, $vr2, 1
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB24_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$s4, $vr0, 0
	beq	$s1, $a5, .LBB24_8
.LBB24_6:                               # %scalar.ph.preheader
	alsl.d	$a3, $a4, $a3, 1
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB24_7:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a3, 0
	xor	$a4, $a1, $a4
	sltu	$a4, $zero, $a4
	add.d	$s4, $s4, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 2
	bnez	$a2, .LBB24_7
.LBB24_8:                               # %._crit_edge
	addi.w	$a2, $s4, 0
	beqz	$a2, .LBB24_14
# %bb.9:                                # %.lr.ph44
	pcalau12i	$a2, %got_pc_hi20(ntokens)
	ld.d	$a2, $a2, %got_pc_lo12(ntokens)
	ld.w	$a2, $a2, 0
	sub.d	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(nstates)
	ld.d	$a2, $a2, %got_pc_lo12(nstates)
	ld.w	$a2, $a2, 0
	add.w	$s5, $a0, $a2
	slli.w	$s0, $s4, 1
	move	$a0, $s0
	move	$s6, $a1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(froms)
	ld.d	$a1, $a1, %pc_lo12(froms)
	move	$fp, $a0
	slli.d	$s7, $s5, 3
	stx.d	$a0, $a1, $s7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcalau12i	$a2, %pc_hi20(tos)
	ld.d	$a2, $a2, %pc_lo12(tos)
	stx.d	$a0, $a2, $s7
	ld.d	$a2, $s3, 0
	pcalau12i	$a3, %got_pc_hi20(from_state)
	ld.d	$a3, $a3, %got_pc_lo12(from_state)
	ld.d	$a3, $a3, 0
	alsl.d	$a2, $s2, $a2, 1
	alsl.d	$a3, $s2, $a3, 1
	move	$a4, $fp
	b	.LBB24_11
	.p2align	4, , 16
.LBB24_10:                              #   in Loop: Header=BB24_11 Depth=1
	addi.d	$a2, $a2, 2
	addi.d	$s1, $s1, -1
	addi.d	$a3, $a3, 2
	beqz	$s1, .LBB24_13
.LBB24_11:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, 0
	beq	$a1, $a5, .LBB24_10
# %bb.12:                               #   in Loop: Header=BB24_11 Depth=1
	ld.h	$a5, $a3, 0
	st.h	$a5, $a4, 0
	ld.h	$a5, $a2, 0
	addi.d	$a4, $a4, 2
	addi.d	$a6, $a0, 2
	st.h	$a5, $a0, 0
	move	$a0, $a6
	b	.LBB24_10
.LBB24_13:                              # %._crit_edge45
	pcalau12i	$a0, %pc_hi20(tally)
	ld.d	$a0, $a0, %pc_lo12(tally)
	slli.d	$a1, $s5, 1
	stx.h	$s4, $a0, $a1
	ld.h	$a0, $a4, -2
	ld.h	$a2, $fp, 0
	pcalau12i	$a3, %pc_hi20(width)
	ld.d	$a3, $a3, %pc_lo12(width)
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	stx.h	$a0, $a3, $a1
.LBB24_14:                              # %._crit_edge.thread
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
.Lfunc_end24:
	.size	save_column, .Lfunc_end24-save_column
                                        # -- End function
	.globl	matching_state                  # -- Begin function matching_state
	.p2align	5
	.type	matching_state,@function
matching_state:                         # @matching_state
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(order)
	ld.d	$a2, $a1, %pc_lo12(order)
	move	$a1, $a0
	slli.d	$a0, $a0, 1
	ldx.h	$t2, $a2, $a0
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$a0, $a0, %got_pc_lo12(nstates)
	ld.w	$a3, $a0, 0
	addi.w	$a0, $zero, -1
	bge	$t2, $a3, .LBB25_16
# %bb.1:
	pcalau12i	$a3, %pc_hi20(tally)
	ld.d	$a3, $a3, %pc_lo12(tally)
	pcalau12i	$a4, %pc_hi20(width)
	ld.d	$a5, $a4, %pc_lo12(width)
	slli.d	$a4, $t2, 1
	ldx.h	$a7, $a3, $a4
	ldx.hu	$a6, $a5, $a4
	ext.w.h	$a4, $a7
	blez	$a4, .LBB25_12
# %bb.2:                                # %.split.us.preheader
	blez	$a1, .LBB25_16
# %bb.3:                                # %.lr.ph
	pcalau12i	$a7, %pc_hi20(tos)
	ld.d	$a7, $a7, %pc_lo12(tos)
	pcalau12i	$t0, %pc_hi20(froms)
	ld.d	$t0, $t0, %pc_lo12(froms)
	alsl.d	$t1, $t2, $a7, 3
	alsl.d	$t2, $t2, $t0, 3
	bstrpick.d	$t3, $a4, 15, 0
	b	.LBB25_5
	.p2align	4, , 16
.LBB25_4:                               # %._crit_edge.us
                                        #   in Loop: Header=BB25_5 Depth=1
	addi.w	$t4, $a1, 0
	blez	$t4, .LBB25_16
.LBB25_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_8 Depth 2
	addi.d	$a1, $a1, -1
	slli.d	$t4, $a1, 1
	ldx.h	$fp, $a2, $t4
	slli.d	$t4, $fp, 1
	ldx.hu	$t5, $a5, $t4
	bne	$t5, $a6, .LBB25_16
# %bb.6:                                #   in Loop: Header=BB25_5 Depth=1
	ldx.hu	$t4, $a3, $t4
	bne	$t4, $t3, .LBB25_16
# %bb.7:                                # %.preheader.us
                                        #   in Loop: Header=BB25_5 Depth=1
	slli.d	$t4, $fp, 3
	ldx.d	$t4, $a7, $t4
	ld.d	$t6, $t1, 0
	move	$t7, $zero
	move	$t8, $zero
	bstrpick.d	$t5, $fp, 15, 0
	alsl.d	$fp, $fp, $t0, 3
	.p2align	4, , 16
.LBB25_8:                               #   Parent Loop BB25_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.hu	$s0, $t4, $t7
	ldx.hu	$s1, $t6, $t7
	bne	$s0, $s1, .LBB25_4
# %bb.9:                                #   in Loop: Header=BB25_8 Depth=2
	ld.d	$s0, $fp, 0
	ld.d	$s1, $t2, 0
	ldx.hu	$s0, $s0, $t7
	ldx.hu	$s1, $s1, $t7
	bne	$s0, $s1, .LBB25_4
# %bb.10:                               #   in Loop: Header=BB25_8 Depth=2
	addi.d	$t8, $t8, 1
	addi.d	$t7, $t7, 2
	bltu	$t8, $a4, .LBB25_8
.LBB25_11:                              # %.loopexit.split.loop.exit39
	ext.w.h	$a0, $t5
	b	.LBB25_16
.LBB25_12:                              # %.split
	blez	$a1, .LBB25_16
# %bb.13:
	alsl.d	$a1, $a1, $a2, 1
	ld.h	$a1, $a1, -2
	slli.d	$a2, $a1, 1
	ldx.hu	$a5, $a5, $a2
	bne	$a5, $a6, .LBB25_16
# %bb.14:
	ldx.hu	$a2, $a3, $a2
	bstrpick.d	$a3, $a4, 15, 0
	bne	$a2, $a3, .LBB25_16
# %bb.15:
	bstrpick.d	$t5, $a1, 15, 0
	b	.LBB25_11
.LBB25_16:                              # %.loopexit
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end25:
	.size	matching_state, .Lfunc_end25-matching_state
                                        # -- End function
	.globl	pack_vector                     # -- Begin function pack_vector
	.p2align	5
	.type	pack_vector,@function
pack_vector:                            # @pack_vector
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
	pcalau12i	$a1, %pc_hi20(order)
	ld.d	$a1, $a1, %pc_lo12(order)
	move	$s0, $a0
	slli.d	$a0, $a0, 1
	ldx.h	$fp, $a1, $a0
	pcalau12i	$a0, %pc_hi20(tally)
	ld.d	$a0, $a0, %pc_lo12(tally)
	slli.d	$a1, $fp, 1
	ldx.h	$s4, $a0, $a1
	bnez	$s4, .LBB26_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(berror)
	jirl	$ra, $ra, 0
.LBB26_2:
	pcalau12i	$a0, %pc_hi20(froms)
	ld.d	$a1, $a0, %pc_lo12(froms)
	slli.d	$a0, $fp, 3
	ldx.d	$s5, $a1, $a0
	pcalau12i	$a1, %pc_hi20(lowzero)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(lowzero)
	ld.h	$a2, $s5, 0
	sub.w	$fp, $a1, $a2
	lu12i.w	$a1, 7
	ori	$a2, $a1, 4094
	blt	$a2, $fp, .LBB26_25
# %bb.3:                                # %.preheader51.lr.ph
	pcalau12i	$a2, %pc_hi20(tos)
	ld.d	$a2, $a2, %pc_lo12(tos)
	ldx.d	$a0, $a2, $a0
	blez	$s4, .LBB26_18
# %bb.4:                                # %.preheader51.us.preheader
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$s8, 8
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$s1, $a0, %pc_lo12(.L.str.35)
	ori	$s2, $a1, 4095
	pcalau12i	$s3, %pc_hi20(table)
	pcalau12i	$a0, %pc_hi20(pos)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB26_5:                               # %.preheader51.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_6 Depth 2
                                        #     Child Loop BB26_13 Depth 2
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB26_6:                               #   Parent Loop BB26_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a1, $s5, 0
	add.w	$s7, $fp, $a1
	move	$s6, $a0
	blt	$s7, $s8, .LBB26_8
# %bb.7:                                #   in Loop: Header=BB26_6 Depth=2
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(fatals)
	jirl	$ra, $ra, 0
.LBB26_8:                               #   in Loop: Header=BB26_6 Depth=2
	ld.d	$a0, $s3, %pc_lo12(table)
	slli.d	$a1, $s7, 1
	ldx.hu	$a1, $a0, $a1
	bnez	$a1, .LBB26_10
# %bb.9:                                #   in Loop: Header=BB26_6 Depth=2
	addi.d	$s5, $s5, 2
	addi.d	$a0, $s6, 1
	bltu	$s6, $s4, .LBB26_6
.LBB26_10:                              # %..preheader50_crit_edge.us
                                        #   in Loop: Header=BB26_5 Depth=1
	sltui	$a0, $a1, 1
	bnez	$a1, .LBB26_17
# %bb.11:                               # %..preheader50_crit_edge.us
                                        #   in Loop: Header=BB26_5 Depth=1
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	blez	$s0, .LBB26_15
# %bb.12:                               # %.lr.ph56.us
                                        #   in Loop: Header=BB26_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(pos)
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB26_13:                              #   Parent Loop BB26_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a1, 0
	xor	$a0, $fp, $a4
	sltu	$a0, $zero, $a0
	beq	$fp, $a4, .LBB26_15
# %bb.14:                               #   in Loop: Header=BB26_13 Depth=2
	move	$a3, $a2
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 1
	blt	$a3, $s0, .LBB26_13
.LBB26_15:                              # %._crit_edge.us
                                        #   in Loop: Header=BB26_5 Depth=1
	bnez	$a0, .LBB26_29
.LBB26_16:                              #   in Loop: Header=BB26_5 Depth=1
	addi.w	$fp, $fp, 1
	bne	$fp, $s2, .LBB26_5
	b	.LBB26_25
	.p2align	4, , 16
.LBB26_17:                              #   in Loop: Header=BB26_5 Depth=1
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB26_16
	b	.LBB26_29
.LBB26_18:                              # %.preheader51.lr.ph.split
	blez	$s0, .LBB26_27
# %bb.19:
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(pos)
	ld.d	$a0, $a0, %pc_lo12(pos)
	ori	$a1, $a1, 4095
	.p2align	4, , 16
.LBB26_20:                              # %.preheader51.us62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_21 Depth 2
	ori	$a3, $zero, 1
	move	$a2, $a0
	.p2align	4, , 16
.LBB26_21:                              #   Parent Loop BB26_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a2, 0
	beq	$fp, $a4, .LBB26_23
# %bb.22:                               #   in Loop: Header=BB26_21 Depth=2
	move	$a5, $a3
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 1
	blt	$a5, $s0, .LBB26_21
.LBB26_23:                              # %._crit_edge.us67
                                        #   in Loop: Header=BB26_20 Depth=1
	bne	$fp, $a4, .LBB26_28
# %bb.24:                               #   in Loop: Header=BB26_20 Depth=1
	addi.w	$fp, $fp, 1
	bne	$fp, $a1, .LBB26_20
.LBB26_25:                              # %._crit_edge60
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(berror)
	jirl	$ra, $ra, 0
	move	$fp, $zero
.LBB26_26:
	move	$a0, $fp
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
.LBB26_27:                              # %.preheader49.thread
	pcalau12i	$a0, %pc_hi20(table)
	ld.d	$a0, $a0, %pc_lo12(table)
                                        # implicit-def: $r30
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	b	.LBB26_32
.LBB26_28:
                                        # implicit-def: $r30
.LBB26_29:                              # %.preheader49
	pcalau12i	$a0, %pc_hi20(table)
	ld.d	$a0, $a0, %pc_lo12(table)
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	blez	$s4, .LBB26_32
# %bb.30:                               # %.lr.ph
	pcalau12i	$a1, %pc_hi20(check)
	ld.d	$a1, $a1, %pc_lo12(check)
	.p2align	4, , 16
.LBB26_31:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a2, $s5, 0
	ld.h	$a3, $a5, 0
	add.w	$s7, $fp, $a2
	slli.d	$a2, $s7, 1
	stx.h	$a3, $a0, $a2
	ld.h	$a3, $s5, 0
	stx.h	$a3, $a1, $a2
	addi.d	$a5, $a5, 2
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 2
	bnez	$s4, .LBB26_31
.LBB26_32:                              # %.preheader
	ld.w	$a1, $a4, %pc_lo12(lowzero)
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	beqz	$a2, .LBB26_36
# %bb.33:                               # %.lr.ph75.preheader
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	.p2align	4, , 16
.LBB26_34:                              # %.lr.ph75
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB26_34
# %bb.35:                               # %._crit_edge
	st.w	$a1, $a4, %pc_lo12(lowzero)
.LBB26_36:
	pcalau12i	$a0, %pc_hi20(high)
	ld.w	$a1, $a0, %pc_lo12(high)
	addi.w	$a2, $s7, 0
	bge	$a1, $a2, .LBB26_26
# %bb.37:
	st.w	$s7, $a0, %pc_lo12(high)
	b	.LBB26_26
.Lfunc_end26:
	.size	pack_vector, .Lfunc_end26-pack_vector
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n#include \"%s\"\nextern int yyerror;\nextern int yycost;\nextern char * yymsg;\nextern YYSTYPE yyval;\n\nyyguard(n, yyvsp, yylsp)\nregister int n;\nregister YYSTYPE *yyvsp;\nregister YYLTYPE *yylsp;\n{\n  yyerror = 0;\nyycost = 0;\n  yymsg = 0;\nswitch (n)\n    {"
	.size	.L.str, 248

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n#include \"%s\"\nextern YYSTYPE yyval;\nextern int yychar;yyaction(n, yyvsp, yylsp)\nregister int n;\nregister YYSTYPE *yyvsp;\nregister YYLTYPE *yylsp;\n{\n  switch (n)\n{"
	.size	.L.str.1, 164

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n  switch (yyn) {\n"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n    }\n}\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n}\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"#define YYDEBUG\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"#include \"%s\"\n"
	.size	.L.str.6, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"#include <stdio.h>\n\n"
	.size	.L.str.7, 21

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"#ifndef __STDC__\n#define const\n#endif\n\n"
	.size	.L.str.8, 40

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\n#define YYTRANSLATE(x) ((unsigned)(x) <= %d ? yytranslate[x] : %d)\n"
	.size	.L.str.9, 69

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\nstatic const char yytranslate[] = {     0"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\nstatic const short yytranslate[] = {     0"
	.size	.L.str.11, 44

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%6d"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\n};\n"
	.size	.L.str.13, 5

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\n#define YYTRANSLATE(x) (x)\n"
	.size	.L.str.14, 29

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\nstatic const short yyprhs[] = {     0"
	.size	.L.str.15, 39

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\n};\n\nstatic const short yyrhs[] = {%6d"
	.size	.L.str.16, 39

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"     0"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\nstatic const short yystos[] = {     0"
	.size	.L.str.18, 39

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\nstatic const short yyrline[] = {     0"
	.size	.L.str.19, 40

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\n};\n\nstatic const char * const yytname[] = {     0"
	.size	.L.str.20, 51

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\\%c"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\\n"
	.size	.L.str.22, 3

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"\\t"
	.size	.L.str.23, 3

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\\b"
	.size	.L.str.24, 3

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\\%03o"
	.size	.L.str.25, 6

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"\n};\n\nstatic const short yyr1[] = {     0"
	.size	.L.str.26, 41

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\n};\n\nstatic const short yyr2[] = {     0"
	.size	.L.str.27, 41

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"%6d\n};\n"
	.size	.L.str.28, 8

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"\n\n#define\tYYFINAL\t\t%d\n"
	.size	.L.str.29, 23

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"#define\tYYFLAG\t\t%d\n"
	.size	.L.str.30, 20

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"#define\tYYNTBASE\t%d\n"
	.size	.L.str.31, 21

	.type	nvectors,@object                # @nvectors
	.local	nvectors
	.comm	nvectors,4,4
	.type	froms,@object                   # @froms
	.local	froms
	.comm	froms,8,8
	.type	tos,@object                     # @tos
	.local	tos
	.comm	tos,8,8
	.type	tally,@object                   # @tally
	.local	tally
	.comm	tally,8,8
	.type	width,@object                   # @width
	.local	width
	.comm	width,8,8
	.type	actrow,@object                  # @actrow
	.local	actrow
	.comm	actrow,8,8
	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"\nstatic const short yydefact[] = {%6d"
	.size	.L.str.32, 38

	.type	state_count,@object             # @state_count
	.local	state_count
	.comm	state_count,8,8
	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\nstatic const short yydefgoto[] = {%6d"
	.size	.L.str.33, 39

	.type	order,@object                   # @order
	.local	order
	.comm	order,8,8
	.type	nentries,@object                # @nentries
	.local	nentries
	.comm	nentries,4,4
	.type	base,@object                    # @base
	.local	base
	.comm	base,8,8
	.type	pos,@object                     # @pos
	.local	pos
	.comm	pos,8,8
	.type	table,@object                   # @table
	.local	table
	.comm	table,8,8
	.type	check,@object                   # @check
	.local	check
	.comm	check,8,8
	.type	lowzero,@object                 # @lowzero
	.local	lowzero
	.comm	lowzero,4,4
	.type	high,@object                    # @high
	.local	high
	.comm	high,4,4
	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"pack_vector"
	.size	.L.str.34, 12

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"maximum table size (%d) exceeded"
	.size	.L.str.35, 33

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"\nstatic const short yypact[] = {%6d"
	.size	.L.str.36, 36

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"\n};\n\nstatic const short yypgoto[] = {%6d"
	.size	.L.str.37, 41

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"\n\n#define\tYYLAST\t\t%d\n\n"
	.size	.L.str.38, 23

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"\nstatic const short yytable[] = {%6d"
	.size	.L.str.39, 37

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"\nstatic const short yycheck[] = {%6d"
	.size	.L.str.40, 37

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"#define YYIMPURE 1\n\n"
	.size	.L.str.41, 21

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"#define YYPURE 1\n\n"
	.size	.L.str.42, 19

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"#lin"
	.size	.L.str.43, 5

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"#li"
	.size	.L.str.44, 4

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"#l"
	.size	.L.str.45, 3

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"#line %d \"%s\"\n"
	.size	.L.str.47, 15

	.section	".note.GNU-stack","",@progbits
	.addrsig
