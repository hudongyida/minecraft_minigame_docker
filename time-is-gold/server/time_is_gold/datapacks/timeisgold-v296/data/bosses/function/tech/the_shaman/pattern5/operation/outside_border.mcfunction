# 실행 인자: @a[tag=!bosses.the_shaman.pattern5.inside_arena]

execute if score @s bosses.the_shaman.pattern5.outside_border_tick matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern5.outside_border_tick 1

execute unless score @s bosses.the_shaman.pattern5.outside_border_tick matches 1.. run function bosses:tech/the_shaman/pattern5/operation/damage with storage timeisgold:function_api stack[-1]
execute unless score @s bosses.the_shaman.pattern5.outside_border_tick matches 1.. run scoreboard players operation @s bosses.the_shaman.pattern5.outside_border_tick = #SYSTEM bosses.the_shaman.pattern5.outside_border_tick