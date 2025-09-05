function it:tech/utils/detect/right_click {advancement:"it:active/sacrifice_right_click", item_tag:sacrifice, tag:item.sacrifice.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.sacrifice.fail, passTag:item.sacrifice.use, inputTag:item.sacrifice.pre, scoreboard:item.sacrifice.cooldown, status:1}
tag @s[tag=item.sacrifice.fail] remove item.sacrifice.fail

execute as @s[tag=item.sacrifice.use] at @s run function it:tech/utils/cooldown/init {scoreboard:item.sacrifice.cooldown, value:8}
execute as @s[tag=item.sacrifice.use] at @s run function it:tech/active/sacrifice/functions/target
tag @s[tag=item.sacrifice.use] remove item.sacrifice.use