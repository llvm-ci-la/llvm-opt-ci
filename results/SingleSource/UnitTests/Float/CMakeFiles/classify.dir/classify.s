	.file	"classify.c"
	.text
	.globl	test_float                      # -- Begin function test_float
	.p2align	5
	.type	test_float,@function
test_float:                             # @test_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(FloatQNaNValues)
	addi.d	$fp, $a0, %pc_lo12(FloatQNaNValues)
	fld.s	$fa0, $fp, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_149
# %bb.1:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	andi	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_135
# %bb.2:
	pcalau12i	$a0, %pc_hi20(FloatQNaNValues)
	addi.d	$a0, $a0, %pc_lo12(FloatQNaNValues)
	fld.s	$fa0, $a0, 4
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_136
# %bb.3:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_137
# %bb.4:
	fld.s	$fa0, $a0, 8
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_138
# %bb.5:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_139
# %bb.6:
	fld.s	$fa0, $a0, 12
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_140
# %bb.7:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_141
# %bb.8:
	fld.s	$fa0, $a0, 16
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_142
# %bb.9:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_143
# %bb.10:
	fld.s	$fa0, $a0, 20
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_144
# %bb.11:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_145
# %bb.12:
	fld.s	$fa0, $a0, 24
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_146
# %bb.13:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_147
# %bb.14:
	fld.s	$fa0, $a0, 28
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_148
# %bb.15:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_150
# %bb.16:                               # %.preheader161.preheader
	pcalau12i	$a0, %pc_hi20(FloatSNaNValues)
	addi.d	$fp, $a0, %pc_lo12(FloatSNaNValues)
	fld.s	$fa0, $fp, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_162
# %bb.17:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	andi	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_152
# %bb.18:                               # %.preheader161.1
	pcalau12i	$a0, %pc_hi20(FloatSNaNValues)
	addi.d	$a0, $a0, %pc_lo12(FloatSNaNValues)
	fld.s	$fa0, $a0, 4
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_153
# %bb.19:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_154
# %bb.20:                               # %.preheader161.2
	fld.s	$fa0, $a0, 8
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_155
# %bb.21:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_156
# %bb.22:                               # %.preheader161.3
	fld.s	$fa0, $a0, 12
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_157
# %bb.23:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_158
# %bb.24:                               # %.preheader161.4
	fld.s	$fa0, $a0, 16
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_159
# %bb.25:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_160
# %bb.26:                               # %.preheader161.5
	fld.s	$fa0, $a0, 20
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_161
# %bb.27:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_163
# %bb.28:                               # %.preheader160.preheader
	pcalau12i	$a0, %pc_hi20(FloatInfValues)
	addi.d	$fp, $a0, %pc_lo12(FloatInfValues)
	fld.s	$fa0, $fp, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_167
# %bb.29:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_165
# %bb.30:                               # %.preheader160.1
	pcalau12i	$a0, %pc_hi20(FloatInfValues)
	addi.d	$a0, $a0, %pc_lo12(FloatInfValues)
	fld.s	$fa0, $a0, 4
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_166
# %bb.31:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_168
# %bb.32:                               # %.preheader159.preheader
	pcalau12i	$a0, %pc_hi20(FloatZeroValues)
	addi.d	$fp, $a0, %pc_lo12(FloatZeroValues)
	fld.s	$fa0, $fp, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_174
# %bb.33:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	andi	$a1, $a0, 68
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_170
# %bb.34:
	andi	$a1, $a0, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_171
# %bb.35:
	andi	$a0, $a0, 272
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_172
# %bb.36:                               # %.preheader159.1
	pcalau12i	$a0, %pc_hi20(FloatZeroValues)
	addi.d	$a0, $a0, %pc_lo12(FloatZeroValues)
	fld.s	$fa0, $a0, 4
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_173
# %bb.37:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_175
# %bb.38:
	andi	$a2, $a1, 136
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_177
# %bb.39:
	andi	$a1, $a1, 272
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_179
# %bb.40:                               # %.preheader158.preheader
	pcalau12i	$a0, %pc_hi20(FloatDenormValues)
	addi.d	$fp, $a0, %pc_lo12(FloatDenormValues)
	fld.s	$fa0, $fp, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_193
# %bb.41:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	andi	$a1, $a0, 68
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_181
# %bb.42:
	andi	$a1, $a0, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_182
# %bb.43:
	andi	$a0, $a0, 272
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_183
# %bb.44:                               # %.preheader158.1
	pcalau12i	$a0, %pc_hi20(FloatDenormValues)
	addi.d	$a0, $a0, %pc_lo12(FloatDenormValues)
	fld.s	$fa0, $a0, 4
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_184
# %bb.45:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_185
# %bb.46:
	andi	$a2, $a1, 136
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_186
# %bb.47:
	andi	$a1, $a1, 272
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_187
# %bb.48:                               # %.preheader158.2
	fld.s	$fa0, $a0, 8
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_188
# %bb.49:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_189
# %bb.50:
	andi	$a2, $a1, 136
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_190
# %bb.51:
	andi	$a1, $a1, 272
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_191
# %bb.52:                               # %.preheader158.3
	fld.s	$fa0, $a0, 12
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_192
# %bb.53:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_194
# %bb.54:
	andi	$a2, $a1, 136
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_196
# %bb.55:
	andi	$a1, $a1, 272
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_198
# %bb.56:                               # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(FloatNormalValues)
	addi.d	$fp, $a0, %pc_lo12(FloatNormalValues)
	fld.s	$fa0, $fp, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_275
# %bb.57:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	andi	$a1, $a0, 68
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB0_200
# %bb.58:
	andi	$a0, $a0, 136
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_201
# %bb.59:                               # %.preheader.1
	pcalau12i	$a0, %pc_hi20(FloatNormalValues)
	addi.d	$a0, $a0, %pc_lo12(FloatNormalValues)
	fld.s	$fa0, $a0, 4
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_202
# %bb.60:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_203
# %bb.61:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_204
# %bb.62:                               # %.preheader.2
	fld.s	$fa0, $a0, 8
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_205
# %bb.63:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_206
# %bb.64:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_207
# %bb.65:                               # %.preheader.3
	fld.s	$fa0, $a0, 12
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_208
# %bb.66:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_209
# %bb.67:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_210
# %bb.68:                               # %.preheader.4
	fld.s	$fa0, $a0, 16
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_211
# %bb.69:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_212
# %bb.70:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_213
# %bb.71:                               # %.preheader.5
	fld.s	$fa0, $a0, 20
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_214
# %bb.72:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_215
# %bb.73:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_216
# %bb.74:                               # %.preheader.6
	fld.s	$fa0, $a0, 24
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_217
# %bb.75:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_218
# %bb.76:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_219
# %bb.77:                               # %.preheader.7
	fld.s	$fa0, $a0, 28
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_220
# %bb.78:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_221
# %bb.79:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_222
# %bb.80:                               # %.preheader.8
	fld.s	$fa0, $a0, 32
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_223
# %bb.81:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_224
# %bb.82:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_225
# %bb.83:                               # %.preheader.9
	fld.s	$fa0, $a0, 36
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_226
# %bb.84:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_227
# %bb.85:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_228
# %bb.86:                               # %.preheader.10
	fld.s	$fa0, $a0, 40
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_229
# %bb.87:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_230
# %bb.88:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_231
# %bb.89:                               # %.preheader.11
	fld.s	$fa0, $a0, 44
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_232
# %bb.90:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_233
# %bb.91:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_234
# %bb.92:                               # %.preheader.12
	fld.s	$fa0, $a0, 48
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_235
# %bb.93:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_236
# %bb.94:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_237
# %bb.95:                               # %.preheader.13
	fld.s	$fa0, $a0, 52
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_238
# %bb.96:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_239
# %bb.97:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_240
# %bb.98:                               # %.preheader.14
	fld.s	$fa0, $a0, 56
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_241
# %bb.99:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_242
# %bb.100:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_243
# %bb.101:                              # %.preheader.15
	fld.s	$fa0, $a0, 60
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_244
# %bb.102:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_245
# %bb.103:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_246
# %bb.104:                              # %.preheader.16
	fld.s	$fa0, $a0, 64
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_247
# %bb.105:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_248
# %bb.106:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_249
# %bb.107:                              # %.preheader.17
	fld.s	$fa0, $a0, 68
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_250
# %bb.108:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_251
# %bb.109:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_252
# %bb.110:                              # %.preheader.18
	fld.s	$fa0, $a0, 72
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_253
# %bb.111:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_254
# %bb.112:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_255
# %bb.113:                              # %.preheader.19
	fld.s	$fa0, $a0, 76
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_256
# %bb.114:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_257
# %bb.115:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_258
# %bb.116:                              # %.preheader.20
	fld.s	$fa0, $a0, 80
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_259
# %bb.117:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_260
# %bb.118:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_261
# %bb.119:                              # %.preheader.21
	fld.s	$fa0, $a0, 84
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_262
# %bb.120:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_263
# %bb.121:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_264
# %bb.122:                              # %.preheader.22
	fld.s	$fa0, $a0, 88
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_265
# %bb.123:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_266
# %bb.124:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_267
# %bb.125:                              # %.preheader.23
	fld.s	$fa0, $a0, 92
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_268
# %bb.126:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_269
# %bb.127:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_270
# %bb.128:                              # %.preheader.24
	fld.s	$fa0, $a0, 96
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_271
# %bb.129:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_272
# %bb.130:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_273
# %bb.131:                              # %.preheader.25
	fld.s	$fa0, $a0, 100
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB0_274
# %bb.132:
	fclass.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_276
# %bb.133:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_278
# %bb.134:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_135:
	pcalau12i	$a0, %pc_hi20(FloatQNaNValues)
	addi.d	$fp, $a0, %pc_lo12(FloatQNaNValues)
	b	.LBB0_151
.LBB0_136:
	addi.d	$fp, $a0, 4
	b	.LBB0_149
.LBB0_137:
	addi.d	$fp, $a0, 4
	b	.LBB0_151
.LBB0_138:
	addi.d	$fp, $a0, 8
	b	.LBB0_149
.LBB0_139:
	addi.d	$fp, $a0, 8
	b	.LBB0_151
.LBB0_140:
	addi.d	$fp, $a0, 12
	b	.LBB0_149
.LBB0_141:
	addi.d	$fp, $a0, 12
	b	.LBB0_151
.LBB0_142:
	addi.d	$fp, $a0, 16
	b	.LBB0_149
.LBB0_143:
	addi.d	$fp, $a0, 16
	b	.LBB0_151
.LBB0_144:
	addi.d	$fp, $a0, 20
	b	.LBB0_149
.LBB0_145:
	addi.d	$fp, $a0, 20
	b	.LBB0_151
.LBB0_146:
	addi.d	$fp, $a0, 24
	b	.LBB0_149
.LBB0_147:
	addi.d	$fp, $a0, 24
	b	.LBB0_151
.LBB0_148:
	addi.d	$fp, $a0, 28
.LBB0_149:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 100
	b	.LBB0_280
.LBB0_150:
	addi.d	$fp, $a0, 28
.LBB0_151:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 101
	b	.LBB0_280
.LBB0_152:
	pcalau12i	$a0, %pc_hi20(FloatSNaNValues)
	addi.d	$fp, $a0, %pc_lo12(FloatSNaNValues)
	b	.LBB0_164
.LBB0_153:
	addi.d	$fp, $a0, 4
	b	.LBB0_162
.LBB0_154:
	addi.d	$fp, $a0, 4
	b	.LBB0_164
.LBB0_155:
	addi.d	$fp, $a0, 8
	b	.LBB0_162
.LBB0_156:
	addi.d	$fp, $a0, 8
	b	.LBB0_164
.LBB0_157:
	addi.d	$fp, $a0, 12
	b	.LBB0_162
.LBB0_158:
	addi.d	$fp, $a0, 12
	b	.LBB0_164
.LBB0_159:
	addi.d	$fp, $a0, 16
	b	.LBB0_162
.LBB0_160:
	addi.d	$fp, $a0, 16
	b	.LBB0_164
.LBB0_161:
	addi.d	$fp, $a0, 20
.LBB0_162:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 112
	b	.LBB0_280
.LBB0_163:
	addi.d	$fp, $a0, 20
.LBB0_164:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 113
	b	.LBB0_280
.LBB0_165:
	pcalau12i	$a0, %pc_hi20(FloatInfValues)
	addi.d	$fp, $a0, %pc_lo12(FloatInfValues)
	b	.LBB0_169
.LBB0_166:
	addi.d	$fp, $a0, 4
.LBB0_167:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 124
	b	.LBB0_280
.LBB0_168:
	addi.d	$fp, $a0, 4
.LBB0_169:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 126
	b	.LBB0_280
.LBB0_170:
	pcalau12i	$a0, %pc_hi20(FloatZeroValues)
	addi.d	$fp, $a0, %pc_lo12(FloatZeroValues)
	b	.LBB0_176
.LBB0_171:
	pcalau12i	$a0, %pc_hi20(FloatZeroValues)
	addi.d	$fp, $a0, %pc_lo12(FloatZeroValues)
	b	.LBB0_178
.LBB0_172:
	pcalau12i	$a0, %pc_hi20(FloatZeroValues)
	addi.d	$fp, $a0, %pc_lo12(FloatZeroValues)
	b	.LBB0_180
.LBB0_173:
	addi.d	$fp, $a0, 4
.LBB0_174:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 136
	b	.LBB0_280
.LBB0_175:
	addi.d	$fp, $a0, 4
.LBB0_176:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 138
	b	.LBB0_280
.LBB0_177:
	addi.d	$fp, $a0, 4
.LBB0_178:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 140
	b	.LBB0_280
.LBB0_179:
	addi.d	$fp, $a0, 4
.LBB0_180:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 141
	b	.LBB0_280
.LBB0_181:
	pcalau12i	$a0, %pc_hi20(FloatDenormValues)
	addi.d	$fp, $a0, %pc_lo12(FloatDenormValues)
	b	.LBB0_195
.LBB0_182:
	pcalau12i	$a0, %pc_hi20(FloatDenormValues)
	addi.d	$fp, $a0, %pc_lo12(FloatDenormValues)
	b	.LBB0_197
.LBB0_183:
	pcalau12i	$a0, %pc_hi20(FloatDenormValues)
	addi.d	$fp, $a0, %pc_lo12(FloatDenormValues)
	b	.LBB0_199
.LBB0_184:
	addi.d	$fp, $a0, 4
	b	.LBB0_193
.LBB0_185:
	addi.d	$fp, $a0, 4
	b	.LBB0_195
.LBB0_186:
	addi.d	$fp, $a0, 4
	b	.LBB0_197
.LBB0_187:
	addi.d	$fp, $a0, 4
	b	.LBB0_199
.LBB0_188:
	addi.d	$fp, $a0, 8
	b	.LBB0_193
.LBB0_189:
	addi.d	$fp, $a0, 8
	b	.LBB0_195
.LBB0_190:
	addi.d	$fp, $a0, 8
	b	.LBB0_197
.LBB0_191:
	addi.d	$fp, $a0, 8
	b	.LBB0_199
.LBB0_192:
	addi.d	$fp, $a0, 12
.LBB0_193:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 148
	b	.LBB0_280
.LBB0_194:
	addi.d	$fp, $a0, 12
.LBB0_195:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 150
	b	.LBB0_280
.LBB0_196:
	addi.d	$fp, $a0, 12
.LBB0_197:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 152
	b	.LBB0_280
.LBB0_198:
	addi.d	$fp, $a0, 12
.LBB0_199:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 153
	b	.LBB0_280
.LBB0_200:
	pcalau12i	$a0, %pc_hi20(FloatNormalValues)
	addi.d	$fp, $a0, %pc_lo12(FloatNormalValues)
	b	.LBB0_277
.LBB0_201:
	pcalau12i	$a0, %pc_hi20(FloatNormalValues)
	addi.d	$fp, $a0, %pc_lo12(FloatNormalValues)
	b	.LBB0_279
.LBB0_202:
	addi.d	$fp, $a0, 4
	b	.LBB0_275
.LBB0_203:
	addi.d	$fp, $a0, 4
	b	.LBB0_277
.LBB0_204:
	addi.d	$fp, $a0, 4
	b	.LBB0_279
.LBB0_205:
	addi.d	$fp, $a0, 8
	b	.LBB0_275
.LBB0_206:
	addi.d	$fp, $a0, 8
	b	.LBB0_277
.LBB0_207:
	addi.d	$fp, $a0, 8
	b	.LBB0_279
.LBB0_208:
	addi.d	$fp, $a0, 12
	b	.LBB0_275
.LBB0_209:
	addi.d	$fp, $a0, 12
	b	.LBB0_277
.LBB0_210:
	addi.d	$fp, $a0, 12
	b	.LBB0_279
.LBB0_211:
	addi.d	$fp, $a0, 16
	b	.LBB0_275
.LBB0_212:
	addi.d	$fp, $a0, 16
	b	.LBB0_277
.LBB0_213:
	addi.d	$fp, $a0, 16
	b	.LBB0_279
.LBB0_214:
	addi.d	$fp, $a0, 20
	b	.LBB0_275
.LBB0_215:
	addi.d	$fp, $a0, 20
	b	.LBB0_277
.LBB0_216:
	addi.d	$fp, $a0, 20
	b	.LBB0_279
.LBB0_217:
	addi.d	$fp, $a0, 24
	b	.LBB0_275
.LBB0_218:
	addi.d	$fp, $a0, 24
	b	.LBB0_277
