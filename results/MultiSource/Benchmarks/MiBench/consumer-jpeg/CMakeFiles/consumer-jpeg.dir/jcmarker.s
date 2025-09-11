	.file	"jcmarker.c"
	.text
	.globl	jinit_marker_writer             # -- Begin function jinit_marker_writer
	.p2align	5
	.type	jinit_marker_writer,@function
jinit_marker_writer:                    # @jinit_marker_writer
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 48
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 456
	pcalau12i	$a1, %pc_hi20(write_any_marker)
	addi.d	$a1, $a1, %pc_lo12(write_any_marker)
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(write_file_header)
	addi.d	$a1, $a1, %pc_lo12(write_file_header)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %pc_hi20(write_frame_header)
	addi.d	$a1, $a1, %pc_lo12(write_frame_header)
	st.d	$a1, $a0, 16
	pcalau12i	$a1, %pc_hi20(write_scan_header)
	addi.d	$a1, $a1, %pc_lo12(write_scan_header)
	st.d	$a1, $a0, 24
	pcalau12i	$a1, %pc_hi20(write_file_trailer)
	addi.d	$a1, $a1, %pc_lo12(write_file_trailer)
	st.d	$a1, $a0, 32
	pcalau12i	$a1, %pc_hi20(write_tables_only)
	addi.d	$a1, $a1, %pc_lo12(write_tables_only)
	st.d	$a1, $a0, 40
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	jinit_marker_writer, .Lfunc_end0-jinit_marker_writer
                                        # -- End function
	.p2align	5                               # -- Begin function write_any_marker
	.type	write_any_marker,@function
write_any_marker:                       # @write_any_marker
# %bb.0:
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4093
	bltu	$a4, $a3, .LBB1_20
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	ori	$a3, $zero, 255
	st.b	$a3, $a2, 0
	ld.d	$a2, $a0, 8
	addi.d	$a2, $a2, -1
	st.d	$a2, $a0, 8
	bnez	$a2, .LBB1_4
# %bb.2:
	ld.d	$a2, $a0, 24
	move	$a0, $s1
	move	$s2, $a1
	jirl	$ra, $a2, 0
	move	$a1, $s2
	bnez	$a0, .LBB1_4
# %bb.3:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
	move	$a1, $s2
.LBB1_4:                                # %emit_byte.exit.i
	ld.d	$a0, $s1, 32
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	st.b	$a1, $a2, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB1_7
# %bb.5:
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB1_7
# %bb.6:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB1_7:                                # %emit_marker.exit
	ld.d	$a0, $s1, 32
	ld.d	$a1, $a0, 0
	addi.d	$s2, $fp, 2
	srli.d	$a2, $s2, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB1_10
# %bb.8:
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB1_10
# %bb.9:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB1_10:                               # %emit_byte.exit.i10
	ld.d	$a0, $s1, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB1_13
# %bb.11:
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB1_13
# %bb.12:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB1_13:                               # %emit_2bytes.exit
	beqz	$fp, .LBB1_19
# %bb.14:                               # %.lr.ph.preheader
	ori	$s2, $zero, 22
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %emit_byte.exit
                                        #   in Loop: Header=BB1_16 Depth=1
	addi.w	$fp, $fp, -1
	addi.d	$s0, $s0, 1
	beqz	$fp, .LBB1_19
.LBB1_16:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $s0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB1_15
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB1_15
# %bb.18:                               #   in Loop: Header=BB1_16 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
	b	.LBB1_15
.LBB1_19:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_20:                               # %.loopexit
	ret
.Lfunc_end1:
	.size	write_any_marker, .Lfunc_end1-write_any_marker
                                        # -- End function
	.p2align	5                               # -- Begin function write_file_header
	.type	write_file_header,@function
write_file_header:                      # @write_file_header
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_3
# %bb.1:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_3
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_3:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 216
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_5
# %bb.4:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB2_60
.LBB2_5:                                # %emit_marker.exit
	ld.w	$a0, $fp, 280
	beqz	$a0, .LBB2_61
