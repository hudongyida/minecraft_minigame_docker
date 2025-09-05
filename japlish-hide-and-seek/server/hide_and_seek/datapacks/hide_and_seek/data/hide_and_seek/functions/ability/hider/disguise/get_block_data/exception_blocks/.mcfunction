# 認識不可の場合のブロック
execute if block ~ ~ ~ minecraft:command_block run data modify storage macro: block_data.block set value "minecraft:command_block"
execute if block ~ ~ ~ minecraft:chain_command_block run data modify storage macro: block_data.block set value "minecraft:chain_command_block"
execute if block ~ ~ ~ minecraft:repeating_command_block run data modify storage macro: block_data.block set value "minecraft:repeating_command_block"
execute if block ~ ~ ~ minecraft:bedrock run data modify storage macro: block_data.block set value "minecraft:bedrock"
execute if block ~ ~ ~ minecraft:suspicious_sand run data modify storage macro: block_data.block set value "minecraft:suspicious_sand"
execute if block ~ ~ ~ minecraft:reinforced_deepslate run data modify storage macro: block_data.block set value "minecraft:reinforced_deepslate"
execute if block ~ ~ ~ minecraft:budding_amethyst run data modify storage macro: block_data.block set value "minecraft:budding_amethyst"
execute if block ~ ~ ~ minecraft:end_portal_frame run data modify storage macro: block_data.block set value "minecraft:end_portal_frame"
execute if block ~ ~ ~ minecraft:spawner run data modify storage macro: block_data.block set value "minecraft:spawner"
#execute if block ~ ~ ~ minecraft:trial_spawner run data modify storage macro: block_data.block set value "minecraft:trial_spawner"

execute if block ~ ~ ~ minecraft:cake run data modify storage macro: block_data.block set value "minecraft:cake"

execute if block ~ ~ ~ minecraft:dirt_path run data modify storage macro: block_data.block set value "minecraft:dirt_path"
execute if block ~ ~ ~ minecraft:farmland run data modify storage macro: block_data.block set value "minecraft:farmland"
execute if block ~ ~ ~ minecraft:short_grass run data modify storage macro: block_data.block set value "minecraft:short_grass"
execute if block ~ ~ ~ minecraft:tall_grass run data modify storage macro: block_data.block set value "minecraft:short_grass"
execute if block ~ ~ ~ minecraft:bamboo_sapling run data modify storage macro: block_data.block set value "minecraft:bamboo_sapling"
execute if block ~ ~ ~ minecraft:nether_sprouts run data modify storage macro: block_data.block set value "minecraft:nether_sprouts"
execute if block ~ ~ ~ minecraft:weeping_vines run data modify storage macro: block_data.block set value "minecraft:weeping_vines_plant"
execute if block ~ ~ ~ minecraft:weeping_vines_plant run data modify storage macro: block_data.block set value "minecraft:weeping_vines_plant"
execute if block ~ ~ ~ minecraft:twisting_vines run data modify storage macro: block_data.block set value "minecraft:twisting_vines"
execute if block ~ ~ ~ minecraft:twisting_vines_plant run data modify storage macro: block_data.block set value "minecraft:twisting_vines"
execute if block ~ ~ ~ minecraft:fern run data modify storage macro: block_data.block set value "minecraft:fern"
execute if block ~ ~ ~ minecraft:large_fern run data modify storage macro: block_data.block set value "minecraft:fern"
execute if block ~ ~ ~ minecraft:small_dripleaf run data modify storage macro: block_data.block set value "minecraft:small_dripleaf"
execute if block ~ ~ ~ minecraft:sweet_berry_bush run data modify storage macro: block_data.block set value "minecraft:sweet_berry_bush"
execute if block ~ ~ ~ minecraft:cave_vines run data modify storage macro: block_data.block set value "minecraft:cave_vines"
execute if block ~ ~ ~ minecraft:cave_vines_plant run data modify storage macro: block_data.block set value "minecraft:cave_vines_plant"
execute if block ~ ~ ~ minecraft:seagrass run data modify storage macro: block_data.block set value "minecraft:seagrass"
execute if block ~ ~ ~ minecraft:tall_seagrass run data modify storage macro: block_data.block set value "minecraft:seagrass"
execute if block ~ ~ ~ minecraft:chorus_plant run data modify storage macro: block_data.block set value "minecraft:chorus_plant"
execute if block ~ ~ ~ minecraft:powder_snow run data modify storage macro: block_data.block set value "minecraft:powder_snow"
execute if block ~ ~ ~ minecraft:dead_bush run data modify storage macro: block_data.block set value "minecraft:dead_bush"

execute if block ~ ~ ~ minecraft:frogspawn run data modify storage macro: block_data.block set value "minecraft:frogspawn"

execute if block ~ ~ ~ minecraft:redstone_wire run data modify storage macro: block_data.block set value "minecraft:redstone_wire"

# 偽装形態に問題のあるの場合のブロック処理
execute if block ~ ~ ~ #minecraft:buttons run data modify storage macro: block_data.face set value "floor"
execute if block ~ ~ ~ #minecraft:trapdoors run data modify storage macro: block_data.open set value "false"
execute if block ~ ~ ~ minecraft:small_dripleaf run data modify storage macro: block_data.half set value "upper"


# 一括処理
#ベッド系
execute if block ~ ~ ~ #minecraft:beds run function hide_and_seek:ability/hider/disguise/get_block_data/exception_blocks/beds
execute if block ~ ~ ~ #minecraft:flower_pots run function hide_and_seek:ability/hider/disguise/get_block_data/exception_blocks/flower_pots
execute if block ~ ~ ~ #minecraft:seeds run function hide_and_seek:ability/hider/disguise/get_block_data/exception_blocks/seeds
execute if block ~ ~ ~ minecraft:glow_lichen run function hide_and_seek:ability/hider/disguise/get_block_data/exception_blocks/glow_lichen
execute if block ~ ~ ~ minecraft:sculk_vein run function hide_and_seek:ability/hider/disguise/get_block_data/exception_blocks/sculk_vein