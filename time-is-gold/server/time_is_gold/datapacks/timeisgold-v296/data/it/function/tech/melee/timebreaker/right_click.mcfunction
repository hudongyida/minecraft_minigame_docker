function it:tech/utils/detect/right_click {advancement:"it:melee/timebreaker_right_click", item_tag:timebreaker, tag:item.timebreaker.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.timebreaker.fail, passTag:item.timebreaker.use, inputTag:item.timebreaker.pre, scoreboard:item.timebreaker.cooldown, status:1}
execute as @s[tag=item.timebreaker.fail] run tag @s remove item.timebreaker.fail

execute as @s[tag=item.timebreaker.use] at @s anchored eyes positioned ^ ^ ^1 run function it:tech/melee/timebreaker/call_preset
execute as @s[tag=item.timebreaker.use] run function it:tech/utils/cooldown/init {scoreboard:item.timebreaker.cooldown, value:40}
execute as @s[tag=item.timebreaker.use] run function it:tech/utils/use_cost/time {cost:70}
execute as @s[tag=item.timebreaker.use] at @s run function it:tech/melee/timebreaker/functions/throw_sound
execute as @s[tag=item.timebreaker.use] at @s run tag @s remove item.timebreaker.use