$execute as @n[type=armor_stand,tag=bosses.the_shaman.pattern3.chalice.type3.armor_stand.orb.$(selfuuid),distance=..3] at @s run function bosses:tech/the_shaman/pattern3/type3/vfx/orb_vfx
execute positioned ~ ~ ~ run particle minecraft:enchant ~ ~ ~ 0.2 0.3 0.2 1 2 force

scoreboard players operation @s bosses.the_shaman.pattern3.chalice.area_display_tick = @s bosses.the_shaman.pattern3.chalice.destroy_tick
scoreboard players operation @s bosses.the_shaman.pattern3.chalice.area_display_tick %= #15 scoreboardConstant
execute if score @s bosses.the_shaman.pattern3.chalice.area_display_tick matches 0 at @s run function system:vfx/expand_circle/init {range:6, step:5, R:0.66, G:0.1, B:0.1}