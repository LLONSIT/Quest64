.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osContStartQuery
/* 3D4E0 8003C8E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3D4E4 8003C8E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D4E8 8003C8E8 AFA40020 */  sw         $a0, 0x20($sp)
/* 3D4EC 8003C8EC 0C011210 */  jal        __osSiGetAccess
/* 3D4F0 8003C8F0 AFA0001C */   sw        $zero, 0x1C($sp)
/* 3D4F4 8003C8F4 3C0E8009 */  lui        $t6, %hi(D_80095490)
/* 3D4F8 8003C8F8 91CE5490 */  lbu        $t6, %lo(D_80095490)($t6)
/* 3D4FC 8003C8FC 11C0000C */  beqz       $t6, .L8003C930
/* 3D500 8003C900 00000000 */   nop
/* 3D504 8003C904 0C00EAAA */  jal        __osPackRequestData
/* 3D508 8003C908 00002025 */   or        $a0, $zero, $zero
/* 3D50C 8003C90C 3C058009 */  lui        $a1, %hi(D_80095450)
/* 3D510 8003C910 24A55450 */  addiu      $a1, $a1, %lo(D_80095450)
/* 3D514 8003C914 0C011A54 */  jal        __osSiRawStartDma
/* 3D518 8003C918 24040001 */   addiu     $a0, $zero, 0x1
/* 3D51C 8003C91C AFA2001C */  sw         $v0, 0x1C($sp)
/* 3D520 8003C920 8FA40020 */  lw         $a0, 0x20($sp)
/* 3D524 8003C924 00002825 */  or         $a1, $zero, $zero
/* 3D528 8003C928 0C00D008 */  jal        osRecvMesg
/* 3D52C 8003C92C 24060001 */   addiu     $a2, $zero, 0x1
.L8003C930:
/* 3D530 8003C930 3C058009 */  lui        $a1, %hi(D_80095450)
/* 3D534 8003C934 24A55450 */  addiu      $a1, $a1, %lo(D_80095450)
/* 3D538 8003C938 0C011A54 */  jal        __osSiRawStartDma
/* 3D53C 8003C93C 00002025 */   or        $a0, $zero, $zero
/* 3D540 8003C940 3C018009 */  lui        $at, %hi(D_80095490)
/* 3D544 8003C944 AFA2001C */  sw         $v0, 0x1C($sp)
/* 3D548 8003C948 0C011221 */  jal        __osSiRelAccess
/* 3D54C 8003C94C A0205490 */   sb        $zero, %lo(D_80095490)($at)
/* 3D550 8003C950 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D554 8003C954 8FA2001C */  lw         $v0, 0x1C($sp)
/* 3D558 8003C958 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3D55C 8003C95C 03E00008 */  jr         $ra
/* 3D560 8003C960 00000000 */   nop

glabel osContGetQuery
/* 3D564 8003C964 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3D568 8003C968 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D56C 8003C96C AFA40020 */  sw         $a0, 0x20($sp)
/* 3D570 8003C970 8FA50020 */  lw         $a1, 0x20($sp)
/* 3D574 8003C974 0C00EA76 */  jal        __osContGetInitData
/* 3D578 8003C978 27A4001F */   addiu     $a0, $sp, 0x1F
/* 3D57C 8003C97C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D580 8003C980 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3D584 8003C984 03E00008 */  jr         $ra
/* 3D588 8003C988 00000000 */   nop
/* 3D58C 8003C98C 00000000 */  nop
