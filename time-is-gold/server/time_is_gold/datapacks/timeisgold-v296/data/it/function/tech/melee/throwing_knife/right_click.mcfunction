function it:tech/utils/detect/right_click {advancement:"it:melee/throwing_knife_right_click", item_tag:throwing_knife, tag:item.throwing_knife.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.throwing_knife.fail, passTag:item.throwing_knife.use, inputTag:item.throwing_knife.pre, scoreboard:item.throwing_knife.cooldown, status:1}
execute as @s[tag=item.throwing_knife.fail] run tag @s remove item.throwing_knife.fail

execute if score @s item.throwing_knife.ability_delay matches 1.. run return run tag @s remove item.throwing_knife.use

execute as @s[tag=item.throwing_knife.use] run scoreboard players set @s item.throwing_knife.ability_delay 4
execute as @s[tag=item.throwing_knife.use] if score @s item.throwing_knife.ability_tick matches 1.. run function it:tech/melee/throwing_knife/operation/cancel
execute as @s[tag=item.throwing_knife.use] unless score @s item.throwing_knife.ability_tick matches 1.. run function it:tech/melee/throwing_knife/operation/start

tag @s[tag=item.throwing_knife.use] remove item.throwing_knife.use