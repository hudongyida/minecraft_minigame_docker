function it:tech/utils/detect/right_click {advancement:"it:active/taser_right_click", item_tag:taser, tag:item.taser.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.taser.fail, passTag:item.taser.use, inputTag:item.taser.pre, scoreboard:item.taser.cooldown, status:1}
tag @s[tag=item.taser.fail] remove item.taser.fail

execute as @s[tag=item.taser.use] anchored eyes run function it:tech/active/taser/raycast
execute as @s[tag=item.taser.use] run function it:tech/utils/cooldown/init {scoreboard:item.taser.cooldown, value:100}
execute as @s[tag=item.taser.use] run function it:tech/utils/use_cost/time {cost:10}
execute as @s[tag=item.taser.use] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 1 2 0.1

tag @s[tag=item.taser.use] remove item.taser.use