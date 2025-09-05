# 실행 인자: 레이저 캐논 무기를 사용하는 플레이어
### 모든 레이저 캐논 계열 무기는 laserCannon:{charge:n, catalyst:m} 형태의 NBT를 가져야 합니다.

execute unless items entity @s weapon.mainhand *[custom_data~{laserCannon:{}}] run return fail

function it:tech/utils/detect/offhand {item_tag:gunpowder, tag:item.laser_cannon.charge.gunpowder}
function it:tech/utils/detect/offhand {item_tag:neutronium_ingot, tag:item.laser_cannon.charge.neutronium_ingot}
function it:tech/utils/detect/offhand {item_tag:time_droplet, tag:item.laser_cannon.charge.time_droplet}
execute as @s[tag=!item.laser_cannon.charge.gunpowder,tag=!item.laser_cannon.charge.neutronium_ingot,tag=!item.laser_cannon.charge.time_droplet] run tag @s add item.laser_cannnon.charge.fail
execute as @s[tag=!item.laser_cannnon.charge.fail] at @s run function it:tech/utils/laser_cannon/charge/update_item

execute as @s[tag=item.laser_cannnon.charge.fail] at @s run function it:tech/utils/notify/init {function:"it:tech/utils/laser_cannon/notify/no_required_items"}
execute as @s[tag=item.laser_cannnon.charge.fail] run scoreboard players operation @s item.utils.laser_cannon.hud.tick = #SYSTEM item.utils.laser_cannon.hud.tick

tag @s[tag=item.laser_cannon.charge.gunpowder] remove item.laser_cannon.charge.gunpowder
tag @s[tag=item.laser_cannon.charge.neutronium_ingot] remove item.laser_cannon.charge.neutronium_ingot
tag @s[tag=item.laser_cannon.charge.time_droplet] remove item.laser_cannon.charge.time_droplet
tag @s[tag=item.laser_cannnon.charge.fail] remove item.laser_cannnon.charge.fail