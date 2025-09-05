# 아이템 삭제 함수
# mainhand와 offhand에서 모두 동작하는 우클릭 실행형 아이템을 삭제하기 위해 사용
# 두 슬롯에 모두 아이템이 있을 경우, mainhand의 아이템이 우선으로 삭제됨
# 실행 인자: 삭제할 아이템을 보유한 플레이어
# $(item_tag) - 삭제할 아이템의 태그

$execute if items entity @s weapon.mainhand *[custom_data~{item:$(item_tag)}] run tag @s add item.utils.use_cost.mainhand_detected
$execute if items entity @s weapon.mainhand *[custom_data~{item:$(item_tag)}] run function it:tech/utils/use_cost/item_mainhand
execute as @s[tag=!item.utils.use_cost.mainhand_detected] run function it:tech/utils/use_cost/item_offhand

tag @s[tag=item.utils.use_cost.mainhand_detected] remove item.utils.use_cost.mainhand_detected