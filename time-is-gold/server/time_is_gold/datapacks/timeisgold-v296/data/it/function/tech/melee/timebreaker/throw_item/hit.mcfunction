$execute as @s[tag=!boss] run function system:combat/modified_damage/melee/init {playerid:$(playerid), value:15.0d, knockback:1}
$execute as @s[tag=boss] run function system:combat/modified_damage/melee/init {playerid:$(playerid), value:3.0d, knockback:1}
execute at @s as @e[tag=monster,distance=..8] run function it:tech/utils/effect/stun/init {value:20}
$execute at @s as @a[scores={playerid=$(playerid)}] anchored eyes facing entity @s eyes run tp @s ^ ^ ^1
$execute as @a[scores={playerid=$(playerid)}] at @s run playsound minecraft:item.trident.thunder player @s ~ ~ ~ 0.8 1 0.8

$execute as @a[scores={playerid=$(playerid)}] run scoreboard players set @s item.timebreaker.empowered 40