program basic19_example
    use shape               ! create and use one module called 'shape'
    implicit none
    
    call set_shape(10.5, 20.5)
    call get_area()
    
    
    pause
end program basic19_example