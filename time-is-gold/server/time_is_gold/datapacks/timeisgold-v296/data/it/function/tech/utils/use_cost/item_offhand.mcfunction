# 아이템 삭제 함수
# offhand에 보유한 아이템 1개를 삭제한다.
# 실행 인자: 삭제할 아이템을 보유한 플레이어

# 20240708 - count 스코어보드의 이름이 item.utils.item_count로 바뀌었고, 이제 admin/reset 함수에서 선언 및 초기화됩니다.

execute store result score @s item.utils.item_count run data get entity @s equipment.offhand.count
scoreboard players operation @s item.utils.item_count -= #1 scoreboardConstant
item replace entity @s weapon.offhand from entity @s weapon.offhand system:using