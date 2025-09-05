execute unless score @s item.blackjack.rank_sum matches 0.. run scoreboard players set @s item.blackjack.rank_sum 0

# SFX
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1
playsound minecraft:entity.item.break player @s ~ ~ ~ 0.5 1

# VFX
particle crit ~ ~1 ~ 0.25 0.5 0.25 0.1 5 force

# HUD
title @s actionbar [{"text": "你的总分是 ", "color": "white"},{"score": {"name": "@s", "objective": "item.blackjack.rank_sum"}, "color": "white"},{"text": ". "},{"text": "再试一次！","color": "white","bold": true}]