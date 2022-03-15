.data
msg:  .asciiz "1111111111"
.text

main: 
      addu $t0, $0, 0x2CBB81 # student id = $t0
      addi $t1, $0, 11 # constant 11 = $t1
      
