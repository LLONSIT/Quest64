glabel func_80018484
/* 19084 80018484 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19088 80018488 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1908C 8001848C AFA60020 */  sw         $a2, 0x20($sp)
/* 19090 80018490 948E000A */  lhu        $t6, 0xA($a0)
/* 19094 80018494 31CF0004 */  andi       $t7, $t6, 0x4
/* 19098 80018498 51E00004 */  beql       $t7, $zero, .L800184AC
/* 1909C 8001849C 8C82002C */   lw        $v0, 0x2C($a0)
/* 190A0 800184A0 1000001B */  b          .L80018510
/* 190A4 800184A4 24030001 */   addiu     $v1, $zero, 0x1
/* 190A8 800184A8 8C82002C */  lw         $v0, 0x2C($a0)
.L800184AC:
/* 190AC 800184AC 24010002 */  addiu      $at, $zero, 0x2
/* 190B0 800184B0 94580018 */  lhu        $t8, 0x18($v0)
/* 190B4 800184B4 57010004 */  bnel       $t8, $at, .L800184C8
/* 190B8 800184B8 94B9005E */   lhu       $t9, 0x5E($a1)
/* 190BC 800184BC 10000014 */  b          .L80018510
/* 190C0 800184C0 24030001 */   addiu     $v1, $zero, 0x1
/* 190C4 800184C4 94B9005E */  lhu        $t9, 0x5E($a1)
.L800184C8:
/* 190C8 800184C8 33280001 */  andi       $t0, $t9, 0x1
/* 190CC 800184CC 11000009 */  beqz       $t0, .L800184F4
/* 190D0 800184D0 00000000 */   nop
/* 190D4 800184D4 0C008BF4 */  jal        func_80022FD0
/* 190D8 800184D8 24040050 */   addiu     $a0, $zero, 0x50
/* 190DC 800184DC 8FA90020 */  lw         $t1, 0x20($sp)
/* 190E0 800184E0 3C0A8005 */  lui        $t2, %hi(D_8004CDF0)
/* 190E4 800184E4 01495021 */  addu       $t2, $t2, $t1
/* 190E8 800184E8 914ACDF0 */  lbu        $t2, %lo(D_8004CDF0)($t2)
/* 190EC 800184EC 10000008 */  b          .L80018510
/* 190F0 800184F0 004A182B */   sltu      $v1, $v0, $t2
.L800184F4:
/* 190F4 800184F4 0C008BF4 */  jal        func_80022FD0
/* 190F8 800184F8 24040020 */   addiu     $a0, $zero, 0x20
/* 190FC 800184FC 8FAB0020 */  lw         $t3, 0x20($sp)
/* 19100 80018500 3C0C8005 */  lui        $t4, %hi(D_8004CDF0)
/* 19104 80018504 018B6021 */  addu       $t4, $t4, $t3
/* 19108 80018508 918CCDF0 */  lbu        $t4, %lo(D_8004CDF0)($t4)
/* 1910C 8001850C 004C182B */  sltu       $v1, $v0, $t4
.L80018510:
/* 19110 80018510 00601025 */  or         $v0, $v1, $zero
/* 19114 80018514 8FBF0014 */  lw         $ra, 0x14($sp)
/* 19118 80018518 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1911C 8001851C 03E00008 */  jr         $ra
/* 19120 80018520 00000000 */   nop
