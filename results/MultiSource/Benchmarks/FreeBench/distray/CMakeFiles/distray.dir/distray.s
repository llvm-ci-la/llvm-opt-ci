	.file	"distray.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x406fe00000000000              # double 255
.LCPI0_1:
	.dword	0x407e000000000000              # double 480
.LCPI0_2:
	.dword	0x4084000000000000              # double 640
.LCPI0_3:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
.LCPI0_4:
	.dword	0x3f4999999999999a              # double 7.8125000000000004E-4
.LCPI0_5:
	.dword	0x3f51111111111111              # double 0.0010416666666666667
.LCPI0_6:
	.dword	0x41cfffffff800000              # double 1073741823
	.section	.text.unlikely.,"ax",@progbits
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 248                  # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.1:
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(DISTRIB)
	addi.d	$fp, $a2, %pc_lo12(DISTRIB)
	move	$s0, $a0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 640
	ori	$a3, $zero, 480
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(memory)
	addi.d	$s7, $a0, %pc_lo12(memory)
	blez	$s2, .LBB0_11
# %bb.2:                                # %.split45.i.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_2)
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Cameraright)
	addi.d	$a0, $a0, %pc_lo12(Cameraright)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Cameradir)
	addi.d	$a0, $a0, %pc_lo12(Cameradir)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Cameraup)
	addi.d	$s8, $a0, %pc_lo12(Cameraup)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	movgr2fr.d	$ft0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_3)
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	vldi	$vr10, -912
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_4)
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_5)
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(rnd)
	lu12i.w	$a0, 269412
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	fld.d	$ft3, $a1, %pc_lo12(.LCPI0_6)
	ori	$s4, $a0, 3693
	lu12i.w	$a0, 3
	ori	$s1, $a0, 57
	pcalau12i	$a0, %pc_hi20(Camerapos)
	addi.d	$s0, $a0, %pc_lo12(Camerapos)
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	move	$a1, $zero
	fst.d	$ft0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 136                  # 8-byte Folded Spill
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                # %.split.us.i
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$a0, $zero, 1920
	mul.d	$a0, $a1, $a0
	add.d	$a0, $s7, $a0
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fmul.d	$fa0, $fa0, $ft0
	fld.d	$fa1, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	ori	$a2, $zero, 1920
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	fld.d	$ft3, $sp, 136                  # 8-byte Folded Reload
	vldi	$vr10, -912
	fld.d	$ft0, $sp, 144                  # 8-byte Folded Reload
.LBB0_4:                                # %.split43.us.i
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ori	$a0, $zero, 480
	beq	$a1, $a0, .LBB0_12
.LBB0_5:                                # %.split45.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_10 Depth 3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	blez	$s2, .LBB0_3
# %bb.6:                                # %.split.i.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s3, $zero
	ori	$a0, $zero, 240
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fld.d	$fa1, $sp, 24                   # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a1, 2
	slli.d	$a0, $a0, 7
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB0_8 Depth=2
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fa0, $fa0
	frecip.d	$fa0, $fa0
	vreplvei.d	$vr1, $vr2, 0
	fmul.d	$fa1, $fa1, $fa0
	vreplvei.d	$vr2, $vr2, 1
	fmul.d	$fa2, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fs2
	fld.d	$fa3, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa3
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a0, $fa1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $s3, $a1
	alsl.d	$a1, $a1, $a1, 1
	add.d	$a2, $s7, $a1
	stx.b	$a0, $s7, $a1
	fmul.d	$fa1, $fa2, $fa3
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a0, $fa1
	st.b	$a0, $a2, 1
	fmul.d	$fa0, $fa0, $fa3
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	addi.d	$s3, $s3, 1
	st.b	$a0, $a2, 2
	ori	$a0, $zero, 640
	beq	$s3, $a0, .LBB0_4
.LBB0_8:                                # %.split.i
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_10 Depth 3
	fmov.d	$fs2, $ft0
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	blez	$s2, .LBB0_7
# %bb.9:                                # %.lr.ph.i
                                        #   in Loop: Header=BB0_8 Depth=2
	move	$s6, $zero
	addi.d	$a0, $s3, -320
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $s8, 0
	ffint.d.w	$fa0, $fa0
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa4
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	fld.d	$fa7, $sp, 88                   # 8-byte Folded Reload
	fmadd.d	$ft1, $fa3, $fa7, $fa1
	fld.d	$fa1, $a0, 8
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $s8, 8
	fld.d	$fa4, $a0, 16
	fld.d	$fa5, $a1, 16
	fld.d	$fa6, $s8, 16
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	fmadd.d	$ft4, $fa3, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $fa0, $fa5
	fmadd.d	$ft5, $fa6, $fa7, $fa0
	fabs.d	$fa0, $ft5
	fneg.d	$fa1, $ft1
	fmul.d	$fa2, $ft4, $ft5
	fmul.d	$fa3, $ft5, $fa1
	fmul.d	$fa4, $ft5, $fa3
	fneg.d	$fa5, $fa2
	fmul.d	$fa5, $ft5, $fa5
	fmul.d	$fa6, $fa3, $fa1
	fmadd.d	$fa6, $fa2, $ft4, $fa6
	fmul.d	$fa7, $ft4, $ft4
	fst.d	$ft1, $sp, 168                  # 8-byte Folded Spill
	fmadd.d	$fa7, $ft1, $ft1, $fa7
	fst.d	$ft5, $sp, 152                  # 8-byte Folded Spill
	fmadd.d	$fa7, $ft5, $ft5, $fa7
	fsqrt.d	$fa7, $fa7
	fld.d	$ft1, $sp, 56                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $ft1, $fa0
	fsel	$fa0, $fa1, $fa3, $fcc0
	fst.d	$ft4, $sp, 160                  # 8-byte Folded Spill
	fsel	$fs7, $ft4, $fa2, $fcc0
	fsel	$fs5, $ft2, $fa6, $fcc0
	fsel	$fs6, $ft0, $fa5, $fcc0
	fsel	$fs1, $ft0, $fa4, $fcc0
	fmov.d	$fs4, $fa0
	fmul.d	$fa0, $fa0, $fa0
	fmadd.d	$fa0, $fs7, $fs7, $fa0
	fsqrt.d	$fa0, $fa0
	fdiv.d	$fa0, $fa7, $fa0
	fld.d	$fa1, $sp, 48                   # 8-byte Folded Reload
	fmul.d	$fs3, $fa0, $fa1
	fmul.d	$fa0, $fs6, $fs6
	fmadd.d	$fa0, $fs1, $fs1, $fa0
	fmadd.d	$fa0, $fs5, $fs5, $fa0
	fsqrt.d	$fa0, $fa0
	fdiv.d	$fa0, $fa7, $fa0
	fld.d	$fa1, $sp, 40                   # 8-byte Folded Reload
	fmul.d	$fs0, $fa0, $fa1
	fmov.d	$fs2, $ft0
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB0_10:                               # %DistribVector.exit.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr2, $sp, 176                  # 16-byte Folded Spill
	ld.d	$a0, $s5, %pc_lo12(rnd)
	mul.d	$a0, $a0, $s4
	add.d	$a0, $a0, $s1
	bstrpick.d	$a1, $a0, 30, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $ft3
	fsub.d	$fa0, $ft2, $fa0
	fmul.d	$fa0, $fs3, $fa0
	fmul.d	$fa1, $fs7, $fa0
	fmul.d	$fa2, $fs4, $fa0
	fmul.d	$fa0, $fa0, $ft0
	mul.d	$a0, $a0, $s4
	add.d	$a0, $a0, $s1
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $s5, %pc_lo12(rnd)
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $ft3
	fsub.d	$fa3, $ft2, $fa3
	fmul.d	$fa3, $fs0, $fa3
	fmul.d	$fa4, $fs1, $fa3
	fmul.d	$fa5, $fs6, $fa3
	fmul.d	$fa3, $fs5, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fadd.d	$fa0, $fa0, $fa3
	fld.d	$fa3, $sp, 168                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $sp, 200
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $sp, 208
	fld.d	$fa1, $sp, 152                  # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 216
	addi.d	$a1, $sp, 200
	addi.d	$a2, $sp, 224
	ori	$a3, $zero, 6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TraceLine)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 176                  # 16-byte Folded Reload
	fld.d	$ft3, $sp, 136                  # 8-byte Folded Reload
	vldi	$vr10, -912
	fld.d	$ft0, $sp, 144                  # 8-byte Folded Reload
	vld	$vr0, $sp, 224
	fld.d	$fa1, $sp, 240
	ld.w	$s2, $fp, 0
	vfadd.d	$vr2, $vr2, $vr0
	addi.w	$s6, $s6, 1
	fadd.d	$fs2, $fs2, $fa1
	blt	$s6, $s2, .LBB0_10
	b	.LBB0_7
