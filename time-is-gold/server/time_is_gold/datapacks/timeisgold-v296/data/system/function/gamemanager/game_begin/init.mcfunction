# 게임 시작 후 모든 플레이어가 1층에 진입했을 때 실행되는 함수.

# 플레이어 인벤토리 초기화
clear @a *
execute as @a[predicate=system:player] run function system:gamemanager/game_begin/set_inventory
execute as @a[team=spectators] run function system:gamemanager/spectator/init

execute as @e[type=armor_stand,tag=dungeon.entrance_supply_chest_pos] at @s run function system:gamemanager/game_begin/set_entrance_supply
kill @e[type=armor_stand,tag=dungeon.entrance_supply_chest_pos]