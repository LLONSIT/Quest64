.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSetThreadPri
/* 3E430 8003D830 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3E434 8003D834 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3E438 8003D838 AFA40028 */  sw         $a0, 0x28($sp)
/* 3E43C 8003D83C AFA5002C */  sw         $a1, 0x2C($sp)
/* 3E440 8003D840 0C00F534 */  jal        __osDisableInt
/* 3E444 8003D844 AFB00018 */   sw        $s0, 0x18($sp)
/* 3E448 8003D848 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3E44C 8003D84C 00408025 */  or         $s0, $v0, $zero
/* 3E450 8003D850 15C00004 */  bnez       $t6, .L8003D864
/* 3E454 8003D854 00000000 */   nop
/* 3E458 8003D858 3C0F8007 */  lui        $t7, %hi(D_80070A00)
/* 3E45C 8003D85C 8DEF0A00 */  lw         $t7, %lo(D_80070A00)($t7)
/* 3E460 8003D860 AFAF0028 */  sw         $t7, 0x28($sp)
.L8003D864:
/* 3E464 8003D864 8FB80028 */  lw         $t8, 0x28($sp)
/* 3E468 8003D868 8FA8002C */  lw         $t0, 0x2C($sp)
/* 3E46C 8003D86C 8F190004 */  lw         $t9, 0x4($t8)
/* 3E470 8003D870 13280020 */  beq        $t9, $t0, .L8003D8F4
/* 3E474 8003D874 00000000 */   nop
/* 3E478 8003D878 AF080004 */  sw         $t0, 0x4($t8)
/* 3E47C 8003D87C 3C0A8007 */  lui        $t2, %hi(D_80070A00)
/* 3E480 8003D880 8D4A0A00 */  lw         $t2, %lo(D_80070A00)($t2)
/* 3E484 8003D884 8FA90028 */  lw         $t1, 0x28($sp)
/* 3E488 8003D888 112A000C */  beq        $t1, $t2, .L8003D8BC
/* 3E48C 8003D88C 00000000 */   nop
/* 3E490 8003D890 952B0010 */  lhu        $t3, 0x10($t1)
/* 3E494 8003D894 24010001 */  addiu      $at, $zero, 0x1
/* 3E498 8003D898 11610008 */  beq        $t3, $at, .L8003D8BC
/* 3E49C 8003D89C 00000000 */   nop
/* 3E4A0 8003D8A0 8D240008 */  lw         $a0, 0x8($t1)
/* 3E4A4 8003D8A4 0C00F544 */  jal        __osDequeueThread
/* 3E4A8 8003D8A8 01202825 */   or        $a1, $t1, $zero
/* 3E4AC 8003D8AC 8FAC0028 */  lw         $t4, 0x28($sp)
/* 3E4B0 8003D8B0 8D840008 */  lw         $a0, 0x8($t4)
/* 3E4B4 8003D8B4 0C00F463 */  jal        __osEnqueueThread
/* 3E4B8 8003D8B8 01802825 */   or        $a1, $t4, $zero
.L8003D8BC:
/* 3E4BC 8003D8BC 3C0D8007 */  lui        $t5, %hi(D_80070A00)
/* 3E4C0 8003D8C0 3C0F8007 */  lui        $t7, %hi(D_800709F8)
/* 3E4C4 8003D8C4 8DEF09F8 */  lw         $t7, %lo(D_800709F8)($t7)
/* 3E4C8 8003D8C8 8DAD0A00 */  lw         $t5, %lo(D_80070A00)($t5)
/* 3E4CC 8003D8CC 8DF90004 */  lw         $t9, 0x4($t7)
/* 3E4D0 8003D8D0 8DAE0004 */  lw         $t6, 0x4($t5)
/* 3E4D4 8003D8D4 01D9082A */  slt        $at, $t6, $t9
/* 3E4D8 8003D8D8 10200006 */  beqz       $at, .L8003D8F4
/* 3E4DC 8003D8DC 00000000 */   nop
/* 3E4E0 8003D8E0 24080002 */  addiu      $t0, $zero, 0x2
/* 3E4E4 8003D8E4 3C048007 */  lui        $a0, %hi(D_800709F8)
/* 3E4E8 8003D8E8 A5A80010 */  sh         $t0, 0x10($t5)
/* 3E4EC 8003D8EC 0C00F423 */  jal        __osEnqueueAndYield
/* 3E4F0 8003D8F0 248409F8 */   addiu     $a0, $a0, %lo(D_800709F8)
.L8003D8F4:
/* 3E4F4 8003D8F4 0C00F53C */  jal        __osRestoreInt
/* 3E4F8 8003D8F8 02002025 */   or        $a0, $s0, $zero
/* 3E4FC 8003D8FC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3E500 8003D900 8FB00018 */  lw         $s0, 0x18($sp)
/* 3E504 8003D904 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3E508 8003D908 03E00008 */  jr         $ra
/* 3E50C 8003D90C 00000000 */   nop
