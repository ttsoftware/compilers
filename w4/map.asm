	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$4, __str___132_
# was:	la	__str___132__addr, __str___132_
	ori	$3, $0, 1
# was:	ori	__str___132__init, 0, 1
	sw	$3, 0($4)
# was:	sw	__str___132__init, 0(__str___132__addr)
	addi	$3, $4, 8
# was:	addi	__str___132__init, __str___132__addr, 8
	sw	$3, 4($4)
# was:	sw	__str___132__init, 4(__str___132__addr)
	la	$4, __str___116_
# was:	la	__str___116__addr, __str___116_
	ori	$3, $0, 1
# was:	ori	__str___116__init, 0, 1
	sw	$3, 0($4)
# was:	sw	__str___116__init, 0(__str___116__addr)
	addi	$3, $4, 8
# was:	addi	__str___116__init, __str___116__addr, 8
	sw	$3, 4($4)
# was:	sw	__str___116__init, 4(__str___116__addr)
	la	$4, __str___100_
# was:	la	__str___100__addr, __str___100_
	ori	$3, $0, 1
# was:	ori	__str___100__init, 0, 1
	sw	$3, 0($4)
# was:	sw	__str___100__init, 0(__str___100__addr)
	addi	$3, $4, 8
# was:	addi	__str___100__init, __str___100__addr, 8
	sw	$3, 4($4)
# was:	sw	__str___100__init, 4(__str___100__addr)
	la	$3, __str___84_
# was:	la	__str___84__addr, __str___84_
	ori	$4, $0, 1
# was:	ori	__str___84__init, 0, 1
	sw	$4, 0($3)
# was:	sw	__str___84__init, 0(__str___84__addr)
	addi	$4, $3, 8
# was:	addi	__str___84__init, __str___84__addr, 8
	sw	$4, 4($3)
# was:	sw	__str___84__init, 4(__str___84__addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function f
f:
	sw	$31, -4($29)
	addi	$29, $29, -4
# 	ori	x_arg__1_,2,0
# 	ori	_funarg__3_,x_arg__1_,0
# 	ori	2,_funarg__3_,0
	jal	chr
# was:	jal	chr, 2
# 	ori	_return__2_,2,0
# 	ori	2,_return__2_,0
	j	f_exit
f_exit:
	addi	$29, $29, 4
	lw	$31, -4($29)
	jr	$31
# Function map
map:
	sw	$31, -4($29)
	addi	$29, $29, -24
	sw	$20, 16($29)
	sw	$19, 12($29)
	sw	$18, 8($29)
	sw	$17, 4($29)
	sw	$16, 0($29)
	ori	$16, $2, 0
# was:	ori	x_arg__4_, 2, 0
	ori	$4, $0, 1
# was:	ori	_check__13_, 0, 1
	ori	$6, $28, 0
# was:	ori	_assign__8_, 28, 0
	addi	$28, $28, 16
# was:	addi	28, 28, 16
	ori	$3, $0, 1
# was:	ori	_tmp__9_, 0, 1
	ori	$2, $0, 1
# was:	ori	_ereg__10_, 0, 1
	slti	$7, $2, 2
# was:	andi	_cond__15_, _ereg__10_, 2
	ori	$5, $0, -1
# was:	ori	_tmp__14_, 0, -1
	slt	$5, $5, $2
# was:	slt	_tmp__14_, _tmp__14_, _ereg__10_
	and	$7, $7, $5
# was:	and	_cond__15_, _cond__15_, _tmp__14_
	ori	$5, $0, 14
# was:	ori	5, 0, 14
	beq	$7, $0, _IllegalArrIndexError_
# was:	beq	_cond__15_, 0, _IllegalArrIndexError_
	sll	$2, $2, 2
# was:	sll	_ereg__10_, _ereg__10_, 2
	ori	$5, $16, 0
# was:	ori	_tmp__14_, x_arg__4_, 0
	add	$5, $5, $2
# was:	add	_tmp__14_, _tmp__14_, _ereg__10_
	lw	$2, 0($5)
# was:	lw	_ereg__10_, 0(_tmp__14_)
	slt	$5, $0, $2
# was:	slt	_cond__16_, 0, _ereg__10_
	and	$4, $4, $5
# was:	and	_check__13_, _check__13_, _cond__16_
	sw	$2, 4($6)
# was:	sw	_ereg__10_, 4(_assign__8_)
	mul	$3, $3, $2
# was:	mul	_tmp__9_, _tmp__9_, _ereg__10_
	sw	$3, 8($6)
