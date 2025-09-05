summon husk ~ ~ ~ {\
    Health:24.0f,\
    NoAI:false,\
    Tags:[monster, engineer_b, undead],\
    attributes:[{id:"minecraft:max_health",base:24},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:armor",base:2},{id:"minecraft:attack_damage",base:6},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:follow_range",base:12}],\
    equipment:{\
        mainhand:{id:"minecraft:shears",count:1b,components:{attribute_modifiers:[{id:"engineer_b_handitem_damage", type:"minecraft:attack_damage",amount:0, operation:"add_value"}]}},\
        chest:{id:"minecraft:iron_chestplate",count:1b,components:{attribute_modifiers:[{id:"miner_zombie_chestplate_armor",type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        legs:{id:"minecraft:leather_leggings",count:1b,components:{dyed_color:12606216,attribute_modifiers:[{id:"engineer_b_leggings_armor",type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        feet:{id:"minecraft:iron_boots",count:1b,components:{attribute_modifiers:[{id:"miner_zombie_boots_armor",type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        head:{id:"lead"}},\
    drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},\
    CanBreakDoors:false,\
    CanPickUpLoot:false,\
    DeathLootTable:"it:monster/loot",\
    PortalCooldown:2147483647,\
    PersistenceRequired:true}

execute as @n[type=husk,tag=engineer_b,distance=..1] run scoreboard players operation @s monsters.floor1.engineer_b.max_build = #SYSTEM monsters.floor1.engineer_b.max_build