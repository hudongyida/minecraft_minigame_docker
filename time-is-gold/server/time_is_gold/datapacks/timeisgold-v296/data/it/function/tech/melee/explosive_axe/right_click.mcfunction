function it:tech/utils/detect/right_click {advancement:"it:melee/explosive_axe_right_click", item:diamond_axe, item_tag:explosive_axe, tag:item.explosive_axe.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.explosive_axe.fail, passTag:item.explosive_axe.use, inputTag:item.explosive_axe.pre, scoreboard:item.explosive_axe.cooldown, status:0}
tag @s[tag=item.explosive_axe.fail] remove item.explosive_axe.fail

execute as @s[tag=item.explosive_axe.use] unless items entity @s container.* gunpowder[custom_data~{item:gunpowder}] run function it:tech/utils/notify/init {function:"it:tech/melee/explosive_axe/notify/no_gunpowder"}
execute as @s[tag=item.explosive_axe.use] unless items entity @s container.* gunpowder[custom_data~{item:gunpowder}] run tag @s remove item.explosive_axe.use

execute as @s[tag=item.explosive_axe.use] if score @s item.explosive_axe.charge matches 3.. run function it:tech/utils/notify/init {function:"it:tech/melee/explosive_axe/notify/fully_charged"}
execute as @s[tag=item.explosive_axe.use] if score @s item.explosive_axe.charge matches 3.. run tag @s remove item.explosive_axe.use

execute as @s[tag=item.explosive_axe.use] unless score @s item.explosive_axe.charge matches 1.. at @s run function it:tech/melee/explosive_axe/operation/charge_1
execute as @s[tag=item.explosive_axe.use] if score @s item.explosive_axe.charge matches 1 at @s run function it:tech/melee/explosive_axe/operation/charge_2
execute as @s[tag=item.explosive_axe.use] if score @s item.explosive_axe.charge matches 2 at @s run function it:tech/melee/explosive_axe/operation/charge_3

# 화약 소모 및 충전 + 1
execute as @s[tag=item.explosive_axe.use] run scoreboard players add @s item.explosive_axe.charge 1
execute as @s[tag=item.explosive_axe.use] run function it:tech/utils/cooldown/init {scoreboard:item.explosive_axe.cooldown, value:10}
execute as @s[tag=item.explosive_axe.use] run clear @s gunpowder[custom_data~{item:gunpowder}] 1
execute as @s[tag=item.explosive_axe.use] run function it:tech/melee/explosive_axe/operation/update_item

tag @s[tag=item.explosive_axe.use] remove item.explosive_axe.use