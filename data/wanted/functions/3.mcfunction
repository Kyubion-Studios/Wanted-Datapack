# Randomize
execute store result storage wanted: entityID short 1 run random value 0..27

# Entities
execute \
    if data storage wanted: { \
        entityID:0s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:30s,\
        entityID:"drowned"\
    }
    
execute \
    if data storage wanted: { \
        entityID:1s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:48s,\
        entityID:"enderman"\
    }
    
execute \
    if data storage wanted: { \
        entityID:2s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:41s,\
        entityID:"husk"\
    }
    
execute \
    if data storage wanted: { \
        entityID:3s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:42s,\
        entityID:"pillager"\
    }
    
execute \
    if data storage wanted: { \
        entityID:4s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:41s,\
        entityID:"stray"\
    }
    
execute \
    if data storage wanted: { \
        entityID:5s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:40s,\
        entityID:"witch"\
    }

execute \
    if data storage wanted: { \
        entityID:6s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:56s,\
        entityID:"blaze"\
    }
    
execute \
    if data storage wanted: { \
        entityID:7s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:40s,\
        entityID:"cave_spider"\
    }
    
execute \
    if data storage wanted: { \
        entityID:8s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:55s,\
        entityID:"endermite"\
    }
    
execute \
    if data storage wanted: { \
        entityID:9s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:40s,\
        entityID:"ghast"\
    }
    
execute \
    if data storage wanted: { \
        entityID:10s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:56s,\
        entityID:"guardian"\
    }
    
execute \
    if data storage wanted: { \
        entityID:11s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:53s,\
        entityID:"hoglin"\
    }
    
execute \
    if data storage wanted: { \
        entityID:12s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:23s,\
        entityID:"iron_golem"\
    }
    
execute \
    if data storage wanted: { \
        entityID:13s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:42s,\
        entityID:"magma_cube"\
    }
    
execute \
    if data storage wanted: { \
        entityID:14s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:43s,\
        entityID:"phantom"\
    }
    
execute \
    if data storage wanted: { \
        entityID:15s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:42s,\
        entityID:"silverfish"\
    }
    
execute \
    if data storage wanted: { \
        entityID:16s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:44s,\
        entityID:"slime"\
    }
    
execute \
    if data storage wanted: { \
        entityID:17s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:30s,\
        entityID:"snow_golem"\
    }
    
execute \
    if data storage wanted: { \
        entityID:18s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:57s,\
        entityID:"wither_skeleton"\
    }

execute \
    if data storage wanted: { \
        entityID:19s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:58s,\
        entityID:"elder_guardian"\
    }
    
execute \
    if data storage wanted: { \
        entityID:20s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:76s,\
        entityID:"evoker"\
    }
    
execute \
    if data storage wanted: { \
        entityID:21s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:78s,\
        entityID:"piglin_brute"\
    }
    
execute \
    if data storage wanted: { \
        entityID:22s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:77s,\
        entityID:"ravager"\
    }
    
execute \
    if data storage wanted: { \
        entityID:23s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:64s,\
        entityID:"shulker"\
    }
    
execute \
    if data storage wanted: { \
        entityID:24s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:73s,\
        entityID:"skeleton_horse"\
    }
    
execute \
    if data storage wanted: { \
        entityID:25s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:67s,\
        entityID:"vex"\
    }
    
execute \
    if data storage wanted: { \
        entityID:26s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:68s,\
        entityID:"vindicator"\
    }
    
execute \
    if data storage wanted: { \
        entityID:27s \
    } \
    run data merge storage \
    wanted: {\
        difficultyReward:69s,\
        entityID:"zoglin"\
    }
     
# Set
data \
    modify storage \
        wanted: isAllowedToday \
    set value 0b
    
data \
    modify storage \
        wanted: targetKilled \
    set value 0b

# Prepare to execute next function (4)
scoreboard \
    players set \
        @a wanted.0 1

execute \
    as @a \
    run function wanted:4.0 \
        with storage wanted: