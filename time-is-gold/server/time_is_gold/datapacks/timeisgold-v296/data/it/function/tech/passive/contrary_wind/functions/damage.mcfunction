$execute at @s as @e[tag=monster,distance=..8] run function system:combat/modified_damage/magic/init {playerid:$(playerid),knockback:1,value:2d}
particle minecraft:tinted_leaves{color:65365} ~ ~ ~ 0.25 0.5 0.25 1 4 force
kill @s