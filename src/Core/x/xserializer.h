#ifndef XSERIALIZER_H
#define XSERIALIZER_H

#include <types.h>

struct xSerial
{
    int32 Write_b1(int32 bits);
    int32 Write(uint8 data);
    int32 Write(int16 data);
    int32 Read_b1(int32* bits);
    int32 Read(uint8* buf);
    int32 Read(int16* buf);
};

struct st_SERIAL_PERCID_SIZE
{
    uint32 idtag;
    int32 needsize;
};

int32 xSerialStartup(int32 count, st_SERIAL_PERCID_SIZE* sizeinfo);
int32 xSerialShutdown();

#endif