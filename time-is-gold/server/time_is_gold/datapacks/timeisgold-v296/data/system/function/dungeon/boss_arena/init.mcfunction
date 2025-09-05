# 보스전 아레나 구조물을 배치하는 함수
# 실행 인자: 없음
# 실행 위치: 보스전 아레나 및 다음 층 포탈 구조물이 배치될 위치

function system:dungeon/boss_arena/set_config
execute positioned ~ ~ ~ run function system:dungeon/boss_arena/place_marker with storage timeisgold:function_api stack[-1]
execute positioned ~ ~ ~ run function system:dungeon/boss_arena/place_structure/init with storage timeisgold:function_api stack[-1]

# 보스 소환 작업 실행
execute as @e[type=armor_stand,tag=dungeon.bossfight.armor_stand.boss_arena] at @s as @e[type=armor_stand,tag=dungeon.bossfight_pos,dx=48,dy=-256,dz=48] at @s run function bosses:summon/init

# 포탈 방으로 향하는 문 비활성화
execute as @e[type=armor_stand,tag=dungeon.bossfight.armor_stand.boss_arena] at @s run function system:dungeon/boss_arena/disable_door with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]