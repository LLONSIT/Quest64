glabel func_80011100
/* 11D00 80011100 3C0E8008 */  lui        $t6, %hi(D_80085B38)
/* 11D04 80011104 8DCE5B38 */  lw         $t6, %lo(D_80085B38)($t6)
/* 11D08 80011108 3C038008 */  lui        $v1, %hi(D_80085B38)
/* 11D0C 8001110C 24635B38 */  addiu      $v1, $v1, %lo(D_80085B38)
/* 11D10 80011110 11C00007 */  beqz       $t6, .L80011130
/* 11D14 80011114 24040007 */   addiu     $a0, $zero, 0x7
/* 11D18 80011118 2484FFFF */  addiu      $a0, $a0, -0x1
.L8001111C:
/* 11D1C 8001111C 10800004 */  beqz       $a0, .L80011130
/* 11D20 80011120 2463FFD0 */   addiu     $v1, $v1, -0x30
/* 11D24 80011124 8C6F0000 */  lw         $t7, 0x0($v1)
/* 11D28 80011128 55E0FFFC */  bnel       $t7, $zero, .L8001111C
/* 11D2C 8001112C 2484FFFF */   addiu     $a0, $a0, -0x1
.L80011130:
/* 11D30 80011130 24180001 */  addiu      $t8, $zero, 0x1
/* 11D34 80011134 AC780000 */  sw         $t8, 0x0($v1)
/* 11D38 80011138 AC600004 */  sw         $zero, 0x4($v1)
/* 11D3C 8001113C AC600018 */  sw         $zero, 0x18($v1)
/* 11D40 80011140 AC60002C */  sw         $zero, 0x2C($v1)
/* 11D44 80011144 00801025 */  or         $v0, $a0, $zero
/* 11D48 80011148 03E00008 */  jr         $ra
/* 11D4C 8001114C 00000000 */   nop
