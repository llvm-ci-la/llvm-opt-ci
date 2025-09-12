	.file	"timestatus.c"
	.text
	.globl	ts_real_time                    # -- Begin function ts_real_time
	.p2align	5
	.type	ts_real_time,@function
ts_real_time:                           # @ts_real_time
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	pcalau12i	$a1, %pc_hi20(ts_real_time.initial_time)
	beqz	$fp, .LBB0_2
# %bb.1:                                # %._crit_edge
	ld.d	$a1, $a1, %pc_lo12(ts_real_time.initial_time)
	b	.LBB0_3
.LBB0_2:
	st.d	$a0, $a1, %pc_lo12(ts_real_time.initial_time)
	move	$a1, $a0
.LBB0_3:
	pcaddu18i	$ra, %call36(difftime)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	ts_real_time, .Lfunc_end0-ts_real_time
                                        # -- End function
	.globl	ts_process_time                 # -- Begin function ts_process_time
	.p2align	5
	.type	ts_process_time,@function
ts_process_time:                        # @ts_process_time
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(ts_process_time.initial_time)
	beqz	$fp, .LBB1_2
# %bb.1:                                # %._crit_edge
	ld.d	$a1, $a1, %pc_lo12(ts_process_time.initial_time)
	b	.LBB1_3
.LBB1_2:
	st.d	$a0, $a1, %pc_lo12(ts_process_time.initial_time)
	move	$a1, $a0
.LBB1_3:
	sub.d	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	lu12i.w	$a0, 300866
	ori	$a0, $a0, 1024
	movgr2fr.w	$fa1, $a0
	fdiv.s	$fa0, $fa0, $fa1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	ts_process_time, .Lfunc_end1-ts_process_time
                                        # -- End function
	.globl	ts_calc_times                   # -- Begin function ts_calc_times
	.p2align	5
	.type	ts_calc_times,@function
ts_calc_times:                          # @ts_calc_times
# %bb.0:
	blez	$a2, .LBB2_4
# %bb.1:
	fld.s	$fa0, $a0, 0
	movgr2fr.d	$fa1, $a3
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	movgr2fr.d	$fa2, $a2
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa1, $fa2
	movgr2fr.w	$fa3, $zero
	fcmp.cule.s	$fcc0, $fa2, $fa3
	fst.s	$fa1, $a0, 4
	bcnez	$fcc0, .LBB2_3
# %bb.2:
	mul.d	$a1, $a3, $a4
	movgr2fr.d	$fa3, $a1
	ffint.s.l	$fa3, $fa3
	fdiv.s	$fa3, $fa3, $fa2
.LBB2_3:
	fst.s	$fa3, $a0, 8
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 12
	ret
.LBB2_4:
	st.d	$zero, $a0, 4
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a0, 12
	ret
.Lfunc_end2:
	.size	ts_calc_times, .Lfunc_end2-ts_calc_times
                                        # -- End function
	.globl	timestatus                      # -- Begin function timestatus
	.p2align	5
	.type	timestatus,@function
timestatus:                             # @timestatus
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	move	$s1, $a3
	move	$s0, $a2
	move	$fp, $a1
	move	$s2, $a0
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	pcalau12i	$a1, %pc_hi20(ts_real_time.initial_time)
	bnez	$fp, .LBB3_2
# %bb.1:
	st.d	$a0, $a1, %pc_lo12(ts_real_time.initial_time)
	move	$a1, $a0
	b	.LBB3_3
.LBB3_2:                                # %._crit_edge.i
	ld.d	$a1, $a1, %pc_lo12(ts_real_time.initial_time)
.LBB3_3:                                # %ts_real_time.exit
	pcaddu18i	$ra, %call36(difftime)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(ts_process_time.initial_time)
	bnez	$fp, .LBB3_5
# %bb.4:
	st.d	$a0, $a1, %pc_lo12(ts_process_time.initial_time)
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 74
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB3_14
.LBB3_5:
	ld.d	$a1, $a1, %pc_lo12(ts_process_time.initial_time)
	fcvt.s.d	$fa2, $fs0
	sub.d	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	lu12i.w	$a0, 300866
	ori	$a0, $a0, 1024
	movgr2fr.w	$fa1, $a0
	fdiv.s	$fa4, $fa0, $fa1
	movgr2fr.d	$fa6, $fp
	blez	$fp, .LBB3_8
