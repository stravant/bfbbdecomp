.include "macros.inc"

.if 0

.section .text  # 0x80118934 - 0x80118A04

.global Init__7xVolumeFP12xVolumeAsset
Init__7xVolumeFP12xVolumeAsset:
/* 80118934 00115734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80118938 00115738  7C 08 02 A6 */	mflr r0
/* 8011893C 0011573C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80118940 00115740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80118944 00115744  7C 9F 23 78 */	mr r31, r4
/* 80118948 00115748  93 C1 00 08 */	stw r30, 8(r1)
/* 8011894C 0011574C  7C 7E 1B 78 */	mr r30, r3
/* 80118950 00115750  4B EF 0A B1 */	bl xBaseInit__FP5xBaseP10xBaseAsset
/* 80118954 00115754  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80118958 00115758  88 1E 00 05 */	lbz r0, 5(r30)
/* 8011895C 0011575C  28 00 00 00 */	cmplwi r0, 0
/* 80118960 00115760  41 82 00 14 */	beq lbl_80118974
/* 80118964 00115764  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80118968 00115768  38 03 00 64 */	addi r0, r3, 0x64
/* 8011896C 0011576C  90 1E 00 08 */	stw r0, 8(r30)
/* 80118970 00115770  48 00 00 0C */	b lbl_8011897C
lbl_80118974:
/* 80118974 00115774  38 00 00 00 */	li r0, 0
/* 80118978 00115778  90 1E 00 08 */	stw r0, 8(r30)
lbl_8011897C:
/* 8011897C 0011577C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80118980 00115780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80118984 00115784  83 C1 00 08 */	lwz r30, 8(r1)
/* 80118988 00115788  7C 08 03 A6 */	mtlr r0
/* 8011898C 0011578C  38 21 00 10 */	addi r1, r1, 0x10
/* 80118990 00115790  4E 80 00 20 */	blr 

.global Reset__7xVolumeFv
Reset__7xVolumeFv:
/* 80118994 00115794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80118998 00115798  7C 08 02 A6 */	mflr r0
/* 8011899C 0011579C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801189A0 001157A0  80 83 00 10 */	lwz r4, 0x10(r3)
/* 801189A4 001157A4  4B EF 0B 55 */	bl xBaseReset__FP5xBaseP10xBaseAsset
/* 801189A8 001157A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801189AC 001157AC  7C 08 03 A6 */	mtlr r0
/* 801189B0 001157B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801189B4 001157B4  4E 80 00 20 */	blr 

.global Save__7xVolumeFP7xSerial
Save__7xVolumeFP7xSerial:
/* 801189B8 001157B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801189BC 001157BC  7C 08 02 A6 */	mflr r0
/* 801189C0 001157C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801189C4 001157C4  4B EF 0A 89 */	bl xBaseSave__FP5xBaseP7xSerial
/* 801189C8 001157C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801189CC 001157CC  7C 08 03 A6 */	mtlr r0
/* 801189D0 001157D0  38 21 00 10 */	addi r1, r1, 0x10
/* 801189D4 001157D4  4E 80 00 20 */	blr 

.global Load__7xVolumeFP7xSerial
Load__7xVolumeFP7xSerial:
/* 801189D8 001157D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801189DC 001157DC  7C 08 02 A6 */	mflr r0
/* 801189E0 001157E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801189E4 001157E4  4B EF 0A B9 */	bl xBaseLoad__FP5xBaseP7xSerial
/* 801189E8 001157E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801189EC 001157EC  7C 08 03 A6 */	mtlr r0
/* 801189F0 001157F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801189F4 001157F4  4E 80 00 20 */	blr 

.global GetBound__7xVolumeFv
GetBound__7xVolumeFv:
/* 801189F8 001157F8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801189FC 001157FC  38 63 00 0C */	addi r3, r3, 0xc
/* 80118A00 00115800  4E 80 00 20 */	blr 

.endif

