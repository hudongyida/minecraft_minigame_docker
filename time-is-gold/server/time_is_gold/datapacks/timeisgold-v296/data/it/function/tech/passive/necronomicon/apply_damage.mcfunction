$function system:combat/modified_damage/magic/init {value:6666, playerid:$(playerid), knockback:1}

# VFX
execute at @s run particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.1 15 force
execute at @s run particle minecraft:soul ~ ~1 ~ 0.2 0.2 0.2 0.05 15 force
execute at @s run particle dust_color_transition{scale:1,from_color:[1.0,0.88,0.1],to_color:[0.44,0.0,0.0]} ~ ~0.1 ~ 0.4 0.01 0.4 0.1 32 force