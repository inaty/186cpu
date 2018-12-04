	li	a0, 102400
	mv	sp, a0
	li	a0, 204800
	mv	hp, a0
	li	a0, 1228800
	mv	ap, a0
	j	min_caml_start
l.7607:
	float	128.00000000000
l.7593:
	float	40000.00000000000
l.7510:
	float	-2.00000000000
l.7508:
	float	0.10000000000
l.7495:
	float	0.20000000000
l.7462:
	float	100000000.00000000000
l.7456:
	float	1000000000.00000000000
l.7443:
	float	20.00000000000
l.7441:
	float	0.05000000000
l.7432:
	float	0.25000000000
l.7425:
	float	255.00000000000
l.7423:
	float	3.14159270000
l.7421:
	float	10.00000000000
l.7413:
	float	850.00000000000
l.7409:
	float	0.50000000000
l.7407:
	float	0.15000000000
l.7399:
	float	9.54929644444
l.7397:
	float	15.00000000000
l.7395:
	float	0.00010000000
l.7247:
	float	-0.10000000000
l.7219:
	float	0.01000000000
l.7217:
	float	-0.20000000000
l.7161:
	float	4.00000000000
l.6980:
	float	2.00000000000
l.6897:
	float	-1.00000000000
l.6895:
	float	1.00000000000
l.6856:
	float	0.00000000000
l.6837:
	float	-200.00000000000
l.6822:
	float	0.01745329300
normalize_vector.2022:
	flw	fa0, a0, 0 ! 216-216
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	flw	fa1, a0, 4 ! 216-216
	fmul.s	fa1, fa1, fa1, rne ! 17-17
	fadd.s	fa0, fa0, fa1, rne ! 216-216
	flw	fa1, a0, 8 ! 216-216
	fmul.s	fa1, fa1, fa1, rne ! 17-17
	fadd.s	fa0, fa0, fa1, rne ! 216-216
	sw	sp, a0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_sqrt
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, 0 ! 217-217
	lw	a1, sp, 4 ! 0-0
	bne	a1, a0, beq_else.7938 ! 217-217
	j	beq_cont.7939
beq_else.7938:
	fneg.s	fa0, fa0 ! 217-217
beq_cont.7939:
	lw	a0, sp, 0 ! 0-0
	flw	fa1, a0, 0 ! 218-218
	fdiv.s	fa1, fa1, fa0, rne ! 218-218
	fsw	a0, fa1, 0 ! 218-218
	flw	fa1, a0, 4 ! 219-219
	fdiv.s	fa1, fa1, fa0, rne ! 219-219
	fsw	a0, fa1, 4 ! 219-219
	flw	fa1, a0, 8 ! 220-220
	fdiv.s	fa0, fa1, fa0, rne ! 220-220
	fsw	a0, fa0, 8 ! 220-220
	ret ! 220-220
read_environ.2029:
	li	a0, min_caml_screen ! 241-241
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 241-241
	li	a0, min_caml_screen ! 242-242
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_float
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 4 ! 242-242
	li	a0, min_caml_screen ! 243-243
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_float
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 8 ! 243-243
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_float
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, l.6822 ! 232-232
	flw	fa1, a0, 0 ! 232-232
	fmul.s	fa0, fa0, fa1, rne ! 232-232
	li	a0, min_caml_cos_v ! 246-246
	fsw	sp, fa0, 12 ! 0-0
	sw	sp, a0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_cos
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0-0
	fsw	a0, fa0, 0 ! 246-246
	li	a0, min_caml_sin_v ! 247-247
	flw	fa0, sp, 12 ! 0-0
	sw	sp, a0, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_sin
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0-0
	fsw	a0, fa0, 0 ! 247-247
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_read_float
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a0, l.6822 ! 232-232
	flw	fa1, a0, 0 ! 232-232
	fmul.s	fa0, fa0, fa1, rne ! 232-232
	li	a0, min_caml_cos_v ! 249-249
	fsw	sp, fa0, 24 ! 0-0
	sw	sp, a0, 28 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_cos
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0-0
	fsw	a0, fa0, 4 ! 249-249
	li	a0, min_caml_sin_v ! 250-250
	flw	fa0, sp, 24 ! 0-0
	sw	sp, a0, 32 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_sin
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0-0
	fsw	a0, fa0, 4 ! 250-250
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_read_float
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_read_float
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, l.6822 ! 232-232
	flw	fa1, a0, 0 ! 232-232
	fmul.s	fa0, fa0, fa1, rne ! 232-232
	fsw	sp, fa0, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sin
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a0, min_caml_light ! 257-257
	fneg.s	fa0, fa0 ! 257-257
	fsw	a0, fa0, 4 ! 257-257
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a0, l.6822 ! 232-232
	flw	fa1, a0, 0 ! 232-232
	fmul.s	fa0, fa0, fa1, rne ! 232-232
	flw	fa1, sp, 36 ! 0-0
	fsw	sp, fa0, 40 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_cos
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 40 ! 0-0
	fsw	sp, fa0, 44 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_sin
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, min_caml_light ! 261-261
	flw	fa1, sp, 44 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 261-261
	fsw	a0, fa0, 0 ! 261-261
	flw	fa0, sp, 40 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_cos
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, min_caml_light ! 263-263
	flw	fa1, sp, 44 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 263-263
	fsw	a0, fa0, 8 ! 263-263
	li	a0, min_caml_beam ! 264-264
	sw	sp, a0, 48 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_read_float
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48 ! 0-0
	fsw	a0, fa0, 0 ! 264-264
	li	a0, min_caml_vp ! 267-267
	li	a1, min_caml_cos_v ! 267-267
	flw	fa0, a1, 0 ! 267-267
	li	a1, min_caml_sin_v ! 267-267
	flw	fa1, a1, 4 ! 267-267
	fmul.s	fa0, fa0, fa1, rne ! 267-267
	li	a1, l.6837 ! 267-267
	flw	fa1, a1, 0 ! 267-267
	fmul.s	fa0, fa0, fa1, rne ! 267-267
	fsw	a0, fa0, 0 ! 267-267
	li	a0, min_caml_vp ! 268-268
	li	a1, min_caml_sin_v ! 268-268
	flw	fa0, a1, 0 ! 268-268
	fneg.s	fa0, fa0 ! 268-268
	li	a1, l.6837 ! 268-268
	flw	fa1, a1, 0 ! 268-268
	fmul.s	fa0, fa0, fa1, rne ! 268-268
	fsw	a0, fa0, 4 ! 268-268
	li	a0, min_caml_vp ! 269-269
	li	a1, min_caml_cos_v ! 269-269
	flw	fa0, a1, 0 ! 269-269
	li	a1, min_caml_cos_v ! 269-269
	flw	fa1, a1, 4 ! 269-269
	fmul.s	fa0, fa0, fa1, rne ! 269-269
	li	a1, l.6837 ! 269-269
	flw	fa1, a1, 0 ! 269-269
	fmul.s	fa0, fa0, fa1, rne ! 269-269
	fsw	a0, fa0, 8 ! 269-269
	li	a0, min_caml_view ! 272-272
	li	a1, min_caml_vp ! 272-272
	flw	fa0, a1, 0 ! 272-272
	li	a1, min_caml_screen ! 272-272
	flw	fa1, a1, 0 ! 272-272
	fadd.s	fa0, fa0, fa1, rne ! 272-272
	fsw	a0, fa0, 0 ! 272-272
	li	a0, min_caml_view ! 273-273
	li	a1, min_caml_vp ! 273-273
	flw	fa0, a1, 4 ! 273-273
	li	a1, min_caml_screen ! 273-273
	flw	fa1, a1, 4 ! 273-273
	fadd.s	fa0, fa0, fa1, rne ! 273-273
	fsw	a0, fa0, 4 ! 273-273
	li	a0, min_caml_view ! 274-274
	li	a1, min_caml_vp ! 274-274
	flw	fa0, a1, 8 ! 274-274
	li	a1, min_caml_screen ! 274-274
	flw	fa1, a1, 8 ! 274-274
	fadd.s	fa0, fa0, fa1, rne ! 274-274
	fsw	a0, fa0, 8 ! 274-274
	ret ! 274-274
read_nth_object.2031:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 284-284
	bne	a0, a1, beq_else.7940 ! 284-403
	li	a0, 0 ! 403-403
	ret ! 403-403
beq_else.7940:
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 3 ! 290-290
	li	a2, l.6856 ! 290-290
	flw	fa0, a2, 0 ! 290-290
	sw	sp, a0, 16 ! 0-0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_float_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, a0, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_read_float
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0-0
	fsw	a0, fa0, 0 ! 292-292
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_read_float
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0-0
	fsw	a0, fa0, 4 ! 293-293
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_read_float
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0-0
	fsw	a0, fa0, 8 ! 294-294
	li	a1, 3 ! 296-296
	li	a2, l.6856 ! 296-296
	flw	fa0, a2, 0 ! 296-296
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 0 ! 298-298
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 4 ! 299-299
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 8 ! 300-300
	li	a1, l.6856 ! 302-302
	flw	fa0, a1, 0 ! 302-302
	fsw	sp, fa0, 28 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 28 ! 0-0
	flt.s	t0, fa1, fa0 ! 302-302
	bne	zero, t0, beq_else.7941 ! 302-302
	li	a0, 1 ! 302-302
	j	beq_cont.7942
beq_else.7941:
	li	a0, 0 ! 302-302
beq_cont.7942:
	li	a1, 2 ! 304-304
	li	a2, l.6856 ! 304-304
	flw	fa0, a2, 0 ! 304-304
	sw	sp, a0, 32 ! 0-0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0-0
	fsw	a0, fa0, 0 ! 306-306
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0-0
	fsw	a0, fa0, 4 ! 307-307
	li	a1, 3 ! 309-309
	li	a2, l.6856 ! 309-309
	flw	fa0, a2, 0 ! 309-309
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	fsw	a0, fa0, 0 ! 311-311
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	fsw	a0, fa0, 4 ! 312-312
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	fsw	a0, fa0, 8 ! 313-313
	li	a1, 3 ! 315-315
	li	a2, l.6856 ! 315-315
	flw	fa0, a2, 0 ! 315-315
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 316-316
	lw	a2, sp, 16 ! 0-0
	bne	a2, a1, beq_else.7943 ! 316-322
	j	beq_cont.7944
beq_else.7943:
	sw	sp, a0, 44 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.6822 ! 232-232
	flw	fa1, a0, 0 ! 232-232
	fmul.s	fa0, fa0, fa1, rne ! 232-232
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa0, 0 ! 318-318
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.6822 ! 232-232
	flw	fa1, a0, 0 ! 232-232
	fmul.s	fa0, fa0, fa1, rne ! 232-232
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa0, 4 ! 319-319
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.6822 ! 232-232
	flw	fa1, a0, 0 ! 232-232
	fmul.s	fa0, fa0, fa1, rne ! 232-232
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa0, 8 ! 320-320
beq_cont.7944:
	li	a1, 2 ! 327-327
	lw	a2, sp, 8 ! 0-0
	bne	a2, a1, beq_else.7945 ! 327-327
	li	a1, 1 ! 327-327
	j	beq_cont.7946
beq_else.7945:
	lw	a1, sp, 32 ! 0-0
beq_cont.7946:
	mv	a3, hp ! 331-336
	addi	hp, hp, 40 ! 331-336
	sw	a3, a0, 36 ! 331-336
	lw	a4, sp, 40 ! 0-0
	sw	a3, a4, 32 ! 331-336
	lw	a4, sp, 36 ! 0-0
	sw	a3, a4, 28 ! 331-336
	sw	a3, a1, 24 ! 331-336
	lw	a1, sp, 24 ! 0-0
	sw	a3, a1, 20 ! 331-336
	lw	a1, sp, 20 ! 0-0
	sw	a3, a1, 16 ! 331-336
	lw	a4, sp, 16 ! 0-0
	sw	a3, a4, 12 ! 331-336
	lw	a5, sp, 12 ! 0-0
	sw	a3, a5, 8 ! 331-336
	sw	a3, a2, 4 ! 331-336
	lw	a5, sp, 4 ! 0-0
	sw	a3, a5, 0 ! 331-336
	li	a5, min_caml_objects ! 338-338
	lw	a6, sp, 0 ! 0-0
	slli	a6, a6, 2 ! 338-338
	add	t0, a5, a6 ! 338-338
	sw	t0, a3, 0 ! 338-338
	li	a3, 3 ! 340-340
	sw	sp, a0, 44 ! 0-0
	bne	a2, a3, beq_else.7947 ! 340-354
	flw	fa0, a1, 0 ! 343-343
	li	a2, l.6856 ! 344-344
	flw	fa1, a2, 0 ! 344-344
	feq.s	t0, fa1, fa0
 ! 344-344	bne	zero, t0, beq_else.7949 ! 344-344
	li	a2, l.6856 ! 225-225
	flw	fa1, a2, 0 ! 225-225
	flt.s	t0, fa0, fa1 ! 225-226
	bne	zero, t0, beq_else.7951 ! 225-226
	li	a2, l.6895 ! 225-225
	flw	fa1, a2, 0 ! 225-225
	j	beq_cont.7952
beq_else.7951:
	li	a2, l.6897 ! 226-226
	flw	fa1, a2, 0 ! 226-226
beq_cont.7952:
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	fdiv.s	fa0, fa1, fa0, rne ! 344-344
	j	beq_cont.7950
beq_else.7949:
	li	a2, l.6856 ! 344-344
	flw	fa0, a2, 0 ! 344-344
beq_cont.7950:
	fsw	a1, fa0, 0 ! 344-344
	flw	fa0, a1, 4 ! 345-345
	li	a2, l.6856 ! 346-346
	flw	fa1, a2, 0 ! 346-346
	feq.s	t0, fa1, fa0
 ! 346-346	bne	zero, t0, beq_else.7953 ! 346-346
	li	a2, l.6856 ! 225-225
	flw	fa1, a2, 0 ! 225-225
	flt.s	t0, fa0, fa1 ! 225-226
	bne	zero, t0, beq_else.7955 ! 225-226
	li	a2, l.6895 ! 225-225
	flw	fa1, a2, 0 ! 225-225
	j	beq_cont.7956
beq_else.7955:
	li	a2, l.6897 ! 226-226
	flw	fa1, a2, 0 ! 226-226
beq_cont.7956:
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	fdiv.s	fa0, fa1, fa0, rne ! 346-346
	j	beq_cont.7954
beq_else.7953:
	li	a2, l.6856 ! 346-346
	flw	fa0, a2, 0 ! 346-346
beq_cont.7954:
	fsw	a1, fa0, 4 ! 346-346
	flw	fa0, a1, 8 ! 347-347
	li	a2, l.6856 ! 348-348
	flw	fa1, a2, 0 ! 348-348
	feq.s	t0, fa1, fa0
 ! 348-348	bne	zero, t0, beq_else.7957 ! 348-348
	li	a2, l.6856 ! 225-225
	flw	fa1, a2, 0 ! 225-225
	flt.s	t0, fa0, fa1 ! 225-226
	bne	zero, t0, beq_else.7959 ! 225-226
	li	a2, l.6895 ! 225-225
	flw	fa1, a2, 0 ! 225-225
	j	beq_cont.7960
beq_else.7959:
	li	a2, l.6897 ! 226-226
	flw	fa1, a2, 0 ! 226-226
beq_cont.7960:
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	fdiv.s	fa0, fa1, fa0, rne ! 348-348
	j	beq_cont.7958
beq_else.7957:
	li	a2, l.6856 ! 348-348
	flw	fa0, a2, 0 ! 348-348
beq_cont.7958:
	fsw	a1, fa0, 8 ! 348-348
	j	beq_cont.7948
beq_else.7947:
	li	a3, 2 ! 350-350
	bne	a2, a3, beq_else.7961 ! 350-354
	li	a2, 0 ! 352-352
	lw	a3, sp, 32 ! 0-0
	bne	a3, a2, beq_else.7963 ! 352-352
	li	a2, 1 ! 352-352
	j	beq_cont.7964
beq_else.7963:
	li	a2, 0 ! 352-352
beq_cont.7964:
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	normalize_vector.2022
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	beq_cont.7962
beq_else.7961:
beq_cont.7962:
beq_cont.7948:
	li	a0, 0 ! 356-356
	lw	a1, sp, 16 ! 0-0
	bne	a1, a0, beq_else.7965 ! 356-393
	j	beq_cont.7966
