function it:tech/utils/detect/right_click {advancement:"it:ranged/necro_transformer_right_click", item:"iron_horse_armor", item_tag:"necro_transformer", tag:"item.necro_transformer.pre", type:0}

execute as @s[tag=item.necro_transformer.pre] run function it:tech/ranged/necro_transformer/functions/hand

function it:tech/utils/cooldown/check {scoreboard:item.necro_transformer.cooldown, failTag:item.necro_transformer.fail, passTag:item.necro_transformer.use, inputTag:item.necro_transformer.pre, status:0}
execute as @s[tag=item.necro_transformer.fail] run tag @s remove item.necro_transformer.fail

execute as @s[tag=item.necro_transformer.use] run function it:tech/utils/cooldown/init {scoreboard:item.necro_transformer.cooldown,value:8}
execute as @s[tag=item.necro_transformer.use] if entity @s[tag=item.necro_transformer.pre_shoot] run function it:tech/ranged/necro_transformer/functions/raycast_preset
execute as @s[tag=item.necro_transformer.use] if entity @s[tag=item.necro_transformer.pre_charge] run function it:tech/ranged/necro_transformer/functions/charge_init

execute as @s[tag=item.necro_transformer.pre_shoot] run tag @s remove item.necro_transformer.pre_shoot
execute as @s[tag=item.necro_transformer.pre_charge] run tag @s remove item.necro_transformer.pre_charge
execute as @s[tag=item.necro_transformer.use] run tag @s remove item.necro_transformer.use