execute as @e[scores={item.neurotoxin.fragility_tick=1..}] run scoreboard players remove @s item.neurotoxin.fragility_tick 1

execute as @e[tag=monster] if predicate it:expendables/neurotoxin_effect run tag @s add item.neurotoxin.target

execute as @e[tag=monster,tag=item.neurotoxin.target] run effect clear @s darkness
execute as @e[tag=monster,tag=item.neurotoxin.target] run effect give @s poison 10 1
execute as @e[tag=monster,tag=item.neurotoxin.target] run scoreboard players set @s item.neurotoxin.fragility_tick 200

execute as @e[tag=monster,tag=item.neurotoxin.target] run tag @s remove item.neurotoxin.target