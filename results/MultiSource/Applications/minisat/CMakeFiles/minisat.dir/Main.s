	.file	"Main.cpp"
	.text
	.globl	_Z10printStatsR6Solver          # -- Begin function _Z10printStatsR6Solver
	.p2align	5
	.type	_Z10printStatsR6Solver,@function
_Z10printStatsR6Solver:                 # @_Z10printStatsR6Solver
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$a1, $sp, 16
	move	$a0, $zero
	pcaddu18i	$ra, %call36(getrusage)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getpid)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	addi.d	$a2, $sp, 12
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__isoc23_fscanf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %_ZL7memUsedv.exit
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	ld.d	$a2, $fp, 104
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $fp, 136
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 120
	ld.d	$a0, $s0, 0
	ld.d	$a2, $fp, 112
	srli.d	$a3, $a1, 1
	andi	$a4, $a1, 1
	or	$a3, $a4, $a3
	movgr2fr.d	$fa0, $a3
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a3, $a1, 0
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a3
	fsel	$fa0, $fa1, $fa0, $fcc0
	lu12i.w	$a1, 273536
	movgr2fr.w	$fa1, $a1
	fmul.s	$fa0, $fa0, $fa1
	srli.d	$a1, $a2, 1
	andi	$a3, $a2, 1
	or	$a1, $a3, $a1
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fadd.s	$fa1, $fa1, $fa1
	slti	$a1, $a2, 0
	movgr2fr.d	$fa2, $a2
	ffint.s.l	$fa2, $fa2
	movgr2cf	$fcc0, $a1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $fp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 168
	ld.d	$a1, $fp, 160
	ld.d	$a0, $s0, 0
	sub.d	$a3, $a1, $a2
	ori	$a4, $zero, 100
	mul.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 32
	lu52i.d	$a5, $zero, 1107
	or	$a4, $a4, $a5
	movgr2fr.d	$fa0, $a4
	lu12i.w	$a4, 256
	lu52i.d	$a4, $a4, 1107
	movgr2fr.d	$fa1, $a4
	fsub.d	$fa0, $fa0, $fa1
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	lu52i.d	$a4, $zero, 1075
	or	$a3, $a3, $a4
	movgr2fr.d	$fa2, $a3
	fadd.d	$fa0, $fa2, $fa0
	srli.d	$a3, $a1, 32
	or	$a3, $a3, $a5
	movgr2fr.d	$fa2, $a3
	fsub.d	$fa1, $fa2, $fa1
	lu12i.w	$a3, 275200
	bstrins.d	$a1, $a3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end0:
	.size	_Z10printStatsR6Solver, .Lfunc_end0-_Z10printStatsR6Solver
	.cfi_endproc
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	_Z10printUsagePPc               # -- Begin function _Z10printUsagePPc
	.p2align	5
	.type	_Z10printUsagePPc,@function
_Z10printUsagePPc:                      # @_Z10printUsagePPc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	ld.d	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end1:
	.size	_Z10printUsagePPc, .Lfunc_end1-_Z10printUsagePPc
                                        # -- End function
	.text
	.globl	_Z9hasPrefixPKcS0_              # -- Begin function _Z9hasPrefixPKcS0_
	.p2align	5
	.type	_Z9hasPrefixPKcS0_,@function
_Z9hasPrefixPKcS0_:                     # @_Z9hasPrefixPKcS0_
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s0, $a0, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_2
# %bb.1:
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_2:
	add.d	$a0, $fp, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strdup)
	jr	$t8
.Lfunc_end2:
	.size	_Z9hasPrefixPKcS0_, .Lfunc_end2-_Z9hasPrefixPKcS0_
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -832
	.cfi_def_cfa_offset 832
	st.d	$ra, $sp, 824                   # 8-byte Folded Spill
	st.d	$fp, $sp, 816                   # 8-byte Folded Spill
	st.d	$s0, $sp, 808                   # 8-byte Folded Spill
	st.d	$s1, $sp, 800                   # 8-byte Folded Spill
	st.d	$s2, $sp, 792                   # 8-byte Folded Spill
	st.d	$s3, $sp, 784                   # 8-byte Folded Spill
	st.d	$s4, $sp, 776                   # 8-byte Folded Spill
	st.d	$s5, $sp, 768                   # 8-byte Folded Spill
	st.d	$s6, $sp, 760                   # 8-byte Folded Spill
	st.d	$s7, $sp, 752                   # 8-byte Folded Spill
	st.d	$s8, $sp, 744                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 736                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN6SolverC1Ev)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 152
	blez	$s0, .LBB3_35
