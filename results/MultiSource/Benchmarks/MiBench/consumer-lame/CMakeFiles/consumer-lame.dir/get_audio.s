	.file	"get_audio.c"
	.text
	.globl	lame_init_infile                # -- Begin function lame_init_infile
	.p2align	5
	.type	lame_init_infile,@function
lame_init_infile:                       # @lame_init_infile
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a1, $a0, 128
	ld.w	$a2, $a0, 12
	ld.w	$a3, $a0, 8
	pcalau12i	$a0, %pc_hi20(count_samples_carefully)
	st.b	$zero, $a0, %pc_lo12(count_samples_carefully)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(OpenSndFile)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(samp_freq)
	ld.w	$a0, $a0, %pc_lo12(samp_freq)
	beqz	$a0, .LBB0_2
# %bb.1:
	st.w	$a0, $fp, 12
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(num_channels)
	ld.w	$a0, $a0, %pc_lo12(num_channels)
	beqz	$a0, .LBB0_4
# %bb.3:
	st.w	$a0, $fp, 8
.LBB0_4:
	pcalau12i	$a0, %pc_hi20(num_samples)
	ld.d	$a0, $a0, %pc_lo12(num_samples)
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	lame_init_infile, .Lfunc_end0-lame_init_infile
                                        # -- End function
	.globl	OpenSndFile                     # -- Begin function OpenSndFile
	.p2align	5
	.type	OpenSndFile,@function
OpenSndFile:                            # @OpenSndFile
# %bb.0:                                # %sub_0
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a1
	addi.w	$s7, $zero, -1
	pcalau12i	$s1, %pc_hi20(num_samples)
	move	$s5, $s7
	lu32i.d	$s5, 0
	st.d	$s5, $s1, %pc_lo12(num_samples)
	pcalau12i	$s3, %pc_hi20(samp_freq)
	st.w	$a2, $s3, %pc_lo12(samp_freq)
	pcalau12i	$s4, %pc_hi20(num_channels)
	st.w	$a3, $s4, %pc_lo12(num_channels)
	ld.bu	$a1, $a1, 0
	move	$s0, $a0
	ori	$a0, $zero, 45
	pcalau12i	$s2, %pc_hi20(musicin)
	bne	$a1, $a0, .LBB1_2
# %bb.1:                                # %.tail
	ld.bu	$a0, $fp, 1
	beqz	$a0, .LBB1_14
.LBB1_2:                                # %.tail.thread
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(musicin)
	beqz	$a0, .LBB1_19
.LBB1_3:
	ld.w	$a1, $s0, 120
	pcalau12i	$s6, %pc_hi20(input_bitrate)
	ori	$a2, $zero, 3
	st.w	$zero, $s6, %pc_lo12(input_bitrate)
	beq	$a1, $a2, .LBB1_8
# %bb.4:
	ori	$s7, $zero, 4
	beq	$a1, $s7, .LBB1_6
# %bb.5:
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(parse_file_header)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 120
	bne	$a0, $s7, .LBB1_9
.LBB1_6:                                # %.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	ori	$s8, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 124
	ld.d	$a3, $s7, 0
	beq	$a0, $s8, .LBB1_18
# %bb.7:
	ori	$a0, $zero, 10
	move	$a1, $a3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(num_samples)
	beq	$a0, $s5, .LBB1_10
	b	.LBB1_17
.LBB1_8:
	pcalau12i	$a1, %pc_hi20(num_channels)
	addi.d	$a1, $a1, %pc_lo12(num_channels)
	pcalau12i	$a2, %pc_hi20(samp_freq)
	addi.d	$a2, $a2, %pc_lo12(samp_freq)
	pcalau12i	$a3, %pc_hi20(input_bitrate)
	addi.d	$a3, $a3, %pc_lo12(input_bitrate)
	pcalau12i	$a4, %pc_hi20(num_samples)
	addi.d	$a4, $a4, %pc_lo12(num_samples)
	pcaddu18i	$ra, %call36(lame_decode_initfile)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB1_20
.LBB1_9:
	ld.d	$a0, $s1, %pc_lo12(num_samples)
	bne	$a0, $s5, .LBB1_17
