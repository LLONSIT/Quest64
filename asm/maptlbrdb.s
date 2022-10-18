.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel osMapTLBRdb
/* 3DF70 8003D370 40085000 */  mfc0       $t0, $10
/* 3DF74 8003D374 2409001F */  addiu      $t1, $zero, 0x1F
/* 3DF78 8003D378 40890000 */  mtc0       $t1, $0
/* 3DF7C 8003D37C 40802800 */  mtc0       $zero, $5
/* 3DF80 8003D380 240A0017 */  addiu      $t2, $zero, 0x17
/* 3DF84 8003D384 3C09C000 */  lui        $t1, (0xC0000000 >> 16)
/* 3DF88 8003D388 40895000 */  mtc0       $t1, $10
/* 3DF8C 8003D38C 3C098000 */  lui        $t1, (0x80000000 >> 16)
/* 3DF90 8003D390 00095982 */  srl        $t3, $t1, 6
/* 3DF94 8003D394 016A5825 */  or         $t3, $t3, $t2
/* 3DF98 8003D398 408B1000 */  mtc0       $t3, $2
/* 3DF9C 8003D39C 24090001 */  addiu      $t1, $zero, 0x1
/* 3DFA0 8003D3A0 40891800 */  mtc0       $t1, $3
/* 3DFA4 8003D3A4 00000000 */  nop
/* 3DFA8 8003D3A8 42000002 */  tlbwi
/* 3DFAC 8003D3AC 00000000 */  nop
/* 3DFB0 8003D3B0 00000000 */  nop
/* 3DFB4 8003D3B4 00000000 */  nop
/* 3DFB8 8003D3B8 00000000 */  nop
/* 3DFBC 8003D3BC 40885000 */  mtc0       $t0, $10
/* 3DFC0 8003D3C0 03E00008 */  jr         $ra
/* 3DFC4 8003D3C4 00000000 */   nop
/* 3DFC8 8003D3C8 00000000 */  nop
/* 3DFCC 8003D3CC 00000000 */  nop
