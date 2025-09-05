$data modify storage timeisgold:random shuffle_range.list append value $(index)
scoreboard players add #RANDOM system.math.random.index 1
execute store result storage timeisgold:random shuffle_range.index int 1 run scoreboard players get #RANDOM system.math.random.index
execute if score #RANDOM system.math.random.index <= #RANDOM system.math.random.range run function system:math/random/shuffle_range/macro/put_integer with storage timeisgold:random shuffle_range