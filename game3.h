typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int screenRow;
    int screenCol;
} PLAYERSPRITE3;

typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int screenRow;
    int screenCol;
    int active;
} SPIKESPRITE3;

typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int screenRow;
    int screenCol;
    int active;
    int isCollected;
} POTATOSPRITE3;

// constants
#define MAPHEIGHT3 512
#define MAPWIDTH3 256
#define SPIKECOUNT3 5
#define POTATOCOUNT3 3

// gravity constants and helpers
#define GRAVITY3 100 // affects max jump height
#define JUMPPOWER3 1500
#define SHIFTUP3(num) ((num) << 8)
#define SHIFTDOWN3(num) ((num) >> 8)

void updateGame3();
void updatePlayer3();
void updateSpikes3();
void updatePotatoes3();
void drawGame3();
void drawPlayer3();
void drawSpikes3();
void drawPotatoes3();
void drawLives3();
void initializeGame3();
void initializePlayer3();
void initializeSpikes3();
void initializePotatoes3();
int groundCollision3();
void restartLevel3();
int level3WinCollision();
int leftCollision3();
int rightCollision3();
void animatePlayer3();
void springJump3();
int springCollision3();