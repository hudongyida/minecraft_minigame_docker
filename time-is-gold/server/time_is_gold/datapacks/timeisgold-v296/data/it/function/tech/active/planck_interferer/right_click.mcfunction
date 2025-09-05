function it:tech/utils/detect/right_click {advancement:"it:active/planck_interferer_right_click", item:magma_cream, item_tag:planck_interferer, tag:item.planck_interferer.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.planck_interferer.fail, passTag:item.planck_interferer.use, inputTag:item.planck_interferer.pre, scoreboard:item.planck_interferer.cooldown, status:1}
tag @s[tag=item.planck_interferer.fail] remove item.planck_interferer.fail

execute as @s[tag=item.planck_interferer.use] anchored eyes run function it:tech/active/planck_interferer/raycast_call

data modify storage timeisgold:function_api stack append value {playerid:0}
execute as @s[tag=item.planck_interferer.use] store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s[tag=item.planck_interferer.use] as @s run function it:tech/active/planck_interferer/teleport with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

tag @s[tag=item.planck_interferer.use] remove item.planck_interferer.use