function it:tech/utils/detect/right_click {advancement:"it:ranged/antique_transformer_right_click", item_tag:"antique_transformer", tag:"item.antique_transformer.pre", type:1}
function it:tech/utils/cooldown/check {scoreboard:item.antique_transformer.cooldown, failTag:item.antique_transformer.fail, passTag:item.antique_transformer.key, inputTag:item.antique_transformer.pre, status:0}
tag @s[tag=item.antique_transformer.fail] remove item.antique_transformer.fail

execute as @s[tag=item.antique_transformer.key] run function it:tech/ranged/antique_transformer/functions/input

function it:tech/utils/laser_cannon/can_fire/init {charge:1, catalyst:1, tag:item.antique_transformer.fire}
execute as @s[tag=item.antique_transformer.fire] at @s run function it:tech/ranged/antique_transformer/functions/preset
execute as @s[tag=item.antique_transformer.fire] run function it:tech/utils/cooldown/init {scoreboard:item.antique_transformer.cooldown, value:60}
execute as @s[tag=item.antique_transformer.fire] run tag @s remove item.antique_transformer.fire

execute as @s[tag=item.antique_transformer.charge] run function it:tech/ranged/antique_transformer/functions/charge
execute as @s[tag=item.antique_transformer.charge] run function it:tech/utils/cooldown/init {scoreboard:item.antique_transformer.cooldown, value:5}
tag @s[tag=item.antique_transformer.charge] remove item.antique_transformer.charge