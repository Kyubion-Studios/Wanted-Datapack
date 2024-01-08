# Display
execute \
    at @s \
    run playsound minecraft:block.bell.use master @s ~ ~-9999 ~ 99999 2

stopsound @s \
    master minecraft:music_disc.cat

# Reset hunt warning
scoreboard players set @a wanted.0 0

# Next Function (5)
function wanted:4.5 \
    with storage wanted: