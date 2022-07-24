.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPiRawStartDma
/* 3E510 8003D910 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3E514 8003D914 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3E518 8003D918 AFA40028 */  sw         $a0, 0x28($sp)
/* 3E51C 8003D91C AFA5002C */  sw         $a1, 0x2C($sp)
/* 3E520 8003D920 AFA60030 */  sw         $a2, 0x30($sp)
/* 3E524 8003D924 AFA70034 */  sw         $a3, 0x34($sp)
/* 3E528 8003D928 AFB10018 */  sw         $s1, 0x18($sp)
/* 3E52C 8003D92C AFB00014 */  sw         $s0, 0x14($sp)
/* 3E530 8003D930 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 3E534 8003D934 8DD00010 */  lw         $s0, %lo(D_A4600010)($t6)
/* 3E538 8003D938 320F0003 */  andi       $t7, $s0, 0x3
/* 3E53C 8003D93C 11E00006 */  beqz       $t7, .L8003D958
/* 3E540 8003D940 00000000 */   nop
.L8003D944:
/* 3E544 8003D944 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 3E548 8003D948 8F100010 */  lw         $s0, %lo(D_A4600010)($t8)
/* 3E54C 8003D94C 32190003 */  andi       $t9, $s0, 0x3
/* 3E550 8003D950 1720FFFC */  bnez       $t9, .L8003D944
/* 3E554 8003D954 00000000 */   nop
.L8003D958:
/* 3E558 8003D958 0C00D374 */  jal        osVirtualToPhysical
/* 3E55C 8003D95C 8FA40030 */   lw        $a0, 0x30($sp)
/* 3E560 8003D960 3C08A460 */  lui        $t0, %hi(D_A4600000)
/* 3E564 8003D964 AD020000 */  sw         $v0, %lo(D_A4600000)($t0)
/* 3E568 8003D968 3C098000 */  lui        $t1, %hi(D_80000308)
/* 3E56C 8003D96C 8D290308 */  lw         $t1, %lo(D_80000308)($t1)
/* 3E570 8003D970 8FAA002C */  lw         $t2, 0x2C($sp)
/* 3E574 8003D974 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 3E578 8003D978 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 3E57C 8003D97C 012A5825 */  or         $t3, $t1, $t2
/* 3E580 8003D980 01616024 */  and        $t4, $t3, $at
/* 3E584 8003D984 3C0DA460 */  lui        $t5, %hi(D_A4600004)
/* 3E588 8003D988 ADAC0004 */  sw         $t4, %lo(D_A4600004)($t5)
/* 3E58C 8003D98C 8FB10028 */  lw         $s1, 0x28($sp)
/* 3E590 8003D990 12200005 */  beqz       $s1, .L8003D9A8
/* 3E594 8003D994 24010001 */   addiu     $at, $zero, 0x1
/* 3E598 8003D998 12210008 */  beq        $s1, $at, .L8003D9BC
/* 3E59C 8003D99C 00000000 */   nop
/* 3E5A0 8003D9A0 1000000B */  b          .L8003D9D0
/* 3E5A4 8003D9A4 00000000 */   nop
.L8003D9A8:
/* 3E5A8 8003D9A8 8FAE0034 */  lw         $t6, 0x34($sp)
/* 3E5AC 8003D9AC 3C18A460 */  lui        $t8, %hi(D_A460000C)
/* 3E5B0 8003D9B0 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 3E5B4 8003D9B4 10000008 */  b          .L8003D9D8
/* 3E5B8 8003D9B8 AF0F000C */   sw        $t7, %lo(D_A460000C)($t8)
.L8003D9BC:
/* 3E5BC 8003D9BC 8FB90034 */  lw         $t9, 0x34($sp)
/* 3E5C0 8003D9C0 3C09A460 */  lui        $t1, %hi(D_A4600008)
/* 3E5C4 8003D9C4 2728FFFF */  addiu      $t0, $t9, -0x1
/* 3E5C8 8003D9C8 10000003 */  b          .L8003D9D8
/* 3E5CC 8003D9CC AD280008 */   sw        $t0, %lo(D_A4600008)($t1)
.L8003D9D0:
/* 3E5D0 8003D9D0 10000002 */  b          .L8003D9DC
/* 3E5D4 8003D9D4 2402FFFF */   addiu     $v0, $zero, -0x1
.L8003D9D8:
/* 3E5D8 8003D9D8 00001025 */  or         $v0, $zero, $zero
.L8003D9DC:
/* 3E5DC 8003D9DC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3E5E0 8003D9E0 8FB00014 */  lw         $s0, 0x14($sp)
/* 3E5E4 8003D9E4 8FB10018 */  lw         $s1, 0x18($sp)
/* 3E5E8 8003D9E8 03E00008 */  jr         $ra
/* 3E5EC 8003D9EC 27BD0028 */   addiu     $sp, $sp, 0x28