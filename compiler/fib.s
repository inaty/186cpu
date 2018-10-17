	jal	zero, 120
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a1, zero, 1
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a1, a0, -1
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -52
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	addi	a1, a1, -2
	sw	sp, a0, 4
	addi	a0, a1, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -88
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4
	add	a0, a1, a0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	addi	a0, zero, 6
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -128
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -36
	addi	sp, sp, -8
	lw	ra, sp, 4
