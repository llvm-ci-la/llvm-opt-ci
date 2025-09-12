	.file	"btWheelInfo.cpp"
	.text
	.globl	_ZNK11btWheelInfo23getSuspensionRestLengthEv # -- Begin function _ZNK11btWheelInfo23getSuspensionRestLengthEv
	.p2align	5
	.type	_ZNK11btWheelInfo23getSuspensionRestLengthEv,@function
_ZNK11btWheelInfo23getSuspensionRestLengthEv: # @_ZNK11btWheelInfo23getSuspensionRestLengthEv
# %bb.0:
	fld.s	$fa0, $a0, 208
	ret
.Lfunc_end0:
	.size	_ZNK11btWheelInfo23getSuspensionRestLengthEv, .Lfunc_end0-_ZNK11btWheelInfo23getSuspensionRestLengthEv
                                        # -- End function
	.globl	_ZN11btWheelInfo11updateWheelERK11btRigidBodyRNS_11RaycastInfoE # -- Begin function _ZN11btWheelInfo11updateWheelERK11btRigidBodyRNS_11RaycastInfoE
	.p2align	5
	.type	_ZN11btWheelInfo11updateWheelERK11btRigidBodyRNS_11RaycastInfoE,@function
_ZN11btWheelInfo11updateWheelERK11btRigidBodyRNS_11RaycastInfoE: # @_ZN11btWheelInfo11updateWheelERK11btRigidBodyRNS_11RaycastInfoE
# %bb.0:
	ld.bu	$a2, $a0, 84
	beqz	$a2, .LBB1_3
# %bb.1:
	fld.s	$fa0, $a0, 0
	fld.s	$fa3, $a0, 52
	fld.s	$fa1, $a0, 4
	fld.s	$fa4, $a0, 56
	fld.s	$fa2, $a0, 8
	fld.s	$fa5, $a0, 60
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fa3, $fa0, $fa3, $fa4
	fmadd.s	$fa3, $fa2, $fa5, $fa3
	lu12i.w	$a2, -271156
	ori	$a2, $a2, 3277
	lu32i.d	$a2, 0
	movgr2fr.w	$fa4, $a2
	fcmp.cult.s	$fcc0, $fa3, $fa4
	bceqz	$fcc0, .LBB1_4
# %bb.2:
	fld.s	$fa4, $a0, 20
	fld.s	$fa5, $a1, 60
	fld.s	$fa6, $a0, 16
	fld.s	$fa7, $a1, 56
	fld.s	$ft0, $a1, 344
	fld.s	$ft1, $a1, 348
	fsub.s	$fa4, $fa4, $fa5
	fsub.s	$fa5, $fa6, $fa7
	fneg.s	$fa6, $fa5
	fmul.s	$fa6, $ft1, $fa6
	fld.s	$fa7, $a1, 336
	fld.s	$ft2, $a0, 24
	fld.s	$ft3, $a1, 64
	fmadd.s	$fa6, $ft0, $fa4, $fa6
	fadd.s	$fa6, $fa7, $fa6
	fld.s	$fa7, $a1, 352
	fsub.s	$ft2, $ft2, $ft3
	fld.s	$ft3, $a1, 328
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa7, $fa4
	fmadd.s	$fa4, $ft1, $ft2, $fa4
	fadd.s	$fa4, $ft3, $fa4
	fld.s	$ft1, $a1, 332
	fneg.s	$ft2, $ft2
	fmul.s	$ft0, $ft0, $ft2
	fmadd.s	$fa5, $fa7, $fa5, $ft0
	fadd.s	$fa5, $ft1, $fa5
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa0, $fa4, $fa1
	fmadd.s	$fa1, $fa2, $fa6, $fa0
	vldi	$vr0, -1040
	fdiv.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a0, 276
	fst.s	$fa0, $a0, 272
	ret
.LBB1_3:
	fld.s	$fa0, $a0, 208
	fst.s	$fa0, $a0, 32
	st.w	$zero, $a0, 276
	ld.wu	$a1, $a0, 52
	ld.w	$a2, $a0, 56
	ld.wu	$a3, $a0, 60
	lu12i.w	$a4, -524288
	lu32i.d	$a4, 0
	xor	$a1, $a1, $a4
	xor	$a2, $a2, $a4
	slli.d	$a2, $a2, 32
	or	$a1, $a2, $a1
	xor	$a2, $a3, $a4
	st.d	$a1, $a0, 0
	st.d	$a2, $a0, 8
	vldi	$vr0, -1168
	fst.s	$fa0, $a0, 272
	ret
.LBB1_4:
	st.w	$zero, $a0, 276
	vldi	$vr0, -1244
	fst.s	$fa0, $a0, 272
	ret
.Lfunc_end1:
	.size	_ZN11btWheelInfo11updateWheelERK11btRigidBodyRNS_11RaycastInfoE, .Lfunc_end1-_ZN11btWheelInfo11updateWheelERK11btRigidBodyRNS_11RaycastInfoE
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
