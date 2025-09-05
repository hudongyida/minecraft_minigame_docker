execute at @s if entity @n[tag=monster,distance=..25] run return run function system:gamemanager/teleport/shop/click_event/in_combat
execute at @s if score #SYSTEM system.gamemanager.bossfight.start_check matches 1 run return run function system:gamemanager/teleport/shop/click_event/cancel
execute if score @s system.teleport.shop.cooldown matches 1.. run return run function system:gamemanager/teleport/shop/click_event/cooldown

execute at @s at @n[type=marker,tag=dungeon.teleport_shop] run tp @s ~ ~ ~
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~ ~ 1 1
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.8 0.5 0.5 20 force
scoreboard players set @s system.teleport.shop.cooldown 300