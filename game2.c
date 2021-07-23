#include "game2.h"
#include "myLib.h"
#include "level2CollisionMap.h"
#include "commonElements.h"
#include "sound.h"

// sound and music
#include "koroneLose.h"
#include "koroneOw.h"
#include "koroneWoo.h"
#include "koroneXPotato.h"
#include "koroneYay.h"
#include "ShinySmilyStory.h"
#include "Fukkireta.h"

PLAYERSPRITE2 player;
SPIKESPRITE2 spikes[5];
POTATOSPRITE2 potatoes[5];

// player sprite animation states
enum {SPRITELEFT, SPRITERIGHT, SPRITEJUMPLEFT, SPRITEJUMPRIGHT, SPRITEIDLE};

int hOff;
int vOff;
int livesRemaining;
int cheatIsActivated;

void initializeGame2() {
    initializePlayer2();
    initializeSpikes2();
    initializePotatoes2();
}

void initializePlayer2() {
    player.width = 16;
    player.height = 32;
    player.worldRow = SHIFTUP2(460); //460 intended for final version
    player.worldCol = 30; //30 intended for final version
    player.cdel = 3;
    player.rdel = 1;
    player.aniCounter = 0;
    player.aniState = SPRITELEFT;
    player.curFrame = 0;
    player.numFrames = 4;

    hOff = 0;
    vOff = 352;

    player.screenRow = SHIFTDOWN2(player.worldRow) - vOff;
    player.screenCol = player.worldCol - hOff;
    livesRemaining = 3;
}

void initializeSpikes2() {
    for (int i = 0; i < SPIKECOUNT2; i++) {
        spikes[i].active = 0;
        spikes[i].height = 16;
        spikes[i].width = 32;
    }

    spikes[0].worldRow = 45;
    spikes[1].worldRow = 200;
    spikes[2].worldRow = 270;
    spikes[3].worldRow = 380;
    spikes[4].worldRow = 480;

    spikes[0].worldCol = 50;
    spikes[1].worldCol = 150;
    spikes[2].worldCol = 50;
    spikes[3].worldCol = 120;
    spikes[4].worldCol = 50;

    spikes[0].cdel = 2; //2
    spikes[0].rdel = 0;

    spikes[1].cdel = 2;
    spikes[1].rdel = 0;

    spikes[2].cdel = -2; //-2
    spikes[2].rdel = 0;

    spikes[3].cdel = -2;
    spikes[3].rdel = 0;

    spikes[4].cdel = 2; //2
    spikes[4].rdel = 0;

    for (int i = 0; i < SPIKECOUNT2; i++) {
        spikes[i].screenRow = spikes[i].worldRow - vOff;
        spikes[i].screenCol = spikes[i].worldCol - hOff;
    }
}

void initializePotatoes2() {
    for (int i = 0; i < POTATOCOUNT2; i++) {
        potatoes[i].active = 0;
        potatoes[i].height = 16;
        potatoes[i].width = 16;
        potatoes[i].isCollected = 0;
    }

    potatoes[0].worldCol = 200;
    potatoes[0].worldRow = 30;

    potatoes[1].worldCol = 30;
    potatoes[1].worldRow = 50;

    potatoes[2].worldCol = 150;
    potatoes[2].worldRow = 275;

    for (int i = 0; i < POTATOCOUNT2; i++) {
        potatoes[i].screenRow = potatoes[i].worldRow - vOff;
        potatoes[i].screenCol = potatoes[i].worldCol - hOff;
    }
}

void updateGame2() {
    updatePlayer2();
    updateSpikes2();
    updatePotatoes2();
    animatePlayer2();
}

void updateSpikes2() {
    for (int i = 0; i < SPIKECOUNT2; i++) {
        spikes[i].worldCol += spikes[i].cdel;
        spikes[i].worldRow += spikes[i].rdel;

        if (spikes[i].worldRow <= 0 || (spikes[i].worldRow + spikes[i].height >= MAPHEIGHT2)) {
            spikes[i].rdel *= -1;
        }

        if (spikes[i].worldCol <= 24 || (spikes[i].worldCol + spikes[i].width >= 216)) {
            spikes[i].cdel *= -1;
        }

        spikes[i].screenRow = spikes[i].worldRow - vOff;
        spikes[i].screenCol = spikes[i].worldCol - hOff;

        if ((spikes[i].screenRow + spikes[i].height >= 240) || (spikes[i].screenRow + spikes[i].height <= 0)) {
            spikes[i].active = 0;
        } else {
            spikes[i].active = 1;
        }

        if (collision(spikes[i].screenCol, spikes[i].screenRow + 8, spikes[i].width, spikes[i].height, player.screenCol, player.screenRow, player.width, player.height) && !cheatIsActivated) {
            stopSoundB();
            playSoundB(koroneOw_data, koroneOw_length, 0);
            restartLevel2();
        }
    }
}

