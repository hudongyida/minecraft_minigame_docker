# 다음 층 던전을 생성하는 함수.

scoreboard players add #SYSTEM dungeon.floor 1
scoreboard players set #SYSTEM dungeon.room_id 0
scoreboard players set #SYSTEM system.gamemanager.next_floor_operation 1
scoreboard players set #SYSTEM system.gamemanager.dungeon_generation_check 0
scoreboard players set #SYSTEM system.gamemanager.dungeon_generation_tick 0
scoreboard players set #SYSTEM system.gamemanager.floor_started 0
scoreboard players set #SYSTEM system.gamemanager.bossfight.start_check 0
scoreboard players set #SYSTEM system.gamemanager.bossfight.end_check 0
scoreboard players operation #SYSTEM system.gamemanager.floor_started.room_count = #SYSTEM dungeon.room_id

# 층별 던전 컨피그
function system:gamemanager/next_floor/config

# Fade Out 효과 재생
function system:ui/fade_out/begin

# 마지막 층을 지났을 경우 게임 클리어
execute if score #SYSTEM dungeon.floor > #SYSTEM dungeon.final_floor run return run schedule function system:gamemanager/game_clear/init 20t

# Fade Out 이후 제너레이터 실행
schedule function system:gamemanager/next_floor/run_generator 20t
tellraw @a [{"text": "生成中...","color": "gray"}]