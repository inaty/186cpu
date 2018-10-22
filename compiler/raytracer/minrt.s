	j	min_caml_start
l.6685: ! 1000000000.000000
	float	1000000000.000000
l.6666: ! 128.000000
	float	128.000000
l.6625: ! 0.900000
	float	0.900000
l.6623: ! 0.200000
	float	0.200000
l.6524: ! 150.000000
	float	150.000000
l.6521: ! -150.000000
	float	-150.000000
l.6502: ! 0.100000
	float	0.100000
l.6498: ! -2.000000
	float	-2.000000
l.6495: ! 0.003906
	float	0.003906
l.6469: ! 255.000000
	float	255.000000
l.6465: ! 20.000000
	float	20.000000
l.6463: ! 0.050000
	float	0.050000
l.6457: ! 0.250000
	float	0.250000
l.6450: ! 10.000000
	float	10.000000
l.6445: ! 0.300000
	float	0.300000
l.6442: ! 0.500000
	float	0.500000
l.6440: ! 0.150000
	float	0.150000
l.6434: ! 3.141593
	float	3.141593
l.6432: ! 30.000000
	float	30.000000
l.6430: ! 15.000000
	float	15.000000
l.6428: ! 0.000100
	float	0.000100
l.6381: ! 100000000.000000
	float	100000000.000000
l.6355: ! -0.100000
	float	-0.100000
l.6341: ! 0.010000
	float	0.010000
l.6339: ! -0.200000
	float	-0.200000
l.6135: ! 2.000000
	float	2.000000
l.6100: ! -200.000000
	float	-200.000000
l.6097: ! 200.000000
	float	200.000000
l.6092: ! 0.017453
	float	0.017453
l.6005: ! -1.000000
	float	-1.000000
l.6003: ! 1.000000
	float	1.000000
l.6001: ! 0.000000
	float	0.000000
xor.2435:
	li	a2, 0 ! 16
	bne	a0, a2, be_else.11694
	mv	a0, a1 ! 16
	ret ! 16
be_else.11694:
	bne	a1, a2, be_else.11695
	li	a0, 1 ! 16
	ret ! 16
be_else.11695:
	li	a0, 0 ! 16
	ret ! 16
sgn.2468:
	lw	a0, a21, 4 ! 0
	fsw	sp, fa0, 0 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fiszero
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8 ! 0
	bne	a0, a1, be_else.11696
	flw	fa0, sp, 0 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fispos
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8 ! 0
	bne	a0, a1, be_else.11697
	li	a0, l.6005 ! 119
	flw	fa0, a0, 0 ! 119
	ret ! 119
be_else.11697:
	li	a0, l.6003 ! 118
	flw	fa0, a0, 0 ! 118
	ret ! 118
be_else.11696:
	li	a0, l.6001 ! 117
	flw	fa0, a0, 0 ! 117
	ret ! 117
fneg_cond.2470:
	lw	a1, a21, 4 ! 0
	bne	a0, a1, be_else.11698
	j	min_caml_fneg
be_else.11698:
	ret ! 124
add_mod5.2473:
	lw	a2, a21, 4 ! 0
	add	a0, a0, a1 ! 129
	blt	a0, a2, bge_else.11699
	sub	a0, a0, a2 ! 130
	ret ! 130
bge_else.11699:
	ret ! 130
vecset.2476:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	slli	a2, a2, 2 ! 145
	add	t0, a0, a2 ! 145
	fsw	t0, fa0, 0 ! 145
	slli	a2, a3, 2 ! 146
	add	t0, a0, a2 ! 146
	fsw	t0, fa1, 0 ! 146
	slli	a1, a1, 2 ! 147
	add	t0, a0, a1 ! 147
	fsw	t0, fa2, 0 ! 147
	ret ! 147
vecfill.2481:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	slli	a2, a2, 2 ! 152
	add	t0, a0, a2 ! 152
	fsw	t0, fa0, 0 ! 152
	slli	a2, a3, 2 ! 153
	add	t0, a0, a2 ! 153
	fsw	t0, fa0, 0 ! 153
	slli	a1, a1, 2 ! 154
	add	t0, a0, a1 ! 154
	fsw	t0, fa0, 0 ! 154
	ret ! 154
vecbzero.2484:
	lw	a1, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	mv	a21, a1
	lw	a20, a21, 0
	jalr	zero, a20, 0
veccpy.2486:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a3, 2 ! 164
	add	t0, a1, a5 ! 164
	flw	fa0, t0, 0 ! 164
	slli	a3, a3, 2 ! 164
	add	t0, a0, a3 ! 164
	fsw	t0, fa0, 0 ! 164
	slli	a3, a4, 2 ! 165
	add	t0, a1, a3 ! 165
	flw	fa0, t0, 0 ! 165
	slli	a3, a4, 2 ! 165
	add	t0, a0, a3 ! 165
	fsw	t0, fa0, 0 ! 165
	slli	a3, a2, 2 ! 166
	add	t0, a1, a3 ! 166
	flw	fa0, t0, 0 ! 166
	slli	a1, a2, 2 ! 166
	add	t0, a0, a1 ! 166
	fsw	t0, fa0, 0 ! 166
	ret ! 166
vecunit_sgn.2494:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a3, 2 ! 184
	add	t0, a0, a5 ! 184
	flw	fa0, t0, 0 ! 184
	sw	sp, a1, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fsqr
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	slli	a1, a0, 2 ! 184
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 184
	flw	fa1, t0, 0 ! 184
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fsqr
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 184
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 184
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 184
	flw	fa1, t0, 0 ! 184
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fsqr
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 184
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sqrt
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fiszero
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 4 ! 0
	bne	a0, a1, be_else.11704
	lw	a0, sp, 0 ! 0
	bne	a0, a1, be_else.11706
	li	a0, l.6003 ! 185
	flw	fa0, a0, 0 ! 185
	flw	fa1, sp, 40 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 185
	j	be_cont.11707
be_else.11706:
	li	a0, l.6005 ! 185
	flw	fa0, a0, 0 ! 185
	flw	fa1, sp, 40 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 185
be_cont.11707:
	j	be_cont.11705
be_else.11704:
	li	a0, l.6003 ! 185
	flw	fa0, a0, 0 ! 185
be_cont.11705:
	slli	a0, a1, 2 ! 186
	lw	a2, sp, 12 ! 0
	add	t0, a2, a0 ! 186
	flw	fa1, t0, 0 ! 186
	fmul.s	fa1, fa1, fa0, rne ! 186
	slli	a0, a1, 2 ! 186
	add	t0, a2, a0 ! 186
	fsw	t0, fa1, 0 ! 186
	lw	a0, sp, 16 ! 0
	slli	a1, a0, 2 ! 187
	add	t0, a2, a1 ! 187
	flw	fa1, t0, 0 ! 187
	fmul.s	fa1, fa1, fa0, rne ! 187
	slli	a0, a0, 2 ! 187
	add	t0, a2, a0 ! 187
	fsw	t0, fa1, 0 ! 187
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 188
	add	t0, a2, a1 ! 188
	flw	fa1, t0, 0 ! 188
	fmul.s	fa0, fa1, fa0, rne ! 188
	slli	a0, a0, 2 ! 188
	add	t0, a2, a0 ! 188
	fsw	t0, fa0, 0 ! 188
	ret ! 188
veciprod.2497:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a3, 2 ! 193
	add	t0, a0, a5 ! 193
	flw	fa0, t0, 0 ! 193
	slli	a3, a3, 2 ! 193
	add	t0, a1, a3 ! 193
	flw	fa1, t0, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	slli	a3, a4, 2 ! 193
	add	t0, a0, a3 ! 193
	flw	fa1, t0, 0 ! 193
	slli	a3, a4, 2 ! 193
	add	t0, a1, a3 ! 193
	flw	fa2, t0, 0 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	slli	a3, a2, 2 ! 193
	add	t0, a0, a3 ! 193
	flw	fa1, t0, 0 ! 193
	slli	a0, a2, 2 ! 193
	add	t0, a1, a0 ! 193
	flw	fa2, t0, 0 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	ret ! 193
veciprod2.2500:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	slli	a2, a2, 2 ! 198
	add	t0, a0, a2 ! 198
	flw	fa3, t0, 0 ! 198
	fmul.s	fa0, fa3, fa0, rne ! 198
	slli	a2, a3, 2 ! 198
	add	t0, a0, a2 ! 198
	flw	fa3, t0, 0 ! 198
	fmul.s	fa1, fa3, fa1, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	slli	a1, a1, 2 ! 198
	add	t0, a0, a1 ! 198
	flw	fa1, t0, 0 ! 198
	fmul.s	fa1, fa1, fa2, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	ret ! 198
vecaccum.2505:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a3, 2 ! 203
	add	t0, a0, a5 ! 203
	flw	fa1, t0, 0 ! 203
	slli	a5, a3, 2 ! 203
	add	t0, a1, a5 ! 203
	flw	fa2, t0, 0 ! 203
	fmul.s	fa2, fa0, fa2, rne ! 203
	fadd.s	fa1, fa1, fa2, rne ! 203
	slli	a3, a3, 2 ! 203
	add	t0, a0, a3 ! 203
	fsw	t0, fa1, 0 ! 203
	slli	a3, a4, 2 ! 204
	add	t0, a0, a3 ! 204
	flw	fa1, t0, 0 ! 204
	slli	a3, a4, 2 ! 204
	add	t0, a1, a3 ! 204
	flw	fa2, t0, 0 ! 204
	fmul.s	fa2, fa0, fa2, rne ! 204
	fadd.s	fa1, fa1, fa2, rne ! 204
	slli	a3, a4, 2 ! 204
	add	t0, a0, a3 ! 204
	fsw	t0, fa1, 0 ! 204
	slli	a3, a2, 2 ! 205
	add	t0, a0, a3 ! 205
	flw	fa1, t0, 0 ! 205
	slli	a3, a2, 2 ! 205
	add	t0, a1, a3 ! 205
	flw	fa2, t0, 0 ! 205
	fmul.s	fa0, fa0, fa2, rne ! 205
	fadd.s	fa0, fa1, fa0, rne ! 205
	slli	a1, a2, 2 ! 205
	add	t0, a0, a1 ! 205
	fsw	t0, fa0, 0 ! 205
	ret ! 205
vecadd.2509:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a3, 2 ! 210
	add	t0, a0, a5 ! 210
	flw	fa0, t0, 0 ! 210
	slli	a5, a3, 2 ! 210
	add	t0, a1, a5 ! 210
	flw	fa1, t0, 0 ! 210
	fadd.s	fa0, fa0, fa1, rne ! 210
	slli	a3, a3, 2 ! 210
	add	t0, a0, a3 ! 210
	fsw	t0, fa0, 0 ! 210
	slli	a3, a4, 2 ! 211
	add	t0, a0, a3 ! 211
	flw	fa0, t0, 0 ! 211
	slli	a3, a4, 2 ! 211
	add	t0, a1, a3 ! 211
	flw	fa1, t0, 0 ! 211
	fadd.s	fa0, fa0, fa1, rne ! 211
	slli	a3, a4, 2 ! 211
	add	t0, a0, a3 ! 211
	fsw	t0, fa0, 0 ! 211
	slli	a3, a2, 2 ! 212
	add	t0, a0, a3 ! 212
	flw	fa0, t0, 0 ! 212
	slli	a3, a2, 2 ! 212
	add	t0, a1, a3 ! 212
	flw	fa1, t0, 0 ! 212
	fadd.s	fa0, fa0, fa1, rne ! 212
	slli	a1, a2, 2 ! 212
	add	t0, a0, a1 ! 212
	fsw	t0, fa0, 0 ! 212
	ret ! 212
vecscale.2515:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	slli	a4, a2, 2 ! 224
	add	t0, a0, a4 ! 224
	flw	fa1, t0, 0 ! 224
	fmul.s	fa1, fa1, fa0, rne ! 224
	slli	a2, a2, 2 ! 224
	add	t0, a0, a2 ! 224
	fsw	t0, fa1, 0 ! 224
	slli	a2, a3, 2 ! 225
	add	t0, a0, a2 ! 225
	flw	fa1, t0, 0 ! 225
	fmul.s	fa1, fa1, fa0, rne ! 225
	slli	a2, a3, 2 ! 225
	add	t0, a0, a2 ! 225
	fsw	t0, fa1, 0 ! 225
	slli	a2, a1, 2 ! 226
	add	t0, a0, a2 ! 226
	flw	fa1, t0, 0 ! 226
	fmul.s	fa0, fa1, fa0, rne ! 226
	slli	a1, a1, 2 ! 226
	add	t0, a0, a1 ! 226
	fsw	t0, fa0, 0 ! 226
	ret ! 226
vecaccumv.2518:
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	slli	a6, a4, 2 ! 231
	add	t0, a0, a6 ! 231
	flw	fa0, t0, 0 ! 231
	slli	a6, a4, 2 ! 231
	add	t0, a1, a6 ! 231
	flw	fa1, t0, 0 ! 231
	slli	a6, a4, 2 ! 231
	add	t0, a2, a6 ! 231
	flw	fa2, t0, 0 ! 231
	fmul.s	fa1, fa1, fa2, rne ! 231
	fadd.s	fa0, fa0, fa1, rne ! 231
	slli	a4, a4, 2 ! 231
	add	t0, a0, a4 ! 231
	fsw	t0, fa0, 0 ! 231
	slli	a4, a5, 2 ! 232
	add	t0, a0, a4 ! 232
	flw	fa0, t0, 0 ! 232
	slli	a4, a5, 2 ! 232
	add	t0, a1, a4 ! 232
	flw	fa1, t0, 0 ! 232
	slli	a4, a5, 2 ! 232
	add	t0, a2, a4 ! 232
	flw	fa2, t0, 0 ! 232
	fmul.s	fa1, fa1, fa2, rne ! 232
	fadd.s	fa0, fa0, fa1, rne ! 232
	slli	a4, a5, 2 ! 232
	add	t0, a0, a4 ! 232
	fsw	t0, fa0, 0 ! 232
	slli	a4, a3, 2 ! 233
	add	t0, a0, a4 ! 233
	flw	fa0, t0, 0 ! 233
	slli	a4, a3, 2 ! 233
	add	t0, a1, a4 ! 233
	flw	fa1, t0, 0 ! 233
	slli	a1, a3, 2 ! 233
	add	t0, a2, a1 ! 233
	flw	fa2, t0, 0 ! 233
	fmul.s	fa1, fa1, fa2, rne ! 233
	fadd.s	fa0, fa0, fa1, rne ! 233
	slli	a1, a3, 2 ! 233
	add	t0, a0, a1 ! 233
	fsw	t0, fa0, 0 ! 233
	ret ! 233
o_texturetype.2522:
	lw	a0, a0, 0 ! 242
	ret ! 247
o_form.2524:
	lw	a0, a0, 4 ! 252
	ret ! 257
o_reflectiontype.2526:
	lw	a0, a0, 8 ! 262
	ret ! 267
o_isinvert.2528:
	lw	a0, a0, 24 ! 272
	ret ! 276
o_isrot.2530:
	lw	a0, a0, 12 ! 281
	ret ! 285
o_param_a.2532:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 16 ! 290
	slli	a1, a1, 2 ! 295
	add	t0, a0, a1 ! 295
	flw	fa0, t0, 0 ! 295
	ret ! 295
o_param_b.2534:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 16 ! 300
	slli	a1, a1, 2 ! 305
	add	t0, a0, a1 ! 305
	flw	fa0, t0, 0 ! 305
	ret ! 305
o_param_c.2536:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 16 ! 310
	slli	a1, a1, 2 ! 315
	add	t0, a0, a1 ! 315
	flw	fa0, t0, 0 ! 315
	ret ! 315
o_param_abc.2538:
	lw	a0, a0, 16 ! 320
	ret ! 325
o_param_x.2540:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 20 ! 330
	slli	a1, a1, 2 ! 335
	add	t0, a0, a1 ! 335
	flw	fa0, t0, 0 ! 335
	ret ! 335
o_param_y.2542:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 20 ! 340
	slli	a1, a1, 2 ! 345
	add	t0, a0, a1 ! 345
	flw	fa0, t0, 0 ! 345
	ret ! 345
o_param_z.2544:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 20 ! 350
	slli	a1, a1, 2 ! 355
	add	t0, a0, a1 ! 355
	flw	fa0, t0, 0 ! 355
	ret ! 355
o_diffuse.2546:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 28 ! 360
	slli	a1, a1, 2 ! 365
	add	t0, a0, a1 ! 365
	flw	fa0, t0, 0 ! 365
	ret ! 365
o_hilight.2548:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 28 ! 370
	slli	a1, a1, 2 ! 375
	add	t0, a0, a1 ! 375
	flw	fa0, t0, 0 ! 375
	ret ! 375
o_color_red.2550:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 32 ! 380
	slli	a1, a1, 2 ! 385
	add	t0, a0, a1 ! 385
	flw	fa0, t0, 0 ! 385
	ret ! 385
o_color_green.2552:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 32 ! 390
	slli	a1, a1, 2 ! 395
	add	t0, a0, a1 ! 395
	flw	fa0, t0, 0 ! 395
	ret ! 395
o_color_blue.2554:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 32 ! 400
	slli	a1, a1, 2 ! 405
	add	t0, a0, a1 ! 405
	flw	fa0, t0, 0 ! 405
	ret ! 405
o_param_r1.2556:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 36 ! 410
	slli	a1, a1, 2 ! 415
	add	t0, a0, a1 ! 415
	flw	fa0, t0, 0 ! 415
	ret ! 415
o_param_r2.2558:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 36 ! 420
	slli	a1, a1, 2 ! 425
	add	t0, a0, a1 ! 425
	flw	fa0, t0, 0 ! 425
	ret ! 425
o_param_r3.2560:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 36 ! 430
	slli	a1, a1, 2 ! 435
	add	t0, a0, a1 ! 435
	flw	fa0, t0, 0 ! 435
	ret ! 435
o_param_ctbl.2562:
	lw	a0, a0, 40 ! 447
	ret ! 452
p_rgb.2564:
	lw	a0, a0, 0 ! 461
	ret ! 463
p_intersection_points.2566:
	lw	a0, a0, 4 ! 468
	ret ! 470
p_surface_ids.2568:
	lw	a0, a0, 8 ! 476
	ret ! 478
p_calc_diffuse.2570:
	lw	a0, a0, 12 ! 483
	ret ! 485
p_energy.2572:
	lw	a0, a0, 16 ! 490
	ret ! 492
p_received_ray_20percent.2574:
	lw	a0, a0, 20 ! 497
	ret ! 499
p_group_id.2576:
	lw	a1, a21, 4 ! 0
	lw	a0, a0, 24 ! 513
	slli	a1, a1, 2 ! 515
	add	t0, a0, a1 ! 515
	lw	a0, t0, 0 ! 515
	ret ! 515
p_set_group_id.2578:
	lw	a2, a21, 4 ! 0
	lw	a0, a0, 24 ! 520
	slli	a2, a2, 2 ! 522
	add	t0, a0, a2 ! 522
	sw	t0, a1, 0 ! 522
	ret ! 522
p_nvectors.2581:
	lw	a0, a0, 28 ! 527
	ret ! 529
d_vec.2583:
	lw	a0, a0, 0 ! 538
	ret ! 539
d_const.2585:
	lw	a0, a0, 4 ! 544
	ret ! 545
r_surface_id.2587:
	lw	a0, a0, 0 ! 554
	ret ! 555
r_dvec.2589:
	lw	a0, a0, 4 ! 560
	ret ! 561
r_bright.2591:
	flw	fa0, a0, 8 ! 566
	ret ! 567
rad.2593:
	li	a0, l.6092 ! 576
	flw	fa1, a0, 0 ! 576
	fmul.s	fa0, fa0, fa1, rne ! 576
	ret ! 576
read_screen_settings.2595:
	lw	a0, a21, 36 ! 0
	lw	a1, a21, 32 ! 0
	lw	a2, a21, 28 ! 0
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a1, 20 ! 0
	sw	sp, a5, 24 ! 0
	sw	sp, a7, 28 ! 0
	sw	sp, a4, 32 ! 0
	sw	sp, a6, 36 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0
	slli	a1, a0, 2 ! 583
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 583
	fsw	t0, fa0, 0 ! 583
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 584
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 584
	fsw	t0, fa0, 0 ! 584
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 585
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 585
	fsw	t0, fa0, 0 ! 585
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	rad.2593
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_cos
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fsw	sp, fa0, 48 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_sin
	addi	sp, sp, -60
	lw	ra, sp, 56
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_read_float
	addi	sp, sp, -68
	lw	ra, sp, 64
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	rad.2593
	addi	sp, sp, -68
	lw	ra, sp, 64
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_cos
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fsw	sp, fa0, 72 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_sin
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 48 ! 0
	fmul.s	fa2, fa1, fa0, rne ! 594
	li	a0, l.6097 ! 594
	flw	fa3, a0, 0 ! 594
	fmul.s	fa2, fa2, fa3, rne ! 594
	lw	a0, sp, 36 ! 0
	slli	a1, a0, 2 ! 594
	lw	a2, sp, 20 ! 0
	add	t0, a2, a1 ! 594
	fsw	t0, fa2, 0 ! 594
	li	a1, l.6100 ! 595
	flw	fa2, a1, 0 ! 595
	flw	fa4, sp, 56 ! 0
	fmul.s	fa2, fa4, fa2, rne ! 595
	lw	a1, sp, 28 ! 0
	slli	a3, a1, 2 ! 595
	add	t0, a2, a3 ! 595
	fsw	t0, fa2, 0 ! 595
	flw	fa2, sp, 72 ! 0
	fmul.s	fa5, fa1, fa2, rne ! 596
	fmul.s	fa3, fa5, fa3, rne ! 596
	lw	a3, sp, 24 ! 0
	slli	a4, a3, 2 ! 596
	add	t0, a2, a4 ! 596
	fsw	t0, fa3, 0 ! 596
	slli	a4, a0, 2 ! 598
	lw	a5, sp, 16 ! 0
	add	t0, a5, a4 ! 598
	fsw	t0, fa2, 0 ! 598
	slli	a4, a1, 2 ! 599
	flw	fa3, sp, 8 ! 0
	add	t0, a5, a4 ! 599
	fsw	t0, fa3, 0 ! 599
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 600
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 600
	fsw	t0, fa0, 0 ! 600
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 602
	lw	a0, sp, 36 ! 0
	slli	a1, a0, 2 ! 602
	lw	a2, sp, 4 ! 0
	add	t0, a2, a1 ! 602
	fsw	t0, fa0, 0 ! 602
	flw	fa0, sp, 48 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 603
	lw	a2, sp, 4 ! 0
	add	t0, a2, a1 ! 603
	fsw	t0, fa0, 0 ! 603
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 604
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 604
	lw	a2, sp, 4 ! 0
	add	t0, a2, a1 ! 604
	fsw	t0, fa0, 0 ! 604
	lw	a1, sp, 36 ! 0
	slli	a2, a1, 2 ! 606
	lw	a3, sp, 32 ! 0
	add	t0, a3, a2 ! 606
	flw	fa0, t0, 0 ! 606
	slli	a2, a1, 2 ! 606
	lw	a4, sp, 20 ! 0
	add	t0, a4, a2 ! 606
	flw	fa1, t0, 0 ! 606
	fsub.s	fa0, fa0, fa1, rne ! 606
	slli	a1, a1, 2 ! 606
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 606
	fsw	t0, fa0, 0 ! 606
	lw	a1, sp, 28 ! 0
	slli	a5, a1, 2 ! 607
	add	t0, a3, a5 ! 607
	flw	fa0, t0, 0 ! 607
	slli	a5, a1, 2 ! 607
	add	t0, a4, a5 ! 607
	flw	fa1, t0, 0 ! 607
	fsub.s	fa0, fa0, fa1, rne ! 607
	slli	a1, a1, 2 ! 607
	add	t0, a2, a1 ! 607
	fsw	t0, fa0, 0 ! 607
	slli	a1, a0, 2 ! 608
	add	t0, a3, a1 ! 608
	flw	fa0, t0, 0 ! 608
	slli	a1, a0, 2 ! 608
	add	t0, a4, a1 ! 608
	flw	fa1, t0, 0 ! 608
	fsub.s	fa0, fa0, fa1, rne ! 608
	slli	a0, a0, 2 ! 608
	add	t0, a2, a0 ! 608
	fsw	t0, fa0, 0 ! 608
	ret ! 608
read_light.2597:
	lw	a0, a21, 20 ! 0
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a1, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	rad.2593
	addi	sp, sp, -24
	lw	ra, sp, 20
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sin
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fneg
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 16 ! 0
	slli	a0, a0, 2 ! 620
	lw	a1, sp, 12 ! 0
	add	t0, a1, a0 ! 620
	fsw	t0, fa0, 0 ! 620
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	rad.2593
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_cos
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_sin
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 624
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 624
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 624
	fsw	t0, fa0, 0 ! 624
	flw	fa0, sp, 32 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_cos
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 626
	lw	a0, sp, 4 ! 0
	slli	a0, a0, 2 ! 626
	lw	a1, sp, 12 ! 0
	add	t0, a1, a0 ! 626
	fsw	t0, fa0, 0 ! 626
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 8 ! 0
	slli	a0, a0, 2 ! 627
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 627
	fsw	t0, fa0, 0 ! 627
	ret ! 627
rotate_quadratic_matrix.2599:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a3, 2 ! 637
	add	t0, a1, a5 ! 637
	flw	fa0, t0, 0 ! 637
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_cos
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	slli	a1, a0, 2 ! 638
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 638
	flw	fa1, t0, 0 ! 638
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sin
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 639
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 639
	flw	fa1, t0, 0 ! 639
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_cos
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 640
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 640
	flw	fa1, t0, 0 ! 640
	fsw	sp, fa0, 40 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_sin
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 4 ! 0
	slli	a1, a0, 2 ! 641
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 641
	flw	fa1, t0, 0 ! 641
	fsw	sp, fa0, 48 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_cos
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 4 ! 0
	slli	a1, a0, 2 ! 642
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 642
	flw	fa1, t0, 0 ! 642
	fsw	sp, fa0, 56 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_sin
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 40 ! 0
	fmul.s	fa3, fa2, fa1, rne ! 644
	flw	fa4, sp, 48 ! 0
	flw	fa5, sp, 32 ! 0
	fmul.s	fa6, fa5, fa4, rne ! 645
	fmul.s	fa7, fa6, fa1, rne ! 645
	flw	fa8, sp, 24 ! 0
	fmul.s	fa9, fa8, fa0, rne ! 645
	fsub.s	fa7, fa7, fa9, rne ! 645
	fmul.s	fa9, fa8, fa4, rne ! 646
	fmul.s	fa10, fa9, fa1, rne ! 646
	fmul.s	fa11, fa5, fa0, rne ! 646
	fadd.s	fa10, fa10, fa11, rne ! 646
	fmul.s	fa11, fa2, fa0, rne ! 648
	fmul.s	fa6, fa6, fa0, rne ! 649
	fmul.s	fa12, fa8, fa1, rne ! 649
	fadd.s	fa6, fa6, fa12, rne ! 649
	fmul.s	fa0, fa9, fa0, rne ! 650
	fmul.s	fa1, fa5, fa1, rne ! 650
	fsub.s	fa0, fa0, fa1, rne ! 650
	fsw	sp, fa0, 64 ! 0
	fsw	sp, fa10, 72 ! 0
	fsw	sp, fa6, 80 ! 0
	fsw	sp, fa7, 88 ! 0
	fsw	sp, fa11, 96 ! 0
	fsw	sp, fa3, 104 ! 0
	fmv.s	fa0, fa4
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fneg
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 32 ! 0
	fmul.s	fa2, fa2, fa1, rne ! 653
	flw	fa3, sp, 24 ! 0
	fmul.s	fa1, fa3, fa1, rne ! 654
	lw	a0, sp, 16 ! 0
	slli	a1, a0, 2 ! 657
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 657
	flw	fa3, t0, 0 ! 657
	lw	a1, sp, 8 ! 0
	slli	a3, a1, 2 ! 658
	add	t0, a2, a3 ! 658
	flw	fa4, t0, 0 ! 658
	lw	a3, sp, 4 ! 0
	slli	a4, a3, 2 ! 659
	add	t0, a2, a4 ! 659
	flw	fa5, t0, 0 ! 659
	flw	fa6, sp, 104 ! 0
	fsw	sp, fa1, 112 ! 0
	fsw	sp, fa2, 120 ! 0
	fsw	sp, fa5, 128 ! 0
	fsw	sp, fa0, 136 ! 0
	fsw	sp, fa4, 144 ! 0
	fsw	sp, fa3, 152 ! 0
	fmv.s	fa0, fa6
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fsqr
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 152 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 664
	flw	fa2, sp, 96 ! 0
	fsw	sp, fa0, 160 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_fsqr
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 144 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 664
	flw	fa2, sp, 160 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 664
	flw	fa2, sp, 136 ! 0
	fsw	sp, fa0, 168 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fsqr
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 664
	flw	fa2, sp, 168 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 664
	lw	a0, sp, 16 ! 0
	slli	a1, a0, 2 ! 664
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 664
	fsw	t0, fa0, 0 ! 664
	flw	fa0, sp, 88 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fsqr
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 152 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 665
	flw	fa2, sp, 80 ! 0
	fsw	sp, fa0, 176 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_fsqr
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 144 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 665
	flw	fa2, sp, 176 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 665
	flw	fa2, sp, 120 ! 0
	fsw	sp, fa0, 184 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_fsqr
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 665
	flw	fa2, sp, 184 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 665
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 665
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 665
	fsw	t0, fa0, 0 ! 665
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_fsqr
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 152 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 666
	flw	fa2, sp, 64 ! 0
	fsw	sp, fa0, 192 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	min_caml_fsqr
	addi	sp, sp, -204
	lw	ra, sp, 200
	flw	fa1, sp, 144 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 666
	flw	fa2, sp, 192 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 666
	flw	fa2, sp, 112 ! 0
	fsw	sp, fa0, 200 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_fsqr
	addi	sp, sp, -212
	lw	ra, sp, 208
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 666
	flw	fa2, sp, 200 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 666
	lw	a0, sp, 4 ! 0
	slli	a1, a0, 2 ! 666
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 666
	fsw	t0, fa0, 0 ! 666
	li	a1, l.6135 ! 669
	flw	fa0, a1, 0 ! 669
	flw	fa2, sp, 88 ! 0
	flw	fa3, sp, 152 ! 0
	fmul.s	fa4, fa3, fa2, rne ! 669
	flw	fa5, sp, 72 ! 0
	fmul.s	fa4, fa4, fa5, rne ! 669
	flw	fa6, sp, 80 ! 0
	flw	fa7, sp, 144 ! 0
	fmul.s	fa8, fa7, fa6, rne ! 669
	flw	fa9, sp, 64 ! 0
	fmul.s	fa8, fa8, fa9, rne ! 669
	fadd.s	fa4, fa4, fa8, rne ! 669
	flw	fa8, sp, 120 ! 0
	fmul.s	fa10, fa1, fa8, rne ! 669
	flw	fa11, sp, 112 ! 0
	fmul.s	fa10, fa10, fa11, rne ! 669
	fadd.s	fa4, fa4, fa10, rne ! 669
	fmul.s	fa4, fa0, fa4, rne ! 669
	lw	a1, sp, 16 ! 0
	slli	a1, a1, 2 ! 669
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 669
	fsw	t0, fa4, 0 ! 669
	flw	fa4, sp, 104 ! 0
	fmul.s	fa3, fa3, fa4, rne ! 670
	fmul.s	fa4, fa3, fa5, rne ! 670
	flw	fa5, sp, 96 ! 0
	fmul.s	fa5, fa7, fa5, rne ! 670
	fmul.s	fa7, fa5, fa9, rne ! 670
	fadd.s	fa4, fa4, fa7, rne ! 670
	flw	fa7, sp, 136 ! 0
	fmul.s	fa1, fa1, fa7, rne ! 670
	fmul.s	fa7, fa1, fa11, rne ! 670
	fadd.s	fa4, fa4, fa7, rne ! 670
	fmul.s	fa4, fa0, fa4, rne ! 670
	lw	a1, sp, 8 ! 0
	slli	a1, a1, 2 ! 670
	add	t0, a2, a1 ! 670
	fsw	t0, fa4, 0 ! 670
	fmul.s	fa2, fa3, fa2, rne ! 671
	fmul.s	fa3, fa5, fa6, rne ! 671
	fadd.s	fa2, fa2, fa3, rne ! 671
	fmul.s	fa1, fa1, fa8, rne ! 671
	fadd.s	fa1, fa2, fa1, rne ! 671
	fmul.s	fa0, fa0, fa1, rne ! 671
	slli	a0, a0, 2 ! 671
	add	t0, a2, a0 ! 671
	fsw	t0, fa0, 0 ! 671
	ret ! 671
read_nth_object.2602:
	lw	a1, a21, 40 ! 0
	lw	a2, a21, 36 ! 0
	lw	a3, a21, 32 ! 0
	lw	a4, a21, 28 ! 0
	lw	a5, a21, 24 ! 0
	lw	a6, a21, 20 ! 0
	lw	a7, a21, 16 ! 0
	lw	a8, a21, 12 ! 0
	lw	a9, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	sw	sp, a3, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a5, 20 ! 0
	sw	sp, a9, 24 ! 0
	sw	sp, a8, 28 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, a7, 40 ! 0
	sw	sp, a6, 44 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_int
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 44 ! 0
	bne	a0, a1, be_else.11719
	li	a0, 0 ! 755
	ret ! 755
be_else.11719:
	sw	sp, a0, 48 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_read_int
	addi	sp, sp, -56
	lw	ra, sp, 52
	sw	sp, a0, 52 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_read_int
	addi	sp, sp, -60
	lw	ra, sp, 56
	sw	sp, a0, 56 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_read_int
	addi	sp, sp, -64
	lw	ra, sp, 60
	flw	fa0, sp, 32 ! 0
	lw	a1, sp, 40 ! 0
	sw	sp, a0, 60 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_float_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	sw	sp, a0, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_read_float
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 686
	lw	a2, sp, 64 ! 0
	add	t0, a2, a1 ! 686
	fsw	t0, fa0, 0 ! 686
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_read_float
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 687
	lw	a2, sp, 64 ! 0
	add	t0, a2, a1 ! 687
	fsw	t0, fa0, 0 ! 687
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_read_float
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 688
	lw	a2, sp, 64 ! 0
	add	t0, a2, a1 ! 688
	fsw	t0, fa0, 0 ! 688
	flw	fa0, sp, 32 ! 0
	lw	a1, sp, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_create_float_array
	addi	sp, sp, -72
	lw	ra, sp, 68
	sw	sp, a0, 68 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_read_float
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 691
	lw	a2, sp, 68 ! 0
	add	t0, a2, a1 ! 691
	fsw	t0, fa0, 0 ! 691
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_read_float
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 692
	lw	a2, sp, 68 ! 0
	add	t0, a2, a1 ! 692
	fsw	t0, fa0, 0 ! 692
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_read_float
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 693
	lw	a2, sp, 68 ! 0
	add	t0, a2, a1 ! 693
	fsw	t0, fa0, 0 ! 693
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_read_float
	addi	sp, sp, -76
	lw	ra, sp, 72
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fisneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa0, sp, 32 ! 0
	lw	a1, sp, 20 ! 0
	sw	sp, a0, 72 ! 0
	mv	a0, a1
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_create_float_array
	addi	sp, sp, -80
	lw	ra, sp, 76
	sw	sp, a0, 76 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_read_float
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 698
	lw	a2, sp, 76 ! 0
	add	t0, a2, a1 ! 698
	fsw	t0, fa0, 0 ! 698
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_read_float
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 699
	lw	a2, sp, 76 ! 0
	add	t0, a2, a1 ! 699
	fsw	t0, fa0, 0 ! 699
	flw	fa0, sp, 32 ! 0
	lw	a1, sp, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_create_float_array
	addi	sp, sp, -84
	lw	ra, sp, 80
	sw	sp, a0, 80 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_read_float
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 702
	lw	a2, sp, 80 ! 0
	add	t0, a2, a1 ! 702
	fsw	t0, fa0, 0 ! 702
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_read_float
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 703
	lw	a2, sp, 80 ! 0
	add	t0, a2, a1 ! 703
	fsw	t0, fa0, 0 ! 703
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_read_float
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 704
	lw	a2, sp, 80 ! 0
	add	t0, a2, a1 ! 704
	fsw	t0, fa0, 0 ! 704
	flw	fa0, sp, 32 ! 0
	lw	a1, sp, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_create_float_array
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a1, sp, 28 ! 0
	lw	a2, sp, 60 ! 0
	sw	sp, a0, 84 ! 0
	bne	a2, a1, be_else.11720
	j	be_cont.11721
be_else.11720:
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_read_float
	addi	sp, sp, -92
	lw	ra, sp, 88
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	rad.2593
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 709
	lw	a2, sp, 84 ! 0
	add	t0, a2, a1 ! 709
	fsw	t0, fa0, 0 ! 709
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_read_float
	addi	sp, sp, -92
	lw	ra, sp, 88
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	rad.2593
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 710
	lw	a2, sp, 84 ! 0
	add	t0, a2, a1 ! 710
	fsw	t0, fa0, 0 ! 710
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_read_float
	addi	sp, sp, -92
	lw	ra, sp, 88
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	rad.2593
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 711
	lw	a2, sp, 84 ! 0
	add	t0, a2, a1 ! 711
	fsw	t0, fa0, 0 ! 711
be_cont.11721:
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 52 ! 0
	bne	a1, a0, be_else.11722
	li	a2, 1 ! 718
	j	be_cont.11723
be_else.11722:
	lw	a2, sp, 72 ! 0
be_cont.11723:
	li	a3, 4 ! 719
	flw	fa0, sp, 32 ! 0
	sw	sp, a2, 88 ! 0
	mv	a0, a3
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_create_float_array
	addi	sp, sp, -96
	lw	ra, sp, 92
	mv	a1, hp ! 722
	addi	hp, hp, 44 ! 722
	sw	a1, a0, 40 ! 722
	lw	a0, sp, 84 ! 0
	sw	a1, a0, 36 ! 722
	lw	a2, sp, 80 ! 0
	sw	a1, a2, 32 ! 722
	lw	a2, sp, 76 ! 0
	sw	a1, a2, 28 ! 722
	lw	a2, sp, 88 ! 0
	sw	a1, a2, 24 ! 722
	lw	a2, sp, 68 ! 0
	sw	a1, a2, 20 ! 722
	lw	a2, sp, 64 ! 0
	sw	a1, a2, 16 ! 722
	lw	a3, sp, 60 ! 0
	sw	a1, a3, 12 ! 722
	lw	a4, sp, 56 ! 0
	sw	a1, a4, 8 ! 722
	lw	a4, sp, 52 ! 0
	sw	a1, a4, 4 ! 722
	lw	a5, sp, 48 ! 0
	sw	a1, a5, 0 ! 722
	lw	a5, sp, 16 ! 0
	slli	a5, a5, 2 ! 730
	lw	a6, sp, 12 ! 0
	add	t0, a6, a5 ! 730
	sw	t0, a1, 0 ! 730
	lw	a1, sp, 40 ! 0
	bne	a4, a1, be_else.11724
	lw	a1, sp, 28 ! 0
	slli	a4, a1, 2 ! 735
	add	t0, a2, a4 ! 735
	flw	fa0, t0, 0 ! 735
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fiszero
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 28 ! 0
	bne	a0, a1, be_else.11727
	flw	fa0, sp, 96 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fsw	sp, fa0, 104 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fsqr
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 104 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 736
	j	be_cont.11728
