.include "macros.inc"

.if 0

.section .text  # 0x8010E9B0 - 0x8010EB94

.global SetPsyche__5xGoalFP7xPsyche
SetPsyche__5xGoalFP7xPsyche:
/* 8010E9B0 0010B7B0  90 83 00 18 */	stw r4, 0x18(r3)
/* 8010E9B4 0010B7B4  4E 80 00 20 */	blr 

.global Name__5xGoalFv
Name__5xGoalFv:
/* 8010E9B8 0010B7B8  38 60 00 00 */	li r3, 0
/* 8010E9BC 0010B7BC  4E 80 00 20 */	blr 

.global SetState__5xGoalF12en_GOALSTATE
SetState__5xGoalF12en_GOALSTATE:
/* 8010E9C0 0010B7C0  90 83 00 20 */	stw r4, 0x20(r3)
/* 8010E9C4 0010B7C4  4E 80 00 20 */	blr 

.global GetState__5xGoalCFv
GetState__5xGoalCFv:
/* 8010E9C8 0010B7C8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8010E9CC 0010B7CC  4E 80 00 20 */	blr 

/* Next__17xListItem<5xGoal>Fv */
.global Next__17xListItem_esc__0_5xGoal_esc__1_Fv
Next__17xListItem_esc__0_5xGoal_esc__1_Fv:
/* 8010E9D0 0010B7D0  80 63 00 04 */	lwz r3, 4(r3)
/* 8010E9D4 0010B7D4  4E 80 00 20 */	blr 

/* Insert__17xListItem<5xGoal>FP5xGoal */
.global Insert__17xListItem_esc__0_5xGoal_esc__1_FP5xGoal
Insert__17xListItem_esc__0_5xGoal_esc__1_FP5xGoal:
/* 8010E9D8 0010B7D8  90 83 00 08 */	stw r4, 8(r3)
/* 8010E9DC 0010B7DC  80 04 00 04 */	lwz r0, 4(r4)
/* 8010E9E0 0010B7E0  90 03 00 04 */	stw r0, 4(r3)
/* 8010E9E4 0010B7E4  80 A4 00 04 */	lwz r5, 4(r4)
/* 8010E9E8 0010B7E8  28 05 00 00 */	cmplwi r5, 0
/* 8010E9EC 0010B7EC  41 82 00 08 */	beq lbl_8010E9F4
/* 8010E9F0 0010B7F0  90 65 00 08 */	stw r3, 8(r5)
lbl_8010E9F4:
/* 8010E9F4 0010B7F4  90 64 00 04 */	stw r3, 4(r4)
/* 8010E9F8 0010B7F8  4E 80 00 20 */	blr 

/* RemHead__17xListItem<5xGoal>FPP5xGoal */
.global RemHead__17xListItem_esc__0_5xGoal_esc__1_FPP5xGoal
RemHead__17xListItem_esc__0_5xGoal_esc__1_FPP5xGoal:
/* 8010E9FC 0010B7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EA00 0010B800  7C 08 02 A6 */	mflr r0
/* 8010EA04 0010B804  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EA08 0010B808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010EA0C 0010B80C  93 C1 00 08 */	stw r30, 8(r1)
/* 8010EA10 0010B810  7C 9E 23 78 */	mr r30, r4
/* 8010EA14 0010B814  80 64 00 00 */	lwz r3, 0(r4)
/* 8010EA18 0010B818  28 03 00 00 */	cmplwi r3, 0
/* 8010EA1C 0010B81C  40 82 00 0C */	bne lbl_8010EA28
/* 8010EA20 0010B820  38 60 00 00 */	li r3, 0
/* 8010EA24 0010B824  48 00 00 30 */	b lbl_8010EA54
lbl_8010EA28:
/* 8010EA28 0010B828  48 00 00 45 */	bl Head__17xListItem_esc__0_5xGoal_esc__1_Fv
/* 8010EA2C 0010B82C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8010EA30 0010B830  40 82 00 10 */	bne lbl_8010EA40
/* 8010EA34 0010B834  38 00 00 00 */	li r0, 0
/* 8010EA38 0010B838  90 1E 00 00 */	stw r0, 0(r30)
/* 8010EA3C 0010B83C  48 00 00 14 */	b lbl_8010EA50
lbl_8010EA40:
/* 8010EA40 0010B840  4B FF FF 91 */	bl Next__17xListItem_esc__0_5xGoal_esc__1_Fv
/* 8010EA44 0010B844  90 7E 00 00 */	stw r3, 0(r30)
/* 8010EA48 0010B848  7F E3 FB 78 */	mr r3, r31
/* 8010EA4C 0010B84C  4B FC A8 29 */	bl Remove__17xListItem_esc__0_5xGoal_esc__1_Fv
lbl_8010EA50:
/* 8010EA50 0010B850  7F E3 FB 78 */	mr r3, r31
lbl_8010EA54:
/* 8010EA54 0010B854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EA58 0010B858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010EA5C 0010B85C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010EA60 0010B860  7C 08 03 A6 */	mtlr r0
/* 8010EA64 0010B864  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EA68 0010B868  4E 80 00 20 */	blr 

