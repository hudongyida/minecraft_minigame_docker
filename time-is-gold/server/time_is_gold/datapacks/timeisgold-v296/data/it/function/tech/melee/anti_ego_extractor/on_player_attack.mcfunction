$execute as @n[tag=monster,scores={entityid=$(entityid)},limit=1] run function it:tech/melee/anti_ego_extractor/monster_attack/init {playerid:$(playerid)}

# SFX
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 1 1.5