be_else.11727:
	li	a0, l.6001 ! 736
	flw	fa0, a0, 0 ! 736
be_cont.11728:
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 736
	lw	a2, sp, 64 ! 0
	add	t0, a2, a1 ! 736
	fsw	t0, fa0, 0 ! 736
	lw	a1, sp, 24 ! 0
	slli	a3, a1, 2 ! 737
	add	t0, a2, a3 ! 737
	flw	fa0, t0, 0 ! 737
	fsw	sp, fa0, 112 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_fiszero
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a1, sp, 28 ! 0
	bne	a0, a1, be_else.11729
	flw	fa0, sp, 112 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112 ! 0
	fsw	sp, fa0, 120 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fsqr
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa1, sp, 120 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 738
	j	be_cont.11730
be_else.11729:
	li	a0, l.6001 ! 738
	flw	fa0, a0, 0 ! 738
be_cont.11730:
	lw	a0, sp, 24 ! 0
	slli	a0, a0, 2 ! 738
	lw	a1, sp, 64 ! 0
	add	t0, a1, a0 ! 738
	fsw	t0, fa0, 0 ! 738
	lw	a0, sp, 20 ! 0
	slli	a2, a0, 2 ! 739
	add	t0, a1, a2 ! 739
	flw	fa0, t0, 0 ! 739
	fsw	sp, fa0, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fiszero
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 28 ! 0
	bne	a0, a1, be_else.11731
	flw	fa0, sp, 128 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128 ! 0
	fsw	sp, fa0, 136 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fsqr
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 740
	j	be_cont.11732
be_else.11731:
	li	a0, l.6001 ! 740
	flw	fa0, a0, 0 ! 740
be_cont.11732:
	lw	a0, sp, 20 ! 0
	slli	a0, a0, 2 ! 740
	lw	a1, sp, 64 ! 0
	add	t0, a1, a0 ! 740
	fsw	t0, fa0, 0 ! 740
	j	be_cont.11725
be_else.11724:
	lw	a1, sp, 20 ! 0
	bne	a4, a1, be_else.11733
	lw	a1, sp, 28 ! 0
	lw	a4, sp, 72 ! 0
	bne	a4, a1, be_else.11735
	li	a4, 1 ! 744
	j	be_cont.11736
be_else.11735:
	li	a4, 0 ! 744
be_cont.11736:
	lw	a21, sp, 4 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 144
	addi	sp, sp, 148
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -148
	lw	ra, sp, 144
	j	be_cont.11734
be_else.11733:
be_cont.11734:
be_cont.11725:
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 60 ! 0
	bne	a1, a0, be_else.11737
	j	be_cont.11738
be_else.11737:
	lw	a0, sp, 64 ! 0
	lw	a1, sp, 84 ! 0
	lw	a21, sp, 0 ! 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -148
	lw	ra, sp, 144
be_cont.11738:
	li	a0, 1 ! 752
	ret ! 752
read_object.2604:
	lw	a1, a21, 20 ! 0
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	blt	a0, a3, bge_else.11739
	ret ! 765
bge_else.11739:
	sw	sp, a21, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a4, 16 ! 0
	mv	a21, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	bne	a0, a1, be_else.11741
	slli	a0, a1, 2 ! 764
	lw	a1, sp, 8 ! 0
	lw	a2, sp, 12 ! 0
	add	t0, a1, a0 ! 764
	sw	t0, a2, 0 ! 764
	ret ! 764
be_else.11741:
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 12 ! 0
	add	a0, a1, a0 ! 762
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
read_all_object.2606:
	lw	a0, a21, 8 ! 0
	lw	a1, a21, 4 ! 0
	mv	a21, a0
	mv	a0, a1
	lw	a20, a21, 0
	jalr	zero, a20, 0
read_net_item.2608:
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	sw	sp, a21, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0
	bne	a0, a1, be_else.11743
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 8 ! 0
	add	a0, a2, a0 ! 777
	j	min_caml_create_array
be_else.11743:
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 8 ! 0
	add	a1, a2, a1 ! 779
	lw	a21, sp, 0 ! 0
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8 ! 0
	slli	a1, a1, 2 ! 780
	lw	a2, sp, 16 ! 0
	add	t0, a0, a1 ! 780
	sw	t0, a2, 0 ! 780
	ret ! 780
read_or_network.2610:
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a21, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a2, 12 ! 0
	sw	sp, a3, 16 ! 0
	mv	a0, a3
	mv	a21, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, a0
	lw	a0, sp, 16 ! 0
	slli	a0, a0, 2 ! 785
	add	t0, a1, a0 ! 785
	lw	a0, t0, 0 ! 785
	lw	a2, sp, 12 ! 0
	bne	a0, a2, be_else.11744
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 8 ! 0
	add	a0, a2, a0 ! 786
	j	min_caml_create_array
be_else.11744:
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 8 ! 0
	add	a0, a2, a0 ! 788
	lw	a21, sp, 0 ! 0
	sw	sp, a1, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 8 ! 0
	slli	a1, a1, 2 ! 789
	lw	a2, sp, 20 ! 0
	add	t0, a0, a1 ! 789
	sw	t0, a2, 0 ! 789
	ret ! 789
read_and_network.2612:
	lw	a1, a21, 20 ! 0
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	sw	sp, a21, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a4, 20 ! 0
	mv	a0, a4
	mv	a21, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	slli	a1, a1, 2 ! 794
	add	t0, a0, a1 ! 794
	lw	a1, t0, 0 ! 794
	lw	a2, sp, 16 ! 0
	bne	a1, a2, be_else.11745
	ret ! 794
be_else.11745:
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 796
	lw	a3, sp, 8 ! 0
	add	t0, a3, a2 ! 796
	sw	t0, a0, 0 ! 796
	lw	a0, sp, 4 ! 0
	add	a0, a1, a0 ! 797
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
read_parameter.2614:
	lw	a0, a21, 28 ! 0
	lw	a1, a21, 24 ! 0
	lw	a2, a21, 20 ! 0
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	sw	sp, a5, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a3, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, a2, 20 ! 0
	mv	a21, a0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 8 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 8 ! 0
	slli	a1, a1, 2 ! 807
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 807
	sw	t0, a0, 0 ! 807
	ret ! 807
solver_rect_surface.2616:
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	slli	a8, a2, 2 ! 828
	add	t0, a1, a8 ! 828
	flw	fa3, t0, 0 ! 828
	sw	sp, a5, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	sw	sp, a4, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	sw	sp, a3, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, a6, 48 ! 0
	sw	sp, a1, 52 ! 0
	sw	sp, a2, 56 ! 0
	sw	sp, a0, 60 ! 0
	sw	sp, a7, 64 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fiszero
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 64 ! 0
	bne	a0, a1, be_else.11751
	lw	a0, sp, 60 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	o_param_abc.2538
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 60 ! 0
	sw	sp, a0, 68 ! 0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_isinvert.2528
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 56 ! 0
	slli	a2, a1, 2 ! 830
	lw	a3, sp, 52 ! 0
	add	t0, a3, a2 ! 830
	flw	fa0, t0, 0 ! 830
	sw	sp, a0, 72 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fisneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	mv	a1, a0
	lw	a0, sp, 72 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	xor.2435
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 56 ! 0
	slli	a2, a1, 2 ! 830
	lw	a3, sp, 68 ! 0
	add	t0, a3, a2 ! 830
	flw	fa0, t0, 0 ! 830
	lw	a21, sp, 48 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 832
	lw	a0, sp, 56 ! 0
	slli	a0, a0, 2 ! 832
	lw	a1, sp, 52 ! 0
	add	t0, a1, a0 ! 832
	flw	fa1, t0, 0 ! 832
	fdiv.s	fa0, fa0, fa1, rne ! 832
	lw	a0, sp, 32 ! 0
	slli	a2, a0, 2 ! 833
	add	t0, a1, a2 ! 833
	flw	fa1, t0, 0 ! 833
	fmul.s	fa1, fa0, fa1, rne ! 833
	flw	fa2, sp, 24 ! 0
	fadd.s	fa1, fa1, fa2, rne ! 833
	fsw	sp, fa0, 80 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fabs
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 32 ! 0
	slli	a0, a0, 2 ! 833
	lw	a1, sp, 68 ! 0
	add	t0, a1, a0 ! 833
	flw	fa1, t0, 0 ! 833
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fless
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 64 ! 0
	bne	a0, a1, be_else.11753
	li	a0, 0 ! 837
	ret ! 837
be_else.11753:
	lw	a0, sp, 16 ! 0
	slli	a2, a0, 2 ! 834
	lw	a3, sp, 52 ! 0
	add	t0, a3, a2 ! 834
	flw	fa0, t0, 0 ! 834
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 834
	flw	fa2, sp, 8 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 834
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fabs
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 16 ! 0
	slli	a0, a0, 2 ! 834
	lw	a1, sp, 68 ! 0
	add	t0, a1, a0 ! 834
	flw	fa1, t0, 0 ! 834
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fless
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 64 ! 0
	bne	a0, a1, be_else.11754
	li	a0, 0 ! 836
	ret ! 836
be_else.11754:
	slli	a0, a1, 2 ! 835
	lw	a1, sp, 0 ! 0
	flw	fa0, sp, 80 ! 0
	add	t0, a1, a0 ! 835
	fsw	t0, fa0, 0 ! 835
	li	a0, 1 ! 835
	ret ! 835
be_else.11751:
	li	a0, 0 ! 828
	ret ! 828
solver_rect.2625:
	lw	a2, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	fsw	sp, fa0, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	sw	sp, a4, 24 ! 0
	sw	sp, a5, 28 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a2, 40 ! 0
	sw	sp, a3, 44 ! 0
	mv	a21, a2
	mv	a2, a3
	mv	a3, a5
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a4, sp, 44 ! 0
	bne	a0, a4, be_else.11755
	flw	fa0, sp, 16 ! 0
	flw	fa1, sp, 8 ! 0
	flw	fa2, sp, 0 ! 0
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 28 ! 0
	lw	a3, sp, 24 ! 0
	lw	a21, sp, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a3, sp, 44 ! 0
	bne	a0, a3, be_else.11756
	flw	fa0, sp, 8 ! 0
	flw	fa1, sp, 0 ! 0
	flw	fa2, sp, 16 ! 0
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 24 ! 0
	lw	a4, sp, 28 ! 0
	lw	a21, sp, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 44 ! 0
	bne	a0, a1, be_else.11757
	li	a0, 0 ! 846
	ret ! 846
be_else.11757:
	li	a0, 3 ! 845
	ret ! 845
be_else.11756:
	li	a0, 2 ! 844
	ret ! 844
be_else.11755:
	li	a0, 1 ! 843
	ret ! 843
solver_surface.2631:
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	sw	sp, a4, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a2, 32 ! 0
	sw	sp, a5, 36 ! 0
	sw	sp, a1, 40 ! 0
	sw	sp, a3, 44 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_param_abc.2538
	addi	sp, sp, -52
	lw	ra, sp, 48
	mv	a1, a0
	lw	a0, sp, 40 ! 0
	lw	a21, sp, 44 ! 0
	sw	sp, a1, 48 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fispos
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a1, sp, 36 ! 0
	bne	a0, a1, be_else.11760
	li	a0, 0 ! 859
	ret ! 859
be_else.11760:
	flw	fa0, sp, 24 ! 0
	flw	fa1, sp, 16 ! 0
	flw	fa2, sp, 8 ! 0
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 857
	lw	a0, sp, 36 ! 0
	slli	a0, a0, 2 ! 857
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 857
	fsw	t0, fa0, 0 ! 857
	li	a0, 1 ! 858
	ret ! 858
quadratic.2637:
	lw	a1, a21, 28 ! 0
	lw	a2, a21, 24 ! 0
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	sw	sp, a1, 0 ! 0
	sw	sp, a2, 4 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a7, 20 ! 0
	sw	sp, a4, 24 ! 0
	fsw	sp, fa2, 32 ! 0
	sw	sp, a5, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	sw	sp, a0, 56 ! 0
	sw	sp, a6, 60 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fsqr
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 60 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 867
	flw	fa1, sp, 48 ! 0
	fsw	sp, fa0, 72 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fsqr
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 40 ! 0
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 867
	flw	fa1, sp, 72 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 867
	flw	fa1, sp, 32 ! 0
	fsw	sp, fa0, 88 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fsqr
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 24 ! 0
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 867
	flw	fa1, sp, 88 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 867
	lw	a0, sp, 56 ! 0
	fsw	sp, fa0, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	o_isrot.2530
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.11763
	flw	fa0, sp, 104 ! 0
	ret ! 870
be_else.11763:
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 48 ! 0
	fmul.s	fa2, fa1, fa0, rne ! 873
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 16 ! 0
	fsw	sp, fa2, 112 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 873
	flw	fa1, sp, 104 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 872
	flw	fa1, sp, 8 ! 0
	flw	fa2, sp, 32 ! 0
	fmul.s	fa2, fa2, fa1, rne ! 874
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 4 ! 0
	fsw	sp, fa0, 120 ! 0
	fsw	sp, fa2, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 874
	flw	fa1, sp, 120 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 872
	flw	fa1, sp, 48 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 875
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 0 ! 0
	fsw	sp, fa0, 136 ! 0
	fsw	sp, fa1, 144 ! 0
	sw	sp, ra, 152
	addi	sp, sp, 156
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 144 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 875
	flw	fa1, sp, 136 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 872
	ret ! 872
bilinear.2642:
	lw	a1, a21, 28 ! 0
	lw	a2, a21, 24 ! 0
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	fmul.s	fa6, fa0, fa3, rne ! 882
	sw	sp, a1, 0 ! 0
	sw	sp, a2, 4 ! 0
	fsw	sp, fa3, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a7, 28 ! 0
	sw	sp, a4, 32 ! 0
	fsw	sp, fa5, 40 ! 0
	fsw	sp, fa2, 48 ! 0
	sw	sp, a0, 56 ! 0
	sw	sp, a5, 60 ! 0
	fsw	sp, fa4, 64 ! 0
	fsw	sp, fa1, 72 ! 0
	fsw	sp, fa6, 80 ! 0
	mv	a21, a6
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 882
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 72 ! 0
	fmul.s	fa3, fa2, fa1, rne ! 883
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 60 ! 0
	fsw	sp, fa0, 88 ! 0
	fsw	sp, fa3, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 883
	flw	fa1, sp, 88 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 882
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 48 ! 0
	fmul.s	fa3, fa2, fa1, rne ! 884
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 32 ! 0
	fsw	sp, fa0, 104 ! 0
	fsw	sp, fa3, 112 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 884
	flw	fa1, sp, 104 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 882
	lw	a0, sp, 56 ! 0
	fsw	sp, fa0, 120 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	o_isrot.2530
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 28 ! 0
	bne	a0, a1, be_else.11765
	flw	fa0, sp, 120 ! 0
	ret ! 887
be_else.11765:
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 48 ! 0
	fmul.s	fa2, fa1, fa0, rne ! 890
	flw	fa3, sp, 40 ! 0
	flw	fa4, sp, 72 ! 0
	fmul.s	fa5, fa4, fa3, rne ! 890
	fadd.s	fa2, fa2, fa5, rne ! 890
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 24 ! 0
	fsw	sp, fa2, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 890
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 16 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 891
	flw	fa3, sp, 8 ! 0
	flw	fa4, sp, 48 ! 0
	fmul.s	fa4, fa4, fa3, rne ! 891
	fadd.s	fa1, fa1, fa4, rne ! 891
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 4 ! 0
	fsw	sp, fa0, 136 ! 0
	fsw	sp, fa1, 144 ! 0
	sw	sp, ra, 152
	addi	sp, sp, 156
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 144 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 891
	flw	fa1, sp, 136 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 890
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 16 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 892
	flw	fa2, sp, 8 ! 0
	flw	fa3, sp, 72 ! 0
	fmul.s	fa2, fa3, fa2, rne ! 892
	fadd.s	fa1, fa1, fa2, rne ! 892
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 0 ! 0
	fsw	sp, fa0, 152 ! 0
	fsw	sp, fa1, 160 ! 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 160 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 892
	flw	fa1, sp, 152 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 890
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_fhalf
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 120 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 889
	ret ! 889
solver_second.2650:
	lw	a2, a21, 28 ! 0
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	slli	a9, a7, 2 ! 907
	add	t0, a1, a9 ! 907
	flw	fa3, t0, 0 ! 907
	slli	a9, a8, 2 ! 907
	add	t0, a1, a9 ! 907
	flw	fa4, t0, 0 ! 907
	slli	a9, a5, 2 ! 907
	add	t0, a1, a9 ! 907
	flw	fa5, t0, 0 ! 907
	sw	sp, a2, 0 ! 0
	sw	sp, a6, 4 ! 0
	sw	sp, a3, 8 ! 0
	fsw	sp, fa2, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, a4, 44 ! 0
	sw	sp, a5, 48 ! 0
	sw	sp, a8, 52 ! 0
	sw	sp, a1, 56 ! 0
	sw	sp, a7, 60 ! 0
	mv	a21, a3
	fmv.s	fa2, fa5
	fmv.s	fa1, fa4
	fmv.s	fa0, fa3
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fiszero
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 60 ! 0
	bne	a0, a1, be_else.11767
	slli	a0, a1, 2 ! 914
	lw	a2, sp, 56 ! 0
	add	t0, a2, a0 ! 914
	flw	fa0, t0, 0 ! 914
	lw	a0, sp, 52 ! 0
	slli	a0, a0, 2 ! 914
	add	t0, a2, a0 ! 914
	flw	fa1, t0, 0 ! 914
	lw	a0, sp, 48 ! 0
	slli	a0, a0, 2 ! 914
	add	t0, a2, a0 ! 914
	flw	fa2, t0, 0 ! 914
	flw	fa3, sp, 32 ! 0
	flw	fa4, sp, 24 ! 0
	flw	fa5, sp, 16 ! 0
	lw	a0, sp, 40 ! 0
	lw	a21, sp, 44 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 32 ! 0
	flw	fa2, sp, 24 ! 0
	flw	fa3, sp, 16 ! 0
	lw	a0, sp, 40 ! 0
	lw	a21, sp, 8 ! 0
	fsw	sp, fa0, 72 ! 0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 40 ! 0
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_form.2524
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 4 ! 0
	bne	a0, a1, be_else.11768
	li	a0, l.6003 ! 917
	flw	fa0, a0, 0 ! 917
	flw	fa1, sp, 80 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 917
	j	be_cont.11769
be_else.11768:
	flw	fa0, sp, 80 ! 0
be_cont.11769:
	flw	fa1, sp, 72 ! 0
	fsw	sp, fa0, 88 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fsqr
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	flw	fa2, sp, 64 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 919
	fsub.s	fa0, fa0, fa1, rne ! 919
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fispos
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 60 ! 0
	bne	a0, a1, be_else.11770
	li	a0, 0 ! 927
	ret ! 927
be_else.11770:
	flw	fa0, sp, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_sqrt
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 40 ! 0
	fsw	sp, fa0, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	o_isinvert.2528
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 60 ! 0
	bne	a0, a1, be_else.11771
	flw	fa0, sp, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fneg
	addi	sp, sp, -116
	lw	ra, sp, 112
	j	be_cont.11772
be_else.11771:
	flw	fa0, sp, 104 ! 0
be_cont.11772:
	flw	fa1, sp, 72 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 924
	flw	fa1, sp, 64 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 924
	lw	a0, sp, 60 ! 0
	slli	a0, a0, 2 ! 924
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 924
	fsw	t0, fa0, 0 ! 924
	li	a0, 1 ! 924
	ret ! 924
be_else.11767:
	li	a0, 0 ! 910
	ret ! 910
solver.2656:
	lw	a3, a21, 40 ! 0
	lw	a4, a21, 36 ! 0
	lw	a5, a21, 32 ! 0
	lw	a6, a21, 28 ! 0
	lw	a7, a21, 24 ! 0
	lw	a8, a21, 20 ! 0
	lw	a9, a21, 16 ! 0
	lw	a10, a21, 12 ! 0
	lw	a11, a21, 8 ! 0
	lw	a12, a21, 4 ! 0
	slli	a0, a0, 2 ! 933
	add	t0, a6, a0 ! 933
	lw	a0, t0, 0 ! 933
	slli	a6, a11, 2 ! 935
	add	t0, a2, a6 ! 935
	flw	fa0, t0, 0 ! 935
	sw	sp, a4, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a7, 16 ! 0
	sw	sp, a10, 20 ! 0
	sw	sp, a0, 24 ! 0
	sw	sp, a8, 28 ! 0
	sw	sp, a2, 32 ! 0
	sw	sp, a12, 36 ! 0
	fsw	sp, fa0, 40 ! 0
	mv	a21, a9
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 935
	lw	a0, sp, 36 ! 0
	slli	a1, a0, 2 ! 936
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 936
	flw	fa1, t0, 0 ! 936
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	fsw	sp, fa0, 48 ! 0
	fsw	sp, fa1, 56 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 936
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 937
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 937
	flw	fa1, t0, 0 ! 937
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 16 ! 0
	fsw	sp, fa0, 64 ! 0
	fsw	sp, fa1, 72 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 937
	lw	a0, sp, 24 ! 0
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_form.2524
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 36 ! 0
	bne	a0, a1, be_else.11773
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 80 ! 0
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11773:
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.11774
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 80 ! 0
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11774:
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 80 ! 0
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_rect_fast.2660:
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	slli	a12, a10, 2 ! 965
	add	t0, a2, a12 ! 965
	flw	fa3, t0, 0 ! 965
	fsub.s	fa3, fa3, fa0, rne ! 965
	slli	a12, a11, 2 ! 965
	add	t0, a2, a12 ! 965
	flw	fa4, t0, 0 ! 965
	fmul.s	fa3, fa3, fa4, rne ! 965
	slli	a12, a11, 2 ! 967
	add	t0, a1, a12 ! 967
	flw	fa4, t0, 0 ! 967
	fmul.s	fa4, fa3, fa4, rne ! 967
	fadd.s	fa4, fa4, fa1, rne ! 967
	sw	sp, a3, 0 ! 0
	sw	sp, a7, 4 ! 0
	sw	sp, a6, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a9, 24 ! 0
	fsw	sp, fa1, 32 ! 0
	sw	sp, a2, 40 ! 0
	sw	sp, a11, 44 ! 0
	sw	sp, a4, 48 ! 0
	fsw	sp, fa2, 56 ! 0
	fsw	sp, fa3, 64 ! 0
	sw	sp, a1, 72 ! 0
	sw	sp, a8, 76 ! 0
	sw	sp, a10, 80 ! 0
	sw	sp, a0, 84 ! 0
	sw	sp, a5, 88 ! 0
	fmv.s	fa0, fa4
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_fabs
	addi	sp, sp, -96
	lw	ra, sp, 92
	lw	a0, sp, 84 ! 0
	lw	a21, sp, 88 ! 0
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	fmv.s	fa1, fa0
	flw	fa0, sp, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fless
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 80 ! 0
	bne	a0, a1, be_else.11779
	li	a0, 0 ! 971
	j	be_cont.11780
be_else.11779:
	lw	a0, sp, 76 ! 0
	slli	a2, a0, 2 ! 968
	lw	a3, sp, 72 ! 0
	add	t0, a3, a2 ! 968
	flw	fa0, t0, 0 ! 968
	flw	fa1, sp, 64 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 968
	flw	fa2, sp, 56 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 968
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fabs
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 84 ! 0
	lw	a21, sp, 48 ! 0
	fsw	sp, fa0, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	fmv.s	fa1, fa0
	flw	fa0, sp, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fless
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 80 ! 0
	bne	a0, a1, be_else.11781
	li	a0, 0 ! 970
	j	be_cont.11782
be_else.11781:
	lw	a0, sp, 44 ! 0
	slli	a2, a0, 2 ! 969
	lw	a3, sp, 40 ! 0
	add	t0, a3, a2 ! 969
	flw	fa0, t0, 0 ! 969
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fiszero
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 80 ! 0
	bne	a0, a1, be_else.11783
	li	a0, 1 ! 969
	j	be_cont.11784
be_else.11783:
	li	a0, 0 ! 969
be_cont.11784:
be_cont.11782:
be_cont.11780:
	bne	a0, a1, be_else.11785
	lw	a0, sp, 76 ! 0
	slli	a2, a0, 2 ! 974
	lw	a3, sp, 40 ! 0
	add	t0, a3, a2 ! 974
	flw	fa0, t0, 0 ! 974
	flw	fa1, sp, 32 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 974
	lw	a2, sp, 24 ! 0
	slli	a4, a2, 2 ! 974
	add	t0, a3, a4 ! 974
	flw	fa2, t0, 0 ! 974
	fmul.s	fa0, fa0, fa2, rne ! 974
	slli	a4, a1, 2 ! 976
	lw	a5, sp, 72 ! 0
	add	t0, a5, a4 ! 976
	flw	fa2, t0, 0 ! 976
	fmul.s	fa2, fa0, fa2, rne ! 976
	flw	fa3, sp, 16 ! 0
	fadd.s	fa2, fa2, fa3, rne ! 976
	fsw	sp, fa0, 112 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_fabs
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a0, sp, 84 ! 0
	lw	a21, sp, 8 ! 0
	fsw	sp, fa0, 120 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	fmv.s	fa1, fa0
	flw	fa0, sp, 120 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fless
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 80 ! 0
	bne	a0, a1, be_else.11786
	li	a0, 0 ! 980
	j	be_cont.11787
be_else.11786:
	lw	a0, sp, 76 ! 0
	slli	a0, a0, 2 ! 977
	lw	a2, sp, 72 ! 0
	add	t0, a2, a0 ! 977
	flw	fa0, t0, 0 ! 977
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 977
	flw	fa2, sp, 56 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 977
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fabs
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 84 ! 0
	lw	a21, sp, 48 ! 0
	fsw	sp, fa0, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	fmv.s	fa1, fa0
	flw	fa0, sp, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fless
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 80 ! 0
	bne	a0, a1, be_else.11788
	li	a0, 0 ! 979
	j	be_cont.11789
be_else.11788:
	lw	a0, sp, 24 ! 0
	slli	a0, a0, 2 ! 978
	lw	a2, sp, 40 ! 0
	add	t0, a2, a0 ! 978
	flw	fa0, t0, 0 ! 978
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fiszero
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 80 ! 0
	bne	a0, a1, be_else.11790
	li	a0, 1 ! 978
	j	be_cont.11791
be_else.11790:
	li	a0, 0 ! 978
be_cont.11791:
be_cont.11789:
be_cont.11787:
	bne	a0, a1, be_else.11792
	lw	a0, sp, 40 ! 0
	flw	fa0, a0, 16 ! 983
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 983
	lw	a2, sp, 4 ! 0
	slli	a3, a2, 2 ! 983
	add	t0, a0, a3 ! 983
	flw	fa1, t0, 0 ! 983
	fmul.s	fa0, fa0, fa1, rne ! 983
	slli	a3, a1, 2 ! 985
	lw	a4, sp, 72 ! 0
	add	t0, a4, a3 ! 985
	flw	fa1, t0, 0 ! 985
	fmul.s	fa1, fa0, fa1, rne ! 985
	flw	fa2, sp, 16 ! 0
	fadd.s	fa1, fa1, fa2, rne ! 985
	fsw	sp, fa0, 136 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fabs
	addi	sp, sp, -148
	lw	ra, sp, 144
	lw	a0, sp, 84 ! 0
	lw	a21, sp, 8 ! 0
	fsw	sp, fa0, 144 ! 0
	sw	sp, ra, 152
	addi	sp, sp, 156
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -156
	lw	ra, sp, 152
	fmv.s	fa1, fa0
	flw	fa0, sp, 144 ! 0
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_fless
	addi	sp, sp, -156
	lw	ra, sp, 152
	lw	a1, sp, 80 ! 0
	bne	a0, a1, be_else.11793
	li	a0, 0 ! 989
	j	be_cont.11794
be_else.11793:
	lw	a0, sp, 44 ! 0
	slli	a0, a0, 2 ! 986
	lw	a2, sp, 72 ! 0
	add	t0, a2, a0 ! 986
	flw	fa0, t0, 0 ! 986
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 986
	flw	fa2, sp, 32 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 986
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_fabs
	addi	sp, sp, -156
	lw	ra, sp, 152
	lw	a0, sp, 84 ! 0
	lw	a21, sp, 88 ! 0
	fsw	sp, fa0, 152 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -164
	lw	ra, sp, 160
	fmv.s	fa1, fa0
	flw	fa0, sp, 152 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fless
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a1, sp, 80 ! 0
	bne	a0, a1, be_else.11795
	li	a0, 0 ! 988
	j	be_cont.11796
be_else.11795:
	lw	a0, sp, 4 ! 0
	slli	a0, a0, 2 ! 987
	lw	a2, sp, 40 ! 0
	add	t0, a2, a0 ! 987
	flw	fa0, t0, 0 ! 987
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fiszero
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a1, sp, 80 ! 0
	bne	a0, a1, be_else.11797
	li	a0, 1 ! 987
	j	be_cont.11798
be_else.11797:
	li	a0, 0 ! 987
be_cont.11798:
be_cont.11796:
be_cont.11794:
	bne	a0, a1, be_else.11799
	li	a0, 0 ! 993
	ret ! 993
be_else.11799:
	slli	a0, a1, 2 ! 991
	lw	a1, sp, 0 ! 0
	flw	fa0, sp, 136 ! 0
	add	t0, a1, a0 ! 991
	fsw	t0, fa0, 0 ! 991
	li	a0, 3 ! 991
	ret ! 991
be_else.11792:
	slli	a0, a1, 2 ! 982
	lw	a1, sp, 0 ! 0
	flw	fa0, sp, 112 ! 0
	add	t0, a1, a0 ! 982
	fsw	t0, fa0, 0 ! 982
	li	a0, 2 ! 982
	ret ! 982
be_else.11785:
	slli	a0, a1, 2 ! 973
	lw	a1, sp, 0 ! 0
	flw	fa0, sp, 64 ! 0
	add	t0, a1, a0 ! 973
	fsw	t0, fa0, 0 ! 973
	li	a0, 1 ! 973
	ret ! 973
solver_surface_fast.2667:
	lw	a0, a21, 20 ! 0
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	slli	a6, a4, 2 ! 998
	add	t0, a1, a6 ! 998
	flw	fa3, t0, 0 ! 998
	sw	sp, a0, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	sw	sp, a3, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	sw	sp, a2, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, a1, 48 ! 0
	sw	sp, a5, 52 ! 0
	sw	sp, a4, 56 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fisneg
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0
	bne	a0, a1, be_else.11803
	li	a0, 0 ! 1002
	ret ! 1002
be_else.11803:
	lw	a0, sp, 52 ! 0
	slli	a0, a0, 2 ! 1000
	lw	a2, sp, 48 ! 0
	add	t0, a2, a0 ! 1000
	flw	fa0, t0, 0 ! 1000
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1000
	lw	a0, sp, 32 ! 0
	slli	a0, a0, 2 ! 1000
	add	t0, a2, a0 ! 1000
	flw	fa1, t0, 0 ! 1000
	flw	fa2, sp, 24 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1000
	fadd.s	fa0, fa0, fa1, rne ! 1000
	lw	a0, sp, 16 ! 0
	slli	a0, a0, 2 ! 1000
	add	t0, a2, a0 ! 1000
	flw	fa1, t0, 0 ! 1000
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1000
	fadd.s	fa0, fa0, fa1, rne ! 1000
	slli	a0, a1, 2 ! 999
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 999
	fsw	t0, fa0, 0 ! 999
	li	a0, 1 ! 1001
	ret ! 1001
solver_second_fast.2673:
	lw	a2, a21, 24 ! 0
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	slli	a8, a6, 2 ! 1008
	add	t0, a1, a8 ! 1008
	flw	fa3, t0, 0 ! 1008
	sw	sp, a2, 0 ! 0
	fsw	sp, fa3, 8 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a3, 20 ! 0
	fsw	sp, fa2, 24 ! 0
	sw	sp, a5, 32 ! 0
	fsw	sp, fa1, 40 ! 0
	sw	sp, a4, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	sw	sp, a1, 64 ! 0
	sw	sp, a7, 68 ! 0
	sw	sp, a6, 72 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fiszero
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11807
	lw	a0, sp, 68 ! 0
	slli	a0, a0, 2 ! 1012
	lw	a2, sp, 64 ! 0
	add	t0, a2, a0 ! 1012
	flw	fa0, t0, 0 ! 1012
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1012
	lw	a0, sp, 48 ! 0
	slli	a0, a0, 2 ! 1012
	add	t0, a2, a0 ! 1012
	flw	fa2, t0, 0 ! 1012
	flw	fa3, sp, 40 ! 0
	fmul.s	fa2, fa2, fa3, rne ! 1012
	fadd.s	fa0, fa0, fa2, rne ! 1012
	lw	a0, sp, 32 ! 0
	slli	a3, a0, 2 ! 1012
	add	t0, a2, a3 ! 1012
	flw	fa2, t0, 0 ! 1012
	flw	fa4, sp, 24 ! 0
	fmul.s	fa2, fa2, fa4, rne ! 1012
	fadd.s	fa0, fa0, fa2, rne ! 1012
	lw	a3, sp, 16 ! 0
	lw	a21, sp, 20 ! 0
	fsw	sp, fa0, 80 ! 0
	mv	a0, a3
	fmv.s	fa2, fa4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	o_form.2524
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 32 ! 0
	bne	a0, a1, be_else.11809
	li	a0, l.6003 ! 1014
	flw	fa0, a0, 0 ! 1014
	flw	fa1, sp, 88 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1014
	j	be_cont.11810
be_else.11809:
	flw	fa0, sp, 88 ! 0
be_cont.11810:
	flw	fa1, sp, 80 ! 0
	fsw	sp, fa0, 96 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fsqr
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 1015
	fsub.s	fa0, fa0, fa1, rne ! 1015
	fsw	sp, fa0, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fispos
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11811
	li	a0, 0 ! 1022
	ret ! 1022
be_else.11811:
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	o_isinvert.2528
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11812
	flw	fa0, sp, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_sqrt
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 80 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1020
	lw	a0, sp, 64 ! 0
	flw	fa1, a0, 16 ! 1020
	fmul.s	fa0, fa0, fa1, rne ! 1020
	lw	a0, sp, 72 ! 0
	slli	a0, a0, 2 ! 1020
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 1020
	fsw	t0, fa0, 0 ! 1020
	j	be_cont.11813
be_else.11812:
	flw	fa0, sp, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_sqrt
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 80 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1018
	lw	a0, sp, 64 ! 0
	flw	fa1, a0, 16 ! 1018
	fmul.s	fa0, fa0, fa1, rne ! 1018
	lw	a0, sp, 72 ! 0
	slli	a0, a0, 2 ! 1018
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 1018
	fsw	t0, fa0, 0 ! 1018
be_cont.11813:
	li	a0, 1 ! 1021
	ret ! 1021
be_else.11807:
	li	a0, 0 ! 1010
	ret ! 1010
solver_fast.2679:
	lw	a3, a21, 40 ! 0
	lw	a4, a21, 36 ! 0
	lw	a5, a21, 32 ! 0
	lw	a6, a21, 28 ! 0
	lw	a7, a21, 24 ! 0
	lw	a8, a21, 20 ! 0
	lw	a9, a21, 16 ! 0
	lw	a10, a21, 12 ! 0
	lw	a11, a21, 8 ! 0
	lw	a12, a21, 4 ! 0
	slli	a13, a0, 2 ! 1027
	add	t0, a6, a13 ! 1027
	lw	a6, t0, 0 ! 1027
	slli	a11, a11, 2 ! 1028
	add	t0, a2, a11 ! 1028
	flw	fa0, t0, 0 ! 1028
	sw	sp, a4, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a5, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a7, 20 ! 0
	sw	sp, a10, 24 ! 0
	sw	sp, a6, 28 ! 0
	sw	sp, a8, 32 ! 0
	sw	sp, a2, 36 ! 0
	sw	sp, a12, 40 ! 0
	fsw	sp, fa0, 48 ! 0
	mv	a0, a6
	mv	a21, a9
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1028
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 1029
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 1029
	flw	fa1, t0, 0 ! 1029
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 32 ! 0
	fsw	sp, fa0, 56 ! 0
	fsw	sp, fa1, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1029
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 1030
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 1030
	flw	fa1, t0, 0 ! 1030
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 20 ! 0
	fsw	sp, fa0, 72 ! 0
	fsw	sp, fa1, 80 ! 0
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1030
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	d_const.2585
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 12 ! 0
	slli	a1, a1, 2 ! 1032
	add	t0, a0, a1 ! 1032
	lw	a0, t0, 0 ! 1032
	lw	a1, sp, 28 ! 0
	sw	sp, a0, 96 ! 0
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	o_form.2524
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a1, sp, 40 ! 0
	bne	a0, a1, be_else.11815
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	d_vec.2583
	addi	sp, sp, -104
	lw	ra, sp, 100
	mv	a1, a0
	flw	fa0, sp, 56 ! 0
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 88 ! 0
	lw	a0, sp, 28 ! 0
	lw	a2, sp, 96 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11815:
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.11816
	flw	fa0, sp, 56 ! 0
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 88 ! 0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 96 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11816:
	flw	fa0, sp, 56 ! 0
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 88 ! 0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 96 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_surface_fast2.2683:
	lw	a0, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a4, 2 ! 1047
	add	t0, a1, a5 ! 1047
	flw	fa0, t0, 0 ! 1047
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fisneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	bne	a0, a1, be_else.11817
	li	a0, 0 ! 1050
	ret ! 1050
