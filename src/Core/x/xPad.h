#ifndef XPAD_H
#define XPAD_H

struct _tagxPad
{
};

extern _tagxPad* gDebugPad;

_tagxPad* xPadEnable(int32 idx);
void xPadRumbleEnable(int32 idx, int32 enable);

#endif