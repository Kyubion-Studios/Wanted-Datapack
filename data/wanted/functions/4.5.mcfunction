# Display (2)
$title @s actionbar [ \
    { \
        "translate":"block.minecraft.target", \
        "color":"gold" \
    }, \
    { \
        "text":": ", \
        "color":"white" \
    }, \
    { \
        "translate":"entity.minecraft.$(entityID)", \
        "color":"yellow" \
    }, \
    { \
        "text":" - ", \
        "color":"dark_gray" \
    }, \
    { \
        "translate":"subtitles.entity.experience_orb.pickup", \
        "color":"green" \
    }, \
    { \
        "text":": ", \
        "color":"white" \
    }, \
    { \
        "text":"$(difficultyReward) ", \
        "color":"dark_green" \
    } \
]