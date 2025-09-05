scoreboard players set @s item.uranium_ingot.tick 1800

# SFX
execute at @s run playsound minecraft:entity.generic.burn player @s ~ ~ ~ 0.5 2

# VFX
execute at @s run particle dust_color_transition{from_color:14210048,to_color:6154496,scale:1} ~ ~1 ~ 0.25 0.5 0.25 1 24

advancement revoke @s only it:expendables/uranium_ingot_consume