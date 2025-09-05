execute as @s unless function monsters:tech/floor2/crystal_alchemyst/functions/target run return fail

execute as @s run scoreboard players add @s monsters.floor2.crystal_alchemyst.craft 1
execute as @s if score @s monsters.floor2.crystal_alchemyst.craft matches 50.. at @s run function monsters:tech/floor2/crystal_alchemyst/tracking_object_call
execute as @s if score @s monsters.floor2.crystal_alchemyst.craft matches 50.. run effect give @s slowness 2 200 true
execute as @s if score @s monsters.floor2.crystal_alchemyst.craft matches 50.. run scoreboard players reset @s monsters.floor2.crystal_alchemyst.craft