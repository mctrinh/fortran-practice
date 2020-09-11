program basic0
    implicit none           ! force you to declare all of your variables
    character*20 :: name
    print *, "What's your name "    ! not using ; to show it to the screen
    read *, name                    ! read input from keyboard, store in the string 'name'
    print *, "Hello ", name         ! print the Hello message, immediately close, can't see the message!
    pause                           ! use 'pause' to hold the result screen until hitting 'Enter'
    
end program basic0   