tag @s remove hit
execute as @s if entity @s[tag=boss] run return fail
$execute as @a[scores={playerid=$(playerid)}] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1.5 0.1

execute as @s store result score @s item.roulettow.chance run random value 1..3
$execute as @s if score @s item.roulettow.chance matches 1 run tellraw @a[scores={playerid=$(playerid)}] {"translate":"item.roulettow.message.1"}
$execute as @s if score @s item.roulettow.chance matches 2 run tellraw @a[scores={playerid=$(playerid)}] {"translate":"item.roulettow.message.2"}
$execute as @s if score @s item.roulettow.chance matches 3 run tellraw @a[scores={playerid=$(playerid)}] {"translate":"item.roulettow.message.3"}

$execute as @s at @s run function system:combat/modified_damage/ranged/init {playerid:$(playerid), value:6666d, knockback:0}