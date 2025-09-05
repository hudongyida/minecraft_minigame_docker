# warning: 이 친구 독립적으로 소환되는 몬스터 아닙니다.

$summon phantom ~ ~ ~ {\
    Health:5.0f,\
    NoAI:true,\
    Tags:["monsters", "drone", "admin.kill_on_reset", "drone.work", "machine"],\
    attributes:[{id:"minecraft:max_health",base:5},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:armor",base:0},{id:"minecraft:attack_damage",base:0},{id:"minecraft:movement_speed",base:1}],\
    drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},\
    CanPickUpLoot:false,\
    DeathLootTable:"system:placeholder/none",\
    PortalCooldown:2147483647,\
    PersistenceRequired:true,\
    Invulnerable:true,\
    data:{id:$(id)},\
    Glowing:true\
    }

scoreboard players operation @n[type=phantom,tag=drone,distance=..1] monsters.floor1.drone.tick = #SYSTEM monsters.floor1.drone.tick
$scoreboard players set @n[type=phantom,tag=drone,distance=..1] monsters.floor1.drone_carrier.id $(id)