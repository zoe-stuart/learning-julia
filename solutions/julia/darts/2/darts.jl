function score(x, y)
    radius = hypot(x, y)
    return radius ≤ 1 ? 10 :
           radius ≤ 5 ? 5 :
           radius ≤ 10 ? 1 : 0
end
