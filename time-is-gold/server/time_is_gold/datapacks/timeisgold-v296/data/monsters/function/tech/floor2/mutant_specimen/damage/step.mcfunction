# 실행 인자: @e[type=marker,tag=mutant_specimen.marker.damage]

data modify storage timeisgold:function_api stack append value {inner_radius:0.0d, outer_radius:0.0d, monsteruuid:""}
data modify storage timeisgold:function_api stack[-1].monsteruuid set from entity @s data.monsteruuid

scoreboard players set @s monsters.floor2.mutant_specimen.wave.radius 10
scoreboard players operation @s monsters.floor2.mutant_specimen.wave.radius -= @s monsters.floor2.mutant_specimen.wave.tick

execute store result storage timeisgold:function_api stack[-1].inner_radius double 0.6 run scoreboard players get @s monsters.floor2.mutant_specimen.wave.radius
scoreboard players add @s monsters.floor2.mutant_specimen.wave.radius 1
execute store result storage timeisgold:function_api stack[-1].outer_radius double 0.6 run scoreboard players get @s monsters.floor2.mutant_specimen.wave.radius

execute at @s run function monsters:tech/floor2/mutant_specimen/damage/apply with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]

execute if score @s monsters.floor2.mutant_specimen.wave.tick matches 1.. run scoreboard players remove @s monsters.floor2.mutant_specimen.wave.tick 1
execute unless score @s monsters.floor2.mutant_specimen.wave.tick matches 1.. run kill @s