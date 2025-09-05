# warning: 이 친구 독립적으로 소환되는 몬스터 아닙니다.

summon skeleton ~ ~ ~ {\
    Health:1.0f,\
    NoAI:false,\
    Tags:[monster, replica_skeleton, machine, ranged],\
    attributes:[{id:"minecraft:max_health",base:1},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:armor",base:0},{id:"minecraft:attack_damage",base:15},{id:"minecraft:follow_range",base:12}],\
    equipment:{\
        mainhand:{id:"minecraft:diamond_axe",count:1b,components:{enchantment_glint_override:true,attribute_modifiers:[{id:"replica_skeleton_mainhand_damage", type:"minecraft:attack_damage",amount:0, operation:"add_value"}]}},\
        chest:{id:"minecraft:golden_chestplate",count:1b,components:{damage:0,trim:{material:"minecraft:resin",pattern:"minecraft:eye"},attribute_modifiers:[{id:"mechanical_skeleton_chestplate_armor", type:"minecraft:armor", amount:0, operation:"add_value"}]}}},\
    drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},\
    CanPickUpLoot:false,\
    PersistenceRequired:true,\
    PortalCooldown:2147483647,\
    DeathLootTable:"system:placeholder/none",}