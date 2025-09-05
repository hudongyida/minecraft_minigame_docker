function it:tech/utils/detect/right_click {advancement:"it:melee/tomahawk_right_click", item:iron_axe, item_tag:tomahawk, tag:item.tomahawk.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.tomahawk.fail, passTag:item.tomahawk.use, inputTag:item.tomahawk.pre, scoreboard:item.tomahawk.cooldown, status:0}
execute as @s[tag=item.tomahawk.fail] run tag @s remove item.tomahawk.fail

execute as @s[tag=item.tomahawk.use] at @s anchored eyes positioned ^ ^ ^1 run function it:tech/melee/tomahawk/throw_item_call
execute as @s[tag=item.tomahawk.use] run function it:tech/utils/cooldown/init {scoreboard:item.tomahawk.cooldown, value:20}
execute as @s[tag=item.tomahawk.use] run function it:tech/utils/use_cost/time {cost:20}

# SFX
execute as @s[tag=item.tomahawk.use] at @s run playsound item.trident.throw player @s ~ ~ ~ 0.33 1.5 0.33

tag @s[tag=item.tomahawk.use] remove item.tomahawk.use