.section .late_rodata
glabel D_800712C0
/* 71EC0 800712C0 3D8F5C29 */ .float 0.0700000003
/* 71EC4 800712C4 00000000 */ .float 0


.section .text
glabel func_80011B70
/* 12770 80011B70 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 12774 80011B74 AFBF003C */  sw         $ra, 0x3C($sp)
/* 12778 80011B78 AFB30038 */  sw         $s3, 0x38($sp)
/* 1277C 80011B7C AFB20034 */  sw         $s2, 0x34($sp)
/* 12780 80011B80 AFB10030 */  sw         $s1, 0x30($sp)
/* 12784 80011B84 AFB0002C */  sw         $s0, 0x2C($sp)
/* 12788 80011B88 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 1278C 80011B8C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 12790 80011B90 3C038008 */  lui        $v1, %hi(D_80084EE4)
/* 12794 80011B94 3C028005 */  lui        $v0, %hi(D_8004C470)
/* 12798 80011B98 2442C470 */  addiu      $v0, $v0, %lo(D_8004C470)
/* 1279C 80011B9C 8C634EE4 */  lw         $v1, %lo(D_80084EE4)($v1)
/* 127A0 80011BA0 00009825 */  or         $s3, $zero, $zero
.L80011BA4:
/* 127A4 80011BA4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 127A8 80011BA8 506E0006 */  beql       $v1, $t6, .L80011BC4
/* 127AC 80011BAC 24010013 */   addiu     $at, $zero, 0x13
/* 127B0 80011BB0 26730001 */  addiu      $s3, $s3, 0x1
/* 127B4 80011BB4 2E610013 */  sltiu      $at, $s3, 0x13
/* 127B8 80011BB8 1420FFFA */  bnez       $at, .L80011BA4
/* 127BC 80011BBC 24420008 */   addiu     $v0, $v0, 0x8
/* 127C0 80011BC0 24010013 */  addiu      $at, $zero, 0x13
.L80011BC4:
/* 127C4 80011BC4 1261004D */  beq        $s3, $at, .L80011CFC
/* 127C8 80011BC8 3C048008 */   lui       $a0, %hi(D_800869A0)
/* 127CC 80011BCC 3C188008 */  lui        $t8, %hi(gNextSubmap)
/* 127D0 80011BD0 8F184EE8 */  lw         $t8, %lo(gNextSubmap)($t8)
/* 127D4 80011BD4 8C4F0004 */  lw         $t7, 0x4($v0)
/* 127D8 80011BD8 3C048008 */  lui        $a0, %hi(D_800869A0)
/* 127DC 80011BDC 0018C8C0 */  sll        $t9, $t8, 3
/* 127E0 80011BE0 01F91821 */  addu       $v1, $t7, $t9
/* 127E4 80011BE4 94730000 */  lhu        $s3, 0x0($v1)
/* 127E8 80011BE8 248469A0 */  addiu      $a0, $a0, %lo(D_800869A0)
/* 127EC 80011BEC 3C108008 */  lui        $s0, %hi(D_800862E0)
/* 127F0 80011BF0 AC930000 */  sw         $s3, 0x0($a0)
/* 127F4 80011BF4 8C710004 */  lw         $s1, 0x4($v1)
/* 127F8 80011BF8 12600042 */  beqz       $s3, .L80011D04
/* 127FC 80011BFC 261062E0 */   addiu     $s0, $s0, %lo(D_800862E0)
/* 12800 80011C00 3C018007 */  lui        $at, %hi(D_800712C0)
/* 12804 80011C04 3C128008 */  lui        $s2, %hi(D_800869B8)
/* 12808 80011C08 4480A000 */  mtc1       $zero, $f20
/* 1280C 80011C0C 265269B8 */  addiu      $s2, $s2, %lo(D_800869B8)
/* 12810 80011C10 C43612C0 */  lwc1       $f22, %lo(D_800712C0)($at)
.L80011C14:
/* 12814 80011C14 C6240000 */  lwc1       $f4, 0x0($s1)
/* 12818 80011C18 4600A386 */  mov.s      $f14, $f20
/* 1281C 80011C1C 24070A00 */  addiu      $a3, $zero, 0xA00
/* 12820 80011C20 E6040000 */  swc1       $f4, 0x0($s0)
/* 12824 80011C24 C6260004 */  lwc1       $f6, 0x4($s1)
/* 12828 80011C28 E614000C */  swc1       $f20, 0xC($s0)
/* 1282C 80011C2C E6140014 */  swc1       $f20, 0x14($s0)
/* 12830 80011C30 E6060008 */  swc1       $f6, 0x8($s0)
/* 12834 80011C34 C6280008 */  lwc1       $f8, 0x8($s1)
/* 12838 80011C38 8E060008 */  lw         $a2, 0x8($s0)
/* 1283C 80011C3C C60C0000 */  lwc1       $f12, 0x0($s0)
/* 12840 80011C40 E6080010 */  swc1       $f8, 0x10($s0)
/* 12844 80011C44 0C003B98 */  jal        func_8000EE60
/* 12848 80011C48 AFB20010 */   sw        $s2, 0x10($sp)
/* 1284C 80011C4C C64A0004 */  lwc1       $f10, 0x4($s2)
/* 12850 80011C50 E60A0004 */  swc1       $f10, 0x4($s0)
/* 12854 80011C54 C650000C */  lwc1       $f16, 0xC($s2)
/* 12858 80011C58 E610002C */  swc1       $f16, 0x2C($s0)
/* 1285C 80011C5C C6520010 */  lwc1       $f18, 0x10($s2)
/* 12860 80011C60 E6120030 */  swc1       $f18, 0x30($s0)
/* 12864 80011C64 C6440014 */  lwc1       $f4, 0x14($s2)
/* 12868 80011C68 E6040034 */  swc1       $f4, 0x34($s0)
/* 1286C 80011C6C C6260014 */  lwc1       $f6, 0x14($s1)
/* 12870 80011C70 E606001C */  swc1       $f6, 0x1C($s0)
/* 12874 80011C74 C6280018 */  lwc1       $f8, 0x18($s1)
/* 12878 80011C78 E6080018 */  swc1       $f8, 0x18($s0)
/* 1287C 80011C7C C62A001C */  lwc1       $f10, 0x1C($s1)
/* 12880 80011C80 E60A0020 */  swc1       $f10, 0x20($s0)
/* 12884 80011C84 C630000C */  lwc1       $f16, 0xC($s1)
/* 12888 80011C88 E6100044 */  swc1       $f16, 0x44($s0)
/* 1288C 80011C8C C6320010 */  lwc1       $f18, 0x10($s1)
/* 12890 80011C90 E6160024 */  swc1       $f22, 0x24($s0)
/* 12894 80011C94 E612004C */  swc1       $f18, 0x4C($s0)
/* 12898 80011C98 92290020 */  lbu        $t1, 0x20($s1)
/* 1289C 80011C9C A6090062 */  sh         $t1, 0x62($s0)
/* 128A0 80011CA0 922A0021 */  lbu        $t2, 0x21($s1)
/* 128A4 80011CA4 A6000060 */  sh         $zero, 0x60($s0)
/* 128A8 80011CA8 3124FFFF */  andi       $a0, $t1, 0xFFFF
/* 128AC 80011CAC 0C00485C */  jal        func_80012170
/* 128B0 80011CB0 A60A0050 */   sh        $t2, 0x50($s0)
/* 128B4 80011CB4 10400003 */  beqz       $v0, .L80011CC4
/* 128B8 80011CB8 02002025 */   or        $a0, $s0, $zero
/* 128BC 80011CBC 10000002 */  b          .L80011CC8
/* 128C0 80011CC0 24050003 */   addiu     $a1, $zero, 0x3
.L80011CC4:
/* 128C4 80011CC4 00002825 */  or         $a1, $zero, $zero
.L80011CC8:
/* 128C8 80011CC8 240B0001 */  addiu      $t3, $zero, 0x1
/* 128CC 80011CCC 240C0001 */  addiu      $t4, $zero, 0x1
/* 128D0 80011CD0 AFAC0014 */  sw         $t4, 0x14($sp)
/* 128D4 80011CD4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 128D8 80011CD8 24060001 */  addiu      $a2, $zero, 0x1
/* 128DC 80011CDC 0C00762C */  jal        func_8001D8B0
/* 128E0 80011CE0 00A03825 */   or        $a3, $a1, $zero
/* 128E4 80011CE4 2673FFFF */  addiu      $s3, $s3, -0x1
/* 128E8 80011CE8 2610006C */  addiu      $s0, $s0, 0x6C
/* 128EC 80011CEC 1660FFC9 */  bnez       $s3, .L80011C14
/* 128F0 80011CF0 26310024 */   addiu     $s1, $s1, 0x24
/* 128F4 80011CF4 10000004 */  b          .L80011D08
/* 128F8 80011CF8 8FBF003C */   lw        $ra, 0x3C($sp)
.L80011CFC:
/* 128FC 80011CFC 248469A0 */  addiu      $a0, $a0, %lo(D_800869A0)
/* 12900 80011D00 AC800000 */  sw         $zero, 0x0($a0)
.L80011D04:
/* 12904 80011D04 8FBF003C */  lw         $ra, 0x3C($sp)
.L80011D08:
/* 12908 80011D08 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1290C 80011D0C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 12910 80011D10 8FB0002C */  lw         $s0, 0x2C($sp)
/* 12914 80011D14 8FB10030 */  lw         $s1, 0x30($sp)
/* 12918 80011D18 8FB20034 */  lw         $s2, 0x34($sp)
/* 1291C 80011D1C 8FB30038 */  lw         $s3, 0x38($sp)
/* 12920 80011D20 03E00008 */  jr         $ra
/* 12924 80011D24 27BD0040 */   addiu     $sp, $sp, 0x40
