# 실행 인자: @e[type=marker,tag=system.portal.marker.data_storage]

$execute at @s as @a[predicate=system:player,distance=..$(radius)] at @s if function system:portal/portal_use_check run scoreboard players remove @s system.portal.enter_tick 1

# 포탈을 탄 플레이어가 있을 경우 함수 실행
$execute at @s if entity @p[predicate=system:player,distance=..$(radius),scores={system.portal.enter_tick=..0}] run scoreboard players operation @s system.portal.cooldown = #SYSTEM system.portal.cooldown
$execute at @s as @p[predicate=system:player,distance=..$(radius),scores={system.portal.enter_tick=..0}] if entity @s run function $(function)

# 일회용 포탈일 경우 삭제
execute if score @s system.portal.cooldown >= #SYSTEM system.portal.cooldown if score @s system.portal.single_use matches 1 run kill @s