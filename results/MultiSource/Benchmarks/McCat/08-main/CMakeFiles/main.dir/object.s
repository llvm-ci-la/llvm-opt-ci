	.file	"object.c"
	.text
	.globl	Oalloc                          # -- Begin function Oalloc
	.p2align	5
	.type	Oalloc,@function
Oalloc:                                 # @Oalloc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 272
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $s0, 104
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $s0, 120
	xvrepli.b	$xr1, 0
	xvst	$xr1, $s0, 128
	st.d	$zero, $s0, 160
	vrepli.b	$vr2, 0
	vst	$vr2, $s0, 168
	st.d	$zero, $s0, 208
	xvst	$xr1, $s0, 216
	st.w	$zero, $s0, 248
	vst	$vr0, $s0, 184
	st.d	$a0, $s0, 200
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	Oalloc, .Lfunc_end0-Oalloc
                                        # -- End function
	.globl	InsertPoint                     # -- Begin function InsertPoint
	.p2align	5
	.type	InsertPoint,@function
InsertPoint:                            # @InsertPoint
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s3, $a0, 228
	fmov.d	$fs0, $fa2
	fmov.d	$fs1, $fa1
	fmov.d	$fs2, $fa0
	beqz	$s3, .LBB1_7
# %bb.1:
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB1_8
# %bb.2:                                # %.lr.ph.preheader
	lu12i.w	$a1, 215352
	ori	$a1, $a1, 1411
	lu32i.d	$a1, -308097
	lu52i.d	$s1, $a1, -714
	lu12i.w	$a1, 499893
	ori	$a1, $a1, 3800
	lu32i.d	$a1, -324497
	lu52i.d	$s2, $a1, 1022
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $s4, 8
	beqz	$a0, .LBB1_9
.LBB1_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s4, $a0
	ld.d	$s0, $a0, 0
	fld.d	$fa0, $s0, 0
	fsub.d	$fa0, $fa0, $fs2
	fabs.d	$fa0, $fa0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB1_3
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	fld.d	$fa0, $s0, 8
	fsub.d	$fa0, $fa0, $fs1
	fabs.d	$fa0, $fa0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB1_3
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	fld.d	$fa0, $s0, 16
	fsub.d	$fa0, $fa0, $fs0
	fabs.d	$fa0, $fa0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB1_3
	b	.LBB1_11
.LBB1_7:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $fp, 64
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s1, 0
	fst.d	$fs2, $a0, 0
	fst.d	$fs1, $a0, 8
	fst.d	$fs0, $a0, 16
	fst.d	$fs2, $a0, 24
	fst.d	$fs1, $a0, 32
	fst.d	$fs0, $a0, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 8
	ori	$a0, $zero, 1
	b	.LBB1_10
.LBB1_8:
	move	$s4, $zero
.LBB1_9:                                # %._crit_edge.thread
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s4, 8
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s1, 0
	fst.d	$fs2, $a0, 0
	fst.d	$fs1, $a0, 8
	fst.d	$fs0, $a0, 16
	fst.d	$fs2, $a0, 24
	fst.d	$fs1, $a0, 32
	fst.d	$fs0, $a0, 40
	st.d	$s4, $s1, 16
	st.d	$zero, $s1, 8
	addi.d	$a0, $s3, 1
.LBB1_10:                               # %._crit_edge.thread78.sink.split
	st.w	$a0, $fp, 228
.LBB1_11:                               # %._crit_edge.thread78
	move	$a0, $s0
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	InsertPoint, .Lfunc_end1-InsertPoint
                                        # -- End function
	.globl	InsertPoly3                     # -- Begin function InsertPoly3
	.p2align	5
	.type	InsertPoly3,@function
InsertPoly3:                            # @InsertPoly3
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	fld.d	$fa1, $s1, 8
	fld.d	$fa2, $s1, 16
	move	$s0, $a0
	xvrepli.b	$xr3, 0
	xvst	$xr3, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 24
	fld.d	$fa1, $s1, 32
	fld.d	$fa2, $s1, 40
	st.d	$a0, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 48
	fld.d	$fa1, $s1, 56
	fld.d	$fa2, $s1, 64
	st.d	$a0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 72
	st.d	$a0, $s0, 16
	beqz	$a1, .LBB2_2
