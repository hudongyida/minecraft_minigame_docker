execute as @e[type=marker,tag=item.spirit_retriever.marker.spirit_data] on vehicle if entity @s[nbt={Health:0f}] on passengers run function it:tech/melee/spirit_retriever/kill_target with entity @s data
execute as @e[type=marker,tag=item.spirit_retriever.marker.spirit_data] run function it:tech/melee/spirit_retriever/vfx/init with entity @s data

execute as @e[tag=monster,scores={item.spirit_retriever.active_tick=1..}] run scoreboard players remove @s item.spirit_retriever.active_tick 1
execute as @e[tag=monster,scores={item.spirit_retriever.active_tick=1}] run function it:tech/melee/spirit_retriever/remove_tether