.LBB1_10:
	ld.d	$a0, $s2, %pc_lo12(musicin)
	pcalau12i	$a1, %got_pc_hi20(stdin)
	ld.d	$a1, $a1, %got_pc_lo12(stdin)
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB1_17
# %bb.11:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_17
# %bb.12:
	ld.w	$a1, $s0, 120
	ld.d	$a0, $sp, 56
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB1_15
# %bb.13:
	movgr2fr.d	$fa0, $a0
	ld.w	$a0, $s6, %pc_lo12(input_bitrate)
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -992
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa2, $a0
	ld.w	$a0, $s3, %pc_lo12(samp_freq)
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa1, $fa0
	lu12i.w	$a0, 389120
	movgr2fr.w	$fa1, $a0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ftintrz.l.s	$fa2, $fa0
	movfr2gr.d	$a0, $fa2
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	fsub.s	$fa0, $fa0, $fa1
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	lu52i.d	$a3, $zero, -2048
	xor	$a2, $a2, $a3
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	b	.LBB1_16
.LBB1_14:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, %pc_lo12(musicin)
	b	.LBB1_3
.LBB1_15:
	ld.w	$a1, $s4, %pc_lo12(num_channels)
	slli.w	$a1, $a1, 1
	div.d	$a0, $a0, $a1
.LBB1_16:                               # %.sink.split
	st.d	$a0, $s1, %pc_lo12(num_samples)
.LBB1_17:
	ld.d	$a0, $s2, %pc_lo12(musicin)
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB1_18:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(num_samples)
	beq	$a0, $s5, .LBB1_10
	b	.LBB1_17
.LBB1_19:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_20:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	OpenSndFile, .Lfunc_end1-OpenSndFile
                                        # -- End function
	.globl	GetSndSampleRate                # -- Begin function GetSndSampleRate
	.p2align	5
	.type	GetSndSampleRate,@function
GetSndSampleRate:                       # @GetSndSampleRate
# %bb.0:
	pcalau12i	$a0, %pc_hi20(samp_freq)
	ld.w	$a0, $a0, %pc_lo12(samp_freq)
	ret
.Lfunc_end2:
	.size	GetSndSampleRate, .Lfunc_end2-GetSndSampleRate
                                        # -- End function
	.globl	GetSndChannels                  # -- Begin function GetSndChannels
	.p2align	5
	.type	GetSndChannels,@function
GetSndChannels:                         # @GetSndChannels
# %bb.0:
	pcalau12i	$a0, %pc_hi20(num_channels)
	ld.w	$a0, $a0, %pc_lo12(num_channels)
	ret
.Lfunc_end3:
	.size	GetSndChannels, .Lfunc_end3-GetSndChannels
                                        # -- End function
	.globl	GetSndSamples                   # -- Begin function GetSndSamples
	.p2align	5
	.type	GetSndSamples,@function
GetSndSamples:                          # @GetSndSamples
# %bb.0:
	pcalau12i	$a0, %pc_hi20(num_samples)
	ld.d	$a0, $a0, %pc_lo12(num_samples)
	ret
.Lfunc_end4:
	.size	GetSndSamples, .Lfunc_end4-GetSndSamples
                                        # -- End function
	.globl	lame_close_infile               # -- Begin function lame_close_infile
	.p2align	5
	.type	lame_close_infile,@function
lame_close_infile:                      # @lame_close_infile
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(musicin)
	ld.d	$a0, $a0, %pc_lo12(musicin)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_2
# %bb.1:                                # %CloseSndFile.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_2:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	lame_close_infile, .Lfunc_end5-lame_close_infile
                                        # -- End function
	.globl	CloseSndFile                    # -- Begin function CloseSndFile
	.p2align	5
	.type	CloseSndFile,@function
CloseSndFile:                           # @CloseSndFile
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(musicin)
	ld.d	$a0, $a0, %pc_lo12(musicin)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_2
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_2:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	CloseSndFile, .Lfunc_end6-CloseSndFile
                                        # -- End function
	.globl	lame_readframe                  # -- Begin function lame_readframe
	.p2align	5
	.type	lame_readframe,@function
lame_readframe:                         # @lame_readframe
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(get_audio)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_4
# %bb.1:                                # %._crit_edge
	ld.d	$a1, $fp, 168
	ld.d	$a2, $fp, 176
	blt	$a1, $a2, .LBB7_3
