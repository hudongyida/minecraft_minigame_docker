scoreboard players operation @s bosses.the_shaman.pattern1.mirror_shard.tick = #SYSTEM bosses.the_shaman.pattern1.mirror_shard.tick
scoreboard players set @s bosses.the_shaman.pattern1.mirror_shard.type 1
execute at @s anchored eyes facing entity @a[predicate=system:player,sort=nearest,limit=1] feet run rotate @s ~ 0

tag @s remove bosses.the_shaman.pattern1.mirror_shard.marker.uninitialized