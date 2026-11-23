function create_inventory(items)
    inventory = Dict()
    add_items(inventory, items)
end

function add_items(inventory, items)
    for i in items
        haskey(inventory, i) ? inventory[i] += 1 : inventory[i] = 1
    end
    inventory
end

function decrement_items(inventory, items)
    for i in items
        if haskey(inventory, i) && inventory[i] > 0
            inventory[i] -= 1
        end
    end
    inventory
end

function remove_item(inventory, item)
    newinv = copy(inventory)
    delete!(newinv, item)
end

function list_inventory(inventory)
    sort([(i => v) for (i, v) in inventory if v > 0])
end
