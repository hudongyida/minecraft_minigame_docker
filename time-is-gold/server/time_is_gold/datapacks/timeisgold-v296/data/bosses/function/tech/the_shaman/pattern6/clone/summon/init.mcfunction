# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern6.marker.clone_pos_temp]

$summon illusioner ~ ~ ~ {\
    NoAI:true,\
    Silent:true,\
    Health:1024.0f,\
    Invulnerable:true,\
    Tags:["boss.the_shaman.pattern6.clone","boss.the_shaman.pattern6.clone.uninitialized"],\
    Passengers:[{id:"minecraft:marker", Tags:["bosses.the_shaman.pattern6.clone.marker.manager"], data:{bossuuid:"$(bossuuid)", selfuuid:""}}],\
    attributes:[{id:"minecraft:max_health",base:1024.0d}, {id:"minecraft:movement_speed",base:0.001d}, {id:"minecraft:knockback_resistance",base:1d}],\
    active_effects:[{id:"minecraft:resistance",amplifier:20,duration:-1,show_particles:false}],\
    PersistenceRequired:true,\
    CanPickUpLoot:false,\
    PortalCooldown:2147483647,\
    SpellTicks:2147483647,\
    DeathLootTable:"none"}

$scoreboard players add $(bossuuid) bosses.the_shaman.pattern6.clone_count 1
execute positioned ~ ~ ~ as @n[type=illusioner,tag=boss.the_shaman.pattern6.clone.uninitialized,distance=..0.5] run function bosses:tech/the_shaman/pattern6/clone/summon/set_data

# SFX
execute at @s run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1 1

kill @s