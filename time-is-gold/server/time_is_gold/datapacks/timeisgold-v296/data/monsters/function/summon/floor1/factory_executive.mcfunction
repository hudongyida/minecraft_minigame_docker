summon minecraft:piglin ~ ~ ~ {\
    Health:35.0f,\
    Tags:[monster, factory_executive, elite, ranged],\
    attributes:[{id:"minecraft:max_health",base:35},{id:"minecraft:knockback_resistance",base:0.},{id:"minecraft:armor",base:6},{id:"minecraft:attack_damage",base:10},{id:"minecraft:movement_speed",base:0.33}],\
    equipment:{\
        mainhand:{id:"minecraft:crossbow",count:1b,components:{attribute_modifiers:[]}},\
        chest:{id:"minecraft:netherite_chestplate",count:1b,components:{attribute_modifiers:[{id:"factory_executive_chestplate_armor", type:"minecraft:armor", amount:0, operation:"add_value"}],unbreakable:{}}},\
        legs:{id:"minecraft:leather_leggings",count:1b,components:{dyed_color:5263209,attribute_modifiers:[{id:"factory_executive_leggings_armor", type:"minecraft:armor", amount:0, operation:"add_value"}],unbreakable:{},trim:{material:"minecraft:netherite",pattern:"minecraft:rib"}}},\
        feet:{id:"minecraft:iron_boots",count:1b,components:{dyed_color:0,attribute_modifiers:[{id:"factory_executive_boots_armor", type:"minecraft:armor", amount:0, operation:"add_value"}],unbreakable:{}}}},\
    drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},\
    Brain:{memories:{admiring_disabled:{value:true,ttl:2147483647}}},\
    PersistenceRequired:true,\
    CanPickUpLoot:false,\
    IsImmuneToZombification:true,\
    PortalCooldown:2147483647,\
    DeathLootTable:"it:monster/loot"}