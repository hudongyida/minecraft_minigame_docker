# 플레이 인원수에 따라 현재 위치에서 아이템이 판매될 확률 조절

# v.0.0.296 
# 1명       -> 50%
# 2명       -> 60%
# 3명       -> 80%
# 4명       -> 90%

execute if score #SYSTEM system.gamemanager.count.player_max matches 1 if predicate it:50pc run return fail
execute if score #SYSTEM system.gamemanager.count.player_max matches 2 if predicate it:40pc run return fail
execute if score #SYSTEM system.gamemanager.count.player_max matches 3 if predicate it:20pc run return fail
execute if score #SYSTEM system.gamemanager.count.player_max matches 4.. if predicate it:10pc run return fail

return 1