scoreboard players remove @s item.mystic_force.tick 1

scoreboard players operation @s item.mystic_force.period = @s item.mystic_force.tick
scoreboard players operation @s item.mystic_force.period %= #5 scoreboardConstant

execute if score @s item.mystic_force.period matches 0 run function it:tech/active/mystic_force/operation/push

execute if score @s item.mystic_force.tick matches 0 run function it:tech/active/mystic_force/reset_ability