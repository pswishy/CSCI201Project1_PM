.data

userInput:  .space 11 # allow user to input string of 11 characters

.text

main: 

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
      # syscall

      blt $s1, 65, skipchar # 65 = 'A' in ascii. if char < 65 skip
      ble $s1, 87, sumCapitallet # 87 = 'W' in ascii. if char <= 87 add to sum. >87 not in range

      blt $s1, 97, skipchar # 'a' = 97 in ascii. if char < 97 skip it
      ble $s1, 119, sumlowlet # 'w' in ascii = 119. if char <= 119 add it to sum
      j while

skipchar:
      addi $t9, $t9, 1 # increment byte addres by 1
      addi $t1, $t1, 1
      j while
      
sumnum:
      sub $s1, $s1, 48 # s1 = s1 - 48/ subtract 48 to get correct final sum val
      add $t0, $t0, $s1 # add val to $t5
      sub $s1, $s1, $s1 # set $s1 back to 0
      addi $t9, $t9, 1 # increment address for loop
      addi $t1, $t1, 1
      j while

sumCapitallet: 
      sub $s1, $s1, 55
      add $t0, $t0, $s1
      sub $s1, $s1, $s1
      addi $t9, $t9, 1 # increment address for loop
      addi $t1, $t1, 1 # increment loop break
      j while

sumlowlet:

      sub $s1, $s1, 87 # subtract 87 to get correct sum key value a = 10 so 'a'/97 - 87 = 10
      add $t0, $t0, $s1
      sub $s1, $s1, $s1
      addi $t9, $t9, 1 # increment address for loop
      addi $t1, $t1, 1 # increment loop break
      j while


exit:

      move $a0, $t0
      li $v0, 1
      syscall

      li $v0, 10
      syscall
        
      
