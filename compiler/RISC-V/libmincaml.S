min_caml_fequal:
	feq.s	f0, f0, f1
	ret
min_caml_fless:
	flt.s f0, f0, f1
	ret
min_caml_fispos:
	fcvt.s.w f31, zero, <rm>
	flt.s f0, f31, f0
	ret
min_caml_fisneg:
	fcvt.s.w f31, zero, <rm>
	flt.s f0, f0, f31
	ret
min_caml_fiszero:
	fcvt.s.w f31, zero, <rm>
	feq.s f0, f0, f31
	ret
min_caml_fhalf:
	li x31, float_0.5
	flw f31, x31, 0
	fmul.s f0, f0, f31, <rm>
	ret
min_caml_fsqr:
	fmul.s f0, f0, f0, <rm>
	ret
min_caml_fabs:
	fsgnjx.s f0, f0, f0
	ret
min_caml_fneg:
	fsgnjn.s f0, f0, f0
	ret
min_caml_sqrt:
	fsqrt.s f0, f0, <rm>
	ret
min_caml_floor:
	fcvt.w.s x31, f0, rdn
	fcvt.s.w f0, x31, <rm>
	ret
min_caml_int_of_float:
	fcvt.s.w a0, f0, <rm>
	ret
min_caml_float_of_int:
	fcvt.w.s f0, a0, <rm>
	ret
min_caml_cos:
	fcos.s f0, f0, <rm>
	ret
min_caml_sin:
	fsin.s f0, f0, <rm>
	ret
min_caml_atan:
	fatan.s f0, f0, <rm>
	ret
min_caml_print_char:
	out zero, a0, 0
	ret
min_caml_print_int:
	li x29, 10
min_caml_print_int_loop:
	divu x30, a0, x29
	remu x31, a0, x29
	addi x31, x31, 48
	out zero, x31, 0
	mv a0, x30
	bne a0, zero, min_caml_print_int_loop
	ret
float_0.5:
	(float 0.5のbitパターン)
min_caml_buf:
	(16B)
