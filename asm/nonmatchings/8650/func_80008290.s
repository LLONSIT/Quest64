glabel func_80008290
/* 8E90 80008290 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8E94 80008294 AFB00020 */  sw         $s0, 0x20($sp)
/* 8E98 80008298 00C08025 */  or         $s0, $a2, $zero
/* 8E9C 8000829C AFBF0024 */  sw         $ra, 0x24($sp)
/* 8EA0 800082A0 E7AC0028 */  swc1       $f12, 0x28($sp)
/* 8EA4 800082A4 E7AE002C */  swc1       $f14, 0x2C($sp)
/* 8EA8 800082A8 27A40028 */  addiu      $a0, $sp, 0x28
/* 8EAC 800082AC 27A5002C */  addiu      $a1, $sp, 0x2C
/* 8EB0 800082B0 0C0020D7 */  jal        func_8000835C
/* 8EB4 800082B4 02003025 */   or        $a2, $s0, $zero
/* 8EB8 800082B8 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 8EBC 800082BC C6080000 */  lwc1       $f8, 0x0($s0)
/* 8EC0 800082C0 C6120008 */  lwc1       $f18, 0x8($s0)
/* 8EC4 800082C4 E6040018 */  swc1       $f4, 0x18($s0)
/* 8EC8 800082C8 C7A6002C */  lwc1       $f6, 0x2C($sp)
/* 8ECC 800082CC 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 8ED0 800082D0 3C028008 */  lui        $v0, %hi(D_8007BCC8)
/* 8ED4 800082D4 E6060020 */  swc1       $f6, 0x20($s0)
/* 8ED8 800082D8 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* 8EDC 800082DC 2442BCC8 */  addiu      $v0, $v0, %lo(D_8007BCC8)
/* 8EE0 800082E0 24070A01 */  addiu      $a3, $zero, 0xA01
/* 8EE4 800082E4 460A4400 */  add.s      $f16, $f8, $f10
/* 8EE8 800082E8 44814000 */  mtc1       $at, $f8
/* 8EEC 800082EC E6100000 */  swc1       $f16, 0x0($s0)
/* 8EF0 800082F0 C7A4002C */  lwc1       $f4, 0x2C($sp)
/* 8EF4 800082F4 46049180 */  add.s      $f6, $f18, $f4
/* 8EF8 800082F8 E6060008 */  swc1       $f6, 0x8($s0)
/* 8EFC 800082FC E4480000 */  swc1       $f8, 0x0($v0)
/* 8F00 80008300 8E060008 */  lw         $a2, 0x8($s0)
/* 8F04 80008304 C60E0004 */  lwc1       $f14, 0x4($s0)
/* 8F08 80008308 C60C0000 */  lwc1       $f12, 0x0($s0)
/* 8F0C 8000830C 0C003B98 */  jal        func_8000EE60
/* 8F10 80008310 AFA20010 */   sw        $v0, 0x10($sp)
/* 8F14 80008314 3C028008 */  lui        $v0, %hi(D_8007BCC8)
/* 8F18 80008318 2442BCC8 */  addiu      $v0, $v0, %lo(D_8007BCC8)
/* 8F1C 8000831C C44A0000 */  lwc1       $f10, 0x0($v0)
/* 8F20 80008320 E60A0000 */  swc1       $f10, 0x0($s0)
/* 8F24 80008324 C4500004 */  lwc1       $f16, 0x4($v0)
/* 8F28 80008328 E6100004 */  swc1       $f16, 0x4($s0)
/* 8F2C 8000832C C4520008 */  lwc1       $f18, 0x8($v0)
/* 8F30 80008330 E6120008 */  swc1       $f18, 0x8($s0)
/* 8F34 80008334 C444000C */  lwc1       $f4, 0xC($v0)
/* 8F38 80008338 E604002C */  swc1       $f4, 0x2C($s0)
/* 8F3C 8000833C C4460010 */  lwc1       $f6, 0x10($v0)
/* 8F40 80008340 E6060030 */  swc1       $f6, 0x30($s0)
/* 8F44 80008344 C4480014 */  lwc1       $f8, 0x14($v0)
/* 8F48 80008348 E6080034 */  swc1       $f8, 0x34($s0)
/* 8F4C 8000834C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 8F50 80008350 8FB00020 */  lw         $s0, 0x20($sp)
/* 8F54 80008354 03E00008 */  jr         $ra
/* 8F58 80008358 27BD0028 */   addiu     $sp, $sp, 0x28