program basic9_guessing_game
    implicit none
    integer :: n = 0, m = 1
    integer :: secret_number = 7
    
    do while (n /= secret_number)
        print *, "What's your guess "
        read *, n
    end do
    print *, "You guessed it"
    
    pause
end program basic9_guessing_game
    