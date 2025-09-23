	.file	"mvt.c"
	.text
	.globl	polybench_flush_cache           # -- Begin function polybench_flush_cache
	.p2align	5
	.type	polybench_flush_cache,@function
polybench_flush_cache:                  # @polybench_flush_cache
# %bb.0:
	ret
.Lfunc_end0:
	.size	polybench_flush_cache, .Lfunc_end0-polybench_flush_cache
                                        # -- End function
	.globl	polybench_prepare_instruments   # -- Begin function polybench_prepare_instruments
	.p2align	5
	.type	polybench_prepare_instruments,@function
polybench_prepare_instruments:          # @polybench_prepare_instruments
# %bb.0:
	ret
.Lfunc_end1:
	.size	polybench_prepare_instruments, .Lfunc_end1-polybench_prepare_instruments
                                        # -- End function
	.globl	polybench_timer_start           # -- Begin function polybench_timer_start
	.p2align	5
	.type	polybench_timer_start,@function
polybench_timer_start:                  # @polybench_timer_start
# %bb.0:
	pcalau12i	$a0, %pc_hi20(polybench_t_start)
	st.d	$zero, $a0, %pc_lo12(polybench_t_start)
	ret
.Lfunc_end2:
	.size	polybench_timer_start, .Lfunc_end2-polybench_timer_start
                                        # -- End function
	.globl	polybench_timer_stop            # -- Begin function polybench_timer_stop
	.p2align	5
	.type	polybench_timer_stop,@function
polybench_timer_stop:                   # @polybench_timer_stop
# %bb.0:
	pcalau12i	$a0, %pc_hi20(polybench_t_end)
	st.d	$zero, $a0, %pc_lo12(polybench_t_end)
	ret
.Lfunc_end3:
	.size	polybench_timer_stop, .Lfunc_end3-polybench_timer_stop
                                        # -- End function
	.globl	polybench_timer_print           # -- Begin function polybench_timer_print
	.p2align	5
	.type	polybench_timer_print,@function
polybench_timer_print:                  # @polybench_timer_print
# %bb.0:
	pcalau12i	$a0, %pc_hi20(polybench_t_end)
	fld.d	$fa0, $a0, %pc_lo12(polybench_t_end)
	pcalau12i	$a0, %pc_hi20(polybench_t_start)
	fld.d	$fa1, $a0, %pc_lo12(polybench_t_start)
	fsub.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end4:
	.size	polybench_timer_print, .Lfunc_end4-polybench_timer_print
                                        # -- End function
	.globl	polybench_free_data             # -- Begin function polybench_free_data
	.p2align	5
	.type	polybench_free_data,@function
polybench_free_data:                    # @polybench_free_data
# %bb.0:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end5:
	.size	polybench_free_data, .Lfunc_end5-polybench_free_data
                                        # -- End function
	.globl	polybench_alloc_data            # -- Begin function polybench_alloc_data
	.p2align	5
	.type	polybench_alloc_data,@function
polybench_alloc_data:                   # @polybench_alloc_data
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	mul.d	$a2, $a0, $a1
	st.d	$zero, $sp, 0
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	beqz	$a1, .LBB6_3
# %bb.1:
	bnez	$a0, .LBB6_3
# %bb.2:                                # %xmalloc.exit
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_3:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	polybench_alloc_data, .Lfunc_end6-polybench_alloc_data
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI7_1:
	.dword	0x409f400000000000              # double 2000
.LCPI7_3:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI7_4:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI7_5:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI7_6:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI7_7:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 80
	lu12i.w	$a0, 7812
	ori	$a2, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80
	beqz	$fp, .LBB7_47
# %bb.1:
	bnez	$a0, .LBB7_47
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 80
	lu12i.w	$s8, 3
	ori	$s6, $s8, 3712
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80
	beqz	$s0, .LBB7_47
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_47
# %bb.4:                                # %polybench_alloc_data.exit38
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 80
	beqz	$s1, .LBB7_47
# %bb.5:                                # %polybench_alloc_data.exit38
	bnez	$a0, .LBB7_47
# %bb.6:                                # %polybench_alloc_data.exit40
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 80
	beqz	$s2, .LBB7_47
# %bb.7:                                # %polybench_alloc_data.exit40
	bnez	$a0, .LBB7_47
