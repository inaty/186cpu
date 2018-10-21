	j	min_caml_start
min_caml_print_int_reverced_array.74:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	div	a5, a0, a4 ! 8
	mul	a4, a5, a4 ! 9
	sub	a0, a0, a4 ! 9
	slli	a4, a2, 2 ! 10
	add	t0, a0, a4 ! 10
	sw	t0, a1, 0 ! 10
	addi	a0, a2, 1 ! 11
	bne	a5, a3, be_else.132
	ret ! 12
be_else.132:
	mv	a2, a0
	mv	a0, a5
	lw	 a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int_reverce.46:
	lw	a4, a21, 4 ! 0
	blt	a1, a4, bge_else.133
	j	bge_cont.134
bge_else.133:
	slli	a4, a1, 2 ! 18
	add	t0, a0, a4 ! 18
	lw	a4, t0, 0 ! 18
	slli	a5, a3, 2 ! 18
	add	t0, a4, a5 ! 18
	sw	t0, a2, 0 ! 18
bge_cont.134:
	addi	a1, a1, -1 ! 19
	addi	a3, a3, 1 ! 19
	lw	 a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int_body.52:
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	blt	a1, a2, bge_else.135
	ret ! 25
bge_else.135:
	slli	a2, a1, 2 ! 23
	add	t0, a0, a2 ! 23
	lw	a2, t0, 0 ! 23
	addi	a2, a2, 48 ! 23
	sw	sp, a0, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a1, 12 ! 0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_print_char
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 12 ! 0
	add	a1, a1, a0 ! 24
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	 a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int.37:
	li	a1, 0 ! 2
	bne	a0, a1, be_else.137
	li	a0, 48 ! 2
	j	min_caml_print_char
be_else.137:
	sw	sp, a1, 0 ! 0
	blt	a1, a0, bge_else.138
	j	bge_cont.139
bge_else.138:
	li	a2, 45 ! 4
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_print_char
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	neg	a0, a0 ! 4
bge_cont.139:
	li	a1, 10 ! 5
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a1, 12 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, a0
	mv	a21, x4 ! 6
	addi	x4, x4, 16 ! 6
	li	a0, min_caml_print_int_reverced_array.74 ! 6
	sw	a21, a0, 0 ! 6
	lw	a2, sp, 0 ! 0
	sw	a21, a2, 8 ! 6
	lw	a0, sp, 12 ! 0
	sw	a21, a0, 4 ! 6
	lw	a3, sp, 8 ! 0
	sw	sp, a1, 16 ! 0
	mv	a0, a3
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a2, a0
	mv	a21, x4 ! 15
	addi	x4, x4, 8 ! 15
	li	a0, min_caml_print_int_reverce.46 ! 15
	sw	a21, a0, 0 ! 15
	lw	a3, sp, 0 ! 0
	sw	a21, a3, 4 ! 15
	li	a0, 1 ! 20
	lw	a1, sp, 20 ! 0
	addi	a4, a1, -1 ! 20
	lw	a5, sp, 16 ! 0
	sw	sp, a2, 24 ! 0
	sw	sp, a0, 28 ! 0
	mv	a1, a4
	mv	a0, a5
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a21, x4 ! 21
	addi	x4, x4, 16 ! 21
	li	a0, min_caml_print_int_body.52 ! 21
	sw	a21, a0, 0 ! 21
	lw	a0, sp, 20 ! 0
	sw	a21, a0, 8 ! 21
	lw	a0, sp, 28 ! 0
	sw	a21, a0, 4 ! 21
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 0 ! 0
	lw	 a20, a21, 0
	jalr	zero, a20, 0
min_caml_start:
	li	a0, -50 ! 27
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int.37
	addi	sp, sp, -8
	lw	ra, sp, 4
	fin	0
