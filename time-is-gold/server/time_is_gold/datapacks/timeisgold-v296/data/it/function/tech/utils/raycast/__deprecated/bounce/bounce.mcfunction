$scoreboard players remove $(player)_bounce $(scoreboard) 1

$execute unless block ~$(bounceDistance) ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
$execute unless block ~-$(bounceDistance) ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
$execute unless block ~ ~$(bounceDistance) ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
$execute unless block ~ ~-$(bounceDistance) ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
$execute unless block ~ ~ ~$(bounceDistance) air run function it:tech/utils/raycast/bounce/zaxis {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),bounce:$(bounce),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction),bounceDistance:$(bounceDistance)}
$execute unless block ~ ~ ~-$(bounceDistance) air run function it:tech/utils/raycast/bounce/zaxis {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),bounce:$(bounce),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction),bounceDistance:$(bounceDistance)}

$execute rotated as @s run function it:tech/utils/raycast/bounce/raycast {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),bounce:$(bounce),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction),bounceDistance:$(bounceDistance)}