# %bb.8:                                # %polybench_alloc_data.exit42
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 80
	beqz	$s3, .LBB7_47
# %bb.9:                                # %polybench_alloc_data.exit42
	bnez	$a0, .LBB7_47
# %bb.10:                               # %polybench_alloc_data.exit44
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 80
	beqz	$s4, .LBB7_47
# %bb.11:                               # %polybench_alloc_data.exit44
	bnez	$a0, .LBB7_47
# %bb.12:                               # %polybench_alloc_data.exit46
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 80
	beqz	$s5, .LBB7_47
# %bb.13:                               # %polybench_alloc_data.exit46
	bnez	$a0, .LBB7_47
# %bb.14:                               # %polybench_alloc_data.exit48
	move	$t2, $zero
	lu52i.d	$a0, $zero, 1107
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_0)
	lu12i.w	$a1, 275200
	pcalau12i	$a2, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI7_1)
	movgr2fr.d	$fa2, $zero
	addi.w	$a2, $zero, -1997
	ori	$a3, $zero, 3
	addi.w	$a4, $zero, -1996
	ori	$a5, $zero, 4
	pcalau12i	$a6, %pc_hi20(.LCPI7_2)
	vld	$vr3, $a6, %pc_lo12(.LCPI7_2)
	lu12i.w	$s7, -4
	ori	$a6, $s7, 384
	ori	$a7, $zero, 2000
	ori	$t0, $zero, 0
	lu32i.d	$t0, -49152
	lu52i.d	$t0, $t0, 1033
	vreplgr2vr.d	$vr4, $t0
	ori	$t0, $s8, 3728
	move	$t1, $fp
	.p2align	4, , 16
.LBB7_15:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	srli.d	$t3, $t2, 32
	or	$t3, $t3, $a0
	movgr2fr.d	$fa5, $t3
	fsub.d	$fa5, $fa5, $fa0
	move	$t3, $t2
	bstrins.d	$t3, $a1, 63, 32
	movgr2fr.d	$fa6, $t3
	fadd.d	$fa5, $fa6, $fa5
	fdiv.d	$fa5, $fa5, $fa1
	slli.d	$t3, $t2, 3
	fstx.d	$fa5, $s0, $t3
	fstx.d	$fa5, $s2, $t3
	sltui	$t4, $t2, 1997
	masknez	$t5, $a2, $t4
	maskeqz	$t4, $a3, $t4
	or	$t4, $t4, $t5
	add.d	$t4, $t4, $t2
	sltui	$t5, $t2, 1996
	masknez	$t6, $a4, $t5
	maskeqz	$t5, $a5, $t5
	or	$t5, $t5, $t6
	add.d	$t5, $t5, $t2
	vreplgr2vr.d	$vr5, $t2
	addi.d	$t2, $t2, 1
	srli.d	$t6, $t2, 32
	or	$t6, $t6, $a0
	movgr2fr.d	$fa6, $t6
	fsub.d	$fa6, $fa6, $fa0
	move	$t6, $t2
	bstrins.d	$t6, $a1, 63, 32
	movgr2fr.d	$fa7, $t6
	fadd.d	$fa6, $fa7, $fa6
	addi.d	$t6, $t2, -2000
	sltui	$t6, $t6, 1
	fdiv.d	$fa6, $fa6, $fa1
	movgr2cf	$fcc0, $t6
	fsel	$fa6, $fa6, $fa2, $fcc0
	fstx.d	$fa6, $s1, $t3
	fstx.d	$fa6, $s3, $t3
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa6, $t4
	ffint.d.l	$fa6, $fa6
	fdiv.d	$fa6, $fa6, $fa1
	fstx.d	$fa6, $s4, $t3
	bstrpick.d	$t4, $t5, 31, 0
	movgr2fr.d	$fa6, $t4
	ffint.d.l	$fa6, $fa6
	fdiv.d	$fa6, $fa6, $fa1
	fstx.d	$fa6, $s5, $t3
	move	$t3, $a6
	vori.b	$vr6, $vr3, 0
	.p2align	4, , 16
