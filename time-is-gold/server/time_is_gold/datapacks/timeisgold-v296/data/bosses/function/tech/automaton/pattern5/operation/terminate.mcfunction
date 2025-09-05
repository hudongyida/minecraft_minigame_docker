# SFX
execute at @s run playsound entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 2 0.5
execute at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5

# VFX
execute at @s run particle explosion_emitter ~ ~ ~ 0.75 0.75 0.75 0.1 10 force

$execute at @s run function bosses:tech/automaton/pattern5/operation/obstacle/terminate {bossuuid:"$(bossuuid)", selfuuid:"$(selfuuid)"}
kill @s