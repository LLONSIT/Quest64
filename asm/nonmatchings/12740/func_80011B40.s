glabel func_80011B40
/* 12740 80011B40 3C038008 */  lui        $v1, %hi(D_800869D8)
/* 12744 80011B44 3C028008 */  lui        $v0, %hi(D_800869F8)
/* 12748 80011B48 244269F8 */  addiu      $v0, $v0, %lo(D_800869F8)
/* 1274C 80011B4C 246369D8 */  addiu      $v1, $v1, %lo(D_800869D8)
.L80011B50:
/* 12750 80011B50 24630004 */  addiu      $v1, $v1, 0x4
/* 12754 80011B54 A060FFFD */  sb         $zero, -0x3($v1)
/* 12758 80011B58 A060FFFE */  sb         $zero, -0x2($v1)
/* 1275C 80011B5C A060FFFF */  sb         $zero, -0x1($v1)
/* 12760 80011B60 1462FFFB */  bne        $v1, $v0, .L80011B50
/* 12764 80011B64 A060FFFC */   sb        $zero, -0x4($v1)
/* 12768 80011B68 03E00008 */  jr         $ra
/* 1276C 80011B6C 00000000 */   nop
