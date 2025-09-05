# 실행 인자: 암시장 상인 인터랙션과 상호작용한 플레이어

execute store result score @s dungeon.special_rooms.black_market.dialogue_randomizer run random value 0..2
scoreboard players set @s dungeon.special_rooms.black_market.dialogue_cooldown 40

execute if score @s dungeon.special_rooms.black_market.dialogue_randomizer matches 0 run tellraw @s [{"text":"[NPC] 可疑商人: ","color":"yellow"},{"text": "嘘...", "color": "white", "italic": false}]
execute if score @s dungeon.special_rooms.black_market.dialogue_randomizer matches 1 run tellraw @s [{"text":"[NPC] 可疑商人: ","color":"yellow"},{"text": "你是怎么发现这个地方的？", "color": "white", "italic": false}]
execute if score @s dungeon.special_rooms.black_market.dialogue_randomizer matches 2 run tellraw @s [{"text":"[NPC] 可疑商人: ","color":"yellow"},{"text": "我从未到过这里，你也没有。", "color": "white", "italic": false}]

# SFX
execute at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 0.75 1

scoreboard players reset @s dungeon.special_rooms.black_market.dialogue_randomizer
tag @s remove dungeon.special_rooms.black_market.shopkeeper_dialogue