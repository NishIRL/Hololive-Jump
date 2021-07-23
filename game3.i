# 1 "game3.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game3.c"
# 1 "game3.h" 1
typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int screenRow;
    int screenCol;
} PLAYERSPRITE3;

typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int screenRow;
    int screenCol;
    int active;
} SPIKESPRITE3;

typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int screenRow;
    int screenCol;
    int active;
    int isCollected;
} POTATOSPRITE3;
# 52 "game3.h"
void updateGame3();
void updatePlayer3();
void updateSpikes3();
void updatePotatoes3();
void drawGame3();
void drawPlayer3();
void drawSpikes3();
void drawPotatoes3();
void drawLives3();
void initializeGame3();
void initializePlayer3();
void initializeSpikes3();
void initializePotatoes3();
int groundCollision3();
void restartLevel3();
int level3WinCollision();
int leftCollision3();
int rightCollision3();
void animatePlayer3();
void springJump3();
int springCollision3();
# 2 "game3.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct
{
    u16 tileimg[8192];
} charblock;


typedef struct
{
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();




typedef struct
{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 159 "myLib.h"
void hideSprites();






typedef struct
{
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 202 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 212 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 253 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 289 "myLib.h"
typedef void (*ihp)(void);
# 309 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "game3.c" 2
# 1 "level3CollisionMap.h" 1
# 20 "level3CollisionMap.h"
extern const unsigned short level3CollisionMapBitmap[131072];
# 4 "game3.c" 2
# 1 "commonElements.h" 1


extern int vOff;
extern int hOff;
extern int livesRemaining;
extern int playerScore;
extern int playerScore2;
extern int playerScore3;
extern int finalScore;
extern int cheatIsActivated;
# 5 "game3.c" 2
# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
void stopSoundA();
void stopSoundB();
# 51 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 6 "game3.c" 2


# 1 "koroneLose.h" 1


extern const unsigned int koroneLose_sampleRate;
extern const unsigned int koroneLose_length;
extern const signed char koroneLose_data[];
# 9 "game3.c" 2
# 1 "koroneOw.h" 1


extern const unsigned int koroneOw_sampleRate;
extern const unsigned int koroneOw_length;
extern const signed char koroneOw_data[];
# 10 "game3.c" 2
# 1 "koroneWoo.h" 1


extern const unsigned int koroneWoo_sampleRate;
extern const unsigned int koroneWoo_length;
extern const signed char koroneWoo_data[];
# 11 "game3.c" 2
# 1 "koroneXPotato.h" 1


extern const unsigned int koroneXPotato_sampleRate;
extern const unsigned int koroneXPotato_length;
extern const signed char koroneXPotato_data[];
# 12 "game3.c" 2
# 1 "koroneYay.h" 1


extern const unsigned int koroneYay_sampleRate;
extern const unsigned int koroneYay_length;
extern const signed char koroneYay_data[];
# 13 "game3.c" 2
# 1 "ShinySmilyStory.h" 1


extern const unsigned int ShinySmilyStory_sampleRate;
extern const unsigned int ShinySmilyStory_length;
extern const signed char ShinySmilyStory_data[];
# 14 "game3.c" 2
# 1 "Fukkireta.h" 1


extern const unsigned int Fukkireta_sampleRate;
extern const unsigned int Fukkireta_length;
extern const signed char Fukkireta_data[];
# 15 "game3.c" 2

PLAYERSPRITE3 player;
SPIKESPRITE3 spikes[5];
POTATOSPRITE3 potatoes[5];


enum {SPRITELEFT, SPRITERIGHT, SPRITEJUMPLEFT, SPRITEJUMPRIGHT, SPRITEIDLE};

int hOff;
int vOff;
int livesRemaining;
int cheatIsActivated;

void initializeGame3() {
    initializePlayer3();
    initializeSpikes3();
    initializePotatoes3();
}

void initializePlayer3() {
    player.width = 16;
    player.height = 32;
    player.worldRow = ((460) << 8);
    player.worldCol = 30;
    player.cdel = 3;
    player.rdel = 1;
    player.aniCounter = 0;
    player.aniState = SPRITELEFT;
    player.curFrame = 0;
    player.numFrames = 4;

    hOff = 0;
    vOff = 352;

    player.screenRow = ((player.worldRow) >> 8) - vOff;
    player.screenCol = player.worldCol - hOff;
    livesRemaining = 3;
}

void initializeSpikes3() {
    for (int i = 0; i < 5; i++) {
        spikes[i].active = 0;
        spikes[i].height = 16;
        spikes[i].width = 32;
    }

    spikes[0].worldRow = 45;
    spikes[1].worldRow = 145;
    spikes[2].worldRow = 270;
    spikes[3].worldRow = 380;
    spikes[4].worldRow = 450;

    spikes[0].worldCol = 50;
    spikes[1].worldCol = 150;
    spikes[2].worldCol = 50;
    spikes[3].worldCol = 120;
    spikes[4].worldCol = 50;

    spikes[0].cdel = 2;
    spikes[0].rdel = 0;

    spikes[1].cdel = 2;
    spikes[1].rdel = 0;

    spikes[2].cdel = -2;
    spikes[2].rdel = 0;

    spikes[3].cdel = -2;
    spikes[3].rdel = 0;

    spikes[4].cdel = 2;
    spikes[4].rdel = 0;

    for (int i = 0; i < 5; i++) {
        spikes[i].screenRow = spikes[i].worldRow - vOff;
        spikes[i].screenCol = spikes[i].worldCol - hOff;
    }
}

void initializePotatoes3() {
    for (int i = 0; i < 3; i++) {
        potatoes[i].active = 0;
        potatoes[i].height = 16;
        potatoes[i].width = 16;
        potatoes[i].isCollected = 0;
    }

    potatoes[0].worldCol = 175;
    potatoes[0].worldRow = 55;

    potatoes[1].worldCol = 165;
    potatoes[1].worldRow = 190;

    potatoes[2].worldCol = 50;
    potatoes[2].worldRow = 420;

    for (int i = 0; i < 3; i++) {
        potatoes[i].screenRow = potatoes[i].worldRow - vOff;
        potatoes[i].screenCol = potatoes[i].worldCol - hOff;
    }
}

void updateGame3() {
    updatePlayer3();
    updateSpikes3();
    updatePotatoes3();
    animatePlayer3();
}

void updateSpikes3() {
    for (int i = 0; i < 5; i++) {
        spikes[i].worldCol += spikes[i].cdel;
        spikes[i].worldRow += spikes[i].rdel;

        if (spikes[i].worldRow <= 0 || (spikes[i].worldRow + spikes[i].height >= 512)) {
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
            restartLevel3();
        }
    }
}

void updatePotatoes3() {
    for (int i = 0; i < 3; i++) {
        if ((potatoes[i].screenRow + potatoes[i].height >= 240) || (potatoes[i].screenRow + potatoes[i].height <= 0)) {
            potatoes[i].active = 0;
        } else {
            potatoes[i].active = 1;
        }

        potatoes[i].screenRow = potatoes[i].worldRow - vOff;
        potatoes[i].screenCol = potatoes[i].worldCol - hOff;

        if (collision(potatoes[i].screenCol, potatoes[i].screenRow, potatoes[i].width, potatoes[i].height, player.screenCol, player.screenRow, player.width, player.height) && !potatoes[i].isCollected) {
            playerScore3++;
            potatoes[i].active = 0;
            potatoes[i].isCollected = 1;
            stopSoundB();
            playSoundB(koroneXPotato_data, koroneXPotato_length, 0);
        }
    }
}

void updatePlayer3() {

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))) && (player.worldCol + 8) > 24 && !leftCollision3()) {
        player.worldCol -= player.cdel;
    }


    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4))) && (player.worldCol + player.width + 8) < 216 && !rightCollision3()) {
        player.worldCol += player.cdel;
    }


    if (!groundCollision3()) {
        player.worldRow += player.rdel;
    } else {
        player.rdel = 0;
    }


    if ((!(~(oldButtons) & ((1 << 6))) && (~buttons & ((1 << 6)))) && groundCollision3()) {
        player.rdel -= 1500;
        player.worldRow += player.rdel;
    }


    if (springCollision3()) {
        springJump3();
        stopSoundB();
        playSoundB(koroneWoo_data, koroneWoo_length, 0);
    }

    if (player.rdel <= 800) {
        player.rdel += 100;
    }




    if (vOff > (0) && player.screenRow <= 40) {
        vOff -= 1;
    }


    player.screenRow = ((player.worldRow) >> 8) - vOff;
    player.screenCol = player.worldCol - hOff;



    if ((((player.worldRow) >> 8) + player.height) >= (vOff + 160)) {
        stopSoundB();
        playSoundB(koroneOw_data, koroneOw_length, 0);
        restartLevel3();
    }
}

