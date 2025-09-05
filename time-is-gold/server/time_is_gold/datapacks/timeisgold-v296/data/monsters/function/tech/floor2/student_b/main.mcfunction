execute if score @s monsters.floor2.student_b.recharge matches 1.. run scoreboard players remove @s monsters.floor2.student_b.recharge 1
execute if score @s[tag=!student_b.ability_enabled] monsters.floor2.student_b.recharge matches 0 run function monsters:tech/floor2/student_b/operation/recharge

execute as @s[tag=!student_b.ability_enabled] run return fail

execute if predicate monsters:player_target run function monsters:tech/floor2/student_b/operation/init