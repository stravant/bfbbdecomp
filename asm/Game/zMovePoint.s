.include "macros.inc"

.if 0

.section .text  # 0x800A6BF8 - 0x800A6E9C

.global zMovePoint_GetMemPool__Fi
zMovePoint_GetMemPool__Fi:
/* 800A6BF8 000A39F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6BFC 000A39FC  7C 08 02 A6 */	mflr r0
/* 800A6C00 000A3A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6C04 000A3A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A6C08 000A3A08  7C 7F 1B 79 */	or. r31, r3, r3
/* 800A6C0C 000A3A0C  41 82 00 18 */	beq lbl_800A6C24
/* 800A6C10 000A3A10  1C 9F 00 30 */	mulli r4, r31, 0x30
/* 800A6C14 000A3A14  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 800A6C18 000A3A18  38 A0 00 00 */	li r5, 0
/* 800A6C1C 000A3A1C  4B F8 CD 25 */	bl xMemAlloc__FUiUii
/* 800A6C20 000A3A20  48 00 00 08 */	b lbl_800A6C28
lbl_800A6C24:
/* 800A6C24 000A3A24  38 60 00 00 */	li r3, 0
lbl_800A6C28:
/* 800A6C28 000A3A28  90 6D 90 50 */	stw r3, lbl_803CB950-_SDA_BASE_(r13)
/* 800A6C2C 000A3A2C  93 ED 90 54 */	stw r31, lbl_803CB954-_SDA_BASE_(r13)
/* 800A6C30 000A3A30  80 6D 90 50 */	lwz r3, lbl_803CB950-_SDA_BASE_(r13)
/* 800A6C34 000A3A34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A6C38 000A3A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6C3C 000A3A3C  7C 08 03 A6 */	mtlr r0
/* 800A6C40 000A3A40  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6C44 000A3A44  4E 80 00 20 */	blr 

.global zMovePointInit__FP10zMovePointP15xMovePointAsset
zMovePointInit__FP10zMovePointP15xMovePointAsset:
/* 800A6C48 000A3A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6C4C 000A3A4C  7C 08 02 A6 */	mflr r0
/* 800A6C50 000A3A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6C54 000A3A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A6C58 000A3A58  7C 9F 23 78 */	mr r31, r4
/* 800A6C5C 000A3A5C  93 C1 00 08 */	stw r30, 8(r1)
/* 800A6C60 000A3A60  7C 7E 1B 78 */	mr r30, r3
/* 800A6C64 000A3A64  4B F8 E8 31 */	bl xMovePointInit__FP10xMovePointP15xMovePointAsset
/* 800A6C68 000A3A68  3C 60 80 0A */	lis r3, zMovePointEventCB__FP5xBaseP5xBaseUiPCfP5xBase@ha
/* 800A6C6C 000A3A6C  38 03 6D 88 */	addi r0, r3, zMovePointEventCB__FP5xBaseP5xBaseUiPCfP5xBase@l
/* 800A6C70 000A3A70  90 1E 00 0C */	stw r0, 0xc(r30)
/* 800A6C74 000A3A74  88 1E 00 05 */	lbz r0, 5(r30)
/* 800A6C78 000A3A78  28 00 00 00 */	cmplwi r0, 0
/* 800A6C7C 000A3A7C  41 82 00 1C */	beq lbl_800A6C98
/* 800A6C80 000A3A80  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 800A6C84 000A3A84  54 03 10 3A */	slwi r3, r0, 2
/* 800A6C88 000A3A88  38 03 00 28 */	addi r0, r3, 0x28
/* 800A6C8C 000A3A8C  7C 1F 02 14 */	add r0, r31, r0
/* 800A6C90 000A3A90  90 1E 00 08 */	stw r0, 8(r30)
/* 800A6C94 000A3A94  48 00 00 0C */	b lbl_800A6CA0
lbl_800A6C98:
/* 800A6C98 000A3A98  38 00 00 00 */	li r0, 0
/* 800A6C9C 000A3A9C  90 1E 00 08 */	stw r0, 8(r30)
lbl_800A6CA0:
/* 800A6CA0 000A3AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6CA4 000A3AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A6CA8 000A3AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A6CAC 000A3AAC  7C 08 03 A6 */	mtlr r0
/* 800A6CB0 000A3AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6CB4 000A3AB4  4E 80 00 20 */	blr 

