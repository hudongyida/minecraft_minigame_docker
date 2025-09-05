# X축 + 방향에서 - 방향으로 30틱 간격으로 -9, 0, 9 위치 중 하나에 랜덤으로 소환

execute if score @s bosses.the_shaman.pattern5.tick matches 360 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 300 positioned ~9 ~ ~ run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 300 positioned ~-9 ~ ~ run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 300 positioned ~ ~ ~9 run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 300 positioned ~ ~ ~-9 run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 240 positioned ~9 ~ ~9 run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 240 positioned ~-9 ~ ~9 run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 240 positioned ~9 ~ ~-9 run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 240 positioned ~-9 ~ ~-9 run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 180 positioned ~9 ~ ~ run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 180 positioned ~-9 ~ ~ run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 180 positioned ~ ~ ~9 run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 180 positioned ~ ~ ~-9 run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 120 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 120 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type1/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 120 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type2/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 60 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type4/summon/init with storage timeisgold:function_api stack[-1]