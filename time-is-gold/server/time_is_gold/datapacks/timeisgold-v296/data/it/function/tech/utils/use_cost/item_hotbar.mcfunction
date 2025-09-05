#아이템 삭제 함수
#특정 슬롯에 보유한 아이템 1개를 삭제한다.
#실행 인자: 삭제할 아이템을 보유한 플레이어
#$(slot): 삭제할 아이템의 인벤토리 슬롯 

# 20240708 - count 스코어보드의 이름이 item.utils.item_count로 바뀌었고, 이제 admin/reset 함수에서 선언 및 초기화됩니다.

$execute store result score @s item.utils.item_count run data get entity @s Inventory[{Slot:$(slot)b}].count
scoreboard players operation @s item.utils.item_count -= #1 scoreboardConstant
$item replace entity @s hotbar.$(slot) from entity @s hotbar.$(slot) system:using