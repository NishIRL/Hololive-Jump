	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"mainMenu.c"
	.text
	.align	2
	.global	updateMenu
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMenu, %function
updateMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L82
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L82+4
	ldr	r4, .L82+8
	ldr	r2, [r2]
	ldrh	lr, [r3]
	ldr	ip, .L82+12
	ldrh	r3, [r4]
	cmp	r2, #1
	mvn	r1, r3
	mvn	r5, lr
	ldr	r3, [ip]
	beq	.L79
.L2:
	ldr	r2, .L82+16
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L80
.L7:
	ldr	r0, .L82+20
	ldr	r0, [r0]
	cmp	r0, #1
	beq	.L9
.L13:
	sub	r2, r3, #2
	rsbs	r0, r2, #0
	adc	r0, r0, r2
	and	r2, r5, r0
	cmp	r3, #3
	movne	r3, #0
	andeq	r3, r1, #1
	cmp	r2, #0
	beq	.L18
.L32:
	cmp	r3, #0
	movne	r3, #2
	strne	r3, [ip]
.L26:
	tst	lr, #4
	beq	.L1
	ldrh	r3, [r4]
	tst	r3, #4
	moveq	r3, #1
	streq	r3, [ip]
.L1:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L80:
	cmp	r3, #2
	beq	.L8
	ldr	r2, .L82+20
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L9
.L10:
	cmp	r3, #1
	bne	.L13
.L50:
	and	r7, r5, #1
	b	.L20
.L79:
	cmp	r3, #1
	bne	.L2
	ands	r7, r5, #1
	ldr	r2, .L82+16
	beq	.L31
.L4:
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L7
	ldr	r3, .L82+20
	ldr	r2, [r3]
	cmp	r2, #1
	beq	.L50
.L20:
	cmp	r7, #0
	andeq	r6, r1, #1
	beq	.L28
.L21:
	ldr	r0, [ip]
	cmp	r0, #2
	movne	r0, #0
	andeq	r0, r1, #1
	b	.L33
.L8:
	tst	r5, #1
	andeq	r6, r1, #1
	beq	.L5
	ldr	r3, .L82+20
	ldr	r2, [r3]
	cmp	r2, #1
	ldr	r3, [ip]
	bne	.L10
.L9:
	cmp	r3, #3
	beq	.L81
.L15:
	cmp	r2, #1
	bne	.L13
	b	.L10
.L31:
	ands	r6, r1, #1
	ldr	r0, [r2]
	beq	.L4
	mov	r3, #2
	cmp	r0, #1
	str	r3, [ip]
	bne	.L13
.L5:
	ldr	r3, .L82+20
	cmp	r6, #0
	ldr	r2, [r3]
	beq	.L11
	mov	r3, #3
	cmp	r2, #1
	str	r3, [ip]
	bne	.L13
	str	r2, [ip]
.L28:
	cmp	r6, #0
	beq	.L21
	mov	r3, #3
	mov	r2, #1
	str	r3, [ip]
.L22:
	and	r3, r2, r1
	b	.L32
.L30:
	ands	r6, r1, #1
	beq	.L16
	mov	r3, #1
	cmp	r2, r3
	str	r3, [ip]
	beq	.L28
.L18:
	and	r0, r0, r1
.L33:
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [ip]
	bne	.L26
.L24:
	ldr	r2, [ip]
	sub	r3, r2, #3
	rsbs	r2, r3, #0
	adc	r2, r2, r3
	tst	r5, r2
	bne	.L26
	b	.L22
.L81:
	ands	r0, r5, #1
	beq	.L30
.L16:
	ldr	r3, [ip]
	b	.L15
.L11:
	cmp	r2, #1
	ldr	r3, [ip]
	bne	.L10
	b	.L9
.L83:
	.align	2
.L82:
	.word	level2LockState
	.word	oldButtons
	.word	buttons
	.word	currLevel
	.word	level3LockState
	.word	level1LockState
	.size	updateMenu, .-updateMenu
	.align	2
	.global	drawMenu
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMenu, %function
drawMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L93
	ldr	r3, [r3]
	sub	r3, r3, #1
	str	lr, [sp, #-4]!
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L84
.L87:
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L86
.L90:
	mov	r1, #0
	mov	r2, #16
	ldr	r3, .L93+4
	ldr	lr, .L93+8
.L92:
	ldr	ip, .L93+12
	ldr	r0, .L93+16
	strh	r1, [r3, #4]	@ movhi
	ldr	r1, .L93+20
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
.L84:
	ldr	lr, [sp], #4
	bx	lr
.L86:
	mov	r0, #384
	ldr	r3, .L93+4
	ldr	r1, .L93+24
	ldr	r2, .L93+12
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L89:
	mov	r1, #128
	mov	r2, #288
	ldr	r3, .L93+4
	ldr	lr, .L93+28
	b	.L92
.L88:
	mov	r1, #256
	mov	r2, #576
	ldr	r3, .L93+4
	ldr	lr, .L93+32
	b	.L92
.L94:
	.align	2
.L93:
	.word	currLevel
	.word	shadowOAM
	.word	24616
	.word	-16360
	.word	8240
	.word	-16240
	.word	24712
	.word	24648
	.word	24680
	.size	drawMenu, .-drawMenu
	.ident	"GCC: (devkitARM release 53) 9.1.0"