# %bb.1:                                # %.lr.ph
	slli.d	$fp, $s0, 3
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s4, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s6, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s7, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s8, $a0, %pc_lo12(.L.str.29)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s3, $a0, %pc_lo12(.L.str.30)
	move	$s5, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB3_4
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	st.w	$zero, $sp, 148
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	addi.d	$s5, $s5, 8
	beq	$fp, $s5, .LBB3_35
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s2, $a0, $s5
	ori	$a2, $zero, 15
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_15
.LBB3_5:                                # %_Z9hasPrefixPKcS0_.exit.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_20
.LBB3_6:                                # %_Z9hasPrefixPKcS0_.exit107.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 7
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
.LBB3_7:                                # %_Z9hasPrefixPKcS0_.exit110.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 11
	move	$a0, $s2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_30
.LBB3_8:                                # %sub_0
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$s1, $s2, 0
	ori	$a0, $zero, 45
	bne	$s1, $a0, .LBB3_11
# %bb.9:                                # %sub_1
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a0, $s2, 1
	ori	$a1, $zero, 104
	bne	$a0, $a1, .LBB3_11
# %bb.10:                               # %_Z9hasPrefixPKcS0_.exit113.thread.tail
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a0, $s2, 2
	beqz	$a0, .LBB3_116
.LBB3_11:                               # %_Z9hasPrefixPKcS0_.exit113.thread.tail.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $s2
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_116
# %bb.12:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_116
# %bb.13:                               #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 45
	beq	$s1, $a0, .LBB3_117
# %bb.14:                               #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a0, $a1, 3
	addi.w	$a1, $a1, 1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	stx.d	$s2, $a2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_15:                               # %_Z9hasPrefixPKcS0_.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $s2, 15
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_5
# %bb.16:                               #   in Loop: Header=BB3_4 Depth=1
	move	$s1, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_2
# %bb.17:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_34
# %bb.18:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_121
# %bb.19:                               #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 148
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_20:                               # %_Z9hasPrefixPKcS0_.exit107
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $s2, 10
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_6
# %bb.21:                               #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a2, $sp, 592
	move	$s1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB3_119
# %bb.22:                               #   in Loop: Header=BB3_4 Depth=1
	fld.d	$fa0, $sp, 592
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB3_119
# %bb.23:                               #   in Loop: Header=BB3_4 Depth=1
	vldi	$vr1, -912
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_119
# %bb.24:                               #   in Loop: Header=BB3_4 Depth=1
	fst.d	$fa0, $sp, 104
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_25:                               # %_Z9hasPrefixPKcS0_.exit110
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $s2, 7
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_7
# %bb.26:                               #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a2, $sp, 592
	move	$s1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB3_120
# %bb.27:                               #   in Loop: Header=BB3_4 Depth=1
	fld.d	$fa0, $sp, 592
	fcmp.cle.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB3_120
# %bb.28:                               #   in Loop: Header=BB3_4 Depth=1
	vldi	$vr1, -912
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_120
# %bb.29:                               #   in Loop: Header=BB3_4 Depth=1
	frecip.d	$fa0, $fa0
	fst.d	$fa0, $sp, 88
	b	.LBB3_3
.LBB3_30:                               # %_Z9hasPrefixPKcS0_.exit113
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $s2, 11
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_8
# %bb.31:                               #   in Loop: Header=BB3_4 Depth=1
	move	$s1, $a0
	addi.d	$a1, $sp, 592
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 592
	beq	$a1, $s1, .LBB3_118
# %bb.32:                               #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a1, $a1, 0
	bnez	$a1, .LBB3_118
# %bb.33:                               #   in Loop: Header=BB3_4 Depth=1
	st.w	$a0, $sp, 152
	b	.LBB3_3
.LBB3_34:                               #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 148
	b	.LBB3_3