void animatePlayer3() {

    if (!(player.aniState == SPRITEIDLE)) {
        player.prevAniState = player.aniState;
        player.aniState = SPRITEIDLE;
    }


    if (player.aniCounter % 8 == 0) {
        player.curFrame = ((player.curFrame + 1) % player.numFrames);
    }


    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))) && (player.worldCol + 5) > 24 && !leftCollision3()) {
        player.aniState = SPRITELEFT;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4))) && (player.worldCol + player.width + 8) < 216 && !rightCollision3()) {
        player.aniState = SPRITERIGHT;
    }

    if (!groundCollision3()) {
        if (player.aniState == SPRITELEFT) {
            player.aniState = SPRITEJUMPLEFT;
        } else if (player.aniState == SPRITERIGHT) {
            player.aniState = SPRITEJUMPRIGHT;
        }
    }

    if (groundCollision3()) {
        if (player.aniState == SPRITEJUMPLEFT) {
            player.aniState = SPRITELEFT;
        } else if (player.aniState == SPRITEJUMPRIGHT) {
            player.aniState = SPRITERIGHT;
        }
    }


    if (player.aniState == SPRITEIDLE) {
        player.curFrame = 0;
        player.aniState = player.prevAniState;
    } else {
        player.aniCounter++;
    }
}

