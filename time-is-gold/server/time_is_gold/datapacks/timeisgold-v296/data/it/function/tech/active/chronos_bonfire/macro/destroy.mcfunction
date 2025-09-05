# SFX
execute as @s at @s run playsound block.candle.extinguish block @a ~ ~ ~ 2 1
execute as @s at @s run playsound block.wood.break block @a ~ ~ ~ 2 1

# VFX
execute as @s at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0.2 10 force

$kill $(displayuuid)
$kill $(interactionuuid)
kill @s