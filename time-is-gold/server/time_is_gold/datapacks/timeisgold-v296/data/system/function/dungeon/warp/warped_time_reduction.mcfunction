# 시간 감소 주기마다 감소할 시간 배율을 계산해 반환하는 함수.

execute if score #SYSTEM dungeon.warp matches ..19 run return 1
execute if score #SYSTEM dungeon.warp matches 20..39 run return 2
execute if score #SYSTEM dungeon.warp matches 40..59 run return 4
execute if score #SYSTEM dungeon.warp matches 60..79 run return 6
execute if score #SYSTEM dungeon.warp matches 80..99 run return 8
execute if score #SYSTEM dungeon.warp matches 100.. run return 15

return 1