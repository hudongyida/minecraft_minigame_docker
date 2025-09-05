execute as @s at @s run title @s actionbar {"text":"能力已处于激活状态！","color":"red"}
execute as @s at @s run playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 0.5 0.5 0.5
scoreboard players operation @s item.utils.laser_cannon.hud.tick = #SYSTEM item.utils.laser_cannon.hud.tick