$scoreboard players set @s monsters.utils.reward.player $(value)

execute if score #SYSTEM system.gamemanager.count.player_max matches 1 run scoreboard players operation @s monsters.utils.reward.player *= #2 scoreboardConstant

execute if score #SYSTEM system.gamemanager.count.player_max matches 2 run scoreboard players operation @s monsters.utils.reward.player *= #3 scoreboardConstant
execute if score #SYSTEM system.gamemanager.count.player_max matches 2 run scoreboard players operation @s monsters.utils.reward.player /= #2 scoreboardConstant

execute if score #SYSTEM system.gamemanager.count.player_max matches 3 run scoreboard players operation @s monsters.utils.reward.player *= #5 scoreboardConstant
execute if score #SYSTEM system.gamemanager.count.player_max matches 3 run scoreboard players operation @s monsters.utils.reward.player /= #4 scoreboardConstant

execute store result storage timeisgold:function_api stack[-1].value int 1 run scoreboard players get @s monsters.utils.reward.player
scoreboard players reset @s monsters.utils.reward.player