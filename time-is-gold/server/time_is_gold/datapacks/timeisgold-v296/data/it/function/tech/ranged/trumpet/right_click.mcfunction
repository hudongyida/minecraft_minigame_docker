function it:tech/utils/detect/right_click {advancement:"it:ranged/trumpet_right_click", item_tag:trumpet, tag:item.trumpet.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.trumpet.fail, passTag:item.trumpet.use, inputTag:item.trumpet.pre, scoreboard:item.trumpet.cooldown, status:1}
tag @s[tag=item.trumpet.fail] remove item.trumpet.fail

execute as @s[tag=item.trumpet.use] unless function it:tech/ranged/trumpet/functions/in_inventory run function it:tech/ranged/trumpet/functions/fail
execute as @s[tag=item.trumpet.use] at @s run playsound minecraft:item.goat_horn.sound.0 block @a ~ ~ ~ 1 1.5 0
execute as @s[tag=item.trumpet.use] at @s run particle note ~ ~1 ~ 1 1 1 0.05 10 force
execute as @s[tag=item.trumpet.use] at @s anchored eyes positioned ^ ^ ^1 run particle flash ~ ~ ~ 0 0 0 1 1 force

execute as @s[tag=item.trumpet.use] run clear @s *[custom_data~{item:gunpowder}] 1
execute as @s[tag=item.trumpet.use] run function it:tech/utils/cooldown/init {scoreboard:item.trumpet.cooldown, value:100}

execute as @s[tag=item.trumpet.use] at @s run function it:tech/ranged/trumpet/functions/init
tag @s[tag=item.trumpet.use] remove item.trumpet.use