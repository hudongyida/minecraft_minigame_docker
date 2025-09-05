# 매 틱마다 게임 시스템 관련 함수를 실행하는 함수

# 시스템 알림 쿨다운
execute if score #SYSTEM system.gamemanager.notify_cooldown matches 1.. run scoreboard players remove #SYSTEM system.gamemanager.notify_cooldown 1

# 플레이어 수 확인
scoreboard players set #SYSTEM system.gamemanager.count.player_alive 0
scoreboard players set #SYSTEM system.gamemanager.count.player_dead 0
scoreboard players set #SYSTEM system.gamemanager.count.player_total 0

execute as @a[predicate=system:player] run scoreboard players add #SYSTEM system.gamemanager.count.player_alive 1
execute as @a[predicate=system:player_dead] run scoreboard players add #SYSTEM system.gamemanager.count.player_dead 1
scoreboard players operation #SYSTEM system.gamemanager.count.player_total = #SYSTEM system.gamemanager.count.player_alive
scoreboard players operation #SYSTEM system.gamemanager.count.player_total += #SYSTEM system.gamemanager.count.player_dead

# 다음 층 던전 생성
execute if score #SYSTEM system.gamemanager.next_floor_operation matches 1 run function system:gamemanager/next_floor/tick

# 생존한 플레이어가 없을 경우 게임 오버
execute if score #SYSTEM system.gamemanager.count.player_alive matches ..0 if score #SYSTEM system.gamemanager.game_session matches 1.. unless score #SYSTEM system.gamemanager.game_over.check matches 1.. run function system:gamemanager/game_over/init

# 보스전 관리
execute if score #SYSTEM system.gamemanager.bossfight.start_check matches 1 unless score #SYSTEM system.gamemanager.bossfight.end_check matches 1 run function system:gamemanager/bossfight/tick

function system:gamemanager/connection/tick
function system:gamemanager/floor/tick
function system:gamemanager/spectator/tick
function system:gamemanager/summary/tick

execute as @a run function system:gamemanager/tick/player
execute as @e[tag=monster] run function system:gamemanager/tick/monster

# 포탈 쿨다운 설정
execute as @e[type=!#system:component,type=!player] store result score @s system.gamemanager.tick.nether_portal_cooldown run data get entity @s PortalCooldown
execute as @e[type=!#system:component,type=!player] if score @s system.gamemanager.tick.nether_portal_cooldown matches 0..299 run data modify entity @s PortalCooldown set value 2147483647