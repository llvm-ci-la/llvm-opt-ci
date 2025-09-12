	.file	"kernel.c"
	.text
	.globl	kernel_measureFFT               # -- Begin function kernel_measureFFT
	.p2align	5
	.type	kernel_measureFFT,@function
kernel_measureFFT:                      # @kernel_measureFFT
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s1, $a0
	slli.w	$s2, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RandomVector)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(new_Stopwatch)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 64
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_1
# %bb.2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 128
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_3
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 256
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_5
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 512
	.p2align	4, , 16
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_7
# %bb.8:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1024
	.p2align	4, , 16
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_9
# %bb.10:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 2048
	.p2align	4, , 16
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_11
# %bb.12:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$s3, 1
	.p2align	4, , 16
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_13
# %bb.14:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$s3, 2
	.p2align	4, , 16
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_15
# %bb.16:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$s3, 4
	.p2align	4, , 16
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_17
# %bb.18:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$s3, 8
	.p2align	4, , 16
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_19
# %bb.20:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$s3, 16
	.p2align	4, , 16
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_transform)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FFT_inverse)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB0_21
# %bb.22:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FFT_num_flops)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, 1036
	movgr2fr.d	$fa1, $a0
	fmul.d	$fs0, $fa0, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_read)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs0, $fa0
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa1, $a0
	fmul.d	$fs0, $fa0, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Stopwatch_delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	kernel_measureFFT, .Lfunc_end0-kernel_measureFFT
                                        # -- End function
	.globl	kernel_measureSOR               # -- Begin function kernel_measureSOR
	.p2align	5
	.type	kernel_measureSOR,@function
kernel_measureSOR:                      # @kernel_measureSOR
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$a2, $a1
	move	$fp, $a0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(RandomMatrix)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(new_Stopwatch)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	vldi	$vr0, -908
	ori	$a3, $zero, 16
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	vldi	$vr0, -908
	ori	$a3, $zero, 32
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	vldi	$vr0, -908
	ori	$a3, $zero, 64
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	vldi	$vr0, -908
	ori	$a3, $zero, 128
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	vldi	$vr0, -908
	ori	$a3, $zero, 256
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	vldi	$vr0, -908
	ori	$a3, $zero, 512
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	vldi	$vr0, -908
	ori	$a3, $zero, 1024
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	vldi	$vr0, -908
	ori	$a3, $zero, 2048
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a3, 1
	vldi	$vr0, -908
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 2
	vldi	$vr0, -908
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a3, 4
	vldi	$vr0, -908
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a3, 8
	vldi	$vr0, -908
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a3, 16
	vldi	$vr0, -908
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a3, 32
	vldi	$vr0, -908
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(SOR_execute)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(SOR_num_flops)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_read)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs0, $fa0
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa1, $a0
	fmul.d	$fs0, $fa0, $fa1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Array2D_double_delete)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	kernel_measureSOR, .Lfunc_end1-kernel_measureSOR
                                        # -- End function
	.globl	kernel_measureMonteCarlo        # -- Begin function kernel_measureMonteCarlo
	.p2align	5
	.type	kernel_measureMonteCarlo,@function
kernel_measureMonteCarlo:               # @kernel_measureMonteCarlo
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(new_Stopwatch)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 32
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 64
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 128
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 256
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 512
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1024
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2048
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4096
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 8192
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16384
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 32768
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 65536
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 131072
	pcaddu18i	$ra, %call36(MonteCarlo_integrate)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	pcaddu18i	$ra, %call36(MonteCarlo_num_flops)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_read)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs0, $fa0
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa1, $a0
	fmul.d	$fs0, $fa0, $fa1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Stopwatch_delete)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	kernel_measureMonteCarlo, .Lfunc_end2-kernel_measureMonteCarlo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function kernel_measureSparseMatMult
.LCPI3_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	kernel_measureSparseMatMult
	.p2align	5
	.type	kernel_measureSparseMatMult,@function
kernel_measureSparseMatMult:            # @kernel_measureSparseMatMult
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	move	$a1, $a2
	pcaddu18i	$ra, %call36(RandomVector)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	slli.d	$a0, $s3, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	div.w	$s6, $s2, $s3
	mul.w	$a0, $s6, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(RandomVector)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	slli.d	$a0, $s3, 2
	addi.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcaddu18i	$ra, %call36(new_Stopwatch)
	jirl	$ra, $ra, 0
	st.w	$zero, $s5, 0
	blez	$s3, .LBB3_18
# %bb.1:                                # %.lr.ph57
	blez	$s6, .LBB3_11
# %bb.2:                                # %.lr.ph.us.preheader
	move	$a1, $zero
	move	$a2, $zero
	bstrpick.d	$a3, $s6, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $s4, 16
	slli.d	$a5, $s6, 2
	ori	$a6, $zero, 1
	ori	$a7, $zero, 8
	move	$t0, $s4
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %..loopexit_crit_edge.us
                                        #   in Loop: Header=BB3_4 Depth=1
	add.d	$a4, $a4, $a5
	add.d	$t0, $t0, $a5
	beq	$a2, $s3, .LBB3_18
