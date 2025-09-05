# 레이저 캐논 아이템의 HUD를 표시하는 함수
# 실행 인자: @a

execute if score @s item.utils.laser_cannon.hud.tick matches 1.. run scoreboard players remove @s item.utils.laser_cannon.hud.tick 1

execute unless items entity @s weapon.mainhand *[custom_data~{laserCannon:{}}] run return fail

execute store result score @s item.utils.laser_cannon.hud.charge run data get entity @s SelectedItem.components.minecraft:custom_data.laserCannon.charge
execute store result score @s item.utils.laser_cannon.hud.catalyst run data get entity @s SelectedItem.components.minecraft:custom_data.laserCannon.catalyst
execute unless score @s item.utils.laser_cannon.hud.tick matches 1.. run title @s actionbar [{"text": "充能: ","color": "aqua"},{"score":{"name":"@s", "objective":"item.utils.laser_cannon.hud.charge"},"color": "aqua"},{"text": " | ","color": "gray"},{"text": "水晶: ","color": "gold"},{"score":{"name":"@s", "objective":"item.utils.laser_cannon.hud.catalyst"},"color": "gold"}]