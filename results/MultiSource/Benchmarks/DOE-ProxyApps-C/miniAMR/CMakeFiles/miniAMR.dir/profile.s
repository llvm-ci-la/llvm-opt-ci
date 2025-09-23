	.file	"profile.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function profile
.LCPI0_0:
	.dword	0x4090000000000000              # double 1024
	.text
	.globl	profile
	.p2align	5
	.type	profile,@function
profile:                                # @profile
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 384                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(calculate_results)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(my_pe)
	ld.w	$a0, $a0, %pc_lo12(my_pe)
	bnez	$a0, .LBB0_37
# %bb.1:
	pcalau12i	$a0, %pc_hi20(total_blocks)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(total_blocks)
	pcalau12i	$a1, %pc_hi20(x_block_size)
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(x_block_size)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	pcalau12i	$a0, %pc_hi20(y_block_size)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(y_block_size)
	pcalau12i	$a1, %pc_hi20(z_block_size)
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(z_block_size)
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a1
	pcalau12i	$a0, %pc_hi20(stencil)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(stencil)
	fmul.d	$fa0, $fa0, $fa1
	ffint.d.w	$fa1, $fa2
	fmul.d	$fs0, $fa0, $fa1
	addi.d	$a0, $a0, -7
	sltui	$a0, $a0, 1
	vldi	$vr0, -1000
	vldi	$vr1, -966
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fmul.d	$fs1, $fs0, $fa0
	fadd.d	$fs2, $fs0, $fs1
	pcalau12i	$a0, %pc_hi20(average)
	addi.d	$a0, $a0, %pc_lo12(average)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	fld.d	$fa0, $a0, 304
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$fp, %pc_hi20(num_pes)
	ld.w	$a1, $fp, %pc_lo12(num_pes)
	fdiv.d	$fa0, $fs2, $fa0
	pcalau12i	$a0, %pc_hi20(report_perf)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.wu	$a0, $a0, %pc_lo12(report_perf)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	andi	$a1, $a0, 1
	pcalau12i	$a2, %pc_hi20(init_block_x)
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(init_block_y)
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(init_block_z)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(permute)
	pcalau12i	$s6, %pc_hi20(max_num_blocks)
	pcalau12i	$s5, %pc_hi20(code)
	pcalau12i	$s4, %pc_hi20(num_refine)
	pcalau12i	$s3, %pc_hi20(block_change)
	pcalau12i	$s2, %pc_hi20(refine_ghost)
	pcalau12i	$s0, %pc_hi20(uniform_refine)
	pcalau12i	$a2, %pc_hi20(num_tsteps)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(stages_per_ts)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(checksum_freq)
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(refine_freq)
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(plot_freq)
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(num_vars)
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(comm_vars)
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(error_tol)
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	movfr2gr.d	$a2, $fa0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	movfr2gr.d	$a2, $fa1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(nb_min)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(nb_max)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	beqz	$a1, .LBB0_6
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, %pc_lo12(num_pes)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(init_block_x)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(init_block_y)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(init_block_z)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(x_block_size)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(y_block_size)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(z_block_size)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s7, %pc_lo12(permute)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, %pc_lo12(max_num_blocks)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, %pc_lo12(code)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, %pc_lo12(num_refine)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, %pc_lo12(block_change)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, %pc_lo12(refine_ghost)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, %pc_lo12(uniform_refine)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(num_objects)
	ld.w	$a2, $s0, %pc_lo12(num_objects)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(num_objects)
	blez	$a0, .LBB0_5
# %bb.3:                                # %.lr.ph.preheader
	ori	$s6, $zero, 168
	pcalau12i	$a0, %pc_hi20(objects)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s2, $a0, %pc_lo12(.L.str.31)
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$s3, $a0, %pc_lo12(.L.str.32)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s4, $a0, %pc_lo12(.L.str.33)
	move	$s5, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(objects)
	add.d	$fp, $s8, $s6
	ld.w	$a3, $fp, -168
	move	$a0, $s1
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, -164
	move	$a0, $s1
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -160
	move	$a0, $s1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -152
	move	$a0, $s1
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -144
	move	$a0, $s1
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -112
	move	$a0, $s1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -104
	move	$a0, $s1
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -96
	move	$a0, $s1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -64
	move	$a0, $s1
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -56
	move	$a0, $s1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -48
	move	$a0, $s1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -16
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, -8
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ldx.d	$a3, $s8, $s6
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(num_objects)
	addi.d	$s7, $s7, 1
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, 176
	blt	$s7, $a0, .LBB0_4
.LBB0_5:                                # %._crit_edge
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $s0, %pc_lo12(num_tsteps)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a2, $fp, %pc_lo12(stages_per_ts)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(checksum_freq)
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(refine_freq)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(plot_freq)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(num_vars)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(stencil)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(comm_vars)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(error_tol)
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 888
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 304
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	move	$a0, $s1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $s1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 296
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 40
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 48
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 56
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 600
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 608
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 592
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 80
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 112
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 120
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 128
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 672
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 680
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a1, $a0, %pc_lo12(.L.str.60)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 664
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 152
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 184
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a1, $a0, %pc_lo12(.L.str.63)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 192
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a1, $a0, %pc_lo12(.L.str.64)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 200
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 744
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a1, $a0, %pc_lo12(.L.str.66)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 752
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a1, $a0, %pc_lo12(.L.str.67)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 736
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a1, $a0, %pc_lo12(.L.str.68)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 224
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 256
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 264
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a1, $a0, %pc_lo12(.L.str.71)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 272
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 816
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 824
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 808
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 312
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 328
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 336
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(total_blocks)
	ld.w	$a1, $s0, %pc_lo12(num_tsteps)
	ld.w	$a2, $fp, %pc_lo12(stages_per_ts)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	mul.d	$a0, $a2, $a1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(nb_min)
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(nb_max)
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a1, $a0, %pc_lo12(.L.str.81)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 832
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 840
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 344
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 352
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 368
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 376
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 360
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 536
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(report_perf)
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
.LBB0_6:
	andi	$a1, $a0, 2
	pcalau12i	$a2, %pc_hi20(target_active)
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(target_max)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(target_min)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB0_36
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(init_block_x)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a3, $a0, %pc_lo12(init_block_y)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(init_block_z)
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a1, $a0, %pc_lo12(.L.str.95)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(x_block_size)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a3, $a0, %pc_lo12(y_block_size)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(z_block_size)
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a1, $a0, %pc_lo12(.L.str.96)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(permute)
	beqz	$a0, .LBB0_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_9:
	ld.w	$a2, $s6, %pc_lo12(max_num_blocks)
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a1, $a0, %pc_lo12(.L.str.98)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(target_active)
	beqz	$a2, .LBB0_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a1, $a0, %pc_lo12(.L.str.99)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_11:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(target_max)
	beqz	$a2, .LBB0_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a1, $a0, %pc_lo12(.L.str.100)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_13:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(target_min)
	beqz	$a2, .LBB0_15
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_15:
	ld.w	$a2, $s5, %pc_lo12(code)
	beqz	$a2, .LBB0_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a1, $a0, %pc_lo12(.L.str.102)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_17:
	ld.w	$a2, $s4, %pc_lo12(num_refine)
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a1, $a0, %pc_lo12(.L.str.103)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, %pc_lo12(block_change)
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(refine_ghost)
	beqz	$a0, .LBB0_19
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	ori	$a1, $zero, 55
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_19:
	ld.w	$a0, $s0, %pc_lo12(uniform_refine)
	beqz	$a0, .LBB0_23
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_21:                               # %.loopexit454
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(num_tsteps)
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a1, $a0, %pc_lo12(.L.str.140)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(stages_per_ts)
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a1, $a0, %pc_lo12(.L.str.141)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(checksum_freq)
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a1, $a0, %pc_lo12(.L.str.142)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(refine_freq)
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a1, $a0, %pc_lo12(.L.str.143)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(plot_freq)
	beqz	$a2, .LBB0_32
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a1, $a0, %pc_lo12(.L.str.144)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_33
.LBB0_23:
	pcalau12i	$fp, %pc_hi20(num_objects)
	ld.w	$a2, $fp, %pc_lo12(num_objects)
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a1, $a0, %pc_lo12(.L.str.107)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	ld.w	$a0, $fp, %pc_lo12(num_objects)
	blez	$a0, .LBB0_21
