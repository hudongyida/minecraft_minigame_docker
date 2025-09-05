execute store result score #Temp item.iron_fist.shockwave_randomizer1 run random value 1..100
execute store result score #Temp item.iron_fist.shockwave_randomizer2 run random value 15..55

data modify storage timeisgold:function_api stack append value {blockid:"stone", motion:0}

execute if score #Temp item.iron_fist.shockwave_randomizer1 matches ..10 run data modify storage timeisgold:function_api stack[-1].blockid set value "andesite"
execute if score #Temp item.iron_fist.shockwave_randomizer1 matches 11..20 run data modify storage timeisgold:function_api stack[-1].blockid set value "gravel"
execute if score #Temp item.iron_fist.shockwave_randomizer1 matches 21..40 run data modify storage timeisgold:function_api stack[-1].blockid set value "tuff"
execute if score #Temp item.iron_fist.shockwave_randomizer1 matches 41.. run data modify storage timeisgold:function_api stack[-1].blockid set value "stone"

execute store result storage timeisgold:function_api stack[-1].motion double 1.0 run scoreboard players get #Temp item.iron_fist.shockwave_randomizer2
execute positioned ~ ~ ~ run function it:tech/melee/iron_fist/shockwave_summon_block with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]