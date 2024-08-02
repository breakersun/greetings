# Send welcome message to all players
tellraw @a {"rawtext":[{"text":"Welcome to the server, "},{"selector":"@s"},{"text":"!"}]}

# Set title times
titleraw @a times 20 200 20

# Display title and subtitle to all players
title @a title §6欢迎浩浩
title @a subtitle §1来到火车世界

# Play custom sound twice
playsound info1 @a

# Apply regeneration effect
effect @a regeneration 10 1 true
