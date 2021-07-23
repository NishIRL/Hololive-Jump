
//{{BLOCK(winScreenBG)

//======================================================================
//
//	winScreenBG, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 596 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 38144 + 2048 = 40704
//
//	Time-stamp: 2021-04-02, 18:04:35
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINSCREENBG_H
#define GRIT_WINSCREENBG_H

#define winScreenBGTilesLen 38144
extern const unsigned short winScreenBGTiles[19072];

#define winScreenBGMapLen 2048
extern const unsigned short winScreenBGMap[1024];

#define winScreenBGPalLen 512
extern const unsigned short winScreenBGPal[256];

#endif // GRIT_WINSCREENBG_H

//}}BLOCK(winScreenBG)
