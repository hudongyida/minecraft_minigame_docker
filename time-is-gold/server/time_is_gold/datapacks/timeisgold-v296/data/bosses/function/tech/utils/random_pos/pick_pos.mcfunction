$scoreboard players set #TEMP bosses.utils.random_pos.x $(dx)
$scoreboard players set #TEMP bosses.utils.random_pos.z $(dz)

$execute if score #TEMP bosses.utils.random_pos.x matches 1.. store result storage timeisgold:function_api stack[-1].x int 1 run random value -$(dx)..$(dx)
$execute if score #TEMP bosses.utils.random_pos.z matches 1.. store result storage timeisgold:function_api stack[-1].z int 1 run random value -$(dz)..$(dz)