.LBB3_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #     Child Loop BB3_10 Depth 2
	addi.w	$t1, $a2, 0
	div.wu	$t1, $t1, $s6
	add.d	$a1, $a1, $s6
	addi.d	$a2, $a2, 1
	slli.d	$t2, $a2, 2
	stx.w	$a1, $s5, $t2
	slt	$t2, $a6, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a6, $t2
	or	$t1, $t1, $t2
	bgeu	$s6, $a7, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	move	$t2, $zero
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_6:                                # %vector.ph75
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$t2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $t2, %pc_lo12(.LCPI3_0)
	vreplgr2vr.w	$vr1, $t1
	move	$t2, $a4
	move	$t3, $a3
	.p2align	4, , 16
.LBB3_7:                                # %vector.body80
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr2, $vr0, 4
	vmul.w	$vr3, $vr1, $vr0
	vmul.w	$vr2, $vr1, $vr2
	vst	$vr3, $t2, -16
	vst	$vr2, $t2, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB3_7
# %bb.8:                                # %middle.block86
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t2, $a3
	beq	$a3, $s6, .LBB3_3
.LBB3_9:                                # %scalar.ph73.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$t3, $t2, $t0, 2
	sub.d	$t4, $s6, $t2
	.p2align	4, , 16
.LBB3_10:                               # %scalar.ph73
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$t5, $t1, $t2
	st.w	$t5, $t3, 0
	addi.d	$t2, $t2, 1
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	bnez	$t4, .LBB3_10
	b	.LBB3_3
.LBB3_11:                               # %.loopexit.preheader
	ori	$a1, $zero, 8
	bgeu	$s3, $a1, .LBB3_13
# %bb.12:
	move	$a2, $zero
	move	$a1, $zero
	b	.LBB3_16
.LBB3_13:                               # %vector.ph
	bstrpick.d	$a1, $s3, 30, 3
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI3_0)
	vreplgr2vr.w	$vr0, $s6
	mul.d	$a2, $s6, $a1
	vslli.w	$vr3, $vr0, 2
	vmul.w	$vr1, $vr0, $vr1
	vadd.w	$vr2, $vr3, $vr0
	vadd.w	$vr3, $vr3, $vr3
	addi.d	$a3, $s5, 20
	move	$a4, $a1
	.p2align	4, , 16
.LBB3_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr4, $vr1, $vr0
	vadd.w	$vr5, $vr1, $vr2
	vst	$vr4, $a3, -16
	vst	$vr5, $a3, 0
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_14
# %bb.15:                               # %middle.block
	beq	$a1, $s3, .LBB3_18
.LBB3_16:                               # %.loopexit.preheader89
	add.d	$a2, $a2, $s6
	sub.d	$a3, $s3, $a1
	alsl.d	$a1, $a1, $s5, 2
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB3_17:                               # %.loopexit
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a1, 0
	add.d	$a2, $a2, $s6
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB3_17
.LBB3_18:                               # %.preheader
	move	$s6, $a0
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 64
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 128
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 256
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 512
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 1024
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 2048
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a6, 1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$s7, 2
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	move	$a6, $s7
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a6, 4
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a6, 8
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a6, 16
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a6, 32
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a6, 64
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$a6, 128
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(SparseCompRow_matmult)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(SparseCompRow_num_flops)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_read)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs0, $fa0
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa1, $a0
	fmul.d	$fs0, $fa0, $fa1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(Stopwatch_delete)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end3:
	.size	kernel_measureSparseMatMult, .Lfunc_end3-kernel_measureSparseMatMult
                                        # -- End function
	.globl	kernel_measureLU                # -- Begin function kernel_measureLU
	.p2align	5
	.type	kernel_measureLU,@function
kernel_measureLU:                       # @kernel_measureLU
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(new_Stopwatch)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(RandomMatrix)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_22
# %bb.1:
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $fp
	pcaddu18i	$ra, %call36(new_Array2D_double)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_22
# %bb.2:
	move	$s2, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_22
# %bb.3:                                # %.preheader.preheader
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 32
	.p2align	4, , 16
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_4
# %bb.5:                                # %.preheader.6
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 64
	.p2align	4, , 16
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_6
# %bb.7:                                # %.preheader.7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 128
	.p2align	4, , 16
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_8
# %bb.9:                                # %.preheader.8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 256
	.p2align	4, , 16
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_10
# %bb.11:                               # %.preheader.9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 512
	.p2align	4, , 16
.LBB4_12:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_12
# %bb.13:                               # %.preheader.10
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 1024
	.p2align	4, , 16
.LBB4_14:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_14
# %bb.15:                               # %.preheader.11
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 2048
	.p2align	4, , 16
.LBB4_16:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_16
# %bb.17:                               # %.preheader.12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$s4, 1
	.p2align	4, , 16
.LBB4_18:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_18
# %bb.19:                               # %.preheader.13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_start)
	jirl	$ra, $ra, 0
	lu12i.w	$s4, 2
	.p2align	4, , 16
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Array2D_double_copy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(LU_factor)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_20
# %bb.21:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_stop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LU_num_flops)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, 1036
	movgr2fr.d	$fa1, $a0
	fmul.d	$fs0, $fa0, $fa1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_read)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs0, $fa0
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa1, $a0
	fmul.d	$fs0, $fa0, $fa1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Stopwatch_delete)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Array2D_double_delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Array2D_double_delete)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB4_22:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	kernel_measureLU, .Lfunc_end4-kernel_measureLU
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
