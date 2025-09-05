$execute as @s run tag @s add turret_id_$(uuid0)

# plate
$execute at @s run summon block_display ~ ~ ~ {Tags:["turret_id_$(uuid0)","turret","turret_plate"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:smoker"}}

# axis
$execute at @s run summon block_display ~ ~1 ~ {Tags:["turret_id_$(uuid0)","turret","turret_axis"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,-0.2f],scale:[0.4f,0.2f,0.4f]},block_state:{Name:"minecraft:polished_basalt",Properties:{axis:"y"}}}

# head
$execute at @s run summon block_display ~ ~1.5 ~ {Tags:["turret_id_$(uuid0)","turret","turret_head","turret_getid_head"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.44f],scale:[1f,1f,1.25f]},block_state:{Name:"minecraft:grindstone",Properties:{face:"wall"}},teleport_duration:1}
$execute at @s as @e[tag=turret_getid_head,sort=nearest,limit=1] run scoreboard players set @s monsters.floor1.turret_id $(uuid0)
execute at @s as @e[tag=turret_getid_head,sort=nearest,limit=1] run tag @s remove turret_getid_head

# hitbox
$execute at @s align xyz positioned ~.5 ~ ~.5 run summon minecraft:slime ~ ~ ~ {Tags:["turret_id_$(uuid0)","turret","turret_hitbox","turret_noInvi","monster","ranged","machine","monster.fixed","monster.stun_exception"],NoAI:1b,Size:2,Silent:1b,attributes:[{id:"minecraft:max_health",base:15},{id:"minecraft:armor",base:0}],Health:15,PersistenceRequired:true,PortalCooldown:2147483647,DeathLootTable:"it:monster/loot",Passengers:[{id:"minecraft:marker",Tags:["turret_id_$(uuid0)","turret","turret.death_checker"],data:{id:$(uuid0)}}]}
$execute at @s as @e[type=slime,tag=turret_noInvi,sort=nearest,limit=1] run scoreboard players set @s monsters.floor1.turret_id $(uuid0)
execute at @s as @e[type=slime,tag=turret_noInvi,sort=nearest,limit=1] run effect give @s minecraft:invisibility infinite 1 true
execute at @s as @e[type=slime,tag=turret_noInvi,sort=nearest,limit=1] run tag @s remove turret_noInvi

# score id
$scoreboard players set @s monsters.floor1.turret_id $(uuid0)