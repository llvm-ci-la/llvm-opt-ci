	.file	"is.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function randlc
.LCPI0_0:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
.LCPI0_1:
	.dword	0x4160000000000000              # double 8388608
.LCPI0_2:
	.dword	0x3d10000000000000              # double 1.4210854715202004E-14
.LCPI0_3:
	.dword	0x42d0000000000000              # double 70368744177664
	.text
	.globl	randlc
	.p2align	5
	.type	randlc,@function
randlc:                                 # @randlc
# %bb.0:
	pcalau12i	$a2, %pc_hi20(randlc.KS)
	ld.bu	$a3, $a2, %pc_lo12(randlc.KS)
	beqz	$a3, .LBB0_2
# %bb.1:                                # %._crit_edge
	pcalau12i	$a2, %pc_hi20(randlc.R23)
	fld.d	$fa3, $a2, %pc_lo12(randlc.R23)
	pcalau12i	$a2, %pc_hi20(randlc.T23)
	fld.d	$fa1, $a2, %pc_lo12(randlc.T23)
	pcalau12i	$a2, %pc_hi20(randlc.R46)
	fld.d	$fa0, $a2, %pc_lo12(randlc.R46)
	pcalau12i	$a2, %pc_hi20(randlc.T46)
	fld.d	$fa2, $a2, %pc_lo12(randlc.T46)
	b	.LBB0_3
.LBB0_2:                                # %.preheader
	pcalau12i	$a3, %pc_hi20(randlc.R23)
	lu52i.d	$a4, $zero, 1000
	st.d	$a4, $a3, %pc_lo12(randlc.R23)
	pcalau12i	$a3, %pc_hi20(randlc.T23)
	lu52i.d	$a4, $zero, 1046
	st.d	$a4, $a3, %pc_lo12(randlc.T23)
	pcalau12i	$a3, %pc_hi20(randlc.R46)
	lu52i.d	$a4, $zero, 977
	st.d	$a4, $a3, %pc_lo12(randlc.R46)
	pcalau12i	$a3, %pc_hi20(randlc.T46)
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa3, $a4, %pc_lo12(.LCPI0_0)
	pcalau12i	$a4, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI0_1)
	pcalau12i	$a4, %pc_hi20(.LCPI0_2)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI0_2)
	pcalau12i	$a4, %pc_hi20(.LCPI0_3)
	fld.d	$fa2, $a4, %pc_lo12(.LCPI0_3)
	lu52i.d	$a4, $zero, 1069
	st.d	$a4, $a3, %pc_lo12(randlc.T46)
	ori	$a3, $zero, 1
	st.b	$a3, $a2, %pc_lo12(randlc.KS)
.LBB0_3:
	fld.d	$fa4, $a1, 0
	fmul.d	$fa5, $fa3, $fa4
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$a1, $fa5
	movgr2fr.w	$fa5, $a1
	fld.d	$fa6, $a0, 0
	ffint.d.w	$fa5, $fa5
	fneg.d	$fa7, $fa1
	fmadd.d	$fa4, $fa7, $fa5, $fa4
	fmul.d	$ft0, $fa3, $fa6
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$a1, $ft0
	movgr2fr.w	$ft0, $a1
	ffint.d.w	$ft0, $ft0
	fmadd.d	$fa6, $fa7, $ft0, $fa6
	fmul.d	$ft0, $fa4, $ft0
	fmadd.d	$fa5, $fa5, $fa6, $ft0
	fmul.d	$fa3, $fa3, $fa5
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a1, $fa3
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa3, $fa7, $fa3, $fa5
	fmul.d	$fa4, $fa4, $fa6
	fmadd.d	$fa1, $fa1, $fa3, $fa4
	fmul.d	$fa3, $fa0, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a1, $fa3
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa1, $a0, 0
	ret
.Lfunc_end0:
	.size	randlc, .Lfunc_end0-randlc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function create_seq
.LCPI1_0:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
.LCPI1_1:
	.dword	0x4160000000000000              # double 8388608
.LCPI1_2:
	.dword	0x3d10000000000000              # double 1.4210854715202004E-14
.LCPI1_3:
	.dword	0x42d0000000000000              # double 70368744177664
.LCPI1_4:
	.dword	0x4120000000000000              # double 524288
	.text
	.globl	create_seq
	.p2align	5
	.type	create_seq,@function
create_seq:                             # @create_seq
# %bb.0:                                # %.peel.begin
	pcalau12i	$a0, %pc_hi20(randlc.KS)
	ld.bu	$a5, $a0, %pc_lo12(randlc.KS)
	pcalau12i	$a4, %pc_hi20(randlc.R23)
	pcalau12i	$a3, %pc_hi20(randlc.T23)
	pcalau12i	$a2, %pc_hi20(randlc.R46)
	pcalau12i	$a1, %pc_hi20(randlc.T46)
	beqz	$a5, .LBB1_2
# %bb.1:
	fld.d	$fa2, $a4, %pc_lo12(randlc.R23)
	fld.d	$fa3, $a3, %pc_lo12(randlc.T23)
	fld.d	$fa4, $a2, %pc_lo12(randlc.R46)
	fld.d	$fa7, $a1, %pc_lo12(randlc.T46)
	b	.LBB1_3
