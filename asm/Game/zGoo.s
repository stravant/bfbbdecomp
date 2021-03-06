.include "macros.inc"

.if 0

.section .text  # 0x80123740 - 0x80123B1C

.global zGooInit__Fi
zGooInit__Fi:
/* 80123740 00120540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80123744 00120544  7C 08 02 A6 */	mflr r0
/* 80123748 00120548  38 A0 00 00 */	li r5, 0
/* 8012374C 0012054C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80123750 00120550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80123754 00120554  7C 7F 1B 78 */	mr r31, r3
/* 80123758 00120558  1C 9F 00 0C */	mulli r4, r31, 0xc
/* 8012375C 0012055C  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 80123760 00120560  4B F1 01 E1 */	bl xMemAlloc__FUiUii
/* 80123764 00120564  90 6D 95 50 */	stw r3, lbl_803CBE50-_SDA_BASE_(r13)
/* 80123768 00120568  93 ED 95 54 */	stw r31, lbl_803CBE54-_SDA_BASE_(r13)
/* 8012376C 0012056C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80123770 00120570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80123774 00120574  7C 08 03 A6 */	mtlr r0
/* 80123778 00120578  38 21 00 10 */	addi r1, r1, 0x10
/* 8012377C 0012057C  4E 80 00 20 */	blr 

.global zGooExit__Fv
zGooExit__Fv:
/* 80123780 00120580  38 00 00 00 */	li r0, 0
/* 80123784 00120584  90 0D 95 50 */	stw r0, lbl_803CBE50-_SDA_BASE_(r13)
/* 80123788 00120588  90 0D 95 54 */	stw r0, lbl_803CBE54-_SDA_BASE_(r13)
/* 8012378C 0012058C  90 0D 95 58 */	stw r0, lbl_803CBE58-_SDA_BASE_(r13)
/* 80123790 00120590  4E 80 00 20 */	blr 

.global zGooAdd__FP4xEntfi
zGooAdd__FP4xEntfi:
/* 80123794 00120594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80123798 00120598  7C 08 02 A6 */	mflr r0
/* 8012379C 0012059C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801237A0 001205A0  80 ED 95 50 */	lwz r7, lbl_803CBE50-_SDA_BASE_(r13)
/* 801237A4 001205A4  80 CD 95 58 */	lwz r6, lbl_803CBE58-_SDA_BASE_(r13)
/* 801237A8 001205A8  7C E5 3B 78 */	mr r5, r7
/* 801237AC 001205AC  7C C9 03 A6 */	mtctr r6
/* 801237B0 001205B0  2C 06 00 00 */	cmpwi r6, 0
/* 801237B4 001205B4  40 81 00 20 */	ble lbl_801237D4
lbl_801237B8:
/* 801237B8 001205B8  80 05 00 08 */	lwz r0, 8(r5)
/* 801237BC 001205BC  7C 00 18 40 */	cmplw r0, r3
/* 801237C0 001205C0  40 82 00 0C */	bne lbl_801237CC
/* 801237C4 001205C4  38 60 00 01 */	li r3, 1
/* 801237C8 001205C8  48 00 00 58 */	b lbl_80123820
lbl_801237CC:
/* 801237CC 001205CC  38 A5 00 0C */	addi r5, r5, 0xc
/* 801237D0 001205D0  42 00 FF E8 */	bdnz lbl_801237B8
lbl_801237D4:
/* 801237D4 001205D4  80 0D 95 54 */	lwz r0, lbl_803CBE54-_SDA_BASE_(r13)
/* 801237D8 001205D8  7C 06 00 00 */	cmpw r6, r0
/* 801237DC 001205DC  41 80 00 0C */	blt lbl_801237E8
/* 801237E0 001205E0  38 60 00 00 */	li r3, 0
/* 801237E4 001205E4  48 00 00 3C */	b lbl_80123820
lbl_801237E8:
/* 801237E8 001205E8  1C 06 00 0C */	mulli r0, r6, 0xc
/* 801237EC 001205EC  7C A7 02 14 */	add r5, r7, r0
/* 801237F0 001205F0  D0 25 00 04 */	stfs f1, 4(r5)
/* 801237F4 001205F4  D0 25 00 00 */	stfs f1, 0(r5)
/* 801237F8 001205F8  90 65 00 08 */	stw r3, 8(r5)
/* 801237FC 001205FC  80 AD 95 58 */	lwz r5, lbl_803CBE58-_SDA_BASE_(r13)
/* 80123800 00120600  38 05 00 01 */	addi r0, r5, 1
/* 80123804 00120604  90 0D 95 58 */	stw r0, lbl_803CBE58-_SDA_BASE_(r13)
/* 80123808 00120608  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8012380C 0012060C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80123810 00120610  28 03 00 00 */	cmplwi r3, 0
/* 80123814 00120614  41 82 00 08 */	beq lbl_8012381C
/* 80123818 00120618  4B F6 F7 7D */	bl zFXGooEnable__FP8RpAtomici
lbl_8012381C:
/* 8012381C 0012061C  38 60 00 01 */	li r3, 1
lbl_80123820:
/* 80123820 00120620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80123824 00120624  7C 08 03 A6 */	mtlr r0
/* 80123828 00120628  38 21 00 10 */	addi r1, r1, 0x10
/* 8012382C 0012062C  4E 80 00 20 */	blr 