# %bb.24:                               # %.lr.ph458.preheader
	ori	$s3, $zero, 168
	pcalau12i	$a0, %pc_hi20(objects)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	lu12i.w	$a0, 16143
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lswitch.table.profile.9)
	addi.d	$a0, $a0, %pc_lo12(.Lswitch.table.profile.9)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mesh_size)
	addi.d	$s4, $a0, %pc_lo12(mesh_size)
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$s2, $zero
	move	$s5, $zero
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_27 Depth=1
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
.LBB0_26:                               #   in Loop: Header=BB0_27 Depth=1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s7, -120
	ld.d	$a3, $s7, -128
	ld.d	$a2, $s7, -136
	move	$a0, $s1
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s7, -144
	ld.d	$a3, $s7, -152
	ld.d	$a2, $s7, -160
	move	$a0, $s1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s7, -72
	ld.d	$a3, $s7, -80
	ld.d	$a2, $s7, -88
	move	$a0, $s1
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a1, $s8, %pc_lo12(x_block_size)
	fld.d	$fa0, $s7, -88
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s4, 4
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a1, $fp, %pc_lo12(y_block_size)
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $s7, -80
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa2, $a0
	ld.w	$a0, $s4, 8
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a1, $s0, %pc_lo12(z_block_size)
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $s7, -72
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	move	$a0, $s1
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s7, -24
	ld.d	$a3, $s7, -32
	ld.d	$a2, $s7, -40
	move	$a0, $s1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s7, -48
	ld.d	$a3, $s7, -56
	ld.d	$a2, $s7, -64
	move	$a0, $s1
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ldx.d	$a4, $s6, $s3
	ld.d	$a3, $s7, -8
	ld.d	$a2, $s7, -16
	move	$a0, $s1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s8, %pc_lo12(x_block_size)
	fld.d	$fa0, $s7, -16
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s4, 4
	ld.w	$a1, $fp, %pc_lo12(y_block_size)
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $s7, -8
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa2, $a0
	ld.w	$a0, $s4, 8
	ld.w	$a1, $s0, %pc_lo12(z_block_size)
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fldx.d	$fa2, $s6, $s3
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	move	$a0, $s1
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(num_objects)
	addi.d	$s5, $s5, 1
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s3, 176
	bge	$s5, $a0, .LBB0_21
.LBB0_27:                               # %.lr.ph458
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(objects)
	add.d	$s7, $s6, $s3
	ld.w	$a0, $s7, -168
	ori	$a1, $zero, 25
	bltu	$a1, $a0, .LBB0_30
# %bb.28:                               # %.lr.ph458
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	srl.w	$a1, $a1, $a0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_30
# %bb.29:                               # %switch.lookup
                                        #   in Loop: Header=BB0_27 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_30:                               #   in Loop: Header=BB0_27 Depth=1
	ld.w	$a0, $s7, -164
	bnez	$a0, .LBB0_25
# %bb.31:                               #   in Loop: Header=BB0_27 Depth=1
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_26
.LBB0_32:
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_33:
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(num_vars)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a3, $a0, %pc_lo12(stencil)
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a1, $a0, %pc_lo12(.L.str.146)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(comm_vars)
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a1, $a0, %pc_lo12(.L.str.147)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(error_tol)
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a1, $a0, %pc_lo12(.L.str.148)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a1, $a0, %pc_lo12(.L.str.149)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 880
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a1, $a0, %pc_lo12(.L.str.150)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 888
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a1, $a0, %pc_lo12(.L.str.151)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$fp, $a0, %pc_lo12(.L.str.152)
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	move	$a0, $fp
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a0, $a0, %pc_lo12(.L.str.153)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$s0, $a0, %pc_lo12(.L.str.154)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a0, $s0
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 304
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$s4, $a0, %pc_lo12(.L.str.155)
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a1, $a0, %pc_lo12(.L.str.156)
	move	$a0, $s1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a1, $a0, %pc_lo12(.L.str.157)
	move	$a0, $s1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fs2
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a1, $a0, %pc_lo12(.L.str.158)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fs1
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a1, $a0, %pc_lo12(.L.str.159)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a1, $a0, %pc_lo12(.L.str.160)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 296
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$fp, $a0, %pc_lo12(.L.str.166)
	ori	$a1, $zero, 66
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$s0, $a0, %pc_lo12(.L.str.167)
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 40
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$s5, $a0, %pc_lo12(.L.str.168)
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 48
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$s6, $a0, %pc_lo12(.L.str.169)
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 56
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$s7, $a0, %pc_lo12(.L.str.170)
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 600
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$s8, $a0, %pc_lo12(.L.str.171)
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 608
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$s2, $a0, %pc_lo12(.L.str.172)
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 592
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$s3, $a0, %pc_lo12(.L.str.173)
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 66
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 80
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 112
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 120
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 128
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 672
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 680
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 664
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 66
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 152
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 184
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 192
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 200
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 744
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 752
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 736
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 66
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 224
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 256
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 264
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 272
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 816
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 824
	move	$a0, $s1
	move	$a1, $s2
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 808
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$a0, $a0, %pc_lo12(.L.str.175)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 312
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 328
	pcalau12i	$a0, %pc_hi20(.L.str.176)
	addi.d	$a1, $a0, %pc_lo12(.L.str.176)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(total_red)
	ld.w	$a2, $a0, %pc_lo12(total_red)
	pcalau12i	$a0, %pc_hi20(.L.str.177)
	addi.d	$a1, $a0, %pc_lo12(.L.str.177)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(num_vars)
	pcalau12i	$a0, %pc_hi20(.L.str.178)
	addi.d	$a1, $a0, %pc_lo12(.L.str.178)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$a0, $a0, %pc_lo12(.L.str.179)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 336
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(nrs)
	ld.w	$a2, $a0, %pc_lo12(nrs)
	pcalau12i	$a0, %pc_hi20(.L.str.180)
	addi.d	$a1, $a0, %pc_lo12(.L.str.180)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $fp, %pc_lo12(total_blocks)
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$a1, $a0, %pc_lo12(.L.str.181)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(total_blocks)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(num_tsteps)
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(stages_per_ts)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	mul.d	$a0, $a2, $a1
	movgr2fr.w	$fa1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a3, $a0, %pc_lo12(nb_min)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(nb_max)
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.182)
	addi.d	$a1, $a0, %pc_lo12(.L.str.182)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(global_max_b)
	ld.w	$a2, $a0, %pc_lo12(global_max_b)
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$a1, $a0, %pc_lo12(.L.str.183)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 832
	pcalau12i	$a0, %pc_hi20(.L.str.184)
	addi.d	$a1, $a0, %pc_lo12(.L.str.184)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 840
	pcalau12i	$a0, %pc_hi20(.L.str.185)
	addi.d	$a1, $a0, %pc_lo12(.L.str.185)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.186)
	addi.d	$a0, $a0, %pc_lo12(.L.str.186)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 344
	pcalau12i	$a0, %pc_hi20(.L.str.187)
	addi.d	$a1, $a0, %pc_lo12(.L.str.187)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 352
	pcalau12i	$a0, %pc_hi20(.L.str.188)
	addi.d	$a1, $a0, %pc_lo12(.L.str.188)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 368
	pcalau12i	$a0, %pc_hi20(.L.str.189)
	addi.d	$a1, $a0, %pc_lo12(.L.str.189)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 376
	pcalau12i	$a0, %pc_hi20(.L.str.190)
	addi.d	$a1, $a0, %pc_lo12(.L.str.190)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 360
	pcalau12i	$a0, %pc_hi20(.L.str.191)
	addi.d	$a1, $a0, %pc_lo12(.L.str.191)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(target_active)
	beqz	$a0, .LBB0_35
