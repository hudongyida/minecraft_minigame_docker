$data modify storage timeisgold:function_api stack append value {sink:0, playerid:$(playerid)}
execute store result storage timeisgold:function_api stack[-1].sink int 1 run scoreboard players get @s combat.sink
execute as @s run function it:tech/melee/anti_ego_extractor/monster_attack/apply with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]
scoreboard players reset @s combat.sink
function it:tech/utils/effect/stun/init {value:10}

# VFX
execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:trial_omen ~ ~ ~ 0 0 0 1 10 force
execute at @s run particle minecraft:glow ~ ~1 ~ 0.3 0.5 0.3 0.05 10 force
execute at @s run particle minecraft:dust_color_transition{from_color:[0.000,0.000,1.000],scale:1,to_color:[0.100,0.050,1.000]} ~ ~1 ~ 0.3 0.5 0.3 0.5 20 force
execute at @s run playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1 2