.LBB2_6:
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_9
# %bb.7:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_9
# %bb.8:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_9:                                # %emit_byte.exit.i.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 224
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_12
# %bb.10:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_12
# %bb.11:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_12:                               # %emit_marker.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_15
# %bb.13:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_15
# %bb.14:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_15:                               # %emit_byte.exit.i17.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 16
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_18
# %bb.16:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_18
# %bb.17:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_18:                               # %emit_2bytes.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 74
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_21
# %bb.19:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_21
# %bb.20:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_21:                               # %emit_byte.exit.i6
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 70
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_24
# %bb.22:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_24
# %bb.23:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_24:                               # %emit_byte.exit20.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 73
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_27
# %bb.25:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_27
# %bb.26:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_27:                               # %emit_byte.exit22.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 70
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_30
# %bb.28:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_30
# %bb.29:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_30:                               # %emit_byte.exit24.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_33
# %bb.31:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_33
# %bb.32:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_33:                               # %emit_byte.exit26.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$s0, $zero, 1
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_36
# %bb.34:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_36
# %bb.35:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_36:                               # %emit_byte.exit28.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_39
# %bb.37:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_39
# %bb.38:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_39:                               # %emit_byte.exit30.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 284
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_42
# %bb.40:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_42
# %bb.41:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_42:                               # %emit_byte.exit32.i
	ld.d	$a0, $fp, 32
	ld.hu	$s0, $fp, 286
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_45
# %bb.43:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_45
# %bb.44:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_45:                               # %emit_byte.exit.i33.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_48
# %bb.46:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_48
# %bb.47:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_48:                               # %emit_2bytes.exit36.i
	ld.d	$a0, $fp, 32
	ld.hu	$s0, $fp, 288
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_51
# %bb.49:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_51
# %bb.50:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_51:                               # %emit_byte.exit.i37.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_54
# %bb.52:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_54
# %bb.53:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_54:                               # %emit_2bytes.exit40.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_57
# %bb.55:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_57
# %bb.56:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_57:                               # %emit_byte.exit42.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_61
# %bb.58:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_61
# %bb.59:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 292
	bnez	$a0, .LBB2_62
	b	.LBB2_114
.LBB2_60:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 280
	bnez	$a0, .LBB2_6
.LBB2_61:                               # %emit_jfif_app0.exit
	ld.w	$a0, $fp, 292
	beqz	$a0, .LBB2_114
.LBB2_62:
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_65
# %bb.63:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_65
# %bb.64:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_65:                               # %emit_byte.exit.i.i8
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 238
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_68
# %bb.66:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_68
# %bb.67:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_68:                               # %emit_marker.exit.i9
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_71
# %bb.69:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_71
# %bb.70:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_71:                               # %emit_byte.exit.i14.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 14
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_74
# %bb.72:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_74
# %bb.73:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_74:                               # %emit_2bytes.exit.i10
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 65
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_77
# %bb.75:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_77
# %bb.76:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_77:                               # %emit_byte.exit.i11
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 100
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_80
# %bb.78:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_80
# %bb.79:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_80:                               # %emit_byte.exit17.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 111
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_83
# %bb.81:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_83
# %bb.82:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_83:                               # %emit_byte.exit19.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 98
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_86
# %bb.84:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_86
# %bb.85:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_86:                               # %emit_byte.exit21.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 101
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_89
# %bb.87:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_89
# %bb.88:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_89:                               # %emit_byte.exit23.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_92
# %bb.90:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_92
# %bb.91:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_92:                               # %emit_byte.exit.i24.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 100
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_95
# %bb.93:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_95
# %bb.94:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_95:                               # %emit_2bytes.exit27.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_98
# %bb.96:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_98
# %bb.97:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_98:                               # %emit_byte.exit.i28.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_101
# %bb.99:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_101
# %bb.100:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_101:                              # %emit_2bytes.exit31.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_104
# %bb.102:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_104
# %bb.103:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_104:                              # %emit_byte.exit.i32.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_107
# %bb.105:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_107
# %bb.106:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_107:                              # %emit_2bytes.exit35.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.w	$a2, $fp, 72
	addi.d	$a3, $a1, 1
	ori	$a4, $zero, 5
	st.d	$a3, $a0, 0
	beq	$a2, $a4, .LBB2_110
