# 실행 인자: 6번 패턴을 실행하는 제사장 보스 본체 엔티티

execute if score @s bosses.the_shaman.pattern6.clone_count matches 5.. run scoreboard players operation @s bosses.the_shaman.pattern6.cooldown = #SYSTEM bosses.the_shaman.pattern6.cooldown
execute if score @s bosses.the_shaman.pattern6.clone_count matches 5.. run return fail

execute at @s at @n[type=marker,tag=boss.arena_center] run function bosses:tech/utils/random_pos/init {dx:10, dz:10, tag:"bosses.the_shaman.pattern6.marker.clone_pos_temp"}
execute unless entity @n[type=marker,tag=bosses.the_shaman.pattern6.marker.clone_pos_temp] run return fail

scoreboard players operation @s bosses.the_shaman.pattern6.cooldown = #SYSTEM bosses.the_shaman.pattern6.cooldown

data modify storage timeisgold:function_api stack append value {path:"bosses:tech/the_shaman/pattern6", initfunction:none, tickfunction:step, endfunction:collision, hitfunction:none,\
                                                                monsteruuid:0, targetuuid:0, target:1, speed:0.4, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:0, step:200, force_x:8, force_y:8, reflection:0}
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] run data modify storage timeisgold:function_api stack[-1].monsteruuid set from entity @s data.bossuuid
execute at @s as @n[type=marker,tag=bosses.the_shaman.pattern6.marker.clone_pos_temp] run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].targetuuid set from storage timeisgold:uuid_tokenizer output

# 보스에 타고 있는 AI 마커 
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] at @s facing entity @n[type=marker,tag=bosses.the_shaman.pattern6.marker.clone_pos_temp,distance=..30] eyes run rotate @s ~ -45
execute as @s on passengers as @s[type=marker,tag=boss.the_shaman.marker.AI] at @s anchored eyes positioned ^ ^ ^ run function monsters:tech/global/utils/tracking_object/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]

# SFX
execute at @s run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 2 0.5 1