.LBB1_2:                                # %.preheader.i.peel
	lu52i.d	$a5, $zero, 1000
	st.d	$a5, $a4, %pc_lo12(randlc.R23)
	lu52i.d	$a4, $zero, 1046
	st.d	$a4, $a3, %pc_lo12(randlc.T23)
	lu52i.d	$a3, $zero, 977
	st.d	$a3, $a2, %pc_lo12(randlc.R46)
	lu52i.d	$a2, $zero, 1069
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI1_0)
	pcalau12i	$a3, %pc_hi20(.LCPI1_1)
	fld.d	$fa3, $a3, %pc_lo12(.LCPI1_1)
	pcalau12i	$a3, %pc_hi20(.LCPI1_2)
	fld.d	$fa4, $a3, %pc_lo12(.LCPI1_2)
	pcalau12i	$a3, %pc_hi20(.LCPI1_3)
	fld.d	$fa7, $a3, %pc_lo12(.LCPI1_3)
	st.d	$a2, $a1, %pc_lo12(randlc.T46)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(randlc.KS)
.LBB1_3:                                # %.peel.next
	fmul.d	$fa5, $fa1, $fa2
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$a0, $fa5
	movgr2fr.w	$fa5, $a0
	ffint.d.w	$fa5, $fa5
	fneg.d	$fa6, $fa3
	fmadd.d	$fa1, $fa6, $fa5, $fa1
	fneg.d	$fa7, $fa7
	fmul.d	$ft0, $fa0, $fa2
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$a0, $ft0
	movgr2fr.w	$ft0, $a0
	ffint.d.w	$ft0, $ft0
	fmadd.d	$fa0, $fa6, $ft0, $fa0
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa5, $fa0, $ft0
	fmul.d	$ft1, $fa2, $ft0
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a0, $ft1
	movgr2fr.w	$ft1, $a0
	ffint.d.w	$ft1, $ft1
	fmadd.d	$ft0, $fa6, $ft1, $ft0
	fmul.d	$fa0, $fa1, $fa0
	fmadd.d	$fa0, $fa3, $ft0, $fa0
	fmul.d	$ft0, $fa4, $fa0
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$a0, $ft0
	movgr2fr.w	$ft0, $a0
	ffint.d.w	$ft0, $ft0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	fmul.d	$ft0, $fa4, $fa0
	fmul.d	$ft1, $fa0, $fa2
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a0, $ft1
	movgr2fr.w	$ft1, $a0
	ffint.d.w	$ft1, $ft1
	fmadd.d	$fa0, $fa6, $ft1, $fa0
	fmul.d	$ft1, $fa1, $ft1
	fmadd.d	$ft1, $fa5, $fa0, $ft1
	fmul.d	$ft2, $fa2, $ft1
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a0, $ft2
	movgr2fr.w	$ft2, $a0
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fmul.d	$fa0, $fa1, $fa0
	fmadd.d	$fa0, $fa3, $ft1, $fa0
	fmul.d	$ft1, $fa4, $fa0
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a0, $ft1
	movgr2fr.w	$ft1, $a0
	ffint.d.w	$ft1, $ft1
	fmadd.d	$fa0, $fa7, $ft1, $fa0
	fmul.d	$ft1, $fa4, $fa0
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $fa0, $fa2
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a0, $ft1
	movgr2fr.w	$ft1, $a0
	ffint.d.w	$ft1, $ft1
	fmadd.d	$fa0, $fa6, $ft1, $fa0
	fmul.d	$ft1, $fa1, $ft1
	fmadd.d	$ft1, $fa5, $fa0, $ft1
	fmul.d	$ft2, $fa2, $ft1
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a0, $ft2
	movgr2fr.w	$ft2, $a0
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fmul.d	$fa0, $fa1, $fa0
	fmadd.d	$fa0, $fa3, $ft1, $fa0
	fmul.d	$ft1, $fa4, $fa0
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a0, $ft1
	movgr2fr.w	$ft1, $a0
	ffint.d.w	$ft1, $ft1
	fmadd.d	$fa0, $fa7, $ft1, $fa0
	fmul.d	$ft1, $fa4, $fa0
	fadd.d	$ft1, $ft0, $ft1
	fmul.d	$ft0, $fa0, $fa2
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$a0, $ft0
	movgr2fr.w	$ft0, $a0
	ffint.d.w	$ft0, $ft0
	fmadd.d	$fa0, $fa6, $ft0, $fa0
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa5, $fa0, $ft0
	fmul.d	$ft2, $fa2, $ft0
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a0, $ft2
	movgr2fr.w	$ft2, $a0
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft0, $fa6, $ft2, $ft0
	fmul.d	$fa0, $fa1, $fa0
	fmadd.d	$ft0, $fa3, $ft0, $fa0
	fmul.d	$fa0, $fa4, $ft0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$ft2, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_4)
	fmadd.d	$ft0, $fa7, $ft2, $ft0
	fmul.d	$ft2, $fa4, $ft0
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$ft1, $ft1, $fa0
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a0, $ft1
	pcalau12i	$a1, %pc_hi20(key_array)
	addi.d	$a1, $a1, %pc_lo12(key_array)
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	lu12i.w	$a1, 8191
	ori	$a1, $a1, 4095
	.p2align	4, , 16
