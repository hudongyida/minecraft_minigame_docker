$function system:math/vectors/entity_distance/init {output:item.chronospark.distance,targetuuid:"$(targetuuid)"}

$execute as @a[scores={playerid=$(playerid)}] at @s run playsound minecraft:entity.player.attack.knockback block @s ~ ~ ~ 1 1

execute as @s run scoreboard players operation @s item.chronospark.distance /= #100 scoreboardConstant
execute as @s run scoreboard players operation @s item.chronospark.distance -= #9 scoreboardConstant
execute as @s if score @s item.chronospark.distance matches ..0 run scoreboard players operation @s item.chronospark.distance *= -1 scoreboardConstant
execute as @s run scoreboard players operation @s item.chronospark.distance *= #100 scoreboardConstant
$execute as @s run scoreboard players operation @a[scores={playerid=$(playerid)}] combat.melee.damage_multiplier += @s item.chronospark.distance
$execute at @e[tag=monster,scores={entityid=$(entityid)}] as @s run function system:combat/modified_damage/melee/init {playerid:$(playerid), value:$(charge), knockback:1}
$execute as @s run scoreboard players operation @a[scores={playerid=$(playerid)}] combat.melee.damage_multiplier -= @s item.chronospark.distance

$scoreboard players set @s item.chronospark.harmony_charge $(charge)
execute as @s if score @s item.chronospark.harmony_charge matches 4.. run scoreboard players add @s item.chronospark.fragility 200
execute as @s if score @s item.chronospark.harmony_charge matches 6.. run effect give @s wither 10 1 false

tag @s remove item.chronospark.damage