# 게임 시작 시 모든 플레이어를 등록하는 함수.

scoreboard players reset @a system.gamemanager.connection.reconnected
data modify storage timeisgold:player_registry data set value []

scoreboard players set #SYSTEM system.gamemanager.connection.index 0
function system:gamemanager/connection/register_players/loop