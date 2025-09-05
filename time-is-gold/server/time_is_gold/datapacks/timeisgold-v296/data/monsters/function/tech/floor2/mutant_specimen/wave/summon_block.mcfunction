execute store result score @s monsters.floor2.mutant_specimen.block_wave.randomizer run random value 1..100

data modify storage timeisgold:function_api stack append value {blockname:"lime_concrete", motion:0.25d}
execute if score @s monsters.floor2.mutant_specimen.block_wave.randomizer matches ..10 run data modify storage timeisgold:function_api stack[-1].blockname set value "lime_wool"
execute if score @s monsters.floor2.mutant_specimen.block_wave.randomizer matches 11..20 run data modify storage timeisgold:function_api stack[-1].blockname set value "lime_concrete_powder"
execute if score @s monsters.floor2.mutant_specimen.block_wave.randomizer matches 21..40 run data modify storage timeisgold:function_api stack[-1].blockname set value "lime_terracotta"

execute store result score @s monsters.floor2.mutant_specimen.block_wave.randomizer run random value 15..35
execute store result storage timeisgold:function_api stack[-1].motion double 0.01 run scoreboard players get @s monsters.floor2.mutant_specimen.block_wave.randomizer

execute positioned ~ ~ ~ run function monsters:tech/floor2/mutant_specimen/wave/place_block with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]