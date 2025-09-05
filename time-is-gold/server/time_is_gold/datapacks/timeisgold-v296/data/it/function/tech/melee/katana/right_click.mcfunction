function it:tech/utils/detect/right_click {advancement:"it:melee/katana_right_click", item:iron_sword, item_tag:katana, tag:item.katana.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.katana.fail, passTag:item.katana.use, inputTag:item.katana.pre, scoreboard:item.katana.cooldown, status:0}
tag @s[tag=item.katana.fail] remove item.katana.fail

execute as @s[tag=item.katana.use] at @s anchored eyes positioned ^ ^ ^ run function it:tech/melee/katana/raycast_call
execute as @s[tag=item.katana.use] run function it:tech/utils/use_cost/time {cost:40}
execute as @s[tag=item.katana.use] run function it:tech/utils/cooldown/init {scoreboard:item.katana.cooldown, value:30}

# SFX
execute as @s[tag=item.katana.use] at @s run playsound minecraft:item.trident.throw ambient @s ~ ~ ~ 0.7 0.1 0.7

tag @s[tag=item.katana.use] remove item.katana.use
advancement revoke @s only it:melee/katana_right_click