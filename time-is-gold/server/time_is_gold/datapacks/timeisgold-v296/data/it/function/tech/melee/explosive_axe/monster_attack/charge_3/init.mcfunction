execute positioned ~ ~ ~ as @e[tag=monster,distance=..5] run function it:tech/melee/explosive_axe/monster_attack/charge_1/set_motion with storage timeisgold:function_api stack[-1]
$execute positioned ~ ~ ~ as @e[tag=monster,distance=..5] run function system:combat/modified_damage/melee/init {value:20, playerid:$(playerid), knockback:1}

# SFX
execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 1

# VFX
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0.1 10 force