# 인원수에 따른 보상 스케일 퍼센트 값을 반환하는 함수

execute if score #SYSTEM system.gamemanager.count.player_total matches 1 run return 0
execute if score #SYSTEM system.gamemanager.count.player_total matches 2 run return 25
execute if score #SYSTEM system.gamemanager.count.player_total matches 3 run return 33
execute if score #SYSTEM system.gamemanager.count.player_total matches 4 run return 50
execute if score #SYSTEM system.gamemanager.count.player_total matches 5 run return 66
execute if score #SYSTEM system.gamemanager.count.player_total matches 6.. run return 75

return 0