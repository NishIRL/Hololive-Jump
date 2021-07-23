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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #4352
	mov	r5, #67108864
	ldr	r7, .L4
	ldr	r6, .L4+4
	ldr	r4, .L4+8
	mov	r1, r7
	strh	r3, [r5]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #10752
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r1, r7
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+20
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r0, #3
	mov	r3, #10752
	ldr	r2, .L4+24
	mov	lr, pc
	bx	r4
	mov	r2, #5248
	ldr	r3, .L4+28
	strh	r2, [r5, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+36
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+40
	ldr	r3, .L4+44
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L4+48
	ldr	r2, .L4+52
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	startScreenBGPal
	.word	startScreenBGTiles
	.word	DMANow
	.word	100704256
	.word	startScreenBGMap
	.word	83886592
	.word	100728832
	.word	waitForVBlank
	.word	hideSprites
	.word	ShinySmilyStory_length
	.word	ShinySmilyStory_data
	.word	playSoundA
	.word	cheatIsActivated
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L8+8
	ldr	r1, .L8+12
	ldrh	r0, [r3, #48]
	ldr	r3, .L8+16
	pop	{r4, lr}
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	setupInterrupts
	.word	setupSounds
	.word	67109120
	.word	buttons
	.word	oldButtons
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause.part.0, %function
pause.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	pause.part.0, .-pause.part.0
	.set	pause3.part.0,pause.part.0
	.set	pause2.part.0,pause.part.0
	.align	2
	.global	goToControls
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToControls, %function
goToControls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L16+8
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L16+16
	mov	r3, #1024
	ldr	r2, .L16+20
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #5248
	ldr	r3, .L16+24
	strh	r2, [r5, #8]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	ldr	r1, .L16+28
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+32
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #1
	ldr	r2, .L16+36
	strh	r3, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	controlsPal
	.word	12448
	.word	controlsTiles
	.word	controlsMap
	.word	100704256
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	state
	.size	goToControls, .-goToControls
	.align	2
	.global	controls
	.syntax unified
	.arm
	.fpu softvfp
	.type	controls, %function
controls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L25
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L18
	ldr	r3, .L25+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L24
.L18:
	pop	{r4, lr}
	bx	lr
.L24:
	ldr	r3, .L25+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L26:
	.align	2
.L25:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	controls, .-controls
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4864
	mov	r5, #67108864
	mov	r2, #38656
	ldr	r4, .L29
	strh	r3, [r5]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L29+4
	mov	lr, pc
	bx	r4
	mov	r3, #7680
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L29+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L29+12
	ldr	r1, .L29+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L29+20
	mov	r3, #2320
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L29+24
	ldr	r1, .L29+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L29+32
	ldr	r1, .L29+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L29+40
	ldr	r1, .L29+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L29+48
	ldr	r1, .L29+52
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L29+56
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L29+60
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L29+64
	mov	lr, pc
	bx	r3
	mov	r0, #2
	ldr	r3, .L29+68
	ldrh	r2, [r3]
	ldr	r3, .L29+72
	ldr	r1, .L29+76
	ldrh	r3, [r3]
	strh	r2, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	strh	r2, [r5, #22]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	DMANow
	.word	level1BGPal
	.word	level1BGTiles
	.word	100710400
	.word	level1BGMap
	.word	-28668
	.word	100679680
	.word	level1SceneTiles
	.word	100696064
	.word	level1SceneMap
	.word	83886592
	.word	gamespritesheetPal
	.word	100728832
	.word	gamespritesheetTiles
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	vOff
	.word	hOff
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L51
	ldr	r3, .L51+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L32
	ldr	r2, .L51+8
	ldrh	r2, [r2]
	ands	r5, r2, #8
	beq	.L48
.L32:
	tst	r3, #512
	beq	.L33
	tst	r3, #256
	bne	.L49
.L33:
	tst	r3, #4
	beq	.L31
	ldr	r3, .L51+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L50
.L31:
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	ldr	r2, .L51+8
	ldrh	r2, [r2]
	tst	r2, #768
	moveq	r1, #1
	ldreq	r2, .L51+12
	streq	r1, [r2]
	b	.L33
.L50:
	ldr	r3, .L51+16
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToControls
.L48:
	ldr	r3, .L51+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L51+24
	ldr	r3, .L51+28
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+32
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L51+36
	ldr	r3, .L51+40
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L32
.L52:
	.align	2
.L51:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	cheatIsActivated
	.word	pauseSound
	.word	initializeGame
	.word	playerScore
	.word	stopSound
	.word	Fukkireta_length
	.word	Fukkireta_data
	.word	playSoundA
	.size	start, .-start
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4864
	mov	r5, #67108864
	mov	r2, #38656
	ldr	r4, .L55
	strh	r3, [r5]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L55+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L55+8
	ldr	r1, .L55+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L55+16
	ldr	r1, .L55+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L55+24
	mov	r3, #1200
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L55+28
	ldr	r1, .L55+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L55+36
	ldr	r1, .L55+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L55+44
	ldr	r1, .L55+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L55+52
	ldr	r1, .L55+56
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L55+60
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L55+64
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L55+68
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r3, .L55+72
	ldrh	r2, [r3]
	ldr	r3, .L55+76
	ldr	r1, .L55+80
	ldrh	r3, [r3]
	strh	r2, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	strh	r2, [r5, #22]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	DMANow
	.word	level2BGPal
	.word	5744
	.word	level2BGTiles
	.word	100710400
	.word	level2BGMap
	.word	-28668
	.word	100679680
	.word	level2SceneTiles
	.word	100696064
	.word	level2SceneMap
	.word	83886592
	.word	gamespritesheetPal
	.word	100728832
	.word	gamespritesheetTiles
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	vOff
	.word	hOff
	.word	state
	.size	goToGame2, .-goToGame2
	.align	2
	.global	goToGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame3, %function
goToGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4864
	mov	r5, #67108864
	mov	r2, #38656
	ldr	r4, .L59
	strh	r3, [r5]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L59+4
	mov	lr, pc
	bx	r4
	mov	r3, #992
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L59+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L59+12
	ldr	r1, .L59+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L59+20
	mov	r3, #1824
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L59+24
	ldr	r1, .L59+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L59+32
	ldr	r1, .L59+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L59+40
	ldr	r1, .L59+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L59+48
	ldr	r1, .L59+52
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+56
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L59+60
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+64
	mov	lr, pc
	bx	r3
	mov	r0, #4
	ldr	r3, .L59+68
	ldrh	r2, [r3]
	ldr	r3, .L59+72
	ldr	r1, .L59+76
	ldrh	r3, [r3]
	strh	r2, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	strh	r2, [r5, #22]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	DMANow
	.word	level3BGPal
	.word	level3BGTiles
	.word	100710400
	.word	level3BGMap
	.word	-28668
	.word	100679680
	.word	level3SceneTiles
	.word	100696064
	.word	level3SceneMap
	.word	83886592
	.word	gamespritesheetPal
	.word	100728832
	.word	gamespritesheetTiles
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	vOff
	.word	hOff
	.word	state
	.size	goToGame3, .-goToGame3
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L63
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L63+8
	ldr	r1, .L63+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L63+16
	mov	r3, #1024
	ldr	r2, .L63+20
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #5248
	ldr	r3, .L63+24
	strh	r2, [r5, #8]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	ldr	r1, .L63+28
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+32
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #5
	ldr	r2, .L63+36
	strh	r3, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	DMANow
	.word	pauseScreenBGPal
	.word	19072
	.word	pauseScreenBGTiles
	.word	pauseScreenBGMap
	.word	100704256
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L73
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L66
	ldr	r2, .L73+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L72
.L66:
	tst	r3, #4
	popne	{r4, lr}
	bne	pause.part.0
.L65:
	pop	{r4, lr}
	bx	lr
.L72:
	ldr	r3, .L73+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L74:
	.align	2
.L73:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToPause2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause2, %function
goToPause2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L77
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L77+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L77+8
	ldr	r1, .L77+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L77+16
	mov	r3, #1024
	ldr	r2, .L77+20
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #5248
	ldr	r3, .L77+24
	strh	r2, [r5, #8]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	ldr	r1, .L77+28
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+32
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #6
	ldr	r2, .L77+36
	strh	r3, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	DMANow
	.word	pauseScreenBGPal
	.word	19072
	.word	pauseScreenBGTiles
	.word	pauseScreenBGMap
	.word	100704256
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	state
	.size	goToPause2, .-goToPause2
	.align	2
	.global	pause2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause2, %function
pause2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L87
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L80
	ldr	r2, .L87+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L86
.L80:
	tst	r3, #4
	popne	{r4, lr}
	bne	pause2.part.0
.L79:
	pop	{r4, lr}
	bx	lr
.L86:
	ldr	r3, .L87+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame2
.L88:
	.align	2
.L87:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	pause2, .-pause2
	.align	2
	.global	goToPause3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause3, %function
goToPause3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L91
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L91+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L91+8
	ldr	r1, .L91+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L91+16
	mov	r3, #1024
	ldr	r2, .L91+20
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #5248
	ldr	r3, .L91+24
	strh	r2, [r5, #8]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	ldr	r1, .L91+28
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L91+32
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #7
	ldr	r2, .L91+36
	strh	r3, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	DMANow
	.word	pauseScreenBGPal
	.word	19072
	.word	pauseScreenBGTiles
	.word	pauseScreenBGMap
	.word	100704256
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	state
	.size	goToPause3, .-goToPause3
	.align	2
	.global	pause3
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause3, %function
pause3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L101
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L94
	ldr	r2, .L101+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L100
.L94:
	tst	r3, #4
	popne	{r4, lr}
	bne	pause3.part.0
.L93:
	pop	{r4, lr}
	bx	lr
.L100:
	ldr	r3, .L101+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame3
.L102:
	.align	2
.L101:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	pause3, .-pause3
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L105
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L105+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L105+8
	ldr	r1, .L105+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L105+16
	ldr	r1, .L105+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r6, #67108864
	mov	r3, #5248
	mov	r5, #0
	strh	r3, [r6, #8]	@ movhi
	ldr	r3, .L105+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L105+28
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L105+32
	mov	lr, pc
	bx	r3
	strh	r5, [r6, #18]	@ movhi
	ldr	r3, .L105+36
	strh	r5, [r6, #16]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+40
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L105+44
	ldr	r3, .L105+48
	mov	lr, pc
	bx	r3
	mov	r2, #8
	ldr	r3, .L105+52
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L106:
	.align	2
.L105:
	.word	DMANow
	.word	winScreenBGPal
	.word	19072
	.word	winScreenBGTiles
	.word	100704256
	.word	winScreenBGMap
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	stopSound
	.word	koroneYay_length
	.word	koroneYay_data
	.word	playSoundB
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L114
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L114+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L107
	ldr	r3, .L114+8
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L113
.L107:
	pop	{r4, lr}
	bx	lr
.L113:
	ldr	r3, .L114+12
	mov	lr, pc
	bx	r3
	ldr	r2, .L114+16
	ldr	r3, .L114+20
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L114+24
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L114+28
	ldr	r3, .L114+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame2
.L115:
	.align	2
.L114:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initializeGame2
	.word	playerScore2
	.word	stopSound
	.word	Fukkireta_length
	.word	Fukkireta_data
	.word	playSoundA
	.size	win, .-win
	.align	2
	.global	goToWin2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin2, %function
goToWin2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L118
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L118+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L118+8
	ldr	r1, .L118+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L118+16
	ldr	r1, .L118+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r6, #67108864
	mov	r3, #5248
	mov	r5, #0
	strh	r3, [r6, #8]	@ movhi
	ldr	r3, .L118+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L118+28
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L118+32
	mov	lr, pc
	bx	r3
	strh	r5, [r6, #18]	@ movhi
	ldr	r3, .L118+36
	strh	r5, [r6, #16]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+40
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L118+44
	ldr	r3, .L118+48
	mov	lr, pc
	bx	r3
	mov	r2, #9
	ldr	r3, .L118+52
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L119:
	.align	2
.L118:
	.word	DMANow
	.word	winScreenBGPal
	.word	19072
	.word	winScreenBGTiles
	.word	100704256
	.word	winScreenBGMap
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	stopSound
	.word	koroneYay_length
	.word	koroneYay_data
	.word	playSoundB
	.word	state
	.size	goToWin2, .-goToWin2
	.align	2
	.global	win2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win2, %function
win2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L127
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L127+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L120
	ldr	r3, .L127+8
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L126
.L120:
	pop	{r4, lr}
	bx	lr
.L126:
	ldr	r3, .L127+12
	mov	lr, pc
	bx	r3
	ldr	r2, .L127+16
	ldr	r3, .L127+20
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L127+24
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L127+28
	ldr	r3, .L127+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame3
.L128:
	.align	2
.L127:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initializeGame3
	.word	playerScore3
	.word	stopSound
	.word	Fukkireta_length
	.word	Fukkireta_data
	.word	playSoundA
	.size	win2, .-win2
	.align	2
	.global	goToWin3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin3, %function
goToWin3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L131
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L131+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L131+8
	ldr	r1, .L131+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L131+16
	ldr	r1, .L131+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r6, #67108864
	mov	r3, #5248
	mov	r5, #0
	strh	r3, [r6, #8]	@ movhi
	ldr	r3, .L131+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L131+28
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L131+32
	mov	lr, pc
	bx	r3
	strh	r5, [r6, #18]	@ movhi
	ldr	r3, .L131+36
	strh	r5, [r6, #16]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L131+40
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L131+44
	ldr	r3, .L131+48
	mov	lr, pc
	bx	r3
	mov	r2, #10
	ldr	r3, .L131+52
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L132:
	.align	2
.L131:
	.word	DMANow
	.word	winScreenBGPal
	.word	19072
	.word	winScreenBGTiles
	.word	100704256
	.word	winScreenBGMap
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	stopSound
	.word	koroneYay_length
	.word	koroneYay_data
	.word	playSoundB
	.word	state
	.size	goToWin3, .-goToWin3
	.align	2
	.global	win3
	.syntax unified
	.arm
	.fpu softvfp
	.type	win3, %function
win3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L140
	mov	lr, pc
	bx	r3
	mov	ip, #105
	mov	lr, #106
	ldr	r3, .L140+4
	ldr	r1, .L140+8
	ldr	r2, .L140+12
	ldr	r1, [r1]
	ldr	r3, [r3]
	ldr	r2, [r2]
	add	r3, r3, r1
	add	r3, r3, r2
	add	r2, r3, #384
	ldr	r4, .L140+16
	ldr	r1, .L140+20
	lsl	r2, r2, #1
	ldr	r0, .L140+24
	orr	r2, r2, #16384
	str	r3, [r1]
	strh	r2, [r4, #44]	@ movhi
	ldr	r1, .L140+28
	ldr	r3, .L140+32
	ldr	r2, .L140+36
	ldr	r5, .L140+40
	strh	r0, [r4, #10]	@ movhi
	ldr	r6, .L140+44
	add	r0, r0, #20
	strh	r1, [r4, #12]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	strh	r2, [r4, #20]	@ movhi
	strh	r0, [r4, #26]	@ movhi
	add	r1, r1, #62
	add	r3, r3, #20
	sub	r2, r2, #20
	add	r0, r0, #20
	strh	r5, [r4, #4]	@ movhi
	strh	r1, [r4, #28]	@ movhi
	strh	r3, [r4, #34]	@ movhi
	strh	r2, [r4, #36]	@ movhi
	mov	r3, #512
	strh	r0, [r4, #42]	@ movhi
	mov	r1, r4
	mov	r2, #117440512
	mov	r0, #3
	strh	r6, [r4, #2]	@ movhi
	strh	lr, [r4]	@ movhi
	strh	lr, [r4, #8]	@ movhi
	ldr	r5, .L140+48
	strh	ip, [r4, #16]	@ movhi
	strh	ip, [r4, #24]	@ movhi
	strh	ip, [r4, #32]	@ movhi
	strh	ip, [r4, #40]	@ movhi
	mov	lr, pc
	bx	r5
	ldr	r3, .L140+52
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L133
	ldr	r3, .L140+56
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L139
.L133:
	pop	{r4, r5, r6, lr}
	bx	lr
.L139:
	ldr	r3, .L140+60
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, lr}
	b	goToStart
.L141:
	.align	2
.L140:
	.word	waitForVBlank
	.word	playerScore
	.word	playerScore2
	.word	playerScore3
	.word	shadowOAM
	.word	finalScore
	.word	16474
	.word	17028
	.word	16484
	.word	17052
	.word	17092
	.word	16464
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.word	hideSprites
	.size	win3, .-win3
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L144
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L144+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L144+8
	ldr	r1, .L144+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L144+16
	ldr	r1, .L144+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r6, #67108864
	mov	r3, #5248
	mov	r5, #0
	strh	r3, [r6, #8]	@ movhi
	ldr	r3, .L144+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L144+28
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L144+32
	mov	lr, pc
	bx	r3
	strh	r5, [r6, #18]	@ movhi
	ldr	r3, .L144+36
	strh	r5, [r6, #16]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+40
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L144+44
	ldr	r3, .L144+48
	mov	lr, pc
	bx	r3
	mov	r2, #11
	ldr	r3, .L144+52
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L145:
	.align	2
.L144:
	.word	DMANow
	.word	loseScreenBGPal
	.word	19072
	.word	loseScreenBGTiles
	.word	100704256
	.word	loseScreenBGMap
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	stopSound
	.word	koroneLose_length
	.word	koroneLose_data
	.word	playSoundB
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L160
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L147
	ldr	r3, .L160+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L157
.L147:
	ldr	r3, .L160+20
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L158
.L148:
	ldr	r3, .L160+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L159
.L149:
	ldr	r4, .L160+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L160+32
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L159:
	bl	goToLose
	b	.L149
.L158:
	bl	goToWin
	b	.L148
.L157:
	ldr	r3, .L160+36
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L147
.L161:
	.align	2
.L160:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	level1WinCollision
	.word	livesRemaining
	.word	DMANow
	.word	shadowOAM
	.word	pauseSound
	.size	game, .-game
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L176
	mov	lr, pc
	bx	r3
	ldr	r3, .L176+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L176+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L176+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L163
	ldr	r3, .L176+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L173
.L163:
	ldr	r3, .L176+20
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L174
.L164:
	ldr	r3, .L176+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L175
.L165:
	ldr	r4, .L176+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L176+32
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L175:
	bl	goToLose
	b	.L165
.L174:
	bl	goToWin2
	b	.L164
.L173:
	ldr	r3, .L176+36
	mov	lr, pc
	bx	r3
	bl	goToPause2
	b	.L163
.L177:
	.align	2
.L176:
	.word	updateGame2
	.word	waitForVBlank
	.word	drawGame2
	.word	oldButtons
	.word	buttons
	.word	level2WinCollision
	.word	livesRemaining
	.word	DMANow
	.word	shadowOAM
	.word	pauseSound
	.size	game2, .-game2
	.align	2
	.global	game3
	.syntax unified
	.arm
	.fpu softvfp
	.type	game3, %function
game3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L192
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L179
	ldr	r3, .L192+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L189
.L179:
	ldr	r3, .L192+20
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L190
.L180:
	ldr	r3, .L192+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L191
.L181:
	ldr	r4, .L192+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L192+32
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L191:
	bl	goToLose
	b	.L181
.L190:
	bl	goToWin3
	b	.L180
.L189:
	ldr	r3, .L192+36
	mov	lr, pc
	bx	r3
	bl	goToPause3
	b	.L179
.L193:
	.align	2
.L192:
	.word	updateGame3
	.word	waitForVBlank
	.word	drawGame3
	.word	oldButtons
	.word	buttons
	.word	level3WinCollision
	.word	livesRemaining
	.word	DMANow
	.word	shadowOAM
	.word	pauseSound
	.size	game3, .-game3
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L201
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L201+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L194
	ldr	r3, .L201+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L200
.L194:
	pop	{r4, lr}
	bx	lr
.L200:
	pop	{r4, lr}
	b	goToStart
.L202:
	.align	2
.L201:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L222
	mov	lr, pc
	bx	r3
	ldr	r6, .L222+4
	ldr	r7, .L222+8
	ldr	r5, .L222+12
	ldr	fp, .L222+16
	ldr	r10, .L222+20
	ldr	r9, .L222+24
	ldr	r8, .L222+28
	ldr	r4, .L222+32
.L204:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L205:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L205
.L207:
	.word	.L218
	.word	.L217
	.word	.L216
	.word	.L215
	.word	.L214
	.word	.L213
	.word	.L212
	.word	.L211
	.word	.L210
	.word	.L209
	.word	.L208
	.word	.L206
.L206:
	ldr	r3, .L222+36
	mov	lr, pc
	bx	r3
	b	.L204
.L208:
	ldr	r3, .L222+40
	mov	lr, pc
	bx	r3
	b	.L204
.L209:
	ldr	r3, .L222+44
	mov	lr, pc
	bx	r3
	b	.L204
.L210:
	ldr	r3, .L222+48
	mov	lr, pc
	bx	r3
	b	.L204
.L211:
	ldr	r3, .L222+52
	mov	lr, pc
	bx	r3
	b	.L204
.L212:
	ldr	r3, .L222+56
	mov	lr, pc
	bx	r3
	b	.L204
.L213:
	ldr	r3, .L222+60
	mov	lr, pc
	bx	r3
	b	.L204
.L214:
	ldr	r3, .L222+64
	mov	lr, pc
	bx	r3
	b	.L204
.L215:
	mov	lr, pc
	bx	r8
	b	.L204
.L216:
	mov	lr, pc
	bx	r9
	b	.L204
.L217:
	mov	lr, pc
	bx	r10
	b	.L204
.L218:
	mov	lr, pc
	bx	fp
	b	.L204
.L223:
	.align	2
.L222:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	controls
	.word	game
	.word	game2
	.word	67109120
	.word	lose
	.word	win3
	.word	win2
	.word	win
	.word	pause3
	.word	pause2
	.word	pause
	.word	game3
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	cheatIsActivated,4,4
	.comm	finalScore,4,4
	.comm	playerScore3,4,4
	.comm	playerScore2,4,4
	.comm	playerScore,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
