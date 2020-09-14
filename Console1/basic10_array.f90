program basic10_array
    implicit none
    integer, dimension(1:5) :: a1, a2, a3
    real, dimension(1:50) :: aR1
    integer, dimension(5,5) :: a4
    integer :: n, m, x, y
    integer, dimension(:), allocatable :: a5    ! arrays that size is determined at run time
    integer :: num_vals = 0
    integer, dimension(1:9) :: a6 = (/ 1,2,3,4,5,6,7,8,9 /)
    integer, dimension(1:3, 1:3) :: a7
    
    a1(1) = 5
    print "(i1)", a1(1)
    
    do n = 1,5
        a1(n) = n
    end do
    do n = 1,5
        print"(i1)", a1(n)
    end do
    
    print "(3i2)", a1(1:3)
    print "(2i2)", a1(1:3:2)        ! step is 2
    
    do n = 1,5
        do m = 1,5
            a4(n,m) = n
        end do
    end do
    
    do n = 1,5
        do m = 1,5
            print "(i1, a1, i1, a3, i1)", n, " ", m, " : ", a4(n,m)
        end do
    end do
    
    do n = 1,5
        print "(5i1)", (a4(n,m), m = 1,5)       ! an implied 'do' loop
    end do
    
    print "(i2)", size(a1)      ! 'size' give total number of values that are stored inside
    print "(i2)", size(a4)
    
    print "(i2)", rank(a4)      ! get the elements in each of the different dimensions
    print "(i2)", shape(a4)
    
    print *, "Size of array?"
    read *, num_vals
    allocate(a5(1:num_vals))
    
    do n = 1, num_vals
        a5(n) = n
    end do
    
    do n = 1, num_vals
        print "(i1)", a5(n)
    end do
    
    a2 = (/1,2,3,6,7/)      ! assign directly values to the array, assure to have enough space
    print "(5i1)", (a2(m), m = 1,5)     ! replace the 'do' loop
    a7 = reshape(a6, (/ 3, 3/))         ! reshape an array
    print "(l1)", all(a1 == a2, 1)      ! 'l' check with logical operator '==' for all elements in two arrays, '1' represent the 1st dimension we working with
    print "(l1)", any(a1 == a2, 1)      ! check any of them is equal
    print "(l1)", count(a1 == a2, 1)    ! the number that are equal
    print "(i1)", maxval(a1)            ! get minimum and maximum values 
    print "(i1)", minval(a1)
    print "(i3)", product(a1)           ! product of all a1 elements
    print "(i2)", sum(a1)               ! sum of all a1 elements
    
    pause
end program basic10_array