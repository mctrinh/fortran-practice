program basic16_subroutine
    implicit none
    integer :: i = 1, p1, p2
    
    call plus_two(i, p1, p2)      ! call in the subroutine
    print "(i1,/, i1,/, i1)", i, p1, p2
    pause 
    
contains            ! start to define a function or subroutine
    
    subroutine plus_two(n, plus1, plus2)
        integer, intent(in) :: n                    ! input that take from outside world and cannot be changed
        integer, intent(out) :: plus1, plus2        ! outputs of the subroutine that will be computed and passed to the outside world
        plus1 = n + 1
        plus2 = n + 2
    end subroutine plus_two
    
    
end program basic16_subroutine