.LBB0_11:                               # %.split45.us.i
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	frecip.d	$fa0, $fa0
	movgr2fr.d	$fa2, $zero
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(memory)
	addi.d	$a0, $a0, %pc_lo12(memory)
	lu12i.w	$a2, 225
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_12:                               # %TraceScene.exit
	move	$s0, $zero
	lu12i.w	$a0, 224
	ori	$fp, $a0, 4093
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	move	$s1, $s0
	ldx.bu	$a0, $s7, $s0
	ld.d	$a1, $s2, 0
	add.d	$s0, $s7, $s0
	andi	$a0, $a0, 254
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 1
	ld.d	$a1, $s2, 0
	andi	$a0, $a0, 254
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 2
	ld.d	$a1, $s2, 0
	addi.d	$s0, $s1, 3
	andi	$a0, $a0, 254
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bltu	$s1, $fp, .LBB0_13
# %bb.14:
	move	$a0, $zero
	fld.d	$fs7, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB0_15:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function TraceLine
.LCPI1_0:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
.LCPI1_1:
	.dword	0x3fe45f306c8462a6              # double 0.63661977000000003
.LCPI1_2:
	.dword	0x41cfffffff800000              # double 1073741823
	.text
	.p2align	5
	.type	TraceLine,@function
TraceLine:                              # @TraceLine
# %bb.0:
	st.d	$zero, $a2, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 0
	beqz	$a3, .LBB1_23
# %bb.1:
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 424                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 368                  # 8-byte Folded Spill
	move	$s0, $a3
	move	$fp, $a2
	move	$s1, $a1
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	addi.d	$a2, $sp, 336
	addi.d	$a3, $sp, 312
	addi.d	$a4, $sp, 160
	pcaddu18i	$ra, %call36(IntersectObjs)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_0)
	fcmp.cule.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB1_7
# %bb.2:
	pcalau12i	$a0, %pc_hi20(Lightpos)
	addi.d	$a0, $a0, %pc_lo12(Lightpos)
	vld	$vr0, $a0, 0
	vld	$vr1, $sp, 336
	vfsub.d	$vr0, $vr0, $vr1
	fld.d	$fa1, $a0, 16
	fld.d	$fa2, $sp, 352
	vreplvei.d	$vr9, $vr0, 1
	vst	$vr0, $sp, 288
	fld.d	$fs1, $sp, 320
	fsub.d	$ft0, $fa1, $fa2
	fld.d	$fs2, $sp, 312
	fld.d	$fs3, $sp, 328
	fmul.d	$fa1, $ft1, $fs1
	vreplvei.d	$vr4, $vr0, 0
	fmadd.d	$fa0, $fa4, $fs2, $fa1
	fmadd.d	$fa0, $ft0, $fs3, $fa0
	movgr2fr.d	$fa3, $zero
	fcmp.cule.d	$fcc0, $fa0, $fa3
	fst.d	$ft0, $sp, 304
	bcnez	$fcc0, .LBB1_17
# %bb.3:
	ori	$a0, $zero, 4
	bltu	$s0, $a0, .LBB1_11
# %bb.4:
	pcalau12i	$s2, %pc_hi20(DISTRIB)
	ld.w	$a0, $s2, %pc_lo12(DISTRIB)
	blez	$a0, .LBB1_17
