$execute as @a[scores={playerid=$(playerid)}] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["item.contrary_wind.leaves"],data:{playerid:$(playerid)}}

execute as @s at @s run tp @s ~ ~-1.5 ~
$execute as @s at @s run tp @a[scores={playerid=$(playerid)}] @s
kill @s
