	.file	"rna.c"
	.text
	.globl	rnaalifoldcall                  # -- Begin function rnaalifoldcall
	.p2align	5
	.type	rnaalifoldcall,@function
rnaalifoldcall:                         # @rnaalifoldcall
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
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(rnaalifoldcall.order)
	ld.d	$a1, $s4, %pc_lo12(rnaalifoldcall.order)
	move	$s1, $a0
	pcalau12i	$s5, %pc_hi20(rnaalifoldcall.name)
	bnez	$a1, .LBB0_4
# %bb.1:
	pcaddu18i	$ra, %call36(getpid)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(rnaalifoldcall.fnamein)
	addi.d	$a0, $a0, %pc_lo12(rnaalifoldcall.fnamein)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s6, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s6, 0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, 0
	st.d	$a0, $s4, %pc_lo12(rnaalifoldcall.order)
	ori	$a1, $zero, 10
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	st.d	$a0, $s5, %pc_lo12(rnaalifoldcall.name)
	blez	$a1, .LBB0_4
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	move	$s7, $zero
	move	$s8, $zero
	move	$s3, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, %pc_lo12(rnaalifoldcall.name)
	ld.d	$a1, $s4, %pc_lo12(rnaalifoldcall.order)
	ldx.d	$a0, $a0, $s8
	stx.w	$s3, $a1, $s7
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$s0, $s0, 1
	addi.w	$s3, $s3, 1
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 4
	blt	$s0, $a0, .LBB0_3
.LBB0_4:                                # %.loopexit
	pcalau12i	$a0, %pc_hi20(rnaalifoldcall.fnamein)
	addi.d	$a0, $a0, %pc_lo12(rnaalifoldcall.fnamein)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_6
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_6:
	ld.d	$a4, $s5, %pc_lo12(rnaalifoldcall.name)
	ld.d	$a7, $s4, %pc_lo12(rnaalifoldcall.order)
	addi.w	$a2, $s1, 0
	move	$s1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $fp
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(clustalout_pointer)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rnaalifoldcall.cmd)
	addi.d	$a0, $a0, %pc_lo12(rnaalifoldcall.cmd)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(rnaalifoldcall.fnamein)
	addi.d	$a2, $a2, %pc_lo12(rnaalifoldcall.fnamein)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	rnaalifoldcall, .Lfunc_end0-rnaalifoldcall
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function foldrna
.LCPI1_0:
	.word	0x44160000                      # float 600
	.text
	.globl	foldrna
	.p2align	5
	.type	foldrna,@function
foldrna:                                # @foldrna
# %bb.0:
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	move	$s2, $a2
	ld.d	$a2, $sp, 416
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $s2, 0
	st.d	$a7, $sp, 312                   # 8-byte Folded Spill
	st.d	$a6, $sp, 320                   # 8-byte Folded Spill
	move	$s6, $a5
	move	$s0, $a4
	move	$fp, $a3
	move	$s7, $a1
	move	$s8, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s5, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$s1, $s5, 10
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.useq1)
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.useq1)
	addi.w	$s3, $s4, 10
	move	$a0, $s7
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.useq2)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.useq2)
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.oseq1)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.oseq1)
	move	$a0, $s7
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.oseq2)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.oseq2)
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.oseq1r)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.oseq1r)
	move	$a0, $s7
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.oseq2r)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.oseq2r)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.odir1)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.odir1)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.odir2)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.odir2)
	addi.w	$a1, $s5, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	addi.w	$a1, $s4, 1
	st.d	$s7, $sp, 296                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 152                   # 8-byte Folded Spill
	addi.w	$s3, $s5, 0
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	addi.w	$s1, $s4, 0
	slt	$a0, $s1, $s3
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.pairprob1)
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.pairprob1)
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.pairprob2)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.pairprob2)
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.map)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.map)
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.impmtx2)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.impmtx2)
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	move	$a0, $s3
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	blez	$s8, .LBB1_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(foldrna.useq1)
	move	$s3, $s8
	move	$s4, $s2
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB1_2
.LBB1_3:                                # %.preheader334
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blez	$a0, .LBB1_6
# %bb.4:                                # %.lr.ph337
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(foldrna.useq2)
	ld.d	$s3, $sp, 296                   # 8-byte Folded Reload
	move	$s4, $fp
	.p2align	4, , 16
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB1_5
.LBB1_6:                                # %.preheader333
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	blez	$s8, .LBB1_9
# %bb.7:                                # %.lr.ph339
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(foldrna.oseq1)
	move	$s3, $s8
	.p2align	4, , 16
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB1_8
.LBB1_9:                                # %.preheader332
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blez	$a0, .LBB1_12
# %bb.10:                               # %.lr.ph341
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(foldrna.oseq2)
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB1_11
.LBB1_12:                               # %.preheader331
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	blez	$s8, .LBB1_15
# %bb.13:                               # %.lr.ph343.preheader
	move	$fp, $zero
	slli.d	$s1, $s8, 3
	.p2align	4, , 16
.LBB1_14:                               # %.lr.ph343
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, %pc_lo12(foldrna.useq1)
	ldx.d	$a2, $s4, $fp
	add.d	$a1, $a0, $fp
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(commongappick_record)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	bne	$s1, $fp, .LBB1_14
.LBB1_15:                               # %.preheader330
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blez	$a0, .LBB1_18
# %bb.16:                               # %.lr.ph345.preheader
	move	$fp, $zero
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	slli.d	$s1, $a0, 3
	.p2align	4, , 16
.LBB1_17:                               # %.lr.ph345
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, %pc_lo12(foldrna.useq2)
	ldx.d	$a2, $s5, $fp
	add.d	$a1, $a0, $fp
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(commongappick_record)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	bne	$s1, $fp, .LBB1_17
.LBB1_18:                               # %.preheader329
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	blez	$a0, .LBB1_21
# %bb.19:                               # %.lr.ph347
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$s1, $a0, 30, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	lu52i.d	$s2, $a0, -1032
	.p2align	4, , 16
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.d	$s2, $a0, 16
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB1_20
.LBB1_21:                               # %.preheader328
	blez	$s3, .LBB1_24
# %bb.22:                               # %.lr.ph349
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(foldrna.pairprob2)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$s1, $a0, 30, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	lu52i.d	$s2, $a0, -1032
	.p2align	4, , 16
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.d	$s2, $a0, 16
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB1_23
.LBB1_24:                               # %._crit_edge
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq1)
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
	blez	$s8, .LBB1_36
# %bb.25:                               # %._crit_edge
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	blez	$a1, .LBB1_36
# %bb.26:                               # %.preheader.us.preheader.i
	move	$a1, $zero
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 0
	ori	$a3, $zero, 20
	ori	$a4, $zero, 45
	ori	$a5, $zero, 1
	lu12i.w	$a6, 384
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_27:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB1_28 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB1_36
.LBB1_28:                               # %.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
	move	$a7, $a0
	move	$t0, $s8
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_29:                               #   in Loop: Header=BB1_31 Depth=2
	ori	$t2, $zero, 116
.LBB1_30:                               #   in Loop: Header=BB1_31 Depth=2
	stx.b	$t2, $t1, $a1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	beqz	$t0, .LBB1_27
.LBB1_31:                               #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	ldx.bu	$t2, $t1, $a1
	addi.d	$t3, $t2, -97
	bltu	$a3, $t3, .LBB1_34
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=2
	sll.d	$t3, $a5, $t3
	andi	$t4, $t3, 69
	bnez	$t4, .LBB1_30
# %bb.33:                               #   in Loop: Header=BB1_31 Depth=2
	and	$t3, $t3, $a6
	bnez	$t3, .LBB1_29
.LBB1_34:                               #   in Loop: Header=BB1_31 Depth=2
	beq	$t2, $a4, .LBB1_30
# %bb.35:                               #   in Loop: Header=BB1_31 Depth=2
	ori	$t2, $zero, 110
	b	.LBB1_30
.LBB1_36:                               # %utot.exit
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	blez	$a1, .LBB1_48
# %bb.37:                               # %utot.exit
	blez	$s3, .LBB1_48
# %bb.38:                               # %.preheader.us.preheader.i260
	move	$a1, $zero
	ld.d	$a2, $t5, %pc_lo12(foldrna.oseq2)
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 0
	ori	$a4, $zero, 20
	ori	$a5, $zero, 45
	ori	$a6, $zero, 1
	lu12i.w	$a7, 384
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_39:                               # %._crit_edge.us.i269
                                        #   in Loop: Header=BB1_40 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a3, .LBB1_48
