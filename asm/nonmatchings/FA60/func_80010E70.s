glabel func_80010E70
/* 11A70 80010E70 3C038008 */  lui        $v1, %hi(D_80085390)
/* 11A74 80010E74 24635390 */  addiu      $v1, $v1, %lo(D_80085390)
/* 11A78 80010E78 AC640000 */  sw         $a0, 0x0($v1)
/* 11A7C 80010E7C 3C018008 */  lui        $at, %hi(D_8008538C)
/* 11A80 80010E80 AC24538C */  sw         $a0, %lo(D_8008538C)($at)
/* 11A84 80010E84 3C018008 */  lui        $at, %hi(D_80085394)
/* 11A88 80010E88 AC255394 */  sw         $a1, %lo(D_80085394)($at)
/* 11A8C 80010E8C 3C018008 */  lui        $at, %hi(D_80085398)
/* 11A90 80010E90 3C028008 */  lui        $v0, %hi(D_800853A0)
/* 11A94 80010E94 AC265398 */  sw         $a2, %lo(D_80085398)($at)
/* 11A98 80010E98 244253A0 */  addiu      $v0, $v0, %lo(D_800853A0)
/* 11A9C 80010E9C 240700FF */  addiu      $a3, $zero, 0xFF
.L80010EA0:
/* 11AA0 80010EA0 94CF0000 */  lhu        $t7, 0x0($a2)
/* 11AA4 80010EA4 00E01825 */  or         $v1, $a3, $zero
/* 11AA8 80010EA8 24420002 */  addiu      $v0, $v0, 0x2
/* 11AAC 80010EAC 24C60002 */  addiu      $a2, $a2, 0x2
/* 11AB0 80010EB0 A44FFFFE */  sh         $t7, -0x2($v0)
/* 11AB4 80010EB4 14E0FFFA */  bnez       $a3, .L80010EA0
/* 11AB8 80010EB8 24E7FFFF */   addiu     $a3, $a3, -0x1
/* 11ABC 80010EBC 03E00008 */  jr         $ra
/* 11AC0 80010EC0 00000000 */   nop
