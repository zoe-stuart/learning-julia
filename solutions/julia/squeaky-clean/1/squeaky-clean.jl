function transform(ch)
    ch == '-' ? string('_') : 
    ch == ' ' ? string("") : 
    isuppercase(ch) ? string("-$(lowercase(ch))") : 
    isdigit(ch) ? string("") : 
    ch in 'α':'ω' ? string("?") : string(ch)
end

function clean(str)
    result = ""
    for c in str
        result *= transform(c)
    end
    result
end