.global zGooIs__FP4xEntRfUi
zGooIs__FP4xEntRfUi:
/* 80123830 00120630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80123834 00120634  7C 08 02 A6 */	mflr r0
/* 80123838 00120638  38 E0 00 00 */	li r7, 0
/* 8012383C 0012063C  39 00 00 00 */	li r8, 0
/* 80123840 00120640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80123844 00120644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80123848 00120648  93 C1 00 08 */	stw r30, 8(r1)
/* 8012384C 0012064C  7C 9E 23 78 */	mr r30, r4
/* 80123850 00120650  80 CD 95 50 */	lwz r6, lbl_803CBE50-_SDA_BASE_(r13)
/* 80123854 00120654  80 0D 95 58 */	lwz r0, lbl_803CBE58-_SDA_BASE_(r13)
/* 80123858 00120658  7C C4 33 78 */	mr r4, r6
/* 8012385C 0012065C  7C 09 03 A6 */	mtctr r0
/* 80123860 00120660  2C 00 00 00 */	cmpwi r0, 0
/* 80123864 00120664  40 81 00 38 */	ble lbl_8012389C
lbl_80123868:
/* 80123868 00120668  80 04 00 08 */	lwz r0, 8(r4)
/* 8012386C 0012066C  7C 03 00 40 */	cmplw r3, r0
/* 80123870 00120670  40 82 00 20 */	bne lbl_80123890
/* 80123874 00120674  1C 08 00 0C */	mulli r0, r8, 0xc
/* 80123878 00120678  38 E0 00 01 */	li r7, 1
/* 8012387C 0012067C  7C 86 02 14 */	add r4, r6, r0
/* 80123880 00120680  C0 04 00 04 */	lfs f0, 4(r4)
/* 80123884 00120684  7C 06 05 2E */	stfsx f0, r6, r0
/* 80123888 00120688  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8012388C 0012068C  48 00 00 10 */	b lbl_8012389C
lbl_80123890:
/* 80123890 00120690  38 84 00 0C */	addi r4, r4, 0xc
/* 80123894 00120694  39 08 00 01 */	addi r8, r8, 1
/* 80123898 00120698  42 00 FF D0 */	bdnz lbl_80123868
lbl_8012389C:
/* 8012389C 0012069C  2C 07 00 00 */	cmpwi r7, 0
/* 801238A0 001206A0  41 82 00 30 */	beq lbl_801238D0
/* 801238A4 001206A4  1F E8 00 0C */	mulli r31, r8, 0xc
/* 801238A8 001206A8  80 0D 95 50 */	lwz r0, lbl_803CBE50-_SDA_BASE_(r13)
/* 801238AC 001206AC  7F C4 F3 78 */	mr r4, r30
/* 801238B0 001206B0  7C C0 FA 14 */	add r6, r0, r31
/* 801238B4 001206B4  C0 06 00 04 */	lfs f0, 4(r6)
/* 801238B8 001206B8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801238BC 001206BC  4B F7 09 85 */	bl zFXGooIs__FP4xEntRfUi
/* 801238C0 001206C0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801238C4 001206C4  7C 67 1B 78 */	mr r7, r3
/* 801238C8 001206C8  80 8D 95 50 */	lwz r4, lbl_803CBE50-_SDA_BASE_(r13)
/* 801238CC 001206CC  7C 04 FD 2E */	stfsx f0, r4, r31
lbl_801238D0:
/* 801238D0 001206D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801238D4 001206D4  7C E3 3B 78 */	mr r3, r7
/* 801238D8 001206D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801238DC 001206DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801238E0 001206E0  7C 08 03 A6 */	mtlr r0
/* 801238E4 001206E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801238E8 001206E8  4E 80 00 20 */	blr 

