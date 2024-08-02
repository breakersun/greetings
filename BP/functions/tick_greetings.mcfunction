# scoreboard players add @a online 1
# scoreboard players add .total online 1
# scoreboard players operation @a online -= .total online
# execute as @a[scores={online=..-1}] run function greet
# scoreboard players operation @a online = .total online

scoreboard objectives add online dummy
scoreboard objectives add hasJoined dummy

# Increment total score
scoreboard players add .total online 1

# For players who haven't been processed yet
execute as @a[scores={hasJoined=0}] run function greet
execute as @a[scores={hasJoined=0}] run scoreboard players operation @s online = .total online
execute as @a[scores={hasJoined=0}] run scoreboard players set @s hasJoined 1

# For returning players (those whose online score doesn't match .total)
execute as @a unless score @s online = .total online run function greet
execute as @a unless score @s online = .total online run scoreboard players operation @s online = .total online

# Debug output
tellraw @a {"rawtext":[{"text":"Total score: "},{"score":{"name":".total","objective":"online"}}]}
execute as @a run tellraw @a {"rawtext":[{"selector":"@s"},{"text":" online score: "},{"score":{"name":"@s","objective":"online"}},{"text":", hasJoined: "},{"score":{"name":"@s","objective":"hasJoined"}}]}
