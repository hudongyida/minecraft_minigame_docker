scoreboard players operation @s item.scientific_calculator.bit_calc = @s item.scientific_calculator.time_integer
scoreboard players set @s item.scientific_calculator.bit_count 0

execute as @s run function it:tech/passive/scientific_calculator/count_bits

scoreboard players operation @s item.scientific_calculator.damage_bonus = @s item.scientific_calculator.bit_count
scoreboard players operation @s item.scientific_calculator.damage_bonus *= #5 scoreboardConstant
scoreboard players operation @s item.scientific_calculator.time_integer_previous = @s item.scientific_calculator.time_integer