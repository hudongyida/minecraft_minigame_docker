$execute as @s at @s run function system:combat/modified_damage/melee/init {value:10.0d, playerid:$(playerid), knockback:0}

# SFX
execute as @s at @s run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 0.6 1 0.1

# VFX
execute as @s at @s run particle minecraft:sweep_attack ~ ~1 ~ .2 .2 .2 0 4 force