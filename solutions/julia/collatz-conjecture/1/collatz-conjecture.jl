function collatz_steps(n)
    count = 0
    n < 1 ? throw(DomainError(n, "argument must be non-negative")) : 
    while n > 1
        count += 1
        n%2 == 0 ? n /= 2 : n = 3n + 1
    end
    count
end
