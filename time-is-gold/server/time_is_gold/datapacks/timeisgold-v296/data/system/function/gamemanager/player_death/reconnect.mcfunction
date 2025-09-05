# 실행 인자: 재접속한 플레이어

execute at @s run function it:item_abilities_on_death

# 관전자로 전환
function system:gamemanager/spectator/init

scoreboard players set @s system.gamemanager.player_death.titlecount 1
title @s actionbar [{"text":"进入下一层时，你可以重生！","color":"gray"}]

function system:gamemanager/player_death/reset_trigger