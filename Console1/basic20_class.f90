program basic20_class
    use shape_mod
    use triangle_mod
    implicit none
    
    type(triangle_m) :: tri
    tri%x = 10
    tri%y = 20
    print "(a3,f5.2)", "X: ", tri%x
    print "(a3,f5.2)", "Y: ", tri%y
    print "(a6,f6.2)", "Area: ", tri%get_area()
    
end program basic20_class