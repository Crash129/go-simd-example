//go:build !noasm && darwin && arm64
// AUTO-GENERATED BY GOCC -- DO NOT EDIT

TEXT ·arm_add(SB), $0-32
	MOVD a+0(FP), R0
	MOVD b+8(FP), R1
	MOVD c+16(FP), R2
	MOVD size+24(FP), R3
	WORD $0xa9bf7bfd     // stp	x29, x30, [sp, #-16]!
	WORD $0x910003fd     // mov	x29, sp
	WORD $0xb4000123     // cbz	x3, LBB0_3
	WORD $0xd2800008     // mov	x8, #0

BB0_2:
	WORD $0x3cc10400 // ldr	q0, [x0], #16
	WORD $0x3cc10421 // ldr	q1, [x1], #16
	WORD $0x4e20d420 // fadd.4s	v0, v1, v0
	WORD $0x3c810440 // str	q0, [x2], #16
	WORD $0x91001108 // add	x8, x8, #4
	WORD $0xeb03011f // cmp	x8, x3
	WORD $0x54ffff43 // b.lo	LBB0_2

BB0_3:
	WORD $0xa8c17bfd // ldp	x29, x30, [sp], #16
	WORD $0xd65f03c0 // ret