# %bb.34:
	ld.d	$a2, $s0, 416
	pcalau12i	$a0, %pc_hi20(.L.str.192)
	addi.d	$a1, $a0, %pc_lo12(.L.str.192)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 424
	pcalau12i	$a0, %pc_hi20(.L.str.193)
	addi.d	$a1, $a0, %pc_lo12(.L.str.193)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 432
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$fp, $a0, %pc_lo12(.L.str.194)
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 464
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$a1, $a0, %pc_lo12(.L.str.195)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 472
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a1, $a0, %pc_lo12(.L.str.196)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 480
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 488
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a1, $a0, %pc_lo12(.L.str.197)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_35:
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$a0, $a0, %pc_lo12(.L.str.198)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$a0, $a0, %pc_lo12(.L.str.154)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 536
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a1, $a0, %pc_lo12(.L.str.155)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(nps)
	ld.w	$a2, $a0, %pc_lo12(nps)
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$a1, $a0, %pc_lo12(.L.str.199)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a0, $a0, %pc_lo12(.L.str.200)
	ori	$a1, $zero, 52
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(report_perf)
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
.LBB0_36:
	andi	$a0, $a0, 4
	bnez	$a0, .LBB0_38
.LBB0_37:
	fld.d	$fs2, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 400                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB0_38:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(init_block_x)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(init_block_y)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a3, $a0, %pc_lo12(init_block_z)
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(x_block_size)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(y_block_size)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a3, $a0, %pc_lo12(z_block_size)
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(permute)
	beqz	$a0, .LBB0_40
# %bb.39:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_40:
	ld.w	$a1, $s6, %pc_lo12(max_num_blocks)
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(target_active)
	beqz	$a1, .LBB0_42
# %bb.41:
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_42:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(target_max)
	beqz	$a1, .LBB0_44
# %bb.43:
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_44:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(target_min)
	beqz	$a1, .LBB0_46
# %bb.45:
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_46:
	ld.w	$a1, $s5, %pc_lo12(code)
	beqz	$a1, .LBB0_48
# %bb.47:
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_48:
	ld.w	$a1, $s4, %pc_lo12(num_refine)
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(block_change)
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(refine_ghost)
	beqz	$a0, .LBB0_50
# %bb.49:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_50:
	ld.w	$a0, $s0, %pc_lo12(uniform_refine)
	beqz	$a0, .LBB0_54
# %bb.51:
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_52:                               # %.loopexit
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(num_tsteps)
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(stages_per_ts)
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(checksum_freq)
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(refine_freq)
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(plot_freq)
	beqz	$a1, .LBB0_60
# %bb.53:
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a0, $a0, %pc_lo12(.L.str.144)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_61
.LBB0_54:
	pcalau12i	$fp, %pc_hi20(num_objects)
	ld.w	$a1, $fp, %pc_lo12(num_objects)
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 376                   # 8-byte Folded Spill
	ld.w	$a0, $fp, %pc_lo12(num_objects)
	blez	$a0, .LBB0_52
# %bb.55:                               # %.lr.ph462.preheader
	ori	$s8, $zero, 168
	pcalau12i	$a0, %pc_hi20(objects)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	lu12i.w	$a0, 16143
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lswitch.table.profile.9)
	addi.d	$a0, $a0, %pc_lo12(.Lswitch.table.profile.9)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mesh_size)
	addi.d	$fp, $a0, %pc_lo12(mesh_size)
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$s6, $a0, %pc_lo12(.L.str.139)
	move	$s7, $zero
	move	$s0, $zero
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_56:                               #   in Loop: Header=BB0_57 Depth=1
	ld.w	$a0, $s2, -164
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, -120
	ld.d	$a2, $s2, -128
	ld.d	$a1, $s2, -136
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, -144
	ld.d	$a2, $s2, -152
	ld.d	$a1, $s2, -160
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, -72
	ld.d	$a2, $s2, -80
	ld.d	$a1, $s2, -88
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a1, $s3, %pc_lo12(x_block_size)
	fld.d	$fa0, $s2, -88
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $fp, 4
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a1, $s4, %pc_lo12(y_block_size)
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $s2, -80
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa2, $a0
	ld.w	$a0, $fp, 8
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a1, $s5, %pc_lo12(z_block_size)
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $s2, -72
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, -24
	ld.d	$a2, $s2, -32
	ld.d	$a1, $s2, -40
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, -48
	ld.d	$a2, $s2, -56
	ld.d	$a1, $s2, -64
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ldx.d	$a3, $s1, $s8
	ld.d	$a2, $s2, -8
	ld.d	$a1, $s2, -16
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s3, %pc_lo12(x_block_size)
	fld.d	$fa0, $s2, -16
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $fp, 4
	ld.w	$a1, $s4, %pc_lo12(y_block_size)
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $s2, -8
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa2, $a0
	ld.w	$a0, $fp, 8
	ld.w	$a1, $s5, %pc_lo12(z_block_size)
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fldx.d	$fa2, $s1, $s8
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(num_objects)
	addi.d	$s0, $s0, 1
	addi.w	$s7, $s7, 1
	addi.d	$s8, $s8, 176
	bge	$s0, $a0, .LBB0_52
.LBB0_57:                               # %.lr.ph462
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(objects)
	add.d	$s2, $s1, $s8
	ld.w	$a0, $s2, -168
	ori	$a1, $zero, 25
	bltu	$a1, $a0, .LBB0_56
# %bb.58:                               # %.lr.ph462
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	srl.w	$a1, $a1, $a0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_56
# %bb.59:                               # %switch.lookup482
                                        #   in Loop: Header=BB0_57 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_56
.LBB0_60:
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_61:
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(num_vars)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(stencil)
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(comm_vars)
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(error_tol)
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	fld.d	$fs2, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 400                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end0:
	.size	profile, .Lfunc_end0-profile
                                        # -- End function
	.globl	calculate_results               # -- Begin function calculate_results
	.p2align	5
	.type	calculate_results,@function
