scoreboard players operation @s bosses.the_shaman.pattern1.mirror_shard.tick = #SYSTEM bosses.the_shaman.pattern1.mirror_shard.tick
scoreboard players reset @s bosses.the_shaman.pattern1.mirror_shard.type
execute at @s anchored eyes facing entity @a[predicate=system:player,sort=nearest,limit=1] feet run rotate @s ~ 0

tag @s remove bosses.the_shaman.pattern1.mirror_shard.marker.uninitialized