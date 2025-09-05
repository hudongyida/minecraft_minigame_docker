execute as @s at @s run playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 1 0.5 0
tellraw @s {"translate":"system.gamemanager.teleport.shop.click_event.cannot_teleport"}