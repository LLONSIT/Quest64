glabel func_800070C0
/* 7CC0 800070C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7CC4 800070C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7CC8 800070C8 00803025 */  or         $a2, $a0, $zero
/* 7CCC 800070CC AFA0001C */  sw         $zero, 0x1C($sp)
/* 7CD0 800070D0 94C7011C */  lhu        $a3, 0x11C($a2)
/* 7CD4 800070D4 3C028009 */  lui        $v0, %hi(D_80092876)
/* 7CD8 800070D8 28E10003 */  slti       $at, $a3, 0x3
/* 7CDC 800070DC 1020003F */  beqz       $at, .L800071DC
/* 7CE0 800070E0 00000000 */   nop
/* 7CE4 800070E4 94422876 */  lhu        $v0, %lo(D_80092876)($v0)
/* 7CE8 800070E8 304E000F */  andi       $t6, $v0, 0xF
/* 7CEC 800070EC 11C0003B */  beqz       $t6, .L800071DC
/* 7CF0 800070F0 304F0008 */   andi      $t7, $v0, 0x8
/* 7CF4 800070F4 11E00003 */  beqz       $t7, .L80007104
/* 7CF8 800070F8 30580004 */   andi      $t8, $v0, 0x4
/* 7CFC 800070FC 1000000E */  b          .L80007138
/* 7D00 80007100 AFA00024 */   sw        $zero, 0x24($sp)
.L80007104:
/* 7D04 80007104 13000004 */  beqz       $t8, .L80007118
/* 7D08 80007108 30480002 */   andi      $t0, $v0, 0x2
/* 7D0C 8000710C 24190002 */  addiu      $t9, $zero, 0x2
/* 7D10 80007110 10000009 */  b          .L80007138
/* 7D14 80007114 AFB90024 */   sw        $t9, 0x24($sp)
.L80007118:
/* 7D18 80007118 11000004 */  beqz       $t0, .L8000712C
/* 7D1C 8000711C 304A0001 */   andi      $t2, $v0, 0x1
/* 7D20 80007120 24090001 */  addiu      $t1, $zero, 0x1
/* 7D24 80007124 10000004 */  b          .L80007138
/* 7D28 80007128 AFA90024 */   sw        $t1, 0x24($sp)
.L8000712C:
/* 7D2C 8000712C 11400002 */  beqz       $t2, .L80007138
/* 7D30 80007130 240B0003 */   addiu     $t3, $zero, 0x3
/* 7D34 80007134 AFAB0024 */  sw         $t3, 0x24($sp)
.L80007138:
/* 7D38 80007138 8FAC0024 */  lw         $t4, 0x24($sp)
/* 7D3C 8000713C 00C76821 */  addu       $t5, $a2, $a3
/* 7D40 80007140 24C50119 */  addiu      $a1, $a2, 0x119
/* 7D44 80007144 A1AC0119 */  sb         $t4, 0x119($t5)
/* 7D48 80007148 94CE011C */  lhu        $t6, 0x11C($a2)
/* 7D4C 8000714C 25CF0001 */  addiu      $t7, $t6, 0x1
/* 7D50 80007150 A4CF011C */  sh         $t7, 0x11C($a2)
/* 7D54 80007154 AFA60028 */  sw         $a2, 0x28($sp)
/* 7D58 80007158 0C005224 */  jal        func_80014890
/* 7D5C 8000715C 31E4FFFF */   andi      $a0, $t7, 0xFFFF
/* 7D60 80007160 8FA60028 */  lw         $a2, 0x28($sp)
/* 7D64 80007164 00402025 */  or         $a0, $v0, $zero
/* 7D68 80007168 8CD80010 */  lw         $t8, 0x10($a2)
/* 7D6C 8000716C 0C005274 */  jal        func_800149D0
/* 7D70 80007170 97050008 */   lhu       $a1, 0x8($t8)
/* 7D74 80007174 30590005 */  andi       $t9, $v0, 0x5
/* 7D78 80007178 13200006 */  beqz       $t9, .L80007194
/* 7D7C 8000717C 8FA60028 */   lw        $a2, 0x28($sp)
/* 7D80 80007180 94C8011C */  lhu        $t0, 0x11C($a2)
/* 7D84 80007184 24020013 */  addiu      $v0, $zero, 0x13
/* 7D88 80007188 2509FFFF */  addiu      $t1, $t0, -0x1
/* 7D8C 8000718C 1000000B */  b          .L800071BC
/* 7D90 80007190 A4C9011C */   sh        $t1, 0x11C($a2)
.L80007194:
/* 7D94 80007194 3C048008 */  lui        $a0, %hi(D_8007B2E4)
/* 7D98 80007198 2484B2E4 */  addiu      $a0, $a0, %lo(D_8007B2E4)
/* 7D9C 8000719C 8C830000 */  lw         $v1, 0x0($a0)
/* 7DA0 800071A0 24020017 */  addiu      $v0, $zero, 0x17
/* 7DA4 800071A4 306A0004 */  andi       $t2, $v1, 0x4
/* 7DA8 800071A8 15400003 */  bnez       $t2, .L800071B8
/* 7DAC 800071AC 346B0004 */   ori       $t3, $v1, 0x4
/* 7DB0 800071B0 10000002 */  b          .L800071BC
/* 7DB4 800071B4 AC8B0000 */   sw        $t3, 0x0($a0)
.L800071B8:
/* 7DB8 800071B8 24020017 */  addiu      $v0, $zero, 0x17
.L800071BC:
/* 7DBC 800071BC 00022E00 */  sll        $a1, $v0, 24
/* 7DC0 800071C0 00056603 */  sra        $t4, $a1, 24
/* 7DC4 800071C4 01802825 */  or         $a1, $t4, $zero
/* 7DC8 800071C8 00002025 */  or         $a0, $zero, $zero
/* 7DCC 800071CC 0C009A35 */  jal        func_800268D4
/* 7DD0 800071D0 240600FF */   addiu     $a2, $zero, 0xFF
/* 7DD4 800071D4 10000030 */  b          .L80007298
/* 7DD8 800071D8 8FA2001C */   lw        $v0, 0x1C($sp)
.L800071DC:
/* 7DDC 800071DC 3C028009 */  lui        $v0, %hi(D_80092876)
/* 7DE0 800071E0 10E00017 */  beqz       $a3, .L80007240
/* 7DE4 800071E4 94422876 */   lhu       $v0, %lo(D_80092876)($v0)
/* 7DE8 800071E8 304DA000 */  andi       $t5, $v0, 0xA000
/* 7DEC 800071EC 11A00014 */  beqz       $t5, .L80007240
/* 7DF0 800071F0 30E4FFFF */   andi      $a0, $a3, 0xFFFF
/* 7DF4 800071F4 24C50119 */  addiu      $a1, $a2, 0x119
/* 7DF8 800071F8 0C005224 */  jal        func_80014890
/* 7DFC 800071FC AFA60028 */   sw        $a2, 0x28($sp)
/* 7E00 80007200 8FA60028 */  lw         $a2, 0x28($sp)
/* 7E04 80007204 3044FFFF */  andi       $a0, $v0, 0xFFFF
/* 7E08 80007208 8CCE0010 */  lw         $t6, 0x10($a2)
/* 7E0C 8000720C A4C2011E */  sh         $v0, 0x11E($a2)
/* 7E10 80007210 0C005274 */  jal        func_800149D0
/* 7E14 80007214 95C50008 */   lhu       $a1, 0x8($t6)
/* 7E18 80007218 1440001E */  bnez       $v0, .L80007294
/* 7E1C 8000721C 3C048008 */   lui       $a0, %hi(D_8007B2E4)
/* 7E20 80007220 2484B2E4 */  addiu      $a0, $a0, %lo(D_8007B2E4)
/* 7E24 80007224 8C8F0000 */  lw         $t7, 0x0($a0)
/* 7E28 80007228 2401FFFB */  addiu      $at, $zero, -0x5
/* 7E2C 8000722C 24190001 */  addiu      $t9, $zero, 0x1
/* 7E30 80007230 01E1C024 */  and        $t8, $t7, $at
/* 7E34 80007234 AC980000 */  sw         $t8, 0x0($a0)
/* 7E38 80007238 10000016 */  b          .L80007294
/* 7E3C 8000723C AFB9001C */   sw        $t9, 0x1C($sp)
.L80007240:
/* 7E40 80007240 30484000 */  andi       $t0, $v0, 0x4000
/* 7E44 80007244 11000013 */  beqz       $t0, .L80007294
/* 7E48 80007248 3C048008 */   lui       $a0, %hi(D_8007B2E4)
/* 7E4C 8000724C 2484B2E4 */  addiu      $a0, $a0, %lo(D_8007B2E4)
/* 7E50 80007250 8C890000 */  lw         $t1, 0x0($a0)
/* 7E54 80007254 24050013 */  addiu      $a1, $zero, 0x13
/* 7E58 80007258 312A0004 */  andi       $t2, $t1, 0x4
/* 7E5C 8000725C 5140000E */  beql       $t2, $zero, .L80007298
/* 7E60 80007260 8FA2001C */   lw        $v0, 0x1C($sp)
/* 7E64 80007264 10E00003 */  beqz       $a3, .L80007274
/* 7E68 80007268 24EBFFFF */   addiu     $t3, $a3, -0x1
/* 7E6C 8000726C A4CB011C */  sh         $t3, 0x11C($a2)
/* 7E70 80007270 3167FFFF */  andi       $a3, $t3, 0xFFFF
.L80007274:
/* 7E74 80007274 14E00005 */  bnez       $a3, .L8000728C
/* 7E78 80007278 240600FF */   addiu     $a2, $zero, 0xFF
/* 7E7C 8000727C 8C8C0000 */  lw         $t4, 0x0($a0)
/* 7E80 80007280 2401FFFB */  addiu      $at, $zero, -0x5
/* 7E84 80007284 01816824 */  and        $t5, $t4, $at
/* 7E88 80007288 AC8D0000 */  sw         $t5, 0x0($a0)
.L8000728C:
/* 7E8C 8000728C 0C009A35 */  jal        func_800268D4
/* 7E90 80007290 00002025 */   or        $a0, $zero, $zero
.L80007294:
/* 7E94 80007294 8FA2001C */  lw         $v0, 0x1C($sp)
.L80007298:
/* 7E98 80007298 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7E9C 8000729C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7EA0 800072A0 03E00008 */  jr         $ra
/* 7EA4 800072A4 00000000 */   nop
