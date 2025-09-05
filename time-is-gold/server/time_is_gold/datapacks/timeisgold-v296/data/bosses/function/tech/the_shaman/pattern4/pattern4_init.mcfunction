scoreboard players operation @s bosses.the_shaman.pattern4.cooldown = #SYSTEM bosses.the_shaman.pattern4.cooldown

execute at @s as @a[predicate=system:player,distance=..50] at @s run function bosses:tech/the_shaman/pattern4/summon_pos
execute unless entity @e[type=marker,tag=bosses.the_shaman.pattern4.marker.tp_pos] run return fail

data modify storage timeisgold:function_api stack append value {originuuid:"", targetuuid:"", speed:1, step:50, tickfunction:"bosses:tech/the_shaman/pattern4/vfx/trail"}
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] run data modify storage timeisgold:function_api stack[-1].targetuuid set from entity @s data.bossuuid
execute at @s run summon marker ~ ~1 ~ {Tags:["bosses.the_shaman.pattern4.marker.tp_trail"]}
execute at @s positioned ~ ~1 ~ as @n[type=marker,tag=bosses.the_shaman.pattern4.marker.tp_trail,distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].originuuid set from storage timeisgold:uuid_tokenizer output

tp @s @e[type=marker,tag=bosses.the_shaman.pattern4.marker.tp_pos,sort=random,limit=1]

# SFX
execute at @s run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ 1 0.5 1

# VFX
function system:vfx/connection_ray/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
kill @e[type=marker,tag=bosses.the_shaman.pattern4.marker.tp_pos]
kill @n[type=marker,tag=bosses.the_shaman.pattern4.marker.tp_trail]