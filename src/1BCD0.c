#include "common.h"

typedef struct unk1BCD0s {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ char unk8[0x34];
    /* 0x3C */ s32 unk3C;
} unk1BCD0s;

extern s32 D_80088420;
extern unk1BCD0s D_80088428[0x100];

//#pragma GLOBAL_ASM("asm/nonmatchings/1BCD0/func_8001B0D0.s")
void func_8001B0D0(void) {
    s32 var_v1;
    unk1BCD0s* var_v0;

    var_v0 = D_80088428;
    var_v1 = 0x100;
    while (var_v1 > 0) {
        var_v0->unk0 = 0;
        var_v0++;
        var_v1--;
    }
    D_80088420 = 0;
}

//#pragma GLOBAL_ASM("asm/nonmatchings/1BCD0/func_8001B108.s")
unk1BCD0s* func_8001B108(unk1BCD0s* arg0) {
    unk1BCD0s* ret = D_80088428;
    u32 i = 0x100;

    while((i > 0) && (ret->unk0 != 0)){
        i--;
        ret++;
    }

    if (i != 0) {
        *ret = *arg0;
        D_80088420++;
    } else {
        ret = NULL;
    }
    return ret;
}

#pragma GLOBAL_ASM("asm/nonmatchings/1BCD0/func_8001B19C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1BCD0/func_8001B448.s")
