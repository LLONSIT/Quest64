.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osJamMesg
/* 407C0 8003FBC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 407C4 8003FBC4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 407C8 8003FBC8 AFA40028 */  sw         $a0, 0x28($sp)
/* 407CC 8003FBCC AFA5002C */  sw         $a1, 0x2C($sp)
/* 407D0 8003FBD0 AFA60030 */  sw         $a2, 0x30($sp)
/* 407D4 8003FBD4 AFB10018 */  sw         $s1, 0x18($sp)
/* 407D8 8003FBD8 0C00F534 */  jal        __osDisableInt
/* 407DC 8003FBDC AFB00014 */   sw        $s0, 0x14($sp)
/* 407E0 8003FBE0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 407E4 8003FBE4 00408025 */  or         $s0, $v0, $zero
/* 407E8 8003FBE8 8DCF0008 */  lw         $t7, 0x8($t6)
/* 407EC 8003FBEC 8DD80010 */  lw         $t8, 0x10($t6)
/* 407F0 8003FBF0 01F8082A */  slt        $at, $t7, $t8
/* 407F4 8003FBF4 14200018 */  bnez       $at, .L8003FC58
/* 407F8 8003FBF8 00000000 */   nop
.L8003FBFC:
/* 407FC 8003FBFC 8FB90030 */  lw         $t9, 0x30($sp)
/* 40800 8003FC00 24010001 */  addiu      $at, $zero, 0x1
/* 40804 8003FC04 1721000A */  bne        $t9, $at, .L8003FC30
/* 40808 8003FC08 00000000 */   nop
/* 4080C 8003FC0C 3C098007 */  lui        $t1, %hi(D_80070A00)
/* 40810 8003FC10 8D290A00 */  lw         $t1, %lo(D_80070A00)($t1)
/* 40814 8003FC14 24080008 */  addiu      $t0, $zero, 0x8
/* 40818 8003FC18 A5280010 */  sh         $t0, 0x10($t1)
/* 4081C 8003FC1C 8FA40028 */  lw         $a0, 0x28($sp)
/* 40820 8003FC20 0C00F423 */  jal        __osEnqueueAndYield
/* 40824 8003FC24 24840004 */   addiu     $a0, $a0, 0x4
/* 40828 8003FC28 10000005 */  b          .L8003FC40
/* 4082C 8003FC2C 00000000 */   nop
.L8003FC30:
/* 40830 8003FC30 0C00F53C */  jal        __osRestoreInt
/* 40834 8003FC34 02002025 */   or        $a0, $s0, $zero
/* 40838 8003FC38 10000030 */  b          .L8003FCFC
/* 4083C 8003FC3C 2402FFFF */   addiu     $v0, $zero, -0x1
.L8003FC40:
/* 40840 8003FC40 8FAA0028 */  lw         $t2, 0x28($sp)
/* 40844 8003FC44 8D4B0008 */  lw         $t3, 0x8($t2)
/* 40848 8003FC48 8D4C0010 */  lw         $t4, 0x10($t2)
/* 4084C 8003FC4C 016C082A */  slt        $at, $t3, $t4
/* 40850 8003FC50 1020FFEA */  beqz       $at, .L8003FBFC
/* 40854 8003FC54 00000000 */   nop
.L8003FC58:
/* 40858 8003FC58 8FAD0028 */  lw         $t5, 0x28($sp)
/* 4085C 8003FC5C 8DAE000C */  lw         $t6, 0xC($t5)
/* 40860 8003FC60 8DAF0010 */  lw         $t7, 0x10($t5)
/* 40864 8003FC64 01CFC021 */  addu       $t8, $t6, $t7
/* 40868 8003FC68 2719FFFF */  addiu      $t9, $t8, -0x1
/* 4086C 8003FC6C 032F001A */  div        $zero, $t9, $t7
/* 40870 8003FC70 00004010 */  mfhi       $t0
/* 40874 8003FC74 ADA8000C */  sw         $t0, 0xC($t5)
/* 40878 8003FC78 8FAA0028 */  lw         $t2, 0x28($sp)
/* 4087C 8003FC7C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 40880 8003FC80 15E00002 */  bnez       $t7, .L8003FC8C
/* 40884 8003FC84 00000000 */   nop
/* 40888 8003FC88 0007000D */  break      7
.L8003FC8C:
/* 4088C 8003FC8C 2401FFFF */  addiu      $at, $zero, -0x1
/* 40890 8003FC90 15E10004 */  bne        $t7, $at, .L8003FCA4
/* 40894 8003FC94 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 40898 8003FC98 17210002 */  bne        $t9, $at, .L8003FCA4
/* 4089C 8003FC9C 00000000 */   nop
/* 408A0 8003FCA0 0006000D */  break      6
.L8003FCA4:
/* 408A4 8003FCA4 8D4C000C */  lw         $t4, 0xC($t2)
/* 408A8 8003FCA8 8D4B0014 */  lw         $t3, 0x14($t2)
/* 408AC 8003FCAC 000C7080 */  sll        $t6, $t4, 2
/* 408B0 8003FCB0 016EC021 */  addu       $t8, $t3, $t6
/* 408B4 8003FCB4 AF090000 */  sw         $t1, 0x0($t8)
/* 408B8 8003FCB8 8FB90028 */  lw         $t9, 0x28($sp)
/* 408BC 8003FCBC 8F2F0008 */  lw         $t7, 0x8($t9)
/* 408C0 8003FCC0 25E80001 */  addiu      $t0, $t7, 0x1
/* 408C4 8003FCC4 AF280008 */  sw         $t0, 0x8($t9)
/* 408C8 8003FCC8 8FAD0028 */  lw         $t5, 0x28($sp)
/* 408CC 8003FCCC 8DAA0000 */  lw         $t2, 0x0($t5)
/* 408D0 8003FCD0 8D4C0000 */  lw         $t4, 0x0($t2)
/* 408D4 8003FCD4 11800006 */  beqz       $t4, .L8003FCF0
/* 408D8 8003FCD8 00000000 */   nop
/* 408DC 8003FCDC 0C00F475 */  jal        __osPopThread
/* 408E0 8003FCE0 01A02025 */   or        $a0, $t5, $zero
/* 408E4 8003FCE4 00408825 */  or         $s1, $v0, $zero
/* 408E8 8003FCE8 0C00CF0C */  jal        osStartThread
/* 408EC 8003FCEC 02202025 */   or        $a0, $s1, $zero
.L8003FCF0:
/* 408F0 8003FCF0 0C00F53C */  jal        __osRestoreInt
/* 408F4 8003FCF4 02002025 */   or        $a0, $s0, $zero
/* 408F8 8003FCF8 00001025 */  or         $v0, $zero, $zero
.L8003FCFC:
/* 408FC 8003FCFC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 40900 8003FD00 8FB00014 */  lw         $s0, 0x14($sp)
/* 40904 8003FD04 8FB10018 */  lw         $s1, 0x18($sp)
/* 40908 8003FD08 03E00008 */  jr         $ra
/* 4090C 8003FD0C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel osPiGetCmdQueue
/* 40910 8003FD10 3C0E8007 */  lui        $t6, %hi(D_8006F420)
/* 40914 8003FD14 8DCEF420 */  lw         $t6, %lo(D_8006F420)($t6)
/* 40918 8003FD18 15C00003 */  bnez       $t6, .L8003FD28
/* 4091C 8003FD1C 00000000 */   nop
/* 40920 8003FD20 03E00008 */  jr         $ra
/* 40924 8003FD24 00001025 */   or        $v0, $zero, $zero
.L8003FD28:
/* 40928 8003FD28 3C028007 */  lui        $v0, %hi(D_8006F428)
/* 4092C 8003FD2C 8C42F428 */  lw         $v0, %lo(D_8006F428)($v0)
/* 40930 8003FD30 03E00008 */  jr         $ra
/* 40934 8003FD34 00000000 */   nop
/* 40938 8003FD38 00000000 */  nop
/* 4093C 8003FD3C 00000000 */  nop
