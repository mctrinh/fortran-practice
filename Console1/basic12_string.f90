program basic12_string
    implicit none
    character (len=30) :: str  = "I'm a string"
    character (len=30) :: str2 = " that is longer"
    character (len=30) :: str3
    
    str3 = trim(str) // trim(str2)      ! strim the white space off of the string; '//' to concatenate or join them
    print *, str3
    
    print *, str3(1:3)  ! print first three characters of str3
    print "(a9,i1)", "Index at ", index(str, "string")      ! find index of "string" within "str"
    print *, len(str)       ! this is the total length 'len=30', not the actual size without spaces
    
    pause
end program basic12_string