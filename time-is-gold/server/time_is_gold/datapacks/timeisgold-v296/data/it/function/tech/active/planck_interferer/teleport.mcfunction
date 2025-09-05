$execute as @s unless entity @e[tag=monster,tag=item.planck_interferer.swap_target.$(playerid)] run function it:tech/utils/notify/init {function:"it:tech/active/planck_interferer/notify/no_target_found"}
$execute as @s unless entity @e[tag=monster,tag=item.planck_interferer.swap_target.$(playerid)] run return fail

$execute as @s at @s run summon marker ~ ~ ~ {Tags:["item.planck_interferer.marker.swap_pos.$(playerid)"]}
$tp @s @n[tag=monster,tag=item.planck_interferer.swap_target.$(playerid)]
$tp @n[tag=monster,tag=item.planck_interferer.swap_target.$(playerid)] @n[type=marker,tag=item.planck_interferer.marker.swap_pos.$(playerid)]

execute as @s at @s as @e[tag=monster,distance=..3] run function it:tech/utils/effect/stun/init {value:50}
execute as @s run function it:tech/utils/cooldown/init {scoreboard:item.planck_interferer.cooldown, value:400}

# SFX
execute as @s at @s run playsound minecraft:entity.illusioner.mirror_move hostile @s ~ ~ ~ 1 1

# VFX


$tag @e[tag=monster,tag=item.planck_interferer.swap_target.$(playerid)] remove item.planck_interferer.swap_target.$(playerid)
$kill @e[type=marker,tag=item.planck_interferer.marker.swap_pos.$(playerid)]