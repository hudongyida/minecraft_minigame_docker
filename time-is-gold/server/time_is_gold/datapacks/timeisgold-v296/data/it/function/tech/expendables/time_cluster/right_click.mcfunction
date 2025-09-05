function it:tech/utils/detect/right_click {advancement:"it:expendables/time_cluster_right_click", item:gold_block, item_tag:time_cluster, tag:item.time_cluster.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.time_cluster.fail, passTag:item.time_cluster.use, inputTag:item.time_cluster.pre, scoreboard:item.time_cluster.cooldown, status:0}
tag @s[tag=item.time_cluster.fail] remove item.time_cluster.fail

execute as @s[tag=item.time_cluster.use] run function it:tech/utils/use_cost/on_right_click {item:gold_block, item_tag:time_cluster}
execute as @s[tag=item.time_cluster.use] run function system:time/reward/direct_add {value:3000}
execute as @s[tag=item.time_cluster.use] run function it:tech/utils/cooldown/init {scoreboard:item.time_cluster.cooldown, value:4}
execute as @s[tag=item.time_cluster.use] at @s run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 0.5 1.66 0.5
tag @s[tag=item.time_cluster.use] remove item.time_cluster.use