.LBB1_40:                               # %.preheader.us.i263
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_43 Depth 2
	move	$t0, $a2
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_41:                               #   in Loop: Header=BB1_43 Depth=2
	ori	$t3, $zero, 116
.LBB1_42:                               #   in Loop: Header=BB1_43 Depth=2
	stx.b	$t3, $t2, $a1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	beqz	$t1, .LBB1_39
.LBB1_43:                               #   Parent Loop BB1_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t0, 0
	ldx.bu	$t3, $t2, $a1
	addi.d	$t4, $t3, -97
	bltu	$a4, $t4, .LBB1_46
# %bb.44:                               #   in Loop: Header=BB1_43 Depth=2
	sll.d	$t4, $a6, $t4
	andi	$t5, $t4, 69
	bnez	$t5, .LBB1_42
# %bb.45:                               #   in Loop: Header=BB1_43 Depth=2
	and	$t4, $t4, $a7
	bnez	$t4, .LBB1_41
.LBB1_46:                               #   in Loop: Header=BB1_43 Depth=2
	beq	$t3, $a5, .LBB1_42
# %bb.47:                               #   in Loop: Header=BB1_43 Depth=2
	ori	$t3, $zero, 110
	b	.LBB1_42
.LBB1_48:                               # %utot.exit272
	pcalau12i	$a1, %got_pc_hi20(rnaprediction)
	ld.d	$fp, $a1, %got_pc_lo12(rnaprediction)
	ld.bu	$a1, $fp, 0
	ori	$s1, $zero, 114
	beq	$a1, $s1, .LBB1_220
# %bb.49:
	ld.d	$a1, $s2, %pc_lo12(foldrna.useq1)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $a0, 0
	move	$a2, $s8
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s0
	pcaddu18i	$ra, %call36(mccaskillextract)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(foldrna.oseq2)
	beq	$a1, $s1, .LBB1_221
# %bb.50:
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(foldrna.useq2)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(foldrna.pairprob2)
	ld.d	$a0, $a0, 0
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	move	$a2, $s1
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s6
	pcaddu18i	$ra, %call36(mccaskillextract)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq1)
	ld.d	$a1, $fp, %pc_lo12(foldrna.oseq2)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(foldrna.map)
	st.d	$a2, $sp, 24
	st.d	$zero, $sp, 16
	vrepli.b	$vr0, 0
	lu12i.w	$a2, 2
	ori	$a6, $a2, 1808
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 0
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s8
	move	$a5, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Lalignmm_hmout)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(RNAscoremtx)
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 110
	pcalau12i	$a2, %pc_hi20(foldrna.pairpt2)
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB1_69
# %bb.51:
	ori	$a1, $zero, 114
	vld	$vr8, $sp, 64                   # 16-byte Folded Reload
	bne	$a0, $a1, .LBB1_164
# %bb.52:                               # %.preheader327
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	blez	$a0, .LBB1_213
# %bb.53:                               # %.preheader326.lr.ph
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 30, 0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$t8, $a0, 30, 4
	andi	$t7, $a0, 12
	bstrpick.d	$fp, $a0, 30, 2
	xvrepli.b	$xr0, 0
	blez	$s3, .LBB1_73
# %bb.54:                               # %.preheader326.us.preheader
	move	$a2, $zero
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(foldrna.impmtx2)
	slli.d	$a4, $t8, 4
	slli.d	$a5, $fp, 2
	sub.d	$a6, $zero, $a5
	ori	$a7, $zero, 4
	lu12i.w	$t0, 260096
	ori	$t1, $zero, 64
	ori	$t2, $zero, 16
	vldi	$vr1, -1424
	xvldi	$xr2, -1424
	b	.LBB1_56
	.p2align	4, , 16
.LBB1_55:                               # %._crit_edge352.us
                                        #   in Loop: Header=BB1_56 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB1_73
.LBB1_56:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_65 Depth 2
                                        #     Child Loop BB1_68 Depth 2
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$t3, $a1, $a0
	ldx.d	$t4, $a3, $a0
	move	$t5, $zero
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bltu	$a0, $a7, .LBB1_67
# %bb.57:                               # %iter.check
                                        #   in Loop: Header=BB1_56 Depth=1
	sub.d	$a0, $t4, $t3
	bltu	$a0, $t1, .LBB1_67
# %bb.58:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_56 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bgeu	$a0, $t2, .LBB1_60
# %bb.59:                               #   in Loop: Header=BB1_56 Depth=1
	move	$t6, $zero
	b	.LBB1_64
	.p2align	4, , 16
.LBB1_60:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_56 Depth=1
	addi.d	$a0, $t4, 32
	addi.d	$a1, $t3, 32
	move	$t5, $a4
	.p2align	4, , 16
.LBB1_61:                               # %vector.body
                                        #   Parent Loop BB1_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr2, $a1, -32
	xvst	$xr2, $a1, 0
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$t5, $t5, -16
	addi.d	$a0, $a0, 64
	addi.d	$a1, $a1, 64
	bnez	$t5, .LBB1_61
# %bb.62:                               # %middle.block
                                        #   in Loop: Header=BB1_56 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$a0, $a4, .LBB1_55
# %bb.63:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_56 Depth=1
	move	$t6, $a4
	move	$t5, $a4
	beqz	$t7, .LBB1_67
.LBB1_64:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_56 Depth=1
	add.d	$a0, $a6, $t6
	alsl.d	$a1, $t6, $t4, 2
	alsl.d	$t5, $t6, $t3, 2
	.p2align	4, , 16
.LBB1_65:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t5, 0
	vst	$vr8, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 16
	addi.d	$t5, $t5, 16
	bnez	$a0, .LBB1_65
# %bb.66:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_56 Depth=1
	move	$t5, $a5
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$a0, $a5, .LBB1_55
.LBB1_67:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB1_56 Depth=1
	alsl.d	$a0, $t5, $t3, 2
	alsl.d	$a1, $t5, $t4, 2
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	sub.d	$t3, $t3, $t5
	.p2align	4, , 16
.LBB1_68:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB1_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t0, $a0, 0
	st.w	$zero, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$t3, $t3, -1
	addi.d	$a1, $a1, 4
	bnez	$t3, .LBB1_68
	b	.LBB1_55
.LBB1_69:                               # %.preheader320
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	blez	$a0, .LBB1_213
# %bb.70:                               # %.preheader319.lr.ph
	blez	$s3, .LBB1_165
# %bb.71:                               # %.preheader319.us.preheader
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(foldrna.impmtx2)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 32, 2
	slli.d	$fp, $a0, 2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$s1, $a0, 30, 0
	.p2align	4, , 16
.LBB1_72:                               # %.preheader319.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB1_72
	b	.LBB1_165
.LBB1_73:                               # %.lr.ph397
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t7, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.pairprob2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(foldrna.oseq1)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(foldrna.oseq2)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.impmtx2)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bstrpick.d	$t0, $a0, 31, 0
	addi.w	$t5, $zero, -1
	movgr2fr.w	$fa1, $zero
	pcalau12i	$a0, %got_pc_hi20(amino_n)
	ld.d	$a3, $a0, %got_pc_lo12(amino_n)
	ori	$t6, $zero, 3
	ori	$t7, $zero, 36
	ori	$t8, $zero, 148
	pcalau12i	$a0, %got_pc_hi20(ribosumdis)
	ld.d	$a4, $a0, %got_pc_lo12(ribosumdis)
	move	$fp, $zero
	ori	$ra, $zero, 104
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	b	.LBB1_76
	.p2align	4, , 16
.LBB1_74:                               # %._crit_edge366.split.us
                                        #   in Loop: Header=BB1_76 Depth=1
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	st.d	$a2, $a5, %pc_lo12(foldrna.pairpt2)
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
.LBB1_75:                               # %._crit_edge366
                                        #   in Loop: Header=BB1_76 Depth=1
	addi.d	$fp, $fp, 1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	beq	$fp, $a2, .LBB1_123
