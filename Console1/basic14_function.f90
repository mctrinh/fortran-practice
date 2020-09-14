program basic14_function
    implicit none
    integer :: ans, ans2
    real :: r_ans
    
    ans = get_sum(5,4)
    print "(a8,i1)", "5 + 4 = ", ans
    print "(a8,i1)", "5 + 4 = ", get_sum2(5,4)
    print "(a8,i1)", "5 + 4 = ", get_sum3(5)        ! not passed n2 value inside of the function
    ans = factorial(4)
    print "(a15,i3)", "factorial(4) = ", ans
    pause
    
contains        ! to start define a function
    function get_sum(n1,n2) result(sum)     ! result() to define the name of the variable that is going to be returned
        implicit none
        integer :: n1, n2, sum
        sum = n1 + n2
    end function get_sum
    
    function get_sum2(n1, n2) result(sum)
        implicit none
        integer, intent(in) :: n1, n2
        integer :: sum
        sum = n1 + n2
    end function get_sum2
    
    pure function get_sum3(n1, n2) result(sum)   ! block function from changing input variables
        implicit none
        integer, intent(in) :: n1
        integer, intent(in), optional :: n2     ! arguments dont need to have a value passed, and if you want to protect from the user not sending everything in
        integer :: sum
        if(present(n2)) then        ! check whether the value has been assigned
            sum = n1 + n2
        else
            sum = n1 + 1
        end if
    end function get_sum3
    
    ! able to use recursive functions
    recursive function factorial(n) result(o)
        integer :: n, o
        if (n == 1) then
            o = 1
        else
            o = n * factorial(n - 1)
        end if
    end function factorial
    ! how does factorial(4) work?
    ! 1st: result = 4 * factorial(3) = 4 * 6 = 24
    ! 2nd: result = 3 * factorial(2) = 3 * 2 = 6
    ! 3rd: result = 2 * factorial(1) = 2 * 1 = 2
    
    
end program basic14_function