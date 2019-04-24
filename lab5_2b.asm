main:
	li		$s0, 32
	li		$s1, -8
	li		$t0, 0
	addi	$s2, $zero, $s0
	blt		$s0, $zero, nega
	blt		$s1, $zero, negat
	j 		loop
nega:
	muli	$s0, $s0, -1
	blt		$s1, $zero, negat
	j		loop
negat:
	muli	$s1, $s1, -1
	j		loop
loop:
	blt		$s0, $s1, exit
	sub		$s0, $s0, $s1
	addi	$t0, $t0, 1
	j		loop
exit:
	blt		$s3, $zero, exit1
	blt		$s0, $zero, exit2
	jr		$31
exit1:
	muli	$t0, $t0, -1
	blt		$s0, $zero, exit2
	jr		$31
exit2:
	muli	$t0, $t0, -1
	jr		$31