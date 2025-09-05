function it:tech/utils/detect/right_click {advancement:"it:active/waxed_wings_right_click", item:feather, item_tag:waxed_wings, tag:item.waxed_wings.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.waxed_wings.fail, passTag:item.waxed_wings.use, inputTag:item.waxed_wings.pre, scoreboard:item.waxed_wings.cooldown, status:0}
tag @s[tag=item.waxed_wings.fail] remove item.waxed_wings.fail

execute as @s[tag=item.waxed_wings.use] run function it:tech/utils/use_cost/on_right_click {item:feather, item_tag:waxed_wings}
execute as @s[tag=item.waxed_wings.use] run function it:tech/utils/cooldown/init {scoreboard:item.waxed_wings.cooldown, value:200}
execute as @s[tag=item.waxed_wings.use] run effect give @s slow_falling 10 0 false
tag @s[tag=item.waxed_wings.use] remove item.waxed_wings.use