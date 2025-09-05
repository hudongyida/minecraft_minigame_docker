# 실행 인자: 컷씬을 종료하는 제사장 보스 본체 엔티티

scoreboard players reset @s bosses.utils.cutscene.tick
execute at @s run tp @s @n[type=marker,tag=boss.arena_center]

data modify entity @s NoAI set value false
data modify entity @s Invulnerable set value false
data modify entity @s Silent set value false
execute as @s on passengers as @s[type=skeleton,tag=boss.the_shaman.skeleton.AI] run data modify entity @s NoAI set value false

execute at @s as @e[type=illusioner,tag=bosses.the_shaman.cutscene.prop.clone,distance=..30] at @s run function bosses:tech/the_shaman/cutscene/prop/destroy_clones

# SFX
execute at @s run playsound entity.illusioner.mirror_move hostile @a ~ ~ ~ 2 1 1