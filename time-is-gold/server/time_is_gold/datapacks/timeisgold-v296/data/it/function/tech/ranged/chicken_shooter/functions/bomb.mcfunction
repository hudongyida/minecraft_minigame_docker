scoreboard players add @s item.chicken_shooter.fuse 1
particle flame ~ ~0.5 ~ 0 0 0 0.05 1 force
execute if predicate it:15pc run particle lava ~ ~0.5 ~ 0 0 0 0.05 1 force
execute if predicate system:periodic_tick_60 run playsound minecraft:entity.tnt.primed block @a ~ ~ ~ 1 1.5 0

execute unless score @s item.chicken_shooter.fuse matches 50.. run return fail

$function it:tech/utils/explode/init {power:2,playerid:$(playerid)}
tp @s ~ ~-300 ~
kill @s