$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~1 ~1 #it:air run summon marker ~1 ~1 ~1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~1 ~0 #it:air run summon marker ~1 ~1 ~0 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~1 ~-1 #it:air run summon marker ~1 ~1 ~-1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~1 ~1 #it:air run summon marker ~0 ~1 ~1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~1 ~0 #it:air run summon marker ~0 ~1 ~0 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~1 ~-1 #it:air run summon marker ~0 ~1 ~-1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~1 ~1 #it:air run summon marker ~-1 ~1 ~1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~1 ~0 #it:air run summon marker ~-1 ~1 ~0 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~1 ~-1 #it:air run summon marker ~-1 ~1 ~-1 {Tags:[item.rapier.marker.pos.$(playerid)]}

$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~0 ~1 #it:air run summon marker ~1 ~0 ~1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~0 ~0 #it:air run summon marker ~1 ~0 ~0 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~0 ~-1 #it:air run summon marker ~1 ~0 ~-1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~0 ~1 #it:air run summon marker ~0 ~0 ~1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~0 ~0 #it:air run summon marker ~0 ~0 ~0 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~0 ~-1 #it:air run summon marker ~0 ~0 ~-1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~0 ~1 #it:air run summon marker ~-1 ~0 ~1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~0 ~0 #it:air run summon marker ~-1 ~0 ~0 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~0 ~-1 #it:air run summon marker ~-1 ~0 ~-1 {Tags:[item.rapier.marker.pos.$(playerid)]}

$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~-1 ~1 #it:air run summon marker ~1 ~-1 ~1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~-1 ~0 #it:air run summon marker ~1 ~-1 ~0 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~-1 ~-1 #it:air run summon marker ~1 ~-1 ~-1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~-1 ~1 #it:air run summon marker ~0 ~-1 ~1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~-1 ~0 #it:air run summon marker ~0 ~-1 ~0 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~0 ~-1 ~-1 #it:air run summon marker ~0 ~-1 ~-1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~-1 ~1 #it:air run summon marker ~-1 ~-1 ~1 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~-1 ~0 #it:air run summon marker ~-1 ~-1 ~0 {Tags:[item.rapier.marker.pos.$(playerid)]}
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~-1 ~-1 #it:air run summon marker ~-1 ~-1 ~-1 {Tags:[item.rapier.marker.pos.$(playerid)]}

$execute positioned ~ ~ ~ run tag @e[type=marker,tag=item.rapier.marker.pos.$(playerid),sort=nearest,limit=1] add item.rapier.marker.pos.$(playerid).dest
$kill @e[type=marker,tag=item.rapier.marker.pos.$(playerid),tag=!item.rapier.marker.pos.$(playerid).dest]
$execute rotated as @a[scores={playerid=$(playerid)},limit=1] run rotate @n[type=marker,tag=item.rapier.marker.pos.$(playerid)] ~ ~
$execute as @n[type=marker,tag=item.rapier.marker.pos.$(playerid).dest] at @s if block ~ ~ ~ #it:air if block ~ ~-1 ~ #it:air unless block ~ ~1 ~ #it:air run function it:tech/melee/rapier/raycast/teleport_ceil {playerid:$(playerid)}
$execute as @n[type=marker,tag=item.rapier.marker.pos.$(playerid).dest] at @s if block ~ ~ ~ #it:air if block ~ ~1 ~ #it:air run function it:tech/melee/rapier/raycast/teleport_default {playerid:$(playerid)}
$execute as @n[type=marker,tag=item.rapier.marker.pos.$(playerid).dest] if entity @s run function it:tech/melee/rapier/raycast/teleport_fail {playerid:$(playerid)}