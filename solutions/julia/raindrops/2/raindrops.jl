function raindrops(number)
    dict = (3 => "Pling", 5 => "Plang", 7 => "Plong")
    result = ""
    
    for (n, s) in dict
        (number%n == 0) && (result *= s)
    end
    
    result == "" ? string(number) : result
    
end
