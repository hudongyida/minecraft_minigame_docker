# 보스 종류 설정
execute if score #SYSTEM dungeon.floor matches 1 run scoreboard players set #SYSTEM dungeon.bossfight.randomizer 0
execute if score #SYSTEM dungeon.floor matches 2 run scoreboard players set #SYSTEM dungeon.bossfight.randomizer 0
execute if score #SYSTEM dungeon.floor matches 3 run scoreboard players set #SYSTEM dungeon.bossfight.randomizer 0
execute if score #SYSTEM dungeon.floor matches 4 run scoreboard players set #SYSTEM dungeon.bossfight.randomizer 0

# 보스전 컨피그 설정(스택에 데이터가 저장됨)
execute if score #SYSTEM dungeon.floor matches 1 if score #SYSTEM dungeon.bossfight.randomizer matches 0 run function system:dungeon/boss_arena/config/automaton
execute if score #SYSTEM dungeon.floor matches 2 if score #SYSTEM dungeon.bossfight.randomizer matches 0 run function system:dungeon/boss_arena/config/the_shaman

# 중심 X 오프셋 설정
execute store result storage timeisgold:function_api stack[-1].center_x_offset int 0.5 run data get storage timeisgold:function_api stack[-1].x 1
execute store result storage timeisgold:function_api stack[-1].portal_z_center int 0.5 run data get storage timeisgold:function_api stack[-1].portal.z 1