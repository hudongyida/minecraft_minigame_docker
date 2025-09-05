function it:tech/utils/detect/right_click {advancement:"it:expendables/time_crystal_right_click", item:gold_ingot, item_tag:time_crystal, tag:item.time_crystal.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.time_crystal.fail, passTag:item.time_crystal.use, inputTag:item.time_crystal.pre, scoreboard:item.time_crystal.cooldown, status:0}
tag @s[tag=item.time_crystal.fail] remove item.time_crystal.fail

execute as @s[tag=item.time_crystal.use] run function it:tech/utils/use_cost/on_right_click {item:gold_ingot, item_tag:time_crystal}
execute as @s[tag=item.time_crystal.use] run function system:time/reward/direct_add {value:600}
execute as @s[tag=item.time_crystal.use] run function it:tech/utils/cooldown/init {scoreboard:item.time_crystal.cooldown, value:4}
execute as @s[tag=item.time_crystal.use] at @s run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 0.5 1.66 0.5
tag @s[tag=item.time_crystal.use] remove item.time_crystal.use