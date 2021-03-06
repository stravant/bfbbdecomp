.include "macros.inc"

.if 0

.section .text  # 0x8015FF60 - 0x80160144

.global xJaw_FindData__FUi
xJaw_FindData__FUi:
/* 8015FF60 0015CD60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015FF64 0015CD64  7C 08 02 A6 */	mflr r0
/* 8015FF68 0015CD68  3C 80 4A 41 */	lis r4, 0x4A415720@ha
/* 8015FF6C 0015CD6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015FF70 0015CD70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015FF74 0015CD74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015FF78 0015CD78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8015FF7C 0015CD7C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8015FF80 0015CD80  7C 7C 1B 78 */	mr r28, r3
/* 8015FF84 0015CD84  38 64 57 20 */	addi r3, r4, 0x4A415720@l
/* 8015FF88 0015CD88  4B EE B8 91 */	bl xSTAssetCountByType__FUi
/* 8015FF8C 0015CD8C  7C 7E 1B 78 */	mr r30, r3
/* 8015FF90 0015CD90  3B A0 00 00 */	li r29, 0
/* 8015FF94 0015CD94  3F E0 4A 41 */	lis r31, 0x4a41
/* 8015FF98 0015CD98  48 00 00 68 */	b lbl_80160000
lbl_8015FF9C:
/* 8015FF9C 0015CD9C  7F A4 EB 78 */	mr r4, r29
/* 8015FFA0 0015CDA0  38 7F 57 20 */	addi r3, r31, 0x5720
/* 8015FFA4 0015CDA4  38 A0 00 00 */	li r5, 0
/* 8015FFA8 0015CDA8  4B EE B8 F9 */	bl xSTFindAssetByType__FUiiPUi
/* 8015FFAC 0015CDAC  80 A3 00 00 */	lwz r5, 0(r3)
/* 8015FFB0 0015CDB0  38 C3 00 04 */	addi r6, r3, 4
/* 8015FFB4 0015CDB4  7C C3 33 78 */	mr r3, r6
/* 8015FFB8 0015CDB8  38 80 00 00 */	li r4, 0
/* 8015FFBC 0015CDBC  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8015FFC0 0015CDC0  7C E6 02 14 */	add r7, r6, r0
/* 8015FFC4 0015CDC4  7C A9 03 A6 */	mtctr r5
/* 8015FFC8 0015CDC8  28 05 00 00 */	cmplwi r5, 0
/* 8015FFCC 0015CDCC  40 81 00 30 */	ble lbl_8015FFFC
lbl_8015FFD0:
/* 8015FFD0 0015CDD0  80 03 00 00 */	lwz r0, 0(r3)
/* 8015FFD4 0015CDD4  7C 1C 00 40 */	cmplw r28, r0
/* 8015FFD8 0015CDD8  40 82 00 18 */	bne lbl_8015FFF0
/* 8015FFDC 0015CDDC  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8015FFE0 0015CDE0  7C 66 02 14 */	add r3, r6, r0
/* 8015FFE4 0015CDE4  80 03 00 04 */	lwz r0, 4(r3)
/* 8015FFE8 0015CDE8  7C 67 02 14 */	add r3, r7, r0
/* 8015FFEC 0015CDEC  48 00 00 28 */	b lbl_80160014
lbl_8015FFF0:
/* 8015FFF0 0015CDF0  38 63 00 0C */	addi r3, r3, 0xc
/* 8015FFF4 0015CDF4  38 84 00 01 */	addi r4, r4, 1
/* 8015FFF8 0015CDF8  42 00 FF D8 */	bdnz lbl_8015FFD0
lbl_8015FFFC:
/* 8015FFFC 0015CDFC  3B BD 00 01 */	addi r29, r29, 1
lbl_80160000:
/* 80160000 0015CE00  7C 1D F0 00 */	cmpw r29, r30
/* 80160004 0015CE04  41 80 FF 98 */	blt lbl_8015FF9C
/* 80160008 0015CE08  7F 83 E3 78 */	mr r3, r28
/* 8016000C 0015CE0C  4B EE B5 D5 */	bl xSTAssetName__FUi
/* 80160010 0015CE10  38 60 00 00 */	li r3, 0
lbl_80160014:
/* 80160014 0015CE14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80160018 0015CE18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016001C 0015CE1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80160020 0015CE20  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80160024 0015CE24  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80160028 0015CE28  7C 08 03 A6 */	mtlr r0
/* 8016002C 0015CE2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80160030 0015CE30  4E 80 00 20 */	blr 

