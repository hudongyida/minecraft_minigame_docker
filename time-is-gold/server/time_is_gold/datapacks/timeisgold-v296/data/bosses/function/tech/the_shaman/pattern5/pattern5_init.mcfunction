scoreboard players set @s bosses.the_shaman.pattern3.cooldown 2147483647
scoreboard players set @s bosses.the_shaman.pattern4.cooldown 2147483647
scoreboard players set @s bosses.the_shaman.pattern4.marker_tick 2147483647
scoreboard players set @s bosses.the_shaman.pattern5.cooldown 2147483647
kill @e[type=marker,tag=bosses.the_shaman.pattern4.marker]

data modify entity @s NoAI set value true
execute as @s on passengers as @s[type=skeleton,tag=boss.the_shaman.skeleton.AI] run data modify entity @s NoAI set value true
execute at @s at @n[type=marker,tag=boss.arena_center] run tp @s ~ ~3 ~

effect give @s minecraft:resistance infinite 1 false
execute as @s run function bosses:tech/utils/bossbar/manager {id:0, function:"bosses:tech/the_shaman/pattern5/operation/bossbar_resistance"}

# SFX
execute at @s run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 4 1 1
execute at @s run playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 2 1 1

scoreboard players reset @s bosses.the_shaman.pattern5.sfx.count
scoreboard players set @s bosses.the_shaman.pattern5.sfx.period 60

# 패턴 종류 및 시간 설정
function bosses:tech/the_shaman/pattern5/patterns/set_config

# 패턴 시작 시 선딜
scoreboard players add @s bosses.the_shaman.pattern5.tick 30