# 상자 방에서 등장하는 상자의 아이템 드롭 수 설정

data modify storage timeisgold:loot_manager entrance_supply_chest set value {}

# 무기 -> (전체 플레이어 수)
scoreboard players reset #SYSTEM dungeon.loot.randomizer
scoreboard players operation #SYSTEM dungeon.loot.randomizer = #SYSTEM system.gamemanager.count.player_max
execute store result storage timeisgold:loot_manager entrance_supply_chest.weapon int 1 run scoreboard players get #SYSTEM dungeon.loot.randomizer

# 방어구 -> (0)
data modify storage timeisgold:loot_manager entrance_supply_chest.armor set value 0

# 아이템 -> (전체 플레이어 수) + (생존한 플레이어 수 * 0.5)
scoreboard players reset #SYSTEM dungeon.loot.randomizer
scoreboard players operation #SYSTEM dungeon.loot.randomizer = #SYSTEM system.gamemanager.count.player_max
execute as @a[predicate=system:player] if predicate it:50pc run scoreboard players add #SYSTEM dungeon.loot.randomizer 1
execute store result storage timeisgold:loot_manager entrance_supply_chest.ability int 1 run scoreboard players get #SYSTEM dungeon.loot.randomizer

# 소모품 -> (생존한 플레이어 수 * 0.5)
scoreboard players reset #SYSTEM dungeon.loot.randomizer
execute as @a[predicate=system:player] if predicate it:50pc run scoreboard players add #SYSTEM dungeon.loot.randomizer 1
execute store result storage timeisgold:loot_manager entrance_supply_chest.expendables int 1 run scoreboard players get #SYSTEM dungeon.loot.randomizer