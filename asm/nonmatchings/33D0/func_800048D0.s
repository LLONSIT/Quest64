glabel func_800048D0
/* 54D0 800048D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 54D4 800048D4 AFB00018 */  sw         $s0, 0x18($sp)
/* 54D8 800048D8 00A08025 */  or         $s0, $a1, $zero
/* 54DC 800048DC AFBF001C */  sw         $ra, 0x1C($sp)
/* 54E0 800048E0 AFA60028 */  sw         $a2, 0x28($sp)
/* 54E4 800048E4 00803825 */  or         $a3, $a0, $zero
/* 54E8 800048E8 3C068008 */  lui        $a2, %hi(D_8007BC30)
/* 54EC 800048EC 24C6BC30 */  addiu      $a2, $a2, %lo(D_8007BC30)
/* 54F0 800048F0 00E02025 */  or         $a0, $a3, $zero
/* 54F4 800048F4 8FA50028 */  lw         $a1, 0x28($sp)
/* 54F8 800048F8 0C0015B4 */  jal        func_800056D0
/* 54FC 800048FC AFA70020 */   sw        $a3, 0x20($sp)
/* 5500 80004900 3C028008 */  lui        $v0, %hi(D_8007BC30)
/* 5504 80004904 2442BC30 */  addiu      $v0, $v0, %lo(D_8007BC30)
/* 5508 80004908 8FA50020 */  lw         $a1, 0x20($sp)
/* 550C 8000490C C4440000 */  lwc1       $f4, 0x0($v0)
/* 5510 80004910 24040A00 */  addiu      $a0, $zero, 0xA00
/* 5514 80004914 02003025 */  or         $a2, $s0, $zero
/* 5518 80004918 E4A40018 */  swc1       $f4, 0x18($a1)
/* 551C 8000491C C4460004 */  lwc1       $f6, 0x4($v0)
/* 5520 80004920 0C0015D2 */  jal        func_80005748
/* 5524 80004924 E4A60020 */   swc1      $f6, 0x20($a1)
/* 5528 80004928 960E0004 */  lhu        $t6, 0x4($s0)
/* 552C 8000492C 8FA70020 */  lw         $a3, 0x20($sp)
/* 5530 80004930 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 5534 80004934 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 5538 80004938 17000007 */  bnez       $t8, .L80004958
/* 553C 8000493C A60F0004 */   sh        $t7, 0x4($s0)
/* 5540 80004940 A6000000 */  sh         $zero, 0x0($s0)
/* 5544 80004944 94F90060 */  lhu        $t9, 0x60($a3)
/* 5548 80004948 3328FFFE */  andi       $t0, $t9, 0xFFFE
/* 554C 8000494C A4E80060 */  sh         $t0, 0x60($a3)
/* 5550 80004950 C6080134 */  lwc1       $f8, 0x134($s0)
/* 5554 80004954 E4E80010 */  swc1       $f8, 0x10($a3)
.L80004958:
/* 5558 80004958 8FBF001C */  lw         $ra, 0x1C($sp)
/* 555C 8000495C 8FB00018 */  lw         $s0, 0x18($sp)
/* 5560 80004960 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5564 80004964 03E00008 */  jr         $ra
/* 5568 80004968 00000000 */   nop
