execute if entity @s[tag=!monster] run return fail
execute store result score @s monsters.global.monster_damage.value run data get storage timeisgold:function_api stack[-1].value 10
scoreboard players operation @s monsters.global.monster_damage.value *= @s combat.sink.total_multiplier
scoreboard players operation @s monsters.global.monster_damage.value /= #100 scoreboardConstant
execute store result storage timeisgold:function_api stack[-1].value double 0.1 run scoreboard players get @s monsters.global.monster_damage.value