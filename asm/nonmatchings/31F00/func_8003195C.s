glabel func_8003195C
/* 3255C 8003195C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 32560 80031960 AFBF001C */  sw         $ra, 0x1C($sp)
/* 32564 80031964 AFA40028 */  sw         $a0, 0x28($sp)
/* 32568 80031968 AFA5002C */  sw         $a1, 0x2C($sp)
/* 3256C 8003196C 27A20020 */  addiu      $v0, $sp, 0x20
/* 32570 80031970 3C0E8006 */  lui        $t6, %hi(D_8005FB74)
/* 32574 80031974 25CEFB74 */  addiu      $t6, $t6, %lo(D_8005FB74)
/* 32578 80031978 8DC10000 */  lw         $at, 0x0($t6)
/* 3257C 8003197C 3C0B8009 */  lui        $t3, %hi(D_80092898)
/* 32580 80031980 256B2898 */  addiu      $t3, $t3, %lo(D_80092898)
/* 32584 80031984 AC410000 */  sw         $at, 0x0($v0)
/* 32588 80031988 8FA90028 */  lw         $t1, 0x28($sp)
/* 3258C 8003198C 93A8002F */  lbu        $t0, 0x2F($sp)
/* 32590 80031990 3C064E45 */  lui        $a2, (0x4E455445 >> 16)
/* 32594 80031994 00095080 */  sll        $t2, $t1, 2
/* 32598 80031998 01495023 */  subu       $t2, $t2, $t1
/* 3259C 8003199C 000A5080 */  sll        $t2, $t2, 2
/* 325A0 800319A0 01495021 */  addu       $t2, $t2, $t1
/* 325A4 800319A4 000A50C0 */  sll        $t2, $t2, 3
/* 325A8 800319A8 3C078006 */  lui        $a3, %hi(D_8005FB40)
/* 325AC 800319AC 24E7FB40 */  addiu      $a3, $a3, %lo(D_8005FB40)
/* 325B0 800319B0 014B2021 */  addu       $a0, $t2, $t3
/* 325B4 800319B4 34C65445 */  ori        $a2, $a2, (0x4E455445 & 0xFFFF)
/* 325B8 800319B8 AFA20010 */  sw         $v0, 0x10($sp)
/* 325BC 800319BC 24053738 */  addiu      $a1, $zero, 0x3738
/* 325C0 800319C0 0C00EE88 */  jal        osPfsDeleteFile
/* 325C4 800319C4 A3A80020 */   sb        $t0, 0x20($sp)
/* 325C8 800319C8 304C00FF */  andi       $t4, $v0, 0xFF
/* 325CC 800319CC 01801025 */  or         $v0, $t4, $zero
/* 325D0 800319D0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 325D4 800319D4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 325D8 800319D8 03E00008 */  jr         $ra
/* 325DC 800319DC 00000000 */   nop
