$execute as @s run function system:combat/modified_damage/magic/init {playerid:$(playerid), value:$(value), knockback:1}

# SFX
execute as @s at @s run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 1 0 0.4

# VFX
execute as @s at @s run particle minecraft:sculk_charge_pop ~ ~1 ~ .3 .3 .3 0 50 force