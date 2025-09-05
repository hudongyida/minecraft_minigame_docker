# Warped Weight
execute as @s[tag=monster.warped] on attacker run function monsters:reward/warped_value with storage timeisgold:function_api stack[-1]

# Player Weight
execute if score #SYSTEM system.gamemanager.count.player_max matches ..3 run function monsters:reward/player_value