beq_else.7965:
	li	a0, min_caml_cs_temp ! 358-358
	lw	a1, sp, 44 ! 0-0
	flw	fa0, a1, 0 ! 358-358
	sw	sp, a0, 48 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_cos
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48 ! 0-0
	fsw	a0, fa0, 40 ! 358-358
	li	a0, min_caml_cs_temp ! 359-359
	lw	a1, sp, 44 ! 0-0
	flw	fa0, a1, 0 ! 359-359
	sw	sp, a0, 52 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_sin
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52 ! 0-0
	fsw	a0, fa0, 44 ! 359-359
	li	a0, min_caml_cs_temp ! 360-360
	lw	a1, sp, 44 ! 0-0
	flw	fa0, a1, 4 ! 360-360
	sw	sp, a0, 56 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_cos
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0-0
	fsw	a0, fa0, 48 ! 360-360
	li	a0, min_caml_cs_temp ! 361-361
	lw	a1, sp, 44 ! 0-0
	flw	fa0, a1, 4 ! 361-361
	sw	sp, a0, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_sin
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 60 ! 0-0
	fsw	a0, fa0, 52 ! 361-361
	li	a0, min_caml_cs_temp ! 362-362
	lw	a1, sp, 44 ! 0-0
	flw	fa0, a1, 8 ! 362-362
	sw	sp, a0, 64 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_cos
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64 ! 0-0
	fsw	a0, fa0, 56 ! 362-362
	li	a0, min_caml_cs_temp ! 363-363
	lw	a1, sp, 44 ! 0-0
	flw	fa0, a1, 8 ! 363-363
	sw	sp, a0, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_sin
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 68 ! 0-0
	fsw	a0, fa0, 60 ! 363-363
	li	a0, min_caml_cs_temp ! 364-364
	li	a1, min_caml_cs_temp ! 364-364
	flw	fa0, a1, 48 ! 364-364
	li	a1, min_caml_cs_temp ! 364-364
	flw	fa1, a1, 56 ! 364-364
	fmul.s	fa0, fa0, fa1, rne ! 364-364
	fsw	a0, fa0, 0 ! 364-364
	li	a0, min_caml_cs_temp ! 365-365
	li	a1, min_caml_cs_temp ! 366-366
	flw	fa0, a1, 44 ! 366-366
	li	a1, min_caml_cs_temp ! 366-366
	flw	fa1, a1, 52 ! 366-366
	fmul.s	fa0, fa0, fa1, rne ! 366-366
	li	a1, min_caml_cs_temp ! 366-366
	flw	fa1, a1, 56 ! 366-366
	fmul.s	fa0, fa0, fa1, rne ! 366-366
	li	a1, min_caml_cs_temp ! 366-366
	flw	fa1, a1, 40 ! 366-366
	li	a1, min_caml_cs_temp ! 366-366
	flw	fa2, a1, 60 ! 366-366
	fmul.s	fa1, fa1, fa2, rne ! 366-366
	fsub.s	fa0, fa0, fa1, rne ! 366-366
	fsw	a0, fa0, 4 ! 365-366
	li	a0, min_caml_cs_temp ! 367-367
	li	a1, min_caml_cs_temp ! 368-368
	flw	fa0, a1, 40 ! 368-368
	li	a1, min_caml_cs_temp ! 368-368
	flw	fa1, a1, 52 ! 368-368
	fmul.s	fa0, fa0, fa1, rne ! 368-368
	li	a1, min_caml_cs_temp ! 368-368
	flw	fa1, a1, 56 ! 368-368
	fmul.s	fa0, fa0, fa1, rne ! 368-368
	li	a1, min_caml_cs_temp ! 368-368
	flw	fa1, a1, 44 ! 368-368
	li	a1, min_caml_cs_temp ! 368-368
	flw	fa2, a1, 60 ! 368-368
	fmul.s	fa1, fa1, fa2, rne ! 368-368
	fadd.s	fa0, fa0, fa1, rne ! 368-368
	fsw	a0, fa0, 8 ! 367-368
	li	a0, min_caml_cs_temp ! 369-369
	li	a1, min_caml_cs_temp ! 369-369
	flw	fa0, a1, 48 ! 369-369
	li	a1, min_caml_cs_temp ! 369-369
	flw	fa1, a1, 60 ! 369-369
	fmul.s	fa0, fa0, fa1, rne ! 369-369
	fsw	a0, fa0, 12 ! 369-369
	li	a0, min_caml_cs_temp ! 370-370
	li	a1, min_caml_cs_temp ! 371-371
	flw	fa0, a1, 44 ! 371-371
	li	a1, min_caml_cs_temp ! 371-371
	flw	fa1, a1, 52 ! 371-371
	fmul.s	fa0, fa0, fa1, rne ! 371-371
	li	a1, min_caml_cs_temp ! 371-371
	flw	fa1, a1, 60 ! 371-371
	fmul.s	fa0, fa0, fa1, rne ! 371-371
	li	a1, min_caml_cs_temp ! 371-371
	flw	fa1, a1, 40 ! 371-371
	li	a1, min_caml_cs_temp ! 371-371
	flw	fa2, a1, 56 ! 371-371
	fmul.s	fa1, fa1, fa2, rne ! 371-371
	fadd.s	fa0, fa0, fa1, rne ! 371-371
	fsw	a0, fa0, 16 ! 370-371
	li	a0, min_caml_cs_temp ! 372-372
	li	a1, min_caml_cs_temp ! 373-373
	flw	fa0, a1, 40 ! 373-373
	li	a1, min_caml_cs_temp ! 373-373
	flw	fa1, a1, 52 ! 373-373
	fmul.s	fa0, fa0, fa1, rne ! 373-373
	li	a1, min_caml_cs_temp ! 373-373
	flw	fa1, a1, 60 ! 373-373
	fmul.s	fa0, fa0, fa1, rne ! 373-373
	li	a1, min_caml_cs_temp ! 373-373
	flw	fa1, a1, 44 ! 373-373
	li	a1, min_caml_cs_temp ! 373-373
	flw	fa2, a1, 56 ! 373-373
	fmul.s	fa1, fa1, fa2, rne ! 373-373
	fsub.s	fa0, fa0, fa1, rne ! 373-373
	fsw	a0, fa0, 20 ! 372-373
	li	a0, min_caml_cs_temp ! 374-374
	li	a1, min_caml_cs_temp ! 374-374
	flw	fa0, a1, 52 ! 374-374
	fneg.s	fa0, fa0 ! 374-374
	fsw	a0, fa0, 24 ! 374-374
	li	a0, min_caml_cs_temp ! 375-375
	li	a1, min_caml_cs_temp ! 375-375
	flw	fa0, a1, 44 ! 375-375
	li	a1, min_caml_cs_temp ! 375-375
	flw	fa1, a1, 48 ! 375-375
	fmul.s	fa0, fa0, fa1, rne ! 375-375
	fsw	a0, fa0, 28 ! 375-375
	li	a0, min_caml_cs_temp ! 376-376
	li	a1, min_caml_cs_temp ! 376-376
	flw	fa0, a1, 40 ! 376-376
	li	a1, min_caml_cs_temp ! 376-376
	flw	fa1, a1, 48 ! 376-376
	fmul.s	fa0, fa0, fa1, rne ! 376-376
	fsw	a0, fa0, 32 ! 376-376
	lw	a0, sp, 20 ! 0-0
	flw	fa0, a0, 0 ! 377-377
	flw	fa1, a0, 4 ! 378-378
	flw	fa2, a0, 8 ! 379-379
	li	a1, min_caml_cs_temp ! 380-380
	flw	fa3, a1, 0 ! 380-380
	fmul.s	fa3, fa3, fa3, rne ! 17-17
	fmul.s	fa3, fa0, fa3, rne ! 380-380
	li	a1, min_caml_cs_temp ! 380-380
	flw	fa4, a1, 12 ! 380-380
	fmul.s	fa4, fa4, fa4, rne ! 17-17
	fmul.s	fa4, fa1, fa4, rne ! 380-380
	fadd.s	fa3, fa3, fa4, rne ! 380-380
	li	a1, min_caml_cs_temp ! 380-380
	flw	fa4, a1, 24 ! 380-380
	fmul.s	fa4, fa4, fa4, rne ! 17-17
	fmul.s	fa4, fa2, fa4, rne ! 380-380
	fadd.s	fa3, fa3, fa4, rne ! 380-380
	fsw	a0, fa3, 0 ! 380-380
	li	a1, min_caml_cs_temp ! 381-381
	flw	fa3, a1, 4 ! 381-381
	fmul.s	fa3, fa3, fa3, rne ! 17-17
	fmul.s	fa3, fa0, fa3, rne ! 381-381
	li	a1, min_caml_cs_temp ! 381-381
	flw	fa4, a1, 16 ! 381-381
	fmul.s	fa4, fa4, fa4, rne ! 17-17
	fmul.s	fa4, fa1, fa4, rne ! 381-381
	fadd.s	fa3, fa3, fa4, rne ! 381-381
	li	a1, min_caml_cs_temp ! 381-381
	flw	fa4, a1, 28 ! 381-381
	fmul.s	fa4, fa4, fa4, rne ! 17-17
	fmul.s	fa4, fa2, fa4, rne ! 381-381
	fadd.s	fa3, fa3, fa4, rne ! 381-381
	fsw	a0, fa3, 4 ! 381-381
	li	a1, min_caml_cs_temp ! 382-382
	flw	fa3, a1, 8 ! 382-382
	fmul.s	fa3, fa3, fa3, rne ! 17-17
	fmul.s	fa3, fa0, fa3, rne ! 382-382
	li	a1, min_caml_cs_temp ! 382-382
	flw	fa4, a1, 20 ! 382-382
	fmul.s	fa4, fa4, fa4, rne ! 17-17
	fmul.s	fa4, fa1, fa4, rne ! 382-382
	fadd.s	fa3, fa3, fa4, rne ! 382-382
	li	a1, min_caml_cs_temp ! 382-382
	flw	fa4, a1, 32 ! 382-382
	fmul.s	fa4, fa4, fa4, rne ! 17-17
	fmul.s	fa4, fa2, fa4, rne ! 382-382
	fadd.s	fa3, fa3, fa4, rne ! 382-382
	fsw	a0, fa3, 8 ! 382-382
	li	a0, l.6980 ! 383-383
	flw	fa3, a0, 0 ! 383-383
	li	a0, min_caml_cs_temp ! 383-383
	flw	fa4, a0, 4 ! 383-383
	fmul.s	fa4, fa0, fa4, rne ! 383-383
	li	a0, min_caml_cs_temp ! 383-383
	flw	fa5, a0, 8 ! 383-383
	fmul.s	fa4, fa4, fa5, rne ! 383-383
	li	a0, min_caml_cs_temp ! 384-384
	flw	fa5, a0, 16 ! 384-384
	fmul.s	fa5, fa1, fa5, rne ! 384-384
	li	a0, min_caml_cs_temp ! 384-384
	flw	fa6, a0, 20 ! 384-384
	fmul.s	fa5, fa5, fa6, rne ! 384-384
	fadd.s	fa4, fa4, fa5, rne ! 383-384
	li	a0, min_caml_cs_temp ! 385-385
	flw	fa5, a0, 28 ! 385-385
	fmul.s	fa5, fa2, fa5, rne ! 385-385
	li	a0, min_caml_cs_temp ! 385-385
	flw	fa6, a0, 32 ! 385-385
	fmul.s	fa5, fa5, fa6, rne ! 385-385
	fadd.s	fa4, fa4, fa5, rne ! 383-385
	fmul.s	fa3, fa3, fa4, rne ! 383-385
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa3, 0 ! 383-385
	li	a1, l.6980 ! 386-386
	flw	fa3, a1, 0 ! 386-386
	li	a1, min_caml_cs_temp ! 386-386
	flw	fa4, a1, 0 ! 386-386
	fmul.s	fa4, fa0, fa4, rne ! 386-386
	li	a1, min_caml_cs_temp ! 386-386
	flw	fa5, a1, 8 ! 386-386
	fmul.s	fa4, fa4, fa5, rne ! 386-386
	li	a1, min_caml_cs_temp ! 387-387
	flw	fa5, a1, 12 ! 387-387
	fmul.s	fa5, fa1, fa5, rne ! 387-387
	li	a1, min_caml_cs_temp ! 387-387
	flw	fa6, a1, 20 ! 387-387
	fmul.s	fa5, fa5, fa6, rne ! 387-387
	fadd.s	fa4, fa4, fa5, rne ! 386-387
	li	a1, min_caml_cs_temp ! 388-388
	flw	fa5, a1, 24 ! 388-388
	fmul.s	fa5, fa2, fa5, rne ! 388-388
	li	a1, min_caml_cs_temp ! 388-388
	flw	fa6, a1, 32 ! 388-388
	fmul.s	fa5, fa5, fa6, rne ! 388-388
	fadd.s	fa4, fa4, fa5, rne ! 386-388
	fmul.s	fa3, fa3, fa4, rne ! 386-388
	fsw	a0, fa3, 4 ! 386-388
	li	a1, l.6980 ! 389-389
	flw	fa3, a1, 0 ! 389-389
	li	a1, min_caml_cs_temp ! 389-389
	flw	fa4, a1, 0 ! 389-389
	fmul.s	fa0, fa0, fa4, rne ! 389-389
	li	a1, min_caml_cs_temp ! 389-389
	flw	fa4, a1, 4 ! 389-389
	fmul.s	fa0, fa0, fa4, rne ! 389-389
	li	a1, min_caml_cs_temp ! 390-390
	flw	fa4, a1, 12 ! 390-390
	fmul.s	fa1, fa1, fa4, rne ! 390-390
	li	a1, min_caml_cs_temp ! 390-390
	flw	fa4, a1, 16 ! 390-390
	fmul.s	fa1, fa1, fa4, rne ! 390-390
	fadd.s	fa0, fa0, fa1, rne ! 389-390
	li	a1, min_caml_cs_temp ! 391-391
	flw	fa1, a1, 24 ! 391-391
	fmul.s	fa1, fa2, fa1, rne ! 391-391
	li	a1, min_caml_cs_temp ! 391-391
	flw	fa2, a1, 28 ! 391-391
	fmul.s	fa1, fa1, fa2, rne ! 391-391
	fadd.s	fa0, fa0, fa1, rne ! 389-391
	fmul.s	fa0, fa3, fa0, rne ! 389-391
	fsw	a0, fa0, 8 ! 389-391
beq_cont.7966:
	li	a0, 1 ! 400-400
	ret ! 400-400
read_object.2033:
	li	a1, 61 ! 409-409
	blt	a0, a1, bge_else.7967 ! 409-413
	ret ! 413-413
bge_else.7967:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	read_nth_object.2031
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 0 ! 410-412
	bne	a0, a1, beq_else.7968 ! 410-412
	ret ! 412-412
beq_else.7968:
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 411-411
	li	a1, 61 ! 409-409
	blt	a0, a1, bge_else.7969 ! 409-413
	ret ! 413-413
bge_else.7969:
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	read_nth_object.2031
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 0 ! 410-412
	bne	a0, a1, beq_else.7970 ! 410-412
	ret ! 412-412
beq_else.7970:
	lw	a0, sp, 4 ! 0-0
	addi	a0, a0, 1 ! 411-411
	li	a1, 61 ! 409-409
	blt	a0, a1, bge_else.7971 ! 409-413
	ret ! 413-413
bge_else.7971:
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	read_nth_object.2031
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 410-412
	bne	a0, a1, beq_else.7972 ! 410-412
	ret ! 412-412
beq_else.7972:
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 411-411
	li	a1, 61 ! 409-409
	blt	a0, a1, bge_else.7973 ! 409-413
	ret ! 413-413
bge_else.7973:
	sw	sp, a0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	read_nth_object.2031
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 410-412
	bne	a0, a1, beq_else.7974 ! 410-412
	ret ! 412-412
beq_else.7974:
	lw	a0, sp, 12 ! 0-0
	addi	a0, a0, 1 ! 411-411
	j	read_object.2033
read_net_item.2037:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7975 ! 427-430
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	j	min_caml_create_array
beq_else.7975:
	lw	a1, sp, 0 ! 0-0
	addi	a2, a1, 1 ! 429-429
	sw	sp, a0, 4 ! 0-0
	sw	sp, a2, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7976 ! 427-430
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.7977
beq_else.7976:
	lw	a1, sp, 8 ! 0-0
	addi	a2, a1, 1 ! 429-429
	sw	sp, a0, 12 ! 0-0
	sw	sp, a2, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7978 ! 427-430
	lw	a0, sp, 16 ! 0-0
	addi	a0, a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	beq_cont.7979
beq_else.7978:
	lw	a1, sp, 16 ! 0-0
	addi	a2, a1, 1 ! 429-429
	sw	sp, a0, 20 ! 0-0
	sw	sp, a2, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7980 ! 427-430
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	beq_cont.7981
beq_else.7980:
	lw	a1, sp, 24 ! 0-0
	addi	a2, a1, 1 ! 429-429
	sw	sp, a0, 28 ! 0-0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	read_net_item.2037
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24 ! 0-0
	slli	a1, a1, 2 ! 430-430
	lw	a2, sp, 28 ! 0-0
	add	t0, a0, a1 ! 430-430
	sw	t0, a2, 0 ! 430-430
beq_cont.7981:
	lw	a1, sp, 16 ! 0-0
	slli	a1, a1, 2 ! 430-430
	lw	a2, sp, 20 ! 0-0
	add	t0, a0, a1 ! 430-430
	sw	t0, a2, 0 ! 430-430
beq_cont.7979:
	lw	a1, sp, 8 ! 0-0
	slli	a1, a1, 2 ! 430-430
	lw	a2, sp, 12 ! 0-0
	add	t0, a0, a1 ! 430-430
	sw	t0, a2, 0 ! 430-430
beq_cont.7977:
	lw	a1, sp, 0 ! 0-0
	slli	a1, a1, 2 ! 430-430
	lw	a2, sp, 4 ! 0-0
	add	t0, a0, a1 ! 430-430
	sw	t0, a2, 0 ! 430-430
	ret ! 430-430
read_or_network.2039:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7982 ! 427-430
	li	a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	j	beq_cont.7983
beq_else.7982:
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7984 ! 427-430
	li	a0, 2 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	j	beq_cont.7985
beq_else.7984:
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7986 ! 427-430
	li	a0, 3 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.7987
beq_else.7986:
	li	a1, 3 ! 429-429
	sw	sp, a0, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	read_net_item.2037
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0-0
	sw	a0, a1, 8 ! 430-430
beq_cont.7987:
	lw	a1, sp, 8 ! 0-0
	sw	a0, a1, 4 ! 430-430
beq_cont.7985:
	lw	a1, sp, 4 ! 0-0
	sw	a0, a1, 0 ! 430-430
	mv	a1, a0 ! 430-430
beq_cont.7983:
	lw	a0, a1, 0 ! 436-436
	li	a2, -1 ! 436-436
	bne	a0, a2, beq_else.7988 ! 436-440
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 437-437
	j	min_caml_create_array
beq_else.7988:
	lw	a0, sp, 0 ! 0-0
	addi	a2, a0, 1 ! 439-439
	sw	sp, a1, 16 ! 0-0
	sw	sp, a2, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_read_int
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7989 ! 427-430
	li	a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	j	beq_cont.7990
beq_else.7989:
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7991 ! 427-430
	li	a0, 2 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	beq_cont.7992
beq_else.7991:
	li	a1, 2 ! 429-429
	sw	sp, a0, 28 ! 0-0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	read_net_item.2037
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 28 ! 0-0
	sw	a0, a1, 4 ! 430-430
beq_cont.7992:
	lw	a1, sp, 24 ! 0-0
	sw	a0, a1, 0 ! 430-430
	mv	a1, a0 ! 430-430
beq_cont.7990:
	lw	a0, a1, 0 ! 436-436
	li	a2, -1 ! 436-436
	bne	a0, a2, beq_else.7993 ! 436-440
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 437-437
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	beq_cont.7994
beq_else.7993:
	lw	a0, sp, 20 ! 0-0
	addi	a2, a0, 1 ! 439-439
	sw	sp, a1, 32 ! 0-0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	read_or_network.2039
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 20 ! 0-0
	slli	a1, a1, 2 ! 440-440
	lw	a2, sp, 32 ! 0-0
	add	t0, a0, a1 ! 440-440
	sw	t0, a2, 0 ! 440-440
beq_cont.7994:
	lw	a1, sp, 0 ! 0-0
	slli	a1, a1, 2 ! 440-440
	lw	a2, sp, 16 ! 0-0
	add	t0, a0, a1 ! 440-440
	sw	t0, a2, 0 ! 440-440
	ret ! 440-440
read_and_network.2041:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7995 ! 427-430
	li	a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	j	beq_cont.7996
beq_else.7995:
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7997 ! 427-430
	li	a0, 2 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	j	beq_cont.7998
beq_else.7997:
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.7999 ! 427-430
	li	a0, 3 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.8000
beq_else.7999:
	li	a1, 3 ! 429-429
	sw	sp, a0, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	read_net_item.2037
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0-0
	sw	a0, a1, 8 ! 430-430
beq_cont.8000:
	lw	a1, sp, 8 ! 0-0
	sw	a0, a1, 4 ! 430-430
beq_cont.7998:
	lw	a1, sp, 4 ! 0-0
	sw	a0, a1, 0 ! 430-430
beq_cont.7996:
	lw	a1, a0, 0 ! 446-446
	li	a2, -1 ! 446-446
	bne	a1, a2, beq_else.8001 ! 446-450
	ret ! 446-446
beq_else.8001:
	li	a1, min_caml_and_net ! 448-448
	lw	a2, sp, 0 ! 0-0
	slli	a3, a2, 2 ! 448-448
	add	t0, a1, a3 ! 448-448
	sw	t0, a0, 0 ! 448-448
	addi	a0, a2, 1 ! 449-449
	sw	sp, a0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.8002 ! 427-430
	li	a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	beq_cont.8003
beq_else.8002:
	sw	sp, a0, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_read_int
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.8004 ! 427-430
	li	a0, 2 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	j	beq_cont.8005
beq_else.8004:
	li	a1, 2 ! 429-429
	sw	sp, a0, 24 ! 0-0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	read_net_item.2037
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0-0
	sw	a0, a1, 4 ! 430-430
beq_cont.8005:
	lw	a1, sp, 20 ! 0-0
	sw	a0, a1, 0 ! 430-430
beq_cont.8003:
	lw	a1, a0, 0 ! 446-446
	li	a2, -1 ! 446-446
	bne	a1, a2, beq_else.8006 ! 446-450
	ret ! 446-446
beq_else.8006:
	li	a1, min_caml_and_net ! 448-448
	lw	a2, sp, 16 ! 0-0
	slli	a3, a2, 2 ! 448-448
	add	t0, a1, a3 ! 448-448
	sw	t0, a0, 0 ! 448-448
	addi	a0, a2, 1 ! 449-449
	j	read_and_network.2041
read_parameter.2043:
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	read_environ.2029
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, 0 ! 418-418
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	read_nth_object.2031
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 0 ! 410-412
	bne	a0, a1, beq_else.8007 ! 410-412
	j	beq_cont.8008
beq_else.8007:
	li	a0, 1 ! 411-411
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	read_nth_object.2031
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 0 ! 410-412
	bne	a0, a1, beq_else.8009 ! 410-412
	j	beq_cont.8010
beq_else.8009:
	li	a0, 2 ! 411-411
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	read_object.2033
	addi	sp, sp, -4
	lw	ra, sp, 0
beq_cont.8010:
beq_cont.8008:
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_read_int
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.8011 ! 427-430
	li	a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	j	beq_cont.8012
beq_else.8011:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.8013 ! 427-430
	li	a0, 2 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	j	beq_cont.8014
beq_else.8013:
	li	a1, 2 ! 429-429
	sw	sp, a0, 4 ! 0-0
	mv	a0, a1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	read_net_item.2037
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0-0
	sw	a0, a1, 4 ! 430-430
beq_cont.8014:
	lw	a1, sp, 0 ! 0-0
	sw	a0, a1, 0 ! 430-430
beq_cont.8012:
	lw	a1, a0, 0 ! 446-446
	li	a2, -1 ! 446-446
	bne	a1, a2, beq_else.8015 ! 446-450
	j	beq_cont.8016
