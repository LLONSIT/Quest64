.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel guOrthoF
/* 36440 80035840 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 36444 80035844 AFBF0014 */  sw         $ra, 0x14($sp)
/* 36448 80035848 AFA5001C */  sw         $a1, 0x1C($sp)
/* 3644C 8003584C AFA60020 */  sw         $a2, 0x20($sp)
/* 36450 80035850 AFA70024 */  sw         $a3, 0x24($sp)
/* 36454 80035854 0C00D4C0 */  jal        guMtxIdentF
/* 36458 80035858 AFA40018 */   sw        $a0, 0x18($sp)
/* 3645C 8003585C C7A40020 */  lwc1       $f4, 0x20($sp)
/* 36460 80035860 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* 36464 80035864 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 36468 80035868 44814000 */  mtc1       $at, $f8
/* 3646C 8003586C 46062001 */  sub.s      $f0, $f4, $f6
/* 36470 80035870 8FA20018 */  lw         $v0, 0x18($sp)
/* 36474 80035874 C7AE0028 */  lwc1       $f14, 0x28($sp)
/* 36478 80035878 C7B00030 */  lwc1       $f16, 0x30($sp)
/* 3647C 8003587C 46004283 */  div.s      $f10, $f8, $f0
/* 36480 80035880 C7B2002C */  lwc1       $f18, 0x2C($sp)
/* 36484 80035884 44813000 */  mtc1       $at, $f6
/* 36488 80035888 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 3648C 8003588C 46128301 */  sub.s      $f12, $f16, $f18
/* 36490 80035890 00001825 */  or         $v1, $zero, $zero
/* 36494 80035894 24040004 */  addiu      $a0, $zero, 0x4
/* 36498 80035898 E44A0000 */  swc1       $f10, 0x0($v0)
/* 3649C 8003589C C7A40024 */  lwc1       $f4, 0x24($sp)
/* 364A0 800358A0 44815000 */  mtc1       $at, $f10
/* 364A4 800358A4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 364A8 800358A8 46047081 */  sub.s      $f2, $f14, $f4
/* 364AC 800358AC 460C5103 */  div.s      $f4, $f10, $f12
/* 364B0 800358B0 46023203 */  div.s      $f8, $f6, $f2
/* 364B4 800358B4 E4440028 */  swc1       $f4, 0x28($v0)
/* 364B8 800358B8 E4480014 */  swc1       $f8, 0x14($v0)
/* 364BC 800358BC C7A8001C */  lwc1       $f8, 0x1C($sp)
/* 364C0 800358C0 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 364C4 800358C4 46083280 */  add.s      $f10, $f6, $f8
/* 364C8 800358C8 46005107 */  neg.s      $f4, $f10
/* 364CC 800358CC 46002183 */  div.s      $f6, $f4, $f0
/* 364D0 800358D0 E4460030 */  swc1       $f6, 0x30($v0)
/* 364D4 800358D4 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 364D8 800358D8 46087280 */  add.s      $f10, $f14, $f8
/* 364DC 800358DC 46128200 */  add.s      $f8, $f16, $f18
/* 364E0 800358E0 46005107 */  neg.s      $f4, $f10
/* 364E4 800358E4 46004287 */  neg.s      $f10, $f8
/* 364E8 800358E8 46022183 */  div.s      $f6, $f4, $f2
/* 364EC 800358EC 460C5103 */  div.s      $f4, $f10, $f12
/* 364F0 800358F0 E4460034 */  swc1       $f6, 0x34($v0)
/* 364F4 800358F4 44813000 */  mtc1       $at, $f6
/* 364F8 800358F8 00000000 */  nop
/* 364FC 800358FC E446003C */  swc1       $f6, 0x3C($v0)
/* 36500 80035900 E4440038 */  swc1       $f4, 0x38($v0)
/* 36504 80035904 C7A00034 */  lwc1       $f0, 0x34($sp)
/* 36508 80035908 C4480000 */  lwc1       $f8, 0x0($v0)
/* 3650C 8003590C 24630001 */  addiu      $v1, $v1, 0x1
/* 36510 80035910 C4520004 */  lwc1       $f18, 0x4($v0)
/* 36514 80035914 46004302 */  mul.s      $f12, $f8, $f0
/* 36518 80035918 C44E0008 */  lwc1       $f14, 0x8($v0)
/* 3651C 8003591C 10640010 */  beq        $v1, $a0, .L80035960
/* 36520 80035920 C450000C */   lwc1      $f16, 0xC($v0)
.L80035924:
/* 36524 80035924 46009282 */  mul.s      $f10, $f18, $f0
/* 36528 80035928 C4480010 */  lwc1       $f8, 0x10($v0)
/* 3652C 8003592C C4520014 */  lwc1       $f18, 0x14($v0)
/* 36530 80035930 46007182 */  mul.s      $f6, $f14, $f0
/* 36534 80035934 C44E0018 */  lwc1       $f14, 0x18($v0)
/* 36538 80035938 24630001 */  addiu      $v1, $v1, 0x1
/* 3653C 8003593C 46008102 */  mul.s      $f4, $f16, $f0
/* 36540 80035940 C450001C */  lwc1       $f16, 0x1C($v0)
/* 36544 80035944 E44C0000 */  swc1       $f12, 0x0($v0)
/* 36548 80035948 46004302 */  mul.s      $f12, $f8, $f0
/* 3654C 8003594C E44A0004 */  swc1       $f10, 0x4($v0)
/* 36550 80035950 E4460008 */  swc1       $f6, 0x8($v0)
/* 36554 80035954 24420010 */  addiu      $v0, $v0, 0x10
/* 36558 80035958 1464FFF2 */  bne        $v1, $a0, .L80035924
/* 3655C 8003595C E444FFFC */   swc1      $f4, -0x4($v0)
.L80035960:
/* 36560 80035960 46009282 */  mul.s      $f10, $f18, $f0
/* 36564 80035964 24420010 */  addiu      $v0, $v0, 0x10
/* 36568 80035968 E44CFFF0 */  swc1       $f12, -0x10($v0)
/* 3656C 8003596C 46007182 */  mul.s      $f6, $f14, $f0
/* 36570 80035970 00000000 */  nop
/* 36574 80035974 46008102 */  mul.s      $f4, $f16, $f0
/* 36578 80035978 E44AFFF4 */  swc1       $f10, -0xC($v0)
/* 3657C 8003597C E446FFF8 */  swc1       $f6, -0x8($v0)
/* 36580 80035980 E444FFFC */  swc1       $f4, -0x4($v0)
/* 36584 80035984 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36588 80035988 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3658C 8003598C 03E00008 */  jr         $ra
/* 36590 80035990 00000000 */   nop

