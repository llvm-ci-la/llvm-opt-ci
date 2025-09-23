	.file	"sim.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	lu12i.w	$a2, 63
	ori	$a2, $a2, 2320
	sub.d	$sp, $sp, $a2
	move	$s5, $a1
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_2:
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(rusage)
	addi.d	$a1, $a0, %pc_lo12(rusage)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(getrusage)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	bge	$s6, $a0, .LBB0_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s1, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s7, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s3, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_5
.LBB0_4:
	ld.d	$s3, $s5, 8
	ld.d	$s7, $s5, 16
	ld.d	$s1, $s5, 24
.LBB0_5:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a0, 64
	ori	$a0, $a0, 156
	add.d	$a2, $sp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 64
	ori	$a0, $a0, 156
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
.LBB0_7:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.8:                                # %ckopen.exit.outer.preheader
	move	$s2, $a0
	move	$fp, $zero
	addi.d	$a0, $sp, 156
	addu16i.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1284
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s0, $zero, 10
	addi.w	$s8, $zero, -1
	.p2align	4, , 16
.LBB0_9:                                # %ckopen.exit
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_9
# %bb.10:                               # %ckopen.exit
                                        #   in Loop: Header=BB0_9 Depth=1
	beq	$a0, $s8, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	addi.d	$fp, $fp, 1
	b	.LBB0_9
.LBB0_12:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(name1)
	st.d	$s7, $a0, %pc_lo12(name1)
	addi.w	$a0, $fp, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_14
.LBB0_13:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fatalf)
	jirl	$ra, $ra, 0
.LBB0_14:                               # %ckopen.exit123.outer.preheader
	move	$s4, $a0
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	move	$s3, $zero
	ori	$fp, $zero, 10
	.p2align	4, , 16
.LBB0_15:                               # %ckopen.exit123
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $fp, .LBB0_15
# %bb.16:                               # %ckopen.exit123
                                        #   in Loop: Header=BB0_15 Depth=1
	beq	$a0, $s8, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	addi.w	$s3, $s3, 1
	stx.b	$a0, $s2, $s3
	b	.LBB0_15
.LBB0_18:
	move	$a0, $s7
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_20
# %bb.19:
                                        # implicit-def: $r22
                                        # implicit-def: $r27
	b	.LBB0_32
.LBB0_20:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_26
# %bb.21:                               # %ckopen.exit124.outer.preheader
	move	$s4, $a0
	move	$fp, $zero
	ori	$s0, $zero, 10
	.p2align	4, , 16
.LBB0_22:                               # %ckopen.exit124
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_22
# %bb.23:                               # %ckopen.exit124
                                        #   in Loop: Header=BB0_22 Depth=1
	beq	$a0, $s8, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=1
	addi.d	$fp, $fp, 1
	b	.LBB0_22
.LBB0_25:
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(name2)
	st.d	$s1, $a0, %pc_lo12(name2)
	addi.w	$a0, $fp, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_27
.LBB0_26:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fatalf)
	jirl	$ra, $ra, 0
.LBB0_27:                               # %ckopen.exit125.outer.preheader
	move	$s7, $a0
	move	$s4, $zero
	ori	$s0, $zero, 10
	.p2align	4, , 16
.LBB0_28:                               # %ckopen.exit125
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_28
# %bb.29:                               # %ckopen.exit125
                                        #   in Loop: Header=BB0_28 Depth=1
	beq	$a0, $s8, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=1
	addi.w	$s4, $s4, 1
	stx.b	$a0, $fp, $s4
	b	.LBB0_28
.LBB0_31:                               # %.loopexit.loopexit
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
.LBB0_32:                               # %.loopexit
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	ori	$s8, $zero, 5
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	blt	$s6, $s8, .LBB0_42
# %bb.33:                               # %.lr.ph.preheader
	addi.d	$s1, $s6, 1
	addi.w	$s7, $s6, -1
	alsl.d	$a1, $s6, $s5, 3
	addi.d	$s5, $a1, -8
	vldi	$vr2, -912
	vldi	$vr0, -784
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	vldi	$vr0, -1000
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ori	$s6, $zero, 61
	ori	$s0, $zero, 17
	pcalau12i	$a0, %pc_hi20(.LJTI0_0)
	addi.d	$s4, $a0, %pc_lo12(.LJTI0_0)
	vldi	$vr0, -784
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	b	.LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_36 Depth=1
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1 def $vr1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
.LBB0_35:                               #   in Loop: Header=BB0_36 Depth=1
	addi.d	$s1, $s1, -1
	addi.w	$s7, $s7, -1
	addi.d	$s5, $s5, -8
	fmov.d	$fa2, $fa1
	bgeu	$s8, $s1, .LBB0_43
.LBB0_36:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s5, 0
	ld.bu	$a0, $fp, 1
	bne	$a0, $s6, .LBB0_44
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=1
	vst	$vr2, $sp, 128                  # 16-byte Folded Spill
	addi.d	$a0, $fp, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	addi.d	$a0, $a0, -69
	bltu	$s0, $a0, .LBB0_45
# %bb.38:                               #   in Loop: Header=BB0_36 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	add.d	$a0, $s4, $a0
	fmov.d	$fa1, $fa0
	jr	$a0
.LBB0_39:                               #   in Loop: Header=BB0_36 Depth=1
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1 def $vr1
	fmov.d	$fs0, $fa0
	b	.LBB0_35
.LBB0_40:                               #   in Loop: Header=BB0_36 Depth=1
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1 def $vr1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	b	.LBB0_35
.LBB0_41:                               #   in Loop: Header=BB0_36 Depth=1
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1 def $vr1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	b	.LBB0_35
.LBB0_42:
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	vldi	$vr0, -1000
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vldi	$vr0, -784
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vldi	$vr1, -912
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
.LBB0_43:                               # %._crit_edge
	vst	$vr1, $sp, 128                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	movfr2gr.d	$a1, $fa0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	movfr2gr.d	$a2, $fa0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	movfr2gr.d	$a3, $fa0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vldi	$vr0, -988
	vld	$vr4, $sp, 128                  # 16-byte Folded Reload
	fmul.d	$fa1, $fa4, $fa0
	vldi	$vr2, -928
	fmadd.d	$fa3, $fa4, $fa0, $fa2
	vori.b	$vr5, $vr4, 0
	vldi	$vr4, -800
	fmadd.d	$fa5, $fa5, $fa0, $fa4
	movgr2fr.d	$fa6, $zero
	fcmp.clt.d	$fcc0, $fa6, $fa1
	fsel	$fa1, $fa5, $fa3, $fcc0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	stptr.w	$a0, $a1, 19532
	stptr.w	$a0, $a1, 6168
	stptr.w	$a0, $a1, 2056
	st.w	$a0, $a1, 0
	vld	$vr5, $sp, 80                   # 16-byte Folded Reload
	fmul.d	$fa1, $fa5, $fa0
	fmadd.d	$fa3, $fa5, $fa0, $fa2
	fmadd.d	$fa5, $fa5, $fa0, $fa4
	fcmp.clt.d	$fcc0, $fa6, $fa1
	fsel	$fa1, $fa5, $fa3, $fcc0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	stptr.w	$a0, $a1, 19464
	stptr.w	$a0, $a1, 2124
	stptr.w	$a0, $a1, 6144
	st.w	$a0, $a1, 24
	vld	$vr5, $sp, 96                   # 16-byte Folded Reload
	fmul.d	$fa1, $fa5, $fa0
	fmadd.d	$fa3, $fa5, $fa0, $fa2
	fmadd.d	$fa5, $fa5, $fa0, $fa4
	fcmp.clt.d	$fcc0, $fa6, $fa1
	fsel	$fa1, $fa5, $fa3, $fcc0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	stptr.w	$a0, $a1, 19480
	stptr.w	$a0, $a1, 19456
	stptr.w	$a0, $a1, 6220
	stptr.w	$a0, $a1, 6152
	stptr.w	$a0, $a1, 2072
	stptr.w	$a0, $a1, 2048
	st.w	$a0, $a1, 76
	st.w	$a0, $a1, 8
	vld	$vr5, $sp, 112                  # 16-byte Folded Reload
	fmul.d	$fa1, $fa5, $fa0
	fmadd.d	$fa3, $fa5, $fa0, $fa2
	fmadd.d	$fa5, $fa5, $fa0, $fa4
	fcmp.clt.d	$fcc0, $fa6, $fa1
	fsel	$fa1, $fa5, $fa3, $fcc0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$s5, $fa1
	fmul.d	$fa1, $fs0, $fa0
	fmadd.d	$fa2, $fs0, $fa0, $fa2
	fmadd.d	$fa0, $fs0, $fa0, $fa4
	fcmp.clt.d	$fcc0, $fa6, $fa1
	fsel	$fa0, $fa0, $fa2, $fcc0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s6, $fa0
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	lu12i.w	$a1, 64
	ori	$a1, $a1, 156
	add.d	$a1, $sp, $a1
	ld.w	$a4, $a1, 0
	ori	$a1, $zero, 2
	sub.d	$a2, $a1, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a3, $s3, $a0
	or	$a3, $a3, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $a1
	addi.w	$a3, $a3, 0
	addi.d	$a5, $sp, 156
	st.d	$a2, $sp, 0
	move	$a0, $s2
	move	$a2, $s3
	move	$a6, $s5
	move	$a7, $s6
	pcaddu18i	$ra, %call36(SIM)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(dtime)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 56
	ori	$a2, $zero, 1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_44:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fatalf)
	jirl	$ra, $ra, 0
.LBB0_45:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_40-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_41-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
                                        # -- End function
	.text
	.globl	SIM                             # -- Begin function SIM
	.p2align	5
	.type	SIM,@function
SIM:                                    # @SIM
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	move	$s6, $a7
	move	$s7, $a6
	move	$s8, $a5
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $a3
	move	$s5, $a2
	move	$s2, $a1
	move	$s3, $a0
	ld.d	$a0, $sp, 256
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a3, 2
	ori	$a1, $zero, 4
	alsl.w	$fp, $a3, $a1, 2
	addi.d	$s0, $a0, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(CC)
	st.d	$a0, $a1, %pc_lo12(CC)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(DD)
	st.d	$a0, $a1, %pc_lo12(DD)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(RR)
	st.d	$a0, $a1, %pc_lo12(RR)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(SS)
	st.d	$a0, $a1, %pc_lo12(SS)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(EE)
	st.d	$a0, $a1, %pc_lo12(EE)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(FF)
	st.d	$a0, $a1, %pc_lo12(FF)
	addi.w	$s1, $s5, 1
	slli.w	$fp, $s1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(HH)
	st.d	$a0, $a1, %pc_lo12(HH)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(WW)
	st.d	$a0, $a1, %pc_lo12(WW)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(II)
	st.d	$a0, $a1, %pc_lo12(II)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(JJ)
	st.d	$a0, $a1, %pc_lo12(JJ)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(XX)
	st.d	$a0, $a1, %pc_lo12(XX)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(YY)
	st.d	$a0, $a1, %pc_lo12(YY)
	alsl.w	$a0, $s1, $s0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(row)
	st.d	$a0, $a1, %pc_lo12(row)
	blez	$s5, .LBB1_6
# %bb.1:                                # %.lr.ph
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB1_3
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.d	$a0, $a0, 8
	slli.d	$a2, $s5, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB1_6
.LBB1_3:                                # %.lr.ph.split.preheader
	bstrpick.d	$a1, $s1, 31, 0
	addi.d	$fp, $a0, 8
	addi.d	$s0, $a1, -1
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$s1, $a0, 0
	st.d	$zero, $a0, 8
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB1_4
# %bb.5:                                # %._crit_edge.split
	pcalau12i	$a1, %pc_hi20(z)
	st.d	$a0, $a1, %pc_lo12(z)
.LBB1_6:                                # %._crit_edge
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(v)
	st.d	$s8, $a0, %pc_lo12(v)
	pcalau12i	$a0, %pc_hi20(q)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.w	$s7, $a0, %pc_lo12(q)
	pcalau12i	$a0, %pc_hi20(r)
	st.w	$s6, $a0, %pc_lo12(r)
	add.d	$a0, $s6, $s7
	pcalau12i	$a1, %pc_hi20(qr)
	st.w	$a0, $a1, %pc_lo12(qr)
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(LIST)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$fp, $a0, %pc_lo12(LIST)
	blez	$s0, .LBB1_9
# %bb.7:                                # %.lr.ph97.preheader
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph97
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 36
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB1_8
.LBB1_9:                                # %._crit_edge98
	pcalau12i	$a0, %pc_hi20(name1)
	ld.d	$fp, $a0, %pc_lo12(name1)
	ori	$a1, $zero, 47
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$fp, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(name2)
	ld.d	$s2, $a0, %pc_lo12(name2)
	ori	$a1, $zero, 47
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(min)
	st.w	$zero, $a0, %pc_lo12(min)
	pcalau12i	$s0, %pc_hi20(numnode)
	st.w	$zero, $s0, %pc_lo12(numnode)
	move	$a0, $s3
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $s4
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $fp
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(big_pass)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB1_23
# %bb.10:                               # %.lr.ph102.preheader
	ld.w	$a0, $s0, %pc_lo12(numnode)
	beqz	$a0, .LBB1_24
# %bb.11:
	pcalau12i	$a1, %pc_hi20(most)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(low)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(m1)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(mm)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(n1)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(nn)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(rl)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cl)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(I)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(no_mis)
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               # %.lr.ph102
                                        #   in Loop: Header=BB1_13 Depth=1
	ld.w	$a0, $s0, %pc_lo12(numnode)
	beqz	$a0, .LBB1_24
.LBB1_13:                               # %.lr.ph115
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(LIST)
	move	$a3, $zero
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB1_16
# %bb.14:                               # %.lr.ph.i
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.d	$a2, $a0, -1
	addi.d	$a4, $a1, 8
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB1_15:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a4, 0
	slli.d	$a7, $a3, 3
	ldx.d	$a7, $a1, $a7
	ld.w	$a6, $a6, 0
	ld.w	$a7, $a7, 0
	slt	$a6, $a7, $a6
	masknez	$a3, $a3, $a6
	maskeqz	$a6, $a5, $a6
	or	$a3, $a6, $a3
	addi.d	$a2, $a2, -1
	addi.w	$a5, $a5, 1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB1_15
.LBB1_16:                               # %._crit_edge.i
                                        #   in Loop: Header=BB1_13 Depth=1
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a1, $a2
	addi.w	$a0, $a0, -1
	st.w	$a0, $s0, %pc_lo12(numnode)
	beq	$a3, $a0, .LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_13 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a4, $a1, $a0
	alsl.d	$a3, $a3, $a1, 3
	st.d	$a4, $a3, 0
	stx.d	$a2, $a1, $a0
.LBB1_18:                               #   in Loop: Header=BB1_13 Depth=1
	move	$s7, $s3
	ld.d	$a0, $a1, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(low)
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a3, %pc_lo12(most)
	bne	$a1, $a2, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_13 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(low)
.LBB1_20:                               # %findmax.exit
                                        #   in Loop: Header=BB1_13 Depth=1
	ld.w	$a0, $a2, 4
	addi.w	$s4, $s4, -1
	ld.w	$a1, $a2, 0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a1, $a2, 8
	addi.w	$s5, $a0, 1
	st.w	$s5, $a2, 4
	ld.w	$a3, $a2, 20
	addi.w	$s6, $a1, 1
	st.w	$s6, $a2, 8
	ld.w	$a4, $a2, 24
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	st.w	$a3, $a5, %pc_lo12(m1)
	ld.w	$a3, $a2, 28
	ld.w	$a5, $a2, 32
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	st.w	$a4, $a6, %pc_lo12(mm)
	ld.w	$a6, $a2, 12
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	st.w	$a3, $a4, %pc_lo12(n1)
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	st.w	$a5, $a3, %pc_lo12(nn)
	ld.w	$a4, $a2, 16
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a2, $a6, $s5
	addi.w	$a2, $a2, 1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.w	$a2, $a3, %pc_lo12(rl)
	sub.d	$a3, $a4, $s6
	addi.w	$a3, $a3, 1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	st.w	$a3, $s8, %pc_lo12(cl)
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a4, %pc_lo12(I)
	pcalau12i	$a0, %pc_hi20(J)
	st.w	$a1, $a0, %pc_lo12(J)
	pcalau12i	$a0, %pc_hi20(sapp)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(sapp)
	pcalau12i	$a0, %pc_hi20(last)
	st.w	$zero, $a0, %pc_lo12(last)
	pcalau12i	$s3, %pc_hi20(al_len)
	st.w	$zero, $s3, %pc_lo12(al_len)
	pcalau12i	$s0, %pc_hi20(no_mat)
	st.w	$zero, $s0, %pc_lo12(no_mat)
	st.w	$zero, $s1, %pc_lo12(no_mis)
	add.d	$a0, $s7, $s5
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a4, $a1, %pc_lo12(q)
	addi.d	$fp, $a0, -1
	add.d	$a0, $s2, $s6
	addi.d	$s2, $a0, -1
	move	$a0, $fp
	move	$a1, $s2
	move	$a5, $a4
	pcaddu18i	$ra, %call36(diff)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -988
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(no_mat)
	ld.w	$a1, $s3, %pc_lo12(al_len)
	ori	$a2, $zero, 100
	mul.w	$a0, $a0, $a2
	div.w	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(no_mat)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(no_mis)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(no_mat)
	ld.w	$a1, $s1, %pc_lo12(no_mis)
	ld.w	$a2, $s3, %pc_lo12(al_len)
	move	$s3, $s7
	add.d	$a0, $a0, $a1
	sub.w	$a1, $a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s5
	move	$a2, $s6
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(rl)
	ld.w	$a3, $s8, %pc_lo12(cl)
	move	$a0, $fp
	move	$a1, $s2
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s6
	pcaddu18i	$ra, %call36(display)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	beqz	$s4, .LBB1_23
# %bb.21:                               #   in Loop: Header=BB1_13 Depth=1
	pcalau12i	$fp, %pc_hi20(flag)
	st.b	$zero, $fp, %pc_lo12(flag)
	move	$a0, $s3
	move	$a1, $s2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(locate)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, %pc_lo12(flag)
	beqz	$a0, .LBB1_12
# %bb.22:                               #   in Loop: Header=BB1_13 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s4
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(small_pass)
	jirl	$ra, $ra, 0
	b	.LBB1_12
.LBB1_23:                               # %._crit_edge103
	move	$a0, $zero
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB1_24:                               # %.lr.ph102._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	SIM, .Lfunc_end1-SIM
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function big_pass
.LCPI2_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.text
	.globl	big_pass
	.p2align	5
	.type	big_pass,@function
big_pass:                               # @big_pass
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	move	$s0, $a2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(CC)
	pcalau12i	$s6, %pc_hi20(RR)
	pcalau12i	$s7, %pc_hi20(EE)
	pcalau12i	$s4, %pc_hi20(DD)
	pcalau12i	$fp, %pc_hi20(SS)
	pcalau12i	$s2, %pc_hi20(FF)
	addi.d	$a6, $a3, 1
	pcalau12i	$a0, %pc_hi20(q)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	blez	$a3, .LBB2_7
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s3, %pc_lo12(CC)
	ld.d	$a1, $s6, %pc_lo12(RR)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $s7, %pc_lo12(EE)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(q)
	ld.d	$a2, $s4, %pc_lo12(DD)
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a2, $fp, %pc_lo12(SS)
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a2, $s2, %pc_lo12(FF)
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	sub.d	$s8, $zero, $a1
	addi.d	$a0, $a0, 4
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$s5, $s1, 2
	move	$a1, $zero
	move	$a2, $s5
	st.d	$a6, $sp, 224                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ori	$a1, $zero, 8
	ori	$a0, $zero, 1
	bltu	$s1, $a1, .LBB2_5
