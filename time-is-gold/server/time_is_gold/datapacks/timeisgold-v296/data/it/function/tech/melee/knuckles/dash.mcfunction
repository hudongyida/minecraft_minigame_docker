$kill @e[type=wind_charge,tag=item.knuckles.dash-playerid--$(playerid)]
$execute as @s at @s anchored eyes positioned ^ ^ ^ run summon wind_charge ~ ~ ~ {Silent:1b,acceleration_power:0.5d,Tags:["admin.kill_on_reset","item.knuckles.dash","item.knuckles.dash-playerid--$(playerid)"],Owner:$(UUID)}
execute as @s at @s run function system:math/vectors/looking_direction/init {storage_x:item.knuckles.storage_x, storage_y:item.knuckles.storage_y, storage_z:item.knuckles.storage_z}
$execute as @e[tag=item.knuckles.dash-playerid--$(playerid)] at @s store result entity @s Motion[0] double 0.01 run scoreboard players get @n[type=player,scores={playerid=$(playerid)}] item.knuckles.storage_x
$execute as @e[tag=item.knuckles.dash-playerid--$(playerid)] at @s store result entity @s Motion[1] double 0.01 run scoreboard players get @n[type=player,scores={playerid=$(playerid)}] item.knuckles.storage_y
$execute as @e[tag=item.knuckles.dash-playerid--$(playerid)] at @s store result entity @s Motion[2] double 0.01 run scoreboard players get @n[type=player,scores={playerid=$(playerid)}] item.knuckles.storage_z
$execute as @s at @s run ride @s mount @n[tag=item.knuckles.dash-playerid--$(playerid)]