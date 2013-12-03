	.text	0x00400000
	.globl	main
	la	$28, _heap_
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function fib
fib:
	sw	$31, -4($29)
	addi	$29, $29, -12
	sw	$17, 4($29)
	sw	$16, 0($29)
	ori	$16, $2, 0
# was:	ori	n_arg__1_, 2, 0
# 	ori	less1__5_,n_arg__1_,0
	ori	$2, $0, 2
# was:	ori	less2__6_, 0, 2
	slt	$2, $16, $2
# was:	slt	_if__2_, less1__5_, less2__6_
	beq	$2, $0, _else__3_
# was:	beq	_if__2_, 0, _else__3_
	ori	$2, $0, 1
# was:	ori	_return__7_, 0, 1
# 	ori	2,_return__7_,0
	j	fib_exit
	j	_endif__4_
_else__3_:
# 	ori	minus1__11_,n_arg__1_,0
	ori	$2, $0, 1
# was:	ori	minus2__12_, 0, 1
	sub	$2, $16, $2
# was:	sub	_funarg__10_, minus1__11_, minus2__12_
# 	ori	2,_funarg__10_,0
	jal	fib
# was:	jal	fib, 2
	ori	$17, $2, 0
# was:	ori	plus1__9_, 2, 0
# 	ori	minus1__15_,n_arg__1_,0
	ori	$2, $0, 2
# was:	ori	minus2__16_, 0, 2
	sub	$2, $16, $2
# was:	sub	_funarg__14_, minus1__15_, minus2__16_
# 	ori	2,_funarg__14_,0
	jal	fib
# was:	jal	fib, 2
# 	ori	plus2__13_,2,0
	add	$2, $17, $2
# was:	add	_return__8_, plus1__9_, plus2__13_
# 	ori	2,_return__8_,0
	j	fib_exit
_endif__4_:
fib_exit:
	lw	$17, 4($29)
	lw	$16, 0($29)
	addi	$29, $29, 12
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	addi	$29, $29, -8
	sw	$16, 0($29)
	jal	readInt
# was:	jal	readInt, 2
# 	ori	_assign__18_,2,0
	ori	$16, $2, 0
# was:	ori	n_local__17_, _assign__18_, 0
	ori	$2, $16, 0
# was:	ori	_dat__19_, n_local__17_, 0
# 	ori	2,_dat__19_,0
	jal	writeInt
# was:	jal	writeInt, 2
	ori	$2, $0, 10
# was:	ori	_dat__20_, 0, 10
# 	ori	2,_dat__20_,0
	jal	writeChar
# was:	jal	writeChar, 2
	ori	$2, $16, 0
# was:	ori	_funarg__22_, n_local__17_, 0
# 	ori	2,_funarg__22_,0
	jal	fib
# was:	jal	fib, 2
# 	ori	_dat__21_,2,0
# 	ori	2,_dat__21_,0
	jal	writeInt
# was:	jal	writeInt, 2
	ori	$2, $0, 10
# was:	ori	_dat__23_, 0, 10
# 	ori	2,_dat__23_,0
	jal	writeChar
# was:	jal	writeChar, 2
main_exit:
	lw	$16, 0($29)
	addi	$29, $29, 8
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
