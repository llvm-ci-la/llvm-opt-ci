	.file	"990513-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %vector.ph
	vreplgr2vr.w	$vr0, $a1
	vst	$vr0, $a0, 1008
	vst	$vr0, $a0, 992
	vst	$vr0, $a0, 976
	vst	$vr0, $a0, 960
	vst	$vr0, $a0, 944
	vst	$vr0, $a0, 928
	vst	$vr0, $a0, 912
	vst	$vr0, $a0, 896
	vst	$vr0, $a0, 880
	vst	$vr0, $a0, 864
	vst	$vr0, $a0, 848
	vst	$vr0, $a0, 832
	vst	$vr0, $a0, 816
	vst	$vr0, $a0, 800
	vst	$vr0, $a0, 784
	vst	$vr0, $a0, 768
	vst	$vr0, $a0, 752
	vst	$vr0, $a0, 736
	vst	$vr0, $a0, 720
	vst	$vr0, $a0, 704
	vst	$vr0, $a0, 688
	vst	$vr0, $a0, 672
	vst	$vr0, $a0, 656
	vst	$vr0, $a0, 640
	vst	$vr0, $a0, 624
	vst	$vr0, $a0, 608
	vst	$vr0, $a0, 592
	vst	$vr0, $a0, 576
	vst	$vr0, $a0, 560
	vst	$vr0, $a0, 544
	vst	$vr0, $a0, 528
	vst	$vr0, $a0, 512
	vst	$vr0, $a0, 496
	vst	$vr0, $a0, 480
	vst	$vr0, $a0, 464
	vst	$vr0, $a0, 448
	vst	$vr0, $a0, 432
	vst	$vr0, $a0, 416
	vst	$vr0, $a0, 400
	vst	$vr0, $a0, 384
	vst	$vr0, $a0, 368
	vst	$vr0, $a0, 352
	vst	$vr0, $a0, 336
	vst	$vr0, $a0, 320
	vst	$vr0, $a0, 304
	vst	$vr0, $a0, 288
	vst	$vr0, $a0, 272
	vst	$vr0, $a0, 256
	vst	$vr0, $a0, 240
	vst	$vr0, $a0, 224
	vst	$vr0, $a0, 208
	vst	$vr0, $a0, 192
	vst	$vr0, $a0, 176
	vst	$vr0, $a0, 160
	vst	$vr0, $a0, 144
	vst	$vr0, $a0, 128
	vst	$vr0, $a0, 112
	vst	$vr0, $a0, 96
	vst	$vr0, $a0, 80
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 0
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