.LBB3_35:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 592
	move	$a0, $zero
	pcaddu18i	$ra, %call36(getrusage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(solver)
	addi.d	$a1, $sp, 56
	st.d	$a1, $a0, %pc_lo12(solver)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_37
# %bb.36:
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$s2, $a0, 0
	b	.LBB3_38
.LBB3_37:                               # %.critedge
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB3_38:
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	beqz	$s2, .LBB3_124
# %bb.39:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 80
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 80
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.Ltmp0:                                 # EH_LABEL
	lu12i.w	$s4, 256
	ori	$s3, $s4, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.40:                               # %.noexc.split
	move	$s1, $a0
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $a0, 0
	ori	$a0, $s4, 8
	stx.d	$zero, $s1, $a0
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s1, 8
.Ltmp3:                                 # EH_LABEL
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.41:
	addu16i.d	$a1, $s1, 16
	addi.d	$s8, $a1, 8
	st.w	$a0, $s8, 4
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 592
	ori	$s0, $zero, 9
	ori	$s7, $zero, 14
	lu12i.w	$s3, 256
	ori	$s4, $zero, 32
	ori	$s6, $zero, 99
	ori	$fp, $zero, 255
	ori	$s5, $zero, 2
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_42:                               # %_ZL10readClauseI12StreamBufferEvRT_R6SolverR3vecI3LitE.exit.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
.Ltmp46:                                # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 592
	pcaddu18i	$ra, %call36(_ZN6Solver9addClauseER3vecI3LitE)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
	ori	$s4, $zero, 32
	ori	$s6, $zero, 99
.LBB3_43:                               # %_ZL8skipLineI12StreamBufferEvRT_.exit.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ld.w	$a0, $s8, 4
.LBB3_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_45 Depth 2
                                        #     Child Loop BB3_60 Depth 2
                                        #       Child Loop BB3_62 Depth 3
                                        #     Child Loop BB3_68 Depth 2
	ld.w	$a1, $s8, 0
	.p2align	4, , 16
.LBB3_45:                               #   Parent Loop BB3_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB3_52
# %bb.46:                               # %_ZN12StreamBufferdeEv.exit.i.i.i
                                        #   in Loop: Header=BB3_45 Depth=2
	ldx.b	$a2, $s2, $a1
	blt	$a2, $s0, .LBB3_52
# %bb.47:                               # %_ZN12StreamBufferdeEv.exit5.i.i.i
                                        #   in Loop: Header=BB3_45 Depth=2
	andi	$a2, $a2, 255
	bltu	$a2, $s7, .LBB3_49
# %bb.48:                               # %_ZN12StreamBufferdeEv.exit5.i.i.i
                                        #   in Loop: Header=BB3_45 Depth=2
	bne	$a2, $s4, .LBB3_52
.LBB3_49:                               # %.critedge.i.i.i
                                        #   in Loop: Header=BB3_45 Depth=2
	addi.w	$a1, $a1, 1
	addi.w	$a2, $a0, 0
	st.w	$a1, $s8, 0
	blt	$a1, $a2, .LBB3_45
# %bb.50:                               #   in Loop: Header=BB3_45 Depth=2
	ld.d	$a0, $s1, 0
	st.w	$zero, $s8, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.51:                               # %.noexc.i.i
                                        #   in Loop: Header=BB3_45 Depth=2
	ld.w	$a1, $s8, 0
	st.w	$a0, $s8, 4
	b	.LBB3_45
	.p2align	4, , 16
.LBB3_52:                               # %_ZL14skipWhitespaceI12StreamBufferEvRT_.exit.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB3_102
# %bb.53:                               # %_ZN12StreamBufferdeEv.exit.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ldx.bu	$a3, $s2, $a1
	beq	$a3, $s6, .LBB3_68
# %bb.54:                               # %_ZN12StreamBufferdeEv.exit.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ori	$a4, $zero, 112
	beq	$a3, $a4, .LBB3_76
# %bb.55:                               # %_ZN12StreamBufferdeEv.exit.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	beq	$a3, $fp, .LBB3_102
# %bb.56:                               # %_ZN12StreamBufferdeEv.exit37.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ld.d	$a0, $sp, 592
	beqz	$a0, .LBB3_58
# %bb.57:                               # %.preheader.i.i.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	st.w	$zero, $sp, 600
.LBB3_58:                               # %_ZN3vecI3LitE5clearEb.exit.i.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
.Ltmp38:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZL8parseIntI12StreamBufferEiRT_)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
	b	.LBB3_60
	.p2align	4, , 16
.LBB3_59:                               # %_ZN3vecI3LitE4pushERKS0_.exit.i.i.i
                                        #   in Loop: Header=BB3_60 Depth=2
	slti	$a2, $s4, 1
	slli.d	$a3, $s6, 1
	or	$a2, $a3, $a2
	addi.d	$a2, $a2, -2
	addi.d	$a3, $a1, 1
	st.w	$a3, $sp, 600
	slli.d	$a1, $a1, 2
	stx.w	$a2, $a0, $a1
.Ltmp43:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZL8parseIntI12StreamBufferEiRT_)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
.LBB3_60:                               # %.noexc47.i.i
                                        #   Parent Loop BB3_44 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_62 Depth 3
	move	$s4, $a0
	beqz	$a0, .LBB3_42
# %bb.61:                               # %.lr.ph13.i.i.i
                                        #   in Loop: Header=BB3_60 Depth=2
	ld.w	$a0, $sp, 328
	srai.d	$a1, $s4, 31
	xor	$a2, $s4, $a1
	sub.w	$s6, $a2, $a1
	bge	$a0, $s6, .LBB3_64
	.p2align	4, , 16