.LBB0_219:
	addi.d	$fp, $a0, 24
	b	.LBB0_279
.LBB0_220:
	addi.d	$fp, $a0, 28
	b	.LBB0_275
.LBB0_221:
	addi.d	$fp, $a0, 28
	b	.LBB0_277
.LBB0_222:
	addi.d	$fp, $a0, 28
	b	.LBB0_279
.LBB0_223:
	addi.d	$fp, $a0, 32
	b	.LBB0_275
.LBB0_224:
	addi.d	$fp, $a0, 32
	b	.LBB0_277
.LBB0_225:
	addi.d	$fp, $a0, 32
	b	.LBB0_279
.LBB0_226:
	addi.d	$fp, $a0, 36
	b	.LBB0_275
.LBB0_227:
	addi.d	$fp, $a0, 36
	b	.LBB0_277
.LBB0_228:
	addi.d	$fp, $a0, 36
	b	.LBB0_279
.LBB0_229:
	addi.d	$fp, $a0, 40
	b	.LBB0_275
.LBB0_230:
	addi.d	$fp, $a0, 40
	b	.LBB0_277
.LBB0_231:
	addi.d	$fp, $a0, 40
	b	.LBB0_279
.LBB0_232:
	addi.d	$fp, $a0, 44
	b	.LBB0_275
.LBB0_233:
	addi.d	$fp, $a0, 44
	b	.LBB0_277
.LBB0_234:
	addi.d	$fp, $a0, 44
	b	.LBB0_279
.LBB0_235:
	addi.d	$fp, $a0, 48
	b	.LBB0_275
.LBB0_236:
	addi.d	$fp, $a0, 48
	b	.LBB0_277
.LBB0_237:
	addi.d	$fp, $a0, 48
	b	.LBB0_279
.LBB0_238:
	addi.d	$fp, $a0, 52
	b	.LBB0_275
.LBB0_239:
	addi.d	$fp, $a0, 52
	b	.LBB0_277
.LBB0_240:
	addi.d	$fp, $a0, 52
	b	.LBB0_279
.LBB0_241:
	addi.d	$fp, $a0, 56
	b	.LBB0_275
.LBB0_242:
	addi.d	$fp, $a0, 56
	b	.LBB0_277
.LBB0_243:
	addi.d	$fp, $a0, 56
	b	.LBB0_279
.LBB0_244:
	addi.d	$fp, $a0, 60
	b	.LBB0_275
.LBB0_245:
	addi.d	$fp, $a0, 60
	b	.LBB0_277
.LBB0_246:
	addi.d	$fp, $a0, 60
	b	.LBB0_279
.LBB0_247:
	addi.d	$fp, $a0, 64
	b	.LBB0_275
.LBB0_248:
	addi.d	$fp, $a0, 64
	b	.LBB0_277
.LBB0_249:
	addi.d	$fp, $a0, 64
	b	.LBB0_279
.LBB0_250:
	addi.d	$fp, $a0, 68
	b	.LBB0_275
.LBB0_251:
	addi.d	$fp, $a0, 68
	b	.LBB0_277
.LBB0_252:
	addi.d	$fp, $a0, 68
	b	.LBB0_279
.LBB0_253:
	addi.d	$fp, $a0, 72
	b	.LBB0_275
.LBB0_254:
	addi.d	$fp, $a0, 72
	b	.LBB0_277
.LBB0_255:
	addi.d	$fp, $a0, 72
	b	.LBB0_279
.LBB0_256:
	addi.d	$fp, $a0, 76
	b	.LBB0_275
.LBB0_257:
	addi.d	$fp, $a0, 76
	b	.LBB0_277
.LBB0_258:
	addi.d	$fp, $a0, 76
	b	.LBB0_279
.LBB0_259:
	addi.d	$fp, $a0, 80
	b	.LBB0_275
.LBB0_260:
	addi.d	$fp, $a0, 80
	b	.LBB0_277
.LBB0_261:
	addi.d	$fp, $a0, 80
	b	.LBB0_279
.LBB0_262:
	addi.d	$fp, $a0, 84
	b	.LBB0_275
.LBB0_263:
	addi.d	$fp, $a0, 84
	b	.LBB0_277
.LBB0_264:
	addi.d	$fp, $a0, 84
	b	.LBB0_279
.LBB0_265:
	addi.d	$fp, $a0, 88
	b	.LBB0_275
.LBB0_266:
	addi.d	$fp, $a0, 88
	b	.LBB0_277
.LBB0_267:
	addi.d	$fp, $a0, 88
	b	.LBB0_279
.LBB0_268:
	addi.d	$fp, $a0, 92
	b	.LBB0_275
.LBB0_269:
	addi.d	$fp, $a0, 92
	b	.LBB0_277
.LBB0_270:
	addi.d	$fp, $a0, 92
	b	.LBB0_279
.LBB0_271:
	addi.d	$fp, $a0, 96
	b	.LBB0_275
.LBB0_272:
	addi.d	$fp, $a0, 96
	b	.LBB0_277
.LBB0_273:
	addi.d	$fp, $a0, 96
	b	.LBB0_279
.LBB0_274:
	addi.d	$fp, $a0, 100
.LBB0_275:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 160
	b	.LBB0_280
.LBB0_276:
	addi.d	$fp, $a0, 100
.LBB0_277:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 162
	b	.LBB0_280
.LBB0_278:
	addi.d	$fp, $a0, 100
.LBB0_279:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ori	$a3, $zero, 164
.LBB0_280:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.50)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.50)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	test_float, .Lfunc_end0-test_float
                                        # -- End function
	.globl	test_fcSNan_float               # -- Begin function test_fcSNan_float
	.p2align	5
	.type	test_fcSNan_float,@function
test_fcSNan_float:                      # @test_fcSNan_float
# %bb.0:
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_2
# %bb.1:
	ret
.LBB1_2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	test_fcSNan_float, .Lfunc_end1-test_fcSNan_float
                                        # -- End function
	.globl	test_fcQNan_float               # -- Begin function test_fcQNan_float
	.p2align	5
	.type	test_fcQNan_float,@function
test_fcQNan_float:                      # @test_fcQNan_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_3
# %bb.1:
	andi	$a0, $a0, 2
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_4
# %bb.2:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_3:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_4:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	test_fcQNan_float, .Lfunc_end2-test_fcQNan_float
                                        # -- End function
	.globl	test_fcPosInf_float             # -- Begin function test_fcPosInf_float
	.p2align	5
	.type	test_fcPosInf_float,@function
test_fcPosInf_float:                    # @test_fcPosInf_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_4
# %bb.1:
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_5
# %bb.2:
	andi	$a0, $a0, 64
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_6
# %bb.3:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_4:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 512
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_5:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 512
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_6:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a3, $zero, 512
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	test_fcPosInf_float, .Lfunc_end3-test_fcPosInf_float
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function test_fcNegInf_float
.LCPI4_0:
	.word	0x7f800000                      # float +Inf
	.text
	.globl	test_fcNegInf_float
	.p2align	5
	.type	test_fcNegInf_float,@function
test_fcNegInf_float:                    # @test_fcNegInf_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_5
# %bb.1:
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB4_6
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI4_0)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB4_7
# %bb.3:
	andi	$a0, $a0, 4
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_8
# %bb.4:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_5:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_6:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_7:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu12i.w	$a2, 522240
	ori	$a3, $zero, 4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_8:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	test_fcNegInf_float, .Lfunc_end4-test_fcNegInf_float
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function test_fcPosNormal_float
.LCPI5_0:
	.word	0x7f800000                      # float +Inf
.LCPI5_1:
	.word	0xff800000                      # float -Inf
	.text
	.globl	test_fcPosNormal_float
	.p2align	5
	.type	test_fcPosNormal_float,@function
test_fcPosNormal_float:                 # @test_fcPosNormal_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_6
# %bb.1:
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB5_7
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI5_0)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB5_8
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI5_1)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB5_9
# %bb.4:
	andi	$a0, $a0, 128
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_10
# %bb.5:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_6:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB5_7:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB5_8:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu12i.w	$a2, 522240
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB5_9:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu12i.w	$a2, -2048
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB5_10:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	test_fcPosNormal_float, .Lfunc_end5-test_fcPosNormal_float
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function test_fcNegNormal_float
.LCPI6_0:
	.word	0x7f800000                      # float +Inf
.LCPI6_1:
	.word	0xff800000                      # float -Inf
	.text
	.globl	test_fcNegNormal_float
	.p2align	5
	.type	test_fcNegNormal_float,@function
test_fcNegNormal_float:                 # @test_fcNegNormal_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_7
# %bb.1:
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_8
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI6_0)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB6_9
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI6_1)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB6_10
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_11
# %bb.5:
	andi	$a0, $a0, 8
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB6_12
# %bb.6:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_7:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_8:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_9:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu12i.w	$a2, 522240
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_10:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu12i.w	$a2, -2048
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_11:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_12:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	test_fcNegNormal_float, .Lfunc_end6-test_fcNegNormal_float
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function test_fcPosSubnormal_float
.LCPI7_0:
	.word	0x7f800000                      # float +Inf
.LCPI7_1:
	.word	0xff800000                      # float -Inf
	.text
	.globl	test_fcPosSubnormal_float
	.p2align	5
	.type	test_fcPosSubnormal_float,@function
test_fcPosSubnormal_float:              # @test_fcPosSubnormal_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_8
# %bb.1:
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB7_9
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI7_0)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB7_10
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI7_1)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB7_11
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_12
# %bb.5:
	andi	$a1, $a0, 816
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_13
# %bb.6:
	andi	$a0, $a0, 256
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_14
# %bb.7:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_8:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_9:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_10:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu12i.w	$a2, 522240
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_11:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu12i.w	$a2, -2048
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_12:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_13:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_14:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	test_fcPosSubnormal_float, .Lfunc_end7-test_fcPosSubnormal_float
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function test_fcNegSubnormal_float
.LCPI8_0:
	.word	0x7f800000                      # float +Inf
.LCPI8_1:
	.word	0xff800000                      # float -Inf
	.text
	.globl	test_fcNegSubnormal_float
	.p2align	5
	.type	test_fcNegSubnormal_float,@function
test_fcNegSubnormal_float:              # @test_fcNegSubnormal_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB8_9
# %bb.1:
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB8_10
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI8_0)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB8_11
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI8_1)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI8_1)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB8_12
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB8_13
# %bb.5:
	andi	$a1, $a0, 816
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB8_14
# %bb.6:
	andi	$a1, $a0, 560
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB8_15
# %bb.7:
	andi	$a0, $a0, 16
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB8_16
# %bb.8:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB8_9:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_10:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_11:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu12i.w	$a2, 522240
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_12:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu12i.w	$a2, -2048
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_13:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_14:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_15:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_16:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	test_fcNegSubnormal_float, .Lfunc_end8-test_fcNegSubnormal_float
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function test_fcPosZero_float
.LCPI9_0:
	.word	0x7f800000                      # float +Inf
.LCPI9_1:
	.word	0xff800000                      # float -Inf
	.text
	.globl	test_fcPosZero_float
	.p2align	5
	.type	test_fcPosZero_float,@function
test_fcPosZero_float:                   # @test_fcPosZero_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_10
# %bb.1:
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB9_11
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI9_0)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_12
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI9_1)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI9_1)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_13
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_14
# %bb.5:
	andi	$a1, $a0, 816
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_15
# %bb.6:
	andi	$a1, $a0, 560
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_16
# %bb.7:
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_17
# %bb.8:
	andi	$a0, $a0, 512
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB9_18
# %bb.9:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_10:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB9_11:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB9_12:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu12i.w	$a2, 522240
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB9_13:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu12i.w	$a2, -2048
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB9_14:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB9_15:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB9_16:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB9_17:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB9_18:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	test_fcPosZero_float, .Lfunc_end9-test_fcPosZero_float
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function test_fcNegZero_float
.LCPI10_0:
	.word	0x7f800000                      # float +Inf
.LCPI10_1:
	.word	0xff800000                      # float -Inf
	.text
	.globl	test_fcNegZero_float
	.p2align	5
	.type	test_fcNegZero_float,@function
test_fcNegZero_float:                   # @test_fcNegZero_float
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB10_10
# %bb.1:
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB10_11
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI10_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI10_0)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB10_12
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI10_1)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI10_1)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB10_13
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB10_14
# %bb.5:
	andi	$a1, $a0, 816
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB10_15
# %bb.6:
	andi	$a1, $a0, 560
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB10_16
# %bb.7:
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB10_17
# %bb.8:
	andi	$a0, $a0, 32
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_18
# %bb.9:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_10:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_11:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_12:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu12i.w	$a2, 522240
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_13:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu12i.w	$a2, -2048
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_14:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_15:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_16:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_17:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_18:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	test_fcNegZero_float, .Lfunc_end10-test_fcNegZero_float
                                        # -- End function
	.globl	test_isfpclass_float            # -- Begin function test_isfpclass_float
	.p2align	5
	.type	test_isfpclass_float,@function
test_isfpclass_float:                   # @test_isfpclass_float
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(FloatZeroValues)
	addi.d	$fp, $a0, %pc_lo12(FloatZeroValues)
	fld.s	$fa0, $fp, 0
	movfr2gr.s	$a0, $fa0
	bltz	$a0, .LBB11_3
# %bb.1:
	pcaddu18i	$ra, %call36(test_fcPosZero_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	movfr2gr.s	$a0, $fa0
	bltz	$a0, .LBB11_4
.LBB11_2:
	pcaddu18i	$ra, %call36(test_fcPosZero_float)
	jirl	$ra, $ra, 0
	b	.LBB11_5
.LBB11_3:
	pcaddu18i	$ra, %call36(test_fcNegZero_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	movfr2gr.s	$a0, $fa0
	bgez	$a0, .LBB11_2
.LBB11_4:
	pcaddu18i	$ra, %call36(test_fcNegZero_float)
	jirl	$ra, $ra, 0
.LBB11_5:                               # %.preheader50.preheader
	pcalau12i	$a0, %pc_hi20(FloatDenormValues)
	addi.d	$fp, $a0, %pc_lo12(FloatDenormValues)
	fld.s	$fa0, $fp, 0
	movgr2fr.w	$fs0, $zero
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB11_10
# %bb.6:
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_11
.LBB11_7:
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 8
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_12
.LBB11_8:
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 12
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_13
.LBB11_9:
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_float)
	jirl	$ra, $ra, 0
	b	.LBB11_14
.LBB11_10:
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_7
.LBB11_11:
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 8
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_8
.LBB11_12:
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 12
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_9
.LBB11_13:
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_float)
	jirl	$ra, $ra, 0
.LBB11_14:                              # %.preheader49.preheader
	pcalau12i	$a0, %pc_hi20(FloatNormalValues)
	addi.d	$fp, $a0, %pc_lo12(FloatNormalValues)
	fld.s	$fa0, $fp, 0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB11_41
