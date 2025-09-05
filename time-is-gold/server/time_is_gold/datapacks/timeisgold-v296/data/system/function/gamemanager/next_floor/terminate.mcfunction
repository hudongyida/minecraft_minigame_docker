# 다음 층 던전이 생성된 이후 실행되는 함수.

# Fade Out 효과 제거
function system:ui/fade_out/terminate
function system:gamemanager/next_floor/clear_entities

execute as @a run function it:item_abilities_enter_next_floor

# 던전 입구로 플레이어 이동
execute as @n[type=armor_stand,tag=dungeon.entrance_pos] at @s facing entity @n[type=armor_stand,tag=dungeon.entrance_direction_pos,distance=..5] feet run tp @a ~ ~ ~ ~ ~

# 사망한 플레이어 부활
execute as @a[predicate=system:player_dead] at @s run function system:gamemanager/next_floor/revive_players/init

# Debug
tellraw @a [{"text":"完成! (","color": "gray"},{"score": {"name": "#SYSTEM", "objective": "system.gamemanager.dungeon_generation_tick"},"color": "gray"},{"text":" ticks)","color": "gray"}]

# 1층일 경우 게임 시작 함수 실행
execute if score #SYSTEM dungeon.floor matches 0 run function system:gamemanager/game_begin/init
execute if score #SYSTEM dungeon.floor matches 0 run schedule function system:gamemanager/next_floor/tag_terminate 20t append

# 층 정보 표기
execute if score #SYSTEM dungeon.floor matches 0 run schedule function system:gamemanager/next_floor/floor_text/floor0 30t append
execute if score #SYSTEM dungeon.floor matches 1 run schedule function system:gamemanager/next_floor/floor_text/floor1 30t append
execute if score #SYSTEM dungeon.floor matches 2 run schedule function system:gamemanager/next_floor/floor_text/floor2 30t append

# 상점 텔레포트 잠금
function system:gamemanager/teleport/shop/button/disabled

scoreboard players reset #SYSTEM system.gamemanager.next_floor_operation
kill @e[type=armor_stand,tag=dungeon.entrance_pos]
kill @e[type=armor_stand,tag=dungeon.entrance_direction_pos]