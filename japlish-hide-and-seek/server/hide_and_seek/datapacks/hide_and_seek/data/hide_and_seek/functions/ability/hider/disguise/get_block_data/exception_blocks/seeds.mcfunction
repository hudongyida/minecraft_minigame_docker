execute if block ~ ~ ~ minecraft:wheat run data modify storage macro: block_data.block set value "minecraft:wheat"
execute if block ~ ~ ~ minecraft:potatoes run data modify storage macro: block_data.block set value "minecraft:potatoes"
execute if block ~ ~ ~ minecraft:carrots run data modify storage macro: block_data.block set value "minecraft:carrots"
execute if block ~ ~ ~ minecraft:torchflower_crop run data modify storage macro: block_data.block set value "minecraft:torchflower_crop"
execute if block ~ ~ ~ minecraft:beetroots run data modify storage macro: block_data.block set value "minecraft:beetroots"
execute if block ~ ~ ~ minecraft:melon_stem run data modify storage macro: block_data.block set value "minecraft:melon_stem"
execute if block ~ ~ ~ minecraft:attached_melon_stem run data modify storage macro: block_data.block set value "minecraft:attached_melon_stem"
execute if block ~ ~ ~ minecraft:pumpkin_stem run data modify storage macro: block_data.block set value "minecraft:pumpkin_stem"
execute if block ~ ~ ~ minecraft:attached_pumpkin_stem run data modify storage macro: block_data.block set value "minecraft:attached_pumpkin_stem"

#小さすぎる作物の成長段階を上げる
execute if block ~ ~ ~ minecraft:melon_stem[age=0] run data modify storage macro: block_data.age set value "1"
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=0] run data modify storage macro: block_data.age set value "1"