# %bb.6:
	movgr2fr.d	$fa0, $s0
	ffint.s.l	$fa0, $fa0
	fmul.s	$fa1, $fa0, $fa2
	ffint.s.l	$fa3, $fa6
	fdiv.s	$fa1, $fa1, $fa3
	fmul.s	$fa0, $fa4, $fa0
	fdiv.s	$fa3, $fa0, $fa3
	movgr2fr.w	$fa0, $s2
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa3, $fa0
	movgr2fr.w	$fa5, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa5
	fsub.s	$fa7, $fa1, $fa2
	bcnez	$fcc0, .LBB3_10
# %bb.7:
	mul.d	$a0, $s0, $s1
	movgr2fr.d	$fa5, $a0
	ffint.s.l	$fa5, $fa5
	fdiv.s	$fa0, $fa5, $fa0
	fcvt.d.s	$fa0, $fa0
	b	.LBB3_11
.LBB3_8:
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -928
	vldi	$vr3, -928
	vldi	$vr5, -928
	ori	$a0, $zero, 1
	blt	$a0, $s0, .LBB3_12
.LBB3_9:                                # %ts_calc_times.exit23._crit_edge
	addi.d	$a3, $s0, -1
	ori	$a4, $zero, 100
	b	.LBB3_13
.LBB3_10:
	movgr2fr.d	$fa0, $zero
.LBB3_11:
	fcvt.d.s	$fa3, $fa3
	vldi	$vr8, -928
	fadd.d	$fa5, $fa3, $ft0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa3, $fa1, $ft0
	fcvt.d.s	$fa1, $fa7
	fadd.d	$fa1, $fa1, $ft0
	ori	$a0, $zero, 1
	bge	$a0, $s0, .LBB3_9
.LBB3_12:
	ffint.d.l	$fa6, $fa6
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa7, $a0
	fmul.d	$fa6, $fa6, $fa7
	addi.d	$a3, $s0, -1
	movgr2fr.d	$fa7, $a3
	ffint.d.l	$fa7, $fa7
	fdiv.d	$fa6, $fa6, $fa7
	ftintrz.w.d	$fa6, $fa6
	movfr2gr.s	$a4, $fa6
