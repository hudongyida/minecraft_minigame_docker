# particle
particle instant_effect ~ ~ ~ 0 0 0 0 1 force
particle minecraft:dust_color_transition{from_color:[0.300,0.000,0.300],scale:2,to_color:[0.500,0.010,0.300]} ~ ~ ~ .3 .3 .3 0.05 0 force

# marker
execute as @s if score @s item.energy_blaster.marker_delay matches 5 run summon minecraft:marker ~ ~ ~ {Tags:["item.energy_blaster.marker","item.energy_blaster.marker--init"]}
execute as @s if score @s item.energy_blaster.marker_delay matches 1..5 run scoreboard players remove @s item.energy_blaster.marker_delay 1
execute as @s if score @s item.energy_blaster.marker_delay matches 0 run scoreboard players set @s item.energy_blaster.marker_delay 5

$execute as @n[type=marker,tag=item.energy_blaster.marker--init] run data modify entity @s data set value {playerid:$(playerid), value:12d, knockback:1}
execute as @n[type=marker,tag=item.energy_blaster.marker--init] run tag @s remove item.energy_blaster.marker--init