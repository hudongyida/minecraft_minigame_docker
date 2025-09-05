# 엔티티가 바라보고 있는 방향(NORTH, EAST, SOUTH, WEST)을 확인해 반환하는 함수
# 실행 인자: 방향을 확인할 엔티티

# 0 | SOUTH | Z+
# 1 | WEST  | X-
# 2 | NORTH | Z-
# 3 | EAST  | X+

#execute as @s[y_rotation=-180..-135] run return 2
#execute as @s[y_rotation=-135..-45] run return 3
#execute as @s[y_rotation=-45..45] run return 0
#execute as @s[y_rotation=45..135] run return 1
#execute as @s[y_rotation=135..180] run return 2

execute store result score @s system.utils.facing_direction.direction run data get entity @s Rotation[0] 1
scoreboard players operation @s system.utils.facing_direction.direction %= #360 scoreboardConstant

execute as @s[scores={system.utils.facing_direction.direction=..45}] run return 0
execute as @s[scores={system.utils.facing_direction.direction=45..135}] run return 1
execute as @s[scores={system.utils.facing_direction.direction=135..225}] run return 2
execute as @s[scores={system.utils.facing_direction.direction=225..315}] run return 3
execute as @s[scores={system.utils.facing_direction.direction=315..}] run return 0
return 0