.LBB3_62:                               # %.lr.ph.i.i.i
                                        #   Parent Loop BB3_44 Depth=1
                                        #     Parent Loop BB3_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 56
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZN6Solver6newVarEbb)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.63:                               # %.noexc48.i.i
                                        #   in Loop: Header=BB3_62 Depth=3
	ld.w	$a0, $sp, 328
	blt	$a0, $s6, .LBB3_62
.LBB3_64:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB3_60 Depth=2
	ld.w	$a1, $sp, 600
	ld.w	$a2, $sp, 604
	ld.d	$a0, $sp, 592
	bne	$a1, $a2, .LBB3_59
# %bb.65:                               #   in Loop: Header=BB3_60 Depth=2
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 1
	srai.d	$a1, $a1, 1
	slt	$a2, $s5, $a1
	masknez	$a3, $s5, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $sp, 604
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 600
	st.d	$a0, $sp, 592
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_66:                               # %.noexc45.i.i
                                        #   in Loop: Header=BB3_68 Depth=2
	ld.w	$a1, $s8, 0
	st.w	$a0, $s8, 4
.LBB3_67:                               # %_ZN12StreamBufferppEv.exit10.i.i.i
                                        #   in Loop: Header=BB3_68 Depth=2
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB3_43
.LBB3_68:                               # %_ZN12StreamBufferdeEv.exit.i40.i.i
                                        #   Parent Loop BB3_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $s2, $a1
	beqz	$a3, .LBB3_43
# %bb.69:                               # %_ZN12StreamBufferdeEv.exit.i40.i.i
                                        #   in Loop: Header=BB3_68 Depth=2
	beq	$a3, $fp, .LBB3_43
# %bb.70:                               # %_ZN12StreamBufferdeEv.exit.i40.i.i
                                        #   in Loop: Header=BB3_68 Depth=2
	addi.w	$a1, $a1, 1
	addi.w	$a2, $a0, 0
	ori	$a4, $zero, 10
	beq	$a3, $a4, .LBB3_73
# %bb.71:                               #   in Loop: Header=BB3_68 Depth=2
	st.w	$a1, $s8, 0
	blt	$a1, $a2, .LBB3_67
# %bb.72:                               #   in Loop: Header=BB3_68 Depth=2
	ld.d	$a0, $s1, 0
	st.w	$zero, $s8, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
	b	.LBB3_66
.LBB3_73:                               #   in Loop: Header=BB3_44 Depth=1
	st.w	$a1, $s8, 0
	blt	$a1, $a2, .LBB3_43
# %bb.74:                               #   in Loop: Header=BB3_44 Depth=1
	ld.d	$a0, $s1, 0
	st.w	$zero, $s8, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.75:                               # %.noexc44.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	st.w	$a0, $s8, 4
	ld.w	$a0, $s8, 4
	b	.LBB3_44
.LBB3_76:                               # %_ZN12StreamBufferdeEv.exit.i23.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a1, $a1, 1
	st.w	$a1, $s8, 0
	blt	$a1, $a2, .LBB3_79
# %bb.77:                               #   in Loop: Header=BB3_44 Depth=1
	ld.d	$a0, $s1, 0
	st.w	$zero, $s8, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.78:                               # %.noexc27.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ld.w	$a1, $s8, 0
	st.w	$a0, $s8, 4
.LBB3_79:                               # %_ZN12StreamBufferppEv.exit.i26.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB3_112
# %bb.80:                               # %_ZN12StreamBufferdeEv.exit.1.i.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ldx.bu	$a3, $s2, $a1
	bne	$a3, $s4, .LBB3_112
# %bb.81:                               #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a1, $a1, 1
	st.w	$a1, $s8, 0
	blt	$a1, $a2, .LBB3_84
# %bb.82:                               #   in Loop: Header=BB3_44 Depth=1
	ld.d	$a0, $s1, 0
	st.w	$zero, $s8, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.83:                               # %.noexc28.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ld.w	$a1, $s8, 0
	st.w	$a0, $s8, 4
.LBB3_84:                               # %_ZN12StreamBufferppEv.exit.1.i.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB3_112
# %bb.85:                               # %_ZN12StreamBufferdeEv.exit.2.i.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ldx.bu	$a3, $s2, $a1
	bne	$a3, $s6, .LBB3_112
# %bb.86:                               #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a1, $a1, 1
	st.w	$a1, $s8, 0
	blt	$a1, $a2, .LBB3_89
# %bb.87:                               #   in Loop: Header=BB3_44 Depth=1
	ld.d	$a0, $s1, 0
	st.w	$zero, $s8, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.88:                               # %.noexc29.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ld.w	$a1, $s8, 0
	st.w	$a0, $s8, 4