be_else.11817:
	slli	a0, a1, 2 ! 1048
	lw	a2, sp, 12 ! 0
	add	t0, a2, a0 ! 1048
	flw	fa0, t0, 0 ! 1048
	lw	a0, sp, 8 ! 0
	slli	a0, a0, 2 ! 1048
	lw	a2, sp, 4 ! 0
	add	t0, a2, a0 ! 1048
	flw	fa1, t0, 0 ! 1048
	fmul.s	fa0, fa0, fa1, rne ! 1048
	slli	a0, a1, 2 ! 1048
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 1048
	fsw	t0, fa0, 0 ! 1048
	li	a0, 1 ! 1049
	ret ! 1049
solver_second_fast2.2690:
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	slli	a8, a6, 2 ! 1056
	add	t0, a1, a8 ! 1056
	flw	fa3, t0, 0 ! 1056
	sw	sp, a3, 0 ! 0
	sw	sp, a0, 4 ! 0
	fsw	sp, fa3, 8 ! 0
	sw	sp, a2, 16 ! 0
	fsw	sp, fa2, 24 ! 0
	sw	sp, a5, 32 ! 0
	fsw	sp, fa1, 40 ! 0
	sw	sp, a4, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	sw	sp, a1, 64 ! 0
	sw	sp, a7, 68 ! 0
	sw	sp, a6, 72 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fiszero
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11821
	lw	a0, sp, 68 ! 0
	slli	a0, a0, 2 ! 1060
	lw	a2, sp, 64 ! 0
	add	t0, a2, a0 ! 1060
	flw	fa0, t0, 0 ! 1060
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1060
	lw	a0, sp, 48 ! 0
	slli	a0, a0, 2 ! 1060
	add	t0, a2, a0 ! 1060
	flw	fa1, t0, 0 ! 1060
	flw	fa2, sp, 40 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1060
	fadd.s	fa0, fa0, fa1, rne ! 1060
	lw	a0, sp, 32 ! 0
	slli	a3, a0, 2 ! 1060
	add	t0, a2, a3 ! 1060
	flw	fa1, t0, 0 ! 1060
	flw	fa2, sp, 24 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1060
	fadd.s	fa0, fa0, fa1, rne ! 1060
	slli	a0, a0, 2 ! 1061
	lw	a3, sp, 16 ! 0
	add	t0, a3, a0 ! 1061
	flw	fa1, t0, 0 ! 1061
	fsw	sp, fa0, 80 ! 0
	fsw	sp, fa1, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fsqr
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 1062
	fsub.s	fa0, fa0, fa1, rne ! 1062
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fispos
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11823
	li	a0, 0 ! 1069
	ret ! 1069
be_else.11823:
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	o_isinvert.2528
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11824
	flw	fa0, sp, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_sqrt
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 80 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1067
	lw	a0, sp, 64 ! 0
	flw	fa1, a0, 16 ! 1067
	fmul.s	fa0, fa0, fa1, rne ! 1067
	lw	a0, sp, 72 ! 0
	slli	a0, a0, 2 ! 1067
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 1067
	fsw	t0, fa0, 0 ! 1067
	j	be_cont.11825
be_else.11824:
	flw	fa0, sp, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_sqrt
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 80 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1065
	lw	a0, sp, 64 ! 0
	flw	fa1, a0, 16 ! 1065
	fmul.s	fa0, fa0, fa1, rne ! 1065
	lw	a0, sp, 72 ! 0
	slli	a0, a0, 2 ! 1065
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 1065
	fsw	t0, fa0, 0 ! 1065
be_cont.11825:
	li	a0, 1 ! 1068
	ret ! 1068
be_else.11821:
	li	a0, 0 ! 1058
	ret ! 1058
solver_fast2.2697:
	lw	a2, a21, 28 ! 0
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	slli	a9, a0, 2 ! 1074
	add	t0, a5, a9 ! 1074
	lw	a5, t0, 0 ! 1074
	sw	sp, a3, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a1, 20 ! 0
	sw	sp, a6, 24 ! 0
	sw	sp, a8, 28 ! 0
	sw	sp, a7, 32 ! 0
	mv	a0, a5
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	o_param_ctbl.2562
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 32 ! 0
	slli	a1, a1, 2 ! 1076
	add	t0, a0, a1 ! 1076
	flw	fa0, t0, 0 ! 1076
	lw	a1, sp, 28 ! 0
	slli	a2, a1, 2 ! 1077
	add	t0, a0, a2 ! 1077
	flw	fa1, t0, 0 ! 1077
	lw	a2, sp, 24 ! 0
	slli	a3, a2, 2 ! 1078
	add	t0, a0, a3 ! 1078
	flw	fa2, t0, 0 ! 1078
	lw	a3, sp, 20 ! 0
	sw	sp, a0, 36 ! 0
	fsw	sp, fa2, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	mv	a0, a3
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	d_const.2585
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a1, sp, 16 ! 0
	slli	a1, a1, 2 ! 1080
	add	t0, a0, a1 ! 1080
	lw	a0, t0, 0 ! 1080
	lw	a1, sp, 12 ! 0
	sw	sp, a0, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	o_form.2524
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 28 ! 0
	bne	a0, a1, be_else.11826
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	d_vec.2583
	addi	sp, sp, -72
	lw	ra, sp, 68
	mv	a1, a0
	flw	fa0, sp, 56 ! 0
	flw	fa1, sp, 48 ! 0
	flw	fa2, sp, 40 ! 0
	lw	a0, sp, 12 ! 0
	lw	a2, sp, 64 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11826:
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.11827
	flw	fa0, sp, 56 ! 0
	flw	fa1, sp, 48 ! 0
	flw	fa2, sp, 40 ! 0
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 64 ! 0
	lw	a2, sp, 36 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11827:
	flw	fa0, sp, 56 ! 0
	flw	fa1, sp, 48 ! 0
	flw	fa2, sp, 40 ! 0
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 64 ! 0
	lw	a2, sp, 36 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
setup_rect_table.2700:
	lw	a2, a21, 40 ! 0
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	li	a11, 6 ! 1096
	sw	sp, a6, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a8, 8 ! 0
	sw	sp, a7, 12 ! 0
	sw	sp, a3, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a10, 32 ! 0
	sw	sp, a5, 36 ! 0
	sw	sp, a4, 40 ! 0
	sw	sp, a1, 44 ! 0
	sw	sp, a0, 48 ! 0
	sw	sp, a9, 52 ! 0
	mv	a0, a11
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_float_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0
	slli	a2, a1, 2 ! 1098
	lw	a3, sp, 48 ! 0
	add	t0, a3, a2 ! 1098
	flw	fa0, t0, 0 ! 1098
	sw	sp, a0, 56 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fiszero
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 52 ! 0
	bne	a0, a1, be_else.11829
	lw	a0, sp, 44 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	o_isinvert.2528
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 52 ! 0
	slli	a2, a1, 2 ! 1102
	lw	a3, sp, 48 ! 0
	add	t0, a3, a2 ! 1102
	flw	fa0, t0, 0 ! 1102
	sw	sp, a0, 60 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fisneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	mv	a1, a0
	lw	a0, sp, 60 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	xor.2435
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a1, sp, 44 ! 0
	lw	a21, sp, 40 ! 0
	sw	sp, a0, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 52 ! 0
	slli	a1, a0, 2 ! 1102
	lw	a2, sp, 56 ! 0
	add	t0, a2, a1 ! 1102
	fsw	t0, fa0, 0 ! 1102
	li	a1, l.6003 ! 1104
	flw	fa0, a1, 0 ! 1104
	slli	a1, a0, 2 ! 1104
	lw	a3, sp, 48 ! 0
	add	t0, a3, a1 ! 1104
	flw	fa1, t0, 0 ! 1104
	fdiv.s	fa0, fa0, fa1, rne ! 1104
	lw	a1, sp, 32 ! 0
	slli	a4, a1, 2 ! 1104
	add	t0, a2, a4 ! 1104
	fsw	t0, fa0, 0 ! 1104
	j	be_cont.11830
be_else.11829:
	lw	a0, sp, 32 ! 0
	slli	a2, a0, 2 ! 1099
	lw	a3, sp, 56 ! 0
	flw	fa0, sp, 24 ! 0
	add	t0, a3, a2 ! 1099
	fsw	t0, fa0, 0 ! 1099
be_cont.11830:
	lw	a0, sp, 32 ! 0
	slli	a1, a0, 2 ! 1106
	lw	a2, sp, 48 ! 0
	add	t0, a2, a1 ! 1106
	flw	fa0, t0, 0 ! 1106
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fiszero
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 52 ! 0
	bne	a0, a1, be_else.11831
	lw	a0, sp, 44 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	o_isinvert.2528
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 32 ! 0
	slli	a2, a1, 2 ! 1109
	lw	a3, sp, 48 ! 0
	add	t0, a3, a2 ! 1109
	flw	fa0, t0, 0 ! 1109
	sw	sp, a0, 68 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fisneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	mv	a1, a0
	lw	a0, sp, 68 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	xor.2435
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 44 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, a0, 72 ! 0
	mv	a0, a1
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 72 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 12 ! 0
	slli	a1, a0, 2 ! 1109
	lw	a2, sp, 56 ! 0
	add	t0, a2, a1 ! 1109
	fsw	t0, fa0, 0 ! 1109
	li	a1, l.6003 ! 1110
	flw	fa0, a1, 0 ! 1110
	lw	a1, sp, 32 ! 0
	slli	a1, a1, 2 ! 1110
	lw	a3, sp, 48 ! 0
	add	t0, a3, a1 ! 1110
	flw	fa1, t0, 0 ! 1110
	fdiv.s	fa0, fa0, fa1, rne ! 1110
	lw	a1, sp, 8 ! 0
	slli	a1, a1, 2 ! 1110
	add	t0, a2, a1 ! 1110
	fsw	t0, fa0, 0 ! 1110
	j	be_cont.11832
be_else.11831:
	lw	a0, sp, 8 ! 0
	slli	a0, a0, 2 ! 1107
	lw	a2, sp, 56 ! 0
	flw	fa0, sp, 24 ! 0
	add	t0, a2, a0 ! 1107
	fsw	t0, fa0, 0 ! 1107
be_cont.11832:
	lw	a0, sp, 12 ! 0
	slli	a1, a0, 2 ! 1112
	lw	a3, sp, 48 ! 0
	add	t0, a3, a1 ! 1112
	flw	fa0, t0, 0 ! 1112
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fiszero
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 52 ! 0
	bne	a0, a1, be_else.11833
	lw	a0, sp, 44 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	o_isinvert.2528
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 1115
	lw	a3, sp, 48 ! 0
	add	t0, a3, a2 ! 1115
	flw	fa0, t0, 0 ! 1115
	sw	sp, a0, 76 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fisneg
	addi	sp, sp, -84
	lw	ra, sp, 80
	mv	a1, a0
	lw	a0, sp, 76 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	xor.2435
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a1, sp, 44 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 80 ! 0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 80 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 56 ! 0
	fsw	a0, fa0, 16 ! 1115
	li	a1, l.6003 ! 1116
	flw	fa0, a1, 0 ! 1116
	lw	a1, sp, 12 ! 0
	slli	a1, a1, 2 ! 1116
	lw	a2, sp, 48 ! 0
	add	t0, a2, a1 ! 1116
	flw	fa1, t0, 0 ! 1116
	fdiv.s	fa0, fa0, fa1, rne ! 1116
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 1116
	add	t0, a0, a1 ! 1116
	fsw	t0, fa0, 0 ! 1116
	j	be_cont.11834
be_else.11833:
	lw	a0, sp, 0 ! 0
	slli	a0, a0, 2 ! 1113
	lw	a1, sp, 56 ! 0
	flw	fa0, sp, 24 ! 0
	add	t0, a1, a0 ! 1113
	fsw	t0, fa0, 0 ! 1113
be_cont.11834:
	lw	a0, sp, 56 ! 0
	ret ! 1118
setup_surface_table.2703:
	lw	a2, a21, 32 ! 0
	lw	a3, a21, 28 ! 0
	lw	a4, a21, 24 ! 0
	lw	a5, a21, 20 ! 0
	lw	a6, a21, 16 ! 0
	lw	a7, a21, 12 ! 0
	lw	a8, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	li	a9, 4 ! 1123
	sw	sp, a6, 0 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, a2, 16 ! 0
	sw	sp, a5, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a8, 28 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a4, 36 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, a7, 44 ! 0
	mv	a0, a9
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_create_float_array
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 44 ! 0
	slli	a2, a1, 2 ! 1125
	lw	a3, sp, 40 ! 0
	add	t0, a3, a2 ! 1125
	flw	fa0, t0, 0 ! 1125
	lw	a2, sp, 32 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, a0, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	mv	a0, a2
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1125
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 1125
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 1125
	flw	fa1, t0, 0 ! 1125
	lw	a1, sp, 32 ! 0
	lw	a21, sp, 24 ! 0
	fsw	sp, fa0, 64 ! 0
	fsw	sp, fa1, 72 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1125
	flw	fa1, sp, 64 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1125
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 1125
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 1125
	flw	fa1, t0, 0 ! 1125
	lw	a1, sp, 32 ! 0
	lw	a21, sp, 16 ! 0
	fsw	sp, fa0, 80 ! 0
	fsw	sp, fa1, 88 ! 0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1125
	flw	fa1, sp, 80 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1125
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fispos
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 44 ! 0
	bne	a0, a1, be_else.11837
	slli	a0, a1, 2 ! 1135
	lw	a1, sp, 48 ! 0
	flw	fa0, sp, 8 ! 0
	add	t0, a1, a0 ! 1135
	fsw	t0, fa0, 0 ! 1135
	j	be_cont.11838
be_else.11837:
	li	a0, l.6005 ! 1129
	flw	fa0, a0, 0 ! 1129
	flw	fa1, sp, 96 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1129
	slli	a0, a1, 2 ! 1129
	lw	a1, sp, 48 ! 0
	add	t0, a1, a0 ! 1129
	fsw	t0, fa0, 0 ! 1129
	lw	a0, sp, 32 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1131
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fneg
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 28 ! 0
	slli	a0, a0, 2 ! 1131
	lw	a1, sp, 48 ! 0
	add	t0, a1, a0 ! 1131
	fsw	t0, fa0, 0 ! 1131
	lw	a0, sp, 32 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1132
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fneg
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 20 ! 0
	slli	a0, a0, 2 ! 1132
	lw	a1, sp, 48 ! 0
	add	t0, a1, a0 ! 1132
	fsw	t0, fa0, 0 ! 1132
	lw	a0, sp, 32 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1133
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fneg
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 0 ! 0
	slli	a0, a0, 2 ! 1133
	lw	a1, sp, 48 ! 0
	add	t0, a1, a0 ! 1133
	fsw	t0, fa0, 0 ! 1133
be_cont.11838:
	mv	a0, a1 ! 1136
	ret ! 1136
setup_second_table.2706:
	lw	a2, a21, 52 ! 0
	lw	a3, a21, 48 ! 0
	lw	a4, a21, 44 ! 0
	lw	a5, a21, 40 ! 0
	lw	a6, a21, 36 ! 0
	lw	a7, a21, 32 ! 0
	lw	a8, a21, 28 ! 0
	lw	a9, a21, 24 ! 0
	lw	a10, a21, 20 ! 0
	lw	a11, a21, 16 ! 0
	lw	a12, a21, 12 ! 0
	lw	a13, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	sw	sp, a5, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a11, 12 ! 0
	sw	sp, a6, 16 ! 0
	sw	sp, a7, 20 ! 0
	sw	sp, a8, 24 ! 0
	sw	sp, a1, 28 ! 0
	sw	sp, a2, 32 ! 0
	sw	sp, a10, 36 ! 0
	sw	sp, a13, 40 ! 0
	sw	sp, a0, 44 ! 0
	sw	sp, a12, 48 ! 0
	mv	a0, a9
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 48 ! 0
	slli	a2, a1, 2 ! 1144
	lw	a3, sp, 44 ! 0
	add	t0, a3, a2 ! 1144
	flw	fa0, t0, 0 ! 1144
	lw	a2, sp, 40 ! 0
	slli	a4, a2, 2 ! 1144
	add	t0, a3, a4 ! 1144
	flw	fa1, t0, 0 ! 1144
	lw	a4, sp, 36 ! 0
	slli	a5, a4, 2 ! 1144
	add	t0, a3, a5 ! 1144
	flw	fa2, t0, 0 ! 1144
	lw	a5, sp, 28 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, a0, 52 ! 0
	mv	a0, a5
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 48 ! 0
	slli	a1, a0, 2 ! 1145
	lw	a2, sp, 44 ! 0
	add	t0, a2, a1 ! 1145
	flw	fa1, t0, 0 ! 1145
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 24 ! 0
	fsw	sp, fa0, 56 ! 0
	fsw	sp, fa1, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1145
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 1146
	lw	a2, sp, 44 ! 0
	add	t0, a2, a1 ! 1146
	flw	fa1, t0, 0 ! 1146
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 20 ! 0
	fsw	sp, fa0, 72 ! 0
	fsw	sp, fa1, 80 ! 0
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1146
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 36 ! 0
	slli	a1, a0, 2 ! 1147
	lw	a2, sp, 44 ! 0
	add	t0, a2, a1 ! 1147
	flw	fa1, t0, 0 ! 1147
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 16 ! 0
	fsw	sp, fa0, 88 ! 0
	fsw	sp, fa1, 96 ! 0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1147
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fneg
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 48 ! 0
	slli	a1, a0, 2 ! 1149
	lw	a2, sp, 52 ! 0
	flw	fa1, sp, 56 ! 0
	add	t0, a2, a1 ! 1149
	fsw	t0, fa1, 0 ! 1149
	lw	a1, sp, 28 ! 0
	fsw	sp, fa0, 104 ! 0
	mv	a0, a1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	o_isrot.2530
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 48 ! 0
	bne	a0, a1, be_else.11839
	lw	a0, sp, 40 ! 0
	slli	a0, a0, 2 ! 1158
	lw	a2, sp, 52 ! 0
	flw	fa0, sp, 72 ! 0
	add	t0, a2, a0 ! 1158
	fsw	t0, fa0, 0 ! 1158
	lw	a0, sp, 36 ! 0
	slli	a0, a0, 2 ! 1159
	flw	fa0, sp, 88 ! 0
	add	t0, a2, a0 ! 1159
	fsw	t0, fa0, 0 ! 1159
	lw	a0, sp, 12 ! 0
	slli	a0, a0, 2 ! 1160
	flw	fa0, sp, 104 ! 0
	add	t0, a2, a0 ! 1160
	fsw	t0, fa0, 0 ! 1160
	j	be_cont.11840
be_else.11839:
	lw	a0, sp, 36 ! 0
	slli	a2, a0, 2 ! 1154
	lw	a3, sp, 44 ! 0
	add	t0, a3, a2 ! 1154
	flw	fa0, t0, 0 ! 1154
	lw	a2, sp, 28 ! 0
	lw	a21, sp, 8 ! 0
	fsw	sp, fa0, 112 ! 0
	mv	a0, a2
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1154
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 1154
	lw	a2, sp, 44 ! 0
	add	t0, a2, a1 ! 1154
	flw	fa1, t0, 0 ! 1154
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 4 ! 0
	fsw	sp, fa0, 120 ! 0
	fsw	sp, fa1, 128 ! 0
	mv	a0, a1
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1154
	flw	fa1, sp, 120 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1154
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fhalf
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 72 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1154
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 1154
	lw	a2, sp, 52 ! 0
	add	t0, a2, a1 ! 1154
	fsw	t0, fa0, 0 ! 1154
	lw	a1, sp, 36 ! 0
	slli	a3, a1, 2 ! 1155
	lw	a4, sp, 44 ! 0
	add	t0, a4, a3 ! 1155
	flw	fa0, t0, 0 ! 1155
	lw	a3, sp, 28 ! 0
	lw	a21, sp, 0 ! 0
	fsw	sp, fa0, 136 ! 0
	mv	a0, a3
	sw	sp, ra, 144
	addi	sp, sp, 148
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1155
	lw	a0, sp, 48 ! 0
	slli	a1, a0, 2 ! 1155
	lw	a2, sp, 44 ! 0
	add	t0, a2, a1 ! 1155
	flw	fa1, t0, 0 ! 1155
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 4 ! 0
	fsw	sp, fa0, 144 ! 0
	fsw	sp, fa1, 152 ! 0
	mv	a0, a1
	sw	sp, ra, 160
	addi	sp, sp, 164
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 152 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1155
	flw	fa1, sp, 144 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1155
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fhalf
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 88 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1155
	lw	a0, sp, 36 ! 0
	slli	a0, a0, 2 ! 1155
	lw	a1, sp, 52 ! 0
	add	t0, a1, a0 ! 1155
	fsw	t0, fa0, 0 ! 1155
	lw	a0, sp, 40 ! 0
	slli	a0, a0, 2 ! 1156
	lw	a2, sp, 44 ! 0
	add	t0, a2, a0 ! 1156
	flw	fa0, t0, 0 ! 1156
	lw	a0, sp, 28 ! 0
	lw	a21, sp, 0 ! 0
	fsw	sp, fa0, 160 ! 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 160 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1156
	lw	a0, sp, 48 ! 0
	slli	a1, a0, 2 ! 1156
	lw	a2, sp, 44 ! 0
	add	t0, a2, a1 ! 1156
	flw	fa1, t0, 0 ! 1156
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 8 ! 0
	fsw	sp, fa0, 168 ! 0
	fsw	sp, fa1, 176 ! 0
	mv	a0, a1
	sw	sp, ra, 184
	addi	sp, sp, 188
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 176 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1156
	flw	fa1, sp, 168 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1156
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_fhalf
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 104 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1156
	lw	a0, sp, 12 ! 0
	slli	a0, a0, 2 ! 1156
	lw	a1, sp, 52 ! 0
	add	t0, a1, a0 ! 1156
	fsw	t0, fa0, 0 ! 1156
be_cont.11840:
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_fiszero
	addi	sp, sp, -188
	lw	ra, sp, 184
	lw	a1, sp, 48 ! 0
	bne	a0, a1, be_else.11841
	li	a0, l.6003 ! 1163
	flw	fa0, a0, 0 ! 1163
	flw	fa1, sp, 56 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1163
	lw	a0, sp, 52 ! 0
	fsw	a0, fa0, 16 ! 1163
	j	be_cont.11842
be_else.11841:
be_cont.11842:
	lw	a0, sp, 52 ! 0
	ret ! 1165
iter_setup_dirvec_constants.2709:
	lw	a2, a21, 28 ! 0
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	blt	a1, a7, bge_else.11843
	slli	a7, a1, 2 ! 1172
	add	t0, a5, a7 ! 1172
	lw	a5, t0, 0 ! 1172
	sw	sp, a21, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a6, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a4, 20 ! 0
	sw	sp, a8, 24 ! 0
	sw	sp, a5, 28 ! 0
	sw	sp, a0, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	d_const.2585
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	d_vec.2583
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 28 ! 0
	sw	sp, a0, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	o_form.2524
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.11844
	lw	a0, sp, 40 ! 0
	lw	a2, sp, 28 ! 0
	lw	a21, sp, 20 ! 0
	mv	a1, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 36 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.11845
be_else.11844:
	lw	a2, sp, 12 ! 0
	bne	a0, a2, be_else.11846
	lw	a0, sp, 40 ! 0
	lw	a2, sp, 28 ! 0
	lw	a21, sp, 8 ! 0
	mv	a1, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 36 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.11847
be_else.11846:
	lw	a0, sp, 40 ! 0
	lw	a2, sp, 28 ! 0
	lw	a21, sp, 4 ! 0
	mv	a1, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 36 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.11847:
be_cont.11845:
	lw	a0, sp, 24 ! 0
	sub	a1, a1, a0 ! 1183
	lw	a0, sp, 32 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.11843:
	ret ! 1184
setup_dirvec_constants.2712:
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a3, a3, 2 ! 1188
	add	t0, a1, a3 ! 1188
	lw	a1, t0, 0 ! 1188
	sub	a1, a1, a4 ! 1188
	mv	a21, a2
	lw	a20, a21, 0
	jalr	zero, a20, 0
setup_startp_constants.2714:
	lw	a2, a21, 40 ! 0
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	blt	a1, a10, bge_else.11849
	slli	a12, a1, 2 ! 1197
	add	t0, a4, a12 ! 1197
	lw	a4, t0, 0 ! 1197
	sw	sp, a21, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a9, 12 ! 0
	sw	sp, a2, 16 ! 0
	sw	sp, a5, 20 ! 0
	sw	sp, a8, 24 ! 0
	sw	sp, a6, 28 ! 0
	sw	sp, a11, 32 ! 0
	sw	sp, a7, 36 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, a10, 44 ! 0
	sw	sp, a4, 48 ! 0
	mv	a0, a4
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	o_param_ctbl.2562
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 48 ! 0
	sw	sp, a0, 52 ! 0
	mv	a0, a1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	o_form.2524
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 44 ! 0
	slli	a2, a1, 2 ! 1200
	lw	a3, sp, 40 ! 0
	add	t0, a3, a2 ! 1200
	flw	fa0, t0, 0 ! 1200
	lw	a2, sp, 48 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, a0, 56 ! 0
	fsw	sp, fa0, 64 ! 0
	mv	a0, a2
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1200
	lw	a0, sp, 44 ! 0
	slli	a1, a0, 2 ! 1200
	lw	a2, sp, 52 ! 0
	add	t0, a2, a1 ! 1200
	fsw	t0, fa0, 0 ! 1200
	lw	a1, sp, 32 ! 0
	slli	a3, a1, 2 ! 1201
	lw	a4, sp, 40 ! 0
	add	t0, a4, a3 ! 1201
	flw	fa0, t0, 0 ! 1201
	lw	a3, sp, 48 ! 0
	lw	a21, sp, 28 ! 0
	fsw	sp, fa0, 72 ! 0
	mv	a0, a3
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1201
	lw	a0, sp, 32 ! 0
	slli	a1, a0, 2 ! 1201
	lw	a2, sp, 52 ! 0
	add	t0, a2, a1 ! 1201
	fsw	t0, fa0, 0 ! 1201
	lw	a1, sp, 24 ! 0
	slli	a3, a1, 2 ! 1202
	lw	a4, sp, 40 ! 0
	add	t0, a4, a3 ! 1202
	flw	fa0, t0, 0 ! 1202
	lw	a3, sp, 48 ! 0
	lw	a21, sp, 20 ! 0
	fsw	sp, fa0, 80 ! 0
	mv	a0, a3
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1202
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 1202
	lw	a2, sp, 52 ! 0
	add	t0, a2, a1 ! 1202
	fsw	t0, fa0, 0 ! 1202
	lw	a1, sp, 56 ! 0
	bne	a1, a0, be_else.11851
	lw	a1, sp, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_param_abc.2538
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 44 ! 0
	slli	a1, a1, 2 ! 1205
	lw	a2, sp, 52 ! 0
	add	t0, a2, a1 ! 1205
	flw	fa0, t0, 0 ! 1205
	lw	a1, sp, 32 ! 0
	slli	a3, a1, 2 ! 1205
	add	t0, a2, a3 ! 1205
	flw	fa1, t0, 0 ! 1205
	lw	a3, sp, 24 ! 0
	slli	a3, a3, 2 ! 1205
	add	t0, a2, a3 ! 1205
	flw	fa2, t0, 0 ! 1205
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 12 ! 0
	slli	a0, a0, 2 ! 1204
	lw	a1, sp, 52 ! 0
	add	t0, a1, a0 ! 1204
	fsw	t0, fa0, 0 ! 1204
	j	be_cont.11852
be_else.11851:
	blt	a0, a1, bge_else.11853
	j	bge_cont.11854
bge_else.11853:
	lw	a3, sp, 44 ! 0
	slli	a3, a3, 2 ! 1207
	add	t0, a2, a3 ! 1207
	flw	fa0, t0, 0 ! 1207
	lw	a3, sp, 32 ! 0
	slli	a4, a3, 2 ! 1207
	add	t0, a2, a4 ! 1207
	flw	fa1, t0, 0 ! 1207
	slli	a0, a0, 2 ! 1207
	add	t0, a2, a0 ! 1207
	flw	fa2, t0, 0 ! 1207
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 56 ! 0
	bne	a1, a0, be_else.11855
	li	a1, l.6003 ! 1208
	flw	fa1, a1, 0 ! 1208
	fsub.s	fa0, fa0, fa1, rne ! 1208
	j	be_cont.11856
be_else.11855:
be_cont.11856:
	slli	a0, a0, 2 ! 1208
	lw	a1, sp, 52 ! 0
	add	t0, a1, a0 ! 1208
	fsw	t0, fa0, 0 ! 1208
bge_cont.11854:
be_cont.11852:
	lw	a0, sp, 32 ! 0
	lw	a1, sp, 4 ! 0
	sub	a1, a1, a0 ! 1210
	lw	a0, sp, 40 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.11849:
	ret ! 1211
setup_startp.2717:
	lw	a1, a21, 24 ! 0
	lw	a2, a21, 20 ! 0
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	sw	sp, a0, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a5, 16 ! 0
	mv	a21, a1
	mv	a1, a0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	slli	a0, a0, 2 ! 1216
	lw	a1, sp, 12 ! 0
	add	t0, a1, a0 ! 1216
	lw	a0, t0, 0 ! 1216
	lw	a1, sp, 8 ! 0
	sub	a1, a0, a1 ! 1216
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
is_rect_outside.2719:
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a1, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	sw	sp, a2, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	sw	sp, a4, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a3, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fabs
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 36 ! 0
	lw	a21, sp, 40 ! 0
	fsw	sp, fa0, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	fmv.s	fa1, fa0
	flw	fa0, sp, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fless
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 32 ! 0
	bne	a0, a1, be_else.11861
	li	a0, 0 ! 1232
	j	be_cont.11862
be_else.11861:
	flw	fa0, sp, 24 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fabs
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 36 ! 0
	lw	a21, sp, 16 ! 0
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	fmv.s	fa1, fa0
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a1, sp, 32 ! 0
	bne	a0, a1, be_else.11863
	li	a0, 0 ! 1231
	j	be_cont.11864
be_else.11863:
	flw	fa0, sp, 8 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fabs
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 36 ! 0
	lw	a21, sp, 0 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	fmv.s	fa1, fa0
	flw	fa0, sp, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
be_cont.11864:
be_cont.11862:
	lw	a1, sp, 32 ! 0
	bne	a0, a1, be_else.11865
	lw	a0, sp, 36 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_isinvert.2528
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 32 ! 0
	bne	a0, a1, be_else.11866
	li	a0, 1 ! 1233
	ret ! 1233
be_else.11866:
	li	a0, 0 ! 1233
	ret ! 1233
be_else.11865:
	lw	a0, sp, 36 ! 0
	j	o_isinvert.2528
is_plane_outside.2724:
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	o_param_abc.2538
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa0, sp, 24 ! 0
	flw	fa1, sp, 16 ! 0
	flw	fa2, sp, 8 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 4 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_isinvert.2528
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa0, sp, 40 ! 0
	sw	sp, a0, 48 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fisneg
	addi	sp, sp, -56
	lw	ra, sp, 52
	mv	a1, a0
	lw	a0, sp, 48 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	xor.2435
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 0 ! 0
	bne	a0, a1, be_else.11868
	li	a0, 1 ! 1239
	ret ! 1239
be_else.11868:
	li	a0, 0 ! 1239
	ret ! 1239
is_second_outside.2729:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	sw	sp, a3, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a0, 8 ! 0
	mv	a21, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	o_form.2524
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 4 ! 0
	bne	a0, a1, be_else.11870
	li	a0, l.6003 ! 1245
	flw	fa0, a0, 0 ! 1245
	flw	fa1, sp, 16 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1245
	j	be_cont.11871
be_else.11870:
	flw	fa0, sp, 16 ! 0
be_cont.11871:
	lw	a0, sp, 8 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_isinvert.2528
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa0, sp, 24 ! 0
	sw	sp, a0, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fisneg
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	xor.2435
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 0 ! 0
	bne	a0, a1, be_else.11872
	li	a0, 1 ! 1246
	ret ! 1246
be_else.11872:
	li	a0, 0 ! 1246
	ret ! 1246
is_outside.2734:
	lw	a1, a21, 32 ! 0
	lw	a2, a21, 28 ! 0
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	sw	sp, a4, 0 ! 0
	sw	sp, a6, 4 ! 0
	sw	sp, a7, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a8, 16 ! 0
	fsw	sp, fa2, 24 ! 0
	sw	sp, a1, 32 ! 0
	fsw	sp, fa1, 40 ! 0
	sw	sp, a0, 48 ! 0
	sw	sp, a2, 52 ! 0
	fsw	sp, fa0, 56 ! 0
	mv	a21, a3
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1251
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 52 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1252
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 32 ! 0
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1253
	lw	a0, sp, 48 ! 0
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_form.2524
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 16 ! 0
	bne	a0, a1, be_else.11875
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 80 ! 0
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11875:
	lw	a1, sp, 8 ! 0
	bne	a0, a1, be_else.11876
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 80 ! 0
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11876:
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 80 ! 0
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
check_all_inside.2739:
	lw	a2, a21, 20 ! 0
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a7, a0, 2 ! 1265
	add	t0, a1, a7 ! 1265
	lw	a7, t0, 0 ! 1265
	bne	a7, a4, be_else.11877
	li	a0, 1 ! 1267
	ret ! 1267
be_else.11877:
	slli	a4, a7, 2 ! 1269
	add	t0, a2, a4 ! 1269
	lw	a2, t0, 0 ! 1269
	fsw	sp, fa2, 0 ! 0
	fsw	sp, fa1, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a21, 28 ! 0
	sw	sp, a6, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a5, 40 ! 0
	mv	a0, a2
	mv	a21, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0
	bne	a0, a1, be_else.11878
	lw	a0, sp, 32 ! 0
	lw	a1, sp, 36 ! 0
	add	a0, a1, a0 ! 1272
	flw	fa0, sp, 16 ! 0
	flw	fa1, sp, 8 ! 0
	flw	fa2, sp, 0 ! 0
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11878:
	li	a0, 0 ! 1270
	ret ! 1270
shadow_check_and_group.2745:
	lw	a2, a21, 44 ! 0
	lw	a3, a21, 40 ! 0
	lw	a4, a21, 36 ! 0
	lw	a5, a21, 32 ! 0
	lw	a6, a21, 28 ! 0
	lw	a7, a21, 24 ! 0
	lw	a8, a21, 20 ! 0
	lw	a9, a21, 16 ! 0
	lw	a10, a21, 12 ! 0
	lw	a11, a21, 8 ! 0
	lw	a12, a21, 4 ! 0
	slli	a13, a0, 2 ! 1285
	add	t0, a1, a13 ! 1285
	lw	a13, t0, 0 ! 1285
	bne	a13, a10, be_else.11879
	li	a0, 0 ! 1286
	ret ! 1286
be_else.11879:
	slli	a10, a0, 2 ! 1288
	add	t0, a1, a10 ! 1288
	lw	a10, t0, 0 ! 1288
	sw	sp, a8, 0 ! 0
	sw	sp, a9, 4 ! 0
	sw	sp, a7, 8 ! 0
	sw	sp, a6, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a21, 20 ! 0
	sw	sp, a12, 24 ! 0
	sw	sp, a0, 28 ! 0
	sw	sp, a4, 32 ! 0
	sw	sp, a10, 36 ! 0
	sw	sp, a3, 40 ! 0
	sw	sp, a11, 44 ! 0
	mv	a1, a5
	mv	a0, a10
	mv	a21, a2
	mv	a2, a7
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 44 ! 0
	slli	a2, a1, 2 ! 1290
	lw	a3, sp, 40 ! 0
	add	t0, a3, a2 ! 1290
	flw	fa0, t0, 0 ! 1290
	fsw	sp, fa0, 48 ! 0
	bne	a0, a1, be_else.11880
	li	a0, 0 ! 1291
	j	be_cont.11881
be_else.11880:
	li	a0, l.6339 ! 1291
	flw	fa1, a0, 0 ! 1291
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fless
	addi	sp, sp, -60
	lw	ra, sp, 56
be_cont.11881:
	lw	a1, sp, 44 ! 0
	bne	a0, a1, be_else.11882
	lw	a0, sp, 36 ! 0
	slli	a0, a0, 2 ! 1307
	lw	a2, sp, 32 ! 0
	add	t0, a2, a0 ! 1307
	lw	a0, t0, 0 ! 1307
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	o_isinvert.2528
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 44 ! 0
	bne	a0, a1, be_else.11883
	li	a0, 0 ! 1310
	ret ! 1310
be_else.11883:
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 28 ! 0
	add	a0, a1, a0 ! 1308
	lw	a1, sp, 16 ! 0
	lw	a21, sp, 20 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11882:
	li	a0, l.6341 ! 1294
	flw	fa0, a0, 0 ! 1294
	flw	fa1, sp, 48 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1294
	slli	a0, a1, 2 ! 1295
	lw	a2, sp, 12 ! 0
	add	t0, a2, a0 ! 1295
	flw	fa1, t0, 0 ! 1295
	fmul.s	fa1, fa1, fa0, rne ! 1295
	slli	a0, a1, 2 ! 1295
	lw	a3, sp, 8 ! 0
	add	t0, a3, a0 ! 1295
	flw	fa2, t0, 0 ! 1295
	fadd.s	fa1, fa1, fa2, rne ! 1295
	lw	a0, sp, 24 ! 0
	slli	a4, a0, 2 ! 1296
	add	t0, a2, a4 ! 1296
	flw	fa2, t0, 0 ! 1296
	fmul.s	fa2, fa2, fa0, rne ! 1296
	slli	a4, a0, 2 ! 1296
	add	t0, a3, a4 ! 1296
	flw	fa3, t0, 0 ! 1296
	fadd.s	fa2, fa2, fa3, rne ! 1296
	lw	a4, sp, 4 ! 0
	slli	a5, a4, 2 ! 1297
	add	t0, a2, a5 ! 1297
	flw	fa3, t0, 0 ! 1297
	fmul.s	fa0, fa3, fa0, rne ! 1297
	slli	a2, a4, 2 ! 1297
	add	t0, a3, a2 ! 1297
	flw	fa3, t0, 0 ! 1297
	fadd.s	fa0, fa0, fa3, rne ! 1297
	lw	a2, sp, 16 ! 0
	lw	a21, sp, 0 ! 0
	mv	a0, a1
	mv	a1, a2
	fmv.s	fa26, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa26
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 44 ! 0
	bne	a0, a1, be_else.11884
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 28 ! 0
	add	a0, a1, a0 ! 1301
	lw	a1, sp, 16 ! 0
	lw	a21, sp, 20 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11884:
	li	a0, 1 ! 1299
	ret ! 1299
shadow_check_one_or_group.2748:
	lw	a2, a21, 20 ! 0
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a7, a0, 2 ! 1315
	add	t0, a1, a7 ! 1315
	lw	a7, t0, 0 ! 1315
	bne	a7, a4, be_else.11885
	li	a0, 0 ! 1317
	ret ! 1317
