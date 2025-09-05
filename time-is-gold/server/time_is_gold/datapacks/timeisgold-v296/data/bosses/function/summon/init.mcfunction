# 보스전 진입 후 보스 소환 설정 함수
# 실행 인자: @e[type=armor_stand,tag=dungeon.bossfight_pos]

# Automaton
execute as @s[tag=automaton] run function bosses:summon/automaton

# The Shaman
execute as @s[tag=the_shaman] run function bosses:summon/the_shaman

# 보스전 아레나 중심 태그
execute as @s[tag=bossfight_center] at @s align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:[boss.arena_center], data:{bossuuid:""}}

kill @s