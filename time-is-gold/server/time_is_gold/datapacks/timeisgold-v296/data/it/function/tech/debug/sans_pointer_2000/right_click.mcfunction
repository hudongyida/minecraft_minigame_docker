function it:tech/utils/detect/right_click {advancement:"it:debug/sans_pointer_2000_right_click", item_tag:sans_pointer_2000, tag:item.sans_pointer_2000.pre, type:0}
function it:tech/utils/cooldown/check {scoreboard:item.sans_pointer_2000.cooldown, inputTag:item.sans_pointer_2000.pre, passTag:item.sans_pointer_2000.use, failTag:item.sans_pointer_2000.fail, status:0}
tag @s[tag=item.sans_pointer_2000.fail] remove item.sans_pointer_2000.fail

execute as @s[tag=item.sans_pointer_2000.use] run function it:tech/debug/sans_pointer_2000/raycast_call
execute as @s[tag=item.sans_pointer_2000.use] run function it:tech/utils/cooldown/init {scoreboard:item.sans_pointer_2000.cooldown, value:8}
tag @s[tag=item.sans_pointer_2000.use] remove item.sans_pointer_2000.use