.LBB7_16:                               # %vector.body
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr7, $vr6, 2
	vmul.d	$vr8, $vr6, $vr5
	vmul.d	$vr7, $vr7, $vr5
	vpickve2gr.w	$t4, $vr8, 0
	mod.wu	$t4, $t4, $a7
	bstrpick.d	$t4, $t4, 31, 0
	vpickve2gr.w	$t5, $vr8, 2
	mod.wu	$t5, $t5, $a7
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr7, 0
	mod.wu	$t6, $t6, $a7
	bstrpick.d	$t6, $t6, 31, 0
	vpickve2gr.w	$t7, $vr7, 2
	mod.wu	$t7, $t7, $a7
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$fa7, $t5
	ffint.d.l	$fa7, $fa7
	movgr2fr.d	$ft0, $t4
	ffint.d.l	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	movgr2fr.d	$fa7, $t7
	ffint.d.l	$fa7, $fa7
	movgr2fr.d	$ft1, $t6
	ffint.d.l	$ft1, $ft1
	vextrins.d	$vr9, $vr7, 16
	vfdiv.d	$vr7, $vr8, $vr4
	vfdiv.d	$vr8, $vr9, $vr4
	add.d	$t4, $t1, $t3
	vstx	$vr7, $t4, $s6
	vstx	$vr8, $t4, $t0
	addi.d	$t3, $t3, 32
	vaddi.du	$vr6, $vr6, 4
	bnez	$t3, .LBB7_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB7_15 Depth=1
	add.d	$t1, $t1, $s6
	bne	$t2, $a7, .LBB7_15
# %bb.18:                               # %.preheader34.i.preheader
	move	$a0, $zero
	ori	$a1, $s7, 384
	ori	$a2, $zero, 2000
	move	$a3, $fp
	.p2align	4, , 16
.LBB7_19:                               # %.preheader34.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	slli.d	$a4, $a0, 3
	fldx.d	$fa0, $s0, $a4
	alsl.d	$a4, $a0, $s0, 3
	move	$a5, $a1
	.p2align	4, , 16
.LBB7_20:                               #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a3, $a5
	fldx.d	$fa1, $a6, $s6
	add.d	$a6, $s4, $a5
	fldx.d	$fa2, $a6, $s6
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a5, $a5, 8
	fst.d	$fa0, $a4, 0
	bnez	$a5, .LBB7_20
# %bb.21:                               #   in Loop: Header=BB7_19 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a3, $a3, $s6
	bne	$a0, $a2, .LBB7_19
# %bb.22:                               # %.preheader.i.preheader
	move	$a0, $zero
	ori	$a1, $s7, 384
	ori	$a2, $zero, 2000
	move	$a3, $fp
	.p2align	4, , 16
.LBB7_23:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
	slli.d	$a4, $a0, 3
	fldx.d	$fa0, $s1, $a4
	alsl.d	$a4, $a0, $s1, 3
	move	$a5, $a3
	move	$a6, $a1
	.p2align	4, , 16
.LBB7_24:                               #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a5, 0
	add.d	$a7, $s5, $a6
	fldx.d	$fa2, $a7, $s6
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $a4, 0
	addi.d	$a6, $a6, 8
	add.d	$a5, $a5, $s6
	bnez	$a6, .LBB7_24
# %bb.25:                               #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bne	$a0, $a2, .LBB7_23
# %bb.26:                               # %.preheader34.i52.preheader
	move	$a0, $zero
	ori	$a1, $s7, 384
	ori	$a2, $zero, 2000
	move	$a3, $fp
	.p2align	4, , 16
.LBB7_27:                               # %.preheader34.i52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
	slli.d	$a4, $a0, 3
	fldx.d	$fa0, $s2, $a4
	alsl.d	$a4, $a0, $s2, 3
	move	$a5, $a1
	.p2align	4, , 16
.LBB7_28:                               #   Parent Loop BB7_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a3, $a5
	fldx.d	$fa1, $a6, $s6
	add.d	$a6, $s4, $a5
	fldx.d	$fa2, $a6, $s6
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a5, $a5, 8
	fst.d	$fa0, $a4, 0
	bnez	$a5, .LBB7_28
# %bb.29:                               #   in Loop: Header=BB7_27 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a3, $a3, $s6
	bne	$a0, $a2, .LBB7_27
# %bb.30:                               # %.preheader.i60.preheader
	move	$a0, $zero
	ori	$a1, $s7, 384
	ori	$a2, $zero, 2000
	move	$a3, $fp
	.p2align	4, , 16
