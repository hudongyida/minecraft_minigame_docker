summon zombie ~ ~ ~ {\
    Health:20f,\
    NoAI:false,\
    Tags:[monster, supply_worker, undead, machine],\
    attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:armor",base:0},{id:"minecraft:attack_damage",base:7},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:follow_range",base:12}],\
    equipment:{\
        mainhand:{id:"minecraft:barrel",count:1b},\
        chest:{id:"minecraft:leather_chestplate",count:1b,components:{dyed_color:5263209,attribute_modifiers:[{id:"supply_worker_chestplate_armor",type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        legs:{id:"minecraft:leather_leggings",count:1b,components:{dyed_color:5263209,attribute_modifiers:[{id:"supply_worker_leggings_armor",type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        feet:{id:"minecraft:leather_boots",count:1b,components:{dyed_color:14380544,attribute_modifiers:[{id:"supply_worker_boots_armor",type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        head:{id:"minecraft:observer"}},\
    drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},\
    CanBreakDoors:false,\
    CanPickUpLoot:false,\
    DeathLootTable:"it:monster/loot",\
    PortalCooldown:2147483647,\
    PersistenceRequired:true}