.LBB7_2:
	st.d	$a1, $fp, 176
.LBB7_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_4:
	ld.d	$a1, $fp, 168
	ld.d	$a2, $fp, 176
	addi.d	$a3, $a1, 2
	slt	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	st.d	$a2, $fp, 176
	bge	$a1, $a2, .LBB7_2
	b	.LBB7_3
.Lfunc_end7:
	.size	lame_readframe, .Lfunc_end7-lame_readframe
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_audio
.LCPI8_0:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI8_1:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI8_2:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI8_3:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	get_audio
	.p2align	5
	.type	get_audio,@function
get_audio:                              # @get_audio
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -624
	ld.d	$a2, $a0, 168
	move	$fp, $a1
	pcalau12i	$s0, %pc_hi20(get_audio.num_samples_read)
	bnez	$a2, .LBB8_2
# %bb.1:
	st.d	$zero, $s0, %pc_lo12(get_audio.num_samples_read)
.LBB8_2:
	ld.w	$s4, $a0, 200
	pcalau12i	$a1, %pc_hi20(count_samples_carefully)
	ld.bu	$a2, $a1, %pc_lo12(count_samples_carefully)
	alsl.w	$a1, $s4, $s4, 3
	slli.w	$s3, $a1, 6
	pcalau12i	$s1, %pc_hi20(num_samples)
	move	$a1, $s3
	beqz	$a2, .LBB8_4
# %bb.3:
	ld.d	$a1, $s1, %pc_lo12(num_samples)
	ld.d	$a2, $s0, %pc_lo12(get_audio.num_samples_read)
	sub.d	$a2, $a1, $a2
	sltu	$a1, $a1, $a2
	masknez	$a1, $a2, $a1
	sltu	$a2, $a1, $s3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s3, $a2
	or	$a1, $a1, $a2
.LBB8_4:
	ld.w	$a2, $a0, 120
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB8_7
# %bb.5:
	pcalau12i	$a0, %pc_hi20(musicin)
	ld.d	$a0, $a0, %pc_lo12(musicin)
	addi.d	$a1, $fp, 2047
	addi.d	$a2, $a1, 257
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lame_decode_fromfile)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB8_23
# %bb.6:                                # %.preheader.preheader.i
	lu12i.w	$a0, 1
	ori	$a2, $a0, 512
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB8_23
.LBB8_7:
	ld.w	$s2, $a0, 8
	mul.w	$a2, $s3, $s2
	mul.w	$a3, $a1, $s2
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(read_samples_pcm)
	jirl	$ra, $ra, 0
	div.w	$a0, $a0, $s2
	blez	$s4, .LBB8_23
# %bb.8:                                # %.lr.ph
	ori	$a1, $zero, 2
	bne	$s2, $a1, .LBB8_11
# %bb.9:                                # %.lr.ph.split.us.preheader
	ori	$a1, $zero, 1
	slt	$a2, $a1, $s3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s3, $a2
	ori	$a3, $zero, 8
	or	$a1, $a2, $a1
	bge	$s3, $a3, .LBB8_18
# %bb.10:
	move	$a2, $zero
	b	.LBB8_21
.LBB8_11:                               # %.lr.ph.split.preheader
	move	$a1, $zero
	ori	$a3, $zero, 1
	slt	$a2, $a3, $s3
	masknez	$a4, $a3, $a2
	maskeqz	$a2, $s3, $a2
	ori	$a5, $zero, 8
	or	$a2, $a2, $a4
	blt	$s3, $a5, .LBB8_16
# %bb.12:                               # %.lr.ph.split.preheader
	bne	$s2, $a3, .LBB8_16
# %bb.13:                               # %vector.ph
	bstrpick.d	$a1, $a2, 30, 6
	slli.d	$a1, $a1, 6
	addi.d	$a3, $sp, 16
	vrepli.b	$vr0, 0
	ori	$a4, $zero, 2304
	move	$a5, $fp
	move	$a6, $a1
	.p2align	4, , 16
.LBB8_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vst	$vr1, $a5, 0
	vstx	$vr0, $a5, $a4
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 16
	bnez	$a6, .LBB8_14
