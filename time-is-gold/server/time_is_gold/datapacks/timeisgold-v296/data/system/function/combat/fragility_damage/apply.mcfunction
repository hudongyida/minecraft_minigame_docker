# SFX
execute as @s at @s run playsound minecraft:block.decorated_pot.shatter block @a ~ ~ ~ 1.33 0.5

$execute as @s run damage @s $(value) outside_border by @a[scores={playerid=$(playerid)},limit=1]