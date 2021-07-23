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
} PLAYERSPRITE;

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
} SPIKESPRITE;

typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int screenRow;
    int screenCol;
    int active;
    int isCollected;
} POTATOSPRITE;

// constants
#define MAPHEIGHT 512
#define MAPWIDTH 256
#define SPIKECOUNT 5
#define POTATOCOUNT 3

// gravity constants and helpers
#define GRAVITY 100 // affects max jump height
#define JUMPPOWER 1500
#define SHIFTUP(num) ((num) << 8)
#define SHIFTDOWN(num) ((num) >> 8)

void updateGame();
void updatePlayer();
void updateSpikes();
void updatePotatoes();
void drawGame();
void drawPlayer();
void drawSpikes();
void drawPotatoes();
void drawLives();
void initializeGame();
void initializePlayer();
void initializeSpikes();
void initializePotatoes();
int groundCollision();
void restartLevel();
int level1WinCollision();
int leftCollision();
int rightCollision();
void animatePlayer();
void springJump();