# %bb.15:                               # %middle.block
	beq	$a1, $a2, .LBB8_23
.LBB8_16:                               # %.lr.ph.split.preheader59
	mul.d	$a3, $a1, $s2
	addi.d	$a4, $sp, 16
	alsl.d	$a3, $a3, $a4, 1
	slli.d	$a4, $s2, 1
	alsl.d	$a5, $a1, $fp, 1
	sub.d	$a1, $a2, $a1
	ori	$a2, $zero, 2304
	.p2align	4, , 16
.LBB8_17:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a3, 0
	st.h	$a6, $a5, 0
	stx.h	$zero, $a5, $a2
	add.d	$a3, $a3, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 2
	bnez	$a1, .LBB8_17
	b	.LBB8_23
.LBB8_18:                               # %vector.ph49
	pcalau12i	$a2, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI8_0)
	pcalau12i	$a2, %pc_hi20(.LCPI8_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI8_1)
	pcalau12i	$a2, %pc_hi20(.LCPI8_2)
	vld	$vr2, $a2, %pc_lo12(.LCPI8_2)
	pcalau12i	$a2, %pc_hi20(.LCPI8_3)
	vld	$vr3, $a2, %pc_lo12(.LCPI8_3)
	bstrpick.d	$a2, $a1, 30, 6
	slli.d	$a2, $a2, 6
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 2304
	move	$a5, $fp
	move	$a6, $a2
	.p2align	4, , 16
.LBB8_19:                               # %vector.body52
                                        # =>This Inner Loop Header: Depth=1
	vslli.d	$vr4, $vr0, 2
	vslli.d	$vr5, $vr1, 2
	vslli.d	$vr6, $vr2, 2
	vslli.d	$vr7, $vr3, 2
	vpickve2gr.d	$a7, $vr7, 0
	add.d	$t0, $a3, $a7
	vpickve2gr.d	$t1, $vr7, 1
	add.d	$t2, $a3, $t1
	vpickve2gr.d	$t3, $vr6, 0
	add.d	$t4, $a3, $t3
	vpickve2gr.d	$t5, $vr6, 1
	add.d	$t6, $a3, $t5
	vpickve2gr.d	$t7, $vr5, 0
	add.d	$t8, $a3, $t7
	vpickve2gr.d	$s2, $vr5, 1
	add.d	$s3, $a3, $s2
	vpickve2gr.d	$s4, $vr4, 0
	add.d	$s5, $a3, $s4
	vpickve2gr.d	$s6, $vr4, 1
	add.d	$s7, $a3, $s6
	ldx.h	$a7, $a7, $a3
	ldx.h	$t1, $t1, $a3
	ldx.h	$t3, $t3, $a3
	ldx.h	$t5, $t5, $a3
	ldx.h	$t7, $t7, $a3
	ldx.h	$s2, $s2, $a3
	ldx.h	$s4, $s4, $a3
	ldx.h	$s6, $s6, $a3
	vinsgr2vr.h	$vr4, $a7, 0
	vinsgr2vr.h	$vr4, $t1, 1
	vinsgr2vr.h	$vr4, $t3, 2
	vinsgr2vr.h	$vr4, $t5, 3
	vinsgr2vr.h	$vr4, $t7, 4
	vinsgr2vr.h	$vr4, $s2, 5
	vinsgr2vr.h	$vr4, $s4, 6
	vinsgr2vr.h	$vr4, $s6, 7
	vst	$vr4, $a5, 0
	ld.h	$a7, $t0, 2
	ld.h	$t0, $t2, 2
	ld.h	$t1, $t4, 2
	ld.h	$t2, $t6, 2
	ld.h	$t3, $t8, 2
	ld.h	$t4, $s3, 2
	ld.h	$t5, $s5, 2
	ld.h	$t6, $s7, 2
	vinsgr2vr.h	$vr4, $a7, 0
	vinsgr2vr.h	$vr4, $t0, 1
	vinsgr2vr.h	$vr4, $t1, 2
	vinsgr2vr.h	$vr4, $t2, 3
	vinsgr2vr.h	$vr4, $t3, 4
	vinsgr2vr.h	$vr4, $t4, 5
	vinsgr2vr.h	$vr4, $t5, 6
	vinsgr2vr.h	$vr4, $t6, 7
	vstx	$vr4, $a5, $a4
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB8_19
# %bb.20:                               # %middle.block55
	beq	$a2, $a1, .LBB8_23
