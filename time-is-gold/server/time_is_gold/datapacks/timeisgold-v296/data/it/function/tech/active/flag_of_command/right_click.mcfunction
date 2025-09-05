function it:tech/utils/detect/right_click {advancement:"it:active/flag_of_command_right_click", item:green_banner, item_tag:flag_of_command, tag:item.flag_of_command.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.flag_of_command.fail, passTag:item.flag_of_command.check, inputTag:item.flag_of_command.pre, scoreboard:item.flag_of_command.cooldown, status:1}
execute as @s[tag=item.flag_of_command.check] at @s run function it:tech/active/flag_of_command/functions/check_pos
execute as @s[tag=item.flag_of_command.check] run tag @s remove item.flag_of_command.check
execute as @s[tag=item.flag_of_command.fail] run tag @s remove item.flag_of_command.fail

execute as @s[tag=item.flag_of_command.use] run data modify storage timeisgold:function_api stack append value {playerid:0}
execute as @s[tag=item.flag_of_command.use] store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s[tag=item.flag_of_command.use] at @s align xyz positioned ~.5 ~ ~.5 run function it:tech/active/flag_of_command/functions/place with storage timeisgold:function_api stack[-1]
execute as @s[tag=item.flag_of_command.use] at @s align xyz positioned ~.5 ~ ~.5 run function it:tech/active/flag_of_command/functions/teleport with storage timeisgold:function_api stack[-1]
execute as @s[tag=item.flag_of_command.use] run data remove storage timeisgold:function_api stack[-1]

execute as @s[tag=item.flag_of_command.use] run function it:tech/utils/cooldown/init {scoreboard:item.flag_of_command.cooldown, value:400}
execute as @s[tag=item.flag_of_command.use] run function it:tech/utils/use_cost/time {cost:50}

execute as @s[tag=item.flag_of_command.use] run tag @s remove item.flag_of_command.use