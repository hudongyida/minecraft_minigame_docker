# 실행 인자: @e[tag=item.mystic_force.push_target]

execute as @s[tag=boss] run return run tag @s remove item.mystic_force.push_target
execute as @s[tag=monster.fixed] run return run tag @s remove item.mystic_force.push_target

tag @s remove item.mystic_force.push_target

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s item.mystic_force.vector.x
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s item.mystic_force.vector.y
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s item.mystic_force.vector.z

# VFX
execute at @s run particle minecraft:dust{color:[0.77,0.33,0.77],scale:1} ~ ~1 ~ 0.33 0.33 0.33 1 8 force