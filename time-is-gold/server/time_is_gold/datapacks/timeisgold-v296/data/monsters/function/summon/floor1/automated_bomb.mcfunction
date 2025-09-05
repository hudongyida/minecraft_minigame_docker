summon creeper ~ ~ ~ {\
    Health:15.0f,\
    NoAI:false,\
    Silent:true,\
    Tags:[monster, automated_bomb, machine, creeper, automated_bomb.uninitialized],\
    attributes:[{id:"minecraft:max_health",base:15},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:armor",base:0},{id:"minecraft:attack_damage",base:40}],\
    Passengers:[{id:"minecraft:item_display",Tags:[automated_bomb.windup],item_display:"gui",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:tripwire_hook",count:1b},teleport_duration:1},\
                {id:"minecraft:marker",Tags:[automated_bomb.marker.creeper_check],data:{}}],\
    PersistenceRequired:true,\
    CanPickUpLoot:false,\
    PortalCooldown:2147483647,\
    ExplosionRadius:0,\
    DeathLootTable:"it:monster/loot"}