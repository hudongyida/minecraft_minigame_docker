# SFX
playsound minecraft:entity.sheep.death neutral @s ~ ~ ~ 2 0.5
playsound minecraft:entity.cow.ambient neutral @s ~ ~ ~ 1 2

# VFX
particle angry_villager ~ ~1 ~ 0.25 0.5 0.25 0.1 10 force

# HUD
title @s actionbar [{"text": "你的总分是 ", "color": "red"},{"score": {"name": "@s", "objective": "item.blackjack.rank_sum"}, "color": "red"},{"text": ". "},{"text": "兄弟！","color": "red","bold": true}]