# %bb.15:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_42
.LBB11_16:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 8
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_43
.LBB11_17:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 12
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_44
.LBB11_18:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 16
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_45
.LBB11_19:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 20
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_46
.LBB11_20:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 24
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_47
.LBB11_21:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 28
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_48
.LBB11_22:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 32
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_49
.LBB11_23:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 36
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_50
.LBB11_24:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 40
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_51
.LBB11_25:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 44
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_52
.LBB11_26:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 48
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_53
.LBB11_27:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 52
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_54
.LBB11_28:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 56
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_55
.LBB11_29:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 60
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_56
.LBB11_30:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 64
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_57
.LBB11_31:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 68
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_58
.LBB11_32:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 72
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_59
.LBB11_33:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 76
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_60
.LBB11_34:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 80
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_61
.LBB11_35:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 84
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_62
.LBB11_36:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 88
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_63
.LBB11_37:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 92
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_64
.LBB11_38:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 96
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_65
.LBB11_39:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 100
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_66
.LBB11_40:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	b	.LBB11_67
.LBB11_41:
	pcaddu18i	$ra, %call36(test_fcPosNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_16
.LBB11_42:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 8
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_17
.LBB11_43:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 12
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_18
.LBB11_44:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 16
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_19
.LBB11_45:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 20
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_20
.LBB11_46:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 24
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_21
.LBB11_47:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 28
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_22
.LBB11_48:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 32
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_23
.LBB11_49:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 36
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_24
.LBB11_50:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 40
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_25
.LBB11_51:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 44
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_26
.LBB11_52:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 48
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_27
.LBB11_53:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 52
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_28
.LBB11_54:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 56
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_29
.LBB11_55:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 60
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_30
.LBB11_56:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 64
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_31
.LBB11_57:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 68
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_32
.LBB11_58:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 72
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_33
.LBB11_59:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 76
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_34
.LBB11_60:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 80
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_35
.LBB11_61:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 84
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_36
.LBB11_62:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 88
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_37
.LBB11_63:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 92
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_38
.LBB11_64:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 96
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_39
.LBB11_65:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 100
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB11_40
.LBB11_66:
	pcaddu18i	$ra, %call36(test_fcNegNormal_float)
	jirl	$ra, $ra, 0
.LBB11_67:                              # %.preheader48.preheader
	pcalau12i	$a0, %pc_hi20(FloatInfValues)
	addi.d	$fp, $a0, %pc_lo12(FloatInfValues)
	fld.s	$fa0, $fp, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB11_70
# %bb.68:
	pcaddu18i	$ra, %call36(test_fcPosInf_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	fcmp.clt.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB11_71
.LBB11_69:
	pcaddu18i	$ra, %call36(test_fcNegInf_float)
	jirl	$ra, $ra, 0
	b	.LBB11_72
.LBB11_70:
	pcaddu18i	$ra, %call36(test_fcNegInf_float)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	fcmp.clt.s	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB11_69
.LBB11_71:
	pcaddu18i	$ra, %call36(test_fcPosInf_float)
	jirl	$ra, $ra, 0
.LBB11_72:                              # %.preheader47.preheader
	pcalau12i	$a0, %pc_hi20(FloatQNaNValues)
	addi.d	$a0, $a0, %pc_lo12(FloatQNaNValues)
	fld.s	$fa0, $a0, 0
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_95
# %bb.73:                               # %test_fcQNan_float.exit
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_96
# %bb.74:                               # %.preheader47.1
	fld.s	$fa0, $a0, 4
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_95
# %bb.75:                               # %test_fcQNan_float.exit.1
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_96
# %bb.76:                               # %.preheader47.2
	fld.s	$fa0, $a0, 8
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_95
# %bb.77:                               # %test_fcQNan_float.exit.2
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_96
# %bb.78:                               # %.preheader47.3
	fld.s	$fa0, $a0, 12
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_95
# %bb.79:                               # %test_fcQNan_float.exit.3
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_96
# %bb.80:                               # %.preheader47.4
	fld.s	$fa0, $a0, 16
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_95
# %bb.81:                               # %test_fcQNan_float.exit.4
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_96
# %bb.82:                               # %.preheader47.5
	fld.s	$fa0, $a0, 20
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_95
# %bb.83:                               # %test_fcQNan_float.exit.5
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_96
# %bb.84:                               # %.preheader47.6
	fld.s	$fa0, $a0, 24
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_95
# %bb.85:                               # %test_fcQNan_float.exit.6
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_96
# %bb.86:                               # %.preheader47.7
	fld.s	$fa0, $a0, 28
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_95
# %bb.87:                               # %test_fcQNan_float.exit.7
	andi	$a0, $a0, 2
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_96
# %bb.88:                               # %test_fcSNan_float.exit.preheader
	pcalau12i	$a0, %pc_hi20(FloatSNaNValues)
	addi.d	$a0, $a0, %pc_lo12(FloatSNaNValues)
	fld.s	$fa0, $a0, 0
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_98
# %bb.89:                               # %test_fcSNan_float.exit.1
	fld.s	$fa0, $a0, 4
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_98
# %bb.90:                               # %test_fcSNan_float.exit.2
	fld.s	$fa0, $a0, 8
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_98
# %bb.91:                               # %test_fcSNan_float.exit.3
	fld.s	$fa0, $a0, 12
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_98
# %bb.92:                               # %test_fcSNan_float.exit.4
	fld.s	$fa0, $a0, 16
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_98
# %bb.93:                               # %test_fcSNan_float.exit.5
	fld.s	$fa0, $a0, 20
	fclass.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	andi	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_98
# %bb.94:
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB11_95:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB11_97
.LBB11_96:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
.LBB11_97:
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB11_98:
	movfr2gr.s	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	test_isfpclass_float, .Lfunc_end11-test_isfpclass_float
                                        # -- End function
	.globl	test_double                     # -- Begin function test_double
	.p2align	5
	.type	test_double,@function
test_double:                            # @test_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(DoubleQNaNValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleQNaNValues)
	fld.d	$fa0, $fp, 0
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB12_149
# %bb.1:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB12_135
# %bb.2:
	pcalau12i	$a0, %pc_hi20(DoubleQNaNValues)
	addi.d	$a0, $a0, %pc_lo12(DoubleQNaNValues)
	fld.d	$fa0, $a0, 8
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_136
# %bb.3:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_137
# %bb.4:
	fld.d	$fa0, $a0, 16
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_138
# %bb.5:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_139
# %bb.6:
	fld.d	$fa0, $a0, 24
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_140
# %bb.7:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_141
# %bb.8:
	fld.d	$fa0, $a0, 32
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_142
# %bb.9:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_143
# %bb.10:
	fld.d	$fa0, $a0, 40
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_144
# %bb.11:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_145
# %bb.12:
	fld.d	$fa0, $a0, 48
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_146
# %bb.13:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_147
# %bb.14:
	fld.d	$fa0, $a0, 56
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_148
# %bb.15:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_150
# %bb.16:                               # %.preheader161.preheader
	pcalau12i	$a0, %pc_hi20(DoubleSNaNValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleSNaNValues)
	fld.d	$fa0, $fp, 0
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB12_162
# %bb.17:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_152
# %bb.18:                               # %.preheader161.1
	pcalau12i	$a0, %pc_hi20(DoubleSNaNValues)
	addi.d	$a0, $a0, %pc_lo12(DoubleSNaNValues)
	fld.d	$fa0, $a0, 8
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_153
# %bb.19:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_154
# %bb.20:                               # %.preheader161.2
	fld.d	$fa0, $a0, 16
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_155
# %bb.21:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_156
# %bb.22:                               # %.preheader161.3
	fld.d	$fa0, $a0, 24
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_157
# %bb.23:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_158
# %bb.24:                               # %.preheader161.4
	fld.d	$fa0, $a0, 32
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_159
# %bb.25:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_160
# %bb.26:                               # %.preheader161.5
	fld.d	$fa0, $a0, 40
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_161
# %bb.27:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_163
# %bb.28:                               # %.preheader160.preheader
	pcalau12i	$a0, %pc_hi20(DoubleInfValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleInfValues)
	fld.d	$fa0, $fp, 0
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_167
# %bb.29:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_165
# %bb.30:                               # %.preheader160.1
	pcalau12i	$a0, %pc_hi20(DoubleInfValues)
	addi.d	$a0, $a0, %pc_lo12(DoubleInfValues)
	fld.d	$fa0, $a0, 8
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_166
# %bb.31:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_168
# %bb.32:                               # %.preheader159.preheader
	pcalau12i	$a0, %pc_hi20(DoubleZeroValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleZeroValues)
	fld.d	$fa0, $fp, 0
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_174
# %bb.33:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	andi	$a1, $a0, 68
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_170
# %bb.34:
	andi	$a1, $a0, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_171
# %bb.35:
	andi	$a0, $a0, 272
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB12_172
# %bb.36:                               # %.preheader159.1
	pcalau12i	$a0, %pc_hi20(DoubleZeroValues)
	addi.d	$a0, $a0, %pc_lo12(DoubleZeroValues)
	fld.d	$fa0, $a0, 8
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_173
# %bb.37:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_175
# %bb.38:
	andi	$a2, $a1, 136
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_177
# %bb.39:
	andi	$a1, $a1, 272
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_179
# %bb.40:                               # %.preheader158.preheader
	pcalau12i	$a0, %pc_hi20(DoubleDenormValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleDenormValues)
	fld.d	$fa0, $fp, 0
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_193
# %bb.41:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	andi	$a1, $a0, 68
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_181
# %bb.42:
	andi	$a1, $a0, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_182
# %bb.43:
	andi	$a0, $a0, 272
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_183
# %bb.44:                               # %.preheader158.1
	pcalau12i	$a0, %pc_hi20(DoubleDenormValues)
	addi.d	$a0, $a0, %pc_lo12(DoubleDenormValues)
	fld.d	$fa0, $a0, 8
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_184
# %bb.45:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_185
# %bb.46:
	andi	$a2, $a1, 136
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_186
# %bb.47:
	andi	$a1, $a1, 272
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_187
# %bb.48:                               # %.preheader158.2
	fld.d	$fa0, $a0, 16
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_188
# %bb.49:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_189
# %bb.50:
	andi	$a2, $a1, 136
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_190
# %bb.51:
	andi	$a1, $a1, 272
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_191
# %bb.52:                               # %.preheader158.3
	fld.d	$fa0, $a0, 24
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_192
# %bb.53:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_194
# %bb.54:
	andi	$a2, $a1, 136
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_196
# %bb.55:
	andi	$a1, $a1, 272
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_198
# %bb.56:                               # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(DoubleNormalValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleNormalValues)
	fld.d	$fa0, $fp, 0
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_275
# %bb.57:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	andi	$a1, $a0, 68
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_200
# %bb.58:
	andi	$a0, $a0, 136
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_201
# %bb.59:                               # %.preheader.1
	pcalau12i	$a0, %pc_hi20(DoubleNormalValues)
	addi.d	$a0, $a0, %pc_lo12(DoubleNormalValues)
	fld.d	$fa0, $a0, 8
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_202
# %bb.60:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_203
# %bb.61:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_204
# %bb.62:                               # %.preheader.2
	fld.d	$fa0, $a0, 16
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_205
# %bb.63:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_206
# %bb.64:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_207
# %bb.65:                               # %.preheader.3
	fld.d	$fa0, $a0, 24
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_208
# %bb.66:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_209
# %bb.67:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_210
# %bb.68:                               # %.preheader.4
	fld.d	$fa0, $a0, 32
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_211
# %bb.69:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_212
# %bb.70:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_213
# %bb.71:                               # %.preheader.5
	fld.d	$fa0, $a0, 40
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_214
# %bb.72:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_215
# %bb.73:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_216
# %bb.74:                               # %.preheader.6
	fld.d	$fa0, $a0, 48
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_217
# %bb.75:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_218
# %bb.76:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_219
# %bb.77:                               # %.preheader.7
	fld.d	$fa0, $a0, 56
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_220
# %bb.78:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_221
# %bb.79:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_222
# %bb.80:                               # %.preheader.8
	fld.d	$fa0, $a0, 64
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_223
# %bb.81:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_224
# %bb.82:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_225
# %bb.83:                               # %.preheader.9
	fld.d	$fa0, $a0, 72
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_226
# %bb.84:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_227
# %bb.85:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_228
# %bb.86:                               # %.preheader.10
	fld.d	$fa0, $a0, 80
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_229
# %bb.87:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_230
# %bb.88:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_231
# %bb.89:                               # %.preheader.11
	fld.d	$fa0, $a0, 88
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_232
# %bb.90:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_233
# %bb.91:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_234
# %bb.92:                               # %.preheader.12
	fld.d	$fa0, $a0, 96
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_235
# %bb.93:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_236
# %bb.94:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_237
# %bb.95:                               # %.preheader.13
	fld.d	$fa0, $a0, 104
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_238
# %bb.96:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_239
# %bb.97:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_240
# %bb.98:                               # %.preheader.14
	fld.d	$fa0, $a0, 112
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_241
# %bb.99:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_242
# %bb.100:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_243
# %bb.101:                              # %.preheader.15
	fld.d	$fa0, $a0, 120
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_244
# %bb.102:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_245
# %bb.103:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_246
# %bb.104:                              # %.preheader.16
	fld.d	$fa0, $a0, 128
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_247
# %bb.105:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_248
# %bb.106:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_249
# %bb.107:                              # %.preheader.17
	fld.d	$fa0, $a0, 136
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_250
# %bb.108:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_251
# %bb.109:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_252
# %bb.110:                              # %.preheader.18
	fld.d	$fa0, $a0, 144
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_253
# %bb.111:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_254
# %bb.112:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_255
# %bb.113:                              # %.preheader.19
	fld.d	$fa0, $a0, 152
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_256
# %bb.114:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_257
# %bb.115:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_258
# %bb.116:                              # %.preheader.20
	fld.d	$fa0, $a0, 160
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_259
# %bb.117:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_260
# %bb.118:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_261
# %bb.119:                              # %.preheader.21
	fld.d	$fa0, $a0, 168
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_262
# %bb.120:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_263
# %bb.121:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_264
# %bb.122:                              # %.preheader.22
	fld.d	$fa0, $a0, 176
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_265
# %bb.123:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_266
# %bb.124:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_267
# %bb.125:                              # %.preheader.23
	fld.d	$fa0, $a0, 184
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_268
# %bb.126:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_269
# %bb.127:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_270
# %bb.128:                              # %.preheader.24
	fld.d	$fa0, $a0, 192
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_271
# %bb.129:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_272
# %bb.130:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_273
# %bb.131:                              # %.preheader.25
	fld.d	$fa0, $a0, 200
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB12_274
# %bb.132:
	fclass.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	andi	$a2, $a1, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_276
# %bb.133:
	andi	$a1, $a1, 136
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_278
# %bb.134:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB12_135:
	pcalau12i	$a0, %pc_hi20(DoubleQNaNValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleQNaNValues)
	b	.LBB12_151
.LBB12_136:
	addi.d	$fp, $a0, 8
	b	.LBB12_149
.LBB12_137:
	addi.d	$fp, $a0, 8
	b	.LBB12_151
.LBB12_138:
	addi.d	$fp, $a0, 16
	b	.LBB12_149
.LBB12_139:
	addi.d	$fp, $a0, 16
	b	.LBB12_151
.LBB12_140:
	addi.d	$fp, $a0, 24
	b	.LBB12_149
.LBB12_141:
	addi.d	$fp, $a0, 24
	b	.LBB12_151
.LBB12_142:
	addi.d	$fp, $a0, 32
	b	.LBB12_149
.LBB12_143:
	addi.d	$fp, $a0, 32
	b	.LBB12_151
.LBB12_144:
	addi.d	$fp, $a0, 40
	b	.LBB12_149
.LBB12_145:
	addi.d	$fp, $a0, 40
	b	.LBB12_151
.LBB12_146:
	addi.d	$fp, $a0, 48
	b	.LBB12_149
.LBB12_147:
	addi.d	$fp, $a0, 48
	b	.LBB12_151
.LBB12_148:
	addi.d	$fp, $a0, 56
.LBB12_149:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 101
	b	.LBB12_280
.LBB12_150:
	addi.d	$fp, $a0, 56
.LBB12_151:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 102
	b	.LBB12_280
.LBB12_152:
	pcalau12i	$a0, %pc_hi20(DoubleSNaNValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleSNaNValues)
	b	.LBB12_164
.LBB12_153:
	addi.d	$fp, $a0, 8
	b	.LBB12_162
.LBB12_154:
	addi.d	$fp, $a0, 8
	b	.LBB12_164
.LBB12_155:
	addi.d	$fp, $a0, 16
	b	.LBB12_162
.LBB12_156:
	addi.d	$fp, $a0, 16
	b	.LBB12_164
.LBB12_157:
	addi.d	$fp, $a0, 24
	b	.LBB12_162
.LBB12_158:
	addi.d	$fp, $a0, 24
	b	.LBB12_164
.LBB12_159:
	addi.d	$fp, $a0, 32
	b	.LBB12_162
.LBB12_160:
	addi.d	$fp, $a0, 32
	b	.LBB12_164
.LBB12_161:
	addi.d	$fp, $a0, 40
.LBB12_162:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 113
	b	.LBB12_280
.LBB12_163:
	addi.d	$fp, $a0, 40
.LBB12_164:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 114
	b	.LBB12_280
.LBB12_165:
	pcalau12i	$a0, %pc_hi20(DoubleInfValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleInfValues)
	b	.LBB12_169
.LBB12_166:
	addi.d	$fp, $a0, 8
.LBB12_167:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 125
	b	.LBB12_280
.LBB12_168:
	addi.d	$fp, $a0, 8
.LBB12_169:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 127
	b	.LBB12_280
.LBB12_170:
	pcalau12i	$a0, %pc_hi20(DoubleZeroValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleZeroValues)
	b	.LBB12_176
.LBB12_171:
	pcalau12i	$a0, %pc_hi20(DoubleZeroValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleZeroValues)
	b	.LBB12_178
.LBB12_172:
	pcalau12i	$a0, %pc_hi20(DoubleZeroValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleZeroValues)
	b	.LBB12_180
.LBB12_173:
	addi.d	$fp, $a0, 8
.LBB12_174:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 137
	b	.LBB12_280
.LBB12_175:
	addi.d	$fp, $a0, 8
.LBB12_176:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 139
	b	.LBB12_280
.LBB12_177:
	addi.d	$fp, $a0, 8
.LBB12_178:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 141
	b	.LBB12_280
.LBB12_179:
	addi.d	$fp, $a0, 8
.LBB12_180:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 142
	b	.LBB12_280
.LBB12_181:
	pcalau12i	$a0, %pc_hi20(DoubleDenormValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleDenormValues)
	b	.LBB12_195
.LBB12_182:
	pcalau12i	$a0, %pc_hi20(DoubleDenormValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleDenormValues)
	b	.LBB12_197
.LBB12_183:
	pcalau12i	$a0, %pc_hi20(DoubleDenormValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleDenormValues)
	b	.LBB12_199
.LBB12_184:
	addi.d	$fp, $a0, 8
	b	.LBB12_193
.LBB12_185:
	addi.d	$fp, $a0, 8
	b	.LBB12_195
.LBB12_186:
	addi.d	$fp, $a0, 8
	b	.LBB12_197
.LBB12_187:
	addi.d	$fp, $a0, 8
	b	.LBB12_199
.LBB12_188:
	addi.d	$fp, $a0, 16
	b	.LBB12_193
.LBB12_189:
	addi.d	$fp, $a0, 16
	b	.LBB12_195
.LBB12_190:
	addi.d	$fp, $a0, 16
	b	.LBB12_197
.LBB12_191:
	addi.d	$fp, $a0, 16
	b	.LBB12_199
.LBB12_192:
	addi.d	$fp, $a0, 24
.LBB12_193:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 149
	b	.LBB12_280
.LBB12_194:
	addi.d	$fp, $a0, 24
.LBB12_195:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 151
	b	.LBB12_280
.LBB12_196:
	addi.d	$fp, $a0, 24
.LBB12_197:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 153
	b	.LBB12_280
.LBB12_198:
	addi.d	$fp, $a0, 24
.LBB12_199:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 154
	b	.LBB12_280
.LBB12_200:
	pcalau12i	$a0, %pc_hi20(DoubleNormalValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleNormalValues)
	b	.LBB12_277
.LBB12_201:
	pcalau12i	$a0, %pc_hi20(DoubleNormalValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleNormalValues)
	b	.LBB12_279
.LBB12_202:
	addi.d	$fp, $a0, 8
	b	.LBB12_275
.LBB12_203:
	addi.d	$fp, $a0, 8
	b	.LBB12_277
.LBB12_204:
	addi.d	$fp, $a0, 8
	b	.LBB12_279
.LBB12_205:
	addi.d	$fp, $a0, 16
	b	.LBB12_275
.LBB12_206:
	addi.d	$fp, $a0, 16
	b	.LBB12_277
.LBB12_207:
	addi.d	$fp, $a0, 16
	b	.LBB12_279
.LBB12_208:
	addi.d	$fp, $a0, 24
	b	.LBB12_275
.LBB12_209:
	addi.d	$fp, $a0, 24
	b	.LBB12_277
.LBB12_210:
	addi.d	$fp, $a0, 24
	b	.LBB12_279
.LBB12_211:
	addi.d	$fp, $a0, 32
	b	.LBB12_275
.LBB12_212:
	addi.d	$fp, $a0, 32
	b	.LBB12_277
.LBB12_213:
	addi.d	$fp, $a0, 32
	b	.LBB12_279
.LBB12_214:
	addi.d	$fp, $a0, 40
	b	.LBB12_275
.LBB12_215:
	addi.d	$fp, $a0, 40
	b	.LBB12_277
.LBB12_216:
	addi.d	$fp, $a0, 40
	b	.LBB12_279
.LBB12_217:
	addi.d	$fp, $a0, 48
	b	.LBB12_275
.LBB12_218:
	addi.d	$fp, $a0, 48
	b	.LBB12_277
.LBB12_219:
	addi.d	$fp, $a0, 48
	b	.LBB12_279
.LBB12_220:
	addi.d	$fp, $a0, 56
	b	.LBB12_275
.LBB12_221:
	addi.d	$fp, $a0, 56
	b	.LBB12_277
.LBB12_222:
	addi.d	$fp, $a0, 56
	b	.LBB12_279
.LBB12_223:
	addi.d	$fp, $a0, 64
	b	.LBB12_275
.LBB12_224:
	addi.d	$fp, $a0, 64
	b	.LBB12_277
.LBB12_225:
	addi.d	$fp, $a0, 64
	b	.LBB12_279
.LBB12_226:
	addi.d	$fp, $a0, 72
	b	.LBB12_275
.LBB12_227:
	addi.d	$fp, $a0, 72
	b	.LBB12_277
.LBB12_228:
	addi.d	$fp, $a0, 72
	b	.LBB12_279
.LBB12_229:
	addi.d	$fp, $a0, 80
	b	.LBB12_275
.LBB12_230:
	addi.d	$fp, $a0, 80
	b	.LBB12_277
.LBB12_231:
	addi.d	$fp, $a0, 80
	b	.LBB12_279
.LBB12_232:
	addi.d	$fp, $a0, 88
	b	.LBB12_275
.LBB12_233:
	addi.d	$fp, $a0, 88
	b	.LBB12_277
.LBB12_234:
	addi.d	$fp, $a0, 88
	b	.LBB12_279
.LBB12_235:
	addi.d	$fp, $a0, 96
	b	.LBB12_275
.LBB12_236:
	addi.d	$fp, $a0, 96
	b	.LBB12_277
.LBB12_237:
	addi.d	$fp, $a0, 96
	b	.LBB12_279
.LBB12_238:
	addi.d	$fp, $a0, 104
	b	.LBB12_275
.LBB12_239:
	addi.d	$fp, $a0, 104
	b	.LBB12_277
.LBB12_240:
	addi.d	$fp, $a0, 104
	b	.LBB12_279
.LBB12_241:
	addi.d	$fp, $a0, 112
	b	.LBB12_275
.LBB12_242:
	addi.d	$fp, $a0, 112
	b	.LBB12_277
.LBB12_243:
	addi.d	$fp, $a0, 112
	b	.LBB12_279
.LBB12_244:
	addi.d	$fp, $a0, 120
	b	.LBB12_275
.LBB12_245:
	addi.d	$fp, $a0, 120
	b	.LBB12_277
.LBB12_246:
	addi.d	$fp, $a0, 120
	b	.LBB12_279
.LBB12_247:
	addi.d	$fp, $a0, 128
	b	.LBB12_275
.LBB12_248:
	addi.d	$fp, $a0, 128
	b	.LBB12_277
.LBB12_249:
	addi.d	$fp, $a0, 128
	b	.LBB12_279
.LBB12_250:
	addi.d	$fp, $a0, 136
	b	.LBB12_275
.LBB12_251:
	addi.d	$fp, $a0, 136
	b	.LBB12_277
.LBB12_252:
	addi.d	$fp, $a0, 136
	b	.LBB12_279
.LBB12_253:
	addi.d	$fp, $a0, 144
	b	.LBB12_275
.LBB12_254:
	addi.d	$fp, $a0, 144
	b	.LBB12_277
.LBB12_255:
	addi.d	$fp, $a0, 144
	b	.LBB12_279
.LBB12_256:
	addi.d	$fp, $a0, 152
	b	.LBB12_275
.LBB12_257:
	addi.d	$fp, $a0, 152
	b	.LBB12_277
.LBB12_258:
	addi.d	$fp, $a0, 152
	b	.LBB12_279
.LBB12_259:
	addi.d	$fp, $a0, 160
	b	.LBB12_275
.LBB12_260:
	addi.d	$fp, $a0, 160
	b	.LBB12_277
.LBB12_261:
	addi.d	$fp, $a0, 160
	b	.LBB12_279
.LBB12_262:
	addi.d	$fp, $a0, 168
	b	.LBB12_275
.LBB12_263:
	addi.d	$fp, $a0, 168
	b	.LBB12_277
.LBB12_264:
	addi.d	$fp, $a0, 168
	b	.LBB12_279
.LBB12_265:
	addi.d	$fp, $a0, 176
	b	.LBB12_275
.LBB12_266:
	addi.d	$fp, $a0, 176
	b	.LBB12_277
.LBB12_267:
	addi.d	$fp, $a0, 176
	b	.LBB12_279
.LBB12_268:
	addi.d	$fp, $a0, 184
	b	.LBB12_275
.LBB12_269:
	addi.d	$fp, $a0, 184
	b	.LBB12_277
.LBB12_270:
	addi.d	$fp, $a0, 184
	b	.LBB12_279
.LBB12_271:
	addi.d	$fp, $a0, 192
	b	.LBB12_275
.LBB12_272:
	addi.d	$fp, $a0, 192
	b	.LBB12_277
.LBB12_273:
	addi.d	$fp, $a0, 192
	b	.LBB12_279
.LBB12_274:
	addi.d	$fp, $a0, 200
.LBB12_275:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 161
	b	.LBB12_280
.LBB12_276:
	addi.d	$fp, $a0, 200
.LBB12_277:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 163
	b	.LBB12_280
.LBB12_278:
	addi.d	$fp, $a0, 200
.LBB12_279:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L.str.169)
	addi.d	$a2, $a2, %pc_lo12(.L.str.169)
	ori	$a3, $zero, 165
.LBB12_280:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.50)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.50)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	test_double, .Lfunc_end12-test_double
                                        # -- End function
	.globl	test_fcSNan_double              # -- Begin function test_fcSNan_double
	.p2align	5
	.type	test_fcSNan_double,@function
