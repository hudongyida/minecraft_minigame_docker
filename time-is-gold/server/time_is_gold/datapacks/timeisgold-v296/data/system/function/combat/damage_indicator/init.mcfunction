scoreboard players operation @s system.damage_indicator.hp_delta = @s system.damage_indicator.hp_previous
scoreboard players operation @s system.damage_indicator.hp_delta -= @s system.damage_indicator.hp
scoreboard players operation @s system.damage_indicator.hp_previous = @s system.damage_indicator.hp
execute if score @s system.damage_indicator.hp_delta matches 1.. run function system:combat/damage_indicator/display {prefix:"-", suffix:"s", color:"#55ff55"}
execute if score @s system.damage_indicator.hp_delta matches ..-1 run function system:combat/damage_indicator/display {prefix:"+", suffix:"s", color:"#ffaa00"}