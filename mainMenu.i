# 1 "mainMenu.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "mainMenu.c"
# 1 "mainMenu.h" 1
void updateMenu();
void drawMenu();


extern int level1LockState;
extern int level2LockState;
extern int level3LockState;
extern int currLevel;


enum {LOCKED, UNLOCKED};
# 2 "mainMenu.c" 2
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
# 3 "mainMenu.c" 2

void updateMenu() {


    if ((!(~(oldButtons) & ((1 << 7) && level2LockState == UNLOCKED && currLevel == 1)) && (~buttons & ((1 << 7) && level2LockState == UNLOCKED && currLevel == 1)))) {
        currLevel++;
    }
    if ((!(~(oldButtons) & ((1 << 7) && level3LockState == UNLOCKED && currLevel == 2)) && (~buttons & ((1 << 7) && level3LockState == UNLOCKED && currLevel == 2)))) {
        currLevel++;
    }
    if ((!(~(oldButtons) & ((1 << 7) && level1LockState == UNLOCKED && currLevel == 3)) && (~buttons & ((1 << 7) && level1LockState == UNLOCKED && currLevel == 3)))) {
        currLevel = 1;
    }


    if ((!(~(oldButtons) & ((1 << 6) && level3LockState == UNLOCKED && currLevel == 1)) && (~buttons & ((1 << 6) && level3LockState == UNLOCKED && currLevel == 1)))) {
        currLevel = 3;
    }
    if ((!(~(oldButtons) & ((1 << 6) && currLevel == 2)) && (~buttons & ((1 << 6) && currLevel == 2)))) {
        currLevel--;
    }
    if ((!(~(oldButtons) & ((1 << 6) && currLevel == 3)) && (~buttons & ((1 << 6) && currLevel == 3)))) {
        currLevel--;
    }


    if ((!(~(oldButtons) & ((1 << 2))) && (~buttons & ((1 << 2)))) && currLevel != 4) {
        currLevel = 4;
    }
    if ((!(~(oldButtons) & ((1 << 2))) && (~buttons & ((1 << 2)))) && currLevel == 4) {
        currLevel = 1;
    }
}

void drawMenu() {
    switch (currLevel) {
        case 1 :

            shadowOAM[0].attr0 = 40 | (0 << 8) | (1 << 14) | (1 << 13);
            shadowOAM[0].attr1 = 24 | (3 << 14);
            shadowOAM[0].attr2 = ((0)*32 + (0));

            shadowOAM[1].attr0 = 48 | (0 << 14) | (1 << 13);
            shadowOAM[1].attr1 = 144 | (3 << 14);
            shadowOAM[1].attr2 = ((0)*32 + (16));
            break;
        case 2 :

            shadowOAM[0].attr0 = 72 | (0 << 8) | (1 << 14) | (1 << 13);
            shadowOAM[0].attr1 = 24 | (3 << 14);
            shadowOAM[0].attr2 = ((4)*32 + (0));

            shadowOAM[1].attr0 = 48 | (0 << 14) | (1 << 13);
            shadowOAM[1].attr1 = 144 | (3 << 14);
            shadowOAM[1].attr2 = ((8)*32 + (32));
            break;
        case 3 :

            shadowOAM[0].attr0 = 104 | (0 << 8) | (1 << 14) | (1 << 13);
            shadowOAM[0].attr1 = 24 | (3 << 14);
            shadowOAM[0].attr2 = ((8)*32 + (0));

            shadowOAM[1].attr0 = 48 | (0 << 14) | (1 << 13);
            shadowOAM[1].attr1 = 144 | (3 << 14);
            shadowOAM[1].attr2 = ((16)*32 + (64));
            break;
        case 4 :

            shadowOAM[0].attr0 = 136 | (0 << 8) | (1 << 14) | (1 << 13);
            shadowOAM[0].attr1 = 24 | (3 << 14);
            shadowOAM[0].attr2 = ((12)*32 + (0));
            break;
    }
}