# was:	sw	_tmp__9_, 8(_assign__8_)
	ori	$2, $0, 0
# was:	ori	_ereg__10_, 0, 0
	slti	$7, $2, 2
# was:	andi	_cond__18_, _ereg__10_, 2
	ori	$5, $0, -1
# was:	ori	_tmp__17_, 0, -1
	slt	$5, $5, $2
# was:	slt	_tmp__17_, _tmp__17_, _ereg__10_
	and	$7, $7, $5
# was:	and	_cond__18_, _cond__18_, _tmp__17_
	ori	$5, $0, 14
# was:	ori	5, 0, 14
	beq	$7, $0, _IllegalArrIndexError_
# was:	beq	_cond__18_, 0, _IllegalArrIndexError_
	sll	$2, $2, 2
# was:	sll	_ereg__10_, _ereg__10_, 2
	ori	$5, $16, 0
# was:	ori	_tmp__17_, x_arg__4_, 0
	add	$5, $5, $2
# was:	add	_tmp__17_, _tmp__17_, _ereg__10_
	lw	$2, 0($5)
# was:	lw	_ereg__10_, 0(_tmp__17_)
	slt	$5, $0, $2
# was:	slt	_cond__19_, 0, _ereg__10_
	and	$4, $4, $5
# was:	and	_check__13_, _check__13_, _cond__19_
	ori	$5, $0, 14
# was:	ori	5, 0, 14
	beq	$4, $0, _IllegalArrSizeError_
# was:	beq	_check__13_, 0, _IllegalArrSizeError_
	sw	$2, 0($6)
# was:	sw	_ereg__10_, 0(_assign__8_)
	mul	$3, $3, $2
# was:	mul	_tmp__9_, _tmp__9_, _ereg__10_
	sw	$28, 12($6)
# was:	sw	28, 12(_assign__8_)
	ori	$2, $3, 0
# was:	ori	_ereg__10_, _tmp__9_, 0
	addi	$2, $2, 3
# was:	addi	_ereg__10_, _ereg__10_, 3
	sra	$2, $2, 2
# was:	sra	_ereg__10_, _ereg__10_, 2
	sll	$2, $2, 2
# was:	sll	_ereg__10_, _ereg__10_, 2
	ori	$3, $28, 0
# was:	ori	_tmp__9_, 28, 0
	add	$28, $28, $2
# was:	add	28, 28, _ereg__10_
_loop_beg__11_:
	beq	$3, $28, _loop_end__12_
# was:	beq	_tmp__9_, 28, _loop_end__12_
	sb	$0, 0($3)
# was:	sb	0, 0(_tmp__9_)
	addi	$3, $3, 1
# was:	addi	_tmp__9_, _tmp__9_, 1
	j	_loop_beg__11_
_loop_end__12_:
	ori	$17, $6, 0
# was:	ori	y_local__7_, _assign__8_, 0
	ori	$18, $0, 0
# was:	ori	_assign__20_, 0, 0
# 	ori	i_local__6_,_assign__20_,0
	ori	$19, $0, 0
# was:	ori	_assign__21_, 0, 0
# 	ori	ii_local__5_,_assign__21_,0
_wEntry__23_:
# 	ori	less1__25_,i_local__6_,0
	ori	$3, $0, 0
# was:	ori	less2__26_, 0, 0
	slti	$2, $3, 2
# was:	andi	_cond__28_, less2__26_, 2
	ori	$4, $0, -1
# was:	ori	_tmp__27_, 0, -1
	slt	$4, $4, $3
# was:	slt	_tmp__27_, _tmp__27_, less2__26_
	and	$2, $2, $4
# was:	and	_cond__28_, _cond__28_, _tmp__27_
	ori	$5, $0, 17
# was:	ori	5, 0, 17
	beq	$2, $0, _IllegalArrIndexError_
# was:	beq	_cond__28_, 0, _IllegalArrIndexError_
	sll	$3, $3, 2
# was:	sll	less2__26_, less2__26_, 2
	ori	$4, $16, 0
# was:	ori	_tmp__27_, x_arg__4_, 0
	add	$4, $4, $3
# was:	add	_tmp__27_, _tmp__27_, less2__26_
	lw	$3, 0($4)
# was:	lw	less2__26_, 0(_tmp__27_)
	slt	$2, $18, $3
# was:	slt	_while__22_, less1__25_, less2__26_
	beq	$2, $0, _wExit__24_
# was:	beq	_while__22_, 0, _wExit__24_
_wEntry__30_:
# 	ori	less1__32_,ii_local__5_,0
	ori	$3, $0, 1