beq_else.8015:
	li	a1, min_caml_and_net ! 448-448
	sw	a1, a0, 0 ! 448-448
	li	a0, 1 ! 449-449
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	read_and_network.2041
	addi	sp, sp, -12
	lw	ra, sp, 8
beq_cont.8016:
	li	a0, min_caml_or_net ! 459-459
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.8017 ! 427-430
	li	a0, 1 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	mv	a1, a0
	j	beq_cont.8018
beq_else.8017:
	sw	sp, a0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, -1 ! 427-427
	bne	a0, a1, beq_else.8019 ! 427-430
	li	a0, 2 ! 427-427
	li	a1, -1 ! 427-427
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	beq_cont.8020
beq_else.8019:
	li	a1, 2 ! 429-429
	sw	sp, a0, 16 ! 0-0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	read_net_item.2037
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0-0
	sw	a0, a1, 4 ! 430-430
beq_cont.8020:
	lw	a1, sp, 12 ! 0-0
	sw	a0, a1, 0 ! 430-430
	mv	a1, a0 ! 430-430
beq_cont.8018:
	lw	a0, a1, 0 ! 436-436
	li	a2, -1 ! 436-436
	bne	a0, a2, beq_else.8021 ! 436-440
	li	a0, 1 ! 437-437
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	beq_cont.8022
beq_else.8021:
	li	a0, 1 ! 439-439
	sw	sp, a1, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	read_or_network.2039
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0-0
	sw	a0, a1, 0 ! 440-440
beq_cont.8022:
	lw	a1, sp, 8 ! 0-0
	sw	a1, a0, 0 ! 459-459
	ret ! 459-459
solver_rect.2045:
	li	a2, l.6856 ! 480-480
	flw	fa0, a2, 0 ! 480-480
	flw	fa1, a1, 0 ! 480-480
	sw	sp, a0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	feq.s	t0, fa0, fa1
 ! 480-491	bne	zero, t0, beq_else.8023 ! 480-491
	lw	a2, a0, 24 ! 58-62
	li	a3, l.6856 ! 482-482
	flw	fa0, a3, 0 ! 482-482
	flw	fa1, a1, 0 ! 482-482
	flt.s	t0, fa0, fa1 ! 482-482
	bne	zero, t0, beq_else.8025 ! 482-482
	li	a3, 1 ! 482-482
	j	beq_cont.8026
beq_else.8025:
	li	a3, 0 ! 482-482
beq_cont.8026:
	li	a4, 0 ! 14-14
	bne	a2, a4, beq_else.8027 ! 14-14
	mv	a2, a3 ! 14-14
	j	beq_cont.8028
beq_else.8027:
	li	a2, 0 ! 14-14
	bne	a3, a2, beq_else.8029 ! 14-14
	li	a2, 1 ! 14-14
	j	beq_cont.8030
beq_else.8029:
	li	a2, 0 ! 14-14
beq_cont.8030:
beq_cont.8028:
	li	a3, 0 ! 482-482
	bne	a2, a3, beq_else.8031 ! 482-482
	lw	a2, a0, 16 ! 76-81
	flw	fa0, a2, 0 ! 81-81
	fneg.s	fa0, fa0 ! 482-482
	j	beq_cont.8032
beq_else.8031:
	lw	a2, a0, 16 ! 76-81
	flw	fa0, a2, 0 ! 81-81
beq_cont.8032:
	li	a2, min_caml_solver_w_vec ! 484-484
	flw	fa1, a2, 0 ! 484-484
	fsub.s	fa0, fa0, fa1, rne ! 484-484
	flw	fa1, a1, 0 ! 484-484
	fdiv.s	fa0, fa0, fa1, rne ! 484-484
	lw	a2, a0, 16 ! 86-91
	flw	fa1, a2, 4 ! 91-91
	flw	fa2, a1, 4 ! 486-486
	fmul.s	fa2, fa0, fa2, rne ! 486-486
	li	a2, min_caml_solver_w_vec ! 486-486
	flw	fa3, a2, 4 ! 486-486
	fadd.s	fa2, fa2, fa3, rne ! 486-486
	fsw	sp, fa0, 8 ! 0-0
	fsw	sp, fa1, 12 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_abs_float
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 12 ! 0-0
	flt.s	t0, fa1, fa0 ! 486-490
	bne	zero, t0, beq_else.8033 ! 486-490
	lw	a0, sp, 0 ! 0-0
	lw	a1, a0, 16 ! 96-101
	flw	fa0, a1, 8 ! 101-101
	lw	a1, sp, 4 ! 0-0
	flw	fa1, a1, 8 ! 487-487
	flw	fa2, sp, 8 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 487-487
	li	a2, min_caml_solver_w_vec ! 487-487
	flw	fa3, a2, 8 ! 487-487
	fadd.s	fa1, fa1, fa3, rne ! 487-487
	fsw	sp, fa0, 16 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_abs_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	flw	fa1, sp, 16 ! 0-0
	flt.s	t0, fa1, fa0 ! 487-489
	bne	zero, t0, beq_else.8035 ! 487-489
	li	a0, min_caml_solver_dist ! 488-488
	flw	fa0, sp, 8 ! 0-0
	fsw	a0, fa0, 0 ! 488-488
	li	a0, 1 ! 488-488
	j	beq_cont.8036
beq_else.8035:
	li	a0, 0 ! 489-489
beq_cont.8036:
	j	beq_cont.8034
beq_else.8033:
	li	a0, 0 ! 490-490
beq_cont.8034:
	j	beq_cont.8024
beq_else.8023:
	li	a0, 0 ! 480-480
beq_cont.8024:
	li	a1, 0 ! 493-527
	bne	a0, a1, beq_else.8037 ! 493-527
	li	a0, l.6856 ! 497-497
	flw	fa0, a0, 0 ! 497-497
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 4 ! 497-497
	feq.s	t0, fa0, fa1
 ! 497-508	bne	zero, t0, beq_else.8038 ! 497-508
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 24 ! 58-62
	li	a3, l.6856 ! 499-499
	flw	fa0, a3, 0 ! 499-499
	flw	fa1, a0, 4 ! 499-499
	flt.s	t0, fa0, fa1 ! 499-499
	bne	zero, t0, beq_else.8040 ! 499-499
	li	a3, 1 ! 499-499
	j	beq_cont.8041
beq_else.8040:
	li	a3, 0 ! 499-499
beq_cont.8041:
	li	a4, 0 ! 14-14
	bne	a2, a4, beq_else.8042 ! 14-14
	mv	a2, a3 ! 14-14
	j	beq_cont.8043
beq_else.8042:
	li	a2, 0 ! 14-14
	bne	a3, a2, beq_else.8044 ! 14-14
	li	a2, 1 ! 14-14
	j	beq_cont.8045
beq_else.8044:
	li	a2, 0 ! 14-14
beq_cont.8045:
beq_cont.8043:
	li	a3, 0 ! 499-499
	bne	a2, a3, beq_else.8046 ! 499-499
	lw	a2, a1, 16 ! 86-91
	flw	fa0, a2, 4 ! 91-91
	fneg.s	fa0, fa0 ! 499-499
	j	beq_cont.8047
beq_else.8046:
	lw	a2, a1, 16 ! 86-91
	flw	fa0, a2, 4 ! 91-91
beq_cont.8047:
	li	a2, min_caml_solver_w_vec ! 501-501
	flw	fa1, a2, 4 ! 501-501
	fsub.s	fa0, fa0, fa1, rne ! 501-501
	flw	fa1, a0, 4 ! 501-501
	fdiv.s	fa0, fa0, fa1, rne ! 501-501
	lw	a2, a1, 16 ! 96-101
	flw	fa1, a2, 8 ! 101-101
	flw	fa2, a0, 8 ! 503-503
	fmul.s	fa2, fa0, fa2, rne ! 503-503
	li	a2, min_caml_solver_w_vec ! 503-503
	flw	fa3, a2, 8 ! 503-503
	fadd.s	fa2, fa2, fa3, rne ! 503-503
	fsw	sp, fa0, 20 ! 0-0
	fsw	sp, fa1, 24 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_abs_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24 ! 0-0
	flt.s	t0, fa1, fa0 ! 503-507
	bne	zero, t0, beq_else.8048 ! 503-507
	lw	a0, sp, 0 ! 0-0
	lw	a1, a0, 16 ! 76-81
	flw	fa0, a1, 0 ! 81-81
	lw	a1, sp, 4 ! 0-0
	flw	fa1, a1, 0 ! 504-504
	flw	fa2, sp, 20 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 504-504
	li	a2, min_caml_solver_w_vec ! 504-504
	flw	fa3, a2, 0 ! 504-504
	fadd.s	fa1, fa1, fa3, rne ! 504-504
	fsw	sp, fa0, 28 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_abs_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 28 ! 0-0
	flt.s	t0, fa1, fa0 ! 504-506
	bne	zero, t0, beq_else.8050 ! 504-506
	li	a0, min_caml_solver_dist ! 505-505
	flw	fa0, sp, 20 ! 0-0
	fsw	a0, fa0, 0 ! 505-505
	li	a0, 1 ! 505-505
	j	beq_cont.8051
beq_else.8050:
	li	a0, 0 ! 506-506
beq_cont.8051:
	j	beq_cont.8049
beq_else.8048:
	li	a0, 0 ! 507-507
beq_cont.8049:
	j	beq_cont.8039
beq_else.8038:
	li	a0, 0 ! 497-497
beq_cont.8039:
	li	a1, 0 ! 510-527
	bne	a0, a1, beq_else.8052 ! 510-527
	li	a0, l.6856 ! 514-514
	flw	fa0, a0, 0 ! 514-514
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 8 ! 514-514
	feq.s	t0, fa0, fa1
 ! 514-525	bne	zero, t0, beq_else.8053 ! 514-525
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 24 ! 58-62
	li	a3, l.6856 ! 516-516
	flw	fa0, a3, 0 ! 516-516
	flw	fa1, a0, 8 ! 516-516
	flt.s	t0, fa0, fa1 ! 516-516
	bne	zero, t0, beq_else.8055 ! 516-516
	li	a3, 1 ! 516-516
	j	beq_cont.8056
beq_else.8055:
	li	a3, 0 ! 516-516
beq_cont.8056:
	li	a4, 0 ! 14-14
	bne	a2, a4, beq_else.8057 ! 14-14
	mv	a2, a3 ! 14-14
	j	beq_cont.8058
beq_else.8057:
	li	a2, 0 ! 14-14
	bne	a3, a2, beq_else.8059 ! 14-14
	li	a2, 1 ! 14-14
	j	beq_cont.8060
beq_else.8059:
	li	a2, 0 ! 14-14
beq_cont.8060:
beq_cont.8058:
	li	a3, 0 ! 516-516
	bne	a2, a3, beq_else.8061 ! 516-516
	lw	a2, a1, 16 ! 96-101
	flw	fa0, a2, 8 ! 101-101
	fneg.s	fa0, fa0 ! 516-516
	j	beq_cont.8062
beq_else.8061:
	lw	a2, a1, 16 ! 96-101
	flw	fa0, a2, 8 ! 101-101
beq_cont.8062:
	li	a2, min_caml_solver_w_vec ! 518-518
	flw	fa1, a2, 8 ! 518-518
	fsub.s	fa0, fa0, fa1, rne ! 518-518
	flw	fa1, a0, 8 ! 518-518
	fdiv.s	fa0, fa0, fa1, rne ! 518-518
	lw	a2, a1, 16 ! 76-81
	flw	fa1, a2, 0 ! 81-81
	flw	fa2, a0, 0 ! 520-520
	fmul.s	fa2, fa0, fa2, rne ! 520-520
	li	a2, min_caml_solver_w_vec ! 520-520
	flw	fa3, a2, 0 ! 520-520
	fadd.s	fa2, fa2, fa3, rne ! 520-520
	fsw	sp, fa0, 32 ! 0-0
	fsw	sp, fa1, 36 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_abs_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 36 ! 0-0
	flt.s	t0, fa1, fa0 ! 520-524
	bne	zero, t0, beq_else.8063 ! 520-524
	lw	a0, sp, 0 ! 0-0
	lw	a0, a0, 16 ! 86-91
	flw	fa0, a0, 4 ! 91-91
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 4 ! 521-521
	flw	fa2, sp, 32 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 521-521
	li	a0, min_caml_solver_w_vec ! 521-521
	flw	fa3, a0, 4 ! 521-521
	fadd.s	fa1, fa1, fa3, rne ! 521-521
	fsw	sp, fa0, 40 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_abs_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 40 ! 0-0
	flt.s	t0, fa1, fa0 ! 521-523
	bne	zero, t0, beq_else.8065 ! 521-523
	li	a0, min_caml_solver_dist ! 522-522
	flw	fa0, sp, 32 ! 0-0
	fsw	a0, fa0, 0 ! 522-522
	li	a0, 1 ! 522-522
	j	beq_cont.8066
beq_else.8065:
	li	a0, 0 ! 523-523
beq_cont.8066:
	j	beq_cont.8064
beq_else.8063:
	li	a0, 0 ! 524-524
beq_cont.8064:
	j	beq_cont.8054
beq_else.8053:
	li	a0, 0 ! 514-514
beq_cont.8054:
	li	a1, 0 ! 527-527
	bne	a0, a1, beq_else.8067 ! 527-527
	li	a0, 0 ! 527-527
	ret ! 527-527
beq_else.8067:
	li	a0, 3 ! 527-527
	ret ! 527-527
beq_else.8052:
	li	a0, 2 ! 510-510
	ret ! 510-510
beq_else.8037:
	li	a0, 1 ! 493-493
	ret ! 493-493
solver_surface.2048:
	flw	fa0, a1, 0 ! 535-535
	lw	a2, a0, 16 ! 76-81
	flw	fa1, a2, 0 ! 81-81
	fmul.s	fa0, fa0, fa1, rne ! 535-535
	flw	fa1, a1, 4 ! 535-535
	lw	a2, a0, 16 ! 86-91
	flw	fa2, a2, 4 ! 91-91
	fmul.s	fa1, fa1, fa2, rne ! 535-535
	fadd.s	fa0, fa0, fa1, rne ! 535-535
	flw	fa1, a1, 8 ! 535-535
	lw	a1, a0, 16 ! 96-101
	flw	fa2, a1, 8 ! 101-101
	fmul.s	fa1, fa1, fa2, rne ! 535-535
	fadd.s	fa0, fa0, fa1, rne ! 535-535
	li	a1, l.6856 ! 536-536
	flw	fa1, a1, 0 ! 536-536
	flt.s	t0, fa0, fa1 ! 536-539
	bne	zero, t0, beq_else.8068 ! 536-539
	li	a1, min_caml_solver_w_vec ! 537-537
	flw	fa1, a1, 0 ! 537-537
	lw	a1, a0, 16 ! 76-81
	flw	fa2, a1, 0 ! 81-81
	fmul.s	fa1, fa1, fa2, rne ! 537-537
	li	a1, min_caml_solver_w_vec ! 537-537
	flw	fa2, a1, 4 ! 537-537
	lw	a1, a0, 16 ! 86-91
	flw	fa3, a1, 4 ! 91-91
	fmul.s	fa2, fa2, fa3, rne ! 537-537
	fadd.s	fa1, fa1, fa2, rne ! 537-537
	li	a1, min_caml_solver_w_vec ! 537-537
	flw	fa2, a1, 8 ! 537-537
	lw	a0, a0, 16 ! 96-101
	flw	fa3, a0, 8 ! 101-101
	fmul.s	fa2, fa2, fa3, rne ! 537-537
	fadd.s	fa1, fa1, fa2, rne ! 537-537
	fdiv.s	fa0, fa1, fa0, rne ! 537-537
	li	a0, min_caml_solver_dist ! 538-538
	fneg.s	fa0, fa0 ! 538-538
	fsw	a0, fa0, 0 ! 538-538
	li	a0, 1 ! 538-538
	ret ! 538-538
beq_else.8068:
	li	a0, 0 ! 539-539
	ret ! 539-539
in_prod_co_objrot.2054:
	flw	fa0, a1, 4 ! 553-553
	flw	fa1, a1, 8 ! 553-553
	fmul.s	fa0, fa0, fa1, rne ! 553-553
	lw	a2, a0, 36 ! 186-191
	flw	fa1, a2, 0 ! 191-191
	fmul.s	fa0, fa0, fa1, rne ! 553-553
	flw	fa1, a1, 0 ! 554-554
	flw	fa2, a1, 8 ! 554-554
	fmul.s	fa1, fa1, fa2, rne ! 554-554
	lw	a2, a0, 36 ! 196-201
	flw	fa2, a2, 4 ! 201-201
	fmul.s	fa1, fa1, fa2, rne ! 554-554
	fadd.s	fa0, fa0, fa1, rne ! 553-554
	flw	fa1, a1, 0 ! 555-555
	flw	fa2, a1, 4 ! 555-555
	fmul.s	fa1, fa1, fa2, rne ! 555-555
	lw	a0, a0, 36 ! 206-211
	flw	fa2, a0, 8 ! 211-211
	fmul.s	fa1, fa1, fa2, rne ! 555-555
	fadd.s	fa0, fa0, fa1, rne ! 553-555
	ret ! 553-555
solver2nd_mul_b.2057:
	li	a2, min_caml_solver_w_vec ! 560-560
	flw	fa0, a2, 0 ! 560-560
	flw	fa1, a1, 0 ! 560-560
	fmul.s	fa0, fa0, fa1, rne ! 560-560
	lw	a2, a0, 16 ! 76-81
	flw	fa1, a2, 0 ! 81-81
	fmul.s	fa0, fa0, fa1, rne ! 560-560
	li	a2, min_caml_solver_w_vec ! 561-561
	flw	fa1, a2, 4 ! 561-561
	flw	fa2, a1, 4 ! 561-561
	fmul.s	fa1, fa1, fa2, rne ! 561-561
	lw	a2, a0, 16 ! 86-91
	flw	fa2, a2, 4 ! 91-91
	fmul.s	fa1, fa1, fa2, rne ! 561-561
	fadd.s	fa0, fa0, fa1, rne ! 560-561
	li	a2, min_caml_solver_w_vec ! 562-562
	flw	fa1, a2, 8 ! 562-562
	flw	fa2, a1, 8 ! 562-562
	fmul.s	fa1, fa1, fa2, rne ! 562-562
	lw	a0, a0, 16 ! 96-101
	flw	fa2, a0, 8 ! 101-101
	fmul.s	fa1, fa1, fa2, rne ! 562-562
	fadd.s	fa0, fa0, fa1, rne ! 560-562
	ret ! 560-562
solver2nd_rot_b.2060:
	li	a2, min_caml_solver_w_vec ! 567-567
	flw	fa0, a2, 8 ! 567-567
	flw	fa1, a1, 4 ! 567-567
	fmul.s	fa0, fa0, fa1, rne ! 567-567
	li	a2, min_caml_solver_w_vec ! 567-567
	flw	fa1, a2, 4 ! 567-567
	flw	fa2, a1, 8 ! 567-567
	fmul.s	fa1, fa1, fa2, rne ! 567-567
	fadd.s	fa0, fa0, fa1, rne ! 567-567
	lw	a2, a0, 36 ! 186-191
	flw	fa1, a2, 0 ! 191-191
	fmul.s	fa0, fa0, fa1, rne ! 567-567
	li	a2, min_caml_solver_w_vec ! 568-568
	flw	fa1, a2, 0 ! 568-568
	flw	fa2, a1, 8 ! 568-568
	fmul.s	fa1, fa1, fa2, rne ! 568-568
	li	a2, min_caml_solver_w_vec ! 568-568
	flw	fa2, a2, 8 ! 568-568
	flw	fa3, a1, 0 ! 568-568
	fmul.s	fa2, fa2, fa3, rne ! 568-568
	fadd.s	fa1, fa1, fa2, rne ! 568-568
	lw	a2, a0, 36 ! 196-201
	flw	fa2, a2, 4 ! 201-201
	fmul.s	fa1, fa1, fa2, rne ! 568-568
	fadd.s	fa0, fa0, fa1, rne ! 567-568
	li	a2, min_caml_solver_w_vec ! 569-569
	flw	fa1, a2, 0 ! 569-569
	flw	fa2, a1, 4 ! 569-569
	fmul.s	fa1, fa1, fa2, rne ! 569-569
	li	a2, min_caml_solver_w_vec ! 569-569
	flw	fa2, a2, 4 ! 569-569
	flw	fa3, a1, 0 ! 569-569
	fmul.s	fa2, fa2, fa3, rne ! 569-569
	fadd.s	fa1, fa1, fa2, rne ! 569-569
	lw	a0, a0, 36 ! 206-211
	flw	fa2, a0, 8 ! 211-211
	fmul.s	fa1, fa1, fa2, rne ! 569-569
	fadd.s	fa0, fa0, fa1, rne ! 567-569
	ret ! 567-569
