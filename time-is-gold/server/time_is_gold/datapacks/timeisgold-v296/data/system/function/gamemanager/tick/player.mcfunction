# 실행 인자: @a

# 플레이어 ID 할당
execute unless score @s playerid matches 0.. run function system:gamemanager/player_id/assign

function system:time/tick
function system:gamemanager/player_death/tick
function system:gamemanager/spectator/tick
function system:gamemanager/teleport/tick