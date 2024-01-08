# Avoid showing the display if the hunt has not started
execute \
    if data storage wanted: { \
            targetKilled:1b, \
            isAllowedToday:1b \
        } \
    run return 0
    
# Avoid function tick-looping
scoreboard players set @s wanted.0 2

# Display (0)
execute \
    as @a[ \
        scores={ \
            wanted.0=2 \
        } \
    ] \
    at @s \
    run playsound minecraft:music_disc.cat master @s ~ ~-9999 ~ 99999 2

# Schedule next Function (4.1)
schedule function wanted:4.3 75t