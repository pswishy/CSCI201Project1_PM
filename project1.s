.data
msg:  .asciiz "1111111111"
.text

main: 
      addu $t0, $0, 0x2CBB81 # student id = $t0
      addi $t1, $0, 11 # constant 11 = $t1
      div $t0, $t1
      mfhi $t2    # $t2 = 8 = 02931585 % 11
      addi $t3, $0, 26 # constant 26 = t3
      add $t4, $t2, $t3 
      sub $t4, $t4, 1 # $t4 = 33 i.e max range for string values
      
      