.LBB7_31:                               # %.preheader.i60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_32 Depth 2
	slli.d	$a4, $a0, 3
	fldx.d	$fa0, $s3, $a4
	alsl.d	$a4, $a0, $s3, 3
	move	$a5, $a3
	move	$a6, $a1
	.p2align	4, , 16
.LBB7_32:                               #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a5, 0
	add.d	$a7, $s5, $a6
	fldx.d	$fa2, $a7, $s6
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a4, 0
	addi.d	$a6, $a6, 8
	add.d	$a5, $a5, $s6
	bnez	$a6, .LBB7_32
# %bb.33:                               #   in Loop: Header=BB7_31 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bne	$a0, $a2, .LBB7_31
# %bb.34:                               # %kernel_mvt_StrictFP.exit.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	move	$a2, $zero
	ori	$a0, $s7, 384
	.p2align	4, , 16
.LBB7_35:                               # %kernel_mvt_StrictFP.exit
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s0, $a0
	fldx.d	$fa1, $a1, $s6
	add.d	$a1, $s2, $a0
	fldx.d	$fa2, $a1, $s6
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_45
# %bb.36:                               # %.critedge.i
                                        #   in Loop: Header=BB7_35 Depth=1
	addi.d	$a0, $a0, 8
	addi.w	$a2, $a2, 1
	bnez	$a0, .LBB7_35
# %bb.37:                               # %check_FP.exit.preheader
	move	$a2, $zero
	ori	$a0, $s7, 384
	.p2align	4, , 16
.LBB7_38:                               # %check_FP.exit
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s1, $a0
	fldx.d	$fa1, $a1, $s6
	add.d	$a1, $s3, $a0
	fldx.d	$fa2, $a1, $s6
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_45
# %bb.39:                               # %.critedge.i77
                                        #   in Loop: Header=BB7_38 Depth=1
	addi.d	$a0, $a0, 8
	addi.w	$a2, $a2, 1
	bnez	$a0, .LBB7_38
# %bb.40:                               # %check_FP.exit80
	lu12i.w	$s8, 7
	ori	$a0, $s8, 3329
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	vld	$vr5, $a0, %pc_lo12(.LCPI7_4)
	pcalau12i	$a0, %pc_hi20(.LCPI7_5)
	vld	$vr6, $a0, %pc_lo12(.LCPI7_5)
	pcalau12i	$a0, %pc_hi20(.LCPI7_6)
	vld	$vr7, $a0, %pc_lo12(.LCPI7_6)
	pcalau12i	$a0, %pc_hi20(.LCPI7_7)
	vld	$vr8, $a0, %pc_lo12(.LCPI7_7)
	ori	$a0, $s8, 3328
	stx.b	$zero, $s6, $a0
	ori	$a0, $s7, 384
	move	$a1, $s6
	.p2align	4, , 16
.LBB7_41:                               # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s2, $a0
	ldptr.d	$a2, $a2, 16000
	vreplgr2vr.d	$vr0, $a2
	vsrl.d	$vr1, $vr0, $vr5
	vsrl.d	$vr2, $vr0, $vr6
	vsrl.d	$vr3, $vr0, $vr7
	vsrl.d	$vr0, $vr0, $vr8
	vpickve2gr.d	$a2, $vr0, 0
	vinsgr2vr.b	$vr4, $a2, 0
	vpickve2gr.d	$a2, $vr0, 1
	vinsgr2vr.b	$vr4, $a2, 1
	vpickve2gr.d	$a2, $vr3, 0
	vinsgr2vr.b	$vr4, $a2, 2
	vpickve2gr.d	$a2, $vr3, 1
	vinsgr2vr.b	$vr4, $a2, 3
	vpickve2gr.d	$a2, $vr2, 0
	vinsgr2vr.b	$vr4, $a2, 4
	vpickve2gr.d	$a2, $vr2, 1
	vinsgr2vr.b	$vr4, $a2, 5
	vpickve2gr.d	$a2, $vr1, 0
	vinsgr2vr.b	$vr4, $a2, 6
	vpickve2gr.d	$a2, $vr1, 1
	vinsgr2vr.b	$vr4, $a2, 7
	vandi.b	$vr0, $vr4, 15
	vori.b	$vr0, $vr0, 48
	vilvl.b	$vr0, $vr0, $vr0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB7_41
