program basic11_format
    implicit none
    integer :: num, cups
    real :: liters, quarts
    
    do num = 1,12
        print 100, num, num * 7     ! '100' is a label
100     format(i2, ' * 7 = ', i3)
    end do
    
    print "(/a18)", "Cups Liters Quarts"     ! string starts with newline character '/'
    do cups = 1,10
        liters = cups * .236
        quarts = cups * .208
        print 200, cups, liters, quarts
200     format(' ', i3, 2x, f5.3, 2x, f5.3)     ! '2x' give 02 spaces
    end do
    
    pause
end program basic11_format