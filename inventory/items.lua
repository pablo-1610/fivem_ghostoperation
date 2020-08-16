return {
    [ITEM_ID.HEALTH] = function()
        return {
            id = ITEM_ID.HEALTH,
            type = ITEM_TYPE.USABLE,
            label = "Bandage",
            description = "Permet de vous soigner rapidement",
            weight = 500,
            arg = {
                food = 40
            },
            action = easyRp.itemsAction.eat,
            consumable = true,
            illegal = false,
            price = 1
        }
    end,
}