# was:	ori	less2__33_, 0, 1
	slti	$2, $3, 2
# was:	andi	_cond__35_, less2__33_, 2
	ori	$4, $0, -1
# was:	ori	_tmp__34_, 0, -1
	slt	$4, $4, $3
# was:	slt	_tmp__34_, _tmp__34_, less2__33_
	and	$2, $2, $4
# was:	and	_cond__35_, _cond__35_, _tmp__34_
	ori	$5, $0, 19
# was:	ori	5, 0, 19
	beq	$2, $0, _IllegalArrIndexError_
# was:	beq	_cond__35_, 0, _IllegalArrIndexError_
	sll	$3, $3, 2
# was:	sll	less2__33_, less2__33_, 2
	ori	$4, $16, 0
# was:	ori	_tmp__34_, x_arg__4_, 0
	add	$4, $4, $3
# was:	add	_tmp__34_, _tmp__34_, less2__33_
	lw	$3, 0($4)
# was:	lw	less2__33_, 0(_tmp__34_)
	slt	$2, $19, $3
# was:	slt	_while__29_, less1__32_, less2__33_
	beq	$2, $0, _wExit__31_
# was:	beq	_while__29_, 0, _wExit__31_
	addi	$29, $29, -8
# was:	addi	29, 29, -8
# 	ori	_temp__44_,i_local__6_,0
	add	$4, $0, $18
# was:	add	_indx__37_, 0, _temp__44_
	sw	$4, 0($29)
# was:	sw	_indx__37_, 0(29)
# 	ori	_temp__45_,ii_local__5_,0
	add	$4, $0, $19
# was:	add	_indx__37_, 0, _temp__45_
	sw	$4, 4($29)
# was:	sw	_indx__37_, 4(29)
	addi	$20, $17, 0
# was:	addi	_arrptr__36_, y_local__7_, 0
	addi	$4, $0, 0
# was:	addi	_indx__37_, 0, 0
	addi	$7, $0, 0
# was:	addi	_flatIndx__39_, 0, 0
	addi	$5, $0, 2
# was:	addi	_ctr__40_, 0, 2
	addi	$6, $0, 4
# was:	addi	_strides__43_, 0, 4
_calc_and_check__42_:
	lw	$2, 0($20)
# was:	lw	_dimx__38_, 0(_arrptr__36_)
	mul	$7, $7, $2
# was:	mul	_flatIndx__39_, _flatIndx__39_, _dimx__38_
	lw	$4, 0($29)
# was:	lw	_indx__37_, 0(29)
	addi	$3, $4, 1
# was:	addi	_tmp__41_, _indx__37_, 1
	sub	$3, $2, $3
# was:	sub	_tmp__41_, _dimx__38_, _tmp__41_
	slti	$3, $3, 0
# was:	andi	_tmp__41_, _tmp__41_, 0
	bne	$3, $0, _IllegalArrIndexError_
# was:	bne	_tmp__41_, 0, _IllegalArrIndexError_
	add	$7, $7, $4
# was:	add	_flatIndx__39_, _flatIndx__39_, _indx__37_
	addi	$20, $20, 4
# was:	addi	_arrptr__36_, _arrptr__36_, 4
	addi	$29, $29, 4
# was:	addi	29, 29, 4
	addi	$5, $5, -1
# was:	addi	_ctr__40_, _ctr__40_, -1
	bne	$5, $0, _calc_and_check__42_
# was:	bne	_ctr__40_, 0, _calc_and_check__42_
	add	$20, $20, $6
# was:	add	_arrptr__36_, _arrptr__36_, _strides__43_
	addi	$7, $7, 1
# was:	addi	_flatIndx__39_, _flatIndx__39_, 1
	sll	$7, $7, 0
# was:	sll	_flatIndx__39_, _flatIndx__39_, 0
	add	$20, $20, $7
# was:	add	_arrptr__36_, _arrptr__36_, _flatIndx__39_
	addi	$29, $29, -8
# was:	addi	29, 29, -8
# 	ori	_temp__56_,i_local__6_,0
	add	$5, $0, $18
# was:	add	_indx__49_, 0, _temp__56_
	sw	$5, 0($29)
# was:	sw	_indx__49_, 0(29)
# 	ori	_temp__57_,ii_local__5_,0
	add	$5, $0, $19
# was:	add	_indx__49_, 0, _temp__57_
	sw	$5, 4($29)
# was:	sw	_indx__49_, 4(29)
	addi	$4, $16, 0
# was:	addi	_arrptr__48_, x_arg__4_, 0
	addi	$5, $0, 0
