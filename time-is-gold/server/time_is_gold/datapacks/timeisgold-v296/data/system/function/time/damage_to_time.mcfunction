execute if score @s system.time.damage_taken matches 1.. run tag @s add system.time.calculate_damage

execute as @s[tag=system.time.calculate_damage] if entity @s run function it:item_abilities_modify_damage
execute as @s[tag=system.time.calculate_damage] if entity @s unless score @s system.time.damage_taken matches 0 run function system:time/calculate_damage
execute as @s[tag=system.time.calculate_damage] if entity @s unless score @s system.time.damage_taken matches 0 run scoreboard players operation @s timeX10 -= @s system.time.damage_taken
execute as @s[tag=system.time.calculate_damage] if entity @s unless score @s system.time.damage_taken matches 0 run function it:item_abilities_damage_taken
execute as @s[tag=system.time.calculate_damage] if entity @s unless score @s system.time.damage_taken matches 0 run scoreboard players operation @s system.damage_indicator.hp_delta = @s system.time.damage_taken
execute as @s[tag=system.time.calculate_damage] if entity @s unless score @s system.time.damage_taken matches 0 run function system:combat/damage_indicator/display {prefix:"-", suffix:"s", color:"#ff5555"}
execute as @s[tag=system.time.calculate_damage] if entity @s run scoreboard players reset @s system.time.damage_taken
tag @s[tag=system.time.calculate_damage] remove system.time.calculate_damage