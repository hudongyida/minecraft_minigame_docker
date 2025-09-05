function it:tech/utils/detect/right_click {advancement:"it:melee/lancet_right_click", item:iron_sword, item_tag:lancet, tag:item.lancet.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.lancet.fail, passTag:item.lancet.use, inputTag:item.lancet.pre, scoreboard:item.lancet.cooldown, status:0}
tag @s[tag=item.lancet.fail] remove item.lancet.fail

# 충전 안 된 상태 체크
execute as @s[tag=item.lancet.use] unless score @s item.lancet.charge matches 1.. run function it:tech/utils/notify/init {function:"it:tech/melee/lancet/notify/ability_not_charged"}
execute as @s[tag=item.lancet.use] unless score @s item.lancet.charge matches 1.. run tag @s remove item.lancet.use

execute as @s[tag=item.lancet.use] anchored eyes positioned ^ ^ ^ run function it:tech/melee/lancet/tracking_object_call
execute as @s[tag=item.lancet.use] run function it:tech/utils/cooldown/init {scoreboard:item.lancet.cooldown, value:20}
execute as @s[tag=item.lancet.use] run scoreboard players reset @s item.lancet.charge

# SFX
execute as @s[tag=item.lancet.use] at @s run playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 1
execute as @s[tag=item.lancet.use] at @s run playsound minecraft:entity.generic.extinguish_fire player @a ~ ~ ~ 1 2

tag @s[tag=item.lancet.use] remove item.lancet.use