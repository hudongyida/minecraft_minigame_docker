$scoreboard players set @s monsters.utils.reward.warped $(value)
scoreboard players operation @s monsters.utils.reward.warped *= #3 scoreboardConstant
execute store result storage timeisgold:function_api stack[-1].value int 1 run scoreboard players get @s monsters.utils.reward.warped
scoreboard players reset @s monsters.utils.reward.warped