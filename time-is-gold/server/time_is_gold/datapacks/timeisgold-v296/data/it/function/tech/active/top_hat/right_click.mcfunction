function it:tech/utils/detect/right_click {advancement:"it:active/top_hat_right_click", item_tag:top_hat, tag:item.top_hat.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.top_hat.fail, passTag:item.top_hat.use, inputTag:item.top_hat.pre, scoreboard:item.top_hat.cooldown, status:1}
tag @s[tag=item.top_hat.fail] remove item.top_hat.fail

execute as @s[tag=item.top_hat.use] run function it:tech/utils/cooldown/init {scoreboard:item.top_hat.cooldown, value:600}
execute as @s[tag=item.top_hat.use] at @s run data modify storage timeisgold:function_api stack append value {random_x:0,random_z:0}
execute as @s[tag=item.top_hat.use] at @s store result storage timeisgold:function_api stack[-1].random_x double 0.1 run random value 0..5
execute as @s[tag=item.top_hat.use] at @s store result storage timeisgold:function_api stack[-1].random_z double 0.1 run random value 0..5
execute as @s[tag=item.top_hat.use] at @s run function it:tech/active/top_hat/summon with storage timeisgold:function_api stack[-1]
execute as @s[tag=item.top_hat.use] at @s run data remove storage timeisgold:function_api stack[-1]
tag @s[tag=item.top_hat.use] remove item.top_hat.use