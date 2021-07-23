
//{{BLOCK(pauseScreenBG)

//======================================================================
//
//	pauseScreenBG, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 596 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 38144 + 2048 = 40704
//
//	Time-stamp: 2021-04-02, 18:00:30
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESCREENBG_H
#define GRIT_PAUSESCREENBG_H

#define pauseScreenBGTilesLen 38144
extern const unsigned short pauseScreenBGTiles[19072];

#define pauseScreenBGMapLen 2048
extern const unsigned short pauseScreenBGMap[1024];

#define pauseScreenBGPalLen 512
extern const unsigned short pauseScreenBGPal[256];

#endif // GRIT_PAUSESCREENBG_H

//}}BLOCK(pauseScreenBG)
