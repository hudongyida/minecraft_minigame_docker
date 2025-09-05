execute if score @s monsters.floor2.mutant_specimen.ability_check matches 1.. run return fail
execute at @s unless entity @p[predicate=system:player,distance=..5] run return fail

scoreboard players set @s monsters.floor2.mutant_specimen.ability_check 1
scoreboard players set @s monsters.floor2.mutant_specimen.cooldown 123456789

data modify entity @s Motion[1] set value 0.6

# SFX
execute at @s run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 2 0.5