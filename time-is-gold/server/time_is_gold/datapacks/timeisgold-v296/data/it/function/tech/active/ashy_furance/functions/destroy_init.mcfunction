execute as @s unless score @s item.ashy_furance.cube_counter matches 1.. run return fail

tag @s add item.ashy_furance.id
execute as @e[type=magma_cube, tag=item.ashy_furance.cube] if score @s item.ashy_furance.owner = @p[tag=item.ashy_furance.id] playerid run tag @s add item.ashy_furance.destroy
execute as @e[type=magma_cube, tag=item.ashy_furance.destroy, sort=random,limit=1] at @s run function it:tech/active/ashy_furance/functions/destroy
execute as @e[type=magma_cube, tag=item.ashy_furance.destroy] at @s run tag @s remove item.ashy_furance.destroy

tag @s remove item.ashy_furance.id