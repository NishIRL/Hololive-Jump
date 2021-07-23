#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "startScreenBG.h"
#include "pauseScreenBG.h"
#include "winScreenBG.h"
#include "loseScreenBG.h"
#include "controls.h"
#include "game.h"
#include "game2.h"
#include "game3.h"
#include "level1Scene.h"
#include "level1bg.h"
#include "level1RoughCollisionMap.h"
#include "level2BG.h"
#include "level2Scene.h"
#include "level2CollisionMap.h"
#include "level3BG.h"
#include "level3Scene.h"
#include "level3CollisionMap.h"
#include "gamespritesheet.h"
#include "commonElements.h"
#include "sound.h"
// sounds and music
#include "koroneLose.h"
#include "koroneOw.h"
#include "koroneWoo.h"
#include "koroneXPotato.h"
#include "koroneYay.h"
#include "ShinySmilyStory.h"
#include "Fukkireta.h"

SOUND soundA;
SOUND soundB;

// score
int playerScore;
int playerScore2;
int playerScore3;
int finalScore;

// cheat activation
int cheatIsActivated;

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToControls();
void controls();
void goToGame();
void game();
void goToPause();
void pause();
void goToPause2();
void pause2();
void goToPause3();
void pause3();
void goToWin();
void win();
void goToLose();
void lose();
void goToGame2();
void goToGame3();
void goToWin2();
void goToWin3();
void game2();
void game3();
void win2();
void win3();

// States
enum
{
    START,
    CONTROLS,
    GAME,
    GAME2,
    GAME3,
    PAUSE,
    PAUSE2,
    PAUSE3,
    WIN,
    WIN2,
    WIN3,
    LOSE
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM
OBJ_ATTR shadowOAM[128];

int main()
{
    initialize();

    while (1)
    {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch (state)
        {
        case START:
            start();
            break;
        case CONTROLS:
            controls();
            break;
        case GAME:
            game();
            break;
        case GAME2:
            game2();
            break;
        case GAME3:
            game3();
            break;
        case PAUSE:
            pause();
            break;
        case PAUSE2:
            pause2();
            break;
        case PAUSE3:
            pause3();
            break;
        case WIN:
            win();
            break;
        case WIN2:
            win2();
            break;
        case WIN3:
            win3();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// Sets up GBA
void initialize()
{
    // REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE; // Bitwise OR the BG(s) you want to use and Bitwise OR SPRITE_ENABLE if you want to use sprites
    // Don't forget to set up whatever BGs you enabled in the line above!

    setupInterrupts();
    setupSounds();
    buttons = BUTTONS;
    oldButtons = 0;

    goToStart();
}

// Sets up the start state
void goToStart() {
    // DMA background material
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    DMANow(3, startScreenBGPal, PALETTE, startScreenBGPalLen/2);
    DMANow(3, startScreenBGTiles, &CHARBLOCK[0], startScreenBGTilesLen/2);
    DMANow(3, startScreenBGMap, &SCREENBLOCK[20], startScreenBGMapLen/2);
    // DMA sprite material
    DMANow(3, startScreenBGPal, SPRITEPALETTE, startScreenBGPalLen/2);
    DMANow(3, startScreenBGTiles, &CHARBLOCK[4], startScreenBGTilesLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_8BPP | BG_SIZE_SMALL;
    waitForVBlank();
    hideSprites();
    playSoundA(ShinySmilyStory_data,ShinySmilyStory_length, 1);
    cheatIsActivated = 0;
    state = START;
}

// Runs every frame of the start state
void start() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        initializeGame();
        playerScore = 0;
        stopSound();
        playSoundA(Fukkireta_data, Fukkireta_length, 1);
        goToGame();
    }

    // cheat combination to activate cheat
    if (BUTTON_PRESSED(BUTTON_L) && BUTTON_PRESSED(BUTTON_R)) {
        cheatIsActivated = 1;
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        pauseSound();
        goToControls();
    }
}

// Sets up the controls state
void goToControls() {
    DMANow(3, controlsPal, PALETTE, controlsPalLen/2);
    DMANow(3, controlsTiles, &CHARBLOCK[0], controlsTilesLen/2);
    DMANow(3, controlsMap, &SCREENBLOCK[20], controlsMapLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_8BPP | BG_SIZE_SMALL;
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    state = CONTROLS;
}

// Runs every frame of the controls state
void controls() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        unpauseSound();
        goToStart();
    }
}

// Sets up the game state
void goToGame() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;
    // DMA level 1 background material
    REG_BG1CNT = BG_SIZE_TALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(23) | BG_4BPP;
    DMANow(3, level1BGPal, PALETTE, level1BGPalLen/2);
    DMANow(3, level1BGTiles, &CHARBLOCK[0], level1BGTilesLen/2);
    DMANow(3, level1BGMap, &SCREENBLOCK[23], level1BGMapLen/2);

    // DMA level 1 scene material
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(16) | BG_4BPP | BG_SIZE_TALL;
    DMANow(3, level1SceneTiles, &CHARBLOCK[1], level1SceneTilesLen/2);
    DMANow(3, level1SceneMap, &SCREENBLOCK[16], level1SceneMapLen/2);

    // DMA sprite material
    DMANow(3, gamespritesheetPal, SPRITEPALETTE, gamespritesheetPalLen/2);
    DMANow(3, gamespritesheetTiles, &CHARBLOCK[4], gamespritesheetTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    waitForVBlank();
    drawGame();

    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }

    // go to win state if player reaches top of level 1
    if (level1WinCollision()) {
        goToWin();
    }

    // go to lose state if player loses all lives
    if (livesRemaining == 0) {
        goToLose();
    }

    DMANow(3, shadowOAM, OAM, 512);
}

// sets up level 2
void goToGame2() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;
    // DMA level 2 background material
    REG_BG1CNT = BG_SIZE_TALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(23) | BG_4BPP;
    DMANow(3, level2BGPal, PALETTE, level2BGPalLen/2);
    DMANow(3, level2BGTiles, &CHARBLOCK[0], level2BGTilesLen/2);
    DMANow(3, level2BGMap, &SCREENBLOCK[23], level2BGMapLen/2);

