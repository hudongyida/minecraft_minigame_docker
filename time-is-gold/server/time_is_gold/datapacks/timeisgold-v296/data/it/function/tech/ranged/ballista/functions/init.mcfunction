tag @s add item.ballista.init
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["item.ballista.init_facing"]}
execute as @n[type=marker,tag=item.ballista.init_facing] at @s rotated as @n[type=player,gamemode=!spectator] run function it:tech/ranged/ballista/functions/particle
kill @n[type=marker,tag=item.ballista.init_facing]