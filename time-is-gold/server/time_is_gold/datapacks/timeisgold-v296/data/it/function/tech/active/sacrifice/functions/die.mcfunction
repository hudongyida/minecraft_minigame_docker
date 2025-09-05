$scoreboard players set @s item.sacrifice.target $(playerid)

$execute as @s at @s run scoreboard players operation @n[scores={playerid=$(playerid)}] timeX10 += @s timeX10
$execute as @s at @s run scoreboard players operation @n[scores={playerid=$(playerid)}] timeX10 += #3000 scoreboardConstant

execute as @s at @s positioned ~ ~2 ~ run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",colors:[16711680]},{shape:"creeper",has_twinkle:true,colors:[15728392]},{shape:"creeper",has_trail:true,colors:[655104]},{shape:"creeper",has_twinkle:true,colors:[65535]},{shape:"creeper",has_trail:true,colors:[15597823]}]}}}}

execute as @s if items entity @s hotbar.0 * run function it:tech/utils/force_drop/slot {delay:40,slot:0}
execute as @s if items entity @s hotbar.1 * run function it:tech/utils/force_drop/slot {delay:40,slot:1}
execute as @s if items entity @s hotbar.2 * run function it:tech/utils/force_drop/slot {delay:40,slot:2}
execute as @s if items entity @s hotbar.3 * run function it:tech/utils/force_drop/slot {delay:40,slot:3}
execute as @s if items entity @s hotbar.4 * run function it:tech/utils/force_drop/slot {delay:40,slot:4}
execute as @s if items entity @s hotbar.5 * run function it:tech/utils/force_drop/slot {delay:40,slot:5}
execute as @s if items entity @s hotbar.6 * run function it:tech/utils/force_drop/slot {delay:40,slot:6}
execute as @s if items entity @s hotbar.7 * run function it:tech/utils/force_drop/slot {delay:40,slot:7}
execute as @s if items entity @s hotbar.8 * run function it:tech/utils/force_drop/slot {delay:40,slot:8}
execute as @s if function it:tech/active/sacrifice/functions/containers run function it:tech/active/sacrifice/functions/drop_container

execute as @s run damage @s 999999 magic