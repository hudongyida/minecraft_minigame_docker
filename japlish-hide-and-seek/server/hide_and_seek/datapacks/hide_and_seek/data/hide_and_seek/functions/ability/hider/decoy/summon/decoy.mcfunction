# 诱饵用の透明なネコを召喚
$summon marker ~ ~ ~ {Rotation:[$(rotation)f,0f],Tags:["decoy_position","not_yet"]}
$execute as @e[tag=summoning,tag=no_sneaking] run summon ocelot ~ ~-100 ~ {Invulnerable:true,Rotation:[$(rotation)f,0f],Tags:["hider","decoy","decoy_operator","not_yet"],Age:0,Silent:true,Trusting:false,PersistenceRequired:true}
$execute as @e[tag=summoning,tag=is_sneaking] run summon ocelot ~ ~-100 ~ {Invulnerable:true,Rotation:[$(rotation)f,0f],NoAI:true,Tags:["hider","decoy","decoy_operator","not_yet"],Age:0,Silent:true,Trusting:false,PersistenceRequired:true}
effect give @e[type=ocelot,tag=decoy_operator,tag=not_yet] invisibility infinite 0 true
execute as @e[type=ocelot,tag=decoy_operator,tag=not_yet,sort=nearest,limit=1] at @s run tp @s @e[type=marker,tag=decoy_position,tag=not_yet,limit=1,sort=nearest]
# 拟态ブロックを召喚
$summon block_display ~ ~ ~ {Rotation:[$(rotation)f,0f],Tags:["disguise_block","decoy","decoy_block","not_yet"],transformation:{translation:[-0.5f,0.0001f,-0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1}

#hpを設定
execute as @e[type=ocelot,tag=decoy_operator,tag=not_yet,sort=nearest,limit=1] store result score @s HP run data get storage settings: ability.decoy.hp
#寿命を設定
execute store result score @e[type=ocelot,tag=decoy,tag=decoy_operator,tag=not_yet] time run data get storage settings: ability.decoy.time

#おかたづけ
kill @e[type=marker,tag=decoy_position,tag=not_yet]
data remove storage macro: decoy.rotation