execute store result score @s bosses.the_shaman.pattern1.mirror_shard.randomizer1 run random value 1..100
execute store result score @s bosses.the_shaman.pattern1.mirror_shard.randomizer2 run random value 10..20

data modify storage timeisgold:function_api stack append value {blockname:"cyan_terracotta", motion:0.15d}
execute if score @s bosses.the_shaman.pattern1.mirror_shard.randomizer1 matches ..5 run data modify storage timeisgold:function_api stack[-1].blockname set value "black_stained_glass"
execute if score @s bosses.the_shaman.pattern1.mirror_shard.randomizer1 matches 6..10 run data modify storage timeisgold:function_api stack[-1].blockname set value "gray_stained_glass"
execute if score @s bosses.the_shaman.pattern1.mirror_shard.randomizer1 matches 11..20 run data modify storage timeisgold:function_api stack[-1].blockname set value "light_gray_stained_glass"
execute if score @s bosses.the_shaman.pattern1.mirror_shard.randomizer1 matches 21..40 run data modify storage timeisgold:function_api stack[-1].blockname set value "gray_concrete_powder"
execute if score @s bosses.the_shaman.pattern1.mirror_shard.randomizer1 matches 41..60 run data modify storage timeisgold:function_api stack[-1].blockname set value "gray_wool"
execute store result storage timeisgold:function_api stack[-1].motion double 0.01 run scoreboard players get @s bosses.the_shaman.pattern1.mirror_shard.randomizer2
execute positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern1/mirror_shard/display/place_block with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]