solver_second.2063:
	flw	fa0, a1, 0 ! 546-546
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	lw	a2, a0, 16 ! 76-81
	flw	fa1, a2, 0 ! 81-81
	fmul.s	fa0, fa0, fa1, rne ! 546-546
	flw	fa1, a1, 4 ! 547-547
	fmul.s	fa1, fa1, fa1, rne ! 17-17
	lw	a2, a0, 16 ! 86-91
	flw	fa2, a2, 4 ! 91-91
	fmul.s	fa1, fa1, fa2, rne ! 547-547
	fadd.s	fa0, fa0, fa1, rne ! 546-547
	flw	fa1, a1, 8 ! 548-548
	fmul.s	fa1, fa1, fa1, rne ! 17-17
	lw	a2, a0, 16 ! 96-101
	flw	fa2, a2, 8 ! 101-101
	fmul.s	fa1, fa1, fa2, rne ! 548-548
	fadd.s	fa0, fa0, fa1, rne ! 546-548
	lw	a2, a0, 12 ! 67-71
	li	a3, 0 ! 576-576
	bne	a2, a3, beq_else.8069 ! 576-577
	j	beq_cont.8070
beq_else.8069:
	flw	fa1, a1, 4 ! 553-553
	flw	fa2, a1, 8 ! 553-553
	fmul.s	fa1, fa1, fa2, rne ! 553-553
	lw	a2, a0, 36 ! 186-191
	flw	fa2, a2, 0 ! 191-191
	fmul.s	fa1, fa1, fa2, rne ! 553-553
	flw	fa2, a1, 0 ! 554-554
	flw	fa3, a1, 8 ! 554-554
	fmul.s	fa2, fa2, fa3, rne ! 554-554
	lw	a2, a0, 36 ! 196-201
	flw	fa3, a2, 4 ! 201-201
	fmul.s	fa2, fa2, fa3, rne ! 554-554
	fadd.s	fa1, fa1, fa2, rne ! 553-554
	flw	fa2, a1, 0 ! 555-555
	flw	fa3, a1, 4 ! 555-555
	fmul.s	fa2, fa2, fa3, rne ! 555-555
	lw	a2, a0, 36 ! 206-211
	flw	fa3, a2, 8 ! 211-211
	fmul.s	fa2, fa2, fa3, rne ! 555-555
	fadd.s	fa1, fa1, fa2, rne ! 553-555
	fadd.s	fa0, fa0, fa1, rne ! 576-576
beq_cont.8070:
	li	a2, l.6856 ! 579-579
	flw	fa1, a2, 0 ! 579-579
	feq.s	t0, fa1, fa0
 ! 579-610	bne	zero, t0, beq_else.8071 ! 579-610
	li	a2, l.6980 ! 583-583
	flw	fa1, a2, 0 ! 583-583
	fsw	sp, fa0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	fsw	sp, fa1, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	solver2nd_mul_b.2057
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 12 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 583-583
	lw	a0, sp, 8 ! 0-0
	lw	a1, a0, 12 ! 67-71
	li	a2, 0 ! 586-586
	bne	a1, a2, beq_else.8072 ! 586-587
	j	beq_cont.8073
beq_else.8072:
	lw	a1, sp, 4 ! 0-0
	fsw	sp, fa0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	solver2nd_rot_b.2060
	addi	sp, sp, -24
	lw	ra, sp, 20
	flw	fa1, sp, 16 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 586-586
beq_cont.8073:
	li	a0, min_caml_solver_w_vec ! 589-589
	flw	fa1, a0, 0 ! 546-546
	fmul.s	fa1, fa1, fa1, rne ! 17-17
	lw	a1, sp, 8 ! 0-0
	lw	a2, a1, 16 ! 76-81
	flw	fa2, a2, 0 ! 81-81
	fmul.s	fa1, fa1, fa2, rne ! 546-546
	flw	fa2, a0, 4 ! 547-547
	fmul.s	fa2, fa2, fa2, rne ! 17-17
	lw	a2, a1, 16 ! 86-91
	flw	fa3, a2, 4 ! 91-91
	fmul.s	fa2, fa2, fa3, rne ! 547-547
	fadd.s	fa1, fa1, fa2, rne ! 546-547
	flw	fa2, a0, 8 ! 548-548
	fmul.s	fa2, fa2, fa2, rne ! 17-17
	lw	a0, a1, 16 ! 96-101
	flw	fa3, a0, 8 ! 101-101
	fmul.s	fa2, fa2, fa3, rne ! 548-548
	fadd.s	fa1, fa1, fa2, rne ! 546-548
	lw	a0, a1, 12 ! 67-71
	li	a2, 0 ! 591-591
	bne	a0, a2, beq_else.8074 ! 591-593
	j	beq_cont.8075
beq_else.8074:
	li	a0, min_caml_solver_w_vec ! 592-592
	flw	fa2, a0, 4 ! 553-553
	flw	fa3, a0, 8 ! 553-553
	fmul.s	fa2, fa2, fa3, rne ! 553-553
	lw	a2, a1, 36 ! 186-191
	flw	fa3, a2, 0 ! 191-191
	fmul.s	fa2, fa2, fa3, rne ! 553-553
	flw	fa3, a0, 0 ! 554-554
	flw	fa4, a0, 8 ! 554-554
	fmul.s	fa3, fa3, fa4, rne ! 554-554
	lw	a2, a1, 36 ! 196-201
	flw	fa4, a2, 4 ! 201-201
	fmul.s	fa3, fa3, fa4, rne ! 554-554
	fadd.s	fa2, fa2, fa3, rne ! 553-554
	flw	fa3, a0, 0 ! 555-555
	flw	fa4, a0, 4 ! 555-555
	fmul.s	fa3, fa3, fa4, rne ! 555-555
	lw	a0, a1, 36 ! 206-211
	flw	fa4, a0, 8 ! 211-211
	fmul.s	fa3, fa3, fa4, rne ! 555-555
	fadd.s	fa2, fa2, fa3, rne ! 553-555
	fadd.s	fa1, fa1, fa2, rne ! 592-592
beq_cont.8075:
	lw	a0, a1, 4 ! 38-43
	li	a2, 3 ! 595-595
	bne	a0, a2, beq_else.8076 ! 595-596
	li	a0, l.6895 ! 596-596
	flw	fa2, a0, 0 ! 596-596
	fsub.s	fa1, fa1, fa2, rne ! 596-596
	j	beq_cont.8077
beq_else.8076:
beq_cont.8077:
	li	a0, l.7161 ! 599-599
	flw	fa2, a0, 0 ! 599-599
	flw	fa3, sp, 0 ! 0-0
	fmul.s	fa2, fa2, fa3, rne ! 599-599
	fmul.s	fa1, fa2, fa1, rne ! 599-599
	fmul.s	fa2, fa0, fa0, rne ! 17-17
	fsub.s	fa1, fa2, fa1, rne ! 600-600
	li	a0, l.6856 ! 602-602
	flw	fa2, a0, 0 ! 602-602
	flt.s	t0, fa1, fa2 ! 602-609
	bne	zero, t0, beq_else.8078 ! 602-609
	fsw	sp, fa0, 20 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_sqrt
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 8 ! 0-0
	lw	a0, a0, 24 ! 58-62
	li	a1, 0 ! 606-606
	bne	a0, a1, beq_else.8079 ! 606-606
	fneg.s	fa0, fa0 ! 606-606
	j	beq_cont.8080
beq_else.8079:
beq_cont.8080:
	li	a0, min_caml_solver_dist ! 607-607
	flw	fa1, sp, 20 ! 0-0
	fsub.s	fa0, fa0, fa1, rne ! 607-607
	li	a1, l.6980 ! 607-607
	flw	fa1, a1, 0 ! 607-607
	fdiv.s	fa0, fa0, fa1, rne ! 607-607
	flw	fa1, sp, 0 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 607-607
	fsw	a0, fa0, 0 ! 607-607
	li	a0, 1 ! 607-607
	ret ! 607-607
beq_else.8078:
	li	a0, 0 ! 609-609
	ret ! 609-609
beq_else.8071:
	li	a0, 0 ! 580-580
	ret ! 580-580
solver.2066:
	li	a3, min_caml_objects ! 616-616
	slli	a0, a0, 2 ! 616-616
	add	t0, a3, a0 ! 616-616
	lw	a0, t0, 0 ! 616-616
	li	a3, min_caml_solver_w_vec ! 617-617
	flw	fa0, a2, 0 ! 617-617
	lw	a4, a0, 20 ! 106-111
	flw	fa1, a4, 0 ! 111-111
	fsub.s	fa0, fa0, fa1, rne ! 617-617
	fsw	a3, fa0, 0 ! 617-617
	li	a3, min_caml_solver_w_vec ! 618-618
	flw	fa0, a2, 4 ! 618-618
	lw	a4, a0, 20 ! 116-121
	flw	fa1, a4, 4 ! 121-121
	fsub.s	fa0, fa0, fa1, rne ! 618-618
	fsw	a3, fa0, 4 ! 618-618
	li	a3, min_caml_solver_w_vec ! 619-619
	flw	fa0, a2, 8 ! 619-619
	lw	a2, a0, 20 ! 126-131
	flw	fa1, a2, 8 ! 131-131
	fsub.s	fa0, fa0, fa1, rne ! 619-619
	fsw	a3, fa0, 8 ! 619-619
	lw	a2, a0, 4 ! 38-43
	li	a3, 1 ! 621-621
	bne	a2, a3, beq_else.8081 ! 621-623
	j	solver_rect.2045
beq_else.8081:
	li	a3, 2 ! 622-622
	bne	a2, a3, beq_else.8082 ! 622-623
	j	solver_surface.2048
beq_else.8082:
	j	solver_second.2063
is_outside.2076:
	li	a1, min_caml_isoutside_q ! 667-667
	li	a2, min_caml_chkinside_p ! 667-667
	flw	fa0, a2, 0 ! 667-667
	lw	a2, a0, 20 ! 106-111
	flw	fa1, a2, 0 ! 111-111
	fsub.s	fa0, fa0, fa1, rne ! 667-667
	fsw	a1, fa0, 0 ! 667-667
	li	a1, min_caml_isoutside_q ! 668-668
	li	a2, min_caml_chkinside_p ! 668-668
	flw	fa0, a2, 4 ! 668-668
	lw	a2, a0, 20 ! 116-121
	flw	fa1, a2, 4 ! 121-121
	fsub.s	fa0, fa0, fa1, rne ! 668-668
	fsw	a1, fa0, 4 ! 668-668
	li	a1, min_caml_isoutside_q ! 669-669
	li	a2, min_caml_chkinside_p ! 669-669
	flw	fa0, a2, 8 ! 669-669
	lw	a2, a0, 20 ! 126-131
	flw	fa1, a2, 8 ! 131-131
	fsub.s	fa0, fa0, fa1, rne ! 669-669
	fsw	a1, fa0, 8 ! 669-669
	lw	a1, a0, 4 ! 38-43
	li	a2, 1 ! 671-671
	bne	a1, a2, beq_else.8083 ! 671-676
	lw	a1, a0, 16 ! 76-81
	flw	fa0, a1, 0 ! 81-81
	li	a1, min_caml_isoutside_q ! 633-633
	flw	fa1, a1, 0 ! 633-633
	sw	sp, a0, 0 ! 0-0
	fsw	sp, fa0, 4 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_abs_float
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 4 ! 0-0
	flt.s	t0, fa1, fa0 ! 633-637
	bne	zero, t0, beq_else.8084 ! 633-637
	lw	a0, sp, 0 ! 0-0
	lw	a1, a0, 16 ! 86-91
	flw	fa0, a1, 4 ! 91-91
	li	a1, min_caml_isoutside_q ! 634-634
	flw	fa1, a1, 4 ! 634-634
	fsw	sp, fa0, 8 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_abs_float
	addi	sp, sp, -16
	lw	ra, sp, 12
	flw	fa1, sp, 8 ! 0-0
	flt.s	t0, fa1, fa0 ! 634-636
	bne	zero, t0, beq_else.8086 ! 634-636
	lw	a0, sp, 0 ! 0-0
	lw	a1, a0, 16 ! 96-101
	flw	fa0, a1, 8 ! 101-101
	li	a1, min_caml_isoutside_q ! 635-635
	flw	fa1, a1, 8 ! 635-635
	fsw	sp, fa0, 12 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_abs_float
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 12 ! 0-0
	flt.s	t0, fa1, fa0 ! 635-635
	bne	zero, t0, beq_else.8088 ! 635-635
	li	a0, 1 ! 635-635
	j	beq_cont.8089
beq_else.8088:
	li	a0, 0 ! 635-635
beq_cont.8089:
	j	beq_cont.8087
beq_else.8086:
	li	a0, 0 ! 636-636
beq_cont.8087:
	j	beq_cont.8085
beq_else.8084:
	li	a0, 0 ! 637-637
beq_cont.8085:
	li	a1, 0 ! 632-639
	bne	a0, a1, beq_else.8090 ! 632-639
	lw	a0, sp, 0 ! 0-0
	lw	a0, a0, 24 ! 58-62
	li	a1, 0 ! 639-639
	bne	a0, a1, beq_else.8091 ! 639-639
	li	a0, 1 ! 639-639
	ret ! 639-639
beq_else.8091:
	li	a0, 0 ! 639-639
	ret ! 639-639
beq_else.8090:
	lw	a0, sp, 0 ! 0-0
	lw	a0, a0, 24 ! 58-62
	ret ! 62-62
beq_else.8083:
	li	a2, 2 ! 673-673
	bne	a1, a2, beq_else.8092 ! 673-676
	lw	a1, a0, 16 ! 76-81
	flw	fa0, a1, 0 ! 81-81
	li	a1, min_caml_isoutside_q ! 644-644
	flw	fa1, a1, 0 ! 644-644
	fmul.s	fa0, fa0, fa1, rne ! 644-644
	lw	a1, a0, 16 ! 86-91
	flw	fa1, a1, 4 ! 91-91
	li	a1, min_caml_isoutside_q ! 645-645
	flw	fa2, a1, 4 ! 645-645
	fmul.s	fa1, fa1, fa2, rne ! 645-645
	fadd.s	fa0, fa0, fa1, rne ! 644-645
	lw	a1, a0, 16 ! 96-101
	flw	fa1, a1, 8 ! 101-101
	li	a1, min_caml_isoutside_q ! 646-646
	flw	fa2, a1, 8 ! 646-646
	fmul.s	fa1, fa1, fa2, rne ! 646-646
	fadd.s	fa0, fa0, fa1, rne ! 644-646
	li	a1, l.6856 ! 647-647
	flw	fa1, a1, 0 ! 647-647
	flt.s	t0, fa1, fa0 ! 647-647
	bne	zero, t0, beq_else.8093 ! 647-647
	li	a1, 1 ! 647-647
	j	beq_cont.8094
beq_else.8093:
	li	a1, 0 ! 647-647
beq_cont.8094:
	lw	a0, a0, 24 ! 58-62
	li	a2, 0 ! 14-14
	bne	a0, a2, beq_else.8095 ! 14-14
	mv	a0, a1 ! 14-14
	j	beq_cont.8096
beq_else.8095:
	li	a0, 0 ! 14-14
	bne	a1, a0, beq_else.8097 ! 14-14
	li	a0, 1 ! 14-14
	j	beq_cont.8098
beq_else.8097:
	li	a0, 0 ! 14-14
beq_cont.8098:
beq_cont.8096:
	li	a1, 0 ! 648-648
	bne	a0, a1, beq_else.8099 ! 648-648
	li	a0, 1 ! 648-648
	ret ! 648-648
beq_else.8099:
	li	a0, 0 ! 648-648
	ret ! 648-648
beq_else.8092:
	li	a1, min_caml_isoutside_q ! 653-653
	flw	fa0, a1, 0 ! 546-546
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	lw	a2, a0, 16 ! 76-81
	flw	fa1, a2, 0 ! 81-81
	fmul.s	fa0, fa0, fa1, rne ! 546-546
	flw	fa1, a1, 4 ! 547-547
	fmul.s	fa1, fa1, fa1, rne ! 17-17
	lw	a2, a0, 16 ! 86-91
	flw	fa2, a2, 4 ! 91-91
	fmul.s	fa1, fa1, fa2, rne ! 547-547
	fadd.s	fa0, fa0, fa1, rne ! 546-547
	flw	fa1, a1, 8 ! 548-548
	fmul.s	fa1, fa1, fa1, rne ! 17-17
	lw	a1, a0, 16 ! 96-101
	flw	fa2, a1, 8 ! 101-101
	fmul.s	fa1, fa1, fa2, rne ! 548-548
	fadd.s	fa0, fa0, fa1, rne ! 546-548
	lw	a1, a0, 4 ! 38-43
	li	a2, 3 ! 654-654
	bne	a1, a2, beq_else.8100 ! 654-654
	li	a1, l.6895 ! 654-654
	flw	fa1, a1, 0 ! 654-654
	fsub.s	fa0, fa0, fa1, rne ! 654-654
	j	beq_cont.8101
beq_else.8100:
beq_cont.8101:
	lw	a1, a0, 12 ! 67-71
	li	a2, 0 ! 656-656
	sw	sp, a0, 0 ! 0-0
	bne	a1, a2, beq_else.8102 ! 656-659
	j	beq_cont.8103
beq_else.8102:
	li	a1, min_caml_isoutside_q ! 657-657
	fsw	sp, fa0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	in_prod_co_objrot.2054
	addi	sp, sp, -24
	lw	ra, sp, 20
	flw	fa1, sp, 16 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 657-657
beq_cont.8103:
	li	a0, l.6856 ! 661-661
	flw	fa1, a0, 0 ! 661-661
	flt.s	t0, fa1, fa0 ! 661-661
	bne	zero, t0, beq_else.8104 ! 661-661
	li	a0, 1 ! 661-661
	j	beq_cont.8105
beq_else.8104:
	li	a0, 0 ! 661-661
beq_cont.8105:
	lw	a1, sp, 0 ! 0-0
	lw	a1, a1, 24 ! 58-62
	li	a2, 0 ! 14-14
	bne	a1, a2, beq_else.8106 ! 14-14
	j	beq_cont.8107
beq_else.8106:
	li	a1, 0 ! 14-14
	bne	a0, a1, beq_else.8108 ! 14-14
	li	a0, 1 ! 14-14
	j	beq_cont.8109
beq_else.8108:
	li	a0, 0 ! 14-14
beq_cont.8109:
beq_cont.8107:
	li	a1, 0 ! 662-662
	bne	a0, a1, beq_else.8110 ! 662-662
	li	a0, 1 ! 662-662
	ret ! 662-662
beq_else.8110:
	li	a0, 0 ! 662-662
	ret ! 662-662
check_all_inside.2078:
	slli	a2, a0, 2 ! 682-682
	add	t0, a1, a2 ! 682-682
	lw	a2, t0, 0 ! 682-682
	li	a3, -1 ! 683-683
	bne	a2, a3, beq_else.8111 ! 683-686
	li	a0, 1 ! 683-683
	ret ! 683-683
beq_else.8111:
	li	a3, min_caml_objects ! 684-684
	slli	a2, a2, 2 ! 684-684
	add	t0, a3, a2 ! 684-684
	lw	a2, t0, 0 ! 684-684
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	is_outside.2076
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8112 ! 684-685
	lw	a0, sp, 4 ! 0-0
	addi	a0, a0, 1 ! 685-685
	slli	a1, a0, 2 ! 682-682
	lw	a2, sp, 0 ! 0-0
	add	t0, a2, a1 ! 682-682
	lw	a1, t0, 0 ! 682-682
	li	a3, -1 ! 683-683
	bne	a1, a3, beq_else.8113 ! 683-686
	li	a0, 1 ! 683-683
	ret ! 683-683
