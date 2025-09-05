function it:tech/utils/detect/right_click {advancement:"it:ranged/teardrop_right_click", item:ghast_tear, item_tag:teardrop, tag:item.teardrop.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.teardrop.fail, passTag:item.teardrop.use, inputTag:item.teardrop.pre, scoreboard:item.teardrop.cooldown, status:0}
execute as @s[tag=item.teardrop.fail] run tag @s remove item.teardrop.fail

execute as @s[tag=item.teardrop.use] at @s anchored eyes positioned ^ ^ ^1 run function it:tech/ranged/teardrop/throw_item_call
execute as @s[tag=item.teardrop.use] run function it:tech/utils/cooldown/init {scoreboard:item.teardrop.cooldown, value:5}
execute as @s[tag=item.teardrop.use] run function it:tech/utils/use_cost/time {cost:2}

# SFX
execute as @s[tag=item.teardrop.use] at @s run playsound entity.axolotl.idle_water neutral @a ~ ~ ~ 1 0.75

tag @s[tag=item.teardrop.use] remove item.teardrop.use
advancement revoke @s only it:ranged/teardrop_right_click