be_else.11885:
	slli	a4, a7, 2 ! 1319
	add	t0, a3, a4 ! 1319
	lw	a3, t0, 0 ! 1319
	sw	sp, a1, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a5, 16 ! 0
	mv	a1, a3
	mv	a0, a5
	mv	a21, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	bne	a0, a1, be_else.11886
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 12 ! 0
	add	a0, a1, a0 ! 1324
	lw	a1, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11886:
	li	a0, 1 ! 1322
	ret ! 1322
shadow_check_one_or_matrix.2751:
	lw	a2, a21, 32 ! 0
	lw	a3, a21, 28 ! 0
	lw	a4, a21, 24 ! 0
	lw	a5, a21, 20 ! 0
	lw	a6, a21, 16 ! 0
	lw	a7, a21, 12 ! 0
	lw	a8, a21, 8 ! 0
	lw	a9, a21, 4 ! 0
	slli	a10, a0, 2 ! 1330
	add	t0, a1, a10 ! 1330
	lw	a10, t0, 0 ! 1330
	slli	a11, a8, 2 ! 1331
	add	t0, a10, a11 ! 1331
	lw	a11, t0, 0 ! 1331
	bne	a11, a7, be_else.11887
	li	a0, 0 ! 1333
	ret ! 1333
be_else.11887:
	li	a7, 99 ! 1336
	sw	sp, a10, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a21, 12 ! 0
	sw	sp, a9, 16 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, a8, 24 ! 0
	bne	a11, a7, be_else.11888
	li	a0, 1 ! 1337
	j	be_cont.11889
be_else.11888:
	sw	sp, a3, 28 ! 0
	mv	a1, a5
	mv	a0, a11
	mv	a21, a2
	mv	a2, a6
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.11890
	li	a0, 0 ! 1348
	j	be_cont.11891
be_else.11890:
	slli	a0, a1, 2 ! 1343
	lw	a2, sp, 28 ! 0
	add	t0, a2, a0 ! 1343
	flw	fa0, t0, 0 ! 1343
	li	a0, l.6355 ! 1343
	flw	fa1, a0, 0 ! 1343
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.11892
	li	a0, 0 ! 1347
	j	be_cont.11893
be_else.11892:
	lw	a0, sp, 16 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	mv	a1, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.11894
	li	a0, 0 ! 1346
	j	be_cont.11895
be_else.11894:
	li	a0, 1 ! 1345
be_cont.11895:
be_cont.11893:
be_cont.11891:
be_cont.11889:
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.11896
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 20 ! 0
	add	a0, a1, a0 ! 1355
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11896:
	lw	a0, sp, 16 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	mv	a1, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.11897
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 20 ! 0
	add	a0, a1, a0 ! 1353
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11897:
	li	a0, 1 ! 1351
	ret ! 1351
solve_each_element.2754:
	lw	a3, a21, 60 ! 0
	lw	a4, a21, 56 ! 0
	lw	a5, a21, 52 ! 0
	lw	a6, a21, 48 ! 0
	lw	a7, a21, 44 ! 0
	lw	a8, a21, 40 ! 0
	lw	a9, a21, 36 ! 0
	lw	a10, a21, 32 ! 0
	lw	a11, a21, 28 ! 0
	lw	a12, a21, 24 ! 0
	lw	a13, a21, 20 ! 0
	lw	a14, a21, 16 ! 0
	lw	a15, a21, 12 ! 0
	lw	a16, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	slli	a17, a0, 2 ! 1366
	add	t0, a1, a17 ! 1366
	lw	a17, t0, 0 ! 1366
	bne	a17, a14, be_else.11898
	ret ! 1367
be_else.11898:
	sw	sp, a9, 0 ! 0
	sw	sp, a11, 4 ! 0
	sw	sp, a10, 8 ! 0
	sw	sp, a3, 12 ! 0
	sw	sp, a12, 16 ! 0
	sw	sp, a13, 20 ! 0
	sw	sp, a5, 24 ! 0
	sw	sp, a4, 28 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, a6, 40 ! 0
	sw	sp, a2, 44 ! 0
	sw	sp, a1, 48 ! 0
	sw	sp, a21, 52 ! 0
	sw	sp, a16, 56 ! 0
	sw	sp, a0, 60 ! 0
	sw	sp, a8, 64 ! 0
	sw	sp, a17, 68 ! 0
	sw	sp, a15, 72 ! 0
	mv	a1, a2
	mv	a0, a17
	mv	a21, a7
	mv	a2, a5
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11900
	lw	a0, sp, 68 ! 0
	slli	a0, a0, 2 ! 1398
	lw	a2, sp, 64 ! 0
	add	t0, a2, a0 ! 1398
	lw	a0, t0, 0 ! 1398
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	o_isinvert.2528
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11901
	ret ! 1400
be_else.11901:
	lw	a0, sp, 56 ! 0
	lw	a1, sp, 60 ! 0
	add	a0, a1, a0 ! 1399
	lw	a1, sp, 48 ! 0
	lw	a2, sp, 44 ! 0
	lw	a21, sp, 52 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11900:
	slli	a2, a1, 2 ! 1374
	lw	a3, sp, 40 ! 0
	add	t0, a3, a2 ! 1374
	flw	fa1, t0, 0 ! 1374
	flw	fa0, sp, 32 ! 0
	sw	sp, a0, 76 ! 0
	fsw	sp, fa1, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fless
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11903
	j	be_cont.11904
be_else.11903:
	slli	a0, a1, 2 ! 1377
	lw	a2, sp, 28 ! 0
	add	t0, a2, a0 ! 1377
	flw	fa1, t0, 0 ! 1377
	flw	fa0, sp, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fless
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11905
	j	be_cont.11906
be_else.11905:
	li	a0, l.6341 ! 1379
	flw	fa0, a0, 0 ! 1379
	flw	fa1, sp, 80 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1379
	slli	a0, a1, 2 ! 1380
	lw	a2, sp, 44 ! 0
	add	t0, a2, a0 ! 1380
	flw	fa1, t0, 0 ! 1380
	fmul.s	fa1, fa1, fa0, rne ! 1380
	slli	a0, a1, 2 ! 1380
	lw	a3, sp, 24 ! 0
	add	t0, a3, a0 ! 1380
	flw	fa2, t0, 0 ! 1380
	fadd.s	fa1, fa1, fa2, rne ! 1380
	lw	a0, sp, 56 ! 0
	slli	a4, a0, 2 ! 1381
	add	t0, a2, a4 ! 1381
	flw	fa2, t0, 0 ! 1381
	fmul.s	fa2, fa2, fa0, rne ! 1381
	slli	a4, a0, 2 ! 1381
	add	t0, a3, a4 ! 1381
	flw	fa3, t0, 0 ! 1381
	fadd.s	fa2, fa2, fa3, rne ! 1381
	lw	a4, sp, 20 ! 0
	slli	a5, a4, 2 ! 1382
	add	t0, a2, a5 ! 1382
	flw	fa3, t0, 0 ! 1382
	fmul.s	fa3, fa3, fa0, rne ! 1382
	slli	a4, a4, 2 ! 1382
	add	t0, a3, a4 ! 1382
	flw	fa4, t0, 0 ! 1382
	fadd.s	fa3, fa3, fa4, rne ! 1382
	lw	a3, sp, 48 ! 0
	lw	a21, sp, 16 ! 0
	fsw	sp, fa3, 88 ! 0
	fsw	sp, fa2, 96 ! 0
	fsw	sp, fa1, 104 ! 0
	fsw	sp, fa0, 112 ! 0
	mv	a0, a1
	mv	a1, a3
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a1, sp, 72 ! 0
	bne	a0, a1, be_else.11907
	j	be_cont.11908
be_else.11907:
	slli	a0, a1, 2 ! 1385
	lw	a2, sp, 28 ! 0
	flw	fa0, sp, 112 ! 0
	add	t0, a2, a0 ! 1385
	fsw	t0, fa0, 0 ! 1385
	flw	fa0, sp, 104 ! 0
	flw	fa1, sp, 96 ! 0
	flw	fa2, sp, 88 ! 0
	lw	a0, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a0, sp, 72 ! 0
	slli	a1, a0, 2 ! 1387
	lw	a2, sp, 4 ! 0
	lw	a3, sp, 68 ! 0
	add	t0, a2, a1 ! 1387
	sw	t0, a3, 0 ! 1387
	slli	a0, a0, 2 ! 1388
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 76 ! 0
	add	t0, a1, a0 ! 1388
	sw	t0, a2, 0 ! 1388
be_cont.11908:
be_cont.11906:
be_cont.11904:
	lw	a0, sp, 56 ! 0
	lw	a1, sp, 60 ! 0
	add	a0, a1, a0 ! 1394
	lw	a1, sp, 48 ! 0
	lw	a2, sp, 44 ! 0
	lw	a21, sp, 52 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network.2758:
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	slli	a8, a0, 2 ! 1407
	add	t0, a1, a8 ! 1407
	lw	a8, t0, 0 ! 1407
	bne	a8, a5, be_else.11909
	ret ! 1412
be_else.11909:
	slli	a5, a8, 2 ! 1409
	add	t0, a4, a5 ! 1409
	lw	a4, t0, 0 ! 1409
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a21, 8 ! 0
	sw	sp, a7, 12 ! 0
	sw	sp, a0, 16 ! 0
	mv	a1, a4
	mv	a0, a6
	mv	a21, a3
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 16 ! 0
	add	a0, a1, a0 ! 1411
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_or_matrix.2762:
	lw	a3, a21, 32 ! 0
	lw	a4, a21, 28 ! 0
	lw	a5, a21, 24 ! 0
	lw	a6, a21, 20 ! 0
	lw	a7, a21, 16 ! 0
	lw	a8, a21, 12 ! 0
	lw	a9, a21, 8 ! 0
	lw	a10, a21, 4 ! 0
	slli	a11, a0, 2 ! 1417
	add	t0, a1, a11 ! 1417
	lw	a11, t0, 0 ! 1417
	slli	a12, a9, 2 ! 1418
	add	t0, a11, a12 ! 1418
	lw	a12, t0, 0 ! 1418
	bne	a12, a8, be_else.11911
	ret ! 1420
be_else.11911:
	li	a8, 99 ! 1422
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a21, 8 ! 0
	sw	sp, a10, 12 ! 0
	sw	sp, a0, 16 ! 0
	bne	a12, a8, be_else.11913
	mv	a1, a11
	mv	a0, a10
	mv	a21, a7
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	be_cont.11914
be_else.11913:
	sw	sp, a11, 20 ! 0
	sw	sp, a7, 24 ! 0
	sw	sp, a3, 28 ! 0
	sw	sp, a5, 32 ! 0
	sw	sp, a9, 36 ! 0
	mv	a1, a2
	mv	a0, a12
	mv	a21, a6
	mv	a2, a4
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0
	bne	a0, a1, be_else.11915
	j	be_cont.11916
be_else.11915:
	slli	a0, a1, 2 ! 1429
	lw	a2, sp, 32 ! 0
	add	t0, a2, a0 ! 1429
	flw	fa0, t0, 0 ! 1429
	slli	a0, a1, 2 ! 1430
	lw	a2, sp, 28 ! 0
	add	t0, a2, a0 ! 1430
	flw	fa1, t0, 0 ! 1430
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0
	bne	a0, a1, be_else.11917
	j	be_cont.11918
be_else.11917:
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
be_cont.11918:
be_cont.11916:
be_cont.11914:
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 16 ! 0
	add	a0, a1, a0 ! 1435
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
judge_intersection.2766:
	lw	a1, a21, 20 ! 0
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	slli	a5, a4, 2 ! 1444
	add	t0, a2, a5 ! 1444
	fsw	t0, fa0, 0 ! 1444
	slli	a5, a4, 2 ! 1445
	add	t0, a3, a5 ! 1445
	lw	a3, t0, 0 ! 1445
	sw	sp, a2, 0 ! 0
	sw	sp, a4, 4 ! 0
	mv	a2, a0
	mv	a21, a1
	mv	a1, a3
	mv	a0, a4
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	slli	a1, a0, 2 ! 1446
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 1446
	flw	fa1, t0, 0 ! 1446
	li	a1, l.6355 ! 1448
	flw	fa0, a1, 0 ! 1448
	fsw	sp, fa1, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 4 ! 0
	bne	a0, a1, be_else.11919
	li	a0, 0 ! 1450
	ret ! 1450
be_else.11919:
	li	a0, l.6381 ! 1449
	flw	fa1, a0, 0 ! 1449
	flw	fa0, sp, 8 ! 0
	j	min_caml_fless
solve_each_element_fast.2768:
	lw	a3, a21, 60 ! 0
	lw	a4, a21, 56 ! 0
	lw	a5, a21, 52 ! 0
	lw	a6, a21, 48 ! 0
	lw	a7, a21, 44 ! 0
	lw	a8, a21, 40 ! 0
	lw	a9, a21, 36 ! 0
	lw	a10, a21, 32 ! 0
	lw	a11, a21, 28 ! 0
	lw	a12, a21, 24 ! 0
	lw	a13, a21, 20 ! 0
	lw	a14, a21, 16 ! 0
	lw	a15, a21, 12 ! 0
	lw	a16, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	sw	sp, a9, 0 ! 0
	sw	sp, a11, 4 ! 0
	sw	sp, a10, 8 ! 0
	sw	sp, a3, 12 ! 0
	sw	sp, a12, 16 ! 0
	sw	sp, a13, 20 ! 0
	sw	sp, a5, 24 ! 0
	sw	sp, a4, 28 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, a7, 40 ! 0
	sw	sp, a21, 44 ! 0
	sw	sp, a16, 48 ! 0
	sw	sp, a8, 52 ! 0
	sw	sp, a15, 56 ! 0
	sw	sp, a2, 60 ! 0
	sw	sp, a6, 64 ! 0
	sw	sp, a14, 68 ! 0
	sw	sp, a1, 72 ! 0
	sw	sp, a0, 76 ! 0
	mv	a0, a2
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	d_vec.2583
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a1, sp, 76 ! 0
	slli	a2, a1, 2 ! 1460
	lw	a3, sp, 72 ! 0
	add	t0, a3, a2 ! 1460
	lw	a2, t0, 0 ! 1460
	lw	a4, sp, 68 ! 0
	bne	a2, a4, be_else.11920
	ret ! 1461
be_else.11920:
	lw	a4, sp, 60 ! 0
	lw	a21, sp, 64 ! 0
	sw	sp, a0, 80 ! 0
	sw	sp, a2, 84 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 56 ! 0
	bne	a0, a1, be_else.11922
	lw	a0, sp, 84 ! 0
	slli	a0, a0, 2 ! 1492
	lw	a2, sp, 52 ! 0
	add	t0, a2, a0 ! 1492
	lw	a0, t0, 0 ! 1492
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_isinvert.2528
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 56 ! 0
	bne	a0, a1, be_else.11923
	ret ! 1494
be_else.11923:
	lw	a0, sp, 48 ! 0
	lw	a1, sp, 76 ! 0
	add	a0, a1, a0 ! 1493
	lw	a1, sp, 72 ! 0
	lw	a2, sp, 60 ! 0
	lw	a21, sp, 44 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11922:
	slli	a2, a1, 2 ! 1468
	lw	a3, sp, 40 ! 0
	add	t0, a3, a2 ! 1468
	flw	fa1, t0, 0 ! 1468
	flw	fa0, sp, 32 ! 0
	sw	sp, a0, 88 ! 0
	fsw	sp, fa1, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fless
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 56 ! 0
	bne	a0, a1, be_else.11926
	j	be_cont.11927
be_else.11926:
	slli	a0, a1, 2 ! 1471
	lw	a2, sp, 28 ! 0
	add	t0, a2, a0 ! 1471
	flw	fa1, t0, 0 ! 1471
	flw	fa0, sp, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fless
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 56 ! 0
	bne	a0, a1, be_else.11928
	j	be_cont.11929
be_else.11928:
	li	a0, l.6341 ! 1473
	flw	fa0, a0, 0 ! 1473
	flw	fa1, sp, 96 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1473
	slli	a0, a1, 2 ! 1474
	lw	a2, sp, 80 ! 0
	add	t0, a2, a0 ! 1474
	flw	fa1, t0, 0 ! 1474
	fmul.s	fa1, fa1, fa0, rne ! 1474
	slli	a0, a1, 2 ! 1474
	lw	a3, sp, 24 ! 0
	add	t0, a3, a0 ! 1474
	flw	fa2, t0, 0 ! 1474
	fadd.s	fa1, fa1, fa2, rne ! 1474
	lw	a0, sp, 48 ! 0
	slli	a4, a0, 2 ! 1475
	add	t0, a2, a4 ! 1475
	flw	fa2, t0, 0 ! 1475
	fmul.s	fa2, fa2, fa0, rne ! 1475
	slli	a4, a0, 2 ! 1475
	add	t0, a3, a4 ! 1475
	flw	fa3, t0, 0 ! 1475
	fadd.s	fa2, fa2, fa3, rne ! 1475
	lw	a4, sp, 20 ! 0
	slli	a5, a4, 2 ! 1476
	add	t0, a2, a5 ! 1476
	flw	fa3, t0, 0 ! 1476
	fmul.s	fa3, fa3, fa0, rne ! 1476
	slli	a2, a4, 2 ! 1476
	add	t0, a3, a2 ! 1476
	flw	fa4, t0, 0 ! 1476
	fadd.s	fa3, fa3, fa4, rne ! 1476
	lw	a2, sp, 72 ! 0
	lw	a21, sp, 16 ! 0
	fsw	sp, fa3, 104 ! 0
	fsw	sp, fa2, 112 ! 0
	fsw	sp, fa1, 120 ! 0
	fsw	sp, fa0, 128 ! 0
	mv	a0, a1
	mv	a1, a2
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 56 ! 0
	bne	a0, a1, be_else.11930
	j	be_cont.11931
be_else.11930:
	slli	a0, a1, 2 ! 1479
	lw	a2, sp, 28 ! 0
	flw	fa0, sp, 128 ! 0
	add	t0, a2, a0 ! 1479
	fsw	t0, fa0, 0 ! 1479
	flw	fa0, sp, 120 ! 0
	flw	fa1, sp, 112 ! 0
	flw	fa2, sp, 104 ! 0
	lw	a0, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a0, sp, 56 ! 0
	slli	a1, a0, 2 ! 1481
	lw	a2, sp, 4 ! 0
	lw	a3, sp, 84 ! 0
	add	t0, a2, a1 ! 1481
	sw	t0, a3, 0 ! 1481
	slli	a0, a0, 2 ! 1482
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 88 ! 0
	add	t0, a1, a0 ! 1482
	sw	t0, a2, 0 ! 1482
be_cont.11931:
be_cont.11929:
be_cont.11927:
	lw	a0, sp, 48 ! 0
	lw	a1, sp, 76 ! 0
	add	a0, a1, a0 ! 1488
	lw	a1, sp, 72 ! 0
	lw	a2, sp, 60 ! 0
	lw	a21, sp, 44 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network_fast.2772:
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	slli	a8, a0, 2 ! 1500
	add	t0, a1, a8 ! 1500
	lw	a8, t0, 0 ! 1500
	bne	a8, a5, be_else.11932
	ret ! 1505
be_else.11932:
	slli	a5, a8, 2 ! 1502
	add	t0, a4, a5 ! 1502
	lw	a4, t0, 0 ! 1502
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a21, 8 ! 0
	sw	sp, a7, 12 ! 0
	sw	sp, a0, 16 ! 0
	mv	a1, a4
	mv	a0, a6
	mv	a21, a3
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 16 ! 0
	add	a0, a1, a0 ! 1504
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_or_matrix_fast.2776:
	lw	a3, a21, 28 ! 0
	lw	a4, a21, 24 ! 0
	lw	a5, a21, 20 ! 0
	lw	a6, a21, 16 ! 0
	lw	a7, a21, 12 ! 0
	lw	a8, a21, 8 ! 0
	lw	a9, a21, 4 ! 0
	slli	a10, a0, 2 ! 1510
	add	t0, a1, a10 ! 1510
	lw	a10, t0, 0 ! 1510
	slli	a11, a8, 2 ! 1511
	add	t0, a10, a11 ! 1511
	lw	a11, t0, 0 ! 1511
	bne	a11, a7, be_else.11934
	ret ! 1513
be_else.11934:
	li	a7, 99 ! 1515
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a21, 8 ! 0
	sw	sp, a9, 12 ! 0
	sw	sp, a0, 16 ! 0
	bne	a11, a7, be_else.11936
	mv	a1, a10
	mv	a0, a9
	mv	a21, a6
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	be_cont.11937
be_else.11936:
	sw	sp, a10, 20 ! 0
	sw	sp, a6, 24 ! 0
	sw	sp, a3, 28 ! 0
	sw	sp, a5, 32 ! 0
	sw	sp, a8, 36 ! 0
	mv	a1, a2
	mv	a0, a11
	mv	a21, a4
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0
	bne	a0, a1, be_else.11938
	j	be_cont.11939
be_else.11938:
	slli	a0, a1, 2 ! 1522
	lw	a2, sp, 32 ! 0
	add	t0, a2, a0 ! 1522
	flw	fa0, t0, 0 ! 1522
	slli	a0, a1, 2 ! 1523
	lw	a2, sp, 28 ! 0
	add	t0, a2, a0 ! 1523
	flw	fa1, t0, 0 ! 1523
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0
	bne	a0, a1, be_else.11940
	j	be_cont.11941
be_else.11940:
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
be_cont.11941:
be_cont.11939:
be_cont.11937:
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 16 ! 0
	add	a0, a1, a0 ! 1528
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
judge_intersection_fast.2780:
	lw	a1, a21, 20 ! 0
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	slli	a5, a4, 2 ! 1535
	add	t0, a2, a5 ! 1535
	fsw	t0, fa0, 0 ! 1535
	slli	a5, a4, 2 ! 1536
	add	t0, a3, a5 ! 1536
	lw	a3, t0, 0 ! 1536
	sw	sp, a2, 0 ! 0
	sw	sp, a4, 4 ! 0
	mv	a2, a0
	mv	a21, a1
	mv	a1, a3
	mv	a0, a4
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	slli	a1, a0, 2 ! 1537
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 1537
	flw	fa1, t0, 0 ! 1537
	li	a1, l.6355 ! 1539
	flw	fa0, a1, 0 ! 1539
	fsw	sp, fa1, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 4 ! 0
	bne	a0, a1, be_else.11942
	li	a0, 0 ! 1541
	ret ! 1541
be_else.11942:
	li	a0, l.6381 ! 1540
	flw	fa1, a0, 0 ! 1540
	flw	fa0, sp, 8 ! 0
	j	min_caml_fless
get_nvector_rect.2782:
	lw	a1, a21, 24 ! 0
	lw	a2, a21, 20 ! 0
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a5, a5, 2 ! 1555
	add	t0, a4, a5 ! 1555
	lw	a4, t0, 0 ! 1555
	sw	sp, a3, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a6, 12 ! 0
	sw	sp, a4, 16 ! 0
	mv	a0, a3
	mv	a21, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 16 ! 0
	sub	a0, a1, a0 ! 1558
	slli	a1, a0, 2 ! 1558
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 1558
	flw	fa0, t0, 0 ! 1558
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0
	slli	a0, a0, 2 ! 1558
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 1558
	fsw	t0, fa0, 0 ! 1558
	ret ! 1558
get_nvector_plane.2784:
	lw	a1, a21, 28 ! 0
	lw	a2, a21, 24 ! 0
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	sw	sp, a5, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a7, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a2, 16 ! 0
	sw	sp, a4, 20 ! 0
	sw	sp, a6, 24 ! 0
	mv	a21, a3
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	slli	a0, a0, 2 ! 1564
	lw	a1, sp, 20 ! 0
	add	t0, a1, a0 ! 1564
	fsw	t0, fa0, 0 ! 1564
	lw	a0, sp, 12 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 8 ! 0
	slli	a0, a0, 2 ! 1565
	lw	a1, sp, 20 ! 0
	add	t0, a1, a0 ! 1565
	fsw	t0, fa0, 0 ! 1565
	lw	a0, sp, 12 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 0 ! 0
	slli	a0, a0, 2 ! 1566
	lw	a1, sp, 20 ! 0
	add	t0, a1, a0 ! 1566
	fsw	t0, fa0, 0 ! 1566
	ret ! 1566
get_nvector_second.2786:
	lw	a1, a21, 60 ! 0
	lw	a2, a21, 56 ! 0
	lw	a3, a21, 52 ! 0
	lw	a4, a21, 48 ! 0
	lw	a5, a21, 44 ! 0
	lw	a6, a21, 40 ! 0
	lw	a7, a21, 36 ! 0
	lw	a8, a21, 32 ! 0
	lw	a9, a21, 28 ! 0
	lw	a10, a21, 24 ! 0
	lw	a11, a21, 20 ! 0
	lw	a12, a21, 16 ! 0
	lw	a13, a21, 12 ! 0
	lw	a14, a21, 8 ! 0
	lw	a15, a21, 4 ! 0
	slli	a16, a14, 2 ! 1571
	add	t0, a12, a16 ! 1571
	flw	fa0, t0, 0 ! 1571
	sw	sp, a1, 0 ! 0
	sw	sp, a7, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a11, 16 ! 0
	sw	sp, a14, 20 ! 0
	sw	sp, a8, 24 ! 0
	sw	sp, a9, 28 ! 0
	sw	sp, a10, 32 ! 0
	sw	sp, a2, 36 ! 0
	sw	sp, a13, 40 ! 0
	sw	sp, a0, 44 ! 0
	sw	sp, a3, 48 ! 0
	sw	sp, a12, 52 ! 0
	sw	sp, a15, 56 ! 0
	fsw	sp, fa0, 64 ! 0
	mv	a21, a4
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1571
	lw	a0, sp, 56 ! 0
	slli	a1, a0, 2 ! 1572
	lw	a2, sp, 52 ! 0
	add	t0, a2, a1 ! 1572
	flw	fa1, t0, 0 ! 1572
	lw	a1, sp, 44 ! 0
	lw	a21, sp, 48 ! 0
	fsw	sp, fa0, 72 ! 0
	fsw	sp, fa1, 80 ! 0
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1572
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 1573
	lw	a2, sp, 52 ! 0
	add	t0, a2, a1 ! 1573
	flw	fa1, t0, 0 ! 1573
	lw	a1, sp, 44 ! 0
	lw	a21, sp, 36 ! 0
	fsw	sp, fa0, 88 ! 0
	fsw	sp, fa1, 96 ! 0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1573
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 32 ! 0
	fsw	sp, fa0, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1575
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 28 ! 0
	fsw	sp, fa0, 112 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1576
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 24 ! 0
	fsw	sp, fa0, 120 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa1, sp, 104 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1577
	lw	a0, sp, 44 ! 0
	fsw	sp, fa0, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	o_isrot.2530
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.11946
	slli	a0, a1, 2 ! 1580
	lw	a1, sp, 16 ! 0
	flw	fa0, sp, 112 ! 0
	add	t0, a1, a0 ! 1580
	fsw	t0, fa0, 0 ! 1580
	lw	a0, sp, 56 ! 0
	slli	a0, a0, 2 ! 1581
	flw	fa0, sp, 120 ! 0
	add	t0, a1, a0 ! 1581
	fsw	t0, fa0, 0 ! 1581
	lw	a0, sp, 40 ! 0
	slli	a0, a0, 2 ! 1582
	flw	fa0, sp, 128 ! 0
	add	t0, a1, a0 ! 1582
	fsw	t0, fa0, 0 ! 1582
	j	be_cont.11947
be_else.11946:
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1584
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 8 ! 0
	fsw	sp, fa0, 136 ! 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 104 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1584
	flw	fa2, sp, 136 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 1584
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fhalf
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 112 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1584
	lw	a0, sp, 20 ! 0
	slli	a0, a0, 2 ! 1584
	lw	a1, sp, 16 ! 0
	add	t0, a1, a0 ! 1584
	fsw	t0, fa0, 0 ! 1584
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1585
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 4 ! 0
	fsw	sp, fa0, 144 ! 0
	sw	sp, ra, 152
	addi	sp, sp, 156
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 104 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1585
	flw	fa1, sp, 144 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1585
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_fhalf
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 120 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1585
	lw	a0, sp, 56 ! 0
	slli	a0, a0, 2 ! 1585
	lw	a1, sp, 16 ! 0
	add	t0, a1, a0 ! 1585
	fsw	t0, fa0, 0 ! 1585
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 152
	addi	sp, sp, 156
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1586
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 4 ! 0
	fsw	sp, fa0, 152 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1586
	flw	fa1, sp, 152 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1586
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fhalf
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 128 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1586
	lw	a0, sp, 40 ! 0
	slli	a0, a0, 2 ! 1586
	lw	a1, sp, 16 ! 0
	add	t0, a1, a0 ! 1586
	fsw	t0, fa0, 0 ! 1586
be_cont.11947:
	lw	a0, sp, 44 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	o_isinvert.2528
	addi	sp, sp, -164
	lw	ra, sp, 160
	mv	a1, a0
	lw	a0, sp, 16 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
get_nvector.2788:
	lw	a2, a21, 20 ! 0
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a6, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	o_form.2524
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.11948
	lw	a0, sp, 16 ! 0
	lw	a21, sp, 20 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11948:
	lw	a1, sp, 12 ! 0
	bne	a0, a1, be_else.11949
	lw	a0, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.11949:
	lw	a0, sp, 4 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
utexture.2791:
	lw	a2, a21, 60 ! 0
	lw	a3, a21, 56 ! 0
	lw	a4, a21, 52 ! 0
	lw	a5, a21, 48 ! 0
	lw	a6, a21, 44 ! 0
	lw	a7, a21, 40 ! 0
	lw	a8, a21, 36 ! 0
	lw	a9, a21, 32 ! 0
	lw	a10, a21, 28 ! 0
	lw	a11, a21, 24 ! 0
	lw	a12, a21, 20 ! 0
	lw	a13, a21, 16 ! 0
	lw	a14, a21, 12 ! 0
	lw	a15, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	sw	sp, a7, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a8, 12 ! 0
	sw	sp, a13, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a3, 32 ! 0
	sw	sp, a5, 36 ! 0
	sw	sp, a1, 40 ! 0
	sw	sp, a12, 44 ! 0
	sw	sp, a11, 48 ! 0
	sw	sp, a15, 52 ! 0
	sw	sp, a10, 56 ! 0
	sw	sp, a2, 60 ! 0
	sw	sp, a14, 64 ! 0
	sw	sp, a0, 68 ! 0
	sw	sp, a9, 72 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	o_texturetype.2522
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 68 ! 0
	lw	a21, sp, 72 ! 0
	sw	sp, a0, 76 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 64 ! 0
	slli	a1, a0, 2 ! 1611
	lw	a2, sp, 60 ! 0
	add	t0, a2, a1 ! 1611
	fsw	t0, fa0, 0 ! 1611
	lw	a1, sp, 68 ! 0
	lw	a21, sp, 56 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 52 ! 0
	slli	a1, a0, 2 ! 1612
	lw	a2, sp, 60 ! 0
	add	t0, a2, a1 ! 1612
	fsw	t0, fa0, 0 ! 1612
	lw	a1, sp, 68 ! 0
	lw	a21, sp, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 44 ! 0
	slli	a1, a0, 2 ! 1613
	lw	a2, sp, 60 ! 0
	add	t0, a2, a1 ! 1613
	fsw	t0, fa0, 0 ! 1613
	lw	a1, sp, 52 ! 0
	lw	a3, sp, 76 ! 0
	bne	a3, a1, be_else.11951
	lw	a3, sp, 64 ! 0
	slli	a4, a3, 2 ! 1617
	lw	a5, sp, 40 ! 0
	add	t0, a5, a4 ! 1617
	flw	fa0, t0, 0 ! 1617
	lw	a4, sp, 68 ! 0
	lw	a21, sp, 36 ! 0
	fsw	sp, fa0, 80 ! 0
	mv	a0, a4
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1617
	li	a0, l.6463 ! 1619
	flw	fa1, a0, 0 ! 1619
	fmul.s	fa2, fa0, fa1, rne ! 1619
	fsw	sp, fa1, 88 ! 0
	fsw	sp, fa0, 96 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_floor
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a0, l.6465 ! 1619
	flw	fa1, a0, 0 ! 1619
	fmul.s	fa0, fa0, fa1, rne ! 1619
	flw	fa2, sp, 96 ! 0
	fsub.s	fa0, fa2, fa0, rne ! 1620
	li	a0, l.6450 ! 1620
	flw	fa2, a0, 0 ! 1620
	fsw	sp, fa2, 104 ! 0
	fsw	sp, fa1, 112 ! 0
	fmv.s	fa1, fa2
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_fless
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a1, sp, 44 ! 0
	slli	a1, a1, 2 ! 1622
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 1622
	flw	fa0, t0, 0 ! 1622
	lw	a1, sp, 68 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, a0, 120 ! 0
	fsw	sp, fa0, 128 ! 0
	mv	a0, a1
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1622
	flw	fa1, sp, 88 ! 0
	fmul.s	fa1, fa0, fa1, rne ! 1624
	fsw	sp, fa0, 136 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_floor
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1624
	flw	fa1, sp, 136 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1625
	flw	fa1, sp, 104 ! 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fless
	addi	sp, sp, -148
	lw	ra, sp, 144
	lw	a1, sp, 64 ! 0
	lw	a2, sp, 120 ! 0
	bne	a2, a1, be_else.11953
	bne	a0, a1, be_else.11955
	li	a0, l.6469 ! 1630
	flw	fa0, a0, 0 ! 1630
	j	be_cont.11956
be_else.11955:
	li	a0, l.6001 ! 1630
	flw	fa0, a0, 0 ! 1630
be_cont.11956:
	j	be_cont.11954
be_else.11953:
	bne	a0, a1, be_else.11957
	li	a0, l.6001 ! 1629
	flw	fa0, a0, 0 ! 1629
	j	be_cont.11958
be_else.11957:
	li	a0, l.6469 ! 1629
	flw	fa0, a0, 0 ! 1629
be_cont.11958:
be_cont.11954:
	lw	a0, sp, 52 ! 0
	slli	a0, a0, 2 ! 1627
	lw	a1, sp, 60 ! 0
	add	t0, a1, a0 ! 1627
	fsw	t0, fa0, 0 ! 1627
	ret ! 1627
be_else.11951:
	bne	a3, a0, be_else.11960
	slli	a0, a1, 2 ! 1635
	lw	a3, sp, 40 ! 0
	add	t0, a3, a0 ! 1635
	flw	fa0, t0, 0 ! 1635
	li	a0, l.6457 ! 1635
	flw	fa1, a0, 0 ! 1635
	fmul.s	fa0, fa0, fa1, rne ! 1635
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_sin
	addi	sp, sp, -148
	lw	ra, sp, 144
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fsqr
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 24 ! 0
	fmul.s	fa2, fa1, fa0, rne ! 1636
	lw	a0, sp, 64 ! 0
	slli	a0, a0, 2 ! 1636
	lw	a1, sp, 60 ! 0
	add	t0, a1, a0 ! 1636
	fsw	t0, fa2, 0 ! 1636
	li	a0, l.6003 ! 1637
	flw	fa2, a0, 0 ! 1637
	fsub.s	fa0, fa2, fa0, rne ! 1637
	fmul.s	fa0, fa1, fa0, rne ! 1637
	lw	a0, sp, 52 ! 0
	slli	a0, a0, 2 ! 1637
	add	t0, a1, a0 ! 1637
	fsw	t0, fa0, 0 ! 1637
	ret ! 1637
be_else.11960:
	lw	a4, sp, 16 ! 0
	bne	a3, a4, be_else.11962
	lw	a3, sp, 64 ! 0
	slli	a3, a3, 2 ! 1642
	lw	a4, sp, 40 ! 0
	add	t0, a4, a3 ! 1642
	flw	fa0, t0, 0 ! 1642
	lw	a3, sp, 68 ! 0
	lw	a21, sp, 36 ! 0
	fsw	sp, fa0, 144 ! 0
	mv	a0, a3
	sw	sp, ra, 152
	addi	sp, sp, 156
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 144 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1642
	lw	a0, sp, 44 ! 0
	slli	a1, a0, 2 ! 1643
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 1643
	flw	fa1, t0, 0 ! 1643
	lw	a1, sp, 68 ! 0
	lw	a21, sp, 32 ! 0
	fsw	sp, fa0, 152 ! 0
	fsw	sp, fa1, 160 ! 0
	mv	a0, a1
	sw	sp, ra, 168
	addi	sp, sp, 172
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 160 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1643
	flw	fa1, sp, 152 ! 0
	fsw	sp, fa0, 168 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fsqr
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 168 ! 0
	fsw	sp, fa0, 176 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_fsqr
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 176 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1644
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_sqrt
	addi	sp, sp, -188
	lw	ra, sp, 184
	li	a0, l.6450 ! 1644
	flw	fa1, a0, 0 ! 1644
	fdiv.s	fa0, fa0, fa1, rne ! 1644
	fsw	sp, fa0, 184 ! 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_floor
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 184 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1645
	li	a0, l.6434 ! 1645
	flw	fa1, a0, 0 ! 1645
	fmul.s	fa0, fa0, fa1, rne ! 1645
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_cos
	addi	sp, sp, -196
	lw	ra, sp, 192
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_fsqr
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 24 ! 0
	fmul.s	fa2, fa0, fa1, rne ! 1647
	lw	a0, sp, 52 ! 0
	slli	a0, a0, 2 ! 1647
	lw	a1, sp, 60 ! 0
	add	t0, a1, a0 ! 1647
	fsw	t0, fa2, 0 ! 1647
	li	a0, l.6003 ! 1648
	flw	fa2, a0, 0 ! 1648
	fsub.s	fa0, fa2, fa0, rne ! 1648
	fmul.s	fa0, fa0, fa1, rne ! 1648
	lw	a0, sp, 44 ! 0
	slli	a0, a0, 2 ! 1648
	add	t0, a1, a0 ! 1648
	fsw	t0, fa0, 0 ! 1648
	ret ! 1648
