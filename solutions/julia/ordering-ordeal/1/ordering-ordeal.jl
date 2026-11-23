function sortquantity!(qty)
    order = sortperm(qty, rev=true)
    sort!(qty, rev=true)
    order
end

function sortcustomer(cust, srtperm)
    new = []
    for s in srtperm
        push!(new, cust[s])
    end
    new
end

function production_schedule!(cust, qty)
    #store the inverse permutation
    inv = invperm(sortperm(qty, rev=true))
    #sort the quantities in-place in descending order
    #return a vector of customers sorted in the same order and the stored invperm
    return (sortcustomer(cust, sortquantity!(qty)), inv)
end
