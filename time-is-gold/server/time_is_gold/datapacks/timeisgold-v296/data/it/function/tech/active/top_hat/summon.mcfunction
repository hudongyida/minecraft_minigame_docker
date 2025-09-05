$execute at @s anchored eyes positioned ^ ^1 ^ run summon rabbit ~ ~ ~ {CustomNameVisible:0b,DeathLootTable:"system:placeholder/none",Team:"players",PersistenceRequired:1b,Health:15f,RabbitType:99,Tags:["monster.ally","monster.ally.assign","item.top_hat.rabbit"],CustomName:{"color":"green","italic":false,"text":"魔法兔子"},attributes:[{id:"minecraft:follow_range",base:128},{id:"minecraft:max_health",base:15}],Motion:[$(random_x),0.5,$(random_z)]}
$execute at @s anchored eyes positioned ^ ^1 ^ run summon rabbit ~ ~ ~ {CustomNameVisible:0b,DeathLootTable:"system:placeholder/none",Team:"players",PersistenceRequired:1b,Health:15f,RabbitType:99,Tags:["monster.ally","monster.ally.assign","item.top_hat.rabbit"],CustomName:{"color":"green","italic":false,"text":"魔法兔子"},attributes:[{id:"minecraft:follow_range",base:128},{id:"minecraft:max_health",base:15}],Motion:[-$(random_x),0.5,-$(random_z)]}
execute as @e[tag=monster.ally.assign,sort=nearest,limit=2,distance=..5,type=rabbit] at @s run particle cloud ~ ~ ~ 0 0 0 0.3 10 force
function it:tech/utils/ally/init {inputTag:monster.ally.assign, type:rabbit}

# SFX
execute as @s at @s run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 1 0
execute as @s at @s run playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 0.5 1.5 0.5