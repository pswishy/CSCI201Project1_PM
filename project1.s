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
      sub $t4, $t4, 1 # $t4 = 33 i.e max range for string values (only account for 23 letter in alphabet: W)
      # i only account for letters A-W
      li $t5, 0 # sum variable stored in $t5
      li $t6, 0 # iterator variable in $t6
      li $v0, 8  # gets user input from keyboard
      la $a0, userInput # stores user in put in $a0
      li $a1, 11 # max lengeth of user input string
      syscall

      la $t9, userInput
      
      lb $s1, 0($t9)


      li $v0, 10
      syscall
      # beq $t6, 10, exit # if $t6 = 10 then exit
      # la $a0, $t7($a0)
      # li $a1, $a0
      # syscall
      # li $v0,10
      # syscall
      # beq $t7($a0), '1', one_branch
      # beq $s0, '1' , one_branch # if char in $a0 = '0'
      # li $v0, 4
      # la $a0 0($a0) # 0 = hello67890
      # syscall
# one_branch:
     # add $t5, $t5, 1
     # li $v0, 4
     # la $a0, $t5
     # syscall
       # li $v0, 4
       # la $a0 1($a0) # 1 = ello67890
       # syscall

      # li $v0, 4
      # la $a0 2($a0) # 2 = llo67890
      # syscall

      # li $v0, 4
      # la $a0 10($a0) # 10 = nothing / null
      # syscall

      # li $v0, 4
      # la $a0 9($a0) # 9 = 0
      # syscall


# exit:      
      