test_fcSNan_double:                     # @test_fcSNan_double
# %bb.0:
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB13_2
# %bb.1:
	ret
.LBB13_2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	test_fcSNan_double, .Lfunc_end13-test_fcSNan_double
                                        # -- End function
	.globl	test_fcQNan_double              # -- Begin function test_fcQNan_double
	.p2align	5
	.type	test_fcQNan_double,@function
test_fcQNan_double:                     # @test_fcQNan_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_3
# %bb.1:
	andi	$a0, $a0, 2
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB14_4
# %bb.2:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB14_3:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB14_4:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	test_fcQNan_double, .Lfunc_end14-test_fcQNan_double
                                        # -- End function
	.globl	test_fcPosInf_double            # -- Begin function test_fcPosInf_double
	.p2align	5
	.type	test_fcPosInf_double,@function
test_fcPosInf_double:                   # @test_fcPosInf_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB15_4
# %bb.1:
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB15_5
# %bb.2:
	andi	$a0, $a0, 64
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB15_6
# %bb.3:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB15_4:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 512
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB15_5:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 512
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB15_6:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a3, $zero, 512
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	test_fcPosInf_double, .Lfunc_end15-test_fcPosInf_double
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_fcNegInf_double
.LCPI16_0:
	.dword	0x7ff0000000000000              # double +Inf
	.text
	.globl	test_fcNegInf_double
	.p2align	5
	.type	test_fcNegInf_double,@function
test_fcNegInf_double:                   # @test_fcNegInf_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB16_5
# %bb.1:
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_6
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI16_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI16_0)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB16_7
# %bb.3:
	andi	$a0, $a0, 4
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB16_8
# %bb.4:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB16_5:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB16_6:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB16_7:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu52i.d	$a2, $zero, 2047
	ori	$a3, $zero, 4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB16_8:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	test_fcNegInf_double, .Lfunc_end16-test_fcNegInf_double
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_fcPosNormal_double
.LCPI17_0:
	.dword	0x7ff0000000000000              # double +Inf
.LCPI17_1:
	.dword	0xfff0000000000000              # double -Inf
	.text
	.globl	test_fcPosNormal_double
	.p2align	5
	.type	test_fcPosNormal_double,@function
test_fcPosNormal_double:                # @test_fcPosNormal_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB17_6
# %bb.1:
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_7
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI17_0)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB17_8
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI17_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI17_1)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB17_9
# %bb.4:
	andi	$a0, $a0, 128
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB17_10
# %bb.5:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB17_6:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB17_7:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB17_8:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu52i.d	$a2, $zero, 2047
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB17_9:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu52i.d	$a2, $zero, -1
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB17_10:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 256
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	test_fcPosNormal_double, .Lfunc_end17-test_fcPosNormal_double
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_fcNegNormal_double
.LCPI18_0:
	.dword	0x7ff0000000000000              # double +Inf
.LCPI18_1:
	.dword	0xfff0000000000000              # double -Inf
	.text
	.globl	test_fcNegNormal_double
	.p2align	5
	.type	test_fcNegNormal_double,@function
test_fcNegNormal_double:                # @test_fcNegNormal_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB18_7
# %bb.1:
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB18_8
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI18_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI18_0)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB18_9
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI18_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI18_1)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB18_10
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB18_11
# %bb.5:
	andi	$a0, $a0, 8
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB18_12
# %bb.6:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB18_7:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB18_8:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB18_9:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu52i.d	$a2, $zero, 2047
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB18_10:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu52i.d	$a2, $zero, -1
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB18_11:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB18_12:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	test_fcNegNormal_double, .Lfunc_end18-test_fcNegNormal_double
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_fcPosSubnormal_double
.LCPI19_0:
	.dword	0x7ff0000000000000              # double +Inf
.LCPI19_1:
	.dword	0xfff0000000000000              # double -Inf
	.text
	.globl	test_fcPosSubnormal_double
	.p2align	5
	.type	test_fcPosSubnormal_double,@function
test_fcPosSubnormal_double:             # @test_fcPosSubnormal_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB19_8
# %bb.1:
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB19_9
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI19_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI19_0)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB19_10
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI19_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI19_1)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB19_11
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB19_12
# %bb.5:
	andi	$a1, $a0, 816
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB19_13
# %bb.6:
	andi	$a0, $a0, 256
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB19_14
# %bb.7:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB19_8:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB19_9:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB19_10:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu52i.d	$a2, $zero, 2047
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB19_11:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu52i.d	$a2, $zero, -1
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB19_12:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB19_13:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB19_14:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ori	$a3, $zero, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	test_fcPosSubnormal_double, .Lfunc_end19-test_fcPosSubnormal_double
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_fcNegSubnormal_double
.LCPI20_0:
	.dword	0x7ff0000000000000              # double +Inf
.LCPI20_1:
	.dword	0xfff0000000000000              # double -Inf
	.text
	.globl	test_fcNegSubnormal_double
	.p2align	5
	.type	test_fcNegSubnormal_double,@function
test_fcNegSubnormal_double:             # @test_fcNegSubnormal_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB20_9
# %bb.1:
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB20_10
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI20_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI20_0)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB20_11
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI20_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI20_1)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB20_12
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB20_13
# %bb.5:
	andi	$a1, $a0, 816
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB20_14
# %bb.6:
	andi	$a1, $a0, 560
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB20_15
# %bb.7:
	andi	$a0, $a0, 16
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB20_16
# %bb.8:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB20_9:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_10:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_11:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu52i.d	$a2, $zero, 2047
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_12:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu52i.d	$a2, $zero, -1
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_13:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_14:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_15:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_16:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	test_fcNegSubnormal_double, .Lfunc_end20-test_fcNegSubnormal_double
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_fcPosZero_double
.LCPI21_0:
	.dword	0x7ff0000000000000              # double +Inf
.LCPI21_1:
	.dword	0xfff0000000000000              # double -Inf
	.text
	.globl	test_fcPosZero_double
	.p2align	5
	.type	test_fcPosZero_double,@function
test_fcPosZero_double:                  # @test_fcPosZero_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB21_10
# %bb.1:
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB21_11
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI21_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI21_0)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB21_12
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI21_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI21_1)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB21_13
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB21_14
# %bb.5:
	andi	$a1, $a0, 816
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB21_15
# %bb.6:
	andi	$a1, $a0, 560
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB21_16
# %bb.7:
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB21_17
# %bb.8:
	andi	$a0, $a0, 512
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB21_18
# %bb.9:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB21_10:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_11:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_12:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu52i.d	$a2, $zero, 2047
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_13:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu52i.d	$a2, $zero, -1
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_14:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_15:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_16:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_17:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_18:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	ori	$a3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	test_fcPosZero_double, .Lfunc_end21-test_fcPosZero_double
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_fcNegZero_double
.LCPI22_0:
	.dword	0x7ff0000000000000              # double +Inf
.LCPI22_1:
	.dword	0xfff0000000000000              # double -Inf
	.text
	.globl	test_fcNegZero_double
	.p2align	5
	.type	test_fcNegZero_double,@function
test_fcNegZero_double:                  # @test_fcNegZero_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_10
# %bb.1:
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB22_11
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.LCPI22_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI22_0)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB22_12
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.LCPI22_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI22_1)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB22_13
# %bb.4:
	andi	$a1, $a0, 824
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_14
# %bb.5:
	andi	$a1, $a0, 816
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_15
# %bb.6:
	andi	$a1, $a0, 560
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_16
# %bb.7:
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB22_17
# %bb.8:
	andi	$a0, $a0, 32
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB22_18
# %bb.9:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB22_10:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_11:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_12:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	lu52i.d	$a2, $zero, 2047
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_13:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	lu52i.d	$a2, $zero, -1
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_14:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_15:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_16:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_17:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_18:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	test_fcNegZero_double, .Lfunc_end22-test_fcNegZero_double
                                        # -- End function
	.globl	test_isfpclass_double           # -- Begin function test_isfpclass_double
	.p2align	5
	.type	test_isfpclass_double,@function
test_isfpclass_double:                  # @test_isfpclass_double
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(DoubleZeroValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleZeroValues)
	fld.d	$fa0, $fp, 0
	movfr2gr.d	$a0, $fa0
	bltz	$a0, .LBB23_3
# %bb.1:
	pcaddu18i	$ra, %call36(test_fcPosZero_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	movfr2gr.d	$a0, $fa0
	bltz	$a0, .LBB23_4
.LBB23_2:
	pcaddu18i	$ra, %call36(test_fcPosZero_double)
	jirl	$ra, $ra, 0
	b	.LBB23_5
.LBB23_3:
	pcaddu18i	$ra, %call36(test_fcNegZero_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	movfr2gr.d	$a0, $fa0
	bgez	$a0, .LBB23_2
.LBB23_4:
	pcaddu18i	$ra, %call36(test_fcNegZero_double)
	jirl	$ra, $ra, 0
.LBB23_5:                               # %.preheader50.preheader
	pcalau12i	$a0, %pc_hi20(DoubleDenormValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleDenormValues)
	fld.d	$fa0, $fp, 0
	movgr2fr.d	$fs0, $zero
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB23_10
# %bb.6:
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_11
.LBB23_7:
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 16
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_12
.LBB23_8:
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 24
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_13
.LBB23_9:
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_double)
	jirl	$ra, $ra, 0
	b	.LBB23_14
.LBB23_10:
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_7
.LBB23_11:
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 16
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_8
.LBB23_12:
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 24
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_9
.LBB23_13:
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_double)
	jirl	$ra, $ra, 0
