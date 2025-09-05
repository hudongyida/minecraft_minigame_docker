execute positioned ~ ~ ~ as @n[type=armor_stand,tag=dungeon.operation_pos,tag=!item.sans_pointer_2000.hit,dx=0,dz=0] if entity @s run function it:tech/debug/sans_pointer_2000/raycast/hit_marker

# VFX
execute positioned ~ ~ ~ run particle dust{scale:1,color:[0.11,0.77,0.11]} ~ ~ ~ 0.05 0.05 0.05 0.1 2 force