# %bb.108:                              # %emit_2bytes.exit35.i
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB2_112
# %bb.109:
	ori	$a2, $zero, 1
	b	.LBB2_111
.LBB2_110:
	ori	$a2, $zero, 2
.LBB2_111:
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_114
	b	.LBB2_113
.LBB2_112:
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_114
.LBB2_113:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB2_115
.LBB2_114:                              # %emit_adobe_app14.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_115:                              # %emit_byte.exit37.sink.split.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a1
.Lfunc_end2:
	.size	write_file_header, .Lfunc_end2-write_file_header
                                        # -- End function
	.p2align	5                               # -- Begin function write_frame_header
	.type	write_frame_header,@function
write_frame_header:                     # @write_frame_header
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a2, $a0, 68
	blez	$a2, .LBB3_4
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a0, $fp, 80
	move	$s0, $zero
	move	$s1, $zero
	addi.d	$s2, $a0, 16
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 68
	add.w	$s0, $a0, $s0
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 96
	blt	$s1, $a2, .LBB3_2
# %bb.3:                                # %._crit_edge.loopexit
	sltu	$a0, $zero, $s0
	ld.w	$a3, $fp, 252
	ori	$a1, $zero, 201
	bnez	$a3, .LBB3_22
	b	.LBB3_5
.LBB3_4:
	move	$a0, $zero
	ld.w	$a3, $fp, 252
	ori	$a1, $zero, 201
	bnez	$a3, .LBB3_22
.LBB3_5:
	ld.w	$a1, $fp, 300
	beqz	$a1, .LBB3_7
# %bb.6:
	ori	$a1, $zero, 194
	b	.LBB3_22
.LBB3_7:
	ld.w	$a1, $fp, 64
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB3_14
# %bb.8:
	blez	$a2, .LBB3_15
# %bb.9:                                # %.lr.ph50.preheader
	ld.d	$a1, $fp, 80
	addi.d	$a1, $a1, 24
	ori	$a4, $zero, 1
	ori	$a5, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_10:                               #   in Loop: Header=BB3_12 Depth=1
	move	$a3, $zero
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 96
	beqz	$a2, .LBB3_16
.LBB3_12:                               # %.lr.ph50
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, -4
	blt	$a4, $a6, .LBB3_10
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	ld.w	$a6, $a1, 0
	bge	$a6, $a5, .LBB3_10
	b	.LBB3_11
.LBB3_14:
	move	$a3, $zero
	b	.LBB3_19
.LBB3_15:
	ori	$a3, $zero, 1
.LBB3_16:                               # %._crit_edge51
	sltu	$a1, $zero, $a3
	and	$a0, $a0, $a1
	beqz	$a0, .LBB3_19
# %bb.17:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 74
	st.w	$a1, $a0, 40
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ori	$a1, $zero, 201
	ld.w	$a0, $fp, 252
	bnez	$a0, .LBB3_22
# %bb.18:                               # %.thread62
	ld.w	$a0, $fp, 300
	ori	$a1, $zero, 194
	bnez	$a0, .LBB3_22
	b	.LBB3_21
.LBB3_19:                               # %.thread58
	ld.w	$a0, $fp, 300
	ori	$a1, $zero, 194
	bnez	$a0, .LBB3_22
# %bb.20:
	ori	$a1, $zero, 192
	bnez	$a3, .LBB3_22
.LBB3_21:                               # %.thread66
	ori	$a1, $zero, 193
.LBB3_22:                               # %.thread
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(emit_sof)
	jr	$t8
.Lfunc_end3:
	.size	write_frame_header, .Lfunc_end3-write_frame_header
                                        # -- End function
	.p2align	5                               # -- Begin function write_scan_header
	.type	write_scan_header,@function
