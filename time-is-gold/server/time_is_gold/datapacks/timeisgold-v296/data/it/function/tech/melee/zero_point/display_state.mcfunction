# 실행 인자: 콘덴서 아이템을 mainhand에 들고 있는 플레이어

execute if score @s item.zero_point.charge matches 1.. unless items entity @s weapon.mainhand *[enchantment_glint_override=true] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:enchantment_glint_override":true}}]
execute unless score @s item.zero_point.charge matches 1.. if items entity @s weapon.mainhand *[enchantment_glint_override=true] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:enchantment_glint_override":false}}]