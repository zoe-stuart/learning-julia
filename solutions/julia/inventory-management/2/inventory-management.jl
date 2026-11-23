create_inventory(items) = add_items(Dict(), items)

function add_items(inventory, items)
    for i in items
        inventory[i] = haskey(inventory, i) ? inventory[i] + 1 : 1
    end
    inventory
end

function decrement_items(inventory, items)
    for i in items
        haskey(inventory, i) && (inventory[i] = max(0, inventory[i] - 1))
    end
    inventory
end

function remove_item(inventory, item)
    newinv = copy(inventory)
    delete!(newinv, item)
end

list_inventory(inventory) = sort([i for i in inventory if i.second > 0])