/* Head__17xListItem<5xGoal>Fv */
.global Head__17xListItem_esc__0_5xGoal_esc__1_Fv
Head__17xListItem_esc__0_5xGoal_esc__1_Fv:
/* 8010EA6C 0010B86C  7C 64 1B 79 */	or. r4, r3, r3
/* 8010EA70 0010B870  40 82 00 10 */	bne lbl_8010EA80
/* 8010EA74 0010B874  4E 80 00 20 */	blr 
/* 8010EA78 0010B878  48 00 00 08 */	b lbl_8010EA80
lbl_8010EA7C:
/* 8010EA7C 0010B87C  7C 04 03 78 */	mr r4, r0
lbl_8010EA80:
/* 8010EA80 0010B880  80 04 00 08 */	lwz r0, 8(r4)
/* 8010EA84 0010B884  28 00 00 00 */	cmplwi r0, 0
/* 8010EA88 0010B888  40 82 FF F4 */	bne lbl_8010EA7C
/* 8010EA8C 0010B88C  7C 83 23 78 */	mr r3, r4
/* 8010EA90 0010B890  4E 80 00 20 */	blr 

.global GetOwner__5xGoalCFv
GetOwner__5xGoalCFv:
/* 8010EA94 0010B894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EA98 0010B898  7C 08 02 A6 */	mflr r0
/* 8010EA9C 0010B89C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8010EAA0 0010B8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EAA4 0010B8A4  48 00 00 E9 */	bl GetClient__7xPsycheFv
/* 8010EAA8 0010B8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EAAC 0010B8AC  7C 08 03 A6 */	mtlr r0
/* 8010EAB0 0010B8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EAB4 0010B8B4  4E 80 00 20 */	blr 

.global Clear__5xGoalFv
Clear__5xGoalFv:
/* 8010EAB8 0010B8B8  38 00 00 00 */	li r0, 0
/* 8010EABC 0010B8BC  90 03 00 20 */	stw r0, 0x20(r3)
/* 8010EAC0 0010B8C0  4E 80 00 20 */	blr 

.global PreCalc__5xGoalFfPv
PreCalc__5xGoalFfPv:
/* 8010EAC4 0010B8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EAC8 0010B8C8  7C 08 02 A6 */	mflr r0
/* 8010EACC 0010B8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EAD0 0010B8D0  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 8010EAD4 0010B8D4  28 0C 00 00 */	cmplwi r12, 0
/* 8010EAD8 0010B8D8  41 82 00 18 */	beq lbl_8010EAF0
/* 8010EADC 0010B8DC  7C 85 23 78 */	mr r5, r4
/* 8010EAE0 0010B8E0  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8010EAE4 0010B8E4  7D 89 03 A6 */	mtctr r12
/* 8010EAE8 0010B8E8  4E 80 04 21 */	bctrl 
/* 8010EAEC 0010B8EC  48 00 00 08 */	b lbl_8010EAF4
lbl_8010EAF0:
/* 8010EAF0 0010B8F0  38 60 00 00 */	li r3, 0
lbl_8010EAF4:
/* 8010EAF4 0010B8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EAF8 0010B8F8  7C 08 03 A6 */	mtlr r0
/* 8010EAFC 0010B8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EB00 0010B900  4E 80 00 20 */	blr 

.global EvalRules__5xGoalFP11en_trantypefPv
EvalRules__5xGoalFP11en_trantypefPv:
/* 8010EB04 0010B904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EB08 0010B908  7C 08 02 A6 */	mflr r0
/* 8010EB0C 0010B90C  7C A6 2B 78 */	mr r6, r5
/* 8010EB10 0010B910  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EB14 0010B914  81 83 00 30 */	lwz r12, 0x30(r3)
/* 8010EB18 0010B918  28 0C 00 00 */	cmplwi r12, 0
/* 8010EB1C 0010B91C  41 82 00 18 */	beq lbl_8010EB34
/* 8010EB20 0010B920  7C 85 23 78 */	mr r5, r4
/* 8010EB24 0010B924  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8010EB28 0010B928  7D 89 03 A6 */	mtctr r12
/* 8010EB2C 0010B92C  4E 80 04 21 */	bctrl 
/* 8010EB30 0010B930  48 00 00 08 */	b lbl_8010EB38
lbl_8010EB34:
/* 8010EB34 0010B934  38 60 00 00 */	li r3, 0
lbl_8010EB38:
/* 8010EB38 0010B938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EB3C 0010B93C  7C 08 03 A6 */	mtlr r0
/* 8010EB40 0010B940  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EB44 0010B944  4E 80 00 20 */	blr 

.global Process__5xGoalFP11en_trantypefPvP6xScene
Process__5xGoalFP11en_trantypefPvP6xScene:
/* 8010EB48 0010B948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EB4C 0010B94C  7C 08 02 A6 */	mflr r0
/* 8010EB50 0010B950  7C A6 2B 78 */	mr r6, r5
/* 8010EB54 0010B954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EB58 0010B958  81 83 00 28 */	lwz r12, 0x28(r3)
/* 8010EB5C 0010B95C  28 0C 00 00 */	cmplwi r12, 0
/* 8010EB60 0010B960  41 82 00 18 */	beq lbl_8010EB78
/* 8010EB64 0010B964  7C 85 23 78 */	mr r5, r4
/* 8010EB68 0010B968  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8010EB6C 0010B96C  7D 89 03 A6 */	mtctr r12
/* 8010EB70 0010B970  4E 80 04 21 */	bctrl 
/* 8010EB74 0010B974  48 00 00 08 */	b lbl_8010EB7C
lbl_8010EB78:
/* 8010EB78 0010B978  38 60 00 00 */	li r3, 0
lbl_8010EB7C:
/* 8010EB7C 0010B97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EB80 0010B980  7C 08 03 A6 */	mtlr r0
/* 8010EB84 0010B984  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EB88 0010B988  4E 80 00 20 */	blr 

.global GetClient__7xPsycheFv
GetClient__7xPsycheFv:
/* 8010EB8C 0010B98C  80 63 00 00 */	lwz r3, 0(r3)
/* 8010EB90 0010B990  4E 80 00 20 */	blr 

.endif

