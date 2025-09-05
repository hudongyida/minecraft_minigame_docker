summon zombie ~ ~ ~ {\
    Health:14f,\
    NoAI:false,\
    Tags:[monster, miner_zombie, undead, "miner_zombie.ability_enabled", ranged],\
    attributes:[{id:"minecraft:max_health",base:14},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:armor",base:0},{id:"minecraft:attack_damage",base:6},{id:"minecraft:follow_range",base:12}],\
    equipment:{\
        mainhand:{id:"minecraft:iron_pickaxe",count:1b,components:{attribute_modifiers:[{id:"miner_zombie_handitem_damage", type:"minecraft:attack_damage",amount:0, operation:"add_value"}]}},\
        chest:{id:"minecraft:leather_chestplate",count:1b,components:{dyed_color:5263209,attribute_modifiers:[{id:"miner_zombie_chestplate_armor",type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        legs:{id:"minecraft:leather_leggings",count:1b,components:{dyed_color:5263209,attribute_modifiers:[{id:"miner_zombie_leggings_armor",type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}},\
        feet:{id:"minecraft:leather_boots",count:1b,components:{dyed_color:14380544,attribute_modifiers:[{id:"miner_zombie_boots_armor",type:"minecraft:armor",amount:0,operation:"add_value"}],unbreakable:{}}}},\
    drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},\
    CanBreakDoors:false,\
    CanPickUpLoot:false,\
    DeathLootTable:"it:monster/loot",\
    PortalCooldown:2147483647,\
    PersistenceRequired:true}