calculate_results:                      # @calculate_results
# %bb.0:                                # %.preheader28
	addi.d	$sp, $sp, -240
	fst.d	$fs0, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 176                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(timer_all)
	fld.d	$fa0, $a0, %pc_lo12(timer_all)
	fst.d	$fa0, $sp, 120                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(timer_comm_dir)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_dir)
	fld.d	$ft15, $a0, 0
	movgr2fr.d	$fa0, $zero
	fadd.d	$fa1, $ft15, $fa0
	pcalau12i	$a1, %pc_hi20(timer_comm_bc)
	addi.d	$a2, $a1, %pc_lo12(timer_comm_bc)
	fld.d	$fs1, $a2, 0
	fld.d	$ft12, $a0, 8
	fld.d	$ft14, $a2, 8
	fld.d	$ft13, $a0, 16
	fadd.d	$fa0, $fs1, $fa0
	fadd.d	$fa1, $ft12, $fa1
	fadd.d	$fa0, $ft14, $fa0
	fadd.d	$fa1, $ft13, $fa1
	fst.d	$fa1, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(timer_comm_same)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_same)
	fld.d	$ft10, $a0, 16
	pcalau12i	$a1, %pc_hi20(timer_comm_diff)
	addi.d	$a1, $a1, %pc_lo12(timer_comm_diff)
	fld.d	$ft9, $a1, 16
	fld.d	$ft8, $a2, 16
	pcalau12i	$a2, %pc_hi20(timer_comm_all)
	fld.d	$fa1, $a2, %pc_lo12(timer_comm_all)
	fst.d	$fa1, $sp, 168                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_calc_all)
	fld.d	$fa1, $a2, %pc_lo12(timer_calc_all)
	fst.d	$fa1, $sp, 160                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_cs_all)
	fld.d	$fa1, $a2, %pc_lo12(timer_cs_all)
	fst.d	$fa1, $sp, 152                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_cs_calc)
	fld.d	$fa1, $a2, %pc_lo12(timer_cs_calc)
	fst.d	$fa1, $sp, 144                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_refine_all)
	fld.d	$fa1, $a2, %pc_lo12(timer_refine_all)
	fst.d	$fa1, $sp, 136                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_refine_co)
	fld.d	$fa1, $a2, %pc_lo12(timer_refine_co)
	fst.d	$fa1, $sp, 128                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_refine_mr)
	fld.d	$fa1, $a2, %pc_lo12(timer_refine_mr)
	fst.d	$fa1, $sp, 112                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_refine_cc)
	fld.d	$fa1, $a2, %pc_lo12(timer_refine_cc)
	fst.d	$fa1, $sp, 104                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_refine_sb)
	fld.d	$fa1, $a2, %pc_lo12(timer_refine_sb)
	fst.d	$fa1, $sp, 96                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_cb_all)
	fld.d	$fa1, $a2, %pc_lo12(timer_cb_all)
	fst.d	$fa1, $sp, 88                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_target_all)
	fld.d	$fa1, $a2, %pc_lo12(timer_target_all)
	fst.d	$fa1, $sp, 80                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_target_rb)
	fld.d	$fa1, $a2, %pc_lo12(timer_target_rb)
	fst.d	$fa1, $sp, 72                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_target_dc)
	fld.d	$fa1, $a2, %pc_lo12(timer_target_dc)
	fst.d	$fa1, $sp, 64                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_target_cb)
	fld.d	$fa1, $a2, %pc_lo12(timer_target_cb)
	fst.d	$fa1, $sp, 56                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_target_ab)
	fld.d	$fa1, $a2, %pc_lo12(timer_target_ab)
	fst.d	$fa1, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_target_da)
	fld.d	$fa1, $a2, %pc_lo12(timer_target_da)
	fst.d	$fa1, $sp, 40                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_target_sb)
	fld.d	$fa1, $a2, %pc_lo12(timer_target_sb)
	fst.d	$fa1, $sp, 32                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(timer_plot)
	fld.d	$fa1, $a2, %pc_lo12(timer_plot)
	fst.d	$fa1, $sp, 24                   # 8-byte Folded Spill
	fadd.d	$fs3, $ft8, $fa0
	pcalau12i	$a2, %pc_hi20(counter_bc)
	addi.d	$a2, $a2, %pc_lo12(counter_bc)
	ld.w	$a3, $a2, 0
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fs0, $fa0
	pcalau12i	$a3, %pc_hi20(counter_same)
	addi.d	$a3, $a3, %pc_lo12(counter_same)
	ld.w	$a4, $a3, 0
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fs4, $fa0
	pcalau12i	$a4, %pc_hi20(counter_diff)
	addi.d	$a4, $a4, %pc_lo12(counter_diff)
	ld.w	$a5, $a4, 0
	ld.w	$a6, $a2, 4
	movgr2fr.w	$fa0, $a5
	ld.w	$a5, $a3, 4
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fs6, $fa0
	ffint.d.w	$fs7, $fa1
	movgr2fr.w	$fa0, $a5
	ld.w	$a5, $a4, 4
	fadd.d	$fa1, $fs0, $fs7
	ffint.d.w	$ft1, $fa0
	fadd.d	$fa0, $fs4, $ft1
	movgr2fr.w	$fa2, $a5
	ld.w	$a2, $a2, 8
	ffint.d.w	$ft0, $fa2
	fadd.d	$fa7, $fs6, $ft0
	ld.w	$a3, $a3, 8
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa6, $fa2
	fadd.d	$fs2, $fa1, $fa6
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa5, $fa1
	ld.w	$a2, $a4, 8
	fadd.d	$ft11, $fa0, $fa5
	pcalau12i	$a3, %pc_hi20(num_refined)
	ld.w	$a3, $a3, %pc_lo12(num_refined)
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa4, $fa0
	fadd.d	$ft5, $fa7, $fa4
	movgr2fr.w	$fa0, $a3
	pcalau12i	$a2, %pc_hi20(num_reformed)
	ld.w	$a2, $a2, %pc_lo12(num_reformed)
	pcalau12i	$a3, %pc_hi20(counter_malloc)
	ld.w	$a3, $a3, %pc_lo12(counter_malloc)
	ffint.d.w	$ft7, $fa0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$ft6, $fa0
	movgr2fr.w	$fa0, $a3
	pcalau12i	$a2, %pc_hi20(counter_malloc_init)
	ld.w	$a2, $a2, %pc_lo12(counter_malloc_init)
	ffint.d.w	$ft4, $fa0
	pcalau12i	$a4, %pc_hi20(size_malloc)
	fld.d	$fa3, $a4, %pc_lo12(size_malloc)
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$ft3, $fa0
	pcalau12i	$a4, %pc_hi20(size_malloc_init)
	fld.d	$fa2, $a4, %pc_lo12(size_malloc_init)
	sub.d	$a2, $a3, $a2
	movgr2fr.w	$fa7, $a2
	ffint.d.w	$fa7, $fa7
	fsub.d	$ft2, $fa3, $fa2
	pcalau12i	$a2, %pc_hi20(average)
	addi.d	$a2, $a2, %pc_lo12(average)
	vld	$vr1, $a0, 0
	vld	$vr0, $a1, 0
	fld.d	$fs5, $sp, 120                  # 8-byte Folded Reload
	fst.d	$fs5, $a2, 0
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fst.d	$fs5, $a2, 8
	vpackev.d	$vr29, $vr0, $vr1
	vpackod.d	$vr0, $vr0, $vr1
	vrepli.b	$vr1, 0
	vfadd.d	$vr29, $vr29, $vr1
	vfadd.d	$vr0, $vr0, $vr29
	vori.b	$vr29, $vr18, 0
	vextrins.d	$vr29, $vr17, 16
	vfadd.d	$vr0, $vr29, $vr0
	vst	$vr0, $a2, 40
	fld.d	$fa0, $a0, 0
	fld.d	$fs5, $a1, 0
	fst.d	$fs3, $a2, 56
	fst.d	$ft15, $a2, 80
	fst.d	$fa0, $a2, 112
	fst.d	$fs5, $a2, 120
	fld.d	$fa0, $a0, 8
	fld.d	$ft15, $a1, 8
	fst.d	$fs1, $a2, 128
	fst.d	$ft12, $a2, 152
	fst.d	$fa0, $a2, 184
	fst.d	$ft15, $a2, 192
	fst.d	$ft14, $a2, 200
	fst.d	$ft13, $a2, 224
	fst.d	$ft10, $a2, 256
	fst.d	$ft9, $a2, 264
	fst.d	$ft8, $a2, 272
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fst.d	$fa0, $a2, 296
	fld.d	$fa0, $sp, 160                  # 8-byte Folded Reload
	fst.d	$fa0, $a2, 304
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	fst.d	$fa0, $a2, 312
	fld.d	$fa0, $sp, 144                  # 8-byte Folded Reload
	fst.d	$fa0, $a2, 328
	fld.d	$fa0, $sp, 136                  # 8-byte Folded Reload
	fst.d	$fa0, $a2, 336
	fld.d	$fa0, $sp, 128                  # 8-byte Folded Reload
	fst.d	$fa0, $a2, 344
	fld.d	$fa0, $sp, 112                  # 8-byte Folded Reload
	fst.d	$fa0, $a2, 352
	fld.d	$fa0, $sp, 104                  # 8-byte Folded Reload
	fst.d	$fa0, $a2, 360
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 368
	fld.d	$fa0, $sp, 88                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 376
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 416
	fld.d	$fa0, $sp, 72                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 424
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 432
	fld.d	$fa0, $sp, 56                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 464
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 472
	fld.d	$fa0, $sp, 40                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 480
	fld.d	$fa0, $sp, 32                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 488
	fld.d	$fa0, $sp, 24                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, 536
	vst	$vr1, $a2, 24
	vst	$vr1, $a2, 64
	vst	$vr1, $a2, 576
	vst	$vr1, $a2, 560
	vst	$vr1, $a2, 544
	fst.d	$fs2, $a2, 592
	fst.d	$ft11, $a2, 600
	fst.d	$ft5, $a2, 608
	fst.d	$fs0, $a2, 664
	fst.d	$fs4, $a2, 672
	fst.d	$fs6, $a2, 680
	fst.d	$fs7, $a2, 736
	fst.d	$ft1, $a2, 744
	fst.d	$ft0, $a2, 752
	fst.d	$fa6, $a2, 808
	fst.d	$fa5, $a2, 816
	fst.d	$fa4, $a2, 824
	fst.d	$ft7, $a2, 832
	fst.d	$ft6, $a2, 840
	fst.d	$ft4, $a2, 880
	fst.d	$fa3, $a2, 888
	fst.d	$ft3, $a2, 896
	fst.d	$fa2, $a2, 904
	fst.d	$fa7, $a2, 912
	fst.d	$ft2, $a2, 920
	st.d	$zero, $a2, 16
	fld.d	$fs7, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 232                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end1:
	.size	calculate_results, .Lfunc_end1-calculate_results
                                        # -- End function
	.globl	init_profile                    # -- Begin function init_profile
	.p2align	5
	.type	init_profile,@function