# %bb.2:                                # %vector.ph
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$a1, $a0, 3
	srli.d	$a2, $a2, 3
	ori	$a0, $zero, 1
	bstrins.d	$a0, $a2, 30, 3
	vreplgr2vr.w	$vr0, $s8
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI2_0)
	addi.d	$a2, $t6, 20
	addi.d	$a3, $t7, 20
	addi.d	$a4, $t8, 20
	move	$a5, $a1
	.p2align	4, , 16
.LBB2_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr2, $vr1, 4
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	vaddi.wu	$vr1, $vr1, 8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB2_3
# %bb.4:                                # %middle.block
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB2_7
.LBB2_5:                                # %scalar.ph.preheader
	bstrpick.d	$a4, $a6, 31, 0
	alsl.d	$a1, $a0, $t8, 2
	alsl.d	$a2, $a0, $t7, 2
	alsl.d	$a3, $a0, $t6, 2
	sub.d	$a4, $a4, $a0
	.p2align	4, , 16
.LBB2_6:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a3, 0
	st.w	$s8, $a2, 0
	st.w	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB2_6
.LBB2_7:                                # %.preheader
	blez	$s0, .LBB2_75
# %bb.8:                                # %.lr.ph216
	pcalau12i	$a0, %pc_hi20(v)
	ld.d	$a0, $a0, %pc_lo12(v)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s3, %pc_lo12(CC)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $s6, %pc_lo12(RR)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a3, $s7, %pc_lo12(EE)
	ld.d	$a0, $s4, %pc_lo12(DD)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $fp, %pc_lo12(SS)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $s2, %pc_lo12(FF)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(row)
	ld.d	$a0, $a0, %pc_lo12(row)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a6, 31, 0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	maskeqz	$a0, $s1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(low)
	addi.d	$a0, $a0, %pc_lo12(low)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(numnode)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$t8, %pc_hi20(most)
	pcalau12i	$a0, %pc_hi20(min)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(r)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(qr)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %.loopexit
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB2_75
.LBB2_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
                                        #       Child Loop BB2_31 Depth 3
                                        #       Child Loop BB2_52 Depth 3
                                        #       Child Loop BB2_73 Depth 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	move	$t7, $zero
	move	$s3, $zero
	move	$s2, $zero
	addi.d	$t5, $s1, -1
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               #   in Loop: Header=BB2_10 Depth=1
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.w	$t7, $a1, $a0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.w	$t5, $a1, $a0
	ldx.w	$s2, $a3, $a0
	move	$s3, $s1
.LBB2_13:                               #   in Loop: Header=BB2_10 Depth=1
	addi.d	$a1, $s1, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	masknez	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$s6, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blt	$a0, $s6, .LBB2_9
# %bb.14:                               # %.lr.ph212
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(q)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ldx.b	$a4, $a0, $s1
	move	$a0, $zero
	sub.d	$s4, $zero, $a1
	slli.d	$a1, $a4, 10
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a7, $a2, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.w	$t4, $a2, %pc_lo12(numnode)
	ld.d	$t3, $t8, %pc_lo12(most)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$t2, $a2, %pc_lo12(min)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s5, $a2, %pc_lo12(r)
	pcalau12i	$a4, %pc_hi20(LIST)
	ld.d	$a4, $a4, %pc_lo12(LIST)
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$fp, $a2, %pc_lo12(qr)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $s1, $a1, 3
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $a4, 8
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $s1
	move	$s8, $s3
	move	$ra, $s1
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_15:                               # %.loopexit.i
                                        #   in Loop: Header=BB2_18 Depth=2
	ld.w	$t2, $a7, 0
.LBB2_16:                               # %addnode.exit
                                        #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$t2, $a1, %pc_lo12(min)
.LBB2_17:                               #   in Loop: Header=BB2_18 Depth=2
	addi.d	$s6, $s6, 1
	move	$s2, $a4
	move	$t5, $a6
	move	$t7, $t0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beq	$s6, $a1, .LBB2_9
.LBB2_18:                               #   Parent Loop BB2_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_31 Depth 3
                                        #       Child Loop BB2_52 Depth 3
                                        #       Child Loop BB2_73 Depth 3
	sub.w	$s4, $s4, $s5
	sub.w	$a0, $a0, $fp
	bge	$s4, $a0, .LBB2_21
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=2
	move	$s4, $a0
.LBB2_20:                               #   in Loop: Header=BB2_18 Depth=2
	move	$s7, $ra
	move	$s3, $s8
	b	.LBB2_24
	.p2align	4, , 16
.LBB2_21:                               #   in Loop: Header=BB2_18 Depth=2
	bne	$s4, $a0, .LBB2_24
# %bb.22:                               #   in Loop: Header=BB2_18 Depth=2
	addi.w	$a0, $ra, 0
	addi.w	$a1, $s7, 0
	blt	$a1, $a0, .LBB2_20
# %bb.23:                               #   in Loop: Header=BB2_18 Depth=2
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.w	$a1, $s3, 0
	addi.w	$a4, $s8, 0
	slt	$a5, $a4, $a1
	masknez	$a4, $a4, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a4
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s3, $a0
	or	$s3, $a1, $a0
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_18 Depth=2
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.w	$t0, $a1, $a0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a5, $a1, $a0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.w	$a6, $a1, $a0
	ldx.w	$a4, $a3, $a0
	sub.w	$a1, $t0, $fp
	sub.w	$a5, $a5, $s5
	bge	$a5, $a1, .LBB2_26
.LBB2_25:                               #   in Loop: Header=BB2_18 Depth=2
	move	$s0, $a6
	move	$t6, $a4
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$s0, $a2, $a0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$t6, $a2, $a0
	bne	$a5, $a1, .LBB2_29
# %bb.27:                               #   in Loop: Header=BB2_18 Depth=2
	blt	$s0, $a6, .LBB2_25
# %bb.28:                               #   in Loop: Header=BB2_18 Depth=2
	xor	$a0, $s0, $a6
	sltui	$a0, $a0, 1
	slt	$a5, $a4, $t6
	masknez	$t1, $a4, $a5
	maskeqz	$a5, $t6, $a5
	or	$a5, $a5, $t1
	maskeqz	$a5, $a5, $a0
	masknez	$a0, $t6, $a0
	or	$t6, $a5, $a0
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_29:                               #   in Loop: Header=BB2_18 Depth=2
	move	$a1, $a5
.LBB2_30:                               #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a5, %pc_hi20(z)
	st.d	$a0, $a5, %pc_lo12(z)
	beqz	$a0, .LBB2_33
	.p2align	4, , 16
.LBB2_31:                               # %.lr.ph192
                                        #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t1, $a0, 0
	beq	$s6, $t1, .LBB2_34
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=3
	ld.d	$a0, $a0, 8
	st.d	$a0, $a5, %pc_lo12(z)
	bnez	$a0, .LBB2_31
.LBB2_33:                               # %._crit_edge
                                        #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ldx.b	$a0, $a0, $s6
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a0, $a2, $a0
	add.w	$a0, $a0, $t7
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               #   in Loop: Header=BB2_18 Depth=2
	move	$a0, $zero
.LBB2_35:                               # %.thread
                                        #   in Loop: Header=BB2_18 Depth=2
	slti	$ra, $a0, 1
	masknez	$s8, $a0, $ra
	move	$a5, $a1
	move	$t7, $s0
	move	$t1, $t6
	blt	$s8, $a1, .LBB2_40
# %bb.36:                               #   in Loop: Header=BB2_18 Depth=2
	masknez	$a0, $t5, $ra
	maskeqz	$a5, $s1, $ra
	or	$a0, $a5, $a0
	addi.w	$a0, $a0, 0
	masknez	$a5, $s2, $ra
	maskeqz	$t1, $s6, $ra
	or	$t5, $t1, $a5
	bne	$s8, $a1, .LBB2_39
# %bb.37:                               #   in Loop: Header=BB2_18 Depth=2
	move	$a5, $a1
	move	$t7, $s0
	move	$t1, $t6
	blt	$a0, $s0, .LBB2_40
# %bb.38:                               #   in Loop: Header=BB2_18 Depth=2
	xor	$a5, $a0, $s0
	sltui	$a5, $a5, 1
	addi.w	$t1, $t5, 0
	slt	$t7, $t6, $t1
	masknez	$s2, $t6, $t7
	maskeqz	$t1, $t1, $t7
	or	$t1, $t1, $s2
	maskeqz	$t1, $t1, $a5
	masknez	$a5, $t5, $a5
	or	$t1, $t1, $a5
	move	$a5, $a1
	move	$t7, $a0
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_39:                               #   in Loop: Header=BB2_18 Depth=2
	move	$a5, $s8
	move	$t7, $a0
	move	$t1, $t5
.LBB2_40:                               #   in Loop: Header=BB2_18 Depth=2
	move	$a0, $s4
	move	$ra, $s7
	move	$s8, $s3
	blt	$a5, $s4, .LBB2_45
# %bb.41:                               #   in Loop: Header=BB2_18 Depth=2
	bne	$a5, $s4, .LBB2_44
# %bb.42:                               #   in Loop: Header=BB2_18 Depth=2
	addi.w	$a5, $s7, 0
	move	$a0, $s4
	move	$ra, $s7
	move	$s8, $s3
	blt	$t7, $a5, .LBB2_45
# %bb.43:                               #   in Loop: Header=BB2_18 Depth=2
	xor	$a0, $t7, $a5
	sltui	$a0, $a0, 1
	addi.w	$a5, $t1, 0
	addi.w	$t5, $s3, 0
	slt	$s2, $t5, $a5
	masknez	$t5, $t5, $s2
	maskeqz	$a5, $a5, $s2
	or	$a5, $a5, $t5
	maskeqz	$a5, $a5, $a0
	masknez	$a0, $t1, $a0
	or	$s8, $a5, $a0
	move	$a0, $s4
	move	$ra, $t7
	b	.LBB2_45
	.p2align	4, , 16
.LBB2_44:                               #   in Loop: Header=BB2_18 Depth=2
	move	$a0, $a5
	move	$ra, $t7
	move	$s8, $t1
.LBB2_45:                               #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a5, $s6, $a2, 2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t1, $s6, $a2, 2
	alsl.d	$t5, $s6, $a3, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$t7, $s6, $a2, 2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s2, $s6, $a2, 2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 2
	st.w	$a0, $a5, 0
	st.w	$ra, $t1, 0
	st.w	$s8, $t5, 0
	st.w	$a1, $t7, 0
	st.w	$s0, $s2, 0
	st.w	$t6, $a2, 0
	bge	$t2, $a0, .LBB2_17
# %bb.46:                               #   in Loop: Header=BB2_18 Depth=2
	addi.w	$a5, $ra, 0
	addi.w	$t1, $s8, 0
	beqz	$t3, .LBB2_49
# %bb.47:                               #   in Loop: Header=BB2_18 Depth=2
	ld.w	$a1, $t3, 4
	bne	$a1, $a5, .LBB2_49
# %bb.48:                               #   in Loop: Header=BB2_18 Depth=2
	ld.w	$a1, $t3, 8
	beq	$a1, $t1, .LBB2_54
	.p2align	4, , 16
.LBB2_49:                               #   in Loop: Header=BB2_18 Depth=2
	blez	$t4, .LBB2_60
# %bb.50:                               # %.lr.ph.i
                                        #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$t5, $t4
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_51:                               #   in Loop: Header=BB2_52 Depth=3
	addi.d	$t5, $t5, -1
	addi.d	$a1, $a1, 8
	beqz	$t5, .LBB2_60
.LBB2_52:                               #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t3, $a1, 0
	ld.w	$a2, $t3, 4
	st.d	$t3, $t8, %pc_lo12(most)
	bne	$a2, $a5, .LBB2_51
# %bb.53:                               #   in Loop: Header=BB2_52 Depth=3
	ld.w	$a2, $t3, 8
	bne	$a2, $t1, .LBB2_51
.LBB2_54:                               # %.loopexit46.i
                                        #   in Loop: Header=BB2_18 Depth=2
	ld.w	$a1, $t3, 0
	blt	$a1, $a0, .LBB2_63
# %bb.55:                               #   in Loop: Header=BB2_18 Depth=2
	ld.w	$a1, $t3, 20
	ld.d	$t5, $sp, 136                   # 8-byte Folded Reload
	blt	$s1, $a1, .LBB2_64
.LBB2_56:                               #   in Loop: Header=BB2_18 Depth=2
	ld.w	$a1, $t3, 24
	blt	$a1, $s1, .LBB2_65
.LBB2_57:                               #   in Loop: Header=BB2_18 Depth=2
	ld.w	$a1, $t3, 28
	blt	$s6, $a1, .LBB2_66
.LBB2_58:                               #   in Loop: Header=BB2_18 Depth=2
	ld.w	$a1, $t3, 32
	blt	$a1, $s6, .LBB2_67
	.p2align	4, , 16
.LBB2_59:                               #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bne	$t4, $a1, .LBB2_16
	b	.LBB2_68
	.p2align	4, , 16
.LBB2_60:                               # %.critedge.i
                                        #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $a2
	ld.d	$t5, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $t5
	beq	$t4, $a2, .LBB2_62
# %bb.61:                               #   in Loop: Header=BB2_18 Depth=2
	addi.w	$a1, $t4, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(numnode)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a5, $t4, $a2, 3
.LBB2_62:                               #   in Loop: Header=BB2_18 Depth=2
	ld.d	$t3, $a5, 0
	st.d	$t3, $t8, %pc_lo12(most)
	st.w	$a0, $t3, 0
	st.w	$ra, $t3, 4
	st.w	$s8, $t3, 8
	st.w	$s1, $t3, 12
	st.w	$s6, $t3, 16
	st.w	$s1, $t3, 24
	st.w	$s1, $t3, 20
	st.w	$s6, $t3, 32
	st.w	$s6, $t3, 28
	move	$t4, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bne	$t4, $a1, .LBB2_16
	b	.LBB2_68
.LBB2_63:                               #   in Loop: Header=BB2_18 Depth=2
	st.w	$a0, $t3, 0
	st.w	$s1, $t3, 12
	st.w	$s6, $t3, 16
	ld.w	$a1, $t3, 20
	ld.d	$t5, $sp, 136                   # 8-byte Folded Reload
	bge	$s1, $a1, .LBB2_56
.LBB2_64:                               #   in Loop: Header=BB2_18 Depth=2
	st.w	$s1, $t3, 20
	ld.w	$a1, $t3, 24
	bge	$a1, $s1, .LBB2_57
.LBB2_65:                               #   in Loop: Header=BB2_18 Depth=2
	st.w	$s1, $t3, 24
	ld.w	$a1, $t3, 28
	bge	$s6, $a1, .LBB2_58
.LBB2_66:                               #   in Loop: Header=BB2_18 Depth=2
	st.w	$s6, $t3, 28
	ld.w	$a1, $t3, 32
	bge	$a1, $s6, .LBB2_59
.LBB2_67:                               #   in Loop: Header=BB2_18 Depth=2
	st.w	$s6, $t3, 32
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bne	$t4, $a1, .LBB2_16
	.p2align	4, , 16
.LBB2_68:                               #   in Loop: Header=BB2_18 Depth=2
	beqz	$a7, .LBB2_70
# %bb.69:                               #   in Loop: Header=BB2_18 Depth=2
	bne	$a7, $t3, .LBB2_15
.LBB2_70:                               #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a7, $a1, 0
	st.d	$a7, $t5, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB2_15
# %bb.71:                               # %.lr.ph50.i.preheader
                                        #   in Loop: Header=BB2_18 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_72:                               #   in Loop: Header=BB2_73 Depth=3
	addi.d	$a5, $a5, -1
	addi.d	$a1, $a1, 8
	beqz	$a5, .LBB2_15
.LBB2_73:                               # %.lr.ph50.i
                                        #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t1, $a1, 0
	ld.w	$a2, $t1, 0
	ld.w	$t2, $a7, 0
	bge	$a2, $t2, .LBB2_72
# %bb.74:                               #   in Loop: Header=BB2_73 Depth=3
	st.d	$t1, $t5, 0
	move	$a7, $t1
	b	.LBB2_72
.LBB2_75:                               # %._crit_edge217
	move	$a0, $zero
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end2:
	.size	big_pass, .Lfunc_end2-big_pass
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function locate
.LCPI3_0:
	.dword	-2                              # 0xfffffffffffffffe
	.dword	-3                              # 0xfffffffffffffffd
.LCPI3_1:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI3_2:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.text
	.globl	locate
	.p2align	5
	.type	locate,@function
locate:                                 # @locate
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(nn)
	ld.w	$s4, $a3, %pc_lo12(nn)
	pcalau12i	$a3, %pc_hi20(n1)
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.w	$t7, $a3, %pc_lo12(n1)
	pcalau12i	$a3, %pc_hi20(mm)
	ld.w	$t1, $a3, %pc_lo12(mm)
	pcalau12i	$a3, %pc_hi20(q)
	ld.w	$s5, $a3, %pc_lo12(q)
	pcalau12i	$a3, %pc_hi20(CC)
	ld.d	$s7, $a3, %pc_lo12(CC)
	pcalau12i	$a3, %pc_hi20(RR)
	ld.d	$s6, $a3, %pc_lo12(RR)
	pcalau12i	$a3, %pc_hi20(EE)
	ld.d	$a3, $a3, %pc_lo12(EE)
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(DD)
	ld.d	$a3, $a3, %pc_lo12(DD)
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(SS)
	ld.d	$a3, $a3, %pc_lo12(SS)
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(FF)
	ld.d	$a3, $a3, %pc_lo12(FF)
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a0, $t1, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$t7, $sp, 200                   # 8-byte Folded Spill
	blt	$s4, $t7, .LBB3_14
# %bb.1:                                # %.lr.ph
	move	$s1, $t1
	sub.d	$fp, $zero, $s5
	sub.d	$s0, $s4, $t7
	bstrpick.d	$a0, $s0, 31, 0
	slli.d	$a1, $a0, 2
	sub.d	$a0, $s4, $a0
	alsl.d	$a0, $a0, $s7, 2
	addi.d	$a2, $a1, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_8
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.d	$a1, $s0, 1
	ori	$a2, $zero, 8
	move	$a0, $s4
	move	$t1, $s1
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB3_6
# %bb.3:                                # %vector.ph892
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a0, $s4, $a2
	pcalau12i	$a3, %pc_hi20(.LCPI3_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI3_2)
	vreplgr2vr.w	$vr0, $fp
	vreplgr2vr.w	$vr1, $t2
	vreplgr2vr.w	$vr3, $s4
	vadd.w	$vr2, $vr3, $vr2
	slli.d	$a3, $s4, 2
	addi.d	$a7, $a3, -12
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a7
	add.d	$a4, $s6, $a7
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a7
	ld.d	$t0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	vrepli.w	$vr3, -4
	vrepli.w	$vr4, -8
	move	$t0, $a2
	.p2align	4, , 16
.LBB3_4:                                # %vector.body902
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr5, $vr2, $vr3
	vshuf4i.w	$vr6, $vr2, 27
	vst	$vr6, $a3, 0
	vshuf4i.w	$vr5, $vr5, 27
	vst	$vr5, $a3, -16
	vst	$vr0, $a5, 0
	vst	$vr0, $a5, -16
	vst	$vr6, $a7, 0
	vst	$vr5, $a7, -16
	vst	$vr1, $a6, 0
	vst	$vr1, $a6, -16
	vst	$vr1, $a4, 0
	vst	$vr1, $a4, -16
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t0, $t0, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB3_4
# %bb.5:                                # %middle.block919
	beq	$a1, $a2, .LBB3_14
.LBB3_6:                                # %.lr.ph.split.us.preheader936
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a5, 2
	alsl.d	$a6, $a0, $s6, 2
	.p2align	4, , 16
.LBB3_7:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	st.w	$fp, $a3, 0
	st.w	$a0, $a4, 0
	st.w	$t2, $a5, 0
	st.w	$t2, $a6, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a6, $a6, -4
	blt	$t7, $a1, .LBB3_7
	b	.LBB3_14
