#ifndef ZCOMBO_H
#define ZCOMBO_H

#include <types.h>
#include "../Core/x/xFont.h"

struct zComboReward
{
	int32 reward;
	int8* textName;
	uint32 rewardList[10];
	uint32 rewardNum;
	xTextAsset* textAsset;
};

void zCombo_Add(int);
void zCombo_HideImmediately();

#endif