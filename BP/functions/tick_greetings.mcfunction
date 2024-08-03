# Check for new players and greet them
execute as @a[tag=!greeted] run function greet
tag @a[tag=!greeted] add greeted