.LBB3_8:                                # %.lr.ph.split.preheader
	addi.d	$a1, $s0, 1
	ori	$a2, $zero, 8
	move	$a0, $s4
	move	$t1, $s1
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB3_12
# %bb.9:                                # %vector.ph
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a0, $s4, $a2
	vreplgr2vr.d	$vr0, $t1
	vreplgr2vr.w	$vr1, $fp
	vreplgr2vr.w	$vr2, $t2
	vreplgr2vr.d	$vr4, $s4
	pcalau12i	$a3, %pc_hi20(.LCPI3_0)
	vld	$vr3, $a3, %pc_lo12(.LCPI3_0)
	pcalau12i	$a3, %pc_hi20(.LCPI3_1)
	vld	$vr5, $a3, %pc_lo12(.LCPI3_1)
	pcalau12i	$a3, %pc_hi20(.LCPI3_2)
	vld	$vr6, $a3, %pc_lo12(.LCPI3_2)
	vadd.d	$vr3, $vr4, $vr3
	vadd.d	$vr4, $vr4, $vr5
	vreplgr2vr.w	$vr5, $s4
	vadd.w	$vr5, $vr5, $vr6
	slli.d	$a3, $s4, 2
	addi.d	$a7, $a3, -12
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a7
	add.d	$a4, $s6, $a7
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a7
	ld.d	$t0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	vrepli.d	$vr6, -4
	vrepli.w	$vr7, -4
	vrepli.d	$vr8, -8
	vrepli.w	$vr9, -8
	move	$t0, $a2
	.p2align	4, , 16
.LBB3_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.d	$vr10, $vr3, $vr6
	vadd.d	$vr11, $vr4, $vr6
	vadd.w	$vr12, $vr5, $vr7
	vshuf4i.w	$vr13, $vr5, 27
	vst	$vr13, $a3, 0
	vshuf4i.w	$vr14, $vr12, 27
	vst	$vr14, $a3, -16
	vst	$vr1, $a5, 0
	vst	$vr1, $a5, -16
	vst	$vr13, $a7, 0
	vst	$vr14, $a7, -16
	vslt.d	$vr13, $vr0, $vr4
	vslt.d	$vr14, $vr0, $vr3
	vpickev.w	$vr13, $vr14, $vr13
	vslt.d	$vr11, $vr0, $vr11
	vslt.d	$vr10, $vr0, $vr10
	vpickev.w	$vr10, $vr10, $vr11
	vbitsel.v	$vr11, $vr5, $vr2, $vr13
	vbitsel.v	$vr10, $vr12, $vr2, $vr10
	vshuf4i.w	$vr11, $vr11, 27
	vst	$vr11, $a6, 0
	vshuf4i.w	$vr10, $vr10, 27
	vst	$vr10, $a6, -16
	vst	$vr11, $a4, 0
	vst	$vr10, $a4, -16
	vadd.d	$vr4, $vr4, $vr8
	vadd.d	$vr3, $vr3, $vr8
	vadd.w	$vr5, $vr5, $vr9
	addi.d	$t0, $t0, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB3_10
# %bb.11:                               # %middle.block
	beq	$a1, $a2, .LBB3_14
.LBB3_12:                               # %.lr.ph.split.preheader937
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	alsl.d	$a2, $a0, $s6, 2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a5, 2
	move	$a6, $a0
	.p2align	4, , 16
.LBB3_13:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	st.w	$a0, $a3, 0
	st.w	$fp, $a4, 0
	st.w	$a0, $a5, 0
	slt	$a6, $t1, $a6
	masknez	$t0, $a0, $a6
	maskeqz	$a6, $t2, $a6
	or	$a6, $a6, $t0
	st.w	$a6, $a1, 0
	st.w	$a6, $a2, 0
	addi.d	$a6, $a7, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, -4
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	blt	$t7, $a7, .LBB3_13
.LBB3_14:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(m1)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a1, $a0, %pc_lo12(m1)
	pcalau12i	$a0, %pc_hi20(v)
	ld.d	$a0, $a0, %pc_lo12(v)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(r)
	ld.w	$a3, $a0, %pc_lo12(r)
	pcalau12i	$a0, %pc_hi20(qr)
	ld.w	$a4, $a0, %pc_lo12(qr)
	pcalau12i	$a0, %pc_hi20(min)
	ld.w	$a0, $a0, %pc_lo12(min)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(HH)
	ld.d	$a0, $a0, %pc_lo12(HH)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(II)
	ld.d	$a0, $a0, %pc_lo12(II)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(JJ)
	ld.d	$a0, $a0, %pc_lo12(JJ)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(WW)
	ld.d	$a0, $a0, %pc_lo12(WW)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(XX)
	ld.d	$a0, $a0, %pc_lo12(XX)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(YY)
	ld.d	$a0, $a0, %pc_lo12(YY)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $s5
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s4, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(row)
	pcalau12i	$a2, %pc_hi20(flag)
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$t8, %pc_hi20(z)
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	st.d	$t1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bge	$t1, $a1, .LBB3_150
# %bb.15:                               # %._crit_edge.._crit_edge650_crit_edge
                                        # implicit-def: $r1
                                        # implicit-def: $r28
.LBB3_16:                               # %._crit_edge650
	pcalau12i	$a0, %pc_hi20(rl)
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.w	$a7, $a0, %pc_lo12(rl)
	pcalau12i	$a2, %pc_hi20(cl)
	pcalau12i	$a0, %pc_hi20(numnode)
	ld.w	$a5, $a0, %pc_lo12(numnode)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$t7, $a2, %pc_lo12(cl)
	pcalau12i	$a0, %pc_hi20(LIST)
	ld.d	$a0, $a0, %pc_lo12(LIST)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
.LBB3_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
                                        #       Child Loop BB3_19 Depth 3
                                        #         Child Loop BB3_20 Depth 4
                                        #           Child Loop BB3_43 Depth 5
                                        #             Child Loop BB3_62 Depth 6
                                        #         Child Loop BB3_82 Depth 4
                                        #           Child Loop BB3_95 Depth 5
                                        #     Child Loop BB3_136 Depth 2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(row)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$fp, $a7
	ori	$s2, $zero, 1
.LBB3_18:                               # %.outer
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_19 Depth 3
                                        #         Child Loop BB3_20 Depth 4
                                        #           Child Loop BB3_43 Depth 5
                                        #             Child Loop BB3_62 Depth 6
                                        #         Child Loop BB3_82 Depth 4
                                        #           Child Loop BB3_95 Depth 5
	ori	$a0, $zero, 1
.LBB3_19:                               # %.outer
                                        #   Parent Loop BB3_17 Depth=1
                                        #     Parent Loop BB3_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_20 Depth 4
                                        #           Child Loop BB3_43 Depth 5
                                        #             Child Loop BB3_62 Depth 6
                                        #         Child Loop BB3_82 Depth 4
                                        #           Child Loop BB3_95 Depth 5
	move	$t2, $a0
	.p2align	4, , 16
.LBB3_20:                               #   Parent Loop BB3_17 Depth=1
                                        #     Parent Loop BB3_18 Depth=2
                                        #       Parent Loop BB3_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_43 Depth 5
                                        #             Child Loop BB3_62 Depth 6
	beqz	$t2, .LBB3_33
# %bb.21:                               #   in Loop: Header=BB3_20 Depth=4
	ori	$a0, $zero, 1
	bge	$a0, $fp, .LBB3_33
# %bb.22:                               #   in Loop: Header=BB3_20 Depth=4
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	addi.w	$a7, $fp, -1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$a7, $a0, %pc_lo12(m1)
	bge	$s4, $t7, .LBB3_39
# %bb.23:                               # %._crit_edge781
                                        #   in Loop: Header=BB3_20 Depth=4
	move	$t2, $zero
	move	$t1, $a7
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$t3, $s0
	move	$s2, $a7
	move	$t4, $a7
.LBB3_24:                               # %._crit_edge674
                                        #   in Loop: Header=BB3_20 Depth=4
	slli.d	$a0, $t7, 2
	ldx.w	$a1, $s7, $a0
	move	$a7, $s2
	slli.d	$a2, $s2, 2
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	stx.w	$a1, $a5, $a2
	ldx.w	$a1, $s6, $a0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	stx.w	$a1, $a5, $a2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	stx.w	$a1, $a5, $a2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a1, $a5, $a2
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	stx.w	$a1, $a5, $a2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $a2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a1, $a0, 48
	ori	$a0, $zero, 1
	bnez	$a1, .LBB3_32
# %bb.25:                               #   in Loop: Header=BB3_20 Depth=4
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $t1, .LBB3_27
# %bb.26:                               #   in Loop: Header=BB3_20 Depth=4
	addi.w	$a1, $t3, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_32
.LBB3_27:                               #   in Loop: Header=BB3_20 Depth=4
	addi.w	$a1, $ra, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB3_29
# %bb.28:                               #   in Loop: Header=BB3_20 Depth=4
	addi.w	$a1, $s5, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_32
.LBB3_29:                               #   in Loop: Header=BB3_20 Depth=4
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $t4, .LBB3_31
# %bb.30:                               #   in Loop: Header=BB3_20 Depth=4
	addi.w	$a1, $s0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_32
.LBB3_31:                               #   in Loop: Header=BB3_20 Depth=4
	move	$a0, $zero
	.p2align	4, , 16
.LBB3_32:                               #   in Loop: Header=BB3_20 Depth=4
	move	$fp, $a7
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	b	.LBB3_35
	.p2align	4, , 16
.LBB3_33:                               #   in Loop: Header=BB3_20 Depth=4
	slli.d	$a0, $s2, 48
	beqz	$a0, .LBB3_131
# %bb.34:                               #   in Loop: Header=BB3_20 Depth=4
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	bge	$a1, $t7, .LBB3_131
.LBB3_35:                               # %.critedge
                                        #   in Loop: Header=BB3_20 Depth=4
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB3_37
# %bb.36:                               #   in Loop: Header=BB3_20 Depth=4
	addi.w	$a1, $fp, 1
	xor	$a1, $t7, $a1
	sltu	$a1, $zero, $a1
	sltu	$a2, $zero, $t2
	maskeqz	$a5, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a0, $a0, $a2
	or	$s2, $a5, $a0
	bnez	$s2, .LBB3_38
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_37:                               #   in Loop: Header=BB3_20 Depth=4
	move	$s2, $a0
	beqz	$s2, .LBB3_20
.LBB3_38:                               #   in Loop: Header=BB3_20 Depth=4
	ori	$a0, $zero, 2
	blt	$t7, $a0, .LBB3_20
	b	.LBB3_78
	.p2align	4, , 16
.LBB3_39:                               # %.lr.ph673
                                        #   in Loop: Header=BB3_20 Depth=4
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.b	$a1, $a0, $a7
	move	$t0, $zero
	move	$a5, $zero
	move	$a0, $zero
	slli.d	$a1, $a1, 10
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$t5, $a2, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a6, $a7, $a1, 3
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	move	$t6, $t3
	move	$s0, $t3
	move	$t4, $a7
	move	$s2, $a7
	move	$t1, $a7
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_43
	.p2align	4, , 16
.LBB3_40:                               #   in Loop: Header=BB3_43 Depth=5
	ori	$t2, $zero, 1
	move	$s7, $s8
	beqz	$t0, .LBB3_54
# %bb.41:                               #   in Loop: Header=BB3_43 Depth=5
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
.LBB3_42:                               #   in Loop: Header=BB3_43 Depth=5
	addi.d	$s4, $s3, -1
	move	$t0, $t2
	bge	$t7, $s3, .LBB3_24
.LBB3_43:                               #   Parent Loop BB3_17 Depth=1
                                        #     Parent Loop BB3_18 Depth=2
                                        #       Parent Loop BB3_19 Depth=3
                                        #         Parent Loop BB3_20 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_62 Depth 6
	sub.w	$a7, $a7, $a3
	sub.w	$t2, $a0, $a4
	move	$a2, $a5
	move	$a1, $fp
	move	$a0, $t6
	move	$s3, $s4
	bge	$a7, $t2, .LBB3_46
# %bb.44:                               #   in Loop: Header=BB3_43 Depth=5
	move	$a7, $t2
.LBB3_45:                               #   in Loop: Header=BB3_43 Depth=5
	move	$t4, $t1
	move	$s0, $t3
	b	.LBB3_49
	.p2align	4, , 16
.LBB3_46:                               #   in Loop: Header=BB3_43 Depth=5
	bne	$a7, $t2, .LBB3_49
# %bb.47:                               #   in Loop: Header=BB3_43 Depth=5
	blt	$t4, $t1, .LBB3_45
# %bb.48:                               #   in Loop: Header=BB3_43 Depth=5
	xor	$a5, $t4, $t1
	sltui	$a5, $a5, 1
	addi.w	$t1, $s0, 0
	addi.w	$t2, $t3, 0
	slt	$t3, $t2, $t1
	masknez	$t2, $t2, $t3
	maskeqz	$t1, $t1, $t3
	or	$t1, $t1, $t2
	maskeqz	$t1, $t1, $a5
	masknez	$a5, $s0, $a5
	or	$s0, $t1, $a5
	.p2align	4, , 16
.LBB3_49:                               #   in Loop: Header=BB3_43 Depth=5
	slli.d	$t1, $s3, 2
	ldx.w	$a5, $s7, $t1
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $t1
	ldx.w	$fp, $s6, $t1
	ld.d	$t3, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$t6, $t3, $t1
	sub.w	$s1, $a5, $a4
	sub.w	$t2, $t2, $a3
	bge	$t2, $s1, .LBB3_51
.LBB3_50:                               #   in Loop: Header=BB3_43 Depth=5
	move	$ra, $fp
	move	$s5, $t6
	ld.d	$t1, $a6, 0
	st.d	$t1, $t8, %pc_lo12(z)
	bnez	$t1, .LBB3_62
	b	.LBB3_64
	.p2align	4, , 16
.LBB3_51:                               #   in Loop: Header=BB3_43 Depth=5
	ld.d	$t3, $sp, 256                   # 8-byte Folded Reload
	ldx.w	$ra, $t3, $t1
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$s5, $t3, $t1
	bne	$t2, $s1, .LBB3_61
# %bb.52:                               #   in Loop: Header=BB3_43 Depth=5
	blt	$ra, $fp, .LBB3_50
# %bb.53:                               #   in Loop: Header=BB3_43 Depth=5
	xor	$t1, $ra, $fp
	sltui	$t1, $t1, 1
	slt	$t2, $t6, $s5
	masknez	$t3, $t6, $t2
	maskeqz	$t2, $s5, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	masknez	$t1, $s5, $t1
	or	$s5, $t2, $t1
	ld.d	$t1, $a6, 0
	st.d	$t1, $t8, %pc_lo12(z)
	bnez	$t1, .LBB3_62
	b	.LBB3_64
	.p2align	4, , 16
.LBB3_54:                               #   in Loop: Header=BB3_43 Depth=5
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $t1, .LBB3_56
# %bb.55:                               #   in Loop: Header=BB3_43 Depth=5
	addi.w	$a1, $t3, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_60
.LBB3_56:                               #   in Loop: Header=BB3_43 Depth=5
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $ra, .LBB3_58
# %bb.57:                               #   in Loop: Header=BB3_43 Depth=5
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	blt	$a1, $s5, .LBB3_60
.LBB3_58:                               #   in Loop: Header=BB3_43 Depth=5
	move	$t2, $zero
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $t4, .LBB3_42
# %bb.59:                               #   in Loop: Header=BB3_43 Depth=5
	addi.w	$a1, $s0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB3_42
	.p2align	4, , 16
.LBB3_60:                               #   in Loop: Header=BB3_43 Depth=5
	ori	$t2, $zero, 1
	b	.LBB3_42
	.p2align	4, , 16
.LBB3_61:                               #   in Loop: Header=BB3_43 Depth=5
	move	$s1, $t2
	ld.d	$t1, $a6, 0
	st.d	$t1, $t8, %pc_lo12(z)
	beqz	$t1, .LBB3_64
	.p2align	4, , 16
.LBB3_62:                               # %.lr.ph658
                                        #   Parent Loop BB3_17 Depth=1
                                        #     Parent Loop BB3_18 Depth=2
                                        #       Parent Loop BB3_19 Depth=3
                                        #         Parent Loop BB3_20 Depth=4
                                        #           Parent Loop BB3_43 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.w	$t2, $t1, 0
	addi.w	$t3, $s3, 0
	beq	$t2, $t3, .LBB3_65
# %bb.63:                               #   in Loop: Header=BB3_62 Depth=6
	ld.d	$t1, $t1, 8
	st.d	$t1, $t8, %pc_lo12(z)
	bnez	$t1, .LBB3_62
.LBB3_64:                               # %._crit_edge659
                                        #   in Loop: Header=BB3_43 Depth=5
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ldx.b	$t1, $t1, $s3
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $t5, $t1
	add.w	$a2, $t1, $a2
	b	.LBB3_66
	.p2align	4, , 16
.LBB3_65:                               #   in Loop: Header=BB3_43 Depth=5
	move	$a2, $zero
.LBB3_66:                               # %.thread594
                                        #   in Loop: Header=BB3_43 Depth=5
	slti	$t3, $a2, 1
	masknez	$t1, $a2, $t3
	move	$t2, $s1
	move	$a2, $ra
	move	$s4, $s5
	blt	$t1, $s1, .LBB3_71
# %bb.67:                               #   in Loop: Header=BB3_43 Depth=5
	masknez	$a1, $a1, $t3
	maskeqz	$a2, $s2, $t3
	or	$a1, $a2, $a1
	masknez	$a0, $a0, $t3
	maskeqz	$a2, $s3, $t3
	or	$a0, $a2, $a0
	bne	$t1, $s1, .LBB3_70
# %bb.68:                               #   in Loop: Header=BB3_43 Depth=5
	move	$t2, $s1
	move	$a2, $ra
	move	$s4, $s5
	blt	$a1, $ra, .LBB3_71
# %bb.69:                               #   in Loop: Header=BB3_43 Depth=5
	xor	$a2, $a1, $ra
	sltui	$a2, $a2, 1
	addi.w	$t1, $a0, 0
	slt	$t2, $s5, $t1
	masknez	$t3, $s5, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t3
	maskeqz	$t1, $t1, $a2
	masknez	$a0, $a0, $a2
	or	$s4, $t1, $a0
	move	$t2, $s1
	move	$a2, $a1
	b	.LBB3_71
	.p2align	4, , 16
.LBB3_70:                               #   in Loop: Header=BB3_43 Depth=5
	move	$t2, $t1
	move	$a2, $a1
	move	$s4, $a0
.LBB3_71:                               #   in Loop: Header=BB3_43 Depth=5
	move	$a0, $a7
	move	$t1, $t4
	move	$t3, $s0
	blt	$t2, $a7, .LBB3_76
# %bb.72:                               #   in Loop: Header=BB3_43 Depth=5
	bne	$t2, $a7, .LBB3_75
# %bb.73:                               #   in Loop: Header=BB3_43 Depth=5
	move	$a0, $a7
	move	$t1, $t4
	move	$t3, $s0
	blt	$a2, $t4, .LBB3_76
# %bb.74:                               #   in Loop: Header=BB3_43 Depth=5
	xor	$a0, $a2, $t4
	sltui	$a0, $a0, 1
	addi.w	$a1, $s4, 0
	addi.w	$t1, $s0, 0
	slt	$t2, $t1, $a1
	masknez	$t1, $t1, $t2
	maskeqz	$a1, $a1, $t2
	or	$a1, $a1, $t1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$t3, $a1, $a0
	move	$a0, $a7
	move	$t1, $a2
	b	.LBB3_76
	.p2align	4, , 16
.LBB3_75:                               #   in Loop: Header=BB3_43 Depth=5
	move	$a0, $t2
	move	$t1, $a2
	move	$t3, $s4
