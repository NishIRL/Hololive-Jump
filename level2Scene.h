
//{{BLOCK(level2Scene)

//======================================================================
//
//	level2Scene, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 75 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 2400 + 4096 = 7008
//
//	Time-stamp: 2021-05-03, 20:59:15
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL2SCENE_H
#define GRIT_LEVEL2SCENE_H

#define level2SceneTilesLen 2400
extern const unsigned short level2SceneTiles[1200];

#define level2SceneMapLen 4096
extern const unsigned short level2SceneMap[2048];

#define level2ScenePalLen 512
extern const unsigned short level2ScenePal[256];

#endif // GRIT_LEVEL2SCENE_H

//}}BLOCK(level2Scene)
