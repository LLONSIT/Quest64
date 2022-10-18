#include "common.h"

typedef struct {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
}unk18684s;

typedef struct {
    s32 unk0;
    char unk4[0x14];
    s32 unk18;
    char unk1C[0x14];
    s32 unk30;
    char unk34[0x14];
    s32 unk48;
    char unk4C[0x14];
}unk19324s;

typedef struct {
    s16 unk0[0x68];
}unk19ca4s;

//This struct is fine, it's just an example of loop unrolling. 
typedef struct {
    s16 unk0;
    char unk2[0x56];
   // s16 unk58;
    //char unk5A[0x56];
    //s16 unkB0;
    //char unkB2[0x56];
    //s16 unk108;
    //char unk10A[0x56];
}unk1a238s;



extern unk18684s D_80087210;
extern unk19324s D_800874E8;
extern unk1a238s D_800875A8;
extern unk19ca4s D_800880A8[];


void func_80018684(void);
void func_80019324(void);
void func_8001A238(void);

//#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_800185F0.s")
void func_800185F0(void) {
    func_80018684();
    func_800188C4();
    func_80019324();
    func_80018DB4();
    func_8001A238();
    func_80019A70();
}

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018638.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018684.s")
void func_80018684(void) {
    unk18684s* var_v1;
    s32 var_v0;

    var_v0 = 8;
    var_v1 = &D_80087210;
    do {
        var_v0 -= 4;
        var_v1->unk0 = 0;
        var_v1->unk8 = 0;
        var_v1->unk10 = 0;
        var_v1->unk18 = 0;
        var_v1++;
    } while (var_v0 != 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_800186B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_800186F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_800187F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_800188C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018B14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018BF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018D34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018DB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018DF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80018F60.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80019324.s")
void func_80019324(void) {
    unk19324s* var_v0;
    s32 var_v1;

    var_v0 = &D_800874E8;
    var_v1 = 8;
    do {
        var_v1 -= 4;
        var_v0->unk0 = 0;
        var_v0->unk18 = 0;
        var_v0->unk30 = 0;
        var_v0->unk48 = 0;
        var_v0++;
    } while (var_v1 != 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80019354.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_800193B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_800195E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80019738.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80019918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80019A70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80019A98.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80019CA4.s") //! TODO
void func_80019CA4(s32 arg0) {
    D_800880A8[arg0].unk0[0] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_80019CCC.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_8001A238.s")
void func_8001A238(void) {
    unk1a238s* var_v1;
    s32 var_v0;

    var_v0 = 0x20;
    var_v1 = &D_800875A8;
    do {
        var_v0--;
        var_v1->unk0 = 0;
        //var_v1->unk58 = 0;
        //var_v1->unkB0 = 0;
        //var_v1->unk108 = 0;
        var_v1++;
    } while (var_v0 != 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_8001A268.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_8001A398.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_8001A620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/191F0/func_8001A834.s")
