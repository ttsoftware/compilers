	.text	0x00400000
	.globl	main
	la	$28, _heap_
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function main
main:
	sw	$31, -4($29)
	addi	$29, $29, -4
	ori	$2, $0, 1
# was:	ori	_assign__7_, 0, 1
# 	ori	n_local__6_,_assign__7_,0
	ori	$2, $0, 2
# was:	ori	_assign__8_, 0, 2
# 	ori	m_local__5_,_assign__8_,0
	ori	$3, $0, 3
# was:	ori	_assign__9_, 0, 3
# 	ori	d_local__4_,_assign__9_,0
	ori	$3, $0, 4
# was:	ori	_assign__10_, 0, 4
# 	ori	o_local__3_,_assign__10_,0
	ori	$3, $0, 4
# was:	ori	plus1__13_, 0, 4
# 	ori	plus2__14_,m_local__5_,0
	add	$3, $3, $2
# was:	add	times1__12_, plus1__13_, plus2__14_
	ori	$2, $0, 6100
# was:	ori	times2__15_, 0, 6100
	mul	$2, $3, $2
# was:	mul	_assign__11_, times1__12_, times2__15_
# 	ori	v_local__2_,_assign__11_,0
	ori	$3, $0, 1
# was:	ori	times1__19_, 0, 1
	ori	$2, $0, 3
# was:	ori	times2__20_, 0, 3
	mul	$3, $3, $2
# was:	mul	times1__18_, times1__19_, times2__20_
	ori	$2, $0, 2
# was:	ori	times2__21_, 0, 2
	mul	$2, $3, $2
# was:	mul	plus1__17_, times1__18_, times2__21_
	ori	$3, $0, 1
# was:	ori	plus2__22_, 0, 1
	add	$2, $2, $3
# was:	add	_assign__16_, plus1__17_, plus2__22_
# 	ori	p_local__1_,_assign__16_,0
# 	ori	_dat__23_,p_local__1_,0
# 	ori	2,_dat__23_,0
	jal	writeInt
# was:	jal	writeInt, 2
main_exit:
	addi	$29, $29, 4
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
_heap_:
	.space	100000
