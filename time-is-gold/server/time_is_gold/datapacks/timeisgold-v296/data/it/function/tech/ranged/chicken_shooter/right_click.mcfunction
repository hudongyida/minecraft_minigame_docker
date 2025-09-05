function it:tech/utils/detect/right_click {advancement:"it:ranged/chicken_shooter_right_click", item_tag:chicken_shooter, tag:item.chicken_shooter.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.chicken_shooter.fail, passTag:item.chicken_shooter.use, inputTag:item.chicken_shooter.pre, scoreboard:item.chicken_shooter.cooldown, status:1}
tag @s[tag=item.chicken_shooter.fail] remove item.chicken_shooter.fail

execute as @s[tag=item.chicken_shooter.use] run function it:tech/utils/cooldown/init {scoreboard:item.chicken_shooter.cooldown, value:180}
execute as @s[tag=item.chicken_shooter.use] run function it:tech/utils/use_cost/time {cost:30}
execute as @s[tag=item.chicken_shooter.use] at @s run function it:tech/ranged/chicken_shooter/functions/init

execute as @s[tag=item.chicken_shooter.use] at @s run playsound minecraft:entity.firework_rocket.shoot neutral @a ~ ~ ~ 1 1.5 0
execute as @s[tag=item.chicken_shooter.use] at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:pale_oak_leaves ~ ~ ~ 0.15 0.15 0.15 1 5 force
execute as @s[tag=item.chicken_shooter.use] at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:cloud ~ ~ ~ 0.15 0.15 0.15 1 5 force

tag @s[tag=item.chicken_shooter.use] remove item.chicken_shooter.use