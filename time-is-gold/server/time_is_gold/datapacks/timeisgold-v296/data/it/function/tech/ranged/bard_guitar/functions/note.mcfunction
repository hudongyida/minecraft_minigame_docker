scoreboard players remove @s item.bard_guitar.playing 1
execute as @s unless score @s item.bard_guitar.playing matches 1.. run return run function it:tech/ranged/bard_guitar/failure

effect give @s minecraft:slowness 1 200 true
execute as @s at @s run function system:vfx/expand_circle/init {R:0.900, G:0.850, B:0.000, range:1, step:10}
execute as @s at @s run function it:tech/ranged/bard_guitar/functions/string
execute as @s if score @s item.bard_guitar.success matches 4.. run function it:tech/ranged/bard_guitar/success