# was:	addi	_indx__49_, 0, 0
	addi	$8, $0, 0
# was:	addi	_flatIndx__51_, 0, 0
	addi	$6, $0, 2
# was:	addi	_ctr__52_, 0, 2
	addi	$7, $0, 4
# was:	addi	_strides__55_, 0, 4
_calc_and_check__54_:
	lw	$2, 0($4)
# was:	lw	_dimx__50_, 0(_arrptr__48_)
	mul	$8, $8, $2
# was:	mul	_flatIndx__51_, _flatIndx__51_, _dimx__50_
	lw	$5, 0($29)
# was:	lw	_indx__49_, 0(29)
	addi	$3, $5, 1
# was:	addi	_tmp__53_, _indx__49_, 1
	sub	$3, $2, $3
# was:	sub	_tmp__53_, _dimx__50_, _tmp__53_
	slti	$3, $3, 0
# was:	andi	_tmp__53_, _tmp__53_, 0
	bne	$3, $0, _IllegalArrIndexError_
# was:	bne	_tmp__53_, 0, _IllegalArrIndexError_
	add	$8, $8, $5
# was:	add	_flatIndx__51_, _flatIndx__51_, _indx__49_
	addi	$4, $4, 4
# was:	addi	_arrptr__48_, _arrptr__48_, 4
	addi	$29, $29, 4
# was:	addi	29, 29, 4
	addi	$6, $6, -1
# was:	addi	_ctr__52_, _ctr__52_, -1
	bne	$6, $0, _calc_and_check__54_
# was:	bne	_ctr__52_, 0, _calc_and_check__54_
	add	$4, $4, $7
# was:	add	_arrptr__48_, _arrptr__48_, _strides__55_
	addi	$8, $8, 1
# was:	addi	_flatIndx__51_, _flatIndx__51_, 1
	sll	$8, $8, 2
# was:	sll	_flatIndx__51_, _flatIndx__51_, 2
	add	$4, $4, $8
# was:	add	_arrptr__48_, _arrptr__48_, _flatIndx__51_
	lw	$2, 0($4)
# was:	lw	_funarg__47_, 0(_arrptr__48_)
# 	ori	2,_funarg__47_,0
	jal	f
# was:	jal	f, 2
# 	ori	_assign__46_,2,0
	sb	$2, 0($20)
# was:	sb	_assign__46_, 0(_arrptr__36_)
# 	ori	plus1__59_,ii_local__5_,0
	ori	$2, $0, 1
# was:	ori	plus2__60_, 0, 1
	add	$19, $19, $2
# was:	add	_assign__58_, plus1__59_, plus2__60_
# 	ori	ii_local__5_,_assign__58_,0
	j	_wEntry__30_
_wExit__31_:
# 	ori	plus1__62_,i_local__6_,0
	ori	$2, $0, 1
# was:	ori	plus2__63_, 0, 1
	add	$18, $18, $2
# was:	add	_assign__61_, plus1__62_, plus2__63_
# 	ori	i_local__6_,_assign__61_,0
	j	_wEntry__23_
_wExit__24_:
	ori	$2, $17, 0
# was:	ori	_return__64_, y_local__7_, 0
# 	ori	2,_return__64_,0
	j	map_exit
map_exit:
	lw	$20, 16($29)
	lw	$19, 12($29)
	lw	$18, 8($29)
	lw	$17, 4($29)
	lw	$16, 0($29)
	addi	$29, $29, 24
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	addi	$29, $29, -16
	sw	$18, 8($29)
	sw	$17, 4($29)
	sw	$16, 0($29)
	ori	$2, $28, 0
# was:	ori	_assign__67_, 28, 0
	addi	$28, $28, 32
# was:	addi	28, 28, 32
	ori	$4, $2, 0
# was:	ori	_tmp__68_, _assign__67_, 0
	ori	$3, $0, 2
# was:	ori	_tmp__69_, 0, 2
	sw	$3, 0($4)
# was:	sw	_tmp__69_, 0(_tmp__68_)
	addi	$4, $4, 4
# was:	addi	_tmp__68_, _tmp__68_, 4
	ori	$3, $0, 2
# was:	ori	_tmp__69_, 0, 2
	sw	$3, 0($4)
# was:	sw	_tmp__69_, 0(_tmp__68_)
	addi	$4, $4, 4
# was:	addi	_tmp__68_, _tmp__68_, 4
	ori	$3, $0, 2
# was:	ori	_tmp__69_, 0, 2
	sw	$3, 0($4)
# was:	sw	_tmp__69_, 0(_tmp__68_)
	addi	$4, $4, 4
