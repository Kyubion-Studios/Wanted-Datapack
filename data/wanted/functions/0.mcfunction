# Set "isAllowedToday" to 0b on first load
execute \
    unless data storage \
        wanted: isAllowedToday \
    run data \
        modify storage \
            wanted: isAllowedToday \
        set value 1b

# Add scoreboard for alerting new player about the hunt
scoreboard objectives add wanted.0 custom:leave_game

# 
execute \
    store result storage \
        wanted: dayCountMatching int 1 \
    run time query day