beq_else.8113:
	li	a3, min_caml_objects ! 684-684
	slli	a1, a1, 2 ! 684-684
	add	t0, a3, a1 ! 684-684
	lw	a1, t0, 0 ! 684-684
	sw	sp, a0, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	is_outside.2076
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8114 ! 684-685
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 685-685
	slli	a1, a0, 2 ! 682-682
	lw	a2, sp, 0 ! 0-0
	add	t0, a2, a1 ! 682-682
	lw	a1, t0, 0 ! 682-682
	li	a3, -1 ! 683-683
	bne	a1, a3, beq_else.8115 ! 683-686
	li	a0, 1 ! 683-683
	ret ! 683-683
beq_else.8115:
	li	a3, min_caml_objects ! 684-684
	slli	a1, a1, 2 ! 684-684
	add	t0, a3, a1 ! 684-684
	lw	a1, t0, 0 ! 684-684
	sw	sp, a0, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	is_outside.2076
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8116 ! 684-685
	lw	a0, sp, 12 ! 0-0
	addi	a0, a0, 1 ! 685-685
	slli	a1, a0, 2 ! 682-682
	lw	a2, sp, 0 ! 0-0
	add	t0, a2, a1 ! 682-682
	lw	a1, t0, 0 ! 682-682
	li	a3, -1 ! 683-683
	bne	a1, a3, beq_else.8117 ! 683-686
	li	a0, 1 ! 683-683
	ret ! 683-683
beq_else.8117:
	li	a3, min_caml_objects ! 684-684
	slli	a1, a1, 2 ! 684-684
	add	t0, a3, a1 ! 684-684
	lw	a1, t0, 0 ! 684-684
	sw	sp, a0, 16 ! 0-0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	is_outside.2076
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8118 ! 684-685
	lw	a0, sp, 16 ! 0-0
	addi	a0, a0, 1 ! 685-685
	lw	a1, sp, 0 ! 0-0
	j	check_all_inside.2078
beq_else.8118:
	li	a0, 0 ! 684-684
	ret ! 684-684
beq_else.8116:
	li	a0, 0 ! 684-684
	ret ! 684-684
beq_else.8114:
	li	a0, 0 ! 684-684
	ret ! 684-684
beq_else.8112:
	li	a0, 0 ! 684-684
	ret ! 684-684
shadow_check_and_group.2081:
	slli	a3, a0, 2 ! 697-697
	add	t0, a1, a3 ! 697-697
	lw	a3, t0, 0 ! 697-697
	li	a4, -1 ! 697-697
	bne	a3, a4, beq_else.8119 ! 697-726
	li	a0, 0 ! 698-698
	ret ! 698-698
beq_else.8119:
	slli	a3, a0, 2 ! 700-700
	add	t0, a1, a3 ! 700-700
	lw	a3, t0, 0 ! 700-700
	li	a4, min_caml_light ! 706-706
	sw	sp, a2, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	sw	sp, a3, 12 ! 0-0
	mv	a1, a4
	mv	a0, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	solver.2066
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, min_caml_solver_dist ! 707-707
	flw	fa0, a1, 0 ! 707-707
	li	a1, 0 ! 708-708
	bne	a0, a1, beq_else.8120 ! 708-708
	li	a0, 0 ! 708-708
	j	beq_cont.8121
beq_else.8120:
	li	a0, l.7217 ! 708-708
	flw	fa1, a0, 0 ! 708-708
	flt.s	t0, fa1, fa0 ! 708-708
	bne	zero, t0, beq_else.8122 ! 708-708
	li	a0, 1 ! 708-708
	j	beq_cont.8123
beq_else.8122:
	li	a0, 0 ! 708-708
beq_cont.8123:
beq_cont.8121:
	li	a1, 0 ! 708-726
	bne	a0, a1, beq_else.8124 ! 708-726
	li	a0, min_caml_objects ! 724-724
	lw	a1, sp, 12 ! 0-0
	slli	a1, a1, 2 ! 724-724
	add	t0, a0, a1 ! 724-724
	lw	a0, t0, 0 ! 724-724
	lw	a0, a0, 24 ! 58-62
	li	a1, 0 ! 724-726
	bne	a0, a1, beq_else.8125 ! 724-726
	li	a0, 0 ! 726-726
	ret ! 726-726
beq_else.8125:
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 725-725
	lw	a1, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	j	shadow_check_and_group.2081
beq_else.8124:
	li	a0, l.7219 ! 712-712
	flw	fa1, a0, 0 ! 712-712
	fadd.s	fa0, fa0, fa1, rne ! 712-712
	li	a0, min_caml_chkinside_p ! 713-713
	li	a1, min_caml_light ! 713-713
	flw	fa1, a1, 0 ! 713-713
	fmul.s	fa1, fa1, fa0, rne ! 713-713
	lw	a2, sp, 0 ! 0-0
	flw	fa2, a2, 0 ! 713-713
	fadd.s	fa1, fa1, fa2, rne ! 713-713
	fsw	a0, fa1, 0 ! 713-713
	li	a0, min_caml_chkinside_p ! 714-714
	li	a1, min_caml_light ! 714-714
	flw	fa1, a1, 4 ! 714-714
	fmul.s	fa1, fa1, fa0, rne ! 714-714
	flw	fa2, a2, 4 ! 714-714
	fadd.s	fa1, fa1, fa2, rne ! 714-714
	fsw	a0, fa1, 4 ! 714-714
	li	a0, min_caml_chkinside_p ! 715-715
	li	a1, min_caml_light ! 715-715
	flw	fa1, a1, 8 ! 715-715
	fmul.s	fa0, fa1, fa0, rne ! 715-715
	flw	fa1, a2, 8 ! 715-715
	fadd.s	fa0, fa0, fa1, rne ! 715-715
	fsw	a0, fa0, 8 ! 715-715
	lw	a1, sp, 4 ! 0-0
	lw	a0, a1, 0 ! 682-682
	li	a3, -1 ! 683-683
	bne	a0, a3, beq_else.8126 ! 683-686
	li	a0, 1 ! 683-683
	j	beq_cont.8127
beq_else.8126:
	li	a3, min_caml_objects ! 684-684
	slli	a0, a0, 2 ! 684-684
	add	t0, a3, a0 ! 684-684
	lw	a0, t0, 0 ! 684-684
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	is_outside.2076
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8128 ! 684-685
	lw	a1, sp, 4 ! 0-0
	lw	a0, a1, 4 ! 682-682
	li	a2, -1 ! 683-683
	bne	a0, a2, beq_else.8130 ! 683-686
	li	a0, 1 ! 683-683
	j	beq_cont.8131
beq_else.8130:
	li	a2, min_caml_objects ! 684-684
	slli	a0, a0, 2 ! 684-684
	add	t0, a2, a0 ! 684-684
	lw	a0, t0, 0 ! 684-684
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	is_outside.2076
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8132 ! 684-685
	lw	a1, sp, 4 ! 0-0
	lw	a0, a1, 8 ! 682-682
	li	a2, -1 ! 683-683
	bne	a0, a2, beq_else.8134 ! 683-686
	li	a0, 1 ! 683-683
	j	beq_cont.8135
beq_else.8134:
	li	a2, min_caml_objects ! 684-684
	slli	a0, a0, 2 ! 684-684
	add	t0, a2, a0 ! 684-684
	lw	a0, t0, 0 ! 684-684
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	is_outside.2076
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8136 ! 684-685
	li	a0, 3 ! 685-685
	lw	a1, sp, 4 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	check_all_inside.2078
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	beq_cont.8137
beq_else.8136:
	li	a0, 0 ! 684-684
beq_cont.8137:
beq_cont.8135:
	j	beq_cont.8133
beq_else.8132:
	li	a0, 0 ! 684-684
beq_cont.8133:
beq_cont.8131:
	j	beq_cont.8129
beq_else.8128:
	li	a0, 0 ! 684-684
beq_cont.8129:
beq_cont.8127:
	li	a1, 0 ! 716-718
	bne	a0, a1, beq_else.8138 ! 716-718
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 718-718
	lw	a1, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	j	shadow_check_and_group.2081
beq_else.8138:
	li	a0, 1 ! 717-717
	ret ! 717-717
shadow_check_one_or_group.2085:
	slli	a3, a0, 2 ! 732-732
	add	t0, a1, a3 ! 732-732
	lw	a3, t0, 0 ! 732-732
	li	a4, -1 ! 733-733
	bne	a3, a4, beq_else.8139 ! 733-740
	li	a0, 0 ! 734-734
	ret ! 734-734
beq_else.8139:
	li	a4, min_caml_and_net ! 736-736
	slli	a3, a3, 2 ! 736-736
	add	t0, a4, a3 ! 736-736
	lw	a3, t0, 0 ! 736-736
	li	a4, 0 ! 737-737
	sw	sp, a2, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	mv	a1, a3
	mv	a0, a4
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	shadow_check_and_group.2081
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8140 ! 738-739
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 739-739
	slli	a1, a0, 2 ! 732-732
	lw	a2, sp, 4 ! 0-0
	add	t0, a2, a1 ! 732-732
	lw	a1, t0, 0 ! 732-732
	li	a3, -1 ! 733-733
	bne	a1, a3, beq_else.8141 ! 733-740
	li	a0, 0 ! 734-734
	ret ! 734-734
beq_else.8141:
	li	a3, min_caml_and_net ! 736-736
	slli	a1, a1, 2 ! 736-736
	add	t0, a3, a1 ! 736-736
	lw	a1, t0, 0 ! 736-736
	li	a3, 0 ! 737-737
	lw	a4, sp, 0 ! 0-0
	sw	sp, a0, 12 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	shadow_check_and_group.2081
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8142 ! 738-739
	lw	a0, sp, 12 ! 0-0
	addi	a0, a0, 1 ! 739-739
	slli	a1, a0, 2 ! 732-732
	lw	a2, sp, 4 ! 0-0
	add	t0, a2, a1 ! 732-732
	lw	a1, t0, 0 ! 732-732
	li	a3, -1 ! 733-733
	bne	a1, a3, beq_else.8143 ! 733-740
	li	a0, 0 ! 734-734
	ret ! 734-734
beq_else.8143:
	li	a3, min_caml_and_net ! 736-736
	slli	a1, a1, 2 ! 736-736
	add	t0, a3, a1 ! 736-736
	lw	a1, t0, 0 ! 736-736
	li	a3, 0 ! 737-737
	lw	a4, sp, 0 ! 0-0
	sw	sp, a0, 16 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	shadow_check_and_group.2081
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8144 ! 738-739
	lw	a0, sp, 16 ! 0-0
	addi	a0, a0, 1 ! 739-739
	slli	a1, a0, 2 ! 732-732
	lw	a2, sp, 4 ! 0-0
	add	t0, a2, a1 ! 732-732
	lw	a1, t0, 0 ! 732-732
	li	a3, -1 ! 733-733
	bne	a1, a3, beq_else.8145 ! 733-740
	li	a0, 0 ! 734-734
	ret ! 734-734
beq_else.8145:
	li	a3, min_caml_and_net ! 736-736
	slli	a1, a1, 2 ! 736-736
	add	t0, a3, a1 ! 736-736
	lw	a1, t0, 0 ! 736-736
	li	a3, 0 ! 737-737
	lw	a4, sp, 0 ! 0-0
	sw	sp, a0, 20 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	shadow_check_and_group.2081
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8146 ! 738-739
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 739-739
	lw	a1, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	j	shadow_check_one_or_group.2085
beq_else.8146:
	li	a0, 1 ! 738-738
	ret ! 738-738
beq_else.8144:
	li	a0, 1 ! 738-738
	ret ! 738-738
beq_else.8142:
	li	a0, 1 ! 738-738
	ret ! 738-738
beq_else.8140:
	li	a0, 1 ! 738-738
	ret ! 738-738
shadow_check_one_or_matrix.2089:
	slli	a3, a0, 2 ! 746-746
	add	t0, a1, a3 ! 746-746
	lw	a3, t0, 0 ! 746-746
	lw	a4, a3, 0 ! 747-747
	li	a5, -1 ! 748-748
	bne	a4, a5, beq_else.8147 ! 748-769
	li	a0, 0 ! 748-748
	ret ! 748-748
beq_else.8147:
	li	a5, 99 ! 750-750
	bne	a4, a5, beq_else.8148 ! 750-768
	lw	a4, a3, 4 ! 732-732
	li	a5, -1 ! 733-733
	sw	sp, a2, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	bne	a4, a5, beq_else.8149 ! 733-740
	li	a0, 0 ! 734-734
	j	beq_cont.8150
beq_else.8149:
	li	a5, min_caml_and_net ! 736-736
	slli	a4, a4, 2 ! 736-736
	add	t0, a5, a4 ! 736-736
	lw	a4, t0, 0 ! 736-736
	li	a5, 0 ! 737-737
	sw	sp, a3, 12 ! 0-0
	mv	a1, a4
	mv	a0, a5
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	shadow_check_and_group.2081
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8151 ! 738-739
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 8 ! 732-732
	li	a2, -1 ! 733-733
	bne	a1, a2, beq_else.8153 ! 733-740
	li	a0, 0 ! 734-734
	j	beq_cont.8154
beq_else.8153:
	li	a2, min_caml_and_net ! 736-736
	slli	a1, a1, 2 ! 736-736
	add	t0, a2, a1 ! 736-736
	lw	a1, t0, 0 ! 736-736
	li	a2, 0 ! 737-737
	lw	a3, sp, 0 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	shadow_check_and_group.2081
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8155 ! 738-739
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 12 ! 732-732
	li	a2, -1 ! 733-733
	bne	a1, a2, beq_else.8157 ! 733-740
	li	a0, 0 ! 734-734
	j	beq_cont.8158
beq_else.8157:
	li	a2, min_caml_and_net ! 736-736
	slli	a1, a1, 2 ! 736-736
	add	t0, a2, a1 ! 736-736
	lw	a1, t0, 0 ! 736-736
	li	a2, 0 ! 737-737
	lw	a3, sp, 0 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	shadow_check_and_group.2081
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8159 ! 738-739
	li	a0, 4 ! 739-739
	lw	a1, sp, 12 ! 0-0
	lw	a2, sp, 0 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	shadow_check_one_or_group.2085
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	beq_cont.8160
beq_else.8159:
	li	a0, 1 ! 738-738
beq_cont.8160:
beq_cont.8158:
	j	beq_cont.8156
beq_else.8155:
	li	a0, 1 ! 738-738
beq_cont.8156:
beq_cont.8154:
	j	beq_cont.8152
beq_else.8151:
	li	a0, 1 ! 738-738
beq_cont.8152:
beq_cont.8150:
	li	a1, 0 ! 753-755
	bne	a0, a1, beq_else.8161 ! 753-755
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 755-755
	lw	a1, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	j	shadow_check_one_or_matrix.2089
beq_else.8161:
	li	a0, 1 ! 754-754
	ret ! 754-754
beq_else.8148:
	li	a5, min_caml_light ! 758-758
	sw	sp, a3, 12 ! 0-0
	sw	sp, a2, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	mv	a1, a5
	mv	a0, a4
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	solver.2066
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 761-761
	bne	a0, a1, beq_else.8162 ! 761-768
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 768-768
	lw	a1, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	j	shadow_check_one_or_matrix.2089
beq_else.8162:
	li	a0, l.7247 ! 762-762
	flw	fa0, a0, 0 ! 762-762
	li	a0, min_caml_solver_dist ! 762-762
	flw	fa1, a0, 0 ! 762-762
	flt.s	t0, fa0, fa1 ! 762-767
	bne	zero, t0, beq_else.8163 ! 762-767
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 4 ! 732-732
	li	a2, -1 ! 733-733
	bne	a1, a2, beq_else.8164 ! 733-740
	li	a0, 0 ! 734-734
	j	beq_cont.8165
beq_else.8164:
	li	a2, min_caml_and_net ! 736-736
	slli	a1, a1, 2 ! 736-736
	add	t0, a2, a1 ! 736-736
	lw	a1, t0, 0 ! 736-736
	li	a2, 0 ! 737-737
	lw	a3, sp, 0 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	shadow_check_and_group.2081
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8166 ! 738-739
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 8 ! 732-732
	li	a2, -1 ! 733-733
	bne	a1, a2, beq_else.8168 ! 733-740
	li	a0, 0 ! 734-734
	j	beq_cont.8169
beq_else.8168:
	li	a2, min_caml_and_net ! 736-736
	slli	a1, a1, 2 ! 736-736
	add	t0, a2, a1 ! 736-736
	lw	a1, t0, 0 ! 736-736
	li	a2, 0 ! 737-737
	lw	a3, sp, 0 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	shadow_check_and_group.2081
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8170 ! 738-739
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 12 ! 732-732
	li	a2, -1 ! 733-733
	bne	a1, a2, beq_else.8172 ! 733-740
	li	a0, 0 ! 734-734
	j	beq_cont.8173
beq_else.8172:
	li	a2, min_caml_and_net ! 736-736
	slli	a1, a1, 2 ! 736-736
	add	t0, a2, a1 ! 736-736
	lw	a1, t0, 0 ! 736-736
	li	a2, 0 ! 737-737
	lw	a3, sp, 0 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	shadow_check_and_group.2081
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 738-739
	bne	a0, a1, beq_else.8174 ! 738-739
	li	a0, 4 ! 739-739
	lw	a1, sp, 12 ! 0-0
	lw	a2, sp, 0 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	shadow_check_one_or_group.2085
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	beq_cont.8175
beq_else.8174:
	li	a0, 1 ! 738-738
beq_cont.8175:
beq_cont.8173:
	j	beq_cont.8171
beq_else.8170:
	li	a0, 1 ! 738-738
beq_cont.8171:
beq_cont.8169:
	j	beq_cont.8167
beq_else.8166:
	li	a0, 1 ! 738-738
beq_cont.8167:
beq_cont.8165:
	li	a1, 0 ! 764-766
	bne	a0, a1, beq_else.8176 ! 764-766
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 766-766
	lw	a1, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	j	shadow_check_one_or_matrix.2089
beq_else.8176:
	li	a0, 1 ! 765-765
	ret ! 765-765
beq_else.8163:
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 767-767
	lw	a1, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	j	shadow_check_one_or_matrix.2089
solve_each_element.2093:
	slli	a2, a0, 2 ! 778-778
	add	t0, a1, a2 ! 778-778
	lw	a2, t0, 0 ! 778-778
	li	a3, -1 ! 779-779
	bne	a2, a3, beq_else.8177 ! 779-816
	ret ! 779-779
beq_else.8177:
	li	a3, min_caml_vscan ! 781-781
	li	a4, min_caml_viewpoint ! 781-781
	sw	sp, a0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, a2, 8 ! 0-0
	mv	a1, a3
	mv	a0, a2
	mv	a2, a4
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	solver.2066
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 782-782
	bne	a0, a1, beq_else.8178 ! 782-812
	li	a0, min_caml_objects ! 811-811
	lw	a1, sp, 8 ! 0-0
	slli	a1, a1, 2 ! 811-811
	add	t0, a0, a1 ! 811-811
	lw	a0, t0, 0 ! 811-811
	lw	a0, a0, 24 ! 58-62
	li	a1, 0 ! 811-811
	bne	a0, a1, beq_else.8180 ! 811-811
	li	a0, min_caml_end_flag ! 811-811
	li	a1, 1 ! 811-811
	sw	a0, a1, 0 ! 811-811
	j	beq_cont.8181
beq_else.8180:
beq_cont.8181:
	j	beq_cont.8179
