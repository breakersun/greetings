# scoreboard players add @a online 1
# scoreboard players add bot online 1
# scoreboard players operation @a online -= bot online
# execute as @a[scores={online=..-1}] run say I relogged!
# scoreboard players operation @a online = bot online

# Ensure the scoreboard objective exists
scoreboard objectives add online dummy

# Increment scores
scoreboard players add @a online 1
scoreboard players add bot online 1

# Debug print before subtraction
tellraw @a {"rawtext":[{"text":"Before subtraction - Bot score: "},{"score":{"name":"bot","objective":"online"}}]}
execute as @a run tellraw @a {"rawtext":[{"selector":"@s"},{"text":" score before: "},{"score":{"name":"@s","objective":"online"}}]}

# Perform subtraction
scoreboard players operation @a online -= bot online

# Debug print after subtraction
execute as @a run tellraw @a {"rawtext":[{"selector":"@s"},{"text":" score after: "},{"score":{"name":"@s","objective":"online"}}]}

# Check for relogged players
execute as @a[scores={online=..-1}] run say I relogged!

# Reset player scores
scoreboard players operation @a online = bot online

# Debug print after reset
tellraw @a {"rawtext":[{"text":"After reset - Bot score: "},{"score":{"name":"bot","objective":"online"}}]}
execute as @a run tellraw @a {"rawtext":[{"selector":"@s"},{"text":" final score: "},{"score":{"name":"@s","objective":"online"}}]}