.global zGooCollsBegin__Fv
zGooCollsBegin__Fv:
/* 801238EC 001206EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801238F0 001206F0  7C 08 02 A6 */	mflr r0
/* 801238F4 001206F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801238F8 001206F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801238FC 001206FC  3B E0 00 00 */	li r31, 0
/* 80123900 00120700  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80123904 00120704  3B C0 00 00 */	li r30, 0
/* 80123908 00120708  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012390C 0012070C  48 00 00 64 */	b lbl_80123970
lbl_80123910:
/* 80123910 00120710  80 6D 95 50 */	lwz r3, lbl_803CBE50-_SDA_BASE_(r13)
/* 80123914 00120714  38 1F 00 08 */	addi r0, r31, 8
/* 80123918 00120718  38 81 00 08 */	addi r4, r1, 8
/* 8012391C 0012071C  38 A0 00 00 */	li r5, 0
/* 80123920 00120720  7F A3 00 2E */	lwzx r29, r3, r0
/* 80123924 00120724  7F A3 EB 78 */	mr r3, r29
/* 80123928 00120728  4B FF FF 09 */	bl zGooIs__FP4xEntRfUi
/* 8012392C 0012072C  81 9D 00 B0 */	lwz r12, 0xb0(r29)
/* 80123930 00120730  28 0C 00 00 */	cmplwi r12, 0
/* 80123934 00120734  41 82 00 34 */	beq lbl_80123968
/* 80123938 00120738  C0 22 A0 C8 */	lfs f1, lbl_803CEA48-_SDA2_BASE_(r2)
/* 8012393C 0012073C  7F A3 EB 78 */	mr r3, r29
/* 80123940 00120740  38 81 00 0C */	addi r4, r1, 0xc
/* 80123944 00120744  38 A0 00 00 */	li r5, 0
/* 80123948 00120748  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8012394C 0012074C  80 CD 95 50 */	lwz r6, lbl_803CBE50-_SDA_BASE_(r13)
/* 80123950 00120750  7C 06 FC 2E */	lfsx f0, r6, r31
/* 80123954 00120754  FC 00 00 50 */	fneg f0, f0
/* 80123958 00120758  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8012395C 0012075C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80123960 00120760  7D 89 03 A6 */	mtctr r12
/* 80123964 00120764  4E 80 04 21 */	bctrl 
lbl_80123968:
/* 80123968 00120768  3B FF 00 0C */	addi r31, r31, 0xc
/* 8012396C 0012076C  3B DE 00 01 */	addi r30, r30, 1
lbl_80123970:
/* 80123970 00120770  80 0D 95 58 */	lwz r0, lbl_803CBE58-_SDA_BASE_(r13)
/* 80123974 00120774  7C 1E 00 00 */	cmpw r30, r0
/* 80123978 00120778  41 80 FF 98 */	blt lbl_80123910
/* 8012397C 0012077C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80123980 00120780  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80123984 00120784  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80123988 00120788  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8012398C 0012078C  7C 08 03 A6 */	mtlr r0
/* 80123990 00120790  38 21 00 30 */	addi r1, r1, 0x30
/* 80123994 00120794  4E 80 00 20 */	blr 

