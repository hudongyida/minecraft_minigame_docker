execute as @s at @s as @a[predicate=system:player,distance=..10] run scoreboard players set @s item.chronos_bonfire.active 1

execute as @s at @s if predicate it:10pc run playsound block.campfire.crackle block @a ~ ~ ~ 0.5 1
execute as @s at @s run function it:tech/active/chronos_bonfire/vfx with entity @s data