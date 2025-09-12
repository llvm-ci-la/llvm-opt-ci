	.file	"flops.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(T)
	addi.d	$a1, $a0, %pc_lo12(T)
	lu52i.d	$a0, $zero, 1029
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $a1, 8
	pcalau12i	$s0, %pc_hi20(TLimit)
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $s0, %pc_lo12(TLimit)
	pcalau12i	$a2, %pc_hi20(piref)
	lu12i.w	$a1, 345154
	ori	$a1, $a1, 3352
	lu32i.d	$a1, -450053
	lu52i.d	$a1, $a1, 1024
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $a2, %pc_lo12(piref)
	pcalau12i	$a1, %pc_hi20(one)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(one)
	pcalau12i	$a2, %pc_hi20(two)
	lu52i.d	$a1, $zero, 1024
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a1, $a2, %pc_lo12(two)
	pcalau12i	$a3, %pc_hi20(three)
	ori	$a1, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -524288
	lu52i.d	$a2, $a2, 1024
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $a3, %pc_lo12(three)
	pcalau12i	$a3, %pc_hi20(four)
	lu52i.d	$a2, $zero, 1025
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $a3, %pc_lo12(four)
	pcalau12i	$a2, %pc_hi20(five)
	lu32i.d	$a1, 262144
	lu52i.d	$a1, $a1, 1025
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $a2, %pc_lo12(five)
	pcalau12i	$a1, %pc_hi20(scale)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(scale)
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(TimeArray)
	addi.d	$s4, $a0, %pc_lo12(TimeArray)
	fld.d	$fs0, $s4, 16
	pcalau12i	$a0, %pc_hi20(tnow)
	addi.d	$fp, $a0, %pc_lo12(tnow)
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fs1, $a0
	fmadd.d	$fs2, $fa1, $fs1, $fa0
	fst.d	$fs2, $s4, 16
	fsub.d	$fa0, $fs2, $fs0
	fst.d	$fa0, $s4, 8
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs4, $fa1, $fs1, $fa0
	fst.d	$fs4, $s4, 16
	fsub.d	$fa0, $fs4, $fs2
	fst.d	$fa0, $s4, 8
	fld.d	$fa0, $s0, %pc_lo12(TLimit)
	pcalau12i	$a0, %pc_hi20(sa)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$zero, $a0, %pc_lo12(sa)
	movgr2fr.d	$fs0, $zero
	fcmp.cule.d	$fcc0, $fa0, $fs0
	pcalau12i	$s7, %pc_hi20(D1)
	pcalau12i	$s3, %pc_hi20(D2)
	pcalau12i	$s6, %pc_hi20(D3)
	pcalau12i	$s5, %pc_hi20(E2)
	pcalau12i	$a0, %pc_hi20(E3)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	bcnez	$fcc0, .LBB0_6
# %bb.1:                                # %.lr.ph.preheader
	move	$s2, $s0
	lu12i.w	$a0, 3
	ori	$s1, $a0, 3337
	ori	$s8, $zero, 2
	movgr2fr.d	$fs5, $zero
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	move	$s0, $s1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fs6, $a0, %pc_lo12(one)
	slli.d	$s1, $s1, 1
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fs2, $fs6, $fa0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs7, $fa1, $fs1, $fa0
	fst.d	$fs7, $s4, 16
	fsub.d	$fa0, $fs7, $fs4
	fst.d	$fa0, $s4, 8
	fld.d	$fa0, $s7, %pc_lo12(D1)
	fld.d	$fa1, $s3, %pc_lo12(D2)
	fld.d	$fa2, $s6, %pc_lo12(D3)
	fld.d	$fa3, $s5, %pc_lo12(E2)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(E3)
	slt	$a0, $s8, $s1
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	fmov.d	$fs3, $fs5
	fmov.d	$fa5, $fs5
	.p2align	4, , 16
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa5, $fs6, $fa5
	fmul.d	$fa6, $fs2, $fa5
	fmadd.d	$fa7, $fa6, $fa2, $fa1
	fmadd.d	$fa7, $fa6, $fa7, $fa0
	fmadd.d	$ft0, $fa6, $fa4, $fa3
	fmadd.d	$ft0, $fa6, $ft0, $fa0
	fmadd.d	$fa6, $fa6, $ft0, $fs6
	fdiv.d	$fa6, $fa7, $fa6
	addi.d	$a0, $a0, -1
	fadd.d	$fs3, $fs3, $fa6
	bnez	$a0, .LBB0_3
# %bb.4:                                # %._crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs4, $fa1, $fs1, $fa0
	fst.d	$fs4, $s4, 16
	fsub.d	$fa0, $fs4, $fs7
	fst.d	$fa0, $s4, 8
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(sa)
	lu12i.w	$a0, 62500
	beq	$s0, $a0, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(TLimit)
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_2
	b	.LBB0_7
.LBB0_6:
                                        # implicit-def: $f26_64
                                        # implicit-def: $f27_64
