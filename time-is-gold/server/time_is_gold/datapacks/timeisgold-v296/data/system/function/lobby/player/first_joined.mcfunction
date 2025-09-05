# 맵에 처음으로 접속한 플레이어 핸들링 함수.
# 실행 인자: 접속한 플레이어

function system:gamemanager/connection/reconnect/init
scoreboard players set @s admin.do_not_remove.join_history 1