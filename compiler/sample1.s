	j	min_caml_start
min_caml_start:
	li	a0, 0 ! 1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4