.LBB3_89:                               # %_ZN12StreamBufferppEv.exit.2.i.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB3_112
# %bb.90:                               # %_ZN12StreamBufferdeEv.exit.3.i.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ldx.bu	$a3, $s2, $a1
	ori	$a4, $zero, 110
	bne	$a3, $a4, .LBB3_112
# %bb.91:                               #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a1, $a1, 1
	st.w	$a1, $s8, 0
	blt	$a1, $a2, .LBB3_94
# %bb.92:                               #   in Loop: Header=BB3_44 Depth=1
	ld.d	$a0, $s1, 0
	st.w	$zero, $s8, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.93:                               # %.noexc30.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ld.w	$a1, $s8, 0
	st.w	$a0, $s8, 4
.LBB3_94:                               # %_ZN12StreamBufferppEv.exit.3.i.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a0, $a0, 0
	bge	$a1, $a0, .LBB3_112
# %bb.95:                               # %_ZN12StreamBufferdeEv.exit.4.i.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	ldx.bu	$a2, $s2, $a1
	ori	$a3, $zero, 102
	bne	$a2, $a3, .LBB3_112
# %bb.96:                               #   in Loop: Header=BB3_44 Depth=1
	addi.w	$a1, $a1, 1
	st.w	$a1, $s8, 0
	blt	$a1, $a0, .LBB3_99
# %bb.97:                               #   in Loop: Header=BB3_44 Depth=1
	ld.d	$a0, $s1, 0
	st.w	$zero, $s8, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.98:                               # %.noexc31.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	st.w	$a0, $s8, 4
.LBB3_99:                               # %_ZL5matchI12StreamBufferEbRT_Pc.exit.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
.Ltmp24:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZL8parseIntI12StreamBufferEiRT_)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.100:                              #   in Loop: Header=BB3_44 Depth=1
.Ltmp27:                                # EH_LABEL
	move	$s4, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZL8parseIntI12StreamBufferEiRT_)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.101:                              #   in Loop: Header=BB3_44 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ori	$s6, $zero, 99
	ori	$s4, $zero, 32
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 4
	b	.LBB3_44
.LBB3_102:                              # %_ZN12StreamBufferdeEv.exit.thread.i.i
	ld.d	$a0, $sp, 592
	beqz	$a0, .LBB3_104
# %bb.103:                              # %.preheader.i.i51.i.i
	st.w	$zero, $sp, 600
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_104:
	ori	$a1, $s3, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_106
# %bb.105:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB3_107
.LBB3_106:
	move	$fp, $zero
.LBB3_107:
.Ltmp30:                                # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN6Solver8simplifyEv)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.108:
	bnez	$a0, .LBB3_126
# %bb.109:
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_111
# %bb.110:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB3_111:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_112:                              # %split.i.i
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s8, 4
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	bge	$a1, $a2, .LBB3_114
# %bb.113:
	ldx.b	$a2, $s2, $a1
	b	.LBB3_115
.LBB3_114:
	addi.w	$a2, $zero, -1
.LBB3_115:                              # %_ZN12StreamBufferdeEv.exit33.i.i
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_116:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z10printUsagePPc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_117:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $s5
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	b	.LBB3_123
.LBB3_118:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	b	.LBB3_122
.LBB3_119:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	b	.LBB3_122
.LBB3_120:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	b	.LBB3_122
.LBB3_121:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
.LBB3_122:
	move	$a2, $s1
.LBB3_123:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_124:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_138
# %bb.125:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a2, $a0, %pc_lo12(.L.str.37)
	b	.LBB3_139
.LBB3_126:
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN6Solver5solveEv)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.127:
.Ltmp35:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_Z10printStatsR6Solver)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.128:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	masknez	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	maskeqz	$a1, $a1, $s0
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_142
# %bb.129:
	beqz	$s0, .LBB3_140
# %bb.130:
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 328
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$s1, $a1, %pc_lo12(.L.str.49)
	ori	$s2, $zero, 3
	blez	$a0, .LBB3_141
# %bb.131:                              # %.lr.ph148.preheader
	ld.d	$a1, $sp, 56
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	addi.d	$s8, $a2, %pc_lo12(.L.str.31)
	pcalau12i	$a2, %pc_hi20(.L.str.47)
	addi.d	$s3, $a2, %pc_lo12(.L.str.47)
	beqz	$a1, .LBB3_133
# %bb.132:
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s3, $a0
	or	$a3, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 328
.LBB3_133:
	ori	$s4, $zero, 2
	blt	$a0, $s4, .LBB3_141
