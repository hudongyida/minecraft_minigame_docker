# SFX
execute at @s run playsound minecraft:block.vault.open_shutter block @s ~ ~ ~ 1 1

# VFX
execute at @s run particle firework ~ ~1 ~ 0.2 0.5 0.2 0.1 8 force

# HUD
title @s actionbar {"translate": "dungeon.rooms.notify.clear"}