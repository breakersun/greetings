scoreboard objectives add thunder_switch dummy
scoreboard objectives add arrow_hit dummy
scoreboard players set global thunder_switch 1
tellraw @a {"rawtext":[{"text":"Thunder Arrow activated!"}]}