void drawGame3() {
    drawPlayer3();
    drawSpikes3();
    drawPotatoes3();
    drawLives3();
    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000016) = vOff >> 1;
}

void drawPlayer3() {

    shadowOAM[0].attr0 = (0xFF & player.screenRow) | (0 << 13) | (0 << 14);
    shadowOAM[0].attr1 = (0x1FF & player.screenCol) | (2 << 14);
    shadowOAM[0].attr2 = ((0) << 12) | ((player.curFrame * 4)*32 + (player.aniState * 4));
}

void drawSpikes3() {

    for (int i = 0; i < 5; i++) {
        if (spikes[i].active) {
            shadowOAM[i+1].attr0 = (0xFF & spikes[i].screenRow) | (0 << 13) | (0 << 14);
            shadowOAM[i+1].attr1 = (0x1FF & spikes[i].screenCol) | (2 << 14);
            shadowOAM[i+1].attr2 = ((2) << 12) | ((16)*32 + (0));
        }
    }
}


void drawLives3() {


    shadowOAM[6].attr0 = (140) | (0 << 13) | (0 << 14);
    shadowOAM[6].attr1 = (0) | (1 << 14);
    shadowOAM[6].attr2 = ((4) << 12) | ((20)*32 + (22));

    shadowOAM[7].attr0 = (140) | (0 << 13) | (0 << 14);
    shadowOAM[7].attr1 = (8) | (1 << 14);
    shadowOAM[7].attr2 = ((4) << 12) | ((20)*32 + (16));

    shadowOAM[8].attr0 = (140) | (0 << 13) | (0 << 14);
    shadowOAM[8].attr1 = (15) | (1 << 14);
    shadowOAM[8].attr2 = ((4) << 12) | ((22)*32 + (10));

    shadowOAM[9].attr0 = (140) | (0 << 13) | (0 << 14);
    shadowOAM[9].attr1 = (22) | (1 << 14);
    shadowOAM[9].attr2 = ((4) << 12) | ((20)*32 + (8));

    shadowOAM[10].attr0 = (141) | (0 << 13) | (0 << 14);
    shadowOAM[10].attr1 = (29) | (1 << 14);
    shadowOAM[10].attr2 = ((4) << 12) | ((22)*32 + (4));

    for (int i = 0; i < livesRemaining; i++) {
        shadowOAM[11 + i].attr0 = (140) | (0 << 13) | (0 << 14);
        shadowOAM[11 + i].attr1 = (45 + (15 * i)) | (1 << 14);
        shadowOAM[11 + i].attr2 = ((3) << 12) | ((16)*32 + (8));
    }
}


