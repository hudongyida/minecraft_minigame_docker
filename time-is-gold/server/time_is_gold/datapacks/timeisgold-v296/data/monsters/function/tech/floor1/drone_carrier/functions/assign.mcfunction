scoreboard players operation @s monsters.floor1.drone_carrier.summonize_tick = #SYSTEM monsters.floor1.drone_carrier.summonize_tick
scoreboard players remove @s monsters.floor1.drone_carrier.max_drone 1

data modify storage timeisgold:function_api stack append value {id:0}
execute store result storage timeisgold:function_api stack[-1].id int 1 run random value 0..123456789
function monsters:tech/floor1/drone_carrier/functions/summon with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute positioned ~ ~2 ~ run playsound block.lava.extinguish block @a ~ ~ ~ 0.6 0.5 0
execute positioned ~ ~2 ~ run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force