.LBB23_14:                              # %.preheader49.preheader
	pcalau12i	$a0, %pc_hi20(DoubleNormalValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleNormalValues)
	fld.d	$fa0, $fp, 0
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB23_41
# %bb.15:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_42
.LBB23_16:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 16
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_43
.LBB23_17:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 24
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_44
.LBB23_18:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 32
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_45
.LBB23_19:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 40
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_46
.LBB23_20:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 48
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_47
.LBB23_21:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 56
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_48
.LBB23_22:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 64
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_49
.LBB23_23:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 72
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_50
.LBB23_24:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 80
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_51
.LBB23_25:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 88
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_52
.LBB23_26:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 96
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_53
.LBB23_27:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 104
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_54
.LBB23_28:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 112
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_55
.LBB23_29:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 120
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_56
.LBB23_30:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 128
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_57
.LBB23_31:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 136
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_58
.LBB23_32:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 144
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_59
.LBB23_33:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 152
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_60
.LBB23_34:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 160
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_61
.LBB23_35:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 168
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_62
.LBB23_36:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 176
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_63
.LBB23_37:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 184
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_64
.LBB23_38:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 192
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_65
.LBB23_39:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 200
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_66
.LBB23_40:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	b	.LBB23_67
.LBB23_41:
	pcaddu18i	$ra, %call36(test_fcPosNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_16
.LBB23_42:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 16
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_17
.LBB23_43:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 24
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_18
.LBB23_44:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 32
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_19
.LBB23_45:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 40
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_20
.LBB23_46:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 48
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_21
.LBB23_47:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 56
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_22
.LBB23_48:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 64
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_23
.LBB23_49:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 72
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_24
.LBB23_50:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 80
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_25
.LBB23_51:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 88
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_26
.LBB23_52:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 96
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_27
.LBB23_53:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 104
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_28
.LBB23_54:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 112
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_29
.LBB23_55:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 120
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_30
.LBB23_56:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 128
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_31
.LBB23_57:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 136
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_32
.LBB23_58:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 144
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_33
.LBB23_59:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 152
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_34
.LBB23_60:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 160
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_35
.LBB23_61:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 168
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_36
.LBB23_62:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 176
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_37
.LBB23_63:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 184
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_38
.LBB23_64:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 192
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_39
.LBB23_65:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 200
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_40
.LBB23_66:
	pcaddu18i	$ra, %call36(test_fcNegNormal_double)
	jirl	$ra, $ra, 0
.LBB23_67:                              # %.preheader48.preheader
	pcalau12i	$a0, %pc_hi20(DoubleInfValues)
	addi.d	$fp, $a0, %pc_lo12(DoubleInfValues)
	fld.d	$fa0, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB23_70
# %bb.68:
	pcaddu18i	$ra, %call36(test_fcPosInf_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	fcmp.clt.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB23_71
.LBB23_69:
	pcaddu18i	$ra, %call36(test_fcNegInf_double)
	jirl	$ra, $ra, 0
	b	.LBB23_72
.LBB23_70:
	pcaddu18i	$ra, %call36(test_fcNegInf_double)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	fcmp.clt.d	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB23_69
.LBB23_71:
	pcaddu18i	$ra, %call36(test_fcPosInf_double)
	jirl	$ra, $ra, 0
.LBB23_72:                              # %.preheader47.preheader
	pcalau12i	$a0, %pc_hi20(DoubleQNaNValues)
	addi.d	$a0, $a0, %pc_lo12(DoubleQNaNValues)
	fld.d	$fa0, $a0, 0
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB23_95
# %bb.73:                               # %test_fcQNan_double.exit
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_96
# %bb.74:                               # %.preheader47.1
	fld.d	$fa0, $a0, 8
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB23_95
# %bb.75:                               # %test_fcQNan_double.exit.1
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_96
# %bb.76:                               # %.preheader47.2
	fld.d	$fa0, $a0, 16
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB23_95
# %bb.77:                               # %test_fcQNan_double.exit.2
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_96
# %bb.78:                               # %.preheader47.3
	fld.d	$fa0, $a0, 24
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB23_95
# %bb.79:                               # %test_fcQNan_double.exit.3
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_96
# %bb.80:                               # %.preheader47.4
	fld.d	$fa0, $a0, 32
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB23_95
# %bb.81:                               # %test_fcQNan_double.exit.4
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_96
# %bb.82:                               # %.preheader47.5
	fld.d	$fa0, $a0, 40
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB23_95
# %bb.83:                               # %test_fcQNan_double.exit.5
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_96
# %bb.84:                               # %.preheader47.6
	fld.d	$fa0, $a0, 48
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a2, $a1, 1022
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB23_95
# %bb.85:                               # %test_fcQNan_double.exit.6
	andi	$a1, $a1, 2
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_96
# %bb.86:                               # %.preheader47.7
	fld.d	$fa0, $a0, 56
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a1, $a0, 1022
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_95
# %bb.87:                               # %test_fcQNan_double.exit.7
	andi	$a0, $a0, 2
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB23_96
# %bb.88:                               # %test_fcSNan_double.exit.preheader
	pcalau12i	$a0, %pc_hi20(DoubleSNaNValues)
	addi.d	$a0, $a0, %pc_lo12(DoubleSNaNValues)
	fld.d	$fa0, $a0, 0
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_98
# %bb.89:                               # %test_fcSNan_double.exit.1
	fld.d	$fa0, $a0, 8
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_98
# %bb.90:                               # %test_fcSNan_double.exit.2
	fld.d	$fa0, $a0, 16
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_98
# %bb.91:                               # %test_fcSNan_double.exit.3
	fld.d	$fa0, $a0, 24
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_98
# %bb.92:                               # %test_fcSNan_double.exit.4
	fld.d	$fa0, $a0, 32
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	andi	$a1, $a1, 1
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_98
# %bb.93:                               # %test_fcSNan_double.exit.5
	fld.d	$fa0, $a0, 40
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB23_98
# %bb.94:
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB23_95:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB23_97
.LBB23_96:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
.LBB23_97:
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB23_98:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	test_isfpclass_double, .Lfunc_end23-test_isfpclass_double
                                        # -- End function
	.globl	prepare_ldouble_tables          # -- Begin function prepare_ldouble_tables
	.p2align	5
	.type	prepare_ldouble_tables,@function
prepare_ldouble_tables:                 # @prepare_ldouble_tables
# %bb.0:
	pcalau12i	$a0, %pc_hi20(LongDoubleQNaNValues)
	addi.d	$a1, $a0, %pc_lo12(LongDoubleQNaNValues)
	st.d	$zero, $a1, 0
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -32768
	lu52i.d	$a3, $a2, 2047
	st.d	$a3, $a1, 8
	st.d	$zero, $a1, 16
	st.d	$a2, $a1, 24
	ori	$a4, $zero, 1
	st.d	$a4, $a1, 32
	st.d	$a3, $a1, 40
	st.d	$a4, $a1, 48
	st.d	$a2, $a1, 56
	pcalau12i	$a1, %pc_hi20(LongDoubleSNaNValues)
	addi.d	$a1, $a1, %pc_lo12(LongDoubleSNaNValues)
	st.d	$zero, $a1, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -49152
	lu52i.d	$a3, $a2, 2047
	st.d	$a3, $a1, 8
	st.d	$zero, $a1, 16
	st.d	$a2, $a1, 24
	st.d	$a4, $a1, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, -65536
	lu52i.d	$a3, $a2, 2047
	st.d	$a3, $a1, 40
	st.d	$a4, $a1, 48
	st.d	$a2, $a1, 56
	pcalau12i	$a1, %pc_hi20(LongDoubleInfValues)
	addi.d	$a1, $a1, %pc_lo12(LongDoubleInfValues)
	st.d	$zero, $a1, 0
	st.d	$a3, $a1, 8
	st.d	$zero, $a1, 16
	st.d	$a2, $a1, 24
	pcalau12i	$a1, %pc_hi20(LongDoubleDenormValues)
	addi.d	$a1, $a1, %pc_lo12(LongDoubleDenormValues)
	st.d	$zero, $a1, 8
	st.d	$a4, $a1, 0
	lu52i.d	$a3, $zero, -2048
	st.d	$a3, $a1, 24
	st.d	$a4, $a1, 16
	pcalau12i	$a1, %pc_hi20(LongDoubleNormalValues)
	addi.d	$a1, $a1, %pc_lo12(LongDoubleNormalValues)
	st.d	$zero, $a1, 0
	lu52i.d	$a3, $a2, 1023
	st.d	$a3, $a1, 8
	st.d	$zero, $a1, 16
	lu52i.d	$a2, $a2, -1025
	st.d	$a2, $a1, 24
	addi.w	$a2, $zero, -1
	st.d	$a2, $a1, 32
	st.d	$a2, $a1, 48
	lu32i.d	$a2, -65537
	lu52i.d	$a3, $a2, 2047
	st.d	$a3, $a1, 40
	st.d	$a2, $a1, 56
	st.d	$zero, $a1, 64
	lu32i.d	$a0, 65536
	st.d	$a0, $a1, 72
	st.d	$zero, $a1, 80
	lu52i.d	$a0, $a0, -2048
	st.d	$a0, $a1, 88
	ret
.Lfunc_end24:
	.size	prepare_ldouble_tables, .Lfunc_end24-prepare_ldouble_tables
                                        # -- End function
	.globl	test_ldouble                    # -- Begin function test_ldouble
	.p2align	5
	.type	test_ldouble,@function
test_ldouble:                           # @test_ldouble
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(LongDoubleQNaNValues)
	addi.d	$s1, $a0, %pc_lo12(LongDoubleQNaNValues)
	ld.d	$s0, $s1, 8
	ld.d	$fp, $s1, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_61
# %bb.1:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 2047
	slt	$a2, $a0, $a1
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	sltui	$a3, $fp, 1
	maskeqz	$a1, $a3, $a1
	addi.w	$s1, $zero, -1
	or	$a1, $a1, $a2
	move	$a2, $s1
	lu32i.d	$a2, -32769
	lu52i.d	$s2, $a2, 2047
	slt	$a0, $s2, $a0
	or	$a0, $a1, $a0
	beqz	$a0, .LBB25_55
# %bb.2:
	pcalau12i	$a0, %pc_hi20(LongDoubleQNaNValues)
	addi.d	$s3, $a0, %pc_lo12(LongDoubleQNaNValues)
	ld.d	$s0, $s3, 24
	ld.d	$fp, $s3, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_56
# %bb.3:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -65536
	lu52i.d	$a2, $a2, 2047
	slt	$a3, $a2, $a0
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	masknez	$a3, $a3, $a2
	sltu	$a4, $zero, $fp
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	lu32i.d	$a1, -32768
	lu52i.d	$a1, $a1, 2047
	slt	$a0, $a0, $a1
	and	$a0, $a2, $a0
	bnez	$a0, .LBB25_57
# %bb.4:
	ld.d	$s0, $s3, 40
	ld.d	$fp, $s3, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_58
# %bb.5:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -65536
	lu52i.d	$a2, $a2, 2047
	slt	$a3, $a2, $a0
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	masknez	$a3, $a3, $a2
	sltu	$a4, $zero, $fp
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	lu32i.d	$a1, -32768
	lu52i.d	$a1, $a1, 2047
	slt	$a0, $a0, $a1
	and	$a0, $a2, $a0
	bnez	$a0, .LBB25_59
# %bb.6:
	ld.d	$s0, $s3, 56
	ld.d	$fp, $s3, 48
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_60
# %bb.7:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -65536
	lu52i.d	$a2, $a2, 2047
	slt	$a3, $a2, $a0
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	masknez	$a3, $a3, $a2
	sltu	$a4, $zero, $fp
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	lu32i.d	$a1, -32768
	lu52i.d	$a1, $a1, 2047
	slt	$a0, $a0, $a1
	and	$a0, $a2, $a0
	bnez	$a0, .LBB25_62
# %bb.8:                                # %.preheader161.preheader
	pcalau12i	$a0, %pc_hi20(LongDoubleSNaNValues)
	addi.d	$s3, $a0, %pc_lo12(LongDoubleSNaNValues)
	ld.d	$s0, $s3, 8
	ld.d	$fp, $s3, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_70
# %bb.9:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -65536
	lu52i.d	$a2, $a2, 2047
	slt	$a3, $a2, $a0
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	masknez	$a3, $a3, $a2
	sltu	$a4, $zero, $fp
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	lu32i.d	$a1, -32768
	lu52i.d	$a1, $a1, 2047
	slt	$a0, $a0, $a1
	and	$a0, $a2, $a0
	beqz	$a0, .LBB25_64
# %bb.10:                               # %.preheader161.1
	pcalau12i	$a0, %pc_hi20(LongDoubleSNaNValues)
	addi.d	$s3, $a0, %pc_lo12(LongDoubleSNaNValues)
	ld.d	$s0, $s3, 24
	ld.d	$fp, $s3, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_65
# %bb.11:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 2047
	slt	$a2, $a0, $a1
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	sltui	$a3, $fp, 1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	slt	$a0, $s2, $a0
	or	$a0, $a1, $a0
	bnez	$a0, .LBB25_66
# %bb.12:                               # %.preheader161.2
	ld.d	$s0, $s3, 40
	ld.d	$fp, $s3, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_67
# %bb.13:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 2047
	slt	$a2, $a0, $a1
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	sltui	$a3, $fp, 1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	slt	$a0, $s2, $a0
	or	$a0, $a1, $a0
	bnez	$a0, .LBB25_68
# %bb.14:                               # %.preheader161.3
	ld.d	$s0, $s3, 56
	ld.d	$fp, $s3, 48
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_69
# %bb.15:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 2047
	slt	$a2, $a0, $a1
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	sltui	$a3, $fp, 1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	slt	$a0, $s2, $a0
	or	$a0, $a1, $a0
	bnez	$a0, .LBB25_71
# %bb.16:                               # %.preheader160.preheader
	pcalau12i	$a0, %pc_hi20(LongDoubleInfValues)
	addi.d	$s2, $a0, %pc_lo12(LongDoubleInfValues)
	ld.d	$s0, $s2, 8
	ld.d	$fp, $s2, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_75
# %bb.17:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 2047
	xor	$a0, $a0, $a1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB25_73
# %bb.18:                               # %.preheader160.1
	pcalau12i	$a0, %pc_hi20(LongDoubleInfValues)
	addi.d	$s2, $a0, %pc_lo12(LongDoubleInfValues)
	ld.d	$s0, $s2, 24
	ld.d	$fp, $s2, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_74
# %bb.19:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 2047
	xor	$a0, $a0, $a1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB25_76
# %bb.20:                               # %.preheader159.preheader
	pcalau12i	$a0, %pc_hi20(LongDoubleZeroValues)
	addi.d	$s2, $a0, %pc_lo12(LongDoubleZeroValues)
	ld.d	$s0, $s2, 8
	ld.d	$fp, $s2, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_82
# %bb.21:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a2, $fp, $a2
	beqz	$a2, .LBB25_78
# %bb.22:
	add.d	$a1, $a0, $a1
	move	$a2, $s1
	lu32i.d	$a2, -131073
	lu52i.d	$s2, $a2, 2047
	bgeu	$s2, $a1, .LBB25_79
# %bb.23:
	sltui	$a1, $fp, 1
	sub.d	$a0, $a0, $a1
	lu32i.d	$s1, 65535
	xor	$a2, $a0, $s1
	sltui	$a2, $a2, 1
	srli.d	$a0, $a0, 48
	sltu	$a0, $zero, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	beqz	$a0, .LBB25_80
# %bb.24:                               # %.preheader159.1
	pcalau12i	$a0, %pc_hi20(LongDoubleZeroValues)
	addi.d	$s3, $a0, %pc_lo12(LongDoubleZeroValues)
	ld.d	$s0, $s3, 24
	ld.d	$fp, $s3, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_81
# %bb.25:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a3, $fp, $a2
	ori	$a2, $zero, 0
	beqz	$a3, .LBB25_84
# %bb.26:
	add.d	$a1, $a0, $a1
	lu32i.d	$a2, -131072
	lu52i.d	$a2, $a2, 2047
	bltu	$a1, $a2, .LBB25_86
# %bb.27:
	sltui	$a1, $fp, 1
	sub.d	$a0, $a0, $a1
	sltu	$a1, $a0, $s1
	xor	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	sltu	$a2, $zero, $fp
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	bnez	$a0, .LBB25_88
# %bb.28:                               # %.preheader158.preheader
	pcalau12i	$a0, %pc_hi20(LongDoubleDenormValues)
	addi.d	$s3, $a0, %pc_lo12(LongDoubleDenormValues)
	ld.d	$s0, $s3, 8
	ld.d	$fp, $s3, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_94
# %bb.29:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a2, $fp, $a2
	beqz	$a2, .LBB25_90
# %bb.30:
	add.d	$a1, $a0, $a1
	bgeu	$s2, $a1, .LBB25_91
# %bb.31:
	sltui	$a1, $fp, 1
	sub.d	$a0, $a0, $a1
	sltu	$a1, $a0, $s1
	xor	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	sltu	$a2, $zero, $fp
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	beqz	$a0, .LBB25_92
# %bb.32:                               # %.preheader158.1
	pcalau12i	$a0, %pc_hi20(LongDoubleDenormValues)
	addi.d	$s3, $a0, %pc_lo12(LongDoubleDenormValues)
	ld.d	$s0, $s3, 24
	ld.d	$fp, $s3, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_93
# %bb.33:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a3, $fp, $a2
	ori	$a2, $zero, 0
	beqz	$a3, .LBB25_96
# %bb.34:
	add.d	$a1, $a0, $a1
	lu32i.d	$a2, -131072
	lu52i.d	$a2, $a2, 2047
	bltu	$a1, $a2, .LBB25_98
# %bb.35:
	sltui	$a1, $fp, 1
	sub.d	$a0, $a0, $a1
	xor	$a2, $a0, $s1
	sltui	$a2, $a2, 1
	srli.d	$a0, $a0, 48
	sltu	$a0, $zero, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	bnez	$a0, .LBB25_100
# %bb.36:                               # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(LongDoubleNormalValues)
	addi.d	$s1, $a0, %pc_lo12(LongDoubleNormalValues)
	ld.d	$s0, $s1, 8
	ld.d	$fp, $s1, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_117
# %bb.37:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a3, $fp, $a2
	ori	$a2, $zero, 0
	beqz	$a3, .LBB25_102
# %bb.38:
	add.d	$a0, $a0, $a1
	lu32i.d	$a2, -131072
	lu52i.d	$a1, $a2, 2047
	bgeu	$a0, $a1, .LBB25_103
# %bb.39:                               # %.preheader.1
	pcalau12i	$a0, %pc_hi20(LongDoubleNormalValues)
	addi.d	$s1, $a0, %pc_lo12(LongDoubleNormalValues)
	ld.d	$s0, $s1, 24
	ld.d	$fp, $s1, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_104
# %bb.40:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a2, $fp, $a2
	beqz	$a2, .LBB25_105
# %bb.41:
	add.d	$a0, $a0, $a1
	bltu	$s2, $a0, .LBB25_106
# %bb.42:                               # %.preheader.2
	ld.d	$s0, $s1, 40
	ld.d	$fp, $s1, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_107
# %bb.43:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a2, $fp, $a2
	beqz	$a2, .LBB25_108
# %bb.44:
	add.d	$a0, $a0, $a1
	bltu	$s2, $a0, .LBB25_109
# %bb.45:                               # %.preheader.3
	ld.d	$s0, $s1, 56
	ld.d	$fp, $s1, 48
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_110
# %bb.46:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a2, $fp, $a2
	beqz	$a2, .LBB25_111
# %bb.47:
	add.d	$a0, $a0, $a1
	bltu	$s2, $a0, .LBB25_112
# %bb.48:                               # %.preheader.4
	ld.d	$s0, $s1, 72
	ld.d	$fp, $s1, 64
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_113
# %bb.49:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a2, $fp, $a2
	beqz	$a2, .LBB25_114
# %bb.50:
	add.d	$a0, $a0, $a1
	bltu	$s2, $a0, .LBB25_115
# %bb.51:                               # %.preheader.5
	ld.d	$s0, $s1, 88
	ld.d	$fp, $s1, 80
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_116
# %bb.52:
	bstrpick.d	$a0, $s0, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a2, $a1, 2047
	xor	$a2, $a0, $a2
	or	$a2, $fp, $a2
	beqz	$a2, .LBB25_119
# %bb.53:
	add.d	$a0, $a0, $a1
	bltu	$s2, $a0, .LBB25_121
# %bb.54:
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB25_55:
	pcalau12i	$a0, %pc_hi20(LongDoubleQNaNValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleQNaNValues)
	b	.LBB25_63
.LBB25_56:
	addi.d	$s1, $s3, 16
	b	.LBB25_61
.LBB25_57:
	addi.d	$fp, $s3, 16
	b	.LBB25_63
.LBB25_58:
	addi.d	$s1, $s3, 32
	b	.LBB25_61
.LBB25_59:
	addi.d	$fp, $s3, 32
	b	.LBB25_63
.LBB25_60:
	addi.d	$s1, $s3, 48
.LBB25_61:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 77
	b	.LBB25_118
.LBB25_62:
	addi.d	$fp, $s3, 48
.LBB25_63:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 78
	b	.LBB25_123
.LBB25_64:
	pcalau12i	$a0, %pc_hi20(LongDoubleSNaNValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleSNaNValues)
	b	.LBB25_72
.LBB25_65:
	addi.d	$s3, $s3, 16
	b	.LBB25_70
.LBB25_66:
	addi.d	$fp, $s3, 16
	b	.LBB25_72
.LBB25_67:
	addi.d	$s3, $s3, 32
	b	.LBB25_70
.LBB25_68:
	addi.d	$fp, $s3, 32
	b	.LBB25_72
.LBB25_69:
	addi.d	$s3, $s3, 48
.LBB25_70:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 89
	b	.LBB25_95
.LBB25_71:
	addi.d	$fp, $s3, 48
.LBB25_72:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 90
	b	.LBB25_123
.LBB25_73:
	pcalau12i	$a0, %pc_hi20(LongDoubleInfValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleInfValues)
	b	.LBB25_77
.LBB25_74:
	addi.d	$s2, $s2, 16
.LBB25_75:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 103
	b	.LBB25_83
.LBB25_76:
	addi.d	$fp, $s2, 16
.LBB25_77:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 105
	b	.LBB25_123
.LBB25_78:
	pcalau12i	$a0, %pc_hi20(LongDoubleZeroValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleZeroValues)
	b	.LBB25_85
.LBB25_79:
	pcalau12i	$a0, %pc_hi20(LongDoubleZeroValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleZeroValues)
	b	.LBB25_87
.LBB25_80:
	pcalau12i	$a0, %pc_hi20(LongDoubleZeroValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleZeroValues)
	b	.LBB25_89
.LBB25_81:
	addi.d	$s2, $s3, 16
.LBB25_82:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 116
.LBB25_83:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 8
	ld.d	$a2, $s2, 0
	b	.LBB25_124
.LBB25_84:
	addi.d	$fp, $s3, 16
.LBB25_85:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 118
	b	.LBB25_123
.LBB25_86:
	addi.d	$fp, $s3, 16
.LBB25_87:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 120
	b	.LBB25_123
.LBB25_88:
	addi.d	$fp, $s3, 16
.LBB25_89:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 121
	b	.LBB25_123
.LBB25_90:
	pcalau12i	$a0, %pc_hi20(LongDoubleDenormValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleDenormValues)
	b	.LBB25_97
.LBB25_91:
	pcalau12i	$a0, %pc_hi20(LongDoubleDenormValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleDenormValues)
	b	.LBB25_99
.LBB25_92:
	pcalau12i	$a0, %pc_hi20(LongDoubleDenormValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleDenormValues)
	b	.LBB25_101
.LBB25_93:
	addi.d	$s3, $s3, 16
.LBB25_94:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 129
.LBB25_95:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s3, 8
	ld.d	$a2, $s3, 0
	b	.LBB25_124
.LBB25_96:
	addi.d	$fp, $s3, 16
.LBB25_97:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 131
	b	.LBB25_123
.LBB25_98:
	addi.d	$fp, $s3, 16
.LBB25_99:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 133
	b	.LBB25_123
.LBB25_100:
	addi.d	$fp, $s3, 16
.LBB25_101:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 134
	b	.LBB25_123
.LBB25_102:
	pcalau12i	$a0, %pc_hi20(LongDoubleNormalValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleNormalValues)
	b	.LBB25_120
.LBB25_103:
	pcalau12i	$a0, %pc_hi20(LongDoubleNormalValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleNormalValues)
	b	.LBB25_122
.LBB25_104:
	addi.d	$s1, $s1, 16
	b	.LBB25_117
.LBB25_105:
	addi.d	$fp, $s1, 16
	b	.LBB25_120
.LBB25_106:
	addi.d	$fp, $s1, 16
	b	.LBB25_122
.LBB25_107:
	addi.d	$s1, $s1, 32
	b	.LBB25_117
.LBB25_108:
	addi.d	$fp, $s1, 32
	b	.LBB25_120
.LBB25_109:
	addi.d	$fp, $s1, 32
	b	.LBB25_122
.LBB25_110:
	addi.d	$s1, $s1, 48
	b	.LBB25_117
.LBB25_111:
	addi.d	$fp, $s1, 48
	b	.LBB25_120
.LBB25_112:
	addi.d	$fp, $s1, 48
	b	.LBB25_122
.LBB25_113:
	addi.d	$s1, $s1, 64
	b	.LBB25_117
.LBB25_114:
	addi.d	$fp, $s1, 64
	b	.LBB25_120
.LBB25_115:
	addi.d	$fp, $s1, 64
	b	.LBB25_122
.LBB25_116:
	addi.d	$s1, $s1, 80
.LBB25_117:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 142
.LBB25_118:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 8
	ld.d	$a2, $s1, 0
	b	.LBB25_124
.LBB25_119:
	addi.d	$fp, $s1, 80
.LBB25_120:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 144
	b	.LBB25_123
.LBB25_121:
	addi.d	$fp, $s1, 80
.LBB25_122:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L.str.172)
	addi.d	$a2, $a2, %pc_lo12(.L.str.172)
	ori	$a3, $zero, 146
.LBB25_123:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 8
	ld.d	$a2, $fp, 0
.LBB25_124:
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a0, $a0, %pc_lo12(.L.str.173)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.50)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.50)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	test_ldouble, .Lfunc_end25-test_ldouble
                                        # -- End function
	.globl	test_fcSNan_ldouble             # -- Begin function test_fcSNan_ldouble
	.p2align	5
	.type	test_fcSNan_ldouble,@function
