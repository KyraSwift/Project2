#Kyra Swift @02852494
#Project2.s
.data
  EmptyInput:   .asciiz "Input is empty." #String has Zero Characters - Print Input is Empty
  InvalidInput: .asciiz "Invalid base-33 number." #String includes character not in list - Print invalid base-33 number
  LongInput:    .asciiz "Input is too long." #String has more than 4 characters - Print Input is too long
  UserInput:    .space  512
.text
Error_EmptyInput:
  la $a0, EmptyInput #Address of EmptyInput to print
  li $v0, 4
  syscall
  j exit
Error_InvalidInput:
  la $a0, InvalidInput #Address of Invalid Input to print
  li $v0, 4
  syscall
  j exit
Error_LongInput:
  la $a0, LongInput #Address of LongInput to print
  li $v0, 4
  syscall
  j exit
loopExit:
  li $v0, 1   
  add $a0, $zero, $s1  
  syscall
  jal exit
