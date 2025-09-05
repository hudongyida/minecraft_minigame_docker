$title @a[scores={playerid=$(playerid)},limit=1] actionbar [{"text":"无法将你TP到该位置！","color":"red"}]
$execute as @a[scores={playerid=$(playerid)},limit=1] at @s run playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 0.5 0.5 0.5
kill @s