test_fcSNan_ldouble:                    # @test_fcSNan_ldouble
# %bb.0:
	move	$a3, $a1
	move	$a2, $a0
	bstrpick.d	$a0, $a1, 62, 0
	ori	$a1, $zero, 0
	ori	$a4, $zero, 0
	lu32i.d	$a4, -65536
	lu52i.d	$a4, $a4, 2047
	slt	$a5, $a4, $a0
	xor	$a4, $a0, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	sltu	$a6, $zero, $a2
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	lu32i.d	$a1, -32768
	lu52i.d	$a1, $a1, 2047
	slt	$a0, $a0, $a1
	and	$a0, $a4, $a0
	beqz	$a0, .LBB26_2
# %bb.1:
	ret
.LBB26_2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a4, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	test_fcSNan_ldouble, .Lfunc_end26-test_fcSNan_ldouble
                                        # -- End function
	.globl	test_fcQNan_ldouble             # -- Begin function test_fcQNan_ldouble
	.p2align	5
	.type	test_fcQNan_ldouble,@function
test_fcQNan_ldouble:                    # @test_fcQNan_ldouble
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $a1
	move	$a2, $a0
	bstrpick.d	$a0, $a1, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 2047
	slt	$a4, $a0, $a1
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$a4, $a4, $a1
	sltui	$a5, $a2, 1
	maskeqz	$a1, $a5, $a1
	or	$a4, $a1, $a4
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, -32769
	lu52i.d	$a1, $a1, 2047
	slt	$a5, $a1, $a0
	or	$a4, $a4, $a5
	beqz	$a4, .LBB27_3
# %bb.1:
	bge	$a1, $a0, .LBB27_4
# %bb.2:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB27_3:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a4, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB27_4:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a4, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	test_fcQNan_ldouble, .Lfunc_end27-test_fcQNan_ldouble
                                        # -- End function
	.globl	test_fcPosInf_ldouble           # -- Begin function test_fcPosInf_ldouble
	.p2align	5
	.type	test_fcPosInf_ldouble,@function
test_fcPosInf_ldouble:                  # @test_fcPosInf_ldouble
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$a0, $a1, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 2047
	slt	$a2, $a0, $a1
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	sltui	$a3, $s0, 1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, -32769
	lu52i.d	$a2, $a2, 2047
	slt	$a0, $a2, $a0
	or	$a0, $a1, $a0
	beqz	$a0, .LBB28_4
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB28_5
# %bb.2:
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a3, $a0, 2047
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB28_6
# %bb.3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB28_4:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB28_7
.LBB28_5:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	b	.LBB28_7
.LBB28_6:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
.LBB28_7:
	ori	$a4, $zero, 512
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	test_fcPosInf_ldouble, .Lfunc_end28-test_fcPosInf_ldouble
                                        # -- End function
	.globl	test_fcNegInf_ldouble           # -- Begin function test_fcNegInf_ldouble
	.p2align	5
	.type	test_fcNegInf_ldouble,@function
test_fcNegInf_ldouble:                  # @test_fcNegInf_ldouble
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$a0, $a1, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 2047
	slt	$a2, $a0, $a1
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	sltui	$a3, $s0, 1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, -32769
	lu52i.d	$a2, $a2, 2047
	slt	$a0, $a2, $a0
	or	$a0, $a1, $a0
	beqz	$a0, .LBB29_5
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_6
# %bb.2:
	ori	$s2, $zero, 0
	lu32i.d	$s2, -65536
	lu52i.d	$s1, $s2, 2047
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_7
# %bb.3:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_8
# %bb.4:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB29_5:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB29_9
.LBB29_6:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	b	.LBB29_9
.LBB29_7:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a4, $zero, 4
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_8:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
.LBB29_9:
	ori	$a4, $zero, 4
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	test_fcNegInf_ldouble, .Lfunc_end29-test_fcNegInf_ldouble
                                        # -- End function
	.globl	test_fcPosNormal_ldouble        # -- Begin function test_fcPosNormal_ldouble
	.p2align	5
	.type	test_fcPosNormal_ldouble,@function
test_fcPosNormal_ldouble:               # @test_fcPosNormal_ldouble
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$s3, $a1, 62, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 2047
	slt	$a1, $s3, $a0
	xor	$a0, $s3, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	sltui	$a2, $s0, 1
	maskeqz	$a0, $a2, $a0
	addi.w	$s4, $zero, -1
	or	$a0, $a0, $a1
	move	$a1, $s4
	lu32i.d	$a1, -32769
	lu52i.d	$a1, $a1, 2047
	slt	$a1, $a1, $s3
	or	$a0, $a0, $a1
	beqz	$a0, .LBB30_6
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB30_7
# %bb.2:
	ori	$s2, $zero, 0
	lu32i.d	$s2, -65536
	lu52i.d	$s1, $s2, 2047
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_8
# %bb.3:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_9
# %bb.4:
	slt	$a0, $s4, $fp
	ori	$a1, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -65536
	add.d	$a2, $s3, $a2
	lu32i.d	$a1, -131072
	lu52i.d	$a1, $a1, 2047
	sltu	$a1, $a2, $a1
	and	$a0, $a1, $a0
	beqz	$a0, .LBB30_10
# %bb.5:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB30_6:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB30_11
.LBB30_7:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	b	.LBB30_11
.LBB30_8:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a4, $zero, 256
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB30_9:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 0
	lu32i.d	$a3, -65536
	ori	$a4, $zero, 256
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB30_10:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
.LBB30_11:
	ori	$a4, $zero, 256
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	test_fcPosNormal_ldouble, .Lfunc_end30-test_fcPosNormal_ldouble
                                        # -- End function
	.globl	test_fcNegNormal_ldouble        # -- Begin function test_fcNegNormal_ldouble
	.p2align	5
	.type	test_fcNegNormal_ldouble,@function
test_fcNegNormal_ldouble:               # @test_fcNegNormal_ldouble
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$s3, $a1, 62, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 2047
	slt	$a1, $s3, $a0
	xor	$a0, $s3, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	sltui	$a2, $s0, 1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, -32769
	lu52i.d	$a1, $a1, 2047
	slt	$a1, $a1, $s3
	or	$a0, $a0, $a1
	beqz	$a0, .LBB31_7
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_8
# %bb.2:
	ori	$s2, $zero, 0
	lu32i.d	$s2, -65536
	lu52i.d	$s1, $s2, 2047
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_9
# %bb.3:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_10
# %bb.4:
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	add.d	$a2, $s3, $a1
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, 2047
	sltu	$a0, $a2, $a0
	slti	$a2, $fp, 0
	and	$a0, $a0, $a2
	lu52i.d	$a1, $a1, 2047
	and	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	or	$a1, $a1, $a0
	beqz	$a1, .LBB31_11
# %bb.5:
	beqz	$a0, .LBB31_12
# %bb.6:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB31_7:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB31_13
.LBB31_8:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	b	.LBB31_13
.LBB31_9:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a4, $zero, 8
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB31_10:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 0
	lu32i.d	$a3, -65536
	ori	$a4, $zero, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB31_11:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	b	.LBB31_13
.LBB31_12:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
.LBB31_13:
	ori	$a4, $zero, 8
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	test_fcNegNormal_ldouble, .Lfunc_end31-test_fcNegNormal_ldouble
                                        # -- End function
	.globl	test_fcPosSubnormal_ldouble     # -- Begin function test_fcPosSubnormal_ldouble
	.p2align	5
	.type	test_fcPosSubnormal_ldouble,@function
test_fcPosSubnormal_ldouble:            # @test_fcPosSubnormal_ldouble
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
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$s5, $a1, 62, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 2047
	slt	$a1, $s5, $a0
	xor	$a0, $s5, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	sltui	$s4, $s0, 1
	maskeqz	$a0, $s4, $a0
	addi.w	$s3, $zero, -1
	or	$a0, $a0, $a1
	move	$a1, $s3
	lu32i.d	$a1, -32769
	lu52i.d	$a1, $a1, 2047
	slt	$a1, $a1, $s5
	or	$a0, $a0, $a1
	beqz	$a0, .LBB32_8
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB32_9
# %bb.2:
	ori	$s2, $zero, 0
	lu32i.d	$s2, -65536
	lu52i.d	$s1, $s2, 2047
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_10
# %bb.3:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_11
# %bb.4:
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	add.d	$a2, $s5, $a1
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, 2047
	sltu	$a0, $a2, $a0
	slti	$a2, $fp, 0
	and	$a2, $a0, $a2
	lu52i.d	$a0, $a1, 2047
	and	$a0, $fp, $a0
	sltui	$a1, $a0, 1
	or	$a1, $a1, $a2
	beqz	$a1, .LBB32_12
