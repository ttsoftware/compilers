	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$4, fail__s_38_
# was:	la	fail__s_38__addr, fail__s_38_
	ori	$3, $0, 4
# was:	ori	fail__s_38__init, 0, 4
	sw	$3, 0($4)
# was:	sw	fail__s_38__init, 0(fail__s_38__addr)
	addi	$3, $4, 8
# was:	addi	fail__s_38__init, fail__s_38__addr, 8
	sw	$3, 4($4)
# was:	sw	fail__s_38__init, 4(fail__s_38__addr)
	la	$3, detvirk_33_
# was:	la	detvirk_33__addr, detvirk_33_
	ori	$4, $0, 13
# was:	ori	detvirk_33__init, 0, 13
	sw	$4, 0($3)
# was:	sw	detvirk_33__init, 0(detvirk_33__addr)
	addi	$4, $3, 8
# was:	addi	detvirk_33__init, detvirk_33__addr, 8
	sw	$4, 4($3)
# was:	sw	detvirk_33__init, 4(detvirk_33__addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function test
test:
	sw	$31, -4($29)
	addi	$29, $29, -4
	ori	$3, $0, 2
# was:	ori	_assign__5_, 0, 2
# 	ori	m_local__4_,_assign__5_,0
	ori	$5, $0, 3
# was:	ori	_assign__6_, 0, 3
# 	ori	o_local__3_,_assign__6_,0
	ori	$2, $0, 4
# was:	ori	plus1__9_, 0, 4
# 	ori	plus2__10_,m_local__4_,0
	add	$3, $2, $3
# was:	add	times1__8_, plus1__9_, plus2__10_
	ori	$2, $0, 6100
# was:	ori	times2__11_, 0, 6100
	mul	$2, $3, $2
# was:	mul	_assign__7_, times1__8_, times2__11_
# 	ori	v_local__2_,_assign__7_,0
	ori	$3, $0, 1
# was:	ori	plus1__13_, 0, 1
	ori	$4, $0, 1
# was:	ori	times1__16_, 0, 1
# 	ori	times2__17_,o_local__3_,0
	mul	$4, $4, $5
# was:	mul	times1__15_, times1__16_, times2__17_
	ori	$5, $0, 2
# was:	ori	times2__18_, 0, 2
	mul	$4, $4, $5
# was:	mul	plus2__14_, times1__15_, times2__18_
	add	$3, $3, $4
# was:	add	_assign__12_, plus1__13_, plus2__14_
# 	ori	p_local__1_,_assign__12_,0
	ori	$5, $2, 0
# was:	ori	eq1__21_, v_local__2_, 0
	lui	$4, 0
# was:	lui	eq2__22_, 0
	ori	$4, $4, 36600
# was:	ori	eq2__22_, eq2__22_, 36600
	ori	$2, $0, 1
# was:	ori	and1__20_, 0, 1
	beq	$5, $4, _equal__23_
# was:	beq	eq1__21_, eq2__22_, _equal__23_
	ori	$2, $0, 0
# was:	ori	and1__20_, 0, 0
_equal__23_:
# 	ori	_return__19_,and1__20_,0
	beq	$2, $0, _and__28_
# was:	beq	_return__19_, 0, _and__28_
# 	ori	eq1__25_,p_local__1_,0
	ori	$4, $0, 7
# was:	ori	eq2__26_, 0, 7
	ori	$2, $0, 1
# was:	ori	and2__24_, 0, 1
	beq	$3, $4, _equal__27_
# was:	beq	eq1__25_, eq2__26_, _equal__27_
	ori	$2, $0, 0
# was:	ori	and2__24_, 0, 0
_equal__27_:
# 	ori	_return__19_,and2__24_,0
_and__28_:
# 	ori	2,_return__19_,0
	j	test_exit
test_exit:
	addi	$29, $29, 4
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	addi	$29, $29, -12
	sw	$17, 4($29)
	sw	$16, 0($29)
	jal	test
# was:	jal	test, 
# 	ori	_if__29_,2,0
	beq	$2, $0, _else__30_
# was:	beq	_if__29_, 0, _else__30_
	la	$16, detvirk_33_
# was:	la	_dat__32_, detvirk_33_
# detvirk_33_: string "det virker jo"
	lw	$17, 0($16)
# was:	lw	_arr_end__34_, 0(_dat__32_)
	lw	$16, 4($16)
# was:	lw	_dat__32_, 4(_dat__32_)
	add	$17, $17, $16
# was:	add	_arr_end__34_, _arr_end__34_, _dat__32_
_write_loop_beg_35_:
	beq	$16, $17, _write_loop_end_36_
# was:	beq	_dat__32_, _arr_end__34_, _write_loop_end_36_
	lb	$2, 0($16)
# was:	lb	2, 0(_dat__32_)
	jal	writeChar
# was:	jal	writeChar, 2
	addi	$16, $16, 1
# was:	addi	_dat__32_, _dat__32_, 1
	j	_write_loop_beg_35_
_write_loop_end_36_:
	j	_endif__31_
_else__30_:
	la	$16, fail__s_38_
# was:	la	_dat__37_, fail__s_38_
# fail__s_38_: string "fail"
	lw	$17, 0($16)
# was:	lw	_arr_end__39_, 0(_dat__37_)
	lw	$16, 4($16)
# was:	lw	_dat__37_, 4(_dat__37_)
	add	$17, $17, $16
# was:	add	_arr_end__39_, _arr_end__39_, _dat__37_
_write_loop_beg_40_:
	beq	$16, $17, _write_loop_end_41_
# was:	beq	_dat__37_, _arr_end__39_, _write_loop_end_41_
	lb	$2, 0($16)
# was:	lb	2, 0(_dat__37_)
	jal	writeChar
# was:	jal	writeChar, 2
	addi	$16, $16, 1
# was:	addi	_dat__37_, _dat__37_, 1
	j	_write_loop_beg_40_
_write_loop_end_41_:
_endif__31_:
main_exit:
	lw	$17, 4($29)
	lw	$16, 0($29)
	addi	$29, $29, 12
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
fail__s_38_:
	.space	8
	.ascii	"fail"
	.align	2
detvirk_33_:
	.space	8
	.ascii	"det virker jo"
	.align	2
_heap_:
	.space	100000
