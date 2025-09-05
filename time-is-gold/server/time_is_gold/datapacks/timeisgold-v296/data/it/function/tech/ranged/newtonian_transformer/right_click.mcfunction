function it:tech/utils/detect/right_click {advancement:"it:ranged/newtonian_transformer_right_click", item:"golden_horse_armor", item_tag:"newtonian_transformer", tag:"item.newtonian_transformer.pre", type:1}
function it:tech/utils/cooldown/check {scoreboard:item.newtonian_transformer.cooldown, failTag:item.newtonian_transformer.fail, passTag:item.newtonian_transformer.use, inputTag:item.newtonian_transformer.pre, status:0}
tag @s[tag=item.newtonian_transformer.fail] remove item.newtonian_transformer.fail

execute as @s[tag=item.newtonian_transformer.use] if predicate it:sneaking run tag @s add item.newtonian_transformer.charge
execute as @s[tag=item.newtonian_transformer.use] unless predicate it:sneaking run tag @s add item.newtonian_transformer.fire
tag @s[tag=item.newtonian_transformer.use] remove item.newtonian_transformer.use

# 발사
execute as @s[tag=item.newtonian_transformer.fire] run function it:tech/utils/laser_cannon/can_fire/init {charge:1, catalyst:1, tag:item.newtonian_transformer.fire}
execute as @s[tag=item.newtonian_transformer.fire] at @s anchored eyes positioned ^ ^ ^ run function it:tech/ranged/newtonian_transformer/raycast_call
execute as @s[tag=item.newtonian_transformer.fire] run function it:tech/utils/cooldown/init {scoreboard:item.newtonian_transformer.cooldown, value:20}
execute as @s[tag=item.newtonian_transformer.fire] run function it:tech/utils/use_cost/laser_cannon_charge {charge:1, catalyst:1}
# SFX
execute as @s[tag=item.newtonian_transformer.fire] at @s run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 0.5 1 0.25
tag @s[tag=item.newtonian_transformer.fire] remove item.newtonian_transformer.fire

# 충전
execute as @s[tag=item.newtonian_transformer.charge] run function it:tech/utils/laser_cannon/charge/init
execute as @s[tag=item.newtonian_transformer.charge] run function it:tech/utils/cooldown/init {scoreboard:item.newtonian_transformer.cooldown, value:5}
tag @s[tag=item.newtonian_transformer.charge] remove item.newtonian_transformer.charge