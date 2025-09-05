function it:tech/utils/detect/right_click {advancement:"it:active/stasis_field_right_click",  item_tag:stasis_field, tag:item.stasis_field.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.stasis_field.fail, passTag:item.stasis_field.use, inputTag:item.stasis_field.pre, scoreboard:item.stasis_field.cooldown, status:0}
tag @s[tag=item.stasis_field.fail] remove item.stasis_field.fail

execute as @s[tag=item.stasis_field.use] unless score @s item.stasis_field.charge matches 1.. run function it:tech/utils/notify/init {function:"it:tech/active/stasis_field/notify/uncharge"}
execute as @s[tag=item.stasis_field.use] unless score @s item.stasis_field.charge matches 1.. run tag @s remove item.stasis_field.use

execute as @s[tag=item.stasis_field.use] run function it:tech/utils/cooldown/init {scoreboard:item.stasis_field.cooldown, value:10}
execute as @s[tag=item.stasis_field.use] run scoreboard players remove @s item.stasis_field.charge 1
execute as @s[tag=item.stasis_field.use] at @s run function it:tech/active/stasis_field/functions/init
tag @s[tag=item.stasis_field.use] remove item.stasis_field.use