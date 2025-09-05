
execute as @e[tag=monster] unless score @s system.damage_indicator.hp_previous matches 0.. store result score @s system.damage_indicator.hp_previous run data get entity @s Health 10
execute as @e[tag=monster] store result score @s system.damage_indicator.hp run data get entity @s Health 10

execute as @e[tag=monster] unless score @s system.damage_indicator.hp = @s system.damage_indicator.hp_previous run function system:combat/damage_indicator/init

execute as @e[type=text_display,tag=system.damage_indicator.display] run scoreboard players remove @s system.damage_indicator.display_tick 1
execute as @e[type=text_display,tag=system.damage_indicator.display] at @s if predicate system:periodic_tick_2 run tp @s ~ ~0.05 ~
execute as @e[type=text_display,tag=system.damage_indicator.display] if score @s system.damage_indicator.display_tick matches ..0 run kill @s