.LBB3_76:                               #   in Loop: Header=BB3_43 Depth=5
	move	$s8, $s7
	alsl.d	$a1, $s3, $s7, 2
	alsl.d	$a2, $s3, $s6, 2
	ld.d	$t2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t2, $s3, $t2, 2
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s4, $s3, $s4, 2
	ld.d	$s6, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s6, $s3, $s6, 2
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s7, $s3, $s7, 2
	st.w	$a0, $a1, 0
	st.w	$t1, $a2, 0
	st.w	$t3, $t2, 0
	st.w	$s1, $s4, 0
	st.w	$ra, $s6, 0
	st.w	$s5, $s7, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB3_40
# %bb.77:                               #   in Loop: Header=BB3_43 Depth=5
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	st.b	$a2, $a1, %pc_lo12(flag)
	b	.LBB3_40
	.p2align	4, , 16
.LBB3_78:                               #   in Loop: Header=BB3_19 Depth=3
	move	$a6, $zero
	addi.w	$t3, $t7, -1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$t3, $a0, %pc_lo12(n1)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB3_121
# %bb.79:                               #   in Loop: Header=BB3_19 Depth=3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	blt	$a0, $t3, .LBB3_121
# %bb.80:                               #   in Loop: Header=BB3_19 Depth=3
	slli.d	$a0, $t3, 2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a6, $a1, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$t0, $a2, $a0
	addi.w	$t4, $t7, -2
	move	$t6, $t3
	move	$t7, $a1
	blt	$t4, $fp, .LBB3_122
.LBB3_81:                               # %.lr.ph703.preheader
                                        #   in Loop: Header=BB3_19 Depth=3
	move	$s8, $a7
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ldx.b	$a1, $a0, $t3
	move	$s2, $zero
	move	$a0, $zero
	slli.d	$a1, $a1, 10
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	move	$t5, $t3
	move	$t1, $t6
	move	$s3, $t3
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_82:                               # %.lr.ph703
                                        #   Parent Loop BB3_17 Depth=1
                                        #     Parent Loop BB3_18 Depth=2
                                        #       Parent Loop BB3_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_95 Depth 5
	sub.w	$a7, $a7, $a3
	sub.w	$s0, $a0, $a4
	move	$a5, $a6
	move	$a1, $t0
	move	$a0, $t7
	move	$a2, $t4
	bge	$a7, $s0, .LBB3_85
# %bb.83:                               #   in Loop: Header=BB3_82 Depth=4
	move	$a7, $s0
.LBB3_84:                               #   in Loop: Header=BB3_82 Depth=4
	move	$t1, $t6
	move	$t5, $s3
	b	.LBB3_88
	.p2align	4, , 16
.LBB3_85:                               #   in Loop: Header=BB3_82 Depth=4
	bne	$a7, $s0, .LBB3_88
# %bb.86:                               #   in Loop: Header=BB3_82 Depth=4
	blt	$t1, $t6, .LBB3_84
# %bb.87:                               #   in Loop: Header=BB3_82 Depth=4
	xor	$a6, $t1, $t6
	sltui	$a6, $a6, 1
	slt	$t0, $s3, $t5
	masknez	$t4, $s3, $t0
	maskeqz	$t0, $t5, $t0
	or	$t0, $t0, $t4
	maskeqz	$t0, $t0, $a6
	masknez	$a6, $t5, $a6
	or	$t5, $t0, $a6
	.p2align	4, , 16
.LBB3_88:                               #   in Loop: Header=BB3_82 Depth=4
	slli.d	$t4, $a2, 2
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a6, $a6, $t4
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$t6, $t0, $t4
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $t4
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	ldx.w	$t7, $t7, $t4
	sub.w	$s0, $a6, $a4
	sub.w	$t6, $t6, $a3
	bge	$t6, $s0, .LBB3_90
.LBB3_89:                               #   in Loop: Header=BB3_82 Depth=4
	move	$ra, $t0
	move	$s5, $t7
	b	.LBB3_94
	.p2align	4, , 16
.LBB3_90:                               #   in Loop: Header=BB3_82 Depth=4
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$ra, $s1, $t4
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$s5, $s1, $t4
	bne	$t6, $s0, .LBB3_93
# %bb.91:                               #   in Loop: Header=BB3_82 Depth=4
	blt	$ra, $t0, .LBB3_89
# %bb.92:                               #   in Loop: Header=BB3_82 Depth=4
	xor	$t4, $ra, $t0
	sltui	$t4, $t4, 1
	slt	$t6, $t7, $s5
	masknez	$s1, $t7, $t6
	maskeqz	$t6, $s5, $t6
	or	$t6, $t6, $s1
	maskeqz	$t6, $t6, $t4
	masknez	$t4, $s5, $t4
	or	$s5, $t6, $t4
	b	.LBB3_94
	.p2align	4, , 16
.LBB3_93:                               #   in Loop: Header=BB3_82 Depth=4
	move	$s0, $t6
.LBB3_94:                               #   in Loop: Header=BB3_82 Depth=4
	slli.d	$t4, $a2, 3
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$t4, $t6, $t4
	st.d	$t4, $t8, %pc_lo12(z)
	beqz	$t4, .LBB3_97
	.p2align	4, , 16
.LBB3_95:                               # %.lr.ph688
                                        #   Parent Loop BB3_17 Depth=1
                                        #     Parent Loop BB3_18 Depth=2
                                        #       Parent Loop BB3_19 Depth=3
                                        #         Parent Loop BB3_82 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t6, $t4, 0
	beq	$t6, $t3, .LBB3_98
# %bb.96:                               #   in Loop: Header=BB3_95 Depth=5
	ld.d	$t4, $t4, 8
	st.d	$t4, $t8, %pc_lo12(z)
	bnez	$t4, .LBB3_95
.LBB3_97:                               # %._crit_edge689
                                        #   in Loop: Header=BB3_82 Depth=4
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
	ldx.b	$t4, $t4, $a2
	slli.d	$t4, $t4, 2
	ld.d	$t6, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$t4, $t6, $t4
	add.w	$a5, $t4, $a5
	b	.LBB3_99
	.p2align	4, , 16
.LBB3_98:                               #   in Loop: Header=BB3_82 Depth=4
	move	$a5, $zero
.LBB3_99:                               # %.thread597
                                        #   in Loop: Header=BB3_82 Depth=4
	slti	$s3, $a5, 1
	masknez	$t6, $a5, $s3
	move	$s1, $s0
	move	$a5, $ra
	move	$t4, $s5
	blt	$t6, $s0, .LBB3_104
# %bb.100:                              #   in Loop: Header=BB3_82 Depth=4
	masknez	$a1, $a1, $s3
	maskeqz	$a5, $a2, $s3
	or	$a1, $a5, $a1
	addi.w	$a1, $a1, 0
	masknez	$a0, $a0, $s3
	maskeqz	$a5, $t3, $s3
	or	$a0, $a5, $a0
	bne	$t6, $s0, .LBB3_103
# %bb.101:                              #   in Loop: Header=BB3_82 Depth=4
	move	$s1, $s0
	move	$a5, $ra
	move	$t4, $s5
	blt	$a1, $ra, .LBB3_104
# %bb.102:                              #   in Loop: Header=BB3_82 Depth=4
	xor	$a5, $a1, $ra
	sltui	$a5, $a5, 1
	slt	$t4, $s5, $a0
	masknez	$t6, $s5, $t4
	maskeqz	$t4, $a0, $t4
	or	$t4, $t4, $t6
	maskeqz	$t4, $t4, $a5
	masknez	$a0, $a0, $a5
	or	$t4, $t4, $a0
	move	$s1, $s0
	move	$a5, $a1
	b	.LBB3_104
	.p2align	4, , 16
.LBB3_103:                              #   in Loop: Header=BB3_82 Depth=4
	move	$s1, $t6
	move	$a5, $a1
	move	$t4, $a0
.LBB3_104:                              #   in Loop: Header=BB3_82 Depth=4
	move	$a0, $a7
	move	$t6, $t1
	move	$s3, $t5
	blt	$s1, $a7, .LBB3_109
# %bb.105:                              #   in Loop: Header=BB3_82 Depth=4
	bne	$s1, $a7, .LBB3_108
# %bb.106:                              #   in Loop: Header=BB3_82 Depth=4
	move	$a0, $a7
	move	$t6, $t1
	move	$s3, $t5
	blt	$a5, $t1, .LBB3_109
# %bb.107:                              #   in Loop: Header=BB3_82 Depth=4
	xor	$a0, $a5, $t1
	sltui	$a0, $a0, 1
	slt	$a1, $t5, $t4
	masknez	$t6, $t5, $a1
	maskeqz	$a1, $t4, $a1
	or	$a1, $a1, $t6
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $t4, $a0
	or	$s3, $a1, $a0
	move	$a0, $a7
	move	$t6, $a5
	b	.LBB3_109
	.p2align	4, , 16
.LBB3_108:                              #   in Loop: Header=BB3_82 Depth=4
	move	$a0, $s1
	move	$t6, $a5
	move	$s3, $t4
.LBB3_109:                              #   in Loop: Header=BB3_82 Depth=4
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 2
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 2
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$s1, $a2, $s1, 2
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$s4, $a2, $s4, 2
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s6, $a2, $s6, 2
	st.w	$a0, $a1, 0
	st.w	$t6, $a5, 0
	st.w	$s3, $t4, 0
	st.w	$s0, $s1, 0
	st.w	$ra, $s4, 0
	st.w	$s5, $s6, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB3_111
# %bb.110:                              #   in Loop: Header=BB3_82 Depth=4
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	st.b	$a5, $a1, %pc_lo12(flag)
.LBB3_111:                              #   in Loop: Header=BB3_82 Depth=4
	slli.d	$a1, $s2, 48
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_118
# %bb.112:                              #   in Loop: Header=BB3_82 Depth=4
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $t6, .LBB3_114
# %bb.113:                              #   in Loop: Header=BB3_82 Depth=4
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	blt	$a1, $s3, .LBB3_118
.LBB3_114:                              #   in Loop: Header=BB3_82 Depth=4
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $ra, .LBB3_116
# %bb.115:                              #   in Loop: Header=BB3_82 Depth=4
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	blt	$a1, $s5, .LBB3_118
.LBB3_116:                              #   in Loop: Header=BB3_82 Depth=4
	move	$s2, $zero
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $t1, .LBB3_119
# %bb.117:                              #   in Loop: Header=BB3_82 Depth=4
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	bge	$a1, $t5, .LBB3_119
	.p2align	4, , 16
.LBB3_118:                              #   in Loop: Header=BB3_82 Depth=4
	ori	$s2, $zero, 1
.LBB3_119:                              #   in Loop: Header=BB3_82 Depth=4
	addi.d	$t4, $a2, -1
	blt	$fp, $a2, .LBB3_82
# %bb.120:                              #   in Loop: Header=BB3_19 Depth=3
	move	$a7, $s8
	b	.LBB3_123
	.p2align	4, , 16
.LBB3_121:                              #   in Loop: Header=BB3_19 Depth=3
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	move	$t6, $t0
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	bge	$t4, $fp, .LBB3_81
.LBB3_122:                              # %._crit_edge780
                                        #   in Loop: Header=BB3_19 Depth=3
	move	$s2, $zero
	move	$s3, $t3
	move	$t1, $t6
	move	$t5, $t3
.LBB3_123:                              # %._crit_edge704
                                        #   in Loop: Header=BB3_19 Depth=3
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a2, $t3, 2
	stx.w	$a1, $s7, $a2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	stx.w	$a1, $s6, $a2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	stx.w	$a1, $a5, $a2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	stx.w	$a1, $a5, $a2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	stx.w	$a1, $a5, $a2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $a2
	move	$t7, $t3
	ori	$a0, $zero, 1
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	bnez	$t2, .LBB3_19
# %bb.124:                              #   in Loop: Header=BB3_19 Depth=3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$a0, $t6, .LBB3_126
# %bb.125:                              #   in Loop: Header=BB3_19 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB3_130
.LBB3_126:                              #   in Loop: Header=BB3_19 Depth=3
	addi.w	$a0, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB3_128
# %bb.127:                              #   in Loop: Header=BB3_19 Depth=3
	addi.w	$a0, $s5, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_130
.LBB3_128:                              #   in Loop: Header=BB3_19 Depth=3
	move	$a0, $zero
	move	$t7, $t3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $t1, .LBB3_19
# %bb.129:                              #   in Loop: Header=BB3_19 Depth=3
	move	$t7, $t3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	bge	$a1, $t5, .LBB3_19
	.p2align	4, , 16
.LBB3_130:                              #   in Loop: Header=BB3_18 Depth=2
	move	$t7, $t3
	b	.LBB3_18
	.p2align	4, , 16
.LBB3_131:                              #   in Loop: Header=BB3_17 Depth=1
	ori	$a2, $zero, 1
	bne	$fp, $a2, .LBB3_133
# %bb.132:                              #   in Loop: Header=BB3_17 Depth=1
	ori	$a1, $zero, 1
	ori	$a0, $zero, 1
	beq	$t7, $a0, .LBB3_148
.LBB3_133:                              #   in Loop: Header=BB3_17 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	blez	$a0, .LBB3_147
# %bb.134:                              # %.lr.ph.i
                                        #   in Loop: Header=BB3_17 Depth=1
	move	$t3, $a7
	move	$a0, $zero
	addi.w	$a1, $fp, -1
	addi.w	$a2, $t7, -1
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	b	.LBB3_136
	.p2align	4, , 16
.LBB3_135:                              #   in Loop: Header=BB3_136 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	beqz	$a6, .LBB3_149
.LBB3_136:                              #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a5, 0
	ld.w	$t0, $t1, 4
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	blt	$a7, $t0, .LBB3_135
# %bb.137:                              #   in Loop: Header=BB3_136 Depth=2
	ld.w	$a7, $t1, 8
	blt	$s4, $a7, .LBB3_135
# %bb.138:                              #   in Loop: Header=BB3_136 Depth=2
	ld.w	$t2, $t1, 24
	blt	$t2, $a1, .LBB3_135
# %bb.139:                              #   in Loop: Header=BB3_136 Depth=2
	ld.w	$t1, $t1, 32
	blt	$t1, $a2, .LBB3_135
# %bb.140:                              #   in Loop: Header=BB3_136 Depth=2
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	blt	$t0, $t1, .LBB3_142
# %bb.141:                              #   in Loop: Header=BB3_136 Depth=2
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	bge	$a7, $t1, .LBB3_135
.LBB3_142:                              #   in Loop: Header=BB3_17 Depth=1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$t0, $a1, .LBB3_144
# %bb.143:                              #   in Loop: Header=BB3_17 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$t0, $a1, %pc_lo12(rl)
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
.LBB3_144:                              #   in Loop: Header=BB3_17 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	bge	$a7, $a1, .LBB3_146
# %bb.145:                              #   in Loop: Header=BB3_17 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a7, $a1, %pc_lo12(cl)
	st.d	$a7, $sp, 200                   # 8-byte Folded Spill
.LBB3_146:                              #   in Loop: Header=BB3_17 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	st.b	$a2, $a1, %pc_lo12(flag)
	move	$a7, $t3
	move	$a2, $t7
	move	$a1, $fp
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a5, .LBB3_17
	b	.LBB3_148
	.p2align	4, , 16
.LBB3_147:                              #   in Loop: Header=BB3_17 Depth=1
	move	$a0, $zero
	move	$a2, $t7
	move	$a1, $fp
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a5, .LBB3_17
.LBB3_148:                              # %no_cross.exit.thread.loopexit728
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -1
.LBB3_149:                              # %no_cross.exit.thread
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a0, %pc_lo12(m1)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a2, $a0, %pc_lo12(n1)
	move	$a0, $zero
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB3_150:                              # %.lr.ph649
	ld.d	$a0, $a0, %pc_lo12(row)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a0, $t7, $s7, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $t7, $s6, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $t7, $a0, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $t7, $a0, 2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $t7, $a0, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $t7, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $t1
                                        # implicit-def: $r28
                                        # implicit-def: $r1
	b	.LBB3_152
	.p2align	4, , 16
.LBB3_151:                              #   in Loop: Header=BB3_152 Depth=1
	addi.d	$a0, $s2, -1
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $s2, .LBB3_16
.LBB3_152:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_157 Depth 2
                                        #       Child Loop BB3_169 Depth 3
	move	$a2, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	slt	$a1, $a2, $t7
	or	$a1, $a0, $a1
	move	$s2, $a2
	addi.w	$t1, $a2, 1
	masknez	$a0, $t1, $a1
	move	$s8, $a1
	maskeqz	$a1, $t7, $a1
	or	$a7, $a1, $a0
	bge	$s4, $a7, .LBB3_155
.LBB3_153:                              # %._crit_edge640
                                        #   in Loop: Header=BB3_152 Depth=1
	beqz	$s8, .LBB3_151
# %bb.154:                              #   in Loop: Header=BB3_152 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a1, $s2, 2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	b	.LBB3_151
	.p2align	4, , 16
.LBB3_155:                              # %.lr.ph639
                                        #   in Loop: Header=BB3_152 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$s0, $s2
	ldx.b	$a1, $a0, $s2
	move	$fp, $zero
	move	$a0, $zero
	slli.d	$a1, $a1, 10
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s3, $s2, $a1, 3
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	move	$t4, $a5
	move	$t7, $a5
	move	$t6, $s2
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_157
	.p2align	4, , 16
.LBB3_156:                              #   in Loop: Header=BB3_157 Depth=2
	addi.d	$a6, $a2, -1
	move	$t4, $t5
	move	$t1, $t3
	move	$fp, $t2
	bge	$a7, $a2, .LBB3_153
.LBB3_157:                              #   Parent Loop BB3_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_169 Depth 3
	sub.w	$t0, $t0, $a3
	sub.w	$a0, $a0, $a4
	move	$a2, $a6
	bge	$t0, $a0, .LBB3_160
# %bb.158:                              #   in Loop: Header=BB3_157 Depth=2
	move	$t0, $a0
.LBB3_159:                              #   in Loop: Header=BB3_157 Depth=2
	move	$t6, $s0
	move	$t7, $a5
	b	.LBB3_163
	.p2align	4, , 16
.LBB3_160:                              #   in Loop: Header=BB3_157 Depth=2
	bne	$t0, $a0, .LBB3_163
# %bb.161:                              #   in Loop: Header=BB3_157 Depth=2
	addi.w	$a0, $s0, 0
	addi.w	$a1, $t6, 0
	blt	$a1, $a0, .LBB3_159
# %bb.162:                              #   in Loop: Header=BB3_157 Depth=2
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.w	$a1, $t7, 0
	addi.w	$a5, $a5, 0
	slt	$a6, $a5, $a1
	masknez	$a5, $a5, $a6
	maskeqz	$a1, $a1, $a6
	or	$a1, $a1, $a5
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $t7, $a0
	or	$t7, $a1, $a0
	.p2align	4, , 16
.LBB3_163:                              #   in Loop: Header=BB3_157 Depth=2
	slli.d	$a0, $a2, 2
	ldx.w	$t2, $s7, $a0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$a5, $a1, $a0
	ldx.w	$t3, $s6, $a0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$t5, $a1, $a0
	sub.w	$a1, $t2, $a4
	sub.w	$a5, $a5, $a3
	bge	$a5, $a1, .LBB3_165
.LBB3_164:                              #   in Loop: Header=BB3_157 Depth=2
	move	$ra, $t3
	move	$s5, $t5
	ld.d	$a0, $s3, 0
	st.d	$a0, $t8, %pc_lo12(z)
	bnez	$a0, .LBB3_169
	b	.LBB3_171
	.p2align	4, , 16
.LBB3_165:                              #   in Loop: Header=BB3_157 Depth=2
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ldx.w	$ra, $a6, $a0
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$s5, $a6, $a0
	bne	$a5, $a1, .LBB3_168
# %bb.166:                              #   in Loop: Header=BB3_157 Depth=2
	blt	$ra, $t3, .LBB3_164
