#include "mainMenu.h"
#include "myLib.h"

void updateMenu() {
    
    // forward traversal through the menu
    if (BUTTON_PRESSED(BUTTON_DOWN && level2LockState == UNLOCKED && currLevel == 1)) {
        currLevel++;
    }
    if (BUTTON_PRESSED(BUTTON_DOWN && level3LockState == UNLOCKED && currLevel == 2)) {
        currLevel++;
    }
    if (BUTTON_PRESSED(BUTTON_DOWN && level1LockState == UNLOCKED && currLevel == 3)) {
        currLevel = 1;
    }

    // backward traversal through the menu
    if (BUTTON_PRESSED(BUTTON_UP && level3LockState == UNLOCKED && currLevel == 1)) {
        currLevel = 3;
    }
    if (BUTTON_PRESSED(BUTTON_UP && currLevel == 2)) {
        currLevel--;
    }
    if (BUTTON_PRESSED(BUTTON_UP && currLevel == 3)) {
        currLevel--;
    }

    // navigate to hover over controls
    if (BUTTON_PRESSED(BUTTON_SELECT) && currLevel != 4) {
        currLevel = 4;
    }
    if (BUTTON_PRESSED(BUTTON_SELECT) && currLevel == 4) {
        currLevel = 1;
    }
}

void drawMenu() {
    switch (currLevel) {
        case 1 : 
            // display current selection
            shadowOAM[0].attr0 = 40 | ATTR0_REGULAR | ATTR0_WIDE | ATTR0_8BPP;
            shadowOAM[0].attr1 = 24 | ATTR1_LARGE;
            shadowOAM[0].attr2 = ATTR2_TILEID(0, 0);
            // display Korone icon
            shadowOAM[1].attr0 = 48 | ATTR0_SQUARE | ATTR0_8BPP;
            shadowOAM[1].attr1 = 144 | ATTR1_LARGE;
            shadowOAM[1].attr2 = ATTR2_TILEID(16, 0);
            break;
        case 2 :
            // display current selection
            shadowOAM[0].attr0 = 72 | ATTR0_REGULAR | ATTR0_WIDE | ATTR0_8BPP;
            shadowOAM[0].attr1 = 24 | ATTR1_LARGE;
            shadowOAM[0].attr2 = ATTR2_TILEID(0, 4);
            // display Fubuki icon
            shadowOAM[1].attr0 = 48 | ATTR0_SQUARE | ATTR0_8BPP;
            shadowOAM[1].attr1 = 144 | ATTR1_LARGE;
            shadowOAM[1].attr2 = ATTR2_TILEID(32, 8);
            break;
        case 3 :
            // display current selection
            shadowOAM[0].attr0 = 104 | ATTR0_REGULAR | ATTR0_WIDE | ATTR0_8BPP;
            shadowOAM[0].attr1 = 24 | ATTR1_LARGE;
            shadowOAM[0].attr2 = ATTR2_TILEID(0, 8);
            // display Okayu icon
            shadowOAM[1].attr0 = 48 | ATTR0_SQUARE | ATTR0_8BPP;
            shadowOAM[1].attr1 = 144 | ATTR1_LARGE;
            shadowOAM[1].attr2 = ATTR2_TILEID(64, 16);
            break;
        case 4 :
            // display current selection
            shadowOAM[0].attr0 = 136 | ATTR0_REGULAR | ATTR0_WIDE | ATTR0_8BPP;
            shadowOAM[0].attr1 = 24 | ATTR1_LARGE;
            shadowOAM[0].attr2 = ATTR2_TILEID(0, 12);
            break;
    }
}