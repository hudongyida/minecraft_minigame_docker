# 게임을 시작할 때 호출되는 함수.

# 게임이 진행 중일 경우 취소
execute if score #SYSTEM system.gamemanager.game_session matches 1.. run return run function system:gamemanager/session/fail/already_running

function admin:reset

execute as @a[team=ready] run team join players
execute as @a[team=players] run gamemode adventure
execute as @a run function system:gamemanager/player_id/assign

# 플레이어 수 확인
scoreboard players reset #SYSTEM system.gamemanager.count.player_max
execute as @a[predicate=system:player] run scoreboard players add #SYSTEM system.gamemanager.count.player_max 1

# 플레이어가 없을 경우 취소
execute unless score #SYSTEM system.gamemanager.count.player_max matches 1.. run return run function system:gamemanager/session/fail/not_enough_players

scoreboard players set #SYSTEM system.gamemanager.game_session 1
scoreboard players set #SYSTEM dungeon.floor -1
scoreboard players operation #SYSTEM system.gamemanager.count.player_total > #1 scoreboardConstant

tag @a add admin
function system:gamemanager/connection/register_players/init
function system:gamemanager/next_floor/init