# 실행 인자: 플레이어 이름 문자열을 가져올 플레이어

# 실행 결과는 timeisgold:player_name 스토리지의 output에 저장됩니다.

execute at @s run summon armor_stand ~ ~ ~ {Tags:["system.utils.player_name.armor_stand.storage"],Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b}
execute at @s run loot replace entity @n[type=armor_stand,tag=system.utils.player_name.armor_stand.storage] weapon.mainhand loot system:utils/player_head
execute at @s run data modify storage timeisgold:player_name output set from entity @n[type=armor_stand,tag=system.utils.player_name.armor_stand.storage] equipment.mainhand.components."minecraft:profile".name
execute at @s run kill @n[type=armor_stand,tag=system.utils.player_name.armor_stand.storage]