write_scan_header:                      # @write_scan_header
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 252
	beqz	$a0, .LBB4_59
.LBB4_1:                                # %.loopexit
	ld.w	$a0, $fp, 272
	beqz	$a0, .LBB4_20
# %bb.2:
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_5
# %bb.3:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_5
# %bb.4:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_5:                                # %emit_byte.exit.i.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 221
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_8
# %bb.6:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_8
# %bb.7:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_8:                                # %emit_marker.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_11
# %bb.9:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_11
# %bb.10:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_11:                               # %emit_byte.exit.i4.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 4
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_14
# %bb.12:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_14
# %bb.13:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_14:                               # %emit_2bytes.exit.i
	ld.d	$a0, $fp, 32
	ld.w	$s0, $fp, 272
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_17
# %bb.15:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_17
# %bb.16:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_17:                               # %emit_byte.exit.i6.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_20
# %bb.18:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_20
# %bb.19:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_20:                               # %emit_dri.exit
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_23
# %bb.21:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_23
# %bb.22:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_23:                               # %emit_byte.exit.i.i22
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 218
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_26
# %bb.24:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_26
# %bb.25:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_26:                               # %emit_marker.exit.i23
	ld.d	$a0, $fp, 32
	ld.w	$a1, $fp, 316
	ld.d	$a2, $a0, 0
	slli.d	$a3, $a1, 1
	addi.d	$a3, $a3, 6
	srli.d	$a3, $a3, 8
	addi.d	$a4, $a2, 1
	st.d	$a4, $a0, 0
	st.b	$a3, $a2, 0
	ld.d	$a2, $a0, 8
	ori	$a3, $zero, 6
	alsl.w	$s0, $a1, $a3, 1
	addi.d	$a1, $a2, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_29
# %bb.27:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_29
# %bb.28:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_29:                               # %emit_byte.exit.i31.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_32
# %bb.30:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_32
# %bb.31:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_32:                               # %emit_2bytes.exit.i24
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 316
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_35
# %bb.33:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_35
# %bb.34:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_35:                               # %emit_byte.exit.i
	ld.w	$a0, $fp, 316
	blez	$a0, .LBB4_50
# %bb.36:                               # %.lr.ph.i
	move	$s0, $zero
	ori	$s1, $zero, 320
	ori	$s2, $zero, 22
	b	.LBB4_38
	.p2align	4, , 16
.LBB4_37:                               # %emit_byte.exit36.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $fp, 316
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bge	$s0, $a0, .LBB4_50
.LBB4_38:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$s3, $fp, $s1
	ld.d	$a1, $a0, 0
	ld.b	$a2, $s3, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_40
# %bb.39:                               #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_45
.LBB4_40:                               # %emit_byte.exit34.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $s3, 20
	ld.w	$a2, $fp, 300
	ld.w	$a1, $s3, 24
	beqz	$a2, .LBB4_47
.LBB4_41:                               #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a2, $fp, 404
	beqz	$a2, .LBB4_43
# %bb.42:                               #   in Loop: Header=BB4_38 Depth=1
	move	$a0, $zero
	b	.LBB4_47
	.p2align	4, , 16
.LBB4_43:                               #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a1, $fp, 412
	beqz	$a1, .LBB4_46
# %bb.44:                               #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a2, $fp, 252
	move	$a1, $zero
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	b	.LBB4_47
.LBB4_45:                               #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $s3, 20
	ld.w	$a2, $fp, 300
	ld.w	$a1, $s3, 24
	bnez	$a2, .LBB4_41
	b	.LBB4_47
.LBB4_46:                               #   in Loop: Header=BB4_38 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB4_47:                               #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a2, $fp, 32
	ld.d	$a3, $a2, 0
	alsl.d	$a0, $a0, $a1, 4
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, 0
	st.b	$a0, $a3, 0
	ld.d	$a0, $a2, 8
	addi.d	$a0, $a0, -1
	st.d	$a0, $a2, 8
	bnez	$a0, .LBB4_37
