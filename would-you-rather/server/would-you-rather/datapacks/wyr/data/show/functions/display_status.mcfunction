title @s[tag=success] title [{"text":"成功!","color":"green"}]
title @s[tag=fail] title [{"text":"失败!","color":"red"}]
title @s[tag=skipped_scenario] title [{"text":"跳过!","color":"red"}]
tag @a remove skipped_scenario
title @s subtitle {"text":" "}
execute if entity @s[tag=success] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" +","color":"green"},{"score":{"objective":"adjust_points","name":"@s"},"color":"green"}]
execute if entity @s[tag=fail] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" +0","color":"red"}]
execute if entity @s[tag=success] run scoreboard players add @s stats_successes 1
execute if entity @s[tag=fail] run scoreboard players add @s stats_fails 1

execute if entity @s[tag=fail] run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000000 0.5
execute if entity @s[tag=fail] run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000000 0.55
execute if entity @s[tag=fail] run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000000 0.6
execute if entity @s[tag=fail] run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000000 0.65
execute if entity @s[tag=fail] run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000000 0.7
execute if entity @s[tag=fail] run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000000 0.75
execute if score $criteria round matches 1.. run title @a[tag=playing] subtitle [{"text":"回合 ","color":"blue"},{"score":{"objective":"round","name":"$round"},"color":"blue"}]