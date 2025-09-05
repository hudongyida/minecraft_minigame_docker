function it:tech/utils/detect/right_click {advancement:"it:ranged/flamethrower_right_click", item_tag:flamethrower, tag:item.flamethrower.use, type:0}
tag @s[tag=item.flamethrower.fail] remove item.flamethrower.fail

#execute as @s[tag=item.flamethrower.use] run function it:tech/utils/cooldown/init {scoreboard:item.flamethrower.cooldown, value:4}
execute as @s[tag=item.flamethrower.use] at @s anchored eyes positioned ^ ^ ^ run function it:tech/ranged/flamethrower/raycast_call

# SFX
#execute as @s[tag=item.flamethrower.use] at @s run playsound minecraft:entity.ender_dragon.shoot player @s ~ ~ ~ 0.5 0 0
execute as @s[tag=item.flamethrower.use] at @s if predicate system:periodic_tick_3 run playsound minecraft:item.firecharge.use block @s ~ ~ ~ 0.2 0 0

tag @s[tag=item.flamethrower.use] remove item.flamethrower.use