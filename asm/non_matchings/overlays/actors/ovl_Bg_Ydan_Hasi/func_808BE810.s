glabel func_808BE810
/* 00310 808BE810 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00314 808BE814 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00318 808BE818 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0031C 808BE81C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00320 808BE820 848E016A */  lh      $t6, 0x016A($a0)           ## 0000016A
/* 00324 808BE824 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00328 808BE828 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 0032C 808BE82C 15C00010 */  bne     $t6, $zero, .L808BE870     
/* 00330 808BE830 3C01423C */  lui     $at, 0x423C                ## $at = 423C0000
/* 00334 808BE834 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 00338 808BE838 0C01DE80 */  jal     Math_ApproxF
              
/* 0033C 808BE83C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00340 808BE840 10400006 */  beq     $v0, $zero, .L808BE85C     
/* 00344 808BE844 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00348 808BE848 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 0034C 808BE84C 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 00350 808BE850 3C0F808C */  lui     $t7, %hi(func_808BE7C8)    ## $t7 = 808C0000
/* 00354 808BE854 25EFE7C8 */  addiu   $t7, $t7, %lo(func_808BE7C8) ## $t7 = 808BE7C8
/* 00358 808BE858 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
.L808BE85C:
/* 0035C 808BE85C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00360 808BE860 0C00BE52 */  jal     func_8002F948              
/* 00364 808BE864 2405205E */  addiu   $a1, $zero, 0x205E         ## $a1 = 0000205E
/* 00368 808BE868 10000011 */  beq     $zero, $zero, .L808BE8B0   
/* 0036C 808BE86C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
.L808BE870:
/* 00370 808BE870 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00374 808BE874 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 00378 808BE878 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 0037C 808BE87C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00380 808BE880 46062201 */  sub.s   $f8, $f4, $f6              
/* 00384 808BE884 44054000 */  mfc1    $a1, $f8                   
/* 00388 808BE888 0C01DE80 */  jal     Math_ApproxF
              
/* 0038C 808BE88C 00000000 */  nop
/* 00390 808BE890 10400004 */  beq     $v0, $zero, .L808BE8A4     
/* 00394 808BE894 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00398 808BE898 3C18808C */  lui     $t8, %hi(func_808BE8DC)    ## $t8 = 808C0000
/* 0039C 808BE89C 2718E8DC */  addiu   $t8, $t8, %lo(func_808BE8DC) ## $t8 = 808BE8DC
/* 003A0 808BE8A0 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
.L808BE8A4:
/* 003A4 808BE8A4 0C00BE52 */  jal     func_8002F948              
/* 003A8 808BE8A8 2405205E */  addiu   $a1, $zero, 0x205E         ## $a1 = 0000205E
/* 003AC 808BE8AC C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
.L808BE8B0:
/* 003B0 808BE8B0 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 003B4 808BE8B4 4600540D */  trunc.w.s $f16, $f10                 
/* 003B8 808BE8B8 8F2807C0 */  lw      $t0, 0x07C0($t9)           ## 000007C0
/* 003BC 808BE8BC 440A8000 */  mfc1    $t2, $f16                  
/* 003C0 808BE8C0 8D020028 */  lw      $v0, 0x0028($t0)           ## 00000028
/* 003C4 808BE8C4 A44A0012 */  sh      $t2, 0x0012($v0)           ## 00000012
/* 003C8 808BE8C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003CC 808BE8CC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003D0 808BE8D0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003D4 808BE8D4 03E00008 */  jr      $ra                        
/* 003D8 808BE8D8 24420010 */  addiu   $v0, $v0, 0x0010           ## $v0 = 00000010