.LBB1_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_121 Depth 2
                                        #     Child Loop BB1_80 Depth 2
                                        #       Child Loop BB1_82 Depth 3
                                        #         Child Loop BB1_86 Depth 4
                                        #           Child Loop BB1_110 Depth 5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
                                        #           Child Loop BB1_93 Depth 5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	slli.d	$a0, $fp, 3
	ldx.d	$a7, $a5, $a0
	ld.w	$a6, $a7, 16
	beq	$a6, $t5, .LBB1_122
# %bb.77:                               # %.preheader324.lr.ph
                                        #   in Loop: Header=BB1_76 Depth=1
	blez	$s3, .LBB1_121
# %bb.78:                               # %.preheader324.us.preheader
                                        #   in Loop: Header=BB1_76 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	b	.LBB1_80
	.p2align	4, , 16
.LBB1_79:                               # %._crit_edge363.us
                                        #   in Loop: Header=BB1_80 Depth=2
	ld.w	$a6, $a7, 40
	addi.d	$a0, $a7, 24
	move	$a7, $a0
	beq	$a6, $t5, .LBB1_74
.LBB1_80:                               # %.preheader324.us
                                        #   Parent Loop BB1_76 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_82 Depth 3
                                        #         Child Loop BB1_86 Depth 4
                                        #           Child Loop BB1_110 Depth 5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
                                        #           Child Loop BB1_93 Depth 5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	move	$s2, $zero
	st.d	$a7, $sp, 320                   # 8-byte Folded Spill
	b	.LBB1_82
	.p2align	4, , 16
.LBB1_81:                               # %._crit_edge360.us
                                        #   in Loop: Header=BB1_82 Depth=3
	addi.d	$s2, $s2, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB1_79
.LBB1_82:                               #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_86 Depth 4
                                        #           Child Loop BB1_110 Depth 5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
                                        #           Child Loop BB1_93 Depth 5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	slli.d	$a0, $s2, 3
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ldx.d	$s3, $a2, $a0
	ld.w	$s5, $s3, 16
	bne	$s5, $t5, .LBB1_86
# %bb.83:                               #   in Loop: Header=BB1_82 Depth=3
	move	$a2, $s3
	b	.LBB1_81
	.p2align	4, , 16
.LBB1_84:                               # %.sink.split
                                        #   in Loop: Header=BB1_86 Depth=4
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa3, $fa2, $fa4
	pcalau12i	$a0, %got_pc_hi20(consweight_multi)
	ld.d	$a0, $a0, %got_pc_lo12(consweight_multi)
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	fld.s	$fa4, $a0, 0
	slli.d	$a0, $s2, 2
	fldx.s	$fa5, $a2, $a0
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	fmadd.s	$fa3, $fa3, $fa4, $fa5
	fstx.s	$fa3, $a2, $a0
	fldx.s	$fa3, $a5, $a0
	fsub.s	$fa2, $fa3, $fa2
	fstx.s	$fa2, $a5, $a0
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
.LBB1_85:                               #   in Loop: Header=BB1_86 Depth=4
	ld.w	$s5, $s3, 40
	addi.d	$a2, $s3, 24
	move	$s3, $a2
	beq	$s5, $t5, .LBB1_81
.LBB1_86:                               # %.lr.ph359.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_110 Depth 5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
                                        #           Child Loop BB1_93 Depth 5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	or	$a0, $s5, $a6
	bltz	$a0, .LBB1_85
# %bb.87:                               #   in Loop: Header=BB1_86 Depth=4
	fld.s	$fa2, $a7, 20
	fld.s	$fa3, $s3, 20
	bge	$fp, $a6, .LBB1_104
# %bb.88:                               #   in Loop: Header=BB1_86 Depth=4
	bge	$s5, $s2, .LBB1_104
# %bb.89:                               #   in Loop: Header=BB1_86 Depth=4
	fmov.s	$fa4, $fa1
	blez	$s8, .LBB1_84
# %bb.90:                               # %.preheader.lr.ph.i.us
                                        #   in Loop: Header=BB1_86 Depth=4
	fmov.s	$fa4, $fa1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blez	$a0, .LBB1_84
# %bb.91:                               # %.preheader.us.i275.us.preheader
                                        #   in Loop: Header=BB1_86 Depth=4
	move	$s4, $zero
	fmov.s	$fa4, $fa1
	b	.LBB1_93
	.p2align	4, , 16
.LBB1_92:                               # %._crit_edge.us.i280.us
                                        #   in Loop: Header=BB1_93 Depth=5
	addi.d	$s4, $s4, 1
	beq	$s4, $s8, .LBB1_84
.LBB1_93:                               # %.preheader.us.i275.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $t1, $a0
	ldx.b	$a2, $a0, $fp
	ldx.b	$a0, $a0, $a6
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	slt	$a5, $t6, $a2
	slt	$t2, $t6, $a0
	alsl.d	$a0, $a2, $a0, 2
	addi.w	$a0, $a0, 4
	alsl.d	$a7, $s4, $s0, 3
	masknez	$a0, $a0, $t2
	maskeqz	$t2, $t7, $t2
	or	$a0, $t2, $a0
	masknez	$a0, $a0, $a5
	maskeqz	$t2, $t7, $a5
	or	$a0, $t2, $a0
	masknez	$a2, $a2, $a5
	or	$s1, $t2, $a2
	bne	$a0, $t7, .LBB1_96
# %bb.94:                               # %.preheader.us.i275.split.us.us.preheader
                                        #   in Loop: Header=BB1_93 Depth=5
	fld.d	$fa5, $a7, 0
	move	$a0, $a1
	move	$a7, $s6
	move	$t2, $t0
	.p2align	4, , 16
.LBB1_95:                               # %.preheader.us.i275.split.us.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        #           Parent Loop BB1_93 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a2, $a0, 0
	ldx.b	$a2, $a2, $s2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	slt	$a5, $t6, $a2
	masknez	$t3, $s1, $a5
	maskeqz	$a5, $t7, $a5
	or	$a5, $a5, $t3
	mul.d	$a5, $a5, $ra
	pcalau12i	$t3, %got_pc_hi20(n_dis)
	ld.d	$t3, $t3, %got_pc_lo12(n_dis)
	add.d	$a5, $t3, $a5
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a5, $a2
	movgr2fr.w	$fa6, $a2
	ffint.s.w	$fa6, $fa6
	fld.d	$fa7, $a7, 0
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa6, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa6, $fa7, $fa4
	fcvt.s.d	$fa4, $fa4
	addi.d	$t2, $t2, -1
	addi.d	$a7, $a7, 8
	addi.d	$a0, $a0, 8
	bnez	$t2, .LBB1_95
	b	.LBB1_92
	.p2align	4, , 16
.LBB1_96:                               #   in Loop: Header=BB1_93 Depth=5
	mul.d	$a0, $a0, $t8
	add.d	$a0, $a4, $a0
	move	$t2, $a1
	move	$s7, $s6
	move	$t4, $t0
	b	.LBB1_100
	.p2align	4, , 16
.LBB1_97:                               # %..thread.us_crit_edge.i.us383
                                        #   in Loop: Header=BB1_100 Depth=6
	fld.d	$fa5, $a7, 0
	ori	$t3, $zero, 36
.LBB1_98:                               # %.thread.us.i.us385
                                        #   in Loop: Header=BB1_100 Depth=6
	mul.d	$a5, $t3, $ra
	pcalau12i	$t3, %got_pc_hi20(n_dis)
	ld.d	$t3, $t3, %got_pc_lo12(n_dis)
	add.d	$t3, $t3, $a5
.LBB1_99:                               #   in Loop: Header=BB1_100 Depth=6
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $t3, $a2
	movgr2fr.w	$fa6, $a2
	ffint.s.w	$fa6, $fa6
	fld.d	$fa7, $s7, 0
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	fcvt.s.d	$fa4, $fa4
	addi.d	$t4, $t4, -1
	addi.d	$s7, $s7, 8
	addi.d	$t2, $t2, 8
	beqz	$t4, .LBB1_92
.LBB1_100:                              # %.preheader.us.i275.split.us393
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        #           Parent Loop BB1_93 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t3, $t2, 0
	ldx.b	$a2, $t3, $s2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	blt	$t6, $a2, .LBB1_97
# %bb.101:                              #   in Loop: Header=BB1_100 Depth=6
	ldx.b	$a5, $t3, $s5
	slli.d	$a5, $a5, 2
	ldx.w	$t3, $a3, $a5
	fld.d	$fa5, $a7, 0
	bge	$t6, $t3, .LBB1_103
