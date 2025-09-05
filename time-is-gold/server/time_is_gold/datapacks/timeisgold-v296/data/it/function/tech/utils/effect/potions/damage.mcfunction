#darkness 21b
#damage
execute as @e[tag=monster,nbt={active_effects:[{id:"minecraft:darkness",amplifier:21b}]}] run damage @s 6 magic
execute as @e[tag=monster,nbt={active_effects:[{id:"minecraft:darkness",amplifier:21b}]}] run effect clear @s darkness
