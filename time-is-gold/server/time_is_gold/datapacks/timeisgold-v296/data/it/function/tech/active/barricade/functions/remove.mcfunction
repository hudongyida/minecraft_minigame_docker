execute as @s at @s run scoreboard players add @s item.barricade.tick 1
execute as @s if score @s item.barricade.tick matches 300 run tp @s ~ -2048 ~
execute as @s if score @s item.barricade.tick matches 300 run kill @s