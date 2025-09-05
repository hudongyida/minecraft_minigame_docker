# 게임 도중 나간 플레이어 ID를 찾아 처리하는 함수.

# Debug
#tellraw @a [{"text": "Player Count: "}, {"score": {"name": "#SYSTEM", "objective": "system.gamemanager.connection.player_total.prev"}}, {"text": " -> "}, {"score": {"name": "#SYSTEM", "objective": "system.gamemanager.count.player_total"}}]

execute if score #SYSTEM system.gamemanager.connection.player_total.prev <= #SYSTEM system.gamemanager.count.player_total run return run scoreboard players operation #SYSTEM system.gamemanager.connection.player_total.prev = #SYSTEM system.gamemanager.count.player_total

scoreboard players set #SYSTEM system.gamemanager.connection.index 0
function system:gamemanager/connection/disconnect/loop
scoreboard players operation #SYSTEM system.gamemanager.connection.player_total.prev = #SYSTEM system.gamemanager.count.player_total