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
} PLAYERSPRITE2;

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
} SPIKESPRITE2;

typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int screenRow;
    int screenCol;
    int active;
    int isCollected;
} POTATOSPRITE2;

// constants
#define MAPHEIGHT2 512
#define MAPWIDTH2 256
#define SPIKECOUNT2 5
#define POTATOCOUNT2 3

// gravity constants and helpers
#define GRAVITY2 100 // affects max jump height
#define JUMPPOWER2 1500
#define SHIFTUP2(num) ((num) << 8)
#define SHIFTDOWN2(num) ((num) >> 8)

void updateGame2();
void updatePlayer2();
void updateSpikes2();
void updatePotatoes2();
void drawGame2();
void drawPlayer2();
void drawSpikes2();
void drawPotatoes2();
void drawLives2();
void initializeGame2();
void initializePlayer2();
void initializeSpikes2();
void initializePotatoes2();
int groundCollision2();
void restartLevel2();
int level2WinCollision();
int leftCollision2();
int rightCollision2();
void animatePlayer2();
void springJump2();
int springCollision2();