.LBB0_7:                                # %._crit_edge318
	lu12i.w	$a0, 412383
	ori	$a0, $a0, 3970
	lu32i.d	$a0, 18119
	lu52i.d	$a0, $a0, 1017
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s0, %pc_lo12(scale)
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s1, 8
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs5, $fa1, $fs1, $fa0
	fst.d	$fs5, $s4, 16
	fsub.d	$fa0, $fs5, $fs4
	fst.d	$fa0, $s4, 8
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $s1, 8
	fst.d	$fa0, $s4, 16
	fsub.d	$fa0, $fa0, $fs5
	fst.d	$fa0, $s4, 8
	fmul.d	$fa0, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fs0
	fsel	$fa0, $fa0, $fs0, $fcc0
	pcalau12i	$a0, %pc_hi20(nulltime)
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	fld.d	$fa2, $s8, %pc_lo12(sa)
	fld.d	$fa3, $s7, %pc_lo12(D1)
	fld.d	$fa4, $s3, %pc_lo12(D2)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fa0, $a0, %pc_lo12(nulltime)
	fmsub.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $s6, %pc_lo12(D3)
	fadd.d	$fa2, $fa3, $fa4
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa4, $s3, %pc_lo12(one)
	fld.d	$fa5, $s5, %pc_lo12(E2)
	fadd.d	$fa1, $fa2, $fa1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(E3)
	fadd.d	$fa6, $fa3, $fa4
	fadd.d	$fa5, $fa6, $fa5
	fst.d	$fa0, $s1, 16
	fadd.d	$fa2, $fa5, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	vldi	$vr2, -980
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(two)
	fdiv.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s1, 24
	fadd.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fs3, $fa1
	fmul.d	$fa1, $fs2, $fa1
	fdiv.d	$fa1, $fa1, $fa5
	fst.d	$fa1, $s8, %pc_lo12(sa)
	fdiv.d	$fa1, $fa4, $fa1
	pcalau12i	$a0, %pc_hi20(sb)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	fst.d	$fa1, $a0, %pc_lo12(sb)
	ftintrz.l.d	$fa3, $fa1
	movfr2gr.d	$a0, $fa3
	lu12i.w	$a1, 9
	ori	$a1, $a1, 3136
	fld.d	$fa3, $s0, %pc_lo12(scale)
	mul.d	$a0, $a0, $a1
	movgr2fr.d	$fa5, $a0
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa3, $fa5, $fa3
	ftintrz.l.d	$fa3, $fa3
	lu12i.w	$a0, 209715
	ori	$a0, $a0, 819
	movfr2gr.d	$s0, $fa3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu32i.d	$a0, -445645
	lu52i.d	$a0, $a0, -1021
	movgr2fr.d	$fa3, $a0
	fadd.d	$fa1, $fa1, $fa3
	pcalau12i	$a0, %pc_hi20(sc)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	fst.d	$fa1, $a0, %pc_lo12(sc)
	fdiv.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $s1, 32
	lu12i.w	$a0, -4420
	ori	$a0, $a0, 672
	lu32i.d	$a0, 280651
	lu52i.d	$a0, $a0, 923
	movgr2fr.d	$fs5, $a0
	fmul.d	$fa1, $fa1, $fs5
	fmul.d	$fa0, $fa0, $fs5
	fmul.d	$fa2, $fa2, $fs5
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a1, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(five)
	fld.d	$fa1, $s3, %pc_lo12(one)
	fld.d	$fs4, $s4, 16
	fneg.d	$fs3, $fa0
	fneg.d	$fa0, $fa1
	fst.d	$fa0, $s8, %pc_lo12(sa)
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs2, $fa1, $fs1, $fa0
	fst.d	$fs2, $s4, 16
	fsub.d	$fa0, $fs2, $fs4
	fst.d	$fa0, $s4, 8
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
	blez	$s0, .LBB0_11
# %bb.8:                                # %.lr.ph326.preheader
	fld.d	$fa0, $s8, %pc_lo12(sa)
	move	$a0, $s0
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_9:                                # %.lr.ph326
                                        # =>This Inner Loop Header: Depth=1
	fsub.d	$fa0, $fa0, $fs3
	addi.d	$a0, $a0, -1
	fneg.d	$fs3, $fs3
	bnez	$a0, .LBB0_9
# %bb.10:                               # %._crit_edge327
	fst.d	$fa0, $s8, %pc_lo12(sa)
	b	.LBB0_12
.LBB0_11:
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB0_12:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs4, $fa1, $fs1, $fa0
	fld.d	$fa0, $s1, 8
	fst.d	$fs4, $s4, 16
	fsub.d	$fa1, $fs4, $fs2
	fst.d	$fa1, $s4, 8
	fmul.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs0
	fsel	$fa0, $fa0, $fs0, $fcc0
	fst.d	$fa0, $s1, 40
	fld.d	$fs2, $s8, %pc_lo12(sa)
	movgr2fr.d	$fa0, $s0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(sc)
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs7, $fa1, $fs1, $fa0
	fst.d	$fs7, $s4, 16
	fsub.d	$fa0, $fs7, $fs4
	fst.d	$fa0, $s4, 8
	fmov.d	$fs4, $fs0
	fmov.d	$fs5, $fs0
	fmov.d	$fs6, $fs0
	blez	$s0, .LBB0_16
# %bb.13:                               # %.lr.ph338
	fld.d	$fa0, $s8, %pc_lo12(sa)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(two)
	movgr2fr.d	$fs6, $zero
	fmov.d	$fs5, $fs6
	fmov.d	$fs4, $fs6
	.p2align	4, , 16
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	fsub.d	$fa0, $fa0, $fs3
	fadd.d	$fs2, $fs2, $fa1
	fmadd.d	$fs4, $fs3, $fs2, $fs4
	fdiv.d	$fa2, $fs3, $fs2
	fneg.d	$fs3, $fs3
	fsub.d	$fa3, $fs3, $fs2
	fadd.d	$fs6, $fs6, $fa3
	addi.d	$s0, $s0, -1
	fsub.d	$fs5, $fs5, $fa2
	bnez	$s0, .LBB0_14
# %bb.15:                               # %._crit_edge339
	fst.d	$fa0, $s8, %pc_lo12(sa)
.LBB0_16:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $s1, 8
	fst.d	$fa0, $s4, 16
	fsub.d	$fa0, $fa0, $fs7
	fst.d	$fa0, $s4, 8
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $s1, 40
	fld.d	$fa2, $s8, %pc_lo12(sa)
	fst.d	$fa0, $s1, 48
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	fld.d	$fa3, $a2, %pc_lo12(sc)
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fs6, $fa2
	vldi	$vr2, -996
	fdiv.d	$fa1, $fa1, $fa3
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$s0, $fa1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(four)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(five)
	fdiv.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s1, 56
	fmul.d	$fa1, $fs5, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $s8, %pc_lo12(sa)
	fdiv.d	$fa3, $fa3, $fs4
	fadd.d	$fa1, $fa1, $fa3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(sb)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a1, $a0, 1027
	st.d	$a1, $a2, %pc_lo12(sc)
	fmul.d	$fa3, $fs4, $fs4
	fmul.d	$fa3, $fs4, $fa3
	lu52i.d	$a0, $a0, -1021
	movgr2fr.d	$fa4, $a0
	fdiv.d	$fa3, $fa4, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $s3, %pc_lo12(piref)
	pcalau12i	$a0, %pc_hi20(piprg)
	fst.d	$fa1, $a0, %pc_lo12(piprg)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(one)
	fsub.d	$fa1, $fa1, $fa3
	pcalau12i	$a0, %pc_hi20(pierr)
	fst.d	$fa1, $a0, %pc_lo12(pierr)
	fdiv.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $s1, 64
	fld.d	$fs7, $sp, 16                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fs7
	fmul.d	$fa0, $fa0, $fs7
	fmul.d	$fa2, $fa2, $fs7
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, %pc_lo12(piref)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(three)
	movgr2fr.d	$fa2, $s0
	fld.d	$fs2, $s4, 16
	ffint.d.l	$fs3, $fa2
	fmul.d	$fa1, $fa1, $fs3
	fdiv.d	$fs4, $fa0, $fa1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs6, $fa1, $fs1, $fa0
	fst.d	$fs6, $s4, 16
	fsub.d	$fa0, $fs6, $fs2
	fst.d	$fa0, $s4, 8
	ori	$a1, $zero, 2
	pcalau12i	$a0, %pc_hi20(A6)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(A5)
	pcalau12i	$a0, %pc_hi20(A4)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(A3)
	pcalau12i	$a0, %pc_hi20(A2)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A1)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	fmov.d	$fs5, $fs0
	blt	$s0, $a1, .LBB0_19