# %bb.1:
	st.d	$s0, $a1, 48
	st.d	$a1, $s0, 40
.LBB2_2:
	ld.w	$a0, $fp, 232
	st.d	$s0, $fp, 72
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 232
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	InsertPoly3, .Lfunc_end2-InsertPoly3
                                        # -- End function
	.globl	InsertPoly4                     # -- Begin function InsertPoly4
	.p2align	5
	.type	InsertPoly4,@function
InsertPoly4:                            # @InsertPoly4
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	fld.d	$fa1, $s1, 8
	fld.d	$fa2, $s1, 16
	move	$s0, $a0
	xvrepli.b	$xr3, 0
	xvst	$xr3, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 24
	fld.d	$fa1, $s1, 32
	fld.d	$fa2, $s1, 40
	st.d	$a0, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 48
	fld.d	$fa1, $s1, 56
	fld.d	$fa2, $s1, 64
	st.d	$a0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 72
	fld.d	$fa1, $s1, 80
	fld.d	$fa2, $s1, 88
	st.d	$a0, $s0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 80
	st.d	$a0, $s0, 24
	beqz	$a1, .LBB3_2
# %bb.1:
	st.d	$s0, $a1, 56
	st.d	$a1, $s0, 48
.LBB3_2:
	ld.w	$a0, $fp, 236
	st.d	$s0, $fp, 80
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 236
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	InsertPoly4, .Lfunc_end3-InsertPoly4
                                        # -- End function
	.globl	ArrayToPoly3                    # -- Begin function ArrayToPoly3
	.p2align	5
	.type	ArrayToPoly3,@function
ArrayToPoly3:                           # @ArrayToPoly3
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 64                   # 8-byte Folded Spill
	move	$s0, $a0
	blez	$a2, .LBB4_5
