advancement revoke @s only it:melee/knuckles_wind_charge
$execute as @e[tag=monster,scores={entityid=$(entityid)}] run function it:tech/utils/effect/stun/init {value:30}
scoreboard players add @s combat.melee.damage_multiplier 200
$execute as @e[tag=monster,scores={entityid=$(entityid)}] run function system:combat/modified_damage/melee/init {value:4.0d, playerid:$(playerid), knockback:0}
scoreboard players remove @s combat.melee.damage_multiplier 200