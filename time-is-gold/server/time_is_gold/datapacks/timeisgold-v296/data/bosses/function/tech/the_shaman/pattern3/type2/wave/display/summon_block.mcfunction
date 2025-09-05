execute store result score @s bosses.the_shaman.pattern3.chalice.randomizer1 run random value 1..100
execute store result score @s bosses.the_shaman.pattern3.chalice.randomizer2 run random value 15..35

data modify storage timeisgold:function_api stack append value {blockname:"blue_terracotta", motion:0.25d}
execute if score @s bosses.the_shaman.pattern3.chalice.randomizer1 matches ..10 run data modify storage timeisgold:function_api stack[-1].blockname set value "blue_concrete"
execute if score @s bosses.the_shaman.pattern3.chalice.randomizer1 matches 11..20 run data modify storage timeisgold:function_api stack[-1].blockname set value "cyan_stained_glass"
execute if score @s bosses.the_shaman.pattern3.chalice.randomizer1 matches 21..40 run data modify storage timeisgold:function_api stack[-1].blockname set value "blue_stained_glass"
execute store result storage timeisgold:function_api stack[-1].motion double 0.01 run scoreboard players get @s bosses.the_shaman.pattern3.chalice.randomizer2
execute positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern3/type2/wave/display/place_block with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]