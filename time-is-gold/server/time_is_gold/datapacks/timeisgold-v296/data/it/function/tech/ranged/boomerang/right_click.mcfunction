function it:tech/utils/detect/right_click {advancement:"it:ranged/boomerang_right_click", item:melon_slice, item_tag:boomerang, tag:item.boomerang.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.boomerang.fail, passTag:item.boomerang.use, inputTag:item.boomerang.pre, scoreboard:item.boomerang.cooldown, status:0}
tag @s[tag=item.boomerang.fail] remove item.boomerang.fail

# Transform: x, y, z, w 순서
execute as @s[tag=item.boomerang.use] at @s anchored eyes positioned ^ ^ ^1 run function it:tech/ranged/boomerang/throw_item_call
execute as @s[tag=item.boomerang.use] run function it:tech/utils/cooldown/init {scoreboard:item.boomerang.cooldown, value:20}
execute as @s[tag=item.boomerang.use] run function it:tech/utils/use_cost/time {cost:40}

# SFX
execute as @s[tag=item.boomerang.use] at @s run playsound item.trident.throw player @a ~ ~ ~ 0.33 0.66 0

tag @s[tag=item.boomerang.use] remove item.boomerang.use