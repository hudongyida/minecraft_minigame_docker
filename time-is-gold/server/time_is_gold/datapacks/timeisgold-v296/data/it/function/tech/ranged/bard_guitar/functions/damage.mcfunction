$function system:combat/modified_damage/ranged/init {playerid:$(playerid),knockback:1,value:18.0d}
$execute at @a[scores={playerid=$(playerid)},limit=1] run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 1 0

execute at @s run particle note ~ ~1 ~ .8 .8 .8 0.05 15 force
execute at @s run particle flash ~ ~1 ~ 0 0 0 0.5 2 force