be_else.11962:
	li	a4, 4 ! 1650
	bne	a3, a4, be_else.11964
	lw	a3, sp, 64 ! 0
	slli	a4, a3, 2 ! 1652
	lw	a5, sp, 40 ! 0
	add	t0, a5, a4 ! 1652
	flw	fa0, t0, 0 ! 1652
	lw	a4, sp, 68 ! 0
	lw	a21, sp, 36 ! 0
	fsw	sp, fa0, 192 ! 0
	mv	a0, a4
	sw	sp, ra, 200
	addi	sp, sp, 204
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -204
	lw	ra, sp, 200
	flw	fa1, sp, 192 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1652
	lw	a0, sp, 68 ! 0
	lw	a21, sp, 12 ! 0
	fsw	sp, fa0, 200 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_sqrt
	addi	sp, sp, -212
	lw	ra, sp, 208
	flw	fa1, sp, 200 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1652
	lw	a0, sp, 44 ! 0
	slli	a1, a0, 2 ! 1653
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 1653
	flw	fa1, t0, 0 ! 1653
	lw	a1, sp, 68 ! 0
	lw	a21, sp, 32 ! 0
	fsw	sp, fa0, 208 ! 0
	fsw	sp, fa1, 216 ! 0
	mv	a0, a1
	sw	sp, ra, 224
	addi	sp, sp, 228
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -228
	lw	ra, sp, 224
	flw	fa1, sp, 216 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1653
	lw	a0, sp, 68 ! 0
	lw	a21, sp, 8 ! 0
	fsw	sp, fa0, 224 ! 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	min_caml_sqrt
	addi	sp, sp, -236
	lw	ra, sp, 232
	flw	fa1, sp, 224 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1653
	flw	fa1, sp, 208 ! 0
	fsw	sp, fa0, 232 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 240
	addi	sp, sp, 244
	jal	min_caml_fsqr
	addi	sp, sp, -244
	lw	ra, sp, 240
	flw	fa1, sp, 232 ! 0
	fsw	sp, fa0, 240 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 248
	addi	sp, sp, 252
	jal	min_caml_fsqr
	addi	sp, sp, -252
	lw	ra, sp, 248
	flw	fa1, sp, 240 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1654
	flw	fa1, sp, 208 ! 0
	fsw	sp, fa0, 248 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 256
	addi	sp, sp, 260
	jal	min_caml_fabs
	addi	sp, sp, -260
	lw	ra, sp, 256
	li	a0, l.6428 ! 1656
	flw	fa1, a0, 0 ! 1656
	fsw	sp, fa1, 256 ! 0
	sw	sp, ra, 264
	addi	sp, sp, 268
	jal	min_caml_fless
	addi	sp, sp, -268
	lw	ra, sp, 264
	lw	a1, sp, 64 ! 0
	bne	a0, a1, be_else.11965
	flw	fa0, sp, 208 ! 0
	flw	fa1, sp, 232 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1659
	sw	sp, ra, 264
	addi	sp, sp, 268
	jal	min_caml_fabs
	addi	sp, sp, -268
	lw	ra, sp, 264
	sw	sp, ra, 264
	addi	sp, sp, 268
	jal	min_caml_atan
	addi	sp, sp, -268
	lw	ra, sp, 264
	li	a0, l.6432 ! 1661
	flw	fa1, a0, 0 ! 1661
	fmul.s	fa0, fa0, fa1, rne ! 1661
	li	a0, l.6434 ! 1661
	flw	fa1, a0, 0 ! 1661
	fdiv.s	fa0, fa0, fa1, rne ! 1661
	j	be_cont.11966
be_else.11965:
	li	a0, l.6430 ! 1657
	flw	fa0, a0, 0 ! 1657
be_cont.11966:
	fsw	sp, fa0, 264 ! 0
	sw	sp, ra, 272
	addi	sp, sp, 276
	jal	min_caml_floor
	addi	sp, sp, -276
	lw	ra, sp, 272
	flw	fa1, sp, 264 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1663
	lw	a0, sp, 52 ! 0
	slli	a0, a0, 2 ! 1665
	lw	a1, sp, 40 ! 0
	add	t0, a1, a0 ! 1665
	flw	fa1, t0, 0 ! 1665
	lw	a0, sp, 68 ! 0
	lw	a21, sp, 4 ! 0
	fsw	sp, fa0, 272 ! 0
	fsw	sp, fa1, 280 ! 0
	sw	sp, ra, 288
	addi	sp, sp, 292
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -292
	lw	ra, sp, 288
	flw	fa1, sp, 280 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1665
	lw	a0, sp, 68 ! 0
	lw	a21, sp, 0 ! 0
	fsw	sp, fa0, 288 ! 0
	sw	sp, ra, 296
	addi	sp, sp, 300
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -300
	lw	ra, sp, 296
	sw	sp, ra, 296
	addi	sp, sp, 300
	jal	min_caml_sqrt
	addi	sp, sp, -300
	lw	ra, sp, 296
	flw	fa1, sp, 288 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1665
	flw	fa1, sp, 248 ! 0
	fsw	sp, fa0, 296 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 304
	addi	sp, sp, 308
	jal	min_caml_fabs
	addi	sp, sp, -308
	lw	ra, sp, 304
	flw	fa1, sp, 256 ! 0
	sw	sp, ra, 304
	addi	sp, sp, 308
	jal	min_caml_fless
	addi	sp, sp, -308
	lw	ra, sp, 304
	lw	a1, sp, 64 ! 0
	bne	a0, a1, be_else.11967
	flw	fa0, sp, 248 ! 0
	flw	fa1, sp, 296 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1670
	sw	sp, ra, 304
	addi	sp, sp, 308
	jal	min_caml_fabs
	addi	sp, sp, -308
	lw	ra, sp, 304
	sw	sp, ra, 304
	addi	sp, sp, 308
	jal	min_caml_atan
	addi	sp, sp, -308
	lw	ra, sp, 304
	li	a0, l.6432 ! 1671
	flw	fa1, a0, 0 ! 1671
	fmul.s	fa0, fa0, fa1, rne ! 1671
	li	a0, l.6434 ! 1671
	flw	fa1, a0, 0 ! 1671
	fdiv.s	fa0, fa0, fa1, rne ! 1671
	j	be_cont.11968
be_else.11967:
	li	a0, l.6430 ! 1668
	flw	fa0, a0, 0 ! 1668
be_cont.11968:
	fsw	sp, fa0, 304 ! 0
	sw	sp, ra, 312
	addi	sp, sp, 316
	jal	min_caml_floor
	addi	sp, sp, -316
	lw	ra, sp, 312
	flw	fa1, sp, 304 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1673
	li	a0, l.6440 ! 1674
	flw	fa1, a0, 0 ! 1674
	li	a0, l.6442 ! 1674
	flw	fa2, a0, 0 ! 1674
	flw	fa3, sp, 272 ! 0
	fsub.s	fa3, fa2, fa3, rne ! 1674
	fsw	sp, fa0, 312 ! 0
	fsw	sp, fa2, 320 ! 0
	fsw	sp, fa1, 328 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 336
	addi	sp, sp, 340
	jal	min_caml_fsqr
	addi	sp, sp, -340
	lw	ra, sp, 336
	flw	fa1, sp, 328 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1674
	flw	fa1, sp, 312 ! 0
	flw	fa2, sp, 320 ! 0
	fsub.s	fa1, fa2, fa1, rne ! 1674
	fsw	sp, fa0, 336 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 344
	addi	sp, sp, 348
	jal	min_caml_fsqr
	addi	sp, sp, -348
	lw	ra, sp, 344
	flw	fa1, sp, 336 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1674
	fsw	sp, fa0, 344 ! 0
	sw	sp, ra, 352
	addi	sp, sp, 356
	jal	min_caml_fisneg
	addi	sp, sp, -356
	lw	ra, sp, 352
	lw	a1, sp, 64 ! 0
	bne	a0, a1, be_else.11969
	flw	fa0, sp, 344 ! 0
	j	be_cont.11970
be_else.11969:
	li	a0, l.6001 ! 1675
	flw	fa0, a0, 0 ! 1675
be_cont.11970:
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1676
	li	a0, l.6445 ! 1676
	flw	fa1, a0, 0 ! 1676
	fdiv.s	fa0, fa0, fa1, rne ! 1676
	lw	a0, sp, 44 ! 0
	slli	a0, a0, 2 ! 1676
	lw	a1, sp, 60 ! 0
	add	t0, a1, a0 ! 1676
	fsw	t0, fa0, 0 ! 1676
	ret ! 1676
be_else.11964:
	ret ! 1678
add_light.2794:
	lw	a0, a21, 24 ! 0
	lw	a1, a21, 20 ! 0
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	sw	sp, a3, 0 ! 0
	sw	sp, a5, 4 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a2, 36 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, a4, 44 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fispos
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 44 ! 0
	bne	a0, a1, be_else.11973
	j	be_cont.11974
be_else.11973:
	flw	fa0, sp, 24 ! 0
	lw	a0, sp, 36 ! 0
	lw	a2, sp, 32 ! 0
	lw	a21, sp, 40 ! 0
	mv	a1, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.11974:
	flw	fa0, sp, 16 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fispos
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 44 ! 0
	bne	a0, a1, be_else.11975
	ret ! 1699
be_else.11975:
	flw	fa0, sp, 16 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fsqr
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fsqr
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 8 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1695
	lw	a0, sp, 44 ! 0
	slli	a1, a0, 2 ! 1696
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 1696
	flw	fa1, t0, 0 ! 1696
	fadd.s	fa1, fa1, fa0, rne ! 1696
	slli	a0, a0, 2 ! 1696
	add	t0, a2, a0 ! 1696
	fsw	t0, fa1, 0 ! 1696
	lw	a0, sp, 4 ! 0
	slli	a1, a0, 2 ! 1697
	add	t0, a2, a1 ! 1697
	flw	fa1, t0, 0 ! 1697
	fadd.s	fa1, fa1, fa0, rne ! 1697
	slli	a0, a0, 2 ! 1697
	add	t0, a2, a0 ! 1697
	fsw	t0, fa1, 0 ! 1697
	lw	a0, sp, 0 ! 0
	slli	a1, a0, 2 ! 1698
	add	t0, a2, a1 ! 1698
	flw	fa1, t0, 0 ! 1698
	fadd.s	fa0, fa1, fa0, rne ! 1698
	slli	a0, a0, 2 ! 1698
	add	t0, a2, a0 ! 1698
	fsw	t0, fa0, 0 ! 1698
	ret ! 1698
trace_reflections.2798:
	lw	a2, a21, 44 ! 0
	lw	a3, a21, 40 ! 0
	lw	a4, a21, 36 ! 0
	lw	a5, a21, 32 ! 0
	lw	a6, a21, 28 ! 0
	lw	a7, a21, 24 ! 0
	lw	a8, a21, 20 ! 0
	lw	a9, a21, 16 ! 0
	lw	a10, a21, 12 ! 0
	lw	a11, a21, 8 ! 0
	lw	a12, a21, 4 ! 0
	blt	a0, a11, bge_else.11978
	slli	a13, a0, 2 ! 1706
	add	t0, a4, a13 ! 1706
	lw	a4, t0, 0 ! 1706
	sw	sp, a21, 0 ! 0
	sw	sp, a12, 4 ! 0
	sw	sp, a0, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	sw	sp, a10, 24 ! 0
	sw	sp, a1, 28 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, a6, 40 ! 0
	sw	sp, a2, 44 ! 0
	sw	sp, a3, 48 ! 0
	sw	sp, a5, 52 ! 0
	sw	sp, a4, 56 ! 0
	sw	sp, a8, 60 ! 0
	sw	sp, a9, 64 ! 0
	sw	sp, a11, 68 ! 0
	sw	sp, a7, 72 ! 0
	mv	a0, a4
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	r_dvec.2589
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a21, sp, 72 ! 0
	sw	sp, a0, 76 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a1, sp, 68 ! 0
	bne	a0, a1, be_else.11980
	j	be_cont.11981
be_else.11980:
	slli	a0, a1, 2 ! 1711
	lw	a2, sp, 64 ! 0
	add	t0, a2, a0 ! 1711
	lw	a0, t0, 0 ! 1711
	li	a2, 4 ! 1711
	mul	a0, a0, a2 ! 1711
	slli	a2, a1, 2 ! 1711
	lw	a3, sp, 60 ! 0
	add	t0, a3, a2 ! 1711
	lw	a2, t0, 0 ! 1711
	add	a0, a0, a2 ! 1711
	lw	a2, sp, 56 ! 0
	sw	sp, a0, 80 ! 0
	mv	a0, a2
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	r_surface_id.2587
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a1, sp, 80 ! 0
	bne	a1, a0, be_else.11982
	lw	a0, sp, 68 ! 0
	slli	a1, a0, 2 ! 1714
	lw	a2, sp, 52 ! 0
	add	t0, a2, a1 ! 1714
	lw	a1, t0, 0 ! 1714
	lw	a21, sp, 48 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a1, sp, 68 ! 0
	bne	a0, a1, be_else.11984
	lw	a0, sp, 76 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	d_vec.2583
	addi	sp, sp, -88
	lw	ra, sp, 84
	mv	a1, a0
	lw	a0, sp, 40 ! 0
	lw	a21, sp, 44 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 56 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	r_bright.2591
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 32 ! 0
	fmul.s	fa2, fa0, fa1, rne ! 1718
	flw	fa3, sp, 88 ! 0
	fmul.s	fa2, fa2, fa3, rne ! 1718
	lw	a0, sp, 76 ! 0
	fsw	sp, fa2, 96 ! 0
	fsw	sp, fa0, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	d_vec.2583
	addi	sp, sp, -116
	lw	ra, sp, 112
	mv	a1, a0
	lw	a0, sp, 28 ! 0
	lw	a21, sp, 44 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 104 ! 0
	fmul.s	fa1, fa1, fa0, rne ! 1719
	flw	fa0, sp, 96 ! 0
	flw	fa2, sp, 16 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	j	be_cont.11985
be_else.11984:
be_cont.11985:
	j	be_cont.11983
be_else.11982:
be_cont.11983:
be_cont.11981:
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 8 ! 0
	sub	a0, a1, a0 ! 1724
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 16 ! 0
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.11978:
	ret ! 1725
trace_ray.2803:
	lw	a3, a21, 120 ! 0
	lw	a4, a21, 116 ! 0
	lw	a5, a21, 112 ! 0
	lw	a6, a21, 108 ! 0
	lw	a7, a21, 104 ! 0
	lw	a8, a21, 100 ! 0
	lw	a9, a21, 96 ! 0
	lw	a10, a21, 92 ! 0
	lw	a11, a21, 88 ! 0
	lw	a12, a21, 84 ! 0
	lw	a13, a21, 80 ! 0
	lw	a14, a21, 76 ! 0
	lw	a15, a21, 72 ! 0
	lw	a16, a21, 68 ! 0
	lw	a17, a21, 64 ! 0
	lw	a18, a21, 60 ! 0
	lw	a19, a21, 56 ! 0
	lw	a20, a21, 52 ! 0
	sw	sp, a9, 0 ! 0
	lw	a9, a21, 48 ! 0
	sw	sp, a8, 4 ! 0
	lw	a8, a21, 44 ! 0
	sw	sp, a20, 8 ! 0
	lw	a20, a21, 40 ! 0
	sw	sp, a13, 12 ! 0
	lw	a13, a21, 36 ! 0
	sw	sp, a12, 16 ! 0
	lw	a12, a21, 32 ! 0
	sw	sp, a15, 20 ! 0
	lw	a15, a21, 28 ! 0
	sw	sp, a17, 24 ! 0
	lw	a17, a21, 24 ! 0
	sw	sp, a6, 28 ! 0
	lw	a6, a21, 20 ! 0
	sw	sp, a6, 32 ! 0
	lw	a6, a21, 16 ! 0
	sw	sp, a19, 36 ! 0
	lw	a19, a21, 12 ! 0
	sw	sp, a3, 40 ! 0
	lw	a3, a21, 8 ! 0
	sw	sp, a21, 44 ! 0
	lw	a21, a21, 4 ! 0
	sw	sp, a10, 48 ! 0
	li	a10, 4 ! 1733
	blt	a10, a0, bge_else.11988
	fsw	sp, fa1, 56 ! 0
	sw	sp, a2, 64 ! 0
	sw	sp, a20, 68 ! 0
	sw	sp, a10, 72 ! 0
	sw	sp, a7, 76 ! 0
	sw	sp, a13, 80 ! 0
	sw	sp, a11, 84 ! 0
	sw	sp, a5, 88 ! 0
	sw	sp, a15, 92 ! 0
	sw	sp, a18, 96 ! 0
	sw	sp, a16, 100 ! 0
	sw	sp, a12, 104 ! 0
	sw	sp, a6, 108 ! 0
	sw	sp, a21, 112 ! 0
	sw	sp, a14, 116 ! 0
	sw	sp, a17, 120 ! 0
	fsw	sp, fa0, 128 ! 0
	sw	sp, a9, 136 ! 0
	sw	sp, a4, 140 ! 0
	sw	sp, a19, 144 ! 0
	sw	sp, a0, 148 ! 0
	sw	sp, a3, 152 ! 0
	sw	sp, a1, 156 ! 0
	sw	sp, a8, 160 ! 0
	mv	a0, a2
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	p_surface_ids.2568
	addi	sp, sp, -168
	lw	ra, sp, 164
	lw	a1, sp, 156 ! 0
	lw	a21, sp, 160 ! 0
	sw	sp, a0, 164 ! 0
	mv	a0, a1
	sw	sp, ra, 168
	addi	sp, sp, 172
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 152 ! 0
	bne	a0, a1, be_else.11991
	lw	a0, sp, 148 ! 0
	slli	a2, a0, 2 ! 1798
	lw	a3, sp, 164 ! 0
	lw	a4, sp, 144 ! 0
	add	t0, a3, a2 ! 1798
	sw	t0, a4, 0 ! 1798
	bne	a0, a1, be_else.11992
	ret ! 1812
be_else.11992:
	lw	a0, sp, 156 ! 0
	lw	a2, sp, 136 ! 0
	lw	a21, sp, 140 ! 0
	mv	a1, a2
	sw	sp, ra, 168
	addi	sp, sp, 172
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -172
	lw	ra, sp, 168
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_fneg
	addi	sp, sp, -172
	lw	ra, sp, 168
	fsw	sp, fa0, 168 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fispos
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a1, sp, 152 ! 0
	bne	a0, a1, be_else.11994
	ret ! 1811
be_else.11994:
	flw	fa0, sp, 168 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fsqr
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 168 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1806
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1806
	lw	a0, sp, 152 ! 0
	slli	a1, a0, 2 ! 1806
	lw	a2, sp, 120 ! 0
	add	t0, a2, a1 ! 1806
	flw	fa1, t0, 0 ! 1806
	fmul.s	fa0, fa0, fa1, rne ! 1806
	slli	a1, a0, 2 ! 1807
	lw	a2, sp, 116 ! 0
	add	t0, a2, a1 ! 1807
	flw	fa1, t0, 0 ! 1807
	fadd.s	fa1, fa1, fa0, rne ! 1807
	slli	a0, a0, 2 ! 1807
	add	t0, a2, a0 ! 1807
	fsw	t0, fa1, 0 ! 1807
	lw	a0, sp, 112 ! 0
	slli	a1, a0, 2 ! 1808
	add	t0, a2, a1 ! 1808
	flw	fa1, t0, 0 ! 1808
	fadd.s	fa1, fa1, fa0, rne ! 1808
	slli	a0, a0, 2 ! 1808
	add	t0, a2, a0 ! 1808
	fsw	t0, fa1, 0 ! 1808
	lw	a0, sp, 108 ! 0
	slli	a1, a0, 2 ! 1809
	add	t0, a2, a1 ! 1809
	flw	fa1, t0, 0 ! 1809
	fadd.s	fa0, fa1, fa0, rne ! 1809
	slli	a0, a0, 2 ! 1809
	add	t0, a2, a0 ! 1809
	fsw	t0, fa0, 0 ! 1809
	ret ! 1809
be_else.11991:
	slli	a0, a1, 2 ! 1737
	lw	a2, sp, 104 ! 0
	add	t0, a2, a0 ! 1737
	lw	a0, t0, 0 ! 1737
	slli	a2, a0, 2 ! 1738
	lw	a3, sp, 100 ! 0
	add	t0, a3, a2 ! 1738
	lw	a2, t0, 0 ! 1738
	sw	sp, a0, 176 ! 0
	sw	sp, a2, 180 ! 0
	mv	a0, a2
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	o_reflectiontype.2526
	addi	sp, sp, -188
	lw	ra, sp, 184
	lw	a1, sp, 180 ! 0
	lw	a21, sp, 96 ! 0
	sw	sp, a0, 184 ! 0
	mv	a0, a1
	sw	sp, ra, 188
	addi	sp, sp, 192
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -192
	lw	ra, sp, 188
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1740
	lw	a0, sp, 180 ! 0
	lw	a1, sp, 156 ! 0
	lw	a21, sp, 92 ! 0
	fsw	sp, fa0, 192 ! 0
	sw	sp, ra, 200
	addi	sp, sp, 204
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -204
	lw	ra, sp, 200
	lw	a0, sp, 84 ! 0
	lw	a1, sp, 80 ! 0
	lw	a21, sp, 88 ! 0
	sw	sp, ra, 200
	addi	sp, sp, 204
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -204
	lw	ra, sp, 200
	lw	a0, sp, 180 ! 0
	lw	a1, sp, 80 ! 0
	lw	a21, sp, 76 ! 0
	sw	sp, ra, 200
	addi	sp, sp, 204
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -204
	lw	ra, sp, 200
	lw	a0, sp, 72 ! 0
	lw	a1, sp, 176 ! 0
	mul	a1, a1, a0 ! 1747
	lw	a2, sp, 152 ! 0
	slli	a3, a2, 2 ! 1747
	lw	a4, sp, 68 ! 0
	add	t0, a4, a3 ! 1747
	lw	a3, t0, 0 ! 1747
	add	a1, a1, a3 ! 1747
	lw	a3, sp, 148 ! 0
	slli	a4, a3, 2 ! 1747
	lw	a5, sp, 164 ! 0
	add	t0, a5, a4 ! 1747
	sw	t0, a1, 0 ! 1747
	lw	a1, sp, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	p_intersection_points.2566
	addi	sp, sp, -204
	lw	ra, sp, 200
	lw	a1, sp, 148 ! 0
	slli	a2, a1, 2 ! 1749
	add	t0, a0, a2 ! 1749
	lw	a0, t0, 0 ! 1749
	lw	a2, sp, 80 ! 0
	lw	a21, sp, 88 ! 0
	mv	a1, a2
	sw	sp, ra, 200
	addi	sp, sp, 204
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -204
	lw	ra, sp, 200
	lw	a0, sp, 64 ! 0
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	p_calc_diffuse.2570
	addi	sp, sp, -204
	lw	ra, sp, 200
	lw	a1, sp, 180 ! 0
	lw	a21, sp, 96 ! 0
	sw	sp, a0, 200 ! 0
	mv	a0, a1
	sw	sp, ra, 204
	addi	sp, sp, 208
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -208
	lw	ra, sp, 204
	li	a0, l.6442 ! 1753
	flw	fa1, a0, 0 ! 1753
	sw	sp, ra, 204
	addi	sp, sp, 208
	jal	min_caml_fless
	addi	sp, sp, -208
	lw	ra, sp, 204
	lw	a1, sp, 152 ! 0
	bne	a0, a1, be_else.11998
	lw	a0, sp, 148 ! 0
	slli	a2, a0, 2 ! 1756
	lw	a3, sp, 200 ! 0
	lw	a4, sp, 112 ! 0
	add	t0, a3, a2 ! 1756
	sw	t0, a4, 0 ! 1756
	lw	a2, sp, 64 ! 0
	mv	a0, a2
	sw	sp, ra, 204
	addi	sp, sp, 208
	jal	p_energy.2572
	addi	sp, sp, -208
	lw	ra, sp, 204
	lw	a1, sp, 148 ! 0
	slli	a2, a1, 2 ! 1758
	add	t0, a0, a2 ! 1758
	lw	a2, t0, 0 ! 1758
	lw	a3, sp, 48 ! 0
	lw	a21, sp, 88 ! 0
	sw	sp, a0, 204 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a0, sp, 148 ! 0
	slli	a1, a0, 2 ! 1759
	lw	a2, sp, 204 ! 0
	add	t0, a2, a1 ! 1759
	lw	a1, t0, 0 ! 1759
	li	a2, l.6495 ! 1759
	flw	fa0, a2, 0 ! 1759
	flw	fa1, sp, 192 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1759
	lw	a21, sp, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a0, sp, 64 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	p_nvectors.2581
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a1, sp, 148 ! 0
	slli	a2, a1, 2 ! 1761
	add	t0, a0, a2 ! 1761
	lw	a0, t0, 0 ! 1761
	lw	a2, sp, 36 ! 0
	lw	a21, sp, 88 ! 0
	mv	a1, a2
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	j	be_cont.11999
be_else.11998:
	lw	a0, sp, 148 ! 0
	slli	a2, a0, 2 ! 1754
	lw	a3, sp, 200 ! 0
	add	t0, a3, a2 ! 1754
	sw	t0, a1, 0 ! 1754
be_cont.11999:
	li	a0, l.6498 ! 1764
	flw	fa0, a0, 0 ! 1764
	lw	a0, sp, 156 ! 0
	lw	a1, sp, 36 ! 0
	lw	a21, sp, 140 ! 0
	fsw	sp, fa0, 208 ! 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	flw	fa1, sp, 208 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1764
	lw	a0, sp, 156 ! 0
	lw	a1, sp, 36 ! 0
	lw	a21, sp, 28 ! 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	lw	a0, sp, 180 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1768
	lw	a0, sp, 152 ! 0
	slli	a1, a0, 2 ! 1771
	lw	a2, sp, 20 ! 0
	add	t0, a2, a1 ! 1771
	lw	a1, t0, 0 ! 1771
	lw	a21, sp, 16 ! 0
	fsw	sp, fa0, 216 ! 0
	sw	sp, ra, 224
	addi	sp, sp, 228
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -228
	lw	ra, sp, 224
	lw	a1, sp, 152 ! 0
	bne	a0, a1, be_else.12000
	lw	a0, sp, 36 ! 0
	lw	a2, sp, 136 ! 0
	lw	a21, sp, 140 ! 0
	mv	a1, a2
	sw	sp, ra, 224
	addi	sp, sp, 228
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -228
	lw	ra, sp, 224
	sw	sp, ra, 224
	addi	sp, sp, 228
	jal	min_caml_fneg
	addi	sp, sp, -228
	lw	ra, sp, 224
	flw	fa1, sp, 192 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1772
	lw	a0, sp, 156 ! 0
	lw	a1, sp, 136 ! 0
	lw	a21, sp, 140 ! 0
	fsw	sp, fa0, 224 ! 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	min_caml_fneg
	addi	sp, sp, -236
	lw	ra, sp, 232
	fmv.s	fa1, fa0
	flw	fa0, sp, 224 ! 0
	flw	fa2, sp, 216 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	j	be_cont.12001
be_else.12000:
be_cont.12001:
	lw	a0, sp, 80 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a0, sp, 152 ! 0
	slli	a1, a0, 2 ! 1779
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 1779
	lw	a1, t0, 0 ! 1779
	lw	a2, sp, 112 ! 0
	sub	a1, a1, a2 ! 1779
	flw	fa0, sp, 192 ! 0
	flw	fa1, sp, 216 ! 0
	lw	a3, sp, 156 ! 0
	lw	a21, sp, 4 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	li	a0, l.6502 ! 1782
	flw	fa0, a0, 0 ! 1782
	flw	fa1, sp, 128 ! 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	min_caml_fless
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a1, sp, 152 ! 0
	bne	a0, a1, be_else.12002
	ret ! 1793
be_else.12002:
	lw	a0, sp, 148 ! 0
	lw	a2, sp, 72 ! 0
	blt	a0, a2, bge_else.12004
	j	bge_cont.12005
bge_else.12004:
	lw	a2, sp, 112 ! 0
	add	a3, a0, a2 ! 1785
	slli	a3, a3, 2 ! 1785
	lw	a4, sp, 164 ! 0
	lw	a5, sp, 144 ! 0
	add	t0, a4, a3 ! 1785
	sw	t0, a5, 0 ! 1785
bge_cont.12005:
	lw	a2, sp, 108 ! 0
	lw	a3, sp, 184 ! 0
	bne	a3, a2, be_else.12006
	li	a2, l.6003 ! 1789
	flw	fa0, a2, 0 ! 1789
	lw	a2, sp, 180 ! 0
	lw	a21, sp, 96 ! 0
	fsw	sp, fa0, 232 ! 0
	mv	a0, a2
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	flw	fa1, sp, 232 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1789
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1789
	lw	a0, sp, 112 ! 0
	lw	a1, sp, 148 ! 0
	add	a0, a1, a0 ! 1790
	lw	a1, sp, 152 ! 0
	slli	a1, a1, 2 ! 1790
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 1790
	flw	fa1, t0, 0 ! 1790
	flw	fa2, sp, 56 ! 0
	fadd.s	fa1, fa2, fa1, rne ! 1790
	lw	a1, sp, 156 ! 0
	lw	a2, sp, 64 ! 0
	lw	a21, sp, 44 ! 0
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	j	be_cont.12007
be_else.12006:
be_cont.12007:
	ret ! 1788
bge_else.11988:
	ret ! 1814
trace_diffuse_ray.2809:
	lw	a1, a21, 64 ! 0
	lw	a2, a21, 60 ! 0
	lw	a3, a21, 56 ! 0
	lw	a4, a21, 52 ! 0
	lw	a5, a21, 48 ! 0
	lw	a6, a21, 44 ! 0
	lw	a7, a21, 40 ! 0
	lw	a8, a21, 36 ! 0
	lw	a9, a21, 32 ! 0
	lw	a10, a21, 28 ! 0
	lw	a11, a21, 24 ! 0
	lw	a12, a21, 20 ! 0
	lw	a13, a21, 16 ! 0
	lw	a14, a21, 12 ! 0
	lw	a15, a21, 8 ! 0
	lw	a16, a21, 4 ! 0
	sw	sp, a4, 0 ! 0
	sw	sp, a15, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a8, 12 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a10, 24 ! 0
	sw	sp, a9, 28 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a5, 36 ! 0
	sw	sp, a6, 40 ! 0
	sw	sp, a12, 44 ! 0
	sw	sp, a3, 48 ! 0
	sw	sp, a14, 52 ! 0
	sw	sp, a0, 56 ! 0
	sw	sp, a7, 60 ! 0
	sw	sp, a13, 64 ! 0
	sw	sp, a16, 68 ! 0
	mv	a21, a11
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 68 ! 0
	bne	a0, a1, be_else.12010
	ret ! 1839
be_else.12010:
	slli	a0, a1, 2 ! 1829
	lw	a2, sp, 64 ! 0
	add	t0, a2, a0 ! 1829
	lw	a0, t0, 0 ! 1829
	slli	a0, a0, 2 ! 1829
	lw	a2, sp, 60 ! 0
	add	t0, a2, a0 ! 1829
	lw	a0, t0, 0 ! 1829
	lw	a2, sp, 56 ! 0
	sw	sp, a0, 72 ! 0
	mv	a0, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	d_vec.2583
	addi	sp, sp, -80
	lw	ra, sp, 76
	mv	a1, a0
	lw	a0, sp, 72 ! 0
	lw	a21, sp, 52 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 72 ! 0
	lw	a1, sp, 44 ! 0
	lw	a21, sp, 48 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 68 ! 0
	slli	a1, a0, 2 ! 1834
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 1834
	lw	a1, t0, 0 ! 1834
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 68 ! 0
	bne	a0, a1, be_else.12012
	lw	a0, sp, 28 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 32 ! 0
	mv	a1, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fispos
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 68 ! 0
	bne	a0, a1, be_else.12014
	li	a0, l.6001 ! 1836
	flw	fa0, a0, 0 ! 1836
	j	be_cont.12015
be_else.12014:
	flw	fa0, sp, 80 ! 0
be_cont.12015:
	flw	fa1, sp, 16 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1837
	lw	a0, sp, 72 ! 0
	lw	a21, sp, 12 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1837
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.12012:
	ret ! 1838
iter_trace_diffuse_rays.2812:
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	blt	a3, a7, bge_else.12017
	slli	a9, a3, 2 ! 1846
	add	t0, a0, a9 ! 1846
	lw	a9, t0, 0 ! 1846
	sw	sp, a2, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a8, 12 ! 0
	sw	sp, a5, 16 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a7, 28 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a4, 36 ! 0
	mv	a0, a9
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	d_vec.2583
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 32 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fisneg
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 28 ! 0
	bne	a0, a1, be_else.12018
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 1853
	lw	a2, sp, 20 ! 0
	add	t0, a2, a1 ! 1853
	lw	a1, t0, 0 ! 1853
	li	a3, l.6524 ! 1853
	flw	fa0, a3, 0 ! 1853
	flw	fa1, sp, 40 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	be_cont.12019
be_else.12018:
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 24 ! 0
	add	a0, a1, a0 ! 1851
	slli	a0, a0, 2 ! 1851
	lw	a2, sp, 20 ! 0
	add	t0, a2, a0 ! 1851
	lw	a0, t0, 0 ! 1851
	li	a3, l.6521 ! 1851
	flw	fa0, a3, 0 ! 1851
	flw	fa1, sp, 40 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.12019:
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 24 ! 0
	sub	a3, a1, a0 ! 1855
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12017:
	ret ! 1856
trace_diffuse_rays.2817:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a4, 12 ! 0
	mv	a0, a2
	mv	a21, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a3, 118 ! 1865
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_diffuse_ray_80percent.2821:
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	sw	sp, a6, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a4, 20 ! 0
	sw	sp, a8, 24 ! 0
	sw	sp, a0, 28 ! 0
	bne	a0, a7, be_else.12021
	j	be_cont.12022
be_else.12021:
	slli	a7, a7, 2 ! 1873
	add	t0, a4, a7 ! 1873
	lw	a7, t0, 0 ! 1873
	mv	a0, a7
	mv	a21, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.12022:
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 28 ! 0
	bne	a1, a0, be_else.12023
	j	be_cont.12024
be_else.12023:
	slli	a0, a0, 2 ! 1877
	lw	a2, sp, 20 ! 0
	add	t0, a2, a0 ! 1877
	lw	a0, t0, 0 ! 1877
	lw	a3, sp, 12 ! 0
	lw	a4, sp, 8 ! 0
	lw	a21, sp, 16 ! 0
	mv	a2, a4
	mv	a1, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.12024:
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 28 ! 0
	bne	a1, a0, be_else.12025
	j	be_cont.12026
be_else.12025:
	slli	a0, a0, 2 ! 1881
	lw	a2, sp, 20 ! 0
	add	t0, a2, a0 ! 1881
	lw	a0, t0, 0 ! 1881
	lw	a3, sp, 12 ! 0
	lw	a4, sp, 8 ! 0
	lw	a21, sp, 16 ! 0
	mv	a2, a4
	mv	a1, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.12026:
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 28 ! 0
	bne	a1, a0, be_else.12027
	j	be_cont.12028
be_else.12027:
	slli	a0, a0, 2 ! 1885
	lw	a2, sp, 20 ! 0
	add	t0, a2, a0 ! 1885
	lw	a0, t0, 0 ! 1885
	lw	a3, sp, 12 ! 0
	lw	a4, sp, 8 ! 0
	lw	a21, sp, 16 ! 0
	mv	a2, a4
	mv	a1, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.12028:
	li	a0, 4 ! 1888
	lw	a1, sp, 28 ! 0
	bne	a1, a0, be_else.12029
	ret ! 1890
be_else.12029:
	lw	a0, sp, 20 ! 0
	lw	a0, a0, 16 ! 1889
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 8 ! 0
	lw	a21, sp, 16 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_diffuse_using_1point.2825:
	lw	a2, a21, 24 ! 0
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	sw	sp, a5, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a6, 12 ! 0
	sw	sp, a7, 16 ! 0
	sw	sp, a2, 20 ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 28 ! 0
	sw	sp, a0, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	p_nvectors.2581
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 28 ! 0
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	p_intersection_points.2566
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 28 ! 0
	sw	sp, a0, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	p_energy.2572
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 24 ! 0
	slli	a2, a1, 2 ! 1903
	lw	a3, sp, 32 ! 0
	add	t0, a3, a2 ! 1903
	lw	a2, t0, 0 ! 1903
	lw	a3, sp, 16 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, a0, 44 ! 0
	mv	a1, a2
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 28 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 24 ! 0
	slli	a2, a1, 2 ! 1906
	lw	a3, sp, 36 ! 0
	add	t0, a3, a2 ! 1906
	lw	a2, t0, 0 ! 1906
	slli	a3, a1, 2 ! 1907
	lw	a4, sp, 40 ! 0
	add	t0, a4, a3 ! 1907
	lw	a3, t0, 0 ! 1907
	lw	a21, sp, 8 ! 0
	mv	a1, a2
	mv	a2, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 24 ! 0
	slli	a0, a0, 2 ! 1908
	lw	a1, sp, 44 ! 0
	add	t0, a1, a0 ! 1908
	lw	a1, t0, 0 ! 1908
	lw	a0, sp, 0 ! 0
	lw	a2, sp, 16 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_diffuse_using_5points.2828:
	lw	a5, a21, 24 ! 0
	lw	a6, a21, 20 ! 0
	lw	a7, a21, 16 ! 0
	lw	a8, a21, 12 ! 0
	lw	a9, a21, 8 ! 0
	lw	a10, a21, 4 ! 0
	slli	a11, a0, 2 ! 1917
	add	t0, a1, a11 ! 1917
	lw	a1, t0, 0 ! 1917
	sw	sp, a8, 0 ! 0
	sw	sp, a7, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a9, 12 ! 0
	sw	sp, a5, 16 ! 0
	sw	sp, a4, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a2, 28 ! 0
	sw	sp, a10, 32 ! 0
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 36 ! 0
	sub	a3, a2, a1 ! 1918
	slli	a3, a3, 2 ! 1918
	lw	a4, sp, 28 ! 0
	add	t0, a4, a3 ! 1918
	lw	a3, t0, 0 ! 1918
	sw	sp, a0, 40 ! 0
	mv	a0, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 36 ! 0
	slli	a2, a1, 2 ! 1919
	lw	a3, sp, 28 ! 0
	add	t0, a3, a2 ! 1919
	lw	a2, t0, 0 ! 1919
	sw	sp, a0, 44 ! 0
	mv	a0, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 36 ! 0
	add	a1, a2, a1 ! 1920
	slli	a1, a1, 2 ! 1920
	lw	a3, sp, 28 ! 0
	add	t0, a3, a1 ! 1920
	lw	a1, t0, 0 ! 1920
	sw	sp, a0, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 36 ! 0
	slli	a2, a1, 2 ! 1921
	lw	a3, sp, 24 ! 0
	add	t0, a3, a2 ! 1921
	lw	a2, t0, 0 ! 1921
	sw	sp, a0, 52 ! 0
	mv	a0, a2
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 20 ! 0
	slli	a2, a1, 2 ! 1923
	lw	a3, sp, 40 ! 0
	add	t0, a3, a2 ! 1923
	lw	a2, t0, 0 ! 1923
	lw	a3, sp, 12 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, a0, 56 ! 0
	mv	a1, a2
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 1924
	lw	a2, sp, 44 ! 0
	add	t0, a2, a1 ! 1924
	lw	a1, t0, 0 ! 1924
	lw	a2, sp, 12 ! 0
	lw	a21, sp, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 1925
	lw	a2, sp, 48 ! 0
	add	t0, a2, a1 ! 1925
	lw	a1, t0, 0 ! 1925
	lw	a2, sp, 12 ! 0
	lw	a21, sp, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 1926
	lw	a2, sp, 52 ! 0
	add	t0, a2, a1 ! 1926
	lw	a1, t0, 0 ! 1926
	lw	a2, sp, 12 ! 0
	lw	a21, sp, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 1927
	lw	a2, sp, 56 ! 0
	add	t0, a2, a1 ! 1927
	lw	a1, t0, 0 ! 1927
	lw	a2, sp, 12 ! 0
	lw	a21, sp, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 36 ! 0
	slli	a0, a0, 2 ! 1929
	lw	a1, sp, 28 ! 0
	add	t0, a1, a0 ! 1929
	lw	a0, t0, 0 ! 1929
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	p_energy.2572
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 20 ! 0
	slli	a1, a1, 2 ! 1930
	add	t0, a0, a1 ! 1930
	lw	a1, t0, 0 ! 1930
	lw	a0, sp, 0 ! 0
	lw	a2, sp, 12 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