init_profile:                           # @init_profile
# %bb.0:
	pcalau12i	$a0, %pc_hi20(timer_all)
	st.d	$zero, $a0, %pc_lo12(timer_all)
	pcalau12i	$a0, %pc_hi20(timer_comm_all)
	st.d	$zero, $a0, %pc_lo12(timer_comm_all)
	pcalau12i	$a0, %pc_hi20(timer_comm_dir)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_dir)
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	pcalau12i	$a0, %pc_hi20(timer_comm_same)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_same)
	st.d	$zero, $a0, 0
	vst	$vr0, $a0, 8
	pcalau12i	$a0, %pc_hi20(timer_comm_diff)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_diff)
	st.d	$zero, $a0, 0
	vst	$vr0, $a0, 8
	pcalau12i	$a0, %pc_hi20(timer_comm_bc)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_bc)
	st.d	$zero, $a0, 0
	vst	$vr0, $a0, 8
	pcalau12i	$a0, %pc_hi20(timer_calc_all)
	st.d	$zero, $a0, %pc_lo12(timer_calc_all)
	pcalau12i	$a0, %pc_hi20(timer_cs_all)
	st.d	$zero, $a0, %pc_lo12(timer_cs_all)
	pcalau12i	$a0, %pc_hi20(timer_cs_calc)
	st.d	$zero, $a0, %pc_lo12(timer_cs_calc)
	pcalau12i	$a0, %pc_hi20(timer_refine_all)
	st.d	$zero, $a0, %pc_lo12(timer_refine_all)
	pcalau12i	$a0, %pc_hi20(timer_refine_co)
	st.d	$zero, $a0, %pc_lo12(timer_refine_co)
	pcalau12i	$a0, %pc_hi20(timer_refine_mr)
	st.d	$zero, $a0, %pc_lo12(timer_refine_mr)
	pcalau12i	$a0, %pc_hi20(timer_refine_cc)
	st.d	$zero, $a0, %pc_lo12(timer_refine_cc)
	pcalau12i	$a0, %pc_hi20(timer_refine_sb)
	st.d	$zero, $a0, %pc_lo12(timer_refine_sb)
	pcalau12i	$a0, %pc_hi20(timer_cb_all)
	st.d	$zero, $a0, %pc_lo12(timer_cb_all)
	pcalau12i	$a0, %pc_hi20(timer_target_all)
	st.d	$zero, $a0, %pc_lo12(timer_target_all)
	pcalau12i	$a0, %pc_hi20(timer_target_rb)
	st.d	$zero, $a0, %pc_lo12(timer_target_rb)
	pcalau12i	$a0, %pc_hi20(timer_target_dc)
	st.d	$zero, $a0, %pc_lo12(timer_target_dc)
	pcalau12i	$a0, %pc_hi20(timer_target_cb)
	st.d	$zero, $a0, %pc_lo12(timer_target_cb)
	pcalau12i	$a0, %pc_hi20(timer_target_ab)
	st.d	$zero, $a0, %pc_lo12(timer_target_ab)
	pcalau12i	$a0, %pc_hi20(timer_target_da)
	st.d	$zero, $a0, %pc_lo12(timer_target_da)
	pcalau12i	$a0, %pc_hi20(timer_target_sb)
	st.d	$zero, $a0, %pc_lo12(timer_target_sb)
	pcalau12i	$a0, %pc_hi20(timer_plot)
	st.d	$zero, $a0, %pc_lo12(timer_plot)
	pcalau12i	$a0, %pc_hi20(total_blocks)
	st.d	$zero, $a0, %pc_lo12(total_blocks)
	pcalau12i	$a0, %pc_hi20(nrs)
	st.w	$zero, $a0, %pc_lo12(nrs)
	pcalau12i	$a0, %pc_hi20(nps)
	st.w	$zero, $a0, %pc_lo12(nps)
	pcalau12i	$a0, %pc_hi20(num_refined)
	st.w	$zero, $a0, %pc_lo12(num_refined)
	pcalau12i	$a0, %pc_hi20(num_reformed)
	st.w	$zero, $a0, %pc_lo12(num_reformed)
	pcalau12i	$a0, %pc_hi20(counter_bc)
	addi.d	$a0, $a0, %pc_lo12(counter_bc)
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(counter_same)
	addi.d	$a0, $a0, %pc_lo12(counter_same)
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(counter_diff)
	addi.d	$a0, $a0, %pc_lo12(counter_diff)
	st.w	$zero, $a0, 8
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(total_red)
	st.w	$zero, $a0, %pc_lo12(total_red)
	ret
