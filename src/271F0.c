#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/271F0/func_800265F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/271F0/func_80026658.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/271F0/func_800267B8.s")
void func_800267B8(s8 arg0) { //UpdateBGM
    if (arg0 != D_8008FCC1) {
        D_8008FCC1 = arg0;
        D_8008FCC2 |= 1;
    }
}

//#pragma GLOBAL_ASM("asm/nonmatchings/271F0/func_800267F8.s")
void func_800267F8(s8 arg0, u16 arg1) {
    if (arg0 != D_8008FCC1) {
        D_8008FCC1 = arg0;
        D_8008FCC2 |= 1;
        D_8008FCC4 = arg1 & 0xFFFF;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/271F0/func_8002684C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/271F0/func_800268D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/271F0/func_8002699C.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/271F0/func_80026A04.s")
void func_80026A04(void) {
    func_80026554(*(&D_80053CA4 + D_8005F010));
}