do_without_neighbors.2834:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	li	a5, 4 ! 1936
	blt	a5, a1, bge_else.12031
	sw	sp, a21, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a1, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	p_surface_ids.2568
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	slli	a2, a1, 2 ! 1939
	add	t0, a0, a2 ! 1939
	lw	a0, t0, 0 ! 1939
	lw	a2, sp, 16 ! 0
	blt	a0, a2, bge_else.12032
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	p_calc_diffuse.2570
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	slli	a2, a1, 2 ! 1941
	add	t0, a0, a2 ! 1941
	lw	a0, t0, 0 ! 1941
	lw	a2, sp, 16 ! 0
	bne	a0, a2, be_else.12033
	j	be_cont.12034
be_else.12033:
	lw	a0, sp, 12 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
be_cont.12034:
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 20 ! 0
	add	a1, a1, a0 ! 1944
	lw	a0, sp, 12 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12032:
	ret ! 1945
bge_else.12031:
	ret ! 1946
neighbors_exist.2837:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a4, 2 ! 1951
	add	t0, a2, a5 ! 1951
	lw	a5, t0, 0 ! 1951
	add	a6, a1, a4 ! 1951
	blt	a6, a5, bge_else.12037
	li	a0, 0 ! 1959
	ret ! 1959
bge_else.12037:
	blt	a3, a1, bge_else.12038
	li	a0, 0 ! 1958
	ret ! 1958
bge_else.12038:
	slli	a1, a3, 2 ! 1953
	add	t0, a2, a1 ! 1953
	lw	a1, t0, 0 ! 1953
	add	a2, a0, a4 ! 1953
	blt	a2, a1, bge_else.12039
	li	a0, 0 ! 1957
	ret ! 1957
bge_else.12039:
	blt	a3, a0, bge_else.12040
	li	a0, 0 ! 1956
	ret ! 1956
bge_else.12040:
	li	a0, 1 ! 1955
	ret ! 1955
get_surface_id.2841:
	sw	sp, a1, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	p_surface_ids.2568
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 1964
	add	t0, a0, a1 ! 1964
	lw	a0, t0, 0 ! 1964
	ret ! 1964
neighbors_are_available.2844:
	lw	a5, a21, 4 ! 0
	slli	a6, a0, 2 ! 1970
	add	t0, a2, a6 ! 1970
	lw	a6, t0, 0 ! 1970
	sw	sp, a2, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a0, 20 ! 0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	get_surface_id.2841
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	slli	a2, a1, 2 ! 1972
	lw	a3, sp, 16 ! 0
	add	t0, a3, a2 ! 1972
	lw	a2, t0, 0 ! 1972
	lw	a3, sp, 12 ! 0
	sw	sp, a0, 24 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	get_surface_id.2841
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.12041
	lw	a0, sp, 20 ! 0
	slli	a2, a0, 2 ! 1973
	lw	a3, sp, 8 ! 0
	add	t0, a3, a2 ! 1973
	lw	a2, t0, 0 ! 1973
	lw	a3, sp, 12 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	get_surface_id.2841
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.12042
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 20 ! 0
	sub	a3, a2, a0 ! 1974
	slli	a3, a3, 2 ! 1974
	lw	a4, sp, 0 ! 0
	add	t0, a4, a3 ! 1974
	lw	a3, t0, 0 ! 1974
	lw	a5, sp, 12 ! 0
	mv	a1, a5
	mv	a0, a3
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	get_surface_id.2841
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.12043
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 20 ! 0
	add	a0, a2, a0 ! 1975
	slli	a0, a0, 2 ! 1975
	lw	a2, sp, 0 ! 0
	add	t0, a2, a0 ! 1975
	lw	a0, t0, 0 ! 1975
	lw	a2, sp, 12 ! 0
	mv	a1, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	get_surface_id.2841
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0
	bne	a0, a1, be_else.12044
	li	a0, 1 ! 1976
	ret ! 1976
be_else.12044:
	li	a0, 0 ! 1977
	ret ! 1977
be_else.12043:
	li	a0, 0 ! 1978
	ret ! 1978
be_else.12042:
	li	a0, 0 ! 1979
	ret ! 1979
be_else.12041:
	li	a0, 0 ! 1980
	ret ! 1980
try_exploit_neighbors.2850:
	lw	a6, a21, 20 ! 0
	lw	a7, a21, 16 ! 0
	lw	a8, a21, 12 ! 0
	lw	a9, a21, 8 ! 0
	lw	a10, a21, 4 ! 0
	slli	a11, a0, 2 ! 1988
	add	t0, a3, a11 ! 1988
	lw	a11, t0, 0 ! 1988
	li	a12, 4 ! 1989
	blt	a12, a5, bge_else.12045
	sw	sp, a1, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a10, 8 ! 0
	sw	sp, a8, 12 ! 0
	sw	sp, a11, 16 ! 0
	sw	sp, a7, 20 ! 0
	sw	sp, a5, 24 ! 0
	sw	sp, a4, 28 ! 0
	sw	sp, a3, 32 ! 0
	sw	sp, a2, 36 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, a6, 44 ! 0
	sw	sp, a9, 48 ! 0
	mv	a1, a5
	mv	a0, a11
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	get_surface_id.2841
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 48 ! 0
	blt	a0, a1, bge_else.12046
	lw	a0, sp, 40 ! 0
	lw	a2, sp, 36 ! 0
	lw	a3, sp, 32 ! 0
	lw	a4, sp, 28 ! 0
	lw	a5, sp, 24 ! 0
	lw	a21, sp, 44 ! 0
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 48 ! 0
	bne	a0, a1, be_else.12047
	lw	a0, sp, 40 ! 0
	slli	a0, a0, 2 ! 2006
	lw	a1, sp, 32 ! 0
	add	t0, a1, a0 ! 2006
	lw	a0, t0, 0 ! 2006
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 20 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.12047:
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	p_calc_diffuse.2570
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a4, sp, 24 ! 0
	slli	a1, a4, 2 ! 1998
	add	t0, a0, a1 ! 1998
	lw	a0, t0, 0 ! 1998
	lw	a1, sp, 48 ! 0
	bne	a0, a1, be_else.12048
	j	be_cont.12049
be_else.12048:
	lw	a0, sp, 40 ! 0
	lw	a1, sp, 36 ! 0
	lw	a2, sp, 32 ! 0
	lw	a3, sp, 28 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
be_cont.12049:
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 24 ! 0
	add	a5, a1, a0 ! 2003
	lw	a0, sp, 40 ! 0
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 36 ! 0
	lw	a3, sp, 32 ! 0
	lw	a4, sp, 28 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12046:
	ret ! 2007
bge_else.12045:
	ret ! 2008
write_ppm_header.2857:
	lw	a0, a21, 12 ! 0
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	li	a3, 80 ! 2016
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a1, 8 ! 0
	mv	a0, a3
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_print_char
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, 51 ! 2017
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_print_char
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, 10 ! 2018
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_print_char
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 8 ! 0
	slli	a0, a0, 2 ! 2019
	lw	a1, sp, 4 ! 0
	add	t0, a1, a0 ! 2019
	lw	a0, t0, 0 ! 2019
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_print_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a0, 32 ! 2020
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_print_char
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 0 ! 0
	slli	a0, a0, 2 ! 2021
	lw	a1, sp, 4 ! 0
	add	t0, a1, a0 ! 2021
	lw	a0, t0, 0 ! 2021
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_print_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_print_char
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, 255 ! 2023
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_print_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	j	min_caml_print_char
write_rgb_element.2859:
	lw	a0, a21, 4 ! 0
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 2030
	blt	a1, a0, bge_else.12052
	lw	a1, sp, 0 ! 0
	blt	a0, a1, bge_else.12054
	j	bge_cont.12055
bge_else.12054:
	li	a0, 0 ! 2030
bge_cont.12055:
	j	bge_cont.12053
bge_else.12052:
	li	a0, 255 ! 2030
bge_cont.12053:
	j	min_caml_print_int
write_rgb.2861:
	lw	a0, a21, 20 ! 0
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a3, a3, 2 ! 2035
	add	t0, a1, a3 ! 2035
	flw	fa0, t0, 0 ! 2035
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a4, 12 ! 0
	mv	a21, a0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a0, 32 ! 2036
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_print_char
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	slli	a0, a0, 2 ! 2037
	lw	a1, sp, 8 ! 0
	add	t0, a1, a0 ! 2037
	flw	fa0, t0, 0 ! 2037
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_print_char
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 0 ! 0
	slli	a0, a0, 2 ! 2039
	lw	a1, sp, 8 ! 0
	add	t0, a1, a0 ! 2039
	flw	fa0, t0, 0 ! 2039
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, 10 ! 2040
	j	min_caml_print_char
pretrace_diffuse_rays.2863:
	lw	a2, a21, 32 ! 0
	lw	a3, a21, 28 ! 0
	lw	a4, a21, 24 ! 0
	lw	a5, a21, 20 ! 0
	lw	a6, a21, 16 ! 0
	lw	a7, a21, 12 ! 0
	lw	a8, a21, 8 ! 0
	lw	a9, a21, 4 ! 0
	li	a10, 4 ! 2052
	blt	a10, a1, bge_else.12056
	sw	sp, a21, 0 ! 0
	sw	sp, a9, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a6, 16 ! 0
	sw	sp, a7, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a5, 28 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a8, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	get_surface_id.2841
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0
	blt	a0, a1, bge_else.12057
	lw	a0, sp, 36 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	p_calc_diffuse.2570
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 32 ! 0
	slli	a2, a1, 2 ! 2059
	add	t0, a0, a2 ! 2059
	lw	a0, t0, 0 ! 2059
	lw	a2, sp, 40 ! 0
	bne	a0, a2, be_else.12058
	j	be_cont.12059
be_else.12058:
	lw	a0, sp, 36 ! 0
	lw	a21, sp, 28 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, a0, 44 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 36 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	p_nvectors.2581
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 36 ! 0
	sw	sp, a0, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	p_intersection_points.2566
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 44 ! 0
	slli	a1, a1, 2 ! 2068
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 2068
	lw	a1, t0, 0 ! 2068
	lw	a2, sp, 32 ! 0
	slli	a3, a2, 2 ! 2069
	lw	a4, sp, 48 ! 0
	add	t0, a4, a3 ! 2069
	lw	a3, t0, 0 ! 2069
	slli	a4, a2, 2 ! 2070
	add	t0, a0, a4 ! 2070
	lw	a0, t0, 0 ! 2070
	lw	a21, sp, 12 ! 0
	mv	a2, a0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 36 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 32 ! 0
	slli	a2, a1, 2 ! 2072
	add	t0, a0, a2 ! 2072
	lw	a0, t0, 0 ! 2072
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 8 ! 0
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
be_cont.12059:
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 32 ! 0
	add	a1, a1, a0 ! 2074
	lw	a0, sp, 36 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12057:
	ret ! 2075
bge_else.12056:
	ret ! 2076
pretrace_pixels.2866:
	lw	a3, a21, 72 ! 0
	lw	a4, a21, 68 ! 0
	lw	a5, a21, 64 ! 0
	lw	a6, a21, 60 ! 0
	lw	a7, a21, 56 ! 0
	lw	a8, a21, 52 ! 0
	lw	a9, a21, 48 ! 0
	lw	a10, a21, 44 ! 0
	lw	a11, a21, 40 ! 0
	lw	a12, a21, 36 ! 0
	lw	a13, a21, 32 ! 0
	lw	a14, a21, 28 ! 0
	lw	a15, a21, 24 ! 0
	lw	a16, a21, 20 ! 0
	lw	a17, a21, 16 ! 0
	lw	a18, a21, 12 ! 0
	lw	a19, a21, 8 ! 0
	flw	fa3, a21, 4 ! 0
	blt	a1, a18, bge_else.12062
	slli	a20, a18, 2 ! 2084
	add	t0, a10, a20 ! 2084
	flw	fa4, t0, 0 ! 2084
	slli	a10, a18, 2 ! 2084
	add	t0, a15, a10 ! 2084
	lw	a10, t0, 0 ! 2084
	sub	a10, a1, a10 ! 2084
	sw	sp, a21, 0 ! 0
	sw	sp, a16, 4 ! 0
	sw	sp, a13, 8 ! 0
	sw	sp, a2, 12 ! 0
	sw	sp, a14, 16 ! 0
	fsw	sp, fa3, 24 ! 0
	sw	sp, a7, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a1, 40 ! 0
	sw	sp, a3, 44 ! 0
	sw	sp, a8, 48 ! 0
	sw	sp, a5, 52 ! 0
	sw	sp, a11, 56 ! 0
	sw	sp, a6, 60 ! 0
	sw	sp, a4, 64 ! 0
	fsw	sp, fa2, 72 ! 0
	sw	sp, a17, 80 ! 0
	fsw	sp, fa1, 88 ! 0
	sw	sp, a19, 96 ! 0
	sw	sp, a12, 100 ! 0
	fsw	sp, fa0, 104 ! 0
	sw	sp, a9, 112 ! 0
	sw	sp, a18, 116 ! 0
	fsw	sp, fa4, 120 ! 0
	mv	a0, a10
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_float_of_int
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa1, sp, 120 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2084
	lw	a1, sp, 116 ! 0
	slli	a0, a1, 2 ! 2085
	lw	a2, sp, 112 ! 0
	add	t0, a2, a0 ! 2085
	flw	fa1, t0, 0 ! 2085
	fmul.s	fa1, fa0, fa1, rne ! 2085
	flw	fa2, sp, 104 ! 0
	fadd.s	fa1, fa1, fa2, rne ! 2085
	slli	a0, a1, 2 ! 2085
	lw	a3, sp, 100 ! 0
	add	t0, a3, a0 ! 2085
	fsw	t0, fa1, 0 ! 2085
	lw	a0, sp, 96 ! 0
	slli	a4, a0, 2 ! 2086
	add	t0, a2, a4 ! 2086
	flw	fa1, t0, 0 ! 2086
	fmul.s	fa1, fa0, fa1, rne ! 2086
	flw	fa3, sp, 88 ! 0
	fadd.s	fa1, fa1, fa3, rne ! 2086
	slli	a4, a0, 2 ! 2086
	add	t0, a3, a4 ! 2086
	fsw	t0, fa1, 0 ! 2086
	lw	a4, sp, 80 ! 0
	slli	a5, a4, 2 ! 2087
	add	t0, a2, a5 ! 2087
	flw	fa1, t0, 0 ! 2087
	fmul.s	fa0, fa0, fa1, rne ! 2087
	flw	fa1, sp, 72 ! 0
	fadd.s	fa0, fa0, fa1, rne ! 2087
	slli	a2, a4, 2 ! 2087
	add	t0, a3, a2 ! 2087
	fsw	t0, fa0, 0 ! 2087
	lw	a21, sp, 64 ! 0
	mv	a0, a3
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 60 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 48 ! 0
	lw	a1, sp, 44 ! 0
	lw	a21, sp, 52 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	li	a0, l.6003 ! 2093
	flw	fa0, a0, 0 ! 2093
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 2093
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 2093
	lw	a1, t0, 0 ! 2093
	flw	fa1, sp, 24 ! 0
	lw	a3, sp, 116 ! 0
	lw	a4, sp, 100 ! 0
	lw	a21, sp, 32 ! 0
	mv	a2, a1
	mv	a0, a3
	mv	a1, a4
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 2094
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 2094
	lw	a1, t0, 0 ! 2094
	mv	a0, a1
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	p_rgb.2564
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 56 ! 0
	lw	a21, sp, 52 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 2095
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 2095
	lw	a1, t0, 0 ! 2095
	lw	a3, sp, 12 ! 0
	lw	a21, sp, 16 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 2098
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 2098
	lw	a1, t0, 0 ! 2098
	lw	a3, sp, 116 ! 0
	lw	a21, sp, 8 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 96 ! 0
	lw	a0, sp, 40 ! 0
	sub	a0, a0, a1 ! 2100
	lw	a2, sp, 12 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 128 ! 0
	mv	a0, a2
	sw	sp, ra, 132
	addi	sp, sp, 136
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -136
	lw	ra, sp, 132
	mv	a2, a0
	flw	fa0, sp, 104 ! 0
	flw	fa1, sp, 88 ! 0
	flw	fa2, sp, 72 ! 0
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 128 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12062:
	ret ! 2102
pretrace_line.2873:
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	slli	a12, a10, 2 ! 2107
	add	t0, a5, a12 ! 2107
	flw	fa0, t0, 0 ! 2107
	slli	a5, a11, 2 ! 2107
	add	t0, a8, a5 ! 2107
	lw	a5, t0, 0 ! 2107
	sub	a1, a1, a5 ! 2107
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a7, 12 ! 0
	sw	sp, a9, 16 ! 0
	sw	sp, a11, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a4, 28 ! 0
	sw	sp, a10, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_float_of_int
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2107
	lw	a0, sp, 32 ! 0
	slli	a1, a0, 2 ! 2110
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 2110
	flw	fa1, t0, 0 ! 2110
	fmul.s	fa1, fa0, fa1, rne ! 2110
	slli	a1, a0, 2 ! 2110
	lw	a3, sp, 24 ! 0
	add	t0, a3, a1 ! 2110
	flw	fa2, t0, 0 ! 2110
	fadd.s	fa1, fa1, fa2, rne ! 2110
	lw	a1, sp, 20 ! 0
	slli	a4, a1, 2 ! 2111
	add	t0, a2, a4 ! 2111
	flw	fa2, t0, 0 ! 2111
	fmul.s	fa2, fa0, fa2, rne ! 2111
	slli	a4, a1, 2 ! 2111
	add	t0, a3, a4 ! 2111
	flw	fa3, t0, 0 ! 2111
	fadd.s	fa2, fa2, fa3, rne ! 2111
	lw	a4, sp, 16 ! 0
	slli	a5, a4, 2 ! 2112
	add	t0, a2, a5 ! 2112
	flw	fa3, t0, 0 ! 2112
	fmul.s	fa0, fa0, fa3, rne ! 2112
	slli	a2, a4, 2 ! 2112
	add	t0, a3, a2 ! 2112
	flw	fa3, t0, 0 ! 2112
	fadd.s	fa0, fa0, fa3, rne ! 2112
	slli	a0, a0, 2 ! 2113
	lw	a2, sp, 12 ! 0
	add	t0, a2, a0 ! 2113
	lw	a0, t0, 0 ! 2113
	sub	a1, a0, a1 ! 2113
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	fmv.s	fa26, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa26
	lw	a20, a21, 0
	jalr	zero, a20, 0
scan_pixel.2877:
	lw	a5, a21, 36 ! 0
	lw	a6, a21, 32 ! 0
	lw	a7, a21, 28 ! 0
	lw	a8, a21, 24 ! 0
	lw	a9, a21, 20 ! 0
	lw	a10, a21, 16 ! 0
	lw	a11, a21, 12 ! 0
	lw	a12, a21, 8 ! 0
	lw	a13, a21, 4 ! 0
	slli	a14, a12, 2 ! 2123
	add	t0, a10, a14 ! 2123
	lw	a10, t0, 0 ! 2123
	blt	a0, a10, bge_else.12068
	ret ! 2138
bge_else.12068:
	slli	a10, a0, 2 ! 2126
	add	t0, a3, a10 ! 2126
	lw	a10, t0, 0 ! 2126
	sw	sp, a21, 0 ! 0
	sw	sp, a13, 4 ! 0
	sw	sp, a5, 8 ! 0
	sw	sp, a2, 12 ! 0
	sw	sp, a7, 16 ! 0
	sw	sp, a11, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a12, 28 ! 0
	sw	sp, a4, 32 ! 0
	sw	sp, a1, 36 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, a9, 44 ! 0
	sw	sp, a8, 48 ! 0
	sw	sp, a6, 52 ! 0
	mv	a0, a10
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	p_rgb.2564
	addi	sp, sp, -60
	lw	ra, sp, 56
	mv	a1, a0
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 52 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 40 ! 0
	lw	a1, sp, 36 ! 0
	lw	a2, sp, 32 ! 0
	lw	a21, sp, 44 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 28 ! 0
	bne	a0, a1, be_else.12070
	lw	a0, sp, 40 ! 0
	slli	a2, a0, 2 ! 2132
	lw	a3, sp, 24 ! 0
	add	t0, a3, a2 ! 2132
	lw	a2, t0, 0 ! 2132
	lw	a21, sp, 20 ! 0
	mv	a0, a2
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	j	be_cont.12071
be_else.12070:
	lw	a0, sp, 40 ! 0
	lw	a2, sp, 36 ! 0
	lw	a3, sp, 12 ! 0
	lw	a4, sp, 24 ! 0
	lw	a5, sp, 32 ! 0
	lw	a21, sp, 16 ! 0
	mv	a20, a5
	mv	a5, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a20
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
be_cont.12071:
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 40 ! 0
	add	a0, a1, a0 ! 2137
	lw	a1, sp, 36 ! 0
	lw	a2, sp, 12 ! 0
	lw	a3, sp, 24 ! 0
	lw	a4, sp, 32 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
scan_line.2883:
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	slli	a12, a11, 2 ! 2144
	add	t0, a7, a12 ! 2144
	lw	a12, t0, 0 ! 2144
	blt	a0, a12, bge_else.12072
	ret ! 2151
bge_else.12072:
	slli	a12, a11, 2 ! 2146
	add	t0, a7, a12 ! 2146
	lw	a7, t0, 0 ! 2146
	sub	a7, a7, a11 ! 2146
	sw	sp, a21, 0 ! 0
	sw	sp, a9, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a8, 12 ! 0
	sw	sp, a11, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a2, 24 ! 0
	sw	sp, a1, 28 ! 0
	sw	sp, a0, 32 ! 0
	sw	sp, a10, 36 ! 0
	sw	sp, a5, 40 ! 0
	blt	a0, a7, bge_else.12074
	j	bge_cont.12075
bge_else.12074:
	add	a7, a0, a11 ! 2147
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	a21, a6
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
bge_cont.12075:
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 28 ! 0
	lw	a3, sp, 24 ! 0
	lw	a4, sp, 20 ! 0
	lw	a21, sp, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	add	a0, a1, a0 ! 2150
	lw	a1, sp, 8 ! 0
	lw	a2, sp, 4 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, a0, 44 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	mv	a4, a0
	lw	a0, sp, 44 ! 0
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 20 ! 0
	lw	a3, sp, 28 ! 0
	lw	a21, sp, 0 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	ret ! 2150
create_float5x3array.2889:
	lw	a0, a21, 20 ! 0
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	sw	sp, a1, 0 ! 0
	sw	sp, a3, 4 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, a2, 16 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa0, sp, 8 ! 0
	lw	a1, sp, 16 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 4 ! 0
	slli	a1, a1, 2 ! 2163
	lw	a2, sp, 24 ! 0
	add	t0, a2, a1 ! 2163
	sw	t0, a0, 0 ! 2163
	flw	fa0, sp, 8 ! 0
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 2164
	lw	a2, sp, 24 ! 0
	add	t0, a2, a1 ! 2164
	sw	t0, a0, 0 ! 2164
	flw	fa0, sp, 8 ! 0
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 2165
	lw	a3, sp, 24 ! 0
	add	t0, a3, a2 ! 2165
	sw	t0, a0, 0 ! 2165
	flw	fa0, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0
	sw	a1, a0, 16 ! 2166
	mv	a0, a1 ! 2167
	ret ! 2167
create_pixel.2891:
	lw	a0, a21, 24 ! 0
	lw	a1, a21, 20 ! 0
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	sw	sp, a4, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a0, a2
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_float_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a21, sp, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8 ! 0
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 8 ! 0
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a21, sp, 12 ! 0
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a21, sp, 12 ! 0
	sw	sp, a0, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a21, sp, 12 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, hp ! 2181
	addi	hp, hp, 32 ! 2181
	sw	a1, a0, 28 ! 2181
	lw	a0, sp, 40 ! 0
	sw	a1, a0, 24 ! 2181
	lw	a0, sp, 36 ! 0
	sw	a1, a0, 20 ! 2181
	lw	a0, sp, 32 ! 0
	sw	a1, a0, 16 ! 2181
	lw	a0, sp, 28 ! 0
	sw	a1, a0, 12 ! 2181
	lw	a0, sp, 24 ! 0
	sw	a1, a0, 8 ! 2181
	lw	a0, sp, 20 ! 0
	sw	a1, a0, 4 ! 2181
	lw	a0, sp, 16 ! 0
	sw	a1, a0, 0 ! 2181
	mv	a0, a1 ! 2181
	ret ! 2181
init_line_elements.2893:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	blt	a1, a3, bge_else.12077
	sw	sp, a21, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a1, 12 ! 0
	mv	a21, a2
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 2187
	lw	a3, sp, 8 ! 0
	add	t0, a3, a2 ! 2187
	sw	t0, a0, 0 ! 2187
	lw	a0, sp, 4 ! 0
	sub	a1, a1, a0 ! 2188
	lw	a21, sp, 0 ! 0
	mv	a0, a3
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12077:
	ret ! 2190
create_pixelline.2896:
	lw	a0, a21, 20 ! 0
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a4, 2 ! 2195
	add	t0, a1, a5 ! 2195
	lw	a5, t0, 0 ! 2195
	sw	sp, a0, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a5, 16 ! 0
	mv	a21, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, a0
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12 ! 0
	slli	a1, a1, 2 ! 2196
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 2196
	lw	a1, t0, 0 ! 2196
	lw	a2, sp, 4 ! 0
	sub	a1, a1, a2 ! 2196
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
tan.2898:
	fsw	sp, fa0, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_sin
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 0 ! 0
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_cos
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 2209
	ret ! 2209
adjust_position.2900:
	fmul.s	fa0, fa0, fa0, rne ! 2214
	li	a0, l.6502 ! 2214
	flw	fa2, a0, 0 ! 2214
	fadd.s	fa0, fa0, fa2, rne ! 2214
	fsw	sp, fa1, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_sqrt
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, l.6003 ! 2215
	flw	fa1, a0, 0 ! 2215
	fdiv.s	fa1, fa1, fa0, rne ! 2215
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_atan
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 0 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2217
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	tan.2898
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2218
	ret ! 2218
calc_dirvec.2903:
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	blt	a0, a5, bge_else.12078
	sw	sp, a6, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	fsw	sp, fa1, 32 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fsqr
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fsqr
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 2224
	li	a0, l.6003 ! 2224
	flw	fa1, a0, 0 ! 2224
	fadd.s	fa0, fa0, fa1, rne ! 2224
	fsw	sp, fa1, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_sqrt
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 24 ! 0
	fdiv.s	fa1, fa1, fa0, rne ! 2225
	flw	fa2, sp, 32 ! 0
	fdiv.s	fa2, fa2, fa0, rne ! 2226
	flw	fa3, sp, 48 ! 0
	fdiv.s	fa0, fa3, fa0, rne ! 2227
	lw	a0, sp, 16 ! 0
	slli	a0, a0, 2 ! 2230
	lw	a1, sp, 12 ! 0
	add	t0, a1, a0 ! 2230
	lw	a0, t0, 0 ! 2230
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 2231
	add	t0, a0, a2 ! 2231
	lw	a2, t0, 0 ! 2231
	sw	sp, a0, 56 ! 0
	fsw	sp, fa0, 64 ! 0
	fsw	sp, fa2, 72 ! 0
	fsw	sp, fa1, 80 ! 0
	mv	a0, a2
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	d_vec.2583
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa0, sp, 80 ! 0
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 64 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 8 ! 0
	addi	a1, a0, 40 ! 2232
	slli	a1, a1, 2 ! 2232
	lw	a2, sp, 56 ! 0
	add	t0, a2, a1 ! 2232
	lw	a1, t0, 0 ! 2232
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	d_vec.2583
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa0, sp, 72 ! 0
	sw	sp, a0, 88 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_fneg
	addi	sp, sp, -96
	lw	ra, sp, 92
	fmv.s	fa2, fa0
	flw	fa0, sp, 80 ! 0
	flw	fa1, sp, 64 ! 0
	lw	a0, sp, 88 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
	lw	a0, sp, 8 ! 0
	addi	a1, a0, 80 ! 2233
	slli	a1, a1, 2 ! 2233
	lw	a2, sp, 56 ! 0
	add	t0, a2, a1 ! 2233
	lw	a1, t0, 0 ! 2233
	mv	a0, a1
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	d_vec.2583
	addi	sp, sp, -96
	lw	ra, sp, 92
	flw	fa0, sp, 80 ! 0
	sw	sp, a0, 92 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fneg
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 72 ! 0
	fsw	sp, fa0, 96 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fneg
	addi	sp, sp, -108
	lw	ra, sp, 104
	fmv.s	fa2, fa0
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 96 ! 0
	lw	a0, sp, 92 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 8 ! 0
	add	a0, a1, a0 ! 2234
	slli	a0, a0, 2 ! 2234
	lw	a2, sp, 56 ! 0
	add	t0, a2, a0 ! 2234
	lw	a0, t0, 0 ! 2234
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	d_vec.2583
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa0, sp, 80 ! 0
	sw	sp, a0, 104 ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	min_caml_fneg
	addi	sp, sp, -112
	lw	ra, sp, 108
	flw	fa1, sp, 72 ! 0
	fsw	sp, fa0, 112 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_fneg
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 64 ! 0
	fsw	sp, fa0, 120 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fneg
	addi	sp, sp, -132
	lw	ra, sp, 128
	fmv.s	fa2, fa0
	flw	fa0, sp, 112 ! 0
	flw	fa1, sp, 120 ! 0
	lw	a0, sp, 104 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 8 ! 0
	addi	a1, a0, 41 ! 2235
	slli	a1, a1, 2 ! 2235
	lw	a2, sp, 56 ! 0
	add	t0, a2, a1 ! 2235
	lw	a1, t0, 0 ! 2235
	mv	a0, a1
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	d_vec.2583
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa0, sp, 80 ! 0
	sw	sp, a0, 128 ! 0
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	min_caml_fneg
	addi	sp, sp, -136
	lw	ra, sp, 132
	flw	fa1, sp, 64 ! 0
	fsw	sp, fa0, 136 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fneg
	addi	sp, sp, -148
	lw	ra, sp, 144
	fmv.s	fa1, fa0
	flw	fa0, sp, 136 ! 0
	flw	fa2, sp, 72 ! 0
	lw	a0, sp, 128 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -148
	lw	ra, sp, 144
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 81 ! 2236
	slli	a0, a0, 2 ! 2236
	lw	a1, sp, 56 ! 0
	add	t0, a1, a0 ! 2236
	lw	a0, t0, 0 ! 2236
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	d_vec.2583
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa0, sp, 64 ! 0
	sw	sp, a0, 144 ! 0
	sw	sp, ra, 148
	addi	sp, sp, 152
	jal	min_caml_fneg
	addi	sp, sp, -152
	lw	ra, sp, 148
	flw	fa1, sp, 80 ! 0
	flw	fa2, sp, 72 ! 0
	lw	a0, sp, 144 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12078:
	fsw	sp, fa2, 152 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a21, 160 ! 0
	fsw	sp, fa3, 168 ! 0
	sw	sp, a6, 0 ! 0
	sw	sp, a0, 176 ! 0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	sw	sp, ra, 180
	addi	sp, sp, 184
	jal	adjust_position.2900
	addi	sp, sp, -184
	lw	ra, sp, 180
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 176 ! 0
	add	a0, a1, a0 ! 2239
	flw	fa1, sp, 168 ! 0
	fsw	sp, fa0, 184 ! 0
	sw	sp, a0, 192 ! 0
	sw	sp, ra, 196
	addi	sp, sp, 200
	jal	adjust_position.2900
	addi	sp, sp, -200
	lw	ra, sp, 196
	fmv.s	fa1, fa0
	flw	fa0, sp, 184 ! 0
	flw	fa2, sp, 152 ! 0
	flw	fa3, sp, 168 ! 0
	lw	a0, sp, 192 ! 0
	lw	a1, sp, 16 ! 0
	lw	a2, sp, 8 ! 0
	lw	a21, sp, 160 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_dirvecs.2911:
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	flw	fa1, a21, 4 ! 0
	blt	a0, a6, bge_else.12086
	sw	sp, a21, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a7, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a0, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	fsw	sp, fa1, 32 ! 0
	sw	sp, a2, 40 ! 0
	sw	sp, a1, 44 ! 0
	sw	sp, a6, 48 ! 0
	sw	sp, a3, 52 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_float_of_int
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a0, l.6623 ! 2246
	flw	fa1, a0, 0 ! 2246
	fmul.s	fa0, fa0, fa1, rne ! 2246
	li	a0, l.6625 ! 2246
	flw	fa2, a0, 0 ! 2246
	fsub.s	fa2, fa0, fa2, rne ! 2246
	flw	fa0, sp, 32 ! 0
	flw	fa3, sp, 24 ! 0
	lw	a0, sp, 48 ! 0
	lw	a1, sp, 44 ! 0
	lw	a2, sp, 40 ! 0
	lw	a21, sp, 52 ! 0
	fsw	sp, fa1, 56 ! 0
	fmv.s	fa1, fa0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_float_of_int
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2249
	li	a0, l.6502 ! 2249
	flw	fa1, a0, 0 ! 2249
	fadd.s	fa2, fa0, fa1, rne ! 2249
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 40 ! 0
	add	a2, a1, a0 ! 2250
	flw	fa0, sp, 32 ! 0
	flw	fa3, sp, 24 ! 0
	lw	a0, sp, 48 ! 0
	lw	a3, sp, 44 ! 0
	lw	a21, sp, 52 ! 0
	mv	a1, a3
	fmv.s	fa1, fa0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a1, sp, 8 ! 0
	lw	a0, sp, 16 ! 0
	sub	a0, a0, a1 ! 2252
	lw	a2, sp, 44 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 64 ! 0
	mv	a0, a2
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	mv	a1, a0
	flw	fa0, sp, 24 ! 0
	lw	a0, sp, 64 ! 0
	lw	a2, sp, 40 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12086:
	ret ! 2253
calc_dirvec_rows.2916:
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	blt	a0, a6, bge_else.12089
	sw	sp, a21, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a7, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a2, 20 ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a3, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_float_of_int
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, l.6623 ! 2259
	flw	fa1, a0, 0 ! 2259
	fmul.s	fa0, fa0, fa1, rne ! 2259
	li	a0, l.6625 ! 2259
	flw	fa1, a0, 0 ! 2259
	fsub.s	fa0, fa0, fa1, rne ! 2259
	li	a0, 4 ! 2260
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 16 ! 0
	sub	a0, a1, a0 ! 2261
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, a0, 32 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	addi	a2, a0, 4 ! 2261
	lw	a0, sp, 32 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12089:
	ret ! 2262
create_dirvec.2920:
	lw	a0, a21, 16 ! 0
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	flw	fa0, a21, 4 ! 0
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	mv	a0, a1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	mv	a1, a0
	lw	a0, sp, 4 ! 0
	slli	a0, a0, 2 ! 2272
	lw	a2, sp, 0 ! 0
	add	t0, a2, a0 ! 2272
	lw	a0, t0, 0 ! 2272
	sw	sp, a1, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 8 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	ret ! 2273
create_dirvec_elements.2922:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	blt	a1, a3, bge_else.12091
	sw	sp, a21, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a1, 12 ! 0
	mv	a21, a2
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 2278
	lw	a3, sp, 8 ! 0
	add	t0, a3, a2 ! 2278
	sw	t0, a0, 0 ! 2278
	lw	a0, sp, 4 ! 0
	sub	a1, a1, a0 ! 2279
	lw	a21, sp, 0 ! 0
	mv	a0, a3
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12091:
	ret ! 2280
create_dirvecs.2925:
	lw	a1, a21, 20 ! 0
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	blt	a0, a4, bge_else.12093
	li	a4, 120 ! 2285
	sw	sp, a21, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a4, 20 ! 0
	mv	a21, a3
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 2285
	lw	a3, sp, 12 ! 0
	add	t0, a3, a2 ! 2285
	sw	t0, a0, 0 ! 2285
	slli	a0, a1, 2 ! 2286
	add	t0, a3, a0 ! 2286
	lw	a0, t0, 0 ! 2286
	li	a2, 118 ! 2286
	lw	a21, sp, 8 ! 0
	mv	a1, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 16 ! 0
	sub	a0, a1, a0 ! 2287
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12093:
	ret ! 2288
init_dirvec_constants.2927:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	blt	a1, a3, bge_else.12095
	slli	a3, a1, 2 ! 2297
	add	t0, a0, a3 ! 2297
	lw	a3, t0, 0 ! 2297
	sw	sp, a0, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a1, 12 ! 0
	mv	a0, a3
	mv	a21, a2
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 12 ! 0
	sub	a1, a1, a0 ! 2298
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12095:
	ret ! 2299
init_vecset_constants.2930:
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	blt	a0, a3, bge_else.12097
	slli	a3, a0, 2 ! 2304
	add	t0, a2, a3 ! 2304
	lw	a2, t0, 0 ! 2304
	li	a3, 119 ! 2304
	sw	sp, a21, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a0, 8 ! 0
	mv	a0, a2
	mv	a21, a1
	mv	a1, a3
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 8 ! 0
	sub	a0, a1, a0 ! 2305
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.12097:
	ret ! 2306