# %bb.167:                              #   in Loop: Header=BB3_157 Depth=2
	xor	$a0, $ra, $t3
	sltui	$a0, $a0, 1
	slt	$a5, $t5, $s5
	masknez	$a6, $t5, $a5
	maskeqz	$a5, $s5, $a5
	or	$a5, $a5, $a6
	maskeqz	$a5, $a5, $a0
	masknez	$a0, $s5, $a0
	or	$s5, $a5, $a0
	ld.d	$a0, $s3, 0
	st.d	$a0, $t8, %pc_lo12(z)
	bnez	$a0, .LBB3_169
	b	.LBB3_171
	.p2align	4, , 16
.LBB3_168:                              #   in Loop: Header=BB3_157 Depth=2
	move	$a1, $a5
	ld.d	$a0, $s3, 0
	st.d	$a0, $t8, %pc_lo12(z)
	beqz	$a0, .LBB3_171
	.p2align	4, , 16
.LBB3_169:                              # %.lr.ph625
                                        #   Parent Loop BB3_152 Depth=1
                                        #     Parent Loop BB3_157 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a0, 0
	addi.w	$a6, $a2, 0
	beq	$a5, $a6, .LBB3_172
# %bb.170:                              #   in Loop: Header=BB3_169 Depth=3
	ld.d	$a0, $a0, 8
	st.d	$a0, $t8, %pc_lo12(z)
	bnez	$a0, .LBB3_169
.LBB3_171:                              # %._crit_edge626
                                        #   in Loop: Header=BB3_157 Depth=2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ldx.b	$a0, $a0, $a2
	slli.d	$a0, $a0, 2
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$a0, $a5, $a0
	add.w	$a0, $a0, $fp
	b	.LBB3_173
	.p2align	4, , 16
.LBB3_172:                              #   in Loop: Header=BB3_157 Depth=2
	move	$a0, $zero
.LBB3_173:                              # %.thread
                                        #   in Loop: Header=BB3_157 Depth=2
	slti	$a5, $a0, 1
	masknez	$s0, $a0, $a5
	move	$a6, $a1
	move	$fp, $ra
	move	$s4, $s5
	blt	$s0, $a1, .LBB3_178
# %bb.174:                              #   in Loop: Header=BB3_157 Depth=2
	masknez	$a0, $t1, $a5
	maskeqz	$a6, $s2, $a5
	or	$a0, $a6, $a0
	addi.w	$a0, $a0, 0
	masknez	$a6, $t4, $a5
	maskeqz	$a5, $a2, $a5
	or	$a5, $a5, $a6
	bne	$s0, $a1, .LBB3_177
# %bb.175:                              #   in Loop: Header=BB3_157 Depth=2
	move	$a6, $a1
	move	$fp, $ra
	move	$s4, $s5
	blt	$a0, $ra, .LBB3_178
# %bb.176:                              #   in Loop: Header=BB3_157 Depth=2
	xor	$a6, $a0, $ra
	sltui	$a6, $a6, 1
	addi.w	$t1, $a5, 0
	slt	$t4, $s5, $t1
	masknez	$fp, $s5, $t4
	maskeqz	$t1, $t1, $t4
	or	$t1, $t1, $fp
	maskeqz	$t1, $t1, $a6
	masknez	$a5, $a5, $a6
	or	$s4, $t1, $a5
	move	$a6, $a1
	move	$fp, $a0
	b	.LBB3_178
	.p2align	4, , 16
.LBB3_177:                              #   in Loop: Header=BB3_157 Depth=2
	move	$a6, $s0
	move	$fp, $a0
	move	$s4, $a5
.LBB3_178:                              #   in Loop: Header=BB3_157 Depth=2
	move	$a0, $t0
	move	$s0, $t6
	move	$a5, $t7
	blt	$a6, $t0, .LBB3_183
# %bb.179:                              #   in Loop: Header=BB3_157 Depth=2
	bne	$a6, $t0, .LBB3_182
# %bb.180:                              #   in Loop: Header=BB3_157 Depth=2
	addi.w	$a6, $t6, 0
	move	$a0, $t0
	move	$s0, $t6
	move	$a5, $t7
	blt	$fp, $a6, .LBB3_183
# %bb.181:                              #   in Loop: Header=BB3_157 Depth=2
	xor	$a0, $fp, $a6
	sltui	$a0, $a0, 1
	addi.w	$a5, $s4, 0
	addi.w	$a6, $t7, 0
	slt	$t1, $a6, $a5
	masknez	$a6, $a6, $t1
	maskeqz	$a5, $a5, $t1
	or	$a5, $a5, $a6
	maskeqz	$a5, $a5, $a0
	masknez	$a0, $s4, $a0
	or	$a5, $a5, $a0
	move	$a0, $t0
	move	$s0, $fp
	b	.LBB3_183
	.p2align	4, , 16
.LBB3_182:                              #   in Loop: Header=BB3_157 Depth=2
	move	$a0, $a6
	move	$s0, $fp
	move	$a5, $s4
.LBB3_183:                              #   in Loop: Header=BB3_157 Depth=2
	alsl.d	$a6, $a2, $s7, 2
	alsl.d	$t1, $a2, $s6, 2
	ld.d	$t4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 2
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$fp, $a2, $fp, 2
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s1, $a2, $s1, 2
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s4, $a2, $s4, 2
	st.w	$a0, $a6, 0
	st.w	$s0, $t1, 0
	st.w	$a5, $t4, 0
	st.w	$a1, $fp, 0
	st.w	$ra, $s1, 0
	st.w	$s5, $s4, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB3_156
# %bb.184:                              #   in Loop: Header=BB3_157 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ori	$a6, $zero, 1
	st.b	$a6, $a1, %pc_lo12(flag)
	b	.LBB3_156
.Lfunc_end3:
	.size	locate, .Lfunc_end3-locate
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function small_pass
.LCPI4_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI4_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	small_pass
	.p2align	5
	.type	small_pass,@function
small_pass:                             # @small_pass
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(n1)
	ld.w	$a7, $a0, %pc_lo12(n1)
	pcalau12i	$a0, %pc_hi20(nn)
	ld.w	$t0, $a0, %pc_lo12(nn)
	pcalau12i	$a0, %pc_hi20(m1)
	ld.w	$t1, $a0, %pc_lo12(m1)
	pcalau12i	$s3, %pc_hi20(CC)
	pcalau12i	$s4, %pc_hi20(RR)
	pcalau12i	$s5, %pc_hi20(EE)
	pcalau12i	$a0, %pc_hi20(q)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$t5, %pc_hi20(DD)
	pcalau12i	$s0, %pc_hi20(SS)
	pcalau12i	$t7, %pc_hi20(FF)
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	bge	$a7, $t0, .LBB4_7
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(q)
	ld.d	$a1, $s3, %pc_lo12(CC)
	ld.d	$s7, $s4, %pc_lo12(RR)
	ld.d	$s8, $s5, %pc_lo12(EE)
	sub.d	$s6, $zero, $a0
	ld.d	$fp, $t5, %pc_lo12(DD)
	ld.d	$s1, $s0, %pc_lo12(SS)
	ld.d	$s2, $t7, %pc_lo12(FF)
	alsl.d	$a0, $a7, $a1, 2
	addi.d	$a0, $a0, 4
	sub.d	$a1, $a7, $t0
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 4
	move	$a1, $zero
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	st.d	$t5, $sp, 208                   # 8-byte Folded Spill
	st.d	$t7, $sp, 200                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $t0, $a7
	ori	$a2, $zero, 8
	move	$a0, $a7
	bltu	$a1, $a2, .LBB4_5
# %bb.2:                                # %vector.ph
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	add.d	$a0, $a2, $a7
	vreplgr2vr.w	$vr0, $s6
	pcalau12i	$a3, %pc_hi20(.LCPI4_0)
	vld	$vr2, $a3, %pc_lo12(.LCPI4_0)
	pcalau12i	$a3, %pc_hi20(.LCPI4_1)
	vld	$vr3, $a3, %pc_lo12(.LCPI4_1)
	vreplgr2vr.w	$vr1, $t1
	vreplgr2vr.d	$vr4, $a7
	vadd.d	$vr2, $vr4, $vr2
	vadd.d	$vr3, $vr4, $vr3
	move	$a3, $a2
	.p2align	4, , 16
.LBB4_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr4, $vr2, 1
	vaddi.du	$vr5, $vr3, 1
	vpickve2gr.d	$a4, $vr5, 0
	alsl.d	$a5, $a4, $s7, 2
	slli.d	$a6, $a4, 2
	vstx	$vr1, $s7, $a6
	vst	$vr1, $a5, 16
	alsl.d	$a5, $a4, $s8, 2
	vpickev.w	$vr4, $vr4, $vr5
	vpickev.w	$vr5, $vr2, $vr3
	vaddi.wu	$vr5, $vr5, 5
	vstx	$vr4, $s8, $a6
	vst	$vr5, $a5, 16
	alsl.d	$a5, $a4, $fp, 2
	vstx	$vr0, $fp, $a6
	vst	$vr0, $a5, 16
	alsl.d	$a5, $a4, $s1, 2
	vstx	$vr1, $s1, $a6
	vst	$vr1, $a5, 16
	alsl.d	$a4, $a4, $s2, 2
	vstx	$vr4, $s2, $a6
	vst	$vr5, $a4, 16
	vaddi.du	$vr3, $vr3, 8
	addi.d	$a3, $a3, -8
	vaddi.du	$vr2, $vr2, 8
	bnez	$a3, .LBB4_3
# %bb.4:                                # %middle.block
	beq	$a1, $a2, .LBB4_7
.LBB4_5:                                # %scalar.ph.preheader
	sub.d	$a1, $t0, $a0
	addi.d	$a2, $a0, 1
	slli.d	$a0, $a0, 2
	addi.d	$a6, $a0, 4
	add.d	$a0, $s7, $a6
	add.d	$a3, $s8, $a6
	add.d	$a4, $fp, $a6
	add.d	$a5, $s1, $a6
	add.d	$a6, $s2, $a6
	.p2align	4, , 16
.LBB4_6:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$t1, $a0, 0
	st.w	$a2, $a3, 0
	st.w	$s6, $a4, 0
	st.w	$t1, $a5, 0
	st.w	$a2, $a6, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	bnez	$a1, .LBB4_6
.LBB4_7:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(mm)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(mm)
	bge	$t1, $a0, .LBB4_76
# %bb.8:                                # %.lr.ph222
	pcalau12i	$a1, %pc_hi20(v)
	ld.d	$a1, $a1, %pc_lo12(v)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $s3, %pc_lo12(CC)
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a3, $s4, %pc_lo12(RR)
	ld.d	$a4, $s5, %pc_lo12(EE)
	addi.w	$a5, $a7, 1
	ld.d	$a1, $t5, %pc_lo12(DD)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $s0, %pc_lo12(SS)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $t7, %pc_lo12(FF)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(row)
	ld.d	$a1, $a1, %pc_lo12(row)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.w	$a2, $t0, 1
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(low)
	addi.d	$a1, $a1, %pc_lo12(low)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(numnode)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$ra, %pc_hi20(most)
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_9:                                # %..loopexit_crit_edge
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(mm)
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
.LBB4_10:                               # %.loopexit
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	bge	$t1, $a0, .LBB4_76
.LBB4_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_19 Depth 2
                                        #       Child Loop BB4_32 Depth 3
                                        #       Child Loop BB4_53 Depth 3
                                        #       Child Loop BB4_74 Depth 3
	addi.d	$a1, $t1, 1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$t6, $zero
	move	$s3, $a7
	move	$t7, $t1
	move	$s1, $a7
	move	$t8, $a5
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB4_14
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=1
	blt	$t1, $a7, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_11 Depth=1
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	slli.d	$a1, $s3, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t6, $a2, $a1
	ldx.w	$t7, $a3, $a1
	ldx.w	$s1, $a4, $a1
	addi.w	$t8, $t1, 2
.LBB4_14:                               #   in Loop: Header=BB4_11 Depth=1
	blt	$t0, $t8, .LBB4_10
# %bb.15:                               # %.lr.ph215
                                        #   in Loop: Header=BB4_11 Depth=1
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(q)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ldx.b	$a1, $a1, $s5
	move	$s8, $zero
	sub.d	$s6, $zero, $a0
	slli.d	$a6, $a1, 10
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$t3, $a0, %pc_lo12(numnode)
	ld.d	$t4, $ra, %pc_lo12(most)
	pcalau12i	$a0, %pc_hi20(min)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a5, $a0, %pc_lo12(min)
	pcalau12i	$a0, %pc_hi20(r)
	ld.w	$a1, $a0, %pc_lo12(r)
	pcalau12i	$a0, %pc_hi20(qr)
	pcalau12i	$a7, %pc_hi20(LIST)
	ld.d	$a7, $a7, %pc_lo12(LIST)
	ld.w	$a0, $a0, %pc_lo12(qr)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a6
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a2, $s5, $a2, 3
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a2, $a7, 8
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $s5
	move	$s7, $s3
	b	.LBB4_19
	.p2align	4, , 16
.LBB4_16:                               # %.loopexit.i
                                        #   in Loop: Header=BB4_19 Depth=2
	ld.w	$a5, $s2, 0
.LBB4_17:                               # %addnode.exit
                                        #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.w	$a5, $a2, %pc_lo12(min)
.LBB4_18:                               #   in Loop: Header=BB4_19 Depth=2
	addi.d	$t8, $t8, 1
	addi.w	$a2, $t8, 0
	move	$s1, $s0
	move	$t7, $t0
	move	$t6, $s4
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	beq	$a6, $a2, .LBB4_9
.LBB4_19:                               #   Parent Loop BB4_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_32 Depth 3
                                        #       Child Loop BB4_53 Depth 3
                                        #       Child Loop BB4_74 Depth 3
	sub.w	$s6, $s6, $a1
	sub.w	$a6, $s8, $a0
	bge	$s6, $a6, .LBB4_22
# %bb.20:                               #   in Loop: Header=BB4_19 Depth=2
	move	$s6, $a6
.LBB4_21:                               #   in Loop: Header=BB4_19 Depth=2
	move	$fp, $s5
	move	$s3, $s7
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_22:                               #   in Loop: Header=BB4_19 Depth=2
	bne	$s6, $a6, .LBB4_25
# %bb.23:                               #   in Loop: Header=BB4_19 Depth=2
	addi.w	$a6, $s5, 0
	addi.w	$a7, $fp, 0
	blt	$a7, $a6, .LBB4_21
# %bb.24:                               #   in Loop: Header=BB4_19 Depth=2
	xor	$a6, $a7, $a6
	sltui	$a6, $a6, 1
	addi.w	$a7, $s3, 0
	addi.w	$t0, $s7, 0
	slt	$t1, $t0, $a7
	masknez	$t0, $t0, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t0
	maskeqz	$a7, $a7, $a6
	masknez	$a6, $s3, $a6
	or	$s3, $a7, $a6
	.p2align	4, , 16
.LBB4_25:                               #   in Loop: Header=BB4_19 Depth=2
	slli.d	$a7, $t8, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$s4, $a2, $a7
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$t1, $a2, $a7
	ldx.w	$t0, $a3, $a7
	ldx.w	$s0, $a4, $a7
	sub.w	$a6, $s4, $a0
	sub.w	$t1, $t1, $a1
	bge	$t1, $a6, .LBB4_27
.LBB4_26:                               #   in Loop: Header=BB4_19 Depth=2
	move	$t2, $t0
	move	$t5, $s0
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_27:                               #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$t2, $a2, $a7
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$t5, $a2, $a7
	bne	$t1, $a6, .LBB4_30
# %bb.28:                               #   in Loop: Header=BB4_19 Depth=2
	blt	$t2, $t0, .LBB4_26
# %bb.29:                               #   in Loop: Header=BB4_19 Depth=2
	xor	$a7, $t2, $t0
	sltui	$a7, $a7, 1
	slt	$t1, $s0, $t5
	masknez	$s5, $s0, $t1
	maskeqz	$t1, $t5, $t1
	or	$t1, $t1, $s5
	maskeqz	$t1, $t1, $a7
	masknez	$a7, $t5, $a7
	or	$t5, $t1, $a7
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_30:                               #   in Loop: Header=BB4_19 Depth=2
	move	$a6, $t1
.LBB4_31:                               #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $a2, 0
	pcalau12i	$t1, %pc_hi20(z)
	st.d	$a7, $t1, %pc_lo12(z)
	beqz	$a7, .LBB4_34
	.p2align	4, , 16
.LBB4_32:                               # %.lr.ph194
                                        #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $a7, 0
	addi.w	$s7, $t8, 0
	beq	$s5, $s7, .LBB4_35
# %bb.33:                               #   in Loop: Header=BB4_32 Depth=3
	ld.d	$a7, $a7, 8
	st.d	$a7, $t1, %pc_lo12(z)
	bnez	$a7, .LBB4_32
.LBB4_34:                               # %._crit_edge195
                                        #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ldx.b	$a7, $a2, $t8
	slli.d	$a7, $a7, 2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a7, $a2, $a7
	add.w	$a7, $a7, $t6
	b	.LBB4_36
	.p2align	4, , 16
.LBB4_35:                               #   in Loop: Header=BB4_19 Depth=2
	move	$a7, $zero
.LBB4_36:                               # %.thread
                                        #   in Loop: Header=BB4_19 Depth=2
	slti	$s7, $a7, 1
	masknez	$s5, $a7, $s7
	move	$a7, $a6
	move	$t6, $t2
	move	$t1, $t5
	blt	$s5, $a6, .LBB4_41
# %bb.37:                               #   in Loop: Header=BB4_19 Depth=2
	masknez	$a7, $t7, $s7
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	maskeqz	$t1, $a2, $s7
	or	$a7, $t1, $a7
	addi.w	$t7, $a7, 0
	masknez	$a7, $s1, $s7
	maskeqz	$t1, $t8, $s7
	or	$s1, $t1, $a7
	bne	$s5, $a6, .LBB4_40
# %bb.38:                               #   in Loop: Header=BB4_19 Depth=2
	move	$a7, $a6
	move	$t6, $t2
	move	$t1, $t5
	blt	$t7, $t2, .LBB4_41
# %bb.39:                               #   in Loop: Header=BB4_19 Depth=2
	xor	$a7, $t7, $t2
	sltui	$a7, $a7, 1
	addi.w	$t1, $s1, 0
	slt	$t6, $t5, $t1
	masknez	$s5, $t5, $t6
	maskeqz	$t1, $t1, $t6
	or	$t1, $t1, $s5
	maskeqz	$t1, $t1, $a7
	masknez	$a7, $s1, $a7
	or	$t1, $t1, $a7
	move	$a7, $a6
	move	$t6, $t7
	b	.LBB4_41
	.p2align	4, , 16
.LBB4_40:                               #   in Loop: Header=BB4_19 Depth=2
	move	$a7, $s5
	move	$t6, $t7
	move	$t1, $s1
.LBB4_41:                               #   in Loop: Header=BB4_19 Depth=2
	move	$s8, $s6
	move	$s5, $fp
	move	$s7, $s3
	blt	$a7, $s6, .LBB4_46
# %bb.42:                               #   in Loop: Header=BB4_19 Depth=2
	bne	$a7, $s6, .LBB4_45
# %bb.43:                               #   in Loop: Header=BB4_19 Depth=2
	addi.w	$a7, $fp, 0
	move	$s8, $s6
	move	$s5, $fp
	move	$s7, $s3
	blt	$t6, $a7, .LBB4_46
# %bb.44:                               #   in Loop: Header=BB4_19 Depth=2
	xor	$a7, $t6, $a7
	sltui	$a7, $a7, 1
	addi.w	$t7, $t1, 0
	addi.w	$s1, $s3, 0
	slt	$s5, $s1, $t7
	masknez	$s1, $s1, $s5
	maskeqz	$t7, $t7, $s5
	or	$t7, $t7, $s1
	maskeqz	$t7, $t7, $a7
	masknez	$a7, $t1, $a7
	or	$s7, $t7, $a7
	move	$s8, $s6
	move	$s5, $t6
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_45:                               #   in Loop: Header=BB4_19 Depth=2
	move	$s8, $a7
	move	$s5, $t6
	move	$s7, $t1
