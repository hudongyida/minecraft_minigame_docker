function it:tech/utils/detect/right_click {advancement:"it:passive/placeholder_right_click", item_tag:placeholder, tag:item.placeholder.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.placeholder.fail, passTag:item.placeholder.use, inputTag:item.placeholder.pre, scoreboard:item.placeholder.cooldown, status:1}
tag @s[tag=item.placeholder.fail] remove item.placeholder.fail

execute as @s[tag=item.placeholder.use] run function it:tech/passive/placeholder/operation/init
execute as @s[tag=item.placeholder.use] run function it:tech/utils/cooldown/init {scoreboard:item.placeholder.cooldown, value:1200}

# SFX
execute as @s[tag=item.placeholder.use] at @s run playsound minecraft:block.anvil.use block @s ~ ~ ~ 0.5 2

tag @s[tag=item.placeholder.use] remove item.placeholder.use