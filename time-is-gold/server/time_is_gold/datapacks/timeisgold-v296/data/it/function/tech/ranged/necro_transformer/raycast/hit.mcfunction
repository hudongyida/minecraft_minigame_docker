particle firework ~ ~1 ~ 0 0 0 0.2 10 force
particle flash ~ ~1 ~ 0 0 0 1 2 force

execute as @s at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 1.5 0.1
$execute as @s at @s run function system:combat/modified_damage/laser/init {playerid:$(playerid), value:6d, knockback:1}
effect give @s minecraft:wither 5 2 false