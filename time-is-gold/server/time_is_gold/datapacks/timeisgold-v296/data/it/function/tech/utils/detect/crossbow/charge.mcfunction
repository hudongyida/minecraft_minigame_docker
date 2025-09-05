# 석궁 화살 장전 감지
# 장전 시 석궁의 화살을 arrow_name를 지닌 tipped_arrow로 변환합니다.
# 장전 상태를 감지하고, 장전된 석궁을 감지한 경우 path로 지정된 함수를 실행합니다.

# item         : 석궁 아이템 아이디
# arrow_name   : 장전된 화살 이름(json)
# end_function__path         : 석궁이 장전된 후 사용할 함수
# prev_function__path        : 석궁이 장전되기 전 화살 관련 조작을 수행할 함수 (@n[tag=item.utils.crossbow.armor_stand,type=armor_stand])
# 인자: @s

$execute as @s unless items entity @s weapon.mainhand *[minecraft:custom_data~{item:$(item)}] run return fail
execute as @s if data entity @s SelectedItem.components."minecraft:charged_projectiles"[{id:"minecraft:arrow"}] run tag @s add item.utils.crossbow.charged
execute as @s[tag=item.utils.crossbow.charged] at @s run summon armor_stand ~ ~ ~ {Tags:["item.utils.crossbow.armor_stand"],Invisible:true,Small:true,Marker:true}
execute as @s[tag=item.utils.crossbow.charged] at @s run item replace entity @n[type=armor_stand,tag=item.utils.crossbow.armor_stand] weapon.mainhand from entity @s weapon.mainhand
$execute as @s[tag=item.utils.crossbow.charged] at @s run data modify entity @n[type=armor_stand,tag=item.utils.crossbow.armor_stand] equipment.mainhand.components.minecraft:charged_projectiles[{id:"minecraft:arrow"}] set value {id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:custom_name": $(arrow_name),"minecraft:tooltip_display":{hide_tooltip:true}}}
$execute as @s[tag=item.utils.crossbow.charged] at @s run function $(prev_function__path)
execute as @s[tag=item.utils.crossbow.charged] run item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=item.utils.crossbow.armor_stand] weapon.mainhand
execute as @s[tag=item.utils.crossbow.charged] at @s run kill @n[type=armor_stand,tag=item.utils.crossbow.armor_stand]
$execute as @s[tag=item.utils.crossbow.charged] at @s run function $(end_function__path)
tag @s[tag=item.utils.crossbow.charged] remove item.utils.crossbow.charged