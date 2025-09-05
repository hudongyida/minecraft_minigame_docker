function it:tech/utils/detect/right_click {advancement:"it:active/autophagiease_right_click", item_tag:autophagiease, tag:item.autophagiease.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.autophagiease.fail, passTag:item.autophagiease.use, inputTag:item.autophagiease.pre, scoreboard:item.autophagiease.cooldown, status:1}
tag @s[tag=item.autophagiease.fail] remove item.autophagiease.fail

execute as @s[tag=item.autophagiease.use] anchored eyes run function it:tech/active/autophagiease/raycast_call

data modify storage timeisgold:function_api stack append value {playerid:0}
execute as @s[tag=item.autophagiease.use] store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s[tag=item.autophagiease.use] at @s run function it:tech/active/autophagiease/operation/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

tag @s[tag=item.autophagiease.use] remove item.autophagiease.use