void updatePotatoes2() {
    for (int i = 0; i < POTATOCOUNT2; i++) {
        if ((potatoes[i].screenRow + potatoes[i].height >= 240) || (potatoes[i].screenRow + potatoes[i].height <= 0)) {
            potatoes[i].active = 0;
        } else {
            potatoes[i].active = 1;
        }

        potatoes[i].screenRow = potatoes[i].worldRow - vOff;
        potatoes[i].screenCol = potatoes[i].worldCol - hOff;

        if (collision(potatoes[i].screenCol, potatoes[i].screenRow, potatoes[i].width, potatoes[i].height, player.screenCol, player.screenRow, player.width, player.height) && !potatoes[i].isCollected) {
            playerScore2++;
            potatoes[i].active = 0;
            potatoes[i].isCollected = 1;
            stopSoundB();
            playSoundB(koroneXPotato_data, koroneXPotato_length, 0);
        }
    }
}

void updatePlayer2() {
    // left movement
    if (BUTTON_HELD(BUTTON_LEFT) && (player.worldCol + 8) > 24 && !leftCollision2()) {
        player.worldCol -= player.cdel;
    }

    // right movement
    if (BUTTON_HELD(BUTTON_RIGHT) && (player.worldCol + player.width + 8) < 216 && !rightCollision2()) {
        player.worldCol += player.cdel;
    }

    // gravity attempt following tutorial
    if (!groundCollision2()) {
        player.worldRow += player.rdel;
    } else {
        player.rdel = 0;
    }

    // jump only if player is standing on a platform
    if (BUTTON_PRESSED(BUTTON_UP) && groundCollision2()) {
        player.rdel -= JUMPPOWER2;
        player.worldRow += player.rdel;
    }

    // force spring jump if collision with a turtle
    if (springCollision2()) {
        springJump2();
        stopSoundB();
        playSoundB(koroneWoo_data, koroneWoo_length, 0);
    }

    if (player.rdel <= 800) {
        player.rdel += GRAVITY2;
    }
    // gravity tutorial ends here

    // automatically adjust vOff if the player sprite is above a certain point
    // goes only up to the top of the map
    if (vOff > (0) && player.screenRow <= 40) {
        vOff -= 1;
    }

    // updates the player's screenRow and screenCol
    player.screenRow = SHIFTDOWN2(player.worldRow) - vOff;
    player.screenCol = player.worldCol - hOff;

    // set player back to start of level if they touch spike or bottom of screen
    // player loses a life each time this happens
    if ((SHIFTDOWN2(player.worldRow) + player.height) >= (vOff + SCREENHEIGHT)) {
        stopSoundB();
        playSoundB(koroneOw_data, koroneOw_length, 0);
        restartLevel2();
    }
}

void animatePlayer2() {
    // set previous state to current state
    if (!(player.aniState == SPRITEIDLE)) {
        player.prevAniState = player.aniState;
        player.aniState = SPRITEIDLE;
    }

    // change sprite animation frame every 8 frames
    if (player.aniCounter % 8 == 0) {
        player.curFrame = ((player.curFrame + 1) % player.numFrames);
    }

    // control movement and animation state accordingly
    if (BUTTON_HELD(BUTTON_LEFT) && (player.worldCol + 5) > 24 && !leftCollision2()) {
        player.aniState = SPRITELEFT;
    }

    if (BUTTON_HELD(BUTTON_RIGHT) && (player.worldCol + player.width + 8) < 216 && !rightCollision2()) {
        player.aniState = SPRITERIGHT;
    }

    if (!groundCollision2()) {
        if (player.aniState == SPRITELEFT) {
            player.aniState = SPRITEJUMPLEFT;
        } else if (player.aniState == SPRITERIGHT) {
            player.aniState = SPRITEJUMPRIGHT;
        }
    }

    if (groundCollision2()) {
        if (player.aniState == SPRITEJUMPLEFT) {
            player.aniState = SPRITELEFT;
        } else if (player.aniState == SPRITEJUMPRIGHT) {
            player.aniState = SPRITERIGHT;
        }
    }

    // set player's sprite frame to idle standing frame if the player is idle
    if (player.aniState == SPRITEIDLE) {
        player.curFrame = 0;
        player.aniState = player.prevAniState;
    } else {
        player.aniCounter++;
    }
}

void drawGame2() {
    drawPlayer2();
    drawSpikes2();
    drawPotatoes2();
    drawLives2();
    REG_BG0VOFF = vOff;
    REG_BG1VOFF = vOff >> 1;
}

void drawPlayer2() {
    // draw the player's character sprite
    shadowOAM[0].attr0 = (ROWMASK & player.screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (COLMASK & player.screenCol) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState * 4, player.curFrame * 4);
}

void drawSpikes2() {
    // goes from shadowOAM[1] to shadowOAM[5]
    for (int i = 0; i < SPIKECOUNT2; i++) {
        if (spikes[i].active) {
            shadowOAM[i+1].attr0 = (ROWMASK & spikes[i].screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+1].attr1 = (COLMASK & spikes[i].screenCol) | ATTR1_MEDIUM;
            shadowOAM[i+1].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 16);
        }
    }
}

