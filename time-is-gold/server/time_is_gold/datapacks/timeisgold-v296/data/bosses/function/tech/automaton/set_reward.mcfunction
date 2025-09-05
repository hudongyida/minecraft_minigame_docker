# 오토마톤 보스전 이후 보스방 가운데에 보상 상자를 생성하는 함수
# 실행 인자: @n[type=marker,tag=boss.arena_center]

execute if score #SYSTEM dungeon.floor >= #SYSTEM dungeon.final_floor run return run kill @s

execute at @s run setblock ~ ~ ~ minecraft:chest{LootTable:"system:boss_reward/automaton"} replace
execute at @s run data modify block ~ ~ ~ CustomName set value {"text":"战利品宝箱","color":"dark_gray"}
kill @s