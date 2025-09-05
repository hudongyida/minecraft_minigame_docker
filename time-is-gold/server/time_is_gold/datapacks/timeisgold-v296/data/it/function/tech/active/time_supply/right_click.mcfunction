function it:tech/utils/detect/right_click {advancement:"it:active/time_supply_right_click", item_tag:time_supply, tag:item.time_supply.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.time_supply.fail, passTag:item.time_supply.use, inputTag:item.time_supply.pre, scoreboard:item.time_supply.cooldown, status:0}
tag @s[tag=item.time_supply.fail] remove item.time_supply.fail

execute as @s[tag=item.time_supply.use] run function it:tech/utils/cooldown/init {scoreboard:item.time_supply.cooldown, value:4}
execute as @s[tag=item.time_supply.use] anchored eyes run function it:tech/active/time_supply/raycast_call

tag @s[tag=item.time_supply.use] remove item.time_supply.use