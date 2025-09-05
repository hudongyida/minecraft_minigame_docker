# 인벤토리 내 특정 아이템의 수를 저장하는 함수
# 실행 인자: 아이템 수를 확인할 플레이어
# $(scoreboard) - 아이템 수를 저장할 스코어보드 이름
# $(item_tag)   - 아이템 태그

#$execute as @s store result score @s $(scoreboard) run clear @s $(item_id){item:$(item_tag)} 0
$execute as @s store result score @s $(scoreboard) run clear @s *[custom_data~{item:$(item_tag)}] 0