
//{{BLOCK(level2BG)

//======================================================================
//
//	level2BG, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 359 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 11488 + 4096 = 16096
//
//	Time-stamp: 2021-05-03, 17:35:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL2BG_H
#define GRIT_LEVEL2BG_H

#define level2BGTilesLen 11488
extern const unsigned short level2BGTiles[5744];

#define level2BGMapLen 4096
extern const unsigned short level2BGMap[2048];

#define level2BGPalLen 512
extern const unsigned short level2BGPal[256];

#endif // GRIT_LEVEL2BG_H

//}}BLOCK(level2BG)
