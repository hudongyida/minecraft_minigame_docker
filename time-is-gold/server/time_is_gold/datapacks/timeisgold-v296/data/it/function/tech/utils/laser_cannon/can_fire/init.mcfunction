# 플레이어가 레이저 캐논에 충분한 충전/촉매를 보유하고 있는지 확인
# 실행 인자: 레이저 캐논 아이템을 사용한 플레이어
# $(tag)        - 플레이어에게 부여된 태그, 충전/촉매가 부족할 경우 삭제됨.
# $(charge)     - 1회 발사 시 필요한 충전 수
# $(catalyst)   - 1회 발사 시 필요한 촉매 수

$execute as @s[tag=$(tag)] store result score @s item.utils.laser_cannon.charge run data get entity @s SelectedItem.components.minecraft:custom_data.laserCannon.charge
$execute as @s[tag=$(tag)] store result score @s item.utils.laser_cannon.catalyst run data get entity @s SelectedItem.components.minecraft:custom_data.laserCannon.catalyst
$execute as @s[tag=$(tag)] run scoreboard players set @s item.utils.laser_cannon.charge_cost $(charge)
$execute as @s[tag=$(tag)] run scoreboard players set @s item.utils.laser_cannon.catalyst_cost $(catalyst)

# arc_fusion_core 활성화 시 처리
$execute as @s[tag=$(tag)] if score @s item.arc_fusion_core.active matches 1.. run scoreboard players set @s item.utils.laser_cannon.charge_cost 0
$execute as @s[tag=$(tag)] if score @s item.arc_fusion_core.active matches 1.. run scoreboard players operation @s item.utils.laser_cannon.catalyst_cost *= #2 scoreboardConstant

$execute as @s[tag=$(tag)] if score @s item.utils.laser_cannon.charge < @s item.utils.laser_cannon.charge_cost run tag @s add $(tag).fail.charge
$execute as @s[tag=$(tag),tag=!$(tag).fail.charge] if score @s item.utils.laser_cannon.catalyst < @s item.utils.laser_cannon.catalyst_cost run tag @s add $(tag).fail.catalyst

$execute as @s[tag=$(tag).fail.charge] at @s run function it:tech/utils/notify/init {function:"it:tech/utils/laser_cannon/notify/not_enough_charge"}
$execute as @a[tag=$(tag).fail.charge] run scoreboard players operation @s item.utils.laser_cannon.hud.tick = #SYSTEM item.utils.laser_cannon.hud.tick
$execute as @a[tag=$(tag).fail.charge] run tag @s remove $(tag)
$execute as @a[tag=$(tag).fail.charge] run tag @s remove $(tag).fail.charge

$execute as @s[tag=$(tag).fail.catalyst] at @s run function it:tech/utils/notify/init {function:"it:tech/utils/laser_cannon/notify/not_enough_catalyst"}
$execute as @a[tag=$(tag).fail.catalyst] run scoreboard players operation @s item.utils.laser_cannon.hud.tick = #SYSTEM item.utils.laser_cannon.hud.tick
$execute as @a[tag=$(tag).fail.catalyst] run tag @s remove $(tag)
$execute as @a[tag=$(tag).fail.catalyst] run tag @s remove $(tag).fail.catalyst