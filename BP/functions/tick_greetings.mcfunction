scoreboard players add @a online 1
scoreboard players add .total online 1
scoreboard players operation @a online -= .total online
execute as @a[scores={online=..-1}] run function greet
scoreboard players operation @a online = .total online