# %bb.48:                               #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a1, $a2, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_37
# %bb.49:                               #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB4_37
.LBB4_50:                               # %._crit_edge.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 404
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_53
# %bb.51:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_53
# %bb.52:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_53:                               # %emit_byte.exit38.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 408
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_56
# %bb.54:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_56
# %bb.55:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_56:                               # %emit_byte.exit40.i
	ld.d	$a0, $fp, 32
	ld.w	$a1, $fp, 412
	ld.w	$a2, $fp, 416
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a1, $a2, 4
	addi.d	$a2, $a3, 1
	st.d	$a2, $a0, 0
	st.b	$a1, $a3, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_58
# %bb.57:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_69
.LBB4_58:                               # %emit_sos.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_59:                               # %.preheader
	ld.w	$a0, $fp, 316
	blez	$a0, .LBB4_1
# %bb.60:                               # %.lr.ph
	move	$s0, $zero
	ori	$s1, $zero, 320
	b	.LBB4_65
	.p2align	4, , 16
.LBB4_61:                               #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a1, $s2, 20
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB4_62:                               #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a1, $s2, 24
	ori	$a2, $zero, 1
	move	$a0, $fp
.LBB4_63:                               #   in Loop: Header=BB4_65 Depth=1
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB4_64:                               #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a0, $fp, 316
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bge	$s0, $a0, .LBB4_1
.LBB4_65:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 300
	ldx.d	$s2, $fp, $s1
	beqz	$a0, .LBB4_61
# %bb.66:                               #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a0, $fp, 404
	bnez	$a0, .LBB4_62
# %bb.67:                               #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a0, $fp, 412
	bnez	$a0, .LBB4_64
# %bb.68:                               #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a1, $s2, 20
	move	$a0, $fp
	move	$a2, $zero
	b	.LBB4_63
.LBB4_69:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	jr	$a1
.Lfunc_end4:
	.size	write_scan_header, .Lfunc_end4-write_scan_header
                                        # -- End function
	.p2align	5                               # -- Begin function write_file_trailer
	.type	write_file_trailer,@function
write_file_trailer:                     # @write_file_trailer
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB5_3
# %bb.1:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB5_3
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB5_3:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 217
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB5_5
# %bb.4:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_6
.LBB5_5:                                # %emit_marker.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_6:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.Lfunc_end5:
	.size	write_file_trailer, .Lfunc_end5-write_file_trailer
                                        # -- End function
	.p2align	5                               # -- Begin function write_tables_only
	.type	write_tables_only,@function
write_tables_only:                      # @write_tables_only
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB6_3
# %bb.1:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_3
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB6_3:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 216
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB6_6
# %bb.4:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_6
# %bb.5:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB6_6:                                # %emit_marker.exit
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB6_8
# %bb.7:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
.LBB6_8:
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB6_10
# %bb.9:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
.LBB6_10:
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB6_12
# %bb.11:
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
.LBB6_12:
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB6_14
# %bb.13:
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
.LBB6_14:
	ld.w	$a0, $fp, 252
	bnez	$a0, .LBB6_31
# %bb.15:                               # %.preheader
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB6_17
# %bb.16:
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_17:
	ld.d	$a0, $fp, 152
	beqz	$a0, .LBB6_19
# %bb.18:
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_19:
	ld.d	$a0, $fp, 128
	beqz	$a0, .LBB6_21
# %bb.20:
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_21:
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB6_23
# %bb.22:
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_23:
	ld.d	$a0, $fp, 136
	beqz	$a0, .LBB6_25
# %bb.24:
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_25:
	ld.d	$a0, $fp, 168
	beqz	$a0, .LBB6_27
# %bb.26:
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_27:
	ld.d	$a0, $fp, 144
	beqz	$a0, .LBB6_29
# %bb.28:
	ori	$a1, $zero, 3
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_29:
	ld.d	$a0, $fp, 176
	beqz	$a0, .LBB6_31
