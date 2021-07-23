
//{{BLOCK(controls)

//======================================================================
//
//	controls, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 389 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 24896 + 2048 = 27456
//
//	Time-stamp: 2021-05-04, 23:54:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CONTROLS_H
#define GRIT_CONTROLS_H

#define controlsTilesLen 24896
extern const unsigned short controlsTiles[12448];

#define controlsMapLen 2048
extern const unsigned short controlsMap[1024];

#define controlsPalLen 512
extern const unsigned short controlsPal[256];

#endif // GRIT_CONTROLS_H

//}}BLOCK(controls)
