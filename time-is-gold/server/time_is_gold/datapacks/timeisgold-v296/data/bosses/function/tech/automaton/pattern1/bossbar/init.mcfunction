$bossbar add $(bossbarid) {"text":"自动机器人", "color": "red", "bold": true}
$bossbar set $(bossbarid) color red
$bossbar set $(bossbarid) players @a
$bossbar set $(bossbarid) style progress
$execute as @s store result bossbar $(bossbarid) max run attribute @s minecraft:max_health get 1