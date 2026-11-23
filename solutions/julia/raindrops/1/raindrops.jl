function raindrops(number)
    dict = (3 => "Pling", 5 => "Plang", 7 => "Plong")
    result = ""
    
    for (n, s) in dict
        if number%n  == 0
            result *= s
        end
    end
    
    result == "" ? string(number) : result
    
end
