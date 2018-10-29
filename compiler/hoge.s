	j	min_caml_start
fact.7:
	li	a1, 1 ! 2
	blt	a1, a0, bge_else.17
	li	a0, 1 ! 3
	ret ! 3
bge_else.17:
	addi	a1, a0, -1 ! 2
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	fact.7
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	mul	a0, a1, a0 ! 2
	ret ! 2
min_caml_start:
	li	a0, 10 ! 4
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	fact.7
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_int
	addi	sp, sp, -4
	lw	ra, sp, 0
	fin	0
