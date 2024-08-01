# Ensure scoreboard objective exists
scoreboard objectives add playerCheck dummy

# Increment score for all online players
scoreboard players add @a playerCheck 1

# Greet new players and players who have rejoined
execute as @a[scores={playerCheck=1},tag=!greeted] run function greet

# Reset scores for players who have been online for more than one tick
scoreboard players set @a[scores={playerCheck=2..}] playerCheck 0
