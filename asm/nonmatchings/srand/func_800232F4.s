glabel func_800232F4
/* 23EF4 800232F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 23EF8 800232F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23EFC 800232FC E7AC0020 */  swc1       $f12, 0x20($sp)
/* 23F00 80023300 C7AC0020 */  lwc1       $f12, 0x20($sp)
/* 23F04 80023304 0C00D5A0 */  jal        sinf
/* 23F08 80023308 AFA50024 */   sw        $a1, 0x24($sp)
/* 23F0C 8002330C C7AC0020 */  lwc1       $f12, 0x20($sp)
/* 23F10 80023310 0C00D87C */  jal        cosf
/* 23F14 80023314 E7A0001C */   swc1      $f0, 0x1C($sp)
/* 23F18 80023318 8FA50024 */  lw         $a1, 0x24($sp)
/* 23F1C 8002331C C7AE001C */  lwc1       $f14, 0x1C($sp)
/* 23F20 80023320 C4AC0004 */  lwc1       $f12, 0x4($a1)
/* 23F24 80023324 C4A20000 */  lwc1       $f2, 0x0($a1)
/* 23F28 80023328 460E6102 */  mul.s      $f4, $f12, $f14
/* 23F2C 8002332C 00000000 */  nop
/* 23F30 80023330 46001182 */  mul.s      $f6, $f2, $f0
/* 23F34 80023334 00000000 */  nop
/* 23F38 80023338 46006282 */  mul.s      $f10, $f12, $f0
/* 23F3C 8002333C 00000000 */  nop
/* 23F40 80023340 460E1402 */  mul.s      $f16, $f2, $f14
/* 23F44 80023344 46062201 */  sub.s      $f8, $f4, $f6
/* 23F48 80023348 E4A80000 */  swc1       $f8, 0x0($a1)
/* 23F4C 8002334C 46105480 */  add.s      $f18, $f10, $f16
/* 23F50 80023350 E4B20004 */  swc1       $f18, 0x4($a1)
/* 23F54 80023354 8FBF0014 */  lw         $ra, 0x14($sp)
/* 23F58 80023358 03E00008 */  jr         $ra
/* 23F5C 8002335C 27BD0020 */   addiu     $sp, $sp, 0x20
