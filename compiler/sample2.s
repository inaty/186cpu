	j	min_caml_start
min_caml_start:
	li	a0, 0 ! 1
	li	a1, 2 ! 1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 1 ! 3
	sw	a0, a1, 0 ! 3
	sw	a0, a1, 0 ! 4
