module mult_mod
    implicit none
    private             ! define private variables, can only accessed inside of this module itself
    public :: mult      ! 'mult' is going to be public, it can be accessed from anywhere in your code
    
    ! define 2 functions that we will associate with the one singular mult function we're gonna create
    interface mult
        procedure mult_real, mult_int       ! define two functions
    end interface mult
    
contains
    function mult_real(n1,n2) result(product)   ! by use 'result(product)', we define both output and output type of the function
        real, intent(in) :: n1, n2      
        ! intent(in) means taht varuable can only take value/input from outside world and cannot be changed;
        ! intent(out) does not receive any value from the outside but indicating that the values will be computed and passed to the outside world.
        real :: product
        product = n1 * n2
    end function mult_real
    
    function mult_int(n1,n2) result(product)
        integer, intent(in) :: n1, n2      
        integer :: product
        product = n1 * n2
    end function mult_int
    
end module mult_mod