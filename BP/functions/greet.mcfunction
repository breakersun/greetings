# Send welcome message to all players
tellraw @a {"rawtext":[{"text":"Welcome to the server, "},{"selector":"@s"},"!"]}

# Set title times
titleraw @s times 20 200 20

# Display title and subtitle to all players
title @a title §6欢迎浩浩
title @a subtitle §1来到火车世界

# Play custom sound twice
playsound info1 @s
playsound info1 @s

# Apply regeneration effect
effect @s regeneration 10 1 true

# Set a tag to indicate this player has been greeted
tag @s add greeted
