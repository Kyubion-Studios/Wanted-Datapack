# Display hunt roulette
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
        "color":"yellow",\
        "obfuscated":true \
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
        "color":"dark_green", \
        "obfuscated":true \
    } \
]