.LBB1_4:                                # %randlc.exit30
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$ft1, $ft0, $fa2
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a2, $ft1
	movgr2fr.w	$ft1, $a2
	ffint.d.w	$ft1, $ft1
	fmadd.d	$ft0, $fa6, $ft1, $ft0
	fmul.d	$ft1, $fa1, $ft1
	fmadd.d	$ft1, $fa5, $ft0, $ft1
	fmul.d	$ft2, $fa2, $ft1
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a2, $ft2
	movgr2fr.w	$ft2, $a2
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft1, $fa6, $ft2, $ft1
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa3, $ft1, $ft0
	fmul.d	$ft1, $fa4, $ft0
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a2, $ft1
	movgr2fr.w	$ft1, $a2
	ffint.d.w	$ft1, $ft1
	fmadd.d	$ft0, $fa7, $ft1, $ft0
	fmul.d	$ft1, $fa4, $ft0
	fmul.d	$ft2, $ft0, $fa2
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a2, $ft2
	movgr2fr.w	$ft2, $a2
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft0, $fa6, $ft2, $ft0
	fmul.d	$ft2, $fa1, $ft2
	fmadd.d	$ft2, $fa5, $ft0, $ft2
	fmul.d	$ft3, $fa2, $ft2
	ftintrz.w.d	$ft3, $ft3
	movfr2gr.s	$a2, $ft3
	movgr2fr.w	$ft3, $a2
	ffint.d.w	$ft3, $ft3
	fmadd.d	$ft2, $fa6, $ft3, $ft2
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa3, $ft2, $ft0
	fmul.d	$ft2, $fa4, $ft0
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a2, $ft2
	movgr2fr.w	$ft2, $a2
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft0, $fa7, $ft2, $ft0
	fmul.d	$ft2, $fa4, $ft0
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$ft2, $ft0, $fa2
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a2, $ft2
	movgr2fr.w	$ft2, $a2
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft0, $fa6, $ft2, $ft0
	fmul.d	$ft2, $fa1, $ft2
	fmadd.d	$ft2, $fa5, $ft0, $ft2
	fmul.d	$ft3, $fa2, $ft2
	ftintrz.w.d	$ft3, $ft3
	movfr2gr.s	$a2, $ft3
	movgr2fr.w	$ft3, $a2
	ffint.d.w	$ft3, $ft3
	fmadd.d	$ft2, $fa6, $ft3, $ft2
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa3, $ft2, $ft0
	fmul.d	$ft2, $fa4, $ft0
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a2, $ft2
	movgr2fr.w	$ft2, $a2
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft0, $fa7, $ft2, $ft0
	fmul.d	$ft2, $fa4, $ft0
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$ft2, $ft0, $fa2
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a2, $ft2
	movgr2fr.w	$ft2, $a2
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft0, $fa6, $ft2, $ft0
	fmul.d	$ft2, $fa1, $ft2
	fmadd.d	$ft2, $fa5, $ft0, $ft2
	fmul.d	$ft3, $fa2, $ft2
	ftintrz.w.d	$ft3, $ft3
	movfr2gr.s	$a2, $ft3
	movgr2fr.w	$ft3, $a2
	ffint.d.w	$ft3, $ft3
	fmadd.d	$ft2, $fa6, $ft3, $ft2
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa3, $ft2, $ft0
	fmul.d	$ft2, $fa4, $ft0
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$a2, $ft2
	movgr2fr.w	$ft2, $a2
	ffint.d.w	$ft2, $ft2
	fmadd.d	$ft0, $fa7, $ft2, $ft0
	fmul.d	$ft2, $fa4, $ft0
	fadd.d	$ft1, $ft1, $ft2
	fmul.d	$ft1, $ft1, $fa0
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a2, $ft1
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB1_4
# %bb.5:                                # %.loopexit
	ret
.Lfunc_end1:
	.size	create_seq, .Lfunc_end1-create_seq
                                        # -- End function
	.globl	full_verify                     # -- Begin function full_verify
	.p2align	5
	.type	full_verify,@function
full_verify:                            # @full_verify
# %bb.0:
	pcalau12i	$a0, %pc_hi20(key_buff_ptr_global)
	ld.d	$a1, $a0, %pc_lo12(key_buff_ptr_global)
	pcalau12i	$a0, %pc_hi20(key_buff2)
	addi.d	$a2, $a0, %pc_lo12(key_buff2)
	lu12i.w	$a3, 8192
	pcalau12i	$a0, %pc_hi20(key_array)
	addi.d	$a0, $a0, %pc_lo12(key_array)
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a5, $a4, 2
	ldx.w	$a6, $a1, $a5
	addi.w	$a6, $a6, -1
	stx.w	$a6, $a1, $a5
	slli.d	$a5, $a6, 2
	stx.w	$a4, $a0, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB2_1
