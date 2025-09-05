data modify storage timeisgold:function_api stack append value {value:0}
$execute store result storage timeisgold:function_api stack[-1].value int 1 run scoreboard players get @n[scores={playerid=$(playerid)}] item.time_supply.damage_stored
function system:time/reward/direct_add with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 2

# VFX
execute at @s run particle totem_of_undying ~ ~1 ~ 0.25 0.5 0.25 0.1 15 force

$tag @s add item.time_supply.target.$(playerid)