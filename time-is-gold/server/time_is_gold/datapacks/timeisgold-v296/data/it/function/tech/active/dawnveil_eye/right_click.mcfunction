function it:tech/utils/detect/right_click {advancement:"it:active/dawnveil_eye_right_click", item_tag:dawnveil_eye, tag:item.dawnveil_eye.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.dawnveil_eye.fail, passTag:item.dawnveil_eye.use, inputTag:item.dawnveil_eye.pre, scoreboard:item.dawnveil_eye.cooldown, status:0}
tag @s[tag=item.dawnveil_eye.fail] remove item.dawnveil_eye.fail

execute as @s[tag=item.dawnveil_eye.use] if score @s item.dawnveil_eye.stack matches 5.. run return run function it:tech/active/dawnveil_eye/operation/fail
execute as @s[tag=item.dawnveil_eye.use] run function it:tech/active/dawnveil_eye/operation/init
execute as @s[tag=item.dawnveil_eye.use] run function it:tech/utils/use_cost/on_right_click {item_tag:dawnveil_eye}
execute as @s[tag=item.dawnveil_eye.use] run function it:tech/utils/cooldown/init {scoreboard:item.dawnveil_eye.cooldown, value:10}

# SFX
execute as @s[tag=item.dawnveil_eye.use] at @s run playsound minecraft:entity.ender_eye.death neutral @s ~ ~ ~ 1 1

tag @s[tag=item.dawnveil_eye.use] remove item.dawnveil_eye.use