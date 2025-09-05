function it:tech/utils/detect/right_click {advancement:"it:expendables/time_droplet_right_click", item:gold_nugget, item_tag:time_droplet, tag:item.time_droplet.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.time_droplet.fail, passTag:item.time_droplet.use, inputTag:item.time_droplet.pre, scoreboard:item.time_droplet.cooldown, status:0}
tag @s[tag=item.time_droplet.fail] remove item.time_droplet.fail

execute as @s[tag=item.time_droplet.use] run function it:tech/utils/use_cost/on_right_click {item:gold_nugget, item_tag:time_droplet}
execute as @s[tag=item.time_droplet.use] run function system:time/reward/direct_add {value:100}
execute as @s[tag=item.time_droplet.use] run function it:tech/utils/cooldown/init {scoreboard:item.time_droplet.cooldown, value:4}
execute as @s[tag=item.time_droplet.use] at @s run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 0.5 1.66 0.5
tag @s[tag=item.time_droplet.use] remove item.time_droplet.use