.LBB8_21:                               # %.lr.ph.split.us.preheader58
	addi.d	$a3, $sp, 16
	alsl.d	$a3, $a2, $a3, 2
	addi.d	$a3, $a3, 2
	alsl.d	$a4, $a2, $fp, 1
	sub.d	$a1, $a1, $a2
	ori	$a2, $zero, 2304
	.p2align	4, , 16
.LBB8_22:                               # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, -2
	ld.h	$a6, $a3, 0
	st.h	$a5, $a4, 0
	stx.h	$a6, $a4, $a2
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 2
	bnez	$a1, .LBB8_22
.LBB8_23:                               # %read_samples_mp3.exit
	ld.d	$a1, $s1, %pc_lo12(num_samples)
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	beq	$a1, $a2, .LBB8_25
# %bb.24:
	ld.d	$a1, $s0, %pc_lo12(get_audio.num_samples_read)
	add.d	$a1, $a1, $a0
	st.d	$a1, $s0, %pc_lo12(get_audio.num_samples_read)
.LBB8_25:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 640
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end8:
	.size	get_audio, .Lfunc_end8-get_audio
                                        # -- End function
	.globl	read_samples_mp3                # -- Begin function read_samples_mp3
	.p2align	5
	.type	read_samples_mp3,@function
read_samples_mp3:                       # @read_samples_mp3
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$a0, $a1
	addi.d	$a1, $a2, 2047
	addi.d	$a2, $a1, 257
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lame_decode_fromfile)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB9_2
# %bb.1:                                # %.loopexit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_2:                                # %.preheader.preheader
	lu12i.w	$a0, 1
	ori	$a2, $a0, 512
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	read_samples_mp3, .Lfunc_end9-read_samples_mp3
                                        # -- End function
	.globl	read_samples_pcm                # -- Begin function read_samples_pcm
	.p2align	5
	.type	read_samples_pcm,@function
read_samples_pcm:                       # @read_samples_pcm
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.w	$s3, $a0, 120
	pcalau12i	$s2, %pc_hi20(musicin)
	ld.d	$a4, $s2, %pc_lo12(musicin)
	move	$fp, $a2
	move	$s0, $a1
	ori	$a1, $zero, 2
	move	$a0, $s0
	move	$a2, $a3
	move	$a3, $a4
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(musicin)
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(ferror)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_10
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(NativeByteOrder)
	ld.d	$s4, $a0, %got_pc_lo12(NativeByteOrder)
	ld.w	$a0, $s4, 0
	bnez	$a0, .LBB10_3
# %bb.2:
	pcaddu18i	$ra, %call36(DetermineByteOrder)
	jirl	$ra, $ra, 0
	st.w	$a0, $s4, 0
	beqz	$a0, .LBB10_11
.LBB10_3:
	addi.d	$a1, $s3, -1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 2
	sub.d	$a1, $a2, $a1
	addi.w	$s2, $s2, 0
	beq	$a0, $a1, .LBB10_8
# %bb.4:
	ld.w	$a0, $s1, 124
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB10_9
.LBB10_5:
	srai.d	$a0, $s2, 63
	andn	$a1, $s2, $a0
	bge	$a1, $fp, .LBB10_7
.LBB10_6:                               # %.lr.ph.preheader
	slli.d	$a0, $a1, 1
	bstrpick.d	$a0, $a0, 31, 1
	alsl.d	$a0, $a0, $s0, 1
	sub.d	$a1, $a1, $fp
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB10_7:                               # %.loopexit
	move	$a0, $s2
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB10_8:                               # %.sink.split
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(SwapBytesInWords)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 124
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB10_5
.LBB10_9:
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(SwapBytesInWords)
	jirl	$ra, $ra, 0
	srai.d	$a0, $s2, 63
	andn	$a1, $s2, $a0
	blt	$a1, $fp, .LBB10_6
	b	.LBB10_7
.LBB10_10:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_11:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	read_samples_pcm, .Lfunc_end10-read_samples_pcm
                                        # -- End function
	.globl	GetSndBitrate                   # -- Begin function GetSndBitrate
	.p2align	5
	.type	GetSndBitrate,@function