.LBB4_46:                               #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a7, $t8, $a2, 2
	alsl.d	$t1, $t8, $a3, 2
	alsl.d	$t6, $t8, $a4, 2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$t7, $t8, $a2, 2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s1, $t8, $a2, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a2, $t8, $a2, 2
	st.w	$s8, $a7, 0
	st.w	$s5, $t1, 0
	st.w	$s7, $t6, 0
	st.w	$a6, $t7, 0
	st.w	$t2, $s1, 0
	st.w	$t5, $a2, 0
	bge	$a5, $s8, .LBB4_18
# %bb.47:                               #   in Loop: Header=BB4_19 Depth=2
	addi.w	$a7, $s5, 0
	addi.w	$t1, $s7, 0
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	beqz	$t4, .LBB4_50
# %bb.48:                               #   in Loop: Header=BB4_19 Depth=2
	ld.w	$a2, $t4, 4
	bne	$a2, $a7, .LBB4_50
# %bb.49:                               #   in Loop: Header=BB4_19 Depth=2
	ld.w	$a2, $t4, 8
	beq	$a2, $t1, .LBB4_55
	.p2align	4, , 16
.LBB4_50:                               #   in Loop: Header=BB4_19 Depth=2
	blez	$t3, .LBB4_61
# %bb.51:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	move	$t2, $t3
	b	.LBB4_53
	.p2align	4, , 16
.LBB4_52:                               #   in Loop: Header=BB4_53 Depth=3
	addi.d	$t2, $t2, -1
	addi.d	$a6, $a6, 8
	beqz	$t2, .LBB4_61
.LBB4_53:                               #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t4, $a6, 0
	ld.w	$a2, $t4, 4
	st.d	$t4, $ra, %pc_lo12(most)
	bne	$a2, $a7, .LBB4_52
# %bb.54:                               #   in Loop: Header=BB4_53 Depth=3
	ld.w	$a2, $t4, 8
	bne	$a2, $t1, .LBB4_52
.LBB4_55:                               # %.loopexit46.i
                                        #   in Loop: Header=BB4_19 Depth=2
	ld.w	$a2, $t4, 0
	blt	$a2, $s8, .LBB4_64
# %bb.56:                               #   in Loop: Header=BB4_19 Depth=2
	ld.w	$a2, $t4, 20
	blt	$t5, $a2, .LBB4_65
.LBB4_57:                               #   in Loop: Header=BB4_19 Depth=2
	ld.w	$a2, $t4, 24
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	bge	$a6, $a2, .LBB4_66
.LBB4_58:                               #   in Loop: Header=BB4_19 Depth=2
	ld.w	$a2, $t4, 28
	blt	$t8, $a2, .LBB4_67
.LBB4_59:                               #   in Loop: Header=BB4_19 Depth=2
	ld.w	$a2, $t4, 32
	blt	$a2, $t8, .LBB4_68
	.p2align	4, , 16
.LBB4_60:                               #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bne	$t3, $a2, .LBB4_17
	b	.LBB4_69
	.p2align	4, , 16
.LBB4_61:                               # %.critedge.i
                                        #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	move	$a6, $a2
	move	$a7, $t6
	beq	$t3, $a2, .LBB4_63
# %bb.62:                               #   in Loop: Header=BB4_19 Depth=2
	addi.w	$a6, $t3, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a6, $a2, %pc_lo12(numnode)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a7, $t3, $a2, 3
.LBB4_63:                               #   in Loop: Header=BB4_19 Depth=2
	ld.d	$t4, $a7, 0
	st.d	$t4, $ra, %pc_lo12(most)
	st.w	$s8, $t4, 0
	st.w	$s5, $t4, 4
	st.w	$s7, $t4, 8
	st.w	$t5, $t4, 12
	st.w	$t8, $t4, 16
	st.w	$t5, $t4, 24
	st.w	$t5, $t4, 20
	st.w	$t8, $t4, 32
	st.w	$t8, $t4, 28
	move	$t3, $a6
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bne	$t3, $a2, .LBB4_17
	b	.LBB4_69
.LBB4_64:                               #   in Loop: Header=BB4_19 Depth=2
	st.w	$s8, $t4, 0
	st.w	$t5, $t4, 12
	st.w	$t8, $t4, 16
	ld.w	$a2, $t4, 20
	bge	$t5, $a2, .LBB4_57
.LBB4_65:                               #   in Loop: Header=BB4_19 Depth=2
	st.w	$t5, $t4, 20
	ld.w	$a2, $t4, 24
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	blt	$a6, $a2, .LBB4_58
.LBB4_66:                               #   in Loop: Header=BB4_19 Depth=2
	st.w	$t5, $t4, 24
	ld.w	$a2, $t4, 28
	bge	$t8, $a2, .LBB4_59
.LBB4_67:                               #   in Loop: Header=BB4_19 Depth=2
	st.w	$t8, $t4, 28
	ld.w	$a2, $t4, 32
	bge	$a2, $t8, .LBB4_60
.LBB4_68:                               #   in Loop: Header=BB4_19 Depth=2
	st.w	$t8, $t4, 32
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bne	$t3, $a2, .LBB4_17
	.p2align	4, , 16
.LBB4_69:                               #   in Loop: Header=BB4_19 Depth=2
	beqz	$s2, .LBB4_71
# %bb.70:                               #   in Loop: Header=BB4_19 Depth=2
	bne	$s2, $t4, .LBB4_16
.LBB4_71:                               #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $a2, 0
	st.d	$s2, $t6, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ori	$a5, $zero, 2
	blt	$a2, $a5, .LBB4_16
# %bb.72:                               # %.lr.ph50.i.preheader
                                        #   in Loop: Header=BB4_19 Depth=2
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB4_74
	.p2align	4, , 16
.LBB4_73:                               #   in Loop: Header=BB4_74 Depth=3
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	beqz	$a6, .LBB4_16
.LBB4_74:                               # %.lr.ph50.i
                                        #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a5, 0
	ld.w	$a2, $a7, 0
	ld.w	$t1, $s2, 0
	bge	$a2, $t1, .LBB4_73
# %bb.75:                               #   in Loop: Header=BB4_74 Depth=3
	st.d	$a7, $t6, 0
	move	$s2, $a7
	b	.LBB4_73
.LBB4_76:                               # %._crit_edge223
	move	$a0, $zero
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end4:
	.size	small_pass, .Lfunc_end4-small_pass
                                        # -- End function
	.globl	addnode                         # -- Begin function addnode
	.p2align	5
	.type	addnode,@function
addnode:                                # @addnode
# %bb.0:
	pcalau12i	$t2, %pc_hi20(most)
	ld.d	$t1, $t2, %pc_lo12(most)
	pcalau12i	$t0, %pc_hi20(numnode)
	pcalau12i	$a7, %pc_hi20(low)
	addi.d	$a7, $a7, %pc_lo12(low)
	beqz	$t1, .LBB5_3
# %bb.1:
	ld.w	$t3, $t1, 4
	bne	$t3, $a1, .LBB5_3
# %bb.2:
	ld.w	$t3, $t1, 8
	beq	$t3, $a2, .LBB5_8
.LBB5_3:
	ld.w	$t3, $t0, %pc_lo12(numnode)
	blez	$t3, .LBB5_15
# %bb.4:                                # %.lr.ph
	pcalau12i	$t1, %pc_hi20(LIST)
	ld.d	$t4, $t1, %pc_lo12(LIST)
	move	$t5, $t3
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_6 Depth=1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	beqz	$t5, .LBB5_15
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $t4, 0
	ld.w	$t6, $t1, 4
	st.d	$t1, $t2, %pc_lo12(most)
	bne	$t6, $a1, .LBB5_5
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	ld.w	$t6, $t1, 8
	bne	$t6, $a2, .LBB5_5
.LBB5_8:                                # %.loopexit46
	ld.w	$a1, $t1, 0
	blt	$a1, $a0, .LBB5_18
# %bb.9:
	ld.w	$a0, $t1, 20
	blt	$a3, $a0, .LBB5_19
.LBB5_10:
	ld.w	$a0, $t1, 24
	blt	$a0, $a3, .LBB5_20
.LBB5_11:
	ld.w	$a0, $t1, 28
	blt	$a4, $a0, .LBB5_21
.LBB5_12:
	ld.w	$a0, $t1, 32
	blt	$a0, $a4, .LBB5_22
.LBB5_13:
	ld.w	$a0, $t0, %pc_lo12(numnode)
	beq	$a0, $a5, .LBB5_23
.LBB5_14:
	move	$a0, $a6
	ret
.LBB5_15:                               # %.critedge
	move	$t1, $a7
	beq	$t3, $a5, .LBB5_17
# %bb.16:
	pcalau12i	$t1, %pc_hi20(LIST)
	ld.d	$t1, $t1, %pc_lo12(LIST)
	addi.d	$t4, $t3, 1
	st.w	$t4, $t0, %pc_lo12(numnode)
	alsl.d	$t1, $t3, $t1, 3
.LBB5_17:
	ld.d	$t1, $t1, 0
	st.d	$t1, $t2, %pc_lo12(most)
	st.w	$a0, $t1, 0
	st.w	$a1, $t1, 4
	st.w	$a2, $t1, 8
	st.w	$a3, $t1, 12
	st.w	$a4, $t1, 16
	st.w	$a3, $t1, 24
	st.w	$a3, $t1, 20
	st.w	$a4, $t1, 32
	st.w	$a4, $t1, 28
	ld.w	$a0, $t0, %pc_lo12(numnode)
	bne	$a0, $a5, .LBB5_14
	b	.LBB5_23
.LBB5_18:
	st.w	$a0, $t1, 0
	st.w	$a3, $t1, 12
	st.w	$a4, $t1, 16
	ld.w	$a0, $t1, 20
	bge	$a3, $a0, .LBB5_10
.LBB5_19:
	st.w	$a3, $t1, 20
	ld.w	$a0, $t1, 24
	bge	$a0, $a3, .LBB5_11
.LBB5_20:
	st.w	$a3, $t1, 24
	ld.w	$a0, $t1, 28
	bge	$a4, $a0, .LBB5_12
.LBB5_21:
	st.w	$a4, $t1, 28
	ld.w	$a0, $t1, 32
	bge	$a0, $a4, .LBB5_13
.LBB5_22:
	st.w	$a4, $t1, 32
	ld.w	$a0, $t0, %pc_lo12(numnode)
	bne	$a0, $a5, .LBB5_14
.LBB5_23:
	ld.d	$a0, $a7, 0
	beqz	$a0, .LBB5_25
# %bb.24:
	bne	$a0, $t1, .LBB5_30
.LBB5_25:
	pcalau12i	$a0, %pc_hi20(LIST)
	ld.d	$a1, $a0, %pc_lo12(LIST)
	ld.d	$a0, $a1, 0
	ori	$a2, $zero, 2
	st.d	$a0, $a7, 0
	blt	$a5, $a2, .LBB5_30
# %bb.26:                               # %.lr.ph50.preheader
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a5, -1
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_27:                               #   in Loop: Header=BB5_28 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	beqz	$a2, .LBB5_30
.LBB5_28:                               # %.lr.ph50
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a0, 0
	bge	$a4, $a5, .LBB5_27
# %bb.29:                               #   in Loop: Header=BB5_28 Depth=1
	st.d	$a3, $a7, 0
	move	$a0, $a3
	b	.LBB5_27
.LBB5_30:                               # %.loopexit
	ld.w	$a6, $a0, 0
	move	$a0, $a6
	ret
.Lfunc_end5:
	.size	addnode, .Lfunc_end5-addnode
                                        # -- End function
	.globl	findmax                         # -- Begin function findmax
	.p2align	5
	.type	findmax,@function
findmax:                                # @findmax
# %bb.0:
	pcalau12i	$a2, %pc_hi20(numnode)
	ld.w	$a3, $a2, %pc_lo12(numnode)
	pcalau12i	$a0, %pc_hi20(LIST)
	ld.d	$a1, $a0, %pc_lo12(LIST)
	move	$a4, $zero
	ori	$a0, $zero, 2
	blt	$a3, $a0, .LBB6_3
# %bb.1:                                # %.lr.ph
	addi.d	$a0, $a1, 8
	addi.d	$a5, $a3, -1
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a0, 0
	slli.d	$t0, $a4, 3
	ldx.d	$t0, $a1, $t0
	ld.w	$a7, $a7, 0
	ld.w	$t0, $t0, 0
	slt	$a7, $t0, $a7
	masknez	$a4, $a4, $a7
	maskeqz	$a7, $a6, $a7
	or	$a4, $a7, $a4
	addi.d	$a0, $a0, 8
	addi.d	$a5, $a5, -1
	addi.w	$a6, $a6, 1
	bnez	$a5, .LBB6_2
.LBB6_3:                                # %._crit_edge
	slli.d	$a0, $a4, 3
	ldx.d	$a0, $a1, $a0
	addi.w	$a3, $a3, -1
	st.w	$a3, $a2, %pc_lo12(numnode)
	beq	$a4, $a3, .LBB6_5
# %bb.4:
	slli.d	$a2, $a3, 3
	ldx.d	$a3, $a1, $a2
	alsl.d	$a4, $a4, $a1, 3
	st.d	$a3, $a4, 0
	stx.d	$a0, $a1, $a2
.LBB6_5:
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(low)
	ld.d	$a3, $a2, %pc_lo12(low)
	pcalau12i	$a4, %pc_hi20(most)
	st.d	$a1, $a4, %pc_lo12(most)
	beq	$a3, $a0, .LBB6_7
# %bb.6:
	ret
.LBB6_7:
	st.d	$a1, $a2, %pc_lo12(low)
	ret
.Lfunc_end6:
	.size	findmax, .Lfunc_end6-findmax
                                        # -- End function
	.globl	no_cross                        # -- Begin function no_cross
	.p2align	5
	.type	no_cross,@function
no_cross:                               # @no_cross
# %bb.0:
	pcalau12i	$a0, %pc_hi20(numnode)
	ld.w	$a0, $a0, %pc_lo12(numnode)
	blez	$a0, .LBB7_15
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(LIST)
	ld.d	$a2, $a1, %pc_lo12(LIST)
	pcalau12i	$a1, %pc_hi20(mm)
	ld.w	$a3, $a1, %pc_lo12(mm)
	pcalau12i	$a1, %pc_hi20(nn)
	ld.w	$a5, $a1, %pc_lo12(nn)
	pcalau12i	$a1, %pc_hi20(m1)
	ld.w	$t1, $a1, %pc_lo12(m1)
	pcalau12i	$a1, %pc_hi20(n1)
	ld.w	$t2, $a1, %pc_lo12(n1)
	pcalau12i	$a6, %pc_hi20(rl)
	ld.w	$t0, $a6, %pc_lo12(rl)
	pcalau12i	$a4, %pc_hi20(cl)
	ld.w	$a7, $a4, %pc_lo12(cl)
	move	$a1, $zero
	addi.w	$t1, $t1, -1
	addi.w	$t2, $t2, -1
	move	$t3, $a0
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_3 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$t3, $t3, -1
	addi.d	$a2, $a2, 8
	beqz	$t3, .LBB7_14
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t6, $a2, 0
	ld.w	$t5, $t6, 4
	blt	$a3, $t5, .LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$t4, $t6, 8
	blt	$a5, $t4, .LBB7_2
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$t7, $t6, 24
	blt	$t7, $t1, .LBB7_2
# %bb.6:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$t6, $t6, 32
	blt	$t6, $t2, .LBB7_2
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	blt	$t5, $t0, .LBB7_9
# %bb.8:                                #   in Loop: Header=BB7_3 Depth=1
	bge	$t4, $a7, .LBB7_2
.LBB7_9:
	bge	$t5, $t0, .LBB7_11
# %bb.10:
	st.w	$t5, $a6, %pc_lo12(rl)
.LBB7_11:
	bge	$t4, $a7, .LBB7_13
# %bb.12:
	st.w	$t4, $a4, %pc_lo12(cl)
.LBB7_13:
	pcalau12i	$a2, %pc_hi20(flag)
	ori	$a3, $zero, 1
	st.b	$a3, $a2, %pc_lo12(flag)
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	ret
.LBB7_14:
	move	$a1, $a0
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	ret
.LBB7_15:
	move	$a1, $zero
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	ret
.Lfunc_end7:
	.size	no_cross, .Lfunc_end7-no_cross
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function diff
.LCPI8_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	diff
	.p2align	5
	.type	diff,@function
diff:                                   # @diff
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	move	$t7, $a2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(q)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$t6, %pc_hi20(r)
	pcalau12i	$a0, %pc_hi20(I)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(al_len)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$t4, %pc_hi20(last)
	pcalau12i	$a0, %pc_hi20(sapp)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	blez	$a3, .LBB8_52