# %bb.30:
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_31:                               # %.loopexit
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB6_34
# %bb.32:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_34
# %bb.33:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB6_34:                               # %emit_byte.exit.i21
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 217
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB6_36
# %bb.35:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_37
.LBB6_36:                               # %emit_marker.exit24
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_37:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.Lfunc_end6:
	.size	write_tables_only, .Lfunc_end6-write_tables_only
                                        # -- End function
	.p2align	5                               # -- Begin function emit_dqt
	.type	emit_dqt,@function
emit_dqt:                               # @emit_dqt
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
	move	$s0, $a1
	move	$fp, $a0
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s1, $a0, 88
	bnez	$s1, .LBB7_2
# %bb.1:
	ld.d	$a0, $fp, 0
	st.w	$s0, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 51
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_2:                                # %vector.body
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s1, 16
	ld.d	$a3, $s1, 24
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vinsgr2vr.d	$vr3, $a3, 0
	ld.d	$a0, $s1, 32
	ld.d	$a1, $s1, 40
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr3, $a1, 0
	ld.d	$a0, $s1, 48
	ld.d	$a1, $s1, 56
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr3, $a1, 0
	ld.d	$a0, $s1, 64
	ld.d	$a1, $s1, 72
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr3, $a1, 0
	ld.d	$a0, $s1, 80
	ld.d	$a1, $s1, 88
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr3, $a1, 0
	ld.d	$a0, $s1, 96
	ld.d	$a1, $s1, 104
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr3, $a1, 0
	ld.d	$a0, $s1, 112
	ld.d	$a1, $s1, 120
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr3, $a1, 0
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	vor.v	$vr0, $vr1, $vr0
	vrepli.h	$vr1, 255
	vslt.hu	$vr0, $vr1, $vr0
	vilvl.h	$vr0, $vr0, $vr0
	ld.w	$a0, $s1, 128
	vslli.w	$vr0, $vr0, 16
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	andi	$s2, $a1, 15
	bnez	$a0, .LBB7_31
# %bb.3:
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_6
# %bb.4:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_6
# %bb.5:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_6:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 219
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_9
# %bb.7:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_9
# %bb.8:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_9:                                # %emit_marker.exit
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_12
# %bb.10:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_12
# %bb.11:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_12:                               # %emit_byte.exit.i32
	ld.d	$a0, $fp, 32
	sltu	$s3, $zero, $s2
	ori	$a1, $zero, 67
	masknez	$a1, $a1, $s3
	ld.d	$a2, $a0, 0
	addi.d	$a3, $zero, -125
	maskeqz	$a3, $a3, $s3
	or	$a1, $a3, $a1
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	st.b	$a1, $a2, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_15
# %bb.13:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_15
# %bb.14:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_15:                               # %emit_2bytes.exit
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $s3, $s0, 4
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_18
# %bb.16:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_18
# %bb.17:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_18:                               # %emit_byte.exit
	pcalau12i	$a0, %got_pc_hi20(jpeg_natural_order)
	ld.d	$s0, $a0, %got_pc_lo12(jpeg_natural_order)
	move	$s3, $zero
	ori	$s4, $zero, 22
	ori	$s5, $zero, 256
	bnez	$s2, .LBB7_20
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_19:                               # %emit_byte.exit37
                                        #   in Loop: Header=BB7_20 Depth=1
	addi.d	$s3, $s3, 4
	beq	$s3, $s5, .LBB7_30
.LBB7_20:                               # %emit_byte.exit.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s0, $s3
	ld.d	$a0, $fp, 32
	slli.d	$a1, $a1, 1
	ldx.hu	$s6, $s1, $a1
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s6, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_23
# %bb.21:                               #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_23
# %bb.22:                               #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	.p2align	4, , 16
.LBB7_23:                               # %emit_byte.exit35
                                        #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s6, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_19
# %bb.24:                               #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_19
# %bb.25:                               #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_26:                               # %emit_byte.exit37.us
                                        #   in Loop: Header=BB7_27 Depth=1
	addi.d	$s3, $s3, 4
	beq	$s3, $s5, .LBB7_30