beq_else.8178:
	li	a1, min_caml_solver_dist ! 786-786
	flw	fa0, a1, 0 ! 786-786
	li	a1, l.7247 ! 787-787
	flw	fa1, a1, 0 ! 787-787
	flt.s	t0, fa0, fa1 ! 787-806
	bne	zero, t0, beq_else.8182 ! 787-806
	li	a1, min_caml_tmin ! 788-788
	flw	fa1, a1, 0 ! 788-788
	flt.s	t0, fa1, fa0 ! 788-805
	bne	zero, t0, beq_else.8184 ! 788-805
	li	a1, l.7219 ! 790-790
	flw	fa1, a1, 0 ! 790-790
	fadd.s	fa0, fa0, fa1, rne ! 790-790
	li	a1, min_caml_chkinside_p ! 791-791
	li	a2, min_caml_vscan ! 791-791
	flw	fa1, a2, 0 ! 791-791
	fmul.s	fa1, fa1, fa0, rne ! 791-791
	li	a2, min_caml_viewpoint ! 791-791
	flw	fa2, a2, 0 ! 791-791
	fadd.s	fa1, fa1, fa2, rne ! 791-791
	fsw	a1, fa1, 0 ! 791-791
	li	a1, min_caml_chkinside_p ! 792-792
	li	a2, min_caml_vscan ! 792-792
	flw	fa1, a2, 4 ! 792-792
	fmul.s	fa1, fa1, fa0, rne ! 792-792
	li	a2, min_caml_viewpoint ! 792-792
	flw	fa2, a2, 4 ! 792-792
	fadd.s	fa1, fa1, fa2, rne ! 792-792
	fsw	a1, fa1, 4 ! 792-792
	li	a1, min_caml_chkinside_p ! 793-793
	li	a2, min_caml_vscan ! 793-793
	flw	fa1, a2, 8 ! 793-793
	fmul.s	fa1, fa1, fa0, rne ! 793-793
	li	a2, min_caml_viewpoint ! 793-793
	flw	fa2, a2, 8 ! 793-793
	fadd.s	fa1, fa1, fa2, rne ! 793-793
	fsw	a1, fa1, 8 ! 793-793
	lw	a1, sp, 4 ! 0-0
	lw	a2, a1, 0 ! 682-682
	li	a3, -1 ! 683-683
	sw	sp, a0, 12 ! 0-0
	fsw	sp, fa0, 16 ! 0-0
	bne	a2, a3, beq_else.8186 ! 683-686
	li	a0, 1 ! 683-683
	j	beq_cont.8187
beq_else.8186:
	li	a3, min_caml_objects ! 684-684
	slli	a2, a2, 2 ! 684-684
	add	t0, a3, a2 ! 684-684
	lw	a2, t0, 0 ! 684-684
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	is_outside.2076
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8188 ! 684-685
	lw	a1, sp, 4 ! 0-0
	lw	a0, a1, 4 ! 682-682
	li	a2, -1 ! 683-683
	bne	a0, a2, beq_else.8190 ! 683-686
	li	a0, 1 ! 683-683
	j	beq_cont.8191
beq_else.8190:
	li	a2, min_caml_objects ! 684-684
	slli	a0, a0, 2 ! 684-684
	add	t0, a2, a0 ! 684-684
	lw	a0, t0, 0 ! 684-684
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	is_outside.2076
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8192 ! 684-685
	lw	a1, sp, 4 ! 0-0
	lw	a0, a1, 8 ! 682-682
	li	a2, -1 ! 683-683
	bne	a0, a2, beq_else.8194 ! 683-686
	li	a0, 1 ! 683-683
	j	beq_cont.8195
beq_else.8194:
	li	a2, min_caml_objects ! 684-684
	slli	a0, a0, 2 ! 684-684
	add	t0, a2, a0 ! 684-684
	lw	a0, t0, 0 ! 684-684
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	is_outside.2076
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 684-685
	bne	a0, a1, beq_else.8196 ! 684-685
	li	a0, 3 ! 685-685
	lw	a1, sp, 4 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	check_all_inside.2078
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	beq_cont.8197
beq_else.8196:
	li	a0, 0 ! 684-684
beq_cont.8197:
beq_cont.8195:
	j	beq_cont.8193
beq_else.8192:
	li	a0, 0 ! 684-684
beq_cont.8193:
beq_cont.8191:
	j	beq_cont.8189
beq_else.8188:
	li	a0, 0 ! 684-684
beq_cont.8189:
beq_cont.8187:
	li	a1, 0 ! 794-803
	bne	a0, a1, beq_else.8198 ! 794-803
	j	beq_cont.8199
beq_else.8198:
	li	a0, min_caml_tmin ! 796-796
	flw	fa0, sp, 16 ! 0-0
	fsw	a0, fa0, 0 ! 796-796
	li	a0, min_caml_crashed_point ! 797-797
	li	a1, min_caml_chkinside_p ! 797-797
	flw	fa0, a1, 0 ! 797-797
	fsw	a0, fa0, 0 ! 797-797
	li	a0, min_caml_crashed_point ! 798-798
	li	a1, min_caml_chkinside_p ! 798-798
	flw	fa0, a1, 4 ! 798-798
	fsw	a0, fa0, 4 ! 798-798
	li	a0, min_caml_crashed_point ! 799-799
	li	a1, min_caml_chkinside_p ! 799-799
	flw	fa0, a1, 8 ! 799-799
	fsw	a0, fa0, 8 ! 799-799
	li	a0, min_caml_intsec_rectside ! 800-800
	lw	a1, sp, 12 ! 0-0
	sw	a0, a1, 0 ! 800-800
	li	a0, min_caml_crashed_object ! 801-801
	lw	a1, sp, 8 ! 0-0
	sw	a0, a1, 0 ! 801-801
beq_cont.8199:
	j	beq_cont.8185
beq_else.8184:
beq_cont.8185:
	j	beq_cont.8183
beq_else.8182:
beq_cont.8183:
beq_cont.8179:
	li	a0, min_caml_end_flag ! 813-813
	lw	a0, a0, 0 ! 813-813
	li	a1, 0 ! 813-815
	bne	a0, a1, beq_else.8200 ! 813-815
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 814-814
	lw	a1, sp, 4 ! 0-0
	j	solve_each_element.2093
beq_else.8200:
	ret ! 815-815
solve_one_or_network.2096:
	slli	a2, a0, 2 ! 822-822
	add	t0, a1, a2 ! 822-822
	lw	a2, t0, 0 ! 822-822
	li	a3, -1 ! 823-823
	bne	a2, a3, beq_else.8201 ! 823-828
	ret ! 823-823
beq_else.8201:
	li	a3, min_caml_and_net ! 824-824
	slli	a2, a2, 2 ! 824-824
	add	t0, a3, a2 ! 824-824
	lw	a2, t0, 0 ! 824-824
	li	a3, min_caml_end_flag ! 825-825
	li	a4, 0 ! 825-825
	sw	a3, a4, 0 ! 825-825
	li	a3, 0 ! 826-826
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	mv	a1, a2
	mv	a0, a3
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	solve_each_element.2093
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0-0
	addi	a0, a0, 1 ! 827-827
	slli	a1, a0, 2 ! 822-822
	lw	a2, sp, 0 ! 0-0
	add	t0, a2, a1 ! 822-822
	lw	a1, t0, 0 ! 822-822
	li	a3, -1 ! 823-823
	bne	a1, a3, beq_else.8202 ! 823-828
	ret ! 823-823
beq_else.8202:
	li	a3, min_caml_and_net ! 824-824
	slli	a1, a1, 2 ! 824-824
	add	t0, a3, a1 ! 824-824
	lw	a1, t0, 0 ! 824-824
	li	a3, min_caml_end_flag ! 825-825
	li	a4, 0 ! 825-825
	sw	a3, a4, 0 ! 825-825
	li	a3, 0 ! 826-826
	sw	sp, a0, 8 ! 0-0
	mv	a0, a3
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	solve_each_element.2093
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 827-827
	lw	a1, sp, 0 ! 0-0
	j	solve_one_or_network.2096
trace_or_matrix.2099:
	slli	a2, a0, 2 ! 834-834
	add	t0, a1, a2 ! 834-834
	lw	a2, t0, 0 ! 834-834
	lw	a3, a2, 0 ! 835-835
	li	a4, -1 ! 836-836
	bne	a3, a4, beq_else.8203 ! 836-853
	ret ! 837-837
beq_else.8203:
	li	a4, 99 ! 839-839
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	bne	a3, a4, beq_else.8204 ! 839-851
	lw	a3, a2, 4 ! 822-822
	li	a4, -1 ! 823-823
	bne	a3, a4, beq_else.8206 ! 823-828
	j	beq_cont.8207
beq_else.8206:
	li	a4, min_caml_and_net ! 824-824
	slli	a3, a3, 2 ! 824-824
	add	t0, a4, a3 ! 824-824
	lw	a3, t0, 0 ! 824-824
	li	a4, min_caml_end_flag ! 825-825
	li	a5, 0 ! 825-825
	sw	a4, a5, 0 ! 825-825
	li	a4, 0 ! 826-826
	sw	sp, a2, 8 ! 0-0
	mv	a1, a3
	mv	a0, a4
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	solve_each_element.2093
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, 2 ! 827-827
	lw	a1, sp, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	solve_one_or_network.2096
	addi	sp, sp, -16
	lw	ra, sp, 12
beq_cont.8207:
	j	beq_cont.8205
beq_else.8204:
	li	a4, min_caml_vscan ! 844-844
	li	a5, min_caml_viewpoint ! 844-844
	sw	sp, a2, 8 ! 0-0
	mv	a2, a5
	mv	a1, a4
	mv	a0, a3
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	solver.2066
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 845-845
	bne	a0, a1, beq_else.8208 ! 845-850
	j	beq_cont.8209
beq_else.8208:
	li	a0, min_caml_solver_dist ! 846-846
	flw	fa0, a0, 0 ! 846-846
	li	a0, min_caml_tmin ! 847-847
	flw	fa1, a0, 0 ! 847-847
	flt.s	t0, fa1, fa0 ! 847-849
	bne	zero, t0, beq_else.8210 ! 847-849
	lw	a0, sp, 8 ! 0-0
	lw	a1, a0, 4 ! 822-822
	li	a2, -1 ! 823-823
	bne	a1, a2, beq_else.8212 ! 823-828
	j	beq_cont.8213
beq_else.8212:
	li	a2, min_caml_and_net ! 824-824
	slli	a1, a1, 2 ! 824-824
	add	t0, a2, a1 ! 824-824
	lw	a1, t0, 0 ! 824-824
	li	a2, min_caml_end_flag ! 825-825
	li	a3, 0 ! 825-825
	sw	a2, a3, 0 ! 825-825
	li	a2, 0 ! 826-826
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	solve_each_element.2093
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, 2 ! 827-827
	lw	a1, sp, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	solve_one_or_network.2096
	addi	sp, sp, -16
	lw	ra, sp, 12
beq_cont.8213:
	j	beq_cont.8211
beq_else.8210:
beq_cont.8211:
beq_cont.8209:
beq_cont.8205:
	lw	a0, sp, 4 ! 0-0
	addi	a0, a0, 1 ! 852-852
	lw	a1, sp, 0 ! 0-0
	j	trace_or_matrix.2099
get_nvector_rect.2105:
	li	a0, min_caml_intsec_rectside ! 884-884
	lw	a0, a0, 0 ! 884-884
	li	a1, 1 ! 886-886
	bne	a0, a1, beq_else.8214 ! 886-904
	li	a0, min_caml_nvector ! 888-888
	li	a1, min_caml_vscan ! 888-888
	flw	fa0, a1, 0 ! 888-888
	li	a1, l.6856 ! 225-225
	flw	fa1, a1, 0 ! 225-225
	flt.s	t0, fa0, fa1 ! 225-226
	bne	zero, t0, beq_else.8215 ! 225-226
	li	a1, l.6895 ! 225-225
	flw	fa0, a1, 0 ! 225-225
	j	beq_cont.8216
beq_else.8215:
	li	a1, l.6897 ! 226-226
	flw	fa0, a1, 0 ! 226-226
beq_cont.8216:
	fneg.s	fa0, fa0 ! 888-888
	fsw	a0, fa0, 0 ! 888-888
	li	a0, min_caml_nvector ! 889-889
	li	a1, l.6856 ! 889-889
	flw	fa0, a1, 0 ! 889-889
	fsw	a0, fa0, 4 ! 889-889
	li	a0, min_caml_nvector ! 890-890
	li	a1, l.6856 ! 890-890
	flw	fa0, a1, 0 ! 890-890
	fsw	a0, fa0, 8 ! 890-890
	ret ! 890-890
beq_else.8214:
	li	a1, 2 ! 892-892
	bne	a0, a1, beq_else.8217 ! 892-904
	li	a0, min_caml_nvector ! 894-894
	li	a1, l.6856 ! 894-894
	flw	fa0, a1, 0 ! 894-894
	fsw	a0, fa0, 0 ! 894-894
	li	a0, min_caml_nvector ! 895-895
	li	a1, min_caml_vscan ! 895-895
	flw	fa0, a1, 4 ! 895-895
	li	a1, l.6856 ! 225-225
	flw	fa1, a1, 0 ! 225-225
	flt.s	t0, fa0, fa1 ! 225-226
	bne	zero, t0, beq_else.8218 ! 225-226
	li	a1, l.6895 ! 225-225
	flw	fa0, a1, 0 ! 225-225
	j	beq_cont.8219
beq_else.8218:
	li	a1, l.6897 ! 226-226
	flw	fa0, a1, 0 ! 226-226
beq_cont.8219:
	fneg.s	fa0, fa0 ! 895-895
	fsw	a0, fa0, 4 ! 895-895
	li	a0, min_caml_nvector ! 896-896
	li	a1, l.6856 ! 896-896
	flw	fa0, a1, 0 ! 896-896
	fsw	a0, fa0, 8 ! 896-896
	ret ! 896-896
beq_else.8217:
	li	a1, 3 ! 898-898
	bne	a0, a1, beq_else.8220 ! 898-904
	li	a0, min_caml_nvector ! 900-900
	li	a1, l.6856 ! 900-900
	flw	fa0, a1, 0 ! 900-900
	fsw	a0, fa0, 0 ! 900-900
	li	a0, min_caml_nvector ! 901-901
	li	a1, l.6856 ! 901-901
	flw	fa0, a1, 0 ! 901-901
	fsw	a0, fa0, 4 ! 901-901
	li	a0, min_caml_nvector ! 902-902
	li	a1, min_caml_vscan ! 902-902
	flw	fa0, a1, 8 ! 902-902
	li	a1, l.6856 ! 225-225
	flw	fa1, a1, 0 ! 225-225
	flt.s	t0, fa0, fa1 ! 225-226
	bne	zero, t0, beq_else.8221 ! 225-226
	li	a1, l.6895 ! 225-225
	flw	fa0, a1, 0 ! 225-225
	j	beq_cont.8222
beq_else.8221:
	li	a1, l.6897 ! 226-226
	flw	fa0, a1, 0 ! 226-226
beq_cont.8222:
	fneg.s	fa0, fa0 ! 902-902
	fsw	a0, fa0, 8 ! 902-902
	ret ! 902-902
beq_else.8220:
	ret ! 904-904
get_nvector_second_norot.2109:
	li	a2, min_caml_nvector ! 918-918
	flw	fa0, a1, 0 ! 918-918
	lw	a3, a0, 20 ! 106-111
	flw	fa1, a3, 0 ! 111-111
	fsub.s	fa0, fa0, fa1, rne ! 918-918
	lw	a3, a0, 16 ! 76-81
	flw	fa1, a3, 0 ! 81-81
	fmul.s	fa0, fa0, fa1, rne ! 918-918
	fsw	a2, fa0, 0 ! 918-918
	li	a2, min_caml_nvector ! 919-919
	flw	fa0, a1, 4 ! 919-919
	lw	a3, a0, 20 ! 116-121
	flw	fa1, a3, 4 ! 121-121
	fsub.s	fa0, fa0, fa1, rne ! 919-919
	lw	a3, a0, 16 ! 86-91
	flw	fa1, a3, 4 ! 91-91
	fmul.s	fa0, fa0, fa1, rne ! 919-919
	fsw	a2, fa0, 4 ! 919-919
	li	a2, min_caml_nvector ! 920-920
	flw	fa0, a1, 8 ! 920-920
	lw	a1, a0, 20 ! 126-131
	flw	fa1, a1, 8 ! 131-131
	fsub.s	fa0, fa0, fa1, rne ! 920-920
	lw	a1, a0, 16 ! 96-101
	flw	fa1, a1, 8 ! 101-101
	fmul.s	fa0, fa0, fa1, rne ! 920-920
	fsw	a2, fa0, 8 ! 920-920
	li	a1, min_caml_nvector ! 921-921
	lw	a0, a0, 24 ! 58-62
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	j	normalize_vector.2022
get_nvector_second_rot.2112:
	li	a2, min_caml_nvector_w ! 926-926
	flw	fa0, a1, 0 ! 926-926
	lw	a3, a0, 20 ! 106-111
	flw	fa1, a3, 0 ! 111-111
	fsub.s	fa0, fa0, fa1, rne ! 926-926
	fsw	a2, fa0, 0 ! 926-926
	li	a2, min_caml_nvector_w ! 927-927
	flw	fa0, a1, 4 ! 927-927
	lw	a3, a0, 20 ! 116-121
	flw	fa1, a3, 4 ! 121-121
	fsub.s	fa0, fa0, fa1, rne ! 927-927
	fsw	a2, fa0, 4 ! 927-927
	li	a2, min_caml_nvector_w ! 928-928
	flw	fa0, a1, 8 ! 928-928
	lw	a1, a0, 20 ! 126-131
	flw	fa1, a1, 8 ! 131-131
	fsub.s	fa0, fa0, fa1, rne ! 928-928
	fsw	a2, fa0, 8 ! 928-928
	li	a1, min_caml_nvector ! 929-929
	li	a2, min_caml_nvector_w ! 929-929
	flw	fa0, a2, 0 ! 929-929
	lw	a2, a0, 16 ! 76-81
	flw	fa1, a2, 0 ! 81-81
	fmul.s	fa0, fa0, fa1, rne ! 929-929
	li	a2, min_caml_nvector_w ! 930-930
	flw	fa1, a2, 4 ! 930-930
	lw	a2, a0, 36 ! 206-211
	flw	fa2, a2, 8 ! 211-211
	fmul.s	fa1, fa1, fa2, rne ! 930-930
	li	a2, min_caml_nvector_w ! 931-931
	flw	fa2, a2, 8 ! 931-931
	lw	a2, a0, 36 ! 196-201
	flw	fa3, a2, 4 ! 201-201
	fmul.s	fa2, fa2, fa3, rne ! 931-931
	fadd.s	fa1, fa1, fa2, rne ! 930-931
	li	a2, l.6980 ! 20-20
	flw	fa2, a2, 0 ! 20-20
	fdiv.s	fa1, fa1, fa2, rne ! 20-20
	fadd.s	fa0, fa0, fa1, rne ! 929-931
	fsw	a1, fa0, 0 ! 929-931
	li	a1, min_caml_nvector ! 932-932
	li	a2, min_caml_nvector_w ! 932-932
	flw	fa0, a2, 4 ! 932-932
	lw	a2, a0, 16 ! 86-91
	flw	fa1, a2, 4 ! 91-91
	fmul.s	fa0, fa0, fa1, rne ! 932-932
	li	a2, min_caml_nvector_w ! 933-933
	flw	fa1, a2, 0 ! 933-933
	lw	a2, a0, 36 ! 206-211
	flw	fa2, a2, 8 ! 211-211
	fmul.s	fa1, fa1, fa2, rne ! 933-933
	li	a2, min_caml_nvector_w ! 934-934
	flw	fa2, a2, 8 ! 934-934
	lw	a2, a0, 36 ! 186-191
	flw	fa3, a2, 0 ! 191-191
	fmul.s	fa2, fa2, fa3, rne ! 934-934
	fadd.s	fa1, fa1, fa2, rne ! 933-934
	li	a2, l.6980 ! 20-20
	flw	fa2, a2, 0 ! 20-20
	fdiv.s	fa1, fa1, fa2, rne ! 20-20
	fadd.s	fa0, fa0, fa1, rne ! 932-934
	fsw	a1, fa0, 4 ! 932-934
	li	a1, min_caml_nvector ! 935-935
	li	a2, min_caml_nvector_w ! 935-935
	flw	fa0, a2, 8 ! 935-935
	lw	a2, a0, 16 ! 96-101
	flw	fa1, a2, 8 ! 101-101
	fmul.s	fa0, fa0, fa1, rne ! 935-935
	li	a2, min_caml_nvector_w ! 936-936
	flw	fa1, a2, 0 ! 936-936
	lw	a2, a0, 36 ! 196-201
	flw	fa2, a2, 4 ! 201-201
	fmul.s	fa1, fa1, fa2, rne ! 936-936
	li	a2, min_caml_nvector_w ! 937-937
	flw	fa2, a2, 4 ! 937-937
	lw	a2, a0, 36 ! 186-191
	flw	fa3, a2, 0 ! 191-191
	fmul.s	fa2, fa2, fa3, rne ! 937-937
	fadd.s	fa1, fa1, fa2, rne ! 936-937
	li	a2, l.6980 ! 20-20
	flw	fa2, a2, 0 ! 20-20
	fdiv.s	fa1, fa1, fa2, rne ! 20-20
	fadd.s	fa0, fa0, fa1, rne ! 935-937
	fsw	a1, fa0, 8 ! 935-937
	li	a1, min_caml_nvector ! 938-938
	lw	a0, a0, 24 ! 58-62
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	j	normalize_vector.2022
utexture.2118:
	lw	a2, a0, 0 ! 28-33
	li	a3, min_caml_texture_color ! 961-961
	lw	a4, a0, 32 ! 156-161
	flw	fa0, a4, 0 ! 161-161
	fsw	a3, fa0, 0 ! 961-961
	li	a3, min_caml_texture_color ! 962-962
	lw	a4, a0, 32 ! 166-171
	flw	fa0, a4, 4 ! 171-171
	fsw	a3, fa0, 4 ! 962-962
	li	a3, min_caml_texture_color ! 963-963
	lw	a4, a0, 32 ! 176-181
	flw	fa0, a4, 8 ! 181-181
	fsw	a3, fa0, 8 ! 963-963
	li	a3, 1 ! 964-964
	bne	a2, a3, beq_else.8223 ! 964-1027
	flw	fa0, a1, 0 ! 967-967
	lw	a2, a0, 20 ! 106-111
	flw	fa1, a2, 0 ! 111-111
	fsub.s	fa0, fa0, fa1, rne ! 967-967
	li	a2, l.7441 ! 969-969
	flw	fa1, a2, 0 ! 969-969
	fmul.s	fa1, fa0, fa1, rne ! 969-969
	sw	sp, a0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	fsw	sp, fa0, 8 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_floor
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, l.7443 ! 969-969
	flw	fa1, a0, 0 ! 969-969
	fmul.s	fa0, fa0, fa1, rne ! 969-969
	li	a0, l.7421 ! 970-970
	flw	fa1, a0, 0 ! 970-970
	flw	fa2, sp, 8 ! 0-0
	fsub.s	fa0, fa2, fa0, rne ! 970-970
	flt.s	t0, fa1, fa0 ! 970-970
	bne	zero, t0, beq_else.8224 ! 970-970
	li	a0, 1 ! 970-970
	j	beq_cont.8225
