function it:tech/utils/detect/right_click {advancement:"it:melee/plasma_sabre_right_click", item:"diamond_sword", item_tag:"plasma_sabre", tag:"item.plasma_sabre.pre", type:1}
function it:tech/utils/cooldown/check {scoreboard:item.plasma_sabre.cooldown, failTag:item.plasma_sabre.fail, passTag:item.plasma_sabre.use, inputTag:item.plasma_sabre.pre, status:0}
tag @s[tag=item.plasma_sabre.fail] remove item.plasma_sabre.fail

execute as @s[tag=item.plasma_sabre.use] if predicate it:sneaking run tag @s add item.plasma_sabre.charge
execute as @s[tag=item.plasma_sabre.use] unless predicate it:sneaking run tag @s add item.plasma_sabre.activate
tag @s[tag=item.plasma_sabre.use] remove item.plasma_sabre.use

# 능력 활성화
execute as @s[tag=item.plasma_sabre.activate] run function it:tech/utils/laser_cannon/can_fire/init {charge:1, catalyst:1, tag:item.plasma_sabre.activate}

execute as @s[tag=item.plasma_sabre.activate] if score @s item.plasma_sabre.active_tick matches 1.. run function it:tech/utils/notify/init {function:"it:tech/melee/plasma_sabre/notify/ability_already_active"}
execute as @s[tag=item.plasma_sabre.activate] if score @s item.plasma_sabre.active_tick matches 1.. run tag @s remove item.plasma_sabre.activate

execute as @s[tag=item.plasma_sabre.activate] run function it:tech/utils/cooldown/init {scoreboard:item.plasma_sabre.cooldown, value:4}
execute as @s[tag=item.plasma_sabre.activate] run function it:tech/utils/use_cost/laser_cannon_charge {charge:1, catalyst:1}
execute as @s[tag=item.plasma_sabre.activate] run scoreboard players set @s item.plasma_sabre.active_tick 200
# SFX
#execute as @a[tag=item.plasma_sabre.activate] at @s run playsound minecraft:block.note_block.didgeridoo block @a ~ ~ ~ 0.7 0.8 0
execute as @s[tag=item.plasma_sabre.activate] at @s run playsound block.trial_spawner.ominous_activate block @a ~ ~ ~ 0.7 2 0
execute as @s[tag=item.plasma_sabre.activate] at @s run playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 1 0.8 0
tag @s[tag=item.plasma_sabre.activate] remove item.plasma_sabre.activate

# 충전
execute as @s[tag=item.plasma_sabre.charge] run function it:tech/utils/laser_cannon/charge/init
execute as @s[tag=item.plasma_sabre.charge] run function it:tech/utils/cooldown/init {scoreboard:item.plasma_sabre.cooldown, value:5}
tag @s[tag=item.plasma_sabre.charge] remove item.plasma_sabre.charge