# %bb.5:                                # %.lr.ph
	fst.d	$fa3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	move	$s3, $zero
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(Lightr)
	fld.d	$fa0, $a0, %pc_lo12(Lightr)
	fmul.d	$fa1, $ft1, $ft1
	fmadd.d	$fa1, $fa4, $fa4, $fa1
	fmadd.d	$fa1, $ft0, $ft0, $fa1
	fsqrt.d	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fabs.d	$fa2, $ft0
	vst	$vr4, $sp, 16                   # 16-byte Folded Spill
	fneg.d	$fa3, $fa4
	fmul.d	$fa4, $ft1, $ft0
	fmul.d	$fa5, $ft0, $fa3
	fmul.d	$fa6, $ft0, $fa5
	fneg.d	$fa7, $fa4
	fst.d	$ft0, $sp, 40                   # 8-byte Folded Spill
	fmul.d	$fa7, $ft0, $fa7
	fmul.d	$ft0, $fa5, $fa3
	fmadd.d	$ft0, $fa4, $ft1, $ft0
	fcmp.clt.d	$fcc0, $fs4, $fa2
	fsel	$fa2, $fa3, $fa5, $fcc0
	vst	$vr9, $sp, 48                   # 16-byte Folded Spill
	fsel	$fa3, $ft1, $fa4, $fcc0
	vldi	$vr4, -912
	fsel	$fa4, $fa4, $ft0, $fcc0
	movgr2fr.d	$fs2, $zero
	fsel	$fa5, $fs2, $fa7, $fcc0
	fsel	$fs5, $fs2, $fa6, $fcc0
	fst.d	$fa2, $sp, 120                  # 8-byte Folded Spill
	fmul.d	$fa2, $fa2, $fa2
	fst.d	$fa3, $sp, 112                  # 8-byte Folded Spill
	fmadd.d	$fa2, $fa3, $fa3, $fa2
	fsqrt.d	$fa2, $fa2
	fdiv.d	$fa2, $fa1, $fa2
	fmul.d	$fs6, $fa0, $fa2
	fmov.d	$fs1, $fa5
	fmul.d	$fa2, $fa5, $fa5
	fmadd.d	$fa2, $fs5, $fs5, $fa2
	fmov.d	$fs3, $fa4
	fmadd.d	$fa2, $fa4, $fa4, $fa2
	fsqrt.d	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fmul.d	$fs0, $fa0, $fa1
	pcalau12i	$s5, %pc_hi20(rnd)
	lu12i.w	$a0, 269412
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	fld.d	$fs7, $a1, %pc_lo12(.LCPI1_2)
	ori	$s6, $a0, 3693
	lu12i.w	$a0, 3
	ori	$s7, $a0, 57
	.p2align	4, , 16
.LBB1_6:                                # %DistribVector.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, %pc_lo12(rnd)
	mul.d	$a0, $a0, $s6
	add.d	$a0, $a0, $s7
	bstrpick.d	$a1, $a0, 30, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs7
	vldi	$vr1, -912
	fsub.d	$fa0, $fa1, $fa0
	vldi	$vr4, -912
	fmul.d	$fa0, $fs6, $fa0
	fld.d	$fa1, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa0
	fld.d	$fa2, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fs2
	mul.d	$a0, $a0, $s6
	add.d	$a0, $a0, $s7
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $s5, %pc_lo12(rnd)
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fs7
	fsub.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fs0, $fa3
	fmul.d	$fa4, $fs5, $fa3
	fmul.d	$fa5, $fs1, $fa3
	fmul.d	$fa3, $fs3, $fa3
	ld.d	$a0, $sp, 288
	fadd.d	$fa1, $fa1, $fa4
	fadd.d	$fa2, $fa2, $fa5
	vld	$vr4, $sp, 296
	st.d	$a0, $sp, 264
	fld.d	$fa5, $sp, 264
	fadd.d	$fa0, $fa0, $fa3
	vst	$vr4, $sp, 272
	fld.d	$fa3, $sp, 272
	fadd.d	$fa1, $fa5, $fa1
	fld.d	$fa4, $sp, 280
	fst.d	$fa1, $sp, 264
	fadd.d	$fa1, $fa3, $fa2
	fst.d	$fa1, $sp, 272
	fadd.d	$fa0, $fa4, $fa0
	fst.d	$fa0, $sp, 280
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 264
	addi.d	$a2, $sp, 192
	addi.d	$a3, $sp, 168
	addi.d	$a4, $sp, 152
	pcaddu18i	$ra, %call36(IntersectObjs)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fa0, $fs4
	vldi	$vr1, -912
	fcmp.clt.d	$fcc1, $fa1, $fa0
	ld.w	$a0, $s2, %pc_lo12(DISTRIB)
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	or	$a1, $a1, $a2
	addi.w	$s4, $s4, 1
	add.w	$s3, $s3, $a1
	blt	$s4, $a0, .LBB1_6
	b	.LBB1_14
.LBB1_7:
	fld.d	$fa0, $s1, 8
	fld.d	$fa1, $s1, 0
	fmul.d	$fa0, $fa0, $fa0
	fmadd.d	$fa0, $fa1, $fa1, $fa0
	movgr2fr.d	$fa1, $zero
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_9
# %bb.8:
	fld.d	$fa1, $s1, 16
	fsqrt.d	$fa0, $fa0
	fabs.d	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_1)
	fmul.d	$fa1, $fa0, $fa1
	b	.LBB1_10
.LBB1_9:
	vldi	$vr1, -912
.LBB1_10:
	pcalau12i	$a0, %pc_hi20(Skycolor)
	addi.d	$a0, $a0, %pc_lo12(Skycolor)
	fld.d	$fa0, $a0, 0
	fld.d	$fa2, $a0, 24
	vldi	$vr3, -912
	fsub.d	$fa3, $fa3, $fa1
	fmul.d	$fa0, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa0, $fp, 0
	vld	$vr2, $a0, 8
	vld	$vr4, $a0, 32
	vreplvei.d	$vr3, $vr3, 0
	vfmul.d	$vr2, $vr3, $vr2
	vreplvei.d	$vr1, $vr1, 0
	vfmadd.d	$vr2, $vr4, $vr1, $vr2
	b	.LBB1_33
.LBB1_11:
	vst	$vr4, $sp, 16                   # 16-byte Folded Spill
	fst.d	$ft0, $sp, 40                   # 8-byte Folded Spill
	vst	$vr9, $sp, 48                   # 16-byte Folded Spill
	fst.d	$fa3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 288
	addi.d	$a2, $sp, 192
	addi.d	$a3, $sp, 168
	addi.d	$a4, $sp, 152
	pcaddu18i	$ra, %call36(IntersectObjs)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(DISTRIB)
	ld.w	$s3, $a0, %pc_lo12(DISTRIB)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB1_14
# %bb.12:
	vldi	$vr1, -912
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB1_14
# %bb.13:
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fa3, $sp, 80                   # 8-byte Folded Reload
	b	.LBB1_17
.LBB1_14:                               # %select.unfold
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fa3, $sp, 80                   # 8-byte Folded Reload
	blez	$s3, .LBB1_17
# %bb.15:
	fmul.d	$fa0, $fs1, $fs1
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fmadd.d	$fa0, $fs3, $fs3, $fa0
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa1
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	fld.d	$fa2, $sp, 40                   # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_36
.LBB1_16:                               # %.split
	ld.d	$a0, $sp, 160
	fld.d	$fa1, $a0, 24
	fld.d	$fa2, $sp, 72                   # 8-byte Folded Reload
	fdiv.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fa1
	bstrpick.d	$a0, $s3, 31, 0
	pcalau12i	$a1, %pc_hi20(DISTRIB)
	ld.w	$a1, $a1, %pc_lo12(DISTRIB)
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa3, $fa0, $fa1
.LBB1_17:                               # %.thread
	ld.d	$s2, $sp, 160
	pcalau12i	$a0, %pc_hi20(Ambient)
	fld.d	$fa0, $a0, %pc_lo12(Ambient)
	fld.d	$fa1, $s2, 0
	fadd.d	$fa0, $fa3, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $fp, 0
	fld.d	$fa1, $a0, %pc_lo12(Ambient)
	fld.d	$fa2, $s2, 8
	fadd.d	$fa1, $fa3, $fa1
	fmul.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $fp, 8
	fld.d	$fa3, $s2, 16
	fmul.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $fp, 16
	fld.d	$fa3, $s2, 32
	fcmp.cule.d	$fcc0, $fa3, $fs4
	bceqz	$fcc0, .LBB1_24
