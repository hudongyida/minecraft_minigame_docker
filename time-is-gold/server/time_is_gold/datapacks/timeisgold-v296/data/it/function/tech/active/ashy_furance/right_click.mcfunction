function it:tech/utils/detect/right_click {advancement:"it:active/ashy_furance_right_click", item_tag:ashy_furance, tag:item.ashy_furance.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.ashy_furance.fail, passTag:item.ashy_furance.use, inputTag:item.ashy_furance.pre, scoreboard:item.ashy_furance.cooldown, status:1}
execute as @s[tag=item.ashy_furance.fail] run tag @s remove item.ashy_furance.fail

execute as @s[tag=item.ashy_furance.use] run function it:tech/active/ashy_furance/functions/init
execute as @s[tag=item.ashy_furance.use] run function it:tech/utils/cooldown/init {scoreboard:item.ashy_furance.cooldown,value:100}
execute as @s[tag=item.ashy_furance.use] run scoreboard players remove @s item.ashy_furance.charge 1
execute as @s[tag=item.ashy_furance.use] at @s run function it:tech/active/ashy_furance/functions/sounds
tag @s[tag=item.ashy_furance.use] remove item.ashy_furance.use