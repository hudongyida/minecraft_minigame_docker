# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern3.chalice.type3.marker]

execute as @s at @s run function bosses:tech/the_shaman/pattern3/type3/vfx/init with entity @s data
execute as @s if score @s bosses.the_shaman.pattern3.chalice.destroy_tick matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern3.chalice.destroy_tick 1
execute as @s if score @s bosses.the_shaman.pattern3.chalice.destroy_tick matches 0 at @s run function bosses:tech/the_shaman/pattern3/type3/destroy with entity @s data