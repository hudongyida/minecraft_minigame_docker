function it:tech/utils/detect/right_click {advancement:"it:active/tremor_eye_right_click", item:armor_stand, item_tag:tremor_eye, tag:item.tremor_eye.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.tremor_eye.fail, passTag:item.tremor_eye.use, inputTag:item.tremor_eye.pre, scoreboard:item.tremor_eye.cooldown, status:0}
tag @s[tag=item.tremor_eye.fail] remove item.tremor_eye.fail

execute as @s[tag=item.tremor_eye.use] if score @s item.tremor_eye.stack matches 5.. run return run function it:tech/active/tremor_eye/operation/fail
execute as @s[tag=item.tremor_eye.use] run function it:tech/active/tremor_eye/operation/init
execute as @s[tag=item.tremor_eye.use] run function it:tech/utils/use_cost/on_right_click {item_tag:tremor_eye}
execute as @s[tag=item.tremor_eye.use] run function it:tech/utils/cooldown/init {scoreboard:item.tremor_eye.cooldown, value:10}

# SFX
execute as @s[tag=item.tremor_eye.use] at @s run playsound minecraft:entity.ender_eye.death neutral @s ~ ~ ~ 1 1

tag @s[tag=item.tremor_eye.use] remove item.tremor_eye.use