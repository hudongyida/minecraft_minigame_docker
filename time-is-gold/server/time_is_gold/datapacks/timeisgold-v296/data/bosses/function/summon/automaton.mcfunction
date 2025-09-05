#summon minecraft:iron_golem ~ ~ ~ {Health:600.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:600.0d},{Name:"minecraft:generic.movement_speed",Base:0.33d}],Tags:[monster,boss,boss.automaton,machine],Passengers:[{id:"minecraft:marker",Tags:[boss.automaton.marker.AI],data:{targetuuid:0}}],PersistenceRequired:true,CanPickUpLoot:false,DeathLootTable:"none",CustomNameVisible:true,CustomName:{"text":"Automaton","bold":true,"color":"red"}}

summon minecraft:iron_golem ~ ~ ~ {\
    Rotation:[180f,45f],\
    Health:400.0f,\
    Tags:["monster","boss","machine","boss.automaton","boss.automaton.uninitialized","boss.automaton.play_cutscene"],\
    attributes:[{id:"minecraft:max_health",base:400.0d}, {id:"minecraft:movement_speed",base:0.33d}],\
    Passengers:[{id:"minecraft:marker", Tags:[boss.automaton.marker.AI], data:{bossuuid:"",targetuuidlist:[]}}],\
    PersistenceRequired:true,\
    CanPickUpLoot:false,\
    PortalCooldown:2147483647,\
    DeathLootTable:"system:placeholder/none",\
    CustomNameVisible:true,\
    CustomName:{"text":"Automaton","bold":true,"color":"red"}}