# %bb.1:                                # %.lr.ph405
	move	$fp, $a1
	move	$t5, $zero
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	sub.d	$a0, $zero, $a5
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(CC)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(DD)
                                        # implicit-def: $r4
                                        # kill: killed $r4
	move	$s0, $a3
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
	st.d	$t6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$a1, $fp
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s5
	move	$a5, $s6
	pcaddu18i	$ra, %call36(diff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(q)
	add.d	$s1, $s1, $s3
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	sub.w	$t7, $t7, $a0
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
.LBB8_3:                                # %tailrecurse.backedge
                                        #   in Loop: Header=BB8_4 Depth=1
	andi	$a0, $a1, 1
	masknez	$a1, $s8, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	sub.w	$s0, $s0, $s5
	add.d	$fp, $fp, $s5
	ori	$t5, $zero, 1
	blez	$s0, .LBB8_53
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #     Child Loop BB8_10 Depth 2
                                        #     Child Loop BB8_13 Depth 2
                                        #       Child Loop BB8_16 Depth 3
                                        #         Child Loop BB8_18 Depth 4
                                        #     Child Loop BB8_24 Depth 2
                                        #     Child Loop BB8_27 Depth 2
                                        #     Child Loop BB8_30 Depth 2
                                        #       Child Loop BB8_33 Depth 3
                                        #         Child Loop BB8_35 Depth 4
                                        #     Child Loop BB8_41 Depth 2
                                        #     Child Loop BB8_46 Depth 2
	pcalau12i	$s5, %pc_hi20(z)
	st.d	$t5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	bge	$s2, $t7, .LBB8_56
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(CC)
	st.w	$zero, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s6, $a1, %pc_lo12(q)
	sub.d	$a6, $zero, $s6
	ld.w	$a2, $t6, %pc_lo12(r)
	ld.d	$a3, $s1, %pc_lo12(DD)
	addi.d	$a7, $s0, 1
	bstrpick.d	$a1, $a7, 31, 0
	ori	$t8, $zero, 1
	move	$t0, $a6
	ori	$a5, $zero, 8
	bltu	$s0, $a5, .LBB8_9
# %bb.6:                                # %vector.ph509
                                        #   in Loop: Header=BB8_4 Depth=1
	bstrpick.d	$t1, $s0, 31, 0
	sub.d	$a5, $zero, $a2
	bstrpick.d	$t0, $t1, 30, 3
	slli.d	$t2, $t0, 3
	srli.d	$t0, $t1, 3
	ori	$t8, $zero, 1
	bstrins.d	$t8, $t0, 30, 3
	mul.d	$t0, $t2, $a5
	sub.d	$t0, $t0, $s6
	slli.d	$t3, $a5, 2
	vinsgr2vr.w	$vr4, $t3, 0
	vreplgr2vr.w	$vr0, $t3
	vreplgr2vr.w	$vr1, $s6
	pcalau12i	$t3, %pc_hi20(.LCPI8_0)
	vld	$vr5, $t3, %pc_lo12(.LCPI8_0)
	vreplgr2vr.w	$vr2, $a2
	vreplgr2vr.w	$vr3, $a6
	vreplgr2vr.w	$vr6, $a5
	vmadd.w	$vr3, $vr6, $vr5
	vadd.w	$vr4, $vr4, $vr4
	vreplvei.w	$vr4, $vr4, 0
	addi.d	$t3, $a0, 20
	addi.d	$t4, $a3, 20
	move	$t5, $t2
	.p2align	4, , 16
.LBB8_7:                                # %vector.body524
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.w	$vr5, $vr3, $vr0
	vsub.w	$vr6, $vr3, $vr2
	vsub.w	$vr5, $vr5, $vr2
	vst	$vr6, $t3, -16
	vst	$vr5, $t3, 0
	vsub.w	$vr6, $vr6, $vr1
	vsub.w	$vr5, $vr5, $vr1
	vst	$vr6, $t4, -16
	vst	$vr5, $t4, 0
	vadd.w	$vr3, $vr3, $vr4
	addi.d	$t3, $t3, 32
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB8_7
# %bb.8:                                # %middle.block531
                                        #   in Loop: Header=BB8_4 Depth=1
	beq	$t2, $t1, .LBB8_11
.LBB8_9:                                # %scalar.ph507.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	alsl.d	$a3, $t8, $a3, 2
	alsl.d	$t1, $t8, $a0, 2
	sub.d	$t2, $a1, $t8
	sub.d	$t0, $t0, $a2
	.p2align	4, , 16
.LBB8_10:                               # %scalar.ph507
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t0, $t1, 0
	add.d	$a5, $a6, $t0
	st.w	$a5, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, -1
	sub.d	$t0, $t0, $a2
	bnez	$t2, .LBB8_10
.LBB8_11:                               # %.lr.ph352
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a3, $zero
	st.d	$t7, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$t3, $t7, 31, 1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	sub.d	$a4, $zero, $a4
	ld.w	$t0, $t6, %pc_lo12(r)
	pcalau12i	$a2, %pc_hi20(v)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$t1, $a2, %pc_lo12(v)
	pcalau12i	$t4, %pc_hi20(qr)
	ld.w	$t6, $t4, %pc_lo12(qr)
	ld.d	$a2, $s1, %pc_lo12(DD)
	pcalau12i	$a5, %pc_hi20(row)
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a5, $a5, %pc_lo12(row)
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	ld.w	$t2, $t2, %pc_lo12(I)
	pcalau12i	$t5, %pc_hi20(J)
	st.d	$t5, $sp, 152                   # 8-byte Folded Spill
	ld.w	$t7, $t5, %pc_lo12(J)
	st.d	$t3, $sp, 144                   # 8-byte Folded Spill
	addi.w	$t8, $t3, 1
	alsl.d	$s4, $t2, $a5, 3
	bstrpick.d	$a7, $a7, 31, 0
	ori	$s8, $zero, 1
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_12:                               #   in Loop: Header=BB8_13 Depth=2
	addi.d	$s8, $s8, 1
	move	$a4, $a3
	move	$s6, $t5
	beq	$s8, $t8, .LBB8_21
.LBB8_13:                               # %.lr.ph346
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_16 Depth 3
                                        #         Child Loop BB8_18 Depth 4
	move	$ra, $a3
	sub.d	$a3, $a4, $t0
	st.w	$a3, $a0, 0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ldx.b	$a4, $a4, $s8
	slli.d	$a4, $a4, 10
	add.d	$s1, $t1, $a4
	move	$t5, $s6
	sub.d	$s6, $a3, $s6
	alsl.d	$a4, $s8, $s4, 3
	ori	$s2, $zero, 1
	move	$s3, $a3
	b	.LBB8_16
	.p2align	4, , 16
.LBB8_14:                               # %._crit_edge338
                                        #   in Loop: Header=BB8_16 Depth=3
	ldx.b	$a5, $fp, $s2
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s1, $a5
	add.w	$a5, $a5, $ra
	slt	$t3, $t2, $a5
	maskeqz	$a5, $a5, $t3
	masknez	$t3, $t2, $t3
	or	$s0, $a5, $t3
.LBB8_15:                               # %.thread298
                                        #   in Loop: Header=BB8_16 Depth=3
	sub.w	$a5, $s3, $t6
	sub.w	$t3, $s6, $t0
	slt	$s3, $t3, $a5
	masknez	$t3, $t3, $s3
	maskeqz	$a5, $a5, $s3
	or	$s6, $a5, $t3
	alsl.d	$a5, $s2, $a0, 2
	alsl.d	$t3, $s2, $a2, 2
	slt	$s3, $s6, $s0
	masknez	$ra, $s6, $s3
	maskeqz	$s0, $s0, $s3
	or	$s3, $s0, $ra
	st.w	$s3, $a5, 0
	addi.d	$s2, $s2, 1
	st.w	$t2, $t3, 0
	move	$ra, $s7
	beq	$s2, $a7, .LBB8_12
.LBB8_16:                               #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_18 Depth 4
	slli.d	$a5, $s2, 2
	ldx.w	$s7, $a0, $a5
	ldx.w	$a5, $a2, $a5
	sub.w	$t2, $s7, $t6
	sub.w	$a5, $a5, $t0
	slt	$t3, $a5, $t2
	ld.d	$s0, $a4, 0
	masknez	$a5, $a5, $t3
	maskeqz	$t2, $t2, $t3
	or	$t2, $t2, $a5
	st.d	$s0, $s5, %pc_lo12(z)
	beqz	$s0, .LBB8_14
# %bb.17:                               # %.lr.ph337
                                        #   in Loop: Header=BB8_16 Depth=3
	add.w	$t3, $t7, $s2
	.p2align	4, , 16
.LBB8_18:                               #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_13 Depth=2
                                        #       Parent Loop BB8_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $s0, 0
	beq	$a5, $t3, .LBB8_20
# %bb.19:                               #   in Loop: Header=BB8_18 Depth=4
	ld.d	$s0, $s0, 8
	st.d	$s0, $s5, %pc_lo12(z)
	bnez	$s0, .LBB8_18
	b	.LBB8_14
	.p2align	4, , 16
.LBB8_20:                               #   in Loop: Header=BB8_16 Depth=3
	move	$s0, $t2
	b	.LBB8_15
	.p2align	4, , 16
.LBB8_21:                               # %.lr.ph357
                                        #   in Loop: Header=BB8_4 Depth=1
	pcalau12i	$a4, %pc_hi20(RR)
	ld.d	$a7, $a4, %pc_lo12(RR)
	st.w	$a3, $a2, 0
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	slli.d	$s7, $t3, 2
	stx.w	$zero, $a7, $s7
	addi.w	$t0, $t3, -1
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.w	$t6, $s4, %pc_lo12(r)
	pcalau12i	$t7, %pc_hi20(SS)
	ld.d	$t8, $t7, %pc_lo12(SS)
	srai.d	$a4, $t0, 63
	and	$a4, $a4, $t0
	nor	$a4, $a4, $zero
	add.w	$a4, $t3, $a4
	bstrpick.d	$s0, $t0, 31, 0
	ori	$a5, $zero, 7
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	bgeu	$a4, $a5, .LBB8_23
# %bb.22:                               #   in Loop: Header=BB8_4 Depth=1
	move	$a4, $s0
	move	$t1, $a6
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	b	.LBB8_26
	.p2align	4, , 16
.LBB8_23:                               # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$s1, $a4, 1
	sub.d	$a5, $zero, $t6
	bstrpick.d	$a4, $s1, 32, 3
	slli.d	$s2, $a4, 3
	sub.d	$a4, $s0, $s2
	mul.d	$t1, $s2, $a5
	sub.d	$t1, $t1, $s6
	slli.d	$t2, $a5, 2
	vinsgr2vr.w	$vr4, $t2, 0
	vreplgr2vr.w	$vr0, $t2
	vreplgr2vr.w	$vr1, $t6
	pcalau12i	$t2, %pc_hi20(.LCPI8_0)
	vld	$vr5, $t2, %pc_lo12(.LCPI8_0)
	vreplgr2vr.w	$vr2, $s6
	vreplgr2vr.w	$vr3, $a6
	vreplgr2vr.w	$vr6, $a5
	vmadd.w	$vr3, $vr6, $vr5
	vadd.w	$vr4, $vr4, $vr4
	vreplvei.w	$vr4, $vr4, 0
	alsl.d	$a5, $s0, $a7, 2
	addi.d	$t2, $a5, -12
	alsl.d	$a5, $s0, $t8, 2
	addi.d	$s0, $a5, -12
	move	$s3, $s2
	.p2align	4, , 16
.LBB8_24:                               # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.w	$vr5, $vr3, $vr0
	vsub.w	$vr6, $vr3, $vr1
	vsub.w	$vr5, $vr5, $vr1
	vshuf4i.w	$vr7, $vr6, 27
	vst	$vr7, $t2, 0
	vshuf4i.w	$vr7, $vr5, 27
	vst	$vr7, $t2, -16
	vsub.w	$vr6, $vr6, $vr2
	vsub.w	$vr5, $vr5, $vr2
	vshuf4i.w	$vr6, $vr6, 27
	vst	$vr6, $s0, 0
	vshuf4i.w	$vr5, $vr5, 27
	vst	$vr5, $s0, -16
	vadd.w	$vr3, $vr3, $vr4
	addi.d	$s3, $s3, -8
	addi.d	$t2, $t2, -32
	addi.d	$s0, $s0, -32
	bnez	$s3, .LBB8_24
# %bb.25:                               # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	beq	$s1, $s2, .LBB8_28
.LBB8_26:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$t2, $a4, 1
	alsl.d	$t8, $a4, $t8, 2
	alsl.d	$a4, $a4, $a7, 2
	sub.d	$t1, $t1, $t6
	.p2align	4, , 16
.LBB8_27:                               # %scalar.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t1, $a4, 0
	add.d	$a5, $a6, $t1
	st.w	$a5, $t8, 0
	addi.w	$t2, $t2, -1
	addi.d	$t8, $t8, -4
	addi.d	$a4, $a4, -4
	sub.d	$t1, $t1, $t6
	bgtz	$t2, .LBB8_27
.LBB8_28:                               # %.lr.ph379
                                        #   in Loop: Header=BB8_4 Depth=1
	alsl.d	$t6, $t3, $a7, 2
	ld.w	$t8, $s4, %pc_lo12(r)
	ld.d	$a4, $s3, %pc_lo12(v)
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.w	$t4, $t4, %pc_lo12(qr)
	ld.w	$a4, $s7, %pc_lo12(J)
	ld.d	$t1, $s0, %pc_lo12(row)
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.w	$t3, $a5, %pc_lo12(I)
	ld.d	$a6, $t7, %pc_lo12(SS)
	addi.d	$t2, $a4, 1
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 0
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a4, $t3, $t1, 3
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB8_30
	.p2align	4, , 16
.LBB8_29:                               # %.loopexit
                                        #   in Loop: Header=BB8_30 Depth=2
	move	$s6, $t5
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	bge	$a5, $s8, .LBB8_38
.LBB8_30:                               # %.lr.ph371
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_33 Depth 3
                                        #         Child Loop BB8_35 Depth 4
	ld.w	$s7, $t6, 0
	sub.d	$a4, $a4, $t8
	st.w	$a4, $t6, 0
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ldx.b	$t1, $a5, $s8
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$ra, $s8, $a5, 3
	addi.d	$s8, $s8, -1
	slli.d	$t1, $t1, 10
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	add.d	$s2, $a5, $t1
	sub.d	$s6, $a4, $s6
	move	$t1, $t0
	move	$t7, $a4
	move	$s1, $t0
	b	.LBB8_33
	.p2align	4, , 16
.LBB8_31:                               # %._crit_edge364
                                        #   in Loop: Header=BB8_33 Depth=3
	add.d	$a5, $fp, $t1
	ld.b	$a5, $a5, 1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s2, $a5
	add.w	$a5, $a5, $s7
	slt	$t3, $s0, $a5
	maskeqz	$a5, $a5, $t3
	masknez	$t3, $s0, $t3
	or	$s4, $a5, $t3
.LBB8_32:                               # %.thread301
                                        #   in Loop: Header=BB8_33 Depth=3
	sub.w	$a5, $t7, $t4
	sub.w	$t3, $s6, $t8
	slt	$t7, $t3, $a5
	masknez	$t3, $t3, $t7
	maskeqz	$a5, $a5, $t7
	or	$s6, $a5, $t3
	alsl.d	$a5, $t1, $a7, 2
	alsl.d	$t3, $t1, $a6, 2
	slt	$t7, $s6, $s4
	masknez	$s7, $s6, $t7
	maskeqz	$t7, $s4, $t7
	or	$t7, $t7, $s7
	st.w	$t7, $a5, 0
	st.w	$s0, $t3, 0
	addi.d	$s1, $s1, -1
	addi.w	$a5, $t1, 0
	addi.d	$t1, $t1, -1
	move	$s7, $s3
	blez	$a5, .LBB8_29
.LBB8_33:                               #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_35 Depth 4
	slli.d	$t3, $t1, 2
	ldx.w	$s3, $a7, $t3
	ldx.w	$t3, $a6, $t3
	sub.w	$s0, $s3, $t4
	sub.w	$t3, $t3, $t8
	slt	$a5, $t3, $s0
	ld.d	$s4, $ra, 0
	masknez	$t3, $t3, $a5
	maskeqz	$a5, $s0, $a5
	or	$s0, $a5, $t3
	st.d	$s4, $s5, %pc_lo12(z)
	beqz	$s4, .LBB8_31
# %bb.34:                               # %.lr.ph363
                                        #   in Loop: Header=BB8_33 Depth=3
	add.w	$t3, $s1, $t2
	.p2align	4, , 16
.LBB8_35:                               #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_30 Depth=2
                                        #       Parent Loop BB8_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $s4, 0
	beq	$a5, $t3, .LBB8_37
# %bb.36:                               #   in Loop: Header=BB8_35 Depth=4
	ld.d	$s4, $s4, 8
	st.d	$s4, $s5, %pc_lo12(z)
	bnez	$s4, .LBB8_35
	b	.LBB8_31
	.p2align	4, , 16
.LBB8_37:                               #   in Loop: Header=BB8_33 Depth=3
	move	$s4, $s0
	b	.LBB8_32
	.p2align	4, , 16
.LBB8_38:                               # %.lr.ph386.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a4, $t6, 0
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	stx.w	$a4, $a6, $a5
	ld.w	$a5, $a7, 0
	move	$t4, $zero
	move	$s5, $zero
	add.w	$s8, $a5, $a3
	move	$a3, $a2
	move	$t0, $a6
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ori	$s2, $zero, 1
	ori	$t5, $zero, 2
	b	.LBB8_41
	.p2align	4, , 16
.LBB8_39:                               #   in Loop: Header=BB8_41 Depth=2
	move	$s5, $t4
	move	$s8, $t1
.LBB8_40:                               #   in Loop: Header=BB8_41 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t0, $t0, 4
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	beqz	$a1, .LBB8_45
.LBB8_41:                               # %.lr.ph386
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a0, 0
	ld.w	$t2, $a7, 0
	add.w	$t1, $t2, $a5
	blt	$t1, $s8, .LBB8_40
# %bb.42:                               #   in Loop: Header=BB8_41 Depth=2
	blt	$s8, $t1, .LBB8_39
# %bb.43:                               #   in Loop: Header=BB8_41 Depth=2
	ld.w	$t3, $a3, 0
	beq	$a5, $t3, .LBB8_40
# %bb.44:                               #   in Loop: Header=BB8_41 Depth=2
	ld.w	$a5, $t0, 0
	beq	$t2, $a5, .LBB8_39
	b	.LBB8_40
	.p2align	4, , 16
.LBB8_45:                               # %.lr.ph392.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a0, $s0, 1
	alsl.d	$a1, $s0, $a6, 2
	alsl.d	$a2, $s0, $a2, 2
	ori	$a3, $zero, 1
	move	$t1, $s0
	.p2align	4, , 16
.LBB8_46:                               # %.lr.ph392
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a1, 0
	add.d	$a5, $a5, $s6
	add.w	$a5, $a5, $a6
	slt	$a6, $s8, $a5
	masknez	$a7, $s5, $a6
	maskeqz	$t0, $t1, $a6
	or	$s5, $t0, $a7
	masknez	$a3, $a3, $a6
	maskeqz	$a7, $t5, $a6
	or	$a3, $a7, $a3
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s8, $a6
	or	$s8, $a5, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	addi.w	$t1, $t1, -1
	bgtz	$a0, .LBB8_46
# %bb.47:                               # %._crit_edge393
                                        #   in Loop: Header=BB8_4 Depth=1
	beq	$a3, $s2, .LBB8_2
# %bb.48:                               #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a2, $a0, -1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a3, $s5
	move	$a5, $zero
	pcaddu18i	$ra, %call36(diff)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a6, %pc_lo12(I)
	addi.d	$a0, $a0, 2
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $a5, %pc_lo12(al_len)
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a3, $t4, %pc_lo12(last)
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a4, %pc_lo12(sapp)
	st.w	$a0, $a6, %pc_lo12(I)
	addi.d	$a0, $a2, 2
	st.w	$a0, $a5, %pc_lo12(al_len)
	bltz	$a3, .LBB8_50
# %bb.49:                               #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a2, $a1, 4
	addi.w	$a0, $zero, -2
	st.d	$a2, $a4, %pc_lo12(sapp)
	move	$a2, $a0
	lu32i.d	$a2, 0
	st.w	$a2, $a1, 0
	b	.LBB8_51
.LBB8_50:                               #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a0, $a1, -4
	addi.d	$a0, $a0, -2
	st.w	$a0, $a1, -4
.LBB8_51:                               #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $zero
	st.w	$a0, $t4, %pc_lo12(last)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	nor	$a0, $a0, $zero
	add.w	$t7, $t7, $a0
	b	.LBB8_3
.LBB8_52:
                                        # implicit-def: $r4
                                        # kill: killed $r4
.LBB8_53:                               # %tailrecurse._crit_edge
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	blez	$t7, .LBB8_65
# %bb.54:
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a5, %pc_lo12(I)
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a4, %pc_lo12(al_len)
	ld.w	$a2, $t4, %pc_lo12(last)
	add.d	$a0, $a0, $t7
	st.w	$a0, $a5, %pc_lo12(I)
	add.d	$a0, $a1, $t7
	st.w	$a0, $a4, %pc_lo12(al_len)
	bltz	$a2, .LBB8_63
# %bb.55:
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a4, %pc_lo12(sapp)
	sub.d	$a0, $zero, $t7
	addi.d	$a2, $a1, 4
	st.d	$a2, $a4, %pc_lo12(sapp)
	st.w	$a0, $a1, 0
	b	.LBB8_64
.LBB8_56:
	ori	$a0, $zero, 1
	bne	$t7, $a0, .LBB8_68
# %bb.57:                               # %.lr.ph414
	move	$s3, $zero
	pcalau12i	$a1, %pc_hi20(v)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.b	$a3, $a2, 1
	ld.d	$a5, $a1, %pc_lo12(v)
	ld.w	$a1, $t6, %pc_lo12(r)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(q)
	slli.d	$a3, $a3, 10
	add.d	$a3, $a5, $a3
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	slt	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	add.d	$a4, $a4, $a1
	mul.d	$a5, $a1, $s0
	pcalau12i	$t6, %pc_hi20(row)
	ld.d	$a6, $t6, %pc_lo12(row)
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a7, $a7, %pc_lo12(I)
	add.d	$a5, $a2, $a5
	add.d	$a4, $a4, $a5
	sub.w	$s1, $zero, $a4
	alsl.d	$a4, $a7, $a6, 3
	pcalau12i	$s2, %pc_hi20(J)
	ld.w	$a5, $s2, %pc_lo12(J)
	addi.d	$a6, $s0, 1
	bstrpick.d	$a6, $a6, 31, 0
	ori	$a7, $zero, 1
	b	.LBB8_60
	.p2align	4, , 16
.LBB8_58:                               #   in Loop: Header=BB8_60 Depth=1
	ldx.b	$t0, $fp, $a7
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a3, $t0
	sltui	$t1, $a7, 2
	sub.d	$t2, $a0, $a7
	mul.d	$t2, $t2, $a1
	sub.d	$t2, $t2, $a2
	masknez	$t1, $t2, $t1
	sub.d	$t2, $s0, $a7
	slt	$t3, $zero, $t2
	mul.d	$t2, $a1, $t2
	add.d	$t2, $t2, $a2
	maskeqz	$t2, $t2, $t3
	sub.d	$t1, $t1, $t2
	add.w	$t0, $t1, $t0
	slt	$t1, $s1, $t0
	masknez	$t2, $s3, $t1
	maskeqz	$t3, $a7, $t1
	or	$s3, $t3, $t2
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $s1, $t1
	or	$s1, $t0, $t1
.LBB8_59:                               # %.thread
                                        #   in Loop: Header=BB8_60 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a6, .LBB8_70
.LBB8_60:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_61 Depth 2
	add.w	$t0, $a5, $a7
	move	$t1, $a4
	.p2align	4, , 16
.LBB8_61:                               #   Parent Loop BB8_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t1, 8
	st.d	$t1, $s5, %pc_lo12(z)
	beqz	$t1, .LBB8_58
# %bb.62:                               #   in Loop: Header=BB8_61 Depth=2
	ld.w	$t2, $t1, 0
	bne	$t2, $t0, .LBB8_61
	b	.LBB8_59
.LBB8_63:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(sapp)
	ld.w	$a0, $a1, -4
	sub.d	$a0, $a0, $t7
	st.w	$a0, $a1, -4
.LBB8_64:                               # %.sink.split
	st.w	$a0, $t4, %pc_lo12(last)
.LBB8_65:
	ld.w	$a0, $t6, %pc_lo12(r)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(q)
	slt	$t5, $zero, $a6
	slt	$a2, $zero, $t7
	mul.d	$a0, $a0, $t7
	add.d	$a0, $a0, $a1
	maskeqz	$a0, $a0, $a2
.LBB8_66:                               # %.thread303
	sub.d	$s1, $zero, $a0
.LBB8_67:                               # %.thread303
	andi	$a0, $t5, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB8_68:
	pcalau12i	$a2, %pc_hi20(J)
	ld.w	$a0, $a2, %pc_lo12(J)
	add.d	$a3, $a0, $s0
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a4, $a5, %pc_lo12(al_len)
	ld.w	$a1, $t4, %pc_lo12(last)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(sapp)
	st.w	$a3, $a2, %pc_lo12(J)
	add.d	$a2, $a4, $s0
	st.w	$a2, $a5, %pc_lo12(al_len)
	bltz	$a1, .LBB8_74
# %bb.69:
	st.w	$s0, $a0, 0
	st.w	$s0, $t4, %pc_lo12(last)
	b	.LBB8_75
.LBB8_70:
	addi.w	$s6, $s3, 0
	beqz	$s6, .LBB8_76
# %bb.71:
	ori	$a0, $zero, 1
	st.d	$t6, $sp, 168                   # 8-byte Folded Spill
	bge	$a0, $s6, .LBB8_78
# %bb.72:
	addi.d	$a1, $s3, -1
	ld.w	$a0, $s2, %pc_lo12(J)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a4, $a2, %pc_lo12(al_len)
	ld.w	$a3, $t4, %pc_lo12(last)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(sapp)
	add.d	$a0, $a0, $a1
	st.w	$a0, $s2, %pc_lo12(J)
	add.d	$a0, $a4, $a1
	bltz	$a3, .LBB8_81
# %bb.73:
	addi.d	$s8, $a2, 4
	st.w	$a1, $a2, 0
	b	.LBB8_82
.LBB8_74:
	st.w	$s0, $a0, -4
	st.w	$a1, $a0, 0
.LBB8_75:
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $t6, %pc_lo12(r)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(q)
	addi.d	$a0, $a0, 4
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a4, %pc_lo12(sapp)
	mul.d	$a0, $a1, $s0
	add.d	$a0, $a2, $a0
	b	.LBB8_66
.LBB8_76:
	ld.w	$a0, $s2, %pc_lo12(J)
	add.d	$a1, $a0, $s0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $a6, %pc_lo12(al_len)
	ld.w	$a2, $t4, %pc_lo12(last)
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a5, %pc_lo12(sapp)
	st.w	$a1, $s2, %pc_lo12(J)
	add.d	$a1, $a3, $s0
	st.w	$a1, $a6, %pc_lo12(al_len)
	bltz	$a2, .LBB8_79
# %bb.77:
	st.w	$s0, $a0, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(I)
	addi.d	$a2, $a2, 1
	st.w	$a2, $a3, %pc_lo12(I)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a6, %pc_lo12(al_len)
	addi.d	$a1, $a0, 8
	st.d	$a1, $a5, %pc_lo12(sapp)
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 4
	b	.LBB8_80
.LBB8_78:                               # %._crit_edge463
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $a2, %pc_lo12(sapp)
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $s4, %pc_lo12(al_len)
	b	.LBB8_83
.LBB8_79:
	st.w	$s0, $a0, -4
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a3, $a7, %pc_lo12(I)
	addi.d	$a4, $a0, 4
	st.d	$a4, $a5, %pc_lo12(sapp)
	addi.d	$a3, $a3, 1
	st.w	$a3, $a7, %pc_lo12(I)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a6, %pc_lo12(al_len)
	addi.d	$a1, $a2, -1
	st.w	$a1, $a0, 0
.LBB8_80:                               # %.thread303
	st.w	$a1, $t4, %pc_lo12(last)
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	b	.LBB8_67
.LBB8_81:
	st.w	$a1, $a2, -4
	addi.d	$s8, $a2, 4
	st.w	$a3, $a2, 0
.LBB8_82:
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
.LBB8_83:
	addi.d	$a1, $s8, 4
	st.d	$a1, $a2, %pc_lo12(sapp)
	st.w	$zero, $s8, 0
	st.w	$zero, $t4, %pc_lo12(last)
	addi.d	$s0, $a0, 1
	st.w	$s0, $s4, %pc_lo12(al_len)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 1
	ldx.bu	$a1, $fp, $s6
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(no_mis)
	addi.d	$a1, $a1, %pc_lo12(no_mis)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(no_mat)
	addi.d	$a2, $a2, %pc_lo12(no_mat)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a2, $a5, %pc_lo12(I)
	addi.d	$a1, $a1, 1
	ld.w	$a3, $s2, %pc_lo12(J)
	st.w	$a1, $a0, 0
	addi.w	$s7, $a2, 1
	st.w	$s7, $a5, %pc_lo12(I)
	addi.d	$fp, $a3, 1
	st.w	$fp, $s2, %pc_lo12(J)
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(row)
	st.d	$a0, $s5, %pc_lo12(z)
	slli.d	$a2, $s7, 3
	ldx.d	$a3, $a1, $a2
	st.w	$fp, $a0, 0
	st.d	$a3, $a0, 8
	stx.d	$a0, $a1, $a2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB8_85
# %bb.84:
	sub.d	$a0, $a0, $s3
	add.d	$a1, $fp, $a0
	st.w	$a1, $s2, %pc_lo12(J)
	add.d	$a1, $s0, $a0
	st.w	$a1, $s4, %pc_lo12(al_len)
	addi.d	$a1, $s8, 8
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(sapp)
	st.w	$a0, $s8, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(last)
.LBB8_85:
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 96                    # 8-byte Folded Reload
	b	.LBB8_67
.Lfunc_end8:
	.size	diff, .Lfunc_end8-diff
                                        # -- End function
	.globl	display                         # -- Begin function display
	.p2align	5
	.type	display,@function
display:                                # @display
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$s6, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bgtz	$a2, .LBB9_3
# %bb.1:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bgtz	$a0, .LBB9_3
.LBB9_2:                                # %._crit_edge122
	move	$a0, $zero
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB9_3:                                # %.lr.ph121.preheader
	pcalau12i	$a0, %pc_hi20(BLINE)
	addi.d	$s8, $a0, %pc_lo12(BLINE)
	pcalau12i	$a0, %pc_hi20(CLINE)
	addi.d	$s5, $a0, %pc_lo12(CLINE)
	pcalau12i	$a0, %pc_hi20(ALINE)
	addi.d	$s4, $a0, %pc_lo12(ALINE)
	move	$s3, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s1, $zero
	move	$s0, $zero
	move	$s2, $zero
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_4:                                # %.lr.ph121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
	bnez	$s1, .LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s1, .LBB9_22
.LBB9_6:                                # %.critedge
                                        #   in Loop: Header=BB9_4 Depth=1
	blez	$s1, .LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 32
	stx.b	$a0, $s4, $s3
	addi.w	$s0, $s0, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.b	$a0, $a0, $s0
	st.b	$a0, $s8, 0
	addi.w	$s1, $s1, -1
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_8:                                #   in Loop: Header=BB9_4 Depth=1
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.b	$a0, $a0, $s2
	stx.b	$a0, $s4, $s3
	ori	$a0, $zero, 32
	st.b	$a0, $s8, 0
	addi.w	$s1, $s1, 1
.LBB9_9:                                #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 45
.LBB9_10:                               #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a1, $s3, 1
	addi.d	$a3, $s5, 1
	addi.d	$s8, $s8, 1
	st.b	$a0, $s5, 0
	ori	$a0, $zero, 48
	blt	$a0, $s3, .LBB9_13
# %bb.11:                               #   in Loop: Header=BB9_4 Depth=1
	blt	$s2, $s6, .LBB9_20
# %bb.12:                               #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blt	$s0, $a0, .LBB9_20
.LBB9_13:                               #   in Loop: Header=BB9_4 Depth=1
	add.d	$s5, $s4, $a1
	st.b	$zero, $a3, 0
	st.b	$zero, $s8, 0
	st.b	$zero, $s5, 0
	ori	$a0, $zero, 50
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	mul.w	$a1, $s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	bgeu	$s3, $a0, .LBB9_15
# %bb.14:                               #   in Loop: Header=BB9_4 Depth=1
	addi.d	$s3, $s4, 10
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_15:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$s3, $s4, 10
	.p2align	4, , 16
.LBB9_16:                               # %.lr.ph
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 10
	bgeu	$s5, $s3, .LBB9_16
.LBB9_17:                               # %._crit_edge
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a0, $s5, 5
	bltu	$a0, $s3, .LBB9_19
# %bb.18:                               #   in Loop: Header=BB9_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_19:                               #   in Loop: Header=BB9_4 Depth=1
	addi.d	$s8, $s8, 1
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	pcalau12i	$a1, %pc_hi20(ALINE)
	addi.d	$a2, $a1, %pc_lo12(ALINE)
	pcalau12i	$a1, %pc_hi20(CLINE)
	addi.d	$s5, $a1, %pc_lo12(CLINE)
	pcalau12i	$a1, %pc_hi20(BLINE)
	addi.d	$s8, $a1, %pc_lo12(BLINE)
	move	$a1, $fp
	move	$a3, $s5
	move	$a4, $s7
	move	$a5, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.w	$fp, $s2, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.w	$s7, $s0, $a0
	bge	$s2, $s6, .LBB9_21
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_20:                               #   in Loop: Header=BB9_4 Depth=1
	move	$s5, $a3
	move	$s3, $a1
	blt	$s2, $s6, .LBB9_4
.LBB9_21:                               #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blt	$s0, $a0, .LBB9_4
	b	.LBB9_2
.LBB9_22:                               #   in Loop: Header=BB9_4 Depth=1
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.b	$a0, $a0, $s2
	stx.b	$a0, $s4, $s3
	addi.w	$s0, $s0, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $s0
	ldx.bu	$a4, $s4, $s3
	st.b	$a1, $s8, 0
	ori	$a0, $zero, 65
	bne	$a4, $a0, .LBB9_24
# %bb.23:                               #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 71
	beq	$a1, $a0, .LBB9_30
.LBB9_24:                               #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 67
	bne	$a4, $a0, .LBB9_26
# %bb.25:                               #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 84
	beq	$a1, $a0, .LBB9_30
.LBB9_26:                               #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 71
	bne	$a4, $a0, .LBB9_28
# %bb.27:                               #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 65
	beq	$a1, $a0, .LBB9_30
.LBB9_28:                               #   in Loop: Header=BB9_4 Depth=1
	move	$s1, $zero
	xor	$a0, $a4, $a1
	sltui	$a0, $a0, 1
	ori	$a3, $zero, 32
	masknez	$a3, $a3, $a0
	ori	$a5, $zero, 124
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a3
	ori	$a3, $zero, 84
	bne	$a4, $a3, .LBB9_10
# %bb.29:                               #   in Loop: Header=BB9_4 Depth=1
	ori	$a3, $zero, 67
	bne	$a1, $a3, .LBB9_10
.LBB9_30:                               #   in Loop: Header=BB9_4 Depth=1
	move	$s1, $zero
	ori	$a0, $zero, 58
	b	.LBB9_10
.Lfunc_end9:
	.size	display, .Lfunc_end9-display
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	fatal                           # -- Begin function fatal
	.p2align	5
	.type	fatal,@function
fatal:                                  # @fatal
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	fatal, .Lfunc_end10-fatal
                                        # -- End function
	.globl	fatalf                          # -- Begin function fatalf
	.p2align	5
	.type	fatalf,@function
fatalf:                                 # @fatalf
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	fatalf, .Lfunc_end11-fatalf
                                        # -- End function
	.text
	.globl	ckopen                          # -- Begin function ckopen
	.p2align	5
	.type	ckopen,@function
ckopen:                                 # @ckopen
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB12_2:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fatalf)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	ckopen, .Lfunc_end12-ckopen
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dtime
.LCPI13_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	dtime
	.p2align	5
	.type	dtime,@function
