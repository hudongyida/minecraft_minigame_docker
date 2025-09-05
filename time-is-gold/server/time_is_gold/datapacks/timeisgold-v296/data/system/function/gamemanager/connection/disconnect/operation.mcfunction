# 게임 중인 플레이어가 맵에서 나갈 때 실행되는 함수.
# 실행 인자: 없음

# $(playerid)   - 플레이어 ID
# $(playeruuid) - 플레이어 UUID Token
# $(playername) - 플레이어 이름 문자열

$tellraw @a [{"translate": "system.gamemanager.connection.disconnect.broadcast", "with": [{"text": "$(playername)","color": "gray"}]}]

# SFX
execute as @a at @s run playsound minecraft:entity.player.death player @s ~ ~ ~ 1 1 1