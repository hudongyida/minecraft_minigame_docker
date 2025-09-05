function it:tech/utils/detect/right_click {advancement:"it:active/pyrogel_right_click", item_tag:pyrogel, tag:item.pyrogel.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.pyrogel.fail, passTag:item.pyrogel.use, inputTag:item.pyrogel.pre, scoreboard:item.pyrogel.cooldown, status:1}
execute as @s[tag=item.pyrogel.fail] run tag @s remove item.pyrogel.fail

execute as @s[tag=item.pyrogel.use] at @s run function it:tech/active/pyrogel/functions/place_init
execute as @s[tag=item.pyrogel.use] run tag @s remove item.pyrogel.use