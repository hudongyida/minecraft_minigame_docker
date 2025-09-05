# 게임 시작 시 지급되는 시간을 계산해 반환하는 함수.

execute if score #SYSTEM system.gamemanager.count.player_max matches 1 run return 6000
execute if score #SYSTEM system.gamemanager.count.player_max matches 2 run return 4800
execute if score #SYSTEM system.gamemanager.count.player_max matches 3 run return 3600
execute if score #SYSTEM system.gamemanager.count.player_max matches 4 run return 3600
execute if score #SYSTEM system.gamemanager.count.player_max matches 5..6 run return 3000
execute if score #SYSTEM system.gamemanager.count.player_max matches 7.. run return 2400
return 6000