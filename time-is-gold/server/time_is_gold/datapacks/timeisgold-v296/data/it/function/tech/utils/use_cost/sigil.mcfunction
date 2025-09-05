# 핫바 슬롯에 장착되는 인장 아이템을 파괴하는 함수.
# $(slot)   - 슬롯 번호
# $(tag)    - 인장 아이템 태그

$execute unless items entity @s container.$(slot) *[custom_data~{item:$(tag)}] run clear @s *[custom_data~{item:$(tag)}] 1
$execute if items entity @s container.$(slot) *[custom_data~{item:$(tag)}] run function it:tech/utils/use_cost/item_hotbar {slot:$(slot)}