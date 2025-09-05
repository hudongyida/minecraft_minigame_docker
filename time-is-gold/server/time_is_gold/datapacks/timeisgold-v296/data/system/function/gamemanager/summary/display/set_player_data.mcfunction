scoreboard players operation @s system.gamemanager.summary.time_earned.integer = @s system.gamemanager.summary.time_earned
scoreboard players operation @s system.gamemanager.summary.time_earned.decimal = @s system.gamemanager.summary.time_earned
scoreboard players operation @s system.gamemanager.summary.time_earned.integer /= #10 scoreboardConstant
scoreboard players operation @s system.gamemanager.summary.time_earned.decimal %= #10 scoreboardConstant

scoreboard players operation @s system.gamemanager.summary.damage_taken.integer = @s system.gamemanager.summary.damage_taken
scoreboard players operation @s system.gamemanager.summary.damage_taken.decimal = @s system.gamemanager.summary.damage_taken
scoreboard players operation @s system.gamemanager.summary.damage_taken.integer /= #10 scoreboardConstant
scoreboard players operation @s system.gamemanager.summary.damage_taken.decimal %= #10 scoreboardConstant

scoreboard players operation @s system.gamemanager.summary.monsters_killed > #0 scoreboardConstant