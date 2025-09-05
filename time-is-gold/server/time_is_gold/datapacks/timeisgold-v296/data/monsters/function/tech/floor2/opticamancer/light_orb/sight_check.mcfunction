$execute unless entity @a[tag=monsters.floor2.opticamaner.light_orb.flash_target.$(monsteruuid)] run return fail

$execute as @a[tag=monsters.floor2.opticamaner.light_orb.flash_target.$(monsteruuid),sort=random,limit=1] run tag @s add monsters.floor2.opticamancer.light_orb.sight_check.$(monsteruuid)
$execute positioned ~ ~ ~ as @n[type=marker,tag=opticamancer.light_orb.marker.direction.$(monsteruuid),distance=..0.5] anchored eyes rotated as @s run rotate @s facing entity @p[tag=monsters.floor2.opticamancer.light_orb.sight_check.$(monsteruuid)] eyes
$execute positioned ~ ~ ~ as @n[type=marker,tag=opticamancer.light_orb.marker.direction.$(monsteruuid),distance=..0.5] anchored eyes rotated as @s run function monsters:tech/global/utils/raycast/default/init with storage timeisgold:function_api stack[-1]

$tag @a[tag=monsters.floor2.opticamancer.light_orb.sight_check.$(monsteruuid)] remove monsters.floor2.opticamaner.light_orb.flash_target.$(monsteruuid)
$tag @a[tag=monsters.floor2.opticamancer.light_orb.sight_check.$(monsteruuid)] remove monsters.floor2.opticamancer.light_orb.sight_check.$(monsteruuid)

$execute as @s at @s if entity @a[tag=monsters.floor2.opticamaner.light_orb.flash_target.$(monsteruuid)] run function monsters:tech/floor2/opticamancer/light_orb/sight_check {monsteruuid:"$(monsteruuid)"}