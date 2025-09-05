function it:tech/utils/detect/right_click {advancement:"it:active/tome_of_nonlinear_gyro_right_click", item:book, item_tag:tome_of_nonlinear_gyro, tag:item.tome_of_nonlinear_gyro.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.tome_of_nonlinear_gyro.fail, passTag:item.tome_of_nonlinear_gyro.use, inputTag:item.tome_of_nonlinear_gyro.pre, scoreboard:item.tome_of_nonlinear_gyro.cooldown, status:1}
tag @s[tag=item.tome_of_nonlinear_gyro.fail] remove item.tome_of_nonlinear_gyro.fail

execute as @s[tag=item.tome_of_nonlinear_gyro.use] run function it:tech/utils/cooldown/init {scoreboard:item.tome_of_nonlinear_gyro.cooldown, value:400}
execute as @s[tag=item.tome_of_nonlinear_gyro.use] at @s anchored eyes positioned ^ ^ ^ run function it:tech/active/tome_of_nonlinear_gyro/raycast_call

tag @s[tag=item.tome_of_nonlinear_gyro.use] remove item.tome_of_nonlinear_gyro.use