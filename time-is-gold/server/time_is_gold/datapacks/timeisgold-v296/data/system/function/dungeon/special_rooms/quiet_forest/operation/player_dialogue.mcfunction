# 실행 인자: 조용한 숲 상인 인터랙션과 상호작용한 플레이어

execute store result score @s dungeon.special_rooms.quiet_forest.dialogue_randomizer run random value 0..4
scoreboard players set @s dungeon.special_rooms.quiet_forest.dialogue_cooldown 40

execute if score @s dungeon.special_rooms.quiet_forest.dialogue_randomizer matches 0 run tellraw @s [{"text":"[NPC] 退休收割者: ","color":"yellow"},{"text": "年轻人浪费时间，以为自己有很多年；老人珍惜每一分每一秒，因为他知道时日无多。", "color": "white", "italic": false}]
execute if score @s dungeon.special_rooms.quiet_forest.dialogue_randomizer matches 1 run tellraw @s [{"text":"[NPC] 退休收割者: ","color":"yellow"},{"text": "遗憾是你欠时间的债。", "color": "white", "italic": false}]
execute if score @s dungeon.special_rooms.quiet_forest.dialogue_randomizer matches 2 run tellraw @s [{"text":"[NPC] 退休收割者: ","color":"yellow"},{"text": "每一分钟都是一块砖。你可以用它们筑造智慧之屋，或者让它们随风散落。", "color": "white", "italic": false}]
execute if score @s dungeon.special_rooms.quiet_forest.dialogue_randomizer matches 3 run tellraw @s [{"text":"[NPC] 退休收割者: ","color":"yellow"},{"text": "你的时间是你拥有过的最宝贵的财富。", "color": "white", "italic": false}]
execute if score @s dungeon.special_rooms.quiet_forest.dialogue_randomizer matches 4 run tellraw @s [{"text":"[NPC] 退休收割者: ","color":"yellow"},{"text": "时间从不为任何人停留。", "color": "white", "italic": false}]

# SFX
execute at @s run playsound minecraft:entity.wither_skeleton.ambient hostile @s ~ ~ ~ 1 0.5

scoreboard players reset @s dungeon.special_rooms.quiet_forest.dialogue_randomizer
tag @s remove dungeon.special_rooms.quiet_forest.shopkeeper_dialogue