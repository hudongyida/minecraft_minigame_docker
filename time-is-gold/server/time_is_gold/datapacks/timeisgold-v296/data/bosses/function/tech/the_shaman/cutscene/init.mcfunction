# 실행 인자: 컷씬 초기화 중인 제사장 보스 엔티티

scoreboard players operation @s bosses.utils.cutscene.tick = #SYSTEM bosses.utils.cutscene.tick

data modify entity @s NoAI set value true
data modify entity @s Invulnerable set value true
data modify entity @s Silent set value true
execute as @s on passengers as @s[type=skeleton,tag=boss.the_shaman.skeleton.AI] run data modify entity @s NoAI set value true

execute at @s at @n[type=marker,tag=boss.arena_center] run tp @s ~ ~3 ~
execute at @s at @n[type=marker,tag=boss.arena_center] run function bosses:tech/the_shaman/cutscene/prop/place_clones

tag @s remove boss.the_shaman.play_cutscene