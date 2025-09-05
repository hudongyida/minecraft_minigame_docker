summon sniffer ~ ~ ~ {\
    Health:30.0f,\
    NoAI:true,\
    Tags:["monster", "monster.fixed", "monster.stun_exception", "drone_carrier", "machine", "ranged", "elite"],\
    attributes:[{id:"minecraft:max_health",base:30},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:armor",base:0},{id:"minecraft:attack_damage",base:0},{id:"minecraft:movement_speed",base:0}],\
    drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},\
    CanPickUpLoot:false,\
    DeathLootTable:"it:monster/loot",\
    PortalCooldown:2147483647,\
    PersistenceRequired:true}

execute as @n[type=sniffer,tag=drone_carrier,distance=..1] run scoreboard players operation @s monsters.floor1.drone_carrier.max_drone = #SYSTEM monsters.floor1.drone_carrier.max_drone
execute as @n[type=sniffer,tag=drone_carrier,distance=..1] store result score @s monsters.floor1.drone_carrier.summonize_tick run random value 1..123456789
execute as @n[type=sniffer,tag=drone_carrier,distance=..1] run scoreboard players operation @s monsters.floor1.drone_carrier.summonize_tick %= #SYSTEM monsters.floor1.drone_carrier.summonize_tick