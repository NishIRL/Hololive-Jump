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
	.file	"game3.c"
	.text
	.align	2
	.global	initializePlayer3
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializePlayer3, %function
initializePlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	lr, #108
	mov	r0, #30
	mov	r1, #3
	mov	r2, #0
	mov	r8, #16
	mov	r7, #32
	mov	r6, #117760
	mov	r5, #1
	mov	r4, #4
	mov	ip, #352
	ldr	r3, .L4
	str	lr, [r3, #44]
	ldr	lr, .L4+4
	str	r0, [r3, #4]
	str	r1, [lr]
	str	r0, [r3, #48]
	str	r1, [r3, #12]
	ldr	r0, .L4+8
	ldr	r1, .L4+12
	str	r8, [r3, #16]
	str	r7, [r3, #20]
	str	r6, [r3]
	str	r5, [r3, #8]
	str	r4, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r0]
	str	ip, [r1]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	livesRemaining
	.word	hOff
	.word	vOff
	.size	initializePlayer3, .-initializePlayer3
	.align	2
	.global	initializeSpikes3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeSpikes3, %function
initializeSpikes3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L12
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	ip, #0
	mov	r1, r3
	mov	r2, r3
	mov	r4, #16
	mov	lr, #32
	add	r0, r3, #180
.L7:
	str	ip, [r2, #32]
	str	r4, [r2, #20]
	str	lr, [r2, #16]
	add	r2, r2, #36
	cmp	r2, r0
	bne	.L7
	mov	r2, #2
	mov	lr, #50
	mov	r6, #150
	mov	r5, #120
	mvn	r4, #1
	mov	r9, #45
	mov	r8, #145
	mov	r7, #380
	str	ip, [r1, #8]
	str	ip, [r1, #44]
	str	ip, [r1, #80]
	str	ip, [r1, #116]
	str	ip, [r1, #152]
	str	r2, [r1, #12]
	ldr	ip, .L12+4
	str	r2, [r1, #48]
	str	r2, [r1, #156]
	ldr	r2, .L12+8
	str	lr, [r1, #4]
	str	lr, [r1, #76]
	str	lr, [r1, #148]
	str	r5, [r1, #112]
	add	lr, lr, #400
	add	r5, r5, r6
	str	lr, [r1, #144]
	str	r9, [r1]
	ldr	lr, [ip]
	str	r8, [r1, #36]
	str	r7, [r1, #108]
	str	r6, [r1, #40]
	str	r4, [r1, #84]
	str	r4, [r1, #120]
	str	r5, [r1, #72]
	ldr	ip, [r2]
.L8:
	ldm	r3, {r1, r2}
	sub	r1, r1, lr
	sub	r2, r2, ip
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	add	r3, r3, #36
	cmp	r3, r0
	bne	.L8
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	spikes
	.word	vOff
	.word	hOff
	.size	initializeSpikes3, .-initializeSpikes3
	.align	2
	.global	initializePotatoes3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializePotatoes3, %function
initializePotatoes3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	ip, #420
	mov	lr, #50
	mov	r7, #175
	mov	r6, #55
	ldr	r2, .L18
	mov	r1, #16
	mov	r5, #165
	mov	r4, #190
	mov	r0, #0
	mov	r3, r2
	str	lr, [r2, #68]
	str	ip, [r2, #64]
	ldr	lr, .L18+4
	ldr	ip, .L18+8
	stm	r2, {r6, r7}
	str	r5, [r2, #36]
	str	r4, [r2, #32]
	str	r1, [r2, #12]
	str	r1, [r2, #8]
	str	r1, [r2, #44]
	str	r1, [r2, #40]
	str	r1, [r2, #76]
	str	r1, [r2, #72]
	ldr	lr, [lr]
	ldr	ip, [ip]
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	str	r0, [r2, #56]
	str	r0, [r2, #60]
	str	r0, [r2, #88]
	str	r0, [r2, #92]
	add	r0, r2, #96
.L15:
	ldm	r3, {r1, r2}
	sub	r1, r1, lr
	sub	r2, r2, ip
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	add	r3, r3, #32
	cmp	r0, r3
	bne	.L15
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	potatoes
	.word	vOff
	.word	hOff
	.size	initializePotatoes3, .-initializePotatoes3
	.align	2
	.global	initializeGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame3, %function
initializeGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	lr, #108
	mov	r0, #30
	mov	r1, #3
	mov	r2, #0
	mov	r8, #16
	mov	r7, #32
	mov	r6, #117760
	mov	r5, #1
	mov	r4, #4
	mov	ip, #352
	ldr	r3, .L22
	str	lr, [r3, #44]
	ldr	lr, .L22+4
	str	r0, [r3, #4]
	str	r1, [lr]
	str	r0, [r3, #48]
	str	r1, [r3, #12]
	ldr	r0, .L22+8
	ldr	r1, .L22+12
	str	r8, [r3, #16]
	str	r7, [r3, #20]
	str	r6, [r3]
	str	r5, [r3, #8]
	str	r4, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r0]
	str	ip, [r1]
	bl	initializeSpikes3
	pop	{r4, r5, r6, r7, r8, lr}
	b	initializePotatoes3
.L23:
	.align	2
.L22:
	.word	player
	.word	livesRemaining
	.word	hOff
	.word	vOff
	.size	initializeGame3, .-initializeGame3
	.align	2
	.global	updatePotatoes3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePotatoes3, %function
updatePotatoes3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L33
	ldr	r9, .L33+4
	ldr	r8, .L33+8
	ldr	r5, .L33+12
	ldr	r7, .L33+16
	ldr	r10, .L33+20
	ldr	fp, .L33+24
	sub	sp, sp, #28
	add	r6, r4, #96
.L26:
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #12]
	add	r2, r3, r2
	sub	r2, r2, #1
	cmp	r2, #238
	movhi	r2, #0
	movls	r2, #1
	ldr	r0, [r4]
	ldr	r1, [r9]
	ldr	ip, [r4, #4]
	sub	r1, r0, r1
	ldr	r0, [r8]
	sub	r0, ip, r0
	ldr	ip, [r5, #20]
	str	ip, [sp, #12]
	ldr	ip, [r5, #16]
	str	ip, [sp, #8]
	ldr	ip, [r5, #44]
	str	ip, [sp, #4]
	ldr	ip, [r5, #48]
	str	r2, [r4, #24]
	str	ip, [sp]
	ldr	r2, [r4, #8]
	str	r1, [r4, #16]
	str	r0, [r4, #20]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L25
	ldr	r2, [r4, #28]
	cmp	r2, #0
	beq	.L32
.L25:
	add	r4, r4, #32
	cmp	r4, r6
	bne	.L26
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L32:
	str	r2, [r4, #24]
	str	r2, [sp, #20]
	mov	r2, #1
	ldr	r3, [r10]
	add	r3, r3, #1
	str	r2, [r4, #28]
	str	r3, [r10]
	ldr	r3, .L33+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+32
	mov	r0, fp
	ldr	r1, [r3]
	ldr	r2, [sp, #20]
	ldr	r3, .L33+36
	mov	lr, pc
	bx	r3
	b	.L25
.L34:
	.align	2
.L33:
	.word	potatoes
	.word	vOff
	.word	hOff
	.word	player
	.word	collision
	.word	playerScore3
	.word	koroneXPotato_data
	.word	stopSoundB
	.word	koroneXPotato_length
	.word	playSoundB
	.size	updatePotatoes3, .-updatePotatoes3
	.align	2
	.global	drawPlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer3, %function
drawPlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L36
	ldr	r3, [r1, #48]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	ip, [r1, #36]
	ldr	r2, [r1, #28]
	ldr	r0, .L36+4
	ldrb	r1, [r1, #44]	@ zero_extendqisi2
	add	r2, r2, ip, lsl #5
	lsl	r2, r2, #2
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	bx	lr
.L37:
	.align	2
.L36:
	.word	player
	.word	shadowOAM
	.size	drawPlayer3, .-drawPlayer3
	.align	2
	.global	drawSpikes3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSpikes3, %function
drawSpikes3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #8704
	ldr	r3, .L46
	ldr	r2, .L46+4
	ldr	r4, .L46+8
	ldr	lr, .L46+12
	add	r0, r3, #180
.L40:
	ldr	r1, [r3, #32]
	cmp	r1, #0
	beq	.L39
	ldr	r1, [r3, #28]
	ldrb	ip, [r3, #24]	@ zero_extendqisi2
	and	r1, r1, r4
	orr	r1, r1, lr
	strh	r5, [r2, #12]	@ movhi
	strh	r1, [r2, #10]	@ movhi
	strh	ip, [r2, #8]	@ movhi
.L39:
	add	r3, r3, #36
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L40
	pop	{r4, r5, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	spikes
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawSpikes3, .-drawSpikes3
	.align	2
	.global	drawLives3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives3, %function
drawLives3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #16384
	push	{r4, r5, lr}
	mov	r0, #141
	mov	lr, #140
	ldr	r3, .L53
	ldr	r2, .L53+4
	ldr	r4, [r3]
	ldr	r3, .L53+8
	strh	r1, [r3, #50]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	add	r1, r1, #8
	sub	r2, r2, #6
	strh	r1, [r3, #58]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	add	r1, r1, #7
	add	r2, r2, #58
	strh	r1, [r3, #66]	@ movhi
	strh	r2, [r3, #68]	@ movhi
	add	r1, r1, #7
	sub	r2, r2, #66
	strh	r1, [r3, #74]	@ movhi
	strh	r2, [r3, #76]	@ movhi
	add	r1, r1, #7
	add	r2, r2, #60
	cmp	r4, #0
	strh	lr, [r3, #48]	@ movhi
	strh	lr, [r3, #56]	@ movhi
	strh	lr, [r3, #64]	@ movhi
	strh	lr, [r3, #72]	@ movhi
	strh	r0, [r3, #80]	@ movhi
	strh	r1, [r3, #82]	@ movhi
	strh	r2, [r3, #84]	@ movhi
	ble	.L48
	mov	r2, #45
	mov	r1, #0
	ldr	r5, .L53+12
.L50:
	add	r1, r1, #1
	add	ip, r2, #15
	orr	r0, r2, #16384
	cmp	r1, r4
	lsl	r2, ip, #16
	strh	lr, [r3, #88]	@ movhi
	strh	r5, [r3, #92]	@ movhi
	strh	r0, [r3, #90]	@ movhi
	lsr	r2, r2, #16
	add	r3, r3, #8
	bne	.L50
.L48:
	pop	{r4, r5, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	livesRemaining
	.word	17046
	.word	shadowOAM
	.word	12808
	.size	drawLives3, .-drawLives3
	.align	2
	.global	drawPotatoes3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPotatoes3, %function
drawPotatoes3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #512
	ldr	r3, .L67
	ldr	r2, .L67+4
	ldr	r4, .L67+8
	ldr	lr, .L67+12
	add	r0, r3, #24
.L58:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	beq	.L56
	ldr	r1, [r2, #20]
	ldrb	ip, [r2, #16]	@ zero_extendqisi2
	and	r1, r1, r4
	orr	r1, r1, #16384
	strh	lr, [r3, #116]	@ movhi
	strh	r1, [r3, #114]	@ movhi
	strh	ip, [r3, #112]	@ movhi
.L56:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	strhne	r5, [r3, #112]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L58
	pop	{r4, r5, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	shadowOAM
	.word	potatoes
	.word	511
	.word	4612
	.size	drawPotatoes3, .-drawPotatoes3
	.align	2
	.global	drawGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame3, %function
drawGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #8704
	push	{r4, r5, r6, lr}
	ldr	r5, .L77
	ldr	r6, .L77+4
	ldr	r3, [r5, #48]
	ldr	r1, .L77+8
	and	r3, r3, r6
	ldr	r0, .L77+12
	orr	r3, r3, r1
	mov	r4, r6
	mov	lr, r1
	ldr	r6, [r5, #36]
	ldr	r1, [r5, #28]
	ldrb	r5, [r5, #44]	@ zero_extendqisi2
	add	r1, r1, r6, lsl #5
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L77+16
	lsl	r1, r1, #2
	mov	r2, r0
	strh	r5, [r0]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	add	r0, r3, #180
.L71:
	ldr	r1, [r3, #32]
	cmp	r1, #0
	beq	.L70
	ldr	r1, [r3, #28]
	ldrb	r5, [r3, #24]	@ zero_extendqisi2
	and	r1, r1, r4
	orr	r1, r1, lr
	strh	ip, [r2, #12]	@ movhi
	strh	r1, [r2, #10]	@ movhi
	strh	r5, [r2, #8]	@ movhi
.L70:
	add	r3, r3, #36
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L71
	bl	drawPotatoes3
	bl	drawLives3
	mov	r1, #67108864
	ldr	r3, .L77+20
	ldr	r3, [r3]
	asr	r2, r3, #1
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #18]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r1, #22]	@ movhi
	bx	lr
.L78:
	.align	2
.L77:
	.word	player
	.word	511
	.word	-32768
	.word	shadowOAM
	.word	spikes
	.word	vOff
	.size	drawGame3, .-drawGame3
	.align	2
	.global	groundCollision3
	.syntax unified
	.arm
	.fpu softvfp
	.type	groundCollision3, %function
groundCollision3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L83
	ldr	r3, [r3]
	ldr	ip, .L83+4
	ldr	r1, .L83+8
	ldr	r2, .L83+12
	rsbs	r0, r3, #0
	and	r0, r0, r1
	ldr	r2, [r2]
	and	r1, r1, r3
	str	lr, [sp, #-4]!
	ldr	r3, [ip, #44]
	ldr	lr, [ip, #20]
	rsbpl	r1, r0, #0
	add	r3, r3, lr
	ldr	r0, [ip, #48]
	rsbs	lr, r2, #0
	and	lr, lr, #255
	and	r2, r2, #255
	add	r0, r0, #8
	rsbpl	r2, lr, #0
	sub	r3, r3, #1
	add	r2, r0, r2
	add	r3, r3, r1
	ldr	r0, .L83+16
	add	r1, r2, r3, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	moveq	r0, #1
	beq	.L79
	ldr	r1, [ip, #16]
	lsl	r3, r3, #8
	add	r3, r3, r1
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldrh	r0, [r0, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
.L79:
	ldr	lr, [sp], #4
	bx	lr
.L84:
	.align	2
.L83:
	.word	vOff
	.word	player
	.word	511
	.word	hOff
	.word	level3CollisionMapBitmap
	.size	groundCollision3, .-groundCollision3
	.align	2
	.global	restartLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	restartLevel3, %function
restartLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	mov	lr, #352
	mov	r2, #30
	mov	ip, #1
	mov	r0, #98
	ldr	r1, .L87
	ldr	r3, [r1]
	sub	r3, r3, #1
	str	r3, [r1]
	ldr	r3, .L87+4
	str	r4, [r3]
	ldr	r3, .L87+8
	ldr	r1, .L87+12
	str	lr, [r3]
	ldr	r3, .L87+16
	str	r2, [r3, #4]
	str	r2, [r3, #48]
	str	r1, [r3]
	str	ip, [r3, #8]
	str	r0, [r3, #44]
	bl	initializeSpikes3
	bl	initializePotatoes3
	ldr	r2, .L87+20
	ldr	r3, .L87+24
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	livesRemaining
	.word	hOff
	.word	vOff
	.word	115200
	.word	player
	.word	playerScore3
	.word	hideSprites
	.size	restartLevel3, .-restartLevel3
	.align	2
	.global	updateSpikes3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpikes3, %function
updateSpikes3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L106
	ldr	r9, .L106+4
	ldr	r8, .L106+8
	ldr	r5, .L106+12
	ldr	r7, .L106+16
	ldr	r10, .L106+20
	ldr	fp, .L106+24
	sub	sp, sp, #28
	add	r6, r4, #180
.L95:
	ldr	ip, [r4]
	ldr	r2, [r4, #8]
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #12]
	add	ip, r2, ip
	add	r0, r1, r0
	cmp	ip, #0
	str	ip, [r4]
	str	r0, [r4, #4]
	ldr	r3, [r4, #20]
	ble	.L90
	add	lr, ip, r3
	cmp	lr, #512
	blt	.L91
.L90:
	rsb	r2, r2, #0
	str	r2, [r4, #8]
.L91:
	cmp	r0, #24
	ldr	r2, [r4, #16]
	ble	.L92
	add	lr, r0, r2
	cmp	lr, #215
	ble	.L93
.L92:
	rsb	r1, r1, #0
	str	r1, [r4, #12]
.L93:
	ldr	r1, [r9]
	sub	ip, ip, r1
	add	lr, ip, r3
	sub	lr, lr, #1
	cmp	lr, #238
	movhi	lr, #0
	movls	lr, #1
	ldr	r1, [r8]
	sub	r0, r0, r1
	ldr	r1, [r5, #20]
	str	r1, [sp, #12]
	ldr	r1, [r5, #16]
	str	r1, [sp, #8]
	ldr	r1, [r5, #44]
	str	r1, [sp, #4]
	ldr	r1, [r5, #48]
	str	r1, [sp]
	add	r1, ip, #8
	str	ip, [r4, #24]
	str	lr, [r4, #32]
	str	r0, [r4, #28]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L94
	ldr	r2, [r10]
	cmp	r2, #0
	beq	.L105
.L94:
	add	r4, r4, #36
	cmp	r4, r6
	bne	.L95
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L105:
	ldr	r3, .L106+28
	str	r2, [sp, #20]
	mov	lr, pc
	bx	r3
	ldr	r3, .L106+32
	mov	r0, fp
	ldr	r1, [r3]
	ldr	r2, [sp, #20]
	ldr	r3, .L106+36
	mov	lr, pc
	bx	r3
	bl	restartLevel3
	b	.L94
.L107:
	.align	2
.L106:
	.word	spikes
	.word	vOff
	.word	hOff
	.word	player
	.word	collision
	.word	cheatIsActivated
	.word	koroneOw_data
	.word	stopSoundB
	.word	koroneOw_length
	.word	playSoundB
	.size	updateSpikes3, .-updateSpikes3
	.align	2
	.global	level3WinCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	level3WinCollision, %function
level3WinCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L112
	ldr	r3, [r3]
	ldr	ip, .L112+4
	ldr	r1, .L112+8
	ldr	r2, .L112+12
	rsbs	r0, r3, #0
	and	r0, r0, r1
	ldr	r2, [r2]
	and	r1, r1, r3
	str	lr, [sp, #-4]!
	ldr	r3, [ip, #44]
	ldr	lr, [ip, #20]
	rsbpl	r1, r0, #0
	add	r3, r3, lr
	ldr	r0, [ip, #48]
	rsbs	lr, r2, #0
	and	lr, lr, #255
	and	r2, r2, #255
	add	r0, r0, #8
	rsbpl	r2, lr, #0
	sub	r3, r3, #1
	add	r2, r0, r2
	add	r3, r3, r1
	ldr	r0, .L112+16
	add	r1, r2, r3, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #992
	moveq	r0, #1
	beq	.L108
	ldr	r1, [ip, #16]
	lsl	r3, r3, #8
	add	r3, r3, r1
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldrh	r0, [r0, r3]
	sub	r3, r0, #992
	rsbs	r0, r3, #0
	adc	r0, r0, r3
.L108:
	ldr	lr, [sp], #4
	bx	lr
.L113:
	.align	2
.L112:
	.word	vOff
	.word	player
	.word	511
	.word	hOff
	.word	level3CollisionMapBitmap
	.size	level3WinCollision, .-level3WinCollision
	.align	2
	.global	leftCollision3
	.syntax unified
	.arm
	.fpu softvfp
	.type	leftCollision3, %function
leftCollision3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	lr, .L122
	ldr	r0, [lr, #20]
	cmp	r0, #3
	ble	.L117
	mov	r2, #0
	ldr	r3, .L122+4
	ldr	r1, .L122+8
	ldr	r3, [r3]
	ldr	r4, .L122+12
	subs	ip, r2, r3
	ldr	r1, [r1]
	and	ip, ip, r4
	and	r3, r3, r4
	rsbpl	r3, ip, #0
	ldr	r4, [lr, #48]
	ldr	ip, [lr, #44]
	subs	lr, r2, r1
	and	lr, lr, #255
	and	r1, r1, #255
	rsbpl	r1, lr, #0
	add	ip, r3, ip
	add	r1, r1, r4
	ldr	r3, .L122+16
	add	r1, r1, ip, lsl #8
	sub	r0, r0, #3
	add	r3, r3, r1, lsl #1
	b	.L116
.L121:
	cmp	r2, r0
	add	r3, r3, #512
	beq	.L117
.L116:
	ldrh	r1, [r3, #14]
	cmp	r1, #0
	add	r2, r2, #1
	bne	.L121
	mov	r0, #1
	pop	{r4, lr}
	bx	lr
.L117:
	mov	r0, #0
	pop	{r4, lr}
	bx	lr
.L123:
	.align	2
.L122:
	.word	player
	.word	vOff
	.word	hOff
	.word	511
	.word	level3CollisionMapBitmap
	.size	leftCollision3, .-leftCollision3
	.align	2
	.global	rightCollision3
	.syntax unified
	.arm
	.fpu softvfp
	.type	rightCollision3, %function
rightCollision3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	lr, .L132
	ldr	r0, [lr, #20]
	cmp	r0, #3
	ble	.L127
	mov	r2, #0
	ldr	r1, .L132+4
	ldr	ip, [r1]
	ldr	r3, .L132+8
	subs	r4, r2, ip
	ldr	r1, [r3]
	and	r4, r4, #255
	and	r3, ip, #255
	rsbpl	r3, r4, #0
	ldr	r4, .L132+12
	ldr	ip, [lr, #48]
	ldr	r6, [lr, #16]
	ldr	r5, [lr, #44]
	subs	lr, r2, r1
	and	lr, lr, r4
	and	r1, r1, r4
	add	ip, ip, r6
	rsbpl	r1, lr, #0
	add	ip, ip, r3
	add	r1, r1, r5
	ldr	r3, .L132+16
	add	r1, ip, r1, lsl #8
	sub	r0, r0, #3
	add	r3, r3, r1, lsl #1
	b	.L126
.L131:
	cmp	r2, r0
	add	r3, r3, #512
	beq	.L127
.L126:
	ldrh	r1, [r3, #16]
	cmp	r1, #0
	add	r2, r2, #1
	bne	.L131
	mov	r0, #1
	pop	{r4, r5, r6, lr}
	bx	lr
.L127:
	mov	r0, #0
	pop	{r4, r5, r6, lr}
	bx	lr
.L133:
	.align	2
.L132:
	.word	player
	.word	hOff
	.word	vOff
	.word	511
	.word	level3CollisionMapBitmap
	.size	rightCollision3, .-rightCollision3
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer3, %function
animatePlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L163
	ldr	r3, [r4, #28]
	cmp	r3, #4
	movne	r2, #4
	ldr	r5, [r4, #24]
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	tst	r5, #7
	bne	.L136
	ldr	r0, [r4, #36]
	ldr	r3, .L163+4
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L136:
	ldr	r3, .L163+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L137
	ldr	r3, [r4, #4]
	cmp	r3, #19
	bgt	.L162
.L137:
	ldr	r3, .L163+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L138
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	cmp	r3, #207
	bgt	.L138
	bl	rightCollision3
	cmp	r0, #0
	bne	.L138
	mov	r3, #1
	str	r3, [r4, #28]
	bl	groundCollision3
	cmp	r0, #0
	bne	.L139
.L144:
	mov	r3, #3
	str	r3, [r4, #28]
	bl	groundCollision3
	cmp	r0, #0
	beq	.L139
.L140:
	mov	r3, #1
	str	r3, [r4, #28]
	b	.L139
.L138:
	bl	groundCollision3
	cmp	r0, #0
	ldr	r3, [r4, #28]
	bne	.L141
	cmp	r3, #0
	bne	.L142
	mov	r3, #2
	str	r3, [r4, #28]
	bl	groundCollision3
	cmp	r0, #0
	bne	.L143
.L139:
	add	r5, r5, #1
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L141:
	cmp	r3, #2
	beq	.L143
	cmp	r3, #3
	beq	.L140
.L145:
	cmp	r3, #4
	bne	.L139
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L162:
	bl	leftCollision3
	cmp	r0, #0
	streq	r0, [r4, #28]
	b	.L137
.L142:
	cmp	r3, #1
	bne	.L145
	b	.L144
.L143:
	mov	r3, #0
	str	r3, [r4, #28]
	b	.L139
.L164:
	.align	2
.L163:
	.word	player
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer3, .-animatePlayer3
	.align	2
	.global	springCollision3
	.syntax unified
	.arm
	.fpu softvfp
	.type	springCollision3, %function
springCollision3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L169
	ldr	r3, [r3]
	ldr	ip, .L169+4
	ldr	r1, .L169+8
	ldr	r2, .L169+12
	rsbs	r0, r3, #0
	and	r0, r0, r1
	ldr	r2, [r2]
	and	r1, r1, r3
	str	lr, [sp, #-4]!
	ldr	r3, [ip, #44]
	ldr	lr, [ip, #20]
	rsbpl	r1, r0, #0
	add	r3, r3, lr
	ldr	r0, [ip, #48]
	rsbs	lr, r2, #0
	and	lr, lr, #255
	and	r2, r2, #255
	add	r0, r0, #8
	rsbpl	r2, lr, #0
	sub	r3, r3, #1
	add	r2, r0, r2
	add	r3, r3, r1
	ldr	r0, .L169+16
	add	r1, r2, r3, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #31
	moveq	r0, #1
	beq	.L165
	ldr	r1, [ip, #16]
	lsl	r3, r3, #8
	add	r3, r3, r1
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldrh	r0, [r0, r3]
	sub	r3, r0, #31
	rsbs	r0, r3, #0
	adc	r0, r0, r3
.L165:
	ldr	lr, [sp], #4
	bx	lr
.L170:
	.align	2
.L169:
	.word	vOff
	.word	player
	.word	511
	.word	hOff
	.word	level3CollisionMapBitmap
	.size	springCollision3, .-springCollision3
	.global	__aeabi_i2d
	.global	__aeabi_dsub
	.global	__aeabi_d2iz
	.align	2
	.global	updatePlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer3, %function
updatePlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L198
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, r5, r6, lr}
	ldr	r4, .L198+4
	bne	.L172
	ldr	r5, [r4, #4]
	cmp	r5, #16
	bgt	.L193
.L172:
	ldr	r3, .L198
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L173
	ldr	r5, [r4, #4]
	ldr	r3, [r4, #16]
	add	r3, r5, r3
	cmp	r3, #207
	ble	.L194
.L173:
	bl	groundCollision3
	cmp	r0, #0
	movne	r3, #0
	movne	r6, r3
	strne	r3, [r4, #8]
	ldr	r3, .L198+8
	ldr	r5, [r4]
	ldreq	r6, [r4, #8]
	ldrh	r3, [r3]
	addeq	r5, r5, r6
	streq	r5, [r4]
	tst	r3, #64
	beq	.L176
	ldr	r3, .L198+12
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L195
.L176:
	bl	springCollision3
	cmp	r0, #0
	bne	.L196
.L177:
	ldr	r2, .L198+16
	cmp	r6, #800
	ldr	r3, [r2]
	addle	r6, r6, #100
	strle	r6, [r4, #8]
	cmp	r3, #0
	ble	.L179
	ldr	r1, [r4, #44]
	cmp	r1, #40
	suble	r3, r3, #1
	strle	r3, [r2]
.L179:
	ldr	r2, .L198+20
	ldr	r1, [r4, #20]
	ldr	r0, [r2]
	ldr	r2, [r4, #4]
	add	r1, r1, r5, asr #8
	sub	r2, r2, r0
	add	r0, r3, #159
	cmp	r0, r1
	rsb	r3, r3, r5, asr #8
	str	r2, [r4, #48]
	str	r3, [r4, #44]
	blt	.L197
	pop	{r4, r5, r6, lr}
	bx	lr
.L195:
	bl	groundCollision3
	cmp	r0, #0
	subne	r6, r6, #1488
	subne	r6, r6, #12
	addne	r5, r5, r6
	strne	r5, [r4]
	strne	r6, [r4, #8]
	bl	springCollision3
	cmp	r0, #0
	beq	.L177
.L196:
	mov	r0, r6
	ldr	r3, .L198+24
	mov	lr, pc
	bx	r3
	ldr	r6, .L198+28
	mov	r2, #0
	ldr	r3, .L198+32
	mov	lr, pc
	bx	r6
	ldr	r3, .L198+36
	mov	lr, pc
	bx	r3
	ldr	r2, .L198+40
	add	r3, r0, r5
	str	r3, [r4]
	str	r0, [r4, #8]
	mov	lr, pc
	bx	r2
	ldr	r3, .L198+44
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L198+48
	ldr	r3, .L198+52
	mov	lr, pc
	bx	r3
	ldr	r6, [r4, #8]
	ldr	r5, [r4]
	b	.L177
.L194:
	bl	rightCollision3
	cmp	r0, #0
	ldreq	r3, [r4, #12]
	addeq	r5, r3, r5
	streq	r5, [r4, #4]
	b	.L173
.L193:
	bl	leftCollision3
	cmp	r0, #0
	ldreq	r3, [r4, #12]
	subeq	r5, r5, r3
	streq	r5, [r4, #4]
	b	.L172
.L197:
	ldr	r3, .L198+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L198+56
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L198+60
	ldr	r3, .L198+52
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	restartLevel3
.L199:
	.align	2
.L198:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
	.word	vOff
	.word	hOff
	.word	__aeabi_i2d
	.word	__aeabi_dsub
	.word	1083743232
	.word	__aeabi_d2iz
	.word	stopSoundB
	.word	koroneWoo_length
	.word	koroneWoo_data
	.word	playSoundB
	.word	koroneOw_length
	.word	koroneOw_data
	.size	updatePlayer3, .-updatePlayer3
	.align	2
	.global	updateGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame3, %function
updateGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer3
	bl	updateSpikes3
	bl	updatePotatoes3
	pop	{r4, lr}
	b	animatePlayer3
	.size	updateGame3, .-updateGame3
	.align	2
	.global	springJump3
	.syntax unified
	.arm
	.fpu softvfp
	.type	springJump3, %function
springJump3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L204
	ldr	r3, .L204+4
	ldr	r0, [r4, #8]
	mov	lr, pc
	bx	r3
	ldr	r5, .L204+8
	mov	r2, #0
	ldr	r3, .L204+12
	mov	lr, pc
	bx	r5
	ldr	r3, .L204+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	add	r3, r3, r0
	str	r0, [r4, #8]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L205:
	.align	2
.L204:
	.word	player
	.word	__aeabi_i2d
	.word	__aeabi_dsub
	.word	1083743232
	.word	__aeabi_d2iz
	.size	springJump3, .-springJump3
	.comm	cheatIsActivated,4,4
	.comm	livesRemaining,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	potatoes,160,4
	.comm	spikes,180,4
	.comm	player,52,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
