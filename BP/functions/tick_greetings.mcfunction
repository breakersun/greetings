# scoreboard players add @a online 1
# scoreboard players add .total online 1
# scoreboard players operation @a online -= .total online
# execute as @a[scores={online=..-1}] run function greet
# scoreboard players operation @a online = .total online

scoreboard objectives add online dummy

# Test player score increment
scoreboard players add @a online 1
tellraw @a {"rawtext":[{"text":"Player scores incremented"}]}

# Test total score increment
scoreboard players add .total online 1
tellraw @a {"rawtext":[{"text":"Total score incremented"}]}

# Test score comparison
scoreboard players operation @a online -= .total online
tellraw @a {"rawtext":[{"text":"Scores compared"}]}

# Test greet function execution
execute as @a[scores={online=..-1}] run tellraw @a {"rawtext":[{"text":"Greet function would run for "}, {"selector":"@s"}]}

# Test score reset
scoreboard players operation @a online = .total online
tellraw @a {"rawtext":[{"text":"Scores reset"}]}
