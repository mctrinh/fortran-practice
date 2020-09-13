program basic3_data_format
    implicit none
    character(len=5) :: i_char
    
    print *, "A number ", 10 
    
    ! RiW: 'R' represent the number of times to use what follows per line; 'i' means integer; 'W' define the width to take up for each value
    print "(3i5)", 7, 6, 8
    print "(i5)", 7, 6, 8
    
    ! RfW.D: 'f' means float; 'D' the number of decimal places that you would like to output
    print "(2f8.5)", 3.1415, 1.234
    
    print "(/, 2a8)", "Name", "Age"             ! / newline character, 'a' stands for string
    print "(/, e10.3)", 123.456                 ! exponential
    print "(/, a5, i2)", "I am ", 43
    
    write (i_char, "(i5)") 10                   ! i_char must be defined at the beginning of the program, not in the executable section
    print "(a,a)", "A number ", adjustl(i_char)
    
    
    pause
end program basic3_data_format