scoreboard players operation @s bosses.the_shaman.pattern3.cooldown = #SYSTEM bosses.the_shaman.pattern3.cooldown
scoreboard players operation @s bosses.the_shaman.pattern4.cooldown = #SYSTEM bosses.the_shaman.pattern4.cooldown
scoreboard players set @s bosses.the_shaman.pattern4.marker_tick 0
scoreboard players operation @s bosses.the_shaman.pattern5.cooldown = #SYSTEM bosses.the_shaman.pattern5.cooldown
scoreboard players reset @s bosses.the_shaman.pattern5.tick
scoreboard players reset @s bosses.the_shaman.pattern5.type

data modify entity @s NoAI set value false
execute as @s on passengers as @s[type=skeleton,tag=boss.the_shaman.skeleton.AI] run data modify entity @s NoAI set value false
execute as @s run function bosses:tech/utils/bossbar/manager {id:0, function:"bosses:tech/the_shaman/pattern5/operation/bossbar_normal"}

effect clear @s minecraft:resistance

execute at @s positioned ~-3 ~ ~-3 run tp @s @n[type=marker,tag=boss.arena_center,dx=6,dy=-32,dz=6]

# SFX
execute at @s run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 4 1 1