beq_else.8224:
	li	a0, 0 ! 970-970
beq_cont.8225:
	lw	a1, sp, 4 ! 0-0
	flw	fa0, a1, 8 ! 972-972
	lw	a1, sp, 0 ! 0-0
	lw	a1, a1, 20 ! 126-131
	flw	fa1, a1, 8 ! 131-131
	fsub.s	fa0, fa0, fa1, rne ! 972-972
	li	a1, l.7441 ! 974-974
	flw	fa1, a1, 0 ! 974-974
	fmul.s	fa1, fa0, fa1, rne ! 974-974
	sw	sp, a0, 12 ! 0-0
	fsw	sp, fa0, 16 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_floor
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, l.7443 ! 974-974
	flw	fa1, a0, 0 ! 974-974
	fmul.s	fa0, fa0, fa1, rne ! 974-974
	li	a0, l.7421 ! 975-975
	flw	fa1, a0, 0 ! 975-975
	flw	fa2, sp, 16 ! 0-0
	fsub.s	fa0, fa2, fa0, rne ! 975-975
	flt.s	t0, fa1, fa0 ! 975-975
	bne	zero, t0, beq_else.8226 ! 975-975
	li	a0, 1 ! 975-975
	j	beq_cont.8227
beq_else.8226:
	li	a0, 0 ! 975-975
beq_cont.8227:
	li	a1, min_caml_texture_color ! 977-977
	li	a2, 0 ! 978-980
	lw	a3, sp, 12 ! 0-0
	bne	a3, a2, beq_else.8228 ! 978-980
	li	a2, 0 ! 980-980
	bne	a0, a2, beq_else.8230 ! 980-980
	li	a0, l.7425 ! 980-980
	flw	fa0, a0, 0 ! 980-980
	j	beq_cont.8231
beq_else.8230:
	li	a0, l.6856 ! 980-980
	flw	fa0, a0, 0 ! 980-980
beq_cont.8231:
	j	beq_cont.8229
beq_else.8228:
	li	a2, 0 ! 979-979
	bne	a0, a2, beq_else.8232 ! 979-979
	li	a0, l.6856 ! 979-979
	flw	fa0, a0, 0 ! 979-979
	j	beq_cont.8233
beq_else.8232:
	li	a0, l.7425 ! 979-979
	flw	fa0, a0, 0 ! 979-979
beq_cont.8233:
beq_cont.8229:
	fsw	a1, fa0, 4 ! 977-980
	ret ! 977-980
beq_else.8223:
	li	a3, 2 ! 982-982
	bne	a2, a3, beq_else.8234 ! 982-1027
	flw	fa0, a1, 4 ! 985-985
	li	a0, l.7432 ! 985-985
	flw	fa1, a0, 0 ! 985-985
	fmul.s	fa0, fa0, fa1, rne ! 985-985
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_sin
	addi	sp, sp, -24
	lw	ra, sp, 20
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	li	a0, min_caml_texture_color ! 986-986
	li	a1, l.7425 ! 986-986
	flw	fa1, a1, 0 ! 986-986
	fmul.s	fa1, fa1, fa0, rne ! 986-986
	fsw	a0, fa1, 0 ! 986-986
	li	a0, min_caml_texture_color ! 987-987
	li	a1, l.7425 ! 987-987
	flw	fa1, a1, 0 ! 987-987
	li	a1, l.6895 ! 987-987
	flw	fa2, a1, 0 ! 987-987
	fsub.s	fa0, fa2, fa0, rne ! 987-987
	fmul.s	fa0, fa1, fa0, rne ! 987-987
	fsw	a0, fa0, 4 ! 987-987
	ret ! 987-987
beq_else.8234:
	li	a3, 3 ! 989-989
	bne	a2, a3, beq_else.8235 ! 989-1027
	flw	fa0, a1, 0 ! 992-992
	lw	a2, a0, 20 ! 106-111
	flw	fa1, a2, 0 ! 111-111
	fsub.s	fa0, fa0, fa1, rne ! 992-992
	flw	fa1, a1, 8 ! 993-993
	lw	a0, a0, 20 ! 126-131
	flw	fa2, a0, 8 ! 131-131
	fsub.s	fa1, fa1, fa2, rne ! 993-993
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	fmul.s	fa1, fa1, fa1, rne ! 17-17
	fadd.s	fa0, fa0, fa1, rne ! 994-994
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_sqrt
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, l.7421 ! 994-994
	flw	fa1, a0, 0 ! 994-994
	fdiv.s	fa0, fa0, fa1, rne ! 994-994
	fsw	sp, fa0, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_floor
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 20 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 995-995
	li	a0, l.7423 ! 995-995
	flw	fa1, a0, 0 ! 995-995
	fmul.s	fa0, fa0, fa1, rne ! 995-995
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_cos
	addi	sp, sp, -28
	lw	ra, sp, 24
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	li	a0, min_caml_texture_color ! 997-997
	li	a1, l.7425 ! 997-997
	flw	fa1, a1, 0 ! 997-997
	fmul.s	fa1, fa0, fa1, rne ! 997-997
	fsw	a0, fa1, 4 ! 997-997
	li	a0, min_caml_texture_color ! 998-998
	li	a1, l.6895 ! 998-998
	flw	fa1, a1, 0 ! 998-998
	fsub.s	fa0, fa1, fa0, rne ! 998-998
	li	a1, l.7425 ! 998-998
	flw	fa1, a1, 0 ! 998-998
	fmul.s	fa0, fa0, fa1, rne ! 998-998
	fsw	a0, fa0, 8 ! 998-998
	ret ! 998-998
beq_else.8235:
	li	a3, 4 ! 1000-1000
	bne	a2, a3, beq_else.8236 ! 1000-1027
	flw	fa0, a1, 0 ! 1002-1002
	lw	a2, a0, 20 ! 106-111
	flw	fa1, a2, 0 ! 111-111
	fsub.s	fa0, fa0, fa1, rne ! 1002-1002
	lw	a2, a0, 16 ! 76-81
	flw	fa1, a2, 0 ! 81-81
	sw	sp, a0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	fsw	sp, fa0, 24 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_sqrt
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1002-1002
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 8 ! 1003-1003
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 20 ! 126-131
	flw	fa2, a2, 8 ! 131-131
	fsub.s	fa1, fa1, fa2, rne ! 1003-1003
	lw	a2, a1, 16 ! 96-101
	flw	fa2, a2, 8 ! 101-101
	fsw	sp, fa0, 28 ! 0-0
	fsw	sp, fa1, 32 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_sqrt
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa1, sp, 32 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1003-1003
	flw	fa1, sp, 28 ! 0-0
	fmul.s	fa2, fa1, fa1, rne ! 17-17
	fmul.s	fa3, fa0, fa0, rne ! 17-17
	fadd.s	fa2, fa2, fa3, rne ! 1004-1004
	fsw	sp, fa0, 36 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sqrt
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a0, l.7395 ! 1006-1006
	flw	fa1, a0, 0 ! 1006-1006
	flw	fa2, sp, 28 ! 0-0
	fsw	sp, fa0, 40 ! 0-0
	fsw	sp, fa1, 44 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_abs_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 44 ! 0-0
	flt.s	t0, fa1, fa0 ! 1006-1011
	bne	zero, t0, beq_else.8237 ! 1006-1011
	li	a0, l.7397 ! 1007-1007
	flw	fa0, a0, 0 ! 1007-1007
	j	beq_cont.8238
beq_else.8237:
	flw	fa0, sp, 28 ! 0-0
	flw	fa1, sp, 36 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1009-1009
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_abs_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_atan
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.7399 ! 1011-1011
	flw	fa1, a0, 0 ! 1011-1011
	fmul.s	fa0, fa0, fa1, rne ! 1011-1011
beq_cont.8238:
	fsw	sp, fa0, 48 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_floor
	addi	sp, sp, -56
	lw	ra, sp, 52
	flw	fa1, sp, 48 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1013-1013
	lw	a0, sp, 4 ! 0-0
	flw	fa2, a0, 4 ! 1015-1015
	lw	a0, sp, 0 ! 0-0
	lw	a1, a0, 20 ! 116-121
	flw	fa3, a1, 4 ! 121-121
	fsub.s	fa2, fa2, fa3, rne ! 1015-1015
	lw	a0, a0, 16 ! 86-91
	flw	fa3, a0, 4 ! 91-91
	fsw	sp, fa0, 52 ! 0-0
	fsw	sp, fa2, 56 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_sqrt
	addi	sp, sp, -64
	lw	ra, sp, 60
	flw	fa1, sp, 56 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1015-1015
	li	a0, l.7395 ! 1017-1017
	flw	fa1, a0, 0 ! 1017-1017
	flw	fa2, sp, 48 ! 0-0
	fsw	sp, fa0, 60 ! 0-0
	fsw	sp, fa1, 64 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_abs_float
	addi	sp, sp, -72
	lw	ra, sp, 68
	flw	fa1, sp, 64 ! 0-0
	flt.s	t0, fa1, fa0 ! 1017-1021
	bne	zero, t0, beq_else.8239 ! 1017-1021
	li	a0, l.7397 ! 1018-1018
	flw	fa0, a0, 0 ! 1018-1018
	j	beq_cont.8240
beq_else.8239:
	flw	fa0, sp, 40 ! 0-0
	flw	fa1, sp, 60 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1020-1020
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_abs_float
	addi	sp, sp, -72
	lw	ra, sp, 68
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_atan
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a0, l.7399 ! 1021-1021
	flw	fa1, a0, 0 ! 1021-1021
	fmul.s	fa0, fa0, fa1, rne ! 1021-1021
beq_cont.8240:
	fsw	sp, fa0, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_floor
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 68 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1023-1023
	li	a0, l.7407 ! 1024-1024
	flw	fa1, a0, 0 ! 1024-1024
	li	a0, l.7409 ! 1024-1024
	flw	fa2, a0, 0 ! 1024-1024
	flw	fa3, sp, 52 ! 0-0
	fsub.s	fa2, fa2, fa3, rne ! 1024-1024
	fmul.s	fa2, fa2, fa2, rne ! 17-17
	fsub.s	fa1, fa1, fa2, rne ! 1024-1024
	li	a0, l.7409 ! 1024-1024
	flw	fa2, a0, 0 ! 1024-1024
	fsub.s	fa0, fa2, fa0, rne ! 1024-1024
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	fsub.s	fa0, fa1, fa0, rne ! 1024-1024
	li	a0, min_caml_texture_color ! 1025-1025
	li	a1, l.6856 ! 1025-1025
	flw	fa1, a1, 0 ! 1025-1025
	flt.s	t0, fa0, fa1 ! 1025-1025
	bne	zero, t0, beq_else.8241 ! 1025-1025
	li	a1, l.7413 ! 1025-1025
	flw	fa1, a1, 0 ! 1025-1025
	fmul.s	fa0, fa0, fa1, rne ! 1025-1025
	j	beq_cont.8242
beq_else.8241:
	li	a1, l.6856 ! 1025-1025
	flw	fa0, a1, 0 ! 1025-1025
beq_cont.8242:
	fsw	a0, fa0, 8 ! 1025-1025
	ret ! 1025-1025
beq_else.8236:
	ret ! 1027-1027
raytracing.2128:
	li	a1, min_caml_tmin ! 863-863
	li	a2, l.7456 ! 863-863
	flw	fa1, a2, 0 ! 863-863
	fsw	a1, fa1, 0 ! 863-863
	li	a1, 0 ! 864-864
	li	a2, min_caml_or_net ! 864-864
	lw	a2, a2, 0 ! 864-864
	fsw	sp, fa0, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	trace_or_matrix.2099
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, min_caml_tmin ! 865-865
	flw	fa0, a0, 0 ! 865-865
	li	a0, l.7247 ! 866-866
	flw	fa1, a0, 0 ! 866-866
	flt.s	t0, fa0, fa1 ! 866-870
	bne	zero, t0, beq_else.8243 ! 866-870
	li	a0, l.7462 ! 867-867
	flw	fa1, a0, 0 ! 867-867
	flt.s	t0, fa1, fa0 ! 867-869
	bne	zero, t0, beq_else.8245 ! 867-869
	li	a0, 1 ! 868-868
	j	beq_cont.8246
beq_else.8245:
	li	a0, 0 ! 869-869
beq_cont.8246:
	j	beq_cont.8244
beq_else.8243:
	li	a0, 0 ! 870-870
beq_cont.8244:
	li	a1, 0 ! 1056-1072
	bne	a0, a1, beq_else.8247 ! 1056-1072
	li	a1, 0 ! 1057-1057
	lw	a2, sp, 4 ! 0-0
	bne	a2, a1, beq_else.8249 ! 1057-1071
	j	beq_cont.8250
beq_else.8249:
	li	a1, min_caml_vscan ! 1059-1059
	li	a3, min_caml_light ! 1059-1059
	flw	fa0, a1, 0 ! 1039-1039
	flw	fa1, a3, 0 ! 1039-1039
	fmul.s	fa0, fa0, fa1, rne ! 1039-1039
	flw	fa1, a1, 4 ! 1039-1039
	flw	fa2, a3, 4 ! 1039-1039
	fmul.s	fa1, fa1, fa2, rne ! 1039-1039
	fadd.s	fa0, fa0, fa1, rne ! 1039-1039
	flw	fa1, a1, 8 ! 1039-1039
	flw	fa2, a3, 8 ! 1039-1039
	fmul.s	fa1, fa1, fa2, rne ! 1039-1039
	fadd.s	fa0, fa0, fa1, rne ! 1039-1039
	fneg.s	fa0, fa0 ! 1059-1059
	li	a1, l.6856 ! 1061-1061
	flw	fa1, a1, 0 ! 1061-1061
	flt.s	t0, fa0, fa1 ! 1061-1069
	bne	zero, t0, beq_else.8251 ! 1061-1069
	fmul.s	fa1, fa0, fa0, rne ! 17-17
	fmul.s	fa0, fa1, fa0, rne ! 1064-1064
	flw	fa1, sp, 0 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1064-1064
	li	a1, min_caml_beam ! 1064-1064
	flw	fa2, a1, 0 ! 1064-1064
	fmul.s	fa0, fa0, fa2, rne ! 1064-1064
	li	a1, min_caml_rgb ! 1065-1065
	li	a3, min_caml_rgb ! 1065-1065
	flw	fa2, a3, 0 ! 1065-1065
	fadd.s	fa2, fa2, fa0, rne ! 1065-1065
	fsw	a1, fa2, 0 ! 1065-1065
	li	a1, min_caml_rgb ! 1066-1066
	li	a3, min_caml_rgb ! 1066-1066
	flw	fa2, a3, 4 ! 1066-1066
	fadd.s	fa2, fa2, fa0, rne ! 1066-1066
	fsw	a1, fa2, 4 ! 1066-1066
	li	a1, min_caml_rgb ! 1067-1067
	li	a3, min_caml_rgb ! 1067-1067
	flw	fa2, a3, 8 ! 1067-1067
	fadd.s	fa0, fa2, fa0, rne ! 1067-1067
	fsw	a1, fa0, 8 ! 1067-1067
	j	beq_cont.8252
beq_else.8251:
beq_cont.8252:
beq_cont.8250:
	j	beq_cont.8248
beq_else.8247:
beq_cont.8248:
	li	a1, 0 ! 1074-1134
	bne	a0, a1, beq_else.8253 ! 1074-1134
	ret ! 1134-1134
beq_else.8253:
	li	a0, min_caml_objects ! 1078-1078
	li	a1, min_caml_crashed_object ! 1078-1078
	lw	a1, a1, 0 ! 1078-1078
	slli	a1, a1, 2 ! 1078-1078
	add	t0, a0, a1 ! 1078-1078
	lw	a0, t0, 0 ! 1078-1078
	li	a1, min_caml_crashed_point ! 1079-1079
	lw	a2, a0, 4 ! 38-43
	li	a3, 1 ! 944-944
	sw	sp, a0, 8 ! 0-0
	bne	a2, a3, beq_else.8254 ! 944-952
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	get_nvector_rect.2105
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.8255
beq_else.8254:
	li	a3, 2 ! 946-946
	bne	a2, a3, beq_else.8256 ! 946-952
	li	a1, min_caml_nvector ! 910-910
	lw	a2, a0, 16 ! 76-81
	flw	fa0, a2, 0 ! 81-81
	fneg.s	fa0, fa0 ! 910-910
	fsw	a1, fa0, 0 ! 910-910
	li	a1, min_caml_nvector ! 911-911
	lw	a2, a0, 16 ! 86-91
	flw	fa0, a2, 4 ! 91-91
	fneg.s	fa0, fa0 ! 911-911
	fsw	a1, fa0, 4 ! 911-911
	li	a1, min_caml_nvector ! 912-912
	lw	a2, a0, 16 ! 96-101
	flw	fa0, a2, 8 ! 101-101
	fneg.s	fa0, fa0 ! 912-912
	fsw	a1, fa0, 8 ! 912-912
	j	beq_cont.8257
beq_else.8256:
	lw	a2, a0, 12 ! 67-71
	li	a3, 0 ! 949-949
	bne	a2, a3, beq_else.8258 ! 949-952
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	get_nvector_second_norot.2109
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.8259
beq_else.8258:
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	get_nvector_second_rot.2112
	addi	sp, sp, -16
	lw	ra, sp, 12