# %bb.2:                                # %vector.body.preheader
	addi.d	$a1, $a0, 20
	vrepli.b	$vr0, 0
	lu12i.w	$a2, 8191
	ori	$a2, $a2, 4088
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, -20
	vld	$vr3, $a1, -4
	vld	$vr4, $a1, -16
	vld	$vr5, $a1, 0
	vslt.w	$vr2, $vr4, $vr2
	vslt.w	$vr3, $vr5, $vr3
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_3
# %bb.4:                                # %.preheader
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	lu12i.w	$a1, 32767
	ori	$a2, $a1, 4064
	ldx.w	$a2, $a0, $a2
	ori	$a3, $a1, 4068
	ldx.w	$a3, $a0, $a3
	ori	$a4, $a1, 4072
	ldx.w	$a4, $a0, $a4
	vpickve2gr.d	$a5, $vr0, 0
	slt	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	slt	$a3, $a4, $a3
	ori	$a5, $a1, 4076
	ldx.w	$a5, $a0, $a5
	ori	$a6, $a1, 4080
	ldx.w	$a6, $a0, $a6
	add.d	$a2, $a2, $a3
	slt	$a3, $a5, $a4
	add.d	$a2, $a2, $a3
	slt	$a3, $a6, $a5
	add.d	$a2, $a2, $a3
	ori	$a3, $a1, 4084
	ldx.w	$a3, $a0, $a3
	ori	$a4, $a1, 4088
	ldx.w	$a4, $a0, $a4
	ori	$a1, $a1, 4092
	ldx.w	$a0, $a0, $a1
	slt	$a1, $a3, $a6
	add.d	$a1, $a2, $a1
	slt	$a2, $a4, $a3
	add.d	$a1, $a1, $a2
	slt	$a0, $a0, $a4
	add.w	$a1, $a1, $a0
	beqz	$a1, .LBB2_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB2_6:
	pcalau12i	$a0, %pc_hi20(passed_verification)
	ld.w	$a1, $a0, %pc_lo12(passed_verification)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(passed_verification)
	ret
.Lfunc_end2:
	.size	full_verify, .Lfunc_end2-full_verify
                                        # -- End function
	.globl	c_print_results                 # -- Begin function c_print_results
	.p2align	5
	.type	c_print_results,@function
c_print_results:                        # @c_print_results
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $sp, 80
	move	$s0, $a7
	move	$s1, $a6
	move	$s2, $a5
	move	$s5, $a4
	move	$s4, $a3
	move	$s3, $a2
	move	$s6, $a1
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB3_3
.LBB3_2:
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a0, $a1, $a0
	mul.d	$a1, $a0, $s3
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_3:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slti	$a0, $s0, 0
	sltui	$a1, $s0, 1
	pcalau12i	$a2, %pc_hi20(.Lstr.1)
	addi.d	$a2, $a2, %pc_lo12(.Lstr.1)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(.Lstr)
	addi.d	$a3, $a3, %pc_lo12(.Lstr)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.Lstr.2)
	addi.d	$a2, $a2, %pc_lo12(.Lstr.2)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
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
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end3:
	.size	c_print_results, .Lfunc_end3-c_print_results
                                        # -- End function
	.globl	rank                            # -- Begin function rank
	.p2align	5
	.type	rank,@function
rank:                                   # @rank
# %bb.0:                                # %.preheader73.preheader
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(key_array)
	addi.d	$s4, $a0, %pc_lo12(key_array)
	alsl.d	$a0, $fp, $s4, 2
	slli.d	$a1, $fp, 2
	stx.w	$fp, $s4, $a1
	lu12i.w	$a1, 512
	sub.d	$a1, $a1, $fp
	st.w	$a1, $a0, 40
	pcalau12i	$a0, %pc_hi20(test_index_array)
	addi.d	$a0, $a0, %pc_lo12(test_index_array)
	ld.w	$a1, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$s3, $s4, $a1
	pcalau12i	$a1, %pc_hi20(partial_verify_vals)
	addi.d	$s1, $a1, %pc_lo12(partial_verify_vals)
	ld.w	$a1, $a0, 8
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s4, $a1
	ld.w	$a2, $a0, 4
	st.w	$a1, $s1, 8
	ld.w	$a1, $a0, 12
	slli.d	$a2, $a2, 2
	ld.w	$a0, $a0, 16
	ldx.w	$s2, $s4, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s4, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	st.w	$s3, $s1, 0
	st.w	$s2, $s1, 4
	st.w	$a1, $s1, 12
	st.w	$a0, $s1, 16
	pcalau12i	$a0, %pc_hi20(bucket_size)
	addi.d	$s0, $a0, %pc_lo12(bucket_size)
	lu12i.w	$a2, 1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 8192
	.p2align	4, , 16
.LBB4_1:                                # %.preheader72
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s4, 0
	srai.d	$a1, $a1, 11
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $s0, $a1
	addi.d	$a2, $a2, 1
	stx.w	$a2, $s0, $a1
	addi.d	$a0, $a0, -1
	addi.d	$s4, $s4, 4
	bnez	$a0, .LBB4_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(bucket_ptrs)
	addi.d	$a0, $a0, %pc_lo12(bucket_ptrs)
	move	$a1, $zero
	st.w	$zero, $a0, 0
	lu12i.w	$a2, -1
	ori	$a2, $a2, 4
	ori	$a3, $zero, 4092
	.p2align	4, , 16
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s0, $a2
	ldx.w	$a4, $a4, $a3
	add.d	$a1, $a4, $a1
	addi.d	$a2, $a2, 4
	add.d	$a4, $a2, $a0
	stptr.w	$a1, $a4, 4092
	bnez	$a2, .LBB4_3
