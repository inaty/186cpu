min_caml_fequal:
	feq.s	a0, fa0, fa1
	ret
min_caml_fless:
	flt.s	a0, fa0, fa1
	ret
min_caml_fispos:
	fcvt.s.w	ft0, zero, rne
	flt.s	a0, ft0, fa0
	ret
min_caml_fisneg:
	fcvt.s.w	ft0, zero, rne
	flt.s	a0, fa0, ft0
	ret
min_caml_fiszero:
	fcvt.s.w	ft0, zero, rne
	feq.s	a0, fa0, ft0
	ret
min_caml_fhalf:
	li	x31, min_caml_fhalf_float_0.5
	flw	ft0, x31, 0
	fmul.s	fa0, fa0, ft0, rne
	ret
min_caml_fsqr:
	fmul.s	fa0, fa0, fa0, rne
	ret
min_caml_fabs:
	fsgnjx.s	fa0, fa0, fa0
	ret
min_caml_fneg:
	fsgnjn.s	fa0, fa0, fa0
	ret
min_caml_sqrt:
	fsqrt.s	fa0, fa0, rne
	ret
min_caml_floor:
	fcvt.w.s	t0, fa0, rdn
	fcvt.s.w	fa0, t0, rne
	ret
min_caml_int_of_float:
	fcvt.w.s	a0, fa0, rtz
	ret
min_caml_float_of_int:
	fcvt.s.w	fa0, a0, rne
	ret
min_caml_cos:
	fcos.s	fa0, fa0, rne
	ret
min_caml_sin:
	fsin.s	fa0, fa0, rne
	ret
min_caml_atan:
	fatan.s	fa0, fa0, rne
	ret
min_caml_print_char:
	out	zero, a0, 0
	ret
min_caml_create_array:
	slli	a0, a0, 2 ! 要素数を4倍
	add	t0, ap, a0 ! 終点
	mv	a0, ap ! 配列先頭アドレスを先に返り値にセット
min_caml_create_array_loop:
	sw	ap, a1, 0
	addi	ap, ap, 4
	blt	ap, t0, min_caml_create_array_loop
	ret
min_caml_create_float_array:
	slli	a0, a0, 2 ! 要素数を4倍
	add	t0, ap, a0 ! 終点
	mv	a0, ap ! 配列先頭アドレスを先に返り値にセット
min_caml_create_float_array_loop:
	fsw	ap, fa0, 0
	addi	ap, ap, 4
	blt	ap, t0, min_caml_create_float_array_loop
	ret
min_caml_print_int_reverced_array.74:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	div	a5, a0, a4 ! 8
	mul	a4, a5, a4 ! 9
	sub	a0, a0, a4 ! 9
	slli	a4, a2, 2 ! 10
	add	t0, a1, a4 ! 10
	sw	t0, a0, 0 ! 10
	addi	a0, a2, 1 ! 11
	bne	a5, a3, be_else.132
	ret ! 12
be_else.132:
	mv	a2, a0
	mv	a0, a5
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int_reverce.46:
	lw	a4, a21, 4 ! 0
	blt	a1, a4, bge_else.133
	slli	a4, a1, 2 ! 18
	add	t0, a0, a4 ! 18
	lw	a4, t0, 0 ! 18
	slli	a5, a3, 2 ! 18
	add	t0, a2, a5 ! 18
	sw	t0, a4, 0 ! 18
	addi	a1, a1, -1 ! 19
	addi	a3, a3, 1 ! 19
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.133:
	ret ! 16
min_caml_print_int_body.52:
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	blt	a1, a2, bge_else.135
	ret ! 26
bge_else.135:
	slli	a2, a1, 2 ! 24
	add	t0, a0, a2 ! 24
	lw	a2, t0, 0 ! 24
	addi	a2, a2, 48 ! 24
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
	add	a1, a1, a0 ! 25
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int:
	li	a1, 0 ! 2
	bne	a0, a1, be_else.137
	li	a0, 48 ! 2
	j	min_caml_print_char
be_else.137:
	sw	sp, a1, 0 ! 0
	blt	a1, a0, bge_else.138
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
	j	bge_cont.139
bge_else.138:
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
	mv	a21, hp ! 6
	addi	hp, hp, 16 ! 6
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
	mv	a21, hp ! 15
	addi	hp, hp, 8 ! 15
	li	a0, min_caml_print_int_reverce.46 ! 15
	sw	a21, a0, 0 ! 15
	lw	a3, sp, 0 ! 0
	sw	a21, a3, 4 ! 15
	li	a0, 1 ! 21
	lw	a1, sp, 20 ! 0
	addi	a4, a1, -1 ! 21
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
	mv	a21, hp ! 22
	addi	hp, hp, 16 ! 22
	li	a0, min_caml_print_int_body.52 ! 22
	sw	a21, a0, 0 ! 22
	lw	a0, sp, 20 ! 0
	sw	a21, a0, 8 ! 22
	lw	a0, sp, 28 ! 0
	sw	a21, a0, 4 ! 22
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_newline:
	li	t0, 10
	out	zero, t0, 0
	ret
min_caml_truncate:
	j	min_caml_int_of_float
min_caml_fhalf_float_0.5:
	float	0.5
min_caml_read_int:
	in	a0, zero, 0
	slli	a0, a0, 8
	in	a0, zero, 0
	slli	a0, a0, 8
	in	a0, zero, 0
	slli	a0, a0, 8
	in	a0, zero, 0
	ret
min_caml_read_float:
	in	t0, zero, 0
	slli	t0, t0, 8
	in	t0, zero, 0
	slli	t0, t0, 8
	in	t0, zero, 0
	slli	t0, t0, 8
	in	t0, zero, 0
	fmv.w.x	fa0, t0
	ret
