# If the hunt has already started today, prepare to detect the next day.
execute \
    if data storage wanted: { \
        isAllowedToday:0b \
    } \
    store result storage wanted: dayCountHolder int 1 \
    run time query day

# Success in "isAllowedToday" if current day is different from previous day.
execute \
    if data storage wanted: { \
        isAllowedToday:0b \
    } \
    store success storage wanted: isAllowedToday byte 1 \
    run \
        data modify storage wanted: dayCountMatching \
        set from storage wanted: dayCountHolder

# Result in "dayTime" the ticks of the current day.
execute \
    if data storage wanted: { \
        isAllowedToday:0b \
    } \
    store result storage wanted: dayTime short 1 \
    run time query daytime

# If day is about to end; run 1.1
execute \
    if data storage wanted: { \
        dayTime:23000s, \
        targetKilled:0b, \
        isAllowedToday:0b \
    } \
    run function wanted:1.1

# If day ended; run 1.2
execute \
    if data storage wanted: { \
        isAllowedToday:1b \
    } \
    if data storage wanted: targetKilled \
    run function wanted:1.2

# Warn recently joined player about the hunt
execute \
    as @a[ \
        scores={ \
            wanted.0=1 \
        } \
    ] \
    unless data storage \
        wanted: {targetKilled:1b} \
    run function wanted:4.4

# Display hunt roulette
execute \
    as @a[ \
        scores={ \
            wanted.0=2 \
        } \
    ] \
    run function wanted:4.1 \
        with storage wanted: