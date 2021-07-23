
//{{BLOCK(level1Scene)

//======================================================================
//
//	level1Scene, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 145 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 4640 + 4096 = 9248
//
//	Time-stamp: 2021-04-25, 15:32:55
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL1SCENE_H
#define GRIT_LEVEL1SCENE_H

#define level1SceneTilesLen 4640
extern const unsigned short level1SceneTiles[2320];

#define level1SceneMapLen 4096
extern const unsigned short level1SceneMap[2048];

#define level1ScenePalLen 512
extern const unsigned short level1ScenePal[256];

#endif // GRIT_LEVEL1SCENE_H

//}}BLOCK(level1Scene)
