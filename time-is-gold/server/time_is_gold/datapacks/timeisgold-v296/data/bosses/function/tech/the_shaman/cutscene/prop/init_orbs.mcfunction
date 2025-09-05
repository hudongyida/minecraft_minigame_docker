# 실행 인자: 컷씬 재생 중인 제사장 보스 엔티티

data modify storage timeisgold:function_api stack append value {path:"bosses:tech/the_shaman/cutscene/prop", initfunction:none, tickfunction:particle, endfunction:none, hitfunction:none,\
                                                                monsteruuid:0, targetuuid:0, target:1, speed:0.2, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:0, step:100, force_x:8, force_y:8, reflection:0}

execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] run data modify storage timeisgold:function_api stack[-1].monsteruuid set from entity @s data.bossuuid
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] run data modify storage timeisgold:function_api stack[-1].targetuuid set from entity @s data.bossuuid
execute store result storage timeisgold:function_api stack[-1].duration int 1 run scoreboard players get @s bosses.utils.cutscene.tick

execute at @s as @e[type=illusioner,tag=bosses.the_shaman.cutscene.prop.clone,distance=..30] at @s run function bosses:tech/the_shaman/cutscene/prop/launch_orbs

data remove storage timeisgold:function_api stack[-1]

# SFX
execute at @s run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 2 0.5