function it:tech/utils/detect/right_click {advancement:"it:ranged/euclidean_transformer_right_click", item:"iron_horse_armor", item_tag:"euclidean_transformer", tag:"item.euclidean_transformer.pre", type:1}
function it:tech/utils/cooldown/check {scoreboard:item.euclidean_transformer.cooldown, failTag:item.euclidean_transformer.fail, passTag:item.euclidean_transformer.use, inputTag:item.euclidean_transformer.pre, status:0}
tag @s[tag=item.euclidean_transformer.fail] remove item.euclidean_transformer.fail

execute as @s[tag=item.euclidean_transformer.use] if predicate it:sneaking run tag @s add item.euclidean_transformer.charge
execute as @s[tag=item.euclidean_transformer.use] unless predicate it:sneaking run tag @s add item.euclidean_transformer.fire
tag @s[tag=item.euclidean_transformer.use] remove item.euclidean_transformer.use

# 발사
execute as @s[tag=item.euclidean_transformer.fire] run function it:tech/utils/laser_cannon/can_fire/init {charge:1, catalyst:1, tag:item.euclidean_transformer.fire}

execute as @s[tag=item.euclidean_transformer.fire] at @s anchored eyes positioned ^ ^ ^ run function it:tech/ranged/euclidean_transformer/raycast_call

execute as @s[tag=item.euclidean_transformer.fire] run function it:tech/utils/cooldown/init {scoreboard:item.euclidean_transformer.cooldown, value:20}
execute as @s[tag=item.euclidean_transformer.fire] run function it:tech/utils/use_cost/laser_cannon_charge {charge:1, catalyst:1}
# SFX
execute as @s[tag=item.euclidean_transformer.fire] at @s run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 0.5 1 0.25
tag @s[tag=item.euclidean_transformer.fire] remove item.euclidean_transformer.fire

# 충전
execute as @a[tag=item.euclidean_transformer.charge] run function it:tech/utils/laser_cannon/charge/init
execute as @a[tag=item.euclidean_transformer.charge] run function it:tech/utils/cooldown/init {scoreboard:item.euclidean_transformer.cooldown, value:5}
tag @s[tag=item.euclidean_transformer.charge] remove item.euclidean_transformer.charge