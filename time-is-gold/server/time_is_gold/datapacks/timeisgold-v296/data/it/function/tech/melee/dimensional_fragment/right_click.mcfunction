function it:tech/utils/detect/right_click {advancement:"it:melee/dimensional_fragment_right_click", item:diamond_sword, item_tag:dimensional_fragment, tag:item.dimensional_fragment.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.dimensional_fragment.fail, passTag:item.dimensional_fragment.use, inputTag:item.dimensional_fragment.pre, scoreboard:item.dimensional_fragment.cooldown, status:0}
execute as @s[tag=item.dimensional_fragment.fail] run tag @s remove item.dimensional_fragment.fail


execute as @s[tag=item.dimensional_fragment.use] at @s if score @s item.dimensional_fragment.tick matches 1.. run tag @s add item.dimensional_fragment.deactivate
execute as @s[tag=item.dimensional_fragment.use] at @s unless score @s item.dimensional_fragment.tick matches 1.. run tag @s add item.dimensional_fragment.activate
execute as @s[tag=item.dimensional_fragment.use] at @s run tag @s remove item.dimensional_fragment.use

# item.dimensional_fragment.activate -> 무기 능력 발동
execute as @s[tag=item.dimensional_fragment.activate] at @s unless score @s item.dimensional_fragment.kills matches 5.. run function it:tech/utils/notify/init {function:"it:tech/melee/dimensional_fragment/notify/ability_not_charged"}
execute as @s[tag=item.dimensional_fragment.activate] at @s unless score @s item.dimensional_fragment.kills matches 5.. run tag @s remove item.dimensional_fragment.activate

execute as @s[tag=item.dimensional_fragment.activate] at @s run scoreboard players set @s item.dimensional_fragment.tick 120
execute as @s[tag=item.dimensional_fragment.activate] at @s run scoreboard players set @s item.dimensional_fragment.active 1
execute as @s[tag=item.dimensional_fragment.activate] at @s run function it:tech/utils/cooldown/init {scoreboard:item.dimensional_fragment.cooldown, value:4}
# 활성화 SFX
execute as @s[tag=item.dimensional_fragment.activate] at @s run playsound entity.zombie_villager.converted hostile @s ~ ~ ~ 0.5 2 0.5
execute as @s[tag=item.dimensional_fragment.activate] at @s run scoreboard players set @s item.dimensional_fragment.kills 0
execute as @s[tag=item.dimensional_fragment.activate] run tag @s remove item.dimensional_fragment.activate

# item.dimensional_fragment.deactivate -> 능력 발동 중일 때 다시 켜서 비활성화
execute as @s[tag=item.dimensional_fragment.deactivate] at @s run scoreboard players set @s item.dimensional_fragment.tick 2
execute as @s[tag=item.dimensional_fragment.deactivate] at @s run function it:tech/utils/cooldown/init {scoreboard:item.dimensional_fragment.cooldown, value:4}
execute as @s[tag=item.dimensional_fragment.deactivate] run tag @s remove item.dimensional_fragment.deactivate