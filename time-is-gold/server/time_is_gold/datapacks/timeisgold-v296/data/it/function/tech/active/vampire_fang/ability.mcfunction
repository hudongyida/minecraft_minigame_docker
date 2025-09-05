execute at @s run tag @n[tag=monster.ally,tag=!boss,tag=!item.vampire_fang.consume_target,distance=..5] add item.vampire_fang.consume_target
function it:tech/utils/cooldown/init {scoreboard:item.vampire_fang.cooldown, value:900}
execute as @s[tag=item.vampire_fang.activate] run loot give @s loot it:item/expendables/legendary/time_droplet

# SFX
execute at @s run playsound entity.generic.eat player @s ~ ~ ~ 1 0.5
execute at @s run playsound block.sculk.spread block @s ~ ~ ~ 2 0.5
execute at @s run playsound entity.zombie.break_wooden_door hostile @s ~ ~ ~ 0.25 0.5

# VFX
execute as @e[tag=item.vampire_fang.consume_target] at @s run particle dust{color:[1.0, 0.0, 0.0],scale:1.0} ~ ~1 ~ 0.25 0.5 0.25 1 8

kill @e[tag=item.vampire_fang.consume_target]