glabel guOrtho
/* 36594 80035994 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 36598 80035998 44856000 */  mtc1       $a1, $f12
/* 3659C 8003599C 44867000 */  mtc1       $a2, $f14
/* 365A0 800359A0 44878000 */  mtc1       $a3, $f16
/* 365A4 800359A4 C7A40078 */  lwc1       $f4, 0x78($sp)
/* 365A8 800359A8 C7A6007C */  lwc1       $f6, 0x7C($sp)
/* 365AC 800359AC C7A80080 */  lwc1       $f8, 0x80($sp)
/* 365B0 800359B0 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* 365B4 800359B4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 365B8 800359B8 AFA40068 */  sw         $a0, 0x68($sp)
/* 365BC 800359BC 44056000 */  mfc1       $a1, $f12
/* 365C0 800359C0 44067000 */  mfc1       $a2, $f14
/* 365C4 800359C4 44078000 */  mfc1       $a3, $f16
/* 365C8 800359C8 27A40028 */  addiu      $a0, $sp, 0x28
/* 365CC 800359CC E7A40010 */  swc1       $f4, 0x10($sp)
/* 365D0 800359D0 E7A60014 */  swc1       $f6, 0x14($sp)
/* 365D4 800359D4 E7A80018 */  swc1       $f8, 0x18($sp)
/* 365D8 800359D8 0C00D610 */  jal        guOrthoF
/* 365DC 800359DC E7AA001C */   swc1      $f10, 0x1C($sp)
/* 365E0 800359E0 27A40028 */  addiu      $a0, $sp, 0x28
/* 365E4 800359E4 0C00D480 */  jal        guMtxF2L
/* 365E8 800359E8 8FA50068 */   lw        $a1, 0x68($sp)
/* 365EC 800359EC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 365F0 800359F0 27BD0068 */  addiu      $sp, $sp, 0x68
/* 365F4 800359F4 03E00008 */  jr         $ra
/* 365F8 800359F8 00000000 */   nop
/* 365FC 800359FC 00000000 */  nop
