	li	sp, 102400
	li	hp, 204800
	li	ap, 1228800
	j	min_caml_start
fibonacci.14:
	li	a1, 0 ! 2-2
	bne	a0, a1, beq_else.65 ! 2-4
	li	a0, 0 ! 2-2
	ret ! 2-2
beq_else.65:
	li	a1, 1 ! 3-3
	bne	a0, a1, beq_else.66 ! 3-4
	li	a0, 1 ! 3-3
	ret ! 3-3
beq_else.66:
	addi	a1, a0, -1 ! 4-4
	li	a2, 0 ! 2-2
	sw	sp, a0, 0 ! 0-0
	bne	a1, a2, beq_else.67 ! 2-4
	li	a0, 0 ! 2-2
	j	beq_cont.68
beq_else.67:
	li	a2, 1 ! 3-3
	bne	a1, a2, beq_else.69 ! 3-4
	li	a0, 1 ! 3-3
	j	beq_cont.70
beq_else.69:
	addi	a2, a1, -1 ! 4-4
	sw	sp, a1, 4 ! 0-0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	fibonacci.14
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0-0
	addi	a1, a1, -2 ! 4-4
	sw	sp, a0, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	fibonacci.14
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8 ! 0-0
	add	a0, a1, a0 ! 4-4
beq_cont.70:
beq_cont.68:
	lw	a1, sp, 0 ! 0-0
	addi	a1, a1, -2 ! 4-4
	li	a2, 0 ! 2-2
	sw	sp, a0, 12 ! 0-0
	bne	a1, a2, beq_else.71 ! 2-4
	li	a0, 0 ! 2-2
	j	beq_cont.72
beq_else.71:
	li	a2, 1 ! 3-3
	bne	a1, a2, beq_else.73 ! 3-4
	li	a0, 1 ! 3-3
	j	beq_cont.74
beq_else.73:
	addi	a2, a1, -1 ! 4-4
	sw	sp, a1, 16 ! 0-0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	fibonacci.14
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0-0
	addi	a1, a1, -2 ! 4-4
	sw	sp, a0, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	fibonacci.14
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0-0
	add	a0, a1, a0 ! 4-4
beq_cont.74:
beq_cont.72:
	lw	a1, sp, 12 ! 0-0
	add	a0, a1, a0 ! 4-4
	ret ! 4-4
min_caml_start:
	li	a0, 5 ! 4-4
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	fibonacci.14
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 4 ! 4-4
	sw	sp, a0, 0 ! 0-0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	fibonacci.14
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0-0
	add	a0, a1, a0 ! 4-4
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_newline
	addi	sp, sp, -8
	lw	ra, sp, 4
	fin	0