# %bb.102:                              #   in Loop: Header=BB1_100 Depth=6
	move	$t3, $s1
	b	.LBB1_98
	.p2align	4, , 16
.LBB1_103:                              #   in Loop: Header=BB1_100 Depth=6
	alsl.d	$a2, $a2, $t3, 2
	addi.w	$a2, $a2, 4
	move	$t3, $a0
	b	.LBB1_99
	.p2align	4, , 16
.LBB1_104:                              #   in Loop: Header=BB1_86 Depth=4
	bge	$fp, $a6, .LBB1_85
# %bb.105:                              #   in Loop: Header=BB1_86 Depth=4
	bge	$s2, $s5, .LBB1_85
# %bb.106:                              #   in Loop: Header=BB1_86 Depth=4
	fmov.s	$fa4, $fa1
	blez	$s8, .LBB1_84
# %bb.107:                              # %.preheader.lr.ph.i282.us
                                        #   in Loop: Header=BB1_86 Depth=4
	fmov.s	$fa4, $fa1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blez	$a0, .LBB1_84
# %bb.108:                              # %.preheader.us.i286.us.preheader
                                        #   in Loop: Header=BB1_86 Depth=4
	move	$s4, $zero
	fmov.s	$fa4, $fa1
	b	.LBB1_110
	.p2align	4, , 16
.LBB1_109:                              # %._crit_edge.us.i301.us
                                        #   in Loop: Header=BB1_110 Depth=5
	addi.d	$s4, $s4, 1
	beq	$s4, $s8, .LBB1_84
.LBB1_110:                              # %.preheader.us.i286.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $t1, $a0
	ldx.b	$a2, $a0, $fp
	ldx.b	$a0, $a0, $a6
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	slt	$t2, $t6, $a2
	slt	$t3, $t6, $a0
	alsl.d	$a0, $a0, $a2, 2
	addi.w	$a0, $a0, 4
	alsl.d	$a7, $s4, $s0, 3
	masknez	$a0, $a0, $t3
	maskeqz	$t3, $t7, $t3
	or	$a0, $t3, $a0
	masknez	$a0, $a0, $t2
	maskeqz	$t3, $t7, $t2
	or	$a0, $t3, $a0
	masknez	$a2, $a2, $t2
	or	$s1, $t3, $a2
	bne	$a0, $t7, .LBB1_113
# %bb.111:                              # %.preheader.us.i286.split.us.us.preheader
                                        #   in Loop: Header=BB1_110 Depth=5
	fld.d	$fa5, $a7, 0
	move	$a0, $a1
	move	$a7, $s6
	move	$t2, $t0
	.p2align	4, , 16
.LBB1_112:                              # %.preheader.us.i286.split.us.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        #           Parent Loop BB1_110 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a2, $a0, 0
	ldx.b	$a2, $a2, $s2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	slt	$a5, $t6, $a2
	masknez	$t3, $s1, $a5
	maskeqz	$a5, $t7, $a5
	or	$a5, $a5, $t3
	mul.d	$a5, $a5, $ra
	pcalau12i	$t3, %got_pc_hi20(n_dis)
	ld.d	$t3, $t3, %got_pc_lo12(n_dis)
	add.d	$a5, $t3, $a5
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a5, $a2
	movgr2fr.w	$fa6, $a2
	ffint.s.w	$fa6, $fa6
	fld.d	$fa7, $a7, 0
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa6, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa6, $fa7, $fa4
	fcvt.s.d	$fa4, $fa4
	addi.d	$t2, $t2, -1
	addi.d	$a7, $a7, 8
	addi.d	$a0, $a0, 8
	bnez	$t2, .LBB1_112
	b	.LBB1_109
	.p2align	4, , 16
.LBB1_113:                              #   in Loop: Header=BB1_110 Depth=5
	mul.d	$a0, $a0, $t8
	add.d	$t3, $a4, $a0
	move	$t2, $a1
	move	$s7, $s6
	move	$t4, $t0
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_114:                              # %..thread.us_crit_edge.i306.us371
                                        #   in Loop: Header=BB1_117 Depth=6
	fld.d	$fa5, $a7, 0
	ori	$a0, $zero, 36
.LBB1_115:                              # %.thread.us.i304.us373
                                        #   in Loop: Header=BB1_117 Depth=6
	mul.d	$a0, $a0, $ra
	pcalau12i	$a5, %got_pc_hi20(n_dis)
	ld.d	$a5, $a5, %got_pc_lo12(n_dis)
	add.d	$a0, $a5, $a0
.LBB1_116:                              #   in Loop: Header=BB1_117 Depth=6
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	movgr2fr.w	$fa6, $a0
	ffint.s.w	$fa6, $fa6
	fld.d	$fa7, $s7, 0
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	fcvt.s.d	$fa4, $fa4
	addi.d	$t4, $t4, -1
	addi.d	$s7, $s7, 8
	addi.d	$t2, $t2, 8
	beqz	$t4, .LBB1_109
.LBB1_117:                              # %.preheader.us.i286.split.us392
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        #           Parent Loop BB1_110 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a0, $t2, 0
	ldx.b	$a2, $a0, $s2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	blt	$t6, $a2, .LBB1_114
# %bb.118:                              #   in Loop: Header=BB1_117 Depth=6
	ldx.b	$a0, $a0, $s5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	fld.d	$fa5, $a7, 0
	bge	$t6, $a0, .LBB1_120
# %bb.119:                              #   in Loop: Header=BB1_117 Depth=6
	move	$a0, $s1
	b	.LBB1_115
	.p2align	4, , 16
.LBB1_120:                              #   in Loop: Header=BB1_117 Depth=6
	alsl.d	$a0, $a0, $a2, 2
	addi.w	$a2, $a0, 4
	move	$a0, $t3
	b	.LBB1_116
	.p2align	4, , 16
.LBB1_121:                              # %.preheader324
                                        #   Parent Loop BB1_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a7, 40
	addi.d	$a0, $a7, 24
	move	$a7, $a0
	bne	$a2, $t5, .LBB1_121
	b	.LBB1_75
	.p2align	4, , 16
.LBB1_122:                              #   in Loop: Header=BB1_76 Depth=1
	move	$a0, $a7
	b	.LBB1_75
.LBB1_123:                              # %.preheader322
	pcalau12i	$a1, %pc_hi20(foldrna.pairpt1)
	st.d	$a0, $a1, %pc_lo12(foldrna.pairpt1)
	blez	$s3, .LBB1_165
# %bb.124:                              # %.preheader321.us.preheader
	move	$a2, $zero
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(foldrna.oseq1)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(foldrna.oseq2)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bstrpick.d	$a7, $a0, 31, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t0, $a0, %pc_lo12(foldrna.impmtx2)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	slli.d	$t1, $a0, 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$t2, $a0, 4
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	slli.d	$t3, $a0, 2
	sub.d	$a0, $zero, $t3
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	movgr2fr.w	$fa1, $zero
	ori	$t5, $zero, 3
	ori	$t6, $zero, 36
	ori	$t7, $zero, 148
	ori	$t8, $zero, 4
	b	.LBB1_126
	.p2align	4, , 16
.LBB1_125:                              # %._crit_edge400.us
                                        #   in Loop: Header=BB1_126 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB1_164
.LBB1_126:                              # %.preheader321.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_149 Depth 2
                                        #     Child Loop BB1_153 Depth 2
                                        #     Child Loop BB1_156 Depth 2
                                        #     Child Loop BB1_158 Depth 2
                                        #     Child Loop BB1_162 Depth 2
                                        #     Child Loop BB1_139 Depth 2
                                        #     Child Loop BB1_129 Depth 2
                                        #       Child Loop BB1_130 Depth 3
                                        #         Child Loop BB1_131 Depth 4
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$s3, $a1, $a0
	ldx.d	$s2, $t0, $a0
	blez	$s8, .LBB1_134
# %bb.127:                              # %.lr.ph399.split.us.us
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blez	$a0, .LBB1_136
# %bb.128:                              # %.preheader.lr.ph.i308.us.us.us.preheader
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$s1, $zero
	.p2align	4, , 16
.LBB1_129:                              # %.preheader.lr.ph.i308.us.us.us
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_130 Depth 3
                                        #         Child Loop BB1_131 Depth 4
	slli.d	$s4, $s1, 2
	fldx.s	$fa2, $s3, $s4
	move	$a0, $zero
	fmov.s	$fa3, $fa1
	.p2align	4, , 16
