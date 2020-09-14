module shape_mod
    implicit none
    type, abstract :: shape_m
        real :: x, y
        
    contains
        procedure(shape_area), deferred :: get_area        ! deferred means it will be defined in all of our subtypes
    end type shape_m
    
    ! we want to return the defined area for each shape and subclass
    interface
        function shape_area(this)  result(area)
            import :: shape_m
            class(shape_m) :: this
            real :: area
        end function shape_area
    end interface
end module shape_mod
    