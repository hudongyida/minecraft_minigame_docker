function it:tech/utils/detect/right_click {advancement:"it:active/emp_generator_right_click", item:player_head, item_tag:emp_generator, tag:item.emp_generator.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.emp_generator.fail, passTag:item.emp_generator.use, inputTag:item.emp_generator.pre, scoreboard:item.emp_generator.cooldown, status:1}
execute as @s[tag=item.emp_generator.fail] run tag @s remove item.emp_generator.fail

execute as @s[tag=item.emp_generator.use] run function it:tech/utils/cooldown/init {scoreboard:item.emp_generator.cooldown, value:900}
execute as @s[tag=item.emp_generator.use] at @s run function system:vfx/expand_circle/init {R:0.150, G:0.500, B:1.000, range:12, step:5}
execute as @s[tag=item.emp_generator.use] at @s run playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 1 0.5 1
execute as @s[tag=item.emp_generator.use] at @s run data modify storage timeisgold:function_api stack append value {playerid:0}
execute as @s[tag=item.emp_generator.use] at @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s[tag=item.emp_generator.use] at @s as @e[tag=monster,distance=..12] run function it:tech/active/emp_generator/functions/generate with storage timeisgold:function_api stack[-1]
execute as @s[tag=item.emp_generator.use] at @s run data remove storage timeisgold:function_api stack[-1]
execute as @s[tag=item.emp_generator.use] run tag @s remove item.emp_generator.use