dtime:                                  # @dtime
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(rusage)
	addi.d	$fp, $a0, %pc_lo12(rusage)
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getrusage)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(.LCPI13_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI13_0)
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	dtime, .Lfunc_end13-dtime
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Output/sim.res"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"a+"
	.size	.L.str.1, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"8"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"tob.38-44"
	.size	.L.str.4, 10

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"liv.42-48"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%d"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"specified 0 alignments"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"r"
	.size	.L.str.8, 2

	.type	name1,@object                   # @name1
	.local	name1
	.comm	name1,8,8
	.type	name2,@object                   # @name2
	.local	name2
	.comm	name2,8,8
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"argument %d has improper form"
	.size	.L.str.9, 30

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"options are M, I, V, O and E."
	.size	.L.str.10, 30

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\t\tM = %g, I = %g, V = %g\n\t\tO = %g, E = %g\n\n"
	.size	.L.str.12, 44

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"  Run Line: %s %s %s\n"
	.size	.L.str.14, 22

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"#######################################################\n"
	.size	.L.str.15, 57

	.type	low,@object                     # @low
	.bss
	.globl	low
	.p2align	3, 0x0
low:
	.dword	0
	.size	low, 8

	.type	most,@object                    # @most
	.globl	most
	.p2align	3, 0x0
most:
	.dword	0
	.size	most, 8

	.type	CC,@object                      # @CC
	.local	CC
	.comm	CC,8,8
	.type	DD,@object                      # @DD
	.local	DD
	.comm	DD,8,8
	.type	RR,@object                      # @RR
	.local	RR
	.comm	RR,8,8
	.type	SS,@object                      # @SS
	.local	SS
	.comm	SS,8,8
	.type	EE,@object                      # @EE
	.local	EE
	.comm	EE,8,8
	.type	FF,@object                      # @FF
	.local	FF
	.comm	FF,8,8
	.type	HH,@object                      # @HH
	.local	HH
	.comm	HH,8,8
	.type	WW,@object                      # @WW
	.local	WW
	.comm	WW,8,8
	.type	II,@object                      # @II
	.local	II
	.comm	II,8,8
	.type	JJ,@object                      # @JJ
	.local	JJ
	.comm	JJ,8,8
	.type	XX,@object                      # @XX
	.local	XX
	.comm	XX,8,8
	.type	YY,@object                      # @YY
	.local	YY
	.comm	YY,8,8
	.type	row,@object                     # @row
	.globl	row
	.p2align	3, 0x0
row:
	.dword	0
	.size	row, 8

	.type	z,@object                       # @z
	.globl	z
	.p2align	3, 0x0
z:
	.dword	0
	.size	z, 8

	.type	v,@object                       # @v
	.local	v
	.comm	v,8,8
	.type	q,@object                       # @q
	.local	q
	.comm	q,4,4
	.type	r,@object                       # @r
	.local	r
	.comm	r,4,4
	.type	qr,@object                      # @qr
	.local	qr
	.comm	qr,4,4
	.type	LIST,@object                    # @LIST
	.globl	LIST
	.p2align	3, 0x0
LIST:
	.dword	0
	.size	LIST, 8

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"                 Upper Sequence : %s\n"
	.size	.L.str.16, 38

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"                         Length : %d\n"
	.size	.L.str.17, 38

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"                 Lower Sequence : %s\n"
	.size	.L.str.18, 38

	.type	min,@object                     # @min
	.local	min
	.comm	min,4,4
	.type	numnode,@object                 # @numnode
	.local	numnode
	.comm	numnode,4,4
	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"The number of alignments computed is too large"
	.size	.L.str.19, 47

	.type	m1,@object                      # @m1
	.local	m1
	.comm	m1,4,4
	.type	mm,@object                      # @mm
	.local	mm
	.comm	mm,4,4
	.type	n1,@object                      # @n1
	.local	n1
	.comm	n1,4,4
	.type	nn,@object                      # @nn
	.local	nn
	.comm	nn,4,4
	.type	rl,@object                      # @rl
	.local	rl
	.comm	rl,4,4
	.type	cl,@object                      # @cl
	.local	cl
	.comm	cl,4,4
	.type	I,@object                       # @I
	.local	I
	.comm	I,4,4
	.type	J,@object                       # @J
	.local	J
	.comm	J,4,4
	.type	sapp,@object                    # @sapp
	.local	sapp
	.comm	sapp,8,8
	.type	last,@object                    # @last
	.local	last
	.comm	last,4,4
	.type	al_len,@object                  # @al_len
	.local	al_len
	.comm	al_len,4,4
	.type	no_mat,@object                  # @no_mat
	.local	no_mat
	.comm	no_mat,4,4
	.type	no_mis,@object                  # @no_mis
	.local	no_mis
	.comm	no_mis,4,4
	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"      Number %d Local Alignment\n"
	.size	.L.str.21, 33

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"      Similarity Score : %g\n"
	.size	.L.str.22, 29

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"      Match Percentage : %d%%\n"
	.size	.L.str.23, 31

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"      Number of Matches : %d\n"
	.size	.L.str.24, 30

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"      Number of Mismatches : %d\n"
	.size	.L.str.25, 33

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"      Total Length of Gaps : %d\n"
	.size	.L.str.26, 33

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"      Begins at (%d, %d) and Ends at (%d, %d)\n"
	.size	.L.str.27, 47

	.type	flag,@object                    # @flag
	.local	flag
	.comm	flag,1,2
	.type	ALINE,@object                   # @ALINE
	.local	ALINE
	.comm	ALINE,51,1
	.type	BLINE,@object                   # @BLINE
	.local	BLINE
	.comm	BLINE,51,1
	.type	CLINE,@object                   # @CLINE
	.local	CLINE
	.comm	CLINE,51,1
	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"\n%5d "
	.size	.L.str.28, 6

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"    .    :"
	.size	.L.str.29, 11

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"    ."
	.size	.L.str.30, 6

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"\n%5d %s\n      %s\n%5d %s\n"
	.size	.L.str.31, 25

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%s\n"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Cannot open %s."
	.size	.L.str.33, 16

	.type	rusage,@object                  # @rusage
	.bss
	.globl	rusage
	.p2align	3, 0x0
rusage:
	.space	144
	.size	rusage, 144

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"\t\tSIM output with parameters:"
	.size	.Lstr, 30

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Can not open Output/sim.res\n"
	.size	.Lstr.1, 29

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"\n*********************************************************"
	.size	.Lstr.2, 59

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ALINE
	.addrsig_sym BLINE
	.addrsig_sym CLINE
	.addrsig_sym rusage
