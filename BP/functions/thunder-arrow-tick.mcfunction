# if arrow hit something, add arrow_hit score
execute as @e[type=arrow] at @s unless block ~0.1~~ air run scoreboard players add @s arrow_hit 1
execute as @e[type=arrow] at @s unless block ~~0.1~ air run scoreboard players add @s arrow_hit 1
execute as @e[type=arrow] at @s unless block ~~~0.1 air run scoreboard players add @s arrow_hit 1
execute as @e[type=arrow] at @s unless block ~-0.1~~ air run scoreboard players add @s arrow_hit 1
execute as @e[type=arrow] at @s unless block ~~-0.1~ air run scoreboard players add @s arrow_hit 1
execute as @e[type=arrow] at @s unless block ~~~-0.1 air run scoreboard players add @s arrow_hit 1

execute if score global thunder_switch matches 1 at @e[type=arrow, scores={arrow_hit=1..}] run summon lightning_bolt
execute if score global thunder_switch matches 1 run kill @e[type=arrow,scores={arrow_hit=1..}]
