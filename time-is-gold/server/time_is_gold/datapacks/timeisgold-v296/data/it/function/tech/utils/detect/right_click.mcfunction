# $(advancement)    - 우클릭 감지 발전과제의 전체 경로
# $(item_tag)       - 아이템 태그
# $(tag)            - 감지 시 부여할 태그
# $(type)           - 감지 방식
#   0 - 어떤 손에 들고 있는지 상관 없음
#   1 - mainhand에서만 동작
#   2 - offhand에서만 동작

# 액티브 비활성화 상태 체크
execute unless score @s combat.active_ability_check matches 1.. run function it:tech/utils/notify/init {function:"it:tech/utils/notify/general/ability_disabled"}
$execute unless score @s combat.active_ability_check matches 1.. run return run advancement revoke @s only $(advancement)

$scoreboard players set @s item.utils.right_click.type $(type)
$execute as @s[advancements={$(advancement)=true}] run tag @s add $(tag)
$execute as @s[tag=$(tag)] if score @s item.utils.right_click.type matches 1 unless items entity @s weapon.mainhand *[custom_data~{item:$(item_tag)}] run tag @s remove $(tag)
$execute as @s[tag=$(tag)] if score @s item.utils.right_click.type matches 2 unless items entity @s weapon.offhand *[custom_data~{item:$(item_tag)}] run tag @s remove $(tag)
$advancement revoke @s only $(advancement)