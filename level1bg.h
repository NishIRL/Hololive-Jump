
//{{BLOCK(level1BG)

//======================================================================
//
//	level1BG, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 480 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 15360 + 4096 = 19968
//
//	Time-stamp: 2021-04-25, 15:33:45
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL1BG_H
#define GRIT_LEVEL1BG_H

#define level1BGTilesLen 15360
extern const unsigned short level1BGTiles[7680];

#define level1BGMapLen 4096
extern const unsigned short level1BGMap[2048];

#define level1BGPalLen 512
extern const unsigned short level1BGPal[256];

#endif // GRIT_LEVEL1BG_H

//}}BLOCK(level1BG)
