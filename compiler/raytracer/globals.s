	j	min_caml_start
min_caml_start:
	li	a0, 1 ! 11
	li	a1, 0 ! 11
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, l.211 ! 15
	ldd	[a0 + 0], %f0 ! 15
	lw	a0, sp, 4 ! 0
	std	%f0, [sp + 8] ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_create_float_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 60 ! 16
	mv	a2, %i1 ! 16
	addi	%i1, %i1, 48 ! 16
	sw	a2, a0, 40 ! 16
	sw	a2, a0, 36 ! 16
	sw	a2, a0, 32 ! 16
	sw	a2, a0, 28 ! 16
	lw	a3, sp, 4 ! 0
	sw	a2, a3, 24 ! 16
	sw	a2, a0, 20 ! 16
	sw	a2, a0, 16 ! 16
	sw	a2, a3, 12 ! 16
	sw	a2, a3, 8 ! 16
	sw	a2, a3, 4 ! 16
	sw	a2, a3, 0 ! 16
	mv	a0, a2 ! 16
	sw	sp, a1, 16 ! 0
	mv	t1, a1
	mv	a1, a0
	mv	a0, t1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, 3 ! 19
	ldd	[sp + 8], %f0 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, l.225 ! 25
	ldd	[a0 + 0], %f0 ! 25
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, 50 ! 27
	li	a1, -1 ! 27
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, a0, 0 ! 29
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, l.228 ! 37
	ldd	[a0 + 0], %f0 ! 37
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, 2 ! 53
	lw	a1, sp, 4 ! 0
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 4 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, %i1 ! 76
	addi	%i1, %i1, 8 ! 76
	sw	a1, a0, 4 ! 76
	lw	a0, sp, 32 ! 0
	sw	a1, a0, 0 ! 76
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	li	a0, 5 ! 77
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f0 ! 0
	lw	a1, sp, 20 ! 0
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 36 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, a0
	lw	a0, sp, 4 ! 0
	sw	sp, a1, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, %i1 ! 90
	addi	%i1, %i1, 8 ! 90
	sw	a1, a0, 4 ! 90
	lw	a0, sp, 40 ! 0
	sw	a1, a0, 0 ! 90
	mv	a0, a1 ! 90
	li	a1, 180 ! 91
	mv	a2, %i1 ! 91
	addi	%i1, %i1, 16 ! 91
	ldd	[sp + 8], %f0 ! 0
	std	%f0, [a2 + 8] ! 91
	sw	a2, a0, 4 ! 91
	lw	a0, sp, 4 ! 0
	sw	a2, a0, 0 ! 91
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
