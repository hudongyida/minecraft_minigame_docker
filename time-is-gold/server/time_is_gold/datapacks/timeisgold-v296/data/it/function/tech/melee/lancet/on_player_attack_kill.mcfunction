scoreboard players set @s item.lancet.charge 1

# SFX
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1

# HUD
title @s actionbar {"translate": "item.lancet.notify.ability_charged"}