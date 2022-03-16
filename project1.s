.data
userInput:  .space 11 # allow user to input string of 11 characters

.text

main: 
      addu $t0, $0, 0x2CBB81 # student id = $t0
      addi $t1, $0, 11 # constant 11 = $t1
      div $t0, $t1
      mfhi $t2    # $t2 = 8 = 02931585 % 11
      addi $t3, $0, 26 # constant 26 = t3
      add $t4, $t2, $t3 
      sub $t4, $t4, 1 # $t4 = 33 i.e max range for string values

      li $v0, 8  # gets user input from keyboard
      la $a0, userInput # stores user in put in $a0
      li $a1, 11 # max lengeth of user input string
      syscall
     
      
      # li $v0, 4
      # la $a0 0($a0) # 0 = hello67890
      # syscall

      # li $v0, 4
      # la $a0 1($a0) # 1 = ello67890
      # syscall

      # li $v0, 4
      # la $a0 2($a0) # 2 = llo67890
      # syscall

      # li $v0, 4
      # la $a0 10($a0) # 10 = nothing
      # syscall

      li $v0, 4
      la $a0 9($a0) # 9 = 0
      syscall


      
      li $v0,10
      syscall
