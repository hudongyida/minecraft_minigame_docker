$effect give @n[tag=monster,scores={entityid=$(entityid)},limit=1] minecraft:wither 8 1 false
$execute at @n[tag=monster,scores={entityid=$(entityid)},limit=1] run particle minecraft:witch ~ ~1 ~ 0 0 0 0.5 1 force
playsound minecraft:entity.generic.extinguish_fire block @s ~ ~ ~ 0.2 2 0