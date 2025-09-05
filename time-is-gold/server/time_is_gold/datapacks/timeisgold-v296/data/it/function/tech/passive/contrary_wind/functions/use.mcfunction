execute as @s[tag=item.contrary_wind.use] run function it:tech/passive/contrary_wind/functions/call
execute as @a[tag=item.contrary_wind.use] at @s run playsound minecraft:block.wool.place block @a ~ ~ ~ 1 1.2 0
execute as @a[tag=item.contrary_wind.use] at @s run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 1 0
execute as @a[tag=item.contrary_wind.use] run tag @s remove item.contrary_wind.use