.LBB1_130:                              # %.preheader.us.i311.us.us.us
                                        #   Parent Loop BB1_126 Depth=1
                                        #     Parent Loop BB1_129 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_131 Depth 4
	slli.d	$a1, $a0, 3
	ldx.d	$s5, $a5, $a1
	ldx.b	$s5, $s5, $a2
	slli.d	$s5, $s5, 2
	ldx.w	$s5, $a3, $s5
	slt	$s7, $t5, $s5
	masknez	$s5, $s5, $s7
	maskeqz	$s7, $t6, $s7
	fldx.d	$fa4, $s0, $a1
	or	$a1, $s7, $s5
	mul.d	$a1, $a1, $t7
	add.d	$a1, $a4, $a1
	move	$s5, $a6
	move	$s7, $s6
	move	$ra, $a7
	.p2align	4, , 16
.LBB1_131:                              #   Parent Loop BB1_126 Depth=1
                                        #     Parent Loop BB1_129 Depth=2
                                        #       Parent Loop BB1_130 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$fp, $s5, 0
	ldx.b	$fp, $fp, $s1
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a3, $fp
	slt	$t4, $t5, $fp
	masknez	$fp, $fp, $t4
	maskeqz	$t4, $t6, $t4
	or	$t4, $t4, $fp
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a1, $t4
	movgr2fr.w	$fa5, $t4
	ffint.s.w	$fa5, $fa5
	fld.d	$fa6, $s7, 0
	fcvt.d.s	$fa5, $fa5
	fmul.d	$fa5, $fa4, $fa5
	fcvt.d.s	$fa3, $fa3
	fmadd.d	$fa3, $fa5, $fa6, $fa3
	fcvt.s.d	$fa3, $fa3
	addi.d	$ra, $ra, -1
	addi.d	$s7, $s7, 8
	addi.d	$s5, $s5, 8
	bnez	$ra, .LBB1_131
# %bb.132:                              # %._crit_edge.us.i315.us.us.us
                                        #   in Loop: Header=BB1_130 Depth=3
	addi.d	$a0, $a0, 1
	bne	$a0, $s8, .LBB1_130
# %bb.133:                              # %singleribosumscore.exit.loopexit.us.us.us
                                        #   in Loop: Header=BB1_129 Depth=2
	fmul.s	$fa2, $fa2, $fa3
	pcalau12i	$a0, %got_pc_hi20(consweight_multi)
	ld.d	$a0, $a0, %got_pc_lo12(consweight_multi)
	fld.s	$fa3, $a0, 0
	fldx.s	$fa4, $s2, $s4
	fmadd.s	$fa2, $fa2, $fa3, $fa4
	addi.d	$s1, $s1, 1
	fstx.s	$fa2, $s2, $s4
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bne	$s1, $a0, .LBB1_129
	b	.LBB1_125
	.p2align	4, , 16
.LBB1_134:                              # %iter.check755
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bgeu	$a0, $t8, .LBB1_140
# %bb.135:                              #   in Loop: Header=BB1_126 Depth=1
	move	$a1, $zero
	b	.LBB1_155
	.p2align	4, , 16
.LBB1_136:                              # %iter.check711
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bgeu	$a0, $t8, .LBB1_144
# %bb.137:                              #   in Loop: Header=BB1_126 Depth=1
	move	$a1, $zero
.LBB1_138:                              # %.preheader.lr.ph.i308.us.us405.preheader
                                        #   in Loop: Header=BB1_126 Depth=1
	alsl.d	$a0, $a1, $s3, 2
	alsl.d	$s1, $a1, $s2, 2
	ld.d	$t4, $sp, 288                   # 8-byte Folded Reload
	sub.d	$a1, $t4, $a1
	.p2align	4, , 16
.LBB1_139:                              # %.preheader.lr.ph.i308.us.us405
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $a0, 0
	fmul.s	$fa2, $fa2, $fa1
	pcalau12i	$s2, %got_pc_hi20(consweight_multi)
	ld.d	$s2, $s2, %got_pc_lo12(consweight_multi)
	fld.s	$fa3, $s2, 0
	fld.s	$fa4, $s1, 0
	fmadd.s	$fa2, $fa2, $fa3, $fa4
	fst.s	$fa2, $s1, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, -1
	addi.d	$s1, $s1, 4
	bnez	$a1, .LBB1_139
	b	.LBB1_125
.LBB1_140:                              # %vector.memcheck743
                                        #   in Loop: Header=BB1_126 Depth=1
	add.d	$s1, $s2, $t1
	add.d	$a0, $s3, $t1
	sltu	$a0, $s2, $a0
	sltu	$a1, $s3, $s1
	and	$a0, $a0, $a1
	move	$a1, $zero
	bnez	$a0, .LBB1_155
# %bb.141:                              # %vector.memcheck743
                                        #   in Loop: Header=BB1_126 Depth=1
	pcalau12i	$a0, %got_pc_hi20(consweight_multi)
	ld.d	$a0, $a0, %got_pc_lo12(consweight_multi)
	addi.d	$s4, $a0, 4
	sltu	$s4, $s2, $s4
	sltu	$s1, $a0, $s1
	and	$s1, $s4, $s1
	bnez	$s1, .LBB1_155
# %bb.142:                              # %vector.main.loop.iter.check757
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ori	$t4, $zero, 16
	bgeu	$a1, $t4, .LBB1_148
# %bb.143:                              #   in Loop: Header=BB1_126 Depth=1
	move	$s1, $zero
	b	.LBB1_152
.LBB1_144:                              # %vector.memcheck704
                                        #   in Loop: Header=BB1_126 Depth=1
	add.d	$s1, $s2, $t1
	add.d	$a0, $s3, $t1
	sltu	$a0, $s2, $a0
	sltu	$a1, $s3, $s1
	and	$a0, $a0, $a1
	move	$a1, $zero
	bnez	$a0, .LBB1_138
# %bb.145:                              # %vector.memcheck704
                                        #   in Loop: Header=BB1_126 Depth=1
	pcalau12i	$a0, %got_pc_hi20(consweight_multi)
	ld.d	$a0, $a0, %got_pc_lo12(consweight_multi)
	addi.d	$s4, $a0, 4
	sltu	$s4, $s2, $s4
	sltu	$s1, $a0, $s1
	and	$s1, $s4, $s1
	bnez	$s1, .LBB1_138
# %bb.146:                              # %vector.main.loop.iter.check713
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ori	$t4, $zero, 16
	bgeu	$a1, $t4, .LBB1_157
# %bb.147:                              #   in Loop: Header=BB1_126 Depth=1
	move	$s1, $zero
	b	.LBB1_161
.LBB1_148:                              # %vector.ph758
                                        #   in Loop: Header=BB1_126 Depth=1
	xvldrepl.w	$xr2, $a0, 0
	addi.d	$a1, $s2, 32
	addi.d	$s1, $s3, 32
	move	$s4, $t2
	.p2align	4, , 16
.LBB1_149:                              # %vector.body761
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $s1, -32
	xvld	$xr4, $s1, 0
	xvld	$xr5, $a1, -32
	xvld	$xr6, $a1, 0
	xvfmul.s	$xr3, $xr3, $xr0
	xvfmul.s	$xr4, $xr4, $xr0
	xvfmadd.s	$xr3, $xr3, $xr2, $xr5
	xvfmadd.s	$xr4, $xr4, $xr2, $xr6
	xvst	$xr3, $a1, -32
	xvst	$xr4, $a1, 0
	addi.d	$s4, $s4, -16
	addi.d	$a1, $a1, 64
	addi.d	$s1, $s1, 64
	bnez	$s4, .LBB1_149
# %bb.150:                              # %middle.block770
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	beq	$a1, $t2, .LBB1_125
# %bb.151:                              # %vec.epilog.iter.check775
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$s1, $t2
	move	$a1, $t2
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	beqz	$t4, .LBB1_155
.LBB1_152:                              # %vec.epilog.ph774
                                        #   in Loop: Header=BB1_126 Depth=1
	vldrepl.w	$vr2, $a0, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	alsl.d	$a1, $s1, $s2, 2
	alsl.d	$s1, $s1, $s3, 2
	.p2align	4, , 16