    // DMA level 2 scene material
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(16) | BG_4BPP | BG_SIZE_TALL;
    DMANow(3, level2SceneTiles, &CHARBLOCK[1], level2SceneTilesLen/2);
    DMANow(3, level2SceneMap, &SCREENBLOCK[16], level2SceneMapLen/2);

    // DMA sprite material
    DMANow(3, gamespritesheetPal, SPRITEPALETTE, gamespritesheetPalLen/2);
    DMANow(3, gamespritesheetTiles, &CHARBLOCK[4], gamespritesheetTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    state = GAME2;
}

void game2() {
    updateGame2();
    waitForVBlank();
    drawGame2();

    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause2();
    }

    // go to win state if player reaches top of level 2
    if (level2WinCollision()) {
        goToWin2();
    }

    // go to lose state if player loses all lives
    if (livesRemaining == 0) {
        goToLose();
    }

    DMANow(3, shadowOAM, OAM, 512);
}

void goToGame3() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;
    // DMA level 3 background material
    REG_BG1CNT = BG_SIZE_TALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(23) | BG_4BPP;
    DMANow(3, level3BGPal, PALETTE, level3BGPalLen/2);
    DMANow(3, level3BGTiles, &CHARBLOCK[0], level3BGTilesLen/2);
    DMANow(3, level3BGMap, &SCREENBLOCK[23], level3BGMapLen/2);

    // DMA level 3 scene material
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(16) | BG_4BPP | BG_SIZE_TALL;
    DMANow(3, level3SceneTiles, &CHARBLOCK[1], level3SceneTilesLen/2);
    DMANow(3, level3SceneMap, &SCREENBLOCK[16], level3SceneMapLen/2);

    // DMA sprite material
    DMANow(3, gamespritesheetPal, SPRITEPALETTE, gamespritesheetPalLen/2);
    DMANow(3, gamespritesheetTiles, &CHARBLOCK[4], gamespritesheetTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    state = GAME3;
}

void game3() {
    updateGame3();
    waitForVBlank();
    drawGame3();

    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause3();
    }

    // go to win state if player reaches top of level 3
    if (level3WinCollision()) {
        goToWin3();
    }

    // go to lose state if player loses all lives
    if (livesRemaining == 0) {
        goToLose();
    }

    DMANow(3, shadowOAM, OAM, 512);
}