# was:	addi	_tmp__68_, _tmp__68_, 4
	addi	$4, $4, 4
# was:	addi	_tmp__68_, _tmp__68_, 4
	sw	$4, -4($4)
# was:	sw	_tmp__68_, -4(_tmp__68_)
	ori	$3, $0, 1
# was:	ori	_tmp__69_, 0, 1
	sw	$3, 0($4)
# was:	sw	_tmp__69_, 0(_tmp__68_)
	addi	$4, $4, 4
# was:	addi	_tmp__68_, _tmp__68_, 4
	ori	$3, $0, 2
# was:	ori	_tmp__69_, 0, 2
	sw	$3, 0($4)
# was:	sw	_tmp__69_, 0(_tmp__68_)
	addi	$4, $4, 4
# was:	addi	_tmp__68_, _tmp__68_, 4
	ori	$3, $0, 3
# was:	ori	_tmp__69_, 0, 3
	sw	$3, 0($4)
# was:	sw	_tmp__69_, 0(_tmp__68_)
	addi	$4, $4, 4
# was:	addi	_tmp__68_, _tmp__68_, 4
	ori	$3, $0, 4
# was:	ori	_tmp__69_, 0, 4
	sw	$3, 0($4)
# was:	sw	_tmp__69_, 0(_tmp__68_)
	addi	$4, $4, 4
# was:	addi	_tmp__68_, _tmp__68_, 4
# 	ori	arr_local__66_,_assign__67_,0
# 	ori	_funarg__71_,arr_local__66_,0
# 	ori	2,_funarg__71_,0
	jal	map
# was:	jal	map, 2
# 	ori	_assign__70_,2,0
	ori	$16, $2, 0
# was:	ori	rarr_local__65_, _assign__70_, 0
	addi	$29, $29, -8
# was:	addi	29, 29, -8
	ori	$2, $0, 0
# was:	ori	_temp__81_, 0, 0
	add	$2, $0, $2
# was:	add	_indx__74_, 0, _temp__81_
	sw	$2, 0($29)
# was:	sw	_indx__74_, 0(29)
	ori	$2, $0, 0
# was:	ori	_temp__82_, 0, 0
	add	$2, $0, $2
# was:	add	_indx__74_, 0, _temp__82_
	sw	$2, 4($29)
# was:	sw	_indx__74_, 4(29)
	addi	$3, $16, 0
# was:	addi	_arrptr__73_, rarr_local__65_, 0
	addi	$2, $0, 0
# was:	addi	_indx__74_, 0, 0
	addi	$5, $0, 0
# was:	addi	_flatIndx__76_, 0, 0
	addi	$6, $0, 2
# was:	addi	_ctr__77_, 0, 2
	addi	$7, $0, 4
# was:	addi	_strides__80_, 0, 4
_calc_and_check__79_:
	lw	$4, 0($3)
# was:	lw	_dimx__75_, 0(_arrptr__73_)
	mul	$5, $5, $4
# was:	mul	_flatIndx__76_, _flatIndx__76_, _dimx__75_
	lw	$2, 0($29)
# was:	lw	_indx__74_, 0(29)
	addi	$8, $2, 1
# was:	addi	_tmp__78_, _indx__74_, 1
	sub	$8, $4, $8
# was:	sub	_tmp__78_, _dimx__75_, _tmp__78_
	slti	$8, $8, 0
# was:	andi	_tmp__78_, _tmp__78_, 0
	bne	$8, $0, _IllegalArrIndexError_
# was:	bne	_tmp__78_, 0, _IllegalArrIndexError_
	add	$5, $5, $2
# was:	add	_flatIndx__76_, _flatIndx__76_, _indx__74_
	addi	$3, $3, 4
# was:	addi	_arrptr__73_, _arrptr__73_, 4
	addi	$29, $29, 4
# was:	addi	29, 29, 4
	addi	$6, $6, -1
# was:	addi	_ctr__77_, _ctr__77_, -1
	bne	$6, $0, _calc_and_check__79_
# was:	bne	_ctr__77_, 0, _calc_and_check__79_
	add	$3, $3, $7
# was:	add	_arrptr__73_, _arrptr__73_, _strides__80_
	addi	$5, $5, 1
# was:	addi	_flatIndx__76_, _flatIndx__76_, 1
	sll	$5, $5, 0
# was:	sll	_flatIndx__76_, _flatIndx__76_, 0
	add	$3, $3, $5
# was:	add	_arrptr__73_, _arrptr__73_, _flatIndx__76_
	lb	$2, 0($3)
