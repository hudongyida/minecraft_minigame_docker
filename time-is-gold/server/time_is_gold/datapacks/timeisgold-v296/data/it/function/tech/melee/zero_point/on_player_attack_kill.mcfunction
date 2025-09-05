scoreboard players add @s item.zero_point.charge 1

# SFX
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1

# HUD
execute if score @s item.zero_point.charge matches 2.. run title @s actionbar {"translate": "item.zero_point.notify.ability_charged"}