void drawPotatoes3() {

    for (int i = 0; i < 3; i++) {
        if (potatoes[i].active) {
            shadowOAM[i+14].attr0 = (0xFF & potatoes[i].screenRow) | (0 << 13) | (0 << 14);
            shadowOAM[i+14].attr1 = (0x1FF & potatoes[i].screenCol) | (1 << 14);
            shadowOAM[i+14].attr2 = ((1) << 12) | ((16)*32 + (4));
        }


        if (potatoes[i].isCollected) {
            shadowOAM[i+14].attr0 = (2 << 8);
        }
    }
}

int groundCollision3() {

    if (level3CollisionMapBitmap[((player.screenRow + player.height - 1 + (vOff % 512)) * (256) + (player.screenCol + (8) + (hOff % 256)))] == 0) {
        return 1;
    }

    if (level3CollisionMapBitmap[((player.screenRow + player.height - 1 + (vOff % 512)) * (256) + (player.screenCol + (8) + (hOff % 256) + player.width))] == 0) {
        return 1;
    }
    return 0;
}

void restartLevel3() {
    hOff = 0;
    vOff = 352;
    player.worldRow = ((450) << 8);
    player.worldCol = 30;
    player.rdel = 1;
    player.screenRow = ((player.worldRow) >> 8) - vOff;
    player.screenCol = player.worldCol - hOff;
    livesRemaining--;

    initializeSpikes3();
    initializePotatoes3();
    playerScore3 = 0;
    hideSprites();
}


int level3WinCollision() {

    if (level3CollisionMapBitmap[((player.screenRow + player.height - 1 + (vOff % 512)) * (256) + (player.screenCol + (8) + (hOff % 256)))] == 0x03E0) {
        return 1;
    }

    if (level3CollisionMapBitmap[((player.screenRow + player.height - 1 + (vOff % 512)) * (256) + (player.screenCol + (8) + (hOff % 256) + player.width))] == 0x03E0) {
        return 1;
    }
    return 0;
}

int leftCollision3() {

    for (int i = 0; i < player.height - 3; i++) {
        if (level3CollisionMapBitmap[((player.screenRow + i + (vOff % 512)) * (256) + (player.screenCol + (hOff % 256) + (7)))] == 0) {
            return 1;
        }
    }
    return 0;
}

int rightCollision3() {

    for (int i = 0; i < player.height - 3; i++) {
        if (level3CollisionMapBitmap[((player.screenRow + i + (vOff % 512)) * (256) + (player.screenCol + player.width + (hOff % 256) + (8)))] == 0) {
            return 1;
        }
    }
    return 0;
}

int springCollision3() {

    if (level3CollisionMapBitmap[((player.screenRow + player.height - 1 + (vOff % 512)) * (256) + (player.screenCol + (8) + (hOff % 256)))] == 0x001F) {
        return 1;
    }

    if (level3CollisionMapBitmap[((player.screenRow + player.height - 1 + (vOff % 512)) * (256) + (player.screenCol + (8) + (hOff % 256) + player.width))] == 0x001F) {
        return 1;
    }
    return 0;
}

void springJump3() {
    player.rdel -= 1.05 * 1500;
    player.worldRow += player.rdel;
}
