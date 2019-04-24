main:
	li		$s0, 14
	li		$s1, 5
	li		$s2, 0
loop:
	blt		$s0, $s1, exit
	sub		$s0, $s0, $s1
	addi	$s2, $s2, 1 
	j		loop
exit:
	jr		$31