# %bb.134:                              # %.lr.ph148.preheader288
	ori	$s7, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$s5, $a1, %pc_lo12(.L.str.46)
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$s6, $a1, %pc_lo12(.L.str.48)
	b	.LBB3_136
	.p2align	4, , 16
.LBB3_135:                              #   in Loop: Header=BB3_136 Depth=1
	addi.d	$s7, $s7, 1
	addi.w	$s4, $s4, 1
	bge	$s7, $a0, .LBB3_141
.LBB3_136:                              # %.lr.ph148
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 56
	ldx.bu	$a1, $a1, $s7
	beqz	$a1, .LBB3_135
# %bb.137:                              #   in Loop: Header=BB3_136 Depth=1
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s3, $a0
	or	$a3, $a0, $a1
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 328
	b	.LBB3_135
.LBB3_138:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 8
.LBB3_139:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_140:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s1, $a0, %pc_lo12(.L.str.42)
	ori	$s2, $zero, 6
.LBB3_141:                              # %._crit_edge149
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB3_142:
	ori	$a0, $zero, 20
	masknez	$a0, $a0, $s0
	ori	$a1, $zero, 10
	maskeqz	$a1, $a1, $s0
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_143:
.Ltmp37:                                # EH_LABEL
	b	.LBB3_147
.LBB3_144:
.Ltmp32:                                # EH_LABEL
	b	.LBB3_147
.LBB3_145:
.Ltmp5:                                 # EH_LABEL
	move	$fp, $a0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN6SolverD1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_146:
.Ltmp2:                                 # EH_LABEL
.LBB3_147:                              # %.body
	move	$fp, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN6SolverD1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_148:
.Ltmp29:                                # EH_LABEL
	b	.LBB3_155
.LBB3_149:
.Ltmp26:                                # EH_LABEL
	b	.LBB3_155
.LBB3_150:                              # %.loopexit.split-lp.loopexit.i.i
.Ltmp13:                                # EH_LABEL
	b	.LBB3_155
.LBB3_151:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i
.Ltmp48:                                # EH_LABEL
	b	.LBB3_155
.LBB3_152:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i
.Ltmp8:                                 # EH_LABEL
	b	.LBB3_155
.LBB3_153:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i
.Ltmp45:                                # EH_LABEL
	b	.LBB3_155
.LBB3_154:                              # %.loopexit.i.i
.Ltmp42:                                # EH_LABEL
.LBB3_155:                              # %.loopexit.split-lp.i.i
	move	$fp, $a0
	ld.d	$a0, $sp, 592
	beqz	$a0, .LBB3_157
# %bb.156:                              # %.preheader.i.i54.i.i
	st.w	$zero, $sp, 600
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_157:                              # %.body
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN6SolverD1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp6-.Ltmp47                 #   Call between .Ltmp47 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp11-.Ltmp41                #   Call between .Ltmp41 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp9-.Ltmp12                 #   Call between .Ltmp12 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 14 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp14-.Ltmp10                #   Call between .Ltmp10 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp33-.Ltmp31                #   Call between .Ltmp31 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp36-.Ltmp33                #   Call between .Ltmp33 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Lfunc_end3-.Ltmp36            #   Call between .Ltmp36 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6Solver5solveEv,"axG",@progbits,_ZN6Solver5solveEv,comdat
	.weak	_ZN6Solver5solveEv              # -- Begin function _ZN6Solver5solveEv
	.p2align	5
	.type	_ZN6Solver5solveEv,@function
_ZN6Solver5solveEv:                     # @_ZN6Solver5solveEv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0
.Ltmp49:                                # EH_LABEL
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZN6Solver5solveERK3vecI3LitE)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.1:
	ld.d	$a1, $sp, 0
	beqz	$a1, .LBB4_3
# %bb.2:                                # %.preheader.i.i
	st.w	$zero, $sp, 8
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB4_3:                                # %_ZN3vecI3LitED2Ev.exit
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_4:
.Ltmp51:                                # EH_LABEL
	ld.d	$a1, $sp, 0
	move	$fp, $a0
	beqz	$a1, .LBB4_6
# %bb.5:                                # %.preheader.i.i3
	st.w	$zero, $sp, 8
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %_ZN3vecI3LitED2Ev.exit4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN6Solver5solveEv, .Lfunc_end4-_ZN6Solver5solveEv
	.cfi_endproc
	.section	.gcc_except_table._ZN6Solver5solveEv,"aG",@progbits,_ZN6Solver5solveEv,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp49-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin1          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp50            #   Call between .Ltmp50 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL8parseIntI12StreamBufferEiRT_
	.type	_ZL8parseIntI12StreamBufferEiRT_,@function
