function it:tech/utils/detect/right_click {advancement:"it:active/mystic_force_right_click", item_tag:mystic_force, tag:item.mystic_force.pre, type:0}
function it:tech/utils/cooldown/check {scoreboard:item.mystic_force.cooldown, failTag:item.mystic_force.fail, passTag:item.mystic_force.use, inputTag:item.mystic_force.pre, status:1}
tag @s[tag=item.mystic_force.fail] remove item.mystic_force.fail

execute as @s[tag=item.mystic_force.use] run scoreboard players set @s item.mystic_force.cooldown 100000
execute as @s[tag=item.mystic_force.use] run scoreboard players set @s item.mystic_force.tick 50
execute as @s[tag=item.mystic_force.use] run scoreboard players set #MAX_VALUE item.mystic_force.tick 50
execute as @s[tag=item.mystic_force.use] run scoreboard players operation @s item.mystic_force.sfx.max_tick = #MAX_VALUE item.mystic_force.tick
execute as @s[tag=item.mystic_force.use] run scoreboard players reset @s item.mystic_force.step_count

tag @s[tag=item.mystic_force.use] remove item.mystic_force.use