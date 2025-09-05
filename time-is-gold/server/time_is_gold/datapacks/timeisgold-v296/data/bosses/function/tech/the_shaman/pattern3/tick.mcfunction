# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern3.chalice.marker]

execute as @s[tag=bosses.the_shaman.pattern3.chalice.type1.marker] run function bosses:tech/the_shaman/pattern3/type1/step
execute as @s[tag=bosses.the_shaman.pattern3.chalice.type2.marker] run function bosses:tech/the_shaman/pattern3/type2/step
execute as @s[tag=bosses.the_shaman.pattern3.chalice.type3.marker] run function bosses:tech/the_shaman/pattern3/type3/step
execute as @s[tag=bosses.the_shaman.pattern3.chalice.type4.marker] run function bosses:tech/the_shaman/pattern3/type4/step

execute if score @s bosses.the_shaman.pattern3.chalice.spawn_sfx matches 0.. at @s run function bosses:tech/the_shaman/pattern3/chalice/place_sfx