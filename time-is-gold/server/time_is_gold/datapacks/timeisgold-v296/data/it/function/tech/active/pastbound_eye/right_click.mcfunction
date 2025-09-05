function it:tech/utils/detect/right_click {advancement:"it:active/pastbound_eye_right_click", item:armor_stand, item_tag:pastbound_eye, tag:item.pastbound_eye.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.pastbound_eye.fail, passTag:item.pastbound_eye.use, inputTag:item.pastbound_eye.pre, scoreboard:item.pastbound_eye.cooldown, status:0}
tag @s[tag=item.pastbound_eye.fail] remove item.pastbound_eye.fail

execute as @s[tag=item.pastbound_eye.use] run function it:tech/active/pastbound_eye/operation/init
execute as @s[tag=item.pastbound_eye.use] run function it:tech/utils/use_cost/on_right_click {item_tag:pastbound_eye}
execute as @s[tag=item.pastbound_eye.use] run function it:tech/utils/cooldown/init {scoreboard:item.pastbound_eye.cooldown, value:10}

# SFX
execute as @s[tag=item.pastbound_eye.use] at @s run playsound minecraft:entity.ender_eye.death neutral @s ~ ~ ~ 1 1

tag @s[tag=item.pastbound_eye.use] remove item.pastbound_eye.use