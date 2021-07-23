
//{{BLOCK(startScreenBG)

//======================================================================
//
//	startScreenBG, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 336 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 21504 + 2048 = 24064
//
//	Time-stamp: 2021-05-04, 23:30:13
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREENBG_H
#define GRIT_STARTSCREENBG_H

#define startScreenBGTilesLen 21504
extern const unsigned short startScreenBGTiles[10752];

#define startScreenBGMapLen 2048
extern const unsigned short startScreenBGMap[1024];

#define startScreenBGPalLen 512
extern const unsigned short startScreenBGPal[256];

#endif // GRIT_STARTSCREENBG_H

//}}BLOCK(startScreenBG)
