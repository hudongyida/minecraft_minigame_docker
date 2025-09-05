function it:tech/utils/detect/right_click {advancement:"it:active/command_console_right_click", item:soul_campfire, item_tag:command_console, tag:item.command_console.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.command_console.fail, passTag:item.command_console.use, inputTag:item.command_console.pre, scoreboard:item.command_console.cooldown, status:1}
tag @s[tag=item.command_console.fail] remove item.command_console.fail

execute as @s[tag=item.command_console.use] at @s as @e[type=item,tag=!system.shop.item.showcase,distance=..25] run function it:tech/active/command_console/functions/item
execute as @s[tag=item.command_console.use] unless score @s item.command_console.collection matches 1.. run function it:tech/active/command_console/functions/fail
execute as @s[tag=item.command_console.use] run function it:tech/utils/cooldown/init {scoreboard:item.command_console.cooldown, value:100}
execute as @s[tag=item.command_console.use] run function it:tech/utils/use_cost/time {cost:30}
execute as @s[tag=item.command_console.use] run scoreboard players set @s item.command_console.typing_sound 5
execute as @s[tag=item.command_console.use] at @s run particle enchant ^ ^ ^1 0.2 0.2 0.2 0.3 5 force
execute as @s[tag=item.command_console.use] run function it:tech/active/command_console/functions/notify
tag @s[tag=item.command_console.use] remove item.command_console.use