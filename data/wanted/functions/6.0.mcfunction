#! This function needs to be executed "with storage"
$xp add @s $(difficultyReward)

$tellraw @a { \
    "translate": "death.attack.player", \
    "with": [ \
        { \
            "translate": "entity.minecraft.$(entityID)" \
        }, \
        { \
            "selector": "@s" \
        } \
    ] \
}

$title @s actionbar [ \
    { \
        "text":"$(difficultyReward) ", \
        "color":"dark_green" \
    }, \
    { \
        "translate":"subtitles.entity.experience_orb.pickup", \
        "color":"green" \
    } \
]

playsound minecraft:item.lodestone_compass.lock ambient @s ~ ~-99999 ~ 9999 0

data modify storage \
    wanted: targetKilled \
    set value 1b