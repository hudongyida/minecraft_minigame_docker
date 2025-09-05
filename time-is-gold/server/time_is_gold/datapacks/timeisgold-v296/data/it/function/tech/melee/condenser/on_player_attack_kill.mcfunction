scoreboard players set @s item.condenser.charge 1

# SFX
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1

# HUD
title @s actionbar {"translate": "item.condenser.notify.ability_charged"}