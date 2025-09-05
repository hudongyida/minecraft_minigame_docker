# 실행 인자: @e[tag=monster]

execute as @s[tag=monster.warped] unless score @s monsters.global.effect.warped_attribute_check matches 1 if entity @s run tag @s add monsters.warped.activate
execute as @s[tag=!monster.warped,scores={monsters.global.effect.warped_attribute_check=1..}] if entity @s run tag @s add monsters.warped.deactivate

execute as @s[tag=monsters.warped.activate] run function monsters:tech/global/effect/warped/add_warped_state
execute as @s[tag=monsters.warped.deactivate] run function monsters:tech/global/effect/warped/remove_warped_state

tag @s[tag=monsters.warped.activate] remove monsters.warped.activate
tag @s[tag=monsters.warped.deactivate] remove monsters.warped.deactivate