execute store result score @s monsters.floor2.crystal_alchemyst.random run random value 1..4

#$tag @s add monsters.crystal_alchemyst.marker-$(selfuuid)

$execute if score @s monsters.floor2.crystal_alchemyst.random matches 1 run summon tnt ~ ~ ~ {data:{monsteruuid:"$(monsteruuid)"},Glowing:true,NoGravity:true,fuse:1000,Tags:["monsters.crystal_alchemyst.tnt","admin.kill_on_reset","monsters.crystal_alchemyst.marker-$(selfuuid).tnt"],Team:"color_red",block_state:{Name:"minecraft:chorus_flower"}}
$execute if score @s monsters.floor2.crystal_alchemyst.random matches 2 run summon tnt ~ ~ ~ {data:{monsteruuid:"$(monsteruuid)"},Glowing:true,NoGravity:true,fuse:1000,Tags:["monsters.crystal_alchemyst.tnt","admin.kill_on_reset","monsters.crystal_alchemyst.marker-$(selfuuid).tnt"],Team:"color_red",block_state:{Name:"minecraft:pearlescent_froglight"}}
$execute if score @s monsters.floor2.crystal_alchemyst.random matches 3 run summon tnt ~ ~ ~ {data:{monsteruuid:"$(monsteruuid)"},Glowing:true,NoGravity:true,fuse:1000,Tags:["monsters.crystal_alchemyst.tnt","admin.kill_on_reset","monsters.crystal_alchemyst.marker-$(selfuuid).tnt"],Team:"color_red",block_state:{Name:"minecraft:crying_obsidian"}}
$execute if score @s monsters.floor2.crystal_alchemyst.random matches 4 run summon tnt ~ ~ ~ {data:{monsteruuid:"$(monsteruuid)"},Glowing:true,NoGravity:true,fuse:1000,Tags:["monsters.crystal_alchemyst.tnt","admin.kill_on_reset","monsters.crystal_alchemyst.marker-$(selfuuid).tnt"],Team:"color_red",block_state:{Name:"minecraft:magenta_stained_glass"}}
playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 0.5 0
particle lava ~ ~ ~ 0 0 0 0.05 3 force
particle campfire_cosy_smoke ~ ~ ~ 0 0 0 1 2 force

execute at @s as @n[predicate=system:player,distance=..50] run function system:utils/uuid_tokenizer/init
data modify entity @s data.targetuuid set from storage timeisgold:uuid_tokenizer output