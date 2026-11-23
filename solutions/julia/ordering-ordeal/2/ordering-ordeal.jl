function sortquantity!(qty)
    order = sortperm(qty, rev=true)
    sort!(qty, rev=true)
    order
end

function sortcustomer(cust, srtperm)
    cust[srtperm]
end

function production_schedule!(cust, qty)  
    s = sortperm(qty, rev=true)
    return (sortcustomer(cust, sortquantity!(qty)), invperm(s))
end
