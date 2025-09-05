# 실행 인자: @e[type=piglin,tag=factory_executive]

execute unless score @s monsters.floor1.factory_executive.update_tick matches 0.. run scoreboard players set @s monsters.floor1.factory_executive.update_tick 0
execute as @s[scores={monsters.floor1.factory_executive.update_tick=1..}] at @s run scoreboard players remove @s monsters.floor1.factory_executive.update_tick 1

# weapon_state가 0일 경우 석궁 장비(기본)
# weapon_state가 1일 경우 철 검 장비

# 근접 변경 조건 -> 5블록 이내 플레이어 존재 + 쿨다운 아님 + 석궁에 화살이 없음
execute as @s at @s unless score @s monsters.floor1.factory_executive.update_tick matches 1.. unless score @s monsters.floor1.factory_executive.weapon_state matches 1 if entity @a[predicate=system:player,distance=..5] if items entity @s weapon.mainhand crossbow[charged_projectiles=[]] run tag @s add monsters.floor1.factory_executive.swap_melee
execute as @s[tag=monsters.floor1.factory_executive.swap_melee] run item replace entity @s weapon.mainhand with iron_sword[attribute_modifiers=[],unbreakable={}]
execute as @s[tag=monsters.floor1.factory_executive.swap_melee] run scoreboard players set @s monsters.floor1.factory_executive.weapon_state 1
execute as @s[tag=monsters.floor1.factory_executive.swap_melee] run scoreboard players set @s monsters.floor1.factory_executive.update_tick 50
execute as @s[tag=monsters.floor1.factory_executive.swap_melee] run tag @s remove monsters.floor1.factory_executive.swap_melee

# 원거리 변경 조건 -> 5블록 이내 플레이어 없음 + 쿨다운 아님
execute as @s at @s unless score @s monsters.floor1.factory_executive.update_tick matches 1.. if score @s monsters.floor1.factory_executive.weapon_state matches 1 unless entity @a[predicate=system:player,distance=..5] run tag @s add monsters.floor1.factory_executive.swap_ranged
execute as @s[tag=monsters.floor1.factory_executive.swap_ranged] run item replace entity @s weapon.mainhand with minecraft:crossbow[attribute_modifiers=[],unbreakable={}]
execute as @s[tag=monsters.floor1.factory_executive.swap_ranged] run scoreboard players set @s monsters.floor1.factory_executive.weapon_state 0
execute as @s[tag=monsters.floor1.factory_executive.swap_ranged] run scoreboard players set @s monsters.floor1.factory_executive.update_tick 80
execute as @s[tag=monsters.floor1.factory_executive.swap_ranged] run tag @s remove monsters.floor1.factory_executive.swap_ranged