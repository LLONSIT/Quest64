.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8003D750
/* 3E350 8003D750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E354 8003D754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E358 8003D758 240E0001 */  addiu      $t6, $zero, 0x1
/* 3E35C 8003D75C 3C018007 */  lui        $at, %hi(D_80070A10)
/* 3E360 8003D760 3C048009 */  lui        $a0, %hi(D_800955E8)
/* 3E364 8003D764 3C058009 */  lui        $a1, %hi(D_800955E0)
/* 3E368 8003D768 AC2E0A10 */  sw         $t6, %lo(D_80070A10)($at)
/* 3E36C 8003D76C 24A555E0 */  addiu      $a1, $a1, %lo(D_800955E0)
/* 3E370 8003D770 248455E8 */  addiu      $a0, $a0, %lo(D_800955E8)
/* 3E374 8003D774 0C00CFC4 */  jal        osCreateMesgQueue
/* 3E378 8003D778 24060001 */   addiu     $a2, $zero, 0x1
/* 3E37C 8003D77C 3C048009 */  lui        $a0, %hi(D_800955E8)
/* 3E380 8003D780 248455E8 */  addiu      $a0, $a0, %lo(D_800955E8)
/* 3E384 8003D784 00002825 */  or         $a1, $zero, $zero
/* 3E388 8003D788 0C00D080 */  jal        osSendMesg
/* 3E38C 8003D78C 00003025 */   or        $a2, $zero, $zero
/* 3E390 8003D790 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E394 8003D794 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3E398 8003D798 03E00008 */  jr         $ra
/* 3E39C 8003D79C 00000000 */   nop

glabel func_8003D7A0
/* 3E3A0 8003D7A0 3C0E8007 */  lui        $t6, %hi(D_80070A10)
/* 3E3A4 8003D7A4 8DCE0A10 */  lw         $t6, %lo(D_80070A10)($t6)
/* 3E3A8 8003D7A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E3AC 8003D7AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E3B0 8003D7B0 15C00003 */  bnez       $t6, .L8003D7C0
/* 3E3B4 8003D7B4 00000000 */   nop
/* 3E3B8 8003D7B8 0C00F5D4 */  jal        func_8003D750
/* 3E3BC 8003D7BC 00000000 */   nop
.L8003D7C0:
/* 3E3C0 8003D7C0 3C048009 */  lui        $a0, %hi(D_800955E8)
/* 3E3C4 8003D7C4 248455E8 */  addiu      $a0, $a0, %lo(D_800955E8)
/* 3E3C8 8003D7C8 27A5001C */  addiu      $a1, $sp, 0x1C
/* 3E3CC 8003D7CC 0C00D008 */  jal        osRecvMesg
/* 3E3D0 8003D7D0 24060001 */   addiu     $a2, $zero, 0x1
/* 3E3D4 8003D7D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E3D8 8003D7D8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3E3DC 8003D7DC 03E00008 */  jr         $ra
/* 3E3E0 8003D7E0 00000000 */   nop

glabel func_8003D7E4
/* 3E3E4 8003D7E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E3E8 8003D7E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E3EC 8003D7EC 3C048009 */  lui        $a0, %hi(D_800955E8)
/* 3E3F0 8003D7F0 248455E8 */  addiu      $a0, $a0, %lo(D_800955E8)
/* 3E3F4 8003D7F4 00002825 */  or         $a1, $zero, $zero
/* 3E3F8 8003D7F8 0C00D080 */  jal        osSendMesg
/* 3E3FC 8003D7FC 00003025 */   or        $a2, $zero, $zero
/* 3E400 8003D800 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E404 8003D804 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3E408 8003D808 03E00008 */  jr         $ra
/* 3E40C 8003D80C 00000000 */   nop
