glabel func_8001FEEC
/* 20AEC 8001FEEC 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* 20AF0 8001FEF0 AFB3003C */  sw         $s3, 0x3C($sp)
/* 20AF4 8001FEF4 00809825 */  or         $s3, $a0, $zero
/* 20AF8 8001FEF8 AFBF0054 */  sw         $ra, 0x54($sp)
/* 20AFC 8001FEFC AFBE0050 */  sw         $fp, 0x50($sp)
/* 20B00 8001FF00 AFB7004C */  sw         $s7, 0x4C($sp)
/* 20B04 8001FF04 AFB60048 */  sw         $s6, 0x48($sp)
/* 20B08 8001FF08 AFB50044 */  sw         $s5, 0x44($sp)
/* 20B0C 8001FF0C AFB40040 */  sw         $s4, 0x40($sp)
/* 20B10 8001FF10 AFB20038 */  sw         $s2, 0x38($sp)
/* 20B14 8001FF14 AFB10034 */  sw         $s1, 0x34($sp)
/* 20B18 8001FF18 AFB00030 */  sw         $s0, 0x30($sp)
/* 20B1C 8001FF1C 3C0E8008 */  lui        $t6, %hi(D_8007B2E4)
/* 20B20 8001FF20 8DCEB2E4 */  lw         $t6, %lo(D_8007B2E4)($t6)
/* 20B24 8001FF24 8E620068 */  lw         $v0, 0x68($s3)
/* 20B28 8001FF28 27A700B0 */  addiu      $a3, $sp, 0xB0
/* 20B2C 8001FF2C 31CF0800 */  andi       $t7, $t6, 0x800
/* 20B30 8001FF30 15E00082 */  bnez       $t7, .L8002013C
/* 20B34 8001FF34 0040F025 */   or        $fp, $v0, $zero
/* 20B38 8001FF38 8E630064 */  lw         $v1, 0x64($s3)
/* 20B3C 8001FF3C 24010001 */  addiu      $at, $zero, 0x1
/* 20B40 8001FF40 27B900AC */  addiu      $t9, $sp, 0xAC
/* 20B44 8001FF44 94780000 */  lhu        $t8, 0x0($v1)
/* 20B48 8001FF48 57010004 */  bnel       $t8, $at, .L8001FF5C
/* 20B4C 8001FF4C C464001C */   lwc1      $f4, 0x1C($v1)
/* 20B50 8001FF50 10000006 */  b          .L8001FF6C
/* 20B54 8001FF54 C44E0094 */   lwc1      $f14, 0x94($v0)
/* 20B58 8001FF58 C464001C */  lwc1       $f4, 0x1C($v1)
.L8001FF5C:
/* 20B5C 8001FF5C C6660024 */  lwc1       $f6, 0x24($s3)
/* 20B60 8001FF60 C66A0004 */  lwc1       $f10, 0x4($s3)
/* 20B64 8001FF64 46062202 */  mul.s      $f8, $f4, $f6
/* 20B68 8001FF68 46085380 */  add.s      $f14, $f10, $f8
.L8001FF6C:
/* 20B6C 8001FF6C C66C0000 */  lwc1       $f12, 0x0($s3)
/* 20B70 8001FF70 8E660008 */  lw         $a2, 0x8($s3)
/* 20B74 8001FF74 0C00904F */  jal        func_8002413C
/* 20B78 8001FF78 AFB90010 */   sw        $t9, 0x10($sp)
/* 20B7C 8001FF7C 3C048008 */  lui        $a0, %hi(D_8007B2FC)
/* 20B80 8001FF80 2484B2FC */  addiu      $a0, $a0, %lo(D_8007B2FC)
/* 20B84 8001FF84 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 20B88 8001FF88 00406025 */  or         $t4, $v0, $zero
/* 20B8C 8001FF8C 8C830000 */  lw         $v1, 0x0($a0)
/* 20B90 8001FF90 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
/* 20B94 8001FF94 0000B025 */  or         $s6, $zero, $zero
/* 20B98 8001FF98 246E0008 */  addiu      $t6, $v1, 0x8
/* 20B9C 8001FF9C AC8E0000 */  sw         $t6, 0x0($a0)
/* 20BA0 8001FFA0 AC600004 */  sw         $zero, 0x4($v1)
/* 20BA4 8001FFA4 AC6D0000 */  sw         $t5, 0x0($v1)
/* 20BA8 8001FFA8 8C830000 */  lw         $v1, 0x0($a0)
/* 20BAC 8001FFAC 3C19803A */  lui        $t9, %hi(D_803A2960)
/* 20BB0 8001FFB0 27392960 */  addiu      $t9, $t9, %lo(D_803A2960)
/* 20BB4 8001FFB4 246F0008 */  addiu      $t7, $v1, 0x8
/* 20BB8 8001FFB8 AC8F0000 */  sw         $t7, 0x0($a0)
/* 20BBC 8001FFBC AC790004 */  sw         $t9, 0x4($v1)
/* 20BC0 8001FFC0 AC780000 */  sw         $t8, 0x0($v1)
/* 20BC4 8001FFC4 8C830000 */  lw         $v1, 0x0($a0)
/* 20BC8 8001FFC8 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
/* 20BCC 8001FFCC 3C19F500 */  lui        $t9, (0xF5000100 >> 16)
/* 20BD0 8001FFD0 246E0008 */  addiu      $t6, $v1, 0x8
/* 20BD4 8001FFD4 AC8E0000 */  sw         $t6, 0x0($a0)
/* 20BD8 8001FFD8 AC600004 */  sw         $zero, 0x4($v1)
/* 20BDC 8001FFDC AC6F0000 */  sw         $t7, 0x0($v1)
/* 20BE0 8001FFE0 8C830000 */  lw         $v1, 0x0($a0)
/* 20BE4 8001FFE4 37390100 */  ori        $t9, $t9, (0xF5000100 & 0xFFFF)
/* 20BE8 8001FFE8 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
/* 20BEC 8001FFEC 24780008 */  addiu      $t8, $v1, 0x8
/* 20BF0 8001FFF0 AC980000 */  sw         $t8, 0x0($a0)
/* 20BF4 8001FFF4 AC6E0004 */  sw         $t6, 0x4($v1)
/* 20BF8 8001FFF8 AC790000 */  sw         $t9, 0x0($v1)
/* 20BFC 8001FFFC 8C830000 */  lw         $v1, 0x0($a0)
/* 20C00 80020000 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 20C04 80020004 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
/* 20C08 80020008 246F0008 */  addiu      $t7, $v1, 0x8
/* 20C0C 8002000C AC8F0000 */  sw         $t7, 0x0($a0)
/* 20C10 80020010 AC600004 */  sw         $zero, 0x4($v1)
/* 20C14 80020014 AC780000 */  sw         $t8, 0x0($v1)
/* 20C18 80020018 8C830000 */  lw         $v1, 0x0($a0)
/* 20C1C 8002001C 3C0F073F */  lui        $t7, (0x73FC000 >> 16)
/* 20C20 80020020 35EFC000 */  ori        $t7, $t7, (0x73FC000 & 0xFFFF)
/* 20C24 80020024 24790008 */  addiu      $t9, $v1, 0x8
/* 20C28 80020028 AC990000 */  sw         $t9, 0x0($a0)
/* 20C2C 8002002C AC6F0004 */  sw         $t7, 0x4($v1)
/* 20C30 80020030 AC6E0000 */  sw         $t6, 0x0($v1)
/* 20C34 80020034 8C830000 */  lw         $v1, 0x0($a0)
/* 20C38 80020038 0000B825 */  or         $s7, $zero, $zero
/* 20C3C 8002003C 0000A025 */  or         $s4, $zero, $zero
/* 20C40 80020040 24780008 */  addiu      $t8, $v1, 0x8
/* 20C44 80020044 AC980000 */  sw         $t8, 0x0($a0)
/* 20C48 80020048 AC600004 */  sw         $zero, 0x4($v1)
/* 20C4C 8002004C AC6D0000 */  sw         $t5, 0x0($v1)
/* 20C50 80020050 03C08025 */  or         $s0, $fp, $zero
.L80020054:
/* 20C54 80020054 92030012 */  lbu        $v1, 0x12($s0)
/* 20C58 80020058 3C0E803B */  lui        $t6, %hi(D_803A8D70)
/* 20C5C 8002005C 25CE8D70 */  addiu      $t6, $t6, %lo(D_803A8D70)
/* 20C60 80020060 10600032 */  beqz       $v1, .L8002012C
/* 20C64 80020064 0003C8C0 */   sll       $t9, $v1, 3
/* 20C68 80020068 032E1021 */  addu       $v0, $t9, $t6
/* 20C6C 8002006C 3C188005 */  lui        $t8, %hi(D_8004D2CC)
/* 20C70 80020070 2718D2CC */  addiu      $t8, $t8, %lo(D_8004D2CC)
/* 20C74 80020074 00147840 */  sll        $t7, $s4, 1
/* 20C78 80020078 84480000 */  lh         $t0, 0x0($v0)
/* 20C7C 8002007C 84490002 */  lh         $t1, 0x2($v0)
/* 20C80 80020080 94510004 */  lhu        $s1, 0x4($v0)
/* 20C84 80020084 94520006 */  lhu        $s2, 0x6($v0)
/* 20C88 80020088 11800016 */  beqz       $t4, .L800200E4
/* 20C8C 8002008C 01F8A821 */   addu      $s5, $t7, $t8
/* 20C90 80020090 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 20C94 80020094 8FB800AC */  lw         $t8, 0xAC($sp)
/* 20C98 80020098 00117843 */  sra        $t7, $s1, 1
/* 20C9C 8002009C 03377021 */  addu       $t6, $t9, $s7
/* 20CA0 800200A0 01CF2823 */  subu       $a1, $t6, $t7
/* 20CA4 800200A4 0316C821 */  addu       $t9, $t8, $s6
/* 20CA8 800200A8 24180400 */  addiu      $t8, $zero, 0x400
/* 20CAC 800200AC 240F0400 */  addiu      $t7, $zero, 0x400
/* 20CB0 800200B0 00127043 */  sra        $t6, $s2, 1
/* 20CB4 800200B4 3C04803A */  lui        $a0, %hi(D_803A6F70)
/* 20CB8 800200B8 24846F70 */  addiu      $a0, $a0, %lo(D_803A6F70)
/* 20CBC 800200BC 032E3023 */  subu       $a2, $t9, $t6
/* 20CC0 800200C0 AFAF001C */  sw         $t7, 0x1C($sp)
/* 20CC4 800200C4 AFB80020 */  sw         $t8, 0x20($sp)
/* 20CC8 800200C8 02203825 */  or         $a3, $s1, $zero
/* 20CCC 800200CC AFB20010 */  sw         $s2, 0x10($sp)
/* 20CD0 800200D0 AFA80014 */  sw         $t0, 0x14($sp)
/* 20CD4 800200D4 AFA90018 */  sw         $t1, 0x18($sp)
/* 20CD8 800200D8 0C00843F */  jal        func_800210FC
/* 20CDC 800200DC AFAC00B4 */   sw        $t4, 0xB4($sp)
/* 20CE0 800200E0 8FAC00B4 */  lw         $t4, 0xB4($sp)
.L800200E4:
/* 20CE4 800200E4 96B90000 */  lhu        $t9, 0x0($s5)
/* 20CE8 800200E8 97CE0000 */  lhu        $t6, 0x0($fp)
/* 20CEC 800200EC 00111843 */  sra        $v1, $s1, 1
/* 20CF0 800200F0 00122043 */  sra        $a0, $s2, 1
/* 20CF4 800200F4 032E7824 */  and        $t7, $t9, $t6
/* 20CF8 800200F8 15E00003 */  bnez       $t7, .L80020108
/* 20CFC 800200FC 02E3B821 */   addu      $s7, $s7, $v1
/* 20D00 80020100 10000009 */  b          .L80020128
/* 20D04 80020104 A2000012 */   sb        $zero, 0x12($s0)
.L80020108:
/* 20D08 80020108 82020022 */  lb         $v0, 0x22($s0)
/* 20D0C 8002010C 18400006 */  blez       $v0, .L80020128
/* 20D10 80020110 2458FFFF */   addiu     $t8, $v0, -0x1
/* 20D14 80020114 A2180022 */  sb         $t8, 0x22($s0)
/* 20D18 80020118 82190022 */  lb         $t9, 0x22($s0)
/* 20D1C 8002011C 57200003 */  bnel       $t9, $zero, .L8002012C
/* 20D20 80020120 02C4B023 */   subu      $s6, $s6, $a0
/* 20D24 80020124 A2000012 */  sb         $zero, 0x12($s0)
.L80020128:
/* 20D28 80020128 02C4B023 */  subu       $s6, $s6, $a0
.L8002012C:
/* 20D2C 8002012C 26940001 */  addiu      $s4, $s4, 0x1
/* 20D30 80020130 24010007 */  addiu      $at, $zero, 0x7
/* 20D34 80020134 1681FFC7 */  bne        $s4, $at, .L80020054
/* 20D38 80020138 26100001 */   addiu     $s0, $s0, 0x1
.L8002013C:
/* 20D3C 8002013C 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 20D40 80020140 44810800 */  mtc1       $at, $f1
/* 20D44 80020144 44800000 */  mtc1       $zero, $f0
/* 20D48 80020148 0000A025 */  or         $s4, $zero, $zero
/* 20D4C 8002014C 00003025 */  or         $a2, $zero, $zero
/* 20D50 80020150 03C02025 */  or         $a0, $fp, $zero
/* 20D54 80020154 240A0001 */  addiu      $t2, $zero, 0x1
/* 20D58 80020158 24090004 */  addiu      $t1, $zero, 0x4
/* 20D5C 8002015C 24080008 */  addiu      $t0, $zero, 0x8
/* 20D60 80020160 2407FFFE */  addiu      $a3, $zero, -0x2
.L80020164:
/* 20D64 80020164 8C8E0044 */  lw         $t6, 0x44($a0)
/* 20D68 80020168 51C0004F */  beql       $t6, $zero, .L800202A8
/* 20D6C 8002016C 26940001 */   addiu     $s4, $s4, 0x1
/* 20D70 80020170 8E6F0068 */  lw         $t7, 0x68($s3)
/* 20D74 80020174 C6700000 */  lwc1       $f16, 0x0($s3)
/* 20D78 80020178 3C0E8005 */  lui        $t6, %hi(D_8004D2DC)
/* 20D7C 8002017C 01E6C021 */  addu       $t8, $t7, $a2
/* 20D80 80020180 8F020044 */  lw         $v0, 0x44($t8)
/* 20D84 80020184 25CED2DC */  addiu      $t6, $t6, %lo(D_8004D2DC)
/* 20D88 80020188 0014C840 */  sll        $t9, $s4, 1
/* 20D8C 8002018C E450000C */  swc1       $f16, 0xC($v0)
/* 20D90 80020190 C6720008 */  lwc1       $f18, 0x8($s3)
/* 20D94 80020194 032E2821 */  addu       $a1, $t9, $t6
/* 20D98 80020198 03D48021 */  addu       $s0, $fp, $s4
/* 20D9C 8002019C E4520014 */  swc1       $f18, 0x14($v0)
/* 20DA0 800201A0 8E630064 */  lw         $v1, 0x64($s3)
/* 20DA4 800201A4 946F0000 */  lhu        $t7, 0x0($v1)
/* 20DA8 800201A8 554F0012 */  bnel       $t2, $t7, .L800201F4
/* 20DAC 800201AC 94580008 */   lhu       $t8, 0x8($v0)
/* 20DB0 800201B0 94580008 */  lhu        $t8, 0x8($v0)
/* 20DB4 800201B4 33190100 */  andi       $t9, $t8, 0x100
/* 20DB8 800201B8 53200006 */  beql       $t9, $zero, .L800201D4
/* 20DBC 800201BC C4660018 */   lwc1      $f6, 0x18($v1)
/* 20DC0 800201C0 8E6E0068 */  lw         $t6, 0x68($s3)
/* 20DC4 800201C4 C5C40094 */  lwc1       $f4, 0x94($t6)
/* 20DC8 800201C8 1000001B */  b          .L80020238
/* 20DCC 800201CC E4440010 */   swc1      $f4, 0x10($v0)
/* 20DD0 800201D0 C4660018 */  lwc1       $f6, 0x18($v1)
.L800201D4:
/* 20DD4 800201D4 C66A0024 */  lwc1       $f10, 0x24($s3)
/* 20DD8 800201D8 8E6F0068 */  lw         $t7, 0x68($s3)
/* 20DDC 800201DC 460A3202 */  mul.s      $f8, $f6, $f10
/* 20DE0 800201E0 C5F00094 */  lwc1       $f16, 0x94($t7)
/* 20DE4 800201E4 46088481 */  sub.s      $f18, $f16, $f8
/* 20DE8 800201E8 10000013 */  b          .L80020238
/* 20DEC 800201EC E4520010 */   swc1      $f18, 0x10($v0)
/* 20DF0 800201F0 94580008 */  lhu        $t8, 0x8($v0)
.L800201F4:
/* 20DF4 800201F4 33190100 */  andi       $t9, $t8, 0x100
/* 20DF8 800201F8 5320000E */  beql       $t9, $zero, .L80020234
/* 20DFC 800201FC C6680004 */   lwc1      $f8, 0x4($s3)
/* 20E00 80020200 C464001C */  lwc1       $f4, 0x1C($v1)
/* 20E04 80020204 C6700024 */  lwc1       $f16, 0x24($s3)
/* 20E08 80020208 460021A1 */  cvt.d.s    $f6, $f4
/* 20E0C 8002020C 46008221 */  cvt.d.s    $f8, $f16
/* 20E10 80020210 46203282 */  mul.d      $f10, $f6, $f0
/* 20E14 80020214 C6640004 */  lwc1       $f4, 0x4($s3)
/* 20E18 80020218 460021A1 */  cvt.d.s    $f6, $f4
/* 20E1C 8002021C 46285482 */  mul.d      $f18, $f10, $f8
/* 20E20 80020220 46323400 */  add.d      $f16, $f6, $f18
/* 20E24 80020224 462082A0 */  cvt.s.d    $f10, $f16
/* 20E28 80020228 10000003 */  b          .L80020238
/* 20E2C 8002022C E44A0010 */   swc1      $f10, 0x10($v0)
/* 20E30 80020230 C6680004 */  lwc1       $f8, 0x4($s3)
.L80020234:
/* 20E34 80020234 E4480010 */  swc1       $f8, 0x10($v0)
.L80020238:
/* 20E38 80020238 94AE0000 */  lhu        $t6, 0x0($a1)
/* 20E3C 8002023C 97CF0000 */  lhu        $t7, 0x0($fp)
/* 20E40 80020240 01CFC024 */  and        $t8, $t6, $t7
/* 20E44 80020244 5700000A */  bnel       $t8, $zero, .L80020270
/* 20E48 80020248 82030032 */   lb        $v1, 0x32($s0)
/* 20E4C 8002024C AC800044 */  sw         $zero, 0x44($a0)
/* 20E50 80020250 94430008 */  lhu        $v1, 0x8($v0)
/* 20E54 80020254 30790001 */  andi       $t9, $v1, 0x1
/* 20E58 80020258 13200012 */  beqz       $t9, .L800202A4
/* 20E5C 8002025C 00677024 */   and       $t6, $v1, $a3
/* 20E60 80020260 A44E0008 */  sh         $t6, 0x8($v0)
/* 20E64 80020264 1000000F */  b          .L800202A4
/* 20E68 80020268 A4480000 */   sh        $t0, 0x0($v0)
/* 20E6C 8002026C 82030032 */  lb         $v1, 0x32($s0)
.L80020270:
/* 20E70 80020270 1860000C */  blez       $v1, .L800202A4
/* 20E74 80020274 246FFFFF */   addiu     $t7, $v1, -0x1
/* 20E78 80020278 A20F0032 */  sb         $t7, 0x32($s0)
/* 20E7C 8002027C 82180032 */  lb         $t8, 0x32($s0)
/* 20E80 80020280 57000009 */  bnel       $t8, $zero, .L800202A8
/* 20E84 80020284 26940001 */   addiu     $s4, $s4, 0x1
/* 20E88 80020288 AC800044 */  sw         $zero, 0x44($a0)
/* 20E8C 8002028C 94430008 */  lhu        $v1, 0x8($v0)
/* 20E90 80020290 30790001 */  andi       $t9, $v1, 0x1
/* 20E94 80020294 13200003 */  beqz       $t9, .L800202A4
/* 20E98 80020298 00677024 */   and       $t6, $v1, $a3
/* 20E9C 8002029C A44E0008 */  sh         $t6, 0x8($v0)
/* 20EA0 800202A0 A4480000 */  sh         $t0, 0x0($v0)
.L800202A4:
/* 20EA4 800202A4 26940001 */  addiu      $s4, $s4, 0x1
.L800202A8:
/* 20EA8 800202A8 24C60004 */  addiu      $a2, $a2, 0x4
/* 20EAC 800202AC 1689FFAD */  bne        $s4, $t1, .L80020164
/* 20EB0 800202B0 24840004 */   addiu     $a0, $a0, 0x4
/* 20EB4 800202B4 8FBF0054 */  lw         $ra, 0x54($sp)
/* 20EB8 800202B8 8FB00030 */  lw         $s0, 0x30($sp)
/* 20EBC 800202BC 8FB10034 */  lw         $s1, 0x34($sp)
/* 20EC0 800202C0 8FB20038 */  lw         $s2, 0x38($sp)
/* 20EC4 800202C4 8FB3003C */  lw         $s3, 0x3C($sp)
/* 20EC8 800202C8 8FB40040 */  lw         $s4, 0x40($sp)
/* 20ECC 800202CC 8FB50044 */  lw         $s5, 0x44($sp)
/* 20ED0 800202D0 8FB60048 */  lw         $s6, 0x48($sp)
/* 20ED4 800202D4 8FB7004C */  lw         $s7, 0x4C($sp)
/* 20ED8 800202D8 8FBE0050 */  lw         $fp, 0x50($sp)
/* 20EDC 800202DC 03E00008 */  jr         $ra
/* 20EE0 800202E0 27BD00C0 */   addiu     $sp, $sp, 0xC0
