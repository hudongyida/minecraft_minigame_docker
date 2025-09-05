#abilityの通常処理
#ディスプレイをtp
execute as @e[type=block_display,tag=disguise_block,tag=!decoy] at @s run function hide_and_seek:ability/hider/disguise/tp/
execute as @e[type=block_display,tag=disguise_block,tag=decoy] at @s run function hide_and_seek:ability/hider/decoy/tp/
#hiderのアビリティ処理
function hide_and_seek:ability/hider/
#seekerのアビリティ処理
function hide_and_seek:ability/seeker/


#abilityのtick処理
function hide_and_seek:ability/hider/decoy/tick
function hide_and_seek:ability/seeker/attack_bullet/tick
function hide_and_seek:ability/hider/fly_hider/tick
function hide_and_seek:ability/seeker/fly_seeker/tick

scoreboard players add @s HP 10
scoreboard players add @s MP 10

#ごり押し畑踏み荒らし防止処理
execute as @a at @s if block ~ ~-0.9 ~ minecraft:farmland run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{amplifier:20,duration:4,show_particles:false,show_icon:false,id:slow_falling}]}


# 最終処理
#player関連
function hide_and_seek:player/tick
#UI関連
execute as @a at @s run function hide_and_seek:ui/





#デバッグ用
#execute as @a[tag=hider] if score @s MP < #GameManager MP run scoreboard players add @s MP 100

#仮
effect give @a regeneration infinite 100 true
effect give @a saturation infinite 100 true

#execute as @a at @s run function hide_and_seek:test

kill @e[type=item,nbt={Item:{tag:{Tags:["no_drop"]}}}]
