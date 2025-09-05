$execute as @e[tag=monster,scores={entityid=$(entityid)}] run function it:tech/ranged/telestrator/monster_attack/init {playerid:$(playerid)}
advancement revoke @s only it:ranged/telestrator_hit