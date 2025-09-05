function it:tech/utils/detect/right_click {advancement:"it:expendables/milk_vanilla_gelatto_right_click", item_tag:milk_vanilla_gelatto, tag:item.milk_vanilla_gelatto.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.milk_vanilla_gelatto.fail, passTag:item.milk_vanilla_gelatto.use, inputTag:item.milk_vanilla_gelatto.pre, scoreboard:item.milk_vanilla_gelatto.cooldown, status:0}
tag @s[tag=item.milk_vanilla_gelatto.fail] remove item.milk_vanilla_gelatto.fail

execute as @s[tag=item.milk_vanilla_gelatto.use] run function it:tech/utils/use_cost/on_right_click {item:gold_nugget, item_tag:milk_vanilla_gelatto}
execute as @s[tag=item.milk_vanilla_gelatto.use] run function it:tech/utils/cooldown/init {scoreboard:item.milk_vanilla_gelatto.cooldown, value:4}
execute as @s[tag=item.milk_vanilla_gelatto.use] run effect clear @s

# SFX
execute as @s[tag=item.milk_vanilla_gelatto.use] at @s run playsound minecraft:entity.generic.eat player @s ~ ~ ~ 1 1.5

# VFX
execute at @s run particle item_snowball ~ ~1.5 ~ 0.25 0.25 0.25 1 8

tag @s[tag=item.milk_vanilla_gelatto.use] remove item.milk_vanilla_gelatto.use