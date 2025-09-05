execute unless score @s monsters.floor2.riftmancer.max_summon matches 1.. run return fail
execute as @s[tag=!riftmancer.summon_operation] run return fail

execute at @s run function monsters:summon/floor2/random/floor2_melee_easy
scoreboard players remove @s monsters.floor2.riftmancer.max_summon 1

# SFX
execute at @s run playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.trial_spawner.ominous_activate block @a ~ ~ ~ 1 0.5

# VFX
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.1 20 force
execute at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.1 15 force

tag @s remove riftmancer.summon_operation