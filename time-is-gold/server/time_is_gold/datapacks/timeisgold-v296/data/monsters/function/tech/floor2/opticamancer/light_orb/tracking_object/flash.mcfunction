$execute at @s as @a[predicate=system:player,distance=..30] run function monsters:tech/floor2/opticamancer/light_orb/tag_flash_target {monsteruuid:"$(monsteruuid)", selfuuid:"$(selfuuid)"}

$data modify storage timeisgold:function_api stack append value {path:"monsters:tech/floor2/opticamancer/light_orb", initfunction:none, tickfunction:none, hitfunction:hit, endfunction:none,\
                                                                monsteruuid:"$(monsteruuid)", target:1, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:0, step:100, system:0}
$execute as @s at @s run function monsters:tech/floor2/opticamancer/light_orb/macro/summon_marker {monsteruuid:"$(monsteruuid)"}
$execute as @s at @s run function monsters:tech/floor2/opticamancer/light_orb/sight_check {monsteruuid:"$(monsteruuid)"}
$execute as @s at @s run function monsters:tech/floor2/opticamancer/light_orb/macro/kill_marker {monsteruuid:"$(monsteruuid)"}
data remove storage timeisgold:function_api stack[-1]

# SFX
playsound minecraft:entity.firework_rocket.large_blast neutral @a ~ ~ ~ 0.5 1.3 0

# VFX
particle end_rod ~ ~ ~ 0 0 0 0.5 20 force
particle flash ~ ~ ~ .1 .1 .1 1 5 force