$execute as @s at @n[type=marker, tag=item.reaper_scythe.portal, nbt={data:{Owner:"$(UUID)"}}] unless entity @s[tag=item.reaper_scythe.reset] run tp @s ~ ~ ~
$kill @n[type=marker, tag=item.reaper_scythe.portal, nbt={data:{Owner:"$(UUID)"}}]

# FX
execute as @s at @s run particle minecraft:soul ~ ~1 ~ .4 .5 .4 0.3 20 force
execute as @s at @s run particle minecraft:dust{color:[0.0,0.0,0.0],scale:0.5} ~ ~1 ~ 1 1 1 0.5 30 force
execute as @s at @s run particle minecraft:flash ~ ~1 ~ .5 .5 .5 0.5 50 force
execute as @s at @s run playsound minecraft:block.portal.trigger hostile @s ~ ~ ~ 0.5 2 0
execute as @s at @s run playsound minecraft:block.fire.extinguish hostile @s ~ ~ ~ 0.2 0 0

execute as @s run effect give @s slowness 1 5 true