beq_cont.8259:
beq_cont.8257:
beq_cont.8255:
	li	a0, 0 ! 1081-1081
	li	a1, min_caml_or_net ! 1081-1081
	lw	a1, a1, 0 ! 1081-1081
	li	a2, min_caml_crashed_point ! 1081-1081
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	shadow_check_one_or_matrix.2089
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1081-1088
	bne	a0, a1, beq_else.8260 ! 1081-1088
	li	a0, min_caml_nvector ! 1085-1085
	li	a1, min_caml_light ! 1085-1085
	flw	fa0, a0, 0 ! 1039-1039
	flw	fa1, a1, 0 ! 1039-1039
	fmul.s	fa0, fa0, fa1, rne ! 1039-1039
	flw	fa1, a0, 4 ! 1039-1039
	flw	fa2, a1, 4 ! 1039-1039
	fmul.s	fa1, fa1, fa2, rne ! 1039-1039
	fadd.s	fa0, fa0, fa1, rne ! 1039-1039
	flw	fa1, a0, 8 ! 1039-1039
	flw	fa2, a1, 8 ! 1039-1039
	fmul.s	fa1, fa1, fa2, rne ! 1039-1039
	fadd.s	fa0, fa0, fa1, rne ! 1039-1039
	fneg.s	fa0, fa0 ! 1085-1085
	li	a0, l.6856 ! 1086-1086
	flw	fa1, a0, 0 ! 1086-1086
	flt.s	t0, fa1, fa0 ! 1086-1086
	bne	zero, t0, beq_else.8262 ! 1086-1086
	li	a0, l.7495 ! 1086-1086
	flw	fa0, a0, 0 ! 1086-1086
	j	beq_cont.8263
beq_else.8262:
	li	a0, l.7495 ! 1086-1086
	flw	fa1, a0, 0 ! 1086-1086
	fadd.s	fa0, fa0, fa1, rne ! 1086-1086
beq_cont.8263:
	flw	fa1, sp, 0 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1087-1087
	lw	a0, sp, 8 ! 0-0
	lw	a1, a0, 28 ! 136-141
	flw	fa2, a1, 0 ! 141-141
	fmul.s	fa0, fa0, fa2, rne ! 1087-1087
	j	beq_cont.8261
beq_else.8260:
	li	a0, l.6856 ! 1083-1083
	flw	fa0, a0, 0 ! 1083-1083
beq_cont.8261:
	li	a1, min_caml_crashed_point ! 1090-1090
	lw	a0, sp, 8 ! 0-0
	fsw	sp, fa0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	utexture.2118
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a0, min_caml_rgb ! 1091-1091
	li	a1, min_caml_texture_color ! 1091-1091
	flw	fa0, a0, 0 ! 1045-1045
	flw	fa1, a1, 0 ! 1045-1045
	flw	fa2, sp, 12 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 1045-1045
	fadd.s	fa0, fa0, fa1, rne ! 1045-1045
	fsw	a0, fa0, 0 ! 1045-1045
	flw	fa0, a0, 4 ! 1046-1046
	flw	fa1, a1, 4 ! 1046-1046
	fmul.s	fa1, fa2, fa1, rne ! 1046-1046
	fadd.s	fa0, fa0, fa1, rne ! 1046-1046
	fsw	a0, fa0, 4 ! 1046-1046
	flw	fa0, a0, 8 ! 1047-1047
	flw	fa1, a1, 8 ! 1047-1047
	fmul.s	fa1, fa2, fa1, rne ! 1047-1047
	fadd.s	fa0, fa0, fa1, rne ! 1047-1047
	fsw	a0, fa0, 8 ! 1047-1047
	li	a0, 4 ! 1093-1093
	lw	a1, sp, 4 ! 0-0
	blt	a0, a1, bge_else.8264 ! 1093-1132
	li	a0, l.7508 ! 1094-1094
	flw	fa0, a0, 0 ! 1094-1094
	flw	fa1, sp, 0 ! 0-0
	flt.s	t0, fa1, fa0 ! 1094-1132
	bne	zero, t0, beq_else.8265 ! 1094-1132
	li	a0, l.7510 ! 1097-1097
	flw	fa0, a0, 0 ! 1097-1097
	li	a0, min_caml_vscan ! 1097-1097
	li	a2, min_caml_nvector ! 1097-1097
	flw	fa3, a0, 0 ! 1039-1039
	flw	fa4, a2, 0 ! 1039-1039
	fmul.s	fa3, fa3, fa4, rne ! 1039-1039
	flw	fa4, a0, 4 ! 1039-1039
	flw	fa5, a2, 4 ! 1039-1039
	fmul.s	fa4, fa4, fa5, rne ! 1039-1039
	fadd.s	fa3, fa3, fa4, rne ! 1039-1039
	flw	fa4, a0, 8 ! 1039-1039
	flw	fa5, a2, 8 ! 1039-1039
	fmul.s	fa4, fa4, fa5, rne ! 1039-1039
	fadd.s	fa3, fa3, fa4, rne ! 1039-1039
	fmul.s	fa0, fa0, fa3, rne ! 1097-1097
	li	a0, min_caml_vscan ! 1099-1099
	li	a2, min_caml_nvector ! 1099-1099
	flw	fa3, a0, 0 ! 1045-1045
	flw	fa4, a2, 0 ! 1045-1045
	fmul.s	fa4, fa0, fa4, rne ! 1045-1045
	fadd.s	fa3, fa3, fa4, rne ! 1045-1045
	fsw	a0, fa3, 0 ! 1045-1045
	flw	fa3, a0, 4 ! 1046-1046
	flw	fa4, a2, 4 ! 1046-1046
	fmul.s	fa4, fa0, fa4, rne ! 1046-1046
	fadd.s	fa3, fa3, fa4, rne ! 1046-1046
	fsw	a0, fa3, 4 ! 1046-1046
	flw	fa3, a0, 8 ! 1047-1047
	flw	fa4, a2, 8 ! 1047-1047
	fmul.s	fa0, fa0, fa4, rne ! 1047-1047
	fadd.s	fa0, fa3, fa0, rne ! 1047-1047
	fsw	a0, fa0, 8 ! 1047-1047
	lw	a0, sp, 8 ! 0-0
	lw	a2, a0, 8 ! 48-53
	li	a3, 1 ! 1102-1102
	bne	a2, a3, beq_else.8266 ! 1102-1130
	li	a1, l.6856 ! 1105-1105
	flw	fa0, a1, 0 ! 1105-1105
	lw	a1, a0, 28 ! 146-151
	flw	fa3, a1, 4 ! 151-151
	feq.s	t0, fa0, fa3
 ! 1105-1119	bne	zero, t0, beq_else.8267 ! 1105-1119
	li	a1, min_caml_vscan ! 1108-1108
	li	a2, min_caml_light ! 1108-1108
	flw	fa0, a1, 0 ! 1039-1039
	flw	fa3, a2, 0 ! 1039-1039
	fmul.s	fa0, fa0, fa3, rne ! 1039-1039
	flw	fa3, a1, 4 ! 1039-1039
	flw	fa4, a2, 4 ! 1039-1039
	fmul.s	fa3, fa3, fa4, rne ! 1039-1039
	fadd.s	fa0, fa0, fa3, rne ! 1039-1039
	flw	fa3, a1, 8 ! 1039-1039
	flw	fa4, a2, 8 ! 1039-1039
	fmul.s	fa3, fa3, fa4, rne ! 1039-1039
	fadd.s	fa0, fa0, fa3, rne ! 1039-1039
	fneg.s	fa0, fa0 ! 1108-1108
	li	a1, l.6856 ! 1109-1109
	flw	fa3, a1, 0 ! 1109-1109
	flt.s	t0, fa0, fa3 ! 1109-1119
	bne	zero, t0, beq_else.8268 ! 1109-1119
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	fmul.s	fa0, fa0, fa1, rne ! 1112-1112
	fmul.s	fa0, fa0, fa2, rne ! 1112-1112
	lw	a0, a0, 28 ! 146-151
	flw	fa1, a0, 4 ! 151-151
	fmul.s	fa0, fa0, fa1, rne ! 1112-1113
	li	a0, min_caml_rgb ! 1115-1115
	li	a1, min_caml_rgb ! 1115-1115
	flw	fa1, a1, 0 ! 1115-1115
	fadd.s	fa1, fa1, fa0, rne ! 1115-1115
	fsw	a0, fa1, 0 ! 1115-1115
	li	a0, min_caml_rgb ! 1116-1116
	li	a1, min_caml_rgb ! 1116-1116
	flw	fa1, a1, 4 ! 1116-1116
	fadd.s	fa1, fa1, fa0, rne ! 1116-1116
	fsw	a0, fa1, 4 ! 1116-1116
	li	a0, min_caml_rgb ! 1117-1117
	li	a1, min_caml_rgb ! 1117-1117
	flw	fa1, a1, 8 ! 1117-1117
	fadd.s	fa0, fa1, fa0, rne ! 1117-1117
	fsw	a0, fa0, 8 ! 1117-1117
	ret ! 1117-1117
beq_else.8268:
	ret ! 1119-1119
beq_else.8267:
	ret ! 1106-1106
beq_else.8266:
	li	a3, 2 ! 1121-1121
	bne	a2, a3, beq_else.8269 ! 1121-1130
	li	a2, min_caml_viewpoint ! 1124-1124
	li	a3, min_caml_crashed_point ! 1124-1124
	flw	fa0, a3, 0 ! 1124-1124
	fsw	a2, fa0, 0 ! 1124-1124
	li	a2, min_caml_viewpoint ! 1125-1125
	li	a3, min_caml_crashed_point ! 1125-1125
	flw	fa0, a3, 4 ! 1125-1125
	fsw	a2, fa0, 4 ! 1125-1125
	li	a2, min_caml_viewpoint ! 1126-1126
	li	a3, min_caml_crashed_point ! 1126-1126
	flw	fa0, a3, 8 ! 1126-1126
	fsw	a2, fa0, 8 ! 1126-1126
	li	a2, l.6895 ! 1127-1127
	flw	fa0, a2, 0 ! 1127-1127
	lw	a0, a0, 28 ! 136-141
	flw	fa2, a0, 0 ! 141-141
	fsub.s	fa0, fa0, fa2, rne ! 1127-1127
	fmul.s	fa0, fa1, fa0, rne ! 1127-1127
	addi	a0, a1, 1 ! 1128-1128
	j	raytracing.2128
beq_else.8269:
	ret ! 1130-1130
beq_else.8265:
	ret ! 1132-1132
bge_else.8264:
	ret ! 1093-1093
scan_point.2135:
	li	a1, min_caml_size ! 1173-1173
	lw	a1, a1, 0 ! 1173-1173
	blt	a0, a1, bge_else.8270 ! 1173-1205
	ret ! 1173-1173
bge_else.8270:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_float_of_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_scan_offset ! 1176-1176
	flw	fa1, a0, 0 ! 1176-1176
	fsub.s	fa0, fa0, fa1, rne ! 1176-1176
	li	a0, min_caml_scan_d ! 1176-1176
	flw	fa1, a0, 0 ! 1176-1176
	fmul.s	fa0, fa0, fa1, rne ! 1176-1176
	li	a0, min_caml_vscan ! 1178-1178
	li	a1, min_caml_cos_v ! 1178-1178
	flw	fa1, a1, 4 ! 1178-1178
	fmul.s	fa1, fa0, fa1, rne ! 1178-1178
	li	a1, min_caml_wscan ! 1178-1178
	flw	fa2, a1, 0 ! 1178-1178
	fadd.s	fa1, fa1, fa2, rne ! 1178-1178
	fsw	a0, fa1, 0 ! 1178-1178
	li	a0, min_caml_vscan ! 1179-1179
	li	a1, min_caml_scan_sscany ! 1179-1179
	flw	fa1, a1, 0 ! 1179-1179
	li	a1, min_caml_cos_v ! 1179-1179
	flw	fa2, a1, 0 ! 1179-1179
	fmul.s	fa1, fa1, fa2, rne ! 1179-1179
	li	a1, min_caml_vp ! 1179-1179
	flw	fa2, a1, 4 ! 1179-1179
	fsub.s	fa1, fa1, fa2, rne ! 1179-1179
	fsw	a0, fa1, 4 ! 1179-1179
	li	a0, min_caml_vscan ! 1180-1180
	fneg.s	fa1, fa0 ! 1180-1180
	li	a1, min_caml_sin_v ! 1180-1180
	flw	fa2, a1, 4 ! 1180-1180
	fmul.s	fa1, fa1, fa2, rne ! 1180-1180
	li	a1, min_caml_wscan ! 1180-1180
	flw	fa2, a1, 8 ! 1180-1180
	fadd.s	fa1, fa1, fa2, rne ! 1180-1180
	fsw	a0, fa1, 8 ! 1180-1180
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	li	a0, min_caml_scan_met1 ! 1183-1183
	flw	fa1, a0, 0 ! 1183-1183
	fadd.s	fa0, fa0, fa1, rne ! 1183-1183
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_sqrt
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_vscan ! 1184-1184
	li	a1, min_caml_vscan ! 1184-1184
	flw	fa1, a1, 0 ! 1184-1184
	fdiv.s	fa1, fa1, fa0, rne ! 1184-1184
	fsw	a0, fa1, 0 ! 1184-1184
	li	a0, min_caml_vscan ! 1185-1185
	li	a1, min_caml_vscan ! 1185-1185
	flw	fa1, a1, 4 ! 1185-1185
	fdiv.s	fa1, fa1, fa0, rne ! 1185-1185
	fsw	a0, fa1, 4 ! 1185-1185
	li	a0, min_caml_vscan ! 1186-1186
	li	a1, min_caml_vscan ! 1186-1186
	flw	fa1, a1, 8 ! 1186-1186
	fdiv.s	fa0, fa1, fa0, rne ! 1186-1186
	fsw	a0, fa0, 8 ! 1186-1186
	li	a0, min_caml_viewpoint ! 1188-1188
	li	a1, min_caml_view ! 1188-1188
	flw	fa0, a1, 0 ! 1188-1188
	fsw	a0, fa0, 0 ! 1188-1188
	li	a0, min_caml_viewpoint ! 1189-1189
	li	a1, min_caml_view ! 1189-1189
	flw	fa0, a1, 4 ! 1189-1189
	fsw	a0, fa0, 4 ! 1189-1189
	li	a0, min_caml_viewpoint ! 1190-1190
	li	a1, min_caml_view ! 1190-1190
	flw	fa0, a1, 8 ! 1190-1190
	fsw	a0, fa0, 8 ! 1190-1190
	li	a0, min_caml_rgb ! 1193-1193
	li	a1, l.6856 ! 1193-1193
	flw	fa0, a1, 0 ! 1193-1193
	fsw	a0, fa0, 0 ! 1193-1193
	li	a0, min_caml_rgb ! 1194-1194
	li	a1, l.6856 ! 1194-1194
	flw	fa0, a1, 0 ! 1194-1194
	fsw	a0, fa0, 4 ! 1194-1194
	li	a0, min_caml_rgb ! 1195-1195
	li	a1, l.6856 ! 1195-1195
	flw	fa0, a1, 0 ! 1195-1195
	fsw	a0, fa0, 8 ! 1195-1195
	li	a0, 0 ! 1198-1198
	li	a1, l.6895 ! 1198-1198
	flw	fa0, a1, 0 ! 1198-1198
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	raytracing.2128
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_rgb ! 1141-1141
	flw	fa0, a0, 0 ! 1141-1141
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 1142-1142
	blt	a1, a0, bge_else.8271 ! 1142-1142
	j	bge_cont.8272
bge_else.8271:
	li	a0, 255 ! 1142-1142
bge_cont.8272:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_byte
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_rgb ! 1145-1145
	flw	fa0, a0, 4 ! 1145-1145
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 1146-1146
	blt	a1, a0, bge_else.8273 ! 1146-1146
	j	bge_cont.8274
bge_else.8273:
	li	a0, 255 ! 1146-1146
bge_cont.8274:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_byte
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_rgb ! 1149-1149
	flw	fa0, a0, 8 ! 1149-1149
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 1150-1150
	blt	a1, a0, bge_else.8275 ! 1150-1150
	j	bge_cont.8276
bge_else.8275:
	li	a0, 255 ! 1150-1150
bge_cont.8276:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_byte
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 1204-1204
	j	scan_point.2135
scan_line.2137:
	li	a1, min_caml_size ! 1211-1211
	lw	a1, a1, 0 ! 1211-1211
	blt	a0, a1, bge_else.8277 ! 1211-1233
	ret ! 1233-1233
bge_else.8277:
	li	a1, min_caml_scan_sscany ! 1220-1220
	li	a2, min_caml_scan_offset ! 1221-1221
	flw	fa0, a2, 0 ! 1221-1221
	li	a2, l.6895 ! 1221-1221
	flw	fa1, a2, 0 ! 1221-1221
	fsub.s	fa0, fa0, fa1, rne ! 1221-1221
	sw	sp, a0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	fsw	sp, fa0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_float_of_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	flw	fa1, sp, 8 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1221-1221
	li	a0, min_caml_scan_d ! 1222-1222
	flw	fa1, a0, 0 ! 1222-1222
	fmul.s	fa0, fa1, fa0, rne ! 1222-1222
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 0 ! 1220-1222
	li	a0, min_caml_scan_met1 ! 1224-1224
	li	a1, min_caml_scan_sscany ! 1224-1224
	flw	fa0, a1, 0 ! 1224-1224
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	li	a1, l.7593 ! 1224-1224
	flw	fa1, a1, 0 ! 1224-1224
	fadd.s	fa0, fa0, fa1, rne ! 1224-1224
	fsw	a0, fa0, 0 ! 1224-1224
	li	a0, min_caml_scan_sscany ! 1226-1226
	flw	fa0, a0, 0 ! 1226-1226
	li	a0, min_caml_sin_v ! 1226-1226
	flw	fa1, a0, 0 ! 1226-1226
	fmul.s	fa0, fa0, fa1, rne ! 1226-1226
	li	a0, min_caml_wscan ! 1227-1227
	li	a1, min_caml_sin_v ! 1227-1227
	flw	fa1, a1, 4 ! 1227-1227
	fmul.s	fa1, fa0, fa1, rne ! 1227-1227
	li	a1, min_caml_vp ! 1227-1227
	flw	fa2, a1, 0 ! 1227-1227
	fsub.s	fa1, fa1, fa2, rne ! 1227-1227
	fsw	a0, fa1, 0 ! 1227-1227
	li	a0, min_caml_wscan ! 1228-1228
	li	a1, min_caml_cos_v ! 1228-1228
	flw	fa1, a1, 4 ! 1228-1228
	fmul.s	fa0, fa0, fa1, rne ! 1228-1228
	li	a1, min_caml_vp ! 1228-1228
	flw	fa1, a1, 8 ! 1228-1228
	fsub.s	fa0, fa0, fa1, rne ! 1228-1228
	fsw	a0, fa0, 8 ! 1228-1228
	li	a0, 0 ! 1229-1229
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	scan_point.2135
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 1230-1230
	j	scan_line.2137
scan_start.2139:
	li	a0, 80 ! 1158-1158
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_byte
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, 54 ! 1159-1159
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_byte
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, 10 ! 1160-1160
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_byte
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, min_caml_size ! 1161-1161
	lw	a0, a0, 0 ! 1161-1161
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_int
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, 32 ! 1162-1162
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_byte
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, min_caml_size ! 1163-1163
	lw	a0, a0, 4 ! 1163-1163
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_int
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, 10 ! 1164-1164
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_byte
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, 255 ! 1165-1165
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_int
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, 10 ! 1166-1166
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_byte
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, min_caml_size ! 1241-1241
	lw	a0, a0, 0 ! 1241-1241
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_float_of_int
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, min_caml_scan_d ! 1242-1242
	li	a1, l.7607 ! 1242-1242
	flw	fa1, a1, 0 ! 1242-1242
	fdiv.s	fa1, fa1, fa0, rne ! 1242-1242
	fsw	a0, fa1, 0 ! 1242-1242
	li	a0, min_caml_scan_offset ! 1243-1243
	li	a1, l.6980 ! 1243-1243
	flw	fa1, a1, 0 ! 1243-1243
	fdiv.s	fa0, fa0, fa1, rne ! 1243-1243
	fsw	a0, fa0, 0 ! 1243-1243
	li	a0, 0 ! 1244-1244
	j	scan_line.2137
min_caml_start:
	li	a0, 768 ! 1261-1261
	li	a1, 768 ! 1261-1261
	li	a2, 0 ! 1261-1261
	li	a3, min_caml_size ! 1253-1253
	sw	a3, a0, 0 ! 1253-1253
	li	a0, min_caml_size ! 1254-1254
	sw	a0, a1, 4 ! 1254-1254
	li	a0, min_caml_dbg ! 1255-1255
	sw	a0, a2, 0 ! 1255-1255
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	read_parameter.2043
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	scan_start.2139
	addi	sp, sp, -4
	lw	ra, sp, 0
	fin	0