# %bb.4:                                # %.preheader71.preheader
	pcalau12i	$a1, %pc_hi20(key_array)
	addi.d	$a1, $a1, %pc_lo12(key_array)
	lu12i.w	$a2, 8192
	pcalau12i	$a3, %pc_hi20(key_buff2)
	addi.d	$s4, $a3, %pc_lo12(key_buff2)
	.p2align	4, , 16
.LBB4_5:                                # %.preheader71
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	srai.d	$a4, $a3, 11
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a0, $a4
	addi.d	$a6, $a5, 1
	stx.w	$a6, $a0, $a4
	slli.d	$a4, $a5, 2
	stx.w	$a3, $s4, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_5
# %bb.6:                                # %.preheader70.preheader
	pcalau12i	$a0, %pc_hi20(key_buff1)
	addi.d	$s0, $a0, %pc_lo12(key_buff1)
	lu12i.w	$a2, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 8192
	.p2align	4, , 16
.LBB4_7:                                # %.preheader69
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s4, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $s0, $a1
	addi.d	$a2, $a2, 1
	stx.w	$a2, $s0, $a1
	addi.d	$a0, $a0, -1
	addi.d	$s4, $s4, 4
	bnez	$a0, .LBB4_7
# %bb.8:                                # %.preheader68.preheader
	ld.w	$a0, $s0, 0
	addi.d	$a1, $s0, 4
	lu12i.w	$a2, 511
	ori	$a2, $a2, 4095
	.p2align	4, , 16
.LBB4_9:                                # %.preheader68
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	add.d	$a0, $a3, $a0
	st.w	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_9
# %bb.10:                               # %.preheader.preheader
	addi.w	$a0, $s3, -1
	lu12i.w	$a1, 8191
	ori	$s5, $a1, 4094
	pcalau12i	$a1, %pc_hi20(test_rank_array)
	addi.d	$s4, $a1, %pc_lo12(test_rank_array)
	bgeu	$s5, $a0, .LBB4_18
# %bb.11:                               # %.critedge
	addi.w	$a0, $s2, -1
	bgeu	$s5, $a0, .LBB4_21
.LBB4_12:                               # %.critedge.1
	ld.w	$a0, $s1, 8
	addi.w	$a1, $a0, -1
	bgeu	$s5, $a1, .LBB4_24
.LBB4_13:                               # %.critedge.2
	ld.w	$a0, $s1, 12
	addi.w	$a1, $a0, -1
	bgeu	$s5, $a1, .LBB4_27
.LBB4_14:                               # %.critedge.3
	ld.w	$a0, $s1, 16
	addi.w	$a1, $a0, -1
	bgeu	$s5, $a1, .LBB4_30
.LBB4_15:                               # %.critedge.4
	ori	$a0, $zero, 10
	bne	$fp, $a0, .LBB4_17
.LBB4_16:
	pcalau12i	$a0, %pc_hi20(key_buff_ptr_global)
	st.d	$s0, $a0, %pc_lo12(key_buff_ptr_global)
.LBB4_17:
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
.LBB4_18:
	alsl.d	$a0, $s3, $s0, 2
	ld.w	$a1, $s4, 0
	ld.w	$a0, $a0, -4
	sub.w	$a1, $a1, $fp
	bne	$a0, $a1, .LBB4_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(passed_verification)
	ld.w	$a1, $a0, %pc_lo12(passed_verification)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(passed_verification)
	addi.w	$a0, $s2, -1
	bltu	$s5, $a0, .LBB4_12
	b	.LBB4_21
.LBB4_20:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s1, 4
	addi.w	$a0, $s2, -1
	bltu	$s5, $a0, .LBB4_12
.LBB4_21:
	alsl.d	$a0, $s2, $s0, 2
	ld.w	$a1, $s4, 4
	ld.w	$a0, $a0, -4
	add.w	$a1, $a1, $fp
	bne	$a0, $a1, .LBB4_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(passed_verification)
	ld.w	$a1, $a0, %pc_lo12(passed_verification)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(passed_verification)
	ld.w	$a0, $s1, 8
	addi.w	$a1, $a0, -1
	bltu	$s5, $a1, .LBB4_13
	b	.LBB4_24
.LBB4_23:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	addi.w	$a1, $a0, -1
	bltu	$s5, $a1, .LBB4_13
.LBB4_24:
	alsl.d	$a0, $a0, $s0, 2
	ld.w	$a1, $s4, 8
	ld.w	$a0, $a0, -4
	add.w	$a1, $a1, $fp
	bne	$a0, $a1, .LBB4_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(passed_verification)
	ld.w	$a1, $a0, %pc_lo12(passed_verification)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(passed_verification)
	ld.w	$a0, $s1, 12
	addi.w	$a1, $a0, -1
	bltu	$s5, $a1, .LBB4_14
	b	.LBB4_27
