	.file	"valid.c"
	.text
	.globl	validIndexKey                   # -- Begin function validIndexKey
	.p2align	5
	.type	validIndexKey,@function
validIndexKey:                          # @validIndexKey
# %bb.0:
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 16
	fcmp.cle.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_5
# %bb.1:
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a0, 20
	fcmp.cle.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_6
# %bb.2:
	fld.s	$fa0, $a0, 8
	fld.s	$fa1, $a0, 24
	fcmp.cle.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_7
# %bb.3:
	fld.s	$fa0, $a0, 12
	fld.s	$fa1, $a0, 28
	fcmp.cult.s	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 1
	bcnez	$fcc0, .LBB0_9
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_8
.LBB0_5:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	b	.LBB0_8
.LBB0_6:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_8
.LBB0_7:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
.LBB0_8:                                # %.sink.split
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(validIndexKey.name)
	addi.d	$a0, $a0, %pc_lo12(validIndexKey.name)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB0_9:
	ret
.Lfunc_end0:
	.size	validIndexKey, .Lfunc_end0-validIndexKey
                                        # -- End function
	.globl	validAttributes                 # -- Begin function validAttributes
	.p2align	5
	.type	validAttributes,@function
validAttributes:                        # @validAttributes
# %bb.0:
	move	$a2, $a0
	ori	$a0, $zero, 1
	beqz	$a2, .LBB1_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a3, $zero, 50
	ori	$a4, $zero, 7
	pcalau12i	$a5, %pc_hi20(.L.str.5)
	addi.d	$a5, $a5, %pc_lo12(.L.str.5)
	lu12i.w	$a6, -128737
	ori	$a6, $a6, 3901
	lu52i.d	$a6, $a6, 1150
	movgr2fr.d	$fa0, $a6
	pcalau12i	$a6, %pc_hi20(.L.str.6)
	addi.d	$a6, $a6, %pc_lo12(.L.str.6)
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a7, $a2, 8
	beqz	$a7, .LBB1_8
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a2, $a2, 16
	beqz	$a2, .LBB1_10
.LBB1_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a2, 0
	bltu	$a3, $a7, .LBB1_9
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	bltu	$a4, $a7, .LBB1_2
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	fld.s	$fa1, $a2, 8
	fabs.s	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB1_3
# %bb.7:
	move	$a1, $a5
	b	.LBB1_9
.LBB1_8:
	move	$a1, $a6
.LBB1_9:                                # %.loopexit.sink.split
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(validAttributes.name)
	addi.d	$a0, $a0, %pc_lo12(validAttributes.name)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB1_10:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB1_11:                               # %.loopexit
	ret
.Lfunc_end1:
	.size	validAttributes, .Lfunc_end1-validAttributes
                                        # -- End function
	.type	validIndexKey.name,@object      # @validIndexKey.name
	.data
validIndexKey.name:
	.asciz	"validIndexKey"
	.size	validIndexKey.name, 14

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Lower T > Upper T"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Lower X > Upper X"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Lower Y > Upper Y"
	.size	.L.str.2, 18

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Lower Z > Upper Z"
	.size	.L.str.3, 18

	.type	validAttributes.name,@object    # @validAttributes.name
	.data
validAttributes.name:
	.asciz	"validAttributes"
	.size	validAttributes.name, 16

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"invalid attribute code"
	.size	.L.str.4, 23

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"key value out-of-range"
	.size	.L.str.5, 23

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"non-key value set to NULL"
	.size	.L.str.6, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym validIndexKey.name
	.addrsig_sym validAttributes.name