# %bb.5:
	bnez	$a0, .LBB32_13
# %bb.6:
	sub.d	$a0, $fp, $s4
	lu32i.d	$s3, 65535
	sltu	$a1, $a0, $s3
	xor	$a0, $a0, $s3
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	sltu	$a2, $zero, $s0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	beqz	$a0, .LBB32_14
# %bb.7:
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
.LBB32_8:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB32_15
.LBB32_9:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	b	.LBB32_15
.LBB32_10:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a4, $zero, 128
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB32_11:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 0
	lu32i.d	$a3, -65536
	ori	$a4, $zero, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB32_12:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	b	.LBB32_15
.LBB32_13:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	b	.LBB32_15
.LBB32_14:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
.LBB32_15:
	ori	$a4, $zero, 128
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	test_fcPosSubnormal_ldouble, .Lfunc_end32-test_fcPosSubnormal_ldouble
                                        # -- End function
	.globl	test_fcNegSubnormal_ldouble     # -- Begin function test_fcNegSubnormal_ldouble
	.p2align	5
	.type	test_fcNegSubnormal_ldouble,@function
test_fcNegSubnormal_ldouble:            # @test_fcNegSubnormal_ldouble
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
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$s3, $a1, 62, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 2047
	slt	$a1, $s3, $a0
	xor	$a0, $s3, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	sltui	$s5, $s0, 1
	maskeqz	$a0, $s5, $a0
	addi.w	$s4, $zero, -1
	or	$a0, $a0, $a1
	move	$a1, $s4
	lu32i.d	$a1, -32769
	lu52i.d	$a1, $a1, 2047
	slt	$a1, $a1, $s3
	or	$a0, $a0, $a1
	beqz	$a0, .LBB33_9
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_10
# %bb.2:
	ori	$s2, $zero, 0
	lu32i.d	$s2, -65536
	lu52i.d	$s1, $s2, 2047
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB33_11
# %bb.3:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB33_12
# %bb.4:
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	add.d	$a2, $s3, $a1
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, 2047
	sltu	$a2, $a2, $a0
	slti	$a0, $fp, 0
	and	$a2, $a2, $a0
	lu52i.d	$a1, $a1, 2047
	and	$a1, $fp, $a1
	sltui	$a3, $a1, 1
	or	$a2, $a3, $a2
	beqz	$a2, .LBB33_13
# %bb.5:
	bnez	$a1, .LBB33_14
# %bb.6:
	sub.d	$a1, $s3, $s5
	lu32i.d	$s4, 65535
	sltu	$a2, $a1, $s4
	xor	$a1, $a1, $s4
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	sltu	$a3, $zero, $s0
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	and	$a0, $a1, $a0
	or	$a1, $s0, $s3
	sltui	$a1, $a1, 1
	or	$a1, $a1, $a0
	beqz	$a1, .LBB33_15
# %bb.7:
	beqz	$a0, .LBB33_16
# %bb.8:
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
.LBB33_9:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB33_17
.LBB33_10:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	b	.LBB33_17
.LBB33_11:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a4, $zero, 16
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB33_12:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 0
	lu32i.d	$a3, -65536
	ori	$a4, $zero, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB33_13:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	b	.LBB33_17
.LBB33_14:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	b	.LBB33_17
.LBB33_15:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	b	.LBB33_17
.LBB33_16:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
.LBB33_17:
	ori	$a4, $zero, 16
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	test_fcNegSubnormal_ldouble, .Lfunc_end33-test_fcNegSubnormal_ldouble
                                        # -- End function
	.globl	test_fcPosZero_ldouble          # -- Begin function test_fcPosZero_ldouble
	.p2align	5
	.type	test_fcPosZero_ldouble,@function
test_fcPosZero_ldouble:                 # @test_fcPosZero_ldouble
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
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$s3, $a1, 62, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 2047
	slt	$a1, $s3, $a0
	xor	$a0, $s3, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	sltui	$s5, $s0, 1
	maskeqz	$a0, $s5, $a0
	addi.w	$s4, $zero, -1
	or	$a0, $a0, $a1
	move	$a1, $s4
	lu32i.d	$a1, -32769
	lu52i.d	$a1, $a1, 2047
	slt	$a1, $a1, $s3
	or	$a0, $a0, $a1
	beqz	$a0, .LBB34_10
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB34_11
# %bb.2:
	ori	$s2, $zero, 0
	lu32i.d	$s2, -65536
	lu52i.d	$s1, $s2, 2047
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB34_12
# %bb.3:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB34_13
# %bb.4:
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	add.d	$a2, $s3, $a1
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, 2047
	sltu	$a2, $a2, $a0
	slti	$a0, $fp, 0
	and	$a2, $a2, $a0
	lu52i.d	$a1, $a1, 2047
	and	$a1, $fp, $a1
	sltui	$a3, $a1, 1
	or	$a2, $a3, $a2
	beqz	$a2, .LBB34_14
# %bb.5:
	bnez	$a1, .LBB34_15
# %bb.6:
	sub.d	$a1, $s3, $s5
	lu32i.d	$s4, 65535
	sltu	$a2, $a1, $s4
	xor	$a1, $a1, $s4
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	sltu	$a3, $zero, $s0
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	and	$a0, $a1, $a0
	or	$a1, $s0, $s3
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	beqz	$a0, .LBB34_16
# %bb.7:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB34_17
# %bb.8:
	or	$a0, $s0, $fp
	bnez	$a0, .LBB34_18
# %bb.9:
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
.LBB34_10:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB34_19
.LBB34_11:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	b	.LBB34_19
.LBB34_12:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a4, $zero, 64
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB34_13:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 0
	lu32i.d	$a3, -65536
	ori	$a4, $zero, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB34_14:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	b	.LBB34_19
.LBB34_15:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	b	.LBB34_19
.LBB34_16:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	b	.LBB34_19
.LBB34_17:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	b	.LBB34_19
.LBB34_18:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
.LBB34_19:
	ori	$a4, $zero, 64
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	test_fcPosZero_ldouble, .Lfunc_end34-test_fcPosZero_ldouble
                                        # -- End function
	.globl	test_fcNegZero_ldouble          # -- Begin function test_fcNegZero_ldouble
	.p2align	5
	.type	test_fcNegZero_ldouble,@function
test_fcNegZero_ldouble:                 # @test_fcNegZero_ldouble
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
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$s3, $a1, 62, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 2047
	slt	$a1, $s3, $a0
	xor	$a0, $s3, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	sltui	$s5, $s0, 1
	maskeqz	$a0, $s5, $a0
	addi.w	$s4, $zero, -1
	or	$a0, $a0, $a1
	move	$a1, $s4
	lu32i.d	$a1, -32769
	lu52i.d	$a1, $a1, 2047
	slt	$a1, $a1, $s3
	or	$a0, $a0, $a1
	beqz	$a0, .LBB35_10
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB35_11
# %bb.2:
	ori	$s2, $zero, 0
	lu32i.d	$s2, -65536
	lu52i.d	$s1, $s2, 2047
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB35_12
# %bb.3:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB35_13
# %bb.4:
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	add.d	$a2, $s3, $a1
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, 2047
	sltu	$a2, $a2, $a0
	slti	$a0, $fp, 0
	and	$a2, $a2, $a0
	lu52i.d	$a1, $a1, 2047
	and	$a1, $fp, $a1
	sltui	$a3, $a1, 1
	or	$a2, $a3, $a2
	beqz	$a2, .LBB35_14
# %bb.5:
	bnez	$a1, .LBB35_15
# %bb.6:
	sub.d	$a1, $s3, $s5
	lu32i.d	$s4, 65535
	sltu	$a2, $a1, $s4
	xor	$a1, $a1, $s4
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	sltu	$a3, $zero, $s0
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	and	$a0, $a1, $a0
	or	$a1, $s0, $s3
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	beqz	$a0, .LBB35_16
# %bb.7:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB35_17
# %bb.8:
	lu52i.d	$a0, $zero, -2048
	xor	$a0, $fp, $a0
	or	$a0, $s0, $a0
	bnez	$a0, .LBB35_18
# %bb.9:
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
.LBB35_10:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB35_19
.LBB35_11:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	b	.LBB35_19
.LBB35_12:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a4, $zero, 32
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB35_13:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 0
	lu32i.d	$a3, -65536
	ori	$a4, $zero, 32
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB35_14:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	b	.LBB35_19
.LBB35_15:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	b	.LBB35_19
.LBB35_16:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	b	.LBB35_19
.LBB35_17:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	b	.LBB35_19
.LBB35_18:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
.LBB35_19:
	ori	$a4, $zero, 32
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	test_fcNegZero_ldouble, .Lfunc_end35-test_fcNegZero_ldouble
                                        # -- End function
	.globl	test_isfpclass_ldouble          # -- Begin function test_isfpclass_ldouble
	.p2align	5
	.type	test_isfpclass_ldouble,@function
test_isfpclass_ldouble:                 # @test_isfpclass_ldouble
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(LongDoubleZeroValues)
	addi.d	$fp, $a0, %pc_lo12(LongDoubleZeroValues)
	ld.d	$a1, $fp, 8
	ld.d	$a0, $fp, 0
	bltz	$a1, .LBB36_3
# %bb.1:
	pcaddu18i	$ra, %call36(test_fcPosZero_ldouble)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	ld.d	$a0, $fp, 16
	bltz	$a1, .LBB36_4
.LBB36_2:
	pcaddu18i	$ra, %call36(test_fcPosZero_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_5
.LBB36_3:
	pcaddu18i	$ra, %call36(test_fcNegZero_ldouble)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	ld.d	$a0, $fp, 16
	bgez	$a1, .LBB36_2
.LBB36_4:
	pcaddu18i	$ra, %call36(test_fcNegZero_ldouble)
	jirl	$ra, $ra, 0
.LBB36_5:                               # %.preheader50.preheader
	pcalau12i	$a0, %pc_hi20(LongDoubleDenormValues)
	addi.d	$s1, $a0, %pc_lo12(LongDoubleDenormValues)
	ld.d	$fp, $s1, 8
	ld.d	$s0, $s1, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB36_7
# %bb.6:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_8
.LBB36_7:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_ldouble)
	jirl	$ra, $ra, 0
.LBB36_8:                               # %.preheader50.1
	ld.d	$fp, $s1, 24
	ld.d	$s0, $s1, 16
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB36_10
# %bb.9:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegSubnormal_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_11
.LBB36_10:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosSubnormal_ldouble)
	jirl	$ra, $ra, 0
.LBB36_11:                              # %.preheader49.preheader
	pcalau12i	$a0, %pc_hi20(LongDoubleNormalValues)
	addi.d	$s1, $a0, %pc_lo12(LongDoubleNormalValues)
	ld.d	$fp, $s1, 8
	ld.d	$s0, $s1, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB36_13
# %bb.12:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegNormal_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_14
.LBB36_13:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosNormal_ldouble)
	jirl	$ra, $ra, 0
.LBB36_14:                              # %.preheader49.1
	ld.d	$fp, $s1, 24
	ld.d	$s0, $s1, 16
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB36_16
# %bb.15:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegNormal_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_17
.LBB36_16:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosNormal_ldouble)
	jirl	$ra, $ra, 0
.LBB36_17:                              # %.preheader49.2
	ld.d	$fp, $s1, 40
	ld.d	$s0, $s1, 32
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB36_19
# %bb.18:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegNormal_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_20
.LBB36_19:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosNormal_ldouble)
	jirl	$ra, $ra, 0
.LBB36_20:                              # %.preheader49.3
	ld.d	$fp, $s1, 56
	ld.d	$s0, $s1, 48
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB36_22
# %bb.21:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegNormal_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_23
.LBB36_22:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosNormal_ldouble)
	jirl	$ra, $ra, 0
.LBB36_23:                              # %.preheader49.4
	ld.d	$fp, $s1, 72
	ld.d	$s0, $s1, 64
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB36_25
# %bb.24:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegNormal_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_26
.LBB36_25:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosNormal_ldouble)
	jirl	$ra, $ra, 0
.LBB36_26:                              # %.preheader49.5
	ld.d	$fp, $s1, 88
	ld.d	$s0, $s1, 80
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB36_28
# %bb.27:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegNormal_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_29
.LBB36_28:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosNormal_ldouble)
	jirl	$ra, $ra, 0
.LBB36_29:                              # %.preheader48.preheader
	pcalau12i	$a0, %pc_hi20(LongDoubleInfValues)
	addi.d	$s1, $a0, %pc_lo12(LongDoubleInfValues)
	ld.d	$fp, $s1, 8
	ld.d	$s0, $s1, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__gttf2)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB36_31
# %bb.30:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosInf_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_32
.LBB36_31:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegInf_ldouble)
	jirl	$ra, $ra, 0
.LBB36_32:                              # %.preheader48.1
	ld.d	$fp, $s1, 24
	ld.d	$s0, $s1, 16
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__gttf2)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB36_34
# %bb.33:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcPosInf_ldouble)
	jirl	$ra, $ra, 0
	b	.LBB36_35
.LBB36_34:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(test_fcNegInf_ldouble)
	jirl	$ra, $ra, 0
.LBB36_35:                              # %.preheader47.preheader
	pcalau12i	$a0, %pc_hi20(LongDoubleQNaNValues)
	addi.d	$a1, $a0, %pc_lo12(LongDoubleQNaNValues)
	ld.d	$a3, $a1, 8
	ld.d	$a2, $a1, 0
	bstrpick.d	$a4, $a3, 62, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 2047
	slt	$a5, $a4, $a0
	xor	$a0, $a4, $a0
	sltui	$a0, $a0, 1
	masknez	$a5, $a5, $a0
	sltui	$a6, $a2, 1
	maskeqz	$a0, $a6, $a0
	or	$a5, $a0, $a5
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, -32769
	lu52i.d	$a0, $a0, 2047
	slt	$a6, $a0, $a4
	or	$a5, $a5, $a6
	beqz	$a5, .LBB36_48
# %bb.36:                               # %test_fcQNan_ldouble.exit
	bge	$a0, $a4, .LBB36_49
# %bb.37:                               # %.preheader47.1
	ld.d	$a3, $a1, 24
	ld.d	$a2, $a1, 16
	bstrpick.d	$a4, $a3, 62, 0
	ori	$a5, $zero, 0
	ori	$a6, $zero, 0
	lu32i.d	$a6, -65536
	lu52i.d	$a6, $a6, 2047
	slt	$a7, $a6, $a4
	xor	$a6, $a4, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	sltu	$t0, $zero, $a2
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	lu32i.d	$a5, -32768
	lu52i.d	$a5, $a5, 2047
	slt	$a7, $a4, $a5
	and	$a6, $a6, $a7
	bnez	$a6, .LBB36_48
# %bb.38:                               # %test_fcQNan_ldouble.exit.1
	blt	$a4, $a5, .LBB36_49
# %bb.39:                               # %.preheader47.2
	ld.d	$a3, $a1, 40
	ld.d	$a2, $a1, 32
	bstrpick.d	$a4, $a3, 62, 0
	ori	$a5, $zero, 0
	ori	$a6, $zero, 0
	lu32i.d	$a6, -65536
	lu52i.d	$a6, $a6, 2047
	slt	$a7, $a6, $a4
	xor	$a6, $a4, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	sltu	$t0, $zero, $a2
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	lu32i.d	$a5, -32768
	lu52i.d	$a5, $a5, 2047
	slt	$a7, $a4, $a5
	and	$a6, $a6, $a7
	bnez	$a6, .LBB36_48
# %bb.40:                               # %test_fcQNan_ldouble.exit.2
	blt	$a4, $a5, .LBB36_49
# %bb.41:                               # %.preheader47.3
	ld.d	$a3, $a1, 56
	ld.d	$a2, $a1, 48
	bstrpick.d	$a1, $a3, 62, 0
	ori	$a4, $zero, 0
	ori	$a5, $zero, 0
	lu32i.d	$a5, -65536
	lu52i.d	$a5, $a5, 2047
	slt	$a6, $a5, $a1
	xor	$a5, $a1, $a5
	sltui	$a5, $a5, 1
	masknez	$a6, $a6, $a5
	sltu	$a7, $zero, $a2
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	lu32i.d	$a4, -32768
	lu52i.d	$a4, $a4, 2047
	slt	$a6, $a1, $a4
	and	$a5, $a5, $a6
	bnez	$a5, .LBB36_48
# %bb.42:                               # %test_fcQNan_ldouble.exit.3
	blt	$a1, $a4, .LBB36_49
# %bb.43:                               # %test_fcSNan_ldouble.exit.preheader
	pcalau12i	$a1, %pc_hi20(LongDoubleSNaNValues)
	addi.d	$a1, $a1, %pc_lo12(LongDoubleSNaNValues)
	ld.d	$a3, $a1, 8
	ld.d	$a2, $a1, 0
	bstrpick.d	$a5, $a3, 62, 0
	ori	$a6, $zero, 0
	ori	$a4, $zero, 0
	lu32i.d	$a4, -65536
	lu52i.d	$a4, $a4, 2047
	slt	$a7, $a4, $a5
	xor	$t0, $a5, $a4
	sltui	$t0, $t0, 1
	masknez	$a7, $a7, $t0
	sltu	$t1, $zero, $a2
	maskeqz	$t0, $t1, $t0
	or	$a7, $t0, $a7
	lu32i.d	$a6, -32768
	lu52i.d	$a6, $a6, 2047
	slt	$a5, $a5, $a6
	and	$a5, $a7, $a5
	beqz	$a5, .LBB36_51
