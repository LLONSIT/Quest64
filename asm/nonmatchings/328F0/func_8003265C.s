glabel func_8003265C
/* 3325C 8003265C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 33260 80032660 AFBF001C */  sw         $ra, 0x1C($sp)
/* 33264 80032664 AFB10018 */  sw         $s1, 0x18($sp)
/* 33268 80032668 AFB00014 */  sw         $s0, 0x14($sp)
/* 3326C 8003266C 3C048007 */  lui        $a0, %hi(D_8006CC88)
/* 33270 80032670 2484CC88 */  addiu      $a0, $a0, %lo(D_8006CC88)
/* 33274 80032674 0C00C886 */  jal        func_80032218
/* 33278 80032678 240500F0 */   addiu     $a1, $zero, 0xF0
/* 3327C 8003267C 3C048009 */  lui        $a0, %hi(D_80092D1A)
/* 33280 80032680 0C00C958 */  jal        func_80032560
/* 33284 80032684 94842D1A */   lhu       $a0, %lo(D_80092D1A)($a0)
/* 33288 80032688 3C028009 */  lui        $v0, %hi(D_80092D0E)
/* 3328C 8003268C 90422D0E */  lbu        $v0, %lo(D_80092D0E)($v0)
/* 33290 80032690 3C048007 */  lui        $a0, %hi(D_8006E288)
/* 33294 80032694 2484E288 */  addiu      $a0, $a0, %lo(D_8006E288)
/* 33298 80032698 50400006 */  beql       $v0, $zero, .L800326B4
/* 3329C 8003269C 2841000A */   slti      $at, $v0, 0xA
/* 332A0 800326A0 0C00C886 */  jal        func_80032218
/* 332A4 800326A4 24050001 */   addiu     $a1, $zero, 0x1
/* 332A8 800326A8 3C028009 */  lui        $v0, %hi(D_80092D0E)
/* 332AC 800326AC 90422D0E */  lbu        $v0, %lo(D_80092D0E)($v0)
/* 332B0 800326B0 2841000A */  slti       $at, $v0, 0xA
.L800326B4:
/* 332B4 800326B4 10200004 */  beqz       $at, .L800326C8
/* 332B8 800326B8 3C048007 */   lui       $a0, %hi(D_8006E298)
/* 332BC 800326BC 2484E298 */  addiu      $a0, $a0, %lo(D_8006E298)
/* 332C0 800326C0 0C00C886 */  jal        func_80032218
/* 332C4 800326C4 24050001 */   addiu     $a1, $zero, 0x1
.L800326C8:
/* 332C8 800326C8 00008025 */  or         $s0, $zero, $zero
/* 332CC 800326CC 24110006 */  addiu      $s1, $zero, 0x6
.L800326D0:
/* 332D0 800326D0 0C00C8CB */  jal        func_8003232C
/* 332D4 800326D4 02002025 */   or        $a0, $s0, $zero
/* 332D8 800326D8 26100001 */  addiu      $s0, $s0, 0x1
/* 332DC 800326DC 1611FFFC */  bne        $s0, $s1, .L800326D0
/* 332E0 800326E0 00000000 */   nop
/* 332E4 800326E4 240E0001 */  addiu      $t6, $zero, 0x1
/* 332E8 800326E8 3C018009 */  lui        $at, %hi(D_80092D1C)
/* 332EC 800326EC AC2E2D1C */  sw         $t6, %lo(D_80092D1C)($at)
/* 332F0 800326F0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 332F4 800326F4 8FB00014 */  lw         $s0, 0x14($sp)
/* 332F8 800326F8 8FB10018 */  lw         $s1, 0x18($sp)
/* 332FC 800326FC 03E00008 */  jr         $ra
/* 33300 80032700 27BD0020 */   addiu     $sp, $sp, 0x20