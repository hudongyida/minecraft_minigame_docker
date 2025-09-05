# 석궁 아이템의 장전 상태를 감지하는 함수.
# $(item_tag)   - 검사할 석궁 아이템의 태그
# $(tag)        - 석궁이 장전된 상태일 경우 추가할 태그

#execute as @a if items entity @s weapon.mainhand minecraft:crossbow[custom_data~{item:$(item_tag)},charged_projectiles=[{id:"minecraft:arrow"}]]
$execute as @a if items entity @s weapon.mainhand minecraft:crossbow[custom_data~{item:$(item_tag)},!charged_projectiles=[]] run tag @s add $(tag)
$execute as @a if items entity @s weapon.offhand minecraft:crossbow[custom_data~{item:$(item_tag)},!charged_projectiles=[]] run tag @s add $(tag)