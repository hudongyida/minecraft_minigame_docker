scoreboard players operation @s system.time.display_integer = @s timeX10
scoreboard players operation @s system.time.display_integer /= #10 scoreboardConstant
scoreboard players operation @s system.time.display_decimal = @s timeX10
scoreboard players operation @s system.time.display_decimal %= #10 scoreboardConstant

#function system:time/interface/value