function it:tech/passive/noble_leap/operation/reset

# SFX
execute at @s run playsound block.note_block.bass block @s ~ ~ ~ 0.5 0.5

# HUD
title @s actionbar [{translate: "item.noble_leap.notify.fail"}]