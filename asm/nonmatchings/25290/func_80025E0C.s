.section .late_rodata
glabel jtbl_80071714
/* 72314 80071714 80026178 */ .word .L80026178
/* 72318 80071718 80026194 */ .word .L80026194
/* 7231C 8007171C 800261B0 */ .word .L800261B0
/* 72320 80071720 800261CC */ .word .L800261CC
/* 72324 80071724 800261E8 */ .word .L800261E8
/* 72328 80071728 00000000 */ .word 0x00000000
/* 7232C 8007172C 00000000 */ .word 0x00000000


.section .text
glabel func_80025E0C
/* 26A0C 80025E0C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 26A10 80025E10 AFB00018 */  sw         $s0, 0x18($sp)
/* 26A14 80025E14 3C108009 */  lui        $s0, %hi(D_8008F92C)
/* 26A18 80025E18 2610F92C */  addiu      $s0, $s0, %lo(D_8008F92C)
/* 26A1C 80025E1C AFBF001C */  sw         $ra, 0x1C($sp)
/* 26A20 80025E20 3409FFFF */  ori        $t1, $zero, 0xFFFF
/* 26A24 80025E24 3C048009 */  lui        $a0, %hi(D_8008F934)
/* 26A28 80025E28 8C84F934 */  lw         $a0, %lo(D_8008F934)($a0)
/* 26A2C 80025E2C 3C0E8005 */  lui        $t6, %hi(D_80053994)
/* 26A30 80025E30 8E020000 */  lw         $v0, 0x0($s0)
/* 26A34 80025E34 00043880 */  sll        $a3, $a0, 2
/* 26A38 80025E38 01C77021 */  addu       $t6, $t6, $a3
/* 26A3C 80025E3C 8DCE3994 */  lw         $t6, %lo(D_80053994)($t6)
/* 26A40 80025E40 3401FFFD */  ori        $at, $zero, 0xFFFD
/* 26A44 80025E44 AFAE0024 */  sw         $t6, 0x24($sp)
/* 26A48 80025E48 8C430000 */  lw         $v1, 0x0($v0)
/* 26A4C 80025E4C 15230005 */  bne        $t1, $v1, .L80025E64
/* 26A50 80025E50 00000000 */   nop
/* 26A54 80025E54 0C0095A3 */  jal        func_8002568C
/* 26A58 80025E58 01C02025 */   or        $a0, $t6, $zero
/* 26A5C 80025E5C 100000E9 */  b          .L80026204
/* 26A60 80025E60 8FBF001C */   lw        $ra, 0x1C($sp)
.L80025E64:
/* 26A64 80025E64 14610007 */  bne        $v1, $at, .L80025E84
/* 26A68 80025E68 3C0A8009 */   lui       $t2, %hi(D_8008F930)
/* 26A6C 80025E6C 254AF930 */  addiu      $t2, $t2, %lo(D_8008F930)
/* 26A70 80025E70 244F0004 */  addiu      $t7, $v0, 0x4
/* 26A74 80025E74 AD420000 */  sw         $v0, 0x0($t2)
/* 26A78 80025E78 AE0F0000 */  sw         $t7, 0x0($s0)
/* 26A7C 80025E7C 8DE30000 */  lw         $v1, 0x0($t7)
/* 26A80 80025E80 01E01025 */  or         $v0, $t7, $zero
.L80025E84:
/* 26A84 80025E84 3C0A8009 */  lui        $t2, %hi(D_8008F930)
/* 26A88 80025E88 3401FFFE */  ori        $at, $zero, 0xFFFE
/* 26A8C 80025E8C 14610006 */  bne        $v1, $at, .L80025EA8
/* 26A90 80025E90 254AF930 */   addiu     $t2, $t2, %lo(D_8008F930)
/* 26A94 80025E94 8D580000 */  lw         $t8, 0x0($t2)
/* 26A98 80025E98 AE180000 */  sw         $t8, 0x0($s0)
/* 26A9C 80025E9C 27020004 */  addiu      $v0, $t8, 0x4
/* 26AA0 80025EA0 AE020000 */  sw         $v0, 0x0($s0)
/* 26AA4 80025EA4 8C430000 */  lw         $v1, 0x0($v0)
.L80025EA8:
/* 26AA8 80025EA8 3C018005 */  lui        $at, %hi(D_800539A8)
/* 26AAC 80025EAC 00270821 */  addu       $at, $at, $a3
/* 26AB0 80025EB0 AC2339A8 */  sw         $v1, %lo(D_800539A8)($at)
/* 26AB4 80025EB4 244C0004 */  addiu      $t4, $v0, 0x4
/* 26AB8 80025EB8 AE0C0000 */  sw         $t4, 0x0($s0)
/* 26ABC 80025EBC 8D8D0000 */  lw         $t5, 0x0($t4)
/* 26AC0 80025EC0 01801025 */  or         $v0, $t4, $zero
/* 26AC4 80025EC4 8FAF0024 */  lw         $t7, 0x24($sp)
/* 26AC8 80025EC8 112D0018 */  beq        $t1, $t5, .L80025F2C
/* 26ACC 80025ECC 3C0E8009 */   lui       $t6, %hi(D_8008F68C)
/* 26AD0 80025ED0 8DCEF68C */  lw         $t6, %lo(D_8008F68C)($t6)
/* 26AD4 80025ED4 000FC040 */  sll        $t8, $t7, 1
/* 26AD8 80025ED8 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26ADC 80025EDC 01D8C821 */  addu       $t9, $t6, $t8
/* 26AE0 80025EE0 87250000 */  lh         $a1, 0x0($t9)
/* 26AE4 80025EE4 0C00E62C */  jal        alSndpSetSound
/* 26AE8 80025EE8 2484F620 */   addiu     $a0, $a0, %lo(D_8008F620)
/* 26AEC 80025EEC 8E0B0000 */  lw         $t3, 0x0($s0)
/* 26AF0 80025EF0 3C058005 */  lui        $a1, %hi(D_8004D750)
/* 26AF4 80025EF4 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26AF8 80025EF8 8D6C0000 */  lw         $t4, 0x0($t3)
/* 26AFC 80025EFC 2484F620 */  addiu      $a0, $a0, %lo(D_8008F620)
/* 26B00 80025F00 000C6880 */  sll        $t5, $t4, 2
/* 26B04 80025F04 00AD2821 */  addu       $a1, $a1, $t5
/* 26B08 80025F08 0C00E66C */  jal        alSndpSetPitch
/* 26B0C 80025F0C 8CA5D750 */   lw        $a1, %lo(D_8004D750)($a1)
/* 26B10 80025F10 3C048009 */  lui        $a0, %hi(D_8008F934)
/* 26B14 80025F14 8C84F934 */  lw         $a0, %lo(D_8008F934)($a0)
/* 26B18 80025F18 3C0A8009 */  lui        $t2, %hi(D_8008F930)
/* 26B1C 80025F1C 254AF930 */  addiu      $t2, $t2, %lo(D_8008F930)
/* 26B20 80025F20 8E020000 */  lw         $v0, 0x0($s0)
/* 26B24 80025F24 3409FFFF */  ori        $t1, $zero, 0xFFFF
/* 26B28 80025F28 00043880 */  sll        $a3, $a0, 2
.L80025F2C:
/* 26B2C 80025F2C 244F0004 */  addiu      $t7, $v0, 0x4
/* 26B30 80025F30 AE0F0000 */  sw         $t7, 0x0($s0)
/* 26B34 80025F34 8DE30000 */  lw         $v1, 0x0($t7)
/* 26B38 80025F38 3C068005 */  lui        $a2, %hi(D_800539BC)
/* 26B3C 80025F3C 01E01025 */  or         $v0, $t7, $zero
/* 26B40 80025F40 11230028 */  beq        $t1, $v1, .L80025FE4
/* 26B44 80025F44 00C73021 */   addu      $a2, $a2, $a3
/* 26B48 80025F48 3C068005 */  lui        $a2, %hi(D_800539BC)
/* 26B4C 80025F4C 8FA80024 */  lw         $t0, 0x24($sp)
/* 26B50 80025F50 00C73021 */  addu       $a2, $a2, $a3
/* 26B54 80025F54 8CC639BC */  lw         $a2, %lo(D_800539BC)($a2)
/* 26B58 80025F58 3C018009 */  lui        $at, %hi(D_8008F938)
/* 26B5C 80025F5C 00270821 */  addu       $at, $at, $a3
/* 26B60 80025F60 00087040 */  sll        $t6, $t0, 1
/* 26B64 80025F64 00601025 */  or         $v0, $v1, $zero
/* 26B68 80025F68 AC23F938 */  sw         $v1, %lo(D_8008F938)($at)
/* 26B6C 80025F6C 10C00006 */  beqz       $a2, .L80025F88
/* 26B70 80025F70 01C04025 */   or        $t0, $t6, $zero
/* 26B74 80025F74 0003C202 */  srl        $t8, $v1, 8
/* 26B78 80025F78 00D80019 */  multu      $a2, $t8
/* 26B7C 80025F7C 00001012 */  mflo       $v0
/* 26B80 80025F80 00000000 */  nop
/* 26B84 80025F84 00000000 */  nop
.L80025F88:
/* 26B88 80025F88 3C198009 */  lui        $t9, %hi(D_8008F68C)
/* 26B8C 80025F8C 8F39F68C */  lw         $t9, %lo(D_8008F68C)($t9)
/* 26B90 80025F90 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26B94 80025F94 2484F620 */  addiu      $a0, $a0, %lo(D_8008F620)
/* 26B98 80025F98 03285821 */  addu       $t3, $t9, $t0
/* 26B9C 80025F9C 85650000 */  lh         $a1, 0x0($t3)
/* 26BA0 80025FA0 0C00E62C */  jal        alSndpSetSound
/* 26BA4 80025FA4 AFA20020 */   sw        $v0, 0x20($sp)
/* 26BA8 80025FA8 8FA20020 */  lw         $v0, 0x20($sp)
/* 26BAC 80025FAC 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26BB0 80025FB0 2484F620 */  addiu      $a0, $a0, %lo(D_8008F620)
/* 26BB4 80025FB4 00022C00 */  sll        $a1, $v0, 16
/* 26BB8 80025FB8 00056403 */  sra        $t4, $a1, 16
/* 26BBC 80025FBC 0C00E684 */  jal        alSndpSetVol
/* 26BC0 80025FC0 01802825 */   or        $a1, $t4, $zero
/* 26BC4 80025FC4 3C048009 */  lui        $a0, %hi(D_8008F934)
/* 26BC8 80025FC8 8C84F934 */  lw         $a0, %lo(D_8008F934)($a0)
/* 26BCC 80025FCC 3C0A8009 */  lui        $t2, %hi(D_8008F930)
/* 26BD0 80025FD0 254AF930 */  addiu      $t2, $t2, %lo(D_8008F930)
/* 26BD4 80025FD4 8E020000 */  lw         $v0, 0x0($s0)
/* 26BD8 80025FD8 3409FFFF */  ori        $t1, $zero, 0xFFFF
/* 26BDC 80025FDC 10000023 */  b          .L8002606C
/* 26BE0 80025FE0 00043880 */   sll       $a3, $a0, 2
.L80025FE4:
/* 26BE4 80025FE4 8CC639BC */  lw         $a2, %lo(D_800539BC)($a2)
/* 26BE8 80025FE8 3C038009 */  lui        $v1, %hi(D_8008F938)
/* 26BEC 80025FEC 00671821 */  addu       $v1, $v1, $a3
/* 26BF0 80025FF0 50C0001F */  beql       $a2, $zero, .L80026070
/* 26BF4 80025FF4 244C0004 */   addiu     $t4, $v0, 0x4
/* 26BF8 80025FF8 8C63F938 */  lw         $v1, %lo(D_8008F938)($v1)
/* 26BFC 80025FFC 8FAE0024 */  lw         $t6, 0x24($sp)
/* 26C00 80026000 3C0F8009 */  lui        $t7, %hi(D_8008F68C)
/* 26C04 80026004 00036A02 */  srl        $t5, $v1, 8
/* 26C08 80026008 00CD0019 */  multu      $a2, $t5
/* 26C0C 8002600C 8DEFF68C */  lw         $t7, %lo(D_8008F68C)($t7)
/* 26C10 80026010 000EC040 */  sll        $t8, $t6, 1
/* 26C14 80026014 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26C18 80026018 01F8C821 */  addu       $t9, $t7, $t8
/* 26C1C 8002601C 87250000 */  lh         $a1, 0x0($t9)
/* 26C20 80026020 2484F620 */  addiu      $a0, $a0, %lo(D_8008F620)
/* 26C24 80026024 00001012 */  mflo       $v0
/* 26C28 80026028 AFA20020 */  sw         $v0, 0x20($sp)
/* 26C2C 8002602C 0C00E62C */  jal        alSndpSetSound
/* 26C30 80026030 00000000 */   nop
/* 26C34 80026034 8FA20020 */  lw         $v0, 0x20($sp)
/* 26C38 80026038 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26C3C 8002603C 2484F620 */  addiu      $a0, $a0, %lo(D_8008F620)
/* 26C40 80026040 00022C00 */  sll        $a1, $v0, 16
/* 26C44 80026044 00055C03 */  sra        $t3, $a1, 16
/* 26C48 80026048 0C00E684 */  jal        alSndpSetVol
/* 26C4C 8002604C 01602825 */   or        $a1, $t3, $zero
/* 26C50 80026050 3C048009 */  lui        $a0, %hi(D_8008F934)
/* 26C54 80026054 8C84F934 */  lw         $a0, %lo(D_8008F934)($a0)
/* 26C58 80026058 3C0A8009 */  lui        $t2, %hi(D_8008F930)
/* 26C5C 8002605C 254AF930 */  addiu      $t2, $t2, %lo(D_8008F930)
/* 26C60 80026060 8E020000 */  lw         $v0, 0x0($s0)
/* 26C64 80026064 3409FFFF */  ori        $t1, $zero, 0xFFFF
/* 26C68 80026068 00043880 */  sll        $a3, $a0, 2
.L8002606C:
/* 26C6C 8002606C 244C0004 */  addiu      $t4, $v0, 0x4
.L80026070:
/* 26C70 80026070 AE0C0000 */  sw         $t4, 0x0($s0)
/* 26C74 80026074 8D8E0000 */  lw         $t6, 0x0($t4)
/* 26C78 80026078 3C0F8005 */  lui        $t7, %hi(D_800539D0)
/* 26C7C 8002607C 01E77821 */  addu       $t7, $t7, $a3
/* 26C80 80026080 112E0017 */  beq        $t1, $t6, .L800260E0
/* 26C84 80026084 00000000 */   nop
/* 26C88 80026088 8DEF39D0 */  lw         $t7, %lo(D_800539D0)($t7)
/* 26C8C 8002608C 24010040 */  addiu      $at, $zero, 0x40
/* 26C90 80026090 3C188009 */  lui        $t8, %hi(D_8008F68C)
/* 26C94 80026094 15E10012 */  bne        $t7, $at, .L800260E0
/* 26C98 80026098 8FB90024 */   lw        $t9, 0x24($sp)
/* 26C9C 8002609C 8F18F68C */  lw         $t8, %lo(D_8008F68C)($t8)
/* 26CA0 800260A0 00195840 */  sll        $t3, $t9, 1
/* 26CA4 800260A4 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26CA8 800260A8 030B6021 */  addu       $t4, $t8, $t3
/* 26CAC 800260AC 85850000 */  lh         $a1, 0x0($t4)
/* 26CB0 800260B0 0C00E62C */  jal        alSndpSetSound
/* 26CB4 800260B4 2484F620 */   addiu     $a0, $a0, %lo(D_8008F620)
/* 26CB8 800260B8 8E0D0000 */  lw         $t5, 0x0($s0)
/* 26CBC 800260BC 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26CC0 800260C0 2484F620 */  addiu      $a0, $a0, %lo(D_8008F620)
/* 26CC4 800260C4 0C00E69C */  jal        alSndpSetPan
/* 26CC8 800260C8 91A50003 */   lbu       $a1, 0x3($t5)
/* 26CCC 800260CC 3C048009 */  lui        $a0, %hi(D_8008F934)
/* 26CD0 800260D0 8C84F934 */  lw         $a0, %lo(D_8008F934)($a0)
/* 26CD4 800260D4 3C0A8009 */  lui        $t2, %hi(D_8008F930)
/* 26CD8 800260D8 254AF930 */  addiu      $t2, $t2, %lo(D_8008F930)
/* 26CDC 800260DC 00043880 */  sll        $a3, $a0, 2
.L800260E0:
/* 26CE0 800260E0 3C0E8005 */  lui        $t6, %hi(D_800539D0)
/* 26CE4 800260E4 01C77021 */  addu       $t6, $t6, $a3
/* 26CE8 800260E8 8DCE39D0 */  lw         $t6, %lo(D_800539D0)($t6)
/* 26CEC 800260EC 24010040 */  addiu      $at, $zero, 0x40
/* 26CF0 800260F0 3C0F8009 */  lui        $t7, %hi(D_8008F68C)
/* 26CF4 800260F4 11C10015 */  beq        $t6, $at, .L8002614C
/* 26CF8 800260F8 8FB90024 */   lw        $t9, 0x24($sp)
/* 26CFC 800260FC 8DEFF68C */  lw         $t7, %lo(D_8008F68C)($t7)
/* 26D00 80026100 0019C040 */  sll        $t8, $t9, 1
/* 26D04 80026104 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26D08 80026108 01F85821 */  addu       $t3, $t7, $t8
/* 26D0C 8002610C 85650000 */  lh         $a1, 0x0($t3)
/* 26D10 80026110 0C00E62C */  jal        alSndpSetSound
/* 26D14 80026114 2484F620 */   addiu     $a0, $a0, %lo(D_8008F620)
/* 26D18 80026118 3C0C8009 */  lui        $t4, %hi(D_8008F934)
/* 26D1C 8002611C 8D8CF934 */  lw         $t4, %lo(D_8008F934)($t4)
/* 26D20 80026120 3C058005 */  lui        $a1, %hi(D_800539D3)
/* 26D24 80026124 3C048009 */  lui        $a0, %hi(D_8008F620)
/* 26D28 80026128 000C6880 */  sll        $t5, $t4, 2
/* 26D2C 8002612C 00AD2821 */  addu       $a1, $a1, $t5
/* 26D30 80026130 90A539D3 */  lbu        $a1, %lo(D_800539D3)($a1)
/* 26D34 80026134 0C00E69C */  jal        alSndpSetPan
/* 26D38 80026138 2484F620 */   addiu     $a0, $a0, %lo(D_8008F620)
/* 26D3C 8002613C 3C048009 */  lui        $a0, %hi(D_8008F934)
/* 26D40 80026140 3C0A8009 */  lui        $t2, %hi(D_8008F930)
/* 26D44 80026144 254AF930 */  addiu      $t2, $t2, %lo(D_8008F930)
/* 26D48 80026148 8C84F934 */  lw         $a0, %lo(D_8008F934)($a0)
.L8002614C:
/* 26D4C 8002614C 8E0E0000 */  lw         $t6, 0x0($s0)
/* 26D50 80026150 2C810005 */  sltiu      $at, $a0, 0x5
/* 26D54 80026154 00047880 */  sll        $t7, $a0, 2
/* 26D58 80026158 25D90004 */  addiu      $t9, $t6, 0x4
/* 26D5C 8002615C 10200028 */  beqz       $at, .L80026200
/* 26D60 80026160 AE190000 */   sw        $t9, 0x0($s0)
/* 26D64 80026164 3C018007 */  lui        $at, %hi(jtbl_80071714)
/* 26D68 80026168 002F0821 */  addu       $at, $at, $t7
/* 26D6C 8002616C 8C2F1714 */  lw         $t7, %lo(jtbl_80071714)($at)
/* 26D70 80026170 01E00008 */  jr         $t7
/* 26D74 80026174 00000000 */   nop
glabel .L80026178
/* 26D78 80026178 8E180000 */  lw         $t8, 0x0($s0)
/* 26D7C 8002617C 3C018009 */  lui        $at, %hi(D_8008F94C)
/* 26D80 80026180 AC38F94C */  sw         $t8, %lo(D_8008F94C)($at)
/* 26D84 80026184 8D4B0000 */  lw         $t3, 0x0($t2)
/* 26D88 80026188 3C018009 */  lui        $at, %hi(D_8008F960)
/* 26D8C 8002618C 1000001C */  b          .L80026200
/* 26D90 80026190 AC2BF960 */   sw        $t3, %lo(D_8008F960)($at)
glabel .L80026194
/* 26D94 80026194 8E0C0000 */  lw         $t4, 0x0($s0)
/* 26D98 80026198 3C018009 */  lui        $at, %hi(D_8008F950)
/* 26D9C 8002619C AC2CF950 */  sw         $t4, %lo(D_8008F950)($at)
/* 26DA0 800261A0 8D4D0000 */  lw         $t5, 0x0($t2)
/* 26DA4 800261A4 3C018009 */  lui        $at, %hi(D_8008F964)
/* 26DA8 800261A8 10000015 */  b          .L80026200
/* 26DAC 800261AC AC2DF964 */   sw        $t5, %lo(D_8008F964)($at)
glabel .L800261B0
/* 26DB0 800261B0 8E0E0000 */  lw         $t6, 0x0($s0)
/* 26DB4 800261B4 3C018009 */  lui        $at, %hi(D_8008F954)
/* 26DB8 800261B8 AC2EF954 */  sw         $t6, %lo(D_8008F954)($at)
/* 26DBC 800261BC 8D590000 */  lw         $t9, 0x0($t2)
/* 26DC0 800261C0 3C018009 */  lui        $at, %hi(D_8008F968)
/* 26DC4 800261C4 1000000E */  b          .L80026200
/* 26DC8 800261C8 AC39F968 */   sw        $t9, %lo(D_8008F968)($at)
glabel .L800261CC
/* 26DCC 800261CC 8E0F0000 */  lw         $t7, 0x0($s0)
/* 26DD0 800261D0 3C018009 */  lui        $at, %hi(D_8008F958)
/* 26DD4 800261D4 AC2FF958 */  sw         $t7, %lo(D_8008F958)($at)
/* 26DD8 800261D8 8D580000 */  lw         $t8, 0x0($t2)
/* 26DDC 800261DC 3C018009 */  lui        $at, %hi(D_8008F96C)
/* 26DE0 800261E0 10000007 */  b          .L80026200
/* 26DE4 800261E4 AC38F96C */   sw        $t8, %lo(D_8008F96C)($at)
glabel .L800261E8
/* 26DE8 800261E8 8E0B0000 */  lw         $t3, 0x0($s0)
/* 26DEC 800261EC 3C018009 */  lui        $at, %hi(D_8008F95C)
/* 26DF0 800261F0 AC2BF95C */  sw         $t3, %lo(D_8008F95C)($at)
/* 26DF4 800261F4 8D4C0000 */  lw         $t4, 0x0($t2)
/* 26DF8 800261F8 3C018009 */  lui        $at, %hi(D_8008F970)
/* 26DFC 800261FC AC2CF970 */  sw         $t4, %lo(D_8008F970)($at)
.L80026200:
/* 26E00 80026200 8FBF001C */  lw         $ra, 0x1C($sp)
.L80026204:
/* 26E04 80026204 8FB00018 */  lw         $s0, 0x18($sp)
/* 26E08 80026208 27BD0028 */  addiu      $sp, $sp, 0x28
/* 26E0C 8002620C 03E00008 */  jr         $ra
/* 26E10 80026210 00000000 */   nop