.global zMovePoint_GetInst__Fi
zMovePoint_GetInst__Fi:
/* 800A6CB8 000A3AB8  1C 03 00 30 */	mulli r0, r3, 0x30
/* 800A6CBC 000A3ABC  80 6D 90 50 */	lwz r3, lbl_803CB950-_SDA_BASE_(r13)
/* 800A6CC0 000A3AC0  7C 63 02 14 */	add r3, r3, r0
/* 800A6CC4 000A3AC4  4E 80 00 20 */	blr 

.global zMovePointSetup__FP10zMovePointP6zScene
zMovePointSetup__FP10zMovePointP6zScene:
/* 800A6CC8 000A3AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6CCC 000A3ACC  7C 08 02 A6 */	mflr r0
/* 800A6CD0 000A3AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6CD4 000A3AD4  4B F8 E8 D1 */	bl xMovePointSetup__FP10xMovePointP6xScene
/* 800A6CD8 000A3AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6CDC 000A3ADC  7C 08 03 A6 */	mtlr r0
/* 800A6CE0 000A3AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6CE4 000A3AE4  4E 80 00 20 */	blr 

.global zMovePoint_From_xAssetID__FUi
zMovePoint_From_xAssetID__FUi:
/* 800A6CE8 000A3AE8  80 0D 90 54 */	lwz r0, lbl_803CB954-_SDA_BASE_(r13)
/* 800A6CEC 000A3AEC  38 C0 00 00 */	li r6, 0
/* 800A6CF0 000A3AF0  80 AD 90 50 */	lwz r5, lbl_803CB950-_SDA_BASE_(r13)
/* 800A6CF4 000A3AF4  7C 09 03 A6 */	mtctr r0
/* 800A6CF8 000A3AF8  2C 00 00 00 */	cmpwi r0, 0
/* 800A6CFC 000A3AFC  40 81 00 24 */	ble lbl_800A6D20
lbl_800A6D00:
/* 800A6D00 000A3B00  80 85 00 10 */	lwz r4, 0x10(r5)
/* 800A6D04 000A3B04  80 04 00 00 */	lwz r0, 0(r4)
/* 800A6D08 000A3B08  7C 00 18 40 */	cmplw r0, r3
/* 800A6D0C 000A3B0C  40 82 00 0C */	bne lbl_800A6D18
/* 800A6D10 000A3B10  7C A6 2B 78 */	mr r6, r5
/* 800A6D14 000A3B14  48 00 00 0C */	b lbl_800A6D20
lbl_800A6D18:
/* 800A6D18 000A3B18  38 A5 00 30 */	addi r5, r5, 0x30
/* 800A6D1C 000A3B1C  42 00 FF E4 */	bdnz lbl_800A6D00
lbl_800A6D20:
/* 800A6D20 000A3B20  7C C3 33 78 */	mr r3, r6
/* 800A6D24 000A3B24  4E 80 00 20 */	blr 

.global zMovePointSave__FP10zMovePointP7xSerial
zMovePointSave__FP10zMovePointP7xSerial:
/* 800A6D28 000A3B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6D2C 000A3B2C  7C 08 02 A6 */	mflr r0
/* 800A6D30 000A3B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6D34 000A3B34  4B F8 E7 E9 */	bl xMovePointSave__FP10xMovePointP7xSerial
/* 800A6D38 000A3B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6D3C 000A3B3C  7C 08 03 A6 */	mtlr r0
/* 800A6D40 000A3B40  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6D44 000A3B44  4E 80 00 20 */	blr 

