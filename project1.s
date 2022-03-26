.data
userInput:  .space 11 # allow user to input string of 11 characters

.text

main: 
      # addu $t0, $0, 0x2CBB81 # student id = $t0
      # addi $t1, $0, 11 # constant 11 = $t1
      # div $t0, $t1
      # mfhi $t2    # $t2 = 8 = 02931585 % 11
      # addi $t3, $0, 26 # constant 26 = t3
      # add $t4, $t2, $t3 
      # sub $t4, $t4, 1 # $t4 = 33 i.e max range for string values (only account for 23 letter in alphabet: W)
      # i only account for letters A-W
      # li $t5, 0 # sum variable stored in $t5
      # li $t6, 0 # iterator variable in $t6

      #-----------------------
      li $v0, 8  # gets user input from keyboard
      la $a0, userInput # stores user in put in $a0
      li $a1, 11 # max lengeth of user input string
      syscall

      # -----------------------
      li $t0, 0 # sum variable stored in $t0
      li $t1, 0 # iterator variable
      la $t9, userInput

while:
      lb $s1, 0($t9) # lb load first char in $s1
      beq $t1, 10, exit

      blt $s1, 48, skipchar # 48 = '0' in ascii. if char < 48 skip it 
      ble $s1, 57, sumnum # 57 = '9' in ascii. if char <= 57 add it to sum
      syscall
      j while

skipchar:
      
sumnum:
      sub $s1, $s1, 48 # s1 = s1 - 48/ subtract 48 to get correct final sum val
      add $t0, $t0, $s1 # add val to $t5
      sub $s1, $s1, $s1 # set $s1 back to 0
      addi $t9, $t9, 1 # increment address for loop



exit:
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
      