_ZL8parseIntI12StreamBufferEiRT_:       # @_ZL8parseIntI12StreamBufferEiRT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	addu16i.d	$a0, $a0, 16
	addi.d	$s2, $a0, 8
	lu12i.w	$a0, 256
	ori	$a0, $a0, 8
	ldx.w	$a1, $fp, $a0
	ld.w	$a0, $s2, 4
	addi.d	$s0, $fp, 8
	bge	$a1, $a0, .LBB5_8
# %bb.1:                                # %_ZN12StreamBufferdeEv.exit.lr.ph.i
	ori	$s3, $zero, 9
	ori	$s4, $zero, 14
	lu12i.w	$s1, 256
	ori	$s5, $zero, 32
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %_ZN12StreamBufferppEv.exit.i
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB5_8
.LBB5_3:                                # %_ZN12StreamBufferdeEv.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a2, $s0, $a1
	blt	$a2, $s3, .LBB5_8
# %bb.4:                                # %_ZN12StreamBufferdeEv.exit5.i
                                        #   in Loop: Header=BB5_3 Depth=1
	andi	$a2, $a2, 255
	bltu	$a2, $s4, .LBB5_6
# %bb.5:                                # %_ZN12StreamBufferdeEv.exit5.i
                                        #   in Loop: Header=BB5_3 Depth=1
	bne	$a2, $s5, .LBB5_8
.LBB5_6:                                # %.critedge.i
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a1, $a1, 1
	addi.w	$a2, $a0, 0
	st.w	$a1, $s2, 0
	blt	$a1, $a2, .LBB5_2
# %bb.7:                                #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$zero, $s2, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.w	$a0, $s2, 4
	b	.LBB5_2
.LBB5_8:                                # %_ZL14skipWhitespaceI12StreamBufferEvRT_.exit
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB5_12
# %bb.9:                                # %_ZN12StreamBufferdeEv.exit
	ldx.bu	$a3, $s0, $a1
	ori	$a4, $zero, 43
	beq	$a3, $a4, .LBB5_21
# %bb.10:                               # %_ZN12StreamBufferdeEv.exit
	ori	$a4, $zero, 45
	bne	$a3, $a4, .LBB5_12
# %bb.11:
	addi.w	$a1, $a1, 1
	st.w	$a1, $s2, 0
	ori	$s3, $zero, 1
	bge	$a1, $a2, .LBB5_22
	b	.LBB5_13
.LBB5_12:
	move	$s3, $zero
.LBB5_13:                               # %_ZN12StreamBufferppEv.exit
	ld.w	$a1, $s2, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB5_23
# %bb.14:                               # %_ZN12StreamBufferdeEv.exit22
	ldx.bu	$a2, $s0, $a1
	addi.d	$a2, $a2, -58
	addi.w	$a3, $zero, -10
	bltu	$a2, $a3, .LBB5_23
# %bb.15:                               # %_ZN12StreamBufferdeEv.exit28.preheader
	move	$s4, $zero
	ori	$s5, $zero, 9
	lu12i.w	$s1, 256
	b	.LBB5_17
	.p2align	4, , 16
.LBB5_16:                               # %_ZN12StreamBufferppEv.exit34
                                        #   in Loop: Header=BB5_17 Depth=1
	slli.d	$a2, $s4, 3
	alsl.d	$a2, $s4, $a2, 1
	add.d	$a2, $a2, $s6
	addi.w	$a3, $a0, 0
	addi.w	$s4, $a2, -48
	bge	$a1, $a3, .LBB5_20
.LBB5_17:                               # %_ZN12StreamBufferdeEv.exit28
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$s6, $s0, $a1
	addi.d	$a2, $s6, -48
	bltu	$s5, $a2, .LBB5_20
# %bb.18:                               # %_ZN12StreamBufferdeEv.exit32
                                        #   in Loop: Header=BB5_17 Depth=1
	addi.w	$a1, $a1, 1
	addi.w	$a2, $a0, 0
	st.w	$a1, $s2, 0
	blt	$a1, $a2, .LBB5_16
# %bb.19:                               #   in Loop: Header=BB5_17 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$zero, $s2, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.w	$a0, $s2, 4
	b	.LBB5_16
.LBB5_20:                               # %.critedge
	sub.w	$a0, $zero, $s4
	masknez	$a1, $s4, $s3
	maskeqz	$a0, $a0, $s3
	or	$a0, $a0, $a1
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
.LBB5_21:
	move	$s3, $zero
	addi.w	$a1, $a1, 1
	st.w	$a1, $s2, 0
	blt	$a1, $a2, .LBB5_13