.global zMovePointLoad__FP10zMovePointP7xSerial
zMovePointLoad__FP10zMovePointP7xSerial:
/* 800A6D48 000A3B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6D4C 000A3B4C  7C 08 02 A6 */	mflr r0
/* 800A6D50 000A3B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6D54 000A3B54  4B F8 E7 E9 */	bl xMovePointLoad__FP10xMovePointP7xSerial
/* 800A6D58 000A3B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6D5C 000A3B5C  7C 08 03 A6 */	mtlr r0
/* 800A6D60 000A3B60  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6D64 000A3B64  4E 80 00 20 */	blr 

.global zMovePointReset__FP10zMovePoint
zMovePointReset__FP10zMovePoint:
/* 800A6D68 000A3B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6D6C 000A3B6C  7C 08 02 A6 */	mflr r0
/* 800A6D70 000A3B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6D74 000A3B74  4B F8 E7 E9 */	bl xMovePointReset__FP10xMovePoint
/* 800A6D78 000A3B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6D7C 000A3B7C  7C 08 03 A6 */	mtlr r0
/* 800A6D80 000A3B80  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6D84 000A3B84  4E 80 00 20 */	blr 

zMovePointEventCB__FP5xBaseP5xBaseUiPCfP5xBase:
/* 800A6D88 000A3B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6D8C 000A3B8C  7C 08 02 A6 */	mflr r0
/* 800A6D90 000A3B90  2C 05 00 26 */	cmpwi r5, 0x26
/* 800A6D94 000A3B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6D98 000A3B98  41 82 00 38 */	beq lbl_800A6DD0
/* 800A6D9C 000A3B9C  40 80 00 1C */	bge lbl_800A6DB8
/* 800A6DA0 000A3BA0  2C 05 00 1F */	cmpwi r5, 0x1f
/* 800A6DA4 000A3BA4  41 82 00 7C */	beq lbl_800A6E20
/* 800A6DA8 000A3BA8  40 80 00 78 */	bge lbl_800A6E20
/* 800A6DAC 000A3BAC  2C 05 00 0A */	cmpwi r5, 0xa
/* 800A6DB0 000A3BB0  41 82 00 38 */	beq lbl_800A6DE8
/* 800A6DB4 000A3BB4  48 00 00 6C */	b lbl_800A6E20
lbl_800A6DB8:
/* 800A6DB8 000A3BB8  2C 05 02 0F */	cmpwi r5, 0x20f
/* 800A6DBC 000A3BBC  41 82 00 38 */	beq lbl_800A6DF4
/* 800A6DC0 000A3BC0  40 80 00 60 */	bge lbl_800A6E20
/* 800A6DC4 000A3BC4  2C 05 00 28 */	cmpwi r5, 0x28
/* 800A6DC8 000A3BC8  40 80 00 58 */	bge lbl_800A6E20
/* 800A6DCC 000A3BCC  48 00 00 10 */	b lbl_800A6DDC
lbl_800A6DD0:
/* 800A6DD0 000A3BD0  38 00 00 01 */	li r0, 1
/* 800A6DD4 000A3BD4  98 04 00 24 */	stb r0, 0x24(r4)
/* 800A6DD8 000A3BD8  48 00 00 48 */	b lbl_800A6E20
lbl_800A6DDC:
/* 800A6DDC 000A3BDC  38 00 00 00 */	li r0, 0
/* 800A6DE0 000A3BE0  98 04 00 24 */	stb r0, 0x24(r4)
/* 800A6DE4 000A3BE4  48 00 00 3C */	b lbl_800A6E20
lbl_800A6DE8:
/* 800A6DE8 000A3BE8  7C 83 23 78 */	mr r3, r4
/* 800A6DEC 000A3BEC  4B FF FF 7D */	bl zMovePointReset__FP10zMovePoint
/* 800A6DF0 000A3BF0  48 00 00 30 */	b lbl_800A6E20
lbl_800A6DF4:
/* 800A6DF4 000A3BF4  80 64 00 14 */	lwz r3, 0x14(r4)
/* 800A6DF8 000A3BF8  28 03 00 00 */	cmplwi r3, 0
/* 800A6DFC 000A3BFC  41 82 00 24 */	beq lbl_800A6E20
/* 800A6E00 000A3C00  C0 26 00 00 */	lfs f1, 0(r6)
/* 800A6E04 000A3C04  C0 02 93 C0 */	lfs f0, lbl_803CDD40-_SDA2_BASE_(r2)
/* 800A6E08 000A3C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A6E0C 000A3C0C  40 80 00 10 */	bge lbl_800A6E1C
/* 800A6E10 000A3C10  C0 22 93 C4 */	lfs f1, lbl_803CDD44-_SDA2_BASE_(r2)
/* 800A6E14 000A3C14  48 0D A9 E5 */	bl NPCC_MakeASplash__FPC5xVec3f
/* 800A6E18 000A3C18  48 00 00 08 */	b lbl_800A6E20
lbl_800A6E1C:
/* 800A6E1C 000A3C1C  48 0D A9 DD */	bl NPCC_MakeASplash__FPC5xVec3f
lbl_800A6E20:
/* 800A6E20 000A3C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6E24 000A3C24  38 60 00 01 */	li r3, 1
/* 800A6E28 000A3C28  7C 08 03 A6 */	mtlr r0
/* 800A6E2C 000A3C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6E30 000A3C30  4E 80 00 20 */	blr 

