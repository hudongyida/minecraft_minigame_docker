# 플레이어 접속을 관리하는 함수.

# 현재 플레이어 수 체크
execute unless score #SYSTEM system.gamemanager.count.player_total = #SYSTEM system.gamemanager.connection.player_total.prev run function system:gamemanager/connection/disconnect/init

# 재접속한 플레이어 처리
execute as @a if score @s system.gamemanager.connection.reconnected matches 1.. run function system:gamemanager/connection/reconnect/init