.LBB7_27:                               # %emit_byte.exit35.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ldx.w	$a1, $s0, $s3
	ld.d	$a2, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.b	$a1, $s1, $a1
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	st.b	$a1, $a2, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_26
# %bb.28:                               #   in Loop: Header=BB7_27 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_26
# %bb.29:                               #   in Loop: Header=BB7_27 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB7_26
.LBB7_30:                               # %.split.us
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 128
.LBB7_31:
	sltu	$a0, $zero, $s2
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
	ret
.Lfunc_end7:
	.size	emit_dqt, .Lfunc_end7-emit_dqt
                                        # -- End function
	.p2align	5                               # -- Begin function emit_sof
	.type	emit_sof,@function
emit_sof:                               # @emit_sof
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	ori	$a3, $zero, 255
	st.b	$a3, $a2, 0
	ld.d	$a2, $a0, 8
	move	$s0, $a1
	addi.d	$a1, $a2, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_3
# %bb.1:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_3
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_3:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_6
# %bb.4:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_6
# %bb.5:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_6:                                # %emit_marker.exit
	ld.d	$a0, $fp, 32
	ld.w	$a1, $fp, 68
	ld.d	$a2, $a0, 0
	alsl.d	$a1, $a1, $a1, 1
	addi.d	$s0, $a1, 8
	srli.d	$a1, $s0, 8
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	st.b	$a1, $a2, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_9
# %bb.7:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_9
# %bb.8:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_9:                                # %emit_byte.exit.i30
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_11
# %bb.10:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_13
.LBB8_11:                               # %emit_2bytes.exit
	ld.hu	$a0, $fp, 46
	bnez	$a0, .LBB8_14
.LBB8_12:
	ld.hu	$a0, $fp, 42
	bnez	$a0, .LBB8_14
	b	.LBB8_15
.LBB8_13:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.hu	$a0, $fp, 46
	beqz	$a0, .LBB8_12
.LBB8_14:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 40
	lu32i.d	$a1, 65535
	st.d	$a1, $a0, 40
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_15:
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 64
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_18
# %bb.16:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_18
# %bb.17:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_18:                               # %emit_byte.exit
	ld.d	$a0, $fp, 32
	ld.w	$s0, $fp, 44
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_21
# %bb.19:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_21
# %bb.20:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_21:                               # %emit_byte.exit.i32
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_24
# %bb.22:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_24
# %bb.23:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_24:                               # %emit_2bytes.exit35
	ld.d	$a0, $fp, 32
	ld.w	$s0, $fp, 40
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_27
# %bb.25:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_27
# %bb.26:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_27:                               # %emit_byte.exit.i36
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_30
# %bb.28:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_30
# %bb.29:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_30:                               # %emit_2bytes.exit39
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 68
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_33
# %bb.31:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_33
# %bb.32:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_33:                               # %emit_byte.exit41
	ld.w	$a0, $fp, 68
	blez	$a0, .LBB8_45
# %bb.34:                               # %.lr.ph.preheader
	ld.d	$s0, $fp, 80
	move	$s1, $zero
	ori	$s2, $zero, 22
	b	.LBB8_36
	.p2align	4, , 16
.LBB8_35:                               # %emit_byte.exit47
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.w	$a0, $fp, 68
	addi.w	$s1, $s1, 1
	addi.d	$s0, $s0, 96
	bge	$s1, $a0, .LBB8_45
.LBB8_36:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $s0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_39
# %bb.37:                               #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_39
# %bb.38:                               #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	.p2align	4, , 16
.LBB8_39:                               # %emit_byte.exit43
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 32
	ld.w	$a1, $s0, 8
	ld.w	$a2, $s0, 12
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a1, $a2, 4
	addi.d	$a2, $a3, 1
	st.d	$a2, $a0, 0
	st.b	$a1, $a3, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_42
