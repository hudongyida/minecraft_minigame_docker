execute if score @s bosses.the_shaman.pattern3.chalice.spawn_sfx matches 10 as @a at @s run playsound block.amethyst_block.break block @s ~ ~ ~ 2 0.5 1
execute if score @s bosses.the_shaman.pattern3.chalice.spawn_sfx matches 7 as @a at @s run playsound entity.silverfish.hurt hostile @s ~ ~ ~ 0.5 0.75 1
execute if score @s bosses.the_shaman.pattern3.chalice.spawn_sfx matches 4 as @a run stopsound @s * entity.silverfish.hurt
execute if score @s bosses.the_shaman.pattern3.chalice.spawn_sfx matches 4 as @a at @s run playsound entity.silverfish.hurt hostile @s ~ ~ ~ 0.5 0.75 1
execute if score @s bosses.the_shaman.pattern3.chalice.spawn_sfx matches 1 as @a run stopsound @s * entity.silverfish.hurt
execute if score @s bosses.the_shaman.pattern3.chalice.spawn_sfx matches 1 as @a at @s run playsound entity.silverfish.hurt hostile @s ~ ~ ~ 0.5 0.75 1

execute if score @s bosses.the_shaman.pattern3.chalice.spawn_sfx matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern3.chalice.spawn_sfx 1
execute if score @s bosses.the_shaman.pattern3.chalice.spawn_sfx matches 0 run scoreboard players reset @s bosses.the_shaman.pattern3.chalice.spawn_sfx