# %bb.18:
	vldi	$vr3, -912
	fcmp.cule.d	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB1_34
.LBB1_19:
	vldi	$vr0, -912
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bceqz	$fcc0, .LBB1_35
.LBB1_20:
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_22
.LBB1_21:
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, 16
.LBB1_22:
	fld.d	$fs7, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 416                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 424                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
.LBB1_23:
	ret
.LBB1_24:
	fmul.d	$fa0, $fs1, $fs1
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fld.d	$fa2, $s1, 8
	fld.d	$fa1, $s1, 0
	fld.d	$fa3, $s1, 16
	fmadd.d	$fa0, $fs3, $fs3, $fa0
	fmul.d	$fa4, $fs1, $fa2
	fmadd.d	$fa4, $fa1, $fs2, $fa4
	fmadd.d	$fa4, $fa3, $fs3, $fa4
	vldi	$vr5, -896
	fmul.d	$fa4, $fa4, $fa5
	fdiv.d	$fa4, $fa4, $fa0
	fmadd.d	$fa1, $fa4, $fs2, $fa1
	fst.d	$fa1, $sp, 264
	fmadd.d	$fa0, $fa4, $fs1, $fa2
	fst.d	$fa0, $sp, 272
	fmadd.d	$fa2, $fa4, $fs3, $fa3
	ori	$a0, $zero, 4
	fst.d	$fa2, $sp, 280
	bltu	$s0, $a0, .LBB1_29
# %bb.25:
	fld.d	$fa3, $s2, 40
	fcmp.cule.d	$fcc0, $fa3, $fs4
	bcnez	$fcc0, .LBB1_29
# %bb.26:                               # %.preheader
	pcalau12i	$s1, %pc_hi20(DISTRIB)
	ld.w	$a0, $s1, %pc_lo12(DISTRIB)
	blez	$a0, .LBB1_30
# %bb.27:                               # %.lr.ph93
	move	$s3, $zero
	fabs.d	$fa3, $fa2
	fneg.d	$fa4, $fa1
	fmul.d	$fa5, $fa2, $fa0
	fmul.d	$fa6, $fa2, $fa4
	fmul.d	$fa7, $fa2, $fa6
	fneg.d	$ft0, $fa5
	fmul.d	$ft0, $fa2, $ft0
	fmul.d	$ft1, $fa6, $fa4
	fmadd.d	$ft1, $fa5, $fa0, $ft1
	fmul.d	$ft2, $fa0, $fa0
	fmadd.d	$fa1, $fa1, $fa1, $ft2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	fsqrt.d	$fa1, $fa1
	addi.w	$s0, $s0, -1
	fcmp.clt.d	$fcc0, $fs4, $fa3
	fsel	$fa2, $fa4, $fa6, $fcc0
	fsel	$fa3, $fa0, $fa5, $fcc0
	vldi	$vr0, -912
	fsel	$fa4, $fa0, $ft1, $fcc0
	movgr2fr.d	$fs3, $zero
	fsel	$fs4, $fs3, $ft0, $fcc0
	fsel	$fs5, $fs3, $fa7, $fcc0
	fst.d	$fa2, $sp, 120                  # 8-byte Folded Spill
	fmul.d	$fa0, $fa2, $fa2
	fst.d	$fa3, $sp, 112                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fa3, $fa0
	fsqrt.d	$fa0, $fa0
	fdiv.d	$fs6, $fa1, $fa0
	fmul.d	$fa0, $fs4, $fs4
	fmadd.d	$fa0, $fs5, $fs5, $fa0
	fmov.d	$fs2, $fa4
	fmadd.d	$fa0, $fa4, $fa4, $fa0
	fsqrt.d	$fa0, $fa0
	fdiv.d	$fs0, $fa1, $fa0
	vrepli.b	$vr2, 0
	pcalau12i	$s4, %pc_hi20(rnd)
	lu12i.w	$a0, 269412
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI1_2)
	ori	$s5, $a0, 3693
	lu12i.w	$a0, 3
	ori	$s6, $a0, 57
	fmov.d	$fs7, $fs3
	.p2align	4, , 16
.LBB1_28:                               # %DistribVector.exit80
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr2, $sp, 128                  # 16-byte Folded Spill
	fld.d	$fa0, $s2, 40
	ld.d	$a0, $s4, %pc_lo12(rnd)
	fmul.d	$fa1, $fa0, $fs6
	mul.d	$a0, $a0, $s5
	add.d	$a0, $a0, $s6
	bstrpick.d	$a1, $a0, 30, 0
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fs1
	vldi	$vr5, -912
	fsub.d	$fa2, $fa5, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa1
	fld.d	$fa3, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa3, $fa3, $fa1
	fmul.d	$fa1, $fa1, $fs3
	fmul.d	$fa0, $fa0, $fs0
	mul.d	$a0, $a0, $s5
	add.d	$a0, $a0, $s6
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $s4, %pc_lo12(rnd)
	movgr2fr.w	$fa4, $a0
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fs1
	fsub.d	$fa4, $fa5, $fa4
	fmul.d	$fa0, $fa0, $fa4
	fmul.d	$fa4, $fs5, $fa0
	fmul.d	$fa5, $fs4, $fa0
	fmul.d	$fa0, $fs2, $fa0
	ld.d	$a0, $sp, 264
	fadd.d	$fa2, $fa2, $fa4
	fadd.d	$fa3, $fa3, $fa5
	vld	$vr4, $sp, 272
	st.d	$a0, $sp, 240
	fld.d	$fa5, $sp, 240
	fadd.d	$fa0, $fa1, $fa0
	vst	$vr4, $sp, 248
	fld.d	$fa1, $sp, 248
	fadd.d	$fa2, $fa5, $fa2
	fld.d	$fa4, $sp, 256
	fst.d	$fa2, $sp, 240
	fadd.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $sp, 248
	fadd.d	$fa0, $fa4, $fa0
	fst.d	$fa0, $sp, 256
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 240
	addi.d	$a2, $sp, 216
	move	$a3, $s0
	pcaddu18i	$ra, %call36(TraceLine)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	fld.d	$fa0, $sp, 216
	vld	$vr1, $sp, 224
	ld.w	$a0, $s1, %pc_lo12(DISTRIB)
	fadd.d	$fs7, $fa0, $fs7
	addi.w	$s3, $s3, 1
	vfadd.d	$vr2, $vr1, $vr2
	blt	$s3, $a0, .LBB1_28
	b	.LBB1_31