# %bb.40:                               #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_42
# %bb.41:                               #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	.p2align	4, , 16
.LBB8_42:                               # %emit_byte.exit45
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $s0, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_35
# %bb.43:                               #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_35
# %bb.44:                               #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB8_35
.LBB8_45:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	emit_sof, .Lfunc_end8-emit_sof
                                        # -- End function
	.p2align	5                               # -- Begin function emit_dht
	.type	emit_dht,@function
emit_dht:                               # @emit_dht
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
	move	$fp, $a0
	sltui	$a0, $a2, 1
	ori	$a2, $zero, 152
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 120
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	add.d	$a2, $fp, $a2
	slli.d	$a3, $a1, 3
	ldx.d	$s0, $a2, $a3
	addi.d	$a2, $a1, 16
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$s1, $a1, $a0
	beqz	$s0, .LBB9_2
# %bb.1:
	ld.w	$a0, $s0, 276
	bnez	$a0, .LBB9_30
	b	.LBB9_3
.LBB9_2:
	ld.d	$a0, $fp, 0
	st.w	$s1, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 49
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $s0, 276
	bnez	$a0, .LBB9_30
.LBB9_3:
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_6
# %bb.4:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_6
# %bb.5:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_6:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 196
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_9
# %bb.7:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_9
# %bb.8:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_9:                                # %emit_marker.exit
	vld	$vr0, $s0, 1
	vrepli.b	$vr1, 0
	vilvh.b	$vr2, $vr1, $vr0
	vilvl.h	$vr3, $vr1, $vr2
	vilvl.b	$vr0, $vr1, $vr0
	vilvl.h	$vr4, $vr1, $vr0
	vilvh.h	$vr2, $vr1, $vr2
	vilvh.h	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr4, $vr3
	ld.d	$a0, $fp, 32
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	ld.d	$a1, $a0, 0
	vpickve2gr.d	$s2, $vr0, 0
	addi.d	$s3, $s2, 19
	srli.d	$a2, $s3, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_12
# %bb.10:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_12
# %bb.11:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_12:                               # %emit_byte.exit.i38
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s3, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_15
# %bb.13:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_15
# %bb.14:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_15:                               # %emit_2bytes.exit
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s1, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_18
# %bb.16:
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_18
# %bb.17:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_18:                               # %emit_byte.exit.preheader
	move	$s1, $zero
	addi.d	$s3, $s0, 1
	ori	$s4, $zero, 22
	ori	$s5, $zero, 16
	b	.LBB9_20
	.p2align	4, , 16
.LBB9_19:                               # %emit_byte.exit41
                                        #   in Loop: Header=BB9_20 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s5, .LBB9_23
.LBB9_20:                               # %emit_byte.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ldx.b	$a2, $s3, $s1
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_19
# %bb.21:                               #   in Loop: Header=BB9_20 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_19
# %bb.22:                               #   in Loop: Header=BB9_20 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB9_19
.LBB9_23:                               # %.preheader
	addi.w	$s1, $s2, 0
	beqz	$s1, .LBB9_29
# %bb.24:                               # %.lr.ph
	move	$s2, $zero
	addi.d	$s3, $s0, 17
	ori	$s4, $zero, 22
	b	.LBB9_26
	.p2align	4, , 16
.LBB9_25:                               # %emit_byte.exit43
                                        #   in Loop: Header=BB9_26 Depth=1
	addi.d	$s2, $s2, 1
	bgeu	$s2, $s1, .LBB9_29
.LBB9_26:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ldx.b	$a2, $s3, $s2
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_25
# %bb.27:                               #   in Loop: Header=BB9_26 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_25
# %bb.28:                               #   in Loop: Header=BB9_26 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB9_25
.LBB9_29:                               # %._crit_edge
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 276
.LBB9_30:
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
.Lfunc_end9:
	.size	emit_dht, .Lfunc_end9-emit_dht
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write_any_marker
	.addrsig_sym write_file_header
	.addrsig_sym write_frame_header
	.addrsig_sym write_scan_header
	.addrsig_sym write_file_trailer
	.addrsig_sym write_tables_only