.LBB1_153:                              # %vec.epilog.vector.body780
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $s1, 0
	vld	$vr4, $a1, 0
	vfmul.s	$vr3, $vr3, $vr8
	vfmadd.s	$vr3, $vr3, $vr2, $vr4
	vst	$vr3, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 16
	addi.d	$s1, $s1, 16
	bnez	$a0, .LBB1_153
# %bb.154:                              # %vec.epilog.middle.block787
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$a1, $t3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$a0, $t3, .LBB1_125
	.p2align	4, , 16
.LBB1_155:                              # %singleribosumscore.exit.us.preheader
                                        #   in Loop: Header=BB1_126 Depth=1
	alsl.d	$a0, $a1, $s3, 2
	alsl.d	$s1, $a1, $s2, 2
	ld.d	$t4, $sp, 288                   # 8-byte Folded Reload
	sub.d	$a1, $t4, $a1
	.p2align	4, , 16
.LBB1_156:                              # %singleribosumscore.exit.us
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $a0, 0
	fmul.s	$fa2, $fa2, $fa1
	pcalau12i	$s2, %got_pc_hi20(consweight_multi)
	ld.d	$s2, $s2, %got_pc_lo12(consweight_multi)
	fld.s	$fa3, $s2, 0
	fld.s	$fa4, $s1, 0
	fmadd.s	$fa2, $fa2, $fa3, $fa4
	fst.s	$fa2, $s1, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, -1
	addi.d	$s1, $s1, 4
	bnez	$a1, .LBB1_156
	b	.LBB1_125
.LBB1_157:                              # %vector.ph714
                                        #   in Loop: Header=BB1_126 Depth=1
	xvldrepl.w	$xr2, $a0, 0
	addi.d	$a1, $s2, 32
	addi.d	$s1, $s3, 32
	move	$s4, $t2
	.p2align	4, , 16
.LBB1_158:                              # %vector.body717
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $s1, -32
	xvld	$xr4, $s1, 0
	xvld	$xr5, $a1, -32
	xvld	$xr6, $a1, 0
	xvfmul.s	$xr3, $xr3, $xr0
	xvfmul.s	$xr4, $xr4, $xr0
	xvfmadd.s	$xr3, $xr3, $xr2, $xr5
	xvfmadd.s	$xr4, $xr4, $xr2, $xr6
	xvst	$xr3, $a1, -32
	xvst	$xr4, $a1, 0
	addi.d	$s4, $s4, -16
	addi.d	$a1, $a1, 64
	addi.d	$s1, $s1, 64
	bnez	$s4, .LBB1_158
# %bb.159:                              # %middle.block723
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	beq	$a1, $t2, .LBB1_125
# %bb.160:                              # %vec.epilog.iter.check728
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$s1, $t2
	move	$a1, $t2
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	beqz	$t4, .LBB1_138
.LBB1_161:                              # %vec.epilog.ph727
                                        #   in Loop: Header=BB1_126 Depth=1
	vldrepl.w	$vr2, $a0, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	alsl.d	$a1, $s1, $s2, 2
	alsl.d	$s1, $s1, $s3, 2
	.p2align	4, , 16
.LBB1_162:                              # %vec.epilog.vector.body733
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $s1, 0
	vld	$vr4, $a1, 0
	vfmul.s	$vr3, $vr3, $vr8
	vfmadd.s	$vr3, $vr3, $vr2, $vr4
	vst	$vr3, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 16
	addi.d	$s1, $s1, 16
	bnez	$a0, .LBB1_162
# %bb.163:                              # %vec.epilog.middle.block740
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$a1, $t3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$a0, $t3, .LBB1_125
	b	.LBB1_138
.LBB1_164:                              # %.loopexit
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	blez	$a0, .LBB1_213
.LBB1_165:                              # %.lr.ph480
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(foldrna.pairprob2)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(foldrna.map)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(foldrna.impmtx2)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	addi.w	$a6, $zero, -1
	movgr2fr.w	$fa0, $zero
	pcalau12i	$a7, %got_pc_hi20(consweight_rna)
	ld.d	$a7, $a7, %got_pc_lo12(consweight_rna)
	pcalau12i	$t0, %pc_hi20(.LCPI1_0)
	fld.s	$fa1, $t0, %pc_lo12(.LCPI1_0)
	move	$t0, $zero
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	b	.LBB1_168
	.p2align	4, , 16
.LBB1_166:                              # %._crit_edge456.split.us
                                        #   in Loop: Header=BB1_168 Depth=1
	st.d	$t4, $fp, %pc_lo12(foldrna.pairpt2)
.LBB1_167:                              # %._crit_edge456
                                        #   in Loop: Header=BB1_168 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a0, .LBB1_194
.LBB1_168:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_193 Depth 2
                                        #     Child Loop BB1_172 Depth 2
                                        #       Child Loop BB1_190 Depth 3
                                        #         Child Loop BB1_191 Depth 4
                                        #       Child Loop BB1_183 Depth 3
                                        #         Child Loop BB1_185 Depth 4
                                        #       Child Loop BB1_175 Depth 3
                                        #         Child Loop BB1_177 Depth 4
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a2, $t1
	ld.w	$t3, $t2, 16
	beq	$t3, $a6, .LBB1_167
# %bb.169:                              # %.preheader318.lr.ph
                                        #   in Loop: Header=BB1_168 Depth=1
	blez	$s3, .LBB1_192
# %bb.170:                              # %.preheader318.us.preheader
                                        #   in Loop: Header=BB1_168 Depth=1
	alsl.d	$t1, $t0, $a5, 3
	b	.LBB1_172
	.p2align	4, , 16
.LBB1_171:                              # %._crit_edge425.us
                                        #   in Loop: Header=BB1_172 Depth=2
	ld.w	$t3, $t2, 40
	addi.d	$t2, $t2, 24
	beq	$t3, $a6, .LBB1_166
.LBB1_172:                              # %.preheader318.us
                                        #   Parent Loop BB1_168 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_190 Depth 3
                                        #         Child Loop BB1_191 Depth 4
                                        #       Child Loop BB1_183 Depth 3
                                        #         Child Loop BB1_185 Depth 4
                                        #       Child Loop BB1_175 Depth 3
                                        #         Child Loop BB1_177 Depth 4
	alsl.d	$t5, $t3, $a4, 3
	bge	$t3, $t0, .LBB1_180
# %bb.173:                              # %.lr.ph424.split.us.split.us474.preheader
                                        #   in Loop: Header=BB1_172 Depth=2
	move	$t6, $zero
	b	.LBB1_175
	.p2align	4, , 16
.LBB1_174:                              # %._crit_edge417.split.us429.split.us.us
                                        #   in Loop: Header=BB1_175 Depth=3
	addi.d	$t6, $t6, 1
	beq	$t6, $a1, .LBB1_171
.LBB1_175:                              # %.lr.ph424.split.us.split.us474
                                        #   Parent Loop BB1_168 Depth=1
                                        #     Parent Loop BB1_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_177 Depth 4
	slli.d	$t4, $t6, 3
	ldx.d	$t4, $a3, $t4
	ld.w	$t7, $t4, 16
	bne	$t7, $a6, .LBB1_177
	b	.LBB1_174
	.p2align	4, , 16
.LBB1_176:                              #   in Loop: Header=BB1_177 Depth=4
	ld.w	$t7, $t4, 40
	addi.d	$t4, $t4, 24
	beq	$t7, $a6, .LBB1_174
.LBB1_177:                              # %.lr.ph416.us.us468
                                        #   Parent Loop BB1_168 Depth=1
                                        #     Parent Loop BB1_172 Depth=2
                                        #       Parent Loop BB1_175 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	or	$t8, $t7, $t3
	bltz	$t8, .LBB1_176
# %bb.178:                              # %.lr.ph416.us.us468
                                        #   in Loop: Header=BB1_177 Depth=4
	bge	$t7, $t6, .LBB1_176
# %bb.179:                              #   in Loop: Header=BB1_177 Depth=4
	ld.d	$t8, $t5, 0
	fld.s	$fa2, $t2, 20
	fld.s	$fa3, $t4, 20
	slli.d	$t7, $t7, 2
	fldx.s	$fa4, $t8, $t7
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$t7, $t1, 0
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fld.s	$fa3, $a7, 0
	slli.d	$t8, $t6, 2
	fldx.s	$fa5, $t7, $t8
	fsel	$fa4, $fa4, $fa0, $fcc0
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa3, $fa3, $fa1
	fmadd.s	$fa2, $fa3, $fa2, $fa5
	fstx.s	$fa2, $t7, $t8
	b	.LBB1_176
	.p2align	4, , 16
