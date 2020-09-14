program basic8_looping
    implicit none
    integer :: n = 0, m = 1
    integer :: select_num = 7
    
    do n = 1, 10, 2     ! start, end, increment
        print "(i1)", n
    end do
    
    do while (m < 20)
        if(mod(m,2) == 0) then
            print "(i1)", m
            m = m + 1
            cycle       ! if want to jump back to the begining of 'do while ...' loop, serve as 'continue' in many programing languages
        end if
        m = m + 1
        if (m >= 10) then
            exit
        end if
    end do
    
    pause
end program basic8_looping