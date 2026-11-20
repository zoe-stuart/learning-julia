const default_time = 2.5
const times = Dict("Pure Strawberry Joy" => 0.5, "Energizer" => 1.5, "Green Garden" => 1.5, "Tropical Island" => 3.0, "All or Nothing" => 5.0)
const wedges = Dict("small" => 6, "medium" => 8, "large" => 10)

time_to_mix_juice(juice) = get(times, juice, default_time)

function limes_to_cut(needed, limes)
    w = 0
    count = 0
    while w < needed && length(limes) > 0
        w += get(wedges, popfirst!(limes), 0)
        count += 1
    end
    count
end

function order_times(orders)
    total = []
    for o in orders
        push!(total, time_to_mix_juice(o))
    end
    total
end

function remaining_orders(time_left, orders)
    while time_left > 0 && length(orders) > 0
        time_left -= time_to_mix_juice(popfirst!(orders))
    end
    orders
end