GetSndBitrate:                          # @GetSndBitrate
# %bb.0:
	pcalau12i	$a0, %pc_hi20(input_bitrate)
	ld.w	$a0, $a0, %pc_lo12(input_bitrate)
	ret
.Lfunc_end11:
	.size	GetSndBitrate, .Lfunc_end11-GetSndBitrate
                                        # -- End function
	.globl	fskip                           # -- Begin function fskip
	.p2align	5
	.type	fskip,@function
fskip:                                  # @fskip
# %bb.0:
	addi.d	$sp, $sp, -1072
	st.d	$ra, $sp, 1064                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1040                  # 8-byte Folded Spill
	move	$fp, $a1
	blez	$a1, .LBB12_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a0
	ori	$s1, $zero, 1024
	.p2align	4, , 16
.LBB12_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	sltui	$a0, $fp, 1024
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	sub.d	$fp, $fp, $a0
	bgtz	$fp, .LBB12_2
.LBB12_3:                               # %._crit_edge
	addi.w	$a0, $fp, 0
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	ret
.Lfunc_end12:
	.size	fskip, .Lfunc_end12-fskip
                                        # -- End function
	.globl	parse_file_header               # -- Begin function parse_file_header
	.p2align	5
	.type	parse_file_header,@function
parse_file_header:                      # @parse_file_header
# %bb.0:
	addi.d	$sp, $sp, -1152
	st.d	$ra, $sp, 1144                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1064                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1056                 # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	pcalau12i	$a3, %pc_hi20(count_samples_carefully)
	st.b	$zero, $a3, %pc_lo12(count_samples_carefully)
	ori	$a1, $zero, 4
	lu12i.w	$a2, 287989
	ori	$a2, $a2, 589
	st.w	$a1, $fp, 120
	beq	$a0, $a2, .LBB13_14
# %bb.1:
	lu12i.w	$a1, 337044
	ori	$a1, $a1, 1606
	bne	$a0, $a1, .LBB13_35
# %bb.2:
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 357397
	ori	$a1, $a1, 1605
	bne	$a0, $a1, .LBB13_34
# %bb.3:                                # %.preheader.i.preheader
	move	$s5, $zero
	move	$fp, $zero
	move	$s1, $zero
	move	$s2, $zero
	lu12i.w	$a0, 419543
	ori	$s7, $a0, 1056
	ori	$s6, $zero, 1024
	lu12i.w	$a0, 411159
	ori	$s8, $a0, 1121
	b	.LBB13_6
	.p2align	4, , 16
.LBB13_4:                               # %fskip.exit.i
                                        #   in Loop: Header=BB13_6 Depth=1
	slli.d	$a0, $s3, 32
	bnez	$a0, .LBB13_34
.LBB13_5:                               #   in Loop: Header=BB13_6 Depth=1
	addi.w	$s5, $s5, 1
	ori	$a0, $zero, 20
	beq	$s5, $a0, .LBB13_34
.LBB13_6:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_9 Depth 2
                                        #     Child Loop BB13_13 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32Bits)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s4, $s7, .LBB13_10
# %bb.7:                                # %.preheader.i
                                        #   in Loop: Header=BB13_6 Depth=1
	beq	$s4, $s8, .LBB13_30
# %bb.8:                                #   in Loop: Header=BB13_6 Depth=1
	blez	$s3, .LBB13_4
	.p2align	4, , 16
.LBB13_9:                               # %.lr.ph.i49.i
                                        #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltui	$a0, $s3, 1024
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	sub.d	$s3, $s3, $a0
	bgtz	$s3, .LBB13_9
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_10:                              #   in Loop: Header=BB13_6 Depth=1
	ori	$a0, $zero, 16
	blt	$s3, $a0, .LBB13_34
# %bb.11:                               #   in Loop: Header=BB13_6 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read16BitsLowHigh)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read16BitsLowHigh)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32Bits)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32Bits)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read16BitsLowHigh)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read16BitsLowHigh)
	jirl	$ra, $ra, 0
	bstrpick.d	$fp, $a0, 15, 0
	ori	$a0, $zero, 16
	beq	$s3, $a0, .LBB13_5
