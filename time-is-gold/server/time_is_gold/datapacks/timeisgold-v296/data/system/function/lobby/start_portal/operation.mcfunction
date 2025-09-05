# 실행 인자: @e[type=marker,tag=system.lobby.portal.marker]

$execute at @s as @a[distance=..$(radius)] at @s if function system:portal/portal_use_check run scoreboard players remove @s system.portal.enter_tick 1

# 포탈을 탄 플레이어가 있을 경우 함수 실행
$execute at @s if entity @p[distance=..$(radius),scores={system.portal.enter_tick=..0}] run scoreboard players operation @s system.lobby.portal.cooldown = #SYSTEM system.lobby.portal.cooldown
$execute at @s as @p[distance=..$(radius),scores={system.portal.enter_tick=..0}] if entity @s run function system:gamemanager/start_game