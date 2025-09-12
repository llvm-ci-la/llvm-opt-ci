	.file	"utils.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function urand
.LCPI0_0:
	.word	0x30000000                      # float 4.65661287E-10
	.text
	.globl	urand
	.p2align	5
	.type	urand,@function
urand:                                  # @urand
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa1, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	urand, .Lfunc_end0-urand
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function nrand
.LCPI1_0:
	.word	0x30000000                      # float 4.65661287E-10
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_1:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
	.text
	.globl	nrand
	.p2align	5
	.type	nrand,@function
nrand:                                  # @nrand
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.s	$fs0, $fa1
	fmov.s	$fs1, $fa0
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.s	$fs2, $a1, %pc_lo12(.LCPI1_0)
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fs4, $fa0, $fs2
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fs3, $fa0, $fs2
	fcvt.d.s	$fa0, $fs4
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr1, -896
	fmul.d	$fa0, $fa0, $fa1
	fsqrt.d	$fs2, $fa0
	fcmp.cor.d	$fcc0, $fs2, $fs2
	bceqz	$fcc0, .LBB1_2
.LBB1_1:                                # %.split
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_1)
	fcvt.d.s	$fa1, $fs3
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	fcvt.s.d	$fa0, $fa0
	fmadd.s	$fa0, $fa0, $fs0, $fs1
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_2:                                # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	b	.LBB1_1
.Lfunc_end1:
	.size	nrand, .Lfunc_end1-nrand
                                        # -- End function
	.globl	pairwise_sum                    # -- Begin function pairwise_sum
	.p2align	5
	.type	pairwise_sum,@function
pairwise_sum:                           # @pairwise_sum
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	ori	$a2, $zero, 16
	blt	$a2, $a1, .LBB2_3
# %bb.1:                                # %.preheader
	movgr2fr.w	$fa0, $zero
	blez	$a1, .LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB2_2
	b	.LBB2_4
.LBB2_3:
	srli.d	$fp, $a1, 1
	move	$s0, $a0
	move	$s1, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	alsl.d	$a0, $fp, $s0, 2
	sub.d	$a1, $s1, $fp
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
.LBB2_4:                                # %common.ret19
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	pairwise_sum, .Lfunc_end2-pairwise_sum
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function buildExponentialTable
.LCPI3_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	buildExponentialTable
	.p2align	5
	.type	buildExponentialTable,@function
buildExponentialTable:                  # @buildExponentialTable
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fmov.s	$fs0, $fa1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI3_0)
	fcvt.d.s	$fa0, $fa0
	vldi	$vr2, -992
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	frecip.d	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fcvt.d.s	$fs1, $fs0
	bceqz	$fcc0, .LBB3_5
.LBB3_1:                                # %.split
	fmul.d	$fa0, $fa0, $fs1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s1, $fa0
	movgr2fr.w	$fa0, $s1
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fs1, $fs0, $fa0
	slli.w	$a0, $s1, 1
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$s1, .LBB3_4
# %bb.2:                                # %.lr.ph.preheader
	move	$s2, $zero
	move	$s3, $zero
	addi.d	$s4, $s0, 4
	move	$s5, $s1
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa0, $s3
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fs1, $fa0
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s4, -4
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	vldi	$vr2, -1040
	fmadd.s	$fa1, $fa1, $fs1, $fa2
	vldi	$vr2, -1168
	fmadd.s	$fa0, $fa1, $fa0, $fa2
	fst.s	$fa0, $s4, 0
	addi.d	$s4, $s4, 8
	addi.w	$s3, $s3, -1
	addi.d	$s5, $s5, -1
	addi.w	$s2, $s2, 1
	bnez	$s5, .LBB3_3
.LBB3_4:                                # %._crit_edge
	fst.s	$fs1, $fp, 8
	st.d	$s0, $fp, 0
	fsub.s	$fa0, $fs0, $fs1
	fst.s	$fa0, $fp, 12
	st.w	$s1, $fp, 16
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB3_5:                                # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_1
.Lfunc_end3:
	.size	buildExponentialTable, .Lfunc_end3-buildExponentialTable
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function get_time
.LCPI4_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	get_time
	.p2align	5
	.type	get_time,@function
get_time:                               # @get_time
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI4_0)
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	get_time, .Lfunc_end4-get_time
                                        # -- End function
	.globl	est_mem_usage                   # -- Begin function est_mem_usage
	.p2align	5
	.type	est_mem_usage,@function
est_mem_usage:                          # @est_mem_usage
# %bb.0:
	ld.w	$a1, $a0, 44
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $a0, 60
	movgr2fr.w	$fa2, $a1
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa0, $fa0, $fa2
	ld.d	$a1, $a0, 120
	fdiv.s	$fa0, $fa1, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	srai.d	$a3, $a1, 63
	srli.d	$a3, $a3, 61
	ld.d	$a4, $a0, 80
	add.d	$a3, $a1, $a3
	srai.d	$a3, $a3, 3
	ld.w	$a5, $a0, 32
	slli.d	$a6, $a4, 5
	ld.d	$a7, $a0, 96
	ld.d	$t0, $a0, 48
	mul.d	$a5, $a4, $a5
	ld.w	$t1, $a0, 36
	slli.d	$t2, $a7, 5
	alsl.d	$a7, $a7, $t2, 3
	mul.d	$a2, $a5, $a2
	mul.d	$a2, $a2, $t1
	ori	$t2, $zero, 48
	mul.d	$t2, $a1, $t2
	mul.d	$t3, $a3, $t1
	ld.w	$t4, $a0, 12
	ld.w	$t5, $a0, 104
	ld.w	$a0, $a0, 88
	slli.d	$t1, $t1, 2
	mul.d	$t4, $a1, $t4
	mul.d	$t6, $t1, $t4
	mul.w	$a0, $a0, $t5
	slli.w	$t5, $a0, 1
	add.d	$t7, $a3, $a4
	add.d	$a5, $t7, $a5
	add.d	$a5, $a5, $t3
	add.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a0
	add.d	$a4, $a4, $t5
	mul.d	$a4, $a4, $t0
	add.d	$a0, $a3, $a0
	add.d	$a0, $a0, $a4
	addi.d	$a3, $t1, 12
	mul.d	$a3, $a3, $t3
	add.d	$a1, $t4, $a1
	add.d	$a4, $a6, $t2
	add.d	$a4, $a4, $a7
	add.d	$a4, $a4, $t6
	add.d	$a3, $a4, $a3
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $a0, $a2, 4
	ret
.Lfunc_end5:
	.size	est_mem_usage, .Lfunc_end5-est_mem_usage
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function time_per_intersection
.LCPI6_0:
	.dword	0x41cdcd6500000000              # double 1.0E+9
	.text
	.globl	time_per_intersection
	.p2align	5
	.type	time_per_intersection,@function
time_per_intersection:                  # @time_per_intersection
# %bb.0:
	ld.d	$a1, $a0, 144
	movgr2fr.d	$fa1, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI6_0)
	ld.w	$a0, $a0, 36
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end6:
	.size	time_per_intersection, .Lfunc_end6-time_per_intersection
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
