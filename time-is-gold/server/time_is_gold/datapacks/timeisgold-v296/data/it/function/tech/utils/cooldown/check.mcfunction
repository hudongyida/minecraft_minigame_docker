# 사용한 아이템이 쿨다운 상태인지 확인하는 함수
# $(scoreboard) - 쿨다운 스코어보드
# $(inputTag)   - 아이템 사용 확인 태그
# $(passTag)    - 쿨다운이 아닌 경우 추가할 태그
# $(failTag)    - 쿨다운인 경우 추가할 태그
# $(status)     - 쿨다운 상태를 표시할지 여부
#   - 0: 아무것도 표시되지 않음
#   - 1: 쿨다운 여부와 남은 시간을 액션바에 표시 및 효과음 재생

$function it:tech/utils/cooldown/operation/apply_modifier {input:$(scoreboard), input_target:"#MAX_VALUE", output:"item.utils.cooldown.modified_base", output_target:"@s"}
$function it:tech/utils/cooldown/operation/get_modified_cooldown {origin:$(scoreboard), origin_target:"#MAX_VALUE", modified:"item.utils.cooldown.modified_base", modified_target:"@s", cooldown:$(scoreboard), output:"item.utils.cooldown.modified_value"}

$execute as @s[tag=$(inputTag)] at @s if score @s item.utils.cooldown.modified_value matches 1.. run tag @s add $(failTag)
$execute as @s[tag=$(inputTag)] at @s unless score @s item.utils.cooldown.modified_value matches 1.. run tag @s add $(passTag)

$execute as @s[tag=$(failTag)] run scoreboard players set @s item.utils.cooldown.status $(status)
$execute as @s[tag=$(failTag)] if score @s item.utils.cooldown.status matches 1 run function it:tech/utils/cooldown/operation/on_cooldown {scoreboard:"item.utils.cooldown.modified_value", base:"item.utils.cooldown.modified_base", base_target:"@s"}

$tag @s[tag=$(inputTag)] remove $(inputTag)
$tag @s[tag=$(failTag)] remove $(failTag)