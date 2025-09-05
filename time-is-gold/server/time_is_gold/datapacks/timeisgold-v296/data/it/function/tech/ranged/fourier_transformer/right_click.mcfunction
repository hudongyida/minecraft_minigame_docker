function it:tech/utils/detect/right_click {advancement:"it:ranged/fourier_transformer_right_click", item:"golden_horse_armor", item_tag:"fourier_transformer", tag:"item.fourier_transformer.pre", type:1}
function it:tech/utils/cooldown/check {scoreboard:item.fourier_transformer.cooldown, failTag:item.fourier_transformer.fail, passTag:item.fourier_transformer.use, inputTag:item.fourier_transformer.pre, status:0}
tag @s[tag=item.fourier_transformer.fail] remove item.fourier_transformer.fail

execute as @s[tag=item.fourier_transformer.use] if predicate it:sneaking run tag @s add item.fourier_transformer.charge
execute as @s[tag=item.fourier_transformer.use] unless predicate it:sneaking run tag @s add item.fourier_transformer.fire
execute as @s[tag=item.fourier_transformer.use] run tag @s remove item.fourier_transformer.use

# 발사
execute as @s[tag=item.fourier_transformer.fire] run function it:tech/utils/laser_cannon/can_fire/init {charge:1, catalyst:1, tag:item.fourier_transformer.fire}

execute as @s[tag=item.fourier_transformer.fire] at @s anchored eyes positioned ^ ^ ^ run function it:tech/ranged/fourier_transformer/raycast_call

execute as @s[tag=item.fourier_transformer.fire] run function it:tech/utils/cooldown/init {scoreboard:item.fourier_transformer.cooldown, value:20}
execute as @s[tag=item.fourier_transformer.fire] run function it:tech/utils/use_cost/laser_cannon_charge {charge:1, catalyst:1}
# SFX
execute as @s[tag=item.fourier_transformer.fire] at @s run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 0.5 1 0.25
execute as @s[tag=item.fourier_transformer.fire] at @s run playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 0.25 2 0.125
tag @s[tag=item.fourier_transformer.fire] remove item.fourier_transformer.fire

# 충전
execute as @s[tag=item.fourier_transformer.charge] run function it:tech/utils/laser_cannon/charge/init
execute as @s[tag=item.fourier_transformer.charge] run function it:tech/utils/cooldown/init {scoreboard:item.fourier_transformer.cooldown, value:5}
tag @s[tag=item.fourier_transformer.charge] remove item.fourier_transformer.charge