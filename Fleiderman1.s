! Santiago Fleiderman
!CSC 3210
!November 11,2016
!Assignment 4
! Csc 3210  Computer Organizations
/*
ca(byte) =-1,
sb(halfword) =-4,
ic(word) =-8,
cd(byte) =-9,
se(halfword) =-12,
ig(word) =-16
ca =17
cd =40
ic = -46
ig = -6
sb =-46/17=-2.7=-2
se =40*-2+-46=-126
*/
.global main
main:
save %sp,-96 + -14 & -4,%sp !or save %sp,-96 + -16,%sp or .align 4
mov 17,%o0 !ca=17
stb %o0,[%fp + -1]
add %o0,23,%o0 !cd = ca + 23 = 17 + 23 = 40
stb %o0,[%fp + -9]
ldsb [%fp + -1],%o0 !ic = -63 + ca' = -63+17 = -46
add %o0,-63,%o0
st %o0,[%fp + -8]

!ig = ic + cd
! ic word, cd byte, ig word
ld [%fp + -8],%o0
ldub [%fp + -9],%o1
add %o0,%o1,%o0
st %o0,[%fp + -16]
!sb= ic/ca
! ic word, ca byte, 
ld [%fp + -8],%o0
ldsb [%fp + -1],%o1
call .div !(-46)/(17)=-2
nop
sth %o0,[%fp + -4]
! se = cd*sb+ic
! cd byte, sb half, ic word
ldsb [%fp + -9],%o0
ldsh [%fp + -4],%o1
call .mul
nop
ld [%fp + -8],%o1
add %o0,%o1,%o0
sth %o0,[%fp + -12]
!40*-2+-46 =-126

!ig = ic + cd' = -46+40 = -6
!sb = ic/ca = -46/17 = -2
!se = cd * sb + ic' = 40*-2 + -46 = -126$
mov 1,%g1
ta 0
