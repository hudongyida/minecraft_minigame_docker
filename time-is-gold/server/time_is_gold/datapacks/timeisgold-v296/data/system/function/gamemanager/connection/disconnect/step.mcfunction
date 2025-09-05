# $(index)  - 확인할 플레이어 ID

# ID에 해당하는 플레이어가 "플레이어"이고 게임 내에 존재하지 않을 경우 작업 실행
scoreboard players reset #SYSTEM system.gamemanager.connection.player_check
$execute store result score #SYSTEM system.gamemanager.connection.player_check run data get storage timeisgold:player_registry data[$(index)].playercheck
$execute if score #SYSTEM system.gamemanager.connection.player_check matches 1.. unless entity @a[scores={playerid=$(index)}] run function system:gamemanager/connection/disconnect/operation with storage timeisgold:player_registry data[$(index)]