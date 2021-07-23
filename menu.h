
//{{BLOCK(menu)

//======================================================================
//
//	menu, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 559 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 35776 + 2048 = 38336
//
//	Time-stamp: 2021-04-01, 23:27:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MENU_H
#define GRIT_MENU_H

#define menuTilesLen 35776
extern const unsigned short menuTiles[17888];

#define menuMapLen 2048
extern const unsigned short menuMap[1024];

#define menuPalLen 512
extern const unsigned short menuPal[256];

#endif // GRIT_MENU_H

//}}BLOCK(menu)