.LBB1_180:                              # %.lr.ph424.split.us464
                                        #   in Loop: Header=BB1_172 Depth=2
	bge	$t0, $t3, .LBB1_188
# %bb.181:                              # %.lr.ph424.split.split.us.us.preheader
                                        #   in Loop: Header=BB1_172 Depth=2
	move	$t6, $zero
	b	.LBB1_183
	.p2align	4, , 16
.LBB1_182:                              # %._crit_edge417.split.us.split.us441.us
                                        #   in Loop: Header=BB1_183 Depth=3
	addi.d	$t6, $t6, 1
	beq	$t6, $a1, .LBB1_171
.LBB1_183:                              # %.lr.ph424.split.split.us.us
                                        #   Parent Loop BB1_168 Depth=1
                                        #     Parent Loop BB1_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_185 Depth 4
	slli.d	$t4, $t6, 3
	ldx.d	$t4, $a3, $t4
	ld.w	$t7, $t4, 16
	bne	$t7, $a6, .LBB1_185
	b	.LBB1_182
	.p2align	4, , 16
.LBB1_184:                              #   in Loop: Header=BB1_185 Depth=4
	ld.w	$t7, $t4, 40
	addi.d	$t4, $t4, 24
	beq	$t7, $a6, .LBB1_182
.LBB1_185:                              # %.lr.ph416.us437.us
                                        #   Parent Loop BB1_168 Depth=1
                                        #     Parent Loop BB1_172 Depth=2
                                        #       Parent Loop BB1_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	or	$t8, $t7, $t3
	bltz	$t8, .LBB1_184
# %bb.186:                              # %.lr.ph416.us437.us
                                        #   in Loop: Header=BB1_185 Depth=4
	bge	$t6, $t7, .LBB1_184
# %bb.187:                              #   in Loop: Header=BB1_185 Depth=4
	ld.d	$t8, $t5, 0
	fld.s	$fa2, $t2, 20
	fld.s	$fa3, $t4, 20
	slli.d	$t7, $t7, 2
	fldx.s	$fa4, $t8, $t7
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$t7, $t1, 0
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fld.s	$fa3, $a7, 0
	slli.d	$t8, $t6, 2
	fldx.s	$fa5, $t7, $t8
	fsel	$fa4, $fa4, $fa0, $fcc0
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa3, $fa3, $fa1
	fmadd.s	$fa2, $fa3, $fa2, $fa5
	fstx.s	$fa2, $t7, $t8
	b	.LBB1_184
	.p2align	4, , 16
.LBB1_188:                              # %.lr.ph424.split.split.us471.preheader
                                        #   in Loop: Header=BB1_172 Depth=2
	move	$t3, $zero
	b	.LBB1_190
	.p2align	4, , 16
.LBB1_189:                              # %._crit_edge417.split.us.split.us.us
                                        #   in Loop: Header=BB1_190 Depth=3
	addi.d	$t3, $t3, 1
	beq	$t3, $a1, .LBB1_171
.LBB1_190:                              # %.lr.ph424.split.split.us471
                                        #   Parent Loop BB1_168 Depth=1
                                        #     Parent Loop BB1_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_191 Depth 4
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a3, $t4
	ld.w	$t5, $t4, 16
	beq	$t5, $a6, .LBB1_189
	.p2align	4, , 16
.LBB1_191:                              # %.lr.ph416.us460
                                        #   Parent Loop BB1_168 Depth=1
                                        #     Parent Loop BB1_172 Depth=2
                                        #       Parent Loop BB1_190 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t5, $t4, 40
	addi.d	$t4, $t4, 24
	bne	$t5, $a6, .LBB1_191
	b	.LBB1_189
	.p2align	4, , 16
.LBB1_192:                              #   in Loop: Header=BB1_168 Depth=1
	move	$t1, $t2
	.p2align	4, , 16
.LBB1_193:                              # %.preheader318
                                        #   Parent Loop BB1_168 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 40
	addi.d	$t2, $t1, 24
	move	$t1, $t2
	bne	$t3, $a6, .LBB1_193
	b	.LBB1_167
.LBB1_194:                              # %.preheader317
	pcalau12i	$a2, %pc_hi20(foldrna.pairpt1)
	st.d	$t2, $a2, %pc_lo12(foldrna.pairpt1)
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	blez	$a2, .LBB1_213
# %bb.195:                              # %.preheader316.lr.ph
	blez	$s3, .LBB1_213
# %bb.196:                              # %.preheader316.us.preheader
	move	$a2, $zero
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(foldrna.impmtx2)
	slli.d	$a4, $a1, 2
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a7, 30, 4
	slli.d	$a5, $a5, 4
	andi	$a6, $a7, 12
	bstrpick.d	$a7, $a7, 30, 2
	slli.d	$a7, $a7, 2
	sub.d	$t0, $zero, $a7
	ori	$t1, $zero, 4
	ori	$t2, $zero, 16
	b	.LBB1_198
	.p2align	4, , 16
.LBB1_197:                              # %._crit_edge483.us
                                        #   in Loop: Header=BB1_198 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB1_213
.LBB1_198:                              # %iter.check798
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_207 Depth 2
                                        #     Child Loop BB1_211 Depth 2
                                        #     Child Loop BB1_203 Depth 2
	slli.d	$t4, $a2, 3
	ldx.d	$t3, $a3, $t4
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	ldx.d	$t4, $t5, $t4
	bltu	$a1, $t1, .LBB1_201
# %bb.199:                              # %vector.memcheck790
                                        #   in Loop: Header=BB1_198 Depth=1
	add.d	$t5, $t3, $a4
	bgeu	$t4, $t5, .LBB1_204
# %bb.200:                              # %vector.memcheck790
                                        #   in Loop: Header=BB1_198 Depth=1
	add.d	$t5, $t4, $a4
	bgeu	$t3, $t5, .LBB1_204
.LBB1_201:                              #   in Loop: Header=BB1_198 Depth=1
	move	$t5, $zero
.LBB1_202:                              # %vec.epilog.scalar.ph814.preheader
                                        #   in Loop: Header=BB1_198 Depth=1
	alsl.d	$t3, $t5, $t3, 2
	alsl.d	$t4, $t5, $t4, 2
	sub.d	$t5, $a1, $t5
	.p2align	4, , 16
.LBB1_203:                              # %vec.epilog.scalar.ph814
                                        #   Parent Loop BB1_198 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $t3, 0
	fld.s	$fa1, $t4, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB1_203
	b	.LBB1_197
	.p2align	4, , 16
.LBB1_204:                              # %vector.main.loop.iter.check800
                                        #   in Loop: Header=BB1_198 Depth=1
	bgeu	$a1, $t2, .LBB1_206
# %bb.205:                              #   in Loop: Header=BB1_198 Depth=1
	move	$t7, $zero
	b	.LBB1_210
.LBB1_206:                              # %vector.body804.preheader
                                        #   in Loop: Header=BB1_198 Depth=1
	addi.d	$t5, $t4, 32
	addi.d	$t6, $t3, 32
	move	$t7, $a5
	.p2align	4, , 16
.LBB1_207:                              # %vector.body804
                                        #   Parent Loop BB1_198 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t6, -32
	xvld	$xr1, $t6, 0
	xvld	$xr2, $t5, -32
	xvld	$xr3, $t5, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $t5, -32
	xvst	$xr1, $t5, 0
	addi.d	$t7, $t7, -16
	addi.d	$t5, $t5, 64
	addi.d	$t6, $t6, 64
	bnez	$t7, .LBB1_207
# %bb.208:                              # %middle.block811
                                        #   in Loop: Header=BB1_198 Depth=1
	beq	$a1, $a5, .LBB1_197
# %bb.209:                              # %vec.epilog.iter.check816
                                        #   in Loop: Header=BB1_198 Depth=1
	move	$t7, $a5
	move	$t5, $a5
	beqz	$a6, .LBB1_202
.LBB1_210:                              # %vec.epilog.ph815
                                        #   in Loop: Header=BB1_198 Depth=1
	add.d	$t5, $t0, $t7
	alsl.d	$t6, $t7, $t4, 2
	alsl.d	$t7, $t7, $t3, 2
	.p2align	4, , 16
