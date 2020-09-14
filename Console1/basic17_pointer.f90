program basic17_pointer
    implicit none
    integer, pointer :: ptr1, ptr2
    
    integer, pointer, dimension(:) :: a_ptr1
    
    integer, target :: target1          ! declare a target whose value is gonna change as the pointers value changes
    allocate(ptr1)
    ptr1 = 5
    print "(a5,i1)", "ptr1 ", ptr1
    ptr2 => target1                     ! associate our pointer with our target, target1 has been tied in with ptr2
    ptr2 = 1
    ptr2 = ptr2 + 2             ! the changed pointer is automatically updated for our target
    print "(a5,i1)", "ptr1 ", ptr1
    print "(a5,i1)", "tar1 ", target1
    nullify(ptr2)           ! disassociate a pointer and a target
    deallocate(ptr1)        ! deallocate storage for our pointer whenever we dont need it
    
    pause
end program basic17_pointer
    