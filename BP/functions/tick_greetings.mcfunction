# scoreboard players add @a online 1
# scoreboard players add .total online 1
# scoreboard players operation @a online -= .total online
# execute as @a[scores={online=..-1}] run function greet
# scoreboard players operation @a online = .total online

scoreboard objectives add online dummy

scoreboard players add @a online 1
scoreboard players add .total online 1
tellraw @a {"rawtext":[{"text":"Scores before comparison: "}, {"score":{"name":".total","objective":"online"}}]}

scoreboard players operation @a online -= .total online

execute as @a run tellraw @a {"rawtext":[{"selector":"@s"},{"text":" score: "},{"score":{"name":"@s","objective":"online"}}]}

execute as @a[scores={online=..-1}] run function greet

scoreboard players operation @a online = .total online
