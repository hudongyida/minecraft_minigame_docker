$execute at @s run function bosses:tech/the_shaman/pattern2/mirror/summon/init {bossuuid:"$(bossuuid)"}

# SFX
execute at @s run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 0.5 1.66 0.5
execute at @s run playsound block.amethyst_block.chime block @a ~ ~ ~ 4 0.5 1

# VFX
execute at @s run particle explosion_emitter ~ ~ ~ 0.25 0.25 0.25 0.1 10 force

kill @s