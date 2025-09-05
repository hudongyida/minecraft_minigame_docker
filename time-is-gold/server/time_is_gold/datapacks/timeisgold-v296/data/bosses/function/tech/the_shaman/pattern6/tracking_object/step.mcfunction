$execute positioned ~-1 ~-1 ~-1 as @n[type=marker,tag=bosses.the_shaman.pattern6.marker.clone_pos_temp,dx=2,dy=2,dz=2] if entity @s at @s run function bosses:tech/the_shaman/pattern6/clone/summon/init {bossuuid:"$(monsteruuid)"}
execute positioned ~-1 ~-1 ~-1 if entity @n[type=marker,tag=bosses.the_shaman.pattern6.marker.clone_pos_temp,dx=2,dy=2,dz=2] run kill @s

# VFX
particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0.15 0.15 0.15 0.1 4 force
particle wax_off ~ ~ ~ 0.15 0.15 0.15 0.25 2 force