.LBB4_26:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 12
	addi.w	$a1, $a0, -1
	bltu	$s5, $a1, .LBB4_14
.LBB4_27:
	alsl.d	$a0, $a0, $s0, 2
	ld.w	$a1, $s4, 12
	ld.w	$a0, $a0, -4
	sub.w	$a1, $a1, $fp
	bne	$a0, $a1, .LBB4_29
# %bb.28:
	pcalau12i	$a0, %pc_hi20(passed_verification)
	ld.w	$a1, $a0, %pc_lo12(passed_verification)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(passed_verification)
	ld.w	$a0, $s1, 16
	addi.w	$a1, $a0, -1
	bltu	$s5, $a1, .LBB4_15
	b	.LBB4_30
.LBB4_29:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 16
	addi.w	$a1, $a0, -1
	bltu	$s5, $a1, .LBB4_15
.LBB4_30:
	alsl.d	$a0, $a0, $s0, 2
	ld.w	$a1, $s4, 16
	ld.w	$a0, $a0, -4
	add.w	$a1, $a1, $fp
	bne	$a0, $a1, .LBB4_32
# %bb.31:
	pcalau12i	$a0, %pc_hi20(passed_verification)
	ld.w	$a1, $a0, %pc_lo12(passed_verification)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(passed_verification)
	ori	$a0, $zero, 10
	beq	$fp, $a0, .LBB4_16
	b	.LBB4_17
.LBB4_32:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	beq	$fp, $a0, .LBB4_16
	b	.LBB4_17
.Lfunc_end4:
	.size	rank, .Lfunc_end4-rank
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI5_0:
	.dword	0x41b2b9b0a1000000              # double 314159265
.LCPI5_1:
	.dword	0x41d2309ce5400000              # double 1220703125
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(B_test_index_array)
	addi.d	$a0, $a0, %pc_lo12(B_test_index_array)
	ld.w	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(test_index_array)
	addi.d	$a2, $a2, %pc_lo12(test_index_array)
	vld	$vr0, $a0, 0
	st.w	$a1, $a2, 16
	vst	$vr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(B_test_rank_array)
	addi.d	$a0, $a0, %pc_lo12(B_test_rank_array)
	vld	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(test_rank_array)
	addi.d	$a1, $a1, %pc_lo12(test_rank_array)
	ld.w	$a0, $a0, 16
	vst	$vr0, $a1, 0
	st.w	$a0, $a1, 16
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	lu12i.w	$fp, 8192
	ori	$a2, $zero, 66
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI5_1)
	pcaddu18i	$ra, %call36(create_seq)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(passed_verification)
	st.w	$zero, $s1, %pc_lo12(passed_verification)
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(rank)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(key_buff_ptr_global)
	ld.d	$a1, $a0, %pc_lo12(key_buff_ptr_global)
	pcalau12i	$a0, %pc_hi20(key_buff2)
	addi.d	$a2, $a0, %pc_lo12(key_buff2)
	pcalau12i	$a0, %pc_hi20(key_array)
	addi.d	$a0, $a0, %pc_lo12(key_array)
	.p2align	4, , 16
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	slli.d	$a4, $a3, 2
	ldx.w	$a5, $a1, $a4
	addi.w	$a5, $a5, -1
	stx.w	$a5, $a1, $a4
	slli.d	$a4, $a5, 2
	stx.w	$a3, $a0, $a4
	addi.d	$fp, $fp, -1
	addi.d	$a2, $a2, 4
	bnez	$fp, .LBB5_1
# %bb.2:                                # %vector.body.preheader
	addi.d	$a1, $a0, 20
	vrepli.b	$vr0, 0
	lu12i.w	$a2, 8191
	ori	$a2, $a2, 4088
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB5_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, -20
	vld	$vr3, $a1, -4
	vld	$vr4, $a1, -16
	vld	$vr5, $a1, 0
	vslt.w	$vr2, $vr4, $vr2
	vslt.w	$vr3, $vr5, $vr3
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_3
# %bb.4:                                # %.preheader.i
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	lu12i.w	$a1, 32767
	ori	$a2, $a1, 4064
	ldx.w	$a2, $a0, $a2
	ori	$a3, $a1, 4068
	ldx.w	$a3, $a0, $a3
	ori	$a4, $a1, 4072
	ldx.w	$a4, $a0, $a4
	vpickve2gr.d	$a5, $vr0, 0
	slt	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	slt	$a3, $a4, $a3
	ori	$a5, $a1, 4076
	ldx.w	$a5, $a0, $a5
	ori	$a6, $a1, 4080
	ldx.w	$a6, $a0, $a6
	add.d	$a2, $a2, $a3
	slt	$a3, $a5, $a4
	add.d	$a2, $a2, $a3
	slt	$a3, $a6, $a5
	add.d	$a2, $a2, $a3
	ori	$a3, $a1, 4084
	ldx.w	$a3, $a0, $a3
	ori	$a4, $a1, 4088
	ldx.w	$a4, $a0, $a4
	ori	$a1, $a1, 4092
	ldx.w	$a0, $a0, $a1
	slt	$a1, $a3, $a6
	add.d	$a1, $a2, $a1
	slt	$a2, $a4, $a3
	add.d	$a1, $a1, $a2
	slt	$a0, $a0, $a4
	add.w	$a1, $a1, $a0
	beqz	$a1, .LBB5_7
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(passed_verification)
	ori	$a1, $zero, 51
	bne	$a0, $a1, .LBB5_8
