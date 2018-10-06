fibonacci.11:
	li	a1, 0
	bne	a0, a1, be_else.26
	li	a0, 0
	ret
be_else.26:
	li	a1, 1
	bne	a0, a1, be_else.27
	li	a0, 1
	ret
be_else.27:
	addi	a1, a0, -1
	sw	sp, a0, 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	fibonacci.11
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	addi	a1, a1, -2
	sw	sp, a0, 4
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	fibonacci.11
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4
	add	a0, a1, a0
	ret
min_caml_start:
	li	a0, 6
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	fibonacci.11
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