init_dirvecs.2932:
	lw	a0, a21, 16 ! 0
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	li	a4, 4 ! 2310
	sw	sp, a4, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a2, 12 ! 0
	mv	a0, a4
	mv	a21, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a0, 9 ! 2311
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	mv	a2, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
add_reflection.2934:
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a21, a21, 4 ! 0
	sw	sp, a4, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a1, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a3, 24 ! 0
	fsw	sp, fa3, 32 ! 0
	fsw	sp, fa2, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	sw	sp, a2, 56 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	sw	sp, a0, 60 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	d_vec.2583
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 32 ! 0
	lw	a21, sp, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 60 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	mv	a0, hp ! 2325
	addi	hp, hp, 12 ! 2325
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 2325
	lw	a1, sp, 60 ! 0
	sw	a0, a1, 4 ! 2325
	lw	a1, sp, 8 ! 0
	sw	a0, a1, 0 ! 2325
	lw	a1, sp, 4 ! 0
	slli	a1, a1, 2 ! 2325
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 2325
	sw	t0, a0, 0 ! 2325
	ret ! 2325
setup_rect_reflection.2941:
	lw	a2, a21, 32 ! 0
	lw	a3, a21, 28 ! 0
	lw	a4, a21, 24 ! 0
	lw	a5, a21, 20 ! 0
	lw	a6, a21, 16 ! 0
	lw	a7, a21, 12 ! 0
	lw	a8, a21, 8 ! 0
	lw	a9, a21, 4 ! 0
	li	a10, 4 ! 2330
	mul	a0, a0, a10 ! 2330
	slli	a10, a8, 2 ! 2331
	add	t0, a3, a10 ! 2331
	lw	a10, t0, 0 ! 2331
	li	a11, l.6003 ! 2332
	flw	fa0, a11, 0 ! 2332
	sw	sp, a3, 0 ! 0
	sw	sp, a7, 4 ! 0
	sw	sp, a10, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a6, 20 ! 0
	sw	sp, a9, 24 ! 0
	sw	sp, a4, 28 ! 0
	sw	sp, a8, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	mv	a0, a1
	mv	a21, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 2332
	lw	a0, sp, 32 ! 0
	slli	a1, a0, 2 ! 2333
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 2333
	flw	fa1, t0, 0 ! 2333
	fsw	sp, fa0, 48 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fneg
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 2334
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 2334
	flw	fa1, t0, 0 ! 2334
	fsw	sp, fa0, 56 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 2335
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 2335
	flw	fa1, t0, 0 ! 2335
	fsw	sp, fa0, 64 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	fmv.s	fa3, fa0
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 16 ! 0
	add	a2, a1, a0 ! 2336
	lw	a3, sp, 32 ! 0
	slli	a4, a3, 2 ! 2336
	lw	a5, sp, 28 ! 0
	add	t0, a5, a4 ! 2336
	flw	fa1, t0, 0 ! 2336
	flw	fa0, sp, 48 ! 0
	flw	fa2, sp, 64 ! 0
	lw	a4, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	fsw	sp, fa3, 72 ! 0
	mv	a1, a2
	mv	a0, a4
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 8 ! 0
	add	a2, a1, a0 ! 2337
	lw	a3, sp, 20 ! 0
	lw	a4, sp, 16 ! 0
	add	a5, a4, a3 ! 2337
	slli	a0, a0, 2 ! 2337
	lw	a6, sp, 28 ! 0
	add	t0, a6, a0 ! 2337
	flw	fa2, t0, 0 ! 2337
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 56 ! 0
	flw	fa3, sp, 72 ! 0
	lw	a21, sp, 12 ! 0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 8 ! 0
	add	a2, a1, a0 ! 2338
	lw	a3, sp, 4 ! 0
	lw	a4, sp, 16 ! 0
	add	a4, a4, a3 ! 2338
	slli	a0, a0, 2 ! 2338
	lw	a5, sp, 28 ! 0
	add	t0, a5, a0 ! 2338
	flw	fa3, t0, 0 ! 2338
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 64 ! 0
	lw	a21, sp, 12 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 8 ! 0
	add	a0, a1, a0 ! 2339
	lw	a1, sp, 32 ! 0
	slli	a1, a1, 2 ! 2339
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 2339
	sw	t0, a0, 0 ! 2339
	ret ! 2339
setup_surface_reflection.2944:
	lw	a2, a21, 44 ! 0
	lw	a3, a21, 40 ! 0
	lw	a4, a21, 36 ! 0
	lw	a5, a21, 32 ! 0
	lw	a6, a21, 28 ! 0
	lw	a7, a21, 24 ! 0
	lw	a8, a21, 20 ! 0
	lw	a9, a21, 16 ! 0
	lw	a10, a21, 12 ! 0
	lw	a11, a21, 8 ! 0
	lw	a12, a21, 4 ! 0
	li	a13, 4 ! 2344
	mul	a0, a0, a13 ! 2344
	add	a0, a0, a12 ! 2344
	slli	a13, a11, 2 ! 2345
	add	t0, a7, a13 ! 2345
	lw	a13, t0, 0 ! 2345
	li	a14, l.6003 ! 2346
	flw	fa0, a14, 0 ! 2346
	sw	sp, a7, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a13, 8 ! 0
	sw	sp, a9, 12 ! 0
	sw	sp, a10, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a12, 24 ! 0
	sw	sp, a4, 28 ! 0
	sw	sp, a11, 32 ! 0
	sw	sp, a5, 36 ! 0
	sw	sp, a8, 40 ! 0
	sw	sp, a2, 44 ! 0
	sw	sp, a1, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	mv	a0, a1
	mv	a21, a6
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 2346
	lw	a0, sp, 48 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_param_abc.2538
	addi	sp, sp, -76
	lw	ra, sp, 72
	mv	a1, a0
	lw	a0, sp, 40 ! 0
	lw	a21, sp, 44 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a0, l.6135 ! 2350
	flw	fa1, a0, 0 ! 2350
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 36 ! 0
	fsw	sp, fa0, 72 ! 0
	fsw	sp, fa1, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2350
	flw	fa2, sp, 72 ! 0
	fmul.s	fa0, fa0, fa2, rne ! 2350
	lw	a0, sp, 32 ! 0
	slli	a1, a0, 2 ! 2350
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 2350
	flw	fa3, t0, 0 ! 2350
	fsub.s	fa0, fa0, fa3, rne ! 2350
	lw	a1, sp, 48 ! 0
	lw	a21, sp, 28 ! 0
	fsw	sp, fa0, 88 ! 0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2351
	flw	fa2, sp, 72 ! 0
	fmul.s	fa0, fa0, fa2, rne ! 2351
	lw	a0, sp, 24 ! 0
	slli	a1, a0, 2 ! 2351
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 2351
	flw	fa3, t0, 0 ! 2351
	fsub.s	fa0, fa0, fa3, rne ! 2351
	lw	a1, sp, 48 ! 0
	lw	a21, sp, 20 ! 0
	fsw	sp, fa0, 96 ! 0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2352
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2352
	lw	a0, sp, 16 ! 0
	slli	a0, a0, 2 ! 2352
	lw	a1, sp, 40 ! 0
	add	t0, a1, a0 ! 2352
	flw	fa1, t0, 0 ! 2352
	fsub.s	fa3, fa0, fa1, rne ! 2352
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 88 ! 0
	flw	fa2, sp, 96 ! 0
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 4 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 8 ! 0
	add	a0, a1, a0 ! 2353
	lw	a1, sp, 32 ! 0
	slli	a1, a1, 2 ! 2353
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 2353
	sw	t0, a0, 0 ! 2353
	ret ! 2353
setup_reflections.2947:
	lw	a1, a21, 28 ! 0
	lw	a2, a21, 24 ! 0
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	blt	a0, a6, bge_else.12106
	slli	a8, a0, 2 ! 2360
	add	t0, a3, a8 ! 2360
	lw	a3, t0, 0 ! 2360
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a7, 12 ! 0
	sw	sp, a6, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a4, 24 ! 0
	sw	sp, a5, 28 ! 0
	mv	a0, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_reflectiontype.2526
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 28 ! 0
	bne	a0, a1, be_else.12107
	lw	a0, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, l.6003 ! 2362
	flw	fa1, a0, 0 ! 2362
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 16 ! 0
	bne	a0, a1, be_else.12108
	ret ! 2370
be_else.12108:
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_form.2524
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 12 ! 0
	bne	a0, a1, be_else.12110
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 20 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.12110:
	lw	a1, sp, 28 ! 0
	bne	a0, a1, be_else.12111
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 20 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.12111:
	ret ! 2369
be_else.12107:
	ret ! 2371
bge_else.12106:
	ret ! 2372