.Lfunc_end2:
	.size	init_profile, .Lfunc_end2-init_profile
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.0 provisional"
	.size	.L.str, 16

	.type	total_blocks,@object            # @total_blocks
	.comm	total_blocks,8,8
	.type	x_block_size,@object            # @x_block_size
	.comm	x_block_size,4,4
	.type	y_block_size,@object            # @y_block_size
	.comm	y_block_size,4,4
	.type	z_block_size,@object            # @z_block_size
	.comm	z_block_size,4,4
	.type	stencil,@object                 # @stencil
	.comm	stencil,4,4
	.type	average,@object                 # @average
	.comm	average,1024,8
	.type	num_pes,@object                 # @num_pes
	.comm	num_pes,4,4
	.type	my_pe,@object                   # @my_pe
	.comm	my_pe,4,4
	.type	report_perf,@object             # @report_perf
	.comm	report_perf,4,4
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"results.yaml"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"w"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"code: miniAMR\n"
	.size	.L.str.3, 15

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"version: %s\n"
	.size	.L.str.4, 13

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"ranks: %d\n"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"init_block_x: %d\n"
	.size	.L.str.6, 18

	.type	init_block_x,@object            # @init_block_x
	.comm	init_block_x,4,4
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"init_block_y: %d\n"
	.size	.L.str.7, 18

	.type	init_block_y,@object            # @init_block_y
	.comm	init_block_y,4,4
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"init_block_z: %d\n"
	.size	.L.str.8, 18

	.type	init_block_z,@object            # @init_block_z
	.comm	init_block_z,4,4
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"x_block_size: %d\n"
	.size	.L.str.9, 18

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"y_block_size: %d\n"
	.size	.L.str.10, 18

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"z_block_size: %d\n"
	.size	.L.str.11, 18

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"permute: %d\n"
	.size	.L.str.12, 13

	.type	permute,@object                 # @permute
	.comm	permute,4,4
	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"max_blocks_allowed: %d\n"
	.size	.L.str.13, 24

	.type	max_num_blocks,@object          # @max_num_blocks
	.comm	max_num_blocks,4,4
	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"code: %d\n"
	.size	.L.str.14, 10

	.type	code,@object                    # @code
	.comm	code,4,4
	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"num_refine: %d\n"
	.size	.L.str.15, 16

	.type	num_refine,@object              # @num_refine
	.comm	num_refine,4,4
	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"block_change: %d\n"
	.size	.L.str.16, 18

	.type	block_change,@object            # @block_change
	.comm	block_change,4,4
	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"refine_ghost: %d\n"
	.size	.L.str.17, 18

	.type	refine_ghost,@object            # @refine_ghost
	.comm	refine_ghost,4,4
	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"uniform_refine: %d\n"
	.size	.L.str.18, 20

	.type	uniform_refine,@object          # @uniform_refine
	.comm	uniform_refine,4,4
	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"num_objects: %d\n"
	.size	.L.str.19, 17

	.type	num_objects,@object             # @num_objects
	.comm	num_objects,4,4
	.type	objects,@object                 # @objects
	.comm	objects,8,8
	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"obj%dtype: %d\n"
	.size	.L.str.20, 15

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"obj%dbounce: %d\n"
	.size	.L.str.21, 17

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"obj%dcenter_x: %lf\n"
	.size	.L.str.22, 20

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"obj%dcenter_y: %lf\n"
	.size	.L.str.23, 20

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"obj%dcenter_z: %lf\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"obj%dmove_x: %lf\n"
	.size	.L.str.25, 18

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"obj%dmove_y: %lf\n"
	.size	.L.str.26, 18

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"obj%dmove_z: %lf\n"
	.size	.L.str.27, 18

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"obj%dsize_x: %lf\n"
	.size	.L.str.28, 18

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"obj%dsize_y: %lf\n"
	.size	.L.str.29, 18

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"obj%dsize_z: %lf\n"
	.size	.L.str.30, 18

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"obj%dinc_x: %lf\n"
	.size	.L.str.31, 17

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"obj%dinc_y: %lf\n"
	.size	.L.str.32, 17

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"obj%dinc_z: %lf\n"
	.size	.L.str.33, 17

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"num_tsteps: %d\n"
	.size	.L.str.34, 16

	.type	num_tsteps,@object              # @num_tsteps
	.comm	num_tsteps,4,4
	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"stages_per_timestep: %d\n"
	.size	.L.str.35, 25

	.type	stages_per_ts,@object           # @stages_per_ts
	.comm	stages_per_ts,4,4
	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"checksum_freq: %d\n"
	.size	.L.str.36, 19

	.type	checksum_freq,@object           # @checksum_freq
	.comm	checksum_freq,4,4
	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"refine_freq: %d\n"
	.size	.L.str.37, 17

	.type	refine_freq,@object             # @refine_freq
	.comm	refine_freq,4,4
	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"plot_freq: %d\n"
	.size	.L.str.38, 15

	.type	plot_freq,@object               # @plot_freq
	.comm	plot_freq,4,4
	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"num_vars: %d\n"
	.size	.L.str.39, 14

	.type	num_vars,@object                # @num_vars
	.comm	num_vars,4,4
	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"stencil: %d\n"
	.size	.L.str.40, 13

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"comm_vars: %d\n"
	.size	.L.str.41, 15

	.type	comm_vars,@object               # @comm_vars
	.comm	comm_vars,4,4
	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"error_tol: %d\n"
	.size	.L.str.42, 15

	.type	error_tol,@object               # @error_tol
	.comm	error_tol,4,4
	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"total_time: %lf\n"
	.size	.L.str.43, 17

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"memory_used: %lf\n"
	.size	.L.str.44, 18

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"compute_time: %lf\n"
	.size	.L.str.45, 19

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"total_gflops: %lf\n"
	.size	.L.str.46, 19

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"ave_gflops: %lf\n"
	.size	.L.str.47, 17

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"total_comm: %lf\n"
	.size	.L.str.48, 17

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"   total_exch_same: %lf\n"
	.size	.L.str.49, 25

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"   total_exch_diff: %lf\n"
	.size	.L.str.50, 25

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"   total_apply_bc: %lf\n"
	.size	.L.str.51, 24

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"   total_face_exch_same: %lf\n"
	.size	.L.str.52, 30

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"   total_face_exch_diff: %lf\n"
	.size	.L.str.53, 30

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"   total_face_bc_apply: %lf\n"
	.size	.L.str.54, 29

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"   x_comm: %lf\n"
	.size	.L.str.55, 16

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"      x_exch_same: %lf\n"
	.size	.L.str.56, 24

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"      x_exch_diff: %lf\n"
	.size	.L.str.57, 24

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"      x_apply_bc: %lf\n"
	.size	.L.str.58, 23

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"      x_face_exch_same: %lf\n"
	.size	.L.str.59, 29

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"      x_face_exch_diff: %lf\n"
	.size	.L.str.60, 29

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"      x_face_bc_apply: %lf\n"
	.size	.L.str.61, 28

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"   y_comm: %lf\n"
	.size	.L.str.62, 16

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"      y_exch_same: %lf\n"
	.size	.L.str.63, 24

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"      y_exch_diff: %lf\n"
	.size	.L.str.64, 24

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"      y_apply_bc: %lf\n"
	.size	.L.str.65, 23

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"      y_face_exch_same: %lf\n"
	.size	.L.str.66, 29

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"      y_face_exch_diff: %lf\n"
	.size	.L.str.67, 29

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"      y_face_bc_apply: %lf\n"
	.size	.L.str.68, 28

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"   z_comm: %lf\n"
	.size	.L.str.69, 16

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"      z_exch_same: %lf\n"
	.size	.L.str.70, 24

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"      z_exch_diff: %lf\n"
	.size	.L.str.71, 24

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"      z_apply_bc: %lf\n"
	.size	.L.str.72, 23

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"      z_face_exch_same: %lf\n"
	.size	.L.str.73, 29

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"      z_face_exch_diff: %lf\n"
	.size	.L.str.74, 29

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"      z_face_bc_apply: %lf\n"
	.size	.L.str.75, 28

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"gridsum_time: %lf\n"
	.size	.L.str.76, 19

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"   gridsum_calc: %lf\n"
	.size	.L.str.77, 22

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"refine_time: %lf\n"
	.size	.L.str.78, 18

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"   total_blocks_ts: %lf\n"
	.size	.L.str.79, 25

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"   total_blocks_ts_min: %d\n"
	.size	.L.str.80, 28

	.type	nb_min,@object                  # @nb_min
	.comm	nb_min,4,4
	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"   total_blocks_ts_max: %d\n"
	.size	.L.str.81, 28

	.type	nb_max,@object                  # @nb_max
	.comm	nb_max,4,4
	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"   blocks_split: %lf\n"
	.size	.L.str.82, 22

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"   blocks_reformed: %lf\n"
	.size	.L.str.83, 25

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"   time_compare_obj: %lf\n"
	.size	.L.str.84, 26

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"   time_mark_refine: %lf\n"
	.size	.L.str.85, 26

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"   time_split_block: %lf\n"
	.size	.L.str.86, 26

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"   time_total_coarsen: %lf\n"
	.size	.L.str.87, 28

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"   time_misc: %lf\n"
	.size	.L.str.88, 19

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"plot_time: %lf\n"
	.size	.L.str.89, 16

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"results.txt"
	.size	.L.str.90, 12

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"\n ================ Start report ===================\n\n"
	.size	.L.str.91, 54

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"          Mantevo miniAMR\n"
	.size	.L.str.92, 27

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"          version %s\n\n"
	.size	.L.str.93, 23

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"serial run on 1 rank\n"
	.size	.L.str.94, 22

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"initial blocks per rank %d x %d x %d\n"
	.size	.L.str.95, 38

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"block size %d x %d x %d\n"
	.size	.L.str.96, 25

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"Order of exchanges permuted\n"
	.size	.L.str.97, 29

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Maximum number of blocks per rank is %d\n"
	.size	.L.str.98, 41

	.type	target_active,@object           # @target_active
	.comm	target_active,4,4
	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Target number of blocks per rank is %d\n"
	.size	.L.str.99, 40

	.type	target_max,@object              # @target_max
	.comm	target_max,4,4
	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"Target max number of blocks per rank is %d\n"
	.size	.L.str.100, 44

	.type	target_min,@object              # @target_min
	.comm	target_min,4,4
	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Target min number of blocks per rank is %d\n"
	.size	.L.str.101, 44

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"Code set to code %d\n"
	.size	.L.str.102, 21

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"Number of levels of refinement is %d\n"
	.size	.L.str.103, 38

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"Blocks can change by %d levels per refinement step\n"
	.size	.L.str.104, 52

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"Ghost cells will be used determine is block is refined\n"
	.size	.L.str.105, 56

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"\nBlocks will be uniformly refined\n"
	.size	.L.str.106, 35

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"\nBlocks will be refined by %d objects\n\n"
	.size	.L.str.107, 40

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"Object %d is the surface of a rectangle\n"
	.size	.L.str.108, 41

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"Object %d is the volume of a rectangle\n"
	.size	.L.str.109, 40

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"Object %d is the surface of a spheroid\n"
	.size	.L.str.110, 40

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"Object %d is the volume of a spheroid\n"
	.size	.L.str.111, 39

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"Object %d is the surface of x+ hemispheroid\n"
	.size	.L.str.112, 45

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"Object %d is the volume of x+ hemispheroid\n"
	.size	.L.str.113, 44

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"Object %d is the surface of x- hemispheroid\n"
	.size	.L.str.114, 45

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"Object %d is the volume of x- hemispheroid\n"
	.size	.L.str.115, 44

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"Object %d is the surface of y+ hemispheroid\n"
	.size	.L.str.116, 45

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"Object %d is the volume of y+ hemispheroid\n"
	.size	.L.str.117, 44

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"Object %d is the surface of y- hemispheroid\n"
	.size	.L.str.118, 45

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"Object %d is the volume of y- hemispheroid\n"
	.size	.L.str.119, 44

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"Object %d is the surface of z+ hemispheroid\n"
	.size	.L.str.120, 45

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"Object %d is the volume of z+ hemispheroid\n"
	.size	.L.str.121, 44

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"Object %d is the surface of z- hemispheroid\n"
	.size	.L.str.122, 45

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"Object %d is the volume of z- hemispheroid\n"
	.size	.L.str.123, 44

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"Object %d is the surface of x axis cylinder\n"
	.size	.L.str.124, 45

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"Object %d is the volune of x axis cylinder\n"
	.size	.L.str.125, 44

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"Object %d is the surface of y axis cylinder\n"
	.size	.L.str.126, 45

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"Object %d is the volune of y axis cylinder\n"
	.size	.L.str.127, 44

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"Object %d is the surface of z axis cylinder\n"
	.size	.L.str.128, 45

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"Object %d is the volune of z axis cylinder\n"
	.size	.L.str.129, 44

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"Oject may leave mesh\n"
	.size	.L.str.130, 22

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"Oject center will bounce off of walls\n"
	.size	.L.str.131, 39

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"Center starting at %lf %lf %lf\n"
	.size	.L.str.132, 32

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"Center end at %lf %lf %lf\n"
	.size	.L.str.133, 27

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"Moving at %lf %lf %lf per timestep\n"
	.size	.L.str.134, 36

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"   Rate relative to smallest cell size %lf %lf %lf\n"
	.size	.L.str.135, 52

	.type	mesh_size,@object               # @mesh_size
	.comm	mesh_size,12,4
	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"Initial size %lf %lf %lf\n"
	.size	.L.str.136, 26

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"Final size %lf %lf %lf\n"
	.size	.L.str.137, 24

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"Size increasing %lf %lf %lf per timestep\n"
	.size	.L.str.138, 42

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"   Rate relative to smallest cell size %lf %lf %lf\n\n"
	.size	.L.str.139, 53

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"\nNumber of timesteps is %d\n"
	.size	.L.str.140, 28

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"Communicaion/computation stages per timestep is %d\n"
	.size	.L.str.141, 52

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"Will perform checksums every %d stages\n"
	.size	.L.str.142, 40

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"Will refine every %d timesteps\n"
	.size	.L.str.143, 32

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"Will plot results every %d timesteps\n"
	.size	.L.str.144, 38

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"Will not plot results\n"
	.size	.L.str.145, 23

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"Calculate on %d variables with %d point stencil\n"
	.size	.L.str.146, 49

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"Communicate %d variables at a time\n"
	.size	.L.str.147, 36

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"Error tolorance for variable sums is 10^(-%d)\n"
	.size	.L.str.148, 47

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"\nTotal time for test: (sec): %lf\n\n"
	.size	.L.str.149, 35

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"\nNumber of malloc calls: %lf\n"
	.size	.L.str.150, 30

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"\nAmount malloced: %lf\n"
	.size	.L.str.151, 23

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"---------------------------------------------\n"
	.size	.L.str.152, 47

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"          Computational Performance\n"
	.size	.L.str.153, 37

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"---------------------------------------------\n\n"
	.size	.L.str.154, 48

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"     Time: ave, stddev, min, max (sec): %lf\n\n"
	.size	.L.str.155, 46

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"     total GFLOPS:             %lf\n"
	.size	.L.str.156, 36

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"     Average GFLOPS per rank:  %lf\n\n"
	.size	.L.str.157, 37

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"     Total floating point ops: %lf\n\n"
	.size	.L.str.158, 37

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"        Adds:                  %lf\n"
	.size	.L.str.159, 36

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"        Divides:               %lf\n\n"
	.size	.L.str.160, 37

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"           Interblock communication\n"
	.size	.L.str.161, 37

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"\nTotal communication:\n\n"
	.size	.L.str.162, 24

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"\nX direction communication statistics:\n\n"
	.size	.L.str.163, 41

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"\nY direction communication statistics:\n\n"
	.size	.L.str.164, 41

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"\nZ direction communication statistics:\n\n"
	.size	.L.str.165, 41

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"                              average    stddev  minimum  maximum\n"
	.size	.L.str.166, 67

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"     Total time             : %lf\n"
	.size	.L.str.167, 35

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"     Exchange same level    : %lf\n"
	.size	.L.str.168, 35

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"     Exchange diff level    : %lf\n"
	.size	.L.str.169, 35

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"     Apply BC               : %lf\n"
	.size	.L.str.170, 35

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"     Faces exchanged same   : %lf\n"
	.size	.L.str.171, 35

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"     Faces exchanged diff   : %lf\n"
	.size	.L.str.172, 35

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"     Faces with BC applied  : %lf\n"
	.size	.L.str.173, 35

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"\n---------------------------------------------\n"
	.size	.L.str.174, 48

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"             Gridsum performance\n"
	.size	.L.str.175, 34

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"        calc: ave, stddev, min, max (sec): %lf\n\n"
	.size	.L.str.176, 49

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"     total number:             %d\n"
	.size	.L.str.177, 35

	.type	total_red,@object               # @total_red
	.comm	total_red,4,4
	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"     number per timestep:      %d\n\n"
	.size	.L.str.178, 36

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"               Mesh Refinement\n"
	.size	.L.str.179, 32

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"     Number of refinement steps: %d\n\n"
	.size	.L.str.180, 38

	.type	nrs,@object                     # @nrs
	.comm	nrs,4,4
	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"     Total blocks           : %ld\n"
	.size	.L.str.181, 35

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"     Blocks/timestep ave, min, max : %lf %d %d\n"
	.size	.L.str.182, 48

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"     Max blocks on a processor at any time: %d\n"
	.size	.L.str.183, 48

	.type	global_max_b,@object            # @global_max_b
	.comm	global_max_b,4,4
	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"     total blocks split     : %lf\n"
	.size	.L.str.184, 35

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"     total blocks reformed  : %lf\n\n"
	.size	.L.str.185, 36

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"     Time:\n"
	.size	.L.str.186, 12

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"        compare objects     : %lf\n"
	.size	.L.str.187, 35

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"        mark refine/coarsen : %lf\n"
	.size	.L.str.188, 35

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"        split blocks        : %lf\n"
	.size	.L.str.189, 35

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"        total coarsen blocks: %lf\n"
	.size	.L.str.190, 35

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"        misc time           : %lf\n"
	.size	.L.str.191, 35

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"        total target active : %lf\n"
	.size	.L.str.192, 35

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"          reduce blocks     : %lf\n"
	.size	.L.str.193, 35

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"            decide and comm : %lf\n"
	.size	.L.str.194, 35

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"            coarsen blocks  : %lf\n"
	.size	.L.str.195, 35

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"          add blocks        : %lf\n"
	.size	.L.str.196, 35

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"            split blocks    : %lf\n"
	.size	.L.str.197, 35

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"                   Plot\n"
	.size	.L.str.198, 25

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"     Number of plot steps: %d\n"
	.size	.L.str.199, 31

	.type	nps,@object                     # @nps
	.comm	nps,4,4
	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"\n ================== End report ===================\n"
	.size	.L.str.200, 53

	.type	timer_all,@object               # @timer_all
	.comm	timer_all,8,8
	.type	timer_comm_dir,@object          # @timer_comm_dir
	.comm	timer_comm_dir,24,8
	.type	timer_comm_same,@object         # @timer_comm_same
	.comm	timer_comm_same,24,8
	.type	timer_comm_diff,@object         # @timer_comm_diff
	.comm	timer_comm_diff,24,8
	.type	timer_comm_bc,@object           # @timer_comm_bc
	.comm	timer_comm_bc,24,8
	.type	timer_comm_all,@object          # @timer_comm_all
	.comm	timer_comm_all,8,8
	.type	timer_calc_all,@object          # @timer_calc_all
	.comm	timer_calc_all,8,8
	.type	timer_cs_all,@object            # @timer_cs_all
	.comm	timer_cs_all,8,8
	.type	timer_cs_calc,@object           # @timer_cs_calc
	.comm	timer_cs_calc,8,8
	.type	timer_refine_all,@object        # @timer_refine_all
	.comm	timer_refine_all,8,8
	.type	timer_refine_co,@object         # @timer_refine_co
	.comm	timer_refine_co,8,8
	.type	timer_refine_mr,@object         # @timer_refine_mr
	.comm	timer_refine_mr,8,8
	.type	timer_refine_cc,@object         # @timer_refine_cc
	.comm	timer_refine_cc,8,8
	.type	timer_refine_sb,@object         # @timer_refine_sb
	.comm	timer_refine_sb,8,8
	.type	timer_cb_all,@object            # @timer_cb_all
	.comm	timer_cb_all,8,8
	.type	timer_target_all,@object        # @timer_target_all
	.comm	timer_target_all,8,8
	.type	timer_target_rb,@object         # @timer_target_rb
	.comm	timer_target_rb,8,8
	.type	timer_target_dc,@object         # @timer_target_dc
	.comm	timer_target_dc,8,8
	.type	timer_target_cb,@object         # @timer_target_cb
	.comm	timer_target_cb,8,8
	.type	timer_target_ab,@object         # @timer_target_ab
	.comm	timer_target_ab,8,8
	.type	timer_target_da,@object         # @timer_target_da
	.comm	timer_target_da,8,8
	.type	timer_target_sb,@object         # @timer_target_sb
	.comm	timer_target_sb,8,8
	.type	timer_plot,@object              # @timer_plot
	.comm	timer_plot,8,8
	.type	counter_bc,@object              # @counter_bc
	.comm	counter_bc,12,4
	.type	counter_same,@object            # @counter_same
	.comm	counter_same,12,4
	.type	counter_diff,@object            # @counter_diff
	.comm	counter_diff,12,4
	.type	num_refined,@object             # @num_refined
	.comm	num_refined,4,4
	.type	num_reformed,@object            # @num_reformed
	.comm	num_reformed,4,4
	.type	counter_malloc,@object          # @counter_malloc
	.comm	counter_malloc,4,4
	.type	size_malloc,@object             # @size_malloc
	.comm	size_malloc,8,8
	.type	counter_malloc_init,@object     # @counter_malloc_init
	.comm	counter_malloc_init,4,4
	.type	size_malloc_init,@object        # @size_malloc_init
	.comm	size_malloc_init,8,8
	.type	blocks,@object                  # @blocks
	.comm	blocks,8,8
	.type	parents,@object                 # @parents
	.comm	parents,8,8
	.type	sorted_list,@object             # @sorted_list
	.comm	sorted_list,8,8
	.type	sorted_index,@object            # @sorted_index
	.comm	sorted_index,8,8
	.type	reorder,@object                 # @reorder
	.comm	reorder,4,4
	.type	npx,@object                     # @npx
	.comm	npx,4,4
	.type	npy,@object                     # @npy
	.comm	npy,4,4
	.type	npz,@object                     # @npz
	.comm	npz,4,4
	.type	inbalance,@object               # @inbalance
	.comm	inbalance,4,4
	.type	report_diffusion,@object        # @report_diffusion
	.comm	report_diffusion,4,4
	.type	lb_opt,@object                  # @lb_opt
	.comm	lb_opt,4,4
	.type	nonblocking,@object             # @nonblocking
	.comm	nonblocking,4,4
	.type	max_num_parents,@object         # @max_num_parents
	.comm	max_num_parents,4,4
	.type	num_parents,@object             # @num_parents
	.comm	num_parents,4,4
	.type	max_active_parent,@object       # @max_active_parent
	.comm	max_active_parent,4,4
	.type	cur_max_level,@object           # @cur_max_level
	.comm	cur_max_level,4,4
	.type	num_blocks,@object              # @num_blocks
	.comm	num_blocks,8,8
	.type	block_start,@object             # @block_start
	.comm	block_start,8,8
	.type	num_active,@object              # @num_active
	.comm	num_active,4,4
	.type	max_active_block,@object        # @max_active_block
	.comm	max_active_block,4,4
	.type	global_active,@object           # @global_active
	.comm	global_active,4,4
	.type	x_block_half,@object            # @x_block_half
	.comm	x_block_half,4,4
	.type	y_block_half,@object            # @y_block_half
	.comm	y_block_half,4,4
	.type	z_block_half,@object            # @z_block_half
	.comm	z_block_half,4,4
	.type	tol,@object                     # @tol
	.comm	tol,8,8
	.type	grid_sum,@object                # @grid_sum
	.comm	grid_sum,8,8
	.type	p8,@object                      # @p8
	.comm	p8,8,8
	.type	p2,@object                      # @p2
	.comm	p2,8,8
	.type	max_mesh_size,@object           # @max_mesh_size
	.comm	max_mesh_size,4,4
	.type	from,@object                    # @from
	.comm	from,8,8
	.type	to,@object                      # @to
	.comm	to,8,8
	.type	msg_len,@object                 # @msg_len
	.comm	msg_len,48,4
	.type	local_max_b,@object             # @local_max_b
	.comm	local_max_b,4,4
	.type	stddev,@object                  # @stddev
	.comm	stddev,1024,8
	.type	minimum,@object                 # @minimum
	.comm	minimum,1024,8
	.type	maximum,@object                 # @maximum
	.comm	maximum,1024,8
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\n ================ Start report ===================\n"
	.size	.Lstr, 53

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"          Mantevo miniAMR"
	.size	.Lstr.1, 26

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"serial run on 1 rank"
	.size	.Lstr.2, 21

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Order of exchanges permuted"
	.size	.Lstr.3, 28

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Ghost cells will be used determine is block is refined"
	.size	.Lstr.4, 55

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"Oject center will bounce off of walls"
	.size	.Lstr.5, 38

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"Oject may leave mesh"
	.size	.Lstr.6, 21

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"\nBlocks will be uniformly refined"
	.size	.Lstr.7, 34

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"Will not plot results"
	.size	.Lstr.8, 22

	.type	.Lswitch.table.profile.9,@object # @switch.table.profile.9
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.profile.9:
	.dword	.L.str.108
	.dword	.L.str.109
	.dword	.L.str.110
	.dword	.L.str.111
	.dword	.L.str.112
	.dword	.L.str.113
	.dword	.L.str.114
	.dword	.L.str.115
	.dword	.L.str.116
	.dword	.L.str.117
	.dword	.L.str.118
	.dword	.L.str.119
	.dword	.L.str.120
	.dword	.L.str.121
	.dword	.L.str.122
	.dword	.L.str.123
	.space	8
	.space	8
	.space	8
	.space	8
	.dword	.L.str.124
	.dword	.L.str.125
	.dword	.L.str.126
	.dword	.L.str.127
	.dword	.L.str.128
	.dword	.L.str.129
	.size	.Lswitch.table.profile.9, 208

	.section	".note.GNU-stack","",@progbits
	.addrsig
