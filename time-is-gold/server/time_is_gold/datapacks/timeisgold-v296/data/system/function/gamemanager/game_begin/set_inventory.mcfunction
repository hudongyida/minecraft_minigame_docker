# 게임 시작 시 기본 아이템 및 시간을 지급하는 함수.
# 실행 인자: 1층에 진입한 플레이어

execute store result score @s timeX10 run function system:gamemanager/game_begin/get_start_time
loot replace entity @s hotbar.0 loot it:item/melee/common/default_sword
loot replace entity @s hotbar.1 loot it:item/ranged/common/default_crossbow
loot replace entity @s hotbar.2 loot it:item/ranged/common/default_bow
loot give @s loot system:utils/start_arrow
function system:gamemanager/teleport/shop/button/disabled
function system:gamemanager/teleport/boss_portal/button/disabled