.LBB1_211:                              # %vec.epilog.vector.body821
                                        #   Parent Loop BB1_198 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, 0
	vld	$vr1, $t6, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $t6, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	bnez	$t5, .LBB1_211
# %bb.212:                              # %vec.epilog.middle.block826
                                        #   in Loop: Header=BB1_198 Depth=1
	move	$t5, $a7
	beq	$a1, $a7, .LBB1_197
	b	.LBB1_202
.LBB1_213:                              # %._crit_edge485
	ld.d	$a0, $s2, %pc_lo12(foldrna.useq1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.useq2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq1r)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq2r)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.odir1)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.odir2)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.impmtx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.map)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	blez	$a0, .LBB1_216
# %bb.214:                              # %.lr.ph488
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$s0, $a0, 30, 0
	.p2align	4, , 16
.LBB1_215:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB1_215
.LBB1_216:                              # %.preheader
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(foldrna.pairprob2)
	blez	$s3, .LBB1_219
# %bb.217:                              # %.lr.ph490
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$s0, $a0, 30, 0
	move	$s1, $fp
	.p2align	4, , 16
.LBB1_218:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB1_218
.LBB1_219:                              # %._crit_edge491
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.pairprob1)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_220:
	move	$a1, $s8
	pcaddu18i	$ra, %call36(rnaalifoldcall)
	jirl	$ra, $ra, 0
.LBB1_221:
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rnaalifoldcall)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	foldrna, .Lfunc_end1-foldrna
                                        # -- End function
	.p2align	5                               # -- Begin function mccaskillextract
	.type	mccaskillextract,@function
mccaskillextract:                       # @mccaskillextract
# %bb.0:                                # %.preheader2
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$fp, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(mccaskillextract.pairnum)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(mccaskillextract.pairnum)
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	blez	$fp, .LBB2_15
# %bb.1:                                # %.lr.ph12.preheader
	move	$a1, $zero
	addi.w	$s7, $zero, -1
	move	$a0, $s7
	lu32i.d	$a0, 0
	lu52i.d	$a0, $a0, -1032
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %._crit_edge10
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_15
.LBB2_3:                                # %.lr.ph12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #       Child Loop BB2_9 Depth 3
                                        #         Child Loop BB2_10 Depth 4
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB2_2
# %bb.4:                                # %.lr.ph9
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$s5, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s3, $a2, $a1, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a1, 3
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                # %._crit_edge
                                        #   in Loop: Header=BB2_6 Depth=2
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB2_2
.LBB2_6:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_9 Depth 3
                                        #         Child Loop BB2_10 Depth 4
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 3
	ldx.d	$s1, $a0, $a1
	ld.w	$a0, $s1, 16
	bne	$a0, $s7, .LBB2_9
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_7:                                # %.thread
                                        #   in Loop: Header=BB2_9 Depth=3
	slli.d	$s8, $a1, 2
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a1, $s4, $s8
	addi.w	$a1, $a1, 2
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	move	$s2, $a5
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$a5, $s2
	ldx.w	$a1, $s4, $s8
	st.d	$a0, $fp, 0
	addi.w	$a2, $a1, 1
	stx.w	$a2, $s4, $s8
	ori	$a3, $zero, 24
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	st.w	$s6, $a1, 16
	fld.d	$fa0, $s2, 0
	mul.d	$a2, $a2, $a3
	add.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	fmadd.d	$fa0, $fs1, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a1, 20
.LBB2_8:                                #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s1, 40
	addi.d	$s1, $s1, 24
	beq	$a0, $s7, .LBB2_5
.LBB2_9:                                # %.lr.ph6
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_10 Depth 4
	ld.d	$a2, $s3, 0
	slli.d	$a1, $s5, 2
	ldx.w	$a1, $a2, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$s6, $a2, $a0
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s0, $a0
	fld.s	$fa0, $s1, 20
	alsl.d	$fp, $a1, $s0, 3
	addi.d	$a2, $a0, -4
	.p2align	4, , 16
.LBB2_10:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $a2, 20
	addi.d	$a2, $a2, 24
	beq	$a3, $s7, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=4
	bne	$a3, $s6, .LBB2_10
.LBB2_12:                               #   in Loop: Header=BB2_9 Depth=3
	fcvt.d.s	$fs1, $fa0
	beq	$a3, $s7, .LBB2_7
# %bb.13:                               #   in Loop: Header=BB2_9 Depth=3
	fld.s	$fa0, $a2, 0
	fld.d	$fa1, $a5, 0
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fs1, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 0
	beq	$a3, $s6, .LBB2_8
# %bb.14:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_15:                               # %._crit_edge14
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end2:
	.size	mccaskillextract, .Lfunc_end2-mccaskillextract
                                        # -- End function
	.type	rnaalifoldcall.order,@object    # @rnaalifoldcall.order
	.local	rnaalifoldcall.order
	.comm	rnaalifoldcall.order,8,8
	.type	rnaalifoldcall.name,@object     # @rnaalifoldcall.name
	.local	rnaalifoldcall.name
	.comm	rnaalifoldcall.name,8,8
	.type	rnaalifoldcall.fnamein,@object  # @rnaalifoldcall.fnamein
	.local	rnaalifoldcall.fnamein
	.comm	rnaalifoldcall.fnamein,100,1
	.type	rnaalifoldcall.cmd,@object      # @rnaalifoldcall.cmd
	.local	rnaalifoldcall.cmd
	.comm	rnaalifoldcall.cmd,1000,1
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/tmp/_rnaalifoldin.%d"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"seq%d"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"w"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Cannot open /tmp/_rnaalifoldin\n"
	.size	.L.str.3, 32

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"RNAalifold -p %s"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Cannot execute system calls!\n"
	.size	.L.str.5, 30

	.type	foldrna.useq1,@object           # @foldrna.useq1
	.local	foldrna.useq1
	.comm	foldrna.useq1,8,8
	.type	foldrna.useq2,@object           # @foldrna.useq2
	.local	foldrna.useq2
	.comm	foldrna.useq2,8,8
	.type	foldrna.oseq1,@object           # @foldrna.oseq1
	.local	foldrna.oseq1
	.comm	foldrna.oseq1,8,8
	.type	foldrna.oseq2,@object           # @foldrna.oseq2
	.local	foldrna.oseq2
	.comm	foldrna.oseq2,8,8
	.type	foldrna.oseq1r,@object          # @foldrna.oseq1r
	.local	foldrna.oseq1r
	.comm	foldrna.oseq1r,8,8
	.type	foldrna.oseq2r,@object          # @foldrna.oseq2r
	.local	foldrna.oseq2r
	.comm	foldrna.oseq2r,8,8
	.type	foldrna.odir1,@object           # @foldrna.odir1
	.local	foldrna.odir1
	.comm	foldrna.odir1,8,8
	.type	foldrna.odir2,@object           # @foldrna.odir2
	.local	foldrna.odir2
	.comm	foldrna.odir2,8,8
	.type	foldrna.pairprob1,@object       # @foldrna.pairprob1
	.local	foldrna.pairprob1
	.comm	foldrna.pairprob1,8,8
	.type	foldrna.pairprob2,@object       # @foldrna.pairprob2
	.local	foldrna.pairprob2
	.comm	foldrna.pairprob2,8,8
	.type	foldrna.pairpt1,@object         # @foldrna.pairpt1
	.local	foldrna.pairpt1
	.comm	foldrna.pairpt1,8,8
	.type	foldrna.pairpt2,@object         # @foldrna.pairpt2
	.local	foldrna.pairpt2
	.comm	foldrna.pairpt2,8,8
	.type	foldrna.impmtx2,@object         # @foldrna.impmtx2
	.local	foldrna.impmtx2
	.comm	foldrna.impmtx2,8,8
	.type	foldrna.map,@object             # @foldrna.map
	.local	foldrna.map
	.comm	foldrna.map,8,8
	.type	mccaskillextract.pairnum,@object # @mccaskillextract.pairnum
	.local	mccaskillextract.pairnum
	.comm	mccaskillextract.pairnum,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"okashii!\n"
	.size	.L.str.6, 10

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rnaalifoldcall.fnamein
	.addrsig_sym rnaalifoldcall.cmd
