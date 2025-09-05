summon zombie ~ ~ ~ {\
    Health:20.0f,\
    NoAI:false,\
    Tags:[monster, acid_zombie, ability],\
    attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:armor",base:0},{id:"minecraft:attack_damage",base:7},{id:"minecraft:follow_range",base:12}],\
    equipment:{\
        head:{id:"minecraft:azalea",count:1b},\
        chest:{id:"minecraft:leather_chestplate",count:1b,components:{dyed_color:5263209,attribute_modifiers:[{id:acid_zombie_chestplate_armor,type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        legs:{id:"minecraft:leather_leggings",count:1b,components:{dyed_color:5263209,attribute_modifiers:[{id:acid_zombie_leggings_armor,type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        feet:{id:"minecraft:iron_boots",count:1b,components:{attribute_modifiers:[{id:acid_zombie_boots_armor,type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}}},\
    drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},\
    PersistenceRequired:true,\
    CanBreakDoors:false,\
    CanPickUpLoot:false,\
    PortalCooldown:2147483647,\
    DeathLootTable:"it:monster/loot"}