.LBB1_29:
	addi.w	$a3, $s0, -1
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 264
	addi.d	$a2, $sp, 240
	pcaddu18i	$ra, %call36(TraceLine)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 240
	vld	$vr1, $sp, 248
	b	.LBB1_32
.LBB1_30:
	movgr2fr.d	$fs7, $zero
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
.LBB1_31:                               # %._crit_edge
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	frecip.d	$fa1, $fa0
	fmul.d	$fa0, $fa1, $fs7
	vreplvei.d	$vr1, $vr1, 0
	vfmul.d	$vr1, $vr1, $vr2
.LBB1_32:
	fld.d	$fa2, $s2, 32
	fld.d	$fa3, $fp, 0
	vld	$vr4, $fp, 8
	fmadd.d	$fa0, $fa0, $fa2, $fa3
	fst.d	$fa0, $fp, 0
	vreplvei.d	$vr2, $vr2, 0
	vfmadd.d	$vr2, $vr1, $vr2, $vr4
.LBB1_33:                               # %.sink.split
	vreplvei.d	$vr1, $vr2, 0
	fst.d	$fa1, $fp, 8
	vreplvei.d	$vr1, $vr2, 1
	vstelm.d	$vr2, $fp, 16, 1
	vreplvei.d	$vr2, $vr2, 0
	vldi	$vr3, -912
	fcmp.cule.d	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB1_19
.LBB1_34:
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, 0
	vldi	$vr0, -912
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_20
.LBB1_35:
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, 8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB1_21
	b	.LBB1_22
.LBB1_36:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB1_16
.Lfunc_end1:
	.size	TraceLine, .Lfunc_end1-TraceLine
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function IntersectObjs
.LCPI2_0:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
.LCPI2_1:
	.dword	0x40f86a0000000000              # double 1.0E+5
	.text
	.p2align	5
	.type	IntersectObjs,@function
IntersectObjs:                          # @IntersectObjs
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 72                   # 8-byte Folded Spill
	fld.d	$fs1, $a1, 16
	pcalau12i	$a5, %pc_hi20(.LCPI2_0)
	fld.d	$fa4, $a5, %pc_lo12(.LCPI2_0)
	fabs.d	$fa0, $fs1
	fcmp.cule.d	$fcc0, $fa0, $fa4
	bcnez	$fcc0, .LBB2_4
# %bb.1:
	pcalau12i	$a5, %pc_hi20(Groundpos)
	fld.d	$fa1, $a5, %pc_lo12(Groundpos)
	fld.d	$fa0, $a0, 16
	fsub.d	$fa1, $fa1, $fa0
	fdiv.d	$ft2, $fa1, $fs1
	fcmp.cule.d	$fcc0, $ft2, $fa4
	bcnez	$fcc0, .LBB2_4
# %bb.2:
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI2_1)
	fcmp.cule.d	$fcc0, $fa1, $ft2
	bcnez	$fcc0, .LBB2_4
# %bb.3:
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, 0
	vreplvei.d	$vr3, $vr10, 0
	vfmadd.d	$vr1, $vr2, $vr3, $vr1
	vst	$vr1, $a2, 0
	fmadd.d	$fa0, $fs1, $ft2, $fa0
	fst.d	$fa0, $a2, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a3, 0
	lu52i.d	$a5, $zero, 1023
	st.d	$a5, $a3, 16
	vld	$vr0, $a2, 0
	ori	$a5, $zero, 0
	lu32i.d	$a5, -497152
	lu52i.d	$a5, $a5, 1038
	vreplgr2vr.d	$vr1, $a5
	vfadd.d	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a5, $fa1
	vinsgr2vr.w	$vr1, $a5, 0
	vreplvei.d	$vr0, $vr0, 1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	vinsgr2vr.w	$vr0, $a5, 0
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	andi	$a6, $a5, 1
	slli.d	$a6, $a6, 5
	bstrins.d	$a6, $a5, 4, 4
	pcalau12i	$a5, %pc_hi20(Groundtxt)
	addi.d	$a5, $a5, %pc_lo12(Groundtxt)
	fld.d	$fs1, $a1, 16
	add.d	$a5, $a5, $a6
	st.d	$a5, $a4, 0
	b	.LBB2_5
.LBB2_4:
	vldi	$vr10, -784
.LBB2_5:
	pcalau12i	$a5, %pc_hi20(objs)
	addi.d	$fp, $a5, %pc_lo12(objs)
	fld.d	$fa0, $fp, 0
	fld.d	$fa7, $a0, 0
	fld.d	$fa1, $fp, 8
	fld.d	$fa2, $fp, 16
	fsub.d	$fs5, $fa0, $fa7
	fld.d	$ft0, $a0, 8
	fld.d	$ft1, $a0, 16
	fld.d	$fa6, $a1, 8
	fld.d	$fs4, $a1, 0
	fsub.d	$fs7, $fa1, $ft0
	fsub.d	$fs6, $fa2, $ft1
	fmul.d	$fa0, $fa6, $fa6
	fmadd.d	$fa0, $fs4, $fs4, $fa0
	fmadd.d	$fa0, $fs1, $fs1, $fa0
	frecip.d	$fs0, $fa0
	fmul.d	$fa0, $fs7, $fa6
	fmadd.d	$fa0, $fs5, $fs4, $fa0
	fmadd.d	$fa0, $fs6, $fs1, $fa0
	fld.d	$fa1, $fp, 24
	fmul.d	$fs2, $fa0, $fs0
	fneg.d	$fa0, $fs5
	fmul.d	$fa0, $fs5, $fa0
	fmadd.d	$fa0, $fa1, $fa1, $fa0
	fneg.d	$fa1, $fs7
	fmadd.d	$fa0, $fa1, $fs7, $fa0
	fneg.d	$fa1, $fs6
	fmadd.d	$fa0, $fa1, $fs6, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	movgr2fr.d	$fa5, $zero
	fcmp.cule.d	$fcc0, $fa0, $fa5
	bcnez	$fcc0, .LBB2_10
# %bb.6:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB2_33
.LBB2_7:                                # %.split
	fsub.d	$fa0, $fs2, $fa1
	fadd.d	$fa1, $fs2, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa4
	fsel	$fs2, $fa0, $fa1, $fcc0
	fcmp.cule.d	$fcc0, $fs2, $fa4
	bcnez	$fcc0, .LBB2_10
