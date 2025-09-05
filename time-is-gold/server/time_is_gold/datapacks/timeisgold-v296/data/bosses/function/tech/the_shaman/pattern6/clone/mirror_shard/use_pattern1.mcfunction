scoreboard players operation @s bosses.the_shaman.pattern1.cooldown = #SYSTEM bosses.the_shaman.pattern1.cooldown

data modify storage timeisgold:function_api stack append value {bossuuid:""}
execute as @s on passengers as @s[type=marker,tag=bosses.the_shaman.pattern6.clone.marker.manager] at @s run data modify storage timeisgold:function_api stack[-1].bossuuid set from entity @s data.bossuuid
execute at @s run function bosses:tech/the_shaman/pattern6/clone/mirror_shard/summon_marker with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
execute at @s run playsound minecraft:block.amethyst_block.break block @a ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:entity.elder_guardian.hurt hostile @a ~ ~ ~ 2 1