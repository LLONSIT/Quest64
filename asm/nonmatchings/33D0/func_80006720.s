glabel func_80006720
/* 7320 80006720 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7324 80006724 3C078005 */  lui        $a3, %hi(D_8004C270)
/* 7328 80006728 8CE7C270 */  lw         $a3, %lo(D_8004C270)($a3)
/* 732C 8000672C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7330 80006730 84830052 */  lh         $v1, 0x52($a0)
/* 7334 80006734 3C0F8005 */  lui        $t7, %hi(D_80053F58)
/* 7338 80006738 25EF3F58 */  addiu      $t7, $t7, %lo(D_80053F58)
/* 733C 8000673C 10E30009 */  beq        $a3, $v1, .L80006764
/* 7340 80006740 000370C0 */   sll       $t6, $v1, 3
/* 7344 80006744 01CF1021 */  addu       $v0, $t6, $t7
/* 7348 80006748 8C440000 */  lw         $a0, 0x0($v0)
/* 734C 8000674C 8C580004 */  lw         $t8, 0x4($v0)
/* 7350 80006750 3C018005 */  lui        $at, %hi(D_8004C270)
/* 7354 80006754 AC23C270 */  sw         $v1, %lo(D_8004C270)($at)
/* 7358 80006758 3C058020 */  lui        $a1, (0x80200000 >> 16)
/* 735C 8000675C 0C009098 */  jal        func_80024260
/* 7360 80006760 03043023 */   subu      $a2, $t8, $a0
.L80006764:
/* 7364 80006764 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7368 80006768 27BD0018 */  addiu      $sp, $sp, 0x18
/* 736C 8000676C 03E00008 */  jr         $ra
/* 7370 80006770 00000000 */   nop
