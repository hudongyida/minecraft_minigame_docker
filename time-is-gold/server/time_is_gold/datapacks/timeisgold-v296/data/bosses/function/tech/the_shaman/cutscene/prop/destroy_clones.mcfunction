execute at @s run particle item{item:"ender_eye"} ~ ~1 ~ 0.15 0.15 0.15 0.1 25 force
execute at @s positioned ~ ~ ~ run function system:vfx/expand_circle/init {range:3, step:5, R:1.0, G:1.0, B:1.0}
execute at @s run tp @s ~ -2048 ~
kill @s