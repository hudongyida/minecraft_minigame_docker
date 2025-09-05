execute as @s unless score @s item.necro_transformer.charge matches 1.. run return run function it:tech/utils/notify/init {function:"it:tech/utils/laser_cannon/notify/not_enough_charge"}
scoreboard players remove @s item.necro_transformer.charge 1

execute as @s at @s run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 2 0
execute as @s at @s run playsound block.vault.break block @a ~ ~ ~ 1 0 0
execute as @s at @s run playsound block.glass.break block @a ~ ~ ~ 1 1.5 0

data modify storage timeisgold:function_api stack append value {type:ranged, path:necro_transformer, initfunction:blast, tickfunction:tick, hitfunction:hit, endfunction:none,\
                                                                    playerid:0, speed:0.25, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:200}
execute as @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute at @s anchored eyes positioned ^ ^ ^1 run function it:tech/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]