# %bb.8:
	fcmp.clt.d	$fcc0, $ft2, $fa5
	bcnez	$fcc0, .LBB2_30
# %bb.9:
	fcmp.cule.d	$fcc0, $ft2, $fs2
	bceqz	$fcc0, .LBB2_30
.LBB2_10:
	fmov.d	$fs2, $ft2
.LBB2_11:
	fld.d	$fa0, $fp, 80
	fld.d	$fa1, $fp, 88
	fld.d	$fa2, $fp, 96
	fsub.d	$fs3, $fa0, $fa7
	fsub.d	$fs7, $fa1, $ft0
	fsub.d	$fs6, $fa2, $ft1
	fmul.d	$fa0, $fs7, $fa6
	fmadd.d	$fa0, $fs3, $fs4, $fa0
	fmadd.d	$fa0, $fs6, $fs1, $fa0
	fld.d	$fa1, $fp, 104
	fmul.d	$fs5, $fa0, $fs0
	fneg.d	$fa0, $fs3
	fmul.d	$fa0, $fs3, $fa0
	fmadd.d	$fa0, $fa1, $fa1, $fa0
	fneg.d	$fa1, $fs7
	fmadd.d	$fa0, $fa1, $fs7, $fa0
	fneg.d	$fa1, $fs6
	fmadd.d	$fa0, $fa1, $fs6, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs5, $fs5, $fa0
	fcmp.cule.d	$fcc0, $fa0, $fa5
	bcnez	$fcc0, .LBB2_16
# %bb.12:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB2_34
.LBB2_13:                               # %.split148
	fsub.d	$fa0, $fs5, $fa1
	fadd.d	$fa1, $fs5, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa4
	fsel	$fs5, $fa0, $fa1, $fcc0
	fcmp.cule.d	$fcc0, $fs5, $fa4
	bcnez	$fcc0, .LBB2_16
# %bb.14:
	fcmp.clt.d	$fcc0, $fs2, $fa5
	bcnez	$fcc0, .LBB2_31
# %bb.15:
	fcmp.cule.d	$fcc0, $fs2, $fs5
	bceqz	$fcc0, .LBB2_31
.LBB2_16:
	fmov.d	$fs5, $fs2
.LBB2_17:
	fld.d	$fa0, $fp, 160
	fld.d	$fa1, $fp, 168
	fld.d	$fa2, $fp, 176
	fsub.d	$fs3, $fa0, $fa7
	fsub.d	$fs6, $fa1, $ft0
	fsub.d	$fs2, $fa2, $ft1
	fmul.d	$fa0, $fs6, $fa6
	fmadd.d	$fa0, $fs3, $fs4, $fa0
	fmadd.d	$fa0, $fs2, $fs1, $fa0
	fld.d	$fa1, $fp, 184
	fmul.d	$fs7, $fa0, $fs0
	fneg.d	$fa0, $fs3
	fmul.d	$fa0, $fs3, $fa0
	fmadd.d	$fa0, $fa1, $fa1, $fa0
	fneg.d	$fa1, $fs6
	fmadd.d	$fa0, $fa1, $fs6, $fa0
	fneg.d	$fa1, $fs2
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs7, $fs7, $fa0
	fcmp.cule.d	$fcc0, $fa0, $fa5
	bcnez	$fcc0, .LBB2_22
# %bb.18:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB2_35
.LBB2_19:                               # %.split150
	fsub.d	$fa0, $fs7, $fa1
	fadd.d	$fa1, $fs7, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa4
	fsel	$fa0, $fa0, $fa1, $fcc0
	fcmp.cule.d	$fcc0, $fa0, $fa4
	bcnez	$fcc0, .LBB2_22
# %bb.20:
	fcmp.clt.d	$fcc0, $fs5, $fa5
	bcnez	$fcc0, .LBB2_32
# %bb.21:
	fcmp.cule.d	$fcc0, $fs5, $fa0
	bceqz	$fcc0, .LBB2_32
.LBB2_22:
	fmov.d	$fa0, $fs5
.LBB2_23:
	fld.d	$fa1, $fp, 240
	fld.d	$fa2, $fp, 248
	fld.d	$fa3, $fp, 256
	fsub.d	$fs6, $fa1, $fa7
	fsub.d	$fs5, $fa2, $ft0
	fsub.d	$fs2, $fa3, $ft1
	fmul.d	$fa1, $fs5, $fa6
	fmadd.d	$fa1, $fs6, $fs4, $fa1
	fmadd.d	$fa1, $fs2, $fs1, $fa1
	fld.d	$fa2, $fp, 264
	fmul.d	$fs3, $fa1, $fs0
	fneg.d	$fa1, $fs6
	fmul.d	$fa1, $fs6, $fa1
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	fneg.d	$fa2, $fs5
	fmadd.d	$fa1, $fa2, $fs5, $fa1
	fneg.d	$fa2, $fs2
	fmadd.d	$fa1, $fa2, $fs2, $fa1
	fmul.d	$fa1, $fs0, $fa1
	fmadd.d	$fa1, $fs3, $fs3, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa5
	bcnez	$fcc0, .LBB2_29
# %bb.24:
	fsqrt.d	$fa2, $fa1
	fcmp.cor.d	$fcc0, $fa2, $fa2
	bceqz	$fcc0, .LBB2_36
.LBB2_25:                               # %.split152
	fsub.d	$fa1, $fs3, $fa2
	fadd.d	$fa2, $fs3, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa4
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.cule.d	$fcc0, $fa1, $fa4
	bcnez	$fcc0, .LBB2_29
# %bb.26:
	fcmp.clt.d	$fcc0, $fa0, $fa5
	bcnez	$fcc0, .LBB2_28
# %bb.27:
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_29
.LBB2_28:
	fmul.d	$fa0, $fs4, $fa1
	fst.d	$fa0, $a2, 0
	fmul.d	$fa2, $fa6, $fa1
	fst.d	$fa2, $a2, 8
	fmul.d	$fa3, $fs1, $fa1
	fst.d	$fa3, $a2, 16
	fsub.d	$fa0, $fa0, $fs6
	fst.d	$fa0, $a3, 0
	fsub.d	$fa0, $fa2, $fs5
	fst.d	$fa0, $a3, 8
	fsub.d	$fa0, $fa3, $fs2
	fst.d	$fa0, $a3, 16
	vld	$vr0, $a0, 0
	vld	$vr2, $a2, 0
	vfadd.d	$vr0, $vr0, $vr2
	vst	$vr0, $a2, 0
	fld.d	$fa0, $a0, 16
	fld.d	$fa2, $a2, 16
	fadd.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $a2, 16
	addi.d	$a0, $fp, 272
	st.d	$a0, $a4, 0
	fmov.d	$fa0, $fa1
