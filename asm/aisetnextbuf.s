.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osAiSetNextBuffer
/* 37C10 80037010 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 37C14 80037014 3C0F8007 */  lui        $t7, %hi(D_800709A0)
/* 37C18 80037018 91EF09A0 */  lbu        $t7, %lo(D_800709A0)($t7)
/* 37C1C 8003701C AFA40020 */  sw         $a0, 0x20($sp)
/* 37C20 80037020 8FAE0020 */  lw         $t6, 0x20($sp)
/* 37C24 80037024 AFBF0014 */  sw         $ra, 0x14($sp)
/* 37C28 80037028 AFA50024 */  sw         $a1, 0x24($sp)
/* 37C2C 8003702C 11E00003 */  beqz       $t7, .L8003703C
/* 37C30 80037030 AFAE001C */   sw        $t6, 0x1C($sp)
/* 37C34 80037034 25D8E000 */  addiu      $t8, $t6, -0x2000
/* 37C38 80037038 AFB8001C */  sw         $t8, 0x1C($sp)
.L8003703C:
/* 37C3C 8003703C 8FB90020 */  lw         $t9, 0x20($sp)
/* 37C40 80037040 8FA80024 */  lw         $t0, 0x24($sp)
/* 37C44 80037044 24012000 */  addiu      $at, $zero, 0x2000
/* 37C48 80037048 03284821 */  addu       $t1, $t9, $t0
/* 37C4C 8003704C 312A3FFF */  andi       $t2, $t1, 0x3FFF
/* 37C50 80037050 15410005 */  bne        $t2, $at, .L80037068
/* 37C54 80037054 00000000 */   nop
/* 37C58 80037058 240B0001 */  addiu      $t3, $zero, 0x1
/* 37C5C 8003705C 3C018007 */  lui        $at, %hi(D_800709A0)
/* 37C60 80037060 10000003 */  b          .L80037070
/* 37C64 80037064 A02B09A0 */   sb        $t3, %lo(D_800709A0)($at)
.L80037068:
/* 37C68 80037068 3C018007 */  lui        $at, %hi(D_800709A0)
/* 37C6C 8003706C A02009A0 */  sb         $zero, %lo(D_800709A0)($at)
.L80037070:
/* 37C70 80037070 0C0109A8 */  jal        __osAiDeviceBusy
/* 37C74 80037074 00000000 */   nop
/* 37C78 80037078 10400003 */  beqz       $v0, .L80037088
/* 37C7C 8003707C 00000000 */   nop
/* 37C80 80037080 10000009 */  b          .L800370A8
/* 37C84 80037084 2402FFFF */   addiu     $v0, $zero, -0x1
.L80037088:
/* 37C88 80037088 0C00D374 */  jal        osVirtualToPhysical
/* 37C8C 8003708C 8FA4001C */   lw        $a0, 0x1C($sp)
/* 37C90 80037090 3C0CA450 */  lui        $t4, %hi(D_A4500000)
/* 37C94 80037094 AD820000 */  sw         $v0, %lo(D_A4500000)($t4)
/* 37C98 80037098 8FAD0024 */  lw         $t5, 0x24($sp)
/* 37C9C 8003709C 3C0FA450 */  lui        $t7, %hi(D_A4500004)
/* 37CA0 800370A0 00001025 */  or         $v0, $zero, $zero
/* 37CA4 800370A4 ADED0004 */  sw         $t5, %lo(D_A4500004)($t7)
.L800370A8:
/* 37CA8 800370A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 37CAC 800370AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 37CB0 800370B0 03E00008 */  jr         $ra
/* 37CB4 800370B4 00000000 */   nop
/* 37CB8 800370B8 00000000 */  nop
/* 37CBC 800370BC 00000000 */  nop
