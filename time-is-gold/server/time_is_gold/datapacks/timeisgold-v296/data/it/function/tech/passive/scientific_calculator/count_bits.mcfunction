scoreboard players operation @s item.scientific_calculator.bit_check = @s item.scientific_calculator.bit_calc
scoreboard players operation @s item.scientific_calculator.bit_check %= #2 scoreboardConstant
scoreboard players operation @s item.scientific_calculator.bit_count += @s item.scientific_calculator.bit_check
scoreboard players operation @s item.scientific_calculator.bit_calc /= #2 scoreboardConstant

execute as @s if score @s item.scientific_calculator.bit_calc matches 1.. run function it:tech/passive/scientific_calculator/count_bits