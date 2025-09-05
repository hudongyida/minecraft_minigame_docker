function it:tech/utils/detect/right_click {advancement:"it:melee/rapier_right_click", item_tag:rapier, tag:item.rapier.cooldown, type:1}

function it:tech/utils/cooldown/check {failTag:item.rapier.fail, passTag:item.rapier.use, inputTag:item.rapier.cooldown, scoreboard:item.rapier.cooldown, status:1}
execute as @s[tag=item.rapier.fail] run tag @s remove item.rapier.fail

execute as @s[tag=item.rapier.use] run function it:tech/melee/rapier/functions/step_preset
execute as @s[tag=item.rapier.use] run function it:tech/melee/rapier/functions/lunge_preset
execute as @s[tag=item.rapier.use] run function it:tech/utils/use_cost/time {cost:50}
execute as @s[tag=item.rapier.use] run function it:tech/utils/cooldown/init {scoreboard:item.rapier.cooldown, value:40}
execute as @s[tag=item.rapier.use] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 2 0
execute as @s[tag=item.rapier.use] at @s run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.2 0
execute as @s[tag=item.rapier.use] run tag @s remove item.rapier.use