#include "common.h"

//Likely camera.c

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80022FD0.s")
u32 func_80022FD0(u32 arg0) {
    u32 temp_t8;

    if (arg0 != 0) {
        D_8004D748 = (D_8004D748 * 0x41C64E6D) + 0x3039;
        return (u32) (D_8004D748 >> 0x10) % arg0;
    }
    return 0U;
}

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023028.s")
f32 func_80023028(f32 arg0)
{
  int new_var;
  f32 var_f2;
  s32 temp_a1;
  s32 temp_a3;
  s32 temp_lo;
  s32 temp_t1;
  s32 var_a0;
  s32 var_a2;
  s32 var_t0;
  s32 var_t2;
  s32 var_v0;
  s32 var_v1;
  var_v1 = 0xC;
  new_var = var_v1 != 0;
  var_a0 = 0x19;
  var_a2 = 0x17;
  var_t0 = 0x15;
  if (arg0 > 1.0f)
  {
    var_v0 = 1;
    arg0 = 1.0f / arg0;
  }
  else
  {
    var_v0 = 0;
    if (arg0 < (-1.0f))
    {
      var_v0 = -1;
      arg0 = 1.0f / arg0;
    }
  }
  var_t2 = 0x13;
  do
  {
    temp_lo = var_v1 * var_v1;
    temp_a1 = var_v1 - 1;
    temp_a3 = var_v1 - 2;
    temp_t1 = var_v1 - 3;
    var_v1 -= 4;
    var_a0 -= 8;
    var_a2 -= 8;
    var_t0 -= 8;
    var_t2 -= 8;
    var_f2 = ((((f32) (temp_t1 * temp_t1)) * arg0) * arg0) / (((f32) var_t2) + (((((f32) (temp_a3 * temp_a3)) * arg0) * arg0) / (((f32) var_t0) + (((((f32) (temp_a1 * temp_a1)) * arg0) * arg0) / (((f32) var_a2) + (((((f32) temp_lo) * arg0) * arg0) / (((f32) var_a0) + var_f2)))))));
  }
  while (new_var);
  if (var_v0 > 0)
  {
    return (f32) (D_800716D0 - ((f64) (arg0 / (1.0f + var_f2))));
  }
  if (var_v0 < 0)
  {
    return (f32) (D_800716D8 - ((f64) (arg0 / (1.0f + var_f2))));
  }
  return arg0 / (1.0f + var_f2);
}

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_800231B0.s")
void func_800231B0(f32* arg0, f32* arg1) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f2_2;

    temp_f0 = *arg1;
    temp_f2 = *arg0;
    temp_f2_2 = 1.0f / _nsqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
    *arg0 *= temp_f2_2;
    *arg1 *= temp_f2_2;
}

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023210.s")
f32 func_80023210(f32 arg0, f32 arg1)
{
  f32 var_f2;
  f32 var_f6;
  if (arg1 == 0.0f)
  {
    if (arg0 >= 0.0f)
    {
      var_f2 = (f32) D_800716E0;
    }
    else
    {
      var_f6 = (f32) D_800716E8;
      var_f2 = (f32) var_f6;
    }
  }
  else
    if (arg1 > 0.0f)
  {
    var_f2 = func_80023028(arg0 / arg1);
  }
  else
    if ((arg1 < 0.0f) && (arg0 <= 0.0f))
  {
    var_f2 = func_80023028(arg0 / arg1) - D_800716F0;
  }
  else
  {
    var_f6 = ( func_80023028( (arg0 / arg1))) + D_800716F8;
    var_f2 = (f32) var_f6;

  }
  return var_f2;
}

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_800232F4.s")
void func_800232F4(f32 arg0, unk232f4s* arg1) {
    f32 sp1C;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;

    sp1C = sinf(arg0);
    temp_f0 = cosf(arg0);
    temp_f2 = arg1->unk0;
    arg1->unk0 = (arg1->unk4 * sp1C) - (temp_f2 * temp_f0);
    arg1->unk4 = (arg1->unk4 * temp_f0) + (temp_f2 * sp1C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023360.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023500.s")
void func_80023500(Mtx* arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    func_80023360(&D_8008D030, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    guMtxF2L((f32 (*)[4]) &D_8008D030, arg0);
}

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023570.s")
void func_80023570(MtxF *arg0, f32 arg1, f32 arg2, f32 arg3)
{
  f32 sp4C;
  f32 sp48;
  f32 sp44;
  f32 temp_f20;
  f32 sp3C;
  f32 temp_f0;
  
  
  sp4C = sinf(arg1);
  temp_f20 = cosf(arg1);
  sp48 = sinf(arg2);
  sp3C = cosf(arg2);
  sp44 = sinf(arg3);
  temp_f0 = cosf(arg3);

    arg0->mf[0][0] = (temp_f0 * sp3C) + (sp44 * sp4C * sp48);
    arg0->mf[0][1] = sp44 * temp_f20;
    arg0->mf[0][2] = (-sp48 * temp_f0) + (sp44 * sp4C * sp3C);
    arg0->mf[0][3] = 0.0f;

    arg0->mf[1][0] = (-sp44 * sp3C) + (temp_f0 * sp4C * sp48);
    arg0->mf[1][1] = temp_f0 * temp_f20;
    arg0->mf[1][2] = (-sp44 * -sp48) + (temp_f0 * sp4C * sp3C);
    arg0->mf[1][3] = 0.0f;

    arg0->mf[2][0] = temp_f20 * sp48;
    arg0->mf[2][1] = -sp4C;
    arg0->mf[2][2] = temp_f20 * sp3C;
    arg0->mf[2][3] = 0.0f;

    arg0->mf[3][0] = 0.0f;
    arg0->mf[3][1] = 0.0f;
    arg0->mf[3][2] = 0.0f;
    arg0->mf[3][3] = 1.0f;
}

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_800236CC.s")
void func_800236CC(Mtx* arg0, f32 arg1, f32 arg2, f32 arg3) {
    func_80023570((unk23a08s* ) &D_8008D030, arg1, arg2, arg3);
    guMtxF2L((f32 (*)[4]) &D_8008D030, arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_8002371C.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_8002387C.s")
void func_8002387C(Mtx* arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    func_8002371C(&D_8008D030, arg1, arg2, arg3, arg4, arg5, arg6);
    guMtxF2L((f32 (*)[4]) &D_8008D030, arg0);
}

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_800238E4.s")
void func_800238E4(unk23df4s* arg0, f32 arg1, f32 arg2, f32 arg3, f32* arg4, f32* arg5, f32* arg6) {
    *arg4 = (arg0->unk8 * arg3) + ((arg0->unk0 * arg1) + (arg0->unk4 * arg2));
    *arg5 = (arg0->unk18 * arg3) + ((arg0->unk10 * arg1) + (arg0->unk14 * arg2));
    *arg6 = (arg0->unk28 * arg3) + ((arg0->unk20 * arg1) + (arg0->unk24 * arg2));
}

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023974.s")
void func_80023974(unk23974s* arg0, f32 arg1, f32 arg2, f32 arg3, f32* arg4, f32* arg5, f32* arg6) {
    *arg4 = (arg0->unk20 * arg3) + ((arg0->unk0 * arg1) + (arg0->unk10 * arg2));
    *arg5 = (arg0->unk24 * arg3) + ((arg0->unk4 * arg1) + (arg0->unk14 * arg2));
    *arg6 = -((arg0->unk28 * arg3) + ((arg0->unk8 * arg1) + (arg0->unk18 * arg2)));
}

#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023A08.s")
/*
void func_80023A08(f32 arg0[4][4], f32 arg1, f32 arg2, f32 arg3)
{
    
    f32 temp_f0_2;    
    f32 temp_f4;
    f32 pad;
    f32 temp_f0;    
    f32 var_f18;
    f32 var_f22;
    f32 temp;
    
    temp_f0 = _nsqrtf((arg1 * arg1) + (arg3 * arg3));
    if (temp_f0 != 0.0f)
    {
        var_f22 = arg1 / temp_f0;
        var_f18 = arg3 / temp_f0;
    }
    else
    {
        var_f22 = 0.0f;
        var_f18 = (arg2 >= 0.0f) ? (1.0) : (-1.0);
    }
    temp_f0_2 = _nsqrtf((temp_f0 * temp_f0) + (arg2 * arg2));
    temp_f4 = temp_f0 / temp_f0_2;
    temp = arg2 / temp_f0_2;

    // bc:    mtc1    zero,$f2
    // fc:    swc1    $f2,0xc(a0)
    arg0[0][3] = 0;

    // bc:    mtc1    zero,$f2
    // c4:    div.s   $f4,$f10,$f0 ; f10 == temp_f0, f0 == temp_f0_2
    // d8:    mul.s   $f12,$f2,$f4
    // e0:    mul.s   $f8,$f6,$f18 ; f6 == 1.0f. f18 == var_f18
    // e8:    mul.s   $f10,$f12,$f22 ; f22 == var_f22
    // ec:    add.s   $f4,$f8,$f10
    // f4:    swc1    $f4,0(a0)
    arg0[0][0] = (1.0f * var_f18) + (((arg0[0][3] * temp_f4) * var_f22));

    // 18:    sw      a2,0x58(sp)
    // bc:    mtc1    zero,$f2
    // f8:    lwc1    $f6,0x58(sp)
    // 100:    div.s   $f20,$f6,$f0 ; f6 == arg2, f0 = temp_f0_2
    // 104:    mul.s   $f8,$f2,$f20
    // 11c:    swc1    $f8,4(a0)
    arg0[0][1] = arg0[0][3] * temp;

    // bc:    mtc1    zero,$f2
    // c4:    div.s   $f4,$f10,$f0 ; f10 == temp_f0, f0 == temp_f0_2
    // d4:    neg.s   $f14,$f22 ; f22 == var_f22
    // d8:    mul.s   $f12,$f2,$f4
    // e8:    mul.s   $f10,$f12,$f22
    // 10c:    mul.s   $f4,$f14,$f10
    // 118:    mul.s   $f6,$f12,$f18 ; f18 == var_f18
    // 120:    add.s   $f8,$f4,$f6
    // 12c:    swc1    $f8,8(a0)
    arg0[0][2] = (-var_f22 * ((arg0[0][3] * temp_f4) * var_f22)) + ((arg0[0][3] * temp_f4) * var_f18);

    // 130:    lwc1    $f4,0x2c(sp)
    // 138:    mul.s   $f16,$f10,$f4 ; f10 == 1.0f, f4 == temp_f4
    // 140:    mul.s   $f8,$f6,$f18 ; f6 == -0.0f, f18 == var_f18
    // 14c:    mul.s   $f10,$f16,$f22 ; f22 == var_f22
    // 150:    add.s   $f4,$f8,$f10
    // 160:    swc1    $f4,0x10(a0)
    arg0[1][0] = ((-arg0[0][3]) * var_f18) + ((1.0f * temp_f4) * var_f22);

    // 100:    div.s   $f20,$f6,$f0 ; f6 == arg2, f0 = temp_f0_2
    // 154:    mul.s   $f8,$f6,$f20 ; f6 == -0.0f
    // 170:    swc1    $f8,0x14(a0)
    arg0[1][1] = -arg0[0][3] * temp;

    // 138:    mul.s   $f16,$f10,$f4 ; f10 == 1.0f, f4 == temp_f4
    // 164:    mul.s   $f4,$f10,$f14 ; f10 == -0.0f
    // 16c:    mul.s   $f6,$f16,$f18 ; f18 == var_f18
    // 178:    add.s   $f8,$f4,$f6
    // 184:    swc1    $f8,0x18(a0)
    arg0[1][2] = ((-arg0[0][3]) * (-var_f22)) + ((1.0f * temp_f4) * var_f18);

    // bc:    mtc1    zero,$f2
    // 134:    swc1    $f2,0x1c(a0)
    arg0[1][3] = arg0[0][3];

    // 100:    div.s   $f20,$f6,$f0 ; f6 == arg2, f0 = temp_f0_2
    // 174:    mul.s   $f10,$f20,$f22
    arg0[2][0] = temp * var_f22;
    
    // bc:    mtc1    zero,$f2
    // 190:    swc1    $f2,0x2c(a0)
    arg0[2][3] = 0;

    // bc:    mtc1    zero,$f2
    // 198:    swc1    $f2,0x30(a0)
    arg0[3][0] = 0;

    // 188:    lwc1    $f4,0x2c(sp)
    // 194:    neg.s   $f6,$f4
    // 19c:    swc1    $f6,0x24(a0)
    arg0[2][1] = -temp_f4;

    // bc:    mtc1    zero,$f2
    // 1a0:    swc1    $f2,0x34(a0)
    arg0[3][1] = 0;

    // bc:    mtc1    zero,$f2
    // 1a4:    swc1    $f2,0x38(a0)
    arg0[3][2] = 0;

    // 100:    div.s   $f20,$f6,$f0 ; f6 == arg2, f0 = temp_f0_2
    // 18c:    mul.s   $f8,$f20,$f18
    // 1a8:    swc1    $f8,0x28(a0)
    arg0[2][2] = temp * var_f18;

    // 15c:    lui     at,0x3f80
    // 180:    mtc1    at,$f10
    // 1ac:    swc1    $f10,0x3c(a0)
    arg0[3][3] = 1.0f;

}
*/


//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023BCC.s")
void func_80023BCC(Mtx* arg0, f32 arg1, f32 arg2, f32 arg3) {
    func_80023A08((f32 (*)[4]) &D_8008D030, arg1, arg2, arg3);
    guMtxF2L((f32 (*)[4]) &D_8008D030, arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023C1C.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023DF4.s")
void func_80023DF4(unk23df4s* arg0, f32 arg1, f32 arg2, f32 arg3) {
    arg0->unk0 = (f32) (arg0->unk0 * arg1);
    arg0->unk4 = (f32) (arg0->unk4 * arg1);
    arg0->unk8 = (f32) (arg0->unk8 * arg1);
    arg0->unk10 = (f32) (arg0->unk10 * arg2);
    arg0->unk14 = (f32) (arg0->unk14 * arg2);
    arg0->unk18 = (f32) (arg0->unk18 * arg2);
    arg0->unk20 = (f32) (arg0->unk20 * arg3);
    arg0->unk24 = (f32) (arg0->unk24 * arg3);
    arg0->unk28 = (f32) (arg0->unk28 * arg3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_80023E80.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/23BD0/func_8002413C.s")
s32 func_8002413C(f32 arg0, f32 arg1, f32 arg2, s32* arg3, s32* arg4) {
    f32 temp_f6;
    f32 sp38;
    f32 sp34; /*ft4*/
    f32 sp30; /*ft0*/
    f32 temp_f0;
    
    s32 var_v1;

    guMtxXFMF((f32 (*)[4]) D_80086E88, arg0, arg1, arg2, &sp38, &sp34, &sp30);
    temp_f6 = D_80086ECC;
    var_v1 = 0;
    if (sp30 < -D_80086ECC) {
        var_v1 = 1;
    }
    if (var_v1 != 0) {
        temp_f0 = sp30 * D_80086ED4;
        var_v1 = 0;
        *arg3 = 0xA0 - (s32) ((((f64) sp38 * 160.0) / (f64) temp_f0) * 0.75);
        *arg4 = (s32) ((120.0f * sp34) / sp38) + 0x78;
        if (sp30 < -temp_f6) {
            var_v1 = 1;
        }
    }
    return var_v1;
}
