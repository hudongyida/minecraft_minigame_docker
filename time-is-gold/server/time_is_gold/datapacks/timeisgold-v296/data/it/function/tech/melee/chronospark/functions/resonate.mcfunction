tag @s add item.chronospark.center
$execute at @s positioned ~ ~1 ~ run function system:vfx/expand_circle/init {R:0.961, G:0.937, B:0.251, range:$(charge), step:5}
$execute at @s as @e[tag=monster,tag=!item.chronospark.center,distance=..$(charge)] run tag @s add item.chronospark.damage