# 실행 인자: 보스방 중앙 마커
# 실행 위치: 보스방 중앙
# stack[-1] -> bossuuid

execute positioned ~-12.5 ~ ~-12.5 as @a[predicate=system:player,dx=25,dy=7,dz=25] run tag @s add bosses.the_shaman.pattern5.inside_arena

execute as @a[tag=bosses.the_shaman.pattern5.inside_arena] run scoreboard players operation @s bosses.the_shaman.pattern5.outside_border_tick = #SYSTEM bosses.the_shaman.pattern5.outside_border_tick
execute as @a[predicate=system:player,tag=!bosses.the_shaman.pattern5.inside_arena] at @s run function bosses:tech/the_shaman/pattern5/operation/outside_border with storage timeisgold:function_api stack[-1]

tag @a[tag=bosses.the_shaman.pattern5.inside_arena] remove bosses.the_shaman.pattern5.inside_arena