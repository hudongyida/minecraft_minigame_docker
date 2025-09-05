function it:tech/utils/detect/offhand {item_tag:gunpowder, tag:item.laser_cannon.charge.gunpowder}
function it:tech/utils/detect/offhand {item_tag:time_droplet, tag:item.laser_cannon.charge.time_droplet}
execute as @s[tag=!item.laser_cannon.charge.gunpowder,tag=!item.laser_cannon.charge.time_droplet] run tag @s add item.laser_cannnon.charge.fail
execute as @s[tag=!item.laser_cannnon.charge.fail] at @s run function it:tech/utils/laser_cannon/charge/update_item

execute as @s[tag=item.laser_cannnon.charge.fail] at @s run function it:tech/utils/notify/init {function:"it:tech/utils/laser_cannon/notify/no_required_items"}
execute as @s[tag=item.laser_cannnon.charge.fail] run scoreboard players operation @s item.utils.laser_cannon.hud.tick = #SYSTEM item.utils.laser_cannon.hud.tick

execute as @s[tag=item.laser_cannon.charge.gunpowder] run tag @s remove item.laser_cannon.charge.gunpowder
execute as @s[tag=item.laser_cannon.charge.neutronium_ingot] run tag @s remove item.laser_cannon.charge.neutronium_ingot
execute as @s[tag=item.laser_cannon.charge.time_droplet] run tag @s remove item.laser_cannon.charge.time_droplet
execute as @s[tag=item.laser_cannnon.charge.fail] run tag @s remove item.laser_cannnon.charge.fail