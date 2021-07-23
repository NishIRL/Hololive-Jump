void updateMenu();
void drawMenu();

// level lock states
extern int level1LockState;
extern int level2LockState;
extern int level3LockState;
extern int currLevel;

// enum specifying the locked/unlocked state of a level
enum {LOCKED, UNLOCKED};