// Sets up the pause state
void goToPause() {
    DMANow(3, pauseScreenBGPal, PALETTE, pauseScreenBGPalLen/2);
    DMANow(3, pauseScreenBGTiles, &CHARBLOCK[0], pauseScreenBGTilesLen/2);
    DMANow(3, pauseScreenBGMap, &SCREENBLOCK[20], pauseScreenBGMapLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_8BPP | BG_SIZE_SMALL;
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    state = PAUSE;
}

// Runs every frame of the pause state for level 1
void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToPause2() {
    DMANow(3, pauseScreenBGPal, PALETTE, pauseScreenBGPalLen/2);
    DMANow(3, pauseScreenBGTiles, &CHARBLOCK[0], pauseScreenBGTilesLen/2);
    DMANow(3, pauseScreenBGMap, &SCREENBLOCK[20], pauseScreenBGMapLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_8BPP | BG_SIZE_SMALL;
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    state = PAUSE2;
}

// pause for level 2
void pause2() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame2();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToPause3() {
    DMANow(3, pauseScreenBGPal, PALETTE, pauseScreenBGPalLen/2);
    DMANow(3, pauseScreenBGTiles, &CHARBLOCK[0], pauseScreenBGTilesLen/2);
    DMANow(3, pauseScreenBGMap, &SCREENBLOCK[20], pauseScreenBGMapLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_8BPP | BG_SIZE_SMALL;
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    state = PAUSE3;
}

// pause for level 3
void pause3() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame3();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

// Sets up the win state
void goToWin() {
    DMANow(3, winScreenBGPal, PALETTE, winScreenBGPalLen/2);
    DMANow(3, winScreenBGTiles, &CHARBLOCK[0], winScreenBGTilesLen/2);
    DMANow(3, winScreenBGMap, &SCREENBLOCK[20], winScreenBGMapLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_8BPP | BG_SIZE_SMALL;
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    stopSound();
    playSoundB(koroneYay_data, koroneYay_length, 0);
    state = WIN;
}

// Runs every frame of the win state
void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        initializeGame2();
        playerScore2 = 0;
        stopSound();
        playSoundA(Fukkireta_data, Fukkireta_length, 1);
        goToGame2();
    }
}

// Sets up level 2 win state
void goToWin2() {
    DMANow(3, winScreenBGPal, PALETTE, winScreenBGPalLen/2);
    DMANow(3, winScreenBGTiles, &CHARBLOCK[0], winScreenBGTilesLen/2);
    DMANow(3, winScreenBGMap, &SCREENBLOCK[20], winScreenBGMapLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_8BPP | BG_SIZE_SMALL;
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    stopSound();
    playSoundB(koroneYay_data, koroneYay_length, 0);
    state = WIN2;
}

void win2() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        initializeGame3();
        playerScore3 = 0;
        stopSound();
        playSoundA(Fukkireta_data, Fukkireta_length, 1);
        goToGame3();
    }
}

void goToWin3() {
    DMANow(3, winScreenBGPal, PALETTE, winScreenBGPalLen/2);
    DMANow(3, winScreenBGTiles, &CHARBLOCK[0], winScreenBGTilesLen/2);
    DMANow(3, winScreenBGMap, &SCREENBLOCK[20], winScreenBGMapLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_8BPP | BG_SIZE_SMALL;
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    stopSound();
    playSoundB(koroneYay_data, koroneYay_length, 0);
    state = WIN3;
}

void win3() {
    waitForVBlank();
    finalScore = playerScore + playerScore2 + playerScore3;
    // draw score
    // Letter S
    shadowOAM[0].attr0 = (106) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (80) | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 22);

    //Letter C
    shadowOAM[1].attr0 = (106) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[1].attr1 = (90) | ATTR1_SMALL;
    shadowOAM[1].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 20);

    // Letter O
    shadowOAM[2].attr0 = (105) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[2].attr1 = (100) | ATTR1_SMALL;
    shadowOAM[2].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(28, 20);

    // Letter R
    shadowOAM[3].attr0 = (105) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[3].attr1 = (110) | ATTR1_SMALL;
    shadowOAM[3].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(2, 22);

    // Letter E
    shadowOAM[4].attr0 = (105) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[4].attr1 = (120) | ATTR1_SMALL;
    shadowOAM[4].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(8, 20);

    // score number
    shadowOAM[5].attr0 = (105) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[5].attr1 = (130) | ATTR1_SMALL;
    shadowOAM[5].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((finalScore * 2), 24);

    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_START)) {
        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
        goToStart();
    }
}

// Sets up the lose state
void goToLose() {
    DMANow(3, loseScreenBGPal, PALETTE, loseScreenBGPalLen/2);
    DMANow(3, loseScreenBGTiles, &CHARBLOCK[0], loseScreenBGTilesLen/2);
    DMANow(3, loseScreenBGMap, &SCREENBLOCK[20], loseScreenBGMapLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_8BPP | BG_SIZE_SMALL;
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    waitForVBlank();
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    stopSound();
    playSoundB(koroneLose_data, koroneLose_length,0);
    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}