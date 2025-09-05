execute unless score @s bosses.the_shaman.pattern5.type matches 1.. run return run scoreboard players add @s bosses.the_shaman.pattern5.tick 360

execute if score @s bosses.the_shaman.pattern5.tick matches 360 positioned ~ ~ ~9 run function bosses:tech/the_shaman/pattern3/type1/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 360 positioned ~ ~ ~-9 run function bosses:tech/the_shaman/pattern3/type1/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 300 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type1/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 240 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type2/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 180 positioned ~9 ~ ~ run function bosses:tech/the_shaman/pattern3/type2/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 180 positioned ~-9 ~ ~ run function bosses:tech/the_shaman/pattern3/type2/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 150 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type2/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 120 positioned ~9 ~ ~9 run function bosses:tech/the_shaman/pattern3/type1/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 120 positioned ~9 ~ ~9 run function bosses:tech/the_shaman/pattern3/type2/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 120 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]

execute if score @s bosses.the_shaman.pattern5.tick matches 60 positioned ~-9 ~ ~-9 run function bosses:tech/the_shaman/pattern3/type1/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 60 positioned ~-9 ~ ~-9 run function bosses:tech/the_shaman/pattern3/type2/summon/init with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.tick matches 60 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type3/summon/init with storage timeisgold:function_api stack[-1]