execute as @s on target if entity @s[predicate=system:player] run return 1
data remove entity @s interaction
return fail