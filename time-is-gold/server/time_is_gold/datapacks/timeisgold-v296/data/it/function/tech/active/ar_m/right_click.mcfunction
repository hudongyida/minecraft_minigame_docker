function it:tech/utils/detect/right_click {advancement:"it:active/ar_m_right_click", item:armor_stand, item_tag:ar_m, tag:item.ar_m.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.ar_m.fail, passTag:item.ar_m.use, inputTag:item.ar_m.pre, scoreboard:item.ar_m.cooldown, status:0}
tag @s[tag=item.ar_m.fail] remove item.ar_m.fail

execute as @s[tag=item.ar_m.use] run function it:tech/utils/use_cost/on_right_click {item:armor_stand, item_tag:ar_m}
execute as @s[tag=item.ar_m.use] run function it:tech/utils/cooldown/init {scoreboard:item.ar_m.cooldown, value:4}
execute as @s[tag=item.ar_m.use] run scoreboard players add @s item.ar_m.count 1

# SFX
execute as @s[tag=item.ar_m.use] at @s run playsound minecraft:block.anvil.use block @s ~ ~ ~ 0.5 2

tag @s[tag=item.ar_m.use] remove item.ar_m.use