glabel func_80016940
/* 17540 80016940 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17544 80016944 AFA40018 */  sw         $a0, 0x18($sp)
/* 17548 80016948 00A02025 */  or         $a0, $a1, $zero
/* 1754C 8001694C AFBF0014 */  sw         $ra, 0x14($sp)
/* 17550 80016950 948E005E */  lhu        $t6, 0x5E($a0)
/* 17554 80016954 3C028008 */  lui        $v0, %hi(D_8007C990)
/* 17558 80016958 2442C990 */  addiu      $v0, $v0, %lo(D_8007C990)
/* 1755C 8001695C 31CF0001 */  andi       $t7, $t6, 0x1
/* 17560 80016960 11E00006 */  beqz       $t7, .L8001697C
/* 17564 80016964 2418FFFF */   addiu     $t8, $zero, -0x1
/* 17568 80016968 A4980050 */  sh         $t8, 0x50($a0)
/* 1756C 8001696C 8C590000 */  lw         $t9, 0x0($v0)
/* 17570 80016970 2728FFFF */  addiu      $t0, $t9, -0x1
/* 17574 80016974 10000010 */  b          .L800169B8
/* 17578 80016978 AC480000 */   sw        $t0, 0x0($v0)
.L8001697C:
/* 1757C 8001697C 3C058009 */  lui        $a1, %hi(D_8008C592)
/* 17580 80016980 24A5C592 */  addiu      $a1, $a1, %lo(D_8008C592)
/* 17584 80016984 94A30000 */  lhu        $v1, 0x0($a1)
/* 17588 80016988 30690100 */  andi       $t1, $v1, 0x100
/* 1758C 8001698C 15200008 */  bnez       $t1, .L800169B0
/* 17590 80016990 346A0010 */   ori       $t2, $v1, 0x10
/* 17594 80016994 A4AA0000 */  sh         $t2, 0x0($a1)
/* 17598 80016998 3C028008 */  lui        $v0, %hi(D_8007BAC8)
/* 1759C 8001699C 8C42BAC8 */  lw         $v0, %lo(D_8007BAC8)($v0)
/* 175A0 800169A0 944B002A */  lhu        $t3, 0x2A($v0)
/* 175A4 800169A4 256C0001 */  addiu      $t4, $t3, 0x1
/* 175A8 800169A8 10000003 */  b          .L800169B8
/* 175AC 800169AC A44C002A */   sh        $t4, 0x2A($v0)
.L800169B0:
/* 175B0 800169B0 0C00822E */  jal        func_800208B8
/* 175B4 800169B4 00000000 */   nop
.L800169B8:
/* 175B8 800169B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 175BC 800169BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 175C0 800169C0 03E00008 */  jr         $ra
/* 175C4 800169C4 00000000 */   nop