# %bb.12:                               #   in Loop: Header=BB13_6 Depth=1
	addi.d	$s3, $s3, -16
	.p2align	4, , 16
.LBB13_13:                              # %.lr.ph.i.i
                                        #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltui	$a0, $s3, 1024
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	sub.d	$s3, $s3, $a0
	bgtz	$s3, .LBB13_13
	b	.LBB13_4
.LBB13_14:
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 267412
	ori	$a1, $a1, 1606
	bne	$a0, $a1, .LBB13_34
# %bb.15:
	blez	$s2, .LBB13_34
# %bb.16:                               # %.lr.ph.preheader.i
	move	$s5, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s7, $zero
	movgr2fr.w	$fs0, $zero
	lu12i.w	$a0, 275700
	ori	$s6, $a0, 3405
	ori	$s8, $zero, 1024
	lu12i.w	$a0, 341300
	ori	$s1, $a0, 3652
	b	.LBB13_19
	.p2align	4, , 16
.LBB13_17:                              # %fskip.exit55.i
                                        #   in Loop: Header=BB13_19 Depth=1
	slli.d	$a0, $fp, 32
	bnez	$a0, .LBB13_34
# %bb.18:                               #   in Loop: Header=BB13_19 Depth=1
	addi.d	$a0, $s2, -4
	sub.d	$s2, $a0, $s3
	blez	$s2, .LBB13_34
.LBB13_19:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_22 Depth 2
                                        #     Child Loop BB13_24 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s4, $s6, .LBB13_23
# %bb.20:                               # %.lr.ph.i
                                        #   in Loop: Header=BB13_19 Depth=1
	beq	$s4, $s1, .LBB13_27
# %bb.21:                               #   in Loop: Header=BB13_19 Depth=1
	move	$fp, $s3
	blez	$s3, .LBB13_17
	.p2align	4, , 16
.LBB13_22:                              # %.lr.ph.i53.i
                                        #   Parent Loop BB13_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltui	$a0, $fp, 1024
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	sub.d	$fp, $fp, $a0
	bgtz	$fp, .LBB13_22
	b	.LBB13_17
	.p2align	4, , 16
.LBB13_23:                              #   in Loop: Header=BB13_19 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read16BitsHighLow)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read16BitsHighLow)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ReadIeeeExtendedHighLow)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	addi.d	$fp, $s3, -18
	ori	$a0, $zero, 19
	blt	$s3, $a0, .LBB13_25
	.p2align	4, , 16
.LBB13_24:                              # %.lr.ph.i.i19
                                        #   Parent Loop BB13_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltui	$a0, $fp, 1024
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	sub.d	$fp, $fp, $a0
	bgtz	$fp, .LBB13_24
.LBB13_25:                              # %fskip.exit.i17
                                        #   in Loop: Header=BB13_19 Depth=1
	slli.d	$a0, $fp, 32
	bnez	$a0, .LBB13_34
# %bb.26:                               #   in Loop: Header=BB13_19 Depth=1
	bstrpick.d	$s7, $s4, 15, 0
	bstrpick.d	$s5, $s5, 15, 0
	fcvt.s.d	$fs0, $fs0
	addi.d	$a0, $s2, -4
	sub.d	$s2, $a0, $s3
	bgtz	$s2, .LBB13_19
	b	.LBB13_34
.LBB13_27:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Read32BitsHighLow)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s2, .LBB13_32
# %bb.28:                               # %.lr.ph.i49.i15.preheader
	ori	$fp, $zero, 1024
	move	$s1, $s2
	.p2align	4, , 16
.LBB13_29:                              # %.lr.ph.i49.i15
                                        # =>This Inner Loop Header: Depth=1
	sltui	$a0, $s1, 1024
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s1, $a0
	or	$a2, $a0, $a1
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	sub.d	$s1, $s1, $a0
	bgtz	$s1, .LBB13_29
	b	.LBB13_33
.LBB13_30:
	ori	$a0, $zero, 16
	bne	$fp, $a0, .LBB13_43
