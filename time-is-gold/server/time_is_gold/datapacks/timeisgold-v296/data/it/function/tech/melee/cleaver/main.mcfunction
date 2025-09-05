execute as @a unless items entity @s weapon.mainhand *[custom_data~{item:cleaver}] if score @s item.cleaver.dealt_damage matches 1.. run scoreboard players reset @s item.cleaver.dealt_damage

execute as @a if score @s item.cleaver.damage_init matches 2.. run function it:tech/melee/cleaver/functions/dealt
execute as @a if score @s item.cleaver.damage_init matches 1 run scoreboard players add @s item.cleaver.damage_init 1