# was:	lb	_dat__72_, 0(_arrptr__73_)
# 	ori	2,_dat__72_,0
	jal	writeChar
# was:	jal	writeChar, 2
	la	$17, __str___84_
# was:	la	_dat__83_, __str___84_
# __str___84_: string "\n"
	lw	$18, 0($17)
# was:	lw	_arr_end__85_, 0(_dat__83_)
	lw	$17, 4($17)
# was:	lw	_dat__83_, 4(_dat__83_)
	add	$18, $18, $17
# was:	add	_arr_end__85_, _arr_end__85_, _dat__83_
_write_loop_beg_86_:
	beq	$17, $18, _write_loop_end_87_
# was:	beq	_dat__83_, _arr_end__85_, _write_loop_end_87_
	lb	$2, 0($17)
# was:	lb	2, 0(_dat__83_)
	jal	writeChar
# was:	jal	writeChar, 2
	addi	$17, $17, 1
# was:	addi	_dat__83_, _dat__83_, 1
	j	_write_loop_beg_86_
_write_loop_end_87_:
	addi	$29, $29, -8
# was:	addi	29, 29, -8
	ori	$2, $0, 0
# was:	ori	_temp__97_, 0, 0
	add	$7, $0, $2
# was:	add	_indx__90_, 0, _temp__97_
	sw	$7, 0($29)
# was:	sw	_indx__90_, 0(29)
	ori	$2, $0, 1
# was:	ori	_temp__98_, 0, 1
	add	$7, $0, $2
# was:	add	_indx__90_, 0, _temp__98_
	sw	$7, 4($29)
# was:	sw	_indx__90_, 4(29)
	addi	$2, $16, 0
# was:	addi	_arrptr__89_, rarr_local__65_, 0
	addi	$7, $0, 0
# was:	addi	_indx__90_, 0, 0
	addi	$6, $0, 0
# was:	addi	_flatIndx__92_, 0, 0
	addi	$3, $0, 2
# was:	addi	_ctr__93_, 0, 2
	addi	$4, $0, 4
# was:	addi	_strides__96_, 0, 4
_calc_and_check__95_:
	lw	$5, 0($2)
# was:	lw	_dimx__91_, 0(_arrptr__89_)
	mul	$6, $6, $5
# was:	mul	_flatIndx__92_, _flatIndx__92_, _dimx__91_
	lw	$7, 0($29)
# was:	lw	_indx__90_, 0(29)
	addi	$8, $7, 1
# was:	addi	_tmp__94_, _indx__90_, 1
	sub	$8, $5, $8
# was:	sub	_tmp__94_, _dimx__91_, _tmp__94_
	slti	$8, $8, 0
# was:	andi	_tmp__94_, _tmp__94_, 0
	bne	$8, $0, _IllegalArrIndexError_
# was:	bne	_tmp__94_, 0, _IllegalArrIndexError_
	add	$6, $6, $7
# was:	add	_flatIndx__92_, _flatIndx__92_, _indx__90_
	addi	$2, $2, 4
# was:	addi	_arrptr__89_, _arrptr__89_, 4
	addi	$29, $29, 4
# was:	addi	29, 29, 4
	addi	$3, $3, -1
# was:	addi	_ctr__93_, _ctr__93_, -1
	bne	$3, $0, _calc_and_check__95_
# was:	bne	_ctr__93_, 0, _calc_and_check__95_
	add	$2, $2, $4
# was:	add	_arrptr__89_, _arrptr__89_, _strides__96_
	addi	$6, $6, 1
# was:	addi	_flatIndx__92_, _flatIndx__92_, 1
	sll	$6, $6, 0
# was:	sll	_flatIndx__92_, _flatIndx__92_, 0
	add	$2, $2, $6
# was:	add	_arrptr__89_, _arrptr__89_, _flatIndx__92_
	lb	$2, 0($2)
# was:	lb	_dat__88_, 0(_arrptr__89_)
# 	ori	2,_dat__88_,0
	jal	writeChar
# was:	jal	writeChar, 2
	la	$17, __str___100_
# was:	la	_dat__99_, __str___100_
# __str___100_: string "\n"
	lw	$18, 0($17)
# was:	lw	_arr_end__101_, 0(_dat__99_)
	lw	$17, 4($17)
# was:	lw	_dat__99_, 4(_dat__99_)
	add	$18, $18, $17
# was:	add	_arr_end__101_, _arr_end__101_, _dat__99_
_write_loop_beg_102_:
	beq	$17, $18, _write_loop_end_103_