.global xJaw_EvalData__FPvf
xJaw_EvalData__FPvf:
/* 80160034 0015CE34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80160038 0015CE38  7C 08 02 A6 */	mflr r0
/* 8016003C 0015CE3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80160040 0015CE40  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80160044 0015CE44  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80160048 0015CE48  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016004C 0015CE4C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80160050 0015CE50  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80160054 0015CE54  7C 7D 1B 78 */	mr r29, r3
/* 80160058 0015CE58  83 C3 00 00 */	lwz r30, 0(r3)
/* 8016005C 0015CE5C  28 1E FF FF */	cmplwi r30, 0xffff
/* 80160060 0015CE60  40 81 00 24 */	ble lbl_80160084
/* 80160064 0015CE64  88 7D 00 03 */	lbz r3, 3(r29)
/* 80160068 0015CE68  88 1D 00 00 */	lbz r0, 0(r29)
/* 8016006C 0015CE6C  98 1D 00 03 */	stb r0, 3(r29)
/* 80160070 0015CE70  98 7D 00 00 */	stb r3, 0(r29)
/* 80160074 0015CE74  88 7D 00 02 */	lbz r3, 2(r29)
/* 80160078 0015CE78  88 1D 00 01 */	lbz r0, 1(r29)
/* 8016007C 0015CE7C  98 1D 00 02 */	stb r0, 2(r29)
/* 80160080 0015CE80  98 7D 00 01 */	stb r3, 1(r29)
lbl_80160084:
/* 80160084 0015CE84  C0 02 A9 A8 */	lfs f0, lbl_803CF328-_SDA2_BASE_(r2)
/* 80160088 0015CE88  EF E1 00 32 */	fmuls f31, f1, f0
/* 8016008C 0015CE8C  FC 20 F8 90 */	fmr f1, f31
/* 80160090 0015CE90  4B EA 6A E9 */	bl floorf__3stdFf
/* 80160094 0015CE94  FC 00 08 1E */	fctiwz f0, f1
/* 80160098 0015CE98  FC 20 F8 90 */	fmr f1, f31
/* 8016009C 0015CE9C  D8 01 00 08 */	stfd f0, 8(r1)
/* 801600A0 0015CEA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801600A4 0015CEA4  4B EA 6A D5 */	bl floorf__3stdFf
/* 801600A8 0015CEA8  2C 1F 00 00 */	cmpwi r31, 0
/* 801600AC 0015CEAC  EC BF 08 28 */	fsubs f5, f31, f1
/* 801600B0 0015CEB0  40 80 00 0C */	bge lbl_801600BC
/* 801600B4 0015CEB4  C0 22 A9 AC */	lfs f1, lbl_803CF32C-_SDA2_BASE_(r2)
/* 801600B8 0015CEB8  48 00 00 68 */	b lbl_80160120
lbl_801600BC:
/* 801600BC 0015CEBC  38 1E FF FF */	addi r0, r30, -1
/* 801600C0 0015CEC0  7C 1F 00 00 */	cmpw r31, r0
/* 801600C4 0015CEC4  41 80 00 0C */	blt lbl_801600D0
/* 801600C8 0015CEC8  C0 22 A9 AC */	lfs f1, lbl_803CF32C-_SDA2_BASE_(r2)
/* 801600CC 0015CECC  48 00 00 54 */	b lbl_80160120
lbl_801600D0:
/* 801600D0 0015CED0  38 BD 00 04 */	addi r5, r29, 4
/* 801600D4 0015CED4  3C 80 43 30 */	lis r4, 0x4330
/* 801600D8 0015CED8  7C 65 FA 14 */	add r3, r5, r31
/* 801600DC 0015CEDC  7C A5 F8 AE */	lbzx r5, r5, r31
/* 801600E0 0015CEE0  88 03 00 01 */	lbz r0, 1(r3)
/* 801600E4 0015CEE4  C0 02 A9 B0 */	lfs f0, lbl_803CF330-_SDA2_BASE_(r2)
/* 801600E8 0015CEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801600EC 0015CEEC  C8 62 A9 B8 */	lfd f3, lbl_803CF338-_SDA2_BASE_(r2)
/* 801600F0 0015CEF0  EC 80 28 28 */	fsubs f4, f0, f5
/* 801600F4 0015CEF4  90 81 00 10 */	stw r4, 0x10(r1)
/* 801600F8 0015CEF8  C0 02 A9 B4 */	lfs f0, lbl_803CF334-_SDA2_BASE_(r2)
/* 801600FC 0015CEFC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80160100 0015CF00  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80160104 0015CF04  EC 21 18 28 */	fsubs f1, f1, f3
/* 80160108 0015CF08  90 81 00 08 */	stw r4, 8(r1)
/* 8016010C 0015CF0C  C8 41 00 08 */	lfd f2, 8(r1)
/* 80160110 0015CF10  EC 25 00 72 */	fmuls f1, f5, f1
/* 80160114 0015CF14  EC 42 18 28 */	fsubs f2, f2, f3
/* 80160118 0015CF18  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 8016011C 0015CF1C  EC 21 00 24 */	fdivs f1, f1, f0
lbl_80160120:
/* 80160120 0015CF20  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80160124 0015CF24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80160128 0015CF28  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8016012C 0015CF2C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80160130 0015CF30  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80160134 0015CF34  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80160138 0015CF38  7C 08 03 A6 */	mtlr r0
/* 8016013C 0015CF3C  38 21 00 40 */	addi r1, r1, 0x40
/* 80160140 0015CF40  4E 80 00 20 */	blr 

.endif

.section .rodata 
/* SPECULATION: This seems to be located after zNPCTypeBossSB2 but before zNPCTypeBossPatrick */
.global lbl_80270004
lbl_80270004:
	.incbin "baserom.dol", 0x26CFE4, 0x4
.global lbl_80270008
lbl_80270008:
	.incbin "baserom.dol", 0x26CFE8, 0x7E8


.section .sdata2
lbl_803CF328:
	.incbin "baserom.dol", 0x2B8BC8, 0x4
lbl_803CF32C:
	.incbin "baserom.dol", 0x2B8BCC, 0x4
lbl_803CF330:
	.incbin "baserom.dol", 0x2B8BD0, 0x4
lbl_803CF334:
	.incbin "baserom.dol", 0x2B8BD4, 0x4
lbl_803CF338:
	.incbin "baserom.dol", 0x2B8BD8, 0x8