// displays the number of lives the player has
void drawLives2() {
    // start at shadowOAM[6], end at shadowOAM[13]
    // Letter L
    shadowOAM[6].attr0 = (140) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[6].attr1 = (0) | ATTR1_SMALL;
    shadowOAM[6].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(22, 20);
    // Letter I
    shadowOAM[7].attr0 = (140) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[7].attr1 = (8) | ATTR1_SMALL;
    shadowOAM[7].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(16, 20);
    // Letter V
    shadowOAM[8].attr0 = (140) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[8].attr1 = (15) | ATTR1_SMALL;
    shadowOAM[8].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(10, 22);
    // Letter E
    shadowOAM[9].attr0 = (140) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[9].attr1 = (22) | ATTR1_SMALL;
    shadowOAM[9].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(8, 20);
    // Letter S
    shadowOAM[10].attr0 = (141) | ATTR0_4BPP | ATTR0_SQUARE; // row 141 for the sake of correction
    shadowOAM[10].attr1 = (29) | ATTR1_SMALL;
    shadowOAM[10].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 22);

    for (int i = 0; i < livesRemaining; i++) {
        shadowOAM[11 + i].attr0 = (140) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[11 + i].attr1 = (45 + (15 * i)) | ATTR1_SMALL;
        shadowOAM[11 + i].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(8, 16);
    }
}

// displays the potatoes that the player collects for points
void drawPotatoes2() {
    // goes from shadowOAM[14] to shadowOAM[16]
    for (int i = 0; i < POTATOCOUNT2; i++) {
        if (potatoes[i].active) {
            shadowOAM[i+14].attr0 = (ROWMASK & potatoes[i].screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+14].attr1 = (COLMASK & potatoes[i].screenCol) | ATTR1_SMALL;
            shadowOAM[i+14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(4, 16);
        }

        // don't draw potato if it is already collected
        if (potatoes[i].isCollected) {
            shadowOAM[i+14].attr0 = ATTR0_HIDE;
        }
    }
}

int groundCollision2() {
    // bottom left corner collision check
    if (level2CollisionMapBitmap[OFFSET(player.screenCol + (8) + (hOff % 256), player.screenRow + player.height - 1 + (vOff % 512), 256)] == 0) {
        return 1;
    }
    // bottom right corner collision check
    if (level2CollisionMapBitmap[OFFSET(player.screenCol + (8) + (hOff % 256) + player.width, player.screenRow + player.height - 1 + (vOff % 512), 256)] == 0) {
        return 1;
    }
    return 0;
}

void restartLevel2() {
    hOff = 0;
    vOff = 352;
    player.worldRow = SHIFTUP2(460); //460 intended for final version
    player.worldCol = 30; //30 intended for final version
    player.rdel = 1;
    player.screenRow = SHIFTDOWN2(player.worldRow) - vOff;
    player.screenCol = player.worldCol - hOff;
    livesRemaining--;
    // reset spikes' and potatoes' positions
    initializeSpikes2();
    initializePotatoes2();
    playerScore2 = 0;
    hideSprites();
}

// function that determines level 2 win
int level2WinCollision() {
    // bottom left corner collision check
    if (level2CollisionMapBitmap[OFFSET(player.screenCol + (8) + (hOff % 256), player.screenRow + player.height - 1 + (vOff % 512), 256)] == 0x03E0) {
        return 1;
    }
    // bottom right corner collision check
    if (level2CollisionMapBitmap[OFFSET(player.screenCol + (8) + (hOff % 256) + player.width, player.screenRow + player.height - 1 + (vOff % 512), 256)] == 0x03E0) {
        return 1;
    }
    return 0;
}

int leftCollision2() {
    // left side collision check
    for (int i = 0; i < player.height - 3; i++) {
        if (level2CollisionMapBitmap[OFFSET(player.screenCol + (hOff % 256) + (7), player.screenRow + i + (vOff % 512), MAPWIDTH2)] == 0) {
            return 1;
        }
    }
    return 0;
}

int rightCollision2() {
    // right side collision check
    for (int i = 0; i < player.height - 3; i++) {
        if (level2CollisionMapBitmap[OFFSET(player.screenCol + player.width + (hOff % 256) + (8), player.screenRow + i + (vOff % 512), MAPWIDTH2)] == 0) {
            return 1;
        }
    }
    return 0;
}

int springCollision2() {
    // bottom left corner collision check
    if (level2CollisionMapBitmap[OFFSET(player.screenCol + (8) + (hOff % 256), player.screenRow + player.height - 1 + (vOff % 512), 256)] == 0x001F) {
        return 1;
    }
    // bottom right corner collision check
    if (level2CollisionMapBitmap[OFFSET(player.screenCol + (8) + (hOff % 256) + player.width, player.screenRow + player.height - 1 + (vOff % 512), 256)] == 0x001F) {
        return 1;
    }
    return 0;
}

void springJump2() {
    player.rdel -=  1.05 * JUMPPOWER2;
    player.worldRow += player.rdel;
}