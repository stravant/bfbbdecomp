#include "zCombo.h"

#include <types.h>

#include "../Core/x/xBase.h"
#include "../Core/x/xHudText.h"

struct widget_chunk : xBase
{
	xhud::text_widget w;
};

extern widget_chunk* comboHUD;

extern int32 comboCounter;
extern int32 comboLastCounter;
extern int32 comboPending;

extern float comboMaxTime;
extern float lbl_803CFBE4;
extern float comboTimer;

// func_8019590C
#pragma GLOBAL_ASM("asm/Game/zCombo.s", "fillCombo__FP12zComboReward")

// func_80195A00
#pragma GLOBAL_ASM("asm/Game/zCombo.s", "zCombo_Setup__Fv")

// func_80195C10
#if 1
#pragma GLOBAL_ASM("asm/Game/zCombo.s", "zCombo_Add__Fi")
#else
/* Can't figure out how to get the assignments to happen in the right order */
void zCombo_Add(int32 points)
{
	if (comboTimer < lbl_803CFBE4) {
		comboTimer = comboMaxTime;
		comboPending = points - 1;
	} else {
		comboTimer = comboMaxTime;
		comboCounter += points;
		if (comboPending != 0) {
			comboCounter += comboPending;
			comboPending = 0;
		}
	}
}
#endif

// func_80195C6C
void zComboHideMessage(xhud::widget& w, xhud::motive& motive)
{
    w.hide();
}

// func_80195C8C
void zCombo_HideImmediately()
{
	if (comboHUD != NULL) {
        comboHUD->w.text[4] = '\0';
    }
}

// func_80195CA4
#pragma GLOBAL_ASM("asm/Game/zCombo.s", "zCombo_Update__Ff")

// func_80195FDC
#pragma GLOBAL_ASM("asm/Game/zCombo.s", "visible__8ztextboxFv")