# %bb.44:                               # %test_fcSNan_ldouble.exit.1
	ld.d	$a3, $a1, 24
	ld.d	$a2, $a1, 16
	bstrpick.d	$a5, $a3, 62, 0
	slt	$a6, $a5, $a4
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a6, $a6, $a4
	sltui	$a7, $a2, 1
	maskeqz	$a4, $a7, $a4
	or	$a4, $a4, $a6
	slt	$a5, $a0, $a5
	or	$a4, $a4, $a5
	bnez	$a4, .LBB36_51
# %bb.45:                               # %test_fcSNan_ldouble.exit.2
	ld.d	$a3, $a1, 40
	ld.d	$a2, $a1, 32
	bstrpick.d	$a5, $a3, 62, 0
	ori	$a4, $zero, 0
	lu32i.d	$a4, -65536
	lu52i.d	$a4, $a4, 2047
	slt	$a6, $a5, $a4
	xor	$a7, $a5, $a4
	sltui	$a7, $a7, 1
	masknez	$a6, $a6, $a7
	sltui	$t0, $a2, 1
	maskeqz	$a7, $t0, $a7
	or	$a6, $a7, $a6
	slt	$a5, $a0, $a5
	or	$a5, $a6, $a5
	bnez	$a5, .LBB36_51
# %bb.46:                               # %test_fcSNan_ldouble.exit.3
	ld.d	$a3, $a1, 56
	ld.d	$a2, $a1, 48
	bstrpick.d	$a1, $a3, 62, 0
	slt	$a5, $a1, $a4
	xor	$a4, $a1, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	sltui	$a6, $a2, 1
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	slt	$a0, $a0, $a1
	or	$a0, $a4, $a0
	bnez	$a0, .LBB36_51
# %bb.47:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB36_48:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB36_50
.LBB36_49:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
.LBB36_50:
	ori	$a4, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB36_51:
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a4, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	test_isfpclass_ldouble, .Lfunc_end36-test_isfpclass_ldouble
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(test_float)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(test_isfpclass_float)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(test_double)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(test_isfpclass_double)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(LongDoubleQNaNValues)
	addi.d	$a1, $a0, %pc_lo12(LongDoubleQNaNValues)
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -32768
	lu52i.d	$a3, $a2, 2047
	st.d	$a3, $a1, 8
	st.d	$zero, $a1, 0
	st.d	$a2, $a1, 24
	st.d	$zero, $a1, 16
	st.d	$a3, $a1, 40
	ori	$a3, $zero, 1
	st.d	$a3, $a1, 32
	st.d	$a2, $a1, 56
	st.d	$a3, $a1, 48
	pcalau12i	$a1, %pc_hi20(LongDoubleSNaNValues)
	addi.d	$a1, $a1, %pc_lo12(LongDoubleSNaNValues)
	ori	$a2, $zero, 0
	lu32i.d	$a2, -49152
	lu52i.d	$a4, $a2, 2047
	st.d	$a4, $a1, 8
	st.d	$zero, $a1, 0
	st.d	$a2, $a1, 24
	st.d	$zero, $a1, 16
	ori	$a2, $zero, 0
	lu32i.d	$a2, -65536
	lu52i.d	$a4, $a2, 2047
	st.d	$a4, $a1, 40
	st.d	$a3, $a1, 32
	st.d	$a2, $a1, 56
	st.d	$a3, $a1, 48
	pcalau12i	$a1, %pc_hi20(LongDoubleInfValues)
	addi.d	$a1, $a1, %pc_lo12(LongDoubleInfValues)
	st.d	$a4, $a1, 8
	st.d	$zero, $a1, 0
	st.d	$a2, $a1, 24
	st.d	$zero, $a1, 16
	pcalau12i	$a1, %pc_hi20(LongDoubleDenormValues)
	addi.d	$a1, $a1, %pc_lo12(LongDoubleDenormValues)
	st.d	$zero, $a1, 8
	st.d	$a3, $a1, 0
	lu52i.d	$a4, $zero, -2048
	st.d	$a4, $a1, 24
	st.d	$a3, $a1, 16
	pcalau12i	$a1, %pc_hi20(LongDoubleNormalValues)
	addi.d	$a1, $a1, %pc_lo12(LongDoubleNormalValues)
	lu52i.d	$a3, $a2, 1023
	st.d	$a3, $a1, 8
	st.d	$zero, $a1, 0
	lu52i.d	$a2, $a2, -1025
	st.d	$a2, $a1, 24
	st.d	$zero, $a1, 16
	addi.w	$a2, $zero, -1
	st.d	$a2, $a1, 32
	st.d	$a2, $a1, 48
	lu32i.d	$a2, -65537
	lu52i.d	$a3, $a2, 2047
	st.d	$a3, $a1, 40
	st.d	$a2, $a1, 56
	lu32i.d	$a0, 65536
	st.d	$a0, $a1, 72
	st.d	$zero, $a1, 64
	lu52i.d	$a0, $a0, -2048
	st.d	$a0, $a1, 88
	st.d	$zero, $a1, 80
	pcaddu18i	$ra, %call36(test_ldouble)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(test_isfpclass_ldouble)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end37:
	.size	main, .Lfunc_end37-main
                                        # -- End function
	.type	FloatQNaNValues,@object         # @FloatQNaNValues
	.data
	.globl	FloatQNaNValues
	.p2align	2, 0x0
FloatQNaNValues:
	.word	2147483647                      # 0x7fffffff
	.word	4294967295                      # 0xffffffff
	.word	2143289344                      # 0x7fc00000
	.word	4290772992                      # 0xffc00000
	.word	2145386496                      # 0x7fe00000
	.word	4291821568                      # 0xffd00000
	.word	2143289345                      # 0x7fc00001
	.word	4290772994                      # 0xffc00002
	.size	FloatQNaNValues, 32

	.type	FloatSNaNValues,@object         # @FloatSNaNValues
	.globl	FloatSNaNValues
	.p2align	2, 0x0
FloatSNaNValues:
	.word	2143289343                      # 0x7fbfffff
	.word	4290772991                      # 0xffbfffff
	.word	2141192192                      # 0x7fa00000
	.word	4287627264                      # 0xff900000
	.word	2139095041                      # 0x7f800001
	.word	4286578690                      # 0xff800002
	.size	FloatSNaNValues, 24

	.type	FloatInfValues,@object          # @FloatInfValues
	.globl	FloatInfValues
	.p2align	2, 0x0
FloatInfValues:
	.word	2139095040                      # 0x7f800000
	.word	4286578688                      # 0xff800000
	.size	FloatInfValues, 8

	.type	FloatZeroValues,@object         # @FloatZeroValues
	.globl	FloatZeroValues
	.p2align	2, 0x0
FloatZeroValues:
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.size	FloatZeroValues, 8

	.type	FloatDenormValues,@object       # @FloatDenormValues
	.globl	FloatDenormValues
	.p2align	2, 0x0
FloatDenormValues:
	.word	1                               # 0x1
	.word	2147483649                      # 0x80000001
	.word	8388607                         # 0x7fffff
	.word	2155872255                      # 0x807fffff
	.size	FloatDenormValues, 16

	.type	FloatNormalValues,@object       # @FloatNormalValues
	.globl	FloatNormalValues
	.p2align	2, 0x0
FloatNormalValues:
	.word	8388608                         # 0x800000
	.word	2155872256                      # 0x80800000
	.word	2139095039                      # 0x7f7fffff
	.word	4286578687                      # 0xff7fffff
	.word	1065353216                      # 0x3f800000
	.word	1065353215                      # 0x3f7fffff
	.word	1065353217                      # 0x3f800001
	.word	1069547520                      # 0x3fc00000
	.word	1067450368                      # 0x3fa00000
	.word	1066401792                      # 0x3f900000
	.word	1056964608                      # 0x3f000000
	.word	1048576000                      # 0x3e800000
	.word	1040187392                      # 0x3e000000
	.word	3212836864                      # 0xbf800000
	.word	3212836863                      # 0xbf7fffff
	.word	3212836865                      # 0xbf800001
	.word	3217031168                      # 0xbfc00000
	.word	3214934016                      # 0xbfa00000
	.word	3213885440                      # 0xbf900000
	.word	3204448256                      # 0xbf000000
	.word	3196059648                      # 0xbe800000
	.word	3187671040                      # 0xbe000000
	.word	1073741824                      # 0x40000000
	.word	1077936128                      # 0x40400000
	.word	3221225472                      # 0xc0000000
	.word	3225419776                      # 0xc0400000
	.size	FloatNormalValues, 104

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Check '%s' in file '%s' at line %d failed for the value '"
	.size	.L.str, 58

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"__builtin_isnan(X)"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Float/classify-f32.h"
	.size	.L.str.2, 127

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%x"
	.size	.L.str.3, 3

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"!__builtin_issignaling(X)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"!__builtin_isinf(X)"
	.size	.L.str.6, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"!__builtin_isnormal(X)"
	.size	.L.str.8, 23

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"!__builtin_issubnormal(X)"
	.size	.L.str.9, 26

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"__builtin_issignaling(X)"
	.size	.L.str.12, 25

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"!__builtin_isnan(X)"
	.size	.L.str.13, 20

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"__builtin_isinf(X)"
	.size	.L.str.14, 19

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"__builtin_issubnormal(X)"
	.size	.L.str.19, 25

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"__builtin_isnormal(X)"
	.size	.L.str.21, 22

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Check '%s' failed for the value '%x' , FPCLASS=0x%x\n"
	.size	.L.str.23, 53

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"!!((fcSNan)&FPCLASS) == !!__builtin_isfpclass((x), (fcSNan))"
	.size	.L.str.24, 61

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"!!((fcQNan)&FPCLASS) == !!__builtin_isfpclass((x), (fcQNan))"
	.size	.L.str.25, 61

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"!!((fcPosInf)&FPCLASS) == !!__builtin_isfpclass((x), (fcPosInf))"
	.size	.L.str.27, 65

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"!!((fcNegInf)&FPCLASS) == !!__builtin_isfpclass((x), (fcNegInf))"
	.size	.L.str.28, 65

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"!!((fcPosNormal)&FPCLASS) == !!__builtin_isfpclass((x), (fcPosNormal))"
	.size	.L.str.30, 71

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"!!((fcNegNormal)&FPCLASS) == !!__builtin_isfpclass((x), (fcNegNormal))"
	.size	.L.str.31, 71

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"!!((fcPosSubnormal)&FPCLASS) == !!__builtin_isfpclass((x), (fcPosSubnormal))"
	.size	.L.str.33, 77

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"!!((fcNegSubnormal)&FPCLASS) == !!__builtin_isfpclass((x), (fcNegSubnormal))"
	.size	.L.str.34, 77

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"!!((fcPosZero)&FPCLASS) == !!__builtin_isfpclass((x), (fcPosZero))"
	.size	.L.str.36, 67

	.type	DoubleQNaNValues,@object        # @DoubleQNaNValues
	.data
	.globl	DoubleQNaNValues
	.p2align	3, 0x0
DoubleQNaNValues:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	9221120237041090560             # 0x7ff8000000000000
	.dword	-2251799813685248               # 0xfff8000000000000
	.dword	9222246136947933184             # 0x7ffc000000000000
	.dword	-1688849860263936               # 0xfffa000000000000
	.dword	9221120237041090561             # 0x7ff8000000000001
	.dword	-2251799813685246               # 0xfff8000000000002
	.size	DoubleQNaNValues, 64

	.type	DoubleSNaNValues,@object        # @DoubleSNaNValues
	.globl	DoubleSNaNValues
	.p2align	3, 0x0
DoubleSNaNValues:
	.dword	9221120237041090559             # 0x7ff7ffffffffffff
	.dword	-2251799813685249               # 0xfff7ffffffffffff
	.dword	9219994337134247936             # 0x7ff4000000000000
	.dword	-3940649673949184               # 0xfff2000000000000
	.dword	9218868437227405313             # 0x7ff0000000000001
	.dword	-4503599627370494               # 0xfff0000000000002
	.size	DoubleSNaNValues, 48

	.type	DoubleInfValues,@object         # @DoubleInfValues
	.globl	DoubleInfValues
	.p2align	3, 0x0
DoubleInfValues:
	.dword	9218868437227405312             # 0x7ff0000000000000
	.dword	-4503599627370496               # 0xfff0000000000000
	.size	DoubleInfValues, 16

	.type	DoubleZeroValues,@object        # @DoubleZeroValues
	.globl	DoubleZeroValues
	.p2align	3, 0x0
DoubleZeroValues:
	.dword	0                               # 0x0
	.dword	-9223372036854775808            # 0x8000000000000000
	.size	DoubleZeroValues, 16

	.type	DoubleDenormValues,@object      # @DoubleDenormValues
	.globl	DoubleDenormValues
	.p2align	3, 0x0
DoubleDenormValues:
	.dword	1                               # 0x1
	.dword	-9223372036854775807            # 0x8000000000000001
	.dword	4503599627370495                # 0xfffffffffffff
	.dword	-9218868437227405313            # 0x800fffffffffffff
	.size	DoubleDenormValues, 32

	.type	DoubleNormalValues,@object      # @DoubleNormalValues
	.globl	DoubleNormalValues
	.p2align	3, 0x0
DoubleNormalValues:
	.dword	4503599627370496                # 0x10000000000000
	.dword	-9218868437227405312            # 0x8010000000000000
	.dword	9218868437227405311             # 0x7fefffffffffffff
	.dword	-4503599627370497               # 0xffefffffffffffff
	.dword	4607182418800017408             # 0x3ff0000000000000
	.dword	4607182418800017407             # 0x3fefffffffffffff
	.dword	4607182418800017409             # 0x3ff0000000000001
	.dword	4609434218613702656             # 0x3ff8000000000000
	.dword	4608308318706860032             # 0x3ff4000000000000
	.dword	4607745368753438720             # 0x3ff2000000000000
	.dword	4602678819172646912             # 0x3fe0000000000000
	.dword	4598175219545276416             # 0x3fd0000000000000
	.dword	4593671619917905920             # 0x3fc0000000000000
	.dword	-4616189618054758400            # 0xbff0000000000000
	.dword	-4616189618054758401            # 0xbfefffffffffffff
	.dword	-4616189618054758399            # 0xbff0000000000001
	.dword	-4613937818241073152            # 0xbff8000000000000
	.dword	-4615063718147915776            # 0xbff4000000000000
	.dword	-4615626668101337088            # 0xbff2000000000000
	.dword	-4620693217682128896            # 0xbfe0000000000000
	.dword	-4625196817309499392            # 0xbfd0000000000000
	.dword	-4629700416936869888            # 0xbfc0000000000000
	.dword	4611686018427387904             # 0x4000000000000000
	.dword	4613937818241073152             # 0x4008000000000000
	.dword	-4611686018427387904            # 0xc000000000000000
	.dword	-4609434218613702656            # 0xc008000000000000
	.size	DoubleNormalValues, 208

	.type	.L.str.169,@object              # @.str.169
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.169:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Float/classify-f64.h"
	.size	.L.str.169, 127

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"%lx"
	.size	.L.str.170, 4

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"Check '%s' failed for the value '%lx' , FPCLASS=0x%x\n"
	.size	.L.str.171, 54

	.type	LongDoubleZeroValues,@object    # @LongDoubleZeroValues
	.data
	.globl	LongDoubleZeroValues
	.p2align	4, 0x0
LongDoubleZeroValues:
	.dword	0x0000000000000000              # fp128 0
	.dword	0x0000000000000000
	.dword	0x0000000000000000              # fp128 -0
	.dword	0x8000000000000000
	.size	LongDoubleZeroValues, 32

	.type	LongDoubleQNaNValues,@object    # @LongDoubleQNaNValues
	.bss
	.globl	LongDoubleQNaNValues
	.p2align	4, 0x0
LongDoubleQNaNValues:
	.space	64
	.size	LongDoubleQNaNValues, 64

	.type	LongDoubleSNaNValues,@object    # @LongDoubleSNaNValues
	.globl	LongDoubleSNaNValues
	.p2align	4, 0x0
LongDoubleSNaNValues:
	.space	64
	.size	LongDoubleSNaNValues, 64

	.type	LongDoubleInfValues,@object     # @LongDoubleInfValues
	.globl	LongDoubleInfValues
	.p2align	4, 0x0
LongDoubleInfValues:
	.space	32
	.size	LongDoubleInfValues, 32

	.type	LongDoubleDenormValues,@object  # @LongDoubleDenormValues
	.globl	LongDoubleDenormValues
	.p2align	4, 0x0
LongDoubleDenormValues:
	.space	32
	.size	LongDoubleDenormValues, 32

	.type	LongDoubleNormalValues,@object  # @LongDoubleNormalValues
	.globl	LongDoubleNormalValues
	.p2align	4, 0x0
LongDoubleNormalValues:
	.space	96
	.size	LongDoubleNormalValues, 96

	.type	.L.str.172,@object              # @.str.172
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.172:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Float/classify-ldouble.h"
	.size	.L.str.172, 131

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"%Lg"
	.size	.L.str.173, 4

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"Check '%s' failed for the value '%Lg' , FPCLASS=0x%x\n"
	.size	.L.str.174, 54

	.type	.Lstr.50,@object                # @str.50
.Lstr.50:
	.asciz	"'"
	.size	.Lstr.50, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
