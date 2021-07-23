
//{{BLOCK(level3Scene)

//======================================================================
//
//	level3Scene, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 114 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 3648 + 4096 = 8256
//
//	Time-stamp: 2021-05-04, 03:28:16
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL3SCENE_H
#define GRIT_LEVEL3SCENE_H

#define level3SceneTilesLen 3648
extern const unsigned short level3SceneTiles[1824];

#define level3SceneMapLen 4096
extern const unsigned short level3SceneMap[2048];

#define level3ScenePalLen 512
extern const unsigned short level3ScenePal[256];

#endif // GRIT_LEVEL3SCENE_H

//}}BLOCK(level3Scene)
