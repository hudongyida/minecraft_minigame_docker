function it:tech/utils/detect/right_click {advancement:"it:active/dike_justice_right_click", item:brewing_stand, item_tag:dike_justice, tag:item.dike_justice.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.dike_justice.fail, passTag:item.dike_justice.use, inputTag:item.dike_justice.pre, scoreboard:item.dike_justice.cooldown, status:1}
tag @s[tag=item.dike_justice.fail] remove item.dike_justice.fail

execute as @s[tag=item.dike_justice.use] run scoreboard players set @s item.dike_justice.cooldown 100000
execute as @s[tag=item.dike_justice.use] run effect give @s minecraft:darkness 15 1 true
execute as @s[tag=item.dike_justice.use] run scoreboard players set @s item.dike_justice.active 300
execute as @s[tag=item.dike_justice.use] run scoreboard players set #MAX_VALUE item.dike_justice.active 300
tag @s[tag=item.dike_justice.use] remove item.dike_justice.use