.global zGooCollsEnd__Fv
zGooCollsEnd__Fv:
/* 80123998 00120798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012399C 0012079C  7C 08 02 A6 */	mflr r0
/* 801239A0 001207A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801239A4 001207A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801239A8 001207A8  3B E0 00 00 */	li r31, 0
/* 801239AC 001207AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801239B0 001207B0  3B C0 00 00 */	li r30, 0
/* 801239B4 001207B4  48 00 00 48 */	b lbl_801239FC
lbl_801239B8:
/* 801239B8 001207B8  80 0D 95 50 */	lwz r0, lbl_803CBE50-_SDA_BASE_(r13)
/* 801239BC 001207BC  7C C0 FA 14 */	add r6, r0, r31
/* 801239C0 001207C0  80 66 00 08 */	lwz r3, 8(r6)
/* 801239C4 001207C4  81 83 00 B0 */	lwz r12, 0xb0(r3)
/* 801239C8 001207C8  28 0C 00 00 */	cmplwi r12, 0
/* 801239CC 001207CC  41 82 00 28 */	beq lbl_801239F4
/* 801239D0 001207D0  C0 22 A0 C8 */	lfs f1, lbl_803CEA48-_SDA2_BASE_(r2)
/* 801239D4 001207D4  38 81 00 08 */	addi r4, r1, 8
/* 801239D8 001207D8  38 A0 00 00 */	li r5, 0
/* 801239DC 001207DC  D0 21 00 08 */	stfs f1, 8(r1)
/* 801239E0 001207E0  C0 06 00 00 */	lfs f0, 0(r6)
/* 801239E4 001207E4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801239E8 001207E8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801239EC 001207EC  7D 89 03 A6 */	mtctr r12
/* 801239F0 001207F0  4E 80 04 21 */	bctrl 
lbl_801239F4:
/* 801239F4 001207F4  3B FF 00 0C */	addi r31, r31, 0xc
/* 801239F8 001207F8  3B DE 00 01 */	addi r30, r30, 1
lbl_801239FC:
/* 801239FC 001207FC  80 0D 95 58 */	lwz r0, lbl_803CBE58-_SDA_BASE_(r13)
/* 80123A00 00120800  7C 1E 00 00 */	cmpw r30, r0
/* 80123A04 00120804  41 80 FF B4 */	blt lbl_801239B8
/* 80123A08 00120808  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80123A0C 0012080C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80123A10 00120810  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80123A14 00120814  7C 08 03 A6 */	mtlr r0
/* 80123A18 00120818  38 21 00 20 */	addi r1, r1, 0x20
/* 80123A1C 0012081C  4E 80 00 20 */	blr 

.global zGooStopTide__Fv
zGooStopTide__Fv:
/* 80123A20 00120820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80123A24 00120824  7C 08 02 A6 */	mflr r0
/* 80123A28 00120828  90 01 00 14 */	stw r0, 0x14(r1)
/* 80123A2C 0012082C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80123A30 00120830  3B E0 00 00 */	li r31, 0
/* 80123A34 00120834  93 C1 00 08 */	stw r30, 8(r1)
/* 80123A38 00120838  3B C0 00 00 */	li r30, 0
/* 80123A3C 0012083C  48 00 00 30 */	b lbl_80123A6C
lbl_80123A40:
/* 80123A40 00120840  C0 22 A0 C8 */	lfs f1, lbl_803CEA48-_SDA2_BASE_(r2)
/* 80123A44 00120844  38 1F 00 08 */	addi r0, r31, 8
/* 80123A48 00120848  80 6D 95 50 */	lwz r3, lbl_803CBE50-_SDA_BASE_(r13)
/* 80123A4C 0012084C  38 80 02 19 */	li r4, 0x219
/* 80123A50 00120850  FC 40 08 90 */	fmr f2, f1
/* 80123A54 00120854  FC 60 08 90 */	fmr f3, f1
/* 80123A58 00120858  7C 63 00 2E */	lwzx r3, r3, r0
/* 80123A5C 0012085C  FC 80 08 90 */	fmr f4, f1
/* 80123A60 00120860  4B EF BB CD */	bl zEntEvent__FP5xBaseUiffff
/* 80123A64 00120864  3B FF 00 0C */	addi r31, r31, 0xc
/* 80123A68 00120868  3B DE 00 01 */	addi r30, r30, 1
lbl_80123A6C:
/* 80123A6C 0012086C  80 0D 95 58 */	lwz r0, lbl_803CBE58-_SDA_BASE_(r13)
/* 80123A70 00120870  7C 1E 00 00 */	cmpw r30, r0
/* 80123A74 00120874  41 80 FF CC */	blt lbl_80123A40
/* 80123A78 00120878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80123A7C 0012087C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80123A80 00120880  83 C1 00 08 */	lwz r30, 8(r1)
/* 80123A84 00120884  7C 08 03 A6 */	mtlr r0
/* 80123A88 00120888  38 21 00 10 */	addi r1, r1, 0x10
/* 80123A8C 0012088C  4E 80 00 20 */	blr 

