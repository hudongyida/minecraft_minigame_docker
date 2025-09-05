$summon marker ~ ~ ~ {Tags:["admin.kill_on_reset","drone_carrier.target","drone_carrier.target_init"],data:{id:$(id)}}
$execute as @n[type=marker,tag=drone_carrier.target_init,distance=..1] run scoreboard players set @s monsters.floor1.drone_carrier.id $(id)

data modify storage timeisgold:function_api stack append value {targetuuid:0, output:monsters.floor1.drone.distance, duration:0, clock_r:0, clock_g:0.95, clock_b:0.1, distance:2, radius:1}
function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output
execute as @n[type=marker,tag=drone_carrier.target_init,distance=..1] at @s run function monsters:tech/floor1/drone_carrier/functions/alert/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute as @n[type=marker,tag=drone_carrier.target_init,distance=..1] run tag @s remove drone_carrier.target_init