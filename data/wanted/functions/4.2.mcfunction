# Display reminder
execute \
    as @a[\
        nbt={\
            Inventory:[\
                {\
                    Slot:-106b, \
                    id: "minecraft:compass"\
                }\
            ]\
        },\
        scores={\
            wanted.0=0\
        }\
    ] \
    unless data storage \
        wanted: {targetKilled:1b} \
    run function wanted:4.5 \
        with storage wanted:

execute \
    as @a[\
        nbt={\
            Inventory:[\
                {\
                    Slot:-106b, \
                    id: "minecraft:compass"\
                }\
            ]\
        }\
    ] \
    if data storage \
        wanted: {isAllowedToday:1b} \
    run title @s actionbar { \
        "translate":"argument.entity.notfound.entity"\
    }

execute \
    as @a[\
        nbt={\
            Inventory:[\
                {\
                    Slot:-106b, \
                    id: "minecraft:compass"\
                }\
            ]\
        }\
    ] \
    if data storage \
        wanted: {targetKilled:1b} \
    run title @s actionbar { \
        "translate":"argument.entity.notfound.entity"\
    }