rt.2949:
	lw	a2, a21, 72 ! 0
	lw	a3, a21, 68 ! 0
	lw	a4, a21, 64 ! 0
	lw	a5, a21, 60 ! 0
	lw	a6, a21, 56 ! 0
	lw	a7, a21, 52 ! 0
	lw	a8, a21, 48 ! 0
	lw	a9, a21, 44 ! 0
	lw	a10, a21, 40 ! 0
	lw	a11, a21, 36 ! 0
	lw	a12, a21, 32 ! 0
	lw	a13, a21, 28 ! 0
	lw	a14, a21, 24 ! 0
	lw	a15, a21, 20 ! 0
	lw	a16, a21, 16 ! 0
	lw	a17, a21, 12 ! 0
	lw	a18, a21, 8 ! 0
	lw	a19, a21, 4 ! 0
	slli	a20, a18, 2 ! 2382
	add	t0, a14, a20 ! 2382
	sw	t0, a0, 0 ! 2382
	slli	a20, a19, 2 ! 2383
	add	t0, a14, a20 ! 2383
	sw	t0, a1, 0 ! 2383
	div	a14, a0, a17 ! 2384
	slli	a20, a18, 2 ! 2384
	add	t0, a15, a20 ! 2384
	sw	t0, a14, 0 ! 2384
	div	a1, a1, a17 ! 2385
	slli	a14, a19, 2 ! 2385
	add	t0, a15, a14 ! 2385
	sw	t0, a1, 0 ! 2385
	li	a1, l.6666 ! 2386
	flw	fa0, a1, 0 ! 2386
	sw	sp, a17, 0 ! 0
	sw	sp, a7, 4 ! 0
	sw	sp, a9, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a19, 16 ! 0
	sw	sp, a10, 20 ! 0
	sw	sp, a5, 24 ! 0
	sw	sp, a12, 28 ! 0
	sw	sp, a3, 32 ! 0
	sw	sp, a11, 36 ! 0
	sw	sp, a13, 40 ! 0
	sw	sp, a2, 44 ! 0
	sw	sp, a8, 48 ! 0
	sw	sp, a16, 52 ! 0
	sw	sp, a6, 56 ! 0
	sw	sp, a18, 60 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_float_of_int
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 2386
	lw	a0, sp, 60 ! 0
	slli	a1, a0, 2 ! 2386
	lw	a2, sp, 56 ! 0
	add	t0, a2, a1 ! 2386
	fsw	t0, fa0, 0 ! 2386
	lw	a21, sp, 52 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a21, sp, 52 ! 0
	sw	sp, a0, 72 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a21, sp, 52 ! 0
	sw	sp, a0, 76 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a21, sp, 48 ! 0
	sw	sp, a0, 80 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a21, sp, 44 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a21, sp, 40 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 36 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	d_vec.2583
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 36 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 60 ! 0
	slli	a1, a0, 2 ! 2395
	lw	a2, sp, 20 ! 0
	add	t0, a2, a1 ! 2395
	lw	a1, t0, 0 ! 2395
	lw	a2, sp, 16 ! 0
	sub	a1, a1, a2 ! 2395
	lw	a21, sp, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 76 ! 0
	lw	a1, sp, 60 ! 0
	lw	a21, sp, 8 ! 0
	mv	a2, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 60 ! 0
	lw	a1, sp, 72 ! 0
	lw	a2, sp, 76 ! 0
	lw	a3, sp, 80 ! 0
	lw	a4, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_start:
	li	a0, 1 ! 23
	li	a1, 0 ! 23
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, l.6001 ! 27
	flw	fa0, a1, 0 ! 27
	lw	a1, sp, 4 ! 0
	sw	sp, a0, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 60 ! 28
	mv	a2, hp ! 28
	addi	hp, hp, 44 ! 28
	sw	a2, a0, 40 ! 28
	sw	a2, a0, 36 ! 28
	sw	a2, a0, 32 ! 28
	sw	a2, a0, 28 ! 28
	lw	a3, sp, 4 ! 0
	sw	a2, a3, 24 ! 28
	sw	a2, a0, 20 ! 28
	sw	a2, a0, 16 ! 28
	sw	a2, a3, 12 ! 28
	sw	a2, a3, 8 ! 28
	sw	a2, a3, 4 ! 28
	sw	a2, a3, 0 ! 28
	mv	a0, a2 ! 28
	sw	sp, a1, 24 ! 0
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 3 ! 31
	flw	fa0, sp, 16 ! 0
	sw	sp, a0, 28 ! 0
	sw	sp, a1, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, l.6469 ! 37
	flw	fa0, a1, 0 ! 37
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 48 ! 0
	sw	sp, a0, 56 ! 0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_create_float_array
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 50 ! 39
	li	a2, -1 ! 39
	lw	a3, sp, 0 ! 0
	sw	sp, a2, 60 ! 0
	sw	sp, a0, 64 ! 0
	sw	sp, a1, 68 ! 0
	mv	a1, a2
	mv	a0, a3
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_create_array
	addi	sp, sp, -76
	lw	ra, sp, 72
	mv	a1, a0
	lw	a0, sp, 68 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_create_array
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, a0, 0 ! 41
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 72 ! 0
	mv	a0, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_create_array
	addi	sp, sp, -80
	lw	ra, sp, 76
	mv	a1, a0
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_create_array
	addi	sp, sp, -80
	lw	ra, sp, 76
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 76 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_create_float_array
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 80 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_create_array
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, l.6685 ! 49
	flw	fa0, a1, 0 ! 49
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, a0, 96 ! 0
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	min_caml_create_float_array
	addi	sp, sp, -104
	lw	ra, sp, 100
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 100 ! 0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_create_float_array
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 104 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	min_caml_create_array
	addi	sp, sp, -112
	lw	ra, sp, 108
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 108 ! 0
	mv	a0, a1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_create_float_array
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 112 ! 0
	mv	a0, a1
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_float_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 116 ! 0
	mv	a0, a1
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_create_float_array
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 120 ! 0
	mv	a0, a1
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	min_caml_create_float_array
	addi	sp, sp, -128
	lw	ra, sp, 124
	li	a1, 2 ! 65
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 124 ! 0
	sw	sp, a1, 128 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	min_caml_create_array
	addi	sp, sp, -136
	lw	ra, sp, 132
	lw	a1, sp, 128 ! 0
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 132 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_create_array
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 136 ! 0
	mv	a0, a1
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_create_float_array
	addi	sp, sp, -144
	lw	ra, sp, 140
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 140 ! 0
	mv	a0, a1
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_create_float_array
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 144 ! 0
	mv	a0, a1
	sw	sp, ra, 148
	addi	sp, sp, 152
	jal	min_caml_create_float_array
	addi	sp, sp, -152
	lw	ra, sp, 148
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 148 ! 0
	mv	a0, a1
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_create_float_array
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 152 ! 0
	mv	a0, a1
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	min_caml_create_float_array
	addi	sp, sp, -160
	lw	ra, sp, 156
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 156 ! 0
	mv	a0, a1
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_create_float_array
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 160 ! 0
	mv	a0, a1
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	min_caml_create_float_array
	addi	sp, sp, -168
	lw	ra, sp, 164
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, a0, 164 ! 0
	mv	a0, a1
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_create_float_array
	addi	sp, sp, -172
	lw	ra, sp, 168
	mv	a1, a0
	lw	a0, sp, 4 ! 0
	sw	sp, a1, 168 ! 0
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	min_caml_create_array
	addi	sp, sp, -176
	lw	ra, sp, 172
	mv	a1, hp ! 88
	addi	hp, hp, 8 ! 88
	sw	a1, a0, 4 ! 88
	lw	a0, sp, 168 ! 0
	sw	a1, a0, 0 ! 88
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	min_caml_create_array
	addi	sp, sp, -176
	lw	ra, sp, 172
	mv	a1, a0
	li	a0, 5 ! 89
	sw	sp, a0, 172 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_create_array
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, a0, 176 ! 0
	mv	a0, a1
	sw	sp, ra, 180
	addi	sp, sp, 184
	jal	min_caml_create_float_array
	addi	sp, sp, -184
	lw	ra, sp, 180
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 32 ! 0
	sw	sp, a0, 180 ! 0
	mv	a0, a1
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_create_float_array
	addi	sp, sp, -188
	lw	ra, sp, 184
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 180 ! 0
	sw	sp, a0, 184 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	min_caml_create_array
	addi	sp, sp, -192
	lw	ra, sp, 188
	mv	a1, hp ! 96
	addi	hp, hp, 8 ! 96
	sw	a1, a0, 4 ! 96
	lw	a0, sp, 184 ! 0
	sw	a1, a0, 0 ! 96
	mv	a0, a1 ! 96
	flw	fa0, sp, 16 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, a0, 188 ! 0
	mv	a0, a1
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_create_float_array
	addi	sp, sp, -196
	lw	ra, sp, 192
	mv	a1, a0
	lw	a0, sp, 4 ! 0
	sw	sp, a1, 192 ! 0
	sw	sp, ra, 196
	addi	sp, sp, 200
	jal	min_caml_create_array
	addi	sp, sp, -200
	lw	ra, sp, 196
	mv	a1, hp ! 102
	addi	hp, hp, 8 ! 102
	sw	a1, a0, 4 ! 102
	lw	a0, sp, 192 ! 0
	sw	a1, a0, 0 ! 102
	mv	a0, a1 ! 102
	li	a1, 180 ! 103
	mv	a2, hp ! 103
	addi	hp, hp, 12 ! 103
	flw	fa0, sp, 16 ! 0
	fsw	a2, fa0, 8 ! 103
	sw	a2, a0, 4 ! 103
	lw	a0, sp, 4 ! 0
	sw	a2, a0, 0 ! 103
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 196
	addi	sp, sp, 200
	jal	min_caml_create_array
	addi	sp, sp, -200
	lw	ra, sp, 196
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 196 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	min_caml_create_array
	addi	sp, sp, -204
	lw	ra, sp, 200
	mv	a1, hp ! 116
	addi	hp, hp, 8 ! 116
	li	a2, sgn.2468 ! 116
	sw	a1, a2, 0 ! 116
	lw	a2, sp, 4 ! 0
	sw	a1, a2, 4 ! 116
	mv	a3, hp ! 123
	addi	hp, hp, 8 ! 123
	li	a4, fneg_cond.2470 ! 123
	sw	a3, a4, 0 ! 123
	sw	a3, a2, 4 ! 123
	mv	a4, hp ! 128
	addi	hp, hp, 8 ! 128
	li	a5, add_mod5.2473 ! 128
	sw	a4, a5, 0 ! 128
	lw	a5, sp, 172 ! 0
	sw	a4, a5, 4 ! 128
	mv	a6, hp ! 144
	addi	hp, hp, 16 ! 144
	li	a7, vecset.2476 ! 144
	sw	a6, a7, 0 ! 144
	lw	a7, sp, 128 ! 0
	sw	a6, a7, 12 ! 144
	sw	a6, a2, 8 ! 144
	lw	a8, sp, 0 ! 0
	sw	a6, a8, 4 ! 144
	mv	a9, hp ! 151
	addi	hp, hp, 16 ! 151
	li	a10, vecfill.2481 ! 151
	sw	a9, a10, 0 ! 151
	sw	a9, a7, 12 ! 151
	sw	a9, a2, 8 ! 151
	sw	a9, a8, 4 ! 151
	mv	a10, hp ! 158
	addi	hp, hp, 12 ! 158
	li	a11, vecbzero.2484 ! 158
	sw	a10, a11, 0 ! 158
	sw	a10, a9, 8 ! 158
	flw	fa0, sp, 16 ! 0
	fsw	a10, fa0, 4 ! 158
	mv	a9, hp ! 163
	addi	hp, hp, 16 ! 163
	li	a11, veccpy.2486 ! 163
	sw	a9, a11, 0 ! 163
	sw	a9, a7, 12 ! 163
	sw	a9, a2, 8 ! 163
	sw	a9, a8, 4 ! 163
	mv	a11, hp ! 183
	addi	hp, hp, 16 ! 183
	li	a12, vecunit_sgn.2494 ! 183
	sw	a11, a12, 0 ! 183
	sw	a11, a7, 12 ! 183
	sw	a11, a2, 8 ! 183
	sw	a11, a8, 4 ! 183
	mv	a12, hp ! 192
	addi	hp, hp, 16 ! 192
	li	a13, veciprod.2497 ! 192
	sw	a12, a13, 0 ! 192
	sw	a12, a7, 12 ! 192
	sw	a12, a2, 8 ! 192
	sw	a12, a8, 4 ! 192
	mv	a13, hp ! 197
	addi	hp, hp, 16 ! 197
	li	a14, veciprod2.2500 ! 197
	sw	a13, a14, 0 ! 197
	sw	a13, a7, 12 ! 197
	sw	a13, a2, 8 ! 197
	sw	a13, a8, 4 ! 197
	mv	a14, hp ! 202
	addi	hp, hp, 16 ! 202
	li	a15, vecaccum.2505 ! 202
	sw	a14, a15, 0 ! 202
	sw	a14, a7, 12 ! 202
	sw	a14, a2, 8 ! 202
	sw	a14, a8, 4 ! 202
	mv	a15, hp ! 209
	addi	hp, hp, 16 ! 209
	li	a16, vecadd.2509 ! 209
	sw	a15, a16, 0 ! 209
	sw	a15, a7, 12 ! 209
	sw	a15, a2, 8 ! 209
	sw	a15, a8, 4 ! 209
	mv	a16, hp ! 223
	addi	hp, hp, 16 ! 223
	li	a17, vecscale.2515 ! 223
	sw	a16, a17, 0 ! 223
	sw	a16, a7, 12 ! 223
	sw	a16, a2, 8 ! 223
	sw	a16, a8, 4 ! 223
	mv	a17, hp ! 230
	addi	hp, hp, 16 ! 230
	li	a18, vecaccumv.2518 ! 230
	sw	a17, a18, 0 ! 230
	sw	a17, a7, 12 ! 230
	sw	a17, a2, 8 ! 230
	sw	a17, a8, 4 ! 230
	mv	a18, hp ! 289
	addi	hp, hp, 8 ! 289
	li	a19, o_param_a.2532 ! 289
	sw	a18, a19, 0 ! 289
	sw	a18, a2, 4 ! 289
	mv	a19, hp ! 299
	addi	hp, hp, 8 ! 299
	li	a20, o_param_b.2534 ! 299
	sw	a19, a20, 0 ! 299
	sw	a19, a8, 4 ! 299
	mv	a20, hp ! 309
	addi	hp, hp, 8 ! 309
	li	a21, o_param_c.2536 ! 309
	sw	a20, a21, 0 ! 309
	sw	a20, a7, 4 ! 309
	mv	a21, hp ! 329
	addi	hp, hp, 8 ! 329
	sw	sp, a4, 200 ! 0
	li	a4, o_param_x.2540 ! 329
	sw	a21, a4, 0 ! 329
	sw	a21, a2, 4 ! 329
	mv	a4, hp ! 339
	addi	hp, hp, 8 ! 339
	sw	sp, a15, 204 ! 0
	li	a15, o_param_y.2542 ! 339
	sw	a4, a15, 0 ! 339
	sw	a4, a8, 4 ! 339
	mv	a15, hp ! 349
	addi	hp, hp, 8 ! 349
	sw	sp, a17, 208 ! 0
	li	a17, o_param_z.2544 ! 349
	sw	a15, a17, 0 ! 349
	sw	a15, a7, 4 ! 349
	mv	a17, hp ! 359
	addi	hp, hp, 8 ! 359
	sw	sp, a0, 212 ! 0
	li	a0, o_diffuse.2546 ! 359
	sw	a17, a0, 0 ! 359
	sw	a17, a2, 4 ! 359
	mv	a0, hp ! 369
	addi	hp, hp, 8 ! 369
	sw	sp, a17, 216 ! 0
	li	a17, o_hilight.2548 ! 369
	sw	a0, a17, 0 ! 369
	sw	a0, a8, 4 ! 369
	mv	a17, hp ! 379
	addi	hp, hp, 8 ! 379
	sw	sp, a0, 220 ! 0
	li	a0, o_color_red.2550 ! 379
	sw	a17, a0, 0 ! 379
	sw	a17, a2, 4 ! 379
	mv	a0, hp ! 389
	addi	hp, hp, 8 ! 389
	sw	sp, a16, 224 ! 0
	li	a16, o_color_green.2552 ! 389
	sw	a0, a16, 0 ! 389
	sw	a0, a8, 4 ! 389
	mv	a16, hp ! 399
	addi	hp, hp, 8 ! 399
	sw	sp, a14, 228 ! 0
	li	a14, o_color_blue.2554 ! 399
	sw	a16, a14, 0 ! 399
	sw	a16, a7, 4 ! 399
	mv	a14, hp ! 409
	addi	hp, hp, 8 ! 409
	sw	sp, a16, 232 ! 0
	li	a16, o_param_r1.2556 ! 409
	sw	a14, a16, 0 ! 409
	sw	a14, a2, 4 ! 409
	mv	a16, hp ! 419
	addi	hp, hp, 8 ! 419
	sw	sp, a0, 236 ! 0
	li	a0, o_param_r2.2558 ! 419
	sw	a16, a0, 0 ! 419
	sw	a16, a8, 4 ! 419
	mv	a0, hp ! 429
	addi	hp, hp, 8 ! 429
	sw	sp, a17, 240 ! 0
	li	a17, o_param_r3.2560 ! 429
	sw	a0, a17, 0 ! 429
	sw	a0, a7, 4 ! 429
	mv	a17, hp ! 512
	addi	hp, hp, 8 ! 512
	sw	sp, a10, 244 ! 0
	li	a10, p_group_id.2576 ! 512
	sw	a17, a10, 0 ! 512
	sw	a17, a2, 4 ! 512
	mv	a10, hp ! 519
	addi	hp, hp, 8 ! 519
	sw	sp, a17, 248 ! 0
	li	a17, p_set_group_id.2578 ! 519
	sw	a10, a17, 0 ! 519
	sw	a10, a2, 4 ! 519
	mv	a17, hp ! 580
	addi	hp, hp, 40 ! 580
	sw	sp, a10, 252 ! 0
	li	a10, read_screen_settings.2595 ! 580
	sw	a17, a10, 0 ! 580
	lw	a10, sp, 40 ! 0
	sw	a17, a10, 36 ! 580
	lw	a10, sp, 160 ! 0
	sw	a17, a10, 32 ! 580
	lw	a10, sp, 156 ! 0
	sw	a17, a10, 28 ! 580
	lw	a10, sp, 152 ! 0
	sw	a17, a10, 24 ! 580
	lw	a10, sp, 36 ! 0
	sw	a17, a10, 20 ! 580
	sw	a17, a7, 16 ! 580
	sw	a17, a2, 12 ! 580
	sw	a17, a8, 8 ! 580
	fsw	a17, fa0, 4 ! 580
	mv	a10, hp ! 613
	addi	hp, hp, 24 ! 613
	sw	sp, a6, 256 ! 0
	li	a6, read_light.2597 ! 613
	sw	a10, a6, 0 ! 613
	lw	a6, sp, 56 ! 0
	sw	a10, a6, 20 ! 613
	lw	a6, sp, 64 ! 0
	sw	a10, a6, 16 ! 613
	sw	a10, a7, 12 ! 613
	sw	a10, a2, 8 ! 613
	sw	a10, a8, 4 ! 613
	mv	a6, hp ! 635
	addi	hp, hp, 16 ! 635
	sw	sp, a9, 260 ! 0
	li	a9, rotate_quadratic_matrix.2599 ! 635
	sw	a6, a9, 0 ! 635
	sw	a6, a7, 12 ! 635
	sw	a6, a2, 8 ! 635
	sw	a6, a8, 4 ! 635
	mv	a9, hp ! 676
	addi	hp, hp, 44 ! 676
	li	a5, read_nth_object.2602 ! 676
	sw	a9, a5, 0 ! 676
	sw	a9, a11, 40 ! 676
	sw	a9, a1, 36 ! 676
	sw	a9, a6, 32 ! 676
	lw	a5, sp, 28 ! 0
	sw	a9, a5, 28 ! 676
	sw	a9, a7, 24 ! 676
	lw	a6, sp, 60 ! 0
	sw	a9, a6, 20 ! 676
	sw	sp, a11, 264 ! 0
	lw	a11, sp, 32 ! 0
	sw	a9, a11, 16 ! 676
	sw	a9, a2, 12 ! 676
	sw	a9, a8, 8 ! 676
	fsw	a9, fa0, 4 ! 676
	sw	sp, a1, 268 ! 0
	mv	a1, hp ! 759
	addi	hp, hp, 24 ! 759
	sw	sp, a21, 272 ! 0
	li	a21, read_object.2604 ! 759
	sw	a1, a21, 0 ! 759
	sw	a1, a9, 20 ! 759
	lw	a9, sp, 8 ! 0
	sw	a1, a9, 16 ! 759
	lw	a21, sp, 24 ! 0
	sw	a1, a21, 12 ! 759
	sw	a1, a2, 8 ! 759
	sw	a1, a8, 4 ! 759
	mv	a21, hp ! 768
	addi	hp, hp, 12 ! 768
	li	a9, read_all_object.2606 ! 768
	sw	a21, a9, 0 ! 768
	sw	a21, a1, 8 ! 768
	sw	a21, a2, 4 ! 768
	mv	a1, hp ! 775
	addi	hp, hp, 12 ! 775
	li	a9, read_net_item.2608 ! 775
	sw	a1, a9, 0 ! 775
	sw	a1, a6, 8 ! 775
	sw	a1, a8, 4 ! 775
	mv	a9, hp ! 783
	addi	hp, hp, 20 ! 783
	sw	sp, a4, 276 ! 0
	li	a4, read_or_network.2610 ! 783
	sw	a9, a4, 0 ! 783
	sw	a9, a1, 16 ! 783
	sw	a9, a6, 12 ! 783
	sw	a9, a2, 8 ! 783
	sw	a9, a8, 4 ! 783
	mv	a4, hp ! 792
	addi	hp, hp, 24 ! 792
	sw	sp, a15, 280 ! 0
	li	a15, read_and_network.2612 ! 792
	sw	a4, a15, 0 ! 792
	sw	a4, a1, 20 ! 792
	lw	a1, sp, 72 ! 0
	sw	a4, a1, 16 ! 792
	sw	a4, a6, 12 ! 792
	sw	a4, a2, 8 ! 792
	sw	a4, a8, 4 ! 792
	mv	a15, hp ! 801
	addi	hp, hp, 32 ! 801
	li	a1, read_parameter.2614 ! 801
	sw	a15, a1, 0 ! 801
	sw	a15, a17, 28 ! 801
	sw	a15, a9, 24 ! 801
	sw	a15, a10, 20 ! 801
	sw	a15, a4, 16 ! 801
	sw	a15, a21, 12 ! 801
	lw	a1, sp, 76 ! 0
	sw	a15, a1, 8 ! 801
	sw	a15, a2, 4 ! 801
	mv	a4, hp ! 827
	addi	hp, hp, 16 ! 827
	li	a9, solver_rect_surface.2616 ! 827
	sw	a4, a9, 0 ! 827
	lw	a9, sp, 80 ! 0
	sw	a4, a9, 12 ! 827
	sw	a4, a3, 8 ! 827
	sw	a4, a2, 4 ! 827
	mv	a10, hp ! 842
	addi	hp, hp, 20 ! 842
	li	a17, solver_rect.2625 ! 842
	sw	a10, a17, 0 ! 842
	sw	a10, a4, 16 ! 842
	sw	a10, a7, 12 ! 842
	sw	a10, a2, 8 ! 842
	sw	a10, a8, 4 ! 842
	mv	a4, hp ! 851
	addi	hp, hp, 20 ! 851
	li	a17, solver_surface.2631 ! 851
	sw	a4, a17, 0 ! 851
	sw	a4, a13, 16 ! 851
	sw	a4, a12, 12 ! 851
	sw	a4, a9, 8 ! 851
	sw	a4, a2, 4 ! 851
	mv	a17, hp ! 865
	addi	hp, hp, 32 ! 865
	li	a21, quadratic.2637 ! 865
	sw	a17, a21, 0 ! 865
	sw	a17, a0, 28 ! 865
	sw	a17, a16, 24 ! 865
	sw	a17, a14, 20 ! 865
	sw	a17, a20, 16 ! 865
	sw	a17, a19, 12 ! 865
	sw	a17, a18, 8 ! 865
	sw	a17, a2, 4 ! 865
	mv	a21, hp ! 880
	addi	hp, hp, 32 ! 880
	sw	sp, a15, 284 ! 0
	li	a15, bilinear.2642 ! 880
	sw	a21, a15, 0 ! 880
	sw	a21, a0, 28 ! 880
	sw	a21, a16, 24 ! 880
	sw	a21, a14, 20 ! 880
	sw	a21, a20, 16 ! 880
	sw	a21, a19, 12 ! 880
	sw	a21, a18, 8 ! 880
	sw	a21, a2, 4 ! 880
	mv	a15, hp ! 903
	addi	hp, hp, 32 ! 903
	sw	sp, a12, 288 ! 0
	li	a12, solver_second.2650 ! 903
	sw	a15, a12, 0 ! 903
	sw	a15, a9, 28 ! 903
	sw	a15, a17, 24 ! 903
	sw	a15, a21, 20 ! 903
	sw	a15, a7, 16 ! 903
	sw	a15, a11, 12 ! 903
	sw	a15, a2, 8 ! 903
	sw	a15, a8, 4 ! 903
	mv	a12, hp ! 932
	addi	hp, hp, 44 ! 932
	li	a21, solver.2656 ! 932
	sw	a12, a21, 0 ! 932
	sw	a12, a4, 40 ! 932
	sw	a12, a15, 36 ! 932
	sw	a12, a10, 32 ! 932
	sw	a12, a5, 28 ! 932
	lw	a4, sp, 280 ! 0
	sw	a12, a4, 24 ! 932
	lw	a10, sp, 276 ! 0
	sw	a12, a10, 20 ! 932
	lw	a15, sp, 272 ! 0
	sw	a12, a15, 16 ! 932
	sw	a12, a7, 12 ! 932
	sw	a12, a2, 8 ! 932
	sw	a12, a8, 4 ! 932
	mv	a21, hp ! 964
	addi	hp, hp, 40 ! 964
	li	a1, solver_rect_fast.2660 ! 964
	sw	a21, a1, 0 ! 964
	sw	a21, a9, 36 ! 964
	sw	a21, a20, 32 ! 964
	sw	a21, a19, 28 ! 964
	sw	a21, a18, 24 ! 964
	lw	a1, sp, 172 ! 0
	sw	a21, a1, 20 ! 964
	sw	a21, a7, 16 ! 964
	sw	a21, a11, 12 ! 964
	sw	a21, a2, 8 ! 964
	sw	a21, a8, 4 ! 964
	sw	sp, a12, 292 ! 0
	mv	a12, hp ! 997
	addi	hp, hp, 24 ! 997
	li	a6, solver_surface_fast.2667 ! 997
	sw	a12, a6, 0 ! 997
	sw	a12, a9, 20 ! 997
	sw	a12, a7, 16 ! 997
	sw	a12, a11, 12 ! 997
	sw	a12, a2, 8 ! 997
	sw	a12, a8, 4 ! 997
	mv	a6, hp ! 1006
	addi	hp, hp, 28 ! 1006
	sw	sp, a13, 296 ! 0
	li	a13, solver_second_fast.2673 ! 1006
	sw	a6, a13, 0 ! 1006
	sw	a6, a9, 24 ! 1006
	sw	a6, a17, 20 ! 1006
	sw	a6, a7, 16 ! 1006
	sw	a6, a11, 12 ! 1006
	sw	a6, a2, 8 ! 1006
	sw	a6, a8, 4 ! 1006
	mv	a13, hp ! 1026
	addi	hp, hp, 44 ! 1026
	sw	sp, a14, 300 ! 0
	li	a14, solver_fast.2679 ! 1026
	sw	a13, a14, 0 ! 1026
	sw	a13, a12, 40 ! 1026
	sw	a13, a6, 36 ! 1026
	sw	a13, a21, 32 ! 1026
	sw	a13, a5, 28 ! 1026
	sw	a13, a4, 24 ! 1026
	sw	a13, a10, 20 ! 1026
	sw	a13, a15, 16 ! 1026
	sw	a13, a7, 12 ! 1026
	sw	a13, a2, 8 ! 1026
	sw	a13, a8, 4 ! 1026
	mv	a6, hp ! 1046
	addi	hp, hp, 16 ! 1046
	li	a12, solver_surface_fast2.2683 ! 1046
	sw	a6, a12, 0 ! 1046
	sw	a6, a9, 12 ! 1046
	sw	a6, a11, 8 ! 1046
	sw	a6, a2, 4 ! 1046
	mv	a12, hp ! 1054
	addi	hp, hp, 24 ! 1054
	li	a14, solver_second_fast2.2690 ! 1054
	sw	a12, a14, 0 ! 1054
	sw	a12, a9, 20 ! 1054
	sw	a12, a7, 16 ! 1054
	sw	a12, a11, 12 ! 1054
	sw	a12, a2, 8 ! 1054
	sw	a12, a8, 4 ! 1054
	mv	a14, hp ! 1073
	addi	hp, hp, 32 ! 1073
	li	a9, solver_fast2.2697 ! 1073
	sw	a14, a9, 0 ! 1073
	sw	a14, a6, 28 ! 1073
	sw	a14, a12, 24 ! 1073
	sw	a14, a21, 20 ! 1073
	sw	a14, a5, 16 ! 1073
	sw	a14, a7, 12 ! 1073
	sw	a14, a2, 8 ! 1073
	sw	a14, a8, 4 ! 1073
	mv	a6, hp ! 1095
	addi	hp, hp, 44 ! 1095
	li	a9, setup_rect_table.2700 ! 1095
	sw	a6, a9, 0 ! 1095
	sw	a6, a20, 40 ! 1095
	sw	a6, a19, 36 ! 1095
	sw	a6, a18, 32 ! 1095
	sw	a6, a3, 28 ! 1095
	sw	a6, a1, 24 ! 1095
	sw	a6, a7, 20 ! 1095
	sw	a6, a11, 16 ! 1095
	sw	a6, a2, 12 ! 1095
	sw	a6, a8, 8 ! 1095
	fsw	a6, fa0, 4 ! 1095
	mv	a3, hp ! 1122
	addi	hp, hp, 36 ! 1122
	li	a9, setup_surface_table.2703 ! 1122
	sw	a3, a9, 0 ! 1122
	sw	a3, a20, 32 ! 1122
	sw	a3, a19, 28 ! 1122
	sw	a3, a18, 24 ! 1122
	sw	a3, a7, 20 ! 1122
	sw	a3, a11, 16 ! 1122
	sw	a3, a2, 12 ! 1122
	sw	a3, a8, 8 ! 1122
	fsw	a3, fa0, 4 ! 1122
	mv	a9, hp ! 1141
	addi	hp, hp, 56 ! 1141
	li	a12, setup_second_table.2706 ! 1141
	sw	a9, a12, 0 ! 1141
	sw	a9, a17, 52 ! 1141
	sw	a9, a0, 48 ! 1141
	sw	a9, a16, 44 ! 1141
	lw	a12, sp, 300 ! 0
	sw	a9, a12, 40 ! 1141
	sw	a9, a20, 36 ! 1141
	sw	a9, a19, 32 ! 1141
	sw	a9, a18, 28 ! 1141
	sw	a9, a1, 24 ! 1141
	sw	a9, a7, 20 ! 1141
	sw	a9, a11, 16 ! 1141
	sw	a9, a2, 12 ! 1141
	sw	a9, a8, 8 ! 1141
	fsw	a9, fa0, 4 ! 1141
	mv	a21, hp ! 1170
	addi	hp, hp, 32 ! 1170
	li	a1, iter_setup_dirvec_constants.2709 ! 1170
	sw	a21, a1, 0 ! 1170
	sw	a21, a3, 28 ! 1170
	sw	a21, a9, 24 ! 1170
	sw	a21, a6, 20 ! 1170
	sw	a21, a5, 16 ! 1170
	sw	a21, a7, 12 ! 1170
	sw	a21, a2, 8 ! 1170
	sw	a21, a8, 4 ! 1170
	mv	a1, hp ! 1187
	addi	hp, hp, 20 ! 1187
	li	a3, setup_dirvec_constants.2712 ! 1187
	sw	a1, a3, 0 ! 1187
	lw	a3, sp, 8 ! 0
	sw	a1, a3, 16 ! 1187
	sw	a1, a21, 12 ! 1187
	sw	a1, a2, 8 ! 1187
	sw	a1, a8, 4 ! 1187
	mv	a6, hp ! 1195
	addi	hp, hp, 44 ! 1195
	li	a9, setup_startp_constants.2714 ! 1195
	sw	a6, a9, 0 ! 1195
	lw	a9, sp, 296 ! 0
	sw	a6, a9, 40 ! 1195
	sw	a6, a17, 36 ! 1195
	sw	a6, a5, 32 ! 1195
	sw	a6, a4, 28 ! 1195
	sw	a6, a10, 24 ! 1195
	sw	a6, a15, 20 ! 1195
	sw	a6, a7, 16 ! 1195
	sw	a6, a11, 12 ! 1195
	sw	a6, a2, 8 ! 1195
	sw	a6, a8, 4 ! 1195
	mv	a21, hp ! 1214
	addi	hp, hp, 28 ! 1214
	sw	sp, a1, 304 ! 0
	li	a1, setup_startp.2717 ! 1214
	sw	a21, a1, 0 ! 1214
	lw	a1, sp, 260 ! 0
	sw	a21, a1, 24 ! 1214
	lw	a1, sp, 148 ! 0
	sw	a21, a1, 20 ! 1214
	sw	a21, a6, 16 ! 1214
	sw	a21, a3, 12 ! 1214
	sw	a21, a2, 8 ! 1214
	sw	a21, a8, 4 ! 1214
	mv	a6, hp ! 1226
	addi	hp, hp, 20 ! 1226
	li	a3, is_rect_outside.2719 ! 1226
	sw	a6, a3, 0 ! 1226
	sw	a6, a20, 16 ! 1226
	sw	a6, a19, 12 ! 1226
	sw	a6, a18, 8 ! 1226
	sw	a6, a2, 4 ! 1226
	mv	a3, hp ! 1237
	addi	hp, hp, 12 ! 1237
	sw	sp, a21, 308 ! 0
	li	a21, is_plane_outside.2724 ! 1237
	sw	a3, a21, 0 ! 1237
	sw	a3, a9, 8 ! 1237
	sw	a3, a2, 4 ! 1237
	mv	a9, hp ! 1243
	addi	hp, hp, 16 ! 1243
	li	a21, is_second_outside.2729 ! 1243
	sw	a9, a21, 0 ! 1243
	sw	a9, a17, 12 ! 1243
	sw	a9, a11, 8 ! 1243
	sw	a9, a2, 4 ! 1243
	mv	a17, hp ! 1250
	addi	hp, hp, 36 ! 1250
	li	a21, is_outside.2734 ! 1250
	sw	a17, a21, 0 ! 1250
	sw	a17, a4, 32 ! 1250
	sw	a17, a10, 28 ! 1250
	sw	a17, a15, 24 ! 1250
	sw	a17, a9, 20 ! 1250
	sw	a17, a6, 16 ! 1250
	sw	a17, a3, 12 ! 1250
	sw	a17, a7, 8 ! 1250
	sw	a17, a8, 4 ! 1250
	mv	a3, hp ! 1264
	addi	hp, hp, 24 ! 1264
	li	a6, check_all_inside.2739 ! 1264
	sw	a3, a6, 0 ! 1264
	sw	a3, a5, 20 ! 1264
	sw	a3, a17, 16 ! 1264
	lw	a6, sp, 60 ! 0
	sw	a3, a6, 12 ! 1264
	sw	a3, a2, 8 ! 1264
	sw	a3, a8, 4 ! 1264
	mv	a9, hp ! 1284
	addi	hp, hp, 48 ! 1284
	li	a17, shadow_check_and_group.2745 ! 1284
	sw	a9, a17, 0 ! 1284
	sw	a9, a13, 44 ! 1284
	lw	a17, sp, 80 ! 0
	sw	a9, a17, 40 ! 1284
	sw	a9, a5, 36 ! 1284
	lw	a21, sp, 188 ! 0
	sw	a9, a21, 32 ! 1284
	lw	a11, sp, 56 ! 0
	sw	a9, a11, 28 ! 1284
	lw	a11, sp, 104 ! 0
	sw	a9, a11, 24 ! 1284
	sw	a9, a3, 20 ! 1284
	sw	a9, a7, 16 ! 1284
	sw	a9, a6, 12 ! 1284
	sw	a9, a2, 8 ! 1284
	sw	a9, a8, 4 ! 1284
	mv	a12, hp ! 1314
	addi	hp, hp, 24 ! 1314
	sw	sp, a16, 312 ! 0
	li	a16, shadow_check_one_or_group.2748 ! 1314
	sw	a12, a16, 0 ! 1314
	sw	a12, a9, 20 ! 1314
	lw	a9, sp, 72 ! 0
	sw	a12, a9, 16 ! 1314
	sw	a12, a6, 12 ! 1314
	sw	a12, a2, 8 ! 1314
	sw	a12, a8, 4 ! 1314
	mv	a16, hp ! 1329
	addi	hp, hp, 36 ! 1329
	sw	sp, a0, 316 ! 0
	li	a0, shadow_check_one_or_matrix.2751 ! 1329
	sw	a16, a0, 0 ! 1329
	sw	a16, a13, 32 ! 1329
	sw	a16, a17, 28 ! 1329
	sw	a16, a12, 24 ! 1329
	sw	a16, a21, 20 ! 1329
	sw	a16, a11, 16 ! 1329
	sw	a16, a6, 12 ! 1329
	sw	a16, a2, 8 ! 1329
	sw	a16, a8, 4 ! 1329
	mv	a0, hp ! 1365
	addi	hp, hp, 64 ! 1365
	li	a12, solve_each_element.2754 ! 1365
	sw	a0, a12, 0 ! 1365
	lw	a12, sp, 256 ! 0
	sw	a0, a12, 60 ! 1365
	lw	a13, sp, 100 ! 0
	sw	a0, a13, 56 ! 1365
	lw	a21, sp, 144 ! 0
	sw	a0, a21, 52 ! 1365
	sw	a0, a17, 48 ! 1365
	sw	sp, a16, 320 ! 0
	lw	a16, sp, 292 ! 0
	sw	a0, a16, 44 ! 1365
	sw	a0, a5, 40 ! 1365
	lw	a15, sp, 96 ! 0
	sw	a0, a15, 36 ! 1365
	sw	a0, a11, 32 ! 1365
	lw	a10, sp, 108 ! 0
	sw	a0, a10, 28 ! 1365
	sw	a0, a3, 24 ! 1365
	sw	a0, a7, 20 ! 1365
	sw	a0, a6, 16 ! 1365
	sw	a0, a2, 12 ! 1365
	sw	a0, a8, 8 ! 1365
	fsw	a0, fa0, 4 ! 1365
	mv	a4, hp ! 1406
	addi	hp, hp, 24 ! 1406
	sw	sp, a18, 324 ! 0
	li	a18, solve_one_or_network.2758 ! 1406
	sw	a4, a18, 0 ! 1406
	sw	a4, a0, 20 ! 1406
	sw	a4, a9, 16 ! 1406
	sw	a4, a6, 12 ! 1406
	sw	a4, a2, 8 ! 1406
	sw	a4, a8, 4 ! 1406
	mv	a0, hp ! 1416
	addi	hp, hp, 36 ! 1416
	li	a18, trace_or_matrix.2762 ! 1416
	sw	a0, a18, 0 ! 1416
	sw	a0, a13, 32 ! 1416
	sw	a0, a21, 28 ! 1416
	sw	a0, a17, 24 ! 1416
	sw	a0, a16, 20 ! 1416
	sw	a0, a4, 16 ! 1416
	sw	a0, a6, 12 ! 1416
	sw	a0, a2, 8 ! 1416
	sw	a0, a8, 4 ! 1416
	mv	a4, hp ! 1443
	addi	hp, hp, 24 ! 1443
	li	a16, judge_intersection.2766 ! 1443
	sw	a4, a16, 0 ! 1443
	sw	a4, a0, 20 ! 1443
	sw	a4, a13, 16 ! 1443
	lw	a0, sp, 76 ! 0
	sw	a4, a0, 12 ! 1443
	sw	a4, a2, 8 ! 1443
	flw	fa1, sp, 88 ! 0
	fsw	a4, fa1, 4 ! 1443
	mv	a16, hp ! 1458
	addi	hp, hp, 64 ! 1458
	li	a18, solve_each_element_fast.2768 ! 1458
	sw	a16, a18, 0 ! 1458
	sw	a16, a12, 60 ! 1458
	sw	a16, a13, 56 ! 1458
	sw	a16, a1, 52 ! 1458
	sw	a16, a14, 48 ! 1458
	sw	a16, a17, 44 ! 1458
	sw	a16, a5, 40 ! 1458
	sw	a16, a15, 36 ! 1458
	sw	a16, a11, 32 ! 1458
	sw	a16, a10, 28 ! 1458
	sw	a16, a3, 24 ! 1458
	sw	a16, a7, 20 ! 1458
	sw	a16, a6, 16 ! 1458
	sw	a16, a2, 12 ! 1458
	sw	a16, a8, 8 ! 1458
	fsw	a16, fa0, 4 ! 1458
	mv	a1, hp ! 1499
	addi	hp, hp, 24 ! 1499
	li	a3, solve_one_or_network_fast.2772 ! 1499
	sw	a1, a3, 0 ! 1499
	sw	a1, a16, 20 ! 1499
	sw	a1, a9, 16 ! 1499
	sw	a1, a6, 12 ! 1499
	sw	a1, a2, 8 ! 1499
	sw	a1, a8, 4 ! 1499
	mv	a3, hp ! 1509
	addi	hp, hp, 32 ! 1509
	li	a9, trace_or_matrix_fast.2776 ! 1509
	sw	a3, a9, 0 ! 1509
	sw	a3, a13, 28 ! 1509
	sw	a3, a14, 24 ! 1509
	sw	a3, a17, 20 ! 1509
	sw	a3, a1, 16 ! 1509
	sw	a3, a6, 12 ! 1509
	sw	a3, a2, 8 ! 1509
	sw	a3, a8, 4 ! 1509
	mv	a1, hp ! 1533
	addi	hp, hp, 24 ! 1533
	li	a9, judge_intersection_fast.2780 ! 1533
	sw	a1, a9, 0 ! 1533
	sw	a1, a3, 20 ! 1533
	sw	a1, a13, 16 ! 1533
	sw	a1, a0, 12 ! 1533
	sw	a1, a2, 8 ! 1533
	fsw	a1, fa1, 4 ! 1533
	mv	a3, hp ! 1554
	addi	hp, hp, 28 ! 1554
	li	a9, get_nvector_rect.2782 ! 1554
	sw	a3, a9, 0 ! 1554
	lw	a9, sp, 244 ! 0
	sw	a3, a9, 24 ! 1554
	lw	a14, sp, 268 ! 0
	sw	a3, a14, 20 ! 1554
	lw	a14, sp, 112 ! 0
	sw	a3, a14, 16 ! 1554
	sw	a3, a15, 12 ! 1554
	sw	a3, a2, 8 ! 1554
	sw	a3, a8, 4 ! 1554
	mv	a16, hp ! 1562
	addi	hp, hp, 32 ! 1562
	li	a17, get_nvector_plane.2784 ! 1562
	sw	a16, a17, 0 ! 1562
	sw	a16, a20, 28 ! 1562
	sw	a16, a19, 24 ! 1562
	lw	a17, sp, 324 ! 0
	sw	a16, a17, 20 ! 1562
	sw	a16, a14, 16 ! 1562
	sw	a16, a7, 12 ! 1562
	sw	a16, a2, 8 ! 1562
	sw	a16, a8, 4 ! 1562
	mv	a18, hp ! 1570
	addi	hp, hp, 64 ! 1570
	li	a12, get_nvector_second.2786 ! 1570
	sw	a18, a12, 0 ! 1570
	lw	a12, sp, 264 ! 0
	sw	a18, a12, 60 ! 1570
	lw	a12, sp, 280 ! 0
	sw	a18, a12, 56 ! 1570
	lw	a9, sp, 276 ! 0
	sw	a18, a9, 52 ! 1570
	lw	a6, sp, 272 ! 0
	sw	a18, a6, 48 ! 1570
	sw	sp, a4, 328 ! 0
	lw	a4, sp, 316 ! 0
	sw	a18, a4, 44 ! 1570
	lw	a4, sp, 312 ! 0
	sw	a18, a4, 40 ! 1570
	lw	a4, sp, 300 ! 0
	sw	a18, a4, 36 ! 1570
	sw	a18, a20, 32 ! 1570
	sw	a18, a19, 28 ! 1570
	sw	a18, a17, 24 ! 1570
	sw	a18, a14, 20 ! 1570
	sw	a18, a11, 16 ! 1570
	sw	a18, a7, 12 ! 1570
	sw	a18, a2, 8 ! 1570
	sw	a18, a8, 4 ! 1570
	mv	a4, hp ! 1592
	addi	hp, hp, 24 ! 1592
	li	a11, get_nvector.2788 ! 1592
	sw	a4, a11, 0 ! 1592
	sw	a4, a18, 20 ! 1592
	sw	a4, a3, 16 ! 1592
	sw	a4, a16, 12 ! 1592
	sw	a4, a7, 8 ! 1592
	sw	a4, a8, 4 ! 1592
	mv	a3, hp ! 1608
	addi	hp, hp, 64 ! 1608
	li	a11, utexture.2791 ! 1608
	sw	a3, a11, 0 ! 1608
	lw	a11, sp, 116 ! 0
	sw	a3, a11, 60 ! 1608
	sw	a3, a12, 56 ! 1608
	sw	a3, a9, 52 ! 1608
	sw	a3, a6, 48 ! 1608
	sw	a3, a20, 44 ! 1608
	sw	a3, a19, 40 ! 1608
	sw	a3, a17, 36 ! 1608
	lw	a6, sp, 240 ! 0
	sw	a3, a6, 32 ! 1608
	lw	a6, sp, 236 ! 0
	sw	a3, a6, 28 ! 1608
	lw	a6, sp, 232 ! 0
	sw	a3, a6, 24 ! 1608
	sw	a3, a7, 20 ! 1608
	lw	a6, sp, 32 ! 0
	sw	a3, a6, 16 ! 1608
	sw	a3, a2, 12 ! 1608
	sw	a3, a8, 8 ! 1608
	flw	fa1, sp, 48 ! 0
	fsw	a3, fa1, 4 ! 1608
	mv	a9, hp ! 1686
	addi	hp, hp, 28 ! 1686
	li	a12, add_light.2794 ! 1686
	sw	a9, a12, 0 ! 1686
	lw	a12, sp, 228 ! 0
	sw	a9, a12, 24 ! 1686
	sw	a9, a11, 20 ! 1686
	lw	a16, sp, 124 ! 0
	sw	a9, a16, 16 ! 1686
	sw	a9, a7, 12 ! 1686
	sw	a9, a2, 8 ! 1686
	sw	a9, a8, 4 ! 1686
	mv	a18, hp ! 1703
	addi	hp, hp, 48 ! 1703
	li	a17, trace_reflections.2798 ! 1703
	sw	a18, a17, 0 ! 1703
	lw	a17, sp, 288 ! 0
	sw	a18, a17, 44 ! 1703
	sw	sp, a19, 332 ! 0
	lw	a19, sp, 320 ! 0
	sw	a18, a19, 40 ! 1703
	sw	sp, a20, 336 ! 0
	lw	a20, sp, 196 ! 0
	sw	a18, a20, 36 ! 1703
	sw	a18, a0, 32 ! 1703
	sw	a18, a14, 28 ! 1703
	sw	a18, a1, 24 ! 1703
	sw	a18, a15, 20 ! 1703
	sw	a18, a10, 16 ! 1703
	sw	a18, a9, 12 ! 1703
	sw	a18, a2, 8 ! 1703
	sw	a18, a8, 4 ! 1703
	mv	a20, hp ! 1732
	addi	hp, hp, 124 ! 1732
	li	a6, trace_ray.2803 ! 1732
	sw	a20, a6, 0 ! 1732
	lw	a6, sp, 224 ! 0
	sw	a20, a6, 120 ! 1732
	sw	a20, a17, 116 ! 1732
	lw	a6, sp, 260 ! 0
	sw	a20, a6, 112 ! 1732
	sw	a20, a12, 108 ! 1732
	sw	a20, a3, 104 ! 1732
	sw	a20, a18, 100 ! 1732
	sw	a20, a13, 96 ! 1732
	sw	a20, a11, 92 ! 1732
	sw	a20, a21, 88 ! 1732
	sw	a20, a19, 84 ! 1732
	lw	a13, sp, 308 ! 0
	sw	a20, a13, 80 ! 1732
	sw	a20, a16, 76 ! 1732
	sw	a20, a0, 72 ! 1732
	sw	a20, a5, 68 ! 1732
	lw	a18, sp, 220 ! 0
	sw	a20, a18, 64 ! 1732
	lw	a18, sp, 216 ! 0
	sw	a20, a18, 60 ! 1732
	sw	a20, a14, 56 ! 1732
	lw	a21, sp, 212 ! 0
	sw	a20, a21, 52 ! 1732
	lw	a21, sp, 56 ! 0
	sw	a20, a21, 48 ! 1732
	lw	a16, sp, 328 ! 0
	sw	a20, a16, 44 ! 1732
	sw	a20, a15, 40 ! 1732
	lw	a15, sp, 104 ! 0
	sw	a20, a15, 36 ! 1732
	sw	a20, a10, 32 ! 1732
	sw	a20, a4, 28 ! 1732
	lw	a16, sp, 64 ! 0
	sw	a20, a16, 24 ! 1732
	sw	a20, a9, 20 ! 1732
	sw	a20, a7, 16 ! 1732
	lw	a9, sp, 60 ! 0
	sw	a20, a9, 12 ! 1732
	sw	a20, a2, 8 ! 1732
	sw	a20, a8, 4 ! 1732
	mv	a9, hp ! 1825
	addi	hp, hp, 68 ! 1825
	li	a16, trace_diffuse_ray.2809 ! 1825
	sw	a9, a16, 0 ! 1825
	sw	a9, a17, 64 ! 1825
	sw	a9, a12, 60 ! 1825
	sw	a9, a3, 56 ! 1825
	sw	a9, a11, 52 ! 1825
	sw	a9, a19, 48 ! 1825
	sw	a9, a0, 44 ! 1825
	sw	a9, a5, 40 ! 1825
	sw	a9, a18, 36 ! 1825
	sw	a9, a14, 32 ! 1825
	sw	a9, a21, 28 ! 1825
	sw	a9, a1, 24 ! 1825
	sw	a9, a15, 20 ! 1825
	sw	a9, a10, 16 ! 1825
	sw	a9, a4, 12 ! 1825
	lw	a0, sp, 120 ! 0
	sw	a9, a0, 8 ! 1825
	sw	a9, a2, 4 ! 1825
	mv	a1, hp ! 1844
	addi	hp, hp, 24 ! 1844
	li	a3, iter_trace_diffuse_rays.2812 ! 1844
	sw	a1, a3, 0 ! 1844
	sw	a1, a17, 20 ! 1844
	sw	a1, a9, 16 ! 1844
	sw	a1, a7, 12 ! 1844
	sw	a1, a2, 8 ! 1844
	sw	a1, a8, 4 ! 1844
	mv	a3, hp ! 1860
	addi	hp, hp, 12 ! 1860
	li	a4, trace_diffuse_rays.2817 ! 1860
	sw	a3, a4, 0 ! 1860
	sw	a3, a13, 8 ! 1860
	sw	a3, a1, 4 ! 1860
	mv	a1, hp ! 1870
	addi	hp, hp, 28 ! 1870
	li	a4, trace_diffuse_ray_80percent.2821 ! 1870
	sw	a1, a4, 0 ! 1870
	sw	a1, a3, 24 ! 1870
	lw	a4, sp, 176 ! 0
	sw	a1, a4, 20 ! 1870
	sw	a1, a7, 16 ! 1870
	lw	a9, sp, 32 ! 0
	sw	a1, a9, 12 ! 1870
	sw	a1, a2, 8 ! 1870
	sw	a1, a8, 4 ! 1870
	mv	a10, hp ! 1896
	addi	hp, hp, 28 ! 1896
	li	a11, calc_diffuse_using_1point.2825 ! 1896
	sw	a10, a11, 0 ! 1896
	sw	a10, a6, 24 ! 1896
	lw	a11, sp, 208 ! 0
	sw	a10, a11, 20 ! 1896
	sw	a10, a1, 16 ! 1896
	lw	a1, sp, 124 ! 0
	sw	a10, a1, 12 ! 1896
	lw	a12, sp, 248 ! 0
	sw	a10, a12, 8 ! 1896
	sw	a10, a0, 4 ! 1896
	mv	a13, hp ! 1915
	addi	hp, hp, 28 ! 1915
	li	a14, calc_diffuse_using_5points.2828 ! 1915
	sw	a13, a14, 0 ! 1915
	sw	a13, a6, 24 ! 1915
	lw	a14, sp, 204 ! 0
	sw	a13, a14, 20 ! 1915
	sw	a13, a11, 16 ! 1915
	sw	a13, a1, 12 ! 1915
	sw	a13, a0, 8 ! 1915
	sw	a13, a8, 4 ! 1915
	mv	a11, hp ! 1935
	addi	hp, hp, 16 ! 1935
	li	a14, do_without_neighbors.2834 ! 1935
	sw	a11, a14, 0 ! 1935
	sw	a11, a10, 12 ! 1935
	sw	a11, a2, 8 ! 1935
	sw	a11, a8, 4 ! 1935
	mv	a10, hp ! 1950
	addi	hp, hp, 16 ! 1950
	li	a14, neighbors_exist.2837 ! 1950
	sw	a10, a14, 0 ! 1950
	lw	a14, sp, 132 ! 0
	sw	a10, a14, 12 ! 1950
	sw	a10, a2, 8 ! 1950
	sw	a10, a8, 4 ! 1950
	mv	a15, hp ! 1969
	addi	hp, hp, 8 ! 1969
	li	a16, neighbors_are_available.2844 ! 1969
	sw	a15, a16, 0 ! 1969
	sw	a15, a8, 4 ! 1969
	mv	a16, hp ! 1987
	addi	hp, hp, 24 ! 1987
	li	a19, try_exploit_neighbors.2850 ! 1987
	sw	a16, a19, 0 ! 1987
	sw	a16, a15, 20 ! 1987
	sw	a16, a11, 16 ! 1987
	sw	a16, a13, 12 ! 1987
	sw	a16, a2, 8 ! 1987
	sw	a16, a8, 4 ! 1987
	mv	a13, hp ! 2014
	addi	hp, hp, 16 ! 2014
	li	a15, write_ppm_header.2857 ! 2014
	sw	a13, a15, 0 ! 2014
	sw	a13, a14, 12 ! 2014
	sw	a13, a2, 8 ! 2014
	sw	a13, a8, 4 ! 2014
	mv	a15, hp ! 2028
	addi	hp, hp, 8 ! 2028
	li	a19, write_rgb_element.2859 ! 2028
	sw	a15, a19, 0 ! 2028
	sw	a15, a2, 4 ! 2028
	mv	a19, hp ! 2034
	addi	hp, hp, 24 ! 2034
	sw	sp, a13, 340 ! 0
	li	a13, write_rgb.2861 ! 2034
	sw	a19, a13, 0 ! 2034
	sw	a19, a15, 20 ! 2034
	sw	a19, a1, 16 ! 2034
	sw	a19, a7, 12 ! 2034
	sw	a19, a2, 8 ! 2034
	sw	a19, a8, 4 ! 2034
	mv	a13, hp ! 2051
	addi	hp, hp, 36 ! 2051
	li	a15, pretrace_diffuse_rays.2863 ! 2051
	sw	a13, a15, 0 ! 2051
	sw	a13, a6, 32 ! 2051
	lw	a15, sp, 244 ! 0
	sw	a13, a15, 28 ! 2051
	sw	a13, a3, 24 ! 2051
	sw	a13, a12, 20 ! 2051
	sw	a13, a4, 16 ! 2051
	sw	a13, a0, 12 ! 2051
	sw	a13, a2, 8 ! 2051
	sw	a13, a8, 4 ! 2051
	mv	a0, hp ! 2081
	addi	hp, hp, 76 ! 2081
	li	a3, pretrace_pixels.2866 ! 2081
	sw	a0, a3, 0 ! 2081
	lw	a3, sp, 40 ! 0
	sw	a0, a3, 72 ! 2081
	lw	a3, sp, 264 ! 0
	sw	a0, a3, 68 ! 2081
	sw	a0, a6, 64 ! 2081
	sw	a0, a15, 60 ! 2081
	sw	a0, a20, 56 ! 2081
	lw	a3, sp, 144 ! 0
	sw	a0, a3, 52 ! 2081
	lw	a3, sp, 152 ! 0
	sw	a0, a3, 48 ! 2081
	lw	a3, sp, 140 ! 0
	sw	a0, a3, 44 ! 2081
	sw	a0, a1, 40 ! 2081
	lw	a12, sp, 164 ! 0
	sw	a0, a12, 36 ! 2081
	sw	a0, a13, 32 ! 2081
	lw	a12, sp, 252 ! 0
	sw	a0, a12, 28 ! 2081
	lw	a12, sp, 136 ! 0
	sw	a0, a12, 24 ! 2081
	lw	a13, sp, 200 ! 0
	sw	a0, a13, 20 ! 2081
	sw	a0, a7, 16 ! 2081
	sw	a0, a2, 12 ! 2081
	sw	a0, a8, 8 ! 2081
	fsw	a0, fa0, 4 ! 2081
	mv	a15, hp ! 2106
	addi	hp, hp, 40 ! 2106
	li	a20, pretrace_line.2873 ! 2106
	sw	a15, a20, 0 ! 2106
	lw	a20, sp, 160 ! 0
	sw	a15, a20, 36 ! 2106
	lw	a20, sp, 156 ! 0
	sw	a15, a20, 32 ! 2106
	sw	a15, a3, 28 ! 2106
	sw	a15, a0, 24 ! 2106
	sw	a15, a14, 20 ! 2106
	sw	a15, a12, 16 ! 2106
	sw	a15, a7, 12 ! 2106
	sw	a15, a2, 8 ! 2106
	sw	a15, a8, 4 ! 2106
	mv	a0, hp ! 2122
	addi	hp, hp, 40 ! 2122
	li	a20, scan_pixel.2877 ! 2122
	sw	a0, a20, 0 ! 2122
	sw	a0, a19, 36 ! 2122
	sw	a0, a6, 32 ! 2122
	sw	a0, a16, 28 ! 2122
	sw	a0, a1, 24 ! 2122
	sw	a0, a10, 20 ! 2122
	sw	a0, a14, 16 ! 2122
	sw	a0, a11, 12 ! 2122
	sw	a0, a2, 8 ! 2122
	sw	a0, a8, 4 ! 2122
	mv	a1, hp ! 2142
	addi	hp, hp, 32 ! 2142
	li	a10, scan_line.2883 ! 2142
	sw	a1, a10, 0 ! 2142
	sw	a1, a0, 28 ! 2142
	sw	a1, a15, 24 ! 2142
	sw	a1, a14, 20 ! 2142
	sw	a1, a13, 16 ! 2142
	sw	a1, a7, 12 ! 2142
	sw	a1, a2, 8 ! 2142
	sw	a1, a8, 4 ! 2142
	mv	a0, hp ! 2160
	addi	hp, hp, 24 ! 2160
	li	a10, create_float5x3array.2889 ! 2160
	sw	a0, a10, 0 ! 2160
	lw	a10, sp, 172 ! 0
	sw	a0, a10, 20 ! 2160
	sw	a0, a7, 16 ! 2160
	sw	a0, a9, 12 ! 2160
	sw	a0, a8, 8 ! 2160
	fsw	a0, fa0, 4 ! 2160
	mv	a11, hp ! 2172
	addi	hp, hp, 28 ! 2172
	li	a16, create_pixel.2891 ! 2172
	sw	a11, a16, 0 ! 2172
	sw	a11, a0, 24 ! 2172
	sw	a11, a10, 20 ! 2172
	sw	a11, a9, 16 ! 2172
	sw	a11, a2, 12 ! 2172
	sw	a11, a8, 8 ! 2172
	fsw	a11, fa0, 4 ! 2172
	mv	a0, hp ! 2185
	addi	hp, hp, 16 ! 2185
	li	a16, init_line_elements.2893 ! 2185
	sw	a0, a16, 0 ! 2185
	sw	a0, a11, 12 ! 2185
	sw	a0, a2, 8 ! 2185
	sw	a0, a8, 4 ! 2185
	mv	a16, hp ! 2194
	addi	hp, hp, 24 ! 2194
	li	a19, create_pixelline.2896 ! 2194
	sw	a16, a19, 0 ! 2194
	sw	a16, a0, 20 ! 2194
	sw	a16, a14, 16 ! 2194
	sw	a16, a11, 12 ! 2194
	sw	a16, a7, 8 ! 2194
	sw	a16, a2, 4 ! 2194
	mv	a0, hp ! 2222
	addi	hp, hp, 20 ! 2222
	li	a11, calc_dirvec.2903 ! 2222
	sw	a0, a11, 0 ! 2222
	lw	a11, sp, 256 ! 0
	sw	a0, a11, 16 ! 2222
	sw	a0, a4, 12 ! 2222
	sw	a0, a10, 8 ! 2222
	sw	a0, a8, 4 ! 2222
	mv	a10, hp ! 2243
	addi	hp, hp, 28 ! 2243
	li	a19, calc_dirvecs.2911 ! 2243
	sw	a10, a19, 0 ! 2243
	sw	a10, a0, 24 ! 2243
	sw	a10, a13, 20 ! 2243
	sw	a10, a7, 16 ! 2243
	sw	a10, a2, 12 ! 2243
	sw	a10, a8, 8 ! 2243
	fsw	a10, fa0, 4 ! 2243
	mv	a0, hp ! 2257
	addi	hp, hp, 24 ! 2257
	li	a19, calc_dirvec_rows.2916 ! 2257
	sw	a0, a19, 0 ! 2257
	sw	a0, a10, 20 ! 2257
	sw	a0, a13, 16 ! 2257
	sw	a0, a7, 12 ! 2257
	sw	a0, a2, 8 ! 2257
	sw	a0, a8, 4 ! 2257
	mv	a10, hp ! 2270
	addi	hp, hp, 20 ! 2270
	li	a13, create_dirvec.2920 ! 2270
	sw	a10, a13, 0 ! 2270
	lw	a13, sp, 8 ! 0
	sw	a10, a13, 16 ! 2270
	sw	a10, a9, 12 ! 2270
	sw	a10, a2, 8 ! 2270
	fsw	a10, fa0, 4 ! 2270
	mv	a19, hp ! 2276
	addi	hp, hp, 16 ! 2276
	li	a20, create_dirvec_elements.2922 ! 2276
	sw	a19, a20, 0 ! 2276
	sw	a19, a10, 12 ! 2276
	sw	a19, a2, 8 ! 2276
	sw	a19, a8, 4 ! 2276
	mv	a20, hp ! 2283
	addi	hp, hp, 24 ! 2283
	sw	sp, a16, 344 ! 0
	li	a16, create_dirvecs.2925 ! 2283
	sw	a20, a16, 0 ! 2283
	sw	a20, a4, 20 ! 2283
	sw	a20, a19, 16 ! 2283
	sw	a20, a10, 12 ! 2283
	sw	a20, a2, 8 ! 2283
	sw	a20, a8, 4 ! 2283
	mv	a16, hp ! 2295
	addi	hp, hp, 16 ! 2295
	li	a19, init_dirvec_constants.2927 ! 2295
	sw	a16, a19, 0 ! 2295
	lw	a19, sp, 304 ! 0
	sw	a16, a19, 12 ! 2295
	sw	a16, a2, 8 ! 2295
	sw	a16, a8, 4 ! 2295
	mv	a12, hp ! 2302
	addi	hp, hp, 20 ! 2302
	li	a14, init_vecset_constants.2930 ! 2302
	sw	a12, a14, 0 ! 2302
	sw	a12, a16, 16 ! 2302
	sw	a12, a4, 12 ! 2302
	sw	a12, a2, 8 ! 2302
	sw	a12, a8, 4 ! 2302
	mv	a4, hp ! 2309
	addi	hp, hp, 20 ! 2309
	li	a14, init_dirvecs.2932 ! 2309
	sw	a4, a14, 0 ! 2309
	sw	a4, a12, 16 ! 2309
	sw	a4, a20, 12 ! 2309
	sw	a4, a0, 8 ! 2309
	sw	a4, a2, 4 ! 2309
	mv	a0, hp ! 2320
	addi	hp, hp, 20 ! 2320
	li	a12, add_reflection.2934 ! 2320
	sw	a0, a12, 0 ! 2320
	sw	a0, a11, 16 ! 2320
	sw	a0, a19, 12 ! 2320
	lw	a11, sp, 196 ! 0
	sw	a0, a11, 8 ! 2320
	sw	a0, a10, 4 ! 2320
	mv	a10, hp ! 2329
	addi	hp, hp, 36 ! 2329
	li	a11, setup_rect_reflection.2941 ! 2329
	sw	a10, a11, 0 ! 2329
	sw	a10, a18, 32 ! 2329
	lw	a11, sp, 212 ! 0
	sw	a10, a11, 28 ! 2329
	sw	a10, a21, 24 ! 2329
	sw	a10, a0, 20 ! 2329
	sw	a10, a7, 16 ! 2329
	sw	a10, a9, 12 ! 2329
	sw	a10, a2, 8 ! 2329
	sw	a10, a8, 4 ! 2329
	mv	a9, hp ! 2343
	addi	hp, hp, 48 ! 2343
	li	a12, setup_surface_reflection.2944 ! 2343
	sw	a9, a12, 0 ! 2343
	sw	a9, a17, 44 ! 2343
	lw	a12, sp, 336 ! 0
	sw	a9, a12, 40 ! 2343
	lw	a12, sp, 332 ! 0
	sw	a9, a12, 36 ! 2343
	lw	a12, sp, 324 ! 0
	sw	a9, a12, 32 ! 2343
	sw	a9, a18, 28 ! 2343
	sw	a9, a11, 24 ! 2343
	sw	a9, a21, 20 ! 2343
	sw	a9, a0, 16 ! 2343
	sw	a9, a7, 12 ! 2343
	sw	a9, a2, 8 ! 2343
	sw	a9, a8, 4 ! 2343
	mv	a0, hp ! 2358
	addi	hp, hp, 32 ! 2358
	li	a11, setup_reflections.2947 ! 2358
	sw	a0, a11, 0 ! 2358
	sw	a0, a9, 28 ! 2358
	sw	a0, a10, 24 ! 2358
	sw	a0, a5, 20 ! 2358
	sw	a0, a18, 16 ! 2358
	sw	a0, a7, 12 ! 2358
	sw	a0, a2, 8 ! 2358
	sw	a0, a8, 4 ! 2358
	mv	a5, hp ! 2380
	addi	hp, hp, 76 ! 2380
	li	a9, rt.2949 ! 2380
	sw	a5, a9, 0 ! 2380
	lw	a9, sp, 340 ! 0
	sw	a5, a9, 72 ! 2380
	sw	a5, a6, 68 ! 2380
	sw	a5, a0, 64 ! 2380
	sw	a5, a19, 60 ! 2380
	sw	a5, a3, 56 ! 2380
	sw	a5, a1, 52 ! 2380
	lw	a0, sp, 284 ! 0
	sw	a5, a0, 48 ! 2380
	sw	a5, a15, 44 ! 2380
	sw	a5, a13, 40 ! 2380
	lw	a0, sp, 188 ! 0
	sw	a5, a0, 36 ! 2380
	sw	a5, a21, 32 ! 2380
	sw	a5, a4, 28 ! 2380
	lw	a0, sp, 132 ! 0
	sw	a5, a0, 24 ! 2380
	lw	a0, sp, 136 ! 0
	sw	a5, a0, 20 ! 2380
	lw	a0, sp, 344 ! 0
	sw	a5, a0, 16 ! 2380
	sw	a5, a7, 12 ! 2380
	sw	a5, a2, 8 ! 2380
	sw	a5, a8, 4 ! 2380
	li	a0, 512 ! 2401
	mv	a1, a0
	mv	a21, a5
	sw	sp, ra, 348
	addi	sp, sp, 352
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -352
	lw	ra, sp, 348
	li	zero, 0 ! 2403
	fin	0