# %bb.17:                               # %.lr.ph349
	fld.d	$fa2, $s7, %pc_lo12(A5)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(one)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(A6)
	fneg.d	$fa2, $fa2
	fld.d	$fa6, $s2, %pc_lo12(A3)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(A4)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(A2)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(A1)
	fneg.d	$fa6, $fa6
	movgr2fr.d	$fs5, $zero
	addi.d	$a0, $s0, -1
	fmov.d	$fa7, $fs5
	.p2align	4, , 16
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	fadd.d	$fa7, $fa7, $fa0
	fmul.d	$ft0, $fs4, $fa7
	fmul.d	$ft1, $ft0, $ft0
	fmadd.d	$ft2, $fa1, $ft1, $fa2
	fmadd.d	$ft2, $ft2, $ft1, $fa3
	fmadd.d	$ft2, $ft2, $ft1, $fa6
	fmadd.d	$ft2, $ft2, $ft1, $fa4
	fmadd.d	$ft2, $ft2, $ft1, $fa5
	fmadd.d	$ft1, $ft2, $ft1, $fa0
	addi.d	$a0, $a0, -1
	fmadd.d	$fs5, $ft0, $ft1, $fs5
	bnez	$a0, .LBB0_18
.LBB0_19:                               # %._crit_edge350
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fst.d	$fa0, $s4, 16
	fsub.d	$fa0, $fa0, $fs6
	fld.d	$fa1, $s1, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(nulltime)
	fst.d	$fa0, $s4, 8
	fld.d	$fa3, $s3, %pc_lo12(piref)
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	fld.d	$fa4, $s5, %pc_lo12(three)
	fmsub.d	$fa0, $fa1, $fa0, $fa2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(A6)
	fld.d	$fa2, $s7, %pc_lo12(A5)
	fdiv.d	$fa3, $fa3, $fa4
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(A4)
	fmul.d	$fa5, $fa3, $fa3
	fmsub.d	$fa1, $fa1, $fa5, $fa2
	fld.d	$fa2, $s2, %pc_lo12(A3)
	fmadd.d	$fa1, $fa1, $fa5, $fa4
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(A2)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(A1)
	fmsub.d	$fa1, $fa1, $fa5, $fa2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(one)
	fmadd.d	$fa1, $fa1, $fa5, $fa4
	fmadd.d	$fa1, $fa1, $fa5, $fa6
	fst.d	$fa0, $s1, 72
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	fmul.d	$fa1, $fa3, $fa1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(two)
	vldi	$vr4, -975
	fdiv.d	$fa4, $fa0, $fa4
	fst.d	$fa4, $s1, 80
	fmadd.d	$fa1, $fa3, $fs5, $fa1
	fmul.d	$fa1, $fs4, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $s8, %pc_lo12(sa)
	lu52i.d	$a0, $zero, 1022
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(sb)
	vldi	$vr3, -800
	fadd.d	$fa1, $fa1, $fa3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(sc)
	fdiv.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $s1, 88
	fmul.d	$fa1, $fa1, $fs7
	fmul.d	$fa0, $fa0, $fs7
	fmul.d	$fa2, $fa2, $fs7
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a1, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(A3)
	fld.d	$fa1, $s7, %pc_lo12(A5)
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s2, %pc_lo12(A3)
	fneg.d	$fa0, $fa1
	fld.d	$fa1, $s5, %pc_lo12(three)
	fld.d	$fa2, $s3, %pc_lo12(piref)
	fld.d	$fs2, $s4, 16
	fst.d	$fa0, $s7, %pc_lo12(A5)
	fmul.d	$fa0, $fa1, $fs3
	fdiv.d	$fs4, $fa2, $fa0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs6, $fa1, $fs1, $fa0
	fst.d	$fs6, $s4, 16
	fsub.d	$fa0, $fs6, $fs2
	fst.d	$fa0, $s4, 8
	pcalau12i	$s6, %pc_hi20(B6)
	pcalau12i	$s5, %pc_hi20(B5)
	pcalau12i	$a0, %pc_hi20(B4)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(B3)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(B2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(B1)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	fmov.d	$fs5, $fs0
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB0_22
# %bb.20:                               # %.lr.ph356
	fld.d	$fa0, $s6, %pc_lo12(B6)
	fld.d	$fa1, $s5, %pc_lo12(B5)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(B4)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(B3)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(B2)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(B1)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(one)
	movgr2fr.d	$fs5, $zero
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movgr2fr.d	$fa7, $a0
	ffint.d.l	$fa7, $fa7
	fmul.d	$fa7, $fs4, $fa7
	fmul.d	$fa7, $fa7, $fa7
	fmadd.d	$ft0, $fa0, $fa7, $fa1
	fmadd.d	$ft0, $fa7, $ft0, $fa2
	fmadd.d	$ft0, $fa7, $ft0, $fa3
	fmadd.d	$ft0, $fa7, $ft0, $fa4
	fmadd.d	$ft0, $fa7, $ft0, $fa5
	fmadd.d	$fa7, $fa7, $ft0, $fs5
	addi.d	$a0, $a0, 1
	fadd.d	$fs5, $fa6, $fa7
	bne	$s0, $a0, .LBB0_21
.LBB0_22:                               # %._crit_edge357
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fst.d	$fa0, $s4, 16
	fld.d	$fa1, $s1, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(nulltime)
	fld.d	$fa3, $s3, %pc_lo12(piref)
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	fld.d	$fa4, $s8, %pc_lo12(three)
	fsub.d	$fa0, $fa0, $fs6
	fst.d	$fa0, $s4, 8
	fmsub.d	$fa0, $fa1, $fa0, $fa2
	fdiv.d	$fa1, $fa3, $fa4
	fld.d	$fa2, $s6, %pc_lo12(B6)
	fld.d	$fa3, $s5, %pc_lo12(B5)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(B4)
	fmul.d	$fa5, $fa1, $fa1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(B3)
	fmadd.d	$fa2, $fa2, $fa5, $fa3
	fmadd.d	$fa2, $fa5, $fa2, $fa4
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(B2)
	fmadd.d	$fa2, $fa5, $fa2, $fa6
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(B1)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(one)
	fmadd.d	$fa2, $fa5, $fa2, $fa3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(two)
	fmadd.d	$fa2, $fa5, $fa2, $fa4
	fmadd.d	$fa2, $fa5, $fa2, $fa6
	fadd.d	$fa2, $fa6, $fa2
	fmadd.d	$fa2, $fa3, $fs5, $fa2
	fmul.d	$fa2, $fs4, $fa2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(A6)
	fld.d	$fa7, $s7, %pc_lo12(A5)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$ft0, $a0, %pc_lo12(A4)
	fst.d	$fa0, $s1, 96
	fdiv.d	$fa2, $fa2, $fa3
	fmadd.d	$fa3, $fa4, $fa5, $fa7
	fmadd.d	$fa3, $fa3, $fa5, $ft0
	fld.d	$fa4, $s2, %pc_lo12(A3)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa7, $a0, %pc_lo12(A2)
	vldi	$vr8, -978
	fdiv.d	$ft0, $fa0, $ft0
	fmadd.d	$fa3, $fa3, $fa5, $fa4
	fmadd.d	$fa3, $fa3, $fa5, $fa7
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(A1)
	pcalau12i	$a0, %pc_hi20(A0)
	fld.d	$fa7, $a0, %pc_lo12(A0)
	fst.d	$ft0, $s1, 104
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	fst.d	$fa2, $a0, %pc_lo12(sa)
	fmadd.d	$fa3, $fa3, $fa5, $fa4
	fmadd.d	$fa3, $fa3, $fa5, $fa7
	fmul.d	$fa1, $fa1, $fa3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(sb)
	fsub.d	$fa1, $fa2, $fa1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(sc)
	fdiv.d	$fa2, $fa6, $ft0
	fst.d	$fa2, $s1, 112
	fmul.d	$fa1, $fa1, $fs7
	fmul.d	$fa0, $fa0, $fs7
	fmul.d	$fa2, $fa2, $fs7
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s8, %pc_lo12(three)
	fld.d	$fa1, $s3, %pc_lo12(piref)
	fld.d	$fs2, $s4, 16
	fmul.d	$fa0, $fa0, $fs3
	fdiv.d	$fs4, $fa1, $fa0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs6, $fa1, $fs1, $fa0
	fst.d	$fs6, $s4, 16
	fsub.d	$fa0, $fs6, $fs2
	ori	$a0, $zero, 2
	fst.d	$fa0, $s4, 8
	fmov.d	$fs5, $fs0
	blt	$s0, $a0, .LBB0_25
# %bb.23:                               # %.lr.ph363
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(A6)
	fld.d	$fa1, $s7, %pc_lo12(A5)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(A4)
	fld.d	$fa3, $s2, %pc_lo12(A3)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(A2)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(A1)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(one)
	fld.d	$fa7, $s6, %pc_lo12(B6)
	fld.d	$ft0, $s5, %pc_lo12(B5)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$ft1, $a0, %pc_lo12(B4)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$ft2, $a0, %pc_lo12(B3)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$ft3, $a0, %pc_lo12(B2)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$ft4, $a0, %pc_lo12(B1)
	movgr2fr.d	$fs5, $zero
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	movgr2fr.d	$ft5, $a0
	ffint.d.l	$ft5, $ft5
	fmul.d	$ft5, $fs4, $ft5
	fmul.d	$ft6, $ft5, $ft5
	fmadd.d	$ft7, $fa0, $ft6, $fa1
	fmadd.d	$ft7, $ft7, $ft6, $fa2
	fmadd.d	$ft7, $ft7, $ft6, $fa3
	fmadd.d	$ft7, $ft7, $ft6, $fa4
	fmadd.d	$ft7, $ft7, $ft6, $fa5
	fmadd.d	$ft7, $ft7, $ft6, $fa6
	fmul.d	$ft5, $ft5, $ft7
	fmadd.d	$ft7, $fa7, $ft6, $ft0
	fmadd.d	$ft7, $ft6, $ft7, $ft1
	fmadd.d	$ft7, $ft6, $ft7, $ft2
	fmadd.d	$ft7, $ft6, $ft7, $ft3
	fmadd.d	$ft7, $ft6, $ft7, $ft4
	fmadd.d	$ft6, $ft6, $ft7, $fa6
	fdiv.d	$ft5, $ft5, $ft6
	addi.d	$a0, $a0, 1
	fadd.d	$fs5, $fs5, $ft5
	bne	$s0, $a0, .LBB0_24
.LBB0_25:                               # %._crit_edge364
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fst.d	$fa0, $s4, 16
	fsub.d	$fa0, $fa0, $fs6
	fld.d	$fa1, $s1, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(nulltime)
	fst.d	$fa0, $s4, 8
	fld.d	$fa3, $s3, %pc_lo12(piref)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(three)
	fmsub.d	$fa0, $fa1, $fa0, $fa2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(A6)
	fld.d	$fa2, $s7, %pc_lo12(A5)
	fdiv.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa3, $fa3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(A4)
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	fld.d	$fa2, $s2, %pc_lo12(A3)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(A2)
	fmadd.d	$fa1, $fa1, $fa4, $fa5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(A1)
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	fmadd.d	$fa1, $fa1, $fa4, $fa6
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(one)
	fmadd.d	$fa1, $fa1, $fa4, $fa5
	fld.d	$fa5, $s6, %pc_lo12(B6)
	fld.d	$fa6, $s5, %pc_lo12(B5)
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	fmul.d	$fa1, $fa3, $fa1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(B4)
	fmadd.d	$fa5, $fa5, $fa4, $fa6
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(B3)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa7, $a0, %pc_lo12(B2)
	fmadd.d	$fa3, $fa4, $fa5, $fa3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(B1)
	fmadd.d	$fa3, $fa4, $fa3, $fa6
	fmadd.d	$fa3, $fa4, $fa3, $fa7
	fst.d	$fa0, $s1, 120
	fmadd.d	$fa3, $fa4, $fa3, $fa5
	fmadd.d	$fa3, $fa4, $fa3, $fa2
	fdiv.d	$fa1, $fa1, $fa3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(two)
	vldi	$vr4, -963
	fdiv.d	$fa4, $fa0, $fa4
	fst.d	$fa4, $s1, 128
	fmadd.d	$fa1, $fa3, $fs5, $fa1
	fmul.d	$fa1, $fs4, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	fst.d	$fa1, $s8, %pc_lo12(sa)
	lu12i.w	$a0, -4189
	ori	$a0, $a0, 2543
	lu32i.d	$a0, 405058
	lu52i.d	$a1, $a0, 1022
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(sb)
	lu52i.d	$a0, $a0, -1026
	movgr2fr.d	$fa3, $a0
	fadd.d	$fa1, $fa1, $fa3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(sc)
	fdiv.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $s1, 136
	fmul.d	$fa1, $fa1, $fs7
	fmul.d	$fa0, $fa0, $fs7
	fmul.d	$fa2, $fa2, $fs7
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(four)
	fld.d	$fa1, $s3, %pc_lo12(piref)
	fld.d	$fs2, $s4, 16
	fmul.d	$fa0, $fa0, $fs3
	fdiv.d	$fs4, $fa1, $fa0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs6, $fa1, $fs1, $fa0
	fst.d	$fs6, $s4, 16
	fsub.d	$fa0, $fs6, $fs2
	fst.d	$fa0, $s4, 8
	fmov.d	$fs5, $fs0
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB0_28
# %bb.26:                               # %.lr.ph370
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(A6)
	fld.d	$fa1, $s7, %pc_lo12(A5)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(A4)
	fld.d	$fa3, $s2, %pc_lo12(A3)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(A2)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(A1)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(one)
	fld.d	$fa7, $s6, %pc_lo12(B6)
	fld.d	$ft0, $s5, %pc_lo12(B5)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$ft1, $a0, %pc_lo12(B4)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$ft2, $a0, %pc_lo12(B3)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$ft3, $a0, %pc_lo12(B2)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$ft4, $a0, %pc_lo12(B1)
	movgr2fr.d	$fs5, $zero
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movgr2fr.d	$ft5, $a0
	ffint.d.l	$ft5, $ft5
	fmul.d	$ft5, $fs4, $ft5
	fmul.d	$ft6, $ft5, $ft5
	fmadd.d	$ft7, $fa0, $ft6, $fa1
	fmadd.d	$ft7, $ft7, $ft6, $fa2
	fmadd.d	$ft7, $ft7, $ft6, $fa3
	fmadd.d	$ft7, $ft7, $ft6, $fa4
	fmadd.d	$ft7, $ft7, $ft6, $fa5
	fmadd.d	$ft7, $ft7, $ft6, $fa6
	fmul.d	$ft5, $ft5, $ft7
	fmadd.d	$ft7, $fa7, $ft6, $ft0
	fmadd.d	$ft7, $ft6, $ft7, $ft1
	fmadd.d	$ft7, $ft6, $ft7, $ft2
	fmadd.d	$ft7, $ft6, $ft7, $ft3
	fmadd.d	$ft7, $ft6, $ft7, $ft4
	fmadd.d	$ft6, $ft6, $ft7, $fa6
	addi.d	$a0, $a0, 1
	fmadd.d	$fs5, $ft5, $ft6, $fs5
	bne	$s0, $a0, .LBB0_27
.LBB0_28:                               # %._crit_edge371
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fst.d	$fa0, $s4, 16
	fsub.d	$fa0, $fa0, $fs6
	fld.d	$fa1, $s1, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(nulltime)
	fst.d	$fa0, $s4, 8
	fld.d	$fa3, $s3, %pc_lo12(piref)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(four)
	fmsub.d	$fa0, $fa1, $fa0, $fa2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(A6)
	fld.d	$fa2, $s7, %pc_lo12(A5)
	fdiv.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa3, $fa3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(A4)
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	fld.d	$fa2, $s2, %pc_lo12(A3)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(A2)
	fmadd.d	$fa1, $fa1, $fa4, $fa5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(A1)
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	fmadd.d	$fa1, $fa1, $fa4, $fa6
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa2, $s3, %pc_lo12(one)
	fmadd.d	$fa1, $fa1, $fa4, $fa5
	fld.d	$fa5, $s6, %pc_lo12(B6)
	fld.d	$fa6, $s5, %pc_lo12(B5)
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	fmul.d	$fa1, $fa3, $fa1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(B4)
	fmadd.d	$fa5, $fa5, $fa4, $fa6
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(B3)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa7, $a0, %pc_lo12(B2)
	fmadd.d	$fa3, $fa4, $fa5, $fa3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(B1)
	fmadd.d	$fa3, $fa4, $fa3, $fa6
	fmadd.d	$fa3, $fa4, $fa3, $fa7
	fst.d	$fa0, $s1, 144
	fmadd.d	$fa3, $fa4, $fa3, $fa5
	fmadd.d	$fa3, $fa4, $fa3, $fa2
	fmul.d	$fa1, $fa1, $fa3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(two)
	vldi	$vr4, -963
	fdiv.d	$fa4, $fa0, $fa4
	fst.d	$fa4, $s1, 152
	fmadd.d	$fa1, $fa3, $fs5, $fa1
	fmul.d	$fa1, $fs4, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $s8, %pc_lo12(sa)
	lu52i.d	$a0, $zero, 1021
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(sb)
	vldi	$vr3, -816
	fadd.d	$fa1, $fa1, $fa3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(sc)
	fdiv.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $s1, 160
	fmul.d	$fa1, $fa1, $fs7
	fmul.d	$fa0, $fa0, $fs7
	fmul.d	$fa2, $fa2, $fs7
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fs4, $s3, %pc_lo12(one)
	lu12i.w	$a0, -32999
	ori	$a0, $a0, 676
	lu32i.d	$a0, -420543
	lu52i.d	$a0, $a0, 1029
	fld.d	$fs5, $s4, 16
	st.d	$a0, $s8, %pc_lo12(sa)
	movgr2fr.d	$fa0, $a0
	fdiv.d	$fs3, $fa0, $fs3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs2, $fa1, $fs1, $fa0
	fst.d	$fs2, $s4, 16
	fsub.d	$fa0, $fs2, $fs5
	ori	$s3, $zero, 2
	fst.d	$fa0, $s4, 8
	fmov.d	$fs5, $fs0
	blt	$s0, $s3, .LBB0_31
# %bb.29:                               # %.lr.ph377.preheader
	movgr2fr.d	$fs5, $zero
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph377
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fs3, $fa0
	fmul.d	$fa1, $fa0, $fa0
	fadd.d	$fa2, $fs4, $fa0
	fdiv.d	$fa2, $fs4, $fa2
	fsub.d	$fa2, $fs5, $fa2
	fadd.d	$fa3, $fs4, $fa1
	fdiv.d	$fa3, $fa0, $fa3
	fsub.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fs4
	fdiv.d	$fa0, $fa1, $fa0
	addi.d	$a0, $a0, 1
	fsub.d	$fs5, $fa2, $fa0
	bne	$s0, $a0, .LBB0_30
.LBB0_31:                               # %._crit_edge378
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $s1, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(nulltime)
	fst.d	$fa0, $s4, 16
	fsub.d	$fa0, $fa0, $fs2
	fst.d	$fa0, $s4, 8
	fmsub.d	$fa0, $fa1, $fa0, $fa2
	fst.d	$fa0, $s1, 168
	fld.d	$fa1, $s8, %pc_lo12(sa)
	vldi	$vr2, -984
	fdiv.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $s1, 176
	fmul.d	$fa3, $fa1, $fa1
	fneg.d	$fa4, $fs4
	fadd.d	$fa5, $fs4, $fa1
	fdiv.d	$fa5, $fs4, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fadd.d	$fa5, $fs4, $fa3
	fdiv.d	$fa5, $fa1, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmadd.d	$fa1, $fa1, $fa3, $fs4
	fdiv.d	$fa1, $fa3, $fa1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(two)
	fsub.d	$fa1, $fa4, $fa1
	vldi	$vr4, -974
	fmul.d	$fa4, $fs3, $fa4
	fmadd.d	$fa1, $fa3, $fs5, $fa1
	fmul.d	$fa1, $fa4, $fa1
	fst.d	$fa1, $s8, %pc_lo12(sa)
	ftintrz.l.d	$fa3, $fa1
	movfr2gr.d	$a0, $fa3
	addi.w	$a1, $zero, -2000
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	fld.d	$fa3, $a2, %pc_lo12(scale)
	mul.d	$a0, $a0, $a1
	movgr2fr.d	$fa4, $a0
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa3, $fa4, $fa3
	ftintrz.l.d	$fa3, $fa3
	movfr2gr.d	$s0, $fa3
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	lu32i.d	$a0, -48333
	lu52i.d	$a0, $a0, 1031
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa3, $a1, %pc_lo12(one)
	movgr2fr.d	$fa4, $a0
	fadd.d	$fa1, $fa1, $fa4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(sc)
	fdiv.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $s1, 184
	fmul.d	$fa1, $fa1, $fs7
	fmul.d	$fa0, $fa0, $fs7
	fmul.d	$fa2, $fa2, $fs7
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(piref)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(three)
	movgr2fr.d	$fa2, $s0
	fld.d	$fs2, $s4, 16
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fs3, $fa0, $fa1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fs4, $fa1, $fs1, $fa0
	fst.d	$fs4, $s4, 16
	fsub.d	$fa0, $fs4, $fs2
	fst.d	$fa0, $s4, 8
	blt	$s0, $s3, .LBB0_34
# %bb.32:                               # %.lr.ph384
	fld.d	$fa0, $s6, %pc_lo12(B6)
	fld.d	$fa1, $s5, %pc_lo12(B5)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(B4)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(B3)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(B2)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(B1)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(one)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa7, $a0, %pc_lo12(A6)
	fld.d	$ft0, $s7, %pc_lo12(A5)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$ft1, $a0, %pc_lo12(A4)
	fld.d	$ft2, $s2, %pc_lo12(A3)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fld.d	$ft3, $a0, %pc_lo12(A2)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.d	$ft4, $a0, %pc_lo12(A1)
	movgr2fr.d	$fs0, $zero
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	movgr2fr.d	$ft5, $a0
	ffint.d.l	$ft5, $ft5
	fmul.d	$ft5, $fs3, $ft5
	fmul.d	$ft6, $ft5, $ft5
	fmadd.d	$ft7, $fa0, $ft6, $fa1
	fmadd.d	$ft7, $ft6, $ft7, $fa2
	fmadd.d	$ft7, $ft6, $ft7, $fa3
	fmadd.d	$ft7, $ft6, $ft7, $fa4
	fmadd.d	$ft7, $ft6, $ft7, $fa5
	fmadd.d	$ft7, $ft6, $ft7, $fa6
	fmul.d	$ft7, $ft7, $ft7
	fmul.d	$ft5, $ft5, $ft7
	fmadd.d	$ft7, $fa7, $ft6, $ft0
	fmadd.d	$ft7, $ft7, $ft6, $ft1
	fmadd.d	$ft7, $ft7, $ft6, $ft2
	fmadd.d	$ft7, $ft7, $ft6, $ft3
	fmadd.d	$ft7, $ft7, $ft6, $ft4
	fmadd.d	$ft6, $ft7, $ft6, $fa6
	addi.d	$a0, $a0, 1
	fmadd.d	$fs0, $ft5, $ft6, $fs0
	bne	$s0, $a0, .LBB0_33
.LBB0_34:                               # %._crit_edge385
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fst.d	$fa0, $s4, 16
	fsub.d	$fa0, $fa0, $fs4
	fld.d	$fa1, $s1, 8
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	fld.d	$fa2, $s3, %pc_lo12(nulltime)
	fst.d	$fa0, $s4, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(piref)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	fld.d	$fa4, $a0, %pc_lo12(three)
	fmsub.d	$fa0, $fa1, $fa0, $fa2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(A6)
	fld.d	$fa2, $s7, %pc_lo12(A5)
	fdiv.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa3, $fa3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(A4)
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	fld.d	$fa2, $s2, %pc_lo12(A3)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(A2)
	fmadd.d	$fa1, $fa1, $fa4, $fa5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(A1)
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	fmadd.d	$fa1, $fa1, $fa4, $fa6
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa2, $fp, %pc_lo12(one)
	fmadd.d	$fa1, $fa1, $fa4, $fa5
	fld.d	$fa5, $s6, %pc_lo12(B6)
	fld.d	$fa6, $s5, %pc_lo12(B5)
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	fmul.d	$fa1, $fa3, $fa1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(B4)
	fmadd.d	$fa5, $fa5, $fa4, $fa6
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa6, $a0, %pc_lo12(B3)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa7, $a0, %pc_lo12(B2)
	fmadd.d	$fa3, $fa4, $fa5, $fa3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa5, $a0, %pc_lo12(B1)
	fmadd.d	$fa3, $fa4, $fa3, $fa6
	fmadd.d	$fa3, $fa4, $fa3, $fa7
	fst.d	$fa0, $s1, 192
	fmadd.d	$fa3, $fa4, $fa3, $fa5
	fmadd.d	$fa3, $fa4, $fa3, $fa2
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa1, $fa3, $fa1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(two)
	vldi	$vr4, -962
	fdiv.d	$fa4, $fa0, $fa4
	fst.d	$fa4, $s1, 200
	fmadd.d	$fa1, $fa3, $fs0, $fa1
	fmul.d	$fa1, $fs3, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $s8, %pc_lo12(sa)
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, 174762
	lu52i.d	$a1, $a0, 1021
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(sb)
	lu52i.d	$a0, $a0, -1027
	movgr2fr.d	$fa3, $a0
	fadd.d	$fa1, $fa1, $fa3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(sc)
	fdiv.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $s1, 208
	fmul.d	$fa1, $fa1, $fs7
	fmul.d	$fa0, $fa0, $fs7
	fmul.d	$fa2, $fa2, $fs7
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(five)
	fld.d	$fa1, $s1, 48
	fld.d	$fa2, $s1, 40
	fld.d	$fa3, $s1, 72
	fsub.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa1, $fa3
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -393216
	lu52i.d	$a1, $a1, 1028
	movgr2fr.d	$fa1, $a1
	fld.d	$fa2, $fp, %pc_lo12(one)
	fdiv.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $s1, 16
	fst.d	$fa0, $s1, 216
	fdiv.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s1, 224
	fadd.d	$fa0, $fa3, $fa1
	fld.d	$fa1, $s1, 96
	fld.d	$fa4, $s1, 120
	fld.d	$fa5, $s1, 144
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa6, $a1, %pc_lo12(four)
	fld.d	$fa7, $s1, 168
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa4
	fadd.d	$fa0, $fa0, $fa5
	fmadd.d	$fa4, $fa6, $fa7, $fa0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 196608
	lu52i.d	$a1, $a1, 1030
	movgr2fr.d	$fa6, $a1
	fdiv.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $s1, 232
	fld.d	$fa6, $s1, 192
	fdiv.d	$fa4, $fa2, $fa4
	fst.d	$fa4, $s1, 240
	fadd.d	$fa0, $fa0, $fa7
	fadd.d	$fa0, $fa0, $fa6
	ori	$a1, $zero, 0
	lu32i.d	$a1, 147456
	lu52i.d	$a1, $a1, 1030
	movgr2fr.d	$fa4, $a1
	fdiv.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $s1, 248
	fdiv.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s1, 256
	fadd.d	$fa0, $fa3, $fa1
	fadd.d	$fa0, $fa0, $fa5
	fadd.d	$fa0, $fa0, $fa6
	lu32i.d	$a0, 442368
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s1, 264
	fdiv.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s1, 272
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, %pc_lo12(nulltime)
	fmul.d	$fa0, $fa0, $fs7
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 224
	fmul.d	$fa0, $fa0, $fs7
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 240
	fmul.d	$fa0, $fa0, $fs7
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 256
	fmul.d	$fa0, $fa0, $fs7
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 272
	fmul.d	$fa0, $fa0, $fs7
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	dtime                           # -- Begin function dtime
	.p2align	5
	.type	dtime,@function
dtime:                                  # @dtime
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	fld.d	$fs0, $a0, 16
	pcalau12i	$a0, %pc_hi20(tnow)
	addi.d	$s0, $a0, %pc_lo12(tnow)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $fp, 16
	fsub.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $fp, 8
	move	$a0, $zero
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	dtime, .Lfunc_end1-dtime
                                        # -- End function
	.type	A0,@object                      # @A0
	.data
	.globl	A0
	.p2align	3, 0x0
A0:
	.dword	0x3ff0000000000000              # double 1
	.size	A0, 8

	.type	A1,@object                      # @A1
	.globl	A1
	.p2align	3, 0x0
A1:
	.dword	0xbfc5555555559705              # double -0.1666666666671334
	.size	A1, 8

	.type	A2,@object                      # @A2
	.globl	A2
	.p2align	3, 0x0
A2:
	.dword	0x3f811111113ae9a3              # double 0.0083333333380906701
	.size	A2, 8

	.type	A3,@object                      # @A3
	.globl	A3
	.p2align	3, 0x0
A3:
	.dword	0x3f2a01a03fb1ca71              # double 1.9841271555128299E-4
	.size	A3, 8

	.type	A4,@object                      # @A4
	.globl	A4
	.p2align	3, 0x0
A4:
	.dword	0x3ec71df284aa3566              # double 2.7557589750761998E-6
	.size	A4, 8

	.type	A5,@object                      # @A5
	.globl	A5
	.p2align	3, 0x0
A5:
	.dword	0x3e5aeb5a8cf8a426              # double 2.5070598762070001E-8
	.size	A5, 8

	.type	A6,@object                      # @A6
	.globl	A6
	.p2align	3, 0x0
A6:
	.dword	0x3de68df75229c1a6              # double 1.6410598668299999E-10
	.size	A6, 8

	.type	B0,@object                      # @B0
	.globl	B0
	.p2align	3, 0x0
B0:
	.dword	0x3ff0000000000000              # double 1
	.size	B0, 8

	.type	B1,@object                      # @B1
	.globl	B1
	.p2align	3, 0x0
B1:
	.dword	0xbfdfffffffff8156              # double -0.4999999999982
	.size	B1, 8

	.type	B2,@object                      # @B2
	.globl	B2
	.p2align	3, 0x0
B2:
	.dword	0x3fa5555555290224              # double 0.041666666646510003
	.size	B2, 8

	.type	B3,@object                      # @B3
	.globl	B3
	.p2align	3, 0x0
B3:
	.dword	0xbf56c16bffe76516              # double -0.0013888888057550001
	.size	B3, 8

	.type	B4,@object                      # @B4
	.globl	B4
	.p2align	3, 0x0
B4:
	.dword	0x3efa019528242db7              # double 2.4801428034E-5
	.size	B4, 8

	.type	B5,@object                      # @B5
	.globl	B5
	.p2align	3, 0x0
B5:
	.dword	0xbe927bb3d47ddb8e              # double -2.7542133240000001E-7
	.size	B5, 8

	.type	B6,@object                      # @B6
	.globl	B6
	.p2align	3, 0x0
B6:
	.dword	0x3e2157b275df182a              # double 2.0189404999999998E-9
	.size	B6, 8

	.type	C0,@object                      # @C0
	.globl	C0
	.p2align	3, 0x0
C0:
	.dword	0x3ff0000000000000              # double 1
	.size	C0, 8

	.type	C1,@object                      # @C1
	.globl	C1
	.p2align	3, 0x0
C1:
	.dword	0x3feffffffe37b3e2              # double 0.99999999667999995
	.size	C1, 8

	.type	C2,@object                      # @C2
	.globl	C2
	.p2align	3, 0x0
C2:
	.dword	0x3fdfffffcc2ba4b8              # double 0.49999995173
	.size	C2, 8

	.type	C3,@object                      # @C3
	.globl	C3
	.p2align	3, 0x0
C3:
	.dword	0x3fc555587c476915              # double 0.16666704243
	.size	C3, 8

	.type	C4,@object                      # @C4
	.globl	C4
	.p2align	3, 0x0
C4:
	.dword	0x3fa5555b7e795548              # double 0.04166685027
	.size	C4, 8

	.type	C5,@object                      # @C5
	.globl	C5
	.p2align	3, 0x0
C5:
	.dword	0x3f810d9a4ad9120c              # double 0.0083267263500000008
	.size	C5, 8

	.type	C6,@object                      # @C6
	.globl	C6
	.p2align	3, 0x0
C6:
	.dword	0x3f5713187edb8c05              # double 0.00140836136
	.size	C6, 8

	.type	C7,@object                      # @C7
	.globl	C7
	.p2align	3, 0x0
C7:
	.dword	0x3f26c077c8173f3a              # double 1.7358267000000001E-4
	.size	C7, 8

	.type	C8,@object                      # @C8
	.globl	C8
	.p2align	3, 0x0
C8:
	.dword	0x3f049d03fe04b1cf              # double 3.9316829999999998E-5
	.size	C8, 8

	.type	D1,@object                      # @D1
	.globl	D1
	.p2align	3, 0x0
D1:
	.dword	0x3fa47ae143138374              # double 0.039999999464050001
	.size	D1, 8

	.type	D2,@object                      # @D2
	.globl	D2
	.p2align	3, 0x0
D2:
	.dword	0x3f4f75104d551d69              # double 9.6000000000000002E-4
	.size	D2, 8

	.type	D3,@object                      # @D3
	.globl	D3
	.p2align	3, 0x0
D3:
	.dword	0x3eb4b05a0ff4a728              # double 1.2331530000000001E-6
	.size	D3, 8

	.type	E2,@object                      # @E2
	.globl	E2
	.p2align	3, 0x0
E2:
	.dword	0x3f3f75104d551d69              # double 4.8000000000000001E-4
	.size	E2, 8

	.type	E3,@object                      # @E3
	.globl	E3
	.p2align	3, 0x0
E3:
	.dword	0x3e9b95cd6a9b898a              # double 4.1105099999999999E-7
	.size	E3, 8

	.type	T,@object                       # @T
	.bss
	.globl	T
	.p2align	3, 0x0
T:
	.space	288
	.size	T, 288

	.type	TLimit,@object                  # @TLimit
	.globl	TLimit
	.p2align	3, 0x0
TLimit:
	.dword	0x0000000000000000              # double 0
	.size	TLimit, 8

	.type	piref,@object                   # @piref
	.globl	piref
	.p2align	3, 0x0
piref:
	.dword	0x0000000000000000              # double 0
	.size	piref, 8

	.type	one,@object                     # @one
	.globl	one
	.p2align	3, 0x0
one:
	.dword	0x0000000000000000              # double 0
	.size	one, 8

	.type	two,@object                     # @two
	.globl	two
	.p2align	3, 0x0
two:
	.dword	0x0000000000000000              # double 0
	.size	two, 8

	.type	three,@object                   # @three
	.globl	three
	.p2align	3, 0x0
three:
	.dword	0x0000000000000000              # double 0
	.size	three, 8

	.type	four,@object                    # @four
	.globl	four
	.p2align	3, 0x0
four:
	.dword	0x0000000000000000              # double 0
	.size	four, 8

	.type	five,@object                    # @five
	.globl	five
	.p2align	3, 0x0
five:
	.dword	0x0000000000000000              # double 0
	.size	five, 8

	.type	scale,@object                   # @scale
	.globl	scale
	.p2align	3, 0x0
scale:
	.dword	0x0000000000000000              # double 0
	.size	scale, 8

	.type	TimeArray,@object               # @TimeArray
	.globl	TimeArray
	.p2align	3, 0x0
TimeArray:
	.space	24
	.size	TimeArray, 24

	.type	sa,@object                      # @sa
	.globl	sa
	.p2align	3, 0x0
sa:
	.dword	0x0000000000000000              # double 0
	.size	sa, 8

	.type	nulltime,@object                # @nulltime
	.globl	nulltime
	.p2align	3, 0x0
nulltime:
	.dword	0x0000000000000000              # double 0
	.size	nulltime, 8

	.type	sb,@object                      # @sb
	.globl	sb
	.p2align	3, 0x0
sb:
	.dword	0x0000000000000000              # double 0
	.size	sb, 8

	.type	sc,@object                      # @sc
	.globl	sc
	.p2align	3, 0x0
sc:
	.dword	0x0000000000000000              # double 0
	.size	sc, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"     1   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str.4, 36

	.type	piprg,@object                   # @piprg
	.bss
	.globl	piprg
	.p2align	3, 0x0
piprg:
	.dword	0x0000000000000000              # double 0
	.size	piprg, 8

	.type	pierr,@object                   # @pierr
	.globl	pierr
	.p2align	3, 0x0
pierr:
	.dword	0x0000000000000000              # double 0
	.size	pierr, 8

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"     2   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"     3   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"     4   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str.7, 36

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"     5   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"     6   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"     7   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str.10, 36

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"     8   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str.11, 36

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"   Iterations      = %10ld\n"
	.size	.L.str.12, 28

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"   NullTime (usec) = %10.4lf\n"
	.size	.L.str.13, 30

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"   MFLOPS(1)       = %10.4lf\n"
	.size	.L.str.14, 30

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"   MFLOPS(2)       = %10.4lf\n"
	.size	.L.str.15, 30

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"   MFLOPS(3)       = %10.4lf\n"
	.size	.L.str.16, 30

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"   MFLOPS(4)       = %10.4lf\n\n"
	.size	.L.str.17, 31

	.type	tnow,@object                    # @tnow
	.bss
	.globl	tnow
	.p2align	3, 0x0
tnow:
	.space	16
	.size	tnow, 16

	.type	sd,@object                      # @sd
	.globl	sd
	.p2align	3, 0x0
sd:
	.dword	0x0000000000000000              # double 0
	.size	sd, 8

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\n"
	.size	.Lstr, 57

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"   Module     Error        RunTime      MFLOPS"
	.size	.Lstr.1, 47

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"                            (usec)"
	.size	.Lstr.2, 35

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tnow