.LBB3_13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	fcvt.d.s	$fa4, $fa4
	vldi	$vr6, -928
	fadd.d	$fa7, $fa4, $fa6
	ftintrz.l.d	$fa4, $fa7
	movfr2gr.d	$a7, $fa4
	lu12i.w	$a1, 438071
	ori	$a1, $a1, 3077
	lu32i.d	$a1, 88546
	lu52i.d	$a1, $a1, 1165
	mulh.d	$a2, $a7, $a1
	srli.d	$a5, $a2, 63
	srli.d	$a2, $a2, 10
	add.w	$a5, $a2, $a5
	ori	$a2, $zero, 0
	lu32i.d	$a2, -131072
	lu52i.d	$a2, $a2, 1028
	movgr2fr.d	$fa4, $a2
	fdiv.d	$fa7, $fa7, $fa4
	ftintrz.l.d	$fa7, $fa7
	movfr2gr.d	$a6, $fa7
	lu12i.w	$a2, -489336
	ori	$a2, $a2, 2185
	lu32i.d	$a2, -489336
	lu52i.d	$a2, $a2, -1912
	mulh.d	$t0, $a6, $a2
	add.d	$t0, $t0, $a6
	srli.d	$t1, $t0, 63
	srai.d	$t0, $t0, 5
	add.d	$t1, $t0, $t1
	ori	$t0, $zero, 60
	mul.d	$t1, $t1, $t0
	sub.d	$a6, $a6, $t1
	mulh.d	$t1, $a7, $a2
	add.d	$t1, $t1, $a7
	srli.d	$t2, $t1, 63
	srai.d	$t1, $t1, 5
	add.d	$t1, $t1, $t2
	mul.d	$t1, $t1, $t0
	sub.d	$a7, $a7, $t1
	ftintrz.l.d	$fa7, $fa5
	movfr2gr.d	$t3, $fa7
	mulh.d	$t1, $t3, $a1
	srli.d	$t2, $t1, 63
	srli.d	$t1, $t1, 10
	add.w	$t1, $t1, $t2
	fdiv.d	$fa5, $fa5, $fa4
	ftintrz.l.d	$fa5, $fa5
	movfr2gr.d	$t2, $fa5
	mulh.d	$t4, $t2, $a2
	add.d	$t4, $t4, $t2
	srli.d	$t5, $t4, 63
	srai.d	$t4, $t4, 5
	add.d	$t4, $t4, $t5
	mul.d	$t4, $t4, $t0
	sub.d	$t2, $t2, $t4
	mulh.d	$t4, $t3, $a2
	add.d	$t4, $t4, $t3
	srli.d	$t5, $t4, 63
	srai.d	$t4, $t4, 5
	add.d	$t4, $t4, $t5
	mul.d	$t4, $t4, $t0
	sub.d	$t3, $t3, $t4
	fcvt.d.s	$fa2, $fa2
	fadd.d	$fa2, $fa2, $fa6
	ftintrz.l.d	$fa5, $fa2
	movfr2gr.d	$t6, $fa5
	mulh.d	$t4, $t6, $a1
	srli.d	$t5, $t4, 63
	srli.d	$t4, $t4, 10
	add.w	$t4, $t4, $t5
	fdiv.d	$fa2, $fa2, $fa4
	ftintrz.l.d	$fa2, $fa2
	movfr2gr.d	$t5, $fa2
	mulh.d	$t7, $t5, $a2
	add.d	$t7, $t7, $t5
	srli.d	$t8, $t7, 63
	srai.d	$t7, $t7, 5
	add.d	$t7, $t7, $t8
	mul.d	$t7, $t7, $t0
	sub.d	$t5, $t5, $t7
	mulh.d	$t7, $t6, $a2
	add.d	$t7, $t7, $t6
	srli.d	$t8, $t7, 63
	srai.d	$t7, $t7, 5
	add.d	$t7, $t7, $t8
	mul.d	$t7, $t7, $t0
	sub.d	$t6, $t6, $t7
	ftintrz.l.d	$fa2, $fa3
	movfr2gr.d	$t7, $fa2
	mulh.d	$t8, $t7, $a1
	srli.d	$s1, $t8, 63
	srli.d	$t8, $t8, 10
	add.w	$t8, $t8, $s1
	fdiv.d	$fa2, $fa3, $fa4
	ftintrz.l.d	$fa2, $fa2
	movfr2gr.d	$s1, $fa2
	mulh.d	$s2, $s1, $a2
	add.d	$s2, $s2, $s1
	srli.d	$s3, $s2, 63
	srai.d	$s2, $s2, 5
	add.d	$s2, $s2, $s3
	mul.d	$s2, $s2, $t0
	sub.d	$s1, $s1, $s2
	mulh.d	$s2, $t7, $a2
	add.d	$s2, $s2, $t7
	srli.d	$s3, $s2, 63
	srai.d	$s2, $s2, 5
	add.d	$s2, $s2, $s3
	mul.d	$s2, $s2, $t0
	sub.d	$t7, $t7, $s2
	ftintrz.l.d	$fa2, $fa1
	movfr2gr.d	$s2, $fa2
	mulh.d	$a1, $s2, $a1
	srli.d	$s3, $a1, 63
	srli.d	$a1, $a1, 10
	add.w	$a1, $a1, $s3
	fdiv.d	$fa1, $fa1, $fa4
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$s3, $fa1
	mulh.d	$s4, $s3, $a2
	add.d	$s4, $s4, $s3
	srli.d	$s5, $s4, 63
	srai.d	$s4, $s4, 5
	add.d	$s4, $s4, $s5
	mul.d	$s4, $s4, $t0
	sub.d	$s3, $s3, $s4
	mulh.d	$a2, $s2, $a2
	add.d	$a2, $a2, $s2
	srli.d	$s4, $a2, 63
	srai.d	$a2, $a2, 5
	add.d	$a2, $a2, $s4
	mul.d	$a2, $a2, $t0
	sub.d	$a2, $s2, $a2
	fst.d	$fa0, $sp, 72
	st.d	$a1, $sp, 80
	st.d	$t8, $sp, 48
	st.d	$t1, $sp, 0
	st.d	$t4, $sp, 24
	st.d	$a2, $sp, 96
	st.d	$t7, $sp, 64
	st.d	$t3, $sp, 16
	st.d	$t6, $sp, 40
	st.d	$s3, $sp, 88
	st.d	$s1, $sp, 56
	st.d	$t5, $sp, 32
	st.d	$t2, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB3_14:
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end3:
	.size	timestatus, .Lfunc_end3-timestatus
                                        # -- End function
	.type	ts_real_time.initial_time,@object # @ts_real_time.initial_time
	.local	ts_real_time.initial_time
	.comm	ts_real_time.initial_time,8,8
	.type	ts_process_time.initial_time,@object # @ts_process_time.initial_time
	.local	ts_process_time.initial_time
	.comm	ts_process_time.initial_time,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"    Frame          |  CPU/estimated  |  time/estimated | play/CPU |   ETA\n"
	.size	.L.str, 75

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\r%6ld/%6ld(%3d%%)|%2d:%02d:%02d/%2d:%02d:%02d|%2d:%02d:%02d/%2d:%02d:%02d|%10.4f|%2d:%02d:%02d "
	.size	.L.str.1, 96

	.section	".note.GNU-stack","",@progbits
	.addrsig
