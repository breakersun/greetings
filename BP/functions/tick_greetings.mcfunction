# scoreboard players add @a online 1
# scoreboard players add .total online 1
# scoreboard players operation @a online -= .total online
# execute as @a[scores={online=..-1}] run function greet
# scoreboard players operation @a online = .total online

scoreboard objectives add online dummy

# Increment scores
scoreboard players add @a online 1
scoreboard players add .total online 1

# Display current scores
tellraw @a {"rawtext":[{"text":"Total score: "},{"score":{"name":".total","objective":"online"}}]}
execute as @a run tellraw @a {"rawtext":[{"selector":"@s"},{"text":" score before subtraction: "},{"score":{"name":"@s","objective":"online"}}]}

# Perform subtraction
scoreboard players operation @a online -= .total online

# Display scores after subtraction
execute as @a run tellraw @a {"rawtext":[{"selector":"@s"},{"text":" score after subtraction: "},{"score":{"name":"@s","objective":"online"}}]}

# Attempt to call greet function and report result
execute as @a[scores={online=..-1}] run tellraw @a {"rawtext":[{"text":"Greet function would run for "},{"selector":"@s"}]}
execute as @a unless score @s online matches ..-1 run tellraw @a {"rawtext":[{"text":"Greet function would NOT run for "},{"selector":"@s"}]}

# Reset scores
scoreboard players operation @a online = .total online
