function it:tech/utils/detect/right_click {advancement:"it:melee/condenser_right_click", item:iron_sword, item_tag:condenser, tag:item.condenser.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.condenser.fail, passTag:item.condenser.use, inputTag:item.condenser.pre, scoreboard:item.condenser.cooldown, status:0}
tag @s[tag=item.condenser.fail] remove item.condenser.fail

# 충전 안 된 상태 체크
execute as @s[tag=item.condenser.use] unless score @s item.condenser.charge matches 1.. run function it:tech/utils/notify/init {function:"it:tech/melee/condenser/notify/ability_not_charged"}
execute as @s[tag=item.condenser.use] unless score @s item.condenser.charge matches 1.. run tag @s remove item.condenser.use

execute as @s[tag=item.condenser.use] anchored eyes positioned ^ ^ ^ run function it:tech/melee/condenser/tracking_object_call
execute as @s[tag=item.condenser.use] run function it:tech/utils/cooldown/init {scoreboard:item.condenser.cooldown, value:20}
execute as @s[tag=item.condenser.use] run scoreboard players reset @s item.condenser.charge

# SFX
execute as @s[tag=item.condenser.use] at @s run playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 1
execute as @s[tag=item.condenser.use] at @s run playsound minecraft:block.sculk_shrieker.break block @a ~ ~ ~ 1 1

tag @s[tag=item.condenser.use] remove item.condenser.use