.global zGooMeltFinished__FP8RpAtomic
zGooMeltFinished__FP8RpAtomic:
/* 80123A90 00120890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80123A94 00120894  7C 08 02 A6 */	mflr r0
/* 80123A98 00120898  90 01 00 24 */	stw r0, 0x24(r1)
/* 80123A9C 0012089C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80123AA0 001208A0  3B E0 00 00 */	li r31, 0
/* 80123AA4 001208A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80123AA8 001208A8  3B C0 00 00 */	li r30, 0
/* 80123AAC 001208AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80123AB0 001208B0  7C 7D 1B 78 */	mr r29, r3
/* 80123AB4 001208B4  48 00 00 40 */	b lbl_80123AF4
lbl_80123AB8:
/* 80123AB8 001208B8  80 6D 95 50 */	lwz r3, lbl_803CBE50-_SDA_BASE_(r13)
/* 80123ABC 001208BC  38 1F 00 08 */	addi r0, r31, 8
/* 80123AC0 001208C0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80123AC4 001208C4  80 83 00 24 */	lwz r4, 0x24(r3)
/* 80123AC8 001208C8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80123ACC 001208CC  7C 00 E8 40 */	cmplw r0, r29
/* 80123AD0 001208D0  40 82 00 1C */	bne lbl_80123AEC
/* 80123AD4 001208D4  C0 42 A0 C8 */	lfs f2, lbl_803CEA48-_SDA2_BASE_(r2)
/* 80123AD8 001208D8  38 80 02 1A */	li r4, 0x21a
/* 80123ADC 001208DC  C0 22 A0 CC */	lfs f1, lbl_803CEA4C-_SDA2_BASE_(r2)
/* 80123AE0 001208E0  FC 60 10 90 */	fmr f3, f2
/* 80123AE4 001208E4  FC 80 10 90 */	fmr f4, f2
/* 80123AE8 001208E8  4B EF BB 45 */	bl zEntEvent__FP5xBaseUiffff
lbl_80123AEC:
/* 80123AEC 001208EC  3B FF 00 0C */	addi r31, r31, 0xc
/* 80123AF0 001208F0  3B DE 00 01 */	addi r30, r30, 1
lbl_80123AF4:
/* 80123AF4 001208F4  80 0D 95 58 */	lwz r0, lbl_803CBE58-_SDA_BASE_(r13)
/* 80123AF8 001208F8  7C 1E 00 00 */	cmpw r30, r0
/* 80123AFC 001208FC  41 80 FF BC */	blt lbl_80123AB8
/* 80123B00 00120900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80123B04 00120904  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80123B08 00120908  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80123B0C 0012090C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80123B10 00120910  7C 08 03 A6 */	mtlr r0
/* 80123B14 00120914  38 21 00 20 */	addi r1, r1, 0x20
/* 80123B18 00120918  4E 80 00 20 */	blr 

.endif

.section .sbss
lbl_803CBE50:
	.skip 0x4
lbl_803CBE54:
	.skip 0x4
lbl_803CBE58:
	.skip 0x8

.section .sdata2
lbl_803CEA48:
	.incbin "baserom.dol", 0x2B82E8, 0x4
lbl_803CEA4C:
	.incbin "baserom.dol", 0x2B82EC, 0x4
