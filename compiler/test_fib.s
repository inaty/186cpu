	j	min_caml_start
fibonacci.11:
	li	a1, 0 ! 2
	bne	a0, a1, be_else.29
	li	a0, 0 ! 2
	ret ! 2
be_else.29:
	li	a1, 1 ! 3
	bne	a0, a1, be_else.30
	li	a0, 1 ! 3
	ret ! 3
be_else.30:
	addi	a1, a0, -1 ! 4
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	fibonacci.11
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	addi	a1, a1, -2 ! 4
	sw	sp, a0, 4 ! 0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	fibonacci.11
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4 ! 0
	add	a0, a1, a0 ! 4
	ret ! 4
return_unit.13:
	ret ! 5
min_caml_start:
	li	a0, 6 ! 6
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	fibonacci.11
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	return_unit.13
	addi	sp, sp, -8
	lw	ra, sp, 4
