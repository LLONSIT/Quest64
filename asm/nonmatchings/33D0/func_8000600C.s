glabel func_8000600C
/* 6C0C 8000600C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6C10 80006010 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C14 80006014 00803825 */  or         $a3, $a0, $zero
/* 6C18 80006018 00A03025 */  or         $a2, $a1, $zero
/* 6C1C 8000601C 94C20062 */  lhu        $v0, 0x62($a2)
/* 6C20 80006020 24010001 */  addiu      $at, $zero, 0x1
/* 6C24 80006024 00027983 */  sra        $t7, $v0, 6
/* 6C28 80006028 31F80007 */  andi       $t8, $t7, 0x7
/* 6C2C 8000602C 53000026 */  beql       $t8, $zero, .L800060C8
/* 6C30 80006030 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6C34 80006034 13010005 */  beq        $t8, $at, .L8000604C
/* 6C38 80006038 24010002 */   addiu     $at, $zero, 0x2
/* 6C3C 8000603C 53010010 */  beql       $t8, $at, .L80006080
/* 6C40 80006040 3C014000 */   lui       $at, (0x40000000 >> 16)
/* 6C44 80006044 10000020 */  b          .L800060C8
/* 6C48 80006048 8FBF0014 */   lw        $ra, 0x14($sp)
.L8000604C:
/* 6C4C 8000604C 94E20124 */  lhu        $v0, 0x124($a3)
/* 6C50 80006050 24040001 */  addiu      $a0, $zero, 0x1
/* 6C54 80006054 24050004 */  addiu      $a1, $zero, 0x4
/* 6C58 80006058 54400006 */  bnel       $v0, $zero, .L80006074
/* 6C5C 8000605C 2459FFFF */   addiu     $t9, $v0, -0x1
/* 6C60 80006060 0C001AFB */  jal        func_80006BEC
/* 6C64 80006064 AFA70018 */   sw        $a3, 0x18($sp)
/* 6C68 80006068 8FA70018 */  lw         $a3, 0x18($sp)
/* 6C6C 8000606C 94E20124 */  lhu        $v0, 0x124($a3)
/* 6C70 80006070 2459FFFF */  addiu      $t9, $v0, -0x1
.L80006074:
/* 6C74 80006074 10000013 */  b          .L800060C4
/* 6C78 80006078 A4F90124 */   sh        $t9, 0x124($a3)
/* 6C7C 8000607C 3C014000 */  lui        $at, (0x40000000 >> 16)
.L80006080:
/* 6C80 80006080 44816000 */  mtc1       $at, $f12
/* 6C84 80006084 C4C4002C */  lwc1       $f4, 0x2C($a2)
/* 6C88 80006088 C4C60000 */  lwc1       $f6, 0x0($a2)
/* 6C8C 8000608C C4CA0034 */  lwc1       $f10, 0x34($a2)
/* 6C90 80006090 460C2002 */  mul.s      $f0, $f4, $f12
/* 6C94 80006094 C4D00008 */  lwc1       $f16, 0x8($a2)
/* 6C98 80006098 C4C40018 */  lwc1       $f4, 0x18($a2)
/* 6C9C 8000609C 460C5082 */  mul.s      $f2, $f10, $f12
/* 6CA0 800060A0 46003200 */  add.s      $f8, $f6, $f0
/* 6CA4 800060A4 46028480 */  add.s      $f18, $f16, $f2
/* 6CA8 800060A8 E4C80000 */  swc1       $f8, 0x0($a2)
/* 6CAC 800060AC C4C80020 */  lwc1       $f8, 0x20($a2)
/* 6CB0 800060B0 46002180 */  add.s      $f6, $f4, $f0
/* 6CB4 800060B4 E4D20008 */  swc1       $f18, 0x8($a2)
/* 6CB8 800060B8 46024280 */  add.s      $f10, $f8, $f2
/* 6CBC 800060BC E4C60018 */  swc1       $f6, 0x18($a2)
/* 6CC0 800060C0 E4CA0020 */  swc1       $f10, 0x20($a2)
.L800060C4:
/* 6CC4 800060C4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800060C8:
/* 6CC8 800060C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6CCC 800060CC 03E00008 */  jr         $ra
/* 6CD0 800060D0 00000000 */   nop
