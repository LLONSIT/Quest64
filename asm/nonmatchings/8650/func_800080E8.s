glabel func_800080E8
/* 8CE8 800080E8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 8CEC 800080EC AFBF004C */  sw         $ra, 0x4C($sp)
/* 8CF0 800080F0 AFB70048 */  sw         $s7, 0x48($sp)
/* 8CF4 800080F4 AFB60044 */  sw         $s6, 0x44($sp)
/* 8CF8 800080F8 AFB50040 */  sw         $s5, 0x40($sp)
/* 8CFC 800080FC AFB4003C */  sw         $s4, 0x3C($sp)
/* 8D00 80008100 AFB30038 */  sw         $s3, 0x38($sp)
/* 8D04 80008104 AFB20034 */  sw         $s2, 0x34($sp)
/* 8D08 80008108 AFB10030 */  sw         $s1, 0x30($sp)
/* 8D0C 8000810C AFB0002C */  sw         $s0, 0x2C($sp)
/* 8D10 80008110 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 8D14 80008114 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 8D18 80008118 3C0E8008 */  lui        $t6, %hi(D_80084F18)
/* 8D1C 8000811C 8DCE4F18 */  lw         $t6, %lo(D_80084F18)($t6)
/* 8D20 80008120 3C138008 */  lui        $s3, %hi(D_8007BCE4)
/* 8D24 80008124 2673BCE4 */  addiu      $s3, $s3, %lo(D_8007BCE4)
/* 8D28 80008128 8DC20038 */  lw         $v0, 0x38($t6)
/* 8D2C 8000812C 3C108008 */  lui        $s0, %hi(D_8007BD30)
/* 8D30 80008130 5040004B */  beql       $v0, $zero, .L80008260
/* 8D34 80008134 8FBF004C */   lw        $ra, 0x4C($sp)
/* 8D38 80008138 94520000 */  lhu        $s2, 0x0($v0)
/* 8D3C 8000813C 8C510004 */  lw         $s1, 0x4($v0)
/* 8D40 80008140 2610BD30 */  addiu      $s0, $s0, %lo(D_8007BD30)
/* 8D44 80008144 12400045 */  beqz       $s2, .L8000825C
/* 8D48 80008148 AE600000 */   sw        $zero, 0x0($s3)
/* 8D4C 8000814C 3C014248 */  lui        $at, (0x42480000 >> 16)
/* 8D50 80008150 3C148008 */  lui        $s4, %hi(D_80084EE8)
/* 8D54 80008154 4481B000 */  mtc1       $at, $f22
/* 8D58 80008158 4480A000 */  mtc1       $zero, $f20
/* 8D5C 8000815C 26944EE8 */  addiu      $s4, $s4, %lo(D_80084EE8)
/* 8D60 80008160 24171000 */  addiu      $s7, $zero, 0x1000
/* 8D64 80008164 27B60058 */  addiu      $s6, $sp, 0x58
/* 8D68 80008168 24150001 */  addiu      $s5, $zero, 0x1
.L8000816C:
/* 8D6C 8000816C 8E8F0000 */  lw         $t7, 0x0($s4)
/* 8D70 80008170 96380000 */  lhu        $t8, 0x0($s1)
/* 8D74 80008174 55F80037 */  bnel       $t7, $t8, .L80008254
/* 8D78 80008178 2652FFFF */   addiu     $s2, $s2, -0x1
/* 8D7C 8000817C A6000000 */  sh         $zero, 0x0($s0)
/* 8D80 80008180 A6150002 */  sh         $s5, 0x2($s0)
/* 8D84 80008184 AE110080 */  sw         $s1, 0x80($s0)
/* 8D88 80008188 C624001C */  lwc1       $f4, 0x1C($s1)
/* 8D8C 8000818C C60E0018 */  lwc1       $f14, 0x18($s0)
/* 8D90 80008190 24070A00 */  addiu      $a3, $zero, 0xA00
/* 8D94 80008194 E6040014 */  swc1       $f4, 0x14($s0)
/* 8D98 80008198 C6260020 */  lwc1       $f6, 0x20($s1)
/* 8D9C 8000819C C60C0014 */  lwc1       $f12, 0x14($s0)
/* 8DA0 800081A0 E606001C */  swc1       $f6, 0x1C($s0)
/* 8DA4 800081A4 C6280024 */  lwc1       $f8, 0x24($s1)
/* 8DA8 800081A8 E6140020 */  swc1       $f20, 0x20($s0)
/* 8DAC 800081AC E6140028 */  swc1       $f20, 0x28($s0)
/* 8DB0 800081B0 E6080024 */  swc1       $f8, 0x24($s0)
/* 8DB4 800081B4 C62A0028 */  lwc1       $f10, 0x28($s1)
/* 8DB8 800081B8 E616003C */  swc1       $f22, 0x3C($s0)
/* 8DBC 800081BC 8E06001C */  lw         $a2, 0x1C($s0)
/* 8DC0 800081C0 E60A0038 */  swc1       $f10, 0x38($s0)
/* 8DC4 800081C4 0C003B98 */  jal        func_8000EE60
/* 8DC8 800081C8 AFB60010 */   sw        $s6, 0x10($sp)
/* 8DCC 800081CC C7B0005C */  lwc1       $f16, 0x5C($sp)
/* 8DD0 800081D0 24190001 */  addiu      $t9, $zero, 0x1
/* 8DD4 800081D4 26040014 */  addiu      $a0, $s0, 0x14
/* 8DD8 800081D8 E6100018 */  swc1       $f16, 0x18($s0)
/* 8DDC 800081DC C7B20064 */  lwc1       $f18, 0x64($sp)
/* 8DE0 800081E0 00002825 */  or         $a1, $zero, $zero
/* 8DE4 800081E4 24060001 */  addiu      $a2, $zero, 0x1
/* 8DE8 800081E8 E6120040 */  swc1       $f18, 0x40($s0)
/* 8DEC 800081EC C7A40068 */  lwc1       $f4, 0x68($sp)
/* 8DF0 800081F0 00003825 */  or         $a3, $zero, $zero
/* 8DF4 800081F4 E6040044 */  swc1       $f4, 0x44($s0)
/* 8DF8 800081F8 C7A6006C */  lwc1       $f6, 0x6C($sp)
/* 8DFC 800081FC E6060048 */  swc1       $f6, 0x48($s0)
/* 8E00 80008200 AFB50014 */  sw         $s5, 0x14($sp)
/* 8E04 80008204 0C00762C */  jal        func_8001D8B0
/* 8E08 80008208 AFB90010 */   sw        $t9, 0x10($sp)
/* 8E0C 8000820C C628001C */  lwc1       $f8, 0x1C($s1)
/* 8E10 80008210 E6080004 */  swc1       $f8, 0x4($s0)
/* 8E14 80008214 C62A0020 */  lwc1       $f10, 0x20($s1)
/* 8E18 80008218 E60A0008 */  swc1       $f10, 0x8($s0)
/* 8E1C 8000821C C6300024 */  lwc1       $f16, 0x24($s1)
/* 8E20 80008220 E610000C */  swc1       $f16, 0xC($s0)
/* 8E24 80008224 92280005 */  lbu        $t0, 0x5($s1)
/* 8E28 80008228 31090001 */  andi       $t1, $t0, 0x1
/* 8E2C 8000822C 51200004 */  beql       $t1, $zero, .L80008240
/* 8E30 80008230 A6000074 */   sh        $zero, 0x74($s0)
/* 8E34 80008234 10000002 */  b          .L80008240
/* 8E38 80008238 A6170074 */   sh        $s7, 0x74($s0)
/* 8E3C 8000823C A6000074 */  sh         $zero, 0x74($s0)
.L80008240:
/* 8E40 80008240 8E6A0000 */  lw         $t2, 0x0($s3)
/* 8E44 80008244 26100084 */  addiu      $s0, $s0, 0x84
/* 8E48 80008248 254B0001 */  addiu      $t3, $t2, 0x1
/* 8E4C 8000824C AE6B0000 */  sw         $t3, 0x0($s3)
/* 8E50 80008250 2652FFFF */  addiu      $s2, $s2, -0x1
.L80008254:
/* 8E54 80008254 1640FFC5 */  bnez       $s2, .L8000816C
/* 8E58 80008258 2631002C */   addiu     $s1, $s1, 0x2C
.L8000825C:
/* 8E5C 8000825C 8FBF004C */  lw         $ra, 0x4C($sp)
.L80008260:
/* 8E60 80008260 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 8E64 80008264 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 8E68 80008268 8FB0002C */  lw         $s0, 0x2C($sp)
/* 8E6C 8000826C 8FB10030 */  lw         $s1, 0x30($sp)
/* 8E70 80008270 8FB20034 */  lw         $s2, 0x34($sp)
/* 8E74 80008274 8FB30038 */  lw         $s3, 0x38($sp)
/* 8E78 80008278 8FB4003C */  lw         $s4, 0x3C($sp)
/* 8E7C 8000827C 8FB50040 */  lw         $s5, 0x40($sp)
/* 8E80 80008280 8FB60044 */  lw         $s6, 0x44($sp)
/* 8E84 80008284 8FB70048 */  lw         $s7, 0x48($sp)
/* 8E88 80008288 03E00008 */  jr         $ra
/* 8E8C 8000828C 27BD0080 */   addiu     $sp, $sp, 0x80
