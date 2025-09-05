# 재접속한 플레이어를 처리하는 함수.
# 실행 인자: system.gamemanager.connection.reconnected 스코어보드가 1 이상인 플레이어

scoreboard players reset @s system.gamemanager.connection.reconnected

# 게임이 시작하지 않았을 경우
execute unless score #SYSTEM system.gamemanager.game_session matches 1.. run return run function system:lobby/player/reset

# 게임이 진행 중인 경우
execute as @s[team=!players] run function system:gamemanager/spectator/init
execute as @s[team=players] run function system:gamemanager/connection/reconnect/operation