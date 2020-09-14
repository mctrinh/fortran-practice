program basic15_module
    use mult_mod
    ! try to create a module
    ! create a new file, called it 'mult_mod.f90'
    ! then use that module within this code
    implicit none
    real :: r_ans
    
    print "(a8,i2)", "5 * 4 = ", mult(5,4)
    r_ans = mult(5.3,4.4)
    print "(a12,f6.2)", "5.3 * 4.4 = ", r_ans
    
    pause
end program basic15_module