.LBB5_22:                               # %_ZN12StreamBufferppEv.exit.sink.split
	ld.d	$a0, $fp, 0
	st.w	$zero, $s2, 0
	pcaddu18i	$ra, %call36(fileno)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 256
	move	$a1, $s0
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 4
	b	.LBB5_13
.LBB5_23:                               # %_ZN12StreamBufferdeEv.exit22.thread
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s2, 4
	ld.d	$a0, $s0, 0
	bge	$a1, $a2, .LBB5_25
# %bb.24:
	add.d	$a1, $fp, $a1
	ld.b	$a2, $a1, 8
	b	.LBB5_26
.LBB5_25:
	addi.w	$a2, $zero, -1
.LBB5_26:                               # %_ZN12StreamBufferdeEv.exit26
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZL8parseIntI12StreamBufferEiRT_, .Lfunc_end5-_ZL8parseIntI12StreamBufferEiRT_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"restarts              : %lld\n"
	.size	.L.str, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"conflicts             : %-12lld\n"
	.size	.L.str.5, 33

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"decisions             : %-12lld   (%4.2f %% random)\n"
	.size	.L.str.6, 53

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"propagations          : %-12lld\n"
	.size	.L.str.7, 33

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"conflict literals     : %-12lld   (%4.2f %% deleted)\n"
	.size	.L.str.8, 54

	.type	solver,@object                  # @solver
	.bss
	.globl	solver
	.p2align	3, 0x0
solver:
	.dword	0
	.size	solver, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"USAGE: %s [options] <input-file> <result-output-file>\n\n  where input may be either in plain or gzipped DIMACS.\n\n"
	.size	.L.str.9, 113

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"OPTIONS:\n\n"
	.size	.L.str.10, 11

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"  -polarity-mode = {true,false,rnd}\n"
	.size	.L.str.11, 37

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"  -decay         = <num> [ 0 - 1 ]\n"
	.size	.L.str.12, 36

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"  -rnd-freq      = <num> [ 0 - 1 ]\n"
	.size	.L.str.13, 36

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"  -verbosity     = {0,1,2}\n"
	.size	.L.str.14, 28

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"-polarity-mode="
	.size	.L.str.16, 16

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"true"
	.size	.L.str.17, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"false"
	.size	.L.str.18, 6

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"rnd"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"ERROR! unknown polarity-mode %s\n"
	.size	.L.str.20, 33

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"-rnd-freq="
	.size	.L.str.21, 11

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%lf"
	.size	.L.str.22, 4

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"ERROR! illegal rnd-freq constant %s\n"
	.size	.L.str.23, 37

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"-decay="
	.size	.L.str.24, 8

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"ERROR! illegal decay constant %s\n"
	.size	.L.str.25, 34

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"-verbosity="
	.size	.L.str.26, 12

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"ERROR! illegal verbosity level %s\n"
	.size	.L.str.27, 35

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"-help"
	.size	.L.str.29, 6

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"--help"
	.size	.L.str.30, 7

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"-"
	.size	.L.str.31, 2

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"ERROR! unknown flag %s\n"
	.size	.L.str.32, 24

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"This is MiniSat 2.0 beta\n"
	.size	.L.str.33, 26

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Reading from standard input... Use '-h' or '--help' for help.\n"
	.size	.L.str.34, 63

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"rb"
	.size	.L.str.35, 3

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"ERROR! Could not open file: %s\n"
	.size	.L.str.36, 32

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"<stdin>"
	.size	.L.str.37, 8

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"============================[ Problem Statistics ]=============================\n"
	.size	.L.str.38, 81

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"|                                                                             |\n"
	.size	.L.str.39, 81

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"wb"
	.size	.L.str.40, 3

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Solved by unit propagation\n"
	.size	.L.str.41, 28

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"UNSAT\n"
	.size	.L.str.42, 7

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"UNSATISFIABLE\n"
	.size	.L.str.43, 15

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"SATISFIABLE\n"
	.size	.L.str.44, 13

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"SAT\n"
	.size	.L.str.45, 5

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"%s%s%d"
	.size	.L.str.46, 7

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.space	1
	.size	.L.str.47, 1

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	" "
	.size	.L.str.48, 2

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	" 0\n"
	.size	.L.str.49, 4

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"/proc/%d/statm"
	.size	.L.str.50, 15

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"%d"
	.size	.L.str.51, 3

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"|  Number of variables:  %-12d                                         |\n"
	.size	.L.str.53, 74

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"|  Number of clauses:    %-12d                                         |\n"
	.size	.L.str.54, 74

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"PARSE ERROR! Unexpected char: %c\n"
	.size	.L.str.55, 34

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"UNSATISFIABLE"
	.size	.Lstr, 14

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
