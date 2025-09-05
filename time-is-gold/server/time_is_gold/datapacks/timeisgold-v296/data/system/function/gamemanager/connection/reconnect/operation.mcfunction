# 실행 인자: 게임 중 나갔다 재접속한 플레이어

tellraw @a [{"translate": "system.gamemanager.connection.reconnect.broadcast", "with": [{"selector":"@s","color":"gray","bold":false}]}]

# SFX
execute at @s run playsound minecraft:entity.player.death player @s ~ ~ ~ 1 1 1

function system:gamemanager/player_death/reconnect