execute as @e[type=marker,tag=item.omega_earth.marker.sword] run scoreboard players remove @s item.omega_earth.sword_tick 1
execute as @e[type=marker,tag=item.omega_earth.marker.sword] if score @s item.omega_earth.sword_tick matches 1 run function it:tech/melee/omega_earth/apply_damage with entity @s data

execute as @e[type=item_display,tag=item.omega_earth.sword_display] at @s unless score @s item.omega_earth.display_remove_tick matches 1.. run tp @s ~ ~-2 ~
execute as @e[type=item_display,tag=item.omega_earth.sword_display] if score @s item.omega_earth.display_remove_tick matches 2.. run scoreboard players remove @s item.omega_earth.display_remove_tick 1
execute as @e[type=item_display,tag=item.omega_earth.sword_display] if score @s item.omega_earth.display_remove_tick matches 1 run kill @s