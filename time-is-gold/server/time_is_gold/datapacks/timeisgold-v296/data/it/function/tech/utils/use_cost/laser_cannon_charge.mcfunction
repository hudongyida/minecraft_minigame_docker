# 실행 인자: 레이저 캐논 무기를 사용하는 플레이어
### 모든 레이저 캐논 계열 무기는 laserCannon:{charge:n, catalyst:m} 형태의 NBT를 가져야 합니다.
# $(charge)     - 사용 시 소모할 충전 횟수
# $(catalyst)   - 사용 시 소모할 촉매 수

execute unless data entity @s SelectedItem.components.minecraft:custom_data.laserCannon run return fail

execute store result score @s item.utils.laser_cannon.charge run data get entity @s SelectedItem.components.minecraft:custom_data.laserCannon.charge
execute store result score @s item.utils.laser_cannon.catalyst run data get entity @s SelectedItem.components.minecraft:custom_data.laserCannon.catalyst
$scoreboard players set @s item.utils.laser_cannon.charge_cost $(charge)
$scoreboard players set @s item.utils.laser_cannon.catalyst_cost $(catalyst)

# arc_fusion_core 활성화 처리
execute if score @s item.arc_fusion_core.active matches 1.. run scoreboard players set @s item.utils.laser_cannon.charge_cost 0
execute if score @s item.arc_fusion_core.active matches 1.. run scoreboard players operation @s item.utils.laser_cannon.catalyst_cost *= #4 scoreboardConstant

scoreboard players operation @s item.utils.laser_cannon.charge -= @s item.utils.laser_cannon.charge_cost
scoreboard players operation @s item.utils.laser_cannon.catalyst -= @s item.utils.laser_cannon.catalyst_cost

execute at @s run summon armor_stand ~ ~ ~ {Tags:["item.laser_cannon.armor_stand.cost"], Invisible:true, NoGravity:true}
execute at @s run item replace entity @e[tag=item.laser_cannon.armor_stand.cost,sort=nearest,limit=1] weapon.mainhand from entity @s weapon.mainhand
execute at @s store result entity @e[tag=item.laser_cannon.armor_stand.cost,sort=nearest,limit=1] equipment.mainhand.components.minecraft:custom_data.laserCannon.charge int 1 run scoreboard players get @s item.utils.laser_cannon.charge
execute at @s store result entity @e[tag=item.laser_cannon.armor_stand.cost,sort=nearest,limit=1] equipment.mainhand.components.minecraft:custom_data.laserCannon.catalyst int 1 run scoreboard players get @s item.utils.laser_cannon.catalyst
execute at @s run item replace entity @s weapon.mainhand from entity @e[tag=item.laser_cannon.armor_stand.cost,sort=nearest,limit=1] weapon.mainhand
execute at @s run kill @e[tag=item.laser_cannon.armor_stand.cost]