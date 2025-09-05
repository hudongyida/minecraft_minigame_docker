function it:tech/utils/effect/sink/init {value:1}

$execute if score @s combat.sink matches 5.. run function it:tech/melee/anti_ego_extractor/monster_attack/damage {playerid:$(playerid)}

# VFX
#execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:trial_omen ~ ~ ~ 0 0 0 1 10 force
#execute at @s run particle minecraft:glow ~ ~1 ~ 0.3 0.5 0.3 0.05 10 force
execute at @s run particle minecraft:dust{color:[0.000,0.000,1.000],scale:1.5} ~ ~1 ~ 0.3 0.5 0.3 0.5 2 force