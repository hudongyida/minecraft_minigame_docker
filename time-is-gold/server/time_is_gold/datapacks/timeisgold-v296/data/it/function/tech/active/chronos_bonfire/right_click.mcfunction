function it:tech/utils/detect/right_click {advancement:"it:active/chronos_bonfire_right_click", item:soul_campfire, item_tag:chronos_bonfire, tag:item.chronos_bonfire.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.chronos_bonfire.fail, passTag:item.chronos_bonfire.use, inputTag:item.chronos_bonfire.pre, scoreboard:item.chronos_bonfire.cooldown, status:1}
tag @s[tag=item.chronos_bonfire.fail] remove item.chronos_bonfire.fail

execute as @s[tag=item.chronos_bonfire.use] run function it:tech/utils/use_cost/on_right_click {item:soul_campfire, item_tag:chronos_bonfire}
execute as @s[tag=item.chronos_bonfire.use] run function it:tech/utils/cooldown/init {scoreboard:item.chronos_bonfire.cooldown, value:200}
execute as @s[tag=item.chronos_bonfire.use] at @s run function it:tech/active/chronos_bonfire/place
tag @s[tag=item.chronos_bonfire.use] remove item.chronos_bonfire.use