.LBB2_29:
	fld.d	$fs7, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB2_30:
	fmul.d	$fa0, $fs4, $fs2
	fst.d	$fa0, $a2, 0
	fmul.d	$fa1, $fa6, $fs2
	fst.d	$fa1, $a2, 8
	fmul.d	$fa2, $fs1, $fs2
	fst.d	$fa2, $a2, 16
	fsub.d	$fa0, $fa0, $fs5
	fst.d	$fa0, $a3, 0
	fsub.d	$fa0, $fa1, $fs7
	fst.d	$fa0, $a3, 8
	fsub.d	$fa0, $fa2, $fs6
	fst.d	$fa0, $a3, 16
	vld	$vr0, $a0, 0
	vld	$vr1, $a2, 0
	vfadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $a2, 0
	fld.d	$fa0, $a0, 16
	fld.d	$fa1, $a2, 16
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 16
	addi.d	$a5, $fp, 32
	st.d	$a5, $a4, 0
	fld.d	$fa7, $a0, 0
	fld.d	$ft0, $a0, 8
	fld.d	$fa6, $a1, 8
	fld.d	$fs4, $a1, 0
	fld.d	$fs1, $a1, 16
	fld.d	$ft1, $a0, 16
	fmul.d	$fa0, $fa6, $fa6
	fmadd.d	$fa0, $fs4, $fs4, $fa0
	fmadd.d	$fa0, $fs1, $fs1, $fa0
	frecip.d	$fs0, $fa0
	b	.LBB2_11
.LBB2_31:
	fmul.d	$fa0, $fs4, $fs5
	fst.d	$fa0, $a2, 0
	fmul.d	$fa1, $fa6, $fs5
	fst.d	$fa1, $a2, 8
	fmul.d	$fa2, $fs1, $fs5
	fst.d	$fa2, $a2, 16
	fsub.d	$fa0, $fa0, $fs3
	fst.d	$fa0, $a3, 0
	fsub.d	$fa0, $fa1, $fs7
	fst.d	$fa0, $a3, 8
	fsub.d	$fa0, $fa2, $fs6
	fst.d	$fa0, $a3, 16
	vld	$vr0, $a0, 0
	vld	$vr1, $a2, 0
	vfadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $a2, 0
	fld.d	$fa0, $a0, 16
	fld.d	$fa1, $a2, 16
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 16
	addi.d	$a5, $fp, 112
	st.d	$a5, $a4, 0
	fld.d	$fa7, $a0, 0
	fld.d	$ft0, $a0, 8
	fld.d	$fa6, $a1, 8
	fld.d	$fs4, $a1, 0
	fld.d	$fs1, $a1, 16
	fld.d	$ft1, $a0, 16
	fmul.d	$fa0, $fa6, $fa6
	fmadd.d	$fa0, $fs4, $fs4, $fa0
	fmadd.d	$fa0, $fs1, $fs1, $fa0
	frecip.d	$fs0, $fa0
	b	.LBB2_17
.LBB2_32:
	fmul.d	$fa1, $fs4, $fa0
	fst.d	$fa1, $a2, 0
	fmul.d	$fa2, $fa6, $fa0
	fst.d	$fa2, $a2, 8
	fmul.d	$fa3, $fs1, $fa0
	fst.d	$fa3, $a2, 16
	fsub.d	$fa1, $fa1, $fs3
	fst.d	$fa1, $a3, 0
	fsub.d	$fa1, $fa2, $fs6
	fst.d	$fa1, $a3, 8
	fsub.d	$fa1, $fa3, $fs2
	fst.d	$fa1, $a3, 16
	vld	$vr1, $a0, 0
	vld	$vr2, $a2, 0
	vfadd.d	$vr1, $vr1, $vr2
	vst	$vr1, $a2, 0
	fld.d	$fa1, $a0, 16
	fld.d	$fa2, $a2, 16
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a2, 16
	addi.d	$a5, $fp, 192
	st.d	$a5, $a4, 0
	fld.d	$fa7, $a0, 0
	fld.d	$ft0, $a0, 8
	fld.d	$fa6, $a1, 8
	fld.d	$fs4, $a1, 0
	fld.d	$fs1, $a1, 16
	fld.d	$ft1, $a0, 16
	fmul.d	$fa1, $fa6, $fa6
	fmadd.d	$fa1, $fs4, $fs4, $fa1
	fmadd.d	$fa1, $fs1, $fs1, $fa1
	frecip.d	$fs0, $fa1
	b	.LBB2_23
.LBB2_33:                               # %call.sqrt
	move	$s0, $a4
	move	$s3, $a2
	move	$s1, $a0
	move	$s4, $a3
	move	$s2, $a1
	fmov.d	$fs3, $fa4
	fst.d	$fa5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa7, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft1, $sp, 32                   # 8-byte Folded Spill
	vst	$vr10, $sp, 16                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	fld.d	$ft1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$ft0, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fa7, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 56                   # 8-byte Folded Reload
	fmov.d	$fa4, $fs3
	move	$a1, $s2
	move	$a3, $s4
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $s0
	fmov.d	$fa1, $fa0
	b	.LBB2_7
.LBB2_34:                               # %call.sqrt149
	move	$s0, $a4
	move	$s3, $a2
	move	$s1, $a0
	move	$s4, $a3
	move	$s2, $a1
	fst.d	$fa4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fa5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa7, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft1, $sp, 32                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$ft1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$ft0, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fa7, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa4, $sp, 16                   # 8-byte Folded Reload
	move	$a1, $s2
	move	$a3, $s4
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $s0
	fmov.d	$fa1, $fa0
	b	.LBB2_13
.LBB2_35:                               # %call.sqrt151
	move	$s0, $a4
	move	$s3, $a2
	move	$s1, $a0
	move	$s4, $a3
	move	$s2, $a1
	fst.d	$fa4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fa5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa7, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft1, $sp, 32                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$ft1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$ft0, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fa7, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa4, $sp, 16                   # 8-byte Folded Reload
	move	$a1, $s2
	move	$a3, $s4
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $s0
	fmov.d	$fa1, $fa0
	b	.LBB2_19
.LBB2_36:                               # %call.sqrt153
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	fmov.d	$fa0, $fa1
	move	$s0, $a4
	move	$s2, $a2
	move	$s1, $a0
	move	$s3, $a3
	fmov.d	$fs7, $fa4
	fmov.d	$fs0, $fa5
	fst.d	$fa6, $sp, 64                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa6, $sp, 64                   # 8-byte Folded Reload
	fmov.d	$fa5, $fs0
	fmov.d	$fa4, $fs7
	move	$a3, $s3
	move	$a0, $s1
	move	$a2, $s2
	move	$a4, $s0
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 56                   # 8-byte Folded Reload
	b	.LBB2_25