# %bb.42:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s8, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $s8, 0
	move	$a0, $s6
	vst	$vr5, $sp, 64                   # 16-byte Folded Spill
	vst	$vr6, $sp, 48                   # 16-byte Folded Spill
	vst	$vr7, $sp, 32                   # 16-byte Folded Spill
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	vld	$vr7, $sp, 32                   # 16-byte Folded Reload
	vld	$vr6, $sp, 48                   # 16-byte Folded Reload
	vld	$vr5, $sp, 64                   # 16-byte Folded Reload
	ori	$a0, $s7, 384
	move	$a1, $s6
	.p2align	4, , 16
.LBB7_43:                               # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s3, $a0
	ldptr.d	$a2, $a2, 16000
	vreplgr2vr.d	$vr0, $a2
	vsrl.d	$vr1, $vr0, $vr5
	vsrl.d	$vr2, $vr0, $vr6
	vsrl.d	$vr3, $vr0, $vr7
	vsrl.d	$vr0, $vr0, $vr8
	vpickve2gr.d	$a2, $vr0, 0
	vinsgr2vr.b	$vr4, $a2, 0
	vpickve2gr.d	$a2, $vr0, 1
	vinsgr2vr.b	$vr4, $a2, 1
	vpickve2gr.d	$a2, $vr3, 0
	vinsgr2vr.b	$vr4, $a2, 2
	vpickve2gr.d	$a2, $vr3, 1
	vinsgr2vr.b	$vr4, $a2, 3
	vpickve2gr.d	$a2, $vr2, 0
	vinsgr2vr.b	$vr4, $a2, 4
	vpickve2gr.d	$a2, $vr2, 1
	vinsgr2vr.b	$vr4, $a2, 5
	vpickve2gr.d	$a2, $vr1, 0
	vinsgr2vr.b	$vr4, $a2, 6
	vpickve2gr.d	$a2, $vr1, 1
	vinsgr2vr.b	$vr4, $a2, 7
	vandi.b	$vr0, $vr4, 15
	vori.b	$vr0, $vr0, 48
	vilvl.b	$vr0, $vr0, $vr0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB7_43
# %bb.44:                               # %print_array.exit
	ld.d	$a1, $s8, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_46
.LBB7_45:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a5, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	lu12i.w	$a4, -487882
	ori	$a4, $a4, 2289
	lu32i.d	$a4, 325813
	lu52i.d	$a6, $a4, 1006
	move	$a4, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB7_46:
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
	ret
.LBB7_47:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
                                        # -- End function
	.type	polybench_papi_counters_threadid,@object # @polybench_papi_counters_threadid
	.bss
	.globl	polybench_papi_counters_threadid
	.p2align	2, 0x0
polybench_papi_counters_threadid:
	.word	0                               # 0x0
	.size	polybench_papi_counters_threadid, 4

	.type	polybench_program_total_flops,@object # @polybench_program_total_flops
	.globl	polybench_program_total_flops
	.p2align	3, 0x0
polybench_program_total_flops:
	.dword	0x0000000000000000              # double 0
	.size	polybench_program_total_flops, 8

	.type	polybench_t_start,@object       # @polybench_t_start
	.globl	polybench_t_start
	.p2align	3, 0x0
polybench_t_start:
	.dword	0x0000000000000000              # double 0
	.size	polybench_t_start, 8

	.type	polybench_t_end,@object         # @polybench_t_end
	.globl	polybench_t_end
	.p2align	3, 0x0
polybench_t_end:
	.dword	0x0000000000000000              # double 0
	.size	polybench_t_end, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%0.6f\n"
	.size	.L.str, 7

	.type	polybench_c_start,@object       # @polybench_c_start
	.bss
	.globl	polybench_c_start
	.p2align	3, 0x0
polybench_c_start:
	.dword	0                               # 0x0
	.size	polybench_c_start, 8

	.type	polybench_c_end,@object         # @polybench_c_end
	.globl	polybench_c_end
	.p2align	3, 0x0
polybench_c_end:
	.dword	0                               # 0x0
	.size	polybench_c_end, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"[PolyBench] posix_memalign: cannot allocate memory"
	.size	.L.str.1, 51

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 68

	.section	".note.GNU-stack","",@progbits
	.addrsig
