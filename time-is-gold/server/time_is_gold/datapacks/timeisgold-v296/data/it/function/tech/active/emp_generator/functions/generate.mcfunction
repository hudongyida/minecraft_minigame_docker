scoreboard players set @s item.emp_generator.particle 1
execute positioned ~ ~ ~ run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1 0

$execute as @s run function system:combat/modified_damage/ranged/init {playerid:$(playerid),value:8.0d,knockback:1}
execute as @s run function it:tech/utils/effect/stun/init {value:100}

$execute as @s[tag=machine] run function system:combat/modified_damage/ranged/init {playerid:$(playerid),value:8.0d,knockback:1}
execute as @s[tag=machine] run function it:tech/utils/effect/stun/init {value:100}