# was:	beq	_dat__99_, _arr_end__101_, _write_loop_end_103_
	lb	$2, 0($17)
# was:	lb	2, 0(_dat__99_)
	jal	writeChar
# was:	jal	writeChar, 2
	addi	$17, $17, 1
# was:	addi	_dat__99_, _dat__99_, 1
	j	_write_loop_beg_102_
_write_loop_end_103_:
	addi	$29, $29, -8
# was:	addi	29, 29, -8
	ori	$2, $0, 1
# was:	ori	_temp__113_, 0, 1
	add	$4, $0, $2
# was:	add	_indx__106_, 0, _temp__113_
	sw	$4, 0($29)
# was:	sw	_indx__106_, 0(29)
	ori	$2, $0, 0
# was:	ori	_temp__114_, 0, 0
	add	$4, $0, $2
# was:	add	_indx__106_, 0, _temp__114_
	sw	$4, 4($29)
# was:	sw	_indx__106_, 4(29)
	addi	$8, $16, 0
# was:	addi	_arrptr__105_, rarr_local__65_, 0
	addi	$4, $0, 0
# was:	addi	_indx__106_, 0, 0
	addi	$6, $0, 0
# was:	addi	_flatIndx__108_, 0, 0
	addi	$2, $0, 2
# was:	addi	_ctr__109_, 0, 2
	addi	$7, $0, 4
# was:	addi	_strides__112_, 0, 4
_calc_and_check__111_:
	lw	$3, 0($8)
# was:	lw	_dimx__107_, 0(_arrptr__105_)
	mul	$6, $6, $3
# was:	mul	_flatIndx__108_, _flatIndx__108_, _dimx__107_
	lw	$4, 0($29)
# was:	lw	_indx__106_, 0(29)
	addi	$5, $4, 1
# was:	addi	_tmp__110_, _indx__106_, 1
	sub	$5, $3, $5
# was:	sub	_tmp__110_, _dimx__107_, _tmp__110_
	slti	$5, $5, 0
# was:	andi	_tmp__110_, _tmp__110_, 0
	bne	$5, $0, _IllegalArrIndexError_
# was:	bne	_tmp__110_, 0, _IllegalArrIndexError_
	add	$6, $6, $4
# was:	add	_flatIndx__108_, _flatIndx__108_, _indx__106_
	addi	$8, $8, 4
# was:	addi	_arrptr__105_, _arrptr__105_, 4
	addi	$29, $29, 4
# was:	addi	29, 29, 4
	addi	$2, $2, -1
# was:	addi	_ctr__109_, _ctr__109_, -1
	bne	$2, $0, _calc_and_check__111_
# was:	bne	_ctr__109_, 0, _calc_and_check__111_
	add	$8, $8, $7
# was:	add	_arrptr__105_, _arrptr__105_, _strides__112_
	addi	$6, $6, 1
# was:	addi	_flatIndx__108_, _flatIndx__108_, 1
	sll	$6, $6, 0
# was:	sll	_flatIndx__108_, _flatIndx__108_, 0
	add	$8, $8, $6
# was:	add	_arrptr__105_, _arrptr__105_, _flatIndx__108_
	lb	$2, 0($8)
# was:	lb	_dat__104_, 0(_arrptr__105_)
# 	ori	2,_dat__104_,0
	jal	writeChar
# was:	jal	writeChar, 2
	la	$17, __str___116_
# was:	la	_dat__115_, __str___116_
# __str___116_: string "\n"
	lw	$18, 0($17)
# was:	lw	_arr_end__117_, 0(_dat__115_)
	lw	$17, 4($17)
# was:	lw	_dat__115_, 4(_dat__115_)
	add	$18, $18, $17
# was:	add	_arr_end__117_, _arr_end__117_, _dat__115_
_write_loop_beg_118_:
	beq	$17, $18, _write_loop_end_119_
# was:	beq	_dat__115_, _arr_end__117_, _write_loop_end_119_
	lb	$2, 0($17)
# was:	lb	2, 0(_dat__115_)
	jal	writeChar
# was:	jal	writeChar, 2
	addi	$17, $17, 1
# was:	addi	_dat__115_, _dat__115_, 1
	j	_write_loop_beg_118_
_write_loop_end_119_:
	addi	$29, $29, -8
# was:	addi	29, 29, -8
	ori	$2, $0, 1
# was:	ori	_temp__129_, 0, 1
	add	$2, $0, $2
# was:	add	_indx__122_, 0, _temp__129_
	sw	$2, 0($29)
# was:	sw	_indx__122_, 0(29)
	ori	$2, $0, 1
