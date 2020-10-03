#include "zMain.h"

#include "zGlobals.h"
#include "zVar.h"
#include "zAssetTypes.h"
#include "zDispatcher.h"
#include "zParCmd.h"
#include "zEntPickup.h"
#include "zCameraTweak.h"
#include "zShrapnel.h"
#include "zNPCMgr.h"

#include "../Core/p2/iSystem.h"
#include "../Core/x/xMemMgr.h"
#include "../Core/x/xFont.h"
#include "../Core/x/xTRC.h"
#include "../Core/p2/iTime.h"
#include "../Core/x/xutil.h"
#include "../Core/x/xserializer.h"
#include "../Core/x/xScrFx.h"
#include "../Core/x/xFX.h"
#include "../Core/x/xParMgr.h"
#include "../Core/p2/iEnv.h"
#include "../Core/x/xPad.h"
#include "../Core/x/xsavegame.h"
#include "../Core/x/xDebug.h"
#include "../Core/x/xBehaveMgr.h"

#include <string.h>

extern char lbl_8025D494[];
extern st_SERIAL_PERCID_SIZE g_xser_sizeinfo[3];

#ifdef MATCHING
#define static static
#else
#define static
#endif

static void zMainOutputMgrSetup();
static void zMainMemLvlChkCB();
static void zMainInitGlobals();
static void zMainLoadFontHIP();
void zMainFirstScreen(int32 mode);
void zMainShowProgressBar();
static void zMainReadINI();
static void zMainLoop();

#ifdef NONMATCHING
extern "C" {
void main()
{
    memset(&globals, 0, sizeof(globals));

    globals.firstStartPressed = 1;

    uint32 options = 0;
    iSystemInit(options);

    zMainOutputMgrSetup();
    xMemRegisterBaseNotifyFunc(zMainMemLvlChkCB);
    zMainInitGlobals();
    var_init();
    zAssetStartup();
    zMainLoadFontHIP();
    xfont::init();
    zMainFirstScreen(1);

    zMainShowProgressBar();

    xTRCInit();
    zMainReadINI();
    iFuncProfileParse(lbl_8025D494, globals.profile);
    xUtilStartup();
    xSerialStartup(128, g_xser_sizeinfo);
    zDispatcher_Startup();
    xScrFxInit();
    xFXStartup();

    zMainShowProgressBar();

    xParMgrInit();
    zParCmdInit();
    iEnvStartup();
    zEntPickup_Startup();
    zCameraTweakGlobal_Init();

    globals.option_vibration = 1;
    globals.pad0 = xPadEnable(globals.currentActivePad);
    globals.pad1 = NULL;
    gDebugPad = NULL;

    xPadRumbleEnable(globals.currentActivePad, globals.option_vibration);
    xSGStartup();
    xDebugTimestampScreen();
    zShrapnel_GameInit();

    zMainShowProgressBar();

    xBehaveMgr_Startup();
    zNPCMgr_Startup();

    zMainLoop();

    zNPCMgr_Shutdown();
    xBehaveMgr_Shutdown();
    zAssetShutdown();
    xFXShutdown();
    zDispatcher_Shutdown();
    xSGShutdown();
    xSerialShutdown();
    xUtilShutdown();
    iSystemExit();
}
}
#else
#pragma GLOBAL_ASM("asm/Game/zMain.s", "main")
#endif

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainOutputMgrSetup__Fv")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainInitGlobals__Fv")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "ParseFloatList__FPfPci")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zLedgeAdjust__FP16zLedgeGrabParams")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainParseINIGlobals__FP8xIniFile")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainMemLvlChkCB__Fv")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainShowProgressBar__Fv")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainLoop__Fv")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainReadINI__Fv")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainFirstScreen__Fi")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainMemCardSpaceQuery__Fv")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainMemCardQueryPost__Fiiii")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainMemCardRenderText__FPCcb")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "zMainLoadFontHIP__Fv")

#pragma GLOBAL_ASM("asm/Game/zMain.s", "iEnvStartup__Fv")