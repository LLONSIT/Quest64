.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osContSetCh
/* 3B7A0 8003ABA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3B7A4 8003ABA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3B7A8 8003ABA8 AFA40020 */  sw         $a0, 0x20($sp)
/* 3B7AC 8003ABAC 0C011210 */  jal        __osSiGetAccess
/* 3B7B0 8003ABB0 AFA0001C */   sw        $zero, 0x1C($sp)
/* 3B7B4 8003ABB4 93AE0023 */  lbu        $t6, 0x23($sp)
/* 3B7B8 8003ABB8 29C10005 */  slti       $at, $t6, 0x5
/* 3B7BC 8003ABBC 14200005 */  bnez       $at, .L8003ABD4
/* 3B7C0 8003ABC0 00000000 */   nop
/* 3B7C4 8003ABC4 240F0004 */  addiu      $t7, $zero, 0x4
/* 3B7C8 8003ABC8 3C018009 */  lui        $at, %hi(D_80095491)
/* 3B7CC 8003ABCC 10000004 */  b          .L8003ABE0
/* 3B7D0 8003ABD0 A02F5491 */   sb        $t7, %lo(D_80095491)($at)
.L8003ABD4:
/* 3B7D4 8003ABD4 93B80023 */  lbu        $t8, 0x23($sp)
/* 3B7D8 8003ABD8 3C018009 */  lui        $at, %hi(D_80095491)
/* 3B7DC 8003ABDC A0385491 */  sb         $t8, %lo(D_80095491)($at)
.L8003ABE0:
/* 3B7E0 8003ABE0 241900FE */  addiu      $t9, $zero, 0xFE
/* 3B7E4 8003ABE4 3C018009 */  lui        $at, %hi(D_80095490)
/* 3B7E8 8003ABE8 0C011221 */  jal        __osSiRelAccess
/* 3B7EC 8003ABEC A0395490 */   sb        $t9, %lo(D_80095490)($at)
/* 3B7F0 8003ABF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3B7F4 8003ABF4 8FA2001C */  lw         $v0, 0x1C($sp)
/* 3B7F8 8003ABF8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3B7FC 8003ABFC 03E00008 */  jr         $ra
/* 3B800 8003AC00 00000000 */   nop
/* 3B804 8003AC04 00000000 */  nop
/* 3B808 8003AC08 00000000 */  nop
/* 3B80C 8003AC0C 00000000 */  nop
