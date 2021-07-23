
//{{BLOCK(level3BG)

//======================================================================
//
//	level3BG, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 62 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 1984 + 4096 = 6592
//
//	Time-stamp: 2021-05-04, 02:55:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL3BG_H
#define GRIT_LEVEL3BG_H

#define level3BGTilesLen 1984
extern const unsigned short level3BGTiles[992];

#define level3BGMapLen 4096
extern const unsigned short level3BGMap[2048];

#define level3BGPalLen 512
extern const unsigned short level3BGPal[256];

#endif // GRIT_LEVEL3BG_H

//}}BLOCK(level3BG)
