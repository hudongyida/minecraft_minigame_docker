summon minecraft:husk ~ ~ ~ {\
    Health:55.0f,\
    NoAI:false,\
    Tags:[monster, undead, nightwalker, elite],\
    attributes:[{id:"minecraft:max_health",base:55},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:armor",base:0},{id:"minecraft:attack_damage",base:25},{id:"minecraft:movement_speed",base:0.23}],\
    active_effects:[{id:"invisibility",duration:-1,amplifier:20,show_particles:false}],\
    equipment:{\
        mainhand:{id:"netherite_sword",count:1,components:{unbreakable:{},attribute_modifiers:[{id:"mainhand",type:"attack_damage",amount:0,operation:"add_value"}]}},\
        feet:{id:"leather_boots",count:1,components:{unbreakable:{},dyed_color:320,attribute_modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_value"}]}}},\
    drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},\
    PersistenceRequired:true,\
    CanPickUpLoot:false,\
    PortalCooldown:2147483647,\
    DeathLootTable:"it:monster/loot"}