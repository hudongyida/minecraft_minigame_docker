tag @s remove hit
$execute as @a[scores={playerid=$(playerid)}] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1.5 0.1
$execute as @s at @s run function system:combat/modified_damage/ranged/init {playerid:$(playerid), value:6d, knockback:0}