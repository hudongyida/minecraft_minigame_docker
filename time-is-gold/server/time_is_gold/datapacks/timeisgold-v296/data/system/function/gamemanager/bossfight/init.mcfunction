# 보스전 시작 시 실행되는 함수

scoreboard players set #SYSTEM system.gamemanager.bossfight.start_check 1
scoreboard players set #SYSTEM system.gamemanager.bossfight.end_check 0
execute positioned -100 50 0 run function system:dungeon/boss_arena/init

execute as @n[type=armor_stand,tag=dungeon.boss_arena_entrance_pos] at @s facing entity @n[type=armor_stand,tag=dungeon.boss_arena_entrance_direction_pos,distance=..5] feet run tp @a[predicate=system:player] ~ ~ ~ ~ ~
kill @e[type=armor_stand,tag=dungeon.boss_arena_entrance_pos]
kill @e[type=armor_stand,tag=dungeon.boss_arena_entrance_direction_pos]

execute as @a at @s run function it:item_abilities_enter_bossfight

# 보스전 음악 재생
scoreboard players reset #SYSTEM bosses.utils.music.tick
function bosses:tech/utils/music/start