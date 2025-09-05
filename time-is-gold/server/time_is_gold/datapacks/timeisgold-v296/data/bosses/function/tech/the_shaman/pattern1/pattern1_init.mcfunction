# 실행 인자: 제사장 보스 엔티티

scoreboard players operation @s bosses.the_shaman.pattern1.cooldown = #SYSTEM bosses.the_shaman.pattern1.cooldown

data modify storage timeisgold:function_api stack append value {path:"bosses:tech/the_shaman/pattern1", initfunction:none, tickfunction:debug, hitfunction:none, endfunction:summon_marker,\
                                                                monsteruuid:0, target:1, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:0, step:40, system:1}
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] at @s run data modify storage timeisgold:function_api stack[-1].monsteruuid set from entity @s data.bossuuid
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] at @s run rotate @s ~ 90
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] at @s run function monsters:tech/global/utils/raycast/default/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
execute at @s run playsound minecraft:block.amethyst_block.break block @a ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:entity.elder_guardian.hurt hostile @a ~ ~ ~ 2 1