.global zMovePointGetNext__FPC10zMovePointPC10zMovePointPP10zMovePointP5xVec3
zMovePointGetNext__FPC10zMovePointPC10zMovePointPP10zMovePointP5xVec3:
/* 800A6E34 000A3C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6E38 000A3C38  7C 08 02 A6 */	mflr r0
/* 800A6E3C 000A3C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6E40 000A3C40  4B F8 E9 79 */	bl xMovePointGetNext__FPC10xMovePointPC10xMovePointPP10xMovePointP5xVec3
/* 800A6E44 000A3C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6E48 000A3C48  7C 08 03 A6 */	mtlr r0
/* 800A6E4C 000A3C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6E50 000A3C50  4E 80 00 20 */	blr 

.global zMovePointGetPos__FPC10zMovePoint
zMovePointGetPos__FPC10zMovePoint:
/* 800A6E54 000A3C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6E58 000A3C58  7C 08 02 A6 */	mflr r0
/* 800A6E5C 000A3C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6E60 000A3C60  4B F8 EA 85 */	bl xMovePointGetPos__FPC10xMovePoint
/* 800A6E64 000A3C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6E68 000A3C68  7C 08 03 A6 */	mtlr r0
/* 800A6E6C 000A3C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6E70 000A3C70  4E 80 00 20 */	blr 

.global zMovePointGetDelay__FPC10zMovePoint
zMovePointGetDelay__FPC10zMovePoint:
/* 800A6E74 000A3C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6E78 000A3C78  7C 08 02 A6 */	mflr r0
/* 800A6E7C 000A3C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6E80 000A3C80  48 00 00 15 */	bl xMovePointGetDelay__FPC10xMovePoint
/* 800A6E84 000A3C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6E88 000A3C88  7C 08 03 A6 */	mtlr r0
/* 800A6E8C 000A3C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6E90 000A3C90  4E 80 00 20 */	blr 

.global xMovePointGetDelay__FPC10xMovePoint
xMovePointGetDelay__FPC10xMovePoint:
/* 800A6E94 000A3C94  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 800A6E98 000A3C98  4E 80 00 20 */	blr 

.endif

.section .sbss
lbl_803CB950:
	.skip 0x4
lbl_803CB954:
	.skip 0x4

.section .sdata2
lbl_803CDD40:
	.incbin "baserom.dol", 0x2B75E0, 0x4
lbl_803CDD44:
	.incbin "baserom.dol", 0x2B75E4, 0x4
