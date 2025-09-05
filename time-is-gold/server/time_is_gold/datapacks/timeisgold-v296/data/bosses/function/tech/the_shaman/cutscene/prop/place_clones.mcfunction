# 실행 인자: 컷씬 준비 
# 실행 위치: 보스 방 중앙 마커

summon illusioner ~ ~ ~6 {Tags:[bosses.the_shaman.cutscene.prop.clone,"admin.kill_on_reset"], Invulnerable:true,NoAI:true,Silent:true,Health:1024f,DeathLootTable:"none",PersistenceRequired:true}
summon illusioner ~ ~ ~-6 {Tags:[bosses.the_shaman.cutscene.prop.clone,"admin.kill_on_reset"], Invulnerable:true,NoAI:true,Silent:true,Health:1024f,DeathLootTable:"none",PersistenceRequired:true}
summon illusioner ~5.1 ~ ~3 {Tags:[bosses.the_shaman.cutscene.prop.clone,"admin.kill_on_reset"], Invulnerable:true,NoAI:true,Silent:true,Health:1024f,DeathLootTable:"none",PersistenceRequired:true}
summon illusioner ~-5.1 ~ ~3 {Tags:[bosses.the_shaman.cutscene.prop.clone,"admin.kill_on_reset"], Invulnerable:true,NoAI:true,Silent:true,Health:1024f,DeathLootTable:"none",PersistenceRequired:true}
summon illusioner ~5.1 ~ ~-3 {Tags:[bosses.the_shaman.cutscene.prop.clone,"admin.kill_on_reset"], Invulnerable:true,NoAI:true,Silent:true,Health:1024f,DeathLootTable:"none",PersistenceRequired:true}
summon illusioner ~-5.1 ~ ~-3 {Tags:[bosses.the_shaman.cutscene.prop.clone,"admin.kill_on_reset"], Invulnerable:true,NoAI:true,Silent:true,Health:1024f,DeathLootTable:"none",PersistenceRequired:true}
execute positioned ~ ~ ~ as @e[type=illusioner,tag=bosses.the_shaman.cutscene.prop.clone,distance=..30] at @s anchored eyes facing entity @n[type=illusioner,tag=boss.the_shaman,distance=..30] eyes run rotate @s ~ 0