# %bb.31:
	bstrpick.d	$a0, $s2, 15, 0
	pcalau12i	$a1, %pc_hi20(num_channels)
	st.w	$a0, $a1, %pc_lo12(num_channels)
	pcalau12i	$a1, %pc_hi20(samp_freq)
	st.w	$s1, $a1, %pc_lo12(samp_freq)
	slli.d	$a0, $a0, 1
	div.w	$a0, $s3, $a0
	pcalau12i	$a1, %pc_hi20(num_samples)
	st.d	$a0, $a1, %pc_lo12(num_samples)
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 120
	b	.LBB13_42
.LBB13_32:
	move	$s1, $s2
.LBB13_33:                              # %fskip.exit51.i12
	slli.d	$a0, $s1, 32
	beqz	$a0, .LBB13_37
.LBB13_34:                              # %parse_wave_header.exit.thread
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 120
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB13_36
.LBB13_35:                              # %.thread26
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 120
.LBB13_36:                              # %.thread
	fld.d	$fs0, $sp, 1056                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1144                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1152
	ret
.LBB13_37:
	ori	$a0, $zero, 16
	bne	$s5, $a0, .LBB13_44
# %bb.38:
	addi.d	$a0, $s7, -1
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB13_45
# %bb.39:
	bnez	$s3, .LBB13_46
# %bb.40:
	bnez	$s2, .LBB13_47
# %bb.41:
	bstrpick.d	$a0, $s7, 15, 0
	pcalau12i	$a1, %pc_hi20(num_channels)
	st.w	$a0, $a1, %pc_lo12(num_channels)
	ftintrz.w.s	$fa0, $fs0
	movfr2gr.s	$a0, $fa0
	pcalau12i	$a1, %pc_hi20(samp_freq)
	st.w	$a0, $a1, %pc_lo12(samp_freq)
	pcalau12i	$a0, %pc_hi20(num_samples)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(num_samples)
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 120
	ori	$a0, $zero, 1
.LBB13_42:                              # %.thread
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.b	$a0, $a1, %pc_lo12(count_samples_carefully)
	b	.LBB13_36
.LBB13_43:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	bstrpick.d	$a2, $fp, 15, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB13_44:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a3, $a2, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB13_45:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB13_46:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	b	.LBB13_48
.LBB13_47:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
.LBB13_48:
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a3, $a2, %pc_lo12(.L.str.10)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	parse_file_header, .Lfunc_end13-parse_file_header
                                        # -- End function
	.type	count_samples_carefully,@object # @count_samples_carefully
	.local	count_samples_carefully
	.comm	count_samples_carefully,1,4
	.type	get_audio.num_samples_read,@object # @get_audio.num_samples_read
	.local	get_audio.num_samples_read
	.comm	get_audio.num_samples_read,8,8
	.type	num_samples,@object             # @num_samples
	.local	num_samples
	.comm	num_samples,8,8
	.type	musicin,@object                 # @musicin
	.local	musicin
	.comm	musicin,8,8
	.type	input_bitrate,@object           # @input_bitrate
	.local	input_bitrate
	.comm	input_bitrate,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not close audio input file\n"
	.size	.L.str, 34

	.type	samp_freq,@object               # @samp_freq
	.local	samp_freq
	.comm	samp_freq,4,4
	.type	num_channels,@object            # @num_channels
	.local	num_channels
	.comm	num_channels,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"rb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Could not find \"%s\".\n"
	.size	.L.str.3, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Error reading headers in mp3 input file %s.\n"
	.size	.L.str.4, 45

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Assuming raw pcm input file"
	.size	.L.str.5, 28

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" : Forcing byte-swapping\n"
	.size	.L.str.6, 26

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Error reading input file\n"
	.size	.L.str.8, 26

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"byte order not determined\n"
	.size	.L.str.9, 27

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"name"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%d-bit sample-size is not supported!\n"
	.size	.L.str.11, 38

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Sound data is not %d bits in \"%s\".\n"
	.size	.L.str.13, 36

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Sound data is not mono or stereo in \"%s\".\n"
	.size	.L.str.14, 43

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Block size is not %d bytes in \"%s\".\n"
	.size	.L.str.15, 37

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Block offset is not %d bytes in \"%s\".\n"
	.size	.L.str.16, 39

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym num_samples
	.addrsig_sym input_bitrate
	.addrsig_sym samp_freq
	.addrsig_sym num_channels
