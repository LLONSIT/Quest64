glabel func_800163E8
/* 16FE8 800163E8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 16FEC 800163EC AFB60030 */  sw         $s6, 0x30($sp)
/* 16FF0 800163F0 00A0B025 */  or         $s6, $a1, $zero
/* 16FF4 800163F4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 16FF8 800163F8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 16FFC 800163FC AFB40028 */  sw         $s4, 0x28($sp)
/* 17000 80016400 AFB30024 */  sw         $s3, 0x24($sp)
/* 17004 80016404 AFB20020 */  sw         $s2, 0x20($sp)
/* 17008 80016408 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1700C 8001640C AFB00018 */  sw         $s0, 0x18($sp)
/* 17010 80016410 8C820028 */  lw         $v0, 0x28($a0)
/* 17014 80016414 3C058008 */  lui        $a1, %hi(D_8007BACC)
/* 17018 80016418 24A5BACC */  addiu      $a1, $a1, %lo(D_8007BACC)
/* 1701C 8001641C 944E005E */  lhu        $t6, 0x5E($v0)
/* 17020 80016420 00A09825 */  or         $s3, $a1, $zero
/* 17024 80016424 31CF0001 */  andi       $t7, $t6, 0x1
/* 17028 80016428 15E00007 */  bnez       $t7, .L80016448
/* 1702C 8001642C 00000000 */   nop
/* 17030 80016430 0C00609E */  jal        func_80018278
/* 17034 80016434 02C02025 */   or        $a0, $s6, $zero
/* 17038 80016438 50400020 */  beql       $v0, $zero, .L800164BC
/* 1703C 8001643C 02601025 */   or        $v0, $s3, $zero
/* 17040 80016440 1000001D */  b          .L800164B8
/* 17044 80016444 00009825 */   or        $s3, $zero, $zero
.L80016448:
/* 17048 80016448 10400005 */  beqz       $v0, .L80016460
/* 1704C 8001644C 00409825 */   or        $s3, $v0, $zero
/* 17050 80016450 02C02025 */  or         $a0, $s6, $zero
/* 17054 80016454 0C00609E */  jal        func_80018278
/* 17058 80016458 00402825 */   or        $a1, $v0, $zero
/* 1705C 8001645C 10400016 */  beqz       $v0, .L800164B8
.L80016460:
/* 17060 80016460 3C128008 */   lui       $s2, %hi(D_8007C990)
/* 17064 80016464 8E52C990 */  lw         $s2, %lo(D_8007C990)($s2)
/* 17068 80016468 3C108008 */  lui        $s0, %hi(D_8007C998)
/* 1706C 8001646C 00009825 */  or         $s3, $zero, $zero
/* 17070 80016470 12400011 */  beqz       $s2, .L800164B8
/* 17074 80016474 2610C998 */   addiu     $s0, $s0, %lo(D_8007C998)
/* 17078 80016478 3C158008 */  lui        $s5, %hi(D_800871DC)
/* 1707C 8001647C 26B571DC */  addiu      $s5, $s5, %lo(D_800871DC)
/* 17080 80016480 2414FFFF */  addiu      $s4, $zero, -0x1
.L80016484:
/* 17084 80016484 86180074 */  lh         $t8, 0x74($s0)
/* 17088 80016488 02C02025 */  or         $a0, $s6, $zero
/* 1708C 8001648C 26110024 */  addiu      $s1, $s0, 0x24
/* 17090 80016490 12980007 */  beq        $s4, $t8, .L800164B0
/* 17094 80016494 00000000 */   nop
/* 17098 80016498 0C00609E */  jal        func_80018278
/* 1709C 8001649C 02202825 */   or        $a1, $s1, $zero
/* 170A0 800164A0 14400003 */  bnez       $v0, .L800164B0
/* 170A4 800164A4 2652FFFF */   addiu     $s2, $s2, -0x1
/* 170A8 800164A8 02209825 */  or         $s3, $s1, $zero
/* 170AC 800164AC AEB00000 */  sw         $s0, 0x0($s5)
.L800164B0:
/* 170B0 800164B0 1640FFF4 */  bnez       $s2, .L80016484
/* 170B4 800164B4 26100128 */   addiu     $s0, $s0, 0x128
.L800164B8:
/* 170B8 800164B8 02601025 */  or         $v0, $s3, $zero
.L800164BC:
/* 170BC 800164BC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 170C0 800164C0 8FB00018 */  lw         $s0, 0x18($sp)
/* 170C4 800164C4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 170C8 800164C8 8FB20020 */  lw         $s2, 0x20($sp)
/* 170CC 800164CC 8FB30024 */  lw         $s3, 0x24($sp)
/* 170D0 800164D0 8FB40028 */  lw         $s4, 0x28($sp)
/* 170D4 800164D4 8FB5002C */  lw         $s5, 0x2C($sp)
/* 170D8 800164D8 8FB60030 */  lw         $s6, 0x30($sp)
/* 170DC 800164DC 03E00008 */  jr         $ra
/* 170E0 800164E0 27BD0038 */   addiu     $sp, $sp, 0x38
