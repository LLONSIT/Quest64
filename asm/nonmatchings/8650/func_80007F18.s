glabel func_80007F18
/* 8B18 80007F18 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 8B1C 80007F1C AFBE0060 */  sw         $fp, 0x60($sp)
/* 8B20 80007F20 3C1E8008 */  lui        $fp, %hi(D_8007BCE8)
/* 8B24 80007F24 27DEBCE8 */  addiu      $fp, $fp, %lo(D_8007BCE8)
/* 8B28 80007F28 AFBF0064 */  sw         $ra, 0x64($sp)
/* 8B2C 80007F2C AFB7005C */  sw         $s7, 0x5C($sp)
/* 8B30 80007F30 AFB60058 */  sw         $s6, 0x58($sp)
/* 8B34 80007F34 AFB50054 */  sw         $s5, 0x54($sp)
/* 8B38 80007F38 AFB40050 */  sw         $s4, 0x50($sp)
/* 8B3C 80007F3C AFB3004C */  sw         $s3, 0x4C($sp)
/* 8B40 80007F40 AFB20048 */  sw         $s2, 0x48($sp)
/* 8B44 80007F44 AFB10044 */  sw         $s1, 0x44($sp)
/* 8B48 80007F48 AFB00040 */  sw         $s0, 0x40($sp)
/* 8B4C 80007F4C F7B80038 */  sdc1       $f24, 0x38($sp)
/* 8B50 80007F50 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 8B54 80007F54 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 8B58 80007F58 AFA40068 */  sw         $a0, 0x68($sp)
/* 8B5C 80007F5C AFC00000 */  sw         $zero, 0x0($fp)
/* 8B60 80007F60 3C138008 */  lui        $s3, %hi(D_8007BCE4)
/* 8B64 80007F64 8E73BCE4 */  lw         $s3, %lo(D_8007BCE4)($s3)
/* 8B68 80007F68 3C118008 */  lui        $s1, %hi(D_8007BD30)
/* 8B6C 80007F6C 3C148008 */  lui        $s4, %hi(D_8007BCF0)
/* 8B70 80007F70 2631BD30 */  addiu      $s1, $s1, %lo(D_8007BD30)
/* 8B74 80007F74 1260004D */  beqz       $s3, .L800080AC
/* 8B78 80007F78 2694BCF0 */   addiu     $s4, $s4, %lo(D_8007BCF0)
/* 8B7C 80007F7C 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 8B80 80007F80 4481C000 */  mtc1       $at, $f24
/* 8B84 80007F84 3C018007 */  lui        $at, %hi(D_80071124)
/* 8B88 80007F88 C4361124 */  lwc1       $f22, %lo(D_80071124)($at)
/* 8B8C 80007F8C 3C018007 */  lui        $at, %hi(D_80071128)
/* 8B90 80007F90 3C168008 */  lui        $s6, %hi(D_8007B2FC)
/* 8B94 80007F94 3C158008 */  lui        $s5, %hi(D_8007BAB8)
/* 8B98 80007F98 26B5BAB8 */  addiu      $s5, $s5, %lo(D_8007BAB8)
/* 8B9C 80007F9C 26D6B2FC */  addiu      $s6, $s6, %lo(D_8007B2FC)
/* 8BA0 80007FA0 C4341128 */  lwc1       $f20, %lo(D_80071128)($at)
/* 8BA4 80007FA4 2417000C */  addiu      $s7, $zero, 0xC
.L80007FA8:
/* 8BA8 80007FA8 C6240014 */  lwc1       $f4, 0x14($s1)
/* 8BAC 80007FAC C6A60014 */  lwc1       $f6, 0x14($s5)
/* 8BB0 80007FB0 C628001C */  lwc1       $f8, 0x1C($s1)
/* 8BB4 80007FB4 C6AA001C */  lwc1       $f10, 0x1C($s5)
/* 8BB8 80007FB8 46062001 */  sub.s      $f0, $f4, $f6
/* 8BBC 80007FBC 26300014 */  addiu      $s0, $s1, 0x14
/* 8BC0 80007FC0 460A4081 */  sub.s      $f2, $f8, $f10
/* 8BC4 80007FC4 46000402 */  mul.s      $f16, $f0, $f0
/* 8BC8 80007FC8 00000000 */  nop
/* 8BCC 80007FCC 46021482 */  mul.s      $f18, $f2, $f2
/* 8BD0 80007FD0 46128300 */  add.s      $f12, $f16, $f18
/* 8BD4 80007FD4 4614603C */  c.lt.s     $f12, $f20
/* 8BD8 80007FD8 00000000 */  nop
/* 8BDC 80007FDC 45000030 */  bc1f       .L800080A0
/* 8BE0 80007FE0 00000000 */   nop
/* 8BE4 80007FE4 4616603C */  c.lt.s     $f12, $f22
/* 8BE8 80007FE8 00004025 */  or         $t0, $zero, $zero
/* 8BEC 80007FEC 45000003 */  bc1f       .L80007FFC
/* 8BF0 80007FF0 00000000 */   nop
/* 8BF4 80007FF4 10000001 */  b          .L80007FFC
/* 8BF8 80007FF8 24082000 */   addiu     $t0, $zero, 0x2000
.L80007FFC:
/* 8BFC 80007FFC 8EC30000 */  lw         $v1, 0x0($s6)
/* 8C00 80008000 3C0FBA00 */  lui        $t7, (0xBA000C02 >> 16)
/* 8C04 80008004 35EF0C02 */  ori        $t7, $t7, (0xBA000C02 & 0xFFFF)
/* 8C08 80008008 246E0008 */  addiu      $t6, $v1, 0x8
/* 8C0C 8000800C AECE0000 */  sw         $t6, 0x0($s6)
/* 8C10 80008010 AC680004 */  sw         $t0, 0x4($v1)
/* 8C14 80008014 AC6F0000 */  sw         $t7, 0x0($v1)
/* 8C18 80008018 86190052 */  lh         $t9, 0x52($s0)
/* 8C1C 8000801C 8E380080 */  lw         $t8, 0x80($s1)
/* 8C20 80008020 00002025 */  or         $a0, $zero, $zero
/* 8C24 80008024 03370019 */  multu      $t9, $s7
/* 8C28 80008028 8F120010 */  lw         $s2, 0x10($t8)
/* 8C2C 8000802C 02002825 */  or         $a1, $s0, $zero
/* 8C30 80008030 8FA70068 */  lw         $a3, 0x68($sp)
/* 8C34 80008034 00004812 */  mflo       $t1
/* 8C38 80008038 01323021 */  addu       $a2, $t1, $s2
/* 8C3C 8000803C 0C0076CE */  jal        func_8001DB38
/* 8C40 80008040 00000000 */   nop
/* 8C44 80008044 860A0052 */  lh         $t2, 0x52($s0)
/* 8C48 80008048 96040058 */  lhu        $a0, 0x58($s0)
/* 8C4C 8000804C 02002825 */  or         $a1, $s0, $zero
/* 8C50 80008050 01570019 */  multu      $t2, $s7
/* 8C54 80008054 00005812 */  mflo       $t3
/* 8C58 80008058 01723021 */  addu       $a2, $t3, $s2
/* 8C5C 8000805C 0C00782B */  jal        func_8001E0AC
/* 8C60 80008060 00000000 */   nop
/* 8C64 80008064 C6040030 */  lwc1       $f4, 0x30($s0)
/* 8C68 80008068 C60C0000 */  lwc1       $f12, 0x0($s0)
/* 8C6C 8000806C C60E0004 */  lwc1       $f14, 0x4($s0)
/* 8C70 80008070 8E060008 */  lw         $a2, 0x8($s0)
/* 8C74 80008074 8E07002C */  lw         $a3, 0x2C($s0)
/* 8C78 80008078 E7A40010 */  swc1       $f4, 0x10($sp)
/* 8C7C 8000807C C6060034 */  lwc1       $f6, 0x34($s0)
/* 8C80 80008080 E7B80018 */  swc1       $f24, 0x18($sp)
/* 8C84 80008084 0C004618 */  jal        func_80011860
/* 8C88 80008088 E7A60014 */   swc1      $f6, 0x14($sp)
/* 8C8C 8000808C AE900000 */  sw         $s0, 0x0($s4)
/* 8C90 80008090 8FCC0000 */  lw         $t4, 0x0($fp)
/* 8C94 80008094 26940004 */  addiu      $s4, $s4, 0x4
/* 8C98 80008098 258D0001 */  addiu      $t5, $t4, 0x1
/* 8C9C 8000809C AFCD0000 */  sw         $t5, 0x0($fp)
.L800080A0:
/* 8CA0 800080A0 2673FFFF */  addiu      $s3, $s3, -0x1
/* 8CA4 800080A4 1660FFC0 */  bnez       $s3, .L80007FA8
/* 8CA8 800080A8 26310084 */   addiu     $s1, $s1, 0x84
.L800080AC:
/* 8CAC 800080AC 8FBF0064 */  lw         $ra, 0x64($sp)
/* 8CB0 800080B0 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 8CB4 800080B4 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 8CB8 800080B8 D7B80038 */  ldc1       $f24, 0x38($sp)
/* 8CBC 800080BC 8FB00040 */  lw         $s0, 0x40($sp)
/* 8CC0 800080C0 8FB10044 */  lw         $s1, 0x44($sp)
/* 8CC4 800080C4 8FB20048 */  lw         $s2, 0x48($sp)
/* 8CC8 800080C8 8FB3004C */  lw         $s3, 0x4C($sp)
/* 8CCC 800080CC 8FB40050 */  lw         $s4, 0x50($sp)
/* 8CD0 800080D0 8FB50054 */  lw         $s5, 0x54($sp)
/* 8CD4 800080D4 8FB60058 */  lw         $s6, 0x58($sp)
/* 8CD8 800080D8 8FB7005C */  lw         $s7, 0x5C($sp)
/* 8CDC 800080DC 8FBE0060 */  lw         $fp, 0x60($sp)
/* 8CE0 800080E0 03E00008 */  jr         $ra
/* 8CE4 800080E4 27BD0068 */   addiu     $sp, $sp, 0x68
