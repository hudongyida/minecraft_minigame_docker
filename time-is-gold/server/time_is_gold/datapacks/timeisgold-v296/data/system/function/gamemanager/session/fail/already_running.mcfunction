execute if score #SYSTEM system.gamemanager.notify_cooldown matches 1.. run return fail

# SFX
execute as @a at @s run playsound entity.enderman.teleport hostile @s ~ ~ ~ 1 0.5

# HUD
title @a actionbar [{"translate": "system.gamemanager.session.fail.notify.already_running"}]
scoreboard players set #SYSTEM system.gamemanager.notify_cooldown 100