.Lfunc_end2:
	.size	IntersectObjs, .Lfunc_end2-IntersectObjs
                                        # -- End function
	.type	objs,@object                    # @objs
	.data
	.globl	objs
	.p2align	3, 0x0
objs:
	.dword	0x0000000000000000              # double 0
	.dword	0x4010000000000000              # double 4
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3fd999999999999a              # double 0.40000000000000002
	.dword	0x0000000000000000              # double 0
	.dword	0x3fd999999999999a              # double 0.40000000000000002
	.dword	0x3fe999999999999a              # double 0.80000000000000004
	.dword	0x3f947ae147ae147b              # double 0.02
	.dword	0xbff0000000000000              # double -1
	.dword	0x4008000000000000              # double 3
	.dword	0x3fd999999999999a              # double 0.40000000000000002
	.dword	0x3fd999999999999a              # double 0.40000000000000002
	.dword	0x3fe0000000000000              # double 0.5
	.dword	0x3fd3333333333333              # double 0.29999999999999999
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3fe0000000000000              # double 0.5
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
	.dword	0x3f847ae147ae147b              # double 0.01
	.dword	0xbfd3333333333333              # double -0.29999999999999999
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3fd999999999999a              # double 0.40000000000000002
	.dword	0x3fd999999999999a              # double 0.40000000000000002
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.dword	0x3fee666666666666              # double 0.94999999999999996
	.dword	0x3fc999999999999a              # double 0.20000000000000001
	.dword	0x3fe3333333333333              # double 0.59999999999999998
	.dword	0x3fe999999999999a              # double 0.80000000000000004
	.dword	0x3f847ae147ae147b              # double 0.01
	.dword	0x3ff0000000000000              # double 1
	.dword	0x4000000000000000              # double 2
	.dword	0x3fd999999999999a              # double 0.40000000000000002
	.dword	0x3fd999999999999a              # double 0.40000000000000002
	.dword	0x3feb851eb851eb85              # double 0.85999999999999999
	.dword	0x3fea8f5c28f5c28f              # double 0.82999999999999996
	.dword	0x0000000000000000              # double 0
	.dword	0x3fe6666666666666              # double 0.69999999999999996
	.dword	0x3fe3333333333333              # double 0.59999999999999998
	.dword	0x3f847ae147ae147b              # double 0.01
	.size	objs, 320

	.type	Groundpos,@object               # @Groundpos
	.bss
	.globl	Groundpos
	.p2align	3, 0x0
Groundpos:
	.dword	0x0000000000000000              # double 0
	.size	Groundpos, 8

	.type	Groundtxt,@object               # @Groundtxt
	.data
	.globl	Groundtxt
	.p2align	3, 0x0
Groundtxt:
	.dword	0x0000000000000000              # double 0
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.dword	0x3fe0000000000000              # double 0.5
	.dword	0x3fe999999999999a              # double 0.80000000000000004
	.dword	0x3fdc28f5c28f5c29              # double 0.44
	.dword	0x3f947ae147ae147b              # double 0.02
	.dword	0x3fe3333333333333              # double 0.59999999999999998
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3fe0000000000000              # double 0.5
	.dword	0x3fe999999999999a              # double 0.80000000000000004
	.dword	0x3fdc28f5c28f5c29              # double 0.44
	.dword	0x3f847ae147ae147b              # double 0.01
	.size	Groundtxt, 96

	.type	Lightpos,@object                # @Lightpos
	.globl	Lightpos
	.p2align	4, 0x0
Lightpos:
	.dword	0xc008000000000000              # double -3
	.dword	0x3ff0000000000000              # double 1
	.dword	0x4014000000000000              # double 5
	.size	Lightpos, 24

	.type	Lightr,@object                  # @Lightr
	.globl	Lightr
	.p2align	3, 0x0
Lightr:
	.dword	0x3fd999999999999a              # double 0.40000000000000002
	.size	Lightr, 8

	.type	Camerapos,@object               # @Camerapos
	.globl	Camerapos
	.p2align	3, 0x0
Camerapos:
	.dword	0x3ff8000000000000              # double 1.5
	.dword	0xbff6666666666666              # double -1.3999999999999999
	.dword	0x3ff3333333333333              # double 1.2
	.size	Camerapos, 24

	.type	Cameraright,@object             # @Cameraright
	.globl	Cameraright
	.p2align	3, 0x0
Cameraright:
	.dword	0x4008000000000000              # double 3
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.size	Cameraright, 24

	.type	Cameradir,@object               # @Cameradir
	.globl	Cameradir
	.p2align	3, 0x0
Cameradir:
	.dword	0xbff0000000000000              # double -1
	.dword	0x4008000000000000              # double 3
	.dword	0x0000000000000000              # double 0
	.size	Cameradir, 24

	.type	Cameraup,@object                # @Cameraup
	.globl	Cameraup
	.p2align	3, 0x0
Cameraup:
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x4002f93dd97f62b7              # double 2.3717000000000001
	.size	Cameraup, 24

	.type	Ambient,@object                 # @Ambient
	.globl	Ambient
	.p2align	3, 0x0
Ambient:
	.dword	0x3fd3333333333333              # double 0.29999999999999999
	.size	Ambient, 8

	.type	Skycolor,@object                # @Skycolor
	.globl	Skycolor
	.p2align	3, 0x0
Skycolor:
	.dword	0x3fe0000000000000              # double 0.5
	.dword	0x3fd3333333333333              # double 0.29999999999999999
	.dword	0x3fe6666666666666              # double 0.69999999999999996
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x3fc999999999999a              # double 0.20000000000000001
	.size	Skycolor, 48

	.type	rnd,@object                     # @rnd
	.globl	rnd
	.p2align	3, 0x0
rnd:
	.dword	1380328551                      # 0x52462467
	.size	rnd, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Compile date: %s\n"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"today"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Compiler switches: %s\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.space	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%d"
	.size	.L.str.6, 3

	.type	DISTRIB,@object                 # @DISTRIB
	.bss
	.globl	DISTRIB
	.p2align	2, 0x0
DISTRIB:
	.word	0                               # 0x0
	.size	DISTRIB, 4

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"P6"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%d %d"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"255"
	.size	.L.str.9, 4

	.type	memory,@object                  # @memory
	.bss
	.globl	memory
	.p2align	3, 0x0
memory:
	.space	921600
	.size	memory, 921600

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"ERROR: Could not open indata file"
	.size	.Lstr, 34

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym objs
	.addrsig_sym Groundtxt
	.addrsig_sym Camerapos
	.addrsig_sym DISTRIB
