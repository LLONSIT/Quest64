glabel func_80014E80
/* 15A80 80014E80 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 15A84 80014E84 24010001 */  addiu      $at, $zero, 0x1
/* 15A88 80014E88 E484000C */  swc1       $f4, 0xC($a0)
/* 15A8C 80014E8C C4A60008 */  lwc1       $f6, 0x8($a1)
/* 15A90 80014E90 E4860014 */  swc1       $f6, 0x14($a0)
/* 15A94 80014E94 8CA20064 */  lw         $v0, 0x64($a1)
/* 15A98 80014E98 944E0000 */  lhu        $t6, 0x0($v0)
/* 15A9C 80014E9C 55C1000A */  bnel       $t6, $at, .L80014EC8
/* 15AA0 80014EA0 C4A60004 */   lwc1      $f6, 0x4($a1)
/* 15AA4 80014EA4 C4480018 */  lwc1       $f8, 0x18($v0)
/* 15AA8 80014EA8 C4AA0024 */  lwc1       $f10, 0x24($a1)
/* 15AAC 80014EAC 8CAF0068 */  lw         $t7, 0x68($a1)
/* 15AB0 80014EB0 460A4402 */  mul.s      $f16, $f8, $f10
/* 15AB4 80014EB4 C5F20094 */  lwc1       $f18, 0x94($t7)
/* 15AB8 80014EB8 46109101 */  sub.s      $f4, $f18, $f16
/* 15ABC 80014EBC 03E00008 */  jr         $ra
/* 15AC0 80014EC0 E4840010 */   swc1      $f4, 0x10($a0)
/* 15AC4 80014EC4 C4A60004 */  lwc1       $f6, 0x4($a1)
.L80014EC8:
/* 15AC8 80014EC8 E4860010 */  swc1       $f6, 0x10($a0)
/* 15ACC 80014ECC 03E00008 */  jr         $ra
/* 15AD0 80014ED0 00000000 */   nop