# was:	ori	_temp__130_, 0, 1
	add	$2, $0, $2
# was:	add	_indx__122_, 0, _temp__130_
	sw	$2, 4($29)
# was:	sw	_indx__122_, 4(29)
	addi	$5, $16, 0
# was:	addi	_arrptr__121_, rarr_local__65_, 0
	addi	$2, $0, 0
# was:	addi	_indx__122_, 0, 0
	addi	$3, $0, 0
# was:	addi	_flatIndx__124_, 0, 0
	addi	$7, $0, 2
# was:	addi	_ctr__125_, 0, 2
	addi	$6, $0, 4
# was:	addi	_strides__128_, 0, 4
_calc_and_check__127_:
	lw	$8, 0($5)
# was:	lw	_dimx__123_, 0(_arrptr__121_)
	mul	$3, $3, $8
# was:	mul	_flatIndx__124_, _flatIndx__124_, _dimx__123_
	lw	$2, 0($29)
# was:	lw	_indx__122_, 0(29)
	addi	$4, $2, 1
# was:	addi	_tmp__126_, _indx__122_, 1
	sub	$4, $8, $4
# was:	sub	_tmp__126_, _dimx__123_, _tmp__126_
	slti	$4, $4, 0
# was:	andi	_tmp__126_, _tmp__126_, 0
	bne	$4, $0, _IllegalArrIndexError_
# was:	bne	_tmp__126_, 0, _IllegalArrIndexError_
	add	$3, $3, $2
# was:	add	_flatIndx__124_, _flatIndx__124_, _indx__122_
	addi	$5, $5, 4
# was:	addi	_arrptr__121_, _arrptr__121_, 4
	addi	$29, $29, 4
# was:	addi	29, 29, 4
	addi	$7, $7, -1
# was:	addi	_ctr__125_, _ctr__125_, -1
	bne	$7, $0, _calc_and_check__127_
# was:	bne	_ctr__125_, 0, _calc_and_check__127_
	add	$5, $5, $6
# was:	add	_arrptr__121_, _arrptr__121_, _strides__128_
	addi	$3, $3, 1
# was:	addi	_flatIndx__124_, _flatIndx__124_, 1
	sll	$3, $3, 0
# was:	sll	_flatIndx__124_, _flatIndx__124_, 0
	add	$5, $5, $3
# was:	add	_arrptr__121_, _arrptr__121_, _flatIndx__124_
	lb	$2, 0($5)
# was:	lb	_dat__120_, 0(_arrptr__121_)
# 	ori	2,_dat__120_,0
	jal	writeChar
# was:	jal	writeChar, 2
	la	$17, __str___132_
# was:	la	_dat__131_, __str___132_
# __str___132_: string "\n"
	lw	$16, 0($17)
# was:	lw	_arr_end__133_, 0(_dat__131_)
	lw	$17, 4($17)
# was:	lw	_dat__131_, 4(_dat__131_)
	add	$16, $16, $17
# was:	add	_arr_end__133_, _arr_end__133_, _dat__131_
_write_loop_beg_134_:
	beq	$17, $16, _write_loop_end_135_
# was:	beq	_dat__131_, _arr_end__133_, _write_loop_end_135_
	lb	$2, 0($17)
# was:	lb	2, 0(_dat__131_)
	jal	writeChar
# was:	jal	writeChar, 2
	addi	$17, $17, 1
# was:	addi	_dat__131_, _dat__131_, 1
	j	_write_loop_beg_134_
_write_loop_end_135_:
main_exit:
	lw	$18, 8($29)
	lw	$17, 4($29)
	lw	$16, 0($29)
	addi	$29, $29, 16
	lw	$31, -4($29)
	jr	$31
ord:
	andi	$2, $2, 255
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
len:
	lw	$2, 0($2)
	jr	$31
writeInt:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
readInt:
	ori	$2, $0, 5
	syscall
	jr	$31
writeChar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
readChar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
_IllegalArrIndexError_:
	la	$4, _IllegalArrIndexString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
	.align	2
_cr_:
	.asciiz	"\n"
	.align	2
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
	.align	2
_IllegalArrIndexString_:
	.asciiz	"Error: Array index out of bounds at line "
# String Literals
	.align	2
__str___132_:
	.space	8
	.ascii	"\n"
	.align	2
__str___116_:
	.space	8
	.ascii	"\n"
	.align	2
__str___100_:
	.space	8
	.ascii	"\n"
	.align	2
__str___84_:
	.space	8
	.ascii	"\n"
	.align	2
_heap_:
	.space	100000