# %bb.1:                                # %.lr.ph
	move	$fp, $a2
	move	$s2, $zero
	addi.d	$s3, $a1, 32
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %InsertPoly3.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s0, 232
	st.d	$s1, $s0, 72
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 232
	addi.w	$s2, $s2, 3
	addi.d	$s3, $s3, 72
	bge	$s2, $fp, .LBB4_5
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fs0, $s3, -32
	fld.d	$fs1, $s3, -24
	fld.d	$fs2, $s3, -16
	fld.d	$fs3, $s3, -8
	fld.d	$fs4, $s3, 0
	fld.d	$fs5, $s3, 8
	fld.d	$fs6, $s3, 16
	fld.d	$fs7, $s3, 24
	fld.d	$fa0, $s3, 32
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	xvst	$xr0, $a0, 24
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs2
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	move	$a0, $s0
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $fs5
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	move	$a0, $s0
	fmov.d	$fa0, $fs6
	fmov.d	$fa1, $fs7
	fld.d	$fa2, $sp, 56                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(InsertPoint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 72
	st.d	$a0, $s1, 16
	beqz	$a1, .LBB4_2
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	st.d	$s1, $a1, 48
	st.d	$a1, $s1, 40
	b	.LBB4_2
.LBB4_5:                                # %._crit_edge
	move	$a0, $s0
	fld.d	$fs7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end4:
	.size	ArrayToPoly3, .Lfunc_end4-ArrayToPoly3
                                        # -- End function
	.globl	ArrayToPoly4                    # -- Begin function ArrayToPoly4
	.p2align	5
	.type	ArrayToPoly4,@function
ArrayToPoly4:                           # @ArrayToPoly4
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a0
	blez	$a2, .LBB5_3
# %bb.1:                                # %.lr.ph
	move	$fp, $a2
	move	$s1, $zero
	addi.d	$s2, $a1, 64
	.p2align	4, , 16
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $s2, -64
	xvld	$xr1, $s2, -32
	xvld	$xr2, $s2, 0
	xvst	$xr0, $sp, 8
	xvst	$xr1, $sp, 40
	xvst	$xr2, $sp, 72
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(InsertPoly4)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 4
	addi.d	$s2, $s2, 96
	blt	$s1, $fp, .LBB5_2
.LBB5_3:                                # %._crit_edge
	move	$a0, $s0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end5:
	.size	ArrayToPoly4, .Lfunc_end5-ArrayToPoly4
                                        # -- End function
	.globl	PrintPoints                     # -- Begin function PrintPoints
	.p2align	5
	.type	PrintPoints,@function
PrintPoints:                            # @PrintPoints
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $a0, 64
	beqz	$s2, .LBB6_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$fp, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	move	$s1, $zero
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a4, $a0, 16
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a3, $a0, 40
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 8
	addi.w	$s1, $s1, 1
	bnez	$s2, .LBB6_2
.LBB6_3:                                # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	PrintPoints, .Lfunc_end6-PrintPoints
                                        # -- End function
	.globl	PrintPoly3s                     # -- Begin function PrintPoly3s
	.p2align	5
	.type	PrintPoly3s,@function
PrintPoly3s:                            # @PrintPoly3s
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s1, $a0, 72
	beqz	$s1, .LBB7_3
# %bb.1:                                # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s0, $a0, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB7_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a4, $a0, 16
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a3, $a0, 40
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$a4, $a0, 16
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$a3, $a0, 40
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	ld.d	$a4, $a0, 16
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	ld.d	$a3, $a0, 40
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 40
	bnez	$s1, .LBB7_2
.LBB7_3:                                # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	PrintPoly3s, .Lfunc_end7-PrintPoly3s
                                        # -- End function
	.globl	PrintPoly4s                     # -- Begin function PrintPoly4s
	.p2align	5
	.type	PrintPoly4s,@function
PrintPoly4s:                            # @PrintPoly4s
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s1, $a0, 80
	beqz	$s1, .LBB8_3
# %bb.1:                                # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$fp, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s0, $a0, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB8_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a4, $a0, 16
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a3, $a0, 40
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$a4, $a0, 16
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$a3, $a0, 40
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	ld.d	$a4, $a0, 16
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	ld.d	$a3, $a0, 40
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ld.d	$a4, $a0, 16
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ld.d	$a3, $a0, 40
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 48
	bnez	$s1, .LBB8_2
.LBB8_3:                                # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	PrintPoly4s, .Lfunc_end8-PrintPoly4s
                                        # -- End function
	.globl	PrintObject                     # -- Begin function PrintObject
	.p2align	5
	.type	PrintObject,@function
PrintObject:                            # @PrintObject
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 64
	beqz	$s3, .LBB9_3
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	move	$s2, $zero
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 16
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a3, $a0, 40
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 8
	addi.w	$s2, $s2, 1
	bnez	$s3, .LBB9_2
.LBB9_3:                                # %PrintPoints.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PrintPoly3s)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PrintPoly4s)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 200
	ld.d	$a2, $fp, 192
	ld.d	$a1, $fp, 184
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 152
	ld.d	$a2, $fp, 144
	ld.d	$a1, $fp, 136
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 176
	ld.d	$a2, $fp, 168
	ld.d	$a1, $fp, 160
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 120
	ld.d	$a2, $fp, 112
	ld.d	$a1, $fp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 132
	beqz	$a0, .LBB9_7
# %bb.4:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB9_8
.LBB9_5:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB9_9
.LBB9_6:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB9_7:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 132
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB9_5
.LBB9_8:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 132
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB9_6
.LBB9_9:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	PrintObject, .Lfunc_end9-PrintObject
                                        # -- End function
	.globl	InsertChild                     # -- Begin function InsertChild
	.p2align	5
	.type	InsertChild,@function
InsertChild:                            # @InsertChild
# %bb.0:
	beqz	$a0, .LBB10_4
# %bb.1:
	ld.d	$a2, $a0, 208
	beqz	$a2, .LBB10_3
# %bb.2:
	st.d	$a1, $a2, 256
	st.d	$a2, $a1, 264
	st.d	$zero, $a1, 256
.LBB10_3:                               # %.sink.split
	st.d	$a1, $a0, 208
.LBB10_4:
	ret
.Lfunc_end10:
	.size	InsertChild, .Lfunc_end10-InsertChild
                                        # -- End function
	.globl	CalcObjectChildren              # -- Begin function CalcObjectChildren
	.p2align	5
	.type	CalcObjectChildren,@function
CalcObjectChildren:                     # @CalcObjectChildren
# %bb.0:
	beqz	$a0, .LBB11_14
# %bb.1:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 104                  # 8-byte Folded Spill
	ld.d	$fp, $a0, 208
	beqz	$fp, .LBB11_13
# %bb.2:                                # %.lr.ph
	fmov.d	$fs0, $fa7
	fmov.d	$fs1, $fa6
	fmov.d	$fs2, $fa5
	fmov.d	$fs3, $fa4
	fmov.d	$fs4, $fa3
	fmov.d	$fs5, $fa2
	fmov.d	$fs6, $fa1
	fmov.d	$fs7, $fa0
	movgr2fr.d	$fa0, $a1
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	movfr2gr.d	$s0, $fa0
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_3:                               # %TranslateObjectAdd.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	move	$a0, $fp
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	fmov.d	$fa2, $fs5
	fmov.d	$fa3, $fs4
	fmov.d	$fa4, $fs3
	fmov.d	$fa5, $fs2
	fmov.d	$fa6, $fs1
	fmov.d	$fa7, $fs0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(CalcObjectChildren)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 256
	beqz	$fp, .LBB11_13
.LBB11_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_6 Depth 2
                                        #     Child Loop BB11_9 Depth 2
                                        #     Child Loop BB11_12 Depth 2
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	fmov.d	$fa2, $fs5
	pcaddu18i	$ra, %call36(ScaleMatrix)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 64
	beqz	$s2, .LBB11_7
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB11_4 Depth=1
	move	$s1, $a0
	.p2align	4, , 16
.LBB11_6:                               # %.lr.ph.i
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(TPointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 72
	xvst	$xr0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 72
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s2, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s2, $s2, 8
	bnez	$s2, .LBB11_6
.LBB11_7:                               # %ScaleObjectAdd.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs3
	fmov.d	$fa2, $fs2
	pcaddu18i	$ra, %call36(RotateMatrix)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 64
	beqz	$s2, .LBB11_10
# %bb.8:                                # %.lr.ph.i31.preheader
                                        #   in Loop: Header=BB11_4 Depth=1
	move	$s1, $a0
	.p2align	4, , 16
.LBB11_9:                               # %.lr.ph.i31
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(TPointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 72
	xvst	$xr0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 72
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s2, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s2, $s2, 8
	bnez	$s2, .LBB11_9
.LBB11_10:                              # %RotateObjectAdd.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fld.d	$fa2, $sp, 8                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(TranslateMatrix)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 64
	beqz	$s2, .LBB11_3
# %bb.11:                               # %.lr.ph.i53.preheader
                                        #   in Loop: Header=BB11_4 Depth=1
	move	$s1, $a0
	.p2align	4, , 16
.LBB11_12:                              # %.lr.ph.i53
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(TPointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 72
	xvst	$xr0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 72
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s2, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s2, $s2, 8
	bnez	$s2, .LBB11_12
	b	.LBB11_3
.LBB11_13:
	fld.d	$fs7, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
.LBB11_14:                              # %.loopexit
	ret
.Lfunc_end11:
	.size	CalcObjectChildren, .Lfunc_end11-CalcObjectChildren
                                        # -- End function
	.globl	ScaleObjectAdd                  # -- Begin function ScaleObjectAdd
	.p2align	5
	.type	ScaleObjectAdd,@function
ScaleObjectAdd:                         # @ScaleObjectAdd
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(ScaleMatrix)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB12_5
# %bb.1:
	ld.d	$s0, $s0, 64
	beqz	$s0, .LBB12_4
# %bb.2:                                # %.lr.ph
	move	$fp, $a0
	.p2align	4, , 16
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(TPointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 72
	xvst	$xr0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 72
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s0, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB12_3
.LBB12_4:                               # %.loopexit
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB12_5:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end12:
	.size	ScaleObjectAdd, .Lfunc_end12-ScaleObjectAdd
                                        # -- End function
	.globl	RotateObjectAdd                 # -- Begin function RotateObjectAdd
	.p2align	5
	.type	RotateObjectAdd,@function
RotateObjectAdd:                        # @RotateObjectAdd
# %bb.0:
	beqz	$a0, .LBB13_5
# %bb.1:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(RotateMatrix)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 64
	beqz	$s0, .LBB13_4
# %bb.2:                                # %.lr.ph
	move	$fp, $a0
	.p2align	4, , 16
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(TPointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 72
	xvst	$xr0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 72
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s0, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB13_3
.LBB13_4:                               # %.loopexit
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB13_5:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end13:
	.size	RotateObjectAdd, .Lfunc_end13-RotateObjectAdd
                                        # -- End function
	.globl	TranslateObjectAdd              # -- Begin function TranslateObjectAdd
	.p2align	5
	.type	TranslateObjectAdd,@function
TranslateObjectAdd:                     # @TranslateObjectAdd
# %bb.0:
	beqz	$a0, .LBB14_5
# %bb.1:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(TranslateMatrix)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 64
	beqz	$s0, .LBB14_4
# %bb.2:                                # %.lr.ph
	move	$fp, $a0
	.p2align	4, , 16
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(TPointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 72
	xvst	$xr0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 72
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s0, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB14_3
.LBB14_4:                               # %.loopexit
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB14_5:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end14:
	.size	TranslateObjectAdd, .Lfunc_end14-TranslateObjectAdd
                                        # -- End function
	.globl	CalcObject                      # -- Begin function CalcObject
	.p2align	5
	.type	CalcObject,@function
CalcObject:                             # @CalcObject
# %bb.0:
	beqz	$a0, .LBB15_13
# %bb.1:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 208
	beqz	$s0, .LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(CalcObject)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 256
	bnez	$s0, .LBB15_2
.LBB15_3:                               # %._crit_edge
	fld.d	$fa0, $fp, 184
	fld.d	$fa1, $fp, 192
	fld.d	$fa2, $fp, 200
	fld.d	$fa3, $fp, 160
	fld.d	$fa4, $fp, 168
	fld.d	$fa5, $fp, 176
	fld.d	$fa6, $fp, 136
	fld.d	$fa7, $fp, 144
	ld.d	$a1, $fp, 152
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CalcObjectChildren)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 184
	fld.d	$fa1, $fp, 192
	fld.d	$fa2, $fp, 200
	pcaddu18i	$ra, %call36(ScaleMatrix)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 64
	beqz	$s1, .LBB15_6
# %bb.4:                                # %.lr.ph.i
	move	$s0, $a0
	.p2align	4, , 16
.LBB15_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(PointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64
	xvst	$xr0, $sp, 64
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 64
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s1, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB15_5
.LBB15_6:                               # %.loopexit73
	fld.d	$fa0, $fp, 160
	fld.d	$fa1, $fp, 168
	fld.d	$fa2, $fp, 176
	pcaddu18i	$ra, %call36(RotateMatrix)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 64
	beqz	$s1, .LBB15_9
# %bb.7:                                # %.lr.ph.i32
	move	$s0, $a0
	.p2align	4, , 16
.LBB15_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(TPointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64
	xvst	$xr0, $sp, 64
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 64
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s1, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB15_8
.LBB15_9:                               # %.loopexit
	fld.d	$fa0, $fp, 136
	fld.d	$fa1, $fp, 144
	fld.d	$fa2, $fp, 152
	pcaddu18i	$ra, %call36(TranslateMatrix)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 64
	beqz	$s0, .LBB15_12
# %bb.10:                               # %.lr.ph.i54
	move	$fp, $a0
	.p2align	4, , 16
.LBB15_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(TPointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64
	xvst	$xr0, $sp, 64
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 64
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s0, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB15_11
.LBB15_12:
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
.LBB15_13:                              # %TranslateObjectAdd.exit
	ret
.Lfunc_end15:
	.size	CalcObject, .Lfunc_end15-CalcObject
                                        # -- End function
	.globl	ScaleObjectOverwrite            # -- Begin function ScaleObjectOverwrite
	.p2align	5
	.type	ScaleObjectOverwrite,@function
ScaleObjectOverwrite:                   # @ScaleObjectOverwrite
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(ScaleMatrix)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB16_5
# %bb.1:
	ld.d	$s0, $s0, 64
	beqz	$s0, .LBB16_4
# %bb.2:                                # %.lr.ph
	move	$fp, $a0
	.p2align	4, , 16
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(PointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 72
	xvst	$xr0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 72
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s0, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB16_3
.LBB16_4:                               # %.loopexit
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB16_5:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end16:
	.size	ScaleObjectOverwrite, .Lfunc_end16-ScaleObjectOverwrite
                                        # -- End function
	.globl	TranslateObjectOverwrite        # -- Begin function TranslateObjectOverwrite
	.p2align	5
	.type	TranslateObjectOverwrite,@function
TranslateObjectOverwrite:               # @TranslateObjectOverwrite
# %bb.0:
	beqz	$a0, .LBB17_5
# %bb.1:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(TranslateMatrix)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 64
	beqz	$s0, .LBB17_4
# %bb.2:                                # %.lr.ph
	move	$fp, $a0
	.p2align	4, , 16
.LBB17_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(PointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 72
	xvst	$xr0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 72
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s0, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB17_3
.LBB17_4:                               # %.loopexit
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB17_5:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end17:
	.size	TranslateObjectOverwrite, .Lfunc_end17-TranslateObjectOverwrite
                                        # -- End function
	.globl	RotateObjectOverwrite           # -- Begin function RotateObjectOverwrite
	.p2align	5
	.type	RotateObjectOverwrite,@function
RotateObjectOverwrite:                  # @RotateObjectOverwrite
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(RotateMatrix)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB18_5
# %bb.1:
	ld.d	$s0, $s0, 64
	beqz	$s0, .LBB18_4
# %bb.2:                                # %.lr.ph
	move	$fp, $a0
	.p2align	4, , 16
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	vld	$vr0, $a0, 32
	vst	$vr0, $sp, 48
	xvld	$xr0, $a0, 0
	xvst	$xr0, $sp, 16
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(PointToHPoint)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 72
	xvst	$xr0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 72
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MultMatrixHPoint)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	ld.d	$a0, $s0, 0
	fld.d	$fa1, $sp, 32
	vst	$vr0, $a0, 24
	fst.d	$fa1, $a0, 40
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB18_3
.LBB18_4:                               # %.loopexit
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB18_5:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end18:
	.size	RotateObjectOverwrite, .Lfunc_end18-RotateObjectOverwrite
                                        # -- End function
	.globl	SetObjectColor                  # -- Begin function SetObjectColor
	.p2align	5
	.type	SetObjectColor,@function
SetObjectColor:                         # @SetObjectColor
# %bb.0:
	beqz	$a0, .LBB19_2
# %bb.1:
	fcvt.d.s	$fa0, $fa0
	fst.d	$fa0, $a0, 104
.LBB19_2:
	fcvt.d.s	$fa0, $fa1
	fst.d	$fa0, $a0, 112
	fcvt.d.s	$fa0, $fa2
	fst.d	$fa0, $a0, 120
	ret
.Lfunc_end19:
	.size	SetObjectColor, .Lfunc_end19-SetObjectColor
                                        # -- End function
	.globl	Draw_Children                   # -- Begin function Draw_Children
	.p2align	5
	.type	Draw_Children,@function
Draw_Children:                          # @Draw_Children
# %bb.0:
	beqz	$a0, .LBB20_4
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(PrintObject)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 208
	beqz	$fp, .LBB20_3
	.p2align	4, , 16
.LBB20_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Draw_Children)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 256
	bnez	$fp, .LBB20_2
.LBB20_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB20_4:                               # %.loopexit
	ret
.Lfunc_end20:
	.size	Draw_Children, .Lfunc_end20-Draw_Children
                                        # -- End function
	.globl	Draw_Object                     # -- Begin function Draw_Object
	.p2align	5
	.type	Draw_Object,@function
Draw_Object:                            # @Draw_Object
# %bb.0:
	beqz	$a0, .LBB21_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(PrintObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 208
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(Draw_Children)
	jr	$t8
.LBB21_2:
	ret
.Lfunc_end21:
	.size	Draw_Object, .Lfunc_end21-Draw_Object
                                        # -- End function
	.globl	Draw_All_Nexts                  # -- Begin function Draw_All_Nexts
	.p2align	5
	.type	Draw_All_Nexts,@function
Draw_All_Nexts:                         # @Draw_All_Nexts
# %bb.0:
	beqz	$a0, .LBB22_4
# %bb.1:                                # %.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 256
	beqz	$fp, .LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %Draw_Object.exit
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CalcObject)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PrintObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 208
	pcaddu18i	$ra, %call36(Draw_Children)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 256
	bnez	$fp, .LBB22_2
.LBB22_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB22_4:                               # %.loopexit
	ret
.Lfunc_end22:
	.size	Draw_All_Nexts, .Lfunc_end22-Draw_All_Nexts
                                        # -- End function
	.globl	Draw_All_Prevs                  # -- Begin function Draw_All_Prevs
	.p2align	5
	.type	Draw_All_Prevs,@function
Draw_All_Prevs:                         # @Draw_All_Prevs
# %bb.0:
	beqz	$a0, .LBB23_4
# %bb.1:                                # %.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 264
	beqz	$fp, .LBB23_3
	.p2align	4, , 16
.LBB23_2:                               # %Draw_Object.exit
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CalcObject)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PrintObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 208
	pcaddu18i	$ra, %call36(Draw_Children)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 264
	bnez	$fp, .LBB23_2
.LBB23_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB23_4:                               # %.loopexit
	ret
.Lfunc_end23:
	.size	Draw_All_Prevs, .Lfunc_end23-Draw_All_Prevs
                                        # -- End function
	.globl	Draw_All                        # -- Begin function Draw_All
	.p2align	5
	.type	Draw_All,@function
Draw_All:                               # @Draw_All
# %bb.0:
	beqz	$a0, .LBB24_6
# %bb.1:                                # %.preheader.i
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CalcObject)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 264
	beqz	$s0, .LBB24_4
	.p2align	4, , 16
.LBB24_2:                               # %Draw_Object.exit.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(CalcObject)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(PrintObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 208
	pcaddu18i	$ra, %call36(Draw_Children)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 264
	bnez	$s0, .LBB24_2
	b	.LBB24_4
	.p2align	4, , 16
.LBB24_3:                               # %Draw_Object.exit.i13
                                        #   in Loop: Header=BB24_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CalcObject)
	jirl	$ra, $ra, 0
.LBB24_4:                               # %Draw_Object.exit.i13
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(PrintObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 208
	pcaddu18i	$ra, %call36(Draw_Children)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 256
	bnez	$fp, .LBB24_3
# %bb.5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB24_6:                               # %.split
	ret
.Lfunc_end24:
	.size	Draw_All, .Lfunc_end24-Draw_All
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Point[%i] = (%.2f, %.2f, %.2f)"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" -> (%.2f, %.2f, %.2f)\n"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"PrintPoly3s[%i] = (%.2f, %.2f, %.2f)"
	.size	.L.str.2, 37

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"-> (%.2f, %.2f, %.2f)\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"PrintPoly4s[%i] = %.2f, %.2f, %.2f"
	.size	.L.str.4, 35

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Name: %s\n"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Scale    : (%.2f,%.2f,%.2f)\n"
	.size	.L.str.6, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Origin   : (%.2f,%.2f,%.2f)\n"
	.size	.L.str.7, 29

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Rotation : (%.2f,%.2f,%.2f)\n"
	.size	.L.str.8, 29

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Color    : (%.2f,%.2f,%.2f)\n"
	.size	.L.str.9, 29

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Cannot Translate NULL-object\n"
	.size	.L.str.13, 30

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Cannot Rotate NULL-object\n"
	.size	.L.str.14, 27

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Cannot Scale NULL-object\n"
	.size	.L.str.15, 26

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Style     : FULL"
	.size	.Lstr, 17

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Style     : HALF"
	.size	.Lstr.1, 17

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Style     : NONE"
	.size	.Lstr.2, 17

	.section	".note.GNU-stack","",@progbits
	.addrsig
