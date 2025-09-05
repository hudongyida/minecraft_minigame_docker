function it:tech/utils/detect/right_click {advancement:"it:active/supercooled_ice_right_click", item:blue_ice, item_tag:supercooled_ice, tag:item.supercooled_ice.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.supercooled_ice.fail, passTag:item.supercooled_ice.use, inputTag:item.supercooled_ice.pre, scoreboard:item.supercooled_ice.cooldown, status:1}
tag @s[tag=item.supercooled_ice.fail] remove item.supercooled_ice.fail

execute as @s[tag=item.supercooled_ice.use] at @s anchored eyes positioned ^ ^ ^ run function it:tech/active/supercooled_ice/raycast_call

tag @s[tag=item.supercooled_ice.use] remove item.supercooled_ice.use