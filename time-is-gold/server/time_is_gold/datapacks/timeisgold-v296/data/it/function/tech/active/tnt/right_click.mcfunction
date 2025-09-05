function it:tech/utils/detect/right_click {advancement:"it:active/tnt_right_click", item:blue_ice, item_tag:tnt, tag:item.tnt.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.tnt.fail, passTag:item.tnt.use, inputTag:item.tnt.pre, scoreboard:item.tnt.cooldown, status:1}
tag @s[tag=item.tnt.fail] remove item.tnt.fail

execute as @s[tag=item.tnt.use] at @s anchored eyes positioned ^ ^ ^ run function it:tech/active/tnt/raycast_call

tag @s[tag=item.tnt.use] remove item.tnt.use