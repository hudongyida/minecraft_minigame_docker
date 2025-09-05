summon minecraft:illusioner ~ ~ ~ {\
    Rotation:[180f,0f],\
    Health:600.0f,\
    Tags:["monster","boss","boss.the_shaman","boss.the_shaman.uninitialized","boss.the_shaman.play_cutscene"],\
    attributes:[{id:"minecraft:max_health",base:600.0d}, {id:"minecraft:movement_speed",base:0.35d}, {"id":"minecraft:knockback_resistance",base:0.25d}],\
    Passengers:[{id:"minecraft:skeleton", Tags:["boss.the_shaman.skeleton.AI"], Silent:true, Invulnerable:true, PortalCooldown:2147483647, DeathLootTable:"system:placeholder/none",\
                attributes:[{id:"minecraft:scale",base:0.0625d}],\
                active_effects:[{id:"minecraft:invisibility",amplifier:20,duration:-1,show_particles:false},{id:"minecraft:resistance",amplifier:20,duration:-1,show_particles:false}],\
                equipment:{"mainhand":{id:"minecraft:bow",count:1,components:{unbreakable:{}}}},\
                drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f}},\
                {id:"minecraft:marker", Tags:[boss.the_shaman.marker.AI], data:{bossuuid:""}}],\
    PersistenceRequired:true,\
    CanPickUpLoot:false,\
    PortalCooldown:2147483647,\
    SpellTicks:2147483647,\
    DeathLootTable:"system:placeholder/none",\
    CustomNameVisible:true,\
    CustomName:{"text":"The Shaman","bold":true,"color":"red"}}