.LBB5_6:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$fp, $a0, %pc_lo12(.Lstr.1)
	b	.LBB5_9
.LBB5_7:
	ld.w	$a0, $s1, %pc_lo12(passed_verification)
	addi.w	$a0, $a0, 1
	st.w	$a0, $s1, %pc_lo12(passed_verification)
	ori	$a1, $zero, 51
	beq	$a0, $a1, .LBB5_6
.LBB5_8:
	st.w	$zero, $s1, %pc_lo12(passed_verification)
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$fp, $a0, %pc_lo12(.Lstr)
.LBB5_9:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 66
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	lu12i.w	$a1, 8192
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
                                        # -- End function
	.type	S_test_index_array,@object      # @S_test_index_array
	.data
	.globl	S_test_index_array
	.p2align	2, 0x0
S_test_index_array:
	.word	48427                           # 0xbd2b
	.word	17148                           # 0x42fc
	.word	23627                           # 0x5c4b
	.word	62548                           # 0xf454
	.word	4431                            # 0x114f
	.size	S_test_index_array, 20

	.type	S_test_rank_array,@object       # @S_test_rank_array
	.globl	S_test_rank_array
	.p2align	2, 0x0
S_test_rank_array:
	.word	0                               # 0x0
	.word	18                              # 0x12
	.word	346                             # 0x15a
	.word	64917                           # 0xfd95
	.word	65463                           # 0xffb7
	.size	S_test_rank_array, 20

	.type	W_test_index_array,@object      # @W_test_index_array
	.globl	W_test_index_array
	.p2align	2, 0x0
W_test_index_array:
	.word	357773                          # 0x5758d
	.word	934767                          # 0xe436f
	.word	875723                          # 0xd5ccb
	.word	898999                          # 0xdb7b7
	.word	404505                          # 0x62c19
	.size	W_test_index_array, 20

	.type	W_test_rank_array,@object       # @W_test_rank_array
	.globl	W_test_rank_array
	.p2align	2, 0x0
W_test_rank_array:
	.word	1249                            # 0x4e1
	.word	11698                           # 0x2db2
	.word	1039987                         # 0xfde73
	.word	1043896                         # 0xfedb8
	.word	1048018                         # 0xffdd2
	.size	W_test_rank_array, 20

	.type	A_test_index_array,@object      # @A_test_index_array
	.globl	A_test_index_array
	.p2align	2, 0x0
A_test_index_array:
	.word	2112377                         # 0x203b79
	.word	662041                          # 0xa1a19
	.word	5336171                         # 0x516c6b
	.word	3642833                         # 0x3795d1
	.word	4250760                         # 0x40dc88
	.size	A_test_index_array, 20

	.type	A_test_rank_array,@object       # @A_test_rank_array
	.globl	A_test_rank_array
	.p2align	2, 0x0
A_test_rank_array:
	.word	104                             # 0x68
	.word	17523                           # 0x4473
	.word	123928                          # 0x1e418
	.word	8288932                         # 0x7e7aa4
	.word	8388264                         # 0x7ffea8
	.size	A_test_rank_array, 20

	.type	B_test_index_array,@object      # @B_test_index_array
	.globl	B_test_index_array
	.p2align	3, 0x0
B_test_index_array:
	.word	41869                           # 0xa38d
	.word	812306                          # 0xc6512
	.word	5102857                         # 0x4ddd09
	.word	18232239                        # 0x11633af
	.word	26860214                        # 0x199dab6
	.size	B_test_index_array, 20

	.type	B_test_rank_array,@object       # @B_test_rank_array
	.globl	B_test_rank_array
	.p2align	3, 0x0
B_test_rank_array:
	.word	33422937                        # 0x1fdfe59
	.word	10244                           # 0x2804
	.word	59149                           # 0xe70d
	.word	33135281                        # 0x1f99ab1
	.word	99                              # 0x63
	.size	B_test_rank_array, 20

	.type	C_test_index_array,@object      # @C_test_index_array
	.globl	C_test_index_array
	.p2align	2, 0x0
C_test_index_array:
	.word	44172927                        # 0x2a2067f
	.word	72999161                        # 0x459e0f9
	.word	74326391                        # 0x46e2177
	.word	129606274                       # 0x7b9a282
	.word	21736814                        # 0x14bad6e
	.size	C_test_index_array, 20

	.type	C_test_rank_array,@object       # @C_test_rank_array
	.globl	C_test_rank_array
	.p2align	2, 0x0
C_test_rank_array:
	.word	61147                           # 0xeedb
	.word	882988                          # 0xd792c
	.word	266290                          # 0x41032
	.word	133997595                       # 0x7fca41b
	.word	133525895                       # 0x7f57187
	.size	C_test_rank_array, 20

	.type	D_test_index_array,@object      # @D_test_index_array
	.globl	D_test_index_array
	.p2align	2, 0x0
