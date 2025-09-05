#execute as @s run scoreboard players operation @s item.reaper_scythe.damage += @s item.reaper_scythe.damage_dealt
#execute as @s if score @s item.reaper_scythe.damage matches 600.. run function it:tech/melee/reaper_scythe/potion
#execute as @s if score @s item.reaper_scythe.damage_dealt matches 1.. run scoreboard players reset @s item.reaper_scythe.damage_dealt

#$execute at @s anchored feet positioned ^ ^ ^2 as @n[tag=monster,scores={entityid=$(entityid)}] unless entity @s[tag=monster.fixed] run tp @s ~ ~ ~
execute as @s at @s run playsound minecraft:entity.illusioner.mirror_move hostile @s ~ ~ ~ 1 1 0
$execute as @n[tag=monster,scores={entityid=$(entityid)}] run function system:combat/modified_damage/magic/init {playerid:$(playerid),value:5,knockback:0}
$execute as @n[tag=monster,scores={entityid=$(entityid)}] at @s run particle sculk_soul ~ ~1 ~ .3 .3 .3 0.05 6 force
$execute as @n[tag=monster,scores={entityid=$(entityid)}] at @s run particle minecraft:warped_spore ~ ~ ~ 0 0 0 0.5 16 force
execute as @s at @s run playsound entity.blaze.hurt hostile @s ~ ~ ~ 1 1.2 0

#$execute as @n[tag=monster,scores={entityid=$(entityid)}] at @s run tp @s ~ ~ ~