D_test_index_array:
	.word	1317351170                      # 0x4e852f02
	.word	995930646                       # 0x3b5cb216
	.word	1157283250                      # 0x44fabdb2
	.word	1503301535                      # 0x599a8f9f
	.word	1453734525                      # 0x56a63a7d
	.size	D_test_index_array, 20

	.type	D_test_rank_array,@object       # @D_test_rank_array
	.globl	D_test_rank_array
	.p2align	2, 0x0
D_test_rank_array:
	.word	1                               # 0x1
	.word	36538729                        # 0x22d8969
	.word	1978098519                      # 0x75e76357
	.word	2145192618                      # 0x7fdd0aaa
	.word	2147425337                      # 0x7fff1c39
	.size	D_test_rank_array, 20

	.type	randlc.KS,@object               # @randlc.KS
	.local	randlc.KS
	.comm	randlc.KS,1,4
	.type	randlc.R23,@object              # @randlc.R23
	.local	randlc.R23
	.comm	randlc.R23,8,8
	.type	randlc.R46,@object              # @randlc.R46
	.local	randlc.R46
	.comm	randlc.R46,8,8
	.type	randlc.T23,@object              # @randlc.T23
	.local	randlc.T23
	.comm	randlc.T23,8,8
	.type	randlc.T46,@object              # @randlc.T46
	.local	randlc.T46
	.comm	randlc.T46,8,8
	.type	key_array,@object               # @key_array
	.bss
	.globl	key_array
	.p2align	2, 0x0
key_array:
	.space	134217728
	.size	key_array, 134217728

	.type	key_buff2,@object               # @key_buff2
	.globl	key_buff2
	.p2align	2, 0x0
key_buff2:
	.space	134217728
	.size	key_buff2, 134217728

	.type	key_buff_ptr_global,@object     # @key_buff_ptr_global
	.globl	key_buff_ptr_global
	.p2align	3, 0x0
key_buff_ptr_global:
	.dword	0
	.size	key_buff_ptr_global, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Full_verify: number of keys out of sort: %ld\n"
	.size	.L.str, 46

	.type	passed_verification,@object     # @passed_verification
	.bss
	.globl	passed_verification
	.p2align	2, 0x0
passed_verification:
	.word	0                               # 0x0
	.size	passed_verification, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\n\n %s Benchmark Completed\n"
	.size	.L.str.1, 27

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" Class           =                        %c\n"
	.size	.L.str.2, 46

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" Size            =             %12ld\n"
	.size	.L.str.3, 38

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" Size            =             %4dx%4dx%4d\n"
	.size	.L.str.4, 44

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" Iterations      =             %12d\n"
	.size	.L.str.5, 37

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" Operation type  = %24s\n"
	.size	.L.str.6, 25

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" Version         =             %12s\n"
	.size	.L.str.10, 37

	.type	test_index_array,@object        # @test_index_array
	.bss
	.globl	test_index_array
	.p2align	3, 0x0
test_index_array:
	.space	20
	.size	test_index_array, 20

	.type	partial_verify_vals,@object     # @partial_verify_vals
	.globl	partial_verify_vals
	.p2align	2, 0x0
partial_verify_vals:
	.space	20
	.size	partial_verify_vals, 20

	.type	bucket_size,@object             # @bucket_size
	.globl	bucket_size
	.p2align	3, 0x0
bucket_size:
	.space	4096
	.size	bucket_size, 4096

	.type	bucket_ptrs,@object             # @bucket_ptrs
	.globl	bucket_ptrs
	.p2align	2, 0x0
bucket_ptrs:
	.space	4096
	.size	bucket_ptrs, 4096

	.type	key_buff1,@object               # @key_buff1
	.globl	key_buff1
	.p2align	3, 0x0
key_buff1:
	.space	8388608
	.size	key_buff1, 8388608

	.type	test_rank_array,@object         # @test_rank_array
	.globl	test_rank_array
	.p2align	3, 0x0
test_rank_array:
	.space	20
	.size	test_rank_array, 20

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Failed partial verification: iteration %d, test key %d\n"
	.size	.L.str.15, 56

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" Size:  %ld  (class %c)\n"
	.size	.L.str.17, 25

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	" Iterations:   %d\n"
	.size	.L.str.18, 19

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"        %d\n"
	.size	.L.str.20, 12

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"IS"
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"keys ranked"
	.size	.L.str.22, 12

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"3.3"
	.size	.L.str.23, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" Verification    =             UNSUCCESSFUL"
	.size	.Lstr, 44

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	" Verification    =               SUCCESSFUL"
	.size	.Lstr.1, 44

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	" Verification    =            NOT PERFORMED"
	.size	.Lstr.2, 44

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"\n"
	.size	.Lstr.3, 2

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	" Please send all errors/feedbacks to:\n"
	.size	.Lstr.4, 39

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	" NPB Development Team"
	.size	.Lstr.5, 22

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	" npb@nas.nasa.gov\n"
	.size	.Lstr.6, 19

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